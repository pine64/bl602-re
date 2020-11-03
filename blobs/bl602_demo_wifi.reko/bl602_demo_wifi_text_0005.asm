;;; Segment .text (23000300)

l2305030C:
	c.li	s0,00000003

l2305030E:
	c.addi4spn	a0,00000008
	jal	ra,000000002304EABE
	c.beqz	a0,00000000230502C2

l23050316:
	c.li	a5,FFFFFFF3
	beq	s0,a5,0000000023050326

l2305031C:
	c.j	000000002305042E

l2305031E:
	c.mv	a0,s1
	jal	ra,000000002304F5B0
	c.bnez	a0,000000002305032A

l23050326:
	c.li	s0,FFFFFFF3
	c.j	0000000023050340

l2305032A:
	c.li	a5,00000003
	c.li	s0,FFFFFFE2
	bne	s3,a5,0000000023050340

l23050332:
	c.li	a2,00000004
	c.li	a1,00000003
	c.mv	a0,s1
	jal	ra,000000002304F336
	c.mv	s0,a0
	c.beqz	a0,00000000230502A2

l23050340:
	c.mv	a0,s0
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

l23050356:
	c.li	s2,FFFFFFEE

l23050358:
	c.lw	s1,44(a1)
	c.li	s0,FFFFFFF2
	c.slli	a1,01
	c.sw	s1,44(a1)
	bltu	s3,a1,000000002305030E

l23050364:
	c.mv	a0,s4
	jal	ra,000000002304EB02
	c.mv	s0,s2
	c.j	000000002305030E

l2305036E:
	addi	a2,sp,+00000003
	c.addi4spn	a1,00000008
	c.mv	a0,s1
	jal	ra,0000000023050F4A
	c.mv	s0,a0
	c.bnez	a0,000000002305040E

l2305037E:
	lhu	a5,s1,+00000028
	c.beqz	a5,000000002305030E

l23050384:
	c.mv	a0,s1
	jal	ra,000000002304EABE
	c.beqz	a0,000000002305030E

l2305038C:
	lbu	a5,s1,+00000019
	c.beqz	a5,00000000230503CE

l23050392:
	c.mv	a0,s1
	jal	ra,0000000023050228
	c.mv	s0,a0

l2305039A:
	c.li	a5,FFFFFFF3
	bne	s0,a5,000000002305042A

l230503A0:
	c.lw	s1,48(a5)
	c.addi	a5,00000001
	c.sw	s1,48(a5)
	lbu	a5,s1,+0000001A
	c.beqz	a5,0000000023050326

l230503AC:
	c.li	a2,0000000D
	c.li	a1,0000000B
	c.mv	a0,s1
	jal	ra,000000002304F336
	c.mv	s0,a0
	c.bnez	a0,0000000023050316

l230503BA:
	addi	a5,zero,+000003E8
	c.sw	s1,44(a5)
	addi	a1,zero,+000003E8
	c.mv	a0,s4
	jal	ra,000000002304EB02
	c.li	s0,00000004
	c.j	000000002305030E

l230503CE:
	c.addi4spn	a0,00000014
	jal	ra,000000002304EB94
	c.lw	s1,36(a1)
	c.addi4spn	a0,00000014
	jal	ra,000000002304EB02
	c.lw	s1,52(a1)
	c.addi4spn	a3,00000004
	c.li	a2,0000000C
	c.mv	a0,s5
	c.swsp	zero,00000080
	jal	ra,0000000023051266
	c.mv	s0,a0
	c.bnez	a0,000000002305039A

l230503EE:
	c.lwsp	tp,00000064
	c.addi4spn	a2,00000014
	c.mv	a0,s1
	jal	ra,0000000023050EC2
	c.mv	s0,a0
	c.bnez	a0,0000000023050392

l230503FC:
	lhu	a1,s1,+00000028
	c.li	a5,00000001
	sb	a5,s1,+00000019
	c.mv	a0,s1
	jal	ra,000000002304EB4C
	c.j	000000002305030E

l2305040E:
	andi	a5,a0,-00000003
	c.slli	a5,18
	c.srai	a5,00000018
	c.li	a4,FFFFFFF4
	beq	a5,a4,0000000023050392

l2305041C:
	c.li	a5,FFFFFFF9
	beq	a0,a5,0000000023050392

l23050422:
	c.li	a5,FFFFFFF3
	beq	a0,a5,00000000230503A0

l23050428:
	c.j	000000002305042E

l2305042A:
	beq	s0,zero,000000002305030E

l2305042E:
	c.li	a5,00000004
	beq	s0,a5,0000000023050340

l23050434:
	c.li	a2,00000003
	c.li	a1,00000004
	c.mv	a0,s1
	jal	ra,000000002304F336
	bne	s0,zero,0000000023050340

l23050442:
	c.mv	s0,a0
	c.j	0000000023050340

l23050446:
	c.li	s0,FFFFFFF2
	c.j	000000002305042E

;; iot_tls_is_connected: 2305044A
iot_tls_is_connected proc
	c.li	a0,00000006
	c.jr	ra

;; iot_tls_connect: 2305044E
iot_tls_connect proc
	c.addi16sp	FFFFFEB0
	sw	s0,sp,+00000148
	sw	ra,sp,+0000014C
	sw	s1,sp,+00000144
	sw	s2,sp,+00000140
	sw	s3,sp,+0000013C
	sw	s4,sp,+00000138
	sw	s5,sp,+00000134
	sw	s6,sp,+00000130
	sw	s7,sp,+0000012C
	sw	s8,sp,+00000128
	sw	s9,sp,+00000124
	sw	s10,sp,+00000120
	c.li	s0,FFFFFFFE
	c.beqz	a0,0000000023050548

l23050484:
	c.beqz	a1,00000000230504B2

l23050486:
	c.lw	a1,0(a3)
	lw	a6,a1,+00000004
	c.lw	a1,8(a2)
	lw	a7,a1,+0000000C
	lhu	t1,a1,+00000010
	c.lw	a1,20(a4)
	lbu	a5,a1,+00000018
	sh	t1,a0,+00000028
	sw	a7,a0,+00000024
	sw	a6,a0,+0000001C
	c.sw	a0,32(a2)
	c.sw	a0,24(a3)
	c.sw	a0,44(a4)
	sb	a5,a0,+00000030

l230504B2:
	addi	s3,a0,+00000728
	c.mv	s0,a0
	addi	s7,a0,+00000034
	c.mv	a0,s3
	jal	ra,000000002305F36A
	addi	s1,s0,+0000037C
	c.mv	a0,s1
	jal	ra,000000002305A38C
	addi	s2,s0,+0000043C
	c.mv	a0,s2
	jal	ra,000000002305AB64
	addi	s9,s0,+0000023C
	c.mv	a0,s9
	jal	ra,0000000023056048
	addi	s6,s0,+000004B8
	c.mv	a0,s6
	jal	ra,000000002305EA9C
	addi	s4,s0,+000005EC
	c.mv	a0,s4
	jal	ra,000000002305EA9C
	addi	s5,s0,+00000720
	c.mv	a0,s5
	jal	ra,00000000230564D2
	lui	a0,00023088
	addi	a0,a0,-0000030C
	jal	ra,0000000023052118
	c.mv	a0,s7
	jal	ra,0000000023056356
	lui	a5,0004200E
	lw	a3,a5,-00000698
	c.mv	a0,a3
	c.swsp	a3,00000084
	jal	ra,000000002307132C
	c.lwsp	a2,000000A4
	lui	a1,00023056
	c.mv	a4,a0
	c.mv	a2,s7
	addi	a1,a1,+000003BA
	c.mv	a0,s9
	jal	ra,0000000023056190
	c.beqz	a0,000000002305057E

l23050536:
	sub	a1,zero,a0
	lui	a0,00023088
	addi	a0,a0,-000002DC
	jal	ra,0000000023052118
	c.li	s0,FFFFFFF0

l23050548:
	c.mv	a0,s0
	lw	ra,sp,+0000014C
	lw	s0,sp,+00000148
	lw	s1,sp,+00000144
	lw	s2,sp,+00000140
	lw	s3,sp,+0000013C
	lw	s4,sp,+00000138
	lw	s5,sp,+00000134
	lw	s6,sp,+00000130
	lw	s7,sp,+0000012C
	lw	s8,sp,+00000128
	lw	s9,sp,+00000124
	lw	s10,sp,+00000120
	c.addi16sp	00000150
	c.jr	ra

l2305057E:
	c.lw	s0,24(a5)
	lbu	a4,a5,+00000000
	addi	a5,zero,+0000002F
	bne	a4,a5,00000000230505B8

l2305058C:
	lui	a0,00023088
	addi	a0,a0,-000002A4
	jal	ra,0000000023052118
	c.lw	s0,24(a1)
	c.mv	a0,s6
	jal	ra,000000002305F308

l230505A0:
	bge	a0,zero,00000000230505DC

l230505A4:
	sub	a1,zero,a0
	lui	a0,00023088
	addi	a0,a0,-0000023C
	jal	ra,0000000023052118
	c.li	s0,FFFFFFED
	c.j	0000000023050548

l230505B8:
	lui	a0,00023088
	addi	a0,a0,-00000270
	jal	ra,0000000023052118
	c.lw	s0,24(a1)
	c.mv	a0,a1
	c.swsp	a1,00000084
	jal	ra,000000002307132C
	c.lwsp	a2,00000064
	addi	a2,a0,+00000001
	c.mv	a0,s6
	jal	ra,000000002305F1F4
	c.j	00000000230505A0

l230505DC:
	c.mv	a1,a0
	lui	a0,00023088
	addi	a0,a0,-000001EC
	jal	ra,0000000023052118
	c.lw	s0,28(a5)
	lbu	a4,a5,+00000000
	addi	a5,zero,+0000002F
	bne	a4,a5,0000000023050622

l230505F8:
	lui	a0,00023088
	addi	a0,a0,-000001D4
	jal	ra,0000000023052118
	c.lw	s0,28(a1)
	c.mv	a0,s4
	jal	ra,000000002305F308

l2305060C:
	c.beqz	a0,0000000023050646

l2305060E:
	sub	a1,zero,a0
	lui	a0,00023088
	addi	a0,a0,-00000178
	jal	ra,0000000023052118
	c.li	s0,FFFFFFEC
	c.j	0000000023050548

l23050622:
	lui	a0,00023088
	addi	a0,a0,-000001A8
	jal	ra,0000000023052118
	c.lw	s0,28(a1)
	c.mv	a0,a1
	c.swsp	a1,00000084
	jal	ra,000000002307132C
	c.lwsp	a2,00000064
	addi	a2,a0,+00000001
	c.mv	a0,s4
	jal	ra,000000002305F1F4
	c.j	000000002305060C

l23050646:
	c.lw	s0,32(a5)
	lui	s7,00023089
	lbu	a4,a5,+00000000
	addi	a5,zero,+0000002F
	bne	a4,a5,0000000023050686

l23050658:
	lui	a0,00023088
	addi	a0,a0,-00000124
	jal	ra,0000000023052118
	c.lw	s0,32(a1)
	addi	a2,s7,-000001A0
	c.mv	a0,s5
	jal	ra,000000002305709E

l23050670:
	c.beqz	a0,00000000230506B0

l23050672:
	sub	a1,zero,a0
	lui	a0,00023088
	addi	a0,a0,-000000C4
	jal	ra,0000000023052118
	c.li	s0,FFFFFFEB
	c.j	0000000023050548

l23050686:
	lui	a0,00023088
	addi	a0,a0,-000000F4
	jal	ra,0000000023052118
	c.lw	s0,32(a1)
	c.mv	a0,a1
	c.swsp	a1,00000084
	jal	ra,000000002307132C
	c.lwsp	a2,00000064
	addi	a2,a0,+00000001
	c.li	a4,00000000
	addi	a3,s7,-000001A0
	c.mv	a0,s5
	jal	ra,0000000023056EC4
	c.j	0000000023050670

l230506B0:
	lui	s10,00023088
	addi	a0,s10,-00000074
	jal	ra,0000000023052118
	lhu	a3,s0,+00000028
	lui	a2,0002308A
	addi	a2,a2,-00000648
	c.li	a1,00000006
	c.addi4spn	a0,00000018
	jal	ra,000000002305216A
	c.lw	s0,36(a1)
	lui	a0,00023088
	c.addi4spn	a2,00000018
	addi	a0,a0,-00000068
	jal	ra,0000000023052118
	c.lw	s0,36(a1)
	c.li	a3,00000000
	c.addi4spn	a2,00000018
	c.mv	a0,s3
	jal	ra,000000002305F370
	c.mv	s7,a0
	c.mv	s8,s10
	c.beqz	a0,000000002305071A

l230506F2:
	sub	a1,zero,a0
	lui	a0,00023088
	addi	a0,a0,-00000048
	jal	ra,0000000023052118
	addi	a5,zero,-00000052
	c.li	s0,FFFFFFE9
	beq	s7,a5,0000000023050548

l2305070C:
	addi	a5,zero,-00000042
	c.li	s0,FFFFFFEA
	beq	s7,a5,0000000023050548

l23050716:
	c.li	s0,FFFFFFE8
	c.j	0000000023050548

l2305071A:
	c.mv	a0,s3
	jal	ra,000000002305F448
	c.beqz	a0,0000000023050736

l23050722:
	sub	a1,zero,a0
	lui	a0,00023088
	addi	a0,a0,-00000014

l2305072E:
	jal	ra,0000000023052118
	c.li	s0,FFFFFFFC
	c.j	0000000023050548

l23050736:
	addi	a0,s10,-00000074
	jal	ra,0000000023052118
	lui	a0,00023088
	addi	a0,a0,+00000020
	jal	ra,0000000023052118
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,000000002305AB6E
	c.beqz	a0,0000000023050766

l23050758:
	sub	a1,zero,a0
	lui	a0,00023088
	addi	a0,a0,+0000004C
	c.j	000000002305072E

l23050766:
	lui	a1,00023051
	addi	a1,a1,-00000666
	c.li	a2,00000000
	c.mv	a0,s2
	jal	ra,000000002305A3AA
	lbu	a5,s0,+00000030
	c.li	a1,00000002
	c.bnez	a5,0000000023050780

l2305077E:
	c.li	a1,00000001

l23050780:
	c.mv	a0,s2
	jal	ra,000000002305A396
	lui	a1,00023056
	c.mv	a2,s9
	addi	a1,a1,+00000280
	c.mv	a0,s2
	jal	ra,000000002305A3B0
	c.li	a2,00000000
	c.mv	a1,s6
	c.mv	a0,s2
	jal	ra,000000002305A3CC
	c.mv	a1,s4
	c.mv	a2,s5
	c.mv	a0,s2
	jal	ra,000000002305A3C4
	c.mv	a1,a0
	c.beqz	a0,00000000230507B8

l230507AE:
	lui	a0,00023088
	addi	a0,a0,+00000088
	c.j	000000002305072E

l230507B8:
	c.lw	s0,44(a1)
	c.mv	a0,s2
	jal	ra,000000002305A3C0
	lhu	a4,s0,+00000028
	addi	a5,zero,+000001BB
	bne	a4,a5,00000000230507F0

l230507CC:
	lui	a5,00023088
	addi	a5,a5,+000000C0
	c.addi4spn	a1,00000020
	c.mv	a0,s2
	c.swsp	a5,00000010
	c.swsp	zero,00000090
	jal	ra,000000002305A43A
	c.beqz	a0,00000000230507F0

l230507E2:
	sub	a1,zero,a0
	lui	a0,00023088
	addi	a0,a0,+000000D0
	c.j	000000002305072E

l230507F0:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002305A9A2
	c.beqz	a0,0000000023050808

l230507FA:
	sub	a1,zero,a0
	lui	a0,00023088
	addi	a0,a0,+00000110
	c.j	000000002305072E

l23050808:
	c.lw	s0,36(a1)
	c.mv	a0,s1
	jal	ra,000000002305A3D2
	c.mv	a1,a0
	c.beqz	a0,000000002305081E

l23050814:
	lui	a0,00023088
	addi	a0,a0,+00000144
	c.j	000000002305072E

l2305081E:
	lw	a1,s0,+00000380
	lui	s2,00023088
	addi	a0,s2,+0000017C
	jal	ra,0000000023052118
	lui	a4,0002305F
	lui	a2,0002305F
	addi	a4,a4,+0000059E
	c.li	a3,00000000
	addi	a2,a2,+00000510
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,000000002305A3B6
	addi	a0,s8,-00000074
	jal	ra,0000000023052118
	lw	a1,s0,+00000380
	addi	a0,s2,+0000017C
	c.lui	s3,FFFF9000
	jal	ra,0000000023052118
	lui	a0,00023088
	addi	a0,a0,+0000019C
	jal	ra,0000000023052118
	addi	s3,s3,+00000700

l2305086E:
	c.mv	a0,s1
	jal	ra,000000002305A5EA
	c.mv	s2,a0
	bne	a0,zero,0000000023050946

l2305087A:
	c.mv	a0,s1
	jal	ra,000000002305A4AC
	c.swsp	a0,00000084
	c.mv	a0,s1
	jal	ra,000000002305A49C
	c.lwsp	a2,00000064
	c.mv	a2,a0
	lui	a0,00023088
	addi	a0,a0,+00000238
	jal	ra,0000000023052118
	c.mv	a0,s1
	jal	ra,000000002305A502
	c.mv	a1,a0
	blt	a0,zero,0000000023050978

l230508A4:
	lui	a0,00023088
	addi	a0,a0,+00000270
	jal	ra,0000000023052118

l230508B0:
	lui	a0,00023088
	addi	a0,a0,+000002CC
	jal	ra,0000000023052118
	lbu	a5,s0,+00000030
	beq	a5,zero,0000000023050990

l230508C4:
	c.mv	a0,s1
	jal	ra,000000002305A48C
	sw	a0,s0,+000004B4
	c.beqz	a0,0000000023050986

l230508D0:
	lui	a0,00023088
	addi	a0,a0,+000002F8
	jal	ra,0000000023052118
	lw	a3,s0,+000004B4
	lui	a2,00023088
	addi	a2,a2,+00000308
	addi	a1,zero,+00000100
	c.addi4spn	a0,00000020
	jal	ra,000000002305E2F8
	lui	a0,00023088
	c.addi4spn	a1,00000020
	addi	a0,a0,+00000310
	jal	ra,0000000023052118
	c.li	s2,FFFFFFFC

l23050902:
	c.mv	a0,s1
	jal	ra,000000002305A598
	c.beqz	a0,000000002305093E

l2305090A:
	lui	a0,00023088
	addi	a0,a0,+00000344
	jal	ra,0000000023052118
	c.mv	a0,s1
	jal	ra,000000002305A598
	lui	a2,00023088
	c.mv	a3,a0
	addi	a1,zero,+000000FF
	addi	a2,a2,+0000036C
	c.addi4spn	a0,00000020
	jal	ra,000000002305DC34
	lui	a0,00023088
	c.addi4spn	a1,00000020
	addi	a0,a0,+00000374
	jal	ra,0000000023052118

l2305093E:
	slli	s0,s2,00000018
	c.srai	s0,00000018
	c.j	0000000023050548

l23050946:
	andi	a5,s2,-00000081
	beq	a5,s3,000000002305086E

l2305094E:
	lui	a0,00023088
	sub	a1,zero,s2
	addi	a0,a0,+000001C8
	jal	ra,0000000023052118
	c.lui	a5,FFFFE000
	addi	a5,a5,-00000700
	c.li	s0,FFFFFFFC
	bne	s2,a5,0000000023050548

l2305096A:
	lui	a0,00023088
	addi	a0,a0,+00000200
	jal	ra,0000000023052118
	c.j	0000000023050548

l23050978:
	lui	a0,00023088
	addi	a0,a0,+00000294
	jal	ra,0000000023052118
	c.j	00000000230508B0

l23050986:
	addi	a0,s8,-00000074

l2305098A:
	jal	ra,0000000023052118
	c.j	0000000023050902

l23050990:
	lui	a0,00023088
	addi	a0,a0,+0000031C
	c.j	000000002305098A

;; _iot_tls_verify_cert: 2305099A
_iot_tls_verify_cert proc
	c.addi16sp	FFFFFEF0
	lui	a0,00023088
	sw	s1,sp,+00000104
	addi	a0,a0,-0000037C
	c.mv	s1,a1
	c.mv	a1,a2
	sw	ra,sp,+0000010C
	sw	s0,sp,+00000108
	c.mv	s0,a3
	jal	ra,0000000023052118
	lui	a2,00023089
	c.mv	a3,s1
	addi	a2,a2,-000001A0
	addi	a1,zero,+000000FF
	c.mv	a0,sp
	jal	ra,000000002305DC34
	lui	a0,00023088
	c.mv	a1,sp
	addi	a0,a0,+00000374
	jal	ra,0000000023052118
	c.lw	s0,0(a5)
	c.bnez	a5,00000000230509FE

l230509E0:
	lui	a0,00023088
	addi	a0,a0,-00000350
	jal	ra,0000000023052118

l230509EC:
	lw	ra,sp,+0000010C
	lw	s0,sp,+00000108
	lw	s1,sp,+00000104
	c.li	a0,00000000
	c.addi16sp	00000110
	c.jr	ra

l230509FE:
	lui	a0,00023088
	c.mv	a1,sp
	addi	a0,a0,-00000328
	jal	ra,0000000023052118
	c.j	00000000230509EC

;; iot_tls_write: 23050A0E
iot_tls_write proc
	c.addi16sp	FFFFFFD0
	c.lui	a5,FFFF9000
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s7,00000084
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	c.swsp	ra,00000094
	c.swsp	s6,00000008
	c.swsp	s8,00000004
	c.mv	s7,a1
	c.mv	s3,a2
	c.mv	s4,a3
	c.mv	s5,a4
	c.li	s1,00000000
	c.li	s0,00000000
	addi	s9,a0,+0000037C
	addi	s10,a5,+00000700
	addi	s2,a5,+00000780

l23050A42:
	bgeu	s0,s3,0000000023050AAE

l23050A46:
	c.mv	a0,s4
	jal	ra,000000002304EABE
	c.bnez	a0,0000000023050AAE

l23050A4E:
	sub	s8,s3,s0
	add	s6,s7,s0

l23050A56:
	c.mv	a0,s4
	jal	ra,000000002304EABE
	c.bnez	a0,0000000023050A6E

l23050A5E:
	c.mv	a2,s8
	c.mv	a1,s6
	c.mv	a0,s9
	jal	ra,000000002305C514
	c.mv	s1,a0
	bge	zero,a0,0000000023050A72

l23050A6E:
	c.add	s0,s1
	c.j	0000000023050A42

l23050A72:
	beq	s1,s10,0000000023050A56

l23050A76:
	beq	s1,s2,0000000023050A56

l23050A7A:
	lui	a0,00023088
	sub	a1,zero,s1
	addi	a0,a0,+00000380
	jal	ra,0000000023052118
	c.li	a5,FFFFFFF9
	sw	s0,s5,+00000000

l23050A90:
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
	c.mv	a0,a5
	c.addi16sp	00000030
	c.jr	ra

l23050AAE:
	sw	s0,s5,+00000000
	c.mv	a0,s4
	jal	ra,000000002304EABE
	c.li	a5,00000000
	c.beqz	a0,0000000023050A90

l23050ABC:
	beq	s0,s3,0000000023050A90

l23050AC0:
	c.li	a5,FFFFFFF6
	c.j	0000000023050A90

;; iot_tls_read: 23050AC4
iot_tls_read proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	s10,00000008
	c.swsp	s11,00000084
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	lw	s2,a0,+000004A0
	c.lui	s6,FFFF9000
	c.lui	s7,FFFFA000
	c.mv	s5,a1
	c.mv	s1,a2
	c.mv	s3,a3
	c.mv	s9,a4
	addi	s10,a0,+0000037C
	addi	s8,a0,+0000043C
	c.li	s4,00000000
	sltiu	s11,s2,+00000001
	addi	s6,s6,+00000700
	addi	s7,s7,-00000800

l23050B06:
	c.bnez	s1,0000000023050B2C

l23050B08:
	sw	s4,s9,+00000000
	c.li	a0,00000000

l23050B0E:
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

l23050B2C:
	c.mv	a0,s3
	jal	ra,000000002304EB22
	c.mv	a5,s11
	bltu	s2,a0,0000000023050B42

l23050B38:
	c.mv	a0,s3
	jal	ra,000000002304EB22
	sltiu	a5,a0,+00000001

l23050B42:
	c.li	a1,00000001
	c.bnez	a5,0000000023050B5A

l23050B46:
	c.mv	a0,s3
	jal	ra,000000002304EB22
	c.mv	a1,s2
	bltu	s2,a0,0000000023050B5A

l23050B52:
	c.mv	a0,s3
	jal	ra,000000002304EB22
	c.mv	a1,a0

l23050B5A:
	c.mv	a0,s8
	jal	ra,000000002305A3C0
	c.mv	a1,s5
	c.mv	a2,s1
	c.mv	a0,s10
	jal	ra,000000002305D868
	c.mv	s0,a0
	c.mv	a1,s2
	c.mv	a0,s8
	jal	ra,000000002305A3C0
	bge	zero,s0,0000000023050B92

l23050B78:
	c.add	s4,s0
	c.add	s5,s0
	c.sub	s1,s0

l23050B7E:
	c.mv	a0,s3
	jal	ra,000000002304EABE
	c.beqz	a0,0000000023050B06

l23050B86:
	c.beqz	s1,0000000023050B08

l23050B88:
	c.li	a0,FFFFFFE7
	beq	s4,zero,0000000023050B0E

l23050B8E:
	c.li	a0,FFFFFFF5
	c.j	0000000023050B0E

l23050B92:
	c.beqz	s0,0000000023050BA0

l23050B94:
	andi	a5,s0,-00000081
	beq	a5,s6,0000000023050B7E

l23050B9C:
	beq	s0,s7,0000000023050B7E

l23050BA0:
	c.li	a0,FFFFFFF4
	c.j	0000000023050B0E

;; iot_tls_disconnect: 23050BA4
iot_tls_disconnect proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.lui	s0,FFFF9000
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	addi	s1,a0,+0000037C
	addi	s0,s0,+00000780

l23050BB6:
	c.mv	a0,s1
	jal	ra,000000002305C028
	beq	a0,s0,0000000023050BB6

l23050BC0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; iot_tls_destroy: 23050BCC
iot_tls_destroy proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	addi	s1,a0,+00000034
	addi	a0,a0,+00000728
	c.swsp	ra,00000084
	jal	ra,000000002305F652
	addi	a0,s0,+000005EC
	jal	ra,000000002305EAA6
	addi	a0,s0,+000004B8
	jal	ra,000000002305EAA6
	addi	a0,s0,+00000720
	jal	ra,00000000230564DE
	addi	a0,s0,+0000037C
	jal	ra,000000002305AA7C
	addi	a0,s0,+0000043C
	jal	ra,000000002305AC2A
	addi	a0,s0,+0000023C
	jal	ra,0000000023056052
	c.mv	a0,s1
	jal	ra,00000000230563A8
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; iot_tls_init: 23050C24
;;   Called from:
;;     2304F55E (in aws_iot_mqtt_init)
iot_tls_init proc
	sh	a5,a0,+00000028
	lui	a5,00023050
	addi	a5,a5,+0000044E
	c.sw	a0,0(a5)
	lui	a5,00023051
	addi	a5,a5,-0000053C
	c.sw	a0,4(a5)
	lui	a5,00023051
	addi	a5,a5,-000005F2
	c.sw	a0,8(a5)
	lui	a5,00023051
	addi	a5,a5,-0000045C
	c.sw	a0,12(a5)
	lui	a5,00023050
	addi	a5,a5,+0000044A
	c.sw	a0,16(a5)
	lui	a5,00023051
	addi	a5,a5,-00000434
	c.sw	a0,36(a4)
	c.sw	a0,28(a2)
	c.sw	a0,32(a3)
	c.sw	a0,24(a1)
	sw	a6,a0,+0000002C
	sb	a7,a0,+00000030
	c.sw	a0,20(a5)
	sw	zero,a0,+000004B4
	c.li	a0,00000000
	c.jr	ra

;; aws_iot_thread_mutex_init: 23050C7C
;;   Called from:
;;     2304F4F2 (in aws_iot_mqtt_init)
;;     2304F500 (in aws_iot_mqtt_init)
;;     2304F52A (in aws_iot_mqtt_init)
aws_iot_thread_mutex_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.li	a0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002302EE60
	c.sw	s0,0(a0)
	c.bnez	a0,0000000023050C9A

l23050C8E:
	addi	a0,zero,-0000002E

l23050C92:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23050C9A:
	c.li	a0,00000000
	c.j	0000000023050C92

;; aws_iot_thread_mutex_lock: 23050C9E
;;   Called from:
;;     2304F320 (in aws_iot_mqtt_client_lock_mutex)
aws_iot_thread_mutex_lock proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,0(a0)
	c.li	a1,FFFFFFFF
	jal	ra,000000002302F29C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; aws_iot_thread_mutex_trylock: 23050CB2
;;   Called from:
;;     2304F31C (in aws_iot_mqtt_client_lock_mutex)
aws_iot_thread_mutex_trylock proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,0(a0)
	c.li	a1,00000000
	jal	ra,000000002302F29C
	c.bnez	a0,0000000023050CCA

l23050CC0:
	addi	a0,zero,-0000002F

l23050CC4:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23050CCA:
	c.li	a0,00000000
	c.j	0000000023050CC4

;; aws_iot_thread_mutex_unlock: 23050CCE
;;   Called from:
;;     2304F32E (in aws_iot_mqtt_client_unlock_mutex)
aws_iot_thread_mutex_unlock proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,0(a0)
	jal	ra,000000002302EE18
	c.bnez	a0,0000000023050CE4

l23050CDA:
	addi	a0,zero,-00000030

l23050CDE:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23050CE4:
	c.li	a0,00000000
	c.j	0000000023050CDE

;; aws_iot_thread_mutex_destroy: 23050CE8
;;   Called from:
;;     2304F50A (in aws_iot_mqtt_init)
;;     2304F534 (in aws_iot_mqtt_init)
;;     2304F568 (in aws_iot_mqtt_init)
;;     2304F56E (in aws_iot_mqtt_init)
;;     2304F574 (in aws_iot_mqtt_init)
aws_iot_thread_mutex_destroy proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,0(a0)
	jal	ra,000000002302F310
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; _aws_iot_mqtt_internal_readWrapper: 23050CFA
;;   Called from:
;;     23050F98 (in aws_iot_mqtt_internal_cycle_read)
;;     23050FC0 (in aws_iot_mqtt_internal_cycle_read)
;;     2305107E (in aws_iot_mqtt_internal_cycle_read)
_aws_iot_mqtt_internal_readWrapper proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	lw	a6,a0,+0000003C
	c.swsp	zero,00000084
	sub	a5,a1,a6
	c.add	a5,a2
	bge	zero,a5,0000000023050D48

l23050D14:
	lw	a7,a0,+000004E4
	c.mv	s2,a1
	addi	a1,a0,+00000240
	c.mv	s0,a0
	c.mv	s1,a4
	c.mv	a2,a5
	c.addi4spn	a4,0000000C
	c.add	a1,a6
	addi	a0,a0,+000004E0
	c.jalr	a7
	c.lw	s0,60(a3)
	c.lwsp	a2,000000E4
	c.add	a5,a3
	c.sw	s0,60(a5)
	sub	a5,a5,s2
	c.sw	s1,0(a5)

l23050D3C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23050D48:
	c.sw	a4,0(a2)
	c.li	a0,00000000
	c.j	0000000023050D3C

;; aws_iot_mqtt_internal_write_len_to_buffer: 23050D4E
;;   Called from:
;;     2304F6E8 (in aws_iot_mqtt_connect)
;;     2304F9EA (in aws_iot_mqtt_internal_serialize_ack)
;;     2304FC6A (in aws_iot_mqtt_publish)
;;     2304FE08 (in _aws_iot_mqtt_serialize_subscribe.constprop.1)
;;     230501A6 (in aws_iot_mqtt_unsubscribe)
;;     230512AA (in aws_iot_mqtt_internal_serialize_zero)
aws_iot_mqtt_internal_write_len_to_buffer proc
	c.li	a5,00000000
	addi	a3,zero,+0000007F

l23050D54:
	andi	a4,a1,+0000007F
	srli	a6,a1,00000007
	bgeu	a3,a1,0000000023050D64

l23050D60:
	ori	a4,a4,+00000080

l23050D64:
	c.addi	a5,00000001
	add	a2,a0,a5
	sb	a4,a2,+00000FFF
	bltu	a3,a1,0000000023050D76

l23050D72:
	c.mv	a0,a5
	c.jr	ra

l23050D76:
	c.mv	a1,a6
	c.j	0000000023050D54

;; aws_iot_mqtt_internal_decode_remaining_length_from_buffer: 23050D7A
;;   Called from:
;;     2304F7F8 (in aws_iot_mqtt_connect)
;;     2304FAA2 (in aws_iot_mqtt_internal_deserialize_publish)
;;     2304FB44 (in aws_iot_mqtt_internal_deserialize_ack)
;;     2304FD5C (in _aws_iot_mqtt_deserialize_suback.constprop.0)
aws_iot_mqtt_internal_decode_remaining_length_from_buffer proc
	sw	zero,a1,+00000000
	c.li	a5,00000000
	c.li	a3,00000001
	c.li	t1,00000005

l23050D84:
	c.addi	a5,00000001
	beq	a5,t1,0000000023050DB4

l23050D8A:
	add	a4,a0,a5
	lbu	a4,a4,-00000001
	andi	a6,a4,+0000007F
	add	a7,a6,a3
	lw	a6,a1,+00000000
	c.slli	a4,18
	c.srai	a4,00000018
	c.slli	a3,07
	c.add	a6,a7
	sw	a6,a1,+00000000
	blt	a4,zero,0000000023050D84

l23050DAE:
	c.sw	a2,0(a5)
	c.li	a0,00000000
	c.jr	ra

l23050DB4:
	addi	a0,zero,-00000023
	c.jr	ra

;; aws_iot_mqtt_internal_get_final_packet_length_from_remaining_length: 23050DBA
;;   Called from:
;;     2304F6BA (in aws_iot_mqtt_connect)
;;     2304FC3C (in aws_iot_mqtt_publish)
;;     2304FDDA (in _aws_iot_mqtt_serialize_subscribe.constprop.1)
;;     2305017A (in aws_iot_mqtt_unsubscribe)
aws_iot_mqtt_internal_get_final_packet_length_from_remaining_length proc
	addi	a4,a0,+00000001
	addi	a3,zero,+0000007F
	c.mv	a5,a0
	bltu	a3,a4,0000000023050DCC

l23050DC8:
	c.addi	a0,00000002
	c.jr	ra

l23050DCC:
	c.lui	a3,00004000
	bgeu	a4,a3,0000000023050DD6

l23050DD2:
	c.addi	a0,00000003
	c.jr	ra

l23050DD6:
	lui	a3,00000200
	c.addi	a0,00000005
	bgeu	a4,a3,0000000023050DE4

l23050DE0:
	addi	a0,a5,+00000004

l23050DE4:
	c.jr	ra

;; aws_iot_mqtt_internal_read_uint16_t: 23050DE6
;;   Called from:
;;     2304FABE (in aws_iot_mqtt_internal_deserialize_publish)
;;     2304FAEA (in aws_iot_mqtt_internal_deserialize_publish)
;;     2304FB5E (in aws_iot_mqtt_internal_deserialize_ack)
;;     2304FD7A (in _aws_iot_mqtt_deserialize_suback.constprop.0)
aws_iot_mqtt_internal_read_uint16_t proc
	c.lw	a0,0(a4)
	lbu	a5,a4,+00000000
	lbu	a3,a4,+00000001
	c.addi	a4,00000002
	c.slli	a5,08
	c.add	a5,a3
	c.sw	a0,0(a4)
	slli	a0,a5,00000010
	c.srli	a0,00000010
	c.jr	ra

;; aws_iot_mqtt_internal_write_uint_16: 23050E00
;;   Called from:
;;     2304F754 (in aws_iot_mqtt_connect)
;;     2304F762 (in aws_iot_mqtt_connect)
;;     2304F9F8 (in aws_iot_mqtt_internal_serialize_ack)
;;     2304FC86 (in aws_iot_mqtt_publish)
;;     2304FE16 (in _aws_iot_mqtt_serialize_subscribe.constprop.1)
;;     230501B4 (in aws_iot_mqtt_unsubscribe)
;;     23050E4C (in aws_iot_mqtt_internal_write_utf8_string)
aws_iot_mqtt_internal_write_uint_16 proc
	c.lw	a0,0(a5)
	srli	a4,a1,00000008
	sb	a4,a5,+00000000
	c.lw	a0,0(a5)
	addi	a4,a5,+00000001
	c.sw	a0,0(a4)
	sb	a1,a5,+00000001
	c.lw	a0,0(a5)
	c.addi	a5,00000001
	c.sw	a0,0(a5)
	c.jr	ra

;; aws_iot_mqtt_internal_read_char: 23050E1E
;;   Called from:
;;     2304F7E0 (in aws_iot_mqtt_connect)
;;     2304F814 (in aws_iot_mqtt_connect)
;;     2304F81A (in aws_iot_mqtt_connect)
;;     2304FA72 (in aws_iot_mqtt_internal_deserialize_publish)
;;     2304FB2A (in aws_iot_mqtt_internal_deserialize_ack)
;;     2304FD30 (in _aws_iot_mqtt_deserialize_suback.constprop.0)
;;     2304FDA0 (in _aws_iot_mqtt_deserialize_suback.constprop.0)
aws_iot_mqtt_internal_read_char proc
	c.lw	a0,0(a5)
	c.mv	a4,a0
	c.addi	a5,00000001
	lbu	a0,a5,-00000001
	c.sw	a4,0(a5)
	c.jr	ra

;; aws_iot_mqtt_internal_write_char: 23050E2C
;;   Called from:
;;     2304F6E0 (in aws_iot_mqtt_connect)
;;     2304F708 (in aws_iot_mqtt_connect)
;;     2304F74A (in aws_iot_mqtt_connect)
;;     2304F9E2 (in aws_iot_mqtt_internal_serialize_ack)
;;     2304FC62 (in aws_iot_mqtt_publish)
;;     2304FE00 (in _aws_iot_mqtt_serialize_subscribe.constprop.1)
;;     2304FE2E (in _aws_iot_mqtt_serialize_subscribe.constprop.1)
;;     2305019E (in aws_iot_mqtt_unsubscribe)
;;     230512A2 (in aws_iot_mqtt_internal_serialize_zero)
aws_iot_mqtt_internal_write_char proc
	c.lw	a0,0(a5)
	sb	a1,a5,+00000000
	c.lw	a0,0(a5)
	c.addi	a5,00000001
	c.sw	a0,0(a5)
	c.jr	ra

;; aws_iot_mqtt_internal_write_utf8_string: 23050E3A
;;   Called from:
;;     2304F6FE (in aws_iot_mqtt_connect)
;;     2304F776 (in aws_iot_mqtt_connect)
;;     2304F784 (in aws_iot_mqtt_connect)
;;     2304F794 (in aws_iot_mqtt_connect)
;;     2304F7A4 (in aws_iot_mqtt_connect)
;;     2304F83A (in aws_iot_mqtt_connect)
;;     2304FC7A (in aws_iot_mqtt_publish)
;;     2304FE24 (in _aws_iot_mqtt_serialize_subscribe.constprop.1)
;;     230501BE (in aws_iot_mqtt_unsubscribe)
aws_iot_mqtt_internal_write_utf8_string proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.mv	s0,a2
	c.mv	s2,a1
	c.mv	a1,a2
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	jal	ra,0000000023050E00
	c.beqz	s0,0000000023050E62

l23050E52:
	c.lw	s1,0(a0)
	c.mv	a2,s0
	c.mv	a1,s2
	jal	ra,0000000023070C7C
	c.lw	s1,0(a5)
	c.add	s0,a5
	c.sw	s1,0(s0)

l23050E62:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; aws_iot_mqtt_internal_init_header: 23050E6E
;;   Called from:
;;     2304F6D2 (in aws_iot_mqtt_connect)
;;     2304F9D4 (in aws_iot_mqtt_internal_serialize_ack)
;;     2304FC54 (in aws_iot_mqtt_publish)
;;     2304FDF2 (in _aws_iot_mqtt_serialize_subscribe.constprop.1)
;;     23050190 (in aws_iot_mqtt_unsubscribe)
;;     23051294 (in aws_iot_mqtt_internal_serialize_zero)
aws_iot_mqtt_internal_init_header proc
	c.li	a6,FFFFFFFE
	c.beqz	a0,0000000023050EB8

l23050E72:
	c.addi	a1,FFFFFFFF
	sb	zero,a0,+00000000
	andi	a1,a1,+000000FF
	c.li	a5,0000000D
	c.li	a6,FFFFFFFF
	bltu	a5,a1,0000000023050EB8

l23050E84:
	lui	a6,00023088
	addi	a6,a6,+000003B4
	c.add	a1,a6
	lbu	a5,a1,+00000000
	c.slli	a3,03
	c.slli	a5,04
	c.or	a3,a5
	c.li	a5,00000001
	andi	a3,a3,+000000FF
	beq	a2,a5,0000000023050EBC

l23050EA2:
	sb	a3,a0,+00000000
	lbu	a5,a0,+00000000
	c.addi	a4,FFFFFFFF
	sltiu	a4,a4,+00000001
	c.or	a4,a5
	sb	a4,a0,+00000000
	c.li	a6,00000000

l23050EB8:
	c.mv	a0,a6
	c.jr	ra

l23050EBC:
	ori	a3,a3,+00000002
	c.j	0000000023050EA2

;; aws_iot_mqtt_internal_send_packet: 23050EC2
;;   Called from:
;;     2304F7B4 (in aws_iot_mqtt_connect)
;;     2304F8D6 (in _aws_iot_mqtt_internal_disconnect)
;;     2304FCA0 (in aws_iot_mqtt_publish)
;;     2304FF3C (in aws_iot_mqtt_subscribe)
;;     2305004C (in aws_iot_mqtt_resubscribe)
;;     230501CC (in aws_iot_mqtt_unsubscribe)
;;     230503F4 (in aws_iot_mqtt_yield)
;;     2305117E (in aws_iot_mqtt_internal_cycle_read)
aws_iot_mqtt_internal_send_packet proc
	c.li	a5,FFFFFFFE
	c.beqz	a0,0000000023050F46

l23050EC6:
	c.beqz	a2,0000000023050F46

l23050EC8:
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.lw	a0,52(a4)
	c.mv	s0,a0
	addi	a5,zero,-00000021
	bgeu	a1,a4,0000000023050F2C

l23050EE4:
	addi	s4,a0,+0000044C
	c.mv	s3,a1
	c.mv	a1,s4
	c.mv	s1,a2
	jal	ra,000000002304F310
	c.mv	a5,a0
	c.bnez	a0,0000000023050F2C

l23050EF6:
	c.swsp	zero,00000084
	c.li	s2,00000000
	addi	s5,s0,+000004E0

l23050EFE:
	bgeu	s2,s3,0000000023050F22

l23050F02:
	c.mv	a0,s1
	jal	ra,000000002304EABE
	c.bnez	a0,0000000023050F22

l23050F0A:
	lw	a5,s0,+000004E8
	addi	a1,s2,+00000040
	c.addi4spn	a4,0000000C
	c.mv	a3,s1
	sub	a2,s3,s2
	c.add	a1,s0
	c.mv	a0,s5
	c.jalr	a5
	c.beqz	a0,0000000023050F40

l23050F22:
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,000000002304F328
	c.mv	a5,a0

l23050F2C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.mv	a0,a5
	c.addi16sp	00000030
	c.jr	ra

l23050F40:
	c.lwsp	a2,000000E4
	c.add	s2,a5
	c.j	0000000023050EFE

l23050F46:
	c.mv	a0,a5
	c.jr	ra

;; aws_iot_mqtt_internal_cycle_read: 23050F4A
;;   Called from:
;;     23050376 (in aws_iot_mqtt_yield)
;;     23051240 (in aws_iot_mqtt_internal_wait_for_read)
aws_iot_mqtt_internal_cycle_read proc
	c.addi16sp	FFFFFFA0
	c.swsp	s1,000000A8
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	s9,00000098
	c.swsp	s10,00000018
	c.li	s1,FFFFFFFE
	c.beqz	a0,0000000023051040

l23050F68:
	c.beqz	a1,0000000023051040

l23050F6A:
	addi	s6,a0,+00000448
	c.mv	s3,a1
	c.mv	a1,s6
	c.mv	s0,a0
	c.mv	s5,a2
	jal	ra,000000002304F310
	c.mv	s1,a0
	c.bnez	a0,0000000023051040

l23050F7E:
	c.addi4spn	a0,00000020
	jal	ra,000000002304EB94
	c.lw	s0,32(a1)
	c.addi4spn	a0,00000020
	jal	ra,000000002304EB02
	c.addi4spn	a4,00000018
	c.mv	a3,s3
	c.li	a2,00000001
	c.li	a1,00000000
	c.mv	a0,s0
	c.swsp	zero,0000000C
	jal	ra,0000000023050CFA
	c.li	a5,FFFFFFE7
	c.mv	s1,a0
	beq	a0,a5,000000002305108E

l23050FA4:
	c.bnez	a0,000000002305102E

l23050FA6:
	c.li	s2,00000000
	c.li	s4,00000000
	c.li	s8,00000001
	c.li	s9,00000005

l23050FAE:
	addi	s7,s4,+00000001
	beq	s7,s9,0000000023051208

l23050FB6:
	c.addi4spn	a4,0000001C
	c.mv	a3,s3
	c.li	a2,00000001
	c.mv	a1,s7
	c.mv	a0,s0
	jal	ra,0000000023050CFA
	c.mv	s1,a0
	c.bnez	a0,000000002305102E

l23050FC8:
	add	a5,s0,s7
	lbu	a5,a5,+00000240
	andi	a4,a5,+0000007F
	add	a4,a4,s8
	c.slli	a5,18
	c.srai	a5,00000018
	c.slli	s8,07
	c.add	s2,a4
	blt	a5,zero,000000002305105E

l23050FE4:
	c.lw	s0,56(a2)
	addi	a1,s4,+00000002
	add	a5,s2,a1
	bltu	a5,a2,0000000023051062

l23050FF2:
	c.li	s4,00000000
	addi	s7,s0,+00000240
	addi	s8,s0,+000004E0

l23050FFC:
	lw	a5,s0,+000004E4
	c.addi4spn	a4,00000018
	c.mv	a3,s3
	c.mv	a1,s7
	c.mv	a0,s8
	c.jalr	a5
	c.mv	s1,a0
	bne	a0,zero,0000000023051202

l23051010:
	c.lwsp	s8,000000E4
	c.add	s4,a5
	c.lw	s0,56(a5)
	sub	a2,s2,s4
	bgeu	a5,a2,0000000023051020

l2305101E:
	c.mv	a2,a5

l23051020:
	bltu	s4,s2,0000000023050FFC

l23051024:
	bne	s2,s4,000000002305102E

l23051028:
	sw	zero,s0,+0000003C
	c.li	s1,FFFFFFE0

l2305102E:
	c.mv	a1,s6
	c.mv	a0,s0
	jal	ra,000000002304F328
	c.beqz	a0,0000000023051092

l23051038:
	andi	a5,s1,+000000FD
	c.bnez	a5,0000000023051040

l2305103E:
	c.mv	s1,a0

l23051040:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.mv	a0,s1
	c.lwsp	a7,00000048
	c.lwsp	s5,00000024
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.lwsp	t0,000000A8
	c.lwsp	ra,000000C8
	c.lwsp	t3,000001F8
	c.lwsp	s8,0000011C
	c.lwsp	s4,0000013C
	c.lwsp	a6,0000015C
	c.addi16sp	00000060
	c.jr	ra

l2305105E:
	c.mv	s4,s7
	c.j	0000000023050FAE

l23051062:
	bne	s2,zero,0000000023051076

l23051066:
	lbu	a5,s0,+00000240
	sw	zero,s0,+0000003C
	c.srli	a5,00000004
	sb	a5,s5,+00000000
	c.j	000000002305102E

l23051076:
	c.addi4spn	a4,00000018
	c.mv	a3,s3
	c.mv	a2,s2
	c.mv	a0,s0
	jal	ra,0000000023050CFA
	c.bnez	a0,000000002305108A

l23051084:
	c.lwsp	s8,000000E4
	beq	a5,s2,0000000023051066

l2305108A:
	c.li	s1,FFFFFFFF
	c.j	000000002305102E

l2305108E:
	c.li	s1,00000002
	c.j	000000002305102E

l23051092:
	c.li	a5,00000002
	beq	s1,a5,00000000230511F4

l23051098:
	c.bnez	s1,0000000023051040

l2305109A:
	lbu	a5,s5,+00000000
	c.addi	a5,FFFFFFFE
	andi	a4,a5,+000000FF
	c.li	a5,0000000B
	bltu	a5,a4,00000000230511F8

l230510AA:
	c.li	a5,00000001
	sll	a5,a5,a4
	andi	a4,a5,+000002AD
	c.bnez	a4,0000000023051040

l230510B6:
	slli	a4,a5,00000014
	blt	a4,zero,00000000230511E4

l230510BE:
	c.andi	a5,00000002
	c.li	s1,FFFFFFE1
	c.beqz	a5,0000000023051040

l230510C4:
	c.lw	s0,56(a5)
	addi	a7,sp,+0000002C
	addi	a6,sp,+00000028
	c.swsp	a5,00000080
	addi	a5,s0,+00000240
	c.swsp	a5,00000000
	c.addi4spn	a4,00000018
	addi	a5,sp,+00000016
	c.addi4spn	a3,00000024
	addi	a2,sp,+00000021
	c.addi4spn	a1,00000020
	addi	a0,sp,+00000022
	c.swsp	zero,0000000C
	sh	zero,sp,+00000016
	c.swsp	zero,0000008C
	jal	ra,000000002304FA14
	c.mv	s1,a0
	c.bnez	a0,0000000023051040

l230510F8:
	c.lwsp	s8,00000048
	lhu	s4,sp,+00000016
	c.li	s1,FFFFFFFE
	beq	s2,zero,0000000023051040

l23051104:
	c.mv	a0,s0
	jal	ra,000000002304F304
	c.mv	a1,a0
	c.mv	s6,a0
	c.li	a2,00000009
	c.mv	a0,s0
	jal	ra,000000002304F336
	addi	s1,s0,+00000488
	addi	s7,s0,+000004D8
	add	s5,s2,s4
	addi	s10,zero,+0000002F
	addi	s8,zero,+0000002B
	addi	s9,zero,+00000023

l2305112E:
	c.lw	s1,0(a1)
	c.beqz	a1,0000000023051140

l23051132:
	lhu	a5,s1,+00000004
	beq	a5,s4,0000000023051184

l2305113A:
	c.lw	s1,0(a3)
	c.mv	a5,s2
	c.bnez	a3,00000000230511B0

l23051140:
	c.addi	s1,00000010
	bne	s7,s1,000000002305112E

l23051146:
	c.mv	a2,s6
	c.li	a1,00000009
	c.mv	a0,s0
	jal	ra,000000002304F336
	c.mv	s1,a0
	bne	a0,zero,0000000023051040

l23051156:
	lbu	a5,sp,+00000020
	beq	a5,zero,0000000023051040

l2305115E:
	lhu	a4,sp,+00000024
	c.lw	s0,52(a1)
	c.addi4spn	a5,0000001C
	c.li	a3,00000000
	c.li	a2,00000004
	addi	a0,s0,+00000040
	jal	ra,000000002304F9A0
	c.mv	s1,a0
	bne	a0,zero,0000000023051040

l23051178:
	c.lwsp	t3,00000064
	c.mv	a2,s3
	c.mv	a0,s0
	jal	ra,0000000023050EC2
	c.j	000000002305103E

l23051184:
	c.mv	a2,s4
	c.mv	a0,s2
	jal	ra,00000000230713B8
	c.bnez	a0,000000002305113A

l2305118E:
	c.lw	s1,8(a5)
	c.beqz	a5,0000000023051140

l23051192:
	c.lw	s1,12(a4)
	c.addi4spn	a3,00000020
	c.mv	a2,s4
	c.mv	a1,s2
	c.mv	a0,s0
	c.jalr	a5
	c.j	0000000023051140

l230511A0:
	lbu	a2,a5,+00000000
	bne	a2,s10,00000000230511BC

l230511A8:
	bne	a4,s10,0000000023051140

l230511AC:
	c.addi	a3,00000001
	c.addi	a5,00000001

l230511B0:
	lbu	a4,a3,+00000000
	c.beqz	a4,00000000230511FC

l230511B6:
	bltu	a5,s5,00000000230511A0

l230511BA:
	c.j	0000000023051140

l230511BC:
	beq	a4,s8,00000000230511CC

l230511C0:
	beq	a4,s9,00000000230511DE

l230511C4:
	beq	a2,a4,00000000230511AC

l230511C8:
	c.j	0000000023051140

l230511CA:
	c.mv	a5,a4

l230511CC:
	addi	a4,a5,+00000001
	beq	s5,a4,00000000230511AC

l230511D4:
	lbu	a2,a5,+00000001
	bne	a2,s10,00000000230511CA

l230511DC:
	c.j	00000000230511AC

l230511DE:
	addi	a5,s5,-00000001
	c.j	00000000230511AC

l230511E4:
	lhu	a1,s0,+00000028
	sb	zero,s0,+00000019
	c.mv	a0,s0
	jal	ra,000000002304EB4C
	c.j	0000000023051040

l230511F4:
	c.li	s1,00000000
	c.j	0000000023051040

l230511F8:
	c.li	s1,FFFFFFE1
	c.j	0000000023051040

l230511FC:
	bne	s5,a5,0000000023051140

l23051200:
	c.j	000000002305118E

l23051202:
	bgeu	s4,s2,0000000023051024

l23051206:
	c.j	000000002305102E

l23051208:
	addi	s1,zero,-00000023
	c.j	000000002305102E

;; aws_iot_mqtt_internal_flushBuffers: 2305120E
;;   Called from:
;;     2304F5E8 (in aws_iot_mqtt_connect)
aws_iot_mqtt_internal_flushBuffers proc
	sw	zero,a0,+0000003C
	c.li	a0,00000000
	c.jr	ra

;; aws_iot_mqtt_internal_wait_for_read: 23051216
;;   Called from:
;;     2304F7C2 (in aws_iot_mqtt_connect)
;;     2304FCB8 (in aws_iot_mqtt_publish)
;;     2304FF4A (in aws_iot_mqtt_subscribe)
;;     2305005A (in aws_iot_mqtt_resubscribe)
;;     230501DA (in aws_iot_mqtt_unsubscribe)
aws_iot_mqtt_internal_wait_for_read proc
	c.beqz	a0,000000002305125E

l23051218:
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s1,a0
	c.li	a0,FFFFFFFE
	c.beqz	a2,0000000023051252

l23051228:
	c.mv	s0,a2
	c.mv	s2,a1
	sb	zero,sp,+0000000F

l23051230:
	c.mv	a0,s0
	jal	ra,000000002304EABE
	c.bnez	a0,0000000023051262

l23051238:
	addi	a2,sp,+0000000F
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,0000000023050F4A
	andi	a5,a0,+000000FD
	c.bnez	a5,0000000023051252

l2305124A:
	lbu	a5,sp,+0000000F
	bne	a5,s2,0000000023051230

l23051252:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2305125E:
	c.li	a0,FFFFFFFE
	c.jr	ra

l23051262:
	c.li	a0,FFFFFFE4
	c.j	0000000023051252

;; aws_iot_mqtt_internal_serialize_zero: 23051266
;;   Called from:
;;     2304F8BA (in _aws_iot_mqtt_internal_disconnect)
;;     230503E6 (in aws_iot_mqtt_yield)
aws_iot_mqtt_internal_serialize_zero proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	sb	zero,sp,+00000008
	c.li	s0,FFFFFFFE
	c.beqz	a0,00000000230512B8

l23051278:
	c.beqz	a3,00000000230512B8

l2305127A:
	c.li	a5,00000003
	addi	s0,zero,-00000021
	bgeu	a5,a1,00000000230512B8

l23051284:
	c.mv	a1,a2
	c.swsp	a0,00000084
	c.mv	s2,a3
	c.mv	s1,a0
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.addi4spn	a0,00000008
	jal	ra,0000000023050E6E
	c.mv	s0,a0
	c.bnez	a0,00000000230512B8

l2305129C:
	lbu	a1,sp,+00000008
	c.addi4spn	a0,0000000C
	jal	ra,0000000023050E2C
	c.lwsp	a2,00000044
	c.li	a1,00000000
	jal	ra,0000000023050D4E
	c.lwsp	a2,000000E4
	c.add	a0,a5
	c.sub	a0,s1
	sw	a0,s2,+00000000

l230512B8:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; format_int: 230512C6
format_int proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s4,00000024
	c.swsp	s6,00000020
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	s9,00000098
	c.swsp	s11,00000094
	c.swsp	ra,000000AC
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s5,000000A0
	c.swsp	s10,00000018
	andi	s4,a4,+00000080
	c.mv	s0,a0
	c.mv	s9,a1
	c.mv	s6,a2
	c.mv	s7,a3
	c.mv	s8,a4
	c.mv	s11,a6
	c.mv	s1,a7
	bne	s4,zero,0000000023051456

l230512F8:
	lui	s5,00023088
	addi	a4,s5,+000005D0
	c.swsp	a4,00000084

l23051302:
	andi	a4,s8,+00000040
	c.li	s3,00000000
	c.beqz	a4,0000000023051320

l2305130A:
	bge	s7,zero,0000000023051320

l2305130E:
	sub	s6,zero,s6
	sltu	a4,zero,s6
	sub	s7,zero,s7
	sub	s7,s7,a4
	c.li	s3,00000001

l23051320:
	c.mv	a0,s6
	c.mv	a1,s7
	c.li	s2,00000000
	srai	s10,a5,0000001F

l2305132A:
	or	a4,a0,a1
	bne	a4,zero,0000000023051462

l23051332:
	andi	a0,s8,+00000020
	c.beqz	a0,0000000023051346

l23051338:
	c.li	a4,00000008
	bne	a5,a4,0000000023051346

l2305133E:
	blt	s2,s1,0000000023051354

l23051342:
	addi	s1,s2,+00000001

l23051346:
	blt	s2,s1,0000000023051354

l2305134A:
	or	a4,s6,s7
	c.mv	s1,s2
	c.bnez	a4,0000000023051354

l23051352:
	c.li	s1,00000001

l23051354:
	andi	a3,s8,+00000008
	c.mv	s10,s1
	c.beqz	a3,0000000023051366

l2305135C:
	c.li	a3,00000010
	c.li	s10,00000004
	beq	a5,a3,0000000023051366

l23051364:
	c.li	s10,00000003

l23051366:
	addi	a7,s1,-00000001
	xor	a7,a7,s10
	add	s2,a7,s1
	andi	s1,s8,+00000014
	or	s1,s1,s3
	sltu	s1,zero,s1
	c.add	s1,s2
	c.beqz	a0,000000002305138A

l23051382:
	c.li	a3,00000010
	bne	a5,a3,000000002305138A

l23051388:
	c.addi	s1,00000002

l2305138A:
	andi	a1,s8,+00000003
	c.li	a3,00000000
	c.bnez	a1,00000000230513B4

l23051392:
	c.mv	a3,a1
	bge	s1,s11,00000000230513B4

l23051398:
	sub	a3,s11,s1
	c.li	a2,00000000
	addi	a6,zero,+00000020

l230513A2:
	bgeu	a2,s9,00000000230513AC

l230513A6:
	sb	a6,s0,+00000000
	c.addi	s0,00000001

l230513AC:
	c.addi	a2,00000001
	bne	a2,a3,00000000230513A2

l230513B2:
	c.mv	s11,s1

l230513B4:
	beq	s3,zero,0000000023051472

l230513B8:
	bgeu	a3,s9,00000000230513C6

l230513BC:
	addi	a2,zero,+0000002D
	sb	a2,s0,+00000000
	c.addi	s0,00000001

l230513C6:
	c.addi	a3,00000001

l230513C8:
	c.beqz	a0,00000000230513FA

l230513CA:
	c.li	a2,00000010
	bne	a5,a2,00000000230513FA

l230513D0:
	bgeu	a3,s9,00000000230513DE

l230513D4:
	addi	a2,zero,+00000030
	sb	a2,s0,+00000000
	c.addi	s0,00000001

l230513DE:
	addi	a2,a3,+00000001
	bgeu	a2,s9,00000000230513F8

l230513E6:
	addi	a2,zero,+00000058
	bne	s4,zero,00000000230513F2

l230513EE:
	addi	a2,zero,+00000078

l230513F2:
	sb	a2,s0,+00000000
	c.addi	s0,00000001

l230513F8:
	c.addi	a3,00000002

l230513FA:
	c.li	a2,00000001
	bne	a1,a2,0000000023051408

l23051400:
	addi	a2,zero,+00000030
	blt	s2,s11,00000000230514AC

l23051408:
	add	a4,s2,a3
	c.add	s0,s2
	c.swsp	a4,00000008
	c.mv	s4,a4
	srai	a4,a5,0000001F
	c.mv	s5,s10
	c.mv	s3,s0
	c.swsp	a4,00000088

l2305141C:
	blt	zero,s2,00000000230514B2

l23051420:
	c.lwsp	a6,00000044
	andi	a4,s8,+00000002
	addi	a3,zero,+00000020
	add	a6,s11,a0

l2305142E:
	c.beqz	a4,0000000023051438

l23051430:
	sub	a5,a6,a0
	blt	s1,a5,0000000023051512

l23051438:
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

l23051456:
	lui	s5,00023088
	addi	a4,s5,+000005E4
	c.swsp	a4,00000084
	c.j	0000000023051302

l23051462:
	c.mv	a2,a5
	c.mv	a3,s10
	c.swsp	a5,00000008
	jal	ra,000000002306D260
	c.addi	s2,00000001
	c.lwsp	a6,000000E4
	c.j	000000002305132A

l23051472:
	andi	a2,s8,+00000004
	c.beqz	a2,0000000023051488

l23051478:
	bgeu	a3,s9,00000000230513C6

l2305147C:
	addi	a2,zero,+0000002B
	sb	a2,s0,+00000000
	c.addi	s0,00000001
	c.j	00000000230513C6

l23051488:
	andi	a2,s8,+00000010
	c.beqz	a2,00000000230513C8

l2305148E:
	bgeu	a3,s9,00000000230513C6

l23051492:
	addi	a2,zero,+00000020
	sb	a2,s0,+00000000
	c.addi	s0,00000001
	c.j	00000000230513C6

l2305149E:
	bgeu	a3,s9,00000000230514A8

l230514A2:
	sb	a2,s0,+00000000
	c.addi	s0,00000001

l230514A8:
	c.addi	a3,00000001
	c.addi	s11,FFFFFFFF

l230514AC:
	blt	s1,s11,000000002305149E

l230514B0:
	c.j	0000000023051408

l230514B2:
	beq	s5,zero,00000000230514FA

l230514B6:
	c.addi	s5,FFFFFFFF

l230514B8:
	addi	a4,s3,-00000001
	c.swsp	a4,0000000C
	c.addi	s4,FFFFFFFF
	c.addi	s2,FFFFFFFF
	bgeu	s4,s9,00000000230514E2

l230514C6:
	c.lwsp	s4,000000A4
	c.mv	a2,a5
	c.mv	a0,s6
	c.mv	a1,s7
	c.swsp	a5,0000008C
	jal	ra,000000002306D694
	c.lwsp	a2,000000E4
	c.add	a0,a5
	lbu	a3,a0,+00000000
	c.lwsp	t3,000000E4
	sb	a3,s3,+00000FFF

l230514E2:
	c.lwsp	s4,000000A4
	c.mv	a2,a5
	c.mv	a0,s6
	c.mv	a1,s7
	c.swsp	a5,0000008C
	jal	ra,000000002306D260
	c.mv	s6,a0
	c.mv	s7,a1
	c.lwsp	s8,00000068
	c.lwsp	t3,000000E4
	c.j	000000002305141C

l230514FA:
	c.addi	s4,FFFFFFFF
	bgeu	s4,s9,0000000023051508

l23051500:
	addi	a4,zero,+0000005F
	sb	a4,s3,+00000FFF

l23051508:
	c.addi	s3,FFFFFFFF
	c.addi	s2,FFFFFFFF
	addi	s5,s10,-00000001
	c.j	00000000230514B8

l23051512:
	bgeu	a0,s9,000000002305151C

l23051516:
	sb	a3,s0,+00000000
	c.addi	s0,00000001

l2305151C:
	c.addi	a0,00000001
	c.j	000000002305142E

;; cvt: 23051520
;;   Called from:
;;     2305175C (in ecvtbuf)
;;     23051762 (in fcvtbuf)
cvt proc
	c.addi16sp	FFFFFF90
	c.swsp	s0,00000034
	c.swsp	s1,000000B0
	c.swsp	s2,00000030
	c.swsp	s3,000000AC
	c.swsp	s5,000000A8
	c.mv	s1,a5
	c.swsp	ra,000000B4
	c.swsp	s4,0000002C
	c.swsp	s6,00000028
	c.swsp	s7,000000A4
	c.swsp	s8,00000024
	c.swsp	s9,000000A0
	c.swsp	s10,00000020
	c.swsp	s11,0000009C
	c.swsp	a6,00000084
	addi	a5,zero,+0000004E
	c.mv	s3,a0
	c.mv	s2,a1
	c.mv	s5,a3
	addi	s0,zero,+0000004E
	blt	a5,a2,000000002305155A

l23051552:
	c.mv	s0,a2
	bge	a2,zero,000000002305155A

l23051558:
	c.li	s0,00000000

l2305155A:
	c.li	a2,00000000
	c.li	a3,00000000
	c.mv	a0,s3
	c.mv	a1,s2
	c.swsp	a4,00000008
	jal	ra,000000002306F054
	c.lwsp	a6,000000C4
	blt	a0,zero,00000000230515E4

l2305156E:
	sw	zero,a4,+00000000

l23051572:
	c.addi4spn	a2,00000020
	c.mv	a0,s3
	c.mv	a1,s2
	jal	ra,000000002306C794
	c.mv	s3,a0
	c.mv	s4,a1
	c.lwsp	zero,00000154
	c.lwsp	tp,00000174
	c.li	a2,00000000
	c.li	a3,00000000
	addi	s2,s1,+00000050
	jal	ra,000000002306EEA0
	bne	a0,zero,0000000023051678

l23051594:
	c.li	a2,00000000
	c.li	a3,00000000
	c.mv	a0,s3
	c.mv	a1,s4
	jal	ra,000000002306EF68
	c.li	s6,00000000
	bge	zero,a0,00000000230515E0

l230515A6:
	lui	a5,00023088
	lw	s10,a5,+000005B8
	lw	s11,a5,+000005BC
	lui	a5,00023088
	lw	s8,a5,+000005C8
	lw	s9,a5,+000005CC

l230515BE:
	c.mv	a2,s10
	c.mv	a3,s11
	c.mv	a0,s3
	c.mv	a1,s4
	jal	ra,000000002306F140
	c.mv	a2,s8
	c.mv	a3,s9
	c.swsp	a0,00000008
	c.mv	s7,a1
	jal	ra,000000002306F054
	c.lwsp	a6,00000028
	blt	a0,zero,00000000230516AA

l230515DC:
	c.swsp	a7,00000014
	c.swsp	s7,00000094

l230515E0:
	c.mv	s7,s1
	c.j	000000002305164A

l230515E4:
	c.li	a5,00000001
	c.sw	a4,0(a5)
	lui	a5,00080000
	xor	s2,a5,s2
	c.j	0000000023051572

l230515F2:
	c.mv	a0,a4
	c.mv	a1,a5
	c.mv	a3,s8
	c.mv	a2,s7
	jal	ra,000000002306E5F4
	c.addi4spn	a2,00000020
	jal	ra,000000002306C794
	c.lwsp	a6,00000084
	c.lwsp	s4,000000A4
	c.swsp	a0,00000014
	c.swsp	a1,00000094
	jal	ra,000000002306DAA4
	c.mv	a2,s9
	c.mv	a3,s10
	jal	ra,000000002306F140
	jal	ra,0000000023070414
	c.addi	s11,FFFFFFFF
	addi	a0,a0,+00000030
	sb	a0,s11,+00000000

l23051626:
	c.lwsp	zero,000001D4
	c.lwsp	tp,000001F4
	c.li	a2,00000000
	c.mv	a0,a4
	c.mv	a1,a5
	c.li	a3,00000000
	c.swsp	a4,0000000C
	c.swsp	a5,0000008C
	jal	ra,000000002306EEA0
	sub	s6,s2,s11
	c.lwsp	s8,000000C4
	c.lwsp	t3,000000E4
	c.bnez	a0,00000000230515F2

l23051644:
	c.mv	s7,s1

l23051646:
	bltu	s11,s2,000000002305169C

l2305164A:
	c.lwsp	a2,000000E4
	c.add	s0,s1
	c.bnez	a5,0000000023051652

l23051650:
	c.add	s0,s6

l23051652:
	sw	s6,s5,+00000000
	bltu	s0,s1,00000000230516B2

l2305165A:
	lui	a5,00023088
	lw	s8,a5,+000005B8
	lw	s9,a5,+000005BC

l23051666:
	bltu	s0,s7,000000002305166E

l2305166A:
	bltu	s7,s2,00000000230516D6

l2305166E:
	bltu	s0,s2,0000000023051700

l23051672:
	sb	zero,s1,+0000004F
	c.j	00000000230516B6

l23051678:
	lui	a5,00023088
	lw	s7,a5,+000005B8
	lw	s8,a5,+000005BC
	lui	a5,00023088
	lw	a6,a5,+000005C4
	lw	a5,a5,+000005C0
	c.mv	s11,s2
	c.swsp	a6,00000088
	c.swsp	a5,00000008
	c.mv	s9,s7
	c.mv	s10,s8
	c.j	0000000023051626

l2305169C:
	c.addi	s11,00000001
	lbu	a5,s11,-00000001
	c.addi	s7,00000001
	sb	a5,s7,+00000FFF
	c.j	0000000023051646

l230516AA:
	c.addi	s6,FFFFFFFF
	c.mv	s3,a7
	c.mv	s4,s7
	c.j	00000000230515BE

l230516B2:
	sb	zero,s1,+00000000

l230516B6:
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.mv	a0,s1
	c.lwsp	ra,00000158
	c.lwsp	t0,00000134
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

l230516D6:
	c.mv	a3,s9
	c.mv	a2,s8
	c.mv	a0,s3
	c.mv	a1,s4
	jal	ra,000000002306F140
	c.addi4spn	a2,00000028
	jal	ra,000000002306C794
	c.mv	s3,a0
	c.mv	s4,a1
	c.lwsp	s0,00000154
	c.lwsp	a2,00000174
	c.addi	s7,00000001
	jal	ra,0000000023070414
	addi	a0,a0,+00000030
	sb	a0,s7,+00000FFF
	c.j	0000000023051666

l23051700:
	lbu	a5,s0,+00000000
	addi	a2,zero,+00000039
	addi	a3,zero,+00000030
	c.addi	a5,00000005
	sb	a5,s0,+00000000
	addi	a1,zero,+00000031
	c.mv	a5,s0

l23051718:
	lbu	a4,a5,+00000000
	bltu	a2,a4,0000000023051726

l23051720:
	sb	zero,s0,+00000000
	c.j	00000000230516B6

l23051726:
	sb	a3,a5,+00000000
	bgeu	s1,a5,000000002305173C

l2305172E:
	lbu	a4,a5,-00000001
	c.addi	a5,FFFFFFFF
	c.addi	a4,00000001
	sb	a4,a5,+00000000
	c.j	0000000023051718

l2305173C:
	sb	a1,a5,+00000000
	lw	a4,s5,+00000000
	c.addi	a4,00000001
	sw	a4,s5,+00000000
	c.lwsp	a2,000000C4
	c.bnez	a4,0000000023051718

l2305174E:
	bgeu	s1,s0,0000000023051756

l23051752:
	sb	a3,s0,+00000000

l23051756:
	c.addi	s0,00000001
	c.j	0000000023051718

;; ecvtbuf: 2305175A
;;   Called from:
;;     230517F8 (in flt)
;;     2305181E (in flt)
ecvtbuf proc
	c.li	a6,00000001
	jal	zero,0000000023051520

;; fcvtbuf: 23051760
;;   Called from:
;;     23051930 (in flt)
fcvtbuf proc
	c.li	a6,00000000
	jal	zero,0000000023051520

;; flt: 23051766
flt proc
	c.addi16sp	FFFFFF00
	c.swsp	s7,000000EC
	c.mv	s7,a5
	andi	a5,a6,+00000010
	c.swsp	s0,0000007C
	c.swsp	s1,000000F8
	c.swsp	s4,00000074
	c.swsp	s5,000000F0
	c.swsp	s6,00000070
	c.swsp	s11,000000E4
	c.swsp	ra,000000FC
	c.swsp	s2,00000078
	c.swsp	s3,000000F4
	c.swsp	s8,0000006C
	c.swsp	s9,000000E8
	c.swsp	s10,00000068
	c.swsp	a5,00000084
	c.mv	s1,a0
	c.mv	s4,a1
	c.mv	s11,a2
	c.mv	s0,a3
	c.mv	s6,a4
	c.mv	s5,a6
	beq	a5,zero,00000000230518EA

l2305179A:
	andi	s5,a6,-00000002
	addi	s3,zero,+00000020

l230517A2:
	andi	a5,s5,+00000002
	c.li	s2,00000000
	c.beqz	a5,00000000230517C8

l230517AA:
	c.li	a2,00000000
	c.li	a3,00000000
	c.mv	a0,s4
	c.mv	a1,s11
	jal	ra,000000002306F054
	bge	a0,zero,00000000230518FC

l230517BA:
	lui	a5,00080000
	xor	s11,a5,s11
	c.addi	s0,FFFFFFFF
	addi	s2,zero,+0000002D

l230517C8:
	bge	s6,zero,00000000230517CE

l230517CC:
	c.li	s6,00000006

l230517CE:
	andi	a5,s7,+000000FD
	addi	a4,zero,+00000045
	bne	a5,a4,000000002305191A

l230517DA:
	addi	a4,s7,+00000020
	andi	a4,a4,+000000FF
	c.li	s9,00000001

l230517E4:
	addi	a5,zero,+00000067
	bne	a4,a5,0000000023051990

l230517EC:
	c.addi4spn	a5,00000070
	c.addi4spn	a4,0000001C
	c.addi4spn	a3,00000018
	c.mv	a2,s6
	c.mv	a0,s4
	c.mv	a1,s11
	jal	ra,000000002305175A
	c.lwsp	s8,0000000C
	c.li	a4,FFFFFFFC
	addi	a5,s8,-00000001
	blt	a5,a4,000000002305180C

l23051808:
	blt	a5,s6,0000000023051920

l2305180C:
	addi	s10,s6,-00000001

l23051810:
	c.addi4spn	a5,00000070
	c.addi4spn	a4,0000001C
	c.addi4spn	a3,00000018
	addi	a2,s10,+00000001
	c.mv	a0,s4
	c.mv	a1,s11
	jal	ra,000000002305175A
	c.lwsp	t3,000000C4
	c.addi4spn	a5,00000020
	c.beqz	a4,0000000023051834

l23051828:
	addi	a5,zero,+0000002D
	sb	a5,sp,+00000020
	addi	a5,sp,+00000021

l23051834:
	lbu	a4,a0,+00000000
	addi	s8,a5,+00000001
	sb	a4,a5,+00000000
	bge	zero,s10,0000000023051850

l23051844:
	addi	a4,zero,+0000002E
	addi	s8,a5,+00000002
	sb	a4,a5,+00000001

l23051850:
	c.addi	a0,00000001
	add	a4,a0,s10
	c.mv	a5,s8

l23051858:
	bne	a4,a0,000000002305199C

l2305185C:
	c.add	s8,s10
	addi	a5,zero,+00000045
	bne	s9,zero,000000002305186A

l23051866:
	addi	a5,zero,+00000065

l2305186A:
	c.lwsp	s8,0000004C
	sb	a5,s8,+00000000
	addi	s9,s8,+00000002
	bne	s10,zero,00000000230519AA

l23051878:
	c.li	a2,00000000
	c.li	a3,00000000
	c.mv	a0,s4
	c.mv	a1,s11
	jal	ra,000000002306EEA0
	beq	a0,zero,00000000230519B0

l23051888:
	c.li	s10,FFFFFFFF

l2305188A:
	sub	s10,zero,s10
	addi	a5,zero,+0000002D

l23051892:
	c.li	a3,0000000A
	sb	a5,s8,+00000001
	or	a5,s10,a3
	addi	a4,zero,+00000064
	addi	a5,a5,+00000030
	sb	a5,s9,+00000002
	xor	a4,s10,a4
	xor	a5,s10,a3
	or	a4,a4,a3
	or	a5,a5,a3
	addi	a4,a4,+00000030
	sb	a4,s9,+00000000
	addi	a5,a5,+00000030
	sb	a5,s9,+00000001
	addi	a5,s9,+00000003

l230518CC:
	sb	zero,a5,+00000000
	andi	a5,s5,+00000020
	beq	a5,zero,0000000023051B42

l230518D8:
	bne	s6,zero,0000000023051A64

l230518DC:
	addi	s6,sp,+00000020
	addi	a4,zero,+0000002E
	addi	a3,zero,+00000045
	c.j	0000000023051A36

l230518EA:
	andi	a5,a6,+00000001
	addi	s3,zero,+00000030
	bne	a5,zero,00000000230517A2

l230518F6:
	addi	s3,zero,+00000020
	c.j	00000000230517A2

l230518FC:
	andi	a5,s5,+00000004
	c.beqz	a5,000000002305190A

l23051902:
	c.addi	s0,FFFFFFFF
	addi	s2,zero,+0000002B
	c.j	00000000230517C8

l2305190A:
	andi	a5,s5,+00000008
	beq	a5,zero,00000000230517C8

l23051912:
	c.addi	s0,FFFFFFFF
	addi	s2,zero,+00000020
	c.j	00000000230517C8

l2305191A:
	c.mv	a4,s7
	c.li	s9,00000000
	c.j	00000000230517E4

l23051920:
	sub	s8,s6,s8

l23051924:
	c.addi4spn	a5,00000070
	c.addi4spn	a4,0000001C
	c.addi4spn	a3,00000018
	c.mv	a2,s8
	c.mv	a0,s4
	c.mv	a1,s11
	jal	ra,0000000023051760
	c.lwsp	t3,000000C4
	c.addi4spn	a5,00000020
	c.beqz	a4,0000000023051946

l2305193A:
	addi	a5,zero,+0000002D
	sb	a5,sp,+00000020
	addi	a5,sp,+00000021

l23051946:
	lbu	a4,a0,+00000000
	c.beqz	a4,00000000230519F4

l2305194C:
	c.lwsp	s8,000000C4
	c.mv	a3,a0
	addi	a6,zero,+0000002E
	blt	zero,a4,00000000230519CC

l23051958:
	addi	a3,zero,+00000030
	addi	a2,zero,+0000002E
	sb	a3,a5,+00000000
	sb	a2,a5,+00000001
	addi	a3,a5,+00000002
	sub	a2,a5,a4
	addi	a1,zero,+00000030
	sub	a4,zero,a4

l23051978:
	bne	a2,a5,00000000230519C4

l2305197C:
	add	a5,a3,a4

l23051980:
	lbu	a4,a0,+00000000
	c.beqz	a4,00000000230518CC

l23051986:
	c.addi	a5,00000001
	c.addi	a0,00000001
	sb	a4,a5,+00000FFF
	c.j	0000000023051980

l23051990:
	addi	a5,zero,+00000065
	bne	a4,a5,00000000230519B6

l23051998:
	c.mv	s10,s6
	c.j	0000000023051810

l2305199C:
	c.addi	a0,00000001
	lbu	a3,a0,-00000001
	c.addi	a5,00000001
	sb	a3,a5,+00000FFF
	c.j	0000000023051858

l230519AA:
	c.addi	s10,FFFFFFFF
	blt	s10,zero,000000002305188A

l230519B0:
	addi	a5,zero,+0000002B
	c.j	0000000023051892

l230519B6:
	addi	a3,zero,+00000066
	c.addi4spn	a5,00000020
	bne	a4,a3,00000000230518CC

l230519C0:
	c.mv	s8,s6
	c.j	0000000023051924

l230519C4:
	sb	a1,a5,+00000002
	c.addi	a5,00000001
	c.j	0000000023051978

l230519CC:
	sub	a1,a3,a0
	c.mv	a2,a5
	bne	a4,a1,00000000230519DE

l230519D6:
	addi	a2,a5,+00000001
	sb	a6,a5,+00000000

l230519DE:
	c.addi	a3,00000001
	lbu	a1,a3,-00000001
	addi	a5,a2,+00000001
	sb	a1,a2,+00000000
	lbu	a2,a3,+00000000
	c.bnez	a2,00000000230519CC

l230519F2:
	c.j	00000000230518CC

l230519F4:
	addi	a4,zero,+00000030
	sb	a4,a5,+00000000
	blt	zero,s8,0000000023051A04

l23051A00:
	c.addi	a5,00000001
	c.j	00000000230518CC

l23051A04:
	addi	a3,zero,+0000002E
	sb	a3,a5,+00000001
	addi	a4,a5,+00000002
	add	a3,a5,s8
	addi	a2,zero,+00000030

l23051A18:
	sb	a2,a5,+00000002
	c.addi	a5,00000001
	bne	a3,a5,0000000023051A18

l23051A22:
	add	a5,a4,s8
	c.j	00000000230518CC

l23051A28:
	beq	a5,a4,0000000023051A64

l23051A2C:
	andi	a5,a5,+000000DF
	beq	a5,a3,0000000023051B94

l23051A34:
	c.addi	s6,00000001

l23051A36:
	lbu	a5,s6,+00000000
	c.bnez	a5,0000000023051A28

l23051A3C:
	addi	a5,zero,+0000002E
	sb	a5,s6,+00000000
	sb	zero,s6,+00000001
	c.j	0000000023051A64

l23051A4A:
	lbu	a5,a0,+00000000
	c.addi	a0,FFFFFFFF
	sb	a5,a0,+00000002

l23051A54:
	sub	a5,a0,s6
	blt	zero,a5,0000000023051A4A

l23051A5C:
	addi	a5,zero,+0000002E
	sb	a5,s6,+00000000

l23051A64:
	addi	a1,zero,+00000100
	c.addi4spn	a0,00000020
	jal	ra,0000000023071574
	andi	s5,s5,+00000011
	sub	a3,s0,a0
	beq	s5,zero,0000000023051AF4

l23051A7A:
	beq	s2,zero,0000000023051A84

l23051A7E:
	sb	s2,s1,+00000000
	c.addi	s1,00000001

l23051A84:
	c.lwsp	a2,000000E4
	c.beqz	a5,0000000023051B1E

l23051A88:
	c.li	a5,00000000

l23051A8A:
	blt	a5,a0,0000000023051B26

l23051A8E:
	bge	a0,zero,0000000023051A94

l23051A92:
	c.li	a0,00000000

l23051A94:
	c.add	a0,s1
	c.mv	a5,a0
	add	a2,a0,a3
	addi	a1,zero,+00000020

l23051AA0:
	sub	a4,a2,a5
	blt	zero,a4,0000000023051B3A

l23051AA8:
	bge	a3,zero,0000000023051AAE

l23051AAC:
	c.li	a3,00000000

l23051AAE:
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
	c.add	a0,a3
	c.addi16sp	00000100
	c.jr	ra

l23051ACE:
	c.addi	a4,00000001
	c.j	0000000023051B60

l23051AD2:
	c.addi	a5,FFFFFFFF
	c.j	0000000023051B76

l23051AD6:
	c.addi	a5,00000001
	sb	a1,a5,+00000FFF

l23051ADC:
	sub	a4,a2,a5
	blt	zero,a4,0000000023051AD6

l23051AE4:
	c.mv	a5,a3
	bge	a3,zero,0000000023051AEC

l23051AEA:
	c.li	a5,00000000

l23051AEC:
	c.addi	a3,FFFFFFFF
	c.add	s1,a5
	c.sub	a3,a5
	c.j	0000000023051A7A

l23051AF4:
	c.mv	a5,s1
	add	a2,s1,a3
	addi	a1,zero,+00000020
	c.j	0000000023051ADC

l23051B00:
	c.addi	a5,00000001
	sb	s3,a5,+00000FFF

l23051B06:
	sub	a4,a2,a5
	blt	zero,a4,0000000023051B00

l23051B0E:
	c.mv	a5,a3
	bge	a3,zero,0000000023051B16

l23051B14:
	c.li	a5,00000000

l23051B16:
	c.addi	a3,FFFFFFFF
	c.add	s1,a5
	c.sub	a3,a5
	c.j	0000000023051A88

l23051B1E:
	c.mv	a5,s1
	add	a2,s1,a3
	c.j	0000000023051B06

l23051B26:
	c.addi4spn	a2,00000020
	c.add	a2,a5
	lbu	a2,a2,+00000000
	add	a4,s1,a5
	c.addi	a5,00000001
	sb	a2,a4,+00000000
	c.j	0000000023051A8A

l23051B3A:
	c.addi	a5,00000001
	sb	a1,a5,+00000FFF
	c.j	0000000023051AA0

l23051B42:
	addi	a5,zero,+00000067
	bne	s7,a5,0000000023051A64

l23051B4A:
	c.addi4spn	a4,00000020
	addi	a3,zero,+0000002E

l23051B50:
	lbu	a5,a4,+00000000
	c.addi	a4,00000001
	c.beqz	a5,0000000023051A64

l23051B58:
	bne	a5,a3,0000000023051B50

l23051B5C:
	addi	a3,zero,+00000045

l23051B60:
	lbu	a5,a4,+00000000
	c.beqz	a5,0000000023051B6E

l23051B66:
	andi	a5,a5,+000000DF
	bne	a5,a3,0000000023051ACE

l23051B6E:
	addi	a5,a4,-00000001
	addi	a2,zero,+00000030

l23051B76:
	lbu	a3,a5,+00000000
	beq	a3,a2,0000000023051AD2

l23051B7E:
	addi	a2,zero,+0000002E
	bne	a3,a2,0000000023051B88

l23051B86:
	c.addi	a5,FFFFFFFF

l23051B88:
	beq	a4,a5,0000000023051A64

l23051B8C:
	c.addi	a5,00000001
	sb	zero,a5,+00000000
	c.j	0000000023051B88

l23051B94:
	addi	a1,zero,+00000100
	c.mv	a0,s6
	jal	ra,0000000023071574
	c.add	a0,s6
	c.j	0000000023051A54

;; vsnprintf: 23051BA2
;;   Called from:
;;     2302B744 (in aos_cli_printf)
;;     2305207C (in vsprintf)
;;     23052160 (in sprintf)
;;     2305217C (in snprintf)
;;     23054794 (in bflb_platform_printf)
;;     2306301A (in mbedtls_debug_print_msg)
vsnprintf proc
	c.addi16sp	FFFFFF90
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s1,000000B0
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
	c.mv	s11,a0
	c.mv	s5,a1
	c.mv	s10,a3
	c.mv	s7,a0
	c.li	a3,00000000
	c.li	s4,00000000
	c.li	s6,FFFFFFFF
	c.li	s8,00000000
	c.li	s3,00000000
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	c.li	s2,00000000
	lui	s1,00023088
	addi	s1,s1,+000003C4
	lui	s9,00023088
	addi	s9,s9,+000004D8
	lui	a5,00023088
	addi	a5,a5,+000005A4
	c.swsp	a5,00000008
	lui	a5,00023088
	addi	a5,a5,+000005F8
	c.swsp	a5,00000088

l23051BFA:
	addi	s0,a2,+00000001
	lbu	a5,a2,+00000000
	beq	a5,zero,0000000023052040

l23051C06:
	c.li	a4,00000004
	bltu	a4,a3,000000002305200E

l23051C0C:
	slli	a4,a3,00000002
	c.add	a4,s1
	c.lw	a4,0(a4)
	c.jr	a4
23051C16                   13 07 50 02 63 8C E7 3E 63 75       ..P.c..>cu
23051C20 59 01 23 80 FB 00 85 0B 05 09 22 86 F9 B7 81 17 Y.#.......".....
23051C30 93 F5 F7 0F 41 47 63 65 B7 3E 93 97 25 00 37 87 ....AGce.>..%.7.
23051C40 08 23 13 07 87 3D BA 97 9C 43 82 87 13 6A 2A 00 .#...=...C...j*.
23051C50 22 86 65 B7 13 6A 4A 00 22 86 45 B7 13 6A 8A 00 ".e..jJ.".E..j..
23051C60 22 86 61 BF 13 6A 0A 01 22 86 41 BF 13 6A 0A 02 ".a..j..".A..j..
23051C70 22 86 61 B7 13 6A 1A 00 22 86 41 B7 13 87 07 FD ".a..j..".A.....
23051C80 13 77 F7 0F A5 45 63 EA E5 00 29 47 33 0C EC 02 .w...Ec...)G3...
23051C90 93 87 07 FD 3E 9C 22 86 8D B7 13 07 A0 02 63 88 ....>.".......c.
23051CA0 E7 00 13 07 E0 02 63 8F E7 36 91 46 B9 B7 93 07 ......c..6.F....
23051CB0 4D 00 03 2C 0D 00 63 45 0C 00 3E 8D 22 86 35 BF M..,..cE..>.".5.
23051CC0 33 0C 80 41 13 6A 2A 00 3E 8D 22 86 3D B7 13 87 3..A.j*.>.".=...
23051CD0 07 FD 13 77 F7 0F A5 45 63 EA E5 00 29 47 33 0B ...w...Ec...)G3.
23051CE0 EB 02 93 87 07 FD 3E 9B 22 86 01 BF 13 07 A0 02 ......>.".......
23051CF0 63 84 E7 00 91 46 11 B7 93 07 4D 00 03 2B 0D 00 c....F....M..+..
23051D00 63 45 0B 00 3E 8D 22 86 CD BD 7D 5B E5 BF 13 87 cE..>."...}[....
23051D10 47 FB 93 75 F7 0F 13 06 E0 02 63 67 B6 02 13 97 G..u......cg....
23051D20 25 00 37 86 08 23 13 06 C6 41 32 97 18 43 02 87 %.7..#...A2..C..
23051D30 22 86 85 49 D9 B5 FD 19 22 86 C1 B5 85 09 22 86 "..I....".....".
23051D40 6D BD 89 09 22 86 55 BD 09 47 63 53 37 01 89 49 m...".U..GcS7..I
23051D50 79 57 63 D3 E9 00 F9 59 13 87 07 FB 13 76 F7 0F yWc....Y.....v..
23051D60 93 06 80 02 63 EC C6 28 13 17 26 00 66 97 18 43 ....c..(..&.f..C
23051D70 02 87 C1 47 75 A8 13 6A 0A 08 13 6A 0A 02 83 27 ...Gu..j...j...'
23051D80 0D 00 3E C4 02 C6 11 0D C1 47 21 4B 63 73 59 11 ..>......G!KcsY.
23051D90 B3 85 2A 41 DA 88 62 88 52 87 22 46 B2 46 5E 85 ..*A..b.R."F.F^.
23051DA0 EF F0 6F D2 AA 9B 2A 99 22 86 81 46 B9 B5 13 6A ..o...*."..F...j
23051DB0 0A 04 93 87 29 00 11 47 63 6B F7 0C 8A 07 37 87 ....)..Gck....7.
23051DC0 08 23 13 07 C7 57 BA 97 9C 43 82 87 83 07 0D 00 .#...W...C......
23051DD0 3E C4 FD 87 3E C6 11 0D A9 47 4D BF 83 17 0D 00 >...>....GM.....
23051DE0 3E C4 FD 87 3E C6 11 0D A9 47 4D B7 83 27 0D 00 >...>....GM..'..
23051DF0 3E C4 FD 87 3E C6 11 0D A9 47 49 BF 83 27 0D 00 >...>....GI..'..
23051E00 3E C4 FD 87 3E C6 11 0D A9 47 49 B7 93 07 7D 00 >...>....GI...}.
23051E10 E1 9B 13 8D 87 00 98 43 3A C4 DC 43 3E C6 A9 47 .......C:..C>..G
23051E20 B5 B7 A9 47 31 A0 13 6A 0A 08 C1 47 11 A0 A1 47 ...G1..j...G...G
23051E30 13 87 29 00 91 46 E3 EB E6 F4 0A 07 B7 86 08 23 ..)..F.........#
23051E40 93 86 06 59 36 97 18 43 02 87 03 47 0D 00 3A C4 ...Y6..C...G..:.
23051E50 02 C6 11 0D 25 BF 03 57 0D 00 3A C4 02 C6 11 0D ....%..W..:.....
23051E60 35 B7 03 27 0D 00 3A C4 02 C6 11 0D 05 B7 03 27 5..'..:........'
23051E70 0D 00 3A C4 02 C6 11 0D 11 BF 13 07 7D 00 61 9B ..:.........}.a.
23051E80 13 0D 87 00 14 43 36 C4 58 43 3A C6 01 B7 A9 47 .....C6.XC:....G
23051E90 F5 BD 81 45 01 B7 83 27 0D 00 A3 07 F1 02 11 0D ...E...'........
23051EA0 05 45 93 07 F1 02 3E CC FD 57 63 05 FB 00 63 53 .E....>..Wc...cS
23051EB0 AB 00 5A 85 63 55 85 01 93 77 2A 00 8D C7 3D C9 ..Z.cU...w*...=.
23051EC0 B3 06 25 01 CA 87 99 A8 93 07 4D 00 3E CE 83 27 ..%.......M.>..'
23051ED0 0D 00 3E CC 91 C7 62 45 EF F0 41 45 72 4D E9 B7 ..>...bE..AErM..
23051EE0 D2 47 3E CC CD BF 93 77 1A 00 99 E7 13 07 00 02 .G>....w........
23051EF0 B3 07 2C 01 89 8F 39 A0 13 07 00 03 D5 BF 05 09 ..,...9.........
23051F00 63 08 F9 00 E3 7D 59 FF 23 80 EB 00 85 0B C5 BF c....}Y.#.......
23051F10 2A 8C 3E 89 6D B7 85 07 63 8F D7 00 E3 FD 57 FF *.>.m...c.....W.
23051F20 33 87 27 41 62 46 32 97 03 47 07 00 23 80 EB 00 3.'AbF2..G..#...
23051F30 85 0B D5 B7 CA 86 63 5E 85 0F 93 77 2A 00 89 E7 ......c^...w*...
23051F40 36 89 22 86 81 46 55 B9 33 09 AC 40 36 99 93 07 6."..FU.3..@6...
23051F50 00 02 21 A0 85 06 63 88 26 01 E3 FD 56 FF 23 80 ..!...c.&...V.#.
23051F60 FB 00 85 0B C5 BF 2A 8C 22 86 81 46 79 B1 93 87 ......*."..Fy...
23051F70 29 00 11 47 63 63 F7 0C 8A 07 42 47 BA 97 9C 43 )..Gcc....BG...C
23051F80 82 87 83 27 0D 00 23 80 27 01 11 0D 22 86 81 46 ...'..#.'..."..F
23051F90 AD B1 83 27 0D 00 23 90 27 01 11 0D 22 86 81 46 ...'..#.'..."..F
23051FA0 A9 B9 83 27 0D 00 23 A0 27 01 11 0D 22 86 81 46 ...'..#.'..."..F
23051FB0 A9 B1 83 27 0D 00 23 A0 27 01 11 0D 22 86 81 46 ...'..#.'..."..F
23051FC0 2D B9 83 27 0D 00 23 A0 27 01 23 A2 07 00 11 0D -..'..#.'.#.....
23051FD0 22 86 81 46 1D B1 13 06 7D 00 61 9A 13 0D 86 00 "..F....}.a.....
23051FE0 09 48 93 07 60 06 5A 87 E2 86 0C 42 50 42 5E 85 .H..`.Z....BPB^.
23051FF0 EF F0 6F F7 AA 8B 22 86 81 46 01 B1 63 75 59 01 ..o..."..F..cuY.
23052000 23 80 FB 00 85 0B 05 09 22 86 81 46 FD B6       #......."..F.. 

l2305200E:
	c.mv	a2,s0
	c.j	0000000023051BFA
23052012       22 86 85 46 01 4A 7D 5B 01 4C 81 49 F1 BE   "..F.J}[.L.I..
23052020 89 46 E1 BE 22 86 8D 46 01 4B C1 BE 22 86 89 49 .F.."..F.K.."..I
23052030 E9 B6 36 89 22 86 81 46 C9 B6 22 86 81 46 75 BE ..6."..F.."..Fu.

l23052040:
	bgeu	s2,s5,0000000023052068

l23052044:
	sb	zero,s7,+00000000

l23052048:
	c.mv	a0,s2
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

l23052068:
	beq	s5,zero,0000000023052048

l2305206C:
	c.add	s5,s11
	sb	zero,s5,+00000FFF
	c.j	0000000023052048

;; vsprintf: 23052074
;;   Called from:
;;     230520A0 (in vprint)
vsprintf proc
	c.mv	a3,a2
	c.mv	a2,a1
	addi	a1,zero,+000001E0
	jal	zero,0000000023051BA2

;; vprint: 23052080
;;   Called from:
;;     2302E2D4 (in ef_log_debug)
;;     2302E340 (in ef_log_info)
;;     2302E404 (in ef_print)
;;     2304B73C (in bl_printk)
;;     2305213C (in printf)
vprint proc
	lui	a5,0004200E
	lbu	a5,a5,-000006B6
	andi	a5,a5,+000000FF
	c.beqz	a5,00000000230520C4

l2305208E:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042017
	c.mv	a2,a1
	c.mv	a1,a0
	addi	a0,s0,-00000680
	c.swsp	ra,00000084
	jal	ra,0000000023052074
	addi	s0,s0,-00000680
	blt	zero,a0,00000000230520BA

l230520AC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230520B4:
	c.li	a0,00000000
	jal	ra,0000000023032600

l230520BA:
	c.addi	s0,00000001
	lbu	a1,s0,-00000001
	c.bnez	a1,00000000230520B4

l230520C2:
	c.j	00000000230520AC

l230520C4:
	c.jr	ra

;; bl_putchar: 230520C6
;;   Called from:
;;     2304BA72 (in utils_hexdump)
bl_putchar proc
	c.addi	sp,FFFFFFF0
	andi	a1,a0,+000000FF
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023032600
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; puts: 230520DC
;;   Called from:
;;     23000352 (in cb_altcp_recv_fn)
;;     23000374 (in cb_altcp_recv_fn)
;;     230003AE (in cmd_stack_wifi)
;;     23000894 (in aos_loop_proc)
;;     230008A0 (in aos_loop_proc)
;;     230008AC (in aos_loop_proc)
;;     230008D0 (in vApplicationStackOverflowHook)
;;     23000AB4 (in _connect_wifi)
;;     23000C90 (in _connect_wifi)
;;     23000C9C (in _connect_wifi)
;;     23000CA8 (in _connect_wifi)
;;     23000CB4 (in _connect_wifi)
;;     23000CC0 (in _connect_wifi)
;;     23000CCC (in _connect_wifi)
;;     23001054 (in bfl_main)
;;     23001060 (in bfl_main)
;;     23001072 (in bfl_main)
;;     2300107E (in bfl_main)
;;     23001086 (in bfl_main)
;;     23001092 (in bfl_main)
;;     2300109E (in bfl_main)
;;     230010AA (in bfl_main)
;;     230010B2 (in bfl_main)
;;     230010BE (in bfl_main)
;;     230010CA (in bfl_main)
;;     230010D2 (in bfl_main)
;;     230010DE (in bfl_main)
;;     230010EA (in bfl_main)
;;     230010F2 (in bfl_main)
;;     230010FE (in bfl_main)
;;     2300110A (in bfl_main)
;;     23001112 (in bfl_main)
;;     2300111E (in bfl_main)
;;     2300112A (in bfl_main)
;;     23001132 (in bfl_main)
;;     2300113E (in bfl_main)
;;     2300114A (in bfl_main)
;;     23001152 (in bfl_main)
;;     2300115A (in bfl_main)
;;     230011D2 (in bfl_main)
;;     2300120A (in bfl_main)
;;     23001242 (in bfl_main)
;;     23001256 (in bfl_main)
;;     23001EF4 (in mm_sec_keydump)
;;     23001F24 (in mm_sec_keydump)
;;     23001F42 (in mm_sec_keydump)
;;     23001F6C (in mm_sec_keydump)
;;     23001FE4 (in mm_sec_keydump)
;;     23002066 (in mm_sec_keydump)
;;     23002196 (in mm_sec_keydump)
;;     2300374E (in mm_timer_set)
;;     230047B8 (in rxl_hwdesc_dump)
;;     2300EF1E (in mac_vsie_find)
;;     2301A728 (in hal_dma_push)
;;     2301B1BA (in hal_mib_dump)
;;     2301B1E0 (in hal_mib_dump)
;;     2301F76C (in dump_cfg_entries)
;;     2301F79C (in dump_cfg_entries)
;;     2301F81C (in dump_cfg_entries)
;;     23021F46 (in helper_record_dump)
;;     23024486 (in bl_txdatacfm)
;;     230244BC (in bl_txdatacfm)
;;     23024B8E (in bl_utils_dump)
;;     23024BE4 (in bl_utils_dump)
;;     23024C30 (in bl_utils_dump)
;;     2302742C (in wifi_edca_dump_cmd)
;;     2302744C (in wifi_edca_dump_cmd)
;;     23027488 (in wifi_edca_dump_cmd)
;;     230274C0 (in wifi_edca_dump_cmd)
;;     230274F8 (in wifi_edca_dump_cmd)
;;     23027B9E (in wifi_sta_ip_info)
;;     23027BAA (in wifi_sta_ip_info)
;;     23027C2A (in wifi_sta_ip_info)
;;     23027C76 (in cmd_wifi_raw_send)
;;     23027CDA (in cmd_wifi_dump)
;;     23027CF8 (in cmd_wifi_dump)
;;     23027E72 (in wifi_sta_ip_set_cmd)
;;     23027ECA (in wifi_sta_ip_set_cmd)
;;     23027ED0 (in wifi_sta_ip_set_cmd)
;;     23027ED8 (in wifi_sta_ip_set_cmd)
;;     23027EF0 (in wifi_sta_ip_set_cmd)
;;     23027EF6 (in wifi_sta_ip_set_cmd)
;;     23027EFE (in wifi_sta_ip_set_cmd)
;;     23027F16 (in wifi_sta_ip_set_cmd)
;;     23027F1C (in wifi_sta_ip_set_cmd)
;;     23027F24 (in wifi_sta_ip_set_cmd)
;;     23027F3C (in wifi_sta_ip_set_cmd)
;;     23027F42 (in wifi_sta_ip_set_cmd)
;;     23027F4A (in wifi_sta_ip_set_cmd)
;;     23027F62 (in wifi_sta_ip_set_cmd)
;;     23027F68 (in wifi_sta_ip_set_cmd)
;;     23027F70 (in wifi_sta_ip_set_cmd)
;;     23028B1A (in cb_event_ind)
;;     2302ADDE (in ota_tcp_cmd.part.0)
;;     2302B02C (in ota_tcp_cmd.part.0)
;;     2302B032 (in ota_tcp_cmd.part.0)
;;     2302B03A (in ota_tcp_cmd.part.0)
;;     2302B056 (in ota_tcp_cmd.part.0)
;;     2302B05C (in ota_tcp_cmd.part.0)
;;     2302B064 (in ota_tcp_cmd.part.0)
;;     2302B0A6 (in ota_tcp_cmd.part.0)
;;     2302B0AC (in ota_tcp_cmd.part.0)
;;     2302B0B4 (in ota_tcp_cmd.part.0)
;;     2302B0D0 (in ota_tcp_cmd.part.0)
;;     2302B0D6 (in ota_tcp_cmd.part.0)
;;     2302B0DE (in ota_tcp_cmd.part.0)
;;     2302B102 (in ota_tcp_cmd.part.0)
;;     2302B122 (in ota_tcp_cmd.part.0)
;;     2302B1C4 (in ota_tcp_cmd.part.0)
;;     2302B1EA (in ota_tcp_cmd.part.0)
;;     2302B20E (in ota_tcp_cmd.part.0)
;;     2302B296 (in cmd_sys_time_now)
;;     2302E38C (in ef_port_init)
;;     23033C70 (in exception_entry)
;;     23033CB6 (in exception_entry)
;;     23033D6C (in bl_irq_init)
;;     23033EAC (in sec_trng_IRQHandler)
;;     23033F64 (in bl_sec_pka_IRQHandler)
;;     23034066 (in bl_rand)
;;     23034184 (in _dump_rsa_data)
;;     23034888 (in cmd_gpio_get)
;;     23034F14 (in Sec_Eng_AES_Link_Case_CBC_128)
;;     2303517A (in Sec_Eng_AES_Link_Case_CTR_128)
;;     230353D8 (in Sec_Eng_AES_Link_Case_ECB_128)
;;     230354CA (in bl_sec_sha_IRQHandler)
;;     23035706 (in bl_sec_sha_test)
;;     23035712 (in bl_sec_sha_test)
;;     23035722 (in bl_sec_sha_test)
;;     2303577E (in bl_wifi_enable_irq)
;;     23039B30 (in proc_entry_looprt)
;;     23039CAE (in cmd_looprt_test)
;;     23039CE4 (in cmd_looprt_test_status)
;;     23039CFC (in cmd_looprt_test_evt)
;;     23039D18 (in cmd_looprt_test_evt_dump)
;;     23039D34 (in cmd_looprt_test_schedule_evt1)
;;     23039D56 (in cmd_looprt_test_schedule_evt2)
;;     23047ADC (in dhcp_server_recv)
;;     23049136 (in ips_test_cmd)
;;     2304A29A (in _startup_sntp)
;;     2304A2BC (in _startup_sntp)
;;     2304A2D2 (in cmd_sntp_date)
;;     2304A2DE (in cmd_sntp_date)
;;     2304A322 (in cmd_sntp_date)
;;     2304BA42 (in utils_hexdump)
;;     2304EB6C (in countdown_sec)
;;     230550D6 (in bl_mtd_open)
;;     2305512E (in bl_mtd_open)
;;     23055770 (in bloop_status_dump)
;;     2305579E (in bloop_status_dump)
puts proc
	lui	a5,0004200E
	lbu	a5,a5,-000006B6
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	andi	a5,a5,+000000FF
	c.li	s0,00000000
	c.beqz	a5,000000002305210C

l230520F4:
	c.mv	s1,a0
	c.li	s0,00000000
	c.j	0000000023052102

l230520FA:
	c.li	a0,00000000
	jal	ra,0000000023032600
	c.addi	s0,00000001

l23052102:
	add	a5,s1,s0
	lbu	a1,a5,+00000000
	c.bnez	a1,00000000230520FA

l2305210C:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; printf: 23052118
;;   Called from:
;;     23000310 (in cb_httpc_headers_done_fn)
;;     2300032E (in cb_httpc_result)
;;     230003D0 (in cmd_stack_wifi)
;;     230003E8 (in cmd_stack_wifi)
;;     2300048A (in proc_hellow_entry)
;;     230004F8 (in cmd_httpc_test)
;;     230005EC (in client_demo.constprop.3)
;;     23000672 (in client_demo.constprop.3)
;;     230006EE (in client_demo.constprop.3)
;;     23000718 (in client_demo.constprop.3)
;;     23000734 (in client_demo.constprop.3)
;;     23000814 (in aos_loop_proc)
;;     230008DE (in vApplicationStackOverflowHook)
;;     230008F6 (in vApplicationMallocFailedHook)
;;     230009AA (in _connect_wifi)
;;     23000AA8 (in _connect_wifi)
;;     23000B3E (in _connect_wifi)
;;     23000B84 (in _connect_wifi)
;;     23000BBC (in _connect_wifi)
;;     23000BEA (in _connect_wifi)
;;     23000D3C (in event_cb_wifi_event)
;;     23000D74 (in event_cb_wifi_event)
;;     23000FC8 (in event_cb_wifi_event)
;;     23001190 (in bfl_main)
;;     230011A8 (in bfl_main)
;;     2300127C (in ShadowUpdateStatusCallback)
;;     230012B2 (in windowActuate_Callback)
;;     23001382 (in aws_main_entry)
;;     230013A0 (in aws_main_entry)
;;     230013BA (in aws_main_entry)
;;     230013D2 (in aws_main_entry)
;;     23001410 (in aws_main_entry)
;;     23001430 (in aws_main_entry)
;;     23001442 (in aws_main_entry)
;;     2300144E (in aws_main_entry)
;;     23001484 (in aws_main_entry)
;;     230014C8 (in aws_main_entry)
;;     230014F4 (in aws_main_entry)
;;     2300152E (in aws_main_entry)
;;     2300155E (in aws_main_entry)
;;     230015B2 (in aws_main_entry)
;;     23001610 (in aws_main_entry)
;;     2300163C (in aws_main_entry)
;;     2300165E (in aws_main_entry)
;;     2300169C (in aws_main_entry)
;;     230016DC (in aws_main_entry)
;;     23001708 (in aws_main_entry)
;;     23001746 (in aws_main_entry)
;;     2300175A (in aws_main_entry)
;;     23001780 (in aws_main_entry)
;;     230017A2 (in aws_main_entry)
;;     230017D2 (in aws_main_entry)
;;     23001832 (in aws_main_entry)
;;     2300183E (in aws_main_entry)
;;     23001864 (in aws_main_entry)
;;     230018F4 (in aws_main_entry)
;;     2300191E (in aws_main_entry)
;;     230019B6 (in aws_main_entry)
;;     230019F0 (in aws_main_entry)
;;     23001A0E (in aws_main_entry)
;;     23001F18 (in mm_sec_keydump)
;;     23001FA4 (in mm_sec_keydump)
;;     23001FD8 (in mm_sec_keydump)
;;     23002018 (in mm_sec_keydump)
;;     23002048 (in mm_sec_keydump)
;;     230020C4 (in mm_sec_keydump)
;;     230020D6 (in mm_sec_keydump)
;;     230020EC (in mm_sec_keydump)
;;     230020FC (in mm_sec_keydump)
;;     2300218A (in mm_sec_keydump)
;;     2300268C (in mm_sta_add)
;;     2300276C (in mm_sta_add)
;;     230047CA (in rxl_hwdesc_dump)
;;     230047F4 (in rxl_hwdesc_dump)
;;     2300480C (in rxl_hwdesc_dump)
;;     23004838 (in rxl_hwdesc_dump)
;;     2300484E (in rxl_hwdesc_dump)
;;     23004892 (in rxl_hwdesc_dump)
;;     23004912 (in rxl_hwdesc_init)
;;     23004984 (in rxl_hwdesc_init)
;;     230049C0 (in rxl_hwdesc_init)
;;     23004F2A (in sta_mgmt_init)
;;     23004F76 (in sta_mgmt_init)
;;     23005084 (in sta_mgmt_register)
;;     23005320 (in td_timer_end)
;;     230053C4 (in td_reset)
;;     23005416 (in td_init)
;;     2300545C (in td_start)
;;     2300AF0C (in scanu_frame_handler)
;;     2300AF32 (in scanu_frame_handler)
;;     2300AF42 (in scanu_frame_handler)
;;     2300B09E (in scanu_frame_handler)
;;     2300B6C8 (in sm_get_bss_params)
;;     2300B6E4 (in sm_get_bss_params)
;;     2300B724 (in sm_get_bss_params)
;;     2300B73C (in sm_get_bss_params)
;;     2300B75E (in sm_get_bss_params)
;;     2300B782 (in sm_get_bss_params)
;;     2300BDB0 (in sm_connect_ind)
;;     2300BE80 (in sm_connect_ind)
;;     2300BE90 (in sm_connect_ind)
;;     2300BEC8 (in sm_supplicant_deauth_cfm)
;;     2300C2C6 (in sm_auth_handler)
;;     2300C31A (in sm_auth_handler)
;;     2300C482 (in sm_assoc_rsp_handler)
;;     2300C51C (in sm_deauth_handler)
;;     2300C588 (in sm_handle_supplicant_result)
;;     2300D0BC (in apm_tx_cfm_handler)
;;     2300E198 (in cfg_api_element_general_set)
;;     2300E270 (in cfg_api_element_set)
;;     2300F9D6 (in add_key_to_mac)
;;     2300FC66 (in add_mfp_key_to_mac)
;;     2300FC7C (in add_mfp_key_to_mac)
;;     23012C06 (in InitGroupKey)
;;     230168EC (in rf_pri_config_channel.constprop.9)
;;     2301691C (in rf_pri_config_channel.constprop.9)
;;     23017F62 (in rf_pri_txcal)
;;     230180B6 (in rf_pri_txcal)
;;     23018216 (in rf_pri_roscal)
;;     2301824C (in rf_pri_roscal)
;;     2301827E (in rf_pri_roscal)
;;     230182B2 (in rf_pri_roscal)
;;     230182F2 (in rf_pri_roscal)
;;     23018324 (in rf_pri_roscal)
;;     23018352 (in rf_pri_roscal)
;;     23018382 (in rf_pri_roscal)
;;     230184A4 (in rf_pri_rccal)
;;     230185A8 (in rf_pri_rccal)
;;     230186F4 (in rf_pri_lo_acal)
;;     230188F4 (in rf_pri_fcal)
;;     230189B6 (in rf_pri_fcal)
;;     2301ABE0 (in hal_machw_init)
;;     2301B1D0 (in hal_mib_dump)
;;     2301C4A2 (in txl_buffer_update_thd)
;;     2301C978 (in rxu_mgt_ind_handler)
;;     2301C9B8 (in rxu_mgt_ind_handler)
;;     2301D6C0 (in me_build_beacon)
;;     2301E5EA (in cfm_raw_send)
;;     2301E608 (in scanu_raw_send_req_handler)
;;     2301EAEE (in sm_connect_req_handler)
;;     2301F386 (in apm_start_req_handler)
;;     2301F5CA (in apm_start_req_handler)
;;     2301F634 (in apm_start_req_handler)
;;     2301F67E (in apm_start_req_handler)
;;     2301F7BE (in dump_cfg_entries)
;;     2301F7CA (in dump_cfg_entries)
;;     2301F7D6 (in dump_cfg_entries)
;;     2301F7E2 (in dump_cfg_entries)
;;     2301F7EE (in dump_cfg_entries)
;;     2301F806 (in dump_cfg_entries)
;;     2301F810 (in dump_cfg_entries)
;;     2301F87C (in cfg_start_req_handler)
;;     23021F88 (in helper_record_dump)
;;     23021F96 (in helper_record_dump)
;;     23021FB2 (in helper_record_dump)
;;     23021FCC (in helper_record_dump)
;;     23021FE8 (in helper_record_dump)
;;     23022008 (in helper_record_dump)
;;     230221CC (in ipc_host_init)
;;     230224AA (in bl_main_if_remove)
;;     230224C4 (in bl_main_if_remove)
;;     23022538 (in bl_main_if_add)
;;     23022560 (in bl_main_if_add)
;;     2302257C (in bl_main_if_add)
;;     230225C2 (in bl_main_if_add)
;;     23022610 (in bl_main_apm_start)
;;     23022638 (in bl_main_apm_start)
;;     23022648 (in bl_main_apm_start)
;;     23022658 (in bl_main_apm_start)
;;     23022668 (in bl_main_apm_start)
;;     23022678 (in bl_main_apm_start)
;;     230226AE (in bl_main_apm_stop)
;;     230226CA (in bl_main_apm_stop)
;;     23022798 (in bl_main_apm_sta_delete)
;;     23022984 (in bl_main_rtthread_start)
;;     230229F0 (in bl_main_rtthread_start)
;;     23022A00 (in bl_main_rtthread_start)
;;     23022A10 (in bl_main_rtthread_start)
;;     23022A20 (in bl_main_rtthread_start)
;;     23022A30 (in bl_main_rtthread_start)
;;     23022A40 (in bl_main_rtthread_start)
;;     23022B92 (in bl_handle_dynparams)
;;     23022C30 (in bl_send_msg)
;;     23022C6A (in bl_send_msg)
;;     23022CCA (in bl_send_msg)
;;     23022D5E (in bl_msg_zalloc.constprop.3)
;;     23022DF0 (in bl_msg_update_channel_cfg)
;;     23022F8A (in bl_send_me_config_req)
;;     23023520 (in bl_send_sm_connect_req)
;;     23023A12 (in bl_rx_apm_sta_del_ind)
;;     23023A22 (in bl_rx_apm_sta_del_ind)
;;     23023A60 (in bl_rx_apm_sta_del_ind)
;;     23023A7E (in bl_rx_apm_sta_add_ind)
;;     23023A8C (in bl_rx_apm_sta_add_ind)
;;     23023AB0 (in bl_rx_apm_sta_add_ind)
;;     23023AC0 (in bl_rx_apm_sta_add_ind)
;;     23023AD0 (in bl_rx_apm_sta_add_ind)
;;     23023B54 (in bl_rx_apm_sta_add_ind)
;;     23023C46 (in bl_rx_sm_connect_ind)
;;     23023C58 (in bl_rx_sm_connect_ind)
;;     23023C6A (in bl_rx_sm_connect_ind)
;;     23023C8E (in bl_rx_sm_connect_ind)
;;     23023C9E (in bl_rx_sm_connect_ind)
;;     23023CAE (in bl_rx_sm_connect_ind)
;;     23023CBE (in bl_rx_sm_connect_ind)
;;     23023CCE (in bl_rx_sm_connect_ind)
;;     23023CDE (in bl_rx_sm_connect_ind)
;;     23023CEE (in bl_rx_sm_connect_ind)
;;     23023CFE (in bl_rx_sm_connect_ind)
;;     23023D0E (in bl_rx_sm_connect_ind)
;;     23023D1E (in bl_rx_sm_connect_ind)
;;     23023D2E (in bl_rx_sm_connect_ind)
;;     23023D3E (in bl_rx_sm_connect_ind)
;;     23023D4E (in bl_rx_sm_connect_ind)
;;     23023D5E (in bl_rx_sm_connect_ind)
;;     23023E4C (in bl_rx_sm_connect_ind)
;;     23023E7A (in bl_rx_sm_disconnect_ind)
;;     23023E8A (in bl_rx_sm_disconnect_ind)
;;     23023E9E (in bl_rx_sm_disconnect_ind)
;;     230241A2 (in bl_rx_scanu_result_ind)
;;     230241D6 (in bl_rx_scanu_result_ind)
;;     2302433E (in bl_tx_push)
;;     23024502 (in bl_output)
;;     23024558 (in bl_output)
;;     23024614 (in bl_output)
;;     2302466E (in bl_output)
;;     230247B8 (in tcpip_stack_input)
;;     230247DE (in tcpip_stack_input)
;;     230248C6 (in tcpip_stack_input)
;;     23024A48 (in tcpip_stack_input)
;;     23024A92 (in tcpip_stack_input)
;;     23024BAA (in bl_utils_dump)
;;     23024BC0 (in bl_utils_dump)
;;     23024BD8 (in bl_utils_dump)
;;     23024C14 (in bl_utils_dump)
;;     23024C58 (in printErrMsg)
;;     23024C66 (in stateSnifferExit)
;;     23024C74 (in stateSnifferAction)
;;     23024DB2 (in stateConnectedIPNoAction_ipgot)
;;     23024DCA (in stateConnectedIPNoAction_ipgot)
;;     23024DD8 (in stateGlobalEnter)
;;     23024DE4 (in stateGlobalAction)
;;     23024DF6 (in stateConnectingEnter)
;;     23024E92 (in stateConnectedIPNoExit)
;;     23024EC6 (in stateDisconnect_action_idle)
;;     23024ED2 (in stateDisconnect_action_idle)
;;     23024EFE (in stateDisconnect_action_reconnect)
;;     23024F0A (in stateDisconnect_action_reconnect)
;;     23024F1C (in stateDisconnect_action_reconnect)
;;     23024F4C (in stateDisconnect_action_reconnect)
;;     23024F5A (in stateDisconnect_action_reconnect)
;;     23024F82 (in stateDisconnect_action_reconnect)
;;     23024F90 (in stateDisconnect_action_reconnect)
;;     23024FB8 (in stateDisconnect_action_reconnect)
;;     23024FDC (in stateDisconnect_action_reconnect)
;;     2302506C (in ip_obtaining_timeout)
;;     23025094 (in stateConnectedIPNoEnter)
;;     23025102 (in stateConnectedIPNoEnter)
;;     23025164 (in stateConnectedIPNoEnter)
;;     230251C8 (in stateConnectedIPYesGuard_rcconfig)
;;     2302520E (in stateIdleAction_connect)
;;     23025220 (in stateIdleAction_connect)
;;     23025250 (in stateIdleAction_connect)
;;     2302525E (in stateIdleAction_connect)
;;     23025286 (in stateIdleAction_connect)
;;     23025294 (in stateIdleAction_connect)
;;     230252BC (in stateIdleAction_connect)
;;     230252CC (in stateIdleAction_connect)
;;     230252E4 (in stateIdleAction_connect)
;;     23025308 (in stateIdleAction_connect)
;;     23025322 (in stateIdleAction_connect)
;;     23025342 (in stateIdleAction_connect)
;;     230254BC (in stateGlobalGuard_fw_powersaving)
;;     23025520 (in stateGlobalGuard_conf_max_sta)
;;     23025576 (in stateGlobalGuard_AP)
;;     230255BC (in stateGlobalGuard_AP)
;;     230255CE (in stateGlobalGuard_AP)
;;     230255FE (in stateGlobalGuard_AP)
;;     2302589A (in stateDisconnect_exit)
;;     230258AC (in stateDisconnect_exit)
;;     230258EE (in stateDisconnect_exit)
;;     23025918 (in disconnect_retry)
;;     23025924 (in disconnect_retry)
;;     23025948 (in stateGlobalGuard_fw_disconnect)
;;     2302596E (in stateConnectedIPYes_exit)
;;     23025A70 (in stateIdleGuard_connect)
;;     23025A9A (in stateIfaceDownGuard_phyup)
;;     23025B50 (in stateGlobalGuard_stop)
;;     23025B68 (in stateGlobalGuard_stop)
;;     23025B78 (in stateGlobalGuard_stop)
;;     23025B8C (in stateGlobalGuard_stop)
;;     23025BAA (in stateGlobalGuard_stop)
;;     23025BF4 (in stateGlobalGuard_enable_autoreconnect)
;;     23025C48 (in stateGlobalGuard_disable_autoreconnect)
;;     23025C54 (in stateGlobalGuard_disable_autoreconnect)
;;     23025C74 (in stateGlobalGuard_disable_autoreconnect)
;;     23025CA6 (in stateDisconnect_enter)
;;     23025CE0 (in stateDisconnect_enter)
;;     23025D42 (in stateDisconnect_enter)
;;     23025D68 (in stateDisconnect_enter)
;;     23025DC0 (in stateGlobalGuard_fw_scan)
;;     23025E06 (in stateGlobalGuard_fw_scan)
;;     23025E1E (in stateGlobalGuard_fw_scan)
;;     23025E44 (in stateGlobalExit)
;;     23025E52 (in stateSnifferEnter)
;;     23025E6E (in stateConnectingAction_connected)
;;     23025E7C (in stateConnectingAction_disconnect)
;;     23025E8A (in stateConnectingExit)
;;     23025E98 (in stateIdleAction_sniffer)
;;     23025EA6 (in stateIdleEnter)
;;     23025EB4 (in stateIdleExit)
;;     23025EC2 (in stateIfaceDownAction_phyup)
;;     23025ED0 (in stateIfaceDownEnter)
;;     23025EDE (in stateIfaceDownExit)
;;     23025EFA (in stateConnectedIPNoAction_disconnect)
;;     23025F16 (in stateConnectedIPYes_action)
;;     23025F2A (in stateConnectedIPYes_enter)
;;     23025F50 (in stateConnectedIPYes_enter)
;;     2302608C (in wifi_mgmr_event_notify)
;;     230260A4 (in wifi_mgmr_event_notify)
;;     23026126 (in wifi_mgmr_start)
;;     2302653C (in wifi_mgmr_api_connect)
;;     23027256 (in cmd_wifi_state_get)
;;     2302730A (in wifi_sta_get_state_cmd)
;;     2302731A (in wifi_sta_get_state_cmd)
;;     23027468 (in wifi_edca_dump_cmd)
;;     230274A0 (in wifi_edca_dump_cmd)
;;     230274D8 (in wifi_edca_dump_cmd)
;;     23027510 (in wifi_edca_dump_cmd)
;;     2302754C (in wifi_ap_sta_list_get_cmd)
;;     23027592 (in wifi_ap_sta_list_get_cmd)
;;     2302759E (in wifi_ap_sta_list_get_cmd)
;;     230275AA (in wifi_ap_sta_list_get_cmd)
;;     230275B6 (in wifi_ap_sta_list_get_cmd)
;;     23027640 (in wifi_ap_sta_list_get_cmd)
;;     2302766C (in wifi_ap_sta_delete_cmd)
;;     2302769A (in wifi_ap_sta_delete_cmd)
;;     230276D6 (in wifi_ap_sta_delete_cmd)
;;     230276E4 (in wifi_ap_sta_delete_cmd)
;;     230277A6 (in wifi_ap_sta_delete_cmd)
;;     23027870 (in cmd_wifi_cfg)
;;     23027894 (in cmd_wifi_cfg)
;;     23027930 (in cmd_wifi_cfg)
;;     23027972 (in cmd_wifi_cfg)
;;     23027988 (in cmd_wifi_cfg)
;;     230279AA (in cmd_wifi_cfg)
;;     230279CC (in cmd_wifi_cfg)
;;     230279F4 (in cmd_wifi_ap_stop)
;;     23027B2E (in wifi_sta_ip_info)
;;     23027B42 (in wifi_sta_ip_info)
;;     23027B56 (in wifi_sta_ip_info)
;;     23027B6A (in wifi_sta_ip_info)
;;     23027B7E (in wifi_sta_ip_info)
;;     23027B92 (in wifi_sta_ip_info)
;;     23027BC6 (in wifi_sta_ip_info)
;;     23027BF4 (in wifi_sta_ip_info)
;;     23027C22 (in wifi_sta_ip_info)
;;     23027D12 (in cmd_wifi_ap_conf_max_sta)
;;     23027D2E (in cmd_wifi_ap_conf_max_sta)
;;     23027D66 (in wifi_rc_fixed_enable)
;;     23027DBA (in wifi_rc_fixed_enable)
;;     23027DF2 (in wifi_rc_fixed_enable)
;;     23027E32 (in wifi_connect_cmd)
;;     23027FAE (in wifi_capcode_cmd)
;;     23027FE4 (in wifi_capcode_cmd)
;;     23028028 (in wifi_mgmr_cli_scanlist)
;;     2302803E (in wifi_mgmr_cli_scanlist)
;;     230280D4 (in wifi_mgmr_cli_scanlist)
;;     230280EA (in wifi_mgmr_cli_scanlist)
;;     23028114 (in wifi_mgmr_cli_scanlist)
;;     230281D8 (in wifi_mgmr_sta_enable)
;;     230281FE (in wifi_mgmr_sta_enable)
;;     230286A4 (in wifi_mgmr_scan_complete_callback)
;;     2302873C (in wifi_mgmr_profile_add)
;;     23028838 (in wifi_mgmr_profile_get)
;;     23028956 (in cb_probe_resp_ind)
;;     230289A4 (in cb_disconnect_ind)
;;     23028B0A (in cb_event_ind)
;;     23028D38 (in cmd_mgr_llind)
;;     2302916A (in netif_status_callback)
;;     23029180 (in netif_status_callback)
;;     23029196 (in netif_status_callback)
;;     230291B0 (in netif_status_callback)
;;     23029232 (in wifi_tx)
;;     230292BE (in bl606a0_wifi_init)
;;     230292F2 (in bl606a0_wifi_init)
;;     23029304 (in bl606a0_wifi_init)
;;     23029BCC (in utilfdt_print_data)
;;     23029BE0 (in utilfdt_print_data)
;;     23029BF6 (in utilfdt_print_data)
;;     23029C0A (in utilfdt_print_data)
;;     23029C4C (in utilfdt_print_data)
;;     23029C6A (in utilfdt_print_data)
;;     23029C82 (in utilfdt_print_data)
;;     23029CBA (in utilfdt_print_data)
;;     23029D48 (in tc_blfdtdump)
;;     23029DB4 (in tc_blfdtdump)
;;     23029DC8 (in tc_blfdtdump)
;;     23029DD8 (in tc_blfdtdump)
;;     23029DE6 (in tc_blfdtdump)
;;     23029DF4 (in tc_blfdtdump)
;;     23029E02 (in tc_blfdtdump)
;;     23029E10 (in tc_blfdtdump)
;;     23029E24 (in tc_blfdtdump)
;;     23029E3E (in tc_blfdtdump)
;;     23029E58 (in tc_blfdtdump)
;;     23029E72 (in tc_blfdtdump)
;;     23029E7E (in tc_blfdtdump)
;;     23029EBC (in tc_blfdtdump)
;;     23029F3A (in tc_blfdtdump)
;;     23029F78 (in tc_blfdtdump)
;;     23029FC6 (in tc_blfdtdump)
;;     23029FFE (in tc_blfdtdump)
;;     2302A036 (in tc_blfdtdump)
;;     2302A096 (in tc_blfdtdump)
;;     2302A0E0 (in tc_blfdtdump)
;;     2302A0F0 (in tc_blfdtdump)
;;     2302A104 (in tc_blfdtdump)
;;     2302A120 (in tc_blfdtdump)
;;     2302A9DA (in tc_fdt_wifi)
;;     2302AE50 (in ota_tcp_cmd.part.0)
;;     2302AEA6 (in ota_tcp_cmd.part.0)
;;     2302AEB4 (in ota_tcp_cmd.part.0)
;;     2302AECA (in ota_tcp_cmd.part.0)
;;     2302AEFE (in ota_tcp_cmd.part.0)
;;     2302AF10 (in ota_tcp_cmd.part.0)
;;     2302AF1E (in ota_tcp_cmd.part.0)
;;     2302AF30 (in ota_tcp_cmd.part.0)
;;     2302AF3E (in ota_tcp_cmd.part.0)
;;     2302AF56 (in ota_tcp_cmd.part.0)
;;     2302AFB8 (in ota_tcp_cmd.part.0)
;;     2302AFDE (in ota_tcp_cmd.part.0)
;;     2302AFF0 (in ota_tcp_cmd.part.0)
;;     2302B010 (in ota_tcp_cmd.part.0)
;;     2302B08A (in ota_tcp_cmd.part.0)
;;     2302B116 (in ota_tcp_cmd.part.0)
;;     2302B154 (in ota_tcp_cmd.part.0)
;;     2302B17A (in ota_tcp_cmd.part.0)
;;     2302B190 (in ota_tcp_cmd.part.0)
;;     2302B1DA (in ota_tcp_cmd.part.0)
;;     2302B202 (in ota_tcp_cmd.part.0)
;;     2302B228 (in ota_tcp_cmd.part.0)
;;     2302B236 (in ota_tcp_cmd.part.0)
;;     2302B246 (in ota_tcp_cmd.part.0)
;;     2302B258 (in ota_tcp_cmd.part.0)
;;     2302B274 (in ota_tcp_cmd)
;;     2302B408 (in cb_idnoe)
;;     2302B414 (in cb_idnoe)
;;     2302B460 (in cb_idnoe)
;;     2302B4C0 (in cat_cmd)
;;     2302B4F0 (in cat_cmd)
;;     2302B500 (in cat_cmd)
;;     2302B516 (in cat_cmd)
;;     2302B53A (in hexdump_cmd)
;;     2302B556 (in hexdump_cmd)
;;     2302B586 (in hexdump_cmd)
;;     2302B798 (in proc_onecmd)
;;     2302B8E6 (in ls_cmd)
;;     2302B8F2 (in ls_cmd)
;;     2302B93E (in ls_cmd)
;;     2302B970 (in ls_cmd)
;;     2302B9AC (in ls_cmd)
;;     2302B9B8 (in ls_cmd)
;;     2302BA5A (in ls_cmd)
;;     2302C1FA (in cli_main_input)
;;     2302C2B2 (in cli_main_input)
;;     2302C30A (in cli_main_input)
;;     2302C3D8 (in cli_main_input)
;;     2302C456 (in cli_main_input)
;;     2302C566 (in cli_main_input)
;;     2302C852 (in console_cb_read)
;;     2302E3CE (in ef_port_init)
;;     2302E610 (in psm_unset_cmd)
;;     2302E634 (in psm_set_cmd)
;;     230339D8 (in bl_irq_exception_trigger)
;;     23033C1A (in interrupt_entry)
;;     23033C82 (in exception_entry)
;;     23033C94 (in exception_entry)
;;     23038E66 (in bl_tsen_adc_get)
;;     23039CBE (in cmd_looprt_test)
;;     23039CCC (in cmd_looprt_test)
;;     23039FB0 (in _led_bloop_evt)
;;     2303BCFE (in tcpip_inpkt)
;;     2303BD34 (in tcpip_inpkt)
;;     230412C2 (in stats_netstat)
;;     23041326 (in stats_netstat)
;;     2304134E (in stats_netstat)
;;     2304136C (in stats_netstat)
;;     23041388 (in stats_netstat)
;;     230413A2 (in stats_netstat)
;;     230413BE (in stats_netstat)
;;     230414AA (in tcp_init)
;;     23047D1C (in dhcp_server_stop)
;;     23047DB0 (in dhcpd_start)
;;     23047E00 (in dhcpd_start)
;;     23047E20 (in dhcpd_start)
;;     23047E76 (in tcpc_entry)
;;     23047E92 (in tcpc_entry)
;;     23047ED6 (in tcpc_entry)
;;     23047F1A (in tcpc_entry)
;;     23047F38 (in tcpc_entry)
;;     23047F9A (in tcpc_entry)
;;     23047FAC (in tcpc_entry)
;;     23047FDE (in tcpc_entry)
;;     23048004 (in tcpclient_cmd)
;;     2304802C (in tcpclient_cmd)
;;     230480F4 (in TCP_Server)
;;     23048124 (in TCP_Server)
;;     23048162 (in TCP_Server)
;;     230481B8 (in TCP_Server)
;;     230481C4 (in TCP_Server)
;;     230482BC (in TCP_Server)
;;     23048342 (in TCP_Server)
;;     230483AA (in TCP_Server)
;;     230483D2 (in TCP_Server)
;;     230483E0 (in TCP_Server)
;;     230483FE (in TCP_Server)
;;     2304843E (in TCP_Server)
;;     2304844A (in TCP_Server)
;;     2304845A (in TCP_Server)
;;     2304847A (in TCP_Server)
;;     23048486 (in TCP_Server)
;;     230484C8 (in TCP_Server)
;;     230484E0 (in TCP_Server)
;;     2304850C (in cmd_tcp_server)
;;     23048622 (in iperf_server_udp)
;;     23048656 (in iperf_server_udp)
;;     2304866A (in iperf_server_udp)
;;     23048818 (in iperf_server_udp_recv_fn)
;;     23048930 (in iperf_server_udp_recv_fn)
;;     23048A06 (in iperf_client_udp)
;;     23048A58 (in iperf_client_udp)
;;     23048A6C (in iperf_client_udp)
;;     23048B84 (in iperf_client_udp)
;;     23048BD6 (in iperf_client_udp)
;;     23048C2C (in iperf_server)
;;     23048C7C (in iperf_server)
;;     23048CBE (in iperf_server)
;;     23048D32 (in iperf_server)
;;     23048E28 (in iperf_server)
;;     23048EFA (in iperf_client_tcp)
;;     23048F3C (in iperf_client_tcp)
;;     23048F50 (in iperf_client_tcp)
;;     2304903A (in iperf_client_tcp)
;;     2304906A (in iperf_client_tcp)
;;     23049082 (in ipus_test_cmd)
;;     230490A8 (in ipus_test_cmd)
;;     230490BE (in ipu_test_cmd)
;;     230490E4 (in ipu_test_cmd)
;;     230490FA (in ipc_test_cmd)
;;     23049120 (in ipc_test_cmd)
;;     2304915C (in ips_test_cmd)
;;     23049186 (in ping_usage)
;;     230491D0 (in ping_free)
;;     23049374 (in ping_timeout)
;;     2304945A (in ping_recv)
;;     230494E2 (in ping_api_init)
;;     23049534 (in ping_api_init)
;;     23049540 (in ping_api_init)
;;     2304961E (in ping_cmd)
;;     23049664 (in ping_cmd)
;;     230496DC (in ping_cmd)
;;     23049A56 (in romfs_lseek)
;;     23049A78 (in romfs_lseek)
;;     23049A92 (in romfs_lseek)
;;     23049AAE (in romfs_lseek)
;;     2304A316 (in cmd_sntp_date)
;;     2304A356 (in cmd_sntp_date)
;;     2304A37C (in cmd_sntp_time)
;;     2304A3EC (in sntp_recv)
;;     2304A42E (in sntp_recv)
;;     2304A452 (in sntp_recv)
;;     2304A482 (in sntp_recv)
;;     2304A4E6 (in sntp_recv)
;;     2304A6A2 (in sntp_init)
;;     2304BA0A (in utils_hexdump)
;;     2304BA1E (in utils_hexdump)
;;     2304BA4E (in utils_hexdump)
;;     2304BD2C (in utils_getopt)
;;     2304CDBC (in aos_loop_init)
;;     2304CE22 (in aos_poll_read_fd)
;;     2304CFD4 (in aos_loop_run)
;;     2304EB7A (in countdown_sec)
;;     23050506 (in iot_tls_connect)
;;     23050542 (in iot_tls_connect)
;;     23050594 (in iot_tls_connect)
;;     230505B0 (in iot_tls_connect)
;;     230505C0 (in iot_tls_connect)
;;     230505E6 (in iot_tls_connect)
;;     23050600 (in iot_tls_connect)
;;     2305061A (in iot_tls_connect)
;;     2305062A (in iot_tls_connect)
;;     23050660 (in iot_tls_connect)
;;     2305067E (in iot_tls_connect)
;;     2305068E (in iot_tls_connect)
;;     230506B8 (in iot_tls_connect)
;;     230506DC (in iot_tls_connect)
;;     230506FE (in iot_tls_connect)
;;     2305072E (in iot_tls_connect)
;;     2305073A (in iot_tls_connect)
;;     23050746 (in iot_tls_connect)
;;     2305082A (in iot_tls_connect)
;;     2305084C (in iot_tls_connect)
;;     2305085A (in iot_tls_connect)
;;     23050866 (in iot_tls_connect)
;;     23050894 (in iot_tls_connect)
;;     230508AC (in iot_tls_connect)
;;     230508B8 (in iot_tls_connect)
;;     230508D8 (in iot_tls_connect)
;;     230508FC (in iot_tls_connect)
;;     23050912 (in iot_tls_connect)
;;     2305093A (in iot_tls_connect)
;;     2305095A (in iot_tls_connect)
;;     23050972 (in iot_tls_connect)
;;     23050980 (in iot_tls_connect)
;;     2305098A (in iot_tls_connect)
;;     230509B6 (in _iot_tls_verify_cert)
;;     230509D8 (in _iot_tls_verify_cert)
;;     230509E8 (in _iot_tls_verify_cert)
;;     23050A08 (in _iot_tls_verify_cert)
;;     23050A86 (in iot_tls_write)
;;     230548B2 (in mfg_efuse_read_xtal_capcode)
;;     230548DE (in mfg_efuse_read_xtal_capcode)
;;     23054986 (in mfg_efuse_read_poweroffset)
;;     230549B2 (in mfg_efuse_read_poweroffset)
;;     23054B60 (in mfg_efuse_read_macaddr)
;;     23054B8C (in mfg_efuse_read_macaddr)
;;     23054BDA (in mfg_flash_read)
;;     23054C14 (in mfg_flash_read)
;;     23054E06 (in mfg_flash_read_macaddr)
;;     23055012 (in bl_mtd_open)
;;     23055020 (in bl_mtd_open)
;;     23055044 (in bl_mtd_open)
;;     23055052 (in bl_mtd_open)
;;     2305507C (in bl_mtd_open)
;;     2305508A (in bl_mtd_open)
;;     230550AE (in bl_mtd_open)
;;     230550BC (in bl_mtd_open)
;;     230550E4 (in bl_mtd_open)
;;     230550F2 (in bl_mtd_open)
;;     23055102 (in bl_mtd_open)
;;     23055114 (in bl_mtd_open)
;;     23055122 (in bl_mtd_open)
;;     230552B8 (in bloop_init)
;;     2305540C (in bloop_evt_set_async)
;;     2305546A (in bloop_evt_set_sync)
;;     230554A6 (in bloop_evt_unset_sync)
;;     2305555A (in bloop_run)
;;     2305561C (in bloop_run)
;;     2305577E (in bloop_status_dump)
;;     2305578C (in bloop_status_dump)
;;     230557C8 (in bloop_status_dump)
;;     230557FE (in bloop_status_dump)
;;     2305581C (in bloop_status_dump)
;;     23055828 (in bloop_status_dump)
;;     23055832 (in bloop_status_dump)
;;     2305583E (in bloop_status_dump)
;;     23055854 (in bloop_status_dump)
;;     23055898 (in bloop_status_dump)
;;     230558C6 (in loop_evt_entity_sys_handler)
;;     230558EE (in loop_evt_entity_sys_evt)
;;     2305592A (in loop_evt_entity_sys_evt)
;;     23056C3A (in mbedtls_pk_load_file)
;;     23056C7A (in mbedtls_pk_load_file)
;;     23056CAE (in mbedtls_pk_load_file)
;;     23056CD2 (in mbedtls_pk_load_file)
;;     2305F3D8 (in mbedtls_net_connect)
;;     2305F48E (in mbedtls_net_recv)
;;     2305F4DA (in mbedtls_net_recv)
;;     2305F4FE (in mbedtls_net_recv)
;;     2305F55C (in mbedtls_net_send)
;;     2305F586 (in mbedtls_net_send)
printf proc
	c.addi16sp	FFFFFFC0
	c.swsp	a5,00000098
	lui	a5,0004200E
	lbu	a5,a5,-000006B6
	c.swsp	ra,0000008C
	c.swsp	a1,00000090
	c.swsp	a2,00000014
	c.swsp	a3,00000094
	c.swsp	a4,00000018
	c.swsp	a6,0000001C
	c.swsp	a7,0000009C
	andi	a5,a5,+000000FF
	c.beqz	a5,0000000023052140

l23052138:
	c.addi4spn	a1,00000024
	c.swsp	a1,00000084
	jal	ra,0000000023052080

l23052140:
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000040
	c.jr	ra

;; sprintf: 23052148
;;   Called from:
;;     230310EC (in vTaskList)
;;     23047DEA (in dhcpd_start)
;;     23047E0E (in dhcpd_start)
;;     2304B812 (in log_buf_out)
;;     2304B880 (in log_buf_out)
;;     2304B8C0 (in log_buf_out)
sprintf proc
	c.addi16sp	FFFFFFC0
	c.swsp	a2,00000014
	c.swsp	a3,00000094
	c.mv	a2,a1
	c.addi4spn	a3,00000028
	c.li	a1,FFFFFFFF
	c.swsp	ra,0000008C
	c.swsp	a4,00000018
	c.swsp	a5,00000098
	c.swsp	a6,0000001C
	c.swsp	a7,0000009C
	c.swsp	a3,00000084
	jal	ra,0000000023051BA2
	c.lwsp	t3,00000020
	c.addi16sp	00000040
	c.jr	ra

;; snprintf: 2305216A
;;   Called from:
;;     23027A3C (in cmd_wifi_ap_start)
;;     2302B91A (in ls_cmd)
;;     2302B9F0 (in ls_cmd)
;;     2302BA36 (in ls_cmd)
;;     230366C6 (in hal_gpio_init_from_dts)
;;     230398B2 (in httpc_create_request_string.constprop.6)
;;     230398D4 (in httpc_create_request_string.constprop.6)
;;     2303992A (in httpc_create_request_string.constprop.6)
;;     23039956 (in httpc_create_request_string.constprop.6)
;;     23047F76 (in tcpc_entry)
;;     2304805A (in tcpclient_cmd)
;;     23048922 (in iperf_server_udp_recv_fn)
;;     23048B7A (in iperf_client_udp)
;;     23048E1A (in iperf_server)
;;     23049030 (in iperf_client_tcp)
;;     2304D8E8 (in aws_iot_shadow_connect)
;;     2304D8FE (in aws_iot_shadow_connect)
;;     2304D954 (in aws_iot_shadow_connect)
;;     2304DB20 (in convertDataToString)
;;     2304DB9A (in convertDataToString)
;;     2304DC3E (in aws_iot_shadow_init_json_document)
;;     2304DCCE (in aws_iot_shadow_add_reported)
;;     2304DCFE (in aws_iot_shadow_add_reported)
;;     2304DD3E (in aws_iot_shadow_add_reported)
;;     2304DD96 (in FillWithClientTokenSize)
;;     2304DDEA (in aws_iot_finalize_json_document)
;;     2304DE38 (in aws_iot_finalize_json_document)
;;     2304E2C4 (in topicNameFromThingAndAction)
;;     2304E31C (in topicNameFromThingAndAction)
;;     2304E60E (in registerJsonTokenOnDelta)
;;     2304F3DC (in aws_iot_mqtt_set_connect_params)
;;     230506CC (in iot_tls_connect)
;;     2305DC52 (in mbedtls_x509_crt_info)
;;     2305DC8C (in mbedtls_x509_crt_info)
;;     2305DCAC (in mbedtls_x509_crt_info)
;;     2305DCE2 (in mbedtls_x509_crt_info)
;;     2305DD18 (in mbedtls_x509_crt_info)
;;     2305DD6A (in mbedtls_x509_crt_info)
;;     2305DDA4 (in mbedtls_x509_crt_info)
;;     2305DDC2 (in mbedtls_x509_crt_info)
;;     2305DE2A (in mbedtls_x509_crt_info)
;;     2305DE60 (in mbedtls_x509_crt_info)
;;     2305DE86 (in mbedtls_x509_crt_info)
;;     2305DEAE (in mbedtls_x509_crt_info)
;;     2305DF2A (in mbedtls_x509_crt_info)
;;     2305DF5C (in mbedtls_x509_crt_info)
;;     2305DF86 (in mbedtls_x509_crt_info)
;;     2305DFB0 (in mbedtls_x509_crt_info)
;;     2305DFDA (in mbedtls_x509_crt_info)
;;     2305E004 (in mbedtls_x509_crt_info)
;;     2305E02E (in mbedtls_x509_crt_info)
;;     2305E058 (in mbedtls_x509_crt_info)
;;     2305E084 (in mbedtls_x509_crt_info)
;;     2305E0AC (in mbedtls_x509_crt_info)
;;     2305E0DA (in mbedtls_x509_crt_info)
;;     2305E104 (in mbedtls_x509_crt_info)
;;     2305E12E (in mbedtls_x509_crt_info)
;;     2305E158 (in mbedtls_x509_crt_info)
;;     2305E182 (in mbedtls_x509_crt_info)
;;     2305E1AC (in mbedtls_x509_crt_info)
;;     2305E1D6 (in mbedtls_x509_crt_info)
;;     2305E200 (in mbedtls_x509_crt_info)
;;     2305E22C (in mbedtls_x509_crt_info)
;;     2305E256 (in mbedtls_x509_crt_info)
;;     2305E2A0 (in mbedtls_x509_crt_info)
;;     2305E2C6 (in mbedtls_x509_crt_info)
;;     2305E338 (in mbedtls_x509_crt_verify_info)
;;     2305E360 (in mbedtls_x509_crt_verify_info)
;;     23062E96 (in mbedtls_debug_print_mpi.part.1)
;;     23062ECE (in mbedtls_debug_print_mpi.part.1)
;;     23062EE6 (in mbedtls_debug_print_mpi.part.1)
;;     23062F82 (in mbedtls_debug_print_mpi.part.1)
;;     23062FB8 (in mbedtls_debug_print_mpi.part.1)
;;     230630B2 (in mbedtls_debug_print_ret)
;;     23063148 (in mbedtls_debug_print_buf)
;;     230631B0 (in mbedtls_debug_print_buf)
;;     2306321E (in mbedtls_debug_print_buf)
;;     23063250 (in mbedtls_debug_print_buf)
;;     23063270 (in mbedtls_debug_print_buf)
;;     2306329C (in mbedtls_debug_print_buf)
;;     23063306 (in mbedtls_debug_print_ecp.part.2)
;;     2306332A (in mbedtls_debug_print_ecp.part.2)
;;     230633F0 (in mbedtls_debug_print_crt)
;;     230634F8 (in mbedtls_debug_print_crt)
;;     2306C3C8 (in mbedtls_x509_dn_gets)
;;     2306C422 (in mbedtls_x509_dn_gets)
;;     2306C45A (in mbedtls_x509_dn_gets)
;;     2306C478 (in mbedtls_x509_dn_gets)
;;     2306C514 (in mbedtls_x509_serial_gets)
;;     2306C550 (in mbedtls_x509_serial_gets)
;;     2306C5AA (in mbedtls_x509_sig_alg_gets)
;;     2306C5D4 (in mbedtls_x509_sig_alg_gets)
;;     2306C5EC (in mbedtls_x509_key_size_helper)
snprintf proc
	c.addi16sp	FFFFFFC0
	c.swsp	a3,00000094
	c.addi4spn	a3,0000002C
	c.swsp	ra,0000008C
	c.swsp	a4,00000018
	c.swsp	a5,00000098
	c.swsp	a6,0000001C
	c.swsp	a7,0000009C
	c.swsp	a3,00000084
	jal	ra,0000000023051BA2
	c.lwsp	t3,00000020
	c.addi16sp	00000040
	c.jr	ra

;; sscanf: 23052186
;;   Called from:
;;     2304F022 (in parseUnsignedInteger32Value)
;;     2304F06C (in parseUnsignedInteger16Value)
;;     2304F0CC (in parseUnsignedInteger8Value)
;;     2304F108 (in parseInteger32Value)
;;     2304F15C (in parseInteger16Value)
;;     2304F1AE (in parseInteger8Value)
;;     2304F1EE (in parseFloatValue)
;;     2304F22E (in parseDoubleValue)
sscanf proc
	c.addi16sp	FFFFFFC0
	c.swsp	a2,00000014
	c.addi4spn	a2,00000028
	c.swsp	ra,0000008C
	c.swsp	a3,00000094
	c.swsp	a4,00000018
	c.swsp	a5,00000098
	c.swsp	a6,0000001C
	c.swsp	a7,0000009C
	c.swsp	a2,00000084
	c.jal	00000000230521B8
	c.lwsp	t3,00000020
	c.addi16sp	00000040
	c.jr	ra

;; set_bit: 230521A2
set_bit proc
	srli	a5,a1,00000005
	c.slli	a5,02
	c.add	a0,a5
	c.li	a5,00000001
	sll	a5,a5,a1
	c.lw	a0,0(a1)
	c.or	a1,a5
	c.sw	a0,0(a1)
	c.jr	ra

;; vsscanf: 230521B8
;;   Called from:
;;     2305219A (in sscanf)
vsscanf proc
	c.addi16sp	FFFFFF70
	lui	a5,00023088
	c.swsp	s6,00000038
	addi	a5,a5,+00000600
	lui	s6,0002308E
	c.swsp	s0,00000044
	c.swsp	s2,00000040
	c.swsp	s3,000000BC
	c.swsp	s4,0000003C
	c.swsp	s5,000000B8
	c.swsp	s8,00000034
	c.swsp	s9,000000B0
	c.swsp	s10,00000030
	c.swsp	s11,000000AC
	c.swsp	ra,000000C4
	c.swsp	s1,000000C0
	c.swsp	s7,000000B4
	c.swsp	a0,00000088
	c.mv	s5,a2
	c.mv	s3,a0
	c.swsp	zero,00000008
	c.swsp	zero,00000084
	c.li	s10,00000000
	c.li	s11,00000000
	c.li	s9,00000000
	c.li	s0,00000000
	c.li	s8,00000000
	c.li	s4,FFFFFFFF
	c.li	s2,00000000
	c.swsp	a5,0000000C
	addi	s6,s6,-00000393

l230521FE:
	lbu	s1,a1,+00000000
	addi	s7,a1,+00000001
	c.beqz	s1,000000002305220C

l23052208:
	beq	s11,zero,0000000023052238

l2305220C:
	c.li	a4,00000001
	bne	s11,a4,0000000023052218

l23052212:
	bne	s10,zero,0000000023052218

l23052216:
	c.li	s10,FFFFFFFF

l23052218:
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.mv	a0,s10
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
	c.addi16sp	00000090
	c.jr	ra

l23052238:
	c.li	a3,00000006
	bltu	a3,s0,000000002305226E

l2305223E:
	c.lwsp	s8,000000E4
	slli	a3,s0,00000002
	c.add	a3,a5
	c.lw	a3,0(a3)
	c.jr	a3
2305224A                               93 07 50 02 63 83           ..P.c.
23052250 F4 3A B3 87 64 01 03 C4 07 00 21 88 09 CC 83 C7 .:..d.....!.....
23052260 09 00 DA 97 03 C4 07 00 21 88 01 E4 81 4D       ........!....M 

l2305226E:
	c.mv	a1,s7
	c.j	00000000230521FE
23052272       85 09 ED B7 83 C6 09 00 89 4D E3 99 96 FE   .........M....
23052280 85 09 ED B7 93 06 A0 02 63 8E D4 00 63 E9 D4 00 ........c...c...
23052290 93 84 04 FD 13 F6 F4 0F A5 46 63 F8 C6 00 AE 8B .........Fc.....
230522A0 0D 44 F1 B7 13 6C 1C 00 D9 B7 26 8A 13 6C 4C 00 .D...l....&..lL.
230522B0 09 44 75 BF 93 86 04 FD 93 F6 F6 0F 25 46 E3 60 .Du.........%F.`
230522C0 D6 FE A9 46 33 0A DA 02 13 0A 0A FD 26 9A 45 B7 ...F3.......&.E.
230522D0 93 06 C0 06 63 8F D4 02 63 E0 96 02 93 06 80 06 ....c...c.......
230522E0 63 87 D4 02 93 06 A0 06 63 86 D4 00 93 06 C0 04 c.......c.......
230522F0 63 93 D4 02 09 49 A5 BF 93 06 40 07 63 82 D4 30 c....I....@.c..0
23052300 93 06 A0 07 63 8E D4 2E 93 06 10 07 D5 B7 7D 19 ....c.........}.
23052310 B9 BF 05 09 A9 BF 89 46 63 D3 26 01 09 49 F9 56 .......Fc.&..I.V
23052320 63 53 D9 00 79 59 93 06 90 06 63 81 D4 14 63 EF cS..yY....c...c.
23052330 96 04 93 06 80 05 63 85 D4 14 63 ED 96 00 93 06 ......c...c.....
23052340 50 02 63 80 D4 20 93 06 00 05 63 83 D4 12 01 44 P.c.. ....c....D
23052350 89 4D 31 BF 93 06 30 06 63 88 D4 16 93 06 40 06 .M1...0.c.....@.
23052360 63 8E D4 10 93 06 B0 05 E3 93 D4 FE 93 76 1C 00 c............v..
23052370 81 4C 81 E6 83 AC 0A 00 91 0A 13 06 00 02 81 45 .L.............E
23052380 08 18 EF E0 71 33 11 44 02 C6 D5 B5 93 06 00 07 ....q3.D........
23052390 63 80 D4 0E 63 E2 96 04 93 06 E0 06 63 8F D4 08 c...c.......c...
230523A0 93 06 F0 06 21 46 E3 94 D4 FA 03 C4 09 00 B3 06 ....!F..........
230523B0 64 01 83 C6 06 00 A1 8A F1 E6 63 08 04 20 D2 86 d.........c.. ..
230523C0 6C 10 4E 85 91 2C 32 56 E3 03 36 F9 93 76 1C 00 l.N..,2V..6..v..
230523D0 B2 89 AD EA 05 0D BD A0 93 06 50 07 63 80 D4 0A ..........P.c...
230523E0 93 06 80 07 63 8E D4 08 93 06 30 07 E3 91 D4 F6 ....c.....0.....
230523F0 93 76 1C 00 7D 1A FD 55 63 92 06 12 83 AC 0A 00 .v..}..Uc.......
23052400 93 85 4A 00 85 47 E6 86 7D 53 63 0E 6A 00 83 C7 ..J..G..}Sc.j...
23052410 09 00 91 CB 33 86 67 01 03 46 06 00 13 05 FA FF ....3.g..F......
23052420 21 8A 63 0A 06 10 63 85 96 01 23 80 06 00 05 0D !.c...c...#.....
23052430 AE 8A 01 44 93 BD 17 00 1D BD D2 47 33 85 F9 40 ...D.......G3..@
23052440 93 55 F5 41 93 76 1C 00 01 44 E3 92 06 E2 63 02 .U.A.v...D....c.
23052450 09 06 63 4B 20 03 F9 56 63 07 D9 04 FD 56 E3 18 ..cK ..Vc....V..
23052460 D9 E0 83 A6 0A 00 23 90 A6 00 91 A0 01 46 35 BF ......#......F5.
23052470 37 09 00 80 01 46 13 49 F9 FF 05 BF 29 46 35 B7 7....F.I....)F5.
23052480 41 46 25 B7 85 09 15 B7 89 46 63 0A D9 02 63 48 AF%......Fc...cH
23052490 D9 00 B7 06 00 80 93 C6 F6 FF E3 1A D9 DC 83 A6 ................
230524A0 0A 00 88 C2 29 A0 83 A6 0A 00 23 80 A6 00 91 0A ....).....#.....
230524B0 7D BB 83 A6 0A 00 91 0A 88 C2 01 44 4D BB 83 A6 }..........DM...
230524C0 0A 00 88 C2 CC C2 E5 B7 93 76 4C 00 91 E2 05 4A .........vL....J
230524D0 93 76 1C 00 7D 1A 99 CA FD 56 E3 00 DA FE 03 C4 .v..}....V......
230524E0 09 00 13 06 FA FF 75 C0 32 8A C5 BF 83 AC 0A 00 ......u.2.......
230524F0 93 86 4A 00 7D 56 63 15 CA 00 05 0D B6 8A 75 BF ..J.}Vc.......u.
23052500 03 C4 09 00 93 05 FA FF 63 0E 04 0E 85 0C 85 09 ........c.......
23052510 A3 8F 8C FE 2E 8A C5 B7 85 09 32 8A E3 0F BA F8 ..........2.....
23052520 03 C4 09 00 5D C0 5A 94 83 46 04 00 13 06 FA FF ....].Z..F......
23052530 A1 8A FD D2 59 B7 85 06 A3 8F F6 FE 85 09 2A 8A ....Y.........*.
23052540 E9 B5 83 C6 09 00 E3 94 96 E0 85 09 BD B7 93 06 ................
23052550 E0 05 63 8B D4 0A A6 85 08 18 EF F0 9F C4 15 44 ..c............D
23052560 39 B3 93 06 D0 05 63 84 D4 02 93 06 D0 02 63 80 9.....c.......c.
23052570 D4 0A A6 85 08 18 EF F0 DF C2 D5 B9 13 06 D0 05 ................
23052580 C2 46 63 9D C4 04 D2 56 09 66 D1 8E 36 DA 4E D6 .Fc....V.f..6.N.
23052590 85 46 63 02 0A 02 83 C6 09 00 91 CE 13 D6 56 00 .Fc...........V.
230525A0 9C 08 0A 06 3E 96 03 26 06 FE B2 47 33 56 D6 00 ....>..&...G3V..
230525B0 05 8A 63 98 C7 02 32 56 63 0C 36 03 63 8A 0C 02 ..c...2Vc.6.c...
230525C0 23 80 0C 00 05 0D E3 94 06 CA 85 4D 4D B1 B6 85 #..........MM...
230525D0 08 18 36 CE EF F0 FF BC F2 46 85 06 E3 C9 96 FE ..6......F......
230525E0 BD BF 63 85 0C 00 23 80 DC 00 85 0C 85 09 55 B7 ..c...#.......U.
230525F0 89 4D D1 BF A2 8D 01 4C 05 44 7D 5A 01 49 85 B9 .M.....L.D}Z.I..
23052600 05 49 B5 B1 B6 8A D1 B7 85 47 3E C6 8D B1 93 07 .I.......G>.....
23052610 D0 02 3E C8 19 44 A1 B9                         ..>..D..       

;; strntoumax: 23052618
strntoumax proc
	lui	a6,0002308E
	c.mv	a5,a0
	addi	a6,a6,-00000393

l23052622:
	beq	a3,zero,0000000023052758

l23052626:
	lbu	a4,a5,+00000000
	add	a0,a4,a6
	lbu	a0,a0,+00000000
	c.andi	a0,00000008
	c.bnez	a0,000000002305268A

l23052636:
	addi	a0,a4,-0000002B
	andi	a0,a0,+000000FD
	c.li	t3,00000000
	c.bnez	a0,000000002305264E

l23052642:
	addi	a4,a4,-0000002D
	sltiu	t3,a4,+00000001
	c.addi	a5,00000001
	c.addi	a3,FFFFFFFF

l2305264E:
	c.bnez	a2,00000000230526AA

l23052650:
	c.li	a4,00000001
	bgeu	a4,a3,0000000023052690

l23052656:
	lbu	a0,a5,+00000000
	addi	a4,zero,+00000030
	c.li	a2,0000000A
	bne	a0,a4,000000002305267A

l23052664:
	lbu	a2,a5,+00000001
	addi	a4,zero,+00000058
	andi	a2,a2,+000000DF
	bne	a2,a4,00000000230526A2

l23052674:
	c.addi	a3,FFFFFFFE
	c.addi	a5,00000002
	c.li	a2,00000010

l2305267A:
	c.add	a3,a5
	c.li	a0,00000000
	c.li	a4,00000000
	c.li	t4,00000009
	c.li	t1,00000019
	srai	t5,a2,0000001F
	c.j	00000000230526FE

l2305268A:
	c.addi	a5,00000001
	c.addi	a3,FFFFFFFF
	c.j	0000000023052622

l23052690:
	c.li	a0,00000000
	c.li	a4,00000000
	c.beqz	a3,0000000023052722

l23052696:
	lbu	a2,a5,+00000000
	addi	a4,zero,+00000030
	bne	a2,a4,000000002305273A

l230526A2:
	c.addi	a3,FFFFFFFF
	c.addi	a5,00000001
	c.li	a2,00000008
	c.j	000000002305267A

l230526AA:
	c.li	a4,00000010
	bne	a2,a4,000000002305267A

l230526B0:
	c.li	a4,00000001
	bgeu	a4,a3,000000002305267A

l230526B6:
	lbu	a0,a5,+00000000
	addi	a4,zero,+00000030
	bne	a0,a4,000000002305267A

l230526C2:
	lbu	a0,a5,+00000001
	addi	a4,zero,+00000058
	andi	a0,a0,+000000DF
	bne	a0,a4,000000002305267A

l230526D2:
	c.addi	a3,FFFFFFFE
	c.addi	a5,00000002
	c.j	000000002305267A

l230526D8:
	add	a7,t5,a0
	c.addi	a5,00000001
	add	a4,a4,a2
	add	t6,a2,a0
	c.add	a7,a4
	srai	a4,a6,0000001F
	sltu	a0,a2,a0
	c.add	a7,a0
	add	a0,a6,t6
	sltu	a6,a0,a6
	c.add	a4,a7
	c.add	a4,a6

l230526FE:
	beq	a5,a3,0000000023052722

l23052702:
	lbu	a7,a5,+00000000
	addi	a6,a7,-00000030
	bgeu	t4,a6,000000002305271A

l2305270E:
	addi	a6,a7,-00000041
	bltu	t1,a6,0000000023052740

l23052716:
	addi	a6,a7,-00000037

l2305271A:
	blt	a6,zero,0000000023052722

l2305271E:
	blt	a6,a2,00000000230526D8

l23052722:
	c.bnez	a1,0000000023052754

l23052724:
	beq	t3,zero,0000000023052736

l23052728:
	sub	a0,zero,a0
	sltu	a5,zero,a0
	sub	a4,zero,a4
	c.sub	a4,a5

l23052736:
	c.mv	a1,a4
	c.jr	ra

l2305273A:
	c.li	a3,00000001
	c.li	a2,0000000A
	c.j	000000002305267A

l23052740:
	addi	a6,a7,-00000061
	bltu	t1,a6,0000000023052722

l23052748:
	addi	a6,a7,-00000057
	c.j	000000002305271A

l2305274E:
	c.mv	t3,a3
	c.li	a0,00000000
	c.li	a4,00000000

l23052754:
	c.sw	a1,0(a5)
	c.j	0000000023052724

l23052758:
	c.li	t3,00000000
	c.bnez	a2,000000002305267A

l2305275C:
	c.bnez	a1,000000002305274E

l2305275E:
	c.li	a0,00000000
	c.li	a4,00000000
	c.j	0000000023052736

;; UART_Init: 23052764
;;   Called from:
;;     230325CC (in bl_uart_init)
;;     23032750 (in bl_uart_setconfig)
UART_Init proc
	lui	a5,0002308E
	c.slli	a0,02
	addi	a5,a5,-00000150
	c.add	a5,a0
	c.lw	a1,0(a4)
	c.lw	a1,4(a0)
	c.li	a3,0000000A
	c.lw	a5,0(a2)
	srl	a5,a4,a0
	add	a4,a4,a3
	srl	a4,a4,a0
	and	a4,a4,a3
	c.li	a3,00000004
	bgeu	a3,a4,0000000023052790

l2305278E:
	c.addi	a5,00000001

l23052790:
	c.addi	a5,FFFFFFFF
	slli	a4,a5,00000010
	c.slli	a5,10
	c.srli	a5,00000010
	c.or	a5,a4
	c.sw	a2,8(a5)
	lbu	a3,a1,+0000000A
	c.lw	a2,0(a4)
	c.lw	a2,4(a5)
	c.li	a0,00000001
	beq	a3,a0,0000000023052832

l230527AC:
	c.beqz	a3,000000002305282C

l230527AE:
	c.li	a0,00000002
	beq	a3,a0,000000002305283C

l230527B4:
	lbu	a3,a1,+00000008
	andi	a4,a4,-00000701
	andi	a5,a5,-00000701
	c.addi	a3,00000004
	c.slli	a3,08
	c.or	a4,a3
	c.or	a5,a3
	c.lui	a3,FFFFD000
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	lbu	a3,a1,+00000009
	lbu	a6,a1,+0000000B
	c.li	a0,00000001
	c.addi	a3,00000001
	c.slli	a3,0C
	c.or	a4,a3
	andi	a3,a4,-00000003
	bne	a6,a0,00000000230527EA

l230527E6:
	ori	a3,a4,+00000002

l230527EA:
	lbu	a0,a1,+0000000C
	c.li	a4,00000001
	bne	a0,a4,000000002305284E

l230527F4:
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	c.or	a5,a4

l230527FC:
	lbu	a6,a1,+0000000D
	c.li	a0,00000001
	andi	a4,a5,-00000003
	bne	a6,a0,000000002305280E

l2305280A:
	ori	a4,a5,+00000002

l2305280E:
	c.sw	a2,0(a3)
	c.sw	a2,4(a4)
	c.lw	a2,12(a4)
	lbu	a1,a1,+0000000E
	c.li	a3,00000001
	andi	a5,a4,-00000002
	bne	a1,a3,0000000023052826

l23052822:
	ori	a5,a4,+00000001

l23052826:
	c.sw	a2,12(a5)
	c.li	a0,00000000
	c.jr	ra

l2305282C:
	c.andi	a4,FFFFFFEF
	c.andi	a5,FFFFFFEF
	c.j	00000000230527B4

l23052832:
	ori	a4,a4,+00000030
	ori	a5,a5,+00000030
	c.j	00000000230527B4

l2305283C:
	andi	a4,a4,-00000021
	andi	a5,a5,-00000021
	ori	a4,a4,+00000010
	ori	a5,a5,+00000010
	c.j	00000000230527B4

l2305284E:
	c.lui	a4,FFFFF000
	addi	a4,a4,+000007FF
	c.and	a5,a4
	c.j	00000000230527FC

;; UART_FifoConfig: 23052858
;;   Called from:
;;     230325DC (in bl_uart_init)
UART_FifoConfig proc
	lui	a5,0002308E
	c.slli	a0,02
	addi	a5,a5,-00000150
	c.add	a5,a0
	c.lw	a5,0(a3)
	lui	a4,000FFE10
	c.addi	a4,FFFFFFFF
	lw	a5,a3,+00000084
	c.li	a2,00000001
	c.and	a4,a5
	lbu	a5,a1,+00000000
	c.addi	a5,FFFFFFFF
	c.slli	a5,10
	c.or	a5,a4
	lui	a4,000E1000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	lbu	a4,a1,+00000001
	c.addi	a4,FFFFFFFF
	c.slli	a4,18
	c.or	a5,a4
	sw	a5,a3,+00000084
	lw	a4,a3,+00000080
	lbu	a0,a1,+00000002
	andi	a5,a4,-00000002
	bne	a0,a2,00000000230528A8

l230528A4:
	ori	a5,a4,+00000001

l230528A8:
	lbu	a1,a1,+00000003
	c.li	a2,00000001
	andi	a4,a5,-00000003
	bne	a1,a2,00000000230528BA

l230528B6:
	ori	a4,a5,+00000002

l230528BA:
	sw	a4,a3,+00000080
	c.li	a0,00000000
	c.jr	ra

;; UART_Enable: 230528C2
;;   Called from:
;;     230325E4 (in bl_uart_init)
;;     23032760 (in bl_uart_setconfig)
UART_Enable proc
	lui	a5,0002308E
	c.slli	a0,02
	addi	a5,a5,-00000150
	c.add	a5,a0
	andi	a4,a1,+000000FD
	c.lw	a5,0(a5)
	c.bnez	a4,00000000230528DE

l230528D6:
	c.lw	a5,0(a4)
	ori	a4,a4,+00000001
	c.sw	a5,0(a4)

l230528DE:
	c.addi	a1,FFFFFFFF
	andi	a1,a1,+000000FF
	c.li	a4,00000001
	bltu	a4,a1,00000000230528F2

l230528EA:
	c.lw	a5,4(a4)
	ori	a4,a4,+00000001
	c.sw	a5,4(a4)

l230528F2:
	c.li	a0,00000000
	c.jr	ra

;; UART_Disable: 230528F6
;;   Called from:
;;     230325C4 (in bl_uart_init)
;;     23032748 (in bl_uart_setconfig)
UART_Disable proc
	lui	a5,0002308E
	c.slli	a0,02
	addi	a5,a5,-00000150
	c.add	a5,a0
	andi	a4,a1,+000000FD
	c.lw	a5,0(a5)
	c.bnez	a4,0000000023052910

l2305290A:
	c.lw	a5,0(a4)
	c.andi	a4,FFFFFFFE
	c.sw	a5,0(a4)

l23052910:
	c.addi	a1,FFFFFFFF
	andi	a1,a1,+000000FF
	c.li	a4,00000001
	bltu	a4,a1,0000000023052922

l2305291C:
	c.lw	a5,4(a4)
	c.andi	a4,FFFFFFFE
	c.sw	a5,4(a4)

l23052922:
	c.li	a0,00000000
	c.jr	ra

;; UART_SetRxTimeoutValue: 23052926
;;   Called from:
;;     23032670 (in bl_uart_int_rx_enable)
UART_SetRxTimeoutValue proc
	lui	a5,0002308E
	c.slli	a0,02
	addi	a5,a5,-00000150
	c.add	a5,a0
	c.lw	a5,0(a4)
	c.addi	a1,FFFFFFFF
	c.li	a0,00000000
	c.lw	a4,24(a5)
	andi	a5,a5,-00000100
	c.or	a1,a5
	c.sw	a4,24(a1)
	c.jr	ra

;; UART_TxFreeRun: 23052944
;;   Called from:
;;     230325D4 (in bl_uart_init)
;;     23032758 (in bl_uart_setconfig)
UART_TxFreeRun proc
	lui	a5,0002308E
	c.slli	a0,02
	addi	a5,a5,-00000150
	c.add	a5,a0
	c.lw	a5,0(a4)
	c.li	a3,00000001
	c.lw	a4,0(a5)
	bne	a1,a3,0000000023052964

l2305295A:
	ori	a5,a5,+00000004

l2305295E:
	c.sw	a4,0(a5)
	c.li	a0,00000000
	c.jr	ra

l23052964:
	c.andi	a5,FFFFFFFB
	c.j	000000002305295E

;; UART_IntMask: 23052968
;;   Called from:
;;     230325BC (in bl_uart_init)
;;     2303267A (in bl_uart_int_rx_enable)
;;     23032684 (in bl_uart_int_rx_enable)
;;     2303268E (in bl_uart_int_rx_enable)
;;     230326A8 (in bl_uart_int_rx_disable)
;;     230326B2 (in bl_uart_int_rx_disable)
;;     230326BC (in bl_uart_int_rx_disable)
;;     230326D2 (in bl_uart_int_tx_enable)
;;     230326E6 (in bl_uart_int_tx_disable)
UART_IntMask proc
	lui	a5,0002308E
	c.slli	a0,02
	addi	a5,a5,-00000150
	c.add	a5,a0
	c.lw	a5,0(a4)
	c.li	a3,00000008
	c.lw	a4,36(a5)
	bne	a1,a3,0000000023052990

l2305297E:
	c.li	a3,00000001
	c.li	a1,00000000
	bne	a2,a3,000000002305298A

l23052986:
	ori	a1,a5,+000000FF

l2305298A:
	c.sw	a4,36(a1)
	c.li	a0,00000000
	c.jr	ra

l23052990:
	c.li	a3,00000001
	sll	a1,a3,a1
	bne	a2,a3,000000002305299E

l2305299A:
	c.or	a1,a5
	c.j	000000002305298A

l2305299E:
	xori	a1,a1,-00000001
	c.and	a1,a5
	c.j	000000002305298A

;; UART_GetTxFifoCount: 230529A6
;;   Called from:
;;     2303261E (in bl_uart_data_send)
;;     23032702 (in bl_uart_flush)
;;     23052A0A (in UART_SendData)
UART_GetTxFifoCount proc
	lui	a5,0002308E
	c.slli	a0,02
	addi	a5,a5,-00000150
	c.add	a5,a0
	c.lw	a5,0(a5)
	lw	a0,a5,+00000084
	andi	a0,a0,+0000003F
	c.jr	ra

;; UART_SendData: 230529BE
;;   Called from:
;;     23054760 (in bflb_platform_usart_dbg_send)
UART_SendData proc
	lui	a5,0002308E
	slli	a4,a0,00000002
	addi	a5,a5,-00000150
	c.addi16sp	FFFFFFD0
	c.add	a5,a4
	c.swsp	s3,0000008C
	lw	s3,a5,+00000000
	c.swsp	s0,00000014
	lui	s0,00000027
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.mv	s2,a0
	addi	s0,s0,+00000100
	c.li	s1,00000000
	lui	s4,00000027

l230529EE:
	bltu	s1,a2,0000000023052A04

l230529F2:
	c.li	a0,00000000

l230529F4:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23052A04:
	c.mv	a0,s2
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	jal	ra,00000000230529A6
	c.lwsp	s0,00000064
	c.lwsp	a2,00000084
	c.beqz	a0,0000000023052A28

l23052A14:
	add	a5,a1,s1
	lbu	a5,a5,+00000000
	c.addi	s1,00000001
	addi	s0,s4,+00000100
	sb	a5,s3,+00000088
	c.j	00000000230529EE

l23052A28:
	c.addi	s0,FFFFFFFF
	c.bnez	s0,00000000230529EE

l23052A2C:
	c.li	a0,00000002
	c.j	00000000230529F4

;; UART_GetRxFifoCount: 23052A30
;;   Called from:
;;     2303264C (in bl_uart_data_recv)
UART_GetRxFifoCount proc
	lui	a5,0002308E
	c.slli	a0,02
	addi	a5,a5,-00000150
	c.add	a5,a0
	c.lw	a5,0(a5)
	lw	a0,a5,+00000084
	c.srli	a0,00000008
	andi	a0,a0,+0000003F
	c.jr	ra

;; ADC_Reset: 23052A4A
;;   Called from:
;;     23038DE4 (in bl_tsen_adc_get)
ADC_Reset proc
	lui	a4,00040010
	lw	a5,a4,-000006F4
	ori	a3,a5,+00000004
	sw	a3,a4,+0000090C
	c.nop
	c.nop
	c.nop
	c.nop
	c.nop
	c.nop
	c.nop
	c.nop
	c.andi	a5,FFFFFFFB
	sw	a5,a4,+0000090C
	c.jr	ra

;; ADC_Enable: 23052A72
;;   Called from:
;;     23038DE0 (in bl_tsen_adc_get)
ADC_Enable proc
	lui	a4,00040010
	lw	a5,a4,-000006F4
	ori	a5,a5,+00000001
	sw	a5,a4,+0000090C
	c.jr	ra

;; ADC_Disable: 23052A84
;;   Called from:
;;     23038DDC (in bl_tsen_adc_get)
ADC_Disable proc
	lui	a4,00040010
	lw	a5,a4,-000006F4
	c.andi	a5,FFFFFFFE
	sw	a5,a4,+0000090C
	c.jr	ra

;; ADC_Channel_Config: 23052A94
;;   Called from:
;;     23038DF4 (in bl_tsen_adc_get)
ADC_Channel_Config proc
	lui	a5,00040010
	lw	a4,a5,-000006F4
	c.lui	a3,FFFFE000
	addi	a3,a3,+000000FF
	c.and	a4,a3
	c.slli	a0,08
	c.or	a0,a4
	andi	a0,a0,-000000F9
	c.slli	a1,03
	c.or	a0,a1
	sw	a0,a5,+0000090C
	lw	a4,a5,-000006F0
	c.slli	a2,01
	c.andi	a4,FFFFFFFD
	c.or	a2,a4
	lui	a4,000FE000
	c.addi	a4,FFFFFFFF
	c.and	a2,a4
	sw	a2,a5,+00000910
	c.jr	ra

;; ADC_Start: 23052ACC
;;   Called from:
;;     23052EA4 (in TSEN_Get_V_Error)
;;     23052EE8 (in TSEN_Get_V_Error)
;;     23052F48 (in TSEN_Get_Temp)
;;     23052F92 (in TSEN_Get_Temp)
ADC_Start proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	s0,00040010
	lw	a5,s0,-000006F4
	addi	a0,zero,+00000064
	c.andi	a5,FFFFFFFD
	sw	a5,s0,+0000090C
	auipc	ra,0001EFBA
	jalr	ra,ra,-000005DE
	lw	a5,s0,-000006F4
	ori	a5,a5,+00000002
	sw	a5,s0,+0000090C
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ADC_FIFO_Cfg: 23052B00
;;   Called from:
;;     23038E00 (in bl_tsen_adc_get)
ADC_FIFO_Cfg proc
	lui	a4,00040002
	c.lw	a4,0(a5)
	lui	a3,000FF400
	c.addi	a3,FFFFFFFF
	c.and	a3,a5
	lbu	a5,a0,+00000000
	c.slli	a5,16
	c.or	a5,a3
	lbu	a3,a0,+00000001
	c.andi	a5,FFFFFFFE
	c.or	a5,a3
	c.sw	a4,0(a5)
	c.lw	a4,0(a5)
	ori	a5,a5,+00000002
	c.sw	a4,0(a5)
	c.jr	ra

;; ADC_Get_FIFO_Count: 23052B2A
;;   Called from:
;;     23052EA8 (in TSEN_Get_V_Error)
;;     23052EEC (in TSEN_Get_V_Error)
;;     23052F4C (in TSEN_Get_Temp)
;;     23052F96 (in TSEN_Get_Temp)
ADC_Get_FIFO_Count proc
	lui	a5,00040002
	c.lw	a5,0(a0)
	c.srli	a0,00000010
	andi	a0,a0,+0000003F
	c.jr	ra

;; ADC_Parse_Result: 23052B38
;;   Called from:
;;     23052ECC (in TSEN_Get_V_Error)
;;     23052F08 (in TSEN_Get_V_Error)
;;     23052F72 (in TSEN_Get_Temp)
;;     23052FB2 (in TSEN_Get_Temp)
ADC_Parse_Result proc
	c.addi16sp	FFFFFF90
	lui	a3,0004200E
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s1,000000B0
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
	c.sdsp	s0,00000128
	c.sdsp	s1,00000028
	addi	a3,a3,-00000694
	lbu	a5,a3,+00000000
	beq	a5,zero,0000000023052C76

l23052B68:
	c.flw	fa3,4(s1)

l23052B6A:
	lui	a5,00040010
	lw	s0,a5,-000006F0
	lw	a3,a5,-000006EC
	c.srli	s0,00000002
	srli	s2,a3,00000002
	c.andi	a3,00000008
	c.andi	s0,00000007
	andi	s2,s2,+00000001
	bne	a3,zero,0000000023052C80

l23052B88:
	lui	a5,00023088
	flw	fs0,1568(a5)

l23052B90:
	c.slli	a1,02
	beq	s2,zero,0000000023052C8A

l23052B96:
	add	a5,a0,a1
	addi	a3,s0,-00000002
	c.swsp	a5,00000004
	andi	a5,a3,+000000FD
	lui	a3,00023088
	lw	a6,a3,+00000654
	c.swsp	a5,00000084
	lw	a5,a3,+00000650
	lui	a3,00023088
	lw	s10,a3,+00000648
	lw	s11,a3,+0000064C
	lui	a3,00023088
	c.swsp	a5,00000008
	c.swsp	a6,00000088
	lw	a5,a3,+00000640
	lw	a6,a3,+00000644
	c.lui	s1,00010000
	c.lui	s5,00004000
	c.lui	s3,00001000
	c.mv	s7,a2
	c.mv	s6,a0
	c.addi	s1,FFFFFFFF
	c.addi	s5,FFFFFFFF
	c.addi	s3,FFFFFFFF
	c.swsp	a5,0000000C
	c.swsp	a6,0000008C

l23052BE2:
	c.lwsp	s0,000000E4
	beq	s6,a5,0000000023052CD8

l23052BE8:
	lw	a3,s6,+00000000
	c.li	s4,00000000
	c.srli	a3,00000015
	sb	a3,s7,+00000000
	lhu	a3,s6,+00000002
	c.andi	a3,0000001F
	sb	a3,s7,+00000001
	lw	a3,s6,+00000000
	slli	a5,a3,00000010
	bge	a5,zero,0000000023052C14

l23052C0A:
	sub	a3,zero,a3
	sw	a3,s6,+00000000
	c.mv	s4,s2

l23052C14:
	bne	s0,zero,0000000023052DAC

l23052C18:
	lw	a0,s6,+00000000
	c.srli	a0,00000004
	and	a0,a0,s3
	fcvt.s.w	fa5,a0
	fdiv.s	fa5,fa5,fs1
	fcvt.wu.s	a0,fa5
	sh	a0,s7,+00000002
	c.and	a0,s1
	jal	ra,00000000230705D8
	c.lwsp	s8,00000084
	c.lwsp	t3,000000A4

l23052C3C:
	jal	ra,000000002306F140
	fmv.s	fa0,fs0,fs0
	c.mv	s8,a0
	c.mv	s9,a1
	jal	ra,0000000023070708
	c.mv	a2,a0
	c.mv	a3,a1
	c.mv	a0,s8
	c.mv	a1,s9
	jal	ra,000000002306F140
	jal	ra,0000000023070818
	fsw	fa0,16(a5)

l23052C60:
	beq	s4,zero,0000000023052C70

l23052C64:
	flw	fa5,4(s7)
	fneg.s	fa5,fa5,fa5
	fsw	fa5,16(a5)

l23052C70:
	c.addi	s7,00000008
	c.addi	s6,00000004
	c.j	0000000023052BE2

l23052C76:
	lui	a5,00023088
	flw	fs1,1564(a5)
	c.j	0000000023052B6A

l23052C80:
	lui	a5,00023076
	flw	fs0,1900(a5)
	c.j	0000000023052B90

l23052C8A:
	add	a5,a0,a1
	addi	a3,s0,-00000002
	c.swsp	a5,00000004
	andi	a5,a3,+000000FD
	lui	a3,00023088
	lw	s10,a3,+00000638
	lw	s11,a3,+0000063C
	lui	a3,00023088
	lw	a6,a3,+00000634
	c.swsp	a5,00000084
	lw	a5,a3,+00000630
	lui	a3,00023088
	lw	s6,a3,+00000628
	lw	s7,a3,+0000062C
	c.lui	s1,00010000
	c.lui	s2,00004000
	c.lui	s3,00001000
	c.mv	s4,a0
	c.mv	s5,a2
	c.addi	s1,FFFFFFFF
	c.addi	s2,FFFFFFFF
	c.swsp	a5,00000008
	c.swsp	a6,00000088
	c.addi	s3,FFFFFFFF

l23052CD2:
	c.lwsp	s0,000000E4
	bne	a5,s4,0000000023052CFA

l23052CD8:
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
	c.ldsp	a2,00000228
	c.ldsp	s0,00000268
	c.addi16sp	00000070
	c.jr	ra

l23052CFA:
	lw	a3,s4,+00000000
	c.li	a5,FFFFFFFF
	sb	a5,s5,+00000001
	c.srli	a3,00000015
	sb	a3,s5,+00000000
	c.bnez	s0,0000000023052D5A

l23052D0C:
	lw	a0,s4,+00000000
	c.srli	a0,00000004
	and	a0,a0,s3
	fcvt.s.w	fa5,a0
	fdiv.s	fa5,fa5,fs1
	fcvt.wu.s	a0,fa5
	sh	a0,s5,+00000002
	c.and	a0,s1
	jal	ra,00000000230705D8
	c.mv	a2,s6
	c.mv	a3,s7

l23052D30:
	jal	ra,000000002306F140
	fmv.s	fa0,fs0,fs0
	c.mv	s8,a0
	c.mv	s9,a1
	jal	ra,0000000023070708
	c.mv	a2,a0
	c.mv	a3,a1
	c.mv	a0,s8
	c.mv	a1,s9
	jal	ra,000000002306F140
	jal	ra,0000000023070818
	fsw	fa0,16(a3)

l23052D54:
	c.addi	s4,00000004
	c.addi	s5,00000008
	c.j	0000000023052CD2

l23052D5A:
	c.li	a5,00000001
	bne	s0,a5,0000000023052D86

l23052D60:
	lw	a3,s4,+00000000
	c.srli	a3,00000002
	and	a3,a3,s2
	fcvt.s.w	fa5,a3
	fdiv.s	fa5,fa5,fs1
	fcvt.wu.s	a0,fa5
	sh	a0,s5,+00000002
	c.and	a0,s1
	jal	ra,00000000230705D8
	c.lwsp	a6,00000084
	c.lwsp	s4,000000A4
	c.j	0000000023052D30

l23052D86:
	c.lwsp	a2,000000E4
	c.bnez	a5,0000000023052D54

l23052D8A:
	lw	a0,s4,+00000000
	c.and	a0,s1
	fcvt.s.w	fa5,a0
	fdiv.s	fa5,fa5,fs1
	fcvt.wu.s	a0,fa5
	sh	a0,s5,+00000002
	c.and	a0,s1
	jal	ra,00000000230705D8
	c.mv	a2,s10
	c.mv	a3,s11
	c.j	0000000023052D30

l23052DAC:
	c.li	a5,00000001
	bne	s0,a5,0000000023052DD8

l23052DB2:
	lw	a0,s6,+00000000
	c.srli	a0,00000002
	and	a0,a0,s5
	fcvt.s.w	fa5,a0
	fdiv.s	fa5,fa5,fs1
	fcvt.wu.s	a0,fa5
	sh	a0,s7,+00000002
	c.and	a0,s1
	jal	ra,00000000230705D8
	c.mv	a2,s10
	c.mv	a3,s11
	c.j	0000000023052C3C

l23052DD8:
	c.lwsp	a2,000000E4
	bne	a5,zero,0000000023052C60

l23052DDE:
	lw	a0,s6,+00000000
	c.and	a0,s1
	fcvt.s.w	fa5,a0
	fdiv.s	fa5,fa5,fs1
	fcvt.wu.s	a0,fa5
	sh	a0,s7,+00000002
	c.and	a0,s1
	jal	ra,00000000230705D8
	c.lwsp	a6,00000084
	c.lwsp	s4,000000A4
	c.j	0000000023052C3C

;; ADC_Tsen_Init: 23052E00
;;   Called from:
;;     23038DFA (in bl_tsen_adc_get)
ADC_Tsen_Init proc
	lui	a4,00040010
	lw	a5,a4,-000006F4
	lui	a3,00088000
	c.addi	a3,FFFFFFFF
	c.and	a5,a3
	lui	a3,00000040
	c.or	a5,a3
	sw	a5,a4,+0000090C
	lw	a5,a4,-000006EC
	lui	a3,0000FC40
	addi	a3,a3,-00000021
	c.and	a5,a3
	c.slli	a0,05
	c.or	a5,a0
	c.lui	a0,FFFFA000
	addi	a0,a0,+0000007F
	c.and	a5,a0
	lui	a0,00020000
	addi	a0,a0,+00000140
	c.or	a5,a0
	sw	a5,a4,+00000914
	lw	a5,a4,-000006F0
	lui	a3,00004000
	c.or	a5,a3
	sw	a5,a4,+00000910
	lw	a5,a4,-000006F4
	lui	a3,00000080
	c.or	a5,a3
	sw	a5,a4,+0000090C
	c.jr	ra

;; ADC_SET_TSVBE_LOW: 23052E60
;;   Called from:
;;     23052EA0 (in TSEN_Get_V_Error)
;;     23052F44 (in TSEN_Get_Temp)
ADC_SET_TSVBE_LOW proc
	lui	a4,00040010
	lw	a5,a4,-000006EC
	c.slli	a5,01
	c.srli	a5,00000001
	sw	a5,a4,+00000914
	c.jr	ra

;; ADC_SET_TSVBE_HIGH: 23052E72
;;   Called from:
;;     23052EE4 (in TSEN_Get_V_Error)
;;     23052F8E (in TSEN_Get_Temp)
ADC_SET_TSVBE_HIGH proc
	lui	a4,00040010
	lw	a5,a4,-000006EC
	lui	a3,00080000
	c.or	a5,a3
	sw	a5,a4,+00000914
	c.jr	ra

;; TSEN_Get_V_Error: 23052E86
TSEN_Get_V_Error proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	lui	a4,00040002
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	zero,00000080
	c.lw	a4,0(a5)
	ori	a5,a5,+00000002
	c.sw	a4,0(a5)
	jal	ra,0000000023052E60
	jal	ra,0000000023052ACC

l23052EA8:
	jal	ra,0000000023052B2A
	c.beqz	a0,0000000023052EA8

l23052EAE:
	lui	s0,0004200E
	addi	s2,s0,-00000694
	lui	s1,00040002
	c.lw	s1,4(a5)
	lbu	s3,s2,+00000000
	c.addi4spn	a2,00000008
	c.li	a1,00000001
	c.addi4spn	a0,00000004
	c.swsp	a5,00000080
	sb	zero,s2,+00000000
	jal	ra,0000000023052B38
	sb	s3,s2,+00000000
	c.lw	s1,0(a5)
	lhu	s2,sp,+0000000A
	addi	s0,s0,-00000694
	ori	a5,a5,+00000002
	c.sw	s1,0(a5)
	jal	ra,0000000023052E72
	jal	ra,0000000023052ACC

l23052EEC:
	jal	ra,0000000023052B2A
	c.beqz	a0,0000000023052EEC

l23052EF2:
	lui	a5,00040002
	c.lw	a5,4(a5)
	lbu	s1,s0,+00000000
	c.addi4spn	a0,00000004
	c.addi4spn	a2,00000008
	c.li	a1,00000001
	c.swsp	a5,00000080
	sb	zero,s0,+00000000
	jal	ra,0000000023052B38
	lhu	a0,sp,+0000000A
	sb	s1,s0,+00000000
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	sub	a0,s2,a0
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; TSEN_Get_Temp: 23052F26
;;   Called from:
;;     23038E4A (in bl_tsen_adc_get)
TSEN_Get_Temp proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	lui	a4,00040002
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	zero,00000080
	c.lw	a4,0(a5)
	c.mv	s1,a0
	ori	a5,a5,+00000002
	c.sw	a4,0(a5)
	jal	ra,0000000023052E60
	jal	ra,0000000023052ACC

l23052F4C:
	jal	ra,0000000023052B2A
	c.beqz	a0,0000000023052F4C

l23052F52:
	lui	s0,0004200E
	addi	s3,s0,-00000694
	lui	s2,00040002
	lw	a5,s2,+00000004
	lbu	s4,s3,+00000000
	c.addi4spn	a2,00000008
	c.li	a1,00000001
	c.addi4spn	a0,00000004
	c.swsp	a5,00000080
	sb	zero,s3,+00000000
	jal	ra,0000000023052B38
	sb	s4,s3,+00000000
	lw	a5,s2,+00000000
	lhu	s3,sp,+0000000A
	addi	s0,s0,-00000694
	ori	a5,a5,+00000002
	sw	a5,s2,+00000000
	jal	ra,0000000023052E72
	jal	ra,0000000023052ACC

l23052F96:
	jal	ra,0000000023052B2A
	c.beqz	a0,0000000023052F96

l23052F9C:
	lui	a5,00040002
	c.lw	a5,4(a5)
	c.addi4spn	a2,00000008
	c.li	a1,00000001
	c.addi4spn	a0,00000004
	lbu	s2,s0,+00000000
	c.swsp	a5,00000080
	sb	zero,s0,+00000000
	jal	ra,0000000023052B38
	lhu	a5,sp,+0000000A
	sb	s2,s0,+00000000
	fcvt.s.wu	fa4,s3
	fcvt.s.wu	fa0,a5
	fcvt.s.wu	fa5,s1
	lui	s0,00023088
	bgeu	a5,s3,0000000023052FFE

l23052FD2:
	fsub.s	fa0,fa4,fa0

l23052FD6:
	fsub.s	fa0,fa0,fa5
	jal	ra,0000000023070708
	lw	a2,s0,+00000658
	lw	a3,s0,+0000065C
	jal	ra,000000002306E5F4
	jal	ra,0000000023070818
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23052FFE:
	fsub.s	fa0,fa0,fa4
	c.j	0000000023052FD6

;; ADC_Init: 23053004
;;   Called from:
;;     23038DEA (in bl_tsen_adc_get)
ADC_Init proc
	lui	a1,00040010
	lw	a5,a1,-000006F0
	lui	a4,000A0000
	c.addi	a4,FFFFFFFF
	c.and	a4,a5
	lbu	a5,a0,+00000000
	lbu	a3,a0,+0000000B
	c.lui	a2,FFFE0000
	c.slli	a5,1D
	c.or	a5,a4
	lui	a4,000E8000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	lbu	a4,a0,+00000001
	c.slli	a4,1B
	c.or	a4,a5
	lui	a5,000F8040
	c.addi	a5,FFFFFFFF
	c.and	a5,a4
	lbu	a4,a0,+00000002
	c.slli	a4,12
	c.or	a4,a5
	addi	a5,a2,-00000002
	c.and	a4,a5
	c.or	a4,a3
	lbu	a3,a0,+0000000A
	c.andi	a4,FFFFFFE3
	c.slli	a3,02
	c.or	a3,a4
	sw	a3,a1,+00000910
	c.nop
	c.nop
	c.nop
	c.nop
	c.nop
	c.nop
	c.nop
	c.nop
	lw	a4,a1,-000006EC
	lbu	a3,a0,+00000003
	lui	a5,00082000
	c.addi	a5,FFFFFFFF
	c.and	a5,a4
	lbu	a1,a0,+00000004
	slli	a4,a3,00000019
	c.or	a4,a5
	lui	a5,000FE400
	c.addi	a5,FFFFFFFF
	c.and	a4,a5
	slli	a5,a1,00000016
	c.or	a5,a4
	addi	a4,a2,-00000001
	c.and	a4,a5
	lbu	a5,a0,+00000006
	c.or	a3,a1
	c.slli	a5,11
	c.or	a5,a4
	c.beqz	a3,00000000230530F4

l230530A2:
	c.lui	a4,FFFE4000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.lui	a4,00012000

l230530AA:
	c.or	a5,a4
	lbu	a4,a0,+00000007
	c.lui	a3,FFFFE000
	addi	a3,a3,+0000007F
	c.slli	a4,07
	c.and	a5,a3
	c.or	a5,a4
	lbu	a4,a0,+00000008
	c.andi	a5,FFFFFFF3
	c.lui	a3,FFFF0000
	c.slli	a4,03
	c.or	a5,a4
	c.lui	a4,00001000
	c.or	a5,a4
	lbu	a4,a0,+00000009
	c.slli	a4,02
	c.or	a5,a4
	lui	a4,00040010
	sw	a5,a4,+00000914
	lw	a5,a4,-000006C8
	c.and	a3,a5
	lh	a5,a0,+0000000C
	c.or	a5,a3
	sw	a5,a4,+00000938
	auipc	t1,0001EFBA
	jalr	zero,t1,-00000590

l230530F4:
	c.lui	a4,FFFE2000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.lui	a4,00008000
	c.j	00000000230530AA

;; Sec_Eng_PKA_Write_Common_OP_First_Cfg: 230530FE
;;   Called from:
;;     23053A4E (in Sec_Eng_PKA_Move_Data)
;;     23053A96 (in Sec_Eng_PKA_MREM)
;;     23053AEC (in Sec_Eng_PKA_MEXP)
;;     23053B9E (in Sec_Eng_PKA_LSUB)
;;     23053BF0 (in Sec_Eng_PKA_LMUL)
;;     23053C42 (in Sec_Eng_PKA_LDIV)
;;     23053C8E (in Sec_Eng_PKA_LMUL2N)
Sec_Eng_PKA_Write_Common_OP_First_Cfg proc
	c.andi	a1,0000000F
	c.slli	a1,08
	c.or	a0,a1
	c.li	a1,00000019
	beq	a4,a1,0000000023053114

l2305310A:
	c.slli	a2,0C
	c.andi	a3,0000000F
	c.slli	a3,14
	c.or	a0,a2
	c.or	a0,a3

l23053114:
	lui	a1,00081000
	andi	a4,a4,+0000007F
	c.addi	a1,FFFFFFFF
	c.slli	a4,18
	c.and	a0,a1
	c.or	a0,a4
	c.slli	a0,01
	c.slli	a5,1F
	c.srli	a0,00000001
	c.or	a0,a5
	lui	a5,00040004
	sw	a0,a5,+00000340
	c.jr	ra

;; Sec_Eng_PKA_Wait_ISR: 23053136
;;   Called from:
;;     230539BE (in Sec_Eng_PKA_Read_Data)
;;     23053A26 (in Sec_Eng_PKA_CREG)
;;     23053A5C (in Sec_Eng_PKA_Move_Data)
;;     23053AAA (in Sec_Eng_PKA_MREM)
;;     23053B16 (in Sec_Eng_PKA_MEXP)
;;     23053B5E (in Sec_Eng_PKA_LCMP)
;;     23053BB4 (in Sec_Eng_PKA_LSUB)
;;     23053C06 (in Sec_Eng_PKA_LMUL)
;;     23053C56 (in Sec_Eng_PKA_LDIV)
;;     23053C9E (in Sec_Eng_PKA_LMUL2N)
Sec_Eng_PKA_Wait_ISR proc
	lui	a5,00000F42
	addi	a5,a5,+00000400
	lui	a3,00040004

l23053142:
	lw	a4,a3,+00000300
	c.addi	a5,FFFFFFFF
	c.beqz	a5,0000000023053154

l2305314A:
	andi	a4,a4,+00000100
	c.beqz	a4,0000000023053142

l23053150:
	c.li	a0,00000000
	c.jr	ra

l23053154:
	c.li	a0,00000002
	c.jr	ra

;; Sec_Eng_SHA256_Update.part.0: 23053158
;;   Called from:
;;     2305330E (in Sec_Eng_SHA256_Update)
;;     230533DE (in Sec_Eng_SHA256_Finish)
Sec_Eng_SHA256_Update.part.0 proc
	c.addi	sp,FFFFFFE0
	lui	a4,00000F42
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.mv	s1,a0
	c.mv	s3,a1
	c.mv	s0,a2
	addi	a4,a4,+00000400
	lui	a3,00040004

l2305317C:
	lw	s6,a3,+00000000
	c.addi	a4,FFFFFFFF
	beq	a4,zero,00000000230532A2

l23053186:
	andi	a5,s6,+00000001
	c.bnez	a5,000000002305317C

l2305318C:
	c.lw	s1,0(a4)
	lbu	s2,s1,+00000010
	andi	s4,a4,+0000003F
	c.add	a4,s0
	c.sw	s1,0(a4)
	bgeu	a4,s0,00000000230531A4

l2305319E:
	c.lw	s1,4(a5)
	c.addi	a5,00000001
	c.sw	s1,4(a5)

l230531A4:
	beq	s4,zero,00000000230531FA

l230531A8:
	addi	s5,zero,+00000040
	sub	s5,s5,s4
	bltu	s0,s5,00000000230531FA

l230531B4:
	c.lw	s1,8(a0)
	c.mv	a2,s5
	c.mv	a1,s3
	c.add	a0,s4
	auipc	ra,0001EFB9
	jalr	ra,ra,+00000372
	c.lw	s1,8(a5)
	lui	a3,00040004
	andi	s6,s6,-00000041
	c.sw	a3,4(a5)
	slli	a5,s2,00000006
	or	a5,a5,s6
	c.slli	a5,10
	c.lui	a4,00010000
	c.srli	a5,00000010
	or	a2,a5,a4
	c.addi	a4,00000002
	c.sw	a3,0(a2)
	c.or	a5,a4
	c.sw	a3,0(a5)
	addi	s0,s0,-00000040
	c.li	a5,00000001
	c.add	s0,s4
	sb	a5,s1,+00000010
	c.add	s3,s5
	c.li	s4,00000000

l230531FA:
	addi	a5,zero,+0000003F
	andi	a2,s0,+0000003F
	bgeu	a5,s0,0000000023053250

l23053206:
	lui	a3,00000F42
	addi	a3,a3,+00000400
	lui	a1,00040004

l23053212:
	c.lw	a1,0(a5)
	c.addi	a3,FFFFFFFF
	c.beqz	a3,00000000230532A2

l23053218:
	andi	a4,a5,+00000001
	c.bnez	a4,0000000023053212

l2305321E:
	andi	a4,a5,-00000041
	lbu	a5,s1,+00000010
	sw	s3,a1,+00000004
	c.slli	a5,06
	c.or	a5,a4
	slli	a4,a5,00000010
	srli	a5,s0,00000006
	c.srli	a4,00000010
	c.slli	a5,10
	c.or	a5,a4
	c.sw	a1,0(a5)
	ori	a5,a5,+00000002
	c.sw	a1,0(a5)
	andi	s0,s0,-00000040
	c.li	a5,00000001
	c.add	s3,s0
	sb	a5,s1,+00000010

l23053250:
	c.beqz	a2,0000000023053276

l23053252:
	lui	a5,00000F42
	addi	a5,a5,+00000400
	lui	a3,00040004

l2305325E:
	c.lw	a3,0(a4)
	c.addi	a5,FFFFFFFF
	c.beqz	a5,00000000230532A2

l23053264:
	c.andi	a4,00000001
	c.bnez	a4,000000002305325E

l23053268:
	c.lw	s1,8(a0)
	c.mv	a1,s3
	c.add	a0,s4
	auipc	ra,0001EFB9
	jalr	ra,ra,+000002C0

l23053276:
	lui	a5,00000F42
	addi	a5,a5,+00000400
	lui	a3,00040004

l23053282:
	c.lw	a3,0(a4)
	c.addi	a5,FFFFFFFF
	c.beqz	a5,00000000230532A2

l23053288:
	c.andi	a4,00000001
	c.bnez	a4,0000000023053282

l2305328C:
	c.li	a0,00000000

l2305328E:
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

l230532A2:
	c.li	a0,00000002
	c.j	000000002305328E

;; Sec_Eng_SHA256_Init: 230532A6
;;   Called from:
;;     230355E0 (in bl_sha_init)
Sec_Eng_SHA256_Init proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a3,00000084
	c.swsp	a4,00000004
	lui	a1,00040004
	c.lw	a1,0(a5)
	c.slli	a2,02
	c.mv	s0,a0
	c.andi	a5,FFFFFFE3
	c.or	a2,a5
	c.sw	a1,0(a2)
	c.li	a2,00000014
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000A4
	addi	a2,zero,+00000040
	c.sw	s0,12(a4)
	c.sw	s0,8(a3)
	c.li	a1,00000000
	c.mv	a0,a4
	auipc	ra,0001EFB9
	jalr	ra,ra,+00000260
	c.lw	s0,12(a0)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.li	a2,00000001
	addi	a1,zero,+00000080
	c.addi16sp	00000020
	auipc	t1,0001EFB9
	jalr	zero,t1,+0000024A

;; Sec_Eng_SHA_Start: 230532F6
;;   Called from:
;;     230355EA (in bl_sha_init)
Sec_Eng_SHA_Start proc
	lui	a4,00040004
	c.lw	a4,0(a5)
	andi	a5,a5,-00000041
	ori	a5,a5,+00000020
	c.sw	a4,0(a5)
	c.jr	ra

;; Sec_Eng_SHA256_Update: 23053308
;;   Called from:
;;     230355F8 (in bl_sha_update)
;;     230533B0 (in Sec_Eng_SHA256_Finish)
Sec_Eng_SHA256_Update proc
	c.mv	a1,a2
	c.beqz	a3,0000000023053312

l2305330C:
	c.mv	a2,a3
	jal	zero,0000000023053158

l23053312:
	c.li	a0,00000000
	c.jr	ra

;; Sec_Eng_SHA256_Finish: 23053316
;;   Called from:
;;     2303560A (in bl_sha_finish)
Sec_Eng_SHA256_Finish proc
	lui	a5,00000F42
	addi	a5,a5,+00000400
	lui	a3,00040004

l23053322:
	c.lw	a3,0(a4)
	c.addi	a5,FFFFFFFF
	c.bnez	a5,0000000023053338

l23053328:
	c.li	a0,00000002
	c.jr	ra

l2305332C:
	c.li	a0,00000002

l2305332E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23053338:
	c.andi	a4,00000001
	c.bnez	a4,0000000023053322

l2305333C:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.lw	a0,0(a3)
	c.lw	a0,4(a5)
	srli	a4,a3,0000001D
	c.slli	a5,03
	c.or	a5,a4
	srli	a6,a5,00000018
	sb	a6,sp,+00000008
	srli	a6,a5,00000010
	sb	a6,sp,+00000009
	slli	a6,a5,00000008
	c.slli	a5,10
	c.srli	a5,00000010
	c.srli	a5,00000008
	slli	a4,a3,00000003
	or	a5,a6,a5
	sh	a5,sp,+0000000A
	srli	a5,a4,00000018
	sb	a5,sp,+0000000C
	srli	a5,a4,00000010
	c.slli	a4,10
	c.srli	a4,00000010
	sb	a5,sp,+0000000D
	c.srli	a4,00000008
	slli	a5,a3,0000000B
	c.or	a4,a5
	sh	a4,sp,+0000000E
	andi	a3,a3,+0000003F
	addi	a5,zero,+00000037
	bltu	a5,a3,00000000230534FA

l230533A2:
	addi	a5,zero,+00000038

l230533A6:
	c.mv	s0,a2
	c.lw	a0,12(a2)
	sub	a3,a5,a3
	c.mv	s1,a0
	jal	ra,0000000023053308
	lui	a5,00000F42
	addi	a5,a5,+00000400
	lui	a3,00040004

l230533C0:
	c.lw	a3,0(a4)
	c.addi	a5,FFFFFFFF
	c.beqz	a5,000000002305332C

l230533C6:
	c.andi	a4,00000001
	c.bnez	a4,00000000230533C0

l230533CA:
	c.lw	s1,12(a0)
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	auipc	ra,0001EFB9
	jalr	ra,ra,+0000015E
	c.lw	s1,12(a1)
	c.li	a2,00000008
	c.mv	a0,s1
	jal	ra,0000000023053158
	lui	a4,00000F42
	addi	a4,a4,+00000400
	lui	a5,00040004

l230533EE:
	c.lw	a5,0(a3)
	c.addi	a4,FFFFFFFF
	c.beqz	a4,000000002305332C

l230533F4:
	c.andi	a3,00000001
	c.bnez	a3,00000000230533EE

l230533F8:
	c.lw	a5,0(a4)
	c.lw	a5,16(a3)
	c.srli	a4,00000002
	srli	a2,a3,00000008
	sb	a3,s0,+00000000
	sb	a2,s0,+00000001
	srli	a2,a3,00000010
	c.srli	a3,00000018
	sb	a2,s0,+00000002
	sb	a3,s0,+00000003
	c.lw	a5,20(a3)
	andi	a4,a4,+000000FF
	srli	a2,a3,00000008
	sb	a3,s0,+00000004
	sb	a2,s0,+00000005
	srli	a2,a3,00000010
	c.srli	a3,00000018
	sb	a2,s0,+00000006
	sb	a3,s0,+00000007
	c.lw	a5,24(a3)
	srli	a2,a3,00000008
	sb	a3,s0,+00000008
	sb	a2,s0,+00000009
	srli	a2,a3,00000010
	c.srli	a3,00000018
	sb	a2,s0,+0000000A
	sb	a3,s0,+0000000B
	c.lw	a5,28(a3)
	srli	a2,a3,00000008
	sb	a3,s0,+0000000C
	sb	a2,s0,+0000000D
	srli	a2,a3,00000010
	c.srli	a3,00000018
	sb	a2,s0,+0000000E
	sb	a3,s0,+0000000F
	c.lw	a5,32(a3)
	srli	a2,a3,00000008
	sb	a3,s0,+00000010
	sb	a2,s0,+00000011
	srli	a2,a3,00000010
	c.srli	a3,00000018
	sb	a3,s0,+00000013
	sb	a2,s0,+00000012
	andi	a3,a4,+00000006
	c.bnez	a3,00000000230534EA

l23053492:
	c.lw	a5,36(a3)
	c.andi	a4,00000007
	srli	a2,a3,00000008
	sb	a3,s0,+00000014
	sb	a2,s0,+00000015
	srli	a2,a3,00000010
	c.srli	a3,00000018
	sb	a2,s0,+00000016
	sb	a3,s0,+00000017
	c.lw	a5,40(a3)
	srli	a2,a3,00000008
	sb	a3,s0,+00000018
	sb	a2,s0,+00000019
	srli	a2,a3,00000010
	c.srli	a3,00000018
	sb	a2,s0,+0000001A
	sb	a3,s0,+0000001B
	c.bnez	a4,00000000230534EA

l230534CE:
	c.lw	a5,44(a5)
	srli	a4,a5,00000008
	sb	a5,s0,+0000001C
	sb	a4,s0,+0000001D
	srli	a4,a5,00000010
	c.srli	a5,00000018
	sb	a4,s0,+0000001E
	sb	a5,s0,+0000001F

l230534EA:
	lui	a4,00040004
	c.lw	a4,0(a5)
	c.li	a0,00000000
	andi	a5,a5,-00000061
	c.sw	a4,0(a5)
	c.j	000000002305332E

l230534FA:
	addi	a5,zero,+00000078
	c.j	00000000230533A6

;; Sec_Eng_SHA_Enable_Link: 23053500
;;   Called from:
;;     23035654 (in sha256_test_case0)
Sec_Eng_SHA_Enable_Link proc
	lui	a3,00040004
	c.lw	a3,0(a5)
	c.lui	a4,00008000
	addi	a4,a4,+00000020
	c.or	a5,a4
	c.sw	a3,0(a5)
	c.jr	ra

;; Sec_Eng_SHA_Disable_Link: 23053512
;;   Called from:
;;     23035686 (in sha256_test_case0)
Sec_Eng_SHA_Disable_Link proc
	lui	a3,00040004
	c.lw	a3,0(a5)
	c.lui	a4,FFFF8000
	addi	a4,a4,-00000021
	c.and	a5,a4
	c.sw	a3,0(a5)
	c.jr	ra

;; Sec_Eng_SHA256_Link_Init: 23053524
;;   Called from:
;;     23035662 (in sha256_test_case0)
Sec_Eng_SHA256_Link_Init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.li	a1,00000000
	c.mv	s1,a2
	c.li	a2,00000014
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a3,00000084
	c.mv	s0,a0
	c.swsp	a4,00000004
	jal	ra,0000000023070EB8
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000A4
	addi	a2,zero,+00000040
	c.sw	s0,12(a4)
	c.sw	s0,8(a3)
	c.li	a1,00000000
	c.mv	a0,a4
	auipc	ra,0001EFB9
	jalr	ra,ra,-00000014
	c.lw	s0,12(a0)
	c.li	a2,00000001
	addi	a1,zero,+00000080
	auipc	ra,0001EFB9
	jalr	ra,ra,-00000024
	c.lwsp	t3,00000020
	c.sw	s0,16(s1)
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; Sec_Eng_SHA256_Link_Update: 23053570
;;   Called from:
;;     23035676 (in sha256_test_case0)
;;     2305374C (in Sec_Eng_SHA256_Link_Finish)
;;     2305376E (in Sec_Eng_SHA256_Link_Finish)
Sec_Eng_SHA256_Link_Update proc
	beq	a3,zero,000000002305369C

l23053574:
	c.addi16sp	FFFFFFD0
	lui	a5,00000F42
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.mv	s1,a2
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s0,a0
	addi	a5,a5,+00000400
	lui	a2,00040004

l23053590:
	c.lw	a2,0(a4)
	c.addi	a5,FFFFFFFF
	c.bnez	a5,00000000230535A6

l23053596:
	c.li	a0,00000002

l23053598:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l230535A6:
	c.andi	a4,00000001
	c.bnez	a4,0000000023053590

l230535AA:
	c.lw	s0,16(a5)
	c.sw	a2,80(a5)
	c.lw	s0,0(a5)
	andi	s2,a5,+0000003F
	c.add	a5,a3
	c.sw	s0,0(a5)
	bgeu	a5,a3,00000000230535C2

l230535BC:
	c.lw	s0,4(a5)
	c.addi	a5,00000001
	c.sw	s0,4(a5)

l230535C2:
	beq	s2,zero,0000000023053614

l230535C6:
	addi	s3,zero,+00000040
	sub	s3,s3,s2
	bltu	a3,s3,0000000023053614

l230535D2:
	c.lw	s0,8(a0)
	c.mv	a1,s1
	c.mv	a2,s3
	c.add	a0,s2
	c.swsp	a3,00000084
	auipc	ra,0001EFB9
	jalr	ra,ra,-000000AE
	c.lw	s0,16(a5)
	c.lw	s0,8(a4)
	c.add	s1,s3
	c.sw	a5,4(a4)
	c.lw	s0,16(a5)
	c.li	a4,00000001
	sh	a4,a5,+00000002
	lui	a4,00040004
	c.lw	a4,0(a5)
	ori	a5,a5,+00000002
	c.sw	a4,0(a5)
	c.lw	s0,16(a4)
	c.lwsp	a2,000000A4
	c.lw	a4,0(a5)
	c.add	a3,s2
	addi	a3,a3,-00000040
	ori	a5,a5,+00000040
	c.sw	a4,0(a5)
	c.li	s2,00000000

l23053614:
	addi	a5,zero,+0000003F
	andi	a2,a3,+0000003F
	bgeu	a5,a3,000000002305365C

l23053620:
	lui	a5,00000F42
	addi	a5,a5,+00000400
	lui	a4,00040004

l2305362C:
	c.lw	a4,0(a1)
	c.addi	a5,FFFFFFFF
	c.beqz	a5,0000000023053596

l23053632:
	c.andi	a1,00000001
	c.bnez	a1,000000002305362C

l23053636:
	c.lw	s0,16(a5)
	srli	a1,a3,00000006
	andi	a3,a3,-00000040
	c.sw	a5,4(s1)
	c.lw	s0,16(a5)
	c.add	s1,a3
	sh	a1,a5,+00000002
	c.lw	a4,0(a5)
	ori	a5,a5,+00000002
	c.sw	a4,0(a5)
	c.lw	s0,16(a4)
	c.lw	a4,0(a5)
	ori	a5,a5,+00000040
	c.sw	a4,0(a5)

l2305365C:
	c.beqz	a2,0000000023053682

l2305365E:
	lui	a5,00000F42
	addi	a5,a5,+00000400
	lui	a3,00040004

l2305366A:
	c.lw	a3,0(a4)
	c.addi	a5,FFFFFFFF
	c.beqz	a5,0000000023053596

l23053670:
	c.andi	a4,00000001
	c.bnez	a4,000000002305366A

l23053674:
	c.lw	s0,8(a0)
	c.mv	a1,s1
	c.add	a0,s2
	auipc	ra,0001EFB9
	jalr	ra,ra,-0000014C

l23053682:
	lui	a5,00000F42
	addi	a5,a5,+00000400
	lui	a3,00040004

l2305368E:
	c.lw	a3,0(a4)
	c.addi	a5,FFFFFFFF
	c.beqz	a5,0000000023053596

l23053694:
	c.andi	a4,00000001
	c.bnez	a4,000000002305368E

l23053698:
	c.li	a0,00000000
	c.j	0000000023053598

l2305369C:
	c.li	a0,00000000
	c.jr	ra

;; Sec_Eng_SHA256_Link_Finish: 230536A0
;;   Called from:
;;     23035680 (in sha256_test_case0)
Sec_Eng_SHA256_Link_Finish proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	lw	a6,a0,+00000010
	lui	a5,00000F42
	addi	a5,a5,+00000400
	lw	s1,a6,+00000000
	lui	a3,00040004

l230536C0:
	c.lw	a3,0(a4)
	c.addi	a5,FFFFFFFF
	c.bnez	a5,00000000230536D6

l230536C6:
	c.li	a0,00000002

l230536C8:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l230536D6:
	c.andi	a4,00000001
	c.bnez	a4,00000000230536C0

l230536DA:
	sw	a6,a3,+00000050
	c.lw	a0,0(a3)
	c.lw	a0,4(a5)
	srli	a4,a3,0000001D
	c.slli	a5,03
	c.or	a5,a4
	srli	a6,a5,00000018
	sb	a6,sp,+00000008
	srli	a6,a5,00000010
	sb	a6,sp,+00000009
	slli	a6,a5,00000008
	c.slli	a5,10
	c.srli	a5,00000010
	c.srli	a5,00000008
	slli	a4,a3,00000003
	or	a5,a6,a5
	sh	a5,sp,+0000000A
	srli	a5,a4,00000018
	sb	a5,sp,+0000000C
	srli	a5,a4,00000010
	c.slli	a4,10
	c.srli	a4,00000010
	sb	a5,sp,+0000000D
	c.srli	a4,00000008
	slli	a5,a3,0000000B
	c.or	a4,a5
	sh	a4,sp,+0000000E
	andi	a3,a3,+0000003F
	addi	a5,zero,+00000037
	bltu	a5,a3,00000000230537AE

l2305373C:
	addi	a5,zero,+00000038

l23053740:
	c.mv	s2,a2
	c.lw	a0,12(a2)
	sub	a3,a5,a3
	c.mv	s3,a1
	c.mv	s0,a0
	jal	ra,0000000023053570
	lui	a5,00000F42
	addi	a5,a5,+00000400
	lui	a3,00040004

l2305375C:
	c.lw	a3,0(a4)
	c.addi	a5,FFFFFFFF
	c.beqz	a5,00000000230536C6

l23053762:
	c.andi	a4,00000001
	c.bnez	a4,000000002305375C

l23053766:
	c.li	a3,00000008
	c.addi4spn	a2,00000008
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,0000000023053570
	lui	a5,00000F42
	addi	a5,a5,+00000400
	lui	a3,00040004

l2305377E:
	c.lw	a3,0(a4)
	c.addi	a5,FFFFFFFF
	c.beqz	a5,00000000230536C6

l23053784:
	c.andi	a4,00000001
	c.bnez	a4,000000002305377E

l23053788:
	srli	a5,s1,00000002
	c.andi	a5,00000007
	c.li	a4,00000001
	c.lw	s0,16(a1)
	beq	a5,a4,00000000230537C6

l23053796:
	c.beqz	a5,00000000230537B4

l23053798:
	c.li	a4,00000003
	c.li	a2,00000014
	bgeu	a4,a5,00000000230537B8

l230537A0:
	c.lw	s0,16(a4)
	c.li	a0,00000000
	c.lw	a4,0(a5)
	andi	a5,a5,-00000041
	c.sw	a4,0(a5)
	c.j	00000000230536C8

l230537AE:
	addi	a5,zero,+00000078
	c.j	0000000023053740

l230537B4:
	addi	a2,zero,+00000020

l230537B8:
	c.addi	a1,00000008
	c.mv	a0,s2
	auipc	ra,0001EFB9
	jalr	ra,ra,-0000028E
	c.j	00000000230537A0

l230537C6:
	c.li	a2,0000001C
	c.j	00000000230537B8

;; Sec_Eng_AES_Enable_Link: 230537CA
;;   Called from:
;;     23034F08 (in Sec_Eng_AES_Link_Case_CBC_128)
;;     2303516E (in Sec_Eng_AES_Link_Case_CTR_128)
;;     230353DE (in Sec_Eng_AES_Link_Case_ECB_128)
Sec_Eng_AES_Enable_Link proc
	lui	a4,00040004
	lw	a5,a4,+00000100
	c.lui	a3,00008000
	c.or	a5,a3
	sw	a5,a4,+00000100
	c.jr	ra

;; Sec_Eng_AES_Disable_Link: 230537DC
;;   Called from:
;;     230350D2 (in Sec_Eng_AES_Link_Case_CBC_128)
;;     23035338 (in Sec_Eng_AES_Link_Case_CTR_128)
;;     2303544C (in Sec_Eng_AES_Link_Case_ECB_128)
Sec_Eng_AES_Disable_Link proc
	lui	a3,00040004
	lw	a5,a3,+00000100
	c.lui	a4,FFFF8000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	sw	a5,a3,+00000100
	c.jr	ra

;; Sec_Eng_AES_Link_Work: 230537F0
;;   Called from:
;;     23034F7E (in Sec_Eng_AES_Link_Case_CBC_128)
;;     23034FF4 (in Sec_Eng_AES_Link_Case_CBC_128)
;;     2303506A (in Sec_Eng_AES_Link_Case_CBC_128)
;;     230351E4 (in Sec_Eng_AES_Link_Case_CTR_128)
;;     2303525A (in Sec_Eng_AES_Link_Case_CTR_128)
;;     230352D0 (in Sec_Eng_AES_Link_Case_CTR_128)
;;     230353F8 (in Sec_Eng_AES_Link_Case_ECB_128)
;;     2303541E (in Sec_Eng_AES_Link_Case_ECB_128)
;;     2303543A (in Sec_Eng_AES_Link_Case_ECB_128)
Sec_Eng_AES_Link_Work proc
	andi	a0,a3,+0000000F
	andi	a5,a1,+00000003
	c.or	a5,a0
	c.li	a0,00000001
	c.bnez	a5,0000000023053866

l230537FE:
	lui	a5,00000F42
	addi	a5,a5,+00000400
	lui	a6,00040004

l2305380A:
	lw	a7,a6,+00000100
	c.addi	a5,FFFFFFFF
	addi	a0,a6,+00000100
	c.bnez	a5,000000002305381A

l23053816:
	c.li	a0,00000002
	c.jr	ra

l2305381A:
	andi	a7,a7,+00000001
	bne	a7,zero,000000002305380A

l23053822:
	sw	a1,a6,+00000150
	c.srli	a3,00000004
	c.sw	a1,4(a2)
	c.sw	a1,8(a4)
	sh	a3,a1,+00000002
	c.lw	a0,0(a5)
	ori	a5,a5,+00000004
	c.sw	a0,0(a5)
	c.lw	a0,0(a5)
	ori	a5,a5,+00000002
	c.sw	a0,0(a5)
	c.nop
	c.nop
	lui	a5,00000F42
	addi	a5,a5,+00000400
	lui	a3,00040004

l23053850:
	lw	a4,a3,+00000100
	c.addi	a5,FFFFFFFF
	c.beqz	a5,0000000023053816

l23053858:
	andi	a1,a4,+00000001
	c.bnez	a1,0000000023053850

l2305385E:
	c.andi	a4,FFFFFFFB
	sw	a4,a3,+00000100
	c.li	a0,00000000

l23053866:
	c.jr	ra

;; Sec_Eng_PKA_Reset: 23053868
;;   Called from:
;;     2303419E (in _pka_test_case_xgcd)
;;     23034452 (in _pka_test_case2)
Sec_Eng_PKA_Reset proc
	lui	a5,00040004
	sw	zero,a5,+00000300
	c.li	a4,00000008
	sw	a4,a5,+00000300
	c.jr	ra

;; Sec_Eng_PKA_BigEndian_Enable: 23053878
;;   Called from:
;;     230341A2 (in _pka_test_case_xgcd)
;;     23034456 (in _pka_test_case2)
Sec_Eng_PKA_BigEndian_Enable proc
	lui	a4,00040004
	lw	a5,a4,+00000300
	c.lui	a3,00001000
	c.or	a5,a3
	sw	a5,a4,+00000300
	c.jr	ra

;; Sec_Eng_PKA_Clear_Int: 2305388A
;;   Called from:
;;     230539C2 (in Sec_Eng_PKA_Read_Data)
;;     23053A2E (in Sec_Eng_PKA_CREG)
;;     23053A66 (in Sec_Eng_PKA_Move_Data)
;;     23053AB6 (in Sec_Eng_PKA_MREM)
;;     23053B24 (in Sec_Eng_PKA_MEXP)
;;     23053B62 (in Sec_Eng_PKA_LCMP)
;;     23053BC0 (in Sec_Eng_PKA_LSUB)
;;     23053C12 (in Sec_Eng_PKA_LMUL)
;;     23053C62 (in Sec_Eng_PKA_LDIV)
;;     23053CAA (in Sec_Eng_PKA_LMUL2N)
Sec_Eng_PKA_Clear_Int proc
	lui	a5,00040004
	lw	a4,a5,+00000300
	ori	a4,a4,+00000200
	sw	a4,a5,+00000300
	lw	a4,a5,+00000300
	andi	a4,a4,-00000201
	sw	a4,a5,+00000300
	c.jr	ra

;; Sec_Eng_PKA_Read_Block: 230538A8
;;   Called from:
;;     230539D2 (in Sec_Eng_PKA_Read_Data)
Sec_Eng_PKA_Read_Block proc
	c.andi	a2,FFFFFFFC
	c.li	a5,00000000

l230538AC:
	bne	a5,a2,00000000230538B2

l230538B0:
	c.jr	ra

l230538B2:
	c.lw	a1,0(a3)
	slli	a4,a5,00000002
	c.add	a4,a0
	c.sw	a4,0(a3)
	c.addi	a5,00000001
	c.j	00000000230538AC

;; Sec_Eng_PKA_Write_Block: 230538C0
;;   Called from:
;;     23053940 (in Sec_Eng_PKA_Write_Data)
Sec_Eng_PKA_Write_Block proc
	c.andi	a2,FFFFFFFC
	c.li	a5,00000000

l230538C4:
	bne	a5,a2,00000000230538CA

l230538C8:
	c.jr	ra

l230538CA:
	slli	a4,a5,00000002
	c.add	a4,a1
	c.lw	a4,0(a4)
	c.addi	a5,00000001
	c.sw	a0,0(a4)
	c.j	00000000230538C4

;; Sec_Eng_PKA_Write_Data: 230538D8
;;   Called from:
;;     230341B8 (in _pka_test_case_xgcd)
;;     230341E6 (in _pka_test_case_xgcd)
;;     2303425C (in _pka_test_case_xgcd)
;;     2303426E (in _pka_test_case_xgcd)
;;     23034280 (in _pka_test_case_xgcd)
;;     23034292 (in _pka_test_case_xgcd)
;;     23034412 (in _pka_test_case_xgcd)
;;     2303446C (in _pka_test_case2)
;;     23034482 (in _pka_test_case2)
;;     23034498 (in _pka_test_case2)
;;     230344AC (in _pka_test_case2)
;;     23034532 (in _pka_test_case2)
Sec_Eng_PKA_Write_Data proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a2
	addi	a2,a0,-00000001
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	andi	a2,a2,+000000FF
	c.li	a5,00000009
	c.li	a6,00000000
	bltu	a5,a2,0000000023053902

l230538F2:
	lui	a6,00023088
	addi	a6,a6,+0000067C
	c.slli	a2,01
	c.add	a2,a6
	lhu	a6,a2,+00000000

l23053902:
	slli	a5,a3,00000014
	c.slli	a1,0C
	c.srli	a5,00000014
	c.andi	a0,0000000F
	c.slli	a0,14
	c.or	a5,a1
	c.or	a5,a0
	lui	a2,00039000
	c.slli	a4,1F
	c.or	a5,a2
	c.or	a5,a4
	lui	a4,00040004
	srli	a6,a6,00000002
	sw	a5,a4,+00000340
	c.mv	s0,a6
	bgeu	a3,a6,0000000023053930

l2305392E:
	c.mv	s0,a3

l23053930:
	c.slli	s0,10
	c.srli	s0,00000010
	lui	a0,00040004
	c.mv	a2,s0
	c.mv	a1,s1
	addi	a0,a0,+00000340
	jal	ra,00000000230538C0
	andi	a5,s0,-00000004
	lui	a3,00040004

l2305394C:
	blt	a5,s0,000000002305395A

l23053950:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2305395A:
	slli	a4,a5,00000002
	c.add	a4,s1
	c.lw	a4,0(a4)
	c.addi	a5,00000001
	sw	a4,a3,+00000340
	c.j	000000002305394C

;; Sec_Eng_PKA_Read_Data: 2305396A
;;   Called from:
;;     23034326 (in _pka_test_case_xgcd)
;;     23034588 (in _pka_test_case2)
Sec_Eng_PKA_Read_Data proc
	addi	a5,a0,-00000001
	andi	a5,a5,+000000FF
	c.li	a6,00000009
	c.li	a4,00000000
	bltu	a6,a5,000000002305398A

l2305397A:
	lui	a4,00023088
	addi	a4,a4,+0000067C
	c.slli	a5,01
	c.add	a5,a4
	lhu	a4,a5,+00000000

l2305398A:
	c.srli	a4,00000002
	bltu	a4,a3,00000000230539FC

l23053990:
	c.slli	a1,0C
	andi	a5,a0,+0000000F
	slli	a0,a5,00000014
	or	a5,a3,a1
	c.addi	sp,FFFFFFF0
	c.or	a5,a0
	lui	a4,000B8000
	c.swsp	ra,00000084
	c.or	a5,a4
	c.swsp	s0,00000004
	lui	a4,00040004
	c.swsp	s1,00000080
	sw	a5,a4,+00000340
	sw	zero,a4,+00000340
	c.mv	s0,a3
	c.mv	s1,a2
	jal	ra,0000000023053136
	jal	ra,000000002305388A
	lui	a5,00040004
	addi	a1,a5,+00000340
	c.mv	a2,s0
	c.mv	a0,s1
	jal	ra,00000000230538A8
	andi	a5,s0,-00000004
	lui	a3,00040004

l230539DE:
	blt	a5,s0,00000000230539EC

l230539E2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230539EC:
	lw	a2,a3,+00000340
	slli	a4,a5,00000002
	c.add	a4,s1
	c.sw	a4,0(a2)
	c.addi	a5,00000001
	c.j	00000000230539DE

l230539FC:
	c.jr	ra

;; Sec_Eng_PKA_CREG: 230539FE
;;   Called from:
;;     230341C4 (in _pka_test_case_xgcd)
;;     230341D0 (in _pka_test_case_xgcd)
;;     2303422A (in _pka_test_case_xgcd)
;;     230344B8 (in _pka_test_case2)
;;     230344C4 (in _pka_test_case2)
;;     230344F6 (in _pka_test_case2)
;;     2303453E (in _pka_test_case2)
;;     2303454A (in _pka_test_case2)
;;     2303457A (in _pka_test_case2)
Sec_Eng_PKA_CREG proc
	c.slli	a1,0C
	c.andi	a0,0000000F
	c.or	a2,a1
	c.slli	a0,14
	c.or	a2,a0
	lui	a1,00035000
	slli	a5,a3,0000001F
	c.or	a2,a1
	c.or	a2,a5
	lui	a5,00040004
	sw	a2,a5,+00000340
	sw	zero,a5,+00000340
	c.beqz	a3,0000000023053A32

l23053A22:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023053136
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002305388A

l23053A32:
	c.jr	ra

;; Sec_Eng_PKA_Move_Data: 23053A34
;;   Called from:
;;     23034238 (in _pka_test_case_xgcd)
;;     23034246 (in _pka_test_case_xgcd)
;;     230342E8 (in _pka_test_case_xgcd)
;;     230342F6 (in _pka_test_case_xgcd)
;;     23034304 (in _pka_test_case_xgcd)
;;     23034312 (in _pka_test_case_xgcd)
;;     230343BA (in _pka_test_case_xgcd)
;;     230343C8 (in _pka_test_case_xgcd)
;;     230343D6 (in _pka_test_case_xgcd)
;;     230343E4 (in _pka_test_case_xgcd)
;;     230343F2 (in _pka_test_case_xgcd)
;;     23034400 (in _pka_test_case_xgcd)
;;     2303451C (in _pka_test_case2)
Sec_Eng_PKA_Move_Data proc
	c.addi	sp,FFFFFFF0
	c.mv	a7,a2
	c.mv	a6,a3
	c.mv	a5,a4
	c.swsp	s0,00000004
	c.mv	a3,a0
	c.mv	a2,a1
	c.mv	s0,a4
	c.mv	a1,a7
	addi	a4,zero,+00000032
	c.mv	a0,a6
	c.swsp	ra,00000084
	jal	ra,00000000230530FE
	lui	a5,00040004
	sw	zero,a5,+00000340
	c.beqz	s0,0000000023053A6A

l23053A5C:
	jal	ra,0000000023053136
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002305388A

l23053A6A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; Sec_Eng_PKA_MREM: 23053A72
;;   Called from:
;;     2303421E (in _pka_test_case_xgcd)
;;     23034364 (in _pka_test_case_xgcd)
;;     230344EA (in _pka_test_case2)
;;     2303456E (in _pka_test_case2)
Sec_Eng_PKA_MREM proc
	c.addi	sp,FFFFFFE0
	c.mv	t1,a2
	c.mv	a7,a3
	c.swsp	s0,0000000C
	c.mv	s0,a4
	c.swsp	s1,00000088
	c.mv	a3,a0
	c.mv	s1,a5
	c.mv	a2,a1
	c.mv	a5,a6
	addi	a4,zero,+00000026
	c.mv	a1,t1
	c.mv	a0,a7
	c.andi	s0,0000000F
	c.swsp	a6,00000084
	c.swsp	ra,0000008C
	c.slli	s0,08
	jal	ra,00000000230530FE
	c.or	s0,s1
	lui	a5,00040004
	sw	s0,a5,+00000340
	c.lwsp	a2,00000008
	beq	a6,zero,0000000023053ABA

l23053AAA:
	jal	ra,0000000023053136
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002305388A

l23053ABA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; Sec_Eng_PKA_MEXP: 23053AC4
;;   Called from:
;;     2303450E (in _pka_test_case2)
Sec_Eng_PKA_MEXP proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lbu	s2,sp,+00000020
	c.mv	t3,a2
	c.mv	t1,a3
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a5
	c.mv	s1,a4
	c.mv	a5,s2
	c.mv	a3,a0
	c.mv	a2,a1
	addi	a4,zero,+00000023
	c.mv	a1,t3
	c.mv	a0,t1
	c.swsp	a6,00000084
	c.swsp	a7,00000004
	c.swsp	ra,0000008C
	jal	ra,00000000230530FE
	c.lwsp	a2,00000008
	c.lwsp	s0,00000028
	c.andi	s1,0000000F
	c.slli	s1,14
	c.slli	s0,0C
	c.or	s0,s1
	andi	a6,a6,+0000000F
	c.slli	a6,08
	or	s0,s0,a7
	or	s0,s0,a6
	lui	a5,00040004
	sw	s0,a5,+00000340
	beq	s2,zero,0000000023053B28

l23053B16:
	jal	ra,0000000023053136
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,000000002305388A

l23053B28:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; Sec_Eng_PKA_LCMP: 23053B34
;;   Called from:
;;     23034422 (in _pka_test_case_xgcd)
Sec_Eng_PKA_LCMP proc
	c.andi	a1,0000000F
	c.slli	a1,08
	c.addi	sp,FFFFFFF0
	c.or	a1,a2
	c.andi	a3,0000000F
	lui	a2,00099000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	lui	s0,00040004
	c.or	a1,a2
	c.slli	a3,14
	c.slli	a4,0C
	sw	a1,s0,+00000340
	c.or	a4,a3
	sw	a4,s0,+00000340
	c.mv	s1,a0
	jal	ra,0000000023053136
	jal	ra,000000002305388A
	lw	a5,s0,+00000300
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.srli	a5,00000018
	c.andi	a5,00000001
	sb	a5,s1,+00000000
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; Sec_Eng_PKA_LSUB: 23053B7C
;;   Called from:
;;     230342B6 (in _pka_test_case_xgcd)
;;     230342DA (in _pka_test_case_xgcd)
;;     23034388 (in _pka_test_case_xgcd)
;;     230343AC (in _pka_test_case_xgcd)
Sec_Eng_PKA_LSUB proc
	c.addi	sp,FFFFFFE0
	c.mv	t1,a2
	c.mv	a7,a3
	c.swsp	s1,00000088
	c.mv	s1,a4
	c.swsp	s0,0000000C
	c.mv	a3,a0
	c.mv	s0,a5
	c.mv	a2,a1
	c.mv	a5,a6
	c.li	a4,00000017
	c.mv	a1,t1
	c.mv	a0,a7
	c.andi	s1,0000000F
	c.swsp	a6,00000084
	c.swsp	ra,0000008C
	c.slli	s1,14
	jal	ra,00000000230530FE
	c.slli	s0,0C
	c.or	s0,s1
	lui	a5,00040004
	sw	s0,a5,+00000340
	c.lwsp	a2,00000008
	beq	a6,zero,0000000023053BC4

l23053BB4:
	jal	ra,0000000023053136
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002305388A

l23053BC4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; Sec_Eng_PKA_LMUL: 23053BCE
;;   Called from:
;;     230342A4 (in _pka_test_case_xgcd)
;;     230342C8 (in _pka_test_case_xgcd)
;;     23034376 (in _pka_test_case_xgcd)
;;     2303439A (in _pka_test_case_xgcd)
;;     2303455C (in _pka_test_case2)
Sec_Eng_PKA_LMUL proc
	c.addi	sp,FFFFFFE0
	c.mv	t1,a2
	c.mv	a7,a3
	c.swsp	s1,00000088
	c.mv	s1,a4
	c.swsp	s0,0000000C
	c.mv	a3,a0
	c.mv	s0,a5
	c.mv	a2,a1
	c.mv	a5,a6
	c.li	a4,00000016
	c.mv	a1,t1
	c.mv	a0,a7
	c.andi	s1,0000000F
	c.swsp	a6,00000084
	c.swsp	ra,0000008C
	c.slli	s1,14
	jal	ra,00000000230530FE
	c.slli	s0,0C
	c.or	s0,s1
	lui	a5,00040004
	sw	s0,a5,+00000340
	c.lwsp	a2,00000008
	beq	a6,zero,0000000023053C16

l23053C06:
	jal	ra,0000000023053136
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002305388A

l23053C16:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; Sec_Eng_PKA_LDIV: 23053C20
;;   Called from:
;;     2303420C (in _pka_test_case_xgcd)
;;     23034352 (in _pka_test_case_xgcd)
Sec_Eng_PKA_LDIV proc
	c.addi	sp,FFFFFFE0
	c.mv	t1,a2
	c.mv	a7,a3
	c.swsp	s0,0000000C
	c.mv	s0,a4
	c.swsp	s1,00000088
	c.mv	a3,a0
	c.mv	s1,a5
	c.mv	a2,a1
	c.mv	a5,a6
	c.li	a4,00000014
	c.mv	a1,t1
	c.mv	a0,a7
	c.andi	s0,0000000F
	c.swsp	a6,00000084
	c.swsp	ra,0000008C
	c.slli	s0,08
	jal	ra,00000000230530FE
	c.or	s0,s1
	lui	a5,00040004
	sw	s0,a5,+00000340
	c.lwsp	a2,00000008
	beq	a6,zero,0000000023053C66

l23053C56:
	jal	ra,0000000023053136
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002305388A

l23053C66:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; Sec_Eng_PKA_LMUL2N: 23053C70
;;   Called from:
;;     230341FA (in _pka_test_case_xgcd)
;;     230344D8 (in _pka_test_case2)
Sec_Eng_PKA_LMUL2N proc
	c.addi	sp,FFFFFFF0
	c.mv	a7,a2
	c.mv	a6,a3
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a4
	c.mv	a3,a0
	c.mv	a2,a1
	c.mv	s1,a5
	c.li	a4,00000013
	c.li	a5,00000000
	c.mv	a1,a7
	c.mv	a0,a6
	c.swsp	ra,00000084
	c.slli	s0,11
	jal	ra,00000000230530FE
	c.srli	s0,00000011
	lui	a5,00040004
	sw	s0,a5,+00000340
	c.beqz	s1,0000000023053CAE

l23053C9E:
	jal	ra,0000000023053136
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002305388A

l23053CAE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; SEC_Eng_IntMask: 23053CB8
;;   Called from:
;;     23033F70 (in bl_sec_pka_IRQHandler)
SEC_Eng_IntMask proc
	c.li	a5,00000006
	bltu	a5,a0,0000000023053DAE

l23053CBE:
	lui	a5,00023088
	addi	a5,a5,+00000660
	c.slli	a0,02
	c.add	a0,a5
	c.lw	a0,0(a5)
	c.jr	a5
23053CCE                                           37 47               7G
23053CD0 00 40 83 27 07 20 81 E9 FD 76 93 86 F6 7F F5 8F .@.'. ...v......
23053CE0 23 20 F7 20 82 80 85 66 93 86 06 80 D5 8F CD BF # . ...f........
23053CF0 37 47 00 40 83 27 07 10 81 E9 FD 76 93 86 F6 7F 7G.@.'.....v....
23053D00 F5 8F 23 20 F7 10 82 80 85 66 93 86 06 80 D5 8F ..# .....f......
23053D10 CD BF 37 47 00 40 1C 43 99 E5 FD 76 93 86 F6 7F ..7G.@.C...v....
23053D20 F5 8F 1C C3 82 80 85 66 93 86 06 80 D5 8F D5 BF .......f........
23053D30 37 47 00 40 83 27 07 30 81 E9 FD 76 93 86 F6 7F 7G.@.'.0...v....
23053D40 F5 8F 23 20 F7 30 82 80 85 66 93 86 06 80 D5 8F ..# .0...f......
23053D50 CD BF 37 47 00 40 83 27 07 50 81 E9 FD 76 93 86 ..7G.@.'.P...v..
23053D60 F6 7F F5 8F 23 20 F7 50 82 80 85 66 93 86 06 80 ....# .P...f....
23053D70 D5 8F CD BF B7 47 00 40 83 A6 07 20 95 E9 7D 77 .....G.@... ..}w
23053D80 13 07 F7 7F F9 8E 23 A0 D7 20 83 A6 07 10 F9 8E ......#.. ......
23053D90 23 A0 D7 10 94 43 F9 8E 94 C3 83 A6 07 30 F9 8E #....C.......0..
23053DA0 23 A0 D7 30 83 A6 07 50 75 8F 23 A0 E7 50       #..0...Pu.#..P 

l23053DAE:
	c.jr	ra
23053DB0 05 67 13 07 07 80 D9 8E 23 A0 D7 20 83 A6 07 10 .g......#.. ....
23053DC0 D9 8E 23 A0 D7 10 94 43 D9 8E 94 C3 83 A6 07 30 ..#....C.......0
23053DD0 D9 8E 23 A0 D7 30 83 A6 07 50 55 8F F9 B7       ..#..0...PU... 

;; DMA_Enable: 23053DDE
;;   Called from:
;;     230337CE (in bl_dma_init)
DMA_Enable proc
	lui	a4,0004000C
	c.lw	a4,48(a5)
	ori	a5,a5,+00000001
	c.sw	a4,48(a5)
	c.jr	ra

;; DMA_Channel_Enable: 23053DEC
;;   Called from:
;;     23033544 (in bl_dma_IRQHandler)
;;     23033576 (in bl_dma_copy)
DMA_Channel_Enable proc
	lui	a5,0004000C
	addi	a5,a5,+00000110
	c.slli	a0,08
	c.add	a0,a5
	c.lw	a0,0(a5)
	ori	a5,a5,+00000001
	c.sw	a0,0(a5)
	c.jr	ra

;; DMA_LLI_Init: 23053E02
;;   Called from:
;;     230337F4 (in bl_dma_init)
DMA_LLI_Init proc
	lui	a5,0004000C
	addi	a5,a5,+00000110
	c.slli	a0,08
	c.add	a0,a5
	c.lw	a0,0(a5)
	c.lui	a4,FFFFC000
	addi	a4,a4,+000007FF
	c.and	a4,a5
	lbu	a5,a1,+00000000
	c.slli	a5,0B
	c.or	a5,a4
	lbu	a4,a1,+00000002
	andi	a5,a5,-000007FF
	c.slli	a4,06
	c.or	a5,a4
	lbu	a4,a1,+00000001
	c.slli	a4,01
	c.or	a5,a4
	c.sw	a0,0(a5)
	c.jr	ra

;; DMA_LLI_Update: 23053E38
;;   Called from:
;;     23033538 (in bl_dma_IRQHandler)
;;     23033570 (in bl_dma_copy)
DMA_LLI_Update proc
	lui	a5,0004000C
	c.slli	a0,08
	addi	a5,a5,+00000100
	c.li	a2,00000004
	c.add	a0,a5
	auipc	t1,0001EFB8
	jalr	zero,t1,+000006DE

;; DMA_IntMask: 23053E4E
;;   Called from:
;;     230337D8 (in bl_dma_init)
;;     230337E2 (in bl_dma_init)
;;     230337EC (in bl_dma_init)
DMA_IntMask proc
	c.li	a5,00000001
	c.slli	a0,08
	beq	a1,a5,0000000023053E84

l23053E56:
	c.beqz	a1,0000000023053E60

l23053E58:
	c.li	a5,00000002
	beq	a1,a5,0000000023053EA2

l23053E5E:
	c.jr	ra

l23053E60:
	lui	a4,0004000C
	addi	a5,a4,+00000110
	c.add	a5,a0
	addi	a4,a4,+0000010C
	c.add	a0,a4
	c.lw	a5,0(a4)
	c.lui	a3,FFFF8000
	c.beqz	a2,0000000023053EB8

l23053E76:
	c.lui	a3,00008000

l23053E78:
	c.or	a4,a3
	c.sw	a5,0(a4)
	c.lw	a0,0(a5)
	c.slli	a5,01
	c.srli	a5,00000001
	c.j	0000000023053E98

l23053E84:
	lui	a5,0004000C
	addi	a5,a5,+00000110
	c.add	a0,a5
	c.lw	a0,0(a5)
	c.bnez	a2,0000000023053E9C

l23053E92:
	c.lui	a4,FFFFC000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4

l23053E98:
	c.sw	a0,0(a5)
	c.jr	ra

l23053E9C:
	c.lui	a4,00004000

l23053E9E:
	c.or	a5,a4
	c.j	0000000023053E98

l23053EA2:
	lui	a4,0004000C
	addi	a5,a4,+00000110
	c.add	a5,a0
	addi	a4,a4,+0000010C
	c.add	a0,a4
	c.lw	a5,0(a4)
	c.bnez	a2,0000000023053EC6

l23053EB6:
	c.lui	a3,FFFF4000

l23053EB8:
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	c.sw	a5,0(a4)
	c.lw	a0,0(a5)
	lui	a4,00080000
	c.j	0000000023053E9E

l23053EC6:
	c.lui	a3,0000C000
	c.j	0000000023053E78

;; Default_Handler: 23053ECA
;;   Called from:
;;     230547FC (in SPI_IRQHandler)
Default_Handler proc
	lui	a0,00023088
	addi	a0,a0,+00000690
	jal	zero,0000000023054764

;; GLB_Set_UART_CLK: 23053ED6
;;   Called from:
;;     23032554 (in bl_uart_init)
GLB_Set_UART_CLK proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lui	s0,00040000
	c.lw	s0,8(a5)
	c.mv	s1,a0
	c.mv	a0,a1
	c.andi	a5,FFFFFFEF
	c.sw	s0,8(a5)
	c.lw	s0,8(a5)
	c.andi	a5,FFFFFFF8
	c.or	a2,a5
	c.sw	s0,8(a2)
	c.jal	0000000023053FC2
	c.lw	s0,8(a4)
	ori	a5,a4,+00000010
	c.bnez	s1,0000000023053F02

l23053EFE:
	andi	a5,a4,-00000011

l23053F02:
	lui	a4,00040000
	c.sw	a4,8(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; GLB_Set_ADC_CLK: 23053F14
;;   Called from:
;;     23038DD8 (in bl_tsen_adc_get)
GLB_Set_ADC_CLK proc
	lui	a4,00040000
	lw	a5,a4,+000000A4
	c.slli	a1,07
	andi	a5,a5,-00000101
	sw	a5,a4,+000000A4
	lw	a5,a4,+000000A4
	andi	a5,a5,-00000040
	c.or	a2,a5
	andi	a2,a2,-00000081
	c.or	a2,a1
	sw	a2,a4,+000000A4
	lw	a4,a4,+000000A4
	andi	a5,a4,-00000101
	c.beqz	a0,0000000023053F48

l23053F44:
	ori	a5,a4,+00000100

l23053F48:
	lui	a4,00040000
	sw	a5,a4,+000000A4
	c.li	a0,00000000
	c.jr	ra

;; GLB_UART_Fun_Sel: 23053F54
;;   Called from:
;;     2303259C (in bl_uart_init)
;;     230325A6 (in bl_uart_init)
GLB_UART_Fun_Sel proc
	lui	a4,00040000
	lw	a3,a4,+000000C0
	c.slli	a0,02
	c.li	a5,0000000F
	sll	a5,a5,a0
	xori	a5,a5,-00000001
	sll	a0,a1,a0
	c.and	a5,a3
	c.or	a5,a0
	sw	a5,a4,+000000C0
	c.li	a0,00000000
	c.jr	ra

;; GLB_GPIO_Write: 23053F78
;;   Called from:
;;     23039162 (in bl_gpio_output_set)
GLB_GPIO_Write proc
	srli	a5,a0,00000005
	lui	a4,00040000
	addi	a4,a4,+00000188
	c.slli	a5,02
	c.add	a5,a4
	c.li	a4,00000001
	c.lw	a5,0(a3)
	sll	a0,a4,a0
	c.beqz	a1,0000000023053F9A

l23053F92:
	c.or	a0,a3

l23053F94:
	c.sw	a5,0(a0)
	c.li	a0,00000000
	c.jr	ra

l23053F9A:
	xori	a0,a0,-00000001
	c.and	a0,a3
	c.j	0000000023053F94

;; GLB_GPIO_Read: 23053FA2
;;   Called from:
;;     23039174 (in bl_gpio_input_get)
GLB_GPIO_Read proc
	srli	a4,a0,00000005
	slli	a3,a4,00000002
	lui	a4,00040000
	c.add	a4,a3
	c.li	a5,00000001
	sll	a0,a5,a0
	lw	a5,a4,+00000180
	c.and	a0,a5
	sltu	a0,zero,a0
	c.jr	ra

;; HBN_Set_UART_CLK_Sel: 23053FC2
;;   Called from:
;;     23053EF4 (in GLB_Set_UART_CLK)
HBN_Set_UART_CLK_Sel proc
	lui	a4,0004000F
	c.lw	a4,48(a5)
	c.slli	a0,02
	c.andi	a5,FFFFFFFB
	c.or	a0,a5
	c.sw	a4,48(a0)
	c.li	a0,00000000
	c.jr	ra

;; HBN_Get_RTC_Timer_Val: 23053FD4
;;   Called from:
;;     23038EC6 (in bl_rtc_get_counter)
HBN_Get_RTC_Timer_Val proc
	lui	a5,0004000F
	c.lw	a5,16(a4)
	lui	a3,00080000
	or	a2,a4,a3
	xori	a3,a3,-00000001
	c.sw	a5,16(a2)
	c.and	a4,a3
	c.sw	a5,16(a4)
	c.lw	a5,12(a4)
	c.sw	a0,0(a4)
	c.lw	a5,16(a5)
	c.li	a0,00000000
	andi	a5,a5,+000000FF
	c.sw	a1,0(a5)
	c.jr	ra

;; TIMER_SetCompValue: 23053FFC
;;   Called from:
;;     230540D2 (in TIMER_Init)
;;     230540DC (in TIMER_Init)
;;     230540E6 (in TIMER_Init)
TIMER_SetCompValue proc
	c.li	a5,00000003
	add	a5,a0,a5
	lui	a0,0004000A
	addi	a0,a0,+00000510
	c.add	a5,a1
	c.slli	a5,02
	c.add	a5,a0
	c.sw	a5,0(a2)
	c.jr	ra

;; TIMER_SetCountMode: 23054014
;;   Called from:
;;     230540A6 (in TIMER_Init)
TIMER_SetCountMode proc
	lui	a4,0004000A
	lw	a3,a4,+00000588
	c.addi	a0,00000001
	c.li	a5,00000001
	sll	a5,a5,a0
	xori	a5,a5,-00000001
	c.and	a5,a3
	sll	a0,a1,a0
	c.or	a5,a0
	sw	a5,a4,+00000588
	c.jr	ra

;; TIMER_ClearIntStatus: 23054036
;;   Called from:
;;     23034730 (in int_timer_cb)
;;     230347A0 (in bl_timer_tick_enable)
;;     230347AA (in bl_timer_tick_enable)
;;     230347B4 (in bl_timer_tick_enable)
TIMER_ClearIntStatus proc
	lui	a5,0004000A
	addi	a5,a5,+00000578
	c.slli	a0,02
	c.add	a0,a5
	c.lw	a0,0(a4)
	c.li	a5,00000001
	sll	a1,a5,a1
	c.or	a1,a4
	c.sw	a0,0(a1)
	c.jr	ra

;; TIMER_Init: 23054050
;;   Called from:
;;     23034796 (in bl_timer_tick_enable)
TIMER_Init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lui	a5,0004000A
	lbu	s1,a0,+00000000
	lw	a5,a5,+00000500
	c.mv	s0,a0
	lbu	a4,a0,+00000001
	c.bnez	s1,00000000230540F8

l2305406E:
	andi	a3,a5,-0000000D
	slli	a5,a4,00000002

l23054076:
	lui	a4,0004000A
	c.or	a5,a3
	sw	a5,a4,+00000500
	lw	a5,a4,+000005BC
	lbu	a4,s0,+00000004
	c.bnez	s1,0000000023054102

l2305408A:
	c.lui	a3,FFFF0000
	addi	a3,a3,+000000FF
	c.and	a3,a5
	slli	a5,a4,00000008

l23054096:
	c.or	a5,a3
	lui	s2,0004000A
	sw	a5,s2,+000005BC
	lbu	a1,s0,+00000003
	c.mv	a0,s1
	jal	ra,0000000023054014
	lbu	a3,s0,+00000002
	slli	a5,s1,00000002
	addi	a4,s2,+0000055C
	c.add	a4,a5
	c.sw	a4,0(a3)
	lbu	a4,s0,+00000003
	c.bnez	a4,00000000230540CC

l230540C0:
	c.lw	s0,20(a4)
	addi	s2,s2,+00000550
	c.add	s2,a5
	sw	a4,s2,+00000000

l230540CC:
	c.lw	s0,8(a2)
	c.mv	a0,s1
	c.li	a1,00000000
	jal	ra,0000000023053FFC
	c.lw	s0,12(a2)
	c.mv	a0,s1
	c.li	a1,00000001
	jal	ra,0000000023053FFC
	c.lw	s0,16(a2)
	c.mv	a0,s1
	c.li	a1,00000002
	jal	ra,0000000023053FFC
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230540F8:
	andi	a3,a5,-00000061
	slli	a5,a4,00000005
	c.j	0000000023054076

l23054102:
	lui	a3,000FF010
	c.addi	a3,FFFFFFFF
	c.and	a3,a5
	slli	a5,a4,00000010
	c.j	0000000023054096

;; TIMER_Enable: 23054110
;;   Called from:
;;     230347E0 (in bl_timer_tick_enable)
TIMER_Enable proc
	lui	a4,0004000A
	lw	a3,a4,+00000584
	c.addi	a0,00000001
	c.li	a5,00000001
	sll	a5,a5,a0
	c.or	a5,a3
	sw	a5,a4,+00000584
	c.jr	ra

;; TIMER_Disable: 23054128
;;   Called from:
;;     23034790 (in bl_timer_tick_enable)
TIMER_Disable proc
	lui	a4,0004000A
	lw	a3,a4,+00000584
	c.addi	a0,00000001
	c.li	a5,00000001
	sll	a5,a5,a0
	xori	a5,a5,-00000001
	c.and	a5,a3
	sw	a5,a4,+00000584
	c.jr	ra

;; TIMER_IntMask: 23054144
;;   Called from:
;;     23034788 (in bl_timer_tick_enable)
;;     230347C0 (in bl_timer_tick_enable)
;;     230347CC (in bl_timer_tick_enable)
;;     230347D8 (in bl_timer_tick_enable)
TIMER_IntMask proc
	lui	a5,0004000A
	addi	a5,a5,+00000544
	c.slli	a0,02
	c.add	a0,a5
	c.lw	a0,0(a5)
	c.li	a4,00000001
	beq	a1,a4,0000000023054176

l23054158:
	c.beqz	a1,0000000023054168

l2305415A:
	c.li	a4,00000002
	beq	a1,a4,0000000023054182

l23054160:
	c.li	a4,00000003
	beq	a1,a4,000000002305418A

l23054166:
	c.jr	ra

l23054168:
	c.bnez	a2,0000000023054172

l2305416A:
	ori	a5,a5,+00000001

l2305416E:
	c.sw	a0,0(a5)
	c.jr	ra

l23054172:
	c.andi	a5,FFFFFFFE
	c.j	000000002305416E

l23054176:
	c.bnez	a2,000000002305417E

l23054178:
	ori	a5,a5,+00000002
	c.j	000000002305416E

l2305417E:
	c.andi	a5,FFFFFFFD
	c.j	000000002305416E

l23054182:
	c.bnez	a2,00000000230541A6

l23054184:
	ori	a5,a5,+00000004
	c.j	000000002305416E

l2305418A:
	c.bnez	a2,000000002305419A

l2305418C:
	ori	a4,a5,+00000001
	c.sw	a0,0(a4)
	ori	a4,a5,+00000002
	c.sw	a0,0(a4)
	c.j	0000000023054184

l2305419A:
	andi	a4,a5,-00000002
	c.sw	a0,0(a4)
	andi	a4,a5,-00000003
	c.sw	a0,0(a4)

l230541A6:
	c.andi	a5,FFFFFFFB
	c.j	000000002305416E

;; WDT_Set_Clock: 230541AA
;;   Called from:
;;     23039448 (in bl_wdt_init)
WDT_Set_Clock proc
	lui	a4,0004000A
	lw	a5,a4,+00000500
	c.slli	a0,08
	c.slli	a1,18
	andi	a5,a5,-00000301
	c.or	a0,a5
	sw	a0,a4,+00000500
	lw	a5,a4,+000005BC
	c.slli	a5,08
	c.srli	a5,00000008
	c.or	a5,a1
	sw	a5,a4,+000005BC
	c.jr	ra

;; WDT_SetCompValue: 230541D0
;;   Called from:
;;     23039454 (in bl_wdt_init)
WDT_SetCompValue proc
	lui	a5,0004000A
	lw	a3,a5,+0000059C
	c.lui	a1,FFFF0000
	c.lui	a2,0000C000
	c.and	a3,a1
	addi	a2,a2,-00000546
	c.or	a3,a2
	sw	a3,a5,+0000059C
	lw	a4,a5,+000005A0
	c.lui	a3,0000F000
	addi	a3,a3,-000004F0
	c.and	a4,a1
	c.or	a4,a3
	sw	a4,a5,+000005A0
	sw	a0,a5,+00000568
	c.jr	ra

;; WDT_ResetCounterValue: 23054200
;;   Called from:
;;     23039428 (in bl_wdt_feed)
;;     23039458 (in bl_wdt_init)
WDT_ResetCounterValue proc
	lui	a5,0004000A
	lw	a3,a5,+0000059C
	c.lui	a1,FFFF0000
	c.lui	a2,0000C000
	c.and	a3,a1
	addi	a2,a2,-00000546
	c.or	a3,a2
	sw	a3,a5,+0000059C
	lw	a4,a5,+000005A0
	c.lui	a3,0000F000
	addi	a3,a3,-000004F0
	c.and	a4,a1
	c.or	a4,a3
	sw	a4,a5,+000005A0
	lw	a4,a5,+00000598
	ori	a4,a4,+00000001
	sw	a4,a5,+00000598
	c.jr	ra

;; WDT_Enable: 23054238
;;   Called from:
;;     23039464 (in bl_wdt_init)
WDT_Enable proc
	lui	a5,0004000A
	lw	a3,a5,+0000059C
	c.lui	a1,FFFF0000
	c.lui	a2,0000C000
	c.and	a3,a1
	addi	a2,a2,-00000546
	c.or	a3,a2
	sw	a3,a5,+0000059C
	lw	a4,a5,+000005A0
	c.lui	a3,0000F000
	addi	a3,a3,-000004F0
	c.and	a4,a1
	c.or	a4,a3
	sw	a4,a5,+000005A0
	lw	a4,a5,+00000564
	ori	a4,a4,+00000001
	sw	a4,a5,+00000564
	c.jr	ra

;; WDT_Disable: 23054270
;;   Called from:
;;     2303942C (in bl_wdt_disable)
;;     23039440 (in bl_wdt_init)
WDT_Disable proc
	lui	a5,0004000A
	lw	a3,a5,+0000059C
	c.lui	a1,FFFF0000
	c.lui	a2,0000C000
	c.and	a3,a1
	addi	a2,a2,-00000546
	c.or	a3,a2
	sw	a3,a5,+0000059C
	lw	a4,a5,+000005A0
	c.lui	a3,0000F000
	addi	a3,a3,-000004F0
	c.and	a4,a1
	c.or	a4,a3
	sw	a4,a5,+000005A0
	lw	a4,a5,+00000564
	c.andi	a4,FFFFFFFE
	sw	a4,a5,+00000564
	c.jr	ra

;; WDT_IntMask: 230542A6
;;   Called from:
;;     23039460 (in bl_wdt_init)
WDT_IntMask proc
	lui	a5,0004000A
	lw	a3,a5,+0000059C
	c.lui	a6,FFFF0000
	c.lui	a2,0000C000
	and	a3,a3,a6
	addi	a2,a2,-00000546
	c.or	a3,a2
	sw	a3,a5,+0000059C
	lw	a4,a5,+000005A0
	c.lui	a3,0000F000
	addi	a3,a3,-000004F0
	and	a4,a4,a6
	c.or	a4,a3
	sw	a4,a5,+000005A0
	lw	a4,a5,+00000564
	c.bnez	a0,00000000230542E2

l230542DA:
	c.bnez	a1,00000000230542E4

l230542DC:
	c.andi	a4,FFFFFFFD

l230542DE:
	sw	a4,a5,+00000564

l230542E2:
	c.jr	ra

l230542E4:
	ori	a4,a4,+00000002
	c.j	00000000230542DE

;; EF_Ctrl_Get_Byte_Zero_Cnt: 230542EA
;;   Called from:
;;     2305435A (in EF_Ctrl_Read_MAC_Address)
;;     2305449C (in EF_Ctrl_Read_MAC_Address_Opt)
EF_Ctrl_Get_Byte_Zero_Cnt proc
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a2,00000008

l230542F0:
	sra	a3,a0,a5
	c.andi	a3,00000001
	c.bnez	a3,00000000230542FA

l230542F8:
	c.addi	a4,00000001

l230542FA:
	c.addi	a5,00000001
	bne	a5,a2,00000000230542F0

l23054300:
	c.mv	a0,a4
	c.jr	ra

;; EF_Ctrl_Read_MAC_Address: 23054304
;;   Called from:
;;     23034C54 (in bl_efuse_read_mac)
EF_Ctrl_Read_MAC_Address proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	auipc	ra,0001EFB8
	jalr	ra,ra,+00000256
	lui	a4,00040007
	c.lw	a4,20(a5)
	c.li	s3,00000000
	c.li	s2,00000000
	srli	a3,a5,00000008
	sb	a5,s0,+00000000
	sb	a3,s0,+00000001
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a5,s0,+00000003
	sb	a3,s0,+00000002
	c.lw	a4,24(s1)
	c.li	s4,00000006
	srli	a5,s1,00000008
	sb	s1,s0,+00000004
	sb	a5,s0,+00000005

l23054350:
	add	a5,s0,s2
	lbu	a0,a5,+00000000
	c.addi	s2,00000001
	jal	ra,00000000230542EA
	c.add	s3,a0
	bne	s2,s4,0000000023054350

l23054364:
	c.srli	s1,00000010
	xor	s1,s1,s3
	andi	s1,s1,+0000003F
	c.li	a0,00000001
	c.bnez	s1,0000000023054394

l23054372:
	addi	a5,s0,+00000005
	addi	a4,s0,+00000002

l2305437A:
	lbu	a2,a5,+00000000
	lbu	a3,s0,+00000000
	c.addi	a5,FFFFFFFF
	sb	a2,s0,+00000000
	sb	a3,a5,+00000001
	c.addi	s0,00000001
	bne	a5,a4,000000002305437A

l23054392:
	c.li	a0,00000000

l23054394:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; EF_Ctrl_Is_MAC_Address_Slot_Empty: 230543A4
;;   Called from:
;;     23054B4C (in mfg_efuse_read_macaddr)
;;     23054B6C (in mfg_efuse_read_macaddr)
;;     23054B7A (in mfg_efuse_read_macaddr)
EF_Ctrl_Is_MAC_Address_Slot_Empty proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	c.bnez	a0,00000000230543DC

l230543AE:
	auipc	ra,0001EFB8
	jalr	ra,ra,+000001A8
	c.beqz	s0,00000000230543C0

l230543B8:
	auipc	ra,0001EFB8
	jalr	ra,ra,+000001B2

l230543C0:
	lui	a5,00040007
	c.lw	a5,20(a4)
	c.lw	a5,24(a5)

l230543C8:
	c.slli	a5,0A
	c.srli	a5,0000000A
	c.or	a5,a4
	c.li	a0,00000001
	c.beqz	a5,00000000230543D4

l230543D2:
	c.li	a0,00000000

l230543D4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230543DC:
	c.li	a5,00000001
	bne	a0,a5,00000000230543FE

l230543E2:
	auipc	ra,0001EFB8
	jalr	ra,ra,+00000174
	c.beqz	s0,00000000230543F4

l230543EC:
	auipc	ra,0001EFB8
	jalr	ra,ra,+0000017E

l230543F4:
	lui	a5,00040007
	c.lw	a5,108(a4)
	c.lw	a5,112(a5)
	c.j	00000000230543C8

l230543FE:
	c.li	a5,00000002
	bne	a0,a5,00000000230543D2

l23054404:
	auipc	ra,0001EFB8
	jalr	ra,ra,+00000152
	c.beqz	s0,0000000023054416

l2305440E:
	auipc	ra,0001EFB8
	jalr	ra,ra,+0000015C

l23054416:
	lui	a5,00040007
	c.lw	a5,4(a4)
	c.lw	a5,8(a5)
	c.j	00000000230543C8

;; EF_Ctrl_Read_MAC_Address_Opt: 23054420
;;   Called from:
;;     23054B96 (in mfg_efuse_read_macaddr)
EF_Ctrl_Read_MAC_Address_Opt proc
	c.li	a5,00000002
	bltu	a5,a0,000000002305450A

l23054426:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s0,a1
	c.mv	s1,a0
	c.beqz	a2,0000000023054456

l2305443A:
	bne	a0,a5,000000002305444E

l2305443E:
	auipc	ra,0001EFB8
	jalr	ra,ra,+0000012C

l23054446:
	lui	a5,00040007
	c.lw	a5,4(a5)
	c.j	000000002305445E

l2305444E:
	auipc	ra,0001EFB8
	jalr	ra,ra,+0000011C

l23054456:
	c.bnez	s1,00000000230544E6

l23054458:
	lui	a5,00040007
	c.lw	a5,20(a5)

l2305445E:
	srli	a4,a5,00000008
	sb	a5,s0,+00000000
	sb	a4,s0,+00000001
	srli	a4,a5,00000010
	c.srli	a5,00000018
	sb	a4,s0,+00000002
	sb	a5,s0,+00000003
	c.bnez	s1,00000000230544F4

l2305447A:
	lui	a5,00040007
	c.lw	a5,24(s1)

l23054480:
	srli	a5,s1,00000008
	sb	s1,s0,+00000004
	sb	a5,s0,+00000005
	c.li	s3,00000000
	c.li	s2,00000000
	c.li	s4,00000006

l23054492:
	add	a5,s0,s2
	lbu	a0,a5,+00000000
	c.addi	s2,00000001
	jal	ra,00000000230542EA
	c.add	s3,a0
	bne	s2,s4,0000000023054492

l230544A6:
	c.srli	s1,00000010
	xor	s1,s1,s3
	andi	s1,s1,+0000003F
	c.li	a0,00000001
	c.bnez	s1,00000000230544D6

l230544B4:
	addi	a5,s0,+00000005
	addi	a4,s0,+00000002

l230544BC:
	lbu	a2,a5,+00000000
	lbu	a3,s0,+00000000
	c.addi	a5,FFFFFFFF
	sb	a2,s0,+00000000
	sb	a3,a5,+00000001
	c.addi	s0,00000001
	bne	a4,a5,00000000230544BC

l230544D4:
	c.li	a0,00000000

l230544D6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l230544E6:
	c.li	a5,00000001
	bne	s1,a5,0000000023054446

l230544EC:
	lui	a5,00040007
	c.lw	a5,108(a5)
	c.j	000000002305445E

l230544F4:
	c.li	a5,00000001
	bne	s1,a5,0000000023054502

l230544FA:
	lui	a5,00040007
	c.lw	a5,112(s1)
	c.j	0000000023054480

l23054502:
	lui	a5,00040007
	c.lw	a5,8(s1)
	c.j	0000000023054480

l2305450A:
	c.li	a0,00000001
	c.jr	ra

;; EF_Ctrl_Is_CapCode_Slot_Empty: 2305450E
;;   Called from:
;;     2305489E (in mfg_efuse_read_xtal_capcode)
;;     230548BE (in mfg_efuse_read_xtal_capcode)
;;     230548CC (in mfg_efuse_read_xtal_capcode)
EF_Ctrl_Is_CapCode_Slot_Empty proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.mv	s0,a0
	auipc	ra,0001EFB8
	jalr	ra,ra,+0000003E
	c.lwsp	a2,00000064
	c.beqz	a1,000000002305452C

l23054524:
	auipc	ra,0001EFB8
	jalr	ra,ra,+00000046

l2305452C:
	c.bnez	s0,0000000023054546

l2305452E:
	lui	a5,00040007
	c.lw	a5,12(a5)
	c.srli	a5,00000002

l23054536:
	andi	a5,a5,+000000FF
	sltiu	a0,a5,+00000001

l2305453E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23054546:
	c.li	a5,00000001
	bne	s0,a5,0000000023054556

l2305454C:
	lui	a5,00040007
	c.lw	a5,112(a5)

l23054552:
	c.srli	a5,00000016
	c.j	0000000023054536

l23054556:
	c.li	a4,00000002
	c.li	a0,00000000
	bne	s0,a4,000000002305453E

l2305455E:
	lui	a5,00040007
	c.lw	a5,8(a5)
	c.j	0000000023054552

;; EF_Ctrl_Read_CapCode_Opt: 23054566
;;   Called from:
;;     230548E8 (in mfg_efuse_read_xtal_capcode)
EF_Ctrl_Read_CapCode_Opt proc
	c.li	a5,00000002
	bgeu	a5,a0,000000002305457E

l2305456C:
	c.li	a0,00000001
	c.jr	ra

l23054570:
	c.li	a0,00000001

l23054572:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2305457E:
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a2
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a1
	c.mv	s0,a0
	auipc	ra,0001EFB8
	jalr	ra,ra,-00000038
	beq	s2,zero,00000000230545A2

l2305459A:
	auipc	ra,0001EFB8
	jalr	ra,ra,-00000030

l230545A2:
	c.bnez	s0,00000000230545DA

l230545A4:
	lui	a5,00040007
	c.lw	a5,12(a5)
	c.srli	a5,00000002

l230545AC:
	c.swsp	a5,00000084
	c.lwsp	a2,00000044
	andi	a5,a0,+00000080
	c.beqz	a5,0000000023054570

l230545B6:
	andi	s0,a0,+0000003F
	srli	s2,a0,00000006
	c.li	a1,00000006
	c.mv	a0,s0
	andi	s2,s2,+00000001
	auipc	ra,0001EFB8
	jalr	ra,ra,+000007FC
	bne	s2,a0,0000000023054570

l230545D2:
	sb	s0,s1,+00000000
	c.li	a0,00000000
	c.j	0000000023054572

l230545DA:
	c.li	a5,00000001
	bne	s0,a5,00000000230545EA

l230545E0:
	lui	a5,00040007
	c.lw	a5,112(a5)

l230545E6:
	c.srli	a5,00000016
	c.j	00000000230545AC

l230545EA:
	lui	a5,00040007
	c.lw	a5,8(a5)
	c.j	00000000230545E6

;; EF_Ctrl_Is_PowerOffset_Slot_Empty: 230545F2
;;   Called from:
;;     23054970 (in mfg_efuse_read_poweroffset)
;;     23054992 (in mfg_efuse_read_poweroffset)
;;     230549A0 (in mfg_efuse_read_poweroffset)
EF_Ctrl_Is_PowerOffset_Slot_Empty proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.mv	s0,a0
	auipc	ra,0001EFB8
	jalr	ra,ra,-000000A6
	c.lwsp	a2,00000064
	c.beqz	a1,0000000023054610

l23054608:
	auipc	ra,0001EFB8
	jalr	ra,ra,-0000009E

l23054610:
	c.bnez	s0,0000000023054632

l23054612:
	lui	a5,00040007
	c.lw	a5,120(a5)
	c.li	a4,00000001
	c.srli	a5,0000000F
	sltiu	a5,a5,+00000001

l23054620:
	c.li	a0,00000000
	c.beqz	a5,0000000023054626

l23054624:
	c.mv	a0,a4

l23054626:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	andi	a0,a0,+000000FF
	c.addi16sp	00000020
	c.jr	ra

l23054632:
	c.li	a5,00000001
	bne	s0,a5,0000000023054650

l23054638:
	lui	a4,00040007
	c.lw	a4,116(a5)
	c.lw	a4,12(a4)
	c.slli	a5,10
	c.srli	a5,00000010
	sltiu	a5,a5,+00000001

l23054648:
	xori	a4,a4,-00000001
	c.andi	a4,00000001
	c.j	0000000023054620

l23054650:
	c.li	a5,00000002
	c.li	a0,00000000
	bne	s0,a5,0000000023054626

l23054658:
	lui	a4,00040007
	c.lw	a4,116(a5)
	c.lw	a4,12(a4)
	c.srli	a5,00000010
	sltiu	a5,a5,+00000001
	c.srli	a4,00000001
	c.j	0000000023054648

;; EF_Ctrl_Read_PowerOffset_Opt: 2305466A
;;   Called from:
;;     230549BC (in mfg_efuse_read_poweroffset)
EF_Ctrl_Read_PowerOffset_Opt proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	a2,00000084
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.mv	s0,a0
	c.mv	s2,a1
	auipc	ra,0001EFB8
	jalr	ra,ra,-00000128
	c.lwsp	a2,00000084
	c.beqz	a2,0000000023054692

l2305468A:
	auipc	ra,0001EFB8
	jalr	ra,ra,-00000120

l23054692:
	c.bnez	s0,00000000230546E8

l23054694:
	lui	a5,00040007
	c.lw	a5,120(s0)
	srli	a5,s0,0000000F
	slli	s1,s0,00000001
	c.andi	a5,00000001
	c.srli	s1,00000011
	c.srli	s0,0000001F

l230546A8:
	c.beqz	a5,000000002305470A

l230546AA:
	c.li	a1,0000000F
	c.mv	a0,s1
	auipc	ra,0001EFB8
	jalr	ra,ra,+00000714
	bne	a0,s0,000000002305470A

l230546BA:
	c.li	s0,00000000
	c.li	s4,00000005
	c.li	s3,00000003

l230546C0:
	add	a2,s0,s4
	c.mv	a0,s1
	c.li	a1,00000000
	jal	ra,000000002306C888
	andi	a5,a0,+0000001F
	c.andi	a0,00000010
	add	a4,s2,s0
	c.beqz	a0,00000000230546DA

l230546D8:
	c.addi	a5,FFFFFFE0

l230546DA:
	sb	a5,a4,+00000000
	c.addi	s0,00000001
	bne	s0,s3,00000000230546C0

l230546E4:
	c.li	a0,00000000
	c.j	000000002305470C

l230546E8:
	c.li	a5,00000001
	bne	s0,a5,0000000023054704

l230546EE:
	lui	a5,00040007
	c.lw	a5,116(s0)
	c.lw	a5,12(a5)
	slli	s1,s0,00000011
	c.srli	s0,0000000F
	c.srli	s1,00000011
	c.andi	s0,00000001

l23054700:
	c.andi	a5,00000001
	c.j	00000000230546A8

l23054704:
	c.li	a5,00000002
	beq	s0,a5,000000002305471C

l2305470A:
	c.li	a0,00000001

l2305470C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2305471C:
	lui	a5,00040007
	c.lw	a5,116(s0)
	c.lw	a5,12(a5)
	slli	s1,s0,00000001
	c.srli	s1,00000011
	c.srli	s0,0000001F
	c.srli	a5,00000001
	c.j	0000000023054700

;; mfg_media_read_xtal_capcode: 23054730
;;   Called from:
;;     23034C7E (in bl_efuse_read_capcode)
mfg_media_read_xtal_capcode proc
	lui	a5,0004200E
	lbu	a5,a5,+00000004
	c.beqz	a5,000000002305473C

l2305473A:
	c.j	0000000023054C22

l2305473C:
	c.j	000000002305484E

;; mfg_media_read_poweroffset: 2305473E
;;   Called from:
;;     23034C96 (in bl_efuse_read_pwroft)
mfg_media_read_poweroffset proc
	lui	a5,0004200E
	lbu	a5,a5,+00000004
	c.beqz	a5,000000002305474A

l23054748:
	c.j	0000000023054C86

l2305474A:
	c.j	0000000023054920

;; mfg_media_read_macaddr: 2305474C
;;   Called from:
;;     23034C66 (in bl_efuse_read_mac_factory)
mfg_media_read_macaddr proc
	lui	a5,0004200E
	lbu	a5,a5,+00000004
	c.beqz	a5,0000000023054758

l23054756:
	c.j	0000000023054DEA

l23054758:
	c.j	0000000023054AFC

;; bflb_platform_usart_dbg_send: 2305475A
;;   Called from:
;;     230547A6 (in bflb_platform_printf)
bflb_platform_usart_dbg_send proc
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	jal	zero,00000000230529BE

;; bflb_platform_printf: 23054764
;;   Called from:
;;     23053ED2 (in Default_Handler)
bflb_platform_printf proc
	c.addi16sp	FFFFFFC0
	c.swsp	a5,00000098
	lui	a5,0004200E
	lbu	a5,a5,+00000005
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a1,00000090
	c.swsp	a2,00000014
	c.swsp	a3,00000094
	c.swsp	a4,00000018
	c.swsp	a6,0000001C
	c.swsp	a7,0000009C
	c.bnez	a5,00000000230547AA

l23054782:
	lui	s0,00042017
	c.mv	a2,a0
	c.addi4spn	a3,00000024
	addi	a1,zero,+0000007F
	addi	a0,s0,-00000480
	c.swsp	a3,00000084
	jal	ra,0000000023051BA2
	addi	a0,s0,-00000480
	jal	ra,000000002307132C
	c.mv	a1,a0
	addi	a0,s0,-00000480
	jal	ra,000000002305475A

l230547AA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000040
	c.jr	ra

;; SPI_IRQHandler: 230547B2
SPI_IRQHandler proc
	c.addi16sp	FFFFFF70
	c.swsp	ra,000000C4
	c.swsp	t0,00000044
	c.swsp	t1,000000C0
	c.swsp	t2,00000040
	c.swsp	a0,000000BC
	c.swsp	a1,0000003C
	c.swsp	a2,000000B8
	c.swsp	a3,00000038
	c.swsp	a4,000000B4
	c.swsp	a5,00000034
	c.swsp	a6,000000B0
	c.swsp	a7,00000030
	c.swsp	t3,000000AC
	c.swsp	t4,0000002C
	c.swsp	t5,000000A8
	c.swsp	t6,00000028
	c.sdsp	zero,00000148
	c.sdsp	ra,00000048
	c.sdsp	sp,00000140
	c.sdsp	gp,00000040
	c.sdsp	tp,00000138
	c.sdsp	t0,00000038
	c.sdsp	t1,00000130
	c.sdsp	t2,00000030
	c.sdsp	a0,00000128
	c.sdsp	a1,00000028
	c.sdsp	a2,00000120
	c.sdsp	a3,00000020
	c.sdsp	a4,00000118
	c.sdsp	a5,00000018
	c.sdsp	a6,00000110
	c.sdsp	a7,00000010
	c.sdsp	t3,00000108
	c.sdsp	t4,00000008
	c.sdsp	t5,00000100
	c.sdsp	t6,00000000
	jal	ra,0000000023053ECA
	c.lwsp	a4,00000020
	c.lwsp	a0,000000A0
	c.lwsp	t1,000000C0
	c.lwsp	sp,000000E0
	c.lwsp	t4,00000154
	c.lwsp	s9,00000174
	c.lwsp	s5,00000194
	c.lwsp	a7,000001B4
	c.lwsp	a3,000001D4
	c.lwsp	s1,000001F4
	c.lwsp	t0,00000118
	c.lwsp	ra,00000138
	c.lwsp	t4,0000008C
	c.lwsp	s9,000000AC
	c.lwsp	s5,000000CC
	c.lwsp	a7,000000EC
	c.ldsp	a3,00000000
	c.ldsp	s1,00000040
	c.ldsp	t0,00000080
	c.ldsp	ra,000000C0
	c.ldsp	t3,00000320
	c.ldsp	s8,00000360
	c.ldsp	s4,000003A0
	c.ldsp	a6,000003E0
	c.ldsp	a2,000002A8
	c.ldsp	s0,000002E8
	c.ldsp	tp,00000328
	c.ldsp	zero,00000368
	c.ldsp	t3,00000188
	c.ldsp	s8,000001C8
	c.ldsp	s4,00000010
	c.ldsp	a6,00000050
	c.ldsp	a2,00000118
	c.ldsp	s0,00000158
	c.ldsp	tp,00000198
	c.ldsp	zero,000001D8
	c.addi16sp	00000090
	mret

;; mfg_efuse_read_xtal_capcode: 2305484E
;;   Called from:
;;     2305473C (in mfg_media_read_xtal_capcode)
mfg_efuse_read_xtal_capcode proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s1,a1
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s4,a0
	auipc	ra,0001EFB8
	jalr	ra,ra,+00000594
	c.mv	s3,a0
	auipc	ra,0001EFB8
	jalr	ra,ra,+00000594
	c.mv	s2,a0
	c.li	a0,00000001
	auipc	ra,0001EFB8
	jalr	ra,ra,+000005CE
	lui	s0,0004200E
	lbu	a4,s0,-0000068C
	c.li	a5,00000002
	addi	s0,s0,-0000068C
	bltu	a5,a4,00000000230548BA

l23054890:
	lbu	a4,s0,+00000000
	c.li	a5,00000001
	bgeu	a5,a4,00000000230548A4

l2305489A:
	c.mv	a1,s1
	c.li	a0,00000001
	jal	ra,000000002305450E
	c.beqz	a0,000000002305491C

l230548A4:
	lbu	a5,s0,+00000000
	c.bnez	a5,00000000230548C8

l230548AA:
	lui	a0,00023088
	addi	a0,a0,+000006B4
	jal	ra,0000000023052118
	c.li	s0,00000001
	c.j	00000000230548EE

l230548BA:
	c.mv	a1,s1
	c.li	a0,00000002
	jal	ra,000000002305450E
	c.bnez	a0,0000000023054890

l230548C4:
	c.li	s0,00000002
	c.j	00000000230548D4

l230548C8:
	c.mv	a1,s1
	c.li	a0,00000000
	jal	ra,000000002305450E
	c.mv	s0,a0
	c.bnez	a0,00000000230548AA

l230548D4:
	lui	a0,00023088
	c.mv	a1,s0
	addi	a0,a0,+000006A4
	jal	ra,0000000023052118
	c.mv	a0,s0
	c.mv	a2,s1
	c.mv	a1,s4
	jal	ra,0000000023054566
	c.mv	s0,a0

l230548EE:
	c.mv	a1,s3
	c.mv	a0,s2
	auipc	ra,0001EFB8
	jalr	ra,ra,+000004F8
	c.li	a0,00000002
	auipc	ra,0001EFB8
	jalr	ra,ra,+00000548
	sltu	a0,zero,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	sub	a0,zero,a0
	c.addi16sp	00000020
	c.jr	ra

l2305491C:
	c.li	s0,00000001
	c.j	00000000230548D4

;; mfg_efuse_read_poweroffset: 23054920
;;   Called from:
;;     2305474A (in mfg_media_read_poweroffset)
mfg_efuse_read_poweroffset proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.mv	s3,a0
	c.mv	s4,a1
	auipc	ra,0001EFB8
	jalr	ra,ra,+000004C2
	c.mv	s2,a0
	auipc	ra,0001EFB8
	jalr	ra,ra,+000004C2
	c.mv	s1,a0
	c.li	a0,00000001
	auipc	ra,0001EFB8
	jalr	ra,ra,+000004FC
	lui	s0,0004200E
	lbu	a4,s0,-0000068C
	c.li	a5,00000002
	addi	s0,s0,-0000068C
	bltu	a5,a4,000000002305498E

l23054962:
	lbu	a4,s0,+00000000
	c.li	a5,00000001
	bgeu	a5,a4,0000000023054978

l2305496C:
	c.mv	a1,s4
	c.li	a0,00000001
	jal	ra,00000000230545F2
	beq	a0,zero,0000000023054AF8

l23054978:
	lbu	a5,s0,+00000000
	c.bnez	a5,000000002305499C

l2305497E:
	lui	a0,00023088
	addi	a0,a0,+000006B4
	jal	ra,0000000023052118
	c.li	s0,00000001
	c.j	0000000023054ACA

l2305498E:
	c.mv	a1,s4
	c.li	a0,00000002
	jal	ra,00000000230545F2
	c.bnez	a0,0000000023054962

l23054998:
	c.li	s0,00000002
	c.j	00000000230549A8

l2305499C:
	c.mv	a1,s4
	c.li	a0,00000000
	jal	ra,00000000230545F2
	c.mv	s0,a0
	c.bnez	a0,000000002305497E

l230549A8:
	lui	a0,00023088
	c.mv	a1,s0
	addi	a0,a0,+000006A4
	jal	ra,0000000023052118
	c.mv	a2,s4
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,000000002305466A
	c.li	a2,0000000E
	c.li	a1,00000000
	c.mv	s0,a0
	c.mv	a0,s3
	jal	ra,0000000023070EB8
	lb	a6,sp,+0000000D
	lb	a3,sp,+0000000C
	addi	a1,zero,+00000064
	c.li	t3,00000006
	sub	a4,a6,a3
	add	a4,a4,a1
	addi	t1,zero,+00000032
	sb	a3,s3,+00000000
	andi	a3,a3,+000000FF
	lb	a7,sp,+0000000E
	sb	a6,s3,+00000006
	sb	a7,s3,+0000000C
	xor	a4,a4,t3
	addi	a2,a4,+00000019
	xor	a2,a2,t1
	addi	a5,a4,+00000032
	c.add	a2,a3
	sb	a2,s3,+00000002
	c.li	a2,00000003
	add	a0,a4,a2
	addi	a0,a0,+00000032
	xor	a0,a0,a1
	c.add	a0,a3
	sb	a0,s3,+00000003
	slli	a0,a4,00000002
	addi	a0,a0,+00000032
	xor	a0,a0,a1
	xor	a5,a5,a1
	c.add	a0,a3
	sb	a0,s3,+00000004
	c.li	a0,00000005
	c.add	a5,a3
	sb	a5,s3,+00000001
	add	a4,a4,a0
	sub	a5,a7,a6
	add	a5,a5,a1
	addi	a4,a4,+00000032
	xor	a5,a5,t3
	xor	a4,a4,a1
	c.add	a4,a3
	addi	a3,a5,+00000019
	xor	a3,a3,t1
	sb	a4,s3,+00000005
	andi	a4,a6,+000000FF
	addi	a6,a5,+00000032
	c.add	a3,a4
	sb	a3,s3,+00000008
	add	a3,a5,a0
	add	a2,a5,a2
	addi	a3,a3,+00000032
	addi	a2,a2,+00000032
	xor	a3,a3,a1
	xor	a2,a2,a1
	c.add	a3,a4
	sb	a3,s3,+0000000B
	c.li	a3,00000007
	c.add	a2,a4
	sb	a2,s3,+00000009
	slli	a2,a5,00000002
	add	a5,a5,a3
	addi	a2,a2,+00000032
	addi	a5,a5,+00000032
	xor	a6,a6,a1
	xor	a2,a2,a1
	c.add	a6,a4
	sb	a6,s3,+00000007
	xor	a5,a5,a1
	c.add	a2,a4
	sb	a2,s3,+0000000A
	c.add	a5,a4
	sb	a5,s3,+0000000D

l23054ACA:
	c.mv	a1,s2
	c.mv	a0,s1
	auipc	ra,0001EFB8
	jalr	ra,ra,+0000031C
	c.li	a0,00000002
	auipc	ra,0001EFB8
	jalr	ra,ra,+0000036C
	sltu	a0,zero,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	sub	a0,zero,a0
	c.addi16sp	00000030
	c.jr	ra

l23054AF8:
	c.li	s0,00000001
	c.j	00000000230549A8

;; mfg_efuse_read_macaddr: 23054AFC
;;   Called from:
;;     23054758 (in mfg_media_read_macaddr)
mfg_efuse_read_macaddr proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s1,a1
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s4,a0
	auipc	ra,0001EFB8
	jalr	ra,ra,+000002E6
	c.mv	s3,a0
	auipc	ra,0001EFB8
	jalr	ra,ra,+000002E6
	c.mv	s2,a0
	c.li	a0,00000001
	auipc	ra,0001EFB8
	jalr	ra,ra,+00000320
	lui	s0,0004200E
	lbu	a4,s0,-0000068C
	c.li	a5,00000002
	addi	s0,s0,-0000068C
	bltu	a5,a4,0000000023054B68

l23054B3E:
	lbu	a4,s0,+00000000
	c.li	a5,00000001
	bgeu	a5,a4,0000000023054B52

l23054B48:
	c.mv	a1,s1
	c.li	a0,00000001
	jal	ra,00000000230543A4
	c.beqz	a0,0000000023054BCA

l23054B52:
	lbu	a5,s0,+00000000
	c.bnez	a5,0000000023054B76

l23054B58:
	lui	a0,00023088
	addi	a0,a0,+000006B4
	jal	ra,0000000023052118
	c.li	s0,00000001
	c.j	0000000023054B9C

l23054B68:
	c.mv	a1,s1
	c.li	a0,00000002
	jal	ra,00000000230543A4
	c.bnez	a0,0000000023054B3E

l23054B72:
	c.li	s0,00000002
	c.j	0000000023054B82

l23054B76:
	c.mv	a1,s1
	c.li	a0,00000000
	jal	ra,00000000230543A4
	c.mv	s0,a0
	c.bnez	a0,0000000023054B58

l23054B82:
	lui	a0,00023088
	c.mv	a1,s0
	addi	a0,a0,+000006A4
	jal	ra,0000000023052118
	c.mv	a0,s0
	c.mv	a2,s1
	c.mv	a1,s4
	jal	ra,0000000023054420
	c.mv	s0,a0

l23054B9C:
	c.mv	a1,s3
	c.mv	a0,s2
	auipc	ra,0001EFB8
	jalr	ra,ra,+0000024A
	c.li	a0,00000002
	auipc	ra,0001EFB8
	jalr	ra,ra,+0000029A
	sltu	a0,zero,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	sub	a0,zero,a0
	c.addi16sp	00000020
	c.jr	ra

l23054BCA:
	c.li	s0,00000001
	c.j	0000000023054B82

;; mfg_flash_read: 23054BCE
;;   Called from:
;;     23054C50 (in mfg_flash_read_xtal_capcode)
;;     23054CB4 (in mfg_flash_read_poweroffset)
;;     23054DF8 (in mfg_flash_read_macaddr)
mfg_flash_read proc
	lui	a0,00023088
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000006CC
	c.swsp	ra,00000084
	jal	ra,0000000023052118
	csrrci	zero,mstatus,00000008
	lui	a5,0004200E
	lw	a1,a5,+0000000C
	lui	a5,0004200E
	lw	a0,a5,+00000008
	lui	a2,00042017
	c.li	a3,00000018
	addi	a2,a2,-00000400
	auipc	ra,0001EFB8
	jalr	ra,ra,-00000282
	csrrsi	zero,mstatus,00000008
	c.li	a5,00000000
	c.beqz	a0,0000000023054C1A

l23054C0C:
	lui	a0,00023088
	addi	a0,a0,+000006E0
	jal	ra,0000000023052118
	c.li	a5,FFFFFFFF

l23054C1A:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; mfg_flash_read_xtal_capcode: 23054C22
;;   Called from:
;;     2305473A (in mfg_media_read_xtal_capcode)
mfg_flash_read_xtal_capcode proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.mv	s1,a0
	c.bnez	a1,0000000023054C50

l23054C30:
	lui	s0,00042017
	addi	s0,s0,-00000400
	c.lw	s0,0(a4)
	addi	a5,zero,+00000041
	beq	a4,a5,0000000023054C58

l23054C42:
	c.li	a0,FFFFFFFF

l23054C44:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23054C50:
	jal	ra,0000000023054BCE
	c.beqz	a0,0000000023054C30

l23054C56:
	c.j	0000000023054C42

l23054C58:
	lw	s2,s0,+00000014
	c.li	a1,00000010
	addi	a0,s0,+00000004
	auipc	ra,0001EFB8
	jalr	ra,ra,-00000284
	bne	s2,a0,0000000023054C42

l23054C6E:
	lbu	a4,s0,+00000004
	addi	a5,zero,+0000005A
	bne	a4,a5,0000000023054C42

l23054C7A:
	lbu	a5,s0,+00000005
	c.li	a0,00000000
	sb	a5,s1,+00000000
	c.j	0000000023054C44

;; mfg_flash_read_poweroffset: 23054C86
;;   Called from:
;;     23054748 (in mfg_media_read_poweroffset)
mfg_flash_read_poweroffset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s0,a0
	c.bnez	a1,0000000023054CB4

l23054C94:
	lui	s1,00042017
	addi	s1,s1,-00000400
	c.lw	s1,0(a4)
	addi	a5,zero,+00000041
	beq	a4,a5,0000000023054CBC

l23054CA6:
	c.li	a0,FFFFFFFF

l23054CA8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23054CB4:
	jal	ra,0000000023054BCE
	c.beqz	a0,0000000023054C94

l23054CBA:
	c.j	0000000023054CA6

l23054CBC:
	lw	s2,s1,+00000014
	c.li	a1,00000010
	addi	a0,s1,+00000004
	auipc	ra,0001EFB8
	jalr	ra,ra,-000002E8
	bne	s2,a0,0000000023054CA6

l23054CD2:
	lbu	a4,s1,+00000006
	addi	a5,zero,+0000005A
	bne	a4,a5,0000000023054CA6

l23054CDE:
	c.li	a2,0000000E
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070EB8
	lb	a7,s1,+00000008
	lb	a3,s1,+00000007
	addi	a0,zero,+00000064
	c.li	t3,00000006
	sub	a4,a7,a3
	add	a4,a4,a0
	addi	t1,zero,+00000032
	lb	a6,s1,+00000009
	sb	a3,s0,+00000000
	andi	a3,a3,+000000FF
	c.li	a1,00000003
	sb	a7,s0,+00000006
	sb	a6,s0,+0000000C
	xor	a4,a4,t3
	addi	a2,a4,+00000019
	xor	a2,a2,t1
	addi	a5,a4,+00000032
	c.add	a2,a3
	sb	a2,s0,+00000002
	add	a2,a4,a1
	addi	a2,a2,+00000032
	xor	a2,a2,a0
	c.add	a2,a3
	sb	a2,s0,+00000003
	slli	a2,a4,00000002
	addi	a2,a2,+00000032
	xor	a2,a2,a0
	xor	a5,a5,a0
	c.add	a2,a3
	sb	a2,s0,+00000004
	c.li	a2,00000005
	c.add	a5,a3
	add	a4,a4,a2
	sb	a5,s0,+00000001
	sub	a5,a6,a7
	add	a5,a5,a0
	addi	a4,a4,+00000032
	xor	a4,a4,a0
	xor	a5,a5,t3
	c.add	a3,a4
	sb	a3,s0,+00000005
	andi	a4,a7,+000000FF
	addi	a3,a5,+00000019
	xor	a3,a3,t1
	addi	a7,a5,+00000032
	c.add	a3,a4
	sb	a3,s0,+00000008
	slli	a3,a5,00000002
	addi	a3,a3,+00000032
	xor	a3,a3,a0
	c.add	a3,a4
	sb	a3,s0,+0000000A
	c.li	a3,00000007
	add	a1,a5,a1
	add	a2,a5,a2
	addi	a1,a1,+00000032
	add	a5,a5,a3
	addi	a2,a2,+00000032
	addi	a5,a5,+00000032
	xor	a7,a7,a0
	xor	a1,a1,a0
	c.add	a7,a4
	sb	a7,s0,+00000007
	xor	a2,a2,a0
	c.add	a1,a4
	sb	a1,s0,+00000009
	xor	a5,a5,a0
	c.add	a2,a4
	sb	a2,s0,+0000000B
	c.li	a0,00000000
	c.add	a5,a4
	sb	a5,s0,+0000000D
	c.j	0000000023054CA8

;; mfg_flash_read_macaddr: 23054DEA
;;   Called from:
;;     23054756 (in mfg_media_read_macaddr)
mfg_flash_read_macaddr proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.mv	s1,a0
	c.beqz	a1,0000000023054E18

l23054DF8:
	jal	ra,0000000023054BCE
	c.beqz	a0,0000000023054E18

l23054DFE:
	lui	a0,00023088
	addi	a0,a0,+000006F4
	jal	ra,0000000023052118

l23054E0A:
	c.li	a0,FFFFFFFF

l23054E0C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23054E18:
	lui	s0,00042017
	addi	s0,s0,-00000400
	c.lw	s0,0(a4)
	addi	a5,zero,+00000041
	bne	a4,a5,0000000023054E0A

l23054E2A:
	lw	s2,s0,+00000014
	c.li	a1,00000010
	addi	a0,s0,+00000004
	auipc	ra,0001EFB8
	jalr	ra,ra,-00000456
	bne	s2,a0,0000000023054E0A

l23054E40:
	lbu	a4,s0,+0000000A
	addi	a5,zero,+0000005A
	bne	a4,a5,0000000023054E0A

l23054E4C:
	c.li	a2,00000006
	addi	a1,s0,+0000000B
	c.mv	a0,s1
	jal	ra,0000000023070C7C
	c.li	a0,00000000
	c.j	0000000023054E0C

;; Bl_F: 23054E5C
;;   Called from:
;;     23054F74 (in Bl_PasswordHash)
;;     23054F94 (in Bl_PasswordHash)
Bl_F proc
	c.addi16sp	FFFFFFB0
	c.swsp	s1,000000A0
	c.mv	s1,a0
	c.mv	a0,a2
	c.swsp	ra,000000A4
	c.swsp	a6,00000004
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.mv	s0,a4
	c.mv	s2,a1
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.mv	s3,a2
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.mv	s5,a7
	c.swsp	s7,00000094
	c.swsp	a3,00000084
	c.mv	s6,a5
	jal	ra,000000002307132C
	c.lwsp	a2,000000A4
	addi	a5,s0,+00000004
	c.mv	a2,s0
	c.mv	a1,a3
	c.mv	s4,a0
	c.mv	a0,s1
	c.swsp	a5,0000000C
	c.swsp	s1,0000008C
	jal	ra,0000000023070C7C
	c.lwsp	s0,00000008
	add	a4,s1,s0
	c.mv	a3,s3
	srai	a5,a6,00000018
	sb	a5,a4,+00000000
	srai	a5,a6,00000010
	sb	a5,a4,+00000001
	srai	a5,a6,00000008
	sb	a5,a4,+00000002
	sb	a6,a4,+00000003
	c.mv	a5,s2
	c.li	a6,00000014
	c.mv	a4,s4
	c.li	a2,00000001
	c.addi4spn	a1,00000018
	c.addi4spn	a0,0000001C
	jal	ra,000000002302004E
	c.li	a2,00000014
	c.mv	a1,s2
	c.mv	a0,s5
	jal	ra,0000000023070C7C
	c.li	s0,00000001
	c.swsp	s2,0000008C
	c.li	s7,00000014

l23054EE0:
	blt	s0,s6,0000000023054EFA

l23054EE4:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.lwsp	a6,000001D8
	c.lwsp	a2,000001F8
	c.addi16sp	00000050
	c.jr	ra

l23054EFA:
	c.mv	a5,s1
	c.li	a6,00000014
	c.mv	a4,s4
	c.mv	a3,s3
	c.li	a2,00000001
	c.addi4spn	a1,00000018
	c.addi4spn	a0,0000001C
	c.swsp	s7,0000000C
	jal	ra,000000002302004E
	c.li	a2,00000014
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,0000000023070C7C
	c.li	a5,00000000

l23054F1A:
	add	a3,s5,a5
	add	a4,s1,a5
	lbu	a4,a4,+00000000
	lbu	a2,a3,+00000000
	c.addi	a5,00000001
	c.xor	a4,a2
	sb	a4,a3,+00000000
	bne	a5,s7,0000000023054F1A

l23054F36:
	c.addi	s0,00000001
	c.j	0000000023054EE0

;; Bl_PasswordHash: 23054F3A
;;   Called from:
;;     23054FAC (in bl60x_fw_password_hash)
Bl_PasswordHash proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	ra,000000AC
	c.mv	s2,a0
	c.mv	s3,a1
	c.mv	s1,a2
	c.mv	s0,a3
	jal	ra,000000002307132C
	addi	a5,zero,+0000003F
	bltu	a5,a0,0000000023054FA8

l23054F5A:
	addi	a5,zero,+00000020
	c.li	a0,FFFFFFFF
	blt	a5,s1,0000000023054F9A

l23054F64:
	c.mv	a7,s0
	c.li	a6,00000002
	c.lui	a5,00001000
	c.mv	a4,s1
	c.mv	a3,s3
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	c.addi4spn	a0,0000001C
	jal	ra,0000000023054E5C
	c.li	a2,0000000C
	c.mv	a1,s0
	addi	a0,s0,+00000014
	jal	ra,0000000023070C7C
	c.addi4spn	a0,0000001C
	c.mv	a7,s0
	c.li	a6,00000001
	c.lui	a5,00001000
	c.mv	a4,s1
	c.mv	a3,s3
	c.mv	a2,s2
	c.addi4spn	a1,00000008
	jal	ra,0000000023054E5C
	c.li	a0,00000000

l23054F9A:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.addi16sp	00000060
	c.jr	ra

l23054FA8:
	c.li	a0,FFFFFFFF
	c.j	0000000023054F9A

;; bl60x_fw_password_hash: 23054FAC
;;   Called from:
;;     23028172 (in wifi_mgmr_psk_cal)
bl60x_fw_password_hash proc
	jal	zero,0000000023054F3A

;; bl_mtd_open: 23054FB0
;;   Called from:
;;     2302AE28 (in ota_tcp_cmd.part.0)
;;     2302E36E (in ef_port_init)
;;     2304A176 (in romfs_register)
bl_mtd_open proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.mv	s1,a0
	addi	a0,zero,+00000020
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.mv	s3,a1
	c.mv	s2,a2
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	jal	ra,000000002303218A
	beq	a0,zero,0000000023055146

l23054FD2:
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.mv	s0,a0
	jal	ra,0000000023070EB8
	c.li	a2,00000010
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230714A8
	andi	a5,s2,+00000002
	andi	s2,s2,+00000001
	beq	s2,zero,000000002305505E

l23054FF4:
	c.beqz	a5,0000000023055058

l23054FF6:
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.mv	a0,s1
	jal	ra,0000000023036E4E
	c.mv	a2,a0
	c.bnez	a0,0000000023055008

l23055004:
	c.lwsp	s0,000000E4
	c.bnez	a5,0000000023055026

l23055008:
	lui	a0,00023088
	c.mv	a1,s1
	addi	a0,a0,+0000070C
	jal	ra,0000000023052118
	lui	a0,00023088
	c.mv	a1,s1
	addi	a0,a0,+00000740
	jal	ra,0000000023052118

l23055024:
	c.j	0000000023055024

l23055026:
	c.sw	s0,28(a5)

l23055028:
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.mv	a0,s1
	jal	ra,0000000023036F82
	c.mv	a2,a0
	c.bnez	a0,000000002305503A

l23055036:
	c.lwsp	s0,000000E4
	c.bnez	a5,00000000230550C8

l2305503A:
	lui	a0,00023088
	c.mv	a1,s1
	addi	a0,a0,+0000070C
	jal	ra,0000000023052118
	lui	a0,00023088
	c.mv	a1,s1
	addi	a0,a0,+00000740
	jal	ra,0000000023052118

l23055056:
	c.j	0000000023055056

l23055058:
	sw	zero,s0,+0000001C
	c.j	0000000023055028

l2305505E:
	c.beqz	a5,00000000230550C2

l23055060:
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.mv	a0,s1
	jal	ra,0000000023036E12
	c.mv	a2,a0
	c.bnez	a0,0000000023055072

l2305506E:
	c.lwsp	s0,000000E4
	c.bnez	a5,0000000023055090

l23055072:
	lui	a0,00023088
	c.mv	a1,s1
	addi	a0,a0,+0000070C
	jal	ra,0000000023052118
	lui	a0,00023088
	c.mv	a1,s1
	addi	a0,a0,+00000740
	jal	ra,0000000023052118

l2305508E:
	c.j	000000002305508E

l23055090:
	c.sw	s0,28(a5)

l23055092:
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.mv	a0,s1
	jal	ra,0000000023036F46
	c.mv	a2,a0
	c.bnez	a0,00000000230550A4

l230550A0:
	c.lwsp	s0,000000E4
	c.bnez	a5,00000000230550C8

l230550A4:
	lui	a0,00023088
	c.mv	a1,s1
	addi	a0,a0,+0000070C
	jal	ra,0000000023052118
	lui	a0,00023088
	c.mv	a1,s1
	addi	a0,a0,+00000740
	jal	ra,0000000023052118

l230550C0:
	c.j	00000000230550C0

l230550C2:
	sw	zero,s0,+0000001C
	c.j	0000000023055092

l230550C8:
	c.sw	s0,20(a5)
	c.lwsp	a2,000000E4
	lui	a0,00023088
	addi	a0,a0,+00000784
	c.sw	s0,24(a5)
	jal	ra,00000000230520DC
	lui	a0,00023088
	c.mv	a1,s0
	addi	a0,a0,+000007AC
	jal	ra,0000000023052118
	c.lw	s0,16(a1)
	lui	a0,00023088
	addi	a0,a0,+000007BC
	jal	ra,0000000023052118
	c.lw	s0,20(a2)
	lui	a0,00023088
	addi	a0,a0,+000007CC
	c.mv	a1,a2
	jal	ra,0000000023052118
	c.lw	s0,24(a1)
	lui	a0,00023088
	addi	a0,a0,+000007E4
	srli	a2,a1,0000000A
	jal	ra,0000000023052118
	c.lw	s0,28(a1)
	lui	a0,00023089
	addi	a0,a0,-00000800
	jal	ra,0000000023052118
	lui	a0,00023089
	addi	a0,a0,-000007EC
	jal	ra,00000000230520DC
	c.li	a0,00000000
	sw	s0,s3,+00000000

l23055138:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23055146:
	c.li	a0,FFFFFFFF
	c.j	0000000023055138

;; bl_mtd_close: 2305514A
;;   Called from:
;;     2302AE56 (in ota_tcp_cmd.part.0)
bl_mtd_close proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023032272
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_mtd_info: 2305515A
;;   Called from:
;;     2302E3A2 (in ef_port_init)
;;     2304A1D4 (in romfs_register)
bl_mtd_info proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a1
	c.swsp	s1,00000080
	c.mv	a1,a0
	c.mv	s1,a0
	c.mv	a0,s0
	c.swsp	ra,00000084
	jal	ra,000000002307127C
	c.lw	s1,20(a5)
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.sw	s0,16(a5)
	c.lw	s1,24(a5)
	c.sw	s0,20(a5)
	c.lw	s1,28(a5)
	c.lwsp	tp,00000024
	c.sw	s0,24(a5)
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bl_mtd_erase: 23055186
;;   Called from:
;;     2302E31E (in ef_port_erase)
bl_mtd_erase proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,20(a0)
	c.add	a0,a1
	c.mv	a1,a2
	jal	ra,0000000023039186
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_mtd_erase_all: 2305519C
;;   Called from:
;;     2302AF24 (in ota_tcp_cmd.part.0)
bl_mtd_erase_all proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,24(a1)
	c.lw	a0,20(a0)
	jal	ra,0000000023039186
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_mtd_write: 230551B0
;;   Called from:
;;     2302B1A6 (in ota_tcp_cmd.part.0)
;;     2302E28C (in ef_port_write)
bl_mtd_write proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s2,00000028
	c.swsp	ra,000000AC
	c.swsp	s1,000000A8
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.lw	a0,20(s1)
	c.mv	a0,a3
	c.mv	s0,a2
	c.mv	s2,a3
	c.add	s1,a1
	jal	ra,0000000023038F80
	c.beqz	a0,0000000023055248

l230551CE:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002305521A

l230551D8:
	jal	ra,000000002303030A

l230551DC:
	c.mv	a1,a0
	lui	a3,00023089
	lui	a2,00023082
	lui	a0,00023089
	c.mv	a6,s0
	c.mv	a5,s2
	addi	a4,zero,+000000C9
	addi	a3,a3,-000007C4
	addi	a2,a2,-00000318
	addi	a0,a0,-000007B8
	jal	ra,000000002304B718
	addi	s4,zero,+00000040

l23055206:
	c.bnez	s0,0000000023055220

l23055208:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.li	a0,00000000
	c.addi16sp	00000060
	c.jr	ra

l2305521A:
	jal	ra,00000000230302E8
	c.j	00000000230551DC

l23055220:
	c.mv	s3,s0
	bgeu	s4,s0,000000002305522A

l23055226:
	addi	s3,zero,+00000040

l2305522A:
	c.mv	a1,s2
	c.mv	a2,s3
	c.mv	a0,sp
	jal	ra,0000000023070C7C
	c.mv	a0,s1
	c.mv	a2,s3
	c.mv	a1,sp
	jal	ra,00000000230391B6
	c.add	s1,s3
	c.add	s2,s3
	sub	s0,s0,s3
	c.j	0000000023055206

l23055248:
	c.mv	a2,s0
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230391B6
	c.j	0000000023055208

;; bl_mtd_read: 23055254
;;   Called from:
;;     2302E26C (in ef_port_read)
bl_mtd_read proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,20(a0)
	c.add	a0,a1
	c.mv	a1,a3
	jal	ra,00000000230391E8
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bloop_init: 2305526A
;;   Called from:
;;     23039BCC (in looprt_start)
;;     23039C26 (in looprt_start_auto)
bloop_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	a2,zero,+000004A0
	c.mv	s0,a0
	c.li	a1,00000000
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	addi	s1,s0,+00000110
	jal	ra,0000000023070EB8
	addi	s2,s0,+00000210

l23055288:
	c.mv	a0,s1
	c.addi	s1,00000008
	jal	ra,000000002304B966
	bne	s1,s2,0000000023055288

l23055294:
	addi	a5,s0,+00000490
	sw	a5,s0,+00000494
	sw	a5,s0,+00000490
	lui	a0,00023089
	addi	a5,s0,+00000498
	sw	a5,s0,+0000049C
	sw	a5,s0,+00000498
	addi	a1,zero,+00000020
	addi	a0,a0,-00000774
	jal	ra,0000000023052118
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bloop_handler_register: 230552CA
;;   Called from:
;;     23039BDE (in looprt_start)
;;     23039C38 (in looprt_start_auto)
;;     23039C80 (in looprt_handler_register)
bloop_handler_register proc
	c.li	a5,0000001F
	bltu	a5,a2,00000000230552E4

l230552D0:
	c.slli	a2,02
	c.add	a2,a0
	lw	a5,a2,+00000410
	c.li	a0,FFFFFFFF
	c.bnez	a5,00000000230552E6

l230552DC:
	sw	a1,a2,+00000410
	c.li	a0,00000000
	c.jr	ra

l230552E4:
	c.li	a0,FFFFFFFF

l230552E6:
	c.jr	ra

;; bloop_timer_init: 230552E8
;;   Called from:
;;     23039B7A (in looprt_evt_schedule)
;;     2303A04A (in loopset_led_trigger)
bloop_timer_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	addi	a2,zero,+00000024
	c.mv	s1,a1
	c.li	a1,00000000
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023070EB8
	sltu	a1,zero,s1
	c.slli	a1,01
	c.sw	s0,0(s0)
	c.sw	s0,4(s0)
	sb	a1,s0,+00000008
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bloop_timer_configure: 23055316
;;   Called from:
;;     23039B8A (in looprt_evt_schedule)
;;     2303A066 (in loopset_led_trigger)
bloop_timer_configure proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.mv	s0,a0
	c.swsp	a1,0000008C
	c.swsp	a2,0000000C
	c.swsp	a3,00000088
	c.swsp	a4,00000008
	c.swsp	a5,00000084
	jal	ra,00000000230302E8
	c.lwsp	t3,00000064
	c.lwsp	s8,00000084
	c.lwsp	s4,000000A4
	c.lwsp	a6,000000C4
	c.lwsp	a2,000000E4
	c.sw	s0,12(a0)
	c.add	a0,a1
	c.sw	s0,16(a0)
	c.sw	s0,28(a2)
	c.sw	s0,32(a3)
	c.sw	s0,20(a4)
	c.sw	s0,24(a5)
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

;; bloop_timer_repeat_enable: 2305534C
;;   Called from:
;;     2303A050 (in loopset_led_trigger)
bloop_timer_repeat_enable proc
	lbu	a5,a0,+00000008
	ori	a5,a5,+00000001
	sb	a5,a0,+00000008
	c.jr	ra

;; bloop_timer_repeat_reconfigure: 2305535A
;;   Called from:
;;     23055736 (in bloop_run)
bloop_timer_repeat_reconfigure proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s1,a0
	c.lw	a0,16(s0)
	c.lw	a0,12(a0)
	c.sub	s0,a0
	jal	ra,00000000230302E8
	c.add	s0,a0
	c.sw	s1,16(s0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.sw	s1,12(a0)
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bloop_timer_register: 2305537E
;;   Called from:
;;     23039BA4 (in looprt_evt_schedule)
;;     23039C96 (in looprt_timer_register)
;;     2305573E (in bloop_run)
bloop_timer_register proc
	lw	a2,a0,+00000494
	addi	a3,a0,+00000490
	bne	a3,a2,00000000230553CA

l2305538A:
	c.sw	a1,4(a3)
	c.sw	a1,0(a3)
	sw	a1,a0,+00000494
	sw	a1,a0,+00000490
	c.jr	ra

l23055398:
	lw	a6,a1,+00000010
	lw	a7,a4,+00000010
	sub	a6,a6,a7
	blt	zero,a6,00000000230553B6

l230553A8:
	c.bnez	a5,00000000230553BE

l230553AA:
	c.sw	a1,4(a2)
	c.sw	a1,0(a3)
	sw	a1,a0,+00000494
	c.sw	a2,0(a1)
	c.jr	ra

l230553B6:
	c.mv	a5,a4
	c.lw	a4,4(a4)

l230553BA:
	bne	a3,a4,0000000023055398

l230553BE:
	c.lw	a5,4(a4)
	c.sw	a1,0(a5)
	c.sw	a1,4(a4)
	c.sw	a5,4(a1)
	c.sw	a4,0(a1)
	c.jr	ra

l230553CA:
	c.mv	a4,a2
	c.li	a5,00000000
	c.j	00000000230553BA

;; bloop_wait_startup: 230553D0
;;   Called from:
;;     23039C08 (in looprt_start)
;;     23039C60 (in looprt_start_auto)
bloop_wait_startup proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0

l230553D8:
	c.lw	s0,0(a5)
	c.beqz	a5,00000000230553E4

l230553DC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230553E4:
	c.li	a0,00000001
	jal	ra,0000000023030630
	c.j	00000000230553D8

;; bloop_evt_set_async: 230553EC
;;   Called from:
;;     23039B4A (in looprt_evt_notify_async)
bloop_evt_set_async proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.li	a5,0000001F
	bgeu	a5,a1,0000000023055412

l230553F8:
	lui	a1,00023089
	lui	a0,00023086
	addi	a2,zero,+0000015A
	addi	a1,a1,-00000784
	addi	a0,a0,+00000048
	jal	ra,0000000023052118

l23055410:
	c.j	0000000023055410

l23055412:
	c.mv	s0,a0
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	jal	ra,000000002303100A
	c.lwsp	s0,00000064
	c.li	a4,00000001
	c.lwsp	a2,00000084
	sll	a3,a4,a1
	c.lw	s0,4(a4)
	c.slli	a1,02
	c.add	a1,s0
	c.or	a4,a3
	c.sw	s0,4(a4)
	c.lw	a1,16(a5)
	c.or	a5,a2
	c.sw	a1,16(a5)
	jal	ra,000000002303101E
	c.lw	s0,0(a0)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.li	a3,00000000
	c.li	a2,00000002
	c.li	a1,00000000
	c.addi16sp	00000020
	jal	zero,00000000230312F2

;; bloop_evt_set_sync: 2305544C
;;   Called from:
;;     230556C2 (in bloop_run)
bloop_evt_set_sync proc
	c.li	a5,0000001F
	bgeu	a5,a1,0000000023055470

l23055452:
	lui	a1,00023089
	lui	a0,00023086
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+00000177
	addi	a1,a1,-00000784
	addi	a0,a0,+00000048
	c.swsp	ra,00000084
	jal	ra,0000000023052118

l2305546E:
	c.j	000000002305546E

l23055470:
	c.li	a4,00000001
	sll	a3,a4,a1
	c.lw	a0,8(a4)
	c.slli	a1,02
	c.or	a4,a3
	c.sw	a0,8(a4)
	c.add	a0,a1
	c.lw	a0,16(a5)
	c.or	a5,a2
	c.sw	a0,16(a5)
	c.jr	ra

;; bloop_evt_unset_sync: 23055488
;;   Called from:
;;     230555CC (in bloop_run)
bloop_evt_unset_sync proc
	c.li	a5,0000001F
	bgeu	a5,a1,00000000230554AC

l2305548E:
	lui	a1,00023089
	lui	a0,00023086
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+0000017F
	addi	a1,a1,-00000784
	addi	a0,a0,+00000048
	c.swsp	ra,00000084
	jal	ra,0000000023052118

l230554AA:
	c.j	00000000230554AA

l230554AC:
	c.li	a5,00000001
	sll	a5,a5,a1
	c.lw	a0,8(a1)
	xori	a5,a5,-00000001
	c.and	a5,a1
	c.sw	a0,8(a5)
	c.jr	ra

;; bloop_run: 230554BE
;;   Called from:
;;     23039B28 (in proc_entry_looprt)
bloop_run proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.mv	s0,a0
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	jal	ra,0000000023030D24
	c.sw	s0,0(a0)
	lui	s2,00042021
	lui	s3,00042021
	lui	s4,0004200E
	lui	s5,00023089

l230554F2:
	addi	s7,s0,+00000490

l230554F6:
	jal	ra,000000002303100A
	c.lw	s0,8(a5)
	c.lw	s0,4(a4)
	sw	zero,s0,+00000004
	c.or	a5,a4
	c.sw	s0,8(a5)
	jal	ra,000000002303101E
	c.lw	s0,8(a5)
	c.bnez	a5,00000000230555D2

l2305550E:
	lw	a5,s0,+00000494
	c.li	a1,FFFFFFFF
	beq	a5,s7,0000000023055526

l23055518:
	c.lw	a5,16(s1)
	jal	ra,00000000230302E8
	sub	a1,s1,a0
	bge	zero,a1,00000000230555D2

l23055526:
	c.li	a0,00000001
	jal	ra,000000002303116C
	c.j	00000000230554F6

l2305552E:
	c.li	a5,0000001F
	sub	s1,a5,s1
	c.li	a5,FFFFFFFF
	beq	s1,a5,00000000230555EC

l2305553A:
	slli	s6,s1,00000002
	c.add	s6,s0
	lw	a1,s6,+00000410
	c.bnez	a1,0000000023055560

l23055546:
	lui	a1,00023089
	lui	a0,00023086
	addi	a2,zero,+00000105
	addi	a1,a1,-00000784
	addi	a0,a0,+00000048
	jal	ra,0000000023052118

l2305555E:
	c.j	000000002305555E

l23055560:
	c.swsp	a1,00000084
	jal	ra,000000002303100A
	lw	a4,s6,+00000010
	lw	a5,s6,+00000090
	sw	zero,s6,+00000010
	c.or	a5,a4
	sw	a5,s6,+00000090
	jal	ra,000000002303101E
	jal	ra,0000000023034748
	c.lwsp	a2,00000064
	addi	a3,s1,+00000024
	c.slli	a3,02
	c.lw	a1,4(a5)
	c.mv	s6,a0
	c.add	a3,s0
	addi	a2,s0,+00000008
	c.mv	a0,s0
	c.jalr	a5
	jal	ra,0000000023034748
	slli	a5,s1,00000004
	c.add	a5,s0
	lw	a4,a5,+00000218
	sub	a0,a0,s6
	sw	a0,a5,+00000214
	c.add	a4,a0
	sw	a4,a5,+00000218
	lw	a4,a5,+00000210
	bgeu	a4,a0,00000000230555BE

l230555BA:
	sw	a0,a5,+00000210

l230555BE:
	lw	a4,a5,+0000021C
	c.mv	a1,s1
	c.mv	a0,s0
	c.addi	a4,00000001
	sw	a4,a5,+0000021C
	jal	ra,0000000023055488
	c.j	00000000230554F2

l230555D2:
	lw	a5,s0,+00000494
	bne	a5,s7,0000000023055622

l230555DA:
	c.lw	s0,8(a0)
	jal	ra,000000002306C8C0
	c.mv	s1,a0
	c.lw	s0,12(a0)
	jal	ra,000000002306C8C0
	bge	a0,s1,000000002305552E

l230555EC:
	c.li	a5,0000001F
	sub	a0,a5,a0
	c.li	a5,FFFFFFFF
	beq	a0,a5,00000000230554F2

l230555F8:
	addi	a0,a0,+00000022
	c.slli	a0,03
	c.add	a0,s0
	jal	ra,000000002304B984
	bne	a0,zero,00000000230554F2

l23055608:
	lui	a1,00023089
	lui	a0,00023086
	addi	a2,zero,+00000124
	addi	a1,a1,-00000784
	addi	a0,a0,+00000048
	jal	ra,0000000023052118

l23055620:
	c.j	0000000023055620

l23055622:
	jal	ra,00000000230302E8
	lw	s1,s0,+00000494
	c.mv	s9,a0
	c.li	s6,00000000
	c.beqz	s1,0000000023055634

l23055630:
	lw	s6,s1,+00000004

l23055634:
	addi	s8,s0,+00000498

l23055638:
	bne	s1,s7,00000000230556B2

l2305563C:
	lw	s1,s0,+0000049C
	c.li	s6,00000000
	c.beqz	s1,0000000023055648

l23055644:
	lw	s6,s1,+00000004

l23055648:
	c.li	s7,00000001
	lui	s9,00023084
	lui	s10,00023089
	lui	s11,00023089

l23055656:
	beq	s1,s8,00000000230555DA

l2305565A:
	c.lw	s1,0(a4)
	c.lw	s1,4(a5)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	lbu	a5,s1,+00000008
	andi	a4,a5,+00000002
	c.beqz	a4,0000000023055700

l2305566C:
	lbu	a5,s2,-0000029C
	bltu	s7,a5,000000002305569C

l23055674:
	lbu	a5,s3,-0000029B
	bltu	s7,a5,000000002305569C

l2305567C:
	lw	a5,s4,-0000017C
	c.beqz	a5,00000000230556FA

l23055682:
	jal	ra,000000002303030A

l23055686:
	c.mv	a1,a0
	addi	a4,zero,+000000B8
	addi	a3,s5,-00000784
	addi	a2,s9,-000002D8
	addi	a0,s11,-0000075C
	jal	ra,000000002304B718

l2305569C:
	c.mv	a0,s1
	jal	ra,0000000023032272

l230556A2:
	c.li	a5,00000000
	beq	s6,zero,00000000230556AC

l230556A8:
	lw	a5,s6,+00000004

l230556AC:
	c.mv	s1,s6
	c.mv	s6,a5
	c.j	0000000023055656

l230556B2:
	c.lw	s1,16(a5)
	sub	a5,s9,a5
	blt	a5,zero,000000002305563C

l230556BC:
	c.lw	s1,24(a2)
	c.lw	s1,20(a1)
	c.mv	a0,s0
	jal	ra,000000002305544C
	c.lw	s1,28(a5)
	c.beqz	a5,00000000230556D2

l230556CA:
	c.lw	s1,32(a2)
	c.mv	a1,s1
	c.mv	a0,s0
	c.jalr	a5

l230556D2:
	c.lw	s1,4(a5)
	c.lw	s1,0(a4)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	lw	a5,s0,+0000049C
	sw	s8,s1,+00000000
	c.sw	s1,4(a5)
	sw	s1,s0,+0000049C
	c.sw	a5,0(s1)
	c.li	a5,00000000
	beq	s6,zero,00000000230556F4

l230556F0:
	lw	a5,s6,+00000004

l230556F4:
	c.mv	s1,s6
	c.mv	s6,a5
	c.j	0000000023055638

l230556FA:
	jal	ra,00000000230302E8
	c.j	0000000023055686

l23055700:
	c.andi	a5,00000001
	c.beqz	a5,00000000230556A2

l23055704:
	lbu	a5,s2,-0000029C
	bltu	s7,a5,0000000023055734

l2305570C:
	lbu	a5,s3,-0000029B
	bltu	s7,a5,0000000023055734

l23055714:
	lw	a5,s4,-0000017C
	c.beqz	a5,0000000023055744

l2305571A:
	jal	ra,000000002303030A

l2305571E:
	c.mv	a1,a0
	addi	a4,zero,+000000BB
	addi	a3,s5,-00000784
	addi	a2,s9,-000002D8
	addi	a0,s10,-0000073C
	jal	ra,000000002304B718

l23055734:
	c.mv	a0,s1
	jal	ra,000000002305535A
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002305537E
	c.j	00000000230556A2

l23055744:
	jal	ra,00000000230302E8
	c.j	000000002305571E

;; bloop_status_dump: 2305574A
;;   Called from:
;;     23039B56 (in looprt_evt_status_dump)
;;     230558FC (in loop_evt_entity_sys_evt)
bloop_status_dump proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.mv	s0,a0
	lui	a0,00023089
	addi	a0,a0,-00000710
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
	jal	ra,00000000230520DC
	c.lw	s0,8(a1)
	lui	a0,00023089
	addi	a0,a0,-000006F4
	jal	ra,0000000023052118
	c.lw	s0,12(a1)
	lui	a0,00023089
	addi	a0,a0,-000006E0
	jal	ra,0000000023052118
	jal	ra,00000000230302E8
	c.mv	s4,a0
	lui	a0,00023089
	addi	a0,a0,-000006CC
	jal	ra,00000000230520DC
	lw	s1,s0,+00000494
	addi	s3,s0,+00000490
	c.li	s2,00000000
	lui	s5,00023089

l230557B0:
	bne	s3,s1,0000000023055884

l230557B4:
	lui	a0,00023089
	addi	a1,zero,+00000020
	addi	a0,a0,-00000668
	lui	s3,00023089
	addi	s1,s0,+0000008C
	jal	ra,0000000023052118
	addi	s0,s0,+00000400
	c.li	s2,0000001F
	addi	s3,s3,-00000718
	lui	s5,00023089
	lui	s6,00023089
	lui	s7,00023089
	lui	s8,00023089
	lui	s9,00023089
	lui	s10,00023089

l230557EE:
	lw	a5,s1,+00000400
	c.mv	a2,s3
	c.beqz	a5,00000000230557F8

l230557F6:
	c.lw	a5,0(a2)

l230557F8:
	c.mv	a1,s2
	addi	a0,s5,-00000658
	jal	ra,0000000023052118
	lw	s4,s1,+00000400
	beq	s4,zero,0000000023055858

l2305580A:
	lw	a2,s1,+00000080
	lw	a1,s4,+00000004
	addi	a0,s6,-00000640
	c.swsp	a2,00000084
	lw	s11,s1,+00000000
	jal	ra,0000000023052118
	lw	a1,s4,+00000008
	addi	a0,s7,-00000628
	jal	ra,0000000023052118
	c.lw	s0,12(a1)
	addi	a0,s8,-00000614
	jal	ra,0000000023052118
	c.lwsp	a2,00000084
	c.mv	a1,s11
	addi	a0,s9,-00000600
	jal	ra,0000000023052118
	c.lw	s0,8(a2)
	addi	a5,zero,+000003E8
	c.lw	s0,0(a3)
	srl	a2,a2,a5
	c.lw	s0,4(a1)
	addi	a0,s10,-000005E4
	jal	ra,0000000023052118

l23055858:
	c.addi	s2,FFFFFFFF
	c.li	a5,FFFFFFFF
	c.addi	s1,FFFFFFFC
	c.addi	s0,FFFFFFF0
	bne	s2,a5,00000000230557EE

l23055864:
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
	c.li	a0,00000000
	c.addi16sp	00000050
	c.jr	ra

l23055884:
	c.lw	s1,16(a2)
	lw	a6,s1,+0000001C
	c.lw	s1,24(a5)
	c.lw	s1,20(a4)
	c.mv	a1,s2
	sub	a3,s4,a2
	addi	a0,s5,-000006B4
	jal	ra,0000000023052118
	c.addi	s2,00000001
	c.lw	s1,4(s1)
	c.j	00000000230557B0

;; loop_evt_entity_sys_handler: 230558A2
loop_evt_entity_sys_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.mv	a1,a2
	lw	a6,a2,+0000000C
	c.lw	a2,8(a5)
	lbu	a4,a2,+00000007
	lbu	a3,a2,+00000006
	lbu	a1,a1,+00000004
	lbu	a2,a2,+00000005
	lui	a0,00023089
	addi	a0,a0,-00000550
	jal	ra,0000000023052118
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; loop_evt_entity_sys_evt: 230558D2
loop_evt_entity_sys_evt proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.lw	a3,0(s0)
	c.lw	a2,0(a1)
	c.mv	s2,a0
	lui	a0,00023089
	c.mv	a2,s0
	addi	a0,a0,-000005A4
	c.mv	s1,a3
	jal	ra,0000000023052118

l230558F2:
	andi	a5,s0,+00000001
	c.beqz	a5,0000000023055914

l230558F8:
	c.mv	a0,s2
	c.andi	s0,FFFFFFFE
	jal	ra,000000002305574A
	c.bnez	s0,00000000230558F2

l23055902:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	sw	zero,s1,+00000000
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23055914:
	c.beqz	s0,0000000023055902

l23055916:
	lui	a1,00023089
	lui	a0,00023086
	addi	a2,zero,+0000002E
	addi	a1,a1,-00000564
	addi	a0,a0,+00000048
	jal	ra,0000000023052118

l2305592E:
	c.j	000000002305592E

;; misaligned_load_trap: 23055930
;;   Called from:
;;     23033C46 (in exception_entry)
misaligned_load_trap proc
	lui	a1,000000A0
	c.li	a4,00000003
	csrrs	a3,mstatus,zero
	andi	a6,a2,+00000002
	bne	a6,zero,0000000023055952

l23055942:
	c.lw	a2,0(a5)
	and	a6,a5,a4
	beq	a6,a4,0000000023055966

l2305594C:
	c.slli	a5,10
	c.srli	a5,00000010
	c.j	0000000023055966

l23055952:
	lhu	a5,a2,+00000000
	and	a6,a5,a4
	bne	a6,a4,0000000023055966

l2305595E:
	lhu	a6,a2,+00000002
	c.slli	a6,10
	c.add	a5,a6

l23055966:
	csrrw	zero,mstatus,zero
	andi	a1,a5,+00000003
	c.mv	t4,a2
	c.mv	t6,a5
	c.li	t3,00000004
	beq	a1,a4,000000002305597A

l23055978:
	c.li	t3,00000002

l2305597A:
	c.add	t3,t4
	csrrs	t5,mtval,gp
	c.lui	a4,00007000
	c.lui	a2,00002000
	addi	a4,a4,+0000007F
	c.and	a4,a5
	addi	a1,a2,+00000003
	beq	a4,a1,0000000023055A46

l23055992:
	c.addi	a2,00000007
	beq	a4,a2,00000000230559CE

l23055998:
	c.lui	a2,00001000
	c.addi	a2,00000003
	beq	a4,a2,0000000023055A56

l230559A0:
	c.lui	a2,00005000
	c.addi	a2,00000003
	beq	a4,a2,0000000023055A4E

l230559A8:
	c.lui	a4,0000E000
	c.addi	a4,00000003
	c.and	a4,a5
	c.lui	a2,00004000
	beq	a4,a2,0000000023055A5E

l230559B4:
	c.addi	a2,00000002
	beq	a4,a2,0000000023055A40

l230559BA:
	c.lui	a2,00006000
	beq	a4,a2,0000000023055A70

l230559C0:
	c.addi	a2,00000002
	beq	a4,a2,00000000230559CE

l230559C6:
	csrrwi	zero,mcause,00000005
	c.ebreak

l230559CC:
	c.j	00000000230559CC

l230559CE:
	c.li	a6,00000004
	c.li	t1,00000001
	c.li	a7,00000000

l230559D4:
	c.addi	sp,FFFFFFF0
	c.li	a5,00000000
	c.li	a4,00000000
	c.swsp	a5,00000084
	c.swsp	a4,00000004
	c.add	a6,t5
	c.mv	a5,t5

l230559E2:
	sub	a4,a5,t5
	c.addi4spn	a2,00000008
	c.add	a4,a2
	lui	a1,00000020
	c.mv	a2,t4
	c.addi	a5,00000001
	csrrs	a3,mstatus,zero
	lbu	t0,a5,-00000001
	csrrw	zero,mstatus,zero
	sb	t0,a4,+00000000
	bne	a6,a5,00000000230559E2

l23055A06:
	c.lwsp	s0,000000C4
	bne	t1,zero,0000000023055A2A

l23055A0C:
	srli	a5,t6,00000005
	andi	a5,a5,+0000007C
	sll	a4,a4,a7
	c.add	a5,a0
	sra	a7,a4,a7
	sw	a7,a5,+0000007C
	sw	t3,a0,+00000000
	c.addi	sp,00000010
	c.jr	ra

l23055A2A:
	srli	a5,t6,00000007
	c.andi	a5,0000001F
	c.addi	a5,00000001
	c.slli	a5,02
	c.add	a5,a0
	c.sw	a5,0(a4)
	sw	t3,a0,+00000000
	c.addi	sp,00000010
	c.jr	ra

l23055A40:
	c.srli	a5,00000007
	c.andi	a5,0000001F
	c.beqz	a5,00000000230559C6

l23055A46:
	c.li	a6,00000004
	c.li	t1,00000000
	c.li	a7,00000000
	c.j	00000000230559D4

l23055A4E:
	c.li	a6,00000002
	c.li	t1,00000000
	c.li	a7,00000000
	c.j	00000000230559D4

l23055A56:
	c.li	a6,00000002
	c.li	t1,00000000
	c.li	a7,00000010
	c.j	00000000230559D4

l23055A5E:
	c.srli	a5,00000002
	c.andi	a5,00000007
	c.addi	a5,00000008
	slli	t6,a5,00000007
	c.li	a6,00000004
	c.li	t1,00000000
	c.li	a7,00000000
	c.j	00000000230559D4

l23055A70:
	c.srli	a5,00000002
	c.andi	a5,00000007
	c.addi	a5,00000008
	slli	t6,a5,00000007
	c.li	a6,00000004
	c.li	t1,00000001
	c.li	a7,00000000
	c.j	00000000230559D4

;; misaligned_store_trap: 23055A82
;;   Called from:
;;     23033C5E (in exception_entry)
misaligned_store_trap proc
	lui	a1,000000A0
	c.li	a4,00000003
	csrrs	a3,mstatus,zero
	andi	a6,a2,+00000002
	bne	a6,zero,0000000023055AA4

l23055A94:
	c.lw	a2,0(a5)
	and	a6,a5,a4
	beq	a6,a4,0000000023055AB8

l23055A9E:
	c.slli	a5,10
	c.srli	a5,00000010
	c.j	0000000023055AB8

l23055AA4:
	lhu	a5,a2,+00000000
	and	a6,a5,a4
	bne	a6,a4,0000000023055AB8

l23055AB0:
	lhu	a6,a2,+00000002
	c.slli	a6,10
	c.add	a5,a6

l23055AB8:
	csrrw	zero,mstatus,zero
	andi	a1,a5,+00000003
	c.addi	sp,FFFFFFF0
	c.mv	t3,a0
	c.mv	t1,a2
	c.li	t4,00000004
	beq	a1,a4,0000000023055ACE

l23055ACC:
	c.li	t4,00000002

l23055ACE:
	srli	a4,a5,00000012
	addi	a0,t3,+0000007C
	andi	a4,a4,+0000007C
	c.add	a4,a0
	c.lw	a4,0(a4)
	c.lui	a2,00002000
	addi	a1,a2,+00000023
	c.swsp	a4,00000004
	c.lui	a4,00007000
	addi	a4,a4,+0000007F
	c.and	a4,a5
	c.add	t4,t1
	beq	a4,a1,0000000023055B74

l23055AF4:
	addi	a2,a2,+00000027
	beq	a4,a2,0000000023055B2C

l23055AFC:
	c.lui	a2,00001000
	addi	a2,a2,+00000023
	beq	a4,a2,0000000023055B84

l23055B06:
	c.lui	a2,0000E000
	addi	a4,a2,+00000003
	c.and	a4,a5
	c.lui	a1,0000C000
	beq	a4,a1,0000000023055B78

l23055B14:
	c.addi	a1,00000002
	beq	a4,a1,0000000023055BA2

l23055B1A:
	beq	a4,a2,0000000023055B88

l23055B1E:
	c.addi	a2,00000002
	beq	a4,a2,0000000023055BB8

l23055B24:
	csrrwi	zero,mcause,00000007
	c.ebreak

l23055B2A:
	c.j	0000000023055B2A

l23055B2C:
	c.srli	a5,00000011
	andi	a0,a5,+000000F8
	c.li	a4,00000004
	auipc	a5,00000000
	c.add	a5,a0
	jalr	t0,a5,+0000009A
23055B3E                                           2A C4               *.

l23055B40:
	csrrs	a7,mtval,gp
	c.addi4spn	a5,00000008
	c.add	a4,a5
	sub	a7,a7,a5

l23055B4C:
	add	a6,a7,a5
	lbu	a0,a5,+00000000
	lui	a1,00000020
	c.mv	a2,t1
	csrrs	a3,mstatus,zero
	sb	a0,a6,+00000000
	csrrw	zero,mstatus,zero
	c.addi	a5,00000001
	bne	a4,a5,0000000023055B4C

l23055B6C:
	sw	t4,t3,+00000000
	c.addi	sp,00000010
	c.jr	ra

l23055B74:
	c.li	a4,00000004
	c.j	0000000023055B40

l23055B78:
	c.andi	a5,0000001C
	c.add	a5,a0
	c.lw	a5,32(a5)
	c.li	a4,00000004
	c.swsp	a5,00000004
	c.j	0000000023055B40

l23055B84:
	c.li	a4,00000002
	c.j	0000000023055B40

l23055B88:
	srli	a0,a5,00000002
	c.andi	a0,00000007
	c.addi	a0,00000008
	c.slli	a0,03
	c.li	a4,00000004
	auipc	a5,00000000
	c.add	a5,a0
	jalr	t0,a5,+0000003A
23055B9E                                           2A C4               *.
23055BA0 45 B7                                           E.             

l23055BA2:
	srli	a4,a5,00000007
	c.andi	a4,0000001F
	c.beqz	a4,0000000023055B24

l23055BAA:
	andi	a5,a5,+0000007C
	c.add	a5,a0
	c.lw	a5,0(a5)
	c.li	a4,00000004
	c.swsp	a5,00000004
	c.j	0000000023055B40

l23055BB8:
	c.slli	a5,01
	andi	a0,a5,+000000F8
	c.li	a4,00000004
	auipc	a5,00000000
	c.add	a5,a0
	jalr	t0,a5,+0000000E
23055BCA                               2A C4 95 BF 53 05           *...S.
23055BD0 00 E0 67 80 02 00 53 85 00 E0 67 80 02 00 53 05 ..g...S...g...S.
23055BE0 01 E0 67 80 02 00 53 85 01 E0 67 80 02 00 53 05 ..g...S...g...S.
23055BF0 02 E0 67 80 02 00 53 85 02 E0 67 80 02 00 53 05 ..g...S...g...S.
23055C00 03 E0 67 80 02 00 53 85 03 E0 67 80 02 00       ..g...S...g... 

l23055C0E:
	fmv.x.w	a0,fs0
	jalr	zero,t0,+00000000

l23055C16:
	fmv.x.w	a0,fs1
	jalr	zero,t0,+00000000

l23055C1E:
	fmv.x.w	a0,fa0
	jalr	zero,t0,+00000000

l23055C26:
	fmv.x.w	a0,fa1
	jalr	zero,t0,+00000000

l23055C2E:
	fmv.x.w	a0,fa2
	jalr	zero,t0,+00000000

l23055C36:
	fmv.x.w	a0,fa3
	jalr	zero,t0,+00000000

l23055C3E:
	fmv.x.w	a0,fa4
	jalr	zero,t0,+00000000

l23055C46:
	fmv.x.w	a0,fa5
	jalr	zero,t0,+00000000
23055C4E                                           53 05               S.
23055C50 08 E0 67 80 02 00 53 85 08 E0 67 80 02 00 53 05 ..g...S...g...S.
23055C60 09 E0 67 80 02 00 53 85 09 E0 67 80 02 00 53 05 ..g...S...g...S.
23055C70 0A E0 67 80 02 00 53 85 0A E0 67 80 02 00 53 05 ..g...S...g...S.
23055C80 0B E0 67 80 02 00 53 85 0B E0 67 80 02 00 53 05 ..g...S...g...S.
23055C90 0C E0 67 80 02 00 53 85 0C E0 67 80 02 00 53 05 ..g...S...g...S.
23055CA0 0D E0 67 80 02 00 53 85 0D E0 67 80 02 00 53 05 ..g...S...g...S.
23055CB0 0E E0 67 80 02 00 53 85 0E E0 67 80 02 00 53 05 ..g...S...g...S.
23055CC0 0F E0 67 80 02 00 53 85 0F E0 67 80 02 00 53 00 ..g...S...g...S.
23055CD0 05 F0 67 80 02 00 D3 00 05 F0 67 80 02 00 53 01 ..g.......g...S.
23055CE0 05 F0 67 80 02 00 D3 01 05 F0 67 80 02 00 53 02 ..g.......g...S.
23055CF0 05 F0 67 80 02 00 D3 02 05 F0 67 80 02 00 53 03 ..g.......g...S.
23055D00 05 F0 67 80 02 00 D3 03 05 F0 67 80 02 00 53 04 ..g.......g...S.
23055D10 05 F0 67 80 02 00 D3 04 05 F0 67 80 02 00 53 05 ..g.......g...S.
23055D20 05 F0 67 80 02 00 D3 05 05 F0 67 80 02 00 53 06 ..g.......g...S.
23055D30 05 F0 67 80 02 00 D3 06 05 F0 67 80 02 00 53 07 ..g.......g...S.
23055D40 05 F0 67 80 02 00 D3 07 05 F0 67 80 02 00 53 08 ..g.......g...S.
23055D50 05 F0 67 80 02 00 D3 08 05 F0 67 80 02 00 53 09 ..g.......g...S.
23055D60 05 F0 67 80 02 00 D3 09 05 F0 67 80 02 00 53 0A ..g.......g...S.
23055D70 05 F0 67 80 02 00 D3 0A 05 F0 67 80 02 00 53 0B ..g.......g...S.
23055D80 05 F0 67 80 02 00 D3 0B 05 F0 67 80 02 00 53 0C ..g.......g...S.
23055D90 05 F0 67 80 02 00 D3 0C 05 F0 67 80 02 00 53 0D ..g.......g...S.
23055DA0 05 F0 67 80 02 00 D3 0D 05 F0 67 80 02 00 53 0E ..g.......g...S.
23055DB0 05 F0 67 80 02 00 D3 0E 05 F0 67 80 02 00 53 0F ..g.......g...S.
23055DC0 05 F0 67 80 02 00 D3 0F 05 F0 67 80 02 00       ..g.......g... 

;; backtrace_riscv: 23055DCE
;;   Called from:
;;     23033CC4 (in exception_entry)
backtrace_riscv proc
	c.li	a0,FFFFFFFF
	c.jr	ra

;; set_if: 23055DD2
;;   Called from:
;;     23047D78 (in dhcpd_start)
set_if proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	s2,a2
	c.mv	s1,a3
	c.beqz	a1,0000000023055DF6

l23055DE4:
	c.mv	a0,a1
	c.addi4spn	a1,0000000C
	jal	ra,000000002303FA94
	c.beqz	a0,0000000023055DF6

l23055DEE:
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,0000000023040342

l23055DF6:
	beq	s2,zero,0000000023055E0C

l23055DFA:
	c.addi4spn	a1,0000000C
	c.mv	a0,s2
	jal	ra,000000002303FA94
	c.beqz	a0,0000000023055E0C

l23055E04:
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,0000000023040378

l23055E0C:
	c.beqz	s1,0000000023055E20

l23055E0E:
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	jal	ra,000000002303FA94
	c.beqz	a0,0000000023055E20

l23055E18:
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,0000000023040360

l23055E20:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; block_cipher_df: 23055E2C
;;   Called from:
;;     230560F2 (in mbedtls_ctr_drbg_reseed)
;;     2305620C (in mbedtls_ctr_drbg_random_with_add)
block_cipher_df proc
	addi	a5,zero,+00000180
	bltu	a5,a2,0000000023055F92

l23055E34:
	addi	sp,sp,-00000340
	sw	s0,sp,+00000338
	sw	s1,sp,+00000334
	c.mv	s0,a2
	sw	s2,sp,+00000330
	addi	a2,zero,+000001A0
	c.mv	s2,a1
	c.mv	s1,a0
	c.li	a1,00000000
	c.addi4spn	a0,00000180
	sw	ra,sp,+0000033C
	sw	s3,sp,+0000032C
	sw	s4,sp,+00000328
	sw	s5,sp,+00000324
	sw	s6,sp,+00000320
	jal	ra,0000000023070EB8
	c.addi4spn	a0,00000068
	jal	ra,000000002305F996
	slli	a4,s0,00000010
	c.srli	a4,00000010
	c.srli	a4,00000008
	slli	a5,s0,00000008
	c.or	a5,a4
	sh	a5,sp,+00000192
	c.mv	a2,s0
	addi	a5,zero,+00000030
	c.mv	a1,s2
	c.addi4spn	a0,00000198
	sb	a5,sp,+00000197
	sh	zero,sp,+00000190
	jal	ra,0000000023070C7C
	c.addi4spn	a5,00000320
	c.add	a5,s0
	addi	a4,zero,-00000080
	sb	a4,a5,+00000E78
	c.addi	s0,00000019
	c.li	a5,00000000
	addi	a4,zero,+00000020

l23055EAC:
	c.addi4spn	a3,00000018
	c.add	a3,a5
	sb	a5,a3,+00000000
	c.addi	a5,00000001
	bne	a5,a4,0000000023055EAC

l23055EBA:
	addi	a2,zero,+00000100
	c.addi4spn	a1,00000018
	c.addi4spn	a0,00000068
	jal	ra,000000002305F9B4
	c.li	s3,00000000
	c.li	s5,00000010
	addi	s6,zero,+00000030

l23055ECE:
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	jal	ra,0000000023070EB8
	c.mv	s2,s0
	addi	s4,sp,+00000180

l23055EDE:
	c.addi4spn	a4,00000008
	c.li	a5,00000000

l23055EE2:
	add	a3,s4,a5
	lbu	a2,a4,+00000000
	lbu	a3,a3,+00000000
	c.addi	a5,00000001
	c.addi	a4,00000001
	c.xor	a3,a2
	sb	a3,a4,+00000FFF
	bne	a5,s5,0000000023055EE2

l23055EFC:
	c.addi	s4,00000010
	c.mv	a5,s2
	bgeu	s5,s2,0000000023055F06

l23055F04:
	c.li	a5,00000010

l23055F06:
	c.addi4spn	a3,00000008
	sub	s2,s2,a5
	c.mv	a2,a3
	c.li	a1,00000001
	c.addi4spn	a0,00000068
	jal	ra,00000000230605E8
	bne	s2,zero,0000000023055EDE

l23055F1A:
	c.addi4spn	a5,00000038
	add	a0,a5,s3
	c.li	a2,00000010
	c.addi4spn	a1,00000008
	jal	ra,0000000023070C7C
	lbu	a5,sp,+00000183
	c.addi	s3,00000010
	c.addi	a5,00000001
	sb	a5,sp,+00000183
	bne	s3,s6,0000000023055ECE

l23055F38:
	addi	a2,zero,+00000100
	c.addi4spn	a1,00000038
	c.addi4spn	a0,00000068
	jal	ra,000000002305F9B4
	addi	s0,s1,+00000030

l23055F48:
	c.addi4spn	a3,00000058
	c.mv	a2,a3
	c.li	a1,00000001
	c.addi4spn	a0,00000068
	jal	ra,00000000230605E8
	c.mv	a0,s1
	c.li	a2,00000010
	c.addi4spn	a1,00000058
	c.addi	s1,00000010
	jal	ra,0000000023070C7C
	bne	s0,s1,0000000023055F48

l23055F64:
	c.addi4spn	a0,00000068
	jal	ra,000000002305F9A0
	lw	ra,sp,+0000033C
	lw	s0,sp,+00000338
	lw	s1,sp,+00000334
	lw	s2,sp,+00000330
	lw	s3,sp,+0000032C
	lw	s4,sp,+00000328
	lw	s5,sp,+00000324
	lw	s6,sp,+00000320
	c.li	a0,00000000
	addi	sp,sp,+00000340
	c.jr	ra

l23055F92:
	addi	a0,zero,-00000038
	c.jr	ra

;; ctr_drbg_update_internal: 23055F98
;;   Called from:
;;     230560FA (in mbedtls_ctr_drbg_reseed)
;;     23056214 (in mbedtls_ctr_drbg_random_with_add)
;;     23056228 (in mbedtls_ctr_drbg_random_with_add)
ctr_drbg_update_internal proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s4,0000001C
	c.mv	s0,a0
	c.mv	s4,a1
	addi	a2,zero,+00000030
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.li	s2,00000000
	jal	ra,0000000023070EB8
	addi	s5,s0,+0000000F
	addi	s3,s0,+00000020
	addi	s6,zero,+00000030

l23055FC8:
	c.mv	s1,sp
	add	a3,sp,s2
	c.mv	a4,s5
	c.j	0000000023055FD4

l23055FD2:
	c.mv	a4,a5

l23055FD4:
	lbu	a5,a4,+00000000
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,a4,+00000000
	c.bnez	a5,0000000023055FEC

l23055FE4:
	addi	a5,a4,-00000001
	bne	s0,a4,0000000023055FD2

l23055FEC:
	c.mv	a2,s0
	c.li	a1,00000001
	c.mv	a0,s3
	c.addi	s2,00000010
	jal	ra,00000000230605E8
	bne	s2,s6,0000000023055FC8

l23055FFC:
	c.li	a5,00000000
	addi	a3,zero,+00000030

l23056002:
	add	a4,s4,a5
	lbu	a2,s1,+00000000
	lbu	a4,a4,+00000000
	c.addi	a5,00000001
	c.addi	s1,00000001
	c.xor	a4,a2
	sb	a4,s1,+00000FFF
	bne	a5,a3,0000000023056002

l2305601C:
	c.mv	a1,sp
	addi	a2,zero,+00000100
	c.mv	a0,s3
	jal	ra,000000002305F9B4
	c.addi4spn	a1,00000020
	c.mv	a0,s0
	c.li	a2,00000010
	jal	ra,0000000023070C7C
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.lwsp	a6,000001D8
	c.li	a0,00000000
	c.addi16sp	00000050
	c.jr	ra

;; mbedtls_ctr_drbg_init: 23056048
;;   Called from:
;;     230504DC (in iot_tls_connect)
mbedtls_ctr_drbg_init proc
	addi	a2,zero,+00000140
	c.li	a1,00000000
	jal	zero,0000000023070EB8

;; mbedtls_ctr_drbg_free: 23056052
;;   Called from:
;;     23050C0E (in iot_tls_destroy)
mbedtls_ctr_drbg_free proc
	c.beqz	a0,000000002305607C

l23056054:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	addi	a0,a0,+00000020
	c.swsp	ra,00000084
	jal	ra,000000002305F9A0
	addi	a5,s0,+00000140

l23056068:
	bne	s0,a5,0000000023056074

l2305606C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23056074:
	sb	zero,s0,+00000000
	c.addi	s0,00000001
	c.j	0000000023056068

l2305607C:
	c.jr	ra

;; mbedtls_ctr_drbg_reseed: 2305607E
;;   Called from:
;;     2305617E (in mbedtls_ctr_drbg_seed_entropy_len)
;;     230561EA (in mbedtls_ctr_drbg_random_with_add)
mbedtls_ctr_drbg_reseed proc
	c.addi16sp	FFFFFE60
	sw	s2,sp,+00000190
	sw	ra,sp,+0000019C
	sw	s0,sp,+00000198
	sw	s1,sp,+00000194
	sw	s3,sp,+0000018C
	sw	s4,sp,+00000188
	c.lw	a0,24(a4)
	addi	a5,zero,+00000180
	addi	s2,zero,-00000038
	bltu	a5,a4,0000000023056102

l230560A6:
	c.sub	a5,a4
	addi	s2,zero,-00000038
	bltu	a5,a2,0000000023056102

l230560B0:
	c.mv	s0,a0
	c.mv	s1,a2
	c.mv	s4,a1
	addi	a2,zero,+00000180
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,0000000023070EB8
	lw	a5,s0,+00000138
	c.lw	s0,24(a2)
	lw	a0,s0,+0000013C
	c.mv	a1,sp
	c.jalr	a5
	c.mv	s2,a0
	c.bnez	a0,0000000023056120

l230560D4:
	lw	s3,s0,+00000018
	beq	s4,zero,00000000230560EC

l230560DC:
	c.beqz	s1,00000000230560EC

l230560DE:
	add	a0,sp,s3
	c.mv	a2,s1
	c.mv	a1,s4
	jal	ra,0000000023070C7C
	c.add	s3,s1

l230560EC:
	c.mv	a2,s3
	c.mv	a1,sp
	c.mv	a0,sp
	jal	ra,0000000023055E2C
	c.mv	a1,sp
	c.mv	a0,s0
	jal	ra,0000000023055F98
	c.li	a5,00000001
	c.sw	s0,16(a5)

l23056102:
	lw	ra,sp,+0000019C
	lw	s0,sp,+00000198
	c.mv	a0,s2
	lw	s1,sp,+00000194
	lw	s2,sp,+00000190
	lw	s3,sp,+0000018C
	lw	s4,sp,+00000188
	c.addi16sp	000001A0
	c.jr	ra

l23056120:
	addi	s2,zero,-00000034
	c.j	0000000023056102

;; mbedtls_ctr_drbg_seed_entropy_len: 23056126
;;   Called from:
;;     23056194 (in mbedtls_ctr_drbg_seed)
mbedtls_ctr_drbg_seed_entropy_len proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.mv	s0,a0
	c.mv	s3,a1
	c.mv	s2,a2
	c.li	a1,00000000
	addi	a2,zero,+00000020
	c.addi4spn	a0,00000010
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	a3,00000084
	c.swsp	a4,00000004
	c.swsp	a5,00000080
	addi	s1,s0,+00000020
	jal	ra,0000000023070EB8
	c.mv	a0,s1
	jal	ra,000000002305F996
	c.lwsp	tp,000000E4
	sw	s3,s0,+00000138
	sw	s2,s0,+0000013C
	c.sw	s0,24(a5)
	c.lui	a5,00002000
	addi	a5,a5,+00000710
	c.sw	s0,28(a5)
	c.addi4spn	a1,00000010
	addi	a2,zero,+00000100
	c.mv	a0,s1
	jal	ra,000000002305F9B4
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000A4
	c.mv	a0,s0
	c.mv	a2,a4
	c.mv	a1,a3
	jal	ra,000000002305607E
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.addi16sp	00000050
	c.jr	ra

;; mbedtls_ctr_drbg_seed: 23056190
;;   Called from:
;;     23050530 (in iot_tls_connect)
mbedtls_ctr_drbg_seed proc
	addi	a5,zero,+00000020
	jal	zero,0000000023056126

;; mbedtls_ctr_drbg_random_with_add: 23056198
;;   Called from:
;;     23056284 (in mbedtls_ctr_drbg_random)
mbedtls_ctr_drbg_random_with_add proc
	c.addi16sp	FFFFFF90
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s1,000000B0
	c.swsp	s2,00000030
	c.swsp	s3,000000AC
	c.swsp	s4,0000002C
	c.swsp	s5,000000A8
	c.swsp	s6,00000028
	c.swsp	a3,00000084
	addi	a5,zero,+00000400
	bltu	a5,a2,000000002305627A

l230561B4:
	addi	a5,zero,+00000100
	c.swsp	a4,00000004
	c.mv	s0,a0
	addi	a0,zero,-00000038
	bltu	a5,a4,00000000230561F0

l230561C4:
	c.mv	s3,a1
	c.mv	s1,a2
	c.li	a1,00000000
	addi	a2,zero,+00000030
	c.addi4spn	a0,00000020
	jal	ra,0000000023070EB8
	c.lw	s0,16(a2)
	c.lw	s0,28(a5)
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000A4
	blt	a5,a2,00000000230561E4

l230561E0:
	c.lw	s0,20(a5)
	c.beqz	a5,0000000023056204

l230561E4:
	c.mv	a2,a4
	c.mv	a1,a3
	c.mv	a0,s0
	jal	ra,000000002305607E
	c.beqz	a0,0000000023056218

l230561F0:
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.lwsp	t0,00000134
	c.lwsp	ra,00000158
	c.lwsp	t4,00000068
	c.lwsp	s9,00000088
	c.lwsp	s5,000000A8
	c.lwsp	a7,000000C8
	c.addi16sp	00000070
	c.jr	ra

l23056204:
	c.beqz	a4,0000000023056218

l23056206:
	c.mv	a1,a3
	c.mv	a2,a4
	c.addi4spn	a0,00000020
	jal	ra,0000000023055E2C
	c.addi4spn	a1,00000020
	c.mv	a0,s0
	jal	ra,0000000023055F98

l23056218:
	addi	s4,s0,+0000000F
	addi	s5,s0,+00000020
	c.li	s6,00000010

l23056222:
	c.bnez	s1,0000000023056236

l23056224:
	c.addi4spn	a1,00000020
	c.mv	a0,s0
	jal	ra,0000000023055F98
	c.lw	s0,16(a5)
	c.li	a0,00000000
	c.addi	a5,00000001
	c.sw	s0,16(a5)
	c.j	00000000230561F0

l23056236:
	c.mv	a4,s4

l23056238:
	lbu	a5,a4,+00000000
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,a4,+00000000
	c.bnez	a5,0000000023056250

l23056248:
	addi	a5,a4,-00000001
	bne	s0,a4,0000000023056276

l23056250:
	c.addi4spn	a3,00000010
	c.mv	a2,s0
	c.li	a1,00000001
	c.mv	a0,s5
	jal	ra,00000000230605E8
	c.mv	s2,s1
	bgeu	s6,s1,0000000023056264

l23056262:
	c.li	s2,00000010

l23056264:
	c.mv	a0,s3
	c.mv	a2,s2
	c.addi4spn	a1,00000010
	jal	ra,0000000023070C7C
	c.add	s3,s2
	sub	s1,s1,s2
	c.j	0000000023056222

l23056276:
	c.mv	a4,a5
	c.j	0000000023056238

l2305627A:
	addi	a0,zero,-00000036
	c.j	00000000230561F0

;; mbedtls_ctr_drbg_random: 23056280
mbedtls_ctr_drbg_random proc
	c.li	a4,00000000
	c.li	a3,00000000
	jal	zero,0000000023056198

;; entropy_update: 23056288
;;   Called from:
;;     23056344 (in entropy_gather_internal.part.0)
entropy_update proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	ra,000000A4
	addi	a5,zero,+00000020
	c.mv	s2,a0
	c.mv	s3,a1
	c.mv	s1,a2
	c.mv	s0,a3
	bgeu	a5,a3,00000000230562B6

l230562A4:
	c.mv	a1,s0
	c.mv	a0,s1
	c.li	a3,00000000
	c.addi4spn	a2,00000010
	jal	ra,0000000023059694
	c.addi4spn	s1,00000010
	addi	s0,zero,+00000020

l230562B6:
	c.addi4spn	a1,0000000C
	c.mv	a0,s2
	c.li	a2,00000002
	sb	s3,sp,+0000000C
	sb	s0,sp,+0000000D
	jal	ra,0000000023059500
	c.mv	a0,s2
	c.mv	a2,s0
	c.mv	a1,s1
	jal	ra,0000000023059500
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.li	a0,00000000
	c.addi16sp	00000050
	c.jr	ra

;; entropy_gather_internal.part.0: 230562E2
;;   Called from:
;;     23056400 (in mbedtls_entropy_func)
entropy_gather_internal.part.0 proc
	c.addi16sp	FFFFFF50
	c.swsp	s0,00000054
	c.swsp	s1,000000D0
	c.swsp	s2,00000050
	c.swsp	s3,000000CC
	c.swsp	s4,0000004C
	c.swsp	ra,000000D4
	c.mv	s2,a0
	addi	s0,a0,+00000078
	c.li	s3,00000000
	c.li	s1,00000000
	c.li	s4,00000001

l230562FC:
	lw	a5,s2,+00000074
	blt	s1,a5,000000002305631E

l23056304:
	c.li	a0,00000000
	bne	s3,zero,000000002305630E

l2305630A:
	addi	a0,zero,-0000003D

l2305630E:
	c.lwsp	a4,00000130
	c.lwsp	a0,00000114
	c.lwsp	t1,00000134
	c.lwsp	sp,00000158
	c.lwsp	t5,00000068
	c.lwsp	s10,00000088
	c.addi16sp	000000B0
	c.jr	ra

l2305631E:
	c.lw	s0,16(a5)
	bne	a5,s4,0000000023056326

l23056324:
	c.li	s3,00000001

l23056326:
	c.lw	s0,0(a5)
	c.lw	s0,4(a0)
	c.swsp	zero,00000084
	c.addi4spn	a3,0000000C
	addi	a2,zero,+00000080
	c.addi4spn	a1,00000010
	c.jalr	a5
	c.bnez	a0,000000002305630E

l23056338:
	c.lwsp	a2,000000A4
	c.beqz	a3,0000000023056350

l2305633C:
	c.addi4spn	a2,00000010
	andi	a1,s1,+000000FF
	c.mv	a0,s2
	jal	ra,0000000023056288
	c.lw	s0,8(a5)
	c.lwsp	a2,000000C4
	c.add	a5,a4
	c.sw	s0,8(a5)

l23056350:
	c.addi	s1,00000001
	c.addi	s0,00000014
	c.j	00000000230562FC

;; mbedtls_entropy_init: 23056356
;;   Called from:
;;     2305050C (in iot_tls_connect)
mbedtls_entropy_init proc
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+00000208
	c.li	a1,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023070EB8
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002305872C
	c.lw	s0,116(a4)
	c.li	a5,00000013
	blt	a5,a4,00000000230563A0

l23056378:
	c.li	a5,00000014
	add	a5,a4,a5
	lui	a3,00023056
	addi	a3,a3,+00000490
	c.addi	a4,00000001
	c.add	a5,s0
	c.sw	a5,120(a3)
	addi	a3,zero,+00000020
	sw	a3,a5,+00000084
	c.li	a3,00000001
	sw	zero,a5,+0000007C
	sw	a3,a5,+00000088
	c.sw	s0,116(a4)

l230563A0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_entropy_free: 230563A8
;;   Called from:
;;     23050C14 (in iot_tls_destroy)
mbedtls_entropy_free proc
	addi	a5,a0,+00000208

l230563AC:
	bne	a0,a5,00000000230563B2

l230563B0:
	c.jr	ra

l230563B2:
	sb	zero,a0,+00000000
	c.addi	a0,00000001
	c.j	00000000230563AC

;; mbedtls_entropy_func: 230563BA
mbedtls_entropy_func proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	addi	a5,zero,+00000020
	bgeu	a5,a2,00000000230563EA

l230563D2:
	addi	s1,zero,-0000003C

l230563D6:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s1
	c.lwsp	a6,00000158
	c.lwsp	s4,00000134
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

l230563EA:
	c.mv	s0,a0
	c.mv	s5,a1
	c.mv	s4,a2
	addi	s3,zero,+00000102

l230563F4:
	c.addi	s3,FFFFFFFF
	beq	s3,zero,00000000230563D2

l230563FA:
	c.lw	s0,116(a5)
	c.beqz	a5,000000002305648A

l230563FE:
	c.mv	a0,s0
	jal	ra,00000000230562E2
	c.mv	s1,a0
	c.bnez	a0,00000000230563D6

l23056408:
	c.lw	s0,116(a2)
	addi	s2,s0,+00000080
	c.mv	a5,s2
	c.li	a4,00000000
	c.li	a3,00000001

l23056414:
	blt	a4,a2,0000000023056470

l23056418:
	c.beqz	a3,00000000230563F4

l2305641A:
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,0000000023070EB8
	c.mv	a1,sp
	c.mv	a0,s0
	jal	ra,0000000023059508
	addi	a2,zero,+00000074
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070EB8
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002305872C
	addi	a2,zero,+00000020
	c.mv	a1,sp
	c.mv	a0,s0
	jal	ra,0000000023059500
	c.li	a3,00000000
	c.mv	a2,sp
	addi	a1,zero,+00000020
	c.mv	a0,sp
	jal	ra,0000000023059694
	c.lw	s0,116(a4)
	c.li	a5,00000000

l23056460:
	blt	a5,a4,0000000023056480

l23056464:
	c.mv	a2,s4
	c.mv	a1,sp
	c.mv	a0,s5
	jal	ra,0000000023070C7C
	c.j	00000000230563D6

l23056470:
	c.lw	a5,0(a0)
	c.lw	a5,4(a1)
	bgeu	a0,a1,000000002305647A

l23056478:
	c.li	a3,00000000

l2305647A:
	c.addi	a4,00000001
	c.addi	a5,00000014
	c.j	0000000023056414

l23056480:
	sw	zero,s2,+00000000
	c.addi	a5,00000001
	c.addi	s2,00000014
	c.j	0000000023056460

l2305648A:
	addi	s1,zero,-00000040
	c.j	00000000230563D6

;; mbedtls_platform_entropy_poll: 23056490
mbedtls_platform_entropy_poll proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	sw	zero,a3,+00000000
	c.li	a0,00000000
	c.li	s0,00000000

l2305649E:
	bne	s0,a2,00000000230564AE

l230564A2:
	c.sw	a3,0(s0)
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l230564AE:
	andi	a5,s0,+00000003
	c.bnez	a5,00000000230564C4

l230564B4:
	c.swsp	a3,00000084
	c.swsp	a2,00000004
	c.swsp	a1,00000080
	jal	ra,000000002303404A
	c.lwsp	a2,000000A4
	c.lwsp	s0,00000084
	c.lwsp	tp,00000064

l230564C4:
	add	a5,a1,s0
	sb	a0,a5,+00000000
	c.addi	s0,00000001
	c.srli	a0,00000008
	c.j	000000002305649E

;; mbedtls_pk_init: 230564D2
;;   Called from:
;;     230504FA (in iot_tls_connect)
mbedtls_pk_init proc
	c.beqz	a0,00000000230564DC

l230564D4:
	sw	zero,a0,+00000000
	sw	zero,a0,+00000004

l230564DC:
	c.jr	ra

;; mbedtls_pk_free: 230564DE
;;   Called from:
;;     23050BF6 (in iot_tls_destroy)
;;     23056BE4 (in pk_parse_key_pkcs8_unencrypted_der)
;;     23056E02 (in mbedtls_pk_parse_subpubkey)
;;     23056EFE (in mbedtls_pk_parse_key)
;;     23056F26 (in mbedtls_pk_parse_key)
;;     23056F50 (in mbedtls_pk_parse_key)
;;     23056FCC (in mbedtls_pk_parse_key)
;;     2305EABE (in mbedtls_x509_crt_free)
mbedtls_pk_free proc
	c.beqz	a0,000000002305650A

l230564E0:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,0(a5)
	c.mv	s0,a0
	c.beqz	a5,00000000230564FA

l230564EC:
	c.lw	a5,40(a5)
	c.lw	a0,4(a0)
	c.jalr	a5
	addi	a5,s0,+00000008

l230564F6:
	bne	s0,a5,0000000023056502

l230564FA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23056502:
	sb	zero,s0,+00000000
	c.addi	s0,00000001
	c.j	00000000230564F6

l2305650A:
	c.jr	ra

;; mbedtls_pk_info_from_type: 2305650C
;;   Called from:
;;     23056BB0 (in pk_parse_key_pkcs8_unencrypted_der)
;;     23056DC4 (in mbedtls_pk_parse_subpubkey)
;;     23056F04 (in mbedtls_pk_parse_key)
;;     23056F2C (in mbedtls_pk_parse_key)
;;     23056F8A (in mbedtls_pk_parse_key)
;;     2305702E (in mbedtls_pk_parse_key)
mbedtls_pk_info_from_type proc
	c.addi	a0,FFFFFFFF
	andi	a0,a0,+000000FF
	c.li	a5,00000002
	bltu	a5,a0,0000000023056528

l23056518:
	lui	a5,00023089
	addi	a5,a5,-000004CC
	c.slli	a0,02
	c.add	a0,a5
	c.lw	a0,0(a0)
	c.jr	ra

l23056528:
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_pk_setup: 2305652C
;;   Called from:
;;     23056BC2 (in pk_parse_key_pkcs8_unencrypted_der)
;;     23056DD0 (in mbedtls_pk_parse_subpubkey)
;;     23056F0E (in mbedtls_pk_parse_key)
;;     23056F36 (in mbedtls_pk_parse_key)
;;     23056FB4 (in mbedtls_pk_parse_key)
;;     23057038 (in mbedtls_pk_parse_key)
mbedtls_pk_setup proc
	c.beqz	a0,0000000023056556

l2305652E:
	c.beqz	a1,0000000023056556

l23056530:
	c.lw	a0,0(a5)
	c.bnez	a5,0000000023056556

l23056534:
	c.lw	a1,36(a5)
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	c.jalr	a5
	c.sw	s0,4(a0)
	c.beqz	a0,000000002305655E

l23056548:
	c.sw	s0,0(s1)
	c.li	a0,00000000

l2305654C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23056556:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000180
	c.jr	ra

l2305655E:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000080
	c.j	000000002305654C

;; mbedtls_pk_can_do: 23056566
;;   Called from:
;;     230566EE (in mbedtls_pk_verify_ext)
;;     2305AC5A (in mbedtls_ssl_sig_from_pk)
;;     2305D468 (in mbedtls_ssl_parse_certificate)
;;     2306B202 (in mbedtls_ssl_handshake_server_step)
mbedtls_pk_can_do proc
	c.beqz	a0,0000000023056574

l23056568:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023056574

l2305656C:
	lw	t1,a5,+0000000C
	c.mv	a0,a1
	c.jr	t1

l23056574:
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_pk_verify: 23056578
;;   Called from:
;;     23056762 (in mbedtls_pk_verify_ext)
mbedtls_pk_verify proc
	c.bnez	a0,0000000023056590

l2305657A:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000180
	c.jr	ra

l23056582:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000180

l23056588:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23056590:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.beqz	a0,0000000023056582

l2305659C:
	c.bnez	a3,00000000230565BC

l2305659E:
	c.mv	a0,a1
	c.swsp	a5,00000084
	c.swsp	a4,00000004
	c.swsp	a2,00000080
	c.swsp	a1,00000000
	jal	ra,00000000230656F8
	c.beqz	a0,0000000023056582

l230565AE:
	jal	ra,0000000023065A0C
	c.lwsp	a2,000000E4
	c.lwsp	s0,000000C4
	c.lwsp	tp,00000084
	c.lwsp	zero,00000064
	c.mv	a3,a0

l230565BC:
	c.lw	s0,0(a0)
	lw	t1,a0,+00000010
	beq	t1,zero,00000000230565D0

l230565C6:
	c.lw	s0,4(a0)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	t1

l230565D0:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000100
	c.j	0000000023056588

;; mbedtls_pk_sign: 230565D8
mbedtls_pk_sign proc
	c.bnez	a0,00000000230565F0

l230565DA:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000180
	c.jr	ra

l230565E2:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000180

l230565E8:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

l230565F0:
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.beqz	a0,00000000230565E2

l230565FC:
	c.bnez	a3,0000000023056624

l230565FE:
	c.mv	a0,a1
	c.swsp	a7,0000008C
	c.swsp	a6,0000000C
	c.swsp	a5,00000088
	c.swsp	a4,00000008
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	jal	ra,00000000230656F8
	c.beqz	a0,00000000230565E2

l23056612:
	jal	ra,0000000023065A0C
	c.lwsp	t3,00000028
	c.lwsp	s8,00000008
	c.lwsp	s4,000000E4
	c.lwsp	a6,000000C4
	c.lwsp	a2,00000084
	c.lwsp	s0,00000064
	c.mv	a3,a0

l23056624:
	c.lw	s0,0(a0)
	lw	t1,a0,+00000014
	beq	t1,zero,0000000023056638

l2305662E:
	c.lw	s0,4(a0)
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.addi16sp	00000030
	c.jr	t1

l23056638:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000100
	c.j	00000000230565E8

;; mbedtls_pk_decrypt: 23056640
mbedtls_pk_decrypt proc
	c.beqz	a0,0000000023056656

l23056642:
	lw	t1,a0,+00000000
	beq	t1,zero,0000000023056656

l2305664A:
	lw	t1,t1,+00000018
	beq	t1,zero,000000002305665E

l23056652:
	c.lw	a0,4(a0)
	c.jr	t1

l23056656:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000180
	c.jr	ra

l2305665E:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000100
	c.jr	ra

;; mbedtls_pk_encrypt: 23056666
mbedtls_pk_encrypt proc
	c.beqz	a0,000000002305667C

l23056668:
	lw	t1,a0,+00000000
	beq	t1,zero,000000002305667C

l23056670:
	lw	t1,t1,+0000001C
	beq	t1,zero,0000000023056684

l23056678:
	c.lw	a0,4(a0)
	c.jr	t1

l2305667C:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000180
	c.jr	ra

l23056684:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000100
	c.jr	ra

;; mbedtls_pk_get_bitlen: 2305668C
;;   Called from:
;;     230566FE (in mbedtls_pk_verify_ext)
;;     2305672C (in mbedtls_pk_verify_ext)
;;     2305DBF8 (in x509_profile_check_key)
;;     2305DE0E (in mbedtls_x509_crt_info)
mbedtls_pk_get_bitlen proc
	c.beqz	a0,000000002305669A

l2305668E:
	c.lw	a0,0(a5)
	c.beqz	a5,000000002305669A

l23056692:
	lw	t1,a5,+00000008
	c.lw	a0,4(a0)
	c.jr	t1

l2305669A:
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_pk_verify_ext: 2305669E
;;   Called from:
;;     2305E578 (in x509_crt_verify_top.isra.7)
;;     2305E780 (in x509_crt_verify_child)
mbedtls_pk_verify_ext proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.bnez	a2,00000000230566D2

l230566B4:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000180

l230566BA:
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

l230566D2:
	lw	t1,a2,+00000000
	beq	t1,zero,00000000230566B4

l230566DA:
	c.mv	s0,a1
	c.mv	s7,a0
	c.mv	a1,a0
	c.mv	a0,a2
	c.mv	s2,a7
	c.mv	s6,a6
	c.mv	s5,a5
	c.mv	s4,a4
	c.mv	s3,a3
	c.mv	s1,a2
	jal	ra,0000000023056566
	c.beqz	a0,0000000023056766

l230566F4:
	c.li	a5,00000006
	bne	s7,a5,0000000023056740

l230566FA:
	c.beqz	s0,00000000230566B4

l230566FC:
	c.mv	a0,s1
	jal	ra,000000002305668C
	c.addi	a0,00000007
	c.srli	a0,00000003
	bltu	s2,a0,000000002305676E

l2305670A:
	c.swsp	s6,00000080
	c.lw	s0,4(a5)
	c.mv	a6,s4
	c.mv	a4,s3
	c.swsp	a5,00000000
	lbu	a7,s0,+00000000
	c.lw	s1,4(a0)
	c.mv	a5,s5
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,00000000230582AA
	c.mv	s0,a0
	c.bnez	a0,00000000230566BA

l2305672A:
	c.mv	a0,s1
	jal	ra,000000002305668C
	c.addi	a0,00000007
	c.srli	a0,00000003
	bgeu	a0,s2,00000000230566BA

l23056738:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000700
	c.j	00000000230566BA

l23056740:
	c.bnez	s0,00000000230566B4

l23056742:
	c.lwsp	s8,00000114
	c.lwsp	t3,00000130
	c.lwsp	t3,000000E8
	c.mv	a5,s2
	c.mv	a4,s6
	c.lwsp	a6,00000158
	c.lwsp	zero,000001D8
	c.mv	a3,s5
	c.mv	a2,s4
	c.lwsp	tp,000001B8
	c.lwsp	s0,00000198
	c.mv	a1,s3
	c.mv	a0,s1
	c.lwsp	a2,00000178
	c.lwsp	s4,00000134
	c.addi16sp	00000040
	jal	zero,0000000023056578

l23056766:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000100
	c.j	00000000230566BA

l2305676E:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000380
	c.j	00000000230566BA

;; mbedtls_pk_debug: 23056776
;;   Called from:
;;     2306343C (in mbedtls_debug_print_crt)
mbedtls_pk_debug proc
	c.beqz	a0,0000000023056790

l23056778:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023056790

l2305677C:
	c.lw	a5,44(a5)
	c.beqz	a5,0000000023056798

l23056780:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,4(a0)
	c.jalr	a5
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23056790:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000180
	c.jr	ra

l23056798:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000100
	c.jr	ra

;; mbedtls_pk_get_name: 230567A0
;;   Called from:
;;     2305DDFA (in mbedtls_x509_crt_info)
mbedtls_pk_get_name proc
	c.beqz	a0,00000000230567AA

l230567A2:
	c.lw	a0,0(a5)
	c.beqz	a5,00000000230567AA

l230567A6:
	c.lw	a5,4(a0)
	c.jr	ra

l230567AA:
	lui	a0,00023089
	addi	a0,a0,-000004C0
	c.jr	ra

;; mbedtls_pk_get_type: 230567B4
;;   Called from:
;;     2305E974 (in mbedtls_x509_crt_verify_with_profile)
mbedtls_pk_get_type proc
	c.beqz	a0,00000000230567C2

l230567B6:
	c.lw	a0,0(a5)
	c.li	a0,00000000
	c.beqz	a5,00000000230567C4

l230567BC:
	lbu	a0,a5,+00000000
	c.jr	ra

l230567C2:
	c.li	a0,00000000

l230567C4:
	c.jr	ra

;; pk_use_ecparams: 230567C6
;;   Called from:
;;     230569F4 (in pk_parse_key_sec1_der)
;;     23056BF8 (in pk_parse_key_pkcs8_unencrypted_der)
;;     23056E74 (in mbedtls_pk_parse_subpubkey)
pk_use_ecparams proc
	c.lw	a0,0(a4)
	c.li	a5,00000006
	beq	a4,a5,00000000230567E4

l230567CE:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000300
	c.jr	ra

l230567D6:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000300

l230567DC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l230567E4:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a1
	addi	a1,sp,+0000000F
	c.swsp	ra,0000008C
	jal	ra,0000000023065CF0
	c.bnez	a0,000000002305680C

l230567F6:
	lbu	a5,s0,+00000000
	lbu	a1,sp,+0000000F
	c.beqz	a5,0000000023056804

l23056800:
	bne	a5,a1,00000000230567D6

l23056804:
	c.mv	a0,s0
	jal	ra,0000000023064D54
	c.j	00000000230567DC

l2305680C:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000600
	c.j	00000000230567DC

;; pk_parse_key_pkcs1_der: 23056814
;;   Called from:
;;     23056BDA (in pk_parse_key_pkcs8_unencrypted_der)
;;     23056F1C (in mbedtls_pk_parse_key)
;;     23056FC2 (in mbedtls_pk_parse_key)
pk_parse_key_pkcs1_der proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	a1,00000084
	c.mv	s1,a0
	c.add	a1,a2
	addi	a3,zero,+00000030
	c.addi4spn	a2,00000008
	c.addi4spn	a0,0000000C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	jal	ra,00000000230608F4
	c.beqz	a0,000000002305684C

l23056834:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000300

l2305683A:
	c.add	s0,a0

l2305683C:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2305684C:
	c.lwsp	a2,00000048
	c.lwsp	s0,000000E4
	c.mv	a2,s1
	c.addi4spn	a0,0000000C
	c.add	s2,a5
	c.mv	a1,s2
	jal	ra,000000002306095A
	c.bnez	a0,0000000023056834

l2305685E:
	c.lw	s1,0(a5)
	c.bnez	a5,0000000023056920

l23056862:
	addi	s3,s1,+00000008
	c.mv	a2,s3
	c.mv	a1,s2
	c.addi4spn	a0,0000000C
	jal	ra,00000000230609B8
	c.mv	s0,a0
	c.bnez	a0,00000000230568E4

l23056874:
	addi	a2,s1,+00000014
	c.mv	a1,s2
	c.addi4spn	a0,0000000C
	jal	ra,00000000230609B8
	c.mv	s0,a0
	c.bnez	a0,00000000230568E4

l23056884:
	addi	a2,s1,+00000020
	c.mv	a1,s2
	c.addi4spn	a0,0000000C
	jal	ra,00000000230609B8
	c.mv	s0,a0
	c.bnez	a0,00000000230568E4

l23056894:
	addi	a2,s1,+0000002C
	c.mv	a1,s2
	c.addi4spn	a0,0000000C
	jal	ra,00000000230609B8
	c.mv	s0,a0
	c.bnez	a0,00000000230568E4

l230568A4:
	addi	a2,s1,+00000038
	c.mv	a1,s2
	c.addi4spn	a0,0000000C
	jal	ra,00000000230609B8
	c.mv	s0,a0
	c.bnez	a0,00000000230568E4

l230568B4:
	addi	a2,s1,+00000044
	c.mv	a1,s2
	c.addi4spn	a0,0000000C
	jal	ra,00000000230609B8
	c.mv	s0,a0
	c.bnez	a0,00000000230568E4

l230568C4:
	addi	a2,s1,+00000050
	c.mv	a1,s2
	c.addi4spn	a0,0000000C
	jal	ra,00000000230609B8
	c.mv	s0,a0
	c.bnez	a0,00000000230568E4

l230568D4:
	addi	a2,s1,+0000005C
	c.mv	a1,s2
	c.addi4spn	a0,0000000C
	jal	ra,00000000230609B8
	c.mv	s0,a0
	c.beqz	a0,00000000230568F2

l230568E4:
	c.mv	a0,s1
	jal	ra,0000000023058686
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000300
	c.j	000000002305683A

l230568F2:
	c.mv	a0,s3
	jal	ra,0000000023061322
	c.lwsp	a2,000000E4
	c.sw	s1,4(a0)
	c.mv	a0,s1
	beq	a5,s2,000000002305690E

l23056902:
	c.lui	s0,FFFFC000
	jal	ra,0000000023058686
	addi	s0,s0,+0000029A
	c.j	000000002305683C

l2305690E:
	jal	ra,00000000230573EA
	c.mv	s0,a0
	beq	a0,zero,000000002305683C

l23056918:
	c.mv	a0,s1
	jal	ra,0000000023058686
	c.j	000000002305683C

l23056920:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000280
	c.j	000000002305683C

;; pk_parse_key_sec1_der: 23056928
;;   Called from:
;;     23056C06 (in pk_parse_key_pkcs8_unencrypted_der)
;;     23056F44 (in mbedtls_pk_parse_key)
;;     23057046 (in mbedtls_pk_parse_key)
pk_parse_key_sec1_der proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	a1,00000008
	c.mv	s1,a0
	c.add	a1,a2
	addi	a3,zero,+00000030
	c.addi4spn	a2,0000000C
	c.addi4spn	a0,00000010
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	jal	ra,00000000230608F4
	c.beqz	a0,0000000023056950

l23056948:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000300
	c.j	0000000023056996

l23056950:
	c.lwsp	a6,00000048
	c.lwsp	a2,000000E4
	c.addi4spn	a2,00000008
	c.addi4spn	a0,00000010
	c.add	s2,a5
	c.mv	a1,s2
	jal	ra,000000002306095A
	c.bnez	a0,0000000023056948

l23056962:
	c.lwsp	s0,000000C4
	c.li	a5,00000001
	bne	a4,a5,0000000023056ABC

l2305696A:
	c.li	a3,00000004
	c.addi4spn	a2,0000000C
	c.mv	a1,s2
	c.addi4spn	a0,00000010
	jal	ra,00000000230608F4
	c.bnez	a0,0000000023056948

l23056978:
	c.lwsp	a2,00000084
	c.lwsp	a6,00000064
	addi	s3,s1,+0000007C
	c.mv	a0,s3
	jal	ra,0000000023061334
	c.mv	s0,a0
	c.beqz	a0,00000000230569A8

l2305698A:
	c.mv	a0,s1
	jal	ra,0000000023063F4E
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000300

l23056996:
	c.add	s0,a0

l23056998:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l230569A8:
	c.lwsp	a6,000000E4
	c.lwsp	a2,000000C4
	c.add	a5,a4
	c.swsp	a5,00000008
	beq	a5,s2,0000000023056A92

l230569B4:
	addi	a3,zero,+000000A0
	c.addi4spn	a2,0000000C
	c.mv	a1,s2
	c.addi4spn	a0,00000010
	jal	ra,00000000230608F4
	c.mv	s0,a0
	c.bnez	a0,0000000023056A22

l230569C6:
	c.lwsp	a6,000000E4
	c.lwsp	a2,00000004
	c.li	a4,00000006
	c.add	s0,a5
	lbu	a5,a5,+00000000
	c.swsp	a5,00000088
	bne	a5,a4,0000000023056A1A

l230569D8:
	c.li	a3,00000006
	c.addi4spn	a2,00000018
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	jal	ra,00000000230608F4
	c.beqz	a0,0000000023056A04

l230569E6:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000300
	c.add	s0,a0
	c.bnez	s0,00000000230569FC

l230569F0:
	c.mv	a1,s1
	c.addi4spn	a0,00000014
	jal	ra,00000000230567C6
	c.mv	s0,a0
	c.beqz	a0,0000000023056A2A

l230569FC:
	c.mv	a0,s1
	jal	ra,0000000023063F4E
	c.j	0000000023056998

l23056A04:
	c.lwsp	a6,000000E4
	c.lwsp	s8,000000C4
	c.swsp	a5,0000008C
	c.add	a5,a4
	c.swsp	a5,00000008
	beq	s0,a5,00000000230569F0

l23056A12:
	c.lui	a0,FFFFC000
	addi	s0,a0,+0000029A
	c.j	00000000230569FC

l23056A1A:
	c.lui	a0,FFFFC000
	addi	s0,a0,+0000029E
	c.j	00000000230569FC

l23056A22:
	addi	a5,zero,-00000062
	bne	a0,a5,000000002305698A

l23056A2A:
	addi	a3,zero,+000000A1
	c.addi4spn	a2,0000000C
	c.mv	a1,s2
	c.addi4spn	a0,00000010
	jal	ra,00000000230608F4
	c.mv	s0,a0
	c.bnez	a0,0000000023056A8A

l23056A3C:
	c.lwsp	a6,00000004
	c.lwsp	a2,000000E4
	c.addi4spn	a2,0000000C
	c.addi4spn	a0,00000010
	c.add	s0,a5
	c.mv	a1,s0
	jal	ra,0000000023060A48
	bne	a0,zero,0000000023056948

l23056A50:
	c.lwsp	a6,00000084
	c.lwsp	a2,000000E4
	c.add	a5,a2
	bne	s0,a5,0000000023056AC4

l23056A5A:
	addi	s2,s1,+00000088
	sub	a3,s0,a2
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023064888
	c.bnez	a0,0000000023056A74

l23056A6C:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023064924

l23056A74:
	c.swsp	s0,00000008
	c.beqz	a0,0000000023056AAC

l23056A78:
	c.lui	a5,FFFFB000
	addi	a5,a5,+00000180
	beq	a0,a5,0000000023056A92

l23056A82:
	c.lui	a0,FFFFC000
	addi	s0,a0,+00000300
	c.j	0000000023056998

l23056A8A:
	addi	a5,zero,-00000062
	bne	a0,a5,000000002305698A

l23056A92:
	c.li	a5,00000000
	c.li	a4,00000000
	addi	a3,s1,+00000028
	c.mv	a2,s3
	addi	a1,s1,+00000088
	c.mv	a0,s1
	jal	ra,0000000023064AE6
	c.mv	s0,a0
	bne	a0,zero,000000002305698A

l23056AAC:
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,0000000023064A9A
	c.mv	s0,a0
	beq	a0,zero,0000000023056998

l23056ABA:
	c.j	00000000230569FC

l23056ABC:
	c.lui	a0,FFFFC000
	addi	s0,a0,+00000280
	c.j	0000000023056998

l23056AC4:
	c.lui	a0,FFFFC000
	addi	s0,a0,+0000029A
	c.j	0000000023056998

;; pk_get_pk_alg: 23056ACC
;;   Called from:
;;     23056B94 (in pk_parse_key_pkcs8_unencrypted_der)
;;     23056D98 (in mbedtls_pk_parse_subpubkey)
pk_get_pk_alg proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s2,a0
	c.mv	s3,a1
	c.mv	a0,a3
	c.li	a1,00000000
	c.mv	s1,a2
	c.li	a2,0000000C
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.mv	s0,a3
	jal	ra,0000000023070EB8
	c.mv	a3,s0
	c.addi4spn	a2,00000004
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,0000000023060B1E
	c.beqz	a0,0000000023056B0E

l23056AF8:
	c.lui	a5,FFFFC000
	addi	a5,a5,+00000580
	c.add	a0,a5

l23056B00:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23056B0E:
	c.mv	a1,s1
	c.addi4spn	a0,00000004
	jal	ra,0000000023065CA0
	c.bnez	a0,0000000023056B38

l23056B18:
	lbu	a4,s1,+00000000
	c.li	a5,00000001
	bne	a4,a5,0000000023056B00

l23056B22:
	c.lw	s0,0(a5)
	c.li	a4,00000005
	beq	a5,a4,0000000023056B2C

l23056B2A:
	c.bnez	a5,0000000023056B30

l23056B2C:
	c.lw	s0,4(a5)
	c.beqz	a5,0000000023056B00

l23056B30:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000580
	c.j	0000000023056B00

l23056B38:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000380
	c.j	0000000023056B00

;; pk_parse_key_pkcs8_unencrypted_der: 23056B40
;;   Called from:
;;     23056EF4 (in mbedtls_pk_parse_key)
;;     2305708E (in mbedtls_pk_parse_key)
pk_parse_key_pkcs8_unencrypted_der proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	a1,00000008
	c.mv	s1,a0
	c.add	a1,a2
	addi	a3,zero,+00000030
	c.addi4spn	a2,0000000C
	c.addi4spn	a0,00000010
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	sb	zero,sp,+00000007
	jal	ra,00000000230608F4
	c.beqz	a0,0000000023056B74

l23056B60:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000300
	c.add	s0,a0

l23056B68:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l23056B74:
	c.lwsp	a6,00000004
	c.lwsp	a2,000000E4
	c.addi4spn	a2,00000008
	c.addi4spn	a0,00000010
	c.add	s0,a5
	c.mv	a1,s0
	jal	ra,000000002306095A
	c.bnez	a0,0000000023056B60

l23056B86:
	c.lwsp	s0,000000E4
	c.bnez	a5,0000000023056C0C

l23056B8A:
	c.addi4spn	a3,00000014
	addi	a2,sp,+00000007
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	jal	ra,0000000023056ACC
	c.bnez	a0,0000000023056B60

l23056B9A:
	c.li	a3,00000004
	c.addi4spn	a2,0000000C
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	jal	ra,00000000230608F4
	c.bnez	a0,0000000023056B60

l23056BA8:
	c.lwsp	a2,000000E4
	c.beqz	a5,0000000023056C14

l23056BAC:
	lbu	a0,sp,+00000007
	jal	ra,000000002305650C
	c.mv	a1,a0
	c.bnez	a0,0000000023056BC0

l23056BB8:
	c.lui	a0,FFFFC000
	addi	s0,a0,+00000380
	c.j	0000000023056B68

l23056BC0:
	c.mv	a0,s1
	jal	ra,000000002305652C
	c.mv	s0,a0
	c.bnez	a0,0000000023056B68

l23056BCA:
	lbu	a5,sp,+00000007
	c.li	a4,00000001
	bne	a5,a4,0000000023056BEA

l23056BD4:
	c.lwsp	a2,00000084
	c.lwsp	a6,00000064
	c.lw	s1,4(a0)
	jal	ra,0000000023056814

l23056BDE:
	c.mv	s0,a0
	c.beqz	a0,0000000023056B68

l23056BE2:
	c.mv	a0,s1
	jal	ra,00000000230564DE
	c.j	0000000023056B68

l23056BEA:
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	bltu	a4,a5,0000000023056BB8

l23056BF4:
	c.lw	s1,4(a1)
	c.addi4spn	a0,00000014
	jal	ra,00000000230567C6
	c.mv	s0,a0
	c.bnez	a0,0000000023056BE2

l23056C00:
	c.lwsp	a2,00000084
	c.lwsp	a6,00000064
	c.lw	s1,4(a0)
	jal	ra,0000000023056928
	c.j	0000000023056BDE

l23056C0C:
	c.lui	a0,FFFFC000
	addi	s0,a0,+00000280
	c.j	0000000023056B68

l23056C14:
	c.lui	a0,FFFFC000
	addi	s0,a0,+000002A0
	c.j	0000000023056B68

;; mbedtls_pk_load_file: 23056C1C
;;   Called from:
;;     230570B2 (in mbedtls_pk_parse_keyfile)
;;     2305F318 (in mbedtls_x509_crt_parse_file)
mbedtls_pk_load_file proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s1,a0
	c.mv	s2,a1
	c.mv	a1,a0
	lui	a0,00023089
	addi	a0,a0,-0000049C
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.mv	s0,a2
	c.swsp	s4,00000004
	jal	ra,0000000023052118
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002304C198
	addi	a2,zero,+0000007F
	blt	a0,zero,0000000023056C6A

l23056C4E:
	c.li	a2,00000002
	c.li	a1,00000000
	c.mv	s1,a0
	c.li	s4,FFFFFFFF
	jal	ra,000000002304C35A
	c.mv	s3,a0
	bne	a0,s4,0000000023056C96

l23056C60:
	c.mv	a0,s1
	jal	ra,000000002304C25E
	addi	a2,zero,+00000086

l23056C6A:
	lui	a1,00023089
	lui	a0,00023079
	addi	a1,a1,-000004B4
	addi	a0,a0,-000005BC
	jal	ra,0000000023052118
	c.lui	a5,FFFFC000
	addi	a5,a5,+00000200

l23056C84:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

l23056C96:
	c.li	a2,00000000
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002304C35A
	lui	a0,00023089
	c.mv	a1,s3
	sw	s3,s0,+00000000
	addi	a0,a0,-0000048C
	jal	ra,0000000023052118
	c.lw	s0,0(a1)
	bne	a1,s4,0000000023056CDE

l23056CB8:
	c.mv	a0,s1
	jal	ra,000000002304C25E
	lui	a1,00023089
	lui	a0,00023079
	addi	a2,zero,+00000090
	addi	a1,a1,-000004B4
	addi	a0,a0,-000005BC
	jal	ra,0000000023052118
	c.lui	a5,FFFFC000
	addi	a5,a5,+00000080
	c.j	0000000023056C84

l23056CDE:
	c.addi	a1,00000001
	c.li	a0,00000001
	jal	ra,000000002305F67C
	sw	a0,s2,+00000000
	c.mv	a1,a0
	c.beqz	a0,0000000023056CB8

l23056CEE:
	c.lw	s0,0(a2)
	c.mv	a0,s1
	jal	ra,000000002304C2B6
	c.lw	s0,0(a5)
	beq	a0,a5,0000000023056D10

l23056CFC:
	c.mv	a0,s1
	jal	ra,000000002304C25E
	lw	a0,s2,+00000000
	jal	ra,0000000023032272
	addi	a2,zero,+00000096
	c.j	0000000023056C6A

l23056D10:
	c.mv	a0,s1
	jal	ra,000000002304C25E
	lw	a5,s2,+00000000
	c.lw	s0,0(a4)
	lui	a1,00023089
	addi	a1,a1,-00000478
	c.add	a5,a4
	sb	zero,a5,+00000000
	lw	a0,s2,+00000000
	jal	ra,0000000023071A84
	c.li	a5,00000000
	c.beqz	a0,0000000023056C84

l23056D36:
	c.lw	s0,0(a5)
	c.addi	a5,00000001
	c.sw	s0,0(a5)
	c.li	a5,00000000
	c.j	0000000023056C84

;; mbedtls_pk_parse_subpubkey: 23056D40
;;   Called from:
;;     2305EE00 (in mbedtls_x509_crt_parse_der)
mbedtls_pk_parse_subpubkey proc
	c.addi16sp	FFFFFFC0
	c.swsp	s4,00000014
	addi	a3,zero,+00000030
	c.mv	s4,a2
	c.addi4spn	a2,0000000C
	c.swsp	s3,00000094
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.mv	s3,a0
	sb	zero,sp,+0000000B
	jal	ra,00000000230608F4
	c.beqz	a0,0000000023056D86

l23056D66:
	c.lui	a5,FFFFC000
	addi	a5,a5,+00000300

l23056D6C:
	add	s1,a0,a5

l23056D70:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s1
	c.lwsp	a6,00000158
	c.lwsp	s4,00000134
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.addi16sp	00000040
	c.jr	ra

l23056D86:
	lw	s2,s3,+00000000
	c.lwsp	a2,000000E4
	c.addi4spn	a3,00000014
	addi	a2,sp,+0000000B
	c.add	s2,a5
	c.mv	a1,s2
	c.mv	a0,s3
	jal	ra,0000000023056ACC
	c.mv	s1,a0
	c.bnez	a0,0000000023056D70

l23056DA0:
	c.addi4spn	a2,0000000C
	c.mv	a1,s2
	c.mv	a0,s3
	jal	ra,0000000023060A48
	c.beqz	a0,0000000023056DB4

l23056DAC:
	c.lui	a5,FFFFC000
	addi	a5,a5,+00000500
	c.j	0000000023056D6C

l23056DB4:
	lw	a5,s3,+00000000
	c.lwsp	a2,000000C4
	c.add	a5,a4
	bne	s2,a5,0000000023056EB4

l23056DC0:
	lbu	a0,sp,+0000000B
	jal	ra,000000002305650C
	c.mv	a1,a0
	beq	a0,zero,0000000023056EBC

l23056DCE:
	c.mv	a0,s4
	jal	ra,000000002305652C
	c.mv	s1,a0
	c.bnez	a0,0000000023056D70

l23056DD8:
	lbu	a5,sp,+0000000B
	c.li	a4,00000001
	bne	a5,a4,0000000023056E64

l23056DE2:
	addi	a3,zero,+00000030
	c.addi4spn	a2,00000010
	c.mv	a1,s2
	c.mv	a0,s3
	lw	s0,s4,+00000004
	jal	ra,00000000230608F4
	c.beqz	a0,0000000023056E0A

l23056DF6:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000500
	c.add	s0,a0
	c.beqz	s0,0000000023056E52

l23056E00:
	c.mv	a0,s4
	jal	ra,00000000230564DE
	c.mv	s1,s0
	c.j	0000000023056D70

l23056E0A:
	lw	a5,s3,+00000000
	c.lwsp	a6,000000C4
	c.add	a5,a4
	beq	s2,a5,0000000023056E1E

l23056E16:
	c.lui	s0,FFFFC000
	addi	s0,s0,+0000049A
	c.j	0000000023056E00

l23056E1E:
	addi	s5,s0,+00000008
	c.mv	a2,s5
	c.mv	a1,s2
	c.mv	a0,s3
	jal	ra,00000000230609B8
	c.bnez	a0,0000000023056DF6

l23056E2E:
	addi	a2,s0,+00000014
	c.mv	a1,s2
	c.mv	a0,s3
	jal	ra,00000000230609B8
	c.bnez	a0,0000000023056DF6

l23056E3C:
	lw	a5,s3,+00000000
	bne	s2,a5,0000000023056E16

l23056E44:
	c.mv	a0,s0
	c.jal	0000000023057376
	c.bnez	a0,0000000023056E5C

l23056E4A:
	c.mv	a0,s5
	jal	ra,0000000023061322
	c.sw	s0,4(a0)

l23056E52:
	lw	a5,s3,+00000000
	bne	a5,s2,0000000023056E16

l23056E5A:
	c.j	0000000023056D70

l23056E5C:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000500
	c.j	0000000023056E00

l23056E64:
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	bltu	a4,a5,0000000023056EAC

l23056E6E:
	lw	a1,s4,+00000004
	c.addi4spn	a0,00000014
	jal	ra,00000000230567C6
	c.mv	s0,a0
	c.bnez	a0,0000000023056E00

l23056E7C:
	lw	s5,s4,+00000004
	lw	a2,s3,+00000000
	addi	s6,s5,+00000088
	sub	a3,s2,a2
	c.mv	a1,s6
	c.mv	a0,s5
	jal	ra,0000000023064888
	c.mv	s0,a0
	c.bnez	a0,0000000023056EA2

l23056E98:
	c.mv	a1,s6
	c.mv	a0,s5
	jal	ra,0000000023064924
	c.mv	s0,a0

l23056EA2:
	sw	s2,s3,+00000000
	beq	s0,zero,0000000023056D70

l23056EAA:
	c.j	0000000023056E00

l23056EAC:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000380
	c.j	0000000023056E00

l23056EB4:
	c.lui	s1,FFFFC000
	addi	s1,s1,+0000049A
	c.j	0000000023056D70

l23056EBC:
	c.lui	s1,FFFFC000
	addi	s1,s1,+00000380
	c.j	0000000023056D70

;; mbedtls_pk_parse_key: 23056EC4
;;   Called from:
;;     230506AA (in iot_tls_connect)
;;     230570C6 (in mbedtls_pk_parse_keyfile)
mbedtls_pk_parse_key proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	s3,00000094
	c.mv	s1,a0
	c.mv	s3,a2
	c.addi4spn	a0,00000004
	c.swsp	s2,00000018
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s4,00000014
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.mv	s2,a1
	c.mv	s5,a3
	c.mv	s6,a4
	jal	ra,0000000023065EDE
	bne	s3,zero,0000000023056F5A

l23056EEE:
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023056B40
	beq	a0,zero,000000002305709A

l23056EFC:
	c.mv	a0,s1
	jal	ra,00000000230564DE
	c.li	a0,00000001
	jal	ra,000000002305650C
	c.mv	a1,a0
	c.beqz	a0,0000000023056F92

l23056F0C:
	c.mv	a0,s1
	jal	ra,000000002305652C
	bne	a0,zero,000000002305709A

l23056F16:
	c.lw	s1,4(a0)
	c.mv	a2,s3
	c.mv	a1,s2
	jal	ra,0000000023056814
	beq	a0,zero,000000002305709A

l23056F24:
	c.mv	a0,s1
	jal	ra,00000000230564DE
	c.li	a0,00000002
	jal	ra,000000002305650C
	c.mv	a1,a0
	c.beqz	a0,0000000023056F92

l23056F34:
	c.mv	a0,s1
	jal	ra,000000002305652C
	bne	a0,zero,000000002305709A

l23056F3E:
	c.lw	s1,4(a0)
	c.mv	a2,s3
	c.mv	a1,s2
	jal	ra,0000000023056928
	beq	a0,zero,000000002305709A

l23056F4C:
	c.mv	a0,s1
	c.lui	s0,FFFFC000
	jal	ra,00000000230564DE
	addi	s0,s0,+00000300
	c.j	0000000023056F98

l23056F5A:
	addi	s4,s3,-00000001
	c.add	s4,s2
	lbu	a5,s4,+00000000
	c.bnez	a5,0000000023056EEE

l23056F66:
	lui	a2,00023089
	lui	a1,00023089
	c.mv	a6,sp
	c.mv	a5,s6
	c.mv	a4,s5
	c.mv	a3,s2
	addi	a2,a2,-0000046C
	addi	a1,a1,-0000044C
	c.addi4spn	a0,00000004
	jal	ra,0000000023065EE6
	c.mv	s0,a0
	c.bnez	a0,0000000023056FD8

l23056F88:
	c.li	a0,00000001
	jal	ra,000000002305650C
	c.mv	a1,a0
	c.bnez	a0,0000000023056FB2

l23056F92:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000380

l23056F98:
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
	c.lwsp	s8,0000000C
	c.addi16sp	00000040
	c.jr	ra

l23056FB2:
	c.mv	a0,s1
	jal	ra,000000002305652C
	c.mv	s0,a0
	c.bnez	a0,0000000023056FCA

l23056FBC:
	c.lwsp	s0,00000084
	c.lwsp	tp,00000064
	c.lw	s1,4(a0)
	jal	ra,0000000023056814

l23056FC6:
	c.mv	s0,a0
	c.beqz	a0,0000000023056FD0

l23056FCA:
	c.mv	a0,s1
	jal	ra,00000000230564DE

l23056FD0:
	c.addi4spn	a0,00000004
	jal	ra,00000000230661EE
	c.j	0000000023056F98

l23056FD8:
	c.lui	a5,FFFFF000
	addi	s7,a5,-00000380
	bne	a0,s7,0000000023056FEA

l23056FE2:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000480
	c.j	0000000023056F98

l23056FEA:
	addi	s8,a5,-00000300
	bne	a0,s8,0000000023056FFA

l23056FF2:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000400
	c.j	0000000023056F98

l23056FFA:
	addi	a5,a5,-00000080
	bne	a0,a5,0000000023056F98

l23057002:
	lbu	a5,s4,+00000000
	bne	a5,zero,0000000023056EEE

l2305700A:
	lui	a2,00023089
	lui	a1,00023089
	c.mv	a6,sp
	c.mv	a5,s6
	c.mv	a4,s5
	c.mv	a3,s2
	addi	a2,a2,-0000042C
	addi	a1,a1,-0000040C
	c.addi4spn	a0,00000004
	jal	ra,0000000023065EE6
	c.mv	s0,a0
	c.bnez	a0,000000002305704C

l2305702C:
	c.li	a0,00000002
	jal	ra,000000002305650C
	c.mv	a1,a0
	c.beqz	a0,0000000023056F92

l23057036:
	c.mv	a0,s1
	jal	ra,000000002305652C
	c.mv	s0,a0
	c.bnez	a0,0000000023056FCA

l23057040:
	c.lwsp	s0,00000084
	c.lwsp	tp,00000064
	c.lw	s1,4(a0)
	jal	ra,0000000023056928
	c.j	0000000023056FC6

l2305704C:
	beq	a0,s7,0000000023056FE2

l23057050:
	beq	a0,s8,0000000023056FF2

l23057054:
	c.lui	s5,FFFFF000
	addi	s5,s5,-00000080
	bne	a0,s5,0000000023056F98

l2305705E:
	lbu	a5,s4,+00000000
	bne	a5,zero,0000000023056EEE

l23057066:
	lui	a2,00023089
	lui	a1,00023089
	c.mv	a6,sp
	c.li	a5,00000000
	c.li	a4,00000000
	c.mv	a3,s2
	addi	a2,a2,-000003EC
	addi	a1,a1,-000003D0
	c.addi4spn	a0,00000004
	jal	ra,0000000023065EE6
	c.mv	s0,a0
	c.bnez	a0,0000000023057094

l23057088:
	c.lwsp	s0,00000084
	c.lwsp	tp,00000064
	c.mv	a0,s1
	jal	ra,0000000023056B40
	c.j	0000000023056FC6

l23057094:
	bne	a0,s5,0000000023056F98

l23057098:
	c.j	0000000023056EEE

l2305709A:
	c.li	s0,00000000
	c.j	0000000023056F98

;; mbedtls_pk_parse_keyfile: 2305709E
;;   Called from:
;;     2305066C (in iot_tls_connect)
mbedtls_pk_parse_keyfile proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.mv	s1,a2
	c.mv	s2,a0
	c.addi4spn	a2,00000018
	c.mv	a0,a1
	c.addi4spn	a1,0000001C
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	jal	ra,0000000023056C1C
	c.mv	s0,a0
	c.bnez	a0,00000000230570DC

l230570BA:
	c.lwsp	t3,00000064
	c.lwsp	s8,00000084
	c.bnez	s1,00000000230570EA

l230570C0:
	c.li	a4,00000000
	c.li	a3,00000000

l230570C4:
	c.mv	a0,s2
	jal	ra,0000000023056EC4
	c.lwsp	t3,000000E4
	c.lwsp	s8,000000C4
	c.mv	s0,a0
	c.add	a4,a5

l230570D2:
	bne	a5,a4,00000000230570FE

l230570D6:
	c.lwsp	t3,00000044
	jal	ra,0000000023032272

l230570DC:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l230570EA:
	c.mv	a0,s1
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	jal	ra,000000002307132C
	c.mv	a4,a0
	c.mv	a3,s1
	c.lwsp	a2,00000084
	c.lwsp	s0,00000064
	c.j	00000000230570C4

l230570FE:
	sb	zero,a5,+00000000
	c.addi	a5,00000001
	c.j	00000000230570D2

;; rsa_can_do: 23057106
rsa_can_do proc
	c.li	a5,00000001
	beq	a0,a5,0000000023057114

l2305710C:
	c.addi	a0,FFFFFFFA
	sltiu	a0,a0,+00000001
	c.jr	ra

l23057114:
	c.li	a0,00000001
	c.jr	ra

;; rsa_get_bitlen: 23057118
rsa_get_bitlen proc
	c.lw	a0,4(a0)
	c.slli	a0,03
	c.jr	ra

;; rsa_debug: 2305711E
rsa_debug proc
	lui	a5,00023089
	addi	a5,a5,-0000031C
	c.sw	a1,4(a5)
	addi	a5,a0,+00000008
	c.sw	a1,8(a5)
	lui	a5,00023089
	c.li	a4,00000001
	addi	a5,a5,-00000314
	c.addi	a0,00000014
	sb	a4,a1,+00000000
	sb	a4,a1,+0000000C
	c.sw	a1,16(a5)
	c.sw	a1,20(a0)
	c.jr	ra

;; eckey_can_do: 23057148
eckey_can_do proc
	c.addi	a0,FFFFFFFE
	sltiu	a0,a0,+00000003
	c.jr	ra

;; eckey_get_bitlen: 23057150
eckey_get_bitlen proc
	c.lw	a0,88(a0)
	c.jr	ra

;; eckey_debug: 23057154
eckey_debug proc
	c.li	a5,00000002
	sb	a5,a1,+00000000
	lui	a5,00023089
	addi	a5,a5,-000003B4
	addi	a0,a0,+00000088
	c.sw	a1,4(a5)
	c.sw	a1,8(a0)
	c.jr	ra

;; eckeydh_can_do: 2305716C
eckeydh_can_do proc
	c.addi	a0,FFFFFFFE
	sltiu	a0,a0,+00000002
	c.jr	ra

;; rsa_free_wrap: 23057174
rsa_free_wrap proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023058686
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023032272

;; rsa_alloc_wrap: 2305718C
rsa_alloc_wrap proc
	c.addi	sp,FFFFFFF0
	addi	a1,zero,+000000AC
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002305F67C
	c.mv	s0,a0
	c.beqz	a0,00000000230571A6

l230571A0:
	c.li	a2,00000000
	c.li	a1,00000000
	c.jal	0000000023057348

l230571A6:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; rsa_check_pair_wrap: 230571B0
rsa_check_pair_wrap proc
	c.j	00000000230575F8

;; rsa_encrypt_wrap: 230571B2
rsa_encrypt_wrap proc
	c.mv	t1,a1
	c.mv	a1,a6
	lw	a6,a0,+00000004
	sw	a6,a4,+00000000
	bltu	a5,a6,00000000230571D0

l230571C2:
	c.mv	a6,a3
	c.mv	a4,a2
	c.mv	a5,t1
	c.li	a3,00000000
	c.mv	a2,a7
	jal	zero,0000000023057B68

l230571D0:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000400
	c.jr	ra

;; rsa_decrypt_wrap: 230571D8
rsa_decrypt_wrap proc
	c.mv	t3,a1
	c.mv	a1,a6
	lw	a6,a0,+00000004
	c.mv	t1,a7
	bne	a6,a2,00000000230571F4

l230571E6:
	c.mv	a7,a5
	c.mv	a6,a3
	c.mv	a5,t3
	c.li	a3,00000001
	c.mv	a2,t1
	jal	zero,0000000023057EEA

l230571F4:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000080
	c.jr	ra

;; rsa_sign_wrap: 230571FC
rsa_sign_wrap proc
	c.mv	t1,a6
	lw	a6,a0,+00000004
	c.mv	t3,a7
	c.mv	a7,a4
	sw	a6,a5,+00000000
	c.mv	a4,a1
	c.mv	a6,a2
	c.mv	a5,a3
	c.mv	a2,t3
	c.li	a3,00000001
	c.mv	a1,t1
	jal	zero,000000002305828C

;; rsa_verify_wrap: 2305721A
rsa_verify_wrap proc
	lw	a6,a0,+00000004
	bltu	a5,a6,0000000023057258

l23057222:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	a7,a4
	c.mv	s0,a5
	c.mv	a6,a2
	c.mv	a5,a3
	c.mv	a4,a1
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	jal	ra,0000000023058668
	c.bnez	a0,000000002305724E

l23057242:
	c.lw	s1,4(a5)
	bgeu	a5,s0,000000002305724E

l23057248:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000700

l2305724E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23057258:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000380
	c.jr	ra

;; eckey_free_wrap: 23057260
eckey_free_wrap proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023063F4E
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023032272

;; eckey_alloc_wrap: 23057278
eckey_alloc_wrap proc
	c.addi	sp,FFFFFFF0
	addi	a1,zero,+000000AC
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002305F67C
	c.mv	s0,a0
	c.beqz	a0,0000000023057290

l2305728C:
	jal	ra,0000000023063EA2

l23057290:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; eckey_check_pair: 2305729A
eckey_check_pair proc
	jal	zero,0000000023064B72

;; mgf_mask: 2305729E
;;   Called from:
;;     230579F6 (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23057A04 (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23057CC4 (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     23057CD4 (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     2305806A (in mbedtls_rsa_rsassa_pss_sign)
;;     23058400 (in mbedtls_rsa_rsassa_pss_verify_ext)
mgf_mask proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	s4,0000001C
	c.mv	s2,a0
	c.mv	s0,a1
	c.mv	s4,a2
	c.li	a1,00000000
	addi	a2,zero,+00000020
	c.addi4spn	a0,00000010
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s3,0000009C
	c.mv	s1,a4
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.mv	s5,a3
	jal	ra,0000000023070EB8
	c.li	a2,00000004
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,0000000023070EB8
	c.lw	s1,0(a0)
	jal	ra,0000000023065A0C
	c.mv	s3,a0

l230572D8:
	c.bnez	s0,00000000230572EE

l230572DA:
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

l230572EE:
	c.mv	s6,s0
	bgeu	s3,s0,00000000230572F6

l230572F4:
	c.mv	s6,s3

l230572F6:
	c.mv	a0,s1
	jal	ra,00000000230657C0
	c.mv	a2,s5
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,00000000230657E0
	c.li	a2,00000004
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	jal	ra,00000000230657E0
	c.addi4spn	a1,00000010
	c.mv	a0,s1
	jal	ra,0000000023065800
	c.li	a5,00000000

l2305731A:
	add	a4,s2,a5
	bne	a5,s6,0000000023057332

l23057322:
	c.mv	s2,a4
	lbu	a4,sp,+0000000F
	c.sub	s0,a5
	c.addi	a4,00000001
	sb	a4,sp,+0000000F
	c.j	00000000230572D8

l23057332:
	c.addi4spn	a3,00000010
	c.add	a3,a5
	lbu	a2,a4,+00000000
	lbu	a3,a3,+00000000
	c.addi	a5,00000001
	c.xor	a3,a2
	sb	a3,a4,+00000000
	c.j	000000002305731A

;; mbedtls_rsa_init: 23057348
;;   Called from:
;;     230571A4 (in rsa_alloc_wrap)
mbedtls_rsa_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s1,a2
	c.mv	s2,a1
	addi	a2,zero,+000000AC
	c.li	a1,00000000
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023070EB8
	c.lwsp	a2,00000020
	sw	s2,s0,+000000A4
	sw	s1,s0,+000000A8
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_rsa_check_pubkey: 23057376
;;   Called from:
;;     23056E46 (in mbedtls_pk_parse_subpubkey)
;;     230573FC (in mbedtls_rsa_check_privkey)
;;     23057604 (in mbedtls_rsa_check_pub_priv)
mbedtls_rsa_check_pubkey proc
	c.lw	a0,16(a5)
	c.beqz	a5,00000000230573E0

l2305737A:
	c.lw	a0,28(a4)
	c.beqz	a4,00000000230573E0

l2305737E:
	c.lw	a5,0(a5)
	c.andi	a5,00000001
	c.beqz	a5,00000000230573E0

l23057384:
	c.lw	a4,0(a5)
	c.andi	a5,00000001
	c.beqz	a5,00000000230573E0

l2305738A:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	addi	s1,a0,+00000008
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.mv	a0,s1
	c.swsp	ra,00000084
	jal	ra,00000000230612E2
	addi	a5,zero,+0000007F
	bgeu	a5,a0,00000000230573CE

l230573A6:
	c.mv	a0,s1
	jal	ra,00000000230612E2
	c.lui	a5,00002000
	bltu	a5,a0,00000000230573CE

l230573B2:
	c.addi	s0,00000014
	c.mv	a0,s0
	jal	ra,00000000230612E2
	c.li	a5,00000001
	bgeu	a5,a0,00000000230573CE

l230573C0:
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230616FE
	c.li	a5,00000000
	blt	a0,zero,00000000230573D4

l230573CE:
	c.lui	a5,FFFFC000
	addi	a5,a5,-00000200

l230573D4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l230573E0:
	c.lui	a5,FFFFC000
	addi	a5,a5,-00000200
	c.mv	a0,a5
	c.jr	ra

;; mbedtls_rsa_check_privkey: 230573EA
;;   Called from:
;;     2305690E (in pk_parse_key_pkcs1_der)
;;     2305760C (in mbedtls_rsa_check_pub_priv)
mbedtls_rsa_check_privkey proc
	c.addi16sp	FFFFFF40
	c.swsp	s0,0000005C
	c.swsp	s1,000000D8
	c.swsp	ra,000000DC
	c.swsp	s2,00000058
	c.swsp	s3,000000D4
	c.swsp	s4,00000054
	c.swsp	s5,000000D0
	c.mv	s1,a0
	jal	ra,0000000023057376
	c.mv	s0,a0
	bne	a0,zero,00000000230575E4

l23057406:
	c.lw	s1,52(a4)
	c.lui	a5,FFFFC000
	addi	a5,a5,-00000200
	c.mv	s0,a5
	beq	a4,zero,00000000230575E4

l23057414:
	c.lw	s1,64(a4)
	beq	a4,zero,00000000230575E4

l2305741A:
	c.lw	s1,40(a4)
	beq	a4,zero,00000000230575E4

l23057420:
	c.addi4spn	a0,00000004
	jal	ra,0000000023061008
	c.addi4spn	a0,00000010
	jal	ra,0000000023061008
	c.addi4spn	a0,0000001C
	jal	ra,0000000023061008
	c.addi4spn	a0,00000028
	jal	ra,0000000023061008
	c.addi4spn	a0,00000034
	jal	ra,0000000023061008
	c.addi4spn	a0,00000040
	jal	ra,0000000023061008
	c.addi4spn	a0,0000004C
	jal	ra,0000000023061008
	c.addi4spn	a0,00000058
	jal	ra,0000000023061008
	c.addi4spn	a0,00000064
	jal	ra,0000000023061008
	c.addi4spn	a0,00000070
	jal	ra,0000000023061008
	c.addi4spn	a0,0000007C
	jal	ra,0000000023061008
	c.addi4spn	a0,00000088
	jal	ra,0000000023061008
	c.addi4spn	a0,00000094
	jal	ra,0000000023061008
	addi	s3,s1,+0000002C
	addi	s2,s1,+00000038
	c.mv	a2,s2
	c.mv	a1,s3
	c.addi4spn	a0,00000004
	jal	ra,00000000230619F6
	c.mv	s0,a0
	bne	a0,zero,0000000023057588

l23057486:
	addi	s4,s1,+00000020
	addi	s5,s1,+00000014
	c.mv	a2,s5
	c.mv	a1,s4
	c.addi4spn	a0,00000010
	jal	ra,00000000230619F6
	c.mv	s0,a0
	bne	a0,zero,0000000023057588

l2305749E:
	c.li	a2,00000001
	c.mv	a1,s3
	c.addi4spn	a0,0000001C
	jal	ra,00000000230619CA
	c.mv	s0,a0
	bne	a0,zero,0000000023057588

l230574AE:
	c.li	a2,00000001
	c.mv	a1,s2
	c.addi4spn	a0,00000028
	jal	ra,00000000230619CA
	c.mv	s0,a0
	bne	a0,zero,0000000023057588

l230574BE:
	c.addi4spn	a2,00000028
	c.addi4spn	a1,0000001C
	c.addi4spn	a0,00000034
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,0000000023057588

l230574CC:
	c.addi4spn	a2,00000034
	c.mv	a1,s5
	c.addi4spn	a0,0000004C
	jal	ra,00000000230622D0
	c.mv	s0,a0
	c.bnez	a0,0000000023057588

l230574DA:
	c.addi4spn	a2,00000028
	c.addi4spn	a1,0000001C
	c.addi4spn	a0,00000058
	jal	ra,00000000230622D0
	c.mv	s0,a0
	c.bnez	a0,0000000023057588

l230574E8:
	c.addi4spn	a3,00000058
	c.addi4spn	a2,00000034
	c.addi4spn	a1,00000070
	c.addi4spn	a0,00000064
	jal	ra,0000000023061AF8
	c.mv	s0,a0
	c.bnez	a0,0000000023057588

l230574F8:
	c.addi4spn	a2,00000064
	c.addi4spn	a1,00000010
	c.addi4spn	a0,00000040
	jal	ra,0000000023061E3C
	c.mv	s0,a0
	c.bnez	a0,0000000023057588

l23057506:
	c.addi4spn	a2,0000001C
	c.mv	a1,s4
	c.addi4spn	a0,0000007C
	jal	ra,0000000023061E3C
	c.mv	s0,a0
	c.bnez	a0,0000000023057588

l23057514:
	c.addi4spn	a2,00000028
	c.mv	a1,s4
	c.addi4spn	a0,00000088
	jal	ra,0000000023061E3C
	c.mv	s0,a0
	c.bnez	a0,0000000023057588

l23057522:
	c.mv	a2,s3
	c.mv	a1,s2
	c.addi4spn	a0,00000094
	jal	ra,0000000023062424
	c.mv	s0,a0
	c.bnez	a0,0000000023057588

l23057530:
	addi	a1,s1,+00000008
	c.addi4spn	a0,00000004
	jal	ra,00000000230616FE
	c.beqz	a0,0000000023057544

l2305753C:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000200
	c.j	0000000023057588

l23057544:
	addi	a1,s1,+00000044
	c.addi4spn	a0,0000007C
	jal	ra,00000000230616FE
	c.bnez	a0,000000002305753C

l23057550:
	addi	a1,s1,+00000050
	c.addi4spn	a0,00000088
	jal	ra,00000000230616FE
	c.bnez	a0,000000002305753C

l2305755C:
	addi	a1,s1,+0000005C
	c.addi4spn	a0,00000094
	jal	ra,00000000230616FE
	c.bnez	a0,000000002305753C

l23057568:
	c.li	a1,00000000
	c.addi4spn	a0,00000070
	jal	ra,000000002306178A
	c.bnez	a0,000000002305753C

l23057572:
	c.li	a1,00000001
	c.addi4spn	a0,00000040
	jal	ra,000000002306178A
	c.bnez	a0,000000002305753C

l2305757C:
	c.li	a1,00000001
	c.addi4spn	a0,0000004C
	jal	ra,000000002306178A
	c.mv	s0,a0
	c.bnez	a0,000000002305753C

l23057588:
	c.addi4spn	a0,00000004
	jal	ra,0000000023061018
	c.addi4spn	a0,00000010
	jal	ra,0000000023061018
	c.addi4spn	a0,0000001C
	jal	ra,0000000023061018
	c.addi4spn	a0,00000028
	jal	ra,0000000023061018
	c.addi4spn	a0,00000034
	jal	ra,0000000023061018
	c.addi4spn	a0,00000040
	jal	ra,0000000023061018
	c.addi4spn	a0,0000004C
	jal	ra,0000000023061018
	c.addi4spn	a0,00000058
	jal	ra,0000000023061018
	c.addi4spn	a0,00000064
	jal	ra,0000000023061018
	c.addi4spn	a0,00000070
	jal	ra,0000000023061018
	c.addi4spn	a0,0000007C
	jal	ra,0000000023061018
	c.addi4spn	a0,00000088
	jal	ra,0000000023061018
	c.addi4spn	a0,00000094
	jal	ra,0000000023061018
	c.lui	a5,FFFFC000
	addi	a5,a5,-00000200
	beq	s0,a5,00000000230575E4

l230575E0:
	c.beqz	s0,00000000230575E4

l230575E2:
	c.add	s0,a5

l230575E4:
	c.mv	a0,s0
	c.lwsp	t5,00000130
	c.lwsp	s10,00000114
	c.lwsp	s6,00000134
	c.lwsp	s2,00000158
	c.lwsp	a4,00000178
	c.lwsp	a0,00000198
	c.lwsp	t1,000001B8
	c.addi16sp	000000C0
	c.jr	ra

;; mbedtls_rsa_check_pub_priv: 230575F8
;;   Called from:
;;     230571B0 (in rsa_check_pair_wrap)
mbedtls_rsa_check_pub_priv proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s0,a1
	jal	ra,0000000023057376
	c.bnez	a0,000000002305762E

l2305760A:
	c.mv	a0,s0
	jal	ra,00000000230573EA
	c.bnez	a0,000000002305762E

l23057612:
	addi	a1,s0,+00000008
	addi	a0,s1,+00000008
	jal	ra,00000000230616FE
	c.bnez	a0,000000002305762E

l23057620:
	addi	a1,s0,+00000014
	addi	a0,s1,+00000014
	jal	ra,00000000230616FE
	c.beqz	a0,0000000023057634

l2305762E:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000200

l23057634:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_rsa_public: 2305763E
;;   Called from:
;;     23057A18 (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23057ACE (in mbedtls_rsa_rsaes_pkcs1_v15_encrypt)
;;     23057C6E (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     23057DDA (in mbedtls_rsa_rsaes_pkcs1_v15_decrypt)
;;     230580A8 (in mbedtls_rsa_rsassa_pss_sign)
;;     23058192 (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     23058234 (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     23058350 (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     2305854C (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
mbedtls_rsa_public proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.mv	s1,a0
	c.addi4spn	a0,00000014
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	a1,00000084
	c.mv	s2,a2
	c.swsp	s3,00000094
	jal	ra,0000000023061008
	c.lw	s1,4(a2)
	c.lwsp	a2,00000064
	c.addi4spn	a0,00000014
	jal	ra,0000000023061334
	c.mv	s0,a0
	c.bnez	a0,000000002305769E

l23057664:
	addi	a3,s1,+00000008
	c.mv	a1,a3
	c.addi4spn	a0,00000014
	c.swsp	a3,00000084
	jal	ra,00000000230616FE
	c.li	s0,FFFFFFFC
	c.lwsp	a2,000000A4
	bge	a0,zero,000000002305769E

l2305767A:
	c.addi4spn	a1,00000014
	addi	a4,s1,+00000068
	addi	a2,s1,+00000014
	c.mv	a0,a1
	lw	s3,s1,+00000004
	jal	ra,0000000023061EAE
	c.mv	s0,a0
	c.bnez	a0,000000002305769E

l23057692:
	c.mv	a2,s3
	c.mv	a1,s2
	c.addi4spn	a0,00000014
	jal	ra,00000000230613B8
	c.mv	s0,a0

l2305769E:
	c.addi4spn	a0,00000014
	jal	ra,0000000023061018
	c.beqz	s0,00000000230576AE

l230576A6:
	c.lui	a5,FFFFC000
	addi	a5,a5,-00000280
	c.add	s0,a5

l230576AE:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

;; mbedtls_rsa_private: 230576BE
;;   Called from:
;;     23057A2A (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23057B4E (in mbedtls_rsa_rsaes_pkcs1_v15_encrypt)
;;     23057C9C (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     23057E96 (in mbedtls_rsa_rsaes_pkcs1_v15_decrypt)
;;     230580BA (in mbedtls_rsa_rsassa_pss_sign)
;;     23058226 (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     230583EA (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     23058564 (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
mbedtls_rsa_private proc
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
	c.lw	a0,52(a5)
	beq	a5,zero,00000000230578DA

l230576DA:
	c.lw	a0,64(a5)
	beq	a5,zero,00000000230578DA

l230576E0:
	c.lw	a0,40(a5)
	beq	a5,zero,00000000230578DA

l230576E6:
	c.mv	s1,a0
	c.addi4spn	a0,0000000C
	c.mv	s0,a3
	c.mv	s5,a4
	c.mv	s8,a2
	c.mv	s4,a1
	jal	ra,0000000023061008
	c.addi4spn	a0,00000018
	jal	ra,0000000023061008
	c.addi4spn	a0,00000024
	jal	ra,0000000023061008
	c.lw	s1,4(a2)
	c.mv	a1,s0
	c.addi4spn	a0,0000000C
	jal	ra,0000000023061334
	c.mv	s0,a0
	bne	a0,zero,000000002305781E

l23057712:
	addi	s2,s1,+00000008
	c.mv	a1,s2
	c.addi4spn	a0,0000000C
	jal	ra,00000000230616FE
	c.li	s0,FFFFFFFC
	bge	a0,zero,000000002305781E

l23057724:
	bne	s4,zero,00000000230577B8

l23057728:
	addi	s6,s1,+0000002C
	addi	a4,s1,+00000074
	c.mv	a3,s6
	addi	a2,s1,+00000044
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	jal	ra,0000000023061EAE
	c.mv	s0,a0
	bne	a0,zero,000000002305781E

l23057744:
	addi	s3,s1,+00000038
	addi	a4,s1,+00000080
	c.mv	a3,s3
	addi	a2,s1,+00000050
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000024
	jal	ra,0000000023061EAE
	c.mv	s0,a0
	c.bnez	a0,000000002305781E

l2305775E:
	c.addi4spn	a2,00000024
	c.addi4spn	a1,00000018
	c.addi4spn	a0,0000000C
	jal	ra,000000002306196C
	c.mv	s0,a0
	c.bnez	a0,000000002305781E

l2305776C:
	addi	a2,s1,+0000005C
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,000000002305781E

l2305777C:
	c.mv	a2,s6
	c.addi4spn	a1,00000018
	c.addi4spn	a0,0000000C
	jal	ra,0000000023061E3C
	c.mv	s0,a0
	c.bnez	a0,000000002305781E

l2305778A:
	c.mv	a2,s3
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,000000002305781E

l23057798:
	c.addi4spn	a2,00000018
	c.addi4spn	a1,00000024
	c.addi4spn	a0,0000000C
	jal	ra,000000002306190E
	c.mv	s0,a0
	c.bnez	a0,000000002305781E

l230577A6:
	bne	s4,zero,00000000230578B0

l230577AA:
	c.lw	s1,4(a2)
	c.mv	a1,s5
	c.addi4spn	a0,0000000C
	jal	ra,00000000230613B8
	c.mv	s0,a0
	c.j	000000002305781E

l230577B8:
	lw	a5,s1,+000000A0
	c.beqz	a5,0000000023057854

l230577BE:
	addi	s3,s1,+0000008C
	c.mv	a2,s3
	c.mv	a1,s3
	c.mv	a0,s3
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,000000002305781E

l230577D0:
	c.mv	a2,s2
	c.mv	a1,s3
	c.mv	a0,s3
	jal	ra,0000000023061E3C
	c.mv	s0,a0
	c.bnez	a0,000000002305781E

l230577DE:
	addi	s3,s1,+00000098
	c.mv	a2,s3
	c.mv	a1,s3
	c.mv	a0,s3
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,000000002305781E

l230577F0:
	c.mv	a2,s2
	c.mv	a1,s3
	c.mv	a0,s3
	jal	ra,0000000023061E3C

l230577FA:
	c.mv	s0,a0
	c.bnez	a0,000000002305781E

l230577FE:
	c.addi4spn	a1,0000000C
	addi	a2,s1,+0000008C
	c.mv	a0,a1
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,000000002305781E

l2305780E:
	c.addi4spn	a1,0000000C
	c.mv	a2,s2
	c.mv	a0,a1
	jal	ra,0000000023061E3C
	c.mv	s0,a0
	beq	a0,zero,0000000023057728

l2305781E:
	c.addi4spn	a0,0000000C
	jal	ra,0000000023061018
	c.addi4spn	a0,00000018
	jal	ra,0000000023061018
	c.addi4spn	a0,00000024
	jal	ra,0000000023061018
	c.beqz	s0,000000002305783A

l23057832:
	c.lui	a5,FFFFC000
	addi	a5,a5,-00000300
	c.add	s0,a5

l2305783A:
	c.mv	a0,s0
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
	c.addi16sp	00000060
	c.jr	ra

l23057854:
	c.li	s7,0000000C
	addi	s6,s1,+00000098
	addi	s3,s1,+0000008C

l2305785E:
	c.addi	s7,FFFFFFFF
	beq	s7,zero,00000000230578D2

l23057864:
	c.lw	s1,4(a1)
	c.mv	a3,s8
	c.mv	a2,s4
	c.addi	a1,FFFFFFFF
	c.mv	a0,s6
	jal	ra,00000000230623DC
	c.mv	s0,a0
	c.bnez	a0,000000002305781E

l23057876:
	c.mv	a2,s2
	c.mv	a1,s6
	c.mv	a0,s3
	jal	ra,00000000230622D0
	c.mv	s0,a0
	c.bnez	a0,000000002305781E

l23057884:
	c.li	a1,00000001
	c.mv	a0,s3
	jal	ra,000000002306178A
	c.bnez	a0,000000002305785E

l2305788E:
	c.mv	a2,s2
	c.mv	a1,s6
	c.mv	a0,s3
	jal	ra,0000000023062424
	c.mv	s0,a0
	c.bnez	a0,000000002305781E

l2305789C:
	addi	a4,s1,+00000068
	c.mv	a3,s2
	addi	a2,s1,+00000014
	c.mv	a1,s3
	c.mv	a0,s3
	jal	ra,0000000023061EAE
	c.j	00000000230577FA

l230578B0:
	c.addi4spn	a1,0000000C
	addi	a2,s1,+00000098
	c.mv	a0,a1
	jal	ra,00000000230619F6
	c.mv	s0,a0
	c.bnez	a0,000000002305781E

l230578C0:
	c.addi4spn	a1,0000000C
	c.mv	a2,s2
	c.mv	a0,a1
	jal	ra,0000000023061E3C
	c.mv	s0,a0
	beq	a0,zero,00000000230577AA

l230578D0:
	c.j	000000002305781E

l230578D2:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000480
	c.j	000000002305781E

l230578DA:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000080
	c.j	000000002305783A

;; mbedtls_rsa_rsaes_oaep_encrypt: 230578E2
;;   Called from:
;;     23057B92 (in mbedtls_rsa_pkcs1_encrypt)
mbedtls_rsa_rsaes_oaep_encrypt proc
	c.addi16sp	FFFFFFA0
	c.swsp	s3,000000A4
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	s9,00000098
	c.swsp	s10,00000018
	c.swsp	s11,00000094
	c.li	t1,00000001
	c.lwsp	ra,00000178
	bne	a3,t1,0000000023057934

l23057906:
	lw	t1,a0,+000000A4
	beq	t1,a3,0000000023057934

l2305790E:
	c.lui	s4,FFFFC000
	addi	s4,s4,-00000080

l23057914:
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

l23057934:
	c.beqz	a1,000000002305790E

l23057936:
	c.mv	s2,a0
	lbu	a0,a0,+000000A8
	c.swsp	a7,00000004
	c.mv	s4,a6
	c.mv	s11,a5
	c.mv	s10,a4
	c.swsp	a3,00000080
	c.mv	s6,a2
	c.mv	s5,a1
	jal	ra,00000000230656F8
	c.mv	s8,a0
	c.beqz	a0,000000002305790E

l23057952:
	lw	s0,s2,+00000004
	jal	ra,0000000023065A0C
	slli	s9,a0,00000001
	addi	a5,s4,+00000002
	c.add	a5,s9
	c.mv	s1,a0
	bltu	a5,s4,000000002305790E

l2305796A:
	bltu	s0,a5,000000002305790E

l2305796E:
	c.mv	a2,s0
	c.li	a1,00000000
	c.mv	a0,s3
	jal	ra,0000000023070EB8
	addi	s7,s3,+00000001
	sb	zero,s3,+00000000
	c.mv	a2,s1
	c.mv	a1,s7
	c.mv	a0,s6
	c.jalr	s5
	c.beqz	a0,0000000023057994

l2305798A:
	c.lui	s4,FFFFC000
	addi	s4,s4,-00000480
	c.add	s4,a0
	c.j	0000000023057914

l23057994:
	add	a5,s7,s1
	c.mv	a3,a5
	c.mv	a2,s11
	c.mv	a1,s10
	c.mv	a0,s8
	c.swsp	a5,00000084
	jal	ra,0000000023065820
	sub	a0,s0,s4
	c.lwsp	a2,000000E4
	c.addi	a0,FFFFFFFE
	c.add	a0,s1
	c.lwsp	s0,00000064
	sub	a0,a0,s9
	c.add	a0,a5
	c.li	a5,00000001
	sb	a5,a0,+00000000
	c.mv	a2,s4
	c.addi	a0,00000001
	jal	ra,0000000023070C7C
	c.addi4spn	a0,00000014
	jal	ra,0000000023065718
	c.li	a2,00000000
	c.mv	a1,s8
	c.addi4spn	a0,00000014
	jal	ra,000000002306576E
	c.mv	s4,a0
	c.beqz	a0,00000000230579E2

l230579DA:
	c.addi4spn	a0,00000014
	jal	ra,0000000023065720
	c.j	0000000023057914

l230579E2:
	addi	s4,s1,+00000001
	c.addi	s0,FFFFFFFF
	c.add	s4,s3
	c.sub	s0,s1
	c.addi4spn	a4,00000014
	c.mv	a3,s1
	c.mv	a2,s7
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,000000002305729E
	c.addi4spn	a4,00000014
	c.mv	a3,s0
	c.mv	a2,s4
	c.mv	a1,s1
	c.mv	a0,s7
	jal	ra,000000002305729E
	c.addi4spn	a0,00000014
	jal	ra,0000000023065720
	c.lwsp	tp,000000E4
	c.bnez	a5,0000000023057A20

l23057A12:
	c.mv	a2,s3
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,000000002305763E

l23057A1C:
	c.mv	s4,a0
	c.j	0000000023057914

l23057A20:
	c.mv	a4,s3
	c.mv	a3,s3
	c.mv	a2,s6
	c.mv	a1,s5
	c.mv	a0,s2
	jal	ra,00000000230576BE
	c.j	0000000023057A1C

;; mbedtls_rsa_rsaes_pkcs1_v15_encrypt: 23057A30
;;   Called from:
;;     23057B80 (in mbedtls_rsa_pkcs1_encrypt)
mbedtls_rsa_rsaes_pkcs1_v15_encrypt proc
	c.li	a7,00000001
	bne	a3,a7,0000000023057A3E

l23057A36:
	lw	a7,a0,+000000A4
	bne	a7,zero,0000000023057B52

l23057A3E:
	beq	a1,zero,0000000023057B52

l23057A42:
	beq	a5,zero,0000000023057B52

l23057A46:
	beq	a6,zero,0000000023057B52

l23057A4A:
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
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
	c.li	a7,FFFFFFF4
	c.lw	a0,4(s0)
	bltu	a7,a4,0000000023057B5A

l23057A6A:
	addi	a7,a4,+0000000B
	bltu	s0,a7,0000000023057B5A

l23057A72:
	c.sub	s0,a4
	sb	zero,a6,+00000000
	c.mv	s1,a6
	c.mv	s9,a5
	c.mv	s8,a4
	c.mv	s5,a3
	c.mv	s6,a2
	c.mv	s4,a1
	c.mv	s3,a0
	c.addi	s0,FFFFFFFD
	addi	s2,a6,+00000002
	c.bnez	a3,0000000023057B0E

l23057A8E:
	c.li	a5,00000002
	c.addi	s0,00000002
	sb	a5,a6,+00000001
	c.add	s0,a6

l23057A98:
	bne	s2,s0,0000000023057AD2

l23057A9C:
	sb	zero,s0,+00000000
	c.mv	a2,s8
	c.mv	a1,s9
	addi	a0,s0,+00000001
	jal	ra,0000000023070C7C
	bne	s5,zero,0000000023057B2C

l23057AB0:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	zero,00000158
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.mv	a2,s1
	c.mv	a1,s1
	c.mv	a0,s3
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	jal	zero,000000002305763E

l23057AD2:
	addi	s7,zero,+00000064

l23057AD6:
	c.li	a2,00000001
	c.mv	a1,s2
	c.mv	a0,s6
	c.jalr	s4
	lbu	a5,s2,+00000000
	c.bnez	a5,0000000023057B62

l23057AE4:
	c.addi	s7,FFFFFFFF
	beq	s7,zero,0000000023057AEC

l23057AEA:
	c.beqz	a0,0000000023057AD6

l23057AEC:
	c.lui	a5,FFFFC000
	addi	a5,a5,-00000480
	c.add	a0,a5

l23057AF4:
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

l23057B0E:
	c.li	a5,00000001
	sb	a5,a6,+00000001
	c.mv	a3,a6
	add	a5,s0,a6
	c.li	a4,FFFFFFFF

l23057B1C:
	bne	a5,a3,0000000023057B24

l23057B20:
	c.add	s0,s2
	c.j	0000000023057A9C

l23057B24:
	sb	a4,a3,+00000002
	c.addi	a3,00000001
	c.j	0000000023057B1C

l23057B2C:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	zero,00000158
	c.lwsp	s4,000000A8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.mv	a4,s1
	c.mv	a3,s1
	c.mv	a2,s6
	c.lwsp	tp,00000134
	c.lwsp	a6,000000C8
	c.mv	a1,s4
	c.mv	a0,s3
	c.lwsp	s8,00000088
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	jal	zero,00000000230576BE

l23057B52:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000080
	c.jr	ra

l23057B5A:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000080
	c.j	0000000023057AF4

l23057B62:
	c.bnez	a0,0000000023057AEC

l23057B64:
	c.addi	s2,00000001
	c.j	0000000023057A98

;; mbedtls_rsa_pkcs1_encrypt: 23057B68
;;   Called from:
;;     230571CC (in rsa_encrypt_wrap)
mbedtls_rsa_pkcs1_encrypt proc
	lw	t4,a0,+000000A4
	beq	t4,zero,0000000023057B80

l23057B70:
	c.mv	a7,a5
	c.li	a5,00000001
	beq	t4,a5,0000000023057B84

l23057B78:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000100
	c.jr	ra

l23057B80:
	jal	zero,0000000023057A30

l23057B84:
	c.addi	sp,FFFFFFE0
	c.mv	t3,a6
	c.swsp	t3,00000000
	c.mv	a6,a4
	c.li	a5,00000000
	c.li	a4,00000000
	c.swsp	ra,0000008C
	jal	ra,00000000230578E2
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; mbedtls_rsa_rsaes_oaep_decrypt: 23057B9C
;;   Called from:
;;     23057F1A (in mbedtls_rsa_pkcs1_decrypt)
mbedtls_rsa_rsaes_oaep_decrypt proc
	addi	sp,sp,-00000480
	sw	ra,sp,+0000047C
	sw	s0,sp,+00000478
	sw	s1,sp,+00000474
	sw	s2,sp,+00000470
	sw	s3,sp,+0000046C
	sw	s4,sp,+00000468
	sw	s5,sp,+00000464
	sw	s6,sp,+00000460
	sw	s7,sp,+0000045C
	sw	s8,sp,+00000458
	sw	s9,sp,+00000454
	sw	s10,sp,+00000450
	sw	s11,sp,+0000044C
	c.li	t1,00000001
	bne	a3,t1,0000000023057C24

l23057BDA:
	lw	t1,a0,+000000A4
	beq	t1,a3,0000000023057C24

l23057BE2:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000080

l23057BE8:
	c.mv	a0,s0
	lw	ra,sp,+0000047C
	lw	s0,sp,+00000478
	lw	s1,sp,+00000474
	lw	s2,sp,+00000470
	lw	s3,sp,+0000046C
	lw	s4,sp,+00000468
	lw	s5,sp,+00000464
	lw	s6,sp,+00000460
	lw	s7,sp,+0000045C
	lw	s8,sp,+00000458
	lw	s9,sp,+00000454
	lw	s10,sp,+00000450
	lw	s11,sp,+0000044C
	addi	sp,sp,+00000480
	c.jr	ra

l23057C24:
	c.lw	a0,4(s1)
	addi	t1,zero,+000003F0
	addi	t3,s1,-00000010
	bltu	t1,t3,0000000023057BE2

l23057C32:
	c.mv	s0,a0
	lbu	a0,a0,+000000A8
	c.mv	s2,a7
	c.swsp	a6,00000084
	c.mv	s9,a5
	c.mv	s8,a4
	c.swsp	a3,00000004
	c.mv	s11,a2
	c.mv	s10,a1
	jal	ra,00000000230656F8
	c.mv	s7,a0
	c.beqz	a0,0000000023057BE2

l23057C4E:
	jal	ra,0000000023065A0C
	addi	s6,a0,+00000001
	slli	s4,s6,00000001
	c.mv	s5,a0
	bltu	s1,s4,0000000023057BE2

l23057C60:
	c.lwsp	s0,000000E4
	addi	s3,sp,+00000040
	c.bnez	a5,0000000023057C92

l23057C68:
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002305763E

l23057C72:
	c.mv	s0,a0
	c.bnez	a0,0000000023057BE8

l23057C76:
	c.addi4spn	a0,00000014
	jal	ra,0000000023065718
	c.li	a2,00000000
	c.mv	a1,s7
	c.addi4spn	a0,00000014
	jal	ra,000000002306576E
	c.mv	s0,a0
	c.beqz	a0,0000000023057CA2

l23057C8A:
	c.addi4spn	a0,00000014
	jal	ra,0000000023065720
	c.j	0000000023057BE8

l23057C92:
	c.mv	a4,s3
	c.mv	a3,s2
	c.mv	a2,s11
	c.mv	a1,s10
	c.mv	a0,s0
	jal	ra,00000000230576BE
	c.j	0000000023057C72

l23057CA2:
	c.addi4spn	a3,00000020
	c.mv	a2,s9
	c.mv	a1,s8
	c.mv	a0,s7
	addi	s7,s1,-00000001
	jal	ra,0000000023065820
	c.add	s6,s3
	sub	s7,s7,s5
	c.addi4spn	a4,00000014
	c.mv	a3,s7
	c.mv	a2,s6
	c.mv	a1,s5
	addi	a0,sp,+00000041
	jal	ra,000000002305729E
	c.addi4spn	a4,00000014
	c.mv	a3,s5
	addi	a2,sp,+00000041
	c.mv	a1,s7
	c.mv	a0,s6
	jal	ra,000000002305729E
	c.addi4spn	a0,00000014
	jal	ra,0000000023065720
	lbu	a5,sp,+00000040
	addi	a4,sp,+00000041
	add	a0,a4,s5
	c.li	a3,00000000

l23057CEC:
	slli	a4,a5,00000018
	c.srai	a4,00000018
	bltu	a3,s5,0000000023057D3C

l23057CF6:
	c.add	a0,s5
	sub	s4,s1,s4
	c.li	a1,00000000
	c.li	a3,00000000
	c.li	a2,00000000

l23057D02:
	bne	s4,a2,0000000023057D58

l23057D06:
	addi	a1,a3,+00000001
	c.add	a1,a0
	c.add	a0,a3
	lbu	a5,a0,+00000000
	xori	a5,a5,+00000001
	c.or	a5,a4
	c.slli	a5,18
	c.srai	a5,00000018
	c.bnez	a5,0000000023057D78

l23057D1E:
	lw	a5,sp,+00000484
	sub	a2,a1,s3
	sub	a2,s1,a2
	bltu	a5,a2,0000000023057D80

l23057D2E:
	c.lwsp	a2,000000E4
	lw	a0,sp,+00000480
	c.sw	a5,0(a2)
	jal	ra,0000000023070C7C
	c.j	0000000023057BE8

l23057D3C:
	c.addi4spn	a5,00000020
	c.add	a5,a3
	add	a2,a0,a3
	lbu	a5,a5,+00000000
	lbu	a2,a2,+00000000
	c.addi	a3,00000001
	c.xor	a5,a2
	c.or	a5,a4
	andi	a5,a5,+000000FF
	c.j	0000000023057CEC

l23057D58:
	add	a5,a0,a2
	lbu	a5,a5,+00000000
	c.addi	a2,00000001
	c.or	a1,a5
	sub	a5,zero,a1
	c.or	a5,a1
	andi	a5,a5,+000000FF
	c.srli	a5,00000007
	xori	a5,a5,+00000001
	c.add	a3,a5
	c.j	0000000023057D02

l23057D78:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000100
	c.j	0000000023057BE8

l23057D80:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000400
	c.j	0000000023057BE8

;; mbedtls_rsa_rsaes_pkcs1_v15_decrypt: 23057D88
;;   Called from:
;;     23057F02 (in mbedtls_rsa_pkcs1_decrypt)
mbedtls_rsa_rsaes_pkcs1_v15_decrypt proc
	addi	sp,sp,-00000420
	sw	ra,sp,+0000041C
	sw	s0,sp,+00000418
	sw	s1,sp,+00000414
	sw	s2,sp,+00000410
	sw	s3,sp,+0000040C
	sw	s4,sp,+00000408
	sw	s5,sp,+00000404
	sw	s6,sp,+00000400
	c.li	t1,00000001
	bne	a3,t1,0000000023057DBA

l23057DB2:
	lw	t1,a0,+000000A4
	bne	t1,zero,0000000023057ED2

l23057DBA:
	lw	s4,a0,+00000004
	addi	t1,zero,+000003F0
	addi	t3,s4,-00000010
	bltu	t1,t3,0000000023057ED2

l23057DCA:
	c.mv	s3,a7
	c.mv	s1,a6
	c.mv	s2,a4
	c.mv	s6,a3
	c.mv	s5,sp
	c.bnez	a3,0000000023057E92

l23057DD6:
	c.mv	a2,s5
	c.mv	a1,a5
	jal	ra,000000002305763E

l23057DDE:
	c.mv	s0,a0
	c.bnez	a0,0000000023057E6A

l23057DE2:
	c.li	a3,00000001
	lbu	a4,sp,+00000001
	lb	a5,sp,+00000000
	addi	a2,s4,-00000003
	bne	s6,a3,0000000023057E9C

l23057DF4:
	xori	a3,a4,+00000002
	c.or	a3,a5
	andi	a3,a3,+000000FF
	c.mv	a6,s5
	c.li	a1,00000000
	c.li	a0,00000000
	c.li	a5,00000000

l23057E06:
	lbu	a4,a6,+00000002
	c.addi	a0,00000001
	c.addi	a6,00000001
	sub	a7,zero,a4
	or	a4,a4,a7
	andi	a4,a4,+000000FF
	c.srli	a4,00000007
	xori	a4,a4,+00000001
	c.or	a1,a4
	sub	a4,zero,a1
	c.or	a4,a1
	andi	a4,a4,+000000FF
	c.srli	a4,00000007
	xori	a4,a4,+00000001
	c.add	a5,a4
	bltu	a0,a2,0000000023057E06

l23057E38:
	addi	a4,sp,+00000400
	add	a1,a4,a5
	c.add	a4,a5
	lbu	a4,a4,-000003FE
	sltiu	a5,a5,+00000008
	addi	a1,a1,-000003FD
	c.or	a3,a4
	c.or	a5,a3
	c.bnez	a5,0000000023057EDA

l23057E54:
	sub	a2,a1,s5
	sub	a2,s4,a2
	bltu	s3,a2,0000000023057EE2

l23057E60:
	sw	a2,s2,+00000000
	c.mv	a0,s1
	jal	ra,0000000023070C7C

l23057E6A:
	c.mv	a0,s0
	lw	ra,sp,+0000041C
	lw	s0,sp,+00000418
	lw	s1,sp,+00000414
	lw	s2,sp,+00000410
	lw	s3,sp,+0000040C
	lw	s4,sp,+00000408
	lw	s5,sp,+00000404
	lw	s6,sp,+00000400
	addi	sp,sp,+00000420
	c.jr	ra

l23057E92:
	c.mv	a4,s5
	c.mv	a3,a5
	jal	ra,00000000230576BE
	c.j	0000000023057DDE

l23057E9C:
	xori	a3,a4,+00000001
	c.or	a3,a5
	andi	a3,a3,+000000FF
	c.mv	a0,s5
	c.li	a6,00000000
	c.li	a1,00000000
	c.li	a5,00000000

l23057EAE:
	lbu	a4,a0,+00000002
	c.addi	a1,00000001
	c.addi	a0,00000001
	addi	a4,a4,-000000FF
	sltu	a4,zero,a4
	or	a6,a4,a6
	xori	a4,a6,+00000001
	andi	a4,a4,+000000FF
	c.add	a5,a4
	bltu	a1,a2,0000000023057EAE

l23057ED0:
	c.j	0000000023057E38

l23057ED2:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000080
	c.j	0000000023057E6A

l23057EDA:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000100
	c.j	0000000023057E6A

l23057EE2:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000400
	c.j	0000000023057E6A

;; mbedtls_rsa_pkcs1_decrypt: 23057EEA
;;   Called from:
;;     230571F0 (in rsa_decrypt_wrap)
mbedtls_rsa_pkcs1_decrypt proc
	lw	t6,a0,+000000A4
	beq	t6,zero,0000000023057F02

l23057EF2:
	c.mv	t3,a5
	c.li	a5,00000001
	beq	t6,a5,0000000023057F06

l23057EFA:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000100
	c.jr	ra

l23057F02:
	jal	zero,0000000023057D88

l23057F06:
	c.addi	sp,FFFFFFE0
	c.mv	t4,a6
	c.mv	t5,a7
	c.mv	a6,a4
	c.swsp	t5,00000080
	c.swsp	t4,00000000
	c.mv	a7,t3
	c.li	a5,00000000
	c.li	a4,00000000
	c.swsp	ra,0000008C
	jal	ra,0000000023057B9C
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; mbedtls_rsa_rsassa_pss_sign: 23057F24
;;   Called from:
;;     230582A6 (in mbedtls_rsa_pkcs1_sign)
mbedtls_rsa_rsassa_pss_sign proc
	c.addi16sp	FFFFFF80
	c.swsp	s3,000000B4
	c.swsp	s4,00000034
	c.swsp	s5,000000B0
	c.swsp	s6,00000030
	c.swsp	s7,000000AC
	c.swsp	s9,000000A8
	c.swsp	s11,000000A4
	c.mv	s9,a5
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	s1,000000B8
	c.swsp	s2,00000038
	c.swsp	s8,0000002C
	c.swsp	s10,00000028
	c.li	a5,00000001
	c.mv	s4,a0
	c.mv	s5,a1
	c.mv	s7,a2
	c.mv	s6,a3
	c.mv	s11,a6
	c.mv	s3,a7
	bne	a3,a5,0000000023057F82

l23057F54:
	lw	a5,a0,+000000A4
	beq	a5,a3,0000000023057F82

l23057F5C:
	c.lui	s1,FFFFC000
	addi	s1,s1,-00000080

l23057F62:
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.mv	a0,s1
	c.lwsp	a7,00000158
	c.lwsp	s5,00000134
	c.lwsp	a3,00000178
	c.lwsp	s1,00000198
	c.lwsp	t0,000001B8
	c.lwsp	ra,000001D8
	c.lwsp	t4,000000E8
	c.lwsp	s9,0000000C
	c.lwsp	s5,0000002C
	c.lwsp	a7,0000004C
	c.lwsp	a3,0000006C
	c.addi16sp	00000080
	c.jr	ra

l23057F82:
	beq	s5,zero,0000000023057F5C

l23057F86:
	lw	s0,s4,+00000004
	c.beqz	a4,0000000023057F9A

l23057F8C:
	c.mv	a0,a4
	jal	ra,00000000230656F8
	c.beqz	a0,0000000023057F5C

l23057F94:
	jal	ra,0000000023065A0C
	c.mv	s9,a0

l23057F9A:
	lbu	a0,s4,+000000A8
	jal	ra,00000000230656F8
	c.mv	s10,a0
	c.beqz	a0,0000000023057F5C

l23057FA6:
	jal	ra,0000000023065A0C
	addi	s1,a0,+00000001
	c.slli	s1,01
	c.mv	s2,a0
	bltu	s0,s1,0000000023057F5C

l23057FB6:
	c.mv	a2,s0
	c.li	a1,00000000
	c.mv	a0,s3
	jal	ra,0000000023070EB8
	c.mv	a2,s2
	c.addi4spn	a1,00000020
	c.mv	a0,s7
	c.jalr	s5
	c.beqz	a0,0000000023057FD4

l23057FCA:
	c.lui	s1,FFFFC000
	addi	s1,s1,-00000480
	c.add	s1,a0
	c.j	0000000023057F62

l23057FD4:
	addi	s8,s4,+00000008
	c.mv	a0,s8
	jal	ra,00000000230612E2
	sub	s1,s0,s1
	add	a5,s3,s1
	addi	a4,a5,+00000001
	c.li	a3,00000001
	sb	a3,a5,+00000000
	c.mv	a2,s2
	c.addi4spn	a1,00000020
	c.swsp	a0,00000004
	c.mv	a0,a4
	c.swsp	a4,00000084
	jal	ra,0000000023070C7C
	c.addi4spn	a0,00000014
	jal	ra,0000000023065718
	c.li	a2,00000000
	c.mv	a1,s10
	c.addi4spn	a0,00000014
	jal	ra,000000002306576E
	c.mv	s1,a0
	c.lwsp	a2,000000C4
	c.beqz	a0,000000002305801C

l23058014:
	c.addi4spn	a0,00000014
	jal	ra,0000000023065720
	c.j	0000000023057F62

l2305801C:
	c.addi4spn	a0,00000014
	add	s1,a4,s2
	jal	ra,00000000230657C0
	c.li	a2,00000008
	c.mv	a1,s1
	c.addi4spn	a0,00000014
	jal	ra,00000000230657E0
	c.mv	a2,s9
	c.mv	a1,s11
	c.addi4spn	a0,00000014
	jal	ra,00000000230657E0
	c.mv	a2,s2
	c.addi4spn	a1,00000020
	c.addi4spn	a0,00000014
	jal	ra,00000000230657E0
	c.mv	a1,s1
	c.addi4spn	a0,00000014
	jal	ra,0000000023065800
	c.lwsp	s0,000000E4
	addi	a1,s0,-00000001
	sub	a1,a1,s2
	addi	a0,a5,-00000001
	c.andi	a0,00000007
	sltiu	a0,a0,+00000001
	c.mv	a3,s2
	c.sub	a1,a0
	c.addi4spn	a4,00000014
	c.mv	a2,s1
	c.add	a0,s3
	jal	ra,000000002305729E
	c.addi4spn	a0,00000014
	jal	ra,0000000023065720
	c.mv	a0,s8
	c.slli	s0,03
	jal	ra,00000000230612E2
	c.addi	s0,00000001
	sub	a0,s0,a0
	addi	s0,zero,+000000FF
	sra	s0,s0,a0
	lbu	a0,s3,+00000000
	c.add	s2,s1
	addi	a5,zero,-00000044
	c.and	s0,a0
	sb	s0,s3,+00000000
	sb	a5,s2,+00000000
	bne	s6,zero,00000000230580B0

l230580A2:
	c.mv	a2,s3
	c.mv	a1,s3
	c.mv	a0,s4
	jal	ra,000000002305763E

l230580AC:
	c.mv	s1,a0
	c.j	0000000023057F62

l230580B0:
	c.mv	a4,s3
	c.mv	a3,s3
	c.mv	a2,s7
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,00000000230576BE
	c.j	00000000230580AC

;; mbedtls_rsa_rsassa_pkcs1_v15_sign: 230580C0
;;   Called from:
;;     230582A2 (in mbedtls_rsa_pkcs1_sign)
mbedtls_rsa_rsassa_pkcs1_v15_sign proc
	c.addi16sp	FFFFFFC0
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	ra,0000009C
	c.mv	s9,a5
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	c.li	a5,00000001
	c.mv	s2,a0
	c.mv	s6,a1
	c.mv	s7,a2
	c.mv	s5,a3
	c.mv	s4,a4
	c.mv	s8,a6
	c.mv	s3,a7
	bne	a3,a5,000000002305811A

l230580F2:
	lw	a5,a0,+000000A4
	c.beqz	a5,000000002305811A

l230580F8:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000080

l230580FE:
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
	c.lwsp	s8,0000000C
	c.lwsp	s4,0000002C
	c.addi16sp	00000040
	c.jr	ra

l2305811A:
	lw	s0,s2,+00000004
	addi	s1,s0,-00000003
	beq	s4,zero,000000002305814A

l23058126:
	c.mv	a0,s4
	jal	ra,00000000230656F8
	c.mv	s9,a0
	c.beqz	a0,00000000230580F8

l23058130:
	c.addi4spn	a2,00000008
	c.addi4spn	a1,0000000C
	c.mv	a0,s4
	jal	ra,0000000023065D90
	c.bnez	a0,00000000230580F8

l2305813C:
	c.lwsp	s0,00000044
	c.sub	s1,a0
	c.mv	a0,s9
	jal	ra,0000000023065A0C
	c.addi	s1,FFFFFFF6
	c.mv	s9,a0

l2305814A:
	sub	s1,s1,s9
	c.li	a5,00000007
	bgeu	a5,s1,00000000230580F8

l23058154:
	bltu	s0,s1,00000000230580F8

l23058158:
	c.li	a5,00000001
	addi	a0,s3,+00000002
	sb	zero,s3,+00000000
	sb	a5,s3,+00000001
	c.mv	a2,s1
	addi	a1,zero,+000000FF
	c.mv	s0,a0
	jal	ra,0000000023070EB8
	add	a0,s0,s1
	sb	zero,a0,+00000000
	bne	s4,zero,000000002305819A

l2305817E:
	c.mv	a2,s9
	c.mv	a1,s8
	c.addi	a0,00000001

l23058184:
	jal	ra,0000000023070C7C
	bne	s5,zero,00000000230581F8

l2305818C:
	c.mv	a2,s3
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,000000002305763E
	c.mv	s0,a0
	c.j	00000000230580FE

l2305819A:
	c.lwsp	s0,00000084
	andi	s1,s9,+000000FF
	c.lwsp	a2,00000064
	andi	a5,a2,+000000FF
	addi	a4,a5,+00000008
	c.add	a4,s1
	sb	a4,a0,+00000002
	addi	a4,a5,+00000004
	addi	a3,zero,+00000030
	sb	a4,a0,+00000004
	addi	s0,a0,+00000007
	c.li	a4,00000006
	sb	a5,a0,+00000006
	sb	a3,a0,+00000001
	sb	a3,a0,+00000003
	sb	a4,a0,+00000005
	c.mv	a0,s0
	jal	ra,0000000023070C7C
	c.lwsp	s0,00000044
	c.li	a5,00000005
	c.mv	a2,s9
	c.add	a0,s0
	sb	a5,a0,+00000000
	c.li	a5,00000004
	sb	zero,a0,+00000001
	sb	a5,a0,+00000002
	sb	s1,a0,+00000003
	c.mv	a1,s8
	c.addi	a0,00000004
	c.j	0000000023058184

l230581F8:
	lw	a1,s2,+00000004
	c.li	a0,00000001
	c.li	s0,FFFFFFF0
	jal	ra,000000002305F67C
	c.mv	s1,a0
	beq	a0,zero,00000000230580FE

l2305820A:
	lw	a1,s2,+00000004
	c.li	a0,00000001
	jal	ra,000000002305F67C
	c.mv	s4,a0
	c.mv	a0,s1
	beq	s4,zero,0000000023058266

l2305821C:
	c.mv	a4,s1
	c.mv	a3,s3
	c.mv	a2,s7
	c.mv	a1,s6
	c.mv	a0,s2
	jal	ra,00000000230576BE
	c.mv	s0,a0
	c.bnez	a0,000000002305825E

l2305822E:
	c.mv	a2,s4
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,000000002305763E
	c.mv	s0,a0
	c.bnez	a0,000000002305825E

l2305823C:
	lw	a2,s2,+00000004
	c.li	a4,00000000
	c.li	a5,00000000

l23058244:
	bne	a2,a5,000000002305826C

l23058248:
	sb	a4,sp,+00000007
	lbu	a5,sp,+00000007
	andi	a5,a5,+000000FF
	c.bnez	a5,0000000023058284

l23058256:
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,0000000023070C7C

l2305825E:
	c.mv	a0,s1
	jal	ra,0000000023032272
	c.mv	a0,s4

l23058266:
	jal	ra,0000000023032272
	c.j	00000000230580FE

l2305826C:
	add	a3,s4,a5
	add	a1,s3,a5
	lbu	a3,a3,+00000000
	lbu	a1,a1,+00000000
	c.addi	a5,00000001
	c.xor	a3,a1
	c.or	a4,a3
	c.j	0000000023058244

l23058284:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000300
	c.j	000000002305825E

;; mbedtls_rsa_pkcs1_sign: 2305828C
;;   Called from:
;;     23057216 (in rsa_sign_wrap)
mbedtls_rsa_pkcs1_sign proc
	lw	t1,a0,+000000A4
	beq	t1,zero,00000000230582A2

l23058294:
	c.li	t3,00000001
	beq	t1,t3,00000000230582A6

l2305829A:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000100
	c.jr	ra

l230582A2:
	jal	zero,00000000230580C0

l230582A6:
	jal	zero,0000000023057F24

;; mbedtls_rsa_rsassa_pss_verify_ext: 230582AA
;;   Called from:
;;     23056722 (in mbedtls_pk_verify_ext)
;;     230584CE (in mbedtls_rsa_rsassa_pss_verify)
mbedtls_rsa_rsassa_pss_verify_ext proc
	addi	sp,sp,-00000470
	sw	s1,sp,+00000464
	sw	s5,sp,+00000454
	sw	s6,sp,+00000450
	sw	s7,sp,+0000044C
	sw	s8,sp,+00000448
	sw	s9,sp,+00000444
	c.mv	s5,a4
	sw	ra,sp,+0000046C
	sw	s0,sp,+00000468
	sw	s2,sp,+00000460
	sw	s3,sp,+0000045C
	sw	s4,sp,+00000458
	c.li	a4,00000001
	c.mv	s6,a5
	c.mv	s1,a0
	c.mv	s8,a6
	c.mv	s9,a7
	lw	s7,sp,+00000470
	lw	a5,sp,+00000474
	bne	a3,a4,0000000023058334

l230582F2:
	lw	a4,a0,+000000A4
	beq	a4,a3,0000000023058334

l230582FA:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000080

l23058300:
	c.mv	a0,s0
	lw	ra,sp,+0000046C
	lw	s0,sp,+00000468
	lw	s1,sp,+00000464
	lw	s2,sp,+00000460
	lw	s3,sp,+0000045C
	lw	s4,sp,+00000458
	lw	s5,sp,+00000454
	lw	s6,sp,+00000450
	lw	s7,sp,+0000044C
	lw	s8,sp,+00000448
	lw	s9,sp,+00000444
	addi	sp,sp,+00000470
	c.jr	ra

l23058334:
	lw	s2,s1,+00000004
	addi	a4,zero,+000003F0
	addi	a0,s2,-00000010
	bltu	a4,a0,00000000230582FA

l23058344:
	addi	s4,sp,+00000040
	c.bnez	a3,00000000230583E4

l2305834A:
	c.mv	a2,s4
	c.mv	a1,a5
	c.mv	a0,s1
	jal	ra,000000002305763E

l23058354:
	c.mv	s0,a0
	c.bnez	a0,0000000023058300

l23058358:
	addi	s3,s2,-00000001
	addi	a5,sp,+00000440
	c.add	a5,s3
	lbu	a4,a5,-00000400
	addi	a5,zero,+000000BC
	bne	a4,a5,00000000230584AC

l2305836E:
	beq	s5,zero,0000000023058380

l23058372:
	c.mv	a0,s5
	jal	ra,00000000230656F8
	c.beqz	a0,00000000230582FA

l2305837A:
	jal	ra,0000000023065A0C
	c.mv	s6,a0

l23058380:
	c.mv	a0,s9
	jal	ra,00000000230656F8
	c.mv	s0,a0
	c.beqz	a0,00000000230582FA

l2305838A:
	jal	ra,0000000023065A0C
	c.li	a2,00000008
	c.li	a1,00000000
	c.mv	s5,a0
	c.addi4spn	a0,0000000C
	jal	ra,0000000023070EB8
	addi	a0,s1,+00000008
	jal	ra,00000000230612E2
	addi	s9,a0,-00000001
	andi	a5,s9,+00000007
	c.mv	s1,s4
	c.bnez	a5,00000000230583B4

l230583AE:
	c.mv	s2,s3
	addi	s1,sp,+00000041

l230583B4:
	c.li	a4,FFFFFFF8
	add	a4,s2,a4
	lbu	a5,sp,+00000040
	c.addi	a0,00000007
	c.add	a4,a0
	sra	a4,a5,a4
	c.bnez	a4,00000000230582FA

l230583C8:
	c.addi4spn	a0,00000014
	jal	ra,0000000023065718
	c.mv	a1,s0
	c.li	a2,00000000
	c.addi4spn	a0,00000014
	jal	ra,000000002306576E
	c.mv	s0,a0
	c.beqz	a0,00000000230583F0

l230583DC:
	c.addi4spn	a0,00000014
	jal	ra,0000000023065720
	c.j	0000000023058300

l230583E4:
	c.mv	a4,s4
	c.mv	a3,a5
	c.mv	a0,s1
	jal	ra,00000000230576BE
	c.j	0000000023058354

l230583F0:
	xori	a1,s5,-00000001
	c.add	a1,s2
	c.addi4spn	a4,00000014
	c.mv	a3,s5
	add	a2,s1,a1
	c.mv	a0,s1
	jal	ra,000000002305729E
	slli	a5,s2,00000003
	lbu	a4,sp,+00000040
	sub	s9,a5,s9
	addi	a5,zero,+000000FF
	sra	a5,a5,s9
	c.and	a5,a4
	sb	a5,sp,+00000040
	c.add	s2,s4

l23058420:
	bgeu	s1,s2,00000000230584A2

l23058424:
	lbu	a5,s1,+00000000
	addi	a4,s1,+00000001
	c.beqz	a5,000000002305849E

l2305842E:
	lbu	a4,s1,+00000000
	c.li	a5,00000001
	addi	s0,s1,+00000001
	bne	a4,a5,00000000230584A6

l2305843C:
	sub	s3,s3,s5
	sub	s4,s0,s4
	c.li	a5,FFFFFFFF
	sub	s3,s3,s4
	beq	s7,a5,0000000023058452

l2305844E:
	bne	s7,s3,00000000230584A6

l23058452:
	c.addi4spn	a0,00000014
	jal	ra,00000000230657C0
	c.li	a2,00000008
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000014
	jal	ra,00000000230657E0
	c.mv	a2,s6
	c.mv	a1,s8
	c.addi4spn	a0,00000014
	jal	ra,00000000230657E0
	c.mv	a2,s3
	c.mv	a1,s0
	c.addi4spn	a0,00000014
	jal	ra,00000000230657E0
	c.addi4spn	a1,00000020
	c.addi4spn	a0,00000014
	jal	ra,0000000023065800
	c.addi4spn	a0,00000014
	jal	ra,0000000023065720
	add	a0,s0,s3
	c.mv	a2,s5
	c.addi4spn	a1,00000020
	jal	ra,0000000023070BF4
	c.mv	s0,a0
	beq	a0,zero,0000000023058300

l23058496:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000380
	c.j	0000000023058300

l2305849E:
	c.mv	s1,a4
	c.j	0000000023058420

l230584A2:
	bne	s2,s1,000000002305842E

l230584A6:
	c.addi4spn	a0,00000014
	jal	ra,0000000023065720

l230584AC:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000100
	c.j	0000000023058300

;; mbedtls_rsa_rsassa_pss_verify: 230584B4
;;   Called from:
;;     23058682 (in mbedtls_rsa_pkcs1_verify)
mbedtls_rsa_rsassa_pss_verify proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	lw	t1,a0,+000000A8
	c.mv	t3,a7
	andi	a7,t1,+000000FF
	bne	t1,zero,00000000230584C8

l230584C6:
	c.mv	a7,a4

l230584C8:
	c.li	t1,FFFFFFFF
	c.swsp	t3,00000080
	c.swsp	t1,00000000
	jal	ra,00000000230582AA
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; mbedtls_rsa_rsassa_pkcs1_v15_verify: 230584D8
;;   Called from:
;;     2305867E (in mbedtls_rsa_pkcs1_verify)
mbedtls_rsa_rsassa_pkcs1_v15_verify proc
	c.li	t1,00000001
	bne	a3,t1,0000000023058512

l230584DE:
	lw	t1,a0,+000000A4
	beq	t1,zero,0000000023058512

l230584E6:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000080
	c.jr	ra

l230584EE:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000080

l230584F4:
	lw	ra,sp,+0000043C
	lw	s0,sp,+00000438
	lw	s1,sp,+00000434
	lw	s2,sp,+00000430
	lw	s3,sp,+0000042C
	lw	s4,sp,+00000428
	addi	sp,sp,+00000440
	c.jr	ra

l23058512:
	addi	sp,sp,-00000440
	sw	ra,sp,+0000043C
	sw	s0,sp,+00000438
	sw	s1,sp,+00000434
	sw	s2,sp,+00000430
	sw	s3,sp,+0000042C
	sw	s4,sp,+00000428
	lw	s4,a0,+00000004
	addi	t1,zero,+000003F0
	addi	t3,s4,-00000010
	bltu	t1,t3,00000000230584EE

l2305853E:
	c.mv	s3,a6
	c.mv	s1,a5
	c.mv	s2,a4
	c.addi4spn	s0,00000020
	c.bnez	a3,0000000023058560

l23058548:
	c.mv	a2,s0
	c.mv	a1,a7
	jal	ra,000000002305763E

l23058550:
	c.bnez	a0,00000000230584F4

l23058552:
	lbu	a5,sp,+00000020
	c.beqz	a5,000000002305856A

l23058558:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000100
	c.j	00000000230584F4

l23058560:
	c.mv	a4,s0
	c.mv	a3,a7
	jal	ra,00000000230576BE
	c.j	0000000023058550

l2305856A:
	lbu	a4,sp,+00000021
	addi	a5,sp,+00000022
	c.swsp	a5,00000008
	c.li	a5,00000001
	bne	a4,a5,0000000023058558

l2305857A:
	addi	a5,s4,-00000001
	c.add	a5,s0
	addi	a3,zero,+000000FF

l23058584:
	c.lwsp	a6,00000044
	lbu	a4,a0,+00000000
	c.bnez	a4,00000000230585B2

l2305858C:
	c.addi	a0,00000001
	sub	s0,a0,s0
	c.swsp	a0,00000008
	sub	s0,s4,s0
	bne	s0,s1,00000000230585C0

l2305859C:
	bne	s2,zero,00000000230585C0

l230585A0:
	c.mv	a2,s1
	c.mv	a1,s3
	jal	ra,0000000023070BF4
	c.beqz	a0,00000000230584F4

l230585AA:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000380
	c.j	00000000230584F4

l230585B2:
	bgeu	a0,a5,0000000023058558

l230585B6:
	bne	a4,a3,0000000023058558

l230585BA:
	c.addi	a0,00000001
	c.swsp	a0,00000008
	c.j	0000000023058584

l230585C0:
	c.mv	a0,s2
	jal	ra,00000000230656F8
	c.beqz	a0,00000000230584EE

l230585C8:
	jal	ra,0000000023065A0C
	c.lwsp	a6,00000024
	c.mv	s4,a0
	addi	a3,zero,+00000030
	c.add	s1,s0
	c.addi4spn	a2,0000000C
	c.mv	a1,s1
	c.addi4spn	a0,00000010
	jal	ra,00000000230608F4
	c.bnez	a0,00000000230585AA

l230585E2:
	c.lwsp	a2,000000E4
	c.addi	a5,00000002
	bne	a5,s0,00000000230585AA

l230585EA:
	addi	a3,zero,+00000030
	c.addi4spn	a2,0000000C
	c.mv	a1,s1
	c.addi4spn	a0,00000010
	jal	ra,00000000230608F4
	c.bnez	a0,00000000230585AA

l230585FA:
	c.lwsp	a2,000000E4
	c.addi	a5,00000006
	c.add	a5,s4
	bne	a5,s0,00000000230585AA

l23058604:
	c.li	a3,00000006
	c.addi4spn	a2,00000018
	c.mv	a1,s1
	c.addi4spn	a0,00000010
	jal	ra,00000000230608F4
	c.bnez	a0,00000000230585AA

l23058612:
	c.lwsp	a6,000000E4
	c.lwsp	s8,000000C4
	addi	a1,sp,+0000000B
	c.swsp	a5,0000008C
	c.addi4spn	a0,00000014
	c.add	a5,a4
	c.swsp	a5,00000008
	jal	ra,0000000023065D40
	c.bnez	a0,00000000230585AA

l23058628:
	lbu	a5,sp,+0000000B
	bne	a5,s2,00000000230585AA

l23058630:
	c.li	a3,00000005
	c.addi4spn	a2,0000000C
	c.mv	a1,s1
	c.addi4spn	a0,00000010
	jal	ra,00000000230608F4
	c.bnez	a0,00000000230585AA

l2305863E:
	c.li	a3,00000004
	c.addi4spn	a2,0000000C
	c.mv	a1,s1
	c.addi4spn	a0,00000010
	jal	ra,00000000230608F4
	c.bnez	a0,00000000230585AA

l2305864C:
	c.lwsp	a2,000000E4
	bne	a5,s4,00000000230585AA

l23058652:
	c.lwsp	a6,00000044
	c.mv	a2,s4
	c.mv	a1,s3
	jal	ra,0000000023070BF4
	c.bnez	a0,00000000230585AA

l2305865E:
	c.lwsp	a6,000000E4
	c.add	s4,a5
	beq	s1,s4,00000000230584F4

l23058666:
	c.j	00000000230585AA

;; mbedtls_rsa_pkcs1_verify: 23058668
;;   Called from:
;;     2305723C (in rsa_verify_wrap)
mbedtls_rsa_pkcs1_verify proc
	lw	t1,a0,+000000A4
	beq	t1,zero,000000002305867E

l23058670:
	c.li	t3,00000001
	beq	t1,t3,0000000023058682

l23058676:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000100
	c.jr	ra

l2305867E:
	jal	zero,00000000230584D8

l23058682:
	jal	zero,00000000230584B4

;; mbedtls_rsa_free: 23058686
;;   Called from:
;;     230568E6 (in pk_parse_key_pkcs1_der)
;;     23056904 (in pk_parse_key_pkcs1_der)
;;     2305691A (in pk_parse_key_pkcs1_der)
;;     2305717C (in rsa_free_wrap)
mbedtls_rsa_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	addi	a0,a0,+0000008C
	c.swsp	ra,00000084
	jal	ra,0000000023061018
	addi	a0,s0,+00000098
	jal	ra,0000000023061018
	addi	a0,s0,+00000080
	jal	ra,0000000023061018
	addi	a0,s0,+00000074
	jal	ra,0000000023061018
	addi	a0,s0,+00000068
	jal	ra,0000000023061018
	addi	a0,s0,+0000005C
	jal	ra,0000000023061018
	addi	a0,s0,+00000050
	jal	ra,0000000023061018
	addi	a0,s0,+00000044
	jal	ra,0000000023061018
	addi	a0,s0,+00000038
	jal	ra,0000000023061018
	addi	a0,s0,+0000002C
	jal	ra,0000000023061018
	addi	a0,s0,+00000020
	jal	ra,0000000023061018
	addi	a0,s0,+00000014
	jal	ra,0000000023061018
	addi	a0,s0,+00000008
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023061018

;; mbedtls_sha256_init: 230586FC
;;   Called from:
;;     230596A8 (in mbedtls_sha256)
;;     230597BC (in ssl_calc_finished_tls_sha256)
;;     230598AC (in ssl_calc_verify_tls_sha256)
;;     2305A94E (in ssl_handshake_init)
;;     23065AE8 (in sha224_ctx_alloc)
mbedtls_sha256_init proc
	addi	a2,zero,+00000074
	c.li	a1,00000000
	jal	zero,0000000023070EB8

;; mbedtls_sha256_free: 23058706
;;   Called from:
;;     230596CA (in mbedtls_sha256)
;;     2305985A (in ssl_calc_finished_tls_sha256)
;;     23059918 (in ssl_calc_verify_tls_sha256)
;;     2305A6AE (in mbedtls_ssl_handshake_free)
;;     23065AC4 (in sha224_ctx_free)
mbedtls_sha256_free proc
	addi	a5,a0,+00000074
	c.bnez	a0,0000000023058714

l2305870C:
	c.jr	ra

l2305870E:
	sb	zero,a0,+00000000
	c.addi	a0,00000001

l23058714:
	bne	a0,a5,000000002305870E

l23058718:
	c.j	000000002305870C

;; mbedtls_sha256_clone: 2305871A
;;   Called from:
;;     230597E6 (in ssl_calc_finished_tls_sha256)
;;     230598D4 (in ssl_calc_verify_tls_sha256)
;;     23065AB8 (in sha224_clone_wrap)
mbedtls_sha256_clone proc
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+00000074
	c.swsp	ra,00000084
	jal	ra,0000000023070C7C
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_sha256_starts: 2305872C
;;   Called from:
;;     2305636C (in mbedtls_entropy_init)
;;     2305643E (in mbedtls_entropy_func)
;;     230596B2 (in mbedtls_sha256)
;;     2305A37E (in mbedtls_ssl_reset_checksum)
;;     2305A956 (in ssl_handshake_init)
;;     23065B0C (in sha224_starts_wrap)
;;     23065B12 (in sha256_starts_wrap)
mbedtls_sha256_starts proc
	sw	zero,a0,+00000000
	sw	zero,a0,+00000004
	c.bnez	a1,000000002305878A

l23058736:
	lui	a5,0006A09E
	addi	a5,a5,+00000667
	c.sw	a0,8(a5)
	lui	a5,000BB67B
	addi	a5,a5,-0000017B
	c.sw	a0,12(a5)
	lui	a5,0003C6EF
	addi	a5,a5,+00000372
	c.sw	a0,16(a5)
	lui	a5,000A54FF
	addi	a5,a5,+0000053A
	c.sw	a0,20(a5)
	lui	a5,000510E5
	addi	a5,a5,+0000027F
	c.sw	a0,24(a5)
	lui	a5,0009B057
	addi	a5,a5,-00000774
	c.sw	a0,28(a5)
	lui	a5,0001F83E
	addi	a5,a5,-00000655
	c.sw	a0,32(a5)
	lui	a5,0005BE0D
	addi	a5,a5,-000002E7

l23058784:
	c.sw	a0,36(a5)
	c.sw	a0,104(a1)
	c.jr	ra

l2305878A:
	lui	a5,000C105A
	addi	a5,a5,-00000128
	c.sw	a0,8(a5)
	lui	a5,000367CD
	addi	a5,a5,+00000507
	c.sw	a0,12(a5)
	lui	a5,0003070E
	addi	a5,a5,-000002E9
	c.sw	a0,16(a5)
	lui	a5,000F70E6
	addi	a5,a5,-000006C7
	c.sw	a0,20(a5)
	lui	a5,000FFC01
	addi	a5,a5,-000004CF
	c.sw	a0,24(a5)
	lui	a5,00068581
	addi	a5,a5,+00000511
	c.sw	a0,28(a5)
	lui	a5,00064F99
	addi	a5,a5,-00000059
	c.sw	a0,32(a5)
	lui	a5,000BEFA5
	addi	a5,a5,-0000005C
	c.j	0000000023058784

;; mbedtls_sha256_process: 230587DA
;;   Called from:
;;     23059494 (in mbedtls_sha256_update.part.0)
;;     230594AA (in mbedtls_sha256_update.part.0)
;;     23065AB4 (in sha224_process_wrap)
mbedtls_sha256_process proc
	c.addi16sp	FFFFFEB0
	sw	s2,sp,+00000144
	sw	s3,sp,+00000140
	addi	s2,a0,+00000008
	c.mv	s3,sp
	sw	s0,sp,+0000014C
	sw	s1,sp,+00000148
	sw	s4,sp,+0000013C
	sw	s5,sp,+00000138
	sw	s6,sp,+00000134
	sw	s7,sp,+00000130
	sw	s8,sp,+0000012C
	addi	a0,a0,+00000028
	c.mv	a4,s3
	c.mv	a5,s2

l2305880E:
	c.lw	a5,0(a3)
	c.addi	a5,00000004
	c.addi	a4,00000004
	sw	a3,a4,+00000FFC
	bne	a0,a5,000000002305880E

l2305881C:
	addi	t3,sp,+00000020
	addi	a2,a1,+00000040
	c.mv	a4,t3

l23058826:
	lbu	a5,a1,+00000000
	lbu	a3,a1,+00000001
	c.addi	a1,00000004
	c.slli	a5,18
	c.slli	a3,10
	c.or	a5,a3
	lbu	a3,a1,-00000001
	c.addi	a4,00000004
	c.or	a5,a3
	lbu	a3,a1,-00000002
	c.slli	a3,08
	c.or	a5,a3
	sw	a5,a4,+00000FFC
	bne	a2,a1,0000000023058826

l2305884E:
	lui	t4,00023089
	c.lwsp	t3,00000008
	c.lwsp	a6,00000028
	c.lwsp	s8,000000C0
	c.lwsp	s4,00000064
	c.lwsp	zero,00000084
	c.lwsp	tp,000000A4
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000E4
	addi	s1,t4,-000002FC
	addi	t0,s1,+00000040
	c.mv	t6,t3
	addi	t4,t4,-000002FC

l23058870:
	slli	t2,a7,0000001A
	srli	t5,a7,00000006
	slli	s0,a7,00000015
	or	t5,t5,t2
	srli	t2,a7,0000000B
	or	t2,t2,s0
	xor	t5,t5,t2
	srli	s0,a7,00000019
	slli	t2,a7,00000007
	or	t2,t2,s0
	xor	t5,t5,t2
	lw	s0,t6,+00000000
	lw	t2,t4,+00000000
	addi	t4,t4,+00000020
	addi	t6,t6,+00000020
	c.add	t2,s0
	c.add	t5,t2
	xor	t2,t1,a1
	and	t2,t2,a7
	xor	t2,t2,t1
	c.add	t5,t2
	c.add	a6,t5
	slli	t2,a2,0000001E
	srli	t5,a2,00000002
	slli	s0,a2,00000013
	or	t5,t5,t2
	srli	t2,a2,0000000D
	or	t2,t2,s0
	xor	t5,t5,t2
	srli	s0,a2,00000016
	slli	t2,a2,0000000A
	or	t2,t2,s0
	xor	t5,t5,t2
	or	t2,a2,a3
	and	s0,a2,a3
	and	t2,t2,a4
	or	t2,t2,s0
	c.add	t5,t2
	c.add	a5,a6
	lw	t2,t6,-0000001C
	c.add	a6,t5
	lw	t5,t4,-0000001C
	slli	s0,a5,00000015
	c.add	t5,t2
	c.add	t1,t5
	xor	t5,a7,a1
	and	t5,t5,a5
	xor	t5,t5,a1
	c.add	t1,t5
	srli	t2,a5,00000006
	slli	t5,a5,0000001A
	or	t2,t2,t5
	srli	t5,a5,0000000B
	or	t5,t5,s0
	xor	t2,t2,t5
	srli	s0,a5,00000019
	slli	t5,a5,00000007
	or	t5,t5,s0
	xor	t5,t2,t5
	c.add	t5,t1
	slli	t2,a6,0000001E
	srli	t1,a6,00000002
	slli	s0,a6,00000013
	or	t1,t1,t2
	srli	t2,a6,0000000D
	or	t2,t2,s0
	xor	t1,t1,t2
	srli	s0,a6,00000016
	slli	t2,a6,0000000A
	or	t2,t2,s0
	xor	t1,t1,t2
	or	t2,a6,a2
	and	s0,a6,a2
	and	t2,t2,a3
	or	t2,t2,s0
	c.add	t1,t2
	c.add	t1,t5
	c.add	a4,t5
	lw	t2,t6,-00000018
	lw	t5,t4,-00000018
	slli	s0,a4,00000015
	c.add	t5,t2
	c.add	a1,t5
	xor	t5,a5,a7
	and	t5,t5,a4
	xor	t5,t5,a7
	c.add	a1,t5
	srli	t2,a4,00000006
	slli	t5,a4,0000001A
	or	t2,t2,t5
	srli	t5,a4,0000000B
	or	t5,t5,s0
	xor	t2,t2,t5
	srli	s0,a4,00000019
	slli	t5,a4,00000007
	or	t5,t5,s0
	xor	t5,t2,t5
	c.add	t5,a1
	slli	t2,t1,0000001E
	srli	a1,t1,00000002
	slli	s0,t1,00000013
	or	a1,a1,t2
	srli	t2,t1,0000000D
	or	t2,t2,s0
	xor	a1,a1,t2
	srli	s0,t1,00000016
	slli	t2,t1,0000000A
	or	t2,t2,s0
	xor	a1,a1,t2
	or	t2,a6,t1
	and	s0,a6,t1
	and	t2,t2,a2
	or	t2,t2,s0
	c.add	a1,t2
	c.add	a1,t5
	c.add	a3,t5
	lw	t2,t6,-00000014
	lw	t5,t4,-00000014
	slli	s0,a3,00000015
	c.add	t5,t2
	c.add	a7,t5
	xor	t5,a5,a4
	and	t5,t5,a3
	xor	t5,t5,a5
	c.add	a7,t5
	srli	t2,a3,00000006
	slli	t5,a3,0000001A
	or	t2,t2,t5
	srli	t5,a3,0000000B
	or	t5,t5,s0
	xor	t2,t2,t5
	srli	s0,a3,00000019
	slli	t5,a3,00000007
	or	t5,t5,s0
	xor	t5,t2,t5
	c.add	t5,a7
	slli	t2,a1,0000001E
	srli	a7,a1,00000002
	slli	s0,a1,00000013
	or	a7,a7,t2
	srli	t2,a1,0000000D
	or	t2,t2,s0
	xor	a7,a7,t2
	srli	s0,a1,00000016
	slli	t2,a1,0000000A
	or	t2,t2,s0
	xor	a7,a7,t2
	or	t2,t1,a1
	and	s0,t1,a1
	and	t2,t2,a6
	or	t2,t2,s0
	c.add	a7,t2
	c.add	a7,t5
	c.add	a2,t5
	lw	t2,t6,-00000010
	lw	t5,t4,-00000010
	slli	s0,a2,00000015
	c.add	t5,t2
	c.add	a5,t5
	xor	t5,a4,a3
	and	t5,t5,a2
	xor	t5,t5,a4
	c.add	a5,t5
	srli	t2,a2,00000006
	slli	t5,a2,0000001A
	or	t2,t2,t5
	srli	t5,a2,0000000B
	or	t5,t5,s0
	xor	t2,t2,t5
	srli	s0,a2,00000019
	slli	t5,a2,00000007
	or	t5,t5,s0
	xor	t5,t2,t5
	c.add	t5,a5
	slli	t2,a7,0000001E
	srli	a5,a7,00000002
	slli	s0,a7,00000013
	or	a5,a5,t2
	srli	t2,a7,0000000D
	or	t2,t2,s0
	xor	a5,a5,t2
	srli	s0,a7,00000016
	slli	t2,a7,0000000A
	or	t2,t2,s0
	xor	a5,a5,t2
	or	t2,a1,a7
	and	s0,a1,a7
	and	t2,t2,t1
	or	t2,t2,s0
	c.add	a5,t2
	c.add	a5,t5
	c.add	a6,t5
	lw	t2,t6,-0000000C
	lw	t5,t4,-0000000C
	slli	s0,a6,00000015
	c.add	t5,t2
	c.add	a4,t5
	xor	t5,a3,a2
	and	t5,t5,a6
	xor	t5,t5,a3
	c.add	a4,t5
	srli	t2,a6,00000006
	slli	t5,a6,0000001A
	or	t2,t2,t5
	srli	t5,a6,0000000B
	or	t5,t5,s0
	xor	t2,t2,t5
	srli	s0,a6,00000019
	slli	t5,a6,00000007
	or	t5,t5,s0
	xor	t5,t2,t5
	c.add	t5,a4
	slli	t2,a5,0000001E
	srli	a4,a5,00000002
	or	a4,a4,t2
	slli	s0,a5,00000013
	srli	t2,a5,0000000D
	or	t2,t2,s0
	xor	a4,a4,t2
	srli	s0,a5,00000016
	slli	t2,a5,0000000A
	or	t2,t2,s0
	xor	a4,a4,t2
	or	t2,a7,a5
	and	s0,a7,a5
	and	t2,t2,a1
	or	t2,t2,s0
	c.add	a4,t2
	c.add	a4,t5
	c.add	t1,t5
	lw	t2,t6,-00000008
	lw	t5,t4,-00000008
	slli	s0,t1,00000015
	c.add	t5,t2
	c.add	a3,t5
	xor	t5,a2,a6
	and	t5,t5,t1
	xor	t5,t5,a2
	c.add	a3,t5
	srli	t2,t1,00000006
	slli	t5,t1,0000001A
	or	t2,t2,t5
	srli	t5,t1,0000000B
	or	t5,t5,s0
	xor	t2,t2,t5
	srli	s0,t1,00000019
	slli	t5,t1,00000007
	or	t5,t5,s0
	xor	t5,t2,t5
	c.add	t5,a3
	slli	t2,a4,0000001E
	srli	a3,a4,00000002
	or	a3,a3,t2
	slli	s0,a4,00000013
	srli	t2,a4,0000000D
	or	t2,t2,s0
	xor	a3,a3,t2
	srli	s0,a4,00000016
	slli	t2,a4,0000000A
	or	t2,t2,s0
	xor	a3,a3,t2
	or	t2,a5,a4
	and	t2,t2,a7
	and	s0,a5,a4
	or	t2,t2,s0
	c.add	a3,t2
	c.add	a3,t5
	c.add	a1,t5
	lw	t2,t6,-00000004
	lw	t5,t4,-00000004
	slli	s0,a1,00000015
	c.add	t5,t2
	c.add	a2,t5
	xor	t5,a6,t1
	and	t5,t5,a1
	xor	t5,t5,a6
	c.add	a2,t5
	srli	t2,a1,00000006
	slli	t5,a1,0000001A
	or	t2,t2,t5
	srli	t5,a1,0000000B
	or	t5,t5,s0
	xor	t2,t2,t5
	srli	s0,a1,00000019
	slli	t5,a1,00000007
	or	t5,t5,s0
	xor	t5,t2,t5
	c.add	t5,a2
	slli	t2,a3,0000001E
	srli	a2,a3,00000002
	or	a2,a2,t2
	slli	s0,a3,00000013
	srli	t2,a3,0000000D
	or	t2,t2,s0
	xor	a2,a2,t2
	srli	s0,a3,00000016
	slli	t2,a3,0000000A
	or	t2,t2,s0
	xor	a2,a2,t2
	or	t2,a4,a3
	and	t2,t2,a5
	and	s0,a4,a3
	or	t2,t2,s0
	c.add	a2,t2
	c.add	a7,t5
	c.add	a2,t5
	bne	t0,t4,0000000023058870

l23058CCC:
	c.swsp	a6,0000008C
	c.swsp	a7,00000008
	c.swsp	t1,0000000C
	c.swsp	a1,00000088
	c.swsp	a2,00000000
	c.swsp	a3,00000080
	c.swsp	a4,00000004
	c.swsp	a5,00000084
	addi	s4,t3,+000000C0

l23058CE0:
	lw	s5,t3,+00000038
	lw	t5,t3,+00000004
	lw	s6,t3,+0000003C
	srli	t6,s5,00000011
	slli	t4,s5,0000000F
	srli	t0,s5,00000013
	or	t4,t4,t6
	slli	t6,s5,0000000D
	or	t6,t6,t0
	xor	t4,t4,t6
	srli	t6,s5,0000000A
	lw	t0,t3,+00000000
	xor	t4,t4,t6
	lw	t6,t3,+00000024
	srli	t2,t5,00000012
	slli	s0,s6,0000000F
	c.add	t6,t0
	c.add	t4,t6
	slli	t0,t5,00000019
	srli	t6,t5,00000007
	or	t6,t6,t0
	slli	t0,t5,0000000E
	or	t0,t0,t2
	xor	t6,t6,t0
	srli	t0,t5,00000003
	xor	t6,t6,t0
	c.add	t4,t6
	slli	t0,a7,0000001A
	srli	t6,a7,00000006
	slli	t2,a7,00000015
	or	t6,t6,t0
	srli	t0,a7,0000000B
	or	t0,t0,t2
	xor	t6,t6,t0
	srli	t2,a7,00000019
	slli	t0,a7,00000007
	or	t0,t0,t2
	xor	t6,t6,t0
	xor	t0,t1,a1
	and	t0,t0,a7
	xor	t0,t0,t1
	c.add	t6,t0
	lw	t0,s1,+00000040
	slli	t2,a2,00000013
	lw	s7,t3,+0000000C
	c.add	t6,t0
	c.add	t6,t4
	c.add	a6,t6
	slli	t0,a2,0000001E
	srli	t6,a2,00000002
	or	t6,t6,t0
	srli	t0,a2,0000000D
	or	t0,t0,t2
	xor	t6,t6,t0
	srli	t2,a2,00000016
	slli	t0,a2,0000000A
	or	t0,t0,t2
	xor	t6,t6,t0
	or	t0,a2,a3
	and	t2,a2,a3
	and	t0,t0,a4
	or	t0,t0,t2
	c.add	t6,t0
	srli	t0,s6,00000011
	srli	t2,s6,00000013
	or	s0,s0,t0
	slli	t0,s6,0000000D
	or	t0,t0,t2
	xor	s0,s0,t0
	srli	t0,s6,0000000A
	xor	s0,s0,t0
	lw	t0,t3,+00000028
	c.add	a5,a6
	c.add	a6,t6
	lw	t6,t3,+00000008
	c.add	t5,t0
	c.add	s0,t5
	srli	t0,t6,00000007
	slli	t5,t6,00000019
	srli	t2,t6,00000012
	or	t0,t0,t5
	slli	t5,t6,0000000E
	or	t5,t5,t2
	xor	t0,t0,t5
	srli	t5,t6,00000003
	xor	t0,t0,t5
	c.add	s0,t0
	lw	t0,s1,+00000044
	xor	t5,a7,a1
	and	t5,t5,a5
	c.add	t1,t0
	c.add	t1,s0
	xor	t5,t5,a1
	slli	t0,a5,0000001A
	c.add	t5,t1
	srli	t1,a5,00000006
	slli	t2,a5,00000015
	or	t1,t1,t0
	srli	t0,a5,0000000B
	or	t0,t0,t2
	xor	t1,t1,t0
	srli	t2,a5,00000019
	slli	t0,a5,00000007
	or	t0,t0,t2
	xor	t1,t1,t0
	c.add	t5,t1
	slli	t0,a6,0000001E
	srli	t1,a6,00000002
	slli	t2,a6,00000013
	or	t1,t1,t0
	srli	t0,a6,0000000D
	or	t0,t0,t2
	xor	t1,t1,t0
	srli	t2,a6,00000016
	slli	t0,a6,0000000A
	or	t0,t0,t2
	xor	t1,t1,t0
	or	t0,a2,a6
	and	t2,a2,a6
	and	t0,t0,a3
	or	t0,t0,t2
	c.add	t1,t0
	c.add	t1,t5
	c.add	a4,t5
	slli	t2,t4,0000000F
	srli	t5,t4,00000011
	srli	t0,t4,00000013
	or	t2,t2,t5
	slli	t5,t4,0000000D
	or	t5,t5,t0
	xor	t2,t2,t5
	srli	t5,t4,0000000A
	xor	t2,t2,t5
	lw	t5,t3,+0000002C
	srli	t0,s7,00000012
	srli	s8,s0,00000013
	c.add	t6,t5
	c.add	t2,t6
	slli	t5,s7,00000019
	srli	t6,s7,00000007
	or	t6,t6,t5
	slli	t5,s7,0000000E
	or	t5,t5,t0
	xor	t6,t6,t5
	srli	t5,s7,00000003
	xor	t6,t6,t5
	c.add	t2,t6
	lw	t6,s1,+00000048
	xor	t5,a7,a5
	and	t5,t5,a4
	c.add	a1,t6
	c.add	a1,t2
	xor	t5,t5,a7
	slli	t6,a4,0000001A
	c.add	t5,a1
	srli	a1,a4,00000006
	slli	t0,a4,00000015
	or	a1,a1,t6
	srli	t6,a4,0000000B
	or	t6,t6,t0
	xor	a1,a1,t6
	srli	t0,a4,00000019
	slli	t6,a4,00000007
	or	t6,t6,t0
	xor	a1,a1,t6
	c.add	t5,a1
	slli	t6,t1,0000001E
	srli	a1,t1,00000002
	slli	t0,t1,00000013
	or	a1,a1,t6
	srli	t6,t1,0000000D
	or	t6,t6,t0
	xor	a1,a1,t6
	srli	t0,t1,00000016
	slli	t6,t1,0000000A
	or	t6,t6,t0
	xor	a1,a1,t6
	or	t6,a6,t1
	and	t0,a6,t1
	and	t6,t6,a2
	or	t6,t6,t0
	c.add	a1,t6
	slli	t0,s0,0000000F
	srli	t6,s0,00000011
	or	t0,t0,t6
	slli	t6,s0,0000000D
	or	t6,t6,s8
	xor	t0,t0,t6
	sw	s0,t3,+00000044
	c.srli	s0,0000000A
	xor	s0,t0,s0
	lw	t0,t3,+00000030
	c.add	a1,t5
	c.add	a3,t5
	lw	t5,t3,+00000010
	c.add	s7,t0
	add	t0,s0,s7
	srli	t6,t5,00000007
	slli	s0,t5,00000019
	srli	s7,t5,00000012
	or	t6,t6,s0
	slli	s0,t5,0000000E
	or	s0,s0,s7
	xor	t6,t6,s0
	srli	s0,t5,00000003
	xor	t6,t6,s0
	c.lw	s1,76(s0)
	c.add	t0,t6
	xor	t6,a5,a4
	and	t6,t6,a3
	c.add	a7,s0
	c.add	a7,t0
	xor	t6,t6,a5
	slli	s0,a3,0000001A
	c.add	t6,a7
	srli	a7,a3,00000006
	slli	s7,a3,00000015
	or	a7,a7,s0
	srli	s0,a3,0000000B
	or	s0,s0,s7
	xor	a7,a7,s0
	srli	s7,a3,00000019
	slli	s0,a3,00000007
	or	s0,s0,s7
	xor	a7,a7,s0
	c.add	t6,a7
	slli	s0,a1,0000001E
	srli	a7,a1,00000002
	slli	s7,a1,00000013
	or	a7,a7,s0
	srli	s0,a1,0000000D
	or	s0,s0,s7
	xor	a7,a7,s0
	srli	s7,a1,00000016
	slli	s0,a1,0000000A
	or	s0,s0,s7
	xor	a7,a7,s0
	or	s0,t1,a1
	and	s7,t1,a1
	and	s0,s0,a6
	or	s0,s0,s7
	c.add	a7,s0
	c.add	a7,t6
	c.add	a2,t6
	srli	s0,t2,00000011
	slli	t6,t2,0000000F
	srli	s8,t2,00000013
	or	t6,t6,s0
	slli	s0,t2,0000000D
	or	s0,s0,s8
	xor	t6,t6,s0
	sw	t2,t3,+00000048
	srli	t2,t2,0000000A
	xor	t2,t6,t2
	lw	t6,t3,+00000034
	lw	s7,t3,+00000014
	srli	s8,t0,00000013
	c.add	t5,t6
	add	t6,t2,t5
	slli	t2,s7,00000019
	srli	t5,s7,00000007
	srli	s0,s7,00000012
	or	t5,t5,t2
	slli	t2,s7,0000000E
	or	t2,t2,s0
	xor	t5,t5,t2
	srli	t2,s7,00000003
	xor	t5,t5,t2
	lw	t2,s1,+00000050
	c.add	t6,t5
	xor	t5,a4,a3
	c.add	t2,t6
	and	t5,t5,a2
	xor	t5,t5,a4
	c.add	a5,t2
	add	t2,t5,a5
	slli	a5,a2,0000001A
	srli	t5,a2,00000006
	slli	s0,a2,00000015
	or	t5,t5,a5
	srli	a5,a2,0000000B
	c.or	a5,s0
	xor	t5,t5,a5
	srli	s0,a2,00000019
	slli	a5,a2,00000007
	c.or	a5,s0
	xor	a5,t5,a5
	add	t5,a5,t2
	slli	t2,a7,0000001E
	srli	a5,a7,00000002
	slli	s0,a7,00000013
	or	a5,a5,t2
	srli	t2,a7,0000000D
	or	t2,t2,s0
	xor	a5,a5,t2
	srli	s0,a7,00000016
	slli	t2,a7,0000000A
	or	t2,t2,s0
	xor	a5,a5,t2
	or	t2,a1,a7
	and	s0,a1,a7
	and	t2,t2,t1
	or	t2,t2,s0
	c.add	a5,t2
	c.add	a5,t5
	c.add	a6,t5
	srli	t2,t0,00000011
	slli	t5,t0,0000000F
	lw	s0,t3,+00000018
	or	t5,t5,t2
	slli	t2,t0,0000000D
	or	t2,t2,s8
	sw	t0,t3,+0000004C
	xor	t5,t5,t2
	srli	t0,t0,0000000A
	c.add	s5,s7
	slli	t2,s0,00000019
	xor	t5,t5,t0
	srli	t0,s0,00000007
	c.add	t5,s5
	or	t0,t0,t2
	srli	s5,s0,00000012
	slli	t2,s0,0000000E
	or	t2,t2,s5
	xor	t0,t0,t2
	srli	t2,s0,00000003
	xor	t0,t0,t2
	lw	t2,s1,+00000054
	c.add	t5,t0
	xor	t0,a3,a2
	c.add	t2,t5
	and	t0,t0,a6
	xor	t0,t0,a3
	c.add	a4,t2
	add	t2,t0,a4
	slli	a4,a6,0000001A
	srli	t0,a6,00000006
	or	t0,t0,a4
	slli	s5,a6,00000015
	srli	a4,a6,0000000B
	or	a4,a4,s5
	xor	t0,t0,a4
	srli	s5,a6,00000019
	slli	a4,a6,00000007
	or	a4,a4,s5
	xor	a4,t0,a4
	add	t0,a4,t2
	slli	t2,a5,0000001E
	srli	a4,a5,00000002
	or	a4,a4,t2
	slli	s5,a5,00000013
	srli	t2,a5,0000000D
	or	t2,t2,s5
	xor	a4,a4,t2
	srli	s5,a5,00000016
	slli	t2,a5,0000000A
	or	t2,t2,s5
	xor	a4,a4,t2
	or	t2,a7,a5
	and	s5,a7,a5
	and	t2,t2,a1
	or	t2,t2,s5
	c.add	a4,t2
	srli	s5,t6,00000011
	slli	t2,t6,0000000F
	or	t2,t2,s5
	srli	s7,t6,00000013
	slli	s5,t6,0000000D
	c.add	a4,t0
	c.add	t1,t0
	or	s5,s5,s7
	lw	t0,t3,+0000001C
	xor	t2,t2,s5
	sw	t6,t3,+00000050
	srli	t6,t6,0000000A
	xor	t6,t2,t6
	c.add	s6,s0
	slli	t2,t0,00000019
	c.add	s6,t6
	srli	t6,t0,00000007
	srli	s0,t0,00000012
	or	t6,t6,t2
	slli	t2,t0,0000000E
	or	t2,t2,s0
	xor	t6,t6,t2
	srli	t2,t0,00000003
	xor	t6,t6,t2
	lw	t2,s1,+00000058
	c.add	s6,t6
	xor	t6,a2,a6
	c.add	t2,s6
	and	t6,t6,t1
	xor	t6,t6,a2
	c.add	a3,t2
	add	t2,t6,a3
	slli	a3,t1,0000001A
	srli	t6,t1,00000006
	or	t6,t6,a3
	slli	s0,t1,00000015
	srli	a3,t1,0000000B
	c.or	a3,s0
	xor	t6,t6,a3
	srli	s0,t1,00000019
	slli	a3,t1,00000007
	c.or	a3,s0
	xor	a3,t6,a3
	add	t6,a3,t2
	slli	t2,a4,0000001E
	srli	a3,a4,00000002
	or	a3,a3,t2
	slli	s0,a4,00000013
	srli	t2,a4,0000000D
	or	t2,t2,s0
	xor	a3,a3,t2
	srli	s0,a4,00000016
	slli	t2,a4,0000000A
	or	t2,t2,s0
	xor	a3,a3,t2
	or	t2,a5,a4
	and	t2,t2,a7
	and	s0,a5,a4
	or	t2,t2,s0
	c.add	a3,t2
	c.add	a3,t6
	c.add	a1,t6
	srli	s0,t5,00000011
	slli	t6,t5,0000000F
	or	t6,t6,s0
	srli	s5,t5,00000013
	slli	s0,t5,0000000D
	lw	t2,t3,+00000020
	or	s0,s0,s5
	sw	t5,t3,+00000054
	xor	t6,t6,s0
	srli	t5,t5,0000000A
	xor	t5,t6,t5
	sw	t4,t3,+00000040
	c.add	t4,t0
	slli	t6,t2,00000019
	c.add	t4,t5
	srli	t5,t2,00000007
	or	t5,t5,t6
	srli	t0,t2,00000012
	slli	t6,t2,0000000E
	or	t6,t6,t0
	xor	t5,t5,t6
	srli	t2,t2,00000003
	lw	t6,s1,+0000005C
	xor	t5,t5,t2
	c.add	t4,t5
	xor	t5,a6,t1
	c.add	t6,t4
	and	t5,t5,a1
	xor	t5,t5,a6
	c.add	a2,t6
	c.add	a2,t5
	sw	t4,t3,+0000005C
	slli	t5,a1,0000001A
	srli	t4,a1,00000006
	or	t4,t4,t5
	slli	t6,a1,00000015
	srli	t5,a1,0000000B
	or	t5,t5,t6
	xor	t4,t4,t5
	srli	t6,a1,00000019
	slli	t5,a1,00000007
	or	t5,t5,t6
	xor	t4,t4,t5
	c.add	t4,a2
	slli	t5,a3,0000001E
	srli	a2,a3,00000002
	or	a2,a2,t5
	slli	t6,a3,00000013
	srli	t5,a3,0000000D
	or	t5,t5,t6
	xor	a2,a2,t5
	srli	t6,a3,00000016
	slli	t5,a3,0000000A
	or	t5,t5,t6
	xor	a2,a2,t5
	or	t5,a4,a3
	and	t5,t5,a5
	and	t6,a4,a3
	or	t5,t5,t6
	sw	s6,t3,+00000058
	c.add	a2,t5
	addi	t3,t3,+00000020
	c.add	a7,t4
	c.add	a2,t4
	addi	s1,s1,+00000020
	bne	s4,t3,0000000023058CE0

l230593F0:
	c.swsp	a6,0000008C
	c.swsp	a7,00000008
	c.swsp	t1,0000000C
	c.swsp	a1,00000088
	c.swsp	a2,00000000
	c.swsp	a3,00000080
	c.swsp	a4,00000004
	c.swsp	a5,00000084

l23059400:
	lw	a5,s2,+00000000
	lw	a4,s3,+00000000
	c.addi	s2,00000004
	c.addi	s3,00000004
	c.add	a5,a4
	sw	a5,s2,+00000FFC
	bne	a0,s2,0000000023059400

l23059416:
	lw	s0,sp,+0000014C
	lw	s1,sp,+00000148
	lw	s2,sp,+00000144
	lw	s3,sp,+00000140
	lw	s4,sp,+0000013C
	lw	s5,sp,+00000138
	lw	s6,sp,+00000134
	lw	s7,sp,+00000130
	lw	s8,sp,+0000012C
	c.addi16sp	00000150
	c.jr	ra

;; mbedtls_sha256_update.part.0: 2305943E
;;   Called from:
;;     23059502 (in mbedtls_sha256_update)
;;     2305958C (in mbedtls_sha256_finish)
mbedtls_sha256_update.part.0 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.lw	a0,0(a5)
	c.mv	s1,a0
	c.mv	s2,a1
	andi	s3,a5,+0000003F
	c.add	a5,a2
	c.sw	a0,0(a5)
	c.mv	s0,a2
	bgeu	a5,a2,000000002305946A

l23059464:
	c.lw	a0,4(a5)
	c.addi	a5,00000001
	c.sw	a0,4(a5)

l2305946A:
	beq	s3,zero,000000002305949C

l2305946E:
	addi	s4,zero,+00000040
	sub	s4,s4,s3
	bltu	s0,s4,000000002305949C

l2305947A:
	addi	s5,s1,+00000028
	c.mv	a1,s2
	c.mv	a2,s4
	add	a0,s5,s3
	jal	ra,0000000023070C7C
	c.mv	a1,s5
	c.mv	a0,s1
	addi	s0,s0,-00000040
	c.add	s0,s3
	jal	ra,00000000230587DA
	c.add	s2,s4
	c.li	s3,00000000

l2305949C:
	c.mv	s4,s0
	add	s6,s2,s0
	addi	s5,zero,+0000003F
	c.j	00000000230594B2

l230594A8:
	c.mv	a0,s1
	jal	ra,00000000230587DA
	addi	s4,s4,-00000040

l230594B2:
	sub	a1,s6,s4
	bltu	s5,s4,00000000230594A8

l230594BA:
	srli	a2,s0,00000006
	addi	a5,zero,-00000040
	slli	a1,a2,00000006
	add	a2,a2,a5
	c.add	a1,s2
	c.add	a2,s0
	c.beqz	a2,00000000230594EC

l230594D0:
	addi	a0,s1,+00000028
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.add	a0,s3
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,0000000023070C7C

l230594EC:
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

;; mbedtls_sha256_update: 23059500
;;   Called from:
;;     230562C4 (in entropy_update)
;;     230562CE (in entropy_update)
;;     2305644A (in mbedtls_entropy_func)
;;     23059582 (in mbedtls_sha256_finish)
;;     230596BC (in mbedtls_sha256)
;;     2305999C (in ssl_update_checksum_start)
;;     23065B06 (in sha224_update_wrap)
mbedtls_sha256_update proc
	c.beqz	a2,0000000023059506

l23059502:
	jal	zero,000000002305943E

l23059506:
	c.jr	ra

;; mbedtls_sha256_finish: 23059508
;;   Called from:
;;     2305642A (in mbedtls_entropy_func)
;;     230596C4 (in mbedtls_sha256)
;;     2305981A (in ssl_calc_finished_tls_sha256)
;;     230598DC (in ssl_calc_verify_tls_sha256)
;;     23065B02 (in sha224_finish_wrap)
mbedtls_sha256_finish proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.lw	a0,0(a2)
	c.lw	a0,4(a5)
	c.mv	s0,a0
	srli	a4,a2,0000001D
	c.slli	a5,03
	c.or	a5,a4
	srli	a3,a5,00000018
	sb	a3,sp,+00000008
	srli	a3,a5,00000010
	sb	a3,sp,+00000009
	slli	a3,a5,00000008
	c.slli	a5,10
	c.srli	a5,00000010
	c.srli	a5,00000008
	slli	a4,a2,00000003
	c.or	a5,a3
	sh	a5,sp,+0000000A
	srli	a5,a4,00000018
	sb	a5,sp,+0000000C
	srli	a5,a4,00000010
	c.slli	a4,10
	c.srli	a4,00000010
	sb	a5,sp,+0000000D
	c.srli	a4,00000008
	slli	a5,a2,0000000B
	c.or	a4,a5
	sh	a4,sp,+0000000E
	andi	a2,a2,+0000003F
	addi	a5,zero,+00000037
	c.mv	s1,a1
	bltu	a5,a2,000000002305968E

l23059570:
	addi	a5,zero,+00000038

l23059574:
	lui	a1,00023089
	sub	a2,a5,a2
	addi	a1,a1,-000001FC
	c.mv	a0,s0
	jal	ra,0000000023059500
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	jal	ra,000000002305943E
	lbu	a5,s0,+0000000B
	sb	a5,s1,+00000000
	lhu	a5,s0,+0000000A
	sb	a5,s1,+00000001
	c.lw	s0,8(a5)
	c.srli	a5,00000008
	sb	a5,s1,+00000002
	c.lw	s0,8(a5)
	sb	a5,s1,+00000003
	lbu	a5,s0,+0000000F
	sb	a5,s1,+00000004
	lhu	a5,s0,+0000000E
	sb	a5,s1,+00000005
	c.lw	s0,12(a5)
	c.srli	a5,00000008
	sb	a5,s1,+00000006
	c.lw	s0,12(a5)
	sb	a5,s1,+00000007
	lbu	a5,s0,+00000013
	sb	a5,s1,+00000008
	lhu	a5,s0,+00000012
	sb	a5,s1,+00000009
	c.lw	s0,16(a5)
	c.srli	a5,00000008
	sb	a5,s1,+0000000A
	c.lw	s0,16(a5)
	sb	a5,s1,+0000000B
	lbu	a5,s0,+00000017
	sb	a5,s1,+0000000C
	lhu	a5,s0,+00000016
	sb	a5,s1,+0000000D
	c.lw	s0,20(a5)
	c.srli	a5,00000008
	sb	a5,s1,+0000000E
	c.lw	s0,20(a5)
	sb	a5,s1,+0000000F
	lbu	a5,s0,+0000001B
	sb	a5,s1,+00000010
	lhu	a5,s0,+0000001A
	sb	a5,s1,+00000011
	c.lw	s0,24(a5)
	c.srli	a5,00000008
	sb	a5,s1,+00000012
	c.lw	s0,24(a5)
	sb	a5,s1,+00000013
	lbu	a5,s0,+0000001F
	sb	a5,s1,+00000014
	lhu	a5,s0,+0000001E
	sb	a5,s1,+00000015
	c.lw	s0,28(a5)
	c.srli	a5,00000008
	sb	a5,s1,+00000016
	c.lw	s0,28(a5)
	sb	a5,s1,+00000017
	lbu	a5,s0,+00000023
	sb	a5,s1,+00000018
	lhu	a5,s0,+00000022
	sb	a5,s1,+00000019
	c.lw	s0,32(a5)
	c.srli	a5,00000008
	sb	a5,s1,+0000001A
	c.lw	s0,32(a5)
	sb	a5,s1,+0000001B
	c.lw	s0,104(a5)
	c.bnez	a5,0000000023059684

l23059666:
	lbu	a5,s0,+00000027
	sb	a5,s1,+0000001C
	lhu	a5,s0,+00000026
	sb	a5,s1,+0000001D
	c.lw	s0,36(a5)
	c.srli	a5,00000008
	sb	a5,s1,+0000001E
	c.lw	s0,36(a5)
	sb	a5,s1,+0000001F

l23059684:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2305968E:
	addi	a5,zero,+00000078
	c.j	0000000023059574

;; mbedtls_sha256: 23059694
;;   Called from:
;;     230562AC (in entropy_update)
;;     23056458 (in mbedtls_entropy_func)
;;     23065AF8 (in sha224_wrap)
;;     23065AFE (in sha256_wrap)
mbedtls_sha256 proc
	c.addi16sp	FFFFFF60
	c.swsp	s1,000000C8
	c.mv	s1,a0
	c.addi4spn	a0,0000001C
	c.swsp	ra,000000CC
	c.swsp	s0,0000004C
	c.swsp	s2,00000048
	c.mv	s0,a2
	c.mv	s2,a1
	c.swsp	a3,00000084
	jal	ra,00000000230586FC
	c.lwsp	a2,000000A4
	c.addi4spn	a0,0000001C
	c.mv	a1,a3
	jal	ra,000000002305872C
	c.mv	a2,s2
	c.mv	a1,s1
	c.addi4spn	a0,0000001C
	jal	ra,0000000023059500
	c.mv	a1,s0
	c.addi4spn	a0,0000001C
	jal	ra,0000000023059508
	c.addi4spn	a0,0000001C
	jal	ra,0000000023058706
	c.lwsp	t5,00000020
	c.lwsp	s10,00000004
	c.lwsp	s6,00000024
	c.lwsp	s2,00000048
	c.addi16sp	000000A0
	c.jr	ra

;; mbedtls_ssl_own_cert: 230596DA
;;   Called from:
;;     2305C190 (in mbedtls_ssl_write_certificate)
;;     2305C1BA (in mbedtls_ssl_write_certificate)
;;     2305C1DC (in mbedtls_ssl_write_certificate)
mbedtls_ssl_own_cert proc
	c.lw	a0,48(a5)
	c.beqz	a5,00000000230596E2

l230596DE:
	c.lw	a5,8(a5)
	c.bnez	a5,00000000230596E8

l230596E2:
	c.lw	a0,0(a5)
	c.lw	a5,76(a5)
	c.beqz	a5,00000000230596EA

l230596E8:
	c.lw	a5,0(a5)

l230596EA:
	c.mv	a0,a5
	c.jr	ra

;; mbedtls_zeroize: 230596EE
;;   Called from:
;;     23059864 (in ssl_calc_finished_tls_sha256)
;;     23059AF6 (in tls_prf_sha256)
;;     23059B00 (in tls_prf_sha256)
;;     23059D56 (in mbedtls_ssl_derive_keys)
;;     23059D86 (in mbedtls_ssl_derive_keys)
;;     23059E44 (in mbedtls_ssl_derive_keys)
;;     2305A0B2 (in mbedtls_ssl_derive_keys)
;;     2305A698 (in mbedtls_ssl_transform_free)
;;     2305A6E0 (in mbedtls_ssl_handshake_free)
;;     2305A77E (in mbedtls_ssl_session_free)
;;     2305AAB4 (in mbedtls_ssl_free)
;;     2305AACA (in mbedtls_ssl_free)
;;     2305AB28 (in mbedtls_ssl_free)
;;     2305AB5E (in mbedtls_ssl_free)
;;     2305AC46 (in mbedtls_ssl_config_free)
mbedtls_zeroize proc
	c.add	a1,a0

l230596F0:
	bne	a0,a1,00000000230596F6

l230596F4:
	c.jr	ra

l230596F6:
	sb	zero,a0,+00000000
	c.addi	a0,00000001
	c.j	00000000230596F0

;; ssl_swap_epochs: 230596FE
;;   Called from:
;;     2305B4F2 (in mbedtls_ssl_resend)
;;     2305B550 (in mbedtls_ssl_resend)
ssl_swap_epochs proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a0,48(a5)
	c.lw	a0,56(a4)
	lui	a2,0002308A
	c.lw	a5,68(a5)
	bne	a4,a5,0000000023059732

l23059712:
	lui	a4,0002308A
	c.lui	a3,00001000
	addi	a4,a4,+00000364
	addi	a3,a3,-000005F6
	addi	a2,a2,+00000378
	c.li	a1,00000003
	jal	ra,0000000023062FCC

l2305972A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23059732:
	lui	a4,0002308A
	c.lui	a3,00001000
	addi	a4,a4,+00000380
	addi	a3,a3,-000005F2
	addi	a2,a2,+00000378
	c.li	a1,00000003
	c.mv	s0,a0
	jal	ra,0000000023062FCC
	c.lw	s0,48(a5)
	c.lw	s0,56(a4)
	c.li	a2,00000008
	c.lw	a5,68(a3)
	c.addi4spn	a0,00000008
	c.sw	s0,56(a3)
	c.sw	a5,68(a4)
	lw	a1,s0,+00000090
	jal	ra,0000000023070C7C
	c.lw	s0,48(a1)
	lw	a0,s0,+00000090
	c.li	a2,00000008
	addi	a1,a1,+00000048
	jal	ra,0000000023070C7C
	c.lw	s0,48(a0)
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	addi	a0,a0,+00000048
	jal	ra,0000000023070C7C
	c.lw	s0,56(a3)
	lw	a5,s0,+0000009C
	c.beqz	a3,0000000023059798

l23059788:
	c.lw	s0,12(a2)
	c.li	a4,00000001
	bge	a4,a2,0000000023059798

l23059790:
	c.lw	a3,12(a4)
	c.lw	a3,16(a3)
	c.sub	a4,a3
	c.add	a5,a4

l23059798:
	sw	a5,s0,+000000A0
	c.j	000000002305972A

;; ssl_calc_finished_tls_sha256: 2305979E
ssl_calc_finished_tls_sha256 proc
	c.addi16sp	FFFFFF30
	c.swsp	s0,00000064
	c.swsp	s3,000000DC
	c.swsp	s5,000000D8
	c.swsp	ra,000000E4
	c.swsp	s1,000000E0
	c.swsp	s2,00000060
	c.swsp	s4,0000005C
	c.lw	a0,44(s1)
	c.mv	s0,a0
	c.mv	s3,a1
	c.mv	s5,a2
	c.bnez	s1,00000000230597BA

l230597B8:
	c.lw	a0,40(s1)

l230597BA:
	c.addi4spn	a0,0000003C
	jal	ra,00000000230586FC
	c.lui	s4,00001000
	lui	s2,0002308A
	lui	a4,0002308A
	addi	a4,a4,+00000238
	addi	a3,s4,+00000356
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lw	s0,48(a1)
	c.addi4spn	a0,0000003C
	addi	a1,a1,+00000050
	jal	ra,000000002305871A
	lui	a4,0002308A
	addi	a6,zero,+00000020
	c.addi4spn	a5,00000044
	addi	a4,a4,+00000258
	addi	a3,s4,+00000362
	addi	a2,s2,+00000378
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,00000000230630DE
	beq	s5,zero,0000000023059892

l2305980C:
	lui	a2,0002308A
	addi	a2,a2,+00000228

l23059814:
	c.addi4spn	a1,0000001C
	c.addi4spn	a0,0000003C
	c.swsp	a2,00000084
	jal	ra,0000000023059508
	c.lw	s0,48(a5)
	c.lwsp	a2,00000084
	c.addi4spn	a3,0000001C
	lw	a7,a5,+000000D0
	c.li	a6,0000000C
	c.mv	a5,s3
	addi	a4,zero,+00000020
	addi	a1,zero,+00000030
	addi	a0,s1,+0000002C
	c.jalr	a7
	c.lui	s1,00001000
	lui	a4,0002308A
	c.mv	a5,s3
	addi	a3,s1,+0000036E
	addi	a2,s2,+00000378
	c.li	a6,0000000C
	addi	a4,a4,+0000026C
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,00000000230630DE
	c.addi4spn	a0,0000003C
	jal	ra,0000000023058706
	c.addi4spn	a0,0000001C
	addi	a1,zero,+00000020
	jal	ra,00000000230596EE
	lui	a4,0002308A
	addi	a3,s1,+00000374
	addi	a2,s2,+00000378
	c.mv	a0,s0
	addi	a4,a4,+00000284
	c.li	a1,00000002
	jal	ra,0000000023062FCC
	c.lwsp	a5,00000020
	c.lwsp	a1,00000004
	c.lwsp	t2,00000024
	c.lwsp	gp,00000048
	c.lwsp	t5,00000178
	c.lwsp	s10,00000198
	c.lwsp	s6,000001B8
	c.addi16sp	000000D0
	c.jr	ra

l23059892:
	lui	a2,0002308A
	addi	a2,a2,+00000218
	c.j	0000000023059814

;; ssl_calc_verify_tls_sha256: 2305989C
ssl_calc_verify_tls_sha256 proc
	c.addi16sp	FFFFFF70
	c.swsp	s0,00000044
	c.mv	s0,a0
	c.addi4spn	a0,0000000C
	c.swsp	ra,000000C4
	c.swsp	s1,000000C0
	c.swsp	s2,00000040
	c.mv	s2,a1
	jal	ra,00000000230586FC
	lui	s1,0002308A
	lui	a4,0002308A
	addi	a2,s1,+00000378
	addi	a4,a4,+00000298
	addi	a3,zero,+0000042D
	c.mv	a0,s0
	c.li	a1,00000002
	jal	ra,0000000023062FCC
	c.lw	s0,48(a1)
	c.addi4spn	a0,0000000C
	addi	a1,a1,+00000050
	jal	ra,000000002305871A
	c.mv	a1,s2
	c.addi4spn	a0,0000000C
	jal	ra,0000000023059508
	lui	a4,0002308A
	c.mv	a5,s2
	addi	a6,zero,+00000020
	addi	a2,s1,+00000378
	c.mv	a0,s0
	addi	a4,a4,+000002B0
	addi	a3,zero,+00000432
	c.li	a1,00000003
	jal	ra,00000000230630DE
	lui	a4,0002308A
	addi	a2,s1,+00000378
	c.mv	a0,s0
	addi	a4,a4,+000002CC
	addi	a3,zero,+00000433
	c.li	a1,00000002
	jal	ra,0000000023062FCC
	c.addi4spn	a0,0000000C
	jal	ra,0000000023058706
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.lwsp	t1,00000024
	c.lwsp	sp,00000048
	c.addi16sp	00000090
	c.jr	ra

;; ssl_flight_free: 23059928
;;   Called from:
;;     2305A25C (in mbedtls_ssl_recv_flight_completed)
;;     2305A6CE (in mbedtls_ssl_handshake_free)
ssl_flight_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0

l23059932:
	c.bnez	s0,000000002305993E

l23059934:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2305993E:
	c.lw	s0,0(a0)
	c.lw	s0,12(s1)
	jal	ra,0000000023032272
	c.mv	a0,s0
	jal	ra,0000000023032272
	c.mv	s0,s1
	c.j	0000000023059932

;; ssl_append_key_cert: 23059950
;;   Called from:
;;     2305A3C8 (in mbedtls_ssl_conf_own_cert)
ssl_append_key_cert proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.mv	s1,a1
	c.li	a0,00000001
	c.li	a1,0000000C
	c.swsp	ra,0000008C
	c.swsp	a2,00000084
	jal	ra,000000002305F67C
	c.beqz	a0,000000002305998E

l23059968:
	c.lwsp	a2,00000084
	c.sw	a0,0(s1)
	sw	zero,a0,+00000008
	c.sw	a0,4(a2)
	c.lw	s0,0(a5)
	c.bnez	a5,0000000023059986

l23059976:
	c.sw	s0,0(a0)

l23059978:
	c.li	a0,00000000

l2305997A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23059984:
	c.mv	a5,a4

l23059986:
	c.lw	a5,8(a4)
	c.bnez	a4,0000000023059984

l2305998A:
	c.sw	a5,8(a0)
	c.j	0000000023059978

l2305998E:
	c.lui	a0,FFFF8000
	addi	a0,a0,+00000100
	c.j	000000002305997A

;; ssl_update_checksum_start: 23059996
;;   Called from:
;;     230599A0 (in ssl_update_checksum_sha256)
ssl_update_checksum_start proc
	c.lw	a0,48(a0)
	addi	a0,a0,+00000050
	jal	zero,0000000023059500

;; ssl_update_checksum_sha256: 230599A0
ssl_update_checksum_sha256 proc
	jal	zero,0000000023059996

;; mbedtls_ssl_hdr_len.isra.1: 230599A4
;;   Called from:
;;     2305A1D2 (in mbedtls_ssl_flush_output)
;;     2305A1F2 (in mbedtls_ssl_flush_output)
;;     2305A508 (in mbedtls_ssl_get_record_expansion)
;;     2305A532 (in mbedtls_ssl_get_record_expansion)
;;     2305B3E4 (in mbedtls_ssl_write_record)
;;     2305B43A (in mbedtls_ssl_write_record)
;;     2305C73A (in mbedtls_ssl_read_record_layer)
;;     2305C770 (in mbedtls_ssl_read_record_layer)
;;     2305C838 (in mbedtls_ssl_read_record_layer)
;;     2305C99C (in mbedtls_ssl_read_record_layer)
;;     2305C9E6 (in mbedtls_ssl_read_record_layer)
;;     2305C9F0 (in mbedtls_ssl_read_record_layer)
mbedtls_ssl_hdr_len.isra.1 proc
	lhu	a5,a0,+00000074
	c.andi	a5,00000002
	c.beqz	a5,00000000230599B0

l230599AC:
	c.li	a0,0000000D
	c.jr	ra

l230599B0:
	c.li	a0,00000005
	c.jr	ra

;; ssl_set_timer: 230599B4
;;   Called from:
;;     2305A276 (in mbedtls_ssl_recv_flight_completed)
;;     2305A2D8 (in mbedtls_ssl_send_flight_completed)
;;     2305A80A (in mbedtls_ssl_handshake_wrapup)
;;     2305A994 (in ssl_handshake_init)
;;     2305B5D4 (in mbedtls_ssl_resend)
;;     2305B774 (in mbedtls_ssl_fetch_input)
;;     2305D934 (in mbedtls_ssl_read)
;;     2305D9FC (in mbedtls_ssl_read)
ssl_set_timer proc
	c.lw	a0,72(a5)
	c.beqz	a5,00000000230599F6

l230599B8:
	c.addi	sp,FFFFFFF0
	lui	a4,0002308A
	lui	a2,0002308A
	c.swsp	s1,00000080
	c.mv	a5,a1
	c.mv	s1,a1
	addi	a2,a2,+00000378
	c.li	a1,00000003
	addi	a4,a4,+00000350
	addi	a3,zero,+00000052
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023062FCC
	lw	t1,s0,+00000048
	c.lw	s0,68(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a2,s1
	srli	a1,s1,00000002
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	t1

l230599F6:
	c.jr	ra

;; ssl_check_timer: 230599F8
;;   Called from:
;;     2305B750 (in mbedtls_ssl_fetch_input)
;;     2305B8DC (in mbedtls_ssl_fetch_input)
ssl_check_timer proc
	c.lw	a0,76(a5)
	c.bnez	a5,0000000023059A0A

l230599FC:
	c.li	a0,00000000
	c.jr	ra

l23059A00:
	c.li	a0,00000000

l23059A02:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23059A0A:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,68(a0)
	c.jalr	a5
	c.li	a5,00000002
	bne	a0,a5,0000000023059A00

l23059A1C:
	lui	a4,0002308A
	lui	a2,0002308A
	c.mv	a0,s0
	addi	a4,a4,+000002DC
	addi	a3,zero,+00000060
	addi	a2,a2,+00000378
	c.li	a1,00000003
	jal	ra,0000000023062FCC
	c.li	a0,FFFFFFFF
	c.j	0000000023059A02

;; tls_prf_sha256: 23059A3C
tls_prf_sha256 proc
	c.addi16sp	FFFFFF20
	c.swsp	s7,000000DC
	c.mv	s7,a0
	c.addi4spn	a0,00000004
	c.swsp	s0,0000006C
	c.swsp	s2,00000068
	c.swsp	s4,00000064
	c.swsp	s5,000000E0
	c.swsp	s8,0000005C
	c.swsp	s10,00000058
	c.swsp	ra,000000EC
	c.swsp	s1,000000E8
	c.swsp	s3,000000E4
	c.swsp	s6,00000060
	c.swsp	s9,000000D8
	c.mv	s8,a1
	c.mv	s0,a2
	c.mv	s10,a3
	c.mv	s2,a4
	c.mv	s5,a5
	c.mv	s4,a6
	jal	ra,0000000023065718
	c.li	a0,00000006
	jal	ra,00000000230656F8
	beq	a0,zero,0000000023059B7E

l23059A74:
	c.mv	s9,a0
	jal	ra,0000000023065A0C
	c.mv	s1,a0
	c.mv	a0,s0
	jal	ra,000000002307132C
	c.add	a0,s2
	c.add	a0,s1
	addi	a5,zero,+00000080
	bltu	a5,a0,0000000023059B86

l23059A8E:
	c.mv	a0,s0
	jal	ra,000000002307132C
	c.addi4spn	a5,00000030
	add	s6,a5,s1
	c.mv	a2,a0
	c.mv	a1,s0
	c.mv	s3,a0
	c.mv	a0,s6
	jal	ra,0000000023070C7C
	c.addi4spn	a5,00000030
	add	a0,s1,s3
	c.mv	a2,s2
	c.mv	a1,s10
	c.add	a0,a5
	jal	ra,0000000023070C7C
	c.li	a2,00000001
	c.mv	a1,s9
	c.addi4spn	a0,00000004
	jal	ra,000000002306576E
	c.mv	s0,a0
	c.bnez	a0,0000000023059B04

l23059AC4:
	c.mv	a2,s8
	c.mv	a1,s7
	c.addi4spn	a0,00000004
	jal	ra,0000000023065842
	c.add	s2,s3
	c.mv	a2,s2
	c.mv	a1,s6
	c.addi4spn	a0,00000004
	jal	ra,0000000023065924
	c.addi4spn	a1,00000030
	c.addi4spn	a0,00000004
	jal	ra,0000000023065948
	c.li	s3,00000000
	c.add	s2,s1

l23059AE6:
	c.addi4spn	a0,00000004
	bltu	s3,s4,0000000023059B22

l23059AEC:
	jal	ra,0000000023065720
	addi	a1,zero,+00000080
	c.addi4spn	a0,00000030
	jal	ra,00000000230596EE
	addi	a1,zero,+00000020
	c.addi4spn	a0,00000010
	jal	ra,00000000230596EE

l23059B04:
	c.mv	a0,s0
	c.lwsp	t6,00000020
	c.lwsp	s11,00000004
	c.lwsp	s7,00000024
	c.lwsp	s3,00000048
	c.lwsp	a5,00000068
	c.lwsp	a1,00000088
	c.lwsp	t2,000000A8
	c.lwsp	gp,000000C8
	c.lwsp	t5,000001F8
	c.lwsp	s10,0000011C
	c.lwsp	s6,0000013C
	c.lwsp	s2,0000015C
	c.addi16sp	000000E0
	c.jr	ra

l23059B22:
	jal	ra,00000000230659AC
	c.mv	a2,s2
	c.addi4spn	a1,00000030
	c.addi4spn	a0,00000004
	jal	ra,0000000023065924
	c.addi4spn	a1,00000010
	c.addi4spn	a0,00000004
	jal	ra,0000000023065948
	c.addi4spn	a0,00000004
	jal	ra,00000000230659AC
	c.mv	a2,s1
	c.addi4spn	a1,00000030
	c.addi4spn	a0,00000004
	jal	ra,0000000023065924
	c.addi4spn	a1,00000030
	c.addi4spn	a0,00000004
	jal	ra,0000000023065948
	add	a4,s1,s3
	c.mv	a3,s1
	bgeu	s4,a4,0000000023059B5E

l23059B5A:
	and	a3,s4,s1

l23059B5E:
	c.li	a5,00000000
	c.add	s3,s5

l23059B62:
	bne	a5,a3,0000000023059B6A

l23059B66:
	c.mv	s3,a4
	c.j	0000000023059AE6

l23059B6A:
	c.addi4spn	a1,00000010
	c.add	a1,a5
	lbu	a1,a1,+00000000
	add	a2,s3,a5
	c.addi	a5,00000001
	sb	a1,a2,+00000000
	c.j	0000000023059B62

l23059B7E:
	c.lui	s0,FFFF9000
	addi	s0,s0,+00000400
	c.j	0000000023059B04

l23059B86:
	c.lui	s0,FFFF9000
	addi	s0,s0,-00000100
	c.j	0000000023059B04

;; mbedtls_ssl_derive_keys: 23059B8E
mbedtls_ssl_derive_keys proc
	c.addi16sp	FFFFFE70
	sw	ra,sp,+0000018C
	sw	s2,sp,+00000180
	sw	s6,sp,+00000170
	sw	s0,sp,+00000188
	sw	s1,sp,+00000184
	sw	s3,sp,+0000017C
	sw	s4,sp,+00000178
	sw	s5,sp,+00000174
	sw	s7,sp,+0000016C
	sw	s8,sp,+00000168
	sw	s9,sp,+00000164
	sw	s10,sp,+00000160
	sw	s11,sp,+0000015C
	c.lw	a0,64(s1)
	lui	a4,00023089
	lui	s6,0002308A
	addi	a4,a4,-00000140
	addi	a3,zero,+000001F5
	addi	a2,s6,+00000378
	c.li	a1,00000002
	c.mv	s2,a0
	lw	s11,a0,+0000002C
	lw	s4,a0,+00000030
	jal	ra,0000000023062FCC
	c.lw	s1,0(a5)
	lbu	a0,a5,+00000008
	jal	ra,0000000023062798
	c.lw	s1,0(a5)
	c.bnez	a0,0000000023059C54

l23059BF8:
	lbu	a5,a5,+00000008
	lui	a4,00023089
	addi	a4,a4,-00000130
	addi	a3,zero,+000001FB

l23059C08:
	addi	a2,s6,+00000378
	c.li	a1,00000001
	c.mv	a0,s2
	c.lui	s0,FFFF9000
	jal	ra,0000000023062FCC
	addi	s0,s0,-00000100

l23059C1A:
	c.mv	a0,s0
	lw	ra,sp,+0000018C
	lw	s0,sp,+00000188
	lw	s1,sp,+00000184
	lw	s2,sp,+00000180
	lw	s3,sp,+0000017C
	lw	s4,sp,+00000178
	lw	s5,sp,+00000174
	lw	s6,sp,+00000170
	lw	s7,sp,+0000016C
	lw	s8,sp,+00000168
	lw	s9,sp,+00000164
	lw	s10,sp,+00000160
	lw	s11,sp,+0000015C
	c.addi16sp	00000190
	c.jr	ra

l23059C54:
	c.mv	s5,a0
	lbu	a0,a5,+00000009
	jal	ra,00000000230656F8
	c.mv	s8,a0
	c.bnez	a0,0000000023059C76

l23059C62:
	c.lw	s1,0(a5)
	lui	a4,00023089
	addi	a4,a4,-00000110
	lbu	a5,a5,+00000009
	addi	a3,zero,+00000203
	c.j	0000000023059C08

l23059C76:
	lw	a4,s2,+0000000C
	c.li	a5,00000003
	bne	a4,a5,0000000023059CCE

l23059C80:
	lui	a5,0002305A
	addi	a5,a5,-000005C4
	sw	a5,s4,+000000D0
	lui	a5,0002305A
	addi	a5,a5,-00000764
	sw	a5,s4,+000000C8
	lui	a5,00023059
	addi	a5,a5,+0000079E
	sw	a5,s4,+000000CC
	lw	a5,s4,+00000148
	c.mv	s3,s6
	addi	s7,s4,+000000D8
	addi	s9,s11,+0000002C
	c.beqz	a5,0000000023059CEE

l23059CB4:
	lui	a4,00023089
	addi	a4,a4,-000000B0
	addi	a3,zero,+0000027C
	addi	a2,s6,+00000378
	c.li	a1,00000003
	c.mv	a0,s2
	jal	ra,0000000023062FCC
	c.j	0000000023059D5A

l23059CCE:
	lui	a4,00023089
	addi	a4,a4,-000000EC
	addi	a3,zero,+00000232
	addi	a2,s6,+00000378

l23059CDE:
	c.li	a1,00000001
	c.mv	a0,s2
	c.lui	s0,FFFF9000
	jal	ra,0000000023062FCC
	addi	s0,s0,+00000400
	c.j	0000000023059C1A

l23059CEE:
	lw	a6,s4,+000000D4
	addi	s10,s4,+00000118
	lui	a4,00023089
	c.mv	a5,s10
	addi	a4,a4,-000000D8
	addi	a3,zero,+00000243
	addi	a2,s6,+00000378
	c.li	a1,00000003
	c.mv	a0,s2
	jal	ra,00000000230630DE
	lw	a7,s4,+000000D0
	lw	a1,s4,+000000D4
	lui	a2,00023089
	addi	a6,zero,+00000030
	c.mv	a5,s9
	addi	a4,zero,+00000040
	c.mv	a3,s7
	addi	a2,a2,-000000C4
	c.mv	a0,s10
	c.jalr	a7
	c.mv	s0,a0
	c.beqz	a0,0000000023059D50

l23059D34:
	lui	a4,00023089
	c.mv	a5,a0
	addi	a4,a4,-000000B4
	addi	a3,zero,+00000275
	addi	a2,s6,+00000378

l23059D46:
	c.li	a1,00000001
	c.mv	a0,s2
	jal	ra,000000002306305C
	c.j	0000000023059C1A

l23059D50:
	addi	a1,zero,+00000030
	c.mv	a0,s10
	jal	ra,00000000230596EE

l23059D5A:
	addi	a2,zero,+00000040
	c.mv	a1,s7
	c.addi4spn	a0,00000010
	jal	ra,0000000023070C7C
	addi	a2,zero,+00000020
	c.addi4spn	a1,00000030
	c.mv	a0,s7
	jal	ra,0000000023070C7C
	addi	a2,zero,+00000020
	c.addi4spn	a1,00000010
	addi	a0,s4,+000000F8
	jal	ra,0000000023070C7C
	addi	a1,zero,+00000040
	c.addi4spn	a0,00000010
	jal	ra,00000000230596EE
	lw	a7,s4,+000000D0
	lui	a2,00023089
	addi	a6,zero,+00000100
	c.addi4spn	a5,00000050
	addi	a4,zero,+00000040
	c.mv	a3,s7
	addi	a2,a2,-00000090
	addi	a1,zero,+00000030
	c.mv	a0,s9
	c.jalr	a7
	c.mv	s0,a0
	c.beqz	a0,0000000023059DC2

l23059DAE:
	lui	a4,00023089
	c.mv	a5,a0
	addi	a4,a4,-000000B4
	addi	a3,zero,+00000296

l23059DBC:
	addi	a2,s3,+00000378
	c.j	0000000023059D46

l23059DC2:
	lw	a0,s11,+00000000
	jal	ra,000000002306893A
	lui	a4,00023089
	c.mv	a5,a0
	addi	a4,a4,-00000080
	addi	a3,zero,+0000029B
	addi	a2,s3,+00000378
	c.li	a1,00000003
	c.mv	a0,s2
	jal	ra,0000000023062FCC
	lui	a4,00023089
	addi	a6,zero,+00000030
	c.mv	a5,s9
	addi	a4,a4,-000000C4
	addi	a3,zero,+0000029C
	addi	a2,s3,+00000378
	c.li	a1,00000003
	c.mv	a0,s2
	jal	ra,00000000230630DE
	lui	a4,00023089
	addi	a6,zero,+00000040
	c.mv	a5,s7
	addi	a4,a4,-0000006C
	addi	a3,zero,+0000029D
	addi	a2,s3,+00000378
	c.li	a1,00000004
	c.mv	a0,s2
	jal	ra,00000000230630DE
	lui	a4,00023089
	c.addi4spn	a5,00000050
	addi	a6,zero,+00000100
	addi	a4,a4,-0000005C
	addi	a3,zero,+0000029E
	addi	a2,s3,+00000378
	c.li	a1,00000004
	c.mv	a0,s2
	jal	ra,00000000230630DE
	addi	a1,zero,+00000040
	c.mv	a0,s7
	jal	ra,00000000230596EE
	lw	a5,s5,+00000004
	c.srli	a5,00000003
	c.sw	s1,4(a5)
	lbu	a5,s5,+00000001
	c.addi	a5,FFFFFFFA
	andi	a5,a5,+000000FD
	c.bnez	a5,0000000023059E7C

l23059E5C:
	c.li	a5,0000000C
	c.sw	s1,12(a5)
	c.li	a5,00000004
	c.sw	s1,16(a5)
	c.lw	s1,0(a5)
	sw	zero,s1,+00000014
	lbu	a4,a5,+0000001C
	c.li	a5,00000008
	c.andi	a4,00000002
	c.bnez	a4,0000000023059E76

l23059E74:
	c.li	a5,00000010

l23059E76:
	c.addi	a5,00000008

l23059E78:
	c.sw	s1,8(a5)
	c.j	0000000023059EC6

l23059E7C:
	c.li	a2,00000001
	c.mv	a1,s8
	addi	a0,s1,+00000038
	jal	ra,000000002306576E
	c.mv	s0,a0
	c.bnez	a0,0000000023059E9C

l23059E8C:
	c.li	a2,00000001
	c.mv	a1,s8
	addi	a0,s1,+00000044
	jal	ra,000000002306576E
	c.mv	s0,a0
	c.beqz	a0,0000000023059EAC

l23059E9C:
	lui	a4,00023089
	c.mv	a5,s0
	addi	a4,a4,-00000050
	addi	a3,zero,+000002BB
	c.j	0000000023059DBC

l23059EAC:
	c.mv	a0,s8
	jal	ra,0000000023065A0C
	c.sw	s1,20(a0)
	lw	a5,s5,+0000000C
	c.li	a4,00000007
	c.sw	s1,12(a5)
	lbu	a3,s5,+00000001
	bne	a3,a4,0000000023059F78

l23059EC4:
	c.sw	s1,8(a0)

l23059EC6:
	c.lw	s1,20(a4)
	c.lw	s1,4(a5)
	lw	a7,s1,+0000000C
	lw	a6,s1,+00000008
	c.swsp	a4,00000000
	lui	a4,00023089
	addi	a4,a4,-0000003C
	c.li	a1,00000003
	addi	a3,zero,+000002FF
	addi	a2,s3,+00000378
	c.mv	a0,s2
	jal	ra,0000000023062FCC
	lw	a5,s2,+00000000
	c.lw	s1,4(a1)
	c.lw	s1,16(s0)
	lhu	a4,a5,+00000074
	c.lw	s1,20(a5)
	addi	s9,s1,+00000018
	c.andi	a4,00000001
	addi	s10,s1,+00000028
	slli	s4,a5,00000001
	c.bnez	a4,0000000023059FAC

l23059F0A:
	c.addi4spn	a4,00000050
	add	s6,a4,s4
	c.add	s4,a1
	c.add	s4,a4
	add	s8,a4,a5
	c.bnez	s0,0000000023059F1C

l23059F1A:
	c.lw	s1,12(s0)

l23059F1C:
	c.mv	a2,s0
	c.add	a1,s4
	c.mv	a0,s9
	jal	ra,0000000023070C7C
	c.lw	s1,4(a1)
	c.mv	a2,s0
	c.mv	a0,s10
	c.add	a1,s0
	c.add	a1,s4
	jal	ra,0000000023070C7C
	addi	s7,sp,+00000050

l23059F38:
	lw	a5,s2,+0000000C
	bge	zero,a5,0000000023059FDC

l23059F40:
	c.lw	s1,20(a2)
	c.mv	a1,s7
	addi	a0,s1,+00000038
	jal	ra,0000000023065842
	c.lw	s1,20(a2)
	c.mv	a1,s8
	addi	a0,s1,+00000044
	jal	ra,0000000023065842
	addi	s7,s1,+00000050
	c.mv	a1,s5
	c.mv	a0,s7
	jal	ra,0000000023062C44
	c.mv	s0,a0
	c.beqz	a0,0000000023059FEA

l23059F68:
	lui	a4,00023089
	c.mv	a5,a0
	addi	a4,a4,-0000000C
	addi	a3,zero,+0000036D
	c.j	0000000023059DBC

l23059F78:
	lw	a3,s5,+00000014
	add	a4,a0,a3
	and	a0,a0,a3
	c.li	a3,00000001
	sub	a0,a4,a0
	c.sw	s1,8(a0)
	lw	a4,s2,+0000000C
	c.addi	a4,FFFFFFFE
	bltu	a3,a4,0000000023059F9A

l23059F96:
	c.add	a5,a0
	c.j	0000000023059E78

l23059F9A:
	lui	a4,00023089
	addi	a4,a4,-000000EC
	addi	a3,zero,+000002F7

l23059FA6:
	addi	a2,s3,+00000378
	c.j	0000000023059CDE

l23059FAC:
	c.addi4spn	a4,00000050
	add	s6,s4,a1
	c.add	s6,a4
	c.add	s4,a4
	add	s7,a4,a5
	c.bnez	s0,0000000023059FBE

l23059FBC:
	c.lw	s1,12(s0)

l23059FBE:
	c.mv	a2,s0
	c.add	a1,s6
	c.mv	a0,s10
	jal	ra,0000000023070C7C
	c.lw	s1,4(a1)
	c.mv	a2,s0
	c.mv	a0,s9
	c.add	a1,s0
	c.add	a1,s6
	jal	ra,0000000023070C7C
	addi	s8,sp,+00000050
	c.j	0000000023059F38

l23059FDC:
	lui	a4,00023089
	addi	a4,a4,-000000EC
	addi	a3,zero,+00000349
	c.j	0000000023059FA6

l23059FEA:
	addi	s1,s1,+00000090
	c.mv	a1,s5
	c.mv	a0,s1
	jal	ra,0000000023062C44
	c.mv	s0,a0
	c.beqz	a0,000000002305A00A

l23059FFA:
	lui	a4,00023089
	c.mv	a5,a0
	addi	a4,a4,-0000000C
	addi	a3,zero,+00000374
	c.j	0000000023059DBC

l2305A00A:
	lw	a2,s5,+00000004
	c.li	a3,00000001
	c.mv	a1,s6
	c.mv	a0,s7
	jal	ra,000000002306281A
	c.mv	s0,a0
	c.beqz	a0,000000002305A02C

l2305A01C:
	lui	a4,00023089
	c.mv	a5,a0
	addi	a4,a4,+0000000C
	addi	a3,zero,+0000037C
	c.j	0000000023059DBC

l2305A02C:
	lw	a2,s5,+00000004
	c.li	a3,00000000
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,000000002306281A
	c.mv	s0,a0
	c.beqz	a0,000000002305A04E

l2305A03E:
	lui	a4,00023089
	c.mv	a5,a0
	addi	a4,a4,+0000000C
	addi	a3,zero,+00000384
	c.j	0000000023059DBC

l2305A04E:
	lbu	a4,s5,+00000001
	c.li	a5,00000002
	bne	a4,a5,000000002305A0AC

l2305A058:
	c.li	a1,00000004
	c.mv	a0,s7
	jal	ra,0000000023062BDE
	c.mv	s4,a0
	c.beqz	a0,000000002305A082

l2305A064:
	lui	a4,00023089
	c.mv	a5,a0
	addi	a4,a4,+00000024
	addi	a3,zero,+0000038E
	addi	a2,s3,+00000378
	c.li	a1,00000001
	c.mv	a0,s2
	jal	ra,000000002306305C
	c.mv	s0,s4
	c.j	0000000023059C1A

l2305A082:
	c.mv	a0,s1
	c.li	a1,00000004
	jal	ra,0000000023062BDE
	c.mv	s1,a0
	c.beqz	a0,000000002305A0AC

l2305A08E:
	lui	a4,00023089
	c.mv	a5,a0
	addi	a4,a4,+00000024
	addi	a3,zero,+00000395
	addi	a2,s3,+00000378
	c.li	a1,00000001
	c.mv	a0,s2
	jal	ra,000000002306305C
	c.mv	s0,s1
	c.j	0000000023059C1A

l2305A0AC:
	c.addi4spn	a0,00000050
	addi	a1,zero,+00000100
	jal	ra,00000000230596EE
	lui	a4,00023089
	addi	a4,a4,+00000044
	addi	a3,zero,+000003BD
	addi	a2,s3,+00000378
	c.li	a1,00000002
	c.mv	a0,s2
	jal	ra,0000000023062FCC
	c.j	0000000023059C1A

;; mbedtls_ssl_flush_output: 2305A0D0
;;   Called from:
;;     2305B462 (in mbedtls_ssl_write_record)
;;     2305C072 (in mbedtls_ssl_close_notify)
;;     2305C5F4 (in mbedtls_ssl_write)
;;     2305D8E8 (in mbedtls_ssl_read)
;;     230689F2 (in mbedtls_ssl_handshake_client_step)
;;     2306A478 (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_flush_output proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	lui	a4,00023089
	c.lui	s1,00001000
	lui	s2,0002308A
	addi	a4,a4,+0000015C
	addi	a3,s1,-00000676
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.mv	s0,a0
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	jal	ra,0000000023062FCC
	c.lw	s0,16(a5)
	c.bnez	a5,000000002305A138

l2305A104:
	lui	a4,00023089
	addi	a3,s1,-00000671
	addi	a4,a4,+0000016C
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023062FCC
	addi	s1,s1,-00000100

l2305A122:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.addi16sp	00000030
	c.jr	ra

l2305A138:
	lw	a5,s0,+000000AC
	c.beqz	a5,000000002305A1B4

l2305A13E:
	c.mv	s3,s2
	lui	s4,00023089
	addi	s5,s1,-00000663
	lui	s6,00023089
	addi	s2,s1,-0000065D

l2305A150:
	lw	a6,s0,+000000AC
	c.lw	s0,0(a0)
	bne	a6,zero,000000002305A1D0

l2305A15A:
	c.li	a4,00000008

l2305A15C:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	bgeu	a5,a4,000000002305A182

l2305A168:
	lw	a3,s0,+00000090
	addi	a2,a4,-00000001
	c.add	a3,a2
	lbu	a5,a3,+00000000
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,a3,+00000000
	c.beqz	a5,000000002305A236

l2305A182:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002305A18E

l2305A18C:
	c.li	a6,00000002

l2305A18E:
	bne	a4,a6,000000002305A23C

l2305A192:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,+000001E8
	addi	a3,a3,-0000064E
	addi	a2,s3,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023062FCC
	addi	s1,s1,+00000480
	c.j	000000002305A122

l2305A1B4:
	lui	a4,00023089
	addi	a4,a4,+000001A8
	addi	a3,s1,-0000066A
	addi	a2,s2,+00000378

l2305A1C4:
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.li	s1,00000000
	c.j	000000002305A122

l2305A1D0:
	c.swsp	a6,00000084
	jal	ra,00000000230599A4
	lw	a5,s0,+000000A8
	c.lwsp	a2,00000008
	addi	a4,s4,+000001B8
	c.add	a5,a0
	c.mv	a3,s5
	addi	a2,s3,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lw	s0,0(a0)
	jal	ra,00000000230599A4
	lw	a2,s0,+000000AC
	lw	a1,s0,+000000A8
	c.lw	s0,16(a5)
	c.sub	a1,a2
	c.add	a0,a1
	lw	a1,s0,+00000094
	c.add	a1,a0
	c.lw	s0,28(a0)
	c.jalr	a5
	c.mv	s1,a0
	c.mv	a5,a0
	addi	a4,s6,+000001DC
	c.mv	a3,s2
	addi	a2,s3,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,000000002306305C
	bge	zero,s1,000000002305A122

l2305A228:
	lw	a5,s0,+000000AC
	sub	s1,a5,s1
	sw	s1,s0,+000000AC
	c.j	000000002305A150

l2305A236:
	andi	a4,a2,+000000FF
	c.j	000000002305A15C

l2305A23C:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,+000001A8
	addi	a3,a3,-0000064A
	addi	a2,s3,+00000378
	c.j	000000002305A1C4

;; mbedtls_ssl_recv_flight_completed: 2305A250
;;   Called from:
;;     2305D842 (in mbedtls_ssl_parse_finished)
;;     2306B298 (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_recv_flight_completed proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,48(a5)
	c.mv	s0,a0
	c.lw	a5,56(a0)
	jal	ra,0000000023059928
	c.lw	s0,48(a5)
	c.li	a1,00000000
	c.mv	a0,s0
	sw	zero,a5,+00000038
	c.lw	s0,48(a5)
	sw	zero,a5,+0000003C
	c.lw	s0,48(a5)
	c.lw	a5,32(a4)
	c.sw	a5,64(a4)
	jal	ra,00000000230599B4
	c.lw	s0,108(a3)
	c.li	a4,00000016
	c.lw	s0,48(a5)
	bne	a3,a4,000000002305A29E

l2305A284:
	c.lw	s0,100(a4)
	lbu	a3,a4,+00000000
	c.li	a4,00000014
	bne	a3,a4,000000002305A29E

l2305A290:
	c.li	a4,00000003
	sb	a4,a5,+00000034

l2305A296:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2305A29E:
	sb	zero,a5,+00000034
	c.j	000000002305A296

;; mbedtls_ssl_send_flight_completed: 2305A2A4
;;   Called from:
;;     2305C4CC (in mbedtls_ssl_write_finished)
;;     230690D0 (in mbedtls_ssl_handshake_client_step)
mbedtls_ssl_send_flight_completed proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,0(a4)
	c.lw	a0,48(a5)
	lui	a2,0002308A
	c.lw	a4,104(a4)
	addi	a3,zero,+00000087
	addi	a2,a2,+00000378
	c.sw	a5,48(a4)
	c.lw	a0,48(a5)
	lui	a4,0002308A
	addi	a4,a4,-00000254
	c.lw	a5,48(a5)
	c.li	a1,00000003
	c.mv	s0,a0
	jal	ra,0000000023062FCC
	c.lw	s0,48(a5)
	c.mv	a0,s0
	c.lw	a5,48(a1)
	jal	ra,00000000230599B4
	c.lw	s0,108(a3)
	c.li	a4,00000016
	c.lw	s0,48(a5)
	bne	a3,a4,000000002305A300

l2305A2E6:
	c.lw	s0,100(a4)
	lbu	a3,a4,+00000000
	c.li	a4,00000014
	bne	a3,a4,000000002305A300

l2305A2F2:
	c.li	a4,00000003

l2305A2F4:
	sb	a4,a5,+00000034
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2305A300:
	c.li	a4,00000002
	c.j	000000002305A2F4

;; mbedtls_ssl_update_handshake_status: 2305A304
;;   Called from:
;;     2305D140 (in mbedtls_ssl_read_record)
mbedtls_ssl_update_handshake_status proc
	c.lw	a0,4(a4)
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,00000010
	c.mv	s0,a0
	beq	a4,a5,000000002305A324

l2305A314:
	c.lw	a0,48(a5)
	c.beqz	a5,000000002305A324

l2305A318:
	lw	a5,a5,+000000C4
	lw	a2,a0,+00000080
	c.lw	a0,100(a1)
	c.jalr	a5

l2305A324:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002305A338

l2305A32E:
	c.lw	s0,48(a5)
	c.beqz	a5,000000002305A338

l2305A332:
	c.lw	a5,32(a4)
	c.addi	a4,00000001
	c.sw	a5,32(a4)

l2305A338:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_ssl_optimize_checksum: 2305A340
mbedtls_ssl_optimize_checksum proc
	lbu	a3,a1,+00000009
	c.li	a4,00000007
	beq	a3,a4,000000002305A35A

l2305A34A:
	c.lw	a0,48(a4)
	lui	a5,0002305A
	addi	a5,a5,-00000660
	sw	a5,a4,+000000C4
	c.jr	ra

l2305A35A:
	lui	a4,00023089
	c.lui	a3,00001000
	lui	a2,0002308A
	addi	a4,a4,-000000EC
	addi	a3,a3,+0000022E
	addi	a2,a2,+00000378
	c.li	a1,00000001
	jal	zero,0000000023062FCC

;; mbedtls_ssl_reset_checksum: 2305A376
mbedtls_ssl_reset_checksum proc
	c.lw	a0,48(a0)
	c.li	a1,00000000
	addi	a0,a0,+00000050
	jal	zero,000000002305872C

;; mbedtls_ssl_session_init: 2305A382
;;   Called from:
;;     2305A908 (in ssl_handshake_init)
;;     2306AF48 (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_session_init proc
	addi	a2,zero,+00000074
	c.li	a1,00000000
	jal	zero,0000000023070EB8

;; mbedtls_ssl_init: 2305A38C
;;   Called from:
;;     230504C8 (in iot_tls_connect)
mbedtls_ssl_init proc
	addi	a2,zero,+000000C0
	c.li	a1,00000000
	jal	zero,0000000023070EB8

;; mbedtls_ssl_conf_authmode: 2305A396
;;   Called from:
;;     23050782 (in iot_tls_connect)
mbedtls_ssl_conf_authmode proc
	c.andi	a1,00000003
	slli	a5,a1,00000002
	lhu	a1,a0,+00000074
	c.andi	a1,FFFFFFF3
	c.or	a1,a5
	sh	a1,a0,+00000074
	c.jr	ra

;; mbedtls_ssl_conf_verify: 2305A3AA
;;   Called from:
;;     23050772 (in iot_tls_connect)
mbedtls_ssl_conf_verify proc
	c.sw	a0,52(a1)
	c.sw	a0,56(a2)
	c.jr	ra

;; mbedtls_ssl_conf_rng: 2305A3B0
;;   Called from:
;;     23050792 (in iot_tls_connect)
mbedtls_ssl_conf_rng proc
	c.sw	a0,24(a1)
	c.sw	a0,28(a2)
	c.jr	ra

;; mbedtls_ssl_set_bio: 2305A3B6
;;   Called from:
;;     23050844 (in iot_tls_connect)
mbedtls_ssl_set_bio proc
	c.sw	a0,28(a1)
	c.sw	a0,16(a2)
	c.sw	a0,20(a3)
	c.sw	a0,24(a4)
	c.jr	ra

;; mbedtls_ssl_conf_read_timeout: 2305A3C0
;;   Called from:
;;     230507BC (in iot_tls_connect)
;;     23050B5C (in iot_tls_read)
;;     23050B70 (in iot_tls_read)
mbedtls_ssl_conf_read_timeout proc
	c.sw	a0,100(a1)
	c.jr	ra

;; mbedtls_ssl_conf_own_cert: 2305A3C4
;;   Called from:
;;     230507A6 (in iot_tls_connect)
mbedtls_ssl_conf_own_cert proc
	addi	a0,a0,+0000004C
	jal	zero,0000000023059950

;; mbedtls_ssl_conf_ca_chain: 2305A3CC
;;   Called from:
;;     2305079C (in iot_tls_connect)
mbedtls_ssl_conf_ca_chain proc
	c.sw	a0,80(a1)
	c.sw	a0,84(a2)
	c.jr	ra

;; mbedtls_ssl_set_hostname: 2305A3D2
;;   Called from:
;;     2305080C (in iot_tls_connect)
mbedtls_ssl_set_hostname proc
	c.bnez	a1,000000002305A3EE

l2305A3D4:
	c.lui	a0,FFFF9000
	addi	a0,a0,-00000100
	c.jr	ra

l2305A3DC:
	c.lui	a0,FFFF9000
	addi	a0,a0,-00000100

l2305A3E2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2305A3EE:
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.mv	s2,a0
	c.mv	a0,a1
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,000000002307132C
	addi	a5,zero,+000000FF
	c.mv	s1,a0
	bltu	a5,a0,000000002305A3DC

l2305A40C:
	addi	a1,a0,+00000001
	c.li	a0,00000001
	jal	ra,000000002305F67C
	sw	a0,s2,+000000B4
	c.beqz	a0,000000002305A432

l2305A41C:
	c.mv	a2,s1
	c.mv	a1,s0
	jal	ra,0000000023070C7C
	lw	a5,s2,+000000B4
	c.li	a0,00000000
	c.add	s1,a5
	sb	zero,s1,+00000000
	c.j	000000002305A3E2

l2305A432:
	c.lui	a0,FFFF8000
	addi	a0,a0,+00000100
	c.j	000000002305A3E2

;; mbedtls_ssl_conf_alpn_protocols: 2305A43A
;;   Called from:
;;     230507DC (in iot_tls_connect)
mbedtls_ssl_conf_alpn_protocols proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.mv	s2,a0
	c.mv	s0,a1
	c.li	s1,00000000
	addi	s3,zero,+000000FE
	c.lui	s4,00010000

l2305A454:
	c.lw	s0,0(a0)
	c.bnez	a0,000000002305A46C

l2305A458:
	sw	a1,s2,+00000060

l2305A45C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2305A46C:
	c.swsp	a1,00000084
	jal	ra,000000002307132C
	c.add	s1,a0
	c.addi	a0,FFFFFFFF
	bltu	s3,a0,000000002305A484

l2305A47A:
	bgeu	s1,s4,000000002305A484

l2305A47E:
	c.addi	s0,00000004
	c.lwsp	a2,00000064
	c.j	000000002305A454

l2305A484:
	c.lui	a0,FFFF9000
	addi	a0,a0,-00000100
	c.j	000000002305A45C

;; mbedtls_ssl_get_verify_result: 2305A48C
;;   Called from:
;;     230508C6 (in iot_tls_connect)
mbedtls_ssl_get_verify_result proc
	c.lw	a0,40(a5)
	c.beqz	a5,000000002305A494

l2305A490:
	c.lw	a5,96(a0)
	c.j	000000002305A49A

l2305A494:
	c.lw	a0,44(a5)
	c.li	a0,FFFFFFFF
	c.bnez	a5,000000002305A490

l2305A49A:
	c.jr	ra

;; mbedtls_ssl_get_ciphersuite: 2305A49C
;;   Called from:
;;     23050884 (in iot_tls_connect)
mbedtls_ssl_get_ciphersuite proc
	c.beqz	a0,000000002305A4A8

l2305A49E:
	c.lw	a0,40(a0)
	c.beqz	a0,000000002305A4A8

l2305A4A2:
	c.lw	a0,0(a0)
	jal	zero,000000002306893A

l2305A4A8:
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_ssl_get_version: 2305A4AC
;;   Called from:
;;     2305087C (in iot_tls_connect)
mbedtls_ssl_get_version proc
	c.lw	a0,0(a4)
	c.lw	a0,12(a5)
	lhu	a4,a4,+00000074
	c.andi	a4,00000002
	c.beqz	a4,000000002305A4CE

l2305A4B8:
	c.li	a4,00000002
	beq	a5,a4,000000002305A4E4

l2305A4BE:
	c.li	a4,00000003
	beq	a5,a4,000000002305A4EE

l2305A4C4:
	lui	a0,00023089
	addi	a0,a0,+00000228
	c.jr	ra

l2305A4CE:
	c.li	a4,00000003
	bltu	a4,a5,000000002305A4F8

l2305A4D4:
	lui	a4,00023089
	addi	a4,a4,-000001B8
	c.slli	a5,02
	c.add	a5,a4
	c.lw	a5,0(a0)
	c.jr	ra

l2305A4E4:
	lui	a0,00023089
	addi	a0,a0,+00000238
	c.jr	ra

l2305A4EE:
	lui	a0,00023089
	addi	a0,a0,+0000021C
	c.jr	ra

l2305A4F8:
	lui	a0,00023089
	addi	a0,a0,+00000244
	c.jr	ra

;; mbedtls_ssl_get_record_expansion: 2305A502
;;   Called from:
;;     2305089A (in iot_tls_connect)
mbedtls_ssl_get_record_expansion proc
	c.lw	a0,56(a4)
	c.bnez	a4,000000002305A50C

l2305A506:
	c.lw	a0,0(a0)
	jal	zero,00000000230599A4

l2305A50C:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a4,80(a3)
	c.beqz	a3,000000002305A542

l2305A516:
	lbu	a5,a3,+00000001
	c.li	a2,00000002
	beq	a5,a2,000000002305A53A

l2305A520:
	bltu	a5,a2,000000002305A542

l2305A524:
	c.addi	a5,FFFFFFFA
	andi	a5,a5,+000000FF
	bltu	a2,a5,000000002305A542

l2305A52E:
	c.lw	a4,8(s0)

l2305A530:
	c.lw	a0,0(a0)
	jal	ra,00000000230599A4
	c.add	a0,s0
	c.j	000000002305A564

l2305A53A:
	c.lw	a4,20(s0)
	c.lw	a3,20(a5)
	c.add	s0,a5
	c.j	000000002305A530

l2305A542:
	lui	a4,00023089
	c.lui	a3,00002000
	lui	a2,0002308A
	addi	a4,a4,-000000EC
	addi	a3,a3,-00000731
	addi	a2,a2,+00000378
	c.li	a1,00000001
	jal	ra,0000000023062FCC
	c.lui	a0,FFFF9000
	addi	a0,a0,+00000400

l2305A564:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_ssl_get_max_frag_len: 2305A56C
;;   Called from:
;;     2305C598 (in mbedtls_ssl_write)
mbedtls_ssl_get_max_frag_len proc
	c.lw	a0,0(a5)
	lui	a4,0002308A
	c.lw	a0,36(a3)
	c.lw	a5,116(a5)
	addi	a4,a4,+00000204
	c.srli	a5,00000004
	c.andi	a5,0000001C
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.beqz	a3,000000002305A594

l2305A584:
	lbu	a3,a3,+00000070
	c.slli	a3,02
	c.add	a4,a3
	c.lw	a4,0(a4)
	bgeu	a4,a5,000000002305A594

l2305A592:
	c.mv	a5,a4

l2305A594:
	c.mv	a0,a5
	c.jr	ra

;; mbedtls_ssl_get_peer_cert: 2305A598
;;   Called from:
;;     23050904 (in iot_tls_connect)
;;     23050918 (in iot_tls_connect)
mbedtls_ssl_get_peer_cert proc
	c.beqz	a0,000000002305A5A0

l2305A59A:
	c.lw	a0,40(a0)
	c.beqz	a0,000000002305A5A0

l2305A59E:
	c.lw	a0,92(a0)

l2305A5A0:
	c.jr	ra

;; mbedtls_ssl_handshake_step: 2305A5A2
;;   Called from:
;;     2305A628 (in mbedtls_ssl_handshake)
mbedtls_ssl_handshake_step proc
	c.beqz	a0,000000002305A5DA

l2305A5A4:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,0(a4)
	c.mv	s0,a0
	c.beqz	a4,000000002305A5E2

l2305A5B0:
	lhu	a5,a4,+00000074
	c.andi	a5,00000001
	c.beqz	a5,000000002305A5C4

l2305A5B8:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002306A420

l2305A5C4:
	jal	ra,00000000230689A8
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000001
	c.bnez	a5,000000002305A5B8

l2305A5D2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2305A5DA:
	c.lui	a0,FFFF9000
	addi	a0,a0,-00000100
	c.jr	ra

l2305A5E2:
	c.lui	a0,FFFF9000
	addi	a0,a0,-00000100
	c.j	000000002305A5D2

;; mbedtls_ssl_handshake: 2305A5EA
;;   Called from:
;;     23050870 (in iot_tls_connect)
;;     2305C55E (in mbedtls_ssl_write)
;;     2305D8B6 (in mbedtls_ssl_read)
mbedtls_ssl_handshake proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.beqz	a0,000000002305A65A

l2305A5F8:
	c.lw	a0,0(a5)
	c.mv	s1,a0
	c.beqz	a5,000000002305A65A

l2305A5FE:
	lui	a4,00023089
	c.lui	a3,00002000
	lui	s2,0002308A
	addi	a4,a4,+000002C4
	addi	a3,a3,-000006DA
	addi	a2,s2,+00000378
	c.li	a1,00000002
	jal	ra,0000000023062FCC
	c.li	s3,00000010

l2305A61C:
	c.lw	s1,4(a5)
	bne	a5,s3,000000002305A626

l2305A622:
	c.li	s0,00000000
	c.j	000000002305A630

l2305A626:
	c.mv	a0,s1
	jal	ra,000000002305A5A2
	c.mv	s0,a0
	c.beqz	a0,000000002305A61C

l2305A630:
	lui	a4,00023089
	c.lui	a3,00002000
	addi	a4,a4,+000002D4
	addi	a3,a3,-000006D0
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,0000000023062FCC

l2305A64A:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2305A65A:
	c.lui	s0,FFFF9000
	addi	s0,s0,-00000100
	c.j	000000002305A64A

;; mbedtls_ssl_transform_free: 2305A662
;;   Called from:
;;     2305A720 (in ssl_handshake_wrapup_free_hs_transform)
;;     2305A86A (in ssl_handshake_init)
;;     2305AAD8 (in mbedtls_ssl_free)
;;     2305AAEC (in mbedtls_ssl_free)
mbedtls_ssl_transform_free proc
	c.beqz	a0,000000002305A69C

l2305A664:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	addi	a0,a0,+00000050
	c.swsp	ra,00000084
	jal	ra,00000000230627EA
	addi	a0,s0,+00000090
	jal	ra,00000000230627EA
	addi	a0,s0,+00000038
	jal	ra,0000000023065720
	addi	a0,s0,+00000044
	jal	ra,0000000023065720
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	addi	a1,zero,+000000D0
	c.addi	sp,00000010
	jal	zero,00000000230596EE

l2305A69C:
	c.jr	ra

;; mbedtls_ssl_handshake_free: 2305A69E
;;   Called from:
;;     2305A70E (in ssl_handshake_wrapup_free_hs_transform)
;;     2305A87A (in ssl_handshake_init)
;;     2305AAE6 (in mbedtls_ssl_free)
mbedtls_ssl_handshake_free proc
	c.beqz	a0,000000002305A6E4

l2305A6A0:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	addi	a0,a0,+00000050
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	jal	ra,0000000023058706
	c.lw	s0,16(a0)

l2305A6B4:
	c.beqz	a0,000000002305A6C0

l2305A6B6:
	c.lw	a0,8(s1)
	jal	ra,0000000023032272
	c.mv	a0,s1
	c.j	000000002305A6B4

l2305A6C0:
	c.lw	s0,36(a0)
	jal	ra,0000000023032272
	c.lw	s0,44(a0)
	jal	ra,0000000023032272
	c.lw	s0,56(a0)
	jal	ra,0000000023059928
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	addi	a1,zero,+0000015C
	c.addi	sp,00000010
	jal	zero,00000000230596EE

l2305A6E4:
	c.jr	ra

;; ssl_handshake_wrapup_free_hs_transform: 2305A6E6
;;   Called from:
;;     2305A854 (in mbedtls_ssl_handshake_wrapup)
;;     2305D09E (in mbedtls_ssl_read_record_layer)
ssl_handshake_wrapup_free_hs_transform proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	a4,0002308A
	c.lui	a3,00001000
	lui	s1,0002308A
	addi	a4,a4,+00000310
	addi	a3,a3,+000003AF
	addi	a2,s1,+00000378
	c.li	a1,00000003
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023062FCC
	c.lw	s0,48(a0)
	jal	ra,000000002305A69E
	c.lw	s0,48(a0)
	jal	ra,0000000023032272
	c.lw	s0,60(a0)
	sw	zero,s0,+00000030
	c.beqz	a0,000000002305A72A

l2305A720:
	jal	ra,000000002305A662
	c.lw	s0,60(a0)
	jal	ra,0000000023032272

l2305A72A:
	c.lw	s0,64(a5)
	c.mv	a0,s0
	sw	zero,s0,+00000040
	c.sw	s0,60(a5)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	addi	a2,s1,+00000378
	c.lwsp	tp,00000024
	lui	a4,0002308A
	c.lui	a3,00001000
	addi	a4,a4,+00000330
	addi	a3,a3,+000003C3
	c.li	a1,00000003
	c.addi	sp,00000010
	jal	zero,0000000023062FCC

;; mbedtls_ssl_session_free: 2305A754
;;   Called from:
;;     2305A7B6 (in mbedtls_ssl_handshake_wrapup)
;;     2305A872 (in ssl_handshake_init)
;;     2305AAF2 (in mbedtls_ssl_free)
;;     2305AB0C (in mbedtls_ssl_free)
;;     2306AF9C (in mbedtls_ssl_handshake_server_step)
;;     2306B000 (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_session_free proc
	c.beqz	a0,000000002305A782

l2305A756:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,92(a0)
	c.beqz	a0,000000002305A76C

l2305A762:
	jal	ra,000000002305EAA6
	c.lw	s0,92(a0)
	jal	ra,0000000023032272

l2305A76C:
	c.lw	s0,100(a0)
	jal	ra,0000000023032272
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	addi	a1,zero,+00000074
	c.addi	sp,00000010
	jal	zero,00000000230596EE

l2305A782:
	c.jr	ra

;; mbedtls_ssl_handshake_wrapup: 2305A784
mbedtls_ssl_handshake_wrapup proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	c.lw	a0,48(a5)
	lui	a4,00023089
	c.lui	a3,00001000
	lui	s1,0002308A
	addi	a4,a4,+000002E4
	addi	a3,a3,+000003CA
	addi	a2,s1,+00000378
	c.li	a1,00000003
	c.mv	s0,a0
	lw	s2,a5,+00000148
	jal	ra,0000000023062FCC
	c.lw	s0,40(a0)
	c.beqz	a0,000000002305A7C0

l2305A7B6:
	jal	ra,000000002305A754
	c.lw	s0,40(a0)
	jal	ra,0000000023032272

l2305A7C0:
	c.lw	s0,44(a1)
	c.lw	s0,0(a4)
	sw	zero,s0,+0000002C
	c.sw	s0,40(a1)
	c.lw	a4,36(a5)
	c.beqz	a5,000000002305A7F6

l2305A7CE:
	c.lw	a1,8(a3)
	c.beqz	a3,000000002305A7F6

l2305A7D2:
	bne	s2,zero,000000002305A7F6

l2305A7D6:
	c.lw	a4,40(a0)
	c.jalr	a5
	c.beqz	a0,000000002305A7F6

l2305A7DC:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,+000002F8
	addi	a3,a3,+000003ED
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023062FCC

l2305A7F6:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002305A852

l2305A800:
	c.lw	s0,48(a5)
	c.lw	a5,56(a5)
	c.beqz	a5,000000002305A852

l2305A806:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230599B4
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,+00000314
	addi	a3,a3,+000003F9
	addi	a2,s1,+00000378
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,0000000023062FCC

l2305A828:
	c.lw	s0,4(a5)
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.addi	a5,00000001
	c.sw	s0,4(a5)
	c.lwsp	s0,00000004
	c.lwsp	zero,00000048
	addi	a2,s1,+00000378
	c.lwsp	tp,00000024
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,+0000033C
	addi	a3,a3,+00000401
	c.li	a1,00000003
	c.addi	sp,00000010
	jal	zero,0000000023062FCC

l2305A852:
	c.mv	a0,s0
	jal	ra,000000002305A6E6
	c.j	000000002305A828

;; ssl_handshake_init: 2305A85A
;;   Called from:
;;     2305AA1A (in mbedtls_ssl_setup)
ssl_handshake_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s0,a0
	c.lw	a0,64(a0)
	c.beqz	a0,000000002305A86E

l2305A86A:
	jal	ra,000000002305A662

l2305A86E:
	c.lw	s0,44(a0)
	c.beqz	a0,000000002305A876

l2305A872:
	jal	ra,000000002305A754

l2305A876:
	c.lw	s0,48(a0)
	c.beqz	a0,000000002305A87E

l2305A87A:
	jal	ra,000000002305A69E

l2305A87E:
	c.lw	s0,64(a5)
	c.bnez	a5,000000002305A88E

l2305A882:
	addi	a1,zero,+000000D0
	c.li	a0,00000001
	jal	ra,000000002305F67C
	c.sw	s0,64(a0)

l2305A88E:
	c.lw	s0,44(a5)
	c.bnez	a5,000000002305A89E

l2305A892:
	addi	a1,zero,+00000074
	c.li	a0,00000001
	jal	ra,000000002305F67C
	c.sw	s0,44(a0)

l2305A89E:
	c.lw	s0,48(a5)
	c.beqz	a5,000000002305A8F4

l2305A8A2:
	c.lw	s0,64(a5)
	c.bnez	a5,000000002305A904

l2305A8A6:
	lui	a4,0002308A
	c.lui	a3,00001000
	lui	a2,0002308A
	addi	a4,a4,+000002EC
	addi	a3,a3,+0000052C
	addi	a2,a2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lw	s0,48(a0)
	jal	ra,0000000023032272
	c.lw	s0,64(a0)
	jal	ra,0000000023032272
	c.lw	s0,44(a0)
	jal	ra,0000000023032272
	c.lui	a0,FFFF8000
	sw	zero,s0,+00000030
	sw	zero,s0,+00000040
	sw	zero,s0,+0000002C
	addi	a0,a0,+00000100

l2305A8E8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2305A8F4:
	addi	a1,zero,+0000015C
	c.li	a0,00000001
	jal	ra,000000002305F67C
	c.sw	s0,48(a0)
	c.bnez	a0,000000002305A8A2

l2305A902:
	c.j	000000002305A8A6

l2305A904:
	c.lw	s0,44(a0)
	c.beqz	a0,000000002305A8A6

l2305A908:
	jal	ra,000000002305A382
	c.lw	s0,64(s1)
	addi	a2,zero,+000000D0
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023070EB8
	addi	a0,s1,+00000050
	jal	ra,00000000230627E0
	addi	a0,s1,+00000090
	jal	ra,00000000230627E0
	addi	a0,s1,+00000038
	jal	ra,0000000023065718
	addi	a0,s1,+00000044
	jal	ra,0000000023065718
	c.lw	s0,48(s1)
	addi	a2,zero,+0000015C
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023070EB8
	addi	s2,s1,+00000050
	c.mv	a0,s2
	jal	ra,00000000230586FC
	c.mv	a0,s2
	c.li	a1,00000000
	jal	ra,000000002305872C
	lui	a5,0002305A
	addi	a5,a5,-0000066A
	sw	a5,s1,+000000C4
	c.li	a3,00000002
	c.li	a5,00000003
	c.sw	s1,0(a3)
	c.sw	s1,12(a5)
	c.lw	s0,0(a5)
	c.li	a0,00000000
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002305A8E8

l2305A97A:
	c.lw	s0,48(a5)
	c.lw	s0,56(a4)
	c.sw	a5,68(a4)
	c.lw	s0,0(a5)
	c.lw	s0,48(a4)
	lhu	a5,a5,+00000074
	c.andi	a5,00000001
	c.bnez	a5,000000002305A99C

l2305A98C:
	sb	zero,a4,+00000034

l2305A990:
	c.mv	a0,s0
	c.li	a1,00000000
	jal	ra,00000000230599B4
	c.li	a0,00000000
	c.j	000000002305A8E8

l2305A99C:
	sb	a3,a4,+00000034
	c.j	000000002305A990

;; mbedtls_ssl_setup: 2305A9A2
;;   Called from:
;;     230507F4 (in iot_tls_connect)
mbedtls_ssl_setup proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.lui	s2,00004000
	c.sw	a0,0(a1)
	c.mv	s0,a0
	c.mv	s1,a1
	c.li	a0,00000001
	addi	a1,s2,+0000013D
	jal	ra,000000002305F67C
	c.sw	s0,80(a0)
	c.beqz	a0,000000002305AA3C

l2305A9C2:
	addi	a1,s2,+0000013D
	c.li	a0,00000001
	jal	ra,000000002305F67C
	sw	a0,s0,+0000008C
	c.beqz	a0,000000002305AA3C

l2305A9D2:
	lhu	a2,s1,+00000074
	c.lw	s0,80(a5)
	addi	a6,a0,+0000000B
	c.andi	a2,00000002
	addi	a3,a0,+0000000D
	addi	a1,a5,+0000000B
	addi	a4,a5,+0000000D
	c.beqz	a2,000000002305AA1E

l2305A9EC:
	sw	a0,s0,+00000094
	c.sw	s0,88(a5)
	c.addi	a0,00000003
	c.addi	a5,00000003
	sw	a0,s0,+00000090
	sw	a6,s0,+00000098
	sw	a3,s0,+0000009C
	sw	a3,s0,+000000A0
	c.sw	s0,84(a5)

l2305AA08:
	c.sw	s0,92(a1)
	c.sw	s0,96(a4)
	c.sw	s0,100(a4)
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002305A85A

l2305AA1E:
	sw	a0,s0,+00000090
	c.sw	s0,84(a5)
	c.addi	a0,00000008
	c.addi	a5,00000008
	sw	a0,s0,+00000094
	sw	a6,s0,+00000098
	sw	a3,s0,+0000009C
	sw	a3,s0,+000000A0
	c.sw	s0,88(a5)
	c.j	000000002305AA08

l2305AA3C:
	c.lui	a5,00004000
	lui	a4,0002308A
	c.lui	a3,00001000
	lui	a2,0002308A
	c.mv	a0,s0
	addi	a5,a5,+0000013D
	addi	a4,a4,-0000022C
	addi	a3,a3,+00000585
	addi	a2,a2,+00000378
	c.li	a1,00000001
	jal	ra,0000000023062FCC
	c.lw	s0,80(a0)
	jal	ra,0000000023032272
	c.lwsp	a2,00000020
	sw	zero,s0,+00000050
	c.lwsp	s0,00000004
	c.lui	a0,FFFF8000
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	addi	a0,a0,+00000100
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_ssl_free: 2305AA7C
;;   Called from:
;;     23050BFE (in iot_tls_destroy)
mbedtls_ssl_free proc
	beq	a0,zero,000000002305AB62

l2305AA80:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	a4,00023089
	c.lui	a3,00002000
	lui	s1,0002308A
	addi	a4,a4,+0000020C
	addi	a3,a3,-000003F6
	addi	a2,s1,+00000378
	c.li	a1,00000002
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.swsp	s2,00000000
	jal	ra,0000000023062FCC
	lw	a0,s0,+0000008C
	c.beqz	a0,000000002305AAC0

l2305AAAE:
	c.lui	a1,00004000
	addi	a1,a1,+0000013D
	jal	ra,00000000230596EE
	lw	a0,s0,+0000008C
	jal	ra,0000000023032272

l2305AAC0:
	c.lw	s0,80(a0)
	c.beqz	a0,000000002305AAD4

l2305AAC4:
	c.lui	a1,00004000
	addi	a1,a1,+0000013D
	jal	ra,00000000230596EE
	c.lw	s0,80(a0)
	jal	ra,0000000023032272

l2305AAD4:
	c.lw	s0,60(a0)
	c.beqz	a0,000000002305AAE2

l2305AAD8:
	jal	ra,000000002305A662
	c.lw	s0,60(a0)
	jal	ra,0000000023032272

l2305AAE2:
	c.lw	s0,48(a0)
	c.beqz	a0,000000002305AB08

l2305AAE6:
	jal	ra,000000002305A69E
	c.lw	s0,64(a0)
	jal	ra,000000002305A662
	c.lw	s0,44(a0)
	jal	ra,000000002305A754
	c.lw	s0,48(a0)
	jal	ra,0000000023032272
	c.lw	s0,64(a0)
	jal	ra,0000000023032272
	c.lw	s0,44(a0)
	jal	ra,0000000023032272

l2305AB08:
	c.lw	s0,40(a0)
	c.beqz	a0,000000002305AB16

l2305AB0C:
	jal	ra,000000002305A754
	c.lw	s0,40(a0)
	jal	ra,0000000023032272

l2305AB16:
	lw	s2,s0,+000000B4
	beq	s2,zero,000000002305AB34

l2305AB1E:
	c.mv	a0,s2
	jal	ra,000000002307132C
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,00000000230596EE
	lw	a0,s0,+000000B4
	jal	ra,0000000023032272

l2305AB34:
	lui	a4,00023089
	c.lui	a3,00002000
	c.mv	a0,s0
	addi	a2,s1,+00000378
	c.li	a1,00000002
	addi	a4,a4,+00000214
	addi	a3,a3,-000003B5
	jal	ra,0000000023062FCC
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	addi	a1,zero,+000000C0
	c.addi	sp,00000010
	jal	zero,00000000230596EE

l2305AB62:
	c.jr	ra

;; mbedtls_ssl_config_init: 2305AB64
;;   Called from:
;;     230504D2 (in iot_tls_connect)
mbedtls_ssl_config_init proc
	addi	a2,zero,+00000078
	c.li	a1,00000000
	jal	zero,0000000023070EB8

;; mbedtls_ssl_config_defaults: 2305AB6E
;;   Called from:
;;     23050752 (in iot_tls_connect)
mbedtls_ssl_config_defaults proc
	lhu	a5,a0,+00000074
	andi	a4,a1,+00000001
	c.andi	a5,FFFFFFFE
	c.or	a5,a4
	andi	a4,a2,+00000001
	c.slli	a4,01
	c.andi	a5,FFFFFFFD
	c.or	a5,a4
	sh	a5,a0,+00000074
	c.bnez	a1,000000002305AB96

l2305AB8A:
	andi	a5,a5,-0000020D
	ori	a5,a5,+00000208
	sh	a5,a0,+00000074

l2305AB96:
	addi	a5,zero,+000003E8
	c.sw	a0,104(a5)
	c.lui	a5,0000F000
	addi	a5,a5,-000005A0
	c.sw	a0,108(a5)
	c.li	a4,00000002
	lui	a5,00003030
	addi	a5,a5,+00000303
	bne	a3,a4,000000002305ABE6

l2305ABB2:
	c.sw	a0,112(a5)
	lui	a5,0004200D
	addi	a5,a5,+000004A8
	c.sw	a0,12(a5)
	c.sw	a0,8(a5)
	c.sw	a0,4(a5)
	c.sw	a0,0(a5)
	lui	a5,0002308A
	addi	a5,a5,+000006DC
	c.sw	a0,72(a5)
	lui	a5,0004200D
	addi	a5,a5,+000004B4
	c.sw	a0,88(a5)
	lui	a5,0004200E
	addi	a5,a5,-00000688
	c.sw	a0,92(a5)
	c.li	a0,00000000
	c.jr	ra

l2305ABE6:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.sw	a0,112(a5)
	c.li	a5,00000001
	bne	a2,a5,000000002305ABF8

l2305ABF4:
	sb	a4,a0,+00000073

l2305ABF8:
	c.mv	s0,a0
	jal	ra,00000000230688C8
	lui	a5,0002308A
	addi	a5,a5,+000006CC
	c.sw	s0,72(a5)
	lui	a5,0004200D
	addi	a5,a5,+00000498
	c.sw	s0,12(a0)
	c.sw	s0,8(a0)
	c.sw	s0,4(a0)
	c.sw	s0,0(a0)
	c.sw	s0,88(a5)
	jal	ra,0000000023063E46
	c.sw	s0,92(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_ssl_config_free: 2305AC2A
;;   Called from:
;;     23050C06 (in iot_tls_destroy)
mbedtls_ssl_config_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.lw	a0,76(a0)

l2305AC36:
	c.bnez	a0,000000002305AC4A

l2305AC38:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	addi	a1,zero,+00000078
	c.addi	sp,00000010
	jal	zero,00000000230596EE

l2305AC4A:
	c.lw	a0,8(s1)
	jal	ra,0000000023032272
	c.mv	a0,s1
	c.j	000000002305AC36

;; mbedtls_ssl_sig_from_pk: 2305AC54
mbedtls_ssl_sig_from_pk proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000001
	c.swsp	ra,00000084
	jal	ra,0000000023056566
	c.lwsp	a2,00000020
	sltu	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_ssl_pk_alg_from_sig: 2305AC68
mbedtls_ssl_pk_alg_from_sig proc
	c.addi	a0,FFFFFFFF
	sltiu	a0,a0,+00000001
	c.jr	ra

;; mbedtls_ssl_md_alg_from_hash: 2305AC70
;;   Called from:
;;     2306AEB2 (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_md_alg_from_hash proc
	c.addi	a0,FFFFFFFF
	andi	a5,a0,+000000FF
	c.li	a4,00000003
	bltu	a4,a5,000000002305AC8C

l2305AC7C:
	lui	a0,0002308E
	addi	a0,a0,-00000148
	c.add	a0,a5
	lbu	a0,a0,+00000000
	c.jr	ra

l2305AC8C:
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_ssl_hash_from_md_alg: 2305AC90
;;   Called from:
;;     230690FC (in mbedtls_ssl_handshake_client_step)
mbedtls_ssl_hash_from_md_alg proc
	c.addi	a0,FFFFFFFD
	c.li	a5,00000003
	bltu	a5,a0,000000002305ACA8

l2305AC98:
	lui	a5,0002308E
	addi	a5,a5,-00000144
	c.add	a5,a0
	lbu	a0,a5,+00000000
	c.jr	ra

l2305ACA8:
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_ssl_check_curve: 2305ACAC
;;   Called from:
;;     2305D478 (in mbedtls_ssl_parse_certificate)
mbedtls_ssl_check_curve proc
	c.lw	a0,0(a5)
	c.lw	a5,92(a5)
	c.bnez	a5,000000002305ACBC

l2305ACB2:
	c.li	a0,FFFFFFFF
	c.jr	ra

l2305ACB6:
	beq	a4,a1,000000002305ACC4

l2305ACBA:
	c.addi	a5,00000001

l2305ACBC:
	lbu	a4,a5,+00000000
	c.bnez	a4,000000002305ACB6

l2305ACC2:
	c.j	000000002305ACB2

l2305ACC4:
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_ssl_check_cert_usage: 2305ACC8
;;   Called from:
;;     2305D4B6 (in mbedtls_ssl_parse_certificate)
;;     2306B2C2 (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_check_cert_usage proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.li	a4,00000001
	c.mv	a5,a1
	c.mv	s2,a0
	c.mv	s1,a3
	addi	a1,zero,+00000080
	bne	a2,a4,000000002305AD0C

l2305ACE2:
	lbu	a5,a5,+0000000A
	c.li	a4,0000000A
	c.li	a1,00000000
	bltu	a4,a5,000000002305AD0C

l2305ACEE:
	sll	a5,a2,a5
	andi	a4,a5,+00000082
	addi	a1,zero,+00000020
	c.bnez	a4,000000002305AD0C

l2305ACFC:
	andi	a4,a5,+00000600
	c.li	a1,00000008
	c.bnez	a4,000000002305AD0C

l2305AD04:
	c.andi	a5,0000001C
	sltu	a1,zero,a5
	c.slli	a1,07

l2305AD0C:
	c.mv	a0,s2
	c.swsp	a2,00000084
	jal	ra,000000002305E396
	c.mv	s0,a0
	c.lwsp	a2,00000084
	c.beqz	a0,000000002305AD28

l2305AD1A:
	c.lw	s1,0(a5)
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	c.or	a5,a4
	c.sw	s1,0(a5)
	c.li	s0,FFFFFFFF

l2305AD28:
	c.li	a5,00000001
	beq	a2,a5,000000002305AD58

l2305AD2E:
	lui	a1,00023089
	addi	a1,a1,-0000019C

l2305AD36:
	c.li	a2,00000008
	c.mv	a0,s2
	jal	ra,000000002305E842
	c.beqz	a0,000000002305AD4A

l2305AD40:
	c.lw	s1,0(a5)
	c.lui	a4,00001000
	c.li	s0,FFFFFFFF
	c.or	a5,a4
	c.sw	s1,0(a5)

l2305AD4A:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2305AD58:
	lui	a1,00023089
	addi	a1,a1,-000001A8
	c.j	000000002305AD36

;; mbedtls_ssl_write_version: 2305AD62
;;   Called from:
;;     2305AFB6 (in mbedtls_ssl_write_record)
;;     2305B134 (in mbedtls_ssl_write_record)
;;     2305CB0E (in mbedtls_ssl_read_record_layer)
;;     23068B0A (in mbedtls_ssl_handshake_client_step)
mbedtls_ssl_write_version proc
	c.li	a5,00000001
	andi	a0,a0,+000000FF
	bne	a2,a5,000000002305AD88

l2305AD6C:
	c.li	a5,00000002
	bne	a1,a5,000000002305AD74

l2305AD72:
	c.li	a1,00000001

l2305AD74:
	c.addi	a0,FFFFFFFE
	xori	a0,a0,-00000001
	sb	a0,a3,+00000000
	sub	a1,zero,a1

l2305AD82:
	sb	a1,a3,+00000001
	c.jr	ra

l2305AD88:
	sb	a0,a3,+00000000
	c.j	000000002305AD82

;; mbedtls_ssl_write_record: 2305AD8E
;;   Called from:
;;     2305B58E (in mbedtls_ssl_resend)
;;     2305BFC8 (in mbedtls_ssl_send_alert_message)
;;     2305C22A (in mbedtls_ssl_write_certificate)
;;     2305C326 (in mbedtls_ssl_write_change_cipher_spec)
;;     2305C4D2 (in mbedtls_ssl_write_finished)
;;     2305C64E (in mbedtls_ssl_write)
;;     230690D6 (in mbedtls_ssl_handshake_client_step)
mbedtls_ssl_write_record proc
	c.addi16sp	FFFFFFA0
	c.swsp	s2,00000028
	lui	a4,0002308A
	c.lui	a3,00001000
	lui	s2,0002308A
	c.swsp	s0,0000002C
	c.swsp	ra,000000AC
	c.swsp	s1,000000A8
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	addi	a4,a4,-0000001C
	addi	a3,a3,-00000559
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	s0,a0
	lw	s3,a0,+000000A8
	jal	ra,0000000023062FCC
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002305ADDA

l2305ADCC:
	c.lw	s0,48(a5)
	c.beqz	a5,000000002305ADDA

l2305ADD0:
	lbu	a4,a5,+00000034
	c.li	a5,00000001
	beq	a4,a5,000000002305AEC0

l2305ADDA:
	lw	a4,s0,+000000A4
	c.li	a5,00000016
	bne	a4,a5,000000002305AEC0

l2305ADE4:
	lw	a5,s0,+000000A0
	lbu	s1,a5,+00000000
	c.beqz	s1,000000002305AE28

l2305ADEE:
	c.lw	s0,48(a4)
	c.bnez	a4,000000002305AE28

l2305ADF2:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,-000000EC
	addi	a3,a3,-00000547
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023062FCC
	addi	s1,s1,+00000400

l2305AE12:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.mv	a0,s1
	c.lwsp	a7,00000048
	c.lwsp	s5,00000024
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.lwsp	t0,000000A8
	c.lwsp	ra,000000C8
	c.addi16sp	00000060
	c.jr	ra

l2305AE28:
	addi	a2,s3,-00000004
	srli	a4,a2,00000010
	sb	a4,a5,+00000001
	lw	a5,s0,+000000A0
	srli	a4,a2,00000008
	sb	a4,a5,+00000002
	lw	a5,s0,+000000A0
	sb	a2,a5,+00000003
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002305AEAE

l2305AE52:
	lw	a0,s0,+000000A0
	c.addi	s3,00000008
	addi	a1,a0,+00000004
	c.addi	a0,0000000C
	jal	ra,0000000023070D98
	lw	a5,s0,+000000A8
	lw	a4,s0,+000000A0
	c.addi	a5,00000008
	sw	a5,s0,+000000A8
	c.beqz	s1,000000002305AF32

l2305AE72:
	c.lw	s0,48(a5)
	c.lw	a5,28(a5)
	c.srli	a5,00000008
	sb	a5,a4,+00000004
	c.lw	s0,48(a4)
	lw	a5,s0,+000000A0
	c.lw	a4,28(a4)
	sb	a4,a5,+00000005
	c.lw	s0,48(a4)
	c.lw	a4,28(a5)
	c.addi	a5,00000001
	c.sw	a4,28(a5)

l2305AE90:
	lw	a0,s0,+000000A0
	c.li	a2,00000003
	c.li	a1,00000000
	c.addi	a0,00000006
	jal	ra,0000000023070EB8
	lw	a0,s0,+000000A0
	c.li	a2,00000003
	addi	a1,a0,+00000001
	c.addi	a0,00000009
	jal	ra,0000000023070C7C

l2305AEAE:
	c.beqz	s1,000000002305AEC0

l2305AEB0:
	c.lw	s0,48(a5)
	lw	a1,s0,+000000A0
	c.mv	a2,s3
	lw	a5,a5,+000000C4
	c.mv	a0,s0
	c.jalr	a5

l2305AEC0:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002305AF98

l2305AECA:
	c.lw	s0,48(a5)
	c.beqz	a5,000000002305AF98

l2305AECE:
	lbu	a4,a5,+00000034
	c.li	a5,00000001
	beq	a4,a5,000000002305AF98

l2305AED8:
	lw	a5,s0,+000000A4
	c.li	a4,00000014
	c.andi	a5,FFFFFFFD
	bne	a5,a4,000000002305AF98

l2305AEE4:
	c.li	a1,00000010
	c.li	a0,00000001
	jal	ra,000000002305F67C
	c.mv	s1,a0
	c.bnez	a0,000000002305AF40

l2305AEF0:
	lui	a4,0002308A
	c.lui	a3,00001000
	c.li	a5,00000010
	addi	a4,a4,-0000000C
	addi	a3,a3,-00000636
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023062FCC

l2305AF0C:
	c.lui	s1,FFFF8000
	lui	a4,0002308A
	c.lui	a3,00001000
	addi	a5,s1,+00000100
	addi	a4,a4,+0000000C
	addi	a3,a3,-0000050F
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002306305C
	addi	s1,s1,+00000100
	c.j	000000002305AE12

l2305AF32:
	sb	zero,a4,+00000004
	lw	a5,s0,+000000A0
	sb	zero,a5,+00000005
	c.j	000000002305AE90

l2305AF40:
	lw	a1,s0,+000000A8
	c.li	a0,00000001
	jal	ra,000000002305F67C
	c.sw	s1,0(a0)
	lw	a5,s0,+000000A8
	c.bnez	a0,000000002305AF74

l2305AF52:
	lui	a4,0002308A
	c.lui	a3,00001000
	c.mv	a0,s0
	addi	a4,a4,-0000000C
	addi	a3,a3,-00000630
	addi	a2,s2,+00000378
	c.li	a1,00000001
	jal	ra,0000000023062FCC
	c.mv	a0,s1
	jal	ra,0000000023032272
	c.j	000000002305AF0C

l2305AF74:
	lw	a1,s0,+000000A0
	c.mv	a2,a5
	jal	ra,0000000023070C7C
	lw	a5,s0,+000000A8
	c.sw	s1,4(a5)
	lw	a5,s0,+000000A4
	sw	zero,s1,+0000000C
	sb	a5,s1,+00000008
	c.lw	s0,48(a4)
	c.lw	a4,56(a5)
	c.bnez	a5,000000002305B016

l2305AF96:
	c.sw	a4,56(s1)

l2305AF98:
	lw	a5,s0,+00000094
	lw	a4,s0,+000000A4
	sb	a4,a5,+00000000
	c.lw	s0,0(a5)
	lw	a3,s0,+00000094
	c.lw	s0,12(a1)
	c.lw	a5,116(a2)
	c.lw	s0,8(a0)
	c.addi	a3,00000001
	c.srli	a2,00000001
	c.andi	a2,00000001
	jal	ra,000000002305AD62
	lw	a5,s0,+00000098
	srli	a4,s3,00000008
	sb	a4,a5,+00000000
	lw	a5,s0,+00000098
	sb	s3,a5,+00000001
	c.lw	s0,56(a5)
	beq	a5,zero,000000002305B3E0

l2305AFD4:
	lui	a4,0002308A
	addi	a4,a4,+00000020
	addi	a3,zero,+00000504
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lw	s0,36(a5)
	c.beqz	a5,000000002305AFF4

l2305AFF0:
	c.lw	s0,56(a5)
	c.bnez	a5,000000002305B01E

l2305AFF4:
	lui	a4,00023089
	addi	a4,a4,-000000EC
	addi	a3,zero,+00000508

l2305B000:
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023062FCC
	addi	s1,s1,+00000400
	c.j	000000002305B246

l2305B014:
	c.mv	a5,a4

l2305B016:
	c.lw	a5,12(a4)
	c.bnez	a4,000000002305B014

l2305B01A:
	c.sw	a5,12(s1)
	c.j	000000002305AF98

l2305B01E:
	c.lw	a5,80(a5)
	c.li	s1,00000000
	c.beqz	a5,000000002305B028

l2305B024:
	lbu	s1,a5,+00000001

l2305B028:
	lw	a5,s0,+000000A0
	lw	a6,s0,+000000A8
	lui	a4,0002308A
	addi	a4,a4,+00000030
	addi	a3,zero,+0000050F
	addi	a2,s2,+00000378
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,00000000230630DE
	c.li	a5,00000007
	beq	s1,a5,000000002305B056

l2305B04E:
	c.li	a5,00000002
	c.li	s5,00000000
	bne	s1,a5,000000002305B0F4

l2305B056:
	c.lw	s0,12(a5)
	bge	zero,a5,000000002305B17E

l2305B05C:
	c.lw	s0,56(a0)
	lw	a1,s0,+00000090
	c.li	a2,00000008
	addi	a0,a0,+00000038
	jal	ra,0000000023065924
	c.lw	s0,56(a0)
	lw	a1,s0,+00000094
	c.li	a2,00000003
	addi	a0,a0,+00000038
	jal	ra,0000000023065924
	c.lw	s0,56(a0)
	lw	a1,s0,+00000098
	c.li	a2,00000002
	addi	a0,a0,+00000038
	jal	ra,0000000023065924
	c.lw	s0,56(a0)
	lw	a2,s0,+000000A8
	lw	a1,s0,+000000A0
	addi	a0,a0,+00000038
	c.li	s5,00000001
	jal	ra,0000000023065924
	lw	a5,s0,+000000A8
	lw	a1,s0,+000000A0
	c.lw	s0,56(a0)
	c.add	a1,a5
	addi	a0,a0,+00000038
	jal	ra,0000000023065948
	c.lw	s0,56(a0)
	addi	a0,a0,+00000038
	jal	ra,00000000230659AC
	c.lw	s0,56(a3)
	lw	a4,s0,+000000A0
	lw	a5,s0,+000000A8
	lw	a6,a3,+00000014
	addi	a2,s2,+00000378
	c.add	a5,a4
	lui	a4,0002308A
	addi	a4,a4,+00000050
	addi	a3,zero,+0000053C
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,00000000230630DE
	c.lw	s0,56(a4)
	lw	a5,s0,+000000A8
	c.lw	a4,20(a4)
	c.add	a5,a4
	sw	a5,s0,+000000A8

l2305B0F4:
	addi	a5,s1,-00000006
	andi	a5,a5,+000000FD
	bne	a5,zero,000000002305B2B4

l2305B100:
	c.lw	s0,56(a5)
	c.li	s3,00000008
	c.lw	a5,0(a5)
	lbu	a5,a5,+0000001C
	c.andi	a5,00000002
	c.bnez	a5,000000002305B110

l2305B10E:
	c.li	s3,00000010

l2305B110:
	lw	a1,s0,+00000090
	c.li	a2,00000008
	c.addi4spn	a0,00000030
	jal	ra,0000000023070C7C
	lw	a5,s0,+000000A4
	c.lw	s0,12(a1)
	c.lw	s0,8(a0)
	sb	a5,sp,+00000038
	c.lw	s0,0(a5)
	addi	a3,sp,+00000039
	c.lw	a5,116(a2)
	c.srli	a2,00000001
	c.andi	a2,00000001
	jal	ra,000000002305AD62
	lw	a5,s0,+000000A8
	c.mv	a0,s0
	c.li	a6,0000000D
	srli	a4,a5,00000008
	sb	a4,sp,+0000003B
	lui	a4,0002308A
	sb	a5,sp,+0000003C
	addi	a4,a4,+00000060
	c.addi4spn	a5,00000030
	addi	a3,zero,+00000575
	addi	a2,s2,+00000378
	c.li	a1,00000004
	jal	ra,00000000230630DE
	c.lw	s0,56(a5)
	c.lw	a5,12(a4)
	c.lw	a5,16(a0)
	c.addi	a4,FFFFFFF8
	beq	a4,a0,000000002305B18C

l2305B170:
	lui	a4,00023089
	addi	a4,a4,-000000EC
	addi	a3,zero,+0000057D
	c.j	000000002305B000

l2305B17E:
	lui	a4,00023089
	addi	a4,a4,-000000EC
	addi	a3,zero,+00000536
	c.j	000000002305B000

l2305B18C:
	lw	a1,s0,+00000090
	c.addi	a5,00000018
	c.add	a0,a5
	c.li	a2,00000008
	jal	ra,0000000023070C7C
	lw	a1,s0,+00000090
	lw	a0,s0,+0000009C
	c.li	a2,00000008
	jal	ra,0000000023070C7C
	c.lw	s0,56(a5)
	lui	a4,0002308A
	addi	a4,a4,+00000080
	lw	a6,a5,+0000000C
	c.lw	a5,16(a5)
	addi	a3,zero,+00000586
	addi	a2,s2,+00000378
	sub	a6,a6,a5
	lw	a5,s0,+0000009C
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,00000000230630DE
	c.lw	s0,56(a4)
	lw	s4,s0,+000000A8
	lw	a7,s0,+000000A0
	c.lw	a4,12(a5)
	c.lw	a4,16(a4)
	c.li	a6,00000000
	c.add	a5,s4
	c.sub	a5,a4
	lui	a4,0002308A
	sw	a5,s0,+000000A8
	addi	a4,a4,+00000088
	addi	a3,zero,+00000592
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s0
	c.swsp	a7,0000008C
	jal	ra,0000000023062FCC
	c.lw	s0,56(a0)
	c.lwsp	t3,00000028
	c.addi4spn	a5,0000002C
	c.lw	a0,12(a2)
	add	s6,a7,s4
	c.swsp	a5,00000000
	addi	a1,a0,+00000018
	c.swsp	s3,00000004
	c.swsp	s6,00000080
	c.mv	a6,s4
	c.mv	a5,a7
	c.li	a4,0000000D
	c.addi4spn	a3,00000030
	addi	a0,a0,+00000050
	jal	ra,0000000023062CF2
	c.mv	s1,a0
	c.beqz	a0,000000002305B264

l2305B22C:
	lui	a4,0002308A
	c.mv	a5,a0
	addi	a4,a4,+000000C4
	addi	a3,zero,+0000059F

l2305B23A:
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002306305C

l2305B246:
	lui	a4,0002308A
	c.lui	a3,00001000
	c.mv	a5,s1
	addi	a4,a4,+0000016C
	addi	a3,a3,-000004DE

l2305B256:
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002306305C
	c.j	000000002305AE12

l2305B264:
	c.lwsp	a2,000001F4
	beq	s4,a5,000000002305B278

l2305B26A:
	lui	a4,00023089
	addi	a4,a4,-000000EC
	addi	a3,zero,+000005A5
	c.j	000000002305B000

l2305B278:
	lw	a5,s0,+000000A8
	lui	a4,0002308A
	c.mv	a6,s3
	c.add	a5,s3
	sw	a5,s0,+000000A8
	addi	a4,a4,+000000E0
	c.mv	a5,s6
	addi	a3,zero,+000005AC
	addi	a2,s2,+00000378
	c.li	a1,00000004
	c.mv	a0,s0
	c.addi	s5,00000001
	jal	ra,00000000230630DE

l2305B2A0:
	c.li	a5,00000001
	beq	s5,a5,000000002305B3B0

l2305B2A6:
	lui	a4,00023089
	addi	a4,a4,-000000EC
	addi	a3,zero,+0000062E
	c.j	000000002305B000

l2305B2B4:
	c.li	a5,00000002
	bne	s1,a5,000000002305B3A2

l2305B2BA:
	c.lw	s0,56(a5)
	c.swsp	zero,00000018
	lw	s3,s0,+000000A8
	c.lw	a5,12(a5)
	c.addi	s3,00000001
	and	s3,s3,a5
	sub	s3,a5,s3
	bne	a5,s3,000000002305B2D4

l2305B2D2:
	c.li	s3,00000000

l2305B2D4:
	c.li	a4,00000000

l2305B2D6:
	lw	a5,s0,+000000A0
	lw	a3,s0,+000000A8
	c.add	a5,a4
	c.add	a5,a3
	sb	s3,a5,+00000000
	c.addi	a4,00000001
	bgeu	s3,a4,000000002305B2D6

l2305B2EC:
	lw	s4,s0,+000000A8
	c.lw	s0,12(a4)
	c.li	a5,00000001
	c.addi	s4,00000001
	c.add	s4,s3
	sw	s4,s0,+000000A8
	blt	a5,a4,000000002305B358

l2305B300:
	lw	s1,s0,+000000A0

l2305B304:
	c.lw	s0,56(a5)
	lui	a4,0002308A
	addi	a7,s3,+00000001
	lw	a6,a5,+0000000C
	lw	a5,s0,+000000A8
	addi	a4,a4,+000000F4
	addi	a3,zero,+000005E3
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lw	s0,56(a0)
	c.mv	a5,s1
	c.mv	a3,s1
	c.lw	a0,12(a2)
	addi	a1,a0,+00000018
	addi	a6,sp,+00000030
	c.mv	a4,s4
	addi	a0,a0,+00000050
	jal	ra,0000000023062C96
	c.mv	s1,a0
	c.beqz	a0,000000002305B38E

l2305B348:
	lui	a4,0002308A
	c.mv	a5,a0
	addi	a4,a4,+00000144
	addi	a3,zero,+000005EB
	c.j	000000002305B23A

l2305B358:
	c.lw	s0,56(a1)
	c.lw	s0,0(a5)
	c.lw	a1,12(a2)
	c.lw	a5,24(a4)
	c.lw	a5,28(a0)
	c.addi	a1,00000018
	c.jalr	a4
	c.mv	s1,a0
	bne	a0,zero,000000002305B246

l2305B36C:
	c.lw	s0,56(a1)
	lw	a0,s0,+0000009C
	c.lw	a1,12(a2)
	c.addi	a1,00000018
	jal	ra,0000000023070C7C
	c.lw	s0,56(a5)
	lw	s4,s0,+000000A8
	lw	s1,s0,+000000A0
	c.lw	a5,12(a5)
	c.add	a5,s4
	sw	a5,s0,+000000A8
	c.j	000000002305B304

l2305B38E:
	c.lwsp	a6,000001F4
	beq	s4,a5,000000002305B2A0

l2305B394:
	lui	a4,00023089
	addi	a4,a4,-000000EC
	addi	a3,zero,+000005F1
	c.j	000000002305B000

l2305B3A2:
	lui	a4,00023089
	addi	a4,a4,-000000EC
	addi	a3,zero,+00000627
	c.j	000000002305B000

l2305B3B0:
	lui	a4,0002308A
	addi	a4,a4,+0000015C
	addi	a3,zero,+00000632
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	lw	a5,s0,+000000A8
	lw	a4,s0,+00000098
	srli	a3,a5,00000008
	sb	a3,a4,+00000000
	lw	a4,s0,+00000098
	sb	a5,a4,+00000001

l2305B3E0:
	c.lw	s0,0(a0)
	c.lui	s3,00001000
	jal	ra,00000000230599A4
	lw	a5,s0,+000000A8
	lw	a3,s0,+00000098
	c.li	a1,00000003
	c.add	a0,a5
	sw	a0,s0,+000000AC
	lbu	a4,a3,+00000001
	lbu	a2,a3,+00000000
	lw	a5,s0,+00000094
	c.slli	a4,08
	c.or	a4,a2
	slli	a3,a4,00000008
	c.srli	a4,00000008
	c.or	a4,a3
	c.slli	a4,10
	lbu	a7,a5,+00000002
	lbu	a6,a5,+00000001
	c.srli	a4,00000010
	lbu	a5,a5,+00000000
	c.swsp	a4,00000000
	lui	a4,0002308A
	addi	a4,a4,+0000017C
	addi	a3,s3,-000004D0
	addi	a2,s2,+00000378
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lw	s0,0(a0)
	jal	ra,00000000230599A4
	lw	a6,s0,+000000A8
	lw	a5,s0,+00000094
	lui	a4,0002308A
	c.add	a6,a0
	addi	a4,a4,+000001B8
	addi	a3,s3,-000004CD
	addi	a2,s2,+00000378
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,00000000230630DE
	c.mv	a0,s0
	jal	ra,000000002305A0D0
	c.mv	s1,a0
	c.beqz	a0,000000002305B47A

l2305B46A:
	lui	a4,0002308A
	c.mv	a5,a0
	addi	a4,a4,+000001D8
	addi	a3,s3,-000004C8
	c.j	000000002305B256

l2305B47A:
	lui	a4,0002308A
	addi	a4,a4,+000001F4
	addi	a3,s3,-000004C4
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.j	000000002305AE12

;; mbedtls_ssl_resend: 2305B494
;;   Called from:
;;     2305B87C (in mbedtls_ssl_fetch_input)
;;     2305BA4A (in mbedtls_ssl_prepare_handshake_record)
;;     2305D082 (in mbedtls_ssl_read_record_layer)
;;     2305D900 (in mbedtls_ssl_read)
;;     23068A50 (in mbedtls_ssl_handshake_client_step)
;;     2306A4BC (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_resend proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	lui	a4,0002308A
	c.lui	s3,00001000
	lui	s2,0002308A
	addi	a4,a4,-00000308
	addi	a3,s3,-000005C7
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a0
	c.swsp	ra,00000094
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	jal	ra,0000000023062FCC
	c.lw	s0,48(a5)
	c.li	s1,00000001
	lbu	a5,a5,+00000034
	beq	a5,s1,000000002305B4FC

l2305B4D2:
	lui	a4,0002308A
	addi	a4,a4,-000002F0
	addi	a3,s3,-000005C3
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lw	s0,48(a5)
	c.mv	a0,s0
	c.lw	a5,56(a4)
	c.sw	a5,60(a4)
	jal	ra,00000000230596FE
	c.lw	s0,48(a5)
	sb	s1,a5,+00000034

l2305B4FC:
	c.lui	s3,00001000
	c.li	s4,00000016
	c.li	s5,00000014
	lui	s6,0002308A
	addi	s7,s3,-000005A7

l2305B50A:
	c.lw	s0,48(a5)
	c.lw	a5,60(s1)
	c.bnez	s1,000000002305B53C

l2305B510:
	c.lw	s0,4(a3)
	c.li	a4,00000010
	bne	a3,a4,000000002305B5C8

l2305B518:
	c.li	a4,00000003
	sb	a4,a5,+00000034

l2305B51E:
	lui	a4,0002308A
	c.lui	a3,00001000
	addi	a4,a4,-0000029C
	addi	a3,a3,-00000596
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.li	s1,00000000
	c.j	000000002305B5B0

l2305B53C:
	lbu	a5,s1,+00000008
	bne	a5,s4,000000002305B554

l2305B544:
	c.lw	s1,0(a5)
	lbu	a5,a5,+00000000
	bne	a5,s5,000000002305B554

l2305B54E:
	c.mv	a0,s0
	jal	ra,00000000230596FE

l2305B554:
	c.lw	s1,4(a2)
	c.lw	s1,0(a1)
	lw	a0,s0,+000000A0
	jal	ra,0000000023070C7C
	c.lw	s1,4(a5)
	c.li	a6,0000000C
	c.mv	a3,s7
	sw	a5,s0,+000000A8
	lbu	a5,s1,+00000008
	addi	a2,s2,+00000378
	c.li	a1,00000003
	sw	a5,s0,+000000A4
	c.lw	s1,12(a4)
	c.lw	s0,48(a5)
	c.mv	a0,s0
	c.sw	a5,60(a4)
	lw	a5,s0,+000000A0
	addi	a4,s6,-000002D8
	jal	ra,00000000230630DE
	c.mv	a0,s0
	jal	ra,000000002305AD8E
	c.mv	s1,a0
	c.beqz	a0,000000002305B50A

l2305B596:
	lui	a4,0002308A
	c.mv	a5,a0
	addi	a4,a4,-000002B8
	addi	a3,s3,-000005A3
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002306305C

l2305B5B0:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.addi16sp	00000030
	c.jr	ra

l2305B5C8:
	c.li	a4,00000002
	sb	a4,a5,+00000034
	c.lw	s0,48(a5)
	c.mv	a0,s0
	c.lw	a5,48(a1)
	jal	ra,00000000230599B4
	c.j	000000002305B51E

;; mbedtls_ssl_fetch_input: 2305B5DA
;;   Called from:
;;     2305C742 (in mbedtls_ssl_read_record_layer)
;;     2305C9A6 (in mbedtls_ssl_read_record_layer)
;;     2306A512 (in mbedtls_ssl_handshake_server_step)
;;     2306A6AC (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_fetch_input proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	lui	s1,0002308A
	lui	a4,00023089
	c.lui	s4,00001000
	c.swsp	s3,0000008C
	addi	a4,a4,+00000054
	c.mv	s3,a1
	addi	a3,s4,-00000746
	addi	a2,s1,+00000378
	c.li	a1,00000002
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.mv	s0,a0
	c.swsp	ra,00000094
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	jal	ra,0000000023062FCC
	c.lw	s0,20(a5)
	c.mv	s2,s1
	c.bnez	a5,000000002305B656

l2305B618:
	c.lw	s0,24(a5)
	c.bnez	a5,000000002305B656

l2305B61C:
	lui	a4,00023089
	addi	a4,a4,+0000016C
	addi	a3,s4,-00000741
	addi	a2,s1,+00000378

l2305B62C:
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023062FCC
	addi	s1,s1,-00000100

l2305B63A:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.addi16sp	00000030
	c.jr	ra

l2305B656:
	c.lw	s0,88(a5)
	c.lw	s0,80(a4)
	sub	a4,a5,a4
	c.lui	a5,00004000
	addi	a5,a5,+0000013D
	c.sub	a5,a4
	bgeu	a5,s3,000000002305B67E

l2305B66A:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,+00000064
	addi	a3,a3,-0000073B

l2305B678:
	addi	a2,s2,+00000378
	c.j	000000002305B62C

l2305B67E:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	beq	a5,zero,000000002305B8A2

l2305B68A:
	c.lw	s0,72(a5)
	c.beqz	a5,000000002305B692

l2305B68E:
	c.lw	s0,76(a5)
	c.bnez	a5,000000002305B6A2

l2305B692:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,+00000084
	addi	a3,a3,-0000072E
	c.j	000000002305B678

l2305B6A2:
	c.lw	s0,124(a5)
	c.beqz	a5,000000002305B6FE

l2305B6A6:
	c.lw	s0,116(a4)
	bgeu	a4,a5,000000002305B6CE

l2305B6AC:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,-000000EC
	addi	a3,a3,-0000071C

l2305B6BA:
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023062FCC
	addi	s1,s1,+00000400
	c.j	000000002305B63A

l2305B6CE:
	c.sub	a4,a5
	c.sw	s0,116(a4)
	c.beqz	a4,000000002305B6FA

l2305B6D4:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	addi	a4,a4,+000000B8
	addi	a3,a3,-00000713
	jal	ra,0000000023062FCC
	c.lw	s0,88(a0)
	c.lw	s0,124(a1)
	c.lw	s0,116(a2)
	c.add	a1,a0
	jal	ra,0000000023070D98

l2305B6FA:
	sw	zero,s0,+0000007C

l2305B6FE:
	c.lw	s0,116(a5)
	lui	a4,00023089
	c.lui	s1,00001000
	c.mv	a6,s3
	addi	a4,a4,+000000E4
	addi	a3,s1,-00000709
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lw	s0,116(a5)
	bltu	a5,s3,000000002305B73E

l2305B722:
	lui	a4,00023089
	addi	a4,a4,+00000100
	addi	a3,s1,-00000702

l2305B72E:
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.li	s1,00000000
	c.j	000000002305B63A

l2305B73E:
	c.beqz	a5,000000002305B74E

l2305B740:
	lui	a4,00023089
	addi	a4,a4,-000000EC
	addi	a3,s1,-000006F7
	c.j	000000002305B6BA

l2305B74E:
	c.mv	a0,s0
	jal	ra,00000000230599F8
	c.beqz	a0,000000002305B788

l2305B756:
	lui	a4,00023089
	c.lui	s1,00001000
	addi	a4,a4,+00000110
	addi	a3,s1,-000006D3
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230599B4
	c.lw	s0,4(a4)
	c.li	a5,00000010
	bne	a4,a5,000000002305B828

l2305B780:
	c.lui	s1,FFFFA000
	addi	s1,s1,-00000800
	c.j	000000002305B63A

l2305B788:
	c.lw	s0,88(s1)
	c.lw	s0,80(a5)
	c.lw	s0,4(a4)
	sub	a5,s1,a5
	c.lui	s1,00004000
	addi	s1,s1,+0000013D
	c.sub	s1,a5
	c.li	a5,00000010
	beq	a4,a5,000000002305B7F8

l2305B7A0:
	c.lw	s0,48(a5)
	lw	s3,a5,+00000030

l2305B7A6:
	lui	a4,00023089
	c.lui	a3,00001000
	c.mv	a5,s3
	c.li	a1,00000003
	c.mv	a0,s0
	addi	a4,a4,+00000118
	addi	a3,a3,-000006E3
	addi	a2,s2,+00000378
	jal	ra,0000000023062FCC
	c.lw	s0,24(a5)
	c.lw	s0,88(a1)
	c.lw	s0,28(a0)
	c.beqz	a5,000000002305B800

l2305B7CA:
	c.mv	a3,s3
	c.mv	a2,s1
	c.jalr	a5

l2305B7D0:
	lui	a4,00023089
	c.lui	a3,00001000
	c.mv	s1,a0
	c.mv	a5,a0
	addi	a4,a4,+00000130
	addi	a3,a3,-000006DB
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,000000002306305C
	c.bnez	s1,000000002305B808

l2305B7F0:
	c.lui	s1,FFFF9000
	addi	s1,s1,-00000280
	c.j	000000002305B63A

l2305B7F8:
	c.lw	s0,0(a5)
	lw	s3,a5,+00000064
	c.j	000000002305B7A6

l2305B800:
	c.lw	s0,20(a5)
	c.mv	a2,s1
	c.jalr	a5
	c.j	000000002305B7D0

l2305B808:
	c.lui	a5,FFFFA000
	addi	a5,a5,-00000800
	beq	s1,a5,000000002305B756

l2305B812:
	blt	s1,zero,000000002305B63A

l2305B816:
	c.sw	s0,116(s1)

l2305B818:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,+00000100
	addi	a3,a3,-00000683
	c.j	000000002305B72E

l2305B828:
	c.lw	s0,48(a2)
	c.lw	s0,0(a5)
	c.lw	a2,48(a3)
	c.lw	a5,108(a5)
	bltu	a3,a5,000000002305B84E

l2305B834:
	lui	a4,0002307D
	addi	a4,a4,-000006B8
	addi	a3,s1,-000006CC
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.j	000000002305B780

l2305B84E:
	slli	a4,a3,00000001
	bltu	a4,a3,000000002305B85C

l2305B856:
	bgeu	a4,a5,000000002305B85C

l2305B85A:
	c.mv	a5,a4

l2305B85C:
	c.sw	a2,48(a5)
	c.lw	s0,48(a5)
	lui	a4,0002308A
	addi	a4,a4,-00000254
	c.lw	a5,48(a5)
	addi	a3,zero,+0000007E
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.mv	a0,s0
	jal	ra,000000002305B494
	c.mv	s1,a0
	c.beqz	a0,000000002305B93C

l2305B884:
	lui	a4,00023089
	c.lui	a3,00001000
	c.mv	a5,a0
	addi	a4,a4,+00000148
	addi	a3,a3,-000006C6
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002306305C
	c.j	000000002305B63A

l2305B8A2:
	c.lw	s0,116(a5)
	c.lui	s5,00001000
	lui	s6,00023089
	addi	a3,s5,-000006A8
	c.mv	a6,s3
	addi	a4,s6,+000000E4
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	c.lui	s7,FFFFA000
	addi	s8,s5,-00000690
	jal	ra,0000000023062FCC
	addi	s7,s7,-00000800
	lui	s9,00023089
	addi	s5,s5,-0000068F

l2305B8D2:
	lw	s4,s0,+00000074
	bgeu	s4,s3,000000002305B818

l2305B8DA:
	c.mv	a0,s0
	jal	ra,00000000230599F8
	c.mv	s1,s7
	c.bnez	a0,000000002305B8FC

l2305B8E4:
	c.lw	s0,88(a1)
	c.lw	s0,116(a4)
	c.lw	s0,24(a5)
	sub	a2,s3,s4
	c.lw	s0,28(a0)
	c.add	a1,a4
	c.beqz	a5,000000002305B936

l2305B8F4:
	c.lw	s0,0(a4)
	c.lw	a4,100(a3)
	c.jalr	a5

l2305B8FA:
	c.mv	s1,a0

l2305B8FC:
	c.lw	s0,116(a5)
	addi	a4,s6,+000000E4
	c.mv	a3,s8
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	c.mv	a6,s3
	jal	ra,0000000023062FCC
	c.mv	a5,s1
	addi	a4,s9,+00000130
	c.mv	a3,s5
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,000000002306305C
	beq	s1,zero,000000002305B7F0

l2305B92A:
	blt	s1,zero,000000002305B63A

l2305B92E:
	c.lw	s0,116(a5)
	c.add	s1,a5
	c.sw	s0,116(s1)
	c.j	000000002305B8D2

l2305B936:
	c.lw	s0,20(a5)
	c.jalr	a5
	c.j	000000002305B8FA

l2305B93C:
	c.lui	s1,FFFF9000
	addi	s1,s1,+00000700
	c.j	000000002305B63A

;; mbedtls_ssl_prepare_handshake_record: 2305B944
;;   Called from:
;;     2305BEB4 (in mbedtls_ssl_handle_message_type)
mbedtls_ssl_prepare_handshake_record proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.lw	a0,0(a4)
	c.mv	s0,a0
	c.lw	a0,112(a5)
	lhu	a4,a4,+00000074
	c.li	a3,0000000C
	c.andi	a4,00000002
	c.bnez	a4,000000002305B96A

l2305B968:
	c.li	a3,00000004

l2305B96A:
	lui	s2,0002308A
	bgeu	a5,a3,000000002305B9AA

l2305B972:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,+00000550
	addi	a3,a3,-000003E0
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023062FCC
	addi	s1,s1,-00000200

l2305B992:
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
	c.addi16sp	00000040
	c.jr	ra

l2305B9AA:
	c.lw	s0,100(a4)
	c.lui	s3,00001000
	c.li	a1,00000003
	lbu	a7,a4,+00000001
	lbu	a2,a4,+00000002
	c.mv	a0,s0
	c.slli	a7,10
	c.slli	a2,08
	or	a7,a7,a2
	lbu	a2,a4,+00000003
	or	a7,a7,a2
	c.add	a7,a3
	sw	a7,s0,+00000080
	lbu	a6,a4,+00000000
	lui	a4,00023089
	addi	a4,a4,+00000570
	addi	a3,s3,-000003D5
	addi	a2,s2,+00000378
	jal	ra,0000000023062FCC
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	beq	a5,zero,000000002305BE48

l2305B9F4:
	c.lw	s0,48(a3)
	c.lw	s0,100(a0)
	c.beqz	a3,000000002305BA92

l2305B9FA:
	lbu	a5,a0,+00000005
	lbu	a4,a0,+00000004
	c.slli	a5,08
	c.or	a5,a4
	slli	a4,a5,00000008
	c.srli	a5,00000008
	c.or	a5,a4
	c.lw	a3,32(a4)
	c.slli	a5,10
	c.srli	a5,00000010
	beq	a4,a5,000000002305BA92

l2305BA18:
	lw	a6,a3,+00000040
	addi	a3,a6,-00000001
	bne	a3,a5,000000002305BA6E

l2305BA24:
	lbu	a1,a0,+00000000
	c.li	a2,00000003
	beq	a1,a2,000000002305BA6E

l2305BA2E:
	lui	a4,00023089
	c.mv	a5,a3
	addi	a4,a4,+000005A8
	addi	a3,s3,-000003C0
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.mv	a0,s0
	jal	ra,000000002305B494
	c.mv	s1,a0
	c.beqz	a0,000000002305BA8A

l2305BA52:
	lui	a4,00023089
	c.mv	a5,a0
	addi	a4,a4,+00000148
	addi	a3,s3,-000003BC

l2305BA60:
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002306305C
	c.j	000000002305B992

l2305BA6E:
	c.mv	a6,a4
	c.lui	a3,00001000
	lui	a4,00023089
	addi	a4,a4,+000005F4
	addi	a3,a3,-000003B3
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC

l2305BA8A:
	c.lui	s1,FFFF9000
	addi	s1,s1,+00000700
	c.j	000000002305B992

l2305BA92:
	c.lw	s0,112(a4)
	lw	a5,s0,+00000080
	bgeu	a4,a5,000000002305BAF2

l2305BA9C:
	lui	a4,00023089
	c.lui	s1,00001000
	addi	a4,a4,+00000638
	addi	a3,s1,-000003A5
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lw	s0,48(a5)
	lw	s4,s0,+00000080
	addi	s5,s4,-0000000C
	c.bnez	a5,000000002305BB22

l2305BAC2:
	lui	a4,00023089
	addi	a4,a4,+00000660
	addi	a3,s1,-00000471

l2305BACE:
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023062FCC
	addi	s1,s1,-00000080

l2305BAE0:
	lui	a4,00023089
	c.lui	a3,00001000
	c.mv	a5,s1
	addi	a4,a4,+000007FC
	addi	a3,a3,-000003A1
	c.j	000000002305BA60

l2305BAF2:
	lui	a1,00023089
	c.li	a2,00000003
	addi	a1,a1,-000001BC
	c.addi	a0,00000006
	jal	ra,0000000023070BF4
	c.bnez	a0,000000002305BA9C

l2305BB04:
	c.lw	s0,100(a0)
	c.li	a2,00000003
	addi	a1,a0,+00000001
	c.addi	a0,00000009
	jal	ra,0000000023070BF4
	c.bnez	a0,000000002305BA9C

l2305BB14:
	c.lw	s0,48(a5)
	c.bnez	a5,000000002305BB1C

l2305BB18:
	c.li	s1,00000000
	c.j	000000002305B992

l2305BB1C:
	c.lw	a5,44(a5)
	c.bnez	a5,000000002305BA9C

l2305BB20:
	c.j	000000002305BB18

l2305BB22:
	c.lw	a5,44(a0)
	bne	a0,zero,000000002305BC2A

l2305BB28:
	lui	a4,00023089
	c.mv	a5,s5
	addi	a4,a4,+0000068C
	addi	a3,s1,-00000465
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	lw	a4,s0,+00000080
	c.lui	a5,00004000
	bgeu	a5,a4,000000002305BB5A

l2305BB4C:
	lui	a4,00023089
	addi	a4,a4,+000006B8
	addi	a3,s1,-00000461
	c.j	000000002305BACE

l2305BB5A:
	andi	a5,s5,+00000007
	srli	a4,s5,00000003
	c.add	a4,s4
	sltu	a5,zero,a5
	c.add	a5,a4
	lw	s3,s0,+00000030
	c.mv	a1,a5
	c.li	a0,00000001
	c.swsp	a5,00000084
	jal	ra,000000002305F67C
	sw	a0,s3,+0000002C
	c.lw	s0,48(a4)
	c.lwsp	a2,000000E4
	c.lw	a4,44(a0)
	c.bnez	a0,000000002305BBA4

l2305BB84:
	lui	a4,00023089
	addi	a3,s1,-00000457
	addi	a4,a4,+000006D4
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF8000
	jal	ra,0000000023062FCC
	addi	s1,s1,+00000100
	c.j	000000002305BAE0

l2305BBA4:
	c.lw	s0,100(a1)
	c.li	a2,00000006
	jal	ra,0000000023070C7C
	c.lw	s0,48(a5)
	c.li	a2,00000003
	c.li	a1,00000000
	c.lw	a5,44(a0)
	c.addi	a0,00000006
	jal	ra,0000000023070EB8
	c.lw	s0,48(a5)
	c.li	a2,00000003
	c.lw	a5,44(a0)
	addi	a1,a0,+00000001
	c.addi	a0,00000009
	jal	ra,0000000023070C7C

l2305BBCA:
	c.lw	s0,48(a5)
	lw	s7,a5,+0000002C
	c.lw	s0,100(a5)
	c.add	s4,s7
	lbu	s3,a5,+00000006
	lbu	a0,a5,+00000007
	lbu	s1,a5,+00000009
	lbu	a4,a5,+0000000A
	c.slli	a0,08
	c.slli	s3,10
	or	s3,s3,a0
	lbu	a0,a5,+00000008
	lbu	a5,a5,+0000000B
	c.slli	s1,10
	c.slli	a4,08
	c.or	s1,a4
	or	s3,s3,a0
	c.or	s1,a5
	add	a5,s3,s1
	bgeu	s5,a5,000000002305BC54

l2305BC08:
	lui	a4,00023089
	c.lui	a3,00001000
	c.mv	a7,s5
	c.mv	a6,s1
	c.mv	a5,s3
	addi	a4,a4,+00000708
	addi	a3,a3,-00000432
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.j	000000002305BC4C

l2305BC2A:
	c.lw	s0,100(a1)
	c.li	a2,00000004
	jal	ra,0000000023070BF4
	c.beqz	a0,000000002305BBCA

l2305BC34:
	lui	a4,00023089
	addi	a4,a4,+000006EC
	addi	a3,s1,-00000447
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023062FCC

l2305BC4C:
	c.lui	s1,FFFF9000
	addi	s1,s1,-00000200
	c.j	000000002305BAE0

l2305BC54:
	lw	a6,s0,+00000070
	addi	s6,s1,+0000000C
	bgeu	a6,s6,000000002305BC7E

l2305BC60:
	lui	a4,00023089
	c.lui	a3,00001000
	c.mv	a5,s1
	addi	a4,a4,+00000734
	addi	a3,a3,-0000042B
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.j	000000002305BC4C

l2305BC7E:
	lui	a4,00023089
	c.lui	a3,00001000
	c.mv	a5,s3
	addi	a4,a4,+0000075C
	addi	a3,a3,-00000426
	c.mv	a6,s1
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lw	s0,100(a1)
	addi	a0,s3,+0000000C
	c.mv	a2,s1
	c.addi	a1,0000000C
	c.add	a0,s7
	jal	ra,0000000023070C7C
	andi	a3,s3,+00000007
	c.li	a4,00000008
	sub	a5,a4,a3
	beq	a5,a4,000000002305BD4A

l2305BCBA:
	srli	a4,s3,00000003
	bltu	a5,s1,000000002305BD2A

l2305BCC2:
	sub	s1,a5,s1
	c.add	a4,s4
	c.li	a2,00000001

l2305BCCA:
	bne	s1,a5,000000002305BD18

l2305BCCE:
	srli	a4,s5,00000003
	c.li	a5,00000000
	addi	a3,zero,+000000FF

l2305BCD8:
	bne	a5,a4,000000002305BD8E

l2305BCDC:
	c.li	a4,00000000
	andi	a7,s5,+00000007
	c.add	s4,a5
	c.li	a3,00000007

l2305BCE6:
	bltu	a4,a7,000000002305BD9E

l2305BCEA:
	lui	a4,0002308A
	c.lui	s1,00001000
	addi	a4,a4,-0000079C
	addi	a3,s1,-00000417
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lw	s0,112(a5)
	bgeu	s6,a5,000000002305BDB2

l2305BD0A:
	lui	a4,00023089
	addi	a4,a4,+00000788
	addi	a3,s1,-0000040E
	c.j	000000002305BACE

l2305BD18:
	lbu	a1,a4,+00000000
	sll	a3,a2,s1
	c.addi	s1,00000001
	c.or	a3,a1
	sb	a3,a4,+00000000
	c.j	000000002305BCCA

l2305BD2A:
	c.addi	s1,FFFFFFF8
	c.add	a4,s4
	c.add	s1,a3
	lbu	a3,a4,+00000000
	c.add	s3,a5
	c.li	a1,00000001

l2305BD38:
	c.addi	a5,FFFFFFFF
	sll	a2,a1,a5
	c.or	a3,a2
	andi	a3,a3,+000000FF
	c.bnez	a5,000000002305BD38

l2305BD46:
	sb	a3,a4,+00000000

l2305BD4A:
	andi	a2,s1,+00000007
	c.beqz	a2,000000002305BD7A

l2305BD50:
	add	a5,s1,s3
	c.srli	a5,00000003
	c.add	a5,s4
	lbu	a3,a5,+00000000
	c.li	a4,00000008
	c.sub	s1,a2
	c.sub	a4,a2
	c.li	a0,00000001
	c.li	a2,00000008

l2305BD66:
	sll	a1,a0,a4
	c.or	a3,a1
	c.addi	a4,00000001
	andi	a3,a3,+000000FF
	bne	a4,a2,000000002305BD66

l2305BD76:
	sb	a3,a5,+00000000

l2305BD7A:
	srli	a0,s3,00000003
	srli	a2,s1,00000003
	addi	a1,zero,+000000FF
	c.add	a0,s4
	jal	ra,0000000023070EB8
	c.j	000000002305BCCE

l2305BD8E:
	add	a2,s4,a5
	lbu	a2,a2,+00000000
	bne	a2,a3,000000002305BE72

l2305BD9A:
	c.addi	a5,00000001
	c.j	000000002305BCD8

l2305BD9E:
	lbu	a5,s4,+00000000
	sub	a2,a3,a4
	sra	a5,a5,a2
	c.andi	a5,00000001
	c.beqz	a5,000000002305BE72

l2305BDAE:
	c.addi	a4,00000001
	c.j	000000002305BCE6

l2305BDB2:
	c.lw	s0,116(a2)
	c.lw	s0,124(a4)
	bgeu	a4,a2,000000002305BE0A

l2305BDBA:
	lw	a3,s0,+00000080
	c.lw	s0,100(a0)
	c.lw	s0,88(a5)
	c.sub	a2,a4
	c.add	a0,a3
	c.lw	s0,80(a3)
	add	a1,a5,a4
	sub	a4,a0,a5
	sub	a3,a5,a3
	c.lui	a5,00004000
	c.sw	s0,124(a4)
	addi	a5,a5,+0000013D
	c.add	a4,a2
	c.sw	s0,116(a4)
	c.sub	a5,a3
	bgeu	a5,a4,000000002305BE06

l2305BDE6:
	lui	a4,00023089
	addi	a3,s1,-000003F8
	addi	a4,a4,+000007B0
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023062FCC
	addi	s1,s1,+00000600
	c.j	000000002305BAE0

l2305BE06:
	jal	ra,0000000023070D98

l2305BE0A:
	c.lw	s0,48(a5)
	lw	a2,s0,+00000080
	c.lw	s0,100(a0)
	c.lw	a5,44(a1)
	jal	ra,0000000023070C7C
	c.lw	s0,48(a5)
	c.lw	a5,44(a0)
	jal	ra,0000000023032272
	c.lw	s0,48(a5)
	lui	a4,00023089
	c.lui	a3,00001000
	sw	zero,a5,+0000002C
	lw	a6,s0,+00000080
	c.lw	s0,100(a5)
	addi	a4,a4,+000007DC
	addi	a3,a3,-000003EB
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,00000000230630DE
	c.j	000000002305BB18

l2305BE48:
	c.lw	s0,112(a4)
	lw	a5,s0,+00000080
	bgeu	a4,a5,000000002305BB18

l2305BE52:
	lui	a4,0002308A
	addi	a4,a4,-000007E4
	addi	a3,s3,-00000397
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023062FCC
	addi	s1,s1,-00000080
	c.j	000000002305B992

l2305BE72:
	lui	a4,0002308A
	c.lui	a3,00001000
	addi	a4,a4,-000007B8
	addi	a3,a3,-0000041B
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023062FCC
	addi	s1,s1,+00000700
	c.j	000000002305BAE0

;; mbedtls_ssl_handle_message_type: 2305BE94
;;   Called from:
;;     2305D118 (in mbedtls_ssl_read_record)
mbedtls_ssl_handle_message_type proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.lw	a0,108(a4)
	c.li	a5,00000016
	c.mv	s0,a0
	beq	a4,a5,000000002305BEB4

l2305BEA8:
	c.lw	s0,108(a4)
	c.li	a5,00000015
	beq	a4,a5,000000002305BEC6

l2305BEB0:
	c.li	a0,00000000
	c.j	000000002305BEBA

l2305BEB4:
	jal	ra,000000002305B944
	c.beqz	a0,000000002305BEA8

l2305BEBA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2305BEC6:
	c.lw	s0,100(a5)
	lui	a4,00023089
	c.lui	s2,00001000
	lbu	a6,a5,+00000001
	lbu	a5,a5,+00000000
	lui	s1,0002308A
	addi	a4,a4,+0000024C
	addi	a3,s2,-0000006D
	addi	a2,s1,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lw	s0,100(a5)
	c.li	a3,00000002
	lbu	a4,a5,+00000000
	bne	a4,a3,000000002305BF1E

l2305BEFA:
	lbu	a5,a5,+00000001
	lui	a4,00023089
	c.mv	a0,s0
	addi	a4,a4,+00000270
	addi	a3,s2,-00000065
	addi	a2,s1,+00000378
	c.li	a1,00000001
	jal	ra,0000000023062FCC
	c.lui	a0,FFFF9000
	addi	a0,a0,-00000780
	c.j	000000002305BEBA

l2305BF1E:
	c.li	a3,00000001
	bne	a4,a3,000000002305BF6C

l2305BF24:
	lbu	a5,a5,+00000001
	c.bnez	a5,000000002305BF4A

l2305BF2A:
	lui	a4,00023089
	c.mv	a0,s0
	addi	a4,a4,+00000294
	addi	a3,s2,-0000005E
	addi	a2,s1,+00000378
	c.li	a1,00000002
	jal	ra,0000000023062FCC
	c.lui	a0,FFFF8000
	addi	a0,a0,+00000780
	c.j	000000002305BEBA

l2305BF4A:
	addi	a4,zero,+00000064
	bne	a5,a4,000000002305BF6C

l2305BF52:
	lui	a4,00023089
	addi	a4,a4,+000002B0
	addi	a3,s2,-00000056
	addi	a2,s1,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.j	000000002305BEB0

l2305BF6C:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000680
	c.j	000000002305BEBA

;; mbedtls_ssl_send_alert_message: 2305BF74
;;   Called from:
;;     2305C024 (in mbedtls_ssl_send_fatal_handshake_failure)
;;     2305C084 (in mbedtls_ssl_close_notify)
;;     2305C812 (in mbedtls_ssl_read_record_layer)
;;     2306A8F6 (in mbedtls_ssl_handshake_server_step)
;;     2306ADC0 (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_send_alert_message proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.beqz	a0,000000002305C016

l2305BF84:
	c.lw	a0,0(a5)
	c.mv	s0,a0
	c.beqz	a5,000000002305C016

l2305BF8A:
	lui	a4,0002308A
	c.lui	s3,00001000
	lui	s2,0002308A
	c.mv	s1,a2
	c.mv	s4,a1
	addi	a4,a4,-00000284
	addi	a3,s3,-00000026
	addi	a2,s2,+00000378
	c.li	a1,00000002
	jal	ra,0000000023062FCC
	c.li	a5,00000015
	sw	a5,s0,+000000A4
	c.li	a5,00000002
	sw	a5,s0,+000000A8
	lw	a5,s0,+000000A0
	c.mv	a0,s0
	sb	s4,a5,+00000000
	lw	a5,s0,+000000A0
	sb	s1,a5,+00000001
	jal	ra,000000002305AD8E
	c.mv	s1,a0
	c.beqz	a0,000000002305BFFC

l2305BFD0:
	lui	a4,0002308A
	c.mv	a5,a0
	addi	a4,a4,-000002B8
	addi	a3,s3,-0000001D
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002306305C

l2305BFEA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2305BFFC:
	lui	a4,0002308A
	addi	a4,a4,-0000026C
	addi	a3,s3,-00000019
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.j	000000002305BFEA

l2305C016:
	c.lui	s1,FFFF9000
	addi	s1,s1,-00000100
	c.j	000000002305BFEA

;; mbedtls_ssl_send_fatal_handshake_failure: 2305C01E
;;   Called from:
;;     2306ABDA (in mbedtls_ssl_handshake_server_step)
;;     2306AE10 (in mbedtls_ssl_handshake_server_step)
;;     2306B31E (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_send_fatal_handshake_failure proc
	addi	a2,zero,+00000028
	c.li	a1,00000002
	jal	zero,000000002305BF74

;; mbedtls_ssl_close_notify: 2305C028
;;   Called from:
;;     23050BB8 (in iot_tls_disconnect)
mbedtls_ssl_close_notify proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.beqz	a0,000000002305C0D6

l2305C038:
	c.lw	a0,0(a5)
	c.mv	s1,a0
	c.beqz	a5,000000002305C0D6

l2305C03E:
	lui	s2,0002308A
	lui	a4,00023089
	c.lui	s3,00002000
	addi	a4,a4,-00000190
	addi	a3,s3,-00000498
	addi	a2,s2,+00000378
	c.li	a1,00000002
	jal	ra,0000000023062FCC
	lw	a5,s1,+000000AC
	c.mv	s4,s2
	c.beqz	a5,000000002305C076

l2305C062:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002305A0D0

l2305C076:
	c.lw	s1,4(a4)
	c.li	a5,00000010
	bne	a4,a5,000000002305C0B8

l2305C07E:
	c.li	a2,00000000
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,000000002305BF74
	c.mv	s0,a0
	c.beqz	a0,000000002305C0B8

l2305C08C:
	lui	a4,00023089
	c.mv	a5,a0
	addi	a4,a4,-00000178
	addi	a3,s3,-0000048D
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,000000002306305C

l2305C0A6:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2305C0B8:
	lui	a4,00023089
	c.lui	a3,00002000
	addi	a4,a4,-00000158
	addi	a3,a3,-00000488
	addi	a2,s4,+00000378
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,0000000023062FCC
	c.li	s0,00000000
	c.j	000000002305C0A6

l2305C0D6:
	c.lui	s0,FFFF9000
	addi	s0,s0,-00000100
	c.j	000000002305C0A6

;; mbedtls_ssl_write_certificate: 2305C0DE
mbedtls_ssl_write_certificate proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.lw	a0,64(a5)
	lui	s1,0002308A
	lui	a4,0002308A
	lw	s2,a5,+00000000
	c.lui	s3,00001000
	addi	a4,a4,-00000160
	addi	a3,s3,+00000025
	addi	a2,s1,+00000378
	c.li	a1,00000002
	c.mv	s0,a0
	jal	ra,0000000023062FCC
	lbu	a5,s2,+0000000A
	c.li	a4,00000006
	c.mv	s2,s1
	c.addi	a5,FFFFFFFB
	andi	a5,a5,+000000FF
	bltu	a4,a5,000000002305C15C

l2305C120:
	addi	a4,zero,+0000004B
	srl	a5,a4,a5
	c.andi	a5,00000001
	c.beqz	a5,000000002305C15C

l2305C12C:
	lui	a4,0002308A
	addi	a2,s1,+00000378
	addi	a4,a4,-00000148
	addi	a3,s3,+0000002C
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lw	s0,4(a5)
	c.li	s1,00000000
	c.addi	a5,00000001
	c.sw	s0,4(a5)

l2305C14C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2305C15C:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000001
	c.bnez	a5,000000002305C18E

l2305C166:
	lw	s1,s0,+000000B0
	c.bnez	s1,000000002305C1B8

l2305C16C:
	lui	a4,0002308A
	c.lui	a3,00001000
	addi	a4,a4,-00000148
	addi	a3,a3,+00000036
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lw	s0,4(a5)
	c.addi	a5,00000001
	c.sw	s0,4(a5)
	c.j	000000002305C14C

l2305C18E:
	c.mv	a0,s0
	jal	ra,00000000230596DA
	c.bnez	a0,000000002305C1B8

l2305C196:
	lui	a4,0002308A
	c.lui	a3,00001000
	addi	a4,a4,-0000012C
	addi	a3,a3,+00000053
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023062FCC
	addi	s1,s1,-00000580
	c.j	000000002305C14C

l2305C1B8:
	c.mv	a0,s0
	jal	ra,00000000230596DA
	lui	a4,0002308A
	c.lui	a3,00001000
	c.mv	a5,a0
	addi	a4,a4,-00000110
	addi	a3,a3,+00000059
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,0000000023063384
	c.mv	a0,s0
	jal	ra,00000000230596DA
	c.lui	s3,00004000
	c.mv	s1,a0
	c.li	a4,00000007
	c.addi	s3,FFFFFFFD

l2305C1E8:
	c.bnez	s1,000000002305C250

l2305C1EA:
	lw	a3,s0,+000000A0
	addi	a5,a4,-00000007
	srli	a2,a5,00000010
	sb	a2,a3,+00000004
	lw	a3,s0,+000000A0
	srli	a2,a5,00000008
	c.mv	a0,s0
	sb	a2,a3,+00000005
	lw	a3,s0,+000000A0
	sb	a5,a3,+00000006
	c.li	a5,00000016
	sw	a5,s0,+000000A4
	lw	a5,s0,+000000A0
	sw	a4,s0,+000000A8
	c.li	a4,0000000B
	sb	a4,a5,+00000000
	c.lw	s0,4(a5)
	c.addi	a5,00000001
	c.sw	s0,4(a5)
	jal	ra,000000002305AD8E
	c.mv	s1,a0
	c.beqz	a0,000000002305C2C4

l2305C232:
	lui	a4,0002308A
	c.lui	a3,00001000
	c.mv	a5,a0
	addi	a4,a4,-000002B8
	addi	a3,a3,+00000089
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002306305C
	c.j	000000002305C14C

l2305C250:
	c.lw	s1,4(a2)
	addi	a0,a4,+00000003
	sub	a3,s3,a4
	add	a5,a0,a2
	bgeu	a3,a2,000000002305C286

l2305C262:
	lui	a4,0002308A
	c.lui	a3,00001000
	c.lui	a6,00004000
	addi	a4,a4,-00000100
	addi	a3,a3,+0000006D
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023062FCC
	addi	s1,s1,-00000500
	c.j	000000002305C14C

l2305C286:
	lw	a3,s0,+000000A0
	srli	a1,a2,00000010
	c.swsp	a5,00000084
	c.add	a3,a4
	sb	a1,a3,+00000000
	lw	a3,s0,+000000A0
	srli	a1,a2,00000008
	c.add	a3,a4
	sb	a1,a3,+00000001
	lw	a3,s0,+000000A0
	c.add	a4,a3
	sb	a2,a4,+00000002
	lw	a4,s0,+000000A0
	c.lw	s1,8(a1)
	c.add	a0,a4
	jal	ra,0000000023070C7C
	c.lwsp	a2,000000E4
	lw	s1,s1,+00000130
	c.mv	a4,a5
	c.j	000000002305C1E8

l2305C2C4:
	lui	a4,0002308A
	c.lui	a3,00001000
	addi	a4,a4,-000000E0
	addi	a3,a3,+0000008D
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.j	000000002305C14C

;; mbedtls_ssl_write_change_cipher_spec: 2305C2E0
mbedtls_ssl_write_change_cipher_spec proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	a4,0002308A
	c.lui	s3,00001000
	lui	s2,0002308A
	addi	a4,a4,-000000C8
	addi	a3,s3,+000001B4
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a0
	jal	ra,0000000023062FCC
	c.li	a5,00000014
	lw	a4,s0,+000000A0
	sw	a5,s0,+000000A4
	c.li	a5,00000001
	sw	a5,s0,+000000A8
	sb	a5,a4,+00000000
	c.lw	s0,4(a5)
	c.mv	a0,s0
	c.addi	a5,00000001
	c.sw	s0,4(a5)
	jal	ra,000000002305AD8E
	c.mv	s1,a0
	c.beqz	a0,000000002305C358

l2305C32E:
	lui	a4,0002308A
	c.mv	a5,a0
	addi	a4,a4,-000002B8
	addi	a3,s3,+000001BE
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002306305C

l2305C348:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2305C358:
	lui	a4,0002308A
	addi	a4,a4,-000000AC
	addi	a3,s3,+000001C2
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.j	000000002305C348

;; mbedtls_ssl_write_finished: 2305C372
mbedtls_ssl_write_finished proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	a4,0002308A
	c.lui	a3,00001000
	lui	s1,0002308A
	addi	a4,a4,-00000090
	c.li	a1,00000002
	addi	a3,a3,+00000408
	addi	a2,s1,+00000378
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.swsp	s2,00000000
	jal	ra,0000000023062FCC
	c.lw	s0,12(a4)
	c.li	a5,00000001
	lw	a1,s0,+0000009C
	bge	a5,a4,000000002305C3B0

l2305C3A6:
	c.lw	s0,64(a4)
	c.lw	a4,12(a5)
	c.lw	a4,16(a4)
	c.sub	a5,a4
	c.add	a1,a5

l2305C3B0:
	c.lw	s0,0(a5)
	sw	a1,s0,+000000A0
	c.mv	a0,s0
	c.lw	a5,116(a2)
	c.lw	s0,48(a5)
	c.addi	a1,00000004
	c.andi	a2,00000001
	lw	a5,a5,+000000CC
	c.jalr	a5
	c.lw	s0,12(a4)
	addi	a5,zero,+00000024
	c.beqz	a4,000000002305C3D0

l2305C3CE:
	c.li	a5,0000000C

l2305C3D0:
	c.addi	a5,00000004
	sw	a5,s0,+000000A8
	c.li	a5,00000016
	sw	a5,s0,+000000A4
	lw	a5,s0,+000000A0
	c.li	a4,00000014
	sb	a4,a5,+00000000
	c.lw	s0,48(a5)
	lw	a5,a5,+00000148
	c.beqz	a5,000000002305C4A6

l2305C3EE:
	c.lw	s0,0(a4)
	lhu	a5,a4,+00000074
	c.andi	a5,00000001
	c.beqz	a5,000000002305C3FE

l2305C3F8:
	c.li	a5,0000000A

l2305C3FA:
	c.sw	s0,4(a5)
	c.j	000000002305C40A

l2305C3FE:
	c.li	a5,0000000F
	c.sw	s0,4(a5)
	lhu	a5,a4,+00000074
	c.andi	a5,00000001
	c.bnez	a5,000000002305C3F8

l2305C40A:
	lui	a4,0002308A
	c.lui	s2,00001000
	addi	a4,a4,-0000007C
	addi	a3,s2,+0000043E
	addi	a2,s1,+00000378
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002305C4AC

l2305C42E:
	c.lw	s0,48(a5)
	c.lw	s0,56(a4)
	c.li	a2,00000008
	c.sw	a5,68(a4)
	c.lw	s0,48(a0)
	lw	a1,s0,+00000090
	addi	a0,a0,+00000048
	jal	ra,0000000023070C7C
	lw	a0,s0,+00000090
	c.li	a2,00000006
	c.li	a1,00000000
	c.addi	a0,00000002
	jal	ra,0000000023070EB8
	lw	a4,s0,+00000090
	lbu	a5,a4,+00000001
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,a4,+00000001
	c.bnez	a5,000000002305C4B8

l2305C466:
	lw	a4,s0,+00000090
	lbu	a5,a4,+00000000
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,a4,+00000000
	c.bnez	a5,000000002305C4B8

l2305C47A:
	lui	a4,0002308A
	addi	a3,s2,+00000454
	addi	a4,a4,-00000048
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s2,FFFF9000
	jal	ra,0000000023062FCC
	addi	s2,s2,+00000480

l2305C498:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s2
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2305C4A6:
	c.lw	s0,4(a5)
	c.addi	a5,00000001
	c.j	000000002305C3FA

l2305C4AC:
	lw	a0,s0,+00000090
	c.li	a2,00000008
	c.li	a1,00000000
	jal	ra,0000000023070EB8

l2305C4B8:
	c.lw	s0,64(a5)
	c.sw	s0,56(a5)
	c.lw	s0,44(a5)
	c.sw	s0,36(a5)
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002305C4D0

l2305C4CA:
	c.mv	a0,s0
	jal	ra,000000002305A2A4

l2305C4D0:
	c.mv	a0,s0
	jal	ra,000000002305AD8E
	c.mv	s2,a0
	c.beqz	a0,000000002305C4F8

l2305C4DA:
	lui	a4,0002308A
	c.lui	a3,00001000
	c.mv	a5,a0
	addi	a4,a4,-000002B8
	addi	a3,a3,+00000471
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002306305C
	c.j	000000002305C498

l2305C4F8:
	lui	a4,0002308A
	c.lui	a3,00001000
	addi	a4,a4,-00000030
	addi	a3,a3,+00000475
	addi	a2,s1,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.j	000000002305C498

;; mbedtls_ssl_write: 2305C514
;;   Called from:
;;     23050A64 (in iot_tls_write)
mbedtls_ssl_write proc
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	lui	a4,0002308A
	c.lui	s5,00002000
	lui	s4,0002308A
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s6,00000000
	c.mv	s1,a0
	c.mv	s6,a1
	c.mv	s2,a2
	addi	a4,a4,-00000214
	addi	a3,s5,-000004C3
	addi	a2,s4,+00000378
	c.li	a1,00000002
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	jal	ra,0000000023062FCC
	beq	s1,zero,000000002305C66C

l2305C54C:
	c.lw	s1,0(a5)
	beq	a5,zero,000000002305C66C

l2305C552:
	c.lw	s1,4(a4)
	c.li	a5,00000010
	c.mv	s3,s4
	beq	a4,a5,000000002305C596

l2305C55C:
	c.mv	a0,s1
	jal	ra,000000002305A5EA
	c.mv	s0,a0
	c.beqz	a0,000000002305C596

l2305C566:
	lui	a4,0002308A
	c.mv	a5,a0
	addi	a4,a4,-00000208
	addi	a3,s5,-000004B2
	addi	a2,s4,+00000378
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,000000002306305C

l2305C580:
	c.mv	a0,s0
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

l2305C596:
	c.mv	a0,s1
	jal	ra,000000002305A56C
	bgeu	a0,s2,000000002305C5EC

l2305C5A0:
	c.lw	s1,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002305C5EA

l2305C5AA:
	lui	a4,0002308A
	c.lui	a3,00002000
	c.mv	a6,a0
	c.mv	a5,s2
	addi	a4,a4,-000001F0
	addi	a3,a3,-00000519

l2305C5BC:
	addi	a2,s3,+00000378
	c.li	a1,00000001
	c.mv	a0,s1
	c.lui	s0,FFFF9000
	jal	ra,0000000023062FCC
	addi	s0,s0,-00000100

l2305C5CE:
	lui	a4,0002308A
	c.lui	a3,00002000
	addi	a4,a4,-0000016C
	addi	a3,a3,-000004A7
	addi	a2,s3,+00000378
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,0000000023062FCC
	c.j	000000002305C580

l2305C5EA:
	c.mv	s2,a0

l2305C5EC:
	lw	a5,s1,+000000AC
	c.beqz	a5,000000002305C61A

l2305C5F2:
	c.mv	a0,s1
	jal	ra,000000002305A0D0
	c.mv	s0,a0
	c.beqz	a0,000000002305C668

l2305C5FC:
	lui	a4,0002308A
	c.lui	a3,00002000
	c.mv	a5,a0
	addi	a4,a4,+000001D8
	addi	a3,a3,-0000050C

l2305C60C:
	addi	a2,s3,+00000378
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,000000002306305C
	c.j	000000002305C5CE

l2305C61A:
	c.lui	a6,00004000
	addi	a6,a6,+00000130
	bgeu	a6,s2,000000002305C636

l2305C624:
	lui	a4,0002308A
	c.lui	a3,00002000
	c.mv	a5,s2
	addi	a4,a4,-000001A8
	addi	a3,a3,-00000502
	c.j	000000002305C5BC

l2305C636:
	lw	a0,s1,+000000A0
	c.li	a5,00000017
	sw	a5,s1,+000000A4
	c.mv	a2,s2
	c.mv	a1,s6
	sw	s2,s1,+000000A8
	jal	ra,0000000023070C7C
	c.mv	a0,s1
	jal	ra,000000002305AD8E
	c.mv	s0,a0
	c.beqz	a0,000000002305C668

l2305C656:
	lui	a4,0002308A
	c.lui	a3,00002000
	c.mv	a5,a0
	addi	a4,a4,-000002B8
	addi	a3,a3,-000004F8
	c.j	000000002305C60C

l2305C668:
	c.mv	s0,s2
	c.j	000000002305C5CE

l2305C66C:
	c.lui	s0,FFFF9000
	addi	s0,s0,-00000100
	c.j	000000002305C580

;; mbedtls_ssl_read_version: 2305C674
;;   Called from:
;;     2305C7C2 (in mbedtls_ssl_read_record_layer)
;;     2306A610 (in mbedtls_ssl_handshake_server_step)
;;     2306A89E (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_read_version proc
	c.li	a5,00000001
	lbu	a4,a3,+00000000
	bne	a2,a5,000000002305C69C

l2305C67E:
	addi	a5,zero,+00000101
	c.sub	a5,a4
	c.sw	a0,0(a5)
	lbu	a4,a3,+00000001
	addi	a5,zero,+00000100
	c.sub	a5,a4
	beq	a5,a2,000000002305C698

l2305C694:
	c.sw	a1,0(a5)
	c.jr	ra

l2305C698:
	c.li	a5,00000002
	c.j	000000002305C694

l2305C69C:
	c.sw	a0,0(a4)
	lbu	a5,a3,+00000001
	c.j	000000002305C694

;; mbedtls_ssl_read_record_layer: 2305C6A4
;;   Called from:
;;     2305D0E2 (in mbedtls_ssl_read_record)
mbedtls_ssl_read_record_layer proc
	c.addi16sp	FFFFFF60
	c.swsp	s0,0000004C
	c.swsp	s1,000000C8
	c.swsp	ra,000000CC
	c.swsp	s2,00000048
	c.swsp	s3,000000C4
	c.swsp	s4,00000044
	c.swsp	s5,000000C0
	c.swsp	s6,00000040
	c.swsp	s7,000000BC
	c.swsp	s8,0000003C
	c.swsp	s9,000000B8
	c.swsp	s10,00000038
	c.swsp	s11,000000B4
	lw	a1,a0,+00000080
	c.mv	s0,a0
	lui	s1,0002308A
	c.beqz	a1,000000002305C720

l2305C6CC:
	c.lw	a0,112(a2)
	bgeu	a1,a2,000000002305C720

l2305C6D2:
	c.sub	a2,a1
	c.sw	a0,112(a2)
	c.lw	a0,100(a0)
	c.li	s6,00000000
	c.add	a1,a0
	jal	ra,0000000023070D98
	lw	a6,s0,+00000070
	c.lw	s0,100(a5)
	lui	a4,0002308A
	c.lui	a3,00001000
	addi	a4,a4,-000006C8
	addi	a3,a3,-00000129
	addi	a2,s1,+00000378
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,00000000230630DE

l2305C700:
	c.lwsp	t5,00000020
	c.lwsp	s10,00000004
	c.mv	a0,s6
	c.lwsp	s6,00000024
	c.lwsp	s2,00000048
	c.lwsp	a4,00000068
	c.lwsp	a0,00000088
	c.lwsp	t1,000000A8
	c.lwsp	sp,000000C8
	c.lwsp	t4,000001F8
	c.lwsp	s9,0000011C
	c.lwsp	s5,0000013C
	c.lwsp	a7,0000015C
	c.lwsp	a3,0000017C
	c.addi16sp	000000A0
	c.jr	ra

l2305C720:
	c.lui	s3,FFFFA000
	c.lui	s4,00004000
	sw	zero,s0,+00000080
	addi	s8,s3,-00000780
	lui	s9,0002308A
	lui	s10,0002308A
	addi	s11,s4,+0000013D

l2305C738:
	c.lw	s0,0(a0)
	jal	ra,00000000230599A4
	c.mv	a1,a0
	c.mv	a0,s0
	jal	ra,000000002305B5DA
	c.mv	s6,a0
	c.beqz	a0,000000002305C768

l2305C74A:
	lui	a4,0002308A
	c.lui	a3,00001000
	c.mv	a5,a0
	addi	a4,a4,-000006AC
	addi	a3,a3,-00000119

l2305C75A:
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002306305C
	c.j	000000002305C700

l2305C768:
	c.lw	s0,0(a0)
	c.lui	s2,00001000
	addi	s5,sp,+0000002C
	jal	ra,00000000230599A4
	c.lw	s0,88(a5)
	lui	a4,0002308A
	c.mv	a6,a0
	addi	a4,a4,-00000694
	addi	a3,s2,-0000024F
	addi	a2,s1,+00000378
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,00000000230630DE
	c.lw	s0,88(a3)
	c.lw	s0,92(a4)
	c.addi4spn	a1,00000030
	lbu	a5,a3,+00000000
	c.mv	a0,s5
	c.addi	a3,00000001
	c.sw	s0,108(a5)
	lbu	a5,a4,+00000001
	lbu	a2,a4,+00000000
	c.slli	a5,08
	c.or	a5,a2
	slli	a4,a5,00000008
	c.srli	a5,00000008
	c.or	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	c.sw	s0,112(a5)
	c.lw	s0,0(a5)
	c.lw	a5,116(a2)
	c.srli	a2,00000001
	c.andi	a2,00000001
	jal	ra,000000002305C674
	c.lw	s0,112(a5)
	c.lwsp	a6,00000138
	c.lwsp	a2,00000118
	c.swsp	a5,00000000
	c.lw	s0,108(a5)
	lui	a4,0002308A
	addi	a4,a4,-00000680
	addi	a3,s2,-00000246
	addi	a2,s1,+00000378
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lw	s0,108(a4)
	c.li	a5,00000003
	addi	a3,a4,-00000014
	bgeu	a5,a3,000000002305C85A

l2305C7F4:
	lui	a4,0002308A
	addi	a4,a4,-00000644
	addi	a3,s2,-0000023E
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.li	a2,0000000A
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,000000002305BF74
	c.mv	s6,a0
	c.bnez	a0,000000002305C820

l2305C81A:
	c.lui	t1,FFFF9000
	addi	s6,t1,-00000200

l2305C820:
	c.lw	s0,0(a0)
	lhu	a5,a0,+00000074
	c.andi	a5,00000002
	beq	a5,zero,000000002305C700

l2305C82C:
	beq	s6,s8,000000002305C700

l2305C830:
	addi	a5,s3,-00000700
	bne	s6,a5,000000002305C9C0

l2305C838:
	jal	ra,00000000230599A4
	c.lw	s0,112(a5)
	c.lui	a3,00001000
	addi	a4,s10,-0000056C
	c.add	a0,a5
	c.sw	s0,124(a0)
	addi	a3,a3,-00000108

l2305C84C:
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.j	000000002305C738

l2305C85A:
	c.lw	s0,8(a3)
	c.lwsp	a2,000001F4
	beq	a3,a5,000000002305C87C

l2305C862:
	lui	a4,0002308A
	addi	a4,a4,-00000630
	addi	a3,s2,-0000022F

l2305C86E:
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.j	000000002305C81A

l2305C87C:
	c.lw	s0,0(a0)
	c.lwsp	a6,000001F4
	lbu	a3,a0,+00000071
	bge	a3,a5,000000002305C896

l2305C888:
	lui	a4,0002308A
	addi	a4,a4,-00000618
	addi	a3,s2,-00000229
	c.j	000000002305C86E

l2305C896:
	c.lw	s0,100(a5)
	c.lw	s0,80(a3)
	lw	s6,s0,+00000070
	c.sub	a5,a3
	sub	a5,s11,a5
	bgeu	a5,s6,000000002305C8B6

l2305C8A8:
	lui	a4,0002308A
	addi	a4,a4,-00000600
	addi	a3,s2,-00000221
	c.j	000000002305C86E

l2305C8B6:
	c.lw	s0,52(a5)
	c.bnez	a5,000000002305C8D0

l2305C8BA:
	addi	a5,s6,-00000001
	bltu	a5,s4,000000002305C902

l2305C8C2:
	lui	a4,0002308A
	addi	a4,a4,-00000600
	addi	a3,s2,-00000217
	c.j	000000002305C86E

l2305C8D0:
	c.lw	a5,8(a5)
	bgeu	s6,a5,000000002305C8E4

l2305C8D6:
	lui	a4,0002308A
	addi	a4,a4,-00000600
	addi	a3,s2,-0000020F
	c.j	000000002305C86E

l2305C8E4:
	c.lw	s0,12(a3)
	bge	zero,a3,000000002305C902

l2305C8EA:
	addi	a3,s4,+00000100
	c.add	a5,a3
	bgeu	a5,s6,000000002305C902

l2305C8F4:
	lui	a4,0002308A
	addi	a4,a4,-00000600
	addi	a3,s2,-000001FA
	c.j	000000002305C86E

l2305C902:
	lhu	a5,a0,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002305C99C

l2305C90A:
	c.lw	s0,84(a3)
	lbu	a5,a3,+00000001
	lbu	a6,a3,+00000000
	c.slli	a5,08
	or	a5,a5,a6
	slli	a6,a5,00000008
	c.srli	a5,00000008
	or	a5,a6,a5
	slli	a6,a5,00000010
	c.li	a5,00000014
	srli	a6,a6,00000010
	bne	a4,a5,000000002305C95A

l2305C932:
	c.lw	s0,4(a5)
	c.addi	a5,FFFFFFF6
	c.andi	a5,FFFFFFFD
	c.beqz	a5,000000002305C978

l2305C93A:
	lui	a4,0002308A
	c.lui	a3,00001000
	addi	a4,a4,-000005EC
	addi	a3,a3,-000001E4

l2305C948:
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023062FCC

l2305C954:
	addi	s6,s3,-00000700
	c.j	000000002305C820

l2305C95A:
	c.li	a5,00000017
	bne	a4,a5,000000002305C978

l2305C960:
	c.lw	s0,4(a4)
	c.li	a5,00000010
	beq	a4,a5,000000002305C978

l2305C968:
	lui	a4,0002308A
	c.lui	a3,00001000
	addi	a4,a4,-000005C4
	addi	a3,a3,-000001D6
	c.j	000000002305C948

l2305C978:
	lhu	a5,s0,+00000078
	beq	a6,a5,000000002305C99C

l2305C980:
	lui	a4,0002308A
	c.lui	a3,00001000
	addi	a4,a4,-000005A0
	addi	a3,a3,-000001CD
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.j	000000002305C954

l2305C99C:
	jal	ra,00000000230599A4
	add	a1,a0,s6
	c.mv	a0,s0
	jal	ra,000000002305B5DA
	c.mv	s6,a0
	c.beqz	a0,000000002305C9D4

l2305C9AE:
	lui	a4,0002308A
	c.lui	a3,00001000
	c.mv	a5,a0
	addi	a4,a4,-000006AC
	addi	a3,a3,-000000EF
	c.j	000000002305C75A

l2305C9C0:
	c.lui	a3,00001000
	sw	zero,s0,+0000007C
	sw	zero,s0,+00000074
	addi	a4,s9,-00000544
	addi	a3,a3,-000000FF
	c.j	000000002305C84C

l2305C9D4:
	lw	s7,s0,+00000000
	lw	s2,s0,+00000070
	lhu	a4,s7,+00000074
	c.andi	a4,00000002
	c.beqz	a4,000000002305CA5A

l2305C9E4:
	c.mv	a0,s7
	jal	ra,00000000230599A4
	c.add	a0,s2
	c.sw	s0,124(a0)

l2305C9EE:
	c.mv	a0,s7
	jal	ra,00000000230599A4
	c.lw	s0,88(a5)
	lui	a4,0002308A
	c.lui	a3,00001000
	add	a6,a0,s2
	addi	a4,a4,-00000520
	addi	a3,a3,-0000019D
	addi	a2,s1,+00000378
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,00000000230630DE
	c.lw	s0,52(a5)
	beq	a5,zero,000000002305D038

l2305CA1A:
	lui	a4,0002308A
	addi	a4,a4,-00000504
	addi	a3,zero,+00000642
	addi	a2,s1,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lw	s0,32(a5)
	c.beqz	a5,000000002305CA3A

l2305CA36:
	c.lw	s0,52(a5)
	c.bnez	a5,000000002305CA60

l2305CA3A:
	lui	a4,00023089
	addi	a4,a4,-000000EC
	addi	a3,zero,+00000646

l2305CA46:
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lui	t1,FFFF9000
	addi	s6,t1,+00000400
	c.j	000000002305CE16

l2305CA5A:
	sw	zero,s0,+00000074
	c.j	000000002305C9EE

l2305CA60:
	lw	a3,a5,+00000090
	c.li	a4,00000000
	c.beqz	a3,000000002305CA6C

l2305CA68:
	lbu	a4,a3,+00000001

l2305CA6C:
	lw	s2,s0,+00000070
	lw	a6,a5,+00000008
	bgeu	s2,a6,000000002305CA94

l2305CA78:
	lui	a4,0002308A
	c.mv	a5,s2
	addi	a4,a4,-000004F4
	addi	a3,zero,+0000064F

l2305CA86:
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.j	000000002305CBE4

l2305CA94:
	addi	a3,a4,-00000006
	andi	a3,a3,+000000FD
	bne	a3,zero,000000002305CD6E

l2305CAA0:
	c.lw	a5,0(a4)
	c.li	a7,00000008
	lbu	a4,a4,+0000001C
	c.andi	a4,00000002
	c.bnez	a4,000000002305CAAE

l2305CAAC:
	c.li	a7,00000010

l2305CAAE:
	c.lw	a5,12(a4)
	c.lw	a5,16(a5)
	sub	a6,a4,a5
	add	a3,a6,a7
	bgeu	s2,a3,000000002305CADA

l2305CABE:
	lui	a4,0002308A
	c.mv	a5,s2
	addi	a4,a4,-000004D4
	addi	a3,zero,+0000067F

l2305CACC:
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.j	000000002305CBE4

l2305CADA:
	c.add	s2,a5
	sub	s2,s2,a4
	c.lw	s0,84(a1)
	sub	s2,s2,a7
	c.li	a2,00000008
	sw	s2,s0,+00000070
	c.addi4spn	a0,00000030
	c.swsp	a7,0000000C
	lw	s7,s0,+00000064
	jal	ra,0000000023070C7C
	c.lw	s0,108(a5)
	c.lw	s0,12(a1)
	c.lw	s0,8(a0)
	sb	a5,sp,+00000038
	c.lw	s0,0(a5)
	addi	a3,sp,+00000039
	c.lw	a5,116(a2)
	c.srli	a2,00000001
	c.andi	a2,00000001
	jal	ra,000000002305AD62
	c.lw	s0,112(a5)
	c.li	a6,0000000D
	addi	a3,zero,+00000690
	srli	a4,a5,00000008
	sb	a4,sp,+0000003B
	lui	a4,0002308A
	addi	a4,a4,+00000060
	sb	a5,sp,+0000003C
	addi	a2,s1,+00000378
	c.addi4spn	a5,00000030
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,00000000230630DE
	c.lw	s0,52(a5)
	c.lw	s0,96(a1)
	c.lw	a5,16(a0)
	c.lw	a5,12(a2)
	addi	a5,a5,+00000028
	c.sub	a2,a0
	c.add	a0,a5
	jal	ra,0000000023070C7C
	c.lw	s0,52(a5)
	lui	a4,0002308A
	addi	a4,a4,+00000080
	lw	a6,a5,+0000000C
	addi	a3,zero,+00000697
	addi	a5,a5,+00000028
	addi	a2,s1,+00000378
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,00000000230630DE
	c.lwsp	s8,00000028
	add	t3,s7,s2
	lui	a4,0002308A
	c.mv	a6,a7
	c.mv	a5,t3
	addi	a4,a4,-000004A0
	addi	a3,zero,+00000698
	addi	a2,s1,+00000378
	c.li	a1,00000004
	c.mv	a0,s0
	c.swsp	a7,0000008C
	c.swsp	t3,0000000C
	jal	ra,00000000230630DE
	c.lw	s0,52(a0)
	c.lwsp	t3,00000028
	c.lwsp	s8,0000008C
	c.lw	a0,12(a2)
	addi	a1,a0,+00000028
	c.swsp	a7,00000004
	c.swsp	s5,00000000
	c.swsp	t3,00000080
	c.mv	a7,s7
	c.mv	a6,s2
	c.mv	a5,s7
	c.li	a4,0000000D
	c.addi4spn	a3,00000030
	addi	a0,a0,+00000090
	jal	ra,0000000023062D2E
	c.mv	s5,a0
	c.beqz	a0,000000002305CBEC

l2305CBC0:
	lui	a4,0002308A
	c.mv	a5,a0
	addi	a4,a4,-00000494
	addi	a3,zero,+000006A5
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002306305C
	addi	a5,s3,-00000300
	c.mv	s6,s5
	bne	s5,a5,000000002305CE16

l2305CBE4:
	c.lui	t1,FFFF9000
	addi	s6,t1,-00000180
	c.j	000000002305CE16

l2305CBEC:
	c.lwsp	a2,000001F4
	beq	s2,a5,000000002305CC00

l2305CBF2:
	lui	a4,00023089
	addi	a4,a4,-000000EC
	addi	a3,zero,+000006B0
	c.j	000000002305CA46

l2305CC00:
	c.li	s2,00000001
	c.li	s5,00000000
	c.li	s7,00000001

l2305CC06:
	lw	a6,s0,+00000070
	c.lw	s0,100(a5)
	lui	a4,0002308A
	addi	a4,a4,-00000418
	addi	a3,zero,+00000792
	addi	a2,s1,+00000378
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,00000000230630DE
	bne	s7,zero,000000002305CD3C

l2305CC28:
	c.lw	s0,52(a4)
	c.lw	s0,112(a5)
	c.addi4spn	a0,00000030
	c.lw	a4,20(a4)
	c.sub	a5,a4
	c.lw	s0,92(a4)
	c.sw	s0,112(a5)
	c.srli	a5,00000008
	sb	a5,a4,+00000000
	c.lw	s0,92(a5)
	c.lw	s0,112(a4)
	sb	a4,a5,+00000001
	c.lw	s0,52(a4)
	c.lw	s0,112(a5)
	c.lw	s0,100(a1)
	c.lw	a4,20(a2)
	c.add	a1,a5
	jal	ra,0000000023070C7C
	c.lw	s0,12(a5)
	bge	zero,a5,000000002305CF68

l2305CC58:
	c.lw	s0,112(a5)
	c.lw	s0,52(a0)
	c.lw	s0,84(a1)
	c.addi	a5,00000015
	c.add	s5,a5
	srli	s5,s5,00000006
	c.srli	a5,00000006
	sub	s5,s5,a5
	addi	a5,zero,+000000FF
	add	a5,s2,a5
	c.li	a2,00000008
	addi	a0,a0,+00000044
	and	s5,a5,s5
	jal	ra,0000000023065924
	c.lw	s0,52(a0)
	c.lw	s0,88(a1)
	c.li	a2,00000003
	addi	a0,a0,+00000044
	jal	ra,0000000023065924
	c.lw	s0,52(a0)
	c.lw	s0,92(a1)
	c.li	a2,00000002
	addi	a0,a0,+00000044
	jal	ra,0000000023065924
	c.lw	s0,52(a0)
	c.lw	s0,112(a2)
	c.lw	s0,100(a1)
	addi	a0,a0,+00000044
	c.addi	s5,00000001
	jal	ra,0000000023065924
	c.lw	s0,112(a5)
	c.lw	s0,100(a1)
	c.lw	s0,52(a0)
	c.add	a1,a5
	addi	a0,a0,+00000044
	jal	ra,0000000023065948
	c.li	a5,00000000

l2305CCC0:
	c.lw	s0,52(a0)
	c.lw	s0,100(a1)
	c.swsp	a5,0000000C
	addi	a0,a0,+00000044
	jal	ra,00000000230659EC
	c.lwsp	s8,000000E4
	c.addi	a5,00000001
	bltu	a5,s5,000000002305CCC0

l2305CCD6:
	c.lw	s0,52(a0)
	addi	a0,a0,+00000044
	jal	ra,00000000230659AC
	c.lw	s0,52(a5)
	lui	a4,0002308A
	addi	a4,a4,-000003FC
	lw	a6,a5,+00000014
	addi	a3,zero,+000007DA
	c.addi4spn	a5,00000030
	addi	a2,s1,+00000378
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,00000000230630DE
	c.lw	s0,52(a3)
	c.lw	s0,100(a4)
	c.lw	s0,112(a5)
	lw	a6,a3,+00000014
	addi	a2,s1,+00000378
	c.add	a5,a4
	lui	a4,0002308A
	addi	a4,a4,+00000050
	c.li	a1,00000004
	c.mv	a0,s0
	addi	a3,zero,+000007DC
	jal	ra,00000000230630DE
	c.lw	s0,52(a5)
	c.lw	s0,100(a1)
	c.lw	s0,112(a0)
	c.lw	a5,20(a2)
	c.li	a4,00000000
	c.li	a5,00000000

l2305CD30:
	bne	a2,a5,000000002305CF4A

l2305CD34:
	bne	a4,zero,000000002305CBE4

l2305CD38:
	beq	s2,zero,000000002305CBE4

l2305CD3C:
	c.lw	s0,112(a5)
	bne	a5,zero,000000002305CF76

l2305CD42:
	lw	a5,s0,+00000084
	c.li	a4,00000003
	c.addi	a5,00000001
	sw	a5,s0,+00000084
	bge	a4,a5,000000002305CF7A

l2305CD52:
	lui	a4,0002308A
	c.lui	a3,00001000
	addi	a4,a4,-000003EC
	addi	a3,a3,-000007FE
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.j	000000002305CBE4

l2305CD6E:
	c.li	a3,00000002
	bne	a4,a3,000000002305CF3C

l2305CD74:
	c.swsp	zero,00000018
	lw	a6,a5,+0000000C
	c.lw	s0,12(a3)
	c.li	a2,00000001
	c.mv	a4,a6
	blt	a2,a3,000000002305CD86

l2305CD84:
	c.li	a4,00000000

l2305CD86:
	lw	a7,a5,+00000014
	add	a5,a4,a6
	bltu	s2,a5,000000002305CD9C

l2305CD92:
	addi	a5,a7,+00000001
	c.add	a5,a4
	bgeu	s2,a5,000000002305CDAC

l2305CD9C:
	lui	a4,0002308A
	c.mv	a5,s2
	addi	a4,a4,-00000478
	addi	a3,zero,+000006D2
	c.j	000000002305CACC

l2305CDAC:
	and	s5,s2,a6
	beq	s5,zero,000000002305CDC4

l2305CDB4:
	lui	a4,0002308A
	c.mv	a5,s2
	addi	a4,a4,-00000438
	addi	a3,zero,+0000070B
	c.j	000000002305CA86

l2305CDC4:
	c.li	a4,00000001
	c.lw	s0,100(a5)
	bge	a4,a3,000000002305CDDE

l2305CDCC:
	sub	s2,s2,a6
	sw	s2,s0,+00000070
	c.li	a4,00000000

l2305CDD6:
	c.lw	s0,52(a3)
	c.lw	a3,12(a2)
	bltu	a4,a2,000000002305CE66

l2305CDDE:
	c.lw	s0,52(a0)
	addi	a6,sp,+00000030
	c.mv	a4,s2
	c.lw	a0,12(a2)
	addi	a1,a0,+00000028
	c.mv	a3,a5
	addi	a0,a0,+00000090
	jal	ra,0000000023062C96
	c.mv	s7,a0
	c.beqz	a0,000000002305CE78

l2305CDFA:
	lui	a4,0002308A
	c.mv	a5,a0
	addi	a4,a4,+00000144
	addi	a3,zero,+00000723
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002306305C
	c.mv	s6,s7

l2305CE16:
	lui	a4,0002308A
	c.lui	a3,00001000
	c.mv	a5,s6
	addi	a4,a4,-0000035C
	addi	a3,a3,-00000187
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002306305C

l2305CE32:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	beq	a5,zero,000000002305C700

l2305CE3E:
	c.lui	a5,FFFF9000
	andi	a4,s6,-00000081
	addi	a5,a5,-00000200
	bne	a4,a5,000000002305C700

l2305CE4C:
	c.lw	s0,4(a5)
	c.addi	a5,FFFFFFF5
	c.andi	a5,FFFFFFFD
	beq	a5,zero,000000002305C700

l2305CE56:
	lui	a4,0002308A
	c.lui	a3,00001000
	addi	a4,a4,-0000034C
	addi	a3,a3,-000000C0
	c.j	000000002305C84C

l2305CE66:
	c.lw	s0,96(a2)
	c.add	a3,a4
	c.add	a2,a4
	lbu	a2,a2,+00000000
	c.addi	a4,00000001
	sb	a2,a3,+00000028
	c.j	000000002305CDD6

l2305CE78:
	c.lwsp	a6,000001F4
	beq	s2,a5,000000002305CE8C

l2305CE7E:
	lui	a4,00023089
	addi	a4,a4,-000000EC
	addi	a3,zero,+00000729
	c.j	000000002305CA46

l2305CE8C:
	c.lw	s0,112(a2)
	c.lw	s0,100(a1)
	c.lw	s0,52(a4)
	addi	a0,a2,-00000001
	add	a5,a1,a0
	lbu	a5,a5,+00000000
	c.lw	a4,20(a3)
	c.li	a6,00000001
	c.addi	a5,00000001
	add	a4,a5,a3
	bgeu	a2,a4,000000002305CEB0

l2305CEAC:
	c.li	a6,00000000
	c.li	a5,00000000

l2305CEB0:
	c.lw	s0,12(a4)
	bge	zero,a4,000000002305CF2E

l2305CEB6:
	addi	s2,a5,+00000001
	c.sub	a0,a5
	sltu	s2,a2,s2
	add	a4,a3,s4
	sltu	a4,a0,a4
	xori	s2,s2,+00000001
	and	s2,s2,a4
	and	a4,s2,a6
	add	a6,a0,a4
	c.li	t3,00000001
	c.li	a0,00000001
	addi	t5,a5,-00000001
	addi	t4,zero,+00000101

l2305CEE4:
	sltu	a3,a5,a0
	xori	a3,a3,+00000001
	and	t3,t3,a3
	add	a3,a6,a0
	c.add	a3,a1
	lbu	a3,a3,+00000000
	c.addi	a0,00000001
	sub	a3,a3,t5
	sltiu	a3,a3,+00000001
	add	a3,a3,t3
	c.add	s5,a3
	bne	a0,t4,000000002305CEE4

l2305CF0E:
	sub	s2,a5,s5
	sltiu	s2,s2,+00000001
	and	s2,s2,a4
	addi	s5,zero,+000001FF
	add	s5,s2,s5
	and	s5,s5,a5
	sub	a2,a2,s5
	c.sw	s0,112(a2)
	c.j	000000002305CC06

l2305CF2E:
	lui	a4,00023089
	addi	a4,a4,-000000EC
	addi	a3,zero,+00000783
	c.j	000000002305CA46

l2305CF3C:
	lui	a4,00023089
	addi	a4,a4,-000000EC
	addi	a3,zero,+0000078D
	c.j	000000002305CA46

l2305CF4A:
	add	a3,a0,a5
	addi	a6,sp,+00000030
	c.add	a6,a5
	c.add	a3,a1
	lbu	a3,a3,+00000000
	lbu	a6,a6,+00000000
	c.addi	a5,00000001
	xor	a3,a3,a6
	c.or	a4,a3
	c.j	000000002305CD30

l2305CF68:
	lui	a4,00023089
	addi	a4,a4,-000000EC
	addi	a3,zero,+000007D6
	c.j	000000002305CA46

l2305CF76:
	sw	zero,s0,+00000084

l2305CF7A:
	c.lw	s0,0(a5)
	c.li	a4,00000008
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002305CFE6

l2305CF86:
	c.lui	s2,00001000
	lui	a4,0002308A
	addi	a4,a4,-00000388
	addi	a3,s2,-000007E3
	addi	a2,s1,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lw	s0,100(a5)
	lw	a6,s0,+00000070
	lui	a4,0002308A
	addi	a4,a4,-00000378
	addi	a3,s2,-00000182
	addi	a2,s1,+00000378
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,00000000230630DE
	c.lw	s0,112(a5)
	bgeu	s4,a5,000000002305D038

l2305CFC4:
	lui	a4,0002308A
	addi	a4,a4,-00000600
	addi	a3,s2,-0000017E
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lui	t1,FFFF9000
	addi	s6,t1,-00000200
	c.j	000000002305CE32

l2305CFE4:
	c.mv	a4,a2

l2305CFE6:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	bgeu	a5,a4,000000002305D00A

l2305CFF2:
	c.lw	s0,84(a3)
	addi	a2,a4,-00000001
	c.add	a3,a2
	lbu	a5,a3,+00000000
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,a3,+00000000
	c.beqz	a5,000000002305CFE4

l2305D00A:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	bne	a4,a5,000000002305CF86

l2305D016:
	lui	a4,0002308A
	c.lui	a3,00001000
	addi	a4,a4,-000003AC
	addi	a3,a3,-000007E8
	addi	a2,s1,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lui	t1,FFFF9000
	addi	s6,t1,+00000480
	c.j	000000002305CE16

l2305D038:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	beq	a5,zero,000000002305C700

l2305D044:
	c.lw	s0,48(a5)
	beq	a5,zero,000000002305C700

l2305D04A:
	c.lw	s0,4(a4)
	c.li	a5,00000010
	bne	a4,a5,000000002305C700

l2305D052:
	c.lw	s0,108(a4)
	c.li	a5,00000016
	bne	a4,a5,000000002305D09C

l2305D05A:
	c.lw	s0,100(a5)
	lbu	a4,a5,+00000000
	c.li	a5,00000014
	bne	a4,a5,000000002305D09C

l2305D066:
	lui	a4,0002308A
	c.lui	s2,00001000
	addi	a4,a4,-0000032C
	addi	a3,s2,-00000093
	addi	a2,s1,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.mv	a0,s0
	jal	ra,000000002305B494
	c.mv	s6,a0
	c.beqz	a0,000000002305D0A6

l2305D08A:
	lui	a4,00023089
	c.mv	a5,a0
	addi	a4,a4,+00000148
	addi	a3,s2,-0000008F
	jal	zero,000000002305C75A

l2305D09C:
	c.mv	a0,s0
	jal	ra,000000002305A6E6
	jal	zero,000000002305C700

l2305D0A6:
	c.lui	t1,FFFF9000
	addi	s6,t1,+00000700
	jal	zero,000000002305C700

;; mbedtls_ssl_read_record: 2305D0B0
;;   Called from:
;;     2305D24A (in mbedtls_ssl_parse_certificate)
;;     2305D5C6 (in mbedtls_ssl_parse_change_cipher_spec)
;;     2305D738 (in mbedtls_ssl_parse_finished)
;;     2305D93C (in mbedtls_ssl_read)
;;     2305D976 (in mbedtls_ssl_read)
mbedtls_ssl_read_record proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	a4,0002308A
	c.lui	a3,00001000
	lui	s2,0002308A
	c.swsp	s3,00000084
	addi	a4,a4,-00000728
	addi	a3,a3,-00000156
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.lui	s3,FFFFA000
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a0
	addi	s3,s3,-00000680
	jal	ra,0000000023062FCC

l2305D0E0:
	c.mv	a0,s1
	jal	ra,000000002305C6A4
	c.mv	s0,a0
	c.beqz	a0,000000002305D116

l2305D0EA:
	lui	a4,0002308A
	c.lui	a3,00001000
	c.mv	a5,a0
	addi	a4,a4,-00000718
	addi	a3,a3,-00000150

l2305D0FA:
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,000000002306305C

l2305D106:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2305D116:
	c.mv	a0,s1
	jal	ra,000000002305BE94
	c.mv	s0,a0
	beq	a0,s3,000000002305D0E0

l2305D122:
	c.beqz	a0,000000002305D136

l2305D124:
	lui	a4,0002308A
	c.lui	a3,00001000
	c.mv	a5,a0
	addi	a4,a4,-000006F8
	addi	a3,a3,-00000146
	c.j	000000002305D0FA

l2305D136:
	c.lw	s1,108(a4)
	c.li	a5,00000016
	bne	a4,a5,000000002305D144

l2305D13E:
	c.mv	a0,s1
	jal	ra,000000002305A304

l2305D144:
	lui	a4,0002308A
	c.lui	a3,00001000
	addi	a4,a4,-000006D8
	addi	a3,a3,-0000013D
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,0000000023062FCC
	c.j	000000002305D106

;; mbedtls_ssl_parse_certificate: 2305D160
mbedtls_ssl_parse_certificate proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.lw	a0,64(a5)
	lui	s3,0002308A
	lui	a4,00023089
	lw	s5,a5,+00000000
	c.lw	a0,0(a5)
	c.lui	s4,00001000
	addi	a4,a4,+00000350
	addi	a3,s4,+00000099
	addi	a2,s3,+00000378
	c.li	a1,00000002
	c.lw	a5,116(s1)
	c.mv	s0,a0
	jal	ra,0000000023062FCC
	lbu	a3,s5,+0000000A
	c.srli	s1,00000002
	c.andi	s1,00000003
	addi	a5,a3,-00000005
	andi	a4,a5,+000000FF
	c.li	a5,00000006
	c.mv	s2,s3
	bltu	a5,a4,000000002305D1F8

l2305D1B4:
	addi	a5,zero,+0000004B
	srl	a5,a5,a4
	c.andi	a5,00000001
	c.beqz	a5,000000002305D1F8

l2305D1C0:
	lui	a4,00023089
	addi	a4,a4,+00000368
	addi	a3,s4,+000000A0
	addi	a2,s3,+00000378

l2305D1D0:
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lw	s0,4(a5)
	c.li	s1,00000000
	c.addi	a5,00000001
	c.sw	s0,4(a5)

l2305D1E0:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.addi16sp	00000030
	c.jr	ra

l2305D1F8:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000001
	c.beqz	a5,000000002305D21C

l2305D202:
	c.li	a4,00000007
	bne	a3,a4,000000002305D21C

l2305D208:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,+00000368
	addi	a3,a3,+000000A9

l2305D216:
	addi	a2,s2,+00000378
	c.j	000000002305D1D0

l2305D21C:
	c.lw	s0,48(a4)
	lw	s4,a4,+0000000C
	c.li	a4,00000003
	bne	s4,a4,000000002305D22A

l2305D228:
	c.mv	s4,s1

l2305D22A:
	c.beqz	a5,000000002305D248

l2305D22C:
	bne	s4,zero,000000002305D248

l2305D230:
	c.lw	s0,44(a5)
	addi	a4,zero,+00000080
	c.lui	a3,00001000
	c.sw	a5,96(a4)
	lui	a4,00023089
	addi	a4,a4,+00000368
	addi	a3,a3,+000000B7
	c.j	000000002305D216

l2305D248:
	c.mv	a0,s0
	jal	ra,000000002305D0B0
	c.mv	s1,a0
	c.beqz	a0,000000002305D270

l2305D252:
	lui	a4,00023089
	c.lui	a3,00001000
	c.mv	a5,a0
	addi	a4,a4,+00000384
	addi	a3,a3,+000000BF

l2305D262:
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002306305C
	c.j	000000002305D1E0

l2305D270:
	c.lw	s0,4(a5)
	c.addi	a5,00000001
	c.sw	s0,4(a5)
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	andi	a4,a5,+00000001
	c.beqz	a4,000000002305D314

l2305D282:
	c.lw	s0,12(a4)
	c.beqz	a4,000000002305D314

l2305D286:
	c.andi	a5,00000002
	lw	a3,s0,+00000080
	c.li	a4,00000004
	c.beqz	a5,000000002305D292

l2305D290:
	c.li	a4,0000000C

l2305D292:
	addi	a5,a4,+00000003
	bne	a3,a5,000000002305D314

l2305D29A:
	c.lw	s0,108(a3)
	c.li	a5,00000016
	beq	a3,a5,000000002305D2C4

l2305D2A2:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,+0000039C
	addi	a3,a3,+000000F6
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023062FCC
	addi	s1,s1,-00000700
	c.j	000000002305D1E0

l2305D2C4:
	c.lw	s0,100(a0)
	c.li	a5,0000000B
	lbu	a3,a0,+00000000
	bne	a3,a5,000000002305D31C

l2305D2D0:
	lui	a1,00023089
	c.li	a2,00000003
	addi	a1,a1,-000001BC
	c.add	a0,a4
	jal	ra,0000000023070BF4
	c.mv	s1,a0
	c.bnez	a0,000000002305D314

l2305D2E4:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,+000003B4
	addi	a3,a3,+000000E7
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lw	s0,44(a5)
	addi	a4,zero,+00000040
	c.sw	a5,96(a4)
	c.li	a5,00000001
	beq	s4,a5,000000002305D1E0

l2305D30C:
	c.lui	s1,FFFF9000
	addi	s1,s1,-00000480
	c.j	000000002305D1E0

l2305D314:
	c.lw	s0,108(a4)
	c.li	a5,00000016
	bne	a4,a5,000000002305D2A2

l2305D31C:
	c.lw	s0,100(a4)
	c.li	a5,0000000B
	lbu	a3,a4,+00000000
	bne	a3,a5,000000002305D342

l2305D328:
	c.lw	s0,0(a5)
	lw	a3,s0,+00000080
	c.li	s3,00000004
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002305D33A

l2305D338:
	c.li	s3,0000000C

l2305D33A:
	addi	a5,s3,+00000006
	bgeu	a3,a5,000000002305D364

l2305D342:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,+0000039C
	addi	a3,a3,+000000FD

l2305D350:
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF8000
	jal	ra,0000000023062FCC
	addi	s1,s1,+00000600
	c.j	000000002305D1E0

l2305D364:
	c.add	a4,s3
	lbu	a5,a4,+00000001
	lbu	a2,a4,+00000002
	lbu	a4,a4,+00000000
	c.slli	a5,08
	c.or	a5,a2
	c.bnez	a4,000000002305D380

l2305D378:
	c.addi	s3,00000003
	c.add	a5,s3
	beq	a3,a5,000000002305D390

l2305D380:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,+0000039C
	addi	a3,a3,+0000010B
	c.j	000000002305D350

l2305D390:
	c.lw	s0,44(a5)
	c.lw	a5,92(a0)
	c.beqz	a0,000000002305D3A2

l2305D396:
	jal	ra,000000002305EAA6
	c.lw	s0,44(a5)
	c.lw	a5,92(a0)
	jal	ra,0000000023032272

l2305D3A2:
	c.lw	s0,44(s1)
	addi	a1,zero,+00000134
	c.li	a0,00000001
	jal	ra,000000002305F67C
	c.sw	s1,92(a0)
	c.bnez	a0,000000002305D3D8

l2305D3B2:
	lui	a4,0002308A
	c.lui	a3,00001000
	addi	a5,zero,+00000134
	addi	a4,a4,-0000022C
	addi	a3,a3,+0000011A
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF8000
	jal	ra,0000000023062FCC
	addi	s1,s1,+00000100
	c.j	000000002305D1E0

l2305D3D8:
	c.lw	s0,44(a5)
	c.lui	s6,FFFFE000
	c.li	s1,00000000
	c.lw	a5,92(a0)
	addi	s7,zero,+0000007F
	addi	s6,s6,-0000062E
	jal	ra,000000002305EA9C

l2305D3EC:
	lw	a4,s0,+00000080
	bltu	s3,a4,000000002305D502

l2305D3F4:
	c.lw	s0,44(a5)
	lui	a4,00023089
	c.lui	s3,00001000
	c.lw	a5,92(a5)
	addi	a4,a4,+000003F0
	addi	a3,s3,+0000013F
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,0000000023063384
	beq	s4,zero,000000002305D4E6

l2305D416:
	c.lw	s0,48(a5)
	c.lw	s0,0(a3)
	c.lw	a5,20(a1)
	beq	a1,zero,000000002305D570

l2305D420:
	c.lw	a5,24(a2)

l2305D422:
	c.lw	s0,44(a0)
	lw	a7,a3,+00000038
	lw	a6,a3,+00000034
	addi	a5,a0,+00000060
	lw	a4,s0,+000000B4
	c.lw	a3,72(a3)
	c.lw	a0,92(a0)
	jal	ra,000000002305E8B2
	c.mv	s1,a0
	c.beqz	a0,000000002305D45C

l2305D440:
	lui	a4,00023089
	c.lui	a3,00001000
	c.mv	a5,a0
	addi	a4,a4,+00000414
	addi	a3,a3,+00000180
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002306305C

l2305D45C:
	c.lw	s0,44(a5)
	c.li	a1,00000002
	lw	s3,a5,+0000005C
	addi	a0,s3,+000000BC
	jal	ra,0000000023056566
	c.beqz	a0,000000002305D4A0

l2305D46E:
	lw	a5,s3,+000000C0
	c.mv	a0,s0
	lbu	a1,a5,+00000000
	jal	ra,000000002305ACAC
	c.beqz	a0,000000002305D4A0

l2305D47E:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,+00000428
	addi	a3,a3,+0000018F
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.bnez	s1,000000002305D4A0

l2305D49A:
	c.lui	s1,FFFF8000
	addi	s1,s1,+00000600

l2305D4A0:
	c.lw	s0,0(a4)
	c.lw	s0,44(a5)
	c.mv	a1,s5
	lhu	a2,a4,+00000074
	c.lw	a5,92(a0)
	addi	a3,a5,+00000060
	xori	a2,a2,-00000001
	c.andi	a2,00000001
	jal	ra,000000002305ACC8
	c.beqz	a0,000000002305D4DE

l2305D4BC:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,+00000448
	addi	a3,a3,+0000019B
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.bnez	s1,000000002305D4DE

l2305D4D8:
	c.lui	s1,FFFF8000
	addi	s1,s1,+00000600

l2305D4DE:
	c.li	a5,00000001
	bne	s4,a5,000000002305D4E6

l2305D4E4:
	c.li	s1,00000000

l2305D4E6:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,+0000046C
	addi	a3,a3,+000001A4
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.j	000000002305D1E0

l2305D502:
	c.lw	s0,100(a1)
	add	a5,a1,s3
	lbu	a3,a5,+00000000
	c.beqz	a3,000000002305D51E

l2305D50E:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,+0000039C
	addi	a3,a3,+00000126
	c.j	000000002305D350

l2305D51E:
	lbu	a2,a5,+00000001
	lbu	a5,a5,+00000002
	c.slli	a2,08
	c.or	a2,a5
	addi	a5,s3,+00000003
	bgeu	s7,a2,000000002305D53A

l2305D532:
	add	s3,a2,a5
	bgeu	a4,s3,000000002305D54A

l2305D53A:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,+0000039C
	addi	a3,a3,+00000130
	c.j	000000002305D350

l2305D54A:
	c.lw	s0,44(a4)
	c.add	a1,a5
	c.lw	a4,92(a0)
	jal	ra,000000002305EB84
	c.mv	s1,a0
	beq	a0,zero,000000002305D3EC

l2305D55A:
	beq	a0,s6,000000002305D3EC

l2305D55E:
	lui	a4,00023089
	c.lui	a3,00001000
	c.mv	a5,a0
	addi	a4,a4,+000003D4
	addi	a3,a3,+00000138
	c.j	000000002305D262

l2305D570:
	c.lw	a3,80(a1)
	c.lw	a3,84(a2)
	bne	a1,zero,000000002305D422

l2305D578:
	lui	a4,00023089
	addi	a4,a4,+00000404
	addi	a3,s3,+0000016F
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023062FCC
	addi	s1,s1,-00000680
	c.j	000000002305D1E0

;; mbedtls_ssl_parse_change_cipher_spec: 2305D598
mbedtls_ssl_parse_change_cipher_spec proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	a4,00023089
	c.lui	s3,00001000
	lui	s2,0002308A
	addi	a4,a4,+00000484
	addi	a3,s3,+000001CB
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.swsp	s4,00000004
	jal	ra,0000000023062FCC
	c.mv	a0,s0
	jal	ra,000000002305D0B0
	c.mv	s1,a0
	c.beqz	a0,000000002305D5FA

l2305D5CE:
	lui	a4,00023089
	c.mv	a5,a0
	addi	a4,a4,+00000384
	addi	a3,s3,+000001CF
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002306305C

l2305D5E8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2305D5FA:
	c.lw	s0,108(a4)
	c.li	a5,00000014
	beq	a4,a5,000000002305D622

l2305D602:
	lui	a4,00023089
	addi	a4,a4,+000004A0
	addi	a3,s3,+000001D5
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023062FCC
	addi	s1,s1,-00000700
	c.j	000000002305D5E8

l2305D622:
	c.lw	s0,112(a5)
	c.li	a4,00000001
	c.mv	s4,s2
	bne	a5,a4,000000002305D636

l2305D62C:
	c.lw	s0,100(a4)
	lbu	a4,a4,+00000000
	beq	a4,a5,000000002305D658

l2305D636:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,+000004A0
	addi	a3,a3,+000001DB
	addi	a2,s4,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF8000
	jal	ra,0000000023062FCC
	addi	s1,s1,+00000200
	c.j	000000002305D5E8

l2305D658:
	lui	a4,00023089
	addi	a4,a4,+000004C0
	addi	a3,s3,+000001E3
	addi	a2,s2,+00000378
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.lw	s0,64(a5)
	c.sw	s0,52(a5)
	c.lw	s0,44(a5)
	c.sw	s0,32(a5)
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002305D6B2

l2305D682:
	lhu	a5,s0,+00000078
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+00000078
	c.bnez	a5,000000002305D6BC

l2305D692:
	lui	a4,0002308A
	addi	a4,a4,-00000048
	addi	a3,s3,+000001F1
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023062FCC
	addi	s1,s1,+00000480
	c.j	000000002305D5E8

l2305D6B2:
	c.lw	s0,84(a0)
	c.li	a2,00000008
	c.li	a1,00000000
	jal	ra,0000000023070EB8

l2305D6BC:
	c.lw	s0,12(a3)
	c.li	a4,00000001
	c.lw	s0,96(a5)
	bge	a4,a3,000000002305D6D0

l2305D6C6:
	c.lw	s0,64(a3)
	c.lw	a3,12(a4)
	c.lw	a3,16(a3)
	c.sub	a4,a3
	c.add	a5,a4

l2305D6D0:
	c.sw	s0,100(a5)
	c.lw	s0,4(a5)
	lui	a4,00023089
	c.lui	a3,00001000
	c.addi	a5,00000001
	c.sw	s0,4(a5)
	addi	a4,a4,+000004F4
	addi	a3,a3,+00000211
	addi	a2,s4,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.j	000000002305D5E8

;; mbedtls_ssl_parse_finished: 2305D6F4
mbedtls_ssl_parse_finished proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	lui	a4,00023089
	c.lui	s4,00001000
	lui	s2,0002308A
	addi	a4,a4,+00000510
	addi	a3,s4,+00000486
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a0
	c.swsp	s3,0000008C
	jal	ra,0000000023062FCC
	c.lw	s0,0(a5)
	c.addi4spn	a1,00000004
	c.mv	a0,s0
	c.lw	a5,116(a2)
	c.lw	s0,48(a5)
	c.andi	a2,00000001
	lw	a5,a5,+000000CC
	xori	a2,a2,+00000001
	c.jalr	a5
	c.mv	a0,s0
	jal	ra,000000002305D0B0
	c.mv	s1,a0
	c.beqz	a0,000000002305D76C

l2305D740:
	lui	a4,00023089
	c.mv	a5,a0
	addi	a4,a4,+00000384
	addi	a3,s4,+0000048C
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002306305C

l2305D75A:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2305D76C:
	c.lw	s0,108(a4)
	c.li	a5,00000016
	beq	a4,a5,000000002305D794

l2305D774:
	lui	a4,00023089
	addi	a4,a4,+00000524
	addi	a3,s4,+00000492
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023062FCC
	addi	s1,s1,-00000700
	c.j	000000002305D75A

l2305D794:
	lw	a6,s0,+00000064
	c.li	a5,00000014
	c.mv	s3,s2
	lbu	a4,a6,+00000000
	bne	a4,a5,000000002305D7C6

l2305D7A4:
	c.lw	s0,0(a3)
	lw	t1,s0,+00000080
	c.li	a0,00000004
	lhu	a4,a3,+00000074
	andi	a5,a4,+00000002
	c.beqz	a5,000000002305D7B8

l2305D7B6:
	c.li	a0,0000000C

l2305D7B8:
	addi	a1,a0,+0000000C
	c.li	a2,00000000
	c.li	a5,00000000
	c.li	a7,0000000C
	beq	t1,a1,000000002305D7E8

l2305D7C6:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,+00000524
	addi	a3,a3,+000004A1

l2305D7D4:
	addi	a2,s3,+00000378
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF8000
	jal	ra,0000000023062FCC
	addi	s1,s1,+00000180
	c.j	000000002305D75A

l2305D7E8:
	add	a1,a0,a5
	addi	t1,sp,+00000004
	c.add	t1,a5
	c.add	a1,a6
	lbu	a1,a1,+00000000
	lbu	t1,t1,+00000000
	c.addi	a5,00000001
	xor	a1,a1,t1
	c.or	a2,a1
	bne	a5,a7,000000002305D7E8

l2305D808:
	c.beqz	a2,000000002305D81A

l2305D80A:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,+00000524
	addi	a3,a3,+000004A8
	c.j	000000002305D7D4

l2305D81A:
	c.lw	s0,48(a5)
	lw	a5,a5,+00000148
	c.beqz	a5,000000002305D862

l2305D822:
	c.andi	a4,00000001
	c.beqz	a4,000000002305D82C

l2305D826:
	c.li	a5,0000000F

l2305D828:
	c.sw	s0,4(a5)
	c.j	000000002305D838

l2305D82C:
	c.li	a5,0000000A
	c.sw	s0,4(a5)
	lhu	a5,a3,+00000074
	c.andi	a5,00000001
	c.bnez	a5,000000002305D826

l2305D838:
	lhu	a5,a3,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002305D846

l2305D840:
	c.mv	a0,s0
	jal	ra,000000002305A250

l2305D846:
	lui	a4,00023089
	c.lui	a3,00001000
	addi	a4,a4,+0000053C
	addi	a3,a3,+000004C4
	addi	a2,s3,+00000378
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023062FCC
	c.j	000000002305D75A

l2305D862:
	c.lw	s0,4(a5)
	c.addi	a5,00000001
	c.j	000000002305D828

;; mbedtls_ssl_read: 2305D868
;;   Called from:
;;     23050B66 (in iot_tls_read)
mbedtls_ssl_read proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	beq	a0,zero,000000002305DA3E

l2305D87A:
	c.lw	a0,0(a5)
	c.mv	s1,a0
	beq	a5,zero,000000002305DA3E

l2305D882:
	lui	a4,0002308A
	c.lui	a3,00002000
	lui	s2,0002308A
	c.mv	s3,a2
	c.mv	s4,a1
	addi	a4,a4,-00000780
	addi	a3,a3,-00000620
	addi	a2,s2,+00000378
	c.li	a1,00000002
	jal	ra,0000000023062FCC
	c.lw	s1,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.bnez	a5,000000002305D8E6

l2305D8AC:
	c.lw	s1,4(a4)
	c.li	a5,00000010
	beq	a4,a5,000000002305D91A

l2305D8B4:
	c.mv	a0,s1
	jal	ra,000000002305A5EA
	c.lui	a5,FFFF9000
	addi	a5,a5,+00000500
	c.mv	s0,a0
	beq	a0,a5,000000002305D952

l2305D8C6:
	c.beqz	a0,000000002305D91A

l2305D8C8:
	lui	a4,0002308A
	c.lui	a3,00002000
	c.mv	a5,a0
	addi	a4,a4,-00000208
	addi	a3,a3,-000005FE

l2305D8D8:
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,000000002306305C
	c.j	000000002305D908

l2305D8E6:
	c.mv	a0,s1
	jal	ra,000000002305A0D0
	c.mv	s0,a0
	c.bnez	a0,000000002305D908

l2305D8F0:
	c.lw	s1,48(a5)
	c.beqz	a5,000000002305D8AC

l2305D8F4:
	lbu	a4,a5,+00000034
	c.li	a5,00000001
	bne	a4,a5,000000002305D8AC

l2305D8FE:
	c.mv	a0,s1
	jal	ra,000000002305B494
	c.mv	s0,a0
	c.beqz	a0,000000002305D8AC

l2305D908:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2305D91A:
	c.li	s0,00000000

l2305D91C:
	c.lw	s1,104(a5)
	c.bnez	a5,000000002305DA00

l2305D920:
	c.lw	s1,76(a5)
	c.beqz	a5,000000002305D938

l2305D924:
	c.lw	s1,68(a0)
	c.jalr	a5
	c.li	a5,FFFFFFFF
	bne	a0,a5,000000002305D938

l2305D92E:
	c.lw	s1,0(a5)
	c.mv	a0,s1
	c.lw	a5,100(a1)
	jal	ra,00000000230599B4

l2305D938:
	c.bnez	s0,000000002305D968

l2305D93A:
	c.mv	a0,s1
	jal	ra,000000002305D0B0
	c.mv	s0,a0
	c.beqz	a0,000000002305D968

l2305D944:
	c.lui	a5,FFFF9000
	addi	a5,a5,-00000280
	bne	a0,a5,000000002305D956

l2305D94E:
	c.li	s0,00000000
	c.j	000000002305D908

l2305D952:
	c.li	s0,00000001
	c.j	000000002305D91C

l2305D956:
	lui	a4,00023089
	c.lui	a3,00002000
	c.mv	a5,a0
	addi	a4,a4,+00000384
	addi	a3,a3,-000005E9
	c.j	000000002305D8D8

l2305D968:
	c.lw	s1,112(a5)
	c.bnez	a5,000000002305D99A

l2305D96C:
	c.lw	s1,108(a4)
	c.li	a5,00000017
	bne	a4,a5,000000002305D99A

l2305D974:
	c.mv	a0,s1
	jal	ra,000000002305D0B0
	c.mv	s0,a0
	c.beqz	a0,000000002305D99A

l2305D97E:
	c.lui	a5,FFFF9000
	addi	a5,a5,-00000280
	beq	a0,a5,000000002305D94E

l2305D988:
	lui	a4,00023089
	c.lui	a3,00002000
	c.mv	a5,a0
	addi	a4,a4,+00000384
	addi	a3,a3,-000005D9
	c.j	000000002305D8D8

l2305D99A:
	c.lw	s1,108(a5)
	c.li	a4,00000015
	bne	a5,a4,000000002305D9C4

l2305D9A2:
	lui	a4,0002308A
	c.lui	a3,00002000
	addi	a4,a4,-00000778
	addi	a3,a3,-00000560
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s1
	c.lui	s0,FFFF9000
	jal	ra,0000000023062FCC
	addi	s0,s0,+00000700
	c.j	000000002305D908

l2305D9C4:
	c.li	a4,00000017
	beq	a5,a4,000000002305D9EC

l2305D9CA:
	lui	a4,0002308A
	c.lui	a3,00002000
	addi	a4,a4,-00000750
	addi	a3,a3,-0000055A
	addi	a2,s2,+00000378
	c.li	a1,00000001
	c.mv	a0,s1
	c.lui	s0,FFFF9000
	jal	ra,0000000023062FCC
	addi	s0,s0,-00000700
	c.j	000000002305D908

l2305D9EC:
	c.lw	s1,100(a5)
	c.lw	s1,4(a4)
	c.sw	s1,104(a5)
	c.li	a5,00000010
	bne	a4,a5,000000002305DA00

l2305D9F8:
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,00000000230599B4

l2305DA00:
	c.lw	s1,112(s0)
	bgeu	s3,s0,000000002305DA08

l2305DA06:
	c.mv	s0,s3

l2305DA08:
	c.lw	s1,104(a1)
	c.mv	a2,s0
	c.mv	a0,s4
	jal	ra,0000000023070C7C
	c.lw	s1,112(a4)
	c.li	a5,00000000
	c.sub	a4,s0
	c.sw	s1,112(a4)
	c.beqz	a4,000000002305DA20

l2305DA1C:
	c.lw	s1,104(a5)
	c.add	a5,s0

l2305DA20:
	lui	a4,0002308A
	c.lui	a3,00002000
	c.sw	s1,104(a5)
	addi	a4,a4,-00000730
	addi	a3,a3,-00000530
	addi	a2,s2,+00000378
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,0000000023062FCC
	c.j	000000002305D908

l2305DA3E:
	c.lui	s0,FFFF9000
	addi	s0,s0,-00000100
	c.j	000000002305D908

;; mbedtls_ssl_set_calc_verify_md: 2305DA46
mbedtls_ssl_set_calc_verify_md proc
	c.lw	a0,12(a4)
	c.li	a5,00000003
	bne	a4,a5,000000002305DA66

l2305DA4E:
	c.li	a5,00000004
	bne	a1,a5,000000002305DA66

l2305DA54:
	c.lw	a0,48(a4)
	lui	a5,0002305A
	addi	a5,a5,-00000764
	sw	a5,a4,+000000C8
	c.li	a0,00000000
	c.jr	ra

l2305DA66:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000600
	c.jr	ra

;; mbedtls_zeroize: 2305DA6E
;;   Called from:
;;     2305EAE8 (in mbedtls_x509_crt_free)
;;     2305EB04 (in mbedtls_x509_crt_free)
;;     2305EB30 (in mbedtls_x509_crt_free)
;;     2305EB48 (in mbedtls_x509_crt_free)
;;     2305EB5E (in mbedtls_x509_crt_free)
;;     2305EB74 (in mbedtls_x509_crt_free)
;;     2305F330 (in mbedtls_x509_crt_parse_file)
mbedtls_zeroize proc
	c.add	a1,a0

l2305DA70:
	bne	a0,a1,000000002305DA76

l2305DA74:
	c.jr	ra

l2305DA76:
	sb	zero,a0,+00000000
	c.addi	a0,00000001
	c.j	000000002305DA70

;; x509_memcasecmp: 2305DA7E
;;   Called from:
;;     2305DB32 (in x509_name_cmp)
;;     2305DBD0 (in x509_check_wildcard)
;;     2305E936 (in mbedtls_x509_crt_verify_with_profile)
;;     2305E9D4 (in mbedtls_x509_crt_verify_with_profile)
x509_memcasecmp proc
	c.li	a4,00000000
	addi	a6,zero,+00000020
	c.li	a7,00000019

l2305DA86:
	bne	a4,a2,000000002305DA8E

l2305DA8A:
	c.li	a0,00000000
	c.jr	ra

l2305DA8E:
	add	a5,a0,a4
	add	a3,a1,a4
	lbu	a5,a5,+00000000
	lbu	a3,a3,+00000000
	xor	t1,a5,a3
	beq	a5,a3,000000002305DABA

l2305DAA6:
	bne	t1,a6,000000002305DABE

l2305DAAA:
	andi	a5,a5,-00000021
	addi	a5,a5,-00000041
	andi	a5,a5,+000000FF
	bltu	a7,a5,000000002305DABE

l2305DABA:
	c.addi	a4,00000001
	c.j	000000002305DA86

l2305DABE:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; x509_name_cmp: 2305DAC2
;;   Called from:
;;     2305E3E8 (in x509_crt_check_parent)
;;     2305E67E (in x509_crt_verify_child)
x509_name_cmp proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.mv	s0,a1
	c.li	s2,0000000C
	c.li	s3,00000013

l2305DAD6:
	c.bnez	s1,000000002305DAE2

l2305DAD8:
	sltu	a0,zero,s0
	sub	a0,zero,a0
	c.j	000000002305DAE6

l2305DAE2:
	c.bnez	s0,000000002305DAF4

l2305DAE4:
	c.li	a0,FFFFFFFF

l2305DAE6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2305DAF4:
	c.lw	s1,0(a4)
	c.lw	s0,0(a5)
	bne	a4,a5,000000002305DAE4

l2305DAFC:
	c.lw	s0,4(a5)
	c.lw	s1,4(a2)
	bne	a2,a5,000000002305DAE4

l2305DB04:
	c.lw	s0,8(a1)
	c.lw	s1,8(a0)
	jal	ra,0000000023070BF4
	c.bnez	a0,000000002305DAE4

l2305DB0E:
	c.lw	s1,12(a4)
	c.lw	s0,12(a5)
	beq	a4,a5,000000002305DB3A

l2305DB16:
	c.lw	s1,12(a5)
	bne	a5,s2,000000002305DB5E

l2305DB1C:
	c.lw	s0,12(a5)
	beq	a5,s2,000000002305DB26

l2305DB22:
	bne	a5,s3,000000002305DAE4

l2305DB26:
	c.lw	s0,16(a5)
	c.lw	s1,16(a2)
	bne	a2,a5,000000002305DAE4

l2305DB2E:
	c.lw	s0,20(a1)
	c.lw	s1,20(a0)
	jal	ra,000000002305DA7E
	c.beqz	a0,000000002305DB4C

l2305DB38:
	c.j	000000002305DAE4

l2305DB3A:
	c.lw	s0,16(a5)
	c.lw	s1,16(a2)
	bne	a2,a5,000000002305DB16

l2305DB42:
	c.lw	s0,20(a1)
	c.lw	s1,20(a0)
	jal	ra,0000000023070BF4
	c.bnez	a0,000000002305DB16

l2305DB4C:
	lbu	a4,s1,+0000001C
	lbu	a5,s0,+0000001C
	bne	a4,a5,000000002305DAE4

l2305DB58:
	c.lw	s1,24(s1)
	c.lw	s0,24(s0)
	c.j	000000002305DAD6

l2305DB5E:
	beq	a5,s3,000000002305DB1C

l2305DB62:
	c.j	000000002305DAE4

;; x509_check_wildcard: 2305DB64
;;   Called from:
;;     2305E966 (in mbedtls_x509_crt_verify_with_profile)
;;     2305E9F6 (in mbedtls_x509_crt_verify_with_profile)
x509_check_wildcard proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.mv	s0,a0
	jal	ra,000000002307132C
	c.lwsp	a2,00000064
	c.li	a5,00000002
	c.lw	a1,4(a4)
	bgeu	a5,a4,000000002305DBDE

l2305DB7C:
	c.lw	a1,8(a3)
	addi	a2,zero,+0000002A
	c.li	a5,00000000
	lbu	a1,a3,+00000000
	bne	a1,a2,000000002305DBA4

l2305DB8C:
	lbu	a1,a3,+00000001
	addi	a2,zero,+0000002E
	bne	a1,a2,000000002305DBA4

l2305DB98:
	c.li	a2,00000000
	addi	a5,zero,+0000002E

l2305DB9E:
	bne	a2,a0,000000002305DBAE

l2305DBA2:
	c.li	a5,FFFFFFFF

l2305DBA4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

l2305DBAE:
	add	a1,s0,a2
	lbu	a6,a1,+00000000
	beq	a6,a5,000000002305DBBE

l2305DBBA:
	c.addi	a2,00000001
	c.j	000000002305DB9E

l2305DBBE:
	c.li	a5,FFFFFFFF
	c.beqz	a2,000000002305DBA4

l2305DBC2:
	c.addi	a4,FFFFFFFF
	sub	a2,a0,a2
	bne	a2,a4,000000002305DBA4

l2305DBCC:
	addi	a0,a3,+00000001
	jal	ra,000000002305DA7E
	sltu	a0,zero,a0
	sub	a5,zero,a0
	c.j	000000002305DBA4

l2305DBDE:
	c.li	a5,00000000
	c.j	000000002305DBA4

;; x509_profile_check_key: 2305DBE2
;;   Called from:
;;     2305E5B0 (in x509_crt_verify_top.isra.7)
;;     2305E744 (in x509_crt_verify_child)
;;     2305E998 (in mbedtls_x509_crt_verify_with_profile)
x509_profile_check_key proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,00000001
	c.mv	s0,a0
	beq	a1,a5,000000002305DBF6

l2305DBF0:
	c.li	a4,00000006
	bne	a1,a4,000000002305DC10

l2305DBF6:
	c.mv	a0,a2
	jal	ra,000000002305668C
	c.lw	s0,12(a5)
	sltu	a5,a0,a5

l2305DC02:
	sub	a4,zero,a5

l2305DC06:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,a4
	c.addi	sp,00000010
	c.jr	ra

l2305DC10:
	c.addi	a1,FFFFFFFE
	andi	a1,a1,+000000FF
	c.li	a0,00000002
	c.li	a4,FFFFFFFF
	bltu	a0,a1,000000002305DC06

l2305DC1E:
	c.lw	a2,4(a4)
	lbu	a0,a4,+00000000
	c.addi	a0,FFFFFFFF
	sll	a5,a5,a0
	c.lw	s0,8(a0)
	c.and	a5,a0
	sltiu	a5,a5,+00000001
	c.j	000000002305DC02

;; mbedtls_x509_crt_info: 2305DC34
;;   Called from:
;;     2305092C (in iot_tls_connect)
;;     230509CA (in _iot_tls_verify_cert)
;;     23063414 (in mbedtls_debug_print_crt)
mbedtls_x509_crt_info proc
	c.addi16sp	FFFFFFA0
	c.swsp	s4,00000024
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.mv	s4,a1
	c.bnez	a3,000000002305DC7A

l2305DC4A:
	lui	a2,0002308A
	addi	a2,a2,+000003B4
	jal	ra,000000002305216A
	bge	a0,zero,000000002305DC62

l2305DC5A:
	c.lui	a0,FFFFD000
	addi	a0,a0,+00000680
	c.j	000000002305DC66

l2305DC62:
	bgeu	a0,s4,000000002305DC5A

l2305DC66:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.lwsp	t0,000000A8
	c.lwsp	ra,000000C8
	c.addi16sp	00000060
	c.jr	ra

l2305DC7A:
	c.lw	a3,24(a4)
	c.mv	s3,a2
	c.mv	s2,a3
	c.mv	a3,a2
	lui	a2,0002308A
	addi	a2,a2,+000003D4
	c.mv	s1,a0
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305DC94:
	bgeu	a0,s4,000000002305DC5A

l2305DC98:
	sub	s0,s4,a0
	c.add	s1,a0
	lui	a2,0002308A
	c.mv	a3,s3
	addi	a2,a2,+000003F0
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305DCB4:
	bgeu	a0,s0,000000002305DC5A

l2305DCB8:
	c.sub	s0,a0
	c.add	s1,a0
	addi	a2,s2,+0000001C
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002306C4B0
	blt	a0,zero,000000002305DC5A

l2305DCCC:
	bgeu	a0,s0,000000002305DC5A

l2305DCD0:
	c.sub	s0,a0
	c.add	s1,a0
	lui	a2,0002308A
	c.mv	a3,s3
	addi	a2,a2,+00000408
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305DCEA:
	bgeu	a0,s0,000000002305DC5A

l2305DCEE:
	c.sub	s0,a0
	c.add	s1,a0
	addi	a2,s2,+0000004C
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002306C340
	blt	a0,zero,000000002305DC5A

l2305DD02:
	bgeu	a0,s0,000000002305DC5A

l2305DD06:
	c.sub	s0,a0
	c.add	s1,a0
	lui	a2,0002308A
	c.mv	a3,s3
	addi	a2,a2,+00000424
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305DD20:
	bgeu	a0,s0,000000002305DC5A

l2305DD24:
	c.sub	s0,a0
	c.add	s1,a0
	addi	a2,s2,+0000006C
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002306C340
	blt	a0,zero,000000002305DC5A

l2305DD38:
	bgeu	a0,s0,000000002305DC5A

l2305DD3C:
	lw	a5,s2,+000000A0
	c.sub	s0,a0
	c.add	s1,a0
	c.swsp	a5,00000080
	lw	a5,s2,+0000009C
	lui	a2,0002308A
	c.mv	a3,s3
	c.swsp	a5,00000000
	lw	a7,s2,+00000098
	lw	a6,s2,+00000094
	lw	a5,s2,+00000090
	lw	a4,s2,+0000008C
	addi	a2,a2,+00000440
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305DD72:
	bgeu	a0,s0,000000002305DC5A

l2305DD76:
	lw	a5,s2,+000000B8
	c.sub	s0,a0
	c.add	s1,a0
	c.swsp	a5,00000080
	lw	a5,s2,+000000B4
	lui	a2,0002308A
	c.mv	a3,s3
	c.swsp	a5,00000000
	lw	a7,s2,+000000B0
	lw	a6,s2,+000000AC
	lw	a5,s2,+000000A8
	lw	a4,s2,+000000A4
	addi	a2,a2,+00000478
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305DDAC:
	bgeu	a0,s0,000000002305DC5A

l2305DDB0:
	c.sub	s0,a0
	c.add	s1,a0
	lui	a2,0002308A
	c.mv	a3,s3
	addi	a2,a2,+000004B0
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305DDCA:
	bgeu	a0,s0,000000002305DC5A

l2305DDCE:
	lw	a5,s2,+0000012C
	lbu	a4,s2,+00000128
	lbu	a3,s2,+00000129
	c.sub	s0,a0
	c.add	s1,a0
	addi	a2,s2,+00000028
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002306C586
	c.mv	s5,a0
	blt	a0,zero,000000002305DC5A

l2305DDF0:
	bgeu	a0,s0,000000002305DC5A

l2305DDF4:
	addi	s6,s2,+000000BC
	c.mv	a0,s6
	jal	ra,00000000230567A0
	c.mv	a2,a0
	c.li	a1,00000012
	c.addi4spn	a0,0000002C
	jal	ra,000000002306C5DA
	bne	a0,zero,000000002305DC66

l2305DE0C:
	c.mv	a0,s6
	jal	ra,000000002305668C
	sub	s0,s0,s5
	c.add	s1,s5
	lui	a2,0002308A
	c.mv	a5,a0
	c.addi4spn	a4,0000002C
	c.mv	a3,s3
	addi	a2,a2,+000004CC
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305DE32:
	bgeu	a0,s0,000000002305DC5A

l2305DE36:
	lw	a5,s2,+000000F8
	c.sub	s0,a0
	c.add	s1,a0
	andi	a5,a5,+00000100
	c.beqz	a5,000000002305DE96

l2305DE44:
	lw	a5,s2,+000000FC
	c.bnez	a5,000000002305DEE2

l2305DE4A:
	lui	a4,00023073
	addi	a4,a4,-000001A0

l2305DE52:
	lui	a2,0002308A
	c.mv	a3,s3
	addi	a2,a2,+000004E0
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305DE68:
	bgeu	a0,s0,000000002305DC5A

l2305DE6C:
	lw	a3,s2,+00000100
	c.sub	s0,a0
	c.add	s1,a0
	bge	zero,a3,000000002305DE96

l2305DE78:
	lui	a2,0002308A
	c.addi	a3,FFFFFFFF
	addi	a2,a2,+00000500
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305DE8E:
	bgeu	a0,s0,000000002305DC5A

l2305DE92:
	c.sub	s0,a0
	c.add	s1,a0

l2305DE96:
	lw	a5,s2,+000000F8
	andi	a5,a5,+00000020
	c.beqz	a5,000000002305DF10

l2305DEA0:
	lui	a2,0002308A
	c.mv	a3,s3
	addi	a2,a2,+00000514
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305DEB6:
	bgeu	a0,s0,000000002305DC5A

l2305DEBA:
	lui	a3,00023089
	lui	a2,00023080
	c.sub	s0,a0
	c.add	s1,a0
	addi	a5,s2,+000000E8
	addi	a3,a3,-000001A0
	c.li	a1,00000000
	addi	a2,a2,+00000648

l2305DED4:
	c.lw	a5,4(a4)
	c.add	a4,a1
	bltu	a4,s0,000000002305DEEC

l2305DEDC:
	sb	zero,s1,+00000000
	c.j	000000002305DC5A

l2305DEE2:
	lui	a4,00023073
	addi	a4,a4,-000001A8
	c.j	000000002305DE52

l2305DEEC:
	c.sub	s0,a4
	c.li	a4,00000000

l2305DEF0:
	add	a0,s1,a4
	bne	a4,a1,000000002305E2D8

l2305DEF8:
	c.li	a4,00000000

l2305DEFA:
	c.lw	a5,4(a3)
	add	s1,a0,a4
	bltu	a4,a3,000000002305E2E8

l2305DF04:
	c.lw	a5,12(a5)
	c.li	a1,00000002
	c.mv	a3,a2
	c.bnez	a5,000000002305DED4

l2305DF0C:
	sb	zero,s1,+00000000

l2305DF10:
	lw	a5,s2,+000000F8
	slli	a4,a5,0000000F
	bge	a4,zero,000000002305E094

l2305DF1C:
	lui	a2,0002308A
	c.mv	a3,s3
	addi	a2,a2,+00000530
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305DF32:
	bgeu	a0,s0,000000002305DC5A

l2305DF36:
	lbu	s5,s2,+00000118
	lui	a5,00023089
	c.sub	s0,a0
	slli	a4,s5,00000018
	c.srai	a4,00000018
	c.add	s1,a0
	addi	a3,a5,-000001A0
	bge	a4,zero,000000002305DF74

l2305DF50:
	lui	a2,0002308A
	addi	a2,a2,+0000054C
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305DF64:
	bgeu	a0,s0,000000002305DC5A

l2305DF68:
	lui	a3,00023080
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,+00000648

l2305DF74:
	andi	a5,s5,+00000040
	c.beqz	a5,000000002305DF9E

l2305DF7A:
	lui	a2,0002308A
	addi	a2,a2,+0000055C
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305DF8E:
	bgeu	a0,s0,000000002305DC5A

l2305DF92:
	lui	a3,00023080
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,+00000648

l2305DF9E:
	andi	a5,s5,+00000020
	c.beqz	a5,000000002305DFC8

l2305DFA4:
	lui	a2,0002308A
	addi	a2,a2,+0000056C
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305DFB8:
	bgeu	a0,s0,000000002305DC5A

l2305DFBC:
	lui	a3,00023080
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,+00000648

l2305DFC8:
	andi	a5,s5,+00000010
	c.beqz	a5,000000002305DFF2

l2305DFCE:
	lui	a2,0002308A
	addi	a2,a2,+00000574
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305DFE2:
	bgeu	a0,s0,000000002305DC5A

l2305DFE6:
	lui	a3,00023080
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,+00000648

l2305DFF2:
	andi	a5,s5,+00000008
	c.beqz	a5,000000002305E01C

l2305DFF8:
	lui	a2,0002308A
	addi	a2,a2,+00000588
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305E00C:
	bgeu	a0,s0,000000002305DC5A

l2305E010:
	lui	a3,00023080
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,+00000648

l2305E01C:
	andi	a5,s5,+00000004
	c.beqz	a5,000000002305E046

l2305E022:
	lui	a2,0002308A
	addi	a2,a2,+00000594
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305E036:
	bgeu	a0,s0,000000002305DC5A

l2305E03A:
	lui	a3,00023080
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,+00000648

l2305E046:
	andi	a5,s5,+00000002
	c.beqz	a5,000000002305E070

l2305E04C:
	lui	a2,0002308A
	addi	a2,a2,+000005A0
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305E060:
	bgeu	a0,s0,000000002305DC5A

l2305E064:
	lui	a3,00023080
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,+00000648

l2305E070:
	andi	s5,s5,+00000001
	beq	s5,zero,000000002305E094

l2305E078:
	lui	a2,0002308A
	addi	a2,a2,+000005AC
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305E08C:
	bgeu	a0,s0,000000002305DC5A

l2305E090:
	c.sub	s0,a0
	c.add	s1,a0

l2305E094:
	lw	a5,s2,+000000F8
	c.andi	a5,00000004
	beq	a5,zero,000000002305E23C

l2305E09E:
	lui	a2,0002308A
	c.mv	a3,s3
	addi	a2,a2,+000005C0
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305E0B4:
	bgeu	a0,s0,000000002305DC5A

l2305E0B8:
	lw	s5,s2,+00000104
	lui	a5,00023089
	c.sub	s0,a0
	andi	a4,s5,+00000080
	c.add	s1,a0
	addi	a3,a5,-000001A0
	c.beqz	a4,000000002305E0F2

l2305E0CE:
	lui	a2,0002308A
	addi	a2,a2,+000005DC
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305E0E2:
	bgeu	a0,s0,000000002305DC5A

l2305E0E6:
	lui	a3,00023080
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,+00000648

l2305E0F2:
	andi	a5,s5,+00000040
	c.beqz	a5,000000002305E11C

l2305E0F8:
	lui	a2,0002308A
	addi	a2,a2,+000005F0
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305E10C:
	bgeu	a0,s0,000000002305DC5A

l2305E110:
	lui	a3,00023080
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,+00000648

l2305E11C:
	andi	a5,s5,+00000020
	c.beqz	a5,000000002305E146

l2305E122:
	lui	a2,0002308A
	addi	a2,a2,+00000604
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305E136:
	bgeu	a0,s0,000000002305DC5A

l2305E13A:
	lui	a3,00023080
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,+00000648

l2305E146:
	andi	a5,s5,+00000010
	c.beqz	a5,000000002305E170

l2305E14C:
	lui	a2,0002308A
	addi	a2,a2,+00000618
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305E160:
	bgeu	a0,s0,000000002305DC5A

l2305E164:
	lui	a3,00023080
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,+00000648

l2305E170:
	andi	a5,s5,+00000008
	c.beqz	a5,000000002305E19A

l2305E176:
	lui	a2,0002308A
	addi	a2,a2,+0000062C
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305E18A:
	bgeu	a0,s0,000000002305DC5A

l2305E18E:
	lui	a3,00023080
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,+00000648

l2305E19A:
	andi	a5,s5,+00000004
	c.beqz	a5,000000002305E1C4

l2305E1A0:
	lui	a2,0002308A
	addi	a2,a2,+0000063C
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305E1B4:
	bgeu	a0,s0,000000002305DC5A

l2305E1B8:
	lui	a3,00023080
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,+00000648

l2305E1C4:
	andi	a5,s5,+00000002
	c.beqz	a5,000000002305E1EE

l2305E1CA:
	lui	a2,0002308A
	addi	a2,a2,+0000064C
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305E1DE:
	bgeu	a0,s0,000000002305DC5A

l2305E1E2:
	lui	a3,00023080
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,+00000648

l2305E1EE:
	andi	a5,s5,+00000001
	c.beqz	a5,000000002305E218

l2305E1F4:
	lui	a2,0002308A
	addi	a2,a2,+00000658
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305E208:
	bgeu	a0,s0,000000002305DC5A

l2305E20C:
	lui	a3,00023080
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,+00000648

l2305E218:
	slli	a5,s5,00000010
	bge	a5,zero,000000002305E23C

l2305E220:
	lui	a2,0002308A
	addi	a2,a2,+00000668
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305E234:
	bgeu	a0,s0,000000002305DC5A

l2305E238:
	c.sub	s0,a0
	c.add	s1,a0

l2305E23C:
	lw	a5,s2,+000000F8
	slli	a4,a5,00000014
	bge	a4,zero,000000002305E2BA

l2305E248:
	lui	a2,0002308A
	c.mv	a3,s3
	addi	a2,a2,+00000678
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305E25E:
	bgeu	a0,s0,000000002305DC5A

l2305E262:
	lui	a3,00023089
	lui	s5,0002307F
	lui	s3,00023080
	c.sub	s0,a0
	c.add	s1,a0
	addi	s2,s2,+00000108
	addi	a3,a3,-000001A0
	addi	s5,s5,+000000C4
	lui	s6,00023081
	addi	s3,s3,+00000648

l2305E286:
	c.addi4spn	a1,00000028
	c.mv	a0,s2
	c.swsp	a3,0000008C
	jal	ra,0000000023065BEC
	c.lwsp	t3,000000A4
	c.beqz	a0,000000002305E296

l2305E294:
	c.swsp	s5,00000014

l2305E296:
	c.lwsp	s0,000001D4
	addi	a2,s6,+000002A8
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305E2A8:
	bgeu	a0,s0,000000002305DC5A

l2305E2AC:
	lw	s2,s2,+0000000C
	c.sub	s0,a0
	c.add	s1,a0
	c.mv	a3,s3
	bne	s2,zero,000000002305E286

l2305E2BA:
	lui	a2,00023072
	addi	a2,a2,+000007FC
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305216A
	blt	a0,zero,000000002305DC5A

l2305E2CE:
	bgeu	a0,s0,000000002305DC5A

l2305E2D2:
	c.sub	a0,s0
	c.add	a0,s4
	c.j	000000002305DC66

l2305E2D8:
	add	a6,a3,a4
	lbu	a6,a6,+00000000
	c.addi	a4,00000001
	sb	a6,a0,+00000000
	c.j	000000002305DEF0

l2305E2E8:
	c.lw	a5,8(a3)
	c.add	a3,a4
	lbu	a3,a3,+00000000
	c.addi	a4,00000001
	sb	a3,s1,+00000000
	c.j	000000002305DEFA

;; mbedtls_x509_crt_verify_info: 2305E2F8
;;   Called from:
;;     230508EE (in iot_tls_connect)
mbedtls_x509_crt_verify_info proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,0002308B
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.mv	s3,a0
	c.mv	s1,a1
	c.mv	s5,a2
	c.mv	s4,a3
	c.mv	s0,a1
	addi	s2,s2,-000004D0
	lui	s6,0002308A

l2305E320:
	lw	a4,s2,+00000004
	c.bnez	a4,000000002305E34C

l2305E326:
	beq	s4,zero,000000002305E346

l2305E32A:
	lui	a2,0002308A
	c.mv	a3,s5
	addi	a2,a2,+000006F4
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,000000002305216A
	blt	a0,zero,000000002305E368

l2305E340:
	bgeu	a0,s0,000000002305E368

l2305E344:
	c.sub	s0,a0

l2305E346:
	sub	a0,s1,s0
	c.j	000000002305E36E

l2305E34C:
	lw	a5,s2,+00000000
	and	a5,s4,a5
	c.beqz	a5,000000002305E392

l2305E356:
	c.mv	a3,s5
	addi	a2,s6,+000006EC
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,000000002305216A
	bge	a0,zero,000000002305E382

l2305E368:
	c.lui	a0,FFFFD000
	addi	a0,a0,+00000680

l2305E36E:
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

l2305E382:
	bgeu	a0,s0,000000002305E368

l2305E386:
	lw	a5,s2,+00000000
	c.sub	s0,a0
	c.add	s3,a0
	xor	s4,s4,a5

l2305E392:
	c.addi	s2,00000008
	c.j	000000002305E320

;; mbedtls_x509_crt_check_key_usage: 2305E396
;;   Called from:
;;     2305AD10 (in mbedtls_ssl_check_cert_usage)
;;     2305E410 (in x509_crt_check_parent)
mbedtls_x509_crt_check_key_usage proc
	lw	a5,a0,+000000F8
	c.andi	a5,00000004
	c.beqz	a5,000000002305E3C8

l2305E39E:
	c.lui	a5,FFFF8000
	lw	a4,a0,+00000104
	c.addi	a5,FFFFFFFE
	c.and	a5,a1
	and	a3,a5,a4
	bne	a5,a3,000000002305E3C2

l2305E3B0:
	c.lui	a5,00008000
	c.addi	a5,00000001
	and	a3,a1,a5
	c.or	a1,a4
	c.and	a1,a5
	c.li	a5,00000000
	beq	a3,a1,000000002305E3C8

l2305E3C2:
	c.lui	a5,FFFFE000
	addi	a5,a5,-00000800

l2305E3C8:
	c.mv	a0,a5
	c.jr	ra

;; x509_crt_check_parent: 2305E3CC
;;   Called from:
;;     2305E512 (in x509_crt_verify_top.isra.7)
;;     2305E7AA (in x509_crt_verify_child)
;;     2305E7EC (in x509_crt_verify_child)
;;     2305EA08 (in mbedtls_x509_crt_verify_with_profile)
;;     2305EA1C (in mbedtls_x509_crt_verify_with_profile)
x509_crt_check_parent proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.mv	s1,a1
	c.mv	s2,a0
	addi	a1,a1,+0000006C
	addi	a0,a0,+0000004C
	c.swsp	a2,00000084
	c.swsp	a3,00000004
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	jal	ra,000000002305DAC2
	c.lwsp	s0,000000A4
	c.lwsp	a2,00000084
	c.beqz	a0,000000002305E404

l2305E3F2:
	c.li	s0,FFFFFFFF

l2305E3F4:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2305E404:
	c.bnez	a2,000000002305E41E

l2305E406:
	lw	a5,s1,+000000FC
	c.beqz	a5,000000002305E3F2

l2305E40C:
	c.li	a1,00000004
	c.mv	a0,s1
	jal	ra,000000002305E396
	sltu	a0,zero,a0
	sub	s0,zero,a0
	c.j	000000002305E3F4

l2305E41E:
	c.mv	s0,a0
	lw	s3,s1,+00000018
	c.bnez	a3,000000002305E42E

l2305E426:
	c.li	a5,00000002
	bge	a5,s3,000000002305E3F4

l2305E42C:
	c.j	000000002305E406

l2305E42E:
	lw	a2,s2,+00000004
	c.lw	s1,4(a5)
	bne	a2,a5,000000002305E426

l2305E438:
	c.lw	s1,8(a1)
	lw	a0,s2,+00000008
	jal	ra,0000000023070BF4
	c.bnez	a0,000000002305E426

l2305E444:
	c.j	000000002305E3F4

;; x509_crt_verify_top.isra.7: 2305E446
;;   Called from:
;;     2305E7DC (in x509_crt_verify_child)
;;     2305EA3A (in mbedtls_x509_crt_verify_with_profile)
x509_crt_verify_top.isra.7 proc
	c.addi16sp	FFFFFF80
	c.swsp	s0,0000003C
	c.mv	s0,a0
	addi	a0,a0,+000000A4
	c.swsp	s1,000000B8
	c.swsp	s2,00000038
	c.swsp	s4,00000034
	c.swsp	s5,000000B0
	c.swsp	s6,00000030
	c.swsp	s7,000000AC
	c.swsp	s8,0000002C
	c.swsp	ra,000000BC
	c.swsp	s3,000000B4
	c.swsp	s9,000000A8
	c.swsp	s10,00000028
	c.swsp	s11,000000A4
	c.mv	s2,a1
	c.mv	s6,a2
	c.mv	s4,a3
	c.mv	s8,a4
	c.mv	s1,a5
	c.mv	s5,a6
	c.mv	s7,a7
	c.swsp	zero,0000008C
	jal	ra,000000002306C60A
	c.beqz	a0,000000002305E486

l2305E47E:
	c.lw	s1,0(a5)
	ori	a5,a5,+00000001
	c.sw	s1,0(a5)

l2305E486:
	addi	a0,s0,+0000008C
	jal	ra,000000002306C60E
	c.beqz	a0,000000002305E498

l2305E490:
	c.lw	s1,0(a5)
	ori	a5,a5,+00000200
	c.sw	s1,0(a5)

l2305E498:
	lbu	a5,s0,+00000128
	addi	a4,a5,-00000001
	c.li	a5,00000001
	sll	a5,a5,a4
	lw	a4,s6,+00000000
	c.and	a5,a4
	c.bnez	a5,000000002305E4B6

l2305E4AE:
	c.lw	s1,0(a5)
	c.lui	a4,00004000
	c.or	a5,a4
	c.sw	s1,0(a5)

l2305E4B6:
	lbu	a5,s0,+00000129
	addi	a4,a5,-00000001
	c.li	a5,00000001
	sll	a5,a5,a4
	lw	a4,s6,+00000004
	c.and	a5,a4
	c.bnez	a5,000000002305E4D4

l2305E4CC:
	c.lw	s1,0(a5)
	c.lui	a4,00008000
	c.or	a5,a4
	c.sw	s1,0(a5)

l2305E4D4:
	c.lw	s1,0(a5)
	ori	a5,a5,+00000008
	c.sw	s1,0(a5)
	lbu	a0,s0,+00000128
	jal	ra,00000000230656F8
	c.mv	s9,a0
	c.beqz	a0,000000002305E504

l2305E4E8:
	c.lw	s0,16(a2)
	c.lw	s0,20(a1)
	c.addi4spn	a3,00000020
	c.li	s3,00000000
	jal	ra,0000000023065820
	sltiu	s10,s4,+00000001
	addi	s11,s4,+00000001

l2305E4FC:
	bne	s2,zero,000000002305E50A

l2305E500:
	bne	s3,zero,000000002305E5A0

l2305E504:
	bne	s5,zero,000000002305E634

l2305E508:
	c.j	000000002305E5FE

l2305E50A:
	c.mv	a3,s10
	c.li	a2,00000001
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002305E3CC
	c.bnez	a0,000000002305E58E

l2305E518:
	c.lw	s0,68(a3)
	lw	a4,s2,+00000044
	c.mv	a5,s11
	bne	a3,a4,000000002305E538

l2305E524:
	c.lw	s0,56(a2)
	lw	a1,s2,+00000048
	c.lw	s0,72(a0)
	c.swsp	s11,00000080
	jal	ra,0000000023070BF4
	c.lwsp	tp,000000E4
	c.bnez	a0,000000002305E538

l2305E536:
	c.mv	a5,s4

l2305E538:
	lw	a4,s2,+00000100
	bge	zero,a4,000000002305E548

l2305E540:
	sub	a5,a5,s8
	blt	a4,a5,000000002305E58E

l2305E548:
	lbu	t1,s0,+00000129
	lw	a1,s0,+0000012C
	lbu	a3,s0,+00000128
	c.mv	a0,s9
	c.swsp	t1,00000084
	c.swsp	a1,00000004
	c.swsp	a3,00000080
	jal	ra,0000000023065A0C
	c.lwsp	a2,000000C0
	lw	a7,s0,+00000120
	lw	a6,s0,+00000124
	c.lwsp	tp,000000A4
	c.lwsp	s0,00000064
	c.mv	a5,a0
	c.addi4spn	a4,00000020
	addi	a2,s2,+000000BC
	c.mv	a0,t1
	jal	ra,000000002305669E
	c.bnez	a0,000000002305E58E

l2305E57E:
	addi	a0,s2,+000000A4
	jal	ra,000000002306C60A
	c.beqz	a0,000000002305E594

l2305E588:
	bne	s3,zero,000000002305E58E

l2305E58C:
	c.mv	s3,s2

l2305E58E:
	lw	s2,s2,+00000130
	c.j	000000002305E4FC

l2305E594:
	addi	a0,s2,+0000008C
	jal	ra,000000002306C60E
	c.bnez	a0,000000002305E588

l2305E59E:
	c.mv	s3,s2

l2305E5A0:
	c.lw	s1,0(a5)
	addi	a2,s3,+000000BC
	c.mv	a0,s6
	c.andi	a5,FFFFFFF7
	c.sw	s1,0(a5)
	lbu	a1,s0,+00000129
	jal	ra,000000002305DBE2
	c.beqz	a0,000000002305E5BE

l2305E5B6:
	c.lw	s1,0(a5)
	c.lui	a4,00010000
	c.or	a5,a4
	c.sw	s1,0(a5)

l2305E5BE:
	c.lw	s0,68(a4)
	lw	a5,s3,+00000044
	bne	a4,a5,000000002305E5D6

l2305E5C8:
	c.lw	s0,56(a2)
	lw	a1,s3,+00000048
	c.lw	s0,72(a0)
	jal	ra,0000000023070BF4
	c.beqz	a0,000000002305E504

l2305E5D6:
	addi	a0,s3,+000000A4
	jal	ra,000000002306C60A
	c.beqz	a0,000000002305E5E8

l2305E5E0:
	c.lwsp	t3,000000E4
	ori	a5,a5,+00000001
	c.swsp	a5,0000008C

l2305E5E8:
	addi	a0,s3,+0000008C
	jal	ra,000000002306C60E
	c.beqz	a0,000000002305E5FA

l2305E5F2:
	c.lwsp	t3,000000E4
	ori	a5,a5,+00000200
	c.swsp	a5,0000008C

l2305E5FA:
	bne	s5,zero,000000002305E626

l2305E5FE:
	c.lw	s1,0(a5)
	c.lwsp	t3,000000C4
	c.li	a0,00000000
	c.or	a5,a4
	c.sw	s1,0(a5)

l2305E608:
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
	c.addi16sp	00000080
	c.jr	ra

l2305E626:
	c.addi4spn	a3,0000001C
	addi	a2,s4,+00000001
	c.mv	a1,s3
	c.mv	a0,s7
	c.jalr	s5
	c.bnez	a0,000000002305E608

l2305E634:
	c.mv	a3,s1
	c.mv	a2,s4
	c.mv	a1,s0
	c.mv	a0,s7
	c.jalr	s5
	c.beqz	a0,000000002305E5FE

l2305E640:
	c.j	000000002305E608

;; x509_crt_verify_child: 2305E642
;;   Called from:
;;     2305E80C (in x509_crt_verify_child)
;;     2305EA5C (in mbedtls_x509_crt_verify_with_profile)
x509_crt_verify_child proc
	c.addi16sp	FFFFFF70
	c.swsp	s0,00000044
	c.swsp	s1,000000C0
	c.swsp	s2,00000040
	c.swsp	s3,000000BC
	c.swsp	s4,0000003C
	c.swsp	s6,00000038
	c.swsp	s7,000000B4
	c.swsp	s8,00000034
	c.swsp	s9,000000B0
	c.swsp	s10,00000030
	c.swsp	ra,000000C4
	c.swsp	s5,000000B8
	c.swsp	s11,000000AC
	c.swsp	zero,00000094
	c.mv	s1,a0
	c.mv	s3,a1
	c.mv	s9,a2
	c.mv	s10,a3
	c.mv	s6,a4
	c.mv	s2,a5
	c.mv	s4,a6
	c.mv	s0,a7
	c.lwsp	s2,000000E8
	c.lwsp	s6,0000000C
	c.beqz	a5,000000002305E6B8

l2305E676:
	addi	a1,a0,+0000006C
	addi	a0,a0,+0000004C
	jal	ra,000000002305DAC2
	c.bnez	a0,000000002305E686

l2305E684:
	c.addi	s4,00000001

l2305E686:
	c.li	a5,00000008
	bne	s2,a5,000000002305E6B8

l2305E68C:
	c.lw	s0,0(a5)
	c.lui	a0,FFFFE000
	addi	a0,a0,-00000700
	ori	a5,a5,+00000008
	c.sw	s0,0(a5)

l2305E69A:
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
	c.addi16sp	00000090
	c.jr	ra

l2305E6B8:
	addi	a0,s1,+000000A4
	jal	ra,000000002306C60A
	c.beqz	a0,000000002305E6CA

l2305E6C2:
	c.lw	s0,0(a5)
	ori	a5,a5,+00000001
	c.sw	s0,0(a5)

l2305E6CA:
	addi	a0,s1,+0000008C
	jal	ra,000000002306C60E
	c.beqz	a0,000000002305E6DC

l2305E6D4:
	c.lw	s0,0(a5)
	ori	a5,a5,+00000200
	c.sw	s0,0(a5)

l2305E6DC:
	lbu	a5,s1,+00000128
	addi	a4,a5,-00000001
	c.li	a5,00000001
	sll	a5,a5,a4
	lw	a4,s6,+00000000
	c.and	a5,a4
	c.bnez	a5,000000002305E6FA

l2305E6F2:
	c.lw	s0,0(a5)
	c.lui	a4,00004000
	c.or	a5,a4
	c.sw	s0,0(a5)

l2305E6FA:
	lbu	a5,s1,+00000129
	addi	a4,a5,-00000001
	c.li	a5,00000001
	sll	a5,a5,a4
	lw	a4,s6,+00000004
	c.and	a5,a4
	c.bnez	a5,000000002305E718

l2305E710:
	c.lw	s0,0(a5)
	c.lui	a4,00008000
	c.or	a5,a4
	c.sw	s0,0(a5)

l2305E718:
	lbu	a0,s1,+00000128
	jal	ra,00000000230656F8
	c.mv	s11,a0
	c.bnez	a0,000000002305E72E

l2305E724:
	c.lw	s0,0(a5)
	ori	a5,a5,+00000008
	c.sw	s0,0(a5)
	c.j	000000002305E786

l2305E72E:
	c.lw	s1,16(a2)
	c.lw	s1,20(a1)
	c.addi4spn	a3,00000030
	addi	s5,s3,+000000BC
	jal	ra,0000000023065820
	lbu	a1,s1,+00000129
	c.mv	a2,s5
	c.mv	a0,s6
	jal	ra,000000002305DBE2
	c.beqz	a0,000000002305E752

l2305E74A:
	c.lw	s0,0(a5)
	c.lui	a4,00010000
	c.or	a5,a4
	c.sw	s0,0(a5)

l2305E752:
	lbu	t1,s1,+00000129
	lw	a1,s1,+0000012C
	lbu	a3,s1,+00000128
	c.mv	a0,s11
	c.swsp	t1,0000008C
	c.swsp	a1,0000000C
	c.swsp	a3,00000088
	jal	ra,0000000023065A0C
	c.lwsp	t3,000000C0
	lw	a7,s1,+00000120
	lw	a6,s1,+00000124
	c.lwsp	s4,000000A4
	c.lwsp	s8,00000064
	c.mv	a5,a0
	c.addi4spn	a4,00000030
	c.mv	a2,s5
	c.mv	a0,t1
	jal	ra,000000002305669E
	c.bnez	a0,000000002305E724

l2305E786:
	c.mv	s5,s9
	sltiu	s11,s2,+00000001

l2305E78C:
	bne	s5,zero,000000002305E7A2

l2305E790:
	addi	s11,s2,+00000002
	lw	s5,s3,+00000130
	sltiu	a4,s2,+00000001
	sub	s11,s11,s4
	c.j	000000002305E7C6

l2305E7A2:
	c.mv	a3,s11
	c.li	a2,00000000
	c.mv	a1,s5
	c.mv	a0,s3
	jal	ra,000000002305E3CC
	c.beqz	a0,000000002305E830

l2305E7B0:
	lw	s5,s5,+00000130
	c.j	000000002305E78C

l2305E7B6:
	lw	a5,s5,+00000100
	bge	zero,a5,000000002305E7E2

l2305E7BE:
	bge	a5,s11,000000002305E7E2

l2305E7C2:
	lw	s5,s5,+00000130

l2305E7C6:
	bne	s5,zero,000000002305E7B6

l2305E7CA:
	c.mv	a7,s8
	c.mv	a6,s7
	c.addi4spn	a5,0000002C
	c.mv	a4,s4
	addi	a3,s2,+00000001
	c.mv	a2,s6
	c.mv	a1,s9

l2305E7DA:
	c.mv	a0,s3
	jal	ra,000000002305E446
	c.j	000000002305E80E

l2305E7E2:
	c.mv	a3,a4
	c.li	a2,00000000
	c.mv	a1,s5
	c.mv	a0,s3
	c.swsp	a4,00000088
	jal	ra,000000002305E3CC
	c.lwsp	s4,000000C4
	c.bnez	a0,000000002305E7C2

l2305E7F4:
	c.swsp	s8,00000080
	c.swsp	s7,00000000
	addi	a7,sp,+0000002C
	c.mv	a6,s4
	addi	a5,s2,+00000001
	c.mv	a4,s6
	c.mv	a3,s10
	c.mv	a2,s9
	c.mv	a1,s5
	c.mv	a0,s3
	c.jal	000000002305E642

l2305E80E:
	bne	a0,zero,000000002305E69A

l2305E812:
	bne	s7,zero,000000002305E822

l2305E816:
	c.lw	s0,0(a5)
	c.lwsp	a2,000001D4
	c.li	a0,00000000
	c.or	a5,a4
	c.sw	s0,0(a5)
	c.j	000000002305E69A

l2305E822:
	c.mv	a3,s0
	c.mv	a2,s2
	c.mv	a1,s1
	c.mv	a0,s8
	c.jalr	s7
	c.beqz	a0,000000002305E816

l2305E82E:
	c.j	000000002305E69A

l2305E830:
	c.mv	a7,s8
	c.mv	a6,s7
	c.addi4spn	a5,0000002C
	c.mv	a4,s4
	addi	a3,s2,+00000001
	c.mv	a2,s6
	c.mv	a1,s5
	c.j	000000002305E7DA

;; mbedtls_x509_crt_check_extended_key_usage: 2305E842
;;   Called from:
;;     2305AD3A (in mbedtls_ssl_check_cert_usage)
mbedtls_x509_crt_check_extended_key_usage proc
	lw	a5,a0,+000000F8
	slli	a4,a5,00000014
	bge	a4,zero,000000002305E8AE

l2305E84E:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.mv	s1,a2
	c.mv	s2,a1
	addi	s0,a0,+00000108
	c.li	s4,00000004
	lui	s3,0002308A

l2305E86A:
	c.lw	s0,4(a5)
	beq	a5,s1,000000002305E89E

l2305E870:
	c.lw	s0,4(a5)
	bne	a5,s4,000000002305E884

l2305E876:
	c.lw	s0,8(a1)
	c.li	a2,00000004
	addi	a0,s3,+000003AC
	jal	ra,0000000023070BF4
	c.beqz	a0,000000002305E8AA

l2305E884:
	c.lw	s0,12(s0)
	c.bnez	s0,000000002305E86A

l2305E888:
	c.lui	a0,FFFFE000
	addi	a0,a0,-00000800

l2305E88E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2305E89E:
	c.lw	s0,8(a0)
	c.mv	a2,s1
	c.mv	a1,s2
	jal	ra,0000000023070BF4
	c.bnez	a0,000000002305E870

l2305E8AA:
	c.li	a0,00000000
	c.j	000000002305E88E

l2305E8AE:
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_x509_crt_verify_with_profile: 2305E8B2
;;   Called from:
;;     2305D438 (in mbedtls_ssl_parse_certificate)
mbedtls_x509_crt_verify_with_profile proc
	beq	a3,zero,000000002305EA40

l2305E8B6:
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	ra,000000AC
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	s9,00000098
	c.swsp	s10,00000018
	c.swsp	s11,00000094
	c.swsp	a2,0000000C
	sw	zero,a5,+00000000
	c.mv	s6,a7
	c.mv	s5,a6
	c.mv	s0,a5
	c.mv	s3,a4
	c.mv	s2,a3
	c.mv	s4,a1
	c.mv	s1,a0
	c.beqz	a4,000000002305E96C

l2305E8E8:
	c.mv	a0,a4
	jal	ra,000000002307132C
	lw	a5,s1,+000000F8
	c.mv	s7,a0
	andi	a5,a5,+00000020
	c.bnez	a5,000000002305E91C

l2305E8FA:
	addi	s8,s1,+0000006C
	lui	s9,0002308A
	c.li	s10,00000002
	lui	s11,0002308A

l2305E908:
	lw	a4,s8,+00000004
	c.li	a5,00000003
	beq	a4,a5,000000002305E9B2

l2305E912:
	lw	s8,s8,+00000018
	bne	s8,zero,000000002305E908

l2305E91A:
	c.j	000000002305E948

l2305E91C:
	addi	s9,s1,+000000E8
	c.li	s10,00000002
	lui	s11,0002308A

l2305E926:
	lw	s8,s9,+00000004
	bne	s8,s7,000000002305E93C

l2305E92E:
	lw	a1,s9,+00000008
	c.mv	a2,s7
	c.mv	a0,s3
	jal	ra,000000002305DA7E
	c.beqz	a0,000000002305E96C

l2305E93C:
	bltu	s10,s8,000000002305E952

l2305E940:
	lw	s9,s9,+0000000C
	bne	s9,zero,000000002305E926

l2305E948:
	c.lw	s0,0(a5)
	ori	a5,a5,+00000004
	c.sw	s0,0(a5)
	c.j	000000002305E96C

l2305E952:
	lw	a0,s9,+00000008
	c.li	a2,00000002
	addi	a1,s11,+00000720
	jal	ra,0000000023070BF4
	c.bnez	a0,000000002305E940

l2305E962:
	c.mv	a1,s9
	c.mv	a0,s3
	jal	ra,000000002305DB64
	c.bnez	a0,000000002305E940

l2305E96C:
	addi	a2,s1,+000000BC
	c.mv	a0,a2
	c.swsp	a2,0000008C
	jal	ra,00000000230567B4
	addi	a4,a0,-00000001
	c.li	a5,00000001
	sll	a5,a5,a4
	lw	a4,s2,+00000004
	c.mv	a1,a0
	c.lwsp	t3,00000084
	c.and	a5,a4
	c.bnez	a5,000000002305E996

l2305E98E:
	c.lw	s0,0(a5)
	c.lui	a4,00008000
	c.or	a5,a4
	c.sw	s0,0(a5)

l2305E996:
	c.mv	a0,s2
	jal	ra,000000002305DBE2
	c.beqz	a0,000000002305E9A6

l2305E99E:
	c.lw	s0,0(a5)
	c.lui	a4,00010000
	c.or	a5,a4
	c.sw	s0,0(a5)

l2305E9A6:
	c.mv	s3,s4

l2305E9A8:
	bne	s3,zero,000000002305EA00

l2305E9AC:
	lw	s3,s1,+00000130
	c.j	000000002305EA26

l2305E9B2:
	lw	a1,s8,+00000008
	c.li	a2,00000003
	addi	a0,s9,+00000724
	jal	ra,0000000023070BF4
	c.bnez	a0,000000002305E912

l2305E9C2:
	lw	a4,s8,+00000010
	bne	a4,s7,000000002305E9DC

l2305E9CA:
	lw	a0,s8,+00000014
	c.mv	a2,s7
	c.mv	a1,s3
	c.swsp	a4,0000008C
	jal	ra,000000002305DA7E
	c.lwsp	t3,000000C4
	c.beqz	a0,000000002305E96C

l2305E9DC:
	bgeu	s10,a4,000000002305E912

l2305E9E0:
	lw	a0,s8,+00000014
	c.li	a2,00000002
	addi	a1,s11,+00000720
	jal	ra,0000000023070BF4
	c.bnez	a0,000000002305E912

l2305E9F0:
	addi	a1,s8,+0000000C
	c.mv	a0,s3
	jal	ra,000000002305DB64
	bne	a0,zero,000000002305E912

l2305E9FE:
	c.j	000000002305E96C

l2305EA00:
	c.li	a3,00000001
	c.li	a2,00000000
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,000000002305E3CC
	c.beqz	a0,000000002305EA8C

l2305EA0E:
	lw	s3,s3,+00000130
	c.j	000000002305E9A8

l2305EA14:
	c.li	a3,00000001
	c.li	a2,00000000
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,000000002305E3CC
	c.beqz	a0,000000002305EA48

l2305EA22:
	lw	s3,s3,+00000130

l2305EA26:
	bne	s3,zero,000000002305EA14

l2305EA2A:
	c.mv	a7,s6
	c.mv	a6,s5
	c.mv	a5,s0
	c.li	a4,00000000
	c.li	a3,00000000
	c.mv	a2,s2
	c.mv	a1,s4

l2305EA38:
	c.mv	a0,s1
	jal	ra,000000002305E446
	c.j	000000002305EA60

l2305EA40:
	c.lui	a0,FFFFE000
	addi	a0,a0,-00000800
	c.jr	ra

l2305EA48:
	c.lwsp	s8,000000A4
	c.swsp	s6,00000080
	c.swsp	s5,00000000
	c.mv	a7,s0
	c.li	a6,00000000
	c.li	a5,00000000
	c.mv	a4,s2
	c.mv	a2,s4
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,000000002305E642

l2305EA60:
	c.bnez	a0,000000002305EA6E

l2305EA62:
	c.lw	s0,0(a5)
	c.li	a0,00000000
	c.beqz	a5,000000002305EA6E

l2305EA68:
	c.lui	a0,FFFFE000
	addi	a0,a0,-00000700

l2305EA6E:
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

l2305EA8C:
	c.mv	a7,s6
	c.mv	a6,s5
	c.mv	a5,s0
	c.li	a4,00000000
	c.li	a3,00000000
	c.mv	a2,s2
	c.mv	a1,s3
	c.j	000000002305EA38

;; mbedtls_x509_crt_init: 2305EA9C
;;   Called from:
;;     230504E6 (in iot_tls_connect)
;;     230504F0 (in iot_tls_connect)
;;     2305D3E8 (in mbedtls_ssl_parse_certificate)
;;     2305EBD6 (in mbedtls_x509_crt_parse_der)
mbedtls_x509_crt_init proc
	addi	a2,zero,+00000134
	c.li	a1,00000000
	jal	zero,0000000023070EB8

;; mbedtls_x509_crt_free: 2305EAA6
;;   Called from:
;;     23050BE6 (in iot_tls_destroy)
;;     23050BEE (in iot_tls_destroy)
;;     2305A762 (in mbedtls_ssl_session_free)
;;     2305D396 (in mbedtls_ssl_parse_certificate)
;;     2305EC1A (in mbedtls_x509_crt_parse_der)
;;     2305EC3E (in mbedtls_x509_crt_parse_der)
;;     2305EC94 (in mbedtls_x509_crt_parse_der)
;;     2305ED1C (in mbedtls_x509_crt_parse_der)
;;     2305ED48 (in mbedtls_x509_crt_parse_der)
;;     2305EE64 (in mbedtls_x509_crt_parse_der)
mbedtls_x509_crt_free proc
	beq	a0,zero,000000002305EB82

l2305EAAA:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s1,a0
	c.mv	s0,a0

l2305EABA:
	addi	a0,s0,+000000BC
	jal	ra,00000000230564DE
	lw	s2,s0,+00000064

l2305EAC6:
	bne	s2,zero,000000002305EB26

l2305EACA:
	lw	s2,s0,+00000084

l2305EACE:
	bne	s2,zero,000000002305EB3E

l2305EAD2:
	lw	s2,s0,+00000114

l2305EAD6:
	bne	s2,zero,000000002305EB56

l2305EADA:
	lw	s2,s0,+000000F4

l2305EADE:
	bne	s2,zero,000000002305EB6C

l2305EAE2:
	c.lw	s0,8(a0)
	c.beqz	a0,000000002305EAF2

l2305EAE6:
	c.lw	s0,4(a1)
	jal	ra,000000002305DA6E
	c.lw	s0,8(a0)
	jal	ra,0000000023032272

l2305EAF2:
	lw	s0,s0,+00000130
	c.bnez	s0,000000002305EABA

l2305EAF8:
	c.mv	s0,s1

l2305EAFA:
	addi	a1,zero,+00000134
	c.mv	a0,s0
	lw	s2,s0,+00000130
	jal	ra,000000002305DA6E
	beq	s1,s0,000000002305EB12

l2305EB0C:
	c.mv	a0,s0
	jal	ra,0000000023032272

l2305EB12:
	c.mv	s0,s2
	bne	s2,zero,000000002305EAFA

l2305EB18:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2305EB26:
	c.mv	a0,s2
	lw	s3,s2,+00000018
	addi	a1,zero,+00000020
	jal	ra,000000002305DA6E
	c.mv	a0,s2
	jal	ra,0000000023032272
	c.mv	s2,s3
	c.j	000000002305EAC6

l2305EB3E:
	c.mv	a0,s2
	lw	s3,s2,+00000018
	addi	a1,zero,+00000020
	jal	ra,000000002305DA6E
	c.mv	a0,s2
	jal	ra,0000000023032272
	c.mv	s2,s3
	c.j	000000002305EACE

l2305EB56:
	c.mv	a0,s2
	lw	s3,s2,+0000000C
	c.li	a1,00000010
	jal	ra,000000002305DA6E
	c.mv	a0,s2
	jal	ra,0000000023032272
	c.mv	s2,s3
	c.j	000000002305EAD6

l2305EB6C:
	c.mv	a0,s2
	lw	s3,s2,+0000000C
	c.li	a1,00000010
	jal	ra,000000002305DA6E
	c.mv	a0,s2
	jal	ra,0000000023032272
	c.mv	s2,s3
	c.j	000000002305EADE

l2305EB82:
	c.jr	ra

;; mbedtls_x509_crt_parse_der: 2305EB84
;;   Called from:
;;     2305D550 (in mbedtls_ssl_parse_certificate)
;;     2305F240 (in mbedtls_x509_crt_parse)
;;     2305F294 (in mbedtls_x509_crt_parse)
mbedtls_x509_crt_parse_der proc
	c.addi16sp	FFFFFF70
	c.swsp	ra,000000C4
	c.swsp	s0,00000044
	c.swsp	s1,000000C0
	c.swsp	s2,00000040
	c.swsp	s3,000000BC
	c.swsp	s4,0000003C
	c.swsp	s5,000000B8
	c.swsp	s6,00000038
	c.swsp	s7,000000B4
	c.swsp	s8,00000034
	c.swsp	s9,000000B0
	beq	a0,zero,000000002305F1D4

l2305EBA0:
	beq	a1,zero,000000002305F1D4

l2305EBA4:
	c.mv	s0,a2
	c.mv	s2,a1
	c.mv	s4,a0
	c.mv	s1,a0
	c.li	s3,00000000

l2305EBAE:
	c.lw	s1,24(a5)
	c.beqz	a5,000000002305EBE0

l2305EBB2:
	lw	a5,s1,+00000130
	c.mv	s3,s1
	c.bnez	a5,000000002305EBD2

l2305EBBA:
	addi	a1,zero,+00000134
	c.li	a0,00000001
	jal	ra,000000002305F67C
	sw	a0,s1,+00000130
	c.bnez	a0,000000002305EBD6

l2305EBCA:
	c.lui	a0,FFFFD000
	addi	s0,a0,+00000780
	c.j	000000002305ECA2

l2305EBD2:
	c.mv	s1,a5
	c.j	000000002305EBAE

l2305EBD6:
	jal	ra,000000002305EA9C
	c.mv	s3,s1
	lw	s1,s1,+00000130

l2305EBE0:
	c.li	a2,0000000C
	c.li	a1,00000000
	c.addi4spn	a0,00000024
	jal	ra,0000000023070EB8
	c.li	a2,0000000C
	c.li	a1,00000000
	c.addi4spn	a0,00000030
	jal	ra,0000000023070EB8
	c.li	a2,0000000C
	c.li	a1,00000000
	c.addi4spn	a0,0000003C
	jal	ra,0000000023070EB8
	beq	s1,zero,000000002305F1C2

l2305EC02:
	c.swsp	s0,00000084
	c.add	s0,s2
	addi	a3,zero,+00000030
	c.addi4spn	a2,0000000C
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	c.swsp	s2,00000008
	jal	ra,00000000230608F4
	c.beqz	a0,000000002305EC32

l2305EC18:
	c.mv	a0,s1
	jal	ra,000000002305EAA6
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000180

l2305EC24:
	beq	s3,zero,000000002305EC2C

l2305EC28:
	sw	zero,s3,+00000130

l2305EC2C:
	bne	s4,s1,000000002305F1CC

l2305EC30:
	c.j	000000002305ECA2

l2305EC32:
	c.lwsp	a6,00000064
	c.lwsp	a2,000000E4
	c.sub	s0,a1
	bgeu	s0,a5,000000002305EC4A

l2305EC3C:
	c.mv	a0,s1
	jal	ra,000000002305EAA6
	c.lui	a0,FFFFE000
	addi	s0,a0,-000001E6
	c.j	000000002305EC24

l2305EC4A:
	c.add	a1,a5
	sub	a1,a1,s2
	c.sw	s1,4(a1)
	c.li	a0,00000001
	jal	ra,000000002305F67C
	c.swsp	a0,00000008
	c.sw	s1,8(a0)
	c.bnez	a0,000000002305EC66

l2305EC5E:
	c.lui	a0,FFFFD000
	addi	s0,a0,+00000780
	c.j	000000002305EC24

l2305EC66:
	c.lw	s1,4(a2)
	c.mv	a1,s2
	jal	ra,0000000023070C7C
	c.lw	s1,4(a4)
	c.lwsp	a2,000000E4
	c.lwsp	a6,00000048
	addi	a3,zero,+00000030
	sub	a5,a4,a5
	c.add	a5,s2
	c.add	s2,a4
	c.sw	s1,20(a5)
	c.addi4spn	a2,0000000C
	c.mv	a1,s2
	c.addi4spn	a0,00000010
	c.swsp	a5,00000008
	jal	ra,00000000230608F4
	c.mv	s0,a0
	c.beqz	a0,000000002305ECBE

l2305EC92:
	c.mv	a0,s1
	jal	ra,000000002305EAA6
	c.lui	a0,FFFFE000
	addi	a0,a0,-00000180
	c.add	s0,a0
	c.bnez	s0,000000002305EC24

l2305ECA2:
	c.mv	a0,s0
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
	c.addi16sp	00000090
	c.jr	ra

l2305ECBE:
	c.lwsp	a2,000000E4
	c.lwsp	a6,000000A8
	addi	a3,zero,+000000A0
	c.addi4spn	a2,00000054
	c.add	s5,a5
	c.lw	s1,20(a5)
	c.mv	a1,s5
	c.addi4spn	a0,00000010
	sub	a5,s5,a5
	c.sw	s1,16(a5)
	jal	ra,00000000230608F4
	c.mv	s0,a0
	c.beqz	a0,000000002305ED28

l2305ECDE:
	addi	a5,zero,-00000062
	bne	a0,a5,000000002305ED46

l2305ECE6:
	sw	zero,s1,+00000018

l2305ECEA:
	addi	a2,s1,+0000001C
	c.mv	a1,s5
	c.addi4spn	a0,00000010
	jal	ra,000000002306C094
	c.mv	s0,a0
	c.bnez	a0,000000002305ED46

l2305ECFA:
	addi	s6,s1,+00000028
	c.addi4spn	a3,00000024
	c.mv	a2,s6
	c.mv	a1,s5
	c.addi4spn	a0,00000010
	jal	ra,000000002306C0FC
	c.mv	s0,a0
	c.bnez	a0,000000002305ED46

l2305ED0E:
	c.lw	s1,24(a5)
	c.li	a4,00000003
	c.addi	a5,00000001
	c.sw	s1,24(a5)
	bge	a4,a5,000000002305ED5C

l2305ED1A:
	c.mv	a0,s1
	jal	ra,000000002305EAA6
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000580
	c.j	000000002305EC24

l2305ED28:
	c.lwsp	a6,00000004
	c.lwsp	s5,000000E4
	addi	a2,s1,+00000018
	c.addi4spn	a0,00000010
	c.add	s0,a5
	c.mv	a1,s0
	jal	ra,000000002306095A
	c.beqz	a0,000000002305ED4E

l2305ED3C:
	c.lui	s0,FFFFE000
	addi	s0,s0,-00000200
	c.add	s0,a0
	c.beqz	s0,000000002305ECEA

l2305ED46:
	c.mv	a0,s1
	jal	ra,000000002305EAA6
	c.j	000000002305EC24

l2305ED4E:
	c.lwsp	a6,000000E4
	beq	s0,a5,000000002305ECEA

l2305ED54:
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000266
	c.j	000000002305ED46

l2305ED5C:
	addi	a4,s1,+0000012C
	addi	a3,s1,+00000129
	addi	a2,s1,+00000128
	c.addi4spn	a1,00000024
	c.mv	a0,s6
	jal	ra,000000002306C296
	c.mv	s0,a0
	c.bnez	a0,000000002305ED46

l2305ED74:
	c.lwsp	a6,000000E4
	addi	a3,zero,+00000030
	c.addi4spn	a2,0000000C
	c.sw	s1,60(a5)
	c.mv	a1,s5
	c.addi4spn	a0,00000010
	jal	ra,00000000230608F4
	c.mv	s0,a0
	bne	a0,zero,000000002305EC92

l2305ED8C:
	c.lwsp	a6,00000064
	c.lwsp	a2,000000E4
	addi	a2,s1,+0000004C
	c.addi4spn	a0,00000010
	c.add	a1,a5
	jal	ra,000000002306C114
	c.mv	s0,a0
	c.bnez	a0,000000002305ED46

l2305EDA0:
	c.lw	s1,60(a4)
	c.lwsp	a6,000000E4
	addi	a3,zero,+00000030
	c.addi4spn	a2,00000054
	c.sub	a5,a4
	c.sw	s1,56(a5)
	c.mv	a1,s5
	c.addi4spn	a0,00000010
	jal	ra,00000000230608F4
	c.mv	s0,a0
	c.beqz	a0,000000002305EE70

l2305EDBA:
	addi	a5,zero,-00000062
	bne	a0,a5,000000002305ED46

l2305EDC2:
	c.lwsp	a6,000000E4
	addi	a3,zero,+00000030
	c.addi4spn	a2,0000000C
	c.sw	s1,72(a5)
	c.mv	a1,s5
	c.addi4spn	a0,00000010
	jal	ra,00000000230608F4
	c.mv	s0,a0
	bne	a0,zero,000000002305EC92

l2305EDDA:
	c.lwsp	a2,000000E4
	c.beqz	a5,000000002305EDF0

l2305EDDE:
	c.lwsp	a6,00000064
	addi	a2,s1,+0000006C
	c.addi4spn	a0,00000010
	c.add	a1,a5
	jal	ra,000000002306C114
	c.mv	s0,a0
	c.bnez	a0,000000002305ED46

l2305EDF0:
	c.lw	s1,72(a4)
	c.lwsp	a6,000000E4
	addi	a2,s1,+000000BC
	c.mv	a1,s5
	c.sub	a5,a4
	c.sw	s1,68(a5)
	c.addi4spn	a0,00000010
	jal	ra,0000000023056D40
	c.mv	s0,a0
	c.bnez	a0,000000002305ED46

l2305EE08:
	c.lw	s1,24(a5)
	c.li	a4,00000001
	c.addi	a5,FFFFFFFE
	bltu	a4,a5,000000002305EE1E

l2305EE12:
	c.lwsp	a6,000000E4
	bne	s5,a5,000000002305EE7A

l2305EE18:
	c.lwsp	a6,000000E4
	bne	s5,a5,000000002305EEBA

l2305EE1E:
	c.lw	s1,24(a4)
	c.li	a5,00000003
	bne	a4,a5,000000002305EEF8

l2305EE26:
	c.li	a3,00000003
	addi	a2,s1,+000000DC
	c.mv	a1,s5
	c.addi4spn	a0,00000010
	jal	ra,000000002306C2DA
	c.mv	s0,a0
	c.bnez	a0,000000002305EEF0

l2305EE38:
	c.lui	s6,FFFFE000
	addi	s6,s6,-00000500

l2305EE3E:
	c.lwsp	a6,000000E4
	bltu	a5,s5,000000002305EF00

l2305EE44:
	bne	s5,a5,000000002305F11C

l2305EE48:
	c.addi4spn	a3,00000030
	c.addi4spn	a2,0000003C
	c.mv	a1,s2
	c.addi4spn	a0,00000010
	jal	ra,000000002306C0FC
	c.mv	s0,a0
	bne	a0,zero,000000002305ED46

l2305EE5A:
	c.lw	s1,44(a2)
	c.lwsp	ra,000000E4
	beq	a2,a5,000000002305F186

l2305EE62:
	c.mv	a0,s1
	jal	ra,000000002305EAA6
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000680
	c.j	000000002305EC24

l2305EE70:
	c.lwsp	a6,000000E4
	c.lwsp	s5,000000C4
	c.add	a5,a4
	c.swsp	a5,00000008
	c.j	000000002305EDC2

l2305EE7A:
	lbu	a5,a5,+00000000
	addi	a3,zero,+000000A1
	addi	a2,s1,+000000C8
	sw	a5,s1,+000000C4
	c.mv	a1,s5
	c.addi4spn	a0,00000010
	jal	ra,00000000230608F4
	c.mv	s0,a0
	c.beqz	a0,000000002305EEAA

l2305EE96:
	addi	a5,zero,-00000062
	bne	a0,a5,000000002305ED46

l2305EE9E:
	c.lw	s1,24(a5)
	c.li	a4,00000001
	c.addi	a5,FFFFFFFE
	bgeu	a4,a5,000000002305EE18

l2305EEA8:
	c.j	000000002305EE1E

l2305EEAA:
	c.lwsp	a6,000000E4
	lw	a4,s1,+000000C8
	sw	a5,s1,+000000CC
	c.add	a5,a4
	c.swsp	a5,00000008
	c.j	000000002305EE9E

l2305EEBA:
	lbu	a5,a5,+00000000
	addi	a3,zero,+000000A2
	addi	a2,s1,+000000D4
	sw	a5,s1,+000000D0
	c.mv	a1,s5
	c.addi4spn	a0,00000010
	jal	ra,00000000230608F4
	c.mv	s0,a0
	c.beqz	a0,000000002305EEE0

l2305EED6:
	addi	a5,zero,-00000062
	bne	a0,a5,000000002305ED46

l2305EEDE:
	c.j	000000002305EE1E

l2305EEE0:
	c.lwsp	a6,000000E4
	lw	a4,s1,+000000D4
	sw	a5,s1,+000000D8
	c.add	a5,a4
	c.swsp	a5,00000008
	c.j	000000002305EE1E

l2305EEF0:
	addi	a5,zero,-00000062
	bne	a0,a5,000000002305ED46

l2305EEF8:
	c.lwsp	a6,000000E4
	beq	s5,a5,000000002305EE48

l2305EEFE:
	c.j	000000002305EC3C

l2305EF00:
	addi	a3,zero,+00000030
	c.addi4spn	a2,00000014
	c.mv	a1,s5
	c.addi4spn	a0,00000010
	c.swsp	zero,00000024
	c.swsp	zero,000000A4
	c.swsp	zero,00000028
	c.swsp	zero,0000000C
	c.swsp	zero,0000008C
	jal	ra,00000000230608F4
	c.beqz	a0,000000002305EF26

l2305EF1A:
	c.lui	s0,FFFFE000
	addi	s0,s0,-00000500
	c.add	s0,a0
	c.beqz	s0,000000002305EEF8

l2305EF24:
	c.j	000000002305ED46

l2305EF26:
	c.lwsp	a6,000000E4
	c.lwsp	s4,000000E8
	c.li	a3,00000006
	c.addi4spn	a2,0000004C
	c.add	s7,a5
	lbu	a5,a5,+00000000
	c.mv	a1,s5
	c.addi4spn	a0,00000010
	c.swsp	a5,00000024
	jal	ra,00000000230608F4
	c.bnez	a0,000000002305EF1A

l2305EF40:
	c.lwsp	a6,000000E4
	c.lwsp	a3,000000C4
	c.swsp	a5,00000028
	c.add	a5,a4
	c.swsp	a5,00000008
	sub	a5,s5,a5
	bge	zero,a5,000000002305F1E4

l2305EF52:
	c.addi4spn	a2,00000018
	c.mv	a1,s7
	c.addi4spn	a0,00000010
	jal	ra,000000002306091A
	c.beqz	a0,000000002305EF66

l2305EF5E:
	addi	a5,zero,-00000062
	bne	a0,a5,000000002305EF1A

l2305EF66:
	c.li	a3,00000004
	c.addi4spn	a2,00000014
	c.mv	a1,s7
	c.addi4spn	a0,00000010
	jal	ra,00000000230608F4
	c.bnez	a0,000000002305EF1A

l2305EF74:
	c.lwsp	a6,00000004
	c.lwsp	s4,000000E4
	c.add	s0,a5
	bne	s7,s0,000000002305F11C

l2305EF7E:
	c.addi4spn	a1,0000001C
	c.addi4spn	a0,00000048
	jal	ra,0000000023065B9E
	c.beqz	a0,000000002305EF98

l2305EF88:
	c.lwsp	s8,000000E4
	c.swsp	s7,00000008
	beq	a5,zero,000000002305EE3E

l2305EF90:
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000562
	c.j	000000002305ED46

l2305EF98:
	lw	a4,s1,+000000F8
	c.lwsp	t3,000000E4
	and	a3,a4,a5
	bne	a3,zero,000000002305F1EC

l2305EFA6:
	c.or	a4,a5
	sw	a4,s1,+000000F8
	addi	a4,zero,+00000100
	beq	a5,a4,000000002305F004

l2305EFB4:
	blt	a4,a5,000000002305EFCE

l2305EFB8:
	c.li	a4,00000004
	beq	a5,a4,000000002305F082

l2305EFBE:
	addi	a4,zero,+00000020
	beq	a5,a4,000000002305F0EC

l2305EFC6:
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000080
	c.j	000000002305ED46

l2305EFCE:
	addi	a4,a5,-00000800
	beq	a4,zero,000000002305F0D2

l2305EFD6:
	c.lui	a4,00010000
	bne	a5,a4,000000002305EFC6

l2305EFDC:
	c.addi4spn	a2,00000054
	c.mv	a1,s7
	c.addi4spn	a0,00000010
	c.swsp	zero,000000A8
	sb	zero,sp,+00000058
	c.swsp	zero,000000AC
	jal	ra,00000000230609EA
	c.bnez	a0,000000002305F01C

l2305EFF0:
	c.lwsp	s5,000000C4
	c.li	a5,00000001
	bne	a4,a5,000000002305F09A

l2305EFF8:
	c.lwsp	t4,000000E4
	lbu	a5,a5,+00000000
	sb	a5,s1,+00000118
	c.j	000000002305EE3E

l2305F004:
	sw	zero,s1,+000000FC
	sw	zero,s1,+00000100
	addi	a3,zero,+00000030
	c.addi4spn	a2,00000054
	c.mv	a1,s7
	c.addi4spn	a0,00000010
	jal	ra,00000000230608F4
	c.beqz	a0,000000002305F026

l2305F01C:
	add	s0,a0,s6
	beq	s0,zero,000000002305EE3E

l2305F024:
	c.j	000000002305ED46

l2305F026:
	c.lwsp	a6,000000E4
	beq	s0,a5,000000002305EE3E

l2305F02C:
	addi	s7,s1,+000000FC
	c.mv	a2,s7
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	jal	ra,000000002306091A
	c.beqz	a0,000000002305F05C

l2305F03C:
	addi	a5,zero,-00000062
	bne	a0,a5,000000002305F01C

l2305F044:
	c.mv	a2,s7
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	jal	ra,000000002306095A
	c.bnez	a0,000000002305F01C

l2305F050:
	lw	a5,s1,+000000FC
	c.beqz	a5,000000002305F05C

l2305F056:
	c.li	a5,00000001
	sw	a5,s1,+000000FC

l2305F05C:
	c.lwsp	a6,000000E4
	beq	s0,a5,000000002305EE3E

l2305F062:
	addi	a2,s1,+00000100
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	jal	ra,000000002306095A
	c.bnez	a0,000000002305F01C

l2305F070:
	c.lwsp	a6,000000E4
	bne	s0,a5,000000002305F11C

l2305F076:
	lw	a5,s1,+00000100
	c.addi	a5,00000001
	sw	a5,s1,+00000100
	c.j	000000002305EE3E

l2305F082:
	c.addi4spn	a2,00000054
	c.mv	a1,s7
	c.addi4spn	a0,00000010
	c.swsp	zero,000000A8
	sb	zero,sp,+00000058
	c.swsp	zero,000000AC
	jal	ra,00000000230609EA
	c.bnez	a0,000000002305F01C

l2305F096:
	c.lwsp	s5,00000084
	c.bnez	a2,000000002305F0A2

l2305F09A:
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000564
	c.j	000000002305ED46

l2305F0A2:
	sw	zero,s1,+00000104
	c.lwsp	t4,00000044
	c.li	a5,00000000
	c.li	a1,00000004

l2305F0AC:
	add	a4,a0,a5
	lbu	a4,a4,+00000000
	slli	a3,a5,00000003
	c.addi	a5,00000001
	sll	a3,a4,a3
	lw	a4,s1,+00000104
	c.or	a4,a3
	sw	a4,s1,+00000104
	beq	a2,a5,000000002305EE3E

l2305F0CC:
	bne	a5,a1,000000002305F0AC

l2305F0D0:
	c.j	000000002305EE3E

l2305F0D2:
	c.li	a3,00000006
	addi	a2,s1,+00000108
	c.mv	a1,s7
	c.addi4spn	a0,00000010
	jal	ra,0000000023060A86
	c.bnez	a0,000000002305F01C

l2305F0E2:
	lw	a5,s1,+00000110
	bne	a5,zero,000000002305EE3E

l2305F0EA:
	c.j	000000002305F09A

l2305F0EC:
	addi	a3,zero,+00000030
	c.addi4spn	a2,00000020
	c.mv	a1,s7
	c.addi4spn	a0,00000010
	jal	ra,00000000230608F4
	c.bnez	a0,000000002305F01C

l2305F0FC:
	c.lwsp	a6,000000E4
	c.lwsp	zero,000001D4
	c.add	a5,a4
	bne	s0,a5,000000002305F11C

l2305F106:
	addi	s7,s1,+000000E8
	addi	s8,zero,+00000082

l2305F10E:
	c.lwsp	a6,000000E4
	bltu	a5,s0,000000002305F124

l2305F114:
	sw	zero,s7,+0000000C
	beq	s0,a5,000000002305EE3E

l2305F11C:
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000566
	c.j	000000002305ED46

l2305F124:
	sub	a4,s0,a5
	bge	zero,a4,000000002305F1E4

l2305F12C:
	lbu	s9,a5,+00000000
	c.addi4spn	a2,00000054
	c.addi	a5,00000001
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	c.swsp	a5,00000008
	jal	ra,0000000023060818
	bne	a0,zero,000000002305F01C

l2305F142:
	slli	a5,s9,00000018
	c.srai	a5,00000018
	bge	a5,zero,000000002305EF90

l2305F14C:
	beq	s9,s8,000000002305F15A

l2305F150:
	c.lwsp	a6,000000E4
	c.lwsp	s5,000000C4

l2305F154:
	c.add	a5,a4
	c.swsp	a5,00000008
	c.j	000000002305F10E

l2305F15A:
	lw	a5,s7,+00000008
	c.beqz	a5,000000002305F174

l2305F160:
	lw	a5,s7,+0000000C
	c.bnez	a5,000000002305F1EC

l2305F166:
	c.li	a1,00000010
	c.li	a0,00000001
	c.jal	000000002305F67C
	sw	a0,s7,+0000000C
	c.beqz	a0,000000002305F1DC

l2305F172:
	c.mv	s7,a0

l2305F174:
	sw	s8,s7,+00000000
	c.lwsp	a6,000000E4
	sw	a5,s7,+00000008
	c.lwsp	s5,000000C4
	sw	a4,s7,+00000004
	c.j	000000002305F154

l2305F186:
	c.lwsp	t0,00000064
	c.lw	s1,48(a0)
	jal	ra,0000000023070BF4
	bne	a0,zero,000000002305EE62

l2305F192:
	c.lwsp	s0,00000194
	c.lwsp	s4,000001F4
	bne	a2,a5,000000002305EE62

l2305F19A:
	c.beqz	a2,000000002305F1A8

l2305F19C:
	c.lwsp	s8,00000174
	c.lwsp	a2,00000154
	jal	ra,0000000023070BF4
	bne	a0,zero,000000002305EE62

l2305F1A8:
	addi	a2,s1,+0000011C
	c.mv	a1,s2
	c.addi4spn	a0,00000010
	jal	ra,000000002306C244
	c.mv	s0,a0
	bne	a0,zero,000000002305ED46

l2305F1BA:
	c.lwsp	a6,000000E4
	beq	s2,a5,000000002305ECA2

l2305F1C0:
	c.j	000000002305EC3C

l2305F1C2:
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000800
	bne	s3,zero,000000002305EC28

l2305F1CC:
	c.mv	a0,s1
	jal	ra,0000000023032272
	c.j	000000002305ECA2

l2305F1D4:
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000800
	c.j	000000002305ECA2

l2305F1DC:
	c.lui	a0,FFFFE000
	addi	s0,a0,-0000056A
	c.j	000000002305ED46

l2305F1E4:
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000560
	c.j	000000002305ED46

l2305F1EC:
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000500
	c.j	000000002305ED46

;; mbedtls_x509_crt_parse: 2305F1F4
;;   Called from:
;;     230505D6 (in iot_tls_connect)
;;     23050640 (in iot_tls_connect)
;;     2305F326 (in mbedtls_x509_crt_parse_file)
mbedtls_x509_crt_parse proc
	c.addi16sp	FFFFFFB0
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
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
	beq	a0,zero,000000002305F2FC

l2305F214:
	c.mv	s1,a1
	beq	a1,zero,000000002305F2FC

l2305F21A:
	c.mv	s7,a0
	c.mv	s3,a2
	c.beqz	a2,000000002305F23A

l2305F220:
	add	a5,a1,a2
	lbu	a5,a5,-00000001
	c.bnez	a5,000000002305F23A

l2305F22A:
	lui	s5,0002308A
	addi	a1,s5,+00000694
	c.mv	a0,s1
	jal	ra,0000000023071A84
	c.bnez	a0,000000002305F2E0

l2305F23A:
	c.mv	a2,s3
	c.mv	a1,s1
	c.mv	a0,s7
	jal	ra,000000002305EB84
	c.mv	s0,a0

l2305F246:
	c.mv	a0,s0
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

l2305F266:
	c.addi4spn	a0,00000004
	jal	ra,0000000023065EDE
	c.mv	a6,sp
	c.li	a5,00000000
	c.li	a4,00000000
	c.mv	a3,s1
	addi	a2,s9,+000006B0
	addi	a1,s5,+00000694
	c.addi4spn	a0,00000004
	jal	ra,0000000023065EE6
	c.mv	s2,a0
	c.bnez	a0,000000002305F2A8

l2305F286:
	c.lwsp	zero,000000E4
	c.lwsp	s0,00000084
	c.lwsp	tp,00000064
	c.mv	a0,s7
	sub	s3,s3,a5
	c.add	s1,a5
	jal	ra,000000002305EB84
	c.mv	s2,a0
	c.addi4spn	a0,00000004
	jal	ra,00000000230661EE
	bne	s2,zero,000000002305F2D8

l2305F2A4:
	c.li	s8,00000001
	c.j	000000002305F2C4

l2305F2A8:
	beq	a0,s10,000000002305F2DC

l2305F2AC:
	beq	a0,s6,000000002305F2CA

l2305F2B0:
	c.addi4spn	a0,00000004
	jal	ra,00000000230661EE
	c.lwsp	zero,000000E4
	sub	s3,s3,a5
	c.add	s1,a5

l2305F2BE:
	c.bnez	s0,000000002305F2C2

l2305F2C0:
	c.mv	s0,s2

l2305F2C2:
	c.addi	s4,00000001

l2305F2C4:
	c.li	a5,00000001
	bltu	a5,s3,000000002305F266

l2305F2CA:
	bne	s8,zero,000000002305F304

l2305F2CE:
	c.bnez	s0,000000002305F246

l2305F2D0:
	c.lui	s0,FFFFE000
	addi	s0,s0,-00000780
	c.j	000000002305F246

l2305F2D8:
	bne	s2,s11,000000002305F2BE

l2305F2DC:
	c.mv	s0,s2
	c.j	000000002305F246

l2305F2E0:
	c.lui	a5,FFFFF000
	c.lui	s11,FFFFD000
	c.li	s4,00000000
	c.li	s0,00000000
	c.li	s8,00000000
	lui	s9,0002308A
	addi	s10,a5,-00000480
	addi	s6,a5,-00000080
	addi	s11,s11,+00000780
	c.j	000000002305F2C4

l2305F2FC:
	c.lui	s0,FFFFE000
	addi	s0,s0,-00000800
	c.j	000000002305F246

l2305F304:
	c.mv	s0,s4
	c.j	000000002305F246

;; mbedtls_x509_crt_parse_file: 2305F308
;;   Called from:
;;     2305059C (in iot_tls_connect)
;;     23050608 (in iot_tls_connect)
mbedtls_x509_crt_parse_file proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.addi4spn	a2,00000008
	c.mv	s1,a0
	c.mv	a0,a1
	c.addi4spn	a1,0000000C
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	jal	ra,0000000023056C1C
	c.mv	s0,a0
	c.bnez	a0,000000002305F33A

l2305F320:
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.mv	a0,s1
	jal	ra,000000002305F1F4
	c.mv	s0,a0
	c.lwsp	s0,00000064
	c.lwsp	a2,00000044
	jal	ra,000000002305DA6E
	c.lwsp	a2,00000044
	jal	ra,0000000023032272

l2305F33A:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; net_would_block.isra.0: 2305F346
;;   Called from:
;;     2305F4A8 (in mbedtls_net_recv)
;;     2305F52A (in mbedtls_net_send)
net_would_block.isra.0 proc
	c.addi	sp,FFFFFFF0
	c.li	a2,00000000
	c.li	a1,00000003
	c.swsp	ra,00000084
	jal	ra,000000002303BB68
	c.andi	a0,00000001
	c.beqz	a0,000000002305F364

l2305F356:
	lui	a5,00042020
	lw	a0,a5,-000002B0
	c.addi	a0,FFFFFFF5
	sltiu	a0,a0,+00000001

l2305F364:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_net_init: 2305F36A
;;   Called from:
;;     230504BE (in iot_tls_connect)
mbedtls_net_init proc
	c.li	a5,FFFFFFFF
	c.sw	a0,0(a5)
	c.jr	ra

;; mbedtls_net_connect: 2305F370
;;   Called from:
;;     230506E8 (in iot_tls_connect)
mbedtls_net_connect proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.mv	s0,a1
	c.mv	s2,a0
	c.mv	s1,a2
	c.li	a1,00000000
	addi	a2,zero,+00000020
	c.addi4spn	a0,00000020
	c.swsp	a3,00000084
	c.swsp	ra,000000AC
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	jal	ra,0000000023070EB8
	c.lwsp	a2,000000A4
	c.swsp	zero,00000090
	c.li	a4,00000001
	c.li	a5,00000001
	bne	a3,a4,000000002305F3A0

l2305F39E:
	c.li	a5,00000002

l2305F3A0:
	c.swsp	a5,00000014
	c.li	a4,00000001
	c.li	a5,00000011
	beq	a3,a4,000000002305F3AC

l2305F3AA:
	c.li	a5,00000006

l2305F3AC:
	c.addi4spn	a3,0000001C
	c.addi4spn	a2,00000020
	c.mv	a1,s1
	c.mv	a0,s0
	c.swsp	a5,00000094
	jal	ra,000000002303A468
	c.beqz	a0,000000002305F3F2

l2305F3BC:
	lui	a5,00042020
	lw	a3,a5,-000002B0
	lui	a1,0002308B
	lui	a0,0002308B
	addi	a2,zero,+000000F6
	addi	a1,a1,-00000428
	addi	a0,a0,-000003EC
	jal	ra,0000000023052118
	addi	s1,zero,-00000052

l2305F3E0:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.mv	a0,s1
	c.lwsp	a7,00000048
	c.lwsp	s5,00000024
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.addi16sp	00000060
	c.jr	ra

l2305F3F2:
	c.lwsp	t3,00000004
	addi	s1,zero,-00000052
	lui	s3,00042020
	c.li	s4,00000004

l2305F3FE:
	c.bnez	s0,000000002305F408

l2305F400:
	c.lwsp	t3,00000044
	jal	ra,000000002303A448
	c.j	000000002305F3E0

l2305F408:
	c.lw	s0,12(a2)
	c.lw	s0,8(a1)
	c.lw	s0,4(a0)
	jal	ra,000000002303B73A
	sw	a0,s2,+00000000
	blt	a0,zero,000000002305F442

l2305F41A:
	c.lw	s0,16(a2)
	c.lw	s0,20(a1)
	lw	a0,s2,+00000000
	jal	ra,000000002303B3F6
	c.mv	s1,a0
	c.beqz	a0,000000002305F400

l2305F42A:
	lw	a5,s3,-000002B0
	beq	a5,s4,000000002305F41A

l2305F432:
	lw	a0,s2,+00000000
	addi	s1,zero,-00000044
	jal	ra,000000002303B34E

l2305F43E:
	c.lw	s0,28(s0)
	c.j	000000002305F3FE

l2305F442:
	addi	s1,zero,-00000042
	c.j	000000002305F43E

;; mbedtls_net_set_block: 2305F448
;;   Called from:
;;     2305071C (in iot_tls_connect)
mbedtls_net_set_block proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.li	a2,00000000
	c.li	a1,00000003
	jal	ra,000000002303BB68
	andi	a2,a0,-00000002
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a1,00000004
	c.addi	sp,00000010
	jal	zero,000000002303BB68

;; mbedtls_net_recv: 2305F46C
;;   Called from:
;;     2305F634 (in mbedtls_net_recv_timeout)
mbedtls_net_recv proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,0(a0)
	bge	a0,zero,000000002305F49E

l2305F47A:
	lui	a1,0002308B
	lui	a0,0002308B
	addi	a2,zero,+00000141
	addi	a1,a1,-00000414
	addi	a0,a0,-000003C8
	jal	ra,0000000023052118
	addi	a0,zero,-00000045

l2305F496:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2305F49E:
	jal	ra,000000002303B596
	bge	a0,zero,000000002305F496

l2305F4A6:
	c.lw	s0,0(a0)
	jal	ra,000000002305F346
	c.bnez	a0,000000002305F508

l2305F4AE:
	lui	a5,00042020
	lw	a3,a5,-000002B0
	addi	a5,zero,+00000020
	beq	a3,a5,000000002305F4C6

l2305F4BE:
	addi	a5,zero,+00000068
	bne	a3,a5,000000002305F4E4

l2305F4C6:
	lui	a1,0002308B
	lui	a0,0002308B
	addi	a2,zero,+0000014D
	addi	a1,a1,-00000414
	addi	a0,a0,-000003AC
	jal	ra,0000000023052118
	addi	a0,zero,-00000050
	c.j	000000002305F496

l2305F4E4:
	c.li	a5,00000004
	beq	a3,a5,000000002305F508

l2305F4EA:
	lui	a1,0002308B
	lui	a0,0002308B
	addi	a2,zero,+00000155
	addi	a1,a1,-00000414
	addi	a0,a0,-0000038C
	jal	ra,0000000023052118
	addi	a0,zero,-0000004C
	c.j	000000002305F496

l2305F508:
	c.lui	a0,FFFF9000
	addi	a0,a0,+00000700
	c.j	000000002305F496

;; mbedtls_net_send: 2305F510
mbedtls_net_send proc
	c.lw	a0,0(a5)
	blt	a5,zero,000000002305F590

l2305F516:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.mv	a0,a5
	c.swsp	ra,00000084
	jal	ra,000000002303B7DE
	bge	a0,zero,000000002305F564

l2305F528:
	c.lw	s0,0(a0)
	jal	ra,000000002305F346
	c.bnez	a0,000000002305F596

l2305F530:
	lui	a5,00042020
	lw	a3,a5,-000002B0
	addi	a5,zero,+00000020
	beq	a3,a5,000000002305F548

l2305F540:
	addi	a5,zero,+00000068
	bne	a3,a5,000000002305F56C

l2305F548:
	lui	a1,0002308B
	lui	a0,0002308B
	addi	a2,zero,+0000016D
	addi	a1,a1,-00000400
	addi	a0,a0,-000003AC
	jal	ra,0000000023052118
	addi	a0,zero,-00000050

l2305F564:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2305F56C:
	c.li	a5,00000004
	beq	a3,a5,000000002305F596

l2305F572:
	lui	a1,0002308B
	lui	a0,0002308B
	addi	a2,zero,+00000175
	addi	a1,a1,-00000400
	addi	a0,a0,-00000368
	jal	ra,0000000023052118
	addi	a0,zero,-0000004E
	c.j	000000002305F564

l2305F590:
	addi	a0,zero,-00000045
	c.jr	ra

l2305F596:
	c.lui	a0,FFFF9000
	addi	a0,a0,+00000780
	c.j	000000002305F564

;; mbedtls_net_recv_timeout: 2305F59E
mbedtls_net_recv_timeout proc
	c.lw	a0,0(a5)
	blt	a5,zero,000000002305F644

l2305F5A4:
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.li	a4,00000000
	c.li	a6,00000008

l2305F5B2:
	c.addi4spn	s0,00000008
	add	a7,s0,a4
	sb	zero,a7,+00000000
	c.addi	a4,00000001
	bne	a4,a6,000000002305F5B2

l2305F5C2:
	srli	a4,a5,00000005
	c.slli	a4,02
	c.addi4spn	s0,00000020
	c.add	a4,s0
	lw	a7,a4,-00000018
	c.li	a6,00000001
	sll	a6,a6,a5
	or	a6,a6,a7
	sw	a6,a4,+00000FE8
	addi	a6,zero,+000003E8
	srl	a4,a3,a6
	c.swsp	zero,00000088
	c.addi	a5,00000001
	c.swsp	a4,00000008
	and	a4,a3,a6
	add	a4,a4,a6
	c.swsp	a4,0000000C
	c.addi4spn	a4,00000010
	c.bnez	a3,000000002305F5FC

l2305F5FA:
	c.li	a4,00000000

l2305F5FC:
	c.mv	s2,a2
	c.mv	s1,a1
	c.mv	s0,a0
	c.li	a3,00000000
	c.li	a2,00000000
	c.addi4spn	a1,00000008
	c.mv	a0,a5
	jal	ra,000000002303B7E4
	c.beqz	a0,000000002305F64A

l2305F610:
	bge	a0,zero,000000002305F62E

l2305F614:
	lui	a5,00042020
	lw	a4,a5,-000002B0
	c.li	a5,00000004
	addi	a0,zero,-0000004C
	bne	a4,a5,000000002305F638

l2305F626:
	c.lui	a0,FFFF9000
	addi	a0,a0,+00000700
	c.j	000000002305F638

l2305F62E:
	c.mv	a2,s2
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002305F46C

l2305F638:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l2305F644:
	addi	a0,zero,-00000045
	c.jr	ra

l2305F64A:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000800
	c.j	000000002305F638

;; mbedtls_net_free: 2305F652
;;   Called from:
;;     23050BDE (in iot_tls_destroy)
mbedtls_net_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.li	s1,FFFFFFFF
	beq	a0,s1,000000002305F672

l2305F664:
	c.li	a1,00000002
	jal	ra,000000002303BA70
	c.lw	s0,0(a0)
	jal	ra,000000002303B34E
	c.sw	s0,0(s1)

l2305F672:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; mycalloc: 2305F67C
;;   Called from:
;;     23056CE2 (in mbedtls_pk_load_file)
;;     23057198 (in rsa_alloc_wrap)
;;     23057284 (in eckey_alloc_wrap)
;;     23058200 (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     23058210 (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     23059962 (in ssl_append_key_cert)
;;     2305A412 (in mbedtls_ssl_set_hostname)
;;     2305A888 (in ssl_handshake_init)
;;     2305A898 (in ssl_handshake_init)
;;     2305A8FA (in ssl_handshake_init)
;;     2305A9BA (in mbedtls_ssl_setup)
;;     2305A9C8 (in mbedtls_ssl_setup)
;;     2305AEE8 (in mbedtls_ssl_write_record)
;;     2305AF46 (in mbedtls_ssl_write_record)
;;     2305BB74 (in mbedtls_ssl_prepare_handshake_record)
;;     2305D3AA (in mbedtls_ssl_parse_certificate)
;;     2305EBC0 (in mbedtls_x509_crt_parse_der)
;;     2305EC54 (in mbedtls_x509_crt_parse_der)
;;     2305F16A (in mbedtls_x509_crt_parse_der)
;;     23060AE2 (in mbedtls_asn1_get_sequence_of)
;;     2306108A (in mbedtls_mpi_grow)
;;     230610E8 (in mbedtls_mpi_shrink)
;;     23062DA0 (in gcm_ctx_alloc)
;;     23062DE4 (in aes_ctx_alloc)
;;     23063C40 (in ecp_normalize_jac_many)
;;     2306447A (in ecp_mul_comb)
;;     23065792 (in mbedtls_md_setup)
;;     23065A44 (in md5_ctx_alloc)
;;     23065A92 (in sha1_ctx_alloc)
;;     23065AE0 (in sha224_ctx_alloc)
;;     2306610E (in mbedtls_pem_read_buffer)
;;     2306C19A (in mbedtls_x509_get_name)
;;     2306C232 (in mbedtls_x509_get_name)
mycalloc proc
	add	a2,a0,a1
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	a0,a2
	c.swsp	a2,00000084
	jal	ra,000000002303218A
	c.lwsp	a2,00000084
	c.li	a1,00000000
	c.mv	s0,a0
	jal	ra,0000000023070EB8
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; aes_gen_tables: 2305F6A2
;;   Called from:
;;     2305F9CE (in mbedtls_aes_setkey_enc)
aes_gen_tables proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000094
	c.swsp	s1,00000014
	c.swsp	s2,00000090
	c.swsp	s3,00000010
	c.swsp	s4,0000008C
	c.swsp	s5,0000000C
	c.swsp	s6,00000088
	addi	sp,sp,-000007F0
	c.mv	a2,sp
	c.li	a5,00000001
	c.li	a3,00000000
	addi	a0,zero,+00000100

l2305F6C0:
	c.lui	a1,00001000
	addi	a1,a1,-00000800
	c.add	a1,sp
	slli	a4,a5,00000002
	c.add	a4,a1
	sw	a3,a4,+00000C00
	c.sw	a2,0(a5)
	andi	a1,a5,+00000080
	slli	a4,a5,00000001
	c.beqz	a1,000000002305F6E0

l2305F6DE:
	c.li	a1,0000001B

l2305F6E0:
	c.xor	a5,a4
	c.xor	a5,a1
	c.addi	a3,00000001
	andi	a5,a5,+000000FF
	c.addi	a2,00000004
	bne	a3,a0,000000002305F6C0

l2305F6F0:
	lui	a4,00042018
	addi	a4,a4,-000002E8
	addi	a2,a4,+00000028
	c.li	a5,00000001

l2305F6FE:
	c.sw	a4,0(a5)
	slli	a3,a5,00000001
	andi	a5,a5,+00000080
	c.beqz	a5,000000002305F70C

l2305F70A:
	c.li	a5,0000001B

l2305F70C:
	c.xor	a5,a3
	c.addi	a4,00000004
	andi	a5,a5,+000000FF
	bne	a2,a4,000000002305F6FE

l2305F718:
	lui	a1,00042017
	addi	a5,zero,+00000063
	lui	a2,00042018
	sb	a5,a1,+00000C18
	addi	a5,a2,-000002C0
	sb	zero,a5,+00000063
	addi	t1,sp,+00000400
	c.li	a7,00000001
	addi	a1,a1,-000003E8
	addi	a2,a2,-000002C0
	addi	t4,zero,+000000FF
	addi	t3,zero,+00000100

l2305F746:
	lw	a5,t1,+00000004
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	sub	a5,t4,a5
	c.add	a4,sp
	c.slli	a5,02
	c.add	a5,a4
	lw	t5,a5,-00000800
	c.addi	t1,00000004
	slli	a6,t5,00000001
	srai	a5,t5,00000007
	or	a5,a6,a5
	andi	a6,a5,+000000FF
	srai	a5,a6,00000007
	slli	a0,a6,00000001
	c.or	a0,a5
	andi	a0,a0,+000000FF
	srai	a5,a0,00000007
	slli	a3,a0,00000001
	c.or	a3,a5
	andi	a3,a3,+000000FF
	slli	a4,a3,00000001
	srai	a5,a3,00000007
	c.or	a5,a4
	andi	a5,a5,+000000FF
	xor	a5,a5,t5
	xor	a5,a5,a6
	c.xor	a5,a0
	c.xor	a5,a3
	xori	a5,a5,+00000063
	add	a4,a1,a7
	sb	a5,a4,+00000000
	c.add	a5,a2
	sb	a7,a5,+00000000
	c.addi	a7,00000001
	bne	a7,t3,000000002305F746

l2305F7BE:
	lw	s0,sp,+00000438
	lw	s1,sp,+00000424
	lw	s2,sp,+00000434
	lw	s3,sp,+0000042C
	lui	t4,00042017
	lui	t5,00042017
	lui	t6,00042017
	lui	t0,00042018
	lui	t3,00042018
	lui	t1,00042018
	lui	a7,00042018
	lui	a6,00042019
	c.li	a3,00000000
	addi	t4,t4,-000002E8
	addi	t5,t5,+00000118
	addi	t6,t6,+00000518
	addi	t0,t0,-000006E8
	addi	a0,zero,+000000FF
	addi	t3,t3,-000001C0
	addi	t1,t1,+00000240
	addi	a7,a7,+00000640
	addi	a6,a6,-000005C0
	addi	t2,zero,+00000400

l2305F818:
	lbu	a4,a1,+00000000
	slli	a5,a4,00000018
	c.srai	a5,00000018
	c.srai	a5,0000001F
	slli	s4,a4,00000001
	c.andi	a5,0000001B
	xor	s4,s4,a5
	andi	s4,s4,+000000FF
	slli	s5,a4,00000010
	slli	a5,a4,00000008
	xor	a5,a5,s5
	xor	a4,a4,s4
	xor	a5,a5,s4
	c.slli	a4,18
	c.xor	a5,a4
	add	a4,t4,a3
	srli	s5,a5,00000018
	c.sw	a4,0(a5)
	slli	a4,a5,00000008
	or	a4,a4,s5
	add	s4,t5,a3
	sw	a4,s4,+00000000
	srli	s5,a5,00000010
	slli	a4,a5,00000010
	add	s4,t6,a3
	or	a4,a4,s5
	sw	a4,s4,+00000000
	srli	a4,a5,00000008
	c.slli	a5,18
	c.or	a5,a4
	add	s4,t0,a3
	sw	a5,s4,+00000000
	lbu	a5,a2,+00000000
	beq	a5,zero,000000002305F990

l2305F890:
	c.lui	s6,00001000
	addi	s4,s6,-00000800
	c.add	s4,sp
	slli	a4,a5,00000002
	c.add	a4,s4
	lw	a4,a4,-00000400
	addi	s5,s6,-00000800
	c.add	s5,sp
	add	s4,s0,a4
	or	s4,s4,a0
	c.add	a4,s1
	or	a4,a4,a0
	c.slli	s4,02
	c.add	s4,s5
	lw	s5,s4,-00000800
	addi	s4,s6,-00000800
	c.add	s4,sp
	c.slli	a4,02
	c.add	a4,s4
	lw	s4,a4,-00000800
	c.slli	s4,08

l2305F8CE:
	xor	s4,s4,s5
	c.li	a4,00000000
	c.beqz	a5,000000002305F8FE

l2305F8D6:
	c.lui	s6,00001000
	addi	s5,s6,-00000800
	c.add	s5,sp
	slli	a4,a5,00000002
	c.add	a4,s5
	lw	a4,a4,-00000400
	addi	s5,s6,-00000800
	c.add	s5,sp
	c.add	a4,s2
	or	a4,a4,a0
	c.slli	a4,02
	c.add	a4,s5
	lw	a4,a4,-00000800
	c.slli	a4,10

l2305F8FE:
	xor	s4,s4,a4
	c.li	a4,00000000
	c.beqz	a5,000000002305F92E

l2305F906:
	c.lui	s5,00001000
	addi	a4,s5,-00000800
	c.add	a4,sp
	c.slli	a5,02
	c.add	a5,a4
	lw	a4,a5,-00000400
	addi	a5,s5,-00000800
	c.add	a5,sp
	c.add	a4,s3
	or	a4,a4,a0
	c.slli	a4,02
	c.add	a4,a5
	lw	a5,a4,-00000800
	slli	a4,a5,00000018

l2305F92E:
	xor	a5,s4,a4
	add	a4,t3,a3
	srli	s5,a5,00000018
	c.sw	a4,0(a5)
	slli	a4,a5,00000008
	add	s4,t1,a3
	or	a4,a4,s5
	sw	a4,s4,+00000000
	srli	s5,a5,00000010
	slli	a4,a5,00000010
	add	s4,a7,a3
	or	a4,a4,s5
	sw	a4,s4,+00000000
	srli	a4,a5,00000008
	c.slli	a5,18
	add	s4,a6,a3
	c.or	a5,a4
	sw	a5,s4,+00000000
	c.addi	a3,00000004
	c.addi	a1,00000001
	c.addi	a2,00000001
	bne	a3,t2,000000002305F818

l2305F97A:
	addi	sp,sp,+000007F0
	c.lwsp	a2,00000114
	c.lwsp	s0,00000134
	c.lwsp	tp,00000158
	c.lwsp	zero,00000178
	c.lwsp	t3,00000088
	c.lwsp	s8,000000A8
	c.lwsp	s4,000000C8
	c.addi16sp	00000030
	c.jr	ra

l2305F990:
	c.li	s5,00000000
	c.li	s4,00000000
	c.j	000000002305F8CE

;; mbedtls_aes_init: 2305F996
;;   Called from:
;;     23055E6C (in block_cipher_df)
;;     23056150 (in mbedtls_ctr_drbg_seed_entropy_len)
;;     2305FC5A (in mbedtls_aes_setkey_dec)
;;     23062DEC (in aes_ctx_alloc)
;;     23065DE8 (in pem_aes_decrypt)
mbedtls_aes_init proc
	addi	a2,zero,+00000118
	c.li	a1,00000000
	jal	zero,0000000023070EB8

;; mbedtls_aes_free: 2305F9A0
;;   Called from:
;;     23055F66 (in block_cipher_df)
;;     23056060 (in mbedtls_ctr_drbg_free)
;;     2305FCD6 (in mbedtls_aes_setkey_dec)
;;     23062DC8 (in aes_ctx_free)
;;     23065E50 (in pem_aes_decrypt)
mbedtls_aes_free proc
	addi	a5,a0,+00000118
	c.bnez	a0,000000002305F9AE

l2305F9A6:
	c.jr	ra

l2305F9A8:
	sb	zero,a0,+00000000
	c.addi	a0,00000001

l2305F9AE:
	bne	a0,a5,000000002305F9A8

l2305F9B2:
	c.j	000000002305F9A6

;; mbedtls_aes_setkey_enc: 2305F9B4
;;   Called from:
;;     23055EC2 (in block_cipher_df)
;;     23055F40 (in block_cipher_df)
;;     23056024 (in ctr_drbg_update_internal)
;;     23056170 (in mbedtls_ctr_drbg_seed_entropy_len)
;;     2305FC6A (in mbedtls_aes_setkey_dec)
;;     23062DFE (in aes_setkey_enc_wrap)
mbedtls_aes_setkey_enc proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200E
	addi	s1,s1,+00000010
	c.lw	s1,0(a5)
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.bnez	a5,000000002305F9DA

l2305F9CA:
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	jal	ra,000000002305F6A2
	c.lwsp	a2,00000084
	c.lwsp	s0,00000064
	c.li	a5,00000001
	c.sw	s1,0(a5)

l2305F9DA:
	addi	a5,zero,+000000C0
	beq	a2,a5,000000002305FAA8

l2305F9E2:
	addi	a5,zero,+00000100
	beq	a2,a5,000000002305FAAC

l2305F9EA:
	addi	a5,zero,+00000080
	c.li	a0,FFFFFFE0
	bne	a2,a5,000000002305FA9E

l2305F9F4:
	c.li	a5,0000000A

l2305F9F6:
	c.srli	a2,00000005
	c.sw	s0,0(a5)
	c.slli	a2,02
	addi	a5,s0,+00000008
	c.sw	s0,4(a5)
	c.mv	a3,a5
	c.add	a2,a1

l2305FA06:
	bne	a2,a1,000000002305FAB0

l2305FA0A:
	c.lw	s0,0(a4)
	c.li	a3,0000000C
	beq	a4,a3,000000002305FAD6

l2305FA12:
	c.li	a3,0000000E
	beq	a4,a3,000000002305FB64

l2305FA18:
	c.li	a3,0000000A
	c.li	a0,00000000
	bne	a4,a3,000000002305FA9E

l2305FA20:
	lui	a1,00042018
	lui	a2,00042017
	addi	a1,a1,-000002E8
	addi	s0,s0,+000000A8
	addi	a2,a2,-000003E8

l2305FA34:
	c.lw	a5,12(a3)
	lw	a6,a1,+00000000
	c.lw	a5,0(a0)
	srli	a4,a3,00000008
	andi	a4,a4,+000000FF
	c.add	a4,a2
	lbu	a4,a4,+00000000
	xor	a0,a0,a6
	c.addi	a5,00000010
	c.xor	a4,a0
	srli	a0,a3,00000018
	c.add	a0,a2
	lbu	a0,a0,+00000000
	c.addi	a1,00000004
	c.slli	a0,10
	c.xor	a4,a0
	andi	a0,a3,+000000FF
	c.add	a0,a2
	lbu	a0,a0,+00000000
	c.slli	a0,18
	c.xor	a4,a0
	srli	a0,a3,00000010
	andi	a0,a0,+000000FF
	c.add	a0,a2
	lbu	a0,a0,+00000000
	c.slli	a0,08
	c.xor	a4,a0
	lw	a0,a5,-0000000C
	c.sw	a5,0(a4)
	c.xor	a4,a0
	lw	a0,a5,-00000008
	c.sw	a5,4(a4)
	c.xor	a4,a0
	c.sw	a5,8(a4)
	c.xor	a4,a3
	c.sw	a5,12(a4)
	bne	a5,s0,000000002305FA34

l2305FA9C:
	c.li	a0,00000000

l2305FA9E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2305FAA8:
	c.li	a5,0000000C
	c.j	000000002305F9F6

l2305FAAC:
	c.li	a5,0000000E
	c.j	000000002305F9F6

l2305FAB0:
	lbu	a4,a1,+00000001
	lbu	a0,a1,+00000002
	c.addi	a3,00000004
	c.slli	a4,08
	c.slli	a0,10
	c.or	a4,a0
	lbu	a0,a1,+00000000
	c.addi	a1,00000004
	c.or	a4,a0
	lbu	a0,a1,-00000001
	c.slli	a0,18
	c.or	a4,a0
	sw	a4,a3,+00000FFC
	c.j	000000002305FA06

l2305FAD6:
	lui	a1,00042018
	lui	a2,00042017
	addi	a1,a1,-000002E8
	addi	s0,s0,+000000C8
	addi	a2,a2,-000003E8

l2305FAEA:
	c.lw	a5,20(a3)
	lw	a6,a1,+00000000
	c.lw	a5,0(a0)
	srli	a4,a3,00000008
	andi	a4,a4,+000000FF
	c.add	a4,a2
	lbu	a4,a4,+00000000
	xor	a0,a0,a6
	c.addi	a5,00000018
	c.xor	a4,a0
	srli	a0,a3,00000018
	c.add	a0,a2
	lbu	a0,a0,+00000000
	c.addi	a1,00000004
	c.slli	a0,10
	c.xor	a4,a0
	andi	a0,a3,+000000FF
	c.add	a0,a2
	lbu	a0,a0,+00000000
	c.slli	a0,18
	c.xor	a4,a0
	srli	a0,a3,00000010
	andi	a0,a0,+000000FF
	c.add	a0,a2
	lbu	a0,a0,+00000000
	c.slli	a0,08
	c.xor	a4,a0
	lw	a0,a5,-00000014
	c.sw	a5,0(a4)
	c.xor	a4,a0
	lw	a0,a5,-00000010
	c.sw	a5,4(a4)
	c.xor	a4,a0
	lw	a0,a5,-0000000C
	c.sw	a5,8(a4)
	c.xor	a4,a0
	lw	a0,a5,-00000008
	c.sw	a5,12(a4)
	c.xor	a4,a0
	c.sw	a5,16(a4)
	c.xor	a4,a3
	c.sw	a5,20(a4)
	bne	a5,s0,000000002305FAEA

l2305FB62:
	c.j	000000002305FA9C

l2305FB64:
	lui	a0,00042018
	lui	a2,00042017
	addi	a0,a0,-000002E8
	addi	s0,s0,+000000E8
	addi	a2,a2,-000003E8

l2305FB78:
	c.lw	a5,28(a1)
	lw	a6,a0,+00000000
	c.lw	a5,0(a3)
	srli	a4,a1,00000008
	andi	a4,a4,+000000FF
	c.add	a4,a2
	lbu	a4,a4,+00000000
	xor	a3,a3,a6
	lw	a6,a5,+00000010
	c.xor	a4,a3
	srli	a3,a1,00000018
	c.add	a3,a2
	lbu	a3,a3,+00000000
	addi	a5,a5,+00000020
	c.addi	a0,00000004
	c.slli	a3,10
	c.xor	a4,a3
	andi	a3,a1,+000000FF
	c.add	a3,a2
	lbu	a3,a3,+00000000
	c.slli	a3,18
	c.xor	a4,a3
	srli	a3,a1,00000010
	andi	a3,a3,+000000FF
	c.add	a3,a2
	lbu	a3,a3,+00000000
	c.slli	a3,08
	c.xor	a4,a3
	lw	a3,a5,-0000001C
	c.sw	a5,0(a4)
	c.xor	a4,a3
	lw	a3,a5,-00000018
	c.sw	a5,4(a4)
	c.xor	a4,a3
	lw	a3,a5,-00000014
	c.sw	a5,8(a4)
	c.xor	a4,a3
	andi	a3,a4,+000000FF
	c.sw	a5,12(a4)
	c.add	a3,a2
	lbu	a3,a3,+00000000
	xor	a3,a3,a6
	srli	a6,a4,00000018
	c.add	a6,a2
	lbu	a6,a6,+00000000
	c.slli	a6,18
	xor	a3,a3,a6
	srli	a6,a4,00000008
	andi	a6,a6,+000000FF
	c.srli	a4,00000010
	c.add	a6,a2
	andi	a4,a4,+000000FF
	lbu	a6,a6,+00000000
	c.add	a4,a2
	lbu	a4,a4,+00000000
	c.slli	a6,08
	xor	a3,a3,a6
	c.slli	a4,10
	c.xor	a4,a3
	lw	a3,a5,-0000000C
	c.sw	a5,16(a4)
	c.xor	a4,a3
	lw	a3,a5,-00000008
	c.sw	a5,20(a4)
	c.xor	a4,a3
	c.sw	a5,24(a4)
	c.xor	a4,a1
	c.sw	a5,28(a4)
	bne	a5,s0,000000002305FB78

l2305FC42:
	c.j	000000002305FA9C

;; mbedtls_aes_setkey_dec: 2305FC44
;;   Called from:
;;     23062DFA (in aes_setkey_dec_wrap)
;;     23065E3A (in pem_aes_decrypt)
mbedtls_aes_setkey_dec proc
	c.addi16sp	FFFFFEC0
	sw	s0,sp,+00000138
	c.mv	s0,a0
	c.addi4spn	a0,00000018
	sw	ra,sp,+0000013C
	sw	s1,sp,+00000134
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	jal	ra,000000002305F996
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	addi	a5,s0,+00000008
	c.sw	s0,4(a5)
	c.addi4spn	a0,00000018
	jal	ra,000000002305F9B4
	c.mv	s1,a0
	c.bnez	a0,000000002305FCD4

l2305FC72:
	c.lwsp	s8,00000064
	c.lwsp	t3,000000E4
	lui	t1,00042018
	slli	a4,a1,00000004
	c.sw	s0,0(a1)
	c.add	a5,a4
	c.lw	a5,0(a4)
	lui	a0,00042017
	lui	t3,00042019
	c.sw	s0,8(a4)
	c.lw	a5,4(a4)
	lui	t4,00042018
	lui	t5,00042018
	c.sw	s0,12(a4)
	c.lw	a5,8(a4)
	addi	a2,s0,+00000018
	c.addi	a1,FFFFFFFF
	c.sw	s0,16(a4)
	c.lw	a5,12(a4)
	addi	t1,t1,-000001C0
	c.addi	a5,FFFFFFF0
	c.sw	s0,20(a4)
	addi	a0,a0,-000003E8
	addi	t3,t3,-000005C0
	addi	t4,t4,+00000240
	addi	t5,t5,+00000640
	c.li	t6,00000010

l2305FCC0:
	blt	zero,a1,000000002305FCEC

l2305FCC4:
	c.lw	a5,0(a4)
	c.sw	a2,0(a4)
	c.lw	a5,4(a4)
	c.sw	a2,4(a4)
	c.lw	a5,8(a4)
	c.sw	a2,8(a4)
	c.lw	a5,12(a5)
	c.sw	a2,12(a5)

l2305FCD4:
	c.addi4spn	a0,00000018
	jal	ra,000000002305F9A0
	lw	ra,sp,+0000013C
	lw	s0,sp,+00000138
	c.mv	a0,s1
	lw	s1,sp,+00000134
	c.addi16sp	00000140
	c.jr	ra

l2305FCEC:
	c.li	a6,00000000

l2305FCEE:
	add	a4,a5,a6
	c.lw	a4,0(a4)
	add	t0,a2,a6
	c.addi	a6,00000004
	andi	a3,a4,+000000FF
	srli	a7,a4,00000018
	c.add	a3,a0
	c.add	a7,a0
	lbu	a3,a3,+00000000
	lbu	a7,a7,+00000000
	c.slli	a3,02
	c.slli	a7,02
	c.add	a3,t1
	c.add	a7,t3
	lw	a7,a7,+00000000
	c.lw	a3,0(a3)
	xor	a3,a3,a7
	srli	a7,a4,00000008
	andi	a7,a7,+000000FF
	c.srli	a4,00000010
	c.add	a7,a0
	andi	a4,a4,+000000FF
	lbu	a7,a7,+00000000
	c.add	a4,a0
	lbu	a4,a4,+00000000
	c.slli	a7,02
	c.add	a7,t4
	c.slli	a4,02
	lw	a7,a7,+00000000
	c.add	a4,t5
	c.lw	a4,0(a4)
	xor	a3,a3,a7
	c.xor	a4,a3
	sw	a4,t0,+00000000
	bne	a6,t6,000000002305FCEE

l2305FD56:
	c.addi	a2,00000010
	c.addi	a1,FFFFFFFF
	c.addi	a5,FFFFFFF0
	c.j	000000002305FCC0

;; mbedtls_aes_encrypt: 2305FD5E
;;   Called from:
;;     230605F8 (in mbedtls_aes_crypt_ecb)
;;     23060722 (in mbedtls_aes_crypt_cfb128)
;;     2306074E (in mbedtls_aes_crypt_cfb128)
;;     230607D2 (in mbedtls_aes_crypt_ctr)
mbedtls_aes_encrypt proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000094
	c.swsp	s1,00000014
	c.swsp	s7,00000008
	c.swsp	s2,00000090
	c.swsp	s3,00000010
	c.swsp	s4,0000008C
	c.swsp	s5,0000000C
	c.swsp	s6,00000088
	c.swsp	s8,00000084
	c.swsp	s9,00000004
	c.swsp	s10,00000080
	c.swsp	s11,00000000
	lbu	a3,a1,+00000001
	lbu	a5,a1,+00000000
	c.lw	a0,4(a4)
	c.slli	a3,08
	c.or	a3,a5
	lbu	a5,a1,+00000002
	lbu	s10,a1,+00000004
	lbu	s9,a1,+00000008
	c.slli	a5,10
	c.or	a3,a5
	lbu	a5,a1,+00000003
	lbu	s8,a1,+0000000C
	addi	t6,a4,+00000010
	c.slli	a5,18
	c.or	a5,a3
	c.lw	a4,0(a3)
	lui	s1,00042017
	lui	s0,00042018
	c.xor	a5,a3
	lbu	a3,a1,+00000005
	lui	t2,00042017
	lui	t0,00042017
	c.slli	a3,08
	or	a3,a3,s10
	lbu	s10,a1,+00000006
	addi	s1,s1,-000002E8
	addi	s0,s0,-000006E8
	c.slli	s10,10
	or	a3,s10,a3
	lbu	s10,a1,+00000007
	addi	t2,t2,+00000118
	addi	t0,t0,+00000518
	c.slli	s10,18
	or	s10,s10,a3
	c.lw	a4,4(a3)
	xor	s10,s10,a3
	lbu	a3,a1,+00000009
	c.slli	a3,08
	or	a3,a3,s9
	lbu	s9,a1,+0000000A
	c.slli	s9,10
	or	a3,s9,a3
	lbu	s9,a1,+0000000B
	c.slli	s9,18
	or	s9,s9,a3
	c.lw	a4,8(a3)
	xor	s9,s9,a3
	lbu	a3,a1,+0000000D
	c.slli	a3,08
	or	a3,a3,s8
	lbu	s8,a1,+0000000E
	c.slli	s8,10
	or	a3,s8,a3
	lbu	s8,a1,+0000000F
	c.lw	a4,12(a4)
	lw	s7,a0,+00000000
	c.slli	s8,18
	or	s8,s8,a3
	srai	s7,s7,00000001
	xor	s8,s8,a4
	c.addi	s7,FFFFFFFF

l2305FE40:
	andi	a3,a5,+000000FF
	srli	a4,s8,00000018
	c.slli	a3,02
	c.slli	a4,02
	c.add	a3,s1
	c.add	a4,s0
	c.lw	a3,0(a1)
	c.lw	a4,0(a4)
	andi	a3,s10,+000000FF
	c.slli	a3,02
	c.xor	a1,a4
	lw	a4,t6,+00000000
	c.add	a3,s1
	c.lw	a3,0(a3)
	c.xor	a1,a4
	srli	a4,s10,00000006
	andi	a4,a4,+000003FC
	c.add	a4,t2
	c.lw	a4,0(a4)
	andi	a0,s9,+000000FF
	c.slli	a0,02
	c.xor	a1,a4
	srli	a4,s9,0000000E
	andi	a4,a4,+000003FC
	c.add	a4,t0
	c.lw	a4,0(a4)
	c.add	a0,s1
	c.lw	a0,0(a0)
	c.xor	a1,a4
	srli	a4,a5,00000018
	c.slli	a4,02
	c.add	a4,s0
	c.lw	a4,0(a4)
	andi	s6,a1,+000000FF
	srli	s4,a1,00000018
	c.xor	a3,a4
	lw	a4,t6,+00000004
	lw	s11,t6,+00000010
	c.xor	a3,a4
	srli	a4,s9,00000006
	andi	a4,a4,+000003FC
	c.add	a4,t2
	c.lw	a4,0(a4)
	srli	s9,s9,00000018
	c.slli	s9,02
	c.xor	a3,a4
	srli	a4,s8,0000000E
	andi	a4,a4,+000003FC
	c.add	a4,t0
	c.lw	a4,0(a4)
	c.add	s9,s0
	lw	a6,s9,+00000000
	c.xor	a3,a4
	srli	a4,s10,00000018
	c.slli	a4,02
	c.add	a4,s0
	c.lw	a4,0(a4)
	srli	s10,s10,0000000E
	andi	s10,s10,+000003FC
	c.xor	a0,a4
	lw	a4,t6,+00000008
	c.add	s10,t0
	srli	t5,a3,00000008
	c.xor	a0,a4
	srli	a4,s8,00000006
	andi	a4,a4,+000003FC
	c.add	a4,t2
	c.lw	a4,0(a4)
	andi	s8,s8,+000000FF
	c.slli	s8,02
	c.xor	a0,a4
	srli	a4,a5,0000000E
	andi	a4,a4,+000003FC
	c.add	a4,t0
	c.lw	a4,0(a4)
	c.add	s8,s1
	c.srli	a5,00000006
	c.xor	a0,a4
	lw	a4,s8,+00000000
	andi	a5,a5,+000003FC
	c.add	a5,t2
	xor	a4,a4,a6
	lw	a6,t6,+0000000C
	c.lw	a5,0(a5)
	srli	t4,a0,00000010
	xor	a4,a4,a6
	c.xor	a4,a5
	lw	a5,s10,+00000000
	srli	t3,a0,00000008
	srli	a6,a1,00000010
	c.xor	a4,a5
	srli	t1,a4,00000010
	srli	a7,a4,00000008
	andi	s5,a3,+000000FF
	srli	s2,a3,00000018
	c.srli	a1,00000008
	c.srli	a3,00000010
	srli	a5,a4,00000018
	andi	s3,a0,+000000FF
	andi	t5,t5,+000000FF
	andi	t4,t4,+000000FF
	lw	s10,t6,+00000014
	andi	t3,t3,+000000FF
	andi	t1,t1,+000000FF
	lw	s9,t6,+00000018
	andi	a7,a7,+000000FF
	andi	a6,a6,+000000FF
	lw	s8,t6,+0000001C
	andi	a4,a4,+000000FF
	andi	a1,a1,+000000FF
	andi	a3,a3,+000000FF
	c.srli	a0,00000018
	blt	zero,s7,00000000230600E2

l2305FF96:
	lui	t6,00042017
	addi	t6,t6,-000003E8
	c.add	s6,t6
	c.add	t5,t6
	lbu	t0,s6,+00000000
	lbu	t5,t5,+00000000
	c.add	t4,t6
	lbu	t4,t4,+00000000
	c.add	a5,t6
	lbu	a5,a5,+00000000
	c.slli	t5,08
	xor	s11,t0,s11
	xor	s11,t5,s11
	c.slli	t4,10
	c.slli	a5,18
	c.add	t3,t6
	c.add	s5,t6
	xor	s11,s11,t4
	xor	s11,s11,a5
	lbu	a5,t3,+00000000
	lbu	t3,s5,+00000000
	c.add	t1,t6
	c.slli	a5,08
	xor	s10,t3,s10
	xor	s10,a5,s10
	lbu	a5,t1,+00000000
	c.add	s4,t6
	c.add	a7,t6
	c.slli	a5,10
	xor	s10,s10,a5
	lbu	a5,s4,+00000000
	c.add	s3,t6
	c.add	a6,t6
	c.slli	a5,18
	xor	s10,s10,a5
	lbu	a5,a7,+00000000
	lbu	a7,s3,+00000000
	c.add	s2,t6
	c.slli	a5,08
	xor	s9,a7,s9
	xor	s9,a5,s9
	lbu	a5,a6,+00000000
	c.add	a4,t6
	c.add	a1,t6
	c.slli	a5,10
	xor	s9,s9,a5
	lbu	a5,s2,+00000000
	c.add	a3,t6
	c.add	a0,t6
	c.slli	a5,18
	xor	s9,s9,a5
	lbu	a5,a4,+00000000
	xor	s8,a5,s8
	lbu	a5,a1,+00000000
	c.slli	a5,08
	xor	s8,s8,a5
	lbu	a5,a3,+00000000
	c.slli	a5,10
	xor	s8,s8,a5
	lbu	a5,a0,+00000000
	sb	s11,a2,+00000000
	sb	s10,a2,+00000004
	c.slli	a5,18
	xor	s8,s8,a5
	srli	a5,s11,00000008
	sb	a5,a2,+00000001
	srli	a5,s11,00000010
	sb	a5,a2,+00000002
	srli	a5,s10,00000008
	sb	a5,a2,+00000005
	srli	a5,s10,00000010
	sb	a5,a2,+00000006
	srli	a5,s9,00000008
	sb	a5,a2,+00000009
	srli	a5,s9,00000010
	sb	a5,a2,+0000000A
	srli	a5,s8,00000008
	srli	s11,s11,00000018
	srli	s10,s10,00000018
	sb	s9,a2,+00000008
	sb	s8,a2,+0000000C
	srli	s9,s9,00000018
	sb	a5,a2,+0000000D
	srli	a5,s8,00000010
	srli	s8,s8,00000018
	sb	s11,a2,+00000003
	sb	s10,a2,+00000007
	sb	s9,a2,+0000000B
	sb	s8,a2,+0000000F
	sb	a5,a2,+0000000E
	c.lwsp	a2,00000114
	c.lwsp	s0,00000134
	c.lwsp	tp,00000158
	c.lwsp	zero,00000178
	c.lwsp	t3,00000088
	c.lwsp	s8,000000A8
	c.lwsp	s4,000000C8
	c.lwsp	a6,000000E8
	c.lwsp	a2,0000000C
	c.lwsp	s0,0000002C
	c.lwsp	tp,0000004C
	c.lwsp	zero,0000006C
	c.addi16sp	00000030
	c.jr	ra

l230600E2:
	c.slli	s6,02
	c.slli	a5,02
	c.add	s6,s1
	c.add	a5,s0
	lw	s6,s6,+00000000
	c.lw	a5,0(a5)
	c.slli	t5,02
	c.add	t5,t2
	xor	a5,s6,a5
	c.slli	t4,02
	xor	a5,a5,s11
	c.add	t4,t0
	lw	s11,t5,+00000000
	lw	t4,t4,+00000000
	c.slli	s5,02
	c.slli	s4,02
	xor	a5,a5,s11
	c.add	s5,s1
	c.add	s4,s0
	xor	a5,a5,t4
	lw	t5,s4,+00000000
	lw	t4,s5,+00000000
	c.slli	t3,02
	c.slli	a4,02
	c.slli	a0,02
	c.add	t3,t2
	c.slli	t1,02
	c.add	a4,s1
	c.add	a0,s0
	lw	t3,t3,+00000000
	c.add	t1,t0
	c.lw	a4,0(a4)
	c.lw	a0,0(a0)
	lw	t1,t1,+00000000
	xor	t4,t4,t5
	xor	s10,t4,s10
	c.slli	s3,02
	c.slli	s2,02
	c.slli	a1,02
	xor	s10,s10,t3
	c.xor	a4,a0
	c.add	s3,s1
	c.add	s2,s0
	c.add	a1,t2
	xor	s8,a4,s8
	xor	s10,s10,t1
	c.lw	a1,0(a4)
	lw	t1,s3,+00000000
	lw	t3,s2,+00000000
	c.slli	a7,02
	c.add	a7,t2
	c.slli	a6,02
	c.slli	a3,02
	lw	a7,a7,+00000000
	c.add	a6,t0
	c.add	a3,t0
	xor	s8,s8,a4
	xor	t1,t1,t3
	lw	a6,a6,+00000000
	c.lw	a3,0(a4)
	xor	s9,t1,s9
	xor	s9,s9,a7
	xor	s9,s9,a6
	addi	t6,t6,+00000020
	xor	s8,s8,a4
	c.addi	s7,FFFFFFFF
	c.j	000000002305FE40

;; mbedtls_aes_decrypt: 2306019E
;;   Called from:
;;     23060606 (in mbedtls_aes_crypt_ecb)
;;     23060670 (in mbedtls_aes_crypt_cbc)
mbedtls_aes_decrypt proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000094
	c.swsp	s7,00000008
	c.swsp	s1,00000014
	c.swsp	s2,00000090
	c.swsp	s3,00000010
	c.swsp	s4,0000008C
	c.swsp	s5,0000000C
	c.swsp	s6,00000088
	c.swsp	s8,00000084
	c.swsp	s9,00000004
	c.swsp	s10,00000080
	c.swsp	s11,00000000
	lbu	a4,a1,+00000005
	lbu	s10,a1,+00000004
	c.lw	a0,4(a5)
	c.slli	a4,08
	or	a4,a4,s10
	lbu	s10,a1,+00000006
	lbu	s9,a1,+00000008
	lbu	s11,a1,+00000001
	c.slli	s10,10
	or	a4,s10,a4
	lbu	s10,a1,+00000007
	lbu	s5,a1,+00000000
	c.slli	s11,08
	c.slli	s10,18
	or	s10,s10,a4
	c.lw	a5,4(a4)
	lbu	s8,a1,+0000000C
	or	s11,s11,s5
	xor	s10,s10,a4
	lbu	a4,a1,+00000009
	lbu	s5,a1,+00000002
	addi	t5,a5,+00000010
	c.slli	a4,08
	or	a4,a4,s9
	lbu	s9,a1,+0000000A
	c.slli	s5,10
	or	s11,s5,s11
	c.slli	s9,10
	or	a4,s9,a4
	lbu	s9,a1,+0000000B
	lbu	s5,a1,+00000003
	lui	s0,00042018
	c.slli	s9,18
	or	s9,s9,a4
	c.lw	a5,8(a4)
	c.slli	s5,18
	or	s5,s5,s11
	xor	s9,s9,a4
	lbu	a4,a1,+0000000D
	lw	s11,a5,+00000000
	lui	t2,00042019
	c.slli	a4,08
	or	a4,a4,s8
	lbu	s8,a1,+0000000E
	lui	t0,00042018
	lui	t6,00042018
	c.slli	s8,10
	or	a4,s8,a4
	lbu	s8,a1,+0000000F
	c.lw	a5,12(a5)
	lw	s7,a0,+00000000
	c.slli	s8,18
	or	s8,s8,a4
	srai	s7,s7,00000001
	xor	s5,s5,s11
	xor	s8,s8,a5
	c.addi	s7,FFFFFFFF
	addi	s0,s0,-000001C0
	addi	t2,t2,-000005C0
	addi	t0,t0,+00000240
	addi	t6,t6,+00000640

l2306028A:
	andi	a4,s5,+000000FF
	srli	a5,s10,00000018
	c.slli	a4,02
	c.slli	a5,02
	c.add	a4,s0
	c.add	a5,t2
	c.lw	a4,0(a1)
	c.lw	a5,0(a5)
	srli	a4,s5,00000018
	c.slli	a4,02
	c.xor	a1,a5
	lw	a5,t5,+00000000
	c.add	a4,t2
	c.lw	a4,0(a4)
	c.xor	a1,a5
	srli	a5,s8,00000006
	andi	a5,a5,+000003FC
	c.add	a5,t0
	c.lw	a5,0(a5)
	andi	a3,s9,+000000FF
	c.slli	a3,02
	c.xor	a1,a5
	srli	a5,s9,0000000E
	andi	a5,a5,+000003FC
	c.add	a5,t6
	c.lw	a5,0(a5)
	c.add	a3,s0
	c.lw	a3,0(a3)
	c.xor	a1,a5
	andi	a5,s8,+000000FF
	c.slli	a5,02
	c.add	a5,s0
	c.lw	a5,0(a5)
	srli	t1,a1,00000008
	andi	s6,a1,+000000FF
	c.xor	a5,a4
	lw	a4,t5,+0000000C
	lw	s11,t5,+00000010
	andi	t1,t1,+000000FF
	c.xor	a5,a4
	srli	a4,s9,00000006
	andi	a4,a4,+000003FC
	c.add	a4,t0
	c.lw	a4,0(a4)
	srli	s9,s9,00000018
	c.slli	s9,02
	c.xor	a5,a4
	srli	a4,s10,0000000E
	andi	a4,a4,+000003FC
	c.add	a4,t6
	c.lw	a4,0(a4)
	c.add	s9,t2
	lw	a0,s9,+00000000
	c.xor	a5,a4
	srli	a4,s8,00000018
	c.slli	a4,02
	c.add	a4,t2
	c.lw	a4,0(a4)
	srli	s8,s8,0000000E
	andi	s8,s8,+000003FC
	c.xor	a3,a4
	lw	a4,t5,+00000008
	c.add	s8,t6
	srli	t4,a5,00000008
	c.xor	a3,a4
	srli	a4,s10,00000006
	andi	a4,a4,+000003FC
	c.add	a4,t0
	c.lw	a4,0(a4)
	andi	s10,s10,+000000FF
	c.slli	s10,02
	c.xor	a3,a4
	srli	a4,s5,0000000E
	andi	a4,a4,+000003FC
	c.add	a4,t6
	c.lw	a4,0(a4)
	c.add	s10,s0
	srli	s5,s5,00000006
	c.xor	a3,a4
	lw	a4,s10,+00000000
	andi	s5,s5,+000003FC
	c.add	s5,t0
	c.xor	a4,a0
	lw	a0,t5,+00000004
	srli	t3,a3,00000010
	srli	a7,a5,00000010
	c.xor	a4,a0
	lw	a0,s5,+00000000
	srli	s3,a3,00000018
	andi	s2,a3,+000000FF
	c.xor	a4,a0
	lw	a0,s8,+00000000
	c.srli	a3,00000008
	srli	s1,a5,00000018
	c.xor	a4,a0
	srli	a6,a4,00000008
	srli	a0,a1,00000010
	srli	s5,a4,00000018
	andi	s4,a4,+000000FF
	c.srli	a4,00000010
	andi	t4,t4,+000000FF
	andi	t3,t3,+000000FF
	lw	s10,t5,+00000014
	andi	a7,a7,+000000FF
	lw	s9,t5,+00000018
	andi	a6,a6,+000000FF
	andi	a0,a0,+000000FF
	lw	s8,t5,+0000001C
	andi	a5,a5,+000000FF
	andi	a3,a3,+000000FF
	andi	a4,a4,+000000FF
	c.srli	a1,00000018
	blt	zero,s7,000000002306052C
