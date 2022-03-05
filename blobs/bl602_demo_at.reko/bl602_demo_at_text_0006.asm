;;; Segment .text (23000300)

l23060310:
	lui	a0,000230C0
	addi	a0,a0,+0000043C
	jal	ra,00000000230609E6
	c.li	s0,00000000

l2306031E:
	c.mv	a0,s0
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.lwsp	t1,00000024
	c.lwsp	sp,00000048
	c.lwsp	t4,00000178
	c.addi16sp	00000090
	c.jr	ra

l2306032E:
	c.mv	s0,a0
	c.mv	s1,a1
	c.beqz	a0,0000000023060336

l23060334:
	c.bnez	a1,0000000023060374

l23060336:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,000000002306036E

l23060340:
	jal	ra,00000000230629C6

l23060344:
	lui	a3,000230C0
	lui	a2,000230C0
	c.mv	a1,a0
	lui	a0,000230C0
	c.mv	a6,s1
	c.mv	a5,s0
	addi	a4,zero,+0000034C
	addi	a3,a3,+000003C8
	addi	a2,a2,+000003D4
	addi	a0,a0,+000003E4

l23060366:
	jal	ra,000000002307A208
	c.li	s0,00000008
	c.j	000000002306031E

l2306036E:
	jal	ra,00000000230629A4
	c.j	0000000023060344

l23060374:
	c.mv	s3,a2
	c.mv	s2,a3
	jal	ra,00000000230A4220
	addi	a5,zero,+00000040
	bgeu	a5,a0,00000000230603C6

l23060384:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,00000000230603C0

l2306038E:
	jal	ra,00000000230629C6

l23060392:
	c.swsp	a0,00000084
	c.mv	a0,s0
	jal	ra,00000000230A4220
	c.mv	a5,a0
	lui	a3,000230C0
	lui	a2,000230C0
	lui	a0,000230C0
	addi	a6,zero,+00000040
	addi	a4,zero,+00000351
	addi	a3,a3,+000003C8
	addi	a2,a2,+000003D4
	c.lwsp	a2,00000064
	addi	a0,a0,+00000414
	c.j	0000000023060366

l230603C0:
	jal	ra,00000000230629A4
	c.j	0000000023060392

l230603C6:
	c.jal	000000002306095C
	c.mv	a0,s0
	c.addi4spn	a1,00000018
	jal	ra,000000002305FCFE
	c.li	s0,00000000
	c.beqz	a0,00000000230603EE

l230603D4:
	c.lwsp	tp,000001F4
	beq	s2,zero,00000000230603DE

l230603DA:
	sw	a5,s2,+00000000

l230603DE:
	c.mv	s0,s3
	bgeu	a5,s3,00000000230603E6

l230603E4:
	c.mv	s0,a5

l230603E6:
	c.lwsp	a3,00000154
	c.mv	a2,s0
	c.mv	a1,s1
	c.jal	0000000023060918

l230603EE:
	c.jal	000000002306096A
	c.j	000000002306031E

;; ef_get_env: 230603F2
;;   Called from:
;;     2307C646 (in at_key_value_get)
;;     2307CADA (in at_server_init)
;;     2307CAF6 (in at_server_init)
ef_get_env proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.lui	a2,00001000
	lui	s0,00042017
	c.li	a3,00000000
	addi	a2,a2,-00000074
	addi	a1,s0,+000005A8
	c.swsp	ra,00000084
	jal	ra,00000000230602FA
	c.beqz	a0,000000002306044A

l2306040E:
	addi	a5,s0,+000005A8
	c.li	a4,00000000
	addi	a2,zero,+0000005E
	addi	s0,s0,+000005A8

l2306041C:
	add	a3,a4,a5
	lbu	a3,a3,+00000000
	c.addi	a3,FFFFFFE0
	bltu	a2,a3,0000000023060440

l2306042A:
	c.addi	a4,00000001
	bne	a0,a4,000000002306041C

l23060430:
	c.add	a5,a0
	sb	zero,a5,+00000000
	c.mv	a0,s0

l23060438:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23060440:
	lui	a0,000230C0
	addi	a0,a0,+00000388
	c.jal	00000000230609E6

l2306044A:
	c.li	a0,00000000
	c.j	0000000023060438

;; ef_del_env: 2306044E
;;   Called from:
;;     23060BA2 (in psm_test_cmd)
;;     23060CD6 (in psm_unset_cmd)
ef_del_env proc
	lui	a5,0004200F
	lbu	a5,a5,+0000050A
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.bnez	a5,0000000023060472

l2306045E:
	lui	a0,000230C0
	addi	a0,a0,+000002DC
	c.jal	00000000230609E6
	c.li	a0,00000007

l2306046A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23060472:
	c.mv	s0,a0
	c.bnez	a0,0000000023060486

l23060476:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.bnez	a5,00000000230604A6

l23060480:
	jal	ra,00000000230629A4
	c.j	00000000230604AA

l23060486:
	jal	ra,00000000230A4220
	addi	a5,zero,+00000040
	bltu	a5,a0,0000000023060476

l23060492:
	c.jal	000000002306095C
	c.li	a2,00000001
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002305FDE4
	c.swsp	a0,00000084
	c.jal	000000002306096A
	c.lwsp	a2,00000044
	c.j	000000002306046A

l230604A6:
	jal	ra,00000000230629C6

l230604AA:
	c.mv	a1,a0
	lui	a3,000230C0
	lui	a2,000230C0
	lui	a0,000230C0
	addi	a0,a0,+00000300
	c.mv	a5,s0
	addi	a4,zero,+0000057D
	addi	a3,a3,+000003C8
	addi	a2,a2,+000003D4
	jal	ra,000000002307A208
	c.li	a0,00000000
	c.j	000000002306046A

;; ef_set_env_blob: 230604D2
;;   Called from:
;;     23060684 (in ef_set_env)
;;     23060BF0 (in psm_test_cmd)
ef_set_env_blob proc
	lui	a5,0004200F
	lbu	a5,a5,+0000050A
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.bnez	a5,0000000023060510

l230604EE:
	lui	a0,000230C0
	addi	a0,a0,+0000043C
	c.jal	00000000230609E6
	c.li	s0,00000007

l230604FA:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.addi16sp	00000030
	c.jr	ra

l23060510:
	c.mv	s1,a0
	c.mv	s5,a1
	c.beqz	a0,0000000023060518

l23060516:
	c.bnez	a1,0000000023060556

l23060518:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023060550

l23060522:
	jal	ra,00000000230629C6

l23060526:
	lui	a3,000230C0
	lui	a2,000230C0
	c.mv	a1,a0
	lui	a0,000230C0
	c.mv	a6,s5
	c.mv	a5,s1
	addi	a4,zero,+000005D4
	addi	a3,a3,+000003C8
	addi	a2,a2,+000003D4
	addi	a0,a0,+000003E4

l23060548:
	jal	ra,000000002307A208
	c.li	s0,00000008
	c.j	00000000230604FA

l23060550:
	jal	ra,00000000230629A4
	c.j	0000000023060526

l23060556:
	c.mv	s3,a2
	jal	ra,00000000230A4220
	addi	a5,zero,+00000040
	bgeu	a5,a0,00000000230605A6

l23060564:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,00000000230605A0

l2306056E:
	jal	ra,00000000230629C6

l23060572:
	c.swsp	a0,00000084
	c.mv	a0,s1
	jal	ra,00000000230A4220
	c.mv	a5,a0
	lui	a3,000230C0
	lui	a2,000230C0
	lui	a0,000230C0
	addi	a6,zero,+00000040
	addi	a4,zero,+000005D9
	addi	a3,a3,+000003C8
	addi	a2,a2,+000003D4
	c.lwsp	a2,00000064
	addi	a0,a0,+00000414
	c.j	0000000023060548

l230605A0:
	jal	ra,00000000230629A4
	c.j	0000000023060572

l230605A6:
	c.lui	a5,00001000
	addi	a5,a5,-00000074
	bgeu	a5,s3,00000000230605EC

l230605B0:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,00000000230605E6

l230605BA:
	jal	ra,00000000230629C6

l230605BE:
	c.lui	a6,00001000
	lui	a3,000230C0
	lui	a2,000230C0
	c.mv	a1,a0
	lui	a0,000230C0
	addi	a6,a6,-00000074
	c.mv	a5,s3
	addi	a4,zero,+000005DE
	addi	a3,a3,+000003C8
	addi	a2,a2,+000003D4
	addi	a0,a0,+000004CC
	c.j	0000000023060548

l230605E6:
	jal	ra,00000000230629A4
	c.j	00000000230605BE

l230605EC:
	c.jal	000000002306095C
	c.mv	a0,s1
	jal	ra,00000000230A4220
	addi	a1,s3,+0000001C
	lui	s4,00042017
	c.add	a1,a0
	addi	a0,s4,+00000570
	jal	ra,000000002305FC0C
	c.li	a5,FFFFFFFF
	c.li	s0,00000006
	beq	a0,a5,0000000023060664

l2306060E:
	lui	s2,00042017
	addi	a1,s2,+00000498
	c.mv	a0,s1
	jal	ra,000000002305FCFE
	c.mv	s6,a0
	c.bnez	a0,0000000023060646

l23060620:
	c.mv	a3,s3
	c.mv	a2,s5
	c.mv	a1,s1
	addi	a0,s4,+00000570
	jal	ra,0000000023060152
	c.mv	s0,a0
	beq	s6,zero,0000000023060656

l23060634:
	c.bnez	a0,0000000023060656

l23060636:
	c.li	a2,00000001
	addi	a1,s2,+00000498
	c.mv	a0,s1
	jal	ra,000000002305FDE4
	c.mv	s0,a0
	c.j	0000000023060656

l23060646:
	c.li	a2,00000000
	addi	a1,s2,+00000498
	c.mv	a0,s1
	jal	ra,000000002305FDE4
	c.mv	s0,a0
	c.beqz	a0,0000000023060620

l23060656:
	lui	a5,0004200F
	lbu	a5,a5,+00000508
	c.beqz	a5,0000000023060664

l23060660:
	jal	ra,000000002305FBA8

l23060664:
	c.jal	000000002306096A
	c.j	00000000230604FA

;; ef_set_env: 23060668
;;   Called from:
;;     23060CFC (in psm_set_cmd)
;;     2307C58C (in at_key_value_set)
ef_set_env proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.mv	a0,a1
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,00000000230A4220
	c.mv	a2,a0
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,00000000230604D2

;; ef_save_env: 23060688
;;   Called from:
;;     23060CDE (in psm_unset_cmd)
;;     23060D04 (in psm_set_cmd)
ef_save_env proc
	c.li	a0,00000000
	c.jr	ra

;; ef_env_set_default: 2306068C
;;   Called from:
;;     23060816 (in ef_load_env)
;;     23060CB6 (in psm_erase_cmd)
;;     2307D3FE (in restory)
ef_env_set_default proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	lui	s0,0004200F
	lw	a5,s0,+000004FC
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.bnez	a5,00000000230606CE

l230606A6:
	lui	a4,000230C0
	lui	a3,000230C0
	lui	a2,000230C0
	lui	a0,000230C0
	addi	a4,a4,+000000A8
	addi	a3,a3,+00000360
	addi	a2,a2,+00000664
	addi	a1,zero,+00000621
	addi	a0,a0,+00000684
	c.jal	000000002306097C

l230606CC:
	c.j	00000000230606CC

l230606CE:
	lui	s2,0004200F
	lw	a5,s2,+00000500
	addi	s2,s2,+00000500
	c.bnez	a5,0000000023060704

l230606DC:
	lui	a4,000230C0
	lui	a3,000230C0
	lui	a2,000230C0
	lui	a0,000230C0
	addi	a4,a4,+000000A8
	addi	a3,a3,+00000370
	addi	a2,a2,+00000664
	addi	a1,zero,+00000622
	addi	a0,a0,+00000684
	c.jal	000000002306097C

l23060702:
	c.j	0000000023060702

l23060704:
	c.jal	000000002306095C
	lui	a5,0004200F
	lw	s1,a5,+00000504
	addi	s0,s0,+000004FC
	addi	s3,a5,+00000504
	c.lui	s4,00008000
	c.lui	s5,00001000

l2306071A:
	lw	a5,s3,+00000000
	c.add	a5,s4
	bltu	s1,a5,000000002306074C

l23060724:
	c.li	s1,00000000
	c.li	s4,0000000C
	c.li	s5,FFFFFFFF

l2306072A:
	lw	a5,s2,+00000000
	bltu	s1,a5,0000000023060758

l23060732:
	c.li	a0,00000000

l23060734:
	c.swsp	a0,00000084
	c.jal	000000002306096A
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	a2,00000044
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.addi16sp	00000050
	c.jr	ra

l2306074C:
	c.mv	a0,s1
	jal	ra,000000002305F5C8
	c.bnez	a0,0000000023060734

l23060754:
	c.add	s1,s5
	c.j	000000002306071A

l23060758:
	add	s3,s1,s4
	c.lw	s0,0(a4)
	c.add	a4,s3
	c.lw	a4,8(a3)
	c.bnez	a3,000000002306076C

l23060764:
	c.lw	a4,4(a0)
	jal	ra,00000000230A4220
	c.mv	a3,a0

l2306076C:
	c.lw	s0,0(a5)
	c.swsp	s5,00000094
	c.addi4spn	a0,00000018
	c.add	a5,s3
	c.lw	a5,4(a2)
	c.lw	a5,0(a1)
	c.addi	s1,00000001
	jal	ra,0000000023060152
	c.j	000000002306072A

;; ef_print_env: 23060780
;;   Called from:
;;     23060CBA (in psm_dump_cmd)
ef_print_env proc
	lui	a5,0004200F
	lbu	a5,a5,+0000050A
	c.addi16sp	FFFFFF90
	c.swsp	ra,000000B4
	c.swsp	zero,00000080
	c.bnez	a5,00000000230607A0

l23060790:
	lui	a0,000230C0
	addi	a0,a0,+0000043C
	c.jal	00000000230609E6

l2306079A:
	c.lwsp	a3,00000130
	c.addi16sp	00000070
	c.jr	ra

l230607A0:
	c.jal	000000002306095C
	lui	a3,0002305F
	addi	a3,a3,+000006A8
	c.addi4spn	a1,00000004
	c.li	a2,00000000
	c.addi4spn	a0,00000008
	jal	ra,000000002305FC8A
	lui	a0,000230C0
	addi	a0,a0,+00000498
	c.jal	0000000023060AAA
	c.lwsp	tp,00000064
	lui	a0,000230C0
	c.lui	a2,00007000
	addi	a1,a1,+0000008C
	addi	a0,a0,+000004B4
	c.jal	0000000023060AAA
	c.jal	000000002306096A
	c.j	000000002306079A

;; ef_load_env: 230607D4
;;   Called from:
;;     23060904 (in ef_env_init)
ef_load_env proc
	c.addi16sp	FFFFFF70
	c.swsp	s0,00000044
	c.li	a5,00000001
	lui	s0,0004200F
	lui	a4,0002305F
	sb	a5,s0,+00000509
	addi	a4,a4,+0000066C
	c.li	a5,00000000
	c.li	a3,00000000
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	c.swsp	ra,000000C4
	c.swsp	s1,000000C0
	c.swsp	s2,00000040
	c.swsp	zero,00000084
	jal	ra,000000002305FA8E
	c.lwsp	a2,000000C4
	c.li	a5,00000008
	addi	s0,s0,+00000509
	bne	a4,a5,000000002306081A

l2306080C:
	lui	a0,000230C0
	addi	a0,a0,+00000458
	c.jal	00000000230609E6
	jal	ra,000000002306068C

l2306081A:
	c.jal	000000002306095C
	lui	a4,00023060
	c.li	a5,00000000
	addi	a4,a4,-000003A4
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,000000002305FA8E
	lui	s1,00023060
	lui	s2,0004200F

l2306083A:
	addi	a3,s1,+00000004
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi4spn	a0,00000028
	jal	ra,000000002305FC8A
	lbu	a5,s2,+00000508
	c.beqz	a5,0000000023060854

l2306084E:
	jal	ra,000000002305FBA8
	c.j	000000002306083A

l23060854:
	sb	zero,s0,+00000000
	c.jal	000000002306096A
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.lwsp	t1,00000024
	c.lwsp	sp,00000048
	c.li	a0,00000000
	c.addi16sp	00000090
	c.jr	ra

;; ef_env_init: 23060868
;;   Called from:
;;     2305F154 (in easyflash_init)
ef_env_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.bnez	a0,0000000023060898

l23060870:
	lui	a4,000230C0
	lui	a3,000230C0
	lui	a2,000230C0
	lui	a0,000230C0
	addi	a4,a4,+000000BC
	addi	a3,a3,+00000320
	addi	a2,a2,+00000664
	addi	a1,zero,+0000071E
	addi	a0,a0,+00000684
	c.jal	000000002306097C

l23060896:
	c.j	0000000023060896

l23060898:
	lui	a5,0004200F
	lbu	a4,a5,+0000050A
	c.mv	a3,a0
	addi	s0,a5,+0000050A
	c.li	a0,00000000
	c.bnez	a4,0000000023060910

l230608AA:
	lui	a5,00042017
	addi	a5,a5,+00000588
	c.li	a4,FFFFFFFF
	c.sw	a5,0(a4)
	c.sw	a5,8(a4)
	c.sw	a5,16(a4)
	c.sw	a5,24(a4)
	lui	a5,00042017
	addi	a5,a5,+000004F0
	addi	a4,a5,+00000080
	c.li	a2,FFFFFFFF

l230608CA:
	c.sw	a5,4(a2)
	c.addi	a5,00000008
	bne	a5,a4,00000000230608CA

l230608D2:
	lui	a5,0004200F
	sw	zero,a5,+00000504
	lui	a5,0004200F
	sw	a3,a5,+000004FC
	lui	a2,000230C0
	lui	a5,0004200F
	lui	a0,000230C0
	sw	a1,a5,+00000500
	c.lui	a4,00008000
	c.li	a3,00000000
	addi	a2,a2,+0000032C
	addi	a1,zero,+00000738
	addi	a0,a0,+00000684
	c.jal	000000002306097C
	jal	ra,00000000230607D4
	c.bnez	a0,0000000023060910

l2306090A:
	c.li	a5,00000001
	sb	a5,s0,+00000000

l23060910:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ef_port_read: 23060918
;;   Called from:
;;     2305F444 (in read_env)
;;     2305F504 (in read_env)
;;     2305F534 (in read_env)
;;     2305F730 (in print_env_cb)
;;     2305F858 (in get_next_env_addr)
;;     2305F8F0 (in read_sector_meta_data)
;;     2305FA66 (in read_sector_meta_data)
;;     2305FD56 (in find_env)
;;     2305FE32 (in del_env)
;;     2305FFEE (in move_env)
;;     230603EC (in ef_get_env_blob)
ef_port_read proc
	lui	a5,0004200F
	c.mv	a3,a1
	c.mv	a1,a0
	lw	a0,a5,+00000510
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023084C64
	c.lwsp	a2,00000020
	slti	a0,a0,+00000000
	c.slli	a0,01
	c.addi	sp,00000010
	c.jr	ra

;; ef_port_write: 23060938
;;   Called from:
;;     2305F42A (in write_status)
;;     2305F650 (in format_sector.constprop.16)
;;     2305FFFA (in move_env)
;;     23060246 (in create_env_blob)
;;     23060266 (in create_env_blob)
;;     230602B2 (in create_env_blob)
ef_port_write proc
	lui	a5,0004200F
	c.mv	a3,a1
	c.mv	a1,a0
	lw	a0,a5,+00000510
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023084BC0
	bge	a0,zero,0000000023060958

l23060950:
	c.li	a0,00000003

l23060952:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23060958:
	c.li	a0,00000000
	c.j	0000000023060952

;; ef_port_env_lock: 2306095C
;;   Called from:
;;     230603C6 (in ef_get_env_blob)
;;     23060492 (in ef_del_env)
;;     230605EC (in ef_set_env_blob)
;;     23060704 (in ef_env_set_default)
;;     230607A0 (in ef_print_env)
;;     2306081A (in ef_load_env)
ef_port_env_lock proc
	lui	a5,0004200F
	lw	a0,a5,+0000050C
	c.li	a1,FFFFFFFF
	jal	zero,00000000230617D0

;; ef_port_env_unlock: 2306096A
;;   Called from:
;;     230603EE (in ef_get_env_blob)
;;     230604A0 (in ef_del_env)
;;     23060664 (in ef_set_env_blob)
;;     23060736 (in ef_env_set_default)
;;     230607D0 (in ef_print_env)
;;     23060858 (in ef_load_env)
ef_port_env_unlock proc
	lui	a5,0004200F
	lw	a0,a5,+0000050C
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	zero,0000000023061344

;; ef_log_debug: 2306097C
;;   Called from:
;;     2305F3C8 (in write_status)
;;     2305F3F6 (in write_status)
;;     2305F48C (in read_env)
;;     2305F4E4 (in read_env)
;;     2305F5FA (in format_sector.constprop.16)
;;     2305F8E0 (in read_sector_meta_data)
;;     2305FB9E (in alloc_env)
;;     2305FBDC (in gc_collect)
;;     2305FC42 (in new_env)
;;     2305FE6A (in del_env)
;;     2305FFAE (in move_env)
;;     2306004E (in check_and_recovery_env_cb)
;;     23060072 (in check_and_recovery_env_cb)
;;     230600FE (in do_gc)
;;     23060148 (in do_gc)
;;     230602EA (in create_env_blob)
;;     230606CA (in ef_env_set_default)
;;     23060700 (in ef_env_set_default)
;;     23060894 (in ef_env_init)
;;     23060902 (in ef_env_init)
;;     230609C8 (in ef_port_erase)
ef_log_debug proc
	c.addi16sp	FFFFFFC0
	c.addi4spn	a1,0000002C
	c.mv	a0,a2
	c.swsp	ra,0000008C
	c.swsp	a3,00000094
	c.swsp	a4,00000018
	c.swsp	a5,00000098
	c.swsp	a6,0000001C
	c.swsp	a7,0000009C
	c.swsp	a1,00000084
	jal	ra,00000000230822F0
	c.lwsp	t3,00000020
	c.addi16sp	00000040
	c.jr	ra

;; ef_port_erase: 2306099A
;;   Called from:
;;     2305F604 (in format_sector.constprop.16)
ef_port_erase proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	slli	a5,a0,00000014
	c.beqz	a5,00000000230609CE

l230609A4:
	lui	a4,000230C0
	lui	a3,000230C0
	lui	a2,000230C0
	lui	a0,000230C0
	addi	a4,a4,+000006E0
	addi	a3,a3,+000006FC
	addi	a2,a2,+00000664
	addi	a1,zero,+00000077
	addi	a0,a0,+0000071C
	jal	ra,000000002306097C

l230609CC:
	c.j	00000000230609CC

l230609CE:
	lui	a5,0004200F
	c.mv	a2,a1
	c.mv	a1,a0
	lw	a0,a5,+00000510
	jal	ra,0000000023084B96
	c.lwsp	a2,00000020
	c.srli	a0,0000001F
	c.addi	sp,00000010
	c.jr	ra

;; ef_log_info: 230609E6
;;   Called from:
;;     2305F168 (in easyflash_init)
;;     2305F174 (in easyflash_init)
;;     2305F688 (in check_sec_hdr_cb)
;;     2305F9F0 (in read_sector_meta_data)
;;     2306002E (in check_and_recovery_env_cb)
;;     2306018A (in create_env_blob)
;;     230601E2 (in create_env_blob)
;;     23060318 (in ef_get_env_blob)
;;     23060448 (in ef_get_env)
;;     23060466 (in ef_del_env)
;;     230604F6 (in ef_set_env_blob)
;;     23060798 (in ef_print_env)
;;     23060814 (in ef_load_env)
;;     23060A3C (in ef_port_init)
;;     23060A6E (in ef_port_init)
ef_log_info proc
	c.addi16sp	FFFFFFC0
	c.swsp	a1,00000090
	c.addi4spn	a1,00000024
	c.swsp	ra,0000008C
	c.swsp	a2,00000014
	c.swsp	a3,00000094
	c.swsp	a4,00000018
	c.swsp	a5,00000098
	c.swsp	a6,0000001C
	c.swsp	a7,0000009C
	c.swsp	a1,00000084
	jal	ra,00000000230822F0
	c.lwsp	t3,00000020
	c.addi16sp	00000040
	c.jr	ra

;; ef_port_init: 23060A06
;;   Called from:
;;     2305F144 (in easyflash_init)
ef_port_init proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a1
	c.mv	s1,a0
	lui	a1,0004200F
	lui	a0,000230C0
	c.swsp	s2,00000010
	c.li	a2,00000002
	addi	s2,a1,+00000510
	addi	a0,a0,+00000768
	addi	a1,a1,+00000510
	c.swsp	ra,00000094
	jal	ra,00000000230849C0
	bge	a0,zero,0000000023060A4E

l23060A32:
	c.mv	a1,a0
	lui	a0,000230C0
	addi	a0,a0,+0000076C
	jal	ra,00000000230609E6
	lui	a0,000230C0
	addi	a0,a0,+000007A0
	jal	ra,000000002308234C

l23060A4C:
	c.j	0000000023060A4C

l23060A4E:
	c.li	a2,0000001C
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,00000000230A3A68
	lw	a0,s2,+00000000
	c.addi4spn	a1,00000004
	jal	ra,0000000023084B6A
	c.lwsp	s4,00000084
	c.lwsp	t3,00000064
	lui	a0,000230C0
	addi	a0,a0,+000007E4
	jal	ra,00000000230609E6
	lui	a5,000230C0
	addi	a5,a5,+000006F0
	c.sw	s1,0(a5)
	lui	a0,000230C1
	c.li	a5,00000001
	c.sw	s0,0(a5)
	c.li	a1,00000001
	addi	a0,a0,-000007D8
	jal	ra,0000000023082388
	c.li	a0,00000001
	jal	ra,000000002306151C
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	lui	a5,0004200F
	sw	a0,a5,+0000050C
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; ef_print: 23060AAA
;;   Called from:
;;     2305F6E8 (in print_env_cb)
;;     2305F742 (in print_env_cb)
;;     2305F76C (in print_env_cb)
;;     2305F778 (in print_env_cb)
;;     230607BC (in ef_print_env)
;;     230607CE (in ef_print_env)
ef_print proc
	c.addi16sp	FFFFFFC0
	c.swsp	a1,00000090
	c.addi4spn	a1,00000024
	c.swsp	ra,0000008C
	c.swsp	a2,00000014
	c.swsp	a3,00000094
	c.swsp	a4,00000018
	c.swsp	a5,00000098
	c.swsp	a6,0000001C
	c.swsp	a7,0000009C
	c.swsp	a1,00000084
	jal	ra,00000000230822F0
	c.lwsp	t3,00000020
	c.addi16sp	00000040
	c.jr	ra

;; ef_calc_crc32: 23060ACA
;;   Called from:
;;     2305F258 (in update_env_cache)
;;     2305F50E (in read_env)
;;     2305FD28 (in find_env)
;;     23060212 (in create_env_blob)
;;     2306021E (in create_env_blob)
;;     23060228 (in create_env_blob)
ef_calc_crc32 proc
	lui	a4,000230C1
	xori	a0,a0,-00000001
	c.add	a2,a1
	addi	a4,a4,-000007AC

l23060AD8:
	bne	a1,a2,0000000023060AE2

l23060ADC:
	xori	a0,a0,-00000001
	c.jr	ra

l23060AE2:
	c.addi	a1,00000001
	lbu	a5,a1,-00000001
	c.xor	a5,a0
	andi	a5,a5,+000000FF
	c.slli	a5,02
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.srli	a0,00000008
	c.xor	a0,a5
	c.j	0000000023060AD8

;; psm_get_cmd: 23060AFA
psm_get_cmd proc
	c.jr	ra

;; psm_test_cmd: 23060AFC
psm_test_cmd proc
	c.addi16sp	FFFFFFA0
	lui	a1,000230C1
	c.li	a2,00000018
	addi	a1,a1,-000003AC
	c.addi4spn	a0,00000008
	c.swsp	s0,0000002C
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	s11,00000094
	c.swsp	ra,000000AC
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s6,00000020
	c.swsp	s9,00000098
	c.swsp	s10,00000018
	c.addi4spn	s0,00000008
	jal	ra,00000000230A382C
	lui	s4,0004200F
	lui	s5,000230C1
	lui	s7,000230BD
	lui	s8,000230C1
	lui	s11,000230C1

l23060B3E:
	lw	s6,s0,+00000000
	c.swsp	zero,00000080
	addi	s3,s6,+00000001
	c.mv	a0,s3
	jal	ra,000000002306488A
	c.mv	s1,a0
	c.mv	a0,s3
	jal	ra,000000002306488A
	c.mv	s2,a0
	c.beqz	s1,0000000023060B5C

l23060B5A:
	c.bnez	a0,0000000023060BCA

l23060B5C:
	lw	a5,s4,+00000560
	c.beqz	a5,0000000023060BC4

l23060B62:
	jal	ra,00000000230629C6

l23060B66:
	lui	a5,000230C1
	c.mv	a1,a0
	addi	a4,zero,+0000003D
	addi	a3,s5,-00000374
	addi	a2,s7,+0000032C
	addi	a0,a5,-00000364
	jal	ra,000000002307A208
	c.beqz	s1,0000000023060B88

l23060B82:
	c.mv	a0,s1
	jal	ra,0000000023064972

l23060B88:
	beq	s2,zero,0000000023060B92

l23060B8C:
	c.mv	a0,s2
	jal	ra,0000000023064972

l23060B92:
	c.addi	s0,00000004
	c.addi4spn	a5,00000020
	bne	s0,a5,0000000023060B3E

l23060B9A:
	lui	a0,000230C1
	addi	a0,a0,-00000334
	jal	ra,000000002306044E
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.lwsp	t0,000000A8
	c.lwsp	ra,000000C8
	c.lwsp	t3,000001F8
	c.lwsp	s8,0000011C
	c.lwsp	s4,0000013C
	c.lwsp	a6,0000015C
	c.lwsp	a2,0000017C
	c.addi16sp	00000060
	c.jr	ra

l23060BC4:
	jal	ra,00000000230629A4
	c.j	0000000023060B66

l23060BCA:
	c.mv	a2,s3
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,00000000230A3A68
	c.mv	a2,s3
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,00000000230A3A68
	c.li	s10,00000000
	addi	a4,zero,+00000076

l23060BE4:
	bne	s10,s6,0000000023060C3E

l23060BE8:
	c.mv	a2,s10
	c.mv	a1,s1
	addi	a0,s8,-00000334
	jal	ra,00000000230604D2
	c.mv	s9,a0
	c.addi4spn	a3,00000004
	c.mv	a2,s10
	c.mv	a1,s2
	addi	a0,s8,-00000334
	jal	ra,00000000230602FA
	c.mv	s3,a0
	bne	s9,zero,0000000023060C0E

l23060C0A:
	beq	s10,a0,0000000023060C50

l23060C0E:
	lw	a5,s4,+00000560
	c.beqz	a5,0000000023060C4A

l23060C14:
	jal	ra,00000000230629C6

l23060C18:
	lui	a2,000230C0
	c.mv	a1,a0
	lui	a0,000230C1
	c.mv	a7,s3
	c.mv	a6,s9
	c.mv	a5,s6
	addi	a4,zero,+0000004D
	addi	a3,s5,-00000374
	addi	a2,a2,+000003D4
	addi	a0,a0,-000002F0

l23060C38:
	jal	ra,000000002307A208
	c.j	0000000023060B82

l23060C3E:
	add	a3,s1,s10
	sb	a4,a3,+00000000
	c.addi	s10,00000001
	c.j	0000000023060BE4

l23060C4A:
	jal	ra,00000000230629A4
	c.j	0000000023060C18

l23060C50:
	c.mv	a2,a0
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,00000000230A37A4
	lw	a5,s4,+00000560
	c.beqz	a0,0000000023060C8E

l23060C60:
	c.beqz	a5,0000000023060C88

l23060C62:
	jal	ra,00000000230629C6

l23060C66:
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C1
	c.mv	a7,s3
	c.li	a6,00000000
	c.mv	a5,s3
	addi	a4,zero,+00000052
	addi	a3,s5,-00000374
	addi	a2,a2,-00000228
	addi	a0,a0,-000002A4
	c.j	0000000023060C38

l23060C88:
	jal	ra,00000000230629A4
	c.j	0000000023060C66

l23060C8E:
	c.beqz	a5,0000000023060CB0

l23060C90:
	jal	ra,00000000230629C6

l23060C94:
	c.mv	a1,a0
	c.mv	a6,s3
	c.mv	a5,s3
	addi	a4,zero,+00000056
	addi	a3,s5,-00000374
	addi	a2,s7,+0000032C
	addi	a0,s11,-00000250
	jal	ra,000000002307A208
	c.j	0000000023060B82

l23060CB0:
	jal	ra,00000000230629A4
	c.j	0000000023060C94

;; psm_erase_cmd: 23060CB6
psm_erase_cmd proc
	jal	zero,000000002306068C

;; psm_dump_cmd: 23060CBA
psm_dump_cmd proc
	jal	zero,0000000023060780

;; psm_unset_cmd: 23060CBE
psm_unset_cmd proc
	c.li	a5,00000002
	beq	a2,a5,0000000023060CD0

l23060CC4:
	lui	a0,000230C1
	addi	a0,a0,-00000200
	jal	zero,0000000023082388

l23060CD0:
	c.lw	a3,4(a0)
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002306044E
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023060688

;; psm_set_cmd: 23060CE2
psm_set_cmd proc
	c.li	a5,00000003
	beq	a2,a5,0000000023060CF4

l23060CE8:
	lui	a0,000230C1
	addi	a0,a0,-00000394
	jal	zero,0000000023082388

l23060CF4:
	c.lw	a3,8(a1)
	c.lw	a3,4(a0)
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023060668
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023060688

;; easyflash_cli_init: 23060D08
;;   Called from:
;;     23000B04 (in aos_loop_proc)
easyflash_cli_init proc
	c.li	a0,00000000
	c.jr	ra

;; xEventGroupCreateStatic: 23060D0C
;;   Called from:
;;     23028982 (in cmd_mgr_queue)
xEventGroupCreateStatic proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.beqz	a0,0000000023060D42

l23060D16:
	addi	a5,zero,+00000020
	c.swsp	a5,00000084
	c.lwsp	a2,000000C4
	bne	a4,a5,0000000023060D3C

l23060D22:
	sw	zero,s0,+00000000
	addi	a0,s0,+00000004
	c.jal	0000000023060F70
	c.li	a5,00000001
	sb	a5,s0,+0000001C

l23060D32:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23060D3C:
	jal	ra,0000000023000C02
	c.j	0000000023060D22

l23060D42:
	jal	ra,0000000023000C02
	addi	a5,zero,+00000020
	c.swsp	a5,00000084
	c.lwsp	a2,000000C4
	beq	a4,a5,0000000023060D32

l23060D52:
	jal	ra,0000000023000C02
	c.j	0000000023060D32

;; xEventGroupWaitBits: 23060D58
;;   Called from:
;;     230289E6 (in cmd_mgr_queue)
xEventGroupWaitBits proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.mv	s2,a0
	c.mv	s1,a1
	c.mv	s5,a2
	c.mv	s4,a3
	c.mv	s3,a4
	c.beqz	a0,0000000023060E2C

l23060D74:
	lui	a5,000FF000
	c.and	a5,s1
	c.bnez	a5,0000000023060DBC

l23060D7C:
	c.beqz	s1,0000000023060DBC

l23060D7E:
	jal	ra,000000002306337C
	c.beqz	a0,0000000023060E04

l23060D84:
	jal	ra,0000000023062994
	lw	s0,s2,+00000000
	and	a5,s1,s0
	bne	s4,zero,0000000023060DC8

l23060D94:
	c.beqz	a5,0000000023060DCC

l23060D96:
	beq	s5,zero,0000000023060E1E

l23060D9A:
	xori	s1,s1,-00000001
	c.and	s1,s0
	sw	s1,s2,+00000000
	jal	ra,0000000023062B70

l23060DA8:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l23060DBC:
	jal	ra,0000000023000C02
	jal	ra,000000002306337C
	c.bnez	a0,0000000023060D84

l23060DC6:
	c.j	0000000023060E04

l23060DC8:
	beq	s1,a5,0000000023060D96

l23060DCC:
	beq	s3,zero,0000000023060E1E

l23060DD0:
	sltu	a1,zero,s5
	c.slli	a1,18
	bne	s4,zero,0000000023060E24

l23060DDA:
	c.mv	a2,s3
	c.or	a1,s1
	addi	a0,s2,+00000004
	jal	ra,0000000023062E00
	jal	ra,0000000023062B70
	c.bnez	a0,0000000023060DF0

l23060DEC:
	ecall

l23060DF0:
	jal	ra,0000000023063786
	slli	a5,a0,00000006
	bge	a5,zero,0000000023060E32

l23060DFC:
	slli	s0,a0,00000008
	c.srli	s0,00000008
	c.j	0000000023060DA8

l23060E04:
	beq	s3,zero,0000000023060D84

l23060E08:
	jal	ra,0000000023000C02
	jal	ra,0000000023062994
	lw	s0,s2,+00000000
	and	a5,s1,s0
	bne	s4,zero,0000000023060DC8

l23060E1C:
	c.j	0000000023060D94

l23060E1E:
	jal	ra,0000000023062B70
	c.j	0000000023060DA8

l23060E24:
	lui	a5,00004000
	c.or	a1,a5
	c.j	0000000023060DDA

l23060E2C:
	jal	ra,0000000023000C02
	c.j	0000000023060D74

l23060E32:
	jal	ra,0000000023063658
	lw	a0,s2,+00000000
	and	a5,s1,a0
	bne	s4,zero,0000000023060E5C

l23060E42:
	c.beqz	a5,0000000023060E52

l23060E44:
	beq	s5,zero,0000000023060E52

l23060E48:
	xori	s1,s1,-00000001
	c.and	s1,a0
	sw	s1,s2,+00000000

l23060E52:
	c.swsp	a0,00000084
	jal	ra,000000002306366C
	c.lwsp	a2,00000044
	c.j	0000000023060DFC

l23060E5C:
	bne	s1,a5,0000000023060E52

l23060E60:
	c.j	0000000023060E44

;; xEventGroupSetBits: 23060E62
;;   Called from:
;;     2302872C (in cmd_complete.isra.1)
;;     23028AAC (in cmd_mgr_drain)
xEventGroupSetBits proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.mv	s1,a0
	c.mv	s2,a1
	c.beqz	a0,0000000023060F0A

l23060E78:
	lui	a5,000FF000
	and	a5,s2,a5
	c.bnez	a5,0000000023060F04

l23060E82:
	jal	ra,0000000023062994
	c.lw	s1,0(a3)
	c.lw	s1,16(s0)
	addi	s3,s1,+0000000C
	or	a3,s2,a3
	c.sw	s1,0(a3)
	beq	s3,s0,0000000023060EE0

l23060E98:
	lui	s2,00001000
	c.li	s5,00000000
	c.addi	s2,FFFFFFFF
	lui	s4,00002000

l23060EA4:
	c.lw	s0,0(a4)
	c.mv	a0,s0
	or	a1,a3,s4
	and	a2,a4,s2
	slli	a5,a4,00000005
	and	a6,a2,a3
	c.lw	s0,4(s0)
	blt	a5,zero,0000000023060EFA

l23060EBE:
	beq	a6,zero,0000000023060ED4

l23060EC2:
	slli	a5,a4,00000007
	bge	a5,zero,0000000023060ECE

l23060ECA:
	or	s5,s5,a2

l23060ECE:
	jal	ra,0000000023062F28
	c.lw	s1,0(a3)

l23060ED4:
	bne	s3,s0,0000000023060EA4

l23060ED8:
	xori	s5,s5,-00000001
	and	a3,a3,s5

l23060EE0:
	c.sw	s1,0(a3)
	jal	ra,0000000023062B70
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lw	s1,0(a0)
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l23060EFA:
	beq	a2,a6,0000000023060EC2

l23060EFE:
	bne	s3,s0,0000000023060EA4

l23060F02:
	c.j	0000000023060ED8

l23060F04:
	jal	ra,0000000023000C02
	c.j	0000000023060E82

l23060F0A:
	jal	ra,0000000023000C02
	c.j	0000000023060E78

;; vEventGroupDelete: 23060F10
;;   Called from:
;;     23028A24 (in cmd_mgr_queue)
vEventGroupDelete proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.swsp	ra,00000084
	jal	ra,0000000023062994
	c.lw	s0,4(a5)
	addi	s1,s0,+0000000C
	c.bnez	a5,0000000023060F34

l23060F26:
	c.j	0000000023060F4C

l23060F28:
	lui	a1,00002000
	jal	ra,0000000023062F28
	c.lw	s0,4(a5)
	c.beqz	a5,0000000023060F4C

l23060F34:
	c.lw	s0,16(a0)
	bne	a0,s1,0000000023060F28

l23060F3A:
	jal	ra,0000000023000C02
	c.lw	s0,16(a0)
	lui	a1,00002000
	jal	ra,0000000023062F28
	c.lw	s0,4(a5)
	c.bnez	a5,0000000023060F34

l23060F4C:
	lbu	a5,s0,+0000001C
	c.beqz	a5,0000000023060F5E

l23060F52:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023062B70

l23060F5E:
	c.mv	a0,s0
	jal	ra,0000000023064972
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023062B70

;; vListInitialise: 23060F70
;;   Called from:
;;     23060D2A (in xEventGroupCreateStatic)
;;     230611EA (in xQueueGenericReset)
;;     230611F2 (in xQueueGenericReset)
;;     23062500 (in prvAddNewTaskToReadyList)
;;     23062514 (in prvAddNewTaskToReadyList)
;;     23062524 (in prvAddNewTaskToReadyList)
;;     23062530 (in prvAddNewTaskToReadyList)
;;     2306253C (in prvAddNewTaskToReadyList)
;;     23062548 (in prvAddNewTaskToReadyList)
;;     23063CDC (in prvCheckForValidListAndQueue)
;;     23063CEC (in prvCheckForValidListAndQueue)
vListInitialise proc
	addi	a5,a0,+00000008
	c.li	a4,FFFFFFFF
	c.sw	a0,4(a5)
	c.sw	a0,8(a4)
	c.sw	a0,12(a5)
	c.sw	a0,16(a5)
	sw	zero,a0,+00000000
	c.jr	ra

;; vListInitialiseItem: 23060F84
;;   Called from:
;;     23062284 (in prvInitialiseNewTask.isra.2)
;;     2306228C (in prvInitialiseNewTask.isra.2)
;;     23063E22 (in xTimerCreate)
;;     23063E9E (in xTimerCreateStatic)
vListInitialiseItem proc
	sw	zero,a0,+00000010
	c.jr	ra

;; vListInsertEnd: 23060F8A
;;   Called from:
;;     230623CE (in prvAddCurrentTaskToDelayedList)
;;     2306248A (in prvAddNewTaskToReadyList)
;;     23062812 (in vTaskDelete)
;;     23062B12 (in xTaskIncrementTick)
;;     23062C1E (in xTaskResumeAll)
;;     23062E2E (in vTaskPlaceOnUnorderedEventList)
;;     23062E6E (in vTaskPlaceOnEventListRestricted)
;;     23062EBC (in xTaskRemoveFromEventList)
;;     23062F1C (in xTaskRemoveFromEventList)
;;     23062F80 (in vTaskRemoveFromUnorderedEventList)
;;     23063472 (in xTaskPriorityInherit)
;;     23063510 (in xTaskPriorityDisinherit)
;;     23063616 (in vTaskPriorityDisinheritAfterTimeout)
;;     23063A14 (in xTaskGenericNotify)
;;     23063AE6 (in xTaskGenericNotifyFromISR)
;;     23063B68 (in xTaskGenericNotifyFromISR)
;;     23063BDA (in vTaskNotifyGiveFromISR)
;;     23063C3E (in vTaskNotifyGiveFromISR)
vListInsertEnd proc
	c.lw	a0,4(a5)
	c.sw	a1,4(a5)
	c.lw	a5,8(a4)
	c.sw	a1,8(a4)
	c.sw	a4,4(a1)
	c.sw	a5,8(a1)
	c.sw	a1,16(a0)
	c.lw	a0,0(a5)
	c.addi	a5,00000001
	c.sw	a0,0(a5)
	c.jr	ra

;; vListInsert: 23060FA0
;;   Called from:
;;     23062374 (in prvAddCurrentTaskToDelayedList)
;;     230623AE (in prvAddCurrentTaskToDelayedList)
;;     23062DE4 (in vTaskPlaceOnEventList)
;;     23063D60 (in prvInsertTimerInActiveList)
;;     23063D78 (in prvInsertTimerInActiveList)
;;     23063FDE (in prvSwitchTimerLists)
vListInsert proc
	c.lw	a1,0(a2)
	c.li	a5,FFFFFFFF
	addi	a4,a0,+00000008
	bne	a2,a5,0000000023060FB0

l23060FAC:
	c.j	0000000023060FCA

l23060FAE:
	c.mv	a4,a5

l23060FB0:
	c.lw	a4,4(a5)
	c.lw	a5,0(a3)
	bgeu	a2,a3,0000000023060FAE

l23060FB8:
	c.sw	a1,4(a5)
	c.sw	a5,8(a1)
	c.sw	a1,8(a4)
	c.sw	a4,4(a1)
	c.sw	a1,16(a0)
	c.lw	a0,0(a5)
	c.addi	a5,00000001
	c.sw	a0,0(a5)
	c.jr	ra

l23060FCA:
	c.lw	a0,16(a4)
	c.lw	a4,4(a5)
	c.j	0000000023060FB8

;; uxListRemove: 23060FD0
;;   Called from:
;;     23062336 (in prvAddCurrentTaskToDelayedList)
;;     230625C2 (in prvIdleTask)
;;     23062752 (in vTaskDelete)
;;     2306277A (in vTaskDelete)
;;     23062AE6 (in xTaskIncrementTick)
;;     23062AF2 (in xTaskIncrementTick)
;;     23062BF2 (in xTaskResumeAll)
;;     23062BFC (in xTaskResumeAll)
;;     23062EA4 (in xTaskRemoveFromEventList)
;;     23062EEE (in xTaskRemoveFromEventList)
;;     23062F48 (in vTaskRemoveFromUnorderedEventList)
;;     23062F52 (in vTaskRemoveFromUnorderedEventList)
;;     2306341C (in xTaskPriorityInherit)
;;     230634D2 (in xTaskPriorityDisinherit)
;;     230635E2 (in vTaskPriorityDisinheritAfterTimeout)
;;     230639E4 (in xTaskGenericNotify)
;;     23063B3A (in xTaskGenericNotifyFromISR)
;;     23063C10 (in vTaskNotifyGiveFromISR)
;;     23063F8A (in prvSwitchTimerLists)
;;     2306408E (in prvTimerTask)
;;     23064188 (in prvTimerTask)
uxListRemove proc
	c.lw	a0,4(a3)
	c.lw	a0,8(a4)
	c.lw	a0,16(a5)
	c.sw	a3,8(a4)
	c.lw	a0,4(a3)
	c.sw	a4,4(a3)
	c.lw	a5,4(a4)
	beq	a4,a0,0000000023060FF0

l23060FE2:
	sw	zero,a0,+00000010
	c.lw	a5,0(a4)
	c.addi	a4,FFFFFFFF
	c.sw	a5,0(a4)
	c.lw	a5,0(a0)
	c.jr	ra

l23060FF0:
	c.lw	a0,8(a4)
	c.sw	a5,4(a4)
	sw	zero,a0,+00000010
	c.lw	a5,0(a4)
	c.addi	a4,FFFFFFFF
	c.sw	a5,0(a4)
	c.lw	a5,0(a0)
	c.jr	ra

;; prvCopyDataToQueue: 23061002
;;   Called from:
;;     23061404 (in xQueueGenericSend)
;;     2306159C (in xQueueGenericSendFromISR)
prvCopyDataToQueue proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.lw	a0,64(a5)
	c.lw	a0,56(s1)
	c.mv	s0,a0
	c.bnez	a5,000000002306102A

l23061014:
	c.lw	a0,0(a5)
	c.addi	s1,00000001
	c.li	a0,00000000
	c.beqz	a5,0000000023061092

l2306101C:
	c.sw	s0,56(s1)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2306102A:
	c.mv	s2,a2
	c.bnez	a2,000000002306105A

l2306102E:
	c.lw	a0,4(a0)
	c.mv	a2,a5
	c.addi	s1,00000001
	jal	ra,00000000230A382C
	c.lw	s0,4(a5)
	c.lw	s0,64(a3)
	c.lw	s0,8(a4)
	c.li	a0,00000000
	c.add	a5,a3
	c.sw	s0,4(a5)
	bltu	a5,a4,000000002306101C

l23061048:
	c.lw	s0,0(a5)
	c.sw	s0,56(s1)
	c.sw	s0,4(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2306105A:
	c.lw	a0,12(a0)
	c.mv	a2,a5
	jal	ra,00000000230A382C
	c.lw	s0,64(a4)
	c.lw	s0,12(a5)
	c.lw	s0,0(a3)
	sub	a4,zero,a4
	c.add	a5,a4
	c.sw	s0,12(a5)
	bgeu	a5,a3,000000002306107A

l23061074:
	c.lw	s0,8(a5)
	c.add	a4,a5
	c.sw	s0,12(a4)

l2306107A:
	c.li	a5,00000002
	beq	s2,a5,000000002306109E

l23061080:
	c.addi	s1,00000001
	c.sw	s0,56(s1)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23061092:
	c.lw	s0,8(a0)
	jal	ra,000000002306347A
	sw	zero,s0,+00000008
	c.j	000000002306101C

l2306109E:
	c.li	a0,00000000
	c.bnez	s1,000000002306101C

l230610A2:
	c.li	s1,00000001
	c.j	000000002306101C

;; prvCopyDataFromQueue: 230610A6
;;   Called from:
;;     23061762 (in xQueueReceive)
prvCopyDataFromQueue proc
	c.lw	a0,64(a2)
	c.mv	a5,a1
	c.beqz	a2,00000000230610C2

l230610AC:
	c.lw	a0,12(a1)
	c.lw	a0,8(a4)
	c.add	a1,a2
	c.sw	a0,12(a1)
	bltu	a1,a4,00000000230610BC

l230610B8:
	c.lw	a0,0(a1)
	c.sw	a0,12(a1)

l230610BC:
	c.mv	a0,a5
	jal	zero,00000000230A382C

l230610C2:
	c.jr	ra

;; prvUnlockQueue: 230610C4
;;   Called from:
;;     230613E8 (in xQueueGenericSend)
;;     23061436 (in xQueueGenericSend)
;;     23061484 (in xQueueGenericSend)
;;     2306170C (in xQueueReceive)
;;     2306173C (in xQueueReceive)
;;     23061792 (in xQueueReceive)
;;     23061858 (in xQueueSemaphoreTake)
;;     23061884 (in xQueueSemaphoreTake)
;;     230618B6 (in xQueueSemaphoreTake)
;;     23061AC6 (in vQueueWaitForMessageRestricted)
;;     23061AE2 (in vQueueWaitForMessageRestricted)
prvUnlockQueue proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	jal	ra,0000000023063658
	lbu	s0,s1,+00000045
	c.slli	s0,18
	c.srai	s0,00000018
	bge	zero,s0,0000000023061116

l230610E0:
	c.lw	s1,36(a5)
	c.beqz	a5,0000000023061116

l230610E4:
	addi	s2,s1,+00000024
	c.j	00000000230610FC

l230610EA:
	c.addi	s0,FFFFFFFF
	andi	a5,s0,+000000FF
	slli	s0,a5,00000018
	c.srai	s0,00000018
	c.beqz	a5,0000000023061116

l230610F8:
	c.lw	s1,36(a5)
	c.beqz	a5,0000000023061116

l230610FC:
	c.mv	a0,s2
	jal	ra,0000000023062E90
	c.beqz	a0,00000000230610EA

l23061104:
	c.addi	s0,FFFFFFFF
	jal	ra,00000000230630F2
	andi	a5,s0,+000000FF
	slli	s0,a5,00000018
	c.srai	s0,00000018
	c.bnez	a5,00000000230610F8

l23061116:
	c.li	a5,FFFFFFFF
	sb	a5,s1,+00000045
	jal	ra,000000002306366C
	jal	ra,0000000023063658
	lbu	s0,s1,+00000044
	c.slli	s0,18
	c.srai	s0,00000018
	bge	zero,s0,0000000023061166

l23061130:
	c.lw	s1,16(a5)
	c.beqz	a5,0000000023061166

l23061134:
	addi	s2,s1,+00000010
	c.j	000000002306114C

l2306113A:
	c.addi	s0,FFFFFFFF
	andi	a5,s0,+000000FF
	slli	s0,a5,00000018
	c.srai	s0,00000018
	c.beqz	a5,0000000023061166

l23061148:
	c.lw	s1,16(a5)
	c.beqz	a5,0000000023061166

l2306114C:
	c.mv	a0,s2
	jal	ra,0000000023062E90
	c.beqz	a0,000000002306113A

l23061154:
	c.addi	s0,FFFFFFFF
	jal	ra,00000000230630F2
	andi	a5,s0,+000000FF
	slli	s0,a5,00000018
	c.srai	s0,00000018
	c.bnez	a5,0000000023061148

l23061166:
	c.li	a5,FFFFFFFF
	sb	a5,s1,+00000044
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002306366C

;; xQueueGenericReset: 2306117A
;;   Called from:
;;     23061258 (in xQueueGenericCreateStatic)
;;     230612DC (in xQueueGenericCreate)
xQueueGenericReset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	c.beqz	a0,0000000023061206

l23061188:
	jal	ra,0000000023063658
	c.lw	s0,64(a3)
	c.lw	s0,60(a5)
	c.lw	s0,0(a4)
	sw	zero,s0,+00000038
	add	a5,a3,a5
	c.li	a2,FFFFFFFF
	sb	a2,s0,+00000044
	c.sw	s0,4(a4)
	sb	a2,s0,+00000045
	sub	a3,a5,a3
	c.add	a5,a4
	c.add	a4,a3
	c.sw	s0,8(a5)
	c.sw	s0,12(a4)
	c.bnez	s1,00000000230611E6

l230611B4:
	c.lw	s0,16(a5)
	c.bnez	a5,00000000230611C8

l230611B8:
	jal	ra,000000002306366C
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l230611C8:
	addi	a0,s0,+00000010
	jal	ra,0000000023062E90
	c.beqz	a0,00000000230611B8

l230611D2:
	ecall
	jal	ra,000000002306366C
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l230611E6:
	addi	a0,s0,+00000010
	jal	ra,0000000023060F70
	addi	a0,s0,+00000024
	jal	ra,0000000023060F70
	jal	ra,000000002306366C
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l23061206:
	jal	ra,0000000023000C02
	c.j	0000000023061188

;; xQueueGenericCreateStatic: 2306120C
;;   Called from:
;;     2305B050 (in __bl_ble_sync_task)
;;     2305B066 (in __bl_ble_sync_task)
;;     2305C0F8 (in pro_trans_init)
;;     230614AC (in xQueueCreateMutexStatic)
;;     23063D16 (in prvCheckForValidListAndQueue)
xQueueGenericCreateStatic proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.mv	s3,a0
	c.mv	s1,a1
	c.mv	s2,a2
	c.mv	s0,a3
	c.mv	s4,a4
	c.beqz	a0,0000000023061276

l23061226:
	c.beqz	s0,0000000023061286

l23061228:
	beq	s2,zero,000000002306127E

l2306122C:
	c.beqz	s1,0000000023061280

l2306122E:
	addi	a5,zero,+00000050
	c.swsp	a5,00000084
	c.lwsp	a2,000000C4
	beq	a4,a5,000000002306123E

l2306123A:
	jal	ra,0000000023000C02

l2306123E:
	c.lwsp	a2,000000E4
	c.beqz	s0,0000000023061260

l23061242:
	c.li	a5,00000001
	sb	a5,s0,+00000046
	c.beqz	s1,0000000023061272

l2306124A:
	sw	s2,s0,+00000000
	sw	s3,s0,+0000003C
	c.sw	s0,64(s1)
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002306117A
	sb	s4,s0,+0000004C

l23061260:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23061272:
	c.mv	s2,s0
	c.j	000000002306124A

l23061276:
	jal	ra,0000000023000C02
	c.bnez	s0,0000000023061228

l2306127C:
	c.j	0000000023061286

l2306127E:
	c.beqz	s1,000000002306122E

l23061280:
	jal	ra,0000000023000C02
	c.j	000000002306122E

l23061286:
	jal	ra,0000000023000C02
	c.j	0000000023061228

;; xQueueGenericCreate: 2306128C
;;   Called from:
;;     2302816E (in wifi_mgmr_all_ap_scan)
;;     23029188 (in ble_controller_init)
;;     23048A4C (in k_queue_init)
;;     2306131E (in xQueueCreateCountingSemaphore)
;;     23061528 (in xQueueCreateMutex)
;;     2306A500 (in sys_mbox_new)
;;     2306A678 (in sys_sem_new)
;;     2307CB88 (in at_server_init)
;;     2307CF60 (in http_url_req)
xQueueGenericCreate proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a0
	c.mv	s2,a1
	c.mv	s3,a2
	c.beqz	a0,00000000230612F4

l230612A0:
	beq	s2,zero,00000000230612C0

l230612A4:
	add	a0,s1,s2
	addi	a0,a0,+00000050
	jal	ra,000000002306488A
	c.mv	s0,a0
	c.beqz	a0,00000000230612FA

l230612B4:
	addi	a5,a0,+00000050
	sb	zero,a0,+00000046
	c.sw	a0,0(a5)
	c.j	00000000230612D2

l230612C0:
	addi	a0,zero,+00000050
	jal	ra,000000002306488A
	c.mv	s0,a0
	c.beqz	a0,00000000230612FA

l230612CC:
	sb	zero,s0,+00000046
	c.sw	s0,0(s0)

l230612D2:
	c.sw	s0,60(s1)
	sw	s2,s0,+00000040
	c.mv	a0,s0
	c.li	a1,00000001
	jal	ra,000000002306117A
	sb	s3,s0,+0000004C
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230612F4:
	jal	ra,0000000023000C02
	c.j	00000000230612A0

l230612FA:
	c.li	s0,00000000
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; xQueueCreateCountingSemaphore: 2306130C
;;   Called from:
;;     23048B4C (in k_sem_init)
;;     2307BE82 (in aos_sem_new)
xQueueCreateCountingSemaphore proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a1
	c.beqz	a0,000000002306132E

l23061316:
	bltu	a0,s0,000000002306133A

l2306131A:
	c.li	a2,00000002
	c.li	a1,00000000
	jal	ra,000000002306128C
	c.beqz	a0,0000000023061326

l23061324:
	c.sw	a0,56(s0)

l23061326:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2306132E:
	c.swsp	a0,00000084
	jal	ra,0000000023000C02
	c.lwsp	a2,00000044
	bgeu	a0,s0,000000002306131A

l2306133A:
	c.swsp	a0,00000084
	jal	ra,0000000023000C02
	c.lwsp	a2,00000044
	c.j	000000002306131A

;; xQueueGenericSend: 23061344
;;   Called from:
;;     230279CE (in cb_scan_complete)
;;     230286DC (in cmd_mgr_print)
;;     230287A4 (in cmd_mgr_msgind)
;;     230288B4 (in cmd_mgr_llind)
;;     23028902 (in cmd_mgr_queue)
;;     23028934 (in cmd_mgr_queue)
;;     230289A4 (in cmd_mgr_queue)
;;     23028A1E (in cmd_mgr_queue)
;;     23028A86 (in cmd_mgr_drain)
;;     23029050 (in rw_main_task_post)
;;     23048A76 (in k_queue_insert)
;;     23048BA0 (in k_sem_give)
;;     2305B64E (in wifi_state_get_cb)
;;     2305B6B6 (in write_data)
;;     2305C06C (in pro_trans_ack)
;;     23060978 (in ef_port_env_unlock)
;;     230614C6 (in xQueueCreateMutexStatic)
;;     23061510 (in xQueueGiveMutexRecursive)
;;     23061542 (in xQueueCreateMutex)
;;     23063F12 (in xTimerGenericCommand)
;;     23063F54 (in xTimerGenericCommand)
;;     2306A590 (in sys_mbox_post)
;;     2306A5B0 (in sys_mbox_trypost)
;;     2306A686 (in sys_sem_new)
;;     2306A7A8 (in sys_mutex_unlock)
;;     2307ACD6 (in aos_open)
;;     2307AD00 (in aos_open)
;;     2307AD96 (in aos_close)
;;     2307AEA6 (in aos_stat)
;;     2307AEBC (in aos_stat)
;;     2307AF04 (in aos_stat)
;;     2307AF48 (in aos_opendir)
;;     2307AF6C (in aos_opendir)
;;     2307AF9C (in aos_opendir)
;;     2307B014 (in aos_closedir)
;;     2307B306 (in aos_register_driver)
;;     2307B38C (in aos_register_fs)
;;     2307BE66 (in aos_mutex_unlock)
;;     2307BEEA (in aos_sem_signal)
;;     2307CC68 (in at_server_notify_with_ctx)
;;     2307D142 (in cb_httpc_result)
;;     2308042C (in tcp_connected_callback)
;;     23080532 (in tcp_receive_callback)
;;     2308059E (in tcp_receive_callback)
;;     230805B0 (in tcp_receive_callback)
;;     23080818 (in tcp_err_callback)
;;     23080974 (in tcp_accept_callback)
;;     230809CE (in tcp_accept_callback)
;;     23080BCC (in bl_cipstart)
;;     23080C96 (in bl_cipstart)
;;     23080CC8 (in bl_cipstart)
;;     23080D04 (in bl_cipstart)
;;     23080D74 (in bl_cipstart)
;;     23080E3A (in bl_cipstart)
;;     23080EA8 (in bl_cipstart)
;;     23080FEE (in bl_cipclose)
;;     23081038 (in bl_cipclose)
;;     23081232 (in bl_cipsslcconf_path)
;;     23081268 (in bl_cipsslcconf_path)
;;     230812D2 (in bl_cipsslcconf_path)
;;     23081400 (in bl_cipsslcsni)
;;     23081442 (in bl_cipsslcsni)
;;     2308145C (in bl_cipsslcsni)
;;     23081506 (in bl_cipsslcalpn)
;;     23081530 (in bl_cipsslcalpn)
;;     2308586A (in bl_sha_mutex_give)
xQueueGenericSend proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s5,00000090
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s6,00000010
	c.swsp	a2,00000084
	c.mv	s0,a0
	c.mv	s5,a1
	c.mv	s2,a3
	beq	a0,zero,0000000023061490

l23061362:
	beq	s5,zero,000000002306146E

l23061366:
	c.li	a5,00000002
	beq	s2,a5,0000000023061460

l2306136C:
	jal	ra,000000002306337C
	c.bnez	a0,0000000023061378

l23061372:
	c.lwsp	a2,000000E4
	bne	a5,zero,0000000023061496

l23061378:
	jal	ra,0000000023063658
	c.lw	s0,56(a4)
	c.lw	s0,60(a5)
	c.li	s6,00000000
	c.li	s3,00000002
	c.li	s1,FFFFFFFF
	addi	s4,s0,+00000010
	bltu	a4,a5,00000000230613FE

l2306138E:
	beq	s2,s3,00000000230613FE

l23061392:
	c.lwsp	a2,000000E4
	beq	a5,zero,000000002306147A

l23061398:
	beq	s6,zero,0000000023061448

l2306139C:
	jal	ra,000000002306366C
	jal	ra,0000000023062994
	jal	ra,0000000023063658
	lbu	a5,s0,+00000044
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,s1,00000000230613B8

l230613B4:
	sb	zero,s0,+00000044

l230613B8:
	lbu	a5,s0,+00000045
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,s1,00000000230613C8

l230613C4:
	sb	zero,s0,+00000045

l230613C8:
	jal	ra,000000002306366C
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	jal	ra,0000000023063040
	c.bnez	a0,0000000023061482

l230613D6:
	jal	ra,0000000023063658
	c.lw	s0,56(a4)
	c.lw	s0,60(a5)
	beq	a4,a5,0000000023061428

l230613E2:
	jal	ra,000000002306366C
	c.mv	a0,s0
	jal	ra,00000000230610C4
	jal	ra,0000000023062B70

l230613F0:
	c.li	s6,00000001

l230613F2:
	jal	ra,0000000023063658
	c.lw	s0,56(a4)
	c.lw	s0,60(a5)
	bgeu	a4,a5,000000002306138E

l230613FE:
	c.mv	a2,s2
	c.mv	a1,s5
	c.mv	a0,s0
	jal	ra,0000000023061002
	c.lw	s0,36(a5)
	c.bnez	a5,0000000023061450

l2306140C:
	c.bnez	a0,000000002306145A

l2306140E:
	jal	ra,000000002306366C
	c.li	a0,00000001

l23061414:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.addi16sp	00000040
	c.jr	ra

l23061428:
	jal	ra,000000002306366C
	c.lwsp	a2,00000064
	c.mv	a0,s4
	jal	ra,0000000023062DD0
	c.mv	a0,s0
	jal	ra,00000000230610C4
	jal	ra,0000000023062B70
	c.bnez	a0,00000000230613F0

l23061440:
	ecall
	c.li	s6,00000001
	c.j	00000000230613F2

l23061448:
	c.addi4spn	a0,00000018
	jal	ra,000000002306302A
	c.j	000000002306139C

l23061450:
	addi	a0,s0,+00000024
	jal	ra,0000000023062E90
	c.beqz	a0,000000002306140E

l2306145A:
	ecall
	c.j	000000002306140E

l23061460:
	c.lw	s0,60(a4)
	c.li	a5,00000001
	beq	a4,a5,000000002306136C

l23061468:
	jal	ra,0000000023000C02
	c.j	000000002306136C

l2306146E:
	c.lw	s0,64(a5)
	beq	a5,zero,0000000023061366

l23061474:
	jal	ra,0000000023000C02
	c.j	0000000023061366

l2306147A:
	jal	ra,000000002306366C
	c.li	a0,00000000
	c.j	0000000023061414

l23061482:
	c.mv	a0,s0
	jal	ra,00000000230610C4
	jal	ra,0000000023062B70
	c.li	a0,00000000
	c.j	0000000023061414

l23061490:
	jal	ra,0000000023000C02
	c.j	0000000023061362

l23061496:
	jal	ra,0000000023000C02
	c.j	0000000023061378

;; xQueueCreateMutexStatic: 2306149C
;;   Called from:
;;     23065C68 (in bl_sec_init)
;;     2307AC6C (in vfs_init)
xQueueCreateMutexStatic proc
	c.addi	sp,FFFFFFF0
	c.mv	a4,a0
	c.mv	a3,a1
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002306120C
	c.mv	s0,a0
	c.beqz	a0,00000000230614CA

l230614B4:
	sw	zero,a0,+00000008
	sw	zero,a0,+00000000
	sw	zero,a0,+0000000C
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344

l230614CA:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; xQueueGiveMutexRecursive: 230614D4
;;   Called from:
;;     2307C46E (in at_serial_unlock)
;;     2307C4E2 (in at_data_output)
;;     2307C814 (in at_dump_noend)
xQueueGiveMutexRecursive proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s0,a0
	c.beqz	a0,0000000023061516

l230614E2:
	lw	s2,s0,+00000008
	jal	ra,0000000023063372
	c.li	s1,00000000
	beq	s2,a0,00000000230614FE

l230614F0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230614FE:
	c.lw	s0,12(a5)
	c.li	s1,00000001
	c.addi	a5,FFFFFFFF
	c.sw	s0,12(a5)
	c.bnez	a5,00000000230614F0

l23061508:
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023061344
	c.j	00000000230614F0

l23061516:
	jal	ra,0000000023000C02
	c.j	00000000230614E2

;; xQueueCreateMutex: 2306151C
;;   Called from:
;;     23028AC8 (in bl_cmd_mgr_init)
;;     23060A90 (in ef_port_init)
;;     2306A758 (in sys_mutex_new)
;;     2307BE24 (in aos_mutex_new)
;;     2307CB5E (in at_server_init)
;;     2307DA1A (in at_cmd_impl_init)
;;     2307DA24 (in at_cmd_impl_init)
xQueueCreateMutex proc
	c.addi	sp,FFFFFFF0
	c.mv	a2,a0
	c.li	a1,00000000
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002306128C
	c.mv	s0,a0
	c.beqz	a0,0000000023061546

l23061530:
	sw	zero,a0,+00000008
	sw	zero,a0,+00000000
	sw	zero,a0,+0000000C
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344

l23061546:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; xQueueGenericSendFromISR: 23061550
;;   Called from:
;;     2302908A (in rw_main_task_post_from_fw)
;;     23063F2C (in xTimerGenericCommand)
xQueueGenericSendFromISR proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.mv	s0,a0
	c.mv	s3,a2
	c.mv	s2,a3
	c.beqz	a0,00000000230615E8

l23061564:
	c.beqz	a1,00000000230615C6

l23061566:
	c.li	a4,00000002
	c.lw	s0,60(a5)
	beq	s2,a4,0000000023061584

l2306156E:
	c.lw	s0,56(a4)
	bltu	a4,a5,0000000023061594

l23061574:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l23061584:
	c.li	a4,00000001
	beq	a5,a4,0000000023061592

l2306158A:
	c.swsp	a1,00000084
	jal	ra,0000000023000C02
	c.lwsp	a2,00000064

l23061592:
	c.lw	s0,56(a5)

l23061594:
	lbu	s1,s0,+00000045
	c.mv	a2,s2
	c.mv	a0,s0
	jal	ra,0000000023061002
	slli	a4,s1,00000018
	c.srai	a4,00000018
	c.li	a5,FFFFFFFF
	beq	a4,a5,00000000230615D4

l230615AC:
	c.addi	s1,00000001
	c.slli	s1,18
	c.srai	s1,00000018
	sb	s1,s0,+00000045
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000001
	c.addi16sp	00000030
	c.jr	ra

l230615C6:
	c.lw	s0,64(a5)
	c.beqz	a5,0000000023061566

l230615CA:
	c.swsp	a1,00000084
	jal	ra,0000000023000C02
	c.lwsp	a2,00000064
	c.j	0000000023061566

l230615D4:
	c.lw	s0,36(a5)
	c.bnez	a5,00000000230615F2

l230615D8:
	c.li	a0,00000001

l230615DA:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l230615E8:
	c.swsp	a1,00000084
	jal	ra,0000000023000C02
	c.lwsp	a2,00000064
	c.j	0000000023061564

l230615F2:
	addi	a0,s0,+00000024
	jal	ra,0000000023062E90
	c.beqz	a0,00000000230615D8

l230615FC:
	beq	s3,zero,00000000230615D8

l23061600:
	c.li	a5,00000001
	sw	a5,s3,+00000000
	c.li	a0,00000001
	c.j	00000000230615DA

;; xQueueGiveFromISR: 2306160A
;;   Called from:
;;     2307BED2 (in aos_sem_signal)
xQueueGiveFromISR proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	c.beqz	a0,0000000023061666

l23061618:
	c.lw	s0,64(a5)
	c.bnez	a5,0000000023061654

l2306161C:
	c.lw	s0,0(a5)
	c.beqz	a5,000000002306165C

l23061620:
	c.lw	s0,56(a5)
	c.lw	s0,60(a4)
	c.li	a0,00000000
	bgeu	a5,a4,000000002306164A

l2306162A:
	lbu	a4,s0,+00000045
	c.addi	a5,00000001
	c.sw	s0,56(a5)
	slli	a3,a4,00000018
	c.srai	a3,00000018
	c.li	a5,FFFFFFFF
	beq	a3,a5,000000002306166C

l2306163E:
	c.addi	a4,00000001
	c.slli	a4,18
	c.srai	a4,00000018
	sb	a4,s0,+00000045

l23061648:
	c.li	a0,00000001

l2306164A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23061654:
	jal	ra,0000000023000C02
	c.lw	s0,0(a5)
	c.bnez	a5,0000000023061620

l2306165C:
	c.lw	s0,8(a5)
	c.beqz	a5,0000000023061620

l23061660:
	jal	ra,0000000023000C02
	c.j	0000000023061620

l23061666:
	jal	ra,0000000023000C02
	c.j	0000000023061618

l2306166C:
	c.lw	s0,36(a5)
	c.beqz	a5,0000000023061648

l23061670:
	addi	a0,s0,+00000024
	jal	ra,0000000023062E90
	c.beqz	a0,0000000023061648

l2306167A:
	c.beqz	s1,0000000023061648

l2306167C:
	c.li	a5,00000001
	c.sw	s1,0(a5)
	c.li	a0,00000001
	c.j	000000002306164A

;; xQueueReceive: 23061684
;;   Called from:
;;     23028FCE (in blecontroller_main)
;;     230291FA (in ble_controller_deinit)
;;     23048AFA (in k_queue_get)
;;     2305B0D6 (in __bl_ble_sync_task)
;;     23064078 (in prvTimerTask)
;;     2306A600 (in sys_arch_mbox_fetch)
;;     2306A62E (in sys_arch_mbox_fetch)
;;     2306A644 (in sys_arch_mbox_tryfetch)
;;     2307C86E (in at_async_event)
xQueueReceive proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s3,00000094
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s4,00000014
	c.swsp	a2,00000084
	c.mv	s0,a0
	c.mv	s3,a1
	beq	a0,zero,00000000230617BA

l2306169C:
	beq	s3,zero,00000000230617AE

l230616A0:
	jal	ra,000000002306337C
	beq	a0,zero,00000000230617A2

l230616A8:
	jal	ra,0000000023063658
	lw	s2,s0,+00000038
	bne	s2,zero,000000002306175C

l230616B4:
	c.lwsp	a2,000000E4
	c.beqz	a5,0000000023061724

l230616B8:
	c.addi4spn	a0,00000018
	jal	ra,000000002306302A
	c.li	s1,FFFFFFFF
	addi	s4,s0,+00000024

l230616C4:
	jal	ra,000000002306366C
	jal	ra,0000000023062994
	jal	ra,0000000023063658
	lbu	a5,s0,+00000044
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,s1,00000000230616E0

l230616DC:
	sb	zero,s0,+00000044

l230616E0:
	lbu	a5,s0,+00000045
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,s1,00000000230616F0

l230616EC:
	sb	zero,s0,+00000045

l230616F0:
	jal	ra,000000002306366C
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	jal	ra,0000000023063040
	c.bnez	a0,000000002306173A

l230616FE:
	jal	ra,0000000023063658
	c.lw	s0,56(a5)
	c.beqz	a5,0000000023061784

l23061706:
	jal	ra,000000002306366C
	c.mv	a0,s0
	jal	ra,00000000230610C4
	jal	ra,0000000023062B70
	jal	ra,0000000023063658
	lw	s2,s0,+00000038
	bne	s2,zero,000000002306175C

l23061720:
	c.lwsp	a2,000000E4
	c.bnez	a5,00000000230616C4

l23061724:
	jal	ra,000000002306366C
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.li	a0,00000000
	c.addi16sp	00000040
	c.jr	ra

l2306173A:
	c.mv	a0,s0
	jal	ra,00000000230610C4
	jal	ra,0000000023062B70
	jal	ra,0000000023063658
	c.lw	s0,56(a5)
	c.beqz	a5,0000000023061724

l2306174C:
	jal	ra,000000002306366C

l23061750:
	jal	ra,0000000023063658
	lw	s2,s0,+00000038
	beq	s2,zero,0000000023061720

l2306175C:
	c.mv	a1,s3
	c.mv	a0,s0
	c.addi	s2,FFFFFFFF
	jal	ra,00000000230610A6
	sw	s2,s0,+00000038
	c.lw	s0,16(a5)
	c.bnez	a5,00000000230617C0

l2306176E:
	jal	ra,000000002306366C
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.li	a0,00000001
	c.addi16sp	00000040
	c.jr	ra

l23061784:
	jal	ra,000000002306366C
	c.lwsp	a2,00000064
	c.mv	a0,s4
	jal	ra,0000000023062DD0
	c.mv	a0,s0
	jal	ra,00000000230610C4
	jal	ra,0000000023062B70
	c.bnez	a0,0000000023061750

l2306179C:
	ecall
	c.j	0000000023061750

l230617A2:
	c.lwsp	a2,000000E4
	beq	a5,zero,00000000230616A8

l230617A8:
	jal	ra,0000000023000C02
	c.j	00000000230616A8

l230617AE:
	c.lw	s0,64(a5)
	beq	a5,zero,00000000230616A0

l230617B4:
	jal	ra,0000000023000C02
	c.j	00000000230616A0

l230617BA:
	jal	ra,0000000023000C02
	c.j	000000002306169C

l230617C0:
	addi	a0,s0,+00000010
	jal	ra,0000000023062E90
	c.beqz	a0,000000002306176E

l230617CA:
	ecall
	c.j	000000002306176E

;; xQueueSemaphoreTake: 230617D0
;;   Called from:
;;     230281A6 (in wifi_mgmr_all_ap_scan)
;;     230286C0 (in cmd_mgr_print)
;;     23028750 (in cmd_mgr_msgind)
;;     23028808 (in cmd_mgr_llind)
;;     230288E6 (in cmd_mgr_queue)
;;     230289F2 (in cmd_mgr_queue)
;;     23028A54 (in cmd_mgr_drain)
;;     23048B66 (in k_sem_take)
;;     2305BDD8 (in __protocol_send)
;;     23060966 (in ef_port_env_lock)
;;     23061976 (in xQueueTakeMutexRecursive)
;;     2306A6B0 (in sys_sem_new)
;;     2306A6EE (in sys_arch_sem_wait)
;;     2306A714 (in sys_arch_sem_wait)
;;     2307ACBA (in aos_open)
;;     2307AD7E (in aos_close)
;;     2307AE72 (in aos_stat)
;;     2307AEEC (in aos_stat)
;;     2307AF2C (in aos_opendir)
;;     2307AF84 (in aos_opendir)
;;     2307AFFC (in aos_closedir)
;;     2307B2D4 (in aos_register_driver)
;;     2307B35A (in aos_register_fs)
;;     2307BE48 (in aos_mutex_lock)
;;     2307BEA4 (in aos_sem_wait)
;;     2307D046 (in http_url_req)
;;     2308039E (in tcp_connected_callback)
;;     2308047A (in tcp_connected_callback)
;;     230804F4 (in tcp_receive_callback)
;;     230807D4 (in tcp_err_callback)
;;     2308092C (in tcp_accept_callback)
;;     23080BB0 (in bl_cipstart)
;;     23080FAA (in bl_cipclose)
;;     23081204 (in bl_cipsslcconf_path)
;;     230813D2 (in bl_cipsslcsni)
;;     230814D6 (in bl_cipsslcalpn)
;;     230857F0 (in bl_sha_mutex_take)
xQueueSemaphoreTake proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	a1,00000084
	c.mv	s0,a0
	beq	a0,zero,0000000023061914

l230617E6:
	c.lw	s0,64(a5)
	bne	a5,zero,00000000230618EE

l230617EC:
	jal	ra,000000002306337C
	beq	a0,zero,00000000230618E2

l230617F4:
	jal	ra,0000000023063658
	c.lw	s0,56(a5)
	c.li	s3,00000000
	c.li	s2,00000000
	c.li	s1,FFFFFFFF
	addi	s4,s0,+00000024
	c.bnez	a5,000000002306186A

l23061806:
	c.lwsp	a2,000000E4
	beq	a5,zero,000000002306192C

l2306180C:
	beq	s2,zero,000000002306189C

l23061810:
	jal	ra,000000002306366C
	jal	ra,0000000023062994
	jal	ra,0000000023063658
	lbu	a5,s0,+00000044
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,s1,000000002306182C

l23061828:
	sb	zero,s0,+00000044

l2306182C:
	lbu	a5,s0,+00000045
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,s1,000000002306183C

l23061838:
	sb	zero,s0,+00000045

l2306183C:
	jal	ra,000000002306366C
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	jal	ra,0000000023063040
	c.bnez	a0,0000000023061882

l2306184A:
	jal	ra,0000000023063658
	c.lw	s0,56(a5)
	c.beqz	a5,00000000230618A4

l23061852:
	jal	ra,000000002306366C
	c.mv	a0,s0
	jal	ra,00000000230610C4
	jal	ra,0000000023062B70

l23061860:
	c.li	s2,00000001

l23061862:
	jal	ra,0000000023063658
	c.lw	s0,56(a5)
	c.beqz	a5,0000000023061806

l2306186A:
	c.lw	s0,0(a4)
	c.addi	a5,FFFFFFFF
	c.sw	s0,56(a5)
	beq	a4,zero,0000000023061950

l23061874:
	c.lw	s0,16(a5)
	bne	a5,zero,0000000023061938

l2306187A:
	jal	ra,000000002306366C
	c.li	s3,00000001
	c.j	00000000230618D0

l23061882:
	c.mv	a0,s0
	jal	ra,00000000230610C4
	jal	ra,0000000023062B70
	jal	ra,0000000023063658
	c.lw	s0,56(a5)
	c.beqz	a5,00000000230618C8

l23061894:
	jal	ra,000000002306366C
	c.li	s2,00000001
	c.j	0000000023061862

l2306189C:
	c.addi4spn	a0,00000018
	jal	ra,000000002306302A
	c.j	0000000023061810

l230618A4:
	jal	ra,000000002306366C
	c.lw	s0,0(a5)
	c.beqz	a5,000000002306191A

l230618AC:
	c.lwsp	a2,00000064
	c.mv	a0,s4
	jal	ra,0000000023062DD0
	c.mv	a0,s0
	jal	ra,00000000230610C4
	jal	ra,0000000023062B70
	c.bnez	a0,0000000023061860

l230618C0:
	ecall
	c.li	s2,00000001
	c.j	0000000023061862

l230618C8:
	jal	ra,000000002306366C
	bne	s3,zero,00000000230618F4

l230618D0:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s3
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

l230618E2:
	c.lwsp	a2,000000E4
	beq	a5,zero,00000000230617F4

l230618E8:
	jal	ra,0000000023000C02
	c.j	00000000230617F4

l230618EE:
	jal	ra,0000000023000C02
	c.j	00000000230617EC

l230618F4:
	jal	ra,0000000023063658
	c.lw	s0,36(a1)
	c.beqz	a1,0000000023061906

l230618FC:
	c.lw	s0,48(a5)
	addi	a1,zero,+00000020
	c.lw	a5,0(a5)
	c.sub	a1,a5

l23061906:
	c.lw	s0,8(a0)
	c.li	s3,00000000
	jal	ra,0000000023063552
	jal	ra,000000002306366C
	c.j	00000000230618D0

l23061914:
	jal	ra,0000000023000C02
	c.j	00000000230617E6

l2306191A:
	jal	ra,0000000023063658
	c.lw	s0,8(a0)
	jal	ra,0000000023063398
	c.mv	s3,a0
	jal	ra,000000002306366C
	c.j	00000000230618AC

l2306192C:
	bne	s3,zero,000000002306194A

l23061930:
	jal	ra,000000002306366C
	c.li	s3,00000000
	c.j	00000000230618D0

l23061938:
	addi	a0,s0,+00000010
	jal	ra,0000000023062E90
	beq	a0,zero,000000002306187A

l23061944:
	ecall
	c.j	000000002306187A

l2306194A:
	jal	ra,0000000023000C02
	c.j	0000000023061930

l23061950:
	jal	ra,00000000230637A2
	c.sw	s0,8(a0)
	c.j	0000000023061874

;; xQueueTakeMutexRecursive: 23061958
;;   Called from:
;;     2307C440 (in at_serial_lock)
;;     2307C4AA (in at_data_output)
;;     2307C7A6 (in at_dump_noend)
xQueueTakeMutexRecursive proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s2,a1
	c.beqz	a0,00000000230619A2

l23061968:
	c.lw	s0,8(s1)
	jal	ra,0000000023063372
	beq	s1,a0,000000002306198E

l23061972:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,00000000230617D0
	c.beqz	a0,0000000023061982

l2306197C:
	c.lw	s0,12(a5)
	c.addi	a5,00000001
	c.sw	s0,12(a5)

l23061982:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2306198E:
	c.lw	s0,12(a5)
	c.li	a0,00000001
	c.addi	a5,00000001
	c.sw	s0,12(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230619A2:
	jal	ra,0000000023000C02
	c.j	0000000023061968

;; uxQueueMessagesWaiting: 230619A8
;;   Called from:
;;     23048B16 (in k_queue_is_empty)
;;     23048B26 (in k_queue_get_cnt)
;;     23048BE2 (in k_sem_count_get)
;;     2306A54E (in sys_mbox_free)
uxQueueMessagesWaiting proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.beqz	a0,00000000230619C6

l230619B2:
	jal	ra,0000000023063658
	c.lw	s0,56(s0)
	jal	ra,000000002306366C
	c.lwsp	a2,00000020
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230619C6:
	jal	ra,0000000023000C02
	c.j	00000000230619B2

;; vQueueDelete: 230619CC
;;   Called from:
;;     230281DE (in wifi_mgmr_all_ap_scan)
;;     23029206 (in ble_controller_deinit)
;;     23048AAE (in k_queue_free)
;;     23048BD4 (in k_sem_delete)
;;     2306A562 (in sys_mbox_free)
;;     2306A732 (in sys_sem_free)
;;     2307BE3C (in aos_mutex_free)
;;     2307BE96 (in aos_sem_free)
;;     2307CB9E (in at_server_init)
;;     2307CBDC (in at_server_init)
;;     2307D054 (in http_url_req)
;;     2307DA3E (in at_cmd_impl_init)
;;     2307DA4A (in at_cmd_impl_init)
vQueueDelete proc
	c.beqz	a0,0000000023061A06

l230619CE:
	lui	a5,00042026
	addi	a1,a5,+00000674
	c.li	a4,00000000
	addi	a5,a5,+00000674
	c.li	a2,00000008

l230619DE:
	c.lw	a5,4(a3)
	c.addi	a5,00000008
	beq	a0,a3,00000000230619F8

l230619E6:
	c.addi	a4,00000001
	bne	a4,a2,00000000230619DE

l230619EC:
	lbu	a5,a0,+00000046
	c.beqz	a5,00000000230619F4

l230619F2:
	c.jr	ra

l230619F4:
	jal	zero,0000000023064972

l230619F8:
	c.slli	a4,03
	c.add	a4,a1
	sw	zero,a4,+00000000
	sw	zero,a4,+00000004
	c.j	00000000230619EC

l23061A06:
	c.addi	sp,FFFFFFE0
	c.swsp	a0,00000084
	c.swsp	ra,0000008C
	jal	ra,0000000023000C02
	c.lwsp	a2,00000044
	lui	a5,00042026
	addi	a1,a5,+00000674
	c.li	a4,00000000
	addi	a5,a5,+00000674
	c.li	a2,00000008

l23061A22:
	c.lw	a5,4(a3)
	c.addi	a5,00000008
	beq	a0,a3,0000000023061A44

l23061A2A:
	c.addi	a4,00000001
	bne	a4,a2,0000000023061A22

l23061A30:
	lbu	a5,a0,+00000046
	c.beqz	a5,0000000023061A3C

l23061A36:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23061A3C:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,0000000023064972

l23061A44:
	c.slli	a4,03
	c.add	a4,a1
	sw	zero,a4,+00000000
	sw	zero,a4,+00000004
	c.j	0000000023061A30

;; vQueueAddToRegistry: 23061A52
;;   Called from:
;;     23063D26 (in prvCheckForValidListAndQueue)
vQueueAddToRegistry proc
	lui	a5,00042026
	addi	a6,a5,+00000674
	c.li	a4,00000000
	addi	a5,a5,+00000674
	c.li	a2,00000008

l23061A62:
	c.lw	a5,0(a3)
	c.addi	a5,00000008
	c.beqz	a3,0000000023061A70

l23061A68:
	c.addi	a4,00000001
	bne	a4,a2,0000000023061A62

l23061A6E:
	c.jr	ra

l23061A70:
	c.slli	a4,03
	c.add	a4,a6
	c.sw	a4,0(a1)
	c.sw	a4,4(a0)
	c.jr	ra

;; vQueueWaitForMessageRestricted: 23061A7A
;;   Called from:
;;     23064062 (in prvTimerTask)
vQueueWaitForMessageRestricted proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s0,a0
	c.swsp	ra,00000084
	c.mv	s1,a1
	c.mv	s2,a2
	jal	ra,0000000023063658
	lbu	a5,s0,+00000044
	c.li	a4,FFFFFFFF
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,a4,0000000023061AA0

l23061A9C:
	sb	zero,s0,+00000044

l23061AA0:
	lbu	a5,s0,+00000045
	c.li	a4,FFFFFFFF
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,a4,0000000023061AB2

l23061AAE:
	sb	zero,s0,+00000045

l23061AB2:
	jal	ra,000000002306366C
	c.lw	s0,56(a5)
	c.beqz	a5,0000000023061ACA

l23061ABA:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,00000000230610C4

l23061ACA:
	addi	a0,s0,+00000024
	c.mv	a2,s2
	c.mv	a1,s1
	jal	ra,0000000023062E56
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,00000000230610C4

;; prvInitialiseNewStreamBuffer: 23061AE6
;;   Called from:
;;     23061CCE (in xStreamBufferGenericCreate)
;;     23061D58 (in xStreamBufferGenericCreateStatic)
prvInitialiseNewStreamBuffer proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a1
	c.swsp	s0,0000000C
	addi	a1,zero,+00000055
	c.mv	s0,a0
	c.mv	a0,s1
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.mv	s4,a2
	c.mv	s3,a3
	c.mv	s2,a4
	jal	ra,00000000230A3A68
	beq	s1,a0,0000000023061B10

l23061B0C:
	jal	ra,0000000023000C02

l23061B10:
	c.mv	a0,s0
	addi	a2,zero,+00000024
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.sw	s0,24(s1)
	sw	s4,s0,+00000008
	sw	s3,s0,+0000000C
	sb	s2,s0,+0000001C
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; prvWriteBytesToBuffer: 23061B3A
;;   Called from:
;;     23061EDC (in xStreamBufferSend)
;;     23061F42 (in xStreamBufferSend)
;;     23061FC2 (in xStreamBufferSendFromISR)
;;     23062002 (in xStreamBufferSendFromISR)
prvWriteBytesToBuffer proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.mv	s2,a2
	c.mv	s1,a0
	c.mv	s4,a1
	c.beqz	a2,0000000023061BBA

l23061B50:
	c.lw	a0,4(s0)
	c.lw	a0,8(a5)
	sub	s3,a5,s0
	bltu	a2,s3,0000000023061BA6

l23061B5C:
	add	a4,s0,s3
	bltu	a5,a4,0000000023061BB4

l23061B64:
	c.lw	s1,24(a0)
	c.mv	a2,s3
	c.mv	a1,s4
	c.add	a0,s0
	jal	ra,00000000230A382C
	bgeu	s3,s2,0000000023061B88

l23061B74:
	c.lw	s1,8(a5)
	sub	a2,s2,s3
	bltu	a5,a2,0000000023061BDC

l23061B7E:
	c.lw	s1,24(a0)
	add	a1,s4,s3
	jal	ra,00000000230A382C

l23061B88:
	c.lw	s1,8(a5)
	c.add	s0,s2
	bltu	s0,a5,0000000023061B92

l23061B90:
	c.sub	s0,a5

l23061B92:
	c.sw	s1,4(s0)
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s2
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23061BA6:
	c.mv	s3,a2
	add	a4,s0,s3
	bgeu	a5,a4,0000000023061B64

l23061BB0:
	c.j	0000000023061BB4

l23061BB2:
	c.li	s3,00000000

l23061BB4:
	jal	ra,0000000023000C02
	c.j	0000000023061B64

l23061BBA:
	jal	ra,0000000023000C02
	c.lw	s1,8(a5)
	c.lw	s1,4(s0)
	bltu	a5,s0,0000000023061BB2

l23061BC6:
	c.lw	s1,24(a0)
	c.li	a2,00000000
	c.mv	a1,s4
	c.add	a0,s0
	jal	ra,00000000230A382C
	c.lw	s1,8(a5)
	c.add	s0,s2
	bltu	s0,a5,0000000023061B92

l23061BDA:
	c.j	0000000023061B90

l23061BDC:
	c.swsp	a2,00000084
	jal	ra,0000000023000C02
	c.lwsp	a2,00000084
	c.lw	s1,24(a0)
	add	a1,s4,s3
	jal	ra,00000000230A382C
	c.j	0000000023061B88

;; prvReadBytesFromBuffer: 23061BF0
;;   Called from:
;;     23062096 (in xStreamBufferReceive)
;;     230620D4 (in xStreamBufferReceive)
;;     23062178 (in xStreamBufferReceiveFromISR)
;;     230621B0 (in xStreamBufferReceiveFromISR)
prvReadBytesFromBuffer proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.mv	s0,a3
	bltu	a3,a2,0000000023061C08

l23061C06:
	c.mv	s0,a2

l23061C08:
	c.beqz	s0,0000000023061C5C

l23061C0A:
	lw	s3,a0,+00000000
	c.lw	a0,8(a5)
	sub	s4,a5,s3
	bltu	s0,s4,0000000023061C70

l23061C18:
	c.mv	s5,a1
	c.mv	s1,a0
	c.mv	s2,a2
	bltu	a2,s4,0000000023061C7C

l23061C22:
	add	a4,s3,s4
	bltu	a5,a4,0000000023061C8A

l23061C2A:
	c.lw	s1,24(a1)
	c.mv	a2,s4
	c.mv	a0,s5
	c.add	a1,s3
	jal	ra,00000000230A382C
	bgeu	s4,s0,0000000023061C4C

l23061C3A:
	bltu	s2,s0,0000000023061C90

l23061C3E:
	c.lw	s1,24(a1)
	sub	a2,s0,s4
	add	a0,s5,s4
	jal	ra,00000000230A382C

l23061C4C:
	c.lw	s1,8(a5)
	c.add	s3,s0
	bltu	s3,a5,0000000023061C58

l23061C54:
	sub	s3,s3,a5

l23061C58:
	sw	s3,s1,+00000000

l23061C5C:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l23061C70:
	c.mv	s4,s0
	c.mv	s5,a1
	c.mv	s1,a0
	c.mv	s2,a2
	bgeu	a2,s4,0000000023061C22

l23061C7C:
	jal	ra,0000000023000C02
	c.lw	s1,8(a5)
	add	a4,s3,s4
	bgeu	a5,a4,0000000023061C2A

l23061C8A:
	jal	ra,0000000023000C02
	c.j	0000000023061C2A

l23061C90:
	jal	ra,0000000023000C02
	c.j	0000000023061C3E

;; xStreamBufferGenericCreate: 23061C96
;;   Called from:
;;     2307B3F4 (in vfs_uart_open)
;;     2307B400 (in vfs_uart_open)
xStreamBufferGenericCreate proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.li	a5,00000001
	c.mv	s0,a0
	c.mv	s1,a1
	beq	a2,a5,0000000023061CFA

l23061CAC:
	c.li	s3,00000000
	c.beqz	a0,0000000023061CEE

l23061CB0:
	bltu	s0,s1,0000000023061CE6

l23061CB4:
	c.beqz	s1,0000000023061CE2

l23061CB6:
	addi	a0,s0,+00000025
	jal	ra,000000002306488A
	c.mv	s2,a0
	c.beqz	a0,0000000023061CD2

l23061CC2:
	c.mv	a4,s3
	c.mv	a3,s1
	addi	a2,s0,+00000001
	addi	a1,a0,+00000024
	jal	ra,0000000023061AE6

l23061CD2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23061CE2:
	c.li	s1,00000001
	c.j	0000000023061CB6

l23061CE6:
	jal	ra,0000000023000C02
	c.bnez	s1,0000000023061CB6

l23061CEC:
	c.j	0000000023061CE2

l23061CEE:
	jal	ra,0000000023000C02
	c.mv	s3,s0
	bgeu	s0,s1,0000000023061CB4

l23061CF8:
	c.j	0000000023061CE6

l23061CFA:
	c.li	a5,00000004
	c.li	s3,00000001
	bltu	a5,a0,0000000023061CB0

l23061D02:
	jal	ra,0000000023000C02
	bgeu	s0,s1,0000000023061CB4

l23061D0A:
	c.j	0000000023061CE6

;; xStreamBufferGenericCreateStatic: 23061D0C
;;   Called from:
;;     23025A10 (in wifi_mgmr_init)
xStreamBufferGenericCreateStatic proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.mv	s3,a3
	c.mv	s4,a0
	c.mv	s2,a1
	c.mv	s1,a2
	c.mv	s0,a4
	c.beqz	a3,0000000023061DB8

l23061D26:
	c.beqz	s0,0000000023061DAE

l23061D28:
	bltu	s4,s2,0000000023061DA4

l23061D2C:
	beq	s2,zero,0000000023061D7A

l23061D30:
	sltu	s1,zero,s1
	c.li	a5,00000004
	c.addi	s1,00000002
	bgeu	a5,s4,0000000023061D88

l23061D3C:
	addi	a5,zero,+00000024
	c.swsp	a5,00000084
	c.lwsp	a2,000000C4
	bne	a4,a5,0000000023061D98

l23061D48:
	beq	s3,zero,0000000023061DA0

l23061D4C:
	c.beqz	s0,0000000023061D68

l23061D4E:
	c.mv	a4,s1
	c.mv	a3,s2
	c.mv	a2,s4
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,0000000023061AE6
	lbu	a5,s0,+0000001C
	ori	a5,a5,+00000002
	sb	a5,s0,+0000001C

l23061D68:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23061D7A:
	sltu	s1,zero,s1
	c.li	a5,00000004
	c.li	s2,00000001
	c.addi	s1,00000002
	bltu	a5,s4,0000000023061D3C

l23061D88:
	jal	ra,0000000023000C02
	addi	a5,zero,+00000024
	c.swsp	a5,00000084
	c.lwsp	a2,000000C4
	beq	a4,a5,0000000023061D48

l23061D98:
	jal	ra,0000000023000C02
	bne	s3,zero,0000000023061D4C

l23061DA0:
	c.li	s0,00000000
	c.j	0000000023061D68

l23061DA4:
	jal	ra,0000000023000C02
	bne	s2,zero,0000000023061D30

l23061DAC:
	c.j	0000000023061D7A

l23061DAE:
	jal	ra,0000000023000C02
	bgeu	s4,s2,0000000023061D2C

l23061DB6:
	c.j	0000000023061DA4

l23061DB8:
	jal	ra,0000000023000C02
	c.bnez	s0,0000000023061D28

l23061DBE:
	c.j	0000000023061DAE

;; vStreamBufferDelete: 23061DC0
;;   Called from:
;;     2307B4F8 (in vfs_uart_close)
;;     2307B4FE (in vfs_uart_close)
vStreamBufferDelete proc
	c.beqz	a0,0000000023061DD8

l23061DC2:
	lbu	a5,a0,+0000001C
	c.andi	a5,00000002
	c.bnez	a5,0000000023061DCE

l23061DCA:
	jal	zero,0000000023064972

l23061DCE:
	addi	a2,zero,+00000024
	c.li	a1,00000000
	jal	zero,00000000230A3A68

l23061DD8:
	c.addi	sp,FFFFFFE0
	c.swsp	a0,00000084
	c.swsp	ra,0000008C
	jal	ra,0000000023000C02
	c.lwsp	a2,00000044
	lbu	a5,a0,+0000001C
	c.andi	a5,00000002
	c.bnez	a5,0000000023061DF4

l23061DEC:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,0000000023064972

l23061DF4:
	c.lwsp	t3,00000020
	addi	a2,zero,+00000024
	c.li	a1,00000000
	c.addi16sp	00000020
	jal	zero,00000000230A3A68

;; xStreamBufferSpacesAvailable: 23061E02
;;   Called from:
;;     23061EB4 (in xStreamBufferSend)
;;     23061F1A (in xStreamBufferSend)
;;     23061F92 (in xStreamBufferSendFromISR)
xStreamBufferSpacesAvailable proc
	c.beqz	a0,0000000023061E1C

l23061E04:
	c.lw	a0,0(a5)
	c.lw	a0,8(a4)
	c.lw	a0,4(a3)
	add	a0,a4,a5
	c.addi	a0,FFFFFFFF
	c.sub	a0,a3
	bltu	a0,a4,0000000023061E1A

l23061E16:
	c.sub	a0,a4
	c.jr	ra

l23061E1A:
	c.jr	ra

l23061E1C:
	c.addi	sp,FFFFFFE0
	c.swsp	a0,00000084
	c.swsp	ra,0000008C
	jal	ra,0000000023000C02
	c.lwsp	a2,00000044
	c.lw	a0,0(a5)
	c.lw	a0,8(a4)
	c.lw	a0,4(a3)
	add	a0,a4,a5
	c.addi	a0,FFFFFFFF
	c.sub	a0,a3
	bltu	a0,a4,0000000023061E3C

l23061E3A:
	c.sub	a0,a4

l23061E3C:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; xStreamBufferSend: 23061E42
;;   Called from:
;;     23025812 (in wifi_mgmr_event_notify)
;;     2307B5B0 (in vfs_uart_write)
xStreamBufferSend proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	a3,00000084
	c.mv	s4,a1
	c.mv	s0,a0
	c.mv	s3,a2
	beq	a1,zero,0000000023061F4A

l23061E5C:
	beq	s0,zero,0000000023061F52

l23061E60:
	lbu	a5,s0,+0000001C
	c.mv	s2,s3
	c.andi	a5,00000001
	c.beqz	a5,0000000023061E72

l23061E6A:
	addi	s2,s3,+00000004
	bgeu	s3,s2,0000000023061F58

l23061E72:
	c.lwsp	a2,000000E4
	c.beqz	a5,0000000023061F18

l23061E76:
	c.addi4spn	a0,00000018
	jal	ra,0000000023062FCA
	c.j	0000000023061EAE

l23061E7E:
	jal	ra,0000000023063C4A
	c.lw	s0,20(a5)
	c.beqz	a5,0000000023061E8A

l23061E86:
	jal	ra,0000000023000C02

l23061E8A:
	jal	ra,0000000023063372
	c.sw	s0,20(a0)
	jal	ra,000000002306366C
	c.lwsp	a2,000000A4
	c.li	a1,00000000
	c.li	a2,00000000
	c.li	a0,00000000
	jal	ra,0000000023063860
	c.addi4spn	a1,0000000C
	sw	zero,s0,+00000014
	c.addi4spn	a0,00000018
	jal	ra,0000000023063040
	c.bnez	a0,0000000023061EC4

l23061EAE:
	jal	ra,0000000023063658
	c.mv	a0,s0
	jal	ra,0000000023061E02
	c.mv	s1,a0
	c.li	a0,00000000
	bltu	s1,s2,0000000023061E7E

l23061EC0:
	jal	ra,000000002306366C

l23061EC4:
	c.beqz	s1,0000000023061F18

l23061EC6:
	c.swsp	s3,00000088

l23061EC8:
	lbu	a5,s0,+0000001C
	c.andi	a5,00000001
	c.bnez	a5,0000000023061F38

l23061ED0:
	c.mv	a2,s3
	bltu	s1,s3,0000000023061F64

l23061ED6:
	c.swsp	a2,00000088

l23061ED8:
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,0000000023061B3A
	c.mv	s1,a0
	c.beqz	a0,0000000023061F26

l23061EE4:
	c.lw	s0,4(a5)
	c.lw	s0,8(a4)
	c.lw	s0,0(a3)
	c.add	a5,a4
	c.sub	a5,a3
	bltu	a5,a4,0000000023061EF4

l23061EF2:
	c.sub	a5,a4

l23061EF4:
	c.lw	s0,12(a4)
	bltu	a5,a4,0000000023061F26

l23061EFA:
	jal	ra,0000000023062994
	c.lw	s0,16(a5)
	c.beqz	a5,0000000023061F12

l23061F02:
	c.lw	s0,16(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023063940
	sw	zero,s0,+00000010

l23061F12:
	jal	ra,0000000023062B70
	c.j	0000000023061F26

l23061F18:
	c.mv	a0,s0
	jal	ra,0000000023061E02
	c.swsp	s3,00000088
	c.mv	s1,a0
	c.bnez	a0,0000000023061EC8

l23061F24:
	c.li	s1,00000000

l23061F26:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s1
	c.lwsp	a6,00000158
	c.lwsp	s4,00000134
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

l23061F38:
	bltu	s1,s2,0000000023061F24

l23061F3C:
	c.li	a2,00000004
	c.addi4spn	a1,00000014
	c.mv	a0,s0
	jal	ra,0000000023061B3A
	c.lwsp	s4,00000084
	c.j	0000000023061ED8

l23061F4A:
	jal	ra,0000000023000C02
	bne	s0,zero,0000000023061E60

l23061F52:
	jal	ra,0000000023000C02
	c.j	0000000023061E60

l23061F58:
	jal	ra,0000000023000C02
	c.lwsp	a2,000000E4
	bne	a5,zero,0000000023061E76

l23061F62:
	c.j	0000000023061F18

l23061F64:
	c.mv	a2,s1
	c.j	0000000023061ED6

;; xStreamBufferSendFromISR: 23061F68
;;   Called from:
;;     2307B45C (in __uart_rx_irq)
xStreamBufferSendFromISR proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s4,0000000C
	c.mv	s2,a1
	c.mv	s0,a0
	c.mv	s1,a2
	c.mv	s3,a3
	c.beqz	a1,000000002306200A

l23061F80:
	c.beqz	s0,0000000023062010

l23061F82:
	lbu	a5,s0,+0000001C
	c.mv	s4,s1
	c.andi	a5,00000001
	c.beqz	a5,0000000023061F90

l23061F8C:
	addi	s4,s1,+00000004

l23061F90:
	c.mv	a0,s0
	jal	ra,0000000023061E02
	c.swsp	s1,00000084
	c.bnez	a0,0000000023061FAE

l23061F9A:
	c.li	s1,00000000

l23061F9C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23061FAE:
	lbu	a5,s0,+0000001C
	c.andi	a5,00000001
	c.bnez	a5,0000000023061FF8

l23061FB6:
	c.mv	a2,s1
	bltu	a0,s1,0000000023062016

l23061FBC:
	c.swsp	a2,00000084

l23061FBE:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,0000000023061B3A
	c.mv	s1,a0
	c.beqz	a0,0000000023061F9C

l23061FCA:
	c.lw	s0,4(a5)
	c.lw	s0,8(a4)
	c.lw	s0,0(a3)
	c.add	a5,a4
	c.sub	a5,a3
	bltu	a5,a4,0000000023061FDA

l23061FD8:
	c.sub	a5,a4

l23061FDA:
	c.lw	s0,12(a4)
	bltu	a5,a4,0000000023061F9C

l23061FE0:
	c.lw	s0,16(a5)
	c.beqz	a5,0000000023061F9C

l23061FE4:
	c.lw	s0,16(a0)
	c.mv	a4,s3
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023063A6E
	sw	zero,s0,+00000010
	c.j	0000000023061F9C

l23061FF8:
	bltu	a0,s4,0000000023061F9A

l23061FFC:
	c.li	a2,00000004
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,0000000023061B3A
	c.lwsp	a2,00000084
	c.j	0000000023061FBE

l2306200A:
	jal	ra,0000000023000C02
	c.bnez	s0,0000000023061F82

l23062010:
	jal	ra,0000000023000C02
	c.j	0000000023061F82

l23062016:
	c.mv	a2,a0
	c.j	0000000023061FBC

;; xStreamBufferReceive: 2306201A
;;   Called from:
;;     23025946 (in wifi_mgmr_start)
;;     2307B570 (in vfs_uart_read)
;;     2307B6E2 (in uart_ioctl_cmd_waimode)
xStreamBufferReceive proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.mv	s3,a1
	c.mv	s1,a0
	c.mv	s4,a2
	c.mv	s5,a3
	c.beqz	a1,00000000230620BC

l23062034:
	c.beqz	s1,00000000230620C2

l23062036:
	lbu	s2,s1,+0000001C
	andi	s2,s2,+00000001
	c.slli	s2,02
	bne	s5,zero,000000002306206E

l23062044:
	c.lw	s1,4(s0)
	c.lw	s1,8(a5)
	c.lw	s1,0(a4)
	c.add	s0,a5
	c.sub	s0,a4
	bltu	s0,a5,0000000023062054

l23062052:
	c.sub	s0,a5

l23062054:
	bltu	s2,s0,000000002306208A

l23062058:
	c.li	s0,00000000

l2306205A:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l2306206E:
	jal	ra,0000000023063658
	c.lw	s1,8(a5)
	c.lw	s1,4(s0)
	c.lw	s1,0(a4)
	c.add	s0,a5
	c.sub	s0,a4
	bltu	s0,a5,0000000023062082

l23062080:
	c.sub	s0,a5

l23062082:
	bgeu	s2,s0,00000000230620EA

l23062086:
	jal	ra,000000002306366C

l2306208A:
	bne	s2,zero,00000000230620C8

l2306208E:
	c.mv	a3,s0
	c.mv	a2,s4
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,0000000023061BF0
	c.mv	s0,a0
	c.beqz	a0,0000000023062058

l2306209E:
	jal	ra,0000000023062994
	c.lw	s1,20(a5)
	c.beqz	a5,00000000230620B6

l230620A6:
	c.lw	s1,20(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023063940
	sw	zero,s1,+00000014

l230620B6:
	jal	ra,0000000023062B70
	c.j	000000002306205A

l230620BC:
	jal	ra,0000000023000C02
	c.bnez	s1,0000000023062036

l230620C2:
	jal	ra,0000000023000C02
	c.j	0000000023062036

l230620C8:
	c.mv	a3,s0
	c.mv	a2,s2
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	lw	s5,s1,+00000000
	jal	ra,0000000023061BF0
	c.lwsp	a2,000000E4
	sub	s0,s0,s2
	bgeu	s4,a5,0000000023062114

l230620E2:
	sw	s5,s1,+00000000
	c.li	s4,00000000
	c.j	000000002306208E

l230620EA:
	c.li	a0,00000000
	jal	ra,0000000023063C4A
	c.lw	s1,16(a5)
	c.beqz	a5,00000000230620F8

l230620F4:
	jal	ra,0000000023000C02

l230620F8:
	jal	ra,0000000023063372
	c.sw	s1,16(a0)
	jal	ra,000000002306366C
	c.mv	a3,s5
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,0000000023063860
	sw	zero,s1,+00000010
	c.j	0000000023062044

l23062114:
	c.mv	s4,a5
	c.j	000000002306208E

;; xStreamBufferReceiveFromISR: 23062118
;;   Called from:
;;     2307B49E (in __uart_tx_irq)
xStreamBufferReceiveFromISR proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s6,00000008
	c.mv	s3,a1
	c.mv	s1,a0
	c.mv	s4,a2
	c.mv	s5,a3
	c.beqz	a1,0000000023062198

l23062134:
	c.beqz	s1,000000002306219E

l23062136:
	c.lw	s1,4(s0)
	c.lw	s1,8(a5)
	lbu	s2,s1,+0000001C
	c.lw	s1,0(a4)
	c.add	s0,a5
	andi	s2,s2,+00000001
	c.sub	s0,a4
	c.slli	s2,02
	bltu	s0,a5,0000000023062150

l2306214E:
	c.sub	s0,a5

l23062150:
	bltu	s2,s0,000000002306216C

l23062154:
	c.li	s0,00000000

l23062156:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.addi16sp	00000030
	c.jr	ra

l2306216C:
	bne	s2,zero,00000000230621A4

l23062170:
	c.mv	a3,s0
	c.mv	a2,s4
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,0000000023061BF0
	c.mv	s0,a0
	c.beqz	a0,0000000023062154

l23062180:
	c.lw	s1,20(a5)
	c.beqz	a5,0000000023062156

l23062184:
	c.lw	s1,20(a0)
	c.mv	a4,s5
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023063A6E
	sw	zero,s1,+00000014
	c.j	0000000023062156

l23062198:
	jal	ra,0000000023000C02
	c.bnez	s1,0000000023062136

l2306219E:
	jal	ra,0000000023000C02
	c.j	0000000023062136

l230621A4:
	c.mv	a3,s0
	c.mv	a2,s2
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	lw	s6,s1,+00000000
	jal	ra,0000000023061BF0
	c.lwsp	a2,000000E4
	sub	s0,s0,s2
	bgeu	s4,a5,00000000230621C6

l230621BE:
	sw	s6,s1,+00000000
	c.li	s4,00000000
	c.j	0000000023062170

l230621C6:
	c.mv	s4,a5
	c.j	0000000023062170

;; xStreamBufferIsEmpty: 230621CA
;;   Called from:
;;     2307B638 (in vfs_uart_poll)
xStreamBufferIsEmpty proc
	c.beqz	a0,00000000230621D8

l230621CC:
	c.lw	a0,0(a5)
	c.lw	a0,4(a0)
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

l230621D8:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,0000000023000C02
	c.lwsp	a2,00000044
	c.lwsp	t3,00000020
	c.lw	a0,0(a5)
	c.lw	a0,4(a0)
	c.addi16sp	00000020
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; prvResetNextTaskUnblockTime.part.0: 230621F4
;;   Called from:
;;     230627B4 (in vTaskDelete)
;;     23062A96 (in xTaskIncrementTick)
;;     23062CBE (in xTaskResumeAll)
prvResetNextTaskUnblockTime.part.0 proc
	lui	a5,0004200F
	lw	a4,a5,+00000518
	lui	a5,0004200F
	c.lw	a4,12(a4)
	c.lw	a4,12(a4)
	c.lw	a4,4(a4)
	sw	a4,a5,+00000538
	c.jr	ra

;; prvInitialiseNewTask.isra.2: 2306220C
;;   Called from:
;;     23062632 (in xTaskCreateStatic)
;;     230626F0 (in xTaskCreate)
prvInitialiseNewTask.isra.2 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s5,00000088
	c.mv	s5,a0
	lw	a0,a6,+00000030
	c.swsp	s7,00000084
	slli	s7,a2,00000002
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	a2,s7
	c.mv	s1,a6
	c.mv	s0,a1
	addi	a1,zero,+000000A5
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.mv	s6,a3
	c.mv	s2,a4
	c.mv	s4,a5
	jal	ra,00000000230A3A68
	lw	s3,s1,+00000030
	c.addi	s7,FFFFFFFC
	c.add	s3,s7
	andi	s3,s3,-00000008
	c.beqz	s0,00000000230622D4

l2306224C:
	c.mv	a1,s0
	addi	a5,s1,+00000034
	addi	a4,s0,+00000010

l23062256:
	lbu	a3,a1,+00000000
	c.addi	a5,00000001
	c.addi	a1,00000001
	sb	a3,a5,+00000FFF
	c.beqz	a3,0000000023062268

l23062264:
	bne	a1,a4,0000000023062256

l23062268:
	sb	zero,s1,+00000043

l2306226C:
	c.li	a5,0000001F
	bgeu	a5,s2,0000000023062274

l23062272:
	c.li	s2,0000001F

l23062274:
	addi	a0,s1,+00000004
	sw	s2,s1,+0000002C
	sw	s2,s1,+00000050
	sw	zero,s1,+00000054
	jal	ra,0000000023060F84
	addi	a0,s1,+00000018
	jal	ra,0000000023060F84
	addi	a4,zero,+00000020
	sub	s0,a4,s2
	sw	zero,s1,+00000058
	c.sw	s1,16(s1)
	c.sw	s1,24(s0)
	c.sw	s1,36(s1)
	sw	zero,s1,+00000044
	sb	zero,s1,+0000005C
	c.mv	a2,s6
	c.mv	a1,s5
	c.mv	a0,s3
	jal	ra,0000000023064700
	c.sw	s1,0(a0)
	beq	s4,zero,00000000230622BE

l230622BA:
	sw	s1,s4,+00000000

l230622BE:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.addi16sp	00000030
	c.jr	ra

l230622D4:
	sb	zero,s1,+00000034
	c.j	000000002306226C

;; prvDeleteTCB: 230622DA
;;   Called from:
;;     230625EA (in prvIdleTask)
;;     230627A4 (in vTaskDelete)
prvDeleteTCB proc
	lbu	a4,a0,+0000005D
	c.beqz	a4,00000000230622F2

l230622E0:
	c.li	a5,00000001
	beq	a4,a5,000000002306230C

l230622E6:
	c.li	a5,00000002
	bne	a4,a5,00000000230622EE

l230622EC:
	c.jr	ra

l230622EE:
	jal	zero,0000000023000C02

l230622F2:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,48(a0)
	jal	ra,0000000023064972
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023064972

l2306230C:
	jal	zero,0000000023064972

;; prvAddCurrentTaskToDelayedList: 23062310
;;   Called from:
;;     23062CE6 (in vTaskDelay)
;;     23062DF2 (in vTaskPlaceOnEventList)
;;     23062E3E (in vTaskPlaceOnUnorderedEventList)
;;     23062E82 (in vTaskPlaceOnEventListRestricted)
;;     23063856 (in ulTaskNotifyTake)
;;     23063936 (in xTaskNotifyWait)
prvAddCurrentTaskToDelayedList proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200F
	lui	a5,0004200F
	addi	s0,s0,+00000514
	c.swsp	s2,00000008
	lw	s2,a5,+00000544
	c.lw	s0,0(a5)
	c.swsp	s1,00000088
	c.mv	s1,a0
	addi	a0,a5,+00000004
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s3,a1
	jal	ra,0000000023060FD0
	c.bnez	a0,0000000023062358

l2306233C:
	c.lw	s0,0(a5)
	lui	a4,0004200F
	addi	a4,a4,+00000534
	c.lw	a5,44(a2)
	c.lw	a4,0(a3)
	c.li	a5,00000001
	sll	a5,a5,a2
	xori	a5,a5,-00000001
	c.and	a5,a3
	c.sw	a4,0(a5)

l23062358:
	c.li	a5,FFFFFFFF
	beq	s1,a5,00000000230623B2

l2306235E:
	c.lw	s0,0(a5)
	c.add	s1,s2
	c.sw	a5,4(s1)
	bltu	s1,s2,0000000023062396

l23062368:
	lui	a5,0004200F
	lw	a0,a5,+00000518
	c.lw	s0,0(a1)
	c.addi	a1,00000004
	jal	ra,0000000023060FA0
	lui	a5,0004200F
	addi	a5,a5,+00000538
	c.lw	a5,0(a4)
	bgeu	s1,a4,0000000023062388

l23062386:
	c.sw	a5,0(s1)

l23062388:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23062396:
	lui	a5,0004200F
	lw	a0,a5,+0000051C
	c.lw	s0,0(a1)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi	a1,00000004
	c.addi16sp	00000020
	jal	zero,0000000023060FA0

l230623B2:
	beq	s3,zero,000000002306235E

l230623B6:
	c.lw	s0,0(a1)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,00042018
	addi	a0,a0,+000007F4
	c.addi	a1,00000004
	c.addi16sp	00000020
	jal	zero,0000000023060F8A

;; vTaskEnterCritical.part.7: 230623D2
;;   Called from:
;;     23062424 (in prvAddNewTaskToReadyList)
;;     230625B4 (in prvIdleTask)
;;     2306273E (in vTaskDelete)
;;     23062884 (in eTaskGetState)
;;     23062BA4 (in xTaskResumeAll)
;;     23062FE6 (in vTaskSetTimeOutState)
;;     230630D2 (in xTaskCheckForTimeOut)
;;     23063666 (in vTaskEnterCritical)
;;     230637DA (in ulTaskNotifyTake)
;;     2306380A (in ulTaskNotifyTake)
;;     2306388A (in xTaskNotifyWait)
;;     230638D0 (in xTaskNotifyWait)
;;     230639D8 (in xTaskGenericNotify)
;;     23063C66 (in xTaskNotifyStateClear)
vTaskEnterCritical.part.7 proc
	lui	a5,0004200F
	addi	a5,a5,+00000514
	c.lw	a5,0(a4)
	c.lw	a5,0(a5)
	c.lw	a4,68(a5)
	c.addi	a5,00000001
	c.sw	a4,68(a5)
	c.jr	ra

;; vTaskExitCritical.part.8: 230623E6
;;   Called from:
;;     230624CC (in prvAddNewTaskToReadyList)
;;     230625E4 (in prvIdleTask)
;;     230627C4 (in vTaskDelete)
;;     230628E4 (in eTaskGetState)
;;     23062C92 (in xTaskResumeAll)
;;     23063016 (in vTaskSetTimeOutState)
;;     230630C0 (in xTaskCheckForTimeOut)
;;     23063682 (in vTaskExitCritical)
;;     23063830 (in ulTaskNotifyTake)
;;     2306384C (in ulTaskNotifyTake)
;;     23063914 (in xTaskNotifyWait)
;;     2306392C (in xTaskNotifyWait)
;;     230639C2 (in xTaskGenericNotify)
;;     23063C8E (in xTaskNotifyStateClear)
vTaskExitCritical.part.8 proc
	lui	a5,0004200F
	addi	a5,a5,+00000514
	c.lw	a5,0(a4)
	c.lw	a5,0(a3)
	c.lw	a4,68(a5)
	c.addi	a5,FFFFFFFF
	c.sw	a4,68(a5)
	c.lw	a3,68(a5)
	c.bnez	a5,0000000023062400

l230623FC:
	csrrsi	zero,mstatus,00000008

l23062400:
	c.jr	ra

;; prvAddNewTaskToReadyList: 23062402
;;   Called from:
;;     23062638 (in xTaskCreateStatic)
;;     230626F6 (in xTaskCreate)
prvAddNewTaskToReadyList proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.mv	s2,a0
	csrrci	zero,mstatus,00000008
	lui	s0,0004200F
	addi	s0,s0,+00000540
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023062428

l23062424:
	jal	ra,00000000230623D2

l23062428:
	lui	a5,0004200F
	addi	a5,a5,+00000520
	c.lw	a5,0(a4)
	lui	s1,0004200F
	addi	s1,s1,+00000514
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	c.lw	s1,0(a4)
	c.beqz	a4,00000000230624D2

l23062442:
	c.lw	s0,0(a5)
	lw	a1,s2,+0000002C
	c.beqz	a5,00000000230624BE

l2306244A:
	lui	s3,00042018
	addi	s3,s3,+00000538

l23062452:
	lui	a3,0004200F
	addi	a3,a3,+00000530
	lui	a4,0004200F
	c.lw	a3,0(a2)
	addi	a4,a4,+00000534
	lw	a6,a4,+00000000
	slli	a0,a1,00000002
	c.add	a0,a1
	c.li	a5,00000001
	c.addi	a2,00000001
	sll	a5,a5,a1
	c.slli	a0,02
	or	a5,a5,a6
	sw	a2,s2,+00000048
	addi	a1,s2,+00000004
	c.add	a0,s3
	c.sw	a4,0(a5)
	c.sw	a3,0(a2)
	jal	ra,0000000023060F8A
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023062498

l23062492:
	c.lw	s1,0(a5)
	c.lw	a5,68(a5)
	c.bnez	a5,00000000230624CC

l23062498:
	c.lw	s0,0(a5)
	c.beqz	a5,00000000230624AC

l2306249C:
	c.lw	s1,0(a4)
	lw	a5,s2,+0000002C
	c.lw	a4,44(a4)
	bgeu	a4,a5,00000000230624AC

l230624A8:
	ecall

l230624AC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l230624BE:
	c.lw	s1,0(a5)
	c.lw	a5,44(a5)
	bltu	a1,a5,000000002306244A

l230624C6:
	sw	s2,s1,+00000000
	c.j	000000002306244A

l230624CC:
	jal	ra,00000000230623E6
	c.j	0000000023062498

l230624D2:
	sw	s2,s1,+00000000
	c.lw	a5,0(a4)
	c.li	a5,00000001
	beq	a4,a5,00000000230624EC

l230624DE:
	lui	s3,00042018
	lw	a1,s2,+0000002C
	addi	s3,s3,+00000538
	c.j	0000000023062452

l230624EC:
	lui	s4,00042018
	addi	s3,s4,+00000538
	addi	s5,s3,+00000280
	addi	s4,s4,+00000538

l230624FC:
	c.mv	a0,s4
	c.addi	s4,00000014
	jal	ra,0000000023060F70
	bne	s5,s4,00000000230624FC

l23062508:
	lui	a5,00042018
	addi	a0,a5,+000007B8
	addi	s5,a5,+000007B8
	jal	ra,0000000023060F70
	lui	a5,00042018
	addi	a0,a5,+000007CC
	addi	s4,a5,+000007CC
	jal	ra,0000000023060F70
	lui	a0,00042018
	addi	a0,a0,+000007E0
	jal	ra,0000000023060F70
	lui	a0,00042019
	addi	a0,a0,-000007F8
	jal	ra,0000000023060F70
	lui	a0,00042018
	addi	a0,a0,+000007F4
	jal	ra,0000000023060F70
	lui	a4,0004200F
	lui	a5,0004200F
	sw	s5,a4,+00000518
	sw	s4,a5,+0000051C
	lw	a1,s2,+0000002C
	c.j	0000000023062452

;; prvIdleTask: 23062562
prvIdleTask proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	lui	s0,0004200F
	lui	s3,0004200F
	lui	s6,00042019
	lui	s2,0004200F
	lui	s5,0004200F
	lui	s4,00042018
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	addi	s0,s0,+00000524
	addi	s3,s3,+00000540
	addi	s6,s6,-000007F8
	addi	s2,s2,+00000520
	addi	s5,s5,+00000514
	addi	s4,s4,+00000538
	c.li	s7,00000001
	c.j	00000000230625EE

l230625AA:
	csrrci	zero,mstatus,00000008
	lw	a5,s3,+00000000
	c.beqz	a5,00000000230625B8

l230625B4:
	jal	ra,00000000230623D2

l230625B8:
	lw	a5,s6,+0000000C
	c.lw	a5,12(s1)
	addi	a0,s1,+00000004
	jal	ra,0000000023060FD0
	lw	a5,s2,+00000000
	c.addi	a5,FFFFFFFF
	sw	a5,s2,+00000000
	c.lw	s0,0(a5)
	c.addi	a5,FFFFFFFF
	c.sw	s0,0(a5)
	lw	a5,s3,+00000000
	c.beqz	a5,00000000230625E8

l230625DC:
	lw	a5,s5,+00000000
	c.lw	a5,68(a5)
	c.beqz	a5,00000000230625E8

l230625E4:
	jal	ra,00000000230623E6

l230625E8:
	c.mv	a0,s1
	jal	ra,00000000230622DA

l230625EE:
	c.lw	s0,0(a5)
	c.bnez	a5,00000000230625AA

l230625F2:
	lw	a5,s4,+00000000
	bgeu	s7,a5,00000000230625FE

l230625FA:
	ecall

l230625FE:
	jal	ra,0000000023000BC4
	c.j	00000000230625EE

;; xTaskCreateStatic: 23062604
;;   Called from:
;;     23000E00 (in bfl_main)
;;     2305BB00 (in bl_ble_sync_start)
;;     2306294C (in vTaskStartScheduler)
;;     23063DBE (in xTimerCreateTimerTask)
;;     2306998E (in hal_wifi_start_firmware_task)
;;     2306A048 (in looprt_start)
;;     2307BD04 (in aos_task_new)
xTaskCreateStatic proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	ra,0000009C
	c.mv	s1,a5
	c.mv	s0,a6
	c.beqz	a5,0000000023062666

l23062612:
	c.beqz	s0,0000000023062680

l23062614:
	addi	a5,zero,+00000060
	c.swsp	a5,00000014
	c.lwsp	s0,00000118
	bne	a6,a5,000000002306264A

l23062620:
	c.lwsp	s0,000001F4

l23062622:
	c.li	a5,00000000
	c.beqz	s1,000000002306263E

l23062626:
	c.li	a7,00000002
	c.addi4spn	a5,0000002C
	c.mv	a6,s0
	sb	a7,s0,+0000005D
	c.sw	s0,48(s1)
	jal	ra,000000002306220C
	c.mv	a0,s0
	jal	ra,0000000023062402
	c.lwsp	a2,000001F4

l2306263E:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.mv	a0,a5
	c.addi16sp	00000040
	c.jr	ra

l2306264A:
	c.swsp	a4,0000008C
	c.swsp	a3,0000000C
	c.swsp	a2,00000088
	c.swsp	a1,00000008
	c.swsp	a0,00000084
	jal	ra,0000000023000C02
	c.lwsp	s0,000001F4
	c.lwsp	a2,00000044
	c.lwsp	a6,00000064
	c.lwsp	s4,00000084
	c.lwsp	s8,000000A4
	c.lwsp	t3,000000C4
	c.j	0000000023062622

l23062666:
	c.swsp	a4,0000008C
	c.swsp	a3,0000000C
	c.swsp	a2,00000088
	c.swsp	a1,00000008
	c.swsp	a0,00000084
	jal	ra,0000000023000C02
	c.lwsp	t3,000000C4
	c.lwsp	s8,000000A4
	c.lwsp	s4,00000084
	c.lwsp	a6,00000064
	c.lwsp	a2,00000044
	c.bnez	s0,0000000023062614

l23062680:
	jal	ra,0000000023000C02
	addi	a5,zero,+00000060
	c.swsp	a5,00000014
	c.lwsp	s0,000001D4
	beq	a4,a5,0000000023062694

l23062690:
	jal	ra,0000000023000C02

l23062694:
	c.lwsp	s0,000001F4
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.li	a5,00000000
	c.lwsp	s4,00000134
	c.mv	a0,a5
	c.addi16sp	00000040
	c.jr	ra

;; xTaskCreate: 230626A4
;;   Called from:
;;     230259E6 (in wifi_mgmr_start_background)
;;     230291B8 (in ble_controller_init)
;;     23048BFA (in k_thread_create)
;;     23056E34 (in ble_tp_ccc_cfg_changed)
;;     2306A0A0 (in looprt_start_auto)
;;     2306A7E0 (in sys_thread_new)
;;     2307CBC2 (in at_server_init)
;;     2307CBFC (in at_server_init)
xTaskCreate proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.mv	s3,a0
	slli	a0,a2,00000002
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s2,a2
	c.mv	s4,a1
	c.mv	s5,a3
	c.mv	s6,a4
	c.mv	s7,a5
	jal	ra,000000002306488A
	c.beqz	a0,0000000023062712

l230626CE:
	c.mv	s1,a0
	addi	a0,zero,+00000060
	jal	ra,000000002306488A
	c.mv	s0,a0
	c.beqz	a0,0000000023062716

l230626DC:
	c.mv	a6,a0
	c.mv	a5,s7
	c.mv	a4,s6
	c.mv	a3,s5
	c.mv	a2,s2
	c.mv	a1,s4
	c.sw	a0,48(s1)
	sb	zero,a0,+0000005D
	c.mv	a0,s3
	jal	ra,000000002306220C
	c.mv	a0,s0
	jal	ra,0000000023062402
	c.li	a0,00000001

l230626FC:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.addi16sp	00000030
	c.jr	ra

l23062712:
	c.li	a0,FFFFFFFF
	c.j	00000000230626FC

l23062716:
	c.mv	a0,s1
	jal	ra,0000000023064972
	c.li	a0,FFFFFFFF
	c.j	00000000230626FC

;; vTaskDelete: 23062720
;;   Called from:
;;     23000B96 (in aos_loop_proc)
;;     230291E6 (in ble_controller_deinit)
;;     23048C2C (in k_thread_delete)
;;     23056E72 (in ble_tp_ccc_cfg_changed)
;;     2305B09C (in __bl_ble_sync_task)
;;     2305BB5E (in bl_ble_sync_stop)
;;     23077C8A (in iperf_client_udp)
;;     2307BC78 (in dfl_entry)
;;     2307BD38 (in aos_task_exit)
;;     2307CC12 (in at_server_init)
vTaskDelete proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s0,a0
	csrrci	zero,mstatus,00000008
	lui	s1,0004200F
	addi	s1,s1,+00000540
	c.lw	s1,0(a5)
	c.beqz	a5,0000000023062742

l2306273E:
	jal	ra,00000000230623D2

l23062742:
	lui	s2,0004200F
	addi	s2,s2,+00000514
	c.beqz	s0,0000000023062826

l2306274C:
	addi	s3,s0,+00000004
	c.mv	a0,s3
	jal	ra,0000000023060FD0
	c.bnez	a0,0000000023062772

l23062758:
	c.lw	s0,44(a3)
	slli	a5,a3,00000002
	c.add	a5,a3
	slli	a4,a5,00000002
	lui	a5,00042018
	addi	a5,a5,+00000538
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.beqz	a5,00000000230627EE

l23062772:
	c.lw	s0,40(a5)
	c.beqz	a5,000000002306277E

l23062776:
	addi	a0,s0,+00000018
	jal	ra,0000000023060FD0

l2306277E:
	lui	a5,0004200F
	addi	a5,a5,+00000530
	c.lw	a5,0(a4)
	lw	a3,s2,+00000000
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	beq	a3,s0,0000000023062808

l23062794:
	lui	a5,0004200F
	addi	a5,a5,+00000520
	c.lw	a5,0(a4)
	c.mv	a0,s0
	c.addi	a4,FFFFFFFF
	c.sw	a5,0(a4)
	jal	ra,00000000230622DA
	lui	a5,0004200F
	lw	a5,a5,+00000518
	c.lw	a5,0(a5)
	c.beqz	a5,00000000230627E2

l230627B4:
	jal	ra,00000000230621F4

l230627B8:
	c.lw	s1,0(a5)
	c.beqz	a5,00000000230627C8

l230627BC:
	lw	a5,s2,+00000000
	c.lw	a5,68(a5)
	c.beqz	a5,00000000230627C8

l230627C4:
	jal	ra,00000000230623E6

l230627C8:
	c.lw	s1,0(a5)
	c.beqz	a5,00000000230627D4

l230627CC:
	lw	a5,s2,+00000000
	beq	a5,s0,000000002306282C

l230627D4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230627E2:
	lui	a5,0004200F
	c.li	a4,FFFFFFFF
	sw	a4,a5,+00000538
	c.j	00000000230627B8

l230627EE:
	lui	a4,0004200F
	addi	a4,a4,+00000534
	c.lw	a4,0(a2)
	c.li	a5,00000001
	sll	a5,a5,a3
	xori	a5,a5,-00000001
	c.and	a5,a2
	c.sw	a4,0(a5)
	c.j	0000000023062772

l23062808:
	lui	a0,00042019
	c.mv	a1,s3
	addi	a0,a0,-000007F8
	jal	ra,0000000023060F8A
	lui	a5,0004200F
	addi	a5,a5,+00000524
	c.lw	a5,0(a4)
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	c.j	00000000230627B8

l23062826:
	lw	s0,s2,+00000000
	c.j	000000002306274C

l2306282C:
	lui	a5,0004200F
	lw	a5,a5,+0000052C
	c.bnez	a5,0000000023062848

l23062836:
	ecall

l2306283A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23062848:
	jal	ra,0000000023000C02
	ecall
	c.j	000000002306283A

;; eTaskGetState: 23062852
;;   Called from:
;;     23063198 (in vTaskGetInfo)
eTaskGetState proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s2,a0
	c.beqz	a0,00000000230628FE

l23062864:
	lui	s1,0004200F
	addi	s1,s1,+00000514
	c.lw	s1,0(a4)
	c.li	a0,00000000
	beq	a4,s2,00000000230628CE

l23062874:
	csrrci	zero,mstatus,00000008
	lui	s0,0004200F
	addi	s0,s0,+00000540
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023062888

l23062884:
	jal	ra,00000000230623D2

l23062888:
	lui	a5,0004200F
	lui	a4,0004200F
	lw	s3,a4,+00000518
	lw	s4,a5,+0000051C
	c.lw	s0,0(a5)
	lw	s0,s2,+00000014
	c.bnez	a5,00000000230628DE

l230628A0:
	beq	s0,s3,00000000230628EC

l230628A4:
	beq	s0,s4,00000000230628EC

l230628A8:
	lui	a5,00042018
	addi	a5,a5,+000007F4
	beq	s0,a5,0000000023062904

l230628B4:
	lui	a5,00042019
	addi	a5,a5,-000007F8
	beq	s0,a5,000000002306291C

l230628C0:
	sltiu	a5,s0,+00000001
	sub	a5,zero,a5
	andi	a0,a5,+00000003
	c.addi	a0,00000001

l230628CE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l230628DE:
	c.lw	s1,0(a5)
	c.lw	a5,68(a5)
	c.beqz	a5,00000000230628A0

l230628E4:
	jal	ra,00000000230623E6
	bne	s0,s3,00000000230628A4

l230628EC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000002
	c.addi16sp	00000020
	c.jr	ra

l230628FE:
	jal	ra,0000000023000C02
	c.j	0000000023062864

l23062904:
	lw	a4,s2,+00000028
	c.li	a0,00000002
	c.bnez	a4,00000000230628CE

l2306290C:
	lbu	a5,s2,+0000005C
	c.addi	a5,FFFFFFFF
	sltu	a5,zero,a5
	addi	a0,a5,+00000002
	c.j	00000000230628CE

l2306291C:
	c.li	a0,00000004
	c.j	00000000230628CE

;; vTaskStartScheduler: 23062920
;;   Called from:
;;     23000E24 (in bfl_main)
vTaskStartScheduler proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	c.swsp	ra,0000008C
	c.swsp	zero,00000080
	c.swsp	zero,00000004
	jal	ra,0000000023000BCA
	c.lwsp	tp,00000008
	c.lwsp	s0,000000E4
	c.lwsp	a2,00000084
	lui	a1,000230AE
	lui	a0,00023062
	c.li	a4,00000000
	c.li	a3,00000000
	addi	a1,a1,+00000134
	addi	a0,a0,+00000562
	jal	ra,0000000023062604
	c.beqz	a0,000000002306297E

l23062952:
	jal	ra,0000000023063D84
	c.li	a5,00000001
	bne	a0,a5,0000000023062984

l2306295C:
	csrrci	zero,mstatus,00000008
	lui	a5,0004200F
	c.li	a3,FFFFFFFF
	sw	a3,a5,+00000538
	lui	a4,0004200F
	lui	a5,0004200F
	sw	a0,a4,+00000540
	sw	zero,a5,+00000544
	jal	ra,0000000023064250

l2306297E:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23062984:
	c.li	a5,FFFFFFFF
	bne	a0,a5,000000002306297E

l2306298A:
	jal	ra,0000000023000C02
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; vTaskSuspendAll: 23062994
;;   Called from:
;;     23060D84 (in xEventGroupWaitBits)
;;     23060E0C (in xEventGroupWaitBits)
;;     23060E82 (in xEventGroupSetBits)
;;     23060F1A (in vEventGroupDelete)
;;     230613A0 (in xQueueGenericSend)
;;     230616C8 (in xQueueReceive)
;;     23061814 (in xQueueSemaphoreTake)
;;     23061EFA (in xStreamBufferSend)
;;     2306209E (in xStreamBufferReceive)
;;     23064042 (in prvTimerTask)
;;     23064142 (in prvTimerTask)
;;     230648A6 (in pvPortMalloc)
;;     230649D8 (in vPortFree)
vTaskSuspendAll proc
	lui	a5,0004200F
	addi	a5,a5,+0000052C
	c.lw	a5,0(a4)
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	c.jr	ra

;; xTaskGetTickCount: 230629A4
;;   Called from:
;;     23000A2A (in get_dts_addr.part.2)
;;     230012D8 (in coex_wifi_pta_forece_enable)
;;     230012F2 (in coex_wifi_pta_forece_enable)
;;     2300130E (in coex_wifi_pta_forece_enable)
;;     230087AC (in mm_cfg_element_keepalive_timestamp_update)
;;     2300A4BA (in rxl_cntrl_evt)
;;     2301EA6C (in apm_sta_connect_timeout_ind_handler)
;;     23023142 (in bl_send_cfg_task_req)
;;     23023FB0 (in tcpip_stack_input)
;;     23023FF6 (in tcpip_stack_input)
;;     23024870 (in stateConnectedIPNoEnter)
;;     23024E54 (in stateGlobalGuard_scan_beacon)
;;     23024FC8 (in stateGlobalGuard_scan_beacon)
;;     23025498 (in stateDisconnect_enter)
;;     2302590C (in wifi_mgmr_start)
;;     2302746C (in sniffer_cb)
;;     2302747E (in sniffer_cb)
;;     23027820 (in wifi_mgmr_cli_scanlist)
;;     230280B8 (in wifi_mgmr_scan_ap_all)
;;     23028B1A (in bl_irq_bottomhalf)
;;     23028B28 (in bl_irq_bottomhalf)
;;     23028D26 (in wifi_tx)
;;     23028D52 (in wifi_tx)
;;     23048D12 (in k_now_ms)
;;     23048D92 (in k_timer_start)
;;     23059A4A (in tc_blfdtdump)
;;     23059B0A (in tc_blfdtdump)
;;     23059C0C (in tc_blfdtdump)
;;     23059D3A (in tc_fdt_wifi_module)
;;     2305A142 (in tc_fdt_wifi_module)
;;     2305A16A (in tc_fdt_wifi_module)
;;     2305A170 (in tc_fdt_wifi_module)
;;     2305A19C (in tc_fdt_wifi_module)
;;     2305A1A2 (in tc_fdt_wifi_module)
;;     2305A1A8 (in tc_fdt_wifi_module)
;;     2305A1DC (in tc_fdt_wifi_module)
;;     2305A1E2 (in tc_fdt_wifi_module)
;;     2305A216 (in tc_fdt_wifi_module)
;;     2305A21C (in tc_fdt_wifi_module)
;;     2305A244 (in tc_fdt_wifi_module)
;;     2305A24A (in tc_fdt_wifi_module)
;;     2305A276 (in tc_fdt_wifi_module)
;;     2305A290 (in tc_fdt_wifi_module)
;;     2305A296 (in tc_fdt_wifi_module)
;;     2305A2C2 (in tc_fdt_wifi_module)
;;     2305A350 (in tc_fdt_wifi_module)
;;     2305A356 (in tc_fdt_wifi_module)
;;     2305A3E4 (in tc_fdt_wifi_module)
;;     2305A3EA (in tc_fdt_wifi_module)
;;     2305A478 (in tc_fdt_wifi_module)
;;     2305A47E (in tc_fdt_wifi_module)
;;     2305A4F8 (in tc_fdt_wifi_module)
;;     2305A4FE (in tc_fdt_wifi_module)
;;     2305A52C (in tc_fdt_wifi_module)
;;     2305B138 (in __bl_ble_sync_task)
;;     2305B234 (in __recv_event)
;;     2305B758 (in write_data)
;;     2305B75E (in write_data)
;;     2305B86C (in __ble_bytes_send)
;;     2305B872 (in __ble_bytes_send)
;;     2305B96A (in read_data)
;;     2305BA7E (in bl_ble_sync_start)
;;     2305BBF8 (in __malloc)
;;     2305BC5E (in __free)
;;     2305BE76 (in pro_trans_read)
;;     2305BE8C (in pro_trans_read)
;;     2305BF18 (in pro_trans_read)
;;     2305C322 (in bl_sys_time_update)
;;     2305C364 (in bl_sys_time_get)
;;     2305C3B4 (in bl_sys_time_sync_state)
;;     2306036E (in ef_get_env_blob)
;;     230603C0 (in ef_get_env_blob)
;;     23060480 (in ef_del_env)
;;     23060550 (in ef_set_env_blob)
;;     230605A0 (in ef_set_env_blob)
;;     230605E6 (in ef_set_env_blob)
;;     23060BC4 (in psm_test_cmd)
;;     23060C4A (in psm_test_cmd)
;;     23060C88 (in psm_test_cmd)
;;     23060CB0 (in psm_test_cmd)
;;     23064046 (in prvTimerTask)
;;     23064092 (in prvTimerTask)
;;     23064146 (in prvTimerTask)
;;     2306528C (in bl_dma_IRQHandler)
;;     23065330 (in bl_dma_irq_register)
;;     23065412 (in bl_dma_irq_register)
;;     2306541C (in bl_dma_irq_register)
;;     23065496 (in bl_dma_init)
;;     230654F0 (in bl_dma_init)
;;     230655A0 (in _irq_num_check.part.0)
;;     230656C2 (in bl_irq_register_with_ctx)
;;     230656C8 (in bl_irq_register_with_ctx)
;;     230657C6 (in bl_irq_unregister)
;;     23065A80 (in wait_trng4feed)
;;     23065B4C (in sec_trng_IRQHandler)
;;     23065D50 (in cmd_gpio_get)
;;     23065DDE (in cmd_gpio_get)
;;     23065E60 (in cmd_gpio_set)
;;     23065ECE (in cmd_gpio_set)
;;     23065F38 (in cmd_gpio_set)
;;     23065FC6 (in cmd_gpio_func)
;;     23066056 (in cmd_gpio_func)
;;     230660EA (in cmd_gpio_func)
;;     2306636E (in cmd_wdt_init)
;;     230663B8 (in cmd_wdt_init)
;;     23066456 (in dev_uart_init)
;;     23066506 (in dev_uart_init)
;;     2306651A (in dev_uart_init)
;;     23066574 (in dev_uart_init)
;;     230665D4 (in dev_uart_init)
;;     2306665E (in dev_uart_init)
;;     230668A2 (in vfs_uart_init)
;;     23066904 (in vfs_uart_init)
;;     230669FC (in vfs_uart_init)
;;     23066A02 (in vfs_uart_init)
;;     23066ABC (in vfs_uart_init)
;;     23066AC2 (in vfs_uart_init)
;;     23066B1E (in vfs_uart_init)
;;     23066B88 (in vfs_uart_init)
;;     23066BD2 (in vfs_uart_init)
;;     23066C22 (in vfs_uart_init)
;;     23066CF0 (in vfs_uart_init)
;;     23066CF6 (in vfs_uart_init)
;;     23066D54 (in vfs_uart_init)
;;     23066E82 (in vfs_uart_init)
;;     23066F1E (in vfs_uart_init)
;;     23066F72 (in vfs_uart_init)
;;     23066F84 (in vfs_uart_init)
;;     23066FF6 (in vfs_uart_init)
;;     23066FFC (in vfs_uart_init)
;;     23067002 (in vfs_uart_init)
;;     23067178 (in hal_gpio_init_from_dts)
;;     2306717E (in hal_gpio_init_from_dts)
;;     230672B4 (in hal_gpio_init_from_dts)
;;     230672BA (in hal_gpio_init_from_dts)
;;     23067412 (in hal_gpio_init_from_dts)
;;     2306745C (in hal_gpio_init_from_dts)
;;     230674AA (in hal_gpio_init_from_dts)
;;     230674B0 (in hal_gpio_init_from_dts)
;;     230674E2 (in hal_gpio_init_from_dts)
;;     2306752A (in hal_gpio_init_from_dts)
;;     23067AAA (in hal_boot2_init)
;;     23067C26 (in hal_board_cfg)
;;     23067C2C (in hal_board_cfg)
;;     23067CDC (in hal_board_cfg)
;;     23067CE2 (in hal_board_cfg)
;;     23067EA4 (in hal_board_cfg)
;;     23067EAA (in hal_board_cfg)
;;     23067EB0 (in hal_board_cfg)
;;     230682C2 (in hal_board_cfg)
;;     23068350 (in hal_board_cfg)
;;     23068356 (in hal_board_cfg)
;;     2306835C (in hal_board_cfg)
;;     230683F4 (in hal_board_cfg)
;;     230683FA (in hal_board_cfg)
;;     23068400 (in hal_board_cfg)
;;     23068444 (in hal_board_cfg)
;;     2306844A (in hal_board_cfg)
;;     23068498 (in hal_board_cfg)
;;     2306849E (in hal_board_cfg)
;;     230684EC (in hal_board_cfg)
;;     230684F2 (in hal_board_cfg)
;;     2306853E (in hal_board_cfg)
;;     23068A0A (in hal_board_cfg)
;;     23068A10 (in hal_board_cfg)
;;     23068AFE (in hal_board_cfg)
;;     23068B56 (in hal_board_cfg)
;;     23068B5C (in hal_board_cfg)
;;     23068B62 (in hal_board_cfg)
;;     23068BEA (in hal_board_cfg)
;;     23068C26 (in hal_board_cfg)
;;     23068C66 (in hal_board_cfg)
;;     23068CAC (in hal_board_cfg)
;;     23068CB2 (in hal_board_cfg)
;;     23068CBA (in hal_board_cfg)
;;     23068D06 (in hal_board_cfg)
;;     23068D0C (in hal_board_cfg)
;;     23068D5C (in hal_board_cfg)
;;     23068D62 (in hal_board_cfg)
;;     23068DB2 (in hal_board_cfg)
;;     23068DB8 (in hal_board_cfg)
;;     23068E08 (in hal_board_cfg)
;;     23068E0E (in hal_board_cfg)
;;     23068E14 (in hal_board_cfg)
;;     2306908C (in hal_board_cfg)
;;     23069092 (in hal_board_cfg)
;;     23069144 (in hal_board_cfg)
;;     2306917E (in hal_board_cfg)
;;     23069184 (in hal_board_cfg)
;;     2306918A (in hal_board_cfg)
;;     23069202 (in hal_board_cfg)
;;     23069208 (in hal_board_cfg)
;;     2306920E (in hal_board_cfg)
;;     2306952C (in hal_board_cfg)
;;     23069532 (in hal_board_cfg)
;;     23069538 (in hal_board_cfg)
;;     23069540 (in hal_board_cfg)
;;     230695C8 (in hal_board_cfg)
;;     23069650 (in hal_board_cfg)
;;     23069656 (in hal_board_cfg)
;;     230696AA (in hal_board_cfg)
;;     23069732 (in hal_board_cfg)
;;     230697BA (in hal_board_cfg)
;;     230697C0 (in hal_board_cfg)
;;     230697C6 (in hal_board_cfg)
;;     230697CC (in hal_board_cfg)
;;     230698C6 (in bl_tsen_adc_get)
;;     230698F6 (in bl_tsen_adc_get)
;;     23069EDC (in bl_flash_config_update)
;;     23069EE2 (in bl_flash_config_update)
;;     23069EE8 (in bl_flash_config_update)
;;     23069EEE (in bl_flash_config_update)
;;     23069EF4 (in bl_flash_config_update)
;;     23069EFA (in bl_flash_config_update)
;;     23069F00 (in bl_flash_config_update)
;;     2306A236 (in _cb_led_trigger)
;;     2306A2BC (in _led_bloop_msg)
;;     2306A3DC (in _led_bloop_evt)
;;     2306A474 (in loopset_led_trigger)
;;     2306A5EA (in sys_arch_mbox_fetch)
;;     2306A60A (in sys_arch_mbox_fetch)
;;     2306A6E0 (in sys_arch_sem_wait)
;;     2306A6FA (in sys_arch_sem_wait)
;;     2306A802 (in sys_now)
;;     23077B40 (in iperf_client_udp)
;;     23077B78 (in iperf_client_udp)
;;     23077DF6 (in iperf_server)
;;     23077E16 (in iperf_server)
;;     23078014 (in iperf_client_tcp)
;;     2307802A (in iperf_client_tcp)
;;     230784E6 (in file_info)
;;     230784EC (in file_info)
;;     2307853C (in file_info)
;;     2307873E (in dirent_file)
;;     23078770 (in dirent_file)
;;     2307881E (in dirent_file)
;;     23078868 (in dirent_file)
;;     230788C0 (in dirent_file)
;;     2307894A (in romfs_opendir)
;;     23078A18 (in romfs_stat)
;;     23078A8E (in romfs_stat)
;;     23078AF4 (in romfs_open)
;;     23078B7A (in romfs_open)
;;     23078BCA (in romfs_open)
;;     23078C62 (in romfs_open)
;;     23078C70 (in romfs_open)
;;     23078CEA (in romfs_register)
;;     23078D36 (in romfs_register)
;;     23078D80 (in romfs_register)
;;     23078FC8 (in sntp_recv)
;;     23079292 (in sntp_get_time)
;;     2307A3A2 (in log_buf_out)
;;     2307A3F4 (in log_buf_out)
;;     2307E534 (in at_parse)
;;     2307E616 (in at_parse)
;;     23084C2A (in bl_mtd_write)
;;     23084D38 (in bloop_timer_configure)
;;     23084D7A (in bloop_timer_repeat_reconfigure)
;;     23084F2A (in bloop_run)
;;     23085032 (in bloop_run)
;;     2308510A (in bloop_run)
;;     23085154 (in bloop_run)
;;     230851A0 (in bloop_status_dump)
;;     23085852 (in bl_sha_mutex_take)
;;     230858CC (in bl_sha_mutex_give)
;;     23085966 (in hal_hbn_init)
;;     230859AC (in hal_hbn_init)
;;     23085A44 (in hal_hbn_init)
;;     23085A50 (in hal_hbn_init)
;;     23085A8E (in hal_hbn_init)
xTaskGetTickCount proc
	lui	a5,0004200F
	lw	a0,a5,+00000544
	c.jr	ra

;; xTaskGetTickCount2: 230629AE
;;   Called from:
;;     2307BF0C (in aos_now_ms)
xTaskGetTickCount2 proc
	lui	a4,0004200F
	lw	a4,a4,+00000544
	lui	a5,0004200F
	lw	a5,a5,+0000053C
	c.sw	a0,0(a4)
	c.li	a0,00000001
	c.sw	a1,0(a5)
	c.jr	ra

;; xTaskGetTickCountFromISR: 230629C6
;;   Called from:
;;     230009F8 (in get_dts_addr.part.2)
;;     230230E6 (in bl_send_cfg_task_req)
;;     230598C8 (in tc_blfdtdump)
;;     23059AB0 (in tc_blfdtdump)
;;     23059BD2 (in tc_blfdtdump)
;;     23059D12 (in tc_fdt_wifi_module)
;;     23059D82 (in tc_fdt_wifi_module)
;;     23059E18 (in tc_fdt_wifi_module)
;;     23059E7A (in tc_fdt_wifi_module)
;;     23059F0E (in tc_fdt_wifi_module)
;;     23059F80 (in tc_fdt_wifi_module)
;;     23059FD0 (in tc_fdt_wifi_module)
;;     2305A056 (in tc_fdt_wifi_module)
;;     2305A0C2 (in tc_fdt_wifi_module)
;;     2305A11A (in tc_fdt_wifi_module)
;;     2305A14A (in tc_fdt_wifi_module)
;;     2305A17C (in tc_fdt_wifi_module)
;;     2305A1B8 (in tc_fdt_wifi_module)
;;     2305A1F2 (in tc_fdt_wifi_module)
;;     2305A224 (in tc_fdt_wifi_module)
;;     2305A256 (in tc_fdt_wifi_module)
;;     2305A286 (in tc_fdt_wifi_module)
;;     2305A2A2 (in tc_fdt_wifi_module)
;;     2305A2D8 (in tc_fdt_wifi_module)
;;     2305A330 (in tc_fdt_wifi_module)
;;     2305A36C (in tc_fdt_wifi_module)
;;     2305A3C4 (in tc_fdt_wifi_module)
;;     2305A400 (in tc_fdt_wifi_module)
;;     2305A456 (in tc_fdt_wifi_module)
;;     2305A492 (in tc_fdt_wifi_module)
;;     2305A50A (in tc_fdt_wifi_module)
;;     2305B11C (in __bl_ble_sync_task)
;;     2305B1E4 (in __recv_event)
;;     2305B6DE (in write_data)
;;     2305B722 (in write_data)
;;     2305B7F4 (in __ble_bytes_send)
;;     2305B836 (in __ble_bytes_send)
;;     2305B906 (in read_data)
;;     2305BA4A (in bl_ble_sync_start)
;;     2305BBC8 (in __malloc)
;;     2305BC2C (in __free)
;;     2305BEE0 (in pro_trans_read)
;;     23060340 (in ef_get_env_blob)
;;     2306038E (in ef_get_env_blob)
;;     230604A6 (in ef_del_env)
;;     23060522 (in ef_set_env_blob)
;;     2306056E (in ef_set_env_blob)
;;     230605BA (in ef_set_env_blob)
;;     23060B62 (in psm_test_cmd)
;;     23060C14 (in psm_test_cmd)
;;     23060C62 (in psm_test_cmd)
;;     23060C90 (in psm_test_cmd)
;;     23065264 (in bl_dma_IRQHandler)
;;     230652F8 (in bl_dma_irq_register)
;;     2306537A (in bl_dma_irq_register)
;;     230653E8 (in bl_dma_irq_register)
;;     23065468 (in bl_dma_init)
;;     230654CC (in bl_dma_init)
;;     23065576 (in _irq_num_check.part.0)
;;     23065634 (in bl_irq_register_with_ctx)
;;     2306568E (in bl_irq_register_with_ctx)
;;     23065780 (in bl_irq_unregister)
;;     23065A16 (in wait_trng4feed)
;;     23065AE8 (in sec_trng_IRQHandler)
;;     23065D1C (in cmd_gpio_get)
;;     23065DA2 (in cmd_gpio_get)
;;     23065E2E (in cmd_gpio_set)
;;     23065E9E (in cmd_gpio_set)
;;     23065EF0 (in cmd_gpio_set)
;;     23065F8E (in cmd_gpio_func)
;;     23066022 (in cmd_gpio_func)
;;     2306607C (in cmd_gpio_func)
;;     23066342 (in cmd_wdt_init)
;;     23066382 (in cmd_wdt_init)
;;     23066432 (in dev_uart_init)
;;     2306649C (in dev_uart_init)
;;     230664CA (in dev_uart_init)
;;     23066550 (in dev_uart_init)
;;     230665CA (in dev_uart_init)
;;     23066616 (in dev_uart_init)
;;     2306687E (in vfs_uart_init)
;;     230668E0 (in vfs_uart_init)
;;     230669A6 (in vfs_uart_init)
;;     230669DC (in vfs_uart_init)
;;     23066A44 (in vfs_uart_init)
;;     23066A9A (in vfs_uart_init)
;;     23066B00 (in vfs_uart_init)
;;     23066B5E (in vfs_uart_init)
;;     23066BC2 (in vfs_uart_init)
;;     23066C12 (in vfs_uart_init)
;;     23066C5A (in vfs_uart_init)
;;     23066CC6 (in vfs_uart_init)
;;     23066D2E (in vfs_uart_init)
;;     23066D8C (in vfs_uart_init)
;;     23066E5E (in vfs_uart_init)
;;     23066E92 (in vfs_uart_init)
;;     23066ED2 (in vfs_uart_init)
;;     23066F4E (in vfs_uart_init)
;;     23066F94 (in vfs_uart_init)
;;     23066FD2 (in vfs_uart_init)
;;     230670A6 (in hal_gpio_init_from_dts)
;;     23067130 (in hal_gpio_init_from_dts)
;;     230671DE (in hal_gpio_init_from_dts)
;;     23067258 (in hal_gpio_init_from_dts)
;;     2306728C (in hal_gpio_init_from_dts)
;;     230673B4 (in hal_gpio_init_from_dts)
;;     230673EE (in hal_gpio_init_from_dts)
;;     2306744E (in hal_gpio_init_from_dts)
;;     2306749C (in hal_gpio_init_from_dts)
;;     23067504 (in hal_gpio_init_from_dts)
;;     23067A6A (in hal_boot2_init)
;;     23067BAC (in hal_board_cfg)
;;     23067BFE (in hal_board_cfg)
;;     23067C62 (in hal_board_cfg)
;;     23067CB4 (in hal_board_cfg)
;;     23067D22 (in hal_board_cfg)
;;     23067DAC (in hal_board_cfg)
;;     23067E06 (in hal_board_cfg)
;;     23067E74 (in hal_board_cfg)
;;     23067EF6 (in hal_board_cfg)
;;     23067FA0 (in hal_board_cfg)
;;     23068030 (in hal_board_cfg)
;;     230680C8 (in hal_board_cfg)
;;     2306813E (in hal_board_cfg)
;;     23068280 (in hal_board_cfg)
;;     230682E0 (in hal_board_cfg)
;;     23068316 (in hal_board_cfg)
;;     23068398 (in hal_board_cfg)
;;     230683CC (in hal_board_cfg)
;;     2306841C (in hal_board_cfg)
;;     23068470 (in hal_board_cfg)
;;     230684C4 (in hal_board_cfg)
;;     23068516 (in hal_board_cfg)
;;     23068564 (in hal_board_cfg)
;;     230685AE (in hal_board_cfg)
;;     23068650 (in hal_board_cfg)
;;     23068704 (in hal_board_cfg)
;;     230687A0 (in hal_board_cfg)
;;     23068854 (in hal_board_cfg)
;;     230688F8 (in hal_board_cfg)
;;     23068954 (in hal_board_cfg)
;;     230689DA (in hal_board_cfg)
;;     23068A7A (in hal_board_cfg)
;;     23068AAE (in hal_board_cfg)
;;     23068AE0 (in hal_board_cfg)
;;     23068B32 (in hal_board_cfg)
;;     23068BC6 (in hal_board_cfg)
;;     23068C08 (in hal_board_cfg)
;;     23068C36 (in hal_board_cfg)
;;     23068C82 (in hal_board_cfg)
;;     23068CDE (in hal_board_cfg)
;;     23068D32 (in hal_board_cfg)
;;     23068D88 (in hal_board_cfg)
;;     23068DDE (in hal_board_cfg)
;;     23068E92 (in hal_board_cfg)
;;     23068F00 (in hal_board_cfg)
;;     23068F42 (in hal_board_cfg)
;;     23068FAC (in hal_board_cfg)
;;     23068FF0 (in hal_board_cfg)
;;     23069068 (in hal_board_cfg)
;;     230690B0 (in hal_board_cfg)
;;     23069120 (in hal_board_cfg)
;;     2306915E (in hal_board_cfg)
;;     230691A8 (in hal_board_cfg)
;;     230691E6 (in hal_board_cfg)
;;     23069232 (in hal_board_cfg)
;;     2306931A (in hal_board_cfg)
;;     230693E6 (in hal_board_cfg)
;;     23069466 (in hal_board_cfg)
;;     230694DE (in hal_board_cfg)
;;     23069582 (in hal_board_cfg)
;;     2306960A (in hal_board_cfg)
;;     23069680 (in hal_board_cfg)
;;     230696EC (in hal_board_cfg)
;;     23069774 (in hal_board_cfg)
;;     23069862 (in bl_tsen_adc_get)
;;     230698CE (in bl_tsen_adc_get)
;;     23069D42 (in bl_flash_config_update)
;;     23069D96 (in bl_flash_config_update)
;;     23069DD2 (in bl_flash_config_update)
;;     23069E0E (in bl_flash_config_update)
;;     23069E48 (in bl_flash_config_update)
;;     23069E82 (in bl_flash_config_update)
;;     23069EBC (in bl_flash_config_update)
;;     2306A1F2 (in _cb_led_trigger)
;;     2306A272 (in _led_bloop_msg)
;;     2306A374 (in _led_bloop_evt)
;;     2306A444 (in loopset_led_trigger)
;;     2307847A (in file_info)
;;     230784C4 (in file_info)
;;     2307850E (in file_info)
;;     23078714 (in dirent_file)
;;     23078766 (in dirent_file)
;;     230787FA (in dirent_file)
;;     2307883A (in dirent_file)
;;     2307889C (in dirent_file)
;;     23078916 (in romfs_opendir)
;;     230789E0 (in romfs_stat)
;;     23078A64 (in romfs_stat)
;;     23078AB8 (in romfs_open)
;;     23078B52 (in romfs_open)
;;     23078BD8 (in romfs_open)
;;     23078C0A (in romfs_open)
;;     23078C3E (in romfs_open)
;;     23078CB8 (in romfs_register)
;;     23078D12 (in romfs_register)
;;     23078D60 (in romfs_register)
;;     2307A31A (in log_buf_out)
;;     2307A3CA (in log_buf_out)
;;     23084BE8 (in bl_mtd_write)
;;     23085092 (in bloop_run)
;;     2308512A (in bloop_run)
;;     23085822 (in bl_sha_mutex_take)
;;     2308589C (in bl_sha_mutex_give)
;;     23085934 (in hal_hbn_init)
;;     23085988 (in hal_hbn_init)
;;     230859E6 (in hal_hbn_init)
;;     23085A1A (in hal_hbn_init)
;;     23085A6A (in hal_hbn_init)
xTaskGetTickCountFromISR proc
	lui	a5,0004200F
	lw	a0,a5,+00000544
	c.jr	ra

;; xTaskIncrementTick: 230629D0
;;   Called from:
;;     23062C66 (in xTaskResumeAll)
;;     23069AE2 (in int_timer_cb)
xTaskIncrementTick proc
	c.addi16sp	FFFFFFC0
	c.addi4spn	a0,0000000C
	c.swsp	s1,00000098
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	jal	ra,000000002305C39A
	c.mv	s1,a0
	c.beqz	a0,0000000023062A18

l230629F2:
	lui	a5,0004200F
	lw	a5,a5,+0000052C
	c.beqz	a5,0000000023062A34

l230629FC:
	lui	a5,0004200F
	addi	a5,a5,+00000528
	c.lw	a5,0(a4)
	c.li	s1,00000000
	c.addi	a4,00000001
	c.sw	a5,0(a4)

l23062A0C:
	lui	a5,0004200F
	lw	a5,a5,+00000548
	c.beqz	a5,0000000023062A18

l23062A16:
	c.li	s1,00000001

l23062A18:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s1
	c.lwsp	a6,00000158
	c.lwsp	s4,00000134
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.lwsp	s8,0000000C
	c.lwsp	s4,0000002C
	c.addi16sp	00000040
	c.jr	ra

l23062A34:
	lui	a5,0004200F
	addi	a5,a5,+00000544
	lw	s3,a5,+00000000
	c.addi	s3,00000001
	sw	s3,a5,+00000000
	bne	s3,zero,0000000023062A9A

l23062A4A:
	lui	s2,0004200F
	addi	s2,s2,+00000518
	lw	a5,s2,+00000000
	c.lw	a5,0(a5)
	bne	a5,zero,0000000023062B6A

l23062A5C:
	lui	a4,0004200F
	addi	a4,a4,+0000051C
	lw	a3,s2,+00000000
	c.lw	a4,0(a2)
	lui	a5,0004200F
	addi	a5,a5,+0000053C
	sw	a2,s2,+00000000
	c.sw	a4,0(a3)
	c.lw	a5,0(a4)
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	lw	a5,s2,+00000000
	c.lw	a5,0(a5)
	c.bnez	a5,0000000023062A96

l23062A86:
	lui	s6,0004200F
	addi	s6,s6,+00000538
	c.li	a5,FFFFFFFF
	sw	a5,s6,+00000000
	c.j	0000000023062AA2

l23062A96:
	jal	ra,00000000230621F4

l23062A9A:
	lui	s6,0004200F
	addi	s6,s6,+00000538

l23062AA2:
	lw	a5,s6,+00000000
	bltu	s3,a5,0000000023062B34

l23062AAA:
	lui	s2,0004200F
	lui	s4,00042018
	lui	s5,0004200F
	c.li	s1,00000000
	addi	s2,s2,+00000518
	addi	s4,s4,+00000538
	addi	s5,s5,+00000514
	lui	s8,0004200F
	c.li	s7,00000001

l23062ACA:
	lw	a5,s2,+00000000
	c.lw	a5,0(a5)
	c.beqz	a5,0000000023062B2C

l23062AD2:
	lw	a5,s2,+00000000
	c.lw	a5,12(a5)
	c.lw	a5,12(s0)
	c.lw	s0,4(a5)
	addi	s9,s0,+00000004
	c.mv	a0,s9
	bltu	s3,a5,0000000023062B64

l23062AE6:
	jal	ra,0000000023060FD0
	c.lw	s0,40(a5)
	addi	a0,s0,+00000018
	c.beqz	a5,0000000023062AF6

l23062AF2:
	jal	ra,0000000023060FD0

l23062AF6:
	c.lw	s0,44(a5)
	addi	a4,s8,+00000534
	c.lw	a4,0(a3)
	slli	a0,a5,00000002
	c.add	a0,a5
	c.slli	a0,02
	sll	a5,s7,a5
	c.or	a5,a3
	c.mv	a1,s9
	c.add	a0,s4
	c.sw	a4,0(a5)
	jal	ra,0000000023060F8A
	lw	a5,s5,+00000000
	c.lw	s0,44(a4)
	c.lw	a5,44(a5)
	bltu	a4,a5,0000000023062ACA

l23062B22:
	lw	a5,s2,+00000000
	c.li	s1,00000001
	c.lw	a5,0(a5)
	c.bnez	a5,0000000023062AD2

l23062B2C:
	c.li	a5,FFFFFFFF
	sw	a5,s6,+00000000
	c.j	0000000023062B46

l23062B34:
	lui	s4,00042018
	lui	s5,0004200F
	c.li	s1,00000000
	addi	s4,s4,+00000538
	addi	s5,s5,+00000514

l23062B46:
	lw	a5,s5,+00000000
	c.li	a3,00000001
	c.lw	a5,44(a4)
	slli	a5,a4,00000002
	c.add	a5,a4
	c.slli	a5,02
	c.add	s4,a5
	lw	a5,s4,+00000000
	bgeu	a3,a5,0000000023062A0C

l23062B60:
	c.li	s1,00000001
	c.j	0000000023062A0C

l23062B64:
	sw	a5,s6,+00000000
	c.j	0000000023062B46

l23062B6A:
	jal	ra,0000000023000C02
	c.j	0000000023062A5C

;; xTaskResumeAll: 23062B70
;;   Called from:
;;     23060DA4 (in xEventGroupWaitBits)
;;     23060DE6 (in xEventGroupWaitBits)
;;     23060E1E (in xEventGroupWaitBits)
;;     23060EE2 (in xEventGroupSetBits)
;;     23060F5A (in vEventGroupDelete)
;;     23060F6C (in vEventGroupDelete)
;;     230613EC (in xQueueGenericSend)
;;     2306143A (in xQueueGenericSend)
;;     23061488 (in xQueueGenericSend)
;;     23061710 (in xQueueReceive)
;;     23061740 (in xQueueReceive)
;;     23061796 (in xQueueReceive)
;;     2306185C (in xQueueSemaphoreTake)
;;     23061888 (in xQueueSemaphoreTake)
;;     230618BA (in xQueueSemaphoreTake)
;;     23061F12 (in xStreamBufferSend)
;;     230620B6 (in xStreamBufferReceive)
;;     23062CEA (in vTaskDelay)
;;     230631C2 (in vTaskGetInfo)
;;     2306335A (in uxTaskGetSystemState)
;;     23064066 (in prvTimerTask)
;;     23064166 (in prvTimerTask)
;;     23064176 (in prvTimerTask)
;;     230648BA (in pvPortMalloc)
;;     2306494E (in pvPortMalloc)
;;     230649FE (in vPortFree)
xTaskResumeAll proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	lui	s1,0004200F
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	addi	s1,s1,+0000052C
	c.lw	s1,0(a5)
	beq	a5,zero,0000000023062CB0

l23062B94:
	csrrci	zero,mstatus,00000008
	lui	s0,0004200F
	addi	s0,s0,+00000540
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023062BA8

l23062BA4:
	jal	ra,00000000230623D2

l23062BA8:
	c.lw	s1,0(a5)
	c.addi	a5,FFFFFFFF
	c.sw	s1,0(a5)
	c.lw	s1,0(a5)
	c.bnez	a5,0000000023062C7E

l23062BB2:
	lui	a5,0004200F
	lw	a5,a5,+00000520
	c.beqz	a5,0000000023062C7E

l23062BBC:
	lui	s3,0004200F
	lui	s8,00042018
	lui	s2,00042018
	c.li	s6,00000000
	addi	s3,s3,+00000548
	addi	s8,s8,+000007E0
	lui	s5,0004200F
	c.li	s1,00000001
	addi	s2,s2,+00000538
	lui	s4,0004200F

l23062BE0:
	lw	a5,s8,+00000000
	c.beqz	a5,0000000023062C3C

l23062BE6:
	lw	a5,s8,+0000000C
	lw	s6,a5,+0000000C
	addi	a0,s6,+00000018
	jal	ra,0000000023060FD0
	addi	s7,s6,+00000004
	c.mv	a0,s7
	jal	ra,0000000023060FD0
	lw	a5,s6,+0000002C
	addi	a4,s5,+00000534
	c.lw	a4,0(a3)
	slli	a0,a5,00000002
	c.add	a0,a5
	c.slli	a0,02
	sll	a5,s1,a5
	c.or	a5,a3
	c.mv	a1,s7
	c.add	a0,s2
	c.sw	a4,0(a5)
	jal	ra,0000000023060F8A
	addi	a5,s4,+00000514
	c.lw	a5,0(a5)
	lw	a4,s6,+0000002C
	c.lw	a5,44(a5)
	bltu	a4,a5,0000000023062BE0

l23062C32:
	sw	s1,s3,+00000000
	lw	a5,s8,+00000000
	c.bnez	a5,0000000023062BE6

l23062C3C:
	beq	s6,zero,0000000023062C56

l23062C40:
	lui	a5,0004200F
	lw	a5,a5,+00000518
	c.lw	a5,0(a5)
	c.bnez	a5,0000000023062CBE

l23062C4C:
	lui	a5,0004200F
	c.li	a4,FFFFFFFF
	sw	a4,a5,+00000538

l23062C56:
	lui	s2,0004200F
	addi	s2,s2,+00000528
	lw	s1,s2,+00000000
	c.beqz	s1,0000000023062C78

l23062C64:
	c.li	s4,00000001

l23062C66:
	jal	ra,00000000230629D0
	c.addi	s1,FFFFFFFF
	c.beqz	a0,0000000023062C72

l23062C6E:
	sw	s4,s3,+00000000

l23062C72:
	c.bnez	s1,0000000023062C66

l23062C74:
	sw	zero,s2,+00000000

l23062C78:
	lw	a5,s3,+00000000
	c.bnez	a5,0000000023062CB6

l23062C7E:
	c.li	a0,00000000

l23062C80:
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023062C98

l23062C84:
	lui	a5,0004200F
	lw	a5,a5,+00000514
	c.lw	a5,68(a5)
	c.beqz	a5,0000000023062C98

l23062C90:
	c.swsp	a0,00000084
	jal	ra,00000000230623E6
	c.lwsp	a2,00000044

l23062C98:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.lwsp	s8,0000000C
	c.addi16sp	00000040
	c.jr	ra

l23062CB0:
	jal	ra,0000000023000C02
	c.j	0000000023062B94

l23062CB6:
	ecall
	c.li	a0,00000001
	c.j	0000000023062C80

l23062CBE:
	jal	ra,00000000230621F4
	c.j	0000000023062C56

;; vTaskDelay: 23062CC4
;;   Called from:
;;     23001346 (in coex_wifi_pta_forece_enable)
;;     2300C5E2 (in txl_frame_get)
;;     2301AFB8 (in hal_dma_push)
;;     2302216E (in bl_main_rtthread_start)
;;     2302585E (in wifi_mgmr_event_notify)
;;     230272B2 (in wifi_disconnect_cmd)
;;     2303E244 (in node_reset)
;;     23048C50 (in k_sleep)
;;     2305BB72 (in bl_ble_sync_stop)
;;     2305BB7A (in bl_ble_sync_stop)
;;     23069F80 (in proc_entry_looprt)
;;     23077758 (in iperf_server_udp)
;;     23077ABC (in iperf_client_udp)
;;     23077C76 (in iperf_client_udp)
;;     23077FB0 (in iperf_client_tcp)
;;     2307810C (in iperf_client_tcp)
;;     2307D2B6 (in cwqap)
;;     2307D3C2 (in deep_sleep)
;;     2307D654 (in scan)
;;     2307D686 (in reset)
;;     2307D740 (in __wifimode_set)
;;     2307D788 (in __wifimode_set)
;;     2307E2F2 (in disconnect_handler)
;;     2307E388 (in at_help)
;;     2307E3E2 (in at_help)
;;     23084DF6 (in bloop_wait_startup)
vTaskDelay proc
	c.bnez	a0,0000000023062CCC

l23062CC6:
	ecall
	c.jr	ra

l23062CCC:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200F
	addi	s0,s0,+0000052C
	c.lw	s0,0(a5)
	c.swsp	ra,0000008C
	c.bnez	a5,0000000023062CFC

l23062CDE:
	c.lw	s0,0(a5)
	c.addi	a5,00000001
	c.sw	s0,0(a5)
	c.li	a1,00000000
	jal	ra,0000000023062310
	jal	ra,0000000023062B70
	c.bnez	a0,0000000023062CF4

l23062CF0:
	ecall

l23062CF4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23062CFC:
	c.swsp	a0,00000084
	jal	ra,0000000023000C02
	c.lwsp	a2,00000044
	c.j	0000000023062CDE

;; vTaskSwitchContext: 23062D06
;;   Called from:
;;     230014C2 (in ipc_emb_notify)
;;     23029096 (in rw_main_task_post_from_fw)
;;     23069AEC (in int_timer_cb)
;;     2307B464 (in __uart_rx_irq)
;;     2307B4A8 (in __uart_tx_irq)
;;     2307BEDA (in aos_sem_signal)
vTaskSwitchContext proc
	lui	a5,0004200F
	lw	a5,a5,+0000052C
	c.beqz	a5,0000000023062D1C

l23062D10:
	lui	a5,0004200F
	c.li	a4,00000001
	sw	a4,a5,+00000548
	c.jr	ra

l23062D1C:
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	a5,0004200F
	lui	s2,0004200F
	sw	zero,a5,+00000548
	addi	s2,s2,+00000514
	lw	a4,s2,+00000000
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.lw	a4,48(a4)
	lui	a5,000A5A5A
	addi	a5,a5,+000005A5
	c.lw	a4,0(a3)
	bne	a3,a5,0000000023062D52

l23062D4C:
	c.lw	a4,4(a5)
	beq	a5,a3,0000000023062DB6

l23062D52:
	lw	a0,s2,+00000000
	lw	a1,s2,+00000000
	addi	a1,a1,+00000034
	jal	ra,0000000023000B9A

l23062D62:
	lui	a5,0004200F
	lw	a0,a5,+00000534
	c.li	s0,0000001F
	lui	s1,00042018
	jal	ra,000000002309F27C
	sub	s3,s0,a0
	slli	s0,s3,00000002
	add	a5,s0,s3
	addi	s1,s1,+00000538
	c.slli	a5,02
	c.add	a5,s1
	c.lw	a5,0(a5)
	c.beqz	a5,0000000023062DC4

l23062D8C:
	c.add	s0,s3
	c.slli	s0,02
	add	a4,s1,s0
	c.lw	a4,4(a5)
	c.addi	s0,00000008
	c.add	s0,s1
	c.lw	a5,4(a5)
	c.sw	a4,4(a5)
	beq	a5,s0,0000000023062DCA

l23062DA2:
	c.lw	a5,12(a5)
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	sw	a5,s2,+00000000
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23062DB6:
	c.lw	a4,8(a3)
	bne	a3,a5,0000000023062D52

l23062DBC:
	c.lw	a4,12(a5)
	bne	a5,a3,0000000023062D52

l23062DC2:
	c.j	0000000023062D62

l23062DC4:
	jal	ra,0000000023000C02
	c.j	0000000023062D8C

l23062DCA:
	c.lw	a5,4(a5)
	c.sw	a4,4(a5)
	c.j	0000000023062DA2

;; vTaskPlaceOnEventList: 23062DD0
;;   Called from:
;;     23061430 (in xQueueGenericSend)
;;     2306178C (in xQueueReceive)
;;     230618B0 (in xQueueSemaphoreTake)
vTaskPlaceOnEventList proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a1
	c.beqz	a0,0000000023062DF6

l23062DDA:
	lui	a5,0004200F
	lw	a1,a5,+00000514
	c.addi	a1,00000018
	jal	ra,0000000023060FA0
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.li	a1,00000001
	c.addi16sp	00000020
	jal	zero,0000000023062310

l23062DF6:
	c.swsp	a0,00000084
	jal	ra,0000000023000C02
	c.lwsp	a2,00000044
	c.j	0000000023062DDA

;; vTaskPlaceOnUnorderedEventList: 23062E00
;;   Called from:
;;     23060DE2 (in xEventGroupWaitBits)
vTaskPlaceOnUnorderedEventList proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s0,a1
	c.mv	s1,a2
	c.beqz	a0,0000000023062E4C

l23062E0E:
	lui	a5,0004200F
	lw	a5,a5,+0000052C
	c.beqz	a5,0000000023062E42

l23062E18:
	lui	a5,0004200F
	addi	a5,a5,+00000514
	c.lw	a5,0(a4)
	c.lw	a5,0(a1)
	lui	a5,00080000
	c.or	a5,s0
	c.addi	a1,00000018
	c.sw	a4,24(a5)
	jal	ra,0000000023060F8A
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.li	a1,00000001
	c.addi16sp	00000020
	jal	zero,0000000023062310

l23062E42:
	c.swsp	a0,00000084
	jal	ra,0000000023000C02
	c.lwsp	a2,00000044
	c.j	0000000023062E18

l23062E4C:
	c.swsp	a0,00000084
	jal	ra,0000000023000C02
	c.lwsp	a2,00000044
	c.j	0000000023062E0E

;; vTaskPlaceOnEventListRestricted: 23062E56
;;   Called from:
;;     23061AD2 (in vQueueWaitForMessageRestricted)
vTaskPlaceOnEventListRestricted proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a1
	c.mv	s0,a2
	c.beqz	a0,0000000023062E86

l23062E64:
	lui	a5,0004200F
	lw	a1,a5,+00000514
	c.addi	a1,00000018
	jal	ra,0000000023060F8A
	c.beqz	s0,0000000023062E76

l23062E74:
	c.li	s1,FFFFFFFF

l23062E76:
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,0000000023062310

l23062E86:
	c.swsp	a0,00000084
	jal	ra,0000000023000C02
	c.lwsp	a2,00000044
	c.j	0000000023062E64

;; xTaskRemoveFromEventList: 23062E90
;;   Called from:
;;     230610FE (in prvUnlockQueue)
;;     2306114E (in prvUnlockQueue)
;;     230611CC (in xQueueGenericReset)
;;     23061454 (in xQueueGenericSend)
;;     230615F6 (in xQueueGenericSendFromISR)
;;     23061674 (in xQueueGiveFromISR)
;;     230617C4 (in xQueueReceive)
;;     2306193C (in xQueueSemaphoreTake)
xTaskRemoveFromEventList proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.lw	a0,12(a5)
	c.lw	a5,12(s0)
	c.beqz	s0,0000000023062F22

l23062E9E:
	addi	s1,s0,+00000018
	c.mv	a0,s1
	jal	ra,0000000023060FD0
	lui	a5,0004200F
	lw	a5,a5,+0000052C
	c.beqz	a5,0000000023062EE8

l23062EB2:
	lui	a0,00042018
	c.mv	a1,s1
	addi	a0,a0,+000007E0
	jal	ra,0000000023060F8A

l23062EC0:
	lui	a5,0004200F
	lw	a5,a5,+00000514
	c.lw	s0,44(a4)
	c.li	a0,00000000
	c.lw	a5,44(a5)
	bgeu	a5,a4,0000000023062EDE

l23062ED2:
	lui	a5,0004200F
	c.li	a4,00000001
	sw	a4,a5,+00000548
	c.li	a0,00000001

l23062EDE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23062EE8:
	addi	s1,s0,+00000004
	c.mv	a0,s1
	jal	ra,0000000023060FD0
	c.lw	s0,44(a2)
	lui	a3,0004200F
	addi	a3,a3,+00000534
	c.lw	a3,0(a1)
	slli	a4,a2,00000002
	c.add	a4,a2
	c.li	a5,00000001
	lui	a0,00042018
	sll	a5,a5,a2
	c.slli	a4,02
	addi	a0,a0,+00000538
	c.or	a5,a1
	c.add	a0,a4
	c.mv	a1,s1
	c.sw	a3,0(a5)
	jal	ra,0000000023060F8A
	c.j	0000000023062EC0

l23062F22:
	jal	ra,0000000023000C02
	c.j	0000000023062E9E

;; vTaskRemoveFromUnorderedEventList: 23062F28
;;   Called from:
;;     23060ECE (in xEventGroupSetBits)
;;     23060F2C (in vEventGroupDelete)
;;     23060F44 (in vEventGroupDelete)
vTaskRemoveFromUnorderedEventList proc
	lui	a5,0004200F
	lw	a5,a5,+0000052C
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.beqz	a5,0000000023062FA8

l23062F3C:
	lui	a5,00080000
	c.lw	a0,12(s0)
	c.or	a1,a5
	c.sw	a0,0(a1)
	c.beqz	s0,0000000023062FC0

l23062F48:
	jal	ra,0000000023060FD0
	addi	s1,s0,+00000004
	c.mv	a0,s1
	jal	ra,0000000023060FD0
	c.lw	s0,44(a5)
	lui	a3,0004200F
	addi	a3,a3,+00000534
	c.lw	a3,0(a2)
	slli	a4,a5,00000002
	c.add	a4,a5
	c.li	s2,00000001
	lui	a0,00042018
	c.slli	a4,02
	sll	a5,s2,a5
	addi	a0,a0,+00000538
	c.or	a5,a2
	c.add	a0,a4
	c.mv	a1,s1
	c.sw	a3,0(a5)
	jal	ra,0000000023060F8A
	lui	a5,0004200F
	lw	a5,a5,+00000514
	c.lw	s0,44(a4)
	c.lw	a5,44(a5)
	bgeu	a5,a4,0000000023062F9C

l23062F94:
	lui	a5,0004200F
	sw	s2,a5,+00000548

l23062F9C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23062FA8:
	c.swsp	a1,00000084
	c.swsp	a0,00000004
	jal	ra,0000000023000C02
	c.lwsp	s0,00000044
	c.lwsp	a2,00000064
	lui	a5,00080000
	c.lw	a0,12(s0)
	c.or	a1,a5
	c.sw	a0,0(a1)
	c.bnez	s0,0000000023062F48

l23062FC0:
	c.swsp	a0,00000004
	jal	ra,0000000023000C02
	c.lwsp	s0,00000044
	c.j	0000000023062F48

;; vTaskSetTimeOutState: 23062FCA
;;   Called from:
;;     23061E78 (in xStreamBufferSend)
vTaskSetTimeOutState proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s1,a0
	c.beqz	a0,0000000023063024

l23062FD6:
	csrrci	zero,mstatus,00000008
	lui	s0,0004200F
	addi	s0,s0,+00000540
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023062FEA

l23062FE6:
	jal	ra,00000000230623D2

l23062FEA:
	lui	a4,0004200F
	lui	a5,0004200F
	lw	a3,a4,+0000053C
	lw	a4,a5,+00000544
	c.lw	s0,0(a5)
	c.sw	s1,0(a3)
	c.sw	s1,4(a4)
	c.beqz	a5,000000002306301A

l23063002:
	lui	a5,0004200F
	lw	a5,a5,+00000514
	c.lw	a5,68(a5)
	c.beqz	a5,000000002306301A

l2306300E:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230623E6

l2306301A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23063024:
	jal	ra,0000000023000C02
	c.j	0000000023062FD6

;; vTaskInternalSetTimeOutState: 2306302A
;;   Called from:
;;     2306144A (in xQueueGenericSend)
;;     230616BA (in xQueueReceive)
;;     2306189E (in xQueueSemaphoreTake)
vTaskInternalSetTimeOutState proc
	lui	a4,0004200F
	lui	a5,0004200F
	lw	a4,a4,+0000053C
	lw	a5,a5,+00000544
	c.sw	a0,0(a4)
	c.sw	a0,4(a5)
	c.jr	ra

;; xTaskCheckForTimeOut: 23063040
;;   Called from:
;;     230613D0 (in xQueueGenericSend)
;;     230616F8 (in xQueueReceive)
;;     23061844 (in xQueueSemaphoreTake)
;;     23061EA8 (in xStreamBufferSend)
xTaskCheckForTimeOut proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a0
	c.mv	s2,a1
	c.beqz	a0,00000000230630E4

l23063050:
	beq	s2,zero,00000000230630EC

l23063054:
	csrrci	zero,mstatus,00000008
	lui	s0,0004200F
	addi	s0,s0,+00000540
	c.lw	s0,0(a5)
	c.bnez	a5,00000000230630D2

l23063064:
	lui	a5,0004200F
	addi	a5,a5,+00000544
	lw	a4,s2,+00000000
	c.lw	a5,0(a2)
	c.li	a3,FFFFFFFF
	c.li	a0,00000000
	beq	a4,a3,00000000230630AE

l2306307A:
	lui	a3,0004200F
	addi	a3,a3,+0000053C
	c.lw	a3,0(a0)
	lw	a6,s1,+00000000
	c.lw	s1,4(a1)
	beq	a6,a0,0000000023063094

l2306308E:
	c.li	a0,00000001
	bgeu	a2,a1,00000000230630AE

l23063094:
	sub	a0,a2,a1
	bgeu	a0,a4,00000000230630D8

l2306309C:
	c.lw	a3,0(a3)
	c.sub	a4,a2
	c.lw	a5,0(a5)
	c.add	a4,a1
	sw	a4,s2,+00000000
	c.sw	s1,0(a3)
	c.sw	s1,4(a5)
	c.li	a0,00000000

l230630AE:
	c.lw	s0,0(a5)
	c.beqz	a5,00000000230630C6

l230630B2:
	lui	a5,0004200F
	lw	a5,a5,+00000514
	c.lw	a5,68(a5)
	c.beqz	a5,00000000230630C6

l230630BE:
	c.swsp	a0,00000084
	jal	ra,00000000230623E6
	c.lwsp	a2,00000044

l230630C6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l230630D2:
	jal	ra,00000000230623D2
	c.j	0000000023063064

l230630D8:
	c.lw	s0,0(a5)
	sw	zero,s2,+00000000
	c.li	a0,00000001
	c.beqz	a5,00000000230630C6

l230630E2:
	c.j	00000000230630B2

l230630E4:
	jal	ra,0000000023000C02
	bne	s2,zero,0000000023063054

l230630EC:
	jal	ra,0000000023000C02
	c.j	0000000023063054

;; vTaskMissedYield: 230630F2
;;   Called from:
;;     23061106 (in prvUnlockQueue)
;;     23061156 (in prvUnlockQueue)
vTaskMissedYield proc
	lui	a5,0004200F
	c.li	a4,00000001
	sw	a4,a5,+00000548
	c.jr	ra

;; vTaskGetInfo: 230630FE
;;   Called from:
;;     2306320C (in prvListTasksWithinSingleList.part.11)
;;     2306323A (in prvListTasksWithinSingleList.part.11)
vTaskGetInfo proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.beqz	a0,0000000023063182

l23063108:
	addi	a5,s0,+00000034
	c.sw	a1,4(a5)
	c.sw	a1,0(s0)
	c.lw	s0,44(a4)
	c.li	a5,00000005
	c.sw	a1,16(a4)
	c.lw	s0,48(a4)
	c.sw	a1,28(a4)
	c.lw	s0,72(a4)
	c.sw	a1,8(a4)
	c.lw	s0,80(a4)
	sw	zero,a1,+00000018
	c.sw	a1,20(a4)
	beq	a3,a5,0000000023063192

l2306312A:
	lui	a5,0004200F
	lw	a5,a5,+00000514
	beq	a5,s0,000000002306318C

l23063136:
	sb	a3,a1,+0000000C
	c.li	a5,00000003
	beq	a3,a5,00000000230631A6

l23063140:
	c.beqz	a2,0000000023063176

l23063142:
	c.lw	s0,48(a3)
	addi	a5,zero,+000000A5
	lbu	a4,a3,+00000000
	bne	a4,a5,00000000230631CC

l23063150:
	c.li	a5,00000000
	addi	a2,zero,+000000A5

l23063156:
	c.addi	a5,00000001
	add	a4,a3,a5
	lbu	a4,a4,+00000000
	beq	a4,a2,0000000023063156

l23063164:
	c.srli	a5,00000002
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a1,+00000020

l2306316E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23063176:
	sh	zero,a1,+00000020
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23063182:
	lui	a5,0004200F
	lw	s0,a5,+00000514
	c.j	0000000023063108

l2306318C:
	sb	zero,a1,+0000000C
	c.j	0000000023063140

l23063192:
	c.mv	a0,s0
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	jal	ra,0000000023062852
	c.lwsp	s0,00000064
	c.lwsp	a2,00000084
	sb	a0,a1,+0000000C
	c.j	0000000023063140

l230631A6:
	lui	a5,0004200F
	addi	a5,a5,+0000052C
	c.lw	a5,0(a4)
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	c.lw	s0,40(a5)
	c.beqz	a5,00000000230631BE

l230631B8:
	c.li	a5,00000002
	sb	a5,a1,+0000000C

l230631BE:
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	jal	ra,0000000023062B70
	c.lwsp	s0,00000064
	c.lwsp	a2,00000084
	c.j	0000000023063140

l230631CC:
	c.li	a5,00000000
	sh	a5,a1,+00000020
	c.j	000000002306316E

;; prvListTasksWithinSingleList.part.11: 230631D4
;;   Called from:
;;     230632C0 (in uxTaskGetSystemState)
;;     230632E6 (in uxTaskGetSystemState)
;;     23063306 (in uxTaskGetSystemState)
;;     2306332A (in uxTaskGetSystemState)
;;     2306334E (in uxTaskGetSystemState)
prvListTasksWithinSingleList.part.11 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s5,00000080
	c.lw	a1,4(a5)
	addi	s4,a1,+00000008
	c.mv	s2,a1
	c.lw	a5,4(a5)
	c.mv	s6,a2
	c.sw	a1,4(a5)
	beq	a5,s4,0000000023063258

l230631F8:
	lw	s5,a5,+0000000C
	c.mv	s0,a0
	c.li	s3,00000000
	c.j	0000000023063218

l23063202:
	c.lw	a5,12(s1)
	c.addi	s3,00000001
	addi	s0,s0,+00000024
	c.mv	a0,s1
	jal	ra,00000000230630FE
	beq	s5,s1,0000000023063242

l23063214:
	lw	a5,s2,+00000004

l23063218:
	c.lw	a5,4(a5)
	c.mv	a1,s0
	c.mv	a3,s6
	sw	a5,s2,+00000004
	c.li	a2,00000001
	bne	s4,a5,0000000023063202

l23063228:
	lw	a5,s4,+00000004
	c.addi	s3,00000001
	addi	s0,s0,+00000024
	sw	a5,s2,+00000004
	c.lw	a5,12(s1)
	c.mv	a0,s1
	jal	ra,00000000230630FE
	bne	s5,s1,0000000023063214

l23063242:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s3
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	c.jr	ra

l23063258:
	c.lw	a1,12(a5)
	c.sw	a1,4(a5)
	c.j	00000000230631F8

;; uxTaskGetSystemState: 2306325E
;;   Called from:
;;     230636C6 (in vTaskList)
uxTaskGetSystemState proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004200F
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	addi	a5,a5,+0000052C
	c.lw	a5,0(a4)
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	lui	a5,0004200F
	lw	a5,a5,+00000520
	c.li	s2,00000000
	bltu	a1,a5,000000002306335A

l2306328A:
	lui	s5,00042018
	addi	s5,s5,+00000538
	c.mv	s4,a0
	c.mv	s0,a2
	addi	s3,s5,+0000026C
	addi	s1,zero,+00000020
	c.li	s2,00000000
	c.li	a4,00000000

l230632A2:
	c.addi	s1,FFFFFFFF
	slli	a5,s1,00000002
	c.add	a5,s1
	c.slli	a5,02
	c.add	a5,s5
	c.lw	a5,0(a3)
	add	a5,a4,s2
	c.slli	a5,02
	c.add	a5,s4
	c.mv	a1,s3
	c.li	a2,00000001
	c.mv	a0,a5
	c.beqz	a3,00000000230632D2

l230632C0:
	jal	ra,00000000230631D4
	c.add	s2,a0
	slli	a4,s2,00000003
	add	a5,a4,s2
	c.slli	a5,02
	c.add	a5,s4

l230632D2:
	c.addi	s3,FFFFFFEC
	c.bnez	s1,00000000230632A2

l230632D6:
	lui	a4,0004200F
	lw	a1,a4,+00000518
	c.lw	a1,0(a4)
	c.beqz	a4,00000000230632F6

l230632E2:
	c.mv	a0,a5
	c.li	a2,00000002
	jal	ra,00000000230631D4
	c.add	s2,a0
	slli	a5,s2,00000003
	c.add	a5,s2
	c.slli	a5,02
	c.add	a5,s4

l230632F6:
	lui	a4,0004200F
	lw	a1,a4,+0000051C
	c.lw	a1,0(a4)
	c.beqz	a4,0000000023063316

l23063302:
	c.mv	a0,a5
	c.li	a2,00000002
	jal	ra,00000000230631D4
	c.add	s2,a0
	slli	a5,s2,00000003
	c.add	a5,s2
	c.slli	a5,02
	c.add	a5,s4

l23063316:
	lui	a1,00042019
	addi	a4,a1,-000007F8
	c.lw	a4,0(a4)
	c.beqz	a4,000000002306333A

l23063322:
	c.mv	a0,a5
	c.li	a2,00000004
	addi	a1,a1,-000007F8
	jal	ra,00000000230631D4
	c.add	s2,a0
	slli	a5,s2,00000003
	c.add	a5,s2
	c.slli	a5,02
	c.add	a5,s4

l2306333A:
	lui	a1,00042018
	addi	a4,a1,+000007F4
	c.lw	a4,0(a4)
	c.beqz	a4,0000000023063354

l23063346:
	c.li	a2,00000003
	addi	a1,a1,+000007F4
	c.mv	a0,a5
	jal	ra,00000000230631D4
	c.add	s2,a0

l23063354:
	c.beqz	s0,000000002306335A

l23063356:
	sw	zero,s0,+00000000

l2306335A:
	jal	ra,0000000023062B70
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; xTaskGetCurrentTaskHandle: 23063372
;;   Called from:
;;     23001500 (in ipc_emb_init)
;;     23023CE2 (in bl_output)
;;     2305BB2E (in bl_ble_sync_stop)
;;     230614E6 (in xQueueGiveMutexRecursive)
;;     2306196A (in xQueueTakeMutexRecursive)
;;     23061E8A (in xStreamBufferSend)
;;     230620F8 (in xStreamBufferReceive)
;;     2307BD44 (in aos_task_key_create)
;;     2307BDAA (in aos_task_setspecific)
;;     2307BDE8 (in aos_task_getspecific)
;;     23084EEC (in bloop_run)
xTaskGetCurrentTaskHandle proc
	lui	a5,0004200F
	lw	a0,a5,+00000514
	c.jr	ra

;; xTaskGetSchedulerState: 2306337C
;;   Called from:
;;     23060D7E (in xEventGroupWaitBits)
;;     23060DC0 (in xEventGroupWaitBits)
;;     2306136C (in xQueueGenericSend)
;;     230616A0 (in xQueueReceive)
;;     230617EC (in xQueueSemaphoreTake)
;;     23063F00 (in xTimerGenericCommand)
xTaskGetSchedulerState proc
	lui	a5,0004200F
	lw	a5,a5,+00000540
	c.li	a0,00000001
	c.beqz	a5,0000000023063396

l23063388:
	lui	a5,0004200F
	lw	a0,a5,+0000052C
	sltiu	a0,a0,+00000001
	c.slli	a0,01

l23063396:
	c.jr	ra

;; xTaskPriorityInherit: 23063398
;;   Called from:
;;     23061920 (in xQueueSemaphoreTake)
xTaskPriorityInherit proc
	c.beqz	a0,0000000023063412

l2306339A:
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200F
	addi	s1,s1,+00000514
	c.lw	s1,0(a4)
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.lw	a0,44(a3)
	c.lw	a4,44(a4)
	c.mv	s0,a0
	bgeu	a3,a4,00000000230633FA

l230633BA:
	c.lw	a0,24(a4)
	blt	a4,zero,00000000230633CC

l230633C0:
	c.lw	s1,0(a4)
	c.lw	a4,44(a2)
	addi	a4,zero,+00000020
	c.sub	a4,a2
	c.sw	a0,24(a4)

l230633CC:
	slli	a4,a3,00000002
	c.add	a4,a3
	lui	s2,00042018
	c.lw	s0,20(a3)
	addi	s2,s2,+00000538
	c.slli	a4,02
	c.add	a4,s2
	beq	a3,a4,0000000023063416

l230633E4:
	c.lw	s1,0(a4)
	c.li	a0,00000001
	c.lw	a4,44(a4)
	c.sw	s0,44(a4)
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230633FA:
	c.lw	s1,0(a4)
	c.lw	a0,80(a0)
	c.lw	a4,44(a5)
	sltu	a0,a0,a5

l23063404:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23063412:
	c.li	a0,00000000
	c.jr	ra

l23063416:
	addi	s3,s0,+00000004
	c.mv	a0,s3
	jal	ra,0000000023060FD0
	c.bnez	a0,000000002306344C

l23063422:
	c.lw	s0,44(a3)
	lui	a4,0004200F
	addi	a4,a4,+00000534
	slli	a5,a3,00000002
	c.add	a5,a3
	c.slli	a5,02
	c.add	a5,s2
	c.lw	a5,0(a5)
	c.bnez	a5,0000000023063454

l2306343A:
	c.lw	a4,0(a2)
	c.li	a5,00000001
	sll	a5,a5,a3
	xori	a5,a5,-00000001
	c.and	a5,a2
	c.sw	a4,0(a5)
	c.j	0000000023063454

l2306344C:
	lui	a4,0004200F
	addi	a4,a4,+00000534

l23063454:
	c.lw	s1,0(a5)
	c.lw	a4,0(a2)
	c.mv	a1,s3
	c.lw	a5,44(a3)
	c.li	a5,00000001
	slli	a0,a3,00000002
	c.add	a0,a3
	sll	a5,a5,a3
	c.slli	a0,02
	c.or	a5,a2
	c.add	a0,s2
	c.sw	s0,44(a3)
	c.sw	a4,0(a5)
	jal	ra,0000000023060F8A
	c.li	a0,00000001
	c.j	0000000023063404

;; xTaskPriorityDisinherit: 2306347A
;;   Called from:
;;     23061094 (in prvCopyDataToQueue)
xTaskPriorityDisinherit proc
	c.beqz	a0,00000000230634C8

l2306347C:
	lui	a5,0004200F
	lw	a5,a5,+00000514
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	beq	a5,a0,0000000023063496

l23063492:
	jal	ra,0000000023000C02

l23063496:
	c.lw	s0,84(a5)
	c.beqz	a5,00000000230634B4

l2306349A:
	c.lw	s0,44(a3)
	c.lw	s0,80(a4)
	c.addi	a5,FFFFFFFF
	c.sw	s0,84(a5)
	beq	a3,a4,00000000230634A8

l230634A6:
	c.beqz	a5,00000000230634CC

l230634A8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230634B4:
	jal	ra,0000000023000C02
	c.lw	s0,84(a5)
	c.lw	s0,44(a3)
	c.lw	s0,80(a4)
	c.addi	a5,FFFFFFFF
	c.sw	s0,84(a5)
	bne	a3,a4,00000000230634A6

l230634C6:
	c.j	00000000230634A8

l230634C8:
	c.li	a0,00000000
	c.jr	ra

l230634CC:
	addi	s1,s0,+00000004
	c.mv	a0,s1
	jal	ra,0000000023060FD0
	c.beqz	a0,0000000023063520

l230634D8:
	lui	a0,00042018
	lui	a2,0004200F
	addi	a0,a0,+00000538
	addi	a2,a2,+00000534

l230634E8:
	c.lw	s0,80(a3)
	c.lw	a2,0(a1)
	addi	a6,zero,+00000020
	slli	a4,a3,00000002
	c.add	a4,a3
	c.li	a5,00000001
	sub	a6,a6,a3
	sll	a5,a5,a3
	c.slli	a4,02
	c.or	a5,a1
	c.sw	s0,44(a3)
	sw	a6,s0,+00000018
	c.mv	a1,s1
	c.add	a0,a4
	c.sw	a2,0(a5)
	jal	ra,0000000023060F8A
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l23063520:
	c.lw	s0,44(a4)
	lui	a0,00042018
	addi	a0,a0,+00000538
	slli	a5,a4,00000002
	c.add	a5,a4
	c.slli	a5,02
	c.add	a5,a0
	c.lw	a5,0(a5)
	lui	a2,0004200F
	addi	a2,a2,+00000534
	c.bnez	a5,00000000230634E8

l23063540:
	c.lw	a2,0(a3)
	c.li	a5,00000001
	sll	a5,a5,a4
	xori	a5,a5,-00000001
	c.and	a5,a3
	c.sw	a2,0(a5)
	c.j	00000000230634E8

;; vTaskPriorityDisinheritAfterTimeout: 23063552
;;   Called from:
;;     2306190A (in xQueueSemaphoreTake)
vTaskPriorityDisinheritAfterTimeout proc
	c.beqz	a0,00000000230635A0

l23063554:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	c.lw	a0,84(a5)
	c.mv	s1,a1
	c.mv	s0,a0
	c.beqz	a5,0000000023063592

l23063566:
	lw	s2,s0,+00000050
	bltu	s2,s1,0000000023063588

l2306356E:
	c.lw	s0,44(a5)
	beq	a5,s2,000000002306357C

l23063574:
	c.lw	s0,84(a3)
	c.li	a4,00000001
	beq	a3,a4,00000000230635A2

l2306357C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23063588:
	c.lw	s0,44(a5)
	c.mv	s2,s1
	bne	a5,s2,0000000023063574

l23063590:
	c.j	000000002306357C

l23063592:
	jal	ra,0000000023000C02
	lw	s2,s0,+00000050
	bgeu	s2,s1,000000002306356E

l2306359E:
	c.j	0000000023063588

l230635A0:
	c.jr	ra

l230635A2:
	lui	a4,0004200F
	lw	a4,a4,+00000514
	beq	a4,s0,000000002306361A

l230635AE:
	c.lw	s0,24(a4)
	sw	s2,s0,+0000002C
	blt	a4,zero,00000000230635C4

l230635B8:
	addi	a4,zero,+00000020
	sub	s2,a4,s2
	sw	s2,s0,+00000018

l230635C4:
	slli	a4,a5,00000002
	c.add	a5,a4
	lui	s1,00042018
	c.lw	s0,20(a4)
	addi	s1,s1,+00000538
	c.slli	a5,02
	c.add	a5,s1
	bne	a4,a5,000000002306357C

l230635DC:
	addi	s2,s0,+00000004
	c.mv	a0,s2
	jal	ra,0000000023060FD0
	c.beqz	a0,0000000023063622

l230635E8:
	c.lw	s0,44(a0)
	c.li	a3,00000001
	lui	a4,0004200F
	sll	a3,a3,a0
	slli	a5,a0,00000002
	addi	a4,a4,+00000534

l230635FC:
	c.lw	a4,0(a2)
	c.add	a5,a0
	slli	a0,a5,00000002
	c.or	a3,a2
	c.sw	a4,0(a3)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s2
	c.add	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023060F8A

l2306361A:
	jal	ra,0000000023000C02
	c.lw	s0,44(a5)
	c.j	00000000230635AE

l23063622:
	c.lw	s0,44(a0)
	c.li	a3,00000001
	slli	a5,a0,00000002
	add	a4,a5,a0
	c.slli	a4,02
	c.add	a4,s1
	c.lw	a4,0(a4)
	sll	a3,a3,a0
	c.beqz	a4,0000000023063644

l2306363A:
	lui	a4,0004200F
	addi	a4,a4,+00000534
	c.j	00000000230635FC

l23063644:
	lui	a4,0004200F
	addi	a4,a4,+00000534
	c.lw	a4,0(a1)
	xori	a2,a3,-00000001
	c.and	a2,a1
	c.sw	a4,0(a2)
	c.j	00000000230635FC

;; vTaskEnterCritical: 23063658
;;   Called from:
;;     2300A332 (in rxl_mpdu_free)
;;     2300A75C (in bl60x_firmwre_mpdu_free)
;;     2300A8C4 (in rxl_hwdesc_init)
;;     2300C5C2 (in txl_frame_get)
;;     230109DC (in rxu_swdesc_upload_evt)
;;     23023B4A (in bl_tx_resend)
;;     23023BBA (in bl_tx_try_flush)
;;     23023DE6 (in bl_output)
;;     23024882 (in stateConnectedIPNoEnter)
;;     230274A2 (in cmd_wifi_dump)
;;     230274C0 (in cmd_wifi_dump)
;;     23027B5A (in wifi_mgmr_sta_ip_set)
;;     2302801A (in wifi_mgmr_scan_filter_hidden_ssid)
;;     23048C58 (in irq_lock)
;;     2305C3B0 (in bl_sys_time_sync_state)
;;     23060E32 (in xEventGroupWaitBits)
;;     230610D0 (in prvUnlockQueue)
;;     23061120 (in prvUnlockQueue)
;;     23061188 (in xQueueGenericReset)
;;     23061378 (in xQueueGenericSend)
;;     230613A4 (in xQueueGenericSend)
;;     230613D6 (in xQueueGenericSend)
;;     230613F2 (in xQueueGenericSend)
;;     230616A8 (in xQueueReceive)
;;     230616CC (in xQueueReceive)
;;     230616FE (in xQueueReceive)
;;     23061714 (in xQueueReceive)
;;     23061744 (in xQueueReceive)
;;     23061750 (in xQueueReceive)
;;     230617F4 (in xQueueSemaphoreTake)
;;     23061818 (in xQueueSemaphoreTake)
;;     2306184A (in xQueueSemaphoreTake)
;;     23061862 (in xQueueSemaphoreTake)
;;     2306188C (in xQueueSemaphoreTake)
;;     230618F4 (in xQueueSemaphoreTake)
;;     2306191A (in xQueueSemaphoreTake)
;;     230619B2 (in uxQueueMessagesWaiting)
;;     23061A8A (in vQueueWaitForMessageRestricted)
;;     23061EAE (in xStreamBufferSend)
;;     2306206E (in xStreamBufferReceive)
;;     23063CBA (in prvCheckForValidListAndQueue)
;;     230641EC (in pvTimerGetTimerID)
;;     2306A4BE (in loopset_led_trigger)
;;     2306A7F2 (in sys_arch_protect)
;;     23078FB2 (in sntp_recv)
;;     23079270 (in sntp_get_time)
;;     2307B5F8 (in vfs_uart_poll)
;;     2307B622 (in vfs_uart_poll)
;;     2308028E (in tcp_sent_callback)
;;     230806A2 (in udp_send_data)
;;     2308084C (in udp_receive_callback)
;;     23080A6E (in tcp_send_data)
;;     23084E28 (in bloop_evt_set_async)
;;     23084F06 (in bloop_run)
;;     23084F72 (in bloop_run)
vTaskEnterCritical proc
	csrrci	zero,mstatus,00000008
	lui	a5,0004200F
	lw	a5,a5,+00000540
	c.beqz	a5,000000002306366A

l23063666:
	jal	zero,00000000230623D2

l2306366A:
	c.jr	ra

;; vTaskExitCritical: 2306366C
;;   Called from:
;;     2300A386 (in rxl_mpdu_free)
;;     2300A774 (in bl60x_firmwre_mpdu_free)
;;     2300A9FA (in rxl_hwdesc_init)
;;     2300C5E8 (in txl_frame_get)
;;     230109EE (in rxu_swdesc_upload_evt)
;;     23023B88 (in bl_tx_resend)
;;     23023BE6 (in bl_tx_try_flush)
;;     23023DF8 (in bl_output)
;;     230248A4 (in stateConnectedIPNoEnter)
;;     230274B0 (in cmd_wifi_dump)
;;     23027B7A (in wifi_mgmr_sta_ip_set)
;;     23028034 (in wifi_mgmr_scan_filter_hidden_ssid)
;;     23048C64 (in irq_unlock)
;;     2305C3C0 (in bl_sys_time_sync_state)
;;     23060E54 (in xEventGroupWaitBits)
;;     2306111C (in prvUnlockQueue)
;;     23061176 (in prvUnlockQueue)
;;     230611B8 (in xQueueGenericReset)
;;     230611D6 (in xQueueGenericReset)
;;     230611F6 (in xQueueGenericReset)
;;     2306139C (in xQueueGenericSend)
;;     230613C8 (in xQueueGenericSend)
;;     230613E2 (in xQueueGenericSend)
;;     2306140E (in xQueueGenericSend)
;;     23061428 (in xQueueGenericSend)
;;     2306147A (in xQueueGenericSend)
;;     230616C4 (in xQueueReceive)
;;     230616F0 (in xQueueReceive)
;;     23061706 (in xQueueReceive)
;;     23061724 (in xQueueReceive)
;;     2306174C (in xQueueReceive)
;;     2306176E (in xQueueReceive)
;;     23061784 (in xQueueReceive)
;;     23061810 (in xQueueSemaphoreTake)
;;     2306183C (in xQueueSemaphoreTake)
;;     23061852 (in xQueueSemaphoreTake)
;;     2306187A (in xQueueSemaphoreTake)
;;     23061894 (in xQueueSemaphoreTake)
;;     230618A4 (in xQueueSemaphoreTake)
;;     230618C8 (in xQueueSemaphoreTake)
;;     2306190E (in xQueueSemaphoreTake)
;;     23061926 (in xQueueSemaphoreTake)
;;     23061930 (in xQueueSemaphoreTake)
;;     230619B8 (in uxQueueMessagesWaiting)
;;     23061AB2 (in vQueueWaitForMessageRestricted)
;;     23061E90 (in xStreamBufferSend)
;;     23061EC0 (in xStreamBufferSend)
;;     23062086 (in xStreamBufferReceive)
;;     230620FE (in xStreamBufferReceive)
;;     23063CCC (in prvCheckForValidListAndQueue)
;;     230641F2 (in pvTimerGetTimerID)
;;     2306A4D8 (in loopset_led_trigger)
;;     2306A7FE (in sys_arch_unprotect)
;;     23078FF8 (in sntp_recv)
;;     23079280 (in sntp_get_time)
;;     2307B604 (in vfs_uart_poll)
;;     2307B632 (in vfs_uart_poll)
;;     230802AA (in tcp_sent_callback)
;;     230802CE (in tcp_sent_callback)
;;     230806D0 (in udp_send_data)
;;     2308070A (in udp_send_data)
;;     23080868 (in udp_receive_callback)
;;     2308087C (in udp_receive_callback)
;;     23080A96 (in tcp_send_data)
;;     23080ACA (in tcp_send_data)
;;     23084E46 (in bloop_evt_set_async)
;;     23084F16 (in bloop_run)
;;     23084F88 (in bloop_run)
vTaskExitCritical proc
	lui	a5,0004200F
	lw	a5,a5,+00000540
	c.beqz	a5,0000000023063686

l23063676:
	lui	a5,0004200F
	lw	a5,a5,+00000514
	c.lw	a5,68(a5)
	c.beqz	a5,0000000023063686

l23063682:
	jal	zero,00000000230623E6

l23063686:
	c.jr	ra

;; vTaskList: 23063688
;;   Called from:
;;     2305DCFC (in ps_cmd)
vTaskList proc
	c.addi16sp	FFFFFFD0
	lui	a5,0004200F
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	addi	a5,a5,+00000520
	c.lw	a5,0(s1)
	c.lw	a5,0(a5)
	c.mv	s0,a0
	sb	zero,a0,+00000000
	slli	a0,a5,00000003
	c.add	a0,a5
	c.slli	a0,02
	jal	ra,000000002306488A
	c.beqz	a0,000000002306376C

l230636C0:
	c.li	a2,00000000
	c.mv	a1,s1
	c.mv	s8,a0
	jal	ra,000000002306325E
	c.beqz	a0,000000002306374E

l230636CC:
	slli	s2,a0,00000003
	c.add	s2,a0
	c.slli	s2,02
	lui	s7,000230CC
	c.mv	s1,s8
	c.add	s2,s8
	lui	s6,000230C1
	c.li	s5,00000004
	addi	s7,s7,-0000054C
	c.li	s4,0000000E
	addi	s3,zero,+00000020

l230636EC:
	lbu	a5,s1,+0000000C
	c.li	s9,00000000
	bltu	s5,a5,00000000230636FC

l230636F6:
	c.add	a5,s7
	lbu	s9,a5,+00000000

l230636FC:
	c.lw	s1,4(a1)
	c.mv	a0,s0
	jal	ra,00000000230A4170
	c.mv	a0,s0
	jal	ra,00000000230A4220
	bltu	s4,a0,0000000023063720

l2306370E:
	c.add	a0,s0
	addi	a5,s0,+0000000F

l23063714:
	sb	s3,a0,+00000000
	c.addi	a0,00000001
	bne	a5,a0,0000000023063714

l2306371E:
	c.li	a0,0000000F

l23063720:
	c.add	s0,a0
	sb	zero,s0,+00000000
	lw	a6,s1,+0000001C
	c.lw	s1,8(a5)
	lhu	a4,s1,+00000020
	c.lw	s1,16(a3)
	c.mv	a2,s9
	addi	a1,s6,-00000148
	c.mv	a0,s0
	jal	ra,00000000230823B8
	c.mv	a0,s0
	jal	ra,00000000230A4220
	addi	s1,s1,+00000024
	c.add	s0,a0
	bne	s1,s2,00000000230636EC

l2306374E:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	tp,0000002C
	c.mv	a0,s8
	c.lwsp	s0,0000000C
	c.addi16sp	00000030
	jal	zero,0000000023064972

l2306376C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.addi16sp	00000030
	c.jr	ra

;; uxTaskResetEventItemValue: 23063786
;;   Called from:
;;     23060DF0 (in xEventGroupWaitBits)
uxTaskResetEventItemValue proc
	lui	a5,0004200F
	addi	a5,a5,+00000514
	c.lw	a5,0(a2)
	c.lw	a5,0(a3)
	c.lw	a5,0(a4)
	addi	a5,zero,+00000020
	c.lw	a3,44(a3)
	c.lw	a2,24(a0)
	c.sub	a5,a3
	c.sw	a4,24(a5)
	c.jr	ra

;; pvTaskIncrementMutexHeldCount: 230637A2
;;   Called from:
;;     23061950 (in xQueueSemaphoreTake)
pvTaskIncrementMutexHeldCount proc
	lui	a5,0004200F
	addi	a5,a5,+00000514
	c.lw	a5,0(a4)
	c.beqz	a4,00000000230637B6

l230637AE:
	c.lw	a5,0(a3)
	c.lw	a3,84(a4)
	c.addi	a4,00000001
	c.sw	a3,84(a4)

l230637B6:
	c.lw	a5,0(a0)
	c.jr	ra

;; ulTaskNotifyTake: 230637BA
;;   Called from:
;;     230014E2 (in ipc_emb_wait)
;;     23084F38 (in bloop_run)
ulTaskNotifyTake proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s2,a0
	c.mv	s3,a1
	csrrci	zero,mstatus,00000008
	lui	s1,0004200F
	addi	s1,s1,+00000540
	c.lw	s1,0(a5)
	c.beqz	a5,00000000230637DE

l230637DA:
	jal	ra,00000000230623D2

l230637DE:
	lui	s0,0004200F
	addi	s0,s0,+00000514
	c.lw	s0,0(a5)
	c.lw	a5,88(a5)
	c.bnez	a5,00000000230637F8

l230637EC:
	c.lw	s0,0(a5)
	c.li	a4,00000001
	sb	a4,a5,+0000005C
	bne	s3,zero,0000000023063852

l230637F8:
	c.lw	s1,0(a5)
	c.beqz	a5,0000000023063802

l230637FC:
	c.lw	s0,0(a5)
	c.lw	a5,68(a5)
	c.bnez	a5,000000002306384C

l23063802:
	csrrci	zero,mstatus,00000008
	c.lw	s1,0(a5)
	c.beqz	a5,000000002306380E

l2306380A:
	jal	ra,00000000230623D2

l2306380E:
	c.lw	s0,0(a5)
	c.lw	a5,88(a0)
	c.beqz	a0,000000002306381E

l23063814:
	c.lw	s0,0(a5)
	beq	s2,zero,0000000023063844

l2306381A:
	sw	zero,a5,+00000058

l2306381E:
	c.lw	s0,0(a5)
	sb	zero,a5,+0000005C
	c.lw	s1,0(a5)
	c.beqz	a5,0000000023063836

l23063828:
	c.lw	s0,0(a5)
	c.lw	a5,68(a5)
	c.beqz	a5,0000000023063836

l2306382E:
	c.swsp	a0,00000084
	jal	ra,00000000230623E6
	c.lwsp	a2,00000044

l23063836:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23063844:
	addi	a4,a0,-00000001
	c.sw	a5,88(a4)
	c.j	000000002306381E

l2306384C:
	jal	ra,00000000230623E6
	c.j	0000000023063802

l23063852:
	c.li	a1,00000001
	c.mv	a0,s3
	jal	ra,0000000023062310
	ecall
	c.j	00000000230637F8

;; xTaskNotifyWait: 23063860
;;   Called from:
;;     23061E9C (in xStreamBufferSend)
;;     2306210A (in xStreamBufferReceive)
xTaskNotifyWait proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.mv	s1,a0
	c.mv	s2,a1
	c.mv	s4,a2
	c.mv	s5,a3
	csrrci	zero,mstatus,00000008
	lui	s3,0004200F
	addi	s3,s3,+00000540
	lw	a5,s3,+00000000
	c.beqz	a5,000000002306388E

l2306388A:
	jal	ra,00000000230623D2

l2306388E:
	lui	s0,0004200F
	addi	s0,s0,+00000514
	c.lw	s0,0(a5)
	c.li	a4,00000002
	lbu	a5,a5,+0000005C
	beq	a4,a5,00000000230638BA

l230638A2:
	c.lw	s0,0(a5)
	xori	s1,s1,-00000001
	c.li	a4,00000001
	c.lw	a5,88(a0)
	c.and	s1,a0
	c.sw	a5,88(s1)
	c.lw	s0,0(a5)
	sb	a4,a5,+0000005C
	bne	s5,zero,0000000023063932

l230638BA:
	lw	a5,s3,+00000000
	c.beqz	a5,00000000230638C6

l230638C0:
	c.lw	s0,0(a5)
	c.lw	a5,68(a5)
	c.bnez	a5,000000002306392C

l230638C6:
	csrrci	zero,mstatus,00000008
	lw	a5,s3,+00000000
	c.beqz	a5,00000000230638D4

l230638D0:
	jal	ra,00000000230623D2

l230638D4:
	beq	s4,zero,00000000230638E0

l230638D8:
	c.lw	s0,0(a5)
	c.lw	a5,88(a5)
	sw	a5,s4,+00000000

l230638E0:
	c.lw	s0,0(a5)
	c.li	a4,00000002
	c.li	a0,00000000
	lbu	a5,a5,+0000005C
	bne	a4,a5,0000000023063900

l230638EE:
	c.lw	s0,0(a5)
	xori	s2,s2,-00000001
	c.li	a0,00000001
	c.lw	a5,88(a4)
	and	s2,s2,a4
	sw	s2,a5,+00000058

l23063900:
	c.lw	s0,0(a5)
	sb	zero,a5,+0000005C
	lw	a5,s3,+00000000
	c.beqz	a5,000000002306391A

l2306390C:
	c.lw	s0,0(a5)
	c.lw	a5,68(a5)
	c.beqz	a5,000000002306391A

l23063912:
	c.swsp	a0,00000084
	jal	ra,00000000230623E6
	c.lwsp	a2,00000044

l2306391A:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l2306392C:
	jal	ra,00000000230623E6
	c.j	00000000230638C6

l23063932:
	c.li	a1,00000001
	c.mv	a0,s5
	jal	ra,0000000023062310
	ecall
	c.j	00000000230638BA

;; xTaskGenericNotify: 23063940
;;   Called from:
;;     230014D4 (in ipc_emb_notify)
;;     23023C8C (in bl_tx_notify)
;;     23061F0A (in xStreamBufferSend)
;;     230620AE (in xStreamBufferReceive)
;;     23084E58 (in bloop_evt_set_async)
xTaskGenericNotify proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.mv	s0,a0
	c.mv	s4,a1
	c.mv	s1,a2
	c.mv	s2,a3
	beq	a0,zero,0000000023063A68

l2306395A:
	csrrci	zero,mstatus,00000008
	lui	s3,0004200F
	addi	s3,s3,+00000540
	lw	a5,s3,+00000000
	c.bnez	a5,00000000230639D8

l2306396C:
	beq	s2,zero,0000000023063976

l23063970:
	c.lw	s0,88(a5)
	sw	a5,s2,+00000000

l23063976:
	lbu	s2,s0,+0000005C
	c.li	a5,00000002
	sb	a5,s0,+0000005C
	c.li	a5,00000004
	andi	s2,s2,+000000FF
	bltu	a5,s1,000000002306399A

l2306398A:
	lui	a2,000230C1
	c.slli	s1,02
	addi	a2,a2,-00000170
	c.add	s1,a2
	c.lw	s1,0(a5)
	c.jr	a5

l2306399A:
	c.lw	s0,88(a4)
	c.li	a5,FFFFFFFF
	beq	a4,a5,00000000230639A6

l230639A2:
	jal	ra,0000000023000C02

l230639A6:
	c.li	a5,00000001
	beq	s2,a5,00000000230639DE

l230639AC:
	c.li	a0,00000001
	lw	a5,s3,+00000000
	c.beqz	a5,00000000230639C8

l230639B4:
	lui	a5,0004200F
	lw	a5,a5,+00000514
	c.lw	a5,68(a5)
	c.beqz	a5,00000000230639C8

l230639C0:
	c.swsp	a0,00000084
	jal	ra,00000000230623E6
	c.lwsp	a2,00000044

l230639C8:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l230639D8:
	jal	ra,00000000230623D2
	c.j	000000002306396C

l230639DE:
	addi	s1,s0,+00000004
	c.mv	a0,s1
	jal	ra,0000000023060FD0
	c.lw	s0,44(a3)
	lui	a4,0004200F
	addi	a4,a4,+00000534
	c.lw	a4,0(a2)
	slli	a5,a3,00000002
	c.add	a5,a3
	lui	a0,00042018
	c.slli	a5,02
	sll	s2,s2,a3
	addi	a0,a0,+00000538
	or	s2,s2,a2
	c.add	a0,a5
	c.mv	a1,s1
	sw	s2,a4,+00000000
	jal	ra,0000000023060F8A
	c.lw	s0,40(a5)
	c.beqz	a5,0000000023063A20

l23063A1C:
	jal	ra,0000000023000C02

l23063A20:
	lui	a5,0004200F
	lw	a5,a5,+00000514
	c.lw	s0,44(a4)
	c.lw	a5,44(a5)
	bgeu	a5,a4,00000000230639AC

l23063A30:
	ecall
	c.j	00000000230639AC
23063A36                   89 47 01 45 E3 0A F9 F6 23 2C       .G.E....#,
23063A40 44 05 85 47 E3 14 F9 F6 59 BF 3C 4C 85 07 3C CC D..G....Y.<L..<.
23063A50 85 47 E3 1D F9 F4 61 B7 2C 4C 85 47 B3 E5 45 01 .G....a.,L.G..E.
23063A60 2C CC E3 15 F9 F4 A5 BF                         ,.......       

l23063A68:
	jal	ra,0000000023000C02
	c.j	000000002306395A

;; xTaskGenericNotifyFromISR: 23063A6E
;;   Called from:
;;     23061FEE (in xStreamBufferSendFromISR)
;;     2306218E (in xStreamBufferReceiveFromISR)
xTaskGenericNotifyFromISR proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.mv	s2,a4
	c.beqz	a0,0000000023063B22

l23063A7E:
	c.beqz	a3,0000000023063A84

l23063A80:
	c.lw	s0,88(a5)
	c.sw	a3,0(a5)

l23063A84:
	lbu	s1,s0,+0000005C
	c.li	a5,00000002
	sb	a5,s0,+0000005C
	c.li	a5,00000004
	andi	s1,s1,+000000FF
	bltu	a5,a2,0000000023063AA8

l23063A98:
	lui	a5,000230C1
	addi	a5,a5,-0000015C
	c.slli	a2,02
	c.add	a2,a5
	c.lw	a2,0(a5)
	c.jr	a5

l23063AA8:
	c.lw	s0,88(a4)
	c.li	a5,FFFFFFFF
	beq	a4,a5,0000000023063AB4

l23063AB0:
	jal	ra,0000000023000C02

l23063AB4:
	c.li	a5,00000001
	beq	s1,a5,0000000023063AC8

l23063ABA:
	c.li	a0,00000001
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23063AC8:
	c.lw	s0,40(a5)
	c.beqz	a5,0000000023063AD0

l23063ACC:
	jal	ra,0000000023000C02

l23063AD0:
	lui	a5,0004200F
	lw	a5,a5,+0000052C
	c.beqz	a5,0000000023063B34

l23063ADA:
	lui	a0,00042018
	addi	a1,s0,+00000018
	addi	a0,a0,+000007E0
	jal	ra,0000000023060F8A

l23063AEA:
	lui	a5,0004200F
	lw	a5,a5,+00000514
	c.lw	s0,44(a4)
	c.lw	a5,44(a5)
	bgeu	a5,a4,0000000023063ABA

l23063AFA:
	beq	s2,zero,0000000023063B04

l23063AFE:
	c.li	a5,00000001
	sw	a5,s2,+00000000

l23063B04:
	lui	a5,0004200F
	c.li	a4,00000001
	sw	a4,a5,+00000548
	c.j	0000000023063ABA
23063B10 89 47 01 45 E3 84 F4 FA 2C CC 85 47 E3 9F F4 F8 .G.E....,..G....
23063B20 65 B7                                           e.             

l23063B22:
	c.swsp	a3,00000084
	c.swsp	a2,00000004
	c.swsp	a1,00000080
	jal	ra,0000000023000C02
	c.lwsp	a2,000000A4
	c.lwsp	s0,00000084
	c.lwsp	tp,00000064
	c.j	0000000023063A7E

l23063B34:
	addi	s1,s0,+00000004
	c.mv	a0,s1
	jal	ra,0000000023060FD0
	c.lw	s0,44(a2)
	lui	a3,0004200F
	addi	a3,a3,+00000534
	c.lw	a3,0(a1)
	slli	a4,a2,00000002
	c.add	a4,a2
	c.li	a5,00000001
	lui	a0,00042018
	sll	a5,a5,a2
	c.slli	a4,02
	addi	a0,a0,+00000538
	c.or	a5,a1
	c.add	a0,a4
	c.mv	a1,s1
	c.sw	a3,0(a5)
	jal	ra,0000000023060F8A
	c.j	0000000023063AEA
23063B6E                                           3C 4C               <L
23063B70 85 07 3C CC 85 47 E3 92 F4 F4 B9 B7 3C 4C DD 8D ..<..G......<L..
23063B80 2C CC 85 47 E3 9B F4 F2 81 B7                   ,..G......     

;; vTaskNotifyGiveFromISR: 23063B8A
;;   Called from:
;;     230014BA (in ipc_emb_notify)
vTaskNotifyGiveFromISR proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	c.mv	s0,a0
	c.mv	s1,a1
	c.beqz	a0,0000000023063C44

l23063B9A:
	c.li	a5,00000002
	lbu	a4,s0,+0000005C
	sb	a5,s0,+0000005C
	c.lw	s0,88(a5)
	c.li	a3,00000001
	c.addi	a5,00000001
	c.sw	s0,88(a5)
	beq	a3,a4,0000000023063BBC

l23063BB0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23063BBC:
	c.lw	s0,40(a5)
	c.beqz	a5,0000000023063BC4

l23063BC0:
	jal	ra,0000000023000C02

l23063BC4:
	lui	a5,0004200F
	lw	a5,a5,+0000052C
	c.beqz	a5,0000000023063C0A

l23063BCE:
	lui	a0,00042018
	addi	a1,s0,+00000018
	addi	a0,a0,+000007E0
	jal	ra,0000000023060F8A

l23063BDE:
	lui	a5,0004200F
	lw	a5,a5,+00000514
	c.lw	s0,44(a4)
	c.lw	a5,44(a5)
	bgeu	a5,a4,0000000023063BB0

l23063BEE:
	c.beqz	s1,0000000023063BF4

l23063BF0:
	c.li	a5,00000001
	c.sw	s1,0(a5)

l23063BF4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	lui	a5,0004200F
	c.li	a4,00000001
	sw	a4,a5,+00000548
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23063C0A:
	addi	s2,s0,+00000004
	c.mv	a0,s2
	jal	ra,0000000023060FD0
	c.lw	s0,44(a2)
	lui	a3,0004200F
	addi	a3,a3,+00000534
	c.lw	a3,0(a1)
	slli	a4,a2,00000002
	c.add	a4,a2
	c.li	a5,00000001
	lui	a0,00042018
	sll	a5,a5,a2
	c.slli	a4,02
	addi	a0,a0,+00000538
	c.or	a5,a1
	c.add	a0,a4
	c.mv	a1,s2
	c.sw	a3,0(a5)
	jal	ra,0000000023060F8A
	c.j	0000000023063BDE

l23063C44:
	jal	ra,0000000023000C02
	c.j	0000000023063B9A

;; xTaskNotifyStateClear: 23063C4A
;;   Called from:
;;     23061E7E (in xStreamBufferSend)
;;     230620EC (in xStreamBufferReceive)
xTaskNotifyStateClear proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a0
	c.beqz	a0,0000000023063C9E

l23063C56:
	csrrci	zero,mstatus,00000008
	lui	s0,0004200F
	addi	s0,s0,+00000540
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023063C6A

l23063C66:
	jal	ra,00000000230623D2

l23063C6A:
	lbu	a5,s1,+0000005C
	c.li	a4,00000002
	c.li	a0,00000000
	bne	a4,a5,0000000023063C7C

l23063C76:
	sb	zero,s1,+0000005C
	c.li	a0,00000001

l23063C7C:
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023063C94

l23063C80:
	lui	a5,0004200F
	lw	a5,a5,+00000514
	c.lw	a5,68(a5)
	c.beqz	a5,0000000023063C94

l23063C8C:
	c.swsp	a0,00000084
	jal	ra,00000000230623E6
	c.lwsp	a2,00000044

l23063C94:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23063C9E:
	lui	a5,0004200F
	lw	s1,a5,+00000514
	c.j	0000000023063C56

;; prvCheckForValidListAndQueue: 23063CA8
;;   Called from:
;;     23063D88 (in xTimerCreateTimerTask)
;;     23063E0C (in xTimerCreate)
;;     23063E88 (in xTimerCreateStatic)
prvCheckForValidListAndQueue proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	addi	s0,s0,+00000558
	jal	ra,0000000023063658
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023063CD0

l23063CC2:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002306366C

l23063CD0:
	lui	a5,00042019
	addi	a0,a5,-000007A4
	addi	s2,a5,-000007A4
	jal	ra,0000000023060F70
	lui	a5,00042019
	addi	a0,a5,-00000790
	addi	s1,a5,-00000790
	jal	ra,0000000023060F70
	lui	a5,0004200F
	lui	a3,00042019
	lui	a2,00042019
	sw	s2,a5,+0000054C
	c.li	a4,00000000
	lui	a5,0004200F
	addi	a3,a3,-0000077C
	addi	a2,a2,-000007E4
	c.li	a1,00000010
	c.li	a0,00000004
	sw	s1,a5,+00000550
	jal	ra,000000002306120C
	c.sw	s0,0(a0)
	c.beqz	a0,0000000023063CC2

l23063D1E:
	lui	a1,000230C1
	addi	a1,a1,-0000010C
	jal	ra,0000000023061A52
	c.j	0000000023063CC2

;; prvInsertTimerInActiveList: 23063D2C
;;   Called from:
;;     230641C6 (in prvTimerTask)
prvInsertTimerInActiveList proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.sw	a0,4(a1)
	c.sw	a0,16(a0)
	c.mv	a5,a0
	bltu	a2,a1,0000000023063D4A

l23063D3A:
	c.lw	a0,24(a4)
	c.sub	a2,a3
	c.li	a0,00000001
	bltu	a2,a4,0000000023063D6C

l23063D44:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23063D4A:
	bgeu	a2,a3,0000000023063D54

l23063D4E:
	c.li	a0,00000001
	bgeu	a1,a3,0000000023063D44

l23063D54:
	lui	a4,0004200F
	lw	a0,a4,+0000054C
	addi	a1,a5,+00000004
	jal	ra,0000000023060FA0
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23063D6C:
	lui	a4,0004200F
	lw	a0,a4,+00000550
	addi	a1,a5,+00000004
	jal	ra,0000000023060FA0
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; xTimerCreateTimerTask: 23063D84
;;   Called from:
;;     23062952 (in vTaskStartScheduler)
xTimerCreateTimerTask proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	jal	ra,0000000023063CA8
	lui	a5,0004200F
	lw	a5,a5,+00000558
	c.beqz	a5,0000000023063DD4

l23063D96:
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	c.swsp	zero,00000080
	c.swsp	zero,00000004
	jal	ra,0000000023000BE6
	c.lwsp	s0,000000E4
	c.lwsp	tp,00000008
	c.lwsp	a2,00000084
	lui	a1,000230C1
	lui	a0,00023064
	c.li	a4,0000001F
	c.li	a3,00000000
	addi	a1,a1,-00000104
	addi	a0,a0,-00000010
	jal	ra,0000000023062604
	lui	a5,0004200F
	sw	a0,a5,+0000055C
	c.beqz	a0,0000000023063DD4

l23063DCC:
	c.lwsp	t3,00000020
	c.li	a0,00000001
	c.addi16sp	00000020
	c.jr	ra

l23063DD4:
	jal	ra,0000000023000C02
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; xTimerCreate: 23063DE0
;;   Called from:
;;     23048C94 (in k_timer_init)
xTimerCreate proc
	c.addi	sp,FFFFFFE0
	c.swsp	s5,00000080
	c.mv	s5,a0
	addi	a0,zero,+0000002C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.mv	s1,a1
	c.mv	s2,a2
	c.mv	s4,a3
	c.mv	s3,a4
	jal	ra,000000002306488A
	c.mv	s0,a0
	c.beqz	a0,0000000023063E36

l23063E06:
	sb	zero,a0,+00000028
	c.beqz	s1,0000000023063E4A

l23063E0C:
	jal	ra,0000000023063CA8
	addi	a0,s0,+00000004
	sw	s5,s0,+00000000
	c.sw	s0,24(s1)
	sw	s4,s0,+0000001C
	sw	s3,s0,+00000020
	jal	ra,0000000023060F84
	beq	s2,zero,0000000023063E36

l23063E2A:
	lbu	a5,s0,+00000028
	ori	a5,a5,+00000004
	sb	a5,s0,+00000028

l23063E36:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l23063E4A:
	jal	ra,0000000023000C02
	c.j	0000000023063E0C

;; xTimerCreateStatic: 23063E50
;;   Called from:
;;     2302486C (in stateConnectedIPNoEnter)
;;     23025488 (in stateDisconnect_enter)
;;     23025908 (in wifi_mgmr_start)
xTimerCreateStatic proc
	c.addi16sp	FFFFFFD0
	addi	a6,zero,+0000002C
	c.swsp	a6,00000084
	c.lwsp	a2,00000028
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.mv	s2,a0
	c.mv	s1,a1
	c.mv	s3,a2
	c.mv	s4,a3
	c.mv	s5,a4
	c.mv	s0,a5
	beq	a7,a6,0000000023063E7C

l23063E78:
	jal	ra,0000000023000C02

l23063E7C:
	c.lwsp	a2,000000E4
	c.beqz	s0,0000000023063ECC

l23063E80:
	c.li	a5,00000002
	sb	a5,s0,+00000028
	c.beqz	s1,0000000023063EC6

l23063E88:
	jal	ra,0000000023063CA8
	addi	a0,s0,+00000004
	sw	s2,s0,+00000000
	c.sw	s0,24(s1)
	sw	s4,s0,+0000001C
	sw	s5,s0,+00000020
	jal	ra,0000000023060F84
	beq	s3,zero,0000000023063EB2

l23063EA6:
	lbu	a5,s0,+00000028
	ori	a5,a5,+00000004
	sb	a5,s0,+00000028

l23063EB2:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l23063EC6:
	jal	ra,0000000023000C02
	c.j	0000000023063E88

l23063ECC:
	jal	ra,0000000023000C02
	c.j	0000000023063EB2

;; xTimerGenericCommand: 23063ED2
;;   Called from:
;;     23024654 (in stateConnectedIPNoExit)
;;     23024668 (in stateConnectedIPNoExit)
;;     2302487E (in stateConnectedIPNoEnter)
;;     23025072 (in stateDisconnect_exit)
;;     23025080 (in stateDisconnect_exit)
;;     230254A6 (in stateDisconnect_enter)
;;     23025926 (in wifi_mgmr_start)
;;     23048CC6 (in k_timer_stop)
;;     23048CF6 (in k_timer_delete)
;;     23048D60 (in k_timer_start)
;;     23048D82 (in k_timer_start)
;;     23048DA0 (in k_timer_start)
;;     23063FE4 (in prvSwitchTimerLists)
;;     230641D6 (in prvTimerTask)
xTimerGenericCommand proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.mv	s1,a0
	c.mv	s2,a3
	c.mv	s3,a4
	c.beqz	a0,0000000023063F3E

l23063EE6:
	lui	s0,0004200F
	addi	s0,s0,+00000558
	c.lw	s0,0(a5)
	c.li	a0,00000000
	c.beqz	a5,0000000023063F16

l23063EF4:
	c.swsp	a1,00000008
	c.swsp	a2,00000088
	c.swsp	s1,0000000C
	c.li	a3,00000005
	blt	a3,a1,0000000023063F24

l23063F00:
	jal	ra,000000002306337C
	c.li	a5,00000002
	beq	a0,a5,0000000023063F4C

l23063F0A:
	c.lw	s0,0(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.addi4spn	a1,00000010
	jal	ra,0000000023061344

l23063F16:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l23063F24:
	c.mv	a2,s2
	c.addi4spn	a1,00000010
	c.li	a3,00000000
	c.mv	a0,a5
	jal	ra,0000000023061550
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l23063F3E:
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	jal	ra,0000000023000C02
	c.lwsp	a2,00000084
	c.lwsp	s0,00000064
	c.j	0000000023063EE6

l23063F4C:
	c.lw	s0,0(a0)
	c.mv	a2,s3
	c.addi4spn	a1,00000010
	c.li	a3,00000000
	jal	ra,0000000023061344
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

;; prvSwitchTimerLists: 23063F66
;;   Called from:
;;     23064160 (in prvTimerTask)
;;     2306416E (in prvTimerTask)
prvSwitchTimerLists proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,0004200F
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	addi	s2,s2,+0000054C
	c.j	0000000023063F9C

l23063F7C:
	c.lw	a5,12(a5)
	c.lw	a5,12(s0)
	lw	s3,a5,+00000000
	addi	s1,s0,+00000004
	c.mv	a0,s1
	jal	ra,0000000023060FD0
	c.lw	s0,32(a5)
	c.mv	a0,s0
	c.jalr	a5
	lbu	a5,s0,+00000028
	c.andi	a5,00000004
	c.bnez	a5,0000000023063FC2

l23063F9C:
	lw	a5,s2,+00000000
	c.lw	a5,0(a4)
	c.bnez	a4,0000000023063F7C

l23063FA4:
	lui	a4,0004200F
	addi	a4,a4,+00000550
	c.lw	a4,0(a3)
	c.sw	a4,0(a5)
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	sw	a3,s2,+00000000
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23063FC2:
	c.lw	s0,24(a5)
	c.li	a4,00000000
	c.li	a3,00000000
	c.add	a5,s3
	c.mv	a2,s3
	c.li	a1,00000000
	c.mv	a0,s0
	bgeu	s3,a5,0000000023063FE4

l23063FD4:
	lw	a0,s2,+00000000
	c.sw	s0,4(a5)
	c.sw	s0,16(s0)
	c.mv	a1,s1
	jal	ra,0000000023060FA0
	c.j	0000000023063F9C

l23063FE4:
	jal	ra,0000000023063ED2
	c.bnez	a0,0000000023063F9C

l23063FEA:
	jal	ra,0000000023000C02
	c.j	0000000023063F9C

;; prvTimerTask: 23063FF0
prvTimerTask proc
	c.addi16sp	FFFFFFB0
	c.swsp	s1,000000A0
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	lui	s4,0004200F
	lui	s1,0004200F
	lui	s3,0004200F
	lui	s6,000230C1
	lui	s7,0004200F
	c.swsp	s5,00000098
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	s8,00000014
	addi	s4,s4,+0000054C
	addi	s1,s1,+00000554
	addi	s3,s3,+00000558
	addi	s6,s6,-00000134
	addi	s7,s7,+00000550
	c.li	s5,00000009

l23064030:
	lw	a5,s4,+00000000
	lw	s2,a5,+00000000
	beq	s2,zero,0000000023064142

l2306403C:
	c.lw	a5,12(a5)
	lw	s2,a5,+00000000
	jal	ra,0000000023062994
	jal	ra,00000000230629A4
	c.lw	s1,0(a5)
	c.mv	s0,a0
	bltu	a0,a5,0000000023064160

l23064052:
	c.sw	s1,0(a0)
	c.li	a2,00000000
	bgeu	a0,s2,0000000023064176

l2306405A:
	lw	a0,s3,+00000000
	sub	a1,s2,s0
	jal	ra,0000000023061A7A
	jal	ra,0000000023062B70
	c.bnez	a0,0000000023064070

l2306406C:
	ecall

l23064070:
	lw	a0,s3,+00000000
	c.li	a2,00000000
	c.addi4spn	a1,00000010
	jal	ra,0000000023061684
	c.beqz	a0,0000000023064030

l2306407E:
	c.lwsp	a6,000000E4
	c.lwsp	s8,00000004
	blt	a5,zero,0000000023064130

l23064086:
	c.lw	s0,20(a5)
	c.beqz	a5,0000000023064092

l2306408A:
	addi	a0,s0,+00000004
	jal	ra,0000000023060FD0

l23064092:
	jal	ra,00000000230629A4
	c.lw	s1,0(a5)
	bltu	a0,a5,000000002306416C

l2306409C:
	c.lwsp	a6,000000E4
	c.sw	s1,0(a0)
	bltu	s5,a5,0000000023064070

l230640A4:
	c.slli	a5,02
	c.add	a5,s6
	c.lw	a5,0(a5)
	c.jr	a5
230640AC                                     83 47 84 02             .G..
230640B0 D2 45 93 E7 17 00 23 04 F4 02 0C CC 63 85 05 0E .E....#.....c...
230640C0 AA 86 2A 86 AA 95 22 85 EF F0 5F C6 55 B7 83 47 ..*..."..._.U..G
230640D0 84 02 F9 9B 23 04 F4 02 61 BF 83 47 84 02 13 F7 ....#...a..G....
230640E0 27 00 61 CB F9 9B 23 04 F4 02 59 B7 83 47 84 02 '.a...#...Y..G..
230640F0 0C 4C D2 46 93 E7 17 00 2A 86 23 04 F4 02 B6 95 .L.F....*.#.....
23064100 22 85 EF F0 BF C2 2D D5 1C 50 22 85 82 97 83 47 ".....-..P"....G
23064110 84 02 91 8B B1 DF 1C 4C 52 46 01 47 81 46 3E 96 .......LRF.G.F>.
23064120 81 45 22 85 EF F0 FF DA 21 F5 EF C0 99 AD 89 B7 .E".....!.......

l23064130:
	c.lwsp	s4,000000E4
	c.lwsp	t3,00000064
	c.mv	a0,s0
	c.jalr	a5
	c.lwsp	a6,000000E4
	blt	a5,zero,0000000023064070

l2306413E:
	c.lwsp	s8,00000004
	c.j	0000000023064086

l23064142:
	jal	ra,0000000023062994
	jal	ra,00000000230629A4
	c.lw	s1,0(a5)
	c.mv	s0,a0
	bltu	a0,a5,0000000023064160

l23064152:
	lw	a5,s7,+00000000
	c.sw	s1,0(s0)
	c.lw	a5,0(a2)
	sltiu	a2,a2,+00000001
	c.j	000000002306405A

l23064160:
	jal	ra,0000000023063F66
	c.sw	s1,0(s0)
	jal	ra,0000000023062B70
	c.j	0000000023064070

l2306416C:
	c.swsp	a0,00000084
	jal	ra,0000000023063F66
	c.lwsp	a2,00000044
	c.j	000000002306409C

l23064176:
	jal	ra,0000000023062B70
	lw	a5,s4,+00000000
	c.lw	a5,12(a5)
	lw	s8,a5,+0000000C
	addi	a0,s8,+00000004
	jal	ra,0000000023060FD0
	lbu	a5,s8,+00000028
	andi	a4,a5,+00000004
	c.bnez	a4,00000000230641BA

l23064196:
	c.andi	a5,FFFFFFFE
	sb	a5,s8,+00000028

l2306419C:
	lw	a5,s8,+00000020
	c.mv	a0,s8
	c.jalr	a5
	c.j	0000000023064070
230641A6                   2A C6 EF C0 B9 A5 0C 4C 32 45       *......L2E
230641B0 01 BF 22 85 EF 00 E0 7B 65 BD                   .."....{e.     

l230641BA:
	lw	a1,s8,+00000018
	c.mv	a3,s2
	c.mv	a2,s0
	c.add	a1,s2
	c.mv	a0,s8
	jal	ra,0000000023063D2C
	c.beqz	a0,000000002306419C

l230641CC:
	c.li	a4,00000000
	c.li	a3,00000000
	c.mv	a2,s2
	c.li	a1,00000000
	c.mv	a0,s8
	jal	ra,0000000023063ED2
	c.bnez	a0,000000002306419C

l230641DC:
	jal	ra,0000000023000C02
	c.j	000000002306419C

;; pvTimerGetTimerID: 230641E2
;;   Called from:
;;     23024814 (in ip_obtaining_timeout)
;;     23024FE6 (in __reload_tsen)
;;     230250AA (in disconnect_retry)
pvTimerGetTimerID proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.beqz	a0,0000000023064200

l230641EC:
	jal	ra,0000000023063658
	c.lw	s0,28(s0)
	jal	ra,000000002306366C
	c.lwsp	a2,00000020
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23064200:
	jal	ra,0000000023000C02
	c.j	00000000230641EC

;; vPortSetupTimerInterrupt: 23064206
;;   Called from:
;;     23064268 (in xPortStartScheduler)
vPortSetupTimerInterrupt proc
	lui	a5,0000200C

l2306420A:
	lw	a3,a5,-00000004
	lw	a2,a5,-00000008
	lw	a4,a5,-00000004
	bne	a4,a3,000000002306420A

l2306421A:
	c.lui	a3,00002000
	addi	a3,a3,+00000710
	c.add	a3,a2
	c.lui	a5,00005000
	sltu	a6,a3,a2
	c.mv	a0,a3
	addi	a5,a5,-000001E0
	lui	a3,00002004
	c.sw	a3,0(a0)
	c.add	a5,a2
	add	a1,a6,a4
	c.sw	a3,4(a1)
	sltu	a2,a5,a2
	lui	a3,0004200F
	addi	a3,a3,+00000568
	c.add	a4,a2
	c.sw	a3,0(a5)
	c.sw	a3,4(a4)
	c.jr	ra

;; xPortStartScheduler: 23064250
;;   Called from:
;;     2306297A (in vTaskStartScheduler)
xPortStartScheduler proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	zero,00000084
	csrrs	a5,mtvec,t0
	c.swsp	a5,00000084
	lui	a5,00042040
	addi	a5,a5,+00000000
	c.andi	a5,00000007
	c.bnez	a5,000000002306428A

l23064268:
	jal	ra,0000000023064206
	c.lui	a5,00001000
	addi	a5,a5,-00000780
	csrrs	zero,mie,tp
	lui	a5,00002800
	c.li	a4,00000001
	sb	a4,a5,+00000407
	c.jal	0000000023064600
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2306428A:
	jal	ra,0000000023000C02
	c.j	0000000023064268
23064290 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
; ...
23064300 13 01 81 F8 06 C2 16 C4 1A C6 1E C8 22 CA 26 CC ............".&.
23064310 2A CE 2E D0 32 D2 36 D4 3A D6 3E D8 42 DA 46 DC *...2.6.:.>.B.F.
23064320 4A DE CE C0 D2 C2 D6 C4 DA C6 DE C8 E2 CA E6 CC J...............
23064330 EA CE EE D0 F2 D2 F6 D4 FA D6 FE D8 F3 22 00 30 .............".0
23064340 96 DA 13 01 81 F7 02 E2 06 E4 0A E6 0E E8 12 EA ................
23064350 16 EC 1A EE 1E F0 22 F2 26 F4 2A F6 2E F8 32 FA ......".&.*...2.
23064360 36 FC 3A FE BE E0 C2 E2 C6 E4 CA E6 CE E8 D2 EA 6.:.............
23064370 D6 EC DA EE DE F0 E2 F2 E6 F4 EA F6 EE F8 F2 FA ................
23064380 F6 FC FA FE 7E E1 F3 22 30 00 16 C3 97 B2 FA 1E ....~.."0.......
23064390 83 A2 42 92 03 A3 02 00 05 03 23 A0 62 00 97 B2 ..B.......#.b...
230643A0 FA 1E 83 A2 62 17 23 A0 22 00 73 25 20 34 B7 02 ....b.#.".s% 4..
230643B0 80 80 93 82 F2 FF 33 75 55 00 F3 25 10 34 13 56 ......3uU..%.4.V
230643C0 F5 01 25 CA 2E C0 93 02 10 00 FE 02 13 83 72 00 ..%...........r.
230643D0 63 1A 65 04 97 72 06 00 83 A2 82 6E 17 B3 FA 1E c.e..r.....n....
230643E0 03 23 83 8D 83 23 03 00 03 2E 43 00 23 A0 72 00 .#...#....C.#.r.
230643F0 23 A2 C2 01 97 72 06 00 83 A2 C2 6C B3 8E 72 00 #....r.....l..r.
23064400 33 BF 7E 00 B3 0F EE 01 23 20 D3 01 23 22 F3 01 3.~.....# ..#"..
23064410 17 71 06 00 03 21 41 6B EF E0 8F DB 31 C5 EF E0 .q...!Ak....1...
23064420 9F 8E 99 A0 17 71 06 00 03 21 01 6A EF 10 00 3A .....q...!.j...:
23064430 25 A8 91 05 2E C0 AD 42 63 19 55 00 17 71 06 00 %......Bc.U..q..
23064440 03 21 81 68 EF E0 3F 8C 05 A0 73 25 20 34 F3 25 .!.h..?...s% 4.%
23064450 10 34 73 26 30 34 B3 06 01 00 EF 10 00 3C 29 A0 .4s&04.......<).
23064460 02 90 FD BF 02 90 FD BF 97 B2 FA 1E 83 A2 82 84 ................
23064470 03 A3 02 00 7D 13 23 A0 62 00 17 B3 FA 1E 03 23 ....}.#.b......#
23064480 A3 09 03 21 03 00 82 42 73 90 12 34 12 60 A2 60 ...!...Bs..4.`.`
23064490 32 61 C2 61 52 62 E2 62 72 63 82 73 12 74 A2 74 2a.aRb.brc.s.t.t
230644A0 32 75 C2 75 52 76 E2 76 72 77 86 67 16 68 A6 68 2u.uRv.vrw.g.h.h
230644B0 36 69 C6 69 56 6A E6 6A 76 6B 86 7B 16 7C A6 7C 6i.iVj.jvk.{.|.|
230644C0 36 7D C6 7D 56 7E E6 7E 76 7F 8A 6F 9A 42 73 90 6}.}V~.~v..o.Bs.
230644D0 32 00 13 01 81 08 D6 52 73 90 02 30 92 40 A2 42 2......Rs..0.@.B
230644E0 32 43 C2 43 52 44 E2 44 72 45 82 55 12 56 A2 56 2C.CRD.DrE.U.V.V
230644F0 32 57 C2 57 52 58 E2 58 72 59 86 49 16 4A A6 4A 2W.WRX.XrY.I.J.J
23064500 36 4B C6 4B 56 4C E6 4C 76 4D 86 5D 16 5E A6 5E 6K.KVL.LvM.].^.^
23064510 36 5F C6 5F 13 01 81 07 73 00 20 30 13 00 00 00 6_._....s. 0....
23064520 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23064530 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23064540 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23064550 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23064560 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23064570 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23064580 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
23064590 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
230645A0 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
230645B0 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
230645C0 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
230645D0 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
230645E0 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................
230645F0 13 00 00 00 13 00 00 00 13 00 00 00 13 00 00 00 ................

;; fn23064600: 23064600
;;   Called from:
;;     23064280 (in xPortStartScheduler)
fn23064600 proc
	auipc	t0,00000000
	addi	t0,t0,-00000300
	c.addi	t0,00000002
	csrrw	zero,mtvec,t0
	auipc	sp,0001EFAB
	lw	sp,sp,-000000FA
	c.lwsp	zero,00000040
	c.lwsp	zero,00000020
	c.ldsp	tp,00000000
	c.ldsp	s0,00000040
	c.ldsp	a2,00000080
	c.ldsp	a6,000000C0
	c.ldsp	s4,00000100
	c.ldsp	s8,00000140
	c.ldsp	t3,00000180
	c.ldsp	zero,000003E0
	c.ldsp	tp,00000228
	c.ldsp	s0,00000268
	c.ldsp	a2,000002A8
	c.ldsp	a6,000002E8
	c.ldsp	s4,00000328
	c.ldsp	s8,00000368
	c.ldsp	t3,000003A8
	c.ldsp	ra,000001C8
	c.ldsp	t0,00000010
	c.ldsp	s1,00000050
	c.ldsp	a3,00000090
	c.ldsp	a7,000000D0
	c.ldsp	s5,00000110
	c.ldsp	s9,00000150
	c.ldsp	t4,00000190
	c.ldsp	ra,000003F0
	c.ldsp	t0,00000238
	c.ldsp	s1,00000278
	c.ldsp	a3,000002B8
	c.ldsp	a7,000002F8
	c.ldsp	s5,00000338
	c.ldsp	s9,00000378
	c.ldsp	t4,000003B8
	c.ldsp	sp,000001D8
	c.lwsp	t1,000000A0
	csrrw	zero,fcsr,gp
	addi	sp,sp,+00000088
	c.lwsp	s5,000001B0
	csrrw	zero,mstatus,zero
	c.lwsp	s0,000000A0
	c.lwsp	a2,000000C0
	c.lwsp	a6,000000E0
	c.lwsp	s4,00000004
	c.lwsp	s8,00000024
	c.lwsp	t3,00000044
	c.lwsp	zero,00000174
	c.lwsp	tp,00000194
	c.lwsp	s0,000001B4
	c.lwsp	a2,000001D4
	c.lwsp	a6,000001F4
	c.lwsp	s4,00000118
	c.lwsp	s8,00000138
	c.lwsp	t3,00000158
	c.lwsp	ra,00000068
	c.lwsp	t0,00000088
	c.lwsp	s1,000000A8
	c.lwsp	a3,000000C8
	c.lwsp	a7,000000E8
	c.lwsp	s5,0000000C
	c.lwsp	s9,0000002C
	c.lwsp	t4,0000004C
	c.lwsp	ra,0000017C
	c.lwsp	t0,0000019C
	c.lwsp	s1,000001BC
	c.lwsp	a3,000001DC
	c.lwsp	a7,000001FC
	addi	sp,sp,+00000078
	c.jr	ra
230646A6                   13 00 00 00 13 00 00 00 13 00       ..........
230646B0 00 00 13 00 00 00 13 00 00 00 13 00 00 00 13 00 ................
230646C0 00 00 13 00 00 00 13 00 00 00 13 00 00 00 13 00 ................
230646D0 00 00 13 00 00 00 13 00 00 00 13 00 00 00 13 00 ................
230646E0 00 00 13 00 00 00 13 00 00 00 13 00 00 00 13 00 ................
230646F0 00 00 13 00 00 00 13 00 00 00 13 00 00 00 01 00 ................

;; fn23064700: 23064700
;;   Called from:
;;     230622B0 (in prvInitialiseNewTask.isra.2)
fn23064700 proc
	csrrs	t0,mstatus,zero
	lui	t1,00000002
	addi	t1,t1,-00000780
	or	t0,t0,t1
	andi	t0,t0,-00000009
	c.addi	a0,FFFFFFFC
	sw	t0,a0,+00000000
	addi	a0,a0,-00000058
	c.sw	a0,0(a2)
	c.addi	a0,FFFFFFE8
	sw	zero,a0,+00000000
	addi	t0,zero,+00000022

l2306472A:
	beq	t0,zero,0000000023064738

l2306472E:
	c.addi	a0,FFFFFFFC
	sw	zero,a0,+00000000
	c.addi	t0,FFFFFFFF
	c.j	000000002306472A

l23064738:
	c.addi	a0,FFFFFFFC
	c.sw	a0,0(a1)
	c.jr	ra
2306473E                                           00 00               ..
23064740 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
; ...
23064830 00 00 00 00 00 00 00 00                         ........       

;; prvInsertBlockIntoFreeList: 23064838
;;   Called from:
;;     23064964 (in pvPortMalloc)
;;     230649F2 (in vPortFree)
prvInsertBlockIntoFreeList proc
	lui	a4,0004200F
	addi	a4,a4,+00000580
	c.j	0000000023064844

l23064842:
	c.mv	a4,a5

l23064844:
	c.lw	a4,0(a5)
	bltu	a5,a0,0000000023064842

l2306484A:
	c.lw	a4,4(a2)
	c.lw	a0,4(a3)
	add	a1,a4,a2
	beq	a0,a1,0000000023064882

l23064856:
	add	a2,a0,a3
	beq	a5,a2,0000000023064868

l2306485E:
	c.sw	a0,0(a5)

l23064860:
	beq	a0,a4,0000000023064866

l23064864:
	c.sw	a4,0(a0)

l23064866:
	c.jr	ra

l23064868:
	lui	a2,0004200F
	lw	a2,a2,+00000570
	beq	a5,a2,000000002306485E

l23064874:
	c.lw	a5,4(a5)
	c.add	a3,a5
	c.sw	a0,4(a3)
	c.lw	a4,0(a5)
	c.lw	a5,0(a5)
	c.sw	a0,0(a5)
	c.j	0000000023064860

l23064882:
	c.add	a3,a2
	c.sw	a4,4(a3)
	c.mv	a0,a4
	c.j	0000000023064856

;; pvPortMalloc: 2306488A
;;   Called from:
;;     230010B8 (in blsync_ble_start)
;;     230191E4 (in Encrypt_keyData)
;;     230191F0 (in Encrypt_keyData)
;;     23019398 (in cm_AllocAPResources)
;;     230193A6 (in cm_AllocAPResources)
;;     230193EE (in cm_InitConnection)
;;     2302245C (in bl_send_msg)
;;     230224F8 (in bl_msg_zalloc.constprop.3)
;;     230242FA (in bl_ipc_init)
;;     23028156 (in wifi_mgmr_all_ap_scan)
;;     23048DE8 (in k_malloc)
;;     2305ABF8 (in ota_tcp_cmd.part.0)
;;     2305BB9C (in __malloc)
;;     2305DCAE (in ps_cmd)
;;     2305DEEA (in ls_cmd)
;;     2305F0F6 (in dns_server_init)
;;     23060B4A (in psm_test_cmd)
;;     23060B52 (in psm_test_cmd)
;;     230612AC (in xQueueGenericCreate)
;;     230612C4 (in xQueueGenericCreate)
;;     23061CBA (in xStreamBufferGenericCreate)
;;     230626C8 (in xTaskCreate)
;;     230626D4 (in xTaskCreate)
;;     230636BA (in vTaskList)
;;     23063DFE (in xTimerCreate)
;;     2306534E (in bl_dma_irq_register)
;;     2306543E (in bl_dma_init)
;;     230654A0 (in bl_dma_init)
;;     23066524 (in dev_uart_init)
;;     23066598 (in dev_uart_init)
;;     23069FB8 (in looprt_evt_schedule)
;;     2306A434 (in loopset_led_trigger)
;;     230775EC (in iperf_server_udp_entry)
;;     23077620 (in iperf_client_udp_entry)
;;     23077654 (in iperf_server_entry)
;;     23077688 (in iperf_client_tcp_entry)
;;     23077A50 (in iperf_client_udp)
;;     23077CCC (in iperf_server)
;;     23077F24 (in iperf_client_tcp)
;;     2307B27E (in inode_reserve)
;;     2307B840 (in aos_loop_init)
;;     2307B8C2 (in aos_poll_read_fd)
;;     2307B8CC (in aos_poll_read_fd)
;;     2307B992 (in aos_post_delayed_action)
;;     2307BC9A (in aos_task_new)
;;     2307BCA2 (in aos_task_new)
;;     2307BCAA (in aos_task_new)
;;     2307BEF0 (in aos_malloc)
;;     2307BEFC (in malloc)
;;     2307C7E6 (in at_dump_noend)
;;     2307CF6C (in http_url_req)
;;     2307FE10 (in client_ssl_config_path)
;;     2307FE1A (in client_ssl_config_path)
;;     2307FE24 (in client_ssl_config_path)
;;     230800BE (in client_ssl_set_alpn)
;;     2308144A (in bl_cipsslcsni)
;;     230849DA (in bl_mtd_open)
;;     23085974 (in hal_hbn_init)
;;     230859D4 (in hal_hbn_init)
;;     23085A58 (in hal_hbn_init)
;;     230904B2 (in mycalloc)
pvPortMalloc proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200F
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	addi	s1,s1,+00000570
	c.lw	s1,0(a5)
	c.mv	s0,a0
	c.beqz	a5,000000002306496C

l230648A6:
	jal	ra,0000000023062994
	lui	a5,0004200F
	lw	s2,a5,+00000574
	and	a5,s2,s0
	c.bnez	a5,00000000230648BA

l230648B8:
	c.bnez	s0,00000000230648D6

l230648BA:
	jal	ra,0000000023062B70

l230648BE:
	jal	ra,0000000023000BAC
	c.li	s1,00000000

l230648C4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l230648D6:
	addi	a5,s0,+00000008
	andi	a4,a5,+00000007
	c.bnez	a4,0000000023064956

l230648E0:
	c.beqz	a5,00000000230648BA

l230648E2:
	lui	s3,0004200F
	addi	s3,s3,+00000578
	lw	s4,s3,+00000000
	bltu	s4,a5,00000000230648BA

l230648F2:
	lui	a3,0004200F
	lw	s0,a3,+00000580
	addi	a3,a3,+00000580
	c.j	0000000023064908

l23064900:
	c.lw	s0,0(a4)
	c.beqz	a4,000000002306490E

l23064904:
	c.mv	a3,s0
	c.mv	s0,a4

l23064908:
	c.lw	s0,4(a4)
	bltu	a4,a5,0000000023064900

l2306490E:
	c.lw	s1,0(a4)
	beq	a4,s0,00000000230648BA

l23064914:
	c.lw	s0,0(a4)
	c.lw	a3,0(s1)
	c.li	a2,00000010
	c.sw	a3,0(a4)
	c.lw	s0,4(a4)
	c.addi	s1,00000008
	sub	a3,a4,a5
	bltu	a2,a3,000000002306495C

l23064928:
	lui	a5,0004200F
	addi	a5,a5,+0000057C
	c.lw	a5,0(a3)
	sub	s4,s4,a4
	sw	s4,s3,+00000000
	bgeu	s4,a3,0000000023064942

l2306493E:
	sw	s4,a5,+00000000

l23064942:
	or	s2,s2,a4
	sw	s2,s0,+00000004
	sw	zero,s0,+00000000
	jal	ra,0000000023062B70
	c.bnez	s1,00000000230648C4

l23064954:
	c.j	00000000230648BE

l23064956:
	c.andi	a5,FFFFFFF8
	c.addi	a5,00000008
	c.j	00000000230648E0

l2306495C:
	add	a0,s0,a5
	c.sw	a0,4(a3)
	c.sw	s0,4(a5)
	jal	ra,0000000023064838
	c.lw	s0,4(a4)
	c.j	0000000023064928

l2306496C:
	jal	ra,0000000023000C02
	c.j	00000000230648A6

;; vPortFree: 23064972
;;   Called from:
;;     2300105E (in app_delayed_action_bleadvstop)
;;     23018B70 (in GeneratePWKMsg3)
;;     23018B76 (in GeneratePWKMsg3)
;;     23018CB0 (in GenerateApEapolMsg)
;;     23018CB8 (in GenerateApEapolMsg)
;;     2301924C (in Encrypt_keyData)
;;     23019252 (in Encrypt_keyData)
;;     23019412 (in cm_InitConnection)
;;     23019492 (in cm_DeleteConnection)
;;     23019498 (in cm_DeleteConnection)
;;     230194AE (in cm_DeleteConnection)
;;     230223EA (in bl_send_msg)
;;     23022466 (in bl_send_msg)
;;     230224D6 (in bl_send_msg)
;;     2302817E (in wifi_mgmr_all_ap_scan)
;;     2302871C (in cmd_complete.isra.1)
;;     230288A8 (in cmd_mgr_llind)
;;     230289C2 (in cmd_mgr_queue)
;;     23048DEC (in k_free)
;;     2305AC38 (in ota_tcp_cmd.part.0)
;;     2305AD2C (in ota_tcp_cmd.part.0)
;;     2305BC5A (in __free)
;;     2305DD12 (in ps_cmd)
;;     2305DFA0 (in ls_cmd)
;;     23060B84 (in psm_test_cmd)
;;     23060B8E (in psm_test_cmd)
;;     23060F60 (in vEventGroupDelete)
;;     230619F4 (in vQueueDelete)
;;     23061A40 (in vQueueDelete)
;;     23061DCA (in vStreamBufferDelete)
;;     23061DF0 (in vStreamBufferDelete)
;;     230622FC (in prvDeleteTCB)
;;     23062308 (in prvDeleteTCB)
;;     2306230C (in prvDeleteTCB)
;;     23062718 (in xTaskCreate)
;;     23063768 (in vTaskList)
;;     230776D6 (in iperf_server_udp)
;;     23077A58 (in iperf_client_udp)
;;     23077CE2 (in iperf_server)
;;     23077D30 (in iperf_server)
;;     23077F2C (in iperf_client_tcp)
;;     2307B316 (in aos_register_driver)
;;     2307B39C (in aos_register_fs)
;;     2307B8E4 (in aos_poll_read_fd)
;;     2307B8EA (in aos_poll_read_fd)
;;     2307B934 (in aos_poll_read_fd)
;;     2307B94A (in aos_poll_read_fd)
;;     2307BADE (in aos_loop_run)
;;     2307BC66 (in dfl_entry)
;;     2307BD0C (in aos_task_new)
;;     2307BD12 (in aos_task_new)
;;     2307BD18 (in aos_task_new)
;;     2307BEF4 (in free)
;;     2307BEF8 (in aos_free)
;;     2307C81A (in at_dump_noend)
;;     2307D05E (in http_url_req)
;;     2307D08E (in http_url_req)
;;     2307D4B2 (in scan)
;;     2307FE36 (in client_ssl_config_path)
;;     2307FE3E (in client_ssl_config_path)
;;     2307FE48 (in client_ssl_config_path)
;;     2307FEE4 (in client_ssl_config_path)
;;     2307FEEC (in client_ssl_config_path)
;;     2307FEF4 (in client_ssl_config_path)
;;     2307FF50 (in client_ssl_config_path)
;;     2307FF56 (in client_ssl_config_path)
;;     2307FF68 (in client_ssl_config_path)
;;     2307FF72 (in client_ssl_config_path)
;;     2307FF78 (in client_ssl_config_path)
;;     2307FF7E (in client_ssl_config_path)
;;     2308018E (in client_ssl_set_alpn)
;;     23081284 (in bl_cipsslcconf_path)
;;     23081296 (in bl_cipsslcconf_path)
;;     230812A8 (in bl_cipsslcconf_path)
;;     230812E0 (in bl_cipsslcconf_path)
;;     230812F2 (in bl_cipsslcconf_path)
;;     23081304 (in bl_cipsslcconf_path)
;;     2308132A (in bl_cipsslcconf_path)
;;     2308133C (in bl_cipsslcconf_path)
;;     2308134E (in bl_cipsslcconf_path)
;;     2308136A (in bl_cipsslcconf_path)
;;     2308137C (in bl_cipsslcconf_path)
;;     2308138E (in bl_cipsslcconf_path)
;;     23081430 (in bl_cipsslcsni)
;;     23081468 (in bl_cipsslcsni)
;;     230814AE (in bl_cipsslcalpn)
;;     23081514 (in bl_cipsslcalpn)
;;     23084B5E (in bl_mtd_close)
;;     230850AE (in bloop_run)
;;     230884F2 (in rsa_free_wrap)
;;     230885DE (in eckey_free_wrap)
;;     230895CA (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     230895D0 (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     2308ACAC (in ssl_flight_free)
;;     2308ACB2 (in ssl_flight_free)
;;     2308B9AA (in mbedtls_ssl_handshake_free)
;;     2308B9B4 (in mbedtls_ssl_handshake_free)
;;     2308B9BA (in mbedtls_ssl_handshake_free)
;;     2308BA06 (in ssl_handshake_wrapup_free_hs_transform)
;;     2308BA18 (in ssl_handshake_wrapup_free_hs_transform)
;;     2308BA5A (in mbedtls_ssl_session_free)
;;     2308BA60 (in mbedtls_ssl_session_free)
;;     2308BAAE (in mbedtls_ssl_handshake_wrapup)
;;     2308BBB8 (in ssl_handshake_init)
;;     2308BBBE (in ssl_handshake_init)
;;     2308BBC4 (in ssl_handshake_init)
;;     2308BD54 (in mbedtls_ssl_setup)
;;     2308BDAE (in mbedtls_ssl_free)
;;     2308BDC2 (in mbedtls_ssl_free)
;;     2308BDD0 (in mbedtls_ssl_free)
;;     2308BDEA (in mbedtls_ssl_free)
;;     2308BDF0 (in mbedtls_ssl_free)
;;     2308BDF6 (in mbedtls_ssl_free)
;;     2308BE04 (in mbedtls_ssl_free)
;;     2308BE22 (in mbedtls_ssl_free)
;;     2308BF3E (in mbedtls_ssl_config_free)
;;     2308C260 (in mbedtls_ssl_write_record)
;;     2308D10E (in mbedtls_ssl_prepare_handshake_record)
;;     2308E5DA (in mbedtls_ssl_parse_certificate)
;;     2308FC8C (in mbedtls_x509_crt_free)
;;     2308FCAC (in mbedtls_x509_crt_free)
;;     2308FCD4 (in mbedtls_x509_crt_free)
;;     2308FCEC (in mbedtls_x509_crt_free)
;;     2308FD02 (in mbedtls_x509_crt_free)
;;     2308FD18 (in mbedtls_x509_crt_free)
;;     2309036A (in mbedtls_x509_crt_parse_der)
;;     23091E5A (in mbedtls_mpi_free)
;;     23091ED4 (in mbedtls_mpi_grow)
;;     23091F34 (in mbedtls_mpi_shrink)
;;     23093BB8 (in gcm_ctx_free)
;;     23093BFC (in aes_ctx_free)
;;     23094B32 (in ecp_normalize_jac_many)
;;     23094D66 (in mbedtls_ecp_group_free)
;;     2309533E (in ecp_mul_comb)
;;     23096570 (in mbedtls_md_free)
;;     2309685C (in md5_ctx_free)
;;     230968AA (in sha1_ctx_free)
;;     230968F8 (in sha224_ctx_free)
;;     23096F50 (in mbedtls_pem_read_buffer)
;;     23096F82 (in mbedtls_pem_read_buffer)
;;     23096FC6 (in mbedtls_pem_read_buffer)
;;     23097020 (in mbedtls_pem_free)
;;     23097026 (in mbedtls_pem_free)
vPortFree proc
	c.beqz	a0,0000000023064A02

l23064974:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,0004200F
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	s1,s1,+00000574
	lw	a4,a0,-00000004
	c.lw	s1,0(a5)
	c.mv	s0,a0
	and	a3,a4,a5
	c.beqz	a3,00000000230649B8

l23064992:
	lw	a3,a0,-00000008
	c.beqz	a3,00000000230649CE

l23064998:
	jal	ra,0000000023000C02
	lw	a4,s0,-00000004
	c.lw	s1,0(a5)
	and	a3,a4,a5
	c.beqz	a3,00000000230649AE

l230649A8:
	lw	a3,s0,-00000008
	c.beqz	a3,00000000230649CE

l230649AE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230649B8:
	jal	ra,0000000023000C02
	lw	a5,s0,-00000008
	c.bnez	a5,0000000023064998

l230649C2:
	lw	a4,s0,-00000004
	c.lw	s1,0(a5)
	and	a3,a4,a5
	c.beqz	a3,00000000230649AE

l230649CE:
	xori	a5,a5,-00000001
	c.and	a5,a4
	sw	a5,s0,+00000FFC
	jal	ra,0000000023062994
	lui	a5,0004200F
	addi	a5,a5,+00000578
	c.lw	a5,0(a3)
	lw	a4,s0,-00000004
	addi	a0,s0,-00000008
	c.add	a4,a3
	c.sw	a5,0(a4)
	jal	ra,0000000023064838
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023062B70

l23064A02:
	c.jr	ra

;; xPortGetFreeHeapSize: 23064A04
;;   Called from:
;;     23000304 (in cmd_free_mem)
;;     23000BB0 (in vApplicationMallocFailedHook)
;;     2305E240 (in version_cmd)
xPortGetFreeHeapSize proc
	lui	a5,0004200F
	lw	a0,a5,+00000578
	c.jr	ra

;; vPortDefineHeapRegions: 23064A0E
;;   Called from:
;;     23000D76 (in bfl_main)
vPortDefineHeapRegions proc
	c.addi16sp	FFFFFFD0
	c.swsp	s6,00000008
	lui	s6,0004200F
	addi	s6,s6,+00000570
	lw	a5,s6,+00000000
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s7,00000084
	c.mv	s3,a0
	c.beqz	a5,0000000023064AF8

l23064A32:
	jal	ra,0000000023000C02
	lw	s0,s3,+00000004
	c.beqz	s0,0000000023064AFC

l23064A3C:
	lw	a5,s6,+00000000

l23064A40:
	lui	s7,0004200F
	c.li	s4,00000000
	c.li	s5,00000000
	addi	s7,s7,+00000580

l23064A4C:
	lw	s1,s3,+00000000
	andi	a4,s1,+00000007
	c.mv	s2,s1
	c.beqz	a4,0000000023064A66

l23064A58:
	addi	a4,s1,+00000007
	c.andi	a4,FFFFFFF8
	c.add	s0,s1
	c.sub	s0,a4
	c.mv	s1,a4
	c.mv	s2,a4

l23064A66:
	bne	s4,zero,0000000023064ADC

l23064A6A:
	sw	s1,s7,+00000000
	sw	zero,s7,+00000004
	c.mv	a4,a5

l23064A74:
	c.add	s0,s2
	c.addi	s0,FFFFFFF8
	andi	a5,s0,-00000008
	sw	zero,a5,+00000004
	sw	zero,a5,+00000000
	sub	s2,a5,s2
	sw	a5,s6,+00000000
	sw	s2,s1,+00000004
	c.sw	s1,0(a5)
	c.beqz	a4,0000000023064A9A

l23064A94:
	c.sw	a4,0(s1)
	lw	s2,s1,+00000004

l23064A9A:
	c.addi	s3,00000008
	lw	s0,s3,+00000004
	c.add	s5,s2
	c.addi	s4,00000001
	c.bnez	s0,0000000023064A4C

l23064AA6:
	lui	a5,0004200F
	sw	s5,a5,+0000057C
	lui	a5,0004200F
	sw	s5,a5,+00000578
	beq	s5,zero,0000000023064B0C

l23064ABA:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	lui	a5,0004200F
	lui	a4,00080000
	sw	a4,a5,+00000574
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.addi16sp	00000030
	c.jr	ra

l23064ADC:
	c.beqz	a5,0000000023064AEE

l23064ADE:
	c.mv	a4,a5
	bltu	a5,s2,0000000023064A74

l23064AE4:
	jal	ra,0000000023000C02
	lw	a4,s6,+00000000
	c.j	0000000023064A74

l23064AEE:
	jal	ra,0000000023000C02
	lw	a5,s6,+00000000
	c.j	0000000023064ADE

l23064AF8:
	c.lw	a0,4(s0)
	c.bnez	s0,0000000023064A40

l23064AFC:
	lui	a5,0004200F
	sw	zero,a5,+0000057C
	lui	a5,0004200F
	sw	zero,a5,+00000578

l23064B0C:
	jal	ra,0000000023000C02
	c.j	0000000023064ABA

;; uart_generic_notify_handler: 23064B12
;;   Called from:
;;     23064C06 (in UART0_IRQHandler)
;;     23064C0C (in UART1_IRQHandler)
uart_generic_notify_handler proc
	lui	a5,000230CC
	slli	a4,a0,00000002
	addi	a5,a5,-00000538
	c.addi	sp,FFFFFFE0
	c.add	a5,a4
	c.swsp	s3,00000084
	lw	s3,a5,+00000000
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lw	s1,s3,+00000020
	lw	s0,s3,+00000024
	c.mv	s2,a0
	andi	a5,s1,+00000001
	c.beqz	a5,0000000023064B4C

l23064B40:
	andi	a5,s0,+00000001
	c.bnez	a5,0000000023064B4C

l23064B46:
	c.li	a5,00000001
	sw	a5,s3,+00000028

l23064B4C:
	andi	a5,s1,+00000002
	c.beqz	a5,0000000023064B74

l23064B52:
	andi	a5,s0,+00000002
	c.bnez	a5,0000000023064B74

l23064B58:
	c.li	a5,00000002
	lui	a4,00042019
	addi	a4,a4,-0000072C
	sw	a5,s3,+00000028
	slli	a5,s2,00000004
	c.add	a5,a4
	c.lw	a5,0(a4)
	c.beqz	a4,0000000023064B74

l23064B70:
	c.lw	a5,4(a0)
	c.jalr	a4

l23064B74:
	andi	a5,s1,+00000004
	c.beqz	a5,0000000023064B96

l23064B7A:
	andi	a5,s0,+00000004
	c.bnez	a5,0000000023064B96

l23064B80:
	lui	a4,00042019
	addi	a4,a4,-0000072C
	slli	a5,s2,00000004
	c.add	a5,a4
	c.lw	a5,8(a4)
	c.beqz	a4,0000000023064B96

l23064B92:
	c.lw	a5,12(a0)
	c.jalr	a4

l23064B96:
	andi	a5,s1,+00000008
	c.beqz	a5,0000000023064BB8

l23064B9C:
	andi	a5,s0,+00000008
	c.bnez	a5,0000000023064BB8

l23064BA2:
	lui	a4,00042019
	addi	a4,a4,-0000072C
	slli	a5,s2,00000004
	c.add	a5,a4
	c.lw	a5,0(a4)
	c.beqz	a4,0000000023064BB8

l23064BB4:
	c.lw	a5,4(a0)
	c.jalr	a4

l23064BB8:
	andi	a5,s1,+00000010
	c.beqz	a5,0000000023064BE2

l23064BBE:
	andi	a5,s0,+00000010
	c.bnez	a5,0000000023064BE2

l23064BC4:
	c.li	a5,00000010
	sw	a5,s3,+00000028
	lui	a5,00042019
	addi	a5,a5,-0000072C
	c.slli	s2,04
	c.add	s2,a5
	lw	a5,s2,+00000000
	c.beqz	a5,0000000023064BE2

l23064BDC:
	lw	a0,s2,+00000004
	c.jalr	a5

l23064BE2:
	andi	s1,s1,+00000020
	c.beqz	s1,0000000023064BF6

l23064BE8:
	andi	s0,s0,+00000020
	c.bnez	s0,0000000023064BF6

l23064BEE:
	addi	a5,zero,+00000020
	sw	a5,s3,+00000028

l23064BF6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; UART0_IRQHandler: 23064C04
UART0_IRQHandler proc
	c.li	a0,00000000
	jal	zero,0000000023064B12

;; UART1_IRQHandler: 23064C0A
UART1_IRQHandler proc
	c.li	a0,00000001
	jal	zero,0000000023064B12

;; bl_uart_init: 23064C10
;;   Called from:
;;     23000C40 (in bfl_main)
;;     23066E12 (in vfs_uart_init)
bl_uart_init proc
	c.addi16sp	FFFFFFC0
	c.swsp	s3,00000094
	c.mv	s3,a1
	lui	a1,000230C1
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.mv	s0,a0
	c.mv	s2,a2
	addi	a1,a1,-000000FC
	c.li	a2,00000010
	c.addi4spn	a0,00000010
	c.swsp	s1,00000098
	c.swsp	s4,00000014
	c.swsp	ra,0000009C
	c.mv	s4,a5
	jal	ra,00000000230A382C
	lui	a5,0004200F
	lw	a5,a5,-00000164
	lui	s1,0004200F
	addi	s1,s1,+00000588
	c.swsp	a5,00000080
	lbu	a5,s1,+00000000
	c.bnez	a5,0000000023064C5E

l23064C4E:
	c.li	a2,00000003
	c.li	a1,00000001
	c.li	a0,00000001
	jal	ra,000000002308380E
	c.li	a5,00000001
	sb	a5,s1,+00000000

l23064C5E:
	c.li	a5,00000007
	sb	a5,sp,+00000009
	c.li	s1,00000002
	addi	a5,zero,+00000101
	c.addi4spn	a0,00000008
	sb	s2,sp,+00000008
	sh	s1,sp,+0000000A
	sh	a5,sp,+0000000C
	auipc	ra,0001EFA8
	jalr	ra,ra,-000006A0
	c.addi4spn	a0,00000008
	sb	s3,sp,+00000008
	sh	s1,sp,+0000000A
	auipc	ra,0001EFA8
	jalr	ra,ra,-000006B2
	c.beqz	s0,0000000023064CFA

l23064C94:
	c.li	s1,00000007
	c.li	a1,00000006

l23064C98:
	andi	a0,s3,+00000007
	jal	ra,000000002308389C
	c.mv	a1,s1
	andi	a0,s2,+00000007
	jal	ra,000000002308389C
	lui	a5,00002626
	addi	a5,a5,-00000600
	c.li	a2,00000001
	c.li	a1,00000008
	c.mv	a0,s0
	c.swsp	a5,00000008
	c.swsp	s4,00000088
	jal	ra,0000000023082BD8
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023082B66
	c.addi4spn	a1,00000010
	c.mv	a0,s0
	jal	ra,00000000230829D4
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023082BB4
	c.addi4spn	a1,00000004
	c.mv	a0,s0
	jal	ra,0000000023082AC8
	c.mv	a0,s0
	c.li	a1,00000002
	jal	ra,0000000023082B32
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.li	a0,00000000
	c.addi16sp	00000040
	c.jr	ra

l23064CFA:
	c.li	s1,00000003
	c.li	a1,00000002
	c.j	0000000023064C98

;; bl_uart_data_send: 23064D00
;;   Called from:
;;     23066782 (in hal_uart_send)
;;     23082326 (in vprint)
;;     23082340 (in bl_putchar)
;;     2308236C (in puts)
bl_uart_data_send proc
	lui	a5,000230CC
	slli	a4,a0,00000002
	addi	a5,a5,-00000538
	c.addi	sp,FFFFFFE0
	c.add	a5,a4
	c.swsp	s1,00000088
	c.lw	a5,0(s1)
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0

l23064D1A:
	c.mv	a0,s0
	c.swsp	a1,00000084
	jal	ra,0000000023082C16
	c.lwsp	a2,00000064
	c.beqz	a0,0000000023064D1A

l23064D26:
	sb	a1,s1,+00000088
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; bl_uart_data_recv: 23064D36
;;   Called from:
;;     2306672C (in hal_uart_recv_II)
bl_uart_data_recv proc
	lui	a5,000230CC
	slli	a4,a0,00000002
	addi	a5,a5,-00000538
	c.addi	sp,FFFFFFF0
	c.add	a5,a4
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a5,0(s0)
	jal	ra,0000000023082CA0
	c.beqz	a0,0000000023064D62

l23064D52:
	lbu	a0,s0,+0000008C
	andi	a0,a0,+000000FF

l23064D5A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23064D62:
	c.li	a0,FFFFFFFF
	c.j	0000000023064D5A

;; bl_uart_int_rx_enable: 23064D66
;;   Called from:
;;     23064E8A (in bl_uart_int_enable)
;;     23064EB0 (in bl_uart_int_enable)
bl_uart_int_rx_enable proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000018
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023082B96
	c.li	a2,00000000
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,0000000023082BD8
	c.li	a2,00000000
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023082BD8
	c.mv	a0,s0
	c.li	a2,00000000
	c.li	a1,00000004
	jal	ra,0000000023082BD8
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_uart_int_rx_disable: 23064D9C
;;   Called from:
;;     23064EE4 (in bl_uart_int_disable)
;;     23064F08 (in bl_uart_int_disable)
bl_uart_int_rx_disable proc
	c.addi	sp,FFFFFFF0
	c.li	a2,00000001
	c.li	a1,00000003
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023082BD8
	c.li	a2,00000001
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023082BD8
	c.mv	a0,s0
	c.li	a2,00000001
	c.li	a1,00000004
	jal	ra,0000000023082BD8
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_uart_int_tx_enable: 23064DCA
;;   Called from:
;;     23064E90 (in bl_uart_int_enable)
;;     23064EB6 (in bl_uart_int_enable)
;;     230666A2 (in hal_uart_send_trigger)
bl_uart_int_tx_enable proc
	c.addi	sp,FFFFFFF0
	c.li	a2,00000000
	c.li	a1,00000002
	c.swsp	ra,00000084
	jal	ra,0000000023082BD8
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_uart_int_tx_disable: 23064DDE
;;   Called from:
;;     23064EEA (in bl_uart_int_disable)
;;     23064F0E (in bl_uart_int_disable)
;;     230666B6 (in hal_uart_send_trigger_off)
bl_uart_int_tx_disable proc
	c.addi	sp,FFFFFFF0
	c.li	a2,00000001
	c.li	a1,00000002
	c.swsp	ra,00000084
	jal	ra,0000000023082BD8
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_uart_flush: 23064DF2
;;   Called from:
;;     23066DFA (in vfs_uart_init)
;;     23067010 (in hal_uart_send_flush)
bl_uart_flush proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	addi	s0,zero,+00000020

l23064E00:
	c.mv	a0,s1
	jal	ra,0000000023082C16
	bne	a0,s0,0000000023064E00

l23064E0A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_uart_getdefconfig: 23064E16
;;   Called from:
;;     230666E0 (in hal_uart_init)
bl_uart_getdefconfig proc
	c.beqz	a1,0000000023064E1C

l23064E18:
	sb	zero,a1,+00000000

l23064E1C:
	c.jr	ra

;; bl_uart_setconfig: 23064E1E
;;   Called from:
;;     23064E72 (in bl_uart_setbaud)
;;     23067028 (in hal_uart_setconfig)
bl_uart_setconfig proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a1
	lui	a1,000230C1
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.mv	s1,a2
	addi	a1,a1,-000000EC
	c.li	a2,00000010
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,00000000230A382C
	c.li	a1,00000002
	c.mv	a0,s0
	c.swsp	s2,00000080
	sb	s1,sp,+0000000A
	jal	ra,0000000023082B66
	c.mv	a1,sp
	c.mv	a0,s0
	jal	ra,00000000230829D4
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023082BB4
	c.mv	a0,s0
	c.li	a1,00000002
	jal	ra,0000000023082B32
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; bl_uart_setbaud: 23064E70
;;   Called from:
;;     23067020 (in hal_uart_setbaud)
bl_uart_setbaud proc
	c.li	a2,00000000
	jal	zero,0000000023064E1E

;; bl_uart_int_enable: 23064E76
;;   Called from:
;;     230666F2 (in hal_uart_init)
bl_uart_int_enable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.beqz	a0,0000000023064E8A

l23064E7C:
	c.li	a4,00000001
	beq	a0,a4,0000000023064EB0

l23064E82:
	c.li	a0,FFFFFFFF

l23064E84:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23064E8A:
	jal	ra,0000000023064D66
	c.li	a0,00000000
	jal	ra,0000000023064DCA
	lui	a1,00023065
	addi	a0,zero,+0000002D
	addi	a1,a1,-000003FC
	jal	ra,0000000023065722
	addi	a0,zero,+0000002D

l23064EA8:
	jal	ra,00000000230655A8
	c.li	a0,00000000
	c.j	0000000023064E84

l23064EB0:
	jal	ra,0000000023064D66
	c.li	a0,00000001
	jal	ra,0000000023064DCA
	lui	a1,00023065
	addi	a0,zero,+0000002E
	addi	a1,a1,-000003F6
	jal	ra,0000000023065722
	addi	a0,zero,+0000002E
	c.j	0000000023064EA8

;; bl_uart_int_disable: 23064ED0
;;   Called from:
;;     23066794 (in hal_uart_finalize)
bl_uart_int_disable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.beqz	a0,0000000023064EE4

l23064ED6:
	c.li	a4,00000001
	beq	a0,a4,0000000023064F08

l23064EDC:
	c.li	a0,FFFFFFFF

l23064EDE:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23064EE4:
	jal	ra,0000000023064D9C
	c.li	a0,00000000
	jal	ra,0000000023064DDE
	lui	a1,00023065
	addi	a0,zero,+0000002D
	addi	a1,a1,-000003FC
	jal	ra,0000000023065728
	addi	a0,zero,+0000002D

l23064F02:
	c.jal	00000000230655BA
	c.li	a0,00000000
	c.j	0000000023064EDE

l23064F08:
	jal	ra,0000000023064D9C
	c.li	a0,00000001
	jal	ra,0000000023064DDE
	lui	a1,00023065
	addi	a0,zero,+0000002E
	addi	a1,a1,-000003F6
	jal	ra,0000000023065728
	addi	a0,zero,+0000002E
	c.j	0000000023064F02

;; bl_uart_int_rx_notify_register: 23064F28
;;   Called from:
;;     230667D4 (in hal_uart_notify_register)
bl_uart_int_rx_notify_register proc
	c.li	a5,00000001
	bltu	a5,a0,0000000023064F44

l23064F2E:
	slli	a5,a0,00000004
	lui	a0,00042019
	addi	a0,a0,-0000072C
	c.add	a0,a5
	c.sw	a0,0(a1)
	c.sw	a0,4(a2)
	c.li	a0,00000000
	c.jr	ra

l23064F44:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; bl_uart_int_tx_notify_register: 23064F48
;;   Called from:
;;     230667B8 (in hal_uart_notify_register)
bl_uart_int_tx_notify_register proc
	c.li	a5,00000001
	bltu	a5,a0,0000000023064F64

l23064F4E:
	slli	a5,a0,00000004
	lui	a0,00042019
	addi	a0,a0,-0000072C
	c.add	a0,a5
	c.sw	a0,8(a1)
	c.sw	a0,12(a2)
	c.li	a0,00000000
	c.jr	ra

l23064F64:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; bl_chip_info: 23064F68
;;   Called from:
;;     23000C9C (in bfl_main)
bl_chip_info proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.swsp	zero,00000084
	csrrs	a5,misa,ra
	c.swsp	a5,00000084
	c.lwsp	a2,00000024
	c.li	a4,00000002
	srli	a5,s1,0000001E
	beq	a5,a4,0000000023064FA8

l23064F86:
	c.li	a4,00000003
	beq	a5,a4,0000000023064FF4

l23064F8C:
	c.li	a4,00000001
	addi	s0,a0,+00000004
	c.li	a2,00000004
	bne	a5,a4,0000000023065008

l23064F98:
	lui	a1,000230C1
	addi	a1,a1,+000001E0

l23064FA0:
	jal	ra,00000000230A382C
	c.mv	a0,s0
	c.j	0000000023064FBA

l23064FA8:
	lui	a1,000230C1
	c.li	a2,00000004
	addi	a1,a1,+000001E8
	jal	ra,00000000230A382C
	addi	a0,s0,+00000004

l23064FBA:
	addi	a5,zero,+0000002D
	sb	a5,a0,+00000000
	addi	a4,a0,+00000001
	c.li	a5,00000000
	c.li	a1,00000001
	c.li	a2,0000001A

l23064FCC:
	sll	a3,a1,a5
	c.and	a3,s1
	c.beqz	a3,0000000023064FDE

l23064FD4:
	addi	a3,a5,+00000041
	sb	a3,a4,+00000000
	c.addi	a4,00000001

l23064FDE:
	c.addi	a5,00000001
	bne	a5,a2,0000000023064FCC

l23064FE4:
	sb	zero,a4,+00000000
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23064FF4:
	lui	a1,000230C1
	c.li	a2,00000005
	addi	a1,a1,+000001F0
	jal	ra,00000000230A382C
	addi	a0,s0,+00000005
	c.j	0000000023064FBA

l23065008:
	lui	a1,000230C1
	addi	a1,a1,+000001F8
	c.j	0000000023064FA0

;; bl_chip_banner: 23065012
;;   Called from:
;;     23000C62 (in bfl_main)
bl_chip_banner proc
	lui	a5,000230C1
	addi	a5,a5,-000000DC
	c.sw	a0,0(a5)
	c.li	a0,00000000
	c.jr	ra

;; bl_chip_memory_ram: 23065020
;;   Called from:
;;     2305E23A (in version_cmd)
bl_chip_memory_ram proc
	c.lw	a0,0(a4)
	c.li	a5,00000002
	bge	a5,a4,00000000230650B6

l23065028:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.li	a5,00000003
	c.sw	a0,0(a5)
	lui	a5,00023000
	addi	a5,a5,+00000000
	c.sw	a1,0(a5)
	lui	a5,00000400
	c.mv	s2,a1
	addi	a5,a5,+00000000
	lui	a1,000230C1
	c.sw	a2,0(a5)
	c.mv	a0,a3
	addi	a1,a1,+00000200
	c.mv	s0,a3
	c.mv	s1,a2
	jal	ra,00000000230A4170
	lui	a5,0004200C
	addi	a5,a5,+00000000
	sw	a5,s2,+00000004
	lui	a5,00000034
	addi	a5,a5,+00000000
	lui	a1,000230C1
	c.sw	s1,4(a5)
	addi	a1,a1,+00000208
	addi	a0,s0,+00000006
	jal	ra,00000000230A4170
	lui	a5,00042040
	addi	a5,a5,+00000000
	sw	a5,s2,+00000008
	c.lui	a5,0000A000
	addi	a5,a5,+00000000
	lui	a1,000230BF
	c.sw	s1,8(a5)
	addi	a0,s0,+0000000C
	addi	a1,a1,-00000798
	jal	ra,00000000230A4170
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230650B6:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; bl_sys_reset_por: 230650BA
;;   Called from:
;;     23067AB0 (in hal_reboot)
bl_sys_reset_por proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	csrrci	zero,mstatus,00000008
	auipc	ra,0001EFA7
	jalr	ra,ra,+000004E4

l230650CA:
	c.j	00000000230650CA

;; bl_sys_reset_system: 230650CC
;;   Called from:
;;     23067AB4 (in hal_sys_reset)
bl_sys_reset_system proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	csrrci	zero,mstatus,00000008
	auipc	ra,0001EFA7
	jalr	ra,ra,+000004BE

l230650DC:
	c.j	00000000230650DC

;; bl_sys_isxipaddr: 230650DE
;;   Called from:
;;     23084BD8 (in bl_mtd_write)
bl_sys_isxipaddr proc
	lui	a5,000FF000
	c.and	a0,a5
	lui	a5,000DD000
	c.add	a0,a5
	lui	a5,000DF000
	c.and	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; bl_sys_em_config: 230650F6
;;   Called from:
;;     23065140 (in bl_sys_init)
bl_sys_em_config proc
	c.addi	sp,FFFFFFF0
	c.lui	a5,00002000
	c.swsp	ra,00000084
	addi	a5,a5,+00000000
	c.lui	a4,00002000
	beq	a5,a4,0000000023065110

l23065106:
	c.lui	a4,00004000
	bne	a5,a4,0000000023065116

l2306510C:
	c.li	a0,0000000F
	c.j	0000000023065112

l23065110:
	c.li	a0,00000003

l23065112:
	jal	ra,000000002308384C

l23065116:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_sys_early_init: 2306511E
;;   Called from:
;;     23000C26 (in bfl_main)
bl_sys_early_init proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,0000000023083962
	lui	a5,00023064
	addi	a5,a5,+00000300
	csrrw	zero,mtvec,t0
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_sys_init: 2306513C
;;   Called from:
;;     23000C50 (in bfl_main)
bl_sys_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230650F6
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_dma_int_process: 2306514C
bl_dma_int_process proc
	c.addi16sp	FFFFFFC0
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s6,00000010
	c.swsp	s8,0000000C
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s7,0000008C
	lui	a5,0004000C
	c.addi4spn	a1,0000000C
	c.li	a0,0000001F
	c.lw	a5,4(s0)
	c.li	s2,00000000
	lw	s7,a5,+0000000C
	c.li	s8,00000001
	c.jal	00000000230656FC
	lui	s3,0004000C
	c.li	s6,00000004

l2306517C:
	sll	a5,s8,s2
	and	s5,a5,s0
	and	s4,a5,s7
	bne	s5,zero,00000000230651C6

l2306518C:
	beq	s4,zero,00000000230651A8

l23065190:
	lw	s0,s3,+00000010
	c.or	s0,a5
	sw	s0,s3,+00000010

l2306519A:
	c.lwsp	a2,000000E4
	c.lw	a5,0(a5)
	c.lw	a5,4(s1)

l230651A0:
	c.lwsp	a2,000000E4
	c.lw	a5,0(a5)
	bne	s1,a5,00000000230651D6

l230651A8:
	c.addi	s2,00000001
	bne	s2,s6,000000002306517C

l230651AE:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.lwsp	s8,0000000C
	c.addi16sp	00000040
	c.jr	ra

l230651C6:
	lw	s0,s3,+00000008
	c.or	s0,a5
	sw	s0,s3,+00000008
	beq	s4,zero,000000002306519A

l230651D4:
	c.j	0000000023065190

l230651D6:
	c.lw	s1,8(a5)
	bne	a5,s2,00000000230651F0

l230651DC:
	c.lw	s1,12(a5)
	c.beqz	a5,00000000230651E6

l230651E0:
	beq	s5,zero,00000000230651E6

l230651E4:
	c.jalr	a5

l230651E6:
	c.lw	s1,16(a5)
	c.beqz	a5,00000000230651F0

l230651EA:
	beq	s4,zero,00000000230651F0

l230651EE:
	c.jalr	a5

l230651F0:
	c.lw	s1,4(s1)
	c.j	00000000230651A0

;; bl_dma_int_clear: 230651F4
;;   Called from:
;;     23065232 (in bl_dma_IRQHandler)
bl_dma_int_clear proc
	lui	a3,0004000C
	c.lw	a3,4(a4)
	c.li	a5,00000001
	sll	a0,a5,a0
	c.and	a4,a0
	andi	a4,a4,+000000FF
	c.beqz	a4,000000002306520E

l23065208:
	c.lw	a3,8(a5)
	c.or	a5,a0
	c.sw	a3,8(a5)

l2306520E:
	lui	a4,0004000C
	c.lw	a4,12(a5)
	c.and	a5,a0
	andi	a5,a5,+000000FF
	c.beqz	a5,0000000023065222

l2306521C:
	c.lw	a4,16(a5)
	c.or	a0,a5
	c.sw	a4,16(a0)

l23065222:
	c.li	a0,00000000
	c.jr	ra

;; bl_dma_IRQHandler: 23065226
bl_dma_IRQHandler proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	s0,0004200F
	jal	ra,00000000230651F4
	addi	a0,s0,+0000058C
	jal	ra,000000002307A474
	c.bnez	a0,0000000023065292

l23065240:
	lui	a5,00042026
	lbu	a4,a5,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,000000002306528A

l2306524E:
	lui	a4,00042026
	lbu	a4,a4,+000006B5
	bltu	a5,a4,000000002306528A

l2306525A:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,000000002306528C

l23065264:
	jal	ra,00000000230629C6

l23065268:
	lui	a3,000230C1
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C1
	addi	a4,zero,+0000009D
	addi	a3,a3,+0000020C
	addi	a2,a2,+0000032C
	addi	a0,a0,+0000025C
	jal	ra,000000002307A208

l2306528A:
	c.j	000000002306528A

l2306528C:
	jal	ra,00000000230629A4
	c.j	0000000023065268

l23065292:
	c.lw	a0,4(a5)
	c.beqz	a5,000000002306529A

l23065296:
	c.lw	a0,8(a0)
	c.jalr	a5

l2306529A:
	lw	a1,s0,+0000058C
	c.beqz	a1,00000000230652B4

l230652A0:
	c.li	a0,00000000
	c.addi	a1,0000000C
	jal	ra,0000000023083770
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,0000000023083724

l230652B4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bl_dma_irq_register: 230652BC
;;   Called from:
;;     23065540 (in bl_dma_init)
bl_dma_irq_register proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.li	a5,00000004
	bltu	a5,a0,00000000230652D4

l230652D0:
	c.mv	s2,a1
	c.bnez	a1,0000000023065336

l230652D4:
	lui	a5,00042026
	lbu	a4,a5,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,000000002306531E

l230652E2:
	lui	a4,00042026
	lbu	a4,a4,+000006B5
	bltu	a5,a4,000000002306531E

l230652EE:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023065330

l230652F8:
	jal	ra,00000000230629C6

l230652FC:
	lui	a3,000230C1
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C1
	addi	a4,zero,+0000011C
	addi	a3,a3,+0000020C
	addi	a2,a2,-00000228
	addi	a0,a0,+000002F4
	jal	ra,000000002307A208

l2306531E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.li	a0,FFFFFFFF
	c.addi16sp	00000030
	c.jr	ra

l23065330:
	jal	ra,00000000230629A4
	c.j	00000000230652FC

l23065336:
	c.mv	s1,a0
	c.addi4spn	a1,0000000C
	c.li	a0,0000001F
	c.mv	s4,a2
	c.mv	s3,a3
	c.jal	00000000230656FC
	c.lwsp	a2,000000E4
	c.lw	a5,0(a5)
	c.lw	a5,4(s0)

l23065348:
	bne	a5,s0,00000000230653BE

l2306534C:
	c.li	a0,00000018
	jal	ra,000000002306488A
	c.mv	s0,a0
	c.bnez	a0,00000000230653A0

l23065356:
	lui	a5,00042026
	lbu	a4,a5,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,00000000230653A0

l23065364:
	lui	a4,00042026
	lbu	a4,a4,+000006B5
	bltu	a5,a4,00000000230653A0

l23065370:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,000000002306541C

l2306537A:
	jal	ra,00000000230629C6

l2306537E:
	lui	a3,000230C1
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C1
	addi	a4,zero,+0000012A
	addi	a3,a3,+0000020C
	addi	a2,a2,-00000228
	addi	a0,a0,+00000350
	jal	ra,000000002307A208

l230653A0:
	c.lwsp	a2,000000E4
	c.sw	s0,8(s1)
	sw	s2,s0,+0000000C
	sw	s4,s0,+00000010
	sw	s3,s0,+00000014
	c.lw	a5,0(a5)
	c.lw	a5,4(a4)
	c.sw	s0,0(a5)
	c.sw	s0,4(a4)
	c.sw	a5,4(s0)
	c.sw	a4,0(s0)
	c.j	000000002306531E

l230653BE:
	c.lw	s0,8(a4)
	bne	s1,a4,0000000023065418

l230653C4:
	lui	a5,00042026
	lbu	a4,a5,+000006B4
	c.li	a5,00000003
	bltu	a5,a4,000000002306531E

l230653D2:
	lui	a4,00042026
	lbu	a4,a4,+000006B5
	bltu	a5,a4,000000002306531E

l230653DE:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023065412

l230653E8:
	jal	ra,00000000230629C6

l230653EC:
	c.lw	s0,8(a5)
	c.mv	a1,a0
	lui	a3,000230C1
	lui	a2,000230C0
	lui	a0,000230C1
	addi	a4,zero,+00000124
	addi	a3,a3,+0000020C
	addi	a2,a2,+000003D4
	addi	a0,a0,+0000031C
	jal	ra,000000002307A208
	c.j	000000002306531E

l23065412:
	jal	ra,00000000230629A4
	c.j	00000000230653EC

l23065418:
	c.lw	s0,4(s0)
	c.j	0000000023065348

l2306541C:
	jal	ra,00000000230629A4
	c.j	000000002306537E

;; bl_dma_init: 23065422
;;   Called from:
;;     23000DB2 (in bfl_main)
bl_dma_init proc
	lui	a0,0004200F
	c.addi	sp,FFFFFFE0
	addi	a0,a0,+0000058C
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	sh	zero,sp,+0000000C
	sb	zero,sp,+0000000E
	jal	ra,000000002307A456
	c.li	a0,00000004
	jal	ra,000000002306488A
	c.bnez	a0,000000002306549C

l23065444:
	lui	a5,00042026
	lbu	a4,a5,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,000000002306548E

l23065452:
	lui	a4,00042026
	lbu	a4,a4,+000006B5
	bltu	a5,a4,000000002306548E

l2306545E:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023065496

l23065468:
	jal	ra,00000000230629C6

l2306546C:
	lui	a3,000230C1
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C1
	addi	a4,zero,+00000180
	addi	a3,a3,+0000020C
	addi	a2,a2,-00000228
	addi	a0,a0,+00000294

l2306548A:
	jal	ra,000000002307A208

l2306548E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23065496:
	jal	ra,00000000230629A4
	c.j	000000002306546C

l2306549C:
	c.mv	s0,a0
	c.li	a0,00000008
	jal	ra,000000002306488A
	c.sw	s0,0(a0)
	c.bnez	a0,00000000230654F6

l230654A8:
	lui	a5,00042026
	lbu	a4,a5,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,000000002306548E

l230654B6:
	lui	a4,00042026
	lbu	a4,a4,+000006B5
	bltu	a5,a4,000000002306548E

l230654C2:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,00000000230654F0

l230654CC:
	jal	ra,00000000230629C6

l230654D0:
	lui	a3,000230C1
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C1
	addi	a4,zero,+00000187
	addi	a3,a3,+0000020C
	addi	a2,a2,-00000228
	addi	a0,a0,+000002C0
	c.j	000000002306548A

l230654F0:
	jal	ra,00000000230629A4
	c.j	00000000230654D0

l230654F6:
	c.sw	a0,4(a0)
	c.sw	a0,0(a0)
	jal	ra,0000000023083716
	c.li	a2,00000001
	c.li	a1,00000002
	c.li	a0,00000000
	jal	ra,0000000023083786
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,0000000023083786
	c.li	a2,00000000
	c.li	a1,00000001
	c.li	a0,00000000
	jal	ra,0000000023083786
	c.addi4spn	a1,0000000C
	c.li	a0,00000000
	jal	ra,000000002308373A
	lui	a1,00023065
	c.mv	a2,s0
	addi	a1,a1,+0000014C
	c.li	a0,0000001F
	c.jal	00000000230655D6
	lui	a1,00023065
	c.li	a3,00000000
	c.li	a2,00000000
	addi	a1,a1,+00000226
	c.li	a0,00000000
	jal	ra,00000000230652BC
	c.li	a0,0000001F
	c.jal	00000000230655A8
	c.j	000000002306548E

;; _irq_num_check.part.0: 2306554A
;;   Called from:
;;     230655EC (in bl_irq_register_with_ctx)
;;     23065708 (in bl_irq_ctx_get)
;;     2306573C (in bl_irq_unregister)
_irq_num_check.part.0 proc
	lui	a5,00042026
	lbu	a4,a5,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,00000000230655A6

l23065558:
	lui	a4,00042026
	lbu	a4,a4,+000006B6
	bltu	a5,a4,00000000230655A6

l23065564:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.beqz	a5,00000000230655A0

l23065576:
	jal	ra,00000000230629C6

l2306557A:
	lui	a3,000230C1
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C1
	c.mv	a5,s0
	addi	a4,zero,+00000070
	addi	a3,a3,+000003D8
	addi	a2,a2,-00000228
	addi	a0,a0,+000003E4
	jal	ra,000000002307A208

l2306559E:
	c.j	000000002306559E

l230655A0:
	jal	ra,00000000230629A4
	c.j	000000002306557A

l230655A6:
	c.j	00000000230655A6

;; bl_irq_enable: 230655A8
;;   Called from:
;;     2302916E (in ble_controller_init)
;;     23064EA8 (in bl_uart_int_enable)
;;     23065546 (in bl_dma_init)
;;     23065C94 (in bl_sec_init)
;;     230661C8 (in bl_wifi_enable_irq)
;;     230661D0 (in bl_wifi_enable_irq)
;;     23069B96 (in bl_timer_tick_enable)
bl_irq_enable proc
	lui	a5,00002800
	addi	a5,a5,+00000400
	c.add	a0,a5
	c.li	a5,00000001
	sb	a5,a0,+00000000
	c.jr	ra

;; bl_irq_disable: 230655BA
;;   Called from:
;;     230291DC (in ble_controller_deinit)
;;     23064F02 (in bl_uart_int_disable)
bl_irq_disable proc
	lui	a5,00002800
	addi	a5,a5,+00000400
	c.add	a0,a5
	sb	zero,a0,+00000000
	c.jr	ra

;; bl_irq_pending_clear: 230655CA
;;   Called from:
;;     23029156 (in ble_controller_init)
bl_irq_pending_clear proc
	lui	a5,00002800
	c.add	a0,a5
	sb	zero,a0,+00000000
	c.jr	ra

;; bl_irq_register_with_ctx: 230655D6
;;   Called from:
;;     23065530 (in bl_dma_init)
;;     23065724 (in bl_irq_register)
bl_irq_register_with_ctx proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	addi	a5,zero,+0000004F
	bgeu	a5,a0,00000000230655F0

l230655EC:
	jal	ra,000000002306554A

l230655F0:
	lui	s2,00042019
	addi	a5,s2,-0000070C
	slli	s1,a0,00000002
	c.add	a5,s1
	c.lw	a5,0(a5)
	c.mv	s0,a0
	c.mv	s4,a1
	c.mv	s3,a2
	addi	s2,s2,-0000070C
	c.beqz	a5,0000000023065664

l2306560C:
	beq	a5,a1,00000000230656D6

l23065610:
	lui	a5,00042026
	lbu	a4,a5,+000006B4
	c.li	a5,00000003
	bltu	a5,a4,0000000023065664

l2306561E:
	lui	a4,00042026
	lbu	a4,a4,+000006B6
	bltu	a5,a4,00000000230656D4

l2306562A:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,00000000230656C2

l23065634:
	jal	ra,00000000230629C6

l23065638:
	add	a5,s2,s1
	lw	a6,a5,+00000000
	lui	a3,000230C1
	lui	a2,000230C0
	c.mv	a1,a0
	lui	a0,000230C1
	c.mv	a5,s0
	addi	a4,zero,+0000007E
	addi	a3,a3,+000003D8
	addi	a2,a2,+000003D4
	addi	a0,a0,+00000440
	jal	ra,000000002307A208

l23065664:
	bne	s4,zero,00000000230656D6

l23065668:
	lui	a5,00042026
	lbu	a4,a5,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,00000000230656EC

l23065676:
	lui	a5,00042026
	lbu	a4,a5,+000006B6
	c.li	a5,00000004
	bltu	a5,a4,00000000230656EC

l23065684:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,00000000230656C8

l2306568E:
	jal	ra,00000000230629C6

l23065692:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	lui	a3,000230C1
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C1
	addi	a4,zero,+00000082
	addi	a3,a3,+000003D8
	addi	a2,a2,-00000228
	addi	a0,a0,+00000478
	c.addi16sp	00000020
	jal	zero,000000002307A208

l230656C2:
	jal	ra,00000000230629A4
	c.j	0000000023065638

l230656C8:
	jal	ra,00000000230629A4
	c.j	0000000023065692

l230656CE:
	sw	s3,s0,+00000000
	c.j	00000000230656EC

l230656D4:
	c.beqz	a1,0000000023065676

l230656D6:
	addi	s0,s0,+00000050
	c.add	s1,s2
	c.slli	s0,02
	sw	s4,s1,+00000000
	c.add	s0,s2
	bne	s3,zero,00000000230656CE

l230656E8:
	sw	zero,s0,+00000000

l230656EC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; bl_irq_ctx_get: 230656FC
;;   Called from:
;;     23065174 (in bl_dma_int_process)
;;     23065340 (in bl_dma_irq_register)
bl_irq_ctx_get proc
	addi	a4,zero,+0000004F
	bgeu	a4,a0,000000002306570C

l23065704:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002306554A

l2306570C:
	addi	a5,a0,+00000050
	lui	a4,00042019
	c.slli	a5,02
	addi	a4,a4,-0000070C
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.sw	a1,0(a5)
	c.jr	ra

;; bl_irq_register: 23065722
;;   Called from:
;;     23029166 (in ble_controller_init)
;;     23064EA0 (in bl_uart_int_enable)
;;     23064EC6 (in bl_uart_int_enable)
;;     23065C8E (in bl_sec_init)
;;     230661B0 (in bl_wifi_enable_irq)
;;     230661C0 (in bl_wifi_enable_irq)
;;     23069BA6 (in bl_timer_tick_enable)
bl_irq_register proc
	c.li	a2,00000000
	jal	zero,00000000230655D6

;; bl_irq_unregister: 23065728
;;   Called from:
;;     23064EFA (in bl_uart_int_disable)
;;     23064F1E (in bl_uart_int_disable)
bl_irq_unregister proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	addi	a5,zero,+0000004F
	bgeu	a5,a0,0000000023065740

l2306573C:
	jal	ra,000000002306554A

l23065740:
	lui	s0,00042019
	addi	a5,s0,-0000070C
	slli	s3,a0,00000002
	c.add	a5,s3
	c.lw	a5,0(a5)
	c.mv	s1,a0
	c.mv	s2,a1
	addi	s0,s0,-0000070C
	beq	a5,a1,00000000230657B2

l2306575C:
	lui	a5,00042026
	lbu	a4,a5,+000006B4
	c.li	a5,00000003
	bltu	a5,a4,00000000230657B2

l2306576A:
	lui	a4,00042026
	lbu	a4,a4,+000006B6
	bltu	a5,a4,00000000230657B2

l23065776:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,00000000230657C6

l23065780:
	jal	ra,00000000230629C6

l23065784:
	add	a5,s0,s3
	lw	a7,a5,+00000000
	lui	a3,000230C1
	lui	a2,000230C0
	c.mv	a1,a0
	lui	a0,000230C1
	c.mv	a6,s2
	c.mv	a5,s1
	addi	a4,zero,+000000A8
	addi	a3,a3,+000003D8
	addi	a2,a2,+000003D4
	addi	a0,a0,+000004A8
	jal	ra,000000002307A208

l230657B2:
	c.add	s0,s3
	sw	s2,s0,+00000000
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230657C6:
	jal	ra,00000000230629A4
	c.j	0000000023065784

;; interrupt_entry: 230657CC
interrupt_entry proc
	slli	a2,a0,00000005
	c.srli	a2,00000005
	addi	a5,zero,+0000004F
	bltu	a5,a2,0000000023065800

l230657DA:
	lui	a5,00042019
	addi	a5,a5,-0000070C
	slli	a4,a2,00000002
	c.add	a4,a5
	lw	t1,a4,+00000000
	beq	t1,zero,0000000023065800

l230657F0:
	addi	a2,a2,+00000050
	c.slli	a2,02
	c.add	a2,a5
	c.lw	a2,0(a0)
	c.beqz	a0,00000000230657FE

l230657FC:
	c.jr	t1

l230657FE:
	c.jr	t1

l23065800:
	addi	a4,a2,-00000010
	lui	a0,000230C1
	c.addi	sp,FFFFFFF0
	c.mv	a3,a4
	c.mv	a1,a2
	addi	a0,a0,+00000750
	c.swsp	ra,00000084
	jal	ra,0000000023082388

l23065818:
	c.j	0000000023065818

;; exception_entry: 2306581A
exception_entry proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.swsp	ra,0000008C
	c.mv	a0,a3
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	andi	a4,s0,+000003FF
	c.li	a3,00000004
	bne	a4,a3,0000000023065844

l23065832:
	c.mv	a2,a1
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,0000000023085340

l23065844:
	c.li	a3,00000006
	bne	a4,a3,000000002306585C

l2306584A:
	c.mv	a2,a1
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,0000000023085492

l2306585C:
	c.mv	s2,a0
	lui	a0,000230C1
	addi	a0,a0,+000004E4
	c.mv	s1,a1
	c.swsp	a2,00000084
	jal	ra,000000002308234C
	c.lwsp	a2,000000A4
	lui	a0,000230C1
	c.mv	a1,s0
	c.mv	a2,s1
	addi	a0,a0,+000004FC
	jal	ra,0000000023082388
	c.slli	s0,10
	c.srli	s0,00000010
	lui	a0,000230C1
	c.mv	a1,s0
	addi	a0,a0,+00000524
	jal	ra,0000000023082388
	c.li	a5,0000000F
	bltu	a5,s0,0000000023065950

l23065898:
	lui	a5,000230C1
	addi	a5,a5,+00000398
	c.slli	s0,02
	c.add	s0,a5
	c.lw	s0,0(a5)
	c.jr	a5
230658A8                         37 15 0C 23 13 05 C5 53         7..#...S

l230658B0:
	jal	ra,000000002308234C
	lui	a0,00023082
	c.mv	a1,s2
	addi	a0,a0,+00000388
	jal	ra,00000000230857DE

l230658C2:
	c.j	00000000230658C2
230658C4             37 15 0C 23 13 05 45 56 D5 B7 37 15     7..#..EV..7.
230658D0 0C 23 13 05 85 58 E9 BF 37 15 0C 23 13 05 85 5A .#...X..7..#...Z
230658E0 C1 BF 37 15 0C 23 13 05 C5 5B D9 B7 37 15 0C 23 ..7..#...[..7..#
230658F0 13 05 05 5E 75 BF 37 15 0C 23 13 05 C5 5F 4D BF ...^u.7..#..._M.
23065900 37 15 0C 23 13 05 45 62 65 B7 37 15 0C 23 13 05 7..#..Ebe.7..#..
23065910 45 64 79 BF 37 15 0C 23 13 05 C5 66 51 BF 37 15 Edy.7..#...fQ.7.
23065920 0C 23 13 05 45 69 69 B7 37 15 0C 23 13 05 85 6A .#..Eii.7..#...j
23065930 41 B7 37 15 0C 23 13 05 05 6D 9D BF 37 15 0C 23 A.7..#...m..7..#
23065940 13 05 05 6F B5 B7 37 15 0C 23 13 05 C5 70 8D B7 ...o..7..#...p..

l23065950:
	lui	a0,000230C1
	addi	a0,a0,+0000072C
	c.j	00000000230658B0

;; bl_irq_init: 2306595A
;;   Called from:
;;     23000DA6 (in bfl_main)
bl_irq_init proc
	lui	a0,000230C1
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+0000040C
	c.swsp	ra,00000084
	jal	ra,000000002308234C
	lui	a5,00002800
	addi	a4,a5,+00000400
	addi	a5,a5,+00000480

l23065976:
	sb	zero,a4,+00000000
	c.addi	a4,00000001
	bne	a4,a5,0000000023065976

l23065980:
	lui	a5,00002800
	addi	a4,a5,+00000080

l23065988:
	sb	zero,a5,+00000000
	c.addi	a5,00000001
	bne	a5,a4,0000000023065988

l23065992:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; _trng_trigger: 23065998
;;   Called from:
;;     23065B6E (in bl_sec_get_random_word)
;;     23065BB6 (in bl_rand_stream)
;;     23065BD2 (in bl_rand_stream)
;;     23065BF8 (in bl_rand_stream)
;;     23065C74 (in bl_sec_init)
;;     23065C7C (in bl_sec_init)
_trng_trigger proc
	lui	a5,00040004
	lw	a4,a5,+00000200
	andi	a3,a4,+00000001
	c.bnez	a3,00000000230659C2

l230659A6:
	lui	a3,00042019
	addi	a3,a3,-0000043C
	c.lw	a3,0(a2)
	ori	a4,a4,+00000606
	sw	a2,a5,+0000022C
	c.lw	a3,4(a3)
	sw	a3,a5,+00000230
	sw	a4,a5,+00000200

l230659C2:
	c.jr	ra

;; wait_trng4feed: 230659C4
;;   Called from:
;;     23065BBA (in bl_rand_stream)
;;     23065BD6 (in bl_rand_stream)
;;     23065BFC (in bl_rand_stream)
;;     23065C78 (in bl_sec_init)
;;     23065C80 (in bl_sec_init)
wait_trng4feed proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lui	a5,00040004
	lw	a5,a5,+00000200
	lui	a3,00040004

l230659D6:
	andi	a4,a5,+00000001
	c.bnez	a4,0000000023065A7A

l230659DC:
	c.andi	a5,FFFFFFFD
	ori	a5,a5,+00000200
	lui	a4,00040004
	sw	a5,a4,+00000200
	lui	a5,00042026
	lbu	a4,a5,+000006B4
	lui	s0,00042019
	c.li	a5,00000001
	addi	s0,s0,-0000043C
	bltu	a5,a4,0000000023065A3E

l23065A00:
	lui	a4,00042026
	lbu	a4,a4,+000006B7
	bltu	a5,a4,0000000023065A3E

l23065A0C:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023065A80

l23065A16:
	jal	ra,00000000230629C6

l23065A1A:
	c.lw	s0,0(a5)
	lui	a3,000230C2
	lui	a2,000230C2
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a4,zero,+0000005B
	addi	a3,a3,-00000774
	addi	a2,a2,-00000768
	addi	a0,a0,-00000760
	jal	ra,000000002307A208

l23065A3E:
	lui	a5,00040004
	lw	a4,a5,+00000208
	c.lwsp	a2,00000020
	c.sw	s0,0(a4)
	lw	a4,a5,+0000020C
	c.sw	s0,4(a4)
	lw	a4,a5,+00000210
	c.sw	s0,8(a4)
	lw	a4,a5,+00000214
	c.sw	s0,12(a4)
	lw	a4,a5,+00000218
	c.sw	s0,16(a4)
	lw	a4,a5,+0000021C
	c.sw	s0,20(a4)
	lw	a4,a5,+00000220
	c.sw	s0,24(a4)
	lw	a5,a5,+00000224
	c.sw	s0,28(a5)
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23065A7A:
	lw	a5,a3,+00000200
	c.j	00000000230659D6

l23065A80:
	jal	ra,00000000230629A4
	c.j	0000000023065A1A

;; sec_trng_IRQHandler: 23065A86
sec_trng_IRQHandler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002307BF00
	blt	zero,a1,0000000023065AAA

l23065A94:
	c.bnez	a1,0000000023065A9E

l23065A96:
	addi	a5,zero,+000007CF
	bltu	a5,a0,0000000023065AAA

l23065A9E:
	lui	a0,000230C2
	addi	a0,a0,-000007CC
	jal	ra,000000002308234C

l23065AAA:
	lui	a4,00040004
	lw	a5,a4,+00000200
	lui	s0,00042019
	addi	s0,s0,-0000043C
	c.andi	a5,FFFFFFFD
	ori	a5,a5,+00000200
	sw	a5,a4,+00000200
	lui	a5,00042026
	lbu	a4,a5,+000006B4
	c.li	a5,00000001
	bltu	a5,a4,0000000023065B10

l23065AD2:
	lui	a4,00042026
	lbu	a4,a4,+000006B7
	bltu	a5,a4,0000000023065B10

l23065ADE:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023065B4C

l23065AE8:
	jal	ra,00000000230629C6

l23065AEC:
	c.lw	s0,0(a5)
	lui	a3,000230C2
	lui	a2,000230C2
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a4,zero,+000000AB
	addi	a3,a3,-00000774
	addi	a2,a2,-00000768
	addi	a0,a0,-000007B0
	jal	ra,000000002307A208

l23065B10:
	lui	a5,00040004
	lw	a4,a5,+00000208
	c.lwsp	a2,00000020
	c.sw	s0,0(a4)
	lw	a4,a5,+0000020C
	c.sw	s0,4(a4)
	lw	a4,a5,+00000210
	c.sw	s0,8(a4)
	lw	a4,a5,+00000214
	c.sw	s0,12(a4)
	lw	a4,a5,+00000218
	c.sw	s0,16(a4)
	lw	a4,a5,+0000021C
	c.sw	s0,20(a4)
	lw	a4,a5,+00000220
	c.sw	s0,24(a4)
	lw	a5,a5,+00000224
	c.sw	s0,28(a5)
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23065B4C:
	jal	ra,00000000230629A4
	c.j	0000000023065AEC

;; bl_sec_get_random_word: 23065B52
;;   Called from:
;;     23065C32 (in bl_rand)
bl_sec_get_random_word proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200F
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	addi	a4,a5,+00000598
	c.lw	a4,0(s0)
	addi	s1,a5,+00000598
	c.andi	s0,00000007
	c.sw	a4,0(s0)
	c.bnez	s0,0000000023065B72

l23065B6E:
	jal	ra,0000000023065998

l23065B72:
	addi	a5,s0,+00000001
	c.sw	s1,0(a5)
	lui	a5,00042019
	c.slli	s0,02
	addi	a5,a5,-0000043C
	c.add	s0,a5
	c.lw	s0,0(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bl_rand_stream: 23065B90
;;   Called from:
;;     2301670E (in supplicantGenerateRand)
bl_rand_stream proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,0004200F
	lw	a5,s0,+00000598
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.mv	s4,a0
	c.mv	s1,a1
	addi	s0,s0,+00000598
	c.beqz	a5,0000000023065BC2

l23065BB6:
	jal	ra,0000000023065998
	jal	ra,00000000230659C4
	sw	zero,s0,+00000000

l23065BC2:
	c.li	s3,00000000
	addi	s5,zero,+00000020
	lui	s6,00042019
	c.li	s7,0000001F

l23065BCE:
	blt	zero,s1,0000000023065BF4

l23065BD2:
	jal	ra,0000000023065998
	jal	ra,00000000230659C4
	c.lwsp	a2,00000130
	sw	zero,s0,+00000000
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.addi16sp	00000030
	c.jr	ra

l23065BF4:
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023065C04

l23065BF8:
	jal	ra,0000000023065998
	jal	ra,00000000230659C4
	sw	zero,s0,+00000000

l23065C04:
	c.mv	s2,s1
	bge	s5,s1,0000000023065C0E

l23065C0A:
	addi	s2,zero,+00000020

l23065C0E:
	add	a0,s4,s3
	c.mv	a2,s2
	addi	a1,s6,-0000043C
	jal	ra,00000000230A382C
	c.add	s3,s2
	sub	s1,s1,s2
	sw	s7,s0,+00000000
	c.j	0000000023065BCE

;; bl_rand: 23065C28
;;   Called from:
;;     2302B67E (in ecc_gen_new_secret_key)
;;     2302B69C (in ecc_gen_new_secret_key)
;;     2302B6BA (in ecc_gen_new_secret_key)
;;     2302B6D8 (in ecc_gen_new_secret_key)
;;     2302B6F6 (in ecc_gen_new_secret_key)
;;     2302B714 (in ecc_gen_new_secret_key)
;;     2302B732 (in ecc_gen_new_secret_key)
;;     2302B750 (in ecc_gen_new_secret_key)
;;     2303183E (in lld_con_start)
;;     23031874 (in lld_con_start)
;;     230340DE (in llm_init)
;;     23037A84 (in llc_task_random_gen_request)
;;     23037A96 (in llc_task_random_gen_request)
;;     23039DBC (in hci_le_rand_cmd_handler)
;;     23039DDA (in hci_le_rand_cmd_handler)
;;     23048DDC (in k_get_random_byte_array)
;;     23065CB2 (in bl_sec_test)
;;     23065CC4 (in bl_sec_test)
;;     2306C95A (in dhcp_create_msg)
;;     2306E782 (in igmp_delaying_member)
;;     2306EA9A (in igmp_joingroup_netif)
;;     23070C4C (in tcp_init)
;;     23074B84 (in udp_init)
;;     230791FC (in sntp_init)
;;     230879B0 (in mbedtls_platform_entropy_poll)
bl_rand proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.li	s0,00000013

l23065C32:
	jal	ra,0000000023065B52
	c.addi	s0,FFFFFFFF
	c.mv	s1,a0
	c.bnez	s0,0000000023065C56

l23065C3C:
	lui	a0,000230C1
	addi	a0,a0,+000007A0
	jal	ra,000000002308234C

l23065C48:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	srli	a0,s1,00000001
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23065C56:
	c.beqz	a0,0000000023065C32

l23065C58:
	c.j	0000000023065C48

;; bl_sec_init: 23065C5A
;;   Called from:
;;     23000DAA (in bfl_main)
bl_sec_init proc
	lui	a1,00042019
	c.addi	sp,FFFFFFF0
	addi	a1,a1,-0000048C
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,000000002306149C
	lui	a5,0004200F
	sw	a0,a5,+00000594
	jal	ra,0000000023065998
	jal	ra,00000000230659C4
	jal	ra,0000000023065998
	jal	ra,00000000230659C4
	lui	a1,00023066
	addi	a1,a1,-0000057A
	c.li	a0,0000001C
	jal	ra,0000000023065722
	c.li	a0,0000001C
	jal	ra,00000000230655A8
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_sec_test: 23065CA0
;;   Called from:
;;     23000DAE (in bfl_main)
bl_sec_test proc
	lui	a0,000230C1
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000007C4
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002307A208
	jal	ra,0000000023065C28
	lui	s0,000230C2
	c.mv	a1,a0
	addi	a0,s0,-000007FC
	jal	ra,000000002307A208
	jal	ra,0000000023065C28
	c.mv	a1,a0
	addi	a0,s0,-000007FC
	jal	ra,000000002307A208
	lui	a0,000230B4
	addi	a0,a0,+00000414
	jal	ra,000000002307A208
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; cmd_gpio_get: 23065CE8
cmd_gpio_get proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.li	a5,00000002
	c.mv	s0,a3
	beq	a2,a5,0000000023065D56

l23065CFA:
	lui	a4,00042026
	lbu	a4,a4,+000006B4
	bltu	a5,a4,0000000023065D44

l23065D06:
	lui	a4,00042026
	lbu	a4,a4,+000006B8
	bltu	a5,a4,0000000023065D44

l23065D12:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023065D50

l23065D1C:
	jal	ra,00000000230629C6

l23065D20:
	c.lw	s0,0(a5)
	lui	a3,000230C2
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a4,zero,+00000066
	addi	a3,a3,-00000674
	addi	a2,a2,+0000032C
	addi	a0,a0,-00000664
	jal	ra,000000002307A208

l23065D44:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23065D50:
	jal	ra,00000000230629A4
	c.j	0000000023065D20

l23065D56:
	c.lw	a3,4(a0)
	c.mv	s1,a2
	jal	ra,00000000230A3618
	c.mv	s0,a0
	bge	a0,zero,0000000023065D72

l23065D64:
	lui	a0,000230C2
	addi	a0,a0,-0000062C
	jal	ra,000000002308234C
	c.j	0000000023065D44

l23065D72:
	addi	a1,sp,+0000000F
	andi	a0,a0,+000000FF
	jal	ra,0000000023069C4C
	lui	a5,00042026
	lbu	a5,a5,+000006B4
	c.mv	s2,a0
	bltu	s1,a5,0000000023065D44

l23065D8C:
	lui	a5,00042026
	lbu	a5,a5,+000006B8
	bltu	s1,a5,0000000023065D44

l23065D98:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023065DDE

l23065DA2:
	jal	ra,00000000230629C6

l23065DA6:
	bne	s2,zero,0000000023065DE4

l23065DAA:
	lbu	a5,sp,+0000000F
	c.bnez	a5,0000000023065DEE

l23065DB0:
	lui	a6,000230C2
	addi	a6,a6,-00000678

l23065DB8:
	c.mv	a1,a0
	lui	a3,000230C2
	lui	a2,000230BD
	lui	a0,000230C2
	c.mv	a5,s0
	addi	a4,zero,+00000072
	addi	a3,a3,-00000674
	addi	a2,a2,+0000032C
	addi	a0,a0,-0000061C
	jal	ra,000000002307A208
	c.j	0000000023065D44

l23065DDE:
	jal	ra,00000000230629A4
	c.j	0000000023065DA6

l23065DE4:
	lui	a6,000230C2
	addi	a6,a6,-00000684
	c.j	0000000023065DB8

l23065DEE:
	lui	a6,000230C2
	addi	a6,a6,-00000680
	c.j	0000000023065DB8

;; cmd_gpio_set: 23065DF8
cmd_gpio_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.li	a5,00000003
	c.mv	s1,a3
	lui	s2,00042026
	beq	a2,a5,0000000023065E66

l23065E0E:
	lbu	a4,s2,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023065F48

l23065E18:
	lui	a4,00042026
	lbu	a4,a4,+000006B8
	bltu	a5,a4,0000000023065F48

l23065E24:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023065E60

l23065E2E:
	jal	ra,00000000230629C6

l23065E32:
	c.lwsp	s0,00000004
	c.lw	s1,0(a5)
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	lui	a3,000230C2
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a4,zero,+0000004D
	addi	a3,a3,-00000674
	addi	a2,a2,+0000032C
	addi	a0,a0,-000005F0
	c.addi	sp,00000010
	jal	zero,000000002307A208

l23065E60:
	jal	ra,00000000230629A4
	c.j	0000000023065E32

l23065E66:
	c.lw	a3,4(a0)
	jal	ra,00000000230A3618
	c.mv	s0,a0
	c.lw	s1,8(a0)
	jal	ra,00000000230A3618
	c.mv	s1,a0
	lbu	a4,s2,+000006B4
	blt	s0,zero,0000000023065E82

l23065E7E:
	bge	a0,zero,0000000023065ED4

l23065E82:
	c.li	a5,00000004
	bltu	a5,a4,0000000023065F48

l23065E88:
	lui	a4,00042026
	lbu	a4,a4,+000006B8
	bltu	a5,a4,0000000023065F48

l23065E94:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023065ECE

l23065E9E:
	jal	ra,00000000230629C6

l23065EA2:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	lui	a3,000230C2
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a4,zero,+00000053
	addi	a3,a3,-00000674
	addi	a2,a2,-00000228
	addi	a0,a0,-000005AC
	c.addi	sp,00000010
	jal	zero,000000002307A208

l23065ECE:
	jal	ra,00000000230629A4
	c.j	0000000023065EA2

l23065ED4:
	c.li	a5,00000002
	bltu	a5,a4,0000000023065F22

l23065EDA:
	lui	a4,00042026
	lbu	a4,a4,+000006B8
	bltu	a5,a4,0000000023065F22

l23065EE6:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023065F38

l23065EF0:
	jal	ra,00000000230629C6

l23065EF4:
	c.bnez	s1,0000000023065F3E

l23065EF6:
	lui	a6,000230C2
	addi	a6,a6,-000005F4

l23065EFE:
	lui	a3,000230C2
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C2
	c.mv	a5,s0
	addi	a4,zero,+00000059
	addi	a3,a3,-00000674
	addi	a2,a2,+0000032C
	addi	a0,a0,-00000588
	jal	ra,000000002307A208

l23065F22:
	andi	a0,s0,+000000FF
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	sltu	a1,zero,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023069C38

l23065F38:
	jal	ra,00000000230629A4
	c.j	0000000023065EF4

l23065F3E:
	lui	a6,000230C2
	addi	a6,a6,-00000680
	c.j	0000000023065EFE

l23065F48:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; cmd_gpio_func: 23065F54
cmd_gpio_func proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.li	a5,00000005
	c.mv	s2,a3
	lui	s4,00042026
	beq	a2,a5,0000000023065FCC

l23065F6E:
	lbu	a4,s4,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023066120

l23065F78:
	lui	a4,00042026
	lbu	a4,a4,+000006B8
	bltu	a5,a4,0000000023066120

l23065F84:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023065FC6

l23065F8E:
	jal	ra,00000000230629C6

l23065F92:
	c.lwsp	s0,00000114
	lw	a5,s2,+00000000
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	lui	a3,000230C2
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a4,zero,+0000002E
	addi	a3,a3,-00000674
	addi	a2,a2,+0000032C
	addi	a0,a0,-00000714
	c.addi16sp	00000030
	jal	zero,000000002307A208

l23065FC6:
	jal	ra,00000000230629A4
	c.j	0000000023065F92

l23065FCC:
	c.lw	a3,4(a0)
	jal	ra,00000000230A3618
	c.mv	s0,a0
	lw	a0,s2,+00000008
	jal	ra,00000000230A3618
	c.mv	s3,a0
	lw	a0,s2,+0000000C
	jal	ra,00000000230A3618
	c.mv	s1,a0
	lw	a0,s2,+00000010
	jal	ra,00000000230A3618
	c.mv	s2,a0
	blt	s0,zero,0000000023066002

l23065FF6:
	blt	s3,zero,0000000023066002

l23065FFA:
	blt	s1,zero,0000000023066002

l23065FFE:
	bge	a0,zero,000000002306605C

l23066002:
	lbu	a4,s4,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,0000000023066120

l2306600C:
	lui	a4,00042026
	lbu	a4,a4,+000006B8
	bltu	a5,a4,0000000023066120

l23066018:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023066056

l23066022:
	jal	ra,00000000230629C6

l23066026:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	lui	a3,000230C2
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a4,zero,+00000036
	addi	a3,a3,-00000674
	addi	a2,a2,-00000228
	addi	a0,a0,-000005AC
	c.addi16sp	00000030
	jal	zero,000000002307A208

l23066056:
	jal	ra,00000000230629A4
	c.j	0000000023066026

l2306605C:
	lbu	a4,s4,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,00000000230660C8

l23066066:
	lui	a4,00042026
	lbu	a4,a4,+000006B8
	bltu	a5,a4,00000000230660C8

l23066072:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,00000000230660EA

l2306607C:
	jal	ra,00000000230629C6

l23066080:
	bne	s3,zero,00000000230660F0

l23066084:
	lui	a6,000230C2
	addi	a6,a6,-00000724

l2306608C:
	c.bnez	s1,00000000230660FA

l2306608E:
	lui	a7,000230BF
	addi	a7,a7,+000007B0

l23066096:
	bne	s2,zero,0000000023066104

l2306609A:
	lui	a5,000230BF
	addi	a5,a5,+000007B0

l230660A2:
	lui	a3,000230C2
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C2
	c.swsp	a5,00000000
	addi	a4,zero,+0000003E
	c.mv	a5,s0
	addi	a3,a3,-00000674
	addi	a2,a2,+0000032C
	addi	a0,a0,-000006C8
	jal	ra,000000002307A208

l230660C8:
	andi	a0,s0,+000000FF
	sltu	a1,zero,s1
	sltu	a2,zero,s2
	beq	s3,zero,000000002306610E

l230660D8:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	jal	zero,0000000023069BF6

l230660EA:
	jal	ra,00000000230629A4
	c.j	0000000023066080

l230660F0:
	lui	a6,000230C2
	addi	a6,a6,-0000072C
	c.j	000000002306608C

l230660FA:
	lui	a7,000230C2
	addi	a7,a7,-0000071C
	c.j	0000000023066096

l23066104:
	lui	a5,000230C2
	addi	a5,a5,-0000071C
	c.j	00000000230660A2

l2306610E:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	jal	zero,0000000023069BB2

l23066120:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; bl_gpio_cli_init: 23066130
;;   Called from:
;;     23000B24 (in aos_loop_proc)
bl_gpio_cli_init proc
	c.li	a0,00000000
	c.jr	ra

;; bl_efuse_read_mac: 23066134
;;   Called from:
;;     23027E70 (in wifi_mgmr_ap_mac_get)
;;     2306822A (in hal_board_cfg)
bl_efuse_read_mac proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023083C7E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_efuse_read_mac_factory: 23066144
;;   Called from:
;;     23068B6A (in hal_board_cfg)
bl_efuse_read_mac_factory proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000001
	c.swsp	ra,00000084
	jal	ra,00000000230840C6
	c.lwsp	a2,00000020
	sltu	a0,zero,a0
	sub	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; bl_efuse_read_capcode: 2306615C
;;   Called from:
;;     23068368 (in hal_board_cfg)
bl_efuse_read_capcode proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000001
	c.swsp	ra,00000084
	jal	ra,00000000230840AA
	c.lwsp	a2,00000020
	sltu	a0,zero,a0
	sub	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; bl_efuse_read_pwroft: 23066174
;;   Called from:
;;     23068FCE (in hal_board_cfg)
bl_efuse_read_pwroft proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000001
	c.swsp	ra,00000084
	jal	ra,00000000230840B8
	c.lwsp	a2,00000020
	sltu	a0,zero,a0
	sub	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; bl_wifi_clock_enable: 2306618C
;;   Called from:
;;     23028E24 (in bl606a0_wifi_init)
bl_wifi_clock_enable proc
	lui	a5,0004200F
	addi	a5,a5,+0000059C
	c.lw	a5,0(a4)
	c.bnez	a4,000000002306619C

l23066198:
	c.li	a4,00000001
	c.sw	a5,0(a4)

l2306619C:
	c.li	a0,00000000
	c.jr	ra

;; bl_wifi_enable_irq: 230661A0
;;   Called from:
;;     23022156 (in bl_main_rtthread_start)
bl_wifi_enable_irq proc
	lui	a1,00023007
	c.addi	sp,FFFFFFF0
	addi	a1,a1,+0000015A
	addi	a0,zero,+00000046
	c.swsp	ra,00000084
	jal	ra,0000000023065722
	lui	a1,00023007
	addi	a1,a1,+000001AA
	addi	a0,zero,+0000004F
	jal	ra,0000000023065722
	addi	a0,zero,+00000046
	jal	ra,00000000230655A8
	addi	a0,zero,+0000004F
	jal	ra,00000000230655A8
	lui	a0,000230C2
	addi	a0,a0,-000004BC
	jal	ra,000000002308234C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_wifi_sta_mac_addr_set: 230661E8
;;   Called from:
;;     230685FA (in hal_board_cfg)
;;     23068A40 (in hal_board_cfg)
bl_wifi_sta_mac_addr_set proc
	c.mv	a1,a0
	lui	a0,00042026
	c.addi	sp,FFFFFFF0
	c.li	a2,00000006
	addi	a0,a0,+000006BC
	c.swsp	ra,00000084
	jal	ra,00000000230A382C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_wifi_ap_mac_addr_set: 23066204
;;   Called from:
;;     230685F4 (in hal_board_cfg)
;;     23068B0E (in hal_board_cfg)
bl_wifi_ap_mac_addr_set proc
	c.mv	a1,a0
	lui	a0,00042026
	c.addi	sp,FFFFFFF0
	c.li	a2,00000006
	addi	a0,a0,+000006C8
	c.swsp	ra,00000084
	jal	ra,00000000230A382C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_wifi_mac_addr_get: 23066220
;;   Called from:
;;     230271D6 (in cmd_wifi_ap_start)
;;     23027A7E (in wifi_mgmr_sta_enable)
;;     23027DDA (in wifi_mgmr_ap_enable)
;;     23028DEA (in bl606a0_wifi_init)
;;     230290B0 (in bdaddr_init)
bl_wifi_mac_addr_get proc
	lui	a1,00042026
	c.addi	sp,FFFFFFF0
	c.li	a2,00000006
	addi	a1,a1,+000006BC
	c.swsp	ra,00000084
	jal	ra,00000000230A382C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_wifi_country_code_set: 2306623A
;;   Called from:
;;     23068690 (in hal_board_cfg)
bl_wifi_country_code_set proc
	lui	a5,00042026
	sb	a0,a5,+000006D4
	c.li	a0,00000000
	c.jr	ra

;; bl_wifi_ap_info_set: 23066246
;;   Called from:
;;     23069360 (in hal_board_cfg)
bl_wifi_ap_info_set proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,00042026
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s2,a0
	c.mv	s3,a1
	c.mv	s1,a2
	c.li	a1,00000000
	addi	a2,zero,+00000063
	addi	a0,s0,+000006D5
	c.swsp	ra,00000094
	c.swsp	a4,00000004
	c.swsp	a3,00000084
	jal	ra,00000000230A3A68
	c.mv	a2,s3
	c.mv	a1,s2
	addi	a0,s0,+000006D5
	jal	ra,00000000230A382C
	c.lwsp	a2,000000A4
	lui	a0,00042026
	c.mv	a1,s1
	c.mv	a2,a3
	addi	a0,a0,+000006F6
	jal	ra,00000000230A382C
	c.lwsp	s0,000000C4
	lui	a5,00042026
	addi	a5,a5,+000006BC
	sb	a4,a5,+0000007B
	c.li	a4,00000001
	sb	a4,a5,+0000007C
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; bl_wifi_sta_info_set: 230662B0
;;   Called from:
;;     2306942A (in hal_board_cfg)
bl_wifi_sta_info_set proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,00042026
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s2,a0
	c.mv	s3,a1
	c.mv	s1,a2
	c.li	a1,00000000
	addi	a2,zero,+00000063
	addi	a0,s0,+00000739
	c.swsp	ra,00000094
	c.swsp	a4,00000004
	c.swsp	a3,00000084
	jal	ra,00000000230A3A68
	c.mv	a2,s3
	c.mv	a1,s2
	addi	a0,s0,+00000739
	jal	ra,00000000230A382C
	c.lwsp	a2,000000A4
	lui	a0,00042026
	c.mv	a1,s1
	c.mv	a2,a3
	addi	a0,a0,+0000075A
	jal	ra,00000000230A382C
	c.lwsp	s0,000000C4
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	lui	a5,00042026
	sb	a4,a5,+0000079C
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; cmd_timer_start: 23066310
cmd_timer_start proc
	jal	zero,0000000023069B1C

;; cmd_wdt_disable: 23066314
cmd_wdt_disable proc
	jal	zero,0000000023069F14

;; cmd_wdt_feed: 23066318
cmd_wdt_feed proc
	jal	zero,0000000023069F10

;; cmd_wdt_init: 2306631C
cmd_wdt_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.li	a5,00000002
	c.mv	s0,a3
	lui	s3,0004200F
	lui	s2,000230C2
	lui	s1,000230BD
	beq	a2,a5,0000000023066374

l2306633C:
	lw	a5,s3,+00000560
	c.beqz	a5,000000002306636E

l23066342:
	jal	ra,00000000230629C6

l23066346:
	c.lw	s0,0(a5)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a2,00000068
	addi	a3,s2,-000004A8
	addi	a2,s1,+0000032C
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a4,zero,+0000002A
	addi	a0,a0,-00000498
	c.addi16sp	00000020
	jal	zero,000000002307A208

l2306636E:
	jal	ra,00000000230629A4
	c.j	0000000023066346

l23066374:
	c.lw	a3,4(a0)
	jal	ra,00000000230A3618
	lw	a5,s3,+00000560
	c.mv	s0,a0
	c.beqz	a5,00000000230663B8

l23066382:
	jal	ra,00000000230629C6

l23066386:
	c.mv	a1,a0
	lui	a0,000230C2
	c.mv	a5,s0
	addi	a4,zero,+0000002E
	addi	a3,s2,-000004A8
	addi	a2,s1,+0000032C
	addi	a0,a0,-00000474
	jal	ra,000000002307A208
	bge	zero,s0,00000000230663BE

l230663A6:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,0000000023069F18

l230663B8:
	jal	ra,00000000230629A4
	c.j	0000000023066386

l230663BE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; bl_wdt_cli_init: 230663CC
;;   Called from:
;;     23000B20 (in aos_loop_proc)
bl_wdt_cli_init proc
	c.li	a0,00000000
	c.jr	ra

;; fdt32_to_cpu: 230663D0
;;   Called from:
;;     23066C2A (in vfs_uart_init)
;;     23066C34 (in vfs_uart_init)
;;     23066C80 (in vfs_uart_init)
;;     23066C88 (in vfs_uart_init)
;;     23066F7A (in vfs_uart_init)
fdt32_to_cpu proc
	srli	a4,a0,00000018
	slli	a5,a0,00000018
	c.or	a5,a4
	srli	a4,a0,00000008
	andi	a4,a4,+000000FF
	c.srli	a0,00000010
	c.slli	a4,10
	andi	a0,a0,+000000FF
	c.or	a5,a4
	c.slli	a0,08
	c.or	a0,a5
	c.jr	ra

;; dev_uart_init: 230663F2
;;   Called from:
;;     23066E34 (in vfs_uart_init)
dev_uart_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.li	a5,00000002
	bltu	a5,a0,000000002306640E

l2306640A:
	c.mv	s3,a1
	c.bnez	a1,000000002306645C

l2306640E:
	lui	a5,00042026
	lbu	a4,a5,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,00000000230664F0

l2306641C:
	lui	a4,00042026
	lbu	a4,a4,+0000079E
	bltu	a5,a4,00000000230664F0

l23066428:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023066456

l23066432:
	jal	ra,00000000230629C6

l23066436:
	addi	a4,zero,+00000065

l2306643A:
	lui	a3,000230C2
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a3,a3,-000003CC
	addi	a2,a2,-00000228
	addi	a0,a0,-000003C0
	c.j	00000000230664EC

l23066456:
	jal	ra,00000000230629A4
	c.j	0000000023066436

l2306645C:
	c.mv	s1,a0
	c.mv	s5,a2
	c.mv	s4,a3
	c.beqz	a0,000000002306650C

l23066464:
	c.li	a5,00000001
	bne	a0,a5,00000000230664A6

l2306646A:
	lui	s0,0004200F
	lw	a5,s0,+000005A4
	addi	s0,s0,+000005A4

l23066476:
	c.beqz	a5,0000000023066520

l23066478:
	lui	a5,00042026
	lbu	a4,a5,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,00000000230664F0

l23066486:
	lui	a4,00042026
	lbu	a4,a4,+0000079E
	bltu	a5,a4,00000000230664F0

l23066492:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,000000002306651A

l2306649C:
	jal	ra,00000000230629C6

l230664A0:
	addi	a4,zero,+00000036
	c.j	000000002306643A

l230664A6:
	lui	a5,00042026
	lbu	a4,a5,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,00000000230664F0

l230664B4:
	lui	a4,00042026
	lbu	a4,a4,+0000079E
	bltu	a5,a4,00000000230664F0

l230664C0:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023066506

l230664CA:
	jal	ra,00000000230629C6

l230664CE:
	lui	a3,000230C2
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a4,zero,+00000074
	addi	a3,a3,-000003CC
	addi	a2,a2,-00000228
	addi	a0,a0,-000003A0

l230664EC:
	jal	ra,000000002307A208

l230664F0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.li	a0,FFFFFFFF
	c.addi16sp	00000020
	c.jr	ra

l23066506:
	jal	ra,00000000230629A4
	c.j	00000000230664CE

l2306650C:
	lui	s0,0004200F
	lw	a5,s0,+000005A0
	addi	s0,s0,+000005A0
	c.j	0000000023066476

l2306651A:
	jal	ra,00000000230629A4
	c.j	00000000230664A0

l23066520:
	addi	a0,zero,+0000003C
	jal	ra,000000002306488A
	c.sw	s0,0(a0)
	c.bnez	a0,000000002306657A

l2306652C:
	lui	a5,00042026
	lbu	a4,a5,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,00000000230664F0

l2306653A:
	lui	a4,00042026
	lbu	a4,a4,+0000079E
	bltu	a5,a4,00000000230664F0

l23066546:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023066574

l23066550:
	jal	ra,00000000230629C6

l23066554:
	addi	a4,zero,+0000003C

l23066558:
	lui	a3,000230C2
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a3,a3,-000003CC
	addi	a2,a2,-00000228
	addi	a0,a0,-00000384
	c.j	00000000230664EC

l23066574:
	jal	ra,00000000230629A4
	c.j	0000000023066554

l2306657A:
	addi	a2,zero,+0000003C
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.lw	s0,0(a5)
	c.li	s2,00000002
	c.li	a0,00000004
	sb	s2,a5,+00000034
	c.lw	s0,0(a5)
	sw	zero,a5,+00000038
	lw	s6,s0,+00000000
	jal	ra,000000002306488A
	sw	a0,s6,+00000038
	c.lw	s0,0(a5)
	c.lw	a5,56(a0)
	c.bnez	a0,00000000230665DA

l230665A6:
	lui	a5,00042026
	lbu	a4,a5,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,00000000230664F0

l230665B4:
	lui	a4,00042026
	lbu	a4,a4,+0000079E
	bltu	a5,a4,00000000230664F0

l230665C0:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,00000000230665D4

l230665CA:
	jal	ra,00000000230629C6

l230665CE:
	addi	a4,zero,+00000045
	c.j	0000000023066558

l230665D4:
	jal	ra,00000000230629A4
	c.j	00000000230665CE

l230665DA:
	c.li	a2,00000004
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.lw	s0,0(a5)
	sw	s5,a5,+00000018
	c.lw	s0,0(a5)
	sw	s4,a5,+0000001C
	c.lw	s0,0(a5)
	c.bnez	a5,0000000023066664

l230665F2:
	lui	a5,00042026
	lbu	a4,a5,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,000000002306663C

l23066600:
	lui	a4,00042026
	lbu	a4,a4,+0000079E
	bltu	a5,a4,000000002306663C

l2306660C:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,000000002306665E

l23066616:
	jal	ra,00000000230629C6

l2306661A:
	lui	a3,000230C2
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a4,zero,+00000050
	addi	a3,a3,-000003CC
	addi	a2,a2,-00000228
	addi	a0,a0,-00000384
	jal	ra,000000002307A208

l2306663C:
	c.lw	s0,0(a2)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.mv	a0,s3
	c.lwsp	a2,00000068
	lui	a1,000230C4
	addi	a1,a1,+000004E8
	c.addi16sp	00000020
	jal	zero,000000002307B2B2

l2306665E:
	jal	ra,00000000230629A4
	c.j	000000002306661A

l23066664:
	sb	s1,a5,+00000000
	c.lw	s0,0(a5)
	sb	s2,a5,+00000034
	c.lw	s0,0(a4)
	c.lui	a5,0001C000
	addi	a5,a5,+00000200
	c.sw	a4,4(a5)
	c.lw	s0,0(a5)
	c.li	a4,00000003
	sb	a4,a5,+00000008
	c.lw	s0,0(a5)
	sb	zero,a5,+00000009
	c.lw	s0,0(a5)
	sb	zero,a5,+0000000A
	c.lw	s0,0(a5)
	sb	zero,a5,+0000000B
	c.lw	s0,0(a5)
	sb	s2,a5,+0000000C
	c.j	000000002306663C

;; hal_uart_send_trigger: 2306669A
;;   Called from:
;;     2307B5BC (in vfs_uart_write)
hal_uart_send_trigger proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a0,a0,+00000000
	jal	ra,0000000023064DCA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hal_uart_send_trigger_off: 230666AE
;;   Called from:
;;     2307B4CC (in __uart_tx_irq)
hal_uart_send_trigger_off proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a0,a0,+00000000
	jal	ra,0000000023064DDE
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hal_uart_init: 230666C2
;;   Called from:
;;     2307B434 (in vfs_uart_open)
hal_uart_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.lw	a0,56(a0)
	c.li	s1,FFFFFFFF
	jal	ra,000000002307BE1A
	c.bnez	a0,00000000230666F6

l230666D6:
	c.mv	s1,a0
	lbu	a0,s0,+00000000
	addi	a1,sp,+0000000F
	jal	ra,0000000023064E16
	lbu	a5,sp,+0000000F
	c.bnez	a5,0000000023066702

l230666EA:
	sb	zero,s0,+00000009

l230666EE:
	lbu	a0,s0,+00000000
	jal	ra,0000000023064E76

l230666F6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23066702:
	c.li	a4,00000001
	bne	a5,a4,000000002306670E

l23066708:
	sb	a5,s0,+00000009
	c.j	00000000230666EE

l2306670E:
	c.li	a5,00000002
	c.j	0000000023066708

;; hal_uart_recv_II: 23066712
;;   Called from:
;;     2305E694 (in cli_getchar)
;;     2307B44E (in __uart_rx_irq)
hal_uart_recv_II proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.li	s0,00000000

l2306671E:
	beq	s0,a2,000000002306673A

l23066722:
	lbu	a0,s1,+00000000
	c.swsp	a3,00000084
	c.swsp	a2,00000004
	c.swsp	a1,00000080
	jal	ra,0000000023064D36
	c.lwsp	tp,00000064
	c.lwsp	s0,00000084
	c.lwsp	a2,000000A4
	bge	a0,zero,0000000023066748

l2306673A:
	c.sw	a3,0(s0)
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23066748:
	add	a5,a1,s0
	sb	a0,a5,+00000000
	c.addi	s0,00000001
	c.j	000000002306671E

;; hal_uart_send: 23066754
;;   Called from:
;;     2307B4BE (in __uart_tx_irq)
hal_uart_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a0
	c.mv	s0,a1
	add	s1,a1,a2

l23066766:
	bne	s0,s1,0000000023066778

l2306676A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23066778:
	lbu	a1,s0,+00000000
	lbu	a0,s2,+00000000
	c.addi	s0,00000001
	jal	ra,0000000023064D00
	c.j	0000000023066766

;; hal_uart_finalize: 23066788
;;   Called from:
;;     2307B50A (in vfs_uart_close)
hal_uart_finalize proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,56(s0)
	lbu	a0,a0,+00000000
	jal	ra,0000000023064ED0
	c.mv	a0,s0
	jal	ra,000000002307BE3A
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hal_uart_notify_register: 230667A8
;;   Called from:
;;     2307B418 (in vfs_uart_open)
;;     2307B428 (in vfs_uart_open)
hal_uart_notify_register proc
	c.addi	sp,FFFFFFF0
	c.mv	a4,a1
	c.swsp	ra,00000084
	c.mv	a1,a2
	c.bnez	a4,00000000230667C6

l230667B2:
	c.mv	a2,a0
	lbu	a0,a0,+00000000
	jal	ra,0000000023064F48

l230667BC:
	c.li	a5,00000000

l230667BE:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l230667C6:
	c.li	a3,00000001
	c.li	a5,FFFFFFFF
	bne	a4,a3,00000000230667BE

l230667CE:
	c.mv	a2,a0
	lbu	a0,a0,+00000000
	jal	ra,0000000023064F28
	c.j	00000000230667BC

;; vfs_uart_init: 230667DA
;;   Called from:
;;     23000A8E (in aos_loop_proc)
vfs_uart_init proc
	lui	a5,0004200F
	lb	a3,a5,+000005A8
	c.addi16sp	FFFFFF40
	addi	a5,a5,+000005A8
	c.swsp	ra,000000DC
	c.swsp	s0,0000005C
	c.swsp	s1,000000D8
	c.swsp	s2,00000058
	c.swsp	s3,000000D4
	c.swsp	s4,00000054
	c.swsp	s5,000000D0
	c.swsp	s6,00000050
	c.swsp	s7,000000CC
	c.swsp	s8,0000004C
	c.swsp	s9,000000C8
	c.swsp	s10,00000048
	c.swsp	s11,000000C4
	c.li	a4,00000001
	c.swsp	a5,0000001C
	beq	a3,a4,000000002306693E

l2306680A:
	lui	a5,000230C2
	addi	a5,a5,-00000344
	c.swsp	a1,0000009C
	c.swsp	a5,00000024
	lui	a1,000230C2
	lui	a5,000230C2
	addi	a5,a5,-00000334
	c.mv	s4,a0
	addi	a2,zero,+00000030
	addi	a1,a1,-000003FC
	c.addi4spn	a0,00000050
	c.swsp	a5,000000A4
	c.swsp	zero,000000A0
	jal	ra,00000000230A382C
	c.addi4spn	a5,00000048
	c.swsp	a5,00000094
	c.li	s2,00000000
	lui	s0,000230C2
	lui	s3,000230BD

l23066844:
	c.lwsp	a2,000001F4
	c.lwsp	t3,00000174
	c.mv	a0,s4
	lw	s6,a5,+00000000
	lui	s1,00042026
	c.mv	a2,s6
	jal	ra,000000002305912A
	c.mv	s5,a0
	blt	zero,a0,00000000230668A8

l2306685E:
	lbu	a4,s1,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,000000002306692E

l23066868:
	lui	a4,00042026
	lbu	a4,a4,+0000079E
	bltu	a5,a4,000000002306692E

l23066874:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,00000000230668A2

l2306687E:
	jal	ra,00000000230629C6

l23066882:
	c.mv	a6,s6
	c.mv	a5,s2
	addi	a4,zero,+0000012C

l2306688A:
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a3,s0,-000003CC
	addi	a2,s3,+0000032C
	addi	a0,a0,-00000324
	c.j	00000000230668FE

l2306689E:
	c.li	s2,00000001
	c.j	0000000023066844

l230668A2:
	jal	ra,00000000230629A4
	c.j	0000000023066882

l230668A8:
	lui	s7,000230C2
	c.mv	a1,a0
	addi	a2,s7,-000002FC
	c.mv	a0,s4
	jal	ra,0000000023059296
	c.li	a5,00000001
	c.mv	s6,a0
	beq	a0,a5,000000002306690A

l230668C0:
	lbu	a4,s1,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,000000002306692E

l230668CA:
	lui	a4,00042026
	lbu	a4,a4,+0000079E
	bltu	a5,a4,000000002306692E

l230668D6:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023066904

l230668E0:
	jal	ra,00000000230629C6

l230668E4:
	c.mv	a1,a0
	lui	a0,000230C2
	c.mv	a6,s6
	c.mv	a5,s2
	addi	a4,zero,+00000132
	addi	a3,s0,-000003CC
	addi	a2,s3,+0000032C
	addi	a0,a0,-000002F4

l230668FE:
	jal	ra,000000002307A208
	c.j	000000002306692E

l23066904:
	jal	ra,00000000230629A4
	c.j	00000000230668E4

l2306690A:
	c.addi4spn	a4,00000044
	addi	a2,s7,-000002FC
	c.li	a3,00000000
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,00000000230592E0
	c.lwsp	t0,000000C4
	c.li	a5,00000004
	c.mv	s7,a0
	beq	a4,a5,000000002306695E

l23066924:
	lbu	a4,s1,+000006B4
	c.li	a5,00000002
	bgeu	a5,a4,00000000230669C6

l2306692E:
	c.lwsp	a2,000001F4
	c.addi	a5,00000004
	c.swsp	a5,00000094
	beq	s2,zero,000000002306689E

l23066938:
	c.lwsp	s8,000001F4
	sb	s2,a5,+00000000

l2306693E:
	c.lwsp	t5,00000130
	c.lwsp	s10,00000114
	c.lwsp	s6,00000134
	c.lwsp	s2,00000158
	c.lwsp	a4,00000178
	c.lwsp	a0,00000198
	c.lwsp	t1,000001B8
	c.lwsp	sp,000001D8
	c.lwsp	t5,000000E8
	c.lwsp	s10,0000000C
	c.lwsp	s6,0000002C
	c.lwsp	s2,0000004C
	c.lwsp	a4,0000006C
	c.li	a0,00000000
	c.addi16sp	000000C0
	c.jr	ra

l2306695E:
	lui	a5,000230C2
	c.mv	a1,a0
	c.li	a2,00000004
	addi	a0,a5,-000002B8
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023066924

l23066970:
	lui	s8,000230C2
	addi	a2,s8,-00000284
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,0000000023059296
	c.mv	s7,a0
	beq	a0,s6,0000000023066A08

l23066986:
	lbu	a4,s1,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,000000002306692E

l23066990:
	lui	a4,00042026
	lbu	a4,a4,+0000079E
	bltu	a5,a4,000000002306692E

l2306699C:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023066A02

l230669A6:
	jal	ra,00000000230629C6

l230669AA:
	c.mv	a1,a0
	lui	a0,000230C2
	c.mv	a6,s7
	c.mv	a5,s2
	addi	a4,zero,+0000013E
	addi	a3,s0,-000003CC
	addi	a2,s3,+0000032C
	addi	a0,a0,-0000027C
	c.j	00000000230668FE

l230669C6:
	lui	a4,00042026
	lbu	a4,a4,+0000079E
	bltu	a5,a4,000000002306692E

l230669D2:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,00000000230669FC

l230669DC:
	jal	ra,00000000230629C6

l230669E0:
	c.mv	a1,a0
	lui	a0,000230C2
	c.mv	a6,s7
	c.mv	a5,s2
	addi	a4,zero,+00000137
	addi	a3,s0,-000003CC
	addi	a2,s3,+0000032C
	addi	a0,a0,-000002B0
	c.j	00000000230668FE

l230669FC:
	jal	ra,00000000230629A4
	c.j	00000000230669E0

l23066A02:
	jal	ra,00000000230629A4
	c.j	00000000230669AA

l23066A08:
	c.addi4spn	a4,00000044
	c.li	a3,00000000
	addi	a2,s8,-00000284
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,00000000230592E0
	c.lwsp	t0,000000C4
	c.swsp	a0,00000098
	addi	a5,zero,+00000020
	bgeu	a5,a4,0000000023066A66

l23066A24:
	lbu	a4,s1,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023066A66

l23066A2E:
	lui	a4,00042026
	lbu	a4,a4,+0000079E
	bltu	a5,a4,0000000023066A66

l23066A3A:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023066ABC

l23066A44:
	jal	ra,00000000230629C6

l23066A48:
	c.lwsp	t0,00000008
	c.mv	a1,a0
	lui	a0,000230C2
	c.mv	a5,s2
	addi	a4,zero,+00000144
	addi	a3,s0,-000003CC
	addi	a2,s3,+0000032C
	addi	a0,a0,-00000240
	jal	ra,000000002307A208

l23066A66:
	lui	a2,000230C2
	c.addi4spn	a3,00000044
	addi	a2,a2,-00000210
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,000000002305926E
	c.bnez	a0,0000000023066AC8

l23066A7A:
	lbu	a4,s1,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,000000002306692E

l23066A84:
	lui	a4,00042026
	lbu	a4,a4,+0000079E
	bltu	a5,a4,000000002306692E

l23066A90:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023066AC2

l23066A9A:
	jal	ra,00000000230629C6

l23066A9E:
	c.mv	a1,a0
	lui	a0,000230C2
	c.mv	a5,s2
	addi	a4,zero,+0000014B
	addi	a3,s0,-000003CC
	addi	a2,s3,+0000032C
	addi	a0,a0,-00000204

l23066AB6:
	jal	ra,000000002307A208
	c.j	000000002306692E

l23066ABC:
	jal	ra,00000000230629A4
	c.j	0000000023066A48

l23066AC2:
	jal	ra,00000000230629A4
	c.j	0000000023066A9E

l23066AC8:
	lui	a2,000230C2
	lw	s7,a0,+00000000
	c.addi4spn	a3,00000044
	addi	a2,a2,-000001D4
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,000000002305926E
	c.bnez	a0,0000000023066B24

l23066AE0:
	lbu	a4,s1,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,000000002306692E

l23066AEA:
	lui	a4,00042026
	lbu	a4,a4,+0000079E
	bltu	a5,a4,000000002306692E

l23066AF6:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023066B1E

l23066B00:
	jal	ra,00000000230629C6

l23066B04:
	c.mv	a1,a0
	lui	a0,000230C2
	c.mv	a5,s2
	addi	a4,zero,+00000153
	addi	a3,s0,-000003CC
	addi	a2,s3,+0000032C
	addi	a0,a0,-000001D0
	c.j	0000000023066AB6

l23066B1E:
	jal	ra,00000000230629A4
	c.j	0000000023066B04

l23066B24:
	lui	a2,000230C2
	lw	s6,a0,+00000000
	addi	a2,a2,-000001A8
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,000000002305912A
	c.mv	s9,a0
	blt	zero,a0,0000000023066B8E

l23066B3E:
	lbu	a4,s1,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023066B7E

l23066B48:
	lui	a4,00042026
	lbu	a4,a4,+0000079E
	bltu	a5,a4,0000000023066B7E

l23066B54:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023066B88

l23066B5E:
	jal	ra,00000000230629C6

l23066B62:
	c.mv	a1,a0
	lui	a0,000230C2
	c.mv	a5,s2
	addi	a4,zero,+0000015B
	addi	a3,s0,-000003CC
	addi	a2,s3,+0000032C
	addi	a0,a0,-0000019C
	jal	ra,000000002307A208

l23066B7E:
	addi	s9,zero,+00000200
	addi	s8,zero,+00000200
	c.j	0000000023066C3A

l23066B88:
	jal	ra,00000000230629A4
	c.j	0000000023066B62

l23066B8E:
	lui	s8,000230C2
	c.mv	a1,a0
	c.addi4spn	a3,00000044
	addi	a2,s8,-0000015C
	c.mv	a0,s4
	jal	ra,000000002305926E
	c.bnez	a0,0000000023066BD8

l23066BA2:
	lbu	a4,s1,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,000000002306692E

l23066BAC:
	lui	a4,00042026
	lbu	a4,a4,+0000079E
	bltu	a5,a4,000000002306692E

l23066BB8:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023066BD2

l23066BC2:
	jal	ra,00000000230629C6

l23066BC6:
	addi	a6,s8,-0000015C
	c.mv	a5,s2
	addi	a4,zero,+00000161
	c.j	000000002306688A

l23066BD2:
	jal	ra,00000000230629A4
	c.j	0000000023066BC6

l23066BD8:
	lui	s8,000230C2
	lw	s10,a0,+00000000
	c.mv	a1,s9
	c.addi4spn	a3,00000044
	addi	a2,s8,-00000154
	c.mv	a0,s4
	jal	ra,000000002305926E
	c.mv	s9,a0
	c.bnez	a0,0000000023066C28

l23066BF2:
	lbu	a4,s1,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,000000002306692E

l23066BFC:
	lui	a4,00042026
	lbu	a4,a4,+0000079E
	bltu	a5,a4,000000002306692E

l23066C08:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023066C22

l23066C12:
	jal	ra,00000000230629C6

l23066C16:
	addi	a6,s8,-00000154
	c.mv	a5,s2
	addi	a4,zero,+00000167
	c.j	000000002306688A

l23066C22:
	jal	ra,00000000230629A4
	c.j	0000000023066C16

l23066C28:
	c.mv	a0,s10
	jal	ra,00000000230663D0
	c.mv	s8,a0
	lw	a0,s9,+00000000
	jal	ra,00000000230663D0
	c.mv	s9,a0

l23066C3A:
	lbu	a4,s1,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023066C7E

l23066C44:
	lui	a4,00042026
	lbu	a4,a4,+0000079E
	bltu	a5,a4,0000000023066C7E

l23066C50:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023066CF0

l23066C5A:
	jal	ra,00000000230629C6

l23066C5E:
	c.mv	a1,a0
	lui	a0,000230C2
	c.mv	a7,s9
	c.mv	a6,s8
	c.mv	a5,s2
	addi	a4,zero,+0000016C
	addi	a3,s0,-000003CC
	addi	a2,s3,+0000032C
	addi	a0,a0,-0000014C
	jal	ra,000000002307A208

l23066C7E:
	c.mv	a0,s7
	jal	ra,00000000230663D0
	c.swsp	a0,00000090
	c.mv	a0,s6
	jal	ra,00000000230663D0
	c.swsp	a0,00000014
	addi	s7,sp,+00000050
	lui	s11,00042026
	lui	s10,0004200F

l23066C9A:
	lui	a5,000230C2
	addi	a2,a5,-0000010C
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,000000002305912A
	blt	zero,a0,0000000023066CFC

l23066CAE:
	lbu	a4,s1,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023066CE6

l23066CB8:
	lbu	a4,s11,+0000079E
	bltu	a5,a4,0000000023066CE6

l23066CC0:
	lw	a5,s10,+00000560
	c.beqz	a5,0000000023066CF6

l23066CC6:
	jal	ra,00000000230629C6

l23066CCA:
	c.mv	a1,a0
	lui	a0,000230C2
	c.mv	a5,s2
	addi	a4,zero,+00000171
	addi	a3,s0,-000003CC
	addi	a2,s3,+0000032C
	addi	a0,a0,-00000104
	jal	ra,000000002307A208

l23066CE6:
	c.addi	s7,0000000C
	c.addi4spn	a5,00000080
	bne	a5,s7,0000000023066C9A

l23066CEE:
	c.j	0000000023066EB2

l23066CF0:
	jal	ra,00000000230629A4
	c.j	0000000023066C5E

l23066CF6:
	jal	ra,00000000230629A4
	c.j	0000000023066CCA

l23066CFC:
	lw	s6,s7,+00000000
	c.mv	a1,a0
	c.swsp	a0,00000018
	c.mv	a2,s6
	c.mv	a0,s4
	jal	ra,0000000023059296
	c.li	a4,00000001
	c.lwsp	a6,000001F4
	beq	a0,a4,0000000023066D5A

l23066D14:
	lbu	a4,s1,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023066CE6

l23066D1E:
	lbu	a4,s11,+0000079E
	bltu	a5,a4,0000000023066CE6

l23066D26:
	lw	a5,s10,+00000560
	c.swsp	a0,00000018
	c.beqz	a5,0000000023066D54

l23066D2E:
	jal	ra,00000000230629C6

l23066D32:
	c.lwsp	a6,00000138
	c.mv	a1,a0
	lui	a0,000230C2
	c.mv	a6,s6
	c.mv	a5,s2
	addi	a4,zero,+00000176
	addi	a3,s0,-000003CC
	addi	a2,s3,+0000032C
	addi	a0,a0,-000000D8
	jal	ra,000000002307A208
	c.j	0000000023066CE6

l23066D54:
	jal	ra,00000000230629A4
	c.j	0000000023066D32

l23066D5A:
	c.addi4spn	a4,00000044
	c.mv	a1,a5
	c.li	a3,00000000
	c.mv	a2,s6
	c.mv	a0,s4
	jal	ra,00000000230592E0
	c.lwsp	t0,000000C4
	c.swsp	a0,00000018
	c.li	a5,00000004
	beq	a4,a5,0000000023066DB6

l23066D72:
	lbu	a4,s1,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023066CE6

l23066D7C:
	lbu	a4,s11,+0000079E
	bltu	a5,a4,0000000023066CE6

l23066D84:
	lw	a5,s10,+00000560
	beq	a5,zero,0000000023066E82

l23066D8C:
	jal	ra,00000000230629C6

l23066D90:
	c.lwsp	t0,000000E4
	c.lwsp	a6,00000138
	c.mv	a1,a0
	lui	a0,000230C2
	c.swsp	a5,00000000
	c.mv	a6,s6
	c.mv	a5,s2
	addi	a4,zero,+0000017B
	addi	a3,s0,-000003CC
	addi	a2,s3,+0000032C
	addi	a0,a0,-000000A4
	jal	ra,000000002307A208
	c.j	0000000023066CE6

l23066DB6:
	c.lwsp	a6,00000174
	lui	a5,000230C2
	c.li	a2,00000004
	addi	a0,a5,-000002B8
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023066D72

l23066DC8:
	lui	a5,000230C2
	c.mv	a1,s5
	addi	a2,a5,-00000068
	c.mv	a0,s4
	jal	ra,000000002305912A
	c.mv	a1,a0
	blt	zero,a0,0000000023066F24

l23066DDE:
	lbu	a4,s1,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023066DF4

l23066DE8:
	lui	a4,00042026
	lbu	a4,a4,+0000079E
	bgeu	a5,a4,0000000023066E88

l23066DF4:
	lbu	s5,sp,+00000028
	c.mv	a0,s5
	jal	ra,0000000023064DF2
	c.lwsp	tp,000001F4
	lbu	a4,sp,+0000007C
	lbu	a3,sp,+00000070
	lbu	a2,sp,+00000064
	lbu	a1,sp,+00000058
	c.mv	a0,s5
	jal	ra,0000000023064C10
	lbu	a4,s1,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023066E2C

l23066E20:
	lui	s7,00042026
	lbu	a4,s7,+0000079E
	bgeu	a5,a4,0000000023066F8A

l23066E2C:
	c.lwsp	s4,00000174
	c.mv	a3,s9
	c.mv	a2,s8
	c.mv	a0,s5
	jal	ra,00000000230663F2
	beq	a0,zero,000000002306692E

l23066E3C:
	lbu	a4,s1,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,000000002306692E

l23066E46:
	lui	a4,00042026
	lbu	a4,a4,+0000079E
	bltu	a5,a4,000000002306692E

l23066E52:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,0000000023067002

l23066E5E:
	jal	ra,00000000230629C6

l23066E62:
	c.mv	a1,a0
	lui	a2,000230AA
	lui	a0,000230C2
	addi	a4,zero,+0000019E
	addi	a3,s0,-000003CC
	addi	a2,a2,-00000228
	addi	a0,a0,+0000007C
	jal	ra,000000002307A208
	c.j	000000002306692E

l23066E82:
	jal	ra,00000000230629A4
	c.j	0000000023066D90

l23066E88:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023066F1E

l23066E92:
	jal	ra,00000000230629C6

l23066E96:
	c.mv	a1,a0
	lui	a0,000230C2
	c.mv	a5,s2
	addi	a4,zero,+00000182
	addi	a3,s0,-000003CC
	addi	a2,s3,+0000032C
	addi	a0,a0,-00000064
	jal	ra,000000002307A208

l23066EB2:
	lbu	a4,s1,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023066DF4

l23066EBC:
	lui	a4,00042026
	lbu	a4,a4,+0000079E
	bltu	a5,a4,0000000023066DF4

l23066EC8:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023066F84

l23066ED2:
	jal	ra,00000000230629C6

l23066ED6:
	c.lwsp	tp,000001F4
	lbu	a7,sp,+00000058
	c.lwsp	s5,00000008
	c.swsp	a5,0000000C
	lbu	a5,sp,+0000007C
	c.mv	a1,a0
	lui	a0,000230C2
	c.swsp	a5,00000088
	c.lwsp	s9,000001F4
	addi	a4,zero,+00000192
	addi	a3,s0,-000003CC
	c.swsp	a5,00000008
	lbu	a5,sp,+00000070
	addi	a2,s3,+0000032C
	addi	a0,a0,-0000003C
	c.swsp	a5,00000084
	c.lwsp	a3,000001F4
	c.swsp	a5,00000004
	lbu	a5,sp,+00000064
	c.swsp	a5,00000080
	c.lwsp	ra,000001F4
	c.swsp	a5,00000000
	lbu	a5,sp,+00000028
	jal	ra,000000002307A208
	c.j	0000000023066DF4

l23066F1E:
	jal	ra,00000000230629A4
	c.j	0000000023066E96

l23066F24:
	lw	a5,s7,+00000004
	c.addi4spn	a3,00000044
	c.mv	a0,s4
	c.mv	a2,a5
	c.mv	s6,a5
	jal	ra,000000002305926E
	c.bnez	a0,0000000023066F78

l23066F36:
	lbu	a4,s1,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023066CE6

l23066F40:
	lbu	a4,s11,+0000079E
	bltu	a5,a4,0000000023066CE6

l23066F48:
	lw	a5,s10,+00000560
	c.beqz	a5,0000000023066F72

l23066F4E:
	jal	ra,00000000230629C6

l23066F52:
	c.mv	a1,a0
	lui	a0,000230C2
	c.mv	a6,s6
	c.mv	a5,s2
	addi	a4,zero,+00000187
	addi	a3,s0,-000003CC
	addi	a2,s3,+0000032C
	addi	a0,a0,-00000324
	jal	ra,000000002307A208
	c.j	0000000023066CE6

l23066F72:
	jal	ra,00000000230629A4
	c.j	0000000023066F52

l23066F78:
	c.lw	a0,0(a0)
	jal	ra,00000000230663D0
	sb	a0,s7,+00000008
	c.j	0000000023066CE6

l23066F84:
	jal	ra,00000000230629A4
	c.j	0000000023066ED6

l23066F8A:
	lui	s10,0004200F
	lw	a5,s10,+00000560
	c.beqz	a5,0000000023066FF6

l23066F94:
	jal	ra,00000000230629C6

l23066F98:
	c.lwsp	s0,000001F4
	c.mv	a1,a0
	lui	a0,000230C2
	andi	s6,a5,+000000FF
	c.mv	a5,s6
	addi	a4,zero,+0000019A
	addi	a3,s0,-000003CC
	addi	a2,s3,+0000032C
	addi	a0,a0,+00000018
	jal	ra,000000002307A208
	lbu	a4,s1,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023066E2C

l23066FC4:
	lbu	a4,s7,+0000079E
	bltu	a5,a4,0000000023066E2C

l23066FCC:
	lw	a5,s10,+00000560
	c.beqz	a5,0000000023066FFC

l23066FD2:
	jal	ra,00000000230629C6

l23066FD6:
	c.lwsp	tp,00000118
	c.mv	a1,a0
	lui	a0,000230C2
	c.mv	a5,s6
	addi	a4,zero,+0000019B
	addi	a3,s0,-000003CC
	addi	a2,s3,+0000032C
	addi	a0,a0,+00000044
	jal	ra,000000002307A208
	c.j	0000000023066E2C

l23066FF6:
	jal	ra,00000000230629A4
	c.j	0000000023066F98

l23066FFC:
	jal	ra,00000000230629A4
	c.j	0000000023066FD6

l23067002:
	jal	ra,00000000230629A4
	c.j	0000000023066E62

;; hal_uart_send_flush: 23067008
;;   Called from:
;;     2307B67C (in vfs_uart_sync)
hal_uart_send_flush proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a0,a0,+00000000
	jal	ra,0000000023064DF2
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hal_uart_setbaud: 2306701C
hal_uart_setbaud proc
	lbu	a0,a0,+00000000
	jal	zero,0000000023064E70

;; hal_uart_setconfig: 23067024
;;   Called from:
;;     2307B72C (in uart_ioctl_cmd_setconfig)
hal_uart_setconfig proc
	lbu	a0,a0,+00000000
	jal	zero,0000000023064E1E

;; hal_gpio_init_from_dts: 2306702C
;;   Called from:
;;     23000ABA (in aos_loop_proc)
hal_gpio_init_from_dts proc
	c.addi16sp	FFFFFF80
	lui	a2,000230C2
	c.addi4spn	a3,00000034
	addi	a2,a2,+000000A4
	c.swsp	s1,000000B8
	c.swsp	s5,000000B0
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	s2,00000038
	c.swsp	s3,000000B4
	c.swsp	s4,00000034
	c.swsp	s6,00000030
	c.swsp	s7,000000AC
	c.swsp	s8,0000002C
	c.swsp	s9,000000A8
	c.swsp	s10,00000028
	c.swsp	s11,000000A4
	c.mv	s5,a0
	c.swsp	a1,0000000C
	c.swsp	zero,00000098
	jal	ra,000000002305926E
	c.li	s1,FFFFFFFF
	c.beqz	a0,0000000023067082

l23067060:
	c.lw	a0,0(a5)
	srli	a4,a5,00000018
	slli	s1,a5,00000018
	c.or	s1,a4
	srli	a4,a5,00000008
	andi	a4,a4,+000000FF
	c.srli	a5,00000010
	c.slli	a4,10
	andi	a5,a5,+000000FF
	c.or	s1,a4
	c.slli	a5,08
	c.or	s1,a5

l23067082:
	lui	s0,00042026
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,00000000230670CE

l23067090:
	lui	a4,00042026
	lbu	a4,a4,+0000079F
	bltu	a5,a4,00000000230670CE

l2306709C:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023067178

l230670A6:
	jal	ra,00000000230629C6

l230670AA:
	lui	a3,000230C2
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C2
	c.mv	a5,s1
	addi	a4,zero,+000000B5
	addi	a3,a3,+000000AC
	addi	a2,a2,+0000032C
	addi	a0,a0,+000000B8
	jal	ra,000000002307A208

l230670CE:
	c.li	s7,00000000
	lui	s10,000230C2
	lui	s11,000230C2
	lui	s2,00042026
	lui	s3,0004200F
	lui	s4,000230C2

l230670E4:
	bge	s7,s1,0000000023067158

l230670E8:
	lui	a5,000230C2
	addi	a2,a5,+000000E8
	c.mv	a3,s7
	c.li	a1,0000000B
	c.addi4spn	a0,00000028
	jal	ra,00000000230823DA
	c.lwsp	s8,00000064
	c.addi4spn	a2,00000028
	c.mv	a0,s5
	sb	zero,sp,+00000033
	c.swsp	zero,00000090
	jal	ra,000000002305912A
	c.mv	s6,a0
	bge	a0,zero,0000000023067184

l23067110:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023067158

l2306711A:
	lui	a4,00042026
	lbu	a4,a4,+0000079F
	bltu	a5,a4,0000000023067158

l23067126:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,000000002306717E

l23067130:
	jal	ra,00000000230629C6

l23067134:
	lui	a3,000230C2
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C2
	c.addi4spn	a5,00000028
	addi	a4,zero,+00000061
	addi	a3,a3,+000000AC
	addi	a2,a2,+0000032C
	addi	a0,a0,+000000F0
	jal	ra,000000002307A208

l23067158:
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.lwsp	s1,00000198
	c.lwsp	t0,000001B8
	c.lwsp	ra,000001D8
	c.lwsp	t4,000000E8
	c.lwsp	s9,0000000C
	c.lwsp	s5,0000002C
	c.lwsp	a7,0000004C
	c.lwsp	a3,0000006C
	c.li	a0,00000000
	c.addi16sp	00000080
	c.jr	ra

l23067178:
	jal	ra,00000000230629A4
	c.j	00000000230670AA

l2306717E:
	jal	ra,00000000230629A4
	c.j	0000000023067134

l23067184:
	c.li	a2,0000000C
	c.li	a1,00000000
	c.addi4spn	a0,00000034
	jal	ra,00000000230A3A68
	lui	a5,000230C2
	c.addi4spn	a4,00000024
	c.li	a3,00000000
	addi	a2,a5,-000002FC
	c.mv	a1,s6
	c.mv	a0,s5
	sb	zero,sp,+00000038
	jal	ra,00000000230592E0
	c.lwsp	tp,0000013C
	c.li	a4,00000004
	c.mv	s8,a0
	beq	s9,a4,0000000023067220

l230671B0:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	bgeu	a5,a4,000000002306727E

l230671BA:
	lbu	a5,sp,+00000038
	c.li	a4,00000001
	bne	a5,a4,00000000230674E8

l230671C4:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023067214

l230671CE:
	lbu	a4,s2,+0000079F
	bltu	a5,a4,0000000023067214

l230671D6:
	lw	a5,s3,+00000560
	beq	a5,zero,00000000230674E2

l230671DE:
	jal	ra,00000000230629C6

l230671E2:
	c.lwsp	t3,000001F4
	lbu	a7,sp,+0000003A
	lbu	a6,sp,+00000039
	c.swsp	a5,00000080
	lbu	a5,sp,+0000003B
	lui	a2,000230BD
	c.mv	a1,a0
	c.swsp	a5,00000000
	c.lwsp	s4,000001F4
	lui	a0,000230C2
	addi	a4,zero,+000000A6
	addi	a3,s4,+000000AC
	addi	a2,a2,+0000032C
	addi	a0,a0,+000001F0
	jal	ra,000000002307A208

l23067214:
	c.lwsp	t3,00000174
	c.lwsp	s4,00000154
	jal	ra,000000002306A420

l2306721C:
	c.addi	s7,00000001
	c.j	00000000230670E4

l23067220:
	lui	a5,000230C2
	c.mv	a1,a0
	c.li	a2,00000004
	addi	a0,a5,-000002B8
	jal	ra,00000000230A37A4
	c.bnez	a0,00000000230671B0

l23067232:
	c.addi4spn	a3,00000024
	addi	a2,s10,-00000068
	c.mv	a1,s6
	c.mv	a0,s5
	jal	ra,000000002305926E
	c.bnez	a0,00000000230672C0

l23067242:
	lbu	a4,s0,+000006B4
	bltu	s9,a4,00000000230671BA

l2306724A:
	lbu	a4,s2,+0000079F
	bltu	s9,a4,00000000230671BA

l23067252:
	lw	a5,s3,+00000560
	c.beqz	a5,00000000230672BA

l23067258:
	jal	ra,00000000230629C6

l2306725C:
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C2
	c.addi4spn	a5,00000028
	addi	a4,zero,+00000070
	addi	a3,s4,+000000AC
	addi	a2,a2,-00000228
	addi	a0,a0,+0000013C

l23067278:
	jal	ra,000000002307A208
	c.j	00000000230671BA

l2306727E:
	lbu	a4,s2,+0000079F
	bltu	a5,a4,00000000230671BA

l23067286:
	lw	a5,s3,+00000560
	c.beqz	a5,00000000230672B4

l2306728C:
	jal	ra,00000000230629C6

l23067290:
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C2
	c.mv	a6,s8
	c.addi4spn	a5,00000028
	addi	a4,zero,+0000006A
	addi	a3,s4,+000000AC
	addi	a2,a2,+0000032C
	addi	a0,a0,+00000114

l230672AE:
	jal	ra,000000002307A208
	c.j	00000000230671BA

l230672B4:
	jal	ra,00000000230629A4
	c.j	0000000023067290

l230672BA:
	jal	ra,00000000230629A4
	c.j	000000002306725C

l230672C0:
	c.lw	a0,0(a5)
	addi	a2,s11,-0000010C
	c.mv	a1,s6
	srli	a3,a5,00000018
	slli	a4,a5,00000018
	c.or	a4,a3
	srli	a3,a5,00000008
	andi	a3,a3,+000000FF
	c.srli	a5,00000010
	c.slli	a3,10
	andi	a5,a5,+000000FF
	c.or	a4,a3
	c.slli	a5,08
	c.or	a5,a4
	c.li	a3,00000000
	c.addi4spn	a4,00000024
	c.mv	a0,s5
	c.swsp	a5,00000098
	jal	ra,00000000230592E0
	c.lwsp	tp,000001D4
	c.li	a5,00000003
	c.mv	s8,a0
	bne	a4,a5,00000000230673D6

l230672FE:
	c.mv	a1,a0
	lui	a0,000230C3
	c.li	a2,00000003
	addi	a0,a0,+00000564
	jal	ra,00000000230A37A4
	c.bnez	a0,00000000230673D6

l23067310:
	lui	a2,000230C2
	c.addi4spn	a4,00000024
	c.li	a3,00000000
	addi	a2,a2,+00000168
	c.mv	a1,s6
	c.mv	a0,s5
	sb	zero,sp,+00000039
	jal	ra,00000000230592E0
	c.lwsp	tp,000001F4
	c.li	a4,00000002
	c.mv	s8,a0
	bne	a5,a4,0000000023067436

l23067332:
	c.mv	a1,a0
	lui	a0,000230C2
	c.li	a2,00000002
	addi	a0,a0,+000001A4
	c.swsp	a5,0000008C
	jal	ra,00000000230A37A4
	c.lwsp	t3,000000E4
	c.bnez	a0,0000000023067418

l23067348:
	c.li	a5,00000001
	sb	a5,sp,+0000003A

l2306734E:
	lui	a2,000230C5
	c.addi4spn	a4,00000024
	c.li	a3,00000000
	addi	a2,a2,+000004F8
	c.mv	a1,s6
	c.mv	a0,s5
	jal	ra,00000000230592E0
	c.lwsp	tp,000001D4
	c.li	a5,00000005
	c.mv	s8,a0
	bne	a4,a5,0000000023067462

l2306736C:
	c.mv	a1,a0
	lui	a0,000230C2
	c.li	a2,00000005
	addi	a0,a0,+000001AC
	jal	ra,00000000230A37A4
	bne	a0,zero,0000000023067462

l23067380:
	sb	zero,sp,+0000003B

l23067384:
	lui	a2,000230C0
	c.addi4spn	a3,00000024
	addi	a2,a2,-0000016C
	c.mv	a1,s6
	c.mv	a0,s5
	jal	ra,000000002305926E
	bne	a0,zero,00000000230674B6

l2306739A:
	lbu	a4,s0,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,00000000230671BA

l230673A4:
	lbu	a4,s2,+0000079F
	bltu	a5,a4,00000000230671BA

l230673AC:
	lw	a5,s3,+00000560
	beq	a5,zero,00000000230674B0

l230673B4:
	jal	ra,00000000230629C6

l230673B8:
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C2
	c.addi4spn	a5,00000028
	addi	a4,zero,+00000093
	addi	a3,s4,+000000AC
	addi	a2,a2,-00000228
	addi	a0,a0,+000001C0
	c.j	0000000023067278

l230673D6:
	lbu	a4,s0,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,00000000230671BA

l230673E0:
	lbu	a4,s2,+0000079F
	bltu	a5,a4,00000000230671BA

l230673E8:
	lw	a5,s3,+00000560
	c.beqz	a5,0000000023067412

l230673EE:
	jal	ra,00000000230629C6

l230673F2:
	c.mv	a6,s8
	c.addi4spn	a5,00000028
	addi	a4,zero,+00000079

l230673FA:
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a3,s4,+000000AC
	addi	a2,a2,-00000228
	addi	a0,a0,+00000170
	c.j	00000000230672AE

l23067412:
	jal	ra,00000000230629A4
	c.j	00000000230673F2

l23067418:
	c.lwsp	tp,000001D4
	bne	a4,a5,0000000023067436

l2306741E:
	lui	a0,000230C2
	c.li	a2,00000002
	c.mv	a1,s8
	addi	a0,a0,+000001A8
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023067436

l23067430:
	sb	zero,sp,+0000003A
	c.j	000000002306734E

l23067436:
	lbu	a4,s0,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,00000000230671BA

l23067440:
	lbu	a4,s2,+0000079F
	bltu	a5,a4,00000000230671BA

l23067448:
	lw	a5,s3,+00000560
	c.beqz	a5,000000002306745C

l2306744E:
	jal	ra,00000000230629C6

l23067452:
	c.mv	a6,s8
	c.addi4spn	a5,00000028
	addi	a4,zero,+00000083
	c.j	00000000230673FA

l2306745C:
	jal	ra,00000000230629A4
	c.j	0000000023067452

l23067462:
	c.lwsp	tp,000001D4
	c.li	a5,00000009
	bne	a4,a5,0000000023067484

l2306746A:
	lui	a0,000230C2
	c.li	a2,00000009
	c.mv	a1,s8
	addi	a0,a0,+000001B4
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023067484

l2306747C:
	c.li	a5,00000001
	sb	a5,sp,+0000003B
	c.j	0000000023067384

l23067484:
	lbu	a4,s0,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,00000000230671BA

l2306748E:
	lbu	a4,s2,+0000079F
	bltu	a5,a4,00000000230671BA

l23067496:
	lw	a5,s3,+00000560
	c.beqz	a5,00000000230674AA

l2306749C:
	jal	ra,00000000230629C6

l230674A0:
	c.mv	a6,s8
	c.addi4spn	a5,00000028
	addi	a4,zero,+0000008D
	c.j	00000000230673FA

l230674AA:
	jal	ra,00000000230629A4
	c.j	00000000230674A0

l230674B0:
	jal	ra,00000000230629A4
	c.j	00000000230673B8

l230674B6:
	c.lw	a0,0(a5)
	srli	a3,a5,00000018
	slli	a4,a5,00000018
	c.or	a4,a3
	srli	a3,a5,00000008
	andi	a3,a3,+000000FF
	c.srli	a5,00000010
	c.slli	a3,10
	andi	a5,a5,+000000FF
	c.or	a4,a3
	c.slli	a5,08
	c.or	a5,a4
	c.swsp	a5,0000009C
	c.li	a5,00000001
	sb	a5,sp,+00000038
	c.j	00000000230671BA

l230674E2:
	jal	ra,00000000230629A4
	c.j	00000000230671E2

l230674E8:
	bne	a5,zero,000000002306721C

l230674EC:
	lbu	a4,s0,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,000000002306721C

l230674F6:
	lbu	a4,s2,+0000079F
	bltu	a5,a4,000000002306721C

l230674FE:
	lw	a5,s3,+00000560
	c.beqz	a5,000000002306752A

l23067504:
	jal	ra,00000000230629C6

l23067508:
	c.mv	a1,a0
	lui	a2,000230AA
	lui	a0,000230C2
	c.addi4spn	a5,00000028
	addi	a4,zero,+000000C3
	addi	a3,s4,+000000AC
	addi	a2,a2,-00000228
	addi	a0,a0,+000001C0
	jal	ra,000000002307A208
	c.j	000000002306721C

l2306752A:
	jal	ra,00000000230629A4
	c.j	0000000023067508

;; _dump_partition: 23067530
;;   Called from:
;;     23067A20 (in hal_boot2_dump)
;;     23067A98 (in hal_boot2_init)
_dump_partition proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,0004200F
	c.swsp	s0,00000014
	lui	a0,000230C2
	addi	s0,s1,-00000058
	addi	a1,s0,+00000004
	addi	a0,a0,+00000258
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	jal	ra,000000002307A208
	c.lw	s0,4(a1)
	lui	a0,000230C2
	addi	a0,a0,+0000027C
	jal	ra,000000002307A208
	lhu	a1,s0,+00000008
	lui	a0,000230C2
	addi	a0,a0,+00000290
	jal	ra,000000002307A208
	lhu	a1,s0,+0000000A
	lui	a0,000230C2
	addi	a0,a0,+000002A4
	jal	ra,000000002307A208
	c.lw	s0,12(a1)
	lui	a0,000230C2
	addi	a0,a0,+000002B4
	jal	ra,000000002307A208
	c.lw	s0,16(a1)
	lui	a0,000230C2
	addi	a0,a0,+000002C0
	jal	ra,000000002307A208
	lui	a0,000230C2
	addi	a0,a0,+000002D0
	addi	s3,s1,-00000058
	jal	ra,000000002307A208
	c.li	s2,00000000
	addi	s1,s1,-00000058
	lui	s5,000230C2
	lui	s6,000230C2
	lui	s7,000230C2
	lui	s8,000230C2
	lui	s9,000230C2
	lui	s4,000230C2
	lui	s10,000230C2

l230675DE:
	lhu	a5,s1,+0000000A
	addi	s0,s3,+00000024
	blt	s2,a5,0000000023067606

l230675EA:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.lwsp	zero,0000004C
	c.addi16sp	00000030
	c.jr	ra

l23067606:
	c.mv	a1,s2
	addi	a0,s5,+00000330
	jal	ra,000000002307A208
	lbu	a1,s0,-00000010
	addi	a0,s6,+00000338
	c.addi	s2,00000001
	jal	ra,000000002307A208
	lbu	a1,s0,-0000000F
	addi	a0,s7,+00000344
	jal	ra,000000002307A208
	lbu	a1,s0,-0000000E
	addi	a0,s8,+00000340
	jal	ra,000000002307A208
	addi	a1,s3,+00000017
	addi	a0,s9,+0000034C
	jal	ra,000000002307A208
	lw	a1,s0,-00000004
	addi	a0,s4,+00000358
	jal	ra,000000002307A208
	lw	a1,s3,+00000024
	addi	a0,s4,+00000358
	c.mv	s3,s0
	jal	ra,000000002307A208
	c.lw	s0,4(a1)
	addi	a0,s4,+00000358
	jal	ra,000000002307A208
	c.lw	s0,8(a1)
	addi	a0,s4,+00000358
	jal	ra,000000002307A208
	c.lw	s0,16(a1)
	addi	a0,s10,+00000360
	jal	ra,000000002307A208
	c.j	00000000230675DE

;; hal_boot2_update_ptable: 2306767C
;;   Called from:
;;     2305AFB4 (in ota_tcp_cmd.part.0)
hal_boot2_update_ptable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a5,a0,+00000002
	lui	a2,0004200F
	addi	a2,a2,-00000058
	sltiu	a5,a5,+00000001
	sb	a5,a0,+00000002
	c.lw	a0,32(a5)
	lbu	a1,a2,+00000000
	c.mv	a3,a0
	c.addi	a5,00000001
	c.sw	a0,32(a5)
	c.addi	a2,00000004
	sltiu	a1,a1,+00000001
	c.li	a0,00000000
	jal	ra,000000002306999A
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; hal_boot2_get_flash_addr: 230676B2
;;   Called from:
;;     23000042 (in bl602_start)
hal_boot2_get_flash_addr proc
	lui	a5,0004200F
	lhu	a5,a5,-0000004E
	addi	a0,zero,+00000024
	add	a5,a5,a0
	lui	a0,0004204A
	addi	a0,a0,-000003E8
	c.add	a0,a5
	c.jr	ra

;; hal_boot2_partition_bus_addr: 230676CE
;;   Called from:
;;     23067858 (in hal_boot2_partition_bus_addr_active)
;;     23067894 (in hal_boot2_partition_bus_addr_inactive)
hal_boot2_partition_bus_addr proc
	lui	a6,0004200F
	addi	a7,a6,-00000058
	lw	t1,a7,+00000004
	lui	a7,00054504
	addi	a7,a7,+00000642
	bne	t1,a7,000000002306783E

l230676E6:
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.swsp	ra,00000094
	addi	s1,a6,-00000058
	c.mv	s9,a5
	c.mv	s7,a4
	c.mv	s8,a3
	c.mv	s2,a2
	c.mv	s3,a1
	c.mv	s5,a0
	addi	s6,a6,-00000058
	addi	s4,a6,-00000058
	c.li	s0,00000000

l23067718:
	lhu	a5,s1,+0000000A
	bge	s0,a5,0000000023067730

l23067720:
	addi	a0,s4,+00000017
	c.mv	a1,s5
	jal	ra,00000000230A3FF4
	addi	s4,s4,+00000024
	c.bnez	a0,0000000023067754

l23067730:
	lhu	a5,s1,+0000000A
	c.li	a0,FFFFFFFE
	bne	s0,a5,0000000023067758

l2306773A:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.addi16sp	00000030
	c.jr	ra

l23067754:
	c.addi	s0,00000001
	c.j	0000000023067718

l23067758:
	addi	a5,zero,+00000024
	add	a2,s0,a5
	c.addi	s0,00000001
	add	s0,s0,a5
	c.add	a2,s1
	lbu	a4,a2,+00000016
	lw	s5,a2,+00000020
	lw	s4,a2,+00000024
	sw	a4,s9,+00000000
	c.lw	a2,40(a4)
	sw	a4,s8,+00000000
	c.add	s0,s1
	c.lw	s0,8(a5)
	c.li	s0,00000000
	sw	a5,s7,+00000000
	lui	s7,000230BF

l2306778C:
	lhu	a5,s1,+0000000A
	bge	s0,a5,00000000230677A6

l23067794:
	addi	a0,s6,+00000017
	addi	a1,s7,-000000E0
	jal	ra,00000000230A3FF4
	addi	s6,s6,+00000024
	c.bnez	a0,000000002306783A

l230677A6:
	lhu	a5,s1,+0000000A
	addi	a0,zero,-00000048
	beq	s0,a5,000000002306773A

l230677B2:
	beq	s5,zero,00000000230677CE

l230677B6:
	addi	a5,zero,+00000024
	add	a5,s0,a5
	c.li	a0,FFFFFFEA
	c.add	a5,s1
	c.lw	a5,32(a4)
	bltu	s5,a4,000000002306773A

l230677C8:
	c.lw	a5,36(a5)
	bltu	s5,a5,000000002306773A

l230677CE:
	beq	s4,zero,00000000230677EA

l230677D2:
	addi	a5,zero,+00000024
	add	a5,s0,a5
	c.li	a0,FFFFFFEA
	c.add	a5,s1
	c.lw	a5,32(a4)
	bltu	s4,a4,000000002306773A

l230677E4:
	c.lw	a5,36(a5)
	bltu	s4,a5,000000002306773A

l230677EA:
	addi	a4,zero,+00000024
	add	a4,s0,a4
	c.li	a3,00000001
	c.li	a0,FFFFFFF2
	c.add	a4,s1
	lbu	a5,a4,+00000016
	bltu	a3,a5,000000002306773A

l23067800:
	c.li	a2,00000009
	add	s0,s0,a2
	lui	a3,00022FFF
	c.add	s5,a3
	c.add	s4,a3
	c.li	a0,00000000
	c.add	a5,s0
	c.addi	a5,00000004
	c.slli	a5,02
	c.add	a5,s1
	c.lw	a5,16(a5)
	sub	s5,s5,a5
	sw	s5,s3,+00000000
	lbu	a5,a4,+00000016
	c.add	s0,a5
	c.addi	s0,00000004
	c.slli	s0,02
	c.add	s0,s1
	c.lw	s0,16(a5)
	sub	s4,s4,a5
	sw	s4,s2,+00000000
	c.j	000000002306773A

l2306783A:
	c.addi	s0,00000001
	c.j	000000002306778C

l2306783E:
	c.li	a0,FFFFFFFB
	c.jr	ra

;; hal_boot2_partition_bus_addr_active: 23067842
;;   Called from:
;;     23067C3C (in hal_board_cfg)
;;     23084A76 (in bl_mtd_open)
hal_boot2_partition_bus_addr_active proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a2
	c.mv	s1,a1
	c.addi4spn	a5,0000001C
	c.addi4spn	a4,00000018
	c.addi4spn	a3,00000014
	c.addi4spn	a2,00000010
	c.addi4spn	a1,0000000C
	c.swsp	ra,00000094
	jal	ra,00000000230676CE
	c.bnez	a0,000000002306786C

l2306785E:
	c.lwsp	t3,000000E4
	c.beqz	a5,0000000023067876

l23067862:
	c.lwsp	a6,000000C4

l23067864:
	c.sw	s1,0(a4)
	c.beqz	a5,000000002306787A

l23067868:
	c.lwsp	s8,000000E4

l2306786A:
	c.sw	s0,0(a5)

l2306786C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l23067876:
	c.lwsp	a2,000000C4
	c.j	0000000023067864

l2306787A:
	c.lwsp	s4,000000E4
	c.j	000000002306786A

;; hal_boot2_partition_bus_addr_inactive: 2306787E
;;   Called from:
;;     23084A0C (in bl_mtd_open)
hal_boot2_partition_bus_addr_inactive proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a2
	c.mv	s1,a1
	c.addi4spn	a5,0000001C
	c.addi4spn	a4,00000018
	c.addi4spn	a3,00000014
	c.addi4spn	a2,00000010
	c.addi4spn	a1,0000000C
	c.swsp	ra,00000094
	jal	ra,00000000230676CE
	c.bnez	a0,00000000230678A8

l2306789A:
	c.lwsp	t3,000000E4
	c.beqz	a5,00000000230678B2

l2306789E:
	c.lwsp	a2,000000C4

l230678A0:
	c.sw	s1,0(a4)
	c.beqz	a5,00000000230678B6

l230678A4:
	c.lwsp	s4,000000E4

l230678A6:
	c.sw	s0,0(a5)

l230678A8:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l230678B2:
	c.lwsp	a6,000000C4
	c.j	00000000230678A0

l230678B6:
	c.lwsp	s8,000000E4
	c.j	00000000230678A6

;; hal_boot2_partition_addr: 230678BA
;;   Called from:
;;     2306798C (in hal_boot2_partition_addr_active)
;;     230679C8 (in hal_boot2_partition_addr_inactive)
hal_boot2_partition_addr proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,0004200F
	addi	a6,s1,-00000058
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	lw	a7,a6,+00000004
	lui	a6,00054504
	addi	a6,a6,+00000642
	bne	a7,a6,0000000023067972

l230678E8:
	addi	s2,s1,-00000058
	c.mv	s3,a5
	c.mv	s4,a4
	c.mv	s5,a3
	c.mv	s6,a2
	c.mv	s7,a1
	c.mv	s8,a0
	addi	s1,s1,-00000058
	c.li	s0,00000000

l230678FE:
	lhu	a5,s2,+0000000A
	bge	s0,a5,0000000023067916

l23067906:
	addi	a0,s1,+00000017
	c.mv	a1,s8
	jal	ra,00000000230A3FF4
	addi	s1,s1,+00000024
	c.bnez	a0,0000000023067938

l23067916:
	lhu	a5,s2,+0000000A
	c.li	a0,FFFFFFFE
	bne	s0,a5,000000002306793C

l23067920:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.addi16sp	00000030
	c.jr	ra

l23067938:
	c.addi	s0,00000001
	c.j	00000000230678FE

l2306793C:
	addi	a5,zero,+00000024
	add	a0,s0,a5
	c.addi	s0,00000001
	c.add	a0,s2
	c.lw	a0,32(a4)
	add	s0,s0,a5
	sw	a4,s7,+00000000
	c.lw	a0,36(a4)
	sw	a4,s6,+00000000
	c.lw	a0,40(a4)
	c.add	s0,s2
	sw	a4,s5,+00000000
	c.lw	s0,8(a5)
	sw	a5,s4,+00000000
	lbu	a5,a0,+00000016
	c.li	a0,00000000
	sw	a5,s3,+00000000
	c.j	0000000023067920

l23067972:
	c.li	a0,FFFFFFFB
	c.j	0000000023067920

;; hal_boot2_partition_addr_active: 23067976
;;   Called from:
;;     23067B82 (in hal_board_cfg)
;;     23084AA8 (in bl_mtd_open)
hal_boot2_partition_addr_active proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a2
	c.mv	s1,a1
	c.addi4spn	a5,0000001C
	c.addi4spn	a4,00000018
	c.addi4spn	a3,00000014
	c.addi4spn	a2,00000010
	c.addi4spn	a1,0000000C
	c.swsp	ra,00000094
	jal	ra,00000000230678BA
	c.bnez	a0,00000000230679A0

l23067992:
	c.lwsp	t3,000000E4
	c.beqz	a5,00000000230679AA

l23067996:
	c.lwsp	a6,000000C4

l23067998:
	c.sw	s1,0(a4)
	c.beqz	a5,00000000230679AE

l2306799C:
	c.lwsp	s8,000000E4

l2306799E:
	c.sw	s0,0(a5)

l230679A0:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l230679AA:
	c.lwsp	a2,000000C4
	c.j	0000000023067998

l230679AE:
	c.lwsp	s4,000000E4
	c.j	000000002306799E

;; hal_boot2_partition_addr_inactive: 230679B2
;;   Called from:
;;     23084A3E (in bl_mtd_open)
hal_boot2_partition_addr_inactive proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a2
	c.mv	s1,a1
	c.addi4spn	a5,0000001C
	c.addi4spn	a4,00000018
	c.addi4spn	a3,00000014
	c.addi4spn	a2,00000010
	c.addi4spn	a1,0000000C
	c.swsp	ra,00000094
	jal	ra,00000000230678BA
	c.bnez	a0,00000000230679DC

l230679CE:
	c.lwsp	t3,000000E4
	c.beqz	a5,00000000230679E6

l230679D2:
	c.lwsp	a2,000000C4

l230679D4:
	c.sw	s1,0(a4)
	c.beqz	a5,00000000230679EA

l230679D8:
	c.lwsp	s4,000000E4

l230679DA:
	c.sw	s0,0(a5)

l230679DC:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l230679E6:
	c.lwsp	a6,000000C4
	c.j	00000000230679D4

l230679EA:
	c.lwsp	s8,000000E4
	c.j	00000000230679DA

;; hal_boot2_get_active_partition: 230679EE
;;   Called from:
;;     2305ABFE (in ota_tcp_cmd.part.0)
hal_boot2_get_active_partition proc
	lui	a5,0004200F
	lbu	a0,a5,-00000058
	c.jr	ra

;; hal_boot2_get_active_entries: 230679F8
;;   Called from:
;;     2305AC24 (in ota_tcp_cmd.part.0)
hal_boot2_get_active_entries proc
	c.mv	a2,a1
	andi	a1,a0,+000000FF
	lui	a0,0004200F
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000054
	c.swsp	ra,00000084
	jal	ra,0000000023069A82
	c.lwsp	a2,00000020
	sltu	a0,zero,a0
	sub	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; hal_boot2_dump: 23067A1C
;;   Called from:
;;     2305AAFC (in ota_dump_cmd)
hal_boot2_dump proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023067530
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; hal_boot2_init: 23067A2C
;;   Called from:
;;     23000DB6 (in bfl_main)
hal_boot2_init proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004204A
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lbu	a4,a5,-00000400
	lui	a5,0004200F
	sb	a4,a5,+00000FA8
	lui	a4,00042026
	lbu	a3,a4,+000006B4
	c.li	a4,00000002
	bltu	a4,a3,0000000023067A98

l23067A50:
	addi	s0,a5,-00000058
	lui	a5,00042026
	lbu	a5,a5,+000007A0
	bltu	a4,a5,0000000023067A98

l23067A60:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023067AAA

l23067A6A:
	jal	ra,00000000230629C6

l23067A6E:
	lbu	a5,s0,+00000000
	lui	a3,000230C2
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a6,zero,+00000254
	addi	a4,zero,+00000114
	addi	a3,a3,+00000368
	addi	a2,a2,+0000032C
	addi	a0,a0,+00000374
	jal	ra,000000002307A208

l23067A98:
	jal	ra,0000000023067530
	jal	ra,0000000023069CF8
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23067AAA:
	jal	ra,00000000230629A4
	c.j	0000000023067A6E

;; hal_reboot: 23067AB0
;;   Called from:
;;     2305AFC4 (in ota_tcp_cmd.part.0)
;;     2305E1FC (in reboot_cmd)
;;     2307D68A (in reset)
hal_reboot proc
	jal	zero,00000000230650BA

;; hal_sys_reset: 23067AB4
;;   Called from:
;;     2305E1CC (in reset_cmd)
hal_sys_reset proc
	jal	zero,00000000230650CC

;; hal_poweroff: 23067AB8
;;   Called from:
;;     2305E1E4 (in poweroff_cmd)
hal_poweroff proc
	c.jr	ra

;; hal_sys_capcode_update: 23067ABA
;;   Called from:
;;     230258CE (in wifi_mgmr_start)
;;     230277C0 (in wifi_capcode_cmd)
;;     23067FCC (in hal_board_cfg)
hal_sys_capcode_update proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lui	a3,00021011
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lw	t1,a3,-000007E4
	lui	s0,0004200F
	lui	s1,0004200F
	addi	a3,zero,+000000FF
	addi	s0,s0,+000005A9
	addi	s1,s1,+000005AA
	beq	a0,a3,0000000023067B06

l23067AE6:
	c.mv	s2,a1
	beq	a1,a3,0000000023067B06

l23067AEC:
	c.mv	s3,a0
	c.jalr	t1
	c.lwsp	t3,00000020
	sb	s3,s0,+00000000
	c.lwsp	s8,00000004
	sb	s2,s1,+00000000
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23067B06:
	lbu	a0,s0,+00000000
	c.lwsp	s8,00000004
	lbu	a1,s1,+00000000
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	t1

;; hal_sys_capcode_get: 23067B1C
;;   Called from:
;;     23027784 (in wifi_capcode_cmd)
hal_sys_capcode_get proc
	auipc	t1,0001EFA5
	jalr	zero,t1,+00000292

;; fdt32_to_cpu: 23067B24
;;   Called from:
;;     23067F00 (in hal_board_cfg)
;;     23067F0A (in hal_board_cfg)
;;     23067F14 (in hal_board_cfg)
;;     23067F1E (in hal_board_cfg)
;;     23067F2C (in hal_board_cfg)
;;     23067F6A (in hal_board_cfg)
;;     23067F76 (in hal_board_cfg)
;;     23067FFA (in hal_board_cfg)
;;     23068096 (in hal_board_cfg)
;;     23068146 (in hal_board_cfg)
;;     2306865A (in hal_board_cfg)
;;     23068688 (in hal_board_cfg)
;;     230686D0 (in hal_board_cfg)
;;     2306876C (in hal_board_cfg)
;;     23068820 (in hal_board_cfg)
;;     23068E58 (in hal_board_cfg)
;;     23069324 (in hal_board_cfg)
;;     23069350 (in hal_board_cfg)
;;     230693F0 (in hal_board_cfg)
;;     2306941C (in hal_board_cfg)
;;     230694B6 (in hal_board_cfg)
fdt32_to_cpu proc
	srli	a4,a0,00000018
	slli	a5,a0,00000018
	c.or	a5,a4
	srli	a4,a0,00000008
	andi	a4,a4,+000000FF
	c.srli	a0,00000010
	c.slli	a4,10
	andi	a0,a0,+000000FF
	c.or	a5,a4
	c.slli	a0,08
	c.or	a0,a5
	c.jr	ra

;; hal_board_get_factory_addr: 23067B46
;;   Called from:
;;     23000A64 (in aos_loop_proc)
;;     23000A94 (in aos_loop_proc)
hal_board_get_factory_addr proc
	lui	a5,0004200F
	lw	a0,a5,+000005AC
	c.jr	ra

;; hal_board_cfg: 23067B50
;;   Called from:
;;     23000DBC (in bfl_main)
hal_board_cfg proc
	c.addi16sp	FFFFFF00
	c.swsp	s1,000000F8
	c.swsp	s2,00000078
	lui	s1,0004200F
	lui	s2,000230C2
	c.addi4spn	a2,00000040
	addi	a1,s1,+000005AC
	addi	a0,s2,+000003D4
	c.swsp	s0,0000007C
	c.swsp	s3,000000F4
	c.swsp	ra,000000FC
	c.swsp	s4,00000074
	c.swsp	s5,000000F0
	c.swsp	s6,00000070
	c.swsp	s7,000000EC
	c.swsp	s8,0000006C
	c.swsp	s9,000000E8
	c.swsp	s10,00000068
	c.swsp	s11,000000E4
	lui	s0,00042026
	jal	ra,0000000023067976
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	addi	s3,s1,+000005AC
	bltu	a5,a4,0000000023067BD8

l23067B94:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023067BD8

l23067BA0:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.mv	s4,a0
	c.beqz	a5,0000000023067C26

l23067BAC:
	jal	ra,00000000230629C6

l23067BB0:
	lw	a5,s3,+00000000
	lui	a3,000230C2
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C2
	c.mv	a6,s4
	addi	a4,zero,+00000376
	addi	a3,a3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,+000003E8
	jal	ra,000000002307A208

l23067BD8:
	lw	a5,s3,+00000000
	c.bnez	a5,0000000023067C32

l23067BDE:
	lbu	a4,s0,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,0000000023067C24

l23067BE8:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023067C24

l23067BF4:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023067C2C

l23067BFE:
	jal	ra,00000000230629C6

l23067C02:
	lui	a3,000230C2
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a4,zero,+00000378
	addi	a3,a3,+000003DC
	addi	a2,a2,-00000228
	addi	a0,a0,+0000043C
	jal	ra,000000002307A208

l23067C24:
	c.j	0000000023067C24

l23067C26:
	jal	ra,00000000230629A4
	c.j	0000000023067BB0

l23067C2C:
	jal	ra,00000000230629A4
	c.j	0000000023067C02

l23067C32:
	addi	a1,s1,+000005AC
	c.addi4spn	a2,00000040
	addi	a0,s2,+000003D4
	jal	ra,0000000023067842
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	c.mv	s1,a0
	bltu	a5,a4,0000000023067C8E

l23067C4C:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023067C8E

l23067C58:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023067CDC

l23067C62:
	jal	ra,00000000230629C6

l23067C66:
	lw	a5,s3,+00000000
	lui	a3,000230C2
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C2
	c.mv	a6,s1
	addi	a4,zero,+0000037E
	addi	a3,a3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,+0000049C
	jal	ra,000000002307A208

l23067C8E:
	lw	s1,s3,+00000000
	c.bnez	s1,0000000023067CE8

l23067C94:
	lbu	a4,s0,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,0000000023067CDA

l23067C9E:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023067CDA

l23067CAA:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023067CE2

l23067CB4:
	jal	ra,00000000230629C6

l23067CB8:
	lui	a3,000230C2
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a4,zero,+00000380
	addi	a3,a3,+000003DC
	addi	a2,a2,-00000228
	addi	a0,a0,+000004F0
	jal	ra,000000002307A208

l23067CDA:
	c.j	0000000023067CDA

l23067CDC:
	jal	ra,00000000230629A4
	c.j	0000000023067C66

l23067CE2:
	jal	ra,00000000230629A4
	c.j	0000000023067CB8

l23067CE8:
	lui	a2,000230BF
	addi	a2,a2,-00000798
	c.li	a1,00000000
	c.mv	a0,s1
	c.swsp	zero,000000A0
	jal	ra,000000002305912A
	c.mv	s4,a0
	blt	zero,a0,0000000023067D48

l23067D00:
	lbu	a4,s0,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,0000000023067D48

l23067D0A:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023067D48

l23067D16:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,0000000023067EA4

l23067D22:
	jal	ra,00000000230629C6

l23067D26:
	lui	a3,000230C2
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a4,zero,+00000242
	addi	a3,a3,+000003DC
	addi	a2,a2,-00000228
	addi	a0,a0,-00000780
	jal	ra,000000002307A208

l23067D48:
	lui	s3,000230BF
	addi	a2,s3,-000004C8
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,000000002305912A
	c.swsp	s3,00000014
	c.mv	s2,a0
	bge	zero,a0,0000000023068172

l23067D60:
	lui	s3,000230C2
	c.mv	a1,a0
	addi	a2,s3,+0000054C
	c.mv	a0,s1
	c.swsp	zero,00000030
	jal	ra,0000000023059296
	c.li	a5,00000001
	bne	a0,a5,0000000023067FD0

l23067D78:
	c.addi4spn	a4,00000060
	c.li	a3,00000000
	addi	a2,s3,+0000054C
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230592E0
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	c.mv	s5,a0
	bltu	a5,a4,0000000023067DD4

l23067D94:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023067DD4

l23067DA0:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,0000000023067EAA

l23067DAC:
	jal	ra,00000000230629C6

l23067DB0:
	c.lwsp	ra,000001F4
	lui	a3,000230C2
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a4,zero,+00000141
	addi	a3,a3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,+00000558
	jal	ra,000000002307A208

l23067DD4:
	c.lwsp	ra,00000194
	c.li	s3,00000002
	blt	s3,a2,0000000023067FD0

l23067DDC:
	c.mv	a1,s5
	c.addi4spn	a0,00000050
	jal	ra,00000000230A382C
	lbu	a5,s0,+000006B4
	sb	zero,sp,+00000052
	bltu	s3,a5,0000000023067E2E

l23067DF0:
	lui	a5,00042026
	lbu	a5,a5,+000007A1
	bltu	s3,a5,0000000023067E2E

l23067DFC:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023067EB0

l23067E06:
	jal	ra,00000000230629C6

l23067E0A:
	lui	a3,000230C2
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C2
	c.addi4spn	a5,00000050
	addi	a4,zero,+00000145
	addi	a3,a3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,+00000584
	jal	ra,000000002307A208

l23067E2E:
	c.addi4spn	a0,00000050
	jal	ra,00000000230A4220
	c.mv	s10,a0
	c.li	s5,00000000
	lui	s6,00042026
	lui	s7,0004200F
	lui	s8,000230C2
	lui	s9,000230C2
	lui	s11,000230C2

l23067E4C:
	bge	s5,s10,000000002306833C

l23067E50:
	c.addi4spn	a5,00000050
	c.add	a5,s5
	lbu	a5,a5,+00000000
	addi	a4,zero,+00000046
	beq	a5,a4,0000000023067EB6

l23067E60:
	addi	a4,zero,+0000004D
	beq	a5,a4,0000000023068362

l23067E68:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,0000000023068400

l23067E74:
	jal	ra,00000000230629C6

l23067E78:
	lui	a3,000230C2
	lui	a2,000230B2
	c.mv	a1,a0
	lui	a0,000230B2
	addi	a5,a3,+000003DC
	addi	a6,zero,+00000128
	addi	a4,zero,+00000128
	addi	a3,a3,+000003DC
	addi	a2,a2,-00000364
	addi	a0,a0,-00000354
	jal	ra,000000002307A208

l23067EA2:
	c.j	0000000023067EA2

l23067EA4:
	jal	ra,00000000230629A4
	c.j	0000000023067D26

l23067EAA:
	jal	ra,00000000230629A4
	c.j	0000000023067DB0

l23067EB0:
	jal	ra,00000000230629A4
	c.j	0000000023067E0A

l23067EB6:
	lui	a5,000230BF
	addi	a2,a5,-000004C0
	c.addi4spn	a3,00000080
	c.mv	a1,s2
	c.mv	a0,s1
	c.swsp	zero,00000040
	jal	ra,000000002305926E
	c.lwsp	sp,000000C4
	c.li	a5,00000014
	c.mv	s3,a0
	bne	a4,a5,00000000230682C8

l23067ED4:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023067F66

l23067EDE:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023067F66

l23067EEA:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,00000000230682C2

l23067EF6:
	jal	ra,00000000230629C6

l23067EFA:
	c.swsp	a0,00000090
	lw	a0,s3,+00000000
	jal	ra,0000000023067B24
	c.mv	s6,a0
	lw	a0,s3,+00000004
	jal	ra,0000000023067B24
	c.mv	s7,a0
	lw	a0,s3,+00000008
	jal	ra,0000000023067B24
	c.mv	s8,a0
	lw	a0,s3,+0000000C
	jal	ra,0000000023067B24
	c.mv	s5,a0
	lw	a0,s3,+00000010
	andi	s5,s5,+000000FF
	jal	ra,0000000023067B24
	andi	a0,a0,+000000FF
	c.lwsp	tp,00000174
	c.swsp	a0,00000080
	lui	a3,000230C2
	lui	a2,000230BD
	lui	a0,000230C2
	c.swsp	s5,00000000
	andi	a7,s8,+000000FF
	andi	a6,s7,+000000FF
	andi	a5,s6,+000000FF
	addi	a4,zero,+000000F9
	addi	a3,a3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,+000005AC
	jal	ra,000000002307A208

l23067F66:
	lw	a0,s3,+00000000
	jal	ra,0000000023067B24
	andi	s5,a0,+000000FF
	lw	a0,s3,+00000004
	jal	ra,0000000023067B24
	lbu	a4,s0,+000006B4
	c.li	a5,00000001
	andi	s3,a0,+000000FF
	bltu	a5,a4,0000000023067FC6

l23067F88:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023067FC6

l23067F94:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,0000000023068356

l23067FA0:
	jal	ra,00000000230629C6

l23067FA4:
	lui	a3,000230C2
	lui	a2,000230C2
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a4,zero,+00000114
	addi	a3,a3,+000003DC
	addi	a2,a2,-00000768
	addi	a0,a0,+00000608
	jal	ra,000000002307A208

l23067FC6:
	andi	a1,s3,+000000FF
	c.mv	a0,s5
	jal	ra,0000000023067ABA

l23067FD0:
	lui	a2,000230BF
	c.addi4spn	a3,00000044
	addi	a2,a2,-0000044C
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002305926E
	c.lwsp	t0,000000C4
	addi	a5,zero,+0000003C
	c.mv	s6,a0
	bne	a4,a5,0000000023068450

l23067FEE:
	c.li	s3,00000000
	addi	s5,zero,+0000003C

l23067FF4:
	add	a5,s6,s3
	c.lw	a5,0(a0)
	jal	ra,0000000023067B24
	c.addi4spn	a5,00000080
	c.add	a5,s3
	c.sw	a5,0(a0)
	c.addi	s3,00000004
	bne	s3,s5,0000000023067FF4

l2306800A:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	lui	s3,000230C2
	bltu	a5,a4,0000000023068052

l23068018:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023068052

l23068024:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,000000002306844A

l23068030:
	jal	ra,00000000230629C6

l23068034:
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a4,zero,+00000258
	addi	a3,s3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,-00000404
	jal	ra,000000002307A208

l23068052:
	c.li	a4,00000000
	addi	a3,zero,+0000003C
	c.addi4spn	a2,00000080
	addi	a1,zero,+00000259
	addi	a0,s3,+000003DC
	jal	ra,000000002307A236

l23068066:
	lui	a2,000230BF
	c.addi4spn	a3,00000044
	addi	a2,a2,-000003D8
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002305926E
	c.lwsp	t0,000000C4
	addi	a5,zero,+00000038
	bne	a4,a5,00000000230684A4

l23068082:
	addi	s5,sp,+00000060
	c.mv	s3,a0
	addi	s7,a0,+00000038
	c.mv	s6,s5

l2306808E:
	lw	a0,s3,+00000000
	c.addi	s3,00000004
	c.addi	s5,00000002
	jal	ra,0000000023067B24
	sh	a0,s5,+00000FFE
	bne	s7,s3,000000002306808E

l230680A2:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	lui	s3,000230C2
	bltu	a5,a4,00000000230680EA

l230680B0:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,00000000230680EA

l230680BC:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,000000002306849E

l230680C8:
	jal	ra,00000000230629C6

l230680CC:
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230BF
	addi	a4,zero,+00000263
	addi	a3,s3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,-00000394
	jal	ra,000000002307A208

l230680EA:
	c.li	a4,00000000
	addi	a3,zero,+00000038
	c.mv	a2,s6
	addi	a1,zero,+00000264
	addi	a0,s3,+000003DC
	jal	ra,000000002307A236

l230680FE:
	lui	a2,000230BF
	c.addi4spn	a3,00000044
	addi	a2,a2,-00000368
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002305926E
	c.lwsp	t0,000000C4
	c.li	a5,00000004
	bne	a4,a5,00000000230684F8

l23068118:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023068172

l23068122:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023068172

l2306812E:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	lw	s2,a0,+00000000
	beq	a5,zero,00000000230684F2

l2306813E:
	jal	ra,00000000230629C6

l23068142:
	c.swsp	a0,00000090
	c.mv	a0,s2
	jal	ra,0000000023067B24
	c.lwsp	tp,00000174
	slli	a5,a0,00000010
	lui	a3,000230C2
	lui	a2,000230BD
	lui	a0,000230C2
	c.srli	a5,00000010
	addi	a4,zero,+0000026C
	addi	a3,a3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,+000006E0
	jal	ra,000000002307A208

l23068172:
	lui	a2,000230BF
	addi	a2,a2,-000006F0
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,000000002305912A
	c.mv	s3,a0
	bge	zero,a0,00000000230685FE

l23068188:
	lui	s2,000230C5
	c.mv	a1,a0
	addi	a2,s2,+000004F8
	c.mv	a0,s1
	c.swsp	zero,000000A4
	jal	ra,0000000023059296
	c.li	a5,00000001
	bne	a0,a5,00000000230685FE

l230681A0:
	addi	a2,s2,+000004F8
	c.addi4spn	a4,0000004C
	c.li	a3,00000000
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,00000000230592E0
	c.lwsp	a3,00000064
	c.mv	s2,a0
	lui	a0,000230C2
	addi	a0,a0,+00000708
	jal	ra,000000002307A208
	c.lwsp	a3,00000084
	c.li	a5,00000003
	blt	a5,a2,00000000230685FE

l230681C8:
	c.mv	a1,s2
	c.addi4spn	a0,00000050
	jal	ra,00000000230A382C
	lui	a0,000230C2
	c.addi4spn	a1,00000050
	addi	a0,a0,+00000728
	sb	zero,sp,+00000053
	jal	ra,000000002307A208
	c.addi4spn	a0,00000050
	jal	ra,00000000230A4220
	c.mv	s10,a0
	c.li	s2,00000000
	lui	s5,00042026
	lui	s6,0004200F
	lui	s7,000230C2
	lui	s8,000230C2
	lui	s9,000230AA
	lui	s11,000230BF

l23068204:
	bge	s2,s10,00000000230682A6

l23068208:
	c.addi4spn	a5,00000050
	c.add	a5,s2
	lbu	a5,a5,+00000000
	addi	a4,zero,+00000046
	beq	a5,a4,0000000023068A18

l23068218:
	addi	a4,zero,+0000004D
	beq	a5,a4,0000000023068B68

l23068220:
	addi	a4,zero,+00000042
	bne	a5,a4,0000000023068C2C

l23068228:
	c.addi4spn	a0,00000080
	jal	ra,0000000023066134
	lbu	a0,sp,+00000080
	lbu	a6,sp,+00000081
	lbu	a1,sp,+00000082
	lbu	a2,sp,+00000083
	lbu	a3,sp,+00000084
	and	a5,a0,a6
	or	a0,a0,a6
	lbu	a4,sp,+00000085
	c.and	a5,a1
	c.or	a1,a0
	c.and	a5,a2
	c.or	a2,a1
	c.and	a5,a3
	c.or	a3,a2
	c.and	a5,a4
	c.or	a4,a3
	c.beqz	a4,0000000023068266

l23068260:
	c.li	a4,00000001
	bne	a5,a4,0000000023068544

l23068266:
	lbu	a4,s0,+000006B4
	c.li	a5,00000001
	bltu	a5,a4,000000002306829E

l23068270:
	lbu	a4,s5,+000007A1
	bltu	a5,a4,000000002306829E

l23068278:
	lw	a5,s6,+00000560
	beq	a5,zero,0000000023068A10

l23068280:
	jal	ra,00000000230629C6

l23068284:
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a4,zero,+00000093
	addi	a3,s7,+000003DC
	addi	a2,s8,-00000768
	addi	a0,a0,+00000770

l2306829A:
	jal	ra,000000002307A208

l2306829E:
	c.addi	s2,00000001
	c.li	a5,00000003
	bne	s2,a5,0000000023068204

l230682A6:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	bgeu	a5,a4,0000000023068C6C

l230682B0:
	lui	a1,000230CC
	c.li	a2,00000006
	addi	a1,a1,-00000530
	c.addi4spn	a0,00000080
	jal	ra,00000000230A382C
	c.j	000000002306858A

l230682C2:
	jal	ra,00000000230629A4
	c.j	0000000023067EFA

l230682C8:
	lbu	a4,s0,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,0000000023068334

l230682D2:
	lbu	a4,s6,+000007A1
	bltu	a5,a4,00000000230682FE

l230682DA:
	lw	a5,s7,+00000560
	c.beqz	a5,0000000023068350

l230682E0:
	jal	ra,00000000230629C6

l230682E4:
	lui	a5,000230AA
	c.mv	a1,a0
	addi	a4,zero,+00000100
	addi	a3,s8,+000003DC
	addi	a2,a5,-00000228
	addi	a0,s11,+000005E4
	jal	ra,000000002307A208

l230682FE:
	lbu	a4,s0,+000006B4
	c.li	a5,00000001
	bltu	a5,a4,0000000023068334

l23068308:
	lbu	a4,s6,+000007A1
	bltu	a5,a4,0000000023068334

l23068310:
	lw	a5,s7,+00000560
	c.beqz	a5,000000002306835C

l23068316:
	jal	ra,00000000230629C6

l2306831A:
	lui	a5,000230C2
	c.mv	a1,a0
	addi	a4,zero,+00000117
	addi	a3,s8,+000003DC
	addi	a2,s9,-00000768
	addi	a0,a5,+00000634

l23068330:
	jal	ra,000000002307A208

l23068334:
	c.addi	s5,00000001
	c.li	a5,00000002
	bne	s5,a5,0000000023067E4C

l2306833C:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	bgeu	a5,a4,0000000023068406

l23068346:
	addi	s3,zero,+00000032
	addi	s5,zero,+00000032
	c.j	0000000023067FC6

l23068350:
	jal	ra,00000000230629A4
	c.j	00000000230682E4

l23068356:
	jal	ra,00000000230629A4
	c.j	0000000023067FA4

l2306835C:
	jal	ra,00000000230629A4
	c.j	000000002306831A

l23068362:
	c.addi4spn	a0,00000080
	sb	zero,sp,+00000080
	jal	ra,000000002306615C
	c.bnez	a0,0000000023068380

l2306836E:
	lbu	a4,s0,+000006B4
	c.li	a5,00000001
	lbu	s5,sp,+00000080
	bgeu	a5,a4,00000000230683B4

l2306837C:
	c.mv	s3,s5
	c.j	0000000023067FC6

l23068380:
	lbu	a4,s0,+000006B4
	c.li	a5,00000001
	bltu	a5,a4,0000000023068334

l2306838A:
	lbu	a4,s6,+000007A1
	bltu	a5,a4,0000000023068334

l23068392:
	lw	a5,s7,+00000560
	c.beqz	a5,00000000230683FA

l23068398:
	jal	ra,00000000230629C6

l2306839C:
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a4,zero,+00000122
	addi	a3,s8,+000003DC
	addi	a2,s9,-00000768
	addi	a0,a0,+0000068C
	c.j	0000000023068330

l230683B4:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	c.mv	s3,s5
	bltu	a5,a4,0000000023067FC6

l230683C2:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,00000000230683F4

l230683CC:
	jal	ra,00000000230629C6

l230683D0:
	c.mv	a1,a0
	lui	a3,000230C2
	lui	a2,000230C2
	lui	a0,000230C2
	addi	a4,zero,+0000011F
	addi	a3,a3,+000003DC
	addi	a2,a2,-00000768
	addi	a0,a0,+00000660
	jal	ra,000000002307A208
	c.j	000000002306837C

l230683F4:
	jal	ra,00000000230629A4
	c.j	00000000230683D0

l230683FA:
	jal	ra,00000000230629A4
	c.j	000000002306839C

l23068400:
	jal	ra,00000000230629A4
	c.j	0000000023067E78

l23068406:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023068346

l23068412:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023068444

l2306841C:
	jal	ra,00000000230629C6

l23068420:
	c.mv	a1,a0
	lui	a3,000230C2
	lui	a2,000230BD
	lui	a0,000230C2
	addi	a4,zero,+0000012E
	addi	a3,a3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,+000006B8
	jal	ra,000000002307A208
	c.j	0000000023068346

l23068444:
	jal	ra,00000000230629A4
	c.j	0000000023068420

l2306844A:
	jal	ra,00000000230629A4
	c.j	0000000023068034

l23068450:
	lbu	a4,s0,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,0000000023068066

l2306845A:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023068066

l23068466:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023068498

l23068470:
	jal	ra,00000000230629C6

l23068474:
	c.mv	a1,a0
	lui	a3,000230C2
	lui	a2,000230AA
	lui	a0,000230BF
	addi	a4,zero,+0000025B
	addi	a3,a3,+000003DC
	addi	a2,a2,-00000228
	addi	a0,a0,-000003C4
	jal	ra,000000002307A208
	c.j	0000000023068066

l23068498:
	jal	ra,00000000230629A4
	c.j	0000000023068474

l2306849E:
	jal	ra,00000000230629A4
	c.j	00000000230680CC

l230684A4:
	lbu	a4,s0,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,00000000230680FE

l230684AE:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,00000000230680FE

l230684BA:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,00000000230684EC

l230684C4:
	jal	ra,00000000230629C6

l230684C8:
	c.mv	a1,a0
	lui	a3,000230C2
	lui	a2,000230AA
	lui	a0,000230BF
	addi	a4,zero,+00000266
	addi	a3,a3,+000003DC
	addi	a2,a2,-00000228
	addi	a0,a0,-0000035C
	jal	ra,000000002307A208
	c.j	00000000230680FE

l230684EC:
	jal	ra,00000000230629A4
	c.j	00000000230684C8

l230684F2:
	jal	ra,00000000230629A4
	c.j	0000000023068142

l230684F8:
	lbu	a4,s0,+000006B4
	bltu	a5,a4,0000000023068172

l23068500:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023068172

l2306850C:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,000000002306853E

l23068516:
	jal	ra,00000000230629C6

l2306851A:
	c.mv	a1,a0
	lui	a3,000230C2
	lui	a2,000230AA
	lui	a0,000230BF
	addi	a4,zero,+0000026E
	addi	a3,a3,+000003DC
	addi	a2,a2,-00000228
	addi	a0,a0,-00000308
	jal	ra,000000002307A208
	c.j	0000000023068172

l2306853E:
	jal	ra,00000000230629A4
	c.j	000000002306851A

l23068544:
	lbu	a5,s0,+000006B4
	bltu	a4,a5,000000002306858A

l2306854C:
	lui	a5,00042026
	lbu	a5,a5,+000007A1
	bltu	a4,a5,0000000023068594

l23068558:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,0000000023068A0A

l23068564:
	jal	ra,00000000230629C6

l23068568:
	lui	a3,000230C2
	lui	a2,000230C2
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a4,zero,+00000090
	addi	a3,a3,+000003DC
	addi	a2,a2,-00000768
	addi	a0,a0,+00000744

l23068586:
	jal	ra,000000002307A208

l2306858A:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,00000000230685F2

l23068594:
	lui	a5,00042026
	lbu	a4,a5,+000007A1
	c.li	a5,00000002
	bltu	a5,a4,00000000230685F2

l230685A2:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,0000000023068CB2

l230685AE:
	jal	ra,00000000230629C6

l230685B2:
	lbu	a5,sp,+00000085
	lbu	a7,sp,+00000082
	lbu	a6,sp,+00000081
	c.swsp	a5,00000004
	lbu	a5,sp,+00000084
	lui	a3,000230C2
	lui	a2,000230BD
	c.swsp	a5,00000080
	lbu	a5,sp,+00000083
	c.mv	a1,a0
	lui	a0,000230C3
	c.swsp	a5,00000000
	lbu	a5,sp,+00000080
	addi	a4,zero,+000000C0
	addi	a3,a3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,-0000075C
	jal	ra,000000002307A208

l230685F2:
	c.addi4spn	a0,00000080
	jal	ra,0000000023066204
	c.addi4spn	a0,00000080
	jal	ra,00000000230661E8

l230685FE:
	lui	a2,000230BF
	c.mv	a1,s4
	addi	a2,a2,-00000760
	c.mv	a0,s1
	jal	ra,000000002305912A
	c.mv	a1,a0
	bge	zero,a0,0000000023068694

l23068614:
	lui	a2,000230BF
	c.addi4spn	a3,00000044
	addi	a2,a2,-00000758
	c.mv	a0,s1
	jal	ra,000000002305926E
	c.lwsp	t0,000000C4
	c.li	a5,00000004
	c.mv	s2,a0
	bne	a4,a5,0000000023068CC0

l2306862E:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023068684

l23068638:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023068684

l23068644:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,0000000023068CBA

l23068650:
	jal	ra,00000000230629C6

l23068654:
	c.swsp	a0,00000090
	lw	a0,s2,+00000000
	jal	ra,0000000023067B24
	c.lwsp	tp,00000174
	andi	a5,a0,+000000FF
	lui	a3,000230C2
	lui	a2,000230BD
	lui	a0,000230C3
	addi	a4,zero,+0000027F
	addi	a3,a3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,-00000718
	jal	ra,000000002307A208

l23068684:
	lw	a0,s2,+00000000
	jal	ra,0000000023067B24
	andi	a0,a0,+000000FF
	jal	ra,000000002306623A

l23068694:
	c.lwsp	s0,000001F4
	c.mv	a1,s4
	c.mv	a0,s1
	addi	a2,a5,-000004C8
	jal	ra,000000002305912A
	c.mv	s5,a0
	bge	zero,a0,0000000023069298

l230686A8:
	lui	a2,000230C3
	c.mv	a1,a0
	c.addi4spn	a3,00000044
	addi	a2,a2,-000006F0
	c.mv	a0,s1
	jal	ra,000000002305926E
	c.lwsp	t0,000000C4
	c.li	a5,00000010
	c.mv	s6,a0
	bne	a4,a5,0000000023068D12

l230686C4:
	c.li	s2,00000000
	c.li	s3,00000004

l230686C8:
	slli	a5,s2,00000002
	c.add	a5,s6
	c.lw	a5,0(a0)
	jal	ra,0000000023067B24
	c.addi4spn	a5,00000080
	c.add	a5,s2
	sb	a0,a5,+00000000
	c.addi	s2,00000001
	bne	s2,s3,00000000230686C8

l230686E2:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,000000002306873C

l230686EC:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,000000002306873C

l230686F8:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,0000000023068D0C

l23068704:
	jal	ra,00000000230629C6

l23068708:
	lbu	a5,sp,+00000083
	lbu	a7,sp,+00000082
	lbu	a6,sp,+00000081
	c.swsp	a5,00000000
	lbu	a5,sp,+00000080
	lui	a3,000230C2
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+00000298
	addi	a3,a3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,-000006E0
	jal	ra,000000002307A208

l2306873C:
	c.addi4spn	a0,00000080
	jal	ra,000000002300B536

l23068742:
	lui	a2,000230C3
	c.addi4spn	a3,00000044
	addi	a2,a2,-00000678
	c.mv	a1,s5
	c.mv	a0,s1
	jal	ra,000000002305926E
	c.lwsp	t0,000000C4
	addi	a5,zero,+00000020
	c.mv	s6,a0
	bne	a4,a5,0000000023068D68

l23068760:
	c.li	s2,00000000
	c.li	s3,00000008

l23068764:
	slli	a5,s2,00000002
	c.add	a5,s6
	c.lw	a5,0(a0)
	jal	ra,0000000023067B24
	c.addi4spn	a5,00000080
	c.add	a5,s2
	sb	a0,a5,+00000000
	c.addi	s2,00000001
	bne	s2,s3,0000000023068764

l2306877E:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,00000000230687F0

l23068788:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,00000000230687F0

l23068794:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,0000000023068D62

l230687A0:
	jal	ra,00000000230629C6

l230687A4:
	lbu	a5,sp,+00000087
	lbu	a7,sp,+00000082
	lbu	a6,sp,+00000081
	c.swsp	a5,00000008
	lbu	a5,sp,+00000086
	lui	a3,000230C2
	lui	a2,000230BD
	c.swsp	a5,00000084
	lbu	a5,sp,+00000085
	c.mv	a1,a0
	lui	a0,000230C3
	c.swsp	a5,00000004
	lbu	a5,sp,+00000084
	addi	a4,zero,+000002AC
	addi	a3,a3,+000003DC
	c.swsp	a5,00000080
	lbu	a5,sp,+00000083
	addi	a2,a2,+0000032C
	addi	a0,a0,-00000668
	c.swsp	a5,00000000
	lbu	a5,sp,+00000080
	jal	ra,000000002307A208

l230687F0:
	c.addi4spn	a0,00000080
	jal	ra,000000002300B53A

l230687F6:
	lui	a2,000230C3
	c.addi4spn	a3,00000044
	addi	a2,a2,-000005F4
	c.mv	a1,s5
	c.mv	a0,s1
	jal	ra,000000002305926E
	c.lwsp	t0,000000C4
	addi	a5,zero,+00000020
	c.mv	s6,a0
	bne	a4,a5,0000000023068DBE

l23068814:
	c.li	s2,00000000
	c.li	s3,00000008

l23068818:
	slli	a5,s2,00000002
	c.add	a5,s6
	c.lw	a5,0(a0)
	jal	ra,0000000023067B24
	c.addi4spn	a5,00000080
	c.add	a5,s2
	sb	a0,a5,+00000000
	c.addi	s2,00000001
	bne	s2,s3,0000000023068818

l23068832:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,00000000230688A4

l2306883C:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,00000000230688A4

l23068848:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,0000000023068DB8

l23068854:
	jal	ra,00000000230629C6

l23068858:
	lbu	a5,sp,+00000087
	lbu	a7,sp,+00000082
	lbu	a6,sp,+00000081
	c.swsp	a5,00000008
	lbu	a5,sp,+00000086
	lui	a3,000230C2
	lui	a2,000230BD
	c.swsp	a5,00000084
	lbu	a5,sp,+00000085
	c.mv	a1,a0
	lui	a0,000230C3
	c.swsp	a5,00000004
	lbu	a5,sp,+00000084
	addi	a4,zero,+000002C0
	addi	a3,a3,+000003DC
	c.swsp	a5,00000080
	lbu	a5,sp,+00000083
	addi	a2,a2,+0000032C
	addi	a0,a0,-000005E4
	c.swsp	a5,00000000
	lbu	a5,sp,+00000080
	jal	ra,000000002307A208

l230688A4:
	c.addi4spn	a0,00000080
	jal	ra,000000002300B53E

l230688AA:
	lui	s2,000230C3
	addi	a2,s2,-00000570
	c.mv	a1,s5
	c.mv	a0,s1
	c.swsp	zero,00000024
	jal	ra,0000000023059296
	c.li	a5,00000001
	c.mv	s11,a0
	bne	a0,a5,0000000023069298

l230688C4:
	c.addi4spn	a4,00000048
	c.li	a3,00000000
	addi	a2,s2,-00000570
	c.mv	a1,s5
	c.mv	a0,s1
	jal	ra,00000000230592E0
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	c.mv	s3,a0
	bltu	a5,a4,0000000023068920

l230688E0:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023068920

l230688EC:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,0000000023068E0E

l230688F8:
	jal	ra,00000000230629C6

l230688FC:
	c.lwsp	s1,000000E4
	lui	a3,000230C2
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+000001C1
	addi	a3,a3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,-00000564
	jal	ra,000000002307A208

l23068920:
	c.lwsp	s1,00000084
	c.li	s2,00000002
	blt	s2,a2,0000000023069298

l23068928:
	c.mv	a1,s3
	c.addi4spn	a0,0000003C
	jal	ra,00000000230A382C
	lbu	a5,s0,+000006B4
	sb	zero,sp,+0000003E
	bltu	s2,a5,000000002306897C

l2306893C:
	lui	a5,00042026
	lbu	a5,a5,+000007A1
	bltu	s2,a5,000000002306897C

l23068948:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,0000000023068E14

l23068954:
	jal	ra,00000000230629C6

l23068958:
	lui	a3,000230C2
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C3
	c.addi4spn	a5,0000003C
	addi	a4,zero,+000001C5
	addi	a3,a3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,-0000053C
	jal	ra,000000002307A208

l2306897C:
	c.li	a2,0000000E
	c.li	a1,00000000
	c.addi4spn	a0,00000050
	jal	ra,00000000230A3A68
	c.li	a2,0000000E
	c.li	a1,00000000
	c.addi4spn	a0,00000060
	jal	ra,00000000230A3A68
	c.addi4spn	a0,0000003C
	jal	ra,00000000230A4220
	c.swsp	a0,00000094
	addi	s2,sp,+0000003C
	c.swsp	zero,00000090
	c.li	s9,00000000
	lui	s7,00042026
	lui	s8,0004200F
	lui	s6,000230C2
	lui	s10,000230C2

l230689B0:
	c.lwsp	a2,000001F4
	bge	s9,a5,00000000230690F8

l230689B6:
	lbu	a5,s2,+00000000
	addi	a4,zero,+00000046
	beq	a5,a4,0000000023068E2A

l230689C2:
	bltu	a4,a5,0000000023068E1A

l230689C6:
	addi	a4,zero,+00000042
	beq	a5,a4,0000000023068FCC

l230689CE:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,0000000023069538

l230689DA:
	jal	ra,00000000230629C6

l230689DE:
	lui	a3,000230C2
	lui	a2,000230B2
	c.mv	a1,a0
	lui	a0,000230B2
	addi	a5,a3,+000003DC
	addi	a6,zero,+000001A6
	addi	a4,zero,+000001A6
	addi	a3,a3,+000003DC
	addi	a2,a2,-00000364
	addi	a0,a0,-00000354
	jal	ra,000000002307A208

l23068A08:
	c.j	0000000023068A08

l23068A0A:
	jal	ra,00000000230629A4
	c.j	0000000023068568

l23068A10:
	jal	ra,00000000230629A4
	jal	zero,0000000023068284

l23068A18:
	lui	a5,000230BF
	addi	a2,a5,-000006EC
	c.mv	a1,s3
	c.addi4spn	a3,00000060
	c.mv	a0,s1
	jal	ra,000000002305926E
	c.lwsp	ra,000001F4
	c.li	a4,00000006
	c.mv	a1,a0
	c.swsp	a5,00000090
	bne	a5,a4,0000000023068A96

l23068A36:
	c.li	a2,00000006
	c.addi4spn	a0,00000080
	jal	ra,00000000230A382C
	c.addi4spn	a0,00000080
	jal	ra,00000000230661E8
	lui	a2,000230BF
	c.mv	a1,s3
	c.addi4spn	a3,00000060
	addi	a2,a2,-000006BC
	c.mv	a0,s1
	jal	ra,000000002305926E
	c.lwsp	ra,000001D4
	c.lwsp	tp,000001F4
	c.mv	a1,a0
	beq	a4,a5,0000000023068B04

l23068A60:
	lbu	a4,s0,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,000000002306829E

l23068A6A:
	lbu	a4,s5,+000007A1
	bltu	a5,a4,0000000023068AC8

l23068A72:
	lw	a5,s6,+00000560
	beq	a5,zero,0000000023068B56

l23068A7A:
	jal	ra,00000000230629C6

l23068A7E:
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a4,zero,+00000054
	addi	a3,s7,+000003DC
	addi	a2,s9,-00000228
	addi	a0,a0,+0000079C
	c.j	0000000023068AC4

l23068A96:
	lbu	a4,s0,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,000000002306829E

l23068AA0:
	lbu	a4,s5,+000007A1
	bltu	a5,a4,0000000023068AC8

l23068AA8:
	lw	a5,s6,+00000560
	c.beqz	a5,0000000023068AFE

l23068AAE:
	jal	ra,00000000230629C6

l23068AB2:
	c.mv	a1,a0
	addi	a4,zero,+00000047
	addi	a3,s7,+000003DC
	addi	a2,s9,-00000228
	addi	a0,s11,-000006B0

l23068AC4:
	jal	ra,000000002307A208

l23068AC8:
	lbu	a4,s0,+000006B4
	c.li	a5,00000001
	bltu	a5,a4,000000002306829E

l23068AD2:
	lbu	a4,s5,+000007A1
	bltu	a5,a4,000000002306829E

l23068ADA:
	lw	a5,s6,+00000560
	c.beqz	a5,0000000023068B62

l23068AE0:
	jal	ra,00000000230629C6

l23068AE4:
	lui	a5,000230C2
	c.mv	a1,a0
	addi	a4,zero,+0000009E
	addi	a3,s7,+000003DC
	addi	a2,s8,-00000768
	addi	a0,a5,+000007F0
	jal	zero,000000002306829A

l23068AFE:
	jal	ra,00000000230629A4
	c.j	0000000023068AB2

l23068B04:
	c.li	a2,00000006
	c.addi4spn	a0,00000080
	jal	ra,00000000230A382C
	c.addi4spn	a0,00000080
	jal	ra,0000000023066204
	lbu	a4,s0,+000006B4
	c.li	a5,00000001
	bltu	a5,a4,000000002306858A

l23068B1C:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023068594

l23068B28:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023068B5C

l23068B32:
	jal	ra,00000000230629C6

l23068B36:
	lui	a3,000230C2
	lui	a2,000230C2
	c.mv	a1,a0
	lui	a0,000230C2
	addi	a4,zero,+0000009B
	addi	a3,a3,+000003DC
	addi	a2,a2,-00000768
	addi	a0,a0,+000007C4
	c.j	0000000023068586

l23068B56:
	jal	ra,00000000230629A4
	c.j	0000000023068A7E

l23068B5C:
	jal	ra,00000000230629A4
	c.j	0000000023068B36

l23068B62:
	jal	ra,00000000230629A4
	c.j	0000000023068AE4

l23068B68:
	c.addi4spn	a0,00000080
	jal	ra,0000000023066144
	c.bnez	a0,0000000023068BF0

l23068B70:
	lbu	a0,sp,+00000080
	lbu	a6,sp,+00000081
	lbu	a1,sp,+00000082
	lbu	a2,sp,+00000083
	lbu	a3,sp,+00000084
	and	a5,a0,a6
	or	a0,a0,a6
	lbu	a4,sp,+00000085
	c.and	a5,a1
	c.or	a1,a0
	c.and	a5,a2
	c.or	a2,a1
	c.and	a5,a3
	c.or	a3,a2
	c.and	a5,a4
	c.or	a4,a3
	c.beqz	a4,0000000023068BF0

l23068BA2:
	c.li	a4,00000001
	beq	a5,a4,0000000023068BF0

l23068BA8:
	lbu	a5,s0,+000006B4
	bltu	a4,a5,000000002306858A

l23068BB0:
	lui	a5,00042026
	lbu	a5,a5,+000007A1
	bltu	a4,a5,0000000023068594

l23068BBC:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023068BEA

l23068BC6:
	jal	ra,00000000230629C6

l23068BCA:
	lui	a3,000230C2
	lui	a2,000230C2
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+000000A6
	addi	a3,a3,+000003DC
	addi	a2,a2,-00000768
	addi	a0,a0,-000007E4
	c.j	0000000023068586

l23068BEA:
	jal	ra,00000000230629A4
	c.j	0000000023068BCA

l23068BF0:
	lbu	a4,s0,+000006B4
	c.li	a5,00000001
	bltu	a5,a4,000000002306829E

l23068BFA:
	lbu	a4,s5,+000007A1
	bltu	a5,a4,000000002306829E

l23068C02:
	lw	a5,s6,+00000560
	c.beqz	a5,0000000023068C26

l23068C08:
	jal	ra,00000000230629C6

l23068C0C:
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+000000A9
	addi	a3,s7,+000003DC
	addi	a2,s8,-00000768
	addi	a0,a0,-000007B8
	jal	zero,000000002306829A

l23068C26:
	jal	ra,00000000230629A4
	c.j	0000000023068C0C

l23068C2C:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023068C66

l23068C36:
	jal	ra,00000000230629C6

l23068C3A:
	lui	a3,000230C2
	lui	a2,000230B2
	c.mv	a1,a0
	lui	a0,000230B2
	addi	a5,a3,+000003DC
	addi	a6,zero,+000000AF
	addi	a4,zero,+000000AF
	addi	a3,a3,+000003DC
	addi	a2,a2,-00000364
	addi	a0,a0,-00000354
	jal	ra,000000002307A208

l23068C64:
	c.j	0000000023068C64

l23068C66:
	jal	ra,00000000230629A4
	c.j	0000000023068C3A

l23068C6C:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,00000000230682B0

l23068C78:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023068CAC

l23068C82:
	jal	ra,00000000230629C6

l23068C86:
	c.mv	a1,a0
	lui	a3,000230C2
	lui	a2,000230BD
	lui	a0,000230C3
	addi	a4,zero,+000000B5
	addi	a3,a3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,-0000078C
	jal	ra,000000002307A208
	jal	zero,00000000230682B0

l23068CAC:
	jal	ra,00000000230629A4
	c.j	0000000023068C86

l23068CB2:
	jal	ra,00000000230629A4
	jal	zero,00000000230685B2

l23068CBA:
	jal	ra,00000000230629A4
	c.j	0000000023068654

l23068CC0:
	lbu	a4,s0,+000006B4
	bltu	a5,a4,0000000023068694

l23068CC8:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023068694

l23068CD4:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023068D06

l23068CDE:
	jal	ra,00000000230629C6

l23068CE2:
	c.mv	a1,a0
	lui	a3,000230C2
	lui	a2,000230AA
	lui	a0,000230BF
	addi	a4,zero,+00000283
	addi	a3,a3,+000003DC
	addi	a2,a2,-00000228
	addi	a0,a0,-00000718
	jal	ra,000000002307A208
	c.j	0000000023068694

l23068D06:
	jal	ra,00000000230629A4
	c.j	0000000023068CE2

l23068D0C:
	jal	ra,00000000230629A4
	c.j	0000000023068708

l23068D12:
	lbu	a4,s0,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,0000000023068742

l23068D1C:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023068742

l23068D28:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023068D5C

l23068D32:
	jal	ra,00000000230629C6

l23068D36:
	c.lwsp	t0,000000E4
	c.mv	a1,a0
	lui	a3,000230C2
	lui	a2,000230AA
	lui	a0,000230C3
	addi	a4,zero,+0000029B
	addi	a3,a3,+000003DC
	addi	a2,a2,-00000228
	addi	a0,a0,-000006B0
	jal	ra,000000002307A208
	c.j	0000000023068742

l23068D5C:
	jal	ra,00000000230629A4
	c.j	0000000023068D36

l23068D62:
	jal	ra,00000000230629A4
	c.j	00000000230687A4

l23068D68:
	lbu	a4,s0,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,00000000230687F6

l23068D72:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,00000000230687F6

l23068D7E:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023068DB2

l23068D88:
	jal	ra,00000000230629C6

l23068D8C:
	c.lwsp	t0,000000E4
	c.mv	a1,a0
	lui	a3,000230C2
	lui	a2,000230AA
	lui	a0,000230C3
	addi	a4,zero,+000002AF
	addi	a3,a3,+000003DC
	addi	a2,a2,-00000228
	addi	a0,a0,-0000062C
	jal	ra,000000002307A208
	c.j	00000000230687F6

l23068DB2:
	jal	ra,00000000230629A4
	c.j	0000000023068D8C

l23068DB8:
	jal	ra,00000000230629A4
	c.j	0000000023068858

l23068DBE:
	lbu	a4,s0,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,00000000230688AA

l23068DC8:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,00000000230688AA

l23068DD4:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023068E08

l23068DDE:
	jal	ra,00000000230629C6

l23068DE2:
	c.lwsp	t0,000000E4
	c.mv	a1,a0
	lui	a3,000230C2
	lui	a2,000230AA
	lui	a0,000230C3
	addi	a4,zero,+000002C3
	addi	a3,a3,+000003DC
	addi	a2,a2,-00000228
	addi	a0,a0,-000005A8
	jal	ra,000000002307A208
	c.j	00000000230688AA

l23068E08:
	jal	ra,00000000230629A4
	c.j	0000000023068DE2

l23068E0E:
	jal	ra,00000000230629A4
	c.j	00000000230688FC

l23068E14:
	jal	ra,00000000230629A4
	c.j	0000000023068958

l23068E1A:
	addi	a4,zero,+00000062
	beq	a5,a4,0000000023068FCC

l23068E22:
	addi	a4,zero,+00000066
	bne	a5,a4,00000000230689CE

l23068E2A:
	lui	a5,000230C3
	c.addi4spn	a3,0000004C
	addi	a2,a5,-0000043C
	c.mv	a1,s5
	c.mv	a0,s1
	c.swsp	zero,000000A4
	jal	ra,000000002305926E
	c.lwsp	a3,000000A4
	addi	a5,zero,+00000038
	c.mv	a4,a0
	bne	a3,a5,0000000023069190

l23068E4A:
	c.li	s3,00000000
	c.li	s5,0000000E

l23068E4E:
	slli	a5,s3,00000002
	c.add	a5,a4
	c.lw	a5,0(a0)
	c.swsp	a4,00000090
	jal	ra,0000000023067B24
	c.addi4spn	a5,00000060
	c.add	a5,s3
	sb	a0,a5,+00000000
	c.addi	s3,00000001
	c.lwsp	tp,000001D4
	bne	s3,s5,0000000023068E4E

l23068E6C:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	lui	s3,000230C2
	bltu	a5,a4,0000000023068EB4

l23068E7A:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023068EB4

l23068E86:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,0000000023069184

l23068E92:
	jal	ra,00000000230629C6

l23068E96:
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+00000156
	addi	a3,s3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,-00000430
	jal	ra,000000002307A208

l23068EB4:
	c.li	a3,0000000E
	c.li	a4,00000000
	c.addi4spn	a2,00000060
	addi	a1,zero,+00000157
	addi	a0,s3,+000003DC
	jal	ra,000000002307A236
	c.addi4spn	a5,00000060
	addi	a3,sp,+0000006E

l23068ECC:
	lbu	a4,a5,+00000000
	c.addi	a5,00000001
	c.addi	a4,FFFFFFF6
	sb	a4,a5,+00000FFF
	bne	a3,a5,0000000023068ECC

l23068EDC:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023068F64

l23068EE6:
	lui	a4,00042026
	lbu	a3,a4,+000007A1
	c.mv	s5,a4
	bltu	a5,a3,0000000023068F24

l23068EF4:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,000000002306918A

l23068F00:
	jal	ra,00000000230629C6

l23068F04:
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C3
	c.li	a5,0000000A
	addi	a4,zero,+0000015B
	addi	a3,s3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,-00000404
	jal	ra,000000002307A208

l23068F24:
	lbu	a4,s0,+000006B4
	c.li	a5,00000001
	bltu	a5,a4,0000000023068F64

l23068F2E:
	lbu	a4,s5,+000007A1
	bltu	a5,a4,0000000023068F64

l23068F36:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,0000000023069208

l23068F42:
	jal	ra,00000000230629C6

l23068F46:
	lui	a2,000230C2
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+0000018F
	addi	a3,s3,+000003DC
	addi	a2,a2,-00000768
	addi	a0,a0,-00000394
	jal	ra,000000002307A208

l23068F64:
	lbu	a3,s2,+00000000
	addi	a5,zero,+00000042
	lbu	a4,s0,+000006B4
	bne	a3,a5,0000000023069214

l23068F74:
	c.li	a5,00000000
	c.li	a3,0000000E

l23068F78:
	c.addi4spn	a1,00000060
	c.add	a1,a5
	lbu	a1,a1,+00000000
	c.addi4spn	a2,00000050
	c.add	a2,a5
	sb	a1,a2,+00000000
	c.addi	a5,00000001
	bne	a5,a3,0000000023068F78

l23068F8E:
	c.li	a5,00000001
	bltu	a5,a4,0000000023069274

l23068F94:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023069274

l23068FA0:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,000000002306920E

l23068FAC:
	jal	ra,00000000230629C6

l23068FB0:
	lui	a2,000230C2
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+00000195
	addi	a3,s3,+000003DC
	addi	a2,a2,-00000768
	addi	a0,a0,-00000360
	c.j	0000000023069086

l23068FCC:
	c.addi4spn	a0,00000060
	jal	ra,0000000023066174
	c.mv	s3,a0
	lbu	a4,s0,+000006B4
	bne	a0,zero,000000002306914A

l23068FDC:
	c.li	a5,00000002
	bltu	a5,a4,0000000023069012

l23068FE2:
	lbu	a4,s7,+000007A1
	bltu	a5,a4,0000000023069012

l23068FEA:
	lw	a5,s8,+00000560
	c.beqz	a5,000000002306908C

l23068FF0:
	jal	ra,00000000230629C6

l23068FF4:
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+00000175
	addi	a3,s6,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,-00000518
	jal	ra,000000002307A208

l23069012:
	c.li	a4,00000001
	c.li	a3,0000000E
	c.addi4spn	a2,00000060
	addi	a1,zero,+00000176
	addi	a0,s6,+000003DC
	jal	ra,000000002307A236
	lbu	a4,s2,+00000000
	addi	a5,zero,+00000042
	bne	a4,a5,0000000023069098

l23069030:
	c.li	a5,0000000E

l23069032:
	c.addi4spn	a3,00000060
	c.add	a3,s3
	lbu	a3,a3,+00000000
	c.addi4spn	a4,00000050
	c.add	a4,s3
	sb	a3,a4,+00000000
	c.addi	s3,00000001
	bne	s3,a5,0000000023069032

l23069048:
	lbu	a4,s0,+000006B4
	c.li	a5,00000001
	bltu	a5,a4,0000000023069274

l23069052:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023069274

l2306905E:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023069092

l23069068:
	jal	ra,00000000230629C6

l2306906C:
	lui	a2,000230C2
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+0000017C
	addi	a3,s6,+000003DC
	addi	a2,a2,-00000768
	addi	a0,a0,-000004E4

l23069086:
	jal	ra,000000002307A208
	c.j	0000000023069274

l2306908C:
	jal	ra,00000000230629A4
	c.j	0000000023068FF4

l23069092:
	jal	ra,00000000230629A4
	c.j	000000002306906C

l23069098:
	lbu	a4,s0,+000006B4
	c.li	a5,00000001
	bltu	a5,a4,00000000230690CE

l230690A2:
	lbu	a4,s7,+000007A1
	bltu	a5,a4,00000000230690CE

l230690AA:
	lw	a5,s8,+00000560
	c.beqz	a5,0000000023069144

l230690B0:
	jal	ra,00000000230629C6

l230690B4:
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+00000180
	addi	a3,s6,+000003DC
	addi	a2,s10,-00000768
	addi	a0,a0,-000004B4
	jal	ra,000000002307A208

l230690CE:
	c.addi4spn	a5,00000050
	c.li	a3,0000000E

l230690D2:
	c.addi4spn	a4,00000060
	c.add	a4,s3
	lbu	a2,a5,+00000000
	lbu	a4,a4,+00000000
	c.addi	s3,00000001
	c.addi	a5,00000001
	c.add	a4,a2
	sb	a4,a5,+00000FFF
	bne	s3,a3,00000000230690D2

l230690EC:
	c.swsp	s11,00000090

l230690EE:
	c.addi	s9,00000001
	c.li	a5,00000002
	c.addi	s2,00000001
	bne	s9,a5,00000000230689B0

l230690F8:
	c.lwsp	tp,000001F4
	bne	a5,zero,0000000023069274

l230690FE:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023069274

l23069108:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023069274

l23069114:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,0000000023069540

l23069120:
	jal	ra,00000000230629C6

l23069124:
	lui	a3,000230C2
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+000001AC
	addi	a3,a3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,-000002B8
	c.j	0000000023069086

l23069144:
	jal	ra,00000000230629A4
	c.j	00000000230690B4

l2306914A:
	c.li	a5,00000001
	bltu	a5,a4,00000000230690EE

l23069150:
	lbu	a4,s7,+000007A1
	bltu	a5,a4,00000000230690EE

l23069158:
	lw	a5,s8,+00000560
	c.beqz	a5,000000002306917E

l2306915E:
	jal	ra,00000000230629C6

l23069162:
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+00000186
	addi	a3,s6,+000003DC
	addi	a2,s10,-00000768
	addi	a0,a0,-00000474

l23069178:
	jal	ra,000000002307A208
	c.j	00000000230690EE

l2306917E:
	jal	ra,00000000230629A4
	c.j	0000000023069162

l23069184:
	jal	ra,00000000230629A4
	c.j	0000000023068E96

l2306918A:
	jal	ra,00000000230629A4
	c.j	0000000023068F04

l23069190:
	lbu	a4,s0,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,00000000230690EE

l2306919A:
	lbu	a4,s7,+000007A1
	bltu	a5,a4,00000000230691CC

l230691A2:
	lw	a5,s8,+00000560
	c.beqz	a5,0000000023069202

l230691A8:
	jal	ra,00000000230629C6

l230691AC:
	c.lwsp	a3,000000E4
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+0000015F
	addi	a3,s6,+000003DC
	addi	a2,a2,-00000228
	addi	a0,a0,-000003C8
	jal	ra,000000002307A208

l230691CC:
	lbu	a4,s0,+000006B4
	c.li	a5,00000001
	bltu	a5,a4,00000000230690EE

l230691D6:
	lbu	a4,s7,+000007A1
	bltu	a5,a4,00000000230690EE

l230691DE:
	lw	a5,s8,+00000560
	beq	a5,zero,0000000023069532

l230691E6:
	jal	ra,00000000230629C6

l230691EA:
	lui	a5,000230C3
	c.mv	a1,a0
	addi	a4,zero,+000001A0
	addi	a3,s6,+000003DC
	addi	a2,s10,-00000768
	addi	a0,a5,-000002F0
	c.j	0000000023069178

l23069202:
	jal	ra,00000000230629A4
	c.j	00000000230691AC

l23069208:
	jal	ra,00000000230629A4
	c.j	0000000023068F46

l2306920E:
	jal	ra,00000000230629A4
	c.j	0000000023068FB0

l23069214:
	c.li	a5,00000001
	bltu	a5,a4,0000000023069254

l2306921A:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023069254

l23069226:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,000000002306952C

l23069232:
	jal	ra,00000000230629C6

l23069236:
	lui	a2,000230C2
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+00000199
	addi	a3,s3,+000003DC
	addi	a2,a2,-00000768
	addi	a0,a0,-00000330
	jal	ra,000000002307A208

l23069254:
	c.addi4spn	a4,00000050
	c.li	a5,00000000
	c.li	a2,0000000E

l2306925A:
	c.addi4spn	a3,00000060
	c.add	a3,a5
	lbu	a1,a4,+00000000
	lbu	a3,a3,+00000000
	c.addi	a5,00000001
	c.addi	a4,00000001
	c.add	a3,a1
	sb	a3,a4,+00000FFF
	bne	a5,a2,000000002306925A

l23069274:
	lui	a0,000230C2
	c.li	a4,00000001
	c.li	a3,0000000E
	c.addi4spn	a2,00000050
	addi	a1,zero,+000001AE
	addi	a0,a0,+000003DC
	jal	ra,000000002307A236
	lb	a0,sp,+00000056
	jal	ra,000000002302C468
	c.addi4spn	a0,00000050
	jal	ra,0000000023001F26

l23069298:
	lui	a2,000230BF
	addi	a2,a2,-00000668
	c.mv	a1,s4
	c.mv	a0,s1
	c.swsp	zero,00000028
	jal	ra,000000002305912A
	c.mv	s2,a0
	bge	zero,a0,0000000023069364

l230692B0:
	lui	s3,000230BF
	c.mv	a1,a0
	addi	a2,s3,-00000664
	c.mv	a0,s1
	jal	ra,0000000023059296
	c.li	a5,00000001
	beq	a0,a5,0000000023069546

l230692C6:
	c.li	s3,00000000

l230692C8:
	lui	s5,000230BF
	addi	a2,s5,-00000604
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023059296
	c.li	a5,00000001
	beq	a0,a5,00000000230695CE

l230692DE:
	c.li	s5,00000000

l230692E0:
	lui	a2,000230BF
	c.mv	a1,s2
	c.addi4spn	a3,00000050
	addi	a2,a2,-000005A8
	c.mv	a0,s1
	jal	ra,000000002305926E
	c.mv	s2,a0
	beq	a0,zero,000000002306965C

l230692F8:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,000000002306934C

l23069302:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,000000002306934C

l2306930E:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,0000000023069656

l2306931A:
	jal	ra,00000000230629C6

l2306931E:
	c.swsp	a0,00000090
	lw	a0,s2,+00000000
	jal	ra,0000000023067B24
	c.lwsp	tp,00000174
	c.mv	a5,a0
	lui	a3,000230C2
	lui	a2,000230BD
	lui	a0,000230BF
	addi	a4,zero,+00000227
	addi	a3,a3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,-0000059C
	jal	ra,000000002307A208

l2306934C:
	lw	a0,s2,+00000000
	jal	ra,0000000023067B24
	andi	a4,a0,+000000FF

l23069358:
	c.mv	a3,s5
	c.addi4spn	a2,00000080
	c.mv	a1,s3
	c.addi4spn	a0,00000060
	jal	ra,0000000023066246

l23069364:
	lui	a2,000230C3
	addi	a2,a2,-00000208
	c.mv	a1,s4
	c.mv	a0,s1
	c.swsp	zero,00000028
	jal	ra,000000002305912A
	c.mv	s2,a0
	bge	zero,a0,000000002306942E

l2306937C:
	lui	s3,000230BF
	c.mv	a1,a0
	addi	a2,s3,-00000664
	c.mv	a0,s1
	jal	ra,0000000023059296
	c.li	a5,00000001
	beq	a0,a5,00000000230696B0

l23069392:
	c.li	s3,00000000

l23069394:
	lui	s4,000230BF
	addi	a2,s4,-00000604
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023059296
	c.li	a5,00000001
	beq	a0,a5,0000000023069738

l230693AA:
	c.li	s4,00000000

l230693AC:
	lui	a2,000230C3
	c.mv	a1,s2
	c.addi4spn	a3,00000050
	addi	a2,a2,-00000178
	c.mv	a0,s1
	jal	ra,000000002305926E
	c.mv	s2,a0
	c.li	a4,00000000
	c.beqz	a0,0000000023069422

l230693C4:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023069418

l230693CE:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023069418

l230693DA:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,00000000230697C0

l230693E6:
	jal	ra,00000000230629C6

l230693EA:
	c.swsp	a0,00000090
	lw	a0,s2,+00000000
	jal	ra,0000000023067B24
	c.lwsp	tp,00000174
	c.mv	a5,a0
	lui	a3,000230C2
	lui	a2,000230BD
	lui	a0,000230C3
	addi	a4,zero,+000001F2
	addi	a3,a3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,-00000164
	jal	ra,000000002307A208

l23069418:
	lw	a0,s2,+00000000
	jal	ra,0000000023067B24
	c.mv	a4,a0

l23069422:
	c.mv	a3,s4
	c.addi4spn	a2,00000080
	c.mv	a1,s3
	c.addi4spn	a0,00000060
	jal	ra,00000000230662B0

l2306942E:
	lui	a2,000230C3
	addi	a2,a2,-00000134
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002305912A
	c.mv	s2,a0
	blt	zero,a0,000000002306948C

l23069444:
	lbu	a4,s0,+000006B4
	c.li	a5,00000004
	bltu	a5,a4,000000002306948C

l2306944E:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,000000002306948C

l2306945A:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,00000000230697C6

l23069466:
	jal	ra,00000000230629C6

l2306946A:
	lui	a3,000230C2
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+000002CD
	addi	a3,a3,+000003DC
	addi	a2,a2,-00000228
	addi	a0,a0,-00000128
	jal	ra,000000002307A208

l2306948C:
	c.lwsp	s0,000001F4
	c.mv	a1,s2
	c.mv	a0,s1
	addi	a2,a5,-000004C8
	jal	ra,000000002305912A
	c.mv	a1,a0
	bge	zero,a0,000000002306950C

l230694A0:
	lui	a2,000230C3
	c.mv	a0,s1
	c.addi4spn	a3,00000044
	addi	a2,a2,-00000108
	jal	ra,000000002305926E
	c.li	s1,00000000
	c.beqz	a0,00000000230694BC

l230694B4:
	c.lw	a0,0(a0)
	jal	ra,0000000023067B24
	c.mv	s1,a0

l230694BC:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023069506

l230694C6:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023069506

l230694D2:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	beq	a5,zero,00000000230697CC

l230694DE:
	jal	ra,00000000230629C6

l230694E2:
	lui	a3,000230C2
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C3
	c.mv	a5,s1
	addi	a4,zero,+000002D9
	addi	a3,a3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,-000000F8
	jal	ra,000000002307A208

l23069506:
	c.mv	a0,s1
	jal	ra,000000002302C472

l2306950C:
	c.lwsp	t6,00000130
	c.lwsp	s11,00000114
	c.lwsp	s7,00000134
	c.lwsp	s3,00000158
	c.lwsp	a5,00000178
	c.lwsp	a1,00000198
	c.lwsp	t2,000001B8
	c.lwsp	gp,000001D8
	c.lwsp	t6,000000E8
	c.lwsp	s11,0000000C
	c.lwsp	s7,0000002C
	c.lwsp	s3,0000004C
	c.lwsp	a5,0000006C
	c.li	a0,00000000
	c.addi16sp	00000100
	c.jr	ra

l2306952C:
	jal	ra,00000000230629A4
	c.j	0000000023069236

l23069532:
	jal	ra,00000000230629A4
	c.j	00000000230691EA

l23069538:
	jal	ra,00000000230629A4
	jal	zero,00000000230689DE

l23069540:
	jal	ra,00000000230629A4
	c.j	0000000023069124

l23069546:
	c.addi4spn	a4,00000050
	addi	a2,s3,-00000664
	c.li	a3,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230592E0
	c.lwsp	a7,000000E4
	c.li	a4,0000001E
	c.mv	s3,a0
	c.addi	a5,FFFFFFFF
	bltu	a4,a5,00000000230692C6

l23069562:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,00000000230695AE

l2306956C:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,00000000230695AE

l23069578:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,00000000230695C8

l23069582:
	jal	ra,00000000230629C6

l23069586:
	c.lwsp	a7,00000028
	lui	a3,000230C2
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C3
	c.mv	a6,s3
	c.li	a5,00000000
	addi	a4,zero,+00000213
	addi	a3,a3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,-00000288
	jal	ra,000000002307A208

l230695AE:
	c.lwsp	a7,00000084
	c.mv	a1,s3
	c.addi4spn	a0,00000060
	jal	ra,00000000230A382C
	c.lwsp	a7,00000068
	c.addi4spn	a5,000000C0
	c.add	a5,s3
	sb	zero,a5,+00000FA0
	andi	s3,s3,+000000FF
	c.j	00000000230692C8

l230695C8:
	jal	ra,00000000230629A4
	c.j	0000000023069586

l230695CE:
	c.addi4spn	a4,00000050
	addi	a2,s5,-00000604
	c.li	a3,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230592E0
	c.lwsp	a7,000000E4
	c.li	a4,0000001E
	c.mv	s5,a0
	c.addi	a5,FFFFFFFF
	bltu	a4,a5,00000000230692DE

l230695EA:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023069636

l230695F4:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023069636

l23069600:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023069650

l2306960A:
	jal	ra,00000000230629C6

l2306960E:
	c.lwsp	a7,00000028
	lui	a3,000230C2
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C3
	c.mv	a6,s5
	c.li	a5,00000000
	addi	a4,zero,+0000021E
	addi	a3,a3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,-00000248
	jal	ra,000000002307A208

l23069636:
	c.lwsp	a7,00000084
	c.mv	a1,s5
	c.addi4spn	a0,00000080
	jal	ra,00000000230A382C
	c.lwsp	a7,000000A8
	c.addi4spn	a5,000000C0
	c.add	a5,s5
	sb	zero,a5,+00000FC0
	andi	s5,s5,+000000FF
	c.j	00000000230692E0

l23069650:
	jal	ra,00000000230629A4
	c.j	000000002306960E

l23069656:
	jal	ra,00000000230629A4
	c.j	000000002306931E

l2306965C:
	lbu	a3,s0,+000006B4
	c.li	a5,00000004
	c.li	a4,00000000
	bltu	a5,a3,0000000023069358

l23069668:
	lui	a4,00042026
	lbu	a3,a4,+000007A1
	c.mv	a4,a0
	bltu	a5,a3,0000000023069358

l23069676:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,00000000230696AA

l23069680:
	jal	ra,00000000230629C6

l23069684:
	c.mv	a1,a0
	lui	a3,000230C2
	lui	a2,000230AA
	lui	a0,000230BF
	addi	a4,zero,+0000022B
	addi	a3,a3,+000003DC
	addi	a2,a2,-00000228
	addi	a0,a0,-00000560
	jal	ra,000000002307A208
	c.li	a4,00000000
	c.j	0000000023069358

l230696AA:
	jal	ra,00000000230629A4
	c.j	0000000023069684

l230696B0:
	c.addi4spn	a4,00000050
	addi	a2,s3,-00000664
	c.li	a3,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230592E0
	c.lwsp	a7,000000E4
	c.li	a4,0000001E
	c.mv	s3,a0
	c.addi	a5,FFFFFFFF
	bltu	a4,a5,0000000023069392

l230696CC:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023069718

l230696D6:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,0000000023069718

l230696E2:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023069732

l230696EC:
	jal	ra,00000000230629C6

l230696F0:
	c.lwsp	a7,00000028
	lui	a3,000230C2
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C3
	c.mv	a6,s3
	c.li	a5,00000000
	addi	a4,zero,+000001DF
	addi	a3,a3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,-00000204
	jal	ra,000000002307A208

l23069718:
	c.lwsp	a7,00000084
	c.mv	a1,s3
	c.addi4spn	a0,00000060
	jal	ra,00000000230A382C
	c.lwsp	a7,00000068
	c.addi4spn	a5,000000C0
	c.add	a5,s3
	sb	zero,a5,+00000FA0
	andi	s3,s3,+000000FF
	c.j	0000000023069394

l23069732:
	jal	ra,00000000230629A4
	c.j	00000000230696F0

l23069738:
	c.addi4spn	a4,00000050
	addi	a2,s4,-00000604
	c.li	a3,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230592E0
	c.lwsp	a7,000000E4
	c.li	a4,0000001E
	c.mv	s4,a0
	c.addi	a5,FFFFFFFF
	bltu	a4,a5,00000000230693AA

l23069754:
	lbu	a4,s0,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,00000000230697A0

l2306975E:
	lui	a4,00042026
	lbu	a4,a4,+000007A1
	bltu	a5,a4,00000000230697A0

l2306976A:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,00000000230697BA

l23069774:
	jal	ra,00000000230629C6

l23069778:
	c.lwsp	a7,00000028
	lui	a3,000230C2
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C3
	c.mv	a6,s4
	c.li	a5,00000000
	addi	a4,zero,+000001EA
	addi	a3,a3,+000003DC
	addi	a2,a2,+0000032C
	addi	a0,a0,-000001BC
	jal	ra,000000002307A208

l230697A0:
	c.lwsp	a7,00000084
	c.mv	a1,s4
	c.addi4spn	a0,00000080
	jal	ra,00000000230A382C
	c.lwsp	a7,00000088
	c.addi4spn	a5,000000C0
	c.add	a5,s4
	sb	zero,a5,+00000FC0
	andi	s4,s4,+000000FF
	c.j	00000000230693AC

l230697BA:
	jal	ra,00000000230629A4
	c.j	0000000023069778

l230697C0:
	jal	ra,00000000230629A4
	c.j	00000000230693EA

l230697C6:
	jal	ra,00000000230629A4
	c.j	000000002306946A

l230697CC:
	jal	ra,00000000230629A4
	c.j	00000000230694E2

;; bl_tsen_adc_get: 230697D2
;;   Called from:
;;     23025990 (in wifi_mgmr_start)
bl_tsen_adc_get proc
	c.addi16sp	FFFFFFB0
	c.swsp	s1,000000A0
	lui	s1,0004200F
	lhu	a4,s1,-00000346
	c.lui	a5,00010000
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	ra,000000A4
	c.sdsp	s0,00000128
	c.addi	a5,FFFFFFFF
	c.mv	s2,a0
	c.mv	s3,a1
	addi	s0,s1,-00000346
	bne	a4,a5,0000000023069884

l230697F8:
	lui	a1,000230C3
	c.li	a2,0000000E
	addi	a1,a1,-000000B0
	c.addi4spn	a0,00000010
	sh	zero,s0,+00000000
	jal	ra,00000000230A382C
	c.li	a2,00000007
	c.li	a1,00000000
	c.li	a0,00000001
	sh	zero,sp,+0000000C
	jal	ra,000000002308385C
	jal	ra,0000000023082CF4
	jal	ra,0000000023082CE2
	jal	ra,0000000023082CBA
	c.addi4spn	a0,00000010
	jal	ra,0000000023083274
	c.li	a2,00000000
	c.li	a1,00000017
	c.li	a0,0000000E
	jal	ra,0000000023082D04
	c.li	a0,00000000
	jal	ra,0000000023083070
	c.addi4spn	a0,0000000C
	jal	ra,0000000023082D70
	addi	a0,s1,-00000346
	auipc	ra,0001EFA3
	jalr	ra,ra,+000001A2
	lui	a5,0004200F
	c.li	a4,00000001
	lui	s1,000230C3
	lw	a5,a5,+00000560
	bne	a0,a4,00000000230698CC

l23069860:
	c.beqz	a5,00000000230698C6

l23069862:
	jal	ra,00000000230629C6

l23069866:
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+0000010B
	addi	a3,s1,-0000005C
	addi	a2,a2,-00000228
	addi	a0,a0,-0000002C
	jal	ra,000000002307A208

l23069884:
	lhu	a0,s0,+00000000
	jal	ra,0000000023083196
	fmv.s	fs0,fa0,fa0
	beq	s3,zero,00000000230698A8

l23069894:
	jal	ra,00000000230A31AC
	c.mv	a2,a0
	lui	a0,000230C3
	c.mv	a3,a1
	addi	a0,a0,+00000024
	jal	ra,0000000023082388

l230698A8:
	beq	s2,zero,00000000230698B4

l230698AC:
	fcvt.w.s	a5,fs0
	sh	a5,s2,+00000000

l230698B4:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.ldsp	a2,00000228
	c.li	a0,00000000
	c.addi16sp	00000050
	c.jr	ra

l230698C6:
	jal	ra,00000000230629A4
	c.j	0000000023069866

l230698CC:
	c.beqz	a5,00000000230698F6

l230698CE:
	jal	ra,00000000230629C6

l230698D2:
	lhu	a5,s0,+00000000
	c.mv	a1,a0
	lui	a2,000230BD
	lui	a0,000230C3
	addi	a4,zero,+0000010D
	addi	a3,s1,-0000005C
	addi	a2,a2,+0000032C
	addi	a0,a0,+00000000
	jal	ra,000000002307A208
	c.j	0000000023069884

l230698F6:
	jal	ra,00000000230629A4
	c.j	00000000230698D2

;; bl_rtc_get_counter: 230698FC
;;   Called from:
;;     23069916 (in bl_rtc_get_timestamp_ms)
bl_rtc_get_counter proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000008
	c.swsp	ra,0000008C
	jal	ra,000000002308391C
	c.lwsp	t3,00000020
	c.lwsp	s0,00000044
	c.lwsp	a2,00000064
	c.addi16sp	00000020
	c.jr	ra

;; bl_rtc_get_timestamp_ms: 23069912
;;   Called from:
;;     2305C3BA (in bl_sys_time_sync_state)
bl_rtc_get_timestamp_ms proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230698FC
	slli	a5,a1,0000001B
	srli	a4,a0,00000005
	c.or	a4,a5
	slli	a2,a1,00000015
	srli	a5,a0,0000000B
	slli	a6,a1,00000014
	c.srli	a0,0000000C
	c.or	a5,a2
	or	a0,a6,a0
	srli	a3,a1,00000005
	srli	a2,a1,0000000B
	c.add	a0,a5
	c.srli	a1,0000000C
	sltu	a5,a0,a5
	c.add	a1,a2
	c.lwsp	a2,00000020
	c.add	a5,a1
	sub	a0,a4,a0
	sltu	a4,a4,a0
	sub	a5,a3,a5
	sub	a1,a5,a4
	c.addi	sp,00000010
	c.jr	ra

;; hal_wifi_start_firmware_task: 23069962
;;   Called from:
;;     23000344 (in cmd_stack_wifi)
hal_wifi_start_firmware_task proc
	lui	a6,0004201A
	lui	a5,00042019
	lui	a1,000230C3
	lui	a0,00023001
	c.addi	sp,FFFFFFF0
	addi	a6,a6,+000003E4
	addi	a5,a5,-0000041C
	c.li	a4,0000001E
	c.li	a3,00000000
	addi	a2,zero,+00000600
	addi	a1,a1,+00000050
	addi	a0,a0,+00000354
	c.swsp	ra,00000084
	jal	ra,0000000023062604
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; PtTable_Update_Entry: 2306999A
;;   Called from:
;;     230676A8 (in hal_boot2_update_ptable)
PtTable_Update_Entry proc
	c.li	a0,00000005
	c.beqz	a3,0000000023069A80

l2306999E:
	c.beqz	a2,0000000023069A80

l230699A0:
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.li	a5,00000002
	addi	s2,a2,+00000010
	c.li	a0,00000001
	beq	a1,a5,0000000023069A6C

l230699BA:
	c.lui	s4,0000E000
	c.beqz	a1,00000000230699C0

l230699BE:
	c.lui	s4,0000F000

l230699C0:
	lhu	a4,a2,+00000006
	c.mv	s3,a3
	c.mv	s0,a2
	c.mv	a5,s2
	c.li	s1,00000000

l230699CC:
	bgeu	s1,a4,00000000230699EC

l230699D0:
	c.mv	a0,a5
	lbu	a2,a0,+00000000
	lbu	a3,s3,+00000000
	addi	a5,a5,+00000024
	bne	a2,a3,0000000023069A7C

l230699E2:
	addi	a2,zero,+00000024
	c.mv	a1,s3
	jal	ra,00000000230A382C

l230699EC:
	lhu	a5,s0,+00000006
	bne	a5,s1,0000000023069A1A

l230699F4:
	c.li	a5,0000000F
	c.li	a0,00000003
	bltu	a5,s1,0000000023069A6C

l230699FC:
	addi	a0,zero,+00000024
	add	a0,s1,a0
	addi	a2,zero,+00000024
	c.mv	a1,s3
	c.add	a0,s2
	jal	ra,00000000230A382C
	lhu	a5,s0,+00000006
	c.addi	a5,00000001
	sh	a5,s0,+00000006

l23069A1A:
	c.lw	s0,8(a5)
	c.li	a1,0000000C
	c.mv	a0,s0
	c.addi	a5,00000001
	c.sw	s0,8(a5)
	auipc	ra,0001EFA3
	jalr	ra,ra,-00000046
	lhu	s1,s0,+00000006
	addi	a5,zero,+00000024
	c.sw	s0,12(a0)
	add	s1,s1,a5
	c.mv	a0,s2
	c.mv	a1,s1
	auipc	ra,0001EFA3
	jalr	ra,ra,-00000060
	c.add	s2,s1
	sw	a0,s2,+00000000
	addi	a1,s1,+00000014
	c.mv	a0,s4
	c.jal	0000000023069C64
	andi	a0,a0,+000000FF
	c.bnez	a0,0000000023069A6A

l23069A5A:
	addi	a2,zero,+00000254
	c.mv	a1,s0
	c.mv	a0,s4
	c.jal	0000000023069C94
	andi	a0,a0,+000000FF
	c.beqz	a0,0000000023069A6C

l23069A6A:
	c.li	a0,00000007

l23069A6C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23069A7C:
	c.addi	s1,00000001
	c.j	00000000230699CC

l23069A80:
	c.jr	ra

;; PtTable_Get_Active_Entries: 23069A82
;;   Called from:
;;     23067A0A (in hal_boot2_get_active_entries)
PtTable_Get_Active_Entries proc
	c.beqz	a0,0000000023069AD0

l23069A84:
	c.mv	a4,a0
	c.li	a0,00000005
	c.beqz	a2,0000000023069AD4

l23069A8A:
	lhu	a0,a4,+00000006
	addi	a3,a4,+00000010
	c.li	a5,00000000

l23069A94:
	bltu	a5,a0,0000000023069A9C

l23069A98:
	c.li	a0,00000002
	c.jr	ra

l23069A9C:
	addi	a3,a3,+00000024
	lbu	a6,a3,-00000024
	bne	a6,a1,0000000023069ACC

l23069AA8:
	addi	a1,zero,+00000024
	add	a5,a5,a1
	c.addi	sp,FFFFFFF0
	c.mv	a0,a2
	addi	a2,zero,+00000024
	c.swsp	ra,00000084
	c.addi	a5,00000010
	add	a1,a4,a5
	jal	ra,00000000230A382C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23069ACC:
	c.addi	a5,00000001
	c.j	0000000023069A94

l23069AD0:
	c.li	a0,00000005
	c.jr	ra

l23069AD4:
	c.jr	ra

;; int_timer_cb: 23069AD6
int_timer_cb proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000000
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,00000000230839B0
	jal	ra,00000000230629D0
	c.beqz	a0,0000000023069AF0

l23069AE8:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023062D06

l23069AF0:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; bl_timer_now_us: 23069AF6
;;   Called from:
;;     23077796 (in iperf_server_udp_recv_fn)
;;     23084F8C (in bloop_run)
;;     23084FA6 (in bloop_run)
bl_timer_now_us proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lui	a5,0000200C

l23069AFE:
	lw	a1,a5,-00000004
	lw	a0,a5,-00000008
	lw	a4,a5,-00000004
	bne	a1,a4,0000000023069AFE

l23069B0E:
	c.li	a2,0000000A
	c.li	a3,00000000
	jal	ra,000000002309FC70
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; bl_timer_tick_enable: 23069B1C
;;   Called from:
;;     23066310 (in cmd_timer_start)
bl_timer_tick_enable proc
	c.addi16sp	FFFFFFD0
	lui	a1,000230C3
	c.li	a2,00000018
	addi	a1,a1,+00000054
	c.addi4spn	a0,00000008
	c.swsp	ra,00000094
	jal	ra,00000000230A382C
	c.li	a2,00000001
	c.li	a1,00000003
	c.li	a0,00000001
	jal	ra,0000000023083ABE
	lbu	a0,sp,+00000008
	jal	ra,0000000023083AA2
	c.addi4spn	a0,00000008
	jal	ra,00000000230839CA
	lbu	a0,sp,+00000008
	c.li	a1,00000000
	jal	ra,00000000230839B0
	lbu	a0,sp,+00000008
	c.li	a1,00000001
	jal	ra,00000000230839B0
	lbu	a0,sp,+00000008
	c.li	a1,00000002
	jal	ra,00000000230839B0
	lbu	a0,sp,+00000008
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023083ABE
	lbu	a0,sp,+00000008
	c.li	a2,00000001
	c.li	a1,00000001
	jal	ra,0000000023083ABE
	lbu	a0,sp,+00000008
	c.li	a2,00000001
	c.li	a1,00000002
	jal	ra,0000000023083ABE
	lbu	a0,sp,+00000008
	jal	ra,0000000023083A8A
	addi	a0,zero,+00000035
	jal	ra,00000000230655A8
	lui	a1,0002306A
	addi	a0,zero,+00000035
	addi	a1,a1,-0000052A
	jal	ra,0000000023065722
	c.lwsp	a2,00000130
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; bl_gpio_enable_output: 23069BB2
;;   Called from:
;;     2306611C (in cmd_gpio_func)
;;     2306A4BA (in loopset_led_trigger)
bl_gpio_enable_output proc
	c.addi	sp,FFFFFFE0
	addi	a5,zero,+00000100
	sh	a5,sp,+0000000C
	c.li	a5,0000000B
	sb	a5,sp,+00000009
	c.li	a5,00000001
	c.swsp	ra,0000008C
	sb	a0,sp,+00000008
	sb	a5,sp,+0000000A
	c.bnez	a1,0000000023069BF0

l23069BD0:
	c.li	a5,00000002
	sb	a5,sp,+0000000B

l23069BD6:
	c.beqz	a2,0000000023069BDE

l23069BD8:
	c.li	a5,00000001
	sb	a5,sp,+0000000B

l23069BDE:
	c.addi4spn	a0,00000008
	auipc	ra,0001EFA3
	jalr	ra,ra,-00000608
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23069BF0:
	sb	zero,sp,+0000000B
	c.j	0000000023069BD6

;; bl_gpio_enable_input: 23069BF6
;;   Called from:
;;     230660E6 (in cmd_gpio_func)
bl_gpio_enable_input proc
	c.addi	sp,FFFFFFE0
	addi	a5,zero,+00000100
	sh	a5,sp,+0000000C
	c.li	a5,0000000B
	c.swsp	ra,0000008C
	sb	a0,sp,+00000008
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	c.bnez	a1,0000000023069C32

l23069C12:
	c.li	a5,00000002
	sb	a5,sp,+0000000B

l23069C18:
	c.beqz	a2,0000000023069C20

l23069C1A:
	c.li	a5,00000001
	sb	a5,sp,+0000000B

l23069C20:
	c.addi4spn	a0,00000008
	auipc	ra,0001EFA3
	jalr	ra,ra,-0000064A
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23069C32:
	sb	zero,sp,+0000000B
	c.j	0000000023069C18

;; bl_gpio_output_set: 23069C38
;;   Called from:
;;     23065F34 (in cmd_gpio_set)
;;     2306A1CA (in _cb_led_trigger)
bl_gpio_output_set proc
	c.addi	sp,FFFFFFF0
	sltu	a1,zero,a1
	c.swsp	ra,00000084
	jal	ra,00000000230838C0
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_gpio_input_get: 23069C4C
;;   Called from:
;;     23065D7A (in cmd_gpio_get)
bl_gpio_input_get proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,00000000230838EA
	c.lwsp	a2,00000064
	sb	a0,a1,+00000000
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; bl_flash_erase: 23069C64
;;   Called from:
;;     23069A52 (in PtTable_Update_Entry)
;;     23084BA0 (in bl_mtd_erase)
;;     23084BB4 (in bl_mtd_erase_all)
bl_flash_erase proc
	lui	a5,0004200F
	addi	a5,a5,+00000200
	lbu	a4,a5,+00000011
	c.beqz	a4,0000000023069C90

l23069C72:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lui	a4,00021011
	lw	a4,a4,-00000550
	c.mv	a2,a1
	c.mv	a1,a0
	addi	a0,a5,+00000004
	c.jalr	a4
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23069C90:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; bl_flash_write: 23069C94
;;   Called from:
;;     23069A62 (in PtTable_Update_Entry)
;;     23084C4A (in bl_mtd_write)
;;     23084C5E (in bl_mtd_write)
bl_flash_write proc
	lui	a5,0004200F
	addi	a5,a5,+00000200
	lbu	a4,a5,+00000011
	c.beqz	a4,0000000023069CC2

l23069CA2:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lui	a4,00021011
	lw	a4,a4,-00000554
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,a0
	addi	a0,a5,+00000004
	c.jalr	a4
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23069CC2:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; bl_flash_read: 23069CC6
;;   Called from:
;;     23084C6E (in bl_mtd_read)
bl_flash_read proc
	lui	a5,0004200F
	addi	a5,a5,+00000200
	lbu	a4,a5,+00000011
	c.beqz	a4,0000000023069CF4

l23069CD4:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lui	a4,00021011
	lw	a4,a4,-00000558
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,a0
	addi	a0,a5,+00000004
	c.jalr	a4
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23069CF4:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; bl_flash_config_update: 23069CF8
;;   Called from:
;;     23067A9C (in hal_boot2_init)
bl_flash_config_update proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	lui	s3,00042026
	lbu	a4,s3,+000006B4
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.li	a5,00000002
	bltu	a5,a4,0000000023069D22

l23069D16:
	lui	s4,00042026
	lbu	a4,s4,+000007A3
	bgeu	a5,a4,0000000023069D36

l23069D22:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23069D36:
	lui	s2,0004200F
	lw	a5,s2,+00000560
	beq	a5,zero,0000000023069EDC

l23069D42:
	jal	ra,00000000230629C6

l23069D46:
	lui	s5,0004200F
	lw	a6,s5,+00000200
	c.mv	a1,a0
	lui	a5,0004204A
	lui	s1,000230C3
	lui	s0,000230BD
	lui	a0,000230C3
	addi	a5,a5,-000003E8
	addi	a4,zero,+00000060
	addi	a3,s1,+0000006C
	addi	a2,s0,+0000032C
	addi	a0,a0,+00000078
	jal	ra,000000002307A208
	lbu	a4,s3,+000006B4
	c.li	a5,00000002
	addi	s5,s5,+00000200
	bltu	a5,a4,0000000023069D22

l23069D86:
	lbu	a4,s4,+000007A3
	bltu	a5,a4,0000000023069D22

l23069D8E:
	lw	a5,s2,+00000560
	beq	a5,zero,0000000023069EE2

l23069D96:
	jal	ra,00000000230629C6

l23069D9A:
	lbu	a5,s5,+00000011
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+00000061
	addi	a3,s1,+0000006C
	addi	a2,s0,+0000032C
	addi	a0,a0,+000000C4
	jal	ra,000000002307A208
	lbu	a4,s3,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023069D22

l23069DC2:
	lbu	a4,s4,+000007A3
	bltu	a5,a4,0000000023069D22

l23069DCA:
	lw	a5,s2,+00000560
	beq	a5,zero,0000000023069EE8

l23069DD2:
	jal	ra,00000000230629C6

l23069DD6:
	lbu	a5,s5,+00000006
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+00000062
	addi	a3,s1,+0000006C
	addi	a2,s0,+0000032C
	addi	a0,a0,+000000E4
	jal	ra,000000002307A208
	lbu	a4,s3,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023069D22

l23069DFE:
	lbu	a4,s4,+000007A3
	bltu	a5,a4,0000000023069D22

l23069E06:
	lw	a5,s2,+00000560
	beq	a5,zero,0000000023069EEE

l23069E0E:
	jal	ra,00000000230629C6

l23069E12:
	lbu	a5,s5,+00000007
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+00000063
	addi	a3,s1,+0000006C
	addi	a2,s0,+0000032C
	addi	a0,a0,+00000108
	jal	ra,000000002307A208
	lbu	a4,s3,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023069D22

l23069E3A:
	lbu	a4,s4,+000007A3
	bltu	a5,a4,0000000023069D22

l23069E42:
	lw	a5,s2,+00000560
	c.beqz	a5,0000000023069EF4

l23069E48:
	jal	ra,00000000230629C6

l23069E4C:
	lbu	a5,s5,+00000010
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+00000064
	addi	a3,s1,+0000006C
	addi	a2,s0,+0000032C
	addi	a0,a0,+00000130
	jal	ra,000000002307A208
	lbu	a4,s3,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023069D22

l23069E74:
	lbu	a4,s4,+000007A3
	bltu	a5,a4,0000000023069D22

l23069E7C:
	lw	a5,s2,+00000560
	c.beqz	a5,0000000023069EFA

l23069E82:
	jal	ra,00000000230629C6

l23069E86:
	lhu	a5,s5,+00000012
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+00000065
	addi	a3,s1,+0000006C
	addi	a2,s0,+0000032C
	addi	a0,a0,+0000015C
	jal	ra,000000002307A208
	lbu	a4,s3,+000006B4
	c.li	a5,00000002
	bltu	a5,a4,0000000023069D22

l23069EAE:
	lbu	a4,s4,+000007A3
	bltu	a5,a4,0000000023069D22

l23069EB6:
	lw	a5,s2,+00000560
	c.beqz	a5,0000000023069F00

l23069EBC:
	jal	ra,00000000230629C6

l23069EC0:
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+00000066
	addi	a3,s1,+0000006C
	addi	a2,s0,+0000032C
	addi	a0,a0,+00000184
	jal	ra,000000002307A208
	c.j	0000000023069D22

l23069EDC:
	jal	ra,00000000230629A4
	c.j	0000000023069D46

l23069EE2:
	jal	ra,00000000230629A4
	c.j	0000000023069D9A

l23069EE8:
	jal	ra,00000000230629A4
	c.j	0000000023069DD6

l23069EEE:
	jal	ra,00000000230629A4
	c.j	0000000023069E12

l23069EF4:
	jal	ra,00000000230629A4
	c.j	0000000023069E4C

l23069EFA:
	jal	ra,00000000230629A4
	c.j	0000000023069E86

l23069F00:
	jal	ra,00000000230629A4
	c.j	0000000023069EC0

;; bl_flash_get_flashCfg: 23069F06
;;   Called from:
;;     23085B8A (in bl_hbn_enter)
bl_flash_get_flashCfg proc
	lui	a0,0004200F
	addi	a0,a0,+00000204
	c.jr	ra

;; bl_wdt_feed: 23069F10
;;   Called from:
;;     23066318 (in cmd_wdt_feed)
bl_wdt_feed proc
	jal	zero,0000000023083B7A

;; bl_wdt_disable: 23069F14
;;   Called from:
;;     23066314 (in cmd_wdt_disable)
bl_wdt_disable proc
	jal	zero,0000000023083BEA

;; bl_wdt_init: 23069F18
;;   Called from:
;;     230663B4 (in cmd_wdt_init)
bl_wdt_init proc
	c.lui	a5,00001000
	c.addi	a5,FFFFFFFE
	blt	a5,a0,0000000023069F5A

l23069F20:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023083BEA
	c.li	a1,00000001
	c.li	a0,00000001
	jal	ra,0000000023083B24
	slli	a0,s0,00000004
	c.slli	a0,10
	c.srli	a0,00000010
	jal	ra,0000000023083B4A
	jal	ra,0000000023083B7A
	c.li	a0,00000000
	c.li	a1,00000001
	jal	ra,0000000023083C20
	jal	ra,0000000023083BB2
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23069F5A:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; proc_entry_looprt: 23069F5E
proc_entry_looprt proc
	lui	a0,0004201A
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000444
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	s0,000230C3
	jal	ra,0000000023084ECE

l23069F74:
	addi	a0,s0,+000001FC
	jal	ra,000000002308234C
	addi	a0,zero,+000003E8
	jal	ra,0000000023062CC4
	c.j	0000000023069F74

;; looprt_evt_notify_async: 23069F86
;;   Called from:
;;     2306A150 (in cmd_looprt_test_evt)
;;     2306A16C (in cmd_looprt_test_evt_dump)
;;     2306A4EC (in loopset_led_trigger)
looprt_evt_notify_async proc
	c.mv	a2,a1
	c.mv	a1,a0
	lui	a0,0004201A
	addi	a0,a0,+00000444
	jal	zero,0000000023084DFC

;; looprt_evt_status_dump: 23069F96
;;   Called from:
;;     2306A02A (in looprt_start)
;;     2306A084 (in looprt_start_auto)
;;     2306A134 (in cmd_looprt_test_status)
looprt_evt_status_dump proc
	lui	a0,0004201A
	addi	a0,a0,+00000444
	jal	zero,000000002308515A

;; looprt_evt_schedule: 23069FA2
;;   Called from:
;;     2306A18E (in cmd_looprt_test_schedule_evt1)
;;     2306A1B0 (in cmd_looprt_test_schedule_evt2)
looprt_evt_schedule proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a0
	addi	a0,zero,+00000024
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s3,a1
	c.mv	s1,a2
	jal	ra,000000002306488A
	c.beqz	a0,0000000023069FF0

l23069FBE:
	c.li	a1,00000001
	c.mv	s0,a0
	jal	ra,0000000023084CF8
	c.mv	a1,s1
	c.mv	a0,s0
	c.mv	a5,s3
	c.mv	a4,s2
	c.li	a3,00000000
	c.li	a2,00000000
	jal	ra,0000000023084D26
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,0004201A
	addi	a0,a0,+00000444
	c.addi16sp	00000020
	jal	zero,0000000023084D8E

l23069FF0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; looprt_start: 23069FFE
;;   Called from:
;;     23000A50 (in aos_loop_proc)
looprt_start proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004201A
	c.swsp	a0,00000084
	addi	a0,s0,+00000444
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	a2,00000004
	c.mv	s1,a1
	jal	ra,0000000023084C7A
	lui	a1,0004200E
	c.li	a2,0000001F
	addi	a1,a1,+00000108
	addi	a0,s0,+00000444
	jal	ra,0000000023084CDA
	jal	ra,0000000023069F96
	c.lwsp	s0,00000008
	c.lwsp	a2,000000E4
	lui	a1,000230C3
	lui	a0,0002306A
	c.mv	a2,s1
	c.li	a4,0000001A
	c.li	a3,00000000
	addi	a1,a1,+000001F0
	addi	a0,a0,-000000A2
	jal	ra,0000000023062604
	addi	a0,s0,+00000444
	jal	ra,0000000023084DE0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; looprt_start_auto: 2306A060
;;   Called from:
;;     2306A11C (in cmd_looprt_test)
looprt_start_auto proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201A
	addi	a0,s0,+00000444
	c.swsp	ra,00000084
	jal	ra,0000000023084C7A
	lui	a1,0004200E
	c.li	a2,0000001F
	addi	a1,a1,+00000108
	addi	a0,s0,+00000444
	jal	ra,0000000023084CDA
	jal	ra,0000000023069F96
	lui	a1,000230C3
	lui	a0,0002306A
	c.li	a5,00000000
	c.li	a4,0000001A
	c.li	a3,00000000
	c.lui	a2,00001000
	addi	a1,a1,+000001F0
	addi	a0,a0,-000000A2
	jal	ra,00000000230626A4
	addi	a0,s0,+00000444
	jal	ra,0000000023084DE0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; looprt_handler_register: 2306A0B6
;;   Called from:
;;     2306A41C (in loopset_led_hook_on_looprt)
looprt_handler_register proc
	lui	a5,0004201A
	lw	a4,a5,+00000444
	c.mv	a2,a1
	c.beqz	a4,000000002306A0CC

l2306A0C2:
	c.mv	a1,a0
	addi	a0,a5,+00000444
	jal	zero,0000000023084CDA

l2306A0CC:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; looprt_timer_register: 2306A0D0
;;   Called from:
;;     2306A3B0 (in _led_bloop_evt)
looprt_timer_register proc
	c.mv	a1,a0
	lui	a0,0004201A
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000444
	c.swsp	ra,00000084
	jal	ra,0000000023084D8E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; cmd_looprt_test: 2306A0EA
cmd_looprt_test proc
	lui	a0,000230C3
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000220
	c.swsp	ra,00000084
	jal	ra,000000002308234C
	lui	a0,000230C3
	addi	a1,zero,+000004A0
	addi	a0,a0,+0000023C
	jal	ra,0000000023082388
	lui	a0,000230C3
	c.li	a1,00000018
	addi	a0,a0,+0000025C
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002306A060

;; cmd_looprt_test_status: 2306A120
cmd_looprt_test_status proc
	lui	a0,000230C3
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000300
	c.swsp	ra,00000084
	jal	ra,000000002308234C
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023069F96

;; cmd_looprt_test_evt: 2306A138
cmd_looprt_test_evt proc
	lui	a0,000230C3
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000270
	c.swsp	ra,00000084
	jal	ra,000000002308234C
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.li	a0,0000001F
	c.addi	sp,00000010
	jal	zero,0000000023069F86

;; cmd_looprt_test_evt_dump: 2306A154
cmd_looprt_test_evt_dump proc
	lui	a0,000230C3
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+0000028C
	c.swsp	ra,00000084
	jal	ra,000000002308234C
	c.lwsp	a2,00000020
	c.li	a1,00000001
	c.li	a0,0000001F
	c.addi	sp,00000010
	jal	zero,0000000023069F86

;; cmd_looprt_test_schedule_evt1: 2306A170
cmd_looprt_test_schedule_evt1 proc
	lui	a0,000230C3
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000002B0
	c.swsp	ra,00000084
	jal	ra,000000002308234C
	c.lwsp	a2,00000020
	c.lui	a2,00005000
	addi	a2,a2,-000001E0
	c.li	a1,00000001
	c.li	a0,0000001F
	c.addi	sp,00000010
	jal	zero,0000000023069FA2

;; cmd_looprt_test_schedule_evt2: 2306A192
cmd_looprt_test_schedule_evt2 proc
	lui	a0,000230C3
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000002D8
	c.swsp	ra,00000084
	jal	ra,000000002308234C
	c.lwsp	a2,00000020
	c.lui	a2,00002000
	addi	a2,a2,+00000710
	c.li	a1,00000001
	c.li	a0,0000001F
	c.addi	sp,00000010
	jal	zero,0000000023069FA2

;; looprt_test_cli_init: 2306A1B4
;;   Called from:
;;     23000B28 (in aos_loop_proc)
looprt_test_cli_init proc
	c.li	a0,00000000
	c.jr	ra

;; _cb_led_trigger: 2306A1B8
_cb_led_trigger proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a2,56(a1)
	lbu	a0,a2,+00000030
	c.mv	s0,a2
	sltu	a1,zero,a1
	jal	ra,0000000023069C38
	lui	a5,00042026
	lbu	a4,a5,+000007A4
	c.li	a5,00000001
	bltu	a5,a4,000000002306A226

l2306A1DC:
	lui	a4,00042026
	lbu	a4,a4,+000007A5
	bltu	a5,a4,000000002306A226

l2306A1E8:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,000000002306A236

l2306A1F2:
	jal	ra,00000000230629C6

l2306A1F6:
	c.lw	s0,56(a4)
	c.lw	s0,48(a5)
	c.bnez	a4,000000002306A23C

l2306A1FC:
	lui	a6,000230C2
	addi	a6,a6,+000001A8

l2306A204:
	lui	a3,000230C3
	lui	a2,000230C2
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+00000095
	addi	a3,a3,+000003F4
	addi	a2,a2,-00000768
	addi	a0,a0,+00000404
	jal	ra,000000002307A208

l2306A226:
	c.lw	s0,56(a5)
	c.lwsp	a2,00000020
	sltiu	a5,a5,+00000001
	c.sw	s0,56(a5)
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2306A236:
	jal	ra,00000000230629A4
	c.j	000000002306A1F6

l2306A23C:
	lui	a6,000230C2
	addi	a6,a6,+000001A4
	c.j	000000002306A204

;; _led_bloop_msg: 2306A246
_led_bloop_msg proc
	lui	a5,00042026
	lbu	a4,a5,+000007A4
	c.li	a5,00000001
	bltu	a5,a4,000000002306A2C2

l2306A254:
	lui	a4,00042026
	lbu	a4,a4,+000007A5
	bltu	a5,a4,000000002306A2C2

l2306A260:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a2
	c.beqz	a5,000000002306A2BC

l2306A272:
	jal	ra,00000000230629C6

l2306A276:
	c.lw	s0,12(a5)
	c.mv	a1,a0
	lui	a3,000230C3
	c.swsp	a5,00000004
	c.lw	s0,8(a5)
	lui	a2,000230C2
	lui	a0,000230C3
	c.swsp	a5,00000080
	lbu	a5,s0,+00000007
	addi	a0,a0,+000004C0
	addi	a4,zero,+00000078
	c.swsp	a5,00000000
	lbu	a7,s0,+00000006
	lbu	a6,s0,+00000005
	lbu	a5,s0,+00000004
	addi	a3,a3,+000003F4
	addi	a2,a2,-00000768
	jal	ra,000000002307A208
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2306A2BC:
	jal	ra,00000000230629A4
	c.j	000000002306A276

l2306A2C2:
	c.li	a0,00000000
	c.jr	ra

;; _led_bloop_evt: 2306A2C6
_led_bloop_evt proc
	c.addi16sp	FFFFFFD0
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s7,00000084
	c.lw	a3,0(s1)
	lui	s4,000230C3
	lui	s5,000230C3
	lui	s6,000230C2
	c.mv	s9,a1
	c.mv	s8,a3
	addi	s4,s4,+00000438
	addi	s5,s5,+00000444
	addi	s6,s6,+000001A4

l2306A2FC:
	andi	a5,s1,+00000001
	c.beqz	a5,000000002306A326

l2306A302:
	c.andi	s1,FFFFFFFE

l2306A304:
	c.bnez	s1,000000002306A2FC

l2306A306:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	sw	zero,s8,+00000000
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l2306A326:
	andi	a5,s1,+00000002
	c.beqz	a5,000000002306A3E2

l2306A32C:
	lw	s2,s9,+0000000C
	c.li	s3,00000000
	lw	s0,s2,+0000000C
	c.beqz	s0,000000002306A33C

l2306A338:
	lw	s3,s0,+00000004

l2306A33C:
	lui	s7,000230C2
	addi	s7,s7,+000001A8

l2306A344:
	addi	a5,s2,+00000008
	bne	s0,a5,000000002306A350

l2306A34C:
	c.andi	s1,FFFFFFFD
	c.j	000000002306A304

l2306A350:
	lui	a5,00042026
	lbu	a4,a5,+000007A4
	c.li	a5,00000002
	bltu	a5,a4,000000002306A3AC

l2306A35E:
	lui	a4,00042026
	lbu	a4,a4,+000007A5
	bltu	a5,a4,000000002306A3AC

l2306A36A:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,000000002306A3DC

l2306A374:
	jal	ra,00000000230629C6

l2306A378:
	c.lw	s0,52(a4)
	c.lw	s0,48(a5)
	c.mv	a6,s6
	c.bnez	a4,000000002306A382

l2306A380:
	c.mv	a6,s7

l2306A382:
	c.lw	s0,44(a4)
	c.mv	a7,s4
	c.bnez	a4,000000002306A38A

l2306A388:
	c.mv	a7,s5

l2306A38A:
	lui	a3,000230C3
	lui	a2,000230BD
	c.mv	a1,a0
	lui	a0,000230C3
	addi	a4,zero,+0000004B
	addi	a3,a3,+000003F4
	addi	a2,a2,+0000032C
	addi	a0,a0,+0000044C
	jal	ra,000000002307A208

l2306A3AC:
	addi	a0,s0,+00000008
	jal	ra,000000002306A0D0
	c.lw	s0,4(a5)
	c.lw	s0,0(a4)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	lw	a5,s2,+00000004
	sw	s2,s0,+00000000
	c.sw	s0,4(a5)
	sw	s0,s2,+00000004
	c.sw	a5,0(s0)
	c.li	a5,00000000
	beq	s3,zero,000000002306A3D6

l2306A3D2:
	lw	a5,s3,+00000004

l2306A3D6:
	c.mv	s0,s3
	c.mv	s3,a5
	c.j	000000002306A344

l2306A3DC:
	jal	ra,00000000230629A4
	c.j	000000002306A378

l2306A3E2:
	c.beqz	s1,000000002306A306

l2306A3E4:
	lui	a1,000230C3
	lui	a0,000230C3
	addi	a2,zero,+0000005E
	addi	a1,a1,+000003F4
	addi	a0,a0,+00000498
	jal	ra,0000000023082388

l2306A3FC:
	c.j	000000002306A3FC

;; loopset_led_hook_on_looprt: 2306A3FE
;;   Called from:
;;     23000A54 (in aos_loop_proc)
loopset_led_hook_on_looprt proc
	lui	a5,0004201B
	addi	a5,a5,-0000071C
	addi	a4,a5,+00000008
	lui	a0,000230C3
	c.sw	a5,4(a5)
	c.sw	a5,0(a5)
	c.sw	a5,12(a4)
	c.sw	a5,8(a4)
	c.li	a1,00000001
	addi	a0,a0,+000004B0
	jal	zero,000000002306A0B6

;; loopset_led_trigger: 2306A420
;;   Called from:
;;     23067218 (in hal_gpio_init_from_dts)
loopset_led_trigger proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a0
	addi	a0,zero,+0000003C
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s3,a1
	jal	ra,000000002306488A
	c.bnez	a0,000000002306A47A

l2306A43A:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,000000002306A474

l2306A444:
	jal	ra,00000000230629C6

l2306A448:
	lui	a3,000230C3
	lui	a2,000230B2
	c.mv	a1,a0
	lui	a0,000230B2
	addi	a5,a3,+000003F4
	addi	a6,zero,+0000009E
	addi	a4,zero,+0000009E
	addi	a3,a3,+000003F4
	addi	a2,a2,-00000364
	addi	a0,a0,-00000354
	jal	ra,000000002307A208

l2306A472:
	c.j	000000002306A472

l2306A474:
	jal	ra,00000000230629A4
	c.j	000000002306A448

l2306A47A:
	c.mv	s0,a0
	addi	a2,zero,+0000003C
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	addi	s1,s0,+00000008
	sw	s2,s0,+00000030
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023084CF8
	c.mv	a0,s1
	jal	ra,0000000023084D5C
	lui	a2,0002306A
	c.mv	a3,s0
	c.li	a5,00000001
	c.li	a4,00000001
	c.mv	a1,s3
	c.mv	a0,s1
	addi	a2,a2,+000001B8
	jal	ra,0000000023084D26
	c.li	a1,00000000
	c.li	a2,00000000
	andi	a0,s2,+000000FF
	jal	ra,0000000023069BB2
	jal	ra,0000000023063658
	lui	a5,0004201B
	addi	a5,a5,-0000071C
	c.lw	a5,12(a4)
	addi	a3,a5,+00000008
	c.sw	s0,0(a3)
	c.sw	s0,4(a4)
	c.sw	a5,12(s0)
	c.sw	a4,0(s0)
	jal	ra,000000002306366C
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a1,00000002
	c.li	a0,00000001
	c.addi16sp	00000020
	jal	zero,0000000023069F86

;; sys_mbox_new: 2306A4F0
;;   Called from:
;;     2306BBEC (in tcpip_init)
;;     23076356 (in netconn_alloc)
;;     2307680E (in lwip_netconn_do_listen)
sys_mbox_new proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a2,00000000
	c.mv	s0,a0
	c.li	a1,00000004
	addi	a0,zero,+00000032
	c.swsp	ra,00000084
	jal	ra,000000002306128C
	lui	a4,00042026
	c.sw	s0,0(a0)
	addi	a4,a4,+000007F0
	lhu	a5,a4,+00000100
	lhu	a3,a4,+00000102
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a4,+00000100
	bgeu	a3,a5,000000002306A528

l2306A524:
	sh	a5,a4,+00000102

l2306A528:
	c.lw	s0,0(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	sltiu	a0,a0,+00000001
	sub	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; sys_mbox_free: 2306A53A
;;   Called from:
;;     230754B4 (in netconn_new_with_proto_and_callback)
;;     2307636A (in netconn_alloc)
;;     23076414 (in netconn_drain)
;;     23076490 (in netconn_drain)
;;     23076568 (in accept_function)
;;     230767EC (in lwip_netconn_do_listen)
sys_mbox_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.lw	a0,0(a0)
	lui	s0,00042026
	addi	s0,s0,+000007F0
	jal	ra,00000000230619A8
	c.beqz	a0,000000002306A560

l2306A554:
	c.nop
	lhu	a5,s0,+00000104
	c.addi	a5,00000001
	sh	a5,s0,+00000104

l2306A560:
	c.lw	s1,0(a0)
	jal	ra,00000000230619CC
	lhu	a5,s0,+00000100
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	a5,FFFFFFFF
	sh	a5,s0,+00000100
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; sys_mbox_post: 2306A57A
;;   Called from:
;;     2306BAAE (in tcpip_callback)
;;     2306BB46 (in tcpip_send_msg_wait_sem)
;;     2306BB9C (in tcpip_api_call)
sys_mbox_post proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.swsp	a1,00000084
	c.li	s0,00000001

l2306A588:
	c.lw	s1,0(a0)
	c.li	a3,00000000
	c.li	a2,FFFFFFFF
	c.addi4spn	a1,0000000C
	jal	ra,0000000023061344
	bne	a0,s0,000000002306A588

l2306A598:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; sys_mbox_trypost: 2306A5A2
;;   Called from:
;;     2306BA42 (in tcpip_inpkt)
;;     2306BAFA (in tcpip_try_callback)
;;     23075AC6 (in recv_udp)
;;     23075C5C (in err_tcp)
;;     23075C70 (in err_tcp)
;;     23076118 (in recv_raw)
;;     230761F6 (in recv_tcp)
;;     230764DA (in accept_function)
;;     23076506 (in accept_function)
;;     23076528 (in accept_function)
sys_mbox_trypost proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.lw	a0,0(a0)
	c.swsp	a1,00000084
	c.li	a3,00000000
	c.li	a2,00000000
	c.addi4spn	a1,0000000C
	jal	ra,0000000023061344
	c.li	a5,00000001
	beq	a0,a5,000000002306A5D4

l2306A5BA:
	lui	a5,00042026
	addi	a5,a5,+000007F0
	lhu	a4,a5,+00000104
	c.li	a0,FFFFFFFF
	c.addi	a4,00000001
	sh	a4,a5,+00000104

l2306A5CE:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2306A5D4:
	c.li	a0,00000000
	c.j	000000002306A5CE

;; sys_arch_mbox_fetch: 2306A5D8
;;   Called from:
;;     2306B976 (in tcpip_thread)
;;     2306B99C (in tcpip_thread)
;;     230757BE (in netconn_accept)
;;     23075892 (in netconn_recv_data)
sys_arch_mbox_fetch proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	a2,00000084
	c.swsp	ra,0000009C
	c.swsp	s3,00000094
	c.mv	s2,a0
	c.mv	s1,a1
	jal	ra,00000000230629A4
	c.mv	s0,a0
	c.lwsp	a2,00000084
	c.bnez	s1,000000002306A5F6

l2306A5F4:
	c.addi4spn	s1,0000001C

l2306A5F6:
	c.li	s3,00000001
	c.beqz	a2,000000002306A626

l2306A5FA:
	lw	a0,s2,+00000000
	c.mv	a1,s1
	jal	ra,0000000023061684
	c.li	a5,00000001
	bne	a0,a5,000000002306A612

l2306A60A:
	jal	ra,00000000230629A4
	c.sub	a0,s0
	c.j	000000002306A618

l2306A612:
	sw	zero,s1,+00000000
	c.li	a0,FFFFFFFF

l2306A618:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l2306A626:
	lw	a0,s2,+00000000
	c.li	a2,FFFFFFFF
	c.mv	a1,s1
	jal	ra,0000000023061684
	bne	a0,s3,000000002306A626

l2306A636:
	c.j	000000002306A60A

;; sys_arch_mbox_tryfetch: 2306A638
;;   Called from:
;;     23075798 (in netconn_accept)
;;     23075844 (in netconn_recv_data)
;;     2307640A (in netconn_drain)
;;     23076486 (in netconn_drain)
sys_arch_mbox_tryfetch proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.bnez	a1,000000002306A640

l2306A63E:
	c.addi4spn	a1,0000000C

l2306A640:
	c.lw	a0,0(a0)
	c.li	a2,00000000
	jal	ra,0000000023061684
	c.lwsp	t3,00000020
	c.addi	a0,FFFFFFFF
	sltu	a0,zero,a0
	sub	a0,zero,a0
	c.addi16sp	00000020
	c.jr	ra

;; sys_mbox_valid: 2306A658
;;   Called from:
;;     2306BA02 (in tcpip_inpkt)
;;     2306BA90 (in tcpip_callback)
;;     2306BAD8 (in tcpip_try_callback)
;;     2306BB32 (in tcpip_send_msg_wait_sem)
;;     2306BB86 (in tcpip_api_call)
;;     23075496 (in netconn_new_with_proto_and_callback)
;;     2307549E (in netconn_new_with_proto_and_callback)
;;     2307577C (in netconn_accept)
;;     23075818 (in netconn_recv_data)
;;     230758E8 (in netconn_recv_data_tcp)
;;     23075A94 (in recv_udp)
;;     23075C52 (in err_tcp)
;;     23075C66 (in err_tcp)
;;     230760BC (in recv_raw)
;;     230761BE (in recv_tcp)
;;     230763BC (in netconn_free)
;;     230763C4 (in netconn_free)
;;     230763FC (in netconn_drain)
;;     23076422 (in netconn_drain)
;;     230764C6 (in accept_function)
;;     230767E2 (in lwip_netconn_do_listen)
;;     23076800 (in lwip_netconn_do_listen)
sys_mbox_valid proc
	c.lw	a0,0(a0)
	sltu	a0,zero,a0
	c.jr	ra

;; sys_mbox_set_invalid: 2306A660
;;   Called from:
;;     23076382 (in netconn_alloc)
;;     2307641A (in netconn_drain)
;;     23076496 (in netconn_drain)
;;     2307656E (in accept_function)
;;     230767F4 (in lwip_netconn_do_listen)
sys_mbox_set_invalid proc
	sw	zero,a0,+00000000
	c.jr	ra

;; sys_sem_new: 2306A666
;;   Called from:
;;     2306BB78 (in tcpip_api_call)
;;     23075A0E (in netconn_gethostbyname)
;;     23076362 (in netconn_alloc)
sys_sem_new proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	c.li	a2,00000003
	c.li	a1,00000000
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,000000002306128C
	c.sw	s0,0(a0)
	c.beqz	a0,000000002306A68A

l2306A680:
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344

l2306A68A:
	c.lw	s0,0(a0)
	lui	s0,00042026
	addi	s0,s0,+000007F0
	c.bnez	a0,000000002306A6AC

l2306A696:
	lhu	a5,s0,+000000F8
	c.li	a0,FFFFFFFF
	c.addi	a5,00000001
	sh	a5,s0,+000000F8

l2306A6A2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2306A6AC:
	c.bnez	s1,000000002306A6B4

l2306A6AE:
	c.li	a1,00000001
	jal	ra,00000000230617D0

l2306A6B4:
	lhu	a5,s0,+000000F4
	lhu	a4,s0,+000000F6
	c.li	a0,00000000
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+000000F4
	bgeu	a4,a5,000000002306A6A2

l2306A6CC:
	sh	a5,s0,+000000F6
	c.j	000000002306A6A2

;; sys_arch_sem_wait: 2306A6D2
;;   Called from:
;;     2306A79C (in sys_mutex_lock)
;;     2306B920 (in lwip_setsockopt)
;;     2306BB50 (in tcpip_send_msg_wait_sem)
;;     2306BBA4 (in tcpip_api_call)
sys_arch_sem_wait proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.mv	s1,a0
	jal	ra,00000000230629A4
	c.lwsp	a2,00000064
	c.mv	s0,a0
	c.li	s2,00000001
	c.beqz	a1,000000002306A710

l2306A6EC:
	c.lw	s1,0(a0)
	jal	ra,00000000230617D0
	c.li	a4,00000001
	c.li	a5,FFFFFFFF
	bne	a0,a4,000000002306A702

l2306A6FA:
	jal	ra,00000000230629A4
	sub	a5,a0,s0

l2306A702:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

l2306A710:
	c.lw	s1,0(a0)
	c.li	a1,FFFFFFFF
	jal	ra,00000000230617D0
	bne	a0,s2,000000002306A710

l2306A71C:
	c.j	000000002306A6FA

;; sys_sem_free: 2306A71E
;;   Called from:
;;     2306BBAA (in tcpip_api_call)
;;     230754AE (in netconn_new_with_proto_and_callback)
;;     23075A2E (in netconn_gethostbyname)
;;     230763CE (in netconn_free)
sys_sem_free proc
	lui	a5,00042026
	addi	a5,a5,+000007F0
	lhu	a4,a5,+000000F4
	c.addi	a4,FFFFFFFF
	sh	a4,a5,+000000F4
	c.lw	a0,0(a0)
	jal	zero,00000000230619CC

;; sys_sem_valid: 2306A736
;;   Called from:
;;     2306BB2A (in tcpip_send_msg_wait_sem)
;;     230754A8 (in netconn_new_with_proto_and_callback)
;;     23075CAC (in err_tcp)
;;     230765A6 (in lwip_netconn_do_delconn)
sys_sem_valid proc
	c.lw	a0,0(a0)
	sltu	a0,zero,a0
	c.jr	ra

;; sys_sem_set_invalid: 2306A73E
;;   Called from:
;;     230763D4 (in netconn_free)
sys_sem_set_invalid proc
	sw	zero,a0,+00000000
	c.jr	ra

;; sys_init: 2306A744
;;   Called from:
;;     2306C84E (in lwip_init)
sys_init proc
	lui	a5,0004200F
	sh	zero,a5,+000005B0
	c.jr	ra

;; sys_mutex_new: 2306A74E
;;   Called from:
;;     2306F5DE (in mem_init)
sys_mutex_new proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,000000002306151C
	lui	a5,00042026
	c.sw	s0,0(a0)
	addi	a5,a5,+000007F0
	c.bnez	a0,000000002306A77C

l2306A768:
	lhu	a4,a5,+000000FE
	c.li	a0,FFFFFFFF
	c.addi	a4,00000001
	sh	a4,a5,+000000FE

l2306A774:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2306A77C:
	lhu	a4,a5,+000000FA
	lhu	a3,a5,+000000FC
	c.li	a0,00000000
	c.addi	a4,00000001
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+000000FA
	bgeu	a3,a4,000000002306A774

l2306A794:
	sh	a4,a5,+000000FC
	c.j	000000002306A774

;; sys_mutex_lock: 2306A79A
;;   Called from:
;;     2306F658 (in mem_free)
;;     2306F7FE (in mem_trim)
;;     2306F916 (in mem_malloc)
sys_mutex_lock proc
	c.li	a1,00000000
	jal	zero,000000002306A6D2

;; sys_mutex_unlock: 2306A7A0
;;   Called from:
;;     2306A7AC (in sys_sem_signal)
;;     2306F666 (in mem_free)
;;     2306F748 (in mem_free)
;;     2306F872 (in mem_trim)
;;     2306F95C (in mem_malloc)
;;     2306F9FC (in mem_malloc)
sys_mutex_unlock proc
	c.lw	a0,0(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	zero,0000000023061344

;; sys_sem_signal: 2306A7AC
;;   Called from:
;;     2306AD64 (in lwip_setsockopt_callback)
;;     2306B268 (in event_callback)
;;     23075A4E (in lwip_netconn_do_dns_found)
;;     23075BC0 (in lwip_netconn_do_connected)
;;     23075CC4 (in err_tcp)
;;     23075D34 (in lwip_netconn_do_writemore)
;;     23075FE6 (in lwip_netconn_do_close_internal)
;;     230762CC (in lwip_netconn_do_newconn)
;;     230765B6 (in lwip_netconn_do_delconn)
;;     2307667A (in lwip_netconn_do_bind)
;;     23076732 (in lwip_netconn_do_connect)
;;     23076790 (in lwip_netconn_do_disconnect)
;;     2307684C (in lwip_netconn_do_listen)
;;     230768D2 (in lwip_netconn_do_send)
;;     2307693E (in lwip_netconn_do_recv)
;;     230769CA (in lwip_netconn_do_write)
;;     23076A38 (in lwip_netconn_do_getaddr)
;;     23076AB2 (in lwip_netconn_do_close)
;;     23076B20 (in lwip_netconn_do_join_leave_group)
;;     23076B6C (in lwip_netconn_do_gethostbyname)
sys_sem_signal proc
	jal	zero,000000002306A7A0

;; sys_thread_new: 2306A7B0
;;   Called from:
;;     2306BC0E (in tcpip_init)
sys_thread_new proc
	lui	a5,0004200F
	lhu	a6,a5,+000005B0
	c.li	a5,00000005
	bgeu	a5,a6,000000002306A7CA

l2306A7BE:
	c.li	a0,00000000
	c.jr	ra

l2306A7C2:
	c.li	a0,00000000

l2306A7C4:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2306A7CA:
	c.mv	a7,a3
	c.addi	sp,FFFFFFE0
	c.mv	a6,a1
	c.mv	a3,a2
	slli	a2,a7,00000010
	c.mv	a1,a0
	c.addi4spn	a5,0000000C
	c.srli	a2,00000010
	c.mv	a0,a6
	c.swsp	ra,0000008C
	jal	ra,00000000230626A4
	c.li	a5,00000001
	bne	a0,a5,000000002306A7C2

l2306A7EA:
	c.lwsp	a2,00000044
	c.j	000000002306A7C4

;; sys_arch_protect: 2306A7EE
;;   Called from:
;;     2306A9B0 (in alloc_socket)
;;     2306AB7A (in free_socket)
;;     2306B0E4 (in event_callback)
;;     2306B12A (in event_callback)
;;     2306B172 (in event_callback)
;;     2306B1E8 (in event_callback)
;;     2306B316 (in lwip_accept)
;;     2306F606 (in mem_free)
;;     2306F79E (in mem_trim)
;;     2306FA72 (in do_memp_malloc_pool)
;;     2306FB82 (in memp_free)
;;     23070038 (in pbuf_free_ooseq_callback)
;;     230701BE (in pbuf_free)
;;     230702F2 (in pbuf_alloc)
;;     2307031C (in pbuf_alloc)
;;     2307045C (in pbuf_ref)
;;     23075724 (in netconn_err)
;;     23075BE4 (in err_tcp)
sys_arch_protect proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023063658
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; sys_arch_unprotect: 2306A7FE
;;   Called from:
;;     2306A9C6 (in alloc_socket)
;;     2306AA02 (in alloc_socket)
;;     2306AB8C (in free_socket)
;;     2306B116 (in event_callback)
;;     2306B11A (in event_callback)
;;     2306B16E (in event_callback)
;;     2306B1E4 (in event_callback)
;;     2306B320 (in lwip_accept)
;;     2306F624 (in mem_free)
;;     2306F7B4 (in mem_trim)
;;     2306FAA2 (in do_memp_malloc_pool)
;;     2306FBA4 (in memp_free)
;;     23070044 (in pbuf_free_ooseq_callback)
;;     230701D2 (in pbuf_free)
;;     23070304 (in pbuf_alloc)
;;     23070324 (in pbuf_alloc)
;;     23070470 (in pbuf_ref)
;;     23075730 (in netconn_err)
;;     23075C04 (in err_tcp)
sys_arch_unprotect proc
	jal	zero,000000002306366C

;; sys_now: 2306A802
;;   Called from:
;;     230749BC (in lwip_cyclic_timer)
;;     230749F6 (in sys_timeout)
;;     23074B08 (in sys_check_timeouts)
;;     23074B66 (in sys_timeouts_sleeptime)
;;     23075446 (in netconn_close_shutdown)
;;     230754D8 (in netconn_prepare_delete)
;;     230756D6 (in netconn_write_vectors_partly)
;;     23075D0A (in lwip_netconn_do_writemore)
;;     23075F80 (in lwip_netconn_do_close_internal)
sys_now proc
	jal	zero,00000000230629A4

;; lwip_gethostbyname: 2306A806
;;   Called from:
;;     2305AB38 (in ota_tcp_cmd.part.0)
;;     2307DCAC (in domain_name_resolution)
lwip_gethostbyname proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a1,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s2,a0
	jal	ra,00000000230759F0
	c.beqz	a0,000000002306A834

l2306A81A:
	lui	a5,00042026
	addi	a4,zero,+000000D2
	sw	a4,a5,+000007AC
	c.li	a0,00000000

l2306A828:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2306A834:
	c.lwsp	a2,000000C4
	lui	a0,0004201B
	lui	a5,0004200F
	lui	s0,0004200F
	addi	a5,a5,+000005B8
	addi	s0,s0,+000005BC
	addi	s1,a0,-000006F8
	addi	a2,zero,+00000100
	c.mv	a1,s2
	addi	a0,a0,-000006F8
	c.sw	a5,0(a4)
	c.sw	s0,0(a5)
	sw	zero,s0,+00000004
	jal	ra,00000000230A439C
	lui	a0,0004201B
	lui	a4,0004200F
	addi	a5,a0,-0000070C
	addi	a4,a4,+000005B4
	sw	zero,a4,+00000000
	c.sw	a5,4(a4)
	c.li	a4,00000002
	c.sw	a5,8(a4)
	c.li	a4,00000004
	sb	zero,s1,+00000100
	c.sw	a5,0(s1)
	c.sw	a5,12(a4)
	c.sw	a5,16(s0)
	addi	a0,a0,-0000070C
	c.j	000000002306A828

;; netifapi_do_netif_add: 2306A890
netifapi_do_netif_add proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lw	a6,a0,+00000020
	c.lw	a0,28(a5)
	c.lw	a0,24(a4)
	c.lw	a0,20(a3)
	c.lw	a0,16(a2)
	c.lw	a0,12(a1)
	c.lw	a0,8(a0)
	jal	ra,000000002306FD1A
	c.beqz	a0,000000002306A8B2

l2306A8AA:
	c.li	a0,00000000

l2306A8AC:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2306A8B2:
	c.li	a0,FFFFFFF4
	c.j	000000002306A8AC

;; netifapi_do_netif_set_addr: 2306A8B6
netifapi_do_netif_set_addr proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,20(a3)
	c.lw	a0,16(a2)
	c.lw	a0,12(a1)
	c.lw	a0,8(a0)
	jal	ra,000000002306FCA4
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; netifapi_do_netif_common: 2306A8CE
netifapi_do_netif_common proc
	lw	t1,a0,+00000010
	c.mv	a5,a0
	c.lw	a0,8(a0)
	beq	t1,zero,000000002306A8DC

l2306A8DA:
	c.jr	t1

l2306A8DC:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a5,12(a5)
	c.jalr	a5
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; netifapi_netif_add: 2306A8EC
;;   Called from:
;;     23027ACE (in wifi_mgmr_sta_enable)
;;     23027E2C (in wifi_mgmr_ap_enable)
netifapi_netif_add proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.bnez	a1,000000002306A8FA

l2306A8F2:
	lui	a1,000230CC
	addi	a1,a1,-00000524

l2306A8FA:
	c.bnez	a2,000000002306A904

l2306A8FC:
	lui	a2,000230CC
	addi	a2,a2,-00000524

l2306A904:
	c.bnez	a3,000000002306A90E

l2306A906:
	lui	a3,000230CC
	addi	a3,a3,-00000524

l2306A90E:
	c.swsp	a0,00000088
	lui	a0,0002306B
	c.swsp	a1,0000000C
	addi	a0,a0,-00000770
	c.addi4spn	a1,0000000C
	c.swsp	a2,0000008C
	c.swsp	a3,00000010
	c.swsp	a4,00000090
	c.swsp	a5,00000014
	c.swsp	a6,00000094
	jal	ra,000000002306BB60
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

;; netifapi_netif_set_addr: 2306A930
;;   Called from:
;;     230236C4 (in bl_rx_sm_disconnect_ind)
;;     230248F0 (in stateConnectedIPNoEnter)
;;     23025146 (in stateConnectedIPYes_exit)
netifapi_netif_set_addr proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.bnez	a1,000000002306A93E

l2306A936:
	lui	a1,000230CC
	addi	a1,a1,-00000524

l2306A93E:
	c.bnez	a2,000000002306A948

l2306A940:
	lui	a2,000230CC
	addi	a2,a2,-00000524

l2306A948:
	c.bnez	a3,000000002306A952

l2306A94A:
	lui	a3,000230CC
	addi	a3,a3,-00000524

l2306A952:
	c.swsp	a0,00000088
	lui	a0,0002306B
	c.swsp	a1,0000000C
	addi	a0,a0,-0000074A
	c.addi4spn	a1,0000000C
	c.swsp	a2,0000008C
	c.swsp	a3,00000010
	jal	ra,000000002306BB60
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

;; netifapi_netif_common: 2306A96E
;;   Called from:
;;     230235CC (in bl_rx_sm_connect_ind)
;;     230235DE (in bl_rx_sm_connect_ind)
;;     230236B6 (in bl_rx_sm_disconnect_ind)
;;     230248E2 (in stateConnectedIPNoEnter)
;;     23024D4C (in stateGlobalGuard_AP)
;;     23024D5E (in stateGlobalGuard_AP)
;;     23025138 (in stateConnectedIPYes_exit)
;;     23025352 (in stateGlobalGuard_stop)
;;     23025370 (in stateGlobalGuard_stop)
;;     23028450 (in wifi_netif_dhcp_start)
netifapi_netif_common proc
	c.addi16sp	FFFFFFC0
	c.swsp	a0,00000088
	lui	a0,0002306B
	c.swsp	a1,0000000C
	addi	a0,a0,-00000732
	c.addi4spn	a1,0000000C
	c.swsp	ra,0000009C
	c.swsp	a2,0000008C
	jal	ra,000000002306BB60
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

;; alloc_socket: 2306A98C
;;   Called from:
;;     2306B2F8 (in lwip_accept)
;;     2306B89A (in lwip_socket)
alloc_socket proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004201B
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	addi	s2,s0,-000004F8
	c.swsp	ra,0000008C
	c.mv	s3,a0
	c.mv	s4,a1
	c.li	s1,00000000
	addi	s0,s0,-000004F8
	c.li	s5,00000015

l2306A9B0:
	jal	ra,000000002306A7EE
	lw	a5,s2,+00000000
	c.bnez	a5,000000002306AA00

l2306A9BA:
	slli	s5,s1,00000004
	add	s2,s0,s5
	sw	s3,s2,+00000000
	jal	ra,000000002306A7FE
	sw	zero,s2,+00000004
	sh	zero,s2,+00000008
	lbu	a5,s3,+00000000
	c.li	a4,00000010
	andi	a5,a5,+000000F0
	beq	a5,a4,000000002306A9E2

l2306A9E0:
	c.li	s4,00000001

l2306A9E2:
	c.add	s0,s5
	sh	s4,s0,+0000000A
	sh	zero,s0,+0000000C

l2306A9EC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2306AA00:
	c.addi	s1,00000001
	jal	ra,000000002306A7FE
	c.addi	s2,00000010
	bne	s1,s5,000000002306A9B0

l2306AA0C:
	c.li	s1,FFFFFFFF
	c.j	000000002306A9EC

;; lwip_recv_tcp: 2306AA10
;;   Called from:
;;     2306B5E8 (in lwip_recvfrom)
lwip_recv_tcp proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.mv	s3,a0
	c.mv	s5,a1
	c.mv	s4,a3
	c.mv	s1,a2
	bge	a2,zero,000000002306AA38

l2306AA30:
	lui	s1,00080000
	xori	s1,s1,-00000001

l2306AA38:
	andi	a5,s4,+00000008
	c.li	a2,00000008
	c.beqz	a5,000000002306AA42

l2306AA40:
	c.li	a2,0000000C

l2306AA42:
	c.li	s0,00000000
	andi	s6,s4,+00000001

l2306AA48:
	lw	a5,s3,+00000004
	c.beqz	a5,000000002306AAAA

l2306AA4E:
	c.swsp	a5,00000084

l2306AA50:
	c.lwsp	a2,00000044
	lhu	s2,a0,+00000008
	blt	s2,s1,000000002306AA62

l2306AA5A:
	slli	s2,s1,00000010
	srli	s2,s2,00000010

l2306AA62:
	c.li	a3,00000000
	c.mv	a2,s2
	add	a1,s5,s0
	add	s7,s2,s0
	jal	ra,000000002307055E
	bne	s6,zero,000000002306AB08

l2306AA76:
	c.lwsp	a2,00000044
	lhu	a5,a0,+00000008
	sub	a5,a5,s2
	bge	zero,a5,000000002306AAFE

l2306AA84:
	c.mv	a1,s2
	jal	ra,00000000230703FE
	sw	a0,s3,+00000004

l2306AA8E:
	sub	s1,s1,s2
	c.li	a2,0000001C
	c.mv	s0,s7
	blt	zero,s1,000000002306AA48

l2306AA9A:
	beq	s7,zero,000000002306AB0E

l2306AA9E:
	lw	a0,s3,+00000000
	c.mv	a1,s0
	jal	ra,00000000230755F0
	c.j	000000002306AAC2

l2306AAAA:
	lw	a0,s3,+00000000
	c.addi4spn	a1,0000000C
	jal	ra,000000002307599C
	c.mv	s2,a0
	c.beqz	a0,000000002306AAF6

l2306AAB8:
	c.beqz	s0,000000002306AADA

l2306AABA:
	andi	s4,s4,+00000001
	beq	s4,zero,000000002306AA9E

l2306AAC2:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.addi16sp	00000040
	c.jr	ra

l2306AADA:
	jal	ra,0000000023076B7A
	c.beqz	a0,000000002306AAE8

l2306AAE0:
	lui	a5,00042026
	sw	a0,a5,+000007A8

l2306AAE8:
	addi	s0,s2,+0000000F
	sltu	s0,zero,s0
	sub	s0,zero,s0
	c.j	000000002306AAC2

l2306AAF6:
	c.lwsp	a2,000000E4
	sw	a5,s3,+00000004
	c.j	000000002306AA50

l2306AAFE:
	sw	zero,s3,+00000004
	jal	ra,00000000230701A4
	c.j	000000002306AA8E

l2306AB08:
	c.mv	s0,s7
	bne	s7,zero,000000002306AAC2

l2306AB0E:
	c.li	s0,00000000
	c.j	000000002306AAC2

;; lwip_sock_make_addr.isra.3: 2306AB12
;;   Called from:
;;     2306AC38 (in lwip_recvfrom_udp_raw.isra.6)
;;     2306B60C (in lwip_recvfrom)
lwip_sock_make_addr.isra.3 proc
	c.addi16sp	FFFFFFD0
	addi	a5,zero,+00000210
	c.swsp	s0,00000014
	c.mv	s0,a0
	c.mv	a0,a1
	c.swsp	a3,00000084
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	sh	a5,sp,+00000010
	c.mv	s1,a2
	jal	ra,000000002306BC12
	c.lw	s0,0(a5)
	sh	a0,sp,+00000012
	c.li	a2,00000008
	c.li	a1,00000000
	c.addi4spn	a0,00000018
	c.swsp	a5,00000088
	jal	ra,00000000230A3A68
	c.lwsp	a2,000000A4
	lbu	a5,sp,+00000010
	c.li	s0,00000001
	c.lw	a3,0(a4)
	bltu	a4,a5,000000002306AB56

l2306AB4E:
	c.li	s0,00000000
	bgeu	a5,a4,000000002306AB56

l2306AB54:
	c.sw	a3,0(a5)

l2306AB56:
	c.lw	a3,0(a2)
	c.addi4spn	a1,00000010
	c.mv	a0,s1
	jal	ra,00000000230A382C
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; free_socket: 2306AB6C
;;   Called from:
;;     2306B35A (in lwip_accept)
;;     2306B4D0 (in lwip_close)
free_socket proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,000000002306A7EE
	c.lw	s0,4(s1)
	lw	s2,s0,+00000000
	sw	zero,s0,+00000004
	sw	zero,s0,+00000000
	jal	ra,000000002306A7FE
	c.beqz	s1,000000002306AB9C

l2306AB92:
	c.lwsp	a2,00000064
	c.mv	a0,s1
	c.beqz	a1,000000002306ABB0

l2306AB98:
	jal	ra,00000000230701A4

l2306AB9C:
	beq	s2,zero,000000002306ABB6

l2306ABA0:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,00000000230754F6

l2306ABB0:
	jal	ra,0000000023076B9E
	c.j	000000002306AB9C

l2306ABB6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; lwip_recvfrom_udp_raw.isra.6: 2306ABC2
;;   Called from:
;;     2306B64C (in lwip_recvfrom)
lwip_recvfrom_udp_raw.isra.6 proc
	c.addi16sp	FFFFFFC0
	c.swsp	s7,0000008C
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.lw	a2,8(a5)
	c.mv	s7,a0
	c.bnez	a5,000000002306ABE4

l2306ABDC:
	c.lw	a2,12(a5)
	c.li	a0,FFFFFFF0
	blt	zero,a5,000000002306AC60

l2306ABE4:
	lw	a5,s7,+00000004
	c.mv	s0,a2
	andi	a2,a1,+00000008
	sltu	a2,zero,a2
	c.swsp	a5,00000084
	c.mv	s5,a3
	c.mv	s2,a1
	c.slli	a2,02
	c.bnez	a5,000000002306AC0E

l2306ABFC:
	lw	a0,s7,+00000000
	c.addi4spn	a1,0000000C
	jal	ra,00000000230758BC
	c.bnez	a0,000000002306AC60

l2306AC08:
	c.lwsp	a2,000000E4
	sw	a5,s7,+00000004

l2306AC0E:
	c.lwsp	a2,000000E4
	c.li	s4,00000000
	c.li	s1,00000000
	c.lw	a5,0(a5)
	lhu	s6,a5,+00000008

l2306AC1A:
	c.lw	s0,12(a5)
	bge	s4,a5,000000002306AC24

l2306AC20:
	bltu	s1,s6,000000002306AC76

l2306AC24:
	c.lw	s0,0(a2)
	c.beqz	a2,000000002306AC3C

l2306AC28:
	c.lw	s0,4(a5)
	c.beqz	a5,000000002306AC3C

l2306AC2C:
	c.lwsp	a2,00000044
	addi	a3,s0,+00000004
	lhu	a1,a0,+0000000C
	c.addi	a0,00000008
	jal	ra,000000002306AB12

l2306AC3C:
	c.lw	s0,16(a5)
	sw	zero,s0,+00000018
	c.beqz	a5,000000002306AC48

l2306AC44:
	sw	zero,s0,+00000014

l2306AC48:
	andi	s2,s2,+00000001
	bne	s2,zero,000000002306AC5A

l2306AC50:
	c.lwsp	a2,00000044
	sw	zero,s7,+00000004
	jal	ra,0000000023076B9E

l2306AC5A:
	sh	s6,s5,+00000000
	c.li	a0,00000000

l2306AC60:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.addi16sp	00000040
	c.jr	ra

l2306AC76:
	c.lw	s0,8(a4)
	slli	a5,s4,00000003
	sub	s3,s6,s1
	c.add	a5,a4
	c.lw	a5,4(a4)
	c.slli	s3,10
	srli	s3,s3,00000010
	bltu	s3,a4,000000002306AC96

l2306AC8E:
	slli	s3,a4,00000010
	srli	s3,s3,00000010

l2306AC96:
	c.lw	a5,0(a1)
	c.lwsp	a2,000000E4
	c.mv	a3,s1
	c.add	s1,s3
	c.lw	a5,0(a0)
	c.mv	a2,s3
	c.slli	s1,10
	jal	ra,000000002307055E
	c.srli	s1,00000010
	c.addi	s4,00000001
	c.j	000000002306AC1A

;; get_socket: 2306ACAE
;;   Called from:
;;     2306B120 (in event_callback)
;;     2306B2A4 (in lwip_accept)
;;     2306B3D4 (in lwip_bind)
;;     2306B440 (in lwip_close)
;;     2306B470 (in lwip_close)
;;     2306B4E2 (in lwip_connect)
;;     2306B54E (in lwip_listen)
;;     2306B5CA (in lwip_recvfrom)
;;     2306B6A2 (in lwip_sendto)
;;     2306B7B4 (in lwip_send)
;;     2306B8CC (in lwip_setsockopt)
get_socket proc
	c.li	a5,00000014
	bltu	a5,a0,000000002306ACC6

l2306ACB4:
	slli	a5,a0,00000004
	lui	a0,0004201B
	addi	a0,a0,-000004F8
	c.add	a0,a5
	c.lw	a0,0(a5)
	c.bnez	a5,000000002306ACD2

l2306ACC6:
	lui	a5,00042026
	c.li	a4,00000009
	sw	a4,a5,+000007A8
	c.li	a0,00000000

l2306ACD2:
	c.jr	ra

;; lwip_setsockopt_callback: 2306ACD4
lwip_setsockopt_callback proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	lw	s3,a0,+00000000
	c.mv	s1,a0
	c.li	a3,00000014
	c.lw	a0,4(s0)
	c.lw	a0,8(a5)
	c.lw	s1,16(a4)
	c.lw	a0,12(a0)
	bltu	a3,s3,000000002306B0B2

l2306ACF6:
	lui	a3,0004201B
	addi	a2,a3,-000004F8
	slli	s4,s3,00000004
	c.add	a2,s4
	c.lw	a2,0(a2)
	addi	s2,a3,-000004F8
	beq	a2,zero,000000002306B0B2

l2306AD0E:
	c.li	a1,00000006
	beq	s0,a1,000000002306B02C

l2306AD14:
	c.lui	a3,00001000
	addi	a6,a3,-00000001
	beq	s0,a6,000000002306AD28

l2306AD1E:
	beq	s0,zero,000000002306AEA2

l2306AD22:
	addi	s0,zero,+0000005C
	c.j	000000002306AD60

l2306AD28:
	addi	a1,a3,+00000005
	beq	a5,a1,000000002306ADEC

l2306AD30:
	blt	a1,a5,000000002306AD78

l2306AD34:
	c.li	a3,00000008
	beq	a5,a3,000000002306AD48

l2306AD3A:
	addi	a3,zero,+00000020
	beq	a5,a3,000000002306AD48

l2306AD42:
	c.li	a3,00000004
	bne	a5,a3,000000002306AD22

l2306AD48:
	addi	a3,zero,+00000020
	bne	a5,a3,000000002306ADB0

l2306AD50:
	lbu	a3,a2,+00000000
	addi	s0,zero,+0000005C
	andi	a3,a3,+000000F0
	beq	a3,a5,000000002306ADBE

l2306AD60:
	c.lw	s1,24(a0)
	c.sw	s1,20(s0)
	jal	ra,000000002306A7AC
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2306AD78:
	addi	a1,a3,+0000000A
	beq	a5,a1,000000002306AE0E

l2306AD80:
	addi	a1,a3,+0000000B
	beq	a5,a1,000000002306AE48

l2306AD88:
	c.addi	a3,00000006
	bne	a5,a3,000000002306AD22

l2306AD8E:
	c.li	a5,0000000F
	c.li	s0,00000016
	bgeu	a5,a4,000000002306AD60

l2306AD96:
	c.lw	a0,8(a4)
	addi	a3,zero,+000003E8
	c.lw	a0,0(a5)
	xor	a4,a4,a3
	add	a5,a3,a5
	c.add	a5,a4
	blt	a5,zero,000000002306AD60

l2306ADAC:
	c.sw	a2,32(a5)
	c.j	000000002306ADDC

l2306ADB0:
	c.li	a3,00000004
	beq	a5,a3,000000002306ADBE

l2306ADB6:
	c.li	a3,00000008
	beq	a5,a3,000000002306ADBE

l2306ADBC:
	c.li	a5,00000000

l2306ADBE:
	c.li	a3,00000003
	c.li	s0,00000016
	bgeu	a3,a4,000000002306AD60

l2306ADC6:
	c.lw	a2,4(a3)
	c.beqz	a3,000000002306AD60

l2306ADCA:
	c.lw	a0,0(s0)
	c.slli	a5,18
	lb	a4,a3,+00000009
	c.srai	a5,00000018
	c.beqz	s0,000000002306ADE0

l2306ADD6:
	c.or	a4,a5
	sb	a4,a3,+00000009

l2306ADDC:
	c.li	s0,00000000
	c.j	000000002306AD60

l2306ADE0:
	xori	a5,a5,-00000001
	c.and	a4,a5
	sb	a4,a3,+00000009
	c.j	000000002306AD60

l2306ADEC:
	c.li	a5,0000000F
	c.li	s0,00000016
	bgeu	a5,a4,000000002306AD60

l2306ADF4:
	c.lw	a0,8(a4)
	addi	a3,zero,+000003E8
	c.lw	a0,0(a5)
	xor	a4,a4,a3
	add	a5,a3,a5
	c.add	a5,a4
	blt	a5,zero,000000002306AD60

l2306AE0A:
	c.sw	a2,28(a5)
	c.j	000000002306ADDC

l2306AE0E:
	c.li	a5,00000003
	c.li	s0,00000016
	bgeu	a5,a4,000000002306AD60

l2306AE16:
	c.lw	a2,4(a4)
	c.beqz	a4,000000002306AD60

l2306AE1A:
	lbu	a5,a2,+00000000
	addi	a3,zero,+00000020
	addi	s0,zero,+0000005C
	andi	a5,a5,+000000F0
	bne	a5,a3,000000002306AD60

l2306AE2E:
	c.lw	a0,0(s0)
	lbu	a5,a4,+00000010
	c.beqz	s0,000000002306AE40

l2306AE36:
	ori	a5,a5,+00000001
	sb	a5,a4,+00000010
	c.j	000000002306ADDC

l2306AE40:
	c.andi	a5,FFFFFFFE
	sb	a5,a4,+00000010
	c.j	000000002306AD60

l2306AE48:
	c.li	a5,00000005
	c.li	s0,00000016
	bgeu	a5,a4,000000002306AD60

l2306AE50:
	lbu	a5,a0,+00000000
	c.li	a1,00000000
	c.beqz	a5,000000002306AE64

l2306AE58:
	jal	ra,000000002306FFC8
	c.mv	a1,a0
	c.li	s0,00000013
	beq	a0,zero,000000002306AD60

l2306AE64:
	add	a3,s2,s4
	c.lw	a3,0(a4)
	addi	a3,zero,+00000020
	lbu	a5,a4,+00000000
	andi	a5,a5,+000000F0
	beq	a5,a3,000000002306AE92

l2306AE7A:
	addi	a3,zero,+00000040
	beq	a5,a3,000000002306AE9A

l2306AE82:
	c.li	a3,00000010
	c.li	s0,00000000
	bne	a5,a3,000000002306AD60

l2306AE8A:
	c.lw	a4,4(a0)
	jal	ra,0000000023070D2A
	c.j	000000002306AD60

l2306AE92:
	c.lw	a4,4(a0)
	jal	ra,000000002307515E
	c.j	000000002306ADDC

l2306AE9A:
	c.lw	a4,4(a0)
	jal	ra,0000000023070916
	c.j	000000002306ADDC

l2306AEA2:
	addi	a3,a5,-00000001
	bltu	a1,a3,000000002306AD22

l2306AEAA:
	lui	a1,000230C3
	c.slli	a3,02
	addi	a1,a1,+00000570
	c.add	a3,a1
	c.lw	a3,0(a3)
	c.jr	a3
2306AEBA                               8D 47 63 FD E7 1E           .Gc...
2306AEC0 5C 42 63 8A 07 1E 18 41 A3 85 E7 00 51 BD 8D 47 \Bc....A....Q..G
2306AED0 63 F3 E7 1E 5C 42 63 80 07 1E 18 41 23 85 E7 00 c...\Bc....A#...
2306AEE0 41 B5 63 0A 07 1C 58 42 63 07 07 1C 83 47 06 00 A.c...XBc....G..
2306AEF0 93 06 00 02 93 F7 07 0F E3 95 D7 E2 83 47 05 00 .............G..
2306AF00 A3 0E F7 00 B1 BD 8D 47 63 F7 E7 1A 58 42 63 04 .......Gc...XBc.
2306AF10 07 1A 83 47 06 00 93 06 00 02 93 F7 07 0F E3 92 ...G............
2306AF20 D7 E0 1C 41 1C CF 2D BD 63 07 07 18 58 42 63 04 ...A..-.c...XBc.
2306AF30 07 18 83 47 06 00 93 06 00 02 93 F7 07 0F E3 92 ...G............
2306AF40 D7 DE 83 46 05 00 83 47 07 01 81 C6 93 E7 87 00 ...F...G........
2306AF50 CD BD DD 9B FD B5 9D 46 63 FF E6 14 58 42 63 0C .......Fc...XBc.
2306AF60 07 14 03 47 06 00 93 06 00 02 13 77 07 0F E3 1A ...G.......w....
2306AF70 D7 DA 58 41 3A C4 18 41 3A C6 0D 47 63 99 E7 04 ..XA:..A:..Gc...
2306AF80 4E 85 EF F0 DF D2 31 C1 B7 B7 01 42 93 86 C7 A0 N.....1....B....
2306AF90 01 47 93 87 C7 A0 55 46 8C 42 85 E5 B1 46 33 07 .G....UF.B...F3.
2306AFA0 D7 02 6C 00 BA 97 22 47 88 C3 28 00 D8 C3 32 47 ..l..."G..(...2G
2306AFB0 98 C7 EF 30 10 32 2A 89 E3 04 09 DA 13 04 30 06 ...0.2*.......0.
2306AFC0 45 B3 05 07 B1 06 E3 19 C7 FC 31 44 51 BB 6C 00 E.........1DQ.l.
2306AFD0 28 00 EF 30 70 41 2A 89 4E 85 EF F0 5F CD 69 DD (..0pA*.N..._.i.
2306AFE0 A2 45 32 48 B7 B7 01 42 93 86 C7 A0 01 47 93 87 .E2H...B.....G..
2306AFF0 C7 A0 55 46 83 A8 06 00 63 15 15 03 83 A8 46 00 ..UF....c.....F.
2306B000 63 91 B8 02 83 A8 86 00 63 9D 08 01 B1 46 33 07 c.......c....F3.
2306B010 D7 02 BA 97 23 A0 07 00 23 A2 07 00 23 A4 07 00 ....#...#...#...
2306B020 61 BF 05 07 B1 06 E3 17 C7 FC 79 B7             a.........y.   

l2306B02C:
	c.li	a3,00000003
	c.li	s0,00000016
	bgeu	a3,a4,000000002306AD60

l2306B034:
	c.lw	a2,4(a4)
	beq	a4,zero,000000002306AD60

l2306B03A:
	lbu	a3,a2,+00000000
	c.li	a2,00000010
	addi	s0,zero,+0000005C
	andi	a3,a3,+000000F0
	bne	a3,a2,000000002306AD60

l2306B04C:
	lbu	a2,a4,+00000014
	c.li	a3,00000001
	c.li	s0,00000016
	beq	a2,a3,000000002306AD60

l2306B058:
	c.addi	a5,FFFFFFFF
	c.li	a3,00000004
	addi	s0,zero,+0000005C
	bltu	a3,a5,000000002306AD60

l2306B064:
	lui	a3,000230C3
	c.slli	a5,02
	addi	a3,a3,+0000058C
	c.add	a5,a3
	c.lw	a5,0(a5)
	c.lw	a0,0(s0)
	c.jr	a5
2306B076                   83 57 A7 01 11 C4 93 E7 07 04       .W........
2306B080 23 1D F7 00 A1 BB 93 F7 F7 FB 23 1D F7 00 C9 B9 #.........#.....
2306B090 93 07 80 3E 33 04 F4 02 23 2A 87 08 81 B3 93 07 ...>3...#*......
2306B0A0 80 3E 33 04 F4 02 23 2C 87 08 0D BB 23 2E 87 08 .>3...#,....#...
2306B0B0 35 B3                                           5.             

l2306B0B2:
	c.li	s0,00000009
	c.j	000000002306AD60
2306B0B6                   59 44 65 B1                         YDe.     

;; event_callback: 2306B0BA
event_callback proc
	beq	a0,zero,000000002306B28E

l2306B0BE:
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	c.lw	a0,24(s1)
	c.mv	s2,a1
	c.mv	s0,a0
	bge	s1,zero,000000002306B11E

l2306B0E4:
	jal	ra,000000002306A7EE
	c.lw	s0,24(s1)
	c.mv	a5,a0
	bge	s1,zero,000000002306B11A

l2306B0F0:
	bne	s2,zero,000000002306B0F8

l2306B0F4:
	c.addi	s1,FFFFFFFF
	c.sw	s0,24(s1)

l2306B0F8:
	c.mv	a0,a5

l2306B0FA:
	c.lwsp	s1,00000004
	c.lwsp	a3,00000020
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.lwsp	a6,000001D8
	c.lwsp	a2,000001F8
	c.lwsp	s0,0000011C
	c.lwsp	tp,0000013C
	c.lwsp	zero,0000015C
	c.lwsp	t3,0000006C
	c.addi16sp	00000050
	jal	zero,000000002306A7FE

l2306B11A:
	jal	ra,000000002306A7FE

l2306B11E:
	c.mv	a0,s1
	jal	ra,000000002306ACAE
	c.mv	s0,a0
	beq	a0,zero,000000002306B270

l2306B12A:
	jal	ra,000000002306A7EE
	c.li	a4,00000004
	c.li	a5,00000001
	bltu	a4,s2,000000002306B15A

l2306B136:
	lui	a1,000230C3
	c.slli	s2,02
	addi	a1,a1,+000005A0
	c.add	s2,a1
	lw	a5,s2,+00000000
	c.jr	a5

l2306B148:
	lhu	a5,s0,+00000008
	c.addi	a5,00000001
	c.slli	a5,10
	c.srai	a5,00000010
	sh	a5,s0,+00000008
	slti	a5,a5,+00000002

l2306B15A:
	lbu	a4,s0,+0000000E
	c.beqz	a4,000000002306B0FA

l2306B160:
	c.beqz	a5,000000002306B0FA

l2306B162:
	lh	s3,s0,+00000008
	lhu	s4,s0,+0000000A
	lhu	s2,s0,+0000000C
	jal	ra,000000002306A7FE
	jal	ra,000000002306A7EE
	srli	s10,s1,00000005
	c.li	s11,00000001
	c.mv	a4,a0
	sll	s11,s11,s1
	lui	s6,0004200F
	lui	s8,0004200F
	c.li	s9,00000001
	c.slli	s10,02

l2306B18E:
	addi	a5,s6,+000005C4
	lw	s5,a5,+00000000
	lw	s0,s8,+000005C8
	addi	s7,s6,+000005C4

l2306B19E:
	c.bnez	s0,000000002306B1D0

l2306B1A0:
	c.mv	a0,a4
	c.j	000000002306B0FA

l2306B1A4:
	lhu	a5,s0,+00000008
	c.addi	a5,FFFFFFFF
	sh	a5,s0,+00000008
	c.li	a5,00000000
	c.j	000000002306B15A
2306B1B2       83 57 A4 00 05 47 23 15 E4 00 93 B7 17 00   .W...G#.......
2306B1C0 69 BF 23 15 04 00 E5 B7 85 47 23 16 F4 00 71 B7 i.#......G#...q.

l2306B1D0:
	c.lw	s0,28(a5)
	c.bnez	a5,000000002306B1E2

l2306B1D4:
	c.lw	s0,20(a5)
	c.beqz	a5,000000002306B228

l2306B1D8:
	c.lw	s0,24(a1)
	c.addi	a5,00000004
	c.li	a3,00000000

l2306B1DE:
	bne	a3,a1,000000002306B1FE

l2306B1E2:
	c.mv	a0,a4
	jal	ra,000000002306A7FE
	jal	ra,000000002306A7EE
	lw	a5,s7,+00000000
	c.mv	a4,a0
	bne	a5,s5,000000002306B18E

l2306B1F6:
	lw	s5,s7,+00000000
	c.lw	s0,0(s0)
	c.j	000000002306B19E

l2306B1FE:
	lw	a2,a5,-00000004
	bne	s1,a2,000000002306B222

l2306B206:
	bge	zero,s3,000000002306B212

l2306B20A:
	lhu	a2,a5,+00000000
	c.andi	a2,00000001
	c.bnez	a2,000000002306B25E

l2306B212:
	beq	s4,zero,000000002306B21E

l2306B216:
	lhu	a2,a5,+00000000
	c.andi	a2,00000002
	c.bnez	a2,000000002306B25E

l2306B21E:
	bne	s2,zero,000000002306B25E

l2306B222:
	c.addi	a3,00000001
	c.addi	a5,00000008
	c.j	000000002306B1DE

l2306B228:
	bge	zero,s3,000000002306B23A

l2306B22C:
	c.lw	s0,8(a5)
	c.beqz	a5,000000002306B23A

l2306B230:
	c.add	a5,s10
	c.lw	a5,0(a5)
	and	a5,s11,a5
	c.bnez	a5,000000002306B25E

l2306B23A:
	beq	s4,zero,000000002306B24C

l2306B23E:
	c.lw	s0,12(a5)
	c.beqz	a5,000000002306B24C

l2306B242:
	c.add	a5,s10
	c.lw	a5,0(a5)
	and	a5,s11,a5
	c.bnez	a5,000000002306B25E

l2306B24C:
	beq	s2,zero,000000002306B1E2

l2306B250:
	c.lw	s0,16(a5)
	c.beqz	a5,000000002306B1E2

l2306B254:
	c.add	a5,s10
	c.lw	a5,0(a5)
	and	a5,s11,a5
	c.beqz	a5,000000002306B1E2

l2306B25E:
	sw	s9,s0,+0000001C
	addi	a0,s0,+00000020
	c.swsp	a4,00000084
	jal	ra,000000002306A7AC
	c.lwsp	a2,000000C4
	c.j	000000002306B1E2

l2306B270:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.lwsp	a6,000001D8
	c.lwsp	a2,000001F8
	c.lwsp	s0,0000011C
	c.lwsp	tp,0000013C
	c.lwsp	zero,0000015C
	c.lwsp	t3,0000006C
	c.addi16sp	00000050
	c.jr	ra

l2306B28E:
	c.jr	ra

;; lwip_accept: 2306B290
;;   Called from:
;;     23077DB8 (in iperf_server)
lwip_accept proc
	c.addi16sp	FFFFFFC0
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.mv	s3,a1
	c.mv	s2,a2
	sh	zero,sp,+00000006
	jal	ra,000000002306ACAE
	c.bnez	a0,000000002306B2BC

l2306B2AA:
	c.li	s0,FFFFFFFF

l2306B2AC:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l2306B2BC:
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.addi4spn	a1,00000008
	jal	ra,0000000023075740
	c.beqz	a0,000000002306B2F4

l2306B2C8:
	c.lw	s0,0(a5)
	c.li	a3,00000010
	lbu	a5,a5,+00000000
	andi	a5,a5,+000000F0
	beq	a5,a3,000000002306B2E6

l2306B2D8:
	lui	a5,00042026
	addi	a4,zero,+0000005F

l2306B2E0:
	sw	a4,a5,+000007A8
	c.j	000000002306B2AA

l2306B2E6:
	c.li	a5,FFFFFFF1
	bne	a0,a5,000000002306B360

l2306B2EC:
	lui	a5,00042026
	c.li	a4,00000016
	c.j	000000002306B2E0

l2306B2F4:
	c.lwsp	s0,00000044
	c.li	a1,00000001
	jal	ra,000000002306A98C
	c.li	a5,FFFFFFFF
	c.mv	s0,a0
	bne	a0,a5,000000002306B316

l2306B304:
	c.lwsp	s0,00000044
	jal	ra,00000000230754F6
	lui	a5,00042026
	c.li	a4,00000017
	sw	a4,a5,+000007A8
	c.j	000000002306B2AC

l2306B316:
	jal	ra,000000002306A7EE
	c.lwsp	s0,000000E4
	c.lw	a5,24(s1)
	c.sw	a5,24(s0)
	jal	ra,000000002306A7FE
	c.lwsp	s0,000000E4
	c.lw	a5,44(a5)
	c.bnez	a5,000000002306B370

l2306B32A:
	beq	s3,zero,000000002306B2AC

l2306B32E:
	beq	s2,zero,000000002306B2AC

l2306B332:
	c.lwsp	s0,00000044
	c.li	a3,00000000
	addi	a2,sp,+00000006
	c.addi4spn	a1,0000000C
	jal	ra,000000002307551E
	c.mv	s1,a0
	c.beqz	a0,000000002306B38A

l2306B344:
	c.lwsp	s0,00000044
	jal	ra,00000000230754F6
	lui	a5,0004201B
	addi	a5,a5,-000004F8
	slli	a0,s0,00000004
	c.add	a0,a5
	c.li	a1,00000001
	jal	ra,000000002306AB6C
	c.mv	a0,s1

l2306B360:
	jal	ra,0000000023076B7A
	c.beqz	a0,000000002306B2AA

l2306B366:
	lui	a5,00042026
	sw	a0,a5,+000007A8
	c.j	000000002306B2AA

l2306B370:
	xori	s1,s1,-00000001
	c.slli	s1,10
	c.srai	s1,00000010

l2306B378:
	bge	zero,s1,000000002306B32A

l2306B37C:
	c.lwsp	s0,00000044
	c.li	a2,00000000
	c.li	a1,00000000
	c.lw	a0,44(a5)
	c.addi	s1,FFFFFFFF
	c.jalr	a5
	c.j	000000002306B378

l2306B38A:
	lhu	a0,sp,+00000006
	addi	a5,zero,+00000210
	sh	a5,sp,+00000010
	jal	ra,000000002306BC12
	c.lwsp	a2,000000E4
	sh	a0,sp,+00000012
	c.li	a2,00000008
	c.li	a1,00000000
	c.addi4spn	a0,00000018
	c.swsp	a5,00000088
	jal	ra,00000000230A3A68
	lbu	a5,sp,+00000010
	lw	a4,s2,+00000000
	bgeu	a5,a4,000000002306B3BC

l2306B3B8:
	sw	a5,s2,+00000000

l2306B3BC:
	lw	a2,s2,+00000000
	c.addi4spn	a1,00000010
	c.mv	a0,s3
	jal	ra,00000000230A382C
	c.j	000000002306B2AC

;; lwip_bind: 2306B3CA
;;   Called from:
;;     23077AF4 (in iperf_client_udp)
;;     23077D5A (in iperf_server)
lwip_bind proc
	c.addi16sp	FFFFFFD0
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	jal	ra,000000002306ACAE
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.bnez	a0,000000002306B3E2

l2306B3DE:
	c.li	a5,FFFFFFFF
	c.j	000000002306B426

l2306B3E2:
	c.li	a5,00000010
	bne	a2,a5,000000002306B3F8

l2306B3E8:
	lbu	a4,a1,+00000001
	c.li	a5,00000002
	bne	a4,a5,000000002306B3F8

l2306B3F2:
	andi	a5,a1,+00000003
	c.beqz	a5,000000002306B40A

l2306B3F8:
	c.li	a0,FFFFFFF0

l2306B3FA:
	jal	ra,0000000023076B7A
	c.beqz	a0,000000002306B3DE

l2306B400:
	lui	a5,00042026
	sw	a0,a5,+000007A8
	c.j	000000002306B3DE

l2306B40A:
	c.lw	a1,4(a5)
	c.mv	s0,a0
	lhu	a0,a1,+00000002
	c.swsp	a5,0000008C
	jal	ra,000000002306BC12
	c.mv	a2,a0
	c.lw	s0,0(a0)
	c.addi4spn	a1,0000001C
	jal	ra,0000000023075550
	c.li	a5,00000000
	c.bnez	a0,000000002306B3FA

l2306B426:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,a5
	c.addi16sp	00000030
	c.jr	ra

;; lwip_close: 2306B430
;;   Called from:
;;     2305ACC4 (in ota_tcp_cmd.part.0)
;;     2305AD26 (in ota_tcp_cmd.part.0)
;;     23077B0C (in iperf_client_udp)
;;     23077C6E (in iperf_client_udp)
;;     23077D72 (in iperf_server)
;;     23077EE2 (in iperf_server)
;;     23077FF0 (in iperf_client_tcp)
;;     23078104 (in iperf_client_tcp)
lwip_close proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.mv	s0,a0
	jal	ra,000000002306ACAE
	c.bnez	a0,000000002306B458

l2306B446:
	c.li	a0,FFFFFFFF

l2306B448:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2306B458:
	c.lw	a0,0(a5)
	c.mv	s2,a0
	c.li	s1,00000000
	c.beqz	a5,000000002306B46E

l2306B460:
	lbu	s1,a5,+00000000
	andi	s1,s1,+000000F0
	c.addi	s1,FFFFFFF0
	sltiu	s1,s1,+00000001

l2306B46E:
	c.mv	a0,s0
	jal	ra,000000002306ACAE
	c.mv	s3,a0
	c.beqz	a0,000000002306B4B2

l2306B478:
	lui	s0,0004201B
	addi	s0,s0,-000005F4
	addi	s4,s0,+000000FC

l2306B484:
	c.lw	s0,0(a5)
	bne	s3,a5,000000002306B4AC

l2306B48A:
	c.lw	s0,8(a5)
	sw	zero,s0,+00000000
	sw	zero,s0,+00000008
	c.swsp	a5,00000004
	c.lw	s0,4(a5)
	sw	zero,s0,+00000004
	c.li	a3,00000001
	c.swsp	a5,00000084
	lw	a0,s3,+00000000
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	jal	ra,00000000230759B4

l2306B4AC:
	c.addi	s0,0000000C
	bne	s0,s4,000000002306B484

l2306B4B2:
	lw	a0,s2,+00000000
	jal	ra,00000000230754D0
	c.beqz	a0,000000002306B4CC

l2306B4BC:
	jal	ra,0000000023076B7A
	c.beqz	a0,000000002306B446

l2306B4C2:
	lui	a5,00042026
	sw	a0,a5,+000007A8
	c.j	000000002306B446

l2306B4CC:
	c.mv	a0,s2
	c.mv	a1,s1
	jal	ra,000000002306AB6C
	c.li	a0,00000000
	c.j	000000002306B448

;; lwip_connect: 2306B4D8
;;   Called from:
;;     2305ACB0 (in ota_tcp_cmd.part.0)
;;     23077FD8 (in iperf_client_tcp)
lwip_connect proc
	c.addi16sp	FFFFFFD0
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	jal	ra,000000002306ACAE
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.bnez	a0,000000002306B4F0

l2306B4EC:
	c.li	a5,FFFFFFFF
	c.j	000000002306B502

l2306B4F0:
	lbu	a5,a1,+00000001
	c.mv	s0,a0
	c.bnez	a5,000000002306B50C

l2306B4F8:
	c.lw	a0,0(a0)
	jal	ra,00000000230755B0

l2306B4FE:
	c.li	a5,00000000
	c.bnez	a0,000000002306B520

l2306B502:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,a5
	c.addi16sp	00000030
	c.jr	ra

l2306B50C:
	c.li	a4,00000010
	bne	a2,a4,000000002306B51E

l2306B512:
	c.li	a4,00000002
	bne	a5,a4,000000002306B51E

l2306B518:
	andi	a5,a1,+00000003
	c.beqz	a5,000000002306B530

l2306B51E:
	c.li	a0,FFFFFFF0

l2306B520:
	jal	ra,0000000023076B7A
	c.beqz	a0,000000002306B4EC

l2306B526:
	lui	a5,00042026
	sw	a0,a5,+000007A8
	c.j	000000002306B4EC

l2306B530:
	c.lw	a1,4(a5)
	lhu	a0,a1,+00000002
	c.swsp	a5,0000008C
	c.jal	000000002306BC12
	c.mv	a2,a0
	c.lw	s0,0(a0)
	c.addi4spn	a1,0000001C
	jal	ra,0000000023075580
	c.j	000000002306B4FE

;; lwip_listen: 2306B546
;;   Called from:
;;     23077D7C (in iperf_server)
lwip_listen proc
	c.addi	sp,FFFFFFE0
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	jal	ra,000000002306ACAE
	c.lwsp	a2,00000064
	c.bnez	a0,000000002306B562

l2306B556:
	c.li	a5,FFFFFFFF

l2306B558:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

l2306B562:
	c.mv	s0,a0
	bge	a1,zero,000000002306B56A

l2306B568:
	c.li	a1,00000000

l2306B56A:
	addi	a5,zero,+000000FF
	bge	a5,a1,000000002306B576

l2306B572:
	addi	a1,zero,+000000FF

l2306B576:
	c.lw	s0,0(a0)
	andi	a1,a1,+000000FF
	jal	ra,00000000230755D0
	c.li	a5,00000000
	c.beqz	a0,000000002306B558

l2306B584:
	c.lw	s0,0(a5)
	c.li	a4,00000010
	lbu	a5,a5,+00000000
	andi	a5,a5,+000000F0
	beq	a5,a4,000000002306B5A2

l2306B594:
	lui	a5,00042026
	addi	a4,zero,+0000005F
	sw	a4,a5,+000007A8
	c.j	000000002306B556

l2306B5A2:
	jal	ra,0000000023076B7A
	c.beqz	a0,000000002306B556

l2306B5A8:
	lui	a5,00042026
	sw	a0,a5,+000007A8
	c.j	000000002306B556

;; lwip_recvfrom: 2306B5B2
;;   Called from:
;;     2306B67C (in lwip_read)
;;     2306B684 (in lwip_recv)
lwip_recvfrom proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s4,00000024
	c.swsp	ra,000000AC
	c.swsp	s3,000000A4
	c.swsp	a1,00000084
	c.mv	s2,a2
	c.mv	s0,a3
	c.mv	s4,a4
	c.mv	s1,a5
	jal	ra,000000002306ACAE
	c.beqz	a0,000000002306B660

l2306B5D0:
	c.lw	a0,0(a5)
	c.li	a4,00000010
	c.mv	s3,a0
	lbu	a5,a5,+00000000
	c.lwsp	a2,00000064
	andi	a5,a5,+000000F0
	bne	a5,a4,000000002306B622

l2306B5E4:
	c.mv	a3,s0
	c.mv	a2,s2
	jal	ra,000000002306AA10
	c.mv	s0,a0
	beq	s4,zero,000000002306B610

l2306B5F2:
	c.beqz	s1,000000002306B610

l2306B5F4:
	lw	a0,s3,+00000000
	c.li	a3,00000000
	c.addi4spn	a2,0000001C
	c.addi4spn	a1,00000024
	jal	ra,000000002307551E
	lhu	a1,sp,+0000001C
	c.mv	a3,s1
	c.mv	a2,s4
	c.addi4spn	a0,00000024
	jal	ra,000000002306AB12

l2306B610:
	c.mv	a0,s0
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.addi16sp	00000060
	c.jr	ra

l2306B622:
	c.addi4spn	a5,0000001C
	c.swsp	a5,00000094
	c.li	a5,00000001
	c.swsp	a5,00000018
	sh	zero,sp,+0000001A
	c.swsp	a1,0000008C
	c.swsp	s2,00000010
	c.swsp	zero,00000098
	c.swsp	zero,0000001C
	c.swsp	zero,0000009C
	c.swsp	s4,00000090
	c.li	a5,00000000
	c.beqz	s1,000000002306B640

l2306B63E:
	c.lw	s1,0(a5)

l2306B640:
	addi	a3,sp,+0000001A
	c.addi4spn	a2,00000024
	c.mv	a1,s0
	c.mv	a0,s3
	c.swsp	a5,00000014
	jal	ra,000000002306ABC2
	c.beqz	a0,000000002306B664

l2306B652:
	jal	ra,0000000023076B7A
	c.beqz	a0,000000002306B660

l2306B658:
	lui	a5,00042026
	sw	a0,a5,+000007A8

l2306B660:
	c.li	s0,FFFFFFFF
	c.j	000000002306B610

l2306B664:
	lhu	s0,sp,+0000001A
	bgeu	s2,s0,000000002306B66E

l2306B66C:
	c.mv	s0,s2

l2306B66E:
	c.beqz	s1,000000002306B610

l2306B670:
	c.lwsp	s0,000001F4
	c.sw	s1,0(a5)
	c.j	000000002306B610

;; lwip_read: 2306B676
;;   Called from:
;;     2305AD04 (in ota_tcp_cmd.part.0)
lwip_read proc
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a3,00000000
	jal	zero,000000002306B5B2

;; lwip_recv: 2306B680
;;   Called from:
;;     23077E0C (in iperf_server)
lwip_recv proc
	c.li	a5,00000000
	c.li	a4,00000000
	jal	zero,000000002306B5B2

;; lwip_sendto: 2306B688
;;   Called from:
;;     2306B7E0 (in lwip_send)
;;     23077C54 (in iperf_client_udp)
lwip_sendto proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	a3,00000084
	c.swsp	a4,00000004
	c.swsp	a5,00000080
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s4,0000001C
	c.mv	s3,a0
	c.mv	s2,a1
	c.mv	s0,a2
	jal	ra,000000002306ACAE
	c.lwsp	tp,000000E4
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000A4
	c.bnez	a0,000000002306B6B2

l2306B6AE:
	c.li	a0,FFFFFFFF
	c.j	000000002306B6CC

l2306B6B2:
	c.lw	a0,0(a2)
	c.li	a1,00000010
	c.mv	s1,a0
	lbu	a2,a2,+00000000
	andi	a2,a2,+000000F0
	bne	a2,a1,000000002306B6DC

l2306B6C4:
	c.mv	a2,s0
	c.mv	a1,s2
	c.mv	a0,s3
	c.jal	000000002306B7A6

l2306B6CC:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.addi16sp	00000050
	c.jr	ra

l2306B6DC:
	c.lui	a3,00010000
	bltu	s0,a3,000000002306B6F0

l2306B6E2:
	lui	a5,00042026
	addi	a4,zero,+0000005A
	sw	a4,a5,+000007A8
	c.j	000000002306B6AE

l2306B6F0:
	slli	s4,s0,00000010
	srli	s4,s4,00000010
	c.bnez	a4,000000002306B792

l2306B6FA:
	c.beqz	a5,000000002306B70E

l2306B6FC:
	c.li	a0,FFFFFFF0
	jal	ra,0000000023076B7A
	c.beqz	a0,000000002306B6AE

l2306B704:
	lui	a5,00042026
	sw	a0,a5,+000007A8
	c.j	000000002306B6AE

l2306B70E:
	c.swsp	zero,00000010
	c.swsp	zero,0000008C
	sb	zero,sp,+0000002A
	c.beqz	a4,000000002306B782

l2306B718:
	c.lw	a4,4(a5)
	lhu	a0,a4,+00000002
	c.swsp	a5,00000090
	c.jal	000000002306BC12

l2306B722:
	sh	a0,sp,+00000028
	c.mv	a1,s4
	c.addi4spn	a0,0000001C
	jal	ra,0000000023076BCA
	c.li	s3,FFFFFFFF
	c.beqz	a0,000000002306B764

l2306B732:
	c.lwsp	t3,000000E4
	addi	a4,zero,+00000040
	c.lw	a5,4(a0)
	c.lw	s1,0(a5)
	lbu	a5,a5,+00000000
	andi	a5,a5,+000000F0
	beq	a5,a4,000000002306B788

l2306B748:
	c.mv	a2,s4
	c.mv	a1,s2
	jal	ra,000000002306C826
	c.li	a5,00000002
	sb	a5,sp,+0000002A
	sh	a0,sp,+0000002C

l2306B75A:
	c.lw	s1,0(a0)
	c.addi4spn	a1,0000001C
	jal	ra,0000000023075626
	c.mv	s3,a0

l2306B764:
	c.addi4spn	a0,0000001C
	jal	ra,0000000023076C04
	c.mv	a0,s3
	jal	ra,0000000023076B7A
	c.beqz	a0,000000002306B77A

l2306B772:
	lui	a5,00042026
	sw	a0,a5,+000007A8

l2306B77A:
	c.mv	a0,s0
	beq	s3,zero,000000002306B6CC

l2306B780:
	c.j	000000002306B6AE

l2306B782:
	c.swsp	zero,00000090
	c.li	a0,00000000
	c.j	000000002306B722

l2306B788:
	c.mv	a2,s0
	c.mv	a1,s2
	jal	ra,00000000230A382C
	c.j	000000002306B75A

l2306B792:
	bne	a5,a1,000000002306B6FC

l2306B796:
	lbu	a3,a4,+00000001
	c.li	a5,00000002
	bne	a3,a5,000000002306B6FC

l2306B7A0:
	andi	a5,a4,+00000003
	c.j	000000002306B6FA

;; lwip_send: 2306B7A6
;;   Called from:
;;     2306B6CA (in lwip_sendto)
;;     230780F4 (in iperf_client_tcp)
lwip_send proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.swsp	a3,00000080
	c.swsp	ra,00000094
	c.mv	s0,a0
	jal	ra,000000002306ACAE
	c.lwsp	tp,000000A4
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.bnez	a0,000000002306B7CA

l2306B7C0:
	c.li	a0,FFFFFFFF

l2306B7C2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

l2306B7CA:
	c.lw	a0,0(a5)
	c.li	a4,00000010
	lbu	a5,a5,+00000000
	andi	a5,a5,+000000F0
	beq	a5,a4,000000002306B7E6

l2306B7DA:
	c.li	a5,00000000
	c.li	a4,00000000
	c.mv	a0,s0
	jal	ra,000000002306B688
	c.j	000000002306B7C2

l2306B7E6:
	andi	a5,a3,+00000010
	c.li	a6,00000003
	c.bnez	a5,000000002306B7F0

l2306B7EE:
	c.li	a6,00000001

l2306B7F0:
	c.swsp	zero,0000008C
	c.srai	a3,00000001
	c.lw	a0,0(a0)
	c.andi	a3,00000004
	c.addi4spn	a4,0000001C
	or	a3,a6,a3
	jal	ra,0000000023075700
	c.mv	s0,a0
	jal	ra,0000000023076B7A
	c.beqz	a0,000000002306B812

l2306B80A:
	lui	a5,00042026
	sw	a0,a5,+000007A8

l2306B812:
	c.bnez	s0,000000002306B7C0

l2306B814:
	c.lwsp	t3,00000044
	c.j	000000002306B7C2

;; lwip_socket: 2306B818
;;   Called from:
;;     2305ABA6 (in ota_tcp_cmd.part.0)
;;     23077AA2 (in iperf_client_udp)
;;     23077D18 (in iperf_server)
;;     23077F96 (in iperf_client_tcp)
lwip_socket proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.li	a4,00000002
	c.mv	a5,a2
	beq	a1,a4,000000002306B864

l2306B828:
	c.li	a4,00000003
	beq	a1,a4,000000002306B842

l2306B82E:
	c.li	a5,00000001
	bne	a1,a5,000000002306B880

l2306B834:
	lui	a2,0002306B
	addi	a2,a2,+000000BA
	c.li	a1,00000000
	c.li	a0,00000010
	c.j	000000002306B852

l2306B842:
	lui	a2,0002306B
	addi	a2,a2,+000000BA
	andi	a1,a5,+000000FF
	addi	a0,zero,+00000040

l2306B852:
	jal	ra,0000000023075464
	c.mv	s0,a0
	c.bnez	a0,000000002306B898

l2306B85A:
	lui	a5,00042026
	addi	a4,zero,+00000069
	c.j	000000002306B886

l2306B864:
	addi	a4,zero,+00000088
	addi	a0,zero,+00000021
	beq	a2,a4,000000002306B874

l2306B870:
	addi	a0,zero,+00000020

l2306B874:
	lui	a2,0002306B
	addi	a2,a2,+000000BA
	c.li	a1,00000000
	c.j	000000002306B852

l2306B880:
	lui	a5,00042026
	c.li	a4,00000016

l2306B886:
	sw	a4,a5,+000007A8
	c.li	s1,FFFFFFFF

l2306B88C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2306B898:
	c.li	a1,00000000
	jal	ra,000000002306A98C
	c.li	a5,FFFFFFFF
	c.mv	s1,a0
	bne	a0,a5,000000002306B8B8

l2306B8A6:
	c.mv	a0,s0
	jal	ra,00000000230754F6
	lui	a5,00042026
	c.li	a4,00000017
	sw	a4,a5,+000007A8
	c.j	000000002306B88C

l2306B8B8:
	c.sw	s0,24(a0)
	c.j	000000002306B88C

;; lwip_setsockopt: 2306B8BC
;;   Called from:
;;     23077DF2 (in iperf_server)
;;     23078010 (in iperf_client_tcp)
lwip_setsockopt proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.swsp	a3,00000080
	c.swsp	a4,00000000
	c.swsp	ra,0000009C
	c.mv	s0,a0
	jal	ra,000000002306ACAE
	c.lwsp	zero,000000C4
	c.lwsp	tp,000000A4
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.bnez	a0,000000002306B8DE

l2306B8DA:
	c.li	a0,FFFFFFFF
	c.j	000000002306B928

l2306B8DE:
	c.bnez	a3,000000002306B8EC

l2306B8E0:
	lui	a5,00042026
	c.li	a4,0000000E
	sw	a4,a5,+000007A8
	c.j	000000002306B8DA

l2306B8EC:
	c.swsp	a1,0000000C
	c.swsp	s0,00000088
	c.swsp	a2,0000008C
	c.swsp	a4,00000090
	c.swsp	a3,00000010
	c.swsp	zero,00000014
	c.lw	a0,0(a5)
	lui	a0,0002306B
	c.addi4spn	a1,00000014
	c.addi	a5,0000000C
	addi	a0,a0,-0000032C
	c.swsp	a5,00000094
	c.jal	000000002306BA7C
	c.beqz	a0,000000002306B91C

l2306B90C:
	jal	ra,0000000023076B7A
	c.beqz	a0,000000002306B8DA

l2306B912:
	lui	a5,00042026
	sw	a0,a5,+000007A8
	c.j	000000002306B8DA

l2306B91C:
	c.lwsp	a2,00000154
	c.li	a1,00000000
	jal	ra,000000002306A6D2
	c.lwsp	s0,00000154
	c.bnez	a0,000000002306B912

l2306B928:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.addi16sp	00000040
	c.jr	ra

;; tcpip_thread: 2306B930
tcpip_thread proc
	lui	a5,0004200F
	lw	a5,a5,+000005CC
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.beqz	a5,000000002306B954

l2306B94A:
	lui	a4,0004200F
	lw	a0,a4,+000005D0
	c.jalr	a5

l2306B954:
	lui	s1,000230C3
	c.li	s2,FFFFFFFF
	lui	s3,0004200F
	c.li	s5,00000004
	addi	s1,s1,+000005B4

l2306B964:
	jal	ra,0000000023074B52
	c.mv	a2,a0
	bne	a0,s2,000000002306B98E

l2306B96E:
	c.li	a2,00000000
	c.addi4spn	a1,0000000C
	addi	a0,s3,+000005D4
	jal	ra,000000002306A5D8

l2306B97A:
	c.lwsp	a2,00000004
	c.beqz	s0,000000002306B964

l2306B97E:
	lbu	a5,s0,+00000000
	bltu	s5,a5,000000002306B964

l2306B986:
	c.slli	a5,02
	c.add	a5,s1
	c.lw	a5,0(a5)
	c.jr	a5

l2306B98E:
	c.bnez	a0,000000002306B996

l2306B990:
	jal	ra,0000000023074AFA
	c.j	000000002306B964

l2306B996:
	c.addi4spn	a1,0000000C
	addi	a0,s3,+000005D4
	jal	ra,000000002306A5D8
	beq	a0,s2,000000002306B990

l2306B9A4:
	c.j	000000002306B97A
2306B9A6                   03 2A 84 00 5C 40 52 85 82 97       .*..\@R...
2306B9B0 23 00 AA 00 48 44 EF E0 7F DF 6D B7 5C 44 0C 44 #...HD....m.\D.D
2306B9C0 48 40 82 97 01 C5 48 40 EF 40 C0 7D A2 85 25 45 H@....H@.@.}..%E
2306B9D0 EF 40 20 19 41 BF 08 44 5C 40 82 97 A2 85 21 45 .@ .A..D\@....!E
2306B9E0 C5 BF 5C 40 08 44 82 97 B5 BF                   ..\@.D....     

;; tcpip_inpkt: 2306B9EA
;;   Called from:
;;     2306BA6E (in tcpip_input)
tcpip_inpkt proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200F
	c.swsp	s2,00000008
	c.mv	s2,a0
	addi	a0,s1,+000005D4
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	jal	ra,000000002306A658
	c.li	a0,00000009
	jal	ra,000000002306FB44
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.bnez	a0,000000002306BA2C

l2306BA12:
	lui	a0,000230C3
	addi	a0,a0,+000005D0
	jal	ra,0000000023082388

l2306BA1E:
	c.li	a0,FFFFFFFF

l2306BA20:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2306BA2C:
	c.li	a5,00000002
	c.sw	a0,8(a1)
	c.mv	s0,a0
	sb	a5,a0,+00000000
	sw	s2,a0,+00000004
	c.sw	a0,12(a2)
	c.mv	a1,a0
	addi	a0,s1,+000005D4
	jal	ra,000000002306A5A2
	c.beqz	a0,000000002306BA20

l2306BA48:
	lui	a0,000230C3
	addi	a0,a0,+000005E4
	jal	ra,0000000023082388
	c.mv	a1,s0
	c.li	a0,00000009
	jal	ra,000000002306FB62
	c.j	000000002306BA1E

;; tcpip_input: 2306BA5E
tcpip_input proc
	lbu	a5,a1,+00000041
	c.andi	a5,00000018
	c.beqz	a5,000000002306BA72

l2306BA66:
	lui	a2,00023075
	addi	a2,a2,+0000028A

l2306BA6E:
	jal	zero,000000002306B9EA

l2306BA72:
	lui	a2,0002306F
	addi	a2,a2,-00000260
	c.j	000000002306BA6E

;; tcpip_callback: 2306BA7C
;;   Called from:
;;     2306B908 (in lwip_setsockopt)
;;     23078EBC (in cmd_sntp_start)
;;     230811AA (in bl_cipsend)
tcpip_callback proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200F
	c.swsp	s1,00000088
	c.mv	s1,a0
	addi	a0,s0,+000005D4
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,000000002306A658
	c.li	a0,00000008
	jal	ra,000000002306FB44
	c.beqz	a0,000000002306BABE

l2306BA9C:
	c.lwsp	a2,00000064
	c.li	a5,00000003
	sb	a5,a0,+00000000
	c.sw	a0,8(a1)
	c.sw	a0,4(s1)
	c.mv	a1,a0
	addi	a0,s0,+000005D4
	jal	ra,000000002306A57A
	c.li	a0,00000000

l2306BAB4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2306BABE:
	c.li	a0,FFFFFFFF
	c.j	000000002306BAB4

;; tcpip_try_callback: 2306BAC2
;;   Called from:
;;     23070316 (in pbuf_alloc)
tcpip_try_callback proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200F
	c.swsp	s2,00000008
	c.mv	s2,a0
	addi	a0,s1,+000005D4
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	jal	ra,000000002306A658
	c.li	a0,00000008
	jal	ra,000000002306FB44
	c.beqz	a0,000000002306BB08

l2306BAE4:
	c.lwsp	a2,00000064
	c.li	a5,00000003
	c.mv	s0,a0
	c.sw	a0,8(a1)
	sb	a5,a0,+00000000
	sw	s2,a0,+00000004
	c.mv	a1,a0
	addi	a0,s1,+000005D4
	jal	ra,000000002306A5A2
	c.beqz	a0,000000002306BB0A

l2306BB00:
	c.mv	a1,s0
	c.li	a0,00000008
	jal	ra,000000002306FB62

l2306BB08:
	c.li	a0,FFFFFFFF

l2306BB0A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; tcpip_send_msg_wait_sem: 2306BB16
;;   Called from:
;;     23075428 (in netconn_apimsg)
;;     23075A26 (in netconn_gethostbyname)
tcpip_send_msg_wait_sem proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.mv	s1,a0
	c.mv	a0,a2
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	a2,00000004
	c.swsp	a1,00000084
	lui	s0,0004200F
	jal	ra,000000002306A736
	addi	a0,s0,+000005D4
	jal	ra,000000002306A658
	c.lwsp	a2,00000064
	addi	a0,s0,+000005D4
	c.swsp	s1,00000088
	c.swsp	a1,0000000C
	c.addi4spn	a1,00000010
	sb	zero,sp,+00000010
	jal	ra,000000002306A57A
	c.lwsp	s0,00000084
	c.li	a1,00000000
	c.mv	a0,a2
	jal	ra,000000002306A6D2
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; tcpip_api_call: 2306BB60
;;   Called from:
;;     2306A926 (in netifapi_netif_add)
;;     2306A964 (in netifapi_netif_set_addr)
;;     2306A982 (in netifapi_netif_common)
tcpip_api_call proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	addi	s1,a1,+00000004
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.mv	s0,a1
	c.mv	s3,a0
	c.li	a1,00000000
	c.mv	a0,s1
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	jal	ra,000000002306A666
	c.bnez	a0,000000002306BBB2

l2306BB7E:
	lui	s2,0004200F
	addi	a0,s2,+000005D4
	jal	ra,000000002306A658
	c.li	a5,00000001
	c.mv	a1,sp
	addi	a0,s2,+000005D4
	sb	a5,sp,+00000000
	c.swsp	s0,00000004
	c.swsp	s3,00000080
	c.swsp	s1,00000084
	jal	ra,000000002306A57A
	c.lwsp	a2,00000044
	c.li	a1,00000000
	jal	ra,000000002306A6D2
	c.mv	a0,s1
	jal	ra,000000002306A71E
	lb	a0,s0,+00000000

l2306BBB2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; tcpip_init: 2306BBC0
;;   Called from:
;;     23000E14 (in bfl_main)
tcpip_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	c.swsp	a1,00000004
	jal	ra,000000002306C846
	c.lwsp	a2,00000044
	c.lwsp	s0,00000064
	lui	a5,0004200F
	sw	a0,a5,+000005CC
	lui	a5,0004200F
	lui	a0,0004200F
	sw	a1,a5,+000005D0
	addi	a0,a0,+000005D4
	addi	a1,zero,+00000032
	jal	ra,000000002306A4F0
	c.lwsp	t3,00000020
	c.lui	a3,00001000
	lui	a1,0002306C
	lui	a0,000230C3
	c.li	a4,0000001E
	addi	a3,a3,-00000060
	c.li	a2,00000000
	addi	a1,a1,-000006D0
	addi	a0,a0,+000005C8
	c.addi16sp	00000020
	jal	zero,000000002306A7B0

;; lwip_htons: 2306BC12
;;   Called from:
;;     2305ABDA (in ota_tcp_cmd.part.0)
;;     2305EEEC (in get_dns_request)
;;     2305EEF8 (in get_dns_request)
;;     2305EF7E (in get_dns_request)
;;     2305EF8C (in get_dns_request)
;;     2305EF96 (in get_dns_request)
;;     2305EFA0 (in get_dns_request)
;;     2305EFAA (in get_dns_request)
;;     2305EFB4 (in get_dns_request)
;;     2305F020 (in get_dns_request)
;;     2305F02A (in get_dns_request)
;;     2305F036 (in get_dns_request)
;;     2305F040 (in get_dns_request)
;;     2305F04A (in get_dns_request)
;;     2305F054 (in get_dns_request)
;;     2306AB2A (in lwip_sock_make_addr.isra.3)
;;     2306B396 (in lwip_accept)
;;     2306B414 (in lwip_bind)
;;     2306B538 (in lwip_connect)
;;     2306B720 (in lwip_sendto)
;;     2306BD76 (in dns_send)
;;     2306BFAE (in dns_recv)
;;     2306BFD6 (in dns_recv)
;;     2306BFE0 (in dns_recv)
;;     2306C2AC (in dns_recv)
;;     2306C2BE (in dns_recv)
;;     2306C620 (in inet_chksum_pseudo)
;;     2306C628 (in inet_chksum_pseudo)
;;     2306C6E8 (in inet_chksum_pseudo_partial)
;;     2306C6F0 (in inet_chksum_pseudo_partial)
;;     2306E01A (in etharp_raw)
;;     2306EE1C (in ip4_input)
;;     2306F214 (in ip4_output_if_opt_src)
;;     2306F232 (in ip4_output_if_opt_src)
;;     23071DB2 (in tcp_oos_insert_segment)
;;     23071E34 (in tcp_oos_insert_segment)
;;     23071E4C (in tcp_oos_insert_segment)
;;     23071FD0 (in tcp_free_acked_segments.isra.3)
;;     2307227C (in tcp_receive)
;;     230722A6 (in tcp_receive)
;;     230722C0 (in tcp_receive)
;;     230722C8 (in tcp_receive)
;;     23072300 (in tcp_receive)
;;     2307232E (in tcp_receive)
;;     23072352 (in tcp_receive)
;;     230723B6 (in tcp_receive)
;;     230723E4 (in tcp_receive)
;;     230725C8 (in tcp_receive)
;;     230725FE (in tcp_receive)
;;     23072614 (in tcp_receive)
;;     2307262E (in tcp_receive)
;;     23072658 (in tcp_receive)
;;     2307268A (in tcp_receive)
;;     230726AA (in tcp_receive)
;;     230726C0 (in tcp_receive)
;;     23072704 (in tcp_receive)
;;     230728DA (in tcp_receive)
;;     2307295C (in tcp_receive)
;;     23072978 (in tcp_receive)
;;     23072980 (in tcp_receive)
;;     230729D8 (in tcp_receive)
;;     23072ADA (in tcp_input)
;;     23072B54 (in tcp_input)
;;     23072B72 (in tcp_input)
;;     23072C20 (in tcp_input)
;;     23072C3E (in tcp_input)
;;     23073604 (in tcp_input)
;;     23073748 (in tcp_create_segment)
;;     2307375E (in tcp_create_segment)
;;     230737A0 (in tcp_create_segment)
;;     230737F4 (in tcp_output_alloc_header_common.constprop.6)
;;     23073804 (in tcp_output_alloc_header_common.constprop.6)
;;     23073852 (in tcp_output_alloc_header_common.constprop.6)
;;     23073862 (in tcp_output_alloc_header_common.constprop.6)
;;     23073BE4 (in tcp_write)
;;     23073D30 (in tcp_split_unsent_seg)
;;     23073DEC (in tcp_split_unsent_seg)
;;     23073FB6 (in tcp_send_fin)
;;     23073FCE (in tcp_send_fin)
;;     23074082 (in tcp_rexmit_rto_prepare)
;;     230743B2 (in tcp_output)
;;     23074402 (in tcp_output)
;;     230744C2 (in tcp_output)
;;     230744E0 (in tcp_output)
;;     230745FA (in tcp_output)
;;     2307462A (in tcp_output)
;;     23074748 (in tcp_output)
;;     23074862 (in tcp_zero_window_probe)
;;     230748BE (in tcp_zero_window_probe)
;;     23074C2C (in udp_input)
;;     23074C3E (in udp_input)
;;     23074F2E (in udp_sendto_if_src_chksum)
;;     23074F3E (in udp_sendto_if_src_chksum)
;;     23074F7C (in udp_sendto_if_src_chksum)
;;     230753AA (in ethernet_output)
;;     23077AD8 (in iperf_client_udp)
;;     23077B30 (in iperf_client_udp)
;;     23077D40 (in iperf_server)
;;     23077DD0 (in iperf_server)
;;     23077FC2 (in iperf_client_tcp)
lwip_htons proc
	slli	a5,a0,00000008
	c.srli	a0,00000008
	c.or	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010
	c.jr	ra

;; lwip_htonl: 2306BC20
;;   Called from:
;;     2305F062 (in get_dns_request)
;;     2305F070 (in get_dns_request)
;;     2306C1A8 (in dns_recv)
;;     2306C98C (in dhcp_create_msg)
;;     2306CEC6 (in dhcp_reboot)
;;     2306D056 (in dhcp_select)
;;     2306D08E (in dhcp_select)
;;     2306D23C (in dhcp_handle_ack.isra.3)
;;     2306D256 (in dhcp_handle_ack.isra.3)
;;     2306D26C (in dhcp_handle_ack.isra.3)
;;     2306D282 (in dhcp_handle_ack.isra.3)
;;     2306D32E (in dhcp_recv)
;;     2306D4E6 (in dhcp_recv)
;;     2306D61C (in dhcp_recv)
;;     2306D706 (in dhcp_recv)
;;     2306D826 (in dhcp_arp_reply)
;;     2306DA90 (in dhcp_release_and_stop)
;;     2306F450 (in ip4addr_aton)
;;     23071FB8 (in tcp_free_acked_segments.isra.3)
;;     2307253A (in tcp_receive)
;;     23072BA0 (in tcp_input)
;;     23072BE8 (in tcp_input)
;;     23073772 (in tcp_create_segment)
;;     2307382E (in tcp_output_alloc_header_common.constprop.6)
;;     23073D72 (in tcp_split_unsent_seg)
;;     23074068 (in tcp_rexmit_rto_prepare)
;;     2307412E (in tcp_rexmit)
;;     23074152 (in tcp_rexmit)
;;     230741EA (in tcp_rst)
;;     23074234 (in tcp_send_empty_ack)
;;     23074324 (in tcp_output)
;;     230743DA (in tcp_output)
;;     23074438 (in tcp_output)
;;     23074474 (in tcp_output)
;;     230745E0 (in tcp_output)
;;     23074668 (in tcp_output)
;;     2307468E (in tcp_output)
;;     230746C6 (in tcp_output)
;;     230746EA (in tcp_output)
;;     23074728 (in tcp_output)
;;     230747F8 (in tcp_keepalive)
;;     230748F6 (in tcp_zero_window_probe)
;;     230770B4 (in dhcp_server_recv)
;;     230770BE (in dhcp_server_recv)
;;     230770C8 (in dhcp_server_recv)
;;     230770D0 (in dhcp_server_recv)
;;     23077C38 (in iperf_client_udp)
;;     23078F90 (in sntp_recv)
;;     23078FA0 (in sntp_recv)
lwip_htonl proc
	srli	a4,a0,00000018
	slli	a5,a0,00000018
	c.or	a5,a4
	lui	a3,00000FF0
	slli	a4,a0,00000008
	c.and	a4,a3
	c.or	a5,a4
	c.lui	a4,00010000
	addi	a4,a4,-00000100
	c.srli	a0,00000008
	c.and	a0,a4
	c.or	a0,a5
	c.jr	ra

;; lwip_strnicmp: 2306BC44
;;   Called from:
;;     2306C426 (in dns_gethostbyname_addrtype)
lwip_strnicmp proc
	c.addi	a2,FFFFFFFF
	c.li	a5,00000000
	c.li	t1,00000019

l2306BC4A:
	add	a4,a0,a5
	lbu	a3,a4,+00000000
	add	a4,a1,a5
	lbu	a4,a4,+00000000
	beq	a3,a4,000000002306BC76

l2306BC5E:
	ori	a7,a3,+00000020
	addi	a6,a7,-00000061
	andi	a6,a6,+000000FF
	bltu	t1,a6,000000002306BC82

l2306BC6E:
	ori	a4,a4,+00000020
	bne	a7,a4,000000002306BC82

l2306BC76:
	beq	a2,a5,000000002306BC7E

l2306BC7A:
	c.addi	a5,00000001
	c.bnez	a3,000000002306BC4A

l2306BC7E:
	c.li	a0,00000000
	c.jr	ra

l2306BC82:
	c.li	a0,00000001
	c.jr	ra

;; dns_call_found: 2306BC86
;;   Called from:
;;     2306BD10 (in dns_send)
;;     2306BF2E (in dns_check_entry)
;;     2306C1CA (in dns_recv)
;;     2306C256 (in dns_recv)
dns_call_found proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004201B
	c.swsp	s1,00000080
	addi	a4,a5,-000003A8
	slli	s1,a0,00000003
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.add	a4,s1
	c.lw	a4,0(a3)
	addi	s0,a5,-000003A8
	c.beqz	a3,000000002306BCBC

l2306BCA4:
	addi	a5,zero,+00000110
	add	a0,a0,a5
	c.lw	a4,4(a2)
	lui	a4,0004201B
	addi	a4,a4,-00000388
	c.addi	a0,0000000F
	c.add	a0,a4
	c.jalr	a3

l2306BCBC:
	add	a5,s0,s1
	sw	zero,a5,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; dns_send: 2306BCCE
;;   Called from:
;;     2306BEE6 (in dns_check_entry)
dns_send proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	addi	s0,zero,+00000110
	add	s0,a0,s0
	c.swsp	s3,00000094
	lui	s3,0004201B
	c.swsp	s2,00000018
	addi	s2,s3,-00000388
	c.swsp	s6,00000010
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	s10,00000008
	c.add	s2,s0
	lbu	a4,s2,+0000000B
	lui	s6,0004200F
	addi	a5,s6,+000005E0
	c.slli	a4,02
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.bnez	a5,000000002306BD38

l2306BD0E:
	c.li	a1,00000000
	jal	ra,000000002306BC86
	c.li	s4,00000000
	sb	zero,s2,+0000000A

l2306BD1A:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s4
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.lwsp	s8,0000000C
	c.lwsp	s4,0000002C
	c.lwsp	a6,0000004C
	c.addi16sp	00000040
	c.jr	ra

l2306BD38:
	addi	s3,s3,-00000388
	c.addi	s0,0000000F
	c.add	s0,s3
	c.mv	s5,a0
	c.mv	a0,s0
	jal	ra,00000000230A4220
	addi	a1,a0,+00000012
	c.slli	a1,10
	addi	a2,zero,+00000280
	c.srli	a1,00000010
	addi	a0,zero,+000000B6
	jal	ra,0000000023070226
	c.mv	s1,a0
	c.li	s4,FFFFFFFF
	c.beqz	a0,000000002306BD1A

l2306BD62:
	c.li	a2,0000000C
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,00000000230A3A68
	lhu	a0,s2,+00000008
	c.lui	s8,00010000
	addi	s6,s6,+000005E0
	jal	ra,000000002306BC12
	c.li	a5,00000001
	sh	a0,sp,+00000004
	sb	a5,sp,+00000006
	c.li	a2,0000000C
	addi	a5,zero,+00000100
	c.addi4spn	a1,00000004
	c.mv	a0,s1
	sh	a5,sp,+00000008
	c.addi	s0,FFFFFFFF
	jal	ra,00000000230705DE
	c.li	s2,0000000C
	addi	s10,zero,+0000002E
	c.addi	s8,FFFFFFFE

l2306BDA0:
	c.addi	s0,00000001
	c.mv	s9,s0
	c.li	a2,00000000

l2306BDA6:
	lbu	a5,s0,+00000000
	bne	a5,s10,000000002306BDCA

l2306BDAE:
	sub	s7,s0,s9
	c.slli	s7,10
	add	s4,s2,a2
	srli	s7,s7,00000010
	bge	s8,s4,000000002306BDD6

l2306BDC0:
	c.mv	a0,s1
	jal	ra,00000000230701A4
	c.li	s4,FFFFFFFA
	c.j	000000002306BD1A

l2306BDCA:
	c.beqz	a5,000000002306BDAE

l2306BDCC:
	c.addi	a2,00000001
	andi	a2,a2,+000000FF
	c.addi	s0,00000001
	c.j	000000002306BDA6

l2306BDD6:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023070724
	addi	a3,s2,+00000001
	c.slli	a3,10
	c.srli	a3,00000010
	c.mv	a2,s7
	c.mv	a1,s9
	c.mv	a0,s1
	jal	ra,000000002307063C
	c.slli	s4,10
	srli	s4,s4,00000010
	lbu	a5,s0,+00000000
	addi	s2,s4,+00000001
	c.slli	s2,10
	srli	s2,s2,00000010
	c.bnez	a5,000000002306BDA0

l2306BE06:
	c.mv	a1,s2
	c.mv	a0,s1
	c.li	a2,00000000
	jal	ra,0000000023070724
	c.addi	s4,00000002
	slli	a3,s4,00000010
	lui	a5,00001000
	addi	a5,a5,+00000100
	c.mv	a1,sp
	c.srli	a3,00000010
	c.li	a2,00000004
	c.mv	a0,s1
	c.swsp	a5,00000000
	jal	ra,000000002307063C
	addi	a5,zero,+00000110
	add	s5,s5,a5
	lui	a5,0004200F
	lw	a0,a5,+000005D8
	addi	a3,zero,+00000035
	c.mv	a1,s1
	c.add	s3,s5
	lbu	a2,s3,+0000000B
	c.slli	a2,02
	c.add	a2,s6
	jal	ra,0000000023075130
	c.mv	s4,a0
	c.mv	a0,s1
	jal	ra,00000000230701A4
	c.j	000000002306BD1A

;; dns_check_entry: 2306BE5A
;;   Called from:
;;     2306C296 (in dns_recv)
;;     2306C36E (in dns_tmr)
;;     2306C374 (in dns_tmr)
;;     2306C37A (in dns_tmr)
;;     2306C384 (in dns_tmr)
;;     2306C4C4 (in dns_gethostbyname_addrtype)
dns_check_entry proc
	addi	a4,zero,+00000110
	add	a4,a0,a4
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201B
	addi	a5,s0,-00000388
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.li	a3,00000002
	addi	s0,s0,-00000388
	c.add	a5,a4
	lbu	a4,a5,+0000000A
	beq	a4,a3,000000002306BEEA

l2306BE82:
	c.li	a3,00000003
	beq	a4,a3,000000002306BF50

l2306BE88:
	c.li	a5,00000001
	bne	a4,a5,000000002306BF40

l2306BE8E:
	lui	a5,0004200F
	lhu	a4,a5,+000005E8
	addi	a3,a5,+000005E8
	addi	a2,s0,+00000440
	c.li	a1,00000002

l2306BEA0:
	c.addi	a4,00000001
	c.slli	a4,10
	c.srli	a4,00000010
	c.mv	a5,s0

l2306BEA8:
	lbu	a6,a5,+0000000A
	bne	a6,a1,000000002306BEB8

l2306BEB0:
	lhu	a6,a5,+00000008
	beq	a6,a4,000000002306BEA0

l2306BEB8:
	addi	a5,a5,+00000110
	bne	a2,a5,000000002306BEA8

l2306BEC0:
	addi	a5,zero,+00000110
	add	a5,a0,a5
	sh	a4,a3,+00000000
	c.add	s0,a5
	c.li	a5,00000002
	sh	a5,s0,+0000000A
	c.li	a5,00000001
	sh	a4,s0,+00000008
	sh	a5,s0,+0000000C

l2306BEDE:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002306BCCE

l2306BEEA:
	lbu	a4,a5,+0000000C
	c.addi	a4,FFFFFFFF
	andi	a4,a4,+000000FF
	sb	a4,a5,+0000000C
	c.bnez	a4,000000002306BF40

l2306BEFA:
	lbu	a4,a5,+0000000D
	c.li	a3,00000004
	c.addi	a4,00000001
	andi	a4,a4,+000000FF
	sb	a4,a5,+0000000D
	bne	a4,a3,000000002306BF4A

l2306BF0E:
	lbu	a4,a5,+0000000B
	c.bnez	a4,000000002306BF2A

l2306BF14:
	lui	a4,0004200F
	lw	a4,a4,+000005E4
	c.beqz	a4,000000002306BF2A

l2306BF1E:
	c.li	a4,00000001
	sb	a4,a5,+0000000B
	sh	a4,a5,+0000000C
	c.j	000000002306BEDE

l2306BF2A:
	c.li	a1,00000000
	c.mv	s1,a0
	jal	ra,000000002306BC86
	addi	a0,zero,+00000110
	add	a0,s1,a0

l2306BF3A:
	c.add	s0,a0
	sb	zero,s0,+0000000A

l2306BF40:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2306BF4A:
	sb	a4,a5,+0000000C
	c.j	000000002306BEDE

l2306BF50:
	c.lw	a5,0(a4)
	c.bnez	a4,000000002306BF5E

l2306BF54:
	addi	a5,zero,+00000110
	add	a0,a0,a5
	c.j	000000002306BF3A

l2306BF5E:
	c.addi	a4,FFFFFFFF
	c.sw	a5,0(a4)
	c.beqz	a4,000000002306BF54

l2306BF64:
	c.j	000000002306BF40

;; dns_recv: 2306BF66
dns_recv proc
	c.addi16sp	FFFFFF90
	c.swsp	s1,000000B0
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s2,00000030
	c.swsp	s3,000000AC
	c.swsp	s4,0000002C
	c.swsp	s5,000000A8
	c.swsp	s6,00000028
	c.swsp	s7,000000A4
	c.swsp	s8,00000024
	c.swsp	s9,000000A0
	c.swsp	s10,00000020
	c.swsp	s11,0000009C
	lhu	a4,a2,+00000008
	c.li	a5,0000000F
	c.mv	s1,a2
	bgeu	a5,a4,000000002306C29A

l2306BF8E:
	c.mv	s7,a3
	c.li	a2,0000000C
	c.li	a3,00000000
	c.addi4spn	a1,00000018
	c.mv	a0,s1
	jal	ra,000000002307055E
	c.li	a5,0000000C
	c.mv	s0,a0
	bne	a0,a5,000000002306C29A

l2306BFA4:
	lhu	a0,sp,+00000018
	lui	s3,0004201B
	c.li	s2,00000000
	jal	ra,000000002306BC12
	addi	a5,s3,-00000388
	c.li	a3,00000002
	addi	s3,s3,-00000388
	c.li	a4,00000004

l2306BFBE:
	lbu	a2,a5,+0000000A
	andi	s6,s2,+000000FF
	bne	a2,a3,000000002306C2D0

l2306BFCA:
	lhu	a2,a5,+00000008
	bne	a2,a0,000000002306C2D0

l2306BFD2:
	lhu	a0,sp,+0000001C
	jal	ra,000000002306BC12
	c.mv	s4,a0
	lhu	a0,sp,+0000001E
	jal	ra,000000002306BC12
	lb	a5,sp,+0000001A
	c.mv	s5,a0
	bge	a5,zero,000000002306C29A

l2306BFEE:
	c.li	a5,00000001
	bne	s4,a5,000000002306C29A

l2306BFF4:
	addi	s4,zero,+00000110
	add	s4,s2,s4
	lui	s8,0004200F
	addi	a5,s8,+000005E0
	addi	s8,s8,+000005E0
	add	a4,s3,s4
	lbu	a4,a4,+0000000B
	c.slli	a4,02
	c.add	a5,a4
	c.lw	a5,0(a5)
	lw	a4,s7,+00000000
	bne	a4,a5,000000002306C29A

l2306C01E:
	addi	s7,s4,+0000000F
	c.lui	s9,00010000
	lui	s10,000230CB
	c.add	s7,s3
	c.addi	s9,FFFFFFFF
	addi	s10,s10,+000005B1
	c.li	s11,00000001

l2306C032:
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230706DE
	blt	a0,zero,000000002306C29A

l2306C03E:
	beq	s0,s9,000000002306C29A

l2306C042:
	c.addi	s0,00000001
	c.slli	s0,10
	andi	a5,a0,+000000C0
	addi	a4,zero,+000000C0
	c.srli	s0,00000010
	beq	a5,a4,000000002306C29A

l2306C054:
	add	a5,s7,a0

l2306C058:
	bne	s7,a5,000000002306C1EE

l2306C05C:
	c.mv	a1,s0
	c.mv	a0,s1
	c.addi	s7,00000001
	jal	ra,00000000230706DE
	blt	a0,zero,000000002306C29A

l2306C06A:
	c.bnez	a0,000000002306C032

l2306C06C:
	c.lui	s9,00010000
	addi	a5,s9,-00000001
	beq	s0,a5,000000002306C29A

l2306C076:
	addi	s7,s0,+00000001
	c.slli	s7,10
	srli	s7,s7,00000010
	beq	s7,a5,000000002306C29A

l2306C084:
	c.mv	a3,s7
	c.li	a2,00000004
	c.addi4spn	a1,00000010
	c.mv	a0,s1
	jal	ra,000000002307055E
	c.li	a5,00000004
	bne	a0,a5,000000002306C29A

l2306C096:
	lhu	a5,sp,+00000012
	addi	a4,zero,+00000100
	bne	a5,a4,000000002306C29A

l2306C0A2:
	lhu	a4,sp,+00000010
	bne	a4,a5,000000002306C29A

l2306C0AA:
	c.addi	s9,FFFFFFFB
	bltu	s9,s7,000000002306C29A

l2306C0B0:
	lbu	a5,sp,+0000001B
	c.andi	a5,0000000F
	bne	a5,zero,000000002306C23C

l2306C0BA:
	c.addi	s0,00000005
	c.lui	s7,00010000
	c.slli	s0,10
	c.srli	s0,00000010
	addi	s10,zero,+000000C0
	addi	s8,s7,-00000001
	addi	s11,s7,-0000000B
	addi	s9,zero,+00000100

l2306C0D2:
	beq	s5,zero,000000002306C24C

l2306C0D6:
	lhu	a4,s1,+00000008
	bgeu	s0,a4,000000002306C24C

l2306C0DE:
	addi	a0,s0,+00000001
	slli	a3,a0,00000010
	c.srli	a3,00000010
	c.mv	a1,s0
	c.mv	a0,s1
	c.swsp	a3,00000084
	jal	ra,00000000230706DE
	blt	a0,zero,000000002306C29A

l2306C0F6:
	c.lwsp	a2,000000A4
	beq	a3,zero,000000002306C29A

l2306C0FC:
	andi	a5,a0,+000000C0
	beq	a5,s10,000000002306C2A2

l2306C104:
	lhu	a5,s1,+00000008
	c.add	a0,a3
	bge	a0,a5,000000002306C29A

l2306C10E:
	slli	s0,a0,00000010
	c.srli	s0,00000010
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230706DE
	blt	a0,zero,000000002306C29A

l2306C120:
	c.bnez	a0,000000002306C0DE

l2306C122:
	beq	s0,s8,000000002306C29A

l2306C126:
	addi	a4,s0,+00000001
	c.slli	a4,10
	c.srli	a4,00000010
	beq	a4,s8,000000002306C29A

l2306C132:
	c.mv	a3,a4
	c.li	a2,0000000A
	c.addi4spn	a1,00000024
	c.mv	a0,s1
	c.swsp	a4,00000084
	jal	ra,000000002307055E
	c.li	a3,0000000A
	bne	a0,a3,000000002306C29A

l2306C146:
	c.lwsp	a2,000000C4
	bltu	s11,a4,000000002306C29A

l2306C14C:
	addi	a5,s0,+0000000B
	slli	s0,a5,00000010
	lhu	a5,sp,+00000026
	c.srli	s0,00000010
	lhu	a0,sp,+0000002C
	bne	a5,s9,000000002306C2AC

l2306C162:
	lhu	a5,sp,+00000024
	bne	a5,s9,000000002306C2AC

l2306C16A:
	addi	a5,zero,+00000400
	bne	a0,a5,000000002306C2AC

l2306C172:
	c.mv	a3,s0
	c.li	a2,00000004
	c.addi4spn	a1,00000014
	c.mv	a0,s1
	jal	ra,000000002307055E
	c.li	a5,00000004
	bne	a0,a5,000000002306C29A

l2306C184:
	addi	a5,zero,+00000110
	add	a5,s2,a5
	lui	s0,0004201B
	addi	s3,s0,-00000388
	c.mv	a0,s1
	addi	s0,s0,-00000388
	c.add	s3,a5
	c.lwsp	s4,000000E4
	sw	a5,s3,+00000004
	jal	ra,00000000230701A4
	c.lwsp	s0,00000154
	jal	ra,000000002306BC20
	c.li	a5,00000003
	sb	a5,s3,+0000000A
	lui	a5,00000094
	addi	a5,a5,-00000580
	bltu	a5,a0,000000002306C2A6

l2306C1BE:
	sw	a0,s3,+00000000

l2306C1C2:
	addi	a1,s4,+00000004
	c.add	a1,s0
	c.mv	a0,s6
	jal	ra,000000002306BC86
	addi	a5,zero,+00000110
	add	s2,s2,a5
	c.add	s2,s0
	lw	a5,s2,+00000000
	c.bnez	a5,000000002306C268

l2306C1DE:
	lbu	a4,s2,+0000000A
	c.li	a5,00000003
	bne	a4,a5,000000002306C268

l2306C1E8:
	sb	zero,s2,+0000000A
	c.j	000000002306C268

l2306C1EE:
	c.mv	a1,s0
	c.mv	a0,s1
	c.swsp	a5,00000084
	jal	ra,00000000230706DE
	blt	a0,zero,000000002306C29A

l2306C1FC:
	lbu	a4,s7,+00000000
	c.lwsp	a2,000000E4
	add	a3,a4,s10
	lbu	a3,a3,+00000000
	c.andi	a3,00000003
	bne	a3,s11,000000002306C214

l2306C210:
	addi	a4,a4,+00000020

l2306C214:
	andi	a0,a0,+000000FF
	add	a3,s10,a0
	lbu	a3,a3,+00000000
	c.andi	a3,00000003
	bne	a3,s11,000000002306C22A

l2306C226:
	addi	a0,a0,+00000020

l2306C22A:
	bne	a4,a0,000000002306C29A

l2306C22E:
	beq	s0,s9,000000002306C29A

l2306C232:
	c.addi	s0,00000001
	c.slli	s0,10
	c.srli	s0,00000010
	c.addi	s7,00000001
	c.j	000000002306C058

l2306C23C:
	addi	a5,zero,+00000110
	add	a5,s2,a5
	c.add	a5,s3
	lbu	a4,a5,+0000000B
	c.beqz	a4,000000002306C286

l2306C24C:
	c.mv	a0,s1
	jal	ra,00000000230701A4
	c.li	a1,00000000
	c.mv	a0,s6
	jal	ra,000000002306BC86
	addi	a5,zero,+00000110
	add	s2,s2,a5
	c.add	s3,s2
	sb	zero,s3,+0000000A

l2306C268:
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.lwsp	t0,00000134
	c.lwsp	ra,00000158
	c.lwsp	t4,00000068
	c.lwsp	s9,00000088
	c.lwsp	s5,000000A8
	c.lwsp	a7,000000C8
	c.lwsp	a3,000000E8
	c.lwsp	s1,0000000C
	c.lwsp	t0,0000002C
	c.lwsp	ra,0000004C
	c.lwsp	t3,0000017C
	c.addi16sp	00000070
	c.jr	ra

l2306C286:
	lw	a4,s8,+00000004
	c.beqz	a4,000000002306C24C

l2306C28C:
	addi	a4,zero,+00000301
	sh	a4,a5,+0000000C
	c.mv	a0,s6
	jal	ra,000000002306BE5A

l2306C29A:
	c.mv	a0,s1
	jal	ra,00000000230701A4
	c.j	000000002306C268

l2306C2A2:
	c.mv	s0,a3
	c.j	000000002306C122

l2306C2A6:
	sw	a5,s3,+00000000
	c.j	000000002306C1C2

l2306C2AC:
	jal	ra,000000002306BC12
	c.add	a0,s0
	bge	a0,s7,000000002306C29A

l2306C2B6:
	lhu	a0,sp,+0000002C
	c.addi	s5,FFFFFFFF
	c.slli	s5,10
	jal	ra,000000002306BC12
	c.add	a0,s0
	slli	s0,a0,00000010
	c.srli	s0,00000010
	srli	s5,s5,00000010
	c.j	000000002306C0D2

l2306C2D0:
	c.addi	s2,00000001
	addi	a5,a5,+00000110
	bne	s2,a4,000000002306BFBE

l2306C2DA:
	c.j	000000002306C29A

;; dns_init: 2306C2DC
;;   Called from:
;;     2306C86A (in lwip_init)
dns_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	addi	s0,s0,+000005D8
	c.lw	s0,0(a5)
	c.swsp	ra,00000084
	c.bnez	a5,000000002306C31C

l2306C2EE:
	addi	a0,zero,+0000002E
	jal	ra,000000002307525E
	lui	a1,000230CC
	c.li	a2,00000000
	addi	a1,a1,-00000524
	c.sw	s0,0(a0)
	jal	ra,0000000023074DC4
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a1,0002306C
	c.li	a2,00000000
	addi	a1,a1,-0000009A
	c.addi	sp,00000010
	jal	zero,00000000230751F8

l2306C31C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; dns_setserver: 2306C324
;;   Called from:
;;     230248C0 (in stateConnectedIPNoEnter)
;;     230248CA (in stateConnectedIPNoEnter)
;;     2306D276 (in dhcp_handle_ack.isra.3)
;;     2306D28C (in dhcp_handle_ack.isra.3)
dns_setserver proc
	c.li	a5,00000001
	bltu	a5,a0,000000002306C33C

l2306C32A:
	lui	a5,0004200F
	addi	a5,a5,+000005E0
	c.slli	a0,02
	c.add	a5,a0
	c.beqz	a1,000000002306C33E

l2306C338:
	c.lw	a1,0(a4)

l2306C33A:
	c.sw	a5,0(a4)

l2306C33C:
	c.jr	ra

l2306C33E:
	lui	a4,000230CC
	lw	a4,a4,-00000524
	c.j	000000002306C33A

;; dns_getserver: 2306C348
;;   Called from:
;;     23027B2E (in wifi_mgmr_sta_dns_get)
;;     23027B38 (in wifi_mgmr_sta_dns_get)
;;     23028CE0 (in netif_status_callback)
;;     23028CEA (in netif_status_callback)
dns_getserver proc
	c.li	a5,00000001
	bltu	a5,a0,000000002306C35E

l2306C34E:
	slli	a5,a0,00000002
	lui	a0,0004200F
	addi	a0,a0,+000005E0
	c.add	a0,a5
	c.jr	ra

l2306C35E:
	lui	a0,000230CC
	addi	a0,a0,-00000524
	c.jr	ra

;; dns_tmr: 2306C368
dns_tmr proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,000000002306BE5A
	c.li	a0,00000001
	jal	ra,000000002306BE5A
	c.li	a0,00000002
	jal	ra,000000002306BE5A
	c.lwsp	a2,00000020
	c.li	a0,00000003
	c.addi	sp,00000010
	jal	zero,000000002306BE5A

;; dns_gethostbyname_addrtype: 2306C388
;;   Called from:
;;     2306C50E (in dns_gethostbyname)
;;     23076B4E (in lwip_netconn_do_gethostbyname)
dns_gethostbyname_addrtype proc
	c.bnez	a1,000000002306C3B0

l2306C38A:
	c.li	a4,FFFFFFF0
	c.mv	a0,a4
	c.jr	ra

l2306C390:
	c.li	a4,FFFFFFF0

l2306C392:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.lwsp	zero,0000004C
	c.mv	a0,a4
	c.addi16sp	00000030
	c.jr	ra

l2306C3B0:
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	c.mv	s2,a0
	c.beqz	a0,000000002306C390

l2306C3CE:
	lbu	a5,a0,+00000000
	c.beqz	a5,000000002306C390

l2306C3D4:
	lui	a5,0004200F
	lw	a5,a5,+000005D8
	c.beqz	a5,000000002306C390

l2306C3DE:
	c.mv	s5,a3
	c.mv	s4,a2
	c.mv	s7,a1
	jal	ra,00000000230A4220
	addi	a5,zero,+000000FF
	c.mv	s3,a0
	bltu	a5,a0,000000002306C390

l2306C3F2:
	c.mv	a1,s7
	c.mv	a0,s2
	jal	ra,000000002306F374
	c.li	a4,00000000
	c.bnez	a0,000000002306C392

l2306C3FE:
	lui	s0,0004201B
	addi	s8,s0,-00000388
	addi	s9,s0,-00000388
	addi	s6,s0,-00000388
	c.li	s1,00000000
	c.li	s10,00000003
	c.li	s0,00000004

l2306C414:
	lbu	a5,s9,+0000000A
	bne	a5,s10,000000002306C442

l2306C41C:
	addi	a2,zero,+00000100
	addi	a1,s9,+0000000F
	c.mv	a0,s2
	jal	ra,000000002306BC44
	c.bnez	a0,000000002306C442

l2306C42C:
	addi	s0,zero,+00000110
	add	s1,s1,s0
	c.li	a4,00000000
	add	s0,s6,s1
	c.lw	s0,4(a5)
	sw	a5,s7,+00000000
	c.j	000000002306C392

l2306C442:
	c.addi	s1,00000001
	addi	s9,s9,+00000110
	bne	s1,s0,000000002306C414

l2306C44C:
	lui	a5,0004200F
	lw	a5,a5,+000005E0
	c.li	a4,FFFFFFFA
	c.beqz	a5,000000002306C392

l2306C458:
	lui	s7,0004200F
	lbu	a3,s7,+000005DC
	c.li	a5,00000000
	c.li	s1,00000004
	c.li	a2,00000000
	addi	s7,s7,+000005DC
	c.li	a6,00000003
	c.li	a0,00000004

l2306C46E:
	lbu	a4,s8,+0000000A
	andi	a1,a5,+000000FF
	c.bnez	a4,000000002306C4CC

l2306C478:
	addi	s0,zero,+00000110
	add	a5,a5,s0
	c.mv	s1,a1
	add	s0,s6,a5

l2306C486:
	c.li	a5,00000001
	sb	a5,s0,+0000000A
	lui	a5,0004201B
	slli	a4,s1,00000003
	addi	a5,a5,-000003A8
	c.add	a5,a4
	sb	a3,s0,+0000000E
	sw	s4,a5,+00000000
	sw	s5,a5,+00000004
	c.mv	a2,s3
	c.mv	a1,s2
	addi	a0,s0,+0000000F
	jal	ra,00000000230A382C
	lbu	a5,s7,+00000000
	c.add	s0,s3
	sb	zero,s0,+0000000F
	c.addi	a5,00000001
	c.mv	a0,s1
	sb	a5,s7,+00000000
	jal	ra,000000002306BE5A
	c.li	a4,FFFFFFFB
	c.j	000000002306C392

l2306C4CC:
	bne	a4,a6,000000002306C4E4

l2306C4D0:
	lbu	a4,s8,+0000000E
	sub	a4,a3,a4
	andi	a4,a4,+000000FF
	bgeu	a2,a4,000000002306C4E4

l2306C4E0:
	c.mv	s1,a1
	c.mv	a2,a4

l2306C4E4:
	c.addi	a5,00000001
	addi	s8,s8,+00000110
	bne	a5,a0,000000002306C46E

l2306C4EE:
	c.li	a4,FFFFFFFF
	beq	s1,a5,000000002306C392

l2306C4F4:
	addi	s0,zero,+00000110
	add	s0,s1,s0
	c.li	a5,00000003
	c.li	a4,FFFFFFFF
	c.add	s0,s6
	lbu	a2,s0,+0000000A
	bne	a2,a5,000000002306C392

l2306C50A:
	c.j	000000002306C486

;; dns_gethostbyname: 2306C50C
;;   Called from:
;;     23079156 (in sntp_request)
;;     230862DE (in httpc_get_file_dns)
dns_gethostbyname proc
	c.li	a4,00000000
	jal	zero,000000002306C388

;; lwip_standard_chksum: 2306C512
;;   Called from:
;;     2306C666 (in inet_chksum_pseudo)
;;     2306C744 (in inet_chksum_pseudo_partial)
;;     2306C79A (in inet_chksum)
;;     2306C7F6 (in inet_chksum_pbuf)
;;     2306C842 (in lwip_chksum_copy)
lwip_standard_chksum proc
	c.addi	sp,FFFFFFF0
	sh	zero,sp,+0000000E
	andi	a3,a0,+00000001
	c.beqz	a3,000000002306C52E

l2306C51E:
	bge	zero,a1,000000002306C52E

l2306C522:
	lbu	a5,a0,+00000000
	c.addi	a1,FFFFFFFF
	c.addi	a0,00000001
	sb	a5,sp,+0000000F

l2306C52E:
	andi	a5,a0,+00000003
	c.beqz	a5,000000002306C544

l2306C534:
	c.li	a4,00000001
	c.li	a5,00000000
	bge	a4,a1,000000002306C544

l2306C53C:
	lhu	a5,a0,+00000000
	c.addi	a1,FFFFFFFE
	c.addi	a0,00000002

l2306C544:
	c.li	a2,00000007

l2306C546:
	blt	a2,a1,000000002306C598

l2306C54A:
	srli	a4,a5,00000010
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,a4
	c.li	a4,00000001

l2306C556:
	blt	a4,a1,000000002306C5B4

l2306C55A:
	bne	a1,a4,000000002306C566

l2306C55E:
	lbu	a4,a0,+00000000
	sb	a4,sp,+0000000E

l2306C566:
	lhu	a0,sp,+0000000E
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	c.add	a0,a5
	srli	a5,a0,00000010
	c.and	a0,a4
	c.add	a5,a0
	srli	a0,a5,00000010
	c.and	a5,a4
	c.add	a0,a5
	c.beqz	a3,000000002306C590

l2306C582:
	slli	a5,a0,00000008
	c.srli	a0,00000008
	c.and	a4,a5
	andi	a0,a0,+000000FF
	c.or	a0,a4

l2306C590:
	c.slli	a0,10
	c.srli	a0,00000010
	c.addi	sp,00000010
	c.jr	ra

l2306C598:
	c.lw	a0,0(a4)
	c.add	a4,a5
	bgeu	a4,a5,000000002306C5A2

l2306C5A0:
	c.addi	a4,00000001

l2306C5A2:
	c.addi	a0,00000008
	lw	a5,a0,-00000004
	c.add	a5,a4
	bgeu	a5,a4,000000002306C5B0

l2306C5AE:
	c.addi	a5,00000001

l2306C5B0:
	c.addi	a1,FFFFFFF8
	c.j	000000002306C546

l2306C5B4:
	c.addi	a0,00000002
	lhu	a2,a0,-00000002
	c.addi	a1,FFFFFFFE
	c.add	a5,a2
	c.j	000000002306C556

;; inet_chksum_pseudo: 2306C5C0
;;   Called from:
;;     2306C694 (in ip_chksum_pseudo)
inet_chksum_pseudo proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.lw	a4,0(a4)
	c.lw	a3,0(a3)
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	and	s0,a4,a5
	c.srli	a4,00000010
	c.add	s0,a4
	and	a4,a3,a5
	c.add	s0,a4
	c.srli	a3,00000010
	c.add	a3,s0
	srli	s0,a3,00000010
	c.and	a3,a5
	c.add	a3,s0
	srli	s0,a3,00000010
	c.and	a3,a5
	c.mv	s3,a0
	c.mv	s4,a1
	c.mv	s2,a2
	c.add	s0,a3
	c.li	s5,00000000
	c.mv	s1,a5

l2306C604:
	bne	s3,zero,000000002306C65E

l2306C608:
	beq	s5,zero,000000002306C61E

l2306C60C:
	c.lui	a4,00010000
	slli	a5,s0,00000008
	c.addi	a4,FFFFFFFF
	c.srli	s0,00000008
	c.and	a5,a4
	andi	s0,s0,+000000FF
	c.or	s0,a5

l2306C61E:
	c.mv	a0,s4
	jal	ra,000000002306BC12
	c.mv	s1,a0
	c.mv	a0,s2
	jal	ra,000000002306BC12
	c.add	a0,s1
	c.lui	a5,00010000
	c.add	s0,a0
	c.addi	a5,FFFFFFFF
	srli	a0,s0,00000010
	c.and	s0,a5
	c.add	s0,a0
	srli	a0,s0,00000010
	c.and	s0,a5
	c.add	s0,a0
	xori	a0,s0,-00000001
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.slli	a0,10
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.srli	a0,00000010
	c.addi16sp	00000020
	c.jr	ra

l2306C65E:
	lhu	a1,s3,+0000000A
	lw	a0,s3,+00000004
	jal	ra,000000002306C512
	c.add	s0,a0
	srli	a5,s0,00000010
	c.and	s0,s1
	c.add	s0,a5
	lhu	a5,s3,+0000000A
	c.andi	a5,00000001
	c.beqz	a5,000000002306C68E

l2306C67C:
	slli	a5,s0,00000008
	c.srli	s0,00000008
	c.and	a5,s1
	andi	s0,s0,+000000FF
	xori	s5,s5,+00000001
	c.or	s0,a5

l2306C68E:
	lw	s3,s3,+00000000
	c.j	000000002306C604

;; ip_chksum_pseudo: 2306C694
;;   Called from:
;;     23072AB2 (in tcp_input)
;;     230738FE (in tcp_output_control_segment)
;;     23074D26 (in udp_input)
;;     2307501E (in udp_sendto_if_src_chksum)
ip_chksum_pseudo proc
	jal	zero,000000002306C5C0

;; inet_chksum_pseudo_partial: 2306C698
;;   Called from:
;;     2306C792 (in ip_chksum_pseudo_partial)
inet_chksum_pseudo_partial proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.mv	s2,a2
	c.lw	a5,0(a2)
	c.lw	a4,0(a4)
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	and	s0,a2,a5
	c.srli	a2,00000010
	c.add	s0,a2
	and	a2,a4,a5
	c.add	s0,a2
	c.srli	a4,00000010
	c.add	a4,s0
	srli	s0,a4,00000010
	c.and	a4,a5
	c.add	a4,s0
	srli	s0,a4,00000010
	c.and	a4,a5
	c.mv	s4,a0
	c.mv	s5,a1
	c.add	s0,a4
	c.li	s6,00000000
	c.mv	s1,a5

l2306C6DE:
	bne	s4,zero,000000002306C728

l2306C6E2:
	bne	s6,zero,000000002306C77E

l2306C6E6:
	c.mv	a0,s5
	jal	ra,000000002306BC12
	c.mv	s1,a0
	c.mv	a0,s2
	jal	ra,000000002306BC12
	c.add	a0,s1
	c.lui	a5,00010000
	c.add	s0,a0
	c.addi	a5,FFFFFFFF
	srli	a0,s0,00000010
	c.and	s0,a5
	c.add	s0,a0
	srli	a0,s0,00000010
	c.and	s0,a5
	c.add	s0,a0
	xori	a0,s0,-00000001
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.slli	a0,10
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.srli	a0,00000010
	c.addi16sp	00000030
	c.jr	ra

l2306C728:
	c.beqz	a3,000000002306C6E2

l2306C72A:
	lhu	a5,s4,+0000000A
	c.mv	s3,a5
	bgeu	a3,a5,000000002306C736

l2306C734:
	c.mv	s3,a3

l2306C736:
	c.slli	s3,10
	lw	a0,s4,+00000004
	srli	s3,s3,00000010
	c.mv	a1,s3
	c.swsp	a3,00000084
	jal	ra,000000002306C512
	c.add	s0,a0
	srli	a5,s0,00000010
	c.lwsp	a2,000000A4
	c.and	s0,s1
	c.add	s0,a5
	lhu	a5,s4,+0000000A
	sub	s3,a3,s3
	slli	a3,s3,00000010
	c.andi	a5,00000001
	c.srli	a3,00000010
	c.beqz	a5,000000002306C778

l2306C766:
	slli	a5,s0,00000008
	c.srli	s0,00000008
	c.and	a5,s1
	andi	s0,s0,+000000FF
	xori	s6,s6,+00000001
	c.or	s0,a5

l2306C778:
	lw	s4,s4,+00000000
	c.j	000000002306C6DE

l2306C77E:
	c.lui	a4,00010000
	slli	a5,s0,00000008
	c.addi	a4,FFFFFFFF
	c.srli	s0,00000008
	c.and	a5,a4
	andi	s0,s0,+000000FF
	c.or	s0,a5
	c.j	000000002306C6E6

;; ip_chksum_pseudo_partial: 2306C792
;;   Called from:
;;     230744F8 (in tcp_output)
;;     23074FAA (in udp_sendto_if_src_chksum)
ip_chksum_pseudo_partial proc
	jal	zero,000000002306C698

;; inet_chksum: 2306C796
;;   Called from:
;;     2306E6CA (in igmp_send)
;;     2306E918 (in igmp_input)
;;     2306EE78 (in ip4_input)
;;     23073D08 (in tcp_split_unsent_seg)
;;     23073E4E (in tcp_split_unsent_seg)
;;     23076DEE (in icmp_input)
;;     23076EFC (in icmp_dest_unreach)
inet_chksum proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002306C512
	c.lwsp	a2,00000020
	xori	a0,a0,-00000001
	c.slli	a0,10
	c.srli	a0,00000010
	c.addi	sp,00000010
	c.jr	ra

;; inet_chksum_pbuf: 2306C7AC
;;   Called from:
;;     23076CB4 (in icmp_input)
inet_chksum_pbuf proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.lui	s2,00010000
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.li	s3,00000000
	c.li	s0,00000000
	c.addi	s2,FFFFFFFF

l2306C7C2:
	c.bnez	s1,000000002306C7F0

l2306C7C4:
	beq	s3,zero,000000002306C7DA

l2306C7C8:
	c.lui	a4,00010000
	slli	a5,s0,00000008
	c.addi	a4,FFFFFFFF
	c.srli	s0,00000008
	c.and	a5,a4
	andi	s0,s0,+000000FF
	c.or	s0,a5

l2306C7DA:
	xori	a0,s0,-00000001
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.slli	a0,10
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.srli	a0,00000010
	c.addi16sp	00000020
	c.jr	ra

l2306C7F0:
	lhu	a1,s1,+0000000A
	c.lw	s1,4(a0)
	jal	ra,000000002306C512
	c.add	s0,a0
	srli	a5,s0,00000010
	and	s0,s0,s2
	c.add	s0,a5
	lhu	a5,s1,+0000000A
	c.andi	a5,00000001
	c.beqz	a5,000000002306C822

l2306C80E:
	slli	a5,s0,00000008
	c.srli	s0,00000008
	and	a5,a5,s2
	andi	s0,s0,+000000FF
	xori	s3,s3,+00000001
	c.or	s0,a5

l2306C822:
	c.lw	s1,0(s1)
	c.j	000000002306C7C2

;; lwip_chksum_copy: 2306C826
;;   Called from:
;;     2306B74C (in lwip_sendto)
;;     23073ADC (in tcp_write)
;;     23073C26 (in tcp_write)
lwip_chksum_copy proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a2
	jal	ra,00000000230A382C
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002306C512

;; lwip_init: 2306C846
;;   Called from:
;;     2306BBC8 (in tcpip_init)
lwip_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023070B8E
	jal	ra,000000002306A744
	jal	ra,000000002306F594
	jal	ra,000000002306FAF2
	jal	ra,000000002306FC54
	jal	ra,0000000023074B80
	jal	ra,0000000023070C48
	jal	ra,000000002306E794
	jal	ra,000000002306C2DC
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023074A84

;; dhcp_set_state: 2306C876
;;   Called from:
;;     2306CA8E (in dhcp_discover)
;;     2306CBC8 (in dhcp_check)
;;     2306CCC6 (in dhcp_bind)
;;     2306CE48 (in dhcp_reboot)
;;     2306CFD6 (in dhcp_select)
;;     2306D6BC (in dhcp_recv)
;;     2306D7DC (in dhcp_arp_reply)
;;     2306D8A8 (in dhcp_renew)
;;     2306DAE0 (in dhcp_release_and_stop)
;;     2306DB68 (in dhcp_start)
;;     2306DC4A (in dhcp_coarse_tmr)
dhcp_set_state proc
	lbu	a5,a0,+00000005
	beq	a5,a1,000000002306C88A

l2306C87E:
	sb	a1,a0,+00000005
	sb	zero,a0,+00000006
	sh	zero,a0,+00000008

l2306C88A:
	c.jr	ra

;; dhcp_option_short: 2306C88C
;;   Called from:
;;     2306CADA (in dhcp_discover)
;;     2306CE98 (in dhcp_reboot)
;;     2306D026 (in dhcp_select)
;;     2306D8F6 (in dhcp_renew)
;;     2306DC98 (in dhcp_coarse_tmr)
dhcp_option_short proc
	add	a5,a1,a0
	srli	a4,a2,00000008
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.addi	a0,00000002
	c.add	a1,a5
	c.slli	a0,10
	sb	a2,a1,+00000000
	c.srli	a0,00000010
	c.jr	ra

;; dhcp_option_long: 2306C8AE
;;   Called from:
;;     2306CED0 (in dhcp_reboot)
;;     2306D060 (in dhcp_select)
;;     2306D098 (in dhcp_select)
;;     2306D830 (in dhcp_arp_reply)
;;     2306DA9A (in dhcp_release_and_stop)
dhcp_option_long proc
	add	a5,a1,a0
	srli	a4,a2,00000018
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,a1
	srli	a4,a2,00000010
	sb	a4,a5,+00000000
	addi	a5,a0,+00000002
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,a1
	srli	a4,a2,00000008
	sb	a4,a5,+00000000
	addi	a5,a0,+00000003
	c.slli	a5,10
	c.srli	a5,00000010
	c.addi	a0,00000004
	c.add	a1,a5
	c.slli	a0,10
	sb	a2,a1,+00000000
	c.srli	a0,00000010
	c.jr	ra

;; dhcp_create_msg: 2306C8F4
;;   Called from:
;;     2306CA9C (in dhcp_discover)
;;     2306CE56 (in dhcp_reboot)
;;     2306CFE4 (in dhcp_select)
;;     2306D7EA (in dhcp_arp_reply)
;;     2306D8B6 (in dhcp_renew)
;;     2306DA52 (in dhcp_release_and_stop)
;;     2306DC58 (in dhcp_coarse_tmr)
dhcp_create_msg proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.bnez	a0,000000002306C920

l2306C908:
	c.li	s5,00000000

l2306C90A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s5
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	c.jr	ra

l2306C920:
	c.beqz	a1,000000002306C908

l2306C922:
	c.mv	s2,a2
	c.mv	s3,a1
	c.mv	s1,a0
	addi	a2,zero,+00000280
	addi	a1,zero,+00000134
	addi	a0,zero,+000000B6
	c.mv	s4,a3
	jal	ra,0000000023070226
	c.mv	s5,a0
	c.beqz	a0,000000002306C908

l2306C93E:
	c.li	a5,00000003
	bne	s2,a5,000000002306C94C

l2306C944:
	lbu	a5,s3,+00000005
	bne	a5,s2,000000002306C966

l2306C94C:
	lbu	a5,s3,+00000006
	lui	s0,0004200F
	addi	s0,s0,+000005F4
	c.bnez	a5,000000002306C960

l2306C95A:
	jal	ra,0000000023065C28
	c.sw	s0,0(a0)

l2306C960:
	c.lw	s0,0(a5)
	sw	a5,s3,+00000000

l2306C966:
	lw	s0,s5,+00000004
	addi	a2,zero,+00000134
	c.li	a1,00000000
	c.li	s6,00000001
	c.mv	a0,s0
	jal	ra,00000000230A3A68
	sb	s6,s0,+00000000
	sb	s6,s0,+00000001
	lbu	a5,s1,+00000040
	sb	a5,s0,+00000002
	lw	a0,s3,+00000000
	jal	ra,000000002306BC20
	srli	a5,a0,00000008
	sb	a0,s0,+00000004
	sb	a5,s0,+00000005
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a5,s0,+00000006
	sb	a0,s0,+00000007
	c.li	a5,00000004
	beq	s2,a5,000000002306C9D0

l2306C9B0:
	addi	a5,s2,-00000007
	andi	a5,a5,+000000FF
	bgeu	s6,a5,000000002306C9D0

l2306C9BC:
	c.li	a5,00000003
	bne	s2,a5,000000002306C9EC

l2306C9C2:
	lbu	a5,s3,+00000005
	c.addi	a5,FFFFFFFC
	andi	a5,a5,+000000FF
	bltu	s6,a5,000000002306C9EC

l2306C9D0:
	c.lw	s1,4(a5)
	srli	a4,a5,00000008
	sb	a5,s0,+0000000C
	sb	a4,s0,+0000000D
	srli	a4,a5,00000010
	c.srli	a5,00000018
	sb	a4,s0,+0000000E
	sb	a5,s0,+0000000F

l2306C9EC:
	addi	a5,s1,+0000003A
	addi	a4,s0,+0000001C
	addi	s1,s1,+00000040

l2306C9F8:
	lbu	a3,a5,+00000000
	c.addi	a5,00000001
	c.addi	a4,00000001
	sb	a3,a4,+00000FFF
	bne	a5,s1,000000002306C9F8

l2306CA08:
	addi	a5,zero,+00000063
	sb	a5,s0,+000000EC
	addi	a4,zero,-0000007E
	sb	a5,s0,+000000EF
	addi	a5,zero,+00000035
	sb	a4,s0,+000000ED
	sb	a5,s0,+000000F0
	addi	a4,zero,+00000053
	c.li	a5,00000001
	sb	a5,s0,+000000F1
	sb	a4,s0,+000000EE
	sb	s2,s0,+000000F2
	c.li	a5,00000003
	sh	a5,s4,+00000000
	c.j	000000002306C90A

;; dhcp_option_trailer: 2306CA3E
;;   Called from:
;;     2306CB34 (in dhcp_discover)
;;     2306CF36 (in dhcp_reboot)
;;     2306D0FE (in dhcp_select)
;;     2306D83C (in dhcp_arp_reply)
;;     2306D95E (in dhcp_renew)
;;     2306DAA6 (in dhcp_release_and_stop)
;;     2306DCF8 (in dhcp_coarse_tmr)
dhcp_option_trailer proc
	addi	a5,a0,+00000001
	c.slli	a5,10
	add	a4,a1,a0
	c.srli	a5,00000010
	c.li	a3,FFFFFFFF
	sb	a3,a4,+00000000
	c.add	a1,a5
	addi	a4,zero,+00000043

l2306CA56:
	bgeu	a4,a5,000000002306CA68

l2306CA5A:
	addi	a1,a5,+000000F0
	c.slli	a1,10
	c.srli	a1,00000010
	c.mv	a0,a2
	jal	zero,0000000023070384

l2306CA68:
	c.addi	a5,00000001
	c.slli	a5,10
	sb	zero,a1,+00000000
	c.srli	a5,00000010
	c.addi	a1,00000001
	c.j	000000002306CA56

;; dhcp_discover: 2306CA76
;;   Called from:
;;     2306D6D8 (in dhcp_recv)
;;     2306D79C (in dhcp_network_changed)
;;     2306DB88 (in dhcp_start)
;;     2306DE14 (in dhcp_fine_tmr)
dhcp_discover proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.lw	a0,40(s1)
	c.mv	s3,a0
	c.li	a1,00000006
	c.mv	a0,s1
	sw	zero,s1,+0000001C
	jal	ra,000000002306C876
	addi	a3,sp,+0000000E
	c.li	a2,00000001
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,000000002306C8F4
	c.beqz	a0,000000002306CB62

l2306CAA2:
	c.lw	a0,4(s0)
	lhu	a5,sp,+0000000E
	c.mv	s2,a0
	addi	s0,s0,+000000F0
	add	a4,s0,a5
	addi	a0,a5,+00000002
	c.addi	a5,00000001
	c.slli	a5,10
	addi	a3,zero,+00000039
	c.srli	a5,00000010
	sb	a3,a4,+00000000
	c.add	a5,s0
	c.li	a4,00000002
	sb	a4,a5,+00000000
	lhu	a2,s3,+00000038
	c.slli	a0,10
	c.srli	a0,00000010
	c.mv	a1,s0
	sh	a0,sp,+0000000E
	jal	ra,000000002306C88C
	add	a5,s0,a0
	addi	a4,zero,+00000037
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,s0
	c.li	a4,00000004
	sb	a4,a5,+00000000
	c.addi	a0,00000002
	lui	a3,000230CC
	sh	a0,sp,+0000000E
	c.li	a5,00000000
	addi	a3,a3,-00000528
	c.li	a2,00000004

l2306CB0C:
	lhu	a4,sp,+0000000E
	add	a1,a3,a5
	lbu	a1,a1,+00000000
	addi	a0,a4,+00000001
	c.slli	a0,10
	c.add	a4,s0
	c.srli	a0,00000010
	sb	a1,a4,+00000000
	sh	a0,sp,+0000000E
	c.addi	a5,00000001
	bne	a5,a2,000000002306CB0C

l2306CB30:
	c.mv	a2,s2
	c.mv	a1,s0
	jal	ra,000000002306CA3E
	lui	a0,0004200F
	lw	a0,a0,+000005EC
	lui	a5,000230CC
	lui	a2,000230CC
	addi	a5,a5,-00000524
	c.mv	a4,s3
	addi	a3,zero,+00000043
	addi	a2,a2,-00000520
	c.mv	a1,s2
	jal	ra,0000000023075154
	c.mv	a0,s2
	jal	ra,00000000230701A4

l2306CB62:
	lbu	a5,s1,+00000006
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002306CB74

l2306CB6E:
	c.addi	a5,00000001
	sb	a5,s1,+00000006

l2306CB74:
	lbu	a4,s1,+00000006
	c.li	a5,00000005
	bltu	a5,a4,000000002306CBB0

l2306CB7E:
	c.li	a5,00000001
	sll	a5,a5,a4
	addi	a4,zero,+000003E8
	add	a5,a5,a4
	c.slli	a5,10
	c.srli	a5,00000010

l2306CB90:
	addi	a5,a5,+000001F3
	addi	a4,zero,+000001F4
	xor	a5,a5,a4
	c.li	a0,00000000
	sh	a5,s1,+00000008
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2306CBB0:
	c.lui	a5,0000F000
	addi	a5,a5,-000005A0
	c.j	000000002306CB90

;; dhcp_check: 2306CBB8
;;   Called from:
;;     2306D610 (in dhcp_recv)
;;     2306DE48 (in dhcp_fine_tmr)
dhcp_check proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s0,00000004
	c.lw	a0,40(s0)
	c.mv	s1,a0
	c.li	a1,00000008
	c.mv	a0,s0
	jal	ra,000000002306C876
	c.li	a2,00000000
	addi	a1,s0,+0000001C
	c.mv	a0,s1
	jal	ra,000000002306E3C8
	lbu	a5,s0,+00000006
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002306CBEA

l2306CBE4:
	c.addi	a5,00000001
	sb	a5,s0,+00000006

l2306CBEA:
	c.li	a5,00000001
	sh	a5,s0,+00000008
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; dhcp_bind: 2306CBFA
;;   Called from:
;;     2306D694 (in dhcp_recv)
;;     2306DE4E (in dhcp_fine_tmr)
dhcp_bind proc
	beq	a0,zero,000000002306CD34

l2306CBFE:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.lw	a0,40(s0)
	c.beqz	s0,000000002306CCD8

l2306CC0A:
	c.lw	s0,40(a5)
	sh	zero,s0,+00000012
	c.li	a4,FFFFFFFF
	beq	a5,a4,000000002306CC34

l2306CC16:
	c.addi	a5,0000001E
	lui	a4,000003C0
	bgeu	a5,a4,000000002306CCE2

l2306CC20:
	addi	a4,zero,+0000003C
	srl	a5,a5,a4
	slli	a4,a5,00000010
	c.srli	a4,00000010
	c.beqz	a5,000000002306CCE8

l2306CC30:
	sh	a4,s0,+00000014

l2306CC34:
	c.lw	s0,44(a5)
	c.li	a4,FFFFFFFF
	beq	a5,a4,000000002306CC62

l2306CC3C:
	c.addi	a5,0000001E
	lui	a4,000003C0
	bgeu	a5,a4,000000002306CCF0

l2306CC46:
	addi	a4,zero,+0000003C
	srl	a5,a5,a4
	slli	a4,a5,00000010
	c.srli	a4,00000010
	c.beqz	a5,000000002306CCF6

l2306CC56:
	sh	a4,s0,+0000000A

l2306CC5A:
	lhu	a5,s0,+0000000A
	sh	a5,s0,+0000000E

l2306CC62:
	c.lw	s0,48(a5)
	c.li	a4,FFFFFFFF
	beq	a5,a4,000000002306CC90

l2306CC6A:
	c.addi	a5,0000001E
	lui	a4,000003C0
	bgeu	a5,a4,000000002306CCFE

l2306CC74:
	addi	a4,zero,+0000003C
	srl	a5,a5,a4
	slli	a4,a5,00000010
	c.srli	a4,00000010
	c.beqz	a5,000000002306CD04

l2306CC84:
	sh	a4,s0,+0000000C

l2306CC88:
	lhu	a5,s0,+0000000C
	sh	a5,s0,+00000010

l2306CC90:
	lhu	a5,s0,+0000000C
	lhu	a4,s0,+0000000A
	bltu	a4,a5,000000002306CCA2

l2306CC9C:
	c.beqz	a5,000000002306CCA2

l2306CC9E:
	sh	zero,s0,+0000000A

l2306CCA2:
	lbu	a5,s0,+00000007
	c.beqz	a5,000000002306CD0C

l2306CCA8:
	c.lw	s0,32(a5)

l2306CCAA:
	c.swsp	a5,00000004
	c.lw	s0,36(a5)
	c.swsp	a5,00000084
	c.bnez	a5,000000002306CCC0

l2306CCB2:
	c.lwsp	s0,000000C4
	c.lw	s0,28(a5)
	c.and	a5,a4
	lui	a4,00001000
	c.or	a5,a4
	c.swsp	a5,00000084

l2306CCC0:
	c.mv	s1,a0
	c.li	a1,0000000A
	c.mv	a0,s0
	jal	ra,000000002306C876
	c.addi4spn	a3,0000000C
	c.addi4spn	a2,00000008
	addi	a1,s0,+0000001C
	c.mv	a0,s1
	jal	ra,000000002306FCA4

l2306CCD8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2306CCE2:
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	c.j	000000002306CC30

l2306CCE8:
	c.li	a5,00000001
	sh	a5,s0,+00000014
	c.j	000000002306CC34

l2306CCF0:
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	c.j	000000002306CC56

l2306CCF6:
	c.li	a5,00000001
	sh	a5,s0,+0000000A
	c.j	000000002306CC5A

l2306CCFE:
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	c.j	000000002306CC84

l2306CD04:
	c.li	a5,00000001
	sh	a5,s0,+0000000C
	c.j	000000002306CC88

l2306CD0C:
	lbu	a5,s0,+0000001C
	slli	a4,a5,00000018
	c.srai	a4,00000018
	blt	a4,zero,000000002306CD20

l2306CD1A:
	addi	a5,zero,+000000FF
	c.j	000000002306CCAA

l2306CD20:
	addi	a4,zero,+000000BF
	bgeu	a4,a5,000000002306CD30

l2306CD28:
	lui	a5,00001000

l2306CD2C:
	c.addi	a5,FFFFFFFF
	c.j	000000002306CCAA

l2306CD30:
	c.lui	a5,00010000
	c.j	000000002306CD2C

l2306CD34:
	c.jr	ra

;; dhcp_inc_pcb_refcount: 2306CD36
;;   Called from:
;;     2306DB4E (in dhcp_start)
dhcp_inc_pcb_refcount proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	lbu	a5,s0,+000005F0
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	addi	s0,s0,+000005F0
	c.bnez	a5,000000002306CD9A

l2306CD4E:
	lui	s1,0004200F
	jal	ra,0000000023075230
	addi	s1,s1,+000005EC
	c.sw	s1,0(a0)
	c.li	a4,FFFFFFFF
	c.beqz	a0,000000002306CDA6

l2306CD60:
	lbu	a4,a0,+00000009
	lui	s2,000230CC
	addi	a2,zero,+00000044
	ori	a4,a4,+00000020
	sb	a4,a0,+00000009
	addi	a1,s2,-00000524
	jal	ra,0000000023074DC4
	c.lw	s1,0(a0)
	addi	a2,zero,+00000043
	addi	a1,s2,-00000524
	jal	ra,0000000023075172
	c.lw	s1,0(a0)
	lui	a1,0002306D
	c.li	a2,00000000
	addi	a1,a1,+000002B2
	jal	ra,00000000230751F8

l2306CD9A:
	lbu	a5,s0,+00000000
	c.li	a4,00000000
	c.addi	a5,00000001
	sb	a5,s0,+00000000

l2306CDA6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a4
	c.addi	sp,00000010
	c.jr	ra

;; dhcp_option_hostname.isra.0: 2306CDB4
;;   Called from:
;;     2306CF2A (in dhcp_reboot)
;;     2306D0F2 (in dhcp_select)
;;     2306D952 (in dhcp_renew)
;;     2306DCEC (in dhcp_coarse_tmr)
dhcp_option_hostname.isra.0 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.lw	a2,0(a0)
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.beqz	a0,000000002306CE0E

l2306CDC4:
	jal	ra,00000000230A4220
	c.beqz	a0,000000002306CE0E

l2306CDCA:
	c.lwsp	s0,00000084
	addi	a4,zero,+00000041
	c.sub	a4,s0
	c.lw	a2,0(a2)
	c.lwsp	a2,00000064
	bgeu	a0,a4,000000002306CDDC

l2306CDDA:
	c.mv	a4,a0

l2306CDDC:
	add	a5,a1,s0
	c.li	a3,0000000C
	sb	a3,a5,+00000000
	addi	a5,s0,+00000001
	addi	a3,s0,+00000002
	c.slli	a5,10
	c.slli	a3,10
	c.srli	a5,00000010
	c.add	a5,a1
	c.srli	a3,00000010
	sb	a4,a5,+00000000
	add	a0,a2,a4
	c.mv	a5,a3

l2306CE02:
	bne	a2,a0,000000002306CE18

l2306CE06:
	add	s0,a3,a4
	c.slli	s0,10
	c.srli	s0,00000010

l2306CE0E:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2306CE18:
	c.addi	a2,00000001
	lbu	a7,a2,-00000001
	addi	a6,a5,+00000001
	c.add	a5,a1
	sb	a7,a5,+00000000
	slli	a5,a6,00000010
	c.srli	a5,00000010
	c.j	000000002306CE02

;; dhcp_reboot: 2306CE30
;;   Called from:
;;     2306D7AA (in dhcp_network_changed)
;;     2306DE62 (in dhcp_fine_tmr)
dhcp_reboot proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.lw	a0,40(s1)
	c.mv	s3,a0
	c.li	a1,00000003
	c.mv	a0,s1
	jal	ra,000000002306C876
	addi	a3,sp,+0000000E
	c.li	a2,00000003
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,000000002306C8F4
	c.li	s0,FFFFFFFF
	beq	a0,zero,000000002306CF5E

l2306CE60:
	c.lw	a0,4(s0)
	lhu	a5,sp,+0000000E
	c.mv	s2,a0
	addi	s0,s0,+000000F0
	add	a4,s0,a5
	addi	a0,a5,+00000002
	c.addi	a5,00000001
	c.slli	a5,10
	addi	a3,zero,+00000039
	c.srli	a5,00000010
	sb	a3,a4,+00000000
	c.add	a5,s0
	c.li	a4,00000002
	c.slli	a0,10
	sb	a4,a5,+00000000
	addi	a2,zero,+00000240
	c.mv	a1,s0
	c.srli	a0,00000010
	sh	a0,sp,+0000000E
	jal	ra,000000002306C88C
	add	a5,s0,a0
	addi	s4,a0,+00000002
	c.addi	a0,00000001
	c.slli	a0,10
	addi	a4,zero,+00000032
	c.srli	a0,00000010
	sb	a4,a5,+00000000
	c.add	a0,s0
	c.li	s5,00000004
	sb	s5,a0,+00000000
	c.lw	s1,28(a0)
	c.slli	s4,10
	srli	s4,s4,00000010
	sh	s4,sp,+0000000E
	jal	ra,000000002306BC20
	c.mv	a2,a0
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,000000002306C8AE
	add	a5,s0,a0
	addi	a4,zero,+00000037
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,s0
	sb	s5,a5,+00000000
	c.addi	a0,00000002
	lui	a3,000230CC
	sh	a0,sp,+0000000E
	c.li	a5,00000000
	addi	a3,a3,-00000528
	c.li	a2,00000004

l2306CF00:
	lhu	a4,sp,+0000000E
	add	a1,a3,a5
	lbu	a1,a1,+00000000
	addi	a0,a4,+00000001
	c.slli	a0,10
	c.add	a4,s0
	c.srli	a0,00000010
	sb	a1,a4,+00000000
	sh	a0,sp,+0000000E
	c.addi	a5,00000001
	bne	a5,a2,000000002306CF00

l2306CF24:
	c.mv	a1,s0
	addi	a2,s3,+00000034
	jal	ra,000000002306CDB4
	c.mv	a1,s0
	c.mv	a2,s2
	sh	a0,sp,+0000000E
	jal	ra,000000002306CA3E
	lui	a5,0004200F
	lw	a0,a5,+000005EC
	lui	a2,000230CC
	c.mv	a4,s3
	addi	a3,zero,+00000043
	addi	a2,a2,-00000520
	c.mv	a1,s2
	jal	ra,000000002307514C
	c.mv	s0,a0
	c.mv	a0,s2
	jal	ra,00000000230701A4

l2306CF5E:
	lbu	a5,s1,+00000006
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002306CF70

l2306CF6A:
	c.addi	a5,00000001
	sb	a5,s1,+00000006

l2306CF70:
	lbu	a5,s1,+00000006
	c.li	a4,00000009
	bltu	a4,a5,000000002306CFAA

l2306CF7A:
	addi	a4,zero,+000003E8
	add	a5,a5,a4
	c.slli	a5,10
	c.srli	a5,00000010

l2306CF86:
	addi	a5,a5,+000001F3
	addi	a4,zero,+000001F4
	xor	a5,a5,a4
	c.mv	a0,s0
	sh	a5,s1,+00000008
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l2306CFAA:
	c.lui	a5,00002000
	addi	a5,a5,+00000710
	c.j	000000002306CF86

;; dhcp_select: 2306CFB2
;;   Called from:
;;     2306D72E (in dhcp_recv)
;;     2306DE28 (in dhcp_fine_tmr)
dhcp_select proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.li	s0,FFFFFFF0
	beq	a0,zero,000000002306D16C

l2306CFC8:
	c.lw	a0,40(s1)
	c.li	s0,FFFFFFFA
	beq	s1,zero,000000002306D16C

l2306CFD0:
	c.mv	s2,a0
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,000000002306C876
	addi	a3,sp,+0000000E
	c.li	a2,00000003
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,000000002306C8F4
	c.mv	s3,a0
	c.li	s0,FFFFFFFF
	beq	a0,zero,000000002306D12E

l2306CFF0:
	c.lw	a0,4(s0)
	lhu	a5,sp,+0000000E
	addi	a3,zero,+00000039
	addi	s0,s0,+000000F0
	add	a4,s0,a5
	addi	a0,a5,+00000002
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a3,a4,+00000000
	c.add	a5,s0
	c.li	a4,00000002
	sb	a4,a5,+00000000
	lhu	a2,s2,+00000038
	c.slli	a0,10
	c.mv	a1,s0
	c.srli	a0,00000010
	sh	a0,sp,+0000000E
	jal	ra,000000002306C88C
	addi	a4,zero,+00000032
	add	a5,s0,a0
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,s0
	c.li	s5,00000004
	sb	s5,a5,+00000000
	addi	s4,a0,+00000002
	c.lw	s1,28(a0)
	c.slli	s4,10
	srli	s4,s4,00000010
	sh	s4,sp,+0000000E
	jal	ra,000000002306BC20
	c.mv	a2,a0
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,000000002306C8AE
	addi	a4,zero,+00000036
	add	a5,s0,a0
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,s0
	sb	s5,a5,+00000000
	addi	s4,a0,+00000002
	c.lw	s1,24(a0)
	c.slli	s4,10
	srli	s4,s4,00000010
	sh	s4,sp,+0000000E
	jal	ra,000000002306BC20
	c.mv	a2,a0
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,000000002306C8AE
	add	a5,s0,a0
	addi	a4,zero,+00000037
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,s0
	sb	s5,a5,+00000000
	c.addi	a0,00000002
	lui	a3,000230CC
	sh	a0,sp,+0000000E
	c.li	a5,00000000
	addi	a3,a3,-00000528
	c.li	a2,00000004

l2306D0C8:
	lhu	a4,sp,+0000000E
	add	a1,a3,a5
	lbu	a1,a1,+00000000
	addi	a0,a4,+00000001
	c.slli	a0,10
	c.add	a4,s0
	c.srli	a0,00000010
	sb	a1,a4,+00000000
	sh	a0,sp,+0000000E
	c.addi	a5,00000001
	bne	a5,a2,000000002306D0C8

l2306D0EC:
	c.mv	a1,s0
	addi	a2,s2,+00000034
	jal	ra,000000002306CDB4
	c.mv	a1,s0
	c.mv	a2,s3
	sh	a0,sp,+0000000E
	jal	ra,000000002306CA3E
	lui	a0,0004200F
	lw	a0,a0,+000005EC
	lui	a5,000230CC
	lui	a2,000230CC
	addi	a5,a5,-00000524
	c.mv	a4,s2
	addi	a3,zero,+00000043
	addi	a2,a2,-00000520
	c.mv	a1,s3
	jal	ra,0000000023075154
	c.mv	s0,a0
	c.mv	a0,s3
	jal	ra,00000000230701A4

l2306D12E:
	lbu	a5,s1,+00000006
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002306D140

l2306D13A:
	c.addi	a5,00000001
	sb	a5,s1,+00000006

l2306D140:
	lbu	a4,s1,+00000006
	c.li	a5,00000005
	bltu	a5,a4,000000002306D180

l2306D14A:
	c.li	a5,00000001
	sll	a5,a5,a4
	addi	a4,zero,+000003E8
	add	a5,a5,a4
	c.slli	a5,10
	c.srli	a5,00000010

l2306D15C:
	addi	a5,a5,+000001F3
	addi	a4,zero,+000001F4
	xor	a5,a5,a4
	sh	a5,s1,+00000008

l2306D16C:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l2306D180:
	c.lui	a5,0000F000
	addi	a5,a5,-000005A0
	c.j	000000002306D15C

;; dhcp_dec_pcb_refcount: 2306D188
;;   Called from:
;;     2306DAEA (in dhcp_release_and_stop)
;;     2306DB80 (in dhcp_start)
dhcp_dec_pcb_refcount proc
	lui	a4,0004200F
	addi	a4,a4,+000005F0
	lbu	a5,a4,+00000000
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,a4,+00000000
	c.bnez	a5,000000002306D1C0

l2306D1A0:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	addi	s0,s0,+000005EC
	c.lw	s0,0(a0)
	c.swsp	ra,00000084
	jal	ra,0000000023075200
	c.lwsp	a2,00000020
	sw	zero,s0,+00000000
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2306D1C0:
	c.jr	ra

;; dhcp_handle_ack.isra.3: 2306D1C2
;;   Called from:
;;     2306D602 (in dhcp_recv)
;;     2306D68E (in dhcp_recv)
dhcp_handle_ack.isra.3 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042026
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	addi	a5,s1,+000007D8
	lbu	a5,a5,+00000003
	sw	zero,a0,+00000020
	sw	zero,a0,+00000024
	c.mv	s0,a0
	addi	s1,s1,+000007D8
	c.beqz	a5,000000002306D1F0

l2306D1E6:
	lui	a5,00042026
	lw	a5,a5,+000007BC
	c.sw	a0,40(a5)

l2306D1F0:
	lbu	a5,s1,+00000004
	c.beqz	a5,000000002306D29A

l2306D1F6:
	lui	a5,00042026
	lw	a5,a5,+000007C0

l2306D1FE:
	c.sw	s0,44(a5)
	lbu	a5,s1,+00000005
	c.beqz	a5,000000002306D2A0

l2306D206:
	lui	a5,00042026
	lw	a5,a5,+000007C4

l2306D20E:
	c.sw	s0,48(a5)
	lbu	a4,a1,+00000011
	lbu	a5,a1,+00000010
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,a1,+00000012
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,a1,+00000013
	c.slli	a5,18
	c.or	a5,a4
	c.sw	s0,28(a5)
	lbu	a5,s1,+00000006
	c.beqz	a5,000000002306D2AC

l2306D234:
	lui	a5,00042026
	lw	a0,a5,+000007C8
	jal	ra,000000002306BC20
	c.li	a5,00000001
	c.sw	s0,32(a0)
	sb	a5,s0,+00000007

l2306D248:
	lbu	a5,s1,+00000007
	c.beqz	a5,000000002306D25C

l2306D24E:
	lui	a5,00042026
	lw	a0,a5,+000007CC
	jal	ra,000000002306BC20
	c.sw	s0,36(a0)

l2306D25C:
	lbu	a5,s1,+00000008
	c.beqz	a5,000000002306D290

l2306D262:
	lui	s0,00042026
	addi	s0,s0,+000007B0
	c.lw	s0,32(a0)
	jal	ra,000000002306BC20
	c.swsp	a0,00000084
	c.addi4spn	a1,0000000C
	c.li	a0,00000000
	jal	ra,000000002306C324
	lbu	a5,s1,+00000009
	c.beqz	a5,000000002306D290

l2306D280:
	c.lw	s0,36(a0)
	jal	ra,000000002306BC20
	c.swsp	a0,00000084
	c.addi4spn	a1,0000000C
	c.li	a0,00000001
	jal	ra,000000002306C324

l2306D290:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2306D29A:
	c.lw	s0,40(a5)
	c.srli	a5,00000001
	c.j	000000002306D1FE

l2306D2A0:
	c.lw	s0,40(a4)
	c.li	a5,00000007
	add	a5,a5,a4
	c.srli	a5,00000003
	c.j	000000002306D20E

l2306D2AC:
	sb	zero,s0,+00000007
	c.j	000000002306D248

;; dhcp_recv: 2306D2B2
dhcp_recv proc
	c.addi16sp	FFFFFF90
	lui	a5,00042027
	c.swsp	s1,000000B0
	lw	s1,a5,-000006E4
	c.swsp	s2,00000030
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s3,000000AC
	c.swsp	s4,0000002C
	c.swsp	s5,000000A8
	c.swsp	s6,00000028
	c.swsp	s7,000000A4
	c.swsp	s8,00000024
	c.swsp	s9,000000A0
	c.swsp	s10,00000020
	c.swsp	s11,0000009C
	lw	s3,s1,+00000028
	c.mv	s2,a2
	beq	s3,zero,000000002306D39A

l2306D2E0:
	lbu	a5,s3,+00000004
	c.beqz	a5,000000002306D39A

l2306D2E6:
	lhu	a4,a2,+0000000A
	addi	a5,zero,+0000002B
	bgeu	a5,a4,000000002306D39A

l2306D2F2:
	c.lw	a2,4(a5)
	c.li	a4,00000002
	lbu	a3,a5,+00000000
	bne	a3,a4,000000002306D39A

l2306D2FE:
	lbu	a2,s1,+00000040
	c.li	a4,00000000
	c.li	a3,00000006

l2306D306:
	andi	a1,a4,+000000FF
	bgeu	a1,a2,000000002306D312

l2306D30E:
	bne	a4,a3,000000002306D384

l2306D312:
	lbu	a0,a5,+00000005
	lbu	a4,a5,+00000004
	c.slli	a0,08
	c.or	a0,a4
	lbu	a4,a5,+00000006
	c.slli	a4,10
	c.or	a4,a0
	lbu	a0,a5,+00000007
	c.slli	a0,18
	c.or	a0,a4
	jal	ra,000000002306BC20
	lw	a5,s3,+00000000
	bne	a0,a5,000000002306D39A

l2306D33A:
	lui	s4,00042026
	c.li	a2,0000000A
	c.li	a1,00000000
	addi	a0,s4,+000007D8
	jal	ra,00000000230A3A68
	lhu	a4,s2,+0000000A
	addi	a5,zero,+0000002B
	bgeu	a5,a4,000000002306D39A

l2306D356:
	lhu	s8,s2,+00000008
	lui	s5,00042026
	c.swsp	zero,00000084
	addi	s11,zero,+000000F0
	addi	s5,s5,+000007B0

l2306D368:
	c.mv	s6,s2

l2306D36A:
	lhu	a5,s6,+0000000A
	bgeu	s11,a5,000000002306D3BE

l2306D372:
	lw	a5,s6,+00000004
	c.lui	s7,00010000
	c.mv	s9,s11
	c.swsp	a5,00000008
	addi	a5,s7,-00000003
	c.swsp	a5,00000088
	c.j	000000002306D5AC

l2306D384:
	add	a1,s1,a4
	c.addi	a4,00000001
	add	a0,a5,a4
	lbu	a1,a1,+0000003A
	lbu	a0,a0,+0000001B
	beq	a0,a1,000000002306D306

l2306D39A:
	c.mv	a0,s2
	jal	ra,00000000230701A4
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.lwsp	t0,00000134
	c.lwsp	ra,00000158
	c.lwsp	t4,00000068
	c.lwsp	s9,00000088
	c.lwsp	s5,000000A8
	c.lwsp	a7,000000C8
	c.lwsp	a3,000000E8
	c.lwsp	s1,0000000C
	c.lwsp	t0,0000002C
	c.lwsp	ra,0000004C
	c.lwsp	t3,0000017C
	c.addi16sp	00000070
	c.jr	ra

l2306D3BE:
	lw	s6,s6,+00000000
	sub	t1,s11,a5
	sub	t3,s8,a5
	slli	s11,t1,00000010
	slli	s8,t3,00000010
	srli	s11,s11,00000010
	srli	s8,s8,00000010
	bne	s6,zero,000000002306D36A

l2306D3DE:
	c.j	000000002306D39A

l2306D3E0:
	addi	t4,s9,+00000002
	slli	s7,t4,00000010
	srli	s7,s7,00000010
	bltu	s7,s9,000000002306D39A

l2306D3F0:
	lhu	a2,s6,+0000000A
	addi	a3,s9,+00000001
	bge	a3,a2,000000002306D428

l2306D3FC:
	lbu	a4,a4,+00000001

l2306D400:
	addi	a2,zero,+00000033
	beq	a5,a2,000000002306D534

l2306D408:
	bltu	a2,a5,000000002306D438

l2306D40C:
	c.li	a2,00000001
	beq	a5,a2,000000002306D47C

l2306D412:
	beq	a5,zero,000000002306D572

l2306D416:
	c.li	a3,00000003
	beq	a5,a3,000000002306D50E

l2306D41C:
	c.li	a3,00000006

l2306D41E:
	beq	a5,a3,000000002306D518

l2306D422:
	c.li	s10,FFFFFFFF
	c.li	s0,00000000
	c.j	000000002306D486

l2306D428:
	lw	a4,s6,+00000000
	beq	a4,zero,000000002306D734

l2306D430:
	c.lw	a4,4(a4)
	lbu	a4,a4,+00000000
	c.j	000000002306D400

l2306D438:
	addi	a3,zero,+00000036
	beq	a5,a3,000000002306D558

l2306D440:
	bltu	a3,a5,000000002306D460

l2306D444:
	addi	a3,zero,+00000034
	beq	a5,a3,000000002306D542

l2306D44C:
	addi	a3,zero,+00000035

l2306D450:
	bne	a5,a3,000000002306D422

l2306D454:
	c.li	a5,00000001
	bne	a4,a5,000000002306D39A

l2306D45A:
	c.li	s0,00000001
	c.li	s10,00000001
	c.j	000000002306D486

l2306D460:
	addi	a3,zero,+0000003A
	beq	a5,a3,000000002306D566

l2306D468:
	addi	a3,zero,+0000003B

l2306D46C:
	bne	a5,a3,000000002306D422

l2306D470:
	c.li	a5,00000004
	bne	a4,a5,000000002306D39A

l2306D476:
	c.li	s0,00000004
	c.li	s10,00000005
	c.j	000000002306D486

l2306D47C:
	c.li	a5,00000004
	bne	a4,a5,000000002306D39A

l2306D482:
	c.li	s0,00000004
	c.li	s10,00000006

l2306D486:
	c.lwsp	s4,000000E4
	add	a6,a4,s9
	blt	a5,a6,000000002306D39A

l2306D490:
	c.add	a4,s7
	slli	s9,a4,00000010
	srli	s9,s9,00000010
	c.beqz	s0,000000002306D57A

l2306D49C:
	addi	a5,s4,+000007D8
	c.swsp	zero,00000094
	c.add	a5,s10

l2306D4A4:
	lbu	a4,a5,+00000000
	c.li	t5,00000004
	c.bnez	a4,000000002306D57A

l2306D4AC:
	andi	a4,s0,+000000FF
	bgeu	t5,s0,000000002306D4B6

l2306D4B4:
	c.li	a4,00000004

l2306D4B6:
	c.mv	a2,a4
	c.mv	a3,s7
	c.addi4spn	a1,0000002C
	c.mv	a0,s6
	c.swsp	a4,0000000C
	c.swsp	a5,0000008C
	jal	ra,000000002307055E
	c.lwsp	s8,000000C4
	bne	a4,a0,000000002306D39A

l2306D4CC:
	c.li	t5,00000004
	bgeu	t5,s0,000000002306D616

l2306D4D2:
	andi	a4,s0,+00000003
	bne	a4,zero,000000002306D39A

l2306D4DA:
	c.lwsp	t3,000000E4
	c.lwsp	a2,00000154
	c.li	a4,00000001
	sb	a4,a5,+00000000
	c.swsp	a5,0000000C
	jal	ra,000000002306BC20
	slli	a4,s10,00000002
	c.add	a4,s5
	c.sw	a4,0(a0)
	c.lwsp	s8,000000E4
	addi	a4,s7,+00000004
	c.slli	a4,10
	c.addi	s0,FFFFFFFC
	c.srli	a4,00000010
	andi	s0,s0,+000000FF
	c.addi	a5,00000001
	bltu	a4,s7,000000002306D39A

l2306D508:
	c.addi	s10,00000001
	c.mv	s7,a4
	c.j	000000002306D4A4

l2306D50E:
	bgeu	a5,a4,000000002306D39A

l2306D512:
	c.li	s10,00000007
	c.li	s0,00000004
	c.j	000000002306D486

l2306D518:
	andi	a5,a4,+00000003
	bne	a5,zero,000000002306D39A

l2306D520:
	c.li	a5,00000008
	andi	s0,a4,+000000FF
	bgeu	a5,a4,000000002306D52C

l2306D52A:
	c.li	s0,00000008

l2306D52C:
	bltu	a4,s0,000000002306D39A

l2306D530:
	c.li	s10,00000008
	c.j	000000002306D486

l2306D534:
	c.li	a5,00000004
	bne	a4,a5,000000002306D39A

l2306D53A:
	c.li	s0,00000004
	c.li	s10,00000003
	c.j	000000002306D486

l2306D540:
	c.li	a4,00000000

l2306D542:
	c.li	a5,00000001
	bne	a4,a5,000000002306D39A

l2306D548:
	addi	a5,zero,+000000F0
	bne	s11,a5,000000002306D39A

l2306D550:
	c.li	s0,00000001
	c.li	s10,00000000
	c.j	000000002306D486

l2306D556:
	c.li	a4,00000000

l2306D558:
	c.li	a5,00000004
	bne	a4,a5,000000002306D39A

l2306D55E:
	c.li	s0,00000004
	c.li	s10,00000002
	c.j	000000002306D486

l2306D564:
	c.li	a4,00000000

l2306D566:
	c.li	a5,00000004
	bne	a4,a5,000000002306D39A

l2306D56C:
	c.li	s0,00000004
	c.li	s10,00000004
	c.j	000000002306D486

l2306D572:
	slli	s9,a3,00000010
	srli	s9,s9,00000010

l2306D57A:
	lhu	a5,s6,+0000000A
	bltu	s9,a5,000000002306D5AC

l2306D582:
	sub	a6,s9,a5
	sub	t3,s8,a5
	slli	s9,a6,00000010
	slli	s8,t3,00000010
	srli	s9,s9,00000010
	srli	s8,s8,00000010
	bgeu	s9,s8,000000002306D39A

l2306D59E:
	lw	s6,s6,+00000000
	beq	s6,zero,000000002306D39A

l2306D5A6:
	lw	a5,s6,+00000004
	c.swsp	a5,00000008

l2306D5AC:
	bgeu	s9,s8,000000002306D5C2

l2306D5B0:
	c.lwsp	a6,000000E4
	addi	a3,zero,+000000FF
	add	a4,a5,s9
	lbu	a5,a4,+00000000
	bne	a5,a3,000000002306D3E0

l2306D5C2:
	addi	a4,s4,+000007D8
	lbu	a5,a4,+00000000
	c.bnez	a5,000000002306D64C

l2306D5CC:
	c.lwsp	a2,000000E4
	c.bnez	a5,000000002306D660

l2306D5D0:
	lui	a5,00042026
	addi	a5,a5,+000007D8
	lbu	a5,a5,+00000001
	beq	a5,zero,000000002306D39A

l2306D5E0:
	lui	a5,00042026
	addi	a5,a5,+000007B0
	lbu	a4,a5,+00000004
	c.li	a3,00000005
	lw	a1,s2,+00000004
	bne	a4,a3,000000002306D69A

l2306D5F6:
	lbu	a5,s3,+00000005
	c.li	a4,00000001
	bne	a5,a4,000000002306D680

l2306D600:
	c.lw	s1,40(a0)
	jal	ra,000000002306D1C2
	lbu	a5,s1,+00000041
	c.mv	a0,s1
	c.andi	a5,00000008
	c.beqz	a5,000000002306D694

l2306D610:
	jal	ra,000000002306CBB8
	c.j	000000002306D39A

l2306D616:
	bne	s0,t5,000000002306D63E

l2306D61A:
	c.lwsp	a2,00000154
	jal	ra,000000002306BC20
	c.swsp	a0,00000094

l2306D622:
	lui	a5,00042026
	addi	a5,a5,+000007D8
	c.add	a5,s10
	c.li	a4,00000001
	sb	a4,a5,+00000000
	c.lwsp	a2,000001F4
	c.slli	s10,02
	c.add	s10,s5
	sw	a5,s10,+00000000
	c.j	000000002306D57A

l2306D63E:
	c.li	a5,00000001
	bne	s0,a5,000000002306D39A

l2306D644:
	lbu	a5,sp,+0000002C
	c.swsp	a5,00000094
	c.j	000000002306D622

l2306D64C:
	lw	a5,s5,+00000000
	sb	zero,a4,+00000000
	c.li	a4,00000001
	beq	a5,a4,000000002306D676

l2306D65A:
	c.li	a4,00000002
	bne	a5,a4,000000002306D66C

l2306D660:
	c.swsp	zero,00000084
	addi	s8,zero,+0000006C
	addi	s11,zero,+0000002C
	c.j	000000002306D368

l2306D66C:
	c.li	a4,00000003
	bne	a5,a4,000000002306D5CC

l2306D672:
	c.li	a5,00000001
	c.swsp	a5,00000084

l2306D676:
	addi	s8,zero,+000000EC
	addi	s11,zero,+0000006C
	c.j	000000002306D368

l2306D680:
	c.addi	a5,FFFFFFFD
	andi	a5,a5,+000000FF
	c.li	a4,00000002
	bltu	a4,a5,000000002306D39A

l2306D68C:
	c.lw	s1,40(a0)
	jal	ra,000000002306D1C2
	c.mv	a0,s1

l2306D694:
	jal	ra,000000002306CBFA
	c.j	000000002306D39A

l2306D69A:
	c.li	a3,00000006
	bne	a4,a3,000000002306D6DE

l2306D6A0:
	lbu	a4,s3,+00000005
	c.li	a3,00000002
	addi	a5,a4,-00000003
	andi	a5,a5,+000000FF
	bgeu	a3,a5,000000002306D6B8

l2306D6B2:
	c.li	a5,00000001
	bne	a4,a5,000000002306D39A

l2306D6B8:
	c.lw	s1,40(a0)
	c.li	a1,0000000C
	jal	ra,000000002306C876
	lui	a1,000230CC
	addi	a3,a1,-00000524
	addi	a2,a1,-00000524
	c.mv	a0,s1
	addi	a1,a1,-00000524
	jal	ra,000000002306FCA4
	c.mv	a0,s1
	jal	ra,000000002306CA76
	c.j	000000002306D39A

l2306D6DE:
	c.li	a2,00000002
	bne	a4,a2,000000002306D39A

l2306D6E4:
	lbu	a4,s3,+00000005
	bne	a4,a3,000000002306D39A

l2306D6EC:
	lui	a4,00042026
	addi	a4,a4,+000007D8
	lbu	a4,a4,+00000002
	beq	a4,zero,000000002306D39A

l2306D6FC:
	c.lw	s1,40(s0)
	c.swsp	a1,00000084
	sh	zero,s0,+00000008
	c.lw	a5,8(a0)
	jal	ra,000000002306BC20
	c.lwsp	a2,00000064
	c.sw	s0,24(a0)
	c.mv	a0,s1
	lbu	a4,a1,+00000011
	lbu	a5,a1,+00000010
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,a1,+00000012
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,a1,+00000013
	c.slli	a5,18
	c.or	a5,a4
	c.sw	s0,28(a5)
	jal	ra,000000002306CFB2
	c.j	000000002306D39A

l2306D734:
	addi	a4,zero,+00000033
	beq	a5,a4,000000002306D39A

l2306D73C:
	bltu	a4,a5,000000002306D756

l2306D740:
	c.li	a4,00000001
	beq	a5,a4,000000002306D39A

l2306D746:
	beq	a5,zero,000000002306D572

l2306D74A:
	c.li	a4,00000003
	beq	a5,a4,000000002306D39A

l2306D750:
	c.li	a3,00000006
	c.li	a4,00000000
	c.j	000000002306D41E

l2306D756:
	addi	a4,zero,+00000036
	beq	a5,a4,000000002306D556

l2306D75E:
	bltu	a4,a5,000000002306D772

l2306D762:
	addi	a4,zero,+00000034
	beq	a5,a4,000000002306D540

l2306D76A:
	addi	a3,zero,+00000035
	c.li	a4,00000000
	c.j	000000002306D450

l2306D772:
	addi	a4,zero,+0000003A
	beq	a5,a4,000000002306D564

l2306D77A:
	addi	a3,zero,+0000003B
	c.li	a4,00000000
	c.j	000000002306D46C

;; dhcp_network_changed: 2306D782
;;   Called from:
;;     2306FF5E (in netif_set_link_up)
dhcp_network_changed proc
	c.lw	a0,40(a5)
	c.beqz	a5,000000002306D7AE

l2306D786:
	lbu	a4,a5,+00000005
	c.li	a3,00000005
	bltu	a3,a4,000000002306D7A0

l2306D790:
	c.li	a3,00000003
	bgeu	a4,a3,000000002306D7A6

l2306D796:
	c.beqz	a4,000000002306D7AE

l2306D798:
	sb	zero,a5,+00000006
	jal	zero,000000002306CA76

l2306D7A0:
	c.li	a3,0000000A
	bne	a4,a3,000000002306D798

l2306D7A6:
	sb	zero,a5,+00000006
	jal	zero,000000002306CE30

l2306D7AE:
	c.jr	ra

;; dhcp_arp_reply: 2306D7B0
;;   Called from:
;;     2306E272 (in etharp_input)
dhcp_arp_reply proc
	c.beqz	a0,000000002306D892

l2306D7B2:
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.lw	a0,40(s0)
	c.beqz	s0,000000002306D882

l2306D7C4:
	lbu	a4,s0,+00000005
	c.li	a5,00000008
	bne	a4,a5,000000002306D882

l2306D7CE:
	c.lw	a1,0(a4)
	c.lw	s0,28(a5)
	bne	a4,a5,000000002306D882

l2306D7D6:
	c.mv	s4,a0
	c.li	a1,0000000C
	c.mv	a0,s0
	jal	ra,000000002306C876
	addi	a3,sp,+0000000E
	c.li	a2,00000004
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,000000002306C8F4
	c.mv	s2,a0
	c.beqz	a0,000000002306D86A

l2306D7F2:
	c.lw	a0,4(s1)
	lhu	a5,sp,+0000000E
	addi	a3,zero,+00000032
	addi	s1,s1,+000000F0
	add	a4,s1,a5
	addi	s3,a5,+00000002
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a3,a4,+00000000
	c.add	a5,s1
	c.li	a4,00000004
	sb	a4,a5,+00000000
	c.lw	s0,28(a0)
	c.slli	s3,10
	srli	s3,s3,00000010
	sh	s3,sp,+0000000E
	jal	ra,000000002306BC20
	c.mv	a2,a0
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,000000002306C8AE
	c.mv	a2,s2
	c.mv	a1,s1
	sh	a0,sp,+0000000E
	jal	ra,000000002306CA3E
	lui	a0,0004200F
	lw	a0,a0,+000005EC
	lui	a5,000230CC
	lui	a2,000230CC
	addi	a5,a5,-00000524
	c.mv	a4,s4
	addi	a3,zero,+00000043
	addi	a2,a2,-00000520
	c.mv	a1,s2
	jal	ra,0000000023075154
	c.mv	a0,s2
	jal	ra,00000000230701A4

l2306D86A:
	lbu	a5,s0,+00000006
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002306D87C

l2306D876:
	c.addi	a5,00000001
	sb	a5,s0,+00000006

l2306D87C:
	c.li	a5,00000014
	sh	a5,s0,+00000008

l2306D882:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2306D892:
	c.jr	ra

;; dhcp_renew: 2306D894
;;   Called from:
;;     2306DD90 (in dhcp_coarse_tmr)
dhcp_renew proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.lw	a0,40(s1)
	c.mv	s3,a0
	c.li	a1,00000005
	c.mv	a0,s1
	jal	ra,000000002306C876
	addi	a3,sp,+0000000E
	c.li	a2,00000003
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,000000002306C8F4
	c.li	s0,FFFFFFFF
	c.beqz	a0,000000002306D982

l2306D8BE:
	c.lw	a0,4(s0)
	lhu	a5,sp,+0000000E
	c.mv	s2,a0
	addi	s0,s0,+000000F0
	add	a4,s0,a5
	addi	a0,a5,+00000002
	c.addi	a5,00000001
	c.slli	a5,10
	addi	a3,zero,+00000039
	c.srli	a5,00000010
	sb	a3,a4,+00000000
	c.add	a5,s0
	c.li	a4,00000002
	sb	a4,a5,+00000000
	lhu	a2,s3,+00000038
	c.slli	a0,10
	c.srli	a0,00000010
	c.mv	a1,s0
	sh	a0,sp,+0000000E
	jal	ra,000000002306C88C
	add	a5,s0,a0
	addi	a4,zero,+00000037
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,s0
	c.li	a4,00000004
	sb	a4,a5,+00000000
	c.addi	a0,00000002
	lui	a3,000230CC
	sh	a0,sp,+0000000E
	c.li	a5,00000000
	addi	a3,a3,-00000528
	c.li	a2,00000004

l2306D928:
	lhu	a4,sp,+0000000E
	add	a1,a3,a5
	lbu	a1,a1,+00000000
	addi	a0,a4,+00000001
	c.slli	a0,10
	c.add	a4,s0
	c.srli	a0,00000010
	sb	a1,a4,+00000000
	sh	a0,sp,+0000000E
	c.addi	a5,00000001
	bne	a5,a2,000000002306D928

l2306D94C:
	c.mv	a1,s0
	addi	a2,s3,+00000034
	jal	ra,000000002306CDB4
	c.mv	a1,s0
	c.mv	a2,s2
	sh	a0,sp,+0000000E
	jal	ra,000000002306CA3E
	lui	a5,0004200F
	lw	a0,a5,+000005EC
	c.mv	a4,s3
	addi	a3,zero,+00000043
	addi	a2,s1,+00000018
	c.mv	a1,s2
	jal	ra,000000002307514C
	c.mv	s0,a0
	c.mv	a0,s2
	jal	ra,00000000230701A4

l2306D982:
	lbu	a5,s1,+00000006
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002306D994

l2306D98E:
	c.addi	a5,00000001
	sb	a5,s1,+00000006

l2306D994:
	lbu	a5,s1,+00000006
	c.li	a4,00000009
	bltu	a4,a5,000000002306D9CA

l2306D99E:
	addi	a4,zero,+000007D0
	add	a5,a5,a4
	c.slli	a5,10
	c.srli	a5,00000010

l2306D9AA:
	addi	a5,a5,+000001F3
	addi	a4,zero,+000001F4
	xor	a5,a5,a4
	c.mv	a0,s0
	sh	a5,s1,+00000008
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2306D9CA:
	c.lui	a5,00005000
	addi	a5,a5,-000001E0
	c.j	000000002306D9AA

;; dhcp_supplied_address: 2306D9D2
;;   Called from:
;;     2306DA42 (in dhcp_release_and_stop)
dhcp_supplied_address proc
	c.beqz	a0,000000002306D9F4

l2306D9D4:
	c.lw	a0,40(a5)
	c.li	a0,00000000
	c.beqz	a5,000000002306D9F6

l2306D9DA:
	lbu	a5,a5,+00000005
	c.li	a4,0000000A
	c.li	a0,00000001
	beq	a5,a4,000000002306D9EE

l2306D9E6:
	addi	a0,a5,-00000004
	sltiu	a0,a0,+00000002

l2306D9EE:
	andi	a0,a0,+000000FF
	c.jr	ra

l2306D9F4:
	c.li	a0,00000000

l2306D9F6:
	c.jr	ra

;; dhcp_release_and_stop: 2306D9F8
;;   Called from:
;;     2306DB92 (in dhcp_start)
;;     2306DC0C (in dhcp_coarse_tmr)
;;     2306DE2E (in dhcp_fine_tmr)
;;     2306DE68 (in dhcp_stop)
dhcp_release_and_stop proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.lw	a0,40(s0)
	beq	s0,zero,000000002306DAF2

l2306DA0C:
	lbu	a5,s0,+00000005
	beq	a5,zero,000000002306DAF2

l2306DA14:
	c.lw	s0,24(a5)
	sw	zero,s0,+0000001C
	sw	zero,s0,+00000018
	sw	zero,s0,+00000020
	sw	zero,s0,+00000024
	sw	zero,s0,+00000030
	sw	zero,s0,+0000002C
	sw	zero,s0,+00000028
	sh	zero,s0,+0000000E
	sw	zero,s0,+00000010
	sh	zero,s0,+00000014
	c.mv	s1,a0
	c.swsp	a5,00000084
	jal	ra,000000002306D9D2
	c.beqz	a0,000000002306DAC6

l2306DA48:
	addi	a3,sp,+0000000A
	c.li	a2,00000007
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002306C8F4
	c.mv	s3,a0
	c.beqz	a0,000000002306DAC6

l2306DA5A:
	lw	s2,a0,+00000004
	lhu	a5,sp,+0000000A
	addi	a3,zero,+00000036
	addi	s2,s2,+000000F0
	add	a4,s2,a5
	addi	s4,a5,+00000002
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a3,a4,+00000000
	c.add	a5,s2
	c.li	a4,00000004
	sb	a4,a5,+00000000
	c.lwsp	a2,00000044
	c.slli	s4,10
	srli	s4,s4,00000010
	sh	s4,sp,+0000000A
	jal	ra,000000002306BC20
	c.mv	a2,a0
	c.mv	a1,s2
	c.mv	a0,s4
	jal	ra,000000002306C8AE
	c.mv	a2,s3
	c.mv	a1,s2
	sh	a0,sp,+0000000A
	jal	ra,000000002306CA3E
	lui	a5,0004200F
	lw	a0,a5,+000005EC
	c.mv	a4,s1
	addi	a3,zero,+00000043
	c.addi4spn	a2,0000000C
	c.mv	a1,s3
	jal	ra,000000002307514C
	c.mv	a0,s3
	jal	ra,00000000230701A4

l2306DAC6:
	lui	a1,000230CC
	addi	a3,a1,-00000524
	addi	a2,a1,-00000524
	c.mv	a0,s1
	addi	a1,a1,-00000524
	jal	ra,000000002306FCA4
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002306C876
	lbu	a5,s0,+00000004
	c.beqz	a5,000000002306DAF2

l2306DAEA:
	jal	ra,000000002306D188
	sb	zero,s0,+00000004

l2306DAF2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; dhcp_start: 2306DB02
;;   Called from:
;;     2306DC12 (in dhcp_coarse_tmr)
;;     2306DE34 (in dhcp_fine_tmr)
dhcp_start proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.li	s1,FFFFFFF0
	c.beqz	a0,000000002306DB6C

l2306DB10:
	lbu	a5,a0,+00000041
	c.li	s1,FFFFFFF0
	c.andi	a5,00000001
	c.beqz	a5,000000002306DB6C

l2306DB1A:
	lhu	a4,a0,+00000038
	addi	a5,zero,+0000023F
	lw	s2,a0,+00000028
	bltu	a5,a4,000000002306DB2E

l2306DB2A:
	c.li	s1,FFFFFFFF
	c.j	000000002306DB6C

l2306DB2E:
	c.mv	s0,a0
	bne	s2,zero,000000002306DB7A

l2306DB34:
	addi	a0,zero,+00000034
	jal	ra,000000002306F8D8
	c.mv	s2,a0
	c.beqz	a0,000000002306DB2A

l2306DB40:
	c.sw	s0,40(a0)

l2306DB42:
	addi	a2,zero,+00000034
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,00000000230A3A68
	jal	ra,000000002306CD36
	c.mv	s1,a0
	c.bnez	a0,000000002306DB2A

l2306DB56:
	c.li	a5,00000001
	sb	a5,s2,+00000004
	lbu	a5,s0,+00000041
	c.andi	a5,00000004
	c.bnez	a5,000000002306DB86

l2306DB64:
	c.li	a1,00000002
	c.mv	a0,s2
	jal	ra,000000002306C876

l2306DB6C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2306DB7A:
	lbu	a5,s2,+00000004
	c.beqz	a5,000000002306DB42

l2306DB80:
	jal	ra,000000002306D188
	c.j	000000002306DB42

l2306DB86:
	c.mv	a0,s0
	jal	ra,000000002306CA76
	c.mv	s1,a0
	c.beqz	a0,000000002306DB6C

l2306DB90:
	c.mv	a0,s0
	jal	ra,000000002306D9F8
	c.j	000000002306DB2A

;; dhcp_coarse_tmr: 2306DB98
dhcp_coarse_tmr proc
	c.addi16sp	FFFFFFC0
	lui	a5,00042026
	c.swsp	s0,0000001C
	lw	s0,a5,+000007E8
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.lui	s4,00002000
	lui	s5,000230CC
	c.swsp	s3,00000094
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s8,0000000C
	c.li	s3,00000001
	addi	s4,s4,+00000710
	addi	s5,s5,-00000528
	lui	s6,0004200F
	lui	s7,000230CC

l2306DBCE:
	c.bnez	s0,000000002306DBE8

l2306DBD0:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.lwsp	s8,0000000C
	c.addi16sp	00000040
	c.jr	ra

l2306DBE8:
	c.lw	s0,40(a5)
	c.beqz	a5,000000002306DC16

l2306DBEC:
	lbu	a4,a5,+00000005
	c.beqz	a4,000000002306DC16

l2306DBF2:
	lhu	a3,a5,+00000014
	c.beqz	a3,000000002306DC1A

l2306DBF8:
	lhu	a4,a5,+00000012
	c.addi	a4,00000001
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000012
	bne	a3,a4,000000002306DC1A

l2306DC0A:
	c.mv	a0,s0
	jal	ra,000000002306D9F8
	c.mv	a0,s0
	jal	ra,000000002306DB02

l2306DC16:
	c.lw	s0,0(s0)
	c.j	000000002306DBCE

l2306DC1A:
	lhu	a4,a5,+00000010
	beq	a4,zero,000000002306DD66

l2306DC22:
	addi	a3,a4,-00000001
	sh	a3,a5,+00000010
	bne	a4,s3,000000002306DD66

l2306DC2E:
	c.lw	s0,40(s1)
	c.li	a5,0000000A
	lbu	a4,s1,+00000005
	bltu	a5,a4,000000002306DC16

l2306DC3A:
	addi	a5,zero,+00000432
	srl	a5,a5,a4
	c.andi	a5,00000001
	c.beqz	a5,000000002306DC16

l2306DC46:
	c.li	a1,00000004
	c.mv	a0,s1
	jal	ra,000000002306C876
	addi	a3,sp,+0000000E
	c.li	a2,00000003
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002306C8F4
	c.mv	s8,a0
	c.beqz	a0,000000002306DD16

l2306DC60:
	lw	s2,a0,+00000004
	lhu	a5,sp,+0000000E
	addi	a3,zero,+00000039
	addi	s2,s2,+000000F0
	add	a4,s2,a5
	addi	a0,a5,+00000002
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a3,a4,+00000000
	c.add	a5,s2
	c.li	a4,00000002
	sb	a4,a5,+00000000
	lhu	a2,s0,+00000038
	c.slli	a0,10
	c.srli	a0,00000010
	c.mv	a1,s2
	sh	a0,sp,+0000000E
	jal	ra,000000002306C88C
	add	a5,s2,a0
	addi	a4,zero,+00000037
	sb	a4,a5,+00000000
	addi	a5,a0,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,s2
	c.li	a4,00000004
	sb	a4,a5,+00000000
	c.addi	a0,00000002
	sh	a0,sp,+0000000E
	c.li	a5,00000000
	c.li	a3,00000004

l2306DCC2:
	lhu	a4,sp,+0000000E
	add	a2,s5,a5
	lbu	a2,a2,+00000000
	addi	a0,a4,+00000001
	c.slli	a0,10
	c.add	a4,s2
	c.srli	a0,00000010
	sb	a2,a4,+00000000
	sh	a0,sp,+0000000E
	c.addi	a5,00000001
	bne	a5,a3,000000002306DCC2

l2306DCE6:
	addi	a2,s0,+00000034
	c.mv	a1,s2
	jal	ra,000000002306CDB4
	c.mv	a2,s8
	c.mv	a1,s2
	sh	a0,sp,+0000000E
	jal	ra,000000002306CA3E
	lw	a0,s6,+000005EC
	c.mv	a4,s0
	addi	a3,zero,+00000043
	addi	a2,s7,-00000520
	c.mv	a1,s8
	jal	ra,000000002307514C
	c.mv	a0,s8
	jal	ra,00000000230701A4

l2306DD16:
	lbu	a5,s1,+00000006
	addi	a4,zero,+000000FF
	beq	a5,a4,000000002306DD28

l2306DD22:
	c.addi	a5,00000001
	sb	a5,s1,+00000006

l2306DD28:
	lbu	a4,s1,+00000006
	c.li	a3,00000009
	c.mv	a5,s4
	bltu	a3,a4,000000002306DD40

l2306DD34:
	addi	a5,zero,+000003E8
	add	a5,a4,a5
	c.slli	a5,10
	c.srli	a5,00000010

l2306DD40:
	addi	a4,zero,+000001F4
	addi	a5,a5,+000001F3
	xor	a5,a5,a4
	lhu	a4,s1,+00000012
	sh	a5,s1,+00000008
	lhu	a5,s1,+00000014
	c.sub	a5,a4
	bge	s3,a5,000000002306DC16

l2306DD5E:
	c.srai	a5,00000001
	sh	a5,s1,+00000010
	c.j	000000002306DC16

l2306DD66:
	lhu	a4,a5,+0000000E
	beq	a4,zero,000000002306DC16

l2306DD6E:
	addi	a3,a4,-00000001
	sh	a3,a5,+0000000E
	bne	a4,s3,000000002306DC16

l2306DD7A:
	c.lw	s0,40(s1)
	lbu	a5,s1,+00000005
	andi	a4,a5,+000000FB
	beq	a4,s3,000000002306DD8E

l2306DD88:
	c.li	a4,0000000A
	bne	a5,a4,000000002306DC16

l2306DD8E:
	c.mv	a0,s0
	jal	ra,000000002306D894
	lhu	a5,s1,+0000000C
	lhu	a4,s1,+00000012
	c.sub	a5,a4
	bge	s3,a5,000000002306DC16

l2306DDA2:
	c.srai	a5,00000001
	sh	a5,s1,+0000000E
	c.j	000000002306DC16

;; dhcp_fine_tmr: 2306DDAA
dhcp_fine_tmr proc
	c.addi	sp,FFFFFFE0
	lui	a5,00042026
	c.swsp	s0,0000000C
	lw	s0,a5,+000007E8
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.li	s1,00000001
	c.li	s2,0000000C
	c.li	s3,00000006
	c.li	s4,00000008
	c.li	s5,00000003
	c.li	s6,00000005

l2306DDD0:
	c.bnez	s0,000000002306DDE6

l2306DDD2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	c.jr	ra

l2306DDE6:
	c.lw	s0,40(a4)
	c.beqz	a4,000000002306DDF8

l2306DDEA:
	lhu	a5,a4,+00000008
	bgeu	s1,a5,000000002306DDFC

l2306DDF2:
	c.addi	a5,FFFFFFFF
	sh	a5,a4,+00000008

l2306DDF8:
	c.lw	s0,0(s0)
	c.j	000000002306DDD0

l2306DDFC:
	bne	a5,s1,000000002306DDF8

l2306DE00:
	sh	zero,a4,+00000008
	c.lw	s0,40(a4)
	lbu	a5,a4,+00000005
	beq	a5,s2,000000002306DE12

l2306DE0E:
	bne	a5,s3,000000002306DE1A

l2306DE12:
	c.mv	a0,s0

l2306DE14:
	jal	ra,000000002306CA76
	c.j	000000002306DDF8

l2306DE1A:
	bne	a5,s1,000000002306DE3A

l2306DE1E:
	lbu	a5,a4,+00000006
	c.mv	a0,s0
	bltu	s6,a5,000000002306DE2E

l2306DE28:
	jal	ra,000000002306CFB2
	c.j	000000002306DDF8

l2306DE2E:
	jal	ra,000000002306D9F8
	c.mv	a0,s0
	jal	ra,000000002306DB02
	c.j	000000002306DDF8

l2306DE3A:
	bne	a5,s4,000000002306DE54

l2306DE3E:
	lbu	a5,a4,+00000006
	c.mv	a0,s0
	bltu	s1,a5,000000002306DE4E

l2306DE48:
	jal	ra,000000002306CBB8
	c.j	000000002306DDF8

l2306DE4E:
	jal	ra,000000002306CBFA
	c.j	000000002306DDF8

l2306DE54:
	bne	a5,s5,000000002306DDF8

l2306DE58:
	lbu	a5,a4,+00000006
	c.mv	a0,s0
	bltu	s1,a5,000000002306DE14

l2306DE62:
	jal	ra,000000002306CE30
	c.j	000000002306DDF8

;; dhcp_stop: 2306DE68
;;   Called from:
;;     230774FE (in dhcpd_start)
dhcp_stop proc
	jal	zero,000000002306D9F8

;; etharp_free_entry: 2306DE6C
;;   Called from:
;;     2306DF56 (in etharp_find_entry)
;;     2306E0C6 (in etharp_cleanup_netif)
;;     2306E2EA (in etharp_tmr)
etharp_free_entry proc
	c.li	a4,00000018
	add	a4,a0,a4
	c.addi	sp,FFFFFFF0
	lui	a5,0004201B
	c.swsp	s2,00000000
	addi	s2,a5,+000000B8
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	addi	s0,a5,+000000B8
	c.add	s2,a4
	lw	a0,s2,+00000000
	c.beqz	a0,000000002306DE9A

l2306DE92:
	jal	ra,00000000230701A4
	sw	zero,s2,+00000000

l2306DE9A:
	c.li	a5,00000018
	add	a5,s1,a5
	c.add	a5,s0
	sb	zero,a5,+00000014
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; etharp_find_entry: 2306DEB2
;;   Called from:
;;     2306E1C4 (in etharp_input)
;;     2306E402 (in etharp_query)
etharp_find_entry proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004201B
	c.swsp	s1,00000088
	addi	a3,s0,+000000B8
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.li	t0,00000000
	c.li	t6,00000000
	c.li	t5,00000000
	c.li	t1,0000000A
	c.li	a5,00000000
	c.li	a4,0000000A
	c.li	a7,0000000A
	c.li	s1,0000000A
	addi	s0,s0,+000000B8
	c.li	t3,0000000A
	c.li	t2,00000001

l2306DEDE:
	lbu	t4,a3,+00000014
	bne	a4,t3,000000002306DF1C

l2306DEE6:
	beq	t4,zero,000000002306DFA4

l2306DEEA:
	c.beqz	a0,000000002306DF02

l2306DEEC:
	lw	s2,a0,+00000000
	lw	a6,a3,+00000004
	bne	s2,a6,000000002306DF02

l2306DEF8:
	c.beqz	a2,000000002306DF80

l2306DEFA:
	lw	a6,a3,+00000008
	beq	a6,a2,000000002306DF80

l2306DF02:
	lhu	a6,a3,+00000012
	bne	t4,t2,000000002306DF9A

l2306DF0A:
	lw	t4,a3,+00000000
	beq	t4,zero,000000002306DF90

l2306DF12:
	bltu	a6,t5,000000002306DF20

l2306DF16:
	c.mv	t5,a6
	c.mv	t1,a5
	c.j	000000002306DF20

l2306DF1C:
	bne	t4,zero,000000002306DEEA

l2306DF20:
	c.addi	a5,00000001
	slli	a6,a5,00000010
	srli	a6,a6,00000010
	slli	a5,a6,00000010
	c.addi	a3,00000018
	c.srai	a5,00000010
	bne	a6,t3,000000002306DEDE

l2306DF36:
	c.li	a3,00000001
	c.li	a5,FFFFFFFF
	bne	a1,a3,000000002306DF80

l2306DF3E:
	c.mv	s3,a2
	c.mv	s2,a0
	bne	a4,t3,000000002306DF5C

l2306DF46:
	bne	a7,a4,000000002306DFA8

l2306DF4A:
	bne	s1,a7,000000002306DF54

l2306DF4E:
	beq	t1,s1,000000002306DF80

l2306DF52:
	c.mv	s1,t1

l2306DF54:
	c.mv	a0,s1
	jal	ra,000000002306DE6C
	c.mv	a4,s1

l2306DF5C:
	beq	s2,zero,000000002306DF6E

l2306DF60:
	c.li	a5,00000018
	add	a5,a4,a5
	lw	a3,s2,+00000000
	c.add	a5,s0
	c.sw	a5,4(a3)

l2306DF6E:
	c.li	a5,00000018
	add	a5,a4,a5
	c.add	s0,a5
	sh	zero,s0,+00000012
	sw	s3,s0,+00000008
	c.mv	a5,a4

l2306DF80:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

l2306DF90:
	bltu	a6,t6,000000002306DF20

l2306DF94:
	c.mv	t6,a6
	c.mv	s1,a5
	c.j	000000002306DF20

l2306DF9A:
	bltu	a6,t0,000000002306DF20

l2306DF9E:
	c.mv	t0,a6
	c.mv	a7,a5
	c.j	000000002306DF20

l2306DFA4:
	c.mv	a4,a5
	c.j	000000002306DF20

l2306DFA8:
	c.mv	s1,a7
	c.j	000000002306DF54

;; etharp_raw: 2306DFAC
;;   Called from:
;;     2306E268 (in etharp_input)
;;     2306E298 (in etharp_request)
;;     2306E3C2 (in etharp_output_to_arp_index)
etharp_raw proc
	c.addi16sp	FFFFFFC0
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.mv	s3,a0
	c.mv	s4,a1
	c.mv	s5,a2
	c.li	a1,0000001C
	addi	a2,zero,+00000280
	addi	a0,zero,+0000008E
	c.swsp	s1,00000098
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	a7,00000084
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.mv	s9,a3
	c.mv	s7,a4
	c.mv	s8,a5
	c.mv	s6,a6
	lui	s1,00042026
	jal	ra,0000000023070226
	addi	s1,s1,+000007F0
	c.lwsp	a2,00000028
	c.bnez	a0,000000002306E014

l2306DFEE:
	lhu	a5,s1,+00000024
	c.li	a0,FFFFFFFF
	c.addi	a5,00000001
	sh	a5,s1,+00000024

l2306DFFA:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.lwsp	s8,0000000C
	c.lwsp	s4,0000002C
	c.addi16sp	00000040
	c.jr	ra

l2306E014:
	c.lw	a0,4(s0)
	c.mv	s2,a0
	c.mv	a0,a7
	jal	ra,000000002306BC12
	sb	a0,s0,+00000006
	c.srli	a0,00000008
	sb	a0,s0,+00000007
	c.li	a2,00000006
	c.mv	a1,s9
	addi	a0,s0,+00000008
	jal	ra,00000000230A382C
	c.li	a2,00000006
	c.mv	a1,s8
	addi	a0,s0,+00000012
	jal	ra,00000000230A382C
	c.li	a2,00000004
	c.mv	a1,s7
	addi	a0,s0,+0000000E
	jal	ra,00000000230A382C
	c.li	a2,00000004
	c.mv	a1,s6
	addi	a0,s0,+00000018
	jal	ra,00000000230A382C
	c.li	a5,00000001
	sb	a5,s0,+00000001
	c.li	a5,00000008
	sb	a5,s0,+00000002
	c.li	a5,00000006
	sb	a5,s0,+00000004
	c.lui	a4,00001000
	c.li	a5,00000004
	sb	a5,s0,+00000005
	addi	a4,a4,-000007FA
	c.mv	a3,s5
	c.mv	a2,s4
	c.mv	a1,s2
	sb	zero,s0,+00000000
	sb	zero,s0,+00000003
	c.mv	a0,s3
	jal	ra,0000000023075392
	lhu	a5,s1,+00000018
	c.mv	a0,s2
	c.addi	a5,00000001
	sh	a5,s1,+00000018
	jal	ra,00000000230701A4
	c.li	a0,00000000
	c.j	000000002306DFFA

;; etharp_cleanup_netif: 2306E09E
;;   Called from:
;;     2306FE94 (in netif_set_down)
etharp_cleanup_netif proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004201B
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s3,a0
	addi	s0,s0,+000000B8
	c.li	s1,00000000
	c.li	s2,0000000A

l2306E0B8:
	lbu	a5,s0,+00000014
	c.beqz	a5,000000002306E0CA

l2306E0BE:
	c.lw	s0,8(a5)
	bne	a5,s3,000000002306E0CA

l2306E0C4:
	c.mv	a0,s1
	jal	ra,000000002306DE6C

l2306E0CA:
	c.addi	s1,00000001
	c.addi	s0,00000018
	bne	s1,s2,000000002306E0B8

l2306E0D2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; etharp_input: 2306E0E0
;;   Called from:
;;     2307538C (in ethernet_input)
etharp_input proc
	beq	a1,zero,000000002306E278

l2306E0E4:
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.lw	a0,4(s1)
	lui	s2,00042026
	c.mv	s0,a1
	lbu	a5,s1,+00000001
	lbu	a4,s1,+00000000
	c.mv	s3,a0
	c.slli	a5,08
	c.or	a5,a4
	addi	a4,zero,+00000100
	addi	s2,s2,+000007F0
	bne	a5,a4,000000002306E140

l2306E11A:
	lbu	a4,s1,+00000004
	c.li	a5,00000006
	bne	a4,a5,000000002306E140

l2306E124:
	lbu	a4,s1,+00000005
	c.li	a5,00000004
	bne	a4,a5,000000002306E140

l2306E12E:
	lbu	a5,s1,+00000003
	lbu	a4,s1,+00000002
	c.slli	a5,08
	c.or	a5,a4
	c.li	a4,00000008
	beq	a5,a4,000000002306E170

l2306E140:
	lhu	a5,s2,+00000028
	c.addi	a5,00000001
	sh	a5,s2,+00000028
	lhu	a5,s2,+0000001E
	c.addi	a5,00000001
	sh	a5,s2,+0000001E

l2306E154:
	c.mv	a0,s3
	jal	ra,00000000230701A4
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.addi16sp	00000040
	c.jr	ra

l2306E170:
	lhu	a5,s2,+0000001A
	c.li	a2,00000004
	addi	a1,s1,+0000000E
	c.addi	a5,00000001
	c.addi4spn	a0,00000008
	sh	a5,s2,+0000001A
	jal	ra,00000000230A382C
	c.li	a2,00000004
	addi	a1,s1,+00000018
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A382C
	c.lw	s0,4(a5)
	addi	s4,s1,+00000008
	c.beqz	a5,000000002306E1A0

l2306E19A:
	c.lwsp	a2,000000C4
	beq	a5,a4,000000002306E248

l2306E1A0:
	c.li	s5,00000000
	c.li	s6,00000002

l2306E1A4:
	c.lwsp	s0,00000044
	c.beqz	a0,000000002306E220

l2306E1A8:
	c.mv	a1,s0
	jal	ra,000000002306F33A
	c.bnez	a0,000000002306E220

l2306E1B0:
	c.lwsp	s0,000000E4
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	beq	a5,a4,000000002306E220

l2306E1BE:
	c.mv	a2,s0
	c.mv	a1,s6
	c.addi4spn	a0,00000008
	jal	ra,000000002306DEB2
	blt	a0,zero,000000002306E220

l2306E1CC:
	c.li	a5,00000018
	add	a5,a0,a5
	lui	a4,0004201B
	addi	a4,a4,+000000B8
	c.li	a3,00000002
	c.li	a2,00000006
	c.mv	a1,s4
	add	s6,a4,a5
	c.addi	a5,0000000C
	sb	a3,s6,+00000014
	sw	s0,s6,+00000008
	add	a0,a4,a5
	jal	ra,00000000230A382C
	lw	s7,s6,+00000000
	sh	zero,s6,+00000012
	beq	s7,zero,000000002306E220

l2306E202:
	c.lui	a4,00001000
	sw	zero,s6,+00000000
	addi	a4,a4,-00000800
	c.mv	a3,s4
	addi	a2,s0,+0000003A
	c.mv	a1,s7
	c.mv	a0,s0
	jal	ra,0000000023075392
	c.mv	a0,s7
	jal	ra,00000000230701A4

l2306E220:
	lbu	a5,s1,+00000007
	lbu	a4,s1,+00000006
	c.slli	a5,08
	c.or	a5,a4
	addi	a4,zero,+00000100
	beq	a5,a4,000000002306E24E

l2306E234:
	addi	a4,zero,+00000200
	beq	a5,a4,000000002306E26E

l2306E23C:
	lhu	a5,s2,+0000002C
	c.addi	a5,00000001
	sh	a5,s2,+0000002C
	c.j	000000002306E154

l2306E248:
	c.li	s5,00000001
	c.li	s6,00000001
	c.j	000000002306E1A4

l2306E24E:
	beq	s5,zero,000000002306E154

l2306E252:
	addi	a3,s0,+0000003A
	c.li	a7,00000002
	addi	a6,sp,+00000008
	c.mv	a5,s4
	addi	a4,s0,+00000004
	c.mv	a2,s4
	c.mv	a1,a3
	c.mv	a0,s0
	jal	ra,000000002306DFAC
	c.j	000000002306E154

l2306E26E:
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	jal	ra,000000002306D7B0
	c.j	000000002306E154

l2306E278:
	c.jr	ra

;; etharp_request: 2306E27A
;;   Called from:
;;     2306E326 (in etharp_tmr)
;;     2306E374 (in etharp_output_to_arp_index)
;;     2306E458 (in etharp_query)
;;     2306FBD4 (in netif_issue_reports)
etharp_request proc
	addi	a3,a0,+0000003A
	lui	a5,000230CC
	lui	a2,000230CC
	c.mv	a6,a1
	c.li	a7,00000001
	addi	a5,a5,-0000050C
	addi	a4,a0,+00000004
	addi	a2,a2,-00000514
	c.mv	a1,a3
	jal	zero,000000002306DFAC

;; etharp_tmr: 2306E29C
etharp_tmr proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,0004201B
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	addi	s0,s0,+000000B8
	c.li	s1,00000000
	addi	s4,zero,+0000012B
	c.li	s5,00000001
	c.li	s6,00000003
	c.li	s2,00000004
	c.li	s7,00000002
	c.li	s3,0000000A

l2306E2C8:
	lbu	a4,s0,+00000014
	c.beqz	a4,000000002306E2EE

l2306E2CE:
	lhu	a5,s0,+00000012
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+00000012
	bltu	s4,a5,000000002306E2E8

l2306E2E0:
	bne	a4,s5,000000002306E30C

l2306E2E4:
	bgeu	s2,a5,000000002306E320

l2306E2E8:
	c.mv	a0,s1
	jal	ra,000000002306DE6C

l2306E2EE:
	c.addi	s1,00000001
	c.addi	s0,00000018
	bne	s1,s3,000000002306E2C8

l2306E2F6:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.addi16sp	00000030
	c.jr	ra

l2306E30C:
	bne	a4,s6,000000002306E316

l2306E310:
	sb	s2,s0,+00000014
	c.j	000000002306E2EE

l2306E316:
	bne	a4,s2,000000002306E2EE

l2306E31A:
	sb	s7,s0,+00000014
	c.j	000000002306E2EE

l2306E320:
	c.lw	s0,8(a0)
	addi	a1,s0,+00000004
	jal	ra,000000002306E27A
	c.j	000000002306E2EE

;; etharp_output_to_arp_index: 2306E32C
;;   Called from:
;;     2306E5EA (in etharp_output)
etharp_output_to_arp_index proc
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	c.mv	s4,a1
	c.li	a1,00000018
	add	a2,a2,a1
	lui	a1,0004201B
	addi	a1,a1,+000000B8
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.li	a5,00000002
	c.mv	s2,a0
	add	s1,a1,a2
	lbu	a4,s1,+00000014
	addi	s0,a2,+0000000C
	c.add	s0,a1
	addi	s3,a0,+0000003A
	bne	a4,a5,000000002306E380

l2306E364:
	lhu	a5,s1,+00000012
	addi	a4,zero,+0000011C
	bgeu	a4,a5,000000002306E3A0

l2306E370:
	c.addi	a2,00000004
	c.add	a1,a2
	jal	ra,000000002306E27A

l2306E378:
	c.bnez	a0,000000002306E380

l2306E37A:
	c.li	a5,00000003
	sb	a5,s1,+00000014

l2306E380:
	c.mv	a3,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.mv	a2,s3
	c.mv	a1,s4
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	c.addi16sp	00000020
	jal	zero,0000000023075392

l2306E3A0:
	addi	a4,zero,+0000010D
	bgeu	a4,a5,000000002306E380

l2306E3A8:
	c.addi	a2,00000004
	lui	a5,000230CC
	add	a6,a1,a2
	c.li	a7,00000001
	addi	a5,a5,-0000050C
	addi	a4,a0,+00000004
	c.mv	a3,s3
	c.mv	a2,s0
	c.mv	a1,s3
	jal	ra,000000002306DFAC
	c.j	000000002306E378

;; etharp_query: 2306E3C8
;;   Called from:
;;     2306CBD4 (in dhcp_check)
;;     2306E630 (in etharp_output)
etharp_query proc
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	c.mv	s4,a1
	c.swsp	s2,00000008
	c.mv	a1,a0
	c.mv	s2,a0
	lw	a0,s4,+00000000
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.mv	s0,a2
	jal	ra,000000002306F33A
	bne	a0,zero,000000002306E4E2

l2306E3EA:
	lw	a5,s4,+00000000
	addi	a4,zero,+000000E0
	andi	a3,a5,+000000F0
	beq	a3,a4,000000002306E4E2

l2306E3FA:
	c.beqz	a5,000000002306E4E2

l2306E3FC:
	c.mv	a2,s2
	c.li	a1,00000001
	c.mv	a0,s4
	jal	ra,000000002306DEB2
	bge	a0,zero,000000002306E432

l2306E40A:
	c.beqz	s0,000000002306E41E

l2306E40C:
	lui	a5,00042026
	addi	a5,a5,+000007F0
	lhu	a4,a5,+00000024
	c.addi	a4,00000001
	sh	a4,a5,+00000024

l2306E41E:
	c.slli	a0,18
	c.srai	a0,00000018

l2306E422:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2306E432:
	andi	s3,a0,+000000FF
	c.li	a4,00000018
	add	a4,s3,a4
	lui	s1,0004201B
	addi	a5,s1,+000000B8
	addi	s1,s1,+000000B8
	c.add	a5,a4
	lbu	a4,a5,+00000014
	c.beqz	a4,000000002306E49E

l2306E450:
	c.li	a0,FFFFFFFF
	c.bnez	s0,000000002306E45E

l2306E454:
	c.mv	a1,s4
	c.mv	a0,s2
	jal	ra,000000002306E27A
	c.beqz	s0,000000002306E422

l2306E45E:
	c.li	a3,00000018
	add	a3,s3,a3
	add	a5,s1,a3
	lbu	a4,a5,+00000014
	c.li	a5,00000001
	bgeu	a5,a4,000000002306E4AA

l2306E472:
	lui	a5,0004200F
	c.addi	a3,0000000C
	c.mv	a1,s0
	c.lwsp	s8,00000004
	sb	s3,a5,+000005F8
	c.lwsp	t3,00000020
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.add	a3,s1
	addi	a2,s2,+0000003A
	c.lwsp	s4,00000024
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	c.addi16sp	00000020
	jal	zero,0000000023075392

l2306E49E:
	c.li	a4,00000001
	sb	a4,a5,+00000014
	sw	s2,a5,+00000008
	c.j	000000002306E454

l2306E4AA:
	bne	a4,a5,000000002306E422

l2306E4AE:
	c.mv	a5,s0

l2306E4B0:
	lbu	a4,a5,+0000000C
	andi	a4,a4,+00000040
	c.bnez	a4,000000002306E4E6

l2306E4BA:
	c.lw	a5,0(a5)
	c.bnez	a5,000000002306E4B0

l2306E4BE:
	c.mv	a0,s0
	jal	ra,0000000023070452

l2306E4C4:
	c.li	a5,00000018
	add	a5,s3,a5
	c.add	a5,s1
	c.lw	a5,0(a0)
	c.beqz	a0,000000002306E4D4

l2306E4D0:
	jal	ra,00000000230701A4

l2306E4D4:
	c.li	a0,00000018
	add	a0,s3,a0
	c.add	s1,a0
	c.sw	s1,0(s0)
	c.li	a0,00000000
	c.j	000000002306E422

l2306E4E2:
	c.li	a0,FFFFFFF0
	c.j	000000002306E422

l2306E4E6:
	c.mv	a2,s0
	addi	a1,zero,+00000280
	addi	a0,zero,+0000008E
	jal	ra,00000000230706B4
	c.mv	s0,a0
	c.bnez	a0,000000002306E4C4

l2306E4F8:
	lui	a5,00042026
	addi	a5,a5,+000007F0
	lhu	a4,a5,+00000024
	c.li	a0,FFFFFFFF
	c.addi	a4,00000001
	sh	a4,a5,+00000024
	c.j	000000002306E422

;; etharp_output: 2306E50E
etharp_output proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	s2,a1
	c.mv	a1,a0
	c.lw	a2,0(a0)
	c.mv	s1,a2
	jal	ra,000000002306F33A
	bne	a0,zero,000000002306E636

l2306E52A:
	c.lw	s1,0(a5)
	addi	a3,zero,+000000E0
	andi	a2,a5,+000000F0
	bne	a2,a3,000000002306E578

l2306E538:
	c.li	a5,00000001
	sh	a5,sp,+00000008
	addi	a5,zero,+0000005E
	sb	a5,sp,+0000000A
	lbu	a5,s1,+00000001
	c.addi4spn	a3,00000008
	andi	a5,a5,+0000007F
	sb	a5,sp,+0000000B
	lbu	a5,s1,+00000002
	sb	a5,sp,+0000000C
	lbu	a5,s1,+00000003
	sb	a5,sp,+0000000D

l2306E564:
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	addi	a2,s0,+0000003A
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,0000000023075392
	c.j	000000002306E5EE

l2306E578:
	c.lw	s0,4(a3)
	c.lw	s0,8(a2)
	c.mv	a4,a0
	c.xor	a3,a5
	c.and	a3,a2
	c.beqz	a3,000000002306E59C

l2306E584:
	c.slli	a5,10
	c.lui	a3,00010000
	c.srli	a5,00000010
	addi	a3,a3,-00000157
	beq	a5,a3,000000002306E59C

l2306E592:
	c.lw	s0,12(a5)
	c.li	a0,FFFFFFFC
	c.beqz	a5,000000002306E5EE

l2306E598:
	addi	s1,s0,+0000000C

l2306E59C:
	lui	a1,0004200F
	lbu	a2,a1,+000005F8
	c.li	a0,00000018
	lui	a5,0004201B
	add	a0,a2,a0
	addi	a3,a5,+000000B8
	addi	a1,a1,+000005F8
	addi	a5,a5,+000000B8
	c.add	a3,a0
	lbu	a6,a3,+00000014
	c.li	a0,00000001
	bgeu	a0,a6,000000002306E5FA

l2306E5C6:
	c.lw	a3,8(a0)
	bne	a0,s0,000000002306E5FA

l2306E5CC:
	c.lw	s1,0(a0)
	c.lw	a3,4(a3)
	bne	a0,a3,000000002306E5FA

l2306E5D4:
	lui	a5,00042026
	addi	a5,a5,+000007F0
	lhu	a4,a5,+0000002E
	c.addi	a4,00000001
	sh	a4,a5,+0000002E

l2306E5E6:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002306E32C

l2306E5EE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2306E5FA:
	c.li	a2,00000001
	c.li	a3,0000000A

l2306E5FE:
	lbu	a0,a5,+00000014
	bgeu	a2,a0,000000002306E61E

l2306E606:
	c.lw	a5,8(a0)
	bne	a0,s0,000000002306E61E

l2306E60C:
	lw	a6,s1,+00000000
	c.lw	a5,4(a0)
	bne	a6,a0,000000002306E61E

l2306E616:
	sb	a4,a1,+00000000
	c.mv	a2,a4
	c.j	000000002306E5E6

l2306E61E:
	c.addi	a4,00000001
	andi	a4,a4,+000000FF
	c.addi	a5,00000018
	bne	a4,a3,000000002306E5FE

l2306E62A:
	c.mv	a2,s2
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002306E3C8
	c.j	000000002306E5EE

l2306E636:
	lui	a3,000230CC
	addi	a3,a3,-00000514
	c.j	000000002306E564

;; igmp_send: 2306E640
;;   Called from:
;;     2306EA96 (in igmp_joingroup_netif)
;;     2306EBAE (in igmp_leavegroup_netif)
;;     2306ECD6 (in igmp_tmr)
igmp_send proc
	lui	a5,000230CC
	lw	a5,a5,-00000524
	c.addi16sp	FFFFFFB0
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.mv	s4,a0
	c.mv	s3,a1
	c.mv	s5,a2
	c.li	a1,00000008
	addi	a2,zero,+00000280
	addi	a0,zero,+000000B6
	c.swsp	s1,000000A0
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	a5,00000014
	lui	s1,00042026
	jal	ra,0000000023070226
	addi	s1,s1,+000007F0
	c.beqz	a0,000000002306E734

l2306E678:
	lw	a5,s4,+00000004
	c.li	a2,00000016
	c.mv	s2,a0
	c.swsp	a5,00000014
	lw	a5,s3,+00000004
	c.lw	a0,4(s0)
	andi	a1,a5,+000000FF
	srli	a3,a5,00000008
	srli	a4,a5,00000010
	c.srli	a5,00000018
	bne	s5,a2,000000002306E71A

l2306E69A:
	sb	a5,s0,+00000007
	sb	a1,s0,+00000004
	sb	a3,s0,+00000005
	sb	a4,s0,+00000006
	c.li	a5,00000001
	addi	a2,s3,+00000004
	sb	a5,s3,+00000008

l2306E6B4:
	c.li	a1,00000008
	sb	s5,s0,+00000000
	sb	zero,s0,+00000001
	sb	zero,s0,+00000002
	sb	zero,s0,+00000003
	c.mv	a0,s0
	c.swsp	a2,0000008C
	jal	ra,000000002306C796
	sb	a0,s0,+00000002
	c.srli	a0,00000008
	sb	a0,s0,+00000003
	addi	a5,zero,+00000494
	c.swsp	a5,00000094
	lhu	a5,s1,+00000060
	c.lwsp	t3,00000084
	addi	a7,sp,+0000002C
	c.addi	a5,00000001
	sh	a5,s1,+00000060
	c.li	a5,00000004
	c.swsp	a5,00000000
	c.mv	a6,s4
	c.li	a5,00000002
	c.li	a4,00000000
	c.li	a3,00000001
	c.addi4spn	a1,00000028
	c.mv	a0,s2
	jal	ra,000000002306F2FC
	c.mv	a0,s2
	jal	ra,00000000230701A4

l2306E708:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.addi16sp	00000050
	c.jr	ra

l2306E71A:
	lui	a2,0004200F
	sb	a1,s0,+00000004
	sb	a3,s0,+00000005
	sb	a4,s0,+00000006
	sb	a5,s0,+00000007
	addi	a2,a2,+000005FC
	c.j	000000002306E6B4

l2306E734:
	lhu	a5,s1,+0000006A
	c.addi	a5,00000001
	sh	a5,s1,+0000006A
	c.j	000000002306E708

;; igmp_delaying_member: 2306E740
;;   Called from:
;;     2306E810 (in igmp_report_groups)
;;     2306E9D4 (in igmp_input)
;;     2306E9F6 (in igmp_input)
igmp_delaying_member proc
	lbu	a5,a0,+00000009
	c.li	a4,00000002
	beq	a5,a4,000000002306E75A

l2306E74A:
	c.li	a4,00000001
	bne	a5,a4,000000002306E792

l2306E750:
	lhu	a5,a0,+0000000A
	c.beqz	a5,000000002306E75A

l2306E756:
	bgeu	a1,a5,000000002306E792

l2306E75A:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.li	a5,00000002
	c.mv	s0,a1
	c.mv	s1,a0
	bltu	a5,a1,000000002306E782

l2306E76C:
	c.li	a5,00000001
	sh	a5,s1,+0000000A

l2306E772:
	c.li	a5,00000001
	sb	a5,s1,+00000009
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2306E782:
	jal	ra,0000000023065C28
	and	s0,a0,s0
	sh	s0,s1,+0000000A
	c.beqz	s0,000000002306E76C

l2306E790:
	c.j	000000002306E772

l2306E792:
	c.jr	ra

;; igmp_init: 2306E794
;;   Called from:
;;     2306C866 (in lwip_init)
igmp_init proc
	lui	a5,00001000
	lui	a4,0004200F
	addi	a5,a5,+000000E0
	sw	a5,a4,+00000600
	lui	a5,00002000
	lui	a4,0004200F
	addi	a5,a5,+000000E0
	sw	a5,a4,+000005FC
	c.jr	ra

;; igmp_stop: 2306E7B6
;;   Called from:
;;     2306FEEC (in netif_remove)
igmp_stop proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.lw	a0,44(s0)
	c.mv	s1,a0
	sw	zero,a0,+0000002C

l2306E7C8:
	c.bnez	s0,000000002306E7D8

l2306E7CA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2306E7D8:
	c.lw	s1,72(a5)
	lw	s2,s0,+00000000
	c.beqz	a5,000000002306E7EA

l2306E7E0:
	c.li	a2,00000000
	addi	a1,s0,+00000004
	c.mv	a0,s1
	c.jalr	a5

l2306E7EA:
	c.mv	a1,s0
	c.li	a0,0000000A
	jal	ra,000000002306FB62
	c.mv	s0,s2
	c.j	000000002306E7C8

;; igmp_report_groups: 2306E7F6
;;   Called from:
;;     2306FBEA (in netif_issue_reports)
igmp_report_groups proc
	c.lw	a0,44(a5)
	c.beqz	a5,000000002306E818

l2306E7FA:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a5,0(s0)

l2306E802:
	c.bnez	s0,000000002306E80C

l2306E804:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2306E80C:
	c.mv	a0,s0
	c.li	a1,00000005
	jal	ra,000000002306E740
	c.lw	s0,0(s0)
	c.j	000000002306E802

l2306E818:
	c.jr	ra

;; igmp_lookfor_group: 2306E81A
;;   Called from:
;;     2306E83A (in igmp_lookup_group)
;;     2306E934 (in igmp_input)
;;     2306E9E2 (in igmp_input)
;;     2306EB6E (in igmp_leavegroup_netif)
;;     2306EF06 (in ip4_input)
igmp_lookfor_group proc
	c.lw	a0,44(a0)

l2306E81C:
	c.bnez	a0,000000002306E820

l2306E81E:
	c.jr	ra

l2306E820:
	c.lw	a0,4(a4)
	c.lw	a1,0(a5)
	beq	a4,a5,000000002306E81E

l2306E828:
	c.lw	a0,0(a0)
	c.j	000000002306E81C

;; igmp_lookup_group: 2306E82C
;;   Called from:
;;     2306E88C (in igmp_start)
;;     2306EA5C (in igmp_joingroup_netif)
igmp_lookup_group proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s1,a0
	c.mv	s2,a1
	jal	ra,000000002306E81A
	c.bnez	a0,000000002306E866

l2306E840:
	c.li	a0,0000000A
	c.lw	s1,44(s0)
	jal	ra,000000002306FB44
	c.beqz	a0,000000002306E866

l2306E84A:
	c.li	a5,00000000
	beq	s2,zero,000000002306E854

l2306E850:
	lw	a5,s2,+00000000

l2306E854:
	c.sw	a0,4(a5)
	sw	zero,a0,+00000008
	sb	zero,a0,+0000000C
	c.bnez	s0,000000002306E872

l2306E860:
	sw	zero,a0,+00000000
	c.sw	s1,44(a0)

l2306E866:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2306E872:
	c.lw	s0,0(a5)
	c.sw	a0,0(a5)
	c.sw	s0,0(a0)
	c.j	000000002306E866

;; igmp_start: 2306E87A
;;   Called from:
;;     2306FE16 (in netif_add)
igmp_start proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,0004200F
	addi	a1,s1,+00000600
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002306E82C
	c.beqz	a0,000000002306E8BE

l2306E892:
	c.li	a5,00000002
	sb	a5,a0,+00000009
	lbu	a5,a0,+0000000C
	c.addi	a5,00000001
	sb	a5,a0,+0000000C
	c.lw	s0,72(a5)
	c.li	a0,00000000
	c.beqz	a5,000000002306E8B4

l2306E8A8:
	c.li	a2,00000001
	addi	a1,s1,+00000600
	c.mv	a0,s0
	c.jalr	a5
	c.li	a0,00000000

l2306E8B4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2306E8BE:
	c.li	a0,FFFFFFFF
	c.j	000000002306E8B4

;; igmp_input: 2306E8C2
;;   Called from:
;;     2306F0AA (in ip4_input)
igmp_input proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	lui	s3,00042026
	c.swsp	s0,00000014
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	addi	s0,s3,+000007F0
	lhu	a5,s0,+00000062
	c.mv	s5,a1
	c.addi	a5,00000001
	sh	a5,s0,+00000062
	lhu	a1,a0,+0000000A
	c.li	a5,00000007
	bltu	a5,a1,000000002306E910

l2306E8F0:
	jal	ra,00000000230701A4
	lhu	a5,s0,+00000068
	c.addi	a5,00000001
	sh	a5,s0,+00000068

l2306E8FE:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l2306E910:
	c.lw	a0,4(s1)
	c.mv	s2,a0
	c.mv	s4,a2
	c.mv	a0,s1
	jal	ra,000000002306C796
	c.beqz	a0,000000002306E930

l2306E91E:
	c.mv	a0,s2
	jal	ra,00000000230701A4
	lhu	a5,s0,+00000066
	c.addi	a5,00000001
	sh	a5,s0,+00000066
	c.j	000000002306E8FE

l2306E930:
	c.mv	a1,s4
	c.mv	a0,s5
	jal	ra,000000002306E81A
	c.bnez	a0,000000002306E94C

l2306E93A:
	c.mv	a0,s2
	jal	ra,00000000230701A4
	lhu	a5,s0,+00000064
	c.addi	a5,00000001
	sh	a5,s0,+00000064
	c.j	000000002306E8FE

l2306E94C:
	lbu	a5,s1,+00000000
	c.li	a4,00000011
	beq	a5,a4,000000002306E968

l2306E956:
	c.li	a4,00000016
	beq	a5,a4,000000002306EA08

l2306E95C:
	lhu	a5,s0,+0000006C
	c.addi	a5,00000001
	sh	a5,s0,+0000006C
	c.j	000000002306E9BA

l2306E968:
	lbu	a4,s1,+00000005
	lbu	a5,s1,+00000004
	lw	a3,s4,+00000000
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,s1,+00000006
	addi	s3,s3,+000007F0
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,s1,+00000007
	c.slli	a5,18
	c.or	a5,a4
	lui	a4,0004200F
	lw	a4,a4,+00000600
	bne	a3,a4,000000002306EA24

l2306E998:
	c.bnez	a5,000000002306E9DC

l2306E99A:
	lbu	a5,s1,+00000001
	c.bnez	a5,000000002306E9C2

l2306E9A0:
	lhu	a5,s0,+0000006E
	c.addi	a5,00000001
	sh	a5,s0,+0000006E
	c.li	a5,0000000A
	sb	a5,s1,+00000001

l2306E9B0:
	lw	a5,s5,+0000002C
	c.beqz	a5,000000002306E9BA

l2306E9B6:
	c.lw	a5,0(s0)

l2306E9B8:
	c.bnez	s0,000000002306E9CE

l2306E9BA:
	c.mv	a0,s2
	jal	ra,00000000230701A4
	c.j	000000002306E8FE

l2306E9C2:
	lhu	a5,s0,+00000072
	c.addi	a5,00000001
	sh	a5,s0,+00000072
	c.j	000000002306E9B0

l2306E9CE:
	lbu	a1,s1,+00000001
	c.mv	a0,s0
	jal	ra,000000002306E740
	c.lw	s0,0(s0)
	c.j	000000002306E9B8

l2306E9DC:
	c.addi4spn	a1,0000000C
	c.mv	a0,s5
	c.swsp	a5,00000084
	jal	ra,000000002306E81A
	c.beqz	a0,000000002306E9FC

l2306E9E8:
	lhu	a5,s3,+00000070
	c.addi	a5,00000001
	sh	a5,s3,+00000070
	lbu	a1,s1,+00000001
	jal	ra,000000002306E740
	c.j	000000002306E9BA

l2306E9FC:
	lhu	a5,s0,+00000064
	c.addi	a5,00000001
	sh	a5,s0,+00000064
	c.j	000000002306E9BA

l2306EA08:
	lhu	a5,s0,+00000074
	c.addi	a5,00000001
	sh	a5,s0,+00000074
	lbu	a4,a0,+00000009
	c.li	a5,00000001
	bne	a4,a5,000000002306E9BA

l2306EA1C:
	addi	a5,zero,+00000200
	c.sw	a0,8(a5)
	c.j	000000002306E9BA

l2306EA24:
	c.beqz	a5,000000002306E95C

l2306EA26:
	c.j	000000002306E9E8

;; igmp_joingroup_netif: 2306EA28
;;   Called from:
;;     2306EB2C (in igmp_joingroup)
igmp_joingroup_netif proc
	c.lw	a1,0(a3)
	addi	a5,zero,+000000E0
	andi	a2,a3,+000000F0
	bne	a2,a5,000000002306EACC

l2306EA36:
	lui	a5,0004200F
	lw	a2,a5,+00000600
	c.li	a5,FFFFFFFA
	beq	a3,a2,000000002306EACE

l2306EA44:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	lbu	a3,a0,+00000041
	c.mv	s1,a0
	andi	a3,a3,+00000020
	c.beqz	a3,000000002306EABE

l2306EA5A:
	c.mv	s2,a1
	jal	ra,000000002306E82C
	c.mv	s0,a0
	c.li	a5,FFFFFFFF
	c.beqz	a0,000000002306EABE

l2306EA66:
	lbu	a5,a0,+00000009
	c.bnez	a5,000000002306EAB2

l2306EA6C:
	lbu	a5,a0,+0000000C
	c.bnez	a5,000000002306EA7E

l2306EA72:
	c.lw	s1,72(a5)
	c.beqz	a5,000000002306EA7E

l2306EA76:
	c.li	a2,00000001
	c.mv	a1,s2
	c.mv	a0,s1
	c.jalr	a5

l2306EA7E:
	lui	a5,00042026
	addi	a5,a5,+000007F0
	lhu	a4,a5,+00000076
	c.li	a2,00000016
	c.mv	a1,s0
	c.addi	a4,00000001
	c.mv	a0,s1
	sh	a4,a5,+00000076
	jal	ra,000000002306E640
	jal	ra,0000000023065C28
	c.li	a5,00000005
	and	a0,a0,a5
	c.bnez	a0,000000002306EAA8

l2306EAA6:
	c.li	a0,00000001

l2306EAA8:
	c.li	a5,00000001
	sh	a0,s0,+0000000A
	sb	a5,s0,+00000009

l2306EAB2:
	lbu	a5,s0,+0000000C
	c.addi	a5,00000001
	sb	a5,s0,+0000000C
	c.li	a5,00000000

l2306EABE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2306EACC:
	c.li	a5,FFFFFFFA

l2306EACE:
	c.mv	a0,a5
	c.jr	ra

;; igmp_joingroup: 2306EAD2
;;   Called from:
;;     23076B0E (in lwip_netconn_do_join_leave_group)
igmp_joingroup proc
	c.lw	a1,0(a5)
	addi	a4,zero,+000000E0
	andi	a3,a5,+000000F0
	bne	a3,a4,000000002306EB36

l2306EAE0:
	lui	a4,0004200F
	lw	a4,a4,+00000600
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.mv	s1,a0
	c.li	a0,FFFFFFFA
	beq	a5,a4,000000002306EB06

l2306EAFA:
	lui	a5,00042026
	lw	s0,a5,+000007E8
	c.mv	s2,a1

l2306EB04:
	c.bnez	s0,000000002306EB12

l2306EB06:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2306EB12:
	lbu	a5,s0,+00000041
	andi	a5,a5,+00000020
	c.beqz	a5,000000002306EB32

l2306EB1C:
	c.beqz	s1,000000002306EB28

l2306EB1E:
	c.lw	s1,0(a5)
	c.beqz	a5,000000002306EB28

l2306EB22:
	c.lw	s0,4(a4)
	bne	a5,a4,000000002306EB32

l2306EB28:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002306EA28
	c.bnez	a0,000000002306EB06

l2306EB32:
	c.lw	s0,0(s0)
	c.j	000000002306EB04

l2306EB36:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; igmp_leavegroup_netif: 2306EB3A
;;   Called from:
;;     2306EC4E (in igmp_leavegroup)
igmp_leavegroup_netif proc
	c.lw	a1,0(a4)
	addi	a5,zero,+000000E0
	andi	a3,a4,+000000F0
	bne	a3,a5,000000002306EBE2

l2306EB48:
	lui	a5,0004200F
	lw	a3,a5,+00000600
	c.li	a5,FFFFFFFA
	beq	a4,a3,000000002306EBE4

l2306EB56:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	lbu	a4,a0,+00000041
	c.mv	s1,a0
	andi	a4,a4,+00000020
	c.beqz	a4,000000002306EBC8

l2306EB6C:
	c.mv	s2,a1
	jal	ra,000000002306E81A
	c.mv	s0,a0
	c.li	a5,FFFFFFFA
	c.beqz	a0,000000002306EBC8

l2306EB78:
	lbu	a5,a0,+0000000C
	c.li	a4,00000001
	bltu	a4,a5,000000002306EBDA

l2306EB82:
	c.lw	s1,44(a5)

l2306EB84:
	c.beqz	a5,000000002306EB90

l2306EB86:
	c.lw	a5,0(a4)
	bne	s0,a4,000000002306EBD6

l2306EB8C:
	c.lw	s0,0(a4)
	c.sw	a5,0(a4)

l2306EB90:
	lbu	a5,s0,+00000008
	c.beqz	a5,000000002306EBB2

l2306EB96:
	lui	a5,00042026
	addi	a5,a5,+000007F0
	lhu	a4,a5,+00000078
	c.li	a2,00000017
	c.mv	a1,s0
	c.addi	a4,00000001
	c.mv	a0,s1
	sh	a4,a5,+00000078
	jal	ra,000000002306E640

l2306EBB2:
	c.lw	s1,72(a5)
	c.beqz	a5,000000002306EBBE

l2306EBB6:
	c.li	a2,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	c.jalr	a5

l2306EBBE:
	c.mv	a1,s0
	c.li	a0,0000000A
	jal	ra,000000002306FB62

l2306EBC6:
	c.li	a5,00000000

l2306EBC8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2306EBD6:
	c.mv	a5,a4
	c.j	000000002306EB84

l2306EBDA:
	c.addi	a5,FFFFFFFF
	sb	a5,a0,+0000000C
	c.j	000000002306EBC6

l2306EBE2:
	c.li	a5,FFFFFFFA

l2306EBE4:
	c.mv	a0,a5
	c.jr	ra

;; igmp_leavegroup: 2306EBE8
;;   Called from:
;;     23076B24 (in lwip_netconn_do_join_leave_group)
igmp_leavegroup proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.lw	a1,0(a5)
	addi	a4,zero,+000000E0
	c.li	s1,FFFFFFFA
	andi	a3,a5,+000000F0
	bne	a3,a4,000000002306EC20

l2306EC04:
	lui	a4,0004200F
	lw	a4,a4,+00000600
	c.li	s1,FFFFFFFA
	beq	a5,a4,000000002306EC20

l2306EC12:
	lui	a5,00042026
	lw	s0,a5,+000007E8
	c.mv	s3,a1
	c.mv	s2,a0

l2306EC1E:
	c.bnez	s0,000000002306EC30

l2306EC20:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2306EC30:
	lbu	a5,s0,+00000041
	andi	a5,a5,+00000020
	c.beqz	a5,000000002306EC56

l2306EC3A:
	beq	s2,zero,000000002306EC4A

l2306EC3E:
	lw	a5,s2,+00000000
	c.beqz	a5,000000002306EC4A

l2306EC44:
	c.lw	s0,4(a4)
	bne	a5,a4,000000002306EC56

l2306EC4A:
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,000000002306EB3A
	c.beqz	s1,000000002306EC56

l2306EC54:
	c.mv	s1,a0

l2306EC56:
	c.lw	s0,0(s0)
	c.j	000000002306EC1E

;; igmp_tmr: 2306EC5A
igmp_tmr proc
	c.addi	sp,FFFFFFE0
	lui	a5,00042026
	c.swsp	s1,00000088
	lw	s1,a5,+000007E8
	c.swsp	s2,00000008
	lui	s2,00042026
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.li	s3,00000001
	lui	s4,0004200F
	c.li	s5,00000002
	addi	s2,s2,+000007F0

l2306EC82:
	c.bnez	s1,000000002306EC96

l2306EC84:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2306EC96:
	c.lw	s1,44(s0)

l2306EC98:
	c.bnez	s0,000000002306EC9E

l2306EC9A:
	c.lw	s1,0(s1)
	c.j	000000002306EC82

l2306EC9E:
	lhu	a5,s0,+0000000A
	c.beqz	a5,000000002306ECDA

l2306ECA4:
	c.addi	a5,FFFFFFFF
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+0000000A
	c.bnez	a5,000000002306ECDA

l2306ECB0:
	lbu	a5,s0,+00000009
	bne	a5,s3,000000002306ECDA

l2306ECB8:
	c.lw	s0,4(a4)
	lw	a5,s4,+00000600
	beq	a4,a5,000000002306ECDA

l2306ECC2:
	sb	s5,s0,+00000009
	lhu	a5,s2,+0000007A
	c.li	a2,00000016
	c.mv	a1,s0
	c.addi	a5,00000001
	c.mv	a0,s1
	sh	a5,s2,+0000007A
	jal	ra,000000002306E640

l2306ECDA:
	c.lw	s0,0(s0)
	c.j	000000002306EC98

;; ip4_input_accept: 2306ECDE
;;   Called from:
;;     2306EF68 (in ip4_input)
;;     2306EF92 (in ip4_input)
ip4_input_accept proc
	lbu	a5,a0,+00000041
	c.andi	a5,00000001
	c.beqz	a5,000000002306ED0E

l2306ECE6:
	c.lw	a0,4(a4)
	c.mv	a1,a0
	c.li	a0,00000000
	c.beqz	a4,000000002306ED12

l2306ECEE:
	lui	a5,00042027
	lw	a5,a5,-000006D4
	c.li	a0,00000001
	beq	a4,a5,000000002306ED12

l2306ECFC:
	c.addi	sp,FFFFFFF0
	c.mv	a0,a5
	c.swsp	ra,00000084
	c.jal	000000002306F33A
	c.lwsp	a2,00000020
	sltu	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

l2306ED0E:
	c.li	a0,00000000
	c.jr	ra

l2306ED12:
	c.jr	ra

;; ip4_route: 2306ED14
;;   Called from:
;;     23070AA6 (in raw_sendto)
;;     2307103E (in tcp_connect)
;;     2307309A (in tcp_input)
;;     23073206 (in tcp_input)
;;     23073952 (in tcp_output_control_segment)
;;     23074364 (in tcp_output)
;;     230750C6 (in udp_sendto_chksum)
;;     2307510E (in udp_sendto_chksum)
;;     23076EE6 (in icmp_dest_unreach)
ip4_route proc
	c.lw	a0,0(a5)
	addi	a4,zero,+000000E0
	andi	a3,a5,+000000F0
	bne	a3,a4,000000002306ED2C

l2306ED22:
	lui	a4,0004200F
	lw	a0,a4,+00000604
	c.bnez	a0,000000002306ED9E

l2306ED2C:
	lui	a4,00042026
	lw	a0,a4,+000007E8

l2306ED34:
	c.bnez	a0,000000002306ED70

l2306ED36:
	lui	a4,00042026
	lw	a4,a4,+000007E4
	c.beqz	a4,000000002306ED5C

l2306ED40:
	lbu	a3,a4,+00000041
	c.li	a2,00000005
	c.andi	a3,00000005
	bne	a3,a2,000000002306ED5C

l2306ED4C:
	c.lw	a4,4(a3)
	c.beqz	a3,000000002306ED5C

l2306ED50:
	andi	a5,a5,+000000FF
	addi	a3,zero,+0000007F
	bne	a5,a3,000000002306ED9C

l2306ED5C:
	lui	a5,00042026
	addi	a5,a5,+000007F0
	lhu	a4,a5,+0000003E
	c.addi	a4,00000001
	sh	a4,a5,+0000003E
	c.jr	ra

l2306ED70:
	lbu	a3,a0,+00000041
	andi	a4,a3,+00000001
	c.beqz	a4,000000002306ED98

l2306ED7A:
	srli	a4,a3,00000002
	c.andi	a4,00000001
	c.beqz	a4,000000002306ED98

l2306ED82:
	c.lw	a0,4(a4)
	c.beqz	a4,000000002306ED98

l2306ED86:
	c.lw	a0,8(a2)
	c.xor	a4,a5
	c.and	a4,a2
	c.beqz	a4,000000002306ED9E

l2306ED8E:
	c.andi	a3,00000002
	c.bnez	a3,000000002306ED98

l2306ED92:
	c.lw	a0,12(a4)
	beq	a5,a4,000000002306ED9E

l2306ED98:
	c.lw	a0,0(a0)
	c.j	000000002306ED34

l2306ED9C:
	c.mv	a0,a4

l2306ED9E:
	c.jr	ra

;; ip4_input: 2306EDA0
;;   Called from:
;;     23075376 (in ethernet_input)
ip4_input proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,00042026
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	addi	s1,s0,+000007F0
	lhu	a5,s1,+00000032
	c.addi	a5,00000001
	sh	a5,s1,+00000032
	lw	s3,a0,+00000004
	c.li	a5,00000004
	lbu	s6,s3,+00000000
	srli	a4,s6,00000004
	beq	a4,a5,000000002306EE0C

l2306EDDA:
	jal	ra,00000000230701A4
	lhu	a5,s1,+00000044
	c.addi	a5,00000001
	sh	a5,s1,+00000044
	lhu	a5,s1,+00000036
	c.addi	a5,00000001
	sh	a5,s1,+00000036

l2306EDF2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l2306EE0C:
	lbu	a5,s3,+00000003
	c.mv	s2,a0
	lbu	a0,s3,+00000002
	c.slli	a5,08
	c.mv	s4,a1
	c.or	a0,a5
	jal	ra,000000002306BC12
	andi	s6,s6,+0000000F
	lhu	a5,s2,+00000008
	c.slli	s6,02
	slli	s1,s6,00000010
	addi	s0,s0,+000007F0
	c.srli	s1,00000010
	c.mv	s5,a0
	bgeu	a0,a5,000000002306EE42

l2306EE3A:
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,0000000023070384

l2306EE42:
	lhu	a5,s2,+0000000A
	bltu	a5,s1,000000002306EE58

l2306EE4A:
	lhu	a5,s2,+00000008
	bltu	a5,s5,000000002306EE58

l2306EE52:
	c.li	a5,00000013
	bltu	a5,s1,000000002306EE74

l2306EE58:
	c.mv	a0,s2
	jal	ra,00000000230701A4
	lhu	a5,s0,+0000003A
	c.addi	a5,00000001
	sh	a5,s0,+0000003A

l2306EE68:
	lhu	a5,s0,+00000036
	c.addi	a5,00000001
	sh	a5,s0,+00000036
	c.j	000000002306EDF2

l2306EE74:
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,000000002306C796
	c.beqz	a0,000000002306EE90

l2306EE7E:
	c.mv	a0,s2
	jal	ra,00000000230701A4
	lhu	a5,s0,+00000038
	c.addi	a5,00000001
	sh	a5,s0,+00000038
	c.j	000000002306EE68

l2306EE90:
	lbu	a4,s3,+00000011
	lbu	a5,s3,+00000010
	lui	s1,00042027
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,s3,+00000012
	addi	a2,s1,-000006E8
	addi	s1,s1,-000006E8
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,s3,+00000013
	c.slli	a5,18
	c.or	a5,a4
	c.sw	a2,20(a5)
	lbu	a3,s3,+0000000D
	lbu	a4,s3,+0000000C
	andi	a5,a5,+000000F0
	c.slli	a3,08
	c.or	a3,a4
	lbu	a4,s3,+0000000E
	c.slli	a4,10
	c.or	a3,a4
	lbu	a4,s3,+0000000F
	c.slli	a4,18
	c.or	a4,a3
	c.sw	a2,16(a4)
	addi	a4,zero,+000000E0
	bne	a5,a4,000000002306EF66

l2306EEE4:
	lbu	a5,s4,+00000041
	andi	a5,a5,+00000020
	c.bnez	a5,000000002306EEFC

l2306EEEE:
	lbu	a4,s3,+00000009
	c.li	a5,00000011
	beq	a4,a5,000000002306EFA0

l2306EEF8:
	c.li	s5,00000000
	c.j	000000002306EF1E

l2306EEFC:
	lui	a1,00042027
	addi	a1,a1,-000006D4
	c.mv	a0,s4
	jal	ra,000000002306E81A
	c.beqz	a0,000000002306EEEE

l2306EF0C:
	c.lw	s1,20(a3)
	lui	a5,00001000
	addi	a5,a5,+000000E0
	c.lw	s1,16(a4)
	beq	a3,a5,000000002306EF3E

l2306EF1C:
	c.mv	s5,s4

l2306EF1E:
	c.lw	s1,16(a0)
	c.beqz	a0,000000002306EFBC

l2306EF22:
	c.mv	a1,s4
	c.jal	000000002306F33A
	c.bnez	a0,000000002306EF36

l2306EF28:
	c.lw	s1,16(a5)
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	bne	a5,a4,000000002306EFBC

l2306EF36:
	c.mv	a0,s2
	jal	ra,00000000230701A4
	c.j	000000002306EE68

l2306EF3E:
	c.mv	s5,s4
	c.bnez	a4,000000002306EF1C

l2306EF42:
	lbu	a5,s3,+00000006
	lbu	a4,s3,+00000007
	andi	a5,a5,+0000003F
	c.slli	a4,08
	c.or	a5,a4
	c.beqz	a5,000000002306EFD2

l2306EF54:
	c.mv	a0,s2
	jal	ra,00000000230701A4
	lhu	a5,s0,+00000042
	c.addi	a5,00000001
	sh	a5,s0,+00000042
	c.j	000000002306EE68

l2306EF66:
	c.mv	a0,s4
	jal	ra,000000002306ECDE
	c.bnez	a0,000000002306EF9A

l2306EF6E:
	lbu	a4,s1,+00000014
	addi	a5,zero,+0000007F
	beq	a4,a5,000000002306EEEE

l2306EF7A:
	lui	a5,00042026
	lw	s5,a5,+000007E8

l2306EF82:
	beq	s5,zero,000000002306EEEE

l2306EF86:
	bne	s5,s4,000000002306EF90

l2306EF8A:
	lw	s5,s5,+00000000
	c.j	000000002306EF82

l2306EF90:
	c.mv	a0,s5
	jal	ra,000000002306ECDE
	c.beqz	a0,000000002306EF8A

l2306EF98:
	c.j	000000002306EF1E

l2306EF9A:
	bne	s4,zero,000000002306EF1C

l2306EF9E:
	c.j	000000002306EEEE

l2306EFA0:
	add	a4,s3,s6
	lbu	a5,a4,+00000003
	lbu	a3,a4,+00000002
	c.lui	a4,00004000
	c.slli	a5,08
	c.or	a5,a3
	addi	a4,a4,+00000400
	bne	a5,a4,000000002306EEF8

l2306EFBA:
	c.mv	s5,s4

l2306EFBC:
	bne	s5,zero,000000002306EF42

l2306EFC0:
	lhu	a5,s0,+00000036
	c.mv	a0,s2
	c.addi	a5,00000001
	sh	a5,s0,+00000036
	jal	ra,00000000230701A4
	c.j	000000002306EDF2

l2306EFD2:
	sw	s5,s1,+00000000
	sw	s4,s1,+00000004
	sw	s3,s1,+00000008
	lbu	a5,s3,+00000000
	c.mv	a1,s4
	c.mv	a0,s2
	c.andi	a5,0000000F
	c.slli	a5,02
	sh	a5,s1,+0000000C
	c.li	s8,00000001
	jal	ra,0000000023070836
	c.mv	s7,a0
	beq	a0,s8,000000002306F070

l2306EFFA:
	c.mv	a1,s6
	c.mv	a0,s2
	jal	ra,0000000023070142
	lbu	a5,s3,+00000009
	c.li	a4,00000002
	beq	a5,a4,000000002306F09E

l2306F00C:
	bltu	a4,a5,000000002306F05C

l2306F010:
	beq	a5,s8,000000002306F094

l2306F014:
	c.li	a5,00000002
	beq	s7,a5,000000002306F054

l2306F01A:
	c.lw	s1,20(a0)
	c.mv	a1,s5
	c.jal	000000002306F33A
	c.bnez	a0,000000002306F040

l2306F022:
	c.lw	s1,20(a5)
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	beq	a5,a4,000000002306F040

l2306F030:
	c.mv	a1,s6
	c.mv	a0,s2
	jal	ra,0000000023070192
	c.li	a1,00000002
	c.mv	a0,s2
	jal	ra,0000000023076E72

l2306F040:
	lhu	a5,s0,+00000040
	c.addi	a5,00000001
	sh	a5,s0,+00000040
	lhu	a5,s0,+00000036
	c.addi	a5,00000001
	sh	a5,s0,+00000036

l2306F054:
	c.mv	a0,s2
	jal	ra,00000000230701A4
	c.j	000000002306F070

l2306F05C:
	c.li	a4,00000006
	beq	a5,a4,000000002306F08A

l2306F062:
	c.li	a4,00000011
	bne	a5,a4,000000002306F014

l2306F068:
	c.mv	a1,s4
	c.mv	a0,s2
	jal	ra,0000000023074B9E

l2306F070:
	sw	zero,s1,+00000000
	sw	zero,s1,+00000004
	sw	zero,s1,+00000008
	sh	zero,s1,+0000000C
	sw	zero,s1,+00000010
	sw	zero,s1,+00000014
	c.j	000000002306EDF2

l2306F08A:
	c.mv	a1,s4
	c.mv	a0,s2
	jal	ra,0000000023072A06
	c.j	000000002306F070

l2306F094:
	c.mv	a1,s4
	c.mv	a0,s2
	jal	ra,0000000023076C30
	c.j	000000002306F070

l2306F09E:
	lui	a2,00042027
	addi	a2,a2,-000006D4
	c.mv	a1,s4
	c.mv	a0,s2
	jal	ra,000000002306E8C2
	c.j	000000002306F070

;; ip4_output_if_opt_src: 2306F0B0
;;   Called from:
;;     2306F312 (in ip4_output_if_opt)
;;     2306F330 (in ip4_output_if_src)
ip4_output_if_opt_src proc
	c.addi16sp	FFFFFFB0
	c.swsp	s3,0000009C
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.mv	s8,a0
	c.mv	s3,a6
	lhu	s9,sp,+00000050
	beq	a2,zero,000000002306F2CC

l2306F0D4:
	c.mv	s4,a1
	c.mv	s2,a2
	c.mv	s6,a3
	c.mv	s5,a4
	c.mv	s7,a5
	beq	s9,zero,000000002306F2C0

l2306F0E2:
	addi	a5,zero,+00000028
	bgeu	a5,s9,000000002306F118

l2306F0EA:
	lui	a5,00042026
	addi	a5,a5,+000007F0
	lhu	a4,a5,+00000044
	c.li	a0,FFFFFFFA
	c.addi	a4,00000001
	sh	a4,a5,+00000044

l2306F0FE:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.lwsp	a6,000001D8
	c.lwsp	a2,000001F8
	c.lwsp	s0,0000011C
	c.lwsp	tp,0000013C
	c.addi16sp	00000050
	c.jr	ra

l2306F118:
	addi	s0,s9,+00000003
	c.andi	s0,FFFFFFFC
	c.slli	s0,10
	c.srli	s0,00000010
	addi	s1,s0,+00000014
	c.mv	a1,s0
	c.swsp	a7,00000084
	c.slli	s1,10
	jal	ra,000000002307013C
	c.srli	s1,00000010
	c.lwsp	a2,00000028
	c.beqz	a0,000000002306F14C

l2306F136:
	lui	a5,00042026
	addi	a5,a5,+000007F0
	lhu	a4,a5,+00000044
	c.li	a0,FFFFFFFE
	c.addi	a4,00000001
	sh	a4,a5,+00000044
	c.j	000000002306F0FE

l2306F14C:
	lw	a0,s8,+00000004
	c.mv	a2,s9
	c.mv	a1,a7
	jal	ra,00000000230A382C
	bgeu	s9,s0,000000002306F16C

l2306F15C:
	lw	a0,s8,+00000004
	sub	a2,s0,s9
	c.li	a1,00000000
	c.add	a0,s9
	jal	ra,00000000230A3A68

l2306F16C:
	lw	a3,s8,+00000004
	c.srli	s0,00000001
	c.li	a5,00000000
	c.li	s9,00000000

l2306F176:
	slli	a4,a5,00000001
	c.add	a4,a3
	lhu	a4,a4,+00000000
	c.addi	a5,00000001
	c.add	s9,a4
	blt	a5,s0,000000002306F176

l2306F188:
	c.li	a1,00000014
	c.mv	a0,s8
	jal	ra,000000002307013C
	c.bnez	a0,000000002306F136

l2306F192:
	lw	s0,s8,+00000004
	sb	s6,s0,+00000008
	sb	s7,s0,+00000009
	lw	a5,s2,+00000000
	c.slli	s6,08
	or	s7,s6,s7
	srli	a4,a5,00000008
	srli	a3,a5,00000018
	sb	a5,s0,+00000010
	sb	a4,s0,+00000011
	srli	a4,a5,00000010
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,a4
	sb	a4,s0,+00000012
	srli	a4,s1,00000002
	ori	a4,a4,+00000040
	andi	a4,a4,+000000FF
	sb	a4,s0,+00000000
	slli	a0,s7,00000008
	c.slli	a4,08
	srai	s7,s7,00000008
	or	a4,a4,s5
	or	a0,a0,s7
	slli	s1,a4,00000008
	c.slli	a0,10
	c.srai	a4,00000008
	c.or	a4,s1
	c.srli	a0,00000010
	c.add	a0,a5
	slli	s1,a4,00000010
	sb	a3,s0,+00000013
	sb	s5,s0,+00000001
	c.add	a0,s9
	c.srli	s1,00000010
	c.add	s1,a0
	lhu	a0,s8,+00000008
	lui	s5,0004200F
	addi	s5,s5,+00000608
	jal	ra,000000002306BC12
	srli	a5,a0,00000008
	sb	a0,s0,+00000002
	c.add	s1,a0
	lhu	a0,s5,+00000000
	sb	a5,s0,+00000003
	sb	zero,s0,+00000006
	sb	zero,s0,+00000007
	jal	ra,000000002306BC12
	srli	a5,a0,00000008
	sb	a5,s0,+00000005
	lhu	a5,s5,+00000000
	sb	a0,s0,+00000004
	c.add	a0,s1
	c.addi	a5,00000001
	sh	a5,s5,+00000000
	bne	s4,zero,000000002306F2C6

l2306F252:
	lui	a5,000230CC
	lw	a4,a5,-00000524

l2306F25A:
	srli	a3,a4,00000018
	sb	a3,s0,+0000000F
	c.lui	a3,00010000
	srli	a5,a4,00000008
	c.addi	a3,FFFFFFFF
	sb	a4,s0,+0000000C
	sb	a5,s0,+0000000D
	srli	a5,a4,00000010
	c.and	a4,a3
	c.add	a4,a0
	c.add	a4,a5
	sb	a5,s0,+0000000E
	srli	a5,a4,00000010
	c.and	a4,a3
	c.add	a4,a5
	srli	a5,a4,00000010
	c.add	a5,a4
	xori	a5,a5,-00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,s0,+0000000A
	c.srli	a5,00000008
	sb	a5,s0,+0000000B

l2306F2A0:
	lui	a5,00042026
	addi	a5,a5,+000007F0
	lhu	a4,a5,+00000030
	c.mv	a2,s2
	c.mv	a1,s8
	c.addi	a4,00000001
	sh	a4,a5,+00000030
	lw	a5,s3,+00000014
	c.mv	a0,s3
	c.jalr	a5
	c.j	000000002306F0FE

l2306F2C0:
	c.li	s1,00000014
	c.li	s9,00000000
	c.j	000000002306F188

l2306F2C6:
	lw	a4,s4,+00000000
	c.j	000000002306F25A

l2306F2CC:
	lhu	a4,a0,+0000000A
	c.li	a5,00000013
	bgeu	a5,a4,000000002306F136

l2306F2D6:
	c.lw	a0,4(a3)
	addi	s2,sp,+0000001C
	lbu	a4,a3,+00000011
	lbu	a5,a3,+00000010
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,a3,+00000012
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,a3,+00000013
	c.slli	a5,18
	c.or	a5,a4
	c.swsp	a5,0000008C
	c.j	000000002306F2A0

;; ip4_output_if_opt: 2306F2FC
;;   Called from:
;;     2306E6FE (in igmp_send)
;;     2306F31E (in ip4_output_if)
ip4_output_if_opt proc
	lhu	t1,sp,+00000000
	c.beqz	a2,000000002306F310

l2306F302:
	c.beqz	a1,000000002306F30C

l2306F304:
	lw	t3,a1,+00000000
	bne	t3,zero,000000002306F310

l2306F30C:
	addi	a1,a6,+00000004

l2306F310:
	c.swsp	t1,00000000
	jal	zero,000000002306F0B0

;; ip4_output_if: 2306F316
;;   Called from:
;;     230709A0 (in raw_sendto_if_src)
;;     23070A3E (in raw_sendto_if_src)
;;     23073932 (in tcp_output_control_segment)
;;     23074562 (in tcp_output)
;;     23076E1C (in icmp_input)
;;     23076F2C (in icmp_dest_unreach)
ip4_output_if proc
	c.addi	sp,FFFFFFE0
	c.swsp	zero,00000000
	c.li	a7,00000000
	c.swsp	ra,0000008C
	jal	ra,000000002306F2FC
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; ip4_output_if_src: 2306F328
;;   Called from:
;;     23074FEE (in udp_sendto_if_src_chksum)
ip4_output_if_src proc
	c.addi	sp,FFFFFFE0
	c.swsp	zero,00000000
	c.li	a7,00000000
	c.swsp	ra,0000008C
	jal	ra,000000002306F0B0
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; ip4_addr_isbroadcast_u32: 2306F33A
;;   Called from:
;;     2306E1AA (in etharp_input)
;;     2306E3E2 (in etharp_query)
;;     2306E522 (in etharp_output)
;;     2306ED02 (in ip4_input_accept)
;;     2306EF24 (in ip4_input)
;;     2306F01E (in ip4_input)
;;     2307085E (in raw_input)
;;     23072A6E (in tcp_input)
;;     23074C1A (in udp_input)
;;     23076CA2 (in icmp_input)
ip4_addr_isbroadcast_u32 proc
	addi	a3,a0,-00000001
	c.li	a5,FFFFFFFD
	c.mv	a4,a0
	bltu	a5,a3,000000002306F370

l2306F346:
	lbu	a5,a1,+00000041
	andi	a0,a5,+00000002
	c.beqz	a0,000000002306F372

l2306F350:
	c.lw	a1,4(a5)
	c.li	a0,00000000
	beq	a5,a4,000000002306F372

l2306F358:
	c.lw	a1,8(a3)
	c.xor	a5,a4
	c.and	a5,a3
	c.bnez	a5,000000002306F372

l2306F360:
	xori	a3,a3,-00000001
	and	a0,a3,a4
	c.sub	a0,a3
	sltiu	a0,a0,+00000001
	c.jr	ra

l2306F370:
	c.li	a0,00000001

l2306F372:
	c.jr	ra

;; ip4addr_aton: 2306F374
;;   Called from:
;;     2306C3F6 (in dns_gethostbyname_addrtype)
;;     2306F4D8 (in ipaddr_addr)
;;     23077596 (in dhcpd_start)
;;     230775BA (in dhcpd_start)
;;     23080C40 (in bl_cipstart)
;;     2308630E (in set_if)
;;     23086324 (in set_if)
;;     23086338 (in set_if)
ip4addr_aton proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	lbu	a5,a0,+00000000
	c.addi4spn	a4,00000010
	lui	a6,000230CB
	c.mv	t3,a4
	addi	a6,a6,+000005B1
	addi	t4,zero,+00000030
	addi	t5,zero,+00000058
	c.li	t6,00000010
	c.li	t0,00000002
	addi	t2,zero,+0000002E
	c.addi4spn	s0,0000001C

l2306F39C:
	add	a3,a5,a6
	lbu	a3,a3,+00000000
	c.andi	a3,00000004
	beq	a3,zero,000000002306F4CE

l2306F3AA:
	c.li	a7,0000000A
	bne	a5,t4,000000002306F3C0

l2306F3B0:
	lbu	a5,a0,+00000001
	andi	a3,a5,+000000DF
	beq	a3,t5,000000002306F3E6

l2306F3BC:
	c.addi	a0,00000001
	c.li	a7,00000008

l2306F3C0:
	c.mv	a2,a0
	c.li	a0,00000000

l2306F3C4:
	add	a3,a6,a5
	lbu	a3,a3,+00000000
	andi	t1,a3,+00000004
	beq	t1,zero,000000002306F3F0

l2306F3D4:
	add	a0,a7,a0
	c.add	a0,a5
	addi	a0,a0,-00000030

l2306F3DE:
	lbu	a5,a2,+00000001
	c.addi	a2,00000001
	c.j	000000002306F3C4

l2306F3E6:
	lbu	a5,a0,+00000002
	c.li	a7,00000010
	c.addi	a0,00000002
	c.j	000000002306F3C0

l2306F3F0:
	bne	a7,t6,000000002306F416

l2306F3F4:
	andi	t1,a3,+00000044
	beq	t1,zero,000000002306F416

l2306F3FC:
	c.andi	a3,00000003
	c.slli	a0,04
	c.addi	a5,0000000A
	addi	t1,zero,+00000061
	beq	a3,t0,000000002306F40E

l2306F40A:
	addi	t1,zero,+00000041

l2306F40E:
	sub	a5,a5,t1
	c.or	a0,a5
	c.j	000000002306F3DE

l2306F416:
	bne	a5,t2,000000002306F42E

l2306F41A:
	beq	a4,s0,000000002306F4CE

l2306F41E:
	c.addi	a4,00000004
	sw	a0,a4,+00000FFC
	lbu	a5,a2,+00000001
	addi	a0,a2,+00000001
	c.j	000000002306F39C

l2306F42E:
	c.beqz	a5,000000002306F436

l2306F430:
	c.andi	a3,00000008
	c.li	s0,00000000
	c.beqz	a3,000000002306F458

l2306F436:
	sub	s0,a4,t3
	c.srai	s0,00000002
	c.addi	s0,00000001
	c.li	a5,00000002
	beq	s0,a5,000000002306F494

l2306F444:
	blt	a5,s0,000000002306F462

l2306F448:
	c.beqz	s0,000000002306F458

l2306F44A:
	c.swsp	a1,00000084
	c.li	s0,00000001
	c.beqz	a1,000000002306F458

l2306F450:
	jal	ra,000000002306BC20
	c.lwsp	a2,00000064
	c.sw	a1,0(a0)

l2306F458:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

l2306F462:
	c.li	a5,00000003
	beq	s0,a5,000000002306F4AE

l2306F468:
	c.li	a5,00000004
	bne	s0,a5,000000002306F44A

l2306F46E:
	addi	a2,zero,+000000FF
	c.li	s0,00000000
	bltu	a2,a0,000000002306F458

l2306F478:
	c.lwsp	a6,000000E4
	bltu	a2,a5,000000002306F458

l2306F47E:
	c.lwsp	s4,000000A4
	bltu	a2,a3,000000002306F458

l2306F484:
	c.lwsp	s8,000000C4
	bltu	a2,a4,000000002306F458

l2306F48A:
	c.slli	a5,18
	c.slli	a3,10
	c.or	a5,a3
	c.slli	a4,08
	c.j	000000002306F4CA

l2306F494:
	lui	a5,00001000
	c.li	s0,00000000
	bgeu	a0,a5,000000002306F458

l2306F49E:
	c.lwsp	a6,000000E4
	addi	a4,zero,+000000FF
	bltu	a4,a5,000000002306F458

l2306F4A8:
	c.slli	a5,18

l2306F4AA:
	c.or	a0,a5
	c.j	000000002306F44A

l2306F4AE:
	c.lui	a5,00010000
	c.li	s0,00000000
	bgeu	a0,a5,000000002306F458

l2306F4B6:
	c.lwsp	a6,000000E4
	addi	a3,zero,+000000FF
	bltu	a3,a5,000000002306F458

l2306F4C0:
	c.lwsp	s4,000000C4
	bltu	a3,a4,000000002306F458

l2306F4C6:
	c.slli	a5,18
	c.slli	a4,10

l2306F4CA:
	c.or	a5,a4
	c.j	000000002306F4AA

l2306F4CE:
	c.li	s0,00000000
	c.j	000000002306F458

;; ipaddr_addr: 2306F4D2
;;   Called from:
;;     2302361C (in bl_rx_sm_disconnect_ind)
;;     23027652 (in wifi_sta_ip_set_cmd)
;;     2302765A (in wifi_sta_ip_set_cmd)
;;     23027662 (in wifi_sta_ip_set_cmd)
;;     2302766A (in wifi_sta_ip_set_cmd)
;;     23027676 (in wifi_sta_ip_set_cmd)
;;     230776E6 (in iperf_server_udp)
;;     23077AE8 (in iperf_client_udp)
;;     23077B3A (in iperf_client_udp)
;;     23077FCC (in iperf_client_tcp)
;;     2307CDF6 (in cipsta_ip)
;;     2307CE3A (in cipsta_ip)
;;     2307CE7A (in cipsta_ip)
;;     2307CEBA (in cipsta_ip)
;;     2307CEFA (in cipsta_ip)
;;     2307D00C (in http_url_req)
ipaddr_addr proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a1,0000000C
	c.swsp	ra,0000008C
	jal	ra,000000002306F374
	c.beqz	a0,000000002306F4E6

l2306F4DE:
	c.lwsp	a2,00000044

l2306F4E0:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2306F4E6:
	c.li	a0,FFFFFFFF
	c.j	000000002306F4E0

;; ip4addr_ntoa_r: 2306F4EA
;;   Called from:
;;     23027684 (in wifi_sta_ip_set_cmd)
;;     230276AA (in wifi_sta_ip_set_cmd)
;;     230276D0 (in wifi_sta_ip_set_cmd)
;;     230276F6 (in wifi_sta_ip_set_cmd)
;;     2302771C (in wifi_sta_ip_set_cmd)
;;     2306F590 (in ip4addr_ntoa)
;;     230809B4 (in tcp_accept_callback)
ip4addr_ntoa_r proc
	c.lw	a0,0(a5)
	c.addi	sp,FFFFFFF0
	c.mv	t4,a1
	c.swsp	a5,00000084
	c.li	a0,00000000
	c.addi4spn	a3,0000000C
	c.li	t5,0000000A
	c.li	t0,00000009
	addi	t2,zero,+000000FF
	addi	t6,zero,+0000002E

l2306F502:
	lbu	a6,a3,+00000000
	c.li	a5,00000000

l2306F508:
	and	t1,a6,t5
	addi	a7,sp,+00000010
	c.add	a7,a5
	addi	t3,a5,+00000001
	andi	t3,t3,+000000FF
	srl	a4,a6,t5
	addi	t1,t1,+00000030
	sb	t1,a7,+00000FF8
	andi	a4,a4,+000000FF
	bltu	t0,a6,000000002306F55A

l2306F52E:
	sb	a4,a3,+00000000
	c.mv	a6,a0
	c.mv	a4,t4

l2306F536:
	c.addi	a0,00000001
	bne	a5,t2,000000002306F560

l2306F53C:
	bge	a6,a2,000000002306F582

l2306F540:
	sb	t6,a4,+00000000
	c.addi	a3,00000001
	c.addi4spn	a5,00000010
	addi	t4,a4,+00000001
	bne	a3,a5,000000002306F502

l2306F550:
	sb	zero,a4,+00000000
	c.mv	a0,a1

l2306F556:
	c.addi	sp,00000010
	c.jr	ra

l2306F55A:
	c.mv	a6,a4
	c.mv	a5,t3
	c.j	000000002306F508

l2306F560:
	addi	a7,a5,-00000001
	andi	a7,a7,+000000FF
	bge	a6,a2,000000002306F582

l2306F56C:
	addi	a6,sp,+00000010
	c.add	a5,a6
	lbu	a5,a5,-00000008
	c.addi	a4,00000001
	c.mv	a6,a0
	sb	a5,a4,+00000FFF
	c.mv	a5,a7
	c.j	000000002306F536

l2306F582:
	c.li	a0,00000000
	c.j	000000002306F556

;; ip4addr_ntoa: 2306F586
;;   Called from:
;;     230003F0 (in wifiprov_wifi_state_get)
;;     230003FE (in wifiprov_wifi_state_get)
;;     2300040C (in wifiprov_wifi_state_get)
;;     230272F8 (in wifi_sta_ip_info)
;;     2302730C (in wifi_sta_ip_info)
;;     23027320 (in wifi_sta_ip_info)
;;     23027334 (in wifi_sta_ip_info)
;;     23027348 (in wifi_sta_ip_info)
;;     23028C78 (in netif_status_callback)
;;     23028C8E (in netif_status_callback)
;;     23028CA4 (in netif_status_callback)
;;     2305ABEE (in ota_tcp_cmd.part.0)
;;     23077DC0 (in iperf_server)
;;     2307CC9C (in cipsta_ip_get)
;;     2307CCAA (in cipsta_ip_get)
;;     2307CCB8 (in cipsta_ip_get)
;;     2307CCCE (in cipsta_ip_get)
;;     2307CCDC (in cipsta_ip_get)
;;     2307D186 (in ap_sta_get)
;;     2307D340 (in cwjap_info)
;;     2307DD0E (in domain_name_resolution)
;;     23086216 (in httpc_get_file)
ip4addr_ntoa proc
	lui	a1,0004201B
	c.li	a2,00000010
	addi	a1,a1,+000001A8
	jal	zero,000000002306F4EA

;; mem_init: 2306F594
;;   Called from:
;;     2306C852 (in lwip_init)
mem_init proc
	lui	a5,00042046
	addi	a5,a5,-0000003D
	c.andi	a5,FFFFFFFC
	lui	a4,0004200F
	sw	a5,a4,+00000614
	c.lui	a4,00002000
	add	a3,a5,a4
	lui	a2,0004200F
	c.sw	a5,0(a4)
	sb	zero,a5,+00000004
	sw	a3,a2,+00000618
	lui	a2,00020002
	c.sw	a3,0(a2)
	c.li	a2,00000001
	sb	a2,a3,+00000004
	lui	a0,0004200F
	lui	a3,0004200F
	sw	a5,a3,+0000060C
	addi	a0,a0,+00000610
	lui	a5,00042027
	sh	a4,a5,+0000089E
	jal	zero,000000002306A74E

;; mem_free: 2306F5E2
;;   Called from:
;;     23070220 (in pbuf_free)
;;     23077362 (in dhcp_server_recv)
;;     230774E0 (in dhcp_server_stop)
;;     23085C3C (in httpc_free_state)
;;     230874D2 (in altcp_mbedtls_free)
;;     23087500 (in altcp_mbedtls_free_config)
mem_free proc
	beq	a0,zero,000000002306F74C

l2306F5E6:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	lui	s2,00042026
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	andi	a5,a0,+00000003
	c.mv	s0,a0
	addi	s2,s2,+000007F0
	c.beqz	a5,000000002306F628

l2306F606:
	jal	ra,000000002306A7EE
	lhu	a5,s2,+000000B4
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi	a5,00000001
	sh	a5,s2,+000000B4
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,000000002306A7FE

l2306F628:
	lui	s4,0004200F
	addi	s4,s4,+00000614
	lw	a5,s4,+00000000
	addi	s1,a0,-00000008
	bltu	s1,a5,000000002306F606

l2306F63C:
	lui	a5,0004200F
	lw	a3,a5,+00000618
	addi	a4,a0,+0000000C
	addi	s3,a5,+00000618
	bltu	a3,a4,000000002306F606

l2306F650:
	lui	s5,0004200F
	addi	a0,s5,+00000610
	jal	ra,000000002306A79A
	lbu	a5,s0,-00000004
	c.bnez	a5,000000002306F66C

l2306F662:
	addi	a0,s5,+00000610
	jal	ra,000000002306A7A0
	c.j	000000002306F606

l2306F66C:
	lhu	a1,s0,-00000008
	c.lui	a5,00002000
	bltu	a5,a1,000000002306F662

l2306F676:
	lhu	a4,s0,-00000006
	bltu	a5,a4,000000002306F662

l2306F67E:
	lw	a5,s4,+00000000
	sub	a2,s1,a5
	c.slli	a2,10
	c.srli	a2,00000010
	beq	a2,a4,000000002306F698

l2306F68E:
	c.add	a4,a5
	lhu	a4,a4,+00000000
	bne	a4,a2,000000002306F662

l2306F698:
	lw	a6,s3,+00000000
	add	a4,a5,a1
	beq	a4,a6,000000002306F6AC

l2306F6A4:
	lhu	a4,a4,+00000002
	bne	a4,a2,000000002306F662

l2306F6AC:
	lui	a4,0004200F
	lw	a3,a4,+0000060C
	sb	zero,s0,+00000FFC
	addi	a4,a4,+0000060C
	bgeu	s1,a3,000000002306F6C2

l2306F6C0:
	c.sw	a4,0(s1)

l2306F6C2:
	lhu	a3,s2,+000000B0
	c.sub	a3,a1
	c.add	a3,a2
	sh	a3,s2,+000000B0
	lhu	a3,s0,-00000008
	c.add	a3,a5
	beq	s1,a3,000000002306F702

l2306F6D8:
	lbu	a1,a3,+00000004
	c.bnez	a1,000000002306F702

l2306F6DE:
	beq	a6,a3,000000002306F702

l2306F6E2:
	c.lw	a4,0(a1)
	bne	a3,a1,000000002306F6EA

l2306F6E8:
	c.sw	a4,0(s1)

l2306F6EA:
	lhu	a1,a3,+00000000
	sh	a1,s0,+00000FF8
	lhu	a3,a3,+00000000
	c.lui	a1,00002000
	beq	a3,a1,000000002306F702

l2306F6FC:
	c.add	a3,a5
	sh	a2,a3,+00000002

l2306F702:
	lhu	a2,s0,-00000006
	add	a3,a5,a2
	beq	s1,a3,000000002306F734

l2306F70E:
	lbu	a1,a3,+00000004
	c.bnez	a1,000000002306F734

l2306F714:
	c.lw	a4,0(a1)
	bne	s1,a1,000000002306F71C

l2306F71A:
	c.sw	a4,0(a3)

l2306F71C:
	lhu	a4,s0,-00000008
	sh	a4,a3,+00000000
	lhu	a4,s0,-00000008
	c.lui	a3,00002000
	beq	a4,a3,000000002306F734

l2306F72E:
	c.add	a5,a4
	sh	a2,a5,+00000002

l2306F734:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	addi	a0,s5,+00000610
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,000000002306A7A0

l2306F74C:
	c.jr	ra

;; mem_trim: 2306F74E
;;   Called from:
;;     230703C4 (in pbuf_realloc)
mem_trim proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	addi	s0,a1,+00000003
	c.andi	s0,FFFFFFFC
	c.slli	s0,10
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.srli	s0,00000010
	c.li	a5,0000000B
	c.mv	s4,a0
	bgeu	a5,s0,000000002306F77C

l2306F772:
	c.lui	a5,00002000
	bgeu	a5,s0,000000002306F77E

l2306F778:
	c.li	s4,00000000
	c.j	000000002306F7B8

l2306F77C:
	c.li	s0,0000000C

l2306F77E:
	bltu	s0,a1,000000002306F778

l2306F782:
	lui	s5,0004200F
	addi	s5,s5,+00000614
	lw	a5,s5,+00000000
	bltu	s4,a5,000000002306F79E

l2306F792:
	lui	a4,0004200F
	lw	a4,a4,+00000618
	bltu	s4,a4,000000002306F7CE

l2306F79E:
	jal	ra,000000002306A7EE
	lui	a5,00042026
	addi	a5,a5,+000007F0
	lhu	a4,a5,+000000B4
	c.addi	a4,00000001
	sh	a4,a5,+000000B4
	jal	ra,000000002306A7FE

l2306F7B8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s4
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	c.jr	ra

l2306F7CE:
	lhu	s2,s4,-00000008
	addi	s1,s4,-00000008
	c.sub	s1,a5
	c.addi	s2,FFFFFFF8
	c.slli	s1,10
	c.slli	s2,10
	c.srli	s1,00000010
	srli	s2,s2,00000010
	sub	s3,s2,s1
	c.slli	s3,10
	srli	s3,s3,00000010
	bltu	s3,s0,000000002306F778

l2306F7F2:
	beq	s3,s0,000000002306F7B8

l2306F7F6:
	lui	s6,0004200F
	addi	a0,s6,+00000610
	jal	ra,000000002306A79A
	lw	a5,s5,+00000000
	lhu	a2,s4,-00000008
	c.add	a2,a5
	lbu	a4,a2,+00000004
	c.bnez	a4,000000002306F878

l2306F812:
	lui	a1,0004200F
	addi	a4,s1,+00000008
	addi	a1,a1,+0000060C
	c.add	a4,s0
	lw	a7,a1,+00000000
	c.slli	a4,10
	c.srli	a4,00000010
	lhu	a6,a2,+00000000
	add	a3,a5,a4
	bne	a7,a2,000000002306F836

l2306F834:
	c.sw	a1,0(a3)

l2306F836:
	sb	zero,a3,+00000004
	sh	a6,a3,+00000000
	sh	s1,a3,+00000002
	sh	a4,s4,+00000FF8
	lhu	a3,a3,+00000000
	c.lui	a2,00002000
	beq	a3,a2,000000002306F856

l2306F850:
	c.add	a5,a3
	sh	a4,a5,+00000002

l2306F856:
	lui	a5,00042026
	addi	a5,a5,+000007F0
	sub	s2,s1,s2
	lhu	s1,a5,+000000B0
	c.add	s2,s1
	c.add	s0,s2

l2306F86A:
	sh	s0,a5,+000000B0

l2306F86E:
	addi	a0,s6,+00000610
	jal	ra,000000002306A7A0
	c.j	000000002306F7B8

l2306F878:
	addi	a4,s0,+00000014
	bltu	s3,a4,000000002306F86E

l2306F880:
	addi	a4,s1,+00000008
	lui	a2,0004200F
	c.add	a4,s0
	addi	a2,a2,+0000060C
	c.slli	a4,10
	c.lw	a2,0(a1)
	c.srli	a4,00000010
	add	a3,a5,a4
	bgeu	a3,a1,000000002306F89E

l2306F89C:
	c.sw	a2,0(a3)

l2306F89E:
	sb	zero,a3,+00000004
	lhu	a2,s4,-00000008
	sh	s1,a3,+00000002
	sh	a2,a3,+00000000
	sh	a4,s4,+00000FF8
	lhu	a3,a3,+00000000
	c.lui	a2,00002000
	beq	a3,a2,000000002306F8C2

l2306F8BC:
	c.add	a5,a3
	sh	a4,a5,+00000002

l2306F8C2:
	lui	a5,00042026
	addi	a5,a5,+000007F0
	sub	s1,s1,s2
	lhu	s2,a5,+000000B0
	c.add	s1,s2
	c.add	s0,s1
	c.j	000000002306F86A

;; mem_malloc: 2306F8D8
;;   Called from:
;;     2306DB38 (in dhcp_start)
;;     2306FA4E (in mem_calloc)
;;     23070294 (in pbuf_alloc)
;;     230770EE (in dhcp_server_recv)
;;     2307740E (in dhcp_server_start)
;;     23086116 (in httpc_init_connection_common.constprop.5)
mem_malloc proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.beqz	a0,000000002306F960

l2306F8E2:
	addi	s1,a0,+00000003
	c.andi	s1,FFFFFFFC
	c.slli	s1,10
	c.srli	s1,00000010
	c.li	a5,0000000B
	bgeu	a5,s1,000000002306F906

l2306F8F2:
	c.lui	a5,00002000
	c.li	s0,00000000
	bgeu	a5,s1,000000002306F908

l2306F8FA:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2306F906:
	c.li	s1,0000000C

l2306F908:
	c.li	s0,00000000
	bltu	s1,a0,000000002306F8FA

l2306F90E:
	lui	s0,0004200F
	addi	a0,s0,+00000610
	jal	ra,000000002306A79A
	lui	a4,0004200F
	lui	a5,0004200F
	lw	a6,a4,+0000060C
	lw	a7,a5,+00000614
	c.lui	t1,00002000
	addi	t3,a4,+0000060C
	sub	a5,a6,a7
	slli	a3,a5,00000010
	c.srli	a3,00000010
	c.mv	a0,s0
	sub	a4,t1,s1
	c.li	a1,FFFFFFF8

l2306F942:
	bltu	a3,a4,000000002306F964

l2306F946:
	lui	a5,00042026
	addi	a5,a5,+000007F0
	lhu	a4,a5,+000000AC
	addi	a0,a0,+00000610
	c.addi	a4,00000001
	sh	a4,a5,+000000AC
	jal	ra,000000002306A7A0

l2306F960:
	c.li	s0,00000000
	c.j	000000002306F8FA

l2306F964:
	add	s0,a7,a3
	lbu	a2,s0,+00000004
	lhu	a5,s0,+00000000
	c.bnez	a2,000000002306FA30

l2306F972:
	sub	a2,a1,a3
	c.add	a2,a5
	bltu	a2,s1,000000002306FA30

l2306F97C:
	lui	a4,00042026
	addi	a1,s1,+00000014
	addi	a4,a4,+000007F0
	bltu	a2,a1,000000002306FA04

l2306F98C:
	addi	a5,s1,+00000008
	c.add	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	add	a2,a7,a5
	sb	zero,a2,+00000004
	lhu	a1,s0,+00000000
	sh	a3,a2,+00000002
	c.li	a3,00000001
	sh	a1,a2,+00000000
	sh	a5,s0,+00000000
	sb	a3,s0,+00000004
	lhu	a3,a2,+00000000
	beq	a3,t1,000000002306F9C2

l2306F9BC:
	c.add	a3,a7
	sh	a5,a3,+00000002

l2306F9C2:
	lhu	a5,a4,+000000B0
	c.addi	a5,00000008
	c.add	s1,a5
	c.slli	s1,10
	lhu	a5,a4,+000000B2
	c.srli	s1,00000010
	sh	s1,a4,+000000B0
	bgeu	a5,s1,000000002306F9DE

l2306F9DA:
	sh	s1,a4,+000000B2

l2306F9DE:
	bne	a6,s0,000000002306F9F8

l2306F9E2:
	lui	a5,0004200F
	lw	a5,a5,+00000618

l2306F9EA:
	lbu	a4,a6,+00000004
	c.beqz	a4,000000002306F9F4

l2306F9F0:
	bne	a5,a6,000000002306FA28

l2306F9F4:
	sw	a6,t3,+00000000

l2306F9F8:
	addi	a0,a0,+00000610
	jal	ra,000000002306A7A0
	c.addi	s0,00000008
	c.j	000000002306F8FA

l2306FA04:
	c.li	a2,00000001
	sb	a2,s0,+00000004
	lhu	a2,a4,+000000B0
	c.add	a5,a2
	c.sub	a5,a3
	c.slli	a5,10
	lhu	a3,a4,+000000B2
	c.srli	a5,00000010
	sh	a5,a4,+000000B0
	bgeu	a3,a5,000000002306F9DE

l2306FA22:
	sh	a5,a4,+000000B2
	c.j	000000002306F9DE

l2306FA28:
	lhu	a6,a6,+00000000
	c.add	a6,a7
	c.j	000000002306F9EA

l2306FA30:
	c.mv	a3,a5
	c.j	000000002306F942

;; mem_calloc: 2306FA34
;;   Called from:
;;     230874C0 (in altcp_mbedtls_alloc)
;;     230874E4 (in altcp_mbedtls_alloc_config)
mem_calloc proc
	add	a2,a0,a1
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.li	s0,00000000
	slli	a5,a2,00000010
	c.srli	a5,00000010
	bne	a2,a5,000000002306FA5E

l2306FA4A:
	c.mv	a0,a5
	c.swsp	a2,00000084
	jal	ra,000000002306F8D8
	c.mv	s0,a0
	c.beqz	a0,000000002306FA5E

l2306FA56:
	c.lwsp	a2,00000084
	c.li	a1,00000000
	jal	ra,00000000230A3A68

l2306FA5E:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; do_memp_malloc_pool: 2306FA68
;;   Called from:
;;     2306FB5A (in memp_malloc)
do_memp_malloc_pool proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.swsp	ra,00000084
	jal	ra,000000002306A7EE
	c.lw	s0,12(a5)
	c.lw	a5,0(s1)
	c.beqz	s1,000000002306FAB2

l2306FA7C:
	c.lw	s1,0(a4)
	c.mv	a3,a0
	c.sw	a5,0(a4)
	c.lw	s0,0(a4)
	lhu	a5,a4,+00000004
	c.addi	a5,00000001
	sh	a5,a4,+00000004
	c.lw	s0,0(a5)
	lhu	a4,a5,+00000004
	lhu	a2,a5,+00000006
	bgeu	a2,a4,000000002306FAA0

l2306FA9C:
	sh	a4,a5,+00000006

l2306FAA0:
	c.mv	a0,a3

l2306FAA2:
	jal	ra,000000002306A7FE
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2306FAB2:
	c.lw	s0,0(a4)
	lhu	a5,a4,+00000000
	c.addi	a5,00000001
	sh	a5,a4,+00000000
	c.j	000000002306FAA2

;; memp_init_pool: 2306FAC0
;;   Called from:
;;     2306FB24 (in memp_init)
memp_init_pool proc
	c.lw	a0,12(a5)
	c.li	a4,00000000
	sw	zero,a5,+00000000
	c.lw	a0,8(a5)
	c.addi	a5,00000003
	c.andi	a5,FFFFFFFC

l2306FACE:
	lhu	a3,a0,+00000006
	blt	a4,a3,000000002306FADE

l2306FAD6:
	c.lw	a0,0(a5)
	sh	a3,a5,+00000002
	c.jr	ra

l2306FADE:
	c.lw	a0,12(a3)
	c.addi	a4,00000001
	c.lw	a3,0(a3)
	c.sw	a5,0(a3)
	c.lw	a0,12(a3)
	c.sw	a3,0(a5)
	lhu	a3,a0,+00000004
	c.add	a5,a3
	c.j	000000002306FACE

;; memp_init: 2306FAF2
;;   Called from:
;;     2306C856 (in lwip_init)
memp_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	lui	s0,00042026
	lui	s2,000230C3
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	addi	s0,s0,+000007F0
	c.li	s1,00000000
	addi	s2,s2,+000006E8
	addi	s4,zero,+0000003C

l2306FB16:
	add	a5,s2,s1
	lw	s3,a5,+00000000
	c.addi	s1,00000004
	c.addi	s0,00000004
	c.mv	a0,s3
	jal	ra,000000002306FAC0
	lw	a5,s3,+00000000
	sw	a5,s0,+000000B4
	bne	s1,s4,000000002306FB16

l2306FB34:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; memp_malloc: 2306FB44
;;   Called from:
;;     2306BA08 (in tcpip_inpkt)
;;     2306BA96 (in tcpip_callback)
;;     2306BADE (in tcpip_try_callback)
;;     2306E844 (in igmp_lookup_group)
;;     230700D8 (in pbuf_alloc_reference)
;;     230702E6 (in pbuf_alloc)
;;     23070B28 (in raw_new)
;;     23070D68 (in tcp_listen_with_backlog_and_err)
;;     23070F2C (in tcp_seg_copy)
;;     2307145E (in tcp_alloc)
;;     23071490 (in tcp_alloc)
;;     230714A0 (in tcp_alloc)
;;     230714B0 (in tcp_alloc)
;;     230714CA (in tcp_alloc)
;;     230736D0 (in tcp_create_segment)
;;     23074964 (in sys_timeout_abs)
;;     23075238 (in udp_new)
;;     23075A9C (in recv_udp)
;;     230760D4 (in recv_raw)
;;     2307631E (in netconn_alloc)
;;     2308635A (in altcp_alloc)
memp_malloc proc
	c.li	a5,0000000E
	bltu	a5,a0,000000002306FB5E

l2306FB4A:
	slli	a5,a0,00000002
	lui	a0,000230C3
	addi	a0,a0,+000006E8
	c.add	a0,a5
	c.lw	a0,0(a0)
	jal	zero,000000002306FA68

l2306FB5E:
	c.li	a0,00000000
	c.jr	ra

;; memp_free: 2306FB62
;;   Called from:
;;     2306BA58 (in tcpip_inpkt)
;;     2306BB04 (in tcpip_try_callback)
;;     2306E7EE (in igmp_stop)
;;     2306EBC2 (in igmp_leavegroup_netif)
;;     23070216 (in pbuf_free)
;;     23070B06 (in raw_remove)
;;     23070C7A (in tcp_free)
;;     23070EF4 (in tcp_seg_free)
;;     23071738 (in tcp_close_shutdown)
;;     23074AF6 (in sys_untimeout)
;;     23074B36 (in sys_check_timeouts)
;;     23075218 (in udp_remove)
;;     230754BC (in netconn_new_with_proto_and_callback)
;;     23076372 (in netconn_alloc)
;;     230763E4 (in netconn_free)
;;     23076BC0 (in netbuf_delete)
;;     23086392 (in altcp_free)
memp_free proc
	c.li	a5,0000000E
	bltu	a5,a0,000000002306FBA8

l2306FB68:
	c.beqz	a1,000000002306FBA8

l2306FB6A:
	lui	a5,000230C3
	addi	a5,a5,+000006E8
	c.slli	a0,02
	c.addi	sp,FFFFFFF0
	c.add	a0,a5
	c.swsp	s1,00000080
	c.lw	a0,0(s1)
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,000000002306A7EE
	c.lw	s1,0(a4)
	lhu	a5,a4,+00000004
	c.addi	a5,FFFFFFFF
	sh	a5,a4,+00000004
	c.lw	s1,12(a5)
	c.lw	a5,0(a5)
	c.sw	s0,0(a5)
	c.lw	s1,12(a5)
	c.sw	a5,0(s0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002306A7FE

l2306FBA8:
	c.jr	ra

;; netif_null_output_ip4: 2306FBAA
netif_null_output_ip4 proc
	c.li	a0,FFFFFFF4
	c.jr	ra

;; netif_issue_reports: 2306FBAE
;;   Called from:
;;     2306FC36 (in netif_do_set_ipaddr)
;;     2306FE66 (in netif_set_up)
;;     2306FF66 (in netif_set_link_up)
netif_issue_reports proc
	lbu	a4,a0,+00000041
	c.li	a3,00000005
	andi	a2,a4,+00000005
	bne	a2,a3,000000002306FBF6

l2306FBBC:
	c.andi	a1,00000001
	c.beqz	a1,000000002306FBF6

l2306FBC0:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,4(a3)
	c.mv	s0,a0
	c.beqz	a3,000000002306FBEE

l2306FBCC:
	c.andi	a4,00000008
	c.beqz	a4,000000002306FBD8

l2306FBD0:
	addi	a1,a0,+00000004
	jal	ra,000000002306E27A

l2306FBD8:
	lbu	a5,s0,+00000041
	andi	a5,a5,+00000020
	c.beqz	a5,000000002306FBEE

l2306FBE2:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002306E7F6

l2306FBEE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2306FBF6:
	c.jr	ra

;; netif_do_set_ipaddr: 2306FBF8
;;   Called from:
;;     2306FC68 (in netif_set_ipaddr)
;;     2306FCE4 (in netif_set_addr)
;;     2306FD0A (in netif_set_addr)
netif_do_set_ipaddr proc
	c.lw	a0,4(a5)
	c.lw	a1,0(a4)
	beq	a4,a5,000000002306FC50

l2306FC00:
	c.addi	sp,FFFFFFE0
	c.sw	a2,0(a5)
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s0,a0
	c.mv	s2,a1
	c.mv	a0,a2
	c.addi4spn	a1,0000000C
	c.swsp	ra,0000008C
	c.swsp	a4,00000084
	c.swsp	s1,00000088
	c.mv	s1,a2
	jal	ra,00000000230713BA
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	jal	ra,0000000023075262
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	jal	ra,0000000023070B66
	lw	a5,s2,+00000000
	c.li	a1,00000001
	c.mv	a0,s0
	c.sw	s0,4(a5)
	jal	ra,000000002306FBAE
	c.lw	s0,28(a5)
	c.beqz	a5,000000002306FC42

l2306FC3E:
	c.mv	a0,s0
	c.jalr	a5

l2306FC42:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,00000001
	c.addi16sp	00000020
	c.jr	ra

l2306FC50:
	c.li	a0,00000000
	c.jr	ra

;; netif_init: 2306FC54
;;   Called from:
;;     2306C85A (in lwip_init)
netif_init proc
	c.jr	ra

;; netif_set_ipaddr: 2306FC56
;;   Called from:
;;     23086318 (in set_if)
netif_set_ipaddr proc
	c.beqz	a0,000000002306FC72

l2306FC58:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.bnez	a1,000000002306FC66

l2306FC5E:
	lui	a1,000230CC
	addi	a1,a1,-00000524

l2306FC66:
	c.addi4spn	a2,0000000C
	jal	ra,000000002306FBF8
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2306FC72:
	c.jr	ra

;; netif_set_netmask: 2306FC74
;;   Called from:
;;     23086342 (in set_if)
netif_set_netmask proc
	c.beqz	a0,000000002306FC8A

l2306FC76:
	c.bnez	a1,000000002306FC80

l2306FC78:
	lui	a1,000230CC
	addi	a1,a1,-00000524

l2306FC80:
	c.lw	a1,0(a5)
	c.lw	a0,8(a4)
	beq	a5,a4,000000002306FC8A

l2306FC88:
	c.sw	a0,8(a5)

l2306FC8A:
	c.jr	ra

;; netif_set_gw: 2306FC8C
;;   Called from:
;;     2308632E (in set_if)
netif_set_gw proc
	c.beqz	a0,000000002306FCA2

l2306FC8E:
	c.bnez	a1,000000002306FC98

l2306FC90:
	lui	a1,000230CC
	addi	a1,a1,-00000524

l2306FC98:
	c.lw	a1,0(a5)
	c.lw	a0,12(a4)
	beq	a5,a4,000000002306FCA2

l2306FCA0:
	c.sw	a0,12(a5)

l2306FCA2:
	c.jr	ra

;; netif_set_addr: 2306FCA4
;;   Called from:
;;     2306A8C2 (in netifapi_do_netif_set_addr)
;;     2306CCD4 (in dhcp_bind)
;;     2306D6D2 (in dhcp_recv)
;;     2306DAD8 (in dhcp_release_and_stop)
;;     2306FDBE (in netif_add)
netif_set_addr proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.mv	s1,a0
	c.mv	s2,a2
	c.mv	s0,a1
	c.bnez	a1,000000002306FCBE

l2306FCB6:
	lui	s0,000230CC
	addi	s0,s0,-00000524

l2306FCBE:
	bne	s2,zero,000000002306FCCA

l2306FCC2:
	lui	s2,000230CC
	addi	s2,s2,-00000524

l2306FCCA:
	c.bnez	a3,000000002306FCD4

l2306FCCC:
	lui	a3,000230CC
	addi	a3,a3,-00000524

l2306FCD4:
	c.lw	s0,0(a5)
	c.beqz	a5,000000002306FCDC

l2306FCD8:
	c.li	a5,00000000
	c.j	000000002306FCEC

l2306FCDC:
	c.addi4spn	a2,0000001C
	c.mv	a1,s0
	c.mv	a0,s1
	c.swsp	a3,00000084
	jal	ra,000000002306FBF8
	c.lwsp	a2,000000A4
	c.li	a5,00000001

l2306FCEC:
	lw	a4,s2,+00000000
	c.lw	s1,8(a2)
	beq	a4,a2,000000002306FCF8

l2306FCF6:
	c.sw	s1,8(a4)

l2306FCF8:
	c.lw	a3,0(a4)
	c.lw	s1,12(a3)
	beq	a4,a3,000000002306FD02

l2306FD00:
	c.sw	s1,12(a4)

l2306FD02:
	c.bnez	a5,000000002306FD0E

l2306FD04:
	c.addi4spn	a2,0000001C
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002306FBF8

l2306FD0E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

;; netif_add: 2306FD1A
;;   Called from:
;;     2306A8A4 (in netifapi_do_netif_add)
netif_add proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.bnez	a0,000000002306FD3A

l2306FD28:
	c.li	s0,00000000

l2306FD2A:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2306FD3A:
	c.beqz	a5,000000002306FD28

l2306FD3C:
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	s2,a2
	c.bnez	a1,000000002306FD4C

l2306FD44:
	lui	s1,000230CC
	addi	s1,s1,-00000524

l2306FD4C:
	bne	s2,zero,000000002306FD58

l2306FD50:
	lui	s2,000230CC
	addi	s2,s2,-00000524

l2306FD58:
	c.bnez	a3,000000002306FD62

l2306FD5A:
	lui	a3,000230CC
	addi	a3,a3,-00000524

l2306FD62:
	lui	a2,00023070
	addi	a2,a2,-00000456
	c.sw	s0,20(a2)
	c.li	a1,00000000
	c.li	a2,0000000C
	sw	zero,s0,+00000004
	sw	zero,s0,+00000008
	sw	zero,s0,+0000000C
	sh	zero,s0,+00000038
	sb	zero,s0,+00000041
	addi	a0,s0,+00000028
	c.swsp	a5,00000004
	c.swsp	a6,00000084
	c.swsp	a4,00000080
	c.swsp	a3,00000000
	jal	ra,00000000230A3A68
	c.lwsp	tp,000000C4
	lui	s3,0004200F
	c.lwsp	a2,00000008
	c.sw	s0,36(a4)
	lbu	a4,s3,+00000658
	c.lwsp	zero,000000A4
	sw	a6,s0,+00000010
	sb	a4,s0,+00000044
	c.mv	a2,s2
	c.mv	a1,s1
	c.mv	a0,s0
	sw	zero,s0,+0000001C
	sw	zero,s0,+00000020
	sw	zero,s0,+00000048
	jal	ra,000000002306FCA4
	c.lwsp	s0,000000E4
	c.mv	a0,s0
	addi	s3,s3,+00000658
	c.jalr	a5
	c.bnez	a0,000000002306FD28

l2306FDCE:
	lui	a5,00042026
	lw	a2,a5,+000007E8
	c.mv	a4,a5
	addi	a1,zero,+000000FF

l2306FDDC:
	lbu	a5,s0,+00000044
	bne	a5,a1,000000002306FDE8

l2306FDE4:
	sb	zero,s0,+00000044

l2306FDE8:
	lbu	a5,s0,+00000044
	c.mv	a3,a2

l2306FDEE:
	c.bnez	a3,000000002306FE1C

l2306FDF0:
	addi	a1,zero,+000000FE
	c.li	a3,00000000
	beq	a5,a1,000000002306FE00

l2306FDFA:
	c.addi	a5,00000001
	andi	a3,a5,+000000FF

l2306FE00:
	lbu	a5,s0,+00000041
	c.sw	s0,0(a2)
	sb	a3,s3,+00000000
	sw	s0,a4,+000007E8
	andi	a5,a5,+00000020
	c.beqz	a5,000000002306FD2A

l2306FE14:
	c.mv	a0,s0
	jal	ra,000000002306E87A
	c.j	000000002306FD2A

l2306FE1C:
	lbu	a0,a3,+00000044
	bne	a0,a5,000000002306FE2C

l2306FE24:
	c.addi	a5,00000001
	sb	a5,s0,+00000044
	c.j	000000002306FDDC

l2306FE2C:
	c.lw	a3,0(a3)
	c.j	000000002306FDEE

;; netif_set_default: 2306FE30
;;   Called from:
;;     23027AEC (in wifi_mgmr_sta_enable)
;;     23027E3E (in wifi_mgmr_ap_enable)
netif_set_default proc
	lui	a5,00042026
	sw	a0,a5,+000007E4
	c.jr	ra

;; netif_set_up: 2306FE3A
;;   Called from:
;;     23027AF4 (in wifi_mgmr_sta_enable)
;;     23027E46 (in wifi_mgmr_ap_enable)
;;     23077522 (in dhcpd_start)
netif_set_up proc
	c.beqz	a0,000000002306FE72

l2306FE3C:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a5,a0,+00000041
	c.mv	s0,a0
	andi	a4,a5,+00000001
	c.bnez	a4,000000002306FE6A

l2306FE4E:
	ori	a5,a5,+00000001
	sb	a5,a0,+00000041
	c.lw	a0,28(a5)
	c.beqz	a5,000000002306FE5C

l2306FE5A:
	c.jalr	a5

l2306FE5C:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a1,00000003
	c.addi	sp,00000010
	jal	zero,000000002306FBAE

l2306FE6A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2306FE72:
	c.jr	ra

;; netif_set_down: 2306FE74
;;   Called from:
;;     2306FEFA (in netif_remove)
netif_set_down proc
	c.beqz	a0,000000002306FEB2

l2306FE76:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a5,a0,+00000041
	c.mv	s0,a0
	andi	a4,a5,+00000001
	c.beqz	a4,000000002306FEAA

l2306FE88:
	andi	a4,a5,-00000002
	sb	a4,a0,+00000041
	c.andi	a5,00000008
	c.beqz	a5,000000002306FE98

l2306FE94:
	jal	ra,000000002306E09E

l2306FE98:
	lw	t1,s0,+0000001C
	beq	t1,zero,000000002306FEAA

l2306FEA0:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	t1

l2306FEAA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2306FEB2:
	c.jr	ra

;; netif_remove: 2306FEB4
netif_remove proc
	c.beqz	a0,000000002306FF3A

l2306FEB6:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a0,4(a5)
	c.mv	s0,a0
	c.beqz	a5,000000002306FEE0

l2306FEC4:
	addi	s1,a0,+00000004
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,00000000230713BA
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023075262
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023070B66

l2306FEE0:
	lbu	a5,s0,+00000041
	andi	a5,a5,+00000020
	c.beqz	a5,000000002306FEF0

l2306FEEA:
	c.mv	a0,s0
	jal	ra,000000002306E7B6

l2306FEF0:
	lbu	a5,s0,+00000041
	c.andi	a5,00000001
	c.beqz	a5,000000002306FEFE

l2306FEF8:
	c.mv	a0,s0
	jal	ra,000000002306FE74

l2306FEFE:
	lui	a5,00042026
	lw	a4,a5,+000007E4
	bne	a4,s0,000000002306FF0E

l2306FF0A:
	sw	zero,a5,+000007E4

l2306FF0E:
	lui	a4,00042026
	lw	a5,a4,+000007E8
	bne	a5,s0,000000002306FF2C

l2306FF1A:
	c.lw	s0,0(a5)
	sw	a5,a4,+000007E8

l2306FF20:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2306FF2A:
	c.mv	a5,a4

l2306FF2C:
	c.beqz	a5,000000002306FF20

l2306FF2E:
	c.lw	a5,0(a4)
	bne	a4,s0,000000002306FF2A

l2306FF34:
	c.lw	s0,0(a4)
	c.sw	a5,0(a4)
	c.j	000000002306FF20

l2306FF3A:
	c.jr	ra

;; netif_set_status_callback: 2306FF3C
;;   Called from:
;;     23028DBE (in bl606a0_wifi_netif_init)
netif_set_status_callback proc
	c.beqz	a0,000000002306FF40

l2306FF3E:
	c.sw	a0,28(a1)

l2306FF40:
	c.jr	ra

;; netif_set_link_up: 2306FF42
netif_set_link_up proc
	c.beqz	a0,000000002306FF84

l2306FF44:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a5,a0,+00000041
	c.mv	s0,a0
	andi	a4,a5,+00000004
	c.bnez	a4,000000002306FF7C

l2306FF56:
	ori	a5,a5,+00000004
	sb	a5,a0,+00000041
	jal	ra,000000002306D782
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,000000002306FBAE
	lw	t1,s0,+00000020
	beq	t1,zero,000000002306FF7C

l2306FF72:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	t1

l2306FF7C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2306FF84:
	c.jr	ra

;; netif_set_link_down: 2306FF86
netif_set_link_down proc
	c.beqz	a0,000000002306FFA2

l2306FF88:
	lbu	a4,a0,+00000041
	andi	a3,a4,+00000004
	c.beqz	a3,000000002306FFA2

l2306FF92:
	lw	t1,a0,+00000020
	c.andi	a4,FFFFFFFB
	sb	a4,a0,+00000041
	beq	t1,zero,000000002306FFA2

l2306FFA0:
	c.jr	t1

l2306FFA2:
	c.jr	ra

;; netif_get_by_index: 2306FFA4
;;   Called from:
;;     23070A82 (in raw_sendto)
;;     23070AB0 (in raw_sendto)
;;     23070FFE (in tcp_connect)
;;     230738E4 (in tcp_output_control_segment)
;;     230742E6 (in tcp_output)
;;     2307508A (in udp_sendto_chksum)
;;     230750D2 (in udp_sendto_chksum)
netif_get_by_index proc
	c.li	a5,00000000
	c.beqz	a0,000000002306FFB2

l2306FFA8:
	lui	a5,00042026
	lw	a5,a5,+000007E8

l2306FFB0:
	c.bnez	a5,000000002306FFB6

l2306FFB2:
	c.mv	a0,a5
	c.jr	ra

l2306FFB6:
	lbu	a4,a5,+00000044
	c.addi	a4,00000001
	andi	a4,a4,+000000FF
	beq	a4,a0,000000002306FFB2

l2306FFC4:
	c.lw	a5,0(a5)
	c.j	000000002306FFB0

;; netif_find: 2306FFC8
;;   Called from:
;;     2306AE58 (in lwip_setsockopt_callback)
netif_find proc
	c.bnez	a0,000000002306FFCE

l2306FFCA:
	c.li	a0,00000000
	c.jr	ra

l2306FFCE:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.addi	a0,00000002
	c.swsp	ra,00000084
	jal	ra,00000000230A3618
	lui	a4,00042026
	andi	a5,a0,+000000FF
	lw	a0,a4,+000007E8

l2306FFE8:
	c.bnez	a0,000000002306FFF4

l2306FFEA:
	c.li	a0,00000000

l2306FFEC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2306FFF4:
	lbu	a4,a0,+00000044
	bne	a4,a5,0000000023070014

l2306FFFC:
	lbu	a3,s0,+00000000
	lbu	a4,a0,+00000042
	bne	a3,a4,0000000023070014

l23070008:
	lbu	a3,s0,+00000001
	lbu	a4,a0,+00000043
	beq	a3,a4,000000002306FFEC

l23070014:
	c.lw	a0,0(a0)
	c.j	000000002306FFE8

;; pbuf_skip_const: 23070018
;;   Called from:
;;     23070652 (in pbuf_take_at)
;;     230706E6 (in pbuf_try_get_at)
;;     23070730 (in pbuf_put_at)
pbuf_skip_const proc
	c.beqz	a0,0000000023070022

l2307001A:
	lhu	a5,a0,+0000000A
	bgeu	a1,a5,000000002307002A

l23070022:
	c.beqz	a2,0000000023070028

l23070024:
	sh	a1,a2,+00000000

l23070028:
	c.jr	ra

l2307002A:
	c.sub	a1,a5
	c.slli	a1,10
	c.srli	a1,00000010
	c.lw	a0,0(a0)
	c.j	0000000023070018

;; pbuf_free_ooseq_callback: 23070034
pbuf_free_ooseq_callback proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002306A7EE
	lui	a5,00042026
	sb	zero,a5,+000007EC
	jal	ra,000000002306A7FE
	lui	a5,00042027
	lw	a0,a5,-000006FC

l23070050:
	c.bnez	a0,0000000023070058

l23070052:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23070058:
	c.lw	a0,116(a5)
	c.beqz	a5,0000000023070064

l2307005C:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023071188

l23070064:
	c.lw	a0,12(a0)
	c.j	0000000023070050

;; pbuf_add_header_impl: 23070068
;;   Called from:
;;     2307013E (in pbuf_add_header)
;;     2307018E (in pbuf_header)
;;     230701A0 (in pbuf_header_force)
pbuf_add_header_impl proc
	c.mv	a5,a0
	c.beqz	a0,00000000230700C6

l2307006C:
	c.lui	a4,00010000
	c.li	a0,00000001
	bgeu	a1,a4,00000000230700C8

l23070074:
	c.li	a0,00000000
	c.beqz	a1,00000000230700C8

l23070078:
	lhu	a4,a5,+00000008
	slli	a3,a1,00000010
	c.srli	a3,00000010
	c.add	a4,a3
	c.slli	a4,10
	c.srli	a4,00000010
	c.li	a0,00000001
	bltu	a4,a3,00000000230700C8

l2307008E:
	lb	a0,a5,+0000000C
	bge	a0,zero,00000000230700A8

l23070096:
	c.lw	a5,4(a2)
	c.li	a0,00000001
	sub	a1,a2,a1
	addi	a2,a5,+00000010
	bgeu	a1,a2,00000000230700B2

l230700A6:
	c.jr	ra

l230700A8:
	c.li	a0,00000001
	c.beqz	a2,00000000230700C8

l230700AC:
	c.lw	a5,4(a2)
	sub	a1,a2,a1

l230700B2:
	lhu	a2,a5,+0000000A
	c.sw	a5,4(a1)
	sh	a4,a5,+00000008
	c.add	a3,a2
	sh	a3,a5,+0000000A
	c.li	a0,00000000
	c.jr	ra

l230700C6:
	c.li	a0,00000001

l230700C8:
	c.jr	ra

;; pbuf_alloc_reference: 230700CA
;;   Called from:
;;     230702D0 (in pbuf_alloc)
pbuf_alloc_reference proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.li	a0,0000000D
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	jal	ra,000000002306FB44
	c.beqz	a0,00000000230700FE

l230700DE:
	c.lwsp	a2,00000064
	c.lwsp	s0,00000084
	c.li	a5,00000001
	sw	zero,a0,+00000000
	c.sw	a0,4(s0)
	sh	a1,a0,+00000008
	sh	a1,a0,+0000000A
	sb	a2,a0,+0000000C
	sb	zero,a0,+0000000D
	sh	a5,a0,+0000000E

l230700FE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; pbuf_alloced_custom: 23070106
;;   Called from:
;;     230240C0 (in tcpip_stack_input)
;;     23024226 (in tcpip_stack_input)
pbuf_alloced_custom proc
	c.addi	a0,00000003
	c.andi	a0,FFFFFFFC
	add	a6,a1,a0
	bltu	a5,a6,0000000023070138

l23070112:
	c.beqz	a4,0000000023070116

l23070114:
	c.add	a4,a0

l23070116:
	c.li	a5,00000002
	sb	a5,a3,+0000000D
	c.li	a5,00000001
	c.mv	a0,a3
	sw	zero,a3,+00000000
	c.sw	a3,4(a4)
	sh	a1,a3,+00000008
	sh	a1,a3,+0000000A
	sb	a2,a3,+0000000C
	sh	a5,a3,+0000000E
	c.jr	ra

l23070138:
	c.li	a0,00000000
	c.jr	ra

;; pbuf_add_header: 2307013C
;;   Called from:
;;     2306F12C (in ip4_output_if_opt_src)
;;     2306F18C (in ip4_output_if_opt_src)
;;     230709D2 (in raw_sendto_if_src)
;;     23073718 (in tcp_create_segment)
;;     23074F00 (in udp_sendto_if_src_chksum)
;;     230753B4 (in ethernet_output)
;;     23076CF4 (in icmp_input)
;;     23076D70 (in icmp_input)
pbuf_add_header proc
	c.li	a2,00000000
	jal	zero,0000000023070068

;; pbuf_remove_header: 23070142
;;   Called from:
;;     2306EFFE (in ip4_input)
;;     23070188 (in pbuf_header)
;;     2307019A (in pbuf_header_force)
;;     23070430 (in pbuf_free_header)
;;     23070A54 (in raw_sendto_if_src)
;;     23072214 (in tcp_receive)
;;     23072B34 (in tcp_input)
;;     23072CA0 (in tcp_input)
;;     23072CB4 (in tcp_input)
;;     23072CD4 (in tcp_input)
;;     23074D52 (in udp_input)
;;     2307531C (in ethernet_input)
;;     2307536C (in ethernet_input)
;;     23076D4C (in icmp_input)
;;     23076E3E (in icmp_input)
;;     23086A40 (in altcp_mbedtls_bio_recv)
pbuf_remove_header proc
	c.mv	a5,a0
	c.beqz	a0,000000002307017C

l23070146:
	c.lui	a4,00010000
	c.li	a0,00000001
	bgeu	a1,a4,000000002307017E

l2307014E:
	c.li	a0,00000000
	c.beqz	a1,000000002307017E

l23070152:
	lhu	a4,a5,+0000000A
	slli	a3,a1,00000010
	c.srli	a3,00000010
	c.li	a0,00000001
	bltu	a4,a3,000000002307017E

l23070162:
	c.sub	a4,a3
	c.lw	a5,4(a2)
	sh	a4,a5,+0000000A
	lhu	a4,a5,+00000008
	c.add	a1,a2
	c.sw	a5,4(a1)
	c.sub	a4,a3
	sh	a4,a5,+00000008
	c.li	a0,00000000
	c.jr	ra

l2307017C:
	c.li	a0,00000001

l2307017E:
	c.jr	ra

;; pbuf_header: 23070180
;;   Called from:
;;     23023CFE (in bl_output)
pbuf_header proc
	bge	a1,zero,000000002307018C

l23070184:
	sub	a1,zero,a1
	jal	zero,0000000023070142

l2307018C:
	c.li	a2,00000000
	jal	zero,0000000023070068

;; pbuf_header_force: 23070192
;;   Called from:
;;     2306F034 (in ip4_input)
;;     23074DAC (in udp_input)
pbuf_header_force proc
	bge	a1,zero,000000002307019E

l23070196:
	sub	a1,zero,a1
	jal	zero,0000000023070142

l2307019E:
	c.li	a2,00000001
	jal	zero,0000000023070068

;; pbuf_free: 230701A4
;;   Called from:
;;     23023C76 (in bl_txdatacfm)
;;     2305EF50 (in get_dns_request)
;;     2305F0AA (in get_dns_request)
;;     2306AB02 (in lwip_recv_tcp)
;;     2306AB98 (in free_socket)
;;     2306BDC2 (in dns_send)
;;     2306BE54 (in dns_send)
;;     2306C1A2 (in dns_recv)
;;     2306C24E (in dns_recv)
;;     2306C29C (in dns_recv)
;;     2306CB5E (in dhcp_discover)
;;     2306CF5A (in dhcp_reboot)
;;     2306D12A (in dhcp_select)
;;     2306D39C (in dhcp_recv)
;;     2306D866 (in dhcp_arp_reply)
;;     2306D97E (in dhcp_renew)
;;     2306DAC2 (in dhcp_release_and_stop)
;;     2306DD12 (in dhcp_coarse_tmr)
;;     2306DE92 (in etharp_free_entry)
;;     2306E096 (in etharp_raw)
;;     2306E156 (in etharp_input)
;;     2306E21C (in etharp_input)
;;     2306E4D0 (in etharp_query)
;;     2306E704 (in igmp_send)
;;     2306E8F0 (in igmp_input)
;;     2306E920 (in igmp_input)
;;     2306E93C (in igmp_input)
;;     2306E9BC (in igmp_input)
;;     2306EDDA (in ip4_input)
;;     2306EE5A (in ip4_input)
;;     2306EE80 (in ip4_input)
;;     2306EF38 (in ip4_input)
;;     2306EF56 (in ip4_input)
;;     2306EFCC (in ip4_input)
;;     2306F056 (in ip4_input)
;;     2307032E (in pbuf_alloc)
;;     230703D6 (in pbuf_realloc)
;;     23070424 (in pbuf_free_header)
;;     23070A4A (in raw_sendto_if_src)
;;     23070EE8 (in tcp_seg_free)
;;     230711C6 (in tcp_pcb_purge)
;;     2307179E (in tcp_recv_null)
;;     23071924 (in tcp_shutdown)
;;     23072DE8 (in tcp_input)
;;     23072EF0 (in tcp_input)
;;     23073560 (in tcp_input)
;;     230736DC (in tcp_create_segment)
;;     2307393A (in tcp_output_control_segment)
;;     23073B08 (in tcp_write)
;;     23073ED0 (in tcp_split_unsent_seg)
;;     23074BF6 (in udp_input)
;;     23074FFA (in udp_sendto_if_src_chksum)
;;     23075340 (in ethernet_input)
;;     23075A84 (in recv_udp)
;;     230760DE (in recv_raw)
;;     230761E4 (in recv_tcp)
;;     23076452 (in netconn_drain)
;;     23076BAC (in netbuf_delete)
;;     23076BE8 (in netbuf_alloc)
;;     23076C12 (in netbuf_free)
;;     23076CBC (in icmp_input)
;;     23076D28 (in icmp_input)
;;     23076D2E (in icmp_input)
;;     23076D62 (in icmp_input)
;;     23076E36 (in icmp_input)
;;     23076E62 (in icmp_input)
;;     23076F32 (in icmp_dest_unreach)
;;     23076FC0 (in dhcp_server_recv)
;;     2307700A (in dhcp_server_recv)
;;     230778F0 (in iperf_server_udp_recv_fn)
;;     23078F72 (in sntp_recv)
;;     230790F4 (in sntp_send_request)
;;     2307D0E6 (in cb_altcp_recv_fn)
;;     23080620 (in tcp_receive_callback)
;;     2308075E (in udp_send_data)
;;     23080846 (in udp_receive_callback)
;;     23085C24 (in httpc_free_state)
;;     23085C30 (in httpc_free_state)
;;     23085F36 (in httpc_tcp_recv)
;;     23085FCA (in httpc_tcp_connected)
;;     230868B8 (in altcp_tcp_recv)
;;     23086A00 (in altcp_mbedtls_bio_recv)
;;     23086A56 (in altcp_mbedtls_bio_recv)
;;     23086D22 (in altcp_mbedtls_dealloc)
;;     23087062 (in altcp_mbedtls_handle_rx_appldata)
;;     2308706C (in altcp_mbedtls_handle_rx_appldata)
;;     23087152 (in altcp_mbedtls_handle_rx_appldata)
;;     23087160 (in altcp_mbedtls_handle_rx_appldata)
;;     23087306 (in altcp_mbedtls_lower_recv)
pbuf_free proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.li	s0,00000000
	c.beqz	a0,00000000230701F4

l230701B4:
	c.mv	a1,a0
	c.li	s0,00000000
	c.li	s2,00000002
	c.li	s3,00000001

l230701BC:
	c.swsp	a1,00000084
	jal	ra,000000002306A7EE
	c.lwsp	a2,00000064
	lbu	s1,a1,+0000000E
	c.addi	s1,FFFFFFFF
	andi	s1,s1,+000000FF
	sb	s1,a1,+0000000E
	jal	ra,000000002306A7FE
	c.bnez	s1,00000000230701F4

l230701D8:
	c.lwsp	a2,00000064
	lbu	a5,a1,+0000000D
	c.lw	a1,0(s1)
	c.andi	a5,00000002
	c.beqz	a5,0000000023070204

l230701E4:
	c.lw	a1,16(a5)
	c.mv	a0,a1
	c.jalr	a5

l230701EA:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	c.mv	a1,s1
	c.bnez	s1,00000000230701BC

l230701F4:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23070204:
	lbu	a5,a1,+0000000C
	c.li	a0,0000000E
	c.andi	a5,0000000F
	beq	a5,s2,0000000023070216

l23070210:
	bne	a5,s3,000000002307021C

l23070214:
	c.li	a0,0000000D

l23070216:
	jal	ra,000000002306FB62
	c.j	00000000230701EA

l2307021C:
	c.bnez	a5,00000000230701EA

l2307021E:
	c.mv	a0,a1
	jal	ra,000000002306F5E2
	c.j	00000000230701EA

;; pbuf_alloc: 23070226
;;   Called from:
;;     2305EF60 (in get_dns_request)
;;     2306BD58 (in dns_send)
;;     2306C936 (in dhcp_create_msg)
;;     2306DFE2 (in etharp_raw)
;;     2306E66E (in igmp_send)
;;     230706C4 (in pbuf_clone)
;;     230709E2 (in raw_sendto_if_src)
;;     230737E6 (in tcp_output_alloc_header_common.constprop.6)
;;     23073AB0 (in tcp_write)
;;     23073CD2 (in tcp_split_unsent_seg)
;;     23073EFC (in tcp_enqueue_flags)
;;     23074F12 (in udp_sendto_if_src_chksum)
;;     23076BF6 (in netbuf_alloc)
;;     23076D14 (in icmp_input)
;;     23076E90 (in icmp_dest_unreach)
;;     23076FEE (in dhcp_server_recv)
;;     230790C0 (in sntp_send_request)
;;     2308071E (in udp_send_data)
;;     2308613E (in httpc_init_connection_common.constprop.5)
;;     2308703C (in altcp_mbedtls_handle_rx_appldata)
pbuf_alloc proc
	addi	a5,zero,+00000041
	beq	a2,a5,0000000023070380

l2307022E:
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	bltu	a5,a2,000000002307025A

l23070240:
	c.li	a5,00000001
	beq	a2,a5,00000000230702C0

l23070246:
	c.li	s1,00000000

l23070248:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2307025A:
	slli	s0,a0,00000010
	addi	a5,zero,+00000182
	c.srli	s0,00000010
	beq	a2,a5,00000000230702D4

l23070268:
	addi	a5,zero,+00000280
	bne	a2,a5,0000000023070246

l23070270:
	c.addi	s0,00000003
	addi	a5,a1,+00000003
	c.andi	s0,FFFFFFFC
	c.andi	a5,FFFFFFFC
	c.add	s0,a5
	c.slli	s0,10
	c.srli	s0,00000010
	c.mv	s2,a0
	addi	a0,s0,+00000010
	c.slli	a0,10
	c.swsp	a1,00000084
	c.srli	a0,00000010
	bltu	s0,a5,0000000023070246

l23070290:
	bltu	a0,a5,0000000023070246

l23070294:
	jal	ra,000000002306F8D8
	c.mv	s1,a0
	c.beqz	a0,0000000023070248

l2307029C:
	c.lwsp	a2,00000064
	c.add	s2,a0
	c.addi	s2,00000013
	c.lui	a5,00010000
	andi	s2,s2,-00000004
	addi	a5,a5,+00000080
	sw	zero,a0,+00000000
	sw	s2,a0,+00000004
	sh	a1,a0,+00000008
	sh	a1,a0,+0000000A
	c.sw	a0,12(a5)
	c.j	0000000023070248

l230702C0:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.li	a0,00000000
	c.addi16sp	00000030

l230702D0:
	jal	zero,00000000230700CA

l230702D4:
	c.lui	s2,00010000
	c.li	s3,00000000
	c.li	s1,00000000
	addi	s4,zero,+000002F8
	addi	s2,s2,+00000082

l230702E2:
	c.li	a0,0000000E
	c.swsp	a1,00000084
	jal	ra,000000002306FB44
	c.lwsp	a2,00000064
	c.bnez	a0,0000000023070334

l230702EE:
	lui	s0,00042026
	jal	ra,000000002306A7EE
	lbu	s2,s0,+000007EC
	c.li	a5,00000001
	sb	a5,s0,+000007EC
	andi	s2,s2,+000000FF
	jal	ra,000000002306A7FE
	bne	s2,zero,0000000023070328
