;;; Segment .text (23000300)

;; cb_httpc_headers_done_fn: 23000300
cb_httpc_headers_done_fn proc
	lui	a0,00023072
	c.addi	sp,FFFFFFF0
	c.mv	a2,a4
	c.mv	a1,a3
	addi	a0,a0,+00000668
	c.swsp	ra,00000084
	jal	ra,0000000023052118
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; cb_httpc_result: 2300031C
cb_httpc_result proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	lui	a0,00023072
	c.mv	a1,a2
	addi	a0,a0,+00000694
	c.swsp	ra,00000084
	jal	ra,0000000023052118
	c.lwsp	a2,00000020
	sw	zero,s0,+00000000
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; cb_altcp_recv_fn: 2300033E
cb_altcp_recv_fn proc
	lui	a0,0002308B
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000004D4
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a1
	c.mv	s0,a2
	jal	ra,00000000230520DC
	lui	a4,0004200E
	addi	a4,a4,-00000388
	c.lw	a4,0(a5)
	addi	a3,a5,+00000001
	c.sw	a4,0(a3)
	andi	a5,a5,+0000003F
	c.bnez	a5,0000000023000378

l2300036C:
	lui	a0,00023072
	addi	a0,a0,+000007FC
	jal	ra,00000000230520DC

l23000378:
	lhu	a1,s0,+00000008
	c.mv	a0,s1
	jal	ra,000000002303BF90
	c.mv	a0,s0
	jal	ra,0000000023040890
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; cmd_stack_wifi: 23000394
;;   Called from:
;;     23000886 (in aos_loop_proc)
cmd_stack_wifi proc
	lui	a5,0004200E
	addi	a5,a5,-00000378
	lbu	a3,a5,+00000000
	c.li	a4,00000001
	bne	a3,a4,00000000230003B2

l230003A6:
	lui	a0,00023073
	addi	a0,a0,-000007A4
	jal	zero,00000000230520DC

l230003B2:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	sb	a4,a5,+00000000
	addi	s0,zero,+000003E8
	jal	ra,0000000023034748
	srl	a1,a0,s0
	lui	a0,00023073
	addi	a0,a0,-00000780
	jal	ra,0000000023052118
	jal	ra,0000000023038F24
	jal	ra,0000000023034748
	srl	a1,a0,s0
	lui	a0,00023073
	addi	a0,a0,-00000768
	jal	ra,0000000023052118
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a2,00000000
	c.li	a1,00000001
	c.li	a0,00000002
	c.addi	sp,00000010
	jal	zero,000000002304D7AC

;; cmd_exception_illegal_ins: 230003FC
cmd_exception_illegal_ins proc
	lui	a1,00022008
	c.addi	a1,00000001
	c.li	a0,00000003
	jal	zero,000000002303398A

;; cmd_exception_store: 23000408
cmd_exception_store proc
	lui	a1,00022008
	c.addi	a1,00000001
	c.li	a0,00000001
	jal	zero,000000002303398A

;; cmd_exception_l_illegal: 23000414
cmd_exception_l_illegal proc
	lui	a1,00000200
	c.li	a0,00000002
	jal	zero,000000002303398A

;; cmd_exception_load: 2300041E
cmd_exception_load proc
	lui	a1,00022008
	c.addi	a1,00000001
	c.li	a0,00000000
	jal	zero,000000002303398A

;; cmd_dma: 2300042A
cmd_dma proc
	jal	zero,000000002303381E

;; cmd_cks: 2300042E
cmd_cks proc
	jal	zero,0000000023032A22

;; cmd_aes: 23000432
cmd_aes proc
	jal	zero,000000002303545C

;; cmd_trng: 23000436
cmd_trng proc
	jal	zero,00000000230340C2

;; cmd_sha: 2300043A
cmd_sha proc
	jal	zero,00000000230356FA

;; cmd_wifi: 2300043E
cmd_wifi proc
	jal	zero,0000000023001ECE

;; cmd_pka: 23000442
cmd_pka proc
	jal	zero,00000000230346FC

;; cmd_aws: 23000446
cmd_aws proc
	lui	a1,00023073
	lui	a0,00023001
	c.li	a5,00000000
	c.li	a4,0000000A
	c.li	a3,00000000
	c.lui	a2,00001000
	addi	a1,a1,-00000800
	addi	a0,a0,+000002B8
	jal	zero,000000002302FFE8

;; proc_hellow_entry: 23000462
proc_hellow_entry proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	a0,zero,+000001F4
	c.lui	s0,00002000
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	lui	s2,00023072
	jal	ra,0000000023030630
	lui	s1,00023073
	addi	s0,s0,+00000710

l23000482:
	addi	a1,s2,+000000E4
	addi	a0,s1,-00000404
	jal	ra,0000000023052118
	c.mv	a0,s0
	jal	ra,0000000023030630
	c.j	0000000023000482

;; char_to_hex: 23000496
;;   Called from:
;;     23000C08 (in _connect_wifi)
;;     23000C3E (in _connect_wifi)
;;     23000C5A (in _connect_wifi)
;;     23000C66 (in _connect_wifi)
char_to_hex proc
	c.mv	a5,a0
	addi	a0,a0,-00000030
	andi	a0,a0,+000000FF
	c.li	a4,00000009
	bgeu	a4,a0,00000000230004BC

l230004A6:
	addi	a4,a5,-00000061
	andi	a4,a4,+000000FF
	c.li	a3,00000005
	bltu	a3,a4,00000000230004BE

l230004B4:
	addi	a5,a5,-00000057

l230004B8:
	andi	a0,a5,+000000FF

l230004BC:
	c.jr	ra

l230004BE:
	addi	a4,a5,-00000041
	andi	a4,a4,+000000FF
	c.li	a0,00000000
	bltu	a3,a4,00000000230004BC

l230004CC:
	addi	a5,a5,-00000037
	c.j	00000000230004B8

;; cmd_httpc_test: 230004D2
cmd_httpc_test proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,0004200E
	lw	a5,s1,-00000380
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.beqz	a5,00000000230004FC

l230004E6:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	lui	a0,00023073
	addi	a0,a0,-000007F8
	c.addi	sp,00000010
	jal	zero,0000000023052118

l230004FC:
	lui	s0,00042010
	c.li	a2,0000001C
	c.li	a1,00000000
	addi	a0,s0,+00000140
	jal	ra,0000000023070EB8
	lui	a5,00023000
	addi	s2,s0,+00000140
	addi	a5,a5,+0000031C
	sw	a5,s2,+00000014
	lui	a5,00023000
	addi	a5,a5,+00000300
	addi	a3,s0,+00000140
	c.lwsp	s0,00000004
	sw	a5,s2,+00000018
	sb	zero,s2,+00000006
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	addi	a6,s1,-00000380
	addi	a5,s1,-00000380
	c.lwsp	tp,00000024
	lui	a4,00023000
	lui	a2,00023073
	lui	a0,00023073
	addi	a4,a4,+0000033E
	addi	a2,a2,-000007DC
	addi	a1,zero,+00000050
	addi	a0,a0,-000007B8
	c.addi	sp,00000010
	jal	zero,0000000023039A8A

;; get_dts_addr.part.2: 23000562
;;   Called from:
;;     230007B2 (in aos_loop_proc)
;;     230007E2 (in aos_loop_proc)
get_dts_addr.part.2 proc
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.beqz	a5,00000000230005A6

l23000574:
	jal	ra,000000002303030A

l23000578:
	c.mv	a1,a0
	lui	a3,00023073
	lui	a2,00023073
	lui	a0,00023073
	c.mv	a5,s0
	addi	a0,a0,-00000424
	addi	a4,zero,+00000322
	addi	a3,a3,-0000043C
	addi	a2,a2,-00000434
	jal	ra,000000002304B718
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,FFFFFFFF
	c.addi	sp,00000010
	c.jr	ra

l230005A6:
	jal	ra,00000000230302E8
	c.j	0000000023000578

;; client_demo.constprop.3: 230005AC
;;   Called from:
;;     23000760 (in http_test_cmd)
client_demo.constprop.3 proc
	lui	a0,00023073
	c.addi16sp	FFFFFEC0
	addi	a0,a0,-000007B8
	sw	ra,sp,+0000013C
	sw	s0,sp,+00000138
	sw	s1,sp,+00000134
	sw	s2,sp,+00000130
	sw	s3,sp,+0000012C
	sw	s4,sp,+00000128
	sw	s5,sp,+00000124
	sw	s6,sp,+00000120
	sw	s7,sp,+0000011C
	sw	s8,sp,+00000118
	jal	ra,000000002303A3BE
	c.bnez	a0,0000000023000620

l230005E4:
	lui	a0,00023072
	addi	a0,a0,+000006C8

l230005EC:
	jal	ra,0000000023052118
	c.li	s2,FFFFFFFF

l230005F2:
	lw	ra,sp,+0000013C
	lw	s0,sp,+00000138
	c.mv	a0,s2
	lw	s1,sp,+00000134
	lw	s2,sp,+00000130
	lw	s3,sp,+0000012C
	lw	s4,sp,+00000128
	lw	s5,sp,+00000124
	lw	s6,sp,+00000120
	lw	s7,sp,+0000011C
	lw	s8,sp,+00000118
	c.addi16sp	00000140
	c.jr	ra

l23000620:
	c.mv	s0,a0
	c.li	a2,00000000
	c.li	a1,00000001
	c.li	a0,00000002
	jal	ra,000000002303B73A
	c.mv	s3,a0
	bge	a0,zero,000000002300063C

l23000632:
	lui	a0,00023072
	addi	a0,a0,+000006E0
	c.j	00000000230005EC

l2300063C:
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,0000000023070EB8
	c.li	a5,00000002
	addi	a0,zero,+00000050
	sb	a5,sp,+00000011
	jal	ra,000000002303C332
	c.lw	s0,16(a5)
	sh	a0,sp,+00000012
	c.addi4spn	a0,0000000C
	c.lw	a5,0(a5)
	c.lw	a5,0(a5)
	c.swsp	a5,00000088
	c.swsp	a5,00000084
	jal	ra,000000002303FCA6
	c.mv	a1,a0
	lui	a0,00023072
	addi	a0,a0,+000006F4
	jal	ra,0000000023052118
	c.li	a2,00000010
	c.addi4spn	a1,00000010
	c.mv	a0,s3
	jal	ra,000000002303B3F6
	c.mv	s2,a0
	c.beqz	a0,000000002300068E

l23000684:
	lui	a0,00023072
	addi	a0,a0,+00000710
	c.j	00000000230005EC

l2300068E:
	addi	a2,zero,+00000080
	c.li	a1,00000000
	c.addi4spn	a0,00000090
	jal	ra,0000000023070EB8
	lui	a1,00023072
	addi	a2,zero,+0000006F
	addi	a1,a1,+00000790
	c.addi4spn	a0,00000020
	jal	ra,0000000023070C7C
	addi	a2,zero,+0000006E
	c.addi4spn	a1,00000020
	c.mv	a0,s3
	jal	ra,000000002303B7DE
	jal	ra,00000000230302E8
	c.mv	s1,a0
	c.lui	a0,00003000
	jal	ra,000000002303218A
	c.mv	s5,a0
	c.beqz	a0,00000000230006F8

l230006C8:
	lui	s6,00004E40
	c.li	s4,00000000
	c.li	s0,00000000
	lui	s8,00023072
	addi	s6,s6,-00000430

l230006D8:
	c.mv	a1,s5
	c.lui	a2,00003000
	c.mv	a0,s3
	jal	ra,000000002303B596
	c.mv	a1,a0
	c.bnez	a0,0000000023000704

l230006E6:
	lui	a0,00023072
	addi	a0,a0,+00000724
	jal	ra,0000000023052118

l230006F2:
	c.mv	a0,s5
	jal	ra,0000000023032272

l230006F8:
	c.mv	a0,s3
	jal	ra,000000002303B34E
	c.j	00000000230005F2

l23000700:
	c.mv	s4,s7
	c.j	00000000230006D8

l23000704:
	bge	a0,zero,000000002300071E

l23000708:
	lui	a5,00042020
	lw	a2,a5,-000002B0
	lui	a0,00023072
	addi	a0,a0,+0000072C

l23000718:
	jal	ra,0000000023052118
	c.j	00000000230006F2

l2300071E:
	addi	s7,s4,+00000001
	andi	s4,s4,+000000FF
	c.add	s0,a0
	bne	s4,zero,0000000023000738

l2300072C:
	c.mv	a2,a0
	c.mv	a1,s0
	addi	a0,s8,+00000744
	jal	ra,0000000023052118

l23000738:
	bge	s6,s0,0000000023000700

l2300073C:
	jal	ra,00000000230302E8
	sub	a1,a0,s1
	addi	a2,zero,+000003E8
	srl	a1,a1,a2
	lui	a0,00023072
	addi	a0,a0,+0000075C
	srl	s0,s0,a1
	c.slli	s0,03
	srl	a2,s0,a2
	c.j	0000000023000718

;; http_test_cmd: 23000760
http_test_cmd proc
	c.j	00000000230005AC

;; aos_loop_proc: 23000762
aos_loop_proc proc
	lui	a2,00042010
	lui	a0,00042010
	c.addi	sp,FFFFFFE0
	addi	a2,a2,+000000E0
	addi	a1,zero,+00000200
	addi	a0,a0,-00000720
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	jal	ra,0000000023039BB6
	jal	ra,0000000023039FB6
	jal	ra,000000002302CADE
	jal	ra,000000002304C14E
	jal	ra,000000002304D6CA
	jal	ra,0000000023037116
	lui	s2,00023084
	addi	a2,s2,+00000680
	c.li	a1,00000000
	c.mv	s1,a0
	jal	ra,00000000230295BC
	c.mv	s0,a0
	c.bnez	a0,00000000230007BA

l230007AE:
	addi	a0,s2,+00000680
	c.jal	0000000023000562
	c.li	s2,00000000
	c.bnez	a0,00000000230007C6

l230007B8:
	c.li	s1,00000000

l230007BA:
	c.mv	a1,s0
	c.mv	a0,s1
	c.mv	s2,s0
	jal	ra,0000000023035DAA
	c.mv	s0,s1

l230007C6:
	jal	ra,0000000023037116
	lui	s3,00023085
	c.li	a1,00000000
	addi	a2,s3,-000003E4
	c.mv	s1,a0
	jal	ra,00000000230295BC
	c.mv	a1,a0
	c.bnez	a0,00000000230007EA

l230007DE:
	addi	a0,s3,-000003E4
	c.jal	0000000023000562
	c.bnez	a0,00000000230007F0

l230007E6:
	c.mv	a1,s2
	c.mv	s1,s0

l230007EA:
	c.mv	a0,s1
	jal	ra,00000000230365FC

l230007F0:
	jal	ra,000000002304A156
	jal	ra,000000002304CD54
	lui	a0,00023072
	c.li	a1,00000000
	addi	a0,a0,+00000408
	jal	ra,000000002304C198
	c.mv	s0,a0
	blt	a0,zero,000000002300086E

l2300080C:
	lui	a0,00023072
	addi	a0,a0,+00000414
	jal	ra,0000000023052118
	c.li	a0,00000000
	jal	ra,000000002302B59A
	jal	ra,000000002302B5FC
	lui	a2,00012345
	c.mv	a1,a0
	addi	a2,a2,+00000678
	c.mv	a0,s0
	jal	ra,000000002304CDD0
	jal	ra,0000000023001A44
	jal	ra,000000002302E64C
	jal	ra,0000000023049160
	jal	ra,000000002304852E
	jal	ra,0000000023048076
	jal	ra,0000000023049172
	jal	ra,00000000230496E2
	jal	ra,000000002304A394
	jal	ra,000000002302B2B8
	jal	ra,000000002302B27E
	jal	ra,00000000230297F0
	jal	ra,0000000023028132
	jal	ra,000000002303599C
	jal	ra,0000000023034C4C
	jal	ra,0000000023039D6C

l2300086E:
	lui	a1,00023001
	c.li	a2,00000000
	addi	a1,a1,-00000300
	c.li	a0,00000002
	jal	ra,000000002304D7E0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000000
	c.jal	0000000023000394
	jal	ra,000000002304CF3A
	lui	a0,00023086
	addi	a0,a0,-000004A0
	jal	ra,00000000230520DC
	lui	a0,00023072
	addi	a0,a0,+00000434
	jal	ra,00000000230520DC
	lui	a0,00023072
	addi	a0,a0,+00000464
	jal	ra,00000000230520DC
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	jal	zero,0000000023030064

;; vApplicationStackOverflowHook: 230008C2
;;   Called from:
;;     230306CA (in vTaskSwitchContext)
vApplicationStackOverflowHook proc
	lui	a0,00023073
	c.addi	sp,FFFFFFE0
	addi	a0,a0,-00000220
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	jal	ra,00000000230520DC
	c.lwsp	a2,00000064
	lui	a0,00023073
	addi	a0,a0,-00000204
	jal	ra,0000000023052118

l230008E2:
	c.j	00000000230008E2

;; vApplicationMallocFailedHook: 230008E4
;;   Called from:
;;     230321BE (in pvPortMalloc)
vApplicationMallocFailedHook proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023032304
	c.mv	a1,a0
	lui	a0,00023073
	addi	a0,a0,-00000258
	jal	ra,0000000023052118

l230008FA:
	c.j	00000000230008FA

;; vApplicationIdleHook: 230008FC
;;   Called from:
;;     2302FF42 (in prvIdleTask)
vApplicationIdleHook proc
	lui	a5,0004200E
	lw	a5,a5,-00000710
	c.jr	ra

;; check_dts_config: 23000906
;;   Called from:
;;     23000C80 (in _connect_wifi)
check_dts_config proc
	c.addi16sp	FFFFFF80
	c.swsp	s2,00000038
	c.mv	s2,a0
	c.addi4spn	a0,0000000C
	c.swsp	s0,0000003C
	c.swsp	s1,000000B8
	c.swsp	ra,000000BC
	c.mv	s1,a1
	jal	ra,00000000230358B2
	c.li	s0,FFFFFFFF
	c.bnez	a0,0000000023000942

l2300091E:
	addi	a2,zero,+00000020
	c.addi4spn	a1,0000000C
	c.mv	s0,a0
	c.mv	a0,s2
	jal	ra,00000000230714A8
	addi	a2,zero,+00000040
	sb	zero,s2,+0000001F
	addi	a1,sp,+0000002D
	c.mv	a0,s1
	jal	ra,00000000230714A8
	sb	zero,s1,+0000003F

l23000942:
	c.mv	a0,s0
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.addi16sp	00000080
	c.jr	ra

;; _connect_wifi: 23000950
;;   Called from:
;;     23000D80 (in event_cb_wifi_event)
_connect_wifi proc
	c.addi16sp	FFFFFE80
	sw	s6,sp,+00000160
	lui	s6,0004200E
	sw	ra,sp,+0000017C
	sw	s0,sp,+00000178
	sw	s1,sp,+00000174
	addi	s0,s6,-00000370
	sw	s3,sp,+0000016C
	sw	s4,sp,+00000168
	sw	s2,sp,+00000170
	sw	s5,sp,+00000164
	sw	s7,sp,+0000015C
	sw	s8,sp,+00000158
	sw	s9,sp,+00000154
	jal	ra,00000000230281B6
	c.sw	s0,0(a0)
	jal	ra,000000002304D43C
	c.lw	s0,0(a4)
	c.mv	a2,a0
	c.addi4spn	s1,00000084
	lui	a0,00023072
	c.mv	a3,a1
	addi	a7,sp,+000000C8
	addi	a6,sp,+00000060
	c.mv	a5,s1
	addi	a0,a0,+000000F8
	jal	ra,0000000023052118
	addi	a2,zero,+00000042
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023070EB8
	addi	a2,zero,+00000021
	c.li	a1,00000000
	c.addi4spn	a0,00000060
	jal	ra,0000000023070EB8
	addi	a2,zero,+00000042
	c.li	a1,00000000
	c.addi4spn	a0,000000C8
	jal	ra,0000000023070EB8
	addi	s3,sp,+00000040
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.mv	a0,s3
	jal	ra,0000000023070EB8
	c.li	a2,00000006
	c.li	a1,00000000
	c.addi4spn	a0,0000002C
	jal	ra,0000000023070EB8
	c.li	a2,0000000A
	c.li	a1,00000000
	c.addi4spn	a0,00000034
	jal	ra,0000000023070EB8
	addi	a2,zero,+00000042
	c.li	a1,00000000
	c.addi4spn	a0,0000010C
	jal	ra,0000000023070EB8
	lui	a0,00023072
	c.li	a3,00000000
	addi	a2,zero,+00000041
	c.addi4spn	a1,0000010C
	addi	a0,a0,+0000015C
	jal	ra,000000002302DC9C
	lbu	s4,sp,+0000010C
	addi	s6,s6,-00000370
	beq	s4,zero,0000000023000C7C

l23000A22:
	addi	a2,zero,+00000020
	c.addi4spn	a1,0000010C
	c.addi4spn	a0,00000060
	jal	ra,00000000230714A8
	addi	a2,zero,+00000042
	c.li	a1,00000000
	c.addi4spn	a0,0000010C
	jal	ra,0000000023070EB8
	lui	a0,00023072
	c.li	a3,00000000
	addi	a2,zero,+00000041
	c.addi4spn	a1,0000010C
	addi	a0,a0,+0000016C
	jal	ra,000000002302DC9C
	lbu	a5,sp,+0000010C
	c.beqz	a5,0000000023000A60

l23000A54:
	addi	a2,zero,+00000041
	c.addi4spn	a1,0000010C
	c.addi4spn	a0,000000C8
	jal	ra,00000000230714A8

l23000A60:
	addi	a2,zero,+00000042
	c.li	a1,00000000
	c.addi4spn	a0,0000010C
	jal	ra,0000000023070EB8
	lui	s0,00023072
	c.li	a3,00000000
	addi	a2,zero,+00000041
	c.addi4spn	a1,0000010C
	addi	a0,s0,+00000178
	jal	ra,000000002302DC9C
	lbu	a5,sp,+0000010C
	c.beqz	a5,0000000023000A92

l23000A86:
	addi	a2,zero,+00000041
	c.addi4spn	a1,0000010C
	c.mv	a0,s1
	jal	ra,00000000230714A8

l23000A92:
	lbu	a5,sp,+00000084
	c.bnez	a5,0000000023000AD8

l23000A98:
	jal	ra,000000002304D43C
	c.mv	a2,a0
	lui	a0,00023072
	c.mv	a3,a1
	addi	a0,a0,+00000184
	jal	ra,0000000023052118
	lui	a0,00023072
	addi	a0,a0,+0000019C
	jal	ra,00000000230520DC
	c.addi4spn	a0,00000060
	jal	ra,000000002307132C
	c.mv	a2,a0
	c.mv	a3,s1
	c.addi4spn	a1,00000060
	c.addi4spn	a0,000000C8
	jal	ra,0000000023028166
	c.mv	a1,s1
	addi	a0,s0,+00000178
	jal	ra,000000002302DFAC
	jal	ra,000000002302DFCC

l23000AD8:
	addi	a2,zero,+00000042
	c.li	a1,00000000
	c.addi4spn	a0,0000010C
	jal	ra,0000000023070EB8
	lui	a0,00023072
	c.li	a3,00000000
	addi	a2,zero,+00000041
	c.addi4spn	a1,0000010C
	addi	a0,a0,+000001B4
	jal	ra,000000002302DC9C
	lbu	a5,sp,+0000010C
	bne	a5,zero,0000000023000BD6

l23000B00:
	c.li	s2,00000000
	c.li	s4,00000000

l23000B04:
	addi	a2,zero,+00000042
	c.li	a1,00000000
	c.addi4spn	a0,0000010C
	jal	ra,0000000023070EB8
	lui	a0,00023072
	c.li	a3,00000000
	addi	a2,zero,+00000041
	c.addi4spn	a1,0000010C
	addi	a0,a0,+000001E0
	jal	ra,000000002302DC9C
	lbu	a5,sp,+0000010C
	c.beqz	a5,0000000023000B88

l23000B2A:
	c.li	a2,0000001F
	c.addi4spn	a1,0000010C
	c.mv	a0,s3
	jal	ra,00000000230714A8
	lui	a0,00023072
	c.mv	a1,s3
	addi	a0,a0,+000001F0
	jal	ra,0000000023052118
	c.mv	a0,s3
	jal	ra,000000002307132C
	andi	a5,a0,+00000001
	c.mv	s0,a0
	c.beqz	a5,0000000023000B5A

l23000B50:
	c.li	a5,00000002
	or	a5,a0,a5
	sub	s0,a0,a5

l23000B5A:
	c.beqz	s0,0000000023000B64

l23000B5C:
	c.mv	s8,s3
	c.li	s7,00000000

l23000B60:
	blt	s7,s0,0000000023000C54

l23000B64:
	lbu	a6,sp,+00000031
	lbu	a5,sp,+00000030
	lbu	a4,sp,+0000002F
	lbu	a3,sp,+0000002E
	lbu	a2,sp,+0000002D
	lbu	a1,sp,+0000002C
	lui	a0,00023072
	addi	a0,a0,+0000020C
	jal	ra,0000000023052118

l23000B88:
	jal	ra,000000002304D43C
	c.swsp	a0,0000000C
	c.addi4spn	a0,00000060
	c.swsp	a1,0000008C
	jal	ra,000000002307132C
	c.swsp	a0,00000088
	c.addi4spn	a0,000000C8
	jal	ra,000000002307132C
	c.lwsp	s4,000000E4
	c.lwsp	s8,00000084
	c.lwsp	t3,000000A4
	c.mv	a7,a0
	lui	a0,00023072
	addi	a6,sp,+000000C8
	c.addi4spn	a4,00000060
	c.swsp	s2,00000084
	c.swsp	s4,00000004
	c.swsp	s3,00000080
	c.swsp	s1,00000000
	addi	a0,a0,+00000340
	jal	ra,0000000023052118
	lw	a0,s6,+00000000
	c.mv	a6,s2
	c.mv	a5,s4
	c.addi4spn	a4,0000002C
	c.mv	a3,s1
	c.addi4spn	a2,000000C8
	c.addi4spn	a1,00000060
	jal	ra,0000000023028416
	c.j	0000000023000CD0

l23000BD6:
	c.li	a2,00000009
	c.addi4spn	a1,0000010C
	c.addi4spn	a0,00000034
	jal	ra,00000000230714A8
	lui	a0,00023072
	c.addi4spn	a1,00000034
	addi	a0,a0,+000001C4
	jal	ra,0000000023052118
	addi	a1,zero,+0000007C
	c.addi4spn	a0,00000034
	jal	ra,0000000023070F94
	addi	s2,a0,+00000001
	beq	s2,zero,0000000023000B00

l23000C00:
	lbu	a0,a0,+00000001
	c.li	s7,00000001
	c.li	s5,00000000
	jal	ra,0000000023000496
	c.mv	s4,a0
	c.addi4spn	a0,00000034
	jal	ra,000000002307132C
	c.mv	s0,a0
	c.mv	a0,s2
	jal	ra,000000002307132C
	c.sub	s0,a0
	addi	s8,s0,-00000001
	c.addi4spn	a5,00000150
	c.add	a5,s8
	sb	zero,a5,+00000EE4
	c.addi4spn	a5,00000034
	c.add	s0,a5
	c.li	s2,00000000
	c.li	s9,0000000A

l23000C32:
	c.addi	s0,FFFFFFFF
	bge	s5,s8,0000000023000B04

l23000C38:
	lbu	a0,s0,-00000001
	c.addi	s5,00000001
	jal	ra,0000000023000496
	add	a0,a0,s7
	c.add	s2,a0
	c.slli	s2,10
	srli	s2,s2,00000010
	add	s7,s7,s9
	c.j	0000000023000C32

l23000C54:
	lbu	a0,s8,+00000000
	c.addi	s8,00000002
	jal	ra,0000000023000496
	c.mv	s5,a0
	lbu	a0,s8,-00000001
	c.slli	s5,04
	jal	ra,0000000023000496
	srli	a5,s7,00000001
	c.addi4spn	a4,00000150
	c.add	a5,a4
	c.add	s5,a0
	sb	s5,a5,+00000EDC
	c.addi	s7,00000002
	c.j	0000000023000B60

l23000C7C:
	c.addi4spn	a1,000000C8
	c.addi4spn	a0,00000060
	c.jal	0000000023000906
	c.li	s2,00000000
	beq	a0,zero,0000000023000B88

l23000C88:
	lui	a0,00023072
	addi	a0,a0,+00000234
	jal	ra,00000000230520DC
	lui	a0,00023072
	addi	a0,a0,+0000024C
	jal	ra,00000000230520DC
	lui	a0,00023072
	addi	a0,a0,+00000298
	jal	ra,00000000230520DC
	lui	a0,00023072
	addi	a0,a0,+000002DC
	jal	ra,00000000230520DC
	lui	a0,00023072
	addi	a0,a0,+000002FC
	jal	ra,00000000230520DC
	lui	a0,00023072
	addi	a0,a0,+00000318
	jal	ra,00000000230520DC

l23000CD0:
	lw	ra,sp,+0000017C
	lw	s0,sp,+00000178
	lw	s1,sp,+00000174
	lw	s2,sp,+00000170
	lw	s3,sp,+0000016C
	lw	s4,sp,+00000168
	lw	s5,sp,+00000164
	lw	s6,sp,+00000160
	lw	s7,sp,+0000015C
	lw	s8,sp,+00000158
	lw	s9,sp,+00000154
	c.addi16sp	00000180
	c.jr	ra

;; event_cb_wifi_event: 23000D00
event_cb_wifi_event proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lhu	s1,a0,+00000006
	c.li	a4,00000016
	addi	a5,s1,-00000001
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a4,a5,0000000023000FAE

l23000D1A:
	lui	a4,00023072
	c.slli	a5,02
	addi	a4,a4,+00000088
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.mv	s0,a0
	c.jr	a5

l23000D2C:
	jal	ra,000000002304D43C
	c.mv	a2,a0
	lui	a0,00023073
	c.mv	a3,a1
	addi	a0,a0,-00000740
	jal	ra,0000000023052118
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	lui	a0,0004200E
	addi	a0,a0,-00000718
	c.addi16sp	00000020
	jal	zero,000000002302620E

l23000D54:
	jal	ra,000000002304D43C
	c.swsp	a1,00000080
	c.swsp	a0,00000000
	jal	ra,0000000023034748
	addi	a4,zero,+000003E8
	srl	a4,a0,a4
	c.lwsp	zero,00000084
	c.lwsp	tp,000000A4
	lui	a0,00023073
	addi	a0,a0,-00000720
	jal	ra,0000000023052118
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.j	0000000023000950
23000D82       EF C0 A4 6B 2A 86 37 35 07 23 AE 86 13 05   ...k*.75.#....
23000D90 85 90 62 44 F2 40 D2 44 05 61 6F 10 E5 37 EF C0 ..bD.@.D.ao..7..
23000DA0 E4 69 2A 86 37 35 07 23 AE 86 13 05 45 93 EF 10 .i*.75.#....E...
23000DB0 A5 36 62 44 F2 40 D2 44 05 61 6F 70 A2 24 EF C0 .6bD.@.D.aop.$..
23000DC0 E4 67 2A 86 37 35 07 23 AE 86 13 05 45 95 D1 B7 .g*.75.#....E...
23000DD0 EF C0 C4 66 2A C0 03 55 84 00 2E C2 EF 70 F2 0E ...f*..U.....p..
23000DE0 02 46 92 46 2A 87 37 35 07 23 13 05 45 97 62 44 .F.F*.75.#..E.bD
23000DF0 F2 40 D2 44 05 61 6F 10 25 32 EF C0 24 64 2A 86 .@.D.ao.%2..$d*.
23000E00 37 35 07 23 AE 86 13 05 05 9A 61 B7 EF C0 04 63 75.#......a....c
23000E10 2A 86 37 35 07 23 AE 86 13 05 05 9C 9D BF EF C0 *.75.#..........
23000E20 E4 61 2A 86 37 35 07 23 AE 86 13 05 05 9E 95 B7 .a*.75.#........
23000E30 EF C0 C4 60 2A 86 37 35 07 23 AE 86 13 05 05 A0 ...`*.75.#......
23000E40 EF 10 85 2D EF 10 03 4C 62 44 F2 40 D2 44 AA 85 ...-...LbD.@.D..
23000E50 37 35 07 23 13 05 C5 A1 05 61 6F 10 E5 2B EF C0 75.#.....ao..+..
23000E60 E4 5D 2A 86 37 35 07 23 AE 86 13 05 C5 A3 EF 10 .]*.75.#........
23000E70 A5 2A 62 44 F2 40 D2 44 05 61 6F 60 63 20 EF C0 .*bD.@.D.ao`c ..
23000E80 E4 5B 18 44 2A 86 AE 86 09 E7 37 37 07 23 13 07 .[.D*.....77.#..
23000E90 87 8B 37 35 07 23 13 05 05 A6 EF 10 E5 27 B7 E7 ..75.#.......'..
23000EA0 00 42 03 A5 47 C8 93 84 47 C8 19 C1 EF 10 63 3C .B..G...G.....c<
23000EB0 1C 44 9C C0 F2 40 62 44 D2 44 05 61 82 80 EF C0 .D...@bD.D.a....
23000EC0 E4 57 18 44 2A 86 AE 86 09 E7 37 37 07 23 13 07 .W.D*.....77.#..
23000ED0 87 8B 37 35 07 23 13 05 85 A8 EF 10 E5 23 08 44 ..75.#.......#.D
23000EE0 71 D9 62 44 F2 40 D2 44 05 61 6F 10 83 38 EF C0 q.bD.@.D.ao..8..
23000EF0 E4 54 18 44 2A 86 AE 86 09 E7 37 37 07 23 13 07 .T.D*.....77.#..
23000F00 87 8B 37 35 07 23 13 05 05 AB EF 10 E5 20 B7 E7 ..75.#....... ..
23000F10 00 42 03 A5 C7 C7 93 84 C7 C7 41 BF EF C0 04 52 .B........A....R
23000F20 2A 86 37 35 07 23 AE 86 13 05 85 AD 37 E4 00 42 *.75.#......7..B
23000F30 B7 E4 00 42 EF 10 45 1E 13 04 C4 C7 93 84 44 C8 ...B..E.......D.
23000F40 10 40 8C 40 37 35 07 23 13 05 C5 AF EF 10 C5 1C .@.@75.#........
23000F50 8C 40 10 40 2E C6 32 C0 EF 70 E2 25 62 44 02 46 .@.@..2..p.%bD.F
23000F60 B2 45 F2 40 D2 44 01 48 81 47 01 47 81 46 05 61 .E.@.D.H.G.G.F.a
23000F70 6F 70 62 4A EF C0 84 4C 2A 86 37 35 07 23 AE 86 opbJ...L*.75.#..
23000F80 13 05 85 B1 39 B5 EF C0 64 4B 2A 86 37 35 07 23 ....9...dK*.75.#
23000F90 18 44 AE 86 13 05 05 B4 99 BD EF C0 24 4A 2A 86 .D..........$J*.
23000FA0 37 35 07 23 18 44 AE 86 13 05 05 B7 89 B5       75.#.D........ 

l23000FAE:
	jal	ra,000000002304D43C
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a3,a1
	c.mv	a1,s1
	c.lwsp	s4,00000024
	c.mv	a2,a0
	lui	a0,00023073
	addi	a0,a0,-00000460
	c.addi16sp	00000020
	jal	zero,0000000023052118

;; vApplicationGetIdleTaskMemory: 23000FCC
;;   Called from:
;;     23030272 (in vTaskStartScheduler)
vApplicationGetIdleTaskMemory proc
	lui	a5,00042011
	addi	a5,a5,-000006E4
	c.sw	a0,0(a5)
	lui	a5,00042010
	addi	a5,a5,+0000015C
	c.sw	a1,0(a5)
	addi	a5,zero,+00000060
	c.sw	a2,0(a5)
	c.jr	ra

;; vApplicationGetTimerTaskMemory: 23000FE8
;;   Called from:
;;     23031752 (in xTimerCreateTimerTask)
vApplicationGetTimerTaskMemory proc
	lui	a5,00042011
	addi	a5,a5,-00000684
	c.sw	a0,0(a5)
	lui	a5,00042010
	addi	a5,a5,+000002DC
	c.sw	a1,0(a5)
	addi	a5,zero,+00000190
	c.sw	a2,0(a5)
	c.jr	ra

;; vAssertCalled: 23001004
;;   Called from:
;;     2302E680 (in xEventGroupCreateStatic)
;;     2302E686 (in xEventGroupCreateStatic)
;;     2302E696 (in xEventGroupCreateStatic)
;;     2302E700 (in xEventGroupWaitBits)
;;     2302E74C (in xEventGroupWaitBits)
;;     2302E770 (in xEventGroupWaitBits)
;;     2302E848 (in xEventGroupSetBits)
;;     2302E84E (in xEventGroupSetBits)
;;     2302E87E (in vEventGroupDelete)
;;     2302EB4A (in xQueueGenericReset)
;;     2302EB7E (in xQueueGenericCreateStatic)
;;     2302EBBA (in xQueueGenericCreateStatic)
;;     2302EBC4 (in xQueueGenericCreateStatic)
;;     2302EBCA (in xQueueGenericCreateStatic)
;;     2302EC38 (in xQueueGenericCreate)
;;     2302EC74 (in xQueueCreateCountingSemaphore)
;;     2302EC80 (in xQueueCreateCountingSemaphore)
;;     2302EDAC (in xQueueGenericSend)
;;     2302EDB8 (in xQueueGenericSend)
;;     2302EDD4 (in xQueueGenericSend)
;;     2302EDDA (in xQueueGenericSend)
;;     2302EE5A (in xQueueGiveMutexRecursive)
;;     2302EED0 (in xQueueGenericSendFromISR)
;;     2302EF10 (in xQueueGenericSendFromISR)
;;     2302EF2E (in xQueueGenericSendFromISR)
;;     2302EF98 (in xQueueGiveFromISR)
;;     2302EFA4 (in xQueueGiveFromISR)
;;     2302EFAA (in xQueueGiveFromISR)
;;     2302F0EC (in xQueueReceive)
;;     2302F0F8 (in xQueueReceive)
;;     2302F0FE (in xQueueReceive)
;;     2302F22C (in xQueueSemaphoreTake)
;;     2302F232 (in xQueueSemaphoreTake)
;;     2302F258 (in xQueueSemaphoreTake)
;;     2302F28E (in xQueueSemaphoreTake)
;;     2302F2E6 (in xQueueTakeMutexRecursive)
;;     2302F30A (in uxQueueMessagesWaiting)
;;     2302F350 (in vQueueDelete)
;;     2302F450 (in prvInitialiseNewStreamBuffer)
;;     2302F4F8 (in prvWriteBytesToBuffer)
;;     2302F4FE (in prvWriteBytesToBuffer)
;;     2302F522 (in prvWriteBytesToBuffer)
;;     2302F5C0 (in prvReadBytesFromBuffer)
;;     2302F5CE (in prvReadBytesFromBuffer)
;;     2302F5D4 (in prvReadBytesFromBuffer)
;;     2302F62A (in xStreamBufferGenericCreate)
;;     2302F632 (in xStreamBufferGenericCreate)
;;     2302F646 (in xStreamBufferGenericCreate)
;;     2302F6CC (in xStreamBufferGenericCreateStatic)
;;     2302F6DC (in xStreamBufferGenericCreateStatic)
;;     2302F6E8 (in xStreamBufferGenericCreateStatic)
;;     2302F6F2 (in xStreamBufferGenericCreateStatic)
;;     2302F6FC (in xStreamBufferGenericCreateStatic)
;;     2302F722 (in vStreamBufferDelete)
;;     2302F766 (in xStreamBufferSpacesAvailable)
;;     2302F7CA (in xStreamBufferSend)
;;     2302F88E (in xStreamBufferSend)
;;     2302F896 (in xStreamBufferSend)
;;     2302F89C (in xStreamBufferSend)
;;     2302F94E (in xStreamBufferSendFromISR)
;;     2302F954 (in xStreamBufferSendFromISR)
;;     2302FA00 (in xStreamBufferReceive)
;;     2302FA06 (in xStreamBufferReceive)
;;     2302FA38 (in xStreamBufferReceive)
;;     2302FADC (in xStreamBufferReceiveFromISR)
;;     2302FAE2 (in xStreamBufferReceiveFromISR)
;;     2302FB22 (in xStreamBufferIsEmpty)
;;     2302FC32 (in prvDeleteTCB)
;;     2302FF98 (in xTaskCreateStatic)
;;     2302FFB4 (in xTaskCreateStatic)
;;     2302FFC4 (in xTaskCreateStatic)
;;     2302FFD4 (in xTaskCreateStatic)
;;     2303018C (in vTaskDelete)
;;     23030242 (in eTaskGetState)
;;     230302CE (in vTaskStartScheduler)
;;     2303032C (in pcTaskGetName)
;;     230304D6 (in xTaskIncrementTick)
;;     2303061C (in xTaskResumeAll)
;;     2303066A (in vTaskDelay)
;;     23030730 (in vTaskSwitchContext)
;;     23030764 (in vTaskPlaceOnEventList)
;;     230307B0 (in vTaskPlaceOnUnorderedEventList)
;;     230307BA (in vTaskPlaceOnUnorderedEventList)
;;     230307F4 (in vTaskPlaceOnEventListRestricted)
;;     2303088E (in xTaskRemoveFromEventList)
;;     23030918 (in vTaskRemoveFromUnorderedEventList)
;;     2303092E (in vTaskRemoveFromUnorderedEventList)
;;     23030990 (in vTaskSetTimeOutState)
;;     23030A50 (in xTaskCheckForTimeOut)
;;     23030A58 (in xTaskCheckForTimeOut)
;;     23030E44 (in xTaskPriorityDisinherit)
;;     23030E66 (in xTaskPriorityDisinherit)
;;     23030F44 (in vTaskPriorityDisinheritAfterTimeout)
;;     23030FCC (in vTaskPriorityDisinheritAfterTimeout)
;;     23031354 (in xTaskGenericNotify)
;;     230313CE (in xTaskGenericNotify)
;;     2303141A (in xTaskGenericNotify)
;;     23031462 (in xTaskGenericNotifyFromISR)
;;     2303147E (in xTaskGenericNotifyFromISR)
;;     230314DA (in xTaskGenericNotifyFromISR)
;;     23031572 (in vTaskNotifyGiveFromISR)
;;     230315F6 (in vTaskNotifyGiveFromISR)
;;     23031786 (in xTimerCreateTimerTask)
;;     230317BA (in xTimerCreateStatic)
;;     23031808 (in xTimerCreateStatic)
;;     2303180E (in xTimerCreateStatic)
;;     23031884 (in xTimerGenericCommand)
;;     2303192C (in prvSwitchTimerLists)
;;     23031B1E (in prvTimerTask)
;;     23031B42 (in pvTimerGetTimerID)
;;     23031BCC (in xPortStartScheduler)
;;     2303226C (in pvPortMalloc)
;;     23032298 (in vPortFree)
;;     230322B8 (in vPortFree)
;;     23032332 (in vPortDefineHeapRegions)
;;     230323E4 (in vPortDefineHeapRegions)
;;     230323EE (in vPortDefineHeapRegions)
;;     2303240C (in vPortDefineHeapRegions)
;;     2304860E (in iperf_server_udp)
vAssertCalled proc
	c.addi	sp,FFFFFFF0
	c.swsp	zero,00000084
	csrrci	zero,mstatus,00000008
	c.li	a5,00000001

l2300100E:
	c.lwsp	a2,000000C4
	bne	a4,a5,0000000023001018

l23001014:
	c.addi	sp,00000010
	c.jr	ra

l23001018:
	c.nop
	c.j	000000002300100E

;; bfl_main: 2300101C
;;   Called from:
;;     230000F4 (in bl602_start)
bfl_main proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s2,00000018
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	jal	ra,0000000023034748
	lui	s2,0004200E
	lui	a5,000001E8
	addi	a5,a5,+00000480
	addi	a4,zero,+000000FF
	addi	a3,zero,+000000FF
	c.li	a2,00000007
	c.li	a1,00000010
	sw	a0,s2,+00000C8C
	c.li	a0,00000000
	jal	ra,0000000023032510
	lui	a0,00023072
	addi	a0,a0,+00000494
	jal	ra,00000000230520DC
	lui	a0,00023072
	addi	a0,a0,+000004B0
	jal	ra,00000000230520DC
	c.addi4spn	a0,00000004
	jal	ra,0000000023032914
	addi	s2,s2,-00000374
	c.bnez	a0,0000000023001076

l23001070:
	c.lwsp	tp,00000044
	jal	ra,00000000230520DC

l23001076:
	lui	s0,00023072
	addi	a0,s0,+000007FC
	jal	ra,00000000230520DC
	addi	a0,s0,+000007FC
	jal	ra,00000000230520DC
	lui	s1,0002307E
	addi	a0,s1,+000007D4
	jal	ra,00000000230520DC
	lui	a0,00023072
	addi	a0,a0,+000004C8
	jal	ra,00000000230520DC
	c.addi4spn	a0,00000008
	jal	ra,000000002303286A
	c.addi4spn	a0,00000008
	jal	ra,00000000230520DC
	addi	a0,s0,+000007FC
	jal	ra,00000000230520DC
	lui	a0,00023072
	addi	a0,a0,+000004E0
	jal	ra,00000000230520DC
	lui	a0,00023072
	addi	a0,a0,+000004F0
	jal	ra,00000000230520DC
	addi	a0,s0,+000007FC
	jal	ra,00000000230520DC
	lui	a0,00023072
	addi	a0,a0,+0000051C
	jal	ra,00000000230520DC
	lui	a0,00023072
	addi	a0,a0,+0000052C
	jal	ra,00000000230520DC
	addi	a0,s0,+000007FC
	jal	ra,00000000230520DC
	lui	a0,00023072
	addi	a0,a0,+00000544
	jal	ra,00000000230520DC
	lui	a0,00023072
	addi	a0,a0,+00000554
	jal	ra,00000000230520DC
	addi	a0,s0,+000007FC
	jal	ra,00000000230520DC
	lui	a0,00023072
	addi	a0,a0,+0000055C
	jal	ra,00000000230520DC
	lui	a0,00023072
	addi	a0,a0,+0000056C
	jal	ra,00000000230520DC
	addi	a0,s0,+000007FC
	jal	ra,00000000230520DC
	lui	a0,00023072
	addi	a0,a0,+00000578
	jal	ra,00000000230520DC
	lui	a0,00023072
	addi	a0,a0,+00000588
	jal	ra,00000000230520DC
	addi	a0,s0,+000007FC
	jal	ra,00000000230520DC
	addi	a0,s1,+000007D4
	jal	ra,00000000230520DC
	lui	a0,0004200D
	addi	a0,a0,-00000124
	jal	ra,000000002303230E
	lui	a4,0004204B
	c.lui	a3,00001000
	lui	a2,00042021
	lui	a1,00000021
	lui	a0,00023072
	addi	a4,a4,+000007A0
	addi	a3,a3,-000007A0
	addi	a2,a2,-0000029A
	addi	a1,a1,-00000566
	addi	a0,a0,+00000594
	jal	ra,0000000023052118
	lw	a1,s2,+00000000
	addi	a5,zero,+000003E8
	lui	a0,00023072
	srl	a1,a1,a5
	addi	a0,a0,+000005A8
	jal	ra,0000000023052118
	jal	ra,000000002302AD18
	jal	ra,0000000023033D60
	jal	ra,000000002303407C
	jal	ra,00000000230340C2
	jal	ra,00000000230336F6
	jal	ra,0000000023036FFC
	c.li	a0,00000000
	jal	ra,0000000023037120
	lui	a0,00023072
	addi	a0,a0,+000005C0
	jal	ra,00000000230520DC
	lui	a6,00042010
	lui	a5,0004200F
	lui	a1,00023072
	lui	a0,00023000
	addi	a6,a6,-00000780
	addi	a5,a5,+00000080
	c.li	a4,0000000F
	c.li	a3,00000000
	addi	a2,zero,+00000200
	addi	a1,a1,+000005EC
	addi	a0,a0,+00000462
	jal	ra,000000002302FF48
	lui	a0,00023072
	addi	a0,a0,+000005F4
	jal	ra,00000000230520DC
	lui	a6,0004200F
	lui	a5,0004200E
	lui	a1,00023072
	lui	a0,00023000
	addi	a6,a6,+00000020
	addi	a5,a5,+00000020
	c.li	a4,0000000F
	c.li	a3,00000000
	addi	a2,zero,+00000400
	addi	a1,a1,+0000061C
	addi	a0,a0,+00000762
	jal	ra,000000002302FF48
	lui	a0,00023072
	addi	a0,a0,+00000628
	jal	ra,00000000230520DC
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,000000002303BEA4
	lui	a0,00023072
	addi	a0,a0,+00000648
	jal	ra,00000000230520DC
	jal	ra,0000000023030264
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

;; ShadowUpdateStatusCallback: 2300126A
ShadowUpdateStatusCallback proc
	lui	a5,0004200E
	sb	zero,a5,+00000C98
	c.bnez	a2,0000000023001280

l23001274:
	lui	a0,00023073
	addi	a0,a0,-000001F4

l2300127C:
	jal	zero,0000000023052118

l23001280:
	c.li	a5,00000001
	bne	a2,a5,0000000023001290

l23001286:
	lui	a0,00023073
	addi	a0,a0,-000001E0
	c.j	000000002300127C

l23001290:
	c.li	a5,00000002
	bne	a2,a5,00000000230012A0

l23001296:
	lui	a0,00023073
	addi	a0,a0,-000001CC
	c.j	000000002300127C

l230012A0:
	c.jr	ra

;; windowActuate_Callback: 230012A2
windowActuate_Callback proc
	c.beqz	a2,00000000230012B6

l230012A4:
	c.lw	a2,4(a5)
	lui	a0,00023074
	addi	a0,a0,+0000029C
	lbu	a1,a5,+00000000
	jal	zero,0000000023052118

l230012B6:
	c.jr	ra

;; aws_main_entry: 230012B8
aws_main_entry proc
	addi	sp,sp,-000007F0
	sw	ra,sp,+000007EC
	sw	s0,sp,+000007E8
	sw	s1,sp,+000007E4
	sw	s2,sp,+000007E0
	sw	s3,sp,+000007DC
	sw	s4,sp,+000007D8
	sw	s5,sp,+000007D4
	fsw	fs0,7984(a0)
	fsw	fs1,7968(a0)
	fsw	fs2,7952(a0)
	fsw	fs3,7936(a0)
	lui	a1,00023088
	addi	sp,sp,-00000580
	c.li	a2,0000001C
	addi	a1,a1,-000005FC
	c.addi4spn	a0,00000050
	jal	ra,0000000023070C7C
	lui	a1,00023088
	c.li	a2,00000010
	addi	a1,a1,-0000060C
	c.addi4spn	a0,00000018
	jal	ra,0000000023070C7C
	c.lui	a3,00001000
	lui	a5,00023001
	c.addi4spn	a2,00000010
	c.lui	s0,FFFFF000
	addi	a5,a5,+000002A2
	addi	a4,a3,-000002D0
	c.add	a4,a2
	c.swsp	a5,0000001C
	addi	a5,s0,+000002D3
	c.add	a5,a4
	c.swsp	a5,00000094
	lui	a5,00023073
	addi	a5,a5,-00000198
	c.swsp	a5,00000014
	c.li	a5,00000008
	sb	a5,sp,+00000034
	c.li	a5,00000001
	c.swsp	a5,00000018
	lui	a5,00023073
	addi	a5,a5,-0000018C
	addi	a4,a3,-000002D0
	c.add	a4,a2
	c.swsp	a5,0000009C
	addi	a5,s0,+000002D4
	c.add	a5,a4
	c.swsp	a5,00000020
	lui	a4,00023089
	c.li	a5,00000006
	lui	a0,00023073
	sb	a5,sp,+00000048
	c.li	a1,00000003
	c.li	a5,00000004
	addi	a4,a4,-000001A0
	c.li	a3,00000001
	c.li	a2,00000000
	addi	a0,a0,-00000180
	c.swsp	zero,00000088
	sb	zero,sp,+00000013
	c.swsp	zero,000000A4
	c.swsp	a5,000000A0
	lui	s1,00023073
	jal	ra,0000000023052118
	c.li	a1,00000000
	addi	a0,s1,-0000015C
	jal	ra,000000002304C198
	bge	a0,zero,0000000023001492

l23001394:
	lui	a0,00023073
	addi	a1,s1,-0000015C
	addi	a0,a0,-00000148
	jal	ra,0000000023052118
	lui	a1,00023073
	lui	a0,00023073
	addi	a5,a1,-00000128
	addi	a0,a0,-000000F8
	addi	a1,a1,-00000128
	c.swsp	a5,00000028
	jal	ra,0000000023052118
	lui	a0,00023073
	addi	a5,zero,+000001BB
	addi	a1,zero,+000001BB
	addi	a0,a0,-000000EC
	sh	a5,sp,+00000054
	jal	ra,0000000023052118
	lui	a5,00023073
	addi	a5,a5,-000000DC
	c.swsp	a5,000000AC
	lui	a5,00023073
	addi	a5,a5,+00000404
	lui	s0,00023074
	c.swsp	a5,00000030
	lui	a0,00023074
	lui	a5,00023074
	addi	a5,a5,-00000550
	addi	a1,s0,-00000094
	addi	s1,s0,-00000094
	addi	a0,a0,-00000084
	c.swsp	a5,0000002C
	sb	zero,sp,+00000064
	c.swsp	zero,00000034
	c.swsp	s1,0000008C
	jal	ra,0000000023052118
	c.lwsp	t3,00000044
	jal	ra,000000002307132C
	sh	a0,sp,+00000020
	addi	a0,s0,-00000094
	jal	ra,000000002307132C
	c.mv	a1,a0
	lui	a0,00023074
	addi	a0,a0,-00000070
	jal	ra,0000000023052118
	lui	a0,00023074
	addi	a1,s0,-00000094
	addi	a0,a0,-00000058
	c.swsp	s1,0000000C
	jal	ra,0000000023052118

l23001446:
	lui	a0,00023074
	addi	a0,a0,+00000044
	jal	ra,0000000023052118
	c.lui	a4,00001000
	c.addi4spn	a3,00000010
	c.lui	s1,FFFFF000
	addi	a5,a4,-000002D0
	c.add	a5,a3
	addi	s0,s1,+000003F4
	c.add	s0,a5
	addi	a5,a4,-000002D0
	c.add	a5,a3
	addi	a1,s1,+00000310
	c.add	a1,a5
	c.mv	a0,s0
	jal	ra,000000002304D82A
	c.mv	a1,a0
	beq	a0,zero,0000000023001752

l2300147C:
	lui	a0,00023074
	addi	a0,a0,+00000054
	jal	ra,0000000023052118

l23001488:
	addi	a0,zero,+000003E8
	jal	ra,0000000023030630
	c.j	0000000023001488

l23001492:
	c.lui	a5,00001000
	c.addi4spn	a4,00000010
	addi	a5,a5,-000002D0
	c.add	a5,a4
	addi	a2,s0,+0000032C
	c.add	a2,a5
	c.li	a1,00000001
	c.mv	s3,a0
	jal	ra,000000002304C312
	c.lwsp	a3,000001B4
	c.li	s0,00000000
	c.li	a2,0000000A
	c.li	a4,0000000D

l230014B2:
	add	s1,a3,s0
	lbu	a5,s1,+00000000
	bne	a5,a2,0000000023001502

l230014BE:
	lui	a0,00023074
	c.mv	a1,s0
	addi	a0,a0,-00000040
	jal	ra,0000000023052118
	c.mv	a0,s0
	jal	ra,000000002303218A
	c.lui	a3,00001000
	addi	a3,a3,-000002D0
	c.addi4spn	a2,00000010
	c.lui	a4,FFFFF000
	c.add	a3,a2
	c.add	a4,a3
	c.swsp	a4,00000084
	sw	a0,a4,+00000310
	c.bnez	a0,000000002300150A

l230014E8:
	lui	a0,00023074
	addi	a1,zero,+000000CC
	addi	a0,a0,-00000030
	jal	ra,0000000023052118

l230014F8:
	addi	a0,zero,+000003E8
	jal	ra,0000000023030630
	c.j	00000000230014F8

l23001502:
	beq	a5,a4,00000000230014BE

l23001506:
	c.addi	s0,00000001
	c.j	00000000230014B2

l2300150A:
	c.mv	a2,s0
	sub	a1,s1,s0
	jal	ra,0000000023070C7C
	c.lwsp	a2,000000E4
	lui	a0,00023073
	addi	a0,a0,-000000F8
	lw	a5,a5,+00000310
	c.add	s0,a5
	c.lwsp	a2,000000E4
	sb	zero,s0,+00000000
	lw	a1,a5,+00000310
	jal	ra,0000000023052118
	c.li	a3,0000000A
	c.li	a4,0000000D

l23001536:
	lbu	a5,s1,+00000000
	beq	a5,a3,000000002300164A

l2300153E:
	beq	a5,a4,000000002300164A

l23001542:
	c.li	s0,00000000
	c.li	a3,0000000A
	c.li	a4,0000000D

l23001548:
	add	s2,s1,s0
	lbu	a5,s2,+00000000
	bne	a5,a3,000000002300164E

l23001554:
	lui	a0,00023074
	c.mv	a1,s0
	addi	a0,a0,-00000020
	jal	ra,0000000023052118
	c.li	a5,00000005
	blt	a5,s0,0000000023001656

l23001568:
	c.lui	s5,00001000
	c.addi4spn	a4,00000010
	c.lui	s4,FFFFF000
	addi	a5,s5,-000002D0
	c.add	a5,a4
	addi	s1,s4,+000003F4
	c.add	s1,a5
	c.mv	a2,s0
	sub	a1,s2,s0
	c.mv	a0,s1
	jal	ra,0000000023070C7C
	c.addi4spn	a4,00000010
	addi	a5,s5,-000002D0
	c.add	a5,a4
	c.add	a5,s4
	c.add	s0,a5
	c.mv	a0,s1
	c.swsp	a5,00000084
	sb	zero,s0,+000003F4
	jal	ra,0000000023070AF0
	c.lwsp	a2,000000E4
	slli	a1,a0,00000010
	c.srli	a1,00000010
	sh	a0,a5,+00000314
	lui	a0,00023073
	addi	a0,a0,-000000EC
	jal	ra,0000000023052118
	c.lwsp	a2,000000C4
	lui	a5,00023073
	addi	a5,a5,-000000DC
	sw	a5,a4,+0000031C
	lui	a5,00023073
	addi	a5,a5,+00000404
	sw	a5,a4,+00000320
	lui	a5,00023074
	addi	a5,a5,-00000550
	sw	a5,a4,+00000318
	sb	zero,a4,+00000324
	sw	zero,a4,+00000328
	c.li	a3,0000000A
	c.li	a4,0000000D

l230015E8:
	lbu	a5,s2,+00000000
	beq	a5,a3,000000002300166C

l230015F0:
	beq	a5,a4,000000002300166C

l230015F4:
	c.li	s0,00000000
	c.li	a3,0000000A
	c.li	a4,0000000D

l230015FA:
	add	s1,s2,s0
	lbu	a5,s1,+00000000
	bne	a5,a3,0000000023001670

l23001606:
	lui	a0,00023074
	c.mv	a1,s0
	addi	a0,a0,+00000000
	jal	ra,0000000023052118
	c.mv	a0,s0
	jal	ra,000000002303218A
	c.lui	a3,00001000
	addi	a3,a3,-000002D0
	c.addi4spn	a2,00000010
	c.lui	a4,FFFFF000
	c.add	a3,a2
	c.add	a4,a3
	c.swsp	a4,00000084
	sw	a0,a4,+000002DC
	c.bnez	a0,0000000023001678

l23001630:
	lui	a0,00023074
	addi	a1,zero,+000000FD
	addi	a0,a0,+00000014
	jal	ra,0000000023052118

l23001640:
	addi	a0,zero,+000003E8
	jal	ra,0000000023030630
	c.j	0000000023001640

l2300164A:
	c.addi	s1,00000001
	c.j	0000000023001536

l2300164E:
	beq	a5,a4,0000000023001554

l23001652:
	c.addi	s0,00000001
	c.j	0000000023001548

l23001656:
	lui	a0,00023074
	addi	a0,a0,-00000010
	jal	ra,0000000023052118

l23001662:
	addi	a0,zero,+000003E8
	jal	ra,0000000023030630
	c.j	0000000023001662

l2300166C:
	c.addi	s2,00000001
	c.j	00000000230015E8

l23001670:
	beq	a5,a4,0000000023001606

l23001674:
	c.addi	s0,00000001
	c.j	00000000230015FA

l23001678:
	c.mv	a2,s0
	sub	a1,s1,s0
	jal	ra,0000000023070C7C
	c.lwsp	a2,000000E4
	lui	a0,00023074
	addi	a0,a0,-00000084
	lw	a5,a5,+000002DC
	c.add	s0,a5
	c.lwsp	a2,000000E4
	sb	zero,s0,+00000000
	lw	a1,a5,+000002DC
	jal	ra,0000000023052118
	c.lwsp	a2,000000E4
	lw	a0,a5,+000002DC
	jal	ra,000000002307132C
	c.lwsp	a2,000000E4
	c.li	a3,0000000A
	c.li	a4,0000000D
	sh	a0,a5,+000002E0

l230016B4:
	lbu	a5,s1,+00000000
	beq	a5,a3,0000000023001716

l230016BC:
	beq	a5,a4,0000000023001716

l230016C0:
	c.li	s0,00000000
	c.li	a3,0000000A
	c.li	a4,0000000D

l230016C6:
	add	s2,s1,s0
	lbu	a5,s2,+00000000
	bne	a5,a3,000000002300171A

l230016D2:
	lui	a0,00023074
	c.mv	a1,s0
	addi	a0,a0,-00000070
	jal	ra,0000000023052118
	c.mv	a0,s0
	jal	ra,000000002303218A
	c.lui	a3,00001000
	addi	a3,a3,-000002D0
	c.addi4spn	a2,00000010
	c.lui	a4,FFFFF000
	c.add	a3,a2
	c.add	a4,a3
	c.swsp	a4,00000084
	sw	a0,a4,+000002D8
	c.bnez	a0,0000000023001722

l230016FC:
	lui	a0,00023074
	addi	a1,zero,+00000114
	addi	a0,a0,+0000002C
	jal	ra,0000000023052118

l2300170C:
	addi	a0,zero,+000003E8
	jal	ra,0000000023030630
	c.j	000000002300170C

l23001716:
	c.addi	s1,00000001
	c.j	00000000230016B4

l2300171A:
	beq	a5,a4,00000000230016D2

l2300171E:
	c.addi	s0,00000001
	c.j	00000000230016C6

l23001722:
	c.mv	a2,s0
	sub	a1,s2,s0
	jal	ra,0000000023070C7C
	c.lwsp	a2,000000E4
	lui	a0,00023074
	addi	a0,a0,-00000058
	lw	a5,a5,+000002D8
	c.add	s0,a5
	c.lwsp	a2,000000E4
	sb	zero,s0,+00000000
	lw	a1,a5,+000002D8
	jal	ra,0000000023052118
	c.mv	a0,s3
	jal	ra,000000002304C25E
	c.j	0000000023001446

l23001752:
	lui	a0,00023074
	addi	a0,a0,+0000008C
	jal	ra,0000000023052118
	c.lui	a5,00001000
	c.addi4spn	a4,00000010
	addi	a5,a5,-000002D0
	c.add	a5,a4
	addi	a1,s1,+000002D8
	c.add	a1,a5
	c.mv	a0,s0
	jal	ra,000000002304D8A6
	c.mv	a1,a0
	c.beqz	a0,000000002300178E

l23001778:
	lui	a0,00023074
	addi	a0,a0,+000000A0
	jal	ra,0000000023052118

l23001784:
	addi	a0,zero,+000003E8
	jal	ra,0000000023030630
	c.j	0000000023001784

l2300178E:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002304DA3C
	c.mv	a1,a0
	c.beqz	a0,00000000230017B0

l2300179A:
	lui	a0,00023074
	addi	a0,a0,+000000D8
	jal	ra,0000000023052118

l230017A6:
	addi	a0,zero,+000003E8
	jal	ra,0000000023030630
	c.j	00000000230017A6

l230017B0:
	c.lui	a5,00001000
	c.addi4spn	a4,00000010
	addi	a5,a5,-000002D0
	c.add	a5,a4
	addi	a1,s1,+000002E8
	c.mv	a0,s0
	c.add	a1,a5
	jal	ra,000000002304D98A
	c.mv	s0,a0
	c.beqz	a0,00000000230017E0

l230017CA:
	lui	a0,00023074
	addi	a0,a0,+00000114
	jal	ra,0000000023052118

l230017D6:
	addi	a0,zero,+000003E8
	jal	ra,0000000023030630
	c.j	00000000230017D6

l230017E0:
	c.lui	a5,00001000
	addi	a5,a5,-000002D0
	c.addi4spn	a4,00000010
	c.add	a5,a4
	c.add	a5,s1
	c.swsp	a5,00000084
	lui	a5,00023073
	flw	fs0,3656(a5)
	c.lwsp	a2,000000E4
	lui	s3,0004200E
	fsw	fs0,2896(a5)
	lui	a5,00023073
	flw	fs1,3660(a5)
	lui	a5,00023073
	flw	fs2,3668(a5)
	lui	a5,00023073
	flw	fs3,3664(a5)

l23001818:
	addi	a5,s0,-00000003
	andi	a5,a5,+000000FF
	c.li	a4,00000001
	bgeu	a4,a5,00000000230018A4

l23001826:
	c.beqz	s0,00000000230018A4

l23001828:
	lui	a0,00023074
	c.mv	a1,s0
	addi	a0,a0,+00000250
	jal	ra,0000000023052118
	lui	a0,00023074
	addi	a0,a0,+00000274
	jal	ra,0000000023052118
	c.lui	a5,00001000
	c.addi4spn	a4,00000010
	c.lui	a0,FFFFF000
	addi	a5,a5,-000002D0
	c.add	a5,a4
	addi	a0,a0,+000003F4
	c.add	a0,a5
	jal	ra,000000002304D9D4
	c.mv	a1,a0
	c.beqz	a0,0000000023001868

l2300185C:
	lui	a0,00023074
	addi	a0,a0,+00000284
	jal	ra,0000000023052118

l23001868:
	c.li	a0,00000000
	jal	ra,0000000023030064
	addi	sp,sp,+00000580
	lw	ra,sp,+000007EC
	lw	s0,sp,+000007E8
	lw	s1,sp,+000007E4
	lw	s2,sp,+000007E0
	lw	s3,sp,+000007DC
	lw	s4,sp,+000007D8
	lw	s5,sp,+000007D4
	flw	fs0,1996(sp)
	flw	fs1,1992(sp)
	flw	fs2,1988(sp)
	flw	fs3,1984(sp)
	addi	sp,sp,+000007F0
	c.jr	ra

l230018A4:
	c.lui	a5,00001000
	c.addi4spn	a4,00000010
	c.lui	s0,FFFFF000
	addi	a5,a5,-000002D0
	c.add	a5,a4
	addi	a0,s0,+000003F4
	c.add	a0,a5
	addi	a1,zero,+000000C8
	jal	ra,000000002304D9B6
	c.li	a5,00000004
	beq	a0,a5,00000000230018CE

l230018C4:
	lbu	a5,s3,-00000368
	addi	s4,s3,-00000368
	c.beqz	a5,00000000230018EC

l230018CE:
	c.lui	a5,00001000
	c.addi4spn	a4,00000010
	c.lui	a0,FFFFF000
	addi	a5,a5,-000002D0
	c.add	a5,a4
	addi	a0,a0,+000003F4
	addi	a1,zero,+000003E8
	c.add	a0,a5
	jal	ra,000000002304D9B6
	c.mv	s0,a0
	c.j	0000000023001818

l230018EC:
	lui	a0,00023074
	addi	a0,a0,+00000134
	jal	ra,0000000023052118
	c.lui	a5,00001000
	addi	a5,a5,-000002D0
	c.addi4spn	a4,00000010
	c.add	a5,a4
	c.add	a5,s0
	c.swsp	a5,00000084
	lbu	a5,a5,+000002D3
	bne	a5,zero,0000000023001A1C

l2300190E:
	lui	a1,00023073
	addi	a1,a1,-000001A0

l23001916:
	lui	a0,00023074
	addi	a0,a0,+00000190
	jal	ra,0000000023052118
	c.lui	a4,00001000
	addi	a4,a4,-000002D0
	c.addi4spn	a3,00000010
	c.add	a4,a3
	c.lui	a5,FFFFF000
	c.add	a5,a4
	flw	fa4,724(a5)
	c.swsp	a5,00000084
	lui	a5,0004200E
	fle.s	a4,fs1,fa4
	addi	a5,a5,-0000036C
	beq	a4,zero,0000000023001A26

l23001946:
	fsw	fs3,0(a5)

l2300194A:
	c.flw	fa5,0(a5)
	c.lui	a5,00001000
	c.addi4spn	a4,00000010
	fadd.s	fa5,fa5,fa4
	c.lui	s1,FFFFF000
	addi	a5,a5,-000002D0
	c.add	a5,a4
	addi	s2,s1,+0000032C
	c.add	s2,a5
	addi	a1,zero,+000000C8
	c.mv	a0,s2
	c.sdsp	a5,00000110
	jal	ra,000000002304DC2C
	c.mv	s0,a0
	c.bnez	a0,00000000230019E8

l23001972:
	c.lui	a2,00001000
	c.addi4spn	a1,00000010
	addi	a5,a2,-000002D0
	c.add	a5,a1
	addi	a4,s1,+000002E8
	c.add	a4,a5
	addi	a5,a2,-000002D0
	c.add	a5,a1
	addi	a3,s1,+000002FC
	c.add	a3,a5
	c.li	a2,00000002
	addi	a1,zero,+000000C8
	c.mv	a0,s2
	jal	ra,000000002304DC64
	c.mv	s0,a0
	c.bnez	a0,00000000230019E8

l2300199E:
	addi	a1,zero,+000000C8
	c.mv	a0,s2
	jal	ra,000000002304DD9A
	c.mv	s0,a0
	c.bnez	a0,00000000230019E8

l230019AC:
	lui	a0,00023074
	c.mv	a1,s2
	addi	a0,a0,+000001B0
	jal	ra,0000000023052118
	c.lui	s0,00001000
	addi	a0,s1,+000003F4
	c.lwsp	s8,00000064
	addi	s0,s0,-000002D0
	c.addi4spn	s1,00000010
	c.add	s0,s1
	lui	a3,00023001
	c.li	a5,00000004
	c.add	a0,s0
	c.li	a6,00000001
	c.li	a4,00000000
	addi	a3,a3,+0000026A
	c.mv	a2,s2
	jal	ra,000000002304D9D8
	c.li	a5,00000001
	c.mv	s0,a0
	sb	a5,s4,+00000000

l230019E8:
	lui	a0,00023074
	addi	a0,a0,+000001C4
	jal	ra,0000000023052118
	c.li	a0,00000000
	jal	ra,0000000023030314
	c.swsp	a0,00000084
	c.li	a0,00000000
	jal	ra,0000000023030CDE
	c.lwsp	a2,00000064
	c.mv	a2,a0
	lui	a0,00023074
	addi	a0,a0,+00000220
	jal	ra,0000000023052118
	addi	a0,zero,+000003E8
	jal	ra,0000000023030630
	c.j	0000000023001818

l23001A1C:
	lui	a1,00023073
	addi	a1,a1,-000001A8
	c.j	0000000023001916

l23001A26:
	fle.s	a4,fa4,fs0
	beq	a4,zero,000000002300194A

l23001A2E:
	fsw	fs2,0(a5)
	c.j	000000002300194A

;; cmd_coex_dump: 23001A34
cmd_coex_dump proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023013282
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002301328A

;; codex_debug_cli_init: 23001A44
;;   Called from:
;;     23000832 (in aos_loop_proc)
codex_debug_cli_init proc
	c.li	a0,00000000
	c.jr	ra

;; mm_rx_filter_set: 23001A48
;;   Called from:
;;     23001D1A (in mm_env_init)
;;     23002462 (in mm_hw_info_set)
;;     23002480 (in mm_hw_ap_info_set)
;;     230024B6 (in mm_hw_ap_info_reset)
mm_rx_filter_set proc
	lui	a5,00042019
	addi	a5,a5,-000001A8
	c.lw	a5,0(a4)
	c.lw	a5,4(a5)
	c.or	a5,a4
	lui	a4,00044B00
	c.sw	a4,96(a5)
	c.jr	ra

;; element_notify_status_enabled: 23001A5E
element_notify_status_enabled proc
	c.li	a0,00000000
	c.jr	ra

;; blmac_ap_setf: 23001A62
;;   Called from:
;;     230023F6 (in mm_hw_info_set)
;;     2300246C (in mm_hw_ap_info_set)
;;     230024A2 (in mm_hw_ap_info_reset)
blmac_ap_setf proc
	lui	a4,00044B00
	c.lw	a4,76(a5)
	c.slli	a0,01
	c.andi	a5,FFFFFFFD
	c.or	a0,a5
	c.sw	a4,76(a0)
	c.jr	ra

;; ascii_to_hex: 23001A72
;;   Called from:
;;     2300273E (in mm_sta_add)
;;     2300274A (in mm_sta_add)
ascii_to_hex proc
	c.mv	a5,a0
	addi	a0,a0,-00000030
	andi	a0,a0,+000000FF
	c.li	a4,00000009
	bgeu	a4,a0,0000000023001A98

l23001A82:
	addi	a4,a5,-00000061
	andi	a4,a4,+000000FF
	c.li	a3,00000005
	bltu	a3,a4,0000000023001A9A

l23001A90:
	addi	a5,a5,-00000057

l23001A94:
	andi	a0,a5,+000000FF

l23001A98:
	c.jr	ra

l23001A9A:
	addi	a4,a5,-00000041
	andi	a4,a4,+000000FF
	c.li	a0,00000000
	bltu	a3,a4,0000000023001A98

l23001AA8:
	addi	a5,a5,-00000037
	c.j	0000000023001A94

;; element_notify_time_last_received_set: 23001AAE
element_notify_time_last_received_set proc
	c.li	a0,00000000
	c.jr	ra

;; blmac_encr_cntrl_pack.constprop.8: 23001AB2
;;   Called from:
;;     23001EB0 (in mm_sec_machwaddr_wr)
;;     2300207E (in mm_sec_keydump)
;;     2300222C (in mm_sec_machwkey_wr)
;;     23002338 (in mm_sec_machwkey_del)
;;     230023BA (in mm_sec_machwaddr_del)
blmac_encr_cntrl_pack.constprop.8 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s6,00000008
	slli	s6,a4,00000004
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s7,00000084
	c.mv	s1,a5
	c.swsp	ra,00000094
	andi	a5,s6,-000000F1
	c.mv	s0,a0
	c.mv	s2,a6
	c.mv	s7,a7
	slli	s3,a1,0000001E
	slli	s4,a2,00000010
	slli	s5,a3,00000008
	c.beqz	a5,0000000023001AFE

l23001AE4:
	c.lui	a2,00002000
	lui	a1,00023074
	lui	a0,00023074
	addi	a2,a2,-0000078D
	addi	a1,a1,+000002DC
	addi	a0,a0,+000002E4
	jal	ra,000000002301327E

l23001AFE:
	c.slli	s1,02
	andi	a5,s1,-0000000D
	c.beqz	a5,0000000023001B20

l23001B06:
	c.lui	a2,00002000
	lui	a1,00023074
	lui	a0,00023074
	addi	a2,a2,-0000078C
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000320
	jal	ra,000000002301327E

l23001B20:
	c.slli	s0,1F
	slli	a1,s2,00000001
	or	s0,s0,s7
	c.or	s0,a1
	or	a1,s0,s1
	or	a1,a1,s6
	or	a1,a1,s5
	or	a1,a1,s4
	or	a1,a1,s3
	lui	a5,00044B00
	sw	a1,a5,+000000C4
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

;; element_notify_keepalive_received: 23001B5E
element_notify_keepalive_received proc
	c.li	a0,00000000
	c.jr	ra

;; hal_machw_rx_duration: 23001B62
;;   Called from:
;;     23002BA6 (in mm_check_beacon)
;;     23002BB0 (in mm_check_beacon)
hal_machw_rx_duration proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.lw	a0,40(a4)
	lui	a5,00023078
	addi	a5,a5,+00000014
	c.srli	a4,0000000C
	c.andi	a4,0000000F
	c.add	a5,a4
	lbu	s1,a5,+00000000
	c.mv	s0,a0
	c.mv	s2,a1
	andi	a5,s1,-00000080
	c.beqz	a5,0000000023001BA4

l23001B8A:
	c.lui	a2,00002000
	lui	a1,00023074
	lui	a0,00023074
	addi	a2,a2,-00000567
	addi	a1,a1,+000002DC
	addi	a0,a0,+0000035C
	jal	ra,000000002301327E

l23001BA4:
	lui	a5,00044B08
	sw	s1,a5,+00000164
	c.lw	s0,44(a1)
	lui	a4,00080000
	c.srli	a1,0000000F
	c.andi	a1,00000001
	c.slli	a1,18
	or	a1,a1,s2
	sw	a1,a5,+00000160
	sw	a4,a5,+00000168
	lui	a4,00044B08

l23001BC8:
	lw	a3,a4,+00000168
	addi	a5,a4,+00000168
	slli	a2,a3,00000001
	bge	a2,zero,0000000023001BC8

l23001BD8:
	c.lw	a5,0(a4)
	slli	a3,a4,00000001
	blt	a3,zero,0000000023001C0A

l23001BE2:
	lui	a1,00023074
	lui	a0,00023074
	addi	a0,a0,+0000039C
	addi	a2,zero,+00000105
	addi	a1,a1,+000002DC
	jal	ra,000000002301323E
	addi	a0,zero,+000001F4

l23001BFE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23001C0A:
	c.lw	a5,0(a0)
	c.slli	a0,10
	c.srli	a0,00000010
	c.j	0000000023001BFE

;; mm_env_max_ampdu_duration_set: 23001C12
;;   Called from:
;;     23001D24 (in mm_env_init)
;;     2301BC4E (in mm_hw_config_handler)
;;     2301BDA6 (in mm_hw_config_handler)
mm_env_max_ampdu_duration_set proc
	lui	a3,00044B00
	lw	a4,a3,+00000200
	addi	a5,zero,+00000096
	c.srli	a4,0000000C
	c.slli	a4,10
	c.srli	a4,00000010
	c.beqz	a4,0000000023001C3E

l23001C26:
	lw	a4,a3,+00000200
	c.srli	a4,0000000C
	c.slli	a4,10
	c.srli	a4,00000010
	bltu	a5,a4,0000000023001C3E

l23001C34:
	lw	a5,a3,+00000200
	c.srli	a5,0000000C
	c.slli	a5,10
	c.srli	a5,00000010

l23001C3E:
	lui	a4,00042019
	addi	a3,a4,-000001A8
	sh	a5,a3,+00000008
	lui	a2,00044B00
	lw	a3,a2,+00000204
	addi	a4,a4,-000001A8
	addi	a5,zero,+00000096
	c.srli	a3,0000000C
	c.slli	a3,10
	c.srli	a3,00000010
	c.beqz	a3,0000000023001C7A

l23001C62:
	lw	a3,a2,+00000204
	c.srli	a3,0000000C
	c.slli	a3,10
	c.srli	a3,00000010
	bltu	a5,a3,0000000023001C7A

l23001C70:
	lw	a5,a2,+00000204
	c.srli	a5,0000000C
	c.slli	a5,10
	c.srli	a5,00000010

l23001C7A:
	sh	a5,a4,+0000000A
	lui	a2,00044B00
	lw	a3,a2,+00000208
	addi	a5,zero,+00000096
	c.srli	a3,0000000C
	c.slli	a3,10
	c.srli	a3,00000010
	c.beqz	a3,0000000023001CAA

l23001C92:
	lw	a3,a2,+00000208
	c.srli	a3,0000000C
	c.slli	a3,10
	c.srli	a3,00000010
	bltu	a5,a3,0000000023001CAA

l23001CA0:
	lw	a5,a2,+00000208
	c.srli	a5,0000000C
	c.slli	a5,10
	c.srli	a5,00000010

l23001CAA:
	sh	a5,a4,+0000000C
	lui	a2,00044B00
	lw	a3,a2,+0000020C
	addi	a5,zero,+00000096
	c.srli	a3,0000000C
	c.slli	a3,10
	c.srli	a3,00000010
	c.beqz	a3,0000000023001CDA

l23001CC2:
	lw	a3,a2,+0000020C
	c.srli	a3,0000000C
	c.slli	a3,10
	c.srli	a3,00000010
	bltu	a5,a3,0000000023001CDA

l23001CD0:
	lw	a5,a2,+0000020C
	c.srli	a5,0000000C
	c.slli	a5,10
	c.srli	a5,00000010

l23001CDA:
	sh	a5,a4,+0000000E
	sh	a5,a4,+00000010
	c.jr	ra

;; mm_env_init: 23001CE4
;;   Called from:
;;     23001D2E (in mm_init)
mm_env_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042019
	addi	a2,zero,+0000002C
	c.li	a1,00000000
	addi	a0,s0,-000001A8
	c.swsp	ra,00000084
	jal	ra,0000000023070EB8
	addi	a5,s0,-000001A8
	addi	a4,zero,+00000101
	sh	a4,a5,+00000022
	lui	a4,00080000
	xori	a4,a4,-00000022
	sh	zero,a5,+00000012
	sw	zero,a5,+00000004
	c.sw	a5,0(a4)
	jal	ra,0000000023001A48
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.j	0000000023001C12

;; mm_init: 23001D26
;;   Called from:
;;     2301B726 (in mm_reset_req_handler)
;;     2301BEE2 (in bl_init)
mm_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002301A88C
	c.jal	0000000023001CE4
	jal	ra,0000000023006D86
	jal	ra,0000000023004E9E
	jal	ra,000000002300540A
	jal	ra,0000000023003AF2
	jal	ra,000000002300570C
	jal	ra,00000000230041D6
	jal	ra,000000002300371A
	jal	ra,0000000023004B7E
	jal	ra,0000000023019C76
	jal	ra,000000002301A678
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300307A

;; mm_active: 23001D60
;;   Called from:
;;     23001D86 (in mm_reset)
;;     2300250E (in mm_back_to_host_idle)
;;     230199A0 (in chan_pre_switch_channel)
;;     23019A76 (in chan_goto_idle_cb)
;;     2301B324 (in mm_monitor_enable_req_handler)
;;     2301B708 (in mm_set_idle_req_handler)
;;     2301B80A (in mm_start_req_handler)
mm_active proc
	lui	a5,00044B00
	addi	a4,zero,+00000030
	c.sw	a5,56(a4)
	c.li	a1,00000001
	c.li	a0,00000000
	jal	zero,000000002300E902

;; mm_reset: 23001D72
;;   Called from:
;;     2301BF38 (in bl_reset_evt)
mm_reset proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,000000002300EA02
	c.li	a5,00000001
	bne	a0,a5,0000000023001D88

l23001D82:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.j	0000000023001D60

l23001D88:
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,000000002300E902

;; mm_tbtt_evt: 23001D94
mm_tbtt_evt proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004201C
	c.swsp	s0,0000000C
	lw	s0,a5,-000003A8
	lui	a5,00000600
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.and	s0,a5
	bne	s0,a5,0000000023001DCA

l23001DB2:
	lui	a1,00023074
	lui	a0,00023074
	addi	a2,zero,+00000321
	addi	a1,a1,+000002DC
	addi	a0,a0,+000006AC
	jal	ra,000000002301327E

l23001DCA:
	c.mv	a0,s0
	jal	ra,000000002300E4B4
	lui	a5,0004201B
	lw	s0,a5,-00000038
	csrrci	zero,mstatus,00000008
	c.li	a0,00000004
	jal	ra,0000000023005794
	lui	a1,00040000
	c.li	a0,00000004
	jal	ra,000000002300585C
	csrrsi	zero,mstatus,00000008
	c.li	s1,00000002
	lui	s2,00044B00
	lui	s3,00044B08

l23001DFA:
	c.bnez	s0,0000000023001E0C

l23001DFC:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,000000002300322E

l23001E0C:
	lbu	a5,s0,+00000056
	bne	a5,s1,0000000023001E50

l23001E14:
	lbu	a5,s0,+00000341
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s0,+00000341
	c.bnez	a5,0000000023001E50

l23001E24:
	lbu	a5,s0,+00000340
	c.mv	a0,s0
	sb	a5,s0,+00000341
	jal	ra,000000002300728E
	c.lw	s0,64(a3)
	lw	a4,s2,+00000120
	lw	a5,s3,+00000040
	c.beqz	a3,0000000023001E50

l23001E3E:
	lhu	a1,s0,+0000033E
	c.slli	a5,05
	c.add	a5,a4
	c.slli	a1,0A
	c.add	a1,a5
	c.mv	a0,s0
	jal	ra,000000002301A162

l23001E50:
	c.lw	s0,0(s0)
	c.j	0000000023001DFA

;; mm_sec_machwaddr_wr: 23001E54
;;   Called from:
;;     2300257A (in mm_sta_add)
mm_sec_machwaddr_wr proc
	c.addi	sp,FFFFFFF0
	addi	a4,zero,+000001B0
	c.swsp	s0,00000004
	addi	s0,a0,+00000008
	add	a0,a0,a4
	lui	a5,00042019
	addi	a5,a5,-000000E0
	c.swsp	ra,00000084
	andi	s0,s0,+000000FF
	c.li	a7,00000000
	c.li	a6,00000001
	c.li	a3,00000000
	c.mv	a2,s0
	c.add	a0,a5
	lhu	a4,a0,+00000020
	lhu	a5,a0,+0000001E
	c.slli	a4,10
	c.or	a4,a5
	lui	a5,00044B00
	sw	a4,a5,+000000BC
	lhu	a4,a0,+00000022
	c.li	a0,00000000
	sw	a4,a5,+000000C0
	sw	zero,a5,+000000AC
	sw	zero,a5,+000000B0
	sw	zero,a5,+000000B4
	c.mv	a4,a1
	sw	zero,a5,+000000B8
	c.li	a1,00000001
	c.li	a5,00000000
	jal	ra,0000000023001AB2
	lui	a4,00044B00

l23001EB8:
	lw	a5,a4,+000000C4
	slli	a3,a5,00000001
	blt	a3,zero,0000000023001EB8

l23001EC4:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; mm_sec_keydump: 23001ECE
;;   Called from:
;;     2300043E (in cmd_wifi)
mm_sec_keydump proc
	c.addi16sp	FFFFFFA0
	c.swsp	ra,000000AC
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	s0,0000002C
	lui	s1,00044B00
	lw	s0,s1,+000000D8
	lui	a0,00023074
	addi	a0,a0,+000003FC
	jal	ra,00000000230520DC
	srli	a3,s0,00000010
	srli	a2,s0,00000008
	lui	a0,00023074
	srli	a4,s0,00000018
	andi	a3,a3,+000000FF
	andi	a2,a2,+000000FF
	andi	a1,s0,+000000FF
	addi	a0,a0,+00000444
	jal	ra,0000000023052118
	lui	a0,00023074
	addi	a0,a0,+00000478
	jal	ra,00000000230520DC
	lw	s1,s1,+000000D8
	lui	a0,00023074
	addi	a0,a0,+000004BC
	c.srli	s1,00000008
	lui	s2,00023074
	lui	s3,00023074
	andi	s1,s1,+000000FF
	jal	ra,00000000230520DC
	c.li	s8,00000000
	lui	s4,00023074
	addi	s2,s2,+000003EC
	addi	s3,s3,+000003F4
	lui	s5,00023074
	lui	s6,00023074
	lui	s7,00023074

l23001F60:
	blt	s8,s1,000000002300206A

l23001F64:
	lui	a0,00023074
	addi	a0,a0,+000005A0
	jal	ra,00000000230520DC
	lui	s0,00044B00
	c.lw	s0,16(a1)
	c.lw	s0,20(a5)
	lui	a0,00023074
	srli	a3,a1,00000010
	srli	a6,a5,00000008
	srli	a2,a1,00000008
	srli	a4,a1,00000018
	andi	a6,a6,+000000FF
	andi	a5,a5,+000000FF
	andi	a3,a3,+000000FF
	andi	a2,a2,+000000FF
	andi	a1,a1,+000000FF
	addi	a0,a0,+000005E4
	jal	ra,0000000023052118
	c.lw	s0,24(a1)
	c.lw	s0,28(a5)
	lui	s2,00023074
	srli	a3,a1,00000010
	srli	a6,a5,00000008
	srli	a2,a1,00000008
	srli	a4,a1,00000018
	andi	a6,a6,+000000FF
	andi	a5,a5,+000000FF
	andi	a3,a3,+000000FF
	andi	a2,a2,+000000FF
	andi	a1,a1,+000000FF
	addi	a0,s2,+0000060C
	jal	ra,0000000023052118
	lui	s1,00023072
	addi	a0,s1,+000007FC
	jal	ra,00000000230520DC
	c.lw	s0,32(a1)
	c.lw	s0,36(a5)
	lui	a0,00023074
	srli	a3,a1,00000010
	srli	a6,a5,00000008
	srli	a2,a1,00000008
	srli	a4,a1,00000018
	andi	a6,a6,+000000FF
	andi	a5,a5,+000000FF
	andi	a3,a3,+000000FF
	andi	a2,a2,+000000FF
	andi	a1,a1,+000000FF
	addi	a0,a0,+00000630
	jal	ra,0000000023052118
	c.lw	s0,40(a1)
	c.lw	s0,44(a5)
	addi	a0,s2,+0000060C
	srli	a3,a1,00000010
	srli	a6,a5,00000008
	srli	a2,a1,00000008
	srli	a4,a1,00000018
	andi	a6,a6,+000000FF
	andi	a5,a5,+000000FF
	andi	a3,a3,+000000FF
	andi	a2,a2,+000000FF
	andi	a1,a1,+000000FF
	jal	ra,0000000023052118
	c.lwsp	s9,00000004
	c.lwsp	t4,00000020
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.lwsp	t0,000000A8
	c.lwsp	ra,000000C8
	c.lwsp	t3,000001F8
	c.lwsp	s8,0000011C
	addi	a0,s1,+000007FC
	c.lwsp	s5,00000024
	c.addi16sp	00000060
	jal	zero,00000000230520DC

l2300206A:
	slli	a2,s8,00000010
	c.li	a5,00000000
	c.li	a7,00000000
	c.li	a6,00000000
	c.li	a4,00000000
	c.li	a3,00000000
	c.srli	a2,00000010
	c.li	a1,00000000
	c.li	a0,00000001
	jal	ra,0000000023001AB2
	lui	a5,00044B00

l23002086:
	lw	a4,a5,+000000C4
	addi	s0,a5,+000000C4
	blt	a4,zero,0000000023002086

l23002092:
	lw	a2,a5,+000000BC
	lw	a6,a5,+000000C0
	c.mv	a1,s8
	srli	a4,a2,00000010
	srli	a7,a6,00000008
	srli	a3,a2,00000008
	srli	a5,a2,00000018
	andi	a7,a7,+000000FF
	andi	a6,a6,+000000FF
	andi	a4,a4,+000000FF
	andi	a3,a3,+000000FF
	andi	a2,a2,+000000FF
	addi	a0,s4,+00000510
	jal	ra,0000000023052118
	c.lw	s0,0(a5)
	c.mv	a1,s2
	c.andi	a5,00000001
	c.bnez	a5,00000000230020D2

l230020D0:
	c.mv	a1,s3

l230020D2:
	addi	a0,s5,+00000538
	jal	ra,0000000023052118
	lui	s0,00044B00
	lw	a1,s0,+000000C4
	addi	a0,s6,+0000053C
	c.addi	s8,00000001
	c.srli	a1,00000004
	c.andi	a1,0000000F
	jal	ra,0000000023052118
	lw	a1,s0,+000000C4
	addi	a0,s7,+00000548
	c.srli	a1,00000001
	c.andi	a1,00000001
	jal	ra,0000000023052118
	lw	a1,s0,+000000AC
	lw	a5,s0,+000000B0
	lw	a4,s0,+000000B4
	lw	a0,s0,+000000B8
	srli	a7,a5,00000010
	srli	a6,a5,00000008
	srli	t1,a0,00000018
	c.swsp	t1,00000010
	srli	t1,a0,00000010
	andi	t1,t1,+000000FF
	c.swsp	t1,0000008C
	srli	t1,a0,00000008
	andi	a0,a0,+000000FF
	c.swsp	a0,00000088
	srli	a0,a4,00000018
	c.swsp	a0,00000008
	srli	a0,a4,00000010
	andi	a0,a0,+000000FF
	c.swsp	a0,00000084
	srli	a0,a4,00000008
	andi	a0,a0,+000000FF
	andi	a4,a4,+000000FF
	andi	t1,t1,+000000FF
	srli	a3,a1,00000010
	srli	a2,a1,00000008
	c.swsp	a0,00000004
	c.swsp	a4,00000080
	lui	a0,00023074
	srli	a4,a5,00000018
	c.swsp	t1,0000000C
	c.swsp	a4,00000000
	andi	a7,a7,+000000FF
	srli	a4,a1,00000018
	andi	a6,a6,+000000FF
	andi	a5,a5,+000000FF
	andi	a3,a3,+000000FF
	andi	a2,a2,+000000FF
	andi	a1,a1,+000000FF
	addi	a0,a0,+00000554
	jal	ra,0000000023052118
	lui	a0,00023072
	addi	a0,a0,+000007FC
	jal	ra,00000000230520DC
	c.j	0000000023001F60

;; mm_sec_machwkey_wr: 2300219C
;;   Called from:
;;     230026EC (in mm_sta_add)
;;     2300F9DC (in add_key_to_mac)
;;     2300FC6C (in add_mfp_key_to_mac)
;;     2301B5E4 (in mm_key_add_req_handler)
mm_sec_machwkey_wr proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lbu	s2,a0,+00000001
	addi	a5,zero,+000000FF
	c.mv	s1,a0
	lbu	s3,a0,+00000029
	bne	s2,a5,0000000023002250

l230021BA:
	lbu	a5,a0,+00000000
	slli	s0,s3,00000002
	c.li	a4,FFFFFFFF
	c.add	s0,a5
	lui	a5,00044B00
	andi	s0,s0,+000000FF
	sw	a4,a5,+000000BC
	sw	a4,a5,+000000C0
	c.mv	a1,s0
	jal	ra,00000000230070D6

l230021DC:
	lbu	a3,s1,+00000028
	c.li	a5,00000003
	bltu	a5,a3,00000000230022AE

l230021E6:
	lui	a4,0002308E
	lui	a5,0002308E
	addi	a4,a4,-00000290
	addi	a5,a5,-0000028C
	c.add	a4,a3
	c.add	a5,a3
	lbu	a7,a4,+00000000
	lbu	a3,a5,+00000000

l23002202:
	c.lw	s1,8(a4)
	lui	a5,00044B00
	c.li	a6,00000000
	sw	a4,a5,+000000AC
	c.lw	s1,12(a4)
	c.mv	a2,s0
	c.li	a1,00000001
	sw	a4,a5,+000000B0
	c.lw	s1,16(a4)
	c.li	a0,00000000
	sw	a4,a5,+000000B4
	c.lw	s1,20(a4)
	sw	a4,a5,+000000B8
	lbu	a5,s1,+0000002A
	c.mv	a4,s3
	jal	ra,0000000023001AB2
	lui	a4,00044B00

l23002234:
	lw	a5,a4,+000000C4
	slli	a3,a5,00000001
	blt	a3,zero,0000000023002234

l23002240:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23002250:
	c.li	a5,0000000B
	bgeu	a5,s2,000000002300226E

l23002256:
	lui	a1,00023074
	lui	a0,00023074
	addi	a2,zero,+000003E4
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000658
	jal	ra,000000002301327E

l2300226E:
	addi	s0,s2,+00000008
	andi	s0,s0,+000000FF
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,0000000023005140
	addi	a4,zero,+000001B0
	add	s2,s2,a4
	lui	a5,00042019
	addi	a5,a5,-000000E0
	c.add	a5,s2
	lhu	a4,a5,+00000020
	lhu	a3,a5,+0000001E
	c.slli	a4,10
	c.or	a4,a3
	lui	a3,00044B00
	sw	a4,a3,+000000BC
	lhu	a5,a5,+00000022
	sw	a5,a3,+000000C0
	c.j	00000000230021DC

l230022AE:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+00000429
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000768
	jal	ra,000000002301327E
	c.li	a3,00000000
	c.li	a7,00000001
	c.j	0000000023002202

;; mm_sec_machwkey_del: 230022CC
;;   Called from:
;;     23002806 (in mm_sta_del)
;;     2300280E (in mm_sta_del)
;;     23002816 (in mm_sta_del)
;;     23002884 (in mm_sta_del)
;;     2300D03A (in apm_sta_delete)
;;     2300FA58 (in keyMgmtKeyGroupTxDone.isra.1)
;;     23012B92 (in RemoveAPKeyInfo)
;;     2301B544 (in mm_key_del_req_handler)
mm_sec_machwkey_del proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,00000007
	c.mv	s0,a0
	bgeu	a5,a0,0000000023002354

l230022DA:
	addi	a5,a0,-00000008
	addi	a4,zero,+000001B0
	andi	a5,a5,+000000FF
	add	a5,a5,a4
	lui	a0,00042019
	addi	a0,a0,-000000E0
	c.add	a0,a5
	lhu	a5,a0,+00000020
	lhu	a4,a0,+0000001E
	c.slli	a5,10
	c.or	a5,a4
	lui	a4,00044B00
	sw	a5,a4,+000000BC
	lhu	a5,a0,+00000022
	sw	a5,a4,+000000C0
	jal	ra,0000000023005236

l23002314:
	lui	a5,00044B00
	sw	zero,a5,+000000AC
	sw	zero,a5,+000000B0
	sw	zero,a5,+000000B4
	sw	zero,a5,+000000B8
	c.li	a4,00000000
	c.li	a7,00000000
	c.li	a6,00000000
	c.li	a5,00000000
	c.li	a3,00000000
	c.mv	a2,s0
	c.li	a1,00000001
	c.li	a0,00000000
	jal	ra,0000000023001AB2
	lui	a4,00044B00

l23002340:
	lw	a5,a4,+000000C4
	slli	a3,a5,00000001
	blt	a3,zero,0000000023002340

l2300234C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23002354:
	lui	a5,00044B00
	c.li	a4,FFFFFFFF
	sw	a4,a5,+000000BC
	sw	a4,a5,+000000C0
	srai	a5,a0,00000002
	addi	a0,zero,+000005D8
	add	a5,a5,a0
	lui	a0,0004201A
	addi	a0,a0,+00000410
	andi	a1,s0,+00000003
	c.add	a0,a5
	jal	ra,00000000230071F4
	c.j	0000000023002314

;; mm_sec_machwaddr_del: 23002382
;;   Called from:
;;     23002850 (in mm_sta_del)
mm_sec_machwaddr_del proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lui	a5,00044B00
	c.li	a4,FFFFFFFF
	sw	a4,a5,+000000BC
	sw	a4,a5,+000000C0
	sw	zero,a5,+000000AC
	sw	zero,a5,+000000B0
	sw	zero,a5,+000000B4
	addi	a2,a0,+00000008
	sw	zero,a5,+000000B8
	c.li	a4,00000000
	c.li	a7,00000000
	c.li	a6,00000000
	c.li	a5,00000000
	c.li	a3,00000000
	andi	a2,a2,+000000FF
	c.li	a1,00000001
	c.li	a0,00000000
	jal	ra,0000000023001AB2
	lui	a4,00044B00

l230023C2:
	lw	a5,a4,+000000C4
	slli	a3,a5,00000001
	blt	a3,zero,00000000230023C2

l230023CE:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; mm_hw_idle_evt: 230023D4
mm_hw_idle_evt proc
	c.addi	sp,FFFFFFF0
	lui	a0,00000800
	c.swsp	ra,00000084
	jal	ra,000000002300E4B4
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,000000002300E902

;; mm_hw_info_set: 230023EC
;;   Called from:
;;     23006E6E (in vif_mgmt_register)
mm_hw_info_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023001A62
	lui	a5,00044B00
	c.lw	a5,76(a4)
	ori	a4,a4,+00000001
	c.sw	a5,76(a4)
	addi	a4,zero,+00000100
	c.sw	a5,28(a4)
	lui	a4,00044B08
	sw	zero,a4,+000000A4
	sw	zero,a4,+000000A8
	lbu	a3,s0,+00000001
	lbu	a4,s0,+00000000
	c.slli	a3,08
	c.or	a3,a4
	lbu	a4,s0,+00000002
	c.slli	a4,10
	c.or	a3,a4
	lbu	a4,s0,+00000003
	c.slli	a4,18
	c.or	a4,a3
	c.sw	a5,16(a4)
	lbu	a4,s0,+00000005
	lbu	a3,s0,+00000004
	c.slli	a4,08
	c.or	a4,a3
	c.sw	a5,20(a4)
	c.lw	a5,76(a4)
	andi	a4,a4,-00000701
	c.sw	a5,76(a4)
	c.lwsp	s0,00000004
	lui	a5,00035038
	c.lwsp	a2,00000020
	lui	a4,00042019
	addi	a5,a5,+0000058C
	sw	a5,a4,+00000E58
	c.addi	sp,00000010
	jal	zero,0000000023001A48

;; mm_hw_ap_info_set: 23002466
;;   Called from:
;;     23006F98 (in vif_mgmt_register)
mm_hw_ap_info_set proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,0000000023001A62
	lui	a5,0003507A
	lui	a4,00042019
	addi	a5,a5,+0000058C
	sw	a5,a4,+00000E58
	jal	ra,0000000023001A48
	lui	a5,00000040
	lui	a4,00044B08
	c.addi	a5,00000001
	c.sw	a4,112(a5)
	c.lw	a4,116(a3)
	c.or	a5,a3
	c.sw	a4,116(a5)
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; mm_hw_ap_info_reset: 2300249C
;;   Called from:
;;     230070D0 (in vif_mgmt_unregister)
mm_hw_ap_info_reset proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023001A62
	lui	a5,00035038
	lui	a4,00042019
	addi	a5,a5,+0000058C
	sw	a5,a4,+00000E58
	jal	ra,0000000023001A48
	lui	a4,00000040
	lui	a5,00044B08
	c.addi	a4,00000001
	c.sw	a5,112(a4)
	c.lw	a5,116(a4)
	lui	a3,000FFFC0
	c.addi	a3,FFFFFFFE
	c.and	a4,a3
	c.sw	a5,116(a4)
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; mm_back_to_host_idle: 230024D8
;;   Called from:
;;     23019C72 (in chan_ctxt_op_evt)
mm_back_to_host_idle proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,000000002300EA02
	c.li	a5,00000003
	beq	a0,a5,0000000023002500

l230024E8:
	lui	a1,00023074
	lui	a0,00023074
	addi	a2,zero,+0000052A
	addi	a1,a1,+000002DC
	addi	a0,a0,+000003C0
	jal	ra,000000002301327E

l23002500:
	lui	a5,00042019
	lbu	a5,a5,-00000186
	c.bnez	a5,0000000023002512

l2300250A:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023001D60

l23002512:
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,000000002300E902

;; mm_force_idle_req: 2300251E
;;   Called from:
;;     23019A04 (in chan_goto_idle_cb)
;;     23019B0E (in chan_tx_cfm)
;;     23019C62 (in chan_ctxt_op_evt)
mm_force_idle_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	csrrci	zero,mstatus,00000008
	jal	ra,000000002301ACEC
	jal	ra,000000002300477C
	jal	ra,000000002300601E
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E902
	lui	a5,00042019
	sh	zero,a5,+00000E6A
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; mm_sta_add: 2300254C
;;   Called from:
;;     2301B4EA (in mm_sta_add_req_handler)
;;     2301E428 (in me_sta_add_req_handler)
mm_sta_add proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s7,0000009C
	c.swsp	ra,000000AC
	c.swsp	s1,000000A8
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	s8,0000001C
	c.mv	s7,a0
	c.mv	s3,a1
	c.mv	s0,a2
	jal	ra,0000000023004F7A
	c.mv	s2,a0
	c.bnez	a0,00000000230025B8

l23002570:
	lbu	s1,s7,+00000011
	lbu	a0,s3,+00000000
	c.mv	a1,s1
	jal	ra,0000000023001E54
	sb	a0,s0,+00000000
	addi	a0,zero,+000005D8
	add	a0,s1,a0
	lui	s0,0004201A
	addi	a5,s0,+00000410
	addi	s0,s0,+00000410
	c.add	a5,a0
	lbu	a4,a5,+00000056
	c.bnez	a4,00000000230025B8

l2300259E:
	lbu	a4,a5,+000003E8
	c.bnez	a4,00000000230025D2

l230025A4:
	addi	a5,zero,+000005D8
	add	s1,s1,a5
	lbu	a4,s3,+00000000
	c.li	s2,00000000
	c.add	s0,s1
	sb	a4,s0,+00000060

l230025B8:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.mv	a0,s2
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.lwsp	t0,000000A8
	c.lwsp	ra,000000C8
	c.lwsp	t3,000001F8
	c.lwsp	s8,0000011C
	c.addi16sp	00000060
	c.jr	ra

l230025D2:
	lbu	a3,s3,+00000000
	lui	s4,0004201C
	addi	a4,s4,-00000728
	sb	a3,a4,+00000001
	lw	a4,a5,+000003E8
	c.lui	a3,00013000
	addi	a3,a3,-00000800
	c.and	a4,a3
	c.beqz	a4,000000002300265A

l230025F0:
	lui	a4,0004201C
	lw	a2,a4,-00000428
	lbu	a1,a5,+0000037E
	addi	a0,a0,+0000037F
	lbu	a5,a2,+00000181
	c.add	a0,s0
	c.beqz	a5,0000000023002654

l23002608:
	addi	a2,a2,+00000181

l2300260C:
	jal	ra,000000002301172C

l23002610:
	addi	a2,zero,+000005D8
	add	a2,s1,a2
	c.lui	a4,00012000
	add	a5,s0,a2
	lw	a3,a5,+000003E8
	c.and	a4,a3
	beq	a4,zero,000000002300277C

l23002628:
	lbu	a4,a5,+000003EF
	addi	a3,a2,+000003EE
	addi	a2,a2,+000003ED
	c.add	a3,s0
	c.add	a2,s0
	c.li	a1,00000004

l2300263A:
	addi	a0,s4,-00000728
	jal	ra,000000002300F3C4

l23002642:
	addi	a5,zero,+000005D8
	add	a5,s1,a5
	c.add	a5,s0
	lbu	a5,a5,+00000056
	c.beqz	a5,00000000230025A4

l23002652:
	c.j	00000000230025B8

l23002654:
	addi	a2,a2,+00000141
	c.j	000000002300260C

l2300265A:
	lbu	a5,a5,+000003E9
	c.andi	a5,00000002
	c.beqz	a5,0000000023002610

l23002662:
	lui	s5,0004201C
	addi	s6,s5,-00000428
	lw	a0,s6,+00000000
	addi	s5,s5,-00000428
	addi	a0,a0,+00000141
	jal	ra,000000002307132C
	lw	a2,s6,+00000000
	c.mv	a1,a0
	lui	a0,00023074
	addi	a2,a2,+00000141
	addi	a0,a0,+0000066C
	jal	ra,0000000023052118
	addi	a2,zero,+0000002C
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,0000000023070EB8
	lbu	a5,s7,+00000011
	lw	a0,s6,+00000000
	sb	a5,sp,+0000002D
	addi	a0,a0,+00000141
	addi	a5,zero,-00000100
	sh	a5,sp,+00000004
	jal	ra,000000002307132C
	andi	a5,a0,+000000FF
	sb	a5,sp,+00000008
	c.li	a4,00000005
	beq	a5,a4,00000000230026D4

l230026C6:
	c.li	a4,0000000D
	bne	a5,a4,00000000230026FA

l230026CC:
	c.li	a5,00000003
	sb	a5,sp,+0000002C
	c.j	00000000230026D8

l230026D4:
	sb	zero,sp,+0000002C

l230026D8:
	lw	a1,s5,+00000000
	andi	a2,a0,+000000FF
	c.addi4spn	a0,0000000C
	addi	a1,a1,+00000141
	jal	ra,0000000023070C7C

l230026EA:
	c.addi4spn	a0,00000004
	jal	ra,000000002300219C
	lui	a5,0004200E
	sb	a0,a5,+000008F4
	c.j	0000000023002610

l230026FA:
	c.li	a4,0000000A
	beq	a5,a4,000000002300272A

l23002700:
	c.li	a4,0000001A
	bne	a5,a4,0000000023002764

l23002706:
	c.li	a5,00000003

l23002708:
	sb	a5,sp,+0000002C
	andi	a5,a0,+00000001
	andi	s8,a0,+000000FF
	c.beqz	a5,000000002300271A

l23002716:
	andi	s8,a0,+000000FE

l2300271A:
	bne	s8,zero,000000002300272E

l2300271E:
	lbu	a5,sp,+00000008
	c.srli	a5,00000001
	sb	a5,sp,+00000008
	c.j	00000000230026EA

l2300272A:
	c.li	a5,00000000
	c.j	0000000023002708

l2300272E:
	lw	s5,s5,+00000000
	c.li	s7,00000000
	addi	s5,s5,+00000141

l23002738:
	lbu	a0,s5,+00000000
	c.addi	s5,00000002
	jal	ra,0000000023001A72
	c.mv	s6,a0
	lbu	a0,s5,-00000001
	c.slli	s6,04
	jal	ra,0000000023001A72
	srai	a5,s7,00000001
	c.addi4spn	a4,00000030
	c.add	a5,a4
	c.add	s6,a0
	sb	s6,a5,+00000FDC
	c.addi	s7,00000002
	blt	s7,s8,0000000023002738

l23002762:
	c.j	000000002300271E

l23002764:
	lui	a0,00023074
	addi	a0,a0,+00000684
	jal	ra,0000000023052118
	lbu	a0,s3,+00000000
	c.li	s2,00000001
	jal	ra,00000000230050EE
	c.j	00000000230025B8

l2300277C:
	lbu	a4,a5,+000003E9
	c.andi	a4,00000008
	beq	a4,zero,0000000023002642

l23002786:
	addi	a3,a2,+000003EC
	addi	a2,a2,+000003EB
	lbu	a4,a5,+000003EF
	c.add	a3,s0
	c.add	a2,s0
	c.li	a1,00000003
	c.j	000000002300263A

;; mm_sta_del: 2300279A
;;   Called from:
;;     2301B4B2 (in mm_sta_del_req_handler)
mm_sta_del proc
	c.addi	sp,FFFFFFE0
	c.swsp	s5,00000080
	addi	s5,zero,+000001B0
	add	a5,a0,s5
	c.swsp	s2,00000008
	lui	s2,00042019
	addi	s2,s2,-000000E0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s6,00000000
	c.add	a5,s2
	lbu	s6,a5,+0000001A
	addi	s4,zero,+000005D8
	lui	s1,0004201A
	add	s4,s6,s4
	addi	s0,s1,+00000410
	c.mv	s3,a0
	c.add	s0,s4
	lbu	a4,s0,+00000056
	c.bnez	a4,000000002300288A

l230027DC:
	c.li	a5,FFFFFFFF
	sb	a5,s0,+00000060
	lbu	a5,s0,+000003E8
	c.beqz	a5,000000002300284E

l230027E8:
	lw	a5,s0,+000003E8
	c.lui	a4,00013000
	addi	a4,a4,-00000800
	c.and	a5,a4
	addi	s1,s1,+00000410
	c.beqz	a5,000000002300286C

l230027FA:
	lui	s5,0004201C
	addi	s2,s5,-00000728
	lbu	a0,s2,+00000004
	jal	ra,00000000230022CC
	lbu	a0,s2,+00000003
	jal	ra,00000000230022CC
	lbu	a0,s2,+00000005
	jal	ra,00000000230022CC
	addi	a0,s5,-00000728
	jal	ra,000000002300F33C
	lw	a0,s2,+00000008
	c.li	a1,00000000
	addi	a2,zero,+00000022
	c.addi	a0,00000004
	jal	ra,0000000023070EB8
	lbu	a1,s0,+0000037E
	addi	a0,s4,+0000037F
	c.add	a0,s1
	jal	ra,00000000230117B4

l23002840:
	addi	a5,zero,+000005D8
	add	s6,s6,a5
	c.add	s1,s6
	sb	zero,s1,+000003E8

l2300284E:
	c.mv	a0,s3
	jal	ra,0000000023002382
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.mv	a0,s3
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,00000000230050EE

l2300286C:
	lbu	a5,s0,+000003E9
	c.andi	a5,00000002
	c.beqz	a5,0000000023002840

l23002874:
	lui	a5,0004200E
	lbu	a0,a5,-0000070C
	addi	a5,zero,+000000FF
	beq	a0,a5,0000000023002840

l23002884:
	jal	ra,00000000230022CC
	c.j	0000000023002840

l2300288A:
	lbu	a4,a5,+0000001C
	c.li	a5,00000001
	bne	a4,a5,000000002300284E

l23002894:
	lbu	a5,s0,+0000034A
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s0,+0000034A
	c.bnez	a5,000000002300284E

l230028A4:
	lbu	s1,s0,+00000057
	c.li	a3,00000002
	c.li	a2,00000000
	c.addi	s1,0000000A
	andi	s1,s1,+000000FF
	add	s5,s1,s5
	c.li	a1,0000000D
	addi	a0,zero,+00000049
	jal	ra,000000002300E768
	c.add	s2,s5
	sb	zero,s2,+0000001C
	sb	s1,a0,+00000000
	sb	zero,a0,+00000001
	jal	ra,000000002300E7D4
	lbu	a1,s0,+00000057
	c.mv	a0,s0
	c.addi	a1,0000000A
	andi	a1,a1,+000000FF
	jal	ra,000000002300D69E
	c.j	000000002300284E

;; mm_cfg_element_keepalive_timestamp_update: 230028E4
;;   Called from:
;;     2300A1AC (in rxu_cntrl_frame_handle)
mm_cfg_element_keepalive_timestamp_update proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230302E8
	lui	a5,00042019
	addi	a5,a5,-000001A8
	c.lw	a5,36(a4)
	c.sw	a5,40(a0)
	c.addi	a4,00000001
	c.sw	a5,36(a4)
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; mm_send_connection_loss_ind: 23002902
;;   Called from:
;;     23002938 (in mm_ap_probe_cfm)
;;     23003C28 (in ps_enable_cfm)
;;     23003D28 (in ps_disable_cfm)
;;     2300746E (in vif_mgmt_switch_channel)
mm_send_connection_loss_ind proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a3,00000001
	c.mv	s0,a0
	c.li	a2,00000000
	c.li	a1,00000006
	addi	a0,zero,+00000043
	c.swsp	ra,00000084
	jal	ra,000000002300E768
	lbu	a5,s0,+00000057
	sb	a5,a0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300E7D4

;; mm_ap_probe_cfm: 2300292A
mm_ap_probe_cfm proc
	slli	a4,a1,00000008
	bge	a4,zero,0000000023002938

l23002932:
	sb	zero,a0,+00000074
	c.jr	ra

l23002938:
	c.j	0000000023002902

;; mm_check_rssi: 2300293A
;;   Called from:
;;     23002B04 (in mm_check_beacon)
mm_check_rssi proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	lb	s6,a0,+00000075
	lb	s1,a0,+00000076
	lbu	s5,a0,+00000077
	lbu	s2,a0,+00000078
	c.li	a5,00000000
	c.li	a6,00000000
	sb	a1,a0,+00000075
	c.mv	s0,a0
	lui	s4,0004200E
	c.addi4spn	a0,00000008
	c.mv	s3,a1
	c.swsp	a5,00000004
	c.swsp	a6,00000084
	addi	s4,s4,-00000360
	jal	ra,000000002300EED6
	beq	s6,zero,00000000230029A8

l2300297E:
	c.lwsp	s0,000000A4
	lw	a4,s4,+00000000
	lw	a2,s4,+00000004
	c.lwsp	a2,000000E4
	sub	a4,a3,a4
	sltu	a3,a3,a4
	c.sub	a5,a2
	c.sub	a5,a3
	blt	zero,a5,00000000230029A8

l2300299A:
	c.bnez	a5,00000000230029D6

l2300299C:
	lui	a5,000001E8
	addi	a5,a5,+00000480
	bgeu	a5,a4,00000000230029D6

l230029A8:
	c.li	a3,00000003
	c.li	a2,00000000
	c.li	a1,0000000D
	addi	a0,zero,+00000057
	jal	ra,000000002300E768
	lbu	a4,s0,+00000057
	sb	s2,a0,+00000001
	sb	s3,a0,+00000002
	sb	a4,a0,+00000000
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000E4
	sw	a4,s4,+00000000
	sw	a5,s4,+00000004
	jal	ra,000000002300E7D4

l230029D6:
	c.beqz	s1,0000000023002A1A

l230029D8:
	slli	a5,s5,00000018
	c.srai	a5,00000018
	bne	s2,zero,0000000023002A2E

l230029E2:
	bge	s3,s6,00000000230029EC

l230029E6:
	c.sub	s1,a5
	slt	s2,s3,s1

l230029EC:
	lbu	a5,s0,+00000078
	beq	a5,s2,0000000023002A16

l230029F4:
	c.li	a3,00000003
	c.li	a2,00000000
	c.li	a1,0000000D
	addi	a0,zero,+00000057
	jal	ra,000000002300E768
	lbu	a4,s0,+00000057
	sb	s2,a0,+00000001
	sb	s3,a0,+00000002
	sb	a4,a0,+00000000
	jal	ra,000000002300E7D4

l23002A16:
	sb	s2,s0,+00000078

l23002A1A:
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

l23002A2E:
	bge	s6,s3,00000000230029EC

l23002A32:
	c.add	s1,a5
	slt	s1,s1,s3
	xori	s2,s1,+00000001
	c.j	00000000230029EC

;; mm_send_csa_traffic_ind: 23002A3E
;;   Called from:
;;     23002ABC (in mm_check_beacon)
;;     23002CEA (in mm_sta_tbtt)
;;     23007DA6 (in me_beacon_check)
mm_send_csa_traffic_ind proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a1
	c.mv	s1,a0
	c.li	a3,00000002
	c.li	a2,00000000
	c.li	a1,0000000D
	addi	a0,zero,+00000059
	c.swsp	ra,00000084
	jal	ra,000000002300E768
	sb	s1,a0,+00000000
	sb	s0,a0,+00000001
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002300E7D4

;; mm_check_beacon: 23002A6C
;;   Called from:
;;     23004586 (in rxl_cntrl_evt)
mm_check_beacon proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s3,0000009C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s4,0000001C
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	c.lw	a0,8(a5)
	lhu	s7,a0,+0000001C
	c.mv	s5,a0
	lw	s2,a5,+00000008
	lui	a5,0004200E
	addi	a5,a5,-00000364
	c.lw	a5,0(a4)
	sb	zero,a1,+00000074
	c.mv	s0,a1
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	lbu	a5,a1,+0000007A
	c.mv	s3,a2
	c.mv	s6,a3
	lw	s4,a1,+00000070
	c.beqz	a5,0000000023002AC2

l23002AB6:
	lbu	a0,s0,+00000057
	c.li	a1,00000001
	c.jal	0000000023002A3E
	sb	zero,s0,+0000007A

l23002AC2:
	lui	s1,00044B00
	lw	a4,s1,+00000120
	lui	a5,00001C9C
	addi	a5,a5,+00000380
	c.sub	a5,a4
	c.lw	s0,108(a4)
	c.add	a5,a4
	bge	a5,zero,0000000023002AFA

l23002ADC:
	lui	a5,00042019
	lbu	a5,a5,-00000185
	c.beqz	a5,0000000023002AFA

l23002AE6:
	lbu	a0,s0,+00000060
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002300664A
	c.bnez	a0,0000000023002AFA

l23002AF4:
	lw	a5,s1,+00000120
	c.sw	s0,108(a5)

l23002AFA:
	lb	a1,s5,+00000033
	c.mv	a0,s0
	addi	s1,s7,-00000024
	jal	ra,000000002300293A
	c.li	a2,00000000
	c.li	a1,00000004
	addi	a0,s2,+00000020
	jal	ra,000000002300E46C
	c.slli	s1,10
	addi	s8,s2,+00000024
	c.srli	s1,00000010
	sw	zero,s6,+00000000
	c.li	s11,00000001
	c.li	a5,00000005
	c.li	a4,FFFFFFFE

l23002B26:
	bltu	s11,s1,0000000023002C6E

l23002B2A:
	c.sw	s0,112(a0)
	lbu	a4,s2,+00000019
	lhu	s9,s3,+00000016
	lbu	s3,s2,+00000018
	c.slli	a4,08
	lbu	s8,s2,+0000001C
	or	a4,a4,s3
	lbu	s3,s2,+0000001A
	lbu	s1,s2,+00000021
	lbu	a5,s2,+00000020
	c.slli	s3,10
	or	a4,s3,a4
	lbu	s3,s2,+0000001B
	c.slli	s1,08
	c.or	s1,a5
	c.slli	s3,18
	or	s3,s3,a4
	lbu	a4,s2,+0000001D
	lw	s10,s5,+00000020
	c.slli	s1,0A
	c.slli	a4,08
	or	a4,a4,s8
	lbu	s8,s2,+0000001E
	c.slli	s8,10
	or	a4,s8,a4
	lbu	s8,s2,+0000001F
	lhu	s2,s0,+0000005C
	c.slli	s8,18
	or	s8,s8,a4
	bne	s2,zero,0000000023002BA2

l23002B8E:
	lw	a5,s6,+00000000
	c.li	s2,00000001
	c.beqz	a5,0000000023002BA2

l23002B96:
	lbu	s2,a5,+00000002
	bne	s2,zero,0000000023002BA2

l23002B9E:
	lbu	s2,a5,+00000003

l23002BA2:
	c.mv	a1,s7
	c.mv	a0,s5
	jal	ra,0000000023001B62
	c.li	a1,00000018
	c.mv	s6,a0
	c.mv	a0,s5
	jal	ra,0000000023001B62
	c.mv	s5,a0
	srai	a3,s1,0000001F
	c.mv	a1,s8
	c.mv	a2,s1
	c.mv	a0,s3
	jal	ra,000000002306D260
	add	a1,a1,s1
	sub	a5,s3,s5
	sltu	a3,s3,a5
	sub	s8,s8,a3
	add	a4,a0,s1
	sltu	a0,a0,s1
	c.add	a1,a0
	bltu	a1,s8,0000000023002BEA

l23002BE2:
	bne	s8,a1,0000000023002BEC

l23002BE6:
	bgeu	a4,a5,0000000023002BEC

l23002BEA:
	c.mv	a5,a4

l23002BEC:
	add	a4,s2,s1
	sub	s6,s6,s5
	sub	s3,s3,s10
	c.add	s3,s6
	add	s2,s9,s2
	c.add	a5,a4
	lui	a4,00044B00
	lw	a2,a4,+00000120
	c.lui	a4,FFFFF000
	sub	a5,a5,s3
	addi	a4,a4,+00000380
	c.sub	a4,a2
	sub	a5,a5,s2
	addi	a3,a5,-00000190
	c.add	a5,a4
	bge	a5,zero,0000000023002C24

l23002C22:
	c.add	a3,s1

l23002C24:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	lui	a5,00044B08
	lw	a5,a5,+000000A4
	c.sub	a1,a5
	c.lw	s0,36(a5)
	c.add	a1,a3
	beq	a1,a5,0000000023002C46

l23002C3E:
	addi	a0,s0,+00000018
	jal	ra,0000000023003726

l23002C46:
	c.lw	s0,112(a0)
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	sub	a0,a0,s4
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
	sltu	a0,zero,a0
	c.addi16sp	00000050
	c.jr	ra

l23002C6E:
	lbu	s9,s8,+00000001
	lbu	a3,s8,+00000000
	addi	s10,s8,+00000002
	addi	a2,s9,+00000001
	bge	a2,s1,0000000023002B2A

l23002C82:
	bne	a3,a5,0000000023002C9A

l23002C86:
	sw	s8,s6,+00000000

l23002C8A:
	sub	a3,a4,s9
	c.add	s1,a3
	c.slli	s1,10
	c.srli	s1,00000010
	add	s8,s10,s9
	c.j	0000000023002B26

l23002C9A:
	c.mv	a2,a0
	c.mv	a1,s9
	c.mv	a0,s10
	c.swsp	a4,00000084
	jal	ra,000000002300E46C
	c.lwsp	a2,000000C4
	c.li	a5,00000005
	c.j	0000000023002C8A

;; mm_sta_tbtt: 23002CAC
mm_sta_tbtt proc
	lbu	a5,a0,+00000058
	c.beqz	a5,0000000023002D7E

l23002CB2:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lbu	a5,a0,+00000079
	c.mv	s0,a0
	c.beqz	a5,0000000023002CEE

l23002CC2:
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,a0,+00000079
	c.li	a4,00000001
	bltu	a4,a5,0000000023002CDE

l23002CD2:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023007364

l23002CDE:
	c.li	a4,00000002
	bne	a5,a4,0000000023002CEE

l23002CE4:
	lbu	a0,a0,+00000057
	c.li	a1,00000000
	jal	ra,0000000023002A3E

l23002CEE:
	lbu	a4,s0,+00000060
	addi	a3,zero,+000001B0
	lui	a5,00042019
	add	a4,a4,a3
	addi	a5,a5,-000000E0
	addi	a0,s0,+00000018
	c.add	a5,a4
	c.lw	a5,4(s1)
	c.lw	s0,36(a5)
	c.add	s1,a5
	c.mv	a1,s1
	jal	ra,0000000023003726
	c.mv	a0,s0
	jal	ra,000000002300728E
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,000000002301A162
	c.mv	a0,s0
	jal	ra,000000002301A352
	c.beqz	a0,0000000023002D74

l23002D2A:
	c.lw	s0,4(a5)
	addi	a4,zero,+00000064
	ori	a5,a5,+00000001
	c.sw	s0,4(a5)
	lbu	a5,s0,+00000074
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,s0,+00000074
	bgeu	a4,a5,0000000023002D62

l23002D48:
	lbu	a0,s0,+00000060
	c.mv	a2,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a1,00023003
	addi	a1,a1,-000006D6
	c.addi	sp,00000010
	jal	zero,000000002300664A

l23002D62:
	bne	a5,a4,0000000023002D74

l23002D66:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002301A278

l23002D74:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23002D7E:
	c.jr	ra

;; mm_get_rsn_wpa_ie: 23002D80
;;   Called from:
;;     2300F560 (in keyMgmtFormatWpaRsnIe)
mm_get_rsn_wpa_ie proc
	addi	a4,zero,+000001B0
	add	a0,a0,a4
	lui	a5,00042019
	c.addi	sp,FFFFFFF0
	addi	a5,a5,-000000E0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	a4,zero,+000005D8
	c.mv	a3,a1
	lui	a1,0004201A
	addi	a1,a1,+00000410
	c.add	a5,a0
	lbu	a5,a5,+0000001A
	c.mv	a0,a3
	add	a5,a5,a4
	add	s0,a1,a5
	lbu	a2,s0,+00000411
	addi	a5,a5,+000003F1
	c.add	a1,a5
	jal	ra,0000000023070C7C
	lbu	a0,s0,+00000411
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; mm_tim_update_proceed: 23002DCE
;;   Called from:
;;     2300322A (in mm_tim_update)
;;     230036A2 (in mm_bcn_transmitted)
mm_tim_update_proceed proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lhu	a3,a0,+00000000
	c.mv	s0,a0
	lbu	a5,a0,+00000003
	lbu	t3,a0,+00000002
	c.bnez	a3,0000000023002E22

l23002DE4:
	addi	a3,zero,+000005D8
	add	a5,a5,a3
	lui	a4,0004201A
	addi	a4,a4,+00000410
	c.add	a4,a5
	beq	t3,zero,0000000023002E1C

l23002DFA:
	c.li	a5,00000001
	sb	a5,a4,+00000346

l23002E00:
	lhu	a1,s0,-00000004
	addi	a0,zero,+00000042
	c.li	a2,00000000
	jal	ra,000000002300E83E
	addi	a0,s0,-0000000C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300E860

l23002E1C:
	sb	zero,a4,+00000346
	c.j	0000000023002E00

l23002E22:
	addi	a0,zero,+000000FC
	add	a0,a5,a0
	lui	a2,00042047
	addi	a2,a2,+00000360
	slli	a4,a5,00000003
	c.add	a4,a2
	lui	a2,00042047
	addi	a2,a2,+00000168
	srli	a6,a3,00000003
	andi	a6,a6,+000000FF
	c.add	a0,a2
	add	a7,a6,a0
	andi	a2,a3,+00000007
	lbu	a1,a7,+00000000
	c.li	a3,00000001
	sll	a3,a3,a2
	andi	a2,a3,+000000FF
	and	t1,a2,a1
	beq	t3,zero,0000000023002F22

l23002E68:
	bne	t1,zero,0000000023002E00

l23002E6C:
	c.or	a2,a1
	addi	a1,zero,+000005D8
	add	a1,a5,a1
	lui	a3,0004201A
	sb	a2,a7,+00000000
	addi	a2,a3,+00000410
	addi	a3,a3,+00000410
	c.add	a2,a1
	lhu	a1,a2,+0000033C
	lbu	t1,a2,+00000344
	c.addi	a1,00000001
	sh	a1,a2,+0000033C
	lui	a1,00042048
	addi	a1,a1,-00000570
	bgeu	a6,t1,0000000023002EB8

l23002EA2:
	andi	t1,a6,+000000FE
	sb	t1,a2,+00000344
	addi	a2,zero,+00000028
	add	a2,a5,a2
	c.add	a0,t1
	c.add	a2,a1
	c.sw	a2,28(a0)

l23002EB8:
	addi	a2,zero,+000005D8
	add	a2,a5,a2
	c.add	a2,a3
	lbu	a0,a2,+00000345
	bgeu	a0,a6,0000000023002EDC

l23002ECA:
	sb	a6,a2,+00000345
	addi	a2,zero,+00000028
	add	a2,a5,a2
	c.add	a2,a1
	sw	a7,a2,+00000020

l23002EDC:
	addi	a2,zero,+000005D8
	add	a2,a5,a2
	c.add	a3,a2
	lbu	a2,a3,+00000345
	lbu	a0,a3,+00000344
	c.addi	a2,00000006
	c.sub	a2,a0
	c.slli	a2,10
	c.srli	a2,00000010
	sh	a2,a3,+0000033A
	c.addi	a2,FFFFFFFE
	sb	a2,a4,+00000001
	lbu	a3,a3,+00000344
	addi	a2,a4,+00000004
	sb	a3,a4,+00000004
	addi	a4,zero,+00000028
	add	a5,a5,a4
	add	a4,a1,a5
	c.addi	a5,00000014
	c.add	a1,a5
	c.sw	a4,12(a2)
	c.sw	a4,4(a1)
	c.j	0000000023002E00

l23002F22:
	beq	t1,zero,0000000023002E00

l23002F26:
	addi	a2,zero,+000005D8
	add	a2,a5,a2
	xori	a3,a3,-00000001
	c.and	a3,a1
	lui	a1,0004201A
	sb	a3,a7,+00000000
	addi	a3,a1,+00000410
	addi	a1,a1,+00000410
	c.add	a3,a2
	lhu	a7,a3,+0000033C
	c.addi	a7,FFFFFFFF
	c.slli	a7,10
	srli	a7,a7,00000010
	sh	a7,a3,+0000033C
	beq	a7,zero,000000002300301E

l23002F5A:
	lbu	a7,a3,+00000344
	andi	a2,a6,+000000FE
	addi	t1,zero,+000000FB
	beq	a7,a2,0000000023002FD8

l23002F6A:
	addi	a3,zero,+000005D8
	add	a3,a5,a3
	c.add	a3,a1
	lbu	a2,a3,+00000345
	bne	a2,a6,0000000023002FA4

l23002F7C:
	lbu	a2,a3,+00000345
	add	a6,a2,a0
	c.beqz	a2,0000000023002F8E

l23002F86:
	lbu	a7,a6,+00000000
	beq	a7,zero,0000000023003016

l23002F8E:
	addi	a2,zero,+00000028
	add	a2,a5,a2
	lui	a3,00042048
	addi	a3,a3,-00000570
	c.add	a3,a2
	sw	a6,a3,+00000020

l23002FA4:
	addi	a3,zero,+000005D8
	add	a5,a5,a3
	c.add	a5,a1
	lbu	a3,a5,+00000345
	lbu	a2,a5,+00000344
	c.addi	a3,00000006
	c.sub	a3,a2
	c.slli	a3,10
	c.srli	a3,00000010
	sh	a3,a5,+0000033A
	c.addi	a3,FFFFFFFE
	sb	a3,a4,+00000001
	lbu	a5,a5,+00000344
	sb	a5,a4,+00000004
	c.j	0000000023002E00

l23002FD2:
	c.addi	a2,00000001
	sb	a2,a3,+00000344

l23002FD8:
	lbu	a2,a3,+00000344
	beq	a2,t1,0000000023002FEC

l23002FE0:
	add	a7,a2,a0
	lbu	a7,a7,+00000000
	beq	a7,zero,0000000023002FD2

l23002FEC:
	addi	a3,zero,+000005D8
	add	a3,a5,a3
	addi	a7,zero,+00000028
	andi	a2,a2,+000000FE
	add	a7,a5,a7
	c.add	a3,a1
	sb	a2,a3,+00000344
	lui	a3,00042048
	addi	a3,a3,-00000570
	c.add	a2,a0
	c.add	a3,a7
	c.sw	a3,28(a2)
	c.j	0000000023002F6A

l23003016:
	c.addi	a2,FFFFFFFF
	sb	a2,a3,+00000345
	c.j	0000000023002F7C

l2300301E:
	c.li	a1,00000006
	sh	a1,a3,+0000033A
	lui	a1,0004201A
	addi	a1,a1,+00000740
	c.add	a2,a1
	addi	a1,zero,+000000FF
	sh	a1,a2,+00000014
	addi	a1,zero,+00000028
	add	a5,a5,a1
	lbu	a2,a3,+0000033A
	c.addi	a4,00000005
	sb	zero,a4,+00000FFF
	c.addi	a2,FFFFFFFE
	sb	a2,a4,+00000FFC
	lui	a2,00042048
	addi	a2,a2,-00000570
	c.add	a5,a2
	c.sw	a5,12(a4)
	lbu	a4,s0,+00000003
	c.li	a2,00000014
	add	a4,a4,a2
	lui	a2,00042048
	addi	a2,a2,-00000598
	c.add	a4,a2
	c.sw	a5,4(a4)
	lbu	a4,a3,+00000345
	c.add	a0,a4
	c.sw	a5,32(a0)
	c.j	0000000023002E00

;; mm_bcn_init: 2300307A
;;   Called from:
;;     23001D5C (in mm_init)
mm_bcn_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042019
	addi	a0,s0,-0000017C
	addi	a2,zero,+00000024
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023070EB8
	lui	a5,00042046
	addi	s0,s0,-0000017C
	addi	a5,a5,+00000110
	c.sw	s0,16(a5)
	lui	a5,00023003
	addi	a5,a5,+00000466
	c.sw	s0,20(a5)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,00042019
	addi	a0,a0,-00000160
	c.addi	sp,00000010
	jal	zero,000000002300E278

;; mm_bcn_init_vif: 230030BC
;;   Called from:
;;     23006FA8 (in vif_mgmt_register)
mm_bcn_init_vif proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lbu	a1,a0,+00000057
	addi	s2,zero,+00000048
	addi	a5,zero,+0000003C
	add	s2,a1,s2
	lui	a4,00042048
	addi	a4,a4,-000003B0
	lui	a3,00042047
	addi	a3,a3,+000000F0
	c.mv	s0,a0
	addi	a0,a0,+00000060
	add	a5,a1,a5
	c.add	s2,a4
	addi	a4,zero,+0000034C
	c.mv	a2,s2
	add	a1,a1,a4
	c.add	a3,a5
	lui	a5,00042047
	addi	a5,a5,+0000036C
	c.add	a1,a5
	jal	ra,0000000023006166
	lbu	a5,s0,+00000057
	c.li	a2,00000014
	lui	a4,00042048
	add	a5,a5,a2
	addi	a4,a4,-000005FC
	addi	a0,zero,+000000FC
	addi	a3,zero,+00000028
	c.li	a1,00000000
	c.add	a5,a4
	sw	a5,s2,+00000000
	lbu	s1,s0,+00000057
	lui	a5,00042047
	addi	a5,a5,+00000360
	add	a0,s1,a0
	slli	a4,s1,00000003
	c.add	a4,a5
	lui	a5,00042047
	addi	a5,a5,+00000168
	sb	zero,s0,+00000343
	sh	zero,s0,+0000033C
	sb	zero,s0,+00000346
	lui	s2,000CAFF0
	addi	s2,s2,-00000522
	add	a3,s1,a3
	c.add	a0,a5
	c.li	a5,00000006
	sh	a5,s0,+0000033A
	addi	a5,zero,+000000FF
	sh	a5,s0,+00000344
	lui	a5,00042048
	addi	a5,a5,-00000570
	add	s1,s1,a2
	c.add	a5,a3
	addi	a3,a4,+00000005
	c.sw	a5,12(a3)
	lui	a3,00042048
	addi	a3,a3,-00000598
	sw	s2,a5,+00000000
	c.sw	a5,8(a4)
	sw	zero,a5,+00000010
	addi	a2,zero,+000000FC
	c.add	s1,a3
	c.li	a3,00000005
	c.sw	a5,4(s1)
	sb	a3,a4,+00000000
	c.li	a3,00000004
	sb	a3,a4,+00000001
	lbu	a3,s0,+00000343
	sb	zero,a4,+00000004
	sb	a3,a4,+00000002
	c.li	a3,00000001
	sb	a3,a4,+00000003
	c.li	a3,FFFFFFFF
	sb	a3,a4,+00000005
	sw	s2,a5,+00000014
	lbu	a4,s0,+00000345
	c.sw	a5,24(s1)
	c.add	a4,a0
	c.sw	a5,32(a4)
	jal	ra,0000000023070EB8
	sw	s2,s1,+00000000
	sw	zero,s1,+00000004
	sw	zero,s1,+00000010
	lw	a5,s0,+000000CC
	sw	zero,a5,+00000024
	sw	zero,a5,+0000003C
	sw	zero,a5,+00000010
	lui	a5,00023003
	addi	a5,a5,+0000062E
	sw	a5,s0,+0000032C
	sw	s0,s0,+00000330
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; mm_tim_update: 23003210
;;   Called from:
;;     2301B43A (in mm_tim_update_req_handler)
mm_tim_update proc
	lui	a5,00042019
	lw	a5,a5,-00000178
	c.beqz	a5,000000002300322A

l2300321A:
	addi	a1,a0,-0000000C
	lui	a0,00042019
	addi	a0,a0,-00000160
	jal	zero,000000002300E282

l2300322A:
	jal	zero,0000000023002DCE

;; mm_bcn_transmit: 2300322E
;;   Called from:
;;     23001E08 (in mm_tbtt_evt)
;;     230035A2 (in mm_bcn_updated)
mm_bcn_transmit proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	lui	a5,0004201B
	lui	s2,00042019
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	lw	s0,a5,-00000038
	addi	a5,s2,-0000017C
	c.lw	a5,4(a5)
	addi	s2,s2,-0000017C
	c.beqz	a5,0000000023003274

l2300325C:
	lui	a1,00023074
	lui	a0,00023074
	addi	a2,zero,+00000339
	addi	a1,a1,+000002DC
	addi	a0,a0,+0000071C
	jal	ra,000000002301327E

l23003274:
	lbu	a5,s2,+00000009
	c.beqz	a5,0000000023003298

l2300327A:
	c.li	a5,00000001
	sb	a5,s2,+00000008

l23003280:
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

l23003298:
	lui	s5,00042047
	lui	s3,0004201A
	lui	s6,00042019
	lui	s4,0004201D
	sb	zero,s2,+00000008
	addi	s5,s5,+00000360
	addi	s3,s3,+000003A8
	addi	s6,s6,-000000E0
	addi	s4,s4,+00000118

l230032BC:
	c.beqz	s0,0000000023003280

l230032BE:
	lbu	a4,s0,+00000056
	c.li	a5,00000002
	bne	a4,a5,000000002300342A

l230032C8:
	lbu	a5,s0,+00000342
	beq	a5,zero,000000002300342A

l230032D0:
	lbu	a4,s0,+00000341
	lbu	a5,s0,+00000340
	bne	a4,a5,000000002300342A

l230032DC:
	lhu	a1,s0,+0000033A
	lbu	a5,s0,+00000057
	lhu	a4,s0,+00000338
	lw	a3,s0,+000000CC
	c.slli	a5,03
	c.add	a4,a1
	c.add	a5,s5
	c.addi	a4,00000004
	lbu	a2,a5,+00000004
	c.sw	a3,28(a4)
	lhu	a4,s3,+00000054
	c.lw	a3,20(a1)
	addi	s1,s0,+00000060
	c.addi	a4,00000001
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,s3,+00000054
	c.slli	a4,04
	sh	a4,a1,+00000016
	lbu	a4,s0,+00000343
	sb	a4,a5,+00000002
	bne	a4,zero,000000002300342E

l23003320:
	lbu	a4,s0,+00000346
	c.bnez	a4,000000002300334A

l23003326:
	lui	a1,0002308E
	lw	a1,a1,-00000234
	lw	a4,s4,+00000018
	c.and	a4,a1
	addi	a1,zero,+00000330
	add	a4,a4,a1
	lw	a1,s4,+0000001C
	c.add	a4,a1
	c.lw	a4,0(a1)
	andi	a4,a2,+000000FE
	c.beqz	a1,000000002300334E

l2300334A:
	ori	a4,a2,+00000001

l2300334E:
	lbu	a2,a5,+00000003
	sb	a2,s0,+00000343

l23003356:
	ori	a4,a4,+00000001
	sb	a4,a5,+00000004
	lbu	a5,s0,+00000343
	c.addi	a5,FFFFFFFF
	sb	a5,s0,+00000343
	lbu	a5,s0,+00000347
	c.beqz	a5,00000000230033A6

l2300336E:
	c.addi	a5,FFFFFFFF
	lbu	a2,s0,+00000348
	andi	a5,a5,+000000FF
	sb	a5,s0,+00000347
	c.beqz	a2,0000000023003398

l2300337E:
	c.lw	a3,20(a4)
	c.add	a4,a2
	sb	a5,a4,+00000000
	lbu	a4,s0,+00000349
	c.beqz	a4,0000000023003398

l2300338C:
	c.lw	a3,20(a5)
	lbu	a2,s0,+00000347
	c.add	a5,a4
	sb	a2,a5,+00000000

l23003398:
	lbu	s7,s0,+00000347
	bne	s7,zero,0000000023003440

l230033A0:
	c.li	a5,00000001
	sb	a5,s0,+00000347

l230033A6:
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,000000002300563C
	c.mv	a0,s0
	jal	ra,000000002301A3AA
	c.beqz	a0,000000002300342A

l230033B6:
	lbu	s7,s0,+00000057
	c.li	a1,0000000D
	c.li	a3,00000003
	c.li	a2,00000000
	c.addi	s7,0000000A
	addi	a0,zero,+0000004A
	jal	ra,000000002300E768
	andi	s7,s7,+000000FF
	sb	s7,a0,+00000000
	sb	zero,a0,+00000001
	sb	zero,a0,+00000002
	jal	ra,000000002300E7D4
	lbu	a5,s0,+00000057
	c.li	a1,00000004
	c.mv	a0,s1
	sb	a5,s0,+0000008F
	c.li	a5,FFFFFFFF
	sb	a5,s0,+00000090
	jal	ra,000000002300649E
	c.beqz	a0,0000000023003400

l230033F6:
	lw	a5,s2,+00000004
	c.addi	a5,00000001
	sw	a5,s2,+00000004

l23003400:
	lbu	s1,s0,+00000057
	addi	a5,zero,+000001B0
	c.addi	s1,0000000A
	add	s1,s1,a5
	c.add	s1,s6
	lbu	a5,s1,+00000032
	c.andi	a5,00000002
	c.beqz	a5,000000002300342A

l23003418:
	c.li	a5,00000009
	c.sw	s1,52(a5)
	c.li	a2,00000000
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023005246
	sw	zero,s1,+00000034

l2300342A:
	c.lw	s0,0(s0)
	c.j	00000000230032BC

l2300342E:
	lbu	a1,s0,+00000346
	andi	a4,a2,+000000FE
	c.andi	a1,00000002
	c.beqz	a1,0000000023003356

l2300343A:
	ori	a4,a2,+00000001
	c.j	0000000023003356

l23003440:
	lbu	s8,s0,+00000057
	c.li	a3,00000002
	c.li	a2,00000000
	c.li	a1,0000000D
	addi	a0,zero,+0000004E
	jal	ra,000000002300E768
	sb	s8,a0,+00000000
	sb	s7,a0,+00000001
	jal	ra,000000002300E7D4
	lbu	a5,s0,+00000347
	c.bnez	a5,00000000230033A6

l23003464:
	c.j	00000000230033A0

;; mm_bcn_updated: 23003466
;;   Called from:
;;     2300362A (in mm_bcn_update)
mm_bcn_updated proc
	c.addi16sp	FFFFFFD0
	c.swsp	s8,00000004
	lui	s8,00042019
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s9,00000080
	addi	s1,s8,-0000017C
	c.lw	s1,0(a5)
	c.mv	s0,a0
	c.li	a2,00000000
	lhu	a1,a5,-00000004
	addi	a0,zero,+00000040
	addi	s2,a5,-0000000C
	jal	ra,000000002300E83E
	lbu	s7,s0,+00000057
	lw	s3,s1,+00000000
	lui	a5,00042047
	slli	s4,s7,00000003
	addi	a5,a5,+00000360
	lbu	s9,s3,+00000008
	c.add	s4,a5
	lhu	a5,s3,+00000004
	lw	s1,s0,+000000CC
	lhu	s6,s3,+00000006
	sub	s9,a5,s9
	lw	s5,s1,+00000014
	sh	s9,s0,+00000338
	c.lw	s1,20(a2)
	lhu	a1,s3,+00000004
	c.mv	a0,s7
	c.addi	s6,00000003
	jal	ra,0000000023007C8C
	lhu	a4,s3,+00000006
	c.lw	s1,20(a5)
	lui	a0,00042048
	c.addi	a4,FFFFFFFF
	c.add	a5,a4
	c.sw	s1,24(a5)
	lbu	a4,s3,+00000008
	addi	a0,a0,-00000598
	addi	s8,s8,-0000017C
	c.addi	a4,00000001
	c.add	a4,a5
	c.li	a5,00000014
	add	s7,s7,a5
	c.add	a0,s7
	c.sw	a0,8(a4)
	lhu	a5,s3,+00000006
	sw	zero,a0,+00000010
	xori	a5,a5,-00000001
	c.add	a5,s9
	c.add	a5,a4
	c.sw	a0,12(a5)
	c.lw	s0,64(a5)
	lbu	a5,a5,+00000004
	c.beqz	a5,00000000230035C8

l23003520:
	lui	a5,00042048
	addi	a5,a5,-000005D4

l23003528:
	lui	a4,00044B00
	lw	a4,a4,+000000A0
	c.add	s5,s6
	andi	a4,a4,+000000FF
	c.sw	a5,36(a4)
	c.sw	s1,40(a5)
	sw	zero,s1,+00000024
	sw	zero,s1,+0000003C
	lbu	a5,s0,+00000057
	addi	a4,zero,+00000028
	add	a5,a5,a4
	lui	a4,00042048
	addi	a4,a4,-00000570
	c.add	a5,a4
	c.sw	s1,16(a5)
	c.li	a5,00000001
	sb	a5,s0,+00000342
	lbu	a5,s5,+00000000
	sb	a5,s4,+00000003
	lw	a5,s8,+00000000
	sb	zero,s0,+00000347
	lw	a3,s0,+000000CC
	lbu	a4,a5,+0000000A
	sb	a4,s0,+00000348
	lbu	a4,a5,+0000000B
	sb	a4,s0,+00000349
	lbu	a4,a5,+0000000A
	c.beqz	a4,0000000023003598

l2300358A:
	c.lw	a3,20(a5)
	c.add	a5,a4
	lbu	a5,a5,+00000000
	c.addi	a5,00000001
	sb	a5,s0,+00000347

l23003598:
	lbu	a5,s8,+00000008
	sb	zero,s8,+00000009
	c.beqz	a5,00000000230035A6

l230035A2:
	jal	ra,000000002300322E

l230035A6:
	c.lwsp	s0,00000114
	sw	zero,s8,+00000000
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.mv	a0,s2
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	jal	zero,000000002300E860

l230035C8:
	lui	a5,00042047
	addi	a5,a5,+000000B4
	c.j	0000000023003528

;; mm_bcn_update: 230035D2
;;   Called from:
;;     23003672 (in mm_bcn_transmitted)
;;     230036CA (in mm_bcn_change)
mm_bcn_update proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lbu	s0,a0,+00000009
	addi	a5,zero,+0000034C
	lui	a4,00042047
	add	a5,s0,a5
	addi	a4,a4,+0000036C
	lhu	a2,a0,+00000004
	addi	a1,a0,+0000000C
	c.add	a5,a4
	addi	a0,a5,+0000014C
	jal	ra,0000000023070C7C
	addi	a0,zero,+000005D8
	add	s0,s0,a0
	lui	a5,00042019
	addi	a5,a5,-0000017C
	c.li	a4,00000001
	lui	a0,0004201A
	sb	zero,a5,+0000000A
	sb	a4,a5,+00000009
	addi	a0,a0,+00000410
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.add	a0,s0
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	jal	zero,0000000023003466

;; mm_bcn_transmitted: 2300362E
mm_bcn_transmitted proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042019
	c.swsp	s1,00000080
	addi	a5,s0,-0000017C
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	c.lw	a5,4(a5)
	c.mv	s1,a0
	addi	s0,s0,-0000017C
	c.bnez	a5,0000000023003662

l2300364A:
	lui	a1,00023074
	lui	a0,00023074
	addi	a2,zero,+00000244
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000730
	jal	ra,000000002301327E

l23003662:
	c.lw	s0,4(a5)
	c.addi	a5,FFFFFFFF
	c.sw	s0,4(a5)
	c.bnez	a5,00000000230036A8

l2300366A:
	lbu	a5,s0,+0000000A
	c.beqz	a5,0000000023003676

l23003670:
	c.lw	s0,0(a0)
	jal	ra,00000000230035D2

l23003676:
	lui	s2,00042019

l2300367A:
	c.lw	s0,28(a5)
	c.bnez	a5,0000000023003698

l2300367E:
	lbu	a4,s1,+00000347
	c.li	a5,00000001
	bne	a4,a5,00000000230036A8

l23003688:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023007364

l23003698:
	addi	a0,s2,-00000160
	jal	ra,000000002300E2FE
	c.addi	a0,0000000C
	jal	ra,0000000023002DCE
	c.j	000000002300367A

l230036A8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; mm_bcn_change: 230036B4
;;   Called from:
;;     2301B44C (in mm_bcn_change_req_handler)
mm_bcn_change proc
	lui	a5,00042019
	addi	a5,a5,-0000017C
	c.lw	a5,4(a4)
	c.sw	a5,0(a0)
	c.beqz	a4,00000000230036CA

l230036C2:
	c.li	a4,00000001
	sb	a4,a5,+0000000A
	c.jr	ra

l230036CA:
	jal	zero,00000000230035D2

;; mm_timer_hw_set: 230036CE
;;   Called from:
;;     2300379A (in mm_timer_set)
;;     23003800 (in mm_timer_clear)
;;     23003856 (in mm_timer_schedule)
;;     23003890 (in mm_timer_schedule)
mm_timer_hw_set proc
	csrrci	zero,mstatus,00000008
	c.beqz	a0,0000000023003702

l230036D4:
	c.lw	a0,12(a4)
	lui	a5,00044B00
	sw	a4,a5,+00000144
	lui	a4,00044B08
	lw	a5,a4,+0000008C
	andi	a3,a5,+00000080
	c.bnez	a3,00000000230036FC

l230036EC:
	addi	a3,zero,+00000080
	sw	a3,a4,+00000088
	ori	a5,a5,+00000080

l230036F8:
	sw	a5,a4,+0000008C

l230036FC:
	csrrsi	zero,mstatus,00000008
	c.jr	ra

l23003702:
	lui	a4,00044B08
	lw	a5,a4,+0000008C
	andi	a5,a5,-00000081
	c.j	00000000230036F8

;; cmp_abs_time: 23003710
cmp_abs_time proc
	c.lw	a0,12(a0)
	c.lw	a1,12(a5)
	c.sub	a0,a5
	c.srli	a0,0000001F
	c.jr	ra

;; mm_timer_init: 2300371A
;;   Called from:
;;     23001D48 (in mm_init)
mm_timer_init proc
	lui	a0,00042019
	addi	a0,a0,-00000158
	jal	zero,000000002300E278

;; mm_timer_set: 23003726
;;   Called from:
;;     23002C42 (in mm_check_beacon)
;;     23002D10 (in mm_sta_tbtt)
;;     23003902 (in ps_uapsd_timer_handle)
;;     23003C60 (in ps_enable_cfm)
;;     23004082 (in ps_uapsd_set)
;;     23005384 (in td_timer_end)
;;     2300547A (in td_start)
;;     230072A2 (in vif_mgmt_bcn_to_prog)
;;     2300744C (in vif_mgmt_switch_channel)
;;     2301167A (in keyMgmtSta_StartSession_internal)
;;     23019152 (in chan_conn_less_delay_prog)
;;     2301939C (in chan_upd_ctxt_status)
;;     23019636 (in chan_tbtt_schedule)
;;     23019682 (in chan_cde_evt)
;;     2301BD1A (in mm_hw_config_handler)
mm_timer_set proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	lui	s1,00044B00
	lw	a5,s1,+00000120
	c.mv	s2,a0
	c.mv	s0,a1
	sub	a5,a1,a5
	bge	a5,zero,000000002300375E

l23003746:
	lui	a0,00023074
	addi	a0,a0,+00000750
	jal	ra,00000000230520DC
	lw	s0,s1,+00000120
	c.lui	a5,00001000
	addi	a5,a5,-00000448
	c.add	s0,a5

l2300375E:
	lui	s1,00042019
	lw	a5,s1,-00000158
	bne	s2,a5,00000000230037C0

l2300376A:
	addi	a0,s1,-00000158
	jal	ra,000000002300E2FE
	c.li	s3,00000001

l23003774:
	lui	a2,00023003
	sw	s0,s2,+0000000C
	addi	a2,a2,+00000710
	c.mv	a1,s2
	addi	a0,s1,-00000158
	jal	ra,000000002300E36C
	bne	s3,zero,0000000023003796

l2300378E:
	lw	a5,s1,-00000158
	bne	s2,a5,000000002300379E

l23003796:
	lw	a0,s1,-00000158
	jal	ra,00000000230036CE

l2300379E:
	lui	a5,00044B00
	lw	a5,a5,+00000120
	c.sub	s0,a5
	bge	s0,zero,00000000230037CE

l230037AC:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,00008000
	c.addi16sp	00000020
	jal	zero,000000002300E49C

l230037C0:
	c.mv	a1,s2
	addi	a0,s1,-00000158
	jal	ra,000000002300E30A
	c.li	s3,00000000
	c.j	0000000023003774

l230037CE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; mm_timer_clear: 230037DC
;;   Called from:
;;     23003D46 (in ps_disable_cfm)
;;     230053D4 (in td_reset)
;;     23007050 (in vif_mgmt_unregister)
;;     2300705A (in vif_mgmt_unregister)
;;     230072CA (in vif_mgmt_bcn_recv)
;;     23007426 (in vif_mgmt_switch_channel)
;;     2300F37C (in supplicantDisable)
;;     23011486 (in ProcessRxEAPOL_PwkMsg3)
;;     23011544 (in ProcessRxEAPOL_GrpMsg1)
;;     2301928E (in chan_tbtt_insert)
;;     23019338 (in chan_upd_ctxt_status)
;;     23019814 (in chan_pre_switch_channel)
;;     23019F0A (in chan_roc_req)
;;     23019F28 (in chan_roc_req)
;;     2301BDB2 (in mm_hw_config_handler)
mm_timer_clear proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042019
	lw	a5,s0,-00000158
	c.swsp	ra,00000084
	bne	a0,a5,0000000023003804

l230037EE:
	addi	a0,s0,-00000158
	jal	ra,000000002300E2FE
	lw	a0,s0,-00000158
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230036CE

l23003804:
	c.mv	a1,a0
	addi	a0,s0,-00000158
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300E30A

;; mm_timer_schedule: 23003814
mm_timer_schedule proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042019
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s3,s1
	lui	s2,00044B00
	lui	s4,00023074
	lui	s5,00023074

l23003836:
	lui	a0,00008000
	jal	ra,000000002300E4B4
	lw	s0,s1,-00000158
	c.bnez	s0,000000002300385A

l23003844:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.li	a0,00000000
	c.addi16sp	00000020
	jal	zero,00000000230036CE

l2300385A:
	lw	a4,s2,+00000120
	c.lw	s0,12(a5)
	c.sub	a5,a4
	addi	a5,a5,-00000032
	bge	a5,zero,000000002300388E

l2300386A:
	addi	a0,s3,-00000158
	jal	ra,000000002300E2FE
	c.lw	s0,4(a5)
	c.bnez	a5,0000000023003886

l23003876:
	addi	a2,zero,+000000DE
	addi	a1,s4,+000002DC
	addi	a0,s5,+00000744
	jal	ra,000000002301327E

l23003886:
	c.lw	s0,4(a5)
	c.lw	s0,8(a0)
	c.jalr	a5
	c.j	0000000023003836

l2300388E:
	c.mv	a0,s0
	jal	ra,00000000230036CE
	lw	a4,s2,+00000120
	c.lw	s0,12(a5)
	c.sub	a5,a4
	blt	a5,zero,000000002300386A

l230038A0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; ps_uapsd_timer_handle: 230038B2
ps_uapsd_timer_handle proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004201B
	c.swsp	s0,0000000C
	lw	s0,a5,-00000038
	c.swsp	s1,00000088
	lui	s1,00042019
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.li	s2,00000000
	lui	s3,00044B00
	addi	s1,s1,-00000150

l230038D4:
	c.bnez	s0,0000000023003906

l230038D6:
	lui	a5,00042019
	addi	a5,a5,-00000150
	beq	s2,zero,0000000023003954

l230038E2:
	lui	a4,00044B00
	lw	a1,a4,+00000120
	c.lw	a5,32(a5)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,00042019
	c.add	a1,a5
	addi	a0,a0,-00000144
	c.addi16sp	00000020
	jal	zero,0000000023003726

l23003906:
	lbu	a5,s0,+00000056
	c.bnez	a5,0000000023003950

l2300390C:
	lbu	a5,s0,+00000058
	c.beqz	a5,0000000023003950

l23003912:
	lbu	a5,s0,+00000068
	c.beqz	a5,0000000023003950

l23003918:
	c.mv	a0,s0
	jal	ra,000000002301A352
	c.beqz	a0,0000000023003950

l23003920:
	c.lw	s1,32(a5)
	lw	a4,s3,+00000120
	c.mv	s2,a0
	c.srli	a5,00000001
	c.sub	a5,a4
	c.lw	s0,100(a4)
	c.add	a5,a4
	bge	a5,zero,0000000023003950

l23003934:
	c.lw	s0,4(a5)
	lbu	a0,s0,+00000060
	c.li	a3,00000000
	ori	a5,a5,+00000008
	c.sw	s0,4(a5)
	c.li	a2,00000000
	c.li	a1,00000007
	jal	ra,000000002300674E
	lw	a5,s3,+00000120
	c.sw	s0,100(a5)

l23003950:
	c.lw	s0,0(s0)
	c.j	00000000230038D4

l23003954:
	sb	zero,a5,+0000001C
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; blmac_pwr_mgt_setf: 23003966
;;   Called from:
;;     230039AE (in ps_dpsm_update)
;;     23003B74 (in ps_set_mode)
;;     23003BBC (in ps_set_mode)
blmac_pwr_mgt_setf proc
	lui	a4,00044B00
	c.lw	a4,76(a5)
	c.slli	a0,02
	c.andi	a5,FFFFFFFB
	c.or	a0,a5
	c.sw	a4,76(a0)
	c.jr	ra

;; ps_dpsm_update: 23003976
;;   Called from:
;;     230040E8 (in ps_traffic_status_update)
ps_dpsm_update proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042019
	addi	a5,s0,-00000150
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lbu	a4,a5,+00000024
	addi	s0,s0,-00000150
	c.lw	a5,4(a5)
	c.beqz	a0,00000000230039DA

l23003994:
	ori	a4,a4,+00000002
	ori	a5,a5,+00000008
	lui	s2,00023004
	sb	a4,s0,+00000024
	c.sw	s0,4(a5)
	addi	s2,s2,-000002FC

l230039AA:
	xori	a0,a0,+00000001
	jal	ra,0000000023003966
	lui	a5,0004201B
	lw	s1,a5,-00000038
	sb	zero,s0,+00000008

l230039BE:
	c.bnez	s1,00000000230039F0

l230039C0:
	lbu	a5,s0,+00000008
	c.bnez	a5,0000000023003A22

l230039C6:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.mv	t1,s2
	c.lwsp	zero,00000048
	lui	a1,00000800
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	t1

l230039DA:
	ori	a4,a4,+00000004
	c.andi	a5,FFFFFFF7
	lui	s2,00023004
	sb	a4,s0,+00000024
	c.sw	s0,4(a5)
	addi	s2,s2,-000003FE
	c.j	00000000230039AA

l230039F0:
	lbu	a5,s1,+00000056
	c.bnez	a5,0000000023003A1E

l230039F6:
	lbu	a5,s1,+00000058
	c.beqz	a5,0000000023003A1E

l230039FC:
	c.mv	a0,s1
	jal	ra,000000002301A352
	c.beqz	a0,0000000023003A1E

l23003A04:
	lbu	a5,s0,+00000008
	lbu	a0,s1,+00000060
	sb	zero,s1,+0000005F
	c.addi	a5,00000001
	c.mv	a2,s1
	c.mv	a1,s2
	sb	a5,s0,+00000008
	jal	ra,000000002300664A

l23003A1E:
	c.lw	s1,0(s1)
	c.j	00000000230039BE

l23003A22:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; ps_send_pspoll: 23003A2E
;;   Called from:
;;     23003DC6 (in ps_polling_frame)
;;     23003E88 (in ps_check_beacon)
;;     23003FA2 (in ps_check_frame)
ps_send_pspoll proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	lbu	s4,a0,+00000060
	c.li	a1,00000000
	c.mv	s3,a0
	c.addi4spn	a0,00000008
	jal	ra,000000002301412E
	lbu	a0,sp,+00000008
	c.li	a1,00000010
	sltu	a0,zero,a0
	jal	ra,0000000023006372
	c.beqz	a0,0000000023003AEE

l23003A5A:
	c.mv	s1,a0
	c.mv	a1,a0
	c.mv	a0,s3
	jal	ra,000000002300563C
	lw	s2,s1,+00000068
	addi	a5,zero,-0000005C
	lui	s0,00042019
	sb	a5,s2,+0000014C
	addi	a5,zero,+000001B0
	add	s4,s4,a5
	addi	s0,s0,-000000E0
	sb	zero,s2,+0000014D
	c.lui	a4,0000C000
	c.li	a2,00000006
	addi	a0,s2,+00000150
	c.add	s0,s4
	lhu	a5,s0,+00000018
	addi	a1,s0,+0000001E
	c.or	a5,a4
	sb	a5,s2,+0000014E
	c.srli	a5,00000008
	sb	a5,s2,+0000014F
	jal	ra,0000000023070C7C
	c.li	a2,00000006
	addi	a1,s3,+00000050
	addi	a0,s2,+00000156
	jal	ra,0000000023070C7C
	c.lw	s1,108(a3)
	lui	a4,00010000
	addi	a4,a4,+00000053
	c.lw	a3,60(a5)
	c.li	a1,00000003
	c.mv	a0,s1
	c.or	a5,a4
	c.sw	a3,60(a5)
	lbu	a5,s0,+0000001A
	sb	a5,s1,+0000002F
	lbu	a5,s0,+0000001B
	sb	a5,s1,+00000030
	jal	ra,000000002300649E
	c.li	a0,00000000

l23003ADE:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23003AEE:
	c.li	a0,00000001
	c.j	0000000023003ADE

;; ps_init: 23003AF2
;;   Called from:
;;     23001D3C (in mm_init)
ps_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042019
	addi	a0,s0,-00000150
	addi	a2,zero,+00000028
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023070EB8
	lui	a5,00023004
	addi	s0,s0,-00000150
	addi	a5,a5,-0000074E
	c.sw	s0,16(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ps_set_mode: 23003B20
;;   Called from:
;;     23003D00 (in ps_enable_cfm)
;;     23003DC2 (in ps_disable_cfm)
;;     2301B876 (in mm_set_ps_mode_req_handler)
ps_set_mode proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042019
	addi	a4,s0,-00000150
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lbu	a5,a4,+00000024
	sh	a1,a4,+00000002
	addi	s0,s0,-00000150
	andi	a3,a5,+00000001
	c.beqz	a3,0000000023003B66

l23003B46:
	andi	a3,a5,+00000006
	c.beqz	a3,0000000023003B66

l23003B4C:
	ori	a5,a5,+00000010
	sb	a0,a4,+00000025
	sb	a5,a4,+00000024

l23003B58:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23003B66:
	c.bnez	a0,0000000023003BA8

l23003B68:
	lui	s2,00023004
	sb	zero,s0,+00000024
	addi	s2,s2,-000002FC
	jal	ra,0000000023003966

l23003B78:
	lui	a5,0004201B
	lw	s1,a5,-00000038
	sb	zero,s0,+00000008
	sb	zero,s0,+0000001D
	c.li	s3,00000001

l23003B8A:
	c.bnez	s1,0000000023003BC6

l23003B8C:
	lbu	a5,s0,+00000008
	c.bnez	a5,0000000023003B58

l23003B92:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.mv	t1,s2
	c.lwsp	a6,00000048
	lui	a1,00000800
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	t1

l23003BA8:
	c.li	a4,00000002
	bne	a0,a4,0000000023003BB6

l23003BAE:
	ori	a5,a5,+00000001
	sb	a5,s0,+00000024

l23003BB6:
	c.li	a0,00000001
	lui	s2,00023004
	jal	ra,0000000023003966
	addi	s2,s2,-000003FE
	c.j	0000000023003B78

l23003BC6:
	lbu	a5,s1,+00000056
	c.bnez	a5,0000000023003BFE

l23003BCC:
	lbu	a5,s1,+00000058
	c.beqz	a5,0000000023003BFE

l23003BD2:
	c.mv	a0,s1
	jal	ra,000000002301A352
	c.beqz	a0,0000000023003BFE

l23003BDA:
	lbu	a5,s0,+00000008
	sb	zero,s1,+0000005F
	c.addi	a5,00000001
	sb	a5,s0,+00000008
	lbu	a5,s1,+00000068
	c.beqz	a5,0000000023003BF2

l23003BEE:
	sb	s3,s0,+0000001D

l23003BF2:
	lbu	a0,s1,+00000060
	c.mv	a2,s1
	c.mv	a1,s2
	jal	ra,000000002300664A

l23003BFE:
	c.lw	s1,0(s1)
	c.j	0000000023003B8A

;; ps_enable_cfm: 23003C02
ps_enable_cfm proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	slli	a5,a1,00000008
	blt	a5,zero,0000000023003C2C

l23003C12:
	lbu	a5,a0,+0000005F
	c.li	a4,00000003
	c.mv	a2,a0
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,a0,+0000005F
	bne	a5,a4,0000000023003C90

l23003C28:
	jal	ra,0000000023002902

l23003C2C:
	lui	s0,00042019
	addi	a5,s0,-00000150
	lbu	a5,a5,+00000008
	addi	s0,s0,-00000150
	c.bnez	a5,0000000023003CA8

l23003C3E:
	lbu	a5,s0,+0000001D
	c.beqz	a5,0000000023003C6C

l23003C44:
	lui	a5,0004201B
	lw	s1,a5,-00000038
	lui	a5,00044B00
	lw	a1,a5,+00000120
	c.lw	s0,32(a5)
	lui	a0,00042019
	addi	a0,a0,-00000144
	c.add	a1,a5
	jal	ra,0000000023003726
	c.li	a5,00000001
	sb	a5,s0,+0000001C

l23003C6A:
	c.bnez	s1,0000000023003CBE

l23003C6C:
	lbu	a5,s0,+00000024
	c.li	a4,00000005
	andi	a3,a5,+00000005
	beq	a3,a4,0000000023003CDA

l23003C7A:
	lhu	a1,s0,+00000002
	c.li	a5,00000001
	c.li	a2,00000000
	addi	a0,zero,+00000032
	sb	a5,s0,+00000000
	jal	ra,000000002300E83E
	c.j	0000000023003CE0

l23003C90:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lbu	a0,a0,+00000060
	lui	a1,00023004
	addi	a1,a1,-000003FE
	c.addi	sp,00000010
	jal	zero,000000002300664A

l23003CA8:
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s0,+00000008
	c.beqz	a5,0000000023003C3E

l23003CB4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23003CBE:
	lbu	a5,s1,+00000056
	c.bnez	a5,0000000023003CD6

l23003CC4:
	lbu	a5,s1,+00000058
	c.beqz	a5,0000000023003CD6

l23003CCA:
	lbu	a5,s1,+00000068
	c.beqz	a5,0000000023003CD6

l23003CD0:
	c.lw	s1,4(a5)
	c.andi	a5,FFFFFFF7
	c.sw	s1,4(a5)

l23003CD6:
	c.lw	s1,0(s1)
	c.j	0000000023003C6A

l23003CDA:
	c.andi	a5,FFFFFFF3
	sb	a5,s0,+00000024

l23003CE0:
	lbu	a5,s0,+00000024
	andi	a4,a5,+00000010
	c.beqz	a4,0000000023003CB4

l23003CEA:
	c.andi	a5,FFFFFFEF
	sb	a5,s0,+00000024
	lhu	a1,s0,+00000002
	lbu	a0,s0,+00000025
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023003B20

;; ps_disable_cfm: 23003D04
ps_disable_cfm proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	slli	a5,a1,00000008
	blt	a5,zero,0000000023003D2C

l23003D12:
	lbu	a5,a0,+0000005F
	c.li	a4,00000003
	c.mv	a2,a0
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,a0,+0000005F
	bne	a5,a4,0000000023003D70

l23003D28:
	jal	ra,0000000023002902

l23003D2C:
	lui	s0,00042019
	addi	a5,s0,-00000150
	lbu	a5,a5,+00000008
	addi	s0,s0,-00000150
	c.bnez	a5,0000000023003D86

l23003D3E:
	lui	a0,00042019
	addi	a0,a0,-00000144
	jal	ra,00000000230037DC
	lbu	a5,s0,+00000024
	sb	zero,s0,+0000001C
	c.li	a4,00000003
	andi	a3,a5,+00000003
	beq	a3,a4,0000000023003D9A

l23003D5C:
	lhu	a1,s0,+00000002
	c.li	a2,00000000
	addi	a0,zero,+00000032
	sb	zero,s0,+00000000
	jal	ra,000000002300E83E
	c.j	0000000023003DA4

l23003D70:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lbu	a0,a0,+00000060
	lui	a1,00023004
	addi	a1,a1,-000002FC
	c.addi	sp,00000010
	jal	zero,000000002300664A

l23003D86:
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s0,+00000008
	c.beqz	a5,0000000023003D3E

l23003D92:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23003D9A:
	c.andi	a5,FFFFFFFD
	ori	a5,a5,+00000008
	sb	a5,s0,+00000024

l23003DA4:
	lbu	a5,s0,+00000024
	andi	a4,a5,+00000010
	c.beqz	a4,0000000023003D92

l23003DAE:
	c.andi	a5,FFFFFFEF
	sb	a5,s0,+00000024
	lhu	a1,s0,+00000002
	lbu	a0,s0,+00000025
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023003B20

;; ps_polling_frame: 23003DC6
;;   Called from:
;;     2301B86C (in mm_set_ps_mode_req_handler)
ps_polling_frame proc
	jal	zero,0000000023003A2E

;; ps_check_beacon: 23003DCA
;;   Called from:
;;     23004594 (in rxl_cntrl_evt)
ps_check_beacon proc
	lbu	a7,a2,+00000060
	addi	a4,zero,+000001B0
	lui	a5,00042019
	add	a4,a7,a4
	addi	a5,a5,-000000E0
	lui	a1,00042019
	addi	a1,a1,-00000150
	lbu	a6,a1,+00000000
	c.add	a5,a4
	lhu	a4,a5,+00000018
	c.lw	a2,4(a5)
	andi	a3,a5,-00000002
	c.sw	a2,4(a3)
	beq	a6,zero,0000000023003EA8

l23003DFC:
	lbu	a1,a1,+00000024
	c.andi	a1,00000008
	c.bnez	a1,0000000023003EA8

l23003E04:
	c.beqz	a0,0000000023003EA8

l23003E06:
	lbu	a1,a2,+0000005E
	c.bnez	a1,0000000023003E1A

l23003E0C:
	lbu	a1,a0,+00000004
	c.andi	a1,00000001
	c.beqz	a1,0000000023003E80

l23003E14:
	ori	a3,a3,+00000002
	c.sw	a2,4(a3)

l23003E1A:
	lbu	a3,a0,+00000004
	lbu	a6,a2,+00000068
	srli	a5,a4,00000003
	andi	a3,a3,+000000FE
	andi	a6,a6,+0000000F
	bltu	a5,a3,0000000023003E96

l23003E32:
	lbu	a1,a0,+00000001
	c.addi	a1,FFFFFFFC
	c.add	a1,a3
	bltu	a1,a5,0000000023003E96

l23003E3E:
	c.add	a5,a0
	c.sub	a5,a3
	lbu	a5,a5,+00000005
	andi	a3,a4,+00000007
	c.li	a4,00000001
	sll	a4,a4,a3
	c.and	a5,a4
	c.beqz	a5,0000000023003E96

l23003E54:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,0000000F
	c.mv	s0,a2
	bne	a6,a5,0000000023003E86

l23003E62:
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000007
	c.mv	a0,a7
	jal	ra,000000002300674E
	c.bnez	a0,0000000023003E78

l23003E70:
	c.lw	s0,4(a5)
	ori	a5,a5,+00000008

l23003E76:
	c.sw	s0,4(a5)

l23003E78:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23003E80:
	c.andi	a5,FFFFFFFC
	c.sw	a2,4(a5)
	c.j	0000000023003E1A

l23003E86:
	c.mv	a0,a2
	jal	ra,0000000023003A2E
	c.bnez	a0,0000000023003E78

l23003E8E:
	c.lw	s0,4(a5)
	ori	a5,a5,+00000004
	c.j	0000000023003E76

l23003E96:
	c.li	a4,0000000F
	c.lw	a2,4(a5)
	bne	a6,a4,0000000023003EA4

l23003E9E:
	c.andi	a5,FFFFFFF7

l23003EA0:
	c.sw	a2,4(a5)
	c.jr	ra

l23003EA4:
	c.andi	a5,FFFFFFFB
	c.j	0000000023003EA0

l23003EA8:
	c.jr	ra

;; ps_check_frame: 23003EAA
;;   Called from:
;;     2300474A (in rxl_cntrl_evt)
ps_check_frame proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,00042019
	lbu	a5,s2,-00000150
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.beqz	a5,0000000023003EE8

l23003EC0:
	lbu	s1,a0,+00000001
	lbu	a5,a0,+00000000
	c.slli	s1,08
	c.or	s1,a5
	lbu	a5,a0,+00000004
	c.andi	a5,00000001
	c.beqz	a5,0000000023003EF6

l23003ED4:
	slli	a5,s1,00000012
	bge	a5,zero,0000000023003EE2

l23003EDC:
	lbu	a5,a2,+0000005E
	c.beqz	a5,0000000023003EE8

l23003EE2:
	c.lw	a2,4(a5)
	c.andi	a5,FFFFFFFD

l23003EE6:
	c.sw	a2,4(a5)

l23003EE8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23003EF6:
	andi	a1,a1,+00000200
	c.bnez	a1,0000000023003EE8

l23003EFC:
	addi	s2,s2,-00000150
	lbu	s3,s2,+0000001D
	beq	s3,zero,0000000023003F80

l23003F08:
	andi	a5,s1,+00000088
	addi	a4,zero,+00000088
	bne	a5,a4,0000000023003F68

l23003F14:
	andi	a5,s1,+00000300
	addi	a4,zero,+00000300
	bne	a5,a4,0000000023003F5E

l23003F20:
	lbu	a4,a0,+0000001E
	lbu	a5,a0,+0000001F

l23003F28:
	c.slli	a5,08
	c.or	a5,a4
	lui	a1,00023076
	andi	a3,a5,+00000007
	addi	a1,a1,-000002C0
	c.add	a3,a1
	lbu	a4,a2,+00000068
	lbu	a3,a3,+00000000
	srl	a4,a4,a3
	c.andi	a4,00000001
	c.beqz	a4,0000000023003FB0

l23003F4A:
	lui	a4,00044B00
	lw	a4,a4,+00000120
	c.andi	a5,00000010
	c.sw	a2,100(a4)
	c.beqz	a5,0000000023003EE8

l23003F58:
	c.lw	a2,4(a5)
	c.andi	a5,FFFFFFF7
	c.j	0000000023003EE6

l23003F5E:
	lbu	a4,a0,+00000018
	lbu	a5,a0,+00000019
	c.j	0000000023003F28

l23003F68:
	andi	a5,s1,+0000000C
	c.bnez	a5,0000000023003FB0

l23003F6E:
	lbu	a5,a2,+00000068
	c.andi	a5,00000008
	c.beqz	a5,0000000023003FB0

l23003F76:
	lui	a5,00044B00
	lw	a5,a5,+00000120
	c.sw	a2,100(a5)

l23003F80:
	lbu	a0,a2,+00000057
	c.li	a1,00000001
	c.mv	s0,a2
	jal	ra,00000000230054AC
	bne	s3,zero,0000000023003EE8

l23003F90:
	slli	a5,s1,00000012
	bge	a5,zero,0000000023003FA8

l23003F98:
	lbu	a5,s2,+00000024
	c.andi	a5,00000008
	c.bnez	a5,0000000023003EE8

l23003FA0:
	c.mv	a0,s0
	jal	ra,0000000023003A2E
	c.beqz	a0,0000000023003EE8

l23003FA8:
	c.lw	s0,4(a5)
	c.andi	a5,FFFFFFFB
	c.sw	s0,4(a5)
	c.j	0000000023003EE8

l23003FB0:
	c.li	s3,00000000
	c.j	0000000023003F80

;; ps_check_tx_frame: 23003FB4
;;   Called from:
;;     23005E88 (in txl_cntrl_push)
ps_check_tx_frame proc
	lui	a5,00042019
	lbu	a5,a5,-00000150
	c.beqz	a5,0000000023004036

l23003FBE:
	addi	a5,zero,+000000FF
	beq	a0,a5,0000000023004036

l23003FC6:
	beq	a1,a5,0000000023004036

l23003FCA:
	addi	a4,zero,+000001B0
	add	a0,a0,a4
	lui	a5,00042019
	addi	a5,a5,-000000E0
	addi	a3,zero,+000005D8
	c.add	a5,a0
	lbu	a4,a5,+0000001A
	lui	a5,0004201A
	addi	a5,a5,+00000410
	add	a4,a4,a3
	c.add	a5,a4
	lbu	a4,a5,+00000056
	c.bnez	a4,0000000023004036

l23003FF8:
	lbu	a4,a5,+00000058
	c.beqz	a4,0000000023004036

l23003FFE:
	lui	a3,00023076
	addi	a3,a3,-000002C0
	c.add	a3,a1
	lbu	a4,a5,+00000068
	lbu	a3,a3,+00000000
	srl	a4,a4,a3
	c.andi	a4,00000001
	c.beqz	a4,000000002300402C

l23004018:
	c.lw	a5,4(a4)
	ori	a4,a4,+00000008
	c.sw	a5,4(a4)
	lui	a4,00044B00
	lw	a4,a4,+00000120
	c.sw	a5,100(a4)
	c.jr	ra

l2300402C:
	lbu	a0,a5,+00000057
	c.li	a1,00000000
	jal	zero,00000000230054AC

l23004036:
	c.jr	ra

;; ps_uapsd_set: 23004038
;;   Called from:
;;     2301BC6A (in mm_hw_config_handler)
ps_uapsd_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.li	s1,00000001
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	sll	a1,s1,a1
	lbu	a5,a0,+00000068
	andi	a1,a1,+000000FF
	c.beqz	a2,0000000023004094

l23004050:
	lui	s0,00042019
	c.or	a5,a1
	addi	s0,s0,-00000150
	sb	a5,a0,+00000068
	lbu	a5,s0,+00000000
	c.beqz	a5,000000002300408A

l23004064:
	lbu	a5,s0,+0000001C
	c.bnez	a5,000000002300408A

l2300406A:
	sb	s1,s0,+0000001D
	lui	a5,00044B00
	lw	a1,a5,+00000120
	c.lw	s0,32(a5)
	lui	a0,00042019
	addi	a0,a0,-00000144
	c.add	a1,a5
	jal	ra,0000000023003726
	sb	s1,s0,+0000001C

l2300408A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23004094:
	xori	a1,a1,-00000001
	c.and	a5,a1
	sb	a5,a0,+00000068
	c.j	000000002300408A

;; ps_traffic_status_update: 230040A0
;;   Called from:
;;     2300532C (in td_timer_end)
ps_traffic_status_update proc
	lui	a5,00042019
	addi	a5,a5,-00000150
	lbu	a4,a5,+00000000
	c.beqz	a4,00000000230040C6

l230040AE:
	lbu	a5,a5,+00000024
	andi	a4,a5,+00000001
	c.beqz	a4,00000000230040C6

l230040B8:
	andi	a4,a5,+00000006
	c.bnez	a4,00000000230040C6

l230040BE:
	c.beqz	a1,00000000230040C8

l230040C0:
	c.andi	a5,00000008

l230040C2:
	c.li	a0,00000001
	c.beqz	a5,00000000230040E8

l230040C6:
	c.jr	ra

l230040C8:
	lui	a4,0004201B
	lw	a4,a4,-00000038
	lui	a1,0004201A
	addi	a1,a1,+00000360
	addi	a6,zero,+00000024

l230040DC:
	c.bnez	a4,00000000230040EC

l230040DE:
	c.li	a2,00000000

l230040E0:
	c.andi	a5,00000008
	c.bnez	a2,00000000230040C2

l230040E4:
	c.beqz	a5,00000000230040C6

l230040E6:
	c.li	a0,00000000

l230040E8:
	jal	zero,0000000023003976

l230040EC:
	lbu	a3,a4,+00000057
	beq	a3,a0,0000000023004110

l230040F4:
	lbu	a2,a4,+00000058
	c.beqz	a2,0000000023004110

l230040FA:
	lbu	a7,a4,+00000056
	bne	a7,zero,0000000023004110

l23004102:
	add	a3,a3,a6
	c.add	a3,a1
	lbu	a3,a3,+00000021
	c.andi	a3,0000000C
	c.bnez	a3,00000000230040E0

l23004110:
	c.lw	a4,0(a4)
	c.j	00000000230040DC

;; mm_ps_change_ind: 23004114
;;   Called from:
;;     230044FC (in rxl_cntrl_evt)
;;     23004522 (in rxl_cntrl_evt)
;;     23004712 (in rxl_cntrl_evt)
;;     23004726 (in rxl_cntrl_evt)
mm_ps_change_ind proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a1
	c.mv	s1,a0
	c.li	a3,00000002
	c.li	a2,00000000
	c.li	a1,0000000D
	addi	a0,zero,+00000049
	c.swsp	ra,00000084
	jal	ra,000000002300E768
	addi	a4,zero,+000001B0
	add	a4,s1,a4
	lui	a5,00042019
	addi	a5,a5,-000000E0
	c.add	a5,a4
	sb	s0,a5,+0000001C
	sb	s1,a0,+00000000
	sb	s0,a0,+00000001
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002300E7D4

;; rxl_mpdu_transfer: 23004158
;;   Called from:
;;     23009902 (in rxu_mpdu_upload_and_indicate.constprop.11)
;;     2300A612 (in rxu_cntrl_frame_handle)
rxl_mpdu_transfer proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lw	s2,a0,+00000004
	c.mv	s0,a0
	c.li	a1,00000000
	addi	a0,s2,+00000044
	lw	s1,s2,+00000008
	jal	ra,000000002301412E
	lui	a5,0004201C
	lw	a5,a5,-000005C0
	c.li	a4,00000000
	sw	a5,s2,+00000054
	sb	zero,s0,+0000001D

l23004188:
	lhu	a5,s1,+00000010
	c.andi	a5,00000001
	c.bnez	a5,00000000230041C6

l23004190:
	lbu	a5,s0,+0000001D
	c.lw	s1,4(a3)
	c.mv	a4,s1
	c.addi	a5,00000001
	sb	a5,s0,+0000001D
	c.bnez	a3,00000000230041C2

l230041A0:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	lui	a1,00023074
	lui	a0,00023074
	addi	a2,zero,+000000B4
	addi	a1,a1,+000002DC
	addi	a0,a0,+000007E0
	c.addi	sp,00000010
	jal	zero,000000002301323E

l230041C2:
	c.mv	s1,a3
	c.j	0000000023004188

l230041C6:
	c.sw	s0,16(s1)
	c.sw	s0,12(a4)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; rxl_init: 230041D6
;;   Called from:
;;     23001D44 (in mm_init)
rxl_init proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000001
	c.swsp	ra,00000084
	c.jal	00000000230048AC
	jal	ra,000000002301BFF6
	lui	a0,00042019
	addi	a0,a0,-00000128
	jal	ra,000000002300E278
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023009DA6

;; rxl_cntrl_dump: 230041F6
;;   Called from:
;;     2300E50C (in bl_fw_statistic_dump)
rxl_cntrl_dump proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042019
	addi	a0,s0,-00000128
	c.swsp	ra,00000084
	jal	ra,000000002300E35E
	c.beqz	a0,0000000023004210

l2300420A:
	lw	a5,s0,-00000128

l2300420E:
	c.bnez	a5,0000000023004218

l23004210:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23004218:
	c.lw	a5,0(a5)
	c.j	000000002300420E

;; rxl_timer_int_handler: 2300421C
;;   Called from:
;;     2301A120 (in chan_ctxt_update)
rxl_timer_int_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	lui	a5,00044B08
	lui	a4,000000A0
	lui	s1,00042019
	c.sw	a5,124(a4)
	addi	s0,s1,-00000128
	lui	s2,00023074
	lui	s3,00023074
	lui	s4,00023074

l23004248:
	c.lw	s0,8(a5)
	c.beqz	a5,00000000230042A4

l2300424C:
	c.lw	a5,64(a4)
	slli	a3,a4,00000011
	bge	a3,zero,00000000230042A4

l23004256:
	c.lw	a5,4(a4)
	c.lw	a5,12(a1)
	c.sw	s0,8(a4)
	c.lw	a5,8(a5)
	c.lw	a1,4(a0)
	c.sw	a1,8(a5)
	lhu	a4,a0,+0000001C
	c.lw	a0,8(a5)
	c.beqz	a4,0000000023004286

l2300426A:
	c.beqz	a5,0000000023004274

l2300426C:
	c.mv	a0,s0
	jal	ra,000000002300E282
	c.j	0000000023004248

l23004274:
	addi	a2,zero,+000000D8
	addi	a1,s2,+000002DC
	addi	a0,s4,+000007E0

l23004280:
	jal	ra,000000002301323E
	c.j	0000000023004248

l23004286:
	c.beqz	a5,0000000023004296

l23004288:
	addi	a2,zero,+000000FA
	addi	a1,s2,+000002DC
	addi	a0,s3,+000007EC
	c.j	0000000023004280

l23004296:
	sw	zero,a1,+00000010
	sw	zero,a1,+0000000C
	jal	ra,0000000023004A5E
	c.j	0000000023004248

l230042A4:
	lw	a5,s1,-00000128
	c.beqz	a5,00000000230042C0

l230042AA:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	lui	a0,00000040
	c.addi16sp	00000020
	jal	zero,000000002300E49C

l230042C0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; rxl_timeout_int_handler: 230042D0
;;   Called from:
;;     2301AF32 (in hal_machw_gen_handler)
rxl_timeout_int_handler proc
	lui	a4,00044B08
	lw	a5,a4,+0000008C
	andi	a5,a5,-00000041
	sw	a5,a4,+0000008C
	c.jr	ra

;; rxl_dma_int_handler: 230042E2
rxl_dma_int_handler proc
	c.j	00000000230042E2

;; rxl_dma_evt: 230042E4
rxl_dma_evt proc
	c.addi	sp,FFFFFFF0
	lui	a0,00000100
	c.swsp	ra,00000084
	jal	ra,000000002300E4B4
	lui	a5,00044A00
	addi	a4,zero,+00000020
	c.sw	a5,32(a4)
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; rxl_frame_release: 23004300
;;   Called from:
;;     23004376 (in rxl_mpdu_free)
rxl_frame_release proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,4(a5)
	c.mv	s0,a0
	c.lw	a0,16(a2)
	c.lw	a0,12(a1)
	c.lw	a5,8(a0)
	jal	ra,0000000023004ACE
	c.lw	s0,4(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023004A5E

;; rxl_mpdu_free: 23004320
;;   Called from:
;;     23004440 (in rxl_cntrl_evt)
;;     23004778 (in bl60x_firmwre_mpdu_free)
;;     2300A782 (in rxu_swdesc_upload_evt)
rxl_mpdu_free proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a0,4(a5)
	c.swsp	a0,00000084
	c.lw	a5,8(s0)
	jal	ra,000000002303100A
	c.lwsp	a2,00000044
	c.li	a4,00000000
	c.lw	a0,4(a5)
	sb	zero,a0,+0000001E
	sw	zero,a5,+00000060

l2300433E:
	lhu	a5,s0,+00000010
	sw	zero,s0,+00000014
	c.andi	a5,00000001
	c.bnez	a5,0000000023004372

l2300434A:
	c.lw	s0,4(a5)
	c.mv	a4,s0
	c.bnez	a5,000000002300436E

l23004350:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	lui	a1,00023074
	lui	a0,00023074
	addi	a2,zero,+00000397
	addi	a1,a1,+000002DC
	addi	a0,a0,+000007E0
	c.addi16sp	00000020
	jal	zero,000000002301323E

l2300436E:
	c.mv	s0,a5
	c.j	000000002300433E

l23004372:
	c.sw	a0,16(s0)
	c.sw	a0,12(a4)
	jal	ra,0000000023004300
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,000000002303101E

;; rxl_cntrl_evt: 23004384
;;   Called from:
;;     2301A126 (in chan_ctxt_update)
rxl_cntrl_evt proc
	c.addi16sp	FFFFFF90
	c.li	a5,00000005
	c.swsp	a5,00000084
	lui	a5,00023076
	addi	a5,a5,-000002C0
	c.swsp	a5,00000008
	lui	a5,0002308E
	c.swsp	s6,00000028
	c.swsp	s7,000000A4
	lui	s6,00042019
	lui	s7,0004201A
	addi	a5,a5,-00000278
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s1,000000B0
	c.swsp	s2,00000030
	c.swsp	s3,000000AC
	c.swsp	s4,0000002C
	c.swsp	s5,000000A8
	c.swsp	s8,00000024
	c.swsp	s9,000000A0
	c.swsp	s10,00000020
	c.swsp	s11,0000009C
	addi	s6,s6,-000000E0
	addi	s7,s7,+00000410
	c.swsp	a5,00000088

l230043C8:
	lui	s0,00042019
	lw	s9,s0,-00000128
	lui	a0,00000040
	jal	ra,000000002300E4B4
	beq	s9,zero,00000000230043EC

l230043DC:
	c.lwsp	a2,000000E4
	c.addi	a5,FFFFFFFF
	c.swsp	a5,00000084
	c.bnez	a5,000000002300440A

l230043E4:
	lui	a0,00000040
	jal	ra,000000002300E49C

l230043EC:
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

l2300440A:
	csrrci	zero,mstatus,00000008
	addi	a0,s0,-00000128
	jal	ra,000000002300E2FE
	csrrsi	zero,mstatus,00000008
	lw	s8,s9,+00000004
	lw	s2,s8,+00000008
	bne	s2,zero,0000000023004446

l23004426:
	lui	a1,00023074
	lui	a0,00023074
	addi	a2,zero,+00000205
	addi	a1,a1,+000002DC
	addi	a0,a0,+000007A0

l2300443A:
	jal	ra,000000002301323E

l2300443E:
	c.mv	a0,s9
	jal	ra,0000000023004320
	c.j	00000000230043C8

l23004446:
	lw	s11,s8,+00000040
	lui	a5,00002002
	and	a4,s11,a5
	bne	a4,a5,00000000230044A2

l23004456:
	srli	a5,s11,0000000F
	c.slli	a5,10
	c.srli	a5,00000010
	andi	s0,a5,+000003FF
	andi	a5,a5,+000003F8
	c.bnez	a5,000000002300447E

l23004468:
	lui	a1,00023074
	lui	a0,00023074
	addi	a2,zero,+00000215
	addi	a1,a1,+000002DC
	addi	a0,a0,+000007B8
	c.j	000000002300443A

l2300447E:
	c.addi	s0,FFFFFFF8
	andi	s0,s0,+000000FF
	addi	s4,zero,+000001B0
	add	s4,s0,s4
	c.add	s4,s6
	lbu	a5,s4,+0000001D
	c.bnez	a5,00000000230044AC

l23004494:
	lui	a5,000FE000
	c.addi	a5,FFFFFFFF
	and	s11,s11,a5
	sw	s11,s8,+00000040

l230044A2:
	c.mv	a0,s9
	jal	ra,0000000023009DEA
	c.bnez	a0,00000000230043C8

l230044AA:
	c.j	000000002300443E

l230044AC:
	lbu	s1,s4,+0000001A
	addi	s3,zero,+000005D8
	jal	ra,00000000230302E8
	add	a5,s1,s3
	sw	a0,s4,+000001A8
	lw	s10,s2,+00000008
	lhu	s5,s10,+00000000
	c.add	a5,s7
	lbu	s2,a5,+00000057
	c.li	a5,00000002
	add	s3,s2,s3
	c.add	s3,s7
	lbu	a4,s3,+00000056
	bne	a4,a5,000000002300452E

l230044DE:
	lbu	a4,s4,+0000001C
	c.li	a5,00000001
	bne	a4,a5,0000000023004700

l230044E8:
	c.lui	a5,00001000
	addi	a5,a5,+0000040C
	and	a5,s5,a5
	c.li	a4,00000008
	bne	a5,a4,00000000230045B0

l230044F8:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023004114
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,000000002300D69E
	lbu	a5,s3,+0000034A
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s3,+0000034A
	c.bnez	a5,000000002300452E

l23004518:
	c.addi	s2,0000000A
	andi	s2,s2,+000000FF
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,0000000023004114
	c.mv	a1,s2
	c.mv	a0,s3
	jal	ra,000000002300D69E

l2300452E:
	addi	a5,zero,+000005D8
	add	a5,s1,a5
	c.add	a5,s7
	lbu	a4,a5,+00000058
	c.beqz	a4,00000000230044A2

l2300453E:
	andi	s2,s5,+00000004
	bne	s2,zero,0000000023004552

l23004546:
	lbu	a0,a5,+00000057
	c.li	a2,00000001
	c.mv	a1,s0
	jal	ra,0000000023005488

l23004552:
	addi	a5,zero,+000005D8
	add	s1,s1,a5
	c.add	s1,s7
	lbu	a5,s1,+00000056
	c.bnez	a5,00000000230044A2

l23004562:
	andi	s5,s5,+000000FC
	addi	a5,zero,+00000080
	bne	s5,a5,0000000023004740

l2300456E:
	c.mv	a1,s8
	c.li	a0,00000000
	c.swsp	zero,00000094
	jal	ra,0000000023014674
	c.li	a0,00000000
	jal	ra,0000000023014776
	c.addi4spn	a3,0000002C
	c.mv	a2,s4
	c.mv	a1,s1
	c.mv	a0,s8
	jal	ra,0000000023002A6C
	lhu	a1,s8,+0000001C
	c.mv	s0,a0
	c.lwsp	a2,00000154
	c.mv	a2,s1
	jal	ra,0000000023003DCA
	c.mv	a0,s1
	jal	ra,00000000230072A6
	c.lw	s1,64(a5)
	c.beqz	a5,00000000230045AA

l230045A2:
	c.lw	s1,36(a1)
	c.mv	a0,s1
	jal	ra,000000002301A162

l230045AA:
	beq	s0,zero,000000002300443E

l230045AE:
	c.j	00000000230044A2

l230045B0:
	andi	a5,s5,+000000FC
	addi	a4,zero,+000000A4
	bne	a5,a4,00000000230045EE

l230045BC:
	addi	s2,zero,+000001B0
	add	s2,s0,s2
	c.add	s2,s6
	lbu	a5,s2,+00000032
	c.andi	a5,00000002
	c.beqz	a5,0000000023004690

l230045CE:
	lw	a5,s2,+00000034
	c.li	a2,00000001
	c.mv	a1,s4
	ori	a5,a5,+00000001
	sw	a5,s2,+00000034
	c.mv	a0,s3
	jal	ra,0000000023005246
	lw	a5,s2,+00000034
	c.andi	a5,FFFFFFFE
	sw	a5,s2,+00000034

l230045EE:
	andi	a5,s5,+0000008C
	addi	a4,zero,+00000088
	bne	a5,a4,000000002300452E

l230045FA:
	andi	a5,s5,+00000300
	addi	a4,zero,+00000300
	bne	a5,a4,00000000230046B2

l23004606:
	lbu	a5,s10,+0000001E

l2300460A:
	addi	s2,zero,+000001B0
	add	s2,s0,s2
	c.lwsp	a6,000000C4
	c.andi	a5,00000007
	c.lwsp	s4,000000A4
	c.add	a4,a5
	lbu	a4,a4,+00000000
	c.add	a4,a3
	lbu	a4,a4,+00000000
	c.add	s2,s6
	lbu	a3,s2,+000000F2
	c.and	a4,a3
	beq	a4,zero,000000002300452E

l23004630:
	lbu	a3,s2,+00000032
	lw	a4,s2,+00000034
	andi	a2,a3,+0000000C
	c.andi	a4,00000006
	c.beqz	a2,00000000230046F4

l23004640:
	bne	a4,zero,000000002300452E

l23004644:
	c.andi	a3,00000008
	lbu	a6,s2,+000000F3
	c.beqz	a3,00000000230046B8

l2300464C:
	c.li	a4,00000002
	c.mv	a2,a6
	sw	a4,s2,+00000034
	c.mv	a1,s4
	c.mv	a0,s3
	c.swsp	a5,0000008C
	c.swsp	a6,0000000C
	jal	ra,0000000023005246
	c.lwsp	s8,00000008
	c.lwsp	t3,000000E4
	beq	a6,zero,00000000230046B8

l23004668:
	sub	a6,a6,a0
	blt	zero,a6,00000000230046B8

l23004670:
	addi	s2,zero,+000001B0
	add	s2,s0,s2
	c.add	s2,s6

l2300467A:
	lbu	a0,s2,+0000001B
	c.li	a3,00000000
	c.li	a2,00000000
	ori	a1,a5,+00000010
	jal	ra,000000002300674E
	sw	zero,s2,+00000034
	c.j	000000002300452E

l23004690:
	c.li	a3,00000003
	c.li	a2,00000000
	c.li	a1,0000000D
	addi	a0,zero,+0000004A
	jal	ra,000000002300E768
	c.li	a4,00000001
	sb	s0,a0,+00000000
	sb	a4,a0,+00000001
	sb	zero,a0,+00000002
	jal	ra,000000002300E7D4
	c.j	00000000230045EE

l230046B2:
	lbu	a5,s10,+00000018
	c.j	000000002300460A

l230046B8:
	addi	a4,zero,+000001B0
	add	a4,s0,a4
	c.add	a4,s6
	lbu	a3,a4,+00000032
	c.andi	a3,00000004
	c.beqz	a3,0000000023004670

l230046CA:
	c.li	a5,00000004
	c.sw	a4,52(a5)
	c.li	a3,00000003
	c.li	a2,00000000
	c.li	a1,0000000D
	addi	a0,zero,+0000004A
	c.swsp	a6,0000000C
	jal	ra,000000002300E768
	c.lwsp	s8,00000008
	c.li	a4,00000001
	sb	s0,a0,+00000000
	sb	a6,a0,+00000001
	sb	a4,a0,+00000002
	jal	ra,000000002300E7D4
	c.j	000000002300452E

l230046F4:
	bne	a4,zero,000000002300452E

l230046F8:
	c.li	a4,00000002
	sw	a4,s2,+00000034
	c.j	000000002300467A

l23004700:
	c.lui	a4,00001000
	addi	a5,a4,+00000400
	and	a5,s5,a5
	bne	a5,a4,000000002300452E

l2300470E:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023004114
	lbu	a5,s3,+0000034A
	c.bnez	a5,000000002300472A

l2300471C:
	addi	a0,s2,+0000000A
	c.li	a1,00000001
	andi	a0,a0,+000000FF
	jal	ra,0000000023004114

l2300472A:
	addi	a5,zero,+000005D8
	add	s2,s2,a5
	c.add	s2,s7
	lbu	a5,s2,+0000034A
	c.addi	a5,00000001
	sb	a5,s2,+0000034A
	c.j	000000002300452E

l23004740:
	bne	s2,zero,00000000230044A2

l23004744:
	c.mv	a2,s1
	c.mv	a1,s11
	c.mv	a0,s10
	jal	ra,0000000023003EAA
	c.j	00000000230044A2

;; bl60x_firmwre_mpdu_free: 23004750
;;   Called from:
;;     2302469E (in my_pbuf_free_custom)
bl60x_firmwre_mpdu_free proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,000000002303100A
	c.lwsp	a2,00000044
	lui	a5,00042019
	addi	a5,a5,-00000128
	lbu	a3,a0,+0000001D
	c.lw	a5,20(a4)
	c.sub	a4,a3
	c.sw	a5,20(a4)
	jal	ra,000000002303101E
	c.lwsp	a2,00000044
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,0000000023004320

;; rxl_reset: 2300477C
;;   Called from:
;;     2300252A (in mm_force_idle_req)
;;     2301BF30 (in bl_reset_evt)
rxl_reset proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	c.jal	00000000230048AC
	lui	a0,00042019
	addi	a0,a0,-00000128
	jal	ra,000000002300E278
	c.lwsp	a2,00000020
	lui	a0,0004201C
	addi	a0,a0,-000005F8
	c.addi	sp,00000010
	jal	zero,000000002300E278

;; rxl_hwdesc_dump: 230047A0
;;   Called from:
;;     2300E508 (in bl_fw_statistic_dump)
rxl_hwdesc_dump proc
	lui	a0,00023075
	c.addi16sp	FFFFFFD0
	addi	a0,a0,-000007E0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	jal	ra,00000000230520DC
	lui	a0,00023075
	c.li	a1,0000000D
	addi	a0,a0,-000007B8
	lui	s0,00042043
	jal	ra,0000000023052118
	addi	s0,s0,+00000000
	c.li	s1,00000000
	lui	s5,00023075
	lui	s4,00023075
	lui	s3,00023075
	c.li	s2,0000000D

l230047E2:
	lw	a6,s0,+0000000C
	c.lw	s0,8(a5)
	c.lw	s0,4(a4)
	c.lw	s0,0(a3)
	c.mv	a2,s0
	c.mv	a1,s1
	addi	a0,s5,-000007A0
	jal	ra,0000000023052118
	lhu	a5,s0,+0000001E
	lhu	a4,s0,+0000001C
	c.lw	s0,24(a3)
	c.lw	s0,20(a2)
	c.lw	s0,16(a1)
	addi	a0,s4,-00000754
	c.addi	s1,00000001
	jal	ra,0000000023052118
	c.lw	s0,64(a5)
	addi	a0,s3,-000006F4
	addi	s0,s0,+00000064
	c.swsp	a5,00000000
	lw	a7,s0,-00000028
	lw	a6,s0,-0000002C
	lw	a5,s0,-00000030
	lw	a4,s0,-00000034
	lw	a3,s0,-00000038
	lw	a2,s0,-00000040
	lw	a1,s0,-00000044
	jal	ra,0000000023052118
	bne	s1,s2,00000000230047E2

l23004840:
	lui	a0,00023075
	c.li	a1,0000000D
	addi	a0,a0,-0000067C
	lui	s0,00042046
	jal	ra,0000000023052118
	addi	s0,s0,+00000120
	c.li	s1,00000000
	lui	s3,00023075
	c.li	s2,0000000D

l2300485E:
	lw	a7,s0,+0000000C
	lw	a6,s0,+00000008
	c.li	a3,00000000
	beq	a7,zero,0000000023004874

l2300486C:
	addi	a3,a7,+00000001
	sub	a3,a3,a6

l23004874:
	lhu	a5,s0,+00000012
	c.mv	a2,s0
	c.mv	a1,s1
	c.swsp	a5,00000080
	lhu	a5,s0,+00000010
	addi	a0,s3,-00000664
	c.addi	s1,00000001
	c.swsp	a5,00000000
	c.lw	s0,4(a5)
	c.lw	s0,0(a4)
	addi	s0,s0,+00000034
	jal	ra,0000000023052118
	bne	s1,s2,000000002300485E

l2300489A:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

;; rxl_hwdesc_init: 230048AC
;;   Called from:
;;     230041DC (in rxl_init)
;;     23004782 (in rxl_reset)
rxl_hwdesc_init proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s5,00000088
	c.mv	s3,a0
	jal	ra,000000002303100A
	lui	a5,00042043
	lui	a3,000BAADF
	lui	a2,0004201D
	addi	a5,a5,+00000000
	c.li	s2,00000000
	c.li	s4,00000000
	c.li	s0,00000000
	c.li	a1,00000000
	c.li	a4,00000000
	c.addi	a3,0000000D
	addi	a2,a2,+00000280
	c.li	a7,00000001
	c.li	t1,0000000D

l230048E6:
	addi	a6,a5,+00000064
	bne	s3,zero,00000000230049F8

l230048EE:
	c.lw	a5,96(a0)
	bne	a0,a7,00000000230049F8

l230048F4:
	c.beqz	s0,00000000230048FA

l230048F6:
	sw	zero,s0,+00000004

l230048FA:
	c.addi	a4,00000001
	c.mv	a5,a6
	bne	a4,t1,00000000230048E6

l23004902:
	c.li	a5,00000003
	blt	a5,a1,0000000023004916

l23004908:
	lui	a0,00023075
	c.li	a2,0000000D
	addi	a0,a0,-000005E8
	jal	ra,0000000023052118

l23004916:
	c.beqz	s0,000000002300491C

l23004918:
	sw	zero,s0,+00000004

l2300491C:
	lui	a5,00044B08
	sw	s4,a5,+000001B8
	lui	a4,00004000
	sw	a4,a5,+00000180
	lui	a4,00042046
	addi	a4,a4,+00000120
	lui	a3,00042043
	lui	a2,000C0DEE
	addi	a3,a3,+00000600
	addi	a7,a4,+000002A4
	c.li	s5,00000000
	c.li	a5,00000000
	c.li	s1,00000000
	c.li	a1,00000000
	addi	a2,a2,-00000453
	c.li	a6,00000001

l23004952:
	addi	a0,a4,+00000034
	bne	s3,zero,0000000023004A34

l2300495A:
	lw	t1,a4,+00000014
	bne	t1,a6,0000000023004A34

l23004962:
	c.beqz	s1,0000000023004968

l23004964:
	sw	zero,s1,+00000004

l23004968:
	c.mv	a4,a0
	addi	a3,a3,+00000350
	bne	a7,a0,0000000023004952

l23004972:
	c.li	a4,00000003
	blt	a4,a1,000000002300498A

l23004978:
	lui	a0,00023075
	c.li	a2,0000000D
	addi	a0,a0,-000005D0
	c.swsp	a5,00000084
	jal	ra,0000000023052118
	c.lwsp	a2,000000E4

l2300498A:
	sw	zero,s1,+00000004
	lui	a4,00044B08
	sw	a5,a4,+000001BC
	lui	a3,00008000
	sw	a3,a4,+00000180
	beq	s2,zero,00000000230049AE

l230049A2:
	beq	s4,zero,00000000230049AE

l230049A6:
	c.beqz	s0,00000000230049AE

l230049A8:
	beq	s5,zero,00000000230049AE

l230049AC:
	c.bnez	a5,00000000230049C4

l230049AE:
	lui	a0,00023075
	c.mv	a6,s1
	c.mv	a4,s5
	c.mv	a3,s0
	c.mv	a2,s4
	c.mv	a1,s2
	addi	a0,a0,-000005B0
	jal	ra,0000000023052118

l230049C4:
	lui	a5,00042019
	addi	a5,a5,-00000128
	sw	s2,a5,+00000010
	sw	s4,a5,+00000008
	c.sw	a5,12(s0)
	lui	a5,00042019
	addi	a5,a5,-00000110
	sw	s5,a5,+00000004
	c.sw	a5,0(s1)
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	jal	zero,000000002303101E

l230049F8:
	c.beqz	s0,00000000230049FC

l230049FA:
	c.sw	s0,4(a5)

l230049FC:
	slli	a0,a4,00000005
	c.add	a0,a2
	sw	zero,a5,+00000010
	sw	zero,a5,+00000014
	c.sw	a5,0(a3)
	sw	zero,a5,+00000040
	sw	zero,a5,+00000018
	sw	a6,a5,+00000004
	sw	zero,a5,+00000008
	c.sw	a5,12(a0)
	sh	zero,a5,+0000001C
	c.beqz	a1,0000000023004A30

l23004A24:
	bne	a1,a7,0000000023004A2A

l23004A28:
	c.mv	s4,a5

l23004A2A:
	c.addi	a1,00000001
	c.mv	s0,a5
	c.j	00000000230048FA

l23004A30:
	c.mv	s2,a5
	c.j	0000000023004A2A

l23004A34:
	c.beqz	s1,0000000023004A38

l23004A36:
	c.sw	s1,4(a4)

l23004A38:
	addi	t1,a3,+0000034F
	c.sw	a4,4(a0)
	c.sw	a4,0(a2)
	sh	zero,a4,+00000010
	c.sw	a4,8(a3)
	sw	t1,a4,+0000000C
	c.sw	a4,24(a3)
	c.beqz	a1,0000000023004A5A

l23004A4E:
	bne	a1,a6,0000000023004A54

l23004A52:
	c.mv	a5,a4

l23004A54:
	c.addi	a1,00000001
	c.mv	s1,a4
	c.j	0000000023004968

l23004A5A:
	c.mv	s5,a4
	c.j	0000000023004A54

;; rxl_hd_append: 23004A5E
;;   Called from:
;;     2300429E (in rxl_timer_int_handler)
;;     2300431C (in rxl_frame_release)
rxl_hd_append proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.bnez	a0,0000000023004A80

l23004A68:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+000000F9
	addi	a1,a1,+000002DC
	addi	a0,a0,-000007F0
	jal	ra,000000002301327E

l23004A80:
	lui	a5,00044B08
	lw	a3,a5,+00000548
	lui	a5,00042019
	addi	a4,a5,-00000128
	c.lw	a4,16(a4)
	addi	a5,a5,-00000128
	beq	a4,a3,0000000023004A9E

l23004A9A:
	c.sw	a5,16(s0)
	c.mv	s0,a4

l23004A9E:
	sw	zero,s0,+00000004
	sw	zero,s0,+00000008
	c.lw	a5,12(a4)
	sw	zero,s0,+00000040
	sh	zero,s0,+0000001C
	c.sw	a4,4(s0)
	lui	a3,00001000
	lui	a4,00044B08
	sw	a3,a4,+00000180
	c.lw	a5,8(a4)
	c.sw	a5,12(s0)
	c.bnez	a4,0000000023004AC6

l23004AC4:
	c.sw	a5,8(s0)

l23004AC6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; rxl_pd_append: 23004ACE
;;   Called from:
;;     23004310 (in rxl_frame_release)
rxl_pd_append proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a0
	c.mv	s1,a1
	c.mv	s0,a2
	c.bnez	a2,0000000023004AF8

l23004AE0:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+00000128
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000598
	jal	ra,000000002301327E

l23004AF8:
	lui	a5,00044B08
	lw	a3,a5,+0000054C
	lui	a5,00042019
	addi	a4,a5,-00000110
	c.lw	a4,4(a4)
	addi	a5,a5,-00000110
	bne	a4,a3,0000000023004B3E

l23004B12:
	c.bnez	s1,0000000023004B16

l23004B14:
	c.mv	s2,s0

l23004B16:
	sh	zero,s0,+00000010
	c.mv	a4,s2

l23004B1C:
	c.lw	a5,0(a3)
	sw	zero,s0,+00000004
	c.sw	a3,4(a4)
	lui	a4,00044B08
	lui	a3,00002000
	sw	a3,a4,+00000180
	c.sw	a5,0(s0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23004B3E:
	c.sw	a5,4(s0)
	c.beqz	s1,0000000023004B4E

l23004B42:
	sw	s2,a4,+00000004

l23004B46:
	sh	zero,a4,+00000010
	c.mv	s0,s1
	c.j	0000000023004B1C

l23004B4E:
	c.mv	s1,a4
	c.j	0000000023004B46

;; scan_search_ds: 23004B52
;;   Called from:
;;     23004C8C (in dma_cb)
;;     23004C9E (in scan_ie_download)
scan_search_ds proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042019
	addi	s0,s0,-00000108
	c.lw	s0,16(a5)
	c.swsp	ra,00000084
	lui	a0,00042048
	lhu	a1,a5,+0000014C
	c.li	a2,00000003
	addi	a0,a0,-000002FC
	jal	ra,000000002300EEE8
	c.sw	s0,20(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; scan_init: 23004B7E
;;   Called from:
;;     23001D4C (in mm_init)
scan_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042019
	c.li	a2,0000001C
	c.li	a1,00000000
	addi	a0,s0,-00000108
	c.swsp	ra,00000084
	jal	ra,0000000023070EB8
	c.li	a1,00000000
	c.li	a0,00000002
	jal	ra,000000002300E902
	lui	a5,00023005
	addi	a4,s0,-00000108
	addi	a5,a5,-00000378
	c.sw	a4,8(a5)
	lui	a5,00042048
	addi	a5,a5,-00000320
	sw	zero,a4,+0000000C
	c.sw	a4,4(a5)
	lui	a4,00042048
	addi	a4,a4,-000002FC
	c.sw	a5,4(a4)
	c.sw	a5,24(a4)
	lui	a4,000CAFF0
	addi	a4,a4,-00000522
	sw	zero,a5,+00000020
	c.sw	a5,16(a4)
	sw	zero,a5,+00000014
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; scan_set_channel_request: 23004BDE
;;   Called from:
;;     23004C94 (in dma_cb)
;;     23004CA2 (in scan_ie_download)
;;     2301C1B2 (in mm_scan_channel_end_ind_handler)
scan_set_channel_request proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,00042019
	addi	s1,s1,-00000108
	c.swsp	s0,00000004
	lbu	s0,s1,+0000001A
	c.li	a4,00000006
	c.lw	s1,16(a5)
	add	s0,s0,a4
	c.swsp	ra,00000084
	lbu	a4,a5,+0000014E
	c.lui	a3,0001B000
	addi	a3,a3,-00000250
	c.add	s0,a5
	lhu	a1,s0,+00000000
	lb	a2,s0,+00000004
	lbu	a0,s0,+00000002
	jal	ra,0000000023019D36
	c.lw	s1,20(a1)
	c.beqz	a1,0000000023004C56

l23004C1A:
	lbu	a3,s0,+00000002
	lhu	a4,s0,+00000000
	c.bnez	a3,0000000023004C66

l23004C24:
	c.lui	a2,FFFFF000
	addi	a3,a2,+00000694
	c.add	a3,a4
	c.slli	a3,10
	c.srli	a3,00000010
	addi	a0,zero,+00000048
	c.li	a5,00000000
	bltu	a0,a3,0000000023004C52

l23004C3A:
	c.lui	a3,00001000
	addi	a3,a3,-0000064C
	c.li	a5,0000000E
	beq	a4,a3,0000000023004C52

l23004C46:
	addi	a5,a2,+00000699

l23004C4A:
	c.add	a4,a5
	c.li	a5,00000005
	xor	a5,a4,a5

l23004C52:
	sb	a5,a1,+00000002

l23004C56:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a1,00000002
	c.li	a0,00000002
	c.addi	sp,00000010
	jal	zero,000000002300E902

l23004C66:
	c.li	a2,00000001
	c.li	a5,00000000
	bne	a3,a2,0000000023004C52

l23004C6E:
	c.lui	a2,FFFFF000
	addi	a3,a2,-0000038D
	c.add	a3,a4
	c.slli	a3,10
	c.srli	a3,00000010
	addi	a0,zero,+00000334
	bltu	a0,a3,0000000023004C52

l23004C82:
	addi	a5,a2,-00000388
	c.j	0000000023004C4A

;; dma_cb: 23004C88
dma_cb proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023004B52
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023004BDE

;; scan_ie_download: 23004C98
;;   Called from:
;;     2301C11E (in scan_start_req_handler)
scan_ie_download proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,0000000023004B52
	jal	ra,0000000023004BDE
	c.lwsp	a2,00000044
	lui	a5,00042048
	addi	a5,a5,-00000320
	c.lw	a5,24(a4)
	lhu	a3,a0,+0000014C
	sw	zero,a5,+00000020
	c.addi	a4,FFFFFFFF
	c.add	a4,a3
	c.sw	a5,28(a4)
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; scan_probe_req_tx: 23004CC6
;;   Called from:
;;     2301C25A (in mm_scan_channel_start_ind_handler)
scan_probe_req_tx proc
	c.addi16sp	FFFFFFD0
	lui	a5,00042019
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s8,00000004
	addi	a5,a5,-00000108
	c.lw	a5,16(s1)
	lbu	s5,a5,+0000001A
	addi	a4,zero,+000005D8
	lbu	a5,s1,+0000014E
	lui	s2,0004201A
	addi	s2,s2,+00000410
	add	a5,a5,a4
	lui	s3,0004201A
	addi	s7,s1,+000000FD
	c.li	s4,00000000
	addi	s3,s3,+000003A8
	c.add	s2,a5
	addi	s2,s2,+00000050

l23004D12:
	lbu	a5,s1,+00000150
	blt	s4,a5,0000000023004D32

l23004D1A:
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

l23004D32:
	c.li	a5,00000006
	add	a5,s5,a5
	c.li	a0,00000001
	c.add	a5,s1
	lbu	a5,a5,+00000002
	c.bnez	a5,0000000023004D46

l23004D42:
	lbu	a0,s1,+00000151

l23004D46:
	lbu	a5,s7,-00000001
	lhu	a1,s1,+0000014C
	c.addi	a5,0000001A
	c.add	a1,a5
	jal	ra,0000000023006372
	c.mv	s6,a0
	c.beqz	a0,0000000023004D1A

l23004D5A:
	c.lw	a0,104(s0)
	addi	a5,zero,+00000040
	lui	a1,0002308E
	lw	s8,a0,+0000006C
	c.li	a2,00000006
	sb	a5,s0,+0000014C
	addi	a1,a1,-00000274
	sb	zero,s0,+0000014D
	sb	zero,s0,+0000014E
	sb	zero,s0,+0000014F
	addi	a0,s0,+00000150
	jal	ra,0000000023070C7C
	c.li	a2,00000006
	c.mv	a1,s2
	addi	a0,s0,+00000156
	jal	ra,0000000023070C7C
	c.li	a2,00000006
	addi	a1,s1,+00000140
	addi	a0,s0,+0000015C
	jal	ra,0000000023070C7C
	lhu	a5,s3,+00000054
	sb	zero,s0,+00000164
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s3,+00000054
	c.slli	a5,04
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,s0,+00000162
	c.srli	a5,00000008
	sb	a5,s0,+00000163
	lbu	a4,s7,-00000001
	c.li	a5,00000000
	sb	a4,s0,+00000165

l23004DCC:
	bne	a4,a5,0000000023004E10

l23004DD0:
	lui	a5,00042048
	addi	a5,a5,-00000310
	sw	a5,s8,+00000010
	lhu	a4,s1,+0000014C
	lw	a5,s8,+00000018
	c.li	a1,00000003
	c.mv	a0,s6
	c.sub	a5,a4
	sw	a5,s8,+00000018
	sw	zero,s6,+000002CC
	sw	zero,s6,+000002D0
	lbu	a5,s1,+0000014E
	c.addi	s4,00000001
	addi	s7,s7,+00000022
	sb	a5,s6,+0000002F
	c.li	a5,FFFFFFFF
	sb	a5,s6,+00000030
	jal	ra,000000002300649E
	c.j	0000000023004D12

l23004E10:
	add	a3,s7,a5
	lbu	a2,a3,+00000000
	add	a3,s0,a5
	c.addi	a5,00000001
	sb	a2,a3,+00000166
	c.j	0000000023004DCC

;; scan_send_cancel_cfm: 23004E24
;;   Called from:
;;     2301C0BA (in scan_cancel_req_handler)
;;     2301C1D2 (in mm_scan_channel_end_ind_handler)
scan_send_cancel_cfm proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.lui	a0,00001000
	c.li	a3,00000001
	c.li	a2,00000002
	addi	a0,a0,-000007FC
	c.swsp	ra,00000084
	jal	ra,000000002300E768
	sb	s0,a0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300E7D4

;; sta_mgmt_entry_init: 23004E48
;;   Called from:
;;     23004ECC (in sta_mgmt_init)
;;     23004EEA (in sta_mgmt_init)
;;     23004F36 (in sta_mgmt_init)
;;     23005128 (in sta_mgmt_unregister)
sta_mgmt_entry_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	addi	s1,a0,+0000019C

l23004E56:
	lw	a5,s0,+0000019C
	c.bnez	a5,0000000023004E90

l23004E5C:
	addi	a2,zero,+000001B0
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070EB8
	addi	a5,s0,+00000124
	addi	a3,s0,+00000190
	c.li	a4,00000002

l23004E72:
	sb	a4,a5,+00000000
	sb	a4,a5,+00000001
	c.addi	a5,0000000C
	bne	a5,a3,0000000023004E72

l23004E80:
	c.li	a5,FFFFFFFF
	sb	a5,s0,+0000001A
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23004E90:
	c.mv	a0,s1
	jal	ra,000000002300E2FE
	c.li	a1,00000001
	jal	ra,000000002300658C
	c.j	0000000023004E56

;; sta_mgmt_init: 23004E9E
;;   Called from:
;;     23001D34 (in mm_init)
sta_mgmt_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	s0,00042019
	lui	s3,00042019
	c.lui	s2,00001000
	c.swsp	s1,00000088
	addi	a0,s3,-000000E8
	addi	s1,s0,-000000E0
	addi	s2,s2,+000000E0
	c.swsp	ra,0000008C
	c.add	s2,s1
	jal	ra,000000002300E278
	addi	s0,s0,-000000E0

l23004ECA:
	c.mv	a0,s1
	jal	ra,0000000023004E48
	c.mv	a1,s1
	addi	a0,s3,-000000E8
	addi	s1,s1,+000001B0
	jal	ra,000000002300E282
	bne	s1,s2,0000000023004ECA

l23004EE2:
	lui	a0,0004201A
	addi	a0,a0,+00000000
	jal	ra,0000000023004E48
	lui	s1,0004201A
	c.lui	s3,00001000
	addi	s1,s1,+00000410
	lui	a5,00042046
	c.add	s0,s3
	lw	a2,s1,+000005C0
	addi	a5,a5,+000003C4
	lui	a1,0004201B
	sw	a5,s0,+000001EC
	lui	s2,00023075
	addi	a5,a1,-00000630
	sw	a5,s0,+0000018C
	addi	a1,a1,-00000630
	sb	zero,s0,+000000FA
	sb	zero,s0,+00000111
	addi	a0,s2,-00000588
	jal	ra,0000000023052118
	lui	a0,0004201A
	addi	a0,a0,+000001B0
	jal	ra,0000000023004E48
	c.li	a5,00000001
	sb	a5,s0,+000002AA
	lui	a5,00042046
	addi	a5,a5,+00000400
	lui	a1,0004201B
	sw	a5,s0,+0000039C
	addi	a5,a1,-00000058
	sb	zero,s0,+000002C1
	sw	a5,s0,+0000033C
	c.add	s1,s3
	c.lwsp	s8,00000004
	lw	a2,s1,-00000468
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	addi	a0,s2,-00000588
	c.lwsp	a6,00000048
	addi	a1,a1,-00000058
	c.addi16sp	00000020
	jal	zero,0000000023052118

;; sta_mgmt_register: 23004F7A
;;   Called from:
;;     23002568 (in mm_sta_add)
sta_mgmt_register proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s1,a0
	lbu	s2,a0,+00000011
	lui	a0,00042019
	addi	a0,a0,-000000E8
	c.mv	s3,a1
	jal	ra,000000002300E2FE
	beq	a0,zero,00000000230050EA

l23004F9E:
	c.mv	s0,a0
	c.li	a2,00000006
	addi	a1,s1,+0000000A
	c.addi	a0,0000001E
	jal	ra,0000000023070C7C
	lbu	a5,s1,+00000010
	c.li	a4,00000010
	bgeu	a5,a4,0000000023004FB8

l23004FB6:
	c.li	a5,00000010

l23004FB8:
	sb	a5,s0,+00000014
	lhu	a5,s1,+00000008
	lui	a4,000684BE
	addi	a4,a4,-000005ED
	sh	a5,s0,+0000000C
	c.lw	s1,0(a5)
	c.li	a3,FFFFFFFF
	c.sw	s0,8(a5)
	c.lw	s1,4(a5)
	c.sw	s0,16(a5)
	lbu	a5,s1,+00000011
	sb	a5,s0,+0000001A
	lb	a5,s1,+00000013
	sb	a5,s0,+00000024
	c.lw	s1,20(a5)
	c.sw	s0,40(a5)
	c.lw	s1,24(a5)
	c.sw	s0,44(a5)
	lbu	a5,s1,+0000001C
	sb	a5,s0,+00000030
	lui	a5,00042019
	addi	a5,a5,-000000E0
	sub	a5,s0,a5
	c.srai	a5,00000004
	add	a5,a5,a4
	addi	a4,s0,+0000019C
	andi	a5,a5,+000000FF
	sb	a5,s3,+00000000
	sb	a5,s0,+0000001B
	c.lui	a5,00019000
	c.sw	s0,4(a5)
	c.li	a5,FFFFFFFF
	sh	a5,s0,+00000188
	addi	a5,s0,+0000018A

l23005026:
	sh	a3,a5,+00000000
	c.addi	a5,00000002
	bne	a5,a4,0000000023005026

l23005030:
	lbu	a5,s3,+00000000
	addi	a4,zero,+0000003C
	addi	s1,zero,+000005D8
	add	a5,a5,a4
	lui	a4,00042046
	addi	a4,a4,+0000043C
	sb	zero,s0,+00000031
	add	s1,s2,s1
	c.add	a5,a4
	lui	s2,0004201A
	sw	a5,s0,+0000010C
	addi	a5,s2,+00000410
	addi	s2,s2,+00000410
	c.add	a5,s1
	lw	a4,a5,+000005C4
	c.andi	a4,00000008
	c.beqz	a4,00000000230050CE

l2300506C:
	lw	a3,s0,+000000A8
	addi	a2,s0,+000000A8
	lui	a0,00023075
	sw	a2,s0,+000000AC
	addi	a1,zero,+00000102
	addi	a0,a0,-00000560

l23005084:
	jal	ra,0000000023052118
	lui	a5,00044B00
	lw	a3,a5,+00000120
	lui	a4,000FFF0C
	addi	a4,a4,-00000240
	addi	a5,s0,+0000011C
	addi	a2,s0,+00000188
	c.add	a4,a3

l230050A2:
	c.sw	a5,0(a3)
	c.sw	a5,4(a4)
	c.addi	a5,0000000C
	bne	a5,a2,00000000230050A2

l230050AC:
	addi	a0,s1,+00000350
	c.add	a0,s2
	c.mv	a1,s0
	jal	ra,000000002300E282
	c.li	a5,00000001
	sb	a5,s0,+0000001D
	c.li	a0,00000000

l230050C0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230050CE:
	addi	a2,s1,+000005C0
	c.add	a2,s2
	sw	a2,s0,+000000AC
	lui	a0,00023075
	lw	a3,a5,+000005C0
	addi	a1,zero,+0000010D
	addi	a0,a0,-00000534
	c.j	0000000023005084

l230050EA:
	c.li	a0,00000001
	c.j	00000000230050C0

;; sta_mgmt_unregister: 230050EE
;;   Called from:
;;     23002776 (in mm_sta_add)
;;     23002868 (in mm_sta_del)
sta_mgmt_unregister proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	s0,zero,+000001B0
	add	s0,a0,s0
	lui	a0,00042019
	addi	a0,a0,-000000E0
	c.swsp	ra,00000084
	c.add	s0,a0
	lbu	a5,s0,+0000001A
	addi	a0,zero,+000005D8
	c.mv	a1,s0
	add	a5,a5,a0
	lui	a0,0004201A
	addi	a0,a0,+00000410
	addi	a5,a5,+00000350
	c.add	a0,a5
	jal	ra,000000002300E30A
	c.mv	a0,s0
	jal	ra,0000000023004E48
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,00042019
	addi	a0,a0,-000000E8
	c.addi	sp,00000010
	jal	zero,000000002300E282

;; sta_mgmt_add_key: 23005140
;;   Called from:
;;     2300227A (in mm_sec_machwkey_wr)
sta_mgmt_add_key proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	lbu	s3,a0,+00000001
	addi	s0,zero,+000001B0
	lui	s1,00042019
	add	a5,s3,s0
	addi	s0,s1,-000000E0
	c.mv	s2,a0
	addi	a2,zero,+00000048
	addi	s1,s1,-000000E0
	addi	s4,a5,+00000040
	c.add	s4,s0
	c.add	s0,a5
	sb	a1,s0,+000000A2
	lbu	a5,a0,+00000028
	c.li	a1,00000000
	sb	a5,s0,+000000A0
	lbu	a5,a0,+00000000
	c.mv	a0,s4
	sb	a5,s0,+000000A1
	jal	ra,0000000023070EB8
	lbu	a5,s0,+000000A0
	c.li	a4,00000001
	beq	a5,a4,00000000230051FA

l2300519A:
	c.beqz	a5,00000000230051A2

l2300519C:
	c.li	a4,00000003
	bne	a5,a4,0000000023005228

l230051A2:
	lui	a4,0004200E
	addi	a4,a4,-00000708
	c.lw	a4,0(a5)
	lui	a3,00041C65
	addi	a3,a3,-00000193
	add	a5,a5,a3
	c.lui	a3,00003000
	addi	a3,a3,+00000039
	c.add	a5,a3
	c.sw	a4,0(a5)
	addi	a4,zero,+000001B0
	add	a4,s3,a4
	c.srli	a5,00000010
	c.add	a4,s1
	sw	a5,a4,+00000088
	sw	zero,a4,+0000008C

l230051D6:
	addi	a5,zero,+000001B0
	add	s3,s3,a5
	c.li	a5,00000001
	c.add	s1,s3
	sb	a5,s1,+000000A3
	sw	s4,s1,+000000A8
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l230051FA:
	c.li	a5,00000000
	c.li	a6,00000000
	sw	a5,s0,+00000088
	sw	a6,s0,+0000008C
	lw	a5,s2,+00000018
	sw	a5,s0,+00000090
	lw	a5,s2,+0000001C
	sw	a5,s0,+00000094
	lw	a5,s2,+00000020
	sw	a5,s0,+00000098
	lw	a5,s2,+00000024
	sw	a5,s0,+0000009C
	c.j	00000000230051D6

l23005228:
	c.li	a5,00000000
	c.li	a6,00000000
	sw	a5,s0,+00000088
	sw	a6,s0,+0000008C
	c.j	00000000230051D6

;; sta_mgmt_del_key: 23005236
;;   Called from:
;;     23002310 (in mm_sec_machwkey_del)
sta_mgmt_del_key proc
	c.li	a5,00000001
	sb	zero,a0,+000000A3
	sw	zero,a0,+000000A8
	sb	a5,a0,+00000031
	c.jr	ra

;; sta_mgmt_send_postponed_frame: 23005246
;;   Called from:
;;     23003422 (in mm_bcn_transmit)
;;     230045E0 (in rxl_cntrl_evt)
;;     2300465C (in rxl_cntrl_evt)
;;     23007264 (in vif_mgmt_send_postponed_frame)
;;     2300D6C4 (in apm_tx_int_ps_clear)
sta_mgmt_send_postponed_frame proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.mv	s3,a0
	c.mv	s1,a1
	c.mv	s4,a2
	c.li	s0,00000000
	addi	s5,a1,+0000019C

l23005262:
	lw	s2,s1,+0000019C
	beq	s2,zero,00000000230052A6

l2300526A:
	c.mv	a0,s3
	c.swsp	zero,00000084
	c.jal	0000000023005782
	c.beqz	a0,00000000230052A6

l23005272:
	c.mv	a0,s2
	jal	ra,000000002300D44E
	c.beqz	a0,00000000230052A6

l2300527A:
	c.addi4spn	a2,0000000C
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,000000002300D542
	c.lwsp	a2,000000E4
	c.bnez	a5,00000000230052A6

l23005288:
	c.bnez	a0,0000000023005290

l2300528A:
	c.mv	a0,s5
	jal	ra,000000002300E2FE

l23005290:
	lbu	a1,a0,+0000002E
	sb	zero,a0,+000002D5
	c.addi	s0,00000001
	jal	ra,0000000023005CD2
	beq	s4,zero,0000000023005262

l230052A2:
	bne	s0,s4,0000000023005262

l230052A6:
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

;; td_timer_end: 230052BA
td_timer_end proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lui	a5,00044B00
	lw	s2,a5,+00000120
	lbu	a5,a0,+00000023
	c.mv	s0,a0
	c.beqz	a5,0000000023005334

l230052D4:
	c.lw	a0,16(s1)
	c.lw	a0,20(a5)
	sltu	s1,zero,s1
	c.beqz	a5,00000000230052E2

l230052DE:
	ori	s1,s1,+00000002

l230052E2:
	c.lw	s0,24(a5)
	c.beqz	a5,00000000230052EA

l230052E6:
	ori	s1,s1,+00000004

l230052EA:
	c.lw	s0,28(a5)
	c.beqz	a5,00000000230052F2

l230052EE:
	ori	s1,s1,+00000008

l230052F2:
	lbu	a5,s0,+00000021
	c.xor	a5,s1
	c.andi	a5,0000000C
	c.beqz	a5,0000000023005330

l230052FC:
	andi	a5,s1,+00000004
	c.bnez	a5,0000000023005388

l23005302:
	lui	a1,00023075
	addi	a1,a1,-000004D4

l2300530A:
	andi	a5,s1,+00000008
	c.bnez	a5,0000000023005392

l23005310:
	lui	a2,00023075
	addi	a2,a2,-000004D4

l23005318:
	lui	a0,00023075
	addi	a0,a0,-000004CC
	jal	ra,0000000023052118
	lbu	a0,s0,+00000020
	andi	a1,s1,+0000000C
	jal	ra,00000000230040A0

l23005330:
	sb	s1,s0,+00000021

l23005334:
	lbu	a4,s0,+00000020
	addi	a3,zero,+000005D8
	lui	a5,0004201A
	add	a4,a4,a3
	addi	a5,a5,+00000410
	sw	zero,s0,+00000010
	sw	zero,s0,+00000014
	sw	zero,s0,+00000018
	sw	zero,s0,+0000001C
	lui	a1,000000F4
	addi	a1,a1,+00000240
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.add	a5,a4
	lui	a4,0004201D
	c.lw	a5,64(a5)
	lw	a4,a4,+000001F8
	c.lwsp	tp,00000024
	c.add	a1,s2
	c.sub	a5,a4
	sltiu	a5,a5,+00000001
	sb	a5,s0,+00000023
	c.lwsp	s0,00000004
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023003726

l23005388:
	lui	a1,00023075
	addi	a1,a1,-000004D8
	c.j	000000002300530A

l23005392:
	lui	a2,00023075
	addi	a2,a2,-000004D0
	c.j	0000000023005318

;; td_reset: 2300539C
;;   Called from:
;;     2300541C (in td_init)
;;     23005426 (in td_init)
;;     2300706C (in vif_mgmt_unregister)
td_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	addi	s1,zero,+00000024
	add	s1,a0,s1
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	lui	s0,0004201A
	c.mv	a1,a0
	c.mv	s2,a0
	lui	a0,00023075
	addi	a5,s0,+00000360
	addi	a0,a0,-00000500
	c.swsp	ra,00000084
	c.add	s1,a5
	jal	ra,0000000023052118
	lbu	a5,s1,+00000022
	addi	s0,s0,+00000360
	c.beqz	a5,00000000230053D8

l230053D2:
	c.mv	a0,s1
	jal	ra,00000000230037DC

l230053D8:
	c.mv	a0,s1
	addi	a2,zero,+00000024
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	addi	a5,zero,+00000024
	add	a5,s2,a5
	lui	a4,00023005
	addi	a4,a4,+000002BA
	c.add	a5,s0
	c.sw	a5,4(a4)
	c.sw	a5,8(s1)
	sb	s2,a5,+00000020
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; td_init: 2300540A
;;   Called from:
;;     23001D38 (in mm_init)
td_init proc
	lui	a0,00023075
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-0000050C
	c.swsp	ra,00000084
	jal	ra,0000000023052118
	c.li	a0,00000000
	jal	ra,000000002300539C
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	jal	zero,000000002300539C

;; td_start: 2300542A
;;   Called from:
;;     23006EE6 (in vif_mgmt_register)
td_start proc
	addi	a5,zero,+00000024
	add	a5,a0,a5
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201A
	addi	s0,s0,+00000360
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.add	s0,a5
	lbu	a5,s0,+00000022
	c.bnez	a5,000000002300547E

l2300544A:
	c.mv	a1,a0
	lui	a0,00023075
	lui	a5,00044B00
	addi	a0,a0,-000004EC
	lw	s1,a5,+00000120
	jal	ra,0000000023052118
	c.li	a5,00000001
	sb	a5,s0,+00000022
	lui	a1,000000F4
	addi	a1,a1,+00000240
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.add	a1,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023003726

l2300547E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; td_pck_ind: 23005488
;;   Called from:
;;     2300454E (in rxl_cntrl_evt)
;;     23005E7C (in txl_cntrl_push)
td_pck_ind proc
	addi	a4,zero,+00000024
	add	a0,a0,a4
	lui	a5,0004201A
	addi	a5,a5,+00000360
	c.add	a5,a0
	c.beqz	a2,00000000230054A4

l2300549C:
	c.lw	a5,20(a4)
	c.addi	a4,00000001
	c.sw	a5,20(a4)
	c.jr	ra

l230054A4:
	c.lw	a5,16(a4)
	c.addi	a4,00000001
	c.sw	a5,16(a4)
	c.jr	ra

;; td_pck_ps_ind: 230054AC
;;   Called from:
;;     23003F88 (in ps_check_frame)
;;     23004032 (in ps_check_tx_frame)
td_pck_ps_ind proc
	addi	a4,zero,+00000024
	add	a0,a0,a4
	lui	a5,0004201A
	addi	a5,a5,+00000360
	c.add	a5,a0
	c.beqz	a1,00000000230054C8

l230054C0:
	c.lw	a5,28(a4)
	c.addi	a4,00000001
	c.sw	a5,28(a4)
	c.jr	ra

l230054C8:
	c.lw	a5,24(a4)
	c.addi	a4,00000001
	c.sw	a5,24(a4)
	c.jr	ra

;; bl_tpc_update_power_table: 230054D0
;;   Called from:
;;     23027220 (in cmd_wifi_power_table_update)
bl_tpc_update_power_table proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	ra,000000A4
	c.mv	s0,a0
	jal	ra,0000000023014A62
	c.addi4spn	a4,00000008
	addi	a5,s0,+00000018
	c.mv	a0,a4
	addi	s0,s0,+00000026

l230054E8:
	bne	a5,s0,00000000230054F8

l230054EC:
	jal	ra,0000000023018DC4
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.addi16sp	00000050
	c.jr	ra

l230054F8:
	lb	a3,a5,+00000000
	c.addi	a4,00000004
	c.addi	a5,00000001
	sw	a3,a4,+00000FFC
	c.j	00000000230054E8

;; bl_tpc_power_table_get: 23005506
;;   Called from:
;;     23027B20 (in wifi_sta_ip_info)
bl_tpc_power_table_get proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023014A96
	c.li	a5,00000018
	addi	a4,zero,+00000026

l23005518:
	add	a3,s0,a5
	sb	zero,a3,+00000000
	c.addi	a5,00000001
	bne	a5,a4,0000000023005518

l23005526:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bl_tpc_update_power_rate_11b: 2300552E
;;   Called from:
;;     23037D0E (in hal_board_cfg)
bl_tpc_update_power_rate_11b proc
	jal	zero,0000000023014AA4

;; bl_tpc_update_power_rate_11g: 23005532
;;   Called from:
;;     23037DC2 (in hal_board_cfg)
bl_tpc_update_power_rate_11g proc
	jal	zero,0000000023014AC8

;; bl_tpc_update_power_rate_11n: 23005536
;;   Called from:
;;     23037E76 (in hal_board_cfg)
bl_tpc_update_power_rate_11n proc
	jal	zero,0000000023014AEA

;; tpc_update_tx_power: 2300553A
;;   Called from:
;;     230055F4 (in tpc_update_vif_tx_power)
;;     230198B4 (in chan_pre_switch_channel)
;;     2301A154 (in chan_ctxt_update)
;;     2301B7DE (in mm_start_req_handler)
tpc_update_tx_power proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000000
	c.li	a0,00000002
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023014C3A
	lui	s0,00044B00
	lw	a5,s0,+000000A0
	c.li	a1,00000000
	andi	a5,a5,-00000100
	c.or	a0,a5
	sw	a0,s0,+000000A0
	c.li	a0,00000000
	jal	ra,0000000023014C3A
	lw	a5,s0,+000000A0
	c.lui	a4,FFFF0000
	addi	a4,a4,+000000FF
	c.slli	a0,08
	c.and	a5,a4
	c.or	a0,a5
	sw	a0,s0,+000000A0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; tpc_update_vif_tx_power: 2300557E
;;   Called from:
;;     23007DEC (in me_beacon_check)
;;     2300C3FC (in sm_assoc_rsp_handler)
;;     2301B650 (in mm_set_power_req_handler)
;;     2301F628 (in apm_start_req_handler)
tpc_update_vif_tx_power proc
	lb	a4,a1,+00000000
	addi	a5,zero,+0000007F
	beq	a4,a5,0000000023005616

l2300558A:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s1,a1
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.mv	s0,a0
	lb	s3,a0,+00000059
	c.mv	a1,a2
	c.mv	a0,s1
	c.mv	s2,a2
	jal	ra,00000000230145C4
	lb	a4,s1,+00000000
	lb	a5,s0,+0000005A
	sb	a4,s0,+00000059
	bge	a5,a4,00000000230055C4

l230055B8:
	sb	a5,s1,+00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230145C4

l230055C4:
	lb	a5,s1,+00000000
	beq	a5,s3,0000000023005608

l230055CC:
	lw	a5,s0,+00000350

l230055D0:
	c.bnez	a5,00000000230055F8

l230055D2:
	c.lw	s0,64(a0)
	c.beqz	a0,0000000023005608

l230055D6:
	jal	ra,000000002301A3CE
	c.mv	a0,s0
	jal	ra,000000002301A352
	c.beqz	a0,0000000023005608

l230055E2:
	c.lw	s0,64(a5)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lb	a0,a5,+0000000C
	c.addi16sp	00000020
	jal	zero,000000002300553A

l230055F8:
	lbu	a4,a5,+0000011A
	ori	a4,a4,+00000010
	sb	a4,a5,+0000011A
	c.lw	a5,0(a5)
	c.j	00000000230055D0

l23005608:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23005616:
	c.jr	ra

;; tpc_get_vif_tx_power_vs_rate: 23005618
;;   Called from:
;;     23005648 (in tpc_update_frame_tx_power)
;;     23006438 (in txl_frame_get)
;;     23007BD6 (in me_update_buffer_control)
;;     2300CBD2 (in txu_cntrl_push)
tpc_get_vif_tx_power_vs_rate proc
	andi	a5,a0,+000000FF
	c.srli	a0,0000000B
	c.andi	a0,00000007
	andi	a1,a5,+0000007F
	c.bnez	a0,0000000023005638

l23005626:
	andi	a0,a5,+0000007C
	c.beqz	a0,0000000023005634

l2300562C:
	c.addi	a1,FFFFFFFC
	andi	a1,a1,+000000FF
	c.li	a0,00000001

l23005634:
	jal	zero,0000000023014C3A

l23005638:
	c.li	a0,00000002
	c.j	0000000023005634

;; tpc_update_frame_tx_power: 2300563C
;;   Called from:
;;     230033AA (in mm_bcn_transmit)
;;     23003A60 (in ps_send_pspoll)
;;     230066AE (in txl_frame_send_null_frame)
;;     230067C0 (in txl_frame_send_qosnull_frame)
;;     23006958 (in txl_frame_send_eapol_frame)
;;     2300BC6C (in sm_disconnect)
;;     2300BF2E (in sm_auth_send)
;;     2300C0B8 (in sm_assoc_req_send)
;;     2300C5BA (in sm_handle_supplicant_result)
;;     2301C7A0 (in bam_send_air_action_frame)
tpc_update_frame_tx_power proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a1,108(a5)
	c.lw	a5,40(s0)
	c.lw	s0,20(a0)
	jal	ra,0000000023005618
	c.sw	s0,36(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; txl_int_fake_transfer: 23005656
;;   Called from:
;;     23005D38 (in txl_cntrl_push_int)
;;     23005DBE (in txl_cntrl_push_int_force)
;;     23005E4A (in txl_cntrl_push)
txl_int_fake_transfer proc
	c.lw	a0,104(a5)
	lui	a4,000CAFF0
	addi	a4,a4,-00000522
	c.sw	a5,56(a4)
	c.addi	a1,00000016
	lui	a4,0004201D
	addi	a3,a4,+00000424
	slli	a2,a1,00000003
	c.sw	a5,20(a0)
	c.add	a3,a2
	c.lw	a3,4(a2)
	addi	a4,a4,+00000424
	c.bnez	a2,000000002300568A

l2300567C:
	c.sw	a3,4(a5)

l2300567E:
	c.slli	a1,03
	c.add	a4,a1
	c.sw	a4,8(a5)
	sw	zero,a5,+00000010
	c.jr	ra

l2300568A:
	c.lw	a3,8(a3)
	c.sw	a3,16(a5)
	c.j	000000002300567E

;; blmac_abs_timer_set: 23005690
;;   Called from:
;;     23005C08 (in txl_payload_handle_backup)
;;     23005FA8 (in txl_transmit_trigger)
;;     23005FDA (in txl_transmit_trigger)
blmac_abs_timer_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.li	a5,00000009
	c.mv	s0,a0
	c.mv	s1,a1
	bge	a5,a0,00000000230056BC

l230056A2:
	c.lui	a2,00002000
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,a2,+000006A0
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000048C
	jal	ra,000000002301327E

l230056BC:
	lui	a5,000112C0
	addi	a5,a5,+0000004A
	c.add	s0,a5
	c.slli	s0,02
	c.sw	s0,0(s1)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; txl_machdr_format: 230056D4
;;   Called from:
;;     23005AB4 (in txl_payload_handle_backup)
txl_machdr_format proc
	lbu	a5,a0,+00000016
	lui	a4,0004201A
	addi	a2,a0,+00000016
	andi	a3,a5,+0000000F
	addi	a4,a4,+000003A8
	c.bnez	a3,00000000230056F4

l230056EA:
	lhu	a5,a4,+00000054
	c.addi	a5,00000001
	sh	a5,a4,+00000054

l230056F4:
	lhu	a5,a4,+00000054
	c.slli	a5,04
	c.or	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,a0,+00000016
	c.srli	a5,00000008
	sb	a5,a2,+00000001
	c.jr	ra

;; txl_cntrl_init: 2300570C
;;   Called from:
;;     23001D40 (in mm_init)
txl_cntrl_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	jal	ra,0000000023006D78
	jal	ra,000000002301C284
	jal	ra,000000002301C508
	c.li	a0,00000000
	jal	ra,00000000230061C8
	lui	s1,0004201A
	addi	a0,s1,+000003A8
	addi	a2,zero,+00000058
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	lui	a5,00044A00
	addi	s0,s1,+000003A8
	addi	s3,a5,+00000080
	addi	s1,s1,+000003A8
	addi	s2,a5,+00000094

l23005750:
	addi	a0,s0,+00000004
	jal	ra,000000002300E278
	sw	zero,s0,+00000000
	lw	a5,s3,+00000000
	sb	zero,s0,+0000000E
	c.addi	s3,00000004
	sh	a5,s0,+0000000C
	c.addi	s0,00000010
	bne	s3,s2,0000000023005750

l23005770:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	sh	zero,s1,+00000054
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; txl_cntrl_tx_check: 23005782
;;   Called from:
;;     2300526E (in sta_mgmt_send_postponed_frame)
;;     23005CFC (in txl_cntrl_push_int)
;;     2300CBAE (in txu_cntrl_push)
txl_cntrl_tx_check proc
	lui	a5,0004201A
	lbu	a5,a5,+000003FE
	c.bnez	a5,0000000023005790

l2300578C:
	jal	zero,000000002301A382

l23005790:
	c.li	a0,00000000
	c.jr	ra

;; txl_cntrl_halt_ac: 23005794
;;   Called from:
;;     23001DDE (in mm_tbtt_evt)
;;     230058E8 (in txl_cntrl_clear_bcn_ac)
;;     2300590A (in txl_cntrl_clear_all_ac)
;;     2300591A (in txl_cntrl_clear_all_ac)
;;     2300592A (in txl_cntrl_clear_all_ac)
;;     2300593A (in txl_cntrl_clear_all_ac)
;;     2300594A (in txl_cntrl_clear_all_ac)
txl_cntrl_halt_ac proc
	c.li	a5,00000004
	bltu	a5,a0,0000000023005844

l2300579A:
	lui	a5,00023075
	addi	a5,a5,-000004B4
	c.slli	a0,02
	c.add	a0,a5
	c.lw	a0,0(a5)
	c.jr	a5
230057AA                               21 67 B7 87 B0 44           !g...D
230057B0 23 A0 E7 18 37 87 B0 44 83 27 87 18 8D 8B ED FF #...7..D.'......
230057C0 A1 67 23 22 F7 18 82 80 37 07 08 00 B7 87 B0 44 .g#"....7......D
230057D0 23 A0 E7 18 37 87 B0 44 83 27 87 18 C1 83 8D 8B #...7..D.'......
230057E0 E5 FF B7 07 08 00 F1 BF 37 07 04 00 B7 87 B0 44 ........7......D
230057F0 23 A0 E7 18 37 87 B0 44 83 27 87 18 B1 83 8D 8B #...7..D.'......
23005800 E5 FF B7 07 04 00 75 BF 37 07 02 00 B7 87 B0 44 ......u.7......D
23005810 23 A0 E7 18 37 87 B0 44 83 27 87 18 A1 83 8D 8B #...7..D.'......
23005820 E5 FF B7 07 02 00 71 BF 41 67 B7 87 B0 44 23 A0 ......q.Ag...D#.
23005830 E7 18 37 87 B0 44 83 27 87 18 91 83 8D 8B E5 FF ..7..D.'........
23005840 C1 67 41 B7                                     .gA.           

l23005844:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+00000779
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000768
	jal	zero,000000002301327E

;; txl_cntrl_flush_ac: 2300585C
;;   Called from:
;;     23001DE8 (in mm_tbtt_evt)
;;     230058F2 (in txl_cntrl_clear_bcn_ac)
;;     23005914 (in txl_cntrl_clear_all_ac)
;;     23005924 (in txl_cntrl_clear_all_ac)
;;     23005934 (in txl_cntrl_clear_all_ac)
;;     23005944 (in txl_cntrl_clear_all_ac)
;;     23005954 (in txl_cntrl_clear_all_ac)
txl_cntrl_flush_ac proc
	c.addi	sp,FFFFFFE0
	lui	a4,0004201D
	c.swsp	s5,00000080
	addi	a4,a4,+00000500
	c.mv	s5,a1
	slli	a1,a0,00000003
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s6,00000000
	c.mv	s1,a0
	lui	s3,00044B08
	c.add	a1,a4
	c.mv	a2,s5
	c.li	s2,00000001
	sll	s2,s2,a0
	lw	s6,s3,+0000008C
	slli	s4,s1,00000004
	jal	ra,000000002301C63A
	lui	s0,0004201A
	addi	a1,s4,+00000004
	addi	s0,s0,+000003A8
	c.mv	a2,s5
	c.add	a1,s0
	c.mv	a0,s1
	jal	ra,000000002301C63A
	c.add	s0,s4
	sw	zero,s0,+00000000
	c.mv	a0,s1
	jal	ra,000000002301C3CA
	xori	a5,s2,-00000001
	and	a5,a5,s6
	sw	a5,s3,+0000008C
	sw	s2,s3,+00000088
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

;; txl_cntrl_clear_bcn_ac: 230058DE
;;   Called from:
;;     23007046 (in vif_mgmt_unregister)
txl_cntrl_clear_bcn_ac proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	csrrci	zero,mstatus,00000008
	c.li	a0,00000004
	jal	ra,0000000023005794
	lui	a1,00040000
	c.li	a0,00000004
	jal	ra,000000002300585C
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; txl_cntrl_clear_all_ac: 23005900
;;   Called from:
;;     23006498 (in txl_frame_get)
txl_cntrl_clear_all_ac proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	csrrci	zero,mstatus,00000008
	c.li	a0,00000004
	jal	ra,0000000023005794
	lui	a1,00040000
	c.li	a0,00000004
	jal	ra,000000002300585C
	c.li	a0,00000000
	jal	ra,0000000023005794
	lui	a1,00040000
	c.li	a0,00000000
	jal	ra,000000002300585C
	c.li	a0,00000001
	jal	ra,0000000023005794
	lui	a1,00040000
	c.li	a0,00000001
	jal	ra,000000002300585C
	c.li	a0,00000002
	jal	ra,0000000023005794
	lui	a1,00040000
	c.li	a0,00000002
	jal	ra,000000002300585C
	c.li	a0,00000003
	jal	ra,0000000023005794
	lui	a1,00040000
	c.li	a0,00000003
	jal	ra,000000002300585C
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; txl_cntrl_inc_pck_cnt: 23005962
;;   Called from:
;;     2300CD0E (in txu_cntrl_push)
txl_cntrl_inc_pck_cnt proc
	lui	a5,0004201A
	addi	a5,a5,+000003A8
	c.lw	a5,80(a4)
	c.addi	a4,00000001
	c.sw	a5,80(a4)
	c.jr	ra

;; txl_payload_handle: 23005972
txl_payload_handle proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	lui	a5,00044A00
	c.lw	a5,36(a0)
	c.li	s1,0000001F
	c.li	s2,00000001
	c.andi	a0,0000001F
	lui	s0,00044A00

l2300598C:
	c.bnez	a0,000000002300599A

l2300598E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2300599A:
	jal	ra,000000002306C8C0
	sub	a0,s1,a0
	sll	a0,s2,a0
	c.sw	s0,32(a0)
	c.lw	s0,36(a0)
	c.andi	a0,0000001F
	c.j	000000002300598C

;; txl_payload_handle_backup: 230059AE
;;   Called from:
;;     23005D5C (in txl_cntrl_push_int)
;;     23005DE2 (in txl_cntrl_push_int_force)
;;     23005E4E (in txl_cntrl_push)
txl_payload_handle_backup proc
	c.addi16sp	FFFFFFB0
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	lui	s3,0004201D
	lui	s4,0004201A
	lui	s7,000FF880
	lui	s8,0004201A
	c.lui	s9,00001000
	c.swsp	s1,000000A0
	c.swsp	s10,00000010
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s11,0000008C
	addi	s3,s3,+00000424
	addi	s4,s4,+000003A8
	c.li	s1,00000000
	c.addi	s7,FFFFFFFF
	addi	s8,s8,+00000410
	addi	s10,s9,-00000800

l230059F0:
	lw	a0,s3,+000000B4
	c.bnez	a0,0000000023005A20

l230059F6:
	c.addi	s1,00000001
	c.li	a5,00000005
	c.addi	s3,00000008
	c.addi	s4,00000010
	bne	s1,a5,00000000230059F0

l23005A02:
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

l23005A20:
	c.lw	a0,16(a5)
	c.li	s5,00000001
	lui	s6,00000062
	andi	s0,s1,+000000FF
	sw	a5,s3,+000000B4
	sll	s5,s5,s1
	addi	s6,s6,-00000580

l23005A38:
	lw	s2,a0,+00000014
	lw	a5,s2,+00000008
	c.beqz	a5,0000000023005AF8

l23005A42:
	c.li	a5,00000004
	bne	s1,a5,0000000023005A6C

l23005A48:
	lbu	a5,s2,+0000002F
	addi	a4,zero,+000005D8
	lbu	a3,a0,+0000014D
	add	a5,a5,a4
	c.srli	a3,00000005
	c.andi	a3,00000001
	c.add	a5,s8
	lbu	a4,a5,+00000346
	c.beqz	a3,0000000023005B2E

l23005A64:
	ori	a4,a4,+00000002

l23005A68:
	sb	a4,a5,+00000346

l23005A6C:
	lbu	a4,s2,+0000002E
	addi	a5,zero,+000000FF
	bne	a4,a5,0000000023005AB8

l23005A78:
	lhu	a4,s2,+00000032
	addi	s11,a0,+0000014C
	andi	a5,a4,+00000008
	c.beqz	a5,0000000023005AB2

l23005A86:
	lbu	a5,a0,+0000014C
	c.li	a3,00000010
	andi	a5,a5,+000000DC
	bne	a5,a3,0000000023005AB2

l23005A94:
	lbu	a5,s11,+0000001B
	lbu	a3,s11,+0000001A
	c.slli	a5,08
	c.or	a5,a3
	c.bnez	a5,0000000023005AB2

l23005AA2:
	ori	a4,a4,+00000020
	sh	a4,s2,+00000032
	addi	a0,a0,+00000150
	jal	ra,000000002300A68C

l23005AB2:
	c.mv	a0,s11
	jal	ra,00000000230056D4

l23005AB8:
	lhu	a5,s2,+00000032
	lw	a4,s2,+00000068
	lw	s11,s2,+0000006C
	c.andi	a5,00000008
	addi	a3,a4,+000000F0
	c.beqz	a5,0000000023005B32

l23005ACC:
	lw	a5,s11,+0000003C
	and	a5,a5,s7
	sw	a5,s11,+0000003C
	lbu	a5,a4,+00000150
	sw	zero,s11,+00000040
	c.andi	a5,00000001
	sltiu	a5,a5,+00000001
	c.slli	a5,09
	sw	a5,s11,+00000038

l23005AEC:
	sw	a3,s11,+00000028
	lw	a5,a4,+00000128
	sw	a5,s11,+00000024

l23005AF8:
	lhu	a5,s4,+0000000C
	c.addi	a5,00000001
	sh	a5,s4,+0000000C
	lw	s2,s2,+0000006C
	lw	a5,s4,+00000000
	c.addi	s2,00000004
	c.beqz	a5,0000000023005B7E

l23005B0E:
	sw	s2,a5,+00000004
	c.li	a4,00000002
	lui	a5,00044B08
	beq	s0,a4,0000000023005B76

l23005B1C:
	bltu	a4,s0,0000000023005B4C

l23005B20:
	c.li	a4,00000001
	beq	s0,a4,0000000023005B7A

l23005B26:
	lui	a5,00044B08
	c.li	a4,00000002
	c.j	0000000023005B5A

l23005B2E:
	c.andi	a4,FFFFFFFD
	c.j	0000000023005A68

l23005B32:
	c.mv	a1,s0
	c.mv	a0,s2
	c.swsp	a4,00000084
	c.swsp	a3,00000004
	jal	ra,000000002300CD2A
	c.lwsp	a2,000000C4
	c.lwsp	s0,000000A4
	lw	a5,a4,+00000124
	sw	a5,s11,+00000038
	c.j	0000000023005AEC

l23005B4C:
	c.li	a4,00000003
	beq	s0,a4,0000000023005B72

l23005B52:
	c.li	a4,00000004
	bne	s0,a4,0000000023005B26

l23005B58:
	c.li	a4,00000001

l23005B5A:
	sw	a4,a5,+00000180

l23005B5E:
	lw	a0,s3,+000000B4
	sw	s2,s4,+00000000
	beq	a0,zero,00000000230059F6

l23005B6A:
	c.lw	a0,16(a5)
	sw	a5,s3,+000000B4
	c.j	0000000023005A38

l23005B72:
	c.li	a4,00000010
	c.j	0000000023005B5A

l23005B76:
	c.li	a4,00000008
	c.j	0000000023005B5A

l23005B7A:
	c.li	a4,00000004
	c.j	0000000023005B5A

l23005B7E:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	c.li	a4,00000002
	beq	s0,a4,0000000023005C56

l23005B8C:
	lui	a5,00044B08
	bltu	a4,s0,0000000023005BC2

l23005B94:
	c.li	a3,00000001
	beq	s0,a3,0000000023005C8A

l23005B9A:
	lui	a4,00044B08
	lw	a5,a4,+00000188
	c.li	a3,00000002
	c.srli	a5,00000004
	c.andi	a5,00000003
	bne	a5,a3,0000000023005CC4

l23005BAC:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+00000248
	addi	a1,a1,+000002DC
	addi	a0,a0,-000003FC
	c.j	0000000023005BEC

l23005BC2:
	c.li	a3,00000003
	beq	s0,a3,0000000023005C22

l23005BC8:
	c.li	a3,00000004
	bne	s0,a3,0000000023005B9A

l23005BCE:
	lw	a3,a5,+00000188
	c.andi	a3,00000003
	bne	a3,a4,0000000023005BF2

l23005BD8:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+0000022F
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000047C

l23005BEC:
	jal	ra,000000002301323E
	c.j	0000000023005B5E

l23005BF2:
	sw	s2,a5,+00000198
	addi	a4,zero,+00000100
	sw	a4,a5,+00000180
	c.lui	a5,0000C000
	addi	a5,a5,+00000350
	c.add	a1,a5
	c.li	a0,00000004

l23005C08:
	jal	ra,0000000023005690
	lui	a5,00044B08
	sw	s5,a5,+00000088
	lw	a4,a5,+0000008C
	or	a4,s5,a4
	sw	a4,a5,+0000008C
	c.j	0000000023005B5E

l23005C22:
	lw	a3,a5,+00000188
	c.srli	a3,00000010
	c.andi	a3,00000003
	bne	a3,a4,0000000023005C44

l23005C2E:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+00000236
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000045C
	c.j	0000000023005BEC

l23005C44:
	sw	s2,a5,+000001A8
	sw	s9,a5,+00000180

l23005C4C:
	lui	a5,00000031
	addi	a5,a5,-000002C0
	c.j	0000000023005CC0

l23005C56:
	lui	a4,00044B08
	lw	a5,a4,+00000188
	c.srli	a5,0000000C
	c.andi	a5,00000003
	bne	a5,s0,0000000023005C7C

l23005C66:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+0000023C
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000043C
	c.j	0000000023005BEC

l23005C7C:
	sw	s2,a4,+000001A4
	sw	s10,a4,+00000180
	c.add	a1,s6

l23005C86:
	c.mv	a0,s1
	c.j	0000000023005C08

l23005C8A:
	lw	a3,a5,+00000188
	c.srli	a3,00000008
	c.andi	a3,00000003
	bne	a3,a4,0000000023005CAC

l23005C96:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+00000242
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000041C
	c.j	0000000023005BEC

l23005CAC:
	sw	s2,a5,+000001A0
	addi	a4,zero,+00000400
	sw	a4,a5,+00000180
	lui	a5,000001E8
	addi	a5,a5,+00000480

l23005CC0:
	c.add	a1,a5
	c.j	0000000023005C86

l23005CC4:
	sw	s2,a4,+0000019C
	addi	a5,zero,+00000200
	sw	a5,a4,+00000180
	c.j	0000000023005C4C

;; txl_cntrl_push_int: 23005CD2
;;   Called from:
;;     2300529A (in sta_mgmt_send_postponed_frame)
;;     23006502 (in txl_frame_push)
txl_cntrl_push_int proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lbu	a5,a0,+0000002F
	c.mv	s0,a0
	lw	s3,a0,+0000006C
	addi	a0,zero,+000005D8
	add	a5,a5,a0
	lui	a0,0004201A
	addi	a0,a0,+00000410
	c.mv	s1,a1
	c.add	a0,a5
	jal	ra,0000000023005782
	c.bnez	a0,0000000023005D1A

l23005D02:
	lbu	s2,s0,+00000030
	addi	a5,zero,+000000FF
	bne	s2,a5,0000000023005D62

l23005D0E:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002300658C
	c.li	s2,00000000
	c.j	0000000023005D94

l23005D1A:
	c.mv	a0,s0
	jal	ra,000000002300D44E
	c.mv	s2,a0
	c.beqz	a0,0000000023005D02

l23005D24:
	lw	a5,s3,+0000003C
	ori	a5,a5,+00000100
	sw	a5,s3,+0000003C
	csrrci	zero,mstatus,00000008
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023005656
	slli	a0,s1,00000004
	lui	s1,0004201A
	addi	s1,s1,+000003A8
	c.addi	a0,00000004
	c.mv	a1,s0
	c.add	a0,s1
	jal	ra,000000002300E282
	csrrsi	zero,mstatus,00000008
	c.lw	s1,80(a5)
	c.addi	a5,00000001
	c.sw	s1,80(a5)
	jal	ra,00000000230059AE
	c.j	0000000023005D94

l23005D62:
	addi	a5,zero,+000001B0
	add	s2,s2,a5
	sb	s1,s0,+0000002E
	lui	s1,00042019
	c.li	a5,00000001
	addi	s1,s1,-000000E0
	sb	a5,s0,+000002D5
	c.mv	a1,s0
	addi	a0,s2,+0000019C
	c.add	a0,s1
	jal	ra,000000002300E282
	add	a1,s1,s2
	c.mv	a0,s0
	jal	ra,000000002300D4B0
	c.li	s2,00000001

l23005D94:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; txl_cntrl_push_int_force: 23005DA4
;;   Called from:
;;     2300656A (in txl_frame_push_force)
txl_cntrl_push_int_force proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.lw	a0,108(a4)
	c.mv	s1,a0
	c.mv	s0,a1
	c.lw	a4,60(a5)
	ori	a5,a5,+00000100
	c.sw	a4,60(a5)
	csrrci	zero,mstatus,00000008
	jal	ra,0000000023005656
	slli	a0,s0,00000004
	lui	s0,0004201A
	addi	s0,s0,+000003A8
	c.addi	a0,00000004
	c.mv	a1,s1
	c.add	a0,s0
	jal	ra,000000002300E282
	csrrsi	zero,mstatus,00000008
	c.lw	s0,80(a5)
	c.addi	a5,00000001
	c.sw	s0,80(a5)
	jal	ra,00000000230059AE
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; txl_cntrl_push: 23005DF2
;;   Called from:
;;     2300CBF2 (in txu_cntrl_push)
txl_cntrl_push proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lbu	a3,a0,+00000060
	lbu	a4,a0,+0000005E
	c.lw	a0,108(a5)
	c.mv	s0,a0
	c.add	a4,a3
	lhu	a3,a0,+0000000C
	c.mv	s1,a1
	sw	zero,a5,+0000000C
	c.add	a4,a3
	c.addi	a4,00000004
	c.sw	a5,28(a4)
	lui	a4,000CAFEC
	addi	a4,a4,-00000542
	c.sw	a5,4(a4)
	sw	zero,a5,+00000008
	sw	zero,a5,+00000010
	sw	zero,a5,+00000028
	sw	zero,a5,+0000003C
	sw	zero,a5,+00000014
	sw	zero,a5,+00000018
	sw	zero,a5,+00000020
	sw	zero,a5,+00000040
	csrrci	zero,mstatus,00000008
	c.lw	a0,8(a5)
	c.bnez	a5,0000000023005E98

l23005E4A:
	jal	ra,0000000023005656

l23005E4E:
	jal	ra,00000000230059AE
	slli	a0,s1,00000004
	lui	s1,0004201A
	addi	s1,s1,+000003A8
	c.addi	a0,00000004
	c.mv	a1,s0
	c.add	a0,s1
	jal	ra,000000002300E282
	csrrsi	zero,mstatus,00000008
	c.lw	s1,80(a5)
	c.li	a2,00000000
	c.addi	a5,00000001
	c.sw	s1,80(a5)
	lbu	a1,s0,+00000030
	lbu	a0,s0,+0000002F
	jal	ra,0000000023005488
	lbu	a0,s0,+00000030
	lbu	a1,s0,+0000002E
	jal	ra,0000000023003FB4
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23005E98:
	c.li	a2,00000000
	jal	ra,000000002301C3DC
	c.sw	s0,104(a0)
	c.sw	a0,20(s0)
	c.mv	a0,s0
	jal	ra,000000002301C46E
	c.j	0000000023005E4E

;; txl_transmit_trigger: 23005EAA
txl_transmit_trigger proc
	lui	a5,00044B08
	c.lw	a5,120(a0)
	andi	a0,a0,+000007C0
	beq	a0,zero,000000002300601C

l23005EB8:
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	c.li	s0,00000019
	jal	ra,000000002306C8C0
	c.sub	s0,a0
	andi	s0,s0,+000000FF
	c.li	a5,00000004
	bgeu	a5,s0,0000000023005F00

l23005EE6:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,a2,-000006F5
	addi	a1,a1,+000002DC
	addi	a0,a0,-000003DC
	jal	ra,000000002301327E

l23005F00:
	c.li	s1,00000001
	addi	a5,s0,+00000006
	sll	a5,s1,a5
	slli	s6,s0,00000004
	lui	s3,0004201A
	lui	a4,00044B08
	lui	s4,00023075
	c.sw	a4,124(a5)
	addi	s5,s6,+00000004
	addi	a5,s3,+000003A8
	sll	s1,s1,s0
	addi	s3,s3,+000003A8
	addi	s4,s4,-000004A0
	slli	s7,s0,00000002
	c.add	s5,a5
	xori	s1,s1,-00000001
	lui	s8,00044B08
	add	s11,s3,s6
	lui	s10,00044B00
	add	s9,s4,s7

l23005F4A:
	lw	s2,s5,+00000000
	beq	s2,zero,0000000023005FEA

l23005F52:
	lw	a5,s2,+0000006C
	c.lw	a5,64(a1)
	bge	a1,zero,0000000023005FFE

l23005F5C:
	lw	a4,s2,+00000008
	c.beqz	a4,0000000023005F6C

l23005F62:
	lw	a4,s2,+00000068
	c.beqz	a4,0000000023005F6C

l23005F68:
	sw	zero,s2,+00000068

l23005F6C:
	c.lw	a5,0(a4)
	c.sw	a4,16(a1)
	c.lw	a5,8(a5)
	c.beqz	a5,0000000023005FAC

l23005F74:
	c.lw	a5,60(a5)
	blt	a5,zero,0000000023005FBA

l23005F7A:
	c.add	s4,s7
	lui	a5,00044B00
	lw	a1,a5,+00000120
	c.mv	a0,s0
	lw	a5,s4,+00000000
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
	c.add	a1,a5
	c.addi16sp	00000050
	jal	zero,0000000023005690

l23005FAC:
	lw	a5,s8,+0000008C
	sw	zero,s11,+00000000
	c.and	a5,s1
	sw	a5,s8,+0000008C

l23005FBA:
	c.mv	a0,s5
	c.swsp	a1,00000084
	jal	ra,000000002300E2FE
	lw	a5,s2,+00000008
	c.lwsp	a2,00000064
	c.bnez	a5,0000000023005FE0

l23005FCA:
	c.mv	a0,s2
	c.jal	000000002300656E

l23005FCE:
	lw	a1,s10,+00000120
	lw	a5,s9,+00000000
	c.mv	a0,s0
	c.add	a1,a5
	jal	ra,0000000023005690
	c.j	0000000023005F4A

l23005FE0:
	c.mv	a2,s0
	c.mv	a0,s2
	jal	ra,000000002301C55E
	c.j	0000000023005FCE

l23005FEA:
	lui	a5,00044B08
	lw	a4,a5,+0000008C
	c.add	s3,s6
	sw	zero,s3,+00000000
	c.and	s1,a4
	sw	s1,a5,+0000008C

l23005FFE:
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

l2300601C:
	c.jr	ra

;; txl_reset: 2300601E
;;   Called from:
;;     2300252E (in mm_force_idle_req)
;;     2301BF34 (in bl_reset_evt)
txl_reset proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,0004201A
	c.swsp	s5,00000088
	addi	a5,s0,+000003A8
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.lui	a0,0001F000
	lhu	s6,a5,+00000054
	jal	ra,000000002300E4B4
	c.lui	a5,00010000
	addi	s5,s0,+000003A8
	lui	a3,00044A00
	c.addi	a5,FFFFFFFF

l23006054:
	c.lw	a3,16(a4)
	c.slli	a4,10
	c.srli	a4,00000010
	bne	a4,a5,0000000023006054

l2300605E:
	c.li	a5,00000001
	lui	s4,0004201D
	lui	s3,0004201A
	sb	a5,s5,+00000056
	addi	s4,s4,+00000500
	addi	s3,s3,+000003AC
	c.li	s2,00000000
	c.li	s9,00000001
	lui	s1,00044A00
	c.li	s8,00000005

l2300607E:
	sll	a5,s9,s2
	andi	s7,s2,+000000FF
	c.mv	a1,s4
	c.sw	s1,32(a5)
	lui	a2,00040000
	c.mv	a0,s7
	jal	ra,000000002301C63A
	c.mv	a1,s3
	lui	a2,00040000
	c.mv	a0,s7
	c.addi	s2,00000001
	jal	ra,000000002301C63A
	c.addi	s4,00000008
	c.addi	s3,00000010
	bne	s2,s8,000000002300607E

l230060AA:
	jal	ra,0000000023006D7A
	jal	ra,000000002301C272
	jal	ra,000000002301C508
	addi	a0,s0,+000003A8
	addi	a2,zero,+00000058
	c.li	a1,00000000
	lui	s2,00044A00
	jal	ra,0000000023070EB8
	addi	s0,s0,+000003A8
	sh	s6,s5,+00000054
	addi	s1,s1,+00000080
	addi	s2,s2,+00000094

l230060D8:
	addi	a0,s0,+00000004
	jal	ra,000000002300E278
	sw	zero,s0,+00000000
	c.lw	s1,0(a5)
	sb	zero,s0,+0000000E
	c.addi	s1,00000004
	sh	a5,s0,+0000000C
	c.addi	s0,00000010
	bne	s1,s2,00000000230060D8

l230060F6:
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

;; txl_cntrl_env_dump: 23006110
;;   Called from:
;;     2300E500 (in bl_fw_statistic_dump)
txl_cntrl_env_dump proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004201A
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.li	s0,00000004
	addi	s1,s1,+000003A8
	addi	s3,zero,+00000054

l2300612A:
	add	s2,s0,s1
	c.mv	a0,s2
	jal	ra,000000002300E35E
	c.beqz	a0,0000000023006140

l23006136:
	lw	a5,s2,+00000000
	c.mv	a4,a5

l2300613C:
	c.bnez	a4,0000000023006154

l2300613E:
	c.bnez	a5,0000000023006158

l23006140:
	c.addi	s0,00000010
	bne	s0,s3,000000002300612A

l23006146:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23006154:
	c.lw	a4,0(a4)
	c.j	000000002300613C

l23006158:
	c.lw	a5,108(a4)
	c.lw	a4,16(a4)

l2300615C:
	c.bnez	a4,0000000023006162

l2300615E:
	c.lw	a5,0(a5)
	c.j	000000002300613E

l23006162:
	c.lw	a4,4(a4)
	c.j	000000002300615C

;; txl_frame_init_desc: 23006166
;;   Called from:
;;     23003108 (in mm_bcn_init_vif)
txl_frame_init_desc proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s0,a2
	c.mv	s2,a1
	addi	a2,zero,+000002D8
	c.li	a1,00000000
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.swsp	a3,00000084
	jal	ra,0000000023070EB8
	lui	a5,000CAFEC
	addi	a5,a5,-00000542
	c.sw	s0,4(a5)
	c.lwsp	a2,000000A4
	addi	a5,s2,+0000014C
	c.sw	s0,20(a5)
	lui	a5,000BADCB
	sw	zero,s0,+00000020
	sw	zero,s0,+0000002C
	sw	zero,s0,+00000030
	sw	zero,s0,+00000034
	addi	a5,a5,-000004E2
	c.sw	a3,0(a5)
	c.sw	s1,108(s0)
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a5,00000001
	sw	s2,s1,+00000068
	c.sw	s1,84(a3)
	sb	a5,s1,+000002D4
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; txl_frame_init: 230061C8
;;   Called from:
;;     23005726 (in txl_cntrl_init)
txl_frame_init proc
	c.addi16sp	FFFFFFC0
	c.swsp	s5,00000090
	lui	s5,0004201A
	c.swsp	s7,0000008C
	c.mv	s7,a0
	addi	a0,s5,+00000400
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s6,00000010
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	s10,00000008
	c.swsp	s11,00000084
	jal	ra,000000002300E278
	lui	a0,0004201A
	addi	a0,a0,+00000408
	lui	s1,00042011
	lui	s0,00042048
	lui	s3,00042046
	lui	s2,00042046
	lui	s6,00042048
	lui	s8,000CAFEC
	lui	s9,000BADCB
	jal	ra,000000002300E278
	addi	s1,s1,-00000624
	addi	s0,s0,-00000520
	addi	s3,s3,+00000784
	addi	s2,s2,+00000694
	c.li	s4,00000000
	c.li	s10,00000014
	addi	s6,s6,-00000400
	addi	s8,s8,-00000542
	addi	s9,s9,-000004E2
	c.li	s11,00000004

l2300623C:
	beq	s7,zero,0000000023006246

l23006240:
	lbu	a5,s1,+000002D5
	c.bnez	a5,0000000023006290

l23006246:
	c.li	a1,00000000
	addi	a2,zero,+000002D8
	c.mv	a0,s1
	jal	ra,0000000023070EB8
	add	a5,s4,s10
	sw	s8,s0,+00000004
	sw	zero,s0,+00000020
	sw	zero,s0,+0000002C
	sw	zero,s0,+00000030
	sw	zero,s0,+00000034
	sw	s9,s2,+00000000
	sw	s3,s1,+00000068
	sw	s2,s1,+00000054
	c.sw	s1,108(s0)
	c.add	a5,s6
	c.sw	s0,0(a5)
	addi	a5,s3,+0000014C
	c.sw	s0,20(a5)
	sb	zero,s1,+000002D4
	c.mv	a1,s1
	addi	a0,s5,+00000400
	jal	ra,000000002300E282

l23006290:
	c.addi	s4,00000001
	addi	s1,s1,+000002D8
	addi	s0,s0,+00000048
	addi	s3,s3,+0000024C
	addi	s2,s2,+0000003C
	bne	s4,s11,000000002300623C

l230062A6:
	lui	s0,00042047
	lui	s3,000BADCB
	addi	s0,s0,+000000B4
	addi	s3,s3,-000004E2
	sw	s3,s0,+00000000
	sw	zero,s0,+00000034
	sw	zero,s0,+00000038
	jal	ra,000000002301459E
	c.slli	a0,0E
	c.sw	s0,4(a0)
	jal	ra,000000002301459E
	c.li	s1,00000001
	c.addi	a0,00000001
	sll	a0,s1,a0
	c.lui	s2,FFFF0000
	addi	s2,s2,+00000704
	addi	a5,zero,+00000400
	c.addi	a0,FFFFFFFF
	sw	s2,s0,+00000010
	c.sw	s0,20(a5)
	c.sw	s0,8(a0)
	sw	zero,s0,+0000000C
	sw	zero,s0,+00000018
	sw	zero,s0,+0000001C
	sw	zero,s0,+00000020
	sw	zero,s0,+00000028
	sw	zero,s0,+0000002C
	sw	zero,s0,+00000030
	lui	s0,00042048
	addi	s0,s0,-000005D4
	sw	s3,s0,+00000000
	sw	zero,s0,+00000034
	sw	zero,s0,+00000038
	jal	ra,000000002301459E
	c.slli	a0,0E
	c.sw	s0,4(a0)
	jal	ra,000000002301459E
	c.addi	a0,00000001
	sll	s1,s1,a0
	c.addi	s1,FFFFFFFF
	c.sw	s0,8(s1)
	sw	zero,s0,+0000000C
	sw	s2,s0,+00000010
	sw	s4,s0,+00000014
	sw	zero,s0,+00000018
	sw	zero,s0,+0000001C
	sw	zero,s0,+00000020
	sw	zero,s0,+00000028
	sw	zero,s0,+0000002C
	sw	zero,s0,+00000030
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
	c.lwsp	a6,0000004C
	c.lwsp	a2,0000006C
	c.addi16sp	00000040
	c.jr	ra

;; txl_frame_get: 23006372
;;   Called from:
;;     23003A54 (in ps_send_pspoll)
;;     23004D52 (in scan_probe_req_tx)
;;     2300668C (in txl_frame_send_null_frame)
;;     23006798 (in txl_frame_send_qosnull_frame)
;;     230068C6 (in txl_frame_send_eapol_frame)
;;     2300BC60 (in sm_disconnect)
;;     2300BF20 (in sm_auth_send)
;;     2300C0A6 (in sm_assoc_req_send)
;;     2300C5AE (in sm_handle_supplicant_result)
;;     2300D7DC (in apm_send_mlme)
;;     2301C778 (in bam_send_air_action_frame)
;;     2301E622 (in scanu_raw_send_req_handler)
txl_frame_get proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,0004201A
	c.swsp	s4,0000000C
	c.mv	s4,a0
	addi	a0,s1,+00000400
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	a1,00000084
	jal	ra,000000002300E2FE
	c.mv	s0,a0
	c.beqz	a0,000000002300645A

l23006394:
	lui	a4,0004200E
	addi	a4,a4,-00000354
	c.lw	a4,0(a5)
	c.li	a3,00000001
	c.lwsp	a2,00000064
	bne	a5,a3,00000000230063EE

l230063A6:
	sw	zero,a4,+00000000
	lui	a4,0004200E
	sb	a5,a4,+00000CA8
	jal	ra,000000002303100A
	lui	a1,00023075
	lui	a0,00023075
	addi	a2,zero,+0000010B
	addi	a1,a1,-000003BC
	addi	a0,a0,-000003B4
	jal	ra,000000002301323E
	addi	a0,zero,+000000C8
	jal	ra,0000000023030630
	c.li	s0,00000000
	jal	ra,000000002303101E

l230063DC:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l230063EE:
	c.beqz	a5,00000000230063F4

l230063F0:
	c.addi	a5,FFFFFFFF
	c.sw	a4,0(a5)

l230063F4:
	c.lw	s0,108(s1)
	lw	s3,s0,+00000068
	addi	a4,a1,-00000001
	c.lw	s1,20(a5)
	c.addi	a1,00000004
	c.sw	s1,28(a1)
	c.add	a5,a4
	c.sw	s1,24(a5)
	addi	s2,s3,+000000F0
	beq	s4,zero,0000000023006422

l23006410:
	c.li	a5,00000001
	c.mv	a1,s2
	bne	s4,a5,000000002300642A

l23006418:
	lui	a1,00042048
	addi	a1,a1,-000005D4
	c.j	000000002300642A

l23006422:
	lui	a1,00042047
	addi	a1,a1,+000000B4

l2300642A:
	addi	a2,zero,+00000034
	c.mv	a0,s2
	jal	ra,0000000023070C7C
	lw	a0,s3,+00000104
	jal	ra,0000000023005618
	sw	a0,s3,+00000114
	sw	s2,s1,+00000028
	sw	zero,s1,+00000024
	sw	zero,s1,+0000003C
	sw	zero,s1,+00000010
	sw	zero,s0,+000002CC
	sw	zero,s0,+000002D0
	c.j	00000000230063DC

l2300645A:
	lui	a5,0004200E
	addi	a5,a5,-00000350
	c.lw	a5,0(a4)
	c.li	a3,0000000A
	c.addi	a4,00000001
	beq	a4,a3,0000000023006470

l2300646C:
	c.sw	a5,0(a4)
	c.j	00000000230063DC

l23006470:
	c.li	a4,00000002
	sw	zero,a5,+00000000
	addi	a0,s1,+00000400
	lui	a5,0004200E
	sw	a4,a5,+00000CAC
	jal	ra,000000002300E35E
	c.mv	s1,a0
	lui	a0,0004201A
	addi	a0,a0,+00000408
	jal	ra,000000002300E35E
	c.or	a0,s1
	c.bnez	a0,00000000230063DC

l23006498:
	jal	ra,0000000023005900
	c.j	00000000230063DC

;; txl_frame_push: 2300649E
;;   Called from:
;;     230033F0 (in mm_bcn_transmit)
;;     23003AD8 (in ps_send_pspoll)
;;     23004E0A (in scan_probe_req_tx)
;;     2300672E (in txl_frame_send_null_frame)
;;     23006844 (in txl_frame_send_qosnull_frame)
;;     23006C26 (in txl_frame_send_eapol_frame)
;;     2300B66A (in sm_frame_tx_cfm_handler)
;;     2300BD08 (in sm_disconnect)
;;     2300C00C (in sm_auth_send)
;;     2300C1A4 (in sm_assoc_req_send)
;;     2300C648 (in sm_handle_supplicant_result)
;;     2300D8AE (in apm_send_mlme)
;;     2301C8CE (in bam_send_air_action_frame)
txl_frame_push proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,108(s0)
	c.mv	s1,a0
	c.mv	s2,a1
	c.lw	s0,20(a5)
	c.andi	a5,00000001
	c.beqz	a5,00000000230064CC

l230064B4:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+00000182
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000394
	jal	ra,000000002301327E

l230064CC:
	c.lw	s0,60(a5)
	lui	a4,000FF880
	c.lw	s0,20(a3)
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	sw	zero,s0,+00000008
	sw	zero,s0,+0000000C
	c.sw	s0,60(a5)
	lbu	a5,a3,+00000004
	sw	zero,s0,+00000040
	c.mv	a1,s2
	c.andi	a5,00000001
	sltiu	a5,a5,+00000001
	c.slli	a5,09
	c.sw	s0,56(a5)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023005CD2

;; txl_frame_push_force: 23006506
;;   Called from:
;;     2301E66E (in scanu_raw_send_req_handler)
txl_frame_push_force proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,108(s0)
	c.mv	s1,a0
	c.mv	s2,a1
	c.lw	s0,20(a5)
	c.andi	a5,00000001
	c.beqz	a5,0000000023006534

l2300651C:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+000001AD
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000394
	jal	ra,000000002301327E

l23006534:
	c.lw	s0,60(a5)
	lui	a4,000FF880
	c.lw	s0,20(a3)
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	sw	zero,s0,+00000008
	sw	zero,s0,+0000000C
	c.sw	s0,60(a5)
	lbu	a5,a3,+00000004
	sw	zero,s0,+00000040
	c.mv	a1,s2
	c.andi	a5,00000001
	sltiu	a5,a5,+00000001
	c.slli	a5,09
	c.sw	s0,56(a5)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023005DA4

;; txl_frame_cfm: 2300656E
;;   Called from:
;;     23005FCC (in txl_transmit_trigger)
;;     2301C680 (in txl_cfm_flush)
txl_frame_cfm proc
	c.mv	a1,a0
	lui	a0,0004201A
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000408
	c.swsp	ra,00000084
	jal	ra,000000002300E282
	c.lwsp	a2,00000020
	lui	a0,00000020
	c.addi	sp,00000010
	jal	zero,000000002300E49C

;; txl_frame_release: 2300658C
;;   Called from:
;;     23004E98 (in sta_mgmt_entry_init)
;;     23005D12 (in txl_cntrl_push_int)
txl_frame_release proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lbu	a5,a0,+000002D4
	c.mv	s0,a0
	c.mv	s1,a1
	c.bnez	a5,00000000230065AC

l2300659E:
	c.mv	a1,a0
	lui	a0,0004201A
	addi	a0,a0,+00000400
	jal	ra,000000002300E282

l230065AC:
	c.beqz	s1,00000000230065C6

l230065AE:
	lw	t1,s0,+000002CC
	beq	t1,zero,00000000230065C6

l230065B6:
	lw	a0,s0,+000002D0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a1,00000000
	c.addi	sp,00000010
	c.jr	t1

l230065C6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; txl_frame_evt: 230065D0
;;   Called from:
;;     2301C6A6 (in txl_cfm_flush)
txl_frame_evt proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	a0,00000020
	lui	s1,0004201A
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	lui	s3,0004201A
	jal	ra,000000002300E4B4
	addi	s1,s1,+000003A8
	lui	s2,0004201A

l230065F4:
	csrrci	zero,mstatus,00000008
	addi	a0,s3,+00000408
	jal	ra,000000002300E2FE
	c.mv	s0,a0
	csrrsi	zero,mstatus,00000008
	c.beqz	a0,000000002300663C

l23006608:
	c.lw	s1,80(a5)
	c.addi	a5,FFFFFFFF
	c.sw	s1,80(a5)
	lw	a5,a0,+000002CC
	c.beqz	a5,000000002300662A

l23006614:
	c.lw	a0,108(a4)
	lw	a0,a0,+000002D0
	c.lw	a4,64(a1)
	c.jalr	a5
	lbu	a5,s0,+000002D6
	c.beqz	a5,000000002300662A

l23006624:
	sb	zero,s0,+000002D6
	c.j	00000000230065F4

l2300662A:
	lbu	a5,s0,+000002D4
	c.bnez	a5,00000000230065F4

l23006630:
	c.mv	a1,s0
	addi	a0,s2,+00000400
	jal	ra,000000002300E282
	c.j	00000000230065F4

l2300663C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; txl_frame_send_null_frame: 2300664A
;;   Called from:
;;     23002AEE (in mm_check_beacon)
;;     23002D5E (in mm_sta_tbtt)
;;     23003A1A (in ps_dpsm_update)
;;     23003BFA (in ps_set_mode)
;;     23003CA4 (in ps_enable_cfm)
;;     23003D82 (in ps_disable_cfm)
;;     23019962 (in chan_pre_switch_channel)
;;     23019AA6 (in chan_goto_idle_cb)
txl_frame_send_null_frame proc
	addi	a5,zero,+000001B0
	add	a5,a0,a5
	c.addi16sp	FFFFFFC0
	c.swsp	s2,00000018
	lui	s2,00042019
	addi	s2,s2,-000000E0
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.add	s2,a5
	c.mv	s3,a0
	c.mv	s5,a1
	c.addi4spn	a0,00000008
	c.li	a1,00000000
	c.mv	s4,a2
	lbu	s6,s2,+0000001A
	jal	ra,000000002301412E
	lbu	a0,sp,+00000008
	c.li	a1,00000018
	sltu	a0,zero,a0
	jal	ra,0000000023006372
	c.beqz	a0,000000002300674A

l23006692:
	addi	a5,zero,+000005D8
	add	s6,s6,a5
	lui	a5,0004201A
	addi	a5,a5,+00000410
	c.mv	s1,a0
	c.mv	a1,a0
	addi	s7,s2,+0000001E
	c.add	s6,a5
	c.mv	a0,s6
	jal	ra,000000002300563C
	c.lw	s1,104(s0)
	addi	a5,zero,+00000048
	c.li	a2,00000006
	sb	a5,s0,+0000014C
	c.li	a5,00000001
	sb	a5,s0,+0000014D
	c.mv	a1,s7
	sb	zero,s0,+0000014E
	sb	zero,s0,+0000014F
	addi	a0,s0,+00000150
	jal	ra,0000000023070C7C
	c.li	a2,00000006
	addi	a1,s6,+00000050
	addi	a0,s0,+00000156
	jal	ra,0000000023070C7C
	c.li	a2,00000006
	c.mv	a1,s7
	addi	a0,s0,+0000015C
	jal	ra,0000000023070C7C
	lui	a4,0004201A
	addi	a4,a4,+000003A8
	lhu	a5,a4,+00000054
	c.li	a1,00000003
	c.mv	a0,s1
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a4,+00000054
	c.slli	a5,04
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,s0,+00000162
	c.srli	a5,00000008
	sb	a5,s0,+00000163
	sw	s5,s1,+000002CC
	sw	s4,s1,+000002D0
	lbu	a5,s2,+0000001A
	sb	s3,s1,+00000030
	sb	a5,s1,+0000002F
	jal	ra,000000002300649E
	c.li	a0,00000000

l23006734:
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

l2300674A:
	c.li	a0,00000001
	c.j	0000000023006734

;; txl_frame_send_qosnull_frame: 2300674E
;;   Called from:
;;     23003946 (in ps_uapsd_timer_handle)
;;     23003E6A (in ps_check_beacon)
;;     23004686 (in rxl_cntrl_evt)
;;     2300CED6 (in txu_cntrl_cfm)
txl_frame_send_qosnull_frame proc
	addi	a5,zero,+000001B0
	add	a5,a0,a5
	c.addi16sp	FFFFFFC0
	c.swsp	s4,00000014
	lui	s4,00042019
	c.swsp	s2,00000018
	addi	s2,s4,-000000E0
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s3,00000094
	c.swsp	s9,00000088
	c.swsp	s10,00000008
	c.add	s2,a5
	c.mv	s6,a0
	c.mv	s5,a1
	c.addi4spn	a0,00000008
	c.li	a1,00000000
	c.mv	s8,a2
	c.mv	s7,a3
	lbu	s3,s2,+0000001A
	jal	ra,000000002301412E
	lbu	a0,sp,+00000008
	c.li	a1,0000001A
	sltu	a0,zero,a0
	jal	ra,0000000023006372
	c.beqz	a0,0000000023006872

l2300679E:
	addi	a5,zero,+000005D8
	add	s3,s3,a5
	lui	a5,0004201A
	addi	a5,a5,+00000410
	c.mv	a1,a0
	c.mv	s1,a0
	addi	s9,zero,-00000038
	c.addi	s2,0000001E
	addi	s4,s4,-000000E0
	c.add	s3,a5
	c.mv	a0,s3
	jal	ra,000000002300563C
	c.lw	s1,104(s0)
	c.li	a2,00000006
	c.mv	a1,s2
	sb	s9,s0,+0000014C
	sb	zero,s0,+0000014D
	sb	zero,s0,+0000014E
	sb	zero,s0,+0000014F
	addi	a0,s0,+00000150
	jal	ra,0000000023070C7C
	addi	s10,s3,+00000050
	c.li	a2,00000006
	c.mv	a1,s10
	addi	a0,s0,+00000156
	jal	ra,0000000023070C7C
	lbu	a5,s3,+00000056
	sb	s9,s0,+0000014C
	addi	a0,s0,+0000015C
	c.bnez	a5,0000000023006866

l23006800:
	c.li	a5,00000001
	sb	a5,s0,+0000014D
	c.li	a2,00000006
	c.mv	a1,s2

l2300680A:
	jal	ra,0000000023070C7C
	addi	a5,zero,+000001B0
	add	a5,s6,a5
	sb	s5,s0,+00000164
	srli	s5,s5,00000008
	sb	zero,s0,+00000162
	sb	zero,s0,+00000163
	sb	s5,s0,+00000165
	sw	s8,s1,+000002CC
	sw	s7,s1,+000002D0
	c.li	a1,00000003
	c.mv	a0,s1
	c.add	s4,a5
	lbu	a5,s4,+0000001A
	sb	s6,s1,+00000030
	sb	a5,s1,+0000002F
	jal	ra,000000002300649E
	c.li	a0,00000000

l2300684A:
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
	c.lwsp	a6,0000004C
	c.addi16sp	00000040
	c.jr	ra

l23006866:
	c.li	a5,00000002
	sb	a5,s0,+0000014D
	c.li	a2,00000006
	c.mv	a1,s10
	c.j	000000002300680A

l23006872:
	c.li	a0,00000001
	c.j	000000002300684A

;; txl_frame_send_eapol_frame: 23006876
;;   Called from:
;;     2300F03E (in UpdateEAPOLWcbLenAndTransmit)
txl_frame_send_eapol_frame proc
	c.addi16sp	FFFFFF90
	c.swsp	s1,000000B0
	addi	s1,zero,+000001B0
	add	s1,a0,s1
	c.swsp	s3,000000AC
	lui	s3,00042019
	c.swsp	s4,0000002C
	addi	s4,s3,-000000E0
	c.swsp	s5,000000A8
	c.swsp	s6,00000028
	c.swsp	s7,000000A4
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s2,00000030
	c.swsp	s8,00000024
	c.swsp	s9,000000A0
	c.swsp	s10,00000020
	c.swsp	s11,0000009C
	c.mv	s5,a0
	c.mv	s7,a1
	c.addi4spn	a0,00000018
	c.li	a1,00000000
	c.add	s4,s1
	c.swsp	a2,00000004
	c.swsp	a3,00000084
	c.mv	s6,a4
	lbu	s11,s4,+0000001A
	jal	ra,000000002301412E
	lbu	a0,sp,+00000018
	addi	a1,zero,+00000100
	sltu	a0,zero,a0
	jal	ra,0000000023006372
	beq	a0,zero,0000000023006C2A

l230068CE:
	sb	s11,a0,+0000002F
	sb	s5,a0,+00000030
	sb	zero,a0,+0000002E
	lhu	a4,s4,+000000F8
	addi	s3,s3,-000000E0
	addi	s2,zero,+000005D8
	addi	a5,a4,+00000001
	c.slli	a5,14
	c.srli	a5,00000014
	sh	a5,s4,+000000F8
	c.lui	a5,FFFF9000
	addi	a5,a5,-00000178
	sh	a5,a0,+00000020
	addi	a5,s1,+0000001E
	sh	a4,a0,+0000002A
	add	s9,a5,s3
	lhu	a4,s9,+00000000
	add	s2,s11,s2
	lui	s4,0004201A
	sh	a4,a0,+00000014
	lhu	a4,s9,+00000002
	c.mv	s0,a0
	c.mv	a1,a0
	sh	a4,a0,+00000016
	lhu	a4,s9,+00000004
	addi	a3,s2,+00000050
	sh	a4,a0,+00000018
	addi	a4,s4,+00000410
	add	s10,a3,a4
	lhu	a2,s10,+00000000
	c.add	s2,a4
	addi	s4,s4,+00000410
	sh	a2,a0,+0000001A
	lhu	a2,s10,+00000002
	sh	a2,a0,+0000001C
	lhu	a2,s10,+00000004
	sh	a2,a0,+0000001E
	c.mv	a0,s2
	jal	ra,000000002300563C
	lw	a4,s2,+000003E0
	c.lw	s0,104(s1)
	c.andi	a4,00000001
	beq	a4,zero,0000000023006C4A

l23006968:
	addi	a4,zero,-00000078
	sb	a4,s1,+0000014C
	sb	zero,s1,+0000014D
	lhu	a4,s0,+0000002A
	addi	s2,s1,+00000166
	addi	s5,s6,+00000022
	c.slli	a4,04
	c.slli	a4,10
	c.srli	a4,00000010
	sb	a4,s1,+00000162
	c.srli	a4,00000008
	sb	a4,s1,+00000163
	lbu	a4,s0,+0000002E
	sb	zero,s1,+00000165
	sb	a4,s1,+00000164

l2300699C:
	addi	a4,zero,+00000100
	bgeu	a4,s5,00000000230069BC

l230069A4:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+00000591
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000374
	jal	ra,000000002301327E

l230069BC:
	lbu	a4,s1,+0000014D
	lbu	a2,s1,+0000014C
	c.li	a1,00000002
	c.slli	a4,08
	c.or	a4,a2
	addi	a2,zero,+000005D8
	add	a2,s11,a2
	c.add	a2,s4
	lbu	a0,a2,+00000056
	ori	a2,a4,+00000100
	bne	a0,a1,00000000230069E4

l230069E0:
	ori	a2,a4,+00000200

l230069E4:
	sb	a2,s1,+0000014C
	c.srli	a2,00000008
	sb	a2,s1,+0000014D
	sb	zero,s1,+0000014E
	sb	zero,s1,+0000014F
	lhu	a4,s9,+00000000
	sh	a4,s1,+00000150
	lhu	a4,s9,+00000002
	sh	a4,s1,+00000152
	lhu	a4,s9,+00000004
	sh	a4,s1,+00000154
	lhu	a4,s10,+00000000
	sh	a4,s1,+00000156
	lhu	a4,s10,+00000002
	sh	a4,s1,+00000158
	lhu	a4,s10,+00000004
	sh	a4,s1,+0000015A
	addi	a4,zero,+000005D8
	add	s11,s11,a4
	c.li	a4,00000002
	c.add	s11,s4
	lbu	a2,s11,+00000056
	bne	a2,a4,0000000023006C84

l23006A3A:
	lhu	a5,s10,+00000000
	sh	a5,s1,+0000015C
	lhu	a5,s10,+00000002
	sh	a5,s1,+0000015E
	lhu	a5,s10,+00000004

l23006A4E:
	sh	a5,s1,+00000160
	lbu	a5,s0,+0000002F
	addi	a4,zero,+000005D8
	c.li	s11,00000000
	add	a5,a5,a4
	c.add	a5,s4
	lbu	a5,a5,+00000056
	bne	a5,zero,0000000023006B64

l23006A6A:
	lbu	a5,s0,+00000030
	addi	a4,zero,+000001B0
	c.li	a3,00000002
	add	a5,a5,a4
	c.add	a5,s3
	lbu	a4,a5,+00000031
	bne	a4,a3,0000000023006B64

l23006A82:
	lw	a5,a5,+000000AC
	c.li	a3,00000001
	c.lw	a5,0(a1)
	lbu	a5,a1,+00000060
	beq	a5,a3,0000000023006C9A

l23006A92:
	c.beqz	a5,0000000023006A9E

l23006A94:
	beq	a5,a4,0000000023006CC0

l23006A98:
	c.li	a4,00000003
	bne	a5,a4,0000000023006CE4

l23006A9E:
	c.lw	a1,72(a5)
	c.lw	a1,76(a3)
	c.li	a2,00000004
	addi	a4,a5,+00000001
	sltu	a5,a4,a5
	c.add	a5,a3
	c.sw	a1,76(a5)
	c.sw	a1,72(a4)
	addi	a0,s0,+00000022
	addi	a1,a1,+00000048
	jal	ra,0000000023070C7C
	c.li	a5,00000004
	c.li	s11,00000004

l23006AC2:
	c.add	s11,a5
	beq	s11,zero,0000000023006B64

l23006AC8:
	lbu	a5,s1,+0000014D
	lbu	a4,s1,+0000014C
	c.add	s5,s11
	c.slli	a5,08
	c.or	a5,a4
	c.lui	a4,00004000
	c.or	a5,a4
	sb	a5,s1,+0000014C
	c.srli	a5,00000008
	sb	a5,s1,+0000014D
	lbu	a5,s0,+0000002F
	addi	a4,zero,+000005D8
	add	a5,a5,a4
	c.add	s4,a5
	lbu	a4,s4,+00000056
	bne	a4,zero,0000000023006D40

l23006AFA:
	lbu	a5,s0,+00000030
	addi	a3,zero,+000001B0
	add	a5,a5,a3
	c.li	a3,00000002
	c.add	a5,s3
	lbu	a2,a5,+00000031
	bne	a2,a3,0000000023006B60

l23006B12:
	lw	a5,a5,+000000AC
	c.li	a0,00000001
	c.lw	a5,0(a3)
	c.lw	s0,108(a5)
	c.lw	a5,40(a1)
	lbu	a5,a3,+00000060
	beq	a5,a0,0000000023006CEA

l23006B26:
	c.beqz	a5,0000000023006B32

l23006B28:
	beq	a5,a2,0000000023006D2C

l23006B2C:
	c.li	a2,00000003
	bne	a5,a2,0000000023006B4C

l23006B32:
	lhu	a5,s0,+00000022
	sh	a5,s2,+00000000
	lbu	a5,a3,+00000061
	lhu	a4,s0,+00000024
	c.slli	a5,0E
	c.or	a5,a4
	sh	a5,s2,+00000002
	c.li	a4,00000004

l23006B4C:
	c.lw	a1,12(a5)
	lbu	a3,a3,+00000062
	lui	a2,00000100
	addi	a2,a2,-00000400
	c.and	a5,a2
	c.or	a5,a3
	c.sw	a1,12(a5)

l23006B60:
	c.add	s2,a4
	c.mv	s8,s2

l23006B64:
	c.lui	a5,FFFFB000
	addi	a5,a5,-00000556
	sh	a5,s2,+00000000
	c.li	a5,00000003
	sh	a5,s2,+00000002
	sh	zero,s2,+00000004
	lhu	a5,s0,+00000020
	c.lwsp	a2,00000064
	c.mv	a2,s6
	sh	a5,s2,+00000006
	addi	a0,s2,+00000008
	jal	ra,0000000023070C7C
	beq	s11,zero,0000000023006BF4

l23006B90:
	lbu	a5,s0,+00000030
	addi	a4,zero,+000001B0
	add	a5,a5,a4
	c.add	s3,a5
	lw	a5,s3,+000000AC
	c.lw	a5,0(a1)
	c.li	a5,00000001
	lbu	a4,a1,+00000060
	bne	a4,a5,0000000023006BF4

l23006BAE:
	lbu	a4,s0,+0000002E
	addi	a3,s0,+0000001A
	addi	a2,s0,+00000014
	addi	a1,a1,+00000050
	c.addi4spn	a0,00000020
	jal	ra,0000000023007564
	c.addi	s6,00000008
	c.mv	a2,s6
	c.mv	a1,s8
	c.addi4spn	a0,00000020
	jal	ra,0000000023007616
	c.addi4spn	a0,00000020
	jal	ra,000000002300775A
	add	s1,s6,s8
	c.li	a5,00000000
	c.li	a4,00000008

l23006BDE:
	c.addi4spn	a3,00000020
	c.add	a3,a5
	lbu	a2,a3,+00000000
	add	a3,s1,a5
	c.addi	a5,00000001
	sb	a2,a3,+00000000
	bne	a5,a4,0000000023006BDE

l23006BF4:
	c.lw	s0,108(a4)
	c.lw	a4,20(a5)
	c.addi	a5,FFFFFFFF
	c.add	a5,s5
	c.addi	s5,00000004
	c.sw	a4,24(a5)
	sw	s5,a4,+0000001C
	beq	s7,zero,0000000023006C12

l23006C08:
	c.lwsp	s0,000000E4
	sw	s7,s0,+000002CC
	sw	a5,s0,+000002D0

l23006C12:
	lbu	a4,s0,+0000002E
	lui	a5,00023076
	addi	a5,a5,-000002C0
	c.add	a5,a4
	lbu	a1,a5,+00000000
	c.mv	a0,s0
	jal	ra,000000002300649E

l23006C2A:
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
	c.li	a0,00000000
	c.addi16sp	00000070
	c.jr	ra

l23006C4A:
	lui	a2,0004201A
	c.li	a4,00000008
	addi	a2,a2,+000003A8
	sb	a4,s1,+0000014C
	lhu	a4,a2,+00000054
	sb	zero,s1,+0000014D
	addi	s2,s1,+00000164
	c.addi	a4,00000001
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a2,+00000054
	c.slli	a4,04
	c.slli	a4,10
	c.srli	a4,00000010
	sb	a4,s1,+00000162
	c.srli	a4,00000008
	sb	a4,s1,+00000163
	addi	s5,s6,+00000020
	c.j	000000002300699C

l23006C84:
	lhu	a4,s9,+00000000
	sh	a4,s1,+0000015C
	lhu	a4,s9,+00000002
	sh	a4,s1,+0000015E
	lhu	a5,s9,+00000004
	c.j	0000000023006A4E

l23006C9A:
	c.lw	a1,72(a5)
	c.lw	a1,76(a3)
	c.li	a2,00000006
	addi	a4,a5,+00000001
	sltu	a5,a4,a5
	c.add	a5,a3
	c.sw	a1,76(a5)
	c.sw	a1,72(a4)
	addi	a0,s0,+00000022
	addi	a1,a1,+00000048
	jal	ra,0000000023070C7C
	c.li	a5,0000000C

l23006CBC:
	c.li	s11,00000008
	c.j	0000000023006AC2

l23006CC0:
	c.lw	a1,72(a5)
	c.lw	a1,76(a3)
	c.li	a2,00000006
	addi	a4,a5,+00000001
	sltu	a5,a4,a5
	c.add	a5,a3
	c.sw	a1,76(a5)
	c.sw	a1,72(a4)
	addi	a0,s0,+00000022
	addi	a1,a1,+00000048
	jal	ra,0000000023070C7C
	c.li	a5,00000008
	c.j	0000000023006CBC

l23006CE4:
	c.li	a5,00000000
	c.li	s11,00000000
	c.j	0000000023006AC2

l23006CEA:
	lhu	a2,s0,+00000022
	c.lui	a6,00002000
	c.lui	a0,00008000
	or	a4,a2,a6
	addi	a0,a0,-00000100
	c.and	a4,a0
	c.srli	a2,00000008
	c.or	a4,a2
	sh	a4,s2,+00000000
	lbu	a4,a3,+00000061
	lbu	a5,s0,+00000022
	c.slli	a4,0E
	c.or	a5,a4
	or	a5,a5,a6

l23006D14:
	sh	a5,s2,+00000002
	lhu	a5,s0,+00000024
	c.li	a4,00000008
	sh	a5,s2,+00000004
	lhu	a5,s0,+00000026
	sh	a5,s2,+00000006
	c.j	0000000023006B4C

l23006D2C:
	lhu	a5,s0,+00000022
	c.lui	a4,00002000
	sh	a5,s2,+00000000
	lbu	a5,a3,+00000061
	c.slli	a5,0E
	c.or	a5,a4
	c.j	0000000023006D14

l23006D40:
	c.li	a4,00000000
	c.j	0000000023006B60

;; txl_frame_dump: 23006D44
;;   Called from:
;;     2300E4F8 (in bl_fw_statistic_dump)
txl_frame_dump proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201A
	addi	a0,s0,+00000400
	c.swsp	ra,00000084
	jal	ra,000000002300E35E
	c.beqz	a0,0000000023006D68

l23006D58:
	lw	a4,s0,+00000400
	c.mv	a5,s0

l23006D5E:
	c.bnez	a4,0000000023006D70

l23006D60:
	addi	a5,a5,+00000400
	c.lw	a5,8(a5)

l23006D66:
	c.bnez	a5,0000000023006D74

l23006D68:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23006D70:
	c.lw	a4,0(a4)
	c.j	0000000023006D5E

l23006D74:
	c.lw	a5,0(a5)
	c.j	0000000023006D66

;; txl_hwdesc_init: 23006D78
;;   Called from:
;;     23005718 (in txl_cntrl_init)
txl_hwdesc_init proc
	c.jr	ra

;; txl_hwdesc_reset: 23006D7A
;;   Called from:
;;     230060AA (in txl_reset)
txl_hwdesc_reset proc
	c.jr	ra

;; vif_mgmt_bcn_to_evt: 23006D7C
;;   Called from:
;;     230072D6 (in vif_mgmt_bcn_recv)
vif_mgmt_bcn_to_evt proc
	c.lw	a0,64(a5)
	c.beqz	a5,0000000023006D84

l23006D80:
	jal	zero,000000002301A1BE

l23006D84:
	c.jr	ra

;; vif_mgmt_init: 23006D86
;;   Called from:
;;     23001D30 (in mm_init)
vif_mgmt_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004201B
	c.li	a2,00000014
	c.li	a1,00000000
	addi	a0,s1,-00000040
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	jal	ra,0000000023070EB8
	addi	a0,s1,-00000040
	jal	ra,000000002300E278
	lui	a0,0004201B
	addi	a0,a0,-00000038
	jal	ra,000000002300E278
	lui	s4,0004201A
	addi	a2,zero,+000005D8
	c.li	a1,00000000
	addi	a0,s4,+00000410
	jal	ra,0000000023070EB8
	lui	s2,00023007
	addi	s0,s4,+00000410
	addi	s3,zero,+0000007F
	c.li	s5,00000004
	addi	s2,s2,-00000284
	addi	a1,s4,+00000410
	addi	a0,s1,-00000040
	lui	s4,0004201B
	sb	s5,s0,+00000056
	sb	s3,s0,+00000059
	sb	s3,s0,+0000005A
	sw	s2,s0,+0000002C
	c.sw	s0,48(s0)
	jal	ra,000000002300E282
	c.li	a1,00000000
	addi	a0,s4,-00000618
	addi	a2,zero,+000005D8
	jal	ra,0000000023070EB8
	addi	a5,s4,-00000618
	sb	s5,s0,+0000062E
	sb	s3,s0,+00000631
	sb	s3,s0,+00000632
	sw	s2,s0,+00000604
	sw	a5,s0,+00000608
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	tp,000000A8
	addi	a1,s4,-00000618
	addi	a0,s1,-00000040
	c.lwsp	s0,00000088
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002300E282

;; vif_mgmt_register: 23006E42
;;   Called from:
;;     2301BB1A (in mm_hw_config_handler)
vif_mgmt_register proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004201B
	lw	a5,s0,-00000040
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	beq	a5,zero,0000000023006FAE

l23006E5C:
	addi	a5,s0,-00000040
	c.lw	a5,8(a5)
	c.mv	s1,a0
	c.mv	s3,a3
	c.mv	s2,a1
	addi	s4,s0,-00000040
	c.bnez	a5,0000000023006F12

l23006E6E:
	jal	ra,00000000230023EC

l23006E72:
	addi	a0,s0,-00000040
	jal	ra,000000002300E2FE
	c.mv	s0,a0
	sb	s2,a0,+00000056
	c.li	a2,00000006
	c.mv	a1,s1
	addi	a0,a0,+00000050
	jal	ra,0000000023070C7C
	lui	a5,0004201A
	addi	a5,a5,+00000410
	sub	a5,s0,a5
	lui	a4,000A18A4
	addi	a4,a4,+00000473
	c.srai	a5,00000003
	add	a5,a5,a4
	c.lui	a4,00001000
	addi	a3,a4,-000005B9
	addi	a4,a4,-000005BD
	c.sw	s0,12(a4)
	lui	a4,0000005E
	addi	a4,a4,+00000432
	c.sw	s0,16(a4)
	lui	a4,0000002F
	addi	a4,a4,+00000322
	andi	a5,a5,+000000FF
	sb	a5,s0,+00000057
	c.sw	s0,8(a3)
	c.sw	s0,20(a4)
	sw	zero,s0,+00000040
	sb	a5,s0,+0000004C
	beq	s2,zero,0000000023006F6C

l23006EDC:
	c.li	a5,00000002
	beq	s2,a5,0000000023006F92

l23006EE2:
	lbu	a0,s0,+00000057
	jal	ra,000000002300542A
	lbu	a5,s0,+00000057
	lui	a0,0004201B
	addi	a0,a0,-00000038
	sb	a5,s3,+00000000
	c.mv	a1,s0
	jal	ra,000000002300E282
	c.li	a0,00000000

l23006F02:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23006F12:
	lbu	a4,a0,+00000001
	lbu	a5,a0,+00000000
	lui	a3,00044B00
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,a0,+00000002
	c.lw	a3,16(a2)
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,a0,+00000003
	c.li	a0,00000001
	c.slli	a5,18
	c.or	a5,a4
	bne	a5,a2,0000000023006F02

l23006F3A:
	lbu	a5,s1,+00000005
	lbu	a1,s1,+00000004
	c.lw	a3,20(a2)
	c.lw	a3,28(a4)
	c.slli	a5,08
	c.or	a5,a1
	c.xor	a5,a2
	xori	a4,a4,-00000001
	c.and	a5,a4
	c.bnez	a5,0000000023006F02

l23006F54:
	lui	a4,00042019
	addi	a4,a4,-000001A8
	c.lw	a4,4(a5)
	ori	a5,a5,+00000010
	c.sw	a4,4(a5)
	c.lw	a4,0(a4)
	c.or	a5,a4
	c.sw	a3,96(a5)
	c.j	0000000023006E72

l23006F6C:
	lbu	a5,s4,+00000010
	c.sw	s0,32(s0)
	sb	zero,s0,+00000079
	c.addi	a5,00000001
	sb	a5,s4,+00000010
	lui	a5,00023003
	addi	a5,a5,-00000354
	c.sw	s0,28(a5)
	c.li	a5,FFFFFFFF
	sb	a5,s0,+00000060
	sb	zero,s0,+0000007A
	c.j	0000000023006EE2

l23006F92:
	lbu	a5,s4,+00000011
	c.bnez	a5,0000000023006F9C

l23006F98:
	jal	ra,0000000023002466

l23006F9C:
	lbu	a5,s4,+00000011
	c.mv	a0,s0
	c.addi	a5,00000001
	sb	a5,s4,+00000011
	jal	ra,00000000230030BC
	c.j	0000000023006EE2

l23006FAE:
	c.li	a0,00000001
	c.j	0000000023006F02

;; vif_mgmt_unregister: 23006FB2
;;   Called from:
;;     2301BB2E (in mm_hw_config_handler)
vif_mgmt_unregister proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	addi	s2,zero,+000005D8
	add	s2,a0,s2
	c.swsp	s0,0000000C
	lui	s0,0004201A
	c.swsp	s1,00000088
	addi	s1,s0,+00000410
	c.swsp	s5,00000080
	c.mv	s5,a0
	lui	a0,0004201B
	addi	a0,a0,-00000038
	c.swsp	s3,00000084
	c.add	s1,s2
	c.mv	a1,s1
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	jal	ra,000000002300E30A
	lbu	a5,s1,+00000056
	lui	s4,0004201B
	addi	s0,s0,+00000410
	addi	s3,s4,-00000040
	c.beqz	a5,00000000230070B4

l23006FF6:
	c.li	a4,00000002
	beq	a5,a4,00000000230070C0

l23006FFC:
	lbu	a4,s3,+00000010
	lbu	a5,s3,+00000011
	c.add	a5,a4
	c.li	a4,00000001
	bne	a5,a4,0000000023007032

l2300700C:
	lui	a4,00042019
	addi	a4,a4,-000001A8
	c.lw	a4,4(a5)
	lw	a3,s3,+00000008
	c.andi	a5,FFFFFFEF
	c.sw	a4,4(a5)
	c.lw	a4,0(a4)
	c.or	a5,a4
	lui	a4,00044B00
	c.sw	a4,96(a5)
	c.lw	a3,56(a5)
	c.sw	a4,32(a5)
	lhu	a5,a3,+0000003C
	c.sw	a4,36(a5)

l23007032:
	addi	a5,zero,+000005D8
	add	a5,s5,a5
	c.add	a5,s0
	lbu	a4,a5,+00000056
	c.li	a5,00000002
	bne	a4,a5,000000002300704A

l23007046:
	jal	ra,00000000230058DE

l2300704A:
	addi	a0,s2,+00000018
	c.add	a0,s0
	jal	ra,00000000230037DC
	addi	a0,s2,+00000028
	c.add	a0,s0
	jal	ra,00000000230037DC
	addi	a5,zero,+000005D8
	add	s5,s5,a5
	c.add	s0,s5
	lbu	a0,s0,+00000057
	jal	ra,000000002300539C
	c.li	a1,00000000
	c.mv	a0,s1
	addi	a2,zero,+000005D8
	jal	ra,0000000023070EB8
	c.li	a5,00000004
	sb	a5,s0,+00000056
	addi	a5,zero,+0000007F
	sb	a5,s0,+00000059
	sb	a5,s0,+0000005A
	lui	a5,00023007
	addi	a5,a5,-00000284
	c.sw	s0,44(a5)
	c.sw	s0,48(s1)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	tp,000000A8
	c.mv	a1,s1
	addi	a0,s4,-00000040
	c.lwsp	s4,00000024
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,000000002300E282

l230070B4:
	lbu	a5,s3,+00000010
	c.addi	a5,FFFFFFFF
	sb	a5,s3,+00000010
	c.j	0000000023006FFC

l230070C0:
	lbu	a5,s3,+00000011
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s3,+00000011
	c.bnez	a5,0000000023006FFC

l230070D0:
	jal	ra,000000002300249C
	c.j	0000000023006FFC

;; vif_mgmt_add_key: 230070D6
;;   Called from:
;;     230021D8 (in mm_sec_machwkey_wr)
vif_mgmt_add_key proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	lbu	s3,a0,+00000029
	lbu	s1,a0,+00000000
	addi	s0,zero,+00000068
	addi	a3,zero,+000005D8
	add	s0,s1,s0
	lui	s5,0004201A
	c.mv	s2,a0
	addi	a2,zero,+00000048
	add	a3,s3,a3
	c.add	a3,s0
	addi	s4,a3,+00000420
	addi	s0,s5,+00000410
	c.add	s4,s0
	c.add	s0,a3
	sb	a1,s0,+00000482
	lbu	a5,a0,+00000028
	c.li	a1,00000000
	sb	a5,s0,+00000480
	lbu	a5,a0,+00000000
	c.mv	a0,s4
	sb	a5,s0,+00000481
	jal	ra,0000000023070EB8
	lbu	a4,s0,+00000480
	c.li	a3,00000001
	addi	a5,s5,+00000410
	beq	a4,a3,00000000230071B8

l23007140:
	c.beqz	a4,0000000023007148

l23007142:
	c.li	a3,00000003
	bne	a4,a3,00000000230071E6

l23007148:
	lui	a4,0004200E
	addi	a4,a4,-00000704
	c.lw	a4,0(a3)
	lui	a2,00041C65
	addi	a2,a2,-00000193
	add	a3,a3,a2
	c.lui	a2,00003000
	addi	a2,a2,+00000039
	c.add	a3,a2
	c.sw	a4,0(a3)
	addi	a2,zero,+000005D8
	addi	a4,zero,+00000068
	add	a4,s1,a4
	c.srli	a3,00000010
	add	a2,s3,a2
	c.add	a4,a2
	c.add	a4,a5
	sw	a3,a4,+00000468
	sw	zero,a4,+0000046C

l23007186:
	addi	a4,zero,+00000068
	add	s1,s1,a4
	addi	a4,zero,+000005D8
	c.li	a3,00000001
	add	a4,s3,a4
	c.add	s1,a4
	c.add	s1,a5
	c.add	a5,a4
	sb	a3,s1,+00000483
	sw	s4,a5,+000005C0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l230071B8:
	c.li	a4,00000000
	c.li	a3,00000000
	sw	a3,s0,+00000468
	sw	a4,s0,+0000046C
	lw	a4,s2,+00000018
	sw	a4,s0,+00000470
	lw	a4,s2,+0000001C
	sw	a4,s0,+00000474
	lw	a4,s2,+00000020
	sw	a4,s0,+00000478
	lw	a4,s2,+00000024
	sw	a4,s0,+0000047C
	c.j	0000000023007186

l230071E6:
	c.li	a3,00000000
	c.li	a4,00000000
	sw	a3,s0,+00000468
	sw	a4,s0,+0000046C
	c.j	0000000023007186

;; vif_mgmt_del_key: 230071F4
;;   Called from:
;;     2300237C (in mm_sec_machwkey_del)
vif_mgmt_del_key proc
	addi	a5,zero,+00000068
	add	a1,a1,a5
	add	a5,a0,a1
	sb	zero,a5,+00000483
	lw	a5,a0,+000005C0
	addi	a1,a1,+00000420
	c.add	a1,a0
	bne	a5,a1,0000000023007242

l23007212:
	sw	zero,a0,+000005C0
	addi	a4,a0,+00000483
	c.li	a5,00000000
	c.li	a3,00000004

l2300721E:
	lbu	a2,a4,+00000000
	c.beqz	a2,0000000023007238

l23007224:
	addi	a4,zero,+00000068
	add	a5,a5,a4
	addi	a5,a5,+00000420
	c.add	a5,a0
	sw	a5,a0,+000005C0
	c.jr	ra

l23007238:
	c.addi	a5,00000001
	addi	a4,a4,+00000068
	bne	a5,a3,000000002300721E

l23007242:
	c.jr	ra

;; vif_mgmt_send_postponed_frame: 23007244
;;   Called from:
;;     23007286 (in vif_mgmt_reset)
;;     230199BC (in chan_pre_switch_channel)
vif_mgmt_send_postponed_frame proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lw	s0,a0,+00000350
	c.mv	s1,a0

l23007252:
	c.bnez	s0,000000002300725E

l23007254:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2300725E:
	c.mv	a1,s0
	c.li	a2,00000000
	c.mv	a0,s1
	jal	ra,0000000023005246
	c.lw	s0,0(s0)
	c.j	0000000023007252

;; vif_mgmt_reset: 2300726C
;;   Called from:
;;     2301BF3C (in bl_reset_evt)
vif_mgmt_reset proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004201B
	c.swsp	s0,00000004
	lw	s0,a5,-00000038
	c.swsp	ra,00000084

l2300727A:
	c.bnez	s0,0000000023007284

l2300727C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23007284:
	c.mv	a0,s0
	jal	ra,0000000023007244
	c.lw	s0,0(s0)
	c.j	000000002300727A

;; vif_mgmt_bcn_to_prog: 2300728E
;;   Called from:
;;     23001E2E (in mm_tbtt_evt)
;;     23002D16 (in mm_sta_tbtt)
vif_mgmt_bcn_to_prog proc
	lui	a5,00044B00
	lw	a1,a5,+00000120
	c.lui	a5,00002000
	addi	a5,a5,+00000710
	c.add	a1,a5
	addi	a0,a0,+00000028
	jal	zero,0000000023003726

;; vif_mgmt_bcn_recv: 230072A6
;;   Called from:
;;     2300459A (in rxl_cntrl_evt)
vif_mgmt_bcn_recv proc
	lui	a5,00042019
	addi	a5,a5,-00000150
	lbu	a4,a5,+00000000
	c.beqz	a4,00000000230072DA

l230072B4:
	c.lw	a5,4(a5)
	c.andi	a5,00000008
	c.bnez	a5,00000000230072DA

l230072BA:
	c.lw	a0,4(a5)
	c.bnez	a5,00000000230072DA

l230072BE:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	addi	a0,a0,+00000028
	c.swsp	ra,00000084
	jal	ra,00000000230037DC
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023006D7C

l230072DA:
	c.jr	ra

;; vif_mgmt_set_ap_bcn_int: 230072DC
;;   Called from:
;;     2301BBC0 (in mm_hw_config_handler)
vif_mgmt_set_ap_bcn_int proc
	sh	a1,a0,+0000033E
	csrrci	zero,mstatus,00000008
	lui	a5,0004201B
	addi	a4,a5,-00000040
	lbu	a2,a4,+00000011
	c.li	a3,00000001
	addi	a5,a5,-00000040
	bgeu	a3,a2,0000000023007350

l230072FA:
	lbu	a3,a5,+00000012
	addi	a2,zero,+000005D8
	lui	a4,0004201A
	add	a3,a3,a2
	addi	a4,a4,+00000410
	c.add	a4,a3
	lhu	a4,a4,+0000033E
	bgeu	a1,a4,0000000023007322

l23007318:
	lbu	a4,a0,+00000057
	sb	a4,a5,+00000012
	c.mv	a4,a1

l23007322:
	c.lw	a5,8(a5)
	c.li	a2,00000001

l23007326:
	c.bnez	a5,000000002300733C

l23007328:
	lui	a3,00044B00
	c.lw	a3,100(a5)
	c.lui	a2,FFFF0000
	c.and	a5,a2
	c.or	a5,a4
	c.sw	a3,100(a5)
	csrrsi	zero,mstatus,00000008
	c.jr	ra

l2300733C:
	lhu	a3,a5,+0000033E
	sb	a2,a5,+00000341
	srl	a3,a3,a4
	sb	a3,a5,+00000340
	c.lw	a5,0(a5)
	c.j	0000000023007326

l23007350:
	lbu	a5,a0,+00000057
	sb	a5,a4,+00000012
	addi	a5,zero,+00000101
	sh	a5,a0,+00000340
	c.mv	a4,a1
	c.j	0000000023007328

;; vif_mgmt_switch_channel: 23007364
;;   Called from:
;;     23002CDA (in mm_sta_tbtt)
;;     23003694 (in mm_bcn_transmitted)
vif_mgmt_switch_channel proc
	c.addi	sp,FFFFFFE0
	c.li	a3,00000003
	c.li	a2,00000000
	c.li	a1,0000000D
	c.swsp	s0,0000000C
	c.mv	s0,a0
	addi	a0,zero,+00000058
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	jal	ra,000000002300E768
	c.mv	s1,a0
	lbu	a0,s0,+00000057
	c.li	a5,FFFFFFFF
	sb	a5,sp,+0000000F
	jal	ra,000000002301A562
	lhu	a1,s0,+000005CA
	lbu	a0,s0,+000005C8
	addi	s2,s0,+000005C8
	c.jal	00000000230074CA
	lhu	a5,s0,+000005CC
	sw	a0,s0,+000003A4
	c.li	a4,00000004
	sh	a5,s0,+000003A8
	lhu	a5,s0,+000005CE
	sh	a5,s0,+000003AA
	lbu	a5,s0,+000005C9
	sb	a5,s0,+000003DB
	bne	a5,a4,00000000230073C0

l230073BE:
	c.li	a5,00000003

l230073C0:
	sb	a5,s0,+000003DA
	c.beqz	a0,000000002300740A

l230073C6:
	lb	a5,a0,+00000004
	addi	a1,sp,+0000000F
	c.mv	a0,s2
	sb	a5,s0,+000005D0
	jal	ra,0000000023019F56
	lbu	a1,sp,+0000000F
	sb	a0,s1,+00000001
	sb	a1,s1,+00000002
	lbu	a5,s0,+00000056
	c.beqz	a5,0000000023007410

l230073EA:
	c.li	a4,00000002
	bne	a5,a4,000000002300745A

l230073F0:
	sb	zero,s0,+00000347
	c.bnez	a0,000000002300745A

l230073F6:
	lbu	a0,s0,+00000057
	jal	ra,000000002301A440
	lui	a5,00042019
	c.li	a4,00000001
	sb	a4,a5,+00000E8D
	c.j	000000002300745A

l2300740A:
	lbu	a5,zero,+00000004
	c.ebreak

l23007410:
	sb	zero,s0,+00000079
	c.bnez	a0,000000002300746C

l23007416:
	lbu	a0,s0,+00000057
	lbu	s2,s0,+00000060
	jal	ra,000000002301A440
	addi	a0,s0,+00000028
	jal	ra,00000000230037DC
	addi	a4,zero,+000001B0
	add	s2,s2,a4
	lui	a5,00044B00
	lw	a1,a5,+00000120
	lui	a5,00042019
	addi	a5,a5,-000000E0
	addi	a0,s0,+00000018
	c.add	a5,s2
	c.lw	a5,4(a5)
	c.add	a1,a5
	jal	ra,0000000023003726
	c.li	a5,00000001
	sb	zero,s0,+00000074
	sb	a5,s0,+0000007A

l2300745A:
	c.mv	a0,s1
	jal	ra,000000002300E7D4
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2300746C:
	c.mv	a0,s0
	jal	ra,0000000023002902
	c.j	000000002300745A

;; vif_mgmt_get_first_ap_inf: 23007474
;;   Called from:
;;     23009F98 (in rxu_cntrl_frame_handle)
;;     2300DA6E (in apm_probe_req_handler)
vif_mgmt_get_first_ap_inf proc
	lui	a5,0004201B
	addi	a5,a5,-00000040
	lbu	a4,a5,+00000011
	c.li	a0,00000000
	c.beqz	a4,000000002300748A

l23007484:
	c.lw	a5,8(a0)
	c.li	a5,00000002

l23007488:
	c.bnez	a0,000000002300748C

l2300748A:
	c.jr	ra

l2300748C:
	lbu	a4,a0,+00000056
	beq	a4,a5,000000002300748A

l23007494:
	c.lw	a0,0(a0)
	c.j	0000000023007488

;; me_init: 23007498
;;   Called from:
;;     2301B722 (in mm_reset_req_handler)
;;     2301BEDE (in bl_init)
me_init proc
	lui	a0,0004201B
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+00000134
	c.li	a1,00000000
	addi	a0,a0,-0000002C
	c.swsp	ra,00000084
	jal	ra,0000000023070EB8
	c.li	a1,00000000
	c.li	a0,00000005
	jal	ra,000000002300E902
	jal	ra,000000002300A88C
	jal	ra,000000002300D0DA
	jal	ra,000000002300B67C
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002301C710

;; me_freq_to_chan_ptr: 230074CA
;;   Called from:
;;     2300739A (in vif_mgmt_switch_channel)
;;     2300AB78 (in scanu_frame_handler)
;;     2300B004 (in scanu_frame_handler)
;;     2301F40C (in apm_start_req_handler)
me_freq_to_chan_ptr proc
	lui	a5,0004201B
	addi	a5,a5,-0000002C
	c.beqz	a0,00000000230074F0

l230074D4:
	lbu	a4,a5,+0000012D
	lui	a5,0004201B
	addi	a5,a5,+00000058
	c.j	00000000230074FC

l230074E2:
	c.mv	a0,a5
	c.addi	a5,00000006
	lhu	a3,a5,-00000006
	bne	a3,a1,0000000023007504

l230074EE:
	c.jr	ra

l230074F0:
	lbu	a4,a5,+0000012C
	lui	a5,0004201B
	addi	a5,a5,+00000004

l230074FC:
	c.li	a3,00000006
	add	a4,a4,a3
	c.add	a4,a5

l23007504:
	bne	a5,a4,00000000230074E2

l23007508:
	c.li	a0,00000000
	c.jr	ra

;; michael_block: 2300750C
;;   Called from:
;;     230075EE (in me_mic_init)
;;     230075F6 (in me_mic_init)
;;     230075FE (in me_mic_init)
;;     23007612 (in me_mic_init)
;;     2300769A (in me_mic_calc)
;;     2300770E (in me_mic_calc)
;;     23007750 (in me_mic_calc)
;;     2300779C (in me_mic_end)
;;     230077AC (in me_mic_end)
michael_block proc
	c.lw	a0,0(a5)
	c.lw	a0,4(a4)
	lui	a2,000FF010
	c.xor	a1,a5
	slli	a3,a1,00000011
	srli	a5,a1,0000000F
	c.or	a5,a3
	c.xor	a4,a5
	c.add	a1,a4
	lui	a3,00000FF0
	srli	a5,a1,00000008
	addi	a3,a3,+000000FF
	c.and	a5,a3
	addi	a2,a2,-00000100
	slli	a3,a1,00000008
	c.and	a3,a2
	c.or	a5,a3
	c.xor	a5,a4
	c.add	a1,a5
	srli	a3,a1,0000001D
	slli	a4,a1,00000003
	c.or	a4,a3
	c.xor	a4,a5
	c.add	a1,a4
	srli	a5,a1,00000002
	slli	a3,a1,0000001E
	c.or	a5,a3
	c.xor	a5,a4
	c.add	a1,a5
	c.sw	a0,4(a5)
	c.sw	a0,0(a1)
	c.jr	ra

;; me_mic_init: 23007564
;;   Called from:
;;     23006BC0 (in txl_frame_send_eapol_frame)
;;     2300A3B2 (in rxu_cntrl_frame_handle)
;;     2300CDF2 (in txu_cntrl_tkip_mic_append)
me_mic_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s1,a0
	lbu	a0,a2,+00000001
	lbu	a5,a2,+00000000
	lbu	s0,a3,+00000001
	c.slli	a0,08
	c.or	a0,a5
	lbu	a5,a2,+00000002
	c.slli	s0,08
	lbu	s2,a3,+00000002
	c.slli	a5,10
	c.or	a0,a5
	lbu	a5,a2,+00000003
	andi	s3,a4,+00000007
	c.slli	a5,18
	c.or	a5,a0
	lbu	a0,a3,+00000000
	c.or	s0,a0
	lbu	a0,a2,+00000004
	lbu	a2,a2,+00000005
	c.slli	s0,10
	c.slli	a2,08
	c.or	a2,a0
	c.or	s0,a2
	lbu	a2,a3,+00000003
	c.slli	a2,08
	or	a2,a2,s2
	lbu	s2,a3,+00000004
	c.slli	s2,10
	or	a2,s2,a2
	lbu	s2,a3,+00000005
	addi	a3,zero,+000000FF
	c.slli	s2,18
	or	s2,s2,a2
	bne	a4,a3,00000000230075DA

l230075D8:
	c.li	s3,00000000

l230075DA:
	c.lw	a1,0(a4)
	c.mv	a0,s1
	c.sw	s1,0(a4)
	c.lw	a1,4(a4)
	c.mv	a1,a5
	sw	zero,s1,+00000008
	c.sw	s1,4(a4)
	sb	zero,s1,+0000000C
	jal	ra,000000002300750C
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002300750C
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002300750C
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.mv	a1,s3
	c.mv	a0,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002300750C

;; me_mic_calc: 23007616
;;   Called from:
;;     23006BCC (in txl_frame_send_eapol_frame)
;;     2300A404 (in rxu_cntrl_frame_handle)
;;     2300CE06 (in txu_cntrl_tkip_mic_append)
;;     2300CE52 (in txu_cntrl_tkip_mic_append)
me_mic_calc proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s8,00000004
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	andi	a5,a1,-00000004
	addi	s4,a5,+00000004
	c.andi	a1,00000003
	c.lw	a5,0(a5)
	c.li	s0,00000004
	c.sub	s0,a1
	andi	s0,s0,+000000FF
	c.slli	a1,03
	c.mv	s3,a0
	lbu	a3,a0,+0000000C
	srl	a1,a5,a1
	c.lw	a0,8(a0)
	sub	s8,a2,s0
	bgeu	a2,s0,000000002300766E

l2300765A:
	c.li	a5,00000004
	c.sub	a5,a2
	c.slli	a5,03
	c.li	a4,FFFFFFFF
	srl	a5,a4,a5
	c.and	a1,a5
	andi	s0,a2,+000000FF
	c.li	s8,00000000

l2300766E:
	slli	s1,a3,00000003
	sll	s1,a1,s1
	c.add	s0,a3
	c.li	a5,00000003
	c.or	s1,a0
	bgeu	a5,s0,00000000230076A0

l23007680:
	c.li	a4,00000004
	c.sub	a4,a3
	c.slli	a4,03
	addi	a5,zero,+00000020
	c.li	s2,00000000
	beq	a4,a5,0000000023007694

l23007690:
	srl	s2,a1,a4

l23007694:
	c.mv	a1,s1
	c.mv	a0,s3
	c.addi	s0,FFFFFFFC
	jal	ra,000000002300750C
	c.mv	s1,s2

l230076A0:
	c.li	s2,00000004
	sub	s2,s2,s0
	srli	s6,s8,00000002
	slli	s5,s0,00000003
	c.slli	s2,03
	c.mv	a4,s4
	c.li	s7,00000000
	addi	s9,zero,+00000020

l230076B8:
	bne	s6,s7,0000000023007738

l230076BC:
	c.slli	s6,02
	andi	a5,s8,-00000004
	c.add	s4,s6
	bgeu	a5,s8,0000000023007714

l230076C8:
	andi	a5,s8,+00000003
	c.li	a4,00000004
	c.sub	a4,a5
	c.slli	a4,03
	addi	a1,zero,+00000020
	lw	a3,s4,+00000000
	c.li	a2,00000000
	beq	a4,a1,00000000230076E6

l230076E0:
	c.li	a2,FFFFFFFF
	srl	a2,a2,a4

l230076E6:
	and	a4,a3,a2
	c.add	s0,a5
	sll	s5,a4,s5
	c.li	a5,00000003
	or	s1,s1,s5
	bgeu	a5,s0,0000000023007714

l230076FA:
	addi	a5,zero,+00000020
	c.li	s4,00000000
	beq	s2,a5,0000000023007708

l23007704:
	srl	s4,a4,s2

l23007708:
	c.mv	a1,s1
	c.mv	a0,s3
	c.addi	s0,FFFFFFFC
	jal	ra,000000002300750C
	c.mv	s1,s4

l23007714:
	sb	s0,s3,+0000000C
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	sw	s1,s3,+00000008
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
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

l23007738:
	c.lw	a4,0(a5)
	addi	s10,a4,+00000004
	sll	a1,a5,s5
	c.or	a1,s1
	c.li	s1,00000000
	beq	s2,s9,000000002300774E

l2300774A:
	srl	s1,a5,s2

l2300774E:
	c.mv	a0,s3
	jal	ra,000000002300750C
	c.addi	s7,00000001
	c.mv	a4,s10
	c.j	00000000230076B8

;; me_mic_end: 2300775A
;;   Called from:
;;     23006BD2 (in txl_frame_send_eapol_frame)
;;     2300A496 (in rxu_cntrl_frame_handle)
;;     2300CE16 (in txu_cntrl_tkip_mic_append)
;;     2300CE60 (in txu_cntrl_tkip_mic_append)
me_mic_end proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lbu	a4,a0,+0000000C
	c.li	a5,00000003
	c.mv	s0,a0
	c.lw	a0,8(s1)
	bgeu	a5,a4,0000000023007788

l23007770:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+0000013E
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000035C
	jal	ra,000000002301327E

l23007788:
	lbu	a1,s0,+0000000C
	c.mv	a0,s0
	slli	a5,a1,00000003
	addi	a1,zero,+0000005A
	sll	a1,a1,a5
	c.or	a1,s1
	jal	ra,000000002300750C
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,000000002300750C

;; me_set_sta_ht_vht_param: 230077B0
;;   Called from:
;;     2301E5DA (in me_sta_add_req_handler)
;;     2301EEBE (in mm_sta_add_cfm_handler)
me_set_sta_ht_vht_param proc
	lhu	a5,a0,+000000C0
	lui	a4,0004201B
	addi	a6,a4,-0000002C
	lbu	a7,a6,+0000012F
	srli	a3,a5,00000001
	srai	a2,a5,00000008
	c.andi	a3,00000001
	c.andi	a2,00000003
	bgeu	a7,a3,00000000230077D2

l230077D0:
	c.mv	a3,a7

l230077D2:
	sb	a3,a0,+000000F0
	lbu	a4,a1,+00000083
	c.li	a1,00000004
	bne	a4,a1,00000000230077E2

l230077E0:
	c.li	a4,00000002

l230077E2:
	bgeu	a3,a4,00000000230077E8

l230077E6:
	c.mv	a4,a3

l230077E8:
	sb	a4,a0,+000000F1
	lbu	a4,a6,+0000012E
	bgeu	a2,a4,00000000230077F6

l230077F4:
	c.mv	a4,a2

l230077F6:
	sb	a4,a0,+000000F4
	andi	a0,a5,+0000000C
	c.addi	a0,FFFFFFF4
	sltu	a0,zero,a0
	c.jr	ra

;; me_11n_nss_max: 23007806
;;   Called from:
;;     23007F0E (in me_sta_bw_nss_max_upd)
;;     23007F1C (in me_sta_bw_nss_max_upd)
;;     23008ED6 (in rc_init)
;;     23008EE4 (in rc_init)
me_11n_nss_max proc
	lbu	a5,a0,+00000003
	c.bnez	a5,0000000023007820

l2300780C:
	lbu	a4,a0,+00000002
	c.li	a5,00000002
	c.bnez	a4,000000002300781C

l23007814:
	lbu	a5,a0,+00000001
	c.beqz	a5,000000002300781C

l2300781A:
	c.li	a5,00000001

l2300781C:
	c.mv	a0,a5
	c.jr	ra

l23007820:
	c.li	a5,00000003
	c.j	000000002300781C

;; me_legacy_ridx_min: 23007824
;;   Called from:
;;     23008F46 (in rc_init)
;;     230090BE (in rc_init)
me_legacy_ridx_min proc
	c.li	a5,00000000
	c.li	a2,0000000C

l23007828:
	sra	a4,a0,a5
	c.andi	a4,00000001
	andi	a3,a5,+000000FF
	c.bnez	a4,000000002300783C

l23007834:
	c.addi	a5,00000001
	bne	a5,a2,0000000023007828

l2300783A:
	c.li	a3,0000000C

l2300783C:
	c.mv	a0,a3
	c.jr	ra

;; me_legacy_ridx_max: 23007840
;;   Called from:
;;     23008F7C (in rc_init)
;;     230090F4 (in rc_init)
me_legacy_ridx_max proc
	c.beqz	a0,000000002300786A

l23007842:
	c.li	a5,0000000B
	c.li	a1,0000000B
	c.li	a2,FFFFFFFF

l23007848:
	sra	a3,a0,a5
	sub	a4,a1,a5
	c.andi	a3,00000001
	andi	a4,a4,+000000FF
	c.bnez	a3,0000000023007860

l23007858:
	c.addi	a5,FFFFFFFF
	bne	a5,a2,0000000023007848

l2300785E:
	c.li	a4,0000000C

l23007860:
	c.li	a0,0000000B
	c.sub	a0,a4
	andi	a0,a0,+000000FF
	c.jr	ra

l2300786A:
	c.li	a0,0000000C
	c.jr	ra

;; me_rate_translate: 2300786E
;;   Called from:
;;     23007980 (in me_legacy_rate_bitfield_build)
;;     23007A32 (in me_init_bcmc_rate)
;;     2300DE4A (in apm_assoc_req_handler)
me_rate_translate proc
	andi	a5,a0,+0000007F
	c.li	a4,00000016
	beq	a5,a4,00000000230078E6

l23007878:
	bltu	a4,a5,00000000230078AC

l2300787C:
	c.li	a4,0000000B
	c.li	a0,00000002
	beq	a5,a4,00000000230078E8

l23007884:
	bltu	a4,a5,000000002300789E

l23007888:
	c.li	a4,00000002
	c.li	a0,00000000
	beq	a5,a4,00000000230078E8

l23007890:
	c.li	a4,00000004
	c.li	a0,00000001

l23007894:
	beq	a5,a4,00000000230078E8

l23007898:
	addi	a0,zero,+000000FF
	c.jr	ra

l2300789E:
	c.li	a4,0000000C
	c.li	a0,00000004
	beq	a5,a4,00000000230078E8

l230078A6:
	c.li	a4,00000012
	c.li	a0,00000005
	c.j	0000000023007894

l230078AC:
	addi	a4,zero,+00000030
	c.li	a0,00000008
	beq	a5,a4,00000000230078E8

l230078B6:
	bltu	a4,a5,00000000230078CA

l230078BA:
	c.li	a4,00000018
	c.li	a0,00000006
	beq	a5,a4,00000000230078E8

l230078C2:
	addi	a4,zero,+00000024
	c.li	a0,00000007
	c.j	0000000023007894

l230078CA:
	addi	a4,zero,+00000060
	c.li	a0,0000000A
	beq	a5,a4,00000000230078E8

l230078D4:
	addi	a4,zero,+0000006C
	c.li	a0,0000000B
	beq	a5,a4,00000000230078E8

l230078DE:
	addi	a4,zero,+00000048
	c.li	a0,00000009
	c.j	0000000023007894

l230078E6:
	c.li	a0,00000003

l230078E8:
	c.jr	ra

;; me_get_basic_rates: 230078EA
;;   Called from:
;;     2301F488 (in apm_start_req_handler)
me_get_basic_rates proc
	sb	zero,a1,+00000000
	c.li	a5,00000000

l230078F0:
	lbu	a4,a0,+00000000
	blt	a5,a4,00000000230078FA

l230078F8:
	c.jr	ra

l230078FA:
	add	a4,a0,a5
	lbu	a3,a4,+00000001
	slli	a4,a3,00000018
	c.srai	a4,00000018
	bge	a4,zero,000000002300791E

l2300790C:
	lbu	a4,a1,+00000000
	add	a2,a1,a4
	sb	a3,a2,+00000001
	c.addi	a4,00000001
	sb	a4,a1,+00000000

l2300791E:
	c.addi	a5,00000001
	c.j	00000000230078F0

;; me_legacy_rate_bitfield_build: 23007922
;;   Called from:
;;     23008EC2 (in rc_init)
;;     230090B6 (in rc_init)
;;     2300AC2C (in scanu_frame_handler)
;;     2300BAD6 (in sm_set_bss_param)
;;     2300D346 (in apm_set_bss_param)
;;     2300DCDE (in apm_assoc_req_handler)
;;     2301F5E4 (in apm_start_req_handler)
me_legacy_rate_bitfield_build proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.mv	s2,a0
	c.mv	s4,a1
	c.li	s0,00000000
	c.li	s1,00000000
	c.li	s5,0000000B
	c.li	s3,00000001
	lui	s6,00023074
	lui	s7,00023075

l2300794A:
	lbu	a5,s2,+00000000
	blt	s1,a5,000000002300796A

l23007952:
	c.mv	a0,s0
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

l2300796A:
	add	a5,s2,s1
	lbu	a0,a5,+00000001
	beq	s4,zero,0000000023007980

l23007976:
	slli	a5,a0,00000018
	c.srai	a5,00000018
	bge	a5,zero,0000000023007998

l23007980:
	jal	ra,000000002300786E
	bge	s5,a0,000000002300799C

l23007988:
	addi	a2,zero,+000001C6
	addi	a1,s6,+000002DC
	addi	a0,s7,-00000310
	jal	ra,0000000023013280

l23007998:
	c.addi	s1,00000001
	c.j	000000002300794A

l2300799C:
	sll	a0,s3,a0
	c.or	s0,a0
	c.slli	s0,10
	c.srli	s0,00000010
	c.j	0000000023007998

;; me_build_capability: 230079A8
;;   Called from:
;;     2301CF46 (in me_build_associate_req)
;;     2301D686 (in me_build_beacon)
;;     2301D92E (in me_build_probe_rsp)
;;     2301DB60 (in me_build_associate_rsp)
me_build_capability proc
	addi	a4,zero,+000005D8
	add	a4,a0,a4
	lui	a5,0004201A
	addi	a3,a5,+00000410
	addi	a5,a5,+00000410
	c.add	a3,a4
	lbu	a2,a3,+00000056
	c.li	a4,00000011
	c.beqz	a2,00000000230079DE

l230079C6:
	c.li	a1,00000002
	c.li	a4,00000001
	bne	a2,a1,00000000230079DE

l230079CE:
	lw	a3,a3,+000003E8
	c.lui	a2,00013000
	addi	a2,a2,-00000600
	c.and	a3,a2
	c.beqz	a3,00000000230079DE

l230079DC:
	c.li	a4,00000011

l230079DE:
	addi	a3,zero,+000005D8
	add	a0,a0,a3
	c.add	a5,a0
	lw	a5,a5,+000003A4
	ori	a0,a4,+00000520
	lbu	a3,a5,+00000002
	c.li	a5,00000001
	beq	a3,a5,00000000230079FE

l230079FA:
	ori	a0,a4,+00000420

l230079FE:
	c.jr	ra

;; me_init_bcmc_rate: 23007A00
;;   Called from:
;;     2300D1D2 (in apm_start_cfm)
me_init_bcmc_rate proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a5,a0,+000000B0
	c.mv	s0,a0
	c.bnez	a5,0000000023007A26

l23007A0E:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+00000229
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000324
	jal	ra,000000002301327E

l23007A26:
	lbu	a3,s0,+000000B0
	c.li	a5,00000000
	c.li	a0,00000000

l23007A2E:
	blt	a5,a3,0000000023007A4A

l23007A32:
	jal	ra,000000002300786E
	c.mv	a1,a0
	c.mv	a0,s0
	jal	ra,0000000023008952
	c.lwsp	a2,00000020
	sb	zero,s0,+0000011A
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23007A4A:
	add	a4,s0,a5
	lbu	a4,a4,+000000B1
	andi	a2,a4,-00000081
	bge	a0,a2,0000000023007A5E

l23007A5A:
	andi	a0,a4,+0000007F

l23007A5E:
	c.addi	a5,00000001
	c.j	0000000023007A2E

;; me_tx_cfm_singleton: 23007A62
;;   Called from:
;;     2301C614 (in txl_cfm_evt)
me_tx_cfm_singleton proc
	c.lw	a0,108(a5)
	c.lui	a4,00010000
	c.lw	a5,0(a5)
	c.lw	a5,16(a5)
	srli	a2,a5,00000008
	c.and	a5,a4
	andi	a2,a2,+000000FF
	sltu	a4,zero,a5
	addi	a1,a2,+00000001
	c.add	a2,a4
	c.beqz	a5,0000000023007AA4

l23007A80:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	c.swsp	a2,00000004
	c.swsp	a1,00000080
	jal	ra,00000000230139BC
	c.lwsp	a2,00000044
	c.lwsp	s0,00000084
	c.lwsp	tp,00000064
	c.lwsp	t3,00000020
	lbu	a0,a0,+00000030
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi16sp	00000020

l23007AA0:
	jal	zero,0000000023008604

l23007AA4:
	c.li	a4,00000000
	c.li	a3,00000000
	lbu	a0,a0,+00000030
	c.j	0000000023007AA0

;; me_check_rc: 23007AAE
;;   Called from:
;;     2300CCF0 (in txu_cntrl_push)
me_check_rc proc
	jal	zero,00000000230093F0

;; me_update_buffer_control: 23007AB2
;;   Called from:
;;     23007C48 (in me_init_rate)
;;     2300CD02 (in txu_cntrl_push)
me_update_buffer_control proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	lbu	a2,a0,+0000011A
	lw	s3,a0,+0000010C
	beq	a2,zero,0000000023007C14

l23007AD0:
	lw	s2,s3,+00000004
	addi	s1,s3,+00000014
	c.mv	a4,s1
	c.li	a5,00000000
	addi	s4,sp,+00000010
	c.li	a3,00000010

l23007AE2:
	lw	a6,a4,+00000000
	add	a1,sp,a5
	c.addi	a4,00000004
	sw	a6,a1,+00000000
	lw	a6,a4,+0000000C
	add	a1,s4,a5
	c.addi	a5,00000004
	sw	a6,a1,+00000000
	bne	a5,a3,0000000023007AE2

l23007B02:
	andi	a5,a2,+00000001
	c.beqz	a5,0000000023007B92

l23007B08:
	lw	a7,a0,+00000110
	lbu	t6,a0,+000000F4
	c.lui	t1,00004000
	lbu	t5,a7,+000000B0
	c.mv	a6,sp
	c.li	s0,00000000
	c.li	a4,00000000
	c.li	a1,00000000
	c.li	t0,0000000C
	c.addi	t1,FFFFFFFF
	lui	t2,00080000
	lui	t4,0001FFFC
	c.li	t3,00000004

l23007B2C:
	add	a5,t5,a1
	c.andi	a5,00000003
	c.addi	a5,0000000E
	c.slli	a5,03
	c.add	a5,a7
	lhu	a5,a5,+00000010
	add	a5,a5,t0
	c.add	a5,a7
	lhu	a5,a5,+0000000A
	and	a5,t1,a5
	or	a5,a5,t2
	srli	a3,a5,0000000B
	c.andi	a3,00000006
	c.beqz	a3,0000000023007B66

l23007B56:
	srli	a3,a5,00000003
	c.andi	a3,00000003
	c.bnez	a1,0000000023007C2A

l23007B5E:
	bgeu	a3,t6,0000000023007B66

l23007B62:
	c.mv	a4,a3
	c.li	s0,00000001

l23007B66:
	lw	a3,a6,+00000000
	c.addi	a1,00000001
	c.addi	a6,00000004
	and	a3,t4,a3
	c.or	a5,a3
	sw	a5,a6,+00000FFC
	bne	a1,t3,0000000023007B2C

l23007B7C:
	andi	s2,s2,-00000181
	c.beqz	s0,0000000023007B8A

l23007B82:
	c.addi	a4,00000001
	c.slli	a4,07
	or	s2,s2,a4

l23007B8A:
	ori	a2,a2,+00000002
	sb	a2,a0,+0000011A

l23007B92:
	lbu	a2,a0,+0000011A
	andi	a5,a2,+00000002
	c.beqz	a5,0000000023007BC6

l23007B9C:
	lui	a1,000E0004
	c.mv	a4,sp
	c.addi	a1,FFFFFFFF

l23007BA4:
	c.lw	a4,0(a5)
	srli	a3,a5,0000000B
	c.andi	a3,00000007
	andi	a6,a5,+0000007C
	or	a3,a3,a6
	c.beqz	a3,0000000023007BC0

l23007BB6:
	lw	a3,a0,+00000114
	c.and	a5,a1
	c.or	a5,a3
	c.sw	a4,0(a5)

l23007BC0:
	c.addi	a4,00000004
	bne	s4,a4,0000000023007BA4

l23007BC6:
	c.andi	a2,00000010
	c.mv	s0,a0
	c.beqz	a2,0000000023007BE6

l23007BCC:
	c.li	s5,00000000
	c.li	s6,00000010

l23007BD0:
	add	a5,sp,s5
	c.lw	a5,0(a0)
	jal	ra,0000000023005618
	add	a5,s4,s5
	c.sw	a5,0(a0)
	c.addi	s5,00000004
	bne	s5,s6,0000000023007BD0

l23007BE6:
	csrrci	zero,mstatus,00000008
	c.li	a5,00000000
	sw	s2,s3,+00000004
	c.li	a4,00000010

l23007BF2:
	add	a3,sp,a5
	c.lw	a3,0(a3)
	c.addi	s1,00000004
	sw	a3,s1,+00000FFC
	add	a3,s4,a5
	c.lw	a3,0(a3)
	c.addi	a5,00000004
	c.sw	s1,12(a3)
	bne	a5,a4,0000000023007BF2

l23007C0C:
	csrrsi	zero,mstatus,00000008
	sb	zero,s0,+0000011A

l23007C14:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s3
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.addi16sp	00000040
	c.jr	ra

l23007C2A:
	c.beqz	s0,0000000023007B66

l23007C2C:
	c.sub	a3,a4
	sltiu	s0,a3,+00000001
	c.j	0000000023007B66

;; me_init_rate: 23007C34
;;   Called from:
;;     2300C3DA (in sm_assoc_rsp_handler)
;;     2301E492 (in me_sta_add_req_handler)
me_init_rate proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023008E34
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023007AB2

;; me_bw_check: 23007C4C
;;   Called from:
;;     23007D60 (in me_beacon_check)
;;     2300B0A8 (in scanu_frame_handler)
me_bw_check proc
	c.lw	a2,76(a5)
	lhu	a4,a5,+00000000
	c.li	a5,00000000
	c.beqz	a0,0000000023007C7A

l23007C56:
	lui	a5,0004201B
	lbu	a5,a5,+00000103
	c.beqz	a5,0000000023007C7A

l23007C60:
	lbu	a5,a0,+00000003
	c.andi	a5,00000003
	c.beqz	a5,0000000023007C7A

l23007C68:
	c.li	a1,00000001
	c.li	a3,0000000A
	beq	a5,a1,0000000023007C72

l23007C70:
	c.li	a3,FFFFFFF6

l23007C72:
	c.add	a4,a3
	c.slli	a4,10
	c.srli	a4,00000010
	c.li	a5,00000001

l23007C7A:
	sb	a5,a2,+00000082
	sb	a5,a2,+00000083
	sh	a4,a2,+00000050
	sh	zero,a2,+00000052
	c.jr	ra

;; me_beacon_check: 23007C8C
;;   Called from:
;;     230034D8 (in mm_bcn_updated)
;;     23009BE2 (in rxu_mgt_frame_check)
me_beacon_check proc
	c.addi16sp	FFFFFFC0
	c.swsp	s7,0000008C
	addi	s7,zero,+000005D8
	add	s7,a0,s7
	c.swsp	s0,0000001C
	lui	s0,0004201A
	c.swsp	s1,00000098
	addi	s1,s0,+00000410
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	ra,0000009C
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s8,0000000C
	c.add	s1,s7
	lw	a5,s1,+000003A4
	sh	zero,s1,+000003D8
	addi	a1,a1,-00000024
	lbu	a5,a5,+00000002
	slli	s3,a1,00000010
	c.mv	s2,a0
	lbu	s5,s1,+000003DB
	lbu	s6,s1,+000003DC
	addi	s4,a2,+00000024
	srli	s3,s3,00000010
	addi	s0,s0,+00000410
	c.bnez	a5,0000000023007D3E

l23007CE0:
	addi	a2,zero,+0000002A
	c.mv	a1,s3
	c.mv	a0,s4
	jal	ra,000000002300EEE8
	c.beqz	a0,0000000023007D3E

l23007CEE:
	lhu	a5,s1,+000003D8
	lbu	a4,a0,+00000002
	c.andi	a5,FFFFFFF8
	c.slli	a5,10
	andi	a3,a4,+00000001
	c.srli	a5,00000010
	bne	a3,zero,0000000023007E9C

l23007D04:
	sh	a5,s1,+000003D8
	andi	a5,a4,+00000002
	c.beqz	a5,0000000023007D24

l23007D0E:
	addi	a5,zero,+000005D8
	add	a5,s2,a5
	c.add	a5,s0
	lhu	a3,a5,+000003D8
	ori	a3,a3,+00000002
	sh	a3,a5,+000003D8

l23007D24:
	c.andi	a4,00000004
	c.beqz	a4,0000000023007D3E

l23007D28:
	addi	a5,zero,+000005D8
	add	a5,s2,a5
	c.add	a5,s0
	lhu	a4,a5,+000003D8
	ori	a4,a4,+00000004
	sh	a4,a5,+000003D8

l23007D3E:
	lui	a5,0004201B
	lbu	a5,a5,+00000002
	c.li	a0,00000000
	c.beqz	a5,0000000023007D56

l23007D4A:
	addi	a2,zero,+0000003D
	c.mv	a1,s3
	c.mv	a0,s4
	jal	ra,000000002300EEE8

l23007D56:
	addi	s8,s7,+00000358
	c.add	s8,s0
	c.mv	a2,s8
	c.li	a1,00000000
	jal	ra,0000000023007C4C
	addi	a3,s7,+000005C8
	c.add	a3,s0
	addi	a2,sp,+0000000D
	c.mv	a1,s3
	c.mv	a0,s4
	jal	ra,000000002301D494
	andi	s7,a0,+000000FF
	beq	s7,zero,0000000023007DB8

l23007D7E:
	addi	a5,zero,+000005D8
	add	a5,s2,a5
	c.add	a5,s0
	lbu	a4,a5,+00000056
	bne	a4,zero,0000000023007EA2

l23007D90:
	lbu	a4,a5,+00000079
	c.bnez	a4,0000000023007DAA

l23007D96:
	lbu	a3,sp,+0000000D
	c.li	a4,00000001
	bne	a3,a4,0000000023007DAA

l23007DA0:
	lbu	a0,a5,+00000057
	c.li	a1,00000000
	jal	ra,0000000023002A3E

l23007DAA:
	addi	a5,zero,+000005D8
	add	a5,s2,a5
	c.add	a5,s0
	sb	s7,a5,+00000079

l23007DB8:
	c.mv	a2,s8
	c.mv	a1,s3
	c.mv	a0,s4
	jal	ra,000000002301D3BA
	addi	a5,zero,+000005D8
	add	a5,s2,a5
	c.add	a5,s0
	lbu	a4,a5,+000003DC
	beq	a4,s6,0000000023007DF0

l23007DD4:
	lw	a5,a5,+000003A4
	addi	a2,sp,+0000000F
	addi	a1,sp,+0000000E
	lbu	a5,a5,+00000004
	c.mv	a0,s1
	c.sub	a5,a4
	sb	a5,sp,+0000000E
	jal	ra,000000002300557E

l23007DF0:
	addi	s4,zero,+000005D8
	add	s4,s2,s4
	c.add	s4,s0
	lbu	a5,s4,+000003DB
	bgeu	s5,a5,0000000023007E84

l23007E02:
	c.li	a3,0000000C
	c.li	a2,00000005
	c.li	a1,00000000
	addi	a0,zero,+0000003B
	jal	ra,000000002300E768
	lw	a5,s4,+00000040
	c.mv	s3,a0
	c.bnez	a5,0000000023007E30

l23007E18:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+00000039
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000033C
	jal	ra,000000002301327E

l23007E30:
	addi	a5,zero,+000005D8
	add	s2,s2,a5
	c.mv	a0,s3
	c.add	s0,s2
	c.lw	s0,64(a5)
	lbu	a5,a5,+00000017
	sb	a5,s3,+00000000
	lw	a5,s1,+000003A4
	lbu	a5,a5,+00000002
	sb	a5,s3,+00000001
	lbu	a5,s1,+000003DB
	sb	a5,s3,+00000002
	lw	a5,s1,+000003A4
	lhu	a5,a5,+00000000
	sh	a5,s3,+00000004
	lhu	a5,s1,+000003A8
	sh	a5,s3,+00000006
	lhu	a5,s1,+000003AA
	sh	a5,s3,+00000008
	c.lw	s0,64(a5)
	lb	a5,a5,+0000000C
	sb	a5,s3,+0000000A
	jal	ra,000000002300E7D4

l23007E84:
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

l23007E9C:
	ori	a5,a5,+00000001
	c.j	0000000023007D04

l23007EA2:
	c.li	a3,00000002
	bne	a4,a3,0000000023007DB8

l23007EA8:
	sb	s7,a5,+00000347
	c.j	0000000023007DB8

;; me_sta_bw_nss_max_upd: 23007EAE
;;   Called from:
;;     23009C6A (in rxu_mgt_frame_check)
;;     2301E4B4 (in me_sta_add_req_handler)
;;     2301E4D0 (in me_sta_add_req_handler)
me_sta_bw_nss_max_upd proc
	addi	a4,zero,+000001B0
	add	a4,a0,a4
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042019
	addi	a5,s0,-000000E0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.add	a5,a4
	c.swsp	s5,00000080
	lbu	s3,a5,+0000001A
	lui	a5,0004201B
	lbu	a5,a5,+00000002
	c.mv	s1,a0
	c.mv	s2,a1
	c.mv	s4,a2
	addi	s0,s0,-000000E0
	c.bnez	a5,0000000023007F00

l23007EE8:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+00000429
	addi	a1,a1,+000002DC
	addi	a0,a0,-000002F4
	jal	ra,000000002301327E

l23007F00:
	addi	a0,zero,+000001B0
	add	a0,s1,a0
	addi	a0,a0,+000000C3
	c.add	a0,s0
	jal	ra,0000000023007806
	c.mv	s5,a0
	lui	a0,0004201B
	addi	a0,a0,-0000001D
	jal	ra,0000000023007806
	bgeu	s5,a0,0000000023007F26

l23007F24:
	c.mv	a0,s5

l23007F26:
	bgeu	s4,a0,0000000023007F2C

l23007F2A:
	c.mv	a0,s4

l23007F2C:
	addi	a5,zero,+000001B0
	add	a5,s1,a5
	andi	a2,a0,+000000FF
	c.add	a5,s0
	lbu	a4,a5,+000000F0
	c.li	a5,00000004
	bne	a4,a5,0000000023007F46

l23007F44:
	c.li	a4,00000003

l23007F46:
	addi	a3,zero,+000005D8
	add	s3,s3,a3
	lui	a5,0004201A
	addi	a5,a5,+00000410
	c.add	a5,s3
	lbu	a1,a5,+000003DA
	bgeu	s2,a1,0000000023007F62

l23007F60:
	c.mv	a1,s2

l23007F62:
	bgeu	a4,a1,0000000023007F68

l23007F66:
	c.mv	a1,a4

l23007F68:
	addi	a5,zero,+000001B0
	add	s1,s1,a5
	andi	a1,a1,+000000FF
	c.add	s0,s1
	lbu	a0,s0,+0000001B
	sb	a1,s0,+000000F1
	jal	ra,00000000230087D8
	lbu	a5,s0,+0000011A
	ori	a5,a5,+00000008
	sb	a5,s0,+0000011A
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; me_add_chan_ctx: 23007FA0
;;   Called from:
;;     2301F3F6 (in apm_start_req_handler)
me_add_chan_ctx proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	lbu	a5,a1,+00000002
	sb	a4,sp,+00000005
	sh	a2,sp,+00000008
	sb	a5,sp,+00000004
	lhu	a5,a1,+00000000
	sh	a3,sp,+0000000A
	sh	a5,sp,+00000006
	lbu	a5,a1,+00000004
	c.mv	a1,a0
	c.addi4spn	a0,00000004
	sb	a5,sp,+0000000C
	jal	ra,0000000023019F56
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; rc_get_nss: 23007FD6
;;   Called from:
;;     230080A4 (in rc_set_next_mcs_index)
;;     2300847C (in rc_check_valid_rate)
;;     2300876E (in rc_get_duration)
;;     230089C2 (in rc_check_fixed_rate_config)
;;     230095D8 (in rc_check)
;;     230095E0 (in rc_check)
rc_get_nss proc
	srai	a5,a0,0000000B
	c.andi	a5,00000007
	c.addi	a5,FFFFFFFE
	c.li	a4,00000001
	bltu	a4,a5,0000000023007FEA

l23007FE4:
	c.srai	a0,00000003
	c.andi	a0,00000003
	c.jr	ra

l23007FEA:
	c.li	a0,00000000
	c.jr	ra

;; rc_get_mcs_index: 23007FEE
;;   Called from:
;;     23008022 (in rc_set_previous_mcs_index)
;;     23008084 (in rc_set_next_mcs_index)
;;     2300810A (in is_cck_group)
;;     23008488 (in rc_check_valid_rate)
;;     23008494 (in rc_check_valid_rate)
;;     23008754 (in rc_get_duration)
rc_get_mcs_index proc
	srai	a5,a0,0000000B
	c.andi	a5,00000007
	c.li	a4,00000001
	bgeu	a4,a5,0000000023008008

l23007FFA:
	c.li	a3,00000003
	c.li	a4,00000000
	bltu	a3,a5,000000002300800C

l23008002:
	andi	a4,a0,+00000007
	c.j	000000002300800C

l23008008:
	andi	a4,a0,+0000007F

l2300800C:
	c.mv	a0,a4
	c.jr	ra

;; rc_set_previous_mcs_index: 23008010
rc_set_previous_mcs_index proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	c.mv	a0,a1
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	srai	s0,a1,0000000B
	c.swsp	ra,0000008C
	jal	ra,0000000023007FEE
	c.andi	s0,00000007
	c.li	a5,00000001
	c.lwsp	a2,00000064
	bgeu	a5,s0,000000002300804E

l23008030:
	c.li	a5,00000003
	bltu	a5,s0,0000000023008062

l23008036:
	c.beqz	a0,0000000023008062

l23008038:
	c.andi	a1,FFFFFFF8
	c.addi	a0,FFFFFFFF
	lbu	a5,s1,+000000BD
	c.or	a1,a0
	c.slli	a1,10
	c.srli	a1,00000010
	c.beqz	a5,0000000023008062

l23008048:
	ori	a1,a1,+00000200
	c.j	0000000023008062

l2300804E:
	lbu	a5,s1,+000000B9
	bgeu	a5,a0,0000000023008062

l23008056:
	andi	a1,a1,-00000080
	c.addi	a0,FFFFFFFF
	c.or	a1,a0
	c.slli	a1,10
	c.srli	a1,00000010

l23008062:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.mv	a0,a1
	c.addi16sp	00000020
	c.jr	ra

;; rc_set_next_mcs_index: 2300806E
rc_set_next_mcs_index proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a0
	c.mv	a0,a1
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	srai	s3,a1,0000000B
	c.mv	s0,a1
	jal	ra,0000000023007FEE
	andi	s3,s3,+00000007
	c.li	a5,00000001
	c.mv	s1,a0
	bgeu	a5,s3,00000000230080CC

l23008094:
	c.li	a5,00000003
	bltu	a5,s3,00000000230080EE

l2300809A:
	lbu	a5,s2,+000000B8
	bgeu	a0,a5,00000000230080EE

l230080A2:
	c.mv	a0,s0
	jal	ra,0000000023007FD6
	c.add	a0,s2
	lbu	a5,a0,+000000B2
	c.addi	s1,00000001
	srl	a5,a5,s1
	c.andi	a5,00000001
	c.beqz	a5,00000000230080EE

l230080B8:
	c.andi	s0,FFFFFFF8
	lbu	a5,s2,+000000BD
	c.or	s0,s1
	c.slli	s0,10
	c.srli	s0,00000010
	c.beqz	a5,00000000230080EE

l230080C6:
	ori	s0,s0,+00000200
	c.j	00000000230080EE

l230080CC:
	lbu	a5,s2,+000000BA
	bgeu	a0,a5,00000000230080EE

l230080D4:
	lhu	a5,s2,+000000B6
	addi	s1,a0,+00000001
	srl	a5,a5,s1
	c.andi	a5,00000001
	c.beqz	a5,00000000230080EE

l230080E4:
	andi	s0,s0,-00000080
	c.or	s0,s1
	c.slli	s0,10
	c.srli	s0,00000010

l230080EE:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; is_cck_group: 230080FE
;;   Called from:
;;     2300816E (in rc_update_retry_chain)
;;     23008254 (in rc_update_retry_chain)
;;     23008A42 (in rc_calc_tp)
is_cck_group proc
	srli	a5,a0,0000000B
	c.andi	a5,00000006
	c.bnez	a5,0000000023008118

l23008106:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023007FEE
	c.lwsp	a2,00000020
	sltiu	a0,a0,+00000004
	c.addi	sp,00000010
	c.jr	ra

l23008118:
	c.li	a0,00000000
	c.jr	ra

;; rc_update_retry_chain: 2300811C
;;   Called from:
;;     230088D4 (in rc_update_bw_nss_max)
;;     23008B96 (in rc_update_stats)
rc_update_retry_chain proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	lhu	s4,a0,+000000C0
	lbu	a4,a0,+000000AF
	c.mv	s0,a0
	slli	a5,s4,00000002
	c.addi	a5,FFFFFFFC
	c.andi	a4,00000004
	c.mv	s5,a1
	c.add	a5,a1
	c.bnez	a4,000000002300823A

l2300814C:
	c.lw	a1,0(a3)
	c.lw	a5,0(a4)
	bgeu	a4,a3,000000002300823A

l23008154:
	sh	zero,a0,+00000080
	sw	zero,a0,+0000007C
	c.li	s1,00000001

l2300815E:
	lhu	s7,s0,+00000080
	c.li	s2,0000000C
	add	s2,s7,s2
	c.add	s2,s0
	lhu	a0,s2,+0000000A
	jal	ra,00000000230080FE
	c.bnez	a0,0000000023008186

l23008174:
	addi	s8,s4,-00000001
	c.li	s3,00000000
	c.li	s9,0000000C

l2300817C:
	blt	s3,s8,000000002300824A

l23008180:
	c.li	a5,00000001
	sb	a5,s2,+0000000F

l23008186:
	c.lw	s0,124(a5)
	sh	s7,s0,+00000088
	sub	a4,s4,s1
	sw	a5,s0,+00000084
	c.li	a1,0000000C

l23008196:
	addi	a5,s1,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	s1,s4,00000000230081C4

l230081A2:
	addi	a2,a4,-00000001
	add	a3,a2,a1
	c.add	a3,s0
	lbu	a3,a3,+0000001B
	c.beqz	a3,0000000023008268

l230081B2:
	sub	s1,s4,s1
	c.slli	a4,02
	sh	s1,s0,+00000088
	c.add	a4,s5
	c.lw	a4,0(a4)
	sw	a4,s0,+00000084

l230081C4:
	lhu	t1,s0,+00000088
	sub	a5,s4,a5
	c.li	a2,0000000C

l230081CE:
	sub	a4,s4,a5
	c.slli	a4,10
	c.srli	a4,00000010
	bltu	a4,s4,000000002300826E

l230081DA:
	c.mv	a5,t1

l230081DC:
	slli	a4,a5,00000002
	c.add	a4,s5
	c.lw	a4,0(a1)
	c.li	a4,0000000C
	add	a4,a5,a4
	c.lui	a6,0000F000
	addi	a3,s0,+00000008
	addi	a6,a6,+00000332
	c.add	a4,s0
	lhu	a0,a4,+00000008
	c.li	a4,00000000

l230081FC:
	slli	a2,a4,00000010
	c.srli	a2,00000010
	bltu	a2,t1,0000000023008282

l23008206:
	sh	a5,s0,+00000090
	c.slli	a5,02
	c.add	a5,s5
	c.lw	a5,0(a5)
	sh	zero,s0,+00000098
	c.lwsp	a2,00000130
	sw	a5,s0,+0000008C
	lw	a5,s5,+00000000
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	sw	a5,s0,+00000094
	c.lwsp	s0,00000114
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.addi16sp	00000030
	c.jr	ra

l2300823A:
	addi	a4,s4,-00000001
	sh	a4,s0,+00000080
	c.lw	a5,0(a5)
	c.li	s1,00000002
	c.sw	s0,124(a5)
	c.j	000000002300815E

l2300824A:
	add	s6,s3,s9
	c.add	s6,s0
	lhu	a0,s6,+0000000A
	jal	ra,00000000230080FE
	c.beqz	a0,000000002300825E

l2300825A:
	sb	zero,s6,+0000000F

l2300825E:
	c.addi	s3,00000001
	c.slli	s3,10
	srli	s3,s3,00000010
	c.j	000000002300817C

l23008268:
	c.mv	a4,a2
	c.mv	s1,a5
	c.j	0000000023008196

l2300826E:
	addi	a3,a5,-00000001
	add	a4,a3,a2
	c.add	a4,s0
	lbu	a4,a4,+0000001B
	c.bnez	a4,00000000230081DC

l2300827E:
	c.mv	a5,a3
	c.j	00000000230081CE

l23008282:
	lbu	a7,a3,+00000007
	beq	a7,zero,00000000230082AA

l2300828A:
	beq	a2,s7,00000000230082AA

l2300828E:
	lhu	a2,a3,+00000000
	bgeu	a6,a2,00000000230082B0

l23008296:
	slli	a7,a4,00000002
	c.add	a7,s5
	lw	a7,a7,+00000000
	bltu	a7,a1,00000000230082AA

l230082A4:
	c.mv	a0,a2
	c.mv	a1,a7

l230082A8:
	c.mv	a5,a4

l230082AA:
	c.addi	a4,00000001
	c.addi	a3,0000000C
	c.j	00000000230081FC

l230082B0:
	bltu	a2,a0,00000000230082AA

l230082B4:
	slli	a5,a4,00000002
	c.add	a5,s5
	c.lw	a5,0(a1)
	c.mv	a0,a2
	c.j	00000000230082A8

;; rc_get_lowest_rate_config: 230082C0
;;   Called from:
;;     23008888 (in rc_update_bw_nss_max)
;;     23009212 (in rc_init)
rc_get_lowest_rate_config proc
	lbu	a4,a0,+000000B1
	c.li	a5,00000001
	bgeu	a5,a4,00000000230082E4

l230082CA:
	c.li	a3,00000003
	c.li	a5,00000000
	bltu	a3,a4,00000000230082F4

l230082D2:
	lbu	a3,a0,+000000B9
	addi	a5,zero,+00000400
	c.beqz	a3,00000000230082F4

l230082DC:
	slli	a5,a4,0000000B
	c.slli	a5,10
	c.j	00000000230082F2

l230082E4:
	lbu	a4,a0,+000000B9
	addi	a5,zero,+00000400
	c.beqz	a4,00000000230082F4

l230082EE:
	slli	a5,a4,00000010

l230082F2:
	c.srli	a5,00000010

l230082F4:
	c.mv	a0,a5
	c.jr	ra

;; rc_sort_samples_tp: 230082F8
;;   Called from:
;;     230088CC (in rc_update_bw_nss_max)
;;     23008B8E (in rc_update_stats)
rc_sort_samples_tp proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s5,00000088
	lhu	a5,a0,+000000C0
	c.mv	s6,a1
	addi	s3,a0,+00000010
	addi	s4,a5,-00000001
	c.slli	s4,10
	srli	s4,s4,00000010

l2300831E:
	c.beqz	a5,0000000023008372

l23008320:
	c.mv	s2,s3
	addi	s0,s6,+00000004
	c.li	a5,00000000
	c.li	s1,00000001
	c.j	000000002300836A

l2300832C:
	c.lw	s0,0(a3)
	c.lw	s0,4(a4)
	addi	s5,s2,+0000000C
	bgeu	a4,a3,0000000023008360

l23008338:
	c.li	a2,0000000C
	c.mv	a1,s2
	c.addi4spn	a0,00000004
	jal	ra,0000000023070D98
	c.li	a2,0000000C
	c.mv	a1,s5
	c.mv	a0,s2
	jal	ra,0000000023070D98
	c.li	a2,0000000C
	c.addi4spn	a1,00000004
	c.mv	a0,s5
	jal	ra,0000000023070D98
	c.lw	s0,0(a5)
	c.lw	s0,4(a4)
	c.sw	s0,4(a5)
	c.sw	s0,0(a4)
	c.mv	a5,s1

l23008360:
	c.addi	s1,00000001
	c.slli	s1,10
	c.srli	s1,00000010
	c.mv	s2,s5
	c.addi	s0,00000004

l2300836A:
	bltu	s1,s4,000000002300832C

l2300836E:
	c.mv	s4,a5
	c.j	000000002300831E

l23008372:
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

;; rc_get_initial_rate_config: 23008386
;;   Called from:
;;     23008892 (in rc_update_bw_nss_max)
;;     2300921C (in rc_init)
rc_get_initial_rate_config proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lbu	s1,a0,+000000B1
	c.li	a5,00000001
	bgeu	a5,s1,00000000230083D8

l2300839A:
	c.li	a4,00000003
	c.li	a5,00000000
	bltu	a4,s1,00000000230083EE

l230083A2:
	lbu	s2,a0,+000000BC
	c.mv	s0,a0
	c.slli	s1,0B
	add	a5,a0,s2
	lbu	a0,a5,+000000B2
	c.slli	s2,03
	jal	ra,000000002306C8C0
	lbu	a5,s0,+000000BD
	lbu	a4,s0,+000000BB
	c.slli	a5,09
	c.slli	a4,07
	c.or	a5,s1
	c.or	a5,a4
	c.li	a4,0000001F
	sub	a0,a4,a0
	or	a5,a5,s2
	andi	a0,a0,+000000FF
	c.j	00000000230083E8

l230083D8:
	lbu	a4,a0,+000000BE
	lbu	a0,a0,+000000BA
	slli	a5,s1,0000000B
	c.slli	a4,0A
	c.or	a5,a4

l230083E8:
	c.or	a5,a0
	c.slli	a5,10
	c.srli	a5,00000010

l230083EE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; rc_calc_prob_ewma: 230083FC
;;   Called from:
;;     23008B2E (in rc_update_stats)
;;     23008B60 (in rc_update_stats)
rc_calc_prob_ewma proc
	lhu	a3,a0,+00000000
	c.beqz	a3,0000000023008446

l23008402:
	lhu	a5,a0,+00000002
	lbu	a2,a0,+00000009
	sb	zero,a0,+00000008
	c.slli	a5,10
	srl	a4,a5,a3
	c.bnez	a2,000000002300842E

l23008416:
	bltu	a5,a3,0000000023008428

l2300841A:
	c.addi	a4,FFFFFFFF
	sh	a4,a0,+00000004

l23008420:
	c.li	a5,00000001
	sb	a5,a0,+00000009
	c.jr	ra

l23008428:
	sh	zero,a0,+00000004
	c.j	0000000023008420

l2300842E:
	lhu	a5,a0,+00000004
	addi	a3,zero,+00000060
	c.slli	a4,05
	add	a5,a5,a3
	c.add	a5,a4
	c.srli	a5,00000007
	sh	a5,a0,+00000004
	c.j	0000000023008420

l23008446:
	lbu	a5,a0,+00000008
	addi	a4,zero,+000000FF
	beq	a5,a4,0000000023008458

l23008452:
	c.addi	a5,00000001
	sb	a5,a0,+00000008

l23008458:
	c.jr	ra

;; rc_check_valid_rate: 2300845A
;;   Called from:
;;     230089D8 (in rc_check_fixed_rate_config)
rc_check_valid_rate proc
	c.addi	sp,FFFFFFE0
	srai	a5,a1,0000000B
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.andi	a5,00000007
	c.li	a4,00000001
	c.mv	s0,a0
	bgeu	a4,a5,0000000023008492

l23008470:
	c.li	a4,00000003
	c.li	a0,00000001
	bltu	a4,a5,00000000230084A2

l23008478:
	c.mv	a0,a1
	c.swsp	a1,00000084
	jal	ra,0000000023007FD6
	c.lwsp	a2,00000064
	c.mv	s1,a0
	c.add	s0,s1
	c.mv	a0,a1
	jal	ra,0000000023007FEE
	lbu	a5,s0,+000000B2
	c.j	000000002300849C

l23008492:
	c.mv	a0,a1
	jal	ra,0000000023007FEE
	lhu	a5,s0,+000000B6

l2300849C:
	srl	a0,a5,a0
	c.andi	a0,00000001

l230084A2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; rc_new_random_rate: 230084AC
;;   Called from:
;;     23008900 (in rc_update_bw_nss_max)
;;     23008C26 (in rc_update_stats)
;;     230093BE (in rc_init)
rc_new_random_rate proc
	lui	a4,0004200E
	addi	a4,a4,-00000700
	c.lw	a4,0(a5)
	lui	a3,00041C65
	addi	a3,a3,-00000193
	add	a5,a5,a3
	c.lui	a3,00003000
	addi	a3,a3,+00000039
	lbu	a1,a0,+000000BB
	c.li	a7,00000000
	c.add	a5,a3
	lbu	a3,a0,+000000B1
	c.sw	a4,0(a5)
	c.srli	a5,00000010
	slli	a4,a3,0000000B
	c.slli	a4,10
	c.srli	a4,00000010
	c.beqz	a1,00000000230084EA

l230084E2:
	addi	a7,a1,-00000001
	andi	a7,a7,+000000FF

l230084EA:
	c.li	a2,00000001
	bgeu	a2,a3,0000000023008542

l230084F0:
	c.li	a6,00000003
	bltu	a6,a3,0000000023008578

l230084F6:
	lbu	a2,a0,+000000B9
	bltu	a6,a2,0000000023008598

l230084FE:
	slli	a3,a5,00000014
	bge	a3,zero,0000000023008598

l23008506:
	lbu	a1,a0,+000000BA
	andi	a3,a5,+0000007F
	sub	a4,a1,a2
	c.addi	a4,00000001
	or	a3,a3,a4
	lhu	a4,a0,+000000B6
	c.add	a3,a2
	andi	a3,a3,+000000FF
	srl	a4,a4,a3
	c.andi	a4,00000001
	c.bnez	a4,000000002300852C

l2300852A:
	c.mv	a3,a1

l2300852C:
	addi	a4,zero,+00000400
	c.beqz	a3,0000000023008578

l23008532:
	lbu	a4,a0,+000000BE
	andi	a5,a5,+00000400
	c.slli	a4,0A
	c.or	a4,a5
	c.or	a4,a3
	c.j	0000000023008574

l23008542:
	lbu	a2,a0,+000000B9
	lbu	a6,a0,+000000BA
	andi	a3,a5,+0000007F
	sub	a1,a6,a2
	c.addi	a1,00000001
	or	a3,a3,a1
	c.add	a3,a2
	lhu	a2,a0,+000000B6
	andi	a3,a3,+000000FF
	srl	a2,a2,a3
	c.andi	a2,00000001
	c.bnez	a2,000000002300856C

l2300856A:
	c.mv	a3,a6

l2300856C:
	c.or	a4,a3
	c.bnez	a3,000000002300857C

l23008570:
	ori	a4,a4,+00000400

l23008574:
	c.slli	a4,10
	c.srli	a4,00000010

l23008578:
	c.mv	a0,a4
	c.jr	ra

l2300857C:
	c.addi	a3,FFFFFFFF
	andi	a3,a3,+000000FF
	c.li	a2,00000002
	bltu	a2,a3,0000000023008578

l23008588:
	lbu	a0,a0,+000000BE
	andi	a5,a5,+00000400
	c.slli	a0,0A
	c.or	a5,a0
	c.or	a4,a5
	c.j	0000000023008574

l23008598:
	lbu	a2,a0,+000000BC
	srai	a3,a5,00000003
	c.andi	a3,00000003
	c.addi	a2,00000001
	lbu	a6,a0,+000000B8
	or	a3,a3,a2
	andi	a2,a5,+00000007
	addi	t1,a6,+00000001
	lbu	t3,a0,+000000BD
	or	a2,a2,t1
	c.add	a0,a3
	lbu	t1,a0,+000000B2
	srl	t1,t1,a2
	andi	t1,t1,+00000001
	beq	t1,zero,00000000230085D2

l230085CE:
	andi	a6,a2,+000000FF

l230085D2:
	srai	a0,a5,00000009
	c.andi	a0,00000001
	c.addi	t3,00000001
	c.srai	a5,00000007
	sub	a1,a1,a7
	or	a0,a0,t3
	c.andi	a5,00000003
	c.addi	a1,00000001
	c.slli	a3,03
	or	a5,a5,a1
	c.slli	a0,09
	c.or	a0,a3
	c.or	a4,a0
	c.add	a5,a7
	c.slli	a5,07
	c.or	a4,a5
	c.slli	a4,10
	c.srli	a4,00000010
	or	a4,a4,a6
	c.j	0000000023008578

;; rc_update_counters: 23008604
;;   Called from:
;;     23007AA0 (in me_tx_cfm_singleton)
rc_update_counters proc
	c.li	a5,00000009
	bltu	a5,a0,0000000023008742

l2300860A:
	addi	a4,zero,+000001B0
	add	a4,a0,a4
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	lui	s2,00042019
	addi	a5,s2,-000000E0
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.add	a5,a4
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	lbu	a3,a5,+0000001A
	addi	a4,zero,+000000FF
	c.mv	s3,a0
	addi	s2,s2,-000000E0
	beq	a3,a4,000000002300871E

l23008648:
	lw	s0,a5,+00000110
	c.mv	s1,a1
	c.mv	s4,a2
	c.bnez	s0,000000002300866A

l23008652:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+000007CE
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000064
	jal	ra,000000002301327E

l2300866A:
	lhu	a5,s0,+000000A6
	addi	s5,s0,+00000080
	addi	s6,s0,+000000A0
	c.addi	a5,00000001
	sh	a5,s0,+000000A6
	lhu	a5,s0,+000000A4
	c.li	s7,0000000C
	c.li	s8,00000003
	c.addi	a5,00000001
	sh	a5,s0,+000000A4
	lui	s9,00023074
	lui	s10,00023075

l23008692:
	c.beqz	s1,00000000230086D2

l23008694:
	lhu	a5,s5,+00000000
	add	a5,a5,s7
	c.add	a5,s0
	lhu	a4,a5,+00000004
	bgeu	s8,s4,00000000230086F4

l230086A6:
	c.addi	a4,00000004
	sh	a4,a5,+00000004
	c.addi	s1,FFFFFFFC
	c.addi	s4,FFFFFFFC

l230086B0:
	lhu	a4,a5,+00000004
	lhu	a5,a5,+00000006
	bgeu	a4,a5,00000000230086CC

l230086BC:
	addi	a2,zero,+000007FA
	addi	a1,s9,+000002DC
	addi	a0,s10,+00000074
	jal	ra,000000002301327E

l230086CC:
	c.addi	s5,00000008
	bne	s5,s6,0000000023008692

l230086D2:
	lbu	a5,s0,+000000AE
	c.beqz	a5,0000000023008712

l230086D8:
	c.li	a4,00000002
	bne	a5,a4,000000002300871E

l230086DE:
	addi	a5,zero,+000001B0
	add	s3,s3,a5
	c.add	s3,s2
	lbu	a5,s3,+0000011A
	c.andi	a5,00000001
	c.bnez	a5,000000002300871E

l230086F0:
	c.li	a5,00000003
	c.j	000000002300873C

l230086F4:
	c.slli	s1,10
	c.srli	s1,00000010
	c.add	a4,s1
	sh	a4,a5,+00000004
	lhu	a4,a5,+00000006
	sub	s1,s1,s4
	c.li	s4,00000000
	c.add	s1,a4
	sh	s1,a5,+00000006
	c.li	s1,00000000
	c.j	00000000230086B0

l23008712:
	lbu	a5,s0,+000000AC
	c.beqz	a5,000000002300873A

l23008718:
	c.addi	a5,FFFFFFFF
	sb	a5,s0,+000000AC

l2300871E:
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

l2300873A:
	c.li	a5,00000001

l2300873C:
	sb	a5,s0,+000000AE
	c.j	000000002300871E

l23008742:
	c.jr	ra

;; rc_get_duration: 23008744
;;   Called from:
;;     23008A5A (in rc_calc_tp)
;;     2300952C (in rc_check)
;;     23009546 (in rc_check)
;;     230095C2 (in rc_check)
;;     230095F8 (in rc_check)
rc_get_duration proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	srai	s2,a0,0000000B
	c.mv	s0,a0
	jal	ra,0000000023007FEE
	andi	s2,s2,+00000007
	c.li	a5,00000001
	c.mv	s1,a0
	bgeu	a5,s2,000000002300879A

l23008764:
	c.li	a5,00000003
	c.li	a0,00000000
	bltu	a5,s2,00000000230087B8

l2300876C:
	c.mv	a0,s0
	jal	ra,0000000023007FD6
	srli	a5,s0,00000006
	c.srli	s0,00000009
	c.andi	a5,00000006
	c.andi	s0,00000001
	c.or	s0,a5
	c.slli	s1,03
	c.or	s1,s0
	lui	s0,00023075
	c.slli	s1,02
	addi	s0,s0,-000002AC
	c.add	s1,s0
	addi	a5,a0,+00000001
	c.lw	s1,0(a0)
	srl	a0,a0,a5
	c.j	00000000230087B8

l2300879A:
	c.li	a5,00000003
	bltu	a5,a0,00000000230087C4

l230087A0:
	c.srai	s0,0000000A
	slli	s1,a0,00000001
	c.andi	s0,00000001
	c.or	s0,s1
	lui	a5,00023075
	c.slli	s0,02
	addi	a5,a5,-000002CC
	c.add	s0,a5
	c.lw	s0,0(a0)

l230087B8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230087C4:
	addi	s1,a0,-00000004
	lui	a5,00023075
	c.slli	s1,02
	addi	a5,a5,-0000016C
	c.add	s1,a5
	c.lw	s1,0(a0)
	c.j	00000000230087B8

;; rc_update_bw_nss_max: 230087D8
;;   Called from:
;;     23007F7E (in me_sta_bw_nss_max_upd)
;;     2301DDBE (in me_rc_set_rate_req_handler)
rc_update_bw_nss_max proc
	c.addi16sp	FFFFFFB0
	c.swsp	s3,0000009C
	addi	a4,zero,+000001B0
	c.mv	s3,a0
	add	a4,s3,a4
	lui	a0,00042019
	addi	a5,a0,-000000E0
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s4,0000001C
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.mv	s4,a1
	c.mv	s1,a2
	c.add	a5,a4
	lw	s0,a5,+00000110
	addi	s2,a0,-000000E0
	c.bnez	s0,0000000023008822

l23008808:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,a2,-00000697
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000064
	jal	ra,000000002301327E

l23008822:
	lbu	a5,s0,+000000BB
	bne	a5,s4,0000000023008832

l2300882A:
	lbu	a5,s0,+000000BC
	beq	a5,s1,00000000230088EE

l23008832:
	sb	s4,s0,+000000BB
	c.li	a5,00000003
	bgeu	a5,s4,0000000023008856

l2300883C:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,a2,-00000691
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000034
	jal	ra,000000002301327E

l23008856:
	sb	s1,s0,+000000BC
	c.li	a5,00000007
	bgeu	a5,s1,000000002300887A

l23008860:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,a2,-0000068F
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000050
	jal	ra,000000002301327E

l2300887A:
	lhu	a4,s0,+000000C6
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	bne	a4,a5,00000000230088EE

l23008886:
	c.mv	a0,s0
	jal	ra,00000000230082C0
	sh	a0,s0,+0000000A
	c.mv	a0,s0
	jal	ra,0000000023008386
	lhu	a5,s0,+000000C0
	c.li	a4,0000000C
	c.li	s1,00000001
	c.addi	a5,FFFFFFFF
	add	a5,a5,a4
	c.li	s4,0000000C
	c.add	a5,s0
	sh	a0,a5,+0000000A

l230088AC:
	lhu	a2,s0,+000000C0
	addi	a5,a2,-00000001
	blt	s1,a5,00000000230088FE

l230088B8:
	c.addi4spn	a3,00000008
	addi	a5,s0,+00000008
	c.li	a4,00000000
	c.mv	s1,a3
	c.li	a1,00000001

l230088C4:
	bne	a2,a4,0000000023008932

l230088C8:
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230082F8
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,000000002300811C
	addi	a0,zero,+000001B0
	add	a0,s3,a0
	c.add	a0,s2
	lbu	a5,a0,+0000011A
	ori	a5,a5,+00000001
	sb	a5,a0,+0000011A

l230088EE:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.addi16sp	00000050
	c.jr	ra

l230088FE:
	c.mv	a0,s0
	jal	ra,00000000230084AC
	lhu	a3,s0,+000000C0
	addi	a4,s0,+0000000A
	c.li	a5,00000000

l2300890E:
	bltu	a5,a3,0000000023008924

l23008912:
	add	a5,s1,s4
	c.addi	s1,00000001
	c.slli	s1,10
	c.srli	s1,00000010
	c.add	a5,s0
	sh	a0,a5,+0000000A
	c.j	00000000230088AC

l23008924:
	c.addi	a4,0000000C
	lhu	a2,a4,-0000000C
	beq	a2,a0,00000000230088FE

l2300892E:
	c.addi	a5,00000001
	c.j	000000002300890E

l23008932:
	c.addi	a4,00000001
	sb	zero,a5,+00000006
	sb	a1,a5,+00000007
	sh	zero,a5,+00000000
	sb	zero,a5,+00000005
	c.slli	a4,10
	sw	zero,a3,+00000000
	c.srli	a4,00000010
	c.addi	a5,0000000C
	c.addi	a3,00000004
	c.j	00000000230088C4

;; rc_init_bcmc_rate: 23008952
;;   Called from:
;;     23007A3A (in me_init_bcmc_rate)
rc_init_bcmc_rate proc
	c.li	a2,00000003
	lw	a4,a0,+0000010C
	lhu	a3,a0,+00000118
	c.li	a5,00000000
	bltu	a2,a1,000000002300896A

l23008962:
	andi	a5,a3,+00000400
	c.slli	a5,10
	c.srai	a5,00000010

l2300896A:
	c.or	a1,a5
	lui	a5,00020000
	c.or	a1,a5
	c.sw	a4,20(a1)
	c.sw	a4,24(a1)
	c.sw	a4,28(a1)
	c.sw	a4,32(a1)
	c.jr	ra

;; rc_check_fixed_rate_config: 2300897C
;;   Called from:
;;     2301DD6C (in me_rc_set_rate_req_handler)
rc_check_fixed_rate_config proc
	lbu	a5,a0,+000000B1
	srli	a4,a1,0000000B
	andi	a3,a4,+00000007
	bltu	a5,a3,0000000023008A12

l2300898C:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.li	a2,00000004
	c.mv	s0,a0
	bne	a5,a2,00000000230089DC

l2300899A:
	bne	a3,a5,0000000023008A08

l2300899E:
	c.andi	a4,00000006
	c.beqz	a4,00000000230089F6

l230089A2:
	srli	a5,a1,00000009
	c.andi	a5,00000001
	c.beqz	a5,00000000230089B0

l230089AA:
	lbu	a5,s0,+000000BD
	c.beqz	a5,0000000023008A08

l230089B0:
	lbu	a4,s0,+000000BB
	srai	a5,a1,00000007
	c.andi	a5,00000003
	bltu	a4,a5,0000000023008A08

l230089BE:
	c.mv	a0,a1
	c.swsp	a1,00000084
	jal	ra,0000000023007FD6
	lbu	a5,s0,+000000BC
	c.lwsp	a2,00000064
	bltu	a5,a0,0000000023008A08

l230089D0:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,000000002300845A

l230089DC:
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	c.li	a3,00000001
	bltu	a3,a5,000000002300899E

l230089E8:
	c.andi	a4,00000006
	c.bnez	a4,00000000230089A2

l230089EC:
	lbu	a4,a0,+000000B9
	c.li	a5,00000003
	bltu	a5,a4,0000000023008A08

l230089F6:
	srai	a5,a1,0000000A
	c.andi	a5,00000001
	c.bnez	a5,00000000230089D0

l230089FE:
	lbu	a4,s0,+000000BE
	c.li	a5,00000001
	bne	a4,a5,00000000230089D0

l23008A08:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23008A12:
	c.li	a0,00000000
	c.jr	ra

;; rc_calc_tp: 23008A16
;;   Called from:
;;     23008B6A (in rc_update_stats)
;;     23009652 (in rc_check)
;;     2301DE74 (in me_rc_stats_req_handler)
rc_calc_tp proc
	c.li	a5,0000000C
	add	a1,a1,a5
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.lui	a5,00002000
	addi	a5,a5,-00000668
	c.add	a1,a0
	lhu	s0,a1,+00000008
	bgeu	a5,s0,0000000023008A88

l23008A38:
	lhu	s3,a1,+0000000A
	c.mv	s2,a0
	c.li	s1,00000000
	c.mv	a0,s3
	jal	ra,00000000230080FE
	c.bnez	a0,0000000023008A58

l23008A48:
	lhu	a0,s2,+000000AA
	lui	s1,00000035
	addi	s1,s1,+00000390
	srl	s1,s1,a0

l23008A58:
	c.mv	a0,s3
	jal	ra,0000000023008744
	addi	a5,zero,+000003E8
	c.add	a0,s1
	add	s0,s0,a5
	srl	s0,s0,a0
	lui	a0,000000F4
	addi	a0,a0,+00000240
	add	a0,s0,a0
	c.srli	a0,00000010

l23008A7A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23008A88:
	c.li	a0,00000000
	c.j	0000000023008A7A

;; rc_update_stats: 23008A8C
;;   Called from:
;;     23009278 (in rc_init)
;;     23009468 (in rc_check)
rc_update_stats proc
	c.addi16sp	FFFFFF50
	c.swsp	s0,00000054
	c.swsp	s1,000000D0
	c.mv	s0,a0
	c.mv	s1,a1
	addi	a2,zero,+00000020
	addi	a1,a0,+0000007C
	c.addi4spn	a0,00000028
	c.swsp	ra,000000D4
	c.swsp	s2,00000050
	c.swsp	s3,000000CC
	c.swsp	s4,0000004C
	c.swsp	s5,000000C8
	c.swsp	s6,00000048
	c.swsp	s7,000000C4
	c.swsp	s8,00000044
	c.swsp	s9,000000C0
	c.swsp	s10,00000040
	c.swsp	s11,000000BC
	jal	ra,0000000023070C7C
	lhu	a4,s0,+000000A6
	c.beqz	a4,0000000023008AE4

l23008AC0:
	lhu	a5,s0,+000000A4
	lw	a3,s0,+000000A8
	sw	zero,s0,+000000A4
	c.slli	a5,10
	xor	a5,a5,a4
	addi	a4,zero,+00000060
	add	a4,a4,a3
	c.slli	a5,05
	c.add	a5,a4
	c.srli	a5,00000007
	sw	a5,s0,+000000A8

l23008AE4:
	lhu	a2,s0,+000000C0
	c.addi4spn	a3,00000048
	sb	zero,s0,+000000AD
	addi	a5,s0,+0000000E
	c.li	a4,00000000
	c.mv	s3,a3
	c.li	a1,00000001

l23008AF8:
	bne	a2,a4,0000000023008B40

l23008AFC:
	lhu	a1,s0,+000000C6
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	c.li	s2,00000000
	c.li	s4,0000000C
	beq	a1,a5,0000000023008B82

l23008B0C:
	lbu	a3,s0,+000000AF
	c.li	a5,00000000
	c.li	a0,0000000C
	andi	a2,a3,+00000020
	bne	a2,zero,0000000023008DC4

l23008B1C:
	lbu	s1,s0,+00000080
	c.li	a5,0000000C
	add	s1,s1,a5
	addi	a0,s1,+00000004
	c.add	a0,s0
	c.add	s1,s0
	jal	ra,00000000230083FC
	sh	zero,s1,+00000004
	sh	zero,s1,+00000006
	sw	zero,s0,+00000004
	c.j	0000000023008B9C

l23008B40:
	c.addi	a4,00000001
	c.slli	a4,10
	sw	zero,a3,+00000000
	sb	zero,a5,+00000000
	sb	a1,a5,+00000001
	c.srli	a4,00000010
	c.addi	a3,00000004
	c.addi	a5,0000000C
	c.j	0000000023008AF8

l23008B58:
	add	a0,s2,s4
	c.addi	a0,00000004
	c.add	a0,s0
	jal	ra,00000000230083FC
	andi	a1,s2,+000000FF
	c.mv	a0,s0
	jal	ra,0000000023008A16
	slli	a5,s2,00000002
	c.addi4spn	a4,00000070
	c.addi	s2,00000001
	c.add	a5,a4
	c.slli	s2,10
	sw	a0,a5,+00000FD8
	srli	s2,s2,00000010

l23008B82:
	lhu	a5,s0,+000000C0
	bltu	s2,a5,0000000023008B58

l23008B8A:
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,00000000230082F8
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,000000002300811C
	c.beqz	s1,0000000023008BA0

l23008B9C:
	c.li	s1,00000000
	c.j	0000000023008C54

l23008BA0:
	lhu	a3,s0,+000000C0
	c.li	a5,00000009
	bltu	a5,a3,0000000023008BC6

l23008BAA:
	addi	a4,s0,+00000004
	c.li	a5,00000000

l23008BB0:
	beq	a3,a5,0000000023008B9C

l23008BB4:
	c.addi	a5,00000001
	c.slli	a5,10
	sh	zero,a4,+00000000
	sh	zero,a4,+00000002
	c.srli	a5,00000010
	c.addi	a4,0000000C
	c.j	0000000023008BB0

l23008BC6:
	lhu	a4,s0,+00000080
	c.li	a3,0000000C
	lhu	a5,s0,+00000088
	add	a4,a4,a3
	c.li	a2,0000000C
	c.li	a1,FFFFFFFF
	c.addi4spn	a0,0000001C
	lui	s6,00023075
	c.li	s3,00000000
	c.li	s7,00000004
	addi	s6,s6,-000002E0
	c.li	s8,00000001
	add	a5,a5,a3
	c.add	a4,s0
	lhu	s2,a4,+0000000A
	srai	s5,s2,0000000B
	andi	s5,s5,+00000006
	andi	s9,s2,+00000200
	andi	s10,s2,-00000201
	ori	s11,s2,+00000200
	c.add	a5,s0
	lhu	s4,a5,+0000000A
	jal	ra,0000000023070EB8

l23008C10:
	addi	a5,s3,-00000001
	andi	a5,a5,+000000FF
	bltu	s7,a5,0000000023008C24

l23008C1C:
	c.slli	a5,02
	c.add	a5,s6
	c.lw	a5,0(a5)
	c.jr	a5

l23008C24:
	c.mv	a0,s0
	jal	ra,00000000230084AC
	sh	a0,sp,+0000001C
	c.addi	s3,00000001
	andi	s3,s3,+000000FF
	c.li	a5,00000006
	bne	s3,a5,0000000023008C10

l23008C3A:
	lhu	a7,s0,+000000C0
	c.lui	a1,00010000
	c.li	a5,00000001
	c.li	a3,00000000
	c.li	t1,0000000C
	c.li	t3,00000005
	c.addi	a1,FFFFFFFF
	c.li	t4,0000000A

l23008C4C:
	bltu	a5,a7,0000000023008D30

l23008C50:
	sw	zero,s0,+00000004

l23008C54:
	addi	a5,s0,+00000080
	c.addi4spn	a4,00000028
	addi	s0,s0,+000000A0

l23008C5E:
	lhu	a2,a4,+00000004
	lhu	a3,a5,+00000000
	bne	a2,a3,0000000023008E30

l23008C6A:
	c.addi	a5,00000008
	c.addi	a4,00000008
	bne	a5,s0,0000000023008C5E

l23008C72:
	c.lwsp	a4,00000130
	c.lwsp	a0,00000114
	c.mv	a0,s1
	c.lwsp	sp,00000158
	c.lwsp	t1,00000134
	c.lwsp	t5,00000068
	c.lwsp	s10,00000088
	c.lwsp	s6,000000A8
	c.lwsp	s2,000000C8
	c.lwsp	a4,000000E8
	c.lwsp	a0,0000000C
	c.lwsp	t1,0000002C
	c.lwsp	sp,0000004C
	c.lwsp	t4,0000017C
	c.addi16sp	000000B0
	c.jr	ra
23008C92       E3 8E 0A F8 83 47 D4 0B E3 9A 87 F9 63 95   .....G......c.
23008CA0 0C 00 23 1F B1 01 61 B7 23 1F A1 01 49 B7 CA 85 ..#...a.#...I...
23008CB0 22 85 EF F0 CF BB E3 0C A9 F6 AA 85 2A C6 22 85 "...........*.".
23008CC0 EF F0 AF F9 2D D5 B2 47 23 10 F1 02 8D B7 CA 85 ....-..G#.......
23008CD0 22 85 EF F0 EF B3 E3 0C A9 F4 AA 85 2A C6 22 85 "...........*.".
23008CE0 EF F0 AF F7 29 D5 B2 47 23 11 F1 02 89 B7 D2 85 ....)..G#.......
23008CF0 22 85 EF F0 CF B7 E3 0C AA F2 AA 85 2A C6 22 85 "...........*.".
23008D00 EF F0 AF F5 0D D5 B2 47 23 12 F1 02 0D B7 D2 85 .......G#.......
23008D10 22 85 EF F0 EF AF E3 0C AA F0 AA 85 2A C6 22 85 "...........*.".
23008D20 EF F0 AF F3 E3 05 05 F0 B2 47 23 13 F1 02 01 B7 .........G#.....

l23008D30:
	add	a4,a5,t1
	c.add	a4,s0
	lh	a2,a4,+00000008
	bge	a2,zero,0000000023008D46

l23008D3E:
	lbu	a2,a4,+0000000C
	bgeu	t4,a2,0000000023008DA8

l23008D46:
	lhu	a2,s0,+00000080
	beq	a2,a5,0000000023008DA8

l23008D4E:
	lhu	a2,s0,+00000088
	beq	a2,a5,0000000023008DA8

l23008D56:
	lhu	a2,s0,+00000090
	beq	a2,a5,0000000023008DA8

l23008D5E:
	bltu	t3,a3,0000000023008DA8

l23008D62:
	slli	a2,a3,00000001
	c.addi4spn	a0,00000070
	c.add	a2,a0
	lhu	a2,a2,-00000054
	beq	a2,a1,0000000023008D8E

l23008D72:
	addi	a6,s0,+0000000A
	c.li	a0,00000000

l23008D78:
	bltu	a0,a7,0000000023008D9A

l23008D7C:
	c.addi	a5,00000001
	c.slli	a5,10
	sh	a2,a4,+0000000A
	sh	zero,a4,+00000008
	sb	zero,a4,+0000000D
	c.srli	a5,00000010

l23008D8E:
	c.addi	a3,00000001

l23008D90:
	sh	zero,a4,+00000004
	sh	zero,a4,+00000006
	c.j	0000000023008C4C

l23008D9A:
	c.addi	a6,0000000C
	lhu	t5,a6,-0000000C
	beq	t5,a2,0000000023008D8E

l23008DA4:
	c.addi	a0,00000001
	c.j	0000000023008D78

l23008DA8:
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.j	0000000023008D90

l23008DB0:
	add	a2,a5,a0
	c.add	a2,s0
	lhu	a2,a2,+0000000A
	beq	a2,a1,0000000023008DE8

l23008DBE:
	c.addi	a5,00000001
	andi	a5,a5,+000000FF

l23008DC4:
	slli	a2,a5,00000010
	c.srli	a2,00000010
	bltu	a2,a4,0000000023008DB0

l23008DCE:
	bne	a4,a2,0000000023008DE8

l23008DD2:
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	c.li	a2,0000000C
	add	a2,a5,a2
	c.add	a2,s0
	sh	a1,a2,+0000000A
	sh	zero,a2,+00000008

l23008DE8:
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+00000080
	sh	a5,s0,+00000088
	sh	a5,s0,+00000090
	sw	zero,s0,+0000007C
	sw	zero,s0,+00000084
	sw	zero,s0,+0000008C
	addi	a2,s0,+00000004
	c.li	a5,00000000

l23008E0A:
	bne	a4,a5,0000000023008E1E

l23008E0E:
	andi	a3,a3,-00000061
	ori	a3,a3,+00000040
	sb	a3,s0,+000000AF
	c.li	s1,00000001
	c.j	0000000023008C54

l23008E1E:
	c.addi	a5,00000001
	c.slli	a5,10
	sh	zero,a2,+00000000
	sh	zero,a2,+00000002
	c.srli	a5,00000010
	c.addi	a2,0000000C
	c.j	0000000023008E0A

l23008E30:
	c.li	s1,00000001
	c.j	0000000023008C72

;; rc_init: 23008E34
;;   Called from:
;;     23007C3C (in me_init_rate)
rc_init proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	lbu	a5,a0,+0000001B
	c.li	a4,00000009
	c.mv	s0,a0
	addi	s5,a5,+00000008
	lw	s4,a0,+0000010C
	andi	s5,s5,+000000FF
	bgeu	a4,a5,0000000023008E80

l23008E66:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,a2,-000007A1
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000014C
	jal	ra,000000002301327E

l23008E80:
	lbu	s2,s0,+0000001B
	addi	s7,zero,+000000C8
	lui	s1,0004201B
	add	s7,s2,s7
	addi	s3,s1,+00000108
	addi	s1,s1,+00000108
	c.add	s3,s7
	sw	s3,s0,+00000110
	jal	ra,000000002301459E
	c.li	a1,00000000
	slli	s6,a0,0000000E
	addi	a2,zero,+000000C8
	c.mv	a0,s3
	jal	ra,0000000023070EB8
	lw	a5,s0,+000000EC
	addi	a0,s0,+000000B0
	c.li	a1,00000000
	c.andi	a5,00000002
	beq	a5,zero,00000000230090B6

l23008EC2:
	jal	ra,0000000023007922
	c.li	a5,00000002
	addi	s9,s0,+000000C3
	sb	a5,s3,+000000B1
	sh	a0,s3,+000000B6
	c.mv	a0,s9
	jal	ra,0000000023007806
	c.mv	s8,a0
	lui	a0,0004201B
	addi	a0,a0,-0000001D
	jal	ra,0000000023007806
	c.mv	a5,s8
	bgeu	a0,s8,0000000023008EF0

l23008EEE:
	c.mv	a5,a0

l23008EF0:
	addi	a4,zero,+000000C8
	add	a4,s2,a4
	c.add	a4,s1
	sb	a5,a4,+000000BC
	c.li	a4,00000003
	bgeu	a4,a5,0000000023008F1E

l23008F04:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,a2,-0000075A
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000124
	jal	ra,000000002301327E

l23008F1E:
	addi	a0,s7,+000000B2
	addi	s7,zero,+000000C8
	add	s7,s2,s7
	c.li	a2,00000004
	c.mv	a1,s9
	c.add	a0,s1
	jal	ra,0000000023070C7C
	c.li	a5,FFFFFFFF
	c.add	s7,s1
	lhu	a0,s7,+000000B6
	sb	a5,s7,+000000B2
	c.li	a5,00000007
	sb	a5,s7,+000000B8
	jal	ra,0000000023007824
	sb	a0,s7,+000000B9
	c.li	a5,0000000C
	bgeu	a5,a0,0000000023008F6E

l23008F54:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,a2,-00000748
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000110
	jal	ra,000000002301327E

l23008F6E:
	addi	s7,zero,+000000C8
	add	s7,s2,s7
	c.add	s7,s1
	lhu	a0,s7,+000000B6
	jal	ra,0000000023007840
	sb	a0,s7,+000000BA
	c.li	a5,0000000C
	bgeu	a5,a0,0000000023008FA4

l23008F8A:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,a2,-00000742
	addi	a1,a1,+000002DC
	addi	a0,a0,-000000C0
	jal	ra,000000002301327E

l23008FA4:
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	lhu	a4,s0,+00000118
	c.srai	a4,0000000A
	c.andi	a4,00000001
	c.add	a5,s1
	sb	a4,a5,+000000BE
	jal	ra,00000000230145B2
	lhu	a5,s0,+000000C0
	c.beqz	a0,0000000023008FCE

l23008FC4:
	andi	a4,a5,+00000001
	c.beqz	a4,0000000023008FCE

l23008FCA:
	ori	s6,s6,+00000040

l23008FCE:
	slli	a4,a5,00000014
	blt	a4,zero,0000000023009080

l23008FD6:
	c.lui	a4,00001000

l23008FD8:
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	addi	a4,a4,-00000101
	c.add	a5,s1
	sh	a4,a5,+000000C2
	lbu	a4,s0,+000000F1
	sb	a4,a5,+000000BB
	c.li	a5,00000003
	bgeu	a5,a4,0000000023009012

l23008FF8:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,a2,-0000072B
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000034
	jal	ra,000000002301327E

l23009012:
	lbu	a4,s0,+000000F1
	c.beqz	a4,0000000023009084

l23009018:
	c.li	a5,00000001
	beq	a4,a5,00000000230090A0

l2300901E:
	addi	a4,zero,+000000C8
	add	a4,s2,a4
	c.li	a5,00000001
	c.add	a4,s1
	lbu	a3,a4,+000000B1
	bgeu	a5,a3,0000000023009168

l23009032:
	c.li	a2,00000003
	bgeu	a2,a3,0000000023009332

l23009038:
	sh	zero,a4,+000000C0

l2300903C:
	c.lui	s8,00001000
	lui	s7,00023074
	lui	a0,00023075
	addi	a2,s8,-00000701
	addi	a1,s7,+000002DC
	addi	a0,a0,-0000000C
	jal	ra,000000002301327E
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	c.add	a5,s1
	lhu	a4,a5,+000000C0
	c.li	a5,0000000A
	bgeu	a5,a4,00000000230091C8

l2300906A:
	lui	a0,00023075
	addi	a2,s8,-00000700
	addi	a1,s7,+000002DC
	addi	a0,a0,+0000000C
	jal	ra,000000002301327E
	c.j	00000000230091C8

l23009080:
	c.lui	a4,00002000
	c.j	0000000023008FD8

l23009084:
	lhu	a5,s0,+000000C0
	andi	a5,a5,+00000020
	c.beqz	a5,000000002300901E

l2300908E:
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	c.li	a4,00000001
	c.add	a5,s1

l2300909A:
	sb	a4,a5,+000000BD
	c.j	000000002300901E

l230090A0:
	lhu	a5,s0,+000000C0
	andi	a5,a5,+00000040
	c.beqz	a5,000000002300901E

l230090AA:
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	c.add	a5,s1
	c.j	000000002300909A

l230090B6:
	jal	ra,0000000023007922
	sh	a0,s3,+000000B6
	jal	ra,0000000023007824
	sb	a0,s3,+000000B9
	c.li	a5,0000000B
	bgeu	a5,a0,00000000230090E6

l230090CC:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,a2,-0000070C
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000070
	jal	ra,000000002301327E

l230090E6:
	addi	s7,zero,+000000C8
	add	s7,s2,s7
	c.add	s7,s1
	lhu	a0,s7,+000000B6
	jal	ra,0000000023007840
	sb	a0,s7,+000000BA
	c.li	a5,0000000B
	bgeu	a5,a0,000000002300911C

l23009102:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,a2,-0000070A
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000004C
	jal	ra,000000002301327E

l2300911C:
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	c.li	a4,FFFFFFFF
	c.add	a5,s1
	sb	a4,a5,+000000B8
	lbu	a4,s0,+000000F1
	sb	a4,a5,+000000BB
	c.beqz	a4,0000000023009150

l23009136:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,a2,-00000707
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000028
	jal	ra,000000002301327E

l23009150:
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	lhu	a4,s0,+00000118
	c.srai	a4,0000000A
	c.andi	a4,00000001
	c.add	a5,s1
	sb	a4,a5,+000000BE
	c.j	000000002300901E

l23009168:
	lhu	a3,a4,+000000B6
	lbu	a4,a4,+000000BE
	c.li	a1,0000000C
	sub	a4,a5,a4
	srai	a5,a3,00000002
	andi	a2,a5,+00000001
	srai	a5,a3,00000001
	c.andi	a5,00000001
	c.add	a5,a2
	sll	a5,a5,a4
	andi	a2,a3,+00000001
	c.add	a5,a2
	srai	a2,a3,00000003
	c.andi	a2,00000001
	sll	a4,a2,a4
	c.add	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	a4,00000004

l230091A2:
	sra	a2,a3,a4
	c.andi	a2,00000001
	c.add	a5,a2
	c.slli	a5,10
	c.addi	a4,00000001
	c.srli	a5,00000010
	bne	a4,a1,00000000230091A2

l230091B4:
	c.li	a4,0000000A
	bgeu	a4,a5,0000000023009398

l230091BA:
	addi	a5,zero,+000000C8
	add	a5,s2,a5
	c.add	a5,s1
	sh	a4,a5,+000000C0

l230091C8:
	lbu	a4,s0,+0000001B
	addi	a3,zero,+000001B0
	lui	a5,00042019
	add	a4,a4,a3
	addi	a5,a5,-000000E0
	c.add	a5,a4
	lw	s7,a5,+00000110
	bne	s7,zero,00000000230091FE

l230091E6:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+000006E4
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000064
	jal	ra,000000002301327E

l230091FE:
	lhu	a4,s7,+000000C0
	addi	s9,s7,+0000000A
	c.mv	a5,s9
	c.li	s8,00000000
	c.li	a3,FFFFFFFF

l2300920C:
	bne	s8,a4,00000000230093AC

l23009210:
	c.mv	a0,s7
	jal	ra,00000000230082C0
	sh	a0,s7,+0000000A
	c.mv	a0,s7
	jal	ra,0000000023008386
	c.addi	s8,FFFFFFFF
	c.li	a5,0000000C
	add	s8,s8,a5
	c.li	s10,0000000C
	c.add	s8,s7
	sh	a0,s8,+0000000A
	c.li	s8,00000001

l23009232:
	lhu	a5,s7,+000000C0
	addi	a4,a5,-00000001
	blt	s8,a4,00000000230093BC

l2300923E:
	sh	a4,s7,+00000080
	addi	a4,a5,-00000002
	c.addi	a5,FFFFFFFD
	sh	a5,s7,+00000090
	c.lui	a5,00010000
	sw	a5,s7,+000000A8
	c.li	a5,FFFFFFFF
	sh	a4,s7,+00000088
	sh	a5,s7,+000000C6
	c.li	a1,00000001
	sw	zero,s7,+0000007C
	sw	zero,s7,+00000084
	sw	zero,s7,+0000008C
	sh	zero,s7,+00000098
	sw	zero,s7,+00000094
	sb	zero,s7,+000000AF
	c.mv	a0,s7
	jal	ra,0000000023008A8C
	c.li	a5,00000005
	sb	a5,s7,+000000AC
	addi	a5,zero,+000000C8
	add	s2,s2,a5
	addi	a4,s4,+00000014
	addi	a3,s4,+00000024
	c.li	a1,0000000C
	lui	a2,00080000

l23009298:
	lbu	a5,s3,+00000080
	c.addi	a4,00000004
	c.addi	s3,00000008
	add	a5,a5,a1
	c.add	a5,s2
	c.add	a5,s1
	lhu	a5,a5,+0000000A
	c.or	a5,a2
	sw	a5,a4,+00000FFC
	bne	a4,a3,0000000023009298

l230092B6:
	lui	a5,00044B00
	lw	a5,a5,+00000120
	c.add	s2,s1
	c.slli	s5,0A
	sw	a5,s2,+00000000
	lui	a5,000BADCB
	addi	a5,a5,-000004E2
	sw	a5,s4,+00000000
	c.lui	a5,FFFF0000
	addi	a5,a5,+00000704
	sw	s5,s4,+0000000C
	sw	a5,s4,+00000010
	sw	s6,s4,+00000004
	jal	ra,000000002301459E
	c.addi	a0,00000001
	c.li	a5,00000001
	sll	a5,a5,a0
	c.addi	a5,FFFFFFFF
	sw	a5,s4,+00000008
	lw	a4,s0,+0000010C
	c.lui	a5,00002000
	addi	a5,a5,+00000200
	c.sw	a4,52(a5)
	lw	a5,s0,+0000010C
	c.lw	s0,16(a4)
	c.sw	a5,56(a4)
	lbu	a5,s0,+0000011A
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	ori	a5,a5,+00000011
	sb	a5,s0,+0000011A
	c.lwsp	s0,00000114
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

l23009332:
	lbu	a3,a4,+000000BD
	lbu	a1,a4,+000000B2
	c.li	a2,00000008
	sll	a3,a5,a3
	c.li	a5,00000000

l23009342:
	andi	a4,a1,+00000001
	add	a4,a3,a4
	c.addi	a2,FFFFFFFF
	c.srli	a1,00000001
	c.add	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	c.bnez	a2,0000000023009342

l23009356:
	addi	a4,zero,+000000C8
	add	a4,s2,a4
	c.li	a2,00000001
	c.add	a4,s1
	lhu	a3,a4,+000000B6
	lbu	a4,a4,+000000BE
	c.sub	a2,a4
	srai	a4,a3,00000002
	andi	a1,a4,+00000001
	srai	a4,a3,00000001
	c.andi	a4,00000001
	c.add	a4,a1
	andi	a1,a3,+00000001
	c.srai	a3,00000003
	sll	a4,a4,a2
	c.andi	a3,00000001
	c.add	a4,a1
	sll	a3,a3,a2
	c.add	a4,a3
	c.add	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	c.j	00000000230091B4

l23009398:
	addi	a4,zero,+000000C8
	add	a4,s2,a4
	c.add	a4,s1
	sh	a5,a4,+000000C0
	bne	a5,zero,00000000230091C8

l230093AA:
	c.j	000000002300903C

l230093AC:
	c.addi	s8,00000001
	c.slli	s8,10
	sh	a3,a5,+00000000
	srli	s8,s8,00000010
	c.addi	a5,0000000C
	c.j	000000002300920C

l230093BC:
	c.mv	a0,s7
	jal	ra,00000000230084AC
	lhu	a3,s7,+000000C0
	c.mv	a4,s9
	c.li	a5,00000000

l230093CA:
	bltu	a5,a3,00000000230093E2

l230093CE:
	add	a5,s8,s10
	c.addi	s8,00000001
	c.slli	s8,10
	srli	s8,s8,00000010
	c.add	a5,s7
	sh	a0,a5,+0000000A
	c.j	0000000023009232

l230093E2:
	c.addi	a4,0000000C
	lhu	a2,a4,-0000000C
	beq	a2,a0,0000000023009232

l230093EC:
	c.addi	a5,00000001
	c.j	00000000230093CA

;; rc_check: 230093F0
;;   Called from:
;;     23007AAE (in me_check_rc)
rc_check proc
	c.li	a5,00000009
	bltu	a5,a0,00000000230096C8

l230093F6:
	addi	a4,zero,+000001B0
	add	a4,a0,a4
	c.addi16sp	FFFFFFB0
	c.swsp	s3,0000009C
	lui	s3,00042019
	addi	a5,s3,-000000E0
	c.swsp	s4,0000001C
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	c.add	a5,a4
	lw	s0,a5,+00000110
	c.mv	s4,a0
	addi	s3,s3,-000000E0
	c.bnez	s0,000000002300944A

l23009430:
	c.lui	a2,00001000
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,a2,-000007DA
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000064
	jal	ra,000000002301327E

l2300944A:
	lui	s1,00044B00
	lw	a4,s1,+00000120
	c.lui	a5,00018000
	addi	a5,a5,+000006A0
	c.sub	a5,a4
	c.lw	s0,0(a4)
	c.li	s6,00000000
	c.add	a5,a4
	bge	a5,zero,0000000023009486

l23009464:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023008A8C
	lbu	a5,s0,+000000AF
	sb	zero,s0,+000000AE
	sb	zero,s0,+000000B0
	c.andi	a5,FFFFFFEF
	sb	a5,s0,+000000AF
	lw	a5,s1,+00000120
	c.mv	s6,a0
	c.sw	s0,0(a5)

l23009486:
	lbu	a5,s0,+000000AE
	c.li	a4,00000001
	bne	a5,a4,000000002300968A

l23009490:
	lbu	a4,s0,+000000AF
	andi	a4,a4,+00000040
	bne	a4,zero,0000000023009626

l2300949C:
	lbu	a4,s0,+000000B1
	lhu	s5,s0,+00000080
	bltu	a5,a4,00000000230095A8

l230094A8:
	c.li	a5,0000000C
	add	a5,s5,a5
	c.lui	a3,FFFFE000
	addi	a3,a3,+00000667
	c.add	a5,s0
	lhu	a5,a5,+00000008
	c.add	a5,a3
	c.slli	a5,10
	c.lui	a3,0000E000
	c.srli	a5,00000010
	addi	a3,a3,-00000666
	bgeu	a3,a5,00000000230095A4

l230094CA:
	c.li	a5,00000005

l230094CC:
	sb	a5,s0,+000000AC
	lui	a5,0004200E
	addi	a5,a5,-00000700
	c.lw	a5,0(s1)
	lui	a3,00041C65
	addi	a3,a3,-00000193
	add	s1,s1,a3
	c.lui	a3,00003000
	addi	a3,a3,+00000039
	c.swsp	a4,00000084
	c.add	s1,a3
	c.sw	a5,0(s1)
	lhu	a5,s0,+000000C0
	c.srli	s1,00000010
	and	s1,s1,a5
	beq	s1,s5,0000000023009626

l23009500:
	lhu	s7,s0,+00000088
	beq	s1,s7,0000000023009626

l23009508:
	lhu	s9,s0,+00000090
	beq	s1,s9,0000000023009626

l23009510:
	c.li	s8,0000000C
	add	s2,s1,s8
	c.lui	a5,0000F000
	addi	a5,a5,+00000333
	c.add	s2,s0
	lhu	a3,s2,+00000008
	bltu	a5,a3,0000000023009626

l23009526:
	lhu	s11,s2,+0000000A
	c.mv	a0,s11
	jal	ra,0000000023008744
	add	a5,s5,s8
	c.lwsp	a2,000000C4
	c.li	a3,00000001
	c.mv	s10,a0
	c.add	a5,s0
	lhu	a5,a5,+0000000A
	bltu	a3,a4,00000000230095B2

l23009544:
	c.mv	a0,a5
	jal	ra,0000000023008744
	bgeu	a0,s10,0000000023009672

l2300954E:
	lbu	a5,s2,+0000000C
	c.li	a0,00000000
	sltiu	a5,a5,+00000014
	xori	a5,a5,+00000001

l2300955C:
	lw	a4,s0,+00000084
	sh	s7,s0,+000000A0
	sw	a4,s0,+0000009C
	lbu	a4,s0,+000000AF
	beq	a5,zero,0000000023009678

l23009570:
	c.lw	s0,124(a5)
	c.andi	a4,FFFFFFFD
	sb	a4,s0,+000000AF
	sw	a5,s0,+00000084
	sh	s5,s0,+00000088
	c.sw	s0,124(a0)
	sh	s1,s0,+00000080

l23009586:
	c.li	a5,00000002
	sb	a5,s0,+000000AE

l2300958C:
	addi	a0,zero,+000001B0
	add	s4,s4,a0
	c.add	s3,s4
	lbu	a5,s3,+0000011A
	ori	a5,a5,+00000001
	sb	a5,s3,+0000011A
	c.j	000000002300962E

l230095A4:
	c.li	a5,0000000A
	c.j	00000000230094CC

l230095A8:
	lhu	a5,s0,+000000AA
	c.addi	a5,00000008
	c.slli	a5,01
	c.j	00000000230094CC

l230095B2:
	add	s8,s7,s8
	c.swsp	a5,00000084
	c.add	s8,s0
	lhu	a0,s8,+0000000A
	addi	s8,zero,+00000020
	jal	ra,0000000023008744
	lbu	a4,s2,+0000000D
	c.lwsp	a2,000000E4
	c.bnez	a4,00000000230095D2

l230095CE:
	lhu	s8,s0,+000000AA

l230095D2:
	bltu	s10,a0,000000002300964C

l230095D6:
	c.mv	a0,a5
	jal	ra,0000000023007FD6
	c.swsp	a0,00000084
	c.mv	a0,s11
	jal	ra,0000000023007FD6
	c.lwsp	a2,000000E4
	c.addi	a5,FFFFFFFF
	bltu	a5,a0,0000000023009600

l230095EC:
	c.li	a5,0000000C
	add	s9,s9,a5
	c.add	s9,s0
	lhu	a0,s9,+0000000A
	jal	ra,0000000023008744
	bltu	s10,a0,000000002300964C

l23009600:
	lbu	a5,s2,+0000000C
	bltu	a5,s8,0000000023009626

l23009608:
	lbu	a5,s0,+000000AD
	c.li	a4,00000002
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,s0,+000000AD
	bgeu	a4,a5,000000002300964C

l2300961C:
	c.li	a4,0000000F
	bgeu	a4,a5,0000000023009626

l23009622:
	sb	a4,s0,+000000AD

l23009626:
	sb	zero,s0,+000000AE

l2300962A:
	bne	s6,zero,000000002300958C

l2300962E:
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

l2300964C:
	andi	a1,s1,+000000FF
	c.mv	a0,s0
	jal	ra,0000000023008A16
	lbu	a4,s2,+0000000E
	c.li	a3,00000009
	c.li	a5,00000001
	c.andi	a4,0000000F
	bltu	a3,a4,000000002300955C

l23009664:
	lbu	a5,s2,+0000000C
	sltu	a5,a5,s8
	xori	a5,a5,+00000001
	c.j	000000002300955C

l23009672:
	c.li	a0,00000000
	c.li	a5,00000001
	c.j	000000002300955C

l23009678:
	ori	a4,a4,+00000002
	sb	a4,s0,+000000AF
	sw	a0,s0,+00000084
	sh	s1,s0,+00000088
	c.j	0000000023009586

l2300968A:
	c.li	a4,00000003
	bne	a5,a4,000000002300962A

l23009690:
	lbu	a5,s0,+000000AF
	c.andi	a5,00000002
	c.bnez	a5,00000000230096A6

l23009698:
	lhu	a5,s0,+00000088
	sh	a5,s0,+00000080
	lw	a5,s0,+00000084
	c.sw	s0,124(a5)

l230096A6:
	lhu	a5,s0,+000000A0
	sb	zero,s0,+000000AE
	sh	a5,s0,+00000088
	lw	a5,s0,+0000009C
	sw	zero,s0,+0000009C
	sw	a5,s0,+00000084
	addi	a5,zero,+000000FF
	sh	a5,s0,+000000A0
	c.j	000000002300958C

l230096C8:
	c.jr	ra

;; rxu_cntrl_machdr_len_get: 230096CA
;;   Called from:
;;     2300987A (in rxu_mpdu_upload_and_indicate.constprop.11)
;;     23009EB2 (in rxu_cntrl_frame_handle)
rxu_cntrl_machdr_len_get proc
	andi	a3,a0,+00000300
	addi	a4,zero,+00000300
	c.li	a5,00000018
	bne	a3,a4,00000000230096DA

l230096D8:
	c.li	a5,0000001E

l230096DA:
	andi	a4,a0,+000000FC
	addi	a3,zero,+00000088
	bne	a4,a3,00000000230096EC

l230096E6:
	c.addi	a5,00000002
	andi	a5,a5,+000000FF

l230096EC:
	c.slli	a0,10
	c.srai	a0,00000010
	bge	a0,zero,00000000230096FA

l230096F4:
	c.addi	a5,00000004
	andi	a5,a5,+000000FF

l230096FA:
	c.mv	a0,a5
	c.jr	ra

;; rxu_cntrl_protected_handle: 230096FE
;;   Called from:
;;     2300A0FC (in rxu_cntrl_frame_handle)
;;     2300A1B6 (in rxu_cntrl_frame_handle)
rxu_cntrl_protected_handle proc
	lui	a5,0004201C
	addi	a4,a5,-00000638
	lbu	a3,a4,+00000008
	andi	a6,a1,+00000400
	c.li	a2,00000018
	c.andi	a1,0000001C
	c.add	a0,a3
	addi	a5,a5,-00000638
	beq	a1,a2,00000000230097A8

l2300971C:
	c.li	a2,0000001C
	beq	a1,a2,000000002300972C

l23009722:
	c.li	a5,00000014
	beq	a1,a5,00000000230097A0

l23009728:
	c.li	a0,00000000
	c.jr	ra

l2300972C:
	beq	a6,zero,0000000023009786

l23009730:
	lhu	a4,a0,+00000002
	addi	a2,zero,+00000068
	addi	a1,zero,+000005D8
	c.srli	a4,0000000E
	add	a4,a4,a2
	lbu	a2,a5,+0000000A
	add	a2,a2,a1
	addi	a2,a2,+00000420
	c.add	a4,a2
	lui	a2,0004201A
	addi	a2,a2,+00000410

l23009758:
	c.add	a4,a2
	c.addi	a3,00000008
	c.sw	a5,32(a4)
	sb	a3,a5,+00000008
	lhu	a4,a0,+00000004
	lhu	a2,a0,+00000000
	lhu	a3,a0,+00000006
	c.slli	a4,10
	c.or	a4,a2
	c.sw	a5,16(a4)
	lbu	a4,a5,+00000030
	c.sw	a5,20(a3)
	ori	a4,a4,+00000002
	sb	a4,a5,+00000030

l23009782:
	c.li	a0,00000001
	c.jr	ra

l23009786:
	lbu	a4,a5,+00000009
	addi	a2,zero,+000001B0
	add	a4,a4,a2
	lui	a2,00042019
	addi	a2,a2,-000000E0
	addi	a4,a4,+00000040
	c.j	0000000023009758

l230097A0:
	c.addi	a3,00000004
	sb	a3,a4,+00000008
	c.j	0000000023009782

l230097A8:
	c.addi	a3,00000008
	sb	a3,a5,+00000008
	lhu	a4,a0,+00000004
	lbu	a3,a0,+00000002
	c.lui	a2,00010000
	c.slli	a4,10
	c.or	a4,a3
	lhu	a3,a0,+00000000
	c.addi	a2,FFFFFFFF
	lhu	a1,a0,+00000006
	c.slli	a3,08
	c.and	a3,a2
	c.or	a4,a3
	c.sw	a5,16(a4)
	lbu	a4,a5,+00000030
	c.sw	a5,20(a1)
	ori	a4,a4,+00000003
	sb	a4,a5,+00000030
	beq	a6,zero,000000002300980E

l230097E0:
	lhu	a4,a0,+00000002
	addi	a3,zero,+00000068
	addi	a2,zero,+000005D8
	c.srli	a4,0000000E
	add	a4,a4,a3
	lbu	a3,a5,+0000000A
	add	a3,a3,a2
	addi	a3,a3,+00000420
	c.add	a4,a3
	lui	a3,0004201A
	addi	a3,a3,+00000410

l23009808:
	c.add	a4,a3
	c.sw	a5,32(a4)
	c.j	0000000023009782

l2300980E:
	lbu	a4,a5,+00000009
	addi	a3,zero,+000001B0
	add	a4,a4,a3
	lui	a3,00042019
	addi	a3,a3,-000000E0
	addi	a4,a4,+00000040
	c.j	0000000023009808

;; rxu_mpdu_upload_and_indicate.constprop.11: 23009828
;;   Called from:
;;     23009AF2 (in rxu_mgt_frame_check)
;;     2300A050 (in rxu_cntrl_frame_handle)
rxu_mpdu_upload_and_indicate.constprop.11 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004201C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.swsp	s5,00000080
	addi	s2,s1,-00000638
	lbu	a5,s2,+00000009
	lbu	a4,s2,+0000000A
	c.lw	a0,4(a3)
	c.slli	a5,10
	c.slli	a4,08
	c.or	a5,a4
	c.lw	a3,76(a4)
	sb	zero,s2,+00000032
	c.mv	s0,a0
	c.or	a5,a4
	ori	a5,a5,+00000002
	c.sw	a3,76(a5)
	c.lw	a0,4(a5)
	addi	s1,s1,-00000638
	lw	s5,a5,+00000008
	lw	a5,s5,+00000018
	lbu	a0,a5,+00000000
	lbu	a5,a5,+00000001
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,00000000230096CA
	lbu	s4,s2,+00000008
	sub	s2,s4,a0
	andi	s2,s2,+000000FF
	beq	s2,zero,00000000230098F8

l2300988E:
	andi	a5,s2,+00000001
	c.mv	s3,a0
	c.beqz	a5,00000000230098AE

l23009896:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+00000167
	addi	a1,a1,+000002DC
	addi	a0,a0,+000000B4
	jal	ra,0000000023013280

l230098AE:
	lui	a4,00080000
	xori	a3,a4,-00000001
	lbu	a4,s1,+00000008
	srli	a5,s3,00000001
	lw	a2,s5,+00000018
	andi	a5,a5,+000000FF
	c.srli	a4,00000001
	c.add	a5,a3
	c.add	a4,a3
	c.slli	a5,01
	c.slli	a4,01
	c.add	a5,a2
	c.add	a4,a2

l230098D4:
	bgeu	a5,a2,0000000023009948

l230098D8:
	c.lw	s0,4(a5)
	lhu	a4,a5,+0000001C
	sub	a4,a4,s2
	sh	a4,a5,+0000001C
	lbu	a5,s1,+00000008
	sb	s2,s1,+00000032
	sub	a5,a5,s4
	c.add	s3,a5
	sb	s3,s1,+00000008

l230098F8:
	lui	a5,0004201C
	c.mv	a0,s0
	sw	zero,a5,+00000A40
	jal	ra,0000000023004158
	csrrci	zero,mstatus,00000008
	c.lw	s1,72(a4)
	c.lw	s0,4(a5)
	c.li	a3,00000003
	sb	a3,s0,+0000001C
	c.sw	s0,20(a4)
	lhu	a5,a5,+0000001C
	c.sw	s0,24(a5)
	csrrci	zero,mstatus,00000008
	lui	a0,0004201C
	c.mv	a1,s0
	addi	a0,a0,-000005F8
	jal	ra,000000002300E282
	csrrsi	zero,mstatus,00000008
	csrrsi	zero,mstatus,00000008
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l23009948:
	c.addi	a5,FFFFFFFE
	lhu	a3,a5,+00000002
	c.addi	a4,FFFFFFFE
	sh	a3,a4,+00000002
	c.j	00000000230098D4

;; rxu_mgt_frame_check: 23009956
;;   Called from:
;;     2300A0BC (in rxu_cntrl_frame_handle)
rxu_mgt_frame_check proc
	c.addi16sp	FFFFFFA0
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	s9,00000098
	c.swsp	s10,00000018
	c.swsp	s11,00000094
	lw	s5,a0,+00000004
	sb	zero,sp,+00000017
	lw	a5,s5,+00000008
	c.lw	a5,24(s0)
	lbu	a4,s0,+00000001
	lbu	a5,s0,+00000000
	c.slli	a4,08
	c.or	a4,a5
	andi	a5,a4,+00000400
	bne	a5,zero,0000000023009AF6

l23009994:
	lbu	a5,s0,+00000016
	c.li	s4,00000001
	c.andi	a5,0000000F
	bne	a5,zero,0000000023009C9A

l230099A0:
	addi	a5,zero,+000000FF
	bne	a1,a5,0000000023009A72

l230099A8:
	lw	a3,s5,+00000040
	andi	a3,a3,+00000600
	c.bnez	a3,0000000023009A6A

l230099B2:
	lui	a5,0004201B
	lw	a3,a5,-00000038
	addi	a5,zero,+000000B0
	beq	a4,a5,00000000230099C6

l230099C2:
	c.li	a5,00000001
	c.bnez	a4,0000000023009A12

l230099C6:
	lbu	a2,s0,+00000004
	lbu	a4,s0,+00000010
	c.li	a5,00000001
	bne	a2,a4,0000000023009A12

l230099D4:
	lbu	a2,s0,+00000005
	lbu	a4,s0,+00000011
	bne	a2,a4,0000000023009A12

l230099E0:
	lbu	a2,s0,+00000006
	lbu	a4,s0,+00000012
	bne	a2,a4,0000000023009A12

l230099EC:
	lbu	a2,s0,+00000007
	lbu	a4,s0,+00000013
	bne	a2,a4,0000000023009A12

l230099F8:
	lbu	a2,s0,+00000008
	lbu	a4,s0,+00000014
	bne	a2,a4,0000000023009A12

l23009A04:
	lbu	a5,s0,+00000009
	lbu	a4,s0,+00000015
	c.sub	a5,a4
	sltu	a5,zero,a5

l23009A12:
	c.li	a2,00000002
	c.j	0000000023009B02

l23009A16:
	lbu	a6,a3,+00000050
	lbu	a4,s0,+00000004
	bne	a6,a4,0000000023009B00

l23009A22:
	lbu	a6,a3,+00000051
	lbu	a4,s0,+00000005
	bne	a6,a4,0000000023009B00

l23009A2E:
	lbu	a6,a3,+00000052
	lbu	a4,s0,+00000006
	bne	a6,a4,0000000023009B00

l23009A3A:
	lbu	a6,a3,+00000053
	lbu	a4,s0,+00000007
	bne	a6,a4,0000000023009B00

l23009A46:
	lbu	a6,a3,+00000054
	lbu	a4,s0,+00000008
	bne	a6,a4,0000000023009B00

l23009A52:
	lbu	a6,a3,+00000055
	lbu	a4,s0,+00000009
	bne	a6,a4,0000000023009B00

l23009A5E:
	lbu	a4,a3,+00000056
	c.bnez	a4,0000000023009AFA

l23009A64:
	c.beqz	a5,0000000023009B00

l23009A66:
	lbu	a5,a3,+00000057

l23009A6A:
	lui	a4,0004201C
	sb	a5,a4,+000009D2

l23009A72:
	c.swsp	a0,00000084
	c.mv	s2,a1
	addi	a0,s5,+00000028
	addi	a1,sp,+00000017
	jal	ra,0000000023018DF8
	lbu	s8,s0,+00000001
	lbu	a5,s0,+00000000
	lui	s7,0004201C
	c.slli	s8,08
	or	s8,s8,a5
	addi	a5,s7,-00000638
	lbu	s9,a5,+00000008
	lbu	a5,a5,+0000000A
	addi	a4,zero,+000000FF
	lb	s11,sp,+00000017
	lhu	s3,s5,+0000001C
	addi	s7,s7,-00000638
	beq	a5,a4,0000000023009B08

l23009AB4:
	addi	a4,zero,+000005D8
	add	a5,a5,a4
	lui	a4,0004201A
	addi	a4,a4,+00000410
	add	s10,a5,a4
	lbu	a4,s10,+00000056

l23009ACC:
	andi	s1,s8,+000000FC
	addi	a3,zero,+00000050
	beq	s1,a3,0000000023009BB2

l23009AD8:
	bltu	a3,s1,0000000023009B48

l23009ADC:
	addi	a3,zero,+00000020
	beq	s1,a3,0000000023009B3E

l23009AE4:
	bltu	a3,s1,0000000023009B2E

l23009AE8:
	c.beqz	s1,0000000023009B3E

l23009AEA:
	c.li	a5,00000010
	beq	s1,a5,0000000023009BAA

l23009AF0:
	c.lwsp	a2,00000044
	jal	ra,0000000023009828

l23009AF6:
	c.li	s4,00000001
	c.j	0000000023009C9A

l23009AFA:
	bne	a4,a2,0000000023009B00

l23009AFE:
	c.beqz	a5,0000000023009A66

l23009B00:
	c.lw	a3,0(a3)

l23009B02:
	c.bnez	a3,0000000023009A16

l23009B04:
	c.mv	a5,a1
	c.j	0000000023009A6A

l23009B08:
	beq	s2,a5,0000000023009B28

l23009B0C:
	addi	a4,zero,+000001B0
	add	a4,s2,a4
	lui	a5,00042019
	addi	a5,a5,-000000E0
	c.add	a5,a4
	lbu	a5,a5,+0000001A
	sb	a5,s7,+0000000A
	c.j	0000000023009AB4

l23009B28:
	c.li	a4,00000004
	c.li	s10,00000000
	c.j	0000000023009ACC

l23009B2E:
	addi	a3,zero,+00000030
	beq	s1,a3,0000000023009BAA

l23009B36:
	addi	a4,zero,+00000040
	bne	s1,a4,0000000023009AF0

l23009B3E:
	c.mv	a0,s10
	jal	ra,000000002300D910
	c.bnez	a0,0000000023009C0C

l23009B46:
	c.j	0000000023009AF0

l23009B48:
	addi	a3,zero,+000000B0
	beq	s1,a3,0000000023009B6E

l23009B50:
	bltu	a3,s1,0000000023009B72

l23009B54:
	addi	a3,zero,+00000080
	beq	s1,a3,0000000023009BBC

l23009B5C:
	addi	a3,zero,+000000A0
	bne	s1,a3,0000000023009AF0

l23009B64:
	addi	a3,zero,+000000FF
	c.li	s4,00000000
	beq	s2,a3,0000000023009C9A

l23009B6E:
	c.beqz	a4,0000000023009BAC

l23009B70:
	c.j	0000000023009B3E

l23009B72:
	addi	a3,zero,+000000C0
	beq	s1,a3,0000000023009B64

l23009B7A:
	addi	a5,zero,+000000D0
	bne	s1,a5,0000000023009AF0

l23009B82:
	addi	a5,zero,+000000FF
	add	a3,s0,s9
	beq	s2,a5,0000000023009AF0

l23009B8E:
	lbu	a5,a3,+00000000
	c.li	a4,00000007
	beq	a5,a4,0000000023009C2E

l23009B98:
	c.li	a4,00000008
	beq	a5,a4,0000000023009CBA

l23009B9E:
	c.li	a4,00000003
	bne	a5,a4,0000000023009AF0

l23009BA4:
	c.li	s4,00000008

l23009BA6:
	c.li	s6,00000000
	c.j	0000000023009C10

l23009BAA:
	c.bnez	a4,0000000023009AF0

l23009BAC:
	c.li	s6,00000000
	c.li	s4,00000006
	c.j	0000000023009C10

l23009BB2:
	beq	s10,zero,0000000023009AF0

l23009BB6:
	c.li	s6,00000001
	c.li	s4,00000004
	c.j	0000000023009C10

l23009BBC:
	c.li	a0,00000004
	jal	ra,000000002300EA02
	c.li	a4,00000001
	bne	a0,a4,0000000023009BF0

l23009BC8:
	c.li	s6,00000001
	c.li	s4,00000004

l23009BCC:
	addi	a4,zero,+000000FF
	beq	s2,a4,0000000023009BF8

l23009BD4:
	lbu	a5,s10,+00000058
	c.beqz	a5,0000000023009BE6

l23009BDA:
	lbu	a0,s7,+0000000A
	c.mv	a2,s0
	c.mv	a1,s3
	jal	ra,0000000023007C8C

l23009BE6:
	addi	a5,zero,+000000FF
	bne	s4,a5,0000000023009C10

l23009BEE:
	c.j	0000000023009AF0

l23009BF0:
	c.li	s6,00000000
	addi	s4,zero,+000000FF
	c.j	0000000023009BCC

l23009BF8:
	c.li	a0,00000004
	jal	ra,000000002300EA02
	c.li	a4,00000001
	beq	a0,a4,0000000023009BE6

l23009C04:
	c.mv	a0,s10
	jal	ra,000000002300D910
	c.beqz	a0,0000000023009BE6

l23009C0C:
	c.li	s6,00000001
	c.li	s4,00000007

l23009C10:
	addi	a3,s3,+0000001C
	c.slli	a3,10
	c.lui	a0,00003000
	c.srli	a3,00000010
	c.li	a2,0000000B
	c.mv	a1,s4
	addi	a0,a0,-00000400
	jal	ra,000000002300E768
	c.mv	s10,a0
	c.bnez	a0,0000000023009CF6

l23009C2A:
	c.li	s4,00000000
	c.j	0000000023009C9A

l23009C2E:
	lbu	a5,a3,+00000001
	c.beqz	a5,0000000023009C70

l23009C34:
	c.li	a4,00000001
	bne	a5,a4,0000000023009AF0

l23009C3A:
	addi	a4,zero,+000001B0
	add	a4,s2,a4
	lui	a5,00042019
	addi	a5,a5,-000000E0
	c.li	s4,00000000
	c.add	a5,a4
	lw	a5,a5,+000000EC
	c.andi	a5,00000002
	c.beqz	a5,0000000023009C9A

l23009C56:
	lbu	a5,a3,+00000002
	addi	a2,zero,+000000FF
	c.andi	a5,00000001
	c.beqz	a5,0000000023009C64

l23009C62:
	c.li	a2,00000000

l23009C64:
	addi	a1,zero,+000000FF

l23009C68:
	c.mv	a0,s2
	jal	ra,0000000023007EAE
	c.j	0000000023009C9A

l23009C70:
	addi	a4,zero,+000001B0
	add	a4,s2,a4
	lui	a5,00042019
	addi	a5,a5,-000000E0
	c.li	s4,00000000
	c.add	a5,a4
	lw	a5,a5,+000000EC
	c.andi	a5,00000002
	c.beqz	a5,0000000023009C9A

l23009C8C:
	lbu	a1,a3,+00000002
	c.li	a5,00000001
	addi	a2,zero,+000000FF
	bgeu	a5,a1,0000000023009C68

l23009C9A:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.mv	a0,s4
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

l23009CBA:
	sub	a5,s3,s9
	c.li	a4,00000003
	c.li	s4,00000000
	bge	a4,a5,0000000023009C9A

l23009CC6:
	lbu	a4,s7,+0000000A
	addi	a5,zero,+000000FF
	beq	a4,a5,0000000023009AF0

l23009CD2:
	addi	a2,zero,+000005D8
	add	a4,a4,a2
	lui	a5,0004201A
	addi	a5,a5,+00000410
	c.add	a5,a4
	lbu	a5,a5,+00000056
	lbu	a4,a3,+00000001
	c.or	a5,a4
	bne	a5,zero,0000000023009AF0

l23009CF2:
	c.li	s4,00000006
	c.j	0000000023009BA6

l23009CF6:
	c.li	a1,00000000
	c.addi4spn	a0,00000018
	jal	ra,000000002301412E
	bne	s6,zero,0000000023009D2C

l23009D02:
	andi	a5,s9,+00000001
	c.beqz	a5,0000000023009D20

l23009D08:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+0000064D
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000098
	jal	ra,0000000023013280

l23009D20:
	sub	s3,s3,s9
	c.slli	s3,10
	srli	s3,s3,00000010
	c.add	s0,s9

l23009D2C:
	sh	s3,s10,+00000000
	c.addi	s3,00000003
	andi	s3,s3,-00000004
	c.li	a5,00000000

l23009D38:
	bne	s3,a5,0000000023009D96

l23009D3C:
	lbu	a5,s7,+0000000A
	sh	s8,s10,+00000002
	sb	s2,s10,+00000007
	sb	a5,s10,+00000008
	c.lwsp	s8,000000E4
	sb	s11,s10,+0000001A
	sb	s11,s10,+00000019
	srli	a4,a5,00000010
	sh	a4,s10,+00000004
	sb	a5,s10,+00000006
	lb	a5,s5,+00000033
	sb	a5,s10,+00000018
	c.li	a5,00000007
	bne	s4,a5,0000000023009D8E

l23009D70:
	c.bnez	s1,0000000023009D8E

l23009D72:
	lw	a5,s5,+00000020
	sw	a5,s10,+00000010
	lw	a5,s5,+00000024
	sw	a5,s10,+00000014
	lw	a5,s5,+00000028
	c.srli	a5,0000000C
	c.andi	a5,0000000F
	sb	a5,s10,+0000001B

l23009D8E:
	c.mv	a0,s10
	jal	ra,000000002300E7D4
	c.j	0000000023009C2A

l23009D96:
	add	a4,s0,a5
	c.lw	a4,0(a3)
	add	a4,s10,a5
	c.addi	a5,00000004
	c.sw	a4,28(a3)
	c.j	0000000023009D38

;; rxu_cntrl_init: 23009DA6
;;   Called from:
;;     230041F2 (in rxl_init)
rxu_cntrl_init proc
	lui	a0,0004201C
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000005F8
	c.swsp	ra,00000084
	jal	ra,000000002300E278
	lui	a0,0004201C
	addi	a0,a0,-00000600
	jal	ra,000000002300E278
	lui	a0,0004201C
	addi	a0,a0,-000005EC
	jal	ra,000000002300E278
	lui	a0,0004201C
	addi	a0,a0,-000005E4
	jal	ra,000000002300E278
	c.lwsp	a2,00000020
	lui	a5,0004201C
	c.li	a4,FFFFFFFF
	sh	a4,a5,+00000A2A
	c.addi	sp,00000010
	c.jr	ra

;; rxu_cntrl_frame_handle: 23009DEA
;;   Called from:
;;     230044A4 (in rxl_cntrl_evt)
rxu_cntrl_frame_handle proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	lw	s6,a0,+00000004
	lui	s0,0004201C
	addi	s0,s0,-00000638
	lw	s5,s6,+00000040
	slli	a5,s5,00000012
	blt	a5,zero,0000000023009E20

l23009E1C:
	c.li	s3,00000000
	c.j	000000002300A056

l23009E20:
	lw	a5,s6,+00000008
	c.mv	s2,a0
	c.lw	a5,8(s1)
	c.li	a5,FFFFFFFF
	lhu	s8,s1,+00000000
	sw	zero,s6,+0000004C
	sb	a5,s0,+00000009
	sb	a5,s0,+0000000A
	lbu	a5,s1,+00000001
	lbu	a4,s1,+00000000
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s0,+00000000
	lbu	a5,s1,+00000017
	lbu	a4,s1,+00000016
	sb	zero,s0,+00000030
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s0,+00000002
	lbu	a5,s1,+00000017
	lbu	a4,s1,+00000016
	c.slli	a5,08
	c.or	a5,a4
	srli	a4,a5,00000004
	c.andi	a5,0000000F
	sh	a4,s0,+00000004
	sb	a5,s0,+00000006
	lbu	a5,s1,+00000001
	lbu	a4,s1,+00000000
	c.slli	a5,08
	c.or	a5,a4
	andi	a3,a5,+00000088
	addi	a4,zero,+00000088
	bne	a3,a4,000000002300A000

l23009E90:
	andi	a5,a5,+00000300
	addi	a4,zero,+00000300
	bne	a5,a4,0000000023009FFA

l23009E9C:
	lhu	a5,s1,+0000001E

l23009EA0:
	c.andi	a5,00000007
	sb	a5,s0,+00000007

l23009EA6:
	lbu	a5,s1,+00000001
	lbu	a0,s1,+00000000
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,00000000230096CA
	sb	a0,s0,+00000008
	lbu	a5,s1,+00000001
	c.andi	a5,00000001
	beq	a5,zero,000000002300A006

l23009EC4:
	lhu	a5,s1,+00000010
	sh	a5,s0,+00000024
	lhu	a5,s1,+00000012
	sh	a5,s0,+00000026
	lhu	a5,s1,+00000014

l23009ED8:
	sh	a5,s0,+00000028
	lbu	a5,s1,+00000001
	lbu	a4,s1,+00000000
	c.slli	a5,08
	c.or	a5,a4
	andi	a4,a5,+00000200
	beq	a4,zero,000000002300A032

l23009EF0:
	andi	a5,a5,+00000100
	beq	a5,zero,000000002300A01C

l23009EF8:
	lhu	a5,s1,+00000018
	sh	a5,s0,+0000002A
	lhu	a5,s1,+0000001A
	sh	a5,s0,+0000002C
	lhu	a5,s1,+0000001C

l23009F0C:
	sh	a5,s0,+0000002E
	slli	a5,s5,00000006
	blt	a5,zero,000000002300A104

l23009F18:
	lbu	a5,s0,+0000006F
	c.beqz	a5,0000000023009F8A

l23009F1E:
	andi	a5,s5,+00000200
	c.bnez	a5,0000000023009F8A

l23009F24:
	lbu	a4,s0,+00000068
	lbu	a5,s1,+0000000A
	bne	a4,a5,0000000023009F8A

l23009F30:
	lbu	a4,s0,+00000069
	lbu	a5,s1,+0000000B
	bne	a4,a5,0000000023009F8A

l23009F3C:
	lbu	a4,s0,+0000006A
	lbu	a5,s1,+0000000C
	bne	a4,a5,0000000023009F8A

l23009F48:
	lbu	a4,s0,+0000006B
	lbu	a5,s1,+0000000D
	bne	a4,a5,0000000023009F8A

l23009F54:
	lbu	a4,s0,+0000006C
	lbu	a5,s1,+0000000E
	bne	a4,a5,0000000023009F8A

l23009F60:
	lbu	a4,s0,+0000006D
	lbu	a5,s1,+0000000F
	bne	a4,a5,0000000023009F8A

l23009F6C:
	lbu	a5,s1,+00000001
	lbu	a4,s1,+00000000
	c.slli	a5,08
	c.or	a5,a4
	c.lui	a4,00001000
	addi	a3,a4,+00000400
	c.and	a5,a3
	bne	a5,a4,000000002300A048

l23009F84:
	c.li	a5,00000001
	sb	a5,s0,+0000006E

l23009F8A:
	andi	s8,s8,+0000000C
	beq	s8,zero,000000002300A080

l23009F92:
	c.li	a5,00000008
	bne	s8,a5,000000002300A04E

l23009F98:
	jal	ra,0000000023007474
	c.beqz	a0,000000002300A04E

l23009F9E:
	lbu	a3,s1,+00000004
	lbu	a4,a0,+00000050
	bne	a3,a4,000000002300A04E

l23009FAA:
	lbu	a3,s1,+00000005
	lbu	a4,a0,+00000051
	bne	a3,a4,000000002300A04E

l23009FB6:
	lbu	a3,s1,+00000006
	lbu	a4,a0,+00000052
	bne	a3,a4,000000002300A04E

l23009FC2:
	lbu	a3,s1,+00000007
	lbu	a4,a0,+00000053
	bne	a3,a4,000000002300A04E

l23009FCE:
	lbu	a3,s1,+00000008
	lbu	a4,a0,+00000054
	bne	a3,a4,000000002300A04E

l23009FDA:
	lbu	a4,s1,+00000009
	lbu	a5,a0,+00000055
	bne	a4,a5,000000002300A04E

l23009FE6:
	c.li	a5,00000001
	c.li	a4,00000000
	c.li	a3,00000000
	addi	a2,s1,+0000000A
	addi	a1,zero,+000000C0
	jal	ra,000000002300D7AC
	c.j	0000000023009E1C

l23009FFA:
	lhu	a5,s1,+00000018
	c.j	0000000023009EA0

l2300A000:
	sb	zero,s0,+00000007
	c.j	0000000023009EA6

l2300A006:
	lhu	a5,s1,+00000004
	sh	a5,s0,+00000024
	lhu	a5,s1,+00000006
	sh	a5,s0,+00000026
	lhu	a5,s1,+00000008
	c.j	0000000023009ED8

l2300A01C:
	lhu	a5,s1,+00000010
	sh	a5,s0,+0000002A
	lhu	a5,s1,+00000012
	sh	a5,s0,+0000002C
	lhu	a5,s1,+00000014
	c.j	0000000023009F0C

l2300A032:
	lhu	a5,s1,+0000000A
	sh	a5,s0,+0000002A
	lhu	a5,s1,+0000000C
	sh	a5,s0,+0000002C
	lhu	a5,s1,+0000000E
	c.j	0000000023009F0C

l2300A048:
	sb	zero,s0,+0000006E
	c.j	0000000023009F8A

l2300A04E:
	c.mv	a0,s2
	jal	ra,0000000023009828
	c.li	s3,00000001

l2300A056:
	c.lw	s0,64(a5)
	c.beqz	a5,000000002300A062

l2300A05A:
	lui	a0,00020000
	jal	ra,000000002300E49C

l2300A062:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.mv	a0,s3
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
	c.addi16sp	00000050
	c.jr	ra

l2300A080:
	lbu	a5,s1,+00000001
	addi	s3,s1,+0000000A
	c.srli	a5,00000003
	c.andi	a5,00000001
	c.bnez	a5,000000002300A0C4

l2300A08E:
	lbu	a5,s1,+00000017
	lbu	a4,s1,+00000016
	c.li	a2,00000006
	c.slli	a5,08
	c.or	a5,a4
	c.mv	a1,s3
	addi	a0,s0,+0000005C
	sh	a5,s0,+00000062
	jal	ra,0000000023070C7C
	lhu	a5,s0,+00000000
	slli	a4,a5,00000011
	blt	a4,zero,000000002300A0EE

l2300A0B6:
	addi	a1,zero,+000000FF

l2300A0BA:
	c.mv	a0,s2
	jal	ra,0000000023009956
	c.mv	s3,a0
	c.j	000000002300A056

l2300A0C4:
	lbu	a5,s1,+00000017
	lbu	a3,s1,+00000016
	lhu	a4,s0,+00000062
	c.slli	a5,08
	c.or	a5,a3
	bne	a4,a5,000000002300A08E

l2300A0D8:
	lui	a1,0004201C
	c.li	a2,00000006
	addi	a1,a1,-000005DC
	c.mv	a0,s3
	jal	ra,0000000023070BF4
	beq	a0,zero,0000000023009E1C

l2300A0EC:
	c.j	000000002300A08E

l2300A0EE:
	andi	a5,s5,+0000001C
	c.li	a4,00000014
	bne	a5,a4,0000000023009E1C

l2300A0F8:
	c.mv	a1,s5
	c.mv	a0,s1
	jal	ra,00000000230096FE
	c.bnez	a0,000000002300A0B6

l2300A102:
	c.j	0000000023009E1C

l2300A104:
	srli	s7,s5,0000000F
	c.addi	s7,FFFFFFF8
	andi	s7,s7,+000000FF
	addi	a4,zero,+000001B0
	add	a4,s7,a4
	lui	s4,00042019
	addi	a5,s4,-000000E0
	addi	s4,s4,-000000E0
	c.add	a5,a4
	lbu	s3,a5,+0000001D
	beq	s3,zero,0000000023009E1C

l2300A12C:
	lbu	a5,a5,+0000001A
	addi	a3,zero,+000005D8
	sw	s5,s0,+00000018
	sb	a5,s0,+0000000A
	add	a5,a5,a3
	lui	s5,0004201A
	addi	a4,s5,+00000410
	sb	s7,s0,+00000009
	addi	s5,s5,+00000410
	c.add	a5,a4
	lbu	a4,a5,+00000056
	c.li	a5,00000002
	bne	a4,a5,000000002300A174

l2300A15C:
	lbu	a5,s0,+00000024
	c.andi	a5,00000001
	c.bnez	a5,000000002300A174

l2300A164:
	lui	a0,0004201C
	addi	a0,a0,-00000614
	jal	ra,000000002301AD84
	sb	a0,s0,+0000000B

l2300A174:
	andi	a5,s8,+00000300
	addi	a4,zero,+00000300
	bne	a5,a4,000000002300A18C

l2300A180:
	lw	a5,s6,+0000004C
	ori	a5,a5,+00000004
	sw	a5,s6,+0000004C

l2300A18C:
	lhu	a5,s0,+00000000
	slli	a4,a5,00000011
	blt	a4,zero,000000002300A1B2

l2300A198:
	andi	s6,s8,+0000000C
	beq	s6,zero,000000002300A1BE

l2300A1A0:
	c.li	a5,00000008
	bne	s6,a5,0000000023009E1C

l2300A1A6:
	andi	a5,s8,+00000040
	c.beqz	a5,000000002300A212

l2300A1AC:
	jal	ra,00000000230028E4
	c.j	0000000023009E1C

l2300A1B2:
	c.lw	s0,24(a1)
	c.mv	a0,s1
	jal	ra,00000000230096FE
	c.bnez	a0,000000002300A198

l2300A1BC:
	c.j	0000000023009E1C

l2300A1BE:
	slli	a5,s8,00000014
	lhu	a4,s0,+00000002
	bge	a5,zero,000000002300A1DC

l2300A1CA:
	addi	a5,zero,+000001B0
	add	a5,s7,a5
	c.add	a5,s4
	lhu	a5,a5,+00000188
	beq	a5,a4,0000000023009E1C

l2300A1DC:
	addi	a1,zero,+000001B0
	add	s7,s7,a1
	lbu	a5,s0,+00000030
	c.andi	a5,00000002
	c.add	s4,s7
	sh	a4,s4,+00000188
	c.beqz	a5,000000002300A20C

l2300A1F2:
	c.lw	s0,32(a5)
	c.lw	s0,20(a4)
	c.lw	s0,16(a3)
	c.lw	a5,68(a2)
	bltu	a2,a4,000000002300A208

l2300A1FE:
	bne	a2,a4,0000000023009E1C

l2300A202:
	c.lw	a5,64(a2)
	bgeu	a2,a3,0000000023009E1C

l2300A208:
	c.sw	a5,64(a3)
	c.sw	a5,68(a4)

l2300A20C:
	lbu	a1,s0,+00000009
	c.j	000000002300A0BA

l2300A212:
	andi	a5,s8,+00000080
	beq	a5,zero,000000002300A33A

l2300A21A:
	addi	a4,zero,+000000D8
	add	a4,s7,a4
	lbu	a5,s0,+00000007
	addi	a5,a5,+000000C5
	c.add	a5,a4
	c.slli	a5,01

l2300A22E:
	slli	a4,s8,00000014
	c.add	a5,s4
	lhu	a3,s0,+00000002
	bge	a4,zero,000000002300A244

l2300A23C:
	lhu	a4,a5,+00000000
	beq	a4,a3,0000000023009E1C

l2300A244:
	sh	a3,a5,+00000000
	lbu	a5,s0,+00000030
	lbu	a4,s0,+0000000A
	c.andi	a5,00000002
	c.beqz	a5,000000002300A278

l2300A254:
	lbu	a5,s0,+00000007
	c.lw	s0,20(a3)
	c.lw	s0,16(a1)
	slli	a2,a5,00000003
	c.lw	s0,32(a5)
	c.add	a5,a2
	c.lw	a5,4(a2)
	bltu	a2,a3,000000002300A274

l2300A26A:
	bne	a2,a3,0000000023009E1C

l2300A26E:
	c.lw	a5,0(a2)
	bgeu	a2,a1,0000000023009E1C

l2300A274:
	c.sw	a5,0(a1)
	c.sw	a5,4(a3)

l2300A278:
	addi	a5,zero,+000005D8
	add	a5,a4,a5
	c.add	a5,s5
	lbu	a5,a5,+000003E8
	c.bnez	a5,000000002300A292

l2300A288:
	lui	a5,0004201C
	lw	a5,a5,-0000063C
	c.beqz	a5,000000002300A366

l2300A292:
	lw	a5,s2,+00000004
	lbu	s8,s0,+00000008
	lui	a1,0002308E
	c.lw	a5,8(a5)
	c.li	a2,00000006
	addi	a1,a1,-00000280
	c.lw	a5,8(s1)
	c.add	s8,s1
	c.mv	a0,s8
	jal	ra,0000000023070BF4
	c.bnez	a0,000000002300A366

l2300A2B2:
	lhu	a4,s8,+00000006
	c.lui	a5,00009000
	addi	a5,a5,-00000178
	bne	a4,a5,000000002300A366

l2300A2C0:
	addi	a1,zero,+000001B0
	add	a1,s7,a1
	addi	a5,zero,+000005D8
	c.add	s4,a1
	lbu	a4,s4,+0000001A
	add	a5,a4,a5
	c.add	s5,a5
	lbu	a5,s5,+00000056
	c.bnez	a5,000000002300A348

l2300A2DE:
	lui	a5,0004201C
	addi	a5,a5,-00000728
	c.lw	a5,8(a3)
	lbu	a3,a3,+00000005
	beq	a3,zero,0000000023009E1C

l2300A2F0:
	sb	s7,a5,+00000001
	sb	a4,a5,+00000002

l2300A2F8:
	lw	a3,s2,+00000004
	c.swsp	a5,00000004
	lbu	a4,s0,+00000008
	lhu	a3,a3,+0000001C
	c.li	a5,FFFFFFF8
	c.sub	a5,a4
	c.addi	a4,00000008
	c.add	a5,a3
	c.add	s1,a4
	c.swsp	s1,00000008
	sh	a5,sp,+0000000C
	lui	s1,00044B00
	lw	a5,s1,+00000120
	lui	a2,0004201C
	lui	a1,0004201C
	addi	a2,a2,-00000614
	addi	a1,a1,-0000060E
	c.addi4spn	a0,00000008
	jal	ra,000000002300FFC6
	lw	a5,s1,+00000120
	c.j	0000000023009E1C

l2300A33A:
	addi	a5,zero,+000001B0
	add	a5,s7,a5
	addi	a5,a5,+00000188
	c.j	000000002300A22E

l2300A348:
	lui	a5,0004201C
	lw	a4,a5,-0000063C
	sb	s7,a4,+00000001
	lw	a4,a5,-0000063C
	lbu	a3,s4,+0000001A
	sb	a3,a4,+00000002
	lw	a5,a5,-0000063C
	c.j	000000002300A2F8

l2300A366:
	lui	a5,00042019
	lw	a4,a5,-00000114
	c.li	a5,0000000D
	c.sub	a5,a4
	c.li	a4,00000005
	bgeu	a4,a5,0000000023009E1C

l2300A378:
	lhu	a5,s0,+00000000
	andi	a5,a5,+00000400
	bne	a5,zero,0000000023009E1C

l2300A384:
	lbu	a5,s0,+00000006
	bne	a5,zero,0000000023009E1C

l2300A38C:
	lbu	a5,s0,+00000030
	c.andi	a5,00000001
	beq	a5,zero,000000002300A4FA

l2300A396:
	c.lw	s0,32(a1)
	lbu	a4,s0,+00000007
	lui	a3,0004201C
	lui	a2,0004201C
	addi	a3,a3,-0000060E
	addi	a2,a2,-00000614
	addi	a1,a1,+00000058
	c.addi4spn	a0,00000008
	jal	ra,0000000023007564
	lw	a5,s2,+00000004
	lbu	s1,s0,+00000008
	c.li	s5,FFFFFFF8
	lw	s7,a5,+00000008
	lhu	a5,a5,+0000001C
	sub	s5,s5,s1
	addi	s9,zero,+00000350
	c.add	s5,a5
	c.slli	s5,10
	srli	s5,s5,00000010
	addi	s10,zero,+00000350

l2300A3DC:
	lw	a1,s7,+00000008
	add	a5,s5,s1
	c.mv	s8,s5
	c.add	a1,s1
	bge	s9,a5,000000002300A3F6

l2300A3EC:
	sub	s8,s10,s1
	c.slli	s8,10
	srli	s8,s8,00000010

l2300A3F6:
	sub	s5,s5,s8
	c.slli	s5,10
	srli	s5,s5,00000010
	c.mv	a2,s8
	c.addi4spn	a0,00000008
	jal	ra,0000000023007616
	beq	s5,zero,000000002300A430

l2300A40C:
	lw	s7,s7,+00000004
	c.li	s1,00000000
	bne	s7,zero,000000002300A3DC

l2300A416:
	addi	a2,zero,+00000369

l2300A41A:
	lui	a1,00023074
	lui	a0,00023074
	addi	a1,a1,+000002DC
	addi	a0,a0,+000007E0
	jal	ra,000000002301323E
	c.j	0000000023009E1C

l2300A430:
	c.add	s1,s8
	c.slli	s1,10
	c.mv	a3,sp
	c.srli	s1,00000010
	addi	a0,zero,+00000350
	addi	a6,zero,+00000350

l2300A440:
	lw	a4,s7,+00000008
	add	a5,s6,s1
	c.mv	a1,s6
	c.add	a4,s1
	bge	a0,a5,000000002300A45A

l2300A450:
	sub	s1,a6,s1
	slli	a1,s1,00000010
	c.srli	a1,00000010

l2300A45A:
	c.li	a5,00000000

l2300A45C:
	add	a2,a5,a3
	bne	a5,a1,000000002300A484

l2300A464:
	sub	s6,s6,a5
	c.slli	s6,10
	srli	s6,s6,00000010
	c.mv	a3,a2
	beq	s6,zero,000000002300A494

l2300A474:
	lw	s7,s7,+00000004
	c.li	s1,00000000
	bne	s7,zero,000000002300A440

l2300A47E:
	addi	a2,zero,+00000392
	c.j	000000002300A41A

l2300A484:
	add	a7,a5,a4
	lbu	a7,a7,+00000000
	c.addi	a5,00000001
	sb	a7,a2,+00000000
	c.j	000000002300A45C

l2300A494:
	c.addi4spn	a0,00000008
	jal	ra,000000002300775A
	c.lwsp	zero,000000C4
	c.lwsp	s0,000000E4
	bne	a4,a5,000000002300A4AA

l2300A4A2:
	c.lwsp	tp,000000C4
	c.lwsp	a2,000000E4
	beq	a4,a5,000000002300A4FA

l2300A4AA:
	c.lui	a0,00001000
	c.li	a3,00000018
	c.li	a2,00000005
	c.li	a1,0000000D
	addi	a0,a0,+00000406
	jal	ra,000000002300E768
	lbu	a1,s0,+00000009
	addi	a4,zero,+000001B0
	c.li	a2,00000006
	add	a1,a1,a4
	c.add	a1,s4
	c.addi	a1,0000001E
	jal	ra,0000000023070C7C
	c.lw	s0,16(a2)
	c.lw	s0,20(a3)
	c.sw	a0,8(a2)
	c.sw	a0,12(a3)
	c.lw	s0,24(a4)
	c.srli	a4,0000000A
	c.andi	a4,00000001
	sb	a4,a0,+00000010
	lbu	a4,s0,+0000000A
	sb	a4,a0,+00000012
	c.lw	s0,32(a4)
	lbu	a4,a4,+00000061
	sb	a4,a0,+00000011
	jal	ra,000000002300E7D4
	c.j	0000000023009E1C

l2300A4FA:
	lbu	a5,s0,+00000009
	lbu	a4,s0,+0000000A
	lw	a3,s2,+00000004
	c.slli	a5,10
	c.slli	a4,08
	c.or	a5,a4
	lbu	a4,s0,+0000000B
	lbu	s4,s0,+00000008
	c.slli	a4,18
	c.or	a5,a4
	c.lw	a3,76(a4)
	c.or	a5,a4
	c.sw	a3,76(a5)
	lw	a3,s2,+00000004
	c.lw	a3,8(a5)
	c.lw	a3,76(a4)
	c.lw	a5,8(s1)
	andi	a2,a4,-00000071
	c.sw	a3,76(a2)
	lbu	a5,s1,+00000001
	lbu	a4,s1,+00000000
	c.slli	a5,08
	c.or	a5,a4
	andi	a1,a5,+000000FC
	addi	a4,zero,+00000088
	bne	a1,a4,000000002300A56E

l2300A546:
	andi	a5,a5,+00000300
	addi	a4,zero,+00000300
	bne	a5,a4,000000002300A5DC

l2300A552:
	lbu	a4,s1,+0000001E
	lbu	a5,s1,+0000001F

l2300A55A:
	c.slli	a5,08
	c.or	a5,a4
	andi	a4,a5,+00000007
	c.slli	a4,04
	andi	a5,a5,+00000080
	c.or	a4,a2
	c.bnez	a5,000000002300A5E6

l2300A56C:
	c.sw	a3,76(a4)

l2300A56E:
	slli	s5,s4,00000010
	srli	s5,s5,00000010
	andi	a5,s5,+000000FE
	c.add	s1,a5
	lui	a1,0002308E
	c.li	a2,00000006
	addi	a1,a1,-00000280
	c.mv	a0,s1
	jal	ra,0000000023070BF4
	c.bnez	a0,000000002300A64E

l2300A58E:
	lhu	a4,s1,+00000006
	c.lui	a5,00008000
	addi	a5,a5,+00000137
	beq	a4,a5,000000002300A64E

l2300A59C:
	c.addi	s4,FFFFFFFA
	addi	a4,s1,-00000006
	andi	s4,s4,+000000FF
	sb	zero,s0,+00000031

l2300A5AA:
	lhu	a5,s0,+00000024
	sh	a5,a4,+00000000
	lhu	a5,s0,+00000026
	sh	a5,a4,+00000002
	lhu	a5,s0,+00000028
	sh	a5,a4,+00000004
	lhu	a5,s0,+0000002A
	sh	a5,a4,+00000006
	lhu	a5,s0,+0000002C
	sh	a5,a4,+00000008
	lhu	a5,s0,+0000002E
	sh	a5,a4,+0000000A
	c.j	000000002300A5EC

l2300A5DC:
	lbu	a4,s1,+00000018
	lbu	a5,s1,+00000019
	c.j	000000002300A55A

l2300A5E6:
	ori	a4,a4,+00000001
	c.sw	a3,76(a4)

l2300A5EC:
	lw	a4,s2,+00000004
	c.mv	a0,s2
	lhu	a5,a4,+0000001C
	sub	a5,a5,s4
	sh	a5,a4,+0000001C
	lw	a5,s2,+00000004
	sb	s4,s0,+00000032
	sw	s4,a5,+00000054
	lui	a5,0004201C
	sw	s4,a5,+00000A40
	jal	ra,0000000023004158
	csrrci	zero,mstatus,00000008
	c.lw	s0,72(a4)
	lw	a5,s2,+00000004
	c.li	a3,00000003
	sb	a3,s2,+0000001C
	sw	a4,s2,+00000014
	lhu	a5,a5,+0000001C
	sw	a5,s2,+00000018
	csrrci	zero,mstatus,00000008
	lui	a0,0004201C
	c.mv	a1,s2
	addi	a0,a0,-000005F8
	jal	ra,000000002300E282
	csrrsi	zero,mstatus,00000008
	csrrsi	zero,mstatus,00000008
	c.j	000000002300A056

l2300A64E:
	lui	a1,0002308E
	c.li	a2,00000006
	addi	a1,a1,-00000288
	c.mv	a0,s1
	jal	ra,0000000023070BF4
	c.beqz	a0,000000002300A59C

l2300A660:
	lw	a5,s2,+00000004
	c.addi	s4,FFFFFFF2
	andi	s4,s4,+000000FF
	lhu	a5,a5,+0000001C
	addi	a4,s1,-0000000E
	sub	a5,a5,s5
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,s1,+00000FFE
	c.srli	a5,00000008
	sb	a5,s1,+00000FFF
	c.li	a5,00000001
	sb	a5,s0,+00000031
	c.j	000000002300A5AA

;; rxu_cntrl_monitor_pm: 2300A68C
;;   Called from:
;;     23005AAE (in txl_payload_handle_backup)
rxu_cntrl_monitor_pm proc
	lui	a5,0004201C
	addi	a5,a5,-00000638
	lbu	a4,a5,+0000006F
	c.bnez	a4,000000002300A6BA

l2300A69A:
	lhu	a4,a0,+00000000
	sh	a4,a5,+00000068
	lhu	a4,a0,+00000002
	sh	a4,a5,+0000006A
	lhu	a4,a0,+00000004
	sh	a4,a5,+0000006C
	addi	a4,zero,+00000100
	sh	a4,a5,+0000006E

l2300A6BA:
	c.jr	ra

;; rxu_cntrl_get_pm: 2300A6BC
;;   Called from:
;;     2300CE9A (in txu_cntrl_cfm)
;;     2301E3AC (in me_sta_add_req_handler)
rxu_cntrl_get_pm proc
	lui	a5,0004201C
	addi	a5,a5,-00000638
	lbu	a0,a5,+0000006E
	sh	zero,a5,+0000006E
	c.jr	ra

;; rxu_cntrl_evt: 2300A6CE
rxu_cntrl_evt proc
	c.addi	sp,FFFFFFF0
	lui	a0,00000080
	c.swsp	ra,00000084
	jal	ra,000000002300E4B4
	lui	a5,0004201C
	lw	a5,a5,-000005F8
	c.beqz	a5,000000002300A6F0

l2300A6E4:
	c.lwsp	a2,00000020
	lui	a0,00020000
	c.addi	sp,00000010
	jal	zero,000000002300E49C

l2300A6F0:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; rxu_swdesc_upload_evt: 2300A6F6
rxu_swdesc_upload_evt proc
	c.addi16sp	FFFFFFB0
	lui	a0,00020000
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s1,000000A0
	lui	s2,0004201C
	jal	ra,000000002300E4B4
	addi	a0,s2,-000005F8
	jal	ra,000000002300E2FE
	lui	s3,00042019
	c.mv	s0,a0
	addi	s5,sp,+00000018
	c.li	s4,00000001
	addi	s6,zero,+0000034F
	addi	s3,s3,-00000128

l2300A730:
	c.bnez	s0,000000002300A746

l2300A732:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.lwsp	a6,000001D8
	c.addi16sp	00000050
	c.jr	ra

l2300A746:
	c.lw	s0,4(a5)
	addi	a2,zero,+00000028
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	lhu	s1,a5,+0000001C
	jal	ra,0000000023070EB8
	c.lw	s0,4(a5)
	c.addi4spn	a4,00000008
	c.mv	a2,a4
	c.lw	a5,8(a5)

l2300A760:
	c.bnez	s1,000000002300A792

l2300A762:
	c.lw	s0,4(a5)
	sb	s4,s0,+0000001E
	c.addi4spn	a4,00000008
	sw	s4,a5,+00000060
	c.lw	s0,4(a2)
	lbu	a1,s0,+0000001C
	c.mv	a0,s0
	c.lw	a2,84(a3)
	c.addi	a2,0000001C
	jal	ra,00000000230246AA
	c.beqz	a0,000000002300A7CC

l2300A780:
	c.mv	a0,s0
	jal	ra,0000000023004320

l2300A786:
	addi	a0,s2,-000005F8
	jal	ra,000000002300E2FE
	c.mv	s0,a0
	c.j	000000002300A730

l2300A792:
	beq	a4,s5,000000002300A762

l2300A796:
	lbu	a3,s0,+0000001D
	c.addi	a3,00000001
	sb	a3,s0,+0000001D
	c.lw	a5,8(a1)
	c.sw	a4,0(a1)
	c.lw	a5,12(a3)
	c.addi	a3,00000001
	c.sub	a3,a1
	sh	a3,a2,+00000020
	addi	a3,a5,+0000001C
	c.sw	a4,16(a3)
	sw	s4,a5,+00000014
	bgeu	s6,s1,000000002300A7C8

l2300A7BC:
	addi	s1,s1,-00000350

l2300A7C0:
	c.lw	a5,4(a5)
	c.addi	a4,00000004
	c.addi	a2,00000002
	c.j	000000002300A760

l2300A7C8:
	c.li	s1,00000000
	c.j	000000002300A7C0

l2300A7CC:
	jal	ra,000000002303100A
	lw	a5,s3,+00000014
	lbu	a4,s0,+0000001D
	c.add	a5,a4
	sw	a5,s3,+00000014
	jal	ra,000000002303101E
	c.j	000000002300A786

;; scanu_confirm: 2300A7E4
;;   Called from:
;;     2300B4E8 (in scanu_scan_next)
;;     2301E752 (in scan_start_cfm_handler)
scanu_confirm proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004201C
	c.swsp	s3,00000084
	addi	a5,s0,-000005BC
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	lhu	a1,a5,+00000168
	lbu	a5,a5,+0000016A
	c.mv	s3,a0
	addi	s0,s0,-000005BC
	c.li	a3,00000001
	c.li	a2,00000004
	c.beqz	a5,000000002300A85E

l2300A80C:
	c.lui	s1,00001000
	addi	a0,s1,+00000003
	jal	ra,000000002300E768
	c.mv	s2,a0
	c.li	a3,00000001
	addi	a0,s1,+00000003
	c.li	a2,00000004
	c.li	a1,0000000D
	jal	ra,000000002300E768
	c.mv	s1,a0

l2300A828:
	sb	s3,s2,+00000000
	c.lw	s0,0(a0)
	c.addi	a0,FFFFFFF4
	jal	ra,000000002300E860
	c.mv	a0,s2
	sw	zero,s0,+00000000
	jal	ra,000000002300E7D4
	c.beqz	s1,000000002300A84A

l2300A840:
	sb	s3,s1,+00000000
	c.mv	a0,s1
	jal	ra,000000002300E7D4

l2300A84A:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a1,00000000
	c.li	a0,00000004
	c.addi16sp	00000020
	jal	zero,000000002300E902

l2300A85E:
	c.lui	a0,00001000
	c.addi	a0,00000001
	jal	ra,000000002300E768
	c.mv	s2,a0
	c.li	s1,00000000
	c.j	000000002300A828

;; scanu_raw_send_cfm: 2300A86C
;;   Called from:
;;     2301E612 (in scanu_raw_send_req_handler)
scanu_raw_send_cfm proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.lui	a0,00001000
	c.li	a3,00000004
	c.li	a2,00000004
	c.addi	a0,00000006
	c.swsp	ra,00000084
	jal	ra,000000002300E768
	c.sw	a0,0(s0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300E7D4

;; scanu_init: 2300A88C
;;   Called from:
;;     230074B6 (in me_init)
scanu_init proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000000
	c.li	a0,00000004
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002300E902
	lui	s0,0004201C
	addi	a0,s0,-000005BC
	addi	a2,zero,+00000194
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	lui	a4,0002300B
	addi	a5,s0,-000005BC
	addi	a4,a4,+000004EC
	c.sw	a5,12(a4)
	lui	a4,00042048
	addi	a4,a4,-00000234
	sw	zero,a5,+00000010
	c.sw	a5,8(a4)
	lui	a5,00042048
	addi	a5,a5,-00000224
	c.sw	a4,4(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; scanu_find_result: 2300A8DA
;;   Called from:
;;     2300A9DC (in scanu_frame_handler)
;;     2300B134 (in scanu_search_by_bssid)
scanu_find_result proc
	lui	a5,0004201C
	lui	a3,0004201C
	c.mv	a4,a0
	addi	a5,a5,-000005A4
	addi	a3,a3,-00000454

l2300A8EC:
	lbu	a2,a5,+00000034
	c.mv	a0,a5
	c.beqz	a2,000000002300A93E

l2300A8F4:
	lbu	a6,a5,+00000000
	lbu	a2,a4,+00000000
	bne	a6,a2,000000002300A940

l2300A900:
	lbu	a6,a5,+00000001
	lbu	a2,a4,+00000001
	bne	a6,a2,000000002300A940

l2300A90C:
	lbu	a6,a5,+00000002
	lbu	a2,a4,+00000002
	bne	a6,a2,000000002300A940

l2300A918:
	lbu	a6,a5,+00000003
	lbu	a2,a4,+00000003
	bne	a6,a2,000000002300A940

l2300A924:
	lbu	a6,a5,+00000004
	lbu	a2,a4,+00000004
	bne	a6,a2,000000002300A940

l2300A930:
	lbu	a6,a5,+00000005
	lbu	a2,a4,+00000005
	bne	a6,a2,000000002300A940

l2300A93C:
	c.jr	ra

l2300A93E:
	c.bnez	a1,000000002300A94A

l2300A940:
	addi	a5,a5,+00000038
	bne	a5,a3,000000002300A8EC

l2300A948:
	c.li	a0,00000000

l2300A94A:
	c.jr	ra

;; scanu_frame_handler: 2300A94C
;;   Called from:
;;     2301E722 (in rxu_mgt_ind_handler)
scanu_frame_handler proc
	c.addi16sp	FFFFFF70
	c.swsp	s0,00000044
	c.swsp	s4,0000003C
	c.swsp	s6,00000038
	c.swsp	ra,000000C4
	c.swsp	s1,000000C0
	c.swsp	s2,00000040
	c.swsp	s3,000000BC
	c.swsp	s5,000000B8
	c.swsp	s7,000000B4
	c.swsp	s8,00000034
	c.swsp	s9,000000B0
	c.swsp	s10,00000030
	c.swsp	s11,000000AC
	lhu	a1,a0,+00000000
	lui	s4,0004201C
	lw	a5,s4,-000005BC
	addi	a1,a1,-00000024
	addi	s6,a0,+00000040
	c.slli	a1,10
	c.mv	s0,a0
	c.li	a2,00000000
	c.srli	a1,00000010
	c.mv	a0,s6
	c.swsp	a5,00000080
	lbu	s5,a5,+0000014E
	jal	ra,000000002300EEE8
	addi	s4,s4,-000005BC
	c.beqz	a0,000000002300A9CA

l2300A996:
	lbu	a5,a0,+00000001
	addi	a4,zero,+00000020
	bltu	a4,a5,000000002300AAE2

l2300A9A2:
	c.beqz	a5,000000002300A9CA

l2300A9A4:
	lbu	a4,a0,+00000002
	addi	a3,a0,+00000002
	c.beqz	a4,000000002300A9CA

l2300A9AE:
	sb	a5,sp,+0000002C
	c.addi4spn	a4,0000002C
	c.li	a2,FFFFFFFF

l2300A9B6:
	c.addi	a5,FFFFFFFF
	c.addi	a4,00000001
	bne	a5,a2,000000002300AAE8

l2300A9BE:
	lbu	a5,sp,+0000002C
	c.addi4spn	a4,00000050
	c.add	a5,a4
	sb	zero,a5,+00000FDD

l2300A9CA:
	c.li	a0,00000004
	jal	ra,000000002300EA02
	c.li	a5,00000001
	bne	a0,a5,000000002300B100

l2300A9D6:
	c.li	a1,00000001
	addi	a0,s0,+0000002C
	jal	ra,000000002300A8DA
	c.mv	s8,a0
	beq	a0,zero,000000002300B100

l2300A9E6:
	lbu	a5,s4,+0000016C
	andi	a4,a5,+00000001
	c.bnez	a4,000000002300AA34

l2300A9F0:
	lbu	a4,s0,+0000002C
	bne	a4,a5,000000002300B100

l2300A9F8:
	lbu	a4,s0,+0000002D
	lbu	a5,s4,+0000016D
	bne	a4,a5,000000002300B100

l2300AA04:
	lbu	a4,s0,+0000002E
	lbu	a5,s4,+0000016E
	bne	a4,a5,000000002300B100

l2300AA10:
	lbu	a4,s0,+0000002F
	lbu	a5,s4,+0000016F
	bne	a4,a5,000000002300B100

l2300AA1C:
	lbu	a4,s0,+00000030
	lbu	a5,s4,+00000170
	bne	a4,a5,000000002300B100

l2300AA28:
	lbu	a4,s0,+00000031
	lbu	a5,s4,+00000171
	bne	a4,a5,000000002300B100

l2300AA34:
	lhu	a5,s0,+0000002C
	sh	a5,s8,+00000000
	lhu	a5,s0,+0000002E
	sh	a5,s8,+00000002
	lhu	a5,s0,+00000030
	sh	a5,s8,+00000004
	lbu	a5,s0,+0000003D
	lbu	a4,s0,+0000003C
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s8,+00000030
	lbu	a5,s0,+0000003F
	lbu	a4,s0,+0000003E
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s8,+00000032
	c.andi	a5,00000001
	c.bnez	a5,000000002300AA72

l2300AA70:
	c.li	a5,00000002

l2300AA72:
	sh	a5,s8,+00000028
	lhu	s2,s0,+00000000
	c.li	a2,00000000
	c.mv	a0,s6
	addi	s2,s2,-00000024
	c.slli	s2,10
	srli	s2,s2,00000010
	c.mv	a1,s2
	jal	ra,000000002300EEE8
	c.beqz	a0,000000002300AB20

l2300AA90:
	lbu	a5,a0,+00000001
	addi	a4,zero,+00000020
	bltu	a4,a5,000000002300AAF4

l2300AA9C:
	c.bnez	a5,000000002300AAF8

l2300AA9E:
	lb	a5,s0,+0000001A
	sb	a5,s8,+00000036
	lb	a5,s0,+00000019
	sb	a5,s8,+00000037
	c.lwsp	tp,000000E4
	lbu	a5,a5,+00000150
	c.beqz	a5,000000002300AB3C

l2300AAB6:
	c.lwsp	tp,000000E4
	c.li	s1,00000000
	addi	s7,s8,+00000007
	addi	s3,a5,+000000FC

l2300AAC2:
	c.lwsp	tp,000000E4
	lbu	a5,a5,+00000150
	bge	s1,a5,000000002300AB32

l2300AACC:
	lbu	a5,s3,+00000000
	c.beqz	a5,000000002300AB3C

l2300AAD2:
	lbu	a2,s8,+00000006
	beq	a2,a5,000000002300AB26

l2300AADA:
	c.addi	s1,00000001
	addi	s3,s3,+00000022
	c.j	000000002300AAC2

l2300AAE2:
	addi	a5,zero,+00000020
	c.j	000000002300A9A4

l2300AAE8:
	lbu	a1,a3,+00000000
	c.addi	a3,00000001
	sb	a1,a4,+00000000
	c.j	000000002300A9B6

l2300AAF4:
	addi	a5,zero,+00000020

l2300AAF8:
	lbu	a3,a0,+00000002
	addi	a4,a0,+00000002
	c.beqz	a3,000000002300AA9E

l2300AB02:
	sb	a5,s8,+00000006
	addi	a3,s8,+00000007
	c.li	a2,FFFFFFFF

l2300AB0C:
	c.addi	a5,FFFFFFFF
	beq	a5,a2,000000002300AA9E

l2300AB12:
	lbu	a1,a4,+00000000
	c.addi	a3,00000001
	c.addi	a4,00000001
	sb	a1,a3,+00000FFF
	c.j	000000002300AB0C

l2300AB20:
	sb	zero,s8,+00000006
	c.j	000000002300AA9E

l2300AB26:
	c.mv	a1,s7
	addi	a0,s3,+00000001
	jal	ra,0000000023070BF4
	c.bnez	a0,000000002300AADA

l2300AB32:
	c.lwsp	tp,000000E4
	lbu	a5,a5,+00000150
	beq	a5,s1,000000002300B100

l2300AB3C:
	c.li	a2,00000003
	c.mv	a1,s2
	c.mv	a0,s6
	jal	ra,000000002300EEE8
	beq	a0,zero,000000002300AFF0

l2300AB4A:
	lbu	a1,a0,+00000002
	lbu	a0,s0,+00000006
	bne	a0,zero,000000002300AFC0

l2300AB56:
	addi	a5,a1,-00000001
	c.li	a4,0000000D
	bltu	a4,a5,000000002300AFEA

l2300AB60:
	c.li	a5,0000000E
	beq	a1,a5,000000002300AFE2

l2300AB66:
	c.li	a5,00000005
	add	a1,a1,a5
	c.lui	a5,00001000
	addi	a5,a5,-00000699
	c.add	a1,a5
	c.slli	a1,10
	c.srli	a1,00000010

l2300AB78:
	jal	ra,00000000230074CA
	sw	a0,s8,+0000002C
	lb	a5,s0,+00000018
	lb	a4,s8,+00000035
	bge	a4,a5,000000002300AB90

l2300AB8C:
	sb	a5,s8,+00000035

l2300AB90:
	lbu	a5,s4,+0000016A
	beq	a5,zero,000000002300B0E2

l2300AB98:
	addi	s3,zero,+000005D8
	add	s3,s5,s3
	lui	s1,0004201A
	addi	s11,s1,+00000410
	addi	a2,zero,+00000022
	addi	a1,s8,+00000006
	addi	s1,s1,+00000410
	addi	s9,s3,+00000358
	add	a5,s9,s11
	c.swsp	a5,00000004
	lhu	a5,s8,+00000028
	add	s7,s11,s3
	addi	a0,s7,+0000037E
	sh	a5,s7,+000003A0
	lw	a5,s8,+00000000
	addi	s10,s3,+000003B0
	c.add	s10,s11
	sw	a5,s7,+00000378
	lhu	a5,s8,+00000004
	sh	a5,s7,+0000037C
	lhu	a5,s8,+00000032
	sh	a5,s7,+000003AE
	lhu	a5,s8,+00000030
	sh	a5,s7,+000003AC
	jal	ra,0000000023070C7C
	lw	a5,s8,+0000002C
	sw	zero,s7,+000003E0
	c.mv	a2,s10
	sw	a5,s7,+000003A4
	lb	a5,s8,+00000036
	c.mv	a1,s2
	c.mv	a0,s6
	sb	a5,s7,+000003D5
	lb	a5,s8,+00000037
	sb	a5,s7,+000003D6
	jal	ra,000000002301D2F2
	lw	a5,s8,+0000002C
	lbu	a5,a5,+00000002
	c.bnez	a5,000000002300AC44

l2300AC28:
	c.li	a1,00000001
	c.mv	a0,s10
	jal	ra,0000000023007922
	c.andi	a0,0000000F
	beq	a0,zero,000000002300B012

l2300AC36:
	jal	ra,000000002306C8C0
	c.li	a5,0000001F
	sub	a0,a5,a0
	sb	a0,s7,+000003D7

l2300AC44:
	lui	a2,00023075
	c.li	a3,00000005
	addi	a2,a2,+000000D0
	c.mv	a1,s2
	c.mv	a0,s6
	jal	ra,000000002300EF04
	beq	a0,zero,000000002300B01A

l2300AC5A:
	addi	a5,zero,+000005D8
	add	a5,s5,a5
	lbu	a4,a0,+00000008
	c.add	a5,s1
	sb	a4,a5,+000003C0
	lhu	a4,a5,+000003AE
	ori	a4,a4,+00000200
	sh	a4,a5,+000003AE
	lbu	a4,a0,+0000000B
	lbu	a3,a0,+0000000A
	c.slli	a4,08
	c.or	a4,a3
	lbu	a3,a0,+0000000C
	c.slli	a3,10
	c.or	a4,a3
	lbu	a3,a0,+0000000D
	c.slli	a3,18
	c.or	a3,a4
	srli	a2,a3,00000008
	srli	a4,a3,00000003
	c.slli	a2,04
	c.andi	a3,0000000F
	andi	a1,a4,+00000002
	c.or	a3,a2
	sb	a1,a5,+000003C1
	sw	a3,a5,+000003C8
	lbu	a2,a0,+0000000F
	lbu	a3,a0,+0000000E
	c.slli	a2,08
	c.or	a2,a3
	lbu	a3,a0,+00000010
	c.slli	a3,10
	c.or	a2,a3
	lbu	a3,a0,+00000011
	c.slli	a3,18
	c.or	a3,a2
	srli	a4,a3,00000004
	srli	a2,a3,00000008
	c.slli	a2,04
	c.andi	a4,00000001
	c.andi	a3,0000000F
	c.or	a3,a2
	c.or	a4,a1
	sb	a4,a5,+000003C1
	sw	a3,a5,+000003C4
	lbu	a2,a0,+00000013
	lbu	a3,a0,+00000012
	c.slli	a2,08
	c.or	a2,a3
	lbu	a3,a0,+00000014
	c.slli	a3,10
	c.or	a2,a3
	lbu	a3,a0,+00000015
	c.slli	a3,18
	c.or	a3,a2
	srli	a2,a3,00000002
	c.andi	a2,00000004
	c.or	a4,a2
	srli	a2,a3,00000008
	c.slli	a2,04
	c.andi	a3,0000000F
	c.or	a3,a2
	sb	a4,a5,+000003C1
	sw	a3,a5,+000003CC
	lbu	a2,a0,+00000017
	lbu	a3,a0,+00000016
	c.slli	a2,08
	c.or	a2,a3
	lbu	a3,a0,+00000018
	c.slli	a3,10
	c.or	a2,a3
	lbu	a3,a0,+00000019
	c.slli	a3,18
	c.or	a3,a2
	srli	a2,a3,00000001
	c.andi	a2,00000008
	c.or	a4,a2
	sb	a4,a5,+000003C1
	srli	a4,a3,00000008
	c.slli	a4,04
	c.andi	a3,0000000F
	c.or	a3,a4
	lw	a4,a5,+000003E0
	sw	a3,a5,+000003D0
	ori	a4,a4,+00000001
	sw	a4,a5,+000003E0

l2300AD5C:
	lui	a5,0004201B
	lbu	a5,a5,+00000002
	c.li	s10,00000000
	c.beqz	a5,000000002300AE14

l2300AD68:
	addi	s7,zero,+000005D8
	add	s7,s5,s7
	c.add	s7,s1
	lw	s10,s7,+000003E0
	andi	s10,s10,+00000001
	beq	s10,zero,000000002300AE14

l2300AD7E:
	addi	a2,zero,+0000002D
	c.mv	a1,s2
	c.mv	a0,s6
	jal	ra,000000002300EEE8
	c.beqz	a0,000000002300AE06

l2300AD8C:
	lbu	a5,a0,+00000003
	lbu	a4,a0,+00000002
	addi	a1,s3,+0000035B
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s7,+00000358
	lbu	a5,a0,+00000004
	addi	a7,a0,+00000005
	c.li	a3,00000010
	sb	a5,s7,+0000035A
	c.li	a5,00000000

l2300ADB0:
	add	a4,a7,a5
	lbu	a2,a4,+00000000
	add	a4,a5,a1
	c.add	a4,s1
	sb	a2,a4,+00000000
	c.addi	a5,00000001
	bne	a5,a3,000000002300ADB0

l2300ADC8:
	lbu	a4,a0,+00000016
	lbu	a5,a0,+00000015
	c.slli	a4,08
	c.or	a4,a5
	addi	a5,zero,+000005D8
	add	a5,s5,a5
	c.add	a5,s1
	sh	a4,a5,+0000036C
	lbu	a4,a0,+00000018
	lbu	a3,a0,+00000017
	c.slli	a4,08
	c.or	a4,a3
	sw	a4,a5,+00000370
	lbu	a4,a0,+0000001B
	sb	a4,a5,+00000374
	lw	a4,a5,+000003E0
	ori	a4,a4,+00000002
	sw	a4,a5,+000003E0

l2300AE06:
	addi	a2,zero,+0000003D
	c.mv	a1,s2
	c.mv	a0,s6
	jal	ra,000000002300EEE8
	c.mv	s10,a0

l2300AE14:
	addi	a7,zero,+000005D8
	add	a7,s5,a7
	lui	a4,0004201C
	lw	a5,a4,-00000428
	addi	a4,a4,-00000428
	c.swsp	a4,0000000C
	lbu	a5,a5,+00000140
	add	s9,s1,a7
	sb	a5,s9,+000003E8
	beq	a5,zero,000000002300B0A2

l2300AE3A:
	lw	a5,s9,+000003E0
	blt	a5,zero,000000002300B0A2

l2300AE42:
	addi	a4,s3,+000003E9
	c.add	a4,s1
	c.mv	a0,a4
	c.li	a2,00000002
	c.li	a1,00000000
	c.swsp	a4,0000008C
	jal	ra,0000000023070EB8
	addi	a5,s3,+000003ED
	c.add	a5,s1
	c.mv	a0,a5
	c.li	a2,00000001
	c.li	a1,00000000
	addi	s11,s3,+000003EE
	c.swsp	a5,00000084
	c.add	s11,s1
	jal	ra,0000000023070EB8
	c.li	a2,00000001
	c.li	a1,00000000
	c.mv	a0,s11
	jal	ra,0000000023070EB8
	addi	a5,s3,+000003EB
	c.add	a5,s1
	c.li	a2,00000001
	c.li	a1,00000000
	c.mv	a0,a5
	c.swsp	a5,00000008
	jal	ra,0000000023070EB8
	addi	a5,s3,+000003EC
	c.add	a5,s1
	c.li	a2,00000001
	c.li	a1,00000000
	c.mv	a0,a5
	c.swsp	a5,00000088
	jal	ra,0000000023070EB8
	c.mv	a1,s2
	sb	zero,s9,+00000411
	sb	zero,s9,+000003EF
	sb	zero,s9,+000003F0
	addi	a2,zero,+00000030
	c.mv	a0,s6
	jal	ra,000000002300EEE8
	addi	s7,s3,+000003F1
	c.mv	a1,a0
	c.add	s7,s1
	c.beqz	a0,000000002300AF46

l2300AEBC:
	lbu	a2,a0,+00000001
	c.mv	a0,s7
	c.addi	a2,00000002
	andi	a2,a2,+000000FF
	sb	a2,s9,+00000411
	jal	ra,0000000023070C7C
	lbu	a5,s9,+000003F0
	c.lwsp	t3,000000C4
	c.lwsp	a2,00000064
	addi	a3,s3,+000003EF
	c.add	a3,s1
	c.mv	a2,s11
	c.mv	a0,s7
	jal	ra,00000000230100A0
	lw	a1,s9,+000003EC
	sb	a0,s9,+00000411
	lui	a0,00023075
	srli	a4,a1,00000010
	srli	a3,a1,00000011
	srli	a2,a1,00000012
	c.srli	a1,00000013
	c.andi	a4,00000001
	c.andi	a3,00000001
	c.andi	a2,00000001
	c.andi	a1,00000001
	addi	a0,a0,+000000E0
	jal	ra,0000000023052118
	lw	a1,s9,+000003EC
	lui	a0,00023075
	addi	a0,a0,+0000011C
	srli	a4,a1,00000008
	srli	a3,a1,00000009
	srli	a2,a1,0000000A
	c.srli	a1,0000000B
	c.andi	a1,00000001
	c.andi	a4,00000001
	c.andi	a3,00000001
	c.andi	a2,00000001
	jal	ra,0000000023052118
	lbu	a1,s9,+000003EF
	lui	a0,00023075
	addi	a0,a0,+00000154
	jal	ra,0000000023052118

l2300AF46:
	lui	a2,00023075
	c.mv	a1,s2
	c.li	a3,00000004
	addi	a2,a2,+000000D8
	c.mv	a0,s6
	jal	ra,000000002300EF04
	c.mv	a1,a0
	c.beqz	a0,000000002300AF9A

l2300AF5C:
	addi	s3,zero,+000005D8
	add	s3,s5,s3
	c.add	s3,s1
	lbu	a5,s3,+000003E9
	ori	a5,a5,+00000008
	sb	a5,s3,+000003E9
	lbu	a5,s3,+00000411
	c.bnez	a5,000000002300AF9A

l2300AF78:
	lbu	a2,a0,+00000001
	c.mv	a0,s7
	c.addi	a2,00000002
	andi	a2,a2,+000000FF
	sb	a2,s3,+00000411
	jal	ra,0000000023070C7C
	c.lwsp	s4,00000084
	c.lwsp	a6,00000064
	c.mv	a0,s7
	jal	ra,0000000023010304
	sb	a0,s3,+00000411

l2300AF9A:
	c.lwsp	s8,000000E4
	c.lui	a3,00013000
	addi	a3,a3,-00000800
	c.lw	a5,0(a0)
	addi	a5,zero,+000005D8
	add	a5,s5,a5
	sw	zero,a0,+00000030
	c.add	a5,s1
	lw	a4,a5,+000003E8
	c.and	a4,a3
	c.beqz	a4,000000002300B03C

l2300AFBA:
	c.li	a5,00000009

l2300AFBC:
	c.sw	a0,48(a5)
	c.j	000000002300B058

l2300AFC0:
	c.li	a5,00000001
	bne	a0,a5,000000002300AFEA

l2300AFC6:
	addi	a5,a1,-00000001
	addi	a4,zero,+000000A4
	bltu	a4,a5,000000002300AFEA

l2300AFD2:
	c.li	a5,00000005
	add	a1,a1,a5
	c.lui	a5,00001000
	addi	a5,a5,+00000388
	c.add	a1,a5
	c.j	000000002300AB78

l2300AFE2:
	c.lui	a1,00001000
	addi	a1,a1,-0000064C
	c.j	000000002300AB78

l2300AFEA:
	c.lui	a1,00010000
	c.addi	a1,FFFFFFFF
	c.j	000000002300AB78

l2300AFF0:
	lb	a4,s0,+00000018
	lb	a5,s8,+00000035
	bge	a5,a4,000000002300AB90

l2300AFFC:
	lhu	a1,s0,+00000004
	lbu	a0,s0,+00000006
	jal	ra,00000000230074CA
	sw	a0,s8,+0000002C
	lb	a5,s0,+00000018
	c.j	000000002300AB8C

l2300B012:
	c.li	a5,00000001
	sb	a5,s7,+000003D7
	c.j	000000002300AC44

l2300B01A:
	addi	a5,zero,+000005D8
	add	a5,s5,a5
	c.lui	a4,00001000
	addi	a4,a4,-000005BD
	c.add	a5,s1
	sw	a4,a5,+000003C4
	sw	a4,a5,+000003C8
	sw	a4,a5,+000003CC
	sw	a4,a5,+000003D0
	c.j	000000002300AD5C

l2300B03C:
	lhu	a4,a5,+000003AE
	c.andi	a4,00000010
	beq	a4,zero,000000002300B12E

l2300B046:
	lbu	a4,a5,+000003E9
	ori	a4,a4,+00000002
	sb	a4,a5,+000003E9
	c.li	a5,00000001
	sb	a5,a0,+0000003B

l2300B058:
	addi	s3,zero,+000005D8
	add	s3,s5,s3
	c.mv	a1,s7
	addi	a0,a0,+00000040
	c.add	s3,s1
	lbu	a2,s3,+00000411
	jal	ra,0000000023070C7C
	c.lwsp	s8,000000E4
	lbu	a4,s3,+00000411
	lui	a0,00023075
	c.lw	a5,0(a5)
	addi	a0,a0,+00000174
	sh	a4,a5,+00000036
	lw	a1,s3,+000003E8
	srli	a4,a1,00000010
	srli	a3,a1,0000000D
	srli	a2,a1,0000000B
	c.srli	a1,00000009
	c.andi	a4,00000001
	c.andi	a3,00000001
	c.andi	a2,00000001
	c.andi	a1,00000001
	jal	ra,0000000023052118

l2300B0A2:
	c.lwsp	s0,00000084
	c.li	a1,00000000
	c.mv	a0,s10
	jal	ra,0000000023007C4C
	c.lwsp	s0,00000084
	c.mv	a1,s2
	c.mv	a0,s6
	jal	ra,000000002301D3BA
	c.lwsp	s0,00000084
	c.mv	a1,s2
	c.mv	a0,s6
	jal	ra,000000002301D3DE
	c.lwsp	s0,00000084
	c.mv	a1,s2
	c.mv	a0,s6
	jal	ra,000000002301D458
	addi	a5,zero,+000005D8
	add	s5,s5,a5
	lui	a4,00080000
	c.add	s1,s5
	lw	a5,s1,+000003E0
	c.or	a5,a4
	sw	a5,s1,+000003E0

l2300B0E2:
	lbu	a5,s8,+00000034
	c.bnez	a5,000000002300B0F2

l2300B0E8:
	lhu	a5,s4,+00000014
	c.addi	a5,00000001
	sh	a5,s4,+00000014

l2300B0F2:
	c.lwsp	tp,000000E4
	lbu	a5,a5,+00000150
	c.beqz	a5,000000002300B100

l2300B0FA:
	c.li	a5,00000001
	sb	a5,s8,+00000034

l2300B100:
	c.lui	a1,00001000
	c.mv	a0,s0
	c.li	a3,00000004
	c.li	a2,0000000D
	c.addi	a1,00000004
	jal	ra,000000002300E850
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.lwsp	t1,00000024
	c.lwsp	sp,00000048
	c.lwsp	t4,00000178
	c.lwsp	s9,00000198
	c.lwsp	s5,000001B8
	c.lwsp	a7,000001D8
	c.lwsp	a3,000001F8
	c.lwsp	s1,0000011C
	c.lwsp	t0,0000013C
	c.lwsp	ra,0000015C
	c.lwsp	t4,0000006C
	c.li	a0,00000001
	c.addi16sp	00000090
	c.jr	ra

l2300B12E:
	c.li	a5,00000002
	c.j	000000002300AFBC

;; scanu_search_by_bssid: 2300B132
;;   Called from:
;;     2300B78C (in sm_get_bss_params)
scanu_search_by_bssid proc
	c.li	a1,00000000
	jal	zero,000000002300A8DA

;; scanu_search_by_ssid: 2300B138
;;   Called from:
;;     2300B72C (in sm_get_bss_params)
scanu_search_by_ssid proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	lbu	a5,a0,+00000000
	c.li	s3,00000000
	c.beqz	a5,000000002300B1AA

l2300B154:
	lui	s0,0004201C
	c.mv	s4,a1
	c.mv	s1,a0
	addi	s0,s0,-000005BC
	c.li	s2,00000000
	c.li	s3,00000000
	addi	s5,zero,-00000080
	addi	s7,a0,+00000001
	c.li	s6,00000006

l2300B16E:
	lbu	a5,s0,+0000004C
	c.beqz	a5,000000002300B1AA

l2300B174:
	lb	a5,s0,+0000004D
	bge	s5,a5,000000002300B1A0

l2300B17C:
	lbu	a5,s0,+0000001E
	lbu	a2,s1,+00000000
	bne	a2,a5,000000002300B1A0

l2300B188:
	c.mv	a1,s7
	addi	a0,s0,+0000001F
	jal	ra,0000000023070BF4
	c.bnez	a0,000000002300B1A0

l2300B194:
	lb	s5,s0,+0000004D
	addi	s3,s0,+00000018
	sw	s2,s4,+00000000

l2300B1A0:
	c.addi	s2,00000001
	addi	s0,s0,+00000038
	bne	s2,s6,000000002300B16E

l2300B1AA:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s3
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.addi16sp	00000030
	c.jr	ra

;; scanu_rm_exist_ssid: 2300B1C2
;;   Called from:
;;     2300BE98 (in sm_connect_ind)
scanu_rm_exist_ssid proc
	blt	a1,zero,000000002300B22A

l2300B1C6:
	c.beqz	a0,000000002300B22A

l2300B1C8:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	s0,zero,+00000038
	add	s0,a1,s0
	c.swsp	s1,00000080
	lui	s1,0004201C
	addi	s1,s1,-000005BC
	c.swsp	ra,00000084
	add	a5,s1,s0
	lbu	a4,a5,+0000004C
	c.beqz	a4,000000002300B220

l2300B1EA:
	lbu	a5,a5,+0000001E
	lbu	a2,a0,+00000000
	bne	a2,a5,000000002300B220

l2300B1F6:
	addi	a5,s0,+0000001F
	addi	a1,a0,+00000001
	add	a0,s1,a5
	jal	ra,0000000023070BF4
	c.bnez	a0,000000002300B220

l2300B208:
	addi	a0,s0,+00000018
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.add	a0,s1
	c.lwsp	tp,00000024
	addi	a2,zero,+00000038
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,0000000023070EB8

l2300B220:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2300B22A:
	c.jr	ra

;; scanu_scan_next: 2300B22C
;;   Called from:
;;     2300B4EC (in scanu_dma_cb)
;;     2300B54A (in scanu_start)
;;     2301E73C (in scan_done_ind_handler)
scanu_scan_next proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,0004201C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	lw	s1,s2,-000005BC
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	addi	s2,s2,-000005BC
	c.li	a2,00000001

l2300B24A:
	lbu	a5,s2,+0000016B
	bltu	a2,a5,000000002300B4D6

l2300B252:
	lbu	a3,s1,+0000014F
	addi	a4,s1,+00000002
	c.li	s3,00000000

l2300B25C:
	blt	s3,a3,000000002300B26C

l2300B260:
	bne	a3,s3,000000002300B27A

l2300B264:
	c.addi	a5,00000001
	sb	a5,s2,+0000016B
	c.j	000000002300B24A

l2300B26C:
	c.addi	a4,00000006
	lbu	a1,a4,-00000006
	beq	a1,a5,000000002300B27A

l2300B276:
	c.addi	s3,00000001
	c.j	000000002300B25C

l2300B27A:
	c.lui	a0,00001000
	addi	a3,zero,+00000154
	c.li	a2,00000004
	c.li	a1,00000002
	addi	a0,a0,-00000800
	jal	ra,000000002300E768
	lbu	a5,s1,+0000014E
	c.mv	s0,a0
	c.li	s5,00000006
	sb	a5,a0,+0000014E
	lw	a5,s1,+00000140
	sw	a5,a0,+00000140
	lhu	a5,s1,+00000144
	sh	a5,a0,+00000144
	lbu	a5,s1,+00000150
	sb	a5,a0,+00000150
	lbu	a5,s1,+00000151
	sb	a5,a0,+00000151

l2300B2B8:
	lbu	a5,s1,+0000014F
	blt	s3,a5,000000002300B454

l2300B2C0:
	addi	s3,zero,+000000FC
	c.li	s4,00000000

l2300B2C6:
	lbu	a5,s1,+00000150
	blt	s4,a5,000000002300B480

l2300B2CE:
	lw	a4,s2,+00000000
	lui	a5,00042048
	lui	a2,00042048
	lhu	a3,a4,+0000014C
	addi	a7,a5,-000002FC
	addi	a5,zero,+000000C8
	addi	a2,a2,-00000224
	bgeu	a5,a3,000000002300B2F0

l2300B2EE:
	c.li	a3,00000000

l2300B2F0:
	lbu	a1,s2,+0000016B
	c.li	a5,00000001
	beq	a1,a5,000000002300B498

l2300B2FA:
	lbu	a5,a4,+00000151
	bne	a5,zero,000000002300B498

l2300B302:
	c.li	t1,00000000
	c.li	a4,0000000C

l2300B306:
	lui	a5,00042048
	c.li	a1,00000001
	sb	a1,a5,+00000D04
	lui	a1,00023076
	c.li	a5,00000008
	addi	a0,a1,-000002CC
	lui	a1,00042048
	sb	a5,a7,+00000001
	addi	a1,a1,-000002FA
	c.li	a5,00000000
	c.li	t3,00000008

l2300B32A:
	add	a6,t1,a5
	c.add	a6,a0
	lbu	t4,a6,+00000000
	add	a6,a5,a1
	c.addi	a5,00000001
	sb	t4,a6,+00000000
	bne	a5,t3,000000002300B32A

l2300B342:
	addi	a5,a7,+0000000A
	c.beqz	a3,000000002300B380

l2300B348:
	lui	a6,00042048
	addi	a1,a6,-00000234
	lbu	t1,a1,+00000010
	c.li	a1,0000000A
	bne	t1,a1,000000002300B380

l2300B35A:
	lbu	a1,a2,+00000001
	c.mv	t3,a5
	addi	a6,a6,-00000234
	c.addi	a1,00000002
	andi	a1,a1,+000000FF
	c.mv	t1,a1
	c.li	t4,FFFFFFFF

l2300B36E:
	c.addi	t1,FFFFFFFF
	c.addi	a6,00000001
	bne	t1,t4,000000002300B49E

l2300B376:
	c.sub	a3,a1
	c.slli	a3,10
	c.add	a5,a1
	c.add	a2,a1
	c.srli	a3,00000010

l2300B380:
	c.li	a1,00000008
	beq	a4,a1,000000002300B3AE

l2300B386:
	c.addi	a4,FFFFFFF8
	andi	a4,a4,+000000FF
	addi	a1,zero,+00000032
	sb	a1,a5,+00000000
	sb	a4,a5,+00000001
	c.mv	a1,a0
	addi	t1,a4,+00000002
	addi	a6,a5,+00000002
	c.li	a0,FFFFFFFF

l2300B3A4:
	c.addi	a4,FFFFFFFF
	c.addi	a1,00000001
	bne	a4,a0,000000002300B4AA

l2300B3AC:
	c.add	a5,t1

l2300B3AE:
	lbu	a4,s2,+0000016B
	c.bnez	a4,000000002300B3C2

l2300B3B4:
	c.li	a4,00000003
	sb	a4,a5,+00000000
	c.li	a4,00000001
	sb	a4,a5,+00000001
	c.addi	a5,00000003

l2300B3C2:
	c.beqz	a3,000000002300B3EA

l2300B3C4:
	lbu	a1,a2,+00000000
	addi	a4,zero,+0000003B
	bne	a1,a4,000000002300B3EA

l2300B3D0:
	lbu	a4,a2,+00000001
	c.li	a1,00000000
	c.addi	a4,00000002
	andi	a4,a4,+000000FF

l2300B3DC:
	bne	a4,a1,000000002300B4B6

l2300B3E0:
	c.sub	a3,a4
	c.slli	a3,10
	c.add	a5,a4
	c.add	a2,a4
	c.srli	a3,00000010

l2300B3EA:
	lui	a4,0004201B
	addi	a1,a4,-0000002C
	lbu	a1,a1,+0000002E
	c.beqz	a1,000000002300B416

l2300B3F8:
	addi	a1,zero,+0000002D
	sb	a1,a5,+00000000
	c.li	a1,0000001A
	sb	a1,a5,+00000001
	addi	a4,a4,-0000002C
	addi	a1,a5,+0000001C
	c.addi	a5,00000002

l2300B410:
	c.addi	a4,00000001
	bne	a1,a5,000000002300B4CA

l2300B416:
	c.beqz	a3,000000002300B432

l2300B418:
	c.li	a4,00000000

l2300B41A:
	add	a1,a2,a4
	lbu	a0,a1,+00000000
	add	a1,a5,a4
	c.addi	a4,00000001
	sb	a0,a1,+00000000
	bne	a3,a4,000000002300B41A

l2300B430:
	c.add	a5,a3

l2300B432:
	sub	a5,a5,a7
	sh	a5,s0,+0000014C
	sw	zero,s0,+00000148
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,000000002300E7D4

l2300B454:
	add	a1,s3,s5
	lbu	a5,s2,+0000016B
	c.add	a1,s1
	lbu	a4,a1,+00000002
	bne	a4,a5,000000002300B47C

l2300B466:
	lbu	s4,s0,+0000014F
	c.li	a2,00000006
	add	a0,s4,s5
	c.addi	s4,00000001
	c.add	a0,s0
	jal	ra,0000000023070C7C
	sb	s4,s0,+0000014F

l2300B47C:
	c.addi	s3,00000001
	c.j	000000002300B2B8

l2300B480:
	add	a1,s1,s3
	add	a0,s0,s3
	addi	a2,zero,+00000022
	jal	ra,0000000023070C7C
	c.addi	s4,00000001
	addi	s3,s3,+00000022
	c.j	000000002300B2C6

l2300B498:
	c.li	t1,00000004
	c.li	a4,00000008
	c.j	000000002300B306

l2300B49E:
	lbu	t5,a6,+0000000F
	c.addi	t3,00000001
	sb	t5,t3,+00000FFF
	c.j	000000002300B36E

l2300B4AA:
	lbu	t3,a1,+00000007
	c.addi	a6,00000001
	sb	t3,a6,+00000FFF
	c.j	000000002300B3A4

l2300B4B6:
	add	a0,a2,a1
	lbu	a6,a0,+00000000
	add	a0,a5,a1
	c.addi	a1,00000001
	sb	a6,a0,+00000000
	c.j	000000002300B3DC

l2300B4CA:
	lbu	a0,a4,+0000000B
	c.addi	a5,00000001
	sb	a0,a5,+00000FFF
	c.j	000000002300B410

l2300B4D6:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.li	a0,00000000
	c.addi16sp	00000020
	jal	zero,000000002300A7E4

;; scanu_dma_cb: 2300B4EC
scanu_dma_cb proc
	jal	zero,000000002300B22C

;; scanu_start: 2300B4F0
;;   Called from:
;;     2301E6E2 (in scanu_join_req_handler)
;;     2301E714 (in scanu_start_req_handler)
scanu_start proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004201C
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	a4,a5,-000005BC
	lbu	a4,a4,+0000016A
	addi	s0,a5,-000005BC
	c.bnez	a4,000000002300B528

l2300B508:
	addi	a5,a5,-000005BC
	addi	a4,s0,+00000150
	addi	a3,zero,-00000080

l2300B514:
	sb	zero,a5,+0000004C
	sb	a3,a5,+0000004D
	addi	a5,a5,+00000038
	bne	a5,a4,000000002300B514

l2300B524:
	sh	zero,s0,+00000014

l2300B528:
	c.li	a1,00000001
	c.li	a0,00000004
	jal	ra,000000002300E902
	c.lw	s0,0(a5)
	lw	a3,a5,+00000148
	c.beqz	a3,000000002300B544

l2300B538:
	lhu	a4,a5,+0000014C
	addi	a5,zero,+000000C8
	bgeu	a5,a4,000000002300B54E

l2300B544:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300B22C

l2300B54E:
	lui	a5,00042048
	addi	a5,a5,-00000234
	c.sw	a5,0(a3)
	sh	a4,a5,+00000008
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,0004201C
	c.li	a1,00000000
	addi	a0,a0,-000005B8
	c.addi	sp,00000010
	jal	zero,000000002301A6BA

;; txl_get_seq_ctrl: 2300B570
;;   Called from:
;;     2300BCC2 (in sm_disconnect)
;;     2300BF82 (in sm_auth_send)
;;     2300C12E (in sm_assoc_req_send)
;;     2300C606 (in sm_handle_supplicant_result)
txl_get_seq_ctrl proc
	lui	a5,0004201A
	addi	a5,a5,+000003A8
	lhu	a0,a5,+00000054
	c.addi	a0,00000001
	c.slli	a0,10
	c.srli	a0,00000010
	sh	a0,a5,+00000054
	c.slli	a0,04
	c.slli	a0,10
	c.srli	a0,00000010
	c.jr	ra

;; sm_delete_resources: 2300B58E
;;   Called from:
;;     2300BBD6 (in sm_disconnect_process)
;;     2300BEAC (in sm_connect_ind)
sm_delete_resources proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.lui	s1,00001000
	c.swsp	s0,00000004
	c.li	a3,00000002
	c.mv	s0,a0
	c.li	a2,00000006
	c.li	a1,00000005
	addi	a0,s1,+00000413
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	jal	ra,000000002300E768
	c.mv	s2,a0
	c.li	a3,00000002
	c.li	a2,00000006
	c.li	a1,00000005
	addi	a0,s1,+00000411
	jal	ra,000000002300E768
	sb	zero,s2,+00000000
	lbu	a5,s0,+00000057
	c.mv	s1,a0
	c.mv	a0,s2
	sb	a5,s2,+00000001
	jal	ra,000000002300E7D4
	lbu	a5,s0,+00000058
	c.beqz	a5,000000002300B5F0

l2300B5D4:
	c.li	a3,00000004
	c.li	a2,00000006
	c.li	a1,00000000
	c.li	a0,0000001E
	jal	ra,000000002300E768
	sb	zero,a0,+00000002
	lbu	a4,s0,+00000057
	sb	a4,a0,+00000003
	jal	ra,000000002300E7D4

l2300B5F0:
	lbu	a4,s0,+00000060
	addi	a5,zero,+000000FF
	beq	a4,a5,000000002300B614

l2300B5FC:
	c.li	a3,00000001
	c.li	a2,00000006
	c.li	a1,00000000
	c.li	a0,0000000C
	jal	ra,000000002300E768
	lbu	a5,s0,+00000060
	sb	a5,a0,+00000000
	jal	ra,000000002300E7D4

l2300B614:
	c.lw	s0,64(a5)
	c.beqz	a5,000000002300B620

l2300B618:
	lbu	a0,s0,+00000057
	jal	ra,000000002301A562

l2300B620:
	sb	zero,s1,+00000000
	lbu	a5,s0,+00000057
	c.mv	a0,s1
	sb	a5,s1,+00000001
	jal	ra,000000002300E7D4
	c.lwsp	a2,00000020
	sw	zero,s0,+000003E0
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; sm_frame_tx_cfm_handler: 2300B642
sm_frame_tx_cfm_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.li	a0,00000006
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	jal	ra,000000002300EA02
	c.lwsp	a2,00000064
	lui	a5,00040030
	c.and	a1,a5
	c.beqz	a1,000000002300B672

l2300B65E:
	c.addi	a0,FFFFFFFB
	c.li	s1,00000001
	bltu	s1,a0,000000002300B672

l2300B666:
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,000000002300649E
	sb	s1,s0,+000002D6

l2300B672:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; sm_init: 2300B67C
;;   Called from:
;;     230074BE (in me_init)
sm_init proc
	lui	a5,0004201C
	c.li	a1,00000000
	c.li	a0,00000006
	sw	zero,a5,+00000BD8
	jal	zero,000000002300E902

;; sm_get_bss_params: 2300B68C
;;   Called from:
;;     2301E846 (in scanu_start_cfm_handler)
;;     2301EBE0 (in sm_connect_req_handler)
;;     2301EDBA (in me_set_active_cfm_handler)
sm_get_bss_params proc
	c.addi16sp	FFFFFFC0
	c.swsp	s5,00000090
	lui	s5,0004201C
	c.swsp	s0,0000001C
	lw	s0,s5,-00000428
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	ra,0000009C
	sw	zero,a0,+00000000
	c.mv	s6,a0
	lui	a0,00023075
	c.li	a5,FFFFFFFF
	sw	zero,a1,+00000000
	addi	a0,a0,+000002E4
	addi	s2,s0,+00000022
	c.mv	s4,a1
	c.swsp	a5,00000084
	c.li	s1,00000000
	jal	ra,0000000023052118
	addi	s5,s5,-00000428
	c.mv	s3,s2
	lui	s8,00023075
	c.li	s7,00000003

l2300B6D8:
	lhu	a2,s2,+00000000
	c.mv	a1,s1
	addi	a0,s8,+00000304
	c.addi	s1,00000001
	jal	ra,0000000023052118
	c.addi	s2,00000002
	bne	s1,s7,000000002300B6D8

l2300B6EE:
	lbu	a5,s0,+00000022
	andi	a4,a5,+00000001
	c.bnez	a4,000000002300B718

l2300B6F8:
	c.bnez	a5,000000002300B77A

l2300B6FA:
	lbu	a5,s0,+00000023
	c.bnez	a5,000000002300B77A

l2300B700:
	lbu	a5,s0,+00000024
	c.bnez	a5,000000002300B77A

l2300B706:
	lbu	a5,s0,+00000025
	c.bnez	a5,000000002300B77A

l2300B70C:
	lbu	a5,s0,+00000026
	c.bnez	a5,000000002300B77A

l2300B712:
	lbu	a5,s0,+00000027
	c.bnez	a5,000000002300B77A

l2300B718:
	lui	a0,00023075
	addi	a1,s0,+00000001
	addi	a0,a0,+00000318
	jal	ra,0000000023052118
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,000000002300B138
	c.lwsp	a2,00000064
	c.mv	s1,a0
	lui	a0,00023075
	addi	a0,a0,+0000032C
	jal	ra,0000000023052118
	c.beqz	s1,000000002300B794

l2300B742:
	c.lwsp	a2,000000E4
	blt	a5,zero,000000002300B750

l2300B748:
	sw	s1,s6,+00000000
	sw	a5,s5,+00000014

l2300B750:
	c.lw	s1,44(a5)
	sw	a5,s4,+00000000

l2300B756:
	lui	a0,00023075
	addi	a0,a0,+0000035C
	jal	ra,0000000023052118
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

l2300B77A:
	lui	a0,00023075
	addi	a0,a0,+00000348
	jal	ra,0000000023052118
	c.mv	a0,s3
	sw	s3,s6,+00000000
	jal	ra,000000002300B132
	c.mv	s1,a0
	c.bnez	a0,000000002300B750

l2300B794:
	lhu	a4,s0,+00000028
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	a4,a5,000000002300B756

l2300B7A0:
	addi	s0,s0,+00000028
	sw	s0,s4,+00000000
	c.j	000000002300B756

;; sm_scan_bss: 2300B7AA
;;   Called from:
;;     2301EBE6 (in sm_connect_req_handler)
sm_scan_bss proc
	c.addi16sp	FFFFFFD0
	lui	a5,0004201C
	c.swsp	s3,0000008C
	lw	s3,a5,-00000428
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	addi	a3,zero,+00000154
	c.mv	s2,a0
	c.li	a2,00000006
	c.mv	s1,a1
	c.lui	a0,00001000
	c.li	a1,00000004
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	jal	ra,000000002300E768
	lbu	a5,s3,+0000003D
	c.mv	s0,a0
	sw	zero,a0,+00000148
	sb	a5,a0,+0000014E
	sh	zero,a0,+0000014C
	addi	a2,zero,+00000022
	c.mv	a1,s3
	addi	a0,a0,+000000FC
	jal	ra,0000000023070C7C
	c.li	a5,00000001
	sb	a5,s0,+00000150
	addi	a0,s0,+00000140
	c.li	a2,00000006
	c.mv	a1,s2
	bne	s2,zero,000000002300B80E

l2300B806:
	lui	a1,0002308E
	addi	a1,a1,-00000274

l2300B80E:
	jal	ra,0000000023070C7C
	c.beqz	s1,000000002300B842

l2300B814:
	c.li	a2,00000006
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023070C7C
	c.li	a5,00000001
	sb	a5,s0,+0000014F

l2300B824:
	c.mv	a0,s0
	jal	ra,000000002300E7D4
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.li	a1,00000001
	c.li	a0,00000006
	c.addi16sp	00000030
	jal	zero,000000002300E902

l2300B842:
	lui	a5,0004201B
	addi	a5,a5,+00000004
	c.swsp	a5,00000004
	lui	a5,0004201B
	addi	a5,a5,+00000058
	c.swsp	a5,00000084
	lui	a5,0004201B
	lhu	a5,a5,+00000100
	sb	zero,s0,+0000014F
	addi	s2,sp,+00000004
	sh	a5,sp,+00000004
	addi	s3,sp,+00000008
	addi	s5,sp,+00000006
	c.li	s4,00000006

l2300B874:
	c.li	s1,00000000
	c.j	000000002300B8A4

l2300B878:
	add	a1,s1,s4
	lw	a5,s3,+00000000
	c.add	a1,a5
	lbu	a5,a1,+00000003
	c.andi	a5,00000002
	c.bnez	a5,000000002300B8A2

l2300B88A:
	lbu	a0,s0,+0000014F
	c.li	a2,00000006
	addi	a5,a0,+00000001
	add	a0,a0,s4
	sb	a5,s0,+0000014F
	c.add	a0,s0
	jal	ra,0000000023070C7C

l2300B8A2:
	c.addi	s1,00000001

l2300B8A4:
	lbu	a5,s2,+00000000
	blt	s1,a5,000000002300B878

l2300B8AC:
	c.addi	s2,00000001
	c.addi	s3,00000004
	bne	s2,s5,000000002300B874

l2300B8B4:
	c.j	000000002300B824

;; sm_join_bss: 2300B8B6
;;   Called from:
;;     2301E854 (in scanu_start_cfm_handler)
;;     2301E9FC (in scanu_join_cfm_handler)
;;     2301EBD6 (in sm_connect_req_handler)
;;     2301EDC4 (in me_set_active_cfm_handler)
sm_join_bss proc
	c.addi	sp,FFFFFFE0
	c.swsp	s5,00000080
	c.mv	s5,a0
	c.lui	a0,00001000
	addi	a3,zero,+00000154
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	lui	s1,0004201C
	c.mv	s4,a1
	c.mv	s2,a2
	c.li	a1,00000004
	c.li	a2,00000006
	c.addi	a0,00000002
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	lw	s3,s1,-00000428
	jal	ra,000000002300E768
	c.mv	a1,s4
	c.li	a2,00000006
	c.mv	s0,a0
	c.li	s4,00000001
	jal	ra,0000000023070C7C
	addi	a2,zero,+00000022
	c.mv	a1,s3
	sb	s4,s0,+0000014F
	addi	a0,s0,+000000FC
	jal	ra,0000000023070C7C
	sb	s4,s0,+00000150
	sh	zero,s0,+0000014C
	sw	zero,s0,+00000148
	lbu	a5,s3,+0000003D
	c.li	a2,00000006
	c.mv	a1,s5
	sb	a5,s0,+0000014E
	addi	a0,s0,+00000140
	jal	ra,0000000023070C7C
	addi	s1,s1,-00000428
	beq	s2,zero,000000002300B936

l2300B92A:
	lbu	a5,s0,+00000003
	ori	a5,a5,+00000001
	sb	a5,s0,+00000003

l2300B936:
	c.mv	a0,s0
	sb	s2,s1,+00000010
	jal	ra,000000002300E7D4
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.li	a1,00000002
	c.li	a0,00000006
	c.addi16sp	00000020
	jal	zero,000000002300E902

;; sm_add_chan_ctx: 2300B958
;;   Called from:
;;     2301E924 (in scanu_join_cfm_handler)
sm_add_chan_ctx proc
	lui	a5,0004201C
	lw	a5,a5,-00000428
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	lbu	a5,a5,+0000003D
	addi	a3,zero,+000005D8
	lui	a4,0004201A
	add	a5,a5,a3
	addi	a4,a4,+00000410
	c.mv	a1,a0
	c.addi4spn	a0,00000004
	c.add	a4,a5
	lw	a3,a4,+000003A4
	lbu	a4,a4,+000003DB
	lbu	a2,a3,+00000002
	sb	a4,sp,+00000005
	sb	a2,sp,+00000004
	lhu	a4,a3,+00000000
	sh	a4,sp,+00000006
	lui	a4,0004201A
	addi	a4,a4,+000007B0
	c.add	a5,a4
	c.lw	a5,8(a5)
	c.swsp	a5,00000004
	lb	a5,a3,+00000004
	sb	a5,sp,+0000000C
	jal	ra,0000000023019F56
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; sm_send_next_bss_param: 2300B9BA
;;   Called from:
;;     2300BB92 (in sm_set_bss_param)
;;     2301E7AA (in me_set_ps_disable_cfm_handler)
;;     2301E7DE (in mm_bss_param_setting_handler)
sm_send_next_bss_param proc
	lui	a0,0004201C
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000420
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002300E2FE
	c.mv	s0,a0
	c.bnez	a0,000000002300B9E8

l2300B9D0:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+000001A0
	addi	a1,a1,+000002DC
	addi	a0,a0,+000003EC
	jal	ra,000000002301327E

l2300B9E8:
	addi	a0,s0,+0000000C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300E7D4

;; sm_set_bss_param: 2300B9F6
;;   Called from:
;;     2301EEC2 (in mm_sta_add_cfm_handler)
sm_set_bss_param proc
	c.addi16sp	FFFFFFD0
	lui	a5,0004201C
	c.swsp	s2,00000010
	lw	s2,a5,-00000428
	c.swsp	s1,00000090
	c.lui	s1,00001000
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s3,0000008C
	c.li	a3,00000002
	c.li	a2,00000006
	c.li	a1,00000005
	addi	a0,s1,+00000413
	lbu	s3,s2,+0000003D
	jal	ra,000000002300E768
	c.mv	s0,a0
	c.li	a3,00000007
	c.li	a2,00000006
	c.li	a1,00000000
	c.li	a0,00000018
	jal	ra,000000002300E768
	c.mv	s8,a0
	c.li	a3,00000008
	c.li	a2,00000006
	c.li	a1,00000000
	c.li	a0,00000016
	jal	ra,000000002300E768
	c.mv	s5,a0
	c.li	a3,00000004
	c.li	a2,00000006
	c.li	a1,00000000
	c.li	a0,00000014
	jal	ra,000000002300E768
	c.li	a3,00000002
	c.mv	s7,a0
	c.li	a2,00000006
	c.li	a1,00000005
	addi	a0,s1,+00000411
	jal	ra,000000002300E768
	lui	s1,0004201C
	c.mv	s4,a0
	addi	a0,s1,-00000420
	jal	ra,000000002300E278
	c.li	a5,00000001
	sb	a5,s0,+00000000
	lbu	a5,s2,+0000003D
	addi	a1,s0,-0000000C
	addi	a0,s1,-00000420
	sb	a5,s0,+00000001
	jal	ra,000000002300E282
	addi	a0,zero,+000005D8
	add	s3,s3,a0
	lui	s6,0004201A
	addi	s6,s6,+00000410
	c.li	a2,00000006
	c.mv	a0,s8
	add	s0,s6,s3
	addi	a1,s0,+00000378
	jal	ra,0000000023070C7C
	lbu	a5,s2,+0000003D
	addi	a1,s8,-0000000C
	addi	a0,s1,-00000420
	sb	a5,s8,+00000006
	jal	ra,000000002300E282
	lw	a5,s0,+000003A4
	addi	a0,s3,+000003B0
	c.li	a1,00000001
	lbu	a5,a5,+00000002
	c.add	a0,s6
	lui	s6,0002308E
	sb	a5,s5,+00000005
	jal	ra,0000000023007922
	sw	a0,s5,+00000000
	lbu	a5,s2,+0000003D
	addi	a1,s5,-0000000C
	addi	a0,s1,-00000420
	sb	a5,s5,+00000004
	jal	ra,000000002300E282
	lhu	a5,s0,+000003AC
	addi	a1,s7,-0000000C
	addi	a0,s1,-00000420
	sh	a5,s7,+00000000
	lbu	a5,s2,+0000003D
	lui	s5,00042019
	c.li	s3,00000000
	sb	a5,s7,+00000002
	jal	ra,000000002300E282
	addi	s5,s5,-00000150
	c.mv	s8,s0
	addi	s6,s6,-00000278
	c.li	s7,00000004

l2300BB20:
	c.li	a3,00000008
	c.li	a2,00000006
	c.li	a1,00000000
	c.li	a0,0000001A
	jal	ra,000000002300E768
	lw	a5,s0,+000003C4
	sb	s3,a0,+00000005
	c.sw	a0,0(a5)
	lbu	a5,s2,+0000003D
	sb	a5,a0,+00000006
	lw	a4,s5,+00000020
	c.li	a5,00000000
	c.beqz	a4,000000002300BB60

l2300BB46:
	lb	a4,s8,+000003C0
	bge	a4,zero,000000002300BB60

l2300BB4E:
	add	a5,s3,s6
	lbu	a5,a5,+00000000
	lbu	a4,s2,+0000003C
	c.and	a5,a4
	sltu	a5,zero,a5

l2300BB60:
	sb	a5,a0,+00000004
	addi	a1,a0,-0000000C
	c.addi	s3,00000001
	addi	a0,s1,-00000420
	jal	ra,000000002300E282
	c.addi	s0,00000004
	bne	s3,s7,000000002300BB20

l2300BB78:
	c.li	a5,00000001
	sb	a5,s4,+00000000
	lbu	a5,s2,+0000003D
	addi	a1,s4,-0000000C
	addi	a0,s1,-00000420
	sb	a5,s4,+00000001
	jal	ra,000000002300E282
	jal	ra,000000002300B9BA
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.li	a1,00000004
	c.li	a0,00000006
	c.addi16sp	00000030
	jal	zero,000000002300E902

;; sm_disconnect_process: 2300BBB4
;;   Called from:
;;     2300BC08 (in sm_deauth_cfm)
;;     2300BD26 (in sm_disconnect)
;;     2300C524 (in sm_deauth_handler)
;;     2301E8AC (in mm_connection_loss_ind_handler)
;;     2301EB36 (in sm_connect_req_handler)
sm_disconnect_process proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.lui	a0,00002000
	c.swsp	s2,00000000
	c.li	a3,00000004
	c.mv	s2,a1
	c.li	a2,00000006
	c.li	a1,0000000D
	addi	a0,a0,-000007FB
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002300E768
	c.mv	s0,a0
	c.mv	a0,s1
	jal	ra,000000002300B58E
	sh	s2,s0,+00000000
	lbu	a5,s1,+00000057
	sb	a5,s0,+00000002
	lui	a5,0004201C
	lbu	a5,a5,-00000417
	c.beqz	a5,000000002300BBF6

l2300BBF0:
	c.li	a5,00000001
	sb	a5,s0,+00000003

l2300BBF6:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002300E7D4

;; sm_deauth_cfm: 2300BC06
sm_deauth_cfm proc
	c.li	a1,00000000
	jal	zero,000000002300BBB4

;; sm_disconnect: 2300BC0C
;;   Called from:
;;     2301EEFC (in sm_disconnect_req_handler)
sm_disconnect proc
	addi	a5,zero,+000005D8
	add	a5,a0,a5
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004201A
	addi	s0,s0,+00000410
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.add	s0,a5
	lbu	a5,s0,+00000056
	bne	a5,zero,000000002300BD30

l2300BC38:
	lbu	a5,s0,+00000058
	beq	a5,zero,000000002300BD30

l2300BC40:
	c.mv	s5,a1
	c.mv	s4,a0
	c.li	a1,00000008
	c.li	a0,00000006
	lbu	s6,s0,+00000060
	jal	ra,000000002300E902
	lw	a5,s0,+000003A4
	addi	a1,zero,+00000100
	lbu	a0,a5,+00000002
	sltu	a0,zero,a0
	jal	ra,0000000023006372
	c.mv	s1,a0
	c.beqz	a0,000000002300BD2A

l2300BC68:
	c.mv	a1,a0
	c.mv	a0,s0
	jal	ra,000000002300563C
	lw	s2,s1,+00000068
	addi	a5,zero,-00000040
	lui	s3,00042019
	sb	a5,s2,+0000014C
	addi	a5,zero,+000001B0
	add	s6,s6,a5
	addi	s3,s3,-000000E0
	c.li	a2,00000006
	sb	zero,s2,+0000014D
	sb	zero,s2,+0000014E
	sb	zero,s2,+0000014F
	addi	a0,s2,+00000150
	c.add	s3,s6
	c.addi	s3,0000001E
	c.mv	a1,s3
	jal	ra,0000000023070C7C
	c.li	a2,00000006
	addi	a1,s0,+00000050
	addi	a0,s2,+00000156
	jal	ra,0000000023070C7C
	c.li	a2,00000006
	c.mv	a1,s3
	addi	a0,s2,+0000015C
	jal	ra,0000000023070C7C
	jal	ra,000000002300B570
	sb	a0,s2,+00000162
	lui	a5,0002300C
	c.srli	a0,00000008
	sb	a0,s2,+00000163
	addi	a5,a5,-000003FA
	sw	a5,s1,+000002CC
	sw	s0,s1,+000002D0
	sb	s4,s1,+0000002F
	lbu	a5,s0,+00000060
	c.mv	a1,s5
	addi	a0,s2,+00000164
	sb	a5,s1,+00000030
	jal	ra,000000002301CEFE
	c.lw	s1,108(a4)
	c.li	a1,00000003
	c.lw	a4,20(a5)
	c.addi	a5,00000017
	c.add	a5,a0
	c.addi	a0,0000001C
	c.sw	a4,28(a0)
	c.sw	a4,24(a5)
	c.mv	a0,s1
	jal	ra,000000002300649E
	c.bnez	a0,000000002300BD30

l2300BD0E:
	lw	a0,s1,+000002D0
	c.li	a1,00000000

l2300BD14:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	jal	zero,000000002300BBB4

l2300BD2A:
	c.li	a1,00000000
	c.mv	a0,s0
	c.j	000000002300BD14

l2300BD30:
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

;; sm_connect_ind: 2300BD44
;;   Called from:
;;     2300BED2 (in sm_supplicant_deauth_cfm)
;;     2300C052 (in sm_auth_send)
;;     2300C1EE (in sm_assoc_req_send)
;;     2300C2CC (in sm_auth_handler)
;;     2300C328 (in sm_auth_handler)
;;     2300C488 (in sm_assoc_rsp_handler)
;;     2300C4DC (in sm_deauth_handler)
;;     2300C56E (in sm_handle_supplicant_result)
;;     2301E7FC (in sm_rsp_timeout_ind_handler)
;;     2301E862 (in scanu_start_cfm_handler)
;;     2301E9E4 (in scanu_join_cfm_handler)
;;     2301EA04 (in scanu_join_cfm_handler)
;;     2301ED4E (in mm_set_vif_state_cfm_handler)
;;     2301EEDC (in mm_sta_add_cfm_handler)
sm_connect_ind proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	lui	s2,0004201C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s5,00000088
	c.swsp	s7,00000084
	addi	a5,s2,-00000428
	lw	s5,a5,+00000000
	c.lw	a5,4(s0)
	lw	s7,a5,+00000014
	lbu	s3,s5,+0000003D
	addi	a5,zero,+000005D8
	lui	s4,0004201A
	add	a5,s3,a5
	addi	s1,s4,+00000410
	c.li	a2,00000006
	c.mv	s6,a0
	sb	s3,s0,+00000009
	addi	a0,s0,+00000002
	addi	s2,s2,-00000428
	addi	s4,s4,+00000410
	c.add	s1,a5
	addi	a1,s1,+00000378
	jal	ra,0000000023070C7C
	lbu	a5,s1,+00000060
	lui	a0,00023075
	c.mv	a1,s0
	sb	a5,s0,+0000000A
	c.lw	s1,64(a2)
	addi	a0,a0,+0000023C
	jal	ra,0000000023052118
	c.lw	s1,64(a5)
	sb	zero,s0,+0000000B
	c.beqz	a5,000000002300BE54

l2300BDBC:
	c.lw	s1,64(a5)
	lbu	a5,a5,+00000004
	sb	a5,s0,+00000336
	c.lw	s1,64(a5)
	lhu	a5,a5,+00000006
	sh	a5,s0,+00000338
	c.lw	s1,64(a5)
	lhu	a5,a5,+00000008
	sw	a5,s0,+0000033C
	c.lw	s1,64(a5)
	lhu	a5,a5,+0000000A
	sw	a5,s0,+00000340
	c.lw	s1,64(a5)
	lbu	a5,a5,+00000005
	sb	a5,s0,+0000033A

l2300BDEE:
	addi	a5,zero,+000005D8
	add	a5,s3,a5
	c.li	a3,00000000
	c.add	a5,s4
	lw	a4,a5,+000003E0
	c.andi	a4,00000001
	sb	a4,s0,+0000000C
	c.beqz	a4,000000002300BE0A

l2300BE06:
	lbu	a3,a5,+000003C1

l2300BE0A:
	sb	a3,s0,+0000000D
	sb	zero,s0,+00000008
	bne	s6,zero,000000002300BE6A

l2300BE16:
	c.li	a1,00000000
	c.li	a0,00000006
	jal	ra,000000002300E902

l2300BE1E:
	lw	a0,s2,+00000000
	c.addi	a0,FFFFFFF4
	jal	ra,000000002300E860
	sw	zero,s2,+00000000
	sb	zero,s2,+00000011
	sh	s6,s0,+00000000
	c.mv	a0,s0
	jal	ra,000000002300E7D4
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	sw	zero,s2,+00000004
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.addi16sp	00000030
	c.jr	ra

l2300BE54:
	sb	zero,s0,+00000336
	sh	zero,s0,+00000338
	sw	zero,s0,+0000033C
	sw	zero,s0,+00000340
	sb	zero,s0,+0000033A
	c.j	000000002300BDEE

l2300BE6A:
	c.li	a1,00000008
	c.li	a0,00000006
	jal	ra,000000002300E902
	lui	a0,00023075
	c.mv	a2,s7
	addi	a1,s5,+00000001
	addi	a0,a0,+0000025C
	jal	ra,0000000023052118
	blt	s7,zero,000000002300BEA2

l2300BE88:
	lui	a0,00023075
	addi	a0,a0,+00000288
	jal	ra,0000000023052118
	c.mv	a1,s7
	c.mv	a0,s5
	jal	ra,000000002300B1C2
	c.li	a5,FFFFFFFF
	sw	a5,s2,+00000014

l2300BEA2:
	addi	a0,zero,+000005D8
	add	a0,s3,a0
	c.add	a0,s4
	jal	ra,000000002300B58E
	c.j	000000002300BE1E

;; sm_supplicant_deauth_cfm: 2300BEB2
sm_supplicant_deauth_cfm proc
	slli	a5,a1,00000008
	c.li	a0,00000008
	blt	a5,zero,000000002300BED2

l2300BEBC:
	lui	a0,00023075
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000003F8
	c.swsp	ra,00000084
	jal	ra,0000000023052118
	c.lwsp	a2,00000020
	c.li	a0,00000008
	c.addi	sp,00000010

l2300BED2:
	jal	zero,000000002300BD44

;; sm_auth_send: 2300BED6
;;   Called from:
;;     2300C2B2 (in sm_auth_handler)
;;     2301EDE6 (in me_set_active_cfm_handler)
sm_auth_send proc
	c.addi16sp	FFFFFFD0
	lui	a5,0004201C
	c.swsp	s4,0000000C
	lw	s4,a5,-00000428
	c.swsp	s2,00000010
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s7,00000084
	lbu	a5,s4,+0000003D
	addi	a4,zero,+000005D8
	lui	s2,0004201A
	add	a5,a5,a4
	addi	s2,s2,+00000410
	c.mv	s5,a0
	c.mv	s6,a1
	addi	a1,zero,+00000100
	c.add	s2,a5
	lw	a5,s2,+000003A4
	lbu	s7,s2,+00000060
	lbu	a0,a5,+00000002
	sltu	a0,zero,a0
	jal	ra,0000000023006372
	beq	a0,zero,000000002300C03C

l2300BF28:
	c.mv	s0,a0
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,000000002300563C
	c.lw	s0,104(s1)
	addi	a5,zero,-00000050
	lui	s3,00042019
	sb	a5,s1,+0000014C
	addi	a5,zero,+000001B0
	add	s7,s7,a5
	addi	s3,s3,-000000E0
	sb	zero,s1,+0000014D
	sb	zero,s1,+0000014E
	sb	zero,s1,+0000014F
	c.li	a2,00000006
	addi	a0,s1,+00000150
	c.add	s3,s7
	c.addi	s3,0000001E
	c.mv	a1,s3
	jal	ra,0000000023070C7C
	addi	a1,s2,+00000050
	c.li	a2,00000006
	addi	a0,s1,+00000156
	jal	ra,0000000023070C7C
	c.li	a2,00000006
	c.mv	a1,s3
	addi	a0,s1,+0000015C
	jal	ra,0000000023070C7C
	jal	ra,000000002300B570
	sb	a0,s1,+00000162
	c.srli	a0,00000008
	sb	a0,s1,+00000163
	lbu	a5,s2,+00000057
	addi	s1,s1,+0000014C
	sb	a5,s0,+0000002F
	lbu	a5,s2,+00000060
	sb	zero,s0,+0000005E
	sb	zero,s0,+00000060
	sb	a5,s0,+00000030
	lbu	a4,s4,+0000003B
	c.li	a5,00000001
	c.li	s2,00000018
	bne	a4,a5,000000002300BFD0

l2300BFB8:
	c.li	a5,00000003
	bne	s5,a5,000000002300BFD0

l2300BFBE:
	c.li	a2,00000018
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002300CF22
	lbu	a5,s0,+0000005E
	addi	s2,a5,+00000018

l2300BFD0:
	lbu	a1,s4,+0000003B
	c.mv	a2,s5
	c.mv	a4,s6
	c.li	a3,00000000
	add	a0,s1,s2
	jal	ra,000000002301CEA8
	lbu	a5,s0,+00000060
	c.lw	s0,108(a4)
	sw	s0,s0,+000002D0
	c.add	a5,s2
	c.add	a0,a5
	lui	a5,0002300B
	addi	a5,a5,+00000642
	sw	a5,s0,+000002CC
	c.lw	a4,20(a5)
	c.li	a1,00000003
	c.addi	a5,FFFFFFFF
	c.add	a5,a0
	c.addi	a0,00000004
	c.sw	a4,28(a0)
	c.sw	a4,24(a5)
	c.mv	a0,s0
	jal	ra,000000002300649E
	c.lui	a0,00002000
	c.li	a1,00000006
	addi	a0,a0,-000007FA
	lui	a2,00000032
	jal	ra,000000002300EC82
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.li	a1,00000005
	c.li	a0,00000006
	c.addi16sp	00000030
	jal	zero,000000002300E902

l2300C03C:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.li	a0,00000001
	c.addi16sp	00000030
	jal	zero,000000002300BD44

;; sm_assoc_req_send: 2300C056
;;   Called from:
;;     2300C276 (in sm_auth_handler)
;;     2301EDDC (in me_set_active_cfm_handler)
sm_assoc_req_send proc
	c.addi16sp	FFFFFFC0
	c.swsp	s7,0000008C
	lui	s7,0004201C
	c.swsp	s1,00000098
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s6,00000010
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	s10,00000008
	addi	s7,s7,-00000428
	lw	s6,s7,+00000000
	addi	s4,zero,+000005D8
	lui	s5,0004201A
	lbu	s2,s6,+0000003D
	addi	s1,s5,+00000410
	addi	a1,zero,+00000100
	add	s4,s2,s4
	c.add	s1,s4
	lw	a5,s1,+000003A4
	lbu	s9,s1,+00000060
	lbu	a0,a5,+00000002
	sltu	a0,zero,a0
	jal	ra,0000000023006372
	beq	a0,zero,000000002300C1EC

l2300C0AE:
	c.mv	s0,a0
	c.mv	a1,a0
	c.mv	a0,s1
	lw	s8,s7,+00000004
	jal	ra,000000002300563C
	lbu	a5,s7,+00000011
	c.lw	s0,104(s1)
	addi	s5,s5,+00000410
	c.li	s7,00000000
	addi	s10,s1,+0000014C
	c.beqz	a5,000000002300C0DA

l2300C0CE:
	lui	s7,0004201C
	addi	a5,zero,+00000020
	addi	s7,s7,-00000410

l2300C0DA:
	sb	a5,s1,+0000014C
	addi	a5,zero,+000001B0
	add	s9,s9,a5
	lui	s3,00042019
	addi	s3,s3,-000000E0
	c.li	a2,00000006
	sb	zero,s1,+0000014D
	sb	zero,s1,+0000014E
	sb	zero,s1,+0000014F
	addi	a0,s1,+00000150
	c.add	s3,s9
	c.addi	s3,0000001E
	c.mv	a1,s3
	jal	ra,0000000023070C7C
	addi	a5,zero,+000005D8
	add	s2,s2,a5
	c.li	a2,00000006
	addi	a0,s1,+00000156
	c.add	s2,s5
	addi	a1,s2,+00000050
	jal	ra,0000000023070C7C
	c.li	a2,00000006
	c.mv	a1,s3
	addi	a0,s1,+0000015C
	jal	ra,0000000023070C7C
	jal	ra,000000002300B570
	sb	a0,s1,+00000162
	c.srli	a0,00000008
	sb	a0,s1,+00000163
	lbu	a3,s2,+00000057
	addi	a1,s4,+00000358
	addi	a5,sp,+0000000A
	c.addi4spn	a4,0000000C
	c.mv	a6,s6
	c.mv	a2,s7
	c.add	a1,s5
	addi	a0,s10,+00000018
	jal	ra,000000002301CF0C
	lbu	a5,s2,+00000057
	c.lw	s0,108(a4)
	c.lwsp	a2,000000A4
	sb	a5,s0,+0000002F
	lbu	a5,s2,+00000060
	sw	s0,s0,+000002D0
	sub	a3,a3,s8
	sb	a5,s0,+00000030
	lui	a5,0002300B
	addi	a5,a5,+00000642
	sw	a5,s0,+000002CC
	c.lw	a4,20(a5)
	c.addi	a5,00000017
	c.add	a5,a0
	c.addi	a0,0000001C
	c.sw	a4,24(a5)
	c.sw	a4,28(a0)
	lhu	a4,sp,+0000000A
	c.mv	a5,s8
	c.add	a4,s8

l2300C194:
	bne	a5,a4,000000002300C1DC

l2300C198:
	lhu	a5,sp,+0000000A
	c.li	a1,00000003
	c.mv	a0,s0
	sh	a5,s8,+0000000E
	jal	ra,000000002300649E
	c.lui	a0,00002000
	c.li	a1,00000006
	addi	a0,a0,-000007FA
	lui	a2,00000032
	jal	ra,000000002300EC82
	c.li	a1,00000006
	c.li	a0,00000006
	jal	ra,000000002300E902

l2300C1C0:
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
	c.lwsp	a6,0000004C
	c.addi16sp	00000040
	c.jr	ra

l2300C1DC:
	add	a2,a3,a5
	lbu	a2,a2,+00000000
	c.addi	a5,00000001
	sb	a2,a5,+00000013
	c.j	000000002300C194

l2300C1EC:
	c.li	a0,00000004
	jal	ra,000000002300BD44
	c.j	000000002300C1C0

;; sm_assoc_done: 2300C1F4
;;   Called from:
;;     2300C3C4 (in sm_assoc_rsp_handler)
sm_assoc_done proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	a5,0004201C
	c.mv	s1,a0
	c.li	a1,00000000
	c.li	a3,00000004
	c.li	a2,00000006
	c.li	a0,0000001E
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lw	s0,a5,-00000428
	jal	ra,000000002300E768
	c.li	a4,00000001
	sh	s1,a0,+00000000
	sb	a4,a0,+00000002
	lbu	a4,s0,+0000003D
	sb	a4,a0,+00000003
	jal	ra,000000002300E7D4
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a1,00000007
	c.li	a0,00000006
	c.addi	sp,00000010
	jal	zero,000000002300E902

;; sm_auth_handler: 2300C238
;;   Called from:
;;     2301EC1E (in rxu_mgt_ind_handler)
sm_auth_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s0,00000004
	addi	s1,a0,+0000001C
	c.mv	s0,a0
	c.lui	a0,00002000
	c.li	a1,00000006
	addi	a0,a0,-000007FA
	c.swsp	ra,00000084
	jal	ra,000000002300EDB6
	lbu	a1,s1,+00000005
	lbu	a5,s1,+00000004
	c.slli	a1,08
	c.or	a1,a5
	c.bnez	a1,000000002300C2F0

l2300C260:
	lbu	a5,s0,+0000001D
	lbu	a4,s0,+0000001C
	c.slli	a5,08
	c.or	a5,a4
	c.bnez	a5,000000002300C27A

l2300C26E:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002300C056

l2300C27A:
	c.li	a4,00000001
	bne	a5,a4,000000002300C32C

l2300C280:
	lbu	a5,s1,+00000003
	lbu	a4,s1,+00000002
	c.slli	a5,08
	c.or	a5,a4
	c.li	a4,00000004
	beq	a5,a4,000000002300C26E

l2300C292:
	c.li	a4,00000002
	bne	a5,a4,000000002300C2CA

l2300C298:
	lhu	a1,s0,+00000000
	addi	a5,zero,+00000087
	bgeu	a5,a1,000000002300C2B6

l2300C2A4:
	addi	a1,s0,+00000024
	c.li	a0,00000003

l2300C2AA:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002300BED6

l2300C2B6:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,00023075
	addi	a0,a0,+000001DC
	c.addi	sp,00000010
	jal	zero,0000000023052118

l2300C2CA:
	c.li	a0,00000003
	jal	ra,000000002300BD44
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+00000374
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000768
	c.addi	sp,00000010
	jal	zero,0000000023013280

l2300C2F0:
	lui	a5,0004201C
	lw	a5,a5,-00000428
	c.li	a4,00000001
	lbu	a3,a5,+0000003B
	bne	a3,a4,000000002300C312

l2300C302:
	lbu	a4,a5,+00000140
	c.beqz	a4,000000002300C312

l2300C308:
	sb	zero,a5,+0000003B
	c.li	a1,00000000
	c.li	a0,00000001
	c.j	000000002300C2AA

l2300C312:
	lui	a0,00023075
	addi	a0,a0,+00000204
	jal	ra,0000000023052118
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a0,00000002
	c.addi	sp,00000010
	jal	zero,000000002300BD44

l2300C32C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; sm_assoc_rsp_handler: 2300C336
;;   Called from:
;;     2301EC40 (in rxu_mgt_ind_handler)
sm_assoc_rsp_handler proc
	c.addi16sp	FFFFFFC0
	lui	a5,0004201C
	c.swsp	s2,00000018
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s5,00000090
	c.swsp	ra,0000009C
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	addi	a5,a5,-00000428
	lw	s6,a5,+00000004
	c.lw	a5,0(a5)
	addi	a4,zero,+000005D8
	lui	s1,0004201A
	lbu	s7,a5,+0000003D
	addi	s2,a0,+0000001C
	c.mv	s5,a0
	add	a4,s7,a4
	addi	a5,s1,+00000410
	c.lui	a0,00002000
	c.li	a1,00000006
	addi	a0,a0,-000007FA
	sb	zero,sp,+0000000E
	c.add	a5,a4
	lbu	s4,a5,+00000060
	jal	ra,000000002300EDB6
	lbu	s0,s2,+00000003
	lbu	a5,s2,+00000002
	c.slli	s0,08
	c.or	s0,a5
	c.bnez	s0,000000002300C478

l2300C396:
	lhu	a4,s5,+00000000
	c.li	a5,00000005
	addi	s1,s1,+00000410
	bgeu	a5,a4,000000002300C3AC

l2300C3A4:
	addi	s0,a4,-00000006
	c.slli	s0,10
	c.srli	s0,00000010

l2300C3AC:
	lbu	a0,s2,+00000005
	lbu	a5,s2,+00000004
	addi	a1,zero,+000005D8
	c.slli	a0,08
	c.or	a0,a5
	c.slli	a0,12
	c.srli	a0,00000012
	add	s3,s7,a1
	jal	ra,000000002300C1F4
	addi	a4,zero,+000001B0
	lui	a0,00042019
	addi	a0,a0,-000000E0
	add	a4,s4,a4
	c.add	a0,a4
	jal	ra,0000000023007C34
	add	a0,s1,s3
	lw	a5,a0,+000003A4
	addi	a2,sp,+0000000E
	addi	a1,sp,+0000000F
	lbu	a4,a5,+00000004
	lbu	a5,a0,+000003DC
	c.sub	a4,a5
	sb	a4,sp,+0000000F
	jal	ra,000000002300557E
	lhu	a3,s6,+0000000E
	addi	a5,s6,+00000014
	c.li	a4,00000000
	c.add	a3,a5

l2300C40C:
	bne	s0,a4,000000002300C464

l2300C410:
	addi	a5,zero,+000005D8
	add	a5,s7,a5
	sh	s0,s6,+00000010
	c.lui	a3,00013000
	addi	a3,a3,-00000600
	c.add	a5,s1
	lw	a4,a5,+000003E8
	c.and	a4,a3
	c.beqz	a4,000000002300C44E

l2300C42C:
	lbu	a2,a5,+0000037E
	addi	a4,s3,+00000050
	addi	a3,s3,+00000378
	addi	a1,s3,+0000037F
	lui	a0,0004201C
	c.add	a4,s1
	c.add	a3,s1
	c.add	a1,s1
	addi	a0,a0,-00000728
	jal	ra,000000002300F2A4

l2300C44E:
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

l2300C464:
	add	a5,s5,a4
	lbu	a2,a5,+00000022
	add	a5,a3,a4
	c.addi	a4,00000001
	sb	a2,a5,+00000000
	c.j	000000002300C40C

l2300C478:
	lui	a0,00023075
	c.mv	a1,s0
	addi	a0,a0,+000001A8
	jal	ra,0000000023052118
	c.li	a0,00000005
	jal	ra,000000002300BD44
	c.j	000000002300C44E

;; sm_deauth_handler: 2300C48E
;;   Called from:
;;     2301EC6E (in rxu_mgt_ind_handler)
sm_deauth_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	lui	a5,0004201C
	lbu	s1,a0,+00000008
	c.mv	s2,a0
	c.li	a0,00000006
	lw	s0,a5,-00000428
	jal	ra,000000002300EA02
	c.li	a5,00000008
	bne	a0,a5,000000002300C4C6

l2300C4B4:
	c.li	s3,00000002

l2300C4B6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s3
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2300C4C6:
	c.li	a0,00000006
	jal	ra,000000002300EA02
	c.beqz	a0,000000002300C4E4

l2300C4CE:
	lbu	a4,s0,+0000003D
	lbu	a5,s2,+00000008
	bne	a4,a5,000000002300C4B4

l2300C4DA:
	c.li	a0,00000006
	jal	ra,000000002300BD44
	c.li	s3,00000000
	c.j	000000002300C4B6

l2300C4E4:
	addi	a5,zero,+000005D8
	add	s1,s1,a5
	lui	s0,0004201A
	addi	s0,s0,+00000410
	c.li	s3,00000000
	c.add	s0,s1
	lbu	a5,s0,+00000058
	c.beqz	a5,000000002300C4B6

l2300C4FE:
	lbu	s1,s2,+0000001D
	lbu	a5,s2,+0000001C
	c.li	a1,00000008
	c.li	a0,00000006
	c.slli	s1,08
	c.or	s1,a5
	jal	ra,000000002300E902
	lui	a0,00023075
	c.mv	a1,s1
	addi	a0,a0,+000002B8
	jal	ra,0000000023052118
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002300BBB4
	c.j	000000002300C4B6

;; sm_handle_supplicant_result: 2300C52A
;;   Called from:
;;     2300FA82 (in keyMgmtKeyGroupTxDone.isra.1)
;;     2301046E (in keyMgmtStaRsnSecuredTimeoutHandler)
sm_handle_supplicant_result proc
	addi	a4,zero,+000001B0
	add	a4,a0,a4
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	lui	s3,00042019
	addi	a5,s3,-000000E0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.add	a5,a4
	lbu	s6,a5,+0000001A
	c.bnez	a1,000000002300C572

l2300C554:
	c.li	a4,00000002
	sb	a4,a5,+00000031
	c.li	a0,00000000

l2300C55C:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	jal	zero,000000002300BD44

l2300C572:
	c.li	a5,0000000F
	c.mv	s4,a1
	addi	s3,s3,-000000E0
	c.mv	s5,a0
	bne	a1,a5,000000002300C58C

l2300C580:
	lui	a0,00023075
	addi	a0,a0,+0000037C
	jal	ra,0000000023052118

l2300C58C:
	addi	a5,zero,+000005D8
	add	a5,s6,a5
	lui	s2,0004201A
	addi	s2,s2,+00000410
	addi	a1,zero,+00000100
	c.add	s2,a5
	lw	a5,s2,+000003A4
	lbu	a0,a5,+00000002
	sltu	a0,zero,a0
	jal	ra,0000000023006372
	c.mv	s1,a0
	c.beqz	a0,000000002300C652

l2300C5B6:
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,000000002300563C
	c.lw	s1,104(s0)
	addi	a5,zero,-00000040
	c.li	a2,00000006
	sb	a5,s0,+0000014C
	addi	a5,zero,+000001B0
	add	a5,s5,a5
	sb	zero,s0,+0000014D
	sb	zero,s0,+0000014E
	sb	zero,s0,+0000014F
	addi	a0,s0,+00000150
	c.add	s3,a5
	c.addi	s3,0000001E
	c.mv	a1,s3
	jal	ra,0000000023070C7C
	c.li	a2,00000006
	addi	a1,s2,+00000050
	addi	a0,s0,+00000156
	jal	ra,0000000023070C7C
	c.li	a2,00000006
	c.mv	a1,s3
	addi	a0,s0,+0000015C
	jal	ra,0000000023070C7C
	jal	ra,000000002300B570
	sb	a0,s0,+00000162
	lui	a5,0002300C
	c.srli	a0,00000008
	sb	a0,s0,+00000163
	addi	a5,a5,-0000014E
	sw	a5,s1,+000002CC
	c.mv	a1,s4
	sw	s2,s1,+000002D0
	sb	s6,s1,+0000002F
	sb	s5,s1,+00000030
	addi	a0,s0,+00000164
	jal	ra,000000002301CEFE
	c.lw	s1,108(a4)
	c.li	a1,00000003
	c.lw	a4,20(a5)
	c.addi	a5,00000017
	c.add	a5,a0
	c.addi	a0,0000001C
	c.sw	a4,28(a0)
	c.sw	a4,24(a5)
	c.mv	a0,s1
	jal	ra,000000002300649E
	c.bnez	a0,000000002300C656

l2300C64E:
	c.li	a0,00000009
	c.j	000000002300C55C

l2300C652:
	c.li	a0,0000000A
	c.j	000000002300C55C

l2300C656:
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

;; txu_cntrl_sec_hdr_append: 2300C66A
;;   Called from:
;;     2300C8AE (in txu_cntrl_frame_build)
;;     2300CF6C (in txu_cntrl_protect_mgmt_frame)
txu_cntrl_sec_hdr_append proc
	lbu	a5,a0,+00000030
	addi	a3,zero,+000001B0
	lui	a4,00042019
	add	a5,a5,a3
	addi	a4,a4,-000000E0
	lbu	a6,a0,+0000002F
	c.add	a4,a5
	lw	a5,a4,+000000AC
	c.lw	a5,0(a5)
	c.beqz	a5,000000002300C70E

l2300C68C:
	addi	a7,zero,+000005D8
	add	a6,a6,a7
	lui	a3,0004201A
	addi	a3,a3,+00000410
	c.add	a3,a6
	lw	a3,a3,+000005C4
	c.andi	a3,00000002
	c.beqz	a3,000000002300C6C4

l2300C6A6:
	lhu	a6,a0,+00000020
	slli	a3,a6,00000008
	srli	a6,a6,00000008
	or	a3,a3,a6
	lhu	a6,a4,+00000038
	slli	a4,a3,00000010
	c.srli	a4,00000010
	beq	a6,a4,000000002300C70E

l2300C6C4:
	lbu	a4,a5,+00000060
	c.li	a3,00000001
	beq	a4,a3,000000002300C712

l2300C6CE:
	c.beqz	a4,000000002300C6DC

l2300C6D0:
	c.li	a3,00000002
	beq	a4,a3,000000002300C75A

l2300C6D6:
	c.li	a3,00000003
	bne	a4,a3,000000002300C6F6

l2300C6DC:
	lhu	a4,a0,+00000022
	c.addi	a1,FFFFFFFC
	sh	a4,a1,+00000000
	lbu	a4,a5,+00000061
	lhu	a3,a0,+00000024
	c.slli	a4,0E
	c.or	a4,a3
	sh	a4,a1,+00000002

l2300C6F6:
	c.beqz	a2,000000002300C770

l2300C6F8:
	c.lw	a0,84(a4)

l2300C6FA:
	c.lw	a4,12(a3)
	lbu	a5,a5,+00000062
	lui	a2,00000100
	addi	a2,a2,-00000400
	c.and	a3,a2
	c.or	a5,a3
	c.sw	a4,12(a5)

l2300C70E:
	c.mv	a0,a1
	c.jr	ra

l2300C712:
	lhu	a6,a0,+00000022
	c.lui	t1,00002000
	c.lui	a7,00008000
	or	a3,a6,t1
	addi	a7,a7,-00000100
	and	a3,a3,a7
	srli	a6,a6,00000008
	or	a3,a3,a6
	c.addi	a1,FFFFFFF8
	sh	a3,a1,+00000000
	lbu	a3,a5,+00000061
	lbu	a4,a0,+00000022
	c.slli	a3,0E
	c.or	a4,a3
	or	a4,a4,t1

l2300C744:
	sh	a4,a1,+00000002
	lhu	a4,a0,+00000024
	sh	a4,a1,+00000004
	lhu	a4,a0,+00000026
	sh	a4,a1,+00000006
	c.j	000000002300C6F6

l2300C75A:
	lhu	a4,a0,+00000022
	c.addi	a1,FFFFFFF8
	c.lui	a3,00002000
	sh	a4,a1,+00000000
	lbu	a4,a5,+00000061
	c.slli	a4,0E
	c.or	a4,a3
	c.j	000000002300C744

l2300C770:
	c.lw	a0,104(a4)
	addi	a4,a4,+000000F0
	c.j	000000002300C6FA

;; txu_cntrl_sechdr_len_compute: 2300C778
;;   Called from:
;;     2300CCB0 (in txu_cntrl_push)
;;     2300CF38 (in txu_cntrl_protect_mgmt_frame)
txu_cntrl_sechdr_len_compute proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a5,a0,+00000030
	addi	a6,zero,+000001B0
	lui	a4,00042019
	add	a5,a5,a6
	addi	a4,a4,-000000E0
	lbu	a2,a0,+0000002F
	c.li	s0,00000000
	c.add	a5,a4
	lw	a5,a5,+000000AC
	c.lw	a5,0(a5)
	sw	zero,a1,+00000000
	c.beqz	a5,000000002300C82E

l2300C7A6:
	addi	a7,zero,+000005D8
	add	a2,a2,a7
	lui	a3,0004201A
	addi	a3,a3,+00000410
	c.add	a3,a2
	lw	a2,a3,+000005C4
	c.andi	a2,00000002
	c.beqz	a2,000000002300C7E6

l2300C7C0:
	lbu	a3,a0,+00000030
	lhu	a2,a0,+00000020
	c.li	s0,00000000
	add	a3,a3,a6
	c.add	a4,a3
	slli	a3,a2,00000008
	c.srli	a2,00000008
	c.or	a3,a2
	lhu	a2,a4,+00000038
	slli	a4,a3,00000010
	c.srli	a4,00000010
	beq	a2,a4,000000002300C82E

l2300C7E6:
	lbu	a4,a5,+00000060
	c.li	a3,00000001
	beq	a4,a3,000000002300C838

l2300C7F0:
	c.beqz	a4,000000002300C800

l2300C7F2:
	c.li	a3,00000002
	beq	a4,a3,000000002300C868

l2300C7F8:
	c.li	a3,00000003
	c.li	s0,00000000
	bne	a4,a3,000000002300C82E

l2300C800:
	c.li	a4,00000004
	c.sw	a1,0(a4)
	lhu	a4,a0,+00000032
	c.li	s0,00000004
	c.andi	a4,00000001
	c.bnez	a4,000000002300C82E

l2300C80E:
	c.lw	a5,72(a4)
	c.lw	a5,76(a2)
	addi	a1,a5,+00000048
	addi	a3,a4,+00000001
	sltu	a4,a3,a4
	c.add	a4,a2
	c.sw	a5,72(a3)
	c.sw	a5,76(a4)
	c.li	a2,00000004
	addi	a0,a0,+00000022
	jal	ra,0000000023070C7C

l2300C82E:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2300C838:
	c.li	a4,0000000C

l2300C83A:
	c.sw	a1,0(a4)
	lhu	a4,a0,+00000032
	c.andi	a4,00000001
	c.bnez	a4,000000002300C864

l2300C844:
	c.lw	a5,72(a4)
	c.lw	a5,76(a2)
	addi	a1,a5,+00000048
	addi	a3,a4,+00000001
	sltu	a4,a3,a4
	c.add	a4,a2
	c.sw	a5,72(a3)
	c.sw	a5,76(a4)
	c.li	a2,00000006
	addi	a0,a0,+00000022
	jal	ra,0000000023070C7C

l2300C864:
	c.li	s0,00000008
	c.j	000000002300C82E

l2300C868:
	c.li	a4,00000008
	c.j	000000002300C83A

;; txu_cntrl_frame_build: 2300C86C
;;   Called from:
;;     2301C41C (in txl_buffer_alloc)
txu_cntrl_frame_build proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lhu	a4,a0,+00000020
	c.mv	s0,a0
	slli	a5,a4,00000008
	c.srli	a4,00000008
	c.or	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	addi	a4,zero,+000005FF
	bgeu	a4,a5,000000002300C8AA

l2300C88C:
	c.lui	a5,FFFFB000
	c.addi	a1,FFFFFFF8
	addi	a5,a5,-00000556
	sh	a5,a1,+00000000
	c.li	a5,00000003
	sh	a5,a1,+00000002
	sh	zero,a1,+00000004
	lhu	a5,a0,+00000020
	sh	a5,a1,+00000006

l2300C8AA:
	c.li	a2,00000001
	c.mv	a0,s0
	jal	ra,000000002300C66A
	lbu	a3,s0,+00000030
	addi	a4,zero,+000001B0
	lui	a1,00042019
	add	a4,a3,a4
	addi	a5,a1,-000000E0
	lbu	t1,s0,+0000002E
	lbu	a6,s0,+0000002F
	addi	a1,a1,-000000E0
	c.add	a5,a4
	lw	a5,a5,+000000AC
	addi	a4,zero,+000000FF
	lw	a7,a5,+00000000
	addi	a5,a0,-0000001A
	bne	t1,a4,000000002300C8EC

l2300C8E8:
	addi	a5,a0,-00000018

l2300C8EC:
	lhu	a4,s0,+00000032
	addi	a0,a5,+00000018
	c.li	a2,00000000
	andi	a4,a4,+00000100
	c.beqz	a4,000000002300C900

l2300C8FC:
	c.addi	a5,FFFFFFFA
	c.mv	a2,a5

l2300C900:
	addi	a4,zero,+000000FF
	beq	t1,a4,000000002300CA7E

l2300C908:
	addi	a4,zero,-00000080
	sb	a4,a5,+00000000
	sb	zero,a5,+00000001
	lbu	a4,s0,+0000002E
	sh	a4,a0,+00000000
	lhu	a4,s0,+0000002A
	c.slli	a4,04
	c.slli	a4,10
	c.srli	a4,00000010
	sb	a4,a5,+00000016
	c.srli	a4,00000008
	sb	a4,a5,+00000017
	lhu	a4,s0,+00000032
	andi	a4,a4,+00000200
	c.beqz	a4,000000002300C946

l2300C93A:
	lhu	a4,a0,+00000000
	ori	a4,a4,+00000010
	sh	a4,a0,+00000000

l2300C946:
	lbu	a4,a5,+00000001
	lbu	a0,a5,+00000000
	c.slli	a4,08
	c.or	a4,a0
	ori	a0,a4,+00000008
	sb	a0,a5,+00000000
	c.srli	a0,00000008
	sb	a0,a5,+00000001
	lhu	t1,s0,+00000032
	lui	a0,0004201A
	addi	a0,a0,+00000410
	slli	t3,t1,00000014
	bge	t3,zero,000000002300CA90

l2300C974:
	andi	a4,a4,-00000301
	ori	a4,a4,+00000008

l2300C97C:
	sb	a4,a5,+00000000
	c.srli	a4,00000008
	sb	a4,a5,+00000001

l2300C986:
	lhu	a4,s0,+00000032
	c.andi	a4,00000004
	c.beqz	a4,000000002300C9AC

l2300C98E:
	lbu	a4,a5,+00000001
	lbu	t1,a5,+00000000
	c.slli	a4,08
	or	a4,a4,t1
	c.lui	t1,00002000
	or	a4,a4,t1
	sb	a4,a5,+00000000
	c.srli	a4,00000008
	sb	a4,a5,+00000001

l2300C9AC:
	addi	a4,zero,+000005D8
	add	a4,a6,a4
	addi	t1,a4,+00000050
	c.add	t1,a0
	lhu	t3,t1,+00000000
	sh	t3,a5,+0000000A
	lhu	t3,t1,+00000002
	sh	t3,a5,+0000000C
	lhu	t1,t1,+00000004
	addi	t3,zero,+00000100
	sh	t1,a5,+0000000E
	lbu	t1,a5,+00000001
	c.slli	t1,08
	andi	t1,t1,+00000300
	bne	t1,t3,000000002300CAC2

l2300C9E4:
	addi	a4,zero,+000001B0
	add	a3,a3,a4
	c.addi	a3,0000001E
	c.add	a3,a1
	lhu	a4,a3,+00000000
	sh	a4,a5,+00000004
	lhu	a4,a3,+00000002
	sh	a4,a5,+00000006
	lhu	a4,a3,+00000004
	sh	a4,a5,+00000008
	lhu	a4,s0,+00000014
	sh	a4,a5,+00000010
	lhu	a4,s0,+00000016
	sh	a4,a5,+00000012
	lhu	a4,s0,+00000018

l2300CA1C:
	sh	a4,a5,+00000014

l2300CA20:
	beq	a7,zero,000000002300CA76

l2300CA24:
	addi	a4,zero,+000005D8
	add	a6,a6,a4
	c.add	a0,a6
	lw	a4,a0,+000005C4
	c.andi	a4,00000002
	c.beqz	a4,000000002300CA5C

l2300CA36:
	lhu	a3,s0,+00000020
	addi	a2,zero,+000001B0
	slli	a4,a3,00000008
	c.srli	a3,00000008
	c.or	a4,a3
	lbu	a3,s0,+00000030
	c.slli	a4,10
	c.srli	a4,00000010
	add	a3,a3,a2
	c.add	a1,a3
	lhu	a3,a1,+00000038
	beq	a3,a4,000000002300CA76

l2300CA5C:
	lbu	a4,a5,+00000001
	lbu	a3,a5,+00000000
	c.slli	a4,08
	c.or	a4,a3
	c.lui	a3,00004000
	c.or	a4,a3
	sb	a4,a5,+00000000
	c.srli	a4,00000008
	sb	a4,a5,+00000001

l2300CA76:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2300CA7E:
	sb	zero,a5,+00000000
	sb	zero,a5,+00000001
	sb	zero,a5,+00000016
	sb	zero,a5,+00000017
	c.j	000000002300C946

l2300CA90:
	andi	t1,t1,+00000100
	beq	t1,zero,000000002300CA9E

l2300CA98:
	ori	a4,a4,+00000308
	c.j	000000002300C97C

l2300CA9E:
	addi	t1,zero,+000005D8
	add	t1,a6,t1
	c.add	t1,a0
	lbu	t1,t1,+00000056
	bne	t1,zero,000000002300CAB6

l2300CAB0:
	ori	a4,a4,+00000108
	c.j	000000002300C97C

l2300CAB6:
	c.li	t3,00000002
	bne	t1,t3,000000002300C986

l2300CABC:
	ori	a4,a4,+00000208
	c.j	000000002300C97C

l2300CAC2:
	addi	t3,zero,+00000200
	bne	t1,t3,000000002300CAF8

l2300CACA:
	lhu	a4,s0,+00000014
	sh	a4,a5,+00000004
	lhu	a4,s0,+00000016
	sh	a4,a5,+00000006
	lhu	a4,s0,+00000018
	sh	a4,a5,+00000008
	lhu	a4,s0,+0000001A
	sh	a4,a5,+00000010
	lhu	a4,s0,+0000001C
	sh	a4,a5,+00000012
	lhu	a4,s0,+0000001E
	c.j	000000002300CA1C

l2300CAF8:
	bne	t1,zero,000000002300CB30

l2300CAFC:
	lhu	a3,s0,+00000014
	addi	a4,a4,+00000378
	c.add	a4,a0
	sh	a3,a5,+00000004
	lhu	a3,s0,+00000016
	sh	a3,a5,+00000006
	lhu	a3,s0,+00000018
	sh	a3,a5,+00000008
	lhu	a3,a4,+00000000
	sh	a3,a5,+00000010
	lhu	a3,a4,+00000002
	sh	a3,a5,+00000012
	lhu	a4,a4,+00000004
	c.j	000000002300CA1C

l2300CB30:
	addi	a4,zero,+000001B0
	add	a4,a3,a4
	c.addi	a4,0000001E
	c.add	a4,a1
	lhu	a3,a4,+00000000
	sh	a3,a2,+00000004
	lhu	a3,a4,+00000002
	sh	a3,a2,+00000006
	lhu	a4,a4,+00000004
	sh	a4,a2,+00000008
	lhu	a4,s0,+00000014
	sh	a4,a2,+00000010
	lhu	a4,s0,+00000016
	sh	a4,a2,+00000012
	lhu	a4,s0,+00000018
	sh	a4,a2,+00000014
	lhu	a4,s0,+0000001A
	sh	a4,a2,+00000018
	lhu	a4,s0,+0000001C
	sh	a4,a2,+0000001A
	lhu	a4,s0,+0000001E
	sh	a4,a2,+0000001C
	c.j	000000002300CA20

;; txu_cntrl_push: 2300CB86
;;   Called from:
;;     230137CE (in ipc_emb_tx_evt)
txu_cntrl_push proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	lbu	s1,a0,+0000002F
	addi	a5,zero,+000005D8
	c.mv	s0,a0
	add	s1,s1,a5
	lui	a5,0004201A
	addi	a5,a5,+00000410
	c.mv	s3,a1
	c.add	s1,a5
	c.mv	a0,s1
	jal	ra,0000000023005782
	beq	a0,zero,000000002300CD0E

l2300CBB6:
	lhu	a4,s0,+00000032
	andi	a5,a4,+00000008
	c.beqz	a5,000000002300CC16

l2300CBC0:
	c.andi	a4,00000010
	c.beqz	a4,000000002300CC04

l2300CBC4:
	lui	a5,00042048
	addi	a5,a5,-000005D4

l2300CBCC:
	c.sw	s0,84(a5)
	c.lw	s0,84(a5)
	c.lw	a5,20(a0)
	jal	ra,0000000023005618
	c.lw	s0,84(a5)
	c.sw	a5,36(a0)
	c.lw	s0,84(a5)
	c.sw	a5,40(a0)
	c.lw	s0,84(a5)
	c.sw	a5,44(a0)
	c.lw	s0,84(a5)
	c.sw	a5,48(a0)
	sb	zero,s0,+0000005E
	sb	zero,s0,+00000060

l2300CBEE:
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,0000000023005DF2

l2300CBF6:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2300CC04:
	c.lw	s1,64(a5)
	lbu	a5,a5,+00000004
	c.bnez	a5,000000002300CBC4

l2300CC0C:
	lui	a5,00042047
	addi	a5,a5,+000000B4
	c.j	000000002300CBCC

l2300CC16:
	lbu	a5,s0,+00000030
	addi	a3,zero,+000001B0
	lhu	a1,s0,+00000020
	add	a3,a5,a3
	lui	s2,00042019
	addi	a2,s2,-000000E0
	addi	s2,s2,-000000E0
	c.add	a2,a3
	slli	a3,a1,00000008
	c.srli	a1,00000008
	lbu	a6,a2,+00000031
	c.or	a3,a1
	lhu	a2,a2,+00000038
	c.slli	a3,10
	c.srli	a3,00000010
	bne	a2,a3,000000002300CD0A

l2300CC4C:
	andi	a4,a4,-00000101
	sh	a4,s0,+00000032

l2300CC54:
	c.li	a4,00000002
	beq	a6,a4,000000002300CC62

l2300CC5A:
	c.li	a4,00000001
	bne	a6,a4,000000002300CD0E

l2300CC60:
	c.beqz	a0,000000002300CD0E

l2300CC62:
	lbu	a3,s0,+0000002E
	addi	a4,zero,+000000FF
	c.li	s1,00000018
	beq	a3,a4,000000002300CCA0

l2300CC70:
	lhu	a4,s0,+00000032
	c.li	s1,0000001A
	c.andi	a4,00000001
	c.bnez	a4,000000002300CCA0

l2300CC7A:
	addi	a4,zero,+000000D8
	add	a5,a5,a4
	c.add	a5,a3
	addi	a5,a5,+00000078
	c.slli	a5,01
	c.add	a5,s2
	lhu	a3,a5,+00000008
	addi	a4,a3,+00000001
	c.slli	a4,14
	c.srli	a4,00000014
	sh	a4,a5,+00000008
	sh	a3,s0,+0000002A

l2300CCA0:
	lhu	a5,s0,+00000032
	andi	a5,a5,+00000100
	c.beqz	a5,000000002300CCAC

l2300CCAA:
	c.addi	s1,00000006

l2300CCAC:
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,000000002300C778
	lhu	a4,s0,+00000020
	addi	a3,zero,+00000600
	c.add	a0,s1
	slli	a5,a4,00000008
	c.srli	a4,00000008
	c.or	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	a4,00000000
	bgeu	a3,a5,000000002300CCD4

l2300CCD0:
	c.addi	a0,00000008
	c.li	a4,00000008

l2300CCD4:
	lhu	a5,s0,+0000000C
	sb	a0,s0,+0000005E
	lbu	a0,s0,+00000030
	sh	a5,s0,+0000005C
	c.lwsp	a2,000000E4
	sb	a4,s0,+0000005F
	c.li	a1,00000000
	sb	a5,s0,+00000060
	jal	ra,0000000023007AAE
	lbu	a0,s0,+00000030
	addi	a5,zero,+000001B0
	add	a0,a0,a5
	c.add	a0,s2
	jal	ra,0000000023007AB2
	c.sw	s0,84(a0)
	c.j	000000002300CBEE

l2300CD0A:
	c.li	a0,00000000
	c.j	000000002300CC54

l2300CD0E:
	jal	ra,0000000023005962
	csrrci	zero,mstatus,00000008
	lui	a1,000C0000
	c.mv	a2,s3
	c.mv	a0,s0
	jal	ra,000000002301C55E
	csrrsi	zero,mstatus,00000008
	c.li	a0,00000000
	c.j	000000002300CBF6

;; txu_cntrl_tkip_mic_append: 2300CD2A
;;   Called from:
;;     23005B3A (in txl_payload_handle_backup)
txu_cntrl_tkip_mic_append proc
	lbu	a4,a0,+00000030
	addi	a3,zero,+000001B0
	lui	a5,00042019
	add	a4,a4,a3
	addi	a5,a5,-000000E0
	c.add	a5,a4
	lw	a5,a5,+000000AC
	c.lw	a5,0(a1)
	beq	a1,zero,000000002300CE6A

l2300CD4A:
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	lbu	a5,a1,+00000060
	c.li	a4,00000001
	c.lw	a0,104(s0)
	beq	a5,a4,000000002300CDA0

l2300CD64:
	c.beqz	a5,000000002300CD6C

l2300CD66:
	c.li	a4,00000003
	bne	a5,a4,000000002300CE34

l2300CD6C:
	addi	a5,s0,+00000038

l2300CD70:
	c.lw	a5,4(a4)
	c.bnez	a4,000000002300CE5A

l2300CD74:
	addi	a4,s0,+0000012C
	c.sw	a5,4(a4)
	addi	a5,s0,+00000140
	sw	a5,s0,+00000134
	addi	a5,s0,+00000143
	sw	a5,s0,+00000138
	lui	a5,000CAFF0
	addi	a5,a5,-00000522
	sw	a5,s0,+0000012C
	sw	zero,s0,+0000013C
	sw	zero,s0,+00000130
	c.j	000000002300CE34

l2300CDA0:
	addi	a5,s0,+00000038

l2300CDA4:
	c.lw	a5,4(a4)
	c.bnez	a4,000000002300CE44

l2300CDA8:
	addi	a4,s0,+0000012C
	lbu	s3,a0,+0000005E
	lbu	s4,a0,+0000005F
	c.sw	a5,4(a4)
	addi	a5,s0,+00000140
	sw	a5,s0,+00000134
	addi	a5,s0,+0000014B
	sw	a5,s0,+00000138
	lui	a5,000CAFF0
	addi	a5,a5,-00000522
	sw	a5,s0,+0000012C
	sw	zero,s0,+0000013C
	sw	zero,s0,+00000130
	lbu	a4,a0,+0000002E
	lw	s2,a0,+00000068
	addi	a3,a0,+0000001A
	addi	a2,a0,+00000014
	c.mv	s1,a0
	addi	a1,a1,+00000050
	c.mv	a0,sp
	jal	ra,0000000023007564
	addi	a1,s0,+0000014C
	lbu	a2,s1,+0000005F
	sub	a1,a1,s4
	c.add	a1,s3
	c.mv	a0,sp
	jal	ra,0000000023007616
	lw	s0,s2,+0000003C

l2300CE0E:
	c.beqz	s0,000000002300CE5E

l2300CE10:
	c.lw	s0,4(s1)
	c.bnez	s1,000000002300CE48

l2300CE14:
	c.mv	a0,sp
	jal	ra,000000002300775A
	c.lw	s0,8(a2)
	c.li	a5,00000008

l2300CE1E:
	add	a4,sp,s1
	lbu	a3,a4,+00000000
	add	a4,a2,s1
	c.addi	s1,00000001
	sb	a3,a4,+00000000
	bne	s1,a5,000000002300CE1E

l2300CE34:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2300CE44:
	c.mv	a5,a4
	c.j	000000002300CDA4

l2300CE48:
	c.lw	s0,12(a2)
	c.lw	s0,8(a1)
	c.mv	a0,sp
	c.addi	a2,00000001
	c.sub	a2,a1
	jal	ra,0000000023007616
	c.lw	s0,4(s0)
	c.j	000000002300CE0E

l2300CE5A:
	c.mv	a5,a4
	c.j	000000002300CD70

l2300CE5E:
	c.mv	a0,sp
	jal	ra,000000002300775A
	lw	a5,zero,+00000008
	c.ebreak

l2300CE6A:
	c.jr	ra

;; txu_cntrl_cfm: 2300CE6C
;;   Called from:
;;     2301C61A (in txl_cfm_evt)
;;     2301C692 (in txl_cfm_flush)
txu_cntrl_cfm proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.lw	a0,108(a5)
	c.mv	s0,a0
	lw	s2,a0,+00000010
	c.lw	a5,0(s1)
	lhu	a5,a0,+00000032
	andi	a4,a5,+00000008
	c.beqz	a4,000000002300CEF6

l2300CE8A:
	andi	a5,a5,+00000020
	c.beqz	a5,000000002300CE9E

l2300CE90:
	c.lw	s1,16(a5)
	slli	a4,a5,00000008
	blt	a4,zero,000000002300CE9E

l2300CE9A:
	jal	ra,000000002300A6BC

l2300CE9E:
	lhu	a5,s0,+00000032
	andi	a5,a5,+00000200
	c.beqz	a5,000000002300CEFC

l2300CEA8:
	lbu	a4,s0,+00000030
	addi	a5,zero,+000000FF
	bne	a4,a5,000000002300CECC

l2300CEB4:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+000003A9
	addi	a1,a1,+000002DC
	addi	a0,a0,+0000041C
	jal	ra,000000002301327E

l2300CECC:
	lbu	a0,s0,+00000030
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000017
	jal	ra,000000002300674E

l2300CEDA:
	lbu	a4,s0,+00000030
	addi	a3,zero,+000001B0
	lui	a5,00042019
	add	a4,a4,a3
	addi	a5,a5,-000000E0
	c.add	a5,a4
	sw	zero,a5,+00000034
	c.j	000000002300CEFC

l2300CEF6:
	andi	a5,a5,+00000200
	c.bnez	a5,000000002300CEDA

l2300CEFC:
	c.lw	s1,16(a5)
	ori	a5,a5,+00000001
	c.sw	s1,16(a5)
	addi	a5,zero,+00000101
	sh	a5,s1,+0000000C
	sw	zero,s0,+00000FAC
	c.lw	s1,16(a5)
	sw	a5,s2,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; txu_cntrl_protect_mgmt_frame: 2300CF22
;;   Called from:
;;     2300BFC4 (in sm_auth_send)
txu_cntrl_protect_mgmt_frame proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.mv	s1,a1
	lbu	a1,a0,+0000005E
	c.mv	s0,a0
	c.bnez	a1,000000002300CF7A

l2300CF34:
	c.addi4spn	a1,0000001C
	c.swsp	a2,00000084
	jal	ra,000000002300C778
	c.lwsp	t3,000000E4
	c.lwsp	a2,00000084
	sb	a0,s0,+0000005E
	sb	a5,s0,+00000060

l2300CF48:
	lbu	a5,s1,+00000001
	lbu	a4,s1,+00000000
	add	a1,a2,s1
	c.slli	a5,08
	c.or	a5,a4
	c.lui	a4,00004000
	c.or	a5,a4
	sb	a5,s1,+00000000
	c.srli	a5,00000008
	sb	a5,s1,+00000001
	c.add	a1,a0
	c.li	a2,00000000
	c.mv	a0,s0
	jal	ra,000000002300C66A
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l2300CF7A:
	lbu	a5,s0,+00000060
	c.mv	a0,a1
	c.swsp	a5,0000008C
	c.j	000000002300CF48

;; _aid_list_delete: 2300CF84
;;   Called from:
;;     2300D02E (in apm_sta_delete)
;;     2300D0A2 (in apm_tx_cfm_handler)
_aid_list_delete proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004201C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s6,a0
	addi	s2,a5,-00000408
	c.li	s0,00000000
	addi	s1,a5,-00000408
	c.li	s5,0000000A

l2300CFA8:
	lbu	a5,s2,+0000001E
	c.beqz	a5,000000002300CFEC

l2300CFAE:
	addi	s4,s2,+00000018
	c.li	a2,00000006
	c.mv	a1,s6
	c.mv	a0,s4
	jal	ra,0000000023070BF4
	c.mv	s3,a0
	c.bnez	a0,000000002300CFEC

l2300CFC0:
	c.li	a2,00000006
	c.li	a1,00000000
	c.mv	a0,s4
	jal	ra,0000000023070EB8
	c.li	a5,00000007
	add	s0,s0,a5
	c.add	s0,s1
	sb	zero,s0,+0000001E

l2300CFD6:
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

l2300CFEC:
	c.addi	s0,00000001
	c.addi	s2,00000007
	bne	s0,s5,000000002300CFA8

l2300CFF4:
	c.li	s3,FFFFFFFF
	c.j	000000002300CFD6

;; apm_sta_delete: 2300CFF8
;;   Called from:
;;     2300D726 (in apm_sta_fw_delete)
;;     2300DB2E (in apm_auth_handler)
;;     2300DF46 (in apm_deauth_handler)
;;     2300DF70 (in apm_disassoc_handler)
;;     2300DFF2 (in apm_sta_remove)
apm_sta_delete proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	c.lui	a0,00001000
	c.swsp	s3,00000084
	c.li	a3,00000002
	c.mv	s3,a1
	c.li	a2,00000007
	c.li	a1,00000005
	addi	a0,a0,+00000409
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	jal	ra,000000002300E768
	c.mv	s0,a0
	c.lui	a0,00002000
	c.li	a3,00000001
	c.li	a2,00000007
	c.li	a1,0000000D
	addi	a0,a0,-000003F7
	jal	ra,000000002300E768
	c.mv	s2,a0
	c.mv	a0,s3
	jal	ra,000000002300CF84
	addi	a0,s1,+00000008
	andi	a0,a0,+000000FF
	jal	ra,00000000230022CC
	lui	a5,0004201C
	addi	a5,a5,-00000408
	lbu	a4,a5,+00000016
	c.mv	a0,s2
	c.addi	a4,FFFFFFFF
	sb	a4,a5,+00000016
	sb	s1,s2,+00000000
	jal	ra,000000002300E7D4
	sb	s1,s0,+00000000
	sb	zero,s0,+00000001
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,000000002300E7D4

;; apm_tx_cfm_handler: 2300D074
apm_tx_cfm_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	slli	a5,a1,00000008
	c.mv	s0,a0
	bge	a5,zero,000000002300D0A0

l2300D084:
	lhu	a4,a0,+00000044
	c.beqz	a4,000000002300D094

l2300D08A:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,000000002300E7D4

l2300D094:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi	a0,FFFFFFF4
	c.addi16sp	00000020
	jal	zero,000000002300E860

l2300D0A0:
	c.swsp	a1,00000084
	jal	ra,000000002300CF84
	addi	a0,s0,-0000000C
	jal	ra,000000002300E860
	lhu	a2,s0,+00000044
	c.lwsp	a2,00000064
	lui	a0,00023075
	addi	a0,a0,+00000454
	jal	ra,0000000023052118
	lui	a5,0004201C
	addi	a5,a5,-00000408
	lbu	a4,a5,+00000016
	c.addi	a4,FFFFFFFF
	sb	a4,a5,+00000016
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; apm_init: 2300D0DA
;;   Called from:
;;     230074BA (in me_init)
apm_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201C
	c.li	a1,00000000
	addi	a0,s0,-00000408
	addi	a2,zero,+00000060
	c.swsp	ra,00000084
	jal	ra,0000000023070EB8
	c.lui	a5,00001000
	addi	s0,s0,-00000408
	addi	a5,a5,-00000400
	sb	zero,s0,+0000000C
	sh	a5,s0,+00000016
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.li	a0,00000007
	c.addi	sp,00000010
	jal	zero,000000002300E902

;; apm_start_cfm: 2300D112
;;   Called from:
;;     2301F2AA (in mm_bcn_change_cfm_handler)
apm_start_cfm proc
	c.addi16sp	FFFFFFD0
	c.swsp	s6,00000008
	c.mv	s6,a0
	c.lui	a0,00002000
	c.swsp	s4,0000000C
	c.li	a3,00000004
	lui	s4,0004201C
	c.li	a2,00000007
	c.li	a1,0000000D
	addi	a0,a0,-000003FF
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	lw	s2,s4,-00000408
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s5,00000088
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	jal	ra,000000002300E768
	c.mv	s3,a0
	addi	s4,s4,-00000408
	bne	s6,zero,000000002300D1F0

l2300D14C:
	c.li	a3,00000004
	lbu	s5,s2,+00000033
	c.li	a2,00000007
	c.li	a1,00000000
	c.li	a0,0000001E
	jal	ra,000000002300E768
	addi	a4,zero,+000005D8
	addi	s7,s5,+0000000A
	add	s5,s5,a4
	lui	s1,0004201A
	c.li	s8,00000001
	addi	s1,s1,+00000410
	sb	s8,a0,+00000002
	lui	s0,00042019
	addi	s0,s0,-000000E0
	c.add	s1,s5
	lbu	a4,s1,+00000057
	sb	a4,a0,+00000003
	jal	ra,000000002300E7D4
	lw	a5,s2,+0000002C
	c.li	a2,0000000D
	c.mv	a1,s2
	sw	a5,s1,+000005C4
	lhu	a5,s2,+00000030
	sb	zero,s1,+0000034A
	sh	a5,s1,+0000034C
	c.lw	s1,64(a5)
	lbu	a5,a5,+00000017
	sb	a5,s3,+00000002
	lbu	a5,s2,+00000033
	c.addi	a5,0000000A
	sb	a5,s3,+00000003
	addi	a5,zero,+000001B0
	add	s7,s7,a5
	c.add	s0,s7
	addi	a0,s0,+000000B0
	jal	ra,0000000023070C7C
	c.li	a5,00000002
	sb	a5,s0,+00000031
	c.mv	a0,s0
	jal	ra,0000000023007A00
	lbu	a5,s0,+0000011A
	sh	s8,s0,+0000001E
	ori	a5,a5,+00000010
	sb	a5,s0,+0000011A
	lbu	a5,s2,+00000033
	c.addi	a5,0000000A
	sb	a5,s0,+0000001B

l2300D1F0:
	sb	s6,s3,+00000000
	lbu	a5,s2,+00000033
	lui	a2,000004C5
	c.lui	a0,00002000
	sb	a5,s3,+00000001
	c.li	a1,00000007
	addi	a2,a2,-000004C0
	addi	a0,a0,-000003F6
	jal	ra,000000002300EC82
	c.mv	a0,s3
	jal	ra,000000002300E7D4
	addi	a0,s2,-0000000C
	jal	ra,000000002300E860
	c.lwsp	s0,00000114
	sw	zero,s4,+00000000
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.li	a1,00000000
	c.li	a0,00000007
	c.addi16sp	00000030
	jal	zero,000000002300E902

;; apm_send_next_bss_param: 2300D240
;;   Called from:
;;     2300D396 (in apm_set_bss_param)
;;     2301F240 (in me_set_ps_disable_cfm_handler)
;;     2301F274 (in mm_bss_param_setting_handler)
apm_send_next_bss_param proc
	lui	a0,0004201C
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000404
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002300E2FE
	c.mv	s0,a0
	c.bnez	a0,000000002300D26E

l2300D256:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+000000BF
	addi	a1,a1,+000002DC
	addi	a0,a0,+000003EC
	jal	ra,000000002301327E

l2300D26E:
	addi	a0,s0,+0000000C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300E7D4

;; apm_set_bss_param: 2300D27C
;;   Called from:
;;     2301F604 (in apm_start_req_handler)
apm_set_bss_param proc
	c.addi16sp	FFFFFFD0
	lui	a5,0004201C
	c.swsp	s0,00000014
	lw	s0,a5,-00000408
	c.swsp	s1,00000090
	c.lui	s1,00001000
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s8,00000004
	c.swsp	s7,00000084
	c.li	a3,00000002
	c.li	a2,00000007
	c.li	a1,00000005
	addi	a0,s1,+00000413
	lbu	s7,s0,+00000033
	jal	ra,000000002300E768
	c.mv	s2,a0
	c.li	a3,00000007
	c.li	a2,00000007
	c.li	a1,00000000
	c.li	a0,00000018
	jal	ra,000000002300E768
	c.mv	s6,a0
	c.li	a3,00000008
	c.li	a2,00000007
	c.li	a1,00000000
	c.li	a0,00000016
	jal	ra,000000002300E768
	c.mv	s3,a0
	c.li	a3,00000004
	c.li	a2,00000007
	c.li	a1,00000000
	c.li	a0,00000014
	jal	ra,000000002300E768
	c.li	a3,00000002
	c.mv	s5,a0
	c.li	a2,00000007
	c.li	a1,00000005
	addi	a0,s1,+00000411
	jal	ra,000000002300E768
	addi	a5,zero,+000005D8
	add	s7,s7,a5
	lui	s1,0004201A
	c.li	s8,00000001
	addi	s1,s1,+00000410
	sb	s8,s2,+00000000
	addi	a1,s2,-0000000C
	c.mv	s4,a0
	c.add	s1,s7
	lbu	a5,s1,+00000057
	sb	a5,s2,+00000001
	lui	s2,0004201C
	addi	a0,s2,-00000404
	jal	ra,000000002300E282
	c.li	a2,00000006
	addi	a1,s1,+00000050
	c.mv	a0,s6
	jal	ra,0000000023070C7C
	lbu	a5,s0,+00000033
	addi	a1,s6,-0000000C
	addi	a0,s2,-00000404
	sb	a5,s6,+00000006
	jal	ra,000000002300E282
	lbu	a5,s0,+00000010
	c.li	a1,00000001
	c.mv	a0,s0
	sb	a5,s3,+00000005
	jal	ra,0000000023007922
	sw	a0,s3,+00000000
	lbu	a5,s0,+00000033
	addi	a1,s3,-0000000C
	addi	a0,s2,-00000404
	sb	a5,s3,+00000004
	jal	ra,000000002300E282
	lhu	a5,s0,+00000028
	addi	a1,s5,-0000000C
	addi	a0,s2,-00000404
	sh	a5,s5,+00000000
	lbu	a5,s0,+00000033
	sb	a5,s5,+00000002
	jal	ra,000000002300E282
	sb	s8,s4,+00000000
	lbu	a5,s0,+00000033
	addi	a1,s4,-0000000C
	addi	a0,s2,-00000404
	sb	a5,s4,+00000001
	jal	ra,000000002300E282
	jal	ra,000000002300D240
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.li	a1,00000001
	c.li	a0,00000007
	c.addi16sp	00000030
	jal	zero,000000002300E902

;; apm_stop: 2300D3B8
;;   Called from:
;;     2301F31A (in apm_stop_req_handler)
apm_stop proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.lui	s1,00001000
	c.swsp	s0,00000004
	c.li	a3,00000002
	c.mv	s0,a0
	c.li	a2,00000007
	c.li	a1,00000005
	addi	a0,s1,+00000413
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	jal	ra,000000002300E768
	c.mv	s2,a0
	c.li	a3,00000002
	c.li	a2,00000007
	c.li	a1,00000005
	addi	a0,s1,+00000411
	jal	ra,000000002300E768
	c.mv	s1,a0
	c.lui	a0,00002000
	c.li	a1,00000007
	addi	a0,a0,-000003F6
	jal	ra,000000002300EDB6
	sb	zero,s2,+00000000
	lbu	a5,s0,+00000057
	c.mv	a0,s2
	sb	a5,s2,+00000001
	jal	ra,000000002300E7D4
	lbu	a5,s0,+00000058
	c.beqz	a5,000000002300D426

l2300D40A:
	c.li	a3,00000004
	c.li	a2,00000007
	c.li	a1,00000000
	c.li	a0,0000001E
	jal	ra,000000002300E768
	sb	zero,a0,+00000002
	lbu	a4,s0,+00000057
	sb	a4,a0,+00000003
	jal	ra,000000002300E7D4

l2300D426:
	c.lw	s0,64(a5)
	c.beqz	a5,000000002300D432

l2300D42A:
	lbu	a0,s0,+00000057
	jal	ra,000000002301A562

l2300D432:
	sb	zero,s1,+00000000
	lbu	a5,s0,+00000057
	c.mv	a0,s1
	sb	a5,s1,+00000001
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002300E7D4

;; apm_tx_int_ps_check: 2300D44E
;;   Called from:
;;     23005274 (in sta_mgmt_send_postponed_frame)
;;     23005D1C (in txl_cntrl_push_int)
apm_tx_int_ps_check proc
	lbu	a4,a0,+0000002F
	addi	a3,zero,+000005D8
	lui	a5,0004201A
	add	a4,a4,a3
	addi	a5,a5,+00000410
	c.add	a5,a4
	lbu	a4,a5,+00000056
	c.li	a5,00000002
	bne	a4,a5,000000002300D4AC

l2300D46E:
	lbu	a3,a0,+00000030
	c.li	a5,0000000B
	c.li	a4,00000001
	bltu	a5,a3,000000002300D4A8

l2300D47A:
	addi	a2,zero,+000001B0
	add	a3,a3,a2
	lui	a5,00042019
	addi	a5,a5,-000000E0
	c.add	a5,a3
	lbu	a3,a5,+0000001C
	bne	a3,a4,000000002300D4A8

l2300D494:
	c.lw	a5,52(a5)
	c.andi	a5,00000003
	c.bnez	a5,000000002300D4A8

l2300D49A:
	lhu	a5,a0,+00000032
	c.lui	a4,00001000
	c.or	a5,a4
	sh	a5,a0,+00000032
	c.li	a4,00000000

l2300D4A8:
	c.mv	a0,a4
	c.jr	ra

l2300D4AC:
	c.li	a4,00000001
	c.j	000000002300D4A8

;; apm_tx_int_ps_postpone: 2300D4B0
;;   Called from:
;;     23005D8E (in txl_cntrl_push_int)
apm_tx_int_ps_postpone proc
	lhu	a5,a0,+00000032
	slli	a4,a5,00000013
	bge	a4,zero,000000002300D4E8

l2300D4BC:
	lbu	a2,a0,+0000002E
	lui	a4,0002308E
	addi	a6,a4,-00000278
	c.add	a2,a6
	lbu	a3,a1,+000000F2
	lbu	a2,a2,+00000000
	lbu	a5,a1,+00000032
	addi	a4,a4,-00000278
	c.and	a2,a3
	c.beqz	a2,000000002300D4EA

l2300D4DE:
	andi	a2,a5,+00000008
	ori	a5,a5,+00000008
	c.beqz	a2,000000002300D4F4

l2300D4E8:
	c.jr	ra

l2300D4EA:
	andi	a2,a5,+00000002
	c.bnez	a2,000000002300D4E8

l2300D4F0:
	ori	a5,a5,+00000002

l2300D4F4:
	sb	a5,a1,+00000032
	lbu	a5,a0,+0000002E
	c.add	a4,a5
	lbu	a5,a4,+00000000
	c.and	a5,a3
	c.beqz	a5,000000002300D50C

l2300D506:
	c.li	a5,0000000F
	bne	a3,a5,000000002300D4E8

l2300D50C:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a3,00000004
	c.mv	s0,a1
	c.li	a2,00000005
	c.li	a1,00000000
	addi	a0,zero,+00000041
	c.swsp	ra,00000084
	jal	ra,000000002300E768
	lhu	a4,s0,+00000018
	sh	a4,a0,+00000000
	lbu	a4,s0,+0000001A
	sb	a4,a0,+00000003
	c.li	a4,00000001
	sb	a4,a0,+00000002
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300E7D4

;; apm_tx_int_ps_get_postpone: 2300D542
;;   Called from:
;;     23005280 (in sta_mgmt_send_postponed_frame)
apm_tx_int_ps_get_postpone proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	lbu	s2,a0,+00000056
	c.li	a5,00000002
	bne	s2,a5,000000002300D562

l2300D55E:
	c.lw	a1,52(a5)
	c.bnez	a5,000000002300D57E

l2300D562:
	sw	zero,a2,+00000000

l2300D566:
	c.li	s1,00000000

l2300D568:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	c.jr	ra

l2300D57E:
	andi	a4,a5,+00000001
	c.li	s4,00000001
	c.bnez	a4,000000002300D58A

l2300D586:
	c.li	s4,00000004
	c.li	s2,00000008

l2300D58A:
	lbu	a4,a1,+00000032
	and	a4,s2,a4
	c.bnez	a4,000000002300D59A

l2300D594:
	c.li	a5,00000001
	c.sw	a2,0(a5)
	c.j	000000002300D566

l2300D59A:
	lw	s1,a1,+0000019C
	lui	s5,0002308E
	c.addi	a5,FFFFFFFE
	c.mv	s3,a2
	c.mv	s0,a1
	c.li	s6,00000000
	addi	s5,s5,-00000278
	sltiu	a5,a5,+00000001

l2300D5B2:
	c.bnez	s1,000000002300D5D4

l2300D5B4:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+0000016F
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000480
	jal	ra,0000000023013280
	c.li	a5,00000001
	sw	a5,s3,+00000000
	c.j	000000002300D568

l2300D5D4:
	lbu	a4,s1,+0000002E
	lbu	a3,s0,+000000F2
	c.add	a4,s5
	lbu	a4,a4,+00000000
	c.and	a4,a3
	sltiu	a4,a4,+00000001
	bne	a4,a5,000000002300D67A

l2300D5EC:
	c.mv	s6,s1
	c.lw	s1,0(s1)
	c.j	000000002300D5B2

l2300D5F2:
	lw	a5,s6,+00000000

l2300D5F6:
	c.bnez	a5,000000002300D62E

l2300D5F8:
	lbu	a5,s0,+00000032
	xori	s2,s2,-00000001
	and	s2,s2,a5
	sb	s2,s0,+00000032
	and	s2,s2,s4
	beq	s2,zero,000000002300D652

l2300D610:
	c.lw	s1,104(a4)
	lbu	a5,a4,+0000014D
	lbu	a3,a4,+0000014C
	c.slli	a5,08
	c.or	a5,a3
	c.lui	a3,00002000
	c.or	a5,a3
	sb	a5,a4,+0000014C
	c.srli	a5,00000008
	sb	a5,a4,+0000014D
	c.j	000000002300D568

l2300D62E:
	lbu	a4,a5,+0000002E
	c.add	a4,s5
	lbu	a3,a4,+00000000
	lbu	a4,s0,+000000F2
	c.and	a3,a4
	c.lw	s0,52(a4)
	sltiu	a3,a3,+00000001
	c.addi	a4,FFFFFFFE
	sltiu	a4,a4,+00000001
	bne	a3,a4,000000002300D610

l2300D64E:
	c.lw	a5,0(a5)
	c.j	000000002300D5F6

l2300D652:
	c.li	a3,00000004
	c.li	a2,00000005
	c.li	a1,00000000
	addi	a0,zero,+00000041
	jal	ra,000000002300E768
	lhu	a4,s0,+00000018
	sh	a4,a0,+00000000
	lbu	a4,s0,+0000001A
	sb	zero,a0,+00000002
	sb	a4,a0,+00000003
	jal	ra,000000002300E7D4
	c.j	000000002300D568

l2300D67A:
	c.mv	a2,s1
	c.mv	a1,s6
	addi	a0,s0,+0000019C
	jal	ra,000000002300E3DC
	c.lw	s0,52(a5)
	c.andi	a5,00000008
	sltu	a5,zero,a5
	c.addi	a5,00000003
	sb	a5,s1,+0000002E
	bne	s6,zero,000000002300D5F2

l2300D698:
	lw	a5,s0,+0000019C
	c.j	000000002300D5F6

;; apm_tx_int_ps_clear: 2300D69E
;;   Called from:
;;     230028DE (in mm_sta_del)
;;     23004504 (in rxl_cntrl_evt)
;;     2300452A (in rxl_cntrl_evt)
apm_tx_int_ps_clear proc
	lbu	a4,a0,+00000056
	c.li	a5,00000002
	bne	a4,a5,000000002300D710

l2300D6A8:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	s0,zero,+000001B0
	add	s0,a1,s0
	lui	a1,00042019
	addi	a1,a1,-000000E0
	c.li	a2,00000000
	c.swsp	ra,00000084
	c.add	s0,a1
	c.mv	a1,s0
	jal	ra,0000000023005246
	lbu	a5,s0,+00000032
	andi	a4,a5,+0000000A
	c.beqz	a4,000000002300D708

l2300D6D2:
	andi	a5,a5,+000000F5
	sb	a5,s0,+00000032
	c.bnez	a5,000000002300D708

l2300D6DC:
	c.li	a3,00000004
	c.li	a2,00000005
	c.li	a1,00000000
	addi	a0,zero,+00000041
	jal	ra,000000002300E768
	lhu	a4,s0,+00000018
	sh	a4,a0,+00000000
	lbu	a4,s0,+0000001A
	sb	zero,a0,+00000002
	sb	a4,a0,+00000003
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300E7D4

l2300D708:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2300D710:
	c.jr	ra

;; apm_sta_fw_delete: 2300D712
;;   Called from:
;;     2301EF50 (in apm_sta_connect_timeout_ind_handler)
apm_sta_fw_delete proc
	addi	a5,zero,+000001B0
	add	a5,a0,a5
	lui	a1,00042019
	addi	a1,a1,-000000E0
	c.addi	a5,0000001E
	c.add	a1,a5
	jal	zero,000000002300CFF8

;; apm_sta_add: 2300D72A
;;   Called from:
;;     2301292E (in ProcessPWKMsg4)
;;     2301F01E (in apm_sta_add_cfm_handler)
apm_sta_add proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.mv	s2,a0
	c.lui	a0,00002000
	c.li	a3,0000001C
	c.li	a2,00000007
	c.li	a1,0000000D
	addi	a0,a0,-000003F8
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	jal	ra,000000002300E768
	addi	a5,zero,+000001B0
	add	s2,s2,a5
	lui	s0,00042019
	addi	s0,s0,-000000E0
	c.li	a5,00000002
	c.mv	s1,a0
	c.li	a2,00000006
	c.addi	a0,00000004
	c.add	s0,s2
	sb	a5,s0,+00000031
	lw	a5,s0,+000000EC
	addi	a1,s0,+0000001E
	sw	a5,a0,+00000FFC
	jal	ra,0000000023070C7C
	lbu	a5,s0,+0000001B
	c.mv	a0,s1
	sb	a5,s1,+0000000B
	lbu	a5,s0,+0000001A
	sb	a5,s1,+0000000A
	lb	a5,s0,+00000024
	sb	a5,s1,+0000000C
	c.lw	s0,40(a5)
	c.sw	s1,16(a5)
	c.lw	s0,44(a5)
	c.sw	s1,20(a5)
	lbu	a5,s0,+00000030
	sb	a5,s1,+00000018
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002300E7D4

;; apm_send_mlme: 2300D7AC
;;   Called from:
;;     23009FF4 (in rxu_cntrl_frame_handle)
;;     2300DA6A (in apm_probe_req_handler)
;;     2300DB4A (in apm_auth_handler)
;;     2300DC46 (in apm_assoc_req_handler)
;;     2300DF98 (in apm_disassoc_handler)
;;     2300DFE2 (in apm_sta_remove)
apm_send_mlme proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s4,0000000C
	c.mv	s5,a5
	lw	a5,a0,+000003A4
	c.mv	s1,a0
	c.mv	s6,a1
	lbu	a0,a5,+00000002
	addi	a1,zero,+00000100
	c.mv	s7,a2
	sltu	a0,zero,a0
	c.mv	s3,a3
	c.mv	s2,a4
	jal	ra,0000000023006372
	beq	a0,zero,000000002300D8FA

l2300D7E4:
	c.lw	a0,104(s0)
	srli	a5,s6,00000008
	c.mv	a1,s7
	sb	a5,s0,+0000014D
	c.li	a2,00000006
	c.mv	s4,a0
	sb	s6,s0,+0000014C
	sb	zero,s0,+0000014E
	sb	zero,s0,+0000014F
	addi	a0,s0,+00000150
	jal	ra,0000000023070C7C
	addi	s7,s1,+00000050
	c.li	a2,00000006
	c.mv	a1,s7
	addi	a0,s0,+00000156
	jal	ra,0000000023070C7C
	c.li	a2,00000006
	c.mv	a1,s7
	addi	a0,s0,+0000015C
	jal	ra,0000000023070C7C
	lui	a5,0004201A
	addi	a5,a5,+000003A8
	lhu	a4,a5,+00000054
	c.addi	a4,00000001
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000054
	c.slli	a4,04
	c.slli	a4,10
	c.srli	a4,00000010
	sb	a4,s0,+00000162
	c.srli	a4,00000008
	sb	a4,s0,+00000163
	addi	a5,zero,+000000B0
	bne	s6,a5,000000002300D8B2

l2300D852:
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000002
	c.li	a1,00000000
	addi	a0,s0,+00000164
	jal	ra,000000002301CEA8

l2300D862:
	c.addi	a0,00000018
	c.slli	a0,10
	c.srli	a0,00000010

l2300D868:
	lw	a4,s4,+0000006C
	c.li	a1,00000003
	c.lw	a4,20(a5)
	c.addi	a5,FFFFFFFF
	c.add	a5,a0
	c.addi	a0,00000004
	c.sw	a4,28(a0)
	c.sw	a4,24(a5)
	lbu	a5,s1,+00000057
	sb	zero,s4,+0000005E
	sb	zero,s4,+00000060
	sb	a5,s4,+0000002F
	c.li	a5,FFFFFFFF
	sb	a5,s4,+00000030
	sw	s3,s4,+000002CC
	sw	s2,s4,+000002D0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.mv	a0,s4
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	jal	zero,000000002300649E

l2300D8B2:
	addi	a5,zero,+000000C0
	bne	s6,a5,000000002300D8C6

l2300D8BA:
	c.mv	a1,s5
	addi	a0,s0,+00000164
	jal	ra,000000002301CEFE
	c.j	000000002300D862

l2300D8C6:
	addi	a5,zero,+00000050
	bne	s6,a5,000000002300D8DC

l2300D8CE:
	lbu	a1,s1,+00000057
	addi	a0,s0,+00000164
	jal	ra,000000002301D8F2
	c.j	000000002300D862

l2300D8DC:
	andi	s6,s6,-00000021
	c.li	a5,00000010
	c.li	a0,00000018
	bne	s6,a5,000000002300D868

l2300D8E8:
	lbu	a1,s1,+00000057
	c.mv	a3,s2
	c.mv	a2,s5
	addi	a0,s0,+00000164
	jal	ra,000000002301DB32
	c.j	000000002300D862

l2300D8FA:
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

;; apm_embedded_enabled: 2300D910
;;   Called from:
;;     23009B40 (in rxu_mgt_frame_check)
;;     23009C06 (in rxu_mgt_frame_check)
;;     2300D998 (in apm_bcn_set)
;;     2301F478 (in apm_start_req_handler)
apm_embedded_enabled proc
	c.beqz	a0,000000002300D92A

l2300D912:
	lbu	a4,a0,+00000056
	c.li	a5,00000002
	c.li	a0,00000000
	bne	a4,a5,000000002300D926

l2300D91E:
	lui	a5,0004201C
	lbu	a0,a5,-000003F4

l2300D926:
	c.andi	a0,00000001
	c.jr	ra

l2300D92A:
	lui	a5,0004201C
	lbu	a0,a5,-000003F4
	c.jr	ra

;; apm_bcn_set: 2300D934
;;   Called from:
;;     2301F708 (in me_set_active_cfm_handler)
apm_bcn_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	lui	s2,0004201C
	addi	s2,s2,-00000408
	c.swsp	s0,00000004
	lw	s0,s2,+00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lhu	a3,s0,+00000024
	c.li	a2,00000007
	c.li	a1,00000000
	c.addi	a3,0000000C
	c.slli	a3,10
	c.srli	a3,00000010
	addi	a0,zero,+0000003F
	jal	ra,000000002300E768
	c.lw	s0,32(a5)
	c.mv	s1,a0
	c.sw	a0,0(a5)
	lhu	a5,s0,+00000024
	sh	a5,a0,+00000004
	lhu	a5,s0,+00000026
	sh	a5,a0,+00000006
	lbu	a5,s0,+00000032
	sb	a5,a0,+00000008
	lbu	a0,s0,+00000033
	addi	a5,zero,+000005D8
	sb	a0,s1,+00000009
	add	a0,a0,a5
	lui	a5,0004201A
	addi	a5,a5,+00000410
	c.add	a0,a5
	jal	ra,000000002300D910
	lhu	a2,s0,+00000024
	addi	a5,s1,+0000000C
	c.beqz	a0,000000002300D9D4

l2300D9A6:
	lw	a1,s2,+00000010
	c.mv	a0,a5
	jal	ra,0000000023070C7C
	lw	a0,s2,+00000010
	jal	ra,000000002300E696
	sw	zero,s2,+00000010

l2300D9BC:
	c.mv	a0,s1
	jal	ra,000000002300E7D4
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a1,00000002
	c.li	a0,00000007
	c.addi	sp,00000010
	jal	zero,000000002300E902

l2300D9D4:
	addi	a1,s0,+000000A7
	c.mv	a0,a5
	jal	ra,0000000023070C7C
	c.j	000000002300D9BC

;; apm_probe_req_handler: 2300D9E0
;;   Called from:
;;     2301EF9E (in rxu_mgt_ind_handler)
apm_probe_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	lbu	s0,a0,+00000008
	addi	a5,zero,+000000FF
	c.mv	s1,a0
	beq	s0,a5,000000002300DA6E

l2300D9F8:
	addi	a5,zero,+000005D8
	add	s0,s0,a5
	lui	a5,0004201A
	addi	a5,a5,+00000410
	c.add	s0,a5

l2300DA0A:
	lhu	a1,s1,+00000000
	addi	s2,s1,+00000034
	c.li	a2,00000000
	c.addi	a1,FFFFFFE8
	c.slli	a1,10
	c.srli	a1,00000010
	c.mv	a0,s2
	jal	ra,000000002300EEE8
	c.beqz	a0,000000002300DA82

l2300DA22:
	lbu	a5,a0,+00000001
	c.beqz	a5,000000002300DA82

l2300DA28:
	lbu	a2,s0,+0000037E
	bne	a2,a5,000000002300DA76

l2300DA30:
	addi	a1,s0,+0000037F
	c.addi	a0,00000002
	jal	ra,0000000023070BF4
	c.bnez	a0,000000002300DA76

l2300DA3C:
	lhu	a1,s1,+00000000
	c.li	a2,00000003
	c.mv	a0,s2
	c.addi	a1,FFFFFFE8
	c.slli	a1,10
	c.srli	a1,00000010
	jal	ra,000000002300EEE8
	c.bnez	a0,000000002300DA8E

l2300DA50:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	addi	a2,s1,+00000026
	c.lwsp	tp,00000024
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a3,00000000
	addi	a1,zero,+00000050
	c.addi	sp,00000010
	jal	zero,000000002300D7AC

l2300DA6E:
	jal	ra,0000000023007474
	c.mv	s0,a0
	c.bnez	a0,000000002300DA0A

l2300DA76:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2300DA82:
	lui	a5,0004201C
	lbu	a5,a5,-000003F3
	c.beqz	a5,000000002300DA3C

l2300DA8C:
	c.j	000000002300DA76

l2300DA8E:
	lw	a5,s0,+000003A4
	lbu	a1,a0,+00000002
	lbu	a3,a5,+00000002
	lhu	a4,a5,+00000000
	c.bnez	a3,000000002300DAD4

l2300DAA0:
	c.lui	a2,FFFFF000
	addi	a3,a2,+00000694
	c.add	a3,a4
	c.slli	a3,10
	c.srli	a3,00000010
	addi	a0,zero,+00000048
	c.li	a5,00000000
	bltu	a0,a3,000000002300DACE

l2300DAB6:
	c.lui	a3,00001000
	addi	a3,a3,-0000064C
	c.li	a5,0000000E
	beq	a4,a3,000000002300DACE

l2300DAC2:
	addi	a5,a2,+00000699

l2300DAC6:
	c.add	a4,a5
	c.li	a5,00000005
	xor	a5,a4,a5

l2300DACE:
	bne	a1,a5,000000002300DA76

l2300DAD2:
	c.j	000000002300DA50

l2300DAD4:
	c.li	a2,00000001
	c.li	a5,00000000
	bne	a3,a2,000000002300DACE

l2300DADC:
	c.lui	a2,FFFFF000
	addi	a3,a2,-0000038D
	c.add	a3,a4
	c.slli	a3,10
	c.srli	a3,00000010
	addi	a0,zero,+00000334
	bltu	a0,a3,000000002300DACE

l2300DAF0:
	addi	a5,a2,-00000388
	c.j	000000002300DAC6

;; apm_auth_handler: 2300DAF6
;;   Called from:
;;     2301EFB2 (in rxu_mgt_ind_handler)
apm_auth_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	lbu	a5,a0,+00000008
	addi	s2,zero,+000000FF
	beq	a5,s2,000000002300DB4E

l2300DB0C:
	addi	s1,zero,+000005D8
	add	a5,a5,s1
	addi	s0,a0,+00000026
	lui	s1,0004201A
	addi	s1,s1,+00000410
	c.mv	a0,s0
	c.add	s1,a5
	jal	ra,000000002301AD84
	beq	a0,s2,000000002300DB32

l2300DB2C:
	c.mv	a1,s0
	jal	ra,000000002300CFF8

l2300DB32:
	c.mv	a2,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a3,00000000
	addi	a1,zero,+000000B0
	c.addi	sp,00000010
	jal	zero,000000002300D7AC

l2300DB4E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; apm_assoc_req_handler: 2300DB5A
;;   Called from:
;;     2301EFC6 (in rxu_mgt_ind_handler)
apm_assoc_req_handler proc
	c.addi16sp	FFFFFFA0
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	s9,00000098
	c.swsp	s10,00000018
	c.swsp	s11,00000094
	lbu	s8,a0,+00000008
	addi	a5,zero,+000000FF
	beq	s8,a5,000000002300DC4A

l2300DB82:
	c.mv	s1,a0
	c.lui	a0,00001000
	addi	a3,zero,+00000058
	c.li	a2,00000007
	c.mv	s5,a1
	addi	a0,a0,+00000407
	c.li	a1,00000005
	jal	ra,000000002300E768
	addi	a2,zero,+00000058
	c.li	a1,00000000
	c.mv	s0,a0
	addi	s4,s1,+00000026
	jal	ra,0000000023070EB8
	c.li	a2,00000006
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,0000000023070C7C
	lbu	a5,s1,+00000008
	addi	s7,zero,+000005D8
	add	s7,s8,s7
	sb	a5,s0,+00000049
	c.lw	s1,16(a5)
	lui	s3,0004201A
	addi	s6,s3,+00000410
	c.sw	s0,76(a5)
	c.lw	s1,20(a5)
	addi	s3,s3,+00000410
	c.sw	s0,80(a5)
	lb	a5,s1,+00000018
	c.add	s6,s7
	sb	a5,s0,+00000054
	lbu	a5,s1,+0000001B
	sb	a5,s0,+00000055
	lbu	a5,s1,+00000037
	lbu	a4,s1,+00000036
	lhu	s2,s1,+00000000
	c.slli	a5,08
	c.or	a4,a5
	beq	s5,zero,000000002300DC68

l2300DBFC:
	addi	s1,s1,+0000003E
	addi	s2,s2,-00000022

l2300DC04:
	addi	s9,zero,+000005D8
	add	s9,s8,s9
	addi	a5,zero,+00000033
	c.add	s9,s3
	lhu	a3,s9,+00000416
	bltu	a3,a4,000000002300DC2E

l2300DC1A:
	c.slli	s2,10
	srli	s2,s2,00000010
	c.li	a2,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002300EEE8
	c.bnez	a0,000000002300DC70

l2300DC2C:
	c.li	a5,00000001

l2300DC2E:
	lui	a3,0002300D
	c.mv	a4,s0
	addi	a3,a3,+00000074
	c.mv	a2,s4
	addi	a1,zero,+00000030
	bne	s5,zero,000000002300DC44

l2300DC42:
	c.li	a1,00000010

l2300DC44:
	c.mv	a0,s6
	jal	ra,000000002300D7AC

l2300DC4A:
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

l2300DC68:
	addi	s1,s1,+00000038
	c.addi	s2,FFFFFFE4
	c.j	000000002300DC04

l2300DC70:
	lbu	a5,a0,+00000001
	lbu	a2,s9,+0000037E
	bne	a2,a5,000000002300DC2C

l2300DC7C:
	addi	a1,s7,+0000037F
	c.add	a1,s3
	c.addi	a0,00000002
	jal	ra,0000000023070BF4
	c.mv	s7,a0
	c.bnez	a0,000000002300DC2C

l2300DC8C:
	c.li	a2,00000001
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002300EEE8
	c.li	a5,00000012
	c.beqz	a0,000000002300DC2E

l2300DC9A:
	lbu	a5,a0,+00000001
	c.addi4spn	a4,00000010
	c.addi	a0,00000002
	sb	a5,sp,+00000010
	c.mv	s9,a4
	c.li	a3,FFFFFFFF

l2300DCAA:
	c.addi	a5,FFFFFFFF
	c.addi	a4,00000001
	bne	a5,a3,000000002300DE1C

l2300DCB2:
	addi	a2,zero,+00000032
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002300EEE8
	c.beqz	a0,000000002300DCDA

l2300DCC0:
	lbu	a2,sp,+00000010
	lbu	a4,a0,+00000001
	c.li	a5,00000000
	c.addi	a0,00000002

l2300DCCC:
	bne	a4,a5,000000002300DE28

l2300DCD0:
	lbu	a5,sp,+00000010
	c.add	a4,a5
	sb	a4,sp,+00000010

l2300DCDA:
	c.li	a1,00000000
	c.mv	a0,s9
	jal	ra,0000000023007922
	addi	a5,zero,+000005D8
	add	s8,s8,a5
	c.mv	s11,a0
	sb	zero,s0,+00000006
	c.li	s10,00000000
	c.add	s3,s8

l2300DCF4:
	lbu	a5,s3,+000003B0
	bltu	s10,a5,000000002300DE42

l2300DCFC:
	addi	a2,zero,+0000002D
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002300EEE8
	c.beqz	a0,000000002300DD60

l2300DD0A:
	lbu	a5,a0,+00000003
	lbu	a4,a0,+00000002
	addi	a3,s0,+00000027
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s0,+00000014
	lbu	a5,a0,+00000004
	addi	a4,a0,+00000005
	sb	a5,s0,+00000016
	addi	a5,s0,+00000017

l2300DD2E:
	bne	a5,a3,000000002300DE80

l2300DD32:
	lbu	a5,a0,+00000016
	lbu	a4,a0,+00000015
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s0,+00000028
	lbu	a5,a0,+00000018
	lbu	a4,a0,+00000017
	c.slli	a5,08
	c.or	a5,a4
	c.sw	s0,44(a5)
	lbu	a5,a0,+0000001B
	sb	a5,s0,+00000030
	c.lw	s0,64(a5)
	ori	a5,a5,+00000002
	c.sw	s0,64(a5)

l2300DD60:
	lui	a2,00023075
	c.li	a3,00000004
	addi	a2,a2,+00000444
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002300EF04
	c.beqz	a0,000000002300DD90

l2300DD74:
	c.lw	s0,64(a4)
	lbu	a5,a0,+00000008
	ori	a4,a4,+00000001
	c.sw	s0,64(a4)
	andi	a4,a5,+0000000F
	c.srli	a5,00000004
	c.andi	a5,00000006
	sb	a4,s0,+00000046
	sb	a5,s0,+00000047

l2300DD90:
	c.li	a2,00000002
	c.li	a1,00000000
	c.mv	a0,s9
	jal	ra,0000000023070EB8
	c.li	a2,00000001
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,0000000023070EB8
	addi	a2,zero,+00000030
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002300EEE8
	c.beqz	a0,000000002300DE8E

l2300DDB2:
	lhu	a5,sp,+00000010
	ori	a5,a5,+00000020
	sh	a5,sp,+00000010
	lbu	a5,sp,+0000000C
	ori	a5,a5,+00000008

l2300DDC6:
	sb	a5,sp,+0000000C

l2300DDCA:
	lui	s1,0004201C
	lw	a0,s1,-0000063C
	c.beqz	a0,000000002300DDFC

l2300DDD4:
	lbu	a4,sp,+00000010
	addi	a5,zero,+0000002E
	andi	a4,a4,+00000028
	beq	a4,zero,000000002300DC2E

l2300DDE4:
	c.addi4spn	a2,0000000C
	c.mv	a1,s9
	c.li	a4,00000000
	c.li	a3,00000000
	jal	ra,0000000023012B3E
	lw	a0,s1,-0000063C
	c.mv	a2,s0
	c.li	a1,00000000
	jal	ra,00000000230131C8

l2300DDFC:
	lui	s2,0004201C
	addi	a5,s2,-00000408
	lbu	a4,a5,+00000016
	lbu	a5,a5,+00000017
	sh	zero,s0,+00000044
	addi	s3,s2,-00000408
	bltu	a4,a5,000000002300DEB8

l2300DE18:
	c.li	a5,00000011
	c.j	000000002300DC2E

l2300DE1C:
	lbu	a2,a0,+00000000
	c.addi	a0,00000001
	sb	a2,a4,+00000000
	c.j	000000002300DCAA

l2300DE28:
	add	a3,a0,a5
	lbu	a1,a3,+00000000
	addi	a6,sp,+00000011
	add	a3,a2,a5
	c.add	a3,a6
	sb	a1,a3,+00000000
	c.addi	a5,00000001
	c.j	000000002300DCCC

l2300DE42:
	add	s8,s3,s10
	lbu	a0,s8,+000003B1
	jal	ra,000000002300786E
	sra	a0,s11,a0
	c.andi	a0,00000001
	c.beqz	a0,000000002300DE74

l2300DE56:
	lbu	a5,s0,+00000006
	lbu	a3,s8,+000003B1
	add	a4,s0,a5
	sb	a3,a4,+00000007
	c.addi	a5,00000001
	sb	a5,s0,+00000006

l2300DE6C:
	c.addi	s10,00000001
	andi	s10,s10,+000000FF
	c.j	000000002300DCF4

l2300DE74:
	lb	a5,s8,+000003B1
	bge	a5,zero,000000002300DE6C

l2300DE7C:
	c.li	a5,00000012
	c.j	000000002300DC2E

l2300DE80:
	lbu	a2,a4,+00000000
	c.addi	a5,00000001
	c.addi	a4,00000001
	sb	a2,a5,+00000FFF
	c.j	000000002300DD2E

l2300DE8E:
	lui	a2,00023075
	c.li	a3,00000004
	addi	a2,a2,+0000044C
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002300EF04
	c.beqz	a0,000000002300DDCA

l2300DEA2:
	lhu	a5,sp,+00000010
	ori	a5,a5,+00000008
	sh	a5,sp,+00000010
	lbu	a5,sp,+0000000C
	ori	a5,a5,+00000004
	c.j	000000002300DDC6

l2300DEB8:
	addi	s2,s2,-00000408
	c.li	s1,FFFFFFFF
	c.li	s9,FFFFFFFF
	c.li	s8,0000000A

l2300DEC2:
	lbu	a5,s2,+0000001E
	c.beqz	a5,000000002300DEFA

l2300DEC8:
	c.li	a2,00000006
	c.mv	a1,s4
	addi	a0,s2,+00000018
	jal	ra,0000000023070BF4
	c.bnez	a0,000000002300DF00

l2300DED6:
	c.li	a5,00000007
	add	a5,s7,a5
	c.li	a4,00000001
	c.mv	s1,s7
	c.add	a5,s3
	sb	a4,a5,+0000001E

l2300DEE6:
	lbu	a5,s3,+00000016
	c.addi	s1,00000001
	sh	s1,s0,+00000044
	c.addi	a5,00000001
	sb	a5,s3,+00000016
	c.li	a5,00000000
	c.j	000000002300DC2E

l2300DEFA:
	bne	s1,s9,000000002300DF00

l2300DEFE:
	c.mv	s1,s7

l2300DF00:
	c.addi	s7,00000001
	c.addi	s2,00000007
	bne	s7,s8,000000002300DEC2

l2300DF08:
	c.li	a5,FFFFFFFF
	beq	s1,a5,000000002300DE18

l2300DF0E:
	c.li	s2,00000007
	add	s2,s1,s2
	c.li	a2,00000006
	c.mv	a1,s4
	addi	a0,s2,+00000018
	c.add	a0,s3
	jal	ra,0000000023070C7C
	c.add	s2,s3
	c.li	a5,00000001
	sb	a5,s2,+0000001E
	c.j	000000002300DEE6

;; apm_deauth_handler: 2300DF2C
;;   Called from:
;;     2301EFD4 (in rxu_mgt_ind_handler)
apm_deauth_handler proc
	lbu	a4,a0,+00000008
	addi	a5,zero,+000000FF
	c.mv	a1,a0
	beq	a4,a5,000000002300DF4A

l2300DF3A:
	lbu	a0,a0,+00000007
	beq	a0,a5,000000002300DF4A

l2300DF42:
	addi	a1,a1,+00000026
	jal	zero,000000002300CFF8

l2300DF4A:
	c.jr	ra

;; apm_disassoc_handler: 2300DF4C
;;   Called from:
;;     2301EFE2 (in rxu_mgt_ind_handler)
apm_disassoc_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	lbu	s0,a0,+00000008
	addi	a5,zero,+000000FF
	beq	s0,a5,000000002300DF9C

l2300DF5E:
	c.mv	a2,a0
	lbu	a0,a0,+00000007
	beq	a0,a5,000000002300DF9C

l2300DF68:
	addi	a2,a2,+00000026
	c.mv	a1,a2
	c.swsp	a2,00000084
	jal	ra,000000002300CFF8
	addi	a0,zero,+000005D8
	add	s0,s0,a0
	lui	a0,0004201A
	addi	a0,a0,+00000410
	c.lwsp	a2,00000084
	c.lwsp	t3,00000020
	c.li	a5,00000002
	c.li	a4,00000000
	c.li	a3,00000000
	addi	a1,zero,+000000C0
	c.add	a0,s0
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	jal	zero,000000002300D7AC

l2300DF9C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; apm_beacon_handler: 2300DFA4
;;   Called from:
;;     2301EFF0 (in rxu_mgt_ind_handler)
apm_beacon_handler proc
	c.jr	ra

;; apm_sta_remove: 2300DFA6
;;   Called from:
;;     2301F068 (in apm_sta_del_req_handler)
apm_sta_remove proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	s0,zero,+000001B0
	add	s0,a1,s0
	lui	a5,00042019
	addi	a5,a5,-000000E0
	lui	a6,0004201A
	addi	a6,a6,+00000410
	c.swsp	s1,00000080
	c.li	a4,00000000
	c.mv	s1,a1
	c.li	a3,00000000
	addi	a1,zero,+000000C0
	c.addi	s0,0000001E
	c.add	s0,a5
	addi	a5,zero,+000005D8
	add	a0,a0,a5
	c.mv	a2,s0
	c.li	a5,00000002
	c.swsp	ra,00000084
	c.add	a0,a6
	jal	ra,000000002300D7AC
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002300CFF8

;; cfg_api_element_dump: 2300DFF6
;;   Called from:
;;     2301F7FC (in dump_cfg_entries)
cfg_api_element_dump proc
	c.addi	a1,FFFFFFFF
	andi	a1,a1,+000000FF
	c.li	a5,00000007
	bltu	a5,a1,000000002300E17E

l2300E002:
	lui	a5,00023075
	addi	a5,a5,+00000488
	c.slli	a1,02
	c.add	a1,a5
	c.lw	a1,0(a5)
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a2
	c.jr	a5
2300E01A                               83 47 05 00 9D EB           .G....
2300E020 B7 56 07 23 93 86 C6 4C 37 66 08 23 13 06 86 CD .V.#...L7f.#....
2300E030 BD 45 22 85 EF 40 64 13 63 53 05 00 01 45 22 95 .E"..@d.cS...E".
2300E040 23 00 05 00 37 55 07 23 13 05 45 4D B2 40 22 44 #...7U.#..EM.@"D
2300E050 41 01 82 80 B7 56 07 23 93 86 46 4C F1 B7 83 06 A....V.#..FL....
2300E060 05 00 37 A6 08 23 13 06 86 9B BD 45 22 85 EF 40 ..7..#.....E"..@
2300E070 C4 0F 63 53 05 00 01 45 22 95 23 00 05 00 37 55 ..cS...E".#...7U
2300E080 07 23 13 05 C5 4D D9 B7 83 46 05 00 37 46 07 23 .#...M...F..7F.#
2300E090 13 06 06 55 BD 45 22 85 EF 40 24 0D 63 53 05 00 ...U.E"..@$.cS..
2300E0A0 01 45 22 95 23 00 05 00 37 55 07 23 13 05 45 4E .E".#...7U.#..EN
2300E0B0 71 BF 83 16 05 00 37 A6 08 23 13 06 86 9B BD 45 q.....7..#.....E
2300E0C0 22 85 EF 40 84 0A 63 53 05 00 01 45 22 95 23 00 "..@..cS...E".#.
2300E0D0 05 00 37 55 07 23 13 05 C5 4E 8D BF 83 56 05 00 ..7U.#...N...V..
2300E0E0 37 46 07 23 13 06 06 55 BD 45 22 85 EF 40 E4 07 7F.#...U.E"..@..
2300E0F0 63 53 05 00 01 45 22 95 23 00 05 00 37 55 07 23 cS...E".#...7U.#
2300E100 13 05 45 4F A1 B7 14 41 37 56 07 23 13 06 46 51 ..EO...A7V.#..FQ
2300E110 BD 45 22 85 EF 40 64 05 63 53 05 00 01 45 22 95 .E"..@d.cS...E".
2300E120 23 00 05 00 37 55 07 23 13 05 C5 4F 05 B7 14 41 #...7U.#...O...A
2300E130 37 D6 08 23 13 06 06 99 BD 45 22 85 EF 40 E4 02 7..#.....E"..@..
2300E140 63 53 05 00 01 45 22 95 23 00 05 00 37 55 07 23 cS...E".#...7U.#
2300E150 13 05 45 50 E5 BD 14 41 37 D6 08 23 13 06 06 99 ..EP...A7..#....
2300E160 BD 45 22 85 EF 40 64 00 63 53 05 00 01 45 2A 94 .E"..@d.cS...E*.
2300E170 37 55 07 23 23 00 04 00 13 05 C5 50 C1 BD       7U.##......P.. 

l2300E17E:
	c.li	a0,00000000
	c.jr	ra

;; cfg_api_element_general_set: 2300E182
cfg_api_element_general_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a1
	c.lw	a0,8(a1)
	c.mv	s1,a0
	lui	a0,00023075
	addi	a0,a0,+00000518
	jal	ra,0000000023052118
	lhu	a5,s1,+00000006
	c.li	a4,00000006
	c.addi	a5,FFFFFFFF
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a4,a5,000000002300E1C6

l2300E1AC:
	lui	a4,00023075
	addi	a4,a4,+000004A8
	c.slli	a5,02
	c.add	a5,a4
	c.lw	a5,0(a4)
	c.lw	s1,12(a5)
	c.jr	a4
2300E1BE                                           03 07               ..
2300E1C0 04 00 23 80 E7 00                               ..#...         

l2300E1C6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra
2300E1D2       03 47 04 00 F5 B7 03 17 04 00 23 90 E7 00   .G........#...
2300E1E0 DD B7 03 57 04 00 DD BF 18 40 98 C3 E9 BF       ...W.....@.... 

;; cfg_api_element_general_get: 2300E1EE
cfg_api_element_general_get proc
	c.li	a0,00000000
	c.jr	ra

;; cfg_api_element_set: 2300E1F2
;;   Called from:
;;     2301F88A (in cfg_start_req_handler)
cfg_api_element_set proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	lui	s0,0002308E
	lui	s1,0002308E
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.mv	s2,a0
	c.mv	s3,a1
	c.mv	s4,a2
	c.mv	s5,a3
	c.mv	s6,a4
	addi	s0,s0,+000003E0
	addi	s1,s1,+00000434
	lui	s7,00023075

l2300E224:
	bltu	s0,s1,000000002300E22E

l2300E228:
	bne	s0,s1,000000002300E244

l2300E22C:
	c.j	000000002300E24E

l2300E22E:
	c.lw	s0,0(a5)
	bne	a5,s2,000000002300E274

l2300E234:
	lhu	a5,s0,+00000004
	bne	a5,s3,000000002300E274

l2300E23C:
	lhu	a4,s0,+00000006
	bne	a4,s4,000000002300E266

l2300E244:
	c.lw	s0,16(a5)
	c.mv	a2,s6
	c.mv	a1,s5
	c.mv	a0,s0
	c.jalr	a5

l2300E24E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l2300E266:
	c.mv	a3,s3
	c.mv	a2,s2
	c.mv	a1,s4
	addi	a0,s7,+00000534
	jal	ra,0000000023052118

l2300E274:
	c.addi	s0,0000001C
	c.j	000000002300E224

;; co_list_init: 2300E278
;;   Called from:
;;     230030B8 (in mm_bcn_init)
;;     23003722 (in mm_timer_init)
;;     230041EA (in rxl_init)
;;     2300478C (in rxl_reset)
;;     2300479C (in rxl_reset)
;;     23004EC2 (in sta_mgmt_init)
;;     23005754 (in txl_cntrl_init)
;;     230060DC (in txl_reset)
;;     230061EE (in txl_frame_init)
;;     23006216 (in txl_frame_init)
;;     23006DAA (in vif_mgmt_init)
;;     23006DB6 (in vif_mgmt_init)
;;     23009DB2 (in rxu_cntrl_init)
;;     23009DBE (in rxu_cntrl_init)
;;     23009DCA (in rxu_cntrl_init)
;;     23009DD6 (in rxu_cntrl_init)
;;     2300BA6C (in sm_set_bss_param)
;;     2301A688 (in hal_dma_init)
;;     2301A6A4 (in hal_dma_init)
;;     2301C524 (in txl_cfm_init)
;;     2301C530 (in txl_cfm_init)
;;     2301C53C (in txl_cfm_init)
;;     2301C548 (in txl_cfm_init)
;;     2301C55A (in txl_cfm_init)
co_list_init proc
	sw	zero,a0,+00000000
	sw	zero,a0,+00000004
	c.jr	ra

;; co_list_push_back: 2300E282
;;   Called from:
;;     23003226 (in mm_tim_update)
;;     2300426E (in rxl_timer_int_handler)
;;     23004EDA (in sta_mgmt_init)
;;     230050B4 (in sta_mgmt_register)
;;     2300513C (in sta_mgmt_unregister)
;;     23005D4E (in txl_cntrl_push_int)
;;     23005D84 (in txl_cntrl_push_int)
;;     23005DD4 (in txl_cntrl_push_int_force)
;;     23005E64 (in txl_cntrl_push)
;;     2300628C (in txl_frame_init)
;;     2300657C (in txl_frame_cfm)
;;     230065A8 (in txl_frame_release)
;;     23006636 (in txl_frame_evt)
;;     23006DFC (in vif_mgmt_init)
;;     23006E3E (in vif_mgmt_init)
;;     23006EFC (in vif_mgmt_register)
;;     230070B0 (in vif_mgmt_unregister)
;;     2300992A (in rxu_mpdu_upload_and_indicate.constprop.11)
;;     2300A640 (in rxu_cntrl_frame_handle)
;;     2300BA86 (in sm_set_bss_param)
;;     2300BABA (in sm_set_bss_param)
;;     2300BAEE (in sm_set_bss_param)
;;     2300BB10 (in sm_set_bss_param)
;;     2300BB6E (in sm_set_bss_param)
;;     2300BB8E (in sm_set_bss_param)
;;     2300D316 (in apm_set_bss_param)
;;     2300D336 (in apm_set_bss_param)
;;     2300D35E (in apm_set_bss_param)
;;     2300D37A (in apm_set_bss_param)
;;     2300D392 (in apm_set_bss_param)
;;     2300E82A (in ke_msg_send)
;;     2300E9E0 (in ke_state_set)
;;     2300EBFA (in ke_task_schedule)
;;     230192A6 (in chan_tbtt_insert)
;;     23019CD4 (in chan_init)
;;     2301A092 (in chan_ctxt_del)
;;     2301A51E (in chan_ctxt_link)
;;     2301A6FC (in hal_dma_push)
;;     2301C57C (in txl_cfm_push)
co_list_push_back proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s0,a1
	c.bnez	a1,000000002300E2A8

l2300E290:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+00000047
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000574
	jal	ra,000000002301327E

l2300E2A8:
	c.lw	s1,0(a5)
	c.bnez	a5,000000002300E2BE

l2300E2AC:
	c.sw	s1,0(s0)

l2300E2AE:
	c.sw	s1,4(s0)
	sw	zero,s0,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2300E2BE:
	c.lw	s1,4(a5)
	c.sw	a5,0(s0)
	c.j	000000002300E2AE

;; co_list_push_front: 2300E2C4
;;   Called from:
;;     2300E3BE (in co_list_insert_after)
co_list_push_front proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s0,a1
	c.bnez	a1,000000002300E2EA

l2300E2D2:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+0000005E
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000574
	jal	ra,000000002301327E

l2300E2EA:
	c.lw	s1,0(a5)
	c.bnez	a5,000000002300E2F0

l2300E2EE:
	c.sw	s1,4(s0)

l2300E2F0:
	c.sw	s0,0(a5)
	c.sw	s1,0(s0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; co_list_pop_front: 2300E2FE
;;   Called from:
;;     2300369C (in mm_bcn_transmitted)
;;     2300376E (in mm_timer_set)
;;     230037F2 (in mm_timer_clear)
;;     2300386E (in mm_timer_schedule)
;;     23004412 (in rxl_cntrl_evt)
;;     23004E92 (in sta_mgmt_entry_init)
;;     23004F96 (in sta_mgmt_register)
;;     2300528C (in sta_mgmt_send_postponed_frame)
;;     23005FBE (in txl_transmit_trigger)
;;     2300638C (in txl_frame_get)
;;     230065FC (in txl_frame_evt)
;;     23006E76 (in vif_mgmt_register)
;;     2300A718 (in rxu_swdesc_upload_evt)
;;     2300A78A (in rxu_swdesc_upload_evt)
;;     2300B9C8 (in sm_send_next_bss_param)
;;     2300D24E (in apm_send_next_bss_param)
;;     2300EAB4 (in ke_task_schedule)
;;     2300EDE2 (in ke_timer_clear)
;;     2300EE98 (in ke_timer_schedule)
;;     230195A0 (in chan_tbtt_schedule)
;;     23019FBE (in chan_ctxt_add)
;;     2301A772 (in hal_dma_evt)
;;     2301C60A (in txl_cfm_evt)
;;     2301C666 (in txl_cfm_flush)
co_list_pop_front proc
	c.lw	a0,0(a5)
	c.beqz	a5,000000002300E306

l2300E302:
	c.lw	a5,0(a4)
	c.sw	a0,0(a4)

l2300E306:
	c.mv	a0,a5
	c.jr	ra

;; co_list_extract: 2300E30A
;;   Called from:
;;     230037C6 (in mm_timer_set)
;;     23003810 (in mm_timer_clear)
;;     23005122 (in sta_mgmt_unregister)
;;     23006FE0 (in vif_mgmt_unregister)
;;     2301929C (in chan_tbtt_insert)
;;     2301A1AC (in chan_tbtt_switch_update)
;;     2301A1FC (in chan_bcn_to_evt)
;;     2301A5BA (in chan_ctxt_unlink)
;;     2301A602 (in chan_ctxt_unlink)
co_list_extract proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	c.bnez	a0,000000002300E330

l2300E318:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+00000081
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000564
	jal	ra,000000002301327E

l2300E330:
	c.lw	s0,0(a5)
	c.beqz	a5,000000002300E33C

l2300E334:
	bne	a5,s1,000000002300E348

l2300E338:
	c.lw	s1,0(a5)
	c.sw	s0,0(a5)

l2300E33C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2300E346:
	c.mv	a5,a4

l2300E348:
	c.lw	a5,0(a4)
	c.beqz	a4,000000002300E33C

l2300E34C:
	bne	a4,s1,000000002300E346

l2300E350:
	c.lw	s0,4(a4)
	bne	a4,s1,000000002300E358

l2300E356:
	c.sw	s0,4(a5)

l2300E358:
	c.lw	s1,0(a4)
	c.sw	a5,0(a4)
	c.j	000000002300E33C

;; co_list_cnt: 2300E35E
;;   Called from:
;;     23004204 (in rxl_cntrl_dump)
;;     23006130 (in txl_cntrl_env_dump)
;;     23006482 (in txl_frame_get)
;;     23006490 (in txl_frame_get)
;;     23006D52 (in txl_frame_dump)
;;     2301C6F2 (in txl_cfm_dump)
co_list_cnt proc
	c.lw	a0,0(a5)
	c.li	a0,00000000

l2300E362:
	c.bnez	a5,000000002300E366

l2300E364:
	c.jr	ra

l2300E366:
	c.addi	a0,00000001
	c.lw	a5,0(a5)
	c.j	000000002300E362

;; co_list_insert: 2300E36C
;;   Called from:
;;     23003786 (in mm_timer_set)
;;     2300ED40 (in ke_timer_set)
co_list_insert proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.lw	a0,0(s0)
	c.mv	s2,a0
	c.mv	s1,a1
	c.li	s3,00000000

l2300E380:
	c.beqz	s0,000000002300E394

l2300E382:
	c.mv	a1,s0
	c.mv	a0,s1
	c.swsp	a2,00000084
	c.jalr	a2
	c.bnez	a0,000000002300E398

l2300E38C:
	c.mv	s3,s0
	c.lwsp	a2,00000084
	c.lw	s0,0(s0)
	c.j	000000002300E380

l2300E394:
	sw	s1,s2,+00000004

l2300E398:
	c.sw	s1,0(s0)
	beq	s3,zero,000000002300E3B0

l2300E39E:
	sw	s1,s3,+00000000

l2300E3A2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2300E3B0:
	sw	s1,s2,+00000000
	c.j	000000002300E3A2

;; co_list_insert_after: 2300E3B6
;;   Called from:
;;     230192E2 (in chan_tbtt_insert)
co_list_insert_after proc
	c.mv	a4,a0
	c.lw	a0,0(a5)
	c.bnez	a1,000000002300E3C8

l2300E3BC:
	c.mv	a1,a2
	jal	zero,000000002300E2C4

l2300E3C2:
	beq	a5,a1,000000002300E3D0

l2300E3C6:
	c.lw	a5,0(a5)

l2300E3C8:
	c.bnez	a5,000000002300E3C2

l2300E3CA:
	c.jr	ra

l2300E3CC:
	c.sw	a4,4(a2)
	c.jr	ra

l2300E3D0:
	c.lw	a5,0(a3)
	c.sw	a2,0(a3)
	c.sw	a5,0(a2)
	c.lw	a2,0(a5)
	c.beqz	a5,000000002300E3CC

l2300E3DA:
	c.jr	ra

;; co_list_remove: 2300E3DC
;;   Called from:
;;     2300D682 (in apm_tx_int_ps_get_postpone)
co_list_remove proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a0
	c.mv	s1,a1
	c.mv	s0,a2
	c.bnez	a0,000000002300E406

l2300E3EE:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+00000168
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000564
	jal	ra,000000002301327E

l2300E406:
	c.beqz	s1,000000002300E43A

l2300E408:
	c.lw	s1,0(a5)
	beq	a5,s0,000000002300E426

l2300E40E:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+00000169
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000588
	jal	ra,000000002301327E

l2300E426:
	c.beqz	s0,000000002300E43C

l2300E428:
	c.lw	s0,0(a5)
	c.sw	s1,0(a5)
	lw	a5,s2,+00000004
	bne	a5,s0,000000002300E45C

l2300E434:
	sw	s1,s2,+00000004
	c.j	000000002300E45C

l2300E43A:
	c.bnez	s0,000000002300E456

l2300E43C:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+0000016A
	addi	a1,a1,+000002DC
	addi	a0,a0,+000005C4
	jal	ra,000000002301327E
	c.bnez	s1,000000002300E428

l2300E456:
	c.lw	s0,0(a5)
	sw	a5,s2,+00000000

l2300E45C:
	sw	zero,s0,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; co_crc32: 2300E46C
;;   Called from:
;;     23002B10 (in mm_check_beacon)
;;     23002CA2 (in mm_check_beacon)
co_crc32 proc
	lui	a3,00023075
	c.li	a4,00000000
	addi	a3,a3,+000005D4

l2300E476:
	bne	a4,a1,000000002300E47E

l2300E47A:
	c.mv	a0,a2
	c.jr	ra

l2300E47E:
	add	a5,a4,a0
	lbu	a5,a5,+00000000
	slli	a6,a2,00000008
	c.srli	a2,00000018
	c.xor	a2,a5
	c.slli	a2,02
	c.add	a2,a3
	c.lw	a2,0(a2)
	c.addi	a4,00000001
	xor	a2,a6,a2
	c.j	000000002300E476

;; ke_evt_set: 2300E49C
;;   Called from:
;;     230037BC (in mm_timer_set)
;;     230042BC (in rxl_timer_int_handler)
;;     230043E8 (in rxl_cntrl_evt)
;;     23006588 (in txl_frame_cfm)
;;     2300A05E (in rxu_cntrl_frame_handle)
;;     2300A6EC (in rxu_cntrl_evt)
;;     2300E52A (in bl60x_fw_dump_statistic)
;;     2300E83A (in ke_msg_send)
;;     2300E9EC (in ke_state_set)
;;     2300ED7C (in ke_timer_set)
;;     23013268 (in assert_rec)
;;     230136A0 (in ipc_emb_tx_irq)
;;     23013772 (in ipc_emb_tx_evt)
;;     23013812 (in ipc_emb_cfmback_irq)
;;     23013832 (in ipc_emb_cfmback_irq)
;;     23013860 (in ipc_emb_msg_irq)
;;     23018FB0 (in bl_irq_handler)
;;     2301A740 (in hal_dma_push)
;;     2301AECE (in hal_machw_gen_handler)
;;     2301AEE0 (in hal_machw_gen_handler)
;;     2301AF28 (in hal_machw_gen_handler)
;;     2301AF40 (in hal_machw_gen_handler)
;;     2301AFC8 (in hal_machw_gen_handler)
;;     2301C596 (in txl_cfm_push)
ke_evt_set proc
	csrrci	zero,mstatus,00000008
	lui	a5,0004201C
	addi	a5,a5,-000003A8
	c.lw	a5,0(a4)
	c.or	a4,a0
	c.sw	a5,0(a4)
	csrrsi	zero,mstatus,00000008
	c.jr	ra

;; ke_evt_clear: 2300E4B4
;;   Called from:
;;     23001DCC (in mm_tbtt_evt)
;;     230023DC (in mm_hw_idle_evt)
;;     2300383A (in mm_timer_schedule)
;;     230042EC (in rxl_dma_evt)
;;     230043D4 (in rxl_cntrl_evt)
;;     23006044 (in txl_reset)
;;     230065E8 (in txl_frame_evt)
;;     2300A6D6 (in rxu_cntrl_evt)
;;     2300A710 (in rxu_swdesc_upload_evt)
;;     2300E4D8 (in bl_event_handle)
;;     2300E4EC (in bl_fw_statistic_dump)
;;     2300E5D8 (in ke_init)
;;     2300EB7A (in ke_task_schedule)
;;     2300EE6A (in ke_timer_schedule)
;;     230136E4 (in ipc_emb_tx_evt)
;;     230138B6 (in ipc_emb_msg_evt)
;;     2301A75A (in hal_dma_evt)
;;     2301BF28 (in bl_reset_evt)
;;     2301C5F4 (in txl_cfm_evt)
ke_evt_clear proc
	csrrci	zero,mstatus,00000008
	lui	a5,0004201C
	addi	a5,a5,-000003A8
	c.lw	a5,0(a4)
	xori	a0,a0,-00000001
	c.and	a0,a4
	c.sw	a5,0(a0)
	csrrsi	zero,mstatus,00000008
	c.jr	ra

;; bl_event_handle: 2300E4D0
bl_event_handle proc
	c.addi	sp,FFFFFFF0
	lui	a0,00040000
	c.swsp	ra,00000084
	jal	ra,000000002300E4B4
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023022910

;; bl_fw_statistic_dump: 2300E4E4
;;   Called from:
;;     2300E522 (in bl60x_fw_dump_statistic)
bl_fw_statistic_dump proc
	c.addi	sp,FFFFFFF0
	addi	a0,zero,+00000020
	c.swsp	ra,00000084
	jal	ra,000000002300E4B4
	csrrci	zero,mstatus,00000008
	jal	ra,0000000023024B72
	jal	ra,0000000023006D44
	jal	ra,00000000230139B4
	jal	ra,0000000023006110
	jal	ra,000000002301C6DC
	jal	ra,00000000230047A0
	jal	ra,00000000230041F6
	jal	ra,000000002301B1AE
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; bl60x_fw_dump_statistic: 2300E51E
;;   Called from:
;;     23027CE4 (in cmd_wifi_dump)
bl60x_fw_dump_statistic proc
	c.beqz	a0,000000002300E526

l2300E520:
	c.li	a0,00000000
	jal	zero,000000002300E4E4

l2300E526:
	addi	a0,zero,+00000020
	jal	zero,000000002300E49C

;; ke_evt_schedule: 2300E52E
;;   Called from:
;;     230134B4 (in wifi_main)
ke_evt_schedule proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004201C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	addi	a4,a5,-000003A8
	c.lw	a4,0(a0)
	lui	s1,00023076
	addi	s0,a5,-000003A8
	addi	s1,s1,-0000062C
	c.li	s4,0000001A
	lui	s5,00023074
	lui	s6,00023076

l2300E560:
	c.bnez	a0,000000002300E576

l2300E562:
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

l2300E576:
	jal	ra,000000002306C8C0
	slli	s2,a0,00000003
	add	a5,s1,s2
	lw	s3,a5,+00000000
	blt	s4,a0,000000002300E58E

l2300E58A:
	bne	s3,zero,000000002300E59E

l2300E58E:
	addi	a2,zero,+000000DD
	addi	a1,s5,+000002DC
	addi	a0,s6,-0000052C
	jal	ra,000000002301327E

l2300E59E:
	c.add	s2,s1
	lw	a0,s2,+00000004
	c.jalr	s3
	c.lw	s0,0(a0)
	c.j	000000002300E560

;; ke_init: 2300E5AA
;;   Called from:
;;     2301BEE6 (in bl_init)
ke_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.jal	000000002300E5DC
	lui	a5,0004201C
	addi	a5,a5,-000003A8
	c.sw	a5,28(a0)
	sw	zero,a5,+0000000C
	sw	zero,a5,+00000010
	sw	zero,a5,+00000004
	sw	zero,a5,+00000008
	sw	zero,a5,+00000014
	sw	zero,a5,+00000018
	c.lwsp	a2,00000020
	c.li	a0,FFFFFFFF
	c.addi	sp,00000010
	jal	zero,000000002300E4B4

;; ke_mem_init: 2300E5DC
;;   Called from:
;;     2300E5AE (in ke_init)
ke_mem_init proc
	lui	a0,0004201C
	addi	a0,a0,-00000385
	c.andi	a0,FFFFFFFC
	csrrci	zero,mstatus,00000008
	lui	a5,0004201D
	addi	a5,a5,+000000F8
	c.andi	a5,FFFFFFFC
	c.sub	a5,a0
	c.sw	a0,4(a5)
	sw	zero,a0,+00000000
	csrrsi	zero,mstatus,00000008
	c.jr	ra

;; ke_malloc: 2300E602
;;   Called from:
;;     2300E782 (in ke_msg_alloc)
;;     2300ECFE (in ke_timer_set)
;;     2300EF9C (in GetTxEAPOLBuffer)
;;     2300EFC2 (in GetTxEAPOLBuffer)
;;     230138EA (in ipc_emb_msg_evt)
;;     2301F54A (in apm_start_req_handler)
ke_malloc proc
	c.addi	sp,FFFFFFF0
	c.addi	a0,00000003
	c.swsp	s1,00000080
	andi	s1,a0,-00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	addi	s2,s1,+00000004
	c.li	a5,00000007
	bltu	a5,s2,000000002300E634

l2300E61C:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+00000079
	addi	a1,a1,+000002DC
	addi	a0,a0,-000004C4
	jal	ra,000000002301327E

l2300E634:
	lui	a5,0004201C
	lw	a5,a5,-0000038C
	csrrci	zero,mstatus,00000008
	c.li	s0,00000000
	c.addi	s1,0000000C

l2300E644:
	c.bnez	a5,000000002300E680

l2300E646:
	c.bnez	s0,000000002300E660

l2300E648:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+00000095
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000049C
	jal	ra,000000002301327E

l2300E660:
	c.lw	s0,4(a0)
	sub	a0,a0,s2
	c.sw	s0,4(a0)
	c.add	a0,s0
	sw	s2,a0,+00000000
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	a0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2300E680:
	c.lw	a5,4(a4)
	bltu	a4,s1,000000002300E68E

l2300E686:
	c.beqz	s0,000000002300E692

l2300E688:
	c.lw	s0,4(a3)
	bltu	a4,a3,000000002300E692

l2300E68E:
	c.lw	a5,0(a5)
	c.j	000000002300E644

l2300E692:
	c.mv	s0,a5
	c.j	000000002300E68E

;; ke_free: 2300E696
;;   Called from:
;;     2300D9B4 (in apm_bcn_set)
;;     2300E816 (in ke_msg_send)
;;     2300E860 (in ke_msg_free)
;;     2300EE22 (in ke_timer_clear)
;;     2300EEB0 (in ke_timer_schedule)
;;     2300F044 (in UpdateEAPOLWcbLenAndTransmit)
;;     2300F04A (in UpdateEAPOLWcbLenAndTransmit)
ke_free proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004201C
	c.swsp	s0,0000000C
	lw	s0,a5,-0000038C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s1,a0
	addi	s2,a0,-00000004
	lw	s3,a0,-00000004
	bltu	s0,a0,000000002300E6D2

l2300E6BA:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+000000C5
	addi	a1,a1,+000002DC
	addi	a0,a0,-000004FC
	jal	ra,000000002301327E

l2300E6D2:
	csrrci	zero,mstatus,00000008
	c.li	s4,00000000

l2300E6D8:
	c.bnez	s0,000000002300E6E4

l2300E6DA:
	sw	s2,s4,+00000000
	sw	zero,s1,+00000FFC
	c.j	000000002300E75C

l2300E6E4:
	c.lw	s0,4(a5)
	add	a4,a5,s0
	bne	a4,s2,000000002300E71A

l2300E6EE:
	c.lw	s0,0(a4)
	c.add	a5,s3
	c.sw	s0,4(a5)
	add	a3,s0,a5
	bne	a4,a3,000000002300E706

l2300E6FC:
	c.lw	a4,4(a3)
	c.add	a5,a3
	c.sw	s0,4(a5)
	c.lw	a4,0(a5)
	c.sw	s0,0(a5)

l2300E706:
	csrrsi	zero,mstatus,00000008
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2300E71A:
	bgeu	s2,s0,000000002300E762

l2300E71E:
	bne	s4,zero,000000002300E73A

l2300E722:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+000000E0
	addi	a1,a1,+000002DC
	addi	a0,a0,-000004D8
	jal	ra,000000002301327E

l2300E73A:
	sw	s2,s4,+00000000
	add	a5,s2,s3
	bne	s0,a5,000000002300E758

l2300E746:
	c.lw	s0,0(a5)
	sw	a5,s1,+00000FFC
	c.lw	s0,4(a5)
	sub	s2,a5,s2
	c.add	s0,s2
	c.sw	s1,0(s0)
	c.j	000000002300E706

l2300E758:
	sw	s0,s1,+00000FFC

l2300E75C:
	sw	s3,s1,+00000000
	c.j	000000002300E706

l2300E762:
	c.mv	s4,s0
	c.lw	s0,0(s0)
	c.j	000000002300E6D8

;; ke_msg_alloc: 2300E768
;;   Called from:
;;     230028BC (in mm_sta_del)
;;     23002914 (in mm_send_connection_loss_ind)
;;     230029B2 (in mm_check_rssi)
;;     230029FE (in mm_check_rssi)
;;     23002A54 (in mm_send_csa_traffic_ind)
;;     230033C6 (in mm_bcn_transmit)
;;     2300344E (in mm_bcn_transmit)
;;     2300412A (in mm_ps_change_ind)
;;     2300469A (in rxl_cntrl_evt)
;;     230046DA (in rxl_cntrl_evt)
;;     23004E36 (in scan_send_cancel_cfm)
;;     2300737A (in vif_mgmt_switch_channel)
;;     23007E0C (in me_beacon_check)
;;     23009C22 (in rxu_mgt_frame_check)
;;     2300A4B6 (in rxu_cntrl_frame_handle)
;;     2300A812 (in scanu_confirm)
;;     2300A822 (in scanu_confirm)
;;     2300A862 (in scanu_confirm)
;;     2300A87C (in scanu_raw_send_cfm)
;;     2300B288 (in scanu_scan_next)
;;     2300B5A6 (in sm_delete_resources)
;;     2300B5B6 (in sm_delete_resources)
;;     2300B5DC (in sm_delete_resources)
;;     2300B604 (in sm_delete_resources)
;;     2300B7D0 (in sm_scan_bss)
;;     2300B8E0 (in sm_join_bss)
;;     2300BA24 (in sm_set_bss_param)
;;     2300BA32 (in sm_set_bss_param)
;;     2300BA40 (in sm_set_bss_param)
;;     2300BA4E (in sm_set_bss_param)
;;     2300BA5E (in sm_set_bss_param)
;;     2300BB28 (in sm_set_bss_param)
;;     2300BBCE (in sm_disconnect_process)
;;     2300C20E (in sm_assoc_done)
;;     2300D014 (in apm_sta_delete)
;;     2300D026 (in apm_sta_delete)
;;     2300D13E (in apm_start_cfm)
;;     2300D158 (in apm_start_cfm)
;;     2300D2AA (in apm_set_bss_param)
;;     2300D2B8 (in apm_set_bss_param)
;;     2300D2C6 (in apm_set_bss_param)
;;     2300D2D4 (in apm_set_bss_param)
;;     2300D2E4 (in apm_set_bss_param)
;;     2300D3D0 (in apm_stop)
;;     2300D3E0 (in apm_stop)
;;     2300D412 (in apm_stop)
;;     2300D51E (in apm_tx_int_ps_postpone)
;;     2300D65C (in apm_tx_int_ps_get_postpone)
;;     2300D6E6 (in apm_tx_int_ps_clear)
;;     2300D742 (in apm_sta_add)
;;     2300D95C (in apm_bcn_set)
;;     2300DB94 (in apm_assoc_req_handler)
;;     2300E844 (in ke_msg_send_basic)
;;     230193E6 (in chan_switch_start)
;;     2301A2CE (in chan_bcn_detect_start)
;;     2301B1F8 (in mm_monitor_channel_req_handler)
;;     2301B2A4 (in mm_monitor_enable_req_handler)
;;     2301B47E (in mm_remain_on_channel_req_handler)
;;     2301B4DA (in mm_sta_add_req_handler)
;;     2301B574 (in mm_key_add_req_handler)
;;     2301B61A (in mm_set_power_req_handler)
;;     2301B756 (in mm_version_req_handler)
;;     2301B996 (in mm_hw_config_handler)
;;     2301BB04 (in mm_hw_config_handler)
;;     2301BDD8 (in mm_hw_config_handler)
;;     2301C0D8 (in scan_start_req_handler)
;;     2301DDDC (in me_rc_stats_req_handler)
;;     2301DEFA (in me_traffic_ind_req_handler)
;;     2301DF6C (in me_sta_del_req_handler)
;;     2301DF8E (in me_sta_del_req_handler)
;;     2301E034 (in me_set_control_port_req_handler)
;;     2301E16C (in me_config_req_handler)
;;     2301E274 (in me_set_ps_disable_req_handler)
;;     2301E30E (in me_set_active_req_handler)
;;     2301E3A6 (in me_sta_add_req_handler)
;;     2301E53E (in me_sta_add_req_handler)
;;     2301E934 (in scanu_join_cfm_handler)
;;     2301EA44 (in sm_connect_req_handler)
;;     2301EAD4 (in sm_connect_req_handler)
;;     2301ECBC (in mm_set_vif_state_cfm_handler)
;;     2301ED20 (in mm_set_vif_state_cfm_handler)
;;     2301F038 (in apm_sta_del_req_handler)
;;     2301F17A (in apm_start_cac_req_handler)
;;     2301F68E (in apm_start_req_handler)
;;     2301F844 (in cfg_start_req_handler)
;;     2301F980 (in dbg_get_sys_stat_req_handler)
;;     2301F9AC (in dbg_mem_write_req_handler)
;;     2301F9DC (in dbg_mem_read_req_handler)
ke_msg_alloc proc
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	c.mv	s4,a0
	addi	a0,a3,+0000000C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s3,a1
	c.mv	s2,a2
	c.mv	s1,a3
	jal	ra,000000002300E602
	c.mv	s0,a0
	c.bnez	a0,000000002300E7A2

l2300E78A:
	lui	a1,00023074
	lui	a0,00023075
	addi	a2,zero,+00000050
	addi	a1,a1,+000002DC
	addi	a0,a0,+000003EC
	jal	ra,000000002301327E

l2300E7A2:
	sh	s4,s0,+00000004
	sh	s3,s0,+00000006
	sh	s2,s0,+00000008
	sh	s1,s0,+0000000A
	sw	zero,s0,+00000000
	c.addi	s0,0000000C
	c.mv	a2,s1
	c.mv	a0,s0
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; ke_msg_send: 2300E7D4
;;   Called from:
;;     230028CE (in mm_sta_del)
;;     23002926 (in mm_send_connection_loss_ind)
;;     230029D2 (in mm_check_rssi)
;;     23002A12 (in mm_check_rssi)
;;     23002A68 (in mm_send_csa_traffic_ind)
;;     230033DA (in mm_bcn_transmit)
;;     2300345A (in mm_bcn_transmit)
;;     23004154 (in mm_ps_change_ind)
;;     230046AC (in rxl_cntrl_evt)
;;     230046EE (in rxl_cntrl_evt)
;;     23004E44 (in scan_send_cancel_cfm)
;;     2300745C (in vif_mgmt_switch_channel)
;;     23007E80 (in me_beacon_check)
;;     23009D90 (in rxu_mgt_frame_check)
;;     2300A4F4 (in rxu_cntrl_frame_handle)
;;     2300A83A (in scanu_confirm)
;;     2300A846 (in scanu_confirm)
;;     2300A888 (in scanu_raw_send_cfm)
;;     2300B450 (in scanu_scan_next)
;;     2300B5CA (in sm_delete_resources)
;;     2300B5EC (in sm_delete_resources)
;;     2300B610 (in sm_delete_resources)
;;     2300B62E (in sm_delete_resources)
;;     2300B826 (in sm_scan_bss)
;;     2300B93C (in sm_join_bss)
;;     2300B9F2 (in sm_send_next_bss_param)
;;     2300BC02 (in sm_disconnect_process)
;;     2300BE36 (in sm_connect_ind)
;;     2300C224 (in sm_assoc_done)
;;     2300D056 (in apm_sta_delete)
;;     2300D070 (in apm_sta_delete)
;;     2300D090 (in apm_tx_cfm_handler)
;;     2300D188 (in apm_start_cfm)
;;     2300D212 (in apm_start_cfm)
;;     2300D278 (in apm_send_next_bss_param)
;;     2300D400 (in apm_stop)
;;     2300D422 (in apm_stop)
;;     2300D44A (in apm_stop)
;;     2300D53E (in apm_tx_int_ps_postpone)
;;     2300D674 (in apm_tx_int_ps_get_postpone)
;;     2300D704 (in apm_tx_int_ps_clear)
;;     2300D7A8 (in apm_sta_add)
;;     2300D9BE (in apm_bcn_set)
;;     2300E84C (in ke_msg_send_basic)
;;     2300E85C (in ke_msg_forward_and_change_id)
;;     23013992 (in ipc_emb_msg_evt)
;;     230193F8 (in chan_switch_start)
;;     2301A334 (in chan_bcn_detect_start)
;;     2301B272 (in mm_monitor_channel_req_handler)
;;     2301B32E (in mm_monitor_enable_req_handler)
;;     2301B494 (in mm_remain_on_channel_req_handler)
;;     2301B4F4 (in mm_sta_add_req_handler)
;;     2301B5F2 (in mm_key_add_req_handler)
;;     2301B656 (in mm_set_power_req_handler)
;;     2301B784 (in mm_version_req_handler)
;;     2301B9BC (in mm_hw_config_handler)
;;     2301C124 (in scan_start_req_handler)
;;     2301DE5C (in me_rc_stats_req_handler)
;;     2301DF20 (in me_traffic_ind_req_handler)
;;     2301DF78 (in me_sta_del_req_handler)
;;     2301DFB4 (in me_sta_del_req_handler)
;;     2301E044 (in me_set_control_port_req_handler)
;;     2301E1E2 (in me_config_req_handler)
;;     2301E29C (in me_set_ps_disable_req_handler)
;;     2301E334 (in me_set_active_req_handler)
;;     2301E552 (in me_sta_add_req_handler)
;;     2301E56C (in me_sta_add_req_handler)
;;     2301E9A0 (in scanu_join_cfm_handler)
;;     2301EB44 (in sm_connect_req_handler)
;;     2301ECD8 (in mm_set_vif_state_cfm_handler)
;;     2301ED30 (in mm_set_vif_state_cfm_handler)
;;     2301F072 (in apm_sta_del_req_handler)
;;     2301F18A (in apm_start_cac_req_handler)
;;     2301F69E (in apm_start_req_handler)
;;     2301F84C (in cfg_start_req_handler)
;;     2301F990 (in dbg_get_sys_stat_req_handler)
;;     2301F9BE (in dbg_mem_write_req_handler)
;;     2301F9EA (in dbg_mem_read_req_handler)
ke_msg_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lbu	a5,a0,-00000006
	c.li	a4,0000000E
	c.mv	s0,a0
	addi	s1,a0,-0000000C
	bgeu	a4,a5,000000002300E81A

l2300E7EC:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+000000B6
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000048C
	jal	ra,000000002301327E

l2300E804:
	addi	a0,s0,-00000008
	jal	ra,00000000230242BC
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002300E696

l2300E81A:
	c.li	a4,0000000C
	bltu	a4,a5,000000002300E804

l2300E820:
	lui	a0,0004201C
	c.mv	a1,s1
	addi	a0,a0,-000003A4
	jal	ra,000000002300E282
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,00001000
	c.addi	sp,00000010
	jal	zero,000000002300E49C

;; ke_msg_send_basic: 2300E83E
;;   Called from:
;;     23002E0A (in mm_tim_update_proceed)
;;     23003498 (in mm_bcn_updated)
;;     23003C8A (in ps_enable_cfm)
;;     23003D6A (in ps_disable_cfm)
;;     2300EEAA (in ke_timer_schedule)
;;     230199D4 (in chan_pre_switch_channel)
;;     23019BFC (in chan_ctxt_op_evt)
;;     2301B420 (in mm_set_ps_options_req_handler)
;;     2301B4BE (in mm_sta_del_req_handler)
;;     2301B550 (in mm_key_del_req_handler)
;;     2301B6F6 (in mm_set_idle_req_handler)
;;     2301B736 (in mm_reset_req_handler)
;;     2301B806 (in mm_start_req_handler)
;;     2301B850 (in mm_set_ps_mode_req_handler)
;;     2301BAA6 (in mm_hw_config_handler)
;;     2301C1EC (in mm_scan_channel_end_ind_handler)
;;     2301DF2E (in me_traffic_ind_req_handler)
;;     2301DFC2 (in me_sta_del_req_handler)
;;     2301E052 (in me_set_control_port_req_handler)
;;     2301E08A (in me_chan_config_req_handler)
;;     2301E0DC (in mm_set_ps_mode_cfm_handler)
;;     2301E136 (in mm_set_idle_cfm_handler)
;;     2301E19A (in me_config_req_handler)
;;     2301E232 (in me_set_ps_disable_req_handler)
;;     2301E34E (in me_set_active_req_handler)
;;     2301EF0A (in sm_disconnect_req_handler)
;;     2301F0F0 (in apm_stop_cac_req_handler)
;;     2301F124 (in apm_conf_max_sta_req_handler)
;;     2301F33E (in apm_stop_req_handler)
;;     2301FA0C (in dbg_set_sev_filter_req_handler)
;;     2301FA2C (in dbg_set_mod_filter_req_handler)
ke_msg_send_basic proc
	c.addi	sp,FFFFFFF0
	c.li	a3,00000000
	c.swsp	ra,00000084
	jal	ra,000000002300E768
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300E7D4

;; ke_msg_forward_and_change_id: 2300E850
;;   Called from:
;;     2300B10A (in scanu_frame_handler)
ke_msg_forward_and_change_id proc
	sh	a1,a0,+00000FF8
	sh	a2,a0,+00000FFA
	sh	a3,a0,+00000FFC
	jal	zero,000000002300E7D4

;; ke_msg_free: 2300E860
;;   Called from:
;;     23002E18 (in mm_tim_update_proceed)
;;     230035C4 (in mm_bcn_updated)
;;     2300A830 (in scanu_confirm)
;;     2300BE24 (in sm_connect_ind)
;;     2300D09C (in apm_tx_cfm_handler)
;;     2300D0AA (in apm_tx_cfm_handler)
;;     2300D21A (in apm_start_cfm)
;;     2300EB64 (in ke_task_schedule)
;;     2301C1C2 (in mm_scan_channel_end_ind_handler)
ke_msg_free proc
	jal	zero,000000002300E696

;; cmp_dest_id: 2300E864
cmp_dest_id proc
	lhu	a0,a0,+00000006
	c.sub	a0,a1
	sltiu	a0,a0,+00000001
	c.jr	ra

;; ke_task_local: 2300E870
;;   Called from:
;;     2300E93C (in ke_state_set)
;;     2300EA34 (in ke_state_get)
;;     2300EAF0 (in ke_task_schedule)
ke_task_local proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,0000000E
	c.mv	s0,a0
	bgeu	a5,a0,000000002300E896

l2300E87E:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+000000B6
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000048C
	jal	ra,000000002301327E

l2300E896:
	sltiu	a0,s0,+0000000D
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ke_handler_search: 2300E8A2
;;   Called from:
;;     2300EBA2 (in ke_task_schedule)
;;     2300EBE6 (in ke_task_schedule)
ke_handler_search proc
	lhu	a5,a1,+00000004
	c.li	a3,FFFFFFFF
	c.addi	a5,FFFFFFFF
	bne	a5,a3,000000002300E8BC

l2300E8AE:
	c.li	a0,00000000
	c.jr	ra

l2300E8B2:
	c.addi	a5,FFFFFFFF
	bne	a5,a3,000000002300E8C4

l2300E8B8:
	c.li	a0,00000000
	c.j	000000002300E8F8

l2300E8BC:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080

l2300E8C4:
	c.lw	a1,0(a4)
	slli	s1,a5,00000003
	c.add	a4,s1
	lhu	a2,a4,+00000000
	bne	a2,a0,000000002300E8B2

l2300E8D4:
	c.lw	a4,4(a5)
	c.mv	s0,a1
	c.bnez	a5,000000002300E8F2

l2300E8DA:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+000000F4
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000039C
	jal	ra,000000002301327E

l2300E8F2:
	c.lw	s0,0(a5)
	c.add	a5,s1
	c.lw	a5,4(a0)

l2300E8F8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; ke_state_set: 2300E902
;;   Called from:
;;     23001D6E (in mm_active)
;;     23001D90 (in mm_reset)
;;     230023E8 (in mm_hw_idle_evt)
;;     2300251A (in mm_back_to_host_idle)
;;     23002536 (in mm_force_idle_req)
;;     23004B98 (in scan_init)
;;     23004C62 (in scan_set_channel_request)
;;     230074B2 (in me_init)
;;     2300A85A (in scanu_confirm)
;;     2300A896 (in scanu_init)
;;     2300B52C (in scanu_start)
;;     2300B688 (in sm_init)
;;     2300B83E (in sm_scan_bss)
;;     2300B954 (in sm_join_bss)
;;     2300BBB0 (in sm_set_bss_param)
;;     2300BC4C (in sm_disconnect)
;;     2300BE1A (in sm_connect_ind)
;;     2300BE6E (in sm_connect_ind)
;;     2300C038 (in sm_auth_send)
;;     2300C1BC (in sm_assoc_req_send)
;;     2300C234 (in sm_assoc_done)
;;     2300C50E (in sm_deauth_handler)
;;     2300D10E (in apm_init)
;;     2300D23C (in apm_start_cfm)
;;     2300D3B4 (in apm_set_bss_param)
;;     2300D9D0 (in apm_bcn_set)
;;     2301B6C2 (in mm_set_idle_req_handler)
;;     2301B73E (in mm_reset_req_handler)
;;     2301B816 (in mm_start_req_handler)
;;     2301B89E (in mm_force_idle_req_handler)
;;     2301B8D4 (in mm_force_idle_req_handler)
;;     2301BADE (in mm_hw_config_handler)
;;     2301BE28 (in mm_hw_config_handler)
;;     2301C1DE (in mm_scan_channel_end_ind_handler)
;;     2301C262 (in mm_scan_channel_start_ind_handler)
;;     2301C71E (in bam_init)
;;     2301E0E4 (in mm_set_ps_mode_cfm_handler)
;;     2301E13E (in mm_set_idle_cfm_handler)
;;     2301E1EA (in me_config_req_handler)
;;     2301E2A4 (in me_set_ps_disable_req_handler)
;;     2301E33C (in me_set_active_req_handler)
;;     2301E8A4 (in mm_connection_loss_ind_handler)
;;     2301E9A8 (in scanu_join_cfm_handler)
;;     2301EB26 (in sm_connect_req_handler)
;;     2301EDD4 (in me_set_active_cfm_handler)
ke_state_set proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	andi	s1,a0,+000000FF
	c.li	a5,0000000D
	c.mv	s3,a0
	c.mv	s4,a1
	srli	s2,a0,00000008
	bgeu	a5,s1,000000002300E93A

l2300E922:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+000000B2
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000378
	jal	ra,000000002301327E

l2300E93A:
	c.mv	a0,s1
	jal	ra,000000002300E870
	c.bnez	a0,000000002300E95A

l2300E942:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+000000B3
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000368
	jal	ra,000000002301327E

l2300E95A:
	lui	a5,00023076
	addi	a4,a5,-0000047C
	c.slli	s1,04
	c.add	a4,s1
	lhu	a4,a4,+0000000E
	addi	s0,a5,-0000047C
	bltu	s2,a4,000000002300E98A

l2300E972:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+000000B4
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000354
	jal	ra,000000002301327E

l2300E98A:
	add	a5,s0,s1
	c.lw	a5,8(s0)
	c.slli	s2,01
	c.add	s0,s2
	c.bnez	s0,000000002300E9AE

l2300E996:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+000000B9
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000334
	jal	ra,000000002301327E

l2300E9AE:
	lhu	a5,s0,+00000000
	beq	a5,s4,000000002300E9F2

l2300E9B6:
	sh	s4,s0,+00000000
	lui	s1,0002300F
	lui	s2,0004201C
	lui	s0,0004201C

l2300E9C6:
	addi	a1,s1,-0000079C
	c.mv	a2,s3
	addi	a0,s2,-0000039C
	jal	ra,000000002301FA38
	c.mv	a1,a0
	c.beqz	a0,000000002300E9F2

l2300E9D8:
	csrrci	zero,mstatus,00000008
	addi	a0,s0,-000003A4
	jal	ra,000000002300E282
	csrrsi	zero,mstatus,00000008
	lui	a0,00001000
	jal	ra,000000002300E49C
	c.j	000000002300E9C6

l2300E9F2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; ke_state_get: 2300EA02
;;   Called from:
;;     23001D78 (in mm_reset)
;;     230024DE (in mm_back_to_host_idle)
;;     23009BBE (in rxu_mgt_frame_check)
;;     23009BFA (in rxu_mgt_frame_check)
;;     2300A9CC (in scanu_frame_handler)
;;     2300B650 (in sm_frame_tx_cfm_handler)
;;     2300C4AA (in sm_deauth_handler)
;;     2300C4C8 (in sm_deauth_handler)
;;     2301B67A (in mm_set_idle_req_handler)
;;     2301B6AE (in mm_set_idle_req_handler)
;;     2301B6FE (in mm_set_idle_req_handler)
;;     2301B7A4 (in mm_start_req_handler)
;;     2301B88A (in mm_force_idle_req_handler)
;;     2301B900 (in mm_hw_config_handler)
;;     2301BE18 (in mm_hw_config_handler)
;;     2301BF6A (in bl_sleep)
;;     2301C09C (in scan_cancel_req_handler)
;;     2301C0E0 (in scan_start_req_handler)
;;     2301C148 (in mm_scan_channel_end_ind_handler)
;;     2301C20A (in mm_scan_channel_start_ind_handler)
;;     2301E0A2 (in mm_set_ps_mode_cfm_handler)
;;     2301E0FC (in mm_set_idle_cfm_handler)
;;     2301E24E (in me_set_ps_disable_req_handler)
;;     2301E2E2 (in me_set_active_req_handler)
;;     2301E768 (in me_set_ps_disable_cfm_handler)
;;     2301E774 (in me_set_ps_disable_cfm_handler)
;;     2301E77C (in me_set_ps_disable_cfm_handler)
;;     2301E7A0 (in me_set_ps_disable_cfm_handler)
;;     2301E7BC (in mm_bss_param_setting_handler)
;;     2301E7F0 (in sm_rsp_timeout_ind_handler)
;;     2301E80A (in sm_rsp_timeout_ind_handler)
;;     2301E820 (in scanu_start_cfm_handler)
;;     2301E878 (in mm_connection_loss_ind_handler)
;;     2301E8D6 (in scanu_join_cfm_handler)
;;     2301EA2C (in sm_connect_req_handler)
;;     2301EA4C (in sm_connect_req_handler)
;;     2301EC12 (in rxu_mgt_ind_handler)
;;     2301EC34 (in rxu_mgt_ind_handler)
;;     2301EC60 (in rxu_mgt_ind_handler)
;;     2301EC82 (in mm_set_vif_state_cfm_handler)
;;     2301ED6A (in me_set_active_cfm_handler)
;;     2301ED76 (in me_set_active_cfm_handler)
;;     2301ED9A (in me_set_active_cfm_handler)
;;     2301EE00 (in mm_sta_add_cfm_handler)
;;     2301EEEC (in sm_disconnect_req_handler)
;;     2301F0C0 (in apm_stop_cac_req_handler)
;;     2301F1A2 (in apm_start_cac_req_handler)
;;     2301F20A (in me_set_ps_disable_cfm_handler)
;;     2301F216 (in me_set_ps_disable_cfm_handler)
;;     2301F236 (in me_set_ps_disable_cfm_handler)
;;     2301F252 (in mm_bss_param_setting_handler)
;;     2301F286 (in mm_bcn_change_cfm_handler)
;;     2301F2F2 (in apm_stop_req_handler)
;;     2301F3AE (in apm_start_req_handler)
;;     2301F6B0 (in me_set_active_cfm_handler)
;;     2301F6BC (in me_set_active_cfm_handler)
;;     2301F6DC (in me_set_active_cfm_handler)
;;     2301F72A (in hostapd_mgt_ind_handler)
ke_state_get proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	andi	s0,a0,+000000FF
	c.li	a5,0000000D
	srli	s2,a0,00000008
	bgeu	a5,s0,000000002300EA32

l2300EA1A:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+000000D7
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000378
	jal	ra,000000002301327E

l2300EA32:
	c.mv	a0,s0
	jal	ra,000000002300E870
	c.bnez	a0,000000002300EA52

l2300EA3A:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+000000D8
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000368
	jal	ra,000000002301327E

l2300EA52:
	lui	a5,00023076
	addi	a4,a5,-0000047C
	c.slli	s0,04
	c.add	a4,s0
	lhu	a4,a4,+0000000E
	addi	s1,a5,-0000047C
	bltu	s2,a4,000000002300EA82

l2300EA6A:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+000000D9
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000354
	jal	ra,000000002301327E

l2300EA82:
	c.add	s0,s1
	c.lw	s0,8(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.slli	s2,01
	c.add	s2,a5
	lhu	a0,s2,+00000000
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; ke_task_schedule: 2300EA9A
ke_task_schedule proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	csrrci	zero,mstatus,00000008
	lui	a0,0004201C
	addi	a0,a0,-000003A4
	jal	ra,000000002300E2FE
	csrrsi	zero,mstatus,00000008
	c.beqz	a0,000000002300EB68

l2300EABE:
	lhu	s2,a0,+00000006
	c.li	a5,0000000D
	c.mv	s0,a0
	andi	s3,s2,+000000FF
	lhu	s4,a0,+00000004
	srli	s2,s2,00000008
	bgeu	a5,s3,000000002300EAEE

l2300EAD6:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+00000110
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000378
	jal	ra,000000002301327E

l2300EAEE:
	c.mv	a0,s3
	jal	ra,000000002300E870
	c.bnez	a0,000000002300EB0E

l2300EAF6:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+00000111
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000368
	jal	ra,000000002301327E

l2300EB0E:
	lui	a5,00023076
	addi	a4,a5,-0000047C
	c.slli	s3,04
	c.add	a4,s3
	lhu	a4,a4,+0000000E
	addi	s1,a5,-0000047C
	bltu	s2,a4,000000002300EB3E

l2300EB26:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+00000112
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000354
	jal	ra,000000002301327E

l2300EB3E:
	c.add	s1,s3
	c.bnez	s1,000000002300EB5A

l2300EB42:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+00000116
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000324
	jal	ra,000000002301327E

l2300EB5A:
	c.lw	s1,0(a1)
	c.bnez	a1,000000002300EB92

l2300EB5E:
	c.lw	s1,4(a1)
	c.bnez	a1,000000002300EBE4

l2300EB62:
	c.mv	a0,s0
	jal	ra,000000002300E860

l2300EB68:
	csrrci	zero,mstatus,00000008
	lui	a5,0004201C
	lw	a5,a5,-000003A4
	c.bnez	a5,000000002300EB7E

l2300EB76:
	lui	a0,00001000
	jal	ra,000000002300E4B4

l2300EB7E:
	csrrsi	zero,mstatus,00000008
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2300EB92:
	c.lw	s1,8(a5)
	c.slli	s2,01
	c.mv	a0,s4
	c.add	s2,a5
	lhu	a5,s2,+00000000
	c.slli	a5,03
	c.add	a1,a5
	jal	ra,000000002300E8A2
	c.mv	a5,a0
	c.beqz	a0,000000002300EB5E

l2300EBAA:
	lhu	a3,s0,+00000008
	lhu	a2,s0,+00000006
	lhu	a0,s0,+00000004
	addi	a1,s0,+0000000C
	c.jalr	a5
	c.li	a5,00000001
	beq	a0,a5,000000002300EB68

l2300EBC2:
	c.li	a5,00000002
	beq	a0,a5,000000002300EBF0

l2300EBC8:
	c.beqz	a0,000000002300EB62

l2300EBCA:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+0000016C
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000768
	jal	ra,000000002301327E
	c.j	000000002300EB68

l2300EBE4:
	c.mv	a0,s4
	jal	ra,000000002300E8A2
	c.mv	a5,a0
	c.bnez	a0,000000002300EBAA

l2300EBEE:
	c.j	000000002300EB62

l2300EBF0:
	lui	a0,0004201C
	c.mv	a1,s0
	addi	a0,a0,-0000039C
	jal	ra,000000002300E282
	c.j	000000002300EB68

;; ke_msg_discard: 2300EC00
ke_msg_discard proc
	c.li	a0,00000000
	c.jr	ra

;; ke_msg_save: 2300EC04
ke_msg_save proc
	c.li	a0,00000002
	c.jr	ra

;; ke_timer_hw_set: 2300EC08
;;   Called from:
;;     2300ED54 (in ke_timer_set)
;;     2300EDEA (in ke_timer_clear)
;;     2300EE80 (in ke_timer_schedule)
;;     2300EEB8 (in ke_timer_schedule)
ke_timer_hw_set proc
	csrrci	zero,mstatus,00000008
	c.beqz	a0,000000002300EC3C

l2300EC0E:
	c.lw	a0,8(a4)
	lui	a5,00044B00
	sw	a4,a5,+00000148
	lui	a4,00044B08
	lw	a5,a4,+0000008C
	andi	a3,a5,+00000100
	c.bnez	a3,000000002300EC36

l2300EC26:
	addi	a3,zero,+00000100
	sw	a3,a4,+00000088
	ori	a5,a5,+00000100

l2300EC32:
	sw	a5,a4,+0000008C

l2300EC36:
	csrrsi	zero,mstatus,00000008
	c.jr	ra

l2300EC3C:
	lui	a4,00044B08
	lw	a5,a4,+0000008C
	andi	a5,a5,-00000101
	c.j	000000002300EC32

;; cmp_abs_time: 2300EC4A
cmp_abs_time proc
	c.lw	a1,8(a5)
	c.lw	a0,8(a0)
	c.sub	a0,a5
	lui	a5,00011E1A
	addi	a5,a5,+00000301
	sltu	a0,a0,a5
	xori	a0,a0,+00000001
	c.jr	ra

;; cmp_timer_id: 2300EC62
cmp_timer_id proc
	lhu	a4,a0,+00000004
	srli	a5,a1,00000010
	bne	a4,a5,000000002300EC7E

l2300EC6E:
	lhu	a0,a0,+00000006
	c.slli	a1,10
	c.srli	a1,00000010
	c.sub	a0,a1
	sltiu	a0,a0,+00000001
	c.jr	ra

l2300EC7E:
	c.li	a0,00000000
	c.jr	ra

;; ke_timer_set: 2300EC82
;;   Called from:
;;     2300C01C (in sm_auth_send)
;;     2300C1B4 (in sm_assoc_req_send)
;;     2300D20C (in apm_start_cfm)
;;     2301EF72 (in apm_sta_connect_timeout_ind_handler)
ke_timer_set proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s6,a0
	c.mv	s5,a1
	c.mv	s0,a2
	bne	a2,zero,000000002300ED80

l2300EC9E:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+0000008C
	addi	a1,a1,+000002DC
	addi	a0,a0,-000002F4

l2300ECB2:
	jal	ra,000000002301327E

l2300ECB6:
	lui	s3,0004201C
	addi	a5,s3,-000003A8
	c.lw	a5,20(a5)
	addi	s3,s3,-000003A8
	c.li	s2,00000000
	c.beqz	a5,000000002300ECDC

l2300ECC8:
	lhu	a4,a5,+00000004
	bne	a4,s6,000000002300ECDC

l2300ECD0:
	lhu	s2,a5,+00000006
	sub	s2,s2,s5
	sltiu	s2,s2,+00000001

l2300ECDC:
	slli	a2,s6,00000010
	lui	a1,0002300F
	lui	s4,0004201C
	or	a2,a2,s5
	addi	a1,a1,-0000039E
	addi	a0,s4,-00000394
	jal	ra,000000002301FA38
	c.mv	s1,a0
	c.bnez	a0,000000002300ED26

l2300ECFC:
	c.li	a0,0000000C
	jal	ra,000000002300E602
	c.mv	s1,a0
	c.bnez	a0,000000002300ED1E

l2300ED06:
	lui	a1,00023074
	lui	a0,00023088
	addi	a2,zero,+0000009D
	addi	a1,a1,+000002DC
	addi	a0,a0,-00000464
	jal	ra,000000002301327E

l2300ED1E:
	sh	s6,s1,+00000004
	sh	s5,s1,+00000006

l2300ED26:
	lui	a5,00044B00
	lw	a5,a5,+00000120
	lui	a2,0002300F
	addi	a2,a2,-000003B6
	c.add	s0,a5
	c.sw	s1,8(s0)
	c.mv	a1,s1
	addi	a0,s4,-00000394
	jal	ra,000000002300E36C
	bne	s2,zero,000000002300ED50

l2300ED48:
	lw	a5,s3,+00000014
	bne	a5,s1,000000002300ED58

l2300ED50:
	lw	a0,s3,+00000014
	jal	ra,000000002300EC08

l2300ED58:
	lui	a5,00044B00
	lw	a5,a5,+00000120
	c.sub	s0,a5
	bge	s0,zero,000000002300EDA2

l2300ED66:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	lui	a0,00004000
	c.addi16sp	00000020
	jal	zero,000000002300E49C

l2300ED80:
	lui	a5,00011E1A
	addi	a5,a5,+000002FF
	bgeu	a5,a2,000000002300ECB6

l2300ED8C:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+0000008D
	addi	a1,a1,+000002DC
	addi	a0,a0,-000002E8
	c.j	000000002300ECB2

l2300EDA2:
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

;; ke_timer_clear: 2300EDB6
;;   Called from:
;;     2300C24E (in sm_auth_handler)
;;     2300C384 (in sm_assoc_rsp_handler)
;;     2300D3EE (in apm_stop)
ke_timer_clear proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,0004201C
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	addi	s1,s1,-000003A8
	c.lw	s1,20(s0)
	c.beqz	s0,000000002300EE40

l2300EDCA:
	lhu	a4,s0,+00000004
	lui	a5,0004201C
	bne	a4,a0,000000002300EE26

l2300EDD6:
	lhu	a4,s0,+00000006
	bne	a4,a1,000000002300EE26

l2300EDDE:
	addi	a0,a5,-00000394
	jal	ra,000000002300E2FE
	c.lw	s1,20(s1)
	c.mv	a0,s1
	jal	ra,000000002300EC08
	c.beqz	s1,000000002300EE18

l2300EDF0:
	lui	a5,00044B00
	lw	a4,a5,+00000120
	c.lw	s1,8(a5)
	c.sub	a5,a4
	bge	a5,zero,000000002300EE18

l2300EE00:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+000000D7
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000031C
	jal	ra,000000002301327E

l2300EE18:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002300E696

l2300EE26:
	slli	a2,a0,00000010
	c.or	a2,a1
	lui	a1,0002300F
	addi	a1,a1,-0000039E
	addi	a0,a5,-00000394
	jal	ra,000000002301FA38
	c.mv	s0,a0
	c.bnez	a0,000000002300EE18

l2300EE40:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; ke_timer_schedule: 2300EE4A
ke_timer_schedule proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004201C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	addi	s1,s1,-000003A8
	lui	s2,00044B00
	lui	s3,0004201C

l2300EE66:
	lui	a0,00004000
	jal	ra,000000002300E4B4
	c.lw	s1,20(s0)
	c.bnez	s0,000000002300EE84

l2300EE72:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	jal	zero,000000002300EC08

l2300EE84:
	lw	a4,s2,+00000120
	c.lw	s0,8(a5)
	c.sub	a5,a4
	addi	a5,a5,-00000032
	bge	a5,zero,000000002300EEB6

l2300EE94:
	addi	a0,s3,-00000394
	jal	ra,000000002300E2FE
	c.mv	s0,a0
	lhu	a1,a0,+00000006
	lhu	a0,a0,+00000004
	addi	a2,zero,+000000FF
	jal	ra,000000002300E83E
	c.mv	a0,s0
	jal	ra,000000002300E696
	c.j	000000002300EE66

l2300EEB6:
	c.mv	a0,s0
	jal	ra,000000002300EC08
	lw	a4,s2,+00000120
	c.lw	s0,8(a5)
	c.sub	a5,a4
	blt	a5,zero,000000002300EE94

l2300EEC8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; bl60x_current_time_us: 2300EED6
;;   Called from:
;;     23002976 (in mm_check_rssi)
bl60x_current_time_us proc
	lui	a5,00044B08
	lw	a4,a5,+000000A4
	lw	a5,a5,+000000A8
	c.sw	a0,0(a4)
	c.sw	a0,4(a5)
	c.jr	ra

;; mac_ie_find: 2300EEE8
;;   Called from:
;;     23004B70 (in scan_search_ds)
;;     23007CE8 (in me_beacon_check)
;;     23007D52 (in me_beacon_check)
;;     2300A98C (in scanu_frame_handler)
;;     2300AA8A (in scanu_frame_handler)
;;     2300AB42 (in scanu_frame_handler)
;;     2300AD86 (in scanu_frame_handler)
;;     2300AE0E (in scanu_frame_handler)
;;     2300AEAE (in scanu_frame_handler)
;;     2300DA1C (in apm_probe_req_handler)
;;     2300DA4A (in apm_probe_req_handler)
;;     2300DC26 (in apm_assoc_req_handler)
;;     2300DC92 (in apm_assoc_req_handler)
;;     2300DCBA (in apm_assoc_req_handler)
;;     2300DD04 (in apm_assoc_req_handler)
;;     2300DDAC (in apm_assoc_req_handler)
;;     2301D308 (in me_extract_rate_set)
;;     2301D332 (in me_extract_rate_set)
;;     2301D3C6 (in me_extract_power_constraint)
;;     2301D3EC (in me_extract_country_reg)
;;     2301D464 (in me_extract_mobility_domain)
;;     2301D4B2 (in me_extract_csa)
;;     2301D4C0 (in me_extract_csa)
;;     2301D4D6 (in me_extract_csa)
;;     2301D4E4 (in me_extract_csa)
;;     2301D4F6 (in me_extract_csa)
;;     23023FF0 (in bl_rx_scanu_result_ind)
mac_ie_find proc
	c.add	a1,a0

l2300EEEA:
	bltu	a0,a1,000000002300EEF2

l2300EEEE:
	c.li	a0,00000000

l2300EEF0:
	c.jr	ra

l2300EEF2:
	lbu	a5,a0,+00000000
	beq	a5,a2,000000002300EEF0

l2300EEFA:
	lbu	a5,a0,+00000001
	c.addi	a5,00000002
	c.add	a0,a5
	c.j	000000002300EEEA

;; mac_vsie_find: 2300EF04
;;   Called from:
;;     2300AC52 (in scanu_frame_handler)
;;     2300AF54 (in scanu_frame_handler)
;;     2300DD6E (in apm_assoc_req_handler)
;;     2300DE9C (in apm_assoc_req_handler)
;;     23024036 (in bl_rx_scanu_result_ind)
mac_vsie_find proc
	c.add	a1,a0
	addi	a4,zero,+000000DD

l2300EF0A:
	bltu	a0,a1,000000002300EF2A

l2300EF0E:
	beq	a0,a1,000000002300EF5E

l2300EF12:
	lui	a0,00023076
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000002B4
	c.swsp	ra,00000084
	jal	ra,00000000230520DC
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2300EF2A:
	lbu	a5,a0,+00000000
	bne	a5,a4,000000002300EF54

l2300EF32:
	addi	a6,a0,+00000002
	c.li	a5,00000000

l2300EF38:
	bne	a3,a5,000000002300EF3E

l2300EF3C:
	c.jr	ra

l2300EF3E:
	add	a7,a6,a5
	c.addi	a5,00000001
	add	t1,a2,a5
	lbu	a7,a7,+00000000
	lbu	t1,t1,-00000001
	beq	t1,a7,000000002300EF38

l2300EF54:
	lbu	a5,a0,+00000001
	c.addi	a5,00000002
	c.add	a0,a5
	c.j	000000002300EF0A

l2300EF5E:
	c.li	a0,00000000
	c.jr	ra

;; GetTxEAPOLBuffer: 2300EF62
;;   Called from:
;;     2300F5B0 (in GeneratePWKMsg2)
;;     2300FAFA (in GenerateGrpMsg2)
;;     2300FDE4 (in GeneratePWKMsg4)
;;     230126F0 (in PrepDefaultEapolMsg)
GetTxEAPOLBuffer proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	lui	a5,00044B00
	c.mv	s2,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s3,a0
	srl	a1,a1,a5
	lui	s1,00023076
	lui	a0,00023076
	c.mv	s0,a2
	addi	a0,a0,-0000029C
	addi	a2,s1,-00000250
	jal	ra,000000002301F8C0
	c.bnez	s0,000000002300EFCA

l2300EF9A:
	c.li	a0,0000000C
	jal	ra,000000002300E602
	c.mv	s0,a0
	c.bnez	a0,000000002300EFB6

l2300EFA4:
	c.li	s0,00000000

l2300EFA6:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2300EFB6:
	c.li	a2,0000000C
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	addi	a0,zero,+00000200
	jal	ra,000000002300E602
	c.sw	s0,8(a0)
	c.beqz	a0,000000002300EFA4

l2300EFCA:
	c.lw	s0,8(a5)
	sw	s3,s0,+00000000
	lui	a0,00023076
	sw	a5,s2,+00000000
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s1,-00000250
	srl	a1,a1,a5
	addi	a0,a0,-00000288
	jal	ra,000000002301F8C0
	c.j	000000002300EFA6

;; UpdateEAPOLWcbLenAndTransmit: 2300EFF6
;;   Called from:
;;     2300F60A (in GeneratePWKMsg2)
;;     2300FB32 (in GenerateGrpMsg2)
;;     2300FE14 (in GeneratePWKMsg4)
;;     230127E0 (in GeneratePWKMsg1)
;;     230128CE (in GeneratePWKMsg3)
UpdateEAPOLWcbLenAndTransmit proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lui	s3,00044B00
	c.mv	s4,a1
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,00023076
	lui	a0,00023076
	addi	a2,s2,-00000228
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	c.lw	s0,0(a5)
	c.lw	s0,8(a3)
	addi	a4,s4,+00000004
	lbu	a0,a5,+00000001
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi	a3,0000000E
	jal	ra,0000000023006876
	c.lw	s0,8(a0)
	jal	ra,000000002300E696
	c.mv	a0,s0
	jal	ra,000000002300E696
	lw	a1,s3,+00000120
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	srl	a1,a1,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.lwsp	s0,00000088
	addi	a2,s2,-00000228
	c.lwsp	a6,00000048
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi16sp	00000020
	jal	zero,000000002301F8C0

;; keyMgmtProcessMsgExt: 2300F074
;;   Called from:
;;     2301149E (in ProcessRxEAPOL_PwkMsg3)
;;     2301156E (in ProcessRxEAPOL_GrpMsg1)
keyMgmtProcessMsgExt proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	lui	s1,00023076
	srl	a1,a1,s0
	lui	a0,00023076
	addi	a2,s1,-00000208
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	lw	a1,s2,+00000120
	lui	a0,00023076
	addi	a2,s1,-00000208
	srl	a1,a1,s0
	addi	a0,a0,-00000288
	jal	ra,000000002301F8C0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; KeyMgmtInitSta: 2300F0C8
;;   Called from:
;;     2300F2EC (in supplicantInitSession)
KeyMgmtInitSta proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	c.mv	s3,a0
	srl	a1,a1,s0
	lui	s1,00023076
	lui	a0,00023076
	addi	a2,s1,-000001F0
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	lw	a0,s3,+00000008
	addi	a0,a0,+00000054
	jal	ra,00000000230116B6
	lw	a1,s2,+00000120
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	srl	a1,a1,s0
	c.lwsp	s8,00000004
	c.lwsp	a2,00000068
	addi	a2,s1,-000001F0
	c.lwsp	s4,00000024
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi16sp	00000020
	jal	zero,000000002301F8C0

;; keyMgmtSta_StartSession: 2300F12A
;;   Called from:
;;     2300F308 (in supplicantInitSession)
keyMgmtSta_StartSession proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	lui	s3,00044B00
	c.mv	s5,a1
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,00023076
	lui	a0,00023076
	c.mv	s6,a2
	addi	a0,a0,-0000029C
	addi	a2,s2,-00000144
	jal	ra,000000002301F8C0
	lw	s4,s0,+00000008
	c.mv	a1,s6
	c.li	a2,00000006
	sw	s0,s4,+0000016C
	c.lw	s0,8(a0)
	addi	a0,a0,+0000002C
	jal	ra,0000000023070C7C
	c.lw	s0,8(a0)
	c.li	a2,00000006
	c.mv	a1,s5
	addi	a0,a0,+00000026
	jal	ra,0000000023070C7C
	lui	a1,00000989
	addi	a0,s4,+00000054
	addi	a1,a1,+00000680
	jal	ra,0000000023011636
	lw	a1,s3,+00000120
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	srl	a1,a1,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	addi	a2,s2,-00000144
	c.lwsp	a6,00000048
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi16sp	00000020
	jal	zero,000000002301F8C0

;; init_customApp_mibs: 2300F1C4
;;   Called from:
;;     2300F38E (in supplicantDisable)
;;     2300F79E (in supplicantInit)
init_customApp_mibs proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	s3,00044B00
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,00023076
	lui	a0,00023076
	addi	a2,s2,-00000114
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	c.li	a2,00000003
	c.li	a1,00000000
	addi	a0,s0,+00000032
	jal	ra,0000000023070EB8
	c.li	a2,0000001C
	c.li	a1,00000000
	addi	a0,s0,+00000035
	jal	ra,0000000023070EB8
	lhu	a5,s0,+00000036
	c.lwsp	t3,00000020
	addi	a2,s2,-00000114
	ori	a5,a5,+00000001
	sh	a5,s0,+00000036
	lw	a1,s3,+00000120
	c.lwsp	s8,00000004
	c.lwsp	a6,00000048
	srl	a1,a1,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi16sp	00000020
	jal	zero,000000002301F8C0

;; supplicantIsEnabled: 2300F23E
;;   Called from:
;;     2300F2E4 (in supplicantInitSession)
;;     2300F370 (in supplicantDisable)
supplicantIsEnabled proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	lui	s3,00044B00
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,00023076
	lui	a0,00023076
	addi	a0,a0,-0000029C
	addi	a2,s2,-00000100
	jal	ra,000000002301F8C0
	c.lw	s0,8(a5)
	c.li	a0,00000000
	c.beqz	a5,000000002300F296

l2300F276:
	lw	a1,s3,+00000120
	lui	a0,00023076
	addi	a0,a0,-00000288
	srl	a1,a1,s1
	addi	a2,s2,-00000100
	jal	ra,000000002301F8C0
	c.lw	s0,8(a5)
	c.lw	a5,52(a0)
	c.srli	a0,00000008
	c.andi	a0,00000001

l2300F296:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; supplicantInitSession: 2300F2A4
;;   Called from:
;;     2300C44A (in sm_assoc_rsp_handler)
supplicantInitSession proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	lui	a5,00044B00
	c.mv	s5,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s1,00023076
	lui	a0,00023076
	addi	a0,a0,-0000029C
	c.mv	s2,a2
	addi	a2,s1,-0000012C
	c.mv	s3,a3
	c.mv	s4,a4
	jal	ra,000000002301F8C0
	c.mv	a0,s0
	jal	ra,000000002300F23E
	c.beqz	a0,000000002300F30C

l2300F2EA:
	c.mv	a0,s0
	jal	ra,000000002300F0C8
	c.lw	s0,8(a0)
	c.mv	a2,s2
	c.mv	a1,s5
	c.addi	a0,00000006
	jal	ra,0000000023070C7C
	c.lw	s0,8(a5)
	c.mv	a2,s4
	c.mv	a1,s3
	sb	s2,a5,+00000005
	c.mv	a0,s0
	jal	ra,000000002300F12A

l2300F30C:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.lwsp	s8,00000004
	srl	a1,a1,a5
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	addi	a2,s1,-0000012C
	c.lwsp	s4,00000024
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi16sp	00000020
	jal	zero,000000002301F8C0

;; supplicantDisable: 2300F33C
;;   Called from:
;;     2300281E (in mm_sta_del)
supplicantDisable proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	lui	s3,00044B00
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,00023076
	lui	a0,00023076
	addi	a0,a0,-0000029C
	addi	a2,s2,-000000EC
	jal	ra,000000002301F8C0
	c.mv	a0,s0
	jal	ra,000000002300F23E
	c.beqz	a0,000000002300F3B6

l2300F376:
	c.lw	s0,8(a0)
	addi	a0,a0,+0000015C
	jal	ra,00000000230037DC
	c.lw	s0,8(a4)
	lbu	a5,a4,+00000035
	c.andi	a5,FFFFFFFE
	sb	a5,a4,+00000035
	c.lw	s0,8(a0)
	jal	ra,000000002300F1C4
	lw	a1,s3,+00000120
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	srl	a1,a1,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	addi	a2,s2,-000000EC
	c.lwsp	a6,00000048
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi16sp	00000020
	jal	zero,000000002301F8C0

l2300F3B6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; supplicantEnable: 2300F3C4
;;   Called from:
;;     2300263E (in mm_sta_add)
supplicantEnable proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	lui	a5,00044B00
	c.mv	s6,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s1,00023076
	lui	a0,00023076
	c.mv	s5,a2
	addi	a0,a0,-0000029C
	addi	a2,s1,-000000D8
	c.mv	s4,a4
	c.mv	s3,a3
	c.li	s2,00000002
	jal	ra,000000002301F8C0
	c.lw	s0,8(a4)
	lbu	a5,a4,+00000035
	ori	a5,a5,+00000001
	sb	a5,a4,+00000035
	addi	a5,s6,-00000004
	bltu	s2,a5,000000002300F4BA

l2300F41C:
	c.lw	s0,8(a4)
	c.li	a2,00000001
	c.mv	a1,s5
	lhu	a5,a4,+00000036
	ori	a5,a5,+00000020
	sh	a5,a4,+00000036
	c.lw	s0,8(a4)
	lbu	a5,a4,+00000035
	ori	a5,a5,+00000004
	sb	a5,a4,+00000035
	c.lw	s0,8(a4)
	lhu	a5,a4,+0000004E
	ori	a5,a5,+00000001
	sh	a5,a4,+0000004E
	c.lw	s0,8(a0)
	addi	a0,a0,+00000038
	jal	ra,0000000023070C7C
	c.lw	s0,8(a0)
	c.li	a2,00000001
	c.mv	a1,s3
	addi	a0,a0,+00000039
	jal	ra,0000000023070C7C
	c.lw	s0,8(a5)
	beq	s4,zero,000000002300F4B4

l2300F468:
	c.li	a4,00000006
	sb	a4,a5,+0000003D

l2300F46E:
	c.lw	s0,8(a0)
	lui	a1,0002308E
	c.li	a2,00000003
	addi	a1,a1,-0000026C

l2300F47A:
	addi	a0,a0,+0000003A
	jal	ra,0000000023070C7C

l2300F482:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.lwsp	s8,00000004
	srl	a1,a1,a5
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	addi	a2,s1,-000000D8
	c.lwsp	s4,00000024
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi16sp	00000020
	jal	zero,000000002301F8C0

l2300F4B4:
	sb	s2,a5,+0000003D
	c.j	000000002300F46E

l2300F4BA:
	c.li	a5,00000003
	bne	s6,a5,000000002300F482

l2300F4C0:
	c.lw	s0,8(a4)
	c.li	a2,00000001
	c.mv	a1,s5
	lhu	a5,a4,+00000036
	ori	a5,a5,+00000008
	sh	a5,a4,+00000036
	c.lw	s0,8(a0)
	addi	a0,a0,+00000038
	jal	ra,0000000023070C7C
	c.lw	s0,8(a0)
	c.li	a2,00000001
	c.mv	a1,s3
	addi	a0,a0,+00000039
	jal	ra,0000000023070C7C
	c.lw	s0,8(a5)
	lui	a1,0002308E
	c.li	a2,00000003
	sb	s2,a5,+0000003D
	c.lw	s0,8(a0)
	addi	a1,a1,-00000250
	c.j	000000002300F47A

;; keyMgmtFormatWpaRsnIe: 2300F4FE
;;   Called from:
;;     2300F5EC (in GeneratePWKMsg2)
keyMgmtFormatWpaRsnIe proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lui	s2,00044B00
	c.mv	s4,a1
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	c.mv	s3,a0
	srl	a1,a1,s0
	lui	s1,00023076
	lui	a0,00023076
	addi	a2,s1,-000000C4
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	lw	a1,s2,+00000120
	lui	a0,00023076
	addi	a2,s1,-000000C4
	srl	a1,a1,s0
	addi	a0,a0,-00000288
	jal	ra,000000002301F8C0
	c.lwsp	s8,00000004
	lbu	a0,s3,+00000001
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a1,s4
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,0000000023002D80

;; GeneratePWKMsg2: 2300F564
;;   Called from:
;;     2300F724 (in KeyMgmtStaHsk_Recvd_PWKMsg1)
GeneratePWKMsg2 proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	a1,00000084
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s2,a0
	srl	a1,a1,a5
	lui	s3,00023076
	lui	a0,00023076
	addi	a0,a0,-0000029C
	c.mv	s4,a2
	addi	a2,s3,-000001E0
	c.mv	s5,a3
	jal	ra,000000002301F8C0
	lw	s1,s2,+00000000
	c.li	a2,00000000
	c.addi4spn	a1,0000001C
	c.mv	a0,s1
	lw	s6,s2,+00000008
	jal	ra,000000002300EF62
	c.beqz	a0,000000002300F644

l2300F5B6:
	c.lw	s1,8(a2)
	c.lwsp	a2,000000C4
	c.mv	s2,a0
	c.lwsp	t3,00000044
	addi	a3,a2,+0000002C
	c.mv	a1,s6
	addi	a2,a2,+00000026
	jal	ra,0000000023010D1E
	c.lwsp	t3,00000004
	c.li	a5,00000001
	lbu	a4,s0,+00000012
	beq	a4,a5,000000002300F5FA

l2300F5D8:
	c.lw	s1,8(a2)
	c.li	a5,00000000
	c.li	a4,00000000
	addi	a3,a2,+0000002C
	addi	a1,s0,+00000071
	addi	a2,a2,+00000026
	c.mv	a0,s1
	jal	ra,000000002300F4FE
	sb	a0,s0,+0000006F
	c.srli	a0,00000008
	sb	a0,s0,+00000070

l2300F5FA:
	c.lwsp	t3,00000044
	c.mv	a3,s5
	c.li	a2,00000001
	c.mv	a1,s4
	jal	ra,00000000230108C0
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,000000002300EFF6
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,00023076
	srl	a1,a1,a5
	addi	a0,a0,-00000288
	addi	a2,s3,-000001E0
	jal	ra,000000002301F8C0
	c.li	a0,00000000

l2300F630:
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

l2300F644:
	c.li	a0,00000001
	c.j	000000002300F630

;; KeyMgmtStaHsk_Recvd_PWKMsg1: 2300F648
;;   Called from:
;;     2300FFB8 (in ProcessKeyMgmtDataSta)
KeyMgmtStaHsk_Recvd_PWKMsg1 proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s5,00000090
	lui	a5,00044B00
	c.mv	s8,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lw	s2,a0,+00000000
	srl	a1,a1,a5
	c.mv	s4,a0
	lui	s6,00023076
	lui	a0,00023076
	addi	a0,a0,-0000029C
	c.mv	s7,a2
	addi	a2,s6,-000001B0
	jal	ra,000000002301F8C0
	lw	s0,s2,+00000008
	c.mv	a0,s4
	addi	s3,s0,+00000054
	c.mv	a1,s3
	jal	ra,000000002301138C
	c.bnez	a0,000000002300F6BA

l2300F69E:
	c.li	s1,00000000

l2300F6A0:
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
	c.addi16sp	00000040
	c.jr	ra

l2300F6BA:
	c.mv	s5,a0
	lw	a0,s2,+00000008
	addi	a0,a0,+0000003A
	jal	ra,0000000023010E7E
	c.mv	s1,a0
	c.beqz	a0,000000002300F718

l2300F6CC:
	lw	a0,s2,+00000008
	addi	a0,a0,+0000003A
	jal	ra,0000000023010F70
	c.beqz	a0,000000002300F69E

l2300F6DA:
	lw	a0,s2,+00000008
	lbu	a1,a0,+00000005
	c.addi	a0,00000006
	jal	ra,00000000230118CA
	c.mv	s1,a0
	c.beqz	a0,000000002300F69E

l2300F6EC:
	lw	a0,s2,+00000008
	addi	a0,a0,+0000003A
	jal	ra,0000000023010FF2
	c.swsp	a0,00000000
	addi	a7,s0,+00000128
	c.mv	a0,s1
	addi	a6,s0,+000000A4
	addi	a5,s0,+00000094
	addi	a4,s0,+00000074
	c.mv	a3,s3
	c.mv	a2,s8
	c.mv	a1,s7
	jal	ra,0000000023011216
	c.li	s1,00000001

l2300F718:
	c.li	a3,00000000
	addi	a2,s0,+00000094
	addi	a1,s0,+00000074
	c.mv	a0,s4
	jal	ra,000000002300F564
	c.bnez	a0,000000002300F760

l2300F72A:
	c.li	a5,00000001
	bne	s1,a5,000000002300F73E

l2300F730:
	addi	a1,s5,+00000009
	c.mv	a0,s3
	jal	ra,00000000230106C4
	sw	zero,s0,+000000CC

l2300F73E:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,00023076
	srl	a1,a1,a5
	addi	a2,s6,-000001B0
	addi	a0,a0,-00000288
	jal	ra,000000002301F8C0
	c.j	000000002300F6A0

l2300F760:
	c.li	s1,00000000
	c.j	000000002300F73E

;; supplicantInit: 2300F764
;;   Called from:
;;     2300F870 (in allocSupplicantData)
supplicantInit proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lui	s3,00044B00
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,00023076
	lui	a0,00023076
	addi	a2,s2,-000000AC
	addi	a0,a0,-0000029C
	addi	s4,s0,+00000054
	jal	ra,000000002301F8C0
	c.mv	a0,s0
	jal	ra,000000002300F1C4
	c.li	a2,00000004
	addi	a1,zero,+000000FF
	addi	a0,s0,+00000198
	jal	ra,0000000023070EB8
	addi	a2,zero,+00000144
	c.li	a1,00000000
	c.mv	a0,s4
	jal	ra,0000000023070EB8
	c.li	a5,00000001
	c.mv	a0,s4
	sw	zero,s0,+00000158
	sw	a5,s0,+00000154
	sb	zero,s0,+00000150
	jal	ra,00000000230115D6
	lw	a1,s3,+00000120
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	srl	a1,a1,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.lwsp	s0,00000088
	addi	a2,s2,-000000AC
	c.lwsp	a6,00000048
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi16sp	00000020
	jal	zero,000000002301F8C0

;; allocSupplicantData: 2300F7F6
;;   Called from:
;;     2301BF18 (in bl_init)
allocSupplicantData proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s2,a0
	srl	a1,a1,a5
	lui	s0,00023076
	lui	a0,00023076
	addi	a2,s0,-0000023C
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	lw	a5,s2,+00000008
	c.bnez	a5,000000002300F87A

l2300F82C:
	lbu	a5,s2,+00000000
	c.beqz	a5,000000002300F85C

l2300F832:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,-0000023C
	srl	a1,a1,a5
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi	sp,00000010
	jal	zero,000000002301F8C0

l2300F85C:
	lui	a0,00042011
	addi	s1,a0,+0000053C
	c.lw	s1,0(a5)
	c.bnez	a5,000000002300F832

l2300F868:
	c.li	a5,00000001
	addi	a0,a0,+0000053C
	c.sw	s1,0(a5)
	jal	ra,000000002300F764
	sw	s1,s2,+00000008
	c.j	000000002300F832

l2300F87A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; keyMgmtGetKeySize: 2300F886
;;   Called from:
;;     2300F906 (in add_key_to_mac)
;;     2300FC04 (in add_mfp_key_to_mac)
keyMgmtGetKeySize proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lui	s2,00044B00
	c.mv	s3,a1
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	c.mv	s4,a0
	srl	a1,a1,s0
	lui	s1,00023076
	lui	a0,00023076
	addi	a2,s1,-0000009C
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	lw	a1,s2,+00000120
	lui	a0,00023076
	addi	a2,s1,-0000009C
	srl	a1,a1,s0
	addi	a0,a0,-00000288
	jal	ra,000000002301F8C0
	lw	a0,s4,+00000008
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	s0,00000088
	c.mv	a1,s3
	c.lwsp	a2,00000068
	addi	a0,a0,+00000035
	c.addi16sp	00000020
	jal	zero,000000002301054E

;; add_key_to_mac: 2300F8F0
;;   Called from:
;;     2300FA60 (in keyMgmtKeyGroupTxDone.isra.1)
;;     2300FCDE (in keyMgmtPlumbPairwiseKey)
;;     23012926 (in ProcessPWKMsg4)
;;     23012BEC (in InitGroupKey)
add_key_to_mac proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	ra,0000009C
	lbu	a5,a0,+00000000
	c.mv	s1,a0
	c.mv	s2,a1
	c.li	s0,00000010
	c.bnez	a5,000000002300F90E

l2300F906:
	jal	ra,000000002300F886
	andi	s0,a0,+000000FF

l2300F90E:
	addi	a2,zero,+0000002C
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,0000000023070EB8
	sltu	a5,zero,s2
	sb	a5,sp,+0000002F
	lbu	a4,s1,+00000002
	lbu	a5,s1,+00000000
	beq	s2,zero,000000002300F964

l2300F92E:
	lbu	a3,s1,+00000001
	sb	a4,sp,+0000002D
	sb	a3,sp,+00000005
	c.bnez	a5,000000002300F95C

l2300F93C:
	c.lw	s1,8(a1)
	c.mv	a2,s0
	addi	a1,a1,+000000D8

l2300F944:
	c.addi4spn	a0,0000000C
	jal	ra,0000000023070C7C
	c.li	a5,00000010
	sb	s0,sp,+00000008
	bne	s0,a5,000000002300F998

l2300F954:
	c.li	a5,00000002

l2300F956:
	sb	a5,sp,+0000002C
	c.j	000000002300F9BA

l2300F95C:
	c.mv	a2,s0
	addi	a1,s1,+000000C4
	c.j	000000002300F944

l2300F964:
	c.li	a3,FFFFFFFF
	sb	a3,sp,+00000005
	sb	a4,sp,+0000002D
	c.bnez	a5,000000002300F982

l2300F970:
	c.lw	s1,8(a1)
	c.mv	a2,s0
	lhu	a5,a1,+00000126
	addi	a1,a1,+00000100
	sb	a5,sp,+00000004
	c.j	000000002300F944

l2300F982:
	c.mv	a0,s1
	jal	ra,000000002301306C
	lhu	a5,a0,+000000F2
	c.mv	a2,s0
	addi	a1,a0,+000000CC
	sb	a5,sp,+00000004
	c.j	000000002300F944

l2300F998:
	addi	a5,zero,+00000020
	bne	s0,a5,000000002300F9EC

l2300F9A0:
	c.li	a5,00000001
	sb	a5,sp,+0000002C
	beq	s2,zero,000000002300F9BA

l2300F9AA:
	c.lwsp	tp,000001B4
	c.lwsp	t3,000000C4
	c.lwsp	zero,000001F4
	c.swsp	a3,0000008C
	c.lwsp	s0,000001B4
	c.swsp	a4,00000090
	c.swsp	a5,00000014
	c.swsp	a3,00000010

l2300F9BA:
	lbu	a5,sp,+00000008
	lbu	a4,sp,+0000002C
	lbu	a3,sp,+00000004
	lbu	a2,sp,+0000002D
	lbu	a1,sp,+00000005
	lui	a0,00023076
	addi	a0,a0,-0000001C
	jal	ra,0000000023052118
	c.addi4spn	a0,00000004
	jal	ra,000000002300219C
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

l2300F9EC:
	c.li	a5,0000000D
	bne	s0,a5,000000002300F9F6

l2300F9F2:
	c.li	a5,00000003
	c.j	000000002300F956

l2300F9F6:
	c.li	a5,00000005
	bne	s0,a5,000000002300FA02

l2300F9FC:
	sb	zero,sp,+0000002C
	c.j	000000002300F9BA

l2300FA02:
	lui	a1,00023074
	lui	a0,00023076
	addi	a2,zero,+00000783
	addi	a1,a1,+000002DC
	addi	a0,a0,+00000768
	jal	ra,000000002301327E
	c.j	000000002300F9BA

;; keyMgmtKeyGroupTxDone.isra.1: 2300FA1C
;;   Called from:
;;     2300FB2A (in GenerateGrpMsg2)
;;     2300FE40 (in GeneratePWKMsg4)
keyMgmtKeyGroupTxDone.isra.1 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s1,00023076
	lui	a0,00023076
	addi	a0,a0,-0000029C
	addi	a2,s1,-00000070
	jal	ra,000000002301F8C0
	c.lw	s0,0(s0)
	addi	a5,zero,+000000FF
	lbu	a0,s0,+00000003
	beq	a0,a5,000000002300FA5C

l2300FA58:
	jal	ra,00000000230022CC

l2300FA5C:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002300F8F0
	c.lw	s0,8(a5)
	sb	a0,s0,+00000003
	c.li	a4,00000001
	sw	a4,a5,+000000C8
	c.lw	s0,8(a5)
	lw	a3,a5,+000000CC
	c.bnez	a3,000000002300FA86

l2300FA78:
	sw	a4,a5,+000000CC
	lbu	a0,s0,+00000001
	c.li	a1,00000000
	jal	ra,000000002300C52A

l2300FA86:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lui	a0,00023076
	srl	a1,a1,a5
	addi	a2,s1,-00000070
	addi	a0,a0,-00000288
	jal	ra,000000002301F8C0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; GenerateGrpMsg2: 2300FAB2
;;   Called from:
;;     2300FBCC (in KeyMgmtStaHsk_Recvd_GrpMsg1)
GenerateGrpMsg2 proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	ra,0000009C
	lui	s3,00044B00
	c.mv	s5,a1
	lw	a1,s3,+00000120
	addi	s1,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,s1
	lui	s2,00023076
	lui	a0,00023076
	addi	a2,s2,-000001C0
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	lw	s4,s0,+00000000
	c.li	a2,00000000
	c.addi4spn	a1,0000001C
	c.mv	a0,s4
	lw	s6,s0,+00000008
	jal	ra,000000002300EF62
	c.beqz	a0,000000002300FB64

l2300FB00:
	lw	a2,s4,+00000008
	c.mv	s0,a0
	c.lwsp	t3,00000044
	c.li	a4,00000000
	addi	a3,a2,+0000002C
	c.mv	a1,s6
	addi	a2,a2,+00000026
	jal	ra,0000000023010D1E
	c.lwsp	t3,00000044
	c.li	a3,00000000
	c.li	a2,00000001
	addi	a1,s5,+00000040
	jal	ra,00000000230108C0
	c.swsp	a0,00000084
	c.mv	a0,s0
	jal	ra,000000002300FA1C
	c.lwsp	a2,00000064
	c.mv	a0,s0
	jal	ra,000000002300EFF6
	lw	a1,s3,+00000120
	lui	a0,00023076
	addi	a0,a0,-00000288
	srl	a1,a1,s1
	addi	a2,s2,-000001C0
	jal	ra,000000002301F8C0
	c.li	a0,00000000

l2300FB50:
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

l2300FB64:
	c.li	a0,00000001
	c.j	000000002300FB50

;; KeyMgmtStaHsk_Recvd_GrpMsg1: 2300FB68
;;   Called from:
;;     2300FFC0 (in ProcessKeyMgmtDataSta)
KeyMgmtStaHsk_Recvd_GrpMsg1 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lui	s5,00044B00
	lw	a1,s5,+00000120
	addi	s3,zero,+000003E8
	c.lw	a0,0(a5)
	srl	a1,a1,s3
	c.mv	s2,a0
	c.lw	a5,8(s0)
	lui	s4,00023076
	lui	a0,00023076
	addi	a0,a0,-0000029C
	addi	a2,s4,-00000178
	addi	s0,s0,+00000054
	jal	ra,000000002301F8C0
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,00000000230114DC
	c.bnez	a0,000000002300FBC6

l2300FBB0:
	c.li	s1,00000000

l2300FBB2:
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

l2300FBC6:
	c.mv	s1,a0
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,000000002300FAB2
	c.bnez	a0,000000002300FBB0

l2300FBD2:
	addi	a1,s1,+00000009
	c.mv	a0,s0
	jal	ra,00000000230106C4
	lw	a1,s5,+00000120
	lui	a0,00023076
	addi	a2,s4,-00000178
	srl	a1,a1,s3
	addi	a0,a0,-00000288
	jal	ra,000000002301F8C0
	c.j	000000002300FBB2

;; add_mfp_key_to_mac: 2300FBF6
;;   Called from:
;;     2300FCF6 (in keyMgmtPlumbPairwiseKey)
add_mfp_key_to_mac proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.mv	s0,a0
	c.swsp	s2,00000018
	c.mv	s2,a1
	jal	ra,000000002300F886
	andi	s1,a0,+000000FF
	addi	a2,zero,+0000002C
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,0000000023070EB8
	lbu	a5,s0,+00000002
	sb	s1,sp,+00000008
	sb	a5,sp,+0000002D
	c.li	a5,00000005
	sb	a5,sp,+0000002C
	addi	a5,zero,-000000FC
	sh	a5,sp,+00000004
	lbu	a5,s0,+00000000
	beq	s2,zero,000000002300FC8E

l2300FC3A:
	c.bnez	a5,000000002300FC4A

l2300FC3C:
	c.lw	s0,8(a1)
	c.mv	a2,s1
	addi	a1,a1,+000000D8

l2300FC44:
	c.addi4spn	a0,0000000C
	jal	ra,0000000023070C7C

l2300FC4A:
	lbu	a5,sp,+00000008
	lbu	a4,sp,+0000002C
	lbu	a3,sp,+00000004
	lbu	a2,sp,+0000002D
	lbu	a1,sp,+00000005
	lui	a0,00023076
	addi	a0,a0,+00000030
	jal	ra,0000000023052118
	c.addi4spn	a0,00000004
	jal	ra,000000002300219C
	c.mv	s0,a0
	c.mv	a1,a0
	lui	a0,00023076
	addi	a0,a0,+00000080
	jal	ra,0000000023052118
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

l2300FC8E:
	c.bnez	a5,000000002300FC4A

l2300FC90:
	c.lw	s0,8(a1)
	c.mv	a2,s1
	addi	a1,a1,+00000100
	c.j	000000002300FC44

;; keyMgmtPlumbPairwiseKey: 2300FC9A
;;   Called from:
;;     2300FD5E (in keyMgmtKeyPairwiseTxDone.isra.2)
keyMgmtPlumbPairwiseKey proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.mv	s0,a0
	srl	a1,a1,a5
	lui	s1,00023076
	lui	a0,00023076
	addi	a2,s1,-00000088
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	c.lw	s0,8(a0)
	addi	a2,zero,+00000028
	addi	a1,a0,+00000128
	addi	a0,a0,+000000D8
	jal	ra,0000000023070C7C
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002300F8F0
	c.lw	s0,8(a5)
	sb	a0,s0,+00000004
	lbu	a4,a5,+0000003D
	c.li	a5,00000006
	bne	a4,a5,000000002300FCFE

l2300FCF2:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002300FBF6
	sb	a0,s0,+00000005

l2300FCFE:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	c.lwsp	s0,00000004
	srl	a1,a1,a5
	c.lwsp	a2,00000020
	addi	a2,s1,-00000088
	c.lwsp	tp,00000024
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi	sp,00000010
	jal	zero,000000002301F8C0

;; keyMgmtKeyPairwiseTxDone.isra.2: 2300FD26
;;   Called from:
;;     2300FE3A (in GeneratePWKMsg4)
;;     2300FE92 (in GeneratePWKMsg4)
keyMgmtKeyPairwiseTxDone.isra.2 proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	lui	s1,00023076
	srl	a1,a1,s0
	c.mv	s3,a0
	lui	a0,00023076
	addi	a2,s1,-00000058
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	lw	s3,s3,+00000000
	c.mv	a0,s3
	jal	ra,000000002300FC9A
	lw	a5,s3,+00000008
	c.li	a4,00000001
	lui	a0,00023076
	sw	a4,a5,+000000D0
	lw	a1,s2,+00000120
	addi	a2,s1,-00000058
	addi	a0,a0,-00000288
	srl	a1,a1,s0
	jal	ra,000000002301F8C0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; GeneratePWKMsg4: 2300FD94
;;   Called from:
;;     2300FEF4 (in KeyMgmtStaHsk_Recvd_PWKMsg3)
GeneratePWKMsg4 proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	ra,0000009C
	c.swsp	s3,00000094
	lui	s2,00044B00
	c.mv	s8,a1
	lw	a1,s2,+00000120
	addi	s1,zero,+000003E8
	lui	s6,00023076
	srl	a1,a1,s1
	lui	s5,00023076
	c.mv	s0,a0
	c.mv	s7,a2
	addi	a0,s5,-0000029C
	addi	a2,s6,-000001D0
	jal	ra,000000002301F8C0
	lw	s4,s0,+00000000
	c.li	a2,00000000
	c.addi4spn	a1,0000000C
	c.mv	a0,s4
	lw	s9,s0,+00000008
	jal	ra,000000002300EF62
	c.beqz	a0,000000002300FE98

l2300FDEA:
	lw	a2,s4,+00000008
	c.mv	s3,a0
	c.lwsp	a2,00000044
	c.li	a4,00000000
	addi	a3,a2,+0000002C
	c.mv	a1,s9
	addi	a2,a2,+00000026
	jal	ra,0000000023010D1E
	c.lwsp	a2,00000044
	c.li	a3,00000000
	c.li	a2,00000001
	addi	a1,s8,+00000040
	jal	ra,00000000230108C0
	c.mv	a1,a0
	c.mv	a0,s3
	jal	ra,000000002300EFF6
	lui	s3,00023076
	beq	s7,zero,000000002300FE90

l2300FE20:
	lw	a1,s2,+00000120
	lui	s4,00023076
	addi	a2,s4,-0000003C
	srl	a1,a1,s1
	addi	a0,s5,-0000029C
	jal	ra,000000002301F8C0
	c.mv	a0,s0
	jal	ra,000000002300FD26
	c.mv	a0,s0
	jal	ra,000000002300FA1C
	lw	a1,s2,+00000120
	addi	a2,s4,-0000003C
	addi	a0,s3,-00000288
	srl	a1,a1,s1
	jal	ra,000000002301F8C0

l2300FE58:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a0,s3,-00000288
	srl	a1,a1,a5
	addi	a2,s6,-000001D0
	jal	ra,000000002301F8C0
	c.li	a0,00000000

l2300FE76:
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

l2300FE90:
	c.mv	a0,s0
	jal	ra,000000002300FD26
	c.j	000000002300FE58

l2300FE98:
	c.li	a0,00000001
	c.j	000000002300FE76

;; KeyMgmtStaHsk_Recvd_PWKMsg3: 2300FE9C
;;   Called from:
;;     2300FF80 (in ProcessKeyMgmtDataSta)
KeyMgmtStaHsk_Recvd_PWKMsg3 proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s0,0000000C
	lui	s5,00044B00
	lw	a1,s5,+00000120
	addi	s3,zero,+000003E8
	c.lw	a0,0(s0)
	srl	a1,a1,s3
	c.mv	s2,a0
	lui	s4,00023076
	lui	a0,00023076
	addi	a2,s4,-00000194
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	c.lw	s0,8(s1)
	c.mv	a0,s2
	addi	s1,s1,+00000054
	c.mv	a1,s1
	jal	ra,000000002301141E
	c.mv	s0,a0
	c.beqz	a0,000000002300FF1E

l2300FEE6:
	lbu	a2,a0,+00000004
	c.mv	a1,s1
	c.mv	a0,s2
	c.addi	a2,FFFFFFFE
	sltiu	a2,a2,+00000001
	jal	ra,000000002300FD94
	c.bnez	a0,000000002300FF1E

l2300FEFA:
	addi	a1,s0,+00000009
	c.mv	a0,s1
	jal	ra,00000000230106C4
	lw	a1,s5,+00000120
	lui	a0,00023076
	addi	a2,s4,-00000194
	srl	a1,a1,s3
	addi	a0,a0,-00000288
	c.li	s0,00000000
	jal	ra,000000002301F8C0

l2300FF1E:
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

;; ProcessKeyMgmtDataSta: 2300FF32
;;   Called from:
;;     23010096 (in ProcessEAPoLPkt)
ProcessKeyMgmtDataSta proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	lui	a5,00044B00
	c.mv	s3,a1
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	lw	s2,a0,+00000008
	srl	a1,a1,a5
	c.mv	s1,a0
	lui	s0,00023076
	lui	a0,00023076
	c.mv	s4,a2
	addi	a0,a0,-0000029C
	addi	a2,s0,-0000015C
	jal	ra,000000002301F8C0
	lbu	a5,s2,+00000006
	c.andi	a5,00000008
	c.beqz	a5,000000002300FFBE

l2300FF76:
	lbu	a5,s2,+00000005
	c.andi	a5,00000001
	c.beqz	a5,000000002300FFB2

l2300FF7E:
	c.mv	a0,s1
	jal	ra,000000002300FE9C

l2300FF84:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,-0000015C
	srl	a1,a1,a5
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi16sp	00000020
	jal	zero,000000002301F8C0

l2300FFB2:
	c.mv	a2,s4
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,000000002300F648
	c.j	000000002300FF84

l2300FFBE:
	c.mv	a0,s1
	jal	ra,000000002300FB68
	c.j	000000002300FF84

;; ProcessEAPoLPkt: 2300FFC6
;;   Called from:
;;     2300A330 (in rxu_cntrl_frame_handle)
ProcessEAPoLPkt proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	lui	s0,00044B00
	c.mv	s6,a1
	lw	a1,s0,+00000120
	addi	s3,zero,+000003E8
	lui	s4,00023076
	srl	a1,a1,s3
	lui	s2,00023076
	c.mv	s1,a0
	c.mv	s7,a2
	addi	a0,s2,-0000029C
	addi	a2,s4,-00000260
	lui	s5,00023076
	jal	ra,000000002301F8C0
	c.lw	s1,8(a5)
	lbu	a4,a5,+00000001
	c.li	a5,00000003
	bne	a4,a5,000000002301009C

l23010014:
	lw	a1,s0,+00000120
	lui	s0,00023076
	addi	a2,s0,-00000274
	srl	a1,a1,s3
	addi	a0,s2,-0000029C
	jal	ra,000000002301F8C0
	c.lw	s1,0(a5)
	lbu	a4,a5,+00000000
	c.li	a5,00000002
	bne	a4,a5,0000000023010090

l23010038:
	c.mv	a0,s1
	jal	ra,0000000023012A8E

l2301003E:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a2,s0,-00000274
	srl	a1,a1,a5
	addi	a0,s5,-00000288
	c.li	s0,00000001
	jal	ra,000000002301F8C0

l2301005C:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	addi	a5,zero,+000003E8
	addi	a0,s5,-00000288
	srl	a1,a1,a5
	addi	a2,s4,-00000260
	jal	ra,000000002301F8C0
	c.mv	a0,s0
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

l23010090:
	c.mv	a2,s7
	c.mv	a1,s6
	c.mv	a0,s1
	jal	ra,000000002300FF32
	c.j	000000002301003E

l2301009C:
	c.li	s0,00000000
	c.j	000000002301005C

;; process_rsn_ie: 230100A0
;;   Called from:
;;     2300AEE2 (in scanu_frame_handler)
;;     23024022 (in bl_rx_scanu_result_ind)
process_rsn_ie proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	ra,000000A4
	c.swsp	s3,0000009C
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	c.mv	s7,a5
	lbu	a5,a0,+00000009
	c.mv	s2,a4
	lbu	a4,a0,+00000008
	c.slli	a5,08
	c.mv	s0,a0
	c.or	a5,a4
	c.li	a4,00000002
	c.mv	s1,a1
	c.mv	s5,a2
	c.mv	s8,a3
	addi	s4,a0,+0000000E
	addi	s6,a0,+0000000A
	bne	a5,a4,000000002301011E

l230100E2:
	lbu	a5,a0,+00000001
	lui	a1,0002308E
	sb	zero,a0,+00000009
	c.addi	a5,FFFFFFFC
	sb	a5,a0,+00000001
	c.li	a5,00000001
	sb	a5,a0,+00000008
	c.li	a2,00000004
	addi	a1,a1,-00000260
	c.mv	a0,s4
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023010112

l23010108:
	c.li	a2,00000004
	c.mv	a1,s4
	c.mv	a0,s6
	jal	ra,0000000023070C7C

l23010112:
	c.li	a2,0000000C
	addi	a1,s0,+00000012
	c.mv	a0,s4
	jal	ra,0000000023070C7C

l2301011E:
	c.li	a2,00000002
	c.mv	a1,s4
	addi	a0,sp,+0000000E
	jal	ra,0000000023070C7C
	c.li	a5,00000000
	lui	s9,0002308E
	lui	s10,0002308E

l23010134:
	lhu	a4,sp,+0000000E
	bltu	a5,a4,0000000023010242

l2301013C:
	c.li	a5,00000002
	bne	a4,a5,000000002301018C

l23010142:
	c.li	a5,00000014
	sb	a5,s0,+00000001
	c.li	a2,00000002
	c.li	a5,00000001
	addi	a1,sp,+0000000E
	c.mv	a0,s4
	sh	a5,sp,+0000000E
	jal	ra,0000000023070C7C
	addi	s3,s0,+00000014
	c.li	a2,00000004
	beq	s7,zero,000000002301028A

l23010164:
	lui	a1,0002308E
	addi	a1,a1,-00000264

l2301016C:
	c.mv	a0,s3
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023010180

l23010174:
	c.li	a2,00000006
	c.mv	a1,s3
	addi	a0,s0,+00000010
	jal	ra,0000000023070C7C

l23010180:
	c.li	a2,00000002
	addi	a1,s0,+00000018
	c.mv	a0,s3
	jal	ra,0000000023070C7C

l2301018C:
	lbu	a5,s2,+00000001
	c.andi	a5,00000001
	c.beqz	a5,00000000230101DE

l23010194:
	lbu	a5,s2,+00000000
	andi	a5,a5,+00000020
	c.beqz	a5,00000000230101A2

l2301019E:
	bne	s7,zero,00000000230101DE

l230101A2:
	c.li	a5,00000001
	sb	a5,s8,+00000000
	addi	a5,zero,-00000040
	sb	a5,s0,+00000014
	lbu	a5,s0,+00000001
	lui	a1,0002308E
	sb	zero,s0,+00000016
	c.addi	a5,00000002
	sb	a5,s0,+00000001
	sb	zero,s0,+00000017
	c.li	a2,00000004
	addi	a1,a1,-00000258
	addi	a0,s0,+00000018
	jal	ra,0000000023070C7C
	lbu	a5,s0,+00000001
	c.addi	a5,00000004
	sb	a5,s0,+00000001

l230101DE:
	lui	s3,0002308E
	c.li	a2,00000004
	addi	a1,s3,-00000260
	c.mv	a0,s6
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023010294

l230101F0:
	lbu	a5,s5,+00000000
	ori	a5,a5,+00000008

l230101F8:
	sb	a5,s5,+00000000

l230101FC:
	addi	s2,s0,+00000004
	c.li	a2,00000004
	addi	a1,s3,-00000260
	c.mv	a0,s2
	jal	ra,0000000023070BF4
	c.bnez	a0,00000000230102B0

l2301020E:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000008

l23010216:
	sb	a5,s1,+00000000

l2301021A:
	lbu	a0,s0,+00000001
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.addi	a0,00000002
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
	andi	a0,a0,+000000FF
	c.addi16sp	00000050
	c.jr	ra

l23010242:
	addi	s3,a5,+00000001
	slli	s11,s3,00000002
	c.addi	s11,00000002
	c.add	s11,s6
	c.li	a2,00000004
	addi	a1,s9,-00000264
	c.mv	a0,s11
	jal	ra,0000000023070BF4
	c.bnez	a0,000000002301026E

l2301025C:
	lbu	a5,s2,+00000000
	ori	a5,a5,+00000020
	sb	a5,s2,+00000000

l23010268:
	andi	a5,s3,+000000FF
	c.j	0000000023010134

l2301026E:
	c.li	a2,00000004
	addi	a1,s10,-00000254
	c.mv	a0,s11
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023010268

l2301027C:
	lbu	a5,s2,+00000001
	ori	a5,a5,+00000001
	sb	a5,s2,+00000001
	c.j	0000000023010268

l2301028A:
	lui	a1,0002308E
	addi	a1,a1,-00000254
	c.j	000000002301016C

l23010294:
	lui	a1,0002308E
	c.li	a2,00000004
	addi	a1,a1,-00000264
	c.mv	a0,s6
	jal	ra,0000000023070BF4
	c.bnez	a0,00000000230101FC

l230102A6:
	lbu	a5,s5,+00000000
	ori	a5,a5,+00000004
	c.j	00000000230101F8

l230102B0:
	lui	a1,0002308E
	c.li	a2,00000004
	addi	a1,a1,-00000264
	c.mv	a0,s2
	jal	ra,0000000023070BF4
	c.bnez	a0,00000000230102CC

l230102C2:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000004
	c.j	0000000023010216

l230102CC:
	lui	a1,0002308E
	c.li	a2,00000004
	addi	a1,a1,-0000025C
	c.mv	a0,s2
	jal	ra,0000000023070BF4
	c.bnez	a0,00000000230102E8

l230102DE:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000002
	c.j	0000000023010216

l230102E8:
	lui	a1,0002308E
	c.li	a2,00000004
	addi	a1,a1,-00000268
	c.mv	a0,s2
	jal	ra,0000000023070BF4
	c.bnez	a0,000000002301021A

l230102FA:
	lbu	a5,s1,+00000000
	ori	a5,a5,+00000001
	c.j	0000000023010216
