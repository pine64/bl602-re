;;; Segment .text (23000300)

l23040308:
	c.mv	a0,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.addi16sp	00000030
	jal	zero,0000000023041A96

l23040322:
	c.mv	s1,a3

l23040324:
	c.lw	s1,16(a2)
	lbu	a3,a2,+00000005
	lbu	a4,a2,+00000004
	c.slli	a3,08
	c.or	a3,a4
	lbu	a4,a2,+00000006
	c.slli	a4,10
	c.or	a3,a4
	lbu	a4,a2,+00000007
	c.slli	a4,18
	c.or	a4,a3
	bne	a5,a4,0000000023040378

l23040346:
	lui	a0,00042015
	addi	a5,a0,+000005D8
	lhu	a4,a5,+00000008
	lhu	a5,s1,+00000008
	bgeu	a5,a4,0000000023040308

l2304035A:
	addi	a0,a0,+000005D8
	jal	ra,000000002303ECFA
	c.beqz	a0,0000000023040308

l23040364:
	beq	s2,zero,0000000023040374

l23040368:
	sw	a0,s2,+00000000

l2304036C:
	c.mv	a1,s1

l2304036E:
	jal	ra,000000002303F8F6
	c.j	0000000023040308

l23040374:
	c.sw	s0,116(a0)
	c.j	000000002304036C

l23040378:
	bne	s2,zero,0000000023040396

l2304037C:
	sub	a3,a5,a4
	bge	a3,zero,0000000023040422

l23040384:
	lui	a0,00042015
	addi	a0,a0,+000005D8
	jal	ra,000000002303ECFA
	c.beqz	a0,0000000023040308

l23040392:
	c.sw	s0,116(a0)
	c.j	000000002304036C

l23040396:
	lw	a7,s2,+00000010
	lbu	a1,a7,+00000005
	lbu	a3,a7,+00000004
	c.slli	a1,08
	c.or	a1,a3
	lbu	a3,a7,+00000006
	c.slli	a3,10
	c.or	a1,a3
	lbu	a3,a7,+00000007
	c.slli	a3,18
	c.or	a3,a1
	sub	a3,a6,a3
	blt	a3,zero,0000000023040422

l230403BE:
	sub	a3,a0,a4
	blt	zero,a3,0000000023040422

l230403C6:
	lui	a0,00042015
	addi	a0,a0,+000005D8
	jal	ra,000000002303ECFA
	c.mv	s4,a0
	c.beqz	a0,0000000023040308

l230403D6:
	lw	a4,s2,+00000010
	lbu	a5,a4,+00000005
	lbu	a1,a4,+00000004
	c.slli	a5,08
	c.or	a1,a5
	lbu	a5,a4,+00000006
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,a4,+00000007
	lhu	a4,s2,+00000008
	c.slli	a1,18
	c.or	a5,a1
	lw	a1,s3,+00000000
	c.add	a4,a5
	c.sub	a4,a1
	bge	zero,a4,0000000023040418

l23040406:
	c.sub	a1,a5
	c.slli	a1,10
	lw	a0,s2,+00000004
	c.srli	a1,00000010
	sh	a1,s2,+00000008
	jal	ra,000000002303E716

l23040418:
	sw	s4,s2,+00000000
	c.mv	a1,s1
	c.mv	a0,s4
	c.j	000000002304036E

l23040422:
	c.lw	s1,0(a3)
	c.mv	s2,s1
	bne	a3,zero,0000000023040322

l2304042A:
	c.sub	a5,a4
	bge	zero,a5,0000000023040308

l23040430:
	lbu	a5,a2,+0000000D
	lbu	a0,a2,+0000000C
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.andi	a0,00000001
	bne	a0,zero,0000000023040308

l23040446:
	lui	a0,00042015
	addi	a0,a0,+000005D8
	jal	ra,000000002303ECFA
	c.sw	s1,0(a0)
	beq	a0,zero,0000000023040308

l23040458:
	c.lw	s1,16(a4)
	lbu	a5,a4,+00000005
	lbu	a1,a4,+00000004
	c.slli	a5,08
	c.or	a1,a5
	lbu	a5,a4,+00000006
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,a4,+00000007
	lhu	a4,s1,+00000008
	c.slli	a1,18
	c.or	a5,a1
	lw	a1,s3,+00000000
	c.add	a4,a5
	c.sub	a4,a1
	bge	zero,a4,0000000023040496

l23040486:
	c.sub	a1,a5
	c.slli	a1,10
	c.lw	s1,4(a0)
	c.srli	a1,00000010
	sh	a1,s1,+00000008
	jal	ra,000000002303E716

l23040496:
	lw	a4,s3,+00000000
	lhu	a5,s4,+00000000
	c.add	a5,a4
	c.lw	s0,36(a4)
	c.sub	a5,a4
	lhu	a4,s0,+00000028
	c.sub	a5,a4
	bge	zero,a5,0000000023040308

l230404AE:
	c.lw	s1,0(a5)
	c.lw	a5,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.andi	a0,00000001
	c.beqz	a0,0000000023040506

l230404C6:
	c.lw	s1,0(a5)
	c.lw	a5,16(a5)
	lbu	s2,a5,+0000000D
	lbu	a0,a5,+0000000C
	c.slli	s2,08
	or	s2,s2,a0
	c.mv	a0,s2
	jal	ra,000000002303A75A
	andi	a0,a0,+0000003E
	jal	ra,000000002303A75A
	c.lw	s1,0(a5)
	c.lw	a5,16(a4)
	c.lui	a5,FFFFC000
	addi	a5,a5,+000000FF
	and	s2,s2,a5
	or	a0,s2,a0
	c.slli	a0,10
	c.srli	a0,00000010
	sb	a0,a4,+0000000C
	c.srli	a0,00000008
	sb	a0,a4,+0000000D

l23040506:
	lw	a3,s3,+00000000
	lhu	a5,s0,+00000028
	c.lw	s1,0(a4)
	c.sub	a5,a3
	c.lw	s0,36(a3)
	c.add	a5,a3
	sh	a5,a4,+00000008
	c.lw	s1,0(a5)
	lhu	a1,a5,+00000008
	c.lw	a5,4(a0)
	jal	ra,000000002303E716
	c.lw	s1,0(a5)
	lhu	s1,a5,+00000008
	c.lw	a5,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	s1,a0
	sh	s1,s4,+00000000
	c.j	0000000023040308

l2304054C:
	sub	a4,a5,a3
	blt	a4,zero,0000000023040562

l23040554:
	lhu	a4,s0,+00000028
	c.addi	a5,00000001
	c.sub	a5,a3
	c.sub	a5,a4
	bge	zero,a5,00000000230402DA

l23040562:
	lhu	a5,s0,+0000001A
	c.j	00000000230402C8

;; tcp_input: 23040568
;;   Called from:
;;     2303D4A4 (in ip4_input)
tcp_input proc
	c.addi16sp	FFFFFFB0
	lui	a7,0004201A
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s10,00000010
	c.swsp	ra,000000A4
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s11,0000008C
	addi	a4,a7,+00000668
	lhu	a5,a4,+00000096
	lui	s2,0004200E
	c.li	s0,00000013
	c.addi	a5,00000001
	sh	a5,a4,+00000096
	c.lw	a0,4(a5)
	c.mv	s1,a0
	addi	s10,a7,+00000668
	sw	a5,s2,+0000033C
	lhu	a5,a0,+0000000A
	bltu	s0,a5,00000000230405BC

l230405B0:
	lhu	a5,s10,+0000009E
	c.addi	a5,00000001
	sh	a5,s10,+0000009E
	c.j	00000000230405F0

l230405BC:
	lui	s4,0004201A
	addi	s3,s4,+00000794
	lw	a1,s3,+00000000
	lw	a0,s3,+00000014
	addi	s4,s4,+00000794
	jal	ra,000000002303D750
	c.bnez	a0,00000000230405E6

l230405D6:
	lw	a5,s3,+00000014
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	bne	a5,a4,00000000230405FC

l230405E6:
	lhu	a5,s10,+000000A4
	c.addi	a5,00000001
	sh	a5,s10,+000000A4

l230405F0:
	lhu	a5,s10,+0000009A
	c.addi	a5,00000001
	sh	a5,s10,+0000009A
	c.j	0000000023040A34

l230405FC:
	lhu	a2,s1,+00000008
	lui	s5,0004201A
	lui	s6,0004201A
	addi	a4,s5,+000007A8
	addi	a3,s6,+000007A4
	c.li	a1,00000006
	c.mv	a0,s1
	jal	ra,0000000023043018
	c.swsp	s5,00000080
	c.beqz	a0,0000000023040628

l2304061C:
	lhu	a5,s10,+0000009C
	c.addi	a5,00000001
	sh	a5,s10,+0000009C
	c.j	00000000230405F0

l23040628:
	addi	s2,s2,+0000033C
	lw	a5,s2,+00000000
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	srli	a1,a0,0000000A
	andi	a1,a1,+000000FC
	bgeu	s0,a1,00000000230405B0

l2304064C:
	lhu	a5,s1,+00000008
	slli	a4,a1,00000010
	c.srli	a4,00000010
	bltu	a5,a4,00000000230405B0

l2304065A:
	addi	a5,a4,-00000014
	lui	a2,0004200E
	c.slli	a5,10
	lui	s8,0004200E
	lhu	a3,s1,+0000000A
	addi	s7,a2,+00000348
	c.srli	a5,00000010
	addi	s8,s8,+00000344
	addi	a2,a2,+00000348
	lui	s3,0004200E
	sh	a5,s7,+00000000
	sw	zero,s8,+00000000
	c.swsp	a2,00000004
	addi	s3,s3,+00000340
	bltu	a3,a4,00000000230407FE

l23040690:
	c.mv	a0,s1
	sh	a5,s3,+00000000
	jal	ra,000000002303E4D4

l2304069A:
	lw	s0,s2,+00000000
	lui	s11,0004200E
	lui	s5,0004200E
	lbu	a5,s0,+00000001
	lbu	a0,s0,+00000000
	lui	s7,0004200E
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	sb	a0,s0,+00000000
	c.srli	a0,00000008
	sb	a0,s0,+00000001
	lw	s0,s2,+00000000
	lbu	a5,s0,+00000003
	lbu	a0,s0,+00000002
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	sb	a0,s0,+00000002
	c.srli	a0,00000008
	sb	a0,s0,+00000003
	lw	s0,s2,+00000000
	lbu	a0,s0,+00000005
	lbu	a5,s0,+00000004
	c.slli	a0,08
	c.or	a0,a5
	lbu	a5,s0,+00000006
	c.slli	a5,10
	c.or	a5,a0
	lbu	a0,s0,+00000007
	c.slli	a0,18
	c.or	a0,a5
	jal	ra,000000002303A768
	srli	a5,a0,00000008
	sb	a5,s0,+00000005
	srli	a5,a0,00000010
	sb	a5,s0,+00000006
	srli	a5,a0,00000018
	sb	a0,s0,+00000004
	sb	a5,s0,+00000007
	lw	s0,s2,+00000000
	sw	a0,s11,+00000334
	addi	s11,s11,+00000334
	lbu	a0,s0,+00000009
	lbu	a5,s0,+00000008
	c.slli	a0,08
	c.or	a0,a5
	lbu	a5,s0,+0000000A
	c.slli	a5,10
	c.or	a5,a0
	lbu	a0,s0,+0000000B
	c.slli	a0,18
	c.or	a0,a5
	jal	ra,000000002303A768
	srli	a5,a0,00000008
	sb	a5,s0,+00000009
	srli	a5,a0,00000010
	sb	a5,s0,+0000000A
	srli	a5,a0,00000018
	sb	a0,s0,+00000008
	sb	a5,s0,+0000000B
	lw	s0,s2,+00000000
	sw	a0,s5,+00000324
	addi	s5,s5,+00000324
	lbu	a5,s0,+0000000F
	lbu	a0,s0,+0000000E
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	lw	a5,s2,+00000000
	sb	a0,s0,+0000000E
	c.srli	a0,00000008
	sb	a0,s0,+0000000F
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	andi	a4,a0,+000000FF
	andi	a5,a4,+0000003F
	sb	a5,s7,+00000328
	lui	a2,0004200E
	andi	a5,a4,+00000003
	lhu	a3,s1,+00000008
	addi	s7,s7,+00000328
	addi	a2,a2,+0000034A
	c.beqz	a5,000000002304084A

l230407C6:
	addi	a5,a3,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a2,+00000000
	bltu	a5,a3,00000000230405B0

l230407D6:
	lui	s3,0004201A
	lw	a6,s3,+0000077C
	lw	t4,s4,+00000004
	lw	a3,s2,+00000000
	lw	t6,s4,+00000010
	lw	t5,s4,+00000014
	c.mv	s0,a6
	c.li	a0,00000000

l230407F2:
	c.bnez	s0,0000000023040850

l230407F4:
	lui	a5,0004201A
	lw	a0,a5,+00000770
	c.j	0000000023040A58

l230407FE:
	c.li	a1,00000014
	c.mv	a0,s1
	jal	ra,000000002303E4D4
	lhu	s0,s1,+0000000A
	c.mv	a0,s1
	lhu	s7,s7,+00000000
	c.mv	a1,s0
	sh	s0,s3,+00000000
	jal	ra,000000002303E4D4
	c.lw	s1,0(a0)
	sub	s3,s7,s0
	c.slli	s3,10
	lhu	a5,a0,+0000000A
	srli	s3,s3,00000010
	bltu	a5,s3,00000000230405B0

l2304082E:
	c.lw	a0,4(a5)
	c.mv	a1,s3
	sw	a5,s8,+00000000
	jal	ra,000000002303E4D4
	lhu	a5,s1,+00000008
	c.add	s0,a5
	sub	s0,s0,s7
	sh	s0,s1,+00000008
	c.j	000000002304069A

l2304084A:
	sh	a3,a2,+00000000
	c.j	00000000230407D6

l23040850:
	lbu	t3,s0,+00000008
	beq	t3,zero,0000000023040866

l23040858:
	lbu	a5,t4,+00000044
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	bne	t3,a5,000000002304097E

l23040866:
	lbu	a5,a3,+00000001
	lbu	t0,a3,+00000000
	lhu	t3,s0,+00000018
	c.slli	a5,08
	or	a5,a5,t0
	bne	t3,a5,000000002304097E

l2304087C:
	lbu	a5,a3,+00000003
	lbu	t0,a3,+00000002
	lhu	t3,s0,+00000016
	c.slli	a5,08
	or	a5,a5,t0
	bne	t3,a5,000000002304097E

l23040892:
	c.lw	s0,4(a5)
	bne	a5,t6,000000002304097E

l23040898:
	c.lw	s0,0(a5)
	bne	a5,t5,000000002304097E

l2304089E:
	c.beqz	a0,0000000023040972

l230408A0:
	c.lw	s0,12(a5)
	sw	s0,s3,+0000077C
	c.sw	a0,12(a5)
	sw	a6,s0,+0000000C

l230408AC:
	lhu	a0,s1,+00000008
	lui	a1,00042015
	addi	a5,a1,+000005D8
	lui	s9,0004200E
	lui	s4,0004200E
	lui	s8,0004200E
	sw	zero,s9,+0000032C
	sb	zero,s4,+00000330
	sh	zero,s8,+0000032A
	sw	zero,a5,+00000000
	sh	a0,a5,+00000008
	c.sw	a5,4(s1)
	c.sw	a5,16(a3)
	c.andi	a4,00000008
	c.swsp	a5,00000084
	addi	s4,s4,+00000330
	addi	s8,s8,+0000032A
	addi	s9,s9,+0000032C
	c.beqz	a4,00000000230408FA

l230408EE:
	lbu	a5,s1,+0000000D
	ori	a5,a5,+00000001
	sb	a5,s1,+0000000D

l230408FA:
	c.lw	s0,120(a5)
	lui	s1,0004201A
	beq	a5,zero,0000000023040C26

l23040904:
	c.mv	a0,s0
	jal	ra,000000002303F380
	c.li	a5,FFFFFFF3
	beq	a0,a5,0000000023040926

l23040910:
	c.lw	s0,120(a5)
	lui	a4,0004200E
	addi	a2,a4,+0000034A
	beq	a5,zero,0000000023040C26

l2304091E:
	lhu	a5,a2,+00000000
	beq	a5,zero,0000000023040C26

l23040926:
	lhu	a5,s0,+0000002A
	c.bnez	a5,0000000023040932

l2304092C:
	c.mv	a0,s0
	jal	ra,0000000023041A96

l23040932:
	lhu	a5,s10,+0000009A
	c.addi	a5,00000001
	sh	a5,s10,+0000009A

l2304093C:
	c.lwsp	a2,000000E4
	sw	zero,s1,+00000788
	sw	zero,s9,+00000000
	c.lw	a5,4(a0)
	c.beqz	a0,0000000023040954

l2304094A:
	jal	ra,000000002303E536
	c.lwsp	a2,000000E4
	sw	zero,a5,+00000004

l23040954:
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

l23040972:
	lhu	a5,s10,+000000AA
	c.addi	a5,00000001
	sh	a5,s10,+000000AA
	c.j	00000000230408AC

l2304097E:
	c.mv	a0,s0
	c.lw	s0,12(s0)
	c.j	00000000230407F2

l23040984:
	lbu	a6,a0,+00000008
	beq	a6,zero,000000002304099A

l2304098C:
	lbu	a5,t4,+00000044
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	bne	a6,a5,0000000023040A56

l2304099A:
	lbu	a5,a3,+00000001
	lbu	a6,a3,+00000000
	c.slli	a5,08
	or	a5,a5,a6
	lhu	a6,a0,+00000018
	bne	a6,a5,0000000023040A56

l230409B0:
	lbu	t3,a3,+00000003
	lbu	a5,a3,+00000002
	c.slli	t3,08
	or	t3,t3,a5
	lhu	a5,a0,+00000016
	bne	a5,t3,0000000023040A56

l230409C6:
	lw	t3,a0,+00000004
	bne	t6,t3,0000000023040A56

l230409CE:
	lw	t3,a0,+00000000
	bne	t5,t3,0000000023040A56

l230409D6:
	andi	a3,a4,+00000004
	c.bnez	a3,0000000023040A34

l230409DC:
	andi	a3,a4,+00000002
	lhu	a2,a2,+00000000
	c.beqz	a3,0000000023040A14

l230409E6:
	lw	a7,s11,+00000000
	c.lw	a0,36(a4)
	sub	a4,a7,a4
	blt	a4,zero,0000000023040A22

l230409F4:
	lhu	a3,a0,+00000028
	c.sub	a4,a3
	blt	zero,a4,0000000023040A22

l230409FE:
	c.lwsp	tp,000000A4
	lw	a1,s5,+00000000
	addi	a4,s6,+000007A4
	addi	a3,a3,+000007A8
	c.add	a2,a7

l23040A0E:
	jal	ra,0000000023041A3C
	c.j	0000000023040A34

l23040A14:
	c.andi	a4,00000001
	c.beqz	a4,0000000023040A22

l23040A18:
	lui	a5,0004201A
	lw	a5,a5,+00000774
	c.sw	a0,32(a5)

l23040A22:
	c.beqz	a2,0000000023040A34

l23040A24:
	lhu	a5,a0,+0000001A
	ori	a5,a5,+00000002
	sh	a5,a0,+0000001A

l23040A30:
	jal	ra,0000000023041AE8

l23040A34:
	c.lwsp	s1,00000004
	c.lwsp	a3,00000020
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
	c.mv	a0,s1
	c.lwsp	t0,00000024
	c.addi16sp	00000050
	jal	zero,000000002303E536

l23040A56:
	c.lw	a0,12(a0)

l23040A58:
	c.bnez	a0,0000000023040984

l23040A5A:
	lui	t3,0004201A
	lw	t0,t3,+00000778
	c.li	s7,00000000
	c.li	t6,00000000
	c.mv	a5,t0

l23040A68:
	c.bnez	a5,0000000023040A72

l23040A6A:
	beq	s7,zero,000000002304115A

l23040A6E:
	c.mv	a0,t6
	c.j	0000000023040AB6

l23040A72:
	lbu	t2,a5,+00000008
	beq	t2,zero,0000000023040A88

l23040A7A:
	lbu	a6,t4,+00000044
	c.addi	a6,00000001
	andi	a6,a6,+000000FF
	bne	t2,a6,0000000023040AAE

l23040A88:
	lbu	a6,a3,+00000003
	lbu	s0,a3,+00000002
	lhu	t2,a5,+00000016
	c.slli	a6,08
	or	a6,a6,s0
	bne	t2,a6,0000000023040AAE

l23040A9E:
	lw	a6,a5,+00000000
	beq	t5,a6,0000000023040AB4

l23040AA6:
	bne	a6,zero,0000000023040AAE

l23040AAA:
	c.mv	s7,a5
	c.mv	t6,a0

l23040AAE:
	c.mv	a0,a5
	c.lw	a5,12(a5)
	c.j	0000000023040A68

l23040AB4:
	c.mv	s7,a5

l23040AB6:
	c.beqz	a0,0000000023040B0E

l23040AB8:
	lw	a5,s7,+0000000C
	sw	s7,t3,+00000778
	c.sw	a0,12(a5)
	sw	t0,s7,+0000000C

l23040AC6:
	andi	a5,a4,+00000004
	c.bnez	a5,0000000023040A34

l23040ACC:
	andi	a5,a4,+00000010
	c.beqz	a5,0000000023040B1A

l23040AD2:
	lw	a4,s2,+00000000
	lhu	a0,a2,+00000000
	lw	a2,s11,+00000000
	lbu	a3,a4,+00000001
	lbu	a6,a4,+00000000
	lbu	a5,a4,+00000003
	c.slli	a3,08
	lbu	a7,a4,+00000002
	or	a6,a3,a6
	c.lwsp	tp,000000A4
	c.slli	a5,08
	c.add	a2,a0
	or	a5,a5,a7
	addi	a4,s6,+000007A4
	addi	a3,a3,+000007A8
	lw	a1,s5,+00000000
	c.mv	a0,s7
	c.j	0000000023040A0E

l23040B0E:
	lhu	a5,s10,+000000AA
	c.addi	a5,00000001
	sh	a5,s10,+000000AA
	c.j	0000000023040AC6

l23040B1A:
	c.andi	a4,00000002
	c.beqz	a4,0000000023040A34

l23040B1E:
	lbu	a0,s7,+00000015
	jal	ra,000000002303F01A
	c.mv	s0,a0
	c.bnez	a0,0000000023040B48

l23040B2A:
	lhu	a5,s10,+000000A0
	c.addi	a5,00000001
	sh	a5,s10,+000000A0
	lw	a5,s7,+00000018
	beq	a5,zero,0000000023040A34

l23040B3C:
	lw	a0,s7,+00000010
	c.li	a2,FFFFFFFF
	c.li	a1,00000000
	c.jalr	a5
	c.j	0000000023040A34

l23040B48:
	lw	a5,s4,+00000014
	lw	a4,s2,+00000000
	c.sw	a0,0(a5)
	lw	a5,s4,+00000010
	c.sw	a0,4(a5)
	lhu	a5,s7,+00000016
	sh	a5,a0,+00000016
	lbu	a5,a4,+00000001
	lbu	a3,a4,+00000000
	c.slli	a5,08
	c.or	a5,a3
	sh	a5,a0,+00000018
	c.li	a5,00000003
	sb	a5,a0,+00000014
	lw	a5,s11,+00000000
	c.addi	a5,00000001
	c.sw	a0,36(a5)
	c.sw	a0,44(a5)
	jal	ra,000000002303ED24
	lw	a5,s11,+00000000
	c.sw	s0,88(a0)
	c.sw	s0,80(a0)
	c.addi	a5,FFFFFFFF
	c.sw	s0,68(a0)
	c.sw	s0,92(a0)
	c.sw	s0,84(a5)
	lw	a5,s7,+00000010
	sw	s7,s0,+0000007C
	c.sw	s0,16(a5)
	lbu	a5,s7,+00000009
	c.andi	a5,0000000C
	sb	a5,s0,+00000009
	lbu	a5,s7,+00000008
	sb	a5,s0,+00000008
	lw	a5,s3,+0000077C
	sw	s0,s3,+0000077C
	c.sw	s0,12(a5)
	jal	ra,0000000023042276
	lui	a5,0004201A
	c.li	a4,00000001
	sb	a4,a5,+00000784
	c.lwsp	s0,000000E4
	lhu	a5,a5,+00000000
	c.beqz	a5,0000000023040BD8

l23040BD0:
	addi	a0,s0,+00000032
	jal	ra,000000002303F9D4

l23040BD8:
	lw	a4,s2,+00000000
	addi	a2,s0,+00000004
	c.mv	a0,a2
	lbu	a5,a4,+0000000F
	lbu	a3,a4,+0000000E
	lhu	s2,s0,+00000032
	c.slli	a5,08
	c.or	a5,a3
	sh	a5,s0,+00000060
	sh	a5,s0,+00000062
	c.swsp	a2,00000080
	jal	ra,000000002303D12A
	c.lwsp	tp,00000084
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,000000002303ED3C
	sh	a0,s0,+00000032
	c.li	a1,00000012
	c.mv	a0,s0
	jal	ra,0000000023041742
	c.beqz	a0,0000000023040C22

l23040C18:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002303EE42
	c.j	0000000023040A34

l23040C22:
	c.mv	a0,s0
	c.j	0000000023040A30

l23040C26:
	lbu	a4,s7,+00000000
	sw	s0,s1,+00000788
	andi	a5,a4,+00000004
	c.beqz	a5,0000000023040CA6

l23040C34:
	lbu	a4,s0,+00000014
	c.li	a5,00000002
	bne	a4,a5,0000000023040C86

l23040C3E:
	c.lw	s0,80(a4)
	lw	a5,s5,+00000000
	bne	a4,a5,0000000023040C5E

l23040C48:
	lbu	a5,s4,+00000000
	ori	a5,a5,+00000008
	sb	a5,s4,+00000000
	lhu	a5,s0,+0000001A
	c.andi	a5,FFFFFFFE

l23040C5A:
	sh	a5,s0,+0000001A

l23040C5E:
	lbu	a5,s4,+00000000
	c.andi	a5,00000008
	beq	a5,zero,0000000023041098

l23040C68:
	lw	a5,s0,+00000090
	c.beqz	a5,0000000023040C74

l23040C6E:
	c.lw	s0,16(a0)
	c.li	a1,FFFFFFF2
	c.jalr	a5

l23040C74:
	addi	a0,s3,+0000077C
	c.mv	a1,s0
	jal	ra,000000002303EDDE
	c.mv	a0,s0
	jal	ra,000000002303EC12
	c.j	000000002304093C

l23040C86:
	c.lw	s0,36(a4)
	lw	a5,s11,+00000000
	beq	a4,a5,0000000023040C48

l23040C90:
	c.sub	a5,a4
	blt	a5,zero,0000000023040C5E

l23040C96:
	lhu	a4,s0,+00000028
	c.sub	a5,a4
	blt	zero,a5,0000000023040C5E

l23040CA0:
	lhu	a5,s0,+0000001A
	c.j	0000000023040CC2

l23040CA6:
	andi	s10,a4,+00000002
	lhu	a5,s0,+0000001A
	beq	s10,zero,0000000023040CC8

l23040CB2:
	lbu	a3,s0,+00000014
	c.li	a0,00000001
	c.addi	a3,FFFFFFFE
	andi	a3,a3,+000000FF
	bgeu	a0,a3,0000000023040CC8

l23040CC2:
	ori	a5,a5,+00000002
	c.j	0000000023040C5A

l23040CC8:
	c.andi	a5,00000010
	c.bnez	a5,0000000023040CD6

l23040CCC:
	lui	a5,0004201A
	lw	a5,a5,+00000774
	c.sw	s0,32(a5)

l23040CD6:
	c.lwsp	s0,000000E4
	sh	zero,s0,+000000A2
	lhu	a5,a5,+00000000
	c.beqz	a5,0000000023040CF6

l23040CE2:
	addi	a0,s0,+00000032
	c.swsp	a4,00000004
	jal	ra,000000002303F9D4
	c.lwsp	s0,000000C4
	lui	a5,0004200E
	addi	a2,a5,+0000034A

l23040CF6:
	lbu	a5,s0,+00000014
	c.li	a3,00000007
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	bltu	a3,a5,0000000023040C5E

l23040D06:
	lui	a3,0002307B
	c.slli	a5,02
	addi	a3,a3,-00000348
	c.add	a5,a3
	c.lw	a5,0(a5)
	c.jr	a5

l23040D16:
	andi	a5,a4,+00000012
	c.li	a3,00000012
	bne	a5,a3,0000000023040DF2

l23040D20:
	c.lw	s0,68(a5)
	lw	a3,s5,+00000000
	c.addi	a5,00000001
	bne	a5,a3,0000000023040DF2

l23040D2C:
	lw	a4,s11,+00000000
	c.sw	s0,68(a5)
	addi	a3,a4,+00000001
	c.sw	s0,36(a3)
	c.sw	s0,44(a3)
	lw	a3,s2,+00000000
	c.addi	a4,FFFFFFFF
	lhu	s2,s0,+00000032
	lbu	a5,a3,+0000000F
	lbu	a2,a3,+0000000E
	c.sw	s0,84(a4)
	c.slli	a5,08
	c.or	a5,a2
	sh	a5,s0,+00000060
	addi	a2,s0,+00000004
	sh	a5,s0,+00000062
	c.li	a5,00000004
	sb	a5,s0,+00000014
	c.mv	a0,a2
	c.swsp	a2,00000080
	jal	ra,000000002303D12A
	c.lwsp	tp,00000084
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,000000002303ED3C
	slli	a4,a0,00000001
	sh	a0,s0,+00000032
	slli	a5,a0,00000002
	c.lui	a0,00001000
	addi	a0,a0,+0000011C
	c.mv	a3,a4
	bgeu	a4,a0,0000000023040D90

l23040D8E:
	c.mv	a3,a0

l23040D90:
	bgeu	a5,a3,0000000023040DD8

l23040D94:
	slli	a0,a5,00000010

l23040D98:
	c.srli	a0,00000010

l23040D9A:
	lhu	a5,s0,+00000066
	sh	a0,s0,+00000048
	c.lw	s0,112(a0)
	c.addi	a5,FFFFFFFF
	sh	a5,s0,+00000066
	c.bnez	a0,0000000023040DE2

l23040DAC:
	c.lw	s0,108(a0)
	c.lw	a0,0(a5)
	c.sw	s0,108(a5)

l23040DB2:
	jal	ra,000000002303ECBA
	c.lw	s0,112(a5)
	c.bnez	a5,0000000023040DE8

l23040DBA:
	c.li	a5,FFFFFFFF
	sh	a5,s0,+00000030

l23040DC0:
	lw	a5,s0,+00000088
	beq	a5,zero,0000000023040CA0

l23040DC8:
	c.lw	s0,16(a0)
	c.li	a2,00000000
	c.mv	a1,s0
	c.jalr	a5
	c.li	a5,FFFFFFF3
	bne	a0,a5,0000000023040CA0

l23040DD6:
	c.j	000000002304093C

l23040DD8:
	bgeu	a0,a4,0000000023040D9A

l23040DDC:
	slli	a0,a4,00000010
	c.j	0000000023040D98

l23040DE2:
	c.lw	a0,0(a5)
	c.sw	s0,112(a5)
	c.j	0000000023040DB2

l23040DE8:
	sh	zero,s0,+00000030
	sb	zero,s0,+00000042
	c.j	0000000023040DC0

l23040DF2:
	c.andi	a4,00000010
	beq	a4,zero,0000000023040C5E

l23040DF8:
	lw	a4,s2,+00000000
	lhu	a0,a2,+00000000
	lw	a2,s11,+00000000
	lbu	a3,a4,+00000001
	lbu	a6,a4,+00000000
	lbu	a5,a4,+00000003
	c.slli	a3,08
	lbu	a7,a4,+00000002
	or	a6,a3,a6
	c.lwsp	tp,000000A4
	lw	a1,s5,+00000000
	c.slli	a5,08
	or	a5,a5,a7
	addi	a4,s6,+000007A4
	c.add	a2,a0
	addi	a3,a3,+000007A8
	c.mv	a0,s0
	jal	ra,0000000023041A3C
	lbu	a4,s0,+00000042
	c.li	a5,00000005
	bltu	a5,a4,0000000023040C5E

l23040E40:
	sh	zero,s0,+00000030
	c.mv	a0,s0
	jal	ra,0000000023042036
	c.j	0000000023040C5E

l23040E4C:
	c.andi	a4,00000010
	c.beqz	a4,0000000023040F32

l23040E50:
	lw	a1,s5,+00000000
	c.lw	s0,68(a4)
	addi	a5,a1,-00000001
	c.sub	a5,a4
	blt	a5,zero,0000000023040EF6

l23040E60:
	c.lw	s0,80(a5)
	sub	a5,a1,a5
	blt	zero,a5,0000000023040EF6

l23040E6A:
	c.li	a5,00000004
	sb	a5,s0,+00000014
	c.lw	s0,124(a5)
	c.bnez	a5,0000000023040E7C

l23040E74:
	c.mv	a0,s0
	jal	ra,000000002303EF56
	c.j	000000002304093C

l23040E7C:
	c.lw	a5,24(a5)
	c.beqz	a5,0000000023040E74

l23040E80:
	c.lw	s0,16(a0)
	c.li	a2,00000000
	c.mv	a1,s0
	c.jalr	a5
	c.beqz	a0,0000000023040E92

l23040E8A:
	c.li	a5,FFFFFFF3
	beq	a0,a5,000000002304093C

l23040E90:
	c.j	0000000023040E74

l23040E92:
	c.mv	a0,s0
	jal	ra,000000002303FB8E
	lhu	a5,s8,+00000000
	c.beqz	a5,0000000023040EA4

l23040E9E:
	c.addi	a5,FFFFFFFF
	sh	a5,s8,+00000000

l23040EA4:
	lhu	a5,s0,+00000032
	slli	a3,a5,00000001
	slli	a4,a5,00000002
	c.lui	a5,00001000
	addi	a5,a5,+0000011C
	c.mv	a2,a3
	bgeu	a3,a5,0000000023040EBE

l23040EBC:
	c.mv	a2,a5

l23040EBE:
	bgeu	a4,a2,0000000023040EEC

l23040EC2:
	slli	a5,a4,00000010

l23040EC6:
	c.srli	a5,00000010

l23040EC8:
	sh	a5,s0,+00000048

l23040ECC:
	lbu	a5,s4,+00000000
	andi	a5,a5,+00000020
	beq	a5,zero,0000000023040C5E

l23040ED8:
	lhu	a5,s0,+0000001A
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	c.li	a5,00000007

l23040EE6:
	sb	a5,s0,+00000014
	c.j	0000000023040C5E

l23040EEC:
	bgeu	a5,a3,0000000023040EC8

l23040EF0:
	slli	a5,a3,00000010
	c.j	0000000023040EC6

l23040EF6:
	lw	a4,s2,+00000000
	lhu	a0,a2,+00000000
	lw	a2,s11,+00000000
	lbu	a3,a4,+00000001
	lbu	a6,a4,+00000000
	lbu	a5,a4,+00000003
	c.slli	a3,08
	lbu	a7,a4,+00000002
	or	a6,a3,a6
	c.lwsp	tp,000000A4
	c.slli	a5,08
	c.add	a2,a0
	or	a5,a5,a7
	addi	a4,s6,+000007A4
	addi	a3,a3,+000007A8
	c.mv	a0,s0
	jal	ra,0000000023041A3C
	c.j	0000000023040C5E

l23040F32:
	beq	s10,zero,0000000023040C5E

l23040F36:
	c.lw	s0,36(a5)
	lw	a4,s11,+00000000
	c.addi	a5,FFFFFFFF
	bne	a5,a4,0000000023040C5E

l23040F42:
	c.mv	a0,s0
	jal	ra,0000000023041912
	c.j	0000000023040C5E

l23040F4A:
	c.mv	a0,s0
	jal	ra,000000002303FB8E
	c.j	0000000023040ECC

l23040F52:
	c.mv	a0,s0
	jal	ra,000000002303FB8E
	lbu	a5,s4,+00000000
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023040FDA

l23040F62:
	lbu	a4,s7,+00000000
	lhu	a5,s0,+0000001A
	c.andi	a4,00000010
	c.beqz	a4,0000000023040FCE

l23040F6E:
	c.lw	s0,80(a3)
	lw	a4,s5,+00000000
	bne	a3,a4,0000000023040FCE

l23040F78:
	c.lw	s0,108(a4)
	c.bnez	a4,0000000023040FCE

l23040F7C:
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	c.mv	a0,s0
	jal	ra,000000002303ED86
	lw	a5,s3,+0000077C
	bne	s0,a5,0000000023040FA8

l23040F92:
	c.lw	s0,12(a5)
	sw	a5,s3,+0000077C
	c.j	0000000023040FAA

l23040F9A:
	c.lw	a5,12(a4)
	bne	s0,a4,0000000023040FA6

l23040FA0:
	c.lw	s0,12(a4)
	c.sw	a5,12(a4)
	c.j	0000000023040FAA

l23040FA6:
	c.mv	a5,a4

l23040FA8:
	c.bnez	a5,0000000023040F9A

l23040FAA:
	lui	a5,0004201A
	c.li	a4,00000001
	sb	a4,a5,+00000784
	c.li	a5,0000000A
	sb	a5,s0,+00000014
	lui	a5,0004201A
	lw	a4,a5,+00000770
	sw	s0,a5,+00000770
	c.sw	s0,12(a4)
	jal	ra,0000000023042276
	c.j	0000000023040C5E

l23040FCE:
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	c.li	a5,00000008
	c.j	0000000023040EE6

l23040FDA:
	lbu	a5,s7,+00000000
	c.andi	a5,00000010
	beq	a5,zero,0000000023040C5E

l23040FE4:
	c.lw	s0,80(a4)
	lw	a5,s5,+00000000
	bne	a4,a5,0000000023040C5E

l23040FEE:
	c.lw	s0,108(a5)
	bne	a5,zero,0000000023040C5E

l23040FF4:
	c.li	a5,00000006
	c.j	0000000023040EE6

l23040FF8:
	c.mv	a0,s0
	jal	ra,000000002303FB8E
	lbu	a5,s4,+00000000
	andi	a5,a5,+00000020
	beq	a5,zero,0000000023040C5E

l2304100A:
	lhu	a5,s0,+0000001A
	c.mv	a0,s0
	ori	a5,a5,+00000002
	sh	a5,s0,+0000001A
	jal	ra,000000002303ED86
	lw	a5,s3,+0000077C
	beq	s0,a5,0000000023040F92

l23041024:
	c.beqz	a5,0000000023040FAA

l23041026:
	c.lw	a5,12(a4)
	beq	s0,a4,0000000023040FA0

l2304102C:
	c.mv	a5,a4
	c.j	0000000023041024

l23041030:
	c.mv	a0,s0
	jal	ra,000000002303FB8E
	lbu	a5,s7,+00000000
	c.andi	a5,00000010
	beq	a5,zero,0000000023040C5E

l23041040:
	c.lw	s0,80(a4)
	lw	a5,s5,+00000000
	bne	a4,a5,0000000023040C5E

l2304104A:
	c.lw	s0,108(a5)
	bne	a5,zero,0000000023040C5E

l23041050:
	c.mv	a0,s0
	jal	ra,000000002303ED86
	lw	a5,s3,+0000077C
	beq	s0,a5,0000000023040F92

l2304105E:
	c.beqz	a5,0000000023040FAA

l23041060:
	c.lw	a5,12(a4)
	beq	s0,a4,0000000023040FA0

l23041066:
	c.mv	a5,a4
	c.j	000000002304105E

l2304106A:
	c.mv	a0,s0
	jal	ra,000000002303FB8E
	lbu	a5,s7,+00000000
	c.andi	a5,00000010
	beq	a5,zero,0000000023040C5E

l2304107A:
	c.lw	s0,80(a4)
	lw	a5,s5,+00000000
	bne	a4,a5,0000000023040C5E

l23041084:
	c.lw	s0,108(a5)
	bne	a5,zero,0000000023040C5E

l2304108A:
	lbu	a5,s4,+00000000
	ori	a5,a5,+00000010
	sb	a5,s4,+00000000
	c.j	0000000023040C5E

l23041098:
	lhu	a2,s8,+00000000
	c.beqz	a2,00000000230410A8

l2304109E:
	lw	a5,s0,+00000080
	c.bnez	a5,00000000230410C8

l230410A4:
	sh	zero,s8,+00000000

l230410A8:
	c.mv	a0,s0
	jal	ra,000000002303FA94
	bne	a0,zero,000000002304093C

l230410B2:
	lw	a2,s9,+00000000
	c.beqz	a2,00000000230410F4

l230410B8:
	lhu	a5,s0,+0000001A
	c.andi	a5,00000010
	c.beqz	a5,00000000230410D8

l230410C0:
	c.mv	a0,a2
	jal	ra,000000002303E536
	c.j	0000000023040E74

l230410C8:
	c.lw	s0,16(a0)
	c.mv	a1,s0
	c.jalr	a5
	c.li	a5,FFFFFFF3
	bne	a0,a5,00000000230410A4

l230410D4:
	jal	zero,000000002304093C

l230410D8:
	lw	a5,s0,+00000084
	c.li	a3,00000000
	c.mv	a1,s0
	c.beqz	a5,0000000023041126

l230410E2:
	c.lw	s0,16(a0)
	c.jalr	a5

l230410E6:
	c.li	a5,FFFFFFF3
	beq	a0,a5,000000002304093C

l230410EC:
	c.beqz	a0,00000000230410F4

l230410EE:
	lw	a5,s9,+00000000
	c.sw	s0,120(a5)

l230410F4:
	lbu	a5,s4,+00000000
	andi	a5,a5,+00000020
	c.beqz	a5,000000002304110E

l230410FE:
	c.lw	s0,120(a5)
	c.beqz	a5,000000002304112C

l23041102:
	lbu	a4,a5,+0000000D
	ori	a4,a4,+00000020
	sb	a4,a5,+0000000D

l2304110E:
	c.mv	a0,s0
	sw	zero,s1,+00000788
	jal	ra,000000002303FA94
	bne	a0,zero,000000002304093C

l2304111C:
	c.mv	a0,s0
	jal	ra,0000000023041AE8
	jal	zero,000000002304093C

l23041126:
	jal	ra,000000002303F34A
	c.j	00000000230410E6

l2304112C:
	lhu	a5,s0,+00000028
	c.lui	a4,00001000
	addi	a4,a4,-000007F0
	beq	a5,a4,0000000023041140

l2304113A:
	c.addi	a5,00000001
	sh	a5,s0,+00000028

l23041140:
	lw	a5,s0,+00000084
	c.beqz	a5,000000002304110E

l23041146:
	c.lw	s0,16(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.mv	a1,s0
	c.jalr	a5
	c.li	a5,FFFFFFF3
	bne	a0,a5,000000002304110E

l23041156:
	jal	zero,000000002304093C

l2304115A:
	lbu	a5,a3,+0000000D
	lbu	a0,a3,+0000000C
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	lui	a5,0004200E
	c.andi	a0,00000004
	addi	a2,a5,+0000034A
	bne	a0,zero,0000000023040A34

l23041178:
	lhu	a5,s10,+000000A4
	lw	a4,s2,+00000000
	lhu	a0,a2,+00000000
	c.addi	a5,00000001
	sh	a5,s10,+000000A4
	lhu	a5,s10,+0000009A
	lw	a2,s11,+00000000
	lw	a1,s5,+00000000
	c.addi	a5,00000001
	sh	a5,s10,+0000009A
	lbu	a3,a4,+00000001
	lbu	a6,a4,+00000000
	lbu	a5,a4,+00000003
	c.slli	a3,08
	lbu	a7,a4,+00000002
	or	a6,a3,a6
	c.lwsp	tp,000000A4
	c.slli	a5,08
	c.add	a2,a0
	or	a5,a5,a7
	addi	a4,s6,+000007A4
	addi	a3,a3,+000007A8
	c.li	a0,00000000
	jal	zero,0000000023040A0E

;; tcp_trigger_input_pcb_close: 230411CA
;;   Called from:
;;     2303F262 (in tcp_close_shutdown)
tcp_trigger_input_pcb_close proc
	lui	a5,0004200E
	addi	a5,a5,+00000330
	lbu	a4,a5,+00000000
	ori	a4,a4,+00000010
	sb	a4,a5,+00000000
	c.jr	ra

;; tcp_seg_add_chksum: 230411E0
;;   Called from:
;;     2304158A (in tcp_split_unsent_seg)
;;     230416D4 (in tcp_split_unsent_seg)
tcp_seg_add_chksum proc
	lhu	a5,a2,+00000000
	c.andi	a1,00000001
	c.add	a0,a5
	srli	a5,a0,00000010
	c.add	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010
	c.beqz	a1,000000002304120C

l230411F4:
	lbu	a4,a3,+00000000
	c.li	a5,00000001
	c.sub	a5,a4
	sb	a5,a3,+00000000
	slli	a5,a0,00000008
	c.srli	a0,00000008
	c.or	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010

l2304120C:
	sh	a0,a2,+00000000
	c.jr	ra

;; tcp_create_segment: 23041212
;;   Called from:
;;     230415EE (in tcp_split_unsent_seg)
;;     230417A4 (in tcp_enqueue_flags)
tcp_create_segment proc
	c.addi16sp	FFFFFFD0
	c.swsp	s5,00000088
	c.mv	s5,a0
	c.li	a0,00000004
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	slli	s1,a4,00000002
	c.swsp	a4,00000084
	c.swsp	ra,00000094
	c.mv	s2,a1
	c.mv	s3,a2
	c.mv	s4,a3
	jal	ra,000000002303DF26
	c.mv	s0,a0
	c.lwsp	a2,000000C4
	c.bnez	a0,0000000023041256

l2304123C:
	c.mv	a0,s2
	jal	ra,000000002303E536

l23041242:
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

l23041256:
	sb	a4,a0,+0000000D
	sw	zero,a0,+00000000
	sw	s2,a0,+00000004
	lhu	a5,s2,+00000008
	c.andi	s1,00000004
	sh	zero,a0,+0000000A
	c.sub	a5,s1
	sh	a5,a0,+00000008
	sb	zero,a0,+0000000C
	c.li	a1,00000014
	c.mv	a0,s2
	jal	ra,000000002303E4CE
	c.beqz	a0,000000002304129C

l23041280:
	lui	a5,0004201A
	addi	a5,a5,+00000668
	lhu	a4,a5,+000000A8
	c.mv	a0,s0
	c.li	s0,00000000
	c.addi	a4,00000001
	sh	a4,a5,+000000A8
	jal	ra,000000002303ECBA
	c.j	0000000023041242

l2304129C:
	c.lw	s0,4(a5)
	lw	s2,a5,+00000004
	sw	s2,s0,+00000010
	lhu	a0,s5,+00000016
	jal	ra,000000002303A75A
	sb	a0,s2,+00000000
	c.srli	a0,00000008
	sb	a0,s2,+00000001
	lhu	a0,s5,+00000018
	lw	s2,s0,+00000010
	jal	ra,000000002303A75A
	sb	a0,s2,+00000002
	c.srli	a0,00000008
	sb	a0,s2,+00000003
	lw	s2,s0,+00000010
	c.mv	a0,s4
	jal	ra,000000002303A768
	srli	a5,a0,00000008
	sb	a0,s2,+00000004
	sb	a5,s2,+00000005
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a0,s2,+00000007
	srli	a0,s1,00000002
	sb	a5,s2,+00000006
	c.addi	a0,00000005
	lw	s2,s0,+00000010
	c.slli	a0,0C
	or	a0,a0,s3
	jal	ra,000000002303A75A
	sb	a0,s2,+0000000C
	c.srli	a0,00000008
	sb	a0,s2,+0000000D
	c.lw	s0,16(a5)
	sb	zero,a5,+00000012
	sb	zero,a5,+00000013
	c.j	0000000023041242

;; tcp_output_alloc_header_common.constprop.6: 2304131C
;;   Called from:
;;     23041410 (in tcp_output_alloc_header.constprop.5)
;;     23041A6A (in tcp_rst)
tcp_output_alloc_header_common.constprop.6 proc
	c.addi	a1,00000014
	c.addi16sp	FFFFFFD0
	c.slli	a1,10
	c.swsp	s1,00000090
	c.swsp	s5,00000088
	c.mv	s1,a2
	c.mv	s5,a0
	addi	a2,zero,+00000280
	c.srli	a1,00000010
	addi	a0,zero,+000000A2
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	a3,00000084
	c.mv	s6,a4
	c.mv	s4,a5
	c.mv	s3,a6
	jal	ra,000000002303E5B8
	c.mv	s2,a0
	c.beqz	a0,00000000230413E2

l23041350:
	c.lwsp	a2,000000A4
	c.lw	a0,4(s0)
	c.mv	a0,a3
	jal	ra,000000002303A75A
	sb	a0,s0,+00000000
	c.srli	a0,00000008
	sb	a0,s0,+00000001
	c.mv	a0,s6
	jal	ra,000000002303A75A
	srli	a5,s1,00000008
	sb	a0,s0,+00000002
	sb	s1,s0,+00000004
	c.srli	a0,00000008
	sb	a5,s0,+00000005
	srli	a5,s1,00000010
	c.srli	s1,00000018
	sb	a0,s0,+00000003
	sb	a5,s0,+00000006
	sb	s1,s0,+00000007
	c.mv	a0,s5
	jal	ra,000000002303A768
	srli	a5,a0,00000008
	sb	a0,s0,+00000008
	sb	a5,s0,+00000009
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a0,s0,+0000000B
	c.lui	a0,00005000
	sb	a5,s0,+0000000A
	or	a0,s4,a0
	jal	ra,000000002303A75A
	sb	a0,s0,+0000000C
	c.srli	a0,00000008
	sb	a0,s0,+0000000D
	c.mv	a0,s3
	jal	ra,000000002303A75A
	sb	a0,s0,+0000000E
	c.srli	a0,00000008
	sb	a0,s0,+0000000F
	sb	zero,s0,+00000010
	sb	zero,s0,+00000011
	sb	zero,s0,+00000012
	sb	zero,s0,+00000013

l230413E2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s2
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.addi16sp	00000030
	c.jr	ra

;; tcp_output_alloc_header.constprop.5: 230413F8
;;   Called from:
;;     23041AAA (in tcp_send_empty_ack)
;;     2304206E (in tcp_keepalive)
;;     23042104 (in tcp_zero_window_probe)
tcp_output_alloc_header.constprop.5 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	lhu	a6,a0,+0000002A
	lhu	a4,a0,+00000018
	lhu	a3,a0,+00000016
	c.lw	a0,36(a0)
	c.li	a5,00000010
	jal	ra,000000002304131C
	c.beqz	a0,0000000023041420

l23041416:
	lhu	a4,s0,+0000002A
	c.lw	s0,36(a5)
	c.add	a5,a4
	c.sw	s0,44(a5)

l23041420:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; tcp_output_control_segment: 23041428
;;   Called from:
;;     23041A84 (in tcp_rst)
;;     23041AD0 (in tcp_send_empty_ack)
;;     23042084 (in tcp_keepalive)
;;     2304218A (in tcp_zero_window_probe)
tcp_output_control_segment proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.mv	s1,a0
	c.mv	s0,a1
	c.mv	s4,a2
	c.mv	s2,a3
	c.beqz	a0,00000000230414B2

l23041440:
	lbu	a0,a0,+00000008
	c.beqz	a0,00000000230414B2

l23041446:
	jal	ra,000000002303E386

l2304144A:
	c.swsp	a0,00000084
	c.li	s3,FFFFFFFC
	c.beqz	a0,000000002304149A

l23041450:
	lhu	a2,s0,+00000008
	lw	s3,s0,+00000004
	c.mv	a4,s2
	c.mv	a3,s4
	c.li	a1,00000006
	c.mv	a0,s0
	jal	ra,0000000023043018
	sb	a0,s3,+00000010
	c.srli	a0,00000008
	sb	a0,s3,+00000011
	c.lwsp	a2,00000008
	c.beqz	s1,00000000230414BA

l23041472:
	lbu	a3,s1,+0000000B
	lbu	a4,s1,+0000000A

l2304147A:
	lui	a5,0004201A
	addi	a5,a5,+00000668
	lhu	a2,a5,+00000094
	c.mv	a1,s4
	c.mv	a0,s0
	c.addi	a2,00000001
	sh	a2,a5,+00000094
	c.li	a5,00000006
	c.mv	a2,s2
	jal	ra,000000002303D72C
	c.mv	s3,a0

l2304149A:
	c.mv	a0,s0
	jal	ra,000000002303E536
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s3
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l230414B2:
	c.mv	a0,s2
	jal	ra,000000002303D12A
	c.j	000000002304144A

l230414BA:
	c.li	a4,00000000
	addi	a3,zero,+000000FF
	c.j	000000002304147A

;; tcp_split_unsent_seg: 230414C2
;;   Called from:
;;     2303F5A6 (in tcp_slowtmr)
tcp_split_unsent_seg proc
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
	c.lw	a0,108(s0)
	sh	zero,sp,+0000001E
	sb	zero,sp,+0000001D
	c.bnez	s0,00000000230414E8

l230414E4:
	c.li	a5,FFFFFFFF
	c.j	00000000230414F6

l230414E8:
	c.li	a5,FFFFFFFA
	c.beqz	a1,00000000230414F6

l230414EC:
	lhu	s6,s0,+00000008
	bltu	a1,s6,0000000023041510

l230414F4:
	c.li	a5,00000000

l230414F6:
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
	c.mv	a0,a5
	c.addi16sp	00000050
	c.jr	ra

l23041510:
	lbu	s4,s0,+0000000D
	sub	s7,s6,a1
	c.slli	s7,10
	andi	s4,s4,+000000FB
	slli	s3,s4,00000002
	andi	s3,s3,+00000004
	srli	s7,s7,00000010
	c.mv	s1,a1
	add	a1,s7,s3
	c.slli	a1,10
	c.mv	s2,a0
	addi	a2,zero,+00000280
	c.srli	a1,00000010
	addi	a0,zero,+000000B6
	jal	ra,000000002303E5B8
	c.mv	s5,a0
	beq	a0,zero,0000000023041724

l23041548:
	c.lw	s0,4(a0)
	lhu	a5,s0,+00000008
	lw	a1,s5,+00000004
	lhu	a3,a0,+00000008
	c.mv	a2,s7
	c.add	a1,s3
	c.sub	a3,a5
	c.add	a3,s1
	c.slli	a3,10
	c.srli	a3,00000010
	jal	ra,000000002303E8AE
	c.mv	s8,a0
	bne	a0,s7,0000000023041724

l2304156C:
	lw	a0,s5,+00000004
	c.mv	a1,s8
	c.add	a0,s3
	jal	ra,000000002304311A
	xori	a0,a0,-00000001
	c.slli	a0,10
	addi	a2,sp,+0000001E
	addi	a3,sp,+0000001D
	c.mv	a1,s8
	c.srli	a0,00000010
	jal	ra,00000000230411E0
	c.lw	s0,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	andi	s3,a0,+000000FF
	andi	a2,s3,+00000008
	bne	a2,zero,00000000230416E4

l230415AC:
	andi	s3,s3,+0000003F

l230415B0:
	andi	a5,s3,+00000001
	c.beqz	a5,00000000230415BE

l230415B6:
	andi	s3,s3,+000000FE
	ori	a2,a2,+00000001

l230415BE:
	c.lw	s0,16(a4)
	c.swsp	a2,00000084
	lbu	a0,a4,+00000005
	lbu	a5,a4,+00000004
	c.slli	a0,08
	c.or	a0,a5
	lbu	a5,a4,+00000006
	c.slli	a5,10
	c.or	a5,a0
	lbu	a0,a4,+00000007
	c.slli	a0,18
	c.or	a0,a5
	jal	ra,000000002303A768
	c.lwsp	a2,00000084
	c.mv	a4,s4
	add	a3,s1,a0
	c.mv	a1,s5
	c.mv	a0,s2
	jal	ra,0000000023041212
	c.mv	s4,a0
	beq	a0,zero,0000000023041724

l230415F8:
	lhu	a5,sp,+0000001E
	sub	s1,s1,s6
	c.slli	s1,10
	sh	a5,a0,+0000000A
	lbu	a5,sp,+0000001D
	c.srli	s1,00000010
	sb	a5,a0,+0000000C
	lbu	a5,a0,+0000000D
	ori	a5,a5,+00000004
	sb	a5,a0,+0000000D
	c.lw	s0,4(a0)
	jal	ra,000000002303E790
	lhu	a5,s2,+00000066
	sub	a0,a5,a0
	sh	a0,s2,+00000066
	c.lw	s0,4(a0)
	lhu	a1,a0,+00000008
	c.add	a1,s1
	c.slli	a1,10
	c.srli	a1,00000010
	jal	ra,000000002303E716
	lhu	a5,s0,+00000008
	c.lw	s0,16(a4)
	c.add	s1,a5
	sh	s1,s0,+00000008
	lbu	s1,a4,+0000000D
	lbu	a0,a4,+0000000C
	c.slli	s1,08
	c.or	s1,a0
	c.mv	a0,s3
	jal	ra,000000002303A75A
	c.lw	s0,16(a4)
	or	a5,s1,a0
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,a4,+0000000C
	c.srli	a5,00000008
	sb	a5,a4,+0000000D
	c.lw	s0,4(a0)
	jal	ra,000000002303E790
	lhu	a5,s2,+00000066
	c.add	a0,a5
	sh	a0,s2,+00000066
	lw	s3,s0,+00000004
	sh	zero,s0,+0000000A
	sb	zero,s0,+0000000C
	lhu	s1,s3,+00000008
	lhu	a1,s0,+00000008
	c.sub	s1,a1
	c.slli	s1,10
	c.srli	s1,00000010

l2304169A:
	lhu	a1,s3,+0000000A
	bltu	a1,s1,00000000230416EC

l230416A2:
	addi	s6,s0,+0000000C
	addi	s5,s0,+0000000A

l230416AA:
	lhu	a1,s3,+0000000A
	lw	a0,s3,+00000004
	c.sub	a1,s1
	c.slli	a1,10
	c.srli	a1,00000010
	c.add	a0,s1
	jal	ra,000000002304311A
	lhu	a1,s3,+0000000A
	xori	a0,a0,-00000001
	c.slli	a0,10
	c.sub	a1,s1
	c.slli	a1,10
	c.mv	a3,s6
	c.mv	a2,s5
	c.srli	a1,00000010
	c.srli	a0,00000010
	jal	ra,00000000230411E0
	lw	s3,s3,+00000000
	c.li	s1,00000000
	bne	s3,zero,00000000230416AA

l230416E2:
	c.j	00000000230416FA

l230416E4:
	andi	s3,s3,+00000037
	c.li	a2,00000008
	c.j	00000000230415B0

l230416EC:
	lw	s3,s3,+00000000
	c.sub	s1,a1
	c.slli	s1,10
	c.srli	s1,00000010
	bne	s3,zero,000000002304169A

l230416FA:
	lw	a0,s4,+00000004
	jal	ra,000000002303E790
	lhu	a5,s2,+00000066
	c.add	a0,a5
	sh	a0,s2,+00000066
	c.lw	s0,0(a5)
	sw	a5,s4,+00000000
	sw	s4,s0,+00000000
	lw	a5,s4,+00000000
	bne	a5,zero,00000000230414F4

l2304171E:
	sh	zero,s2,+00000068
	c.j	00000000230414F6

l23041724:
	lui	a5,0004201A
	addi	a5,a5,+00000668
	lhu	a4,a5,+000000A0
	c.addi	a4,00000001
	sh	a4,a5,+000000A0
	beq	s5,zero,00000000230414E4

l2304173A:
	c.mv	a0,s5
	jal	ra,000000002303E536
	c.j	00000000230414E4

;; tcp_enqueue_flags: 23041742
;;   Called from:
;;     23040C12 (in tcp_input)
;;     2304180A (in tcp_send_fin)
tcp_enqueue_flags proc
	srli	a4,a1,00000001
	c.addi	sp,FFFFFFE0
	c.andi	a4,00000001
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s0,a0
	c.mv	s1,a1
	andi	s2,a1,+00000003
	addi	a2,zero,+00000280
	slli	a1,a4,00000002
	addi	a0,zero,+000000B6
	c.swsp	a4,00000084
	c.swsp	ra,0000008C
	jal	ra,000000002303E5B8
	c.lwsp	a2,000000C4
	c.bnez	a0,000000002304179C

l23041770:
	lhu	a5,s0,+0000001A
	c.li	a0,FFFFFFFF
	ori	a5,a5,+00000080
	sh	a5,s0,+0000001A
	lui	a5,0004201A
	addi	a5,a5,+00000668
	lhu	a4,a5,+000000A0
	c.addi	a4,00000001
	sh	a4,a5,+000000A0

l23041790:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2304179C:
	c.lw	s0,92(a3)
	c.mv	a1,a0
	c.mv	a2,s1
	c.mv	a0,s0
	jal	ra,0000000023041212
	c.beqz	a0,0000000023041770

l230417AA:
	c.lw	s0,108(a5)
	c.bnez	a5,00000000230417E4

l230417AE:
	c.sw	s0,108(a0)

l230417B0:
	sh	zero,s0,+00000068
	beq	s2,zero,00000000230417BE

l230417B8:
	c.lw	s0,92(a5)
	c.addi	a5,00000001
	c.sw	s0,92(a5)

l230417BE:
	c.andi	s1,00000001
	c.beqz	s1,00000000230417CE

l230417C2:
	lhu	a5,s0,+0000001A
	ori	a5,a5,+00000020
	sh	a5,s0,+0000001A

l230417CE:
	c.lw	a0,4(a0)
	jal	ra,000000002303E790
	lhu	a5,s0,+00000066
	c.add	a0,a5
	sh	a0,s0,+00000066
	c.li	a0,00000000
	c.j	0000000023041790

l230417E2:
	c.mv	a5,a4

l230417E4:
	c.lw	a5,0(a4)
	c.bnez	a4,00000000230417E2

l230417E8:
	c.sw	a5,0(a0)
	c.j	00000000230417B0

;; tcp_send_fin: 230417EC
;;   Called from:
;;     2303EBA4 (in tcp_close_shutdown_fin)
;;     2303EBC4 (in tcp_close_shutdown_fin)
tcp_send_fin proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.lw	a0,108(s1)
	c.mv	s2,a0
	c.bnez	s1,0000000023041810

l230417FC:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.mv	a0,s2
	c.lwsp	zero,00000048
	c.li	a1,00000001
	c.addi	sp,00000010
	jal	zero,0000000023041742

l2304180E:
	c.mv	s1,a5

l23041810:
	c.lw	s1,0(a5)
	c.bnez	a5,000000002304180E

l23041814:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.andi	a0,00000007
	c.bnez	a0,00000000230417FC

l2304182A:
	c.lw	s1,16(a5)
	lbu	s0,a5,+0000000D
	lbu	a0,a5,+0000000C
	c.slli	s0,08
	c.or	s0,a0
	c.li	a0,00000001
	jal	ra,000000002303A75A
	c.lw	s1,16(a5)
	c.or	a0,s0
	c.slli	a0,10
	c.srli	a0,00000010
	sb	a0,a5,+0000000C
	c.srli	a0,00000008
	sb	a0,a5,+0000000D
	lhu	a5,s2,+0000001A
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	ori	a5,a5,+00000020
	sh	a5,s2,+0000001A
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; tcp_rexmit_rto_prepare: 2304186A
;;   Called from:
;;     2303F6DE (in tcp_slowtmr)
;;     2304203E (in tcp_rexmit_rto)
tcp_rexmit_rto_prepare proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.lw	a0,112(s1)
	c.li	a3,00000001
	c.bnez	s1,0000000023041886

l2304187C:
	c.li	a5,FFFFFFFA
	c.j	0000000023041902

l23041880:
	c.mv	s1,a5
	bne	a4,a3,000000002304187C

l23041886:
	c.lw	s1,4(a4)
	c.lw	s1,0(a5)
	lbu	a4,a4,+0000000E
	c.bnez	a5,0000000023041880

l23041890:
	c.li	a3,00000001
	c.li	a5,FFFFFFFA
	bne	a4,a3,0000000023041902

l23041898:
	c.lw	a0,108(a5)
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	c.sw	s1,0(a5)
	c.lw	a0,112(a5)
	sw	zero,a0,+00000070
	c.mv	s0,a0
	c.sw	a0,108(a5)
	lhu	a5,a0,+0000001A
	c.or	a5,a4
	sh	a5,a0,+0000001A
	c.lw	s1,16(a4)
	lbu	a0,a4,+00000005
	lbu	a5,a4,+00000004
	c.slli	a0,08
	c.or	a0,a5
	lbu	a5,a4,+00000006
	c.slli	a5,10
	c.or	a5,a0
	lbu	a0,a4,+00000007
	c.slli	a0,18
	c.or	a0,a5
	jal	ra,000000002303A768
	c.lw	s1,16(a5)
	c.mv	s2,a0
	lhu	s3,s1,+00000008
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.add	s2,s3
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	a0,s2
	c.sw	s0,76(a0)
	sw	zero,s0,+00000034
	c.li	a5,00000000

l23041902:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

;; tcp_rexmit: 23041912
;;   Called from:
;;     23040F44 (in tcp_input)
;;     230419E4 (in tcp_rexmit_fast)
tcp_rexmit proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.lw	a0,112(s1)
	c.li	a5,FFFFFFFA
	c.beqz	s1,000000002304196C

l23041924:
	c.lw	s1,4(a5)
	c.li	a4,00000001
	lbu	a3,a5,+0000000E
	c.li	a5,FFFFFFFA
	bne	a3,a4,000000002304196C

l23041932:
	c.lw	s1,0(a5)
	c.mv	s0,a0
	addi	s2,a0,+0000006C
	c.sw	a0,112(a5)

l2304193C:
	lw	a5,s2,+00000000
	c.bnez	a5,000000002304197C

l23041942:
	lw	a5,s2,+00000000
	c.sw	s1,0(a5)
	sw	s1,s2,+00000000
	c.lw	s1,0(a5)
	c.bnez	a5,0000000023041954

l23041950:
	sh	zero,s0,+00000068

l23041954:
	lbu	a5,s0,+00000042
	addi	a4,zero,+000000FF
	beq	a5,a4,0000000023041966

l23041960:
	c.addi	a5,00000001
	sb	a5,s0,+00000042

l23041966:
	sw	zero,s0,+00000034
	c.li	a5,00000000

l2304196C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

l2304197C:
	c.lw	a5,16(a4)
	lbu	a0,a4,+00000005
	lbu	a5,a4,+00000004
	c.slli	a0,08
	c.or	a0,a5
	lbu	a5,a4,+00000006
	c.slli	a5,10
	c.or	a5,a0
	lbu	a0,a4,+00000007
	c.slli	a0,18
	c.or	a0,a5
	jal	ra,000000002303A768
	c.lw	s1,16(a4)
	c.mv	s3,a0
	lbu	a0,a4,+00000005
	lbu	a5,a4,+00000004
	c.slli	a0,08
	c.or	a0,a5
	lbu	a5,a4,+00000006
	c.slli	a5,10
	c.or	a5,a0
	lbu	a0,a4,+00000007
	c.slli	a0,18
	c.or	a0,a5
	jal	ra,000000002303A768
	sub	a0,s3,a0
	bge	a0,zero,0000000023041942

l230419CA:
	lw	s2,s2,+00000000
	c.j	000000002304193C

;; tcp_rexmit_fast: 230419D0
;;   Called from:
;;     2303FCA4 (in tcp_receive)
tcp_rexmit_fast proc
	c.lw	a0,112(a5)
	c.beqz	a5,0000000023041A3A

l230419D4:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lhu	a5,a0,+0000001A
	c.mv	s0,a0
	c.andi	a5,00000004
	c.bnez	a5,0000000023041A32

l230419E4:
	jal	ra,0000000023041912
	c.bnez	a0,0000000023041A32

l230419EA:
	lhu	a4,s0,+00000048
	lhu	a5,s0,+00000060
	bgeu	a4,a5,00000000230419F8

l230419F6:
	c.mv	a5,a4

l230419F8:
	c.slli	a5,10
	lhu	a4,s0,+00000032
	c.srli	a5,00000010
	c.srai	a5,00000001
	sh	a5,s0,+0000004A
	slli	a3,a4,00000001
	bgeu	a5,a3,0000000023041A12

l23041A0E:
	sh	a3,s0,+0000004A

l23041A12:
	c.li	a5,00000003
	add	a4,a4,a5
	lhu	a5,s0,+0000004A
	sh	zero,s0,+00000030
	c.add	a4,a5
	lhu	a5,s0,+0000001A
	sh	a4,s0,+00000048
	ori	a5,a5,+00000004
	sh	a5,s0,+0000001A

l23041A32:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23041A3A:
	c.jr	ra

;; tcp_rst: 23041A3C
;;   Called from:
;;     2303EEEC (in tcp_abandon)
;;     2303F22C (in tcp_close_shutdown)
;;     2303F7EE (in tcp_slowtmr)
;;     23040A0E (in tcp_input)
;;     23040E32 (in tcp_input)
;;     23040F2C (in tcp_input)
tcp_rst proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.mv	s0,a0
	c.mv	a0,a1
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.mv	s3,a2
	c.mv	s1,a3
	c.mv	s2,a4
	c.swsp	a5,00000084
	c.swsp	a6,00000004
	jal	ra,000000002303A768
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000A4
	c.lui	a6,00001000
	c.mv	a2,a0
	c.addi	a6,00000008
	c.li	a5,00000014
	c.li	a1,00000000
	c.mv	a0,s3
	jal	ra,000000002304131C
	c.beqz	a0,0000000023041A88

l23041A70:
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	t3,00000068
	c.mv	a3,s2
	c.mv	a2,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	jal	zero,0000000023041428

l23041A88:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; tcp_send_empty_ack: 23041A96
;;   Called from:
;;     230400B4 (in tcp_receive)
;;     2304031E (in tcp_receive)
;;     2304092E (in tcp_input)
;;     23041B3C (in tcp_output)
tcp_send_empty_ack proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,80(a0)
	jal	ra,000000002303A768
	c.mv	a2,a0
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230413F8
	c.bnez	a0,0000000023041AC6

l23041AB0:
	lhu	a5,s0,+0000001A
	c.li	a0,FFFFFFFE
	ori	a5,a5,+00000003
	sh	a5,s0,+0000001A

l23041ABE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23041AC6:
	c.mv	a1,a0
	addi	a3,s0,+00000004
	c.mv	a2,s0
	c.mv	a0,s0
	jal	ra,0000000023041428
	lhu	a5,s0,+0000001A
	c.beqz	a0,0000000023041AE4

l23041ADA:
	ori	a5,a5,+00000003

l23041ADE:
	sh	a5,s0,+0000001A
	c.j	0000000023041ABE

l23041AE4:
	c.andi	a5,FFFFFFFC
	c.j	0000000023041ADE

;; tcp_output: 23041AE8
;;   Called from:
;;     2303EBB4 (in tcp_close_shutdown_fin)
;;     2303ECAC (in tcp_recved)
;;     2303EE1E (in tcp_pcb_remove)
;;     2303F472 (in tcp_fasttmr)
;;     2303F5B0 (in tcp_slowtmr)
;;     2303F6AC (in tcp_slowtmr)
;;     23040A30 (in tcp_input)
;;     2304111E (in tcp_input)
;;     23042032 (in tcp_rexmit_rto_commit)
tcp_output proc
	lui	a5,0004201A
	lw	a5,a5,+00000788
	beq	a5,a0,0000000023042018

l23041AF4:
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
	c.lw	a0,108(s1)
	c.mv	s0,a0
	c.bnez	s1,0000000023041B40

l23041B16:
	lhu	a5,a0,+0000001A
	c.andi	a5,00000002
	beq	a5,zero,0000000023042000

l23041B20:
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
	jal	zero,0000000023041A96

l23041B40:
	lhu	s6,a0,+00000048
	lhu	s2,a0,+00000060
	addi	s5,a0,+00000004
	lbu	a0,a0,+00000008
	c.beqz	a0,0000000023041BCE

l23041B52:
	jal	ra,000000002303E386

l23041B56:
	c.mv	s4,a0
	beq	a0,zero,000000002304201C

l23041B5C:
	c.lw	s0,0(a5)
	c.bnez	a5,0000000023041B64

l23041B60:
	c.lw	a0,4(a5)
	c.sw	s0,0(a5)

l23041B64:
	c.mv	s3,s6
	bgeu	s2,s6,0000000023041B6C

l23041B6A:
	c.mv	s3,s2

l23041B6C:
	c.lw	s1,16(a4)
	c.slli	s3,10
	srli	s3,s3,00000010
	lbu	a0,a4,+00000005
	lbu	a5,a4,+00000004
	c.slli	a0,08
	c.or	a0,a5
	lbu	a5,a4,+00000006
	c.slli	a5,10
	c.or	a5,a0
	lbu	a0,a4,+00000007
	c.slli	a0,18
	c.or	a0,a5
	jal	ra,000000002303A768
	lhu	a5,s1,+00000008
	c.lw	s0,68(a4)
	c.sub	a5,a4
	c.add	a0,a5
	bgeu	s3,a0,0000000023041BD6

l23041BA2:
	lhu	a5,s0,+00000060
	bne	a5,s3,0000000023041BC0

l23041BAA:
	c.lw	s0,112(a5)
	c.bnez	a5,0000000023041BC0

l23041BAE:
	lbu	a5,s0,+000000A1
	c.bnez	a5,0000000023041BC0

l23041BB4:
	addi	a5,zero,+00000100
	sh	a5,s0,+000000A0
	sb	zero,s0,+000000A2

l23041BC0:
	lhu	a5,s0,+0000001A
	c.andi	a5,00000002
	beq	a5,zero,0000000023042000

l23041BCA:
	c.mv	a0,s0
	c.j	0000000023041B20

l23041BCE:
	c.mv	a0,s5
	jal	ra,000000002303D12A
	c.j	0000000023041B56

l23041BD6:
	lw	s2,s0,+00000070
	sb	zero,s0,+000000A1
	bne	s2,zero,0000000023041BFC

l23041BE2:
	lui	s6,0004201A
	c.li	s9,0000000F
	c.li	s7,00000002
	c.li	s8,00000001
	addi	s6,s6,+00000668
	lui	s10,0004201A
	lui	s11,00002040
	c.j	0000000023041F76

l23041BFA:
	c.mv	s2,a5

l23041BFC:
	lw	a5,s2,+00000000
	c.bnez	a5,0000000023041BFA

l23041C02:
	c.j	0000000023041BE2

l23041C04:
	lbu	a5,s0,+00000014
	beq	a5,s7,0000000023041C36

l23041C0C:
	c.lw	s1,16(a4)
	lbu	a5,a4,+0000000D
	lbu	a0,a4,+0000000C
	c.slli	a5,08
	c.or	a5,a0
	c.li	a0,00000010
	c.swsp	a5,00000004
	jal	ra,000000002303A75A
	c.lwsp	s0,000000E4
	c.lw	s1,16(a4)
	c.or	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010
	sb	a0,a4,+0000000C
	c.srli	a0,00000008
	sb	a0,a4,+0000000D

l23041C36:
	c.lw	s1,4(a5)
	lbu	a5,a5,+0000000E
	bne	a5,s8,0000000023041E18

l23041C40:
	c.lw	s1,16(a5)
	c.lw	s0,36(a0)
	c.swsp	a5,00000004
	jal	ra,000000002303A768
	c.lwsp	s0,000000E4
	srli	a4,a0,00000008
	sb	a0,a5,+00000008
	sb	a4,a5,+00000009
	srli	a4,a0,00000010
	c.srli	a0,00000018
	sb	a4,a5,+0000000A
	sb	a0,a5,+0000000B
	c.lw	s1,16(a5)
	lhu	a0,s0,+0000002A
	c.swsp	a5,00000004
	jal	ra,000000002303A75A
	c.lwsp	s0,000000E4
	sb	a0,a5,+0000000E
	c.srli	a0,00000008
	sb	a0,a5,+0000000F
	lhu	a4,s0,+0000002A
	c.lw	s0,36(a5)
	c.add	a5,a4
	c.sw	s0,44(a5)
	lbu	a5,s1,+0000000D
	c.andi	a5,00000001
	c.beqz	a5,0000000023041CAC

l23041C90:
	c.lw	s1,16(a5)
	c.mv	a2,s5
	c.mv	a1,s4
	addi	a0,zero,+000002B0
	c.swsp	a5,00000004
	jal	ra,000000002303ED3C
	or	a0,a0,s11
	jal	ra,000000002303A768
	c.lwsp	s0,000000E4
	c.sw	a5,20(a0)

l23041CAC:
	lh	a5,s0,+00000030
	bge	a5,zero,0000000023041CB8

l23041CB4:
	sh	zero,s0,+00000030

l23041CB8:
	c.lw	s0,52(a5)
	c.bnez	a5,0000000023041CE6

l23041CBC:
	lw	a5,s10,+00000774
	c.sw	s0,52(a5)
	c.lw	s1,16(a4)
	lbu	a0,a4,+00000005
	lbu	a5,a4,+00000004
	c.slli	a0,08
	c.or	a0,a5
	lbu	a5,a4,+00000006
	c.slli	a5,10
	c.or	a5,a0
	lbu	a0,a4,+00000007
	c.slli	a0,18
	c.or	a0,a5
	jal	ra,000000002303A768
	c.sw	s0,56(a0)

l23041CE6:
	c.lw	s1,4(a4)
	c.lw	s1,16(a5)
	c.lw	a4,4(a3)
	c.sub	a5,a3
	lhu	a3,a4,+0000000A
	c.slli	a5,10
	c.srli	a5,00000010
	c.sub	a3,a5
	sh	a3,a4,+0000000A
	c.lw	s1,4(a3)
	lhu	a4,a3,+00000008
	sub	a5,a4,a5
	sh	a5,a3,+00000008
	c.lw	s1,16(a5)
	c.lw	s1,4(a4)
	c.sw	a4,4(a5)
	sb	zero,a5,+00000010
	sb	zero,a5,+00000011
	lbu	a5,s1,+0000000D
	c.andi	a5,00000004
	c.bnez	a5,0000000023041D32

l23041D20:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A

l23041D32:
	lw	a6,s1,+00000004
	c.lw	s1,16(a5)
	lhu	a2,a6,+00000008
	c.swsp	a6,00000084
	c.swsp	a2,00000004
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.lwsp	a2,00000008
	c.lwsp	s0,00000084
	srli	a3,a0,0000000A
	c.mv	a5,s5
	c.mv	a4,s0
	andi	a3,a3,+000000FC
	c.li	a1,00000006
	c.mv	a0,a6
	jal	ra,0000000023043116
	lbu	a5,s1,+0000000C
	c.li	a7,00000000
	c.beqz	a5,0000000023041D86

l23041D70:
	lhu	a5,s1,+0000000A
	sb	zero,s1,+0000000C
	c.li	a7,00000001
	slli	a4,a5,00000008
	c.srli	a5,00000008
	c.or	a5,a4
	sh	a5,s1,+0000000A

l23041D86:
	xori	a0,a0,-00000001
	slli	a5,a0,00000010
	lhu	a0,s1,+0000000A
	c.srli	a5,00000010
	c.lw	s1,16(a4)
	c.add	a0,a5
	srli	a5,a0,00000010
	c.add	a5,a0
	xori	a5,a5,-00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,a4,+00000010
	c.srli	a5,00000008
	sb	a5,a4,+00000011
	lhu	a5,s6,+00000094
	c.mv	a6,s4
	c.mv	a2,s5
	c.addi	a5,00000001
	sh	a5,s6,+00000094
	lbu	a4,s0,+0000000A
	lbu	a3,s0,+0000000B
	c.lw	s1,4(a0)
	c.li	a5,00000006
	c.mv	a1,s0
	c.swsp	a7,00000004
	jal	ra,000000002303D72C
	c.lwsp	s0,00000028
	beq	a7,zero,0000000023041DEC

l23041DD8:
	lhu	a5,s1,+0000000A
	sb	s8,s1,+0000000C
	slli	a4,a5,00000008
	c.srli	a5,00000008
	c.or	a5,a4
	sh	a5,s1,+0000000A

l23041DEC:
	c.beqz	a0,0000000023041E18

l23041DEE:
	lhu	a5,s0,+0000001A
	ori	a5,a5,+00000080
	sh	a5,s0,+0000001A

l23041DFA:
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

l23041E18:
	c.lw	s1,0(a5)
	c.sw	s0,108(a5)
	lbu	a5,s0,+00000014
	beq	a5,s7,0000000023041E2E

l23041E24:
	lhu	a5,s0,+0000001A
	c.andi	a5,FFFFFFFC
	sh	a5,s0,+0000001A

l23041E2E:
	c.lw	s1,16(a4)
	lbu	a0,a4,+00000005
	lbu	a5,a4,+00000004
	c.slli	a0,08
	c.or	a0,a5
	lbu	a5,a4,+00000006
	c.slli	a5,10
	c.or	a5,a0
	lbu	a0,a4,+00000007
	c.slli	a0,18
	c.or	a0,a5
	jal	ra,000000002303A768
	lhu	a3,s1,+00000008
	c.lw	s1,16(a4)
	c.swsp	a0,00000084
	c.swsp	a3,00000004
	lbu	a0,a4,+0000000C
	lbu	a4,a4,+0000000D
	c.slli	a4,08
	c.or	a0,a4
	jal	ra,000000002303A75A
	c.lwsp	s0,000000A4
	c.lwsp	a2,000000E4
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	a5,a3
	c.add	a0,a5
	c.lw	s0,80(a5)
	c.sub	a5,a0
	bge	a5,zero,0000000023041E82

l23041E80:
	c.sw	s0,80(a0)

l23041E82:
	lhu	a4,s1,+00000008
	c.lw	s1,16(a5)
	c.swsp	a4,00000004
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.lwsp	s0,000000C4
	c.andi	a0,00000003
	sltu	a0,zero,a0
	c.add	a0,a4
	beq	a0,zero,0000000023042010

l23041EA8:
	sw	zero,s1,+00000000
	c.lw	s0,112(a5)
	c.bnez	a5,0000000023041EB6

l23041EB0:
	c.sw	s0,112(s1)

l23041EB2:
	c.mv	s2,s1
	c.j	0000000023041F72

l23041EB6:
	c.lw	s1,16(a4)
	lbu	a0,a4,+00000005
	lbu	a5,a4,+00000004
	c.slli	a0,08
	c.or	a0,a5
	lbu	a5,a4,+00000006
	c.slli	a5,10
	c.or	a5,a0
	lbu	a0,a4,+00000007
	c.slli	a0,18
	c.or	a0,a5
	jal	ra,000000002303A768
	lw	a4,s2,+00000010
	c.swsp	a0,00000004
	lbu	a0,a4,+00000005
	lbu	a5,a4,+00000004
	c.slli	a0,08
	c.or	a0,a5
	lbu	a5,a4,+00000006
	c.slli	a5,10
	c.or	a5,a0
	lbu	a0,a4,+00000007
	c.slli	a0,18
	c.or	a0,a5
	jal	ra,000000002303A768
	c.lwsp	s0,000000A4
	addi	a5,s0,+00000070
	sub	a0,a3,a0
	blt	a0,zero,0000000023041F68

l23041F0C:
	sw	s1,s2,+00000000
	c.j	0000000023041EB2

l23041F12:
	c.lw	a4,16(a3)
	c.swsp	a5,00000084
	lbu	a0,a3,+00000005
	lbu	a4,a3,+00000004
	c.slli	a0,08
	c.or	a0,a4
	lbu	a4,a3,+00000006
	c.slli	a4,10
	c.or	a4,a0
	lbu	a0,a3,+00000007
	c.slli	a0,18
	c.or	a0,a4
	jal	ra,000000002303A768
	c.lw	s1,16(a3)
	c.swsp	a0,00000004
	lbu	a0,a3,+00000005
	lbu	a4,a3,+00000004
	c.slli	a0,08
	c.or	a0,a4
	lbu	a4,a3,+00000006
	c.slli	a4,10
	c.or	a4,a0
	lbu	a0,a3,+00000007
	c.slli	a0,18
	c.or	a0,a4
	jal	ra,000000002303A768
	c.lwsp	s0,00000084
	c.lwsp	a2,000000E4
	sub	a0,a2,a0
	bge	a0,zero,0000000023041F6C

l23041F66:
	c.lw	a5,0(a5)

l23041F68:
	c.lw	a5,0(a4)
	c.bnez	a4,0000000023041F12

l23041F6C:
	c.lw	a5,0(a4)
	c.sw	s1,0(a4)
	c.sw	a5,0(s1)

l23041F72:
	c.lw	s0,108(s1)
	c.beqz	s1,0000000023041FFC

l23041F76:
	c.lw	s1,16(a4)
	lbu	a0,a4,+00000005
	lbu	a5,a4,+00000004
	c.slli	a0,08
	c.or	a0,a5
	lbu	a5,a4,+00000006
	c.slli	a5,10
	c.or	a5,a0
	lbu	a0,a4,+00000007
	c.slli	a0,18
	c.or	a0,a5
	jal	ra,000000002303A768
	c.lw	s0,68(a5)
	c.sub	a0,a5
	lhu	a5,s1,+00000008
	c.add	a0,a5
	bltu	s3,a0,0000000023041FF8

l23041FA6:
	c.lw	s1,16(a5)
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.lw	s0,112(a5)
	beq	a5,zero,0000000023041C04

l23041FBE:
	lhu	a5,s0,+0000001A
	andi	a4,a5,+00000044
	bne	a4,zero,0000000023041C04

l23041FCA:
	c.lw	s0,108(a4)
	c.beqz	a4,0000000023041FE0

l23041FCE:
	c.lw	a4,0(a3)
	bne	a3,zero,0000000023041C04

l23041FD4:
	lhu	a3,a4,+00000008
	lhu	a4,s0,+00000032
	bgeu	a3,a4,0000000023041C04

l23041FE0:
	lhu	a4,s0,+00000064
	beq	a4,zero,0000000023041C04

l23041FE8:
	lhu	a4,s0,+00000066
	bltu	s9,a4,0000000023041C04

l23041FF0:
	andi	a5,a5,+000000A0
	bne	a5,zero,0000000023041C04

l23041FF8:
	c.lw	s0,108(a5)
	c.bnez	a5,0000000023042000

l23041FFC:
	sh	zero,s0,+00000068

l23042000:
	lhu	a5,s0,+0000001A
	c.li	a0,00000000
	andi	a5,a5,-00000081
	sh	a5,s0,+0000001A
	c.j	0000000023041DFA

l23042010:
	c.mv	a0,s1
	jal	ra,000000002303ECBA
	c.j	0000000023041F72

l23042018:
	c.li	a0,00000000
	c.jr	ra

l2304201C:
	c.li	a0,FFFFFFFC
	c.j	0000000023041DFA

;; tcp_rexmit_rto_commit: 23042020
;;   Called from:
;;     2303F764 (in tcp_slowtmr)
;;     2304204C (in tcp_rexmit_rto)
tcp_rexmit_rto_commit proc
	lbu	a5,a0,+00000042
	addi	a4,zero,+000000FF
	beq	a5,a4,0000000023042032

l2304202C:
	c.addi	a5,00000001
	sb	a5,a0,+00000042

l23042032:
	jal	zero,0000000023041AE8

;; tcp_rexmit_rto: 23042036
;;   Called from:
;;     23040E46 (in tcp_input)
tcp_rexmit_rto proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002304186A
	c.bnez	a0,0000000023042050

l23042044:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023042020

l23042050:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; tcp_keepalive: 23042058
;;   Called from:
;;     2303F798 (in tcp_slowtmr)
tcp_keepalive proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,80(a0)
	c.addi	a0,FFFFFFFF
	jal	ra,000000002303A768
	c.mv	a2,a0
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230413F8
	c.beqz	a0,0000000023042088

l23042074:
	c.mv	a1,a0
	addi	a3,s0,+00000004
	c.mv	a2,s0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023041428

l23042088:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,FFFFFFFF
	c.addi	sp,00000010
	c.jr	ra

;; tcp_zero_window_probe: 23042092
;;   Called from:
;;     2303F6B4 (in tcp_slowtmr)
tcp_zero_window_probe proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lw	s2,a0,+0000006C
	beq	s2,zero,00000000230421AC

l230420A8:
	lbu	a5,a0,+000000A2
	addi	a4,zero,+000000FF
	beq	a5,a4,00000000230420BA

l230420B4:
	c.addi	a5,00000001
	sb	a5,a0,+000000A2

l230420BA:
	lw	a5,s2,+00000010
	c.mv	s1,a0
	c.li	s0,00000000
	lbu	a0,a5,+0000000C
	lbu	a5,a5,+0000000D
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	c.andi	a0,00000001
	c.beqz	a0,00000000230420DE

l230420D6:
	lhu	s0,s2,+00000008
	sltiu	s0,s0,+00000001

l230420DE:
	lw	a4,s2,+00000010
	xori	a1,s0,+00000001
	c.mv	a0,s1
	lbu	a2,a4,+00000005
	lbu	a5,a4,+00000004
	c.slli	a2,08
	c.or	a2,a5
	lbu	a5,a4,+00000006
	c.slli	a5,10
	c.or	a5,a2
	lbu	a2,a4,+00000007
	c.slli	a2,18
	c.or	a2,a5
	jal	ra,00000000230413F8
	c.mv	s3,a0
	c.beqz	a0,00000000230421BE

l2304210C:
	lw	s4,a0,+00000004
	c.beqz	s0,000000002304218E

l23042112:
	lbu	s0,s4,+0000000D
	lbu	a5,s4,+0000000C
	c.li	a0,00000011
	c.slli	s0,08
	c.or	s0,a5
	c.lui	a5,FFFFC000
	addi	a5,a5,+000000FF
	c.and	s0,a5
	c.slli	s0,10
	jal	ra,000000002303A75A
	c.srai	s0,00000010
	or	a5,s0,a0
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,s4,+0000000C
	c.srli	a5,00000008
	sb	a5,s4,+0000000D

l23042142:
	lw	a4,s2,+00000010
	lbu	a0,a4,+00000005
	lbu	a5,a4,+00000004
	c.slli	a0,08
	c.or	a0,a5
	lbu	a5,a4,+00000006
	c.slli	a5,10
	c.or	a5,a0
	lbu	a0,a4,+00000007
	c.slli	a0,18
	c.or	a0,a5
	jal	ra,000000002303A768
	c.lw	s1,80(a5)
	c.addi	a0,00000001
	c.sub	a5,a0
	bge	a5,zero,0000000023042172

l23042170:
	c.sw	s1,80(a0)

l23042172:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	s0,00000088
	addi	a3,s1,+00000004
	c.mv	a2,s1
	c.mv	a1,s3
	c.mv	a0,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,0000000023041428

l2304218E:
	lw	a0,s2,+00000004
	lhu	a5,s2,+00000008
	c.li	a2,00000001
	lhu	a3,a0,+00000008
	addi	a1,s4,+00000014
	c.sub	a3,a5
	c.slli	a3,10
	c.srli	a3,00000010
	jal	ra,000000002303E8AE
	c.j	0000000023042142

l230421AC:
	c.li	a0,00000000

l230421AE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l230421BE:
	c.li	a0,FFFFFFFF
	c.j	00000000230421AE

;; sys_timeout_abs: 230421C2
;;   Called from:
;;     23042252 (in lwip_cyclic_timer)
;;     23042272 (in sys_timeout)
sys_timeout_abs proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.li	a0,0000000B
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	jal	ra,000000002303DF26
	c.beqz	a0,00000000230421F2

l230421D6:
	lui	a4,0004200E
	c.lwsp	a2,00000064
	c.lwsp	s0,00000084
	addi	a4,a4,+00000350
	c.lw	a4,0(a5)
	sw	zero,a0,+00000000
	c.sw	a0,8(a1)
	c.sw	a0,12(a2)
	c.sw	a0,4(s0)
	c.bnez	a5,00000000230421FA

l230421F0:
	c.sw	a4,0(a0)

l230421F2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l230421FA:
	c.lw	a5,4(a3)
	sub	a3,s0,a3
	bge	a3,zero,000000002304220A

l23042204:
	c.sw	a0,0(a5)
	c.j	00000000230421F0

l23042208:
	c.mv	a5,a4

l2304220A:
	c.lw	a5,0(a4)
	c.beqz	a4,0000000023042218

l2304220E:
	c.lw	a4,4(a3)
	sub	a3,s0,a3
	bge	a3,zero,0000000023042208

l23042218:
	c.sw	a0,0(a4)
	c.sw	a5,0(a0)
	c.j	00000000230421F2

;; lwip_cyclic_timer: 2304221E
lwip_cyclic_timer proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.lw	a0,4(a5)
	c.swsp	a0,00000084
	c.jalr	a5
	jal	ra,0000000023042E92
	c.lwsp	a2,00000084
	lui	a5,0004200E
	lw	a5,a5,+0000034C
	c.lw	a2,0(a4)
	lui	a1,00023042
	addi	a1,a1,+0000021E
	c.add	a5,a4
	sub	a3,a5,a0
	c.add	a0,a4
	blt	a3,zero,000000002304224E

l2304224C:
	c.mv	a0,a5

l2304224E:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,00000000230421C2

;; sys_timeout: 23042256
;;   Called from:
;;     230422AA (in tcp_timer_needed)
;;     230422DE (in tcpip_tcp_timer)
;;     23042318 (in sys_timeouts_init)
sys_timeout proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	jal	ra,0000000023042E92
	c.add	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,00000000230421C2

;; tcp_timer_needed: 23042276
;;   Called from:
;;     23040BBA (in tcp_input)
;;     23040FC8 (in tcp_input)
tcp_timer_needed proc
	lui	a5,0004200E
	lw	a4,a5,+00000354
	addi	a5,a5,+00000354
	c.bnez	a4,00000000230422AE

l23042284:
	lui	a4,0004201A
	lw	a4,a4,+0000077C
	c.bnez	a4,0000000023042298

l2304228E:
	lui	a4,0004201A
	lw	a4,a4,+00000770
	c.beqz	a4,00000000230422AE

l23042298:
	lui	a1,00023042
	c.li	a4,00000001
	c.li	a2,00000000
	addi	a1,a1,+000002B0
	addi	a0,zero,+000000FA
	c.sw	a5,0(a4)
	jal	zero,0000000023042256

l230422AE:
	c.jr	ra

;; tcpip_tcp_timer: 230422B0
tcpip_tcp_timer proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002303F87E
	lui	a5,0004201A
	lw	a5,a5,+0000077C
	c.bnez	a5,00000000230422CC

l230422C2:
	lui	a5,0004201A
	lw	a5,a5,+00000770
	c.beqz	a5,00000000230422E2

l230422CC:
	c.lwsp	a2,00000020
	lui	a1,00023042
	c.li	a2,00000000
	addi	a1,a1,+000002B0
	addi	a0,zero,+000000FA
	c.addi	sp,00000010
	jal	zero,0000000023042256

l230422E2:
	c.lwsp	a2,00000020
	lui	a5,0004200E
	sw	zero,a5,+00000354
	c.addi	sp,00000010
	c.jr	ra

;; sys_timeouts_init: 230422F0
;;   Called from:
;;     2303AEBA (in lwip_init)
sys_timeouts_init proc
	lui	a5,0002307B
	c.addi	sp,FFFFFFF0
	addi	a5,a5,-00000328
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	addi	s1,a5,+00000008
	addi	s0,a5,+00000030
	lui	s2,00023042

l2304230E:
	c.lw	s1,0(a0)
	c.mv	a2,s1
	addi	a1,s2,+0000021E
	c.addi	s1,00000008
	jal	ra,0000000023042256
	bne	s1,s0,000000002304230E

l23042320:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; sys_check_timeouts: 2304232C
;;   Called from:
;;     2303A568 (in tcpip_thread)
sys_check_timeouts proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	jal	ra,0000000023042E92
	c.mv	s2,a0
	lui	s3,0004200E
	lui	s4,0004200E

l23042348:
	addi	a4,s3,+00000350
	c.lw	a4,0(a1)
	c.beqz	a1,0000000023042374

l23042350:
	c.lw	a1,4(a5)
	sub	a3,s2,a5
	blt	a3,zero,0000000023042374

l2304235A:
	c.lw	a1,0(a3)
	c.lw	a1,8(s0)
	c.li	a0,0000000B
	c.sw	a4,0(a3)
	c.lw	a1,12(s1)
	sw	a5,s4,+0000034C
	jal	ra,000000002303DF44
	c.beqz	s0,0000000023042348

l2304236E:
	c.mv	a0,s1
	c.jalr	s0
	c.j	0000000023042348

l23042374:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; sys_timeouts_sleeptime: 23042384
;;   Called from:
;;     2303A53C (in tcpip_thread)
sys_timeouts_sleeptime proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	addi	s0,s0,+00000350
	c.lw	s0,0(a5)
	c.swsp	ra,00000084
	c.li	a0,FFFFFFFF
	c.beqz	a5,00000000230423AA

l23042398:
	jal	ra,0000000023042E92
	c.lw	s0,0(a5)
	c.lw	a5,4(a5)
	sub	a0,a5,a0
	bge	a0,zero,00000000230423AA

l230423A8:
	c.li	a0,00000000

l230423AA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; udp_init: 230423B2
;;   Called from:
;;     2303AEA6 (in lwip_init)
udp_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023036D28
	c.slli	a0,12
	c.lui	a5,FFFFC000
	c.lwsp	a2,00000020
	c.srli	a0,00000012
	c.add	a0,a5
	lui	a5,0004200E
	sh	a0,a5,+00000C7A
	c.addi	sp,00000010
	c.jr	ra

;; udp_input: 230423D0
;;   Called from:
;;     2303D482 (in ip4_input)
udp_input proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,0004201A
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	addi	a5,s0,+00000668
	lhu	a4,a5,+0000007E
	c.addi	a4,00000001
	sh	a4,a5,+0000007E
	lhu	a3,a0,+0000000A
	c.li	a4,00000007
	bltu	a4,a3,000000002304242C

l23042400:
	lhu	a4,a5,+00000086
	c.addi	a4,00000001
	sh	a4,a5,+00000086
	lhu	a4,a5,+00000082
	c.addi	a4,00000001
	sh	a4,a5,+00000082

l23042414:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.addi16sp	00000030
	jal	zero,000000002303E536

l2304242C:
	lui	s4,0004201A
	addi	s2,s4,+00000794
	lw	s3,a0,+00000004
	c.mv	s1,a0
	c.mv	s5,a1
	lw	a0,s2,+00000014
	lw	a1,s2,+00000000
	addi	s0,s0,+00000668
	addi	s4,s4,+00000794
	jal	ra,000000002303D750
	lbu	a5,s3,+00000001
	c.mv	s6,a0
	lbu	a0,s3,+00000000
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	lbu	a5,s3,+00000003
	c.mv	s7,a0
	lbu	a0,s3,+00000002
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002303A75A
	lui	a1,0004201A
	lw	a7,a1,+0000078C
	lw	t3,s2,+00000004
	lw	a3,s2,+00000014
	lw	t4,s2,+00000010
	c.mv	a5,a7
	c.li	s2,00000000
	c.li	a6,00000000
	c.li	t1,FFFFFFFF

l23042490:
	c.bnez	a5,00000000230424A2

l23042492:
	bne	s2,zero,0000000023042532

l23042496:
	lw	a5,s5,+00000004
	beq	a5,a3,0000000023042532

l2304249E:
	c.mv	a0,s1
	c.j	0000000023042414

l230424A2:
	lhu	a4,a5,+00000012
	bne	a4,a0,0000000023042506

l230424AA:
	lbu	a2,a5,+00000008
	c.beqz	a2,00000000230424BE

l230424B0:
	lbu	a4,t3,+00000044
	c.addi	a4,00000001
	andi	a4,a4,+000000FF
	bne	a2,a4,0000000023042506

l230424BE:
	c.lw	a5,0(a4)
	beq	s6,zero,0000000023042500

l230424C4:
	c.beqz	a4,00000000230424D8

l230424C6:
	beq	a3,t1,00000000230424D8

l230424CA:
	lw	t5,s5,+00000008
	xor	a2,a4,a3
	and	a2,a2,t5
	c.bnez	a2,0000000023042506

l230424D8:
	lbu	a2,a5,+00000010
	c.andi	a2,00000004
	c.bnez	a2,000000002304250E

l230424E0:
	beq	s2,zero,00000000230424FC

l230424E4:
	beq	s6,zero,000000002304250C

l230424E8:
	bne	a3,t1,000000002304250C

l230424EC:
	lw	a2,s5,+00000004
	lw	t5,s2,+00000000
	beq	t5,a2,000000002304250E

l230424F8:
	bne	a2,a4,000000002304250E

l230424FC:
	c.mv	s2,a5
	c.j	000000002304250E

l23042500:
	c.beqz	a4,00000000230424D8

l23042502:
	beq	a4,a3,00000000230424D8

l23042506:
	c.mv	a6,a5
	c.lw	a5,12(a5)
	c.j	0000000023042490

l2304250C:
	c.bnez	a4,00000000230424FC

l2304250E:
	lhu	a4,a5,+00000014
	bne	a4,s7,0000000023042506

l23042516:
	c.lw	a5,4(a4)
	c.beqz	a4,000000002304251E

l2304251A:
	bne	a4,t4,0000000023042506

l2304251E:
	beq	a6,zero,0000000023042574

l23042522:
	c.lw	a5,12(a4)
	sw	a5,a1,+0000078C
	sw	a4,a6,+0000000C
	sw	a7,a5,+0000000C

l23042530:
	c.mv	s2,a5

l23042532:
	lbu	a5,s3,+00000007
	lbu	a4,s3,+00000006
	c.slli	a5,08
	c.or	a5,a4
	c.beqz	a5,0000000023042580

l23042540:
	lhu	a2,s1,+00000008
	lui	a4,0004201A
	lui	a3,0004201A
	addi	a4,a4,+000007A8
	addi	a3,a3,+000007A4
	c.li	a1,00000011
	c.mv	a0,s1
	jal	ra,0000000023043018
	c.beqz	a0,0000000023042580

l2304255E:
	lhu	a5,s0,+00000084
	c.addi	a5,00000001
	sh	a5,s0,+00000084

l23042568:
	lhu	a5,s0,+00000082
	c.addi	a5,00000001
	sh	a5,s0,+00000082
	c.j	000000002304249E

l23042574:
	lhu	a4,s0,+00000092
	c.addi	a4,00000001
	sh	a4,s0,+00000092
	c.j	0000000023042530

l23042580:
	c.li	a1,00000008
	c.mv	a0,s1
	jal	ra,000000002303E4D4
	c.bnez	a0,0000000023042568

l2304258A:
	beq	s2,zero,00000000230425BE

l2304258E:
	lw	t1,s2,+00000020
	beq	t1,zero,000000002304249E

l23042596:
	c.lwsp	s0,00000114
	lw	a0,s2,+00000024
	c.lwsp	a2,00000130
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.mv	a4,s7
	c.mv	a2,s1
	c.lwsp	a2,000000E8
	c.lwsp	tp,00000134
	c.mv	a1,s2
	c.lwsp	zero,00000158
	lui	a3,0004201A
	addi	a3,a3,+000007A4
	c.addi16sp	00000030
	c.jr	t1

l230425BE:
	bne	s6,zero,00000000230425EA

l230425C2:
	lw	a5,s4,+00000014
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	beq	a5,a4,00000000230425EA

l230425D2:
	lhu	a1,s4,+0000000C
	c.mv	a0,s1
	c.addi	a1,00000008
	c.slli	a1,10
	c.srai	a1,00000010
	jal	ra,000000002303E524
	c.li	a1,00000003
	c.mv	a0,s1
	jal	ra,00000000230433EC

l230425EA:
	lhu	a5,s0,+0000008C
	c.addi	a5,00000001
	sh	a5,s0,+0000008C
	c.j	0000000023042568

;; udp_bind: 230425F6
;;   Called from:
;;     2303072C (in dns_server_init)
;;     2303AE08 (in dns_init)
;;     2303B3C0 (in dhcp_inc_pcb_refcount)
;;     2304270A (in udp_sendto_if_src_chksum)
;;     230429AE (in udp_connect)
;;     23043A06 (in dhcp_server_start)
udp_bind proc
	c.mv	a4,a0
	c.bnez	a1,0000000023042602

l230425FA:
	lui	a1,00023082
	addi	a1,a1,+000007AC

l23042602:
	c.li	a0,FFFFFFF0
	c.beqz	a4,0000000023042654

l23042606:
	lui	a3,0004201A
	lw	a5,a3,+0000078C
	c.mv	a0,a5

l23042610:
	c.bnez	a0,0000000023042656

l23042612:
	c.li	t3,00000000

l23042614:
	c.bnez	a2,00000000230426B6

l23042616:
	lui	a0,0004200E
	c.lui	t1,00010000
	lhu	a2,a0,-00000386
	c.lui	a6,00004000
	addi	a0,a0,-00000386
	c.addi	t1,FFFFFFFF

l23042628:
	beq	a2,t1,0000000023042662

l2304262C:
	c.addi	a2,00000001
	c.slli	a2,10
	c.srli	a2,00000010

l23042632:
	c.mv	a7,a5

l23042634:
	bne	a7,zero,0000000023042666

l23042638:
	sh	a2,a0,+00000000

l2304263C:
	c.lw	a1,0(a5)
	sh	a2,a4,+00000012
	c.sw	a4,0(a5)
	bne	t3,zero,0000000023042652

l23042648:
	lw	a5,a3,+0000078C
	sw	a4,a3,+0000078C
	c.sw	a4,12(a5)

l23042652:
	c.li	a0,00000000

l23042654:
	c.jr	ra

l23042656:
	beq	a0,a4,000000002304265E

l2304265A:
	c.lw	a0,12(a0)
	c.j	0000000023042610

l2304265E:
	c.li	t3,00000001
	c.j	0000000023042614

l23042662:
	c.lui	a2,0000C000
	c.j	0000000023042632

l23042666:
	lhu	t4,a7,+00000012
	bne	t4,a2,0000000023042682

l2304266E:
	c.addi	a6,FFFFFFFF
	c.slli	a6,10
	srli	a6,a6,00000010
	bne	a6,zero,0000000023042628

l2304267A:
	sh	a2,a0,+00000000

l2304267E:
	c.li	a0,FFFFFFF8
	c.jr	ra

l23042682:
	lw	a7,a7,+0000000C
	c.j	0000000023042634

l23042688:
	beq	a5,a4,00000000230426B4

l2304268C:
	lbu	a0,a4,+00000009
	c.andi	a0,00000004
	c.beqz	a0,000000002304269C

l23042694:
	lbu	a0,a5,+00000009
	c.andi	a0,00000004
	c.bnez	a0,00000000230426B4

l2304269C:
	lhu	a0,a5,+00000012
	bne	a0,a2,00000000230426B4

l230426A4:
	lw	a6,a1,+00000000
	c.lw	a5,0(a0)
	beq	a0,a6,000000002304267E

l230426AE:
	beq	a6,zero,000000002304267E

l230426B2:
	c.beqz	a0,000000002304267E

l230426B4:
	c.lw	a5,12(a5)

l230426B6:
	c.bnez	a5,0000000023042688

l230426B8:
	c.j	000000002304263C

;; udp_sendto_if_src_chksum: 230426BA
;;   Called from:
;;     2304287C (in udp_sendto_if_chksum)
;;     23042960 (in udp_sendto_if_src)
udp_sendto_if_src_chksum proc
	c.addi16sp	FFFFFFD0
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.li	s7,FFFFFFF0
	c.beqz	a0,0000000023042712

l230426D6:
	c.beqz	a1,0000000023042712

l230426D8:
	c.beqz	a2,0000000023042712

l230426DA:
	beq	a7,zero,0000000023042712

l230426DE:
	c.beqz	a4,0000000023042712

l230426E0:
	c.mv	s8,a5
	lhu	a5,a0,+00000012
	c.mv	s1,a0
	c.mv	s4,a7
	c.mv	s0,a6
	c.mv	s5,a4
	c.mv	s9,a3
	c.mv	s3,a2
	c.mv	s2,a1
	c.beqz	a5,0000000023042706

l230426F6:
	lhu	a4,s2,+00000008
	c.lui	a5,00010000
	c.addi	a5,FFFFFFF7
	bgeu	a5,a4,000000002304272E

l23042702:
	c.li	s7,FFFFFFFF
	c.j	0000000023042712

l23042706:
	c.li	a2,00000000
	c.mv	a1,a0
	jal	ra,00000000230425F6
	c.mv	s7,a0
	c.beqz	a0,00000000230426F6

l23042712:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s7
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

l2304272E:
	c.li	a1,00000008
	c.mv	a0,s2
	jal	ra,000000002303E4CE
	beq	a0,zero,0000000023042844

l2304273A:
	addi	a2,zero,+00000280
	c.li	a1,00000008
	addi	a0,zero,+000000A2
	jal	ra,000000002303E5B8
	c.mv	s6,a0
	c.beqz	a0,0000000023042702

l2304274C:
	lhu	a5,s2,+00000008
	c.beqz	a5,0000000023042758

l23042752:
	c.mv	a1,s2
	jal	ra,000000002303E7E8

l23042758:
	lhu	a0,s1,+00000012
	lw	s7,s6,+00000004
	jal	ra,000000002303A75A
	sb	a0,s7,+00000000
	c.srli	a0,00000008
	sb	a0,s7,+00000001
	c.mv	a0,s9
	jal	ra,000000002303A75A
	sb	a0,s7,+00000002
	c.srli	a0,00000008
	sb	a0,s7,+00000003
	sb	zero,s7,+00000006
	sb	zero,s7,+00000007
	lbu	a5,s1,+00000010
	c.andi	a5,00000008
	c.beqz	a5,00000000230427AA

l2304278E:
	lw	a5,s3,+00000000
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	bne	a5,a4,00000000230427AA

l2304279E:
	lbu	a5,s6,+0000000D
	ori	a5,a5,+00000004
	sb	a5,s6,+0000000D

l230427AA:
	lhu	a0,s6,+00000008
	jal	ra,000000002303A75A
	sb	a0,s7,+00000004
	c.srli	a0,00000008
	sb	a0,s7,+00000005
	lbu	a5,s1,+00000010
	c.andi	a5,00000001
	c.bnez	a5,00000000230427FE

l230427C4:
	lhu	a2,s6,+00000008
	beq	s8,zero,0000000023042848

l230427CC:
	xori	s0,s0,-00000001
	c.mv	a5,s3
	c.mv	a4,s4
	c.li	a3,00000008
	c.li	a1,00000011
	c.mv	a0,s6
	c.slli	s0,10
	jal	ra,0000000023043116
	c.srli	s0,00000010
	c.add	a0,s0
	srli	a5,a0,00000010
	c.add	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010

l230427EE:
	c.bnez	a0,00000000230427F4

l230427F0:
	c.lui	a0,00010000
	c.addi	a0,FFFFFFFF

l230427F4:
	sb	a0,s7,+00000006
	c.srli	a0,00000008
	sb	a0,s7,+00000007

l230427FE:
	lw	a5,s3,+00000000
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	bne	a5,a4,0000000023042856

l2304280E:
	lbu	a3,s1,+0000001D

l23042812:
	lbu	a4,s1,+0000000A
	c.mv	a6,s5
	c.li	a5,00000011
	c.mv	a2,s3
	c.mv	a1,s4
	c.mv	a0,s6
	jal	ra,000000002303D73E
	c.mv	s7,a0
	beq	s6,s2,0000000023042830

l2304282A:
	c.mv	a0,s6
	jal	ra,000000002303E536

l23042830:
	lui	a5,0004201A
	addi	a5,a5,+00000668
	lhu	a4,a5,+0000007C
	c.addi	a4,00000001
	sh	a4,a5,+0000007C
	c.j	0000000023042712

l23042844:
	c.mv	s6,s2
	c.j	0000000023042758

l23042848:
	c.mv	a4,s3
	c.mv	a3,s4
	c.li	a1,00000011
	c.mv	a0,s6
	jal	ra,0000000023043018
	c.j	00000000230427EE

l23042856:
	lbu	a3,s1,+0000000B
	c.j	0000000023042812

;; udp_sendto_if_chksum: 2304285C
;;   Called from:
;;     23042928 (in udp_sendto_chksum)
;;     23042956 (in udp_sendto_if)
udp_sendto_if_chksum proc
	c.beqz	a0,000000002304288C

l2304285E:
	c.beqz	a1,000000002304288C

l23042860:
	c.beqz	a2,000000002304288C

l23042862:
	c.beqz	a4,000000002304288C

l23042864:
	lw	a7,a0,+00000000
	beq	a7,zero,0000000023042878

l2304286C:
	andi	t1,a7,+000000F0
	addi	t3,zero,+000000E0
	bne	t1,t3,0000000023042880

l23042878:
	addi	a7,a4,+00000004

l2304287C:
	jal	zero,00000000230426BA

l23042880:
	lw	t1,a4,+00000004
	bne	a7,t1,0000000023042890

l23042888:
	c.mv	a7,a0
	c.j	000000002304287C

l2304288C:
	c.li	a0,FFFFFFF0
	c.jr	ra

l23042890:
	c.li	a0,FFFFFFFC
	c.jr	ra

;; udp_sendto_chksum: 23042894
;;   Called from:
;;     2304294E (in udp_sendto)
udp_sendto_chksum proc
	c.beqz	a0,0000000023042946

l23042896:
	c.beqz	a1,0000000023042946

l23042898:
	c.beqz	a2,0000000023042946

l2304289A:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.mv	s0,a0
	lbu	a0,a0,+00000008
	c.mv	s5,a5
	c.mv	s4,a4
	c.mv	s3,a3
	c.mv	s1,a2
	c.mv	s2,a1
	c.beqz	a0,00000000230428E8

l230428BC:
	jal	ra,000000002303E386

l230428C0:
	c.bnez	a0,000000002304290A

l230428C2:
	lui	a5,0004201A
	addi	a5,a5,+00000668
	lhu	a4,a5,+0000008A
	c.li	a0,FFFFFFFC
	c.addi	a4,00000001
	sh	a4,a5,+0000008A
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l230428E8:
	c.lw	a2,0(a5)
	addi	a4,zero,+000000E0
	andi	a5,a5,+000000F0
	beq	a5,a4,00000000230428FE

l230428F6:
	c.mv	a0,s1
	jal	ra,000000002303D12A
	c.j	00000000230428C0

l230428FE:
	lbu	a0,s0,+0000001C
	c.beqz	a0,000000002304292C

l23042904:
	jal	ra,000000002303E386

l23042908:
	c.beqz	a0,00000000230428F6

l2304290A:
	c.mv	a4,a0
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a6,s5
	c.mv	a5,s4
	c.lwsp	tp,000000A8
	c.lwsp	s0,00000088
	c.mv	a3,s3
	c.mv	a2,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.mv	a1,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,000000002304285C

l2304292C:
	c.lw	s0,24(a5)
	c.beqz	a5,00000000230428F6

l23042930:
	lui	a4,00023082
	lw	a4,a4,+000007B0
	beq	a5,a4,00000000230428F6

l2304293C:
	addi	a0,s0,+00000018
	jal	ra,000000002303D12A
	c.j	0000000023042908

l23042946:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; udp_sendto: 2304294A
;;   Called from:
;;     230306E4 (in get_dns_request)
;;     2303A952 (in dns_send)
udp_sendto proc
	c.li	a5,00000000
	c.li	a4,00000000
	jal	zero,0000000023042894

;; udp_sendto_if: 23042952
;;   Called from:
;;     2303B59A (in dhcp_reboot)
;;     2303BFBE (in dhcp_renew)
;;     2303C104 (in dhcp_release_and_stop)
;;     2303C354 (in dhcp_coarse_tmr)
;;     230437AA (in dhcp_server_recv)
udp_sendto_if proc
	c.li	a6,00000000
	c.li	a5,00000000
	jal	zero,000000002304285C

;; udp_sendto_if_src: 2304295A
;;   Called from:
;;     2303B1A0 (in dhcp_discover)
;;     2303B76A (in dhcp_select)
;;     2303BEA8 (in dhcp_arp_reply)
udp_sendto_if_src proc
	c.mv	a7,a5
	c.li	a6,00000000
	c.li	a5,00000000
	jal	zero,00000000230426BA

;; udp_connect: 23042964
;;   Called from:
;;     2303B3CE (in dhcp_inc_pcb_refcount)
udp_connect proc
	c.li	a5,FFFFFFF0
	c.beqz	a0,00000000230429CC

l23042968:
	c.beqz	a1,00000000230429CC

l2304296A:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	lhu	a5,a0,+00000012
	c.mv	s0,a0
	c.mv	s2,a2
	c.mv	s1,a1
	c.beqz	a5,00000000230429AA

l23042980:
	c.lw	s1,0(a5)
	sh	s2,s0,+00000014
	c.sw	s0,4(a5)
	lbu	a5,s0,+00000010
	ori	a5,a5,+00000004
	sb	a5,s0,+00000010
	lui	a5,0004201A
	lw	a3,a5,+0000078C
	c.mv	a4,a3

l2304299E:
	c.bnez	a4,00000000230429C4

l230429A0:
	c.sw	s0,12(a3)
	sw	s0,a5,+0000078C

l230429A6:
	c.li	a5,00000000
	c.j	00000000230429B6

l230429AA:
	c.li	a2,00000000
	c.mv	a1,a0
	jal	ra,00000000230425F6
	c.mv	a5,a0
	c.beqz	a0,0000000023042980

l230429B6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l230429C4:
	beq	a4,s0,00000000230429A6

l230429C8:
	c.lw	a4,12(a4)
	c.j	000000002304299E

l230429CC:
	c.mv	a0,a5
	c.jr	ra

;; udp_recv: 230429D0
;;   Called from:
;;     2303075A (in dns_server_init)
;;     2303AE1E (in dns_init)
;;     2303B3DE (in dhcp_inc_pcb_refcount)
;;     23043A16 (in dhcp_server_start)
udp_recv proc
	c.beqz	a0,00000000230429D6

l230429D2:
	c.sw	a0,32(a1)
	c.sw	a0,36(a2)

l230429D6:
	c.jr	ra

;; udp_remove: 230429D8
;;   Called from:
;;     23030768 (in dns_server_init)
;;     2303B7F8 (in dhcp_dec_pcb_refcount)
;;     23043A50 (in dhcp_server_stop)
udp_remove proc
	c.mv	a1,a0
	c.beqz	a0,0000000023042A06

l230429DC:
	lui	a4,0004201A
	lw	a5,a4,+0000078C
	bne	a5,a0,00000000230429F6

l230429E8:
	c.lw	a0,12(a5)
	sw	a5,a4,+0000078C

l230429EE:
	c.li	a0,00000001
	jal	zero,000000002303DF44

l230429F4:
	c.mv	a5,a4

l230429F6:
	c.beqz	a5,00000000230429EE

l230429F8:
	c.lw	a5,12(a4)
	c.beqz	a4,00000000230429EE

l230429FC:
	bne	a4,a1,00000000230429F4

l23042A00:
	c.lw	a1,12(a4)
	c.sw	a5,12(a4)
	c.j	00000000230429EE

l23042A06:
	c.jr	ra

;; udp_new: 23042A08
;;   Called from:
;;     23030718 (in dns_server_init)
;;     2303B39A (in dhcp_inc_pcb_refcount)
;;     23042A36 (in udp_new_ip_type)
;;     230439E4 (in dhcp_server_start)
udp_new proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002303DF26
	c.mv	s0,a0
	c.beqz	a0,0000000023042A2C

l23042A18:
	addi	a2,zero,+00000028
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	c.li	a5,FFFFFFFF
	sb	a5,s0,+0000000B
	sb	a5,s0,+0000001D

l23042A2C:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; udp_new_ip_type: 23042A36
;;   Called from:
;;     2303ADF8 (in dns_init)
udp_new_ip_type proc
	jal	zero,0000000023042A08

;; udp_netif_ip_addr_changed: 23042A3A
;;   Called from:
;;     2303E002 (in netif_do_set_ipaddr)
;;     2303E2B6 (in netif_remove)
udp_netif_ip_addr_changed proc
	c.beqz	a0,0000000023042A50

l23042A3C:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023042A50

l23042A40:
	c.beqz	a1,0000000023042A50

l23042A42:
	c.lw	a1,0(a5)
	c.beqz	a5,0000000023042A50

l23042A46:
	lui	a5,0004201A
	lw	a5,a5,+0000078C

l23042A4E:
	c.bnez	a5,0000000023042A52

l23042A50:
	c.jr	ra

l23042A52:
	c.lw	a5,0(a3)
	c.lw	a0,0(a4)
	bne	a3,a4,0000000023042A5E

l23042A5A:
	c.lw	a1,0(a4)
	c.sw	a5,0(a4)

l23042A5E:
	c.lw	a5,12(a5)
	c.j	0000000023042A4E

;; ethernet_input: 23042A62
ethernet_input proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lhu	a4,a0,+0000000A
	c.li	a5,0000000E
	c.mv	s0,a0
	bltu	a5,a4,0000000023042A8C

l23042A78:
	lui	a5,0004201A
	addi	a5,a5,+00000668
	lhu	a4,a5,+00000028
	c.addi	a4,00000001
	sh	a4,a5,+00000028
	c.j	0000000023042B0C

l23042A8C:
	lbu	a5,a0,+0000000F
	c.mv	s2,a1
	c.bnez	a5,0000000023042A9E

l23042A94:
	lbu	a5,a1,+00000044
	c.addi	a5,00000001
	sb	a5,a0,+0000000F

l23042A9E:
	c.lw	s0,4(a0)
	lbu	s1,a0,+0000000D
	lbu	a5,a0,+0000000C
	c.slli	s1,08
	c.or	s1,a5
	lbu	a5,a0,+00000000
	andi	a4,a5,+00000001
	c.beqz	a4,0000000023042ADA

l23042AB6:
	c.li	a4,00000001
	bne	a5,a4,0000000023042B1E

l23042ABC:
	lbu	a5,a0,+00000001
	c.bnez	a5,0000000023042ADA

l23042AC2:
	lbu	a4,a0,+00000002
	addi	a5,zero,+0000005E
	bne	a4,a5,0000000023042ADA

l23042ACE:
	lbu	a5,s0,+0000000D
	ori	a5,a5,+00000010

l23042AD6:
	sb	a5,s0,+0000000D

l23042ADA:
	c.li	a5,00000008
	beq	s1,a5,0000000023042B38

l23042AE0:
	addi	a5,zero,+00000608
	bne	s1,a5,0000000023042A78

l23042AE8:
	lbu	a5,s2,+00000041
	c.andi	a5,00000008
	c.beqz	a5,0000000023042B16

l23042AF0:
	c.li	a1,0000000E
	c.mv	a0,s0
	jal	ra,000000002303E4D4
	c.beqz	a0,0000000023042B60

l23042AFA:
	lui	a5,0004201A
	addi	a5,a5,+00000668
	lhu	a4,a5,+00000022
	c.addi	a4,00000001
	sh	a4,a5,+00000022

l23042B0C:
	lhu	a4,a5,+0000001E
	c.addi	a4,00000001
	sh	a4,a5,+0000001E

l23042B16:
	c.mv	a0,s0
	jal	ra,000000002303E536
	c.j	0000000023042B52

l23042B1E:
	lui	a1,00023082
	c.li	a2,00000006
	addi	a1,a1,+000007BC
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023042ADA

l23042B2E:
	lbu	a5,s0,+0000000D
	ori	a5,a5,+00000008
	c.j	0000000023042AD6

l23042B38:
	lbu	a5,s2,+00000041
	c.andi	a5,00000008
	c.beqz	a5,0000000023042B16

l23042B40:
	c.li	a1,0000000E
	c.mv	a0,s0
	jal	ra,000000002303E4D4
	c.bnez	a0,0000000023042B16

l23042B4A:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002303D1B6

l23042B52:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23042B60:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002303C728
	c.j	0000000023042B52

;; ethernet_output: 23042B6A
;;   Called from:
;;     2303C6CE (in etharp_raw)
;;     2303C85E (in etharp_input)
;;     2303C9E4 (in etharp_output_to_arp_index)
;;     2303CAE2 (in etharp_query)
;;     2303CBBA (in etharp_output)
ethernet_output proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.mv	s3,a0
	c.mv	a0,a4
	c.swsp	a3,00000084
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.mv	s2,a1
	c.mv	s4,a2
	c.swsp	s0,00000014
	jal	ra,000000002303A75A
	c.mv	s1,a0
	c.li	a1,0000000E
	c.mv	a0,s2
	jal	ra,000000002303E4CE
	c.lwsp	a2,000000A4
	c.bnez	a0,0000000023042BD0

l23042B94:
	lw	s0,s2,+00000004
	c.mv	a1,a3
	c.li	a2,00000006
	sb	s1,s0,+0000000C
	c.srli	s1,00000008
	sb	s1,s0,+0000000D
	c.mv	a0,s0
	jal	ra,000000002306CF80
	c.mv	a1,s4
	addi	a0,s0,+00000006
	c.li	a2,00000006
	jal	ra,000000002306CF80
	c.lwsp	s0,00000114
	lw	t1,s3,+00000018
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	s8,00000088
	c.mv	a1,s2
	c.mv	a0,s3
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	t1

l23042BD0:
	lui	a5,0004201A
	addi	a5,a5,+00000668
	lhu	a4,a5,+0000000A
	c.li	a0,FFFFFFFE
	c.addi	a4,00000001
	sh	a4,a5,+0000000A
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; sys_mbox_new: 23042BF4
;;   Called from:
;;     2303A734 (in tcpip_init)
sys_mbox_new proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a2,00000000
	c.mv	s0,a0
	c.li	a1,00000004
	addi	a0,zero,+00000032
	c.swsp	ra,00000084
	jal	ra,0000000023032470
	lui	a4,0004201A
	c.sw	s0,0(a0)
	addi	a4,a4,+00000668
	lhu	a5,a4,+00000100
	lhu	a3,a4,+00000102
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a4,+00000100
	bgeu	a3,a5,0000000023042C2C

l23042C28:
	sh	a5,a4,+00000102

l23042C2C:
	c.lw	s0,0(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	sltiu	a0,a0,+00000001
	sub	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; sys_mbox_post: 23042C3E
;;   Called from:
;;     2303A6E4 (in tcpip_api_call)
sys_mbox_post proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.swsp	a1,00000084
	c.li	s0,00000001

l23042C4C:
	c.lw	s1,0(a0)
	c.li	a3,00000000
	c.li	a2,FFFFFFFF
	c.addi4spn	a1,0000000C
	jal	ra,0000000023032528
	bne	a0,s0,0000000023042C4C

l23042C5C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; sys_mbox_trypost: 23042C66
;;   Called from:
;;     2303A61A (in tcpip_inpkt)
;;     2303A68C (in tcpip_try_callback)
sys_mbox_trypost proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.lw	a0,0(a0)
	c.swsp	a1,00000084
	c.li	a3,00000000
	c.li	a2,00000000
	c.addi4spn	a1,0000000C
	jal	ra,0000000023032528
	c.li	a5,00000001
	beq	a0,a5,0000000023042C98

l23042C7E:
	lui	a5,0004201A
	addi	a5,a5,+00000668
	lhu	a4,a5,+00000104
	c.li	a0,FFFFFFFF
	c.addi	a4,00000001
	sh	a4,a5,+00000104

l23042C92:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23042C98:
	c.li	a0,00000000
	c.j	0000000023042C92

;; sys_arch_mbox_fetch: 23042C9C
;;   Called from:
;;     2303A54E (in tcpip_thread)
;;     2303A574 (in tcpip_thread)
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
	jal	ra,0000000023033AF0
	c.mv	s0,a0
	c.lwsp	a2,00000084
	c.bnez	s1,0000000023042CBA

l23042CB8:
	c.addi4spn	s1,0000001C

l23042CBA:
	c.li	s3,00000001
	c.beqz	a2,0000000023042CEA

l23042CBE:
	lw	a0,s2,+00000000
	c.mv	a1,s1
	jal	ra,0000000023032820
	c.li	a5,00000001
	bne	a0,a5,0000000023042CD6

l23042CCE:
	jal	ra,0000000023033AF0
	c.sub	a0,s0
	c.j	0000000023042CDC

l23042CD6:
	sw	zero,s1,+00000000
	c.li	a0,FFFFFFFF

l23042CDC:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l23042CEA:
	lw	a0,s2,+00000000
	c.li	a2,FFFFFFFF
	c.mv	a1,s1
	jal	ra,0000000023032820
	bne	a0,s3,0000000023042CEA

l23042CFA:
	c.j	0000000023042CCE

;; sys_mbox_valid: 23042CFC
;;   Called from:
;;     2303A5DA (in tcpip_inpkt)
;;     2303A66A (in tcpip_try_callback)
;;     2303A6CE (in tcpip_api_call)
sys_mbox_valid proc
	c.lw	a0,0(a0)
	sltu	a0,zero,a0
	c.jr	ra

;; sys_sem_new: 23042D04
;;   Called from:
;;     2303A6C0 (in tcpip_api_call)
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
	jal	ra,0000000023032470
	c.sw	s0,0(a0)
	c.beqz	a0,0000000023042D28

l23042D1E:
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528

l23042D28:
	c.lw	s0,0(a0)
	lui	s0,0004201A
	addi	s0,s0,+00000668
	c.bnez	a0,0000000023042D4A

l23042D34:
	lhu	a5,s0,+000000F8
	c.li	a0,FFFFFFFF
	c.addi	a5,00000001
	sh	a5,s0,+000000F8

l23042D40:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23042D4A:
	c.bnez	s1,0000000023042D52

l23042D4C:
	c.li	a1,00000001
	jal	ra,000000002303296C

l23042D52:
	lhu	a5,s0,+000000F4
	lhu	a4,s0,+000000F6
	c.li	a0,00000000
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+000000F4
	bgeu	a4,a5,0000000023042D40

l23042D6A:
	sh	a5,s0,+000000F6
	c.j	0000000023042D40

;; sys_arch_sem_wait: 23042D70
;;   Called from:
;;     2303A6EC (in tcpip_api_call)
;;     23042E2C (in sys_mutex_lock)
sys_arch_sem_wait proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.mv	s1,a0
	jal	ra,0000000023033AF0
	c.lwsp	a2,00000064
	c.mv	s0,a0
	c.li	s2,00000001
	c.beqz	a1,0000000023042DAE

l23042D8A:
	c.lw	s1,0(a0)
	jal	ra,000000002303296C
	c.li	a4,00000001
	c.li	a5,FFFFFFFF
	bne	a0,a4,0000000023042DA0

l23042D98:
	jal	ra,0000000023033AF0
	sub	a5,a0,s0

l23042DA0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

l23042DAE:
	c.lw	s1,0(a0)
	c.li	a1,FFFFFFFF
	jal	ra,000000002303296C
	bne	a0,s2,0000000023042DAE

l23042DBA:
	c.j	0000000023042D98

;; sys_sem_free: 23042DBC
;;   Called from:
;;     2303A6F2 (in tcpip_api_call)
sys_sem_free proc
	lui	a5,0004201A
	addi	a5,a5,+00000668
	lhu	a4,a5,+000000F4
	c.addi	a4,FFFFFFFF
	sh	a4,a5,+000000F4
	c.lw	a0,0(a0)
	jal	zero,0000000023032B18

;; sys_init: 23042DD4
;;   Called from:
;;     2303AE96 (in lwip_init)
sys_init proc
	lui	a5,0004200E
	sh	zero,a5,+00000358
	c.jr	ra

;; sys_mutex_new: 23042DDE
;;   Called from:
;;     2303D9F4 (in mem_init)
sys_mutex_new proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,00000000230326B8
	lui	a5,0004201A
	c.sw	s0,0(a0)
	addi	a5,a5,+00000668
	c.bnez	a0,0000000023042E0C

l23042DF8:
	lhu	a4,a5,+000000FE
	c.li	a0,FFFFFFFF
	c.addi	a4,00000001
	sh	a4,a5,+000000FE

l23042E04:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23042E0C:
	lhu	a4,a5,+000000FA
	lhu	a3,a5,+000000FC
	c.li	a0,00000000
	c.addi	a4,00000001
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+000000FA
	bgeu	a3,a4,0000000023042E04

l23042E24:
	sh	a4,a5,+000000FC
	c.j	0000000023042E04

;; sys_mutex_lock: 23042E2A
;;   Called from:
;;     2303DA6E (in mem_free)
;;     2303DC14 (in mem_trim)
;;     2303DD2C (in mem_malloc)
sys_mutex_lock proc
	c.li	a1,00000000
	jal	zero,0000000023042D70

;; sys_mutex_unlock: 23042E30
;;   Called from:
;;     2303DA7C (in mem_free)
;;     2303DB5E (in mem_free)
;;     2303DC88 (in mem_trim)
;;     2303DD72 (in mem_malloc)
;;     2303DE12 (in mem_malloc)
;;     23042E3C (in sys_sem_signal)
sys_mutex_unlock proc
	c.lw	a0,0(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	zero,0000000023032528

;; sys_sem_signal: 23042E3C
sys_sem_signal proc
	jal	zero,0000000023042E30

;; sys_thread_new: 23042E40
;;   Called from:
;;     2303A756 (in tcpip_init)
sys_thread_new proc
	lui	a5,0004200E
	lhu	a6,a5,+00000358
	c.li	a5,00000005
	bgeu	a5,a6,0000000023042E5A

l23042E4E:
	c.li	a0,00000000
	c.jr	ra

l23042E52:
	c.li	a0,00000000

l23042E54:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23042E5A:
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
	jal	ra,00000000230337F0
	c.li	a5,00000001
	bne	a0,a5,0000000023042E52

l23042E7A:
	c.lwsp	a2,00000044
	c.j	0000000023042E54

;; sys_arch_protect: 23042E7E
;;   Called from:
;;     2303DA1C (in mem_free)
;;     2303DBB4 (in mem_trim)
;;     2303DE54 (in do_memp_malloc_pool)
;;     2303DF64 (in memp_free)
;;     2303E3CA (in pbuf_free_ooseq_callback)
;;     2303E550 (in pbuf_free)
;;     2303E684 (in pbuf_alloc)
;;     2303E6AE (in pbuf_alloc)
;;     2303E7AC (in pbuf_ref)
sys_arch_protect proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230347A4
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; sys_arch_unprotect: 23042E8E
;;   Called from:
;;     2303DA3A (in mem_free)
;;     2303DBCA (in mem_trim)
;;     2303DE84 (in do_memp_malloc_pool)
;;     2303DF86 (in memp_free)
;;     2303E3D6 (in pbuf_free_ooseq_callback)
;;     2303E564 (in pbuf_free)
;;     2303E696 (in pbuf_alloc)
;;     2303E6B6 (in pbuf_alloc)
;;     2303E7C0 (in pbuf_ref)
sys_arch_unprotect proc
	jal	zero,00000000230347B8

;; sys_now: 23042E92
;;   Called from:
;;     23042228 (in lwip_cyclic_timer)
;;     23042262 (in sys_timeout)
;;     2304233A (in sys_check_timeouts)
;;     23042398 (in sys_timeouts_sleeptime)
sys_now proc
	jal	zero,0000000023033AF0

;; lwip_standard_chksum: 23042E96
;;   Called from:
;;     23042FEA (in inet_chksum_pseudo)
;;     230430C8 (in inet_chksum_pseudo_partial)
;;     2304311E (in inet_chksum)
;;     2304317A (in inet_chksum_pbuf)
lwip_standard_chksum proc
	c.addi	sp,FFFFFFF0
	sh	zero,sp,+0000000E
	andi	a3,a0,+00000001
	c.beqz	a3,0000000023042EB2

l23042EA2:
	bge	zero,a1,0000000023042EB2

l23042EA6:
	lbu	a5,a0,+00000000
	c.addi	a1,FFFFFFFF
	c.addi	a0,00000001
	sb	a5,sp,+0000000F

l23042EB2:
	andi	a5,a0,+00000003
	c.beqz	a5,0000000023042EC8

l23042EB8:
	c.li	a4,00000001
	c.li	a5,00000000
	bge	a4,a1,0000000023042EC8

l23042EC0:
	lhu	a5,a0,+00000000
	c.addi	a1,FFFFFFFE
	c.addi	a0,00000002

l23042EC8:
	c.li	a2,00000007

l23042ECA:
	blt	a2,a1,0000000023042F1C

l23042ECE:
	srli	a4,a5,00000010
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a5,a4
	c.li	a4,00000001

l23042EDA:
	blt	a4,a1,0000000023042F38

l23042EDE:
	bne	a1,a4,0000000023042EEA

l23042EE2:
	lbu	a4,a0,+00000000
	sb	a4,sp,+0000000E

l23042EEA:
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
	c.beqz	a3,0000000023042F14

l23042F06:
	slli	a5,a0,00000008
	c.srli	a0,00000008
	c.and	a4,a5
	andi	a0,a0,+000000FF
	c.or	a0,a4

l23042F14:
	c.slli	a0,10
	c.srli	a0,00000010
	c.addi	sp,00000010
	c.jr	ra

l23042F1C:
	c.lw	a0,0(a4)
	c.add	a4,a5
	bgeu	a4,a5,0000000023042F26

l23042F24:
	c.addi	a4,00000001

l23042F26:
	c.addi	a0,00000008
	lw	a5,a0,-00000004
	c.add	a5,a4
	bgeu	a5,a4,0000000023042F34

l23042F32:
	c.addi	a5,00000001

l23042F34:
	c.addi	a1,FFFFFFF8
	c.j	0000000023042ECA

l23042F38:
	c.addi	a0,00000002
	lhu	a2,a0,-00000002
	c.addi	a1,FFFFFFFE
	c.add	a5,a2
	c.j	0000000023042EDA

;; inet_chksum_pseudo: 23042F44
;;   Called from:
;;     23043018 (in ip_chksum_pseudo)
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

l23042F88:
	bne	s3,zero,0000000023042FE2

l23042F8C:
	beq	s5,zero,0000000023042FA2

l23042F90:
	c.lui	a4,00010000
	slli	a5,s0,00000008
	c.addi	a4,FFFFFFFF
	c.srli	s0,00000008
	c.and	a5,a4
	andi	s0,s0,+000000FF
	c.or	s0,a5

l23042FA2:
	c.mv	a0,s4
	jal	ra,000000002303A75A
	c.mv	s1,a0
	c.mv	a0,s2
	jal	ra,000000002303A75A
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

l23042FE2:
	lhu	a1,s3,+0000000A
	lw	a0,s3,+00000004
	jal	ra,0000000023042E96
	c.add	s0,a0
	srli	a5,s0,00000010
	c.and	s0,s1
	c.add	s0,a5
	lhu	a5,s3,+0000000A
	c.andi	a5,00000001
	c.beqz	a5,0000000023043012

l23043000:
	slli	a5,s0,00000008
	c.srli	s0,00000008
	c.and	a5,s1
	andi	s0,s0,+000000FF
	xori	s5,s5,+00000001
	c.or	s0,a5

l23043012:
	lw	s3,s3,+00000000
	c.j	0000000023042F88

;; ip_chksum_pseudo: 23043018
;;   Called from:
;;     23040614 (in tcp_input)
;;     23041460 (in tcp_output_control_segment)
;;     23042558 (in udp_input)
;;     23042850 (in udp_sendto_if_src_chksum)
ip_chksum_pseudo proc
	jal	zero,0000000023042F44

;; inet_chksum_pseudo_partial: 2304301C
;;   Called from:
;;     23043116 (in ip_chksum_pseudo_partial)
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

l23043062:
	bne	s4,zero,00000000230430AC

l23043066:
	bne	s6,zero,0000000023043102

l2304306A:
	c.mv	a0,s5
	jal	ra,000000002303A75A
	c.mv	s1,a0
	c.mv	a0,s2
	jal	ra,000000002303A75A
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

l230430AC:
	c.beqz	a3,0000000023043066

l230430AE:
	lhu	a5,s4,+0000000A
	c.mv	s3,a5
	bgeu	a3,a5,00000000230430BA

l230430B8:
	c.mv	s3,a3

l230430BA:
	c.slli	s3,10
	lw	a0,s4,+00000004
	srli	s3,s3,00000010
	c.mv	a1,s3
	c.swsp	a3,00000084
	jal	ra,0000000023042E96
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
	c.beqz	a5,00000000230430FC

l230430EA:
	slli	a5,s0,00000008
	c.srli	s0,00000008
	c.and	a5,s1
	andi	s0,s0,+000000FF
	xori	s6,s6,+00000001
	c.or	s0,a5

l230430FC:
	lw	s4,s4,+00000000
	c.j	0000000023043062

l23043102:
	c.lui	a4,00010000
	slli	a5,s0,00000008
	c.addi	a4,FFFFFFFF
	c.srli	s0,00000008
	c.and	a5,a4
	andi	s0,s0,+000000FF
	c.or	s0,a5
	c.j	000000002304306A

;; ip_chksum_pseudo_partial: 23043116
;;   Called from:
;;     23041D64 (in tcp_output)
;;     230427DC (in udp_sendto_if_src_chksum)
ip_chksum_pseudo_partial proc
	jal	zero,000000002304301C

;; inet_chksum: 2304311A
;;   Called from:
;;     2303CD12 (in igmp_send)
;;     2303CF60 (in igmp_input)
;;     2303D28E (in ip4_input)
;;     23041574 (in tcp_split_unsent_seg)
;;     230416BA (in tcp_split_unsent_seg)
;;     23043368 (in icmp_input)
;;     23043476 (in icmp_dest_unreach)
inet_chksum proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023042E96
	c.lwsp	a2,00000020
	xori	a0,a0,-00000001
	c.slli	a0,10
	c.srli	a0,00000010
	c.addi	sp,00000010
	c.jr	ra

;; inet_chksum_pbuf: 23043130
;;   Called from:
;;     2304322E (in icmp_input)
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

l23043146:
	c.bnez	s1,0000000023043174

l23043148:
	beq	s3,zero,000000002304315E

l2304314C:
	c.lui	a4,00010000
	slli	a5,s0,00000008
	c.addi	a4,FFFFFFFF
	c.srli	s0,00000008
	c.and	a5,a4
	andi	s0,s0,+000000FF
	c.or	s0,a5

l2304315E:
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

l23043174:
	lhu	a1,s1,+0000000A
	c.lw	s1,4(a0)
	jal	ra,0000000023042E96
	c.add	s0,a0
	srli	a5,s0,00000010
	and	s0,s0,s2
	c.add	s0,a5
	lhu	a5,s1,+0000000A
	c.andi	a5,00000001
	c.beqz	a5,00000000230431A6

l23043192:
	slli	a5,s0,00000008
	c.srli	s0,00000008
	and	a5,a5,s2
	andi	s0,s0,+000000FF
	xori	s3,s3,+00000001
	c.or	s0,a5

l230431A6:
	c.lw	s1,0(s1)
	c.j	0000000023043146

;; icmp_input: 230431AA
;;   Called from:
;;     2303D4AE (in ip4_input)
icmp_input proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	lui	s2,0004201A
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s7,00000084
	addi	s3,s2,+00000668
	lhu	a5,s3,+0000004A
	lui	s6,0004201A
	c.li	a4,00000013
	c.addi	a5,00000001
	sh	a5,s3,+0000004A
	addi	a5,s6,+00000794
	lw	s7,a5,+00000008
	c.mv	s0,a0
	addi	s2,s2,+00000668
	lbu	s1,s7,+00000000
	c.andi	s1,0000000F
	c.slli	s1,02
	bgeu	a4,s1,00000000230433DA

l230431F0:
	lhu	a3,a0,+0000000A
	c.li	a4,00000003
	bgeu	a4,a3,00000000230433DA

l230431FA:
	c.lw	a0,4(a4)
	lbu	a4,a4,+00000000
	beq	a4,zero,000000002304339A

l23043204:
	c.li	a3,00000008
	bne	a4,a3,00000000230433C4

l2304320A:
	c.lw	a5,20(a0)
	addi	a4,zero,+000000E0
	andi	a3,a0,+000000F0
	beq	a3,a4,00000000230432A6

l23043218:
	c.mv	s4,a1
	c.lw	a5,0(a1)
	jal	ra,000000002303D750
	c.bnez	a0,00000000230432A6

l23043222:
	lhu	a4,s0,+00000008
	c.li	a5,00000007
	bgeu	a5,a4,00000000230433DA

l2304322C:
	c.mv	a0,s0
	jal	ra,0000000023043130
	c.beqz	a0,000000002304325A

l23043234:
	c.mv	a0,s0
	jal	ra,000000002303E536
	lhu	a5,s3,+00000050
	c.addi	a5,00000001
	sh	a5,s3,+00000050

l23043244:
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

l2304325A:
	addi	s5,s1,+0000008E
	slli	s3,s1,00000010
	c.mv	a1,s5
	c.mv	a0,s0
	addi	s6,s6,+00000794
	srli	s3,s3,00000010
	jal	ra,000000002303E4CE
	beq	a0,zero,00000000230433B4

l23043276:
	lhu	a5,s0,+00000008
	add	a1,a5,s3
	c.slli	a1,10
	c.srli	a1,00000010
	bltu	a1,a5,00000000230432A6

l23043286:
	addi	a2,zero,+00000280
	addi	a0,zero,+0000008E
	jal	ra,000000002303E5B8
	c.mv	s5,a0
	c.beqz	a0,00000000230432A6

l23043296:
	lhu	a4,a0,+0000000A
	addi	a5,s1,+00000008
	bgeu	a4,a5,00000000230432B8

l230432A2:
	jal	ra,000000002303E536

l230432A6:
	c.mv	a0,s0
	jal	ra,000000002303E536
	lhu	a5,s2,+0000005C
	c.addi	a5,00000001
	sh	a5,s2,+0000005C
	c.j	0000000023043244

l230432B8:
	c.lw	a0,4(a0)
	c.mv	a1,s7
	c.mv	a2,s1
	jal	ra,000000002306CF80
	c.mv	a1,s1
	c.mv	a0,s5
	jal	ra,000000002303E4D4
	c.beqz	a0,00000000230432D0

l230432CC:
	c.mv	a0,s5
	c.j	00000000230432A2

l230432D0:
	c.mv	a1,s0
	c.mv	a0,s5
	jal	ra,000000002303E800
	c.bnez	a0,00000000230432CC

l230432DA:
	c.mv	a0,s0
	jal	ra,000000002303E536
	c.mv	s0,s5

l230432E2:
	c.mv	a1,s1
	c.mv	a0,s0
	lw	s5,s0,+00000004
	jal	ra,000000002303E4CE
	c.bnez	a0,000000002304339A

l230432F0:
	lw	a5,s6,+00000014
	c.lw	s0,4(s1)
	srli	a4,a5,00000008
	sb	a5,s1,+0000000C
	sb	a4,s1,+0000000D
	srli	a4,a5,00000010
	c.srli	a5,00000018
	sb	a4,s1,+0000000E
	sb	a5,s1,+0000000F
	lw	a5,s6,+00000010
	srli	a4,a5,00000008
	sb	a5,s1,+00000010
	sb	a4,s1,+00000011
	srli	a4,a5,00000010
	c.srli	a5,00000018
	sb	a4,s1,+00000012
	sb	a5,s1,+00000013
	lbu	a5,s5,+00000003
	lbu	a4,s5,+00000002
	sb	zero,s5,+00000000
	c.slli	a5,08
	c.or	a5,a4
	c.lui	a4,00010000
	c.addi	a4,FFFFFFF7
	bgeu	a4,a5,00000000230433C0

l23043346:
	c.addi	a5,00000009

l23043348:
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,s5,+00000002
	c.srli	a5,00000008
	sb	a5,s5,+00000003
	c.li	a5,FFFFFFFF
	sb	a5,s1,+00000008
	c.mv	a1,s3
	sb	zero,s1,+0000000A
	sb	zero,s1,+0000000B
	c.mv	a0,s1
	jal	ra,000000002304311A
	sb	a0,s1,+0000000A
	c.srli	a0,00000008
	sb	a0,s1,+0000000B
	lhu	a5,s2,+00000048
	lui	a1,0004201A
	c.mv	a6,s4
	c.addi	a5,00000001
	sh	a5,s2,+00000048
	c.li	a4,00000000
	c.li	a5,00000001
	addi	a3,zero,+000000FF
	c.li	a2,00000000
	addi	a1,a1,+000007A8
	c.mv	a0,s0
	jal	ra,000000002303D72C

l2304339A:
	c.mv	a0,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.addi16sp	00000030
	jal	zero,000000002303E536

l230433B4:
	c.mv	a1,s5
	c.mv	a0,s0
	jal	ra,000000002303E4D4
	c.beqz	a0,00000000230432E2

l230433BE:
	c.j	00000000230432A6

l230433C0:
	c.addi	a5,00000008
	c.j	0000000023043348

l230433C4:
	lhu	a5,s3,+00000058
	c.addi	a5,00000001
	sh	a5,s3,+00000058
	lhu	a5,s3,+0000004E
	c.addi	a5,00000001
	sh	a5,s3,+0000004E
	c.j	000000002304339A

l230433DA:
	c.mv	a0,s0
	jal	ra,000000002303E536
	lhu	a5,s2,+00000052
	c.addi	a5,00000001
	sh	a5,s2,+00000052
	c.j	0000000023043244

;; icmp_dest_unreach: 230433EC
;;   Called from:
;;     2303D452 (in ip4_input)
;;     230425E6 (in udp_input)
icmp_dest_unreach proc
	c.addi16sp	FFFFFFC0
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.mv	s3,a0
	c.mv	s4,a1
	addi	a2,zero,+00000280
	addi	a1,zero,+00000024
	addi	a0,zero,+000000A2
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	jal	ra,000000002303E5B8
	c.beqz	a0,00000000230434B0

l23043410:
	c.lw	a0,4(s0)
	c.li	a5,00000003
	lw	s2,s3,+00000004
	sb	a5,s0,+00000000
	sb	s4,s0,+00000001
	sb	zero,s0,+00000004
	sb	zero,s0,+00000005
	sb	zero,s0,+00000006
	sb	zero,s0,+00000007
	c.mv	s1,a0
	c.lw	a0,4(a0)
	lw	a1,s3,+00000004
	c.li	a2,0000001C
	c.addi	a0,00000008
	jal	ra,000000002306CF80
	lbu	a4,s2,+0000000D
	lbu	a5,s2,+0000000C
	c.addi4spn	a0,0000001C
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,s2,+0000000E
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,s2,+0000000F
	c.slli	a5,18
	c.or	a5,a4
	c.swsp	a5,0000008C
	jal	ra,000000002303D12A
	c.swsp	a0,00000084
	c.beqz	a0,00000000230434AA

l23043468:
	sb	zero,s0,+00000002
	sb	zero,s0,+00000003
	lhu	a1,s1,+0000000A
	c.mv	a0,s0
	jal	ra,000000002304311A
	sb	a0,s0,+00000002
	lui	a5,0004201A
	c.srli	a0,00000008
	sb	a0,s0,+00000003
	addi	a5,a5,+00000668
	lhu	a4,a5,+00000048
	c.lwsp	a2,00000008
	addi	a3,zero,+000000FF
	c.addi	a4,00000001
	sh	a4,a5,+00000048
	c.addi4spn	a2,0000001C
	c.li	a5,00000001
	c.li	a4,00000000
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002303D72C

l230434AA:
	c.mv	a0,s1
	jal	ra,000000002303E536

l230434B0:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

;; dhcp_server_option_find: 230434C0
;;   Called from:
;;     230435E2 (in dhcp_server_recv)
;;     23043606 (in dhcp_server_recv)
;;     230437CC (in dhcp_server_recv)
dhcp_server_option_find proc
	c.add	a1,a0
	addi	a4,zero,+000000FF

l230434C6:
	bgeu	a0,a1,00000000230434D2

l230434CA:
	lbu	a5,a0,+00000000
	bne	a5,a4,00000000230434D6

l230434D2:
	c.li	a0,00000000

l230434D4:
	c.jr	ra

l230434D6:
	beq	a5,a2,00000000230434D4

l230434DA:
	lbu	a5,a0,+00000001
	c.addi	a5,00000002
	c.add	a0,a5
	c.j	00000000230434C6

;; dhcp_client_find_by_ip.isra.0: 230434E4
;;   Called from:
;;     23043616 (in dhcp_server_recv)
;;     23043626 (in dhcp_server_recv)
;;     230437DA (in dhcp_server_recv)
dhcp_client_find_by_ip.isra.0 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a2,00000004
	c.mv	s0,a0
	c.addi4spn	a0,0000000C
	c.swsp	ra,0000008C
	jal	ra,000000002306CF80
	c.lwsp	a2,000000E4
	c.lw	s0,0(a0)

l230434F8:
	c.bnez	a0,0000000023043502

l230434FA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23043502:
	c.lw	a0,12(a4)
	beq	a5,a4,00000000230434FA

l23043508:
	c.lw	a0,0(a0)
	c.j	00000000230434F8

;; dhcp_server_recv: 2304350C
dhcp_server_recv proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s6,00000010
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.lw	a3,0(a5)
	c.mv	s6,a4
	lhu	a4,a2,+0000000A
	c.swsp	a5,00000004
	addi	a5,zero,+0000002B
	c.mv	s0,a2
	bltu	a5,a4,0000000023043558

l23043538:
	c.mv	a0,s0

l2304353A:
	jal	ra,000000002303E536
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

l23043558:
	c.mv	s1,a0
	c.mv	s5,a1
	addi	a2,zero,+00000280
	addi	a1,zero,+000005DC
	addi	a0,zero,+000000B6
	jal	ra,000000002303E5B8
	c.mv	s2,a0
	c.beqz	a0,0000000023043538

l23043570:
	lhu	a4,a0,+00000008
	lhu	a5,s0,+00000008
	bltu	a4,a5,0000000023043538

l2304357C:
	c.mv	a1,s0
	jal	ra,000000002303E800
	c.mv	a0,s0
	jal	ra,000000002303E536
	lw	s0,s2,+00000004
	c.li	a5,00000001
	lbu	s3,s0,+00000000
	bne	s3,a5,00000000230437AE

l23043596:
	lbu	a4,s0,+000000ED
	lbu	a5,s0,+000000EC
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,s0,+000000EE
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,s0,+000000EF
	c.slli	a5,18
	c.or	a5,a4
	lui	a4,00063538
	addi	a4,a4,+00000263
	bne	a5,a4,00000000230437AE

l230435BE:
	lbu	s8,s0,+00000002
	c.li	a5,00000006
	bltu	a5,s8,00000000230437AE

l230435C8:
	lhu	s4,s2,+00000008
	addi	s7,s0,+000000F0
	addi	a2,zero,+00000035
	addi	s4,s4,-000000F0
	c.slli	s4,10
	srli	s4,s4,00000010
	c.mv	a1,s4
	c.mv	a0,s7
	jal	ra,00000000230434C0
	beq	a0,zero,00000000230437AE

l230435EA:
	lbu	a5,a0,+00000002
	bne	a5,s3,00000000230437B2

l230435F2:
	lw	s3,s1,+0000000C
	addi	s9,s0,+0000001C

l230435FA:
	bne	s3,zero,0000000023043652

l230435FE:
	c.mv	a1,s4
	addi	a2,zero,+00000032
	c.mv	a0,s7
	jal	ra,00000000230434C0
	addi	s4,s1,+0000000C
	c.beqz	a0,000000002304361E

l23043610:
	addi	a1,a0,+00000002
	c.mv	a0,s4
	jal	ra,00000000230434E4
	c.mv	s3,a0
	c.bnez	a0,000000002304368E

l2304361E:
	addi	s7,s1,+00000018

l23043622:
	c.mv	a1,s7
	c.mv	a0,s4
	jal	ra,00000000230434E4
	c.beqz	a0,0000000023043666

l2304362C:
	c.lw	s1,24(a0)
	jal	ra,000000002303A768
	addi	s3,a0,+00000001
	c.lw	s1,20(a0)
	jal	ra,000000002303A768
	bgeu	a0,s3,0000000023043648

l23043640:
	c.lw	s1,16(a0)
	jal	ra,000000002303A768
	c.mv	s3,a0

l23043648:
	c.mv	a0,s3
	jal	ra,000000002303A768
	c.sw	s1,24(a0)
	c.j	0000000023043622

l23043652:
	c.mv	a2,s8
	c.mv	a1,s9
	addi	a0,s3,+00000004
	jal	ra,000000002306CEF8
	c.beqz	a0,000000002304368E

l23043660:
	lw	s3,s3,+00000000
	c.j	00000000230435FA

l23043666:
	c.li	a0,00000014
	jal	ra,000000002303DCEE
	c.mv	s3,a0
	beq	a0,zero,00000000230437AE

l23043672:
	lbu	a2,s0,+00000002
	c.mv	a1,s9
	c.addi	a0,00000004
	jal	ra,000000002306CF80
	c.lw	s1,24(a5)
	sw	a5,s3,+0000000C
	c.lw	s1,12(a5)
	sw	a5,s3,+00000000
	sw	s3,s1,+0000000C

l2304368E:
	lui	a5,00080510
	addi	a5,a5,+00000100
	sw	a5,s3,+00000010
	c.li	s7,00000002
	sb	s7,s0,+00000000
	sb	zero,s0,+00000003
	sb	zero,s0,+00000008
	sb	zero,s0,+00000009
	c.lw	s1,4(a1)
	c.li	a2,00000004
	addi	a0,s0,+00000014
	c.addi	a1,00000004
	jal	ra,000000002306CF80
	addi	a4,zero,-0000007E
	addi	a5,zero,+00000063
	sb	a4,s0,+000000ED
	addi	a4,zero,+00000053
	sb	a5,s0,+000000EC
	sb	a5,s0,+000000EF
	sb	zero,s0,+0000002C
	sb	zero,s0,+0000006C
	sb	a4,s0,+000000EE
	c.li	a2,00000004
	addi	a1,s3,+0000000C
	addi	a0,s0,+00000010
	jal	ra,000000002306CF80
	addi	a5,zero,+00000035
	c.li	s4,00000001
	sb	a5,s0,+000000F0
	sb	s4,s0,+000000F1
	sb	s7,s0,+000000F2

l230436FE:
	c.li	s3,00000004
	addi	a5,zero,+00000036
	sb	a5,s0,+000000F3
	sb	s3,s0,+000000F4
	c.lw	s1,4(a1)
	c.li	a2,00000004
	addi	a0,s0,+000000F5
	c.addi	a1,00000004
	jal	ra,000000002306CF80
	addi	a5,zero,+00000033
	sb	a5,s0,+000000F9
	c.lui	a5,00015000
	addi	a5,a5,+00000180
	c.li	a2,00000004
	c.addi4spn	a1,0000000C
	sb	s3,s0,+000000FA
	addi	a0,s0,+000000FB
	c.swsp	a5,00000084
	jal	ra,000000002306CF80
	sb	s4,s0,+000000FF
	sb	s3,s0,+00000100
	c.lw	s1,4(a1)
	c.li	a2,00000004
	addi	a0,s0,+00000101
	c.addi	a1,00000008
	jal	ra,000000002306CF80
	c.li	a5,00000006
	sb	a5,s0,+00000105
	sb	s3,s0,+00000106
	c.lw	s1,4(a1)
	c.li	a2,00000004
	addi	a0,s0,+00000107
	c.addi	a1,00000004
	jal	ra,000000002306CF80
	c.li	a5,00000003
	sb	a5,s0,+0000010B
	sb	s3,s0,+0000010C
	c.lw	s1,4(a1)
	c.li	a2,00000004
	addi	a0,s0,+0000010D
	c.addi	a1,00000004
	jal	ra,000000002306CF80
	c.li	a5,FFFFFFFF
	sb	a5,s0,+00000111
	lhu	a4,s2,+00000008
	addi	a5,zero,+00000112
	bgeu	a5,a4,000000002304379C

l23043792:
	addi	a1,zero,+00000112

l23043796:
	c.mv	a0,s2
	jal	ra,000000002303E716

l2304379C:
	c.lw	s1,4(a4)
	c.li	a5,FFFFFFFF
	c.mv	a3,s6
	c.addi4spn	a2,00000008
	c.mv	a1,s2
	c.mv	a0,s5
	c.swsp	a5,00000004
	jal	ra,0000000023042952

l230437AE:
	c.mv	a0,s2
	c.j	000000002304353A

l230437B2:
	c.li	a4,00000003
	bne	a5,a4,00000000230438AA

l230437B8:
	lw	s3,s1,+0000000C
	addi	s9,s0,+0000001C

l230437C0:
	bne	s3,zero,0000000023043896

l230437C4:
	addi	a2,zero,+00000032
	c.mv	a1,s4
	c.mv	a0,s7
	jal	ra,00000000230434C0
	c.beqz	a0,00000000230437FE

l230437D2:
	addi	a1,a0,+00000002
	addi	a0,s1,+0000000C
	jal	ra,00000000230434E4
	c.mv	s3,a0
	c.beqz	a0,00000000230437FE

l230437E2:
	lbu	a2,s0,+00000002
	c.mv	a1,s9
	c.addi	a0,00000004
	jal	ra,000000002306CEF8
	beq	a0,zero,00000000230438F0

l230437F2:
	lui	a0,0002307B
	addi	a0,a0,-000002F8
	jal	ra,0000000023003A8A

l230437FE:
	c.li	a5,00000002
	sb	a5,s0,+00000000
	sb	zero,s0,+00000003
	sb	zero,s0,+00000008
	sb	zero,s0,+00000009
	c.lw	s1,4(a1)
	c.li	a2,00000004
	addi	a0,s0,+00000014
	c.addi	a1,00000004
	jal	ra,000000002306CF80
	addi	a4,zero,-0000007E
	addi	a5,zero,+00000063
	sb	a4,s0,+000000ED
	addi	a4,zero,+00000053
	sb	a4,s0,+000000EE
	sb	a5,s0,+000000EC
	sb	a5,s0,+000000EF
	c.li	a2,00000004
	c.li	a1,00000000
	sb	zero,s0,+0000002C
	sb	zero,s0,+0000006C
	addi	a0,s0,+00000010
	jal	ra,000000002306D1BC
	addi	a5,zero,+00000035
	sb	a5,s0,+000000F0
	c.li	a5,00000001
	sb	a5,s0,+000000F1
	c.li	a5,00000006
	sb	a5,s0,+000000F2
	addi	a5,zero,+00000036
	sb	a5,s0,+000000F3
	c.li	a5,00000004
	sb	a5,s0,+000000F4
	c.lw	s1,4(a1)
	c.li	a2,00000004
	addi	a0,s0,+000000F5
	c.addi	a1,00000004
	jal	ra,000000002306CF80
	c.li	a5,FFFFFFFF
	sb	a5,s0,+000000F9
	lhu	a4,s2,+00000008
	addi	a5,zero,+000000FA
	bgeu	a5,a4,000000002304379C

l23043890:
	addi	a1,zero,+000000FA
	c.j	0000000023043796

l23043896:
	c.mv	a2,s8
	c.mv	a1,s9
	addi	a0,s3,+00000004
	jal	ra,000000002306CEF8
	c.beqz	a0,00000000230438F0

l230438A4:
	lw	s3,s3,+00000000
	c.j	00000000230437C0

l230438AA:
	c.li	a4,00000007
	bne	a5,a4,00000000230437AE

l230438B0:
	lw	s3,s1,+0000000C
	c.li	s4,00000000
	addi	s5,s0,+0000001C

l230438BA:
	beq	s3,zero,00000000230437AE

l230438BE:
	lbu	a2,s0,+00000002
	c.mv	a1,s5
	addi	a0,s3,+00000004
	jal	ra,000000002306CEF8
	lw	a5,s3,+00000000
	c.bnez	a0,00000000230438E8

l230438D2:
	c.lw	s1,12(a4)
	bne	a4,s3,00000000230438E2

l230438D8:
	c.sw	s1,12(a5)

l230438DA:
	c.mv	a0,s3
	jal	ra,000000002303D9F8
	c.j	00000000230437AE

l230438E2:
	sw	a5,s4,+00000000
	c.j	00000000230438DA

l230438E8:
	c.mv	s4,s3
	lw	s3,a5,+00000000
	c.j	00000000230438BA

l230438F0:
	lui	a5,00080510
	addi	a5,a5,+00000100
	sw	a5,s3,+00000010
	c.li	a5,00000002
	sb	a5,s0,+00000000
	sb	zero,s0,+00000003
	sb	zero,s0,+00000008
	sb	zero,s0,+00000009
	c.lw	s1,4(a1)
	c.li	a2,00000004
	addi	a0,s0,+00000014
	c.addi	a1,00000004
	jal	ra,000000002306CF80
	addi	a4,zero,-0000007E
	addi	a5,zero,+00000063
	sb	a4,s0,+000000ED
	addi	a4,zero,+00000053
	sb	a5,s0,+000000EC
	sb	a5,s0,+000000EF
	sb	zero,s0,+0000002C
	sb	zero,s0,+0000006C
	sb	a4,s0,+000000EE
	c.li	a2,00000004
	addi	a1,s3,+0000000C
	addi	a0,s0,+00000010
	jal	ra,000000002306CF80
	addi	a5,zero,+00000035
	sb	a5,s0,+000000F0
	c.li	s4,00000001
	c.li	a5,00000005
	sb	s4,s0,+000000F1
	sb	a5,s0,+000000F2
	c.j	00000000230436FE

;; dhcp_server_start: 23043964
;;   Called from:
;;     23043B48 (in dhcpd_start)
dhcp_server_start proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,0004200E
	lw	a5,s2,+0000035C
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	addi	s2,s2,+0000035C

l2304397E:
	c.bnez	a5,00000000230439A2

l23043980:
	c.mv	s4,a0
	c.li	a0,0000001C
	c.mv	s3,a2
	c.mv	s1,a1
	jal	ra,000000002303DCEE
	c.mv	s0,a0
	c.bnez	a0,00000000230439BC

l23043990:
	c.li	a0,FFFFFFFF

l23043992:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l230439A2:
	c.lw	a5,4(a4)
	bne	a4,a0,00000000230439B8

l230439A8:
	c.lw	a1,0(a4)
	c.sw	a5,16(a4)
	c.lw	a2,0(a4)
	c.sw	a5,20(a4)
	c.lw	a1,0(a4)
	c.sw	a5,24(a4)

l230439B4:
	c.li	a0,00000000
	c.j	0000000023043992

l230439B8:
	c.lw	a5,0(a5)
	c.j	000000002304397E

l230439BC:
	c.li	a2,0000001C
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	lw	a5,s2,+00000000
	sw	s4,s0,+00000004
	sw	zero,s0,+0000000C
	c.sw	s0,0(a5)
	c.lw	s1,0(a5)
	sw	s0,s2,+00000000
	c.sw	s0,16(a5)
	lw	a5,s3,+00000000
	c.sw	s0,20(a5)
	c.lw	s1,0(a5)
	c.sw	s0,24(a5)
	jal	ra,0000000023042A08
	c.sw	s0,8(a0)
	c.beqz	a0,0000000023043990

l230439EC:
	lbu	a5,a0,+00000009
	lui	a1,00023082
	addi	a2,zero,+00000043
	ori	a5,a5,+00000020
	sb	a5,a0,+00000009
	c.lw	s0,8(a0)
	addi	a1,a1,+000007AC
	jal	ra,00000000230425F6
	c.lw	s0,8(a0)
	lui	a1,00023043
	c.mv	a2,s0
	addi	a1,a1,+0000050C
	jal	ra,00000000230429D0
	c.j	00000000230439B4

;; dhcp_server_stop: 23043A1C
dhcp_server_stop proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200E
	c.swsp	s0,00000004
	lw	s0,a5,+0000035C
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	addi	s1,a5,+0000035C

l23043A30:
	c.bnez	s0,0000000023043A42

l23043A32:
	lui	a0,0002307B
	addi	a0,a0,-000002CC
	jal	ra,0000000023003AC6
	c.li	a0,FFFFFFFA
	c.j	0000000023043A60

l23043A42:
	c.lw	s0,4(a5)
	beq	a5,a0,0000000023043A4C

l23043A48:
	c.lw	s0,0(s0)
	c.j	0000000023043A30

l23043A4C:
	c.lw	s0,8(a0)
	c.beqz	a0,0000000023043A54

l23043A50:
	jal	ra,00000000230429D8

l23043A54:
	c.mv	a0,s0
	sw	zero,s1,+00000000
	jal	ra,000000002303D9F8
	c.li	a0,00000000

l23043A60:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; dhcpd_start: 23043A6A
dhcpd_start proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.mv	s1,a0
	c.swsp	s3,00000094
	jal	ra,000000002303C4B0
	lui	s0,0002307B
	lui	a3,0002307B
	lui	a2,00023073
	addi	a3,a3,-00000290
	addi	a2,a2,-0000057C
	addi	a1,s0,-00000280
	c.mv	a0,s1
	jal	ra,000000002306850A
	c.mv	a0,s1
	jal	ra,000000002303E21C
	addi	a1,s0,-00000280
	c.li	a2,0000000E
	c.addi4spn	a0,0000000C
	jal	ra,000000002306CF80
	addi	a1,zero,+0000002E
	c.addi4spn	a0,0000000C
	sh	zero,sp,+0000001A
	sh	zero,sp,+0000001C
	sh	zero,sp,+0000001E
	jal	ra,000000002306D298
	c.bnez	a0,0000000023043AE0

l23043AC4:
	lui	a0,0002307B
	c.addi4spn	a1,0000000C
	addi	a0,a0,-00000270

l23043ACE:
	jal	ra,0000000023003AC6

l23043AD2:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l23043AE0:
	addi	a1,zero,+0000002E
	c.addi	a0,00000001
	jal	ra,000000002306D298
	c.beqz	a0,0000000023043AC4

l23043AEC:
	addi	a1,zero,+0000002E
	c.addi	a0,00000001
	jal	ra,000000002306D298
	c.beqz	a0,0000000023043AC4

l23043AF8:
	addi	s0,a0,+00000001
	lui	s3,00023077
	c.li	a2,00000002
	addi	a1,s3,+00000648
	c.mv	a0,s0
	jal	ra,0000000023003AF6
	c.addi4spn	a1,00000004
	c.addi4spn	a0,0000000C
	jal	ra,000000002303D78A
	lui	s2,0002307B
	c.addi4spn	a1,0000000C
	addi	a0,s2,-0000024C
	jal	ra,0000000023003AC6
	addi	a2,zero,+000000FE
	addi	a1,s3,+00000648
	c.mv	a0,s0
	jal	ra,0000000023003AF6
	c.addi4spn	a1,00000008
	c.addi4spn	a0,0000000C
	jal	ra,000000002303D78A
	c.addi4spn	a1,0000000C
	addi	a0,s2,-0000024C
	jal	ra,0000000023003AC6
	c.addi4spn	a1,00000004
	c.addi4spn	a2,00000008
	c.mv	a0,s1
	jal	ra,0000000023043964
	c.mv	a1,a0
	c.beqz	a0,0000000023043AD2

l23043B50:
	lui	a0,0002307B
	addi	a0,a0,-00000234
	c.j	0000000023043ACE

;; dirent_type: 23043B5A
;;   Called from:
;;     23043D24 (in file_info)
;;     23043DCA (in file_info)
;;     23043FEA (in romfs_readdir)
;;     2304437C (in romfs_stat)
dirent_type proc
	lbu	a5,a0,+00000003
	c.andi	a5,00000007
	c.beqz	a5,0000000023043B76

l23043B62:
	c.li	a4,00000002
	c.li	a0,00000002
	beq	a5,a4,0000000023043B78

l23043B6A:
	c.li	a4,00000001
	c.li	a0,00000003
	bne	a5,a4,0000000023043B78

l23043B72:
	c.li	a0,00000001
	c.jr	ra

l23043B76:
	c.li	a0,00000000

l23043B78:
	c.jr	ra

;; dirent_hardfh: 23043B7A
;;   Called from:
;;     23043D54 (in file_info)
;;     23043DAE (in file_info)
;;     23043E40 (in file_info)
;;     23043F86 (in romfs_readdir)
;;     23043FDC (in romfs_readdir)
dirent_hardfh proc
	c.lw	a0,0(a5)
	lui	a3,00000FF0
	srli	a4,a5,00000018
	slli	a0,a5,00000018
	c.or	a0,a4
	slli	a4,a5,00000008
	c.and	a4,a3
	c.or	a0,a4
	c.lui	a4,00010000
	addi	a4,a4,-00000100
	c.srli	a5,00000008
	c.and	a5,a4
	c.or	a0,a5
	c.andi	a0,FFFFFFF0
	c.jr	ra

;; dirent_childaddr: 23043BA2
;;   Called from:
;;     2304411A (in dirent_file)
;;     230442EA (in romfs_opendir)
dirent_childaddr proc
	c.lw	a0,4(a5)
	lui	a3,00000FF0
	srli	a4,a5,00000018
	slli	a0,a5,00000018
	c.or	a0,a4
	slli	a4,a5,00000008
	c.and	a4,a3
	c.or	a0,a4
	c.lui	a4,00010000
	addi	a4,a4,-00000100
	c.srli	a5,00000008
	c.and	a5,a4
	c.or	a0,a5
	c.andi	a0,FFFFFFF0
	c.jr	ra

;; dirent_size: 23043BCA
;;   Called from:
;;     23043C30 (in romfs_ioctl)
;;     23043C72 (in romfs_read)
;;     23043EB4 (in romfs_lseek)
;;     23044398 (in romfs_stat)
dirent_size proc
	c.lw	a0,8(a5)
	lui	a3,00000FF0
	srli	a4,a5,00000018
	slli	a0,a5,00000018
	c.or	a0,a4
	slli	a4,a5,00000008
	c.and	a4,a3
	c.or	a0,a4
	c.lui	a4,00010000
	addi	a4,a4,-00000100
	c.srli	a5,00000008
	c.and	a5,a4
	c.or	a0,a5
	c.jr	ra

;; romfs_close: 23043BF0
romfs_close proc
	sw	zero,a0,+00000004
	sw	zero,a0,+00000008
	c.li	a0,FFFFFFFF
	c.jr	ra

;; romfs_ioctl: 23043BFC
romfs_ioctl proc
	c.li	a5,FFFFFFFE
	c.beqz	a0,0000000023043C46

l23043C00:
	c.beqz	a2,0000000023043C46

l23043C02:
	c.li	a4,00000001
	c.li	a5,FFFFFFFD
	bne	a1,a4,0000000023043C46

l23043C0A:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lw	s2,a0,+00000004
	c.mv	s1,a0
	c.mv	s0,a2
	addi	a0,s2,+00000010
	jal	ra,000000002306D630
	c.addi	a0,00000010
	c.andi	a0,FFFFFFF0
	c.addi	a0,00000010
	c.add	a0,s2
	c.sw	s0,0(a0)
	c.lw	s1,4(a0)
	jal	ra,0000000023043BCA
	c.sw	s0,4(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a5,00000000
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23043C46:
	c.mv	a0,a5
	c.jr	ra

;; romfs_read: 23043C4A
romfs_read proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s5,00000080
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lw	s3,a0,+00000004
	c.mv	s2,a0
	c.mv	s0,a2
	addi	a0,s3,+00000010
	c.mv	s5,a1
	jal	ra,000000002306D630
	c.mv	s1,a0
	lw	a0,s2,+00000004
	jal	ra,0000000023043BCA
	lw	a2,s2,+00000008
	bgeu	a2,a0,0000000023043CCC

l23043C7E:
	addi	a1,s1,+00000010
	c.andi	a1,FFFFFFF0
	c.addi	a1,00000010
	c.add	a1,a2
	add	a5,a2,s0
	c.mv	s4,a0
	c.add	a1,s3
	bgeu	a5,a0,0000000023043CBA

l23043C94:
	c.mv	a2,s0
	c.mv	a0,s5
	jal	ra,000000002306CF80
	lw	a5,s2,+00000008
	c.add	a5,s0
	sw	a5,s2,+00000008

l23043CA6:
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

l23043CBA:
	sub	s0,a0,a2
	c.mv	a2,s0
	c.mv	a0,s5
	jal	ra,000000002306CF80
	sw	s4,s2,+00000008
	c.j	0000000023043CA6

l23043CCC:
	c.li	s0,00000000
	c.j	0000000023043CA6

;; file_info: 23043CD0
;;   Called from:
;;     23044172 (in dirent_file)
;;     230441D4 (in dirent_file)
file_info proc
	c.addi16sp	FFFFFFC0
	c.swsp	s2,00000018
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s3,00000094
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.mv	s2,a0
	c.mv	s5,a1
	c.mv	s4,a2
	c.lw	a1,0(s0)
	c.lw	a2,0(s1)
	jal	ra,000000002306D630
	addi	a5,zero,+00000040
	bltu	a5,a0,0000000023043E2A

l23043CFC:
	lui	s3,0004200E
	lw	a5,s3,+00000364
	addi	s3,s3,+00000364
	bne	a5,s0,0000000023043D1E

l23043D0C:
	addi	a0,s0,+00000010
	jal	ra,000000002306D630
	c.addi	a0,00000010
	c.andi	a0,FFFFFFF0
	addi	a0,a0,+00000050
	c.add	s0,a0

l23043D1E:
	c.li	s7,00000001
	c.li	s8,00000002

l23043D22:
	c.mv	a0,s0
	jal	ra,0000000023043B5A
	bne	a0,s7,0000000023043D82

l23043D2C:
	c.mv	a0,s2
	jal	ra,000000002306D630
	c.mv	a2,a0
	addi	a1,s0,+00000010
	c.mv	a0,s2
	jal	ra,000000002306CEF8
	bne	a0,zero,0000000023043E3A

l23043D42:
	c.mv	a0,s2
	jal	ra,000000002306D630
	c.add	a0,s0
	lbu	a5,a0,+00000010
	bne	a5,zero,0000000023043E3A

l23043D52:
	c.mv	a0,s0
	jal	ra,0000000023043B7A
	c.beqz	a0,0000000023043D60

l23043D5A:
	lw	s1,s3,+00000000

l23043D5E:
	c.add	s1,a0

l23043D60:
	sw	s0,s5,+00000000
	sw	s1,s4,+00000000
	c.li	a0,00000000

l23043D6A:
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

l23043D82:
	bne	a0,s8,0000000023043DB4

l23043D86:
	c.mv	a0,s2
	jal	ra,000000002306D630
	c.mv	a2,a0
	addi	a1,s0,+00000010
	c.mv	a0,s2
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023043E3A

l23043D9A:
	c.mv	a0,s2
	jal	ra,000000002306D630
	c.add	a0,s0
	lbu	a5,a0,+00000010
	c.bnez	a5,0000000023043E3A

l23043DA8:
	c.mv	a0,s0
	lw	s1,s3,+00000000
	jal	ra,0000000023043B7A
	c.j	0000000023043D5E

l23043DB4:
	c.beqz	a0,0000000023043E3A

l23043DB6:
	lui	a5,0004200E
	lw	a4,a5,+00000244
	c.mv	s3,a5
	c.beqz	a4,0000000023043E2E

l23043DC2:
	jal	ra,0000000023033B12

l23043DC6:
	c.swsp	a0,00000084
	c.mv	a0,s0
	jal	ra,0000000023043B5A
	c.lwsp	a2,00000064
	c.mv	a6,a0
	lui	s1,0002307B
	lui	s2,00023079
	lui	a0,0002307B
	c.mv	a5,s0
	addi	a4,zero,+000000E6
	addi	a3,s1,-00000148
	addi	a2,s2,-000001B4
	addi	a0,a0,-0000013C
	jal	ra,00000000230018FA
	c.li	a4,00000000
	c.li	a3,00000008
	c.mv	a2,s0
	addi	a1,zero,+000000E7
	addi	a0,s1,-00000148
	jal	ra,0000000023001928
	lw	a5,s3,+00000244
	c.beqz	a5,0000000023043E34

l23043E0C:
	jal	ra,0000000023033B12

l23043E10:
	c.mv	a1,a0
	lui	a0,0002307B
	addi	a4,zero,+000000E8
	addi	a3,s1,-00000148
	addi	a2,s2,-000001B4
	addi	a0,a0,-000000F8
	jal	ra,00000000230018FA

l23043E2A:
	c.li	a0,FFFFFFFF
	c.j	0000000023043D6A

l23043E2E:
	jal	ra,0000000023033AF0
	c.j	0000000023043DC6

l23043E34:
	jal	ra,0000000023033AF0
	c.j	0000000023043E10

l23043E3A:
	lw	s6,s3,+00000000
	c.mv	a0,s0
	jal	ra,0000000023043B7A
	add	s0,s6,a0
	bltu	s0,s1,0000000023043D22

l23043E4C:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023043E84

l23043E56:
	jal	ra,0000000023033B12

l23043E5A:
	c.mv	a1,a0
	lui	a3,0002307B
	lui	a2,00023078
	lui	a0,0002307B
	c.mv	a7,s1
	c.mv	a6,s0
	c.mv	a5,s2
	addi	a4,zero,+000000EF
	addi	a3,a3,-00000148
	addi	a2,a2,+000001B4
	addi	a0,a0,-000000C8
	jal	ra,00000000230018FA
	c.j	0000000023043E2A

l23043E84:
	jal	ra,0000000023033AF0
	c.j	0000000023043E5A

;; romfs_closedir: 23043E8A
romfs_closedir proc
	c.beqz	a1,0000000023043E9E

l23043E8C:
	c.addi	sp,FFFFFFF0
	c.mv	a0,a1
	c.swsp	ra,00000084
	jal	ra,0000000023002880
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23043E9E:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; romfs_lseek: 23043EA2
romfs_lseek proc
	c.addi	sp,FFFFFFE0
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a2,00000004
	c.li	a1,FFFFFFFF
	c.beqz	a0,0000000023043ED0

l23043EB0:
	c.mv	s0,a0
	c.lw	a0,4(a0)
	jal	ra,0000000023043BCA
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.bnez	a2,0000000023043EDA

l23043EBE:
	bge	a1,zero,0000000023043EFA

l23043EC2:
	lui	a0,0002307B
	addi	a0,a0,-00000070
	jal	ra,0000000023003AC6
	c.li	a1,FFFFFFFE

l23043ED0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,a1
	c.addi16sp	00000020
	c.jr	ra

l23043EDA:
	c.li	a5,00000002
	bne	a2,a5,0000000023043F0E

l23043EE0:
	bge	zero,a1,0000000023043EF4

l23043EE4:
	lui	a0,0002307B
	addi	a0,a0,-00000070
	jal	ra,0000000023003AC6
	c.li	a1,FFFFFFFD
	c.j	0000000023043ED0

l23043EF4:
	c.add	a1,a0

l23043EF6:
	blt	a1,zero,0000000023043EFE

l23043EFA:
	bgeu	a0,a1,0000000023043F2A

l23043EFE:
	lui	a0,0002307B
	addi	a0,a0,-00000070
	jal	ra,0000000023003AC6
	c.li	a1,FFFFFFFB
	c.j	0000000023043ED0

l23043F0E:
	c.li	a5,00000001
	bne	a2,a5,0000000023043F1A

l23043F14:
	c.lw	s0,8(a5)
	c.add	a1,a5
	c.j	0000000023043EF6

l23043F1A:
	lui	a0,0002307B
	addi	a0,a0,-00000070
	jal	ra,0000000023003AC6
	c.li	a1,FFFFFFFC
	c.j	0000000023043ED0

l23043F2A:
	c.sw	s0,8(a1)
	c.j	0000000023043ED0

;; romfs_readdir: 23043F2E
romfs_readdir proc
	c.beqz	a1,0000000023044008

l23043F30:
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	lui	s3,00001000
	lui	s4,000002E3
	c.lui	s2,00003000
	c.swsp	s0,00000014
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	c.mv	s0,a1
	lui	s5,0004200E
	addi	s6,a1,+00000019
	addi	s3,s3,-00000100
	addi	s4,s4,-00000200
	addi	s2,s2,-00000200

l23043F6A:
	c.lw	s0,16(a5)
	c.bnez	a5,0000000023043FC4

l23043F6E:
	c.lw	s0,8(a5)
	c.sw	s0,16(a5)

l23043F72:
	c.lw	s0,16(a1)
	addi	a2,zero,+00000040
	c.mv	a0,s6
	c.addi	a1,00000010
	jal	ra,000000002306D7AC
	c.lw	s0,16(a0)
	sb	zero,s0,+00000059
	jal	ra,0000000023043B7A
	c.bnez	a0,0000000023043FFA

l23043F8C:
	c.lw	s0,12(a0)

l23043F8E:
	c.lw	s0,24(a5)
	c.sw	s0,16(a0)
	and	a5,a5,s3
	bne	a5,s4,0000000023044002

l23043F9A:
	lbu	a5,s0,+0000001B
	c.beqz	a5,0000000023043F6A

l23043FA0:
	addi	a0,s0,+00000014
	c.j	0000000023043FA8

l23043FA6:
	c.li	a0,00000000

l23043FA8:
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

l23043FC4:
	lw	s8,s0,+0000000C
	bgeu	a5,s8,0000000023043FA6

l23043FCC:
	lw	s9,s5,+00000364
	c.li	s10,00000001

l23043FD2:
	lw	s7,s0,+00000010
	bgeu	s7,s8,0000000023043FA6

l23043FDA:
	c.mv	a0,s7
	jal	ra,0000000023043B7A
	c.mv	s1,a0
	c.beqz	a0,0000000023043F72

l23043FE4:
	beq	s7,zero,0000000023043FA6

l23043FE8:
	c.mv	a0,s7
	jal	ra,0000000023043B5A
	c.addi	a0,FFFFFFFF
	bgeu	s10,a0,0000000023043F72

l23043FF4:
	c.add	s1,s9
	c.sw	s0,16(s1)
	c.j	0000000023043FD2

l23043FFA:
	lw	a5,s5,+00000364
	c.add	a0,a5
	c.j	0000000023043F8E

l23044002:
	bne	a5,s2,0000000023043FA0

l23044006:
	c.j	0000000023043F6A

l23044008:
	c.li	a0,00000000
	c.jr	ra

;; dirent_file: 2304400C
;;   Called from:
;;     230442BA (in romfs_opendir)
;;     23044316 (in romfs_stat)
;;     23044484 (in romfs_open)
dirent_file proc
	c.addi16sp	FFFFFF80
	c.swsp	s0,0000003C
	c.swsp	s1,000000B8
	c.swsp	s2,00000038
	c.swsp	s3,000000B4
	c.swsp	s4,00000034
	c.swsp	ra,000000BC
	c.swsp	s5,000000B0
	c.swsp	s6,00000030
	c.swsp	s7,000000AC
	c.mv	s0,a0
	c.mv	s2,a1
	c.mv	s1,a2
	lui	s3,00023078
	jal	ra,000000002306D630
	c.mv	s4,a0
	addi	a0,s3,-0000065C
	jal	ra,000000002306D630
	bltu	s4,a0,0000000023044082

l2304403C:
	addi	a0,s3,-0000065C
	jal	ra,000000002306D630
	c.mv	a2,a0
	addi	a1,s3,-0000065C
	c.mv	a0,s0
	jal	ra,000000002306CEF8
	c.beqz	a0,000000002304408C

l23044052:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023044086

l2304405C:
	jal	ra,0000000023033B12

l23044060:
	addi	a4,zero,+00000115

l23044064:
	lui	a3,0002307B
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307B
	addi	a3,a3,-00000148
	addi	a2,a2,-000001B4
	addi	a0,a0,-00000210

l2304407E:
	jal	ra,00000000230018FA

l23044082:
	c.li	a0,FFFFFFFF
	c.j	0000000023044222

l23044086:
	jal	ra,0000000023033AF0
	c.j	0000000023044060

l2304408C:
	addi	a0,s3,-0000065C
	jal	ra,000000002306D630
	c.add	s0,a0
	lbu	a5,s0,+00000000
	addi	a4,zero,+0000002F
	beq	a5,a4,00000000230440BE

l230440A2:
	c.beqz	a5,00000000230440C0

l230440A4:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230440B8

l230440AE:
	jal	ra,0000000023033B12

l230440B2:
	addi	a4,zero,+0000011A
	c.j	0000000023044064

l230440B8:
	jal	ra,0000000023033AF0
	c.j	00000000230440B2

l230440BE:
	c.addi	s0,00000001

l230440C0:
	lui	a2,0004200E
	lw	a3,a2,+00000364
	lui	a0,00000FF0
	c.li	s4,00000000
	c.lw	a3,8(a5)
	c.swsp	a3,00000080
	addi	s3,a2,+00000364
	srli	a1,a5,00000018
	slli	a4,a5,00000018
	c.or	a4,a1
	slli	a1,a5,00000008
	c.and	a1,a0
	c.or	a4,a1
	c.lui	a1,00010000
	c.srli	a5,00000008
	addi	a1,a1,-00000100
	c.and	a5,a1
	c.or	a5,a4
	c.add	a5,a3
	c.swsp	a5,00000004
	c.li	s7,00000001

l230440FA:
	lbu	a5,s0,+00000000
	beq	a5,zero,0000000023044216

l23044102:
	addi	a1,zero,+0000002F
	c.mv	a0,s0
	jal	ra,000000002306D298
	c.mv	s5,a0
	bne	s4,s7,0000000023044126

l23044112:
	c.lwsp	tp,000000C8
	lw	s4,s3,+00000000
	c.mv	a0,s6
	jal	ra,0000000023043BA2
	c.add	a0,s4
	beq	s6,a0,0000000023044238

l23044124:
	c.swsp	a0,00000080

l23044126:
	bne	s5,zero,00000000230441B6

l2304412A:
	c.mv	a0,s0
	jal	ra,000000002306D630
	addi	a5,zero,+00000040
	bgeu	a5,a0,000000002304416C

l23044138:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023044166

l23044142:
	jal	ra,0000000023033B12

l23044146:
	lui	a3,0002307B
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307B
	addi	a4,zero,+00000138
	addi	a3,a3,-00000148
	addi	a2,a2,-000001B4
	addi	a0,a0,-000001E8
	c.j	000000002304407E

l23044166:
	jal	ra,0000000023033AF0
	c.j	0000000023044146

l2304416C:
	c.addi4spn	a2,00000008
	c.addi4spn	a1,00000004
	c.mv	a0,s0
	jal	ra,0000000023043CD0
	c.beqz	a0,0000000023044216

l23044178:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230441B0

l23044182:
	jal	ra,0000000023033B12

l23044186:
	c.lwsp	s0,00000028
	c.lwsp	tp,00000008
	c.mv	a1,a0
	lui	a3,0002307B
	lui	a2,00023078
	lui	a0,0002307B
	c.mv	a5,s0
	addi	a4,zero,+0000013C
	addi	a3,a3,-00000148
	addi	a2,a2,+000001B4
	addi	a0,a0,-000001C4
	jal	ra,00000000230018FA
	c.j	0000000023044082

l230441B0:
	jal	ra,0000000023033AF0
	c.j	0000000023044186

l230441B6:
	addi	a2,zero,+00000041
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,000000002306D1BC
	sub	a2,s5,s0
	c.mv	a1,s0
	c.addi4spn	a0,0000000C
	jal	ra,000000002306CF80
	c.addi4spn	a2,00000008
	c.addi4spn	a1,00000004
	c.addi4spn	a0,0000000C
	jal	ra,0000000023043CD0
	c.beqz	a0,000000002304420E

l230441DA:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023044208

l230441E4:
	jal	ra,0000000023033B12

l230441E8:
	lui	a3,0002307B
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307B
	addi	a4,zero,+00000147
	addi	a3,a3,-00000148
	addi	a2,a2,-000001B4
	addi	a0,a0,-00000170
	c.j	000000002304407E

l23044208:
	jal	ra,0000000023033AF0
	c.j	00000000230441E8

l2304420E:
	addi	s0,s5,+00000001
	c.li	s4,00000001
	c.j	00000000230440FA

l23044216:
	c.lwsp	tp,000000E4
	c.li	a0,00000000
	sw	a5,s2,+00000000
	c.lwsp	s0,000000E4
	c.sw	s1,0(a5)

l23044222:
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.lwsp	s1,00000198
	c.lwsp	t0,000001B8
	c.lwsp	ra,000001D8
	c.lwsp	t4,000000E8
	c.addi16sp	00000080
	c.jr	ra

l23044238:
	c.li	a0,FFFFFFFE
	c.j	0000000023044222

;; romfs_opendir: 2304423C
romfs_opendir proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,0004200E
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	addi	s2,s2,+00000364
	lw	s0,s2,+00000000
	c.bnez	s0,0000000023044298

l23044254:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023044292

l2304425E:
	jal	ra,0000000023033B12

l23044262:
	lui	a3,0002307B
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307B
	addi	a4,zero,+0000020D
	addi	a3,a3,-00000148
	addi	a2,a2,-000001B4
	addi	a0,a0,+00000048
	jal	ra,00000000230018FA

l23044284:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23044292:
	jal	ra,0000000023033AF0
	c.j	0000000023044262

l23044298:
	addi	a0,zero,+0000005D
	c.mv	s1,a1
	jal	ra,0000000023002878
	c.mv	s0,a0
	c.bnez	a0,00000000230442AA

l230442A6:
	c.li	s0,00000000
	c.j	0000000023044284

l230442AA:
	addi	a2,zero,+0000005D
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.mv	a0,s1
	jal	ra,000000002304400C
	c.bnez	a0,00000000230442F8

l230442C0:
	c.lwsp	s0,00000024
	lw	s2,s2,+00000000
	bne	s1,s2,00000000230442E8

l230442CA:
	addi	a0,s1,+00000010
	jal	ra,000000002306D630
	c.addi	a0,00000010
	c.andi	a0,FFFFFFF0
	addi	a0,a0,+00000050
	c.add	s1,a0
	c.sw	s0,8(s1)

l230442DE:
	c.lwsp	a2,000000E4
	sw	zero,s0,+00000010
	c.sw	s0,12(a5)
	c.j	0000000023044284

l230442E8:
	c.mv	a0,s1
	jal	ra,0000000023043BA2
	c.beqz	a0,00000000230442A6

l230442F0:
	c.add	s2,a0
	sw	s2,s0,+00000008
	c.j	00000000230442DE

l230442F8:
	c.mv	a0,s0
	jal	ra,0000000023002880
	c.j	00000000230442A6

;; romfs_stat: 23044300
romfs_stat proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	a0,a1
	c.mv	s1,a2
	c.addi4spn	a1,00000008
	c.addi4spn	a2,0000000C
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	jal	ra,000000002304400C
	c.mv	s0,a0
	c.beqz	a0,0000000023044366

l2304431E:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,0000000023044360

l23044328:
	jal	ra,0000000023033B12

l2304432C:
	c.mv	a1,a0
	lui	a3,0002307B
	lui	a2,00023078
	lui	a0,0002307B
	c.mv	a5,s0
	addi	a4,zero,+000001EA
	addi	a3,a3,-00000148
	addi	a2,a2,+000001B4
	addi	a0,a0,+00000180
	jal	ra,00000000230018FA
	c.li	s0,FFFFFFFF

l23044352:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23044360:
	jal	ra,0000000023033AF0
	c.j	000000002304432C

l23044366:
	lui	a5,0004200E
	c.lwsp	s0,00000048
	lw	a5,a5,+00000364
	bne	s2,a5,000000002304437A

l23044374:
	sw	zero,s1,+00000010
	c.j	0000000023044352

l2304437A:
	c.mv	a0,s2
	jal	ra,0000000023043B5A
	c.li	a5,00000001
	bne	a0,a5,0000000023044390

l23044386:
	sw	zero,s1,+00000010
	c.lui	a5,00004000

l2304438C:
	c.sw	s1,4(a5)
	c.j	0000000023044352

l23044390:
	c.li	a5,00000002
	bne	a0,a5,00000000230443A2

l23044396:
	c.mv	a0,s2
	jal	ra,0000000023043BCA
	c.sw	s1,16(a0)
	c.lui	a5,00008000
	c.j	000000002304438C

l230443A2:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230443D6

l230443AC:
	jal	ra,0000000023033B12

l230443B0:
	c.mv	a1,a0
	lui	a3,0002307B
	lui	a2,00023078
	lui	a0,0002307B
	addi	a4,zero,+000001FA
	addi	a3,a3,-00000148
	addi	a2,a2,+000001B4
	addi	a0,a0,+000001AC
	jal	ra,00000000230018FA
	c.li	s0,FFFFFFFE
	c.j	0000000023044352

l230443D6:
	jal	ra,0000000023033AF0
	c.j	00000000230443B0

;; romfs_open: 230443DC
romfs_open proc
	lui	a5,0004200E
	lw	a5,a5,+00000364
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.bnez	a5,0000000023044442

l230443F6:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,000000002304443C

l23044400:
	jal	ra,0000000023033B12

l23044404:
	lui	a3,0002307B
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307B
	addi	a4,zero,+00000162
	addi	a3,a3,-00000148
	addi	a2,a2,-000001B4
	addi	a0,a0,+00000048

l23044422:
	jal	ra,00000000230018FA
	c.li	s1,FFFFFFFF

l23044428:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l2304443C:
	jal	ra,0000000023033AF0
	c.j	0000000023044404

l23044442:
	c.mv	s3,a0
	c.mv	a0,a1
	c.mv	s2,a1
	lui	s0,00023078
	jal	ra,000000002306D630
	c.mv	s5,a0
	addi	a0,s0,-0000065C
	jal	ra,000000002306D630
	c.mv	a2,a0
	addi	a1,s0,-0000065C
	c.mv	a0,s2
	jal	ra,000000002306D6BC
	c.mv	s1,a0
	c.bnez	a0,0000000023044490

l2304446A:
	c.li	s0,00000000
	c.li	a3,00000019
	addi	a2,zero,+0000002F
	c.li	a1,00000009
	addi	a0,zero,+0000005F
	c.li	a6,00000001

l2304447A:
	bne	s5,s0,00000000230444C8

l2304447E:
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.mv	a0,s2
	jal	ra,000000002304400C
	beq	a0,zero,00000000230445BE

l2304448C:
	c.li	s1,FFFFFFFE
	c.j	0000000023044428

l23044490:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230444C2

l2304449A:
	jal	ra,0000000023033B12

l2304449E:
	lui	a3,0002307B
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307B
	addi	a4,zero,+00000061
	addi	a3,a3,-00000148
	addi	a2,a2,-000001B4
	addi	a0,a0,-00000058

l230444BC:
	jal	ra,00000000230018FA
	c.j	0000000023044548

l230444C2:
	jal	ra,0000000023033AF0
	c.j	000000002304449E

l230444C8:
	add	a5,s2,s0
	lbu	a4,a5,+00000000
	addi	a5,a4,-00000061
	andi	a5,a5,+000000FF
	bgeu	a3,a5,000000002304451C

l230444DC:
	addi	a5,a4,-00000041
	andi	a5,a5,+000000FF
	bgeu	a3,a5,0000000023044518

l230444E8:
	addi	a5,a4,-00000030
	andi	a5,a5,+000000FF
	bgeu	a1,a5,0000000023044518

l230444F4:
	beq	a4,a2,0000000023044576

l230444F8:
	beq	a4,a0,000000002304451C

l230444FC:
	addi	a4,a4,-0000002D
	andi	a4,a4,+000000FF
	bgeu	a6,a4,000000002304451C

l23044508:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.bnez	a5,0000000023044520

l23044512:
	jal	ra,0000000023033AF0
	c.j	0000000023044524

l23044518:
	beq	a4,a2,0000000023044576

l2304451C:
	c.addi	s0,00000001
	c.j	000000002304447A

l23044520:
	jal	ra,0000000023033B12

l23044524:
	lui	a3,0002307B
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307B
	c.mv	a5,s0
	addi	a4,zero,+00000069
	addi	a3,a3,-00000148
	addi	a2,a2,-000001B4
	addi	a0,a0,-00000030
	jal	ra,00000000230018FA

l23044548:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230445B8

l23044552:
	jal	ra,0000000023033B12

l23044556:
	lui	a3,0002307B
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307B
	addi	a4,zero,+00000168
	addi	a3,a3,-00000148
	addi	a2,a2,-000001B4
	addi	a0,a0,+0000001C
	c.j	0000000023044422

l23044576:
	c.beqz	s0,00000000230445B0

l23044578:
	bne	s0,s4,00000000230445B4

l2304457C:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230445AA

l23044586:
	jal	ra,0000000023033B12

l2304458A:
	lui	a3,0002307B
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307B
	addi	a4,zero,+00000073
	addi	a3,a3,-00000148
	addi	a2,a2,-000001B4
	addi	a0,a0,-00000008
	c.j	00000000230444BC

l230445AA:
	jal	ra,0000000023033AF0
	c.j	000000002304458A

l230445B0:
	c.li	s4,00000000
	c.j	000000002304451C

l230445B4:
	c.mv	s4,s0
	c.j	000000002304451C

l230445B8:
	jal	ra,0000000023033AF0
	c.j	0000000023044556

l230445BE:
	c.lwsp	s0,000000E4
	sw	zero,s3,+00000008
	sw	a5,s3,+00000004
	c.j	0000000023044428

;; romfs_register: 230445CA
;;   Called from:
;;     23001376 (in aos_loop_proc)
romfs_register proc
	c.addi16sp	FFFFFFD0
	lui	a1,0004200E
	lui	a0,0002307B
	c.swsp	s2,00000010
	c.li	a2,00000002
	addi	s2,a1,+00000360
	addi	a0,a0,+000000C4
	addi	a1,a1,+00000360
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	jal	ra,0000000023067620
	lui	s0,0002307B
	c.beqz	a0,0000000023044638

l230445F4:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.mv	s1,a0
	c.beqz	a5,0000000023044632

l23044600:
	jal	ra,0000000023033B12

l23044604:
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307B
	c.mv	a5,s1
	addi	a4,zero,+00000086
	addi	a3,s0,-00000148
	addi	a2,a2,-000001B4
	addi	a0,a0,+000000CC
	jal	ra,00000000230018FA

l23044624:
	c.li	a0,FFFFFFFF

l23044626:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l23044632:
	jal	ra,0000000023033AF0
	c.j	0000000023044604

l23044638:
	c.li	a2,0000001C
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,000000002306D1BC
	lw	a0,s2,+00000000
	c.addi4spn	a1,00000004
	jal	ra,00000000230677BA
	c.lwsp	t3,00000024
	c.bnez	s1,0000000023044684

l23044650:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,000000002304467E

l2304465A:
	jal	ra,0000000023033B12

l2304465E:
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307B
	addi	a4,zero,+0000008D
	addi	a3,s0,-00000148
	addi	a2,a2,-000001B4
	addi	a0,a0,+00000118

l23044678:
	jal	ra,00000000230018FA
	c.j	0000000023044624

l2304467E:
	jal	ra,0000000023033AF0
	c.j	000000002304465E

l23044684:
	lui	s2,0002307B
	addi	a0,s2,+00000144
	jal	ra,000000002306D630
	c.mv	a2,a0
	addi	a1,s2,+00000144
	c.mv	a0,s1
	jal	ra,000000002306CEF8
	c.beqz	a0,00000000230446CE

l2304469E:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230446C8

l230446A8:
	jal	ra,0000000023033B12

l230446AC:
	lui	a2,00023079
	c.mv	a1,a0
	lui	a0,0002307B
	addi	a4,zero,+00000092
	addi	a3,s0,-00000148
	addi	a2,a2,-000001B4
	addi	a0,a0,+00000150
	c.j	0000000023044678

l230446C8:
	jal	ra,0000000023033AF0
	c.j	00000000230446AC

l230446CE:
	c.lwsp	t3,00000084
	lui	a5,0004200E
	c.li	a4,00000000
	addi	a3,zero,+00000040
	addi	a1,zero,+00000098
	addi	a0,s0,-00000148
	sw	a2,a5,+00000364
	jal	ra,0000000023001928
	lui	a1,0002307B
	lui	a0,00023078
	c.li	a2,00000000
	addi	a1,a1,+00000074
	addi	a0,a0,-0000065C
	c.jal	0000000023044C2E
	c.j	0000000023044626

;; utils_bin2hex: 23044700
;;   Called from:
;;     23007096 (in wifi_mgmr_psk_cal)
utils_bin2hex proc
	lui	a3,0002307B
	add	a7,a1,a2
	c.mv	a4,a0
	addi	a3,a3,+000001D4

l2304470E:
	bne	a1,a7,0000000023044718

l23044712:
	c.slli	a2,01
	c.add	a0,a2
	c.jr	ra

l23044718:
	c.addi	a1,00000001
	lbu	a5,a1,-00000001
	c.addi	a4,00000002
	srli	a6,a5,00000004
	c.add	a6,a3
	c.andi	a5,0000000F
	lbu	a6,a6,+00000000
	c.add	a5,a3
	lbu	a5,a5,+00000000
	sb	a6,a4,+00000FFE
	sb	a5,a4,+00000FFF
	c.j	000000002304470E

;; utils_dns_domain_get: 2304473C
;;   Called from:
;;     23030566 (in get_dns_request)
utils_dns_domain_get proc
	lw	a7,a2,+00000000
	lbu	a4,a0,+00000000
	c.li	a5,00000000
	c.li	t1,00000001
	addi	t3,zero,+0000002E

l2304474C:
	c.beqz	a4,0000000023044752

l2304474E:
	blt	zero,a7,0000000023044758

l23044752:
	c.sw	a2,0(a5)
	c.li	a0,00000000
	c.jr	ra

l23044758:
	add	t4,a0,t1
	lbu	t5,t4,+00000000
	add	t4,a1,a5
	c.addi	a4,FFFFFFFF
	sb	t5,t4,+00000000
	addi	a3,t1,+00000001
	addi	a6,a5,+00000001
	c.addi	a7,FFFFFFFF
	c.bnez	a4,000000002304478E

l23044776:
	beq	a7,zero,000000002304478E

l2304477A:
	c.add	a6,a1
	sb	t3,a6,+00000000
	c.add	a3,a0
	lbu	a4,a3,+00000000
	addi	a6,a5,+00000002
	addi	a3,t1,+00000002

l2304478E:
	c.mv	a5,a6
	c.mv	t1,a3
	c.j	000000002304474C

;; utils_list_init: 23044794
;;   Called from:
;;     2300A7B4 (in ipc_host_init)
;;     23036538 (in bl_dma_init)
;;     230678D8 (in bloop_init)
utils_list_init proc
	sw	zero,a0,+00000000
	sw	zero,a0,+00000004
	c.jr	ra

;; utils_list_push_back: 2304479E
;;   Called from:
;;     23009EA0 (in bl_output)
utils_list_push_back proc
	c.lw	a0,0(a5)
	c.bnez	a5,00000000230447AC

l230447A2:
	c.sw	a0,0(a1)

l230447A4:
	c.sw	a0,4(a1)
	sw	zero,a1,+00000000
	c.jr	ra

l230447AC:
	c.lw	a0,4(a5)
	c.sw	a5,0(a1)
	c.j	00000000230447A4

;; utils_list_pop_front: 230447B2
;;   Called from:
;;     23009C80 (in bl_tx_try_flush)
;;     2303633A (in bl_dma_IRQHandler)
;;     23067C4C (in bloop_run)
utils_list_pop_front proc
	c.lw	a0,0(a5)
	c.beqz	a5,00000000230447BA

l230447B6:
	c.lw	a5,0(a4)
	c.sw	a0,0(a4)

l230447BA:
	c.mv	a0,a5
	c.jr	ra

;; utils_hexdump: 230447BE
;;   Called from:
;;     230066FC (in cmd_wifi_mib)
;;     2302F222 (in hexdump_cmd)
utils_hexdump proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s4,00000014
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s3,00000094
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	s10,00000008
	c.swsp	s11,00000084
	andi	a5,a1,+0000000F
	c.mv	s4,a0
	c.mv	s2,a1
	c.li	s1,00000000
	c.beqz	a5,00000000230447EA

l230447E6:
	c.li	s1,00000010
	c.sub	s1,a5

l230447EA:
	lui	s3,00023082
	c.add	s1,s2
	c.li	s0,00000000
	lui	s6,0002307B
	lui	s7,00023077
	lui	s8,0002306F
	c.li	s9,0000000F
	addi	s3,s3,+000005B1
	lui	s10,00023076

l23044808:
	bne	s1,s0,000000002304482A

l2304480C:
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

l2304482A:
	andi	s11,s0,+0000000F
	bne	s11,zero,000000002304483C

l23044832:
	c.mv	a1,s0
	addi	a0,s6,+000001E8
	jal	ra,0000000023003AC6

l2304483C:
	bgeu	s0,s2,0000000023044878

l23044840:
	add	a5,s4,s0
	lbu	a1,a5,+00000000
	addi	a0,s8,+0000011C
	jal	ra,0000000023003AC6

l23044850:
	addi	s5,s0,+00000001
	bne	s11,s9,0000000023044874

l23044858:
	addi	s11,s0,-0000000F
	c.li	a5,00000011
	bgeu	s5,s11,0000000023044864

l23044862:
	c.li	a5,00000001

l23044864:
	c.addi	s0,FFFFFFF0
	c.add	s0,a5

l23044868:
	bne	s11,s0,0000000023044882

l2304486C:
	addi	a0,s10,+0000076C
	jal	ra,0000000023003A8A

l23044874:
	c.mv	s0,s5
	c.j	0000000023044808

l23044878:
	addi	a0,s7,+000000A0
	jal	ra,0000000023003AC6
	c.j	0000000023044850

l23044882:
	addi	a0,zero,+00000020
	bgeu	s11,s2,00000000230448A0

l2304488A:
	add	a5,s4,s11
	lbu	a0,a5,+00000000
	add	a5,a0,s3
	lbu	a5,a5,+00000000
	andi	a5,a5,+00000097
	c.beqz	a5,00000000230448A8

l230448A0:
	jal	ra,0000000023003A74
	c.addi	s11,00000001
	c.j	0000000023044868

l230448A8:
	addi	a0,zero,+0000002E
	c.j	00000000230448A0

;; utils_getopt_init: 230448AE
;;   Called from:
;;     23006726 (in cmd_wifi_cfg)
utils_getopt_init proc
	c.beqz	a0,00000000230448C6

l230448B0:
	c.li	a5,00000001
	sw	zero,a0,+00000000
	c.sw	a0,4(a5)
	c.sw	a0,8(a1)
	sw	zero,a0,+0000000C
	sw	zero,a0,+00000010
	c.li	a0,00000000
	c.jr	ra

l230448C6:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; utils_getopt: 230448CA
;;   Called from:
;;     23006752 (in cmd_wifi_cfg)
utils_getopt proc
	c.beqz	a0,000000002304491E

l230448CC:
	c.lw	a0,4(a4)
	c.mv	a5,a0
	c.li	a0,FFFFFFFF
	bge	a4,a1,0000000023044A20

l230448D6:
	c.mv	a7,a2
	slli	a2,a4,00000002
	c.add	a2,a7
	lw	a6,a2,+00000000
	beq	a6,zero,0000000023044A20

l230448E6:
	lbu	t1,a6,+00000000
	addi	t3,zero,+0000002D
	beq	t1,t3,0000000023044906

l230448F2:
	lbu	a3,a3,+00000000
	bne	a3,t3,0000000023044A20

l230448FA:
	c.addi	a4,00000001
	c.sw	a5,4(a4)
	c.lw	a2,0(a4)
	c.li	a0,00000001
	c.sw	a5,0(a4)
	c.jr	ra

l23044906:
	lbu	t3,a6,+00000001
	c.li	a0,FFFFFFFF
	beq	t3,zero,0000000023044A20

l23044910:
	bne	t3,t1,0000000023044922

l23044914:
	lbu	a0,a6,+00000002
	c.bnez	a0,0000000023044922

l2304491A:
	c.addi	a4,00000001
	c.sw	a5,4(a4)

l2304491E:
	c.li	a0,FFFFFFFF
	c.jr	ra

l23044922:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a5,16(a0)
	c.bnez	a0,000000002304492E

l2304492A:
	c.li	a0,00000001
	c.sw	a5,16(a0)

l2304492E:
	lw	t3,a5,+00000010
	lw	a6,a2,+00000000
	c.add	a6,t3
	lbu	a0,a6,+00000000
	sltu	t1,zero,a0
	c.add	t1,t3
	sw	t1,a5,+00000010
	c.lw	a2,0(a2)
	c.add	t1,a2
	lbu	a2,t1,+00000000
	c.bnez	a2,0000000023044958

l23044950:
	c.addi	a4,00000001
	c.sw	a5,4(a4)
	sw	zero,a5,+00000010

l23044958:
	lbu	a4,a3,+00000000
	addi	a4,a4,-0000002B
	andi	a4,a4,+000000FD
	c.bnez	a4,0000000023044968

l23044966:
	c.addi	a3,00000001

l23044968:
	c.li	a4,00000000

l2304496A:
	addi	a2,a4,+00000001
	c.add	a4,a3
	lbu	t1,a4,+00000000
	beq	t1,zero,00000000230449A0

l23044978:
	bne	a0,t1,000000002304499C

l2304497C:
	addi	t1,zero,+0000003A
	bne	a0,t1,00000000230449A2

l23044984:
	c.sw	a5,12(a0)
	lbu	a3,a3,+00000000
	addi	a4,zero,+0000003A
	bne	a3,a4,0000000023044A06

l23044992:
	addi	a0,zero,+0000003F

l23044996:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2304499C:
	c.mv	a4,a2
	c.j	000000002304496A

l230449A0:
	c.bnez	a0,0000000023044984

l230449A2:
	c.add	a2,a3
	lbu	t1,a2,+00000000
	addi	a2,zero,+0000003A
	bne	t1,a2,0000000023044996

l230449B0:
	sw	zero,a5,+00000000
	lbu	a4,a4,+00000002
	c.lw	a5,16(a2)
	bne	a4,t1,00000000230449C0

l230449BE:
	c.beqz	a2,00000000230449D8

l230449C0:
	c.lw	a5,4(a4)
	addi	t1,a4,+00000001
	c.slli	a4,02
	sw	t1,a5,+00000004
	c.add	a4,a7
	c.lw	a4,0(a4)
	sw	zero,a5,+00000010
	c.add	a4,a2
	c.sw	a5,0(a4)

l230449D8:
	c.lw	a5,4(a4)
	bge	a1,a4,0000000023044996

l230449DE:
	c.sw	a5,12(a0)
	lbu	a3,a3,+00000000
	addi	a4,zero,+0000003A
	addi	a0,zero,+0000003A
	beq	a3,a4,0000000023044996

l230449F0:
	c.lw	a5,8(a5)
	c.beqz	a5,0000000023044992

l230449F4:
	lui	a0,0002307B
	lbu	a2,a6,+00000000
	lw	a1,a7,+00000000
	addi	a0,a0,+00000214
	c.j	0000000023044A1A

l23044A06:
	c.lw	a5,8(a5)
	c.beqz	a5,0000000023044992

l23044A0A:
	lbu	a2,a6,+00000000
	lw	a1,a7,+00000000
	lui	a0,0002307B
	addi	a0,a0,+000001F4

l23044A1A:
	jal	ra,0000000023003AC6
	c.j	0000000023044992

l23044A20:
	c.jr	ra

;; params_filter.isra.0.constprop.1: 23044A22
;;   Called from:
;;     23044B02 (in get_uint8_from_string)
;;     23044B28 (in get_uint16_from_string)
params_filter.isra.0.constprop.1 proc
	lbu	a4,a0,+00000000
	addi	a5,zero,+00000030
	c.li	a3,0000000A
	bne	a4,a5,0000000023044A44

l23044A30:
	lbu	a5,a0,+00000001
	addi	a4,zero,+00000058
	andi	a5,a5,+000000DF
	bne	a5,a4,0000000023044A44

l23044A40:
	c.addi	a0,00000002
	c.li	a3,00000010

l23044A44:
	c.li	a5,00000000
	c.li	a7,00000009
	c.li	t1,0000000A
	c.li	t3,00000010
	c.li	a6,00000005
	c.j	0000000023044A68

l23044A50:
	addi	a2,a4,-00000030
	andi	a2,a2,+000000FF
	add	a5,a5,a3
	bltu	a7,a2,0000000023044A74

l23044A60:
	addi	a5,a5,-00000030

l23044A64:
	c.add	a5,a4

l23044A66:
	c.addi	a0,00000001

l23044A68:
	lbu	a4,a0,+00000000
	c.bnez	a4,0000000023044A50

l23044A6E:
	c.sw	a1,0(a5)
	c.li	a0,00000000
	c.jr	ra

l23044A74:
	beq	a3,t1,0000000023044AA0

l23044A78:
	bne	a3,t3,0000000023044A66

l23044A7C:
	addi	a2,a4,-00000061
	andi	a2,a2,+000000FF
	bltu	a6,a2,0000000023044A8E

l23044A88:
	addi	a5,a5,-00000057
	c.j	0000000023044A64

l23044A8E:
	addi	a2,a4,-00000041
	andi	a2,a2,+000000FF
	bltu	a6,a2,0000000023044A66

l23044A9A:
	addi	a4,a4,-00000037
	c.j	0000000023044A64

l23044AA0:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; get_bytearray_from_string: 23044AA4
;;   Called from:
;;     23023FC4 (in ble_select_conn)
;;     2302403E (in ble_disconnect)
;;     230240FC (in ble_connect)
;;     23024728 (in ble_write)
;;     23024AF6 (in ble_unpair)
;;     23025060 (in ble_write_without_rsp)
get_bytearray_from_string proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.mv	s1,a0
	c.mv	s3,a1
	c.mv	s2,a2
	c.li	s0,00000000

l23044AB8:
	blt	s0,s2,0000000023044ACA

l23044ABC:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23044ACA:
	c.lw	s1,0(a1)
	c.li	a2,00000002
	c.addi4spn	a0,0000000C
	jal	ra,000000002306D7AC
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	sb	zero,sp,+0000000E
	jal	ra,000000002306E1E0
	add	a5,s3,s0
	sb	a0,a5,+00000000
	c.lw	s1,0(a5)
	c.addi	s0,00000001
	c.addi	a5,00000002
	c.sw	s1,0(a5)
	c.j	0000000023044AB8

;; get_uint8_from_string: 23044AF4
;;   Called from:
;;     23023D58 (in ble_set_tx_pwr)
;;     23023F5A (in ble_security)
;;     23023FB6 (in ble_select_conn)
;;     23024030 (in ble_disconnect)
;;     230240E6 (in ble_connect)
;;     230241DC (in ble_start_advertise)
;;     23024206 (in ble_start_advertise)
;;     2302435E (in ble_set_adv_channel)
;;     23024942 (in ble_discover)
;;     23024AE8 (in ble_unpair)
;;     23024B46 (in ble_start_scan)
;;     23024B52 (in ble_start_scan)
;;     23025022 (in ble_write_without_rsp)
get_uint8_from_string proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.lw	a0,0(a0)
	c.mv	s0,a1
	c.addi4spn	a1,0000000C
	c.swsp	zero,00000084
	jal	ra,0000000023044A22
	c.li	a5,00000000
	c.bnez	a0,0000000023044B0E

l23044B0A:
	lbu	a5,sp,+0000000C

l23044B0E:
	sb	a5,s0,+00000000
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; get_uint16_from_string: 23044B1A
;;   Called from:
;;     23024266 (in ble_start_advertise)
;;     23024270 (in ble_start_advertise)
;;     2302458C (in ble_set_data_len)
;;     2302459A (in ble_set_data_len)
;;     23024620 (in ble_subscribe)
;;     2302462C (in ble_subscribe)
;;     23024638 (in ble_subscribe)
;;     230246E6 (in ble_write)
;;     230246F2 (in ble_write)
;;     230246FE (in ble_write)
;;     230247C6 (in ble_read)
;;     230247D2 (in ble_read)
;;     23024964 (in ble_discover)
;;     23024980 (in ble_discover)
;;     2302498C (in ble_discover)
;;     23024A6E (in ble_conn_update)
;;     23024A7A (in ble_conn_update)
;;     23024A84 (in ble_conn_update)
;;     23024A90 (in ble_conn_update)
;;     23024B5E (in ble_start_scan)
;;     23024B68 (in ble_start_scan)
;;     2302502C (in ble_write_without_rsp)
;;     23025038 (in ble_write_without_rsp)
get_uint16_from_string proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.lw	a0,0(a0)
	c.mv	s0,a1
	c.addi4spn	a1,0000000C
	c.swsp	zero,00000084
	jal	ra,0000000023044A22
	c.li	a5,00000000
	c.bnez	a0,0000000023044B34

l23044B30:
	lhu	a5,sp,+0000000C

l23044B34:
	sh	a5,s0,+00000000
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; utils_tlv_bl_pack_auto: 23044B40
;;   Called from:
;;     230091D8 (in bl_send_cfg_task_req)
utils_tlv_bl_pack_auto proc
	c.li	a5,00000001
	beq	a2,a5,0000000023044B52

l23044B46:
	c.li	a5,00000007
	beq	a2,a5,0000000023044B64

l23044B4C:
	c.li	a5,FFFFFFFE

l23044B4E:
	c.mv	a0,a5
	c.jr	ra

l23044B52:
	lbu	a4,a3,+00000000

l23044B56:
	c.li	a3,00000003
	c.li	a5,FFFFFFFF
	bge	a3,a1,0000000023044B4E

l23044B5E:
	c.sw	a0,0(a4)
	c.li	a5,00000004
	c.j	0000000023044B4E

l23044B64:
	c.lw	a3,0(a4)
	c.j	0000000023044B56

;; utils_tlv_bl_unpack_auto: 23044B68
;;   Called from:
;;     23064A1A (in cfg_start_req_handler)
utils_tlv_bl_unpack_auto proc
	c.li	a5,00000001
	beq	a2,a5,0000000023044B78

l23044B6E:
	c.li	a5,00000007
	beq	a2,a5,0000000023044B92

l23044B74:
	c.li	a0,FFFFFFFE
	c.jr	ra

l23044B78:
	c.li	a5,00000003
	bge	a5,a1,0000000023044B8C

l23044B7E:
	c.lw	a0,0(a5)
	c.li	a0,00000004
	sltu	a5,zero,a5

l23044B86:
	sb	a5,a3,+00000000
	c.jr	ra

l23044B8C:
	c.li	a5,00000001
	c.li	a0,FFFFFFFF
	c.j	0000000023044B86

l23044B92:
	c.li	a5,00000003
	bge	a5,a1,0000000023044BA0

l23044B98:
	c.lw	a0,0(a5)
	c.li	a0,00000004

l23044B9C:
	c.sw	a3,0(a5)
	c.jr	ra

l23044BA0:
	c.li	a5,00000000
	c.li	a0,FFFFFFFF
	c.j	0000000023044B9C

;; aos_register_driver: 23044BA6
;;   Called from:
;;     23002B40 (in vfs_device_init)
;;     2303724E (in dev_uart_init)
aos_register_driver proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,00042017
	c.swsp	s5,00000088
	c.mv	s5,a0
	lw	a0,s1,-00000068
	c.swsp	s4,0000000C
	c.mv	s4,a1
	c.li	a1,FFFFFFFF
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.mv	s3,a2
	c.swsp	zero,00000084
	jal	ra,000000002303296C
	c.li	a5,00000001
	bne	a0,a5,0000000023044C18

l23044BD2:
	c.mv	s2,a0
	c.addi4spn	a1,0000000C
	c.mv	a0,s5
	jal	ra,00000000230020CC
	c.mv	s0,a0
	c.bnez	a0,0000000023044BF0

l23044BE0:
	c.lwsp	a2,000000E4
	sw	s4,a5,+00000000
	sb	s2,a5,+00000010
	c.lwsp	a2,000000E4
	sw	s3,a5,+00000004

l23044BF0:
	lw	a0,s1,-00000068
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528
	c.li	a5,00000001
	beq	a0,a5,0000000023044C1A

l23044C04:
	c.lwsp	a2,000000E4
	c.lw	a5,8(a0)
	c.beqz	a0,0000000023044C0E

l23044C0A:
	jal	ra,0000000023035A72

l23044C0E:
	c.lwsp	a2,00000044
	c.li	a2,00000014
	c.li	a1,00000000
	jal	ra,000000002306D1BC

l23044C18:
	c.li	s0,FFFFFFFF

l23044C1A:
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

;; aos_register_fs: 23044C2E
;;   Called from:
;;     230446FC (in romfs_register)
aos_register_fs proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,00042017
	c.swsp	s4,0000000C
	c.mv	s4,a0
	lw	a0,s1,-00000068
	c.swsp	s3,0000008C
	c.mv	s3,a1
	c.li	a1,FFFFFFFF
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.mv	s2,a2
	c.swsp	zero,00000084
	jal	ra,000000002303296C
	c.li	a5,00000001
	bne	a0,a5,0000000023044C9E

l23044C58:
	c.addi4spn	a1,0000000C
	c.mv	a0,s4
	jal	ra,00000000230020CC
	c.mv	s0,a0
	c.bnez	a0,0000000023044C76

l23044C64:
	c.lwsp	a2,000000E4
	c.li	a4,00000003
	sw	s3,a5,+00000000
	sb	a4,a5,+00000010
	c.lwsp	a2,000000E4
	sw	s2,a5,+00000004

l23044C76:
	lw	a0,s1,-00000068
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528
	c.li	a5,00000001
	beq	a0,a5,0000000023044CA0

l23044C8A:
	c.lwsp	a2,000000E4
	c.lw	a5,8(a0)
	c.beqz	a0,0000000023044C94

l23044C90:
	jal	ra,0000000023035A72

l23044C94:
	c.lwsp	a2,00000044
	c.li	a2,00000014
	c.li	a1,00000000
	jal	ra,000000002306D1BC

l23044C9E:
	c.li	s0,FFFFFFFF

l23044CA0:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; vfs_uart_open: 23044CB2
vfs_uart_open proc
	c.bnez	a1,0000000023044CC2

l23044CB4:
	c.li	a0,FFFFFFEA

l23044CB6:
	c.jr	ra

l23044CB8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,FFFFFFEA
	c.addi	sp,00000010
	c.jr	ra

l23044CC2:
	c.lw	a1,0(a5)
	c.beqz	a5,0000000023044CB4

l23044CC6:
	lbu	a3,a5,+00000011
	c.li	a4,00000001
	c.li	a0,00000000
	bne	a3,a4,0000000023044CB6

l23044CD2:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a5,4(s0)
	addi	a0,s0,+00000020
	jal	ra,00000000230027A2
	c.lw	s0,24(a0)
	c.li	a2,00000000
	c.li	a1,00000001
	jal	ra,0000000023032DE2
	c.sw	s0,16(a0)
	c.lw	s0,28(a0)
	c.li	a2,00000000
	c.li	a1,00000001
	jal	ra,0000000023032DE2
	c.lw	s0,16(a5)
	c.sw	s0,20(a0)
	c.beqz	a5,0000000023044CB8

l23044CFE:
	c.beqz	a0,0000000023044CB8

l23044D00:
	lui	a2,00023045
	addi	a2,a2,-00000282
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002303739C
	lui	a2,00023045
	c.mv	a0,s0
	addi	a2,a2,-000002D4
	c.li	a1,00000001
	jal	ra,000000002303739C
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230372B6

;; __uart_rx_irq: 23044D2C
__uart_rx_irq proc
	c.addi16sp	FFFFFFA0
	addi	a2,zero,+00000040
	c.li	a4,00000000
	c.addi4spn	a3,00000008
	c.addi4spn	a1,00000010
	c.swsp	s0,0000002C
	c.swsp	ra,000000AC
	c.mv	s0,a0
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	jal	ra,0000000023037306
	c.lwsp	s0,00000084
	c.beqz	a2,0000000023044D5C

l23044D4A:
	c.lw	s0,16(a0)
	c.addi4spn	a3,0000000C
	c.addi4spn	a1,00000010
	jal	ra,00000000230330B4
	c.lwsp	a2,000000E4
	c.beqz	a5,0000000023044D5C

l23044D58:
	jal	ra,0000000023033E52

l23044D5C:
	c.lw	s0,36(a5)
	c.beqz	a5,0000000023044D76

l23044D60:
	c.lw	s0,40(a4)
	lhu	a5,a4,+00000006
	ori	a5,a5,+00000001
	sh	a5,a4,+00000006
	c.lw	s0,36(a5)
	c.lw	s0,44(a1)
	c.lw	s0,40(a0)
	c.jalr	a5

l23044D76:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.addi16sp	00000060
	c.jr	ra

;; __uart_tx_irq: 23044D7E
__uart_tx_irq proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.mv	s0,a0
	c.lw	a0,20(a0)
	c.addi4spn	a3,0000001C
	c.li	a2,00000001
	addi	a1,sp,+0000001B
	c.swsp	zero,0000008C
	jal	ra,0000000023033264
	c.lwsp	t3,000000E4
	c.beqz	a5,0000000023044DA2

l23044D9A:
	c.swsp	a0,00000084
	jal	ra,0000000023033E52
	c.lwsp	a2,00000044

l23044DA2:
	c.li	a5,00000001
	bne	a0,a5,0000000023044DBE

l23044DA8:
	c.li	a3,00000000
	c.li	a2,00000001
	addi	a1,sp,+0000001B
	c.mv	a0,s0
	jal	ra,0000000023037348

l23044DB6:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

l23044DBE:
	c.mv	a0,s0
	jal	ra,00000000230372A2
	c.j	0000000023044DB6

;; vfs_uart_close: 23044DC6
vfs_uart_close proc
	c.beqz	a0,0000000023044E02

l23044DC8:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023044E02

l23044DCC:
	lbu	a3,a5,+00000011
	c.li	a4,00000001
	c.li	a0,00000000
	bne	a3,a4,0000000023044E10

l23044DD8:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a5,4(s0)
	c.beqz	s0,0000000023044E06

l23044DE2:
	addi	a0,s0,+00000020
	jal	ra,00000000230027C2
	c.lw	s0,16(a0)
	jal	ra,0000000023032F0C
	c.lw	s0,20(a0)
	jal	ra,0000000023032F0C
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002303737C

l23044E02:
	c.li	a0,FFFFFFEA
	c.jr	ra

l23044E06:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,FFFFFFEA
	c.addi	sp,00000010
	c.jr	ra

l23044E10:
	c.jr	ra

;; vfs_uart_read: 23044E12
vfs_uart_read proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.li	s0,FFFFFFEA
	c.beqz	a0,0000000023044E76

l23044E26:
	c.lw	a0,0(a5)
	c.li	s0,FFFFFFEA
	c.beqz	a5,0000000023044E76

l23044E2C:
	lw	s3,a5,+00000004
	c.beqz	a2,0000000023044E76

l23044E32:
	beq	s3,zero,0000000023044E76

l23044E36:
	addi	s5,s3,+00000020
	c.mv	s4,a1
	c.mv	a0,s5
	c.li	a1,FFFFFFFF
	c.mv	s2,a2
	jal	ra,00000000230027C8
	lbu	s1,s3,+00000034
	c.li	s0,00000000
	c.addi	s1,FFFFFFFF
	sltiu	s1,s1,+00000001
	sub	s1,zero,s1

l23044E56:
	lw	a0,s3,+00000010
	sub	a2,s2,s0
	add	a1,s4,s0
	c.mv	a3,s1
	jal	ra,0000000023033166
	c.add	s0,a0
	beq	s0,s2,0000000023044E70

l23044E6E:
	c.bnez	s1,0000000023044E56

l23044E70:
	c.mv	a0,s5
	jal	ra,00000000230027E0

l23044E76:
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

;; vfs_uart_write: 23044E8A
vfs_uart_write proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.li	s0,FFFFFFEA
	c.beqz	a0,0000000023044EB4

l23044E96:
	c.lw	a0,0(a5)
	c.li	s0,FFFFFFEA
	c.beqz	a5,0000000023044EB4

l23044E9C:
	c.lw	a5,4(s1)
	c.beqz	s1,0000000023044EB4

l23044EA0:
	c.lw	s1,20(a0)
	c.li	a3,00000000
	jal	ra,0000000023032F8E
	c.mv	s0,a0
	bge	zero,a0,0000000023044EB4

l23044EAE:
	c.mv	a0,s1
	jal	ra,000000002303728E

l23044EB4:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; vfs_uart_poll: 23044EC0
vfs_uart_poll proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a0,0(a5)
	c.mv	s5,a1
	c.li	a1,FFFFFFFF
	c.lw	a5,4(s0)
	c.mv	s2,a2
	c.mv	s3,a3
	addi	s1,s0,+00000020
	c.mv	a0,s1
	c.mv	s4,a4
	jal	ra,00000000230027C8
	bne	s5,zero,0000000023044F16

l23044EEC:
	jal	ra,00000000230347A4
	sw	zero,s0,+00000024
	sw	zero,s0,+0000002C
	jal	ra,00000000230347B8

l23044EFC:
	c.mv	a0,s1
	jal	ra,00000000230027E0
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

l23044F16:
	jal	ra,00000000230347A4
	sw	s2,s0,+00000024
	sw	s3,s0,+00000028
	sw	s4,s0,+0000002C
	jal	ra,00000000230347B8
	c.lw	s0,16(a0)
	jal	ra,0000000023033316
	c.li	a5,00000001
	beq	a0,a5,0000000023044EFC

l23044F36:
	c.lw	s0,40(a4)
	c.mv	a1,s4
	c.mv	a0,s3
	lhu	a5,a4,+00000006
	ori	a5,a5,+00000001
	sh	a5,a4,+00000006
	c.jalr	s2
	c.j	0000000023044EFC

;; vfs_uart_sync: 23044F4C
vfs_uart_sync proc
	c.beqz	a0,0000000023044F86

l23044F4E:
	c.lw	a0,0(a5)
	c.li	a0,FFFFFFEA
	c.beqz	a5,0000000023044F8A

l23044F54:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.lw	a5,4(s0)
	c.beqz	s0,0000000023044F7C

l23044F60:
	addi	s1,s0,+00000020
	c.li	a1,FFFFFFFF
	c.mv	a0,s1
	jal	ra,00000000230027C8
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023037BFC
	c.mv	a0,s1
	jal	ra,00000000230027E0
	c.li	a0,00000000

l23044F7C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23044F86:
	c.li	a0,FFFFFFEA
	c.jr	ra

l23044F8A:
	c.jr	ra

;; uart_ioctl_cmd_waimode: 23044F8C
uart_ioctl_cmd_waimode proc
	c.addi16sp	FFFFFFD0
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
	c.li	s0,FFFFFFEA
	c.beqz	a2,0000000023044FEC

l23044FA6:
	lw	s2,a2,+00000008
	addi	a3,zero,+000003E8
	lw	s6,a2,+00000004
	add	s2,a3,s2
	c.mv	s1,a2
	c.mv	s5,a1
	c.mv	s4,a0
	c.li	s0,00000000
	addi	s7,zero,+000003E7
	c.li	s8,00000004
	srl	s3,s2,a3

l23044FC8:
	c.lw	s1,0(a1)
	lw	a0,s4,+00000010
	sub	a2,s6,s0
	c.add	a1,s0
	c.mv	a3,s3
	jal	ra,0000000023033166
	c.add	s0,a0
	beq	s6,s0,0000000023044FEC

l23044FE0:
	bgeu	s7,s2,0000000023044FEC

l23044FE4:
	bne	s5,s8,0000000023044FC8

l23044FE8:
	bge	zero,s0,0000000023044FC8

l23044FEC:
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
	c.lwsp	s0,0000000C
	c.addi16sp	00000030
	c.jr	ra

;; uart_ioctl_cmd_setconfig: 23045006
uart_ioctl_cmd_setconfig proc
	c.beqz	a1,000000002304502C

l23045008:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a2,a1,+00000004
	c.li	a5,00000001
	beq	a2,a5,000000002304501E

l23045016:
	c.li	a5,00000002
	beq	a2,a5,000000002304501E

l2304501C:
	c.li	a2,00000000

l2304501E:
	c.lw	a1,0(a1)
	jal	ra,0000000023037C18
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2304502C:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; vfs_uart_ioctl: 23045030
vfs_uart_ioctl proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.li	s0,FFFFFFEA
	c.beqz	a0,0000000023045086

l23045040:
	c.lw	a0,0(a5)
	c.li	s0,FFFFFFEA
	c.beqz	a5,0000000023045086

l23045046:
	c.lw	a5,4(s1)
	c.beqz	s1,0000000023045086

l2304504A:
	addi	s3,s1,+00000020
	c.mv	s2,a1
	c.mv	a0,s3
	c.li	a1,FFFFFFFF
	c.swsp	a2,00000084
	jal	ra,00000000230027C8
	addi	a5,s2,-00000002
	c.li	a4,00000006
	bltu	a4,a5,0000000023045080

l23045064:
	lui	a4,0002307B
	c.slli	a5,02
	addi	a4,a4,+0000023C
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.lwsp	a2,00000084
	c.jr	a5
23045076                   CA 85 26 85 EF F0 3F F1 2A 84       ..&...?.*.

l23045080:
	c.mv	a0,s3
	jal	ra,00000000230027E0

l23045086:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra
23045096                   81 45 26 85 EF 20 3F B6 7D 54       .E&.. ?.}T
230450A0 C5 B7 B2 85 26 85 EF 20 BF B6 D5 BF B2 85 26 85 ....&.. ......&.
230450B0 EF F0 7F F5 E9 B7 85 47 23 8A F4 02 CD B7 89 47 .......G#......G
230450C0 E5 BF                                           ..             

;; UART_Init: 230450C2
;;   Called from:
;;     23035DCC (in bl_uart_init)
;;     23035F50 (in bl_uart_setconfig)
UART_Init proc
	lui	a5,00023082
	c.slli	a0,02
	addi	a5,a5,+000007CC
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
	bgeu	a3,a4,00000000230450EE

l230450EC:
	c.addi	a5,00000001

l230450EE:
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
	beq	a3,a0,0000000023045190

l2304510A:
	c.beqz	a3,000000002304518A

l2304510C:
	c.li	a0,00000002
	beq	a3,a0,000000002304519A

l23045112:
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
	bne	a6,a0,0000000023045148

l23045144:
	ori	a3,a4,+00000002

l23045148:
	lbu	a0,a1,+0000000C
	c.li	a4,00000001
	bne	a0,a4,00000000230451AC

l23045152:
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	c.or	a5,a4

l2304515A:
	lbu	a6,a1,+0000000D
	c.li	a0,00000001
	andi	a4,a5,-00000003
	bne	a6,a0,000000002304516C

l23045168:
	ori	a4,a5,+00000002

l2304516C:
	c.sw	a2,0(a3)
	c.sw	a2,4(a4)
	c.lw	a2,12(a4)
	lbu	a1,a1,+0000000E
	c.li	a3,00000001
	andi	a5,a4,-00000002
	bne	a1,a3,0000000023045184

l23045180:
	ori	a5,a4,+00000001

l23045184:
	c.sw	a2,12(a5)
	c.li	a0,00000000
	c.jr	ra

l2304518A:
	c.andi	a4,FFFFFFEF
	c.andi	a5,FFFFFFEF
	c.j	0000000023045112

l23045190:
	ori	a4,a4,+00000030
	ori	a5,a5,+00000030
	c.j	0000000023045112

l2304519A:
	andi	a4,a4,-00000021
	andi	a5,a5,-00000021
	ori	a4,a4,+00000010
	ori	a5,a5,+00000010
	c.j	0000000023045112

l230451AC:
	c.lui	a4,FFFFF000
	addi	a4,a4,+000007FF
	c.and	a5,a4
	c.j	000000002304515A

;; UART_FifoConfig: 230451B6
;;   Called from:
;;     23035DDC (in bl_uart_init)
UART_FifoConfig proc
	lui	a5,00023082
	c.slli	a0,02
	addi	a5,a5,+000007CC
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
	bne	a0,a2,0000000023045206

l23045202:
	ori	a5,a4,+00000001

l23045206:
	lbu	a1,a1,+00000003
	c.li	a2,00000001
	andi	a4,a5,-00000003
	bne	a1,a2,0000000023045218

l23045214:
	ori	a4,a5,+00000002

l23045218:
	sw	a4,a3,+00000080
	c.li	a0,00000000
	c.jr	ra

;; UART_Enable: 23045220
;;   Called from:
;;     23035DE4 (in bl_uart_init)
;;     23035F60 (in bl_uart_setconfig)
UART_Enable proc
	lui	a5,00023082
	c.slli	a0,02
	addi	a5,a5,+000007CC
	c.add	a5,a0
	andi	a4,a1,+000000FD
	c.lw	a5,0(a5)
	c.bnez	a4,000000002304523C

l23045234:
	c.lw	a5,0(a4)
	ori	a4,a4,+00000001
	c.sw	a5,0(a4)

l2304523C:
	c.addi	a1,FFFFFFFF
	andi	a1,a1,+000000FF
	c.li	a4,00000001
	bltu	a4,a1,0000000023045250

l23045248:
	c.lw	a5,4(a4)
	ori	a4,a4,+00000001
	c.sw	a5,4(a4)

l23045250:
	c.li	a0,00000000
	c.jr	ra

;; UART_Disable: 23045254
;;   Called from:
;;     23035DC4 (in bl_uart_init)
;;     23035F48 (in bl_uart_setconfig)
UART_Disable proc
	lui	a5,00023082
	c.slli	a0,02
	addi	a5,a5,+000007CC
	c.add	a5,a0
	andi	a4,a1,+000000FD
	c.lw	a5,0(a5)
	c.bnez	a4,000000002304526E

l23045268:
	c.lw	a5,0(a4)
	c.andi	a4,FFFFFFFE
	c.sw	a5,0(a4)

l2304526E:
	c.addi	a1,FFFFFFFF
	andi	a1,a1,+000000FF
	c.li	a4,00000001
	bltu	a4,a1,0000000023045280

l2304527A:
	c.lw	a5,4(a4)
	c.andi	a4,FFFFFFFE
	c.sw	a5,4(a4)

l23045280:
	c.li	a0,00000000
	c.jr	ra

;; UART_SetRxTimeoutValue: 23045284
;;   Called from:
;;     23035E70 (in bl_uart_int_rx_enable)
UART_SetRxTimeoutValue proc
	lui	a5,00023082
	c.slli	a0,02
	addi	a5,a5,+000007CC
	c.add	a5,a0
	c.lw	a5,0(a4)
	c.addi	a1,FFFFFFFF
	c.li	a0,00000000
	c.lw	a4,24(a5)
	andi	a5,a5,-00000100
	c.or	a1,a5
	c.sw	a4,24(a1)
	c.jr	ra

;; UART_TxFreeRun: 230452A2
;;   Called from:
;;     23035DD4 (in bl_uart_init)
;;     23035F58 (in bl_uart_setconfig)
UART_TxFreeRun proc
	lui	a5,00023082
	c.slli	a0,02
	addi	a5,a5,+000007CC
	c.add	a5,a0
	c.lw	a5,0(a4)
	c.li	a3,00000001
	c.lw	a4,0(a5)
	bne	a1,a3,00000000230452C2

l230452B8:
	ori	a5,a5,+00000004

l230452BC:
	c.sw	a4,0(a5)
	c.li	a0,00000000
	c.jr	ra

l230452C2:
	c.andi	a5,FFFFFFFB
	c.j	00000000230452BC

;; UART_IntMask: 230452C6
;;   Called from:
;;     23035DBC (in bl_uart_init)
;;     23035E7A (in bl_uart_int_rx_enable)
;;     23035E84 (in bl_uart_int_rx_enable)
;;     23035E8E (in bl_uart_int_rx_enable)
;;     23035EA8 (in bl_uart_int_rx_disable)
;;     23035EB2 (in bl_uart_int_rx_disable)
;;     23035EBC (in bl_uart_int_rx_disable)
;;     23035ED2 (in bl_uart_int_tx_enable)
;;     23035EE6 (in bl_uart_int_tx_disable)
UART_IntMask proc
	lui	a5,00023082
	c.slli	a0,02
	addi	a5,a5,+000007CC
	c.add	a5,a0
	c.lw	a5,0(a4)
	c.li	a3,00000008
	c.lw	a4,36(a5)
	bne	a1,a3,00000000230452EE

l230452DC:
	c.li	a3,00000001
	c.li	a1,00000000
	bne	a2,a3,00000000230452E8

l230452E4:
	ori	a1,a5,+000000FF

l230452E8:
	c.sw	a4,36(a1)
	c.li	a0,00000000
	c.jr	ra

l230452EE:
	c.li	a3,00000001
	sll	a1,a3,a1
	bne	a2,a3,00000000230452FC

l230452F8:
	c.or	a1,a5
	c.j	00000000230452E8

l230452FC:
	xori	a1,a1,-00000001
	c.and	a1,a5
	c.j	00000000230452E8

;; UART_GetTxFifoCount: 23045304
;;   Called from:
;;     23035E1E (in bl_uart_data_send)
;;     23035F02 (in bl_uart_flush)
;;     23045368 (in UART_SendData)
UART_GetTxFifoCount proc
	lui	a5,00023082
	c.slli	a0,02
	addi	a5,a5,+000007CC
	c.add	a5,a0
	c.lw	a5,0(a5)
	lw	a0,a5,+00000084
	andi	a0,a0,+0000003F
	c.jr	ra

;; UART_SendData: 2304531C
;;   Called from:
;;     2304649A (in bflb_platform_usart_dbg_send)
UART_SendData proc
	lui	a5,00023082
	slli	a4,a0,00000002
	addi	a5,a5,+000007CC
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

l2304534C:
	bltu	s1,a2,0000000023045362

l23045350:
	c.li	a0,00000000

l23045352:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23045362:
	c.mv	a0,s2
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	jal	ra,0000000023045304
	c.lwsp	s0,00000064
	c.lwsp	a2,00000084
	c.beqz	a0,0000000023045386

l23045372:
	add	a5,a1,s1
	lbu	a5,a5,+00000000
	c.addi	s1,00000001
	addi	s0,s4,+00000100
	sb	a5,s3,+00000088
	c.j	000000002304534C

l23045386:
	c.addi	s0,FFFFFFFF
	c.bnez	s0,000000002304534C

l2304538A:
	c.li	a0,00000002
	c.j	0000000023045352

;; UART_GetRxFifoCount: 2304538E
;;   Called from:
;;     23035E4C (in bl_uart_data_recv)
UART_GetRxFifoCount proc
	lui	a5,00023082
	c.slli	a0,02
	addi	a5,a5,+000007CC
	c.add	a5,a0
	c.lw	a5,0(a5)
	lw	a0,a5,+00000084
	c.srli	a0,00000008
	andi	a0,a0,+0000003F
	c.jr	ra

;; ADC_Reset: 230453A8
;;   Called from:
;;     23039E96 (in bl_tsen_adc_get)
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

;; ADC_Enable: 230453D0
;;   Called from:
;;     23039E92 (in bl_tsen_adc_get)
ADC_Enable proc
	lui	a4,00040010
	lw	a5,a4,-000006F4
	ori	a5,a5,+00000001
	sw	a5,a4,+0000090C
	c.jr	ra

;; ADC_Disable: 230453E2
;;   Called from:
;;     23039E8E (in bl_tsen_adc_get)
ADC_Disable proc
	lui	a4,00040010
	lw	a5,a4,-000006F4
	c.andi	a5,FFFFFFFE
	sw	a5,a4,+0000090C
	c.jr	ra

;; ADC_Channel_Config: 230453F2
;;   Called from:
;;     23039EA6 (in bl_tsen_adc_get)
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

;; ADC_Start: 2304542A
;;   Called from:
;;     23045802 (in TSEN_Get_V_Error)
;;     23045846 (in TSEN_Get_V_Error)
;;     230458A6 (in TSEN_Get_Temp)
;;     230458F0 (in TSEN_Get_Temp)
ADC_Start proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	s0,00040010
	lw	a5,s0,-000006F4
	addi	a0,zero,+00000064
	c.andi	a5,FFFFFFFD
	sw	a5,s0,+0000090C
	auipc	ra,0001EFC7
	jalr	ra,ra,+000000C4
	lw	a5,s0,-000006F4
	ori	a5,a5,+00000002
	sw	a5,s0,+0000090C
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ADC_FIFO_Cfg: 2304545E
;;   Called from:
;;     23039EB2 (in bl_tsen_adc_get)
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

;; ADC_Get_FIFO_Count: 23045488
;;   Called from:
;;     23045806 (in TSEN_Get_V_Error)
;;     2304584A (in TSEN_Get_V_Error)
;;     230458AA (in TSEN_Get_Temp)
;;     230458F4 (in TSEN_Get_Temp)
ADC_Get_FIFO_Count proc
	lui	a5,00040002
	c.lw	a5,0(a0)
	c.srli	a0,00000010
	andi	a0,a0,+0000003F
	c.jr	ra

;; ADC_Parse_Result: 23045496
;;   Called from:
;;     2304582A (in TSEN_Get_V_Error)
;;     23045866 (in TSEN_Get_V_Error)
;;     230458D0 (in TSEN_Get_Temp)
;;     23045910 (in TSEN_Get_Temp)
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
	addi	a3,a3,-00000384
	lbu	a5,a3,+00000000
	beq	a5,zero,00000000230455D4

l230454C6:
	c.flw	fa3,4(s1)

l230454C8:
	lui	a5,00040010
	lw	s0,a5,-000006F0
	lw	a3,a5,-000006EC
	c.srli	s0,00000002
	srli	s2,a3,00000002
	c.andi	a3,00000008
	c.andi	s0,00000007
	andi	s2,s2,+00000001
	bne	a3,zero,00000000230455DE

l230454E6:
	lui	a5,0002307B
	flw	fs0,636(a5)

l230454EE:
	c.slli	a1,02
	beq	s2,zero,00000000230455E8

l230454F4:
	add	a5,a0,a1
	addi	a3,s0,-00000002
	c.swsp	a5,00000004
	andi	a5,a3,+000000FD
	lui	a3,0002307B
	lw	a6,a3,+000002AC
	c.swsp	a5,00000084
	lw	a5,a3,+000002A8
	lui	a3,0002307B
	lw	s10,a3,+000002A0
	lw	s11,a3,+000002A4
	lui	a3,0002307B
	c.swsp	a5,00000008
	c.swsp	a6,00000088
	lw	a5,a3,+00000298
	lw	a6,a3,+0000029C
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

l23045540:
	c.lwsp	s0,000000E4
	beq	s6,a5,0000000023045636

l23045546:
	lw	a3,s6,+00000000
	c.li	s4,00000000
	c.srli	a3,00000015
	sb	a3,s7,+00000000
	lhu	a3,s6,+00000002
	c.andi	a3,0000001F
	sb	a3,s7,+00000001
	lw	a3,s6,+00000000
	slli	a5,a3,00000010
	bge	a5,zero,0000000023045572

l23045568:
	sub	a3,zero,a3
	sw	a3,s6,+00000000
	c.mv	s4,s2

l23045572:
	bne	s0,zero,000000002304570A

l23045576:
	lw	a0,s6,+00000000
	c.srli	a0,00000004
	and	a0,a0,s3
	fcvt.s.w	fa5,a0
	fdiv.s	fa5,fa5,fs1
	fcvt.wu.s	a0,fa5
	sh	a0,s7,+00000002
	c.and	a0,s1
	jal	ra,000000002306C8DC
	c.lwsp	s8,00000084
	c.lwsp	t3,000000A4

l2304559A:
	jal	ra,000000002306B444
	fmv.s	fa0,fs0,fs0
	c.mv	s8,a0
	c.mv	s9,a1
	jal	ra,000000002306CA0C
	c.mv	a2,a0
	c.mv	a3,a1
	c.mv	a0,s8
	c.mv	a1,s9
	jal	ra,000000002306B444
	jal	ra,000000002306CB1C
	fsw	fa0,16(a5)

l230455BE:
	beq	s4,zero,00000000230455CE

l230455C2:
	flw	fa5,4(s7)
	fneg.s	fa5,fa5,fa5
	fsw	fa5,16(a5)

l230455CE:
	c.addi	s7,00000008
	c.addi	s6,00000004
	c.j	0000000023045540

l230455D4:
	lui	a5,0002307B
	flw	fs1,628(a5)
	c.j	00000000230454C8

l230455DE:
	lui	a5,0002307B
	flw	fs0,632(a5)
	c.j	00000000230454EE

l230455E8:
	add	a5,a0,a1
	addi	a3,s0,-00000002
	c.swsp	a5,00000004
	andi	a5,a3,+000000FD
	lui	a3,0002307B
	lw	s10,a3,+00000290
	lw	s11,a3,+00000294
	lui	a3,0002307B
	lw	a6,a3,+0000028C
	c.swsp	a5,00000084
	lw	a5,a3,+00000288
	lui	a3,0002307B
	lw	s6,a3,+00000280
	lw	s7,a3,+00000284
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

l23045630:
	c.lwsp	s0,000000E4
	bne	a5,s4,0000000023045658

l23045636:
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

l23045658:
	lw	a3,s4,+00000000
	c.li	a5,FFFFFFFF
	sb	a5,s5,+00000001
	c.srli	a3,00000015
	sb	a3,s5,+00000000
	c.bnez	s0,00000000230456B8

l2304566A:
	lw	a0,s4,+00000000
	c.srli	a0,00000004
	and	a0,a0,s3
	fcvt.s.w	fa5,a0
	fdiv.s	fa5,fa5,fs1
	fcvt.wu.s	a0,fa5
	sh	a0,s5,+00000002
	c.and	a0,s1
	jal	ra,000000002306C8DC
	c.mv	a2,s6
	c.mv	a3,s7

l2304568E:
	jal	ra,000000002306B444
	fmv.s	fa0,fs0,fs0
	c.mv	s8,a0
	c.mv	s9,a1
	jal	ra,000000002306CA0C
	c.mv	a2,a0
	c.mv	a3,a1
	c.mv	a0,s8
	c.mv	a1,s9
	jal	ra,000000002306B444
	jal	ra,000000002306CB1C
	fsw	fa0,16(a3)

l230456B2:
	c.addi	s4,00000004
	c.addi	s5,00000008
	c.j	0000000023045630

l230456B8:
	c.li	a5,00000001
	bne	s0,a5,00000000230456E4

l230456BE:
	lw	a3,s4,+00000000
	c.srli	a3,00000002
	and	a3,a3,s2
	fcvt.s.w	fa5,a3
	fdiv.s	fa5,fa5,fs1
	fcvt.wu.s	a0,fa5
	sh	a0,s5,+00000002
	c.and	a0,s1
	jal	ra,000000002306C8DC
	c.lwsp	a6,00000084
	c.lwsp	s4,000000A4
	c.j	000000002304568E

l230456E4:
	c.lwsp	a2,000000E4
	c.bnez	a5,00000000230456B2

l230456E8:
	lw	a0,s4,+00000000
	c.and	a0,s1
	fcvt.s.w	fa5,a0
	fdiv.s	fa5,fa5,fs1
	fcvt.wu.s	a0,fa5
	sh	a0,s5,+00000002
	c.and	a0,s1
	jal	ra,000000002306C8DC
	c.mv	a2,s10
	c.mv	a3,s11
	c.j	000000002304568E

l2304570A:
	c.li	a5,00000001
	bne	s0,a5,0000000023045736

l23045710:
	lw	a0,s6,+00000000
	c.srli	a0,00000002
	and	a0,a0,s5
	fcvt.s.w	fa5,a0
	fdiv.s	fa5,fa5,fs1
	fcvt.wu.s	a0,fa5
	sh	a0,s7,+00000002
	c.and	a0,s1
	jal	ra,000000002306C8DC
	c.mv	a2,s10
	c.mv	a3,s11
	c.j	000000002304559A

l23045736:
	c.lwsp	a2,000000E4
	bne	a5,zero,00000000230455BE

l2304573C:
	lw	a0,s6,+00000000
	c.and	a0,s1
	fcvt.s.w	fa5,a0
	fdiv.s	fa5,fa5,fs1
	fcvt.wu.s	a0,fa5
	sh	a0,s7,+00000002
	c.and	a0,s1
	jal	ra,000000002306C8DC
	c.lwsp	a6,00000084
	c.lwsp	s4,000000A4
	c.j	000000002304559A

;; ADC_Tsen_Init: 2304575E
;;   Called from:
;;     23039EAC (in bl_tsen_adc_get)
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

;; ADC_SET_TSVBE_LOW: 230457BE
;;   Called from:
;;     230457FE (in TSEN_Get_V_Error)
;;     230458A2 (in TSEN_Get_Temp)
ADC_SET_TSVBE_LOW proc
	lui	a4,00040010
	lw	a5,a4,-000006EC
	c.slli	a5,01
	c.srli	a5,00000001
	sw	a5,a4,+00000914
	c.jr	ra

;; ADC_SET_TSVBE_HIGH: 230457D0
;;   Called from:
;;     23045842 (in TSEN_Get_V_Error)
;;     230458EC (in TSEN_Get_Temp)
ADC_SET_TSVBE_HIGH proc
	lui	a4,00040010
	lw	a5,a4,-000006EC
	lui	a3,00080000
	c.or	a5,a3
	sw	a5,a4,+00000914
	c.jr	ra

;; TSEN_Get_V_Error: 230457E4
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
	jal	ra,00000000230457BE
	jal	ra,000000002304542A

l23045806:
	jal	ra,0000000023045488
	c.beqz	a0,0000000023045806

l2304580C:
	lui	s0,0004200E
	addi	s2,s0,-00000384
	lui	s1,00040002
	c.lw	s1,4(a5)
	lbu	s3,s2,+00000000
	c.addi4spn	a2,00000008
	c.li	a1,00000001
	c.addi4spn	a0,00000004
	c.swsp	a5,00000080
	sb	zero,s2,+00000000
	jal	ra,0000000023045496
	sb	s3,s2,+00000000
	c.lw	s1,0(a5)
	lhu	s2,sp,+0000000A
	addi	s0,s0,-00000384
	ori	a5,a5,+00000002
	c.sw	s1,0(a5)
	jal	ra,00000000230457D0
	jal	ra,000000002304542A

l2304584A:
	jal	ra,0000000023045488
	c.beqz	a0,000000002304584A

l23045850:
	lui	a5,00040002
	c.lw	a5,4(a5)
	lbu	s1,s0,+00000000
	c.addi4spn	a0,00000004
	c.addi4spn	a2,00000008
	c.li	a1,00000001
	c.swsp	a5,00000080
	sb	zero,s0,+00000000
	jal	ra,0000000023045496
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

;; TSEN_Get_Temp: 23045884
;;   Called from:
;;     23039EFC (in bl_tsen_adc_get)
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
	jal	ra,00000000230457BE
	jal	ra,000000002304542A

l230458AA:
	jal	ra,0000000023045488
	c.beqz	a0,00000000230458AA

l230458B0:
	lui	s0,0004200E
	addi	s3,s0,-00000384
	lui	s2,00040002
	lw	a5,s2,+00000004
	lbu	s4,s3,+00000000
	c.addi4spn	a2,00000008
	c.li	a1,00000001
	c.addi4spn	a0,00000004
	c.swsp	a5,00000080
	sb	zero,s3,+00000000
	jal	ra,0000000023045496
	sb	s4,s3,+00000000
	lw	a5,s2,+00000000
	lhu	s3,sp,+0000000A
	addi	s0,s0,-00000384
	ori	a5,a5,+00000002
	sw	a5,s2,+00000000
	jal	ra,00000000230457D0
	jal	ra,000000002304542A

l230458F4:
	jal	ra,0000000023045488
	c.beqz	a0,00000000230458F4

l230458FA:
	lui	a5,00040002
	c.lw	a5,4(a5)
	c.addi4spn	a2,00000008
	c.li	a1,00000001
	c.addi4spn	a0,00000004
	lbu	s2,s0,+00000000
	c.swsp	a5,00000080
	sb	zero,s0,+00000000
	jal	ra,0000000023045496
	lhu	a5,sp,+0000000A
	sb	s2,s0,+00000000
	fcvt.s.wu	fa4,s3
	fcvt.s.wu	fa0,a5
	fcvt.s.wu	fa5,s1
	lui	s0,0002307B
	bgeu	a5,s3,000000002304595C

l23045930:
	fsub.s	fa0,fa4,fa0

l23045934:
	fsub.s	fa0,fa0,fa5
	jal	ra,000000002306CA0C
	lw	a2,s0,+000002B0
	lw	a3,s0,+000002B4
	jal	ra,000000002306A8F8
	jal	ra,000000002306CB1C
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2304595C:
	fsub.s	fa0,fa0,fa4
	c.j	0000000023045934

;; ADC_Init: 23045962
;;   Called from:
;;     23039E9C (in bl_tsen_adc_get)
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
	c.beqz	a3,0000000023045A52

l23045A00:
	c.lui	a4,FFFE4000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.lui	a4,00012000

l23045A08:
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
	auipc	t1,0001EFC7
	jalr	zero,t1,+00000112

l23045A52:
	c.lui	a4,FFFE2000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.lui	a4,00008000
	c.j	0000000023045A08

;; Sec_Eng_SHA256_Update.part.0: 23045A5C
;;   Called from:
;;     23045C12 (in Sec_Eng_SHA256_Update)
;;     23045CE2 (in Sec_Eng_SHA256_Finish)
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

l23045A80:
	lw	s6,a3,+00000000
	c.addi	a4,FFFFFFFF
	beq	a4,zero,0000000023045BA6

l23045A8A:
	andi	a5,s6,+00000001
	c.bnez	a5,0000000023045A80

l23045A90:
	c.lw	s1,0(a4)
	lbu	s2,s1,+00000010
	andi	s4,a4,+0000003F
	c.add	a4,s0
	c.sw	s1,0(a4)
	bgeu	a4,s0,0000000023045AA8

l23045AA2:
	c.lw	s1,4(a5)
	c.addi	a5,00000001
	c.sw	s1,4(a5)

l23045AA8:
	beq	s4,zero,0000000023045AFE

l23045AAC:
	addi	s5,zero,+00000040
	sub	s5,s5,s4
	bltu	s0,s5,0000000023045AFE

l23045AB8:
	c.lw	s1,8(a0)
	c.mv	a2,s5
	c.mv	a1,s3
	c.add	a0,s4
	auipc	ra,0001EFC7
	jalr	ra,ra,-00000592
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

l23045AFE:
	addi	a5,zero,+0000003F
	andi	a2,s0,+0000003F
	bgeu	a5,s0,0000000023045B54

l23045B0A:
	lui	a3,00000F42
	addi	a3,a3,+00000400
	lui	a1,00040004

l23045B16:
	c.lw	a1,0(a5)
	c.addi	a3,FFFFFFFF
	c.beqz	a3,0000000023045BA6

l23045B1C:
	andi	a4,a5,+00000001
	c.bnez	a4,0000000023045B16

l23045B22:
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

l23045B54:
	c.beqz	a2,0000000023045B7A

l23045B56:
	lui	a5,00000F42
	addi	a5,a5,+00000400
	lui	a3,00040004

l23045B62:
	c.lw	a3,0(a4)
	c.addi	a5,FFFFFFFF
	c.beqz	a5,0000000023045BA6

l23045B68:
	c.andi	a4,00000001
	c.bnez	a4,0000000023045B62

l23045B6C:
	c.lw	s1,8(a0)
	c.mv	a1,s3
	c.add	a0,s4
	auipc	ra,0001EFC7
	jalr	ra,ra,-00000644

l23045B7A:
	lui	a5,00000F42
	addi	a5,a5,+00000400
	lui	a3,00040004

l23045B86:
	c.lw	a3,0(a4)
	c.addi	a5,FFFFFFFF
	c.beqz	a5,0000000023045BA6

l23045B8C:
	c.andi	a4,00000001
	c.bnez	a4,0000000023045B86

l23045B90:
	c.li	a0,00000000

l23045B92:
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

l23045BA6:
	c.li	a0,00000002
	c.j	0000000023045B92

;; Sec_Eng_SHA256_Init: 23045BAA
;;   Called from:
;;     230688E8 (in bl_sha_init)
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
	jal	ra,000000002306D1BC
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000A4
	addi	a2,zero,+00000040
	c.sw	s0,12(a4)
	c.sw	s0,8(a3)
	c.li	a1,00000000
	c.mv	a0,a4
	auipc	ra,0001EFC7
	jalr	ra,ra,-000006A4
	c.lw	s0,12(a0)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.li	a2,00000001
	addi	a1,zero,+00000080
	c.addi16sp	00000020
	auipc	t1,0001EFC7
	jalr	zero,t1,-000006BA

;; Sec_Eng_SHA_Start: 23045BFA
;;   Called from:
;;     230688F2 (in bl_sha_init)
Sec_Eng_SHA_Start proc
	lui	a4,00040004
	c.lw	a4,0(a5)
	andi	a5,a5,-00000041
	ori	a5,a5,+00000020
	c.sw	a4,0(a5)
	c.jr	ra

;; Sec_Eng_SHA256_Update: 23045C0C
;;   Called from:
;;     23045CB4 (in Sec_Eng_SHA256_Finish)
;;     23068900 (in bl_sha_update)
Sec_Eng_SHA256_Update proc
	c.mv	a1,a2
	c.beqz	a3,0000000023045C16

l23045C10:
	c.mv	a2,a3
	jal	zero,0000000023045A5C

l23045C16:
	c.li	a0,00000000
	c.jr	ra

;; Sec_Eng_SHA256_Finish: 23045C1A
;;   Called from:
;;     23068912 (in bl_sha_finish)
Sec_Eng_SHA256_Finish proc
	lui	a5,00000F42
	addi	a5,a5,+00000400
	lui	a3,00040004

l23045C26:
	c.lw	a3,0(a4)
	c.addi	a5,FFFFFFFF
	c.bnez	a5,0000000023045C3C

l23045C2C:
	c.li	a0,00000002
	c.jr	ra

l23045C30:
	c.li	a0,00000002

l23045C32:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23045C3C:
	c.andi	a4,00000001
	c.bnez	a4,0000000023045C26

l23045C40:
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
	bltu	a5,a3,0000000023045DFE

l23045CA6:
	addi	a5,zero,+00000038

l23045CAA:
	c.mv	s0,a2
	c.lw	a0,12(a2)
	sub	a3,a5,a3
	c.mv	s1,a0
	jal	ra,0000000023045C0C
	lui	a5,00000F42
	addi	a5,a5,+00000400
	lui	a3,00040004

l23045CC4:
	c.lw	a3,0(a4)
	c.addi	a5,FFFFFFFF
	c.beqz	a5,0000000023045C30

l23045CCA:
	c.andi	a4,00000001
	c.bnez	a4,0000000023045CC4

l23045CCE:
	c.lw	s1,12(a0)
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	auipc	ra,0001EFC7
	jalr	ra,ra,-000007A6
	c.lw	s1,12(a1)
	c.li	a2,00000008
	c.mv	a0,s1
	jal	ra,0000000023045A5C
	lui	a4,00000F42
	addi	a4,a4,+00000400
	lui	a5,00040004

l23045CF2:
	c.lw	a5,0(a3)
	c.addi	a4,FFFFFFFF
	c.beqz	a4,0000000023045C30

l23045CF8:
	c.andi	a3,00000001
	c.bnez	a3,0000000023045CF2

l23045CFC:
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
	c.bnez	a3,0000000023045DEE

l23045D96:
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
	c.bnez	a4,0000000023045DEE

l23045DD2:
	c.lw	a5,44(a5)
	srli	a4,a5,00000008
	sb	a5,s0,+0000001C
	sb	a4,s0,+0000001D
	srli	a4,a5,00000010
	c.srli	a5,00000018
	sb	a4,s0,+0000001E
	sb	a5,s0,+0000001F

l23045DEE:
	lui	a4,00040004
	c.lw	a4,0(a5)
	c.li	a0,00000000
	andi	a5,a5,-00000061
	c.sw	a4,0(a5)
	c.j	0000000023045C32

l23045DFE:
	addi	a5,zero,+00000078
	c.j	0000000023045CAA

;; DMA_Enable: 23045E04
;;   Called from:
;;     230365FA (in bl_dma_init)
DMA_Enable proc
	lui	a4,0004000C
	c.lw	a4,48(a5)
	ori	a5,a5,+00000001
	c.sw	a4,48(a5)
	c.jr	ra

;; DMA_Channel_Enable: 23045E12
;;   Called from:
;;     230363B0 (in bl_dma_IRQHandler)
DMA_Channel_Enable proc
	lui	a5,0004000C
	addi	a5,a5,+00000110
	c.slli	a0,08
	c.add	a0,a5
	c.lw	a0,0(a5)
	ori	a5,a5,+00000001
	c.sw	a0,0(a5)
	c.jr	ra

;; DMA_LLI_Init: 23045E28
;;   Called from:
;;     23036620 (in bl_dma_init)
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

;; DMA_LLI_Update: 23045E5E
;;   Called from:
;;     230363A4 (in bl_dma_IRQHandler)
DMA_LLI_Update proc
	lui	a5,0004000C
	c.slli	a0,08
	addi	a5,a5,+00000100
	c.li	a2,00000004
	c.add	a0,a5
	auipc	t1,0001EFC6
	jalr	zero,t1,+000006B8

;; DMA_IntMask: 23045E74
;;   Called from:
;;     23036604 (in bl_dma_init)
;;     2303660E (in bl_dma_init)
;;     23036618 (in bl_dma_init)
DMA_IntMask proc
	c.li	a5,00000001
	c.slli	a0,08
	beq	a1,a5,0000000023045EAA

l23045E7C:
	c.beqz	a1,0000000023045E86

l23045E7E:
	c.li	a5,00000002
	beq	a1,a5,0000000023045EC8

l23045E84:
	c.jr	ra

l23045E86:
	lui	a4,0004000C
	addi	a5,a4,+00000110
	c.add	a5,a0
	addi	a4,a4,+0000010C
	c.add	a0,a4
	c.lw	a5,0(a4)
	c.lui	a3,FFFF8000
	c.beqz	a2,0000000023045EDE

l23045E9C:
	c.lui	a3,00008000

l23045E9E:
	c.or	a4,a3
	c.sw	a5,0(a4)
	c.lw	a0,0(a5)
	c.slli	a5,01
	c.srli	a5,00000001
	c.j	0000000023045EBE

l23045EAA:
	lui	a5,0004000C
	addi	a5,a5,+00000110
	c.add	a0,a5
	c.lw	a0,0(a5)
	c.bnez	a2,0000000023045EC2

l23045EB8:
	c.lui	a4,FFFFC000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4

l23045EBE:
	c.sw	a0,0(a5)
	c.jr	ra

l23045EC2:
	c.lui	a4,00004000

l23045EC4:
	c.or	a5,a4
	c.j	0000000023045EBE

l23045EC8:
	lui	a4,0004000C
	addi	a5,a4,+00000110
	c.add	a5,a0
	addi	a4,a4,+0000010C
	c.add	a0,a4
	c.lw	a5,0(a4)
	c.bnez	a2,0000000023045EEC

l23045EDC:
	c.lui	a3,FFFF4000

l23045EDE:
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	c.sw	a5,0(a4)
	c.lw	a0,0(a5)
	lui	a4,00080000
	c.j	0000000023045EC4

l23045EEC:
	c.lui	a3,0000C000
	c.j	0000000023045E9E

;; Default_Handler: 23045EF0
;;   Called from:
;;     23046536 (in SPI_IRQHandler)
Default_Handler proc
	lui	a0,0002307B
	addi	a0,a0,+000002B8
	c.j	000000002304649E

;; GLB_Set_UART_CLK: 23045EFA
;;   Called from:
;;     23035D54 (in bl_uart_init)
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
	c.jal	0000000023045FD6
	c.lw	s0,8(a4)
	ori	a5,a4,+00000010
	c.bnez	s1,0000000023045F26

l23045F22:
	andi	a5,a4,-00000011

l23045F26:
	lui	a4,00040000
	c.sw	a4,8(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; GLB_Set_EM_Sel: 23045F38
;;   Called from:
;;     23036212 (in bl_sys_em_config)
GLB_Set_EM_Sel proc
	lui	a4,00040000
	c.lw	a4,124(a5)
	c.andi	a5,FFFFFFF0
	c.or	a0,a5
	c.sw	a4,124(a0)
	c.li	a0,00000000
	c.jr	ra

;; GLB_Set_ADC_CLK: 23045F48
;;   Called from:
;;     23039E8A (in bl_tsen_adc_get)
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
	c.beqz	a0,0000000023045F7C

l23045F78:
	ori	a5,a4,+00000100

l23045F7C:
	lui	a4,00040000
	sw	a5,a4,+000000A4
	c.li	a0,00000000
	c.jr	ra

;; GLB_UART_Fun_Sel: 23045F88
;;   Called from:
;;     23035D9C (in bl_uart_init)
;;     23035DA6 (in bl_uart_init)
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

;; GLB_GPIO_Write: 23045FAC
;;   Called from:
;;     23039FF4 (in bl_gpio_output_set)
GLB_GPIO_Write proc
	srli	a5,a0,00000005
	lui	a4,00040000
	addi	a4,a4,+00000188
	c.slli	a5,02
	c.add	a5,a4
	c.li	a4,00000001
	c.lw	a5,0(a3)
	sll	a0,a4,a0
	c.beqz	a1,0000000023045FCE

l23045FC6:
	c.or	a0,a3

l23045FC8:
	c.sw	a5,0(a0)
	c.li	a0,00000000
	c.jr	ra

l23045FCE:
	xori	a0,a0,-00000001
	c.and	a0,a3
	c.j	0000000023045FC8

;; HBN_Set_UART_CLK_Sel: 23045FD6
;;   Called from:
;;     23045F18 (in GLB_Set_UART_CLK)
HBN_Set_UART_CLK_Sel proc
	lui	a4,0004000F
	c.lw	a4,48(a5)
	c.slli	a0,02
	c.andi	a5,FFFFFFFB
	c.or	a0,a5
	c.sw	a4,48(a0)
	c.li	a0,00000000
	c.jr	ra

;; HBN_Get_RTC_Timer_Val: 23045FE8
;;   Called from:
;;     230684AC (in bl_rtc_get_counter)
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

;; HBN_Aon_Pad_IeSmt_Cfg: 23046010
;;   Called from:
;;     23036224 (in bl_sys_early_init)
HBN_Aon_Pad_IeSmt_Cfg proc
	lui	a4,0004000F
	c.lw	a4,20(a5)
	c.slli	a0,08
	andi	a5,a5,-00000101
	c.or	a0,a5
	c.sw	a4,20(a0)
	c.li	a0,00000000
	c.jr	ra

;; EF_Ctrl_Get_Byte_Zero_Cnt: 23046024
;;   Called from:
;;     23046094 (in EF_Ctrl_Read_MAC_Address)
;;     230461D6 (in EF_Ctrl_Read_MAC_Address_Opt)
EF_Ctrl_Get_Byte_Zero_Cnt proc
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a2,00000008

l2304602A:
	sra	a3,a0,a5
	c.andi	a3,00000001
	c.bnez	a3,0000000023046034

l23046032:
	c.addi	a4,00000001

l23046034:
	c.addi	a5,00000001
	bne	a5,a2,000000002304602A

l2304603A:
	c.mv	a0,a4
	c.jr	ra

;; EF_Ctrl_Read_MAC_Address: 2304603E
;;   Called from:
;;     23036DEC (in bl_efuse_read_mac)
EF_Ctrl_Read_MAC_Address proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	auipc	ra,0001EFC6
	jalr	ra,ra,+0000051C
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

l2304608A:
	add	a5,s0,s2
	lbu	a0,a5,+00000000
	c.addi	s2,00000001
	jal	ra,0000000023046024
	c.add	s3,a0
	bne	s2,s4,000000002304608A

l2304609E:
	c.srli	s1,00000010
	xor	s1,s1,s3
	andi	s1,s1,+0000003F
	c.li	a0,00000001
	c.bnez	s1,00000000230460CE

l230460AC:
	addi	a5,s0,+00000005
	addi	a4,s0,+00000002

l230460B4:
	lbu	a2,a5,+00000000
	lbu	a3,s0,+00000000
	c.addi	a5,FFFFFFFF
	sb	a2,s0,+00000000
	sb	a3,a5,+00000001
	c.addi	s0,00000001
	bne	a5,a4,00000000230460B4

l230460CC:
	c.li	a0,00000000

l230460CE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; EF_Ctrl_Is_MAC_Address_Slot_Empty: 230460DE
;;   Called from:
;;     23046886 (in mfg_efuse_read_macaddr)
;;     230468A6 (in mfg_efuse_read_macaddr)
;;     230468B4 (in mfg_efuse_read_macaddr)
EF_Ctrl_Is_MAC_Address_Slot_Empty proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	c.bnez	a0,0000000023046116

l230460E8:
	auipc	ra,0001EFC6
	jalr	ra,ra,+0000046E
	c.beqz	s0,00000000230460FA

l230460F2:
	auipc	ra,0001EFC6
	jalr	ra,ra,+00000478

l230460FA:
	lui	a5,00040007
	c.lw	a5,20(a4)
	c.lw	a5,24(a5)

l23046102:
	c.slli	a5,0A
	c.srli	a5,0000000A
	c.or	a5,a4
	c.li	a0,00000001
	c.beqz	a5,000000002304610E

l2304610C:
	c.li	a0,00000000

l2304610E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23046116:
	c.li	a5,00000001
	bne	a0,a5,0000000023046138

l2304611C:
	auipc	ra,0001EFC6
	jalr	ra,ra,+0000043A
	c.beqz	s0,000000002304612E

l23046126:
	auipc	ra,0001EFC6
	jalr	ra,ra,+00000444

l2304612E:
	lui	a5,00040007
	c.lw	a5,108(a4)
	c.lw	a5,112(a5)
	c.j	0000000023046102

l23046138:
	c.li	a5,00000002
	bne	a0,a5,000000002304610C

l2304613E:
	auipc	ra,0001EFC6
	jalr	ra,ra,+00000418
	c.beqz	s0,0000000023046150

l23046148:
	auipc	ra,0001EFC6
	jalr	ra,ra,+00000422

l23046150:
	lui	a5,00040007
	c.lw	a5,4(a4)
	c.lw	a5,8(a5)
	c.j	0000000023046102

;; EF_Ctrl_Read_MAC_Address_Opt: 2304615A
;;   Called from:
;;     230468D0 (in mfg_efuse_read_macaddr)
EF_Ctrl_Read_MAC_Address_Opt proc
	c.li	a5,00000002
	bltu	a5,a0,0000000023046244

l23046160:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s0,a1
	c.mv	s1,a0
	c.beqz	a2,0000000023046190

l23046174:
	bne	a0,a5,0000000023046188

l23046178:
	auipc	ra,0001EFC6
	jalr	ra,ra,+000003F2

l23046180:
	lui	a5,00040007
	c.lw	a5,4(a5)
	c.j	0000000023046198

l23046188:
	auipc	ra,0001EFC6
	jalr	ra,ra,+000003E2

l23046190:
	c.bnez	s1,0000000023046220

l23046192:
	lui	a5,00040007
	c.lw	a5,20(a5)

l23046198:
	srli	a4,a5,00000008
	sb	a5,s0,+00000000
	sb	a4,s0,+00000001
	srli	a4,a5,00000010
	c.srli	a5,00000018
	sb	a4,s0,+00000002
	sb	a5,s0,+00000003
	c.bnez	s1,000000002304622E

l230461B4:
	lui	a5,00040007
	c.lw	a5,24(s1)

l230461BA:
	srli	a5,s1,00000008
	sb	s1,s0,+00000004
	sb	a5,s0,+00000005
	c.li	s3,00000000
	c.li	s2,00000000
	c.li	s4,00000006

l230461CC:
	add	a5,s0,s2
	lbu	a0,a5,+00000000
	c.addi	s2,00000001
	jal	ra,0000000023046024
	c.add	s3,a0
	bne	s2,s4,00000000230461CC

l230461E0:
	c.srli	s1,00000010
	xor	s1,s1,s3
	andi	s1,s1,+0000003F
	c.li	a0,00000001
	c.bnez	s1,0000000023046210

l230461EE:
	addi	a5,s0,+00000005
	addi	a4,s0,+00000002

l230461F6:
	lbu	a2,a5,+00000000
	lbu	a3,s0,+00000000
	c.addi	a5,FFFFFFFF
	sb	a2,s0,+00000000
	sb	a3,a5,+00000001
	c.addi	s0,00000001
	bne	a4,a5,00000000230461F6

l2304620E:
	c.li	a0,00000000

l23046210:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23046220:
	c.li	a5,00000001
	bne	s1,a5,0000000023046180

l23046226:
	lui	a5,00040007
	c.lw	a5,108(a5)
	c.j	0000000023046198

l2304622E:
	c.li	a5,00000001
	bne	s1,a5,000000002304623C

l23046234:
	lui	a5,00040007
	c.lw	a5,112(s1)
	c.j	00000000230461BA

l2304623C:
	lui	a5,00040007
	c.lw	a5,8(s1)
	c.j	00000000230461BA

l23046244:
	c.li	a0,00000001
	c.jr	ra

;; EF_Ctrl_Is_CapCode_Slot_Empty: 23046248
;;   Called from:
;;     230465D8 (in mfg_efuse_read_xtal_capcode)
;;     230465F8 (in mfg_efuse_read_xtal_capcode)
;;     23046606 (in mfg_efuse_read_xtal_capcode)
EF_Ctrl_Is_CapCode_Slot_Empty proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.mv	s0,a0
	auipc	ra,0001EFC6
	jalr	ra,ra,+00000304
	c.lwsp	a2,00000064
	c.beqz	a1,0000000023046266

l2304625E:
	auipc	ra,0001EFC6
	jalr	ra,ra,+0000030C

l23046266:
	c.bnez	s0,0000000023046280

l23046268:
	lui	a5,00040007
	c.lw	a5,12(a5)
	c.srli	a5,00000002

l23046270:
	andi	a5,a5,+000000FF
	sltiu	a0,a5,+00000001

l23046278:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23046280:
	c.li	a5,00000001
	bne	s0,a5,0000000023046290

l23046286:
	lui	a5,00040007
	c.lw	a5,112(a5)

l2304628C:
	c.srli	a5,00000016
	c.j	0000000023046270

l23046290:
	c.li	a4,00000002
	c.li	a0,00000000
	bne	s0,a4,0000000023046278

l23046298:
	lui	a5,00040007
	c.lw	a5,8(a5)
	c.j	000000002304628C

;; EF_Ctrl_Read_CapCode_Opt: 230462A0
;;   Called from:
;;     23046622 (in mfg_efuse_read_xtal_capcode)
EF_Ctrl_Read_CapCode_Opt proc
	c.li	a5,00000002
	bgeu	a5,a0,00000000230462B8

l230462A6:
	c.li	a0,00000001
	c.jr	ra

l230462AA:
	c.li	a0,00000001

l230462AC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l230462B8:
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a2
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a1
	c.mv	s0,a0
	auipc	ra,0001EFC6
	jalr	ra,ra,+0000028E
	beq	s2,zero,00000000230462DC

l230462D4:
	auipc	ra,0001EFC6
	jalr	ra,ra,+00000296

l230462DC:
	c.bnez	s0,0000000023046314

l230462DE:
	lui	a5,00040007
	c.lw	a5,12(a5)
	c.srli	a5,00000002

l230462E6:
	c.swsp	a5,00000084
	c.lwsp	a2,00000044
	andi	a5,a0,+00000080
	c.beqz	a5,00000000230462AA

l230462F0:
	andi	s0,a0,+0000003F
	srli	s2,a0,00000006
	c.li	a1,00000006
	c.mv	a0,s0
	andi	s2,s2,+00000001
	auipc	ra,0001EFC7
	jalr	ra,ra,-0000053E
	bne	s2,a0,00000000230462AA

l2304630C:
	sb	s0,s1,+00000000
	c.li	a0,00000000
	c.j	00000000230462AC

l23046314:
	c.li	a5,00000001
	bne	s0,a5,0000000023046324

l2304631A:
	lui	a5,00040007
	c.lw	a5,112(a5)

l23046320:
	c.srli	a5,00000016
	c.j	00000000230462E6

l23046324:
	lui	a5,00040007
	c.lw	a5,8(a5)
	c.j	0000000023046320

;; EF_Ctrl_Is_PowerOffset_Slot_Empty: 2304632C
;;   Called from:
;;     230466AA (in mfg_efuse_read_poweroffset)
;;     230466CC (in mfg_efuse_read_poweroffset)
;;     230466DA (in mfg_efuse_read_poweroffset)
EF_Ctrl_Is_PowerOffset_Slot_Empty proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.mv	s0,a0
	auipc	ra,0001EFC6
	jalr	ra,ra,+00000220
	c.lwsp	a2,00000064
	c.beqz	a1,000000002304634A

l23046342:
	auipc	ra,0001EFC6
	jalr	ra,ra,+00000228

l2304634A:
	c.bnez	s0,000000002304636C

l2304634C:
	lui	a5,00040007
	c.lw	a5,120(a5)
	c.li	a4,00000001
	c.srli	a5,0000000F
	sltiu	a5,a5,+00000001

l2304635A:
	c.li	a0,00000000
	c.beqz	a5,0000000023046360

l2304635E:
	c.mv	a0,a4

l23046360:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	andi	a0,a0,+000000FF
	c.addi16sp	00000020
	c.jr	ra

l2304636C:
	c.li	a5,00000001
	bne	s0,a5,000000002304638A

l23046372:
	lui	a4,00040007
	c.lw	a4,116(a5)
	c.lw	a4,12(a4)
	c.slli	a5,10
	c.srli	a5,00000010
	sltiu	a5,a5,+00000001

l23046382:
	xori	a4,a4,-00000001
	c.andi	a4,00000001
	c.j	000000002304635A

l2304638A:
	c.li	a5,00000002
	c.li	a0,00000000
	bne	s0,a5,0000000023046360

l23046392:
	lui	a4,00040007
	c.lw	a4,116(a5)
	c.lw	a4,12(a4)
	c.srli	a5,00000010
	sltiu	a5,a5,+00000001
	c.srli	a4,00000001
	c.j	0000000023046382

;; EF_Ctrl_Read_PowerOffset_Opt: 230463A4
;;   Called from:
;;     230466F6 (in mfg_efuse_read_poweroffset)
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
	auipc	ra,0001EFC6
	jalr	ra,ra,+0000019E
	c.lwsp	a2,00000084
	c.beqz	a2,00000000230463CC

l230463C4:
	auipc	ra,0001EFC6
	jalr	ra,ra,+000001A6

l230463CC:
	c.bnez	s0,0000000023046422

l230463CE:
	lui	a5,00040007
	c.lw	a5,120(s0)
	srli	a5,s0,0000000F
	slli	s1,s0,00000001
	c.andi	a5,00000001
	c.srli	s1,00000011
	c.srli	s0,0000001F

l230463E2:
	c.beqz	a5,0000000023046444

l230463E4:
	c.li	a1,0000000F
	c.mv	a0,s1
	auipc	ra,0001EFC7
	jalr	ra,ra,-00000626
	bne	a0,s0,0000000023046444

l230463F4:
	c.li	s0,00000000
	c.li	s4,00000005
	c.li	s3,00000003

l230463FA:
	add	a2,s0,s4
	c.mv	a0,s1
	c.li	a1,00000000
	jal	ra,0000000023068C08
	andi	a5,a0,+0000001F
	c.andi	a0,00000010
	add	a4,s2,s0
	c.beqz	a0,0000000023046414

l23046412:
	c.addi	a5,FFFFFFE0

l23046414:
	sb	a5,a4,+00000000
	c.addi	s0,00000001
	bne	s0,s3,00000000230463FA

l2304641E:
	c.li	a0,00000000
	c.j	0000000023046446

l23046422:
	c.li	a5,00000001
	bne	s0,a5,000000002304643E

l23046428:
	lui	a5,00040007
	c.lw	a5,116(s0)
	c.lw	a5,12(a5)
	slli	s1,s0,00000011
	c.srli	s0,0000000F
	c.srli	s1,00000011
	c.andi	s0,00000001

l2304643A:
	c.andi	a5,00000001
	c.j	00000000230463E2

l2304643E:
	c.li	a5,00000002
	beq	s0,a5,0000000023046456

l23046444:
	c.li	a0,00000001

l23046446:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23046456:
	lui	a5,00040007
	c.lw	a5,116(s0)
	c.lw	a5,12(a5)
	slli	s1,s0,00000001
	c.srli	s1,00000011
	c.srli	s0,0000001F
	c.srli	a5,00000001
	c.j	000000002304643A

;; mfg_media_read_xtal_capcode: 2304646A
;;   Called from:
;;     23036E16 (in bl_efuse_read_capcode)
mfg_media_read_xtal_capcode proc
	lui	a5,0004200E
	lbu	a5,a5,+00000368
	c.beqz	a5,0000000023046476

l23046474:
	c.j	000000002304695C

l23046476:
	c.j	0000000023046588

;; mfg_media_read_poweroffset: 23046478
;;   Called from:
;;     23036E2E (in bl_efuse_read_pwroft)
mfg_media_read_poweroffset proc
	lui	a5,0004200E
	lbu	a5,a5,+00000368
	c.beqz	a5,0000000023046484

l23046482:
	c.j	00000000230469C0

l23046484:
	c.j	000000002304665A

;; mfg_media_read_macaddr: 23046486
;;   Called from:
;;     23036DFE (in bl_efuse_read_mac_factory)
mfg_media_read_macaddr proc
	lui	a5,0004200E
	lbu	a5,a5,+00000368
	c.beqz	a5,0000000023046492

l23046490:
	c.j	0000000023046B24

l23046492:
	c.j	0000000023046836

;; bflb_platform_usart_dbg_send: 23046494
;;   Called from:
;;     230464E0 (in bflb_platform_printf)
bflb_platform_usart_dbg_send proc
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	jal	zero,000000002304531C

;; bflb_platform_printf: 2304649E
;;   Called from:
;;     23045EF8 (in Default_Handler)
bflb_platform_printf proc
	c.addi16sp	FFFFFFC0
	c.swsp	a5,00000098
	lui	a5,0004200E
	lbu	a5,a5,+00000369
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a1,00000090
	c.swsp	a2,00000014
	c.swsp	a3,00000094
	c.swsp	a4,00000018
	c.swsp	a6,0000001C
	c.swsp	a7,0000009C
	c.bnez	a5,00000000230464E4

l230464BC:
	lui	s0,00042015
	c.mv	a2,a0
	c.addi4spn	a3,00000024
	addi	a1,zero,+0000007F
	addi	a0,s0,+000005EC
	c.swsp	a3,00000084
	jal	ra,0000000023003550
	addi	a0,s0,+000005EC
	jal	ra,000000002306D630
	c.mv	a1,a0
	addi	a0,s0,+000005EC
	jal	ra,0000000023046494

l230464E4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000040
	c.jr	ra

;; SPI_IRQHandler: 230464EC
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
	jal	ra,0000000023045EF0
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

;; mfg_efuse_read_xtal_capcode: 23046588
;;   Called from:
;;     23046476 (in mfg_media_read_xtal_capcode)
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
	auipc	ra,0001EFC7
	jalr	ra,ra,-000007A6
	c.mv	s3,a0
	auipc	ra,0001EFC7
	jalr	ra,ra,-000007A6
	c.mv	s2,a0
	c.li	a0,00000001
	auipc	ra,0001EFC7
	jalr	ra,ra,-0000076C
	lui	s0,0004200E
	lbu	a4,s0,-0000037C
	c.li	a5,00000002
	addi	s0,s0,-0000037C
	bltu	a5,a4,00000000230465F4

l230465CA:
	lbu	a4,s0,+00000000
	c.li	a5,00000001
	bgeu	a5,a4,00000000230465DE

l230465D4:
	c.mv	a1,s1
	c.li	a0,00000001
	jal	ra,0000000023046248
	c.beqz	a0,0000000023046656

l230465DE:
	lbu	a5,s0,+00000000
	c.bnez	a5,0000000023046602

l230465E4:
	lui	a0,0002307B
	addi	a0,a0,+000002DC
	jal	ra,0000000023003AC6
	c.li	s0,00000001
	c.j	0000000023046628

l230465F4:
	c.mv	a1,s1
	c.li	a0,00000002
	jal	ra,0000000023046248
	c.bnez	a0,00000000230465CA

l230465FE:
	c.li	s0,00000002
	c.j	000000002304660E

l23046602:
	c.mv	a1,s1
	c.li	a0,00000000
	jal	ra,0000000023046248
	c.mv	s0,a0
	c.bnez	a0,00000000230465E4

l2304660E:
	lui	a0,0002307B
	c.mv	a1,s0
	addi	a0,a0,+000002CC
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	c.mv	a2,s1
	c.mv	a1,s4
	jal	ra,00000000230462A0
	c.mv	s0,a0

l23046628:
	c.mv	a1,s3
	c.mv	a0,s2
	auipc	ra,0001EFC6
	jalr	ra,ra,+000007BE
	c.li	a0,00000002
	auipc	ra,0001EFC7
	jalr	ra,ra,-000007F2
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

l23046656:
	c.li	s0,00000001
	c.j	000000002304660E

;; mfg_efuse_read_poweroffset: 2304665A
;;   Called from:
;;     23046484 (in mfg_media_read_poweroffset)
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
	auipc	ra,0001EFC6
	jalr	ra,ra,+00000788
	c.mv	s2,a0
	auipc	ra,0001EFC6
	jalr	ra,ra,+00000788
	c.mv	s1,a0
	c.li	a0,00000001
	auipc	ra,0001EFC6
	jalr	ra,ra,+000007C2
	lui	s0,0004200E
	lbu	a4,s0,-0000037C
	c.li	a5,00000002
	addi	s0,s0,-0000037C
	bltu	a5,a4,00000000230466C8

l2304669C:
	lbu	a4,s0,+00000000
	c.li	a5,00000001
	bgeu	a5,a4,00000000230466B2

l230466A6:
	c.mv	a1,s4
	c.li	a0,00000001
	jal	ra,000000002304632C
	beq	a0,zero,0000000023046832

l230466B2:
	lbu	a5,s0,+00000000
	c.bnez	a5,00000000230466D6

l230466B8:
	lui	a0,0002307B
	addi	a0,a0,+000002DC
	jal	ra,0000000023003AC6
	c.li	s0,00000001
	c.j	0000000023046804

l230466C8:
	c.mv	a1,s4
	c.li	a0,00000002
	jal	ra,000000002304632C
	c.bnez	a0,000000002304669C

l230466D2:
	c.li	s0,00000002
	c.j	00000000230466E2

l230466D6:
	c.mv	a1,s4
	c.li	a0,00000000
	jal	ra,000000002304632C
	c.mv	s0,a0
	c.bnez	a0,00000000230466B8

l230466E2:
	lui	a0,0002307B
	c.mv	a1,s0
	addi	a0,a0,+000002CC
	jal	ra,0000000023003AC6
	c.mv	a2,s4
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,00000000230463A4
	c.li	a2,0000000E
	c.li	a1,00000000
	c.mv	s0,a0
	c.mv	a0,s3
	jal	ra,000000002306D1BC
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

l23046804:
	c.mv	a1,s2
	c.mv	a0,s1
	auipc	ra,0001EFC6
	jalr	ra,ra,+000005E2
	c.li	a0,00000002
	auipc	ra,0001EFC6
	jalr	ra,ra,+00000632
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

l23046832:
	c.li	s0,00000001
	c.j	00000000230466E2

;; mfg_efuse_read_macaddr: 23046836
;;   Called from:
;;     23046492 (in mfg_media_read_macaddr)
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
	auipc	ra,0001EFC6
	jalr	ra,ra,+000005AC
	c.mv	s3,a0
	auipc	ra,0001EFC6
	jalr	ra,ra,+000005AC
	c.mv	s2,a0
	c.li	a0,00000001
	auipc	ra,0001EFC6
	jalr	ra,ra,+000005E6
	lui	s0,0004200E
	lbu	a4,s0,-0000037C
	c.li	a5,00000002
	addi	s0,s0,-0000037C
	bltu	a5,a4,00000000230468A2

l23046878:
	lbu	a4,s0,+00000000
	c.li	a5,00000001
	bgeu	a5,a4,000000002304688C

l23046882:
	c.mv	a1,s1
	c.li	a0,00000001
	jal	ra,00000000230460DE
	c.beqz	a0,0000000023046904

l2304688C:
	lbu	a5,s0,+00000000
	c.bnez	a5,00000000230468B0

l23046892:
	lui	a0,0002307B
	addi	a0,a0,+000002DC
	jal	ra,0000000023003AC6
	c.li	s0,00000001
	c.j	00000000230468D6

l230468A2:
	c.mv	a1,s1
	c.li	a0,00000002
	jal	ra,00000000230460DE
	c.bnez	a0,0000000023046878

l230468AC:
	c.li	s0,00000002
	c.j	00000000230468BC

l230468B0:
	c.mv	a1,s1
	c.li	a0,00000000
	jal	ra,00000000230460DE
	c.mv	s0,a0
	c.bnez	a0,0000000023046892

l230468BC:
	lui	a0,0002307B
	c.mv	a1,s0
	addi	a0,a0,+000002CC
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	c.mv	a2,s1
	c.mv	a1,s4
	jal	ra,000000002304615A
	c.mv	s0,a0

l230468D6:
	c.mv	a1,s3
	c.mv	a0,s2
	auipc	ra,0001EFC6
	jalr	ra,ra,+00000510
	c.li	a0,00000002
	auipc	ra,0001EFC6
	jalr	ra,ra,+00000560
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

l23046904:
	c.li	s0,00000001
	c.j	00000000230468BC

;; mfg_flash_read: 23046908
;;   Called from:
;;     2304698A (in mfg_flash_read_xtal_capcode)
;;     230469EE (in mfg_flash_read_poweroffset)
;;     23046B32 (in mfg_flash_read_macaddr)
mfg_flash_read proc
	lui	a0,0002307B
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000002F4
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6
	csrrci	zero,mstatus,00000008
	lui	a5,0004200E
	lw	a1,a5,+00000370
	lui	a5,0004200E
	lw	a0,a5,+0000036C
	lui	a2,00042015
	c.li	a3,00000018
	addi	a2,a2,+0000066C
	auipc	ra,0001EFC6
	jalr	ra,ra,+00000044
	csrrsi	zero,mstatus,00000008
	c.li	a5,00000000
	c.beqz	a0,0000000023046954

l23046946:
	lui	a0,0002307B
	addi	a0,a0,+00000308
	jal	ra,0000000023003AC6
	c.li	a5,FFFFFFFF

l23046954:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; mfg_flash_read_xtal_capcode: 2304695C
;;   Called from:
;;     23046474 (in mfg_media_read_xtal_capcode)
mfg_flash_read_xtal_capcode proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.mv	s1,a0
	c.bnez	a1,000000002304698A

l2304696A:
	lui	s0,00042015
	addi	s0,s0,+0000066C
	c.lw	s0,0(a4)
	addi	a5,zero,+00000041
	beq	a4,a5,0000000023046992

l2304697C:
	c.li	a0,FFFFFFFF

l2304697E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2304698A:
	jal	ra,0000000023046908
	c.beqz	a0,000000002304696A

l23046990:
	c.j	000000002304697C

l23046992:
	lw	s2,s0,+00000014
	c.li	a1,00000010
	addi	a0,s0,+00000004
	auipc	ra,0001EFC6
	jalr	ra,ra,+00000042
	bne	s2,a0,000000002304697C

l230469A8:
	lbu	a4,s0,+00000004
	addi	a5,zero,+0000005A
	bne	a4,a5,000000002304697C

l230469B4:
	lbu	a5,s0,+00000005
	c.li	a0,00000000
	sb	a5,s1,+00000000
	c.j	000000002304697E

;; mfg_flash_read_poweroffset: 230469C0
;;   Called from:
;;     23046482 (in mfg_media_read_poweroffset)
mfg_flash_read_poweroffset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s0,a0
	c.bnez	a1,00000000230469EE

l230469CE:
	lui	s1,00042015
	addi	s1,s1,+0000066C
	c.lw	s1,0(a4)
	addi	a5,zero,+00000041
	beq	a4,a5,00000000230469F6

l230469E0:
	c.li	a0,FFFFFFFF

l230469E2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230469EE:
	jal	ra,0000000023046908
	c.beqz	a0,00000000230469CE

l230469F4:
	c.j	00000000230469E0

l230469F6:
	lw	s2,s1,+00000014
	c.li	a1,00000010
	addi	a0,s1,+00000004
	auipc	ra,0001EFC6
	jalr	ra,ra,-00000022
	bne	s2,a0,00000000230469E0

l23046A0C:
	lbu	a4,s1,+00000006
	addi	a5,zero,+0000005A
	bne	a4,a5,00000000230469E0

l23046A18:
	c.li	a2,0000000E
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002306D1BC
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
	c.j	00000000230469E2

;; mfg_flash_read_macaddr: 23046B24
;;   Called from:
;;     23046490 (in mfg_media_read_macaddr)
mfg_flash_read_macaddr proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.mv	s1,a0
	c.beqz	a1,0000000023046B52

l23046B32:
	jal	ra,0000000023046908
	c.beqz	a0,0000000023046B52

l23046B38:
	lui	a0,0002307B
	addi	a0,a0,+0000031C
	jal	ra,0000000023003AC6

l23046B44:
	c.li	a0,FFFFFFFF

l23046B46:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23046B52:
	lui	s0,00042015
	addi	s0,s0,+0000066C
	c.lw	s0,0(a4)
	addi	a5,zero,+00000041
	bne	a4,a5,0000000023046B44

l23046B64:
	lw	s2,s0,+00000014
	c.li	a1,00000010
	addi	a0,s0,+00000004
	auipc	ra,0001EFC6
	jalr	ra,ra,-00000190
	bne	s2,a0,0000000023046B44

l23046B7A:
	lbu	a4,s0,+0000000A
	addi	a5,zero,+0000005A
	bne	a4,a5,0000000023046B44

l23046B86:
	c.li	a2,00000006
	addi	a1,s0,+0000000B
	c.mv	a0,s1
	jal	ra,000000002306CF80
	c.li	a0,00000000
	c.j	0000000023046B46

;; hal_mib_dump: 23046B96
;;   Called from:
;;     230066EE (in cmd_wifi_mib)
;;     2305021C (in bl_fw_statistic_dump)
hal_mib_dump proc
	lui	a0,0002307B
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000334
	c.swsp	ra,00000084
	jal	ra,0000000023003A8A
	lui	a5,0004200E
	lw	a5,a5,-00000378
	lui	a0,0002307B
	addi	a0,a0,+0000035C
	c.lw	a5,12(a1)
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000020
	lui	a0,00023076
	addi	a0,a0,+0000076C
	c.addi	sp,00000010
	jal	zero,0000000023003A8A

;; mm_monitor_channel_req_handler: 23046BCC
mm_monitor_channel_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	addi	a0,zero,+0000005F
	c.mv	s1,a1
	c.mv	a1,a3
	addi	a3,zero,+00000028
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,0000000023050474
	c.li	a5,00000001
	c.lw	s1,0(a3)
	c.sw	a0,0(a5)
	lui	a5,00011111
	addi	a5,a5,+00000111
	c.sw	a0,12(a5)
	lui	a5,00022222
	addi	a5,a5,+00000222
	c.sw	a0,16(a5)
	lui	a5,00033333
	addi	a5,a5,+00000333
	c.sw	a0,20(a5)
	lui	a5,00044444
	addi	a5,a5,+00000444
	c.sw	a0,24(a5)
	lui	a5,00055555
	addi	a5,a5,+00000555
	c.sw	a0,28(a5)
	lui	a5,00066666
	addi	a5,a5,+00000666
	c.sw	a0,32(a5)
	lui	a5,00077777
	addi	a5,a5,+00000777
	sw	zero,a0,+00000008
	c.sw	a0,36(a5)
	c.lw	s1,0(a2)
	c.mv	s0,a0
	c.sw	a0,4(a2)
	c.lw	s1,4(a1)
	c.slli	a2,10
	c.srli	a2,00000010
	c.bnez	a1,0000000023046C6A

l23046C42:
	c.slli	a3,10
	c.srli	a3,00000010
	c.li	a5,00000000
	c.li	a4,00000000
	sltu	a1,zero,a1
	c.li	a0,00000000
	jal	ra,0000000023055EB0
	c.mv	a0,s0
	sw	zero,s0,+00000000
	jal	ra,00000000230504E0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23046C6A:
	c.lw	s1,8(a5)
	addi	a3,a2,+0000000A
	c.bnez	a5,0000000023046C42

l23046C72:
	addi	a3,a2,-0000000A
	c.j	0000000023046C42

;; mm_monitor_enable_req_handler: 23046C78
mm_monitor_enable_req_handler proc
	c.addi16sp	FFFFFFB0
	c.swsp	s1,000000A0
	addi	a0,zero,+0000005D
	c.mv	s1,a1
	c.mv	a1,a3
	addi	a3,zero,+00000028
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	jal	ra,0000000023050474
	c.li	a5,00000001
	c.sw	a0,0(a5)
	lui	a5,00011111
	addi	a5,a5,+00000111
	c.sw	a0,12(a5)
	lui	a5,00022222
	addi	a5,a5,+00000222
	c.sw	a0,16(a5)
	lui	a5,00033333
	addi	a5,a5,+00000333
	c.sw	a0,20(a5)
	lui	a5,00044444
	addi	a5,a5,+00000444
	c.sw	a0,24(a5)
	lui	a5,00055555
	addi	a5,a5,+00000555
	c.sw	a0,28(a5)
	lui	a5,00066666
	addi	a5,a5,+00000666
	c.sw	a0,32(a5)
	lui	a5,00077777
	addi	a5,a5,+00000777
	sw	zero,a0,+00000008
	c.sw	a0,36(a5)
	c.lw	s1,0(a5)
	c.mv	s0,a0
	addi	a2,zero,+00000040
	c.sw	a0,4(a5)
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,000000002306D1BC
	c.mv	a0,sp
	c.swsp	zero,00000000
	jal	ra,0000000023055F38
	c.lui	a3,00001000
	addi	a3,a3,-0000067B
	c.li	a5,00000000
	c.li	a4,00000000
	c.mv	a2,a3
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,0000000023055EB0
	jal	ra,000000002305D7B6
	c.mv	a0,s0
	sw	zero,s0,+00000000
	jal	ra,00000000230504E0
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.li	a0,00000000
	c.addi16sp	00000050
	c.jr	ra

;; mm_cfg_rssi_req_handler: 23046D26
mm_cfg_rssi_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lbu	s1,a1,+00000000
	addi	a3,zero,+000005D8
	lui	a5,0004201C
	add	a3,s1,a3
	addi	a4,a5,-00000308
	c.mv	s2,a1
	addi	s0,a5,-00000308
	c.add	a4,a3
	lbu	a4,a4,+00000056
	c.beqz	a4,0000000023046D6C

l23046D52:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307B
	addi	a2,a2,-00000702
	addi	a1,a1,+00000388
	addi	a0,a0,+00000390
	jal	ra,0000000023054FF4

l23046D6C:
	addi	a5,zero,+000005D8
	add	a5,s1,a5
	lb	a4,s2,+00000001
	c.li	a0,00000000
	c.add	a5,s0
	sb	a4,a5,+00000076
	lbu	a4,s2,+00000002
	sb	zero,a5,+00000078
	sb	a4,a5,+00000077
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; mm_set_ps_options_req_handler: 23046D98
mm_set_ps_options_req_handler proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	lbu	s1,a1,+00000000
	c.mv	s3,a2
	addi	a2,zero,+000005D8
	add	a2,s1,a2
	lui	a5,0004201C
	addi	a4,a5,-00000308
	c.mv	s2,a1
	addi	s0,a5,-00000308
	c.add	a4,a2
	lbu	a4,a4,+00000056
	c.beqz	a4,0000000023046DE6

l23046DC8:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307B
	addi	a2,a2,-000007EB
	addi	a1,a1,+00000388
	addi	a0,a0,+00000390
	c.swsp	a3,00000084
	jal	ra,0000000023054FF4
	c.lwsp	a2,000000A4

l23046DE6:
	addi	a5,zero,+000005D8
	add	a5,s1,a5
	lhu	a4,s2,+00000002
	c.mv	a2,s3
	addi	a0,zero,+0000004C
	c.mv	a1,a3
	c.add	a5,s0
	sh	a4,a5,+0000005C
	lbu	a4,s2,+00000004
	sb	a4,a5,+0000005E
	jal	ra,000000002305054A
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; mm_tim_update_req_handler: 23046E1C
mm_tim_update_req_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a1
	c.swsp	ra,00000084
	jal	ra,000000002305E99E
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; mm_bcn_change_req_handler: 23046E2E
mm_bcn_change_req_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a1
	c.swsp	ra,00000084
	jal	ra,000000002305EE42
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; mm_remain_on_channel_req_handler: 23046E40
mm_remain_on_channel_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a1
	c.mv	a0,s1
	c.mv	a1,a3
	c.swsp	s0,0000000C
	c.swsp	a2,00000084
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.mv	s0,a3
	jal	ra,000000002305C0CE
	c.lwsp	a2,00000084
	c.beqz	s0,0000000023046E80

l23046E5C:
	c.mv	s2,a0
	c.li	a3,00000003
	c.mv	a1,s0
	addi	a0,zero,+00000047
	jal	ra,0000000023050474
	lbu	a4,s1,+00000000
	sb	s2,a0,+00000001
	sb	a4,a0,+00000000
	c.li	a4,00000004
	sb	a4,a0,+00000002
	jal	ra,00000000230504E0

l23046E80:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; mm_sta_del_req_handler: 23046E8E
mm_sta_del_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	lbu	a0,a1,+00000000
	c.swsp	a2,00000084
	c.swsp	a3,00000004
	jal	ra,000000002305DF24
	c.lwsp	s0,000000A4
	c.lwsp	a2,00000084
	c.li	a0,0000000D
	c.mv	a1,a3
	jal	ra,000000002305054A
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; mm_sta_add_req_handler: 23046EB2
mm_sta_add_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.li	a0,0000000B
	c.mv	s1,a1
	c.mv	a1,a3
	c.li	a3,00000003
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023050474
	c.mv	s0,a0
	addi	a2,a0,+00000002
	addi	a1,a0,+00000001
	c.mv	a0,s1
	jal	ra,000000002305DCD6
	sb	a0,s0,+00000000
	c.mv	a0,s0
	jal	ra,00000000230504E0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_key_del_req_handler: 23046EEC
mm_key_del_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	lui	a5,00044B00
	lw	a5,a5,+000000D8
	lbu	a4,a1,+00000000
	c.mv	s0,a1
	c.srli	a5,00000018
	c.addi	a5,00000001
	c.mv	s2,a2
	c.mv	s1,a3
	bge	a5,a4,0000000023046F28

l23046F10:
	lui	a1,0002307B
	lui	a0,0002307B
	addi	a2,zero,+0000056E
	addi	a1,a1,+00000388
	addi	a0,a0,+000005B0
	jal	ra,0000000023054FF4

l23046F28:
	lbu	a0,s0,+00000000
	jal	ra,000000002305DA56
	c.mv	a2,s2
	c.mv	a1,s1
	addi	a0,zero,+00000027
	jal	ra,000000002305054A
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_key_add_req_handler: 23046F4A
mm_key_add_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	a0,zero,+00000025
	c.mv	s0,a1
	c.mv	a1,a3
	c.li	a3,00000002
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	jal	ra,0000000023050474
	lbu	a4,s0,+00000000
	c.li	a5,00000003
	c.mv	s1,a0
	bgeu	a5,a4,0000000023046F84

l23046F6C:
	lui	a1,0002307B
	lui	a0,0002307B
	addi	a2,zero,+0000053D
	addi	a1,a1,+00000388
	addi	a0,a0,+0000052C
	jal	ra,0000000023054FF4

l23046F84:
	lbu	a4,s0,+00000004
	addi	a5,zero,+00000020
	bgeu	a5,a4,0000000023046FA8

l23046F90:
	lui	a1,0002307B
	lui	a0,0002307B
	addi	a2,zero,+00000541
	addi	a1,a1,+00000388
	addi	a0,a0,+00000554
	jal	ra,0000000023054FF4

l23046FA8:
	lbu	a4,s0,+00000028
	c.li	a5,00000005
	bgeu	a5,a4,0000000023046FCA

l23046FB2:
	lui	a1,0002307B
	lui	a0,0002307B
	addi	a2,zero,+00000544
	addi	a1,a1,+00000388
	addi	a0,a0,+0000057C
	jal	ra,0000000023054FF4

l23046FCA:
	c.mv	a0,s0
	jal	ra,000000002305D926
	sb	a0,s1,+00000001
	sb	zero,s1,+00000000
	c.mv	a0,s1
	jal	ra,00000000230504E0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_set_power_req_handler: 23046FEA
mm_set_power_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.mv	s2,a1
	c.swsp	s1,00000080
	c.mv	a1,a3
	lbu	s1,s2,+00000000
	c.li	a3,00000002
	addi	a0,zero,+0000002F
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023050474
	addi	a4,zero,+000005D8
	add	s1,s1,a4
	c.mv	s0,a0
	lb	a5,s2,+00000001
	lui	a0,0004201C
	addi	a0,a0,-00000308
	c.mv	a2,s0
	addi	a1,s0,+00000001
	c.add	a0,s1
	sb	a5,a0,+0000005A
	lb	a5,a0,+00000059
	sb	a5,s0,+00000001
	addi	a5,zero,+0000007F
	sb	a5,a0,+00000059
	jal	ra,0000000023049456
	c.mv	a0,s0
	jal	ra,00000000230504E0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_set_idle_req_handler: 23047050
mm_set_idle_req_handler proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a2
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s0,a2
	c.mv	s2,a3
	jal	ra,000000002305070E
	c.li	a5,00000003
	c.lwsp	a2,00000064
	bne	a0,a5,000000002304707E

l2304706E:
	c.li	s1,00000002

l23047070:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2304707E:
	lbu	a4,a1,+00000000
	lui	a5,0004201E
	addi	a3,a5,+00000360
	sb	a4,a3,+00000022
	addi	s1,a5,+00000360
	c.mv	a0,s0
	c.beqz	a4,00000000230470E6

l23047096:
	jal	ra,000000002305070E
	c.beqz	a0,00000000230470B0

l2304709C:
	c.li	s1,00000002
	beq	a0,s1,0000000023047070

l230470A2:
	jal	ra,000000002305CAF8
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,000000002305060E
	c.j	0000000023047070

l230470B0:
	lui	a5,00044B00
	c.lw	a5,56(a5)
	c.andi	a5,0000000F
	c.beqz	a5,00000000230470D2

l230470BA:
	lui	a1,0002307B
	lui	a0,0002307B
	addi	a2,zero,+0000047D
	addi	a1,a1,+00000388
	addi	a0,a0,+000005D8
	jal	ra,0000000023054FF4

l230470D2:
	sh	zero,s1,+00000012

l230470D6:
	c.mv	a2,s0
	c.mv	a1,s2
	addi	a0,zero,+00000023
	jal	ra,000000002305054A
	c.li	s1,00000000
	c.j	0000000023047070

l230470E6:
	jal	ra,000000002305070E
	c.li	a5,00000002
	beq	a0,a5,000000002304706E

l230470F0:
	jal	ra,000000002305D7B6
	c.j	00000000230470D6

;; mm_reset_req_handler: 230470F6
mm_reset_req_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a2,00000084
	c.swsp	a3,00000004
	csrrci	zero,mstatus,00000008
	jal	ra,000000002305CB60
	jal	ra,0000000023056304
	jal	ra,000000002304B370
	jal	ra,000000002305D77A
	csrrsi	zero,mstatus,00000008
	c.lwsp	s0,000000A4
	c.lwsp	a2,00000084
	c.li	a0,00000001
	c.mv	a1,a3
	jal	ra,000000002305054A
	c.li	a0,00000000
	c.li	a1,00000000
	jal	ra,000000002305060E
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; mm_version_req_handler: 23047132
mm_version_req_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a1,a3
	c.li	a0,00000005
	c.li	a3,00000018
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023050474
	lui	a5,00005040
	c.sw	a0,0(a5)
	lui	a5,00044B00
	c.lw	a5,4(a4)
	c.mv	s0,a0
	addi	a1,a0,+00000010
	c.sw	a0,4(a4)
	c.lw	a5,8(a5)
	c.addi	a0,0000000C
	sw	a5,a0,+00000FFC
	jal	ra,0000000023055F12
	c.lui	a5,00009000
	addi	a5,a5,-00000621
	c.mv	a0,s0
	c.sw	s0,20(a5)
	jal	ra,00000000230504E0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_start_req_handler: 2304717A
mm_start_req_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a2
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s1,a1
	c.mv	s0,a2
	c.mv	s2,a3
	jal	ra,000000002305070E
	c.beqz	a0,00000000230471AA

l23047192:
	lui	a1,0002307B
	lui	a0,0002307B
	addi	a2,zero,+00000135
	addi	a1,a1,+00000388
	addi	a0,a0,+00000600
	jal	ra,0000000023054FF4

l230471AA:
	c.mv	a0,s1
	jal	ra,0000000023055F38
	c.lui	a3,00001000
	addi	a3,a3,-00000694
	c.mv	a2,a3
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,0000000023055EB0
	c.li	a0,00000010
	jal	ra,0000000023049412
	c.lw	s1,64(a5)
	addi	a4,zero,+000003E8
	c.mv	a2,s0
	add	a5,a5,a4
	lui	a4,0004201A
	c.mv	a1,s2
	c.li	a0,00000003
	sw	a5,a4,+000007D8
	lhu	a4,s1,+00000044
	lui	a5,0004201E
	sh	a4,a5,+00000380
	jal	ra,000000002305054A
	jal	ra,000000002305D7B6
	jal	ra,000000002305CAF8
	c.mv	a0,s0
	c.li	a1,00000002
	jal	ra,000000002305060E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mm_set_ps_mode_req_handler: 23047210
mm_set_ps_mode_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lbu	a0,a1,+00000000
	c.li	a5,00000003
	bne	a0,a5,000000002304725C

l23047220:
	lui	a5,0004201D
	lw	s0,a5,-00000750

l23047228:
	c.bnez	s0,0000000023047246

l2304722A:
	lui	a5,0004201A
	lhu	a1,a5,+000007BA
	c.li	a2,00000000
	addi	a0,zero,+00000032
	jal	ra,000000002305054A

l2304723C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23047246:
	lbu	a5,s0,+00000056
	c.bnez	a5,0000000023047258

l2304724C:
	lbu	a5,s0,+00000058
	c.beqz	a5,0000000023047258

l23047252:
	c.mv	a0,s0
	jal	ra,0000000023047F94

l23047258:
	c.lw	s0,0(s0)
	c.j	0000000023047228

l2304725C:
	c.mv	a1,a3
	jal	ra,0000000023047CEE
	c.j	000000002304723C

;; mm_force_idle_req_handler: 23047264
mm_force_idle_req_handler proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a2
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a1
	c.mv	s1,a2
	jal	ra,000000002305070E
	c.beqz	a0,0000000023047296

l23047278:
	c.li	s0,00000002
	beq	a0,s0,000000002304728A

l2304727E:
	jal	ra,000000002305CAF8
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,000000002305060E

l2304728A:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23047296:
	lui	a5,00044B00
	c.lw	a5,56(a5)
	c.andi	a5,0000000F
	c.beqz	a5,00000000230472B8

l230472A0:
	lui	a1,0002307B
	lui	a0,0002307B
	addi	a2,zero,+000004C0
	addi	a1,a1,+00000388
	addi	a0,a0,+000005D8
	jal	ra,0000000023054FF4

l230472B8:
	c.li	a1,00000003
	c.mv	a0,s1
	jal	ra,000000002305060E
	c.lw	s0,0(a5)
	c.li	s0,00000000
	c.jalr	a5
	c.j	000000002304728A

;; mm_hw_config_handler: 230472C8
mm_hw_config_handler proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.mv	s2,a0
	c.mv	a0,a2
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.mv	s0,a1
	c.mv	s1,a2
	c.mv	s3,a3
	jal	ra,000000002305070E
	c.beqz	a0,00000000230472FE

l230472EE:
	c.addi	a0,FFFFFFFE
	c.slli	a0,10
	c.srli	a0,00000010
	c.li	a5,00000001
	bltu	a5,a0,00000000230477E6

l230472FA:
	c.li	s0,00000002
	c.j	00000000230474CA

l230472FE:
	lui	a5,00044B00
	c.lw	a5,56(a5)
	c.andi	a5,0000000F
	c.beqz	a5,0000000023047320

l23047308:
	lui	a1,0002307B
	lui	a0,0002307B
	addi	a2,zero,+0000077B
	addi	a1,a1,+00000388
	addi	a0,a0,+000005D8
	jal	ra,0000000023054FF4

l23047320:
	lui	s4,0004201E
	c.li	a5,00000016
	addi	s4,s4,+00000360
	beq	s2,a5,0000000023047530

l2304732E:
	bltu	a5,s2,00000000230473AA

l23047332:
	c.li	a5,0000000E
	beq	s2,a5,0000000023047476

l23047338:
	bltu	a5,s2,0000000023047364

l2304733C:
	c.li	a5,00000006
	beq	s2,a5,00000000230474E4

l23047342:
	c.li	a5,00000008
	beq	s2,a5,000000002304750C

l23047348:
	lui	a1,0002307B
	lui	a0,0002307D
	addi	a2,zero,+000007AE
	addi	a1,a1,+00000388
	addi	a0,a0,-0000024C
	jal	ra,0000000023054FF4
	c.li	s0,00000002
	c.j	0000000023047494

l23047364:
	c.li	a5,00000012
	beq	s2,a5,00000000230475AE

l2304736A:
	c.li	a5,00000014
	beq	s2,a5,0000000023047566

l23047370:
	c.li	a5,00000010
	bne	s2,a5,0000000023047348

l23047376:
	c.li	a3,00000002
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,00000011
	jal	ra,0000000023050474
	lbu	a5,s0,+00000008
	c.mv	s2,a0
	c.beqz	a5,00000000230473A2

l2304738A:
	lhu	a4,s0,+00000006
	lhu	a3,s0,+00000004
	lhu	a2,s0,+00000002
	lbu	a1,s0,+00000001
	lbu	a0,s0,+00000000
	jal	ra,0000000023055EB0

l230473A2:
	c.mv	a0,s2

l230473A4:
	jal	ra,00000000230504E0
	c.j	0000000023047492

l230473AA:
	c.li	a5,0000001E
	beq	s2,a5,00000000230476B4

l230473B0:
	bltu	a5,s2,0000000023047438

l230473B4:
	c.li	a5,0000001A
	beq	s2,a5,00000000230475DA

l230473BA:
	c.li	a5,0000001C
	beq	s2,a5,0000000023047672

l230473C0:
	c.li	a5,00000018
	bne	s2,a5,0000000023047348

l230473C6:
	lbu	a5,s0,+00000006
	addi	a0,zero,+000005D8
	c.li	a2,00000006
	add	a5,a5,a0
	lui	a0,0004201C
	addi	a0,a0,-00000308
	c.mv	a1,s0
	addi	a5,a5,+00000038
	c.add	a0,a5
	jal	ra,000000002306CF80
	lui	a5,0004201D
	addi	a5,a5,-00000758
	lbu	a4,a5,+00000011
	lbu	a5,a5,+00000010
	c.add	a5,a4
	c.li	a4,00000001
	bne	a5,a4,0000000023047430

l23047400:
	lbu	a4,s0,+00000001
	lbu	a5,s0,+00000000
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,s0,+00000002
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,s0,+00000003
	c.slli	a5,18
	c.or	a5,a4
	lui	a4,00044B00
	c.sw	a4,32(a5)
	lbu	a5,s0,+00000005
	lbu	a3,s0,+00000004
	c.slli	a5,08
	c.or	a5,a3
	c.sw	a4,36(a5)

l23047430:
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,00000019
	c.j	000000002304748E

l23047438:
	addi	a5,zero,+00000028
	beq	s2,a5,000000002304779C

l23047440:
	addi	a5,zero,+0000003B
	beq	s2,a5,00000000230477D6

l23047448:
	addi	a5,zero,+00000020
	bne	s2,a5,0000000023047348

l23047450:
	lui	a4,00044B00
	lw	a5,a4,+000000E4
	lbu	a3,s0,+00000000
	c.mv	a2,s1
	andi	a5,a5,+000000FF
	add	a5,a3,a5
	c.mv	a1,s3
	addi	a0,zero,+00000021
	c.slli	a5,08
	c.or	a5,a3
	sw	a5,a4,+000000E8
	c.j	000000002304748E

l23047476:
	c.lw	s0,0(a5)
	lw	a4,s4,+00000004
	c.mv	a2,s1
	sw	a5,s4,+00000000
	c.or	a5,a4
	lui	a4,00044B00
	c.sw	a4,96(a5)
	c.mv	a1,s3
	c.li	a0,0000000F

l2304748E:
	jal	ra,000000002305054A

l23047492:
	c.li	s0,00000000

l23047494:
	lbu	s2,s4,+00000013
	c.slli	s2,04
	andi	a5,s2,-000000F1
	c.beqz	a5,00000000230474B8

l230474A0:
	lui	a1,0002307B
	lui	a0,0002307B
	addi	a2,zero,+000005B9
	addi	a1,a1,+00000388
	addi	a0,a0,+000004F0
	jal	ra,0000000023054FF4

l230474B8:
	lui	a5,00044B00
	sw	s2,a5,+00000038
	lbu	a1,s4,+00000012
	c.mv	a0,s1
	jal	ra,000000002305060E

l230474CA:
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
	c.lwsp	s0,0000000C
	c.addi16sp	00000030
	c.jr	ra

l230474E4:
	c.li	a3,00000002
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,00000007
	jal	ra,0000000023050474
	lbu	a2,s0,+00000007
	lbu	a1,s0,+00000000
	c.mv	s2,a0
	addi	a3,a0,+00000001
	addi	a0,s0,+00000001
	jal	ra,000000002304AD1A
	sb	a0,s2,+00000000
	c.j	00000000230473A2

l2304750C:
	lbu	a0,s0,+00000000
	c.li	a5,00000001
	bltu	a5,a0,000000002304751A

l23047516:
	jal	ra,000000002304AE8A

l2304751A:
	lui	a5,0004201D
	lw	a5,a5,-00000750
	c.bnez	a5,0000000023047528

l23047524:
	jal	ra,000000002305D0D0

l23047528:
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,00000009
	c.j	000000002304748E

l23047530:
	lui	a5,0004201E
	lw	a4,a5,+000002F0
	lbu	a5,s0,+00000005
	c.lw	s0,0(a3)
	c.addi	a5,00000004
	c.slli	a5,02
	c.add	a5,s4
	c.sw	a5,4(a3)
	c.beqz	a4,000000002304755E

l23047548:
	lbu	a4,a4,+00000004
	lbu	a5,s0,+00000005
	bne	a4,a5,000000002304755E

l23047554:
	lui	a5,00044B00
	c.li	a4,00000010
	sw	a4,a5,+000000DC

l2304755E:
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,00000017
	c.j	000000002304748E

l23047566:
	lbu	a5,s0,+00000002
	addi	a4,zero,+000005D8
	lui	a0,0004201C
	add	a5,a5,a4
	addi	a0,a0,-00000308
	lhu	a1,s0,+00000000
	c.add	a0,a5
	lbu	a5,a0,+00000056
	c.bnez	a5,00000000230475A8

l23047586:
	lbu	a4,a0,+00000060
	addi	a3,zero,+000001B0
	lui	a5,0004201B
	add	a4,a4,a3
	addi	a5,a5,-000007F8
	c.slli	a1,0A
	c.add	a5,a4
	c.sw	a5,4(a1)

l230475A0:
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,00000015
	c.j	000000002304748E

l230475A8:
	jal	ra,000000002304B1B4
	c.j	00000000230475A0

l230475AE:
	lui	a5,00044B00
	lw	a3,a5,+00000090
	lbu	a4,s0,+00000000
	c.mv	a2,s1
	andi	a3,a3,-00000100
	c.or	a4,a3
	sw	a4,a5,+00000090
	lw	a4,a5,+00000090
	lui	a3,00080000
	c.mv	a1,s3
	c.or	a4,a3
	sw	a4,a5,+00000090
	c.li	a0,00000013
	c.j	000000002304748E

l230475DA:
	lbu	s5,s0,+00000006
	addi	a5,zero,+00000176
	lbu	a2,s0,+00000005
	add	a5,s5,a5
	lui	a0,0004201C
	c.lw	s0,0(a3)
	addi	a4,a0,-00000308
	addi	s2,a0,-00000308
	c.add	a5,a2
	c.slli	a5,02
	c.add	a5,a4
	c.sw	a5,8(a3)
	addi	a5,zero,+000005D8
	add	a5,s5,a5
	c.add	a4,a5
	lbu	a5,a4,+00000058
	c.beqz	a5,000000002304763A

l23047610:
	lbu	a4,s0,+00000005
	c.li	a3,00000001
	c.lw	s0,0(a5)
	beq	a4,a3,000000002304765E

l2304761C:
	c.beqz	a4,000000002304762E

l2304761E:
	c.li	a3,00000002
	beq	a4,a3,0000000023047668

l23047624:
	lui	a4,00044B00
	sw	a5,a4,+0000020C
	c.j	0000000023047636

l2304762E:
	lui	a4,00044B00
	sw	a5,a4,+00000200

l23047636:
	jal	ra,000000002305D664

l2304763A:
	addi	a0,zero,+000005D8
	add	a0,s5,a0
	c.add	a0,s2
	lbu	a5,a0,+00000056
	c.bnez	a5,0000000023047656

l2304764A:
	lbu	a2,s0,+00000004
	lbu	a1,s0,+00000005
	jal	ra,0000000023048206

l23047656:
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,0000001B
	c.j	000000002304748E

l2304765E:
	lui	a4,00044B00
	sw	a5,a4,+00000204
	c.j	0000000023047636

l23047668:
	lui	a4,00044B00
	sw	a5,a4,+00000208
	c.j	0000000023047636

l23047672:
	lbu	a5,s0,+00000000
	slli	s0,a5,0000000E
	lui	a5,000003E0
	c.and	a5,s0
	c.beqz	a5,000000002304769C

l23047682:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307B
	addi	a2,a2,-000007CC
	addi	a1,a1,+00000388
	addi	a0,a0,+000004B4
	jal	ra,0000000023054FF4

l2304769C:
	lui	a3,00044B00
	c.lw	a3,76(a5)
	c.lui	a4,FFFE4000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.or	a5,s0
	c.sw	a3,76(a5)
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,0000001D
	c.j	000000002304748E

l230476B4:
	lbu	s7,s0,+00000003
	addi	a0,zero,+000005D8
	lui	a5,0004201C
	add	a0,s7,a0
	addi	s2,a5,-00000308
	addi	s5,a5,-00000308
	c.add	s2,a0
	lbu	a4,s2,+00000056
	c.bnez	a4,000000002304775C

l230476D4:
	lbu	a5,s0,+00000002
	c.addi	a0,00000018
	c.add	a0,s5
	c.beqz	a5,0000000023047798

l230476DE:
	lbu	a5,s2,+00000060
	addi	a4,zero,+000001B0
	lui	s6,0004201B
	add	a5,a5,a4
	addi	s6,s6,-000007F8
	lui	s8,00044B00
	lw	a1,s8,+00000120
	c.add	s6,a5
	lw	a5,s6,+00000004
	c.add	a1,a5
	c.jal	00000000230478F4
	lhu	a5,s0,+00000000
	lw	a4,s6,+00000004
	sh	zero,s2,+0000005C
	sh	a5,s6,+00000018
	lhu	a5,s4,+00000020
	sb	zero,s2,+0000005E
	c.mv	a0,s2
	c.addi	a5,00000014
	add	a5,a5,a4
	lui	a4,000000F4
	addi	a4,a4,+00000240
	srl	a5,a5,a4
	sh	a5,s6,+00000016
	lw	a5,s8,+00000120
	sb	zero,s2,+00000074
	sw	zero,s2,+00000070
	sw	a5,s2,+00000064
	lw	a5,s2,+00000004
	ori	a5,a5,+00000001
	sw	a5,s2,+00000004
	lw	a5,s8,+00000120
	sw	a5,s2,+0000006C
	jal	ra,000000002305C564

l2304775C:
	addi	a5,zero,+000005D8
	add	a5,s7,a5
	lbu	a4,s0,+00000002
	c.add	a5,s5
	sb	a4,a5,+00000058
	c.beqz	a4,0000000023047790

l23047770:
	c.lw	a5,20(a3)
	lui	a4,00044B00
	sw	a3,a4,+00000200
	c.lw	a5,20(a3)
	sw	a3,a4,+00000204
	c.lw	a5,20(a3)
	sw	a3,a4,+00000208
	c.lw	a5,20(a5)
	sw	a5,a4,+0000020C
	jal	ra,000000002305D664

l23047790:
	c.mv	a2,s1
	c.mv	a1,s3
	c.li	a0,0000001F
	c.j	000000002304748E

l23047798:
	c.jal	00000000230479AA
	c.j	000000002304775C

l2304779C:
	lbu	a5,s0,+00000000
	c.li	s2,00000005
	c.beqz	a5,00000000230477B2

l230477A4:
	lui	a4,00044B00
	c.lw	a4,84(a5)
	c.li	s2,00000000
	ori	a5,a5,+00000080
	c.sw	a4,84(a5)

l230477B2:
	c.li	a3,00000003
	c.mv	a2,s1
	c.mv	a1,s3
	addi	a0,zero,+00000029
	jal	ra,0000000023050474
	lbu	a4,s0,+00000001
	sb	a4,a0,+00000000
	lbu	a4,s0,+00000002
	sb	s2,a0,+00000002
	sb	a4,a0,+00000001
	c.j	00000000230473A4

l230477D6:
	c.mv	a0,s0
	jal	ra,000000002305C3AE
	c.mv	a2,s1
	c.mv	a1,s3
	addi	a0,zero,+0000003C
	c.j	000000002304748E

l230477E6:
	lui	a5,00044B00
	c.lw	a5,56(a5)
	lui	s0,0004201E
	addi	s0,s0,+00000360
	c.andi	a5,0000000F
	c.mv	a0,s1
	sb	a5,s0,+00000013
	jal	ra,000000002305070E
	sb	a0,s0,+00000012
	jal	ra,000000002305CAF8
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,000000002305060E
	c.j	00000000230472FA

;; bl60x_edca_get: 23047812
;;   Called from:
;;     23006350 (in wifi_edca_dump_cmd)
;;     2300638C (in wifi_edca_dump_cmd)
;;     230063C4 (in wifi_edca_dump_cmd)
;;     230063FC (in wifi_edca_dump_cmd)
bl60x_edca_get proc
	c.li	a5,00000001
	beq	a0,a5,0000000023047864

l23047818:
	blt	a5,a0,0000000023047822

l2304781C:
	c.beqz	a0,0000000023047838

l2304781E:
	c.li	a0,FFFFFFFF
	c.jr	ra

l23047822:
	c.li	a5,00000002
	beq	a0,a5,0000000023047892

l23047828:
	c.li	a5,00000003
	bne	a0,a5,000000002304781E

l2304782E:
	lui	a5,00044B00
	lw	a5,a5,+0000020C
	c.j	000000002304786C

l23047838:
	lui	a5,00044B00
	lw	a5,a5,+00000200
	srli	a6,a5,0000000C
	sh	a6,a4,+00000000
	srli	a4,a5,00000008
	c.andi	a4,0000000F
	sb	a4,a3,+00000000
	srli	a4,a5,00000004
	c.andi	a4,0000000F
	sb	a4,a2,+00000000
	c.andi	a5,0000000F
	sb	a5,a1,+00000000
	c.jr	ra

l23047864:
	lui	a5,00044B00
	lw	a5,a5,+00000204

l2304786C:
	srli	a0,a5,0000000C
	sh	a0,a4,+00000000
	srli	a4,a5,00000008
	c.andi	a4,0000000F
	sb	a4,a3,+00000000
	srli	a4,a5,00000004
	c.andi	a4,0000000F
	sb	a4,a2,+00000000
	c.andi	a5,0000000F
	sb	a5,a1,+00000000
	c.li	a0,00000000
	c.jr	ra

l23047892:
	lui	a5,00044B00
	lw	a5,a5,+00000208
	c.j	000000002304786C

;; mm_timer_hw_set: 2304789C
;;   Called from:
;;     23047968 (in mm_timer_set)
;;     230479CE (in mm_timer_clear)
;;     23047A24 (in mm_timer_schedule)
;;     23047A5E (in mm_timer_schedule)
mm_timer_hw_set proc
	csrrci	zero,mstatus,00000008
	c.beqz	a0,00000000230478D0

l230478A2:
	c.lw	a0,12(a4)
	lui	a5,00044B00
	sw	a4,a5,+00000144
	lui	a4,00044B08
	lw	a5,a4,+0000008C
	andi	a3,a5,+00000080
	c.bnez	a3,00000000230478CA

l230478BA:
	addi	a3,zero,+00000080
	sw	a3,a4,+00000088
	ori	a5,a5,+00000080

l230478C6:
	sw	a5,a4,+0000008C

l230478CA:
	csrrsi	zero,mstatus,00000008
	c.jr	ra

l230478D0:
	lui	a4,00044B08
	lw	a5,a4,+0000008C
	andi	a5,a5,-00000081
	c.j	00000000230478C6

;; cmp_abs_time: 230478DE
cmp_abs_time proc
	c.lw	a0,12(a0)
	c.lw	a1,12(a5)
	c.sub	a0,a5
	c.srli	a0,0000001F
	c.jr	ra

;; mm_timer_init: 230478E8
;;   Called from:
;;     2305D79E (in mm_init)
mm_timer_init proc
	lui	a0,0004201A
	addi	a0,a0,+000007B0
	jal	zero,000000002304FFB4

;; mm_timer_set: 230478F4
;;   Called from:
;;     23047702 (in mm_hw_config_handler)
;;     23047AD0 (in ps_uapsd_timer_handle)
;;     23047E2E (in ps_enable_cfm)
;;     23048250 (in ps_uapsd_set)
;;     2304925C (in td_timer_end)
;;     23049352 (in td_start)
;;     2304B17A (in vif_mgmt_bcn_to_prog)
;;     2304B324 (in vif_mgmt_switch_channel)
;;     23053386 (in keyMgmtSta_StartSession_internal)
;;     2305B43E (in chan_conn_less_delay_prog)
;;     2305B688 (in chan_upd_ctxt_status)
;;     2305B922 (in chan_tbtt_schedule)
;;     2305B96E (in chan_cde_evt)
;;     2305E3D0 (in mm_check_beacon)
;;     2305E49E (in mm_sta_tbtt)
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
	bge	a5,zero,000000002304792C

l23047914:
	lui	a0,0002307B
	addi	a0,a0,+00000650
	jal	ra,0000000023003A8A
	lw	s0,s1,+00000120
	c.lui	a5,00001000
	addi	a5,a5,-00000448
	c.add	s0,a5

l2304792C:
	lui	s1,0004201A
	lw	a5,s1,+000007B0
	bne	s2,a5,000000002304798E

l23047938:
	addi	a0,s1,+000007B0
	jal	ra,000000002305003A
	c.li	s3,00000001

l23047942:
	lui	a2,00023048
	sw	s0,s2,+0000000C
	addi	a2,a2,-00000722
	c.mv	a1,s2
	addi	a0,s1,+000007B0
	jal	ra,00000000230500A8
	bne	s3,zero,0000000023047964

l2304795C:
	lw	a5,s1,+000007B0
	bne	s2,a5,000000002304796C

l23047964:
	lw	a0,s1,+000007B0
	jal	ra,000000002304789C

l2304796C:
	lui	a5,00044B00
	lw	a5,a5,+00000120
	c.sub	s0,a5
	bge	s0,zero,000000002304799C

l2304797A:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,00008000
	c.addi16sp	00000020
	jal	zero,00000000230501A8

l2304798E:
	c.mv	a1,s2
	addi	a0,s1,+000007B0
	jal	ra,0000000023050046
	c.li	s3,00000000
	c.j	0000000023047942

l2304799C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; mm_timer_clear: 230479AA
;;   Called from:
;;     23047798 (in mm_hw_config_handler)
;;     23047F14 (in ps_disable_cfm)
;;     230492AC (in td_reset)
;;     2304AF28 (in vif_mgmt_unregister)
;;     2304AF32 (in vif_mgmt_unregister)
;;     2304B1A2 (in vif_mgmt_bcn_recv)
;;     2304B2FE (in vif_mgmt_switch_channel)
;;     23051088 (in supplicantDisable)
;;     23053192 (in ProcessRxEAPOL_PwkMsg3)
;;     23053250 (in ProcessRxEAPOL_GrpMsg1)
;;     2305B57A (in chan_tbtt_insert)
;;     2305B624 (in chan_upd_ctxt_status)
;;     2305BB00 (in chan_pre_switch_channel)
;;     2305C1F6 (in chan_roc_req)
;;     2305C214 (in chan_roc_req)
mm_timer_clear proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201A
	lw	a5,s0,+000007B0
	c.swsp	ra,00000084
	bne	a0,a5,00000000230479D2

l230479BC:
	addi	a0,s0,+000007B0
	jal	ra,000000002305003A
	lw	a0,s0,+000007B0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002304789C

l230479D2:
	c.mv	a1,a0
	addi	a0,s0,+000007B0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023050046

;; mm_timer_schedule: 230479E2
mm_timer_schedule proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004201A
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s3,s1
	lui	s2,00044B00
	lui	s4,0002307B
	lui	s5,0002307B

l23047A04:
	lui	a0,00008000
	jal	ra,00000000230501C0
	lw	s0,s1,+000007B0
	c.bnez	s0,0000000023047A28

l23047A12:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.li	a0,00000000
	c.addi16sp	00000020
	jal	zero,000000002304789C

l23047A28:
	lw	a4,s2,+00000120
	c.lw	s0,12(a5)
	c.sub	a5,a4
	addi	a5,a5,-00000032
	bge	a5,zero,0000000023047A5C

l23047A38:
	addi	a0,s3,+000007B0
	jal	ra,000000002305003A
	c.lw	s0,4(a5)
	c.bnez	a5,0000000023047A54

l23047A44:
	addi	a2,zero,+000000DE
	addi	a1,s4,+00000388
	addi	a0,s5,+00000644
	jal	ra,0000000023054FF4

l23047A54:
	c.lw	s0,4(a5)
	c.lw	s0,8(a0)
	c.jalr	a5
	c.j	0000000023047A04

l23047A5C:
	c.mv	a0,s0
	jal	ra,000000002304789C
	lw	a4,s2,+00000120
	c.lw	s0,12(a5)
	c.sub	a5,a4
	blt	a5,zero,0000000023047A38

l23047A6E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; ps_uapsd_timer_handle: 23047A80
ps_uapsd_timer_handle proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004201D
	c.swsp	s0,0000000C
	lw	s0,a5,-00000750
	c.swsp	s1,00000088
	lui	s1,0004201A
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.li	s2,00000000
	lui	s3,00044B00
	addi	s1,s1,+000007B8

l23047AA2:
	c.bnez	s0,0000000023047AD4

l23047AA4:
	lui	a5,0004201A
	addi	a5,a5,+000007B8
	beq	s2,zero,0000000023047B22

l23047AB0:
	lui	a4,00044B00
	lw	a1,a4,+00000120
	c.lw	a5,32(a5)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,0004201A
	c.add	a1,a5
	addi	a0,a0,+000007C4
	c.addi16sp	00000020
	jal	zero,00000000230478F4

l23047AD4:
	lbu	a5,s0,+00000056
	c.bnez	a5,0000000023047B1E

l23047ADA:
	lbu	a5,s0,+00000058
	c.beqz	a5,0000000023047B1E

l23047AE0:
	lbu	a5,s0,+00000068
	c.beqz	a5,0000000023047B1E

l23047AE6:
	c.mv	a0,s0
	jal	ra,000000002305C63E
	c.beqz	a0,0000000023047B1E

l23047AEE:
	c.lw	s1,32(a5)
	lw	a4,s3,+00000120
	c.mv	s2,a0
	c.srli	a5,00000001
	c.sub	a5,a4
	c.lw	s0,100(a4)
	c.add	a5,a4
	bge	a5,zero,0000000023047B1E

l23047B02:
	c.lw	s0,4(a5)
	lbu	a0,s0,+00000060
	c.li	a3,00000000
	ori	a5,a5,+00000008
	c.sw	s0,4(a5)
	c.li	a2,00000000
	c.li	a1,00000007
	jal	ra,000000002304A626
	lw	a5,s3,+00000120
	c.sw	s0,100(a5)

l23047B1E:
	c.lw	s0,0(s0)
	c.j	0000000023047AA2

l23047B22:
	sb	zero,a5,+0000001C
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; blmac_pwr_mgt_setf: 23047B34
;;   Called from:
;;     23047B7C (in ps_dpsm_update)
;;     23047D42 (in ps_set_mode)
;;     23047D8A (in ps_set_mode)
blmac_pwr_mgt_setf proc
	lui	a4,00044B00
	c.lw	a4,76(a5)
	c.slli	a0,02
	c.andi	a5,FFFFFFFB
	c.or	a0,a5
	c.sw	a4,76(a0)
	c.jr	ra

;; ps_dpsm_update: 23047B44
;;   Called from:
;;     230482B6 (in ps_traffic_status_update)
ps_dpsm_update proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201A
	addi	a5,s0,+000007B8
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lbu	a4,a5,+00000024
	addi	s0,s0,+000007B8
	c.lw	a5,4(a5)
	c.beqz	a0,0000000023047BA8

l23047B62:
	ori	a4,a4,+00000002
	ori	a5,a5,+00000008
	lui	s2,00023048
	sb	a4,s0,+00000024
	c.sw	s0,4(a5)
	addi	s2,s2,-0000012E

l23047B78:
	xori	a0,a0,+00000001
	jal	ra,0000000023047B34
	lui	a5,0004201D
	lw	s1,a5,-00000750
	sb	zero,s0,+00000008

l23047B8C:
	c.bnez	s1,0000000023047BBE

l23047B8E:
	lbu	a5,s0,+00000008
	c.bnez	a5,0000000023047BF0

l23047B94:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.mv	t1,s2
	c.lwsp	zero,00000048
	lui	a1,00000800
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	t1

l23047BA8:
	ori	a4,a4,+00000004
	c.andi	a5,FFFFFFF7
	lui	s2,00023048
	sb	a4,s0,+00000024
	c.sw	s0,4(a5)
	addi	s2,s2,-00000230
	c.j	0000000023047B78

l23047BBE:
	lbu	a5,s1,+00000056
	c.bnez	a5,0000000023047BEC

l23047BC4:
	lbu	a5,s1,+00000058
	c.beqz	a5,0000000023047BEC

l23047BCA:
	c.mv	a0,s1
	jal	ra,000000002305C63E
	c.beqz	a0,0000000023047BEC

l23047BD2:
	lbu	a5,s0,+00000008
	lbu	a0,s1,+00000060
	sb	zero,s1,+0000005F
	c.addi	a5,00000001
	c.mv	a2,s1
	c.mv	a1,s2
	sb	a5,s0,+00000008
	jal	ra,000000002304A522

l23047BEC:
	c.lw	s1,0(s1)
	c.j	0000000023047B8C

l23047BF0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; ps_send_pspoll: 23047BFC
;;   Called from:
;;     23047F94 (in ps_polling_frame)
;;     23048056 (in ps_check_beacon)
;;     23048170 (in ps_check_frame)
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
	jal	ra,0000000023055E82
	lbu	a0,sp,+00000008
	c.li	a1,00000010
	sltu	a0,zero,a0
	jal	ra,000000002304A24A
	c.beqz	a0,0000000023047CBC

l23047C28:
	c.mv	s1,a0
	c.mv	a1,a0
	c.mv	a0,s3
	jal	ra,0000000023049514
	lw	s2,s1,+00000068
	addi	a5,zero,-0000005C
	lui	s0,0004201B
	sb	a5,s2,+0000014C
	addi	a5,zero,+000001B0
	add	s4,s4,a5
	addi	s0,s0,-000007F8
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
	jal	ra,000000002306CF80
	c.li	a2,00000006
	addi	a1,s3,+00000050
	addi	a0,s2,+00000156
	jal	ra,000000002306CF80
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
	jal	ra,000000002304A376
	c.li	a0,00000000

l23047CAC:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23047CBC:
	c.li	a0,00000001
	c.j	0000000023047CAC

;; ps_init: 23047CC0
;;   Called from:
;;     2305D792 (in mm_init)
ps_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201A
	addi	a0,s0,+000007B8
	addi	a2,zero,+00000028
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,000000002306D1BC
	lui	a5,00023048
	addi	s0,s0,+000007B8
	addi	a5,a5,-00000580
	c.sw	s0,16(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ps_set_mode: 23047CEE
;;   Called from:
;;     2304725E (in mm_set_ps_mode_req_handler)
;;     23047ECE (in ps_enable_cfm)
;;     23047F90 (in ps_disable_cfm)
ps_set_mode proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004201A
	addi	a4,s0,+000007B8
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lbu	a5,a4,+00000024
	sh	a1,a4,+00000002
	addi	s0,s0,+000007B8
	andi	a3,a5,+00000001
	c.beqz	a3,0000000023047D34

l23047D14:
	andi	a3,a5,+00000006
	c.beqz	a3,0000000023047D34

l23047D1A:
	ori	a5,a5,+00000010
	sb	a0,a4,+00000025
	sb	a5,a4,+00000024

l23047D26:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23047D34:
	c.bnez	a0,0000000023047D76

l23047D36:
	lui	s2,00023048
	sb	zero,s0,+00000024
	addi	s2,s2,-0000012E
	jal	ra,0000000023047B34

l23047D46:
	lui	a5,0004201D
	lw	s1,a5,-00000750
	sb	zero,s0,+00000008
	sb	zero,s0,+0000001D
	c.li	s3,00000001

l23047D58:
	c.bnez	s1,0000000023047D94

l23047D5A:
	lbu	a5,s0,+00000008
	c.bnez	a5,0000000023047D26

l23047D60:
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

l23047D76:
	c.li	a4,00000002
	bne	a0,a4,0000000023047D84

l23047D7C:
	ori	a5,a5,+00000001
	sb	a5,s0,+00000024

l23047D84:
	c.li	a0,00000001
	lui	s2,00023048
	jal	ra,0000000023047B34
	addi	s2,s2,-00000230
	c.j	0000000023047D46

l23047D94:
	lbu	a5,s1,+00000056
	c.bnez	a5,0000000023047DCC

l23047D9A:
	lbu	a5,s1,+00000058
	c.beqz	a5,0000000023047DCC

l23047DA0:
	c.mv	a0,s1
	jal	ra,000000002305C63E
	c.beqz	a0,0000000023047DCC

l23047DA8:
	lbu	a5,s0,+00000008
	sb	zero,s1,+0000005F
	c.addi	a5,00000001
	sb	a5,s0,+00000008
	lbu	a5,s1,+00000068
	c.beqz	a5,0000000023047DC0

l23047DBC:
	sb	s3,s0,+0000001D

l23047DC0:
	lbu	a0,s1,+00000060
	c.mv	a2,s1
	c.mv	a1,s2
	jal	ra,000000002304A522

l23047DCC:
	c.lw	s1,0(s1)
	c.j	0000000023047D58

;; ps_enable_cfm: 23047DD0
ps_enable_cfm proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	slli	a5,a1,00000008
	blt	a5,zero,0000000023047DFA

l23047DE0:
	lbu	a5,a0,+0000005F
	c.li	a4,00000003
	c.mv	a2,a0
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,a0,+0000005F
	bne	a5,a4,0000000023047E5E

l23047DF6:
	jal	ra,000000002305E08C

l23047DFA:
	lui	s0,0004201A
	addi	a5,s0,+000007B8
	lbu	a5,a5,+00000008
	addi	s0,s0,+000007B8
	c.bnez	a5,0000000023047E76

l23047E0C:
	lbu	a5,s0,+0000001D
	c.beqz	a5,0000000023047E3A

l23047E12:
	lui	a5,0004201D
	lw	s1,a5,-00000750
	lui	a5,00044B00
	lw	a1,a5,+00000120
	c.lw	s0,32(a5)
	lui	a0,0004201A
	addi	a0,a0,+000007C4
	c.add	a1,a5
	jal	ra,00000000230478F4
	c.li	a5,00000001
	sb	a5,s0,+0000001C

l23047E38:
	c.bnez	s1,0000000023047E8C

l23047E3A:
	lbu	a5,s0,+00000024
	c.li	a4,00000005
	andi	a3,a5,+00000005
	beq	a3,a4,0000000023047EA8

l23047E48:
	lhu	a1,s0,+00000002
	c.li	a5,00000001
	c.li	a2,00000000
	addi	a0,zero,+00000032
	sb	a5,s0,+00000000
	jal	ra,000000002305054A
	c.j	0000000023047EAE

l23047E5E:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lbu	a0,a0,+00000060
	lui	a1,00023048
	addi	a1,a1,-00000230
	c.addi	sp,00000010
	jal	zero,000000002304A522

l23047E76:
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s0,+00000008
	c.beqz	a5,0000000023047E0C

l23047E82:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23047E8C:
	lbu	a5,s1,+00000056
	c.bnez	a5,0000000023047EA4

l23047E92:
	lbu	a5,s1,+00000058
	c.beqz	a5,0000000023047EA4

l23047E98:
	lbu	a5,s1,+00000068
	c.beqz	a5,0000000023047EA4

l23047E9E:
	c.lw	s1,4(a5)
	c.andi	a5,FFFFFFF7
	c.sw	s1,4(a5)

l23047EA4:
	c.lw	s1,0(s1)
	c.j	0000000023047E38

l23047EA8:
	c.andi	a5,FFFFFFF3
	sb	a5,s0,+00000024

l23047EAE:
	lbu	a5,s0,+00000024
	andi	a4,a5,+00000010
	c.beqz	a4,0000000023047E82

l23047EB8:
	c.andi	a5,FFFFFFEF
	sb	a5,s0,+00000024
	lhu	a1,s0,+00000002
	lbu	a0,s0,+00000025
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023047CEE

;; ps_disable_cfm: 23047ED2
ps_disable_cfm proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	slli	a5,a1,00000008
	blt	a5,zero,0000000023047EFA

l23047EE0:
	lbu	a5,a0,+0000005F
	c.li	a4,00000003
	c.mv	a2,a0
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,a0,+0000005F
	bne	a5,a4,0000000023047F3E

l23047EF6:
	jal	ra,000000002305E08C

l23047EFA:
	lui	s0,0004201A
	addi	a5,s0,+000007B8
	lbu	a5,a5,+00000008
	addi	s0,s0,+000007B8
	c.bnez	a5,0000000023047F54

l23047F0C:
	lui	a0,0004201A
	addi	a0,a0,+000007C4
	jal	ra,00000000230479AA
	lbu	a5,s0,+00000024
	sb	zero,s0,+0000001C
	c.li	a4,00000003
	andi	a3,a5,+00000003
	beq	a3,a4,0000000023047F68

l23047F2A:
	lhu	a1,s0,+00000002
	c.li	a2,00000000
	addi	a0,zero,+00000032
	sb	zero,s0,+00000000
	jal	ra,000000002305054A
	c.j	0000000023047F72

l23047F3E:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lbu	a0,a0,+00000060
	lui	a1,00023048
	addi	a1,a1,-0000012E
	c.addi	sp,00000010
	jal	zero,000000002304A522

l23047F54:
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s0,+00000008
	c.beqz	a5,0000000023047F0C

l23047F60:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23047F68:
	c.andi	a5,FFFFFFFD
	ori	a5,a5,+00000008
	sb	a5,s0,+00000024

l23047F72:
	lbu	a5,s0,+00000024
	andi	a4,a5,+00000010
	c.beqz	a4,0000000023047F60

l23047F7C:
	c.andi	a5,FFFFFFEF
	sb	a5,s0,+00000024
	lhu	a1,s0,+00000002
	lbu	a0,s0,+00000025
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023047CEE

;; ps_polling_frame: 23047F94
;;   Called from:
;;     23047254 (in mm_set_ps_mode_req_handler)
ps_polling_frame proc
	jal	zero,0000000023047BFC

;; ps_check_beacon: 23047F98
;;   Called from:
;;     23048762 (in rxl_cntrl_evt)
ps_check_beacon proc
	lbu	a7,a2,+00000060
	addi	a4,zero,+000001B0
	lui	a5,0004201B
	add	a4,a7,a4
	addi	a5,a5,-000007F8
	lui	a1,0004201A
	addi	a1,a1,+000007B8
	lbu	a6,a1,+00000000
	c.add	a5,a4
	lhu	a4,a5,+00000018
	c.lw	a2,4(a5)
	andi	a3,a5,-00000002
	c.sw	a2,4(a3)
	beq	a6,zero,0000000023048076

l23047FCA:
	lbu	a1,a1,+00000024
	c.andi	a1,00000008
	c.bnez	a1,0000000023048076

l23047FD2:
	c.beqz	a0,0000000023048076

l23047FD4:
	lbu	a1,a2,+0000005E
	c.bnez	a1,0000000023047FE8

l23047FDA:
	lbu	a1,a0,+00000004
	c.andi	a1,00000001
	c.beqz	a1,000000002304804E

l23047FE2:
	ori	a3,a3,+00000002
	c.sw	a2,4(a3)

l23047FE8:
	lbu	a3,a0,+00000004
	lbu	a6,a2,+00000068
	srli	a5,a4,00000003
	andi	a3,a3,+000000FE
	andi	a6,a6,+0000000F
	bltu	a5,a3,0000000023048064

l23048000:
	lbu	a1,a0,+00000001
	c.addi	a1,FFFFFFFC
	c.add	a1,a3
	bltu	a1,a5,0000000023048064

l2304800C:
	c.add	a5,a0
	c.sub	a5,a3
	lbu	a5,a5,+00000005
	andi	a3,a4,+00000007
	c.li	a4,00000001
	sll	a4,a4,a3
	c.and	a5,a4
	c.beqz	a5,0000000023048064

l23048022:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,0000000F
	c.mv	s0,a2
	bne	a6,a5,0000000023048054

l23048030:
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000007
	c.mv	a0,a7
	jal	ra,000000002304A626
	c.bnez	a0,0000000023048046

l2304803E:
	c.lw	s0,4(a5)
	ori	a5,a5,+00000008

l23048044:
	c.sw	s0,4(a5)

l23048046:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2304804E:
	c.andi	a5,FFFFFFFC
	c.sw	a2,4(a5)
	c.j	0000000023047FE8

l23048054:
	c.mv	a0,a2
	jal	ra,0000000023047BFC
	c.bnez	a0,0000000023048046

l2304805C:
	c.lw	s0,4(a5)
	ori	a5,a5,+00000004
	c.j	0000000023048044

l23048064:
	c.li	a4,0000000F
	c.lw	a2,4(a5)
	bne	a6,a4,0000000023048072

l2304806C:
	c.andi	a5,FFFFFFF7

l2304806E:
	c.sw	a2,4(a5)
	c.jr	ra

l23048072:
	c.andi	a5,FFFFFFFB
	c.j	000000002304806E

l23048076:
	c.jr	ra

;; ps_check_frame: 23048078
;;   Called from:
;;     23048918 (in rxl_cntrl_evt)
ps_check_frame proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,0004201A
	lbu	a5,s2,+000007B8
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.beqz	a5,00000000230480B6

l2304808E:
	lbu	s1,a0,+00000001
	lbu	a5,a0,+00000000
	c.slli	s1,08
	c.or	s1,a5
	lbu	a5,a0,+00000004
	c.andi	a5,00000001
	c.beqz	a5,00000000230480C4

l230480A2:
	slli	a5,s1,00000012
	bge	a5,zero,00000000230480B0

l230480AA:
	lbu	a5,a2,+0000005E
	c.beqz	a5,00000000230480B6

l230480B0:
	c.lw	a2,4(a5)
	c.andi	a5,FFFFFFFD

l230480B4:
	c.sw	a2,4(a5)

l230480B6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230480C4:
	andi	a1,a1,+00000200
	c.bnez	a1,00000000230480B6

l230480CA:
	addi	s2,s2,+000007B8
	lbu	s3,s2,+0000001D
	beq	s3,zero,000000002304814E

l230480D6:
	andi	a5,s1,+00000088
	addi	a4,zero,+00000088
	bne	a5,a4,0000000023048136

l230480E2:
	andi	a5,s1,+00000300
	addi	a4,zero,+00000300
	bne	a5,a4,000000002304812C

l230480EE:
	lbu	a4,a0,+0000001E
	lbu	a5,a0,+0000001F

l230480F6:
	c.slli	a5,08
	c.or	a5,a4
	lui	a1,0002307C
	andi	a3,a5,+00000007
	addi	a1,a1,+00000398
	c.add	a3,a1
	lbu	a4,a2,+00000068
	lbu	a3,a3,+00000000
	srl	a4,a4,a3
	c.andi	a4,00000001
	c.beqz	a4,000000002304817E

l23048118:
	lui	a4,00044B00
	lw	a4,a4,+00000120
	c.andi	a5,00000010
	c.sw	a2,100(a4)
	c.beqz	a5,00000000230480B6

l23048126:
	c.lw	a2,4(a5)
	c.andi	a5,FFFFFFF7
	c.j	00000000230480B4

l2304812C:
	lbu	a4,a0,+00000018
	lbu	a5,a0,+00000019
	c.j	00000000230480F6

l23048136:
	andi	a5,s1,+0000000C
	c.bnez	a5,000000002304817E

l2304813C:
	lbu	a5,a2,+00000068
	c.andi	a5,00000008
	c.beqz	a5,000000002304817E

l23048144:
	lui	a5,00044B00
	lw	a5,a5,+00000120
	c.sw	a2,100(a5)

l2304814E:
	lbu	a0,a2,+00000057
	c.li	a1,00000001
	c.mv	s0,a2
	jal	ra,0000000023049384
	bne	s3,zero,00000000230480B6

l2304815E:
	slli	a5,s1,00000012
	bge	a5,zero,0000000023048176

l23048166:
	lbu	a5,s2,+00000024
	c.andi	a5,00000008
	c.bnez	a5,00000000230480B6

l2304816E:
	c.mv	a0,s0
	jal	ra,0000000023047BFC
	c.beqz	a0,00000000230480B6

l23048176:
	c.lw	s0,4(a5)
	c.andi	a5,FFFFFFFB
	c.sw	s0,4(a5)
	c.j	00000000230480B6

l2304817E:
	c.li	s3,00000000
	c.j	000000002304814E

;; ps_check_tx_frame: 23048182
;;   Called from:
;;     23049D60 (in txl_cntrl_push)
ps_check_tx_frame proc
	lui	a5,0004201A
	lbu	a5,a5,+000007B8
	c.beqz	a5,0000000023048204

l2304818C:
	addi	a5,zero,+000000FF
	beq	a0,a5,0000000023048204

l23048194:
	beq	a1,a5,0000000023048204

l23048198:
	addi	a4,zero,+000001B0
	add	a0,a0,a4
	lui	a5,0004201B
	addi	a5,a5,-000007F8
	addi	a3,zero,+000005D8
	c.add	a5,a0
	lbu	a4,a5,+0000001A
	lui	a5,0004201C
	addi	a5,a5,-00000308
	add	a4,a4,a3
	c.add	a5,a4
	lbu	a4,a5,+00000056
	c.bnez	a4,0000000023048204

l230481C6:
	lbu	a4,a5,+00000058
	c.beqz	a4,0000000023048204

l230481CC:
	lui	a3,0002307C
	addi	a3,a3,+00000398
	c.add	a3,a1
	lbu	a4,a5,+00000068
	lbu	a3,a3,+00000000
	srl	a4,a4,a3
	c.andi	a4,00000001
	c.beqz	a4,00000000230481FA

l230481E6:
	c.lw	a5,4(a4)
	ori	a4,a4,+00000008
	c.sw	a5,4(a4)
	lui	a4,00044B00
	lw	a4,a4,+00000120
	c.sw	a5,100(a4)
	c.jr	ra

l230481FA:
	lbu	a0,a5,+00000057
	c.li	a1,00000000
	jal	zero,0000000023049384

l23048204:
	c.jr	ra

;; ps_uapsd_set: 23048206
;;   Called from:
;;     23047652 (in mm_hw_config_handler)
ps_uapsd_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.li	s1,00000001
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	sll	a1,s1,a1
	lbu	a5,a0,+00000068
	andi	a1,a1,+000000FF
	c.beqz	a2,0000000023048262

l2304821E:
	lui	s0,0004201A
	c.or	a5,a1
	addi	s0,s0,+000007B8
	sb	a5,a0,+00000068
	lbu	a5,s0,+00000000
	c.beqz	a5,0000000023048258

l23048232:
	lbu	a5,s0,+0000001C
	c.bnez	a5,0000000023048258

l23048238:
	sb	s1,s0,+0000001D
	lui	a5,00044B00
	lw	a1,a5,+00000120
	c.lw	s0,32(a5)
	lui	a0,0004201A
	addi	a0,a0,+000007C4
	c.add	a1,a5
	jal	ra,00000000230478F4
	sb	s1,s0,+0000001C

l23048258:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23048262:
	xori	a1,a1,-00000001
	c.and	a5,a1
	sb	a5,a0,+00000068
	c.j	0000000023048258

;; ps_traffic_status_update: 2304826E
;;   Called from:
;;     23049204 (in td_timer_end)
ps_traffic_status_update proc
	lui	a5,0004201A
	addi	a5,a5,+000007B8
	lbu	a4,a5,+00000000
	c.beqz	a4,0000000023048294

l2304827C:
	lbu	a5,a5,+00000024
	andi	a4,a5,+00000001
	c.beqz	a4,0000000023048294

l23048286:
	andi	a4,a5,+00000006
	c.bnez	a4,0000000023048294

l2304828C:
	c.beqz	a1,0000000023048296

l2304828E:
	c.andi	a5,00000008

l23048290:
	c.li	a0,00000001
	c.beqz	a5,00000000230482B6

l23048294:
	c.jr	ra

l23048296:
	lui	a4,0004201D
	lw	a4,a4,-00000750
	lui	a1,0004201C
	addi	a1,a1,-000003B8
	addi	a6,zero,+00000024

l230482AA:
	c.bnez	a4,00000000230482BA

l230482AC:
	c.li	a2,00000000

l230482AE:
	c.andi	a5,00000008
	c.bnez	a2,0000000023048290

l230482B2:
	c.beqz	a5,0000000023048294

l230482B4:
	c.li	a0,00000000

l230482B6:
	jal	zero,0000000023047B44

l230482BA:
	lbu	a3,a4,+00000057
	beq	a3,a0,00000000230482DE

l230482C2:
	lbu	a2,a4,+00000058
	c.beqz	a2,00000000230482DE

l230482C8:
	lbu	a7,a4,+00000056
	bne	a7,zero,00000000230482DE

l230482D0:
	add	a3,a3,a6
	c.add	a3,a1
	lbu	a3,a3,+00000021
	c.andi	a3,0000000C
	c.bnez	a3,00000000230482AE

l230482DE:
	c.lw	a4,0(a4)
	c.j	00000000230482AA

;; mm_ps_change_ind: 230482E2
;;   Called from:
;;     230486CA (in rxl_cntrl_evt)
;;     230486F0 (in rxl_cntrl_evt)
;;     230488E0 (in rxl_cntrl_evt)
;;     230488F4 (in rxl_cntrl_evt)
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
	jal	ra,0000000023050474
	addi	a4,zero,+000001B0
	add	a4,s1,a4
	lui	a5,0004201B
	addi	a5,a5,-000007F8
	c.add	a5,a4
	sb	s0,a5,+0000001C
	sb	s1,a0,+00000000
	sb	s0,a0,+00000001
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230504E0

;; rxl_mpdu_transfer: 23048326
;;   Called from:
;;     2304B8C0 (in rxu_mpdu_upload_and_indicate.constprop.11)
;;     2304C5D0 (in rxu_cntrl_frame_handle)
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
	jal	ra,0000000023055E82
	lui	a5,0004201D
	lw	a5,a5,-000004A8
	c.li	a4,00000000
	sw	a5,s2,+00000054
	sb	zero,s0,+0000001D

l23048356:
	lhu	a5,s1,+00000010
	c.andi	a5,00000001
	c.bnez	a5,0000000023048394

l2304835E:
	lbu	a5,s0,+0000001D
	c.lw	s1,4(a3)
	c.mv	a4,s1
	c.addi	a5,00000001
	sb	a5,s0,+0000001D
	c.bnez	a3,0000000023048390

l2304836E:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	lui	a1,0002307B
	lui	a0,0002307B
	addi	a2,zero,+000000B4
	addi	a1,a1,+00000388
	addi	a0,a0,+000006E0
	c.addi	sp,00000010
	jal	zero,0000000023054FB4

l23048390:
	c.mv	s1,a3
	c.j	0000000023048356

l23048394:
	c.sw	s0,16(s1)
	c.sw	s0,12(a4)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; rxl_init: 230483A4
;;   Called from:
;;     2305D79A (in mm_init)
rxl_init proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000001
	c.swsp	ra,00000084
	c.jal	0000000023048A7A
	jal	ra,000000002305EF9A
	lui	a0,0004201A
	addi	a0,a0,+000007E0
	jal	ra,000000002304FFB4
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002304BD64

;; rxl_cntrl_dump: 230483C4
;;   Called from:
;;     23050218 (in bl_fw_statistic_dump)
rxl_cntrl_dump proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201A
	addi	a0,s0,+000007E0
	c.swsp	ra,00000084
	jal	ra,000000002305009A
	c.beqz	a0,00000000230483DE

l230483D8:
	lw	a5,s0,+000007E0

l230483DC:
	c.bnez	a5,00000000230483E6

l230483DE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230483E6:
	c.lw	a5,0(a5)
	c.j	00000000230483DC

;; rxl_timer_int_handler: 230483EA
;;   Called from:
;;     2305C40C (in chan_ctxt_update)
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
	lui	s1,0004201A
	c.sw	a5,124(a4)
	addi	s0,s1,+000007E0
	lui	s2,0002307B
	lui	s3,0002307B
	lui	s4,0002307B

l23048416:
	c.lw	s0,8(a5)
	c.beqz	a5,0000000023048472

l2304841A:
	c.lw	a5,64(a4)
	slli	a3,a4,00000011
	bge	a3,zero,0000000023048472

l23048424:
	c.lw	a5,4(a4)
	c.lw	a5,12(a1)
	c.sw	s0,8(a4)
	c.lw	a5,8(a5)
	c.lw	a1,4(a0)
	c.sw	a1,8(a5)
	lhu	a4,a0,+0000001C
	c.lw	a0,8(a5)
	c.beqz	a4,0000000023048454

l23048438:
	c.beqz	a5,0000000023048442

l2304843A:
	c.mv	a0,s0
	jal	ra,000000002304FFBE
	c.j	0000000023048416

l23048442:
	addi	a2,zero,+000000D8
	addi	a1,s2,+00000388
	addi	a0,s4,+000006E0

l2304844E:
	jal	ra,0000000023054FB4
	c.j	0000000023048416

l23048454:
	c.beqz	a5,0000000023048464

l23048456:
	addi	a2,zero,+000000FA
	addi	a1,s2,+00000388
	addi	a0,s3,+000006EC
	c.j	000000002304844E

l23048464:
	sw	zero,a1,+00000010
	sw	zero,a1,+0000000C
	jal	ra,0000000023048C2C
	c.j	0000000023048416

l23048472:
	lw	a5,s1,+000007E0
	c.beqz	a5,000000002304848E

l23048478:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	lui	a0,00000040
	c.addi16sp	00000020
	jal	zero,00000000230501A8

l2304848E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; rxl_timeout_int_handler: 2304849E
;;   Called from:
;;     2305D21E (in hal_machw_gen_handler)
rxl_timeout_int_handler proc
	lui	a4,00044B08
	lw	a5,a4,+0000008C
	andi	a5,a5,-00000041
	sw	a5,a4,+0000008C
	c.jr	ra

;; rxl_dma_int_handler: 230484B0
rxl_dma_int_handler proc
	c.j	00000000230484B0

;; rxl_dma_evt: 230484B2
rxl_dma_evt proc
	c.addi	sp,FFFFFFF0
	lui	a0,00000100
	c.swsp	ra,00000084
	jal	ra,00000000230501C0
	lui	a5,00044A00
	addi	a4,zero,+00000020
	c.sw	a5,32(a4)
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; rxl_frame_release: 230484CE
;;   Called from:
;;     23048544 (in rxl_mpdu_free)
rxl_frame_release proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,4(a5)
	c.mv	s0,a0
	c.lw	a0,16(a2)
	c.lw	a0,12(a1)
	c.lw	a5,8(a0)
	jal	ra,0000000023048C9C
	c.lw	s0,4(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023048C2C

;; rxl_mpdu_free: 230484EE
;;   Called from:
;;     2304860E (in rxl_cntrl_evt)
;;     23048946 (in bl60x_firmwre_mpdu_free)
;;     2304C740 (in rxu_swdesc_upload_evt)
rxl_mpdu_free proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a0,4(a5)
	c.swsp	a0,00000084
	c.lw	a5,8(s0)
	jal	ra,00000000230347A4
	c.lwsp	a2,00000044
	c.li	a4,00000000
	c.lw	a0,4(a5)
	sb	zero,a0,+0000001E
	sw	zero,a5,+00000060

l2304850C:
	lhu	a5,s0,+00000010
	sw	zero,s0,+00000014
	c.andi	a5,00000001
	c.bnez	a5,0000000023048540

l23048518:
	c.lw	s0,4(a5)
	c.mv	a4,s0
	c.bnez	a5,000000002304853C

l2304851E:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	lui	a1,0002307B
	lui	a0,0002307B
	addi	a2,zero,+00000397
	addi	a1,a1,+00000388
	addi	a0,a0,+000006E0
	c.addi16sp	00000020
	jal	zero,0000000023054FB4

l2304853C:
	c.mv	s0,a5
	c.j	000000002304850C

l23048540:
	c.sw	a0,16(s0)
	c.sw	a0,12(a4)
	jal	ra,00000000230484CE
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,00000000230347B8

;; rxl_cntrl_evt: 23048552
;;   Called from:
;;     2305C412 (in chan_ctxt_update)
rxl_cntrl_evt proc
	c.addi16sp	FFFFFF90
	c.li	a5,00000005
	c.swsp	a5,00000084
	lui	a5,0002307C
	addi	a5,a5,+00000398
	c.swsp	a5,00000008
	lui	a5,00023082
	c.swsp	s6,00000028
	c.swsp	s7,000000A4
	lui	s6,0004201B
	lui	s7,0004201C
	addi	a5,a5,+000007EC
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
	addi	s6,s6,-000007F8
	addi	s7,s7,-00000308
	c.swsp	a5,00000088

l23048596:
	lui	s0,0004201A
	lw	s9,s0,+000007E0
	lui	a0,00000040
	jal	ra,00000000230501C0
	beq	s9,zero,00000000230485BA

l230485AA:
	c.lwsp	a2,000000E4
	c.addi	a5,FFFFFFFF
	c.swsp	a5,00000084
	c.bnez	a5,00000000230485D8

l230485B2:
	lui	a0,00000040
	jal	ra,00000000230501A8

l230485BA:
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

l230485D8:
	csrrci	zero,mstatus,00000008
	addi	a0,s0,+000007E0
	jal	ra,000000002305003A
	csrrsi	zero,mstatus,00000008
	lw	s8,s9,+00000004
	lw	s2,s8,+00000008
	bne	s2,zero,0000000023048614

l230485F4:
	lui	a1,0002307B
	lui	a0,0002307B
	addi	a2,zero,+00000205
	addi	a1,a1,+00000388
	addi	a0,a0,+000006A0

l23048608:
	jal	ra,0000000023054FB4

l2304860C:
	c.mv	a0,s9
	jal	ra,00000000230484EE
	c.j	0000000023048596

l23048614:
	lw	s11,s8,+00000040
	lui	a5,00002002
	and	a4,s11,a5
	bne	a4,a5,0000000023048670

l23048624:
	srli	a5,s11,0000000F
	c.slli	a5,10
	c.srli	a5,00000010
	andi	s0,a5,+000003FF
	andi	a5,a5,+000003F8
	c.bnez	a5,000000002304864C

l23048636:
	lui	a1,0002307B
	lui	a0,0002307B
	addi	a2,zero,+00000215
	addi	a1,a1,+00000388
	addi	a0,a0,+000006B8
	c.j	0000000023048608

l2304864C:
	c.addi	s0,FFFFFFF8
	andi	s0,s0,+000000FF
	addi	s4,zero,+000001B0
	add	s4,s0,s4
	c.add	s4,s6
	lbu	a5,s4,+0000001D
	c.bnez	a5,000000002304867A

l23048662:
	lui	a5,000FE000
	c.addi	a5,FFFFFFFF
	and	s11,s11,a5
	sw	s11,s8,+00000040

l23048670:
	c.mv	a0,s9
	jal	ra,000000002304BDA8
	c.bnez	a0,0000000023048596

l23048678:
	c.j	000000002304860C

l2304867A:
	lbu	s1,s4,+0000001A
	addi	s3,zero,+000005D8
	jal	ra,0000000023033AF0
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
	bne	a4,a5,00000000230486FC

l230486AC:
	lbu	a4,s4,+0000001C
	c.li	a5,00000001
	bne	a4,a5,00000000230488CE

l230486B6:
	c.lui	a5,00001000
	addi	a5,a5,+0000040C
	and	a5,s5,a5
	c.li	a4,00000008
	bne	a5,a4,000000002304877E

l230486C6:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230482E2
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,000000002304F65C
	lbu	a5,s3,+0000034A
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s3,+0000034A
	c.bnez	a5,00000000230486FC

l230486E6:
	c.addi	s2,0000000A
	andi	s2,s2,+000000FF
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,00000000230482E2
	c.mv	a1,s2
	c.mv	a0,s3
	jal	ra,000000002304F65C

l230486FC:
	addi	a5,zero,+000005D8
	add	a5,s1,a5
	c.add	a5,s7
	lbu	a4,a5,+00000058
	c.beqz	a4,0000000023048670

l2304870C:
	andi	s2,s5,+00000004
	bne	s2,zero,0000000023048720

l23048714:
	lbu	a0,a5,+00000057
	c.li	a2,00000001
	c.mv	a1,s0
	jal	ra,0000000023049360

l23048720:
	addi	a5,zero,+000005D8
	add	s1,s1,a5
	c.add	s1,s7
	lbu	a5,s1,+00000056
	c.bnez	a5,0000000023048670

l23048730:
	andi	s5,s5,+000000FC
	addi	a5,zero,+00000080
	bne	s5,a5,000000002304890E

l2304873C:
	c.mv	a1,s8
	c.li	a0,00000000
	c.swsp	zero,00000094
	jal	ra,0000000023056494
	c.li	a0,00000000
	jal	ra,0000000023056596
	c.addi4spn	a3,0000002C
	c.mv	a2,s4
	c.mv	a1,s1
	c.mv	a0,s8
	jal	ra,000000002305E1F8
	lhu	a1,s8,+0000001C
	c.mv	s0,a0
	c.lwsp	a2,00000154
	c.mv	a2,s1
	jal	ra,0000000023047F98
	c.mv	a0,s1
	jal	ra,000000002304B17E
	c.lw	s1,64(a5)
	c.beqz	a5,0000000023048778

l23048770:
	c.lw	s1,36(a1)
	c.mv	a0,s1
	jal	ra,000000002305C44E

l23048778:
	beq	s0,zero,000000002304860C

l2304877C:
	c.j	0000000023048670

l2304877E:
	andi	a5,s5,+000000FC
	addi	a4,zero,+000000A4
	bne	a5,a4,00000000230487BC

l2304878A:
	addi	s2,zero,+000001B0
	add	s2,s0,s2
	c.add	s2,s6
	lbu	a5,s2,+00000032
	c.andi	a5,00000002
	c.beqz	a5,000000002304885E

l2304879C:
	lw	a5,s2,+00000034
	c.li	a2,00000001
	c.mv	a1,s4
	ori	a5,a5,+00000001
	sw	a5,s2,+00000034
	c.mv	a0,s3
	jal	ra,000000002304911E
	lw	a5,s2,+00000034
	c.andi	a5,FFFFFFFE
	sw	a5,s2,+00000034

l230487BC:
	andi	a5,s5,+0000008C
	addi	a4,zero,+00000088
	bne	a5,a4,00000000230486FC

l230487C8:
	andi	a5,s5,+00000300
	addi	a4,zero,+00000300
	bne	a5,a4,0000000023048880

l230487D4:
	lbu	a5,s10,+0000001E

l230487D8:
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
	beq	a4,zero,00000000230486FC

l230487FE:
	lbu	a3,s2,+00000032
	lw	a4,s2,+00000034
	andi	a2,a3,+0000000C
	c.andi	a4,00000006
	c.beqz	a2,00000000230488C2

l2304880E:
	bne	a4,zero,00000000230486FC

l23048812:
	c.andi	a3,00000008
	lbu	a6,s2,+000000F3
	c.beqz	a3,0000000023048886

l2304881A:
	c.li	a4,00000002
	c.mv	a2,a6
	sw	a4,s2,+00000034
	c.mv	a1,s4
	c.mv	a0,s3
	c.swsp	a5,0000008C
	c.swsp	a6,0000000C
	jal	ra,000000002304911E
	c.lwsp	s8,00000008
	c.lwsp	t3,000000E4
	beq	a6,zero,0000000023048886

l23048836:
	sub	a6,a6,a0
	blt	zero,a6,0000000023048886

l2304883E:
	addi	s2,zero,+000001B0
	add	s2,s0,s2
	c.add	s2,s6

l23048848:
	lbu	a0,s2,+0000001B
	c.li	a3,00000000
	c.li	a2,00000000
	ori	a1,a5,+00000010
	jal	ra,000000002304A626
	sw	zero,s2,+00000034
	c.j	00000000230486FC

l2304885E:
	c.li	a3,00000003
	c.li	a2,00000000
	c.li	a1,0000000D
	addi	a0,zero,+0000004A
	jal	ra,0000000023050474
	c.li	a4,00000001
	sb	s0,a0,+00000000
	sb	a4,a0,+00000001
	sb	zero,a0,+00000002
	jal	ra,00000000230504E0
	c.j	00000000230487BC

l23048880:
	lbu	a5,s10,+00000018
	c.j	00000000230487D8

l23048886:
	addi	a4,zero,+000001B0
	add	a4,s0,a4
	c.add	a4,s6
	lbu	a3,a4,+00000032
	c.andi	a3,00000004
	c.beqz	a3,000000002304883E

l23048898:
	c.li	a5,00000004
	c.sw	a4,52(a5)
	c.li	a3,00000003
	c.li	a2,00000000
	c.li	a1,0000000D
	addi	a0,zero,+0000004A
	c.swsp	a6,0000000C
	jal	ra,0000000023050474
	c.lwsp	s8,00000008
	c.li	a4,00000001
	sb	s0,a0,+00000000
	sb	a6,a0,+00000001
	sb	a4,a0,+00000002
	jal	ra,00000000230504E0
	c.j	00000000230486FC

l230488C2:
	bne	a4,zero,00000000230486FC

l230488C6:
	c.li	a4,00000002
	sw	a4,s2,+00000034
	c.j	0000000023048848

l230488CE:
	c.lui	a4,00001000
	addi	a5,a4,+00000400
	and	a5,s5,a5
	bne	a5,a4,00000000230486FC

l230488DC:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,00000000230482E2
	lbu	a5,s3,+0000034A
	c.bnez	a5,00000000230488F8

l230488EA:
	addi	a0,s2,+0000000A
	c.li	a1,00000001
	andi	a0,a0,+000000FF
	jal	ra,00000000230482E2

l230488F8:
	addi	a5,zero,+000005D8
	add	s2,s2,a5
	c.add	s2,s7
	lbu	a5,s2,+0000034A
	c.addi	a5,00000001
	sb	a5,s2,+0000034A
	c.j	00000000230486FC

l2304890E:
	bne	s2,zero,0000000023048670

l23048912:
	c.mv	a2,s1
	c.mv	a1,s11
	c.mv	a0,s10
	jal	ra,0000000023048078
	c.j	0000000023048670

;; bl60x_firmwre_mpdu_free: 2304891E
;;   Called from:
;;     23009EFE (in my_pbuf_free_custom)
bl60x_firmwre_mpdu_free proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,00000000230347A4
	c.lwsp	a2,00000044
	lui	a5,0004201A
	addi	a5,a5,+000007E0
	lbu	a3,a0,+0000001D
	c.lw	a5,20(a4)
	c.sub	a4,a3
	c.sw	a5,20(a4)
	jal	ra,00000000230347B8
	c.lwsp	a2,00000044
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,00000000230484EE

;; rxl_reset: 2304894A
;;   Called from:
;;     2305DCB4 (in mm_force_idle_req)
;;     2305EED4 (in bl_reset_evt)
rxl_reset proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	c.jal	0000000023048A7A
	lui	a0,0004201A
	addi	a0,a0,+000007E0
	jal	ra,000000002304FFB4
	c.lwsp	a2,00000020
	lui	a0,0004201D
	addi	a0,a0,-000004E0
	c.addi	sp,00000010
	jal	zero,000000002304FFB4

;; rxl_hwdesc_dump: 2304896E
;;   Called from:
;;     23050214 (in bl_fw_statistic_dump)
rxl_hwdesc_dump proc
	lui	a0,0002307B
	c.addi16sp	FFFFFFD0
	addi	a0,a0,+00000720
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	jal	ra,0000000023003A8A
	lui	a0,0002307B
	c.li	a1,0000000D
	addi	a0,a0,+00000748
	lui	s0,00042041
	jal	ra,0000000023003AC6
	addi	s0,s0,+00000000
	c.li	s1,00000000
	lui	s5,0002307B
	lui	s4,0002307B
	lui	s3,0002307C
	c.li	s2,0000000D

l230489B0:
	lw	a6,s0,+0000000C
	c.lw	s0,8(a5)
	c.lw	s0,4(a4)
	c.lw	s0,0(a3)
	c.mv	a2,s0
	c.mv	a1,s1
	addi	a0,s5,+00000760
	jal	ra,0000000023003AC6
	lhu	a5,s0,+0000001E
	lhu	a4,s0,+0000001C
	c.lw	s0,24(a3)
	c.lw	s0,20(a2)
	c.lw	s0,16(a1)
	addi	a0,s4,+000007AC
	c.addi	s1,00000001
	jal	ra,0000000023003AC6
	c.lw	s0,64(a5)
	addi	a0,s3,-000007F4
	addi	s0,s0,+00000064
	c.swsp	a5,00000000
	lw	a7,s0,-00000028
	lw	a6,s0,-0000002C
	lw	a5,s0,-00000030
	lw	a4,s0,-00000034
	lw	a3,s0,-00000038
	lw	a2,s0,-00000040
	lw	a1,s0,-00000044
	jal	ra,0000000023003AC6
	bne	s1,s2,00000000230489B0

l23048A0E:
	lui	a0,0002307C
	c.li	a1,0000000D
	addi	a0,a0,-0000077C
	lui	s0,00042044
	jal	ra,0000000023003AC6
	addi	s0,s0,+00000120
	c.li	s1,00000000
	lui	s3,0002307C
	c.li	s2,0000000D

l23048A2C:
	lw	a7,s0,+0000000C
	lw	a6,s0,+00000008
	c.li	a3,00000000
	beq	a7,zero,0000000023048A42

l23048A3A:
	addi	a3,a7,+00000001
	sub	a3,a3,a6

l23048A42:
	lhu	a5,s0,+00000012
	c.mv	a2,s0
	c.mv	a1,s1
	c.swsp	a5,00000080
	lhu	a5,s0,+00000010
	addi	a0,s3,-00000764
	c.addi	s1,00000001
	c.swsp	a5,00000000
	c.lw	s0,4(a5)
	c.lw	s0,0(a4)
	addi	s0,s0,+00000034
	jal	ra,0000000023003AC6
	bne	s1,s2,0000000023048A2C

l23048A68:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

;; rxl_hwdesc_init: 23048A7A
;;   Called from:
;;     230483AA (in rxl_init)
;;     23048950 (in rxl_reset)
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
	jal	ra,00000000230347A4
	lui	a5,00042041
	lui	a3,000BAADF
	lui	a2,0004201E
	addi	a5,a5,+00000000
	c.li	s2,00000000
	c.li	s4,00000000
	c.li	s0,00000000
	c.li	a1,00000000
	c.li	a4,00000000
	c.addi	a3,0000000D
	addi	a2,a2,+000003C4
	c.li	a7,00000001
	c.li	t1,0000000D

l23048AB4:
	addi	a6,a5,+00000064
	bne	s3,zero,0000000023048BC6

l23048ABC:
	c.lw	a5,96(a0)
	bne	a0,a7,0000000023048BC6

l23048AC2:
	c.beqz	s0,0000000023048AC8

l23048AC4:
	sw	zero,s0,+00000004

l23048AC8:
	c.addi	a4,00000001
	c.mv	a5,a6
	bne	a4,t1,0000000023048AB4

l23048AD0:
	c.li	a5,00000003
	blt	a5,a1,0000000023048AE4

l23048AD6:
	lui	a0,0002307C
	c.li	a2,0000000D
	addi	a0,a0,-000006E8
	jal	ra,0000000023003AC6

l23048AE4:
	c.beqz	s0,0000000023048AEA

l23048AE6:
	sw	zero,s0,+00000004

l23048AEA:
	lui	a5,00044B08
	sw	s4,a5,+000001B8
	lui	a4,00004000
	sw	a4,a5,+00000180
	lui	a4,00042044
	addi	a4,a4,+00000120
	lui	a3,00042041
	lui	a2,000C0DEE
	addi	a3,a3,+00000600
	addi	a7,a4,+000002A4
	c.li	s5,00000000
	c.li	a5,00000000
	c.li	s1,00000000
	c.li	a1,00000000
	addi	a2,a2,-00000453
	c.li	a6,00000001

l23048B20:
	addi	a0,a4,+00000034
	bne	s3,zero,0000000023048C02

l23048B28:
	lw	t1,a4,+00000014
	bne	t1,a6,0000000023048C02

l23048B30:
	c.beqz	s1,0000000023048B36

l23048B32:
	sw	zero,s1,+00000004

l23048B36:
	c.mv	a4,a0
	addi	a3,a3,+00000350
	bne	a7,a0,0000000023048B20

l23048B40:
	c.li	a4,00000003
	blt	a4,a1,0000000023048B58

l23048B46:
	lui	a0,0002307C
	c.li	a2,0000000D
	addi	a0,a0,-000006D0
	c.swsp	a5,00000084
	jal	ra,0000000023003AC6
	c.lwsp	a2,000000E4

l23048B58:
	sw	zero,s1,+00000004
	lui	a4,00044B08
	sw	a5,a4,+000001BC
	lui	a3,00008000
	sw	a3,a4,+00000180
	beq	s2,zero,0000000023048B7C

l23048B70:
	beq	s4,zero,0000000023048B7C

l23048B74:
	c.beqz	s0,0000000023048B7C

l23048B76:
	beq	s5,zero,0000000023048B7C

l23048B7A:
	c.bnez	a5,0000000023048B92

l23048B7C:
	lui	a0,0002307C
	c.mv	a6,s1
	c.mv	a4,s5
	c.mv	a3,s0
	c.mv	a2,s4
	c.mv	a1,s2
	addi	a0,a0,-000006B0
	jal	ra,0000000023003AC6

l23048B92:
	lui	a5,0004201A
	addi	a5,a5,+000007E0
	sw	s2,a5,+00000010
	sw	s4,a5,+00000008
	c.sw	a5,12(s0)
	lui	a5,0004201A
	addi	a5,a5,+000007F8
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
	jal	zero,00000000230347B8

l23048BC6:
	c.beqz	s0,0000000023048BCA

l23048BC8:
	c.sw	s0,4(a5)

l23048BCA:
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
	c.beqz	a1,0000000023048BFE

l23048BF2:
	bne	a1,a7,0000000023048BF8

l23048BF6:
	c.mv	s4,a5

l23048BF8:
	c.addi	a1,00000001
	c.mv	s0,a5
	c.j	0000000023048AC8

l23048BFE:
	c.mv	s2,a5
	c.j	0000000023048BF8

l23048C02:
	c.beqz	s1,0000000023048C06

l23048C04:
	c.sw	s1,4(a4)

l23048C06:
	addi	t1,a3,+0000034F
	c.sw	a4,4(a0)
	c.sw	a4,0(a2)
	sh	zero,a4,+00000010
	c.sw	a4,8(a3)
	sw	t1,a4,+0000000C
	c.sw	a4,24(a3)
	c.beqz	a1,0000000023048C28

l23048C1C:
	bne	a1,a6,0000000023048C22

l23048C20:
	c.mv	a5,a4

l23048C22:
	c.addi	a1,00000001
	c.mv	s1,a4
	c.j	0000000023048B36

l23048C28:
	c.mv	s5,a4
	c.j	0000000023048C22

;; rxl_hd_append: 23048C2C
;;   Called from:
;;     2304846C (in rxl_timer_int_handler)
;;     230484EA (in rxl_frame_release)
rxl_hd_append proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.bnez	a0,0000000023048C4E

l23048C36:
	lui	a1,0002307B
	lui	a0,0002307B
	addi	a2,zero,+000000F9
	addi	a1,a1,+00000388
	addi	a0,a0,+00000710
	jal	ra,0000000023054FF4

l23048C4E:
	lui	a5,00044B08
	lw	a3,a5,+00000548
	lui	a5,0004201A
	addi	a4,a5,+000007E0
	c.lw	a4,16(a4)
	addi	a5,a5,+000007E0
	beq	a4,a3,0000000023048C6C

l23048C68:
	c.sw	a5,16(s0)
	c.mv	s0,a4

l23048C6C:
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
	c.bnez	a4,0000000023048C94

l23048C92:
	c.sw	a5,8(s0)

l23048C94:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; rxl_pd_append: 23048C9C
;;   Called from:
;;     230484DE (in rxl_frame_release)
rxl_pd_append proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a0
	c.mv	s1,a1
	c.mv	s0,a2
	c.bnez	a2,0000000023048CC6

l23048CAE:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+00000128
	addi	a1,a1,+00000388
	addi	a0,a0,-00000698
	jal	ra,0000000023054FF4

l23048CC6:
	lui	a5,00044B08
	lw	a3,a5,+0000054C
	lui	a5,0004201A
	addi	a4,a5,+000007F8
	c.lw	a4,4(a4)
	addi	a5,a5,+000007F8
	bne	a4,a3,0000000023048D0C

l23048CE0:
	c.bnez	s1,0000000023048CE4

l23048CE2:
	c.mv	s2,s0

l23048CE4:
	sh	zero,s0,+00000010
	c.mv	a4,s2

l23048CEA:
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

l23048D0C:
	c.sw	a5,4(s0)
	c.beqz	s1,0000000023048D1C

l23048D10:
	sw	s2,a4,+00000004

l23048D14:
	sh	zero,a4,+00000010
	c.mv	s0,s1
	c.j	0000000023048CEA

l23048D1C:
	c.mv	s1,a4
	c.j	0000000023048D14

;; sta_mgmt_entry_init: 23048D20
;;   Called from:
;;     23048DA4 (in sta_mgmt_init)
;;     23048DC2 (in sta_mgmt_init)
;;     23048E0E (in sta_mgmt_init)
;;     23049000 (in sta_mgmt_unregister)
sta_mgmt_entry_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	addi	s1,a0,+0000019C

l23048D2E:
	lw	a5,s0,+0000019C
	c.bnez	a5,0000000023048D68

l23048D34:
	addi	a2,zero,+000001B0
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002306D1BC
	addi	a5,s0,+00000124
	addi	a3,s0,+00000190
	c.li	a4,00000002

l23048D4A:
	sb	a4,a5,+00000000
	sb	a4,a5,+00000001
	c.addi	a5,0000000C
	bne	a5,a3,0000000023048D4A

l23048D58:
	c.li	a5,FFFFFFFF
	sb	a5,s0,+0000001A
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23048D68:
	c.mv	a0,s1
	jal	ra,000000002305003A
	c.li	a1,00000001
	jal	ra,000000002304A464
	c.j	0000000023048D2E

;; sta_mgmt_init: 23048D76
;;   Called from:
;;     2305D78A (in mm_init)
sta_mgmt_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	s0,0004201B
	lui	s3,0004201B
	c.lui	s2,00001000
	c.swsp	s1,00000088
	addi	a0,s3,-00000800
	addi	s1,s0,-000007F8
	addi	s2,s2,+000000E0
	c.swsp	ra,0000008C
	c.add	s2,s1
	jal	ra,000000002304FFB4
	addi	s0,s0,-000007F8

l23048DA2:
	c.mv	a0,s1
	jal	ra,0000000023048D20
	c.mv	a1,s1
	addi	a0,s3,-00000800
	addi	s1,s1,+000001B0
	jal	ra,000000002304FFBE
	bne	s1,s2,0000000023048DA2

l23048DBA:
	lui	a0,0004201C
	addi	a0,a0,-00000718
	jal	ra,0000000023048D20
	lui	s1,0004201C
	c.lui	s3,00001000
	addi	s1,s1,-00000308
	lui	a5,00042044
	c.add	s0,s3
	lw	a2,s1,+000005C0
	addi	a5,a5,+000003C4
	lui	a1,0004201C
	sw	a5,s0,+000001EC
	lui	s2,0002307C
	addi	a5,a1,+000002B8
	sw	a5,s0,+0000018C
	addi	a1,a1,+000002B8
	sb	zero,s0,+000000FA
	sb	zero,s0,+00000111
	addi	a0,s2,-00000688
	jal	ra,0000000023003AC6
	lui	a0,0004201C
	addi	a0,a0,-00000568
	jal	ra,0000000023048D20
	c.li	a5,00000001
	sb	a5,s0,+000002AA
	lui	a5,00042044
	addi	a5,a5,+00000400
	lui	a1,0004201D
	sw	a5,s0,+0000039C
	addi	a5,a1,-00000770
	sb	zero,s0,+000002C1
	sw	a5,s0,+0000033C
	c.add	s1,s3
	c.lwsp	s8,00000004
	lw	a2,s1,-00000468
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	addi	a0,s2,-00000688
	c.lwsp	a6,00000048
	addi	a1,a1,-00000770
	c.addi16sp	00000020
	jal	zero,0000000023003AC6

;; sta_mgmt_register: 23048E52
;;   Called from:
;;     2305DCF2 (in mm_sta_add)
sta_mgmt_register proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s1,a0
	lbu	s2,a0,+00000011
	lui	a0,0004201B
	addi	a0,a0,-00000800
	c.mv	s3,a1
	jal	ra,000000002305003A
	beq	a0,zero,0000000023048FC2

l23048E76:
	c.mv	s0,a0
	c.li	a2,00000006
	addi	a1,s1,+0000000A
	c.addi	a0,0000001E
	jal	ra,000000002306CF80
	lbu	a5,s1,+00000010
	c.li	a4,00000010
	bgeu	a5,a4,0000000023048E90

l23048E8E:
	c.li	a5,00000010

l23048E90:
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
	lui	a5,0004201B
	addi	a5,a5,-000007F8
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

l23048EFE:
	sh	a3,a5,+00000000
	c.addi	a5,00000002
	bne	a5,a4,0000000023048EFE

l23048F08:
	lbu	a5,s3,+00000000
	addi	a4,zero,+0000003C
	addi	s1,zero,+000005D8
	add	a5,a5,a4
	lui	a4,00042044
	addi	a4,a4,+0000043C
	sb	zero,s0,+00000031
	add	s1,s2,s1
	c.add	a5,a4
	lui	s2,0004201C
	sw	a5,s0,+0000010C
	addi	a5,s2,-00000308
	addi	s2,s2,-00000308
	c.add	a5,s1
	lw	a4,a5,+000005C4
	c.andi	a4,00000008
	c.beqz	a4,0000000023048FA6

l23048F44:
	lw	a3,s0,+000000A8
	addi	a2,s0,+000000A8
	lui	a0,0002307C
	sw	a2,s0,+000000AC
	addi	a1,zero,+00000102
	addi	a0,a0,-00000660

l23048F5C:
	jal	ra,0000000023003AC6
	lui	a5,00044B00
	lw	a3,a5,+00000120
	lui	a4,000FFF0C
	addi	a4,a4,-00000240
	addi	a5,s0,+0000011C
	addi	a2,s0,+00000188
	c.add	a4,a3

l23048F7A:
	c.sw	a5,0(a3)
	c.sw	a5,4(a4)
	c.addi	a5,0000000C
	bne	a5,a2,0000000023048F7A

l23048F84:
	addi	a0,s1,+00000350
	c.add	a0,s2
	c.mv	a1,s0
	jal	ra,000000002304FFBE
	c.li	a5,00000001
	sb	a5,s0,+0000001D
	c.li	a0,00000000

l23048F98:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23048FA6:
	addi	a2,s1,+000005C0
	c.add	a2,s2
	sw	a2,s0,+000000AC
	lui	a0,0002307C
	lw	a3,a5,+000005C0
	addi	a1,zero,+0000010D
	addi	a0,a0,-00000634
	c.j	0000000023048F5C

l23048FC2:
	c.li	a0,00000001
	c.j	0000000023048F98

;; sta_mgmt_unregister: 23048FC6
;;   Called from:
;;     2305DF00 (in mm_sta_add)
;;     2305DFF2 (in mm_sta_del)
sta_mgmt_unregister proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	s0,zero,+000001B0
	add	s0,a0,s0
	lui	a0,0004201B
	addi	a0,a0,-000007F8
	c.swsp	ra,00000084
	c.add	s0,a0
	lbu	a5,s0,+0000001A
	addi	a0,zero,+000005D8
	c.mv	a1,s0
	add	a5,a5,a0
	lui	a0,0004201C
	addi	a0,a0,-00000308
	addi	a5,a5,+00000350
	c.add	a0,a5
	jal	ra,0000000023050046
	c.mv	a0,s0
	jal	ra,0000000023048D20
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,0004201B
	addi	a0,a0,-00000800
	c.addi	sp,00000010
	jal	zero,000000002304FFBE

;; sta_mgmt_add_key: 23049018
;;   Called from:
;;     2305DA04 (in mm_sec_machwkey_wr)
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
	lui	s1,0004201B
	add	a5,s3,s0
	addi	s0,s1,-000007F8
	c.mv	s2,a0
	addi	a2,zero,+00000048
	addi	s1,s1,-000007F8
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
	jal	ra,000000002306D1BC
	lbu	a5,s0,+000000A0
	c.li	a4,00000001
	beq	a5,a4,00000000230490D2

l23049072:
	c.beqz	a5,000000002304907A

l23049074:
	c.li	a4,00000003
	bne	a5,a4,0000000023049100

l2304907A:
	lui	a4,0004200E
	addi	a4,a4,-00000374
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

l230490AE:
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

l230490D2:
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
	c.j	00000000230490AE

l23049100:
	c.li	a5,00000000
	c.li	a6,00000000
	sw	a5,s0,+00000088
	sw	a6,s0,+0000008C
	c.j	00000000230490AE

;; sta_mgmt_del_key: 2304910E
;;   Called from:
;;     2305DA9A (in mm_sec_machwkey_del)
sta_mgmt_del_key proc
	c.li	a5,00000001
	sb	zero,a0,+000000A3
	sw	zero,a0,+000000A8
	sb	a5,a0,+00000031
	c.jr	ra

;; sta_mgmt_send_postponed_frame: 2304911E
;;   Called from:
;;     230487AE (in rxl_cntrl_evt)
;;     2304882A (in rxl_cntrl_evt)
;;     2304B13C (in vif_mgmt_send_postponed_frame)
;;     2304F682 (in apm_tx_int_ps_clear)
;;     2305EBB0 (in mm_bcn_transmit)
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

l2304913A:
	lw	s2,s1,+0000019C
	beq	s2,zero,000000002304917E

l23049142:
	c.mv	a0,s3
	c.swsp	zero,00000084
	c.jal	000000002304965A
	c.beqz	a0,000000002304917E

l2304914A:
	c.mv	a0,s2
	jal	ra,000000002304F40C
	c.beqz	a0,000000002304917E

l23049152:
	c.addi4spn	a2,0000000C
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,000000002304F500
	c.lwsp	a2,000000E4
	c.bnez	a5,000000002304917E

l23049160:
	c.bnez	a0,0000000023049168

l23049162:
	c.mv	a0,s5
	jal	ra,000000002305003A

l23049168:
	lbu	a1,a0,+0000002E
	sb	zero,a0,+000002D5
	c.addi	s0,00000001
	jal	ra,0000000023049BAA
	beq	s4,zero,000000002304913A

l2304917A:
	bne	s0,s4,000000002304913A

l2304917E:
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

;; td_timer_end: 23049192
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
	c.beqz	a5,000000002304920C

l230491AC:
	c.lw	a0,16(s1)
	c.lw	a0,20(a5)
	sltu	s1,zero,s1
	c.beqz	a5,00000000230491BA

l230491B6:
	ori	s1,s1,+00000002

l230491BA:
	c.lw	s0,24(a5)
	c.beqz	a5,00000000230491C2

l230491BE:
	ori	s1,s1,+00000004

l230491C2:
	c.lw	s0,28(a5)
	c.beqz	a5,00000000230491CA

l230491C6:
	ori	s1,s1,+00000008

l230491CA:
	lbu	a5,s0,+00000021
	c.xor	a5,s1
	c.andi	a5,0000000C
	c.beqz	a5,0000000023049208

l230491D4:
	andi	a5,s1,+00000004
	c.bnez	a5,0000000023049260

l230491DA:
	lui	a1,0002307C
	addi	a1,a1,-000005D4

l230491E2:
	andi	a5,s1,+00000008
	c.bnez	a5,000000002304926A

l230491E8:
	lui	a2,0002307C
	addi	a2,a2,-000005D4

l230491F0:
	lui	a0,0002307C
	addi	a0,a0,-000005CC
	jal	ra,0000000023003AC6
	lbu	a0,s0,+00000020
	andi	a1,s1,+0000000C
	jal	ra,000000002304826E

l23049208:
	sb	s1,s0,+00000021

l2304920C:
	lbu	a4,s0,+00000020
	addi	a3,zero,+000005D8
	lui	a5,0004201C
	add	a4,a4,a3
	addi	a5,a5,-00000308
	sw	zero,s0,+00000010
	sw	zero,s0,+00000014
	sw	zero,s0,+00000018
	sw	zero,s0,+0000001C
	lui	a1,000000F4
	addi	a1,a1,+00000240
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.add	a5,a4
	lui	a4,0004201E
	c.lw	a5,64(a5)
	lw	a4,a4,+000002F0
	c.lwsp	tp,00000024
	c.add	a1,s2
	c.sub	a5,a4
	sltiu	a5,a5,+00000001
	sb	a5,s0,+00000023
	c.lwsp	s0,00000004
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,00000000230478F4

l23049260:
	lui	a1,0002307C
	addi	a1,a1,-000005D8
	c.j	00000000230491E2

l2304926A:
	lui	a2,0002307C
	addi	a2,a2,-000005D0
	c.j	00000000230491F0

;; td_reset: 23049274
;;   Called from:
;;     230492F4 (in td_init)
;;     230492FE (in td_init)
;;     2304AF44 (in vif_mgmt_unregister)
td_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	addi	s1,zero,+00000024
	add	s1,a0,s1
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	lui	s0,0004201C
	c.mv	a1,a0
	c.mv	s2,a0
	lui	a0,0002307C
	addi	a5,s0,-000003B8
	addi	a0,a0,-00000600
	c.swsp	ra,00000084
	c.add	s1,a5
	jal	ra,0000000023003AC6
	lbu	a5,s1,+00000022
	addi	s0,s0,-000003B8
	c.beqz	a5,00000000230492B0

l230492AA:
	c.mv	a0,s1
	jal	ra,00000000230479AA

l230492B0:
	c.mv	a0,s1
	addi	a2,zero,+00000024
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	addi	a5,zero,+00000024
	add	a5,s2,a5
	lui	a4,00023049
	addi	a4,a4,+00000192
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

;; td_init: 230492E2
;;   Called from:
;;     2305D78E (in mm_init)
td_init proc
	lui	a0,0002307C
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-0000060C
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6
	c.li	a0,00000000
	jal	ra,0000000023049274
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	jal	zero,0000000023049274

;; td_start: 23049302
;;   Called from:
;;     2304ADBE (in vif_mgmt_register)
td_start proc
	addi	a5,zero,+00000024
	add	a5,a0,a5
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201C
	addi	s0,s0,-000003B8
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.add	s0,a5
	lbu	a5,s0,+00000022
	c.bnez	a5,0000000023049356

l23049322:
	c.mv	a1,a0
	lui	a0,0002307C
	lui	a5,00044B00
	addi	a0,a0,-000005EC
	lw	s1,a5,+00000120
	jal	ra,0000000023003AC6
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
	jal	zero,00000000230478F4

l23049356:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; td_pck_ind: 23049360
;;   Called from:
;;     2304871C (in rxl_cntrl_evt)
;;     23049D54 (in txl_cntrl_push)
td_pck_ind proc
	addi	a4,zero,+00000024
	add	a0,a0,a4
	lui	a5,0004201C
	addi	a5,a5,-000003B8
	c.add	a5,a0
	c.beqz	a2,000000002304937C

l23049374:
	c.lw	a5,20(a4)
	c.addi	a4,00000001
	c.sw	a5,20(a4)
	c.jr	ra

l2304937C:
	c.lw	a5,16(a4)
	c.addi	a4,00000001
	c.sw	a5,16(a4)
	c.jr	ra

;; td_pck_ps_ind: 23049384
;;   Called from:
;;     23048156 (in ps_check_frame)
;;     23048200 (in ps_check_tx_frame)
td_pck_ps_ind proc
	addi	a4,zero,+00000024
	add	a0,a0,a4
	lui	a5,0004201C
	addi	a5,a5,-000003B8
	c.add	a5,a0
	c.beqz	a1,00000000230493A0

l23049398:
	c.lw	a5,28(a4)
	c.addi	a4,00000001
	c.sw	a5,28(a4)
	c.jr	ra

l230493A0:
	c.lw	a5,24(a4)
	c.addi	a4,00000001
	c.sw	a5,24(a4)
	c.jr	ra

;; bl_tpc_update_power_table: 230493A8
;;   Called from:
;;     23006130 (in cmd_wifi_power_table_update)
bl_tpc_update_power_table proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	ra,000000A4
	c.mv	s0,a0
	jal	ra,0000000023056882
	c.addi4spn	a4,00000008
	addi	a5,s0,+00000018
	c.mv	a0,a4
	addi	s0,s0,+00000026

l230493C0:
	bne	a5,s0,00000000230493D0

l230493C4:
	jal	ra,000000002305B0B0
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.addi16sp	00000050
	c.jr	ra

l230493D0:
	lb	a3,a5,+00000000
	c.addi	a4,00000004
	c.addi	a5,00000001
	sw	a3,a4,+00000FFC
	c.j	00000000230493C0

;; bl_tpc_power_table_get: 230493DE
;;   Called from:
;;     23006A30 (in wifi_sta_ip_info)
bl_tpc_power_table_get proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,00000000230568B6
	c.li	a5,00000018
	addi	a4,zero,+00000026

l230493F0:
	add	a3,s0,a5
	sb	zero,a3,+00000000
	c.addi	a5,00000001
	bne	a5,a4,00000000230493F0

l230493FE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bl_tpc_update_power_rate_11b: 23049406
;;   Called from:
;;     23038DB2 (in hal_board_cfg)
bl_tpc_update_power_rate_11b proc
	jal	zero,00000000230568C4

;; bl_tpc_update_power_rate_11g: 2304940A
;;   Called from:
;;     23038E66 (in hal_board_cfg)
bl_tpc_update_power_rate_11g proc
	jal	zero,00000000230568E8

;; bl_tpc_update_power_rate_11n: 2304940E
;;   Called from:
;;     23038F1A (in hal_board_cfg)
bl_tpc_update_power_rate_11n proc
	jal	zero,000000002305690A

;; tpc_update_tx_power: 23049412
;;   Called from:
;;     230471C6 (in mm_start_req_handler)
;;     230494CC (in tpc_update_vif_tx_power)
;;     2305BBA0 (in chan_pre_switch_channel)
;;     2305C440 (in chan_ctxt_update)
tpc_update_tx_power proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000000
	c.li	a0,00000002
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023056A5A
	lui	s0,00044B00
	lw	a5,s0,+000000A0
	c.li	a1,00000000
	andi	a5,a5,-00000100
	c.or	a0,a5
	sw	a0,s0,+000000A0
	c.li	a0,00000000
	jal	ra,0000000023056A5A
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

;; tpc_update_vif_tx_power: 23049456
;;   Called from:
;;     23047038 (in mm_set_power_req_handler)
;;     2304E3BA (in sm_assoc_rsp_handler)
;;     23061EB4 (in me_beacon_check)
;;     230647D8 (in apm_start_req_handler)
tpc_update_vif_tx_power proc
	lb	a4,a1,+00000000
	addi	a5,zero,+0000007F
	beq	a4,a5,00000000230494EE

l23049462:
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
	jal	ra,0000000023056318
	lb	a4,s1,+00000000
	lb	a5,s0,+0000005A
	sb	a4,s0,+00000059
	bge	a5,a4,000000002304949C

l23049490:
	sb	a5,s1,+00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023056318

l2304949C:
	lb	a5,s1,+00000000
	beq	a5,s3,00000000230494E0

l230494A4:
	lw	a5,s0,+00000350

l230494A8:
	c.bnez	a5,00000000230494D0

l230494AA:
	c.lw	s0,64(a0)
	c.beqz	a0,00000000230494E0

l230494AE:
	jal	ra,000000002305C6BA
	c.mv	a0,s0
	jal	ra,000000002305C63E
	c.beqz	a0,00000000230494E0

l230494BA:
	c.lw	s0,64(a5)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lb	a0,a5,+0000000C
	c.addi16sp	00000020
	jal	zero,0000000023049412

l230494D0:
	lbu	a4,a5,+0000011A
	ori	a4,a4,+00000010
	sb	a4,a5,+0000011A
	c.lw	a5,0(a5)
	c.j	00000000230494A8

l230494E0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230494EE:
	c.jr	ra

;; tpc_get_vif_tx_power_vs_rate: 230494F0
;;   Called from:
;;     23049520 (in tpc_update_frame_tx_power)
;;     2304A310 (in txl_frame_get)
;;     2304EB90 (in txu_cntrl_push)
;;     23061C9E (in me_update_buffer_control)
tpc_get_vif_tx_power_vs_rate proc
	andi	a5,a0,+000000FF
	c.srli	a0,0000000B
	c.andi	a0,00000007
	andi	a1,a5,+0000007F
	c.bnez	a0,0000000023049510

l230494FE:
	andi	a0,a5,+0000007C
	c.beqz	a0,000000002304950C

l23049504:
	c.addi	a1,FFFFFFFC
	andi	a1,a1,+000000FF
	c.li	a0,00000001

l2304950C:
	jal	zero,0000000023056A5A

l23049510:
	c.li	a0,00000002
	c.j	000000002304950C

;; tpc_update_frame_tx_power: 23049514
;;   Called from:
;;     23047C2E (in ps_send_pspoll)
;;     2304A586 (in txl_frame_send_null_frame)
;;     2304A698 (in txl_frame_send_qosnull_frame)
;;     2304A830 (in txl_frame_send_eapol_frame)
;;     2304DC2A (in sm_disconnect)
;;     2304DEEC (in sm_auth_send)
;;     2304E076 (in sm_assoc_req_send)
;;     2304E578 (in sm_handle_supplicant_result)
;;     2305EB38 (in mm_bcn_transmit)
;;     2305FA3A (in bam_send_air_action_frame)
tpc_update_frame_tx_power proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a1,108(a5)
	c.lw	a5,40(s0)
	c.lw	s0,20(a0)
	jal	ra,00000000230494F0
	c.sw	s0,36(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; txl_int_fake_transfer: 2304952E
;;   Called from:
;;     23049C10 (in txl_cntrl_push_int)
;;     23049C96 (in txl_cntrl_push_int_force)
;;     23049D22 (in txl_cntrl_push)
txl_int_fake_transfer proc
	c.lw	a0,104(a5)
	lui	a4,000CAFF0
	addi	a4,a4,-00000522
	c.sw	a5,56(a4)
	c.addi	a1,00000016
	lui	a4,0004201E
	addi	a3,a4,+00000584
	slli	a2,a1,00000003
	c.sw	a5,20(a0)
	c.add	a3,a2
	c.lw	a3,4(a2)
	addi	a4,a4,+00000584
	c.bnez	a2,0000000023049562

l23049554:
	c.sw	a3,4(a5)

l23049556:
	c.slli	a1,03
	c.add	a4,a1
	c.sw	a4,8(a5)
	sw	zero,a5,+00000010
	c.jr	ra

l23049562:
	c.lw	a3,8(a3)
	c.sw	a3,16(a5)
	c.j	0000000023049556

;; blmac_abs_timer_set: 23049568
;;   Called from:
;;     23049AE0 (in txl_payload_handle_backup)
;;     23049E80 (in txl_transmit_trigger)
;;     23049EB2 (in txl_transmit_trigger)
blmac_abs_timer_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.li	a5,00000009
	c.mv	s0,a0
	c.mv	s1,a1
	bge	a5,a0,0000000023049594

l2304957A:
	c.lui	a2,00002000
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,a2,+000006A0
	addi	a1,a1,+00000388
	addi	a0,a0,-0000058C
	jal	ra,0000000023054FF4

l23049594:
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

;; txl_machdr_format: 230495AC
;;   Called from:
;;     2304998C (in txl_payload_handle_backup)
txl_machdr_format proc
	lbu	a5,a0,+00000016
	lui	a4,0004201C
	addi	a2,a0,+00000016
	andi	a3,a5,+0000000F
	addi	a4,a4,-00000370
	c.bnez	a3,00000000230495CC

l230495C2:
	lhu	a5,a4,+00000054
	c.addi	a5,00000001
	sh	a5,a4,+00000054

l230495CC:
	lhu	a5,a4,+00000054
	c.slli	a5,04
	c.or	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,a0,+00000016
	c.srli	a5,00000008
	sb	a5,a2,+00000001
	c.jr	ra

;; txl_cntrl_init: 230495E4
;;   Called from:
;;     2305D796 (in mm_init)
txl_cntrl_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	jal	ra,000000002304AC50
	jal	ra,000000002305F51E
	jal	ra,000000002305F7A2
	c.li	a0,00000000
	jal	ra,000000002304A0A0
	lui	s1,0004201C
	addi	a0,s1,-00000370
	addi	a2,zero,+00000058
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	lui	a5,00044A00
	addi	s0,s1,-00000370
	addi	s3,a5,+00000080
	addi	s1,s1,-00000370
	addi	s2,a5,+00000094

l23049628:
	addi	a0,s0,+00000004
	jal	ra,000000002304FFB4
	sw	zero,s0,+00000000
	lw	a5,s3,+00000000
	sb	zero,s0,+0000000E
	c.addi	s3,00000004
	sh	a5,s0,+0000000C
	c.addi	s0,00000010
	bne	s3,s2,0000000023049628

l23049648:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	sh	zero,s1,+00000054
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; txl_cntrl_tx_check: 2304965A
;;   Called from:
;;     23049146 (in sta_mgmt_send_postponed_frame)
;;     23049BD4 (in txl_cntrl_push_int)
;;     2304EB6C (in txu_cntrl_push)
txl_cntrl_tx_check proc
	lui	a5,0004201C
	lbu	a5,a5,-0000031A
	c.bnez	a5,0000000023049668

l23049664:
	jal	zero,000000002305C66E

l23049668:
	c.li	a0,00000000
	c.jr	ra

;; txl_cntrl_halt_ac: 2304966C
;;   Called from:
;;     230497C0 (in txl_cntrl_clear_bcn_ac)
;;     230497E2 (in txl_cntrl_clear_all_ac)
;;     230497F2 (in txl_cntrl_clear_all_ac)
;;     23049802 (in txl_cntrl_clear_all_ac)
;;     23049812 (in txl_cntrl_clear_all_ac)
;;     23049822 (in txl_cntrl_clear_all_ac)
;;     2305D836 (in mm_tbtt_evt)
txl_cntrl_halt_ac proc
	c.li	a5,00000004
	bltu	a5,a0,000000002304971C

l23049672:
	lui	a5,0002307C
	addi	a5,a5,-000005B4
	c.slli	a0,02
	c.add	a0,a5
	c.lw	a0,0(a5)
	c.jr	a5
23049682       21 67 B7 87 B0 44 23 A0 E7 18 37 87 B0 44   !g...D#...7..D
23049690 83 27 87 18 8D 8B ED FF A1 67 23 22 F7 18 82 80 .'.......g#"....
230496A0 37 07 08 00 B7 87 B0 44 23 A0 E7 18 37 87 B0 44 7......D#...7..D
230496B0 83 27 87 18 C1 83 8D 8B E5 FF B7 07 08 00 F1 BF .'..............
230496C0 37 07 04 00 B7 87 B0 44 23 A0 E7 18 37 87 B0 44 7......D#...7..D
230496D0 83 27 87 18 B1 83 8D 8B E5 FF B7 07 04 00 75 BF .'............u.
230496E0 37 07 02 00 B7 87 B0 44 23 A0 E7 18 37 87 B0 44 7......D#...7..D
230496F0 83 27 87 18 A1 83 8D 8B E5 FF B7 07 02 00 71 BF .'............q.
23049700 41 67 B7 87 B0 44 23 A0 E7 18 37 87 B0 44 83 27 Ag...D#...7..D.'
23049710 87 18 91 83 8D 8B E5 FF C1 67 41 B7             .........gA.   

l2304971C:
	lui	a1,0002307B
	lui	a0,0002307D
	addi	a2,zero,+00000779
	addi	a1,a1,+00000388
	addi	a0,a0,-0000024C
	jal	zero,0000000023054FF4

;; txl_cntrl_flush_ac: 23049734
;;   Called from:
;;     230497CA (in txl_cntrl_clear_bcn_ac)
;;     230497EC (in txl_cntrl_clear_all_ac)
;;     230497FC (in txl_cntrl_clear_all_ac)
;;     2304980C (in txl_cntrl_clear_all_ac)
;;     2304981C (in txl_cntrl_clear_all_ac)
;;     2304982C (in txl_cntrl_clear_all_ac)
;;     2305D840 (in mm_tbtt_evt)
txl_cntrl_flush_ac proc
	c.addi	sp,FFFFFFE0
	lui	a4,0004201E
	c.swsp	s5,00000080
	addi	a4,a4,+00000660
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
	jal	ra,000000002305F8D4
	lui	s0,0004201C
	addi	a1,s4,+00000004
	addi	s0,s0,-00000370
	c.mv	a2,s5
	c.add	a1,s0
	c.mv	a0,s1
	jal	ra,000000002305F8D4
	c.add	s0,s4
	sw	zero,s0,+00000000
	c.mv	a0,s1
	jal	ra,000000002305F664
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

;; txl_cntrl_clear_bcn_ac: 230497B6
;;   Called from:
;;     2304AF1E (in vif_mgmt_unregister)
txl_cntrl_clear_bcn_ac proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	csrrci	zero,mstatus,00000008
	c.li	a0,00000004
	jal	ra,000000002304966C
	lui	a1,00040000
	c.li	a0,00000004
	jal	ra,0000000023049734
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; txl_cntrl_clear_all_ac: 230497D8
;;   Called from:
;;     2304A370 (in txl_frame_get)
txl_cntrl_clear_all_ac proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	csrrci	zero,mstatus,00000008
	c.li	a0,00000004
	jal	ra,000000002304966C
	lui	a1,00040000
	c.li	a0,00000004
	jal	ra,0000000023049734
	c.li	a0,00000000
	jal	ra,000000002304966C
	lui	a1,00040000
	c.li	a0,00000000
	jal	ra,0000000023049734
	c.li	a0,00000001
	jal	ra,000000002304966C
	lui	a1,00040000
	c.li	a0,00000001
	jal	ra,0000000023049734
	c.li	a0,00000002
	jal	ra,000000002304966C
	lui	a1,00040000
	c.li	a0,00000002
	jal	ra,0000000023049734
	c.li	a0,00000003
	jal	ra,000000002304966C
	lui	a1,00040000
	c.li	a0,00000003
	jal	ra,0000000023049734
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; txl_cntrl_inc_pck_cnt: 2304983A
;;   Called from:
;;     2304ECCC (in txu_cntrl_push)
txl_cntrl_inc_pck_cnt proc
	lui	a5,0004201C
	addi	a5,a5,-00000370
	c.lw	a5,80(a4)
	c.addi	a4,00000001
	c.sw	a5,80(a4)
	c.jr	ra

;; txl_payload_handle: 2304984A
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

l23049864:
	c.bnez	a0,0000000023049872

l23049866:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23049872:
	jal	ra,0000000023068C40
	sub	a0,s1,a0
	sll	a0,s2,a0
	c.sw	s0,32(a0)
	c.lw	s0,36(a0)
	c.andi	a0,0000001F
	c.j	0000000023049864

;; txl_payload_handle_backup: 23049886
;;   Called from:
;;     23049C34 (in txl_cntrl_push_int)
;;     23049CBA (in txl_cntrl_push_int_force)
;;     23049D26 (in txl_cntrl_push)
txl_payload_handle_backup proc
	c.addi16sp	FFFFFFB0
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	lui	s3,0004201E
	lui	s4,0004201C
	lui	s7,000FF880
	lui	s8,0004201C
	c.lui	s9,00001000
	c.swsp	s1,000000A0
	c.swsp	s10,00000010
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s11,0000008C
	addi	s3,s3,+00000584
	addi	s4,s4,-00000370
	c.li	s1,00000000
	c.addi	s7,FFFFFFFF
	addi	s8,s8,-00000308
	addi	s10,s9,-00000800

l230498C8:
	lw	a0,s3,+000000B4
	c.bnez	a0,00000000230498F8

l230498CE:
	c.addi	s1,00000001
	c.li	a5,00000005
	c.addi	s3,00000008
	c.addi	s4,00000010
	bne	s1,a5,00000000230498C8

l230498DA:
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

l230498F8:
	c.lw	a0,16(a5)
	c.li	s5,00000001
	lui	s6,00000062
	andi	s0,s1,+000000FF
	sw	a5,s3,+000000B4
	sll	s5,s5,s1
	addi	s6,s6,-00000580

l23049910:
	lw	s2,a0,+00000014
	lw	a5,s2,+00000008
	c.beqz	a5,00000000230499D0

l2304991A:
	c.li	a5,00000004
	bne	s1,a5,0000000023049944

l23049920:
	lbu	a5,s2,+0000002F
	addi	a4,zero,+000005D8
	lbu	a3,a0,+0000014D
	add	a5,a5,a4
	c.srli	a3,00000005
	c.andi	a3,00000001
	c.add	a5,s8
	lbu	a4,a5,+00000346
	c.beqz	a3,0000000023049A06

l2304993C:
	ori	a4,a4,+00000002

l23049940:
	sb	a4,a5,+00000346

l23049944:
	lbu	a4,s2,+0000002E
	addi	a5,zero,+000000FF
	bne	a4,a5,0000000023049990

l23049950:
	lhu	a4,s2,+00000032
	addi	s11,a0,+0000014C
	andi	a5,a4,+00000008
	c.beqz	a5,000000002304998A

l2304995E:
	lbu	a5,a0,+0000014C
	c.li	a3,00000010
	andi	a5,a5,+000000DC
	bne	a5,a3,000000002304998A

l2304996C:
	lbu	a5,s11,+0000001B
	lbu	a3,s11,+0000001A
	c.slli	a5,08
	c.or	a5,a3
	c.bnez	a5,000000002304998A

l2304997A:
	ori	a4,a4,+00000020
	sh	a4,s2,+00000032
	addi	a0,a0,+00000150
	jal	ra,000000002304C64A

l2304998A:
	c.mv	a0,s11
	jal	ra,00000000230495AC

l23049990:
	lhu	a5,s2,+00000032
	lw	a4,s2,+00000068
	lw	s11,s2,+0000006C
	c.andi	a5,00000008
	addi	a3,a4,+000000F0
	c.beqz	a5,0000000023049A0A

l230499A4:
	lw	a5,s11,+0000003C
	and	a5,a5,s7
	sw	a5,s11,+0000003C
	lbu	a5,a4,+00000150
	sw	zero,s11,+00000040
	c.andi	a5,00000001
	sltiu	a5,a5,+00000001
	c.slli	a5,09
	sw	a5,s11,+00000038

l230499C4:
	sw	a3,s11,+00000028
	lw	a5,a4,+00000128
	sw	a5,s11,+00000024

l230499D0:
	lhu	a5,s4,+0000000C
	c.addi	a5,00000001
	sh	a5,s4,+0000000C
	lw	s2,s2,+0000006C
	lw	a5,s4,+00000000
	c.addi	s2,00000004
	c.beqz	a5,0000000023049A56

l230499E6:
	sw	s2,a5,+00000004
	c.li	a4,00000002
	lui	a5,00044B08
	beq	s0,a4,0000000023049A4E

l230499F4:
	bltu	a4,s0,0000000023049A24

l230499F8:
	c.li	a4,00000001
	beq	s0,a4,0000000023049A52

l230499FE:
	lui	a5,00044B08
	c.li	a4,00000002
	c.j	0000000023049A32

l23049A06:
	c.andi	a4,FFFFFFFD
	c.j	0000000023049940

l23049A0A:
	c.mv	a1,s0
	c.mv	a0,s2
	c.swsp	a4,00000084
	c.swsp	a3,00000004
	jal	ra,000000002304ECE8
	c.lwsp	a2,000000C4
	c.lwsp	s0,000000A4
	lw	a5,a4,+00000124
	sw	a5,s11,+00000038
	c.j	00000000230499C4

l23049A24:
	c.li	a4,00000003
	beq	s0,a4,0000000023049A4A

l23049A2A:
	c.li	a4,00000004
	bne	s0,a4,00000000230499FE

l23049A30:
	c.li	a4,00000001

l23049A32:
	sw	a4,a5,+00000180

l23049A36:
	lw	a0,s3,+000000B4
	sw	s2,s4,+00000000
	beq	a0,zero,00000000230498CE

l23049A42:
	c.lw	a0,16(a5)
	sw	a5,s3,+000000B4
	c.j	0000000023049910

l23049A4A:
	c.li	a4,00000010
	c.j	0000000023049A32

l23049A4E:
	c.li	a4,00000008
	c.j	0000000023049A32

l23049A52:
	c.li	a4,00000004
	c.j	0000000023049A32

l23049A56:
	lui	a5,00044B00
	lw	a1,a5,+00000120
	c.li	a4,00000002
	beq	s0,a4,0000000023049B2E

l23049A64:
	lui	a5,00044B08
	bltu	a4,s0,0000000023049A9A

l23049A6C:
	c.li	a3,00000001
	beq	s0,a3,0000000023049B62

l23049A72:
	lui	a4,00044B08
	lw	a5,a4,+00000188
	c.li	a3,00000002
	c.srli	a5,00000004
	c.andi	a5,00000003
	bne	a5,a3,0000000023049B9C

l23049A84:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+00000248
	addi	a1,a1,+00000388
	addi	a0,a0,-000004FC
	c.j	0000000023049AC4

l23049A9A:
	c.li	a3,00000003
	beq	s0,a3,0000000023049AFA

l23049AA0:
	c.li	a3,00000004
	bne	s0,a3,0000000023049A72

l23049AA6:
	lw	a3,a5,+00000188
	c.andi	a3,00000003
	bne	a3,a4,0000000023049ACA

l23049AB0:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+0000022F
	addi	a1,a1,+00000388
	addi	a0,a0,-0000057C

l23049AC4:
	jal	ra,0000000023054FB4
	c.j	0000000023049A36

l23049ACA:
	sw	s2,a5,+00000198
	addi	a4,zero,+00000100
	sw	a4,a5,+00000180
	c.lui	a5,0000C000
	addi	a5,a5,+00000350
	c.add	a1,a5
	c.li	a0,00000004

l23049AE0:
	jal	ra,0000000023049568
	lui	a5,00044B08
	sw	s5,a5,+00000088
	lw	a4,a5,+0000008C
	or	a4,s5,a4
	sw	a4,a5,+0000008C
	c.j	0000000023049A36

l23049AFA:
	lw	a3,a5,+00000188
	c.srli	a3,00000010
	c.andi	a3,00000003
	bne	a3,a4,0000000023049B1C

l23049B06:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+00000236
	addi	a1,a1,+00000388
	addi	a0,a0,-0000055C
	c.j	0000000023049AC4

l23049B1C:
	sw	s2,a5,+000001A8
	sw	s9,a5,+00000180

l23049B24:
	lui	a5,00000031
	addi	a5,a5,-000002C0
	c.j	0000000023049B98

l23049B2E:
	lui	a4,00044B08
	lw	a5,a4,+00000188
	c.srli	a5,0000000C
	c.andi	a5,00000003
	bne	a5,s0,0000000023049B54

l23049B3E:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+0000023C
	addi	a1,a1,+00000388
	addi	a0,a0,-0000053C
	c.j	0000000023049AC4

l23049B54:
	sw	s2,a4,+000001A4
	sw	s10,a4,+00000180
	c.add	a1,s6

l23049B5E:
	c.mv	a0,s1
	c.j	0000000023049AE0

l23049B62:
	lw	a3,a5,+00000188
	c.srli	a3,00000008
	c.andi	a3,00000003
	bne	a3,a4,0000000023049B84

l23049B6E:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+00000242
	addi	a1,a1,+00000388
	addi	a0,a0,-0000051C
	c.j	0000000023049AC4

l23049B84:
	sw	s2,a5,+000001A0
	addi	a4,zero,+00000400
	sw	a4,a5,+00000180
	lui	a5,000001E8
	addi	a5,a5,+00000480

l23049B98:
	c.add	a1,a5
	c.j	0000000023049B5E

l23049B9C:
	sw	s2,a4,+0000019C
	addi	a5,zero,+00000200
	sw	a5,a4,+00000180
	c.j	0000000023049B24

;; txl_cntrl_push_int: 23049BAA
;;   Called from:
;;     23049172 (in sta_mgmt_send_postponed_frame)
;;     2304A3DA (in txl_frame_push)
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
	lui	a0,0004201C
	addi	a0,a0,-00000308
	c.mv	s1,a1
	c.add	a0,a5
	jal	ra,000000002304965A
	c.bnez	a0,0000000023049BF2

l23049BDA:
	lbu	s2,s0,+00000030
	addi	a5,zero,+000000FF
	bne	s2,a5,0000000023049C3A

l23049BE6:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002304A464
	c.li	s2,00000000
	c.j	0000000023049C6C

l23049BF2:
	c.mv	a0,s0
	jal	ra,000000002304F40C
	c.mv	s2,a0
	c.beqz	a0,0000000023049BDA

l23049BFC:
	lw	a5,s3,+0000003C
	ori	a5,a5,+00000100
	sw	a5,s3,+0000003C
	csrrci	zero,mstatus,00000008
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002304952E
	slli	a0,s1,00000004
	lui	s1,0004201C
	addi	s1,s1,-00000370
	c.addi	a0,00000004
	c.mv	a1,s0
	c.add	a0,s1
	jal	ra,000000002304FFBE
	csrrsi	zero,mstatus,00000008
	c.lw	s1,80(a5)
	c.addi	a5,00000001
	c.sw	s1,80(a5)
	jal	ra,0000000023049886
	c.j	0000000023049C6C

l23049C3A:
	addi	a5,zero,+000001B0
	add	s2,s2,a5
	sb	s1,s0,+0000002E
	lui	s1,0004201B
	c.li	a5,00000001
	addi	s1,s1,-000007F8
	sb	a5,s0,+000002D5
	c.mv	a1,s0
	addi	a0,s2,+0000019C
	c.add	a0,s1
	jal	ra,000000002304FFBE
	add	a1,s1,s2
	c.mv	a0,s0
	jal	ra,000000002304F46E
	c.li	s2,00000001

l23049C6C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; txl_cntrl_push_int_force: 23049C7C
;;   Called from:
;;     2304A442 (in txl_frame_push_force)
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
	jal	ra,000000002304952E
	slli	a0,s0,00000004
	lui	s0,0004201C
	addi	s0,s0,-00000370
	c.addi	a0,00000004
	c.mv	a1,s1
	c.add	a0,s0
	jal	ra,000000002304FFBE
	csrrsi	zero,mstatus,00000008
	c.lw	s0,80(a5)
	c.addi	a5,00000001
	c.sw	s0,80(a5)
	jal	ra,0000000023049886
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; txl_cntrl_push: 23049CCA
;;   Called from:
;;     2304EBB0 (in txu_cntrl_push)
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
	c.bnez	a5,0000000023049D70

l23049D22:
	jal	ra,000000002304952E

l23049D26:
	jal	ra,0000000023049886
	slli	a0,s1,00000004
	lui	s1,0004201C
	addi	s1,s1,-00000370
	c.addi	a0,00000004
	c.mv	a1,s0
	c.add	a0,s1
	jal	ra,000000002304FFBE
	csrrsi	zero,mstatus,00000008
	c.lw	s1,80(a5)
	c.li	a2,00000000
	c.addi	a5,00000001
	c.sw	s1,80(a5)
	lbu	a1,s0,+00000030
	lbu	a0,s0,+0000002F
	jal	ra,0000000023049360
	lbu	a0,s0,+00000030
	lbu	a1,s0,+0000002E
	jal	ra,0000000023048182
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23049D70:
	c.li	a2,00000000
	jal	ra,000000002305F676
	c.sw	s0,104(a0)
	c.sw	a0,20(s0)
	c.mv	a0,s0
	jal	ra,000000002305F708
	c.j	0000000023049D26

;; txl_transmit_trigger: 23049D82
txl_transmit_trigger proc
	lui	a5,00044B08
	c.lw	a5,120(a0)
	andi	a0,a0,+000007C0
	beq	a0,zero,0000000023049EF4

l23049D90:
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
	jal	ra,0000000023068C40
	c.sub	s0,a0
	andi	s0,s0,+000000FF
	c.li	a5,00000004
	bgeu	a5,s0,0000000023049DD8

l23049DBE:
	c.lui	a2,00001000
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,a2,-000006F5
	addi	a1,a1,+00000388
	addi	a0,a0,-000004DC
	jal	ra,0000000023054FF4

l23049DD8:
	c.li	s1,00000001
	addi	a5,s0,+00000006
	sll	a5,s1,a5
	slli	s6,s0,00000004
	lui	s3,0004201C
	lui	a4,00044B08
	lui	s4,0002307C
	c.sw	a4,124(a5)
	addi	s5,s6,+00000004
	addi	a5,s3,-00000370
	sll	s1,s1,s0
	addi	s3,s3,-00000370
	addi	s4,s4,-000005A0
	slli	s7,s0,00000002
	c.add	s5,a5
	xori	s1,s1,-00000001
	lui	s8,00044B08
	add	s11,s3,s6
	lui	s10,00044B00
	add	s9,s4,s7

l23049E22:
	lw	s2,s5,+00000000
	beq	s2,zero,0000000023049EC2

l23049E2A:
	lw	a5,s2,+0000006C
	c.lw	a5,64(a1)
	bge	a1,zero,0000000023049ED6

l23049E34:
	lw	a4,s2,+00000008
	c.beqz	a4,0000000023049E44

l23049E3A:
	lw	a4,s2,+00000068
	c.beqz	a4,0000000023049E44

l23049E40:
	sw	zero,s2,+00000068

l23049E44:
	c.lw	a5,0(a4)
	c.sw	a4,16(a1)
	c.lw	a5,8(a5)
	c.beqz	a5,0000000023049E84

l23049E4C:
	c.lw	a5,60(a5)
	blt	a5,zero,0000000023049E92

l23049E52:
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
	jal	zero,0000000023049568

l23049E84:
	lw	a5,s8,+0000008C
	sw	zero,s11,+00000000
	c.and	a5,s1
	sw	a5,s8,+0000008C

l23049E92:
	c.mv	a0,s5
	c.swsp	a1,00000084
	jal	ra,000000002305003A
	lw	a5,s2,+00000008
	c.lwsp	a2,00000064
	c.bnez	a5,0000000023049EB8

l23049EA2:
	c.mv	a0,s2
	c.jal	000000002304A446

l23049EA6:
	lw	a1,s10,+00000120
	lw	a5,s9,+00000000
	c.mv	a0,s0
	c.add	a1,a5
	jal	ra,0000000023049568
	c.j	0000000023049E22

l23049EB8:
	c.mv	a2,s0
	c.mv	a0,s2
	jal	ra,000000002305F7F8
	c.j	0000000023049EA6

l23049EC2:
	lui	a5,00044B08
	lw	a4,a5,+0000008C
	c.add	s3,s6
	sw	zero,s3,+00000000
	c.and	s1,a4
	sw	s1,a5,+0000008C

l23049ED6:
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

l23049EF4:
	c.jr	ra

;; txl_reset: 23049EF6
;;   Called from:
;;     2305DCB8 (in mm_force_idle_req)
;;     2305EED8 (in bl_reset_evt)
txl_reset proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,0004201C
	c.swsp	s5,00000088
	addi	a5,s0,-00000370
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
	jal	ra,00000000230501C0
	c.lui	a5,00010000
	addi	s5,s0,-00000370
	lui	a3,00044A00
	c.addi	a5,FFFFFFFF

l23049F2C:
	c.lw	a3,16(a4)
	c.slli	a4,10
	c.srli	a4,00000010
	bne	a4,a5,0000000023049F2C

l23049F36:
	c.li	a5,00000001
	lui	s4,0004201E
	lui	s3,0004201C
	sb	a5,s5,+00000056
	addi	s4,s4,+00000660
	addi	s3,s3,-0000036C
	c.li	s2,00000000
	c.li	s9,00000001
	lui	s1,00044A00
	c.li	s8,00000005

l23049F56:
	sll	a5,s9,s2
	andi	s7,s2,+000000FF
	c.mv	a1,s4
	c.sw	s1,32(a5)
	lui	a2,00040000
	c.mv	a0,s7
	jal	ra,000000002305F8D4
	c.mv	a1,s3
	lui	a2,00040000
	c.mv	a0,s7
	c.addi	s2,00000001
	jal	ra,000000002305F8D4
	c.addi	s4,00000008
	c.addi	s3,00000010
	bne	s2,s8,0000000023049F56

l23049F82:
	jal	ra,000000002304AC52
	jal	ra,000000002305F50C
	jal	ra,000000002305F7A2
	addi	a0,s0,-00000370
	addi	a2,zero,+00000058
	c.li	a1,00000000
	lui	s2,00044A00
	jal	ra,000000002306D1BC
	addi	s0,s0,-00000370
	sh	s6,s5,+00000054
	addi	s1,s1,+00000080
	addi	s2,s2,+00000094

l23049FB0:
	addi	a0,s0,+00000004
	jal	ra,000000002304FFB4
	sw	zero,s0,+00000000
	c.lw	s1,0(a5)
	sb	zero,s0,+0000000E
	c.addi	s1,00000004
	sh	a5,s0,+0000000C
	c.addi	s0,00000010
	bne	s1,s2,0000000023049FB0

l23049FCE:
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

;; txl_cntrl_env_dump: 23049FE8
;;   Called from:
;;     2305020C (in bl_fw_statistic_dump)
txl_cntrl_env_dump proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004201C
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.li	s0,00000004
	addi	s1,s1,-00000370
	addi	s3,zero,+00000054

l2304A002:
	add	s2,s0,s1
	c.mv	a0,s2
	jal	ra,000000002305009A
	c.beqz	a0,000000002304A018

l2304A00E:
	lw	a5,s2,+00000000
	c.mv	a4,a5

l2304A014:
	c.bnez	a4,000000002304A02C

l2304A016:
	c.bnez	a5,000000002304A030

l2304A018:
	c.addi	s0,00000010
	bne	s0,s3,000000002304A002

l2304A01E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2304A02C:
	c.lw	a4,0(a4)
	c.j	000000002304A014

l2304A030:
	c.lw	a5,108(a4)
	c.lw	a4,16(a4)

l2304A034:
	c.bnez	a4,000000002304A03A

l2304A036:
	c.lw	a5,0(a5)
	c.j	000000002304A016

l2304A03A:
	c.lw	a4,4(a4)
	c.j	000000002304A034

;; txl_frame_init_desc: 2304A03E
;;   Called from:
;;     2305E896 (in mm_bcn_init_vif)
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
	jal	ra,000000002306D1BC
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

;; txl_frame_init: 2304A0A0
;;   Called from:
;;     230495FE (in txl_cntrl_init)
txl_frame_init proc
	c.addi16sp	FFFFFFC0
	c.swsp	s5,00000090
	lui	s5,0004201C
	c.swsp	s7,0000008C
	c.mv	s7,a0
	addi	a0,s5,-00000318
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
	jal	ra,000000002304FFB4
	lui	a0,0004201C
	addi	a0,a0,-00000310
	lui	s1,00042015
	lui	s0,00042046
	lui	s3,00042044
	lui	s2,00042044
	lui	s6,00042046
	lui	s8,000CAFEC
	lui	s9,000BADCB
	jal	ra,000000002304FFB4
	addi	s1,s1,+00000684
	addi	s0,s0,-00000520
	addi	s3,s3,+00000784
	addi	s2,s2,+00000694
	c.li	s4,00000000
	c.li	s10,00000014
	addi	s6,s6,-00000400
	addi	s8,s8,-00000542
	addi	s9,s9,-000004E2
	c.li	s11,00000004

l2304A114:
	beq	s7,zero,000000002304A11E

l2304A118:
	lbu	a5,s1,+000002D5
	c.bnez	a5,000000002304A168

l2304A11E:
	c.li	a1,00000000
	addi	a2,zero,+000002D8
	c.mv	a0,s1
	jal	ra,000000002306D1BC
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
	addi	a0,s5,-00000318
	jal	ra,000000002304FFBE

l2304A168:
	c.addi	s4,00000001
	addi	s1,s1,+000002D8
	addi	s0,s0,+00000048
	addi	s3,s3,+0000024C
	addi	s2,s2,+0000003C
	bne	s4,s11,000000002304A114

l2304A17E:
	lui	s0,00042045
	lui	s3,000BADCB
	addi	s0,s0,+000000B4
	addi	s3,s3,-000004E2
	sw	s3,s0,+00000000
	sw	zero,s0,+00000034
	sw	zero,s0,+00000038
	jal	ra,00000000230562F2
	c.slli	a0,0E
	c.sw	s0,4(a0)
	jal	ra,00000000230562F2
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
	lui	s0,00042046
	addi	s0,s0,-000005D4
	sw	s3,s0,+00000000
	sw	zero,s0,+00000034
	sw	zero,s0,+00000038
	jal	ra,00000000230562F2
	c.slli	a0,0E
	c.sw	s0,4(a0)
	jal	ra,00000000230562F2
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

;; txl_frame_get: 2304A24A
;;   Called from:
;;     23047C22 (in ps_send_pspoll)
;;     2304A564 (in txl_frame_send_null_frame)
;;     2304A670 (in txl_frame_send_qosnull_frame)
;;     2304A79E (in txl_frame_send_eapol_frame)
;;     2304DC1E (in sm_disconnect)
;;     2304DEDE (in sm_auth_send)
;;     2304E064 (in sm_assoc_req_send)
;;     2304E56C (in sm_handle_supplicant_result)
;;     2304F79A (in apm_send_mlme)
;;     2305F238 (in scan_probe_req_tx)
;;     2305FA12 (in bam_send_air_action_frame)
;;     230637D2 (in scanu_raw_send_req_handler)
txl_frame_get proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,0004201C
	c.swsp	s4,0000000C
	c.mv	s4,a0
	addi	a0,s1,-00000318
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	a1,00000084
	jal	ra,000000002305003A
	c.mv	s0,a0
	c.beqz	a0,000000002304A332

l2304A26C:
	lui	a4,0004200E
	addi	a4,a4,+00000378
	c.lw	a4,0(a5)
	c.li	a3,00000001
	c.lwsp	a2,00000064
	bne	a5,a3,000000002304A2C6

l2304A27E:
	sw	zero,a4,+00000000
	lui	a4,0004200E
	sb	a5,a4,+00000374
	jal	ra,00000000230347A4
	lui	a1,0002307C
	lui	a0,0002307C
	addi	a2,zero,+0000010B
	addi	a1,a1,-000004BC
	addi	a0,a0,-000004B4
	jal	ra,0000000023054FB4
	addi	a0,zero,+000000C8
	jal	ra,0000000023033E10
	c.li	s0,00000000
	jal	ra,00000000230347B8

l2304A2B4:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2304A2C6:
	c.beqz	a5,000000002304A2CC

l2304A2C8:
	c.addi	a5,FFFFFFFF
	c.sw	a4,0(a5)

l2304A2CC:
	c.lw	s0,108(s1)
	lw	s3,s0,+00000068
	addi	a4,a1,-00000001
	c.lw	s1,20(a5)
	c.addi	a1,00000004
	c.sw	s1,28(a1)
	c.add	a5,a4
	c.sw	s1,24(a5)
	addi	s2,s3,+000000F0
	beq	s4,zero,000000002304A2FA

l2304A2E8:
	c.li	a5,00000001
	c.mv	a1,s2
	bne	s4,a5,000000002304A302

l2304A2F0:
	lui	a1,00042046
	addi	a1,a1,-000005D4
	c.j	000000002304A302

l2304A2FA:
	lui	a1,00042045
	addi	a1,a1,+000000B4

l2304A302:
	addi	a2,zero,+00000034
	c.mv	a0,s2
	jal	ra,000000002306CF80
	lw	a0,s3,+00000104
	jal	ra,00000000230494F0
	sw	a0,s3,+00000114
	sw	s2,s1,+00000028
	sw	zero,s1,+00000024
	sw	zero,s1,+0000003C
	sw	zero,s1,+00000010
	sw	zero,s0,+000002CC
	sw	zero,s0,+000002D0
	c.j	000000002304A2B4

l2304A332:
	lui	a5,0004200E
	addi	a5,a5,+0000037C
	c.lw	a5,0(a4)
	c.li	a3,0000000A
	c.addi	a4,00000001
	beq	a4,a3,000000002304A348

l2304A344:
	c.sw	a5,0(a4)
	c.j	000000002304A2B4

l2304A348:
	c.li	a4,00000002
	sw	zero,a5,+00000000
	addi	a0,s1,-00000318
	lui	a5,0004200E
	sw	a4,a5,+00000378
	jal	ra,000000002305009A
	c.mv	s1,a0
	lui	a0,0004201C
	addi	a0,a0,-00000310
	jal	ra,000000002305009A
	c.or	a0,s1
	c.bnez	a0,000000002304A2B4

l2304A370:
	jal	ra,00000000230497D8
	c.j	000000002304A2B4

;; txl_frame_push: 2304A376
;;   Called from:
;;     23047CA6 (in ps_send_pspoll)
;;     2304A606 (in txl_frame_send_null_frame)
;;     2304A71C (in txl_frame_send_qosnull_frame)
;;     2304AAFE (in txl_frame_send_eapol_frame)
;;     2304D628 (in sm_frame_tx_cfm_handler)
;;     2304DCC6 (in sm_disconnect)
;;     2304DFCA (in sm_auth_send)
;;     2304E162 (in sm_assoc_req_send)
;;     2304E606 (in sm_handle_supplicant_result)
;;     2304F86C (in apm_send_mlme)
;;     2305EB7E (in mm_bcn_transmit)
;;     2305F2F0 (in scan_probe_req_tx)
;;     2305FB68 (in bam_send_air_action_frame)
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
	c.beqz	a5,000000002304A3A4

l2304A38C:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+00000182
	addi	a1,a1,+00000388
	addi	a0,a0,-00000494
	jal	ra,0000000023054FF4

l2304A3A4:
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
	jal	zero,0000000023049BAA

;; txl_frame_push_force: 2304A3DE
;;   Called from:
;;     2306381E (in scanu_raw_send_req_handler)
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
	c.beqz	a5,000000002304A40C

l2304A3F4:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+000001AD
	addi	a1,a1,+00000388
	addi	a0,a0,-00000494
	jal	ra,0000000023054FF4

l2304A40C:
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
	jal	zero,0000000023049C7C

;; txl_frame_cfm: 2304A446
;;   Called from:
;;     23049EA4 (in txl_transmit_trigger)
;;     2305F91A (in txl_cfm_flush)
txl_frame_cfm proc
	c.mv	a1,a0
	lui	a0,0004201C
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000310
	c.swsp	ra,00000084
	jal	ra,000000002304FFBE
	c.lwsp	a2,00000020
	lui	a0,00000020
	c.addi	sp,00000010
	jal	zero,00000000230501A8

;; txl_frame_release: 2304A464
;;   Called from:
;;     23048D70 (in sta_mgmt_entry_init)
;;     23049BEA (in txl_cntrl_push_int)
txl_frame_release proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lbu	a5,a0,+000002D4
	c.mv	s0,a0
	c.mv	s1,a1
	c.bnez	a5,000000002304A484

l2304A476:
	c.mv	a1,a0
	lui	a0,0004201C
	addi	a0,a0,-00000318
	jal	ra,000000002304FFBE

l2304A484:
	c.beqz	s1,000000002304A49E

l2304A486:
	lw	t1,s0,+000002CC
	beq	t1,zero,000000002304A49E

l2304A48E:
	lw	a0,s0,+000002D0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a1,00000000
	c.addi	sp,00000010
	c.jr	t1

l2304A49E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; txl_frame_evt: 2304A4A8
;;   Called from:
;;     2305F940 (in txl_cfm_flush)
txl_frame_evt proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	a0,00000020
	lui	s1,0004201C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	lui	s3,0004201C
	jal	ra,00000000230501C0
	addi	s1,s1,-00000370
	lui	s2,0004201C

l2304A4CC:
	csrrci	zero,mstatus,00000008
	addi	a0,s3,-00000310
	jal	ra,000000002305003A
	c.mv	s0,a0
	csrrsi	zero,mstatus,00000008
	c.beqz	a0,000000002304A514

l2304A4E0:
	c.lw	s1,80(a5)
	c.addi	a5,FFFFFFFF
	c.sw	s1,80(a5)
	lw	a5,a0,+000002CC
	c.beqz	a5,000000002304A502

l2304A4EC:
	c.lw	a0,108(a4)
	lw	a0,a0,+000002D0
	c.lw	a4,64(a1)
	c.jalr	a5
	lbu	a5,s0,+000002D6
	c.beqz	a5,000000002304A502

l2304A4FC:
	sb	zero,s0,+000002D6
	c.j	000000002304A4CC

l2304A502:
	lbu	a5,s0,+000002D4
	c.bnez	a5,000000002304A4CC

l2304A508:
	c.mv	a1,s0
	addi	a0,s2,-00000318
	jal	ra,000000002304FFBE
	c.j	000000002304A4CC

l2304A514:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; txl_frame_send_null_frame: 2304A522
;;   Called from:
;;     23047BE8 (in ps_dpsm_update)
;;     23047DC8 (in ps_set_mode)
;;     23047E72 (in ps_enable_cfm)
;;     23047F50 (in ps_disable_cfm)
;;     2305BC4E (in chan_pre_switch_channel)
;;     2305BD92 (in chan_goto_idle_cb)
;;     2305E27C (in mm_check_beacon)
;;     2305E4EC (in mm_sta_tbtt)
txl_frame_send_null_frame proc
	addi	a5,zero,+000001B0
	add	a5,a0,a5
	c.addi16sp	FFFFFFC0
	c.swsp	s2,00000018
	lui	s2,0004201B
	addi	s2,s2,-000007F8
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
	jal	ra,0000000023055E82
	lbu	a0,sp,+00000008
	c.li	a1,00000018
	sltu	a0,zero,a0
	jal	ra,000000002304A24A
	c.beqz	a0,000000002304A622

l2304A56A:
	addi	a5,zero,+000005D8
	add	s6,s6,a5
	lui	a5,0004201C
	addi	a5,a5,-00000308
	c.mv	s1,a0
	c.mv	a1,a0
	addi	s7,s2,+0000001E
	c.add	s6,a5
	c.mv	a0,s6
	jal	ra,0000000023049514
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
	jal	ra,000000002306CF80
	c.li	a2,00000006
	addi	a1,s6,+00000050
	addi	a0,s0,+00000156
	jal	ra,000000002306CF80
	c.li	a2,00000006
	c.mv	a1,s7
	addi	a0,s0,+0000015C
	jal	ra,000000002306CF80
	lui	a4,0004201C
	addi	a4,a4,-00000370
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
	jal	ra,000000002304A376
	c.li	a0,00000000

l2304A60C:
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

l2304A622:
	c.li	a0,00000001
	c.j	000000002304A60C

;; txl_frame_send_qosnull_frame: 2304A626
;;   Called from:
;;     23047B14 (in ps_uapsd_timer_handle)
;;     23048038 (in ps_check_beacon)
;;     23048854 (in rxl_cntrl_evt)
;;     2304EE94 (in txu_cntrl_cfm)
txl_frame_send_qosnull_frame proc
	addi	a5,zero,+000001B0
	add	a5,a0,a5
	c.addi16sp	FFFFFFC0
	c.swsp	s4,00000014
	lui	s4,0004201B
	c.swsp	s2,00000018
	addi	s2,s4,-000007F8
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
	jal	ra,0000000023055E82
	lbu	a0,sp,+00000008
	c.li	a1,0000001A
	sltu	a0,zero,a0
	jal	ra,000000002304A24A
	c.beqz	a0,000000002304A74A

l2304A676:
	addi	a5,zero,+000005D8
	add	s3,s3,a5
	lui	a5,0004201C
	addi	a5,a5,-00000308
	c.mv	a1,a0
	c.mv	s1,a0
	addi	s9,zero,-00000038
	c.addi	s2,0000001E
	addi	s4,s4,-000007F8
	c.add	s3,a5
	c.mv	a0,s3
	jal	ra,0000000023049514
	c.lw	s1,104(s0)
	c.li	a2,00000006
	c.mv	a1,s2
	sb	s9,s0,+0000014C
	sb	zero,s0,+0000014D
	sb	zero,s0,+0000014E
	sb	zero,s0,+0000014F
	addi	a0,s0,+00000150
	jal	ra,000000002306CF80
	addi	s10,s3,+00000050
	c.li	a2,00000006
	c.mv	a1,s10
	addi	a0,s0,+00000156
	jal	ra,000000002306CF80
	lbu	a5,s3,+00000056
	sb	s9,s0,+0000014C
	addi	a0,s0,+0000015C
	c.bnez	a5,000000002304A73E

l2304A6D8:
	c.li	a5,00000001
	sb	a5,s0,+0000014D
	c.li	a2,00000006
	c.mv	a1,s2

l2304A6E2:
	jal	ra,000000002306CF80
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
	jal	ra,000000002304A376
	c.li	a0,00000000

l2304A722:
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

l2304A73E:
	c.li	a5,00000002
	sb	a5,s0,+0000014D
	c.li	a2,00000006
	c.mv	a1,s10
	c.j	000000002304A6E2

l2304A74A:
	c.li	a0,00000001
	c.j	000000002304A722

;; txl_frame_send_eapol_frame: 2304A74E
;;   Called from:
;;     23050D4A (in UpdateEAPOLWcbLenAndTransmit)
txl_frame_send_eapol_frame proc
	c.addi16sp	FFFFFF90
	c.swsp	s1,000000B0
	addi	s1,zero,+000001B0
	add	s1,a0,s1
	c.swsp	s3,000000AC
	lui	s3,0004201B
	c.swsp	s4,0000002C
	addi	s4,s3,-000007F8
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
	jal	ra,0000000023055E82
	lbu	a0,sp,+00000018
	addi	a1,zero,+00000100
	sltu	a0,zero,a0
	jal	ra,000000002304A24A
	beq	a0,zero,000000002304AB02

l2304A7A6:
	sb	s11,a0,+0000002F
	sb	s5,a0,+00000030
	sb	zero,a0,+0000002E
	lhu	a4,s4,+000000F8
	addi	s3,s3,-000007F8
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
	lui	s4,0004201C
	sh	a4,a0,+00000014
	lhu	a4,s9,+00000002
	c.mv	s0,a0
	c.mv	a1,a0
	sh	a4,a0,+00000016
	lhu	a4,s9,+00000004
	addi	a3,s2,+00000050
	sh	a4,a0,+00000018
	addi	a4,s4,-00000308
	add	s10,a3,a4
	lhu	a2,s10,+00000000
	c.add	s2,a4
	addi	s4,s4,-00000308
	sh	a2,a0,+0000001A
	lhu	a2,s10,+00000002
	sh	a2,a0,+0000001C
	lhu	a2,s10,+00000004
	sh	a2,a0,+0000001E
	c.mv	a0,s2
	jal	ra,0000000023049514
	lw	a4,s2,+000003E0
	c.lw	s0,104(s1)
	c.andi	a4,00000001
	beq	a4,zero,000000002304AB22

l2304A840:
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

l2304A874:
	addi	a4,zero,+00000100
	bgeu	a4,s5,000000002304A894

l2304A87C:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+00000591
	addi	a1,a1,+00000388
	addi	a0,a0,-00000474
	jal	ra,0000000023054FF4

l2304A894:
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
	bne	a0,a1,000000002304A8BC

l2304A8B8:
	ori	a2,a4,+00000200

l2304A8BC:
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
	bne	a2,a4,000000002304AB5C

l2304A912:
	lhu	a5,s10,+00000000
	sh	a5,s1,+0000015C
	lhu	a5,s10,+00000002
	sh	a5,s1,+0000015E
	lhu	a5,s10,+00000004

l2304A926:
	sh	a5,s1,+00000160
	lbu	a5,s0,+0000002F
	addi	a4,zero,+000005D8
	c.li	s11,00000000
	add	a5,a5,a4
	c.add	a5,s4
	lbu	a5,a5,+00000056
	bne	a5,zero,000000002304AA3C

l2304A942:
	lbu	a5,s0,+00000030
	addi	a4,zero,+000001B0
	c.li	a3,00000002
	add	a5,a5,a4
	c.add	a5,s3
	lbu	a4,a5,+00000031
	bne	a4,a3,000000002304AA3C

l2304A95A:
	lw	a5,a5,+000000AC
	c.li	a3,00000001
	c.lw	a5,0(a1)
	lbu	a5,a1,+00000060
	beq	a5,a3,000000002304AB72

l2304A96A:
	c.beqz	a5,000000002304A976

l2304A96C:
	beq	a5,a4,000000002304AB98

l2304A970:
	c.li	a4,00000003
	bne	a5,a4,000000002304ABBC

l2304A976:
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
	jal	ra,000000002306CF80
	c.li	a5,00000004
	c.li	s11,00000004

l2304A99A:
	c.add	s11,a5
	beq	s11,zero,000000002304AA3C

l2304A9A0:
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
	bne	a4,zero,000000002304AC18

l2304A9D2:
	lbu	a5,s0,+00000030
	addi	a3,zero,+000001B0
	add	a5,a5,a3
	c.li	a3,00000002
	c.add	a5,s3
	lbu	a2,a5,+00000031
	bne	a2,a3,000000002304AA38

l2304A9EA:
	lw	a5,a5,+000000AC
	c.li	a0,00000001
	c.lw	a5,0(a3)
	c.lw	s0,108(a5)
	c.lw	a5,40(a1)
	lbu	a5,a3,+00000060
	beq	a5,a0,000000002304ABC2

l2304A9FE:
	c.beqz	a5,000000002304AA0A

l2304AA00:
	beq	a5,a2,000000002304AC04

l2304AA04:
	c.li	a2,00000003
	bne	a5,a2,000000002304AA24

l2304AA0A:
	lhu	a5,s0,+00000022
	sh	a5,s2,+00000000
	lbu	a5,a3,+00000061
	lhu	a4,s0,+00000024
	c.slli	a5,0E
	c.or	a5,a4
	sh	a5,s2,+00000002
	c.li	a4,00000004

l2304AA24:
	c.lw	a1,12(a5)
	lbu	a3,a3,+00000062
	lui	a2,00000100
	addi	a2,a2,-00000400
	c.and	a5,a2
	c.or	a5,a3
	c.sw	a1,12(a5)

l2304AA38:
	c.add	s2,a4
	c.mv	s8,s2

l2304AA3C:
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
	jal	ra,000000002306CF80
	beq	s11,zero,000000002304AACC

l2304AA68:
	lbu	a5,s0,+00000030
	addi	a4,zero,+000001B0
	add	a5,a5,a4
	c.add	s3,a5
	lw	a5,s3,+000000AC
	c.lw	a5,0(a1)
	c.li	a5,00000001
	lbu	a4,a1,+00000060
	bne	a4,a5,000000002304AACC

l2304AA86:
	lbu	a4,s0,+0000002E
	addi	a3,s0,+0000001A
	addi	a2,s0,+00000014
	addi	a1,a1,+00000050
	c.addi4spn	a0,00000020
	jal	ra,000000002304B43C
	c.addi	s6,00000008
	c.mv	a2,s6
	c.mv	a1,s8
	c.addi4spn	a0,00000020
	jal	ra,000000002304B4EE
	c.addi4spn	a0,00000020
	jal	ra,000000002304B632
	add	s1,s6,s8
	c.li	a5,00000000
	c.li	a4,00000008

l2304AAB6:
	c.addi4spn	a3,00000020
	c.add	a3,a5
	lbu	a2,a3,+00000000
	add	a3,s1,a5
	c.addi	a5,00000001
	sb	a2,a3,+00000000
	bne	a5,a4,000000002304AAB6

l2304AACC:
	c.lw	s0,108(a4)
	c.lw	a4,20(a5)
	c.addi	a5,FFFFFFFF
	c.add	a5,s5
	c.addi	s5,00000004
	c.sw	a4,24(a5)
	sw	s5,a4,+0000001C
	beq	s7,zero,000000002304AAEA

l2304AAE0:
	c.lwsp	s0,000000E4
	sw	s7,s0,+000002CC
	sw	a5,s0,+000002D0

l2304AAEA:
	lbu	a4,s0,+0000002E
	lui	a5,0002307C
	addi	a5,a5,+00000398
	c.add	a5,a4
	lbu	a1,a5,+00000000
	c.mv	a0,s0
	jal	ra,000000002304A376

l2304AB02:
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

l2304AB22:
	lui	a2,0004201C
	c.li	a4,00000008
	addi	a2,a2,-00000370
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
	c.j	000000002304A874

l2304AB5C:
	lhu	a4,s9,+00000000
	sh	a4,s1,+0000015C
	lhu	a4,s9,+00000002
	sh	a4,s1,+0000015E
	lhu	a5,s9,+00000004
	c.j	000000002304A926

l2304AB72:
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
	jal	ra,000000002306CF80
	c.li	a5,0000000C

l2304AB94:
	c.li	s11,00000008
	c.j	000000002304A99A

l2304AB98:
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
	jal	ra,000000002306CF80
	c.li	a5,00000008
	c.j	000000002304AB94

l2304ABBC:
	c.li	a5,00000000
	c.li	s11,00000000
	c.j	000000002304A99A

l2304ABC2:
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

l2304ABEC:
	sh	a5,s2,+00000002
	lhu	a5,s0,+00000024
	c.li	a4,00000008
	sh	a5,s2,+00000004
	lhu	a5,s0,+00000026
	sh	a5,s2,+00000006
	c.j	000000002304AA24

l2304AC04:
	lhu	a5,s0,+00000022
	c.lui	a4,00002000
	sh	a5,s2,+00000000
	lbu	a5,a3,+00000061
	c.slli	a5,0E
	c.or	a5,a4
	c.j	000000002304ABEC

l2304AC18:
	c.li	a4,00000000
	c.j	000000002304AA38

;; txl_frame_dump: 2304AC1C
;;   Called from:
;;     23050204 (in bl_fw_statistic_dump)
txl_frame_dump proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201C
	addi	a0,s0,-00000318
	c.swsp	ra,00000084
	jal	ra,000000002305009A
	c.beqz	a0,000000002304AC40

l2304AC30:
	lw	a4,s0,-00000318
	c.mv	a5,s0

l2304AC36:
	c.bnez	a4,000000002304AC48

l2304AC38:
	addi	a5,a5,-00000318
	c.lw	a5,8(a5)

l2304AC3E:
	c.bnez	a5,000000002304AC4C

l2304AC40:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2304AC48:
	c.lw	a4,0(a4)
	c.j	000000002304AC36

l2304AC4C:
	c.lw	a5,0(a5)
	c.j	000000002304AC3E

;; txl_hwdesc_init: 2304AC50
;;   Called from:
;;     230495F0 (in txl_cntrl_init)
txl_hwdesc_init proc
	c.jr	ra

;; txl_hwdesc_reset: 2304AC52
;;   Called from:
;;     23049F82 (in txl_reset)
txl_hwdesc_reset proc
	c.jr	ra

;; vif_mgmt_bcn_to_evt: 2304AC54
;;   Called from:
;;     2304B1AE (in vif_mgmt_bcn_recv)
vif_mgmt_bcn_to_evt proc
	c.lw	a0,64(a5)
	c.beqz	a5,000000002304AC5C

l2304AC58:
	jal	zero,000000002305C4AA

l2304AC5C:
	c.jr	ra

;; vif_mgmt_init: 2304AC5E
;;   Called from:
;;     2305D786 (in mm_init)
vif_mgmt_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004201D
	c.li	a2,00000014
	c.li	a1,00000000
	addi	a0,s1,-00000758
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	jal	ra,000000002306D1BC
	addi	a0,s1,-00000758
	jal	ra,000000002304FFB4
	lui	a0,0004201D
	addi	a0,a0,-00000750
	jal	ra,000000002304FFB4
	lui	s4,0004201C
	addi	a2,zero,+000005D8
	c.li	a1,00000000
	addi	a0,s4,-00000308
	jal	ra,000000002306D1BC
	lui	s2,0002304B
	addi	s0,s4,-00000308
	addi	s3,zero,+0000007F
	c.li	s5,00000004
	addi	s2,s2,-000003AC
	addi	a1,s4,-00000308
	addi	a0,s1,-00000758
	lui	s4,0004201C
	sb	s5,s0,+00000056
	sb	s3,s0,+00000059
	sb	s3,s0,+0000005A
	sw	s2,s0,+0000002C
	c.sw	s0,48(s0)
	jal	ra,000000002304FFBE
	c.li	a1,00000000
	addi	a0,s4,+000002D0
	addi	a2,zero,+000005D8
	jal	ra,000000002306D1BC
	addi	a5,s4,+000002D0
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
	addi	a1,s4,+000002D0
	addi	a0,s1,-00000758
	c.lwsp	s0,00000088
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002304FFBE

;; vif_mgmt_register: 2304AD1A
;;   Called from:
;;     23047502 (in mm_hw_config_handler)
vif_mgmt_register proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004201D
	lw	a5,s0,-00000758
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	beq	a5,zero,000000002304AE86

l2304AD34:
	addi	a5,s0,-00000758
	c.lw	a5,8(a5)
	c.mv	s1,a0
	c.mv	s3,a3
	c.mv	s2,a1
	addi	s4,s0,-00000758
	c.bnez	a5,000000002304ADEA

l2304AD46:
	jal	ra,000000002305DB76

l2304AD4A:
	addi	a0,s0,-00000758
	jal	ra,000000002305003A
	c.mv	s0,a0
	sb	s2,a0,+00000056
	c.li	a2,00000006
	c.mv	a1,s1
	addi	a0,a0,+00000050
	jal	ra,000000002306CF80
	lui	a5,0004201C
	addi	a5,a5,-00000308
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
	beq	s2,zero,000000002304AE44

l2304ADB4:
	c.li	a5,00000002
	beq	s2,a5,000000002304AE6A

l2304ADBA:
	lbu	a0,s0,+00000057
	jal	ra,0000000023049302
	lbu	a5,s0,+00000057
	lui	a0,0004201D
	addi	a0,a0,-00000750
	sb	a5,s3,+00000000
	c.mv	a1,s0
	jal	ra,000000002304FFBE
	c.li	a0,00000000

l2304ADDA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2304ADEA:
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
	bne	a5,a2,000000002304ADDA

l2304AE12:
	lbu	a5,s1,+00000005
	lbu	a1,s1,+00000004
	c.lw	a3,20(a2)
	c.lw	a3,28(a4)
	c.slli	a5,08
	c.or	a5,a1
	c.xor	a5,a2
	xori	a4,a4,-00000001
	c.and	a5,a4
	c.bnez	a5,000000002304ADDA

l2304AE2C:
	lui	a4,0004201E
	addi	a4,a4,+00000360
	c.lw	a4,4(a5)
	ori	a5,a5,+00000010
	c.sw	a4,4(a5)
	c.lw	a4,0(a4)
	c.or	a5,a4
	c.sw	a3,96(a5)
	c.j	000000002304AD4A

l2304AE44:
	lbu	a5,s4,+00000010
	c.sw	s0,32(s0)
	sb	zero,s0,+00000079
	c.addi	a5,00000001
	sb	a5,s4,+00000010
	lui	a5,0002305E
	addi	a5,a5,+0000043A
	c.sw	s0,28(a5)
	c.li	a5,FFFFFFFF
	sb	a5,s0,+00000060
	sb	zero,s0,+0000007A
	c.j	000000002304ADBA

l2304AE6A:
	lbu	a5,s4,+00000011
	c.bnez	a5,000000002304AE74

l2304AE70:
	jal	ra,000000002305DBF0

l2304AE74:
	lbu	a5,s4,+00000011
	c.mv	a0,s0
	c.addi	a5,00000001
	sb	a5,s4,+00000011
	jal	ra,000000002305E84A
	c.j	000000002304ADBA

l2304AE86:
	c.li	a0,00000001
	c.j	000000002304ADDA

;; vif_mgmt_unregister: 2304AE8A
;;   Called from:
;;     23047516 (in mm_hw_config_handler)
vif_mgmt_unregister proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	addi	s2,zero,+000005D8
	add	s2,a0,s2
	c.swsp	s0,0000000C
	lui	s0,0004201C
	c.swsp	s1,00000088
	addi	s1,s0,-00000308
	c.swsp	s5,00000080
	c.mv	s5,a0
	lui	a0,0004201D
	addi	a0,a0,-00000750
	c.swsp	s3,00000084
	c.add	s1,s2
	c.mv	a1,s1
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	jal	ra,0000000023050046
	lbu	a5,s1,+00000056
	lui	s4,0004201D
	addi	s0,s0,-00000308
	addi	s3,s4,-00000758
	c.beqz	a5,000000002304AF8C

l2304AECE:
	c.li	a4,00000002
	beq	a5,a4,000000002304AF98

l2304AED4:
	lbu	a4,s3,+00000010
	lbu	a5,s3,+00000011
	c.add	a5,a4
	c.li	a4,00000001
	bne	a5,a4,000000002304AF0A

l2304AEE4:
	lui	a4,0004201E
	addi	a4,a4,+00000360
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

l2304AF0A:
	addi	a5,zero,+000005D8
	add	a5,s5,a5
	c.add	a5,s0
	lbu	a4,a5,+00000056
	c.li	a5,00000002
	bne	a4,a5,000000002304AF22

l2304AF1E:
	jal	ra,00000000230497B6

l2304AF22:
	addi	a0,s2,+00000018
	c.add	a0,s0
	jal	ra,00000000230479AA
	addi	a0,s2,+00000028
	c.add	a0,s0
	jal	ra,00000000230479AA
	addi	a5,zero,+000005D8
	add	s5,s5,a5
	c.add	s0,s5
	lbu	a0,s0,+00000057
	jal	ra,0000000023049274
	c.li	a1,00000000
	c.mv	a0,s1
	addi	a2,zero,+000005D8
	jal	ra,000000002306D1BC
	c.li	a5,00000004
	sb	a5,s0,+00000056
	addi	a5,zero,+0000007F
	sb	a5,s0,+00000059
	sb	a5,s0,+0000005A
	lui	a5,0002304B
	addi	a5,a5,-000003AC
	c.sw	s0,44(a5)
	c.sw	s0,48(s1)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	tp,000000A8
	c.mv	a1,s1
	addi	a0,s4,-00000758
	c.lwsp	s4,00000024
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,000000002304FFBE

l2304AF8C:
	lbu	a5,s3,+00000010
	c.addi	a5,FFFFFFFF
	sb	a5,s3,+00000010
	c.j	000000002304AED4

l2304AF98:
	lbu	a5,s3,+00000011
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s3,+00000011
	c.bnez	a5,000000002304AED4

l2304AFA8:
	jal	ra,000000002305DC26
	c.j	000000002304AED4

;; vif_mgmt_add_key: 2304AFAE
;;   Called from:
;;     2305D962 (in mm_sec_machwkey_wr)
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
	lui	s5,0004201C
	c.mv	s2,a0
	addi	a2,zero,+00000048
	add	a3,s3,a3
	c.add	a3,s0
	addi	s4,a3,+00000420
	addi	s0,s5,-00000308
	c.add	s4,s0
	c.add	s0,a3
	sb	a1,s0,+00000482
	lbu	a5,a0,+00000028
	c.li	a1,00000000
	sb	a5,s0,+00000480
	lbu	a5,a0,+00000000
	c.mv	a0,s4
	sb	a5,s0,+00000481
	jal	ra,000000002306D1BC
	lbu	a4,s0,+00000480
	c.li	a3,00000001
	addi	a5,s5,-00000308
	beq	a4,a3,000000002304B090

l2304B018:
	c.beqz	a4,000000002304B020

l2304B01A:
	c.li	a3,00000003
	bne	a4,a3,000000002304B0BE

l2304B020:
	lui	a4,0004200E
	addi	a4,a4,-00000370
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

l2304B05E:
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

l2304B090:
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
	c.j	000000002304B05E

l2304B0BE:
	c.li	a3,00000000
	c.li	a4,00000000
	sw	a3,s0,+00000468
	sw	a4,s0,+0000046C
	c.j	000000002304B05E

;; vif_mgmt_del_key: 2304B0CC
;;   Called from:
;;     2305DB06 (in mm_sec_machwkey_del)
vif_mgmt_del_key proc
	addi	a5,zero,+00000068
	add	a1,a1,a5
	add	a5,a0,a1
	sb	zero,a5,+00000483
	lw	a5,a0,+000005C0
	addi	a1,a1,+00000420
	c.add	a1,a0
	bne	a5,a1,000000002304B11A

l2304B0EA:
	sw	zero,a0,+000005C0
	addi	a4,a0,+00000483
	c.li	a5,00000000
	c.li	a3,00000004

l2304B0F6:
	lbu	a2,a4,+00000000
	c.beqz	a2,000000002304B110

l2304B0FC:
	addi	a4,zero,+00000068
	add	a5,a5,a4
	addi	a5,a5,+00000420
	c.add	a5,a0
	sw	a5,a0,+000005C0
	c.jr	ra

l2304B110:
	c.addi	a5,00000001
	addi	a4,a4,+00000068
	bne	a5,a3,000000002304B0F6

l2304B11A:
	c.jr	ra

;; vif_mgmt_send_postponed_frame: 2304B11C
;;   Called from:
;;     2304B15E (in vif_mgmt_reset)
;;     2305BCA8 (in chan_pre_switch_channel)
vif_mgmt_send_postponed_frame proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lw	s0,a0,+00000350
	c.mv	s1,a0

l2304B12A:
	c.bnez	s0,000000002304B136

l2304B12C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2304B136:
	c.mv	a1,s0
	c.li	a2,00000000
	c.mv	a0,s1
	jal	ra,000000002304911E
	c.lw	s0,0(s0)
	c.j	000000002304B12A

;; vif_mgmt_reset: 2304B144
;;   Called from:
;;     2305EEE0 (in bl_reset_evt)
vif_mgmt_reset proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004201D
	c.swsp	s0,00000004
	lw	s0,a5,-00000750
	c.swsp	ra,00000084

l2304B152:
	c.bnez	s0,000000002304B15C

l2304B154:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2304B15C:
	c.mv	a0,s0
	jal	ra,000000002304B11C
	c.lw	s0,0(s0)
	c.j	000000002304B152

;; vif_mgmt_bcn_to_prog: 2304B166
;;   Called from:
;;     2305D886 (in mm_tbtt_evt)
;;     2305E4A4 (in mm_sta_tbtt)
vif_mgmt_bcn_to_prog proc
	lui	a5,00044B00
	lw	a1,a5,+00000120
	c.lui	a5,00002000
	addi	a5,a5,+00000710
	c.add	a1,a5
	addi	a0,a0,+00000028
	jal	zero,00000000230478F4

;; vif_mgmt_bcn_recv: 2304B17E
;;   Called from:
;;     23048768 (in rxl_cntrl_evt)
vif_mgmt_bcn_recv proc
	lui	a5,0004201A
	addi	a5,a5,+000007B8
	lbu	a4,a5,+00000000
	c.beqz	a4,000000002304B1B2

l2304B18C:
	c.lw	a5,4(a5)
	c.andi	a5,00000008
	c.bnez	a5,000000002304B1B2

l2304B192:
	c.lw	a0,4(a5)
	c.bnez	a5,000000002304B1B2

l2304B196:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	addi	a0,a0,+00000028
	c.swsp	ra,00000084
	jal	ra,00000000230479AA
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002304AC54

l2304B1B2:
	c.jr	ra

;; vif_mgmt_set_ap_bcn_int: 2304B1B4
;;   Called from:
;;     230475A8 (in mm_hw_config_handler)
vif_mgmt_set_ap_bcn_int proc
	sh	a1,a0,+0000033E
	csrrci	zero,mstatus,00000008
	lui	a5,0004201D
	addi	a4,a5,-00000758
	lbu	a2,a4,+00000011
	c.li	a3,00000001
	addi	a5,a5,-00000758
	bgeu	a3,a2,000000002304B228

l2304B1D2:
	lbu	a3,a5,+00000012
	addi	a2,zero,+000005D8
	lui	a4,0004201C
	add	a3,a3,a2
	addi	a4,a4,-00000308
	c.add	a4,a3
	lhu	a4,a4,+0000033E
	bgeu	a1,a4,000000002304B1FA

l2304B1F0:
	lbu	a4,a0,+00000057
	sb	a4,a5,+00000012
	c.mv	a4,a1

l2304B1FA:
	c.lw	a5,8(a5)
	c.li	a2,00000001

l2304B1FE:
	c.bnez	a5,000000002304B214

l2304B200:
	lui	a3,00044B00
	c.lw	a3,100(a5)
	c.lui	a2,FFFF0000
	c.and	a5,a2
	c.or	a5,a4
	c.sw	a3,100(a5)
	csrrsi	zero,mstatus,00000008
	c.jr	ra

l2304B214:
	lhu	a3,a5,+0000033E
	sb	a2,a5,+00000341
	srl	a3,a3,a4
	sb	a3,a5,+00000340
	c.lw	a5,0(a5)
	c.j	000000002304B1FE

l2304B228:
	lbu	a5,a0,+00000057
	sb	a5,a4,+00000012
	addi	a5,zero,+00000101
	sh	a5,a0,+00000340
	c.mv	a4,a1
	c.j	000000002304B200

;; vif_mgmt_switch_channel: 2304B23C
;;   Called from:
;;     2305E468 (in mm_sta_tbtt)
;;     2305EE22 (in mm_bcn_transmitted)
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
	jal	ra,0000000023050474
	c.mv	s1,a0
	lbu	a0,s0,+00000057
	c.li	a5,FFFFFFFF
	sb	a5,sp,+0000000F
	jal	ra,000000002305C84E
	lhu	a1,s0,+000005CA
	lbu	a0,s0,+000005C8
	addi	s2,s0,+000005C8
	c.jal	000000002304B3A2
	lhu	a5,s0,+000005CC
	sw	a0,s0,+000003A4
	c.li	a4,00000004
	sh	a5,s0,+000003A8
	lhu	a5,s0,+000005CE
	sh	a5,s0,+000003AA
	lbu	a5,s0,+000005C9
	sb	a5,s0,+000003DB
	bne	a5,a4,000000002304B298

l2304B296:
	c.li	a5,00000003

l2304B298:
	sb	a5,s0,+000003DA
	c.beqz	a0,000000002304B2E2

l2304B29E:
	lb	a5,a0,+00000004
	addi	a1,sp,+0000000F
	c.mv	a0,s2
	sb	a5,s0,+000005D0
	jal	ra,000000002305C242
	lbu	a1,sp,+0000000F
	sb	a0,s1,+00000001
	sb	a1,s1,+00000002
	lbu	a5,s0,+00000056
	c.beqz	a5,000000002304B2E8

l2304B2C2:
	c.li	a4,00000002
	bne	a5,a4,000000002304B332

l2304B2C8:
	sb	zero,s0,+00000347
	c.bnez	a0,000000002304B332

l2304B2CE:
	lbu	a0,s0,+00000057
	jal	ra,000000002305C72C
	lui	a5,0004201E
	c.li	a4,00000001
	sb	a4,a5,+00000395
	c.j	000000002304B332

l2304B2E2:
	lbu	a5,zero,+00000004
	c.ebreak

l2304B2E8:
	sb	zero,s0,+00000079
	c.bnez	a0,000000002304B344

l2304B2EE:
	lbu	a0,s0,+00000057
	lbu	s2,s0,+00000060
	jal	ra,000000002305C72C
	addi	a0,s0,+00000028
	jal	ra,00000000230479AA
	addi	a4,zero,+000001B0
	add	s2,s2,a4
	lui	a5,00044B00
	lw	a1,a5,+00000120
	lui	a5,0004201B
	addi	a5,a5,-000007F8
	addi	a0,s0,+00000018
	c.add	a5,s2
	c.lw	a5,4(a5)
	c.add	a1,a5
	jal	ra,00000000230478F4
	c.li	a5,00000001
	sb	zero,s0,+00000074
	sb	a5,s0,+0000007A

l2304B332:
	c.mv	a0,s1
	jal	ra,00000000230504E0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2304B344:
	c.mv	a0,s0
	jal	ra,000000002305E08C
	c.j	000000002304B332

;; vif_mgmt_get_first_ap_inf: 2304B34C
;;   Called from:
;;     2304BF56 (in rxu_cntrl_frame_handle)
;;     2304FA2C (in apm_probe_req_handler)
vif_mgmt_get_first_ap_inf proc
	lui	a5,0004201D
	addi	a5,a5,-00000758
	lbu	a4,a5,+00000011
	c.li	a0,00000000
	c.beqz	a4,000000002304B362

l2304B35C:
	c.lw	a5,8(a0)
	c.li	a5,00000002

l2304B360:
	c.bnez	a0,000000002304B364

l2304B362:
	c.jr	ra

l2304B364:
	lbu	a4,a0,+00000056
	beq	a4,a5,000000002304B362

l2304B36C:
	c.lw	a0,0(a0)
	c.j	000000002304B360

;; me_init: 2304B370
;;   Called from:
;;     2304710A (in mm_reset_req_handler)
;;     2305EE82 (in bl_init)
me_init proc
	lui	a0,0004201D
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+00000134
	c.li	a1,00000000
	addi	a0,a0,-00000744
	c.swsp	ra,00000084
	jal	ra,000000002306D1BC
	c.li	a1,00000000
	c.li	a0,00000005
	jal	ra,000000002305060E
	jal	ra,000000002304C84A
	jal	ra,000000002304F098
	jal	ra,000000002304D63A
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002305F9AA

;; me_freq_to_chan_ptr: 2304B3A2
;;   Called from:
;;     2304B272 (in vif_mgmt_switch_channel)
;;     2304CB36 (in scanu_frame_handler)
;;     2304CFC2 (in scanu_frame_handler)
;;     230645BC (in apm_start_req_handler)
me_freq_to_chan_ptr proc
	lui	a5,0004201D
	addi	a5,a5,-00000744
	c.beqz	a0,000000002304B3C8

l2304B3AC:
	lbu	a4,a5,+0000012D
	lui	a5,0004201D
	addi	a5,a5,-000006C0
	c.j	000000002304B3D4

l2304B3BA:
	c.mv	a0,a5
	c.addi	a5,00000006
	lhu	a3,a5,-00000006
	bne	a3,a1,000000002304B3DC

l2304B3C6:
	c.jr	ra

l2304B3C8:
	lbu	a4,a5,+0000012C
	lui	a5,0004201D
	addi	a5,a5,-00000714

l2304B3D4:
	c.li	a3,00000006
	add	a4,a4,a3
	c.add	a4,a5

l2304B3DC:
	bne	a5,a4,000000002304B3BA

l2304B3E0:
	c.li	a0,00000000
	c.jr	ra

;; michael_block: 2304B3E4
;;   Called from:
;;     2304B4C6 (in me_mic_init)
;;     2304B4CE (in me_mic_init)
;;     2304B4D6 (in me_mic_init)
;;     2304B4EA (in me_mic_init)
;;     2304B572 (in me_mic_calc)
;;     2304B5E6 (in me_mic_calc)
;;     2304B628 (in me_mic_calc)
;;     2304B674 (in me_mic_end)
;;     2304B684 (in me_mic_end)
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

;; me_mic_init: 2304B43C
;;   Called from:
;;     2304AA98 (in txl_frame_send_eapol_frame)
;;     2304C370 (in rxu_cntrl_frame_handle)
;;     2304EDB0 (in txu_cntrl_tkip_mic_append)
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
	bne	a4,a3,000000002304B4B2

l2304B4B0:
	c.li	s3,00000000

l2304B4B2:
	c.lw	a1,0(a4)
	c.mv	a0,s1
	c.sw	s1,0(a4)
	c.lw	a1,4(a4)
	c.mv	a1,a5
	sw	zero,s1,+00000008
	c.sw	s1,4(a4)
	sb	zero,s1,+0000000C
	jal	ra,000000002304B3E4
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002304B3E4
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002304B3E4
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.mv	a1,s3
	c.mv	a0,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002304B3E4

;; me_mic_calc: 2304B4EE
;;   Called from:
;;     2304AAA4 (in txl_frame_send_eapol_frame)
;;     2304C3C2 (in rxu_cntrl_frame_handle)
;;     2304EDC4 (in txu_cntrl_tkip_mic_append)
;;     2304EE10 (in txu_cntrl_tkip_mic_append)
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
	bgeu	a2,s0,000000002304B546

l2304B532:
	c.li	a5,00000004
	c.sub	a5,a2
	c.slli	a5,03
	c.li	a4,FFFFFFFF
	srl	a5,a4,a5
	c.and	a1,a5
	andi	s0,a2,+000000FF
	c.li	s8,00000000

l2304B546:
	slli	s1,a3,00000003
	sll	s1,a1,s1
	c.add	s0,a3
	c.li	a5,00000003
	c.or	s1,a0
	bgeu	a5,s0,000000002304B578

l2304B558:
	c.li	a4,00000004
	c.sub	a4,a3
	c.slli	a4,03
	addi	a5,zero,+00000020
	c.li	s2,00000000
	beq	a4,a5,000000002304B56C

l2304B568:
	srl	s2,a1,a4

l2304B56C:
	c.mv	a1,s1
	c.mv	a0,s3
	c.addi	s0,FFFFFFFC
	jal	ra,000000002304B3E4
	c.mv	s1,s2

l2304B578:
	c.li	s2,00000004
	sub	s2,s2,s0
	srli	s6,s8,00000002
	slli	s5,s0,00000003
	c.slli	s2,03
	c.mv	a4,s4
	c.li	s7,00000000
	addi	s9,zero,+00000020

l2304B590:
	bne	s6,s7,000000002304B610

l2304B594:
	c.slli	s6,02
	andi	a5,s8,-00000004
	c.add	s4,s6
	bgeu	a5,s8,000000002304B5EC

l2304B5A0:
	andi	a5,s8,+00000003
	c.li	a4,00000004
	c.sub	a4,a5
	c.slli	a4,03
	addi	a1,zero,+00000020
	lw	a3,s4,+00000000
	c.li	a2,00000000
	beq	a4,a1,000000002304B5BE

l2304B5B8:
	c.li	a2,FFFFFFFF
	srl	a2,a2,a4

l2304B5BE:
	and	a4,a3,a2
	c.add	s0,a5
	sll	s5,a4,s5
	c.li	a5,00000003
	or	s1,s1,s5
	bgeu	a5,s0,000000002304B5EC

l2304B5D2:
	addi	a5,zero,+00000020
	c.li	s4,00000000
	beq	s2,a5,000000002304B5E0

l2304B5DC:
	srl	s4,a4,s2

l2304B5E0:
	c.mv	a1,s1
	c.mv	a0,s3
	c.addi	s0,FFFFFFFC
	jal	ra,000000002304B3E4
	c.mv	s1,s4

l2304B5EC:
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

l2304B610:
	c.lw	a4,0(a5)
	addi	s10,a4,+00000004
	sll	a1,a5,s5
	c.or	a1,s1
	c.li	s1,00000000
	beq	s2,s9,000000002304B626

l2304B622:
	srl	s1,a5,s2

l2304B626:
	c.mv	a0,s3
	jal	ra,000000002304B3E4
	c.addi	s7,00000001
	c.mv	a4,s10
	c.j	000000002304B590

;; me_mic_end: 2304B632
;;   Called from:
;;     2304AAAA (in txl_frame_send_eapol_frame)
;;     2304C454 (in rxu_cntrl_frame_handle)
;;     2304EDD4 (in txu_cntrl_tkip_mic_append)
;;     2304EE1E (in txu_cntrl_tkip_mic_append)
me_mic_end proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lbu	a4,a0,+0000000C
	c.li	a5,00000003
	c.mv	s0,a0
	c.lw	a0,8(s1)
	bgeu	a5,a4,000000002304B660

l2304B648:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+0000013E
	addi	a1,a1,+00000388
	addi	a0,a0,-0000045C
	jal	ra,0000000023054FF4

l2304B660:
	lbu	a1,s0,+0000000C
	c.mv	a0,s0
	slli	a5,a1,00000003
	addi	a1,zero,+0000005A
	sll	a1,a1,a5
	c.or	a1,s1
	jal	ra,000000002304B3E4
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,000000002304B3E4

;; rxu_cntrl_machdr_len_get: 2304B688
;;   Called from:
;;     2304B838 (in rxu_mpdu_upload_and_indicate.constprop.11)
;;     2304BE70 (in rxu_cntrl_frame_handle)
rxu_cntrl_machdr_len_get proc
	andi	a3,a0,+00000300
	addi	a4,zero,+00000300
	c.li	a5,00000018
	bne	a3,a4,000000002304B698

l2304B696:
	c.li	a5,0000001E

l2304B698:
	andi	a4,a0,+000000FC
	addi	a3,zero,+00000088
	bne	a4,a3,000000002304B6AA

l2304B6A4:
	c.addi	a5,00000002
	andi	a5,a5,+000000FF

l2304B6AA:
	c.slli	a0,10
	c.srai	a0,00000010
	bge	a0,zero,000000002304B6B8

l2304B6B2:
	c.addi	a5,00000004
	andi	a5,a5,+000000FF

l2304B6B8:
	c.mv	a0,a5
	c.jr	ra

;; rxu_cntrl_protected_handle: 2304B6BC
;;   Called from:
;;     2304C0BA (in rxu_cntrl_frame_handle)
;;     2304C174 (in rxu_cntrl_frame_handle)
rxu_cntrl_protected_handle proc
	lui	a5,0004201D
	addi	a4,a5,-00000520
	lbu	a3,a4,+00000008
	andi	a6,a1,+00000400
	c.li	a2,00000018
	c.andi	a1,0000001C
	c.add	a0,a3
	addi	a5,a5,-00000520
	beq	a1,a2,000000002304B766

l2304B6DA:
	c.li	a2,0000001C
	beq	a1,a2,000000002304B6EA

l2304B6E0:
	c.li	a5,00000014
	beq	a1,a5,000000002304B75E

l2304B6E6:
	c.li	a0,00000000
	c.jr	ra

l2304B6EA:
	beq	a6,zero,000000002304B744

l2304B6EE:
	lhu	a4,a0,+00000002
	addi	a2,zero,+00000068
	addi	a1,zero,+000005D8
	c.srli	a4,0000000E
	add	a4,a4,a2
	lbu	a2,a5,+0000000A
	add	a2,a2,a1
	addi	a2,a2,+00000420
	c.add	a4,a2
	lui	a2,0004201C
	addi	a2,a2,-00000308

l2304B716:
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

l2304B740:
	c.li	a0,00000001
	c.jr	ra

l2304B744:
	lbu	a4,a5,+00000009
	addi	a2,zero,+000001B0
	add	a4,a4,a2
	lui	a2,0004201B
	addi	a2,a2,-000007F8
	addi	a4,a4,+00000040
	c.j	000000002304B716

l2304B75E:
	c.addi	a3,00000004
	sb	a3,a4,+00000008
	c.j	000000002304B740

l2304B766:
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
	beq	a6,zero,000000002304B7CC

l2304B79E:
	lhu	a4,a0,+00000002
	addi	a3,zero,+00000068
	addi	a2,zero,+000005D8
	c.srli	a4,0000000E
	add	a4,a4,a3
	lbu	a3,a5,+0000000A
	add	a3,a3,a2
	addi	a3,a3,+00000420
	c.add	a4,a3
	lui	a3,0004201C
	addi	a3,a3,-00000308

l2304B7C6:
	c.add	a4,a3
	c.sw	a5,32(a4)
	c.j	000000002304B740

l2304B7CC:
	lbu	a4,a5,+00000009
	addi	a3,zero,+000001B0
	add	a4,a4,a3
	lui	a3,0004201B
	addi	a3,a3,-000007F8
	addi	a4,a4,+00000040
	c.j	000000002304B7C6

;; rxu_mpdu_upload_and_indicate.constprop.11: 2304B7E6
;;   Called from:
;;     2304BAB0 (in rxu_mgt_frame_check)
;;     2304C00E (in rxu_cntrl_frame_handle)
rxu_mpdu_upload_and_indicate.constprop.11 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004201D
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.swsp	s5,00000080
	addi	s2,s1,-00000520
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
	addi	s1,s1,-00000520
	lw	s5,a5,+00000008
	lw	a5,s5,+00000018
	lbu	a0,a5,+00000000
	lbu	a5,a5,+00000001
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002304B688
	lbu	s4,s2,+00000008
	sub	s2,s4,a0
	andi	s2,s2,+000000FF
	beq	s2,zero,000000002304B8B6

l2304B84C:
	andi	a5,s2,+00000001
	c.mv	s3,a0
	c.beqz	a5,000000002304B86C

l2304B854:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+00000167
	addi	a1,a1,+00000388
	addi	a0,a0,-00000420
	jal	ra,0000000023054FF6

l2304B86C:
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

l2304B892:
	bgeu	a5,a2,000000002304B906

l2304B896:
	c.lw	s0,4(a5)
	lhu	a4,a5,+0000001C
	sub	a4,a4,s2
	sh	a4,a5,+0000001C
	lbu	a5,s1,+00000008
	sb	s2,s1,+00000032
	sub	a5,a5,s4
	c.add	s3,a5
	sb	s3,s1,+00000008

l2304B8B6:
	lui	a5,0004201D
	c.mv	a0,s0
	sw	zero,a5,+00000B58
	jal	ra,0000000023048326
	csrrci	zero,mstatus,00000008
	c.lw	s1,72(a4)
	c.lw	s0,4(a5)
	c.li	a3,00000003
	sb	a3,s0,+0000001C
	c.sw	s0,20(a4)
	lhu	a5,a5,+0000001C
	c.sw	s0,24(a5)
	csrrci	zero,mstatus,00000008
	lui	a0,0004201D
	c.mv	a1,s0
	addi	a0,a0,-000004E0
	jal	ra,000000002304FFBE
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

l2304B906:
	c.addi	a5,FFFFFFFE
	lhu	a3,a5,+00000002
	c.addi	a4,FFFFFFFE
	sh	a3,a4,+00000002
	c.j	000000002304B892

;; rxu_mgt_frame_check: 2304B914
;;   Called from:
;;     2304C07A (in rxu_cntrl_frame_handle)
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
	bne	a5,zero,000000002304BAB4

l2304B952:
	lbu	a5,s0,+00000016
	c.li	s4,00000001
	c.andi	a5,0000000F
	bne	a5,zero,000000002304BC58

l2304B95E:
	addi	a5,zero,+000000FF
	bne	a1,a5,000000002304BA30

l2304B966:
	lw	a3,s5,+00000040
	andi	a3,a3,+00000600
	c.bnez	a3,000000002304BA28

l2304B970:
	lui	a5,0004201D
	lw	a3,a5,-00000750
	addi	a5,zero,+000000B0
	beq	a4,a5,000000002304B984

l2304B980:
	c.li	a5,00000001
	c.bnez	a4,000000002304B9D0

l2304B984:
	lbu	a2,s0,+00000004
	lbu	a4,s0,+00000010
	c.li	a5,00000001
	bne	a2,a4,000000002304B9D0

l2304B992:
	lbu	a2,s0,+00000005
	lbu	a4,s0,+00000011
	bne	a2,a4,000000002304B9D0

l2304B99E:
	lbu	a2,s0,+00000006
	lbu	a4,s0,+00000012
	bne	a2,a4,000000002304B9D0

l2304B9AA:
	lbu	a2,s0,+00000007
	lbu	a4,s0,+00000013
	bne	a2,a4,000000002304B9D0

l2304B9B6:
	lbu	a2,s0,+00000008
	lbu	a4,s0,+00000014
	bne	a2,a4,000000002304B9D0

l2304B9C2:
	lbu	a5,s0,+00000009
	lbu	a4,s0,+00000015
	c.sub	a5,a4
	sltu	a5,zero,a5

l2304B9D0:
	c.li	a2,00000002
	c.j	000000002304BAC0

l2304B9D4:
	lbu	a6,a3,+00000050
	lbu	a4,s0,+00000004
	bne	a6,a4,000000002304BABE

l2304B9E0:
	lbu	a6,a3,+00000051
	lbu	a4,s0,+00000005
	bne	a6,a4,000000002304BABE

l2304B9EC:
	lbu	a6,a3,+00000052
	lbu	a4,s0,+00000006
	bne	a6,a4,000000002304BABE

l2304B9F8:
	lbu	a6,a3,+00000053
	lbu	a4,s0,+00000007
	bne	a6,a4,000000002304BABE

l2304BA04:
	lbu	a6,a3,+00000054
	lbu	a4,s0,+00000008
	bne	a6,a4,000000002304BABE

l2304BA10:
	lbu	a6,a3,+00000055
	lbu	a4,s0,+00000009
	bne	a6,a4,000000002304BABE

l2304BA1C:
	lbu	a4,a3,+00000056
	c.bnez	a4,000000002304BAB8

l2304BA22:
	c.beqz	a5,000000002304BABE

l2304BA24:
	lbu	a5,a3,+00000057

l2304BA28:
	lui	a4,0004201D
	sb	a5,a4,+00000AEA

l2304BA30:
	c.swsp	a0,00000084
	c.mv	s2,a1
	addi	a0,s5,+00000028
	addi	a1,sp,+00000017
	jal	ra,000000002305B0E4
	lbu	s8,s0,+00000001
	lbu	a5,s0,+00000000
	lui	s7,0004201D
	c.slli	s8,08
	or	s8,s8,a5
	addi	a5,s7,-00000520
	lbu	s9,a5,+00000008
	lbu	a5,a5,+0000000A
	addi	a4,zero,+000000FF
	lb	s11,sp,+00000017
	lhu	s3,s5,+0000001C
	addi	s7,s7,-00000520
	beq	a5,a4,000000002304BAC6

l2304BA72:
	addi	a4,zero,+000005D8
	add	a5,a5,a4
	lui	a4,0004201C
	addi	a4,a4,-00000308
	add	s10,a5,a4
	lbu	a4,s10,+00000056

l2304BA8A:
	andi	s1,s8,+000000FC
	addi	a3,zero,+00000050
	beq	s1,a3,000000002304BB70

l2304BA96:
	bltu	a3,s1,000000002304BB06

l2304BA9A:
	addi	a3,zero,+00000020
	beq	s1,a3,000000002304BAFC

l2304BAA2:
	bltu	a3,s1,000000002304BAEC

l2304BAA6:
	c.beqz	s1,000000002304BAFC

l2304BAA8:
	c.li	a5,00000010
	beq	s1,a5,000000002304BB68

l2304BAAE:
	c.lwsp	a2,00000044
	jal	ra,000000002304B7E6

l2304BAB4:
	c.li	s4,00000001
	c.j	000000002304BC58

l2304BAB8:
	bne	a4,a2,000000002304BABE

l2304BABC:
	c.beqz	a5,000000002304BA24

l2304BABE:
	c.lw	a3,0(a3)

l2304BAC0:
	c.bnez	a3,000000002304B9D4

l2304BAC2:
	c.mv	a5,a1
	c.j	000000002304BA28

l2304BAC6:
	beq	s2,a5,000000002304BAE6

l2304BACA:
	addi	a4,zero,+000001B0
	add	a4,s2,a4
	lui	a5,0004201B
	addi	a5,a5,-000007F8
	c.add	a5,a4
	lbu	a5,a5,+0000001A
	sb	a5,s7,+0000000A
	c.j	000000002304BA72

l2304BAE6:
	c.li	a4,00000004
	c.li	s10,00000000
	c.j	000000002304BA8A

l2304BAEC:
	addi	a3,zero,+00000030
	beq	s1,a3,000000002304BB68

l2304BAF4:
	addi	a4,zero,+00000040
	bne	s1,a4,000000002304BAAE

l2304BAFC:
	c.mv	a0,s10
	jal	ra,000000002304F8CE
	c.bnez	a0,000000002304BBCA

l2304BB04:
	c.j	000000002304BAAE

l2304BB06:
	addi	a3,zero,+000000B0
	beq	s1,a3,000000002304BB2C

l2304BB0E:
	bltu	a3,s1,000000002304BB30

l2304BB12:
	addi	a3,zero,+00000080
	beq	s1,a3,000000002304BB7A

l2304BB1A:
	addi	a3,zero,+000000A0
	bne	s1,a3,000000002304BAAE

l2304BB22:
	addi	a3,zero,+000000FF
	c.li	s4,00000000
	beq	s2,a3,000000002304BC58

l2304BB2C:
	c.beqz	a4,000000002304BB6A

l2304BB2E:
	c.j	000000002304BAFC

l2304BB30:
	addi	a3,zero,+000000C0
	beq	s1,a3,000000002304BB22

l2304BB38:
	addi	a5,zero,+000000D0
	bne	s1,a5,000000002304BAAE

l2304BB40:
	addi	a5,zero,+000000FF
	add	a3,s0,s9
	beq	s2,a5,000000002304BAAE

l2304BB4C:
	lbu	a5,a3,+00000000
	c.li	a4,00000007
	beq	a5,a4,000000002304BBEC

l2304BB56:
	c.li	a4,00000008
	beq	a5,a4,000000002304BC78

l2304BB5C:
	c.li	a4,00000003
	bne	a5,a4,000000002304BAAE

l2304BB62:
	c.li	s4,00000008

l2304BB64:
	c.li	s6,00000000
	c.j	000000002304BBCE

l2304BB68:
	c.bnez	a4,000000002304BAAE

l2304BB6A:
	c.li	s6,00000000
	c.li	s4,00000006
	c.j	000000002304BBCE

l2304BB70:
	beq	s10,zero,000000002304BAAE

l2304BB74:
	c.li	s6,00000001
	c.li	s4,00000004
	c.j	000000002304BBCE

l2304BB7A:
	c.li	a0,00000004
	jal	ra,000000002305070E
	c.li	a4,00000001
	bne	a0,a4,000000002304BBAE

l2304BB86:
	c.li	s6,00000001
	c.li	s4,00000004

l2304BB8A:
	addi	a4,zero,+000000FF
	beq	s2,a4,000000002304BBB6

l2304BB92:
	lbu	a5,s10,+00000058
	c.beqz	a5,000000002304BBA4

l2304BB98:
	lbu	a0,s7,+0000000A
	c.mv	a2,s0
	c.mv	a1,s3
	jal	ra,0000000023061D54

l2304BBA4:
	addi	a5,zero,+000000FF
	bne	s4,a5,000000002304BBCE

l2304BBAC:
	c.j	000000002304BAAE

l2304BBAE:
	c.li	s6,00000000
	addi	s4,zero,+000000FF
	c.j	000000002304BB8A

l2304BBB6:
	c.li	a0,00000004
	jal	ra,000000002305070E
	c.li	a4,00000001
	beq	a0,a4,000000002304BBA4

l2304BBC2:
	c.mv	a0,s10
	jal	ra,000000002304F8CE
	c.beqz	a0,000000002304BBA4

l2304BBCA:
	c.li	s6,00000001
	c.li	s4,00000007

l2304BBCE:
	addi	a3,s3,+0000001C
	c.slli	a3,10
	c.lui	a0,00003000
	c.srli	a3,00000010
	c.li	a2,0000000B
	c.mv	a1,s4
	addi	a0,a0,-00000400
	jal	ra,0000000023050474
	c.mv	s10,a0
	c.bnez	a0,000000002304BCB4

l2304BBE8:
	c.li	s4,00000000
	c.j	000000002304BC58

l2304BBEC:
	lbu	a5,a3,+00000001
	c.beqz	a5,000000002304BC2E

l2304BBF2:
	c.li	a4,00000001
	bne	a5,a4,000000002304BAAE

l2304BBF8:
	addi	a4,zero,+000001B0
	add	a4,s2,a4
	lui	a5,0004201B
	addi	a5,a5,-000007F8
	c.li	s4,00000000
	c.add	a5,a4
	lw	a5,a5,+000000EC
	c.andi	a5,00000002
	c.beqz	a5,000000002304BC58

l2304BC14:
	lbu	a5,a3,+00000002
	addi	a2,zero,+000000FF
	c.andi	a5,00000001
	c.beqz	a5,000000002304BC22

l2304BC20:
	c.li	a2,00000000

l2304BC22:
	addi	a1,zero,+000000FF

l2304BC26:
	c.mv	a0,s2
	jal	ra,0000000023061F76
	c.j	000000002304BC58

l2304BC2E:
	addi	a4,zero,+000001B0
	add	a4,s2,a4
	lui	a5,0004201B
	addi	a5,a5,-000007F8
	c.li	s4,00000000
	c.add	a5,a4
	lw	a5,a5,+000000EC
	c.andi	a5,00000002
	c.beqz	a5,000000002304BC58

l2304BC4A:
	lbu	a1,a3,+00000002
	c.li	a5,00000001
	addi	a2,zero,+000000FF
	bgeu	a5,a1,000000002304BC26

l2304BC58:
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

l2304BC78:
	sub	a5,s3,s9
	c.li	a4,00000003
	c.li	s4,00000000
	bge	a4,a5,000000002304BC58

l2304BC84:
	lbu	a4,s7,+0000000A
	addi	a5,zero,+000000FF
	beq	a4,a5,000000002304BAAE

l2304BC90:
	addi	a2,zero,+000005D8
	add	a4,a4,a2
	lui	a5,0004201C
	addi	a5,a5,-00000308
	c.add	a5,a4
	lbu	a5,a5,+00000056
	lbu	a4,a3,+00000001
	c.or	a5,a4
	bne	a5,zero,000000002304BAAE

l2304BCB0:
	c.li	s4,00000006
	c.j	000000002304BB64

l2304BCB4:
	c.li	a1,00000000
	c.addi4spn	a0,00000018
	jal	ra,0000000023055E82
	bne	s6,zero,000000002304BCEA

l2304BCC0:
	andi	a5,s9,+00000001
	c.beqz	a5,000000002304BCDE

l2304BCC6:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+0000064D
	addi	a1,a1,+00000388
	addi	a0,a0,-0000043C
	jal	ra,0000000023054FF6

l2304BCDE:
	sub	s3,s3,s9
	c.slli	s3,10
	srli	s3,s3,00000010
	c.add	s0,s9

l2304BCEA:
	sh	s3,s10,+00000000
	c.addi	s3,00000003
	andi	s3,s3,-00000004
	c.li	a5,00000000

l2304BCF6:
	bne	s3,a5,000000002304BD54

l2304BCFA:
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
	bne	s4,a5,000000002304BD4C

l2304BD2E:
	c.bnez	s1,000000002304BD4C

l2304BD30:
	lw	a5,s5,+00000020
	sw	a5,s10,+00000010
	lw	a5,s5,+00000024
	sw	a5,s10,+00000014
	lw	a5,s5,+00000028
	c.srli	a5,0000000C
	c.andi	a5,0000000F
	sb	a5,s10,+0000001B

l2304BD4C:
	c.mv	a0,s10
	jal	ra,00000000230504E0
	c.j	000000002304BBE8

l2304BD54:
	add	a4,s0,a5
	c.lw	a4,0(a3)
	add	a4,s10,a5
	c.addi	a5,00000004
	c.sw	a4,28(a3)
	c.j	000000002304BCF6

;; rxu_cntrl_init: 2304BD64
;;   Called from:
;;     230483C0 (in rxl_init)
rxu_cntrl_init proc
	lui	a0,0004201D
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000004E0
	c.swsp	ra,00000084
	jal	ra,000000002304FFB4
	lui	a0,0004201D
	addi	a0,a0,-000004E8
	jal	ra,000000002304FFB4
	lui	a0,0004201D
	addi	a0,a0,-000004D4
	jal	ra,000000002304FFB4
	lui	a0,0004201D
	addi	a0,a0,-000004CC
	jal	ra,000000002304FFB4
	c.lwsp	a2,00000020
	lui	a5,0004201D
	c.li	a4,FFFFFFFF
	sh	a4,a5,+00000B42
	c.addi	sp,00000010
	c.jr	ra

;; rxu_cntrl_frame_handle: 2304BDA8
;;   Called from:
;;     23048672 (in rxl_cntrl_evt)
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
	lui	s0,0004201D
	addi	s0,s0,-00000520
	lw	s5,s6,+00000040
	slli	a5,s5,00000012
	blt	a5,zero,000000002304BDDE

l2304BDDA:
	c.li	s3,00000000
	c.j	000000002304C014

l2304BDDE:
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
	bne	a3,a4,000000002304BFBE

l2304BE4E:
	andi	a5,a5,+00000300
	addi	a4,zero,+00000300
	bne	a5,a4,000000002304BFB8

l2304BE5A:
	lhu	a5,s1,+0000001E

l2304BE5E:
	c.andi	a5,00000007
	sb	a5,s0,+00000007

l2304BE64:
	lbu	a5,s1,+00000001
	lbu	a0,s1,+00000000
	c.slli	a5,08
	c.or	a0,a5
	jal	ra,000000002304B688
	sb	a0,s0,+00000008
	lbu	a5,s1,+00000001
	c.andi	a5,00000001
	beq	a5,zero,000000002304BFC4

l2304BE82:
	lhu	a5,s1,+00000010
	sh	a5,s0,+00000024
	lhu	a5,s1,+00000012
	sh	a5,s0,+00000026
	lhu	a5,s1,+00000014

l2304BE96:
	sh	a5,s0,+00000028
	lbu	a5,s1,+00000001
	lbu	a4,s1,+00000000
	c.slli	a5,08
	c.or	a5,a4
	andi	a4,a5,+00000200
	beq	a4,zero,000000002304BFF0

l2304BEAE:
	andi	a5,a5,+00000100
	beq	a5,zero,000000002304BFDA

l2304BEB6:
	lhu	a5,s1,+00000018
	sh	a5,s0,+0000002A
	lhu	a5,s1,+0000001A
	sh	a5,s0,+0000002C
	lhu	a5,s1,+0000001C

l2304BECA:
	sh	a5,s0,+0000002E
	slli	a5,s5,00000006
	blt	a5,zero,000000002304C0C2

l2304BED6:
	lbu	a5,s0,+0000006F
	c.beqz	a5,000000002304BF48

l2304BEDC:
	andi	a5,s5,+00000200
	c.bnez	a5,000000002304BF48

l2304BEE2:
	lbu	a4,s0,+00000068
	lbu	a5,s1,+0000000A
	bne	a4,a5,000000002304BF48

l2304BEEE:
	lbu	a4,s0,+00000069
	lbu	a5,s1,+0000000B
	bne	a4,a5,000000002304BF48

l2304BEFA:
	lbu	a4,s0,+0000006A
	lbu	a5,s1,+0000000C
	bne	a4,a5,000000002304BF48

l2304BF06:
	lbu	a4,s0,+0000006B
	lbu	a5,s1,+0000000D
	bne	a4,a5,000000002304BF48

l2304BF12:
	lbu	a4,s0,+0000006C
	lbu	a5,s1,+0000000E
	bne	a4,a5,000000002304BF48

l2304BF1E:
	lbu	a4,s0,+0000006D
	lbu	a5,s1,+0000000F
	bne	a4,a5,000000002304BF48

l2304BF2A:
	lbu	a5,s1,+00000001
	lbu	a4,s1,+00000000
	c.slli	a5,08
	c.or	a5,a4
	c.lui	a4,00001000
	addi	a3,a4,+00000400
	c.and	a5,a3
	bne	a5,a4,000000002304C006

l2304BF42:
	c.li	a5,00000001
	sb	a5,s0,+0000006E

l2304BF48:
	andi	s8,s8,+0000000C
	beq	s8,zero,000000002304C03E

l2304BF50:
	c.li	a5,00000008
	bne	s8,a5,000000002304C00C

l2304BF56:
	jal	ra,000000002304B34C
	c.beqz	a0,000000002304C00C

l2304BF5C:
	lbu	a3,s1,+00000004
	lbu	a4,a0,+00000050
	bne	a3,a4,000000002304C00C

l2304BF68:
	lbu	a3,s1,+00000005
	lbu	a4,a0,+00000051
	bne	a3,a4,000000002304C00C

l2304BF74:
	lbu	a3,s1,+00000006
	lbu	a4,a0,+00000052
	bne	a3,a4,000000002304C00C

l2304BF80:
	lbu	a3,s1,+00000007
	lbu	a4,a0,+00000053
	bne	a3,a4,000000002304C00C

l2304BF8C:
	lbu	a3,s1,+00000008
	lbu	a4,a0,+00000054
	bne	a3,a4,000000002304C00C

l2304BF98:
	lbu	a4,s1,+00000009
	lbu	a5,a0,+00000055
	bne	a4,a5,000000002304C00C

l2304BFA4:
	c.li	a5,00000001
	c.li	a4,00000000
	c.li	a3,00000000
	addi	a2,s1,+0000000A
	addi	a1,zero,+000000C0
	jal	ra,000000002304F76A
	c.j	000000002304BDDA

l2304BFB8:
	lhu	a5,s1,+00000018
	c.j	000000002304BE5E

l2304BFBE:
	sb	zero,s0,+00000007
	c.j	000000002304BE64

l2304BFC4:
	lhu	a5,s1,+00000004
	sh	a5,s0,+00000024
	lhu	a5,s1,+00000006
	sh	a5,s0,+00000026
	lhu	a5,s1,+00000008
	c.j	000000002304BE96

l2304BFDA:
	lhu	a5,s1,+00000010
	sh	a5,s0,+0000002A
	lhu	a5,s1,+00000012
	sh	a5,s0,+0000002C
	lhu	a5,s1,+00000014
	c.j	000000002304BECA

l2304BFF0:
	lhu	a5,s1,+0000000A
	sh	a5,s0,+0000002A
	lhu	a5,s1,+0000000C
	sh	a5,s0,+0000002C
	lhu	a5,s1,+0000000E
	c.j	000000002304BECA

l2304C006:
	sb	zero,s0,+0000006E
	c.j	000000002304BF48

l2304C00C:
	c.mv	a0,s2
	jal	ra,000000002304B7E6
	c.li	s3,00000001

l2304C014:
	c.lw	s0,64(a5)
	c.beqz	a5,000000002304C020

l2304C018:
	lui	a0,00020000
	jal	ra,00000000230501A8

l2304C020:
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

l2304C03E:
	lbu	a5,s1,+00000001
	addi	s3,s1,+0000000A
	c.srli	a5,00000003
	c.andi	a5,00000001
	c.bnez	a5,000000002304C082

l2304C04C:
	lbu	a5,s1,+00000017
	lbu	a4,s1,+00000016
	c.li	a2,00000006
	c.slli	a5,08
	c.or	a5,a4
	c.mv	a1,s3
	addi	a0,s0,+0000005C
	sh	a5,s0,+00000062
	jal	ra,000000002306CF80
	lhu	a5,s0,+00000000
	slli	a4,a5,00000011
	blt	a4,zero,000000002304C0AC

l2304C074:
	addi	a1,zero,+000000FF

l2304C078:
	c.mv	a0,s2
	jal	ra,000000002304B914
	c.mv	s3,a0
	c.j	000000002304C014

l2304C082:
	lbu	a5,s1,+00000017
	lbu	a3,s1,+00000016
	lhu	a4,s0,+00000062
	c.slli	a5,08
	c.or	a5,a3
	bne	a4,a5,000000002304C04C

l2304C096:
	lui	a1,0004201D
	c.li	a2,00000006
	addi	a1,a1,-000004C4
	c.mv	a0,s3
	jal	ra,000000002306CEF8
	beq	a0,zero,000000002304BDDA

l2304C0AA:
	c.j	000000002304C04C

l2304C0AC:
	andi	a5,s5,+0000001C
	c.li	a4,00000014
	bne	a5,a4,000000002304BDDA

l2304C0B6:
	c.mv	a1,s5
	c.mv	a0,s1
	jal	ra,000000002304B6BC
	c.bnez	a0,000000002304C074

l2304C0C0:
	c.j	000000002304BDDA

l2304C0C2:
	srli	s7,s5,0000000F
	c.addi	s7,FFFFFFF8
	andi	s7,s7,+000000FF
	addi	a4,zero,+000001B0
	add	a4,s7,a4
	lui	s4,0004201B
	addi	a5,s4,-000007F8
	addi	s4,s4,-000007F8
	c.add	a5,a4
	lbu	s3,a5,+0000001D
	beq	s3,zero,000000002304BDDA

l2304C0EA:
	lbu	a5,a5,+0000001A
	addi	a3,zero,+000005D8
	sw	s5,s0,+00000018
	sb	a5,s0,+0000000A
	add	a5,a5,a3
	lui	s5,0004201C
	addi	a4,s5,-00000308
	sb	s7,s0,+00000009
	addi	s5,s5,-00000308
	c.add	a5,a4
	lbu	a4,a5,+00000056
	c.li	a5,00000002
	bne	a4,a5,000000002304C132

l2304C11A:
	lbu	a5,s0,+00000024
	c.andi	a5,00000001
	c.bnez	a5,000000002304C132

l2304C122:
	lui	a0,0004201D
	addi	a0,a0,-000004FC
	jal	ra,000000002305D070
	sb	a0,s0,+0000000B

l2304C132:
	andi	a5,s8,+00000300
	addi	a4,zero,+00000300
	bne	a5,a4,000000002304C14A

l2304C13E:
	lw	a5,s6,+0000004C
	ori	a5,a5,+00000004
	sw	a5,s6,+0000004C

l2304C14A:
	lhu	a5,s0,+00000000
	slli	a4,a5,00000011
	blt	a4,zero,000000002304C170

l2304C156:
	andi	s6,s8,+0000000C
	beq	s6,zero,000000002304C17C

l2304C15E:
	c.li	a5,00000008
	bne	s6,a5,000000002304BDDA

l2304C164:
	andi	a5,s8,+00000040
	c.beqz	a5,000000002304C1D0

l2304C16A:
	jal	ra,000000002305E06E
	c.j	000000002304BDDA

l2304C170:
	c.lw	s0,24(a1)
	c.mv	a0,s1
	jal	ra,000000002304B6BC
	c.bnez	a0,000000002304C156

l2304C17A:
	c.j	000000002304BDDA

l2304C17C:
	slli	a5,s8,00000014
	lhu	a4,s0,+00000002
	bge	a5,zero,000000002304C19A

l2304C188:
	addi	a5,zero,+000001B0
	add	a5,s7,a5
	c.add	a5,s4
	lhu	a5,a5,+00000188
	beq	a5,a4,000000002304BDDA

l2304C19A:
	addi	a1,zero,+000001B0
	add	s7,s7,a1
	lbu	a5,s0,+00000030
	c.andi	a5,00000002
	c.add	s4,s7
	sh	a4,s4,+00000188
	c.beqz	a5,000000002304C1CA

l2304C1B0:
	c.lw	s0,32(a5)
	c.lw	s0,20(a4)
	c.lw	s0,16(a3)
	c.lw	a5,68(a2)
	bltu	a2,a4,000000002304C1C6

l2304C1BC:
	bne	a2,a4,000000002304BDDA

l2304C1C0:
	c.lw	a5,64(a2)
	bgeu	a2,a3,000000002304BDDA

l2304C1C6:
	c.sw	a5,64(a3)
	c.sw	a5,68(a4)

l2304C1CA:
	lbu	a1,s0,+00000009
	c.j	000000002304C078

l2304C1D0:
	andi	a5,s8,+00000080
	beq	a5,zero,000000002304C2F8

l2304C1D8:
	addi	a4,zero,+000000D8
	add	a4,s7,a4
	lbu	a5,s0,+00000007
	addi	a5,a5,+000000C5
	c.add	a5,a4
	c.slli	a5,01

l2304C1EC:
	slli	a4,s8,00000014
	c.add	a5,s4
	lhu	a3,s0,+00000002
	bge	a4,zero,000000002304C202

l2304C1FA:
	lhu	a4,a5,+00000000
	beq	a4,a3,000000002304BDDA

l2304C202:
	sh	a3,a5,+00000000
	lbu	a5,s0,+00000030
	lbu	a4,s0,+0000000A
	c.andi	a5,00000002
	c.beqz	a5,000000002304C236

l2304C212:
	lbu	a5,s0,+00000007
	c.lw	s0,20(a3)
	c.lw	s0,16(a1)
	slli	a2,a5,00000003
	c.lw	s0,32(a5)
	c.add	a5,a2
	c.lw	a5,4(a2)
	bltu	a2,a3,000000002304C232

l2304C228:
	bne	a2,a3,000000002304BDDA

l2304C22C:
	c.lw	a5,0(a2)
	bgeu	a2,a1,000000002304BDDA

l2304C232:
	c.sw	a5,0(a1)
	c.sw	a5,4(a3)

l2304C236:
	addi	a5,zero,+000005D8
	add	a5,a4,a5
	c.add	a5,s5
	lbu	a5,a5,+000003E8
	c.bnez	a5,000000002304C250

l2304C246:
	lui	a5,0004201D
	lw	a5,a5,-00000524
	c.beqz	a5,000000002304C324

l2304C250:
	lw	a5,s2,+00000004
	lbu	s8,s0,+00000008
	lui	a1,00023082
	c.lw	a5,8(a5)
	c.li	a2,00000006
	addi	a1,a1,+000007E4
	c.lw	a5,8(s1)
	c.add	s8,s1
	c.mv	a0,s8
	jal	ra,000000002306CEF8
	c.bnez	a0,000000002304C324

l2304C270:
	lhu	a4,s8,+00000006
	c.lui	a5,00009000
	addi	a5,a5,-00000178
	bne	a4,a5,000000002304C324

l2304C27E:
	addi	a1,zero,+000001B0
	add	a1,s7,a1
	addi	a5,zero,+000005D8
	c.add	s4,a1
	lbu	a4,s4,+0000001A
	add	a5,a4,a5
	c.add	s5,a5
	lbu	a5,s5,+00000056
	c.bnez	a5,000000002304C306

l2304C29C:
	lui	a5,0004201D
	addi	a5,a5,-00000610
	c.lw	a5,8(a3)
	lbu	a3,a3,+00000005
	beq	a3,zero,000000002304BDDA

l2304C2AE:
	sb	s7,a5,+00000001
	sb	a4,a5,+00000002

l2304C2B6:
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
	lui	a2,0004201D
	lui	a1,0004201D
	addi	a2,a2,-000004FC
	addi	a1,a1,-000004F6
	c.addi4spn	a0,00000008
	jal	ra,0000000023051CD2
	lw	a5,s1,+00000120
	c.j	000000002304BDDA

l2304C2F8:
	addi	a5,zero,+000001B0
	add	a5,s7,a5
	addi	a5,a5,+00000188
	c.j	000000002304C1EC

l2304C306:
	lui	a5,0004201D
	lw	a4,a5,-00000524
	sb	s7,a4,+00000001
	lw	a4,a5,-00000524
	lbu	a3,s4,+0000001A
	sb	a3,a4,+00000002
	lw	a5,a5,-00000524
	c.j	000000002304C2B6

l2304C324:
	lui	a5,0004201A
	lw	a4,a5,+000007F4
	c.li	a5,0000000D
	c.sub	a5,a4
	c.li	a4,00000005
	bgeu	a4,a5,000000002304BDDA

l2304C336:
	lhu	a5,s0,+00000000
	andi	a5,a5,+00000400
	bne	a5,zero,000000002304BDDA

l2304C342:
	lbu	a5,s0,+00000006
	bne	a5,zero,000000002304BDDA

l2304C34A:
	lbu	a5,s0,+00000030
	c.andi	a5,00000001
	beq	a5,zero,000000002304C4B8

l2304C354:
	c.lw	s0,32(a1)
	lbu	a4,s0,+00000007
	lui	a3,0004201D
	lui	a2,0004201D
	addi	a3,a3,-000004F6
	addi	a2,a2,-000004FC
	addi	a1,a1,+00000058
	c.addi4spn	a0,00000008
	jal	ra,000000002304B43C
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

l2304C39A:
	lw	a1,s7,+00000008
	add	a5,s5,s1
	c.mv	s8,s5
	c.add	a1,s1
	bge	s9,a5,000000002304C3B4

l2304C3AA:
	sub	s8,s10,s1
	c.slli	s8,10
	srli	s8,s8,00000010

l2304C3B4:
	sub	s5,s5,s8
	c.slli	s5,10
	srli	s5,s5,00000010
	c.mv	a2,s8
	c.addi4spn	a0,00000008
	jal	ra,000000002304B4EE
	beq	s5,zero,000000002304C3EE

l2304C3CA:
	lw	s7,s7,+00000004
	c.li	s1,00000000
	bne	s7,zero,000000002304C39A

l2304C3D4:
	addi	a2,zero,+00000369

l2304C3D8:
	lui	a1,0002307B
	lui	a0,0002307B
	addi	a1,a1,+00000388
	addi	a0,a0,+000006E0
	jal	ra,0000000023054FB4
	c.j	000000002304BDDA

l2304C3EE:
	c.add	s1,s8
	c.slli	s1,10
	c.mv	a3,sp
	c.srli	s1,00000010
	addi	a0,zero,+00000350
	addi	a6,zero,+00000350

l2304C3FE:
	lw	a4,s7,+00000008
	add	a5,s6,s1
	c.mv	a1,s6
	c.add	a4,s1
	bge	a0,a5,000000002304C418

l2304C40E:
	sub	s1,a6,s1
	slli	a1,s1,00000010
	c.srli	a1,00000010

l2304C418:
	c.li	a5,00000000

l2304C41A:
	add	a2,a5,a3
	bne	a5,a1,000000002304C442

l2304C422:
	sub	s6,s6,a5
	c.slli	s6,10
	srli	s6,s6,00000010
	c.mv	a3,a2
	beq	s6,zero,000000002304C452

l2304C432:
	lw	s7,s7,+00000004
	c.li	s1,00000000
	bne	s7,zero,000000002304C3FE

l2304C43C:
	addi	a2,zero,+00000392
	c.j	000000002304C3D8

l2304C442:
	add	a7,a5,a4
	lbu	a7,a7,+00000000
	c.addi	a5,00000001
	sb	a7,a2,+00000000
	c.j	000000002304C41A

l2304C452:
	c.addi4spn	a0,00000008
	jal	ra,000000002304B632
	c.lwsp	zero,000000C4
	c.lwsp	s0,000000E4
	bne	a4,a5,000000002304C468

l2304C460:
	c.lwsp	tp,000000C4
	c.lwsp	a2,000000E4
	beq	a4,a5,000000002304C4B8

l2304C468:
	c.lui	a0,00001000
	c.li	a3,00000018
	c.li	a2,00000005
	c.li	a1,0000000D
	addi	a0,a0,+00000406
	jal	ra,0000000023050474
	lbu	a1,s0,+00000009
	addi	a4,zero,+000001B0
	c.li	a2,00000006
	add	a1,a1,a4
	c.add	a1,s4
	c.addi	a1,0000001E
	jal	ra,000000002306CF80
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
	jal	ra,00000000230504E0
	c.j	000000002304BDDA

l2304C4B8:
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
	bne	a1,a4,000000002304C52C

l2304C504:
	andi	a5,a5,+00000300
	addi	a4,zero,+00000300
	bne	a5,a4,000000002304C59A

l2304C510:
	lbu	a4,s1,+0000001E
	lbu	a5,s1,+0000001F

l2304C518:
	c.slli	a5,08
	c.or	a5,a4
	andi	a4,a5,+00000007
	c.slli	a4,04
	andi	a5,a5,+00000080
	c.or	a4,a2
	c.bnez	a5,000000002304C5A4

l2304C52A:
	c.sw	a3,76(a4)

l2304C52C:
	slli	s5,s4,00000010
	srli	s5,s5,00000010
	andi	a5,s5,+000000FE
	c.add	s1,a5
	lui	a1,00023082
	c.li	a2,00000006
	addi	a1,a1,+000007E4
	c.mv	a0,s1
	jal	ra,000000002306CEF8
	c.bnez	a0,000000002304C60C

l2304C54C:
	lhu	a4,s1,+00000006
	c.lui	a5,00008000
	addi	a5,a5,+00000137
	beq	a4,a5,000000002304C60C

l2304C55A:
	c.addi	s4,FFFFFFFA
	addi	a4,s1,-00000006
	andi	s4,s4,+000000FF
	sb	zero,s0,+00000031

l2304C568:
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
	c.j	000000002304C5AA

l2304C59A:
	lbu	a4,s1,+00000018
	lbu	a5,s1,+00000019
	c.j	000000002304C518

l2304C5A4:
	ori	a4,a4,+00000001
	c.sw	a3,76(a4)

l2304C5AA:
	lw	a4,s2,+00000004
	c.mv	a0,s2
	lhu	a5,a4,+0000001C
	sub	a5,a5,s4
	sh	a5,a4,+0000001C
	lw	a5,s2,+00000004
	sb	s4,s0,+00000032
	sw	s4,a5,+00000054
	lui	a5,0004201D
	sw	s4,a5,+00000B58
	jal	ra,0000000023048326
	csrrci	zero,mstatus,00000008
	c.lw	s0,72(a4)
	lw	a5,s2,+00000004
	c.li	a3,00000003
	sb	a3,s2,+0000001C
	sw	a4,s2,+00000014
	lhu	a5,a5,+0000001C
	sw	a5,s2,+00000018
	csrrci	zero,mstatus,00000008
	lui	a0,0004201D
	c.mv	a1,s2
	addi	a0,a0,-000004E0
	jal	ra,000000002304FFBE
	csrrsi	zero,mstatus,00000008
	csrrsi	zero,mstatus,00000008
	c.j	000000002304C014

l2304C60C:
	lui	a1,00023082
	c.li	a2,00000006
	addi	a1,a1,+000007DC
	c.mv	a0,s1
	jal	ra,000000002306CEF8
	c.beqz	a0,000000002304C55A

l2304C61E:
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
	c.j	000000002304C568

;; rxu_cntrl_monitor_pm: 2304C64A
;;   Called from:
;;     23049986 (in txl_payload_handle_backup)
rxu_cntrl_monitor_pm proc
	lui	a5,0004201D
	addi	a5,a5,-00000520
	lbu	a4,a5,+0000006F
	c.bnez	a4,000000002304C678

l2304C658:
	lhu	a4,a0,+00000000
	sh	a4,a5,+00000068
	lhu	a4,a0,+00000002
	sh	a4,a5,+0000006A
	lhu	a4,a0,+00000004
	sh	a4,a5,+0000006C
	addi	a4,zero,+00000100
	sh	a4,a5,+0000006E

l2304C678:
	c.jr	ra

;; rxu_cntrl_get_pm: 2304C67A
;;   Called from:
;;     2304EE58 (in txu_cntrl_cfm)
;;     23061646 (in me_sta_add_req_handler)
rxu_cntrl_get_pm proc
	lui	a5,0004201D
	addi	a5,a5,-00000520
	lbu	a0,a5,+0000006E
	sh	zero,a5,+0000006E
	c.jr	ra

;; rxu_cntrl_evt: 2304C68C
rxu_cntrl_evt proc
	c.addi	sp,FFFFFFF0
	lui	a0,00000080
	c.swsp	ra,00000084
	jal	ra,00000000230501C0
	lui	a5,0004201D
	lw	a5,a5,-000004E0
	c.beqz	a5,000000002304C6AE

l2304C6A2:
	c.lwsp	a2,00000020
	lui	a0,00020000
	c.addi	sp,00000010
	jal	zero,00000000230501A8

l2304C6AE:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; rxu_swdesc_upload_evt: 2304C6B4
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
	lui	s2,0004201D
	jal	ra,00000000230501C0
	addi	a0,s2,-000004E0
	jal	ra,000000002305003A
	lui	s3,0004201A
	c.mv	s0,a0
	addi	s5,sp,+00000018
	c.li	s4,00000001
	addi	s6,zero,+0000034F
	addi	s3,s3,+000007E0

l2304C6EE:
	c.bnez	s0,000000002304C704

l2304C6F0:
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

l2304C704:
	c.lw	s0,4(a5)
	addi	a2,zero,+00000028
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	lhu	s1,a5,+0000001C
	jal	ra,000000002306D1BC
	c.lw	s0,4(a5)
	c.addi4spn	a4,00000008
	c.mv	a2,a4
	c.lw	a5,8(a5)

l2304C71E:
	c.bnez	s1,000000002304C750

l2304C720:
	c.lw	s0,4(a5)
	sb	s4,s0,+0000001E
	c.addi4spn	a4,00000008
	sw	s4,a5,+00000060
	c.lw	s0,4(a2)
	lbu	a1,s0,+0000001C
	c.mv	a0,s0
	c.lw	a2,84(a3)
	c.addi	a2,0000001C
	jal	ra,0000000023009F0A
	c.beqz	a0,000000002304C78A

l2304C73E:
	c.mv	a0,s0
	jal	ra,00000000230484EE

l2304C744:
	addi	a0,s2,-000004E0
	jal	ra,000000002305003A
	c.mv	s0,a0
	c.j	000000002304C6EE

l2304C750:
	beq	a4,s5,000000002304C720

l2304C754:
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
	bgeu	s6,s1,000000002304C786

l2304C77A:
	addi	s1,s1,-00000350

l2304C77E:
	c.lw	a5,4(a5)
	c.addi	a4,00000004
	c.addi	a2,00000002
	c.j	000000002304C71E

l2304C786:
	c.li	s1,00000000
	c.j	000000002304C77E

l2304C78A:
	jal	ra,00000000230347A4
	lw	a5,s3,+00000014
	lbu	a4,s0,+0000001D
	c.add	a5,a4
	sw	a5,s3,+00000014
	jal	ra,00000000230347B8
	c.j	000000002304C744

;; scanu_confirm: 2304C7A2
;;   Called from:
;;     2304D4A6 (in scanu_scan_next)
;;     23063902 (in scan_start_cfm_handler)
scanu_confirm proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004201D
	c.swsp	s3,00000084
	addi	a5,s0,-000004A4
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	lhu	a1,a5,+00000168
	lbu	a5,a5,+0000016A
	c.mv	s3,a0
	addi	s0,s0,-000004A4
	c.li	a3,00000001
	c.li	a2,00000004
	c.beqz	a5,000000002304C81C

l2304C7CA:
	c.lui	s1,00001000
	addi	a0,s1,+00000003
	jal	ra,0000000023050474
	c.mv	s2,a0
	c.li	a3,00000001
	addi	a0,s1,+00000003
	c.li	a2,00000004
	c.li	a1,0000000D
	jal	ra,0000000023050474
	c.mv	s1,a0

l2304C7E6:
	sb	s3,s2,+00000000
	c.lw	s0,0(a0)
	c.addi	a0,FFFFFFF4
	jal	ra,000000002305056C
	c.mv	a0,s2
	sw	zero,s0,+00000000
	jal	ra,00000000230504E0
	c.beqz	s1,000000002304C808

l2304C7FE:
	sb	s3,s1,+00000000
	c.mv	a0,s1
	jal	ra,00000000230504E0

l2304C808:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a1,00000000
	c.li	a0,00000004
	c.addi16sp	00000020
	jal	zero,000000002305060E

l2304C81C:
	c.lui	a0,00001000
	c.addi	a0,00000001
	jal	ra,0000000023050474
	c.mv	s2,a0
	c.li	s1,00000000
	c.j	000000002304C7E6

;; scanu_raw_send_cfm: 2304C82A
;;   Called from:
;;     230637C2 (in scanu_raw_send_req_handler)
scanu_raw_send_cfm proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.lui	a0,00001000
	c.li	a3,00000004
	c.li	a2,00000004
	c.addi	a0,00000006
	c.swsp	ra,00000084
	jal	ra,0000000023050474
	c.sw	a0,0(s0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230504E0

;; scanu_init: 2304C84A
;;   Called from:
;;     2304B38E (in me_init)
scanu_init proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000000
	c.li	a0,00000004
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002305060E
	lui	s0,0004201D
	addi	a0,s0,-000004A4
	addi	a2,zero,+00000194
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	lui	a4,0002304D
	addi	a5,s0,-000004A4
	addi	a4,a4,+000004AA
	c.sw	a5,12(a4)
	lui	a4,00042046
	addi	a4,a4,-00000234
	sw	zero,a5,+00000010
	c.sw	a5,8(a4)
	lui	a5,00042046
	addi	a5,a5,-00000224
	c.sw	a4,4(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; scanu_find_result: 2304C898
;;   Called from:
;;     2304C99A (in scanu_frame_handler)
;;     2304D0F2 (in scanu_search_by_bssid)
scanu_find_result proc
	lui	a5,0004201D
	lui	a3,0004201D
	c.mv	a4,a0
	addi	a5,a5,-0000048C
	addi	a3,a3,-0000033C

l2304C8AA:
	lbu	a2,a5,+00000034
	c.mv	a0,a5
	c.beqz	a2,000000002304C8FC

l2304C8B2:
	lbu	a6,a5,+00000000
	lbu	a2,a4,+00000000
	bne	a6,a2,000000002304C8FE

l2304C8BE:
	lbu	a6,a5,+00000001
	lbu	a2,a4,+00000001
	bne	a6,a2,000000002304C8FE

l2304C8CA:
	lbu	a6,a5,+00000002
	lbu	a2,a4,+00000002
	bne	a6,a2,000000002304C8FE

l2304C8D6:
	lbu	a6,a5,+00000003
	lbu	a2,a4,+00000003
	bne	a6,a2,000000002304C8FE

l2304C8E2:
	lbu	a6,a5,+00000004
	lbu	a2,a4,+00000004
	bne	a6,a2,000000002304C8FE

l2304C8EE:
	lbu	a6,a5,+00000005
	lbu	a2,a4,+00000005
	bne	a6,a2,000000002304C8FE

l2304C8FA:
	c.jr	ra

l2304C8FC:
	c.bnez	a1,000000002304C908

l2304C8FE:
	addi	a5,a5,+00000038
	bne	a5,a3,000000002304C8AA

l2304C906:
	c.li	a0,00000000

l2304C908:
	c.jr	ra

;; scanu_frame_handler: 2304C90A
;;   Called from:
;;     230638D2 (in rxu_mgt_ind_handler)
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
	lui	s4,0004201D
	lw	a5,s4,-000004A4
	addi	a1,a1,-00000024
	addi	s6,a0,+00000040
	c.slli	a1,10
	c.mv	s0,a0
	c.li	a2,00000000
	c.srli	a1,00000010
	c.mv	a0,s6
	c.swsp	a5,00000080
	lbu	s5,a5,+0000014E
	jal	ra,0000000023050BF4
	addi	s4,s4,-000004A4
	c.beqz	a0,000000002304C988

l2304C954:
	lbu	a5,a0,+00000001
	addi	a4,zero,+00000020
	bltu	a4,a5,000000002304CAA0

l2304C960:
	c.beqz	a5,000000002304C988

l2304C962:
	lbu	a4,a0,+00000002
	addi	a3,a0,+00000002
	c.beqz	a4,000000002304C988

l2304C96C:
	sb	a5,sp,+0000002C
	c.addi4spn	a4,0000002C
	c.li	a2,FFFFFFFF

l2304C974:
	c.addi	a5,FFFFFFFF
	c.addi	a4,00000001
	bne	a5,a2,000000002304CAA6

l2304C97C:
	lbu	a5,sp,+0000002C
	c.addi4spn	a4,00000050
	c.add	a5,a4
	sb	zero,a5,+00000FDD

l2304C988:
	c.li	a0,00000004
	jal	ra,000000002305070E
	c.li	a5,00000001
	bne	a0,a5,000000002304D0BE

l2304C994:
	c.li	a1,00000001
	addi	a0,s0,+0000002C
	jal	ra,000000002304C898
	c.mv	s8,a0
	beq	a0,zero,000000002304D0BE

l2304C9A4:
	lbu	a5,s4,+0000016C
	andi	a4,a5,+00000001
	c.bnez	a4,000000002304C9F2

l2304C9AE:
	lbu	a4,s0,+0000002C
	bne	a4,a5,000000002304D0BE

l2304C9B6:
	lbu	a4,s0,+0000002D
	lbu	a5,s4,+0000016D
	bne	a4,a5,000000002304D0BE

l2304C9C2:
	lbu	a4,s0,+0000002E
	lbu	a5,s4,+0000016E
	bne	a4,a5,000000002304D0BE

l2304C9CE:
	lbu	a4,s0,+0000002F
	lbu	a5,s4,+0000016F
	bne	a4,a5,000000002304D0BE

l2304C9DA:
	lbu	a4,s0,+00000030
	lbu	a5,s4,+00000170
	bne	a4,a5,000000002304D0BE

l2304C9E6:
	lbu	a4,s0,+00000031
	lbu	a5,s4,+00000171
	bne	a4,a5,000000002304D0BE

l2304C9F2:
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
	c.bnez	a5,000000002304CA30

l2304CA2E:
	c.li	a5,00000002

l2304CA30:
	sh	a5,s8,+00000028
	lhu	s2,s0,+00000000
	c.li	a2,00000000
	c.mv	a0,s6
	addi	s2,s2,-00000024
	c.slli	s2,10
	srli	s2,s2,00000010
	c.mv	a1,s2
	jal	ra,0000000023050BF4
	c.beqz	a0,000000002304CADE

l2304CA4E:
	lbu	a5,a0,+00000001
	addi	a4,zero,+00000020
	bltu	a4,a5,000000002304CAB2

l2304CA5A:
	c.bnez	a5,000000002304CAB6

l2304CA5C:
	lb	a5,s0,+0000001A
	sb	a5,s8,+00000036
	lb	a5,s0,+00000019
	sb	a5,s8,+00000037
	c.lwsp	tp,000000E4
	lbu	a5,a5,+00000150
	c.beqz	a5,000000002304CAFA

l2304CA74:
	c.lwsp	tp,000000E4
	c.li	s1,00000000
	addi	s7,s8,+00000007
	addi	s3,a5,+000000FC

l2304CA80:
	c.lwsp	tp,000000E4
	lbu	a5,a5,+00000150
	bge	s1,a5,000000002304CAF0

l2304CA8A:
	lbu	a5,s3,+00000000
	c.beqz	a5,000000002304CAFA

l2304CA90:
	lbu	a2,s8,+00000006
	beq	a2,a5,000000002304CAE4

l2304CA98:
	c.addi	s1,00000001
	addi	s3,s3,+00000022
	c.j	000000002304CA80

l2304CAA0:
	addi	a5,zero,+00000020
	c.j	000000002304C962

l2304CAA6:
	lbu	a1,a3,+00000000
	c.addi	a3,00000001
	sb	a1,a4,+00000000
	c.j	000000002304C974

l2304CAB2:
	addi	a5,zero,+00000020

l2304CAB6:
	lbu	a3,a0,+00000002
	addi	a4,a0,+00000002
	c.beqz	a3,000000002304CA5C

l2304CAC0:
	sb	a5,s8,+00000006
	addi	a3,s8,+00000007
	c.li	a2,FFFFFFFF

l2304CACA:
	c.addi	a5,FFFFFFFF
	beq	a5,a2,000000002304CA5C

l2304CAD0:
	lbu	a1,a4,+00000000
	c.addi	a3,00000001
	c.addi	a4,00000001
	sb	a1,a3,+00000FFF
	c.j	000000002304CACA

l2304CADE:
	sb	zero,s8,+00000006
	c.j	000000002304CA5C

l2304CAE4:
	c.mv	a1,s7
	addi	a0,s3,+00000001
	jal	ra,000000002306CEF8
	c.bnez	a0,000000002304CA98

l2304CAF0:
	c.lwsp	tp,000000E4
	lbu	a5,a5,+00000150
	beq	a5,s1,000000002304D0BE

l2304CAFA:
	c.li	a2,00000003
	c.mv	a1,s2
	c.mv	a0,s6
	jal	ra,0000000023050BF4
	beq	a0,zero,000000002304CFAE

l2304CB08:
	lbu	a1,a0,+00000002
	lbu	a0,s0,+00000006
	bne	a0,zero,000000002304CF7E

l2304CB14:
	addi	a5,a1,-00000001
	c.li	a4,0000000D
	bltu	a4,a5,000000002304CFA8

l2304CB1E:
	c.li	a5,0000000E
	beq	a1,a5,000000002304CFA0

l2304CB24:
	c.li	a5,00000005
	add	a1,a1,a5
	c.lui	a5,00001000
	addi	a5,a5,-00000699
	c.add	a1,a5
	c.slli	a1,10
	c.srli	a1,00000010

l2304CB36:
	jal	ra,000000002304B3A2
	sw	a0,s8,+0000002C
	lb	a5,s0,+00000018
	lb	a4,s8,+00000035
	bge	a4,a5,000000002304CB4E

l2304CB4A:
	sb	a5,s8,+00000035

l2304CB4E:
	lbu	a5,s4,+0000016A
	beq	a5,zero,000000002304D0A0

l2304CB56:
	addi	s3,zero,+000005D8
	add	s3,s5,s3
	lui	s1,0004201C
	addi	s11,s1,-00000308
	addi	a2,zero,+00000022
	addi	a1,s8,+00000006
	addi	s1,s1,-00000308
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
	jal	ra,000000002306CF80
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
	jal	ra,000000002306058C
	lw	a5,s8,+0000002C
	lbu	a5,a5,+00000002
	c.bnez	a5,000000002304CC02

l2304CBE6:
	c.li	a1,00000001
	c.mv	a0,s10
	jal	ra,00000000230619EA
	c.andi	a0,0000000F
	beq	a0,zero,000000002304CFD0

l2304CBF4:
	jal	ra,0000000023068C40
	c.li	a5,0000001F
	sub	a0,a5,a0
	sb	a0,s7,+000003D7

l2304CC02:
	lui	a2,0002307C
	c.li	a3,00000005
	addi	a2,a2,-00000404
	c.mv	a1,s2
	c.mv	a0,s6
	jal	ra,0000000023050C10
	beq	a0,zero,000000002304CFD8

l2304CC18:
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

l2304CD1A:
	lui	a5,0004201D
	lbu	a5,a5,-00000716
	c.li	s10,00000000
	c.beqz	a5,000000002304CDD2

l2304CD26:
	addi	s7,zero,+000005D8
	add	s7,s5,s7
	c.add	s7,s1
	lw	s10,s7,+000003E0
	andi	s10,s10,+00000001
	beq	s10,zero,000000002304CDD2

l2304CD3C:
	addi	a2,zero,+0000002D
	c.mv	a1,s2
	c.mv	a0,s6
	jal	ra,0000000023050BF4
	c.beqz	a0,000000002304CDC4

l2304CD4A:
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

l2304CD6E:
	add	a4,a7,a5
	lbu	a2,a4,+00000000
	add	a4,a5,a1
	c.add	a4,s1
	sb	a2,a4,+00000000
	c.addi	a5,00000001
	bne	a5,a3,000000002304CD6E

l2304CD86:
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

l2304CDC4:
	addi	a2,zero,+0000003D
	c.mv	a1,s2
	c.mv	a0,s6
	jal	ra,0000000023050BF4
	c.mv	s10,a0

l2304CDD2:
	addi	a7,zero,+000005D8
	add	a7,s5,a7
	lui	a4,0004201D
	lw	a5,a4,-00000310
	addi	a4,a4,-00000310
	c.swsp	a4,0000000C
	lbu	a5,a5,+00000140
	add	s9,s1,a7
	sb	a5,s9,+000003E8
	beq	a5,zero,000000002304D060

l2304CDF8:
	lw	a5,s9,+000003E0
	blt	a5,zero,000000002304D060

l2304CE00:
	addi	a4,s3,+000003E9
	c.add	a4,s1
	c.mv	a0,a4
	c.li	a2,00000002
	c.li	a1,00000000
	c.swsp	a4,0000008C
	jal	ra,000000002306D1BC
	addi	a5,s3,+000003ED
	c.add	a5,s1
	c.mv	a0,a5
	c.li	a2,00000001
	c.li	a1,00000000
	addi	s11,s3,+000003EE
	c.swsp	a5,00000084
	c.add	s11,s1
	jal	ra,000000002306D1BC
	c.li	a2,00000001
	c.li	a1,00000000
	c.mv	a0,s11
	jal	ra,000000002306D1BC
	addi	a5,s3,+000003EB
	c.add	a5,s1
	c.li	a2,00000001
	c.li	a1,00000000
	c.mv	a0,a5
	c.swsp	a5,00000008
	jal	ra,000000002306D1BC
	addi	a5,s3,+000003EC
	c.add	a5,s1
	c.li	a2,00000001
	c.li	a1,00000000
	c.mv	a0,a5
	c.swsp	a5,00000088
	jal	ra,000000002306D1BC
	c.mv	a1,s2
	sb	zero,s9,+00000411
	sb	zero,s9,+000003EF
	sb	zero,s9,+000003F0
	addi	a2,zero,+00000030
	c.mv	a0,s6
	jal	ra,0000000023050BF4
	addi	s7,s3,+000003F1
	c.mv	a1,a0
	c.add	s7,s1
	c.beqz	a0,000000002304CF04

l2304CE7A:
	lbu	a2,a0,+00000001
	c.mv	a0,s7
	c.addi	a2,00000002
	andi	a2,a2,+000000FF
	sb	a2,s9,+00000411
	jal	ra,000000002306CF80
	lbu	a5,s9,+000003F0
	c.lwsp	t3,000000C4
	c.lwsp	a2,00000064
	addi	a3,s3,+000003EF
	c.add	a3,s1
	c.mv	a2,s11
	c.mv	a0,s7
	jal	ra,0000000023051DAC
	lw	a1,s9,+000003EC
	sb	a0,s9,+00000411
	lui	a0,0002307C
	srli	a4,a1,00000010
	srli	a3,a1,00000011
	srli	a2,a1,00000012
	c.srli	a1,00000013
	c.andi	a4,00000001
	c.andi	a3,00000001
	c.andi	a2,00000001
	c.andi	a1,00000001
	addi	a0,a0,-000003F4
	jal	ra,0000000023003AC6
	lw	a1,s9,+000003EC
	lui	a0,0002307C
	addi	a0,a0,-000003B8
	srli	a4,a1,00000008
	srli	a3,a1,00000009
	srli	a2,a1,0000000A
	c.srli	a1,0000000B
	c.andi	a1,00000001
	c.andi	a4,00000001
	c.andi	a3,00000001
	c.andi	a2,00000001
	jal	ra,0000000023003AC6
	lbu	a1,s9,+000003EF
	lui	a0,0002307C
	addi	a0,a0,-00000380
	jal	ra,0000000023003AC6

l2304CF04:
	lui	a2,0002307C
	c.mv	a1,s2
	c.li	a3,00000004
	addi	a2,a2,-000003FC
	c.mv	a0,s6
	jal	ra,0000000023050C10
	c.mv	a1,a0
	c.beqz	a0,000000002304CF58

l2304CF1A:
	addi	s3,zero,+000005D8
	add	s3,s5,s3
	c.add	s3,s1
	lbu	a5,s3,+000003E9
	ori	a5,a5,+00000008
	sb	a5,s3,+000003E9
	lbu	a5,s3,+00000411
	c.bnez	a5,000000002304CF58

l2304CF36:
	lbu	a2,a0,+00000001
	c.mv	a0,s7
	c.addi	a2,00000002
	andi	a2,a2,+000000FF
	sb	a2,s3,+00000411
	jal	ra,000000002306CF80
	c.lwsp	s4,00000084
	c.lwsp	a6,00000064
	c.mv	a0,s7
	jal	ra,0000000023052010
	sb	a0,s3,+00000411

l2304CF58:
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
	c.beqz	a4,000000002304CFFA

l2304CF78:
	c.li	a5,00000009

l2304CF7A:
	c.sw	a0,48(a5)
	c.j	000000002304D016

l2304CF7E:
	c.li	a5,00000001
	bne	a0,a5,000000002304CFA8

l2304CF84:
	addi	a5,a1,-00000001
	addi	a4,zero,+000000A4
	bltu	a4,a5,000000002304CFA8

l2304CF90:
	c.li	a5,00000005
	add	a1,a1,a5
	c.lui	a5,00001000
	addi	a5,a5,+00000388
	c.add	a1,a5
	c.j	000000002304CB36

l2304CFA0:
	c.lui	a1,00001000
	addi	a1,a1,-0000064C
	c.j	000000002304CB36

l2304CFA8:
	c.lui	a1,00010000
	c.addi	a1,FFFFFFFF
	c.j	000000002304CB36

l2304CFAE:
	lb	a4,s0,+00000018
	lb	a5,s8,+00000035
	bge	a5,a4,000000002304CB4E

l2304CFBA:
	lhu	a1,s0,+00000004
	lbu	a0,s0,+00000006
	jal	ra,000000002304B3A2
	sw	a0,s8,+0000002C
	lb	a5,s0,+00000018
	c.j	000000002304CB4A

l2304CFD0:
	c.li	a5,00000001
	sb	a5,s7,+000003D7
	c.j	000000002304CC02

l2304CFD8:
	addi	a5,zero,+000005D8
	add	a5,s5,a5
	c.lui	a4,00001000
	addi	a4,a4,-000005BD
	c.add	a5,s1
	sw	a4,a5,+000003C4
	sw	a4,a5,+000003C8
	sw	a4,a5,+000003CC
	sw	a4,a5,+000003D0
	c.j	000000002304CD1A

l2304CFFA:
	lhu	a4,a5,+000003AE
	c.andi	a4,00000010
	beq	a4,zero,000000002304D0EC

l2304D004:
	lbu	a4,a5,+000003E9
	ori	a4,a4,+00000002
	sb	a4,a5,+000003E9
	c.li	a5,00000001
	sb	a5,a0,+0000003B

l2304D016:
	addi	s3,zero,+000005D8
	add	s3,s5,s3
	c.mv	a1,s7
	addi	a0,a0,+00000040
	c.add	s3,s1
	lbu	a2,s3,+00000411
	jal	ra,000000002306CF80
	c.lwsp	s8,000000E4
	lbu	a4,s3,+00000411
	lui	a0,0002307C
	c.lw	a5,0(a5)
	addi	a0,a0,-00000360
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
	jal	ra,0000000023003AC6

l2304D060:
	c.lwsp	s0,00000084
	c.li	a1,00000000
	c.mv	a0,s10
	jal	ra,0000000023061D14
	c.lwsp	s0,00000084
	c.mv	a1,s2
	c.mv	a0,s6
	jal	ra,0000000023060654
	c.lwsp	s0,00000084
	c.mv	a1,s2
	c.mv	a0,s6
	jal	ra,0000000023060678
	c.lwsp	s0,00000084
	c.mv	a1,s2
	c.mv	a0,s6
	jal	ra,00000000230606F2
	addi	a5,zero,+000005D8
	add	s5,s5,a5
	lui	a4,00080000
	c.add	s1,s5
	lw	a5,s1,+000003E0
	c.or	a5,a4
	sw	a5,s1,+000003E0

l2304D0A0:
	lbu	a5,s8,+00000034
	c.bnez	a5,000000002304D0B0

l2304D0A6:
	lhu	a5,s4,+00000014
	c.addi	a5,00000001
	sh	a5,s4,+00000014

l2304D0B0:
	c.lwsp	tp,000000E4
	lbu	a5,a5,+00000150
	c.beqz	a5,000000002304D0BE

l2304D0B8:
	c.li	a5,00000001
	sb	a5,s8,+00000034

l2304D0BE:
	c.lui	a1,00001000
	c.mv	a0,s0
	c.li	a3,00000004
	c.li	a2,0000000D
	c.addi	a1,00000004
	jal	ra,000000002305055C
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

l2304D0EC:
	c.li	a5,00000002
	c.j	000000002304CF7A

;; scanu_search_by_bssid: 2304D0F0
;;   Called from:
;;     2304D74A (in sm_get_bss_params)
scanu_search_by_bssid proc
	c.li	a1,00000000
	jal	zero,000000002304C898

;; scanu_search_by_ssid: 2304D0F6
;;   Called from:
;;     2304D6EA (in sm_get_bss_params)
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
	c.beqz	a5,000000002304D168

l2304D112:
	lui	s0,0004201D
	c.mv	s4,a1
	c.mv	s1,a0
	addi	s0,s0,-000004A4
	c.li	s2,00000000
	c.li	s3,00000000
	addi	s5,zero,-00000080
	addi	s7,a0,+00000001
	c.li	s6,00000006

l2304D12C:
	lbu	a5,s0,+0000004C
	c.beqz	a5,000000002304D168

l2304D132:
	lb	a5,s0,+0000004D
	bge	s5,a5,000000002304D15E

l2304D13A:
	lbu	a5,s0,+0000001E
	lbu	a2,s1,+00000000
	bne	a2,a5,000000002304D15E

l2304D146:
	c.mv	a1,s7
	addi	a0,s0,+0000001F
	jal	ra,000000002306CEF8
	c.bnez	a0,000000002304D15E

l2304D152:
	lb	s5,s0,+0000004D
	addi	s3,s0,+00000018
	sw	s2,s4,+00000000

l2304D15E:
	c.addi	s2,00000001
	addi	s0,s0,+00000038
	bne	s2,s6,000000002304D12C

l2304D168:
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

;; scanu_rm_exist_ssid: 2304D180
;;   Called from:
;;     2304DE56 (in sm_connect_ind)
scanu_rm_exist_ssid proc
	blt	a1,zero,000000002304D1E8

l2304D184:
	c.beqz	a0,000000002304D1E8

l2304D186:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	s0,zero,+00000038
	add	s0,a1,s0
	c.swsp	s1,00000080
	lui	s1,0004201D
	addi	s1,s1,-000004A4
	c.swsp	ra,00000084
	add	a5,s1,s0
	lbu	a4,a5,+0000004C
	c.beqz	a4,000000002304D1DE

l2304D1A8:
	lbu	a5,a5,+0000001E
	lbu	a2,a0,+00000000
	bne	a2,a5,000000002304D1DE

l2304D1B4:
	addi	a5,s0,+0000001F
	addi	a1,a0,+00000001
	add	a0,s1,a5
	jal	ra,000000002306CEF8
	c.bnez	a0,000000002304D1DE

l2304D1C6:
	addi	a0,s0,+00000018
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.add	a0,s1
	c.lwsp	tp,00000024
	addi	a2,zero,+00000038
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,000000002306D1BC

l2304D1DE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2304D1E8:
	c.jr	ra

;; scanu_scan_next: 2304D1EA
;;   Called from:
;;     2304D4AA (in scanu_dma_cb)
;;     2304D508 (in scanu_start)
;;     230638EC (in scan_done_ind_handler)
scanu_scan_next proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,0004201D
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	lw	s1,s2,-000004A4
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	addi	s2,s2,-000004A4
	c.li	a2,00000001

l2304D208:
	lbu	a5,s2,+0000016B
	bltu	a2,a5,000000002304D494

l2304D210:
	lbu	a3,s1,+0000014F
	addi	a4,s1,+00000002
	c.li	s3,00000000

l2304D21A:
	blt	s3,a3,000000002304D22A

l2304D21E:
	bne	a3,s3,000000002304D238

l2304D222:
	c.addi	a5,00000001
	sb	a5,s2,+0000016B
	c.j	000000002304D208

l2304D22A:
	c.addi	a4,00000006
	lbu	a1,a4,-00000006
	beq	a1,a5,000000002304D238

l2304D234:
	c.addi	s3,00000001
	c.j	000000002304D21A

l2304D238:
	c.lui	a0,00001000
	addi	a3,zero,+00000154
	c.li	a2,00000004
	c.li	a1,00000002
	addi	a0,a0,-00000800
	jal	ra,0000000023050474
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

l2304D276:
	lbu	a5,s1,+0000014F
	blt	s3,a5,000000002304D412

l2304D27E:
	addi	s3,zero,+000000FC
	c.li	s4,00000000

l2304D284:
	lbu	a5,s1,+00000150
	blt	s4,a5,000000002304D43E

l2304D28C:
	lw	a4,s2,+00000000
	lui	a5,00042046
	lui	a2,00042046
	lhu	a3,a4,+0000014C
	addi	a7,a5,-000002FC
	addi	a5,zero,+000000C8
	addi	a2,a2,-00000224
	bgeu	a5,a3,000000002304D2AE

l2304D2AC:
	c.li	a3,00000000

l2304D2AE:
	lbu	a1,s2,+0000016B
	c.li	a5,00000001
	beq	a1,a5,000000002304D456

l2304D2B8:
	lbu	a5,a4,+00000151
	bne	a5,zero,000000002304D456

l2304D2C0:
	c.li	t1,00000000
	c.li	a4,0000000C

l2304D2C4:
	lui	a5,00042046
	c.li	a1,00000001
	sb	a1,a5,+00000D04
	lui	a1,0002307C
	c.li	a5,00000008
	addi	a0,a1,+0000038C
	lui	a1,00042046
	sb	a5,a7,+00000001
	addi	a1,a1,-000002FA
	c.li	a5,00000000
	c.li	t3,00000008

l2304D2E8:
	add	a6,t1,a5
	c.add	a6,a0
	lbu	t4,a6,+00000000
	add	a6,a5,a1
	c.addi	a5,00000001
	sb	t4,a6,+00000000
	bne	a5,t3,000000002304D2E8

l2304D300:
	addi	a5,a7,+0000000A
	c.beqz	a3,000000002304D33E

l2304D306:
	lui	a6,00042046
	addi	a1,a6,-00000234
	lbu	t1,a1,+00000010
	c.li	a1,0000000A
	bne	t1,a1,000000002304D33E

l2304D318:
	lbu	a1,a2,+00000001
	c.mv	t3,a5
	addi	a6,a6,-00000234
	c.addi	a1,00000002
	andi	a1,a1,+000000FF
	c.mv	t1,a1
	c.li	t4,FFFFFFFF

l2304D32C:
	c.addi	t1,FFFFFFFF
	c.addi	a6,00000001
	bne	t1,t4,000000002304D45C

l2304D334:
	c.sub	a3,a1
	c.slli	a3,10
	c.add	a5,a1
	c.add	a2,a1
	c.srli	a3,00000010

l2304D33E:
	c.li	a1,00000008
	beq	a4,a1,000000002304D36C

l2304D344:
	c.addi	a4,FFFFFFF8
	andi	a4,a4,+000000FF
	addi	a1,zero,+00000032
	sb	a1,a5,+00000000
	sb	a4,a5,+00000001
	c.mv	a1,a0
	addi	t1,a4,+00000002
	addi	a6,a5,+00000002
	c.li	a0,FFFFFFFF

l2304D362:
	c.addi	a4,FFFFFFFF
	c.addi	a1,00000001
	bne	a4,a0,000000002304D468

l2304D36A:
	c.add	a5,t1

l2304D36C:
	lbu	a4,s2,+0000016B
	c.bnez	a4,000000002304D380

l2304D372:
	c.li	a4,00000003
	sb	a4,a5,+00000000
	c.li	a4,00000001
	sb	a4,a5,+00000001
	c.addi	a5,00000003

l2304D380:
	c.beqz	a3,000000002304D3A8

l2304D382:
	lbu	a1,a2,+00000000
	addi	a4,zero,+0000003B
	bne	a1,a4,000000002304D3A8

l2304D38E:
	lbu	a4,a2,+00000001
	c.li	a1,00000000
	c.addi	a4,00000002
	andi	a4,a4,+000000FF

l2304D39A:
	bne	a4,a1,000000002304D474

l2304D39E:
	c.sub	a3,a4
	c.slli	a3,10
	c.add	a5,a4
	c.add	a2,a4
	c.srli	a3,00000010

l2304D3A8:
	lui	a4,0004201D
	addi	a1,a4,-00000744
	lbu	a1,a1,+0000002E
	c.beqz	a1,000000002304D3D4

l2304D3B6:
	addi	a1,zero,+0000002D
	sb	a1,a5,+00000000
	c.li	a1,0000001A
	sb	a1,a5,+00000001
	addi	a4,a4,-00000744
	addi	a1,a5,+0000001C
	c.addi	a5,00000002

l2304D3CE:
	c.addi	a4,00000001
	bne	a1,a5,000000002304D488

l2304D3D4:
	c.beqz	a3,000000002304D3F0

l2304D3D6:
	c.li	a4,00000000

l2304D3D8:
	add	a1,a2,a4
	lbu	a0,a1,+00000000
	add	a1,a5,a4
	c.addi	a4,00000001
	sb	a0,a1,+00000000
	bne	a3,a4,000000002304D3D8

l2304D3EE:
	c.add	a5,a3

l2304D3F0:
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
	jal	zero,00000000230504E0

l2304D412:
	add	a1,s3,s5
	lbu	a5,s2,+0000016B
	c.add	a1,s1
	lbu	a4,a1,+00000002
	bne	a4,a5,000000002304D43A

l2304D424:
	lbu	s4,s0,+0000014F
	c.li	a2,00000006
	add	a0,s4,s5
	c.addi	s4,00000001
	c.add	a0,s0
	jal	ra,000000002306CF80
	sb	s4,s0,+0000014F

l2304D43A:
	c.addi	s3,00000001
	c.j	000000002304D276

l2304D43E:
	add	a1,s1,s3
	add	a0,s0,s3
	addi	a2,zero,+00000022
	jal	ra,000000002306CF80
	c.addi	s4,00000001
	addi	s3,s3,+00000022
	c.j	000000002304D284

l2304D456:
	c.li	t1,00000004
	c.li	a4,00000008
	c.j	000000002304D2C4

l2304D45C:
	lbu	t5,a6,+0000000F
	c.addi	t3,00000001
	sb	t5,t3,+00000FFF
	c.j	000000002304D32C

l2304D468:
	lbu	t3,a1,+00000007
	c.addi	a6,00000001
	sb	t3,a6,+00000FFF
	c.j	000000002304D362

l2304D474:
	add	a0,a2,a1
	lbu	a6,a0,+00000000
	add	a0,a5,a1
	c.addi	a1,00000001
	sb	a6,a0,+00000000
	c.j	000000002304D39A

l2304D488:
	lbu	a0,a4,+0000000B
	c.addi	a5,00000001
	sb	a0,a5,+00000FFF
	c.j	000000002304D3CE

l2304D494:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.li	a0,00000000
	c.addi16sp	00000020
	jal	zero,000000002304C7A2

;; scanu_dma_cb: 2304D4AA
scanu_dma_cb proc
	jal	zero,000000002304D1EA

;; scanu_start: 2304D4AE
;;   Called from:
;;     23063892 (in scanu_join_req_handler)
;;     230638C4 (in scanu_start_req_handler)
scanu_start proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004201D
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	a4,a5,-000004A4
	lbu	a4,a4,+0000016A
	addi	s0,a5,-000004A4
	c.bnez	a4,000000002304D4E6

l2304D4C6:
	addi	a5,a5,-000004A4
	addi	a4,s0,+00000150
	addi	a3,zero,-00000080

l2304D4D2:
	sb	zero,a5,+0000004C
	sb	a3,a5,+0000004D
	addi	a5,a5,+00000038
	bne	a5,a4,000000002304D4D2

l2304D4E2:
	sh	zero,s0,+00000014

l2304D4E6:
	c.li	a1,00000001
	c.li	a0,00000004
	jal	ra,000000002305060E
	c.lw	s0,0(a5)
	lw	a3,a5,+00000148
	c.beqz	a3,000000002304D502

l2304D4F6:
	lhu	a4,a5,+0000014C
	addi	a5,zero,+000000C8
	bgeu	a5,a4,000000002304D50C

l2304D502:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002304D1EA

l2304D50C:
	lui	a5,00042046
	addi	a5,a5,-00000234
	c.sw	a5,0(a3)
	sh	a4,a5,+00000008
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,0004201D
	c.li	a1,00000000
	addi	a0,a0,-000004A0
	c.addi	sp,00000010
	jal	zero,000000002305C9A6

;; txl_get_seq_ctrl: 2304D52E
;;   Called from:
;;     2304DC80 (in sm_disconnect)
;;     2304DF40 (in sm_auth_send)
;;     2304E0EC (in sm_assoc_req_send)
;;     2304E5C4 (in sm_handle_supplicant_result)
txl_get_seq_ctrl proc
	lui	a5,0004201C
	addi	a5,a5,-00000370
	lhu	a0,a5,+00000054
	c.addi	a0,00000001
	c.slli	a0,10
	c.srli	a0,00000010
	sh	a0,a5,+00000054
	c.slli	a0,04
	c.slli	a0,10
	c.srli	a0,00000010
	c.jr	ra

;; sm_delete_resources: 2304D54C
;;   Called from:
;;     2304DB94 (in sm_disconnect_process)
;;     2304DE6A (in sm_connect_ind)
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
	jal	ra,0000000023050474
	c.mv	s2,a0
	c.li	a3,00000002
	c.li	a2,00000006
	c.li	a1,00000005
	addi	a0,s1,+00000411
	jal	ra,0000000023050474
	sb	zero,s2,+00000000
	lbu	a5,s0,+00000057
	c.mv	s1,a0
	c.mv	a0,s2
	sb	a5,s2,+00000001
	jal	ra,00000000230504E0
	lbu	a5,s0,+00000058
	c.beqz	a5,000000002304D5AE

l2304D592:
	c.li	a3,00000004
	c.li	a2,00000006
	c.li	a1,00000000
	c.li	a0,0000001E
	jal	ra,0000000023050474
	sb	zero,a0,+00000002
	lbu	a4,s0,+00000057
	sb	a4,a0,+00000003
	jal	ra,00000000230504E0

l2304D5AE:
	lbu	a4,s0,+00000060
	addi	a5,zero,+000000FF
	beq	a4,a5,000000002304D5D2

l2304D5BA:
	c.li	a3,00000001
	c.li	a2,00000006
	c.li	a1,00000000
	c.li	a0,0000000C
	jal	ra,0000000023050474
	lbu	a5,s0,+00000060
	sb	a5,a0,+00000000
	jal	ra,00000000230504E0

l2304D5D2:
	c.lw	s0,64(a5)
	c.beqz	a5,000000002304D5DE

l2304D5D6:
	lbu	a0,s0,+00000057
	jal	ra,000000002305C84E

l2304D5DE:
	sb	zero,s1,+00000000
	lbu	a5,s0,+00000057
	c.mv	a0,s1
	sb	a5,s1,+00000001
	jal	ra,00000000230504E0
	c.lwsp	a2,00000020
	sw	zero,s0,+000003E0
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; sm_frame_tx_cfm_handler: 2304D600
sm_frame_tx_cfm_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.li	a0,00000006
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	jal	ra,000000002305070E
	c.lwsp	a2,00000064
	lui	a5,00040030
	c.and	a1,a5
	c.beqz	a1,000000002304D630

l2304D61C:
	c.addi	a0,FFFFFFFB
	c.li	s1,00000001
	bltu	s1,a0,000000002304D630

l2304D624:
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,000000002304A376
	sb	s1,s0,+000002D6

l2304D630:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; sm_init: 2304D63A
;;   Called from:
;;     2304B396 (in me_init)
sm_init proc
	lui	a5,0004201D
	c.li	a1,00000000
	c.li	a0,00000006
	sw	zero,a5,+00000CF0
	jal	zero,000000002305060E

;; sm_get_bss_params: 2304D64A
;;   Called from:
;;     230639F6 (in scanu_start_cfm_handler)
;;     23063D90 (in sm_connect_req_handler)
;;     23063F6A (in me_set_active_cfm_handler)
sm_get_bss_params proc
	c.addi16sp	FFFFFFC0
	c.swsp	s5,00000090
	lui	s5,0004201D
	c.swsp	s0,0000001C
	lw	s0,s5,-00000310
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
	lui	a0,0002307C
	c.li	a5,FFFFFFFF
	sw	zero,a1,+00000000
	addi	a0,a0,-000001F0
	addi	s2,s0,+00000022
	c.mv	s4,a1
	c.swsp	a5,00000084
	c.li	s1,00000000
	jal	ra,0000000023003AC6
	addi	s5,s5,-00000310
	c.mv	s3,s2
	lui	s8,0002307C
	c.li	s7,00000003

l2304D696:
	lhu	a2,s2,+00000000
	c.mv	a1,s1
	addi	a0,s8,-000001D0
	c.addi	s1,00000001
	jal	ra,0000000023003AC6
	c.addi	s2,00000002
	bne	s1,s7,000000002304D696

l2304D6AC:
	lbu	a5,s0,+00000022
	andi	a4,a5,+00000001
	c.bnez	a4,000000002304D6D6

l2304D6B6:
	c.bnez	a5,000000002304D738

l2304D6B8:
	lbu	a5,s0,+00000023
	c.bnez	a5,000000002304D738

l2304D6BE:
	lbu	a5,s0,+00000024
	c.bnez	a5,000000002304D738

l2304D6C4:
	lbu	a5,s0,+00000025
	c.bnez	a5,000000002304D738

l2304D6CA:
	lbu	a5,s0,+00000026
	c.bnez	a5,000000002304D738

l2304D6D0:
	lbu	a5,s0,+00000027
	c.bnez	a5,000000002304D738

l2304D6D6:
	lui	a0,0002307C
	addi	a1,s0,+00000001
	addi	a0,a0,-000001BC
	jal	ra,0000000023003AC6
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,000000002304D0F6
	c.lwsp	a2,00000064
	c.mv	s1,a0
	lui	a0,0002307C
	addi	a0,a0,-000001A8
	jal	ra,0000000023003AC6
	c.beqz	s1,000000002304D752

l2304D700:
	c.lwsp	a2,000000E4
	blt	a5,zero,000000002304D70E

l2304D706:
	sw	s1,s6,+00000000
	sw	a5,s5,+00000014

l2304D70E:
	c.lw	s1,44(a5)
	sw	a5,s4,+00000000

l2304D714:
	lui	a0,0002307C
	addi	a0,a0,-00000178
	jal	ra,0000000023003AC6
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

l2304D738:
	lui	a0,0002307C
	addi	a0,a0,-0000018C
	jal	ra,0000000023003AC6
	c.mv	a0,s3
	sw	s3,s6,+00000000
	jal	ra,000000002304D0F0
	c.mv	s1,a0
	c.bnez	a0,000000002304D70E

l2304D752:
	lhu	a4,s0,+00000028
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	a4,a5,000000002304D714

l2304D75E:
	addi	s0,s0,+00000028
	sw	s0,s4,+00000000
	c.j	000000002304D714

;; sm_scan_bss: 2304D768
;;   Called from:
;;     23063D96 (in sm_connect_req_handler)
sm_scan_bss proc
	c.addi16sp	FFFFFFD0
	lui	a5,0004201D
	c.swsp	s3,0000008C
	lw	s3,a5,-00000310
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
	jal	ra,0000000023050474
	lbu	a5,s3,+0000003D
	c.mv	s0,a0
	sw	zero,a0,+00000148
	sb	a5,a0,+0000014E
	sh	zero,a0,+0000014C
	addi	a2,zero,+00000022
	c.mv	a1,s3
	addi	a0,a0,+000000FC
	jal	ra,000000002306CF80
	c.li	a5,00000001
	sb	a5,s0,+00000150
	addi	a0,s0,+00000140
	c.li	a2,00000006
	c.mv	a1,s2
	bne	s2,zero,000000002304D7CC

l2304D7C4:
	lui	a1,00023082
	addi	a1,a1,+000007F0

l2304D7CC:
	jal	ra,000000002306CF80
	c.beqz	s1,000000002304D800

l2304D7D2:
	c.li	a2,00000006
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002306CF80
	c.li	a5,00000001
	sb	a5,s0,+0000014F

l2304D7E2:
	c.mv	a0,s0
	jal	ra,00000000230504E0
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
	jal	zero,000000002305060E

l2304D800:
	lui	a5,0004201D
	addi	a5,a5,-00000714
	c.swsp	a5,00000004
	lui	a5,0004201D
	addi	a5,a5,-000006C0
	c.swsp	a5,00000084
	lui	a5,0004201D
	lhu	a5,a5,-00000618
	sb	zero,s0,+0000014F
	addi	s2,sp,+00000004
	sh	a5,sp,+00000004
	addi	s3,sp,+00000008
	addi	s5,sp,+00000006
	c.li	s4,00000006

l2304D832:
	c.li	s1,00000000
	c.j	000000002304D862

l2304D836:
	add	a1,s1,s4
	lw	a5,s3,+00000000
	c.add	a1,a5
	lbu	a5,a1,+00000003
	c.andi	a5,00000002
	c.bnez	a5,000000002304D860

l2304D848:
	lbu	a0,s0,+0000014F
	c.li	a2,00000006
	addi	a5,a0,+00000001
	add	a0,a0,s4
	sb	a5,s0,+0000014F
	c.add	a0,s0
	jal	ra,000000002306CF80

l2304D860:
	c.addi	s1,00000001

l2304D862:
	lbu	a5,s2,+00000000
	blt	s1,a5,000000002304D836

l2304D86A:
	c.addi	s2,00000001
	c.addi	s3,00000004
	bne	s2,s5,000000002304D832

l2304D872:
	c.j	000000002304D7E2

;; sm_join_bss: 2304D874
;;   Called from:
;;     23063A04 (in scanu_start_cfm_handler)
;;     23063BAC (in scanu_join_cfm_handler)
;;     23063D86 (in sm_connect_req_handler)
;;     23063F74 (in me_set_active_cfm_handler)
sm_join_bss proc
	c.addi	sp,FFFFFFE0
	c.swsp	s5,00000080
	c.mv	s5,a0
	c.lui	a0,00001000
	addi	a3,zero,+00000154
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	lui	s1,0004201D
	c.mv	s4,a1
	c.mv	s2,a2
	c.li	a1,00000004
	c.li	a2,00000006
	c.addi	a0,00000002
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	lw	s3,s1,-00000310
	jal	ra,0000000023050474
	c.mv	a1,s4
	c.li	a2,00000006
	c.mv	s0,a0
	c.li	s4,00000001
	jal	ra,000000002306CF80
	addi	a2,zero,+00000022
	c.mv	a1,s3
	sb	s4,s0,+0000014F
	addi	a0,s0,+000000FC
	jal	ra,000000002306CF80
	sb	s4,s0,+00000150
	sh	zero,s0,+0000014C
	sw	zero,s0,+00000148
	lbu	a5,s3,+0000003D
	c.li	a2,00000006
	c.mv	a1,s5
	sb	a5,s0,+0000014E
	addi	a0,s0,+00000140
	jal	ra,000000002306CF80
	addi	s1,s1,-00000310
	beq	s2,zero,000000002304D8F4

l2304D8E8:
	lbu	a5,s0,+00000003
	ori	a5,a5,+00000001
	sb	a5,s0,+00000003

l2304D8F4:
	c.mv	a0,s0
	sb	s2,s1,+00000010
	jal	ra,00000000230504E0
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
	jal	zero,000000002305060E

;; sm_add_chan_ctx: 2304D916
;;   Called from:
;;     23063AD4 (in scanu_join_cfm_handler)
sm_add_chan_ctx proc
	lui	a5,0004201D
	lw	a5,a5,-00000310
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	lbu	a5,a5,+0000003D
	addi	a3,zero,+000005D8
	lui	a4,0004201C
	add	a5,a5,a3
	addi	a4,a4,-00000308
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
	lui	a4,0004201C
	addi	a4,a4,+00000098
	c.add	a5,a4
	c.lw	a5,8(a5)
	c.swsp	a5,00000004
	lb	a5,a3,+00000004
	sb	a5,sp,+0000000C
	jal	ra,000000002305C242
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; sm_send_next_bss_param: 2304D978
;;   Called from:
;;     2304DB50 (in sm_set_bss_param)
;;     2306395A (in me_set_ps_disable_cfm_handler)
;;     2306398E (in mm_bss_param_setting_handler)
sm_send_next_bss_param proc
	lui	a0,0004201D
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000308
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002305003A
	c.mv	s0,a0
	c.bnez	a0,000000002304D9A6

l2304D98E:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+000001A0
	addi	a1,a1,+00000388
	addi	a0,a0,-000000E8
	jal	ra,0000000023054FF4

l2304D9A6:
	addi	a0,s0,+0000000C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230504E0

;; sm_set_bss_param: 2304D9B4
;;   Called from:
;;     23064072 (in mm_sta_add_cfm_handler)
sm_set_bss_param proc
	c.addi16sp	FFFFFFD0
	lui	a5,0004201D
	c.swsp	s2,00000010
	lw	s2,a5,-00000310
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
	jal	ra,0000000023050474
	c.mv	s0,a0
	c.li	a3,00000007
	c.li	a2,00000006
	c.li	a1,00000000
	c.li	a0,00000018
	jal	ra,0000000023050474
	c.mv	s8,a0
	c.li	a3,00000008
	c.li	a2,00000006
	c.li	a1,00000000
	c.li	a0,00000016
	jal	ra,0000000023050474
	c.mv	s5,a0
	c.li	a3,00000004
	c.li	a2,00000006
	c.li	a1,00000000
	c.li	a0,00000014
	jal	ra,0000000023050474
	c.li	a3,00000002
	c.mv	s7,a0
	c.li	a2,00000006
	c.li	a1,00000005
	addi	a0,s1,+00000411
	jal	ra,0000000023050474
	lui	s1,0004201D
	c.mv	s4,a0
	addi	a0,s1,-00000308
	jal	ra,000000002304FFB4
	c.li	a5,00000001
	sb	a5,s0,+00000000
	lbu	a5,s2,+0000003D
	addi	a1,s0,-0000000C
	addi	a0,s1,-00000308
	sb	a5,s0,+00000001
	jal	ra,000000002304FFBE
	addi	a0,zero,+000005D8
	add	s3,s3,a0
	lui	s6,0004201C
	addi	s6,s6,-00000308
	c.li	a2,00000006
	c.mv	a0,s8
	add	s0,s6,s3
	addi	a1,s0,+00000378
	jal	ra,000000002306CF80
	lbu	a5,s2,+0000003D
	addi	a1,s8,-0000000C
	addi	a0,s1,-00000308
	sb	a5,s8,+00000006
	jal	ra,000000002304FFBE
	lw	a5,s0,+000003A4
	addi	a0,s3,+000003B0
	c.li	a1,00000001
	lbu	a5,a5,+00000002
	c.add	a0,s6
	lui	s6,00023082
	sb	a5,s5,+00000005
	jal	ra,00000000230619EA
	sw	a0,s5,+00000000
	lbu	a5,s2,+0000003D
	addi	a1,s5,-0000000C
	addi	a0,s1,-00000308
	sb	a5,s5,+00000004
	jal	ra,000000002304FFBE
	lhu	a5,s0,+000003AC
	addi	a1,s7,-0000000C
	addi	a0,s1,-00000308
	sh	a5,s7,+00000000
	lbu	a5,s2,+0000003D
	lui	s5,0004201A
	c.li	s3,00000000
	sb	a5,s7,+00000002
	jal	ra,000000002304FFBE
	addi	s5,s5,+000007B8
	c.mv	s8,s0
	addi	s6,s6,+000007EC
	c.li	s7,00000004

l2304DADE:
	c.li	a3,00000008
	c.li	a2,00000006
	c.li	a1,00000000
	c.li	a0,0000001A
	jal	ra,0000000023050474
	lw	a5,s0,+000003C4
	sb	s3,a0,+00000005
	c.sw	a0,0(a5)
	lbu	a5,s2,+0000003D
	sb	a5,a0,+00000006
	lw	a4,s5,+00000020
	c.li	a5,00000000
	c.beqz	a4,000000002304DB1E

l2304DB04:
	lb	a4,s8,+000003C0
	bge	a4,zero,000000002304DB1E

l2304DB0C:
	add	a5,s3,s6
	lbu	a5,a5,+00000000
	lbu	a4,s2,+0000003C
	c.and	a5,a4
	sltu	a5,zero,a5

l2304DB1E:
	sb	a5,a0,+00000004
	addi	a1,a0,-0000000C
	c.addi	s3,00000001
	addi	a0,s1,-00000308
	jal	ra,000000002304FFBE
	c.addi	s0,00000004
	bne	s3,s7,000000002304DADE

l2304DB36:
	c.li	a5,00000001
	sb	a5,s4,+00000000
	lbu	a5,s2,+0000003D
	addi	a1,s4,-0000000C
	addi	a0,s1,-00000308
	sb	a5,s4,+00000001
	jal	ra,000000002304FFBE
	jal	ra,000000002304D978
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
	jal	zero,000000002305060E

;; sm_disconnect_process: 2304DB72
;;   Called from:
;;     2304DBC6 (in sm_deauth_cfm)
;;     2304DCE4 (in sm_disconnect)
;;     2304E4E2 (in sm_deauth_handler)
;;     23063A5C (in mm_connection_loss_ind_handler)
;;     23063CE6 (in sm_connect_req_handler)
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
	jal	ra,0000000023050474
	c.mv	s0,a0
	c.mv	a0,s1
	jal	ra,000000002304D54C
	sh	s2,s0,+00000000
	lbu	a5,s1,+00000057
	sb	a5,s0,+00000002
	lui	a5,0004201D
	lbu	a5,a5,-000002FF
	c.beqz	a5,000000002304DBB4

l2304DBAE:
	c.li	a5,00000001
	sb	a5,s0,+00000003

l2304DBB4:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,00000000230504E0

;; sm_deauth_cfm: 2304DBC4
sm_deauth_cfm proc
	c.li	a1,00000000
	jal	zero,000000002304DB72

;; sm_disconnect: 2304DBCA
;;   Called from:
;;     230640AC (in sm_disconnect_req_handler)
sm_disconnect proc
	addi	a5,zero,+000005D8
	add	a5,a0,a5
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004201C
	addi	s0,s0,-00000308
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.add	s0,a5
	lbu	a5,s0,+00000056
	bne	a5,zero,000000002304DCEE

l2304DBF6:
	lbu	a5,s0,+00000058
	beq	a5,zero,000000002304DCEE

l2304DBFE:
	c.mv	s5,a1
	c.mv	s4,a0
	c.li	a1,00000008
	c.li	a0,00000006
	lbu	s6,s0,+00000060
	jal	ra,000000002305060E
	lw	a5,s0,+000003A4
	addi	a1,zero,+00000100
	lbu	a0,a5,+00000002
	sltu	a0,zero,a0
	jal	ra,000000002304A24A
	c.mv	s1,a0
	c.beqz	a0,000000002304DCE8

l2304DC26:
	c.mv	a1,a0
	c.mv	a0,s0
	jal	ra,0000000023049514
	lw	s2,s1,+00000068
	addi	a5,zero,-00000040
	lui	s3,0004201B
	sb	a5,s2,+0000014C
	addi	a5,zero,+000001B0
	add	s6,s6,a5
	addi	s3,s3,-000007F8
	c.li	a2,00000006
	sb	zero,s2,+0000014D
	sb	zero,s2,+0000014E
	sb	zero,s2,+0000014F
	addi	a0,s2,+00000150
	c.add	s3,s6
	c.addi	s3,0000001E
	c.mv	a1,s3
	jal	ra,000000002306CF80
	c.li	a2,00000006
	addi	a1,s0,+00000050
	addi	a0,s2,+00000156
	jal	ra,000000002306CF80
	c.li	a2,00000006
	c.mv	a1,s3
	addi	a0,s2,+0000015C
	jal	ra,000000002306CF80
	jal	ra,000000002304D52E
	sb	a0,s2,+00000162
	lui	a5,0002304E
	c.srli	a0,00000008
	sb	a0,s2,+00000163
	addi	a5,a5,-0000043C
	sw	a5,s1,+000002CC
	sw	s0,s1,+000002D0
	sb	s4,s1,+0000002F
	lbu	a5,s0,+00000060
	c.mv	a1,s5
	addi	a0,s2,+00000164
	sb	a5,s1,+00000030
	jal	ra,0000000023060198
	c.lw	s1,108(a4)
	c.li	a1,00000003
	c.lw	a4,20(a5)
	c.addi	a5,00000017
	c.add	a5,a0
	c.addi	a0,0000001C
	c.sw	a4,28(a0)
	c.sw	a4,24(a5)
	c.mv	a0,s1
	jal	ra,000000002304A376
	c.bnez	a0,000000002304DCEE

l2304DCCC:
	lw	a0,s1,+000002D0
	c.li	a1,00000000

l2304DCD2:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	jal	zero,000000002304DB72

l2304DCE8:
	c.li	a1,00000000
	c.mv	a0,s0
	c.j	000000002304DCD2

l2304DCEE:
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

;; sm_connect_ind: 2304DD02
;;   Called from:
;;     2304DE90 (in sm_supplicant_deauth_cfm)
;;     2304E010 (in sm_auth_send)
;;     2304E1AC (in sm_assoc_req_send)
;;     2304E28A (in sm_auth_handler)
;;     2304E2E6 (in sm_auth_handler)
;;     2304E446 (in sm_assoc_rsp_handler)
;;     2304E49A (in sm_deauth_handler)
;;     2304E52C (in sm_handle_supplicant_result)
;;     230639AC (in sm_rsp_timeout_ind_handler)
;;     23063A12 (in scanu_start_cfm_handler)
;;     23063B94 (in scanu_join_cfm_handler)
;;     23063BB4 (in scanu_join_cfm_handler)
;;     23063EFE (in mm_set_vif_state_cfm_handler)
;;     2306408C (in mm_sta_add_cfm_handler)
sm_connect_ind proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	lui	s2,0004201D
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s5,00000088
	c.swsp	s7,00000084
	addi	a5,s2,-00000310
	lw	s5,a5,+00000000
	c.lw	a5,4(s0)
	lw	s7,a5,+00000014
	lbu	s3,s5,+0000003D
	addi	a5,zero,+000005D8
	lui	s4,0004201C
	add	a5,s3,a5
	addi	s1,s4,-00000308
	c.li	a2,00000006
	c.mv	s6,a0
	sb	s3,s0,+00000009
	addi	a0,s0,+00000002
	addi	s2,s2,-00000310
	addi	s4,s4,-00000308
	c.add	s1,a5
	addi	a1,s1,+00000378
	jal	ra,000000002306CF80
	lbu	a5,s1,+00000060
	lui	a0,0002307C
	c.mv	a1,s0
	sb	a5,s0,+0000000A
	c.lw	s1,64(a2)
	addi	a0,a0,-00000298
	jal	ra,0000000023003AC6
	c.lw	s1,64(a5)
	sb	zero,s0,+0000000B
	c.beqz	a5,000000002304DE12

l2304DD7A:
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

l2304DDAC:
	addi	a5,zero,+000005D8
	add	a5,s3,a5
	c.li	a3,00000000
	c.add	a5,s4
	lw	a4,a5,+000003E0
	c.andi	a4,00000001
	sb	a4,s0,+0000000C
	c.beqz	a4,000000002304DDC8

l2304DDC4:
	lbu	a3,a5,+000003C1

l2304DDC8:
	sb	a3,s0,+0000000D
	sb	zero,s0,+00000008
	bne	s6,zero,000000002304DE28

l2304DDD4:
	c.li	a1,00000000
	c.li	a0,00000006
	jal	ra,000000002305060E

l2304DDDC:
	lw	a0,s2,+00000000
	c.addi	a0,FFFFFFF4
	jal	ra,000000002305056C
	sw	zero,s2,+00000000
	sb	zero,s2,+00000011
	sh	s6,s0,+00000000
	c.mv	a0,s0
	jal	ra,00000000230504E0
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

l2304DE12:
	sb	zero,s0,+00000336
	sh	zero,s0,+00000338
	sw	zero,s0,+0000033C
	sw	zero,s0,+00000340
	sb	zero,s0,+0000033A
	c.j	000000002304DDAC

l2304DE28:
	c.li	a1,00000008
	c.li	a0,00000006
	jal	ra,000000002305060E
	lui	a0,0002307C
	c.mv	a2,s7
	addi	a1,s5,+00000001
	addi	a0,a0,-00000278
	jal	ra,0000000023003AC6
	blt	s7,zero,000000002304DE60

l2304DE46:
	lui	a0,0002307C
	addi	a0,a0,-0000024C
	jal	ra,0000000023003AC6
	c.mv	a1,s7
	c.mv	a0,s5
	jal	ra,000000002304D180
	c.li	a5,FFFFFFFF
	sw	a5,s2,+00000014

l2304DE60:
	addi	a0,zero,+000005D8
	add	a0,s3,a0
	c.add	a0,s4
	jal	ra,000000002304D54C
	c.j	000000002304DDDC

;; sm_supplicant_deauth_cfm: 2304DE70
sm_supplicant_deauth_cfm proc
	slli	a5,a1,00000008
	c.li	a0,00000008
	blt	a5,zero,000000002304DE90

l2304DE7A:
	lui	a0,0002307C
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000000DC
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000020
	c.li	a0,00000008
	c.addi	sp,00000010

l2304DE90:
	jal	zero,000000002304DD02

;; sm_auth_send: 2304DE94
;;   Called from:
;;     2304E270 (in sm_auth_handler)
;;     23063F96 (in me_set_active_cfm_handler)
sm_auth_send proc
	c.addi16sp	FFFFFFD0
	lui	a5,0004201D
	c.swsp	s4,0000000C
	lw	s4,a5,-00000310
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
	lui	s2,0004201C
	add	a5,a5,a4
	addi	s2,s2,-00000308
	c.mv	s5,a0
	c.mv	s6,a1
	addi	a1,zero,+00000100
	c.add	s2,a5
	lw	a5,s2,+000003A4
	lbu	s7,s2,+00000060
	lbu	a0,a5,+00000002
	sltu	a0,zero,a0
	jal	ra,000000002304A24A
	beq	a0,zero,000000002304DFFA

l2304DEE6:
	c.mv	s0,a0
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,0000000023049514
	c.lw	s0,104(s1)
	addi	a5,zero,-00000050
	lui	s3,0004201B
	sb	a5,s1,+0000014C
	addi	a5,zero,+000001B0
	add	s7,s7,a5
	addi	s3,s3,-000007F8
	sb	zero,s1,+0000014D
	sb	zero,s1,+0000014E
	sb	zero,s1,+0000014F
	c.li	a2,00000006
	addi	a0,s1,+00000150
	c.add	s3,s7
	c.addi	s3,0000001E
	c.mv	a1,s3
	jal	ra,000000002306CF80
	addi	a1,s2,+00000050
	c.li	a2,00000006
	addi	a0,s1,+00000156
	jal	ra,000000002306CF80
	c.li	a2,00000006
	c.mv	a1,s3
	addi	a0,s1,+0000015C
	jal	ra,000000002306CF80
	jal	ra,000000002304D52E
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
	bne	a4,a5,000000002304DF8E

l2304DF76:
	c.li	a5,00000003
	bne	s5,a5,000000002304DF8E

l2304DF7C:
	c.li	a2,00000018
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002304EEE0
	lbu	a5,s0,+0000005E
	addi	s2,a5,+00000018

l2304DF8E:
	lbu	a1,s4,+0000003B
	c.mv	a2,s5
	c.mv	a4,s6
	c.li	a3,00000000
	add	a0,s1,s2
	jal	ra,0000000023060142
	lbu	a5,s0,+00000060
	c.lw	s0,108(a4)
	sw	s0,s0,+000002D0
	c.add	a5,s2
	c.add	a0,a5
	lui	a5,0002304D
	addi	a5,a5,+00000600
	sw	a5,s0,+000002CC
	c.lw	a4,20(a5)
	c.li	a1,00000003
	c.addi	a5,FFFFFFFF
	c.add	a5,a0
	c.addi	a0,00000004
	c.sw	a4,28(a0)
	c.sw	a4,24(a5)
	c.mv	a0,s0
	jal	ra,000000002304A376
	c.lui	a0,00002000
	c.li	a1,00000006
	addi	a0,a0,-000007FA
	lui	a2,00000032
	jal	ra,000000002305098E
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
	jal	zero,000000002305060E

l2304DFFA:
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
	jal	zero,000000002304DD02

;; sm_assoc_req_send: 2304E014
;;   Called from:
;;     2304E234 (in sm_auth_handler)
;;     23063F8C (in me_set_active_cfm_handler)
sm_assoc_req_send proc
	c.addi16sp	FFFFFFC0
	c.swsp	s7,0000008C
	lui	s7,0004201D
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
	addi	s7,s7,-00000310
	lw	s6,s7,+00000000
	addi	s4,zero,+000005D8
	lui	s5,0004201C
	lbu	s2,s6,+0000003D
	addi	s1,s5,-00000308
	addi	a1,zero,+00000100
	add	s4,s2,s4
	c.add	s1,s4
	lw	a5,s1,+000003A4
	lbu	s9,s1,+00000060
	lbu	a0,a5,+00000002
	sltu	a0,zero,a0
	jal	ra,000000002304A24A
	beq	a0,zero,000000002304E1AA

l2304E06C:
	c.mv	s0,a0
	c.mv	a1,a0
	c.mv	a0,s1
	lw	s8,s7,+00000004
	jal	ra,0000000023049514
	lbu	a5,s7,+00000011
	c.lw	s0,104(s1)
	addi	s5,s5,-00000308
	c.li	s7,00000000
	addi	s10,s1,+0000014C
	c.beqz	a5,000000002304E098

l2304E08C:
	lui	s7,0004201D
	addi	a5,zero,+00000020
	addi	s7,s7,-000002F8

l2304E098:
	sb	a5,s1,+0000014C
	addi	a5,zero,+000001B0
	add	s9,s9,a5
	lui	s3,0004201B
	addi	s3,s3,-000007F8
	c.li	a2,00000006
	sb	zero,s1,+0000014D
	sb	zero,s1,+0000014E
	sb	zero,s1,+0000014F
	addi	a0,s1,+00000150
	c.add	s3,s9
	c.addi	s3,0000001E
	c.mv	a1,s3
	jal	ra,000000002306CF80
	addi	a5,zero,+000005D8
	add	s2,s2,a5
	c.li	a2,00000006
	addi	a0,s1,+00000156
	c.add	s2,s5
	addi	a1,s2,+00000050
	jal	ra,000000002306CF80
	c.li	a2,00000006
	c.mv	a1,s3
	addi	a0,s1,+0000015C
	jal	ra,000000002306CF80
	jal	ra,000000002304D52E
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
	jal	ra,00000000230601A6
	lbu	a5,s2,+00000057
	c.lw	s0,108(a4)
	c.lwsp	a2,000000A4
	sb	a5,s0,+0000002F
	lbu	a5,s2,+00000060
	sw	s0,s0,+000002D0
	sub	a3,a3,s8
	sb	a5,s0,+00000030
	lui	a5,0002304D
	addi	a5,a5,+00000600
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

l2304E152:
	bne	a5,a4,000000002304E19A

l2304E156:
	lhu	a5,sp,+0000000A
	c.li	a1,00000003
	c.mv	a0,s0
	sh	a5,s8,+0000000E
	jal	ra,000000002304A376
	c.lui	a0,00002000
	c.li	a1,00000006
	addi	a0,a0,-000007FA
	lui	a2,00000032
	jal	ra,000000002305098E
	c.li	a1,00000006
	c.li	a0,00000006
	jal	ra,000000002305060E

l2304E17E:
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

l2304E19A:
	add	a2,a3,a5
	lbu	a2,a2,+00000000
	c.addi	a5,00000001
	sb	a2,a5,+00000013
	c.j	000000002304E152

l2304E1AA:
	c.li	a0,00000004
	jal	ra,000000002304DD02
	c.j	000000002304E17E

;; sm_assoc_done: 2304E1B2
;;   Called from:
;;     2304E382 (in sm_assoc_rsp_handler)
sm_assoc_done proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	a5,0004201D
	c.mv	s1,a0
	c.li	a1,00000000
	c.li	a3,00000004
	c.li	a2,00000006
	c.li	a0,0000001E
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lw	s0,a5,-00000310
	jal	ra,0000000023050474
	c.li	a4,00000001
	sh	s1,a0,+00000000
	sb	a4,a0,+00000002
	lbu	a4,s0,+0000003D
	sb	a4,a0,+00000003
	jal	ra,00000000230504E0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a1,00000007
	c.li	a0,00000006
	c.addi	sp,00000010
	jal	zero,000000002305060E

;; sm_auth_handler: 2304E1F6
;;   Called from:
;;     23063DCE (in rxu_mgt_ind_handler)
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
	jal	ra,0000000023050AC2
	lbu	a1,s1,+00000005
	lbu	a5,s1,+00000004
	c.slli	a1,08
	c.or	a1,a5
	c.bnez	a1,000000002304E2AE

l2304E21E:
	lbu	a5,s0,+0000001D
	lbu	a4,s0,+0000001C
	c.slli	a5,08
	c.or	a5,a4
	c.bnez	a5,000000002304E238

l2304E22C:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002304E014

l2304E238:
	c.li	a4,00000001
	bne	a5,a4,000000002304E2EA

l2304E23E:
	lbu	a5,s1,+00000003
	lbu	a4,s1,+00000002
	c.slli	a5,08
	c.or	a5,a4
	c.li	a4,00000004
	beq	a5,a4,000000002304E22C

l2304E250:
	c.li	a4,00000002
	bne	a5,a4,000000002304E288

l2304E256:
	lhu	a1,s0,+00000000
	addi	a5,zero,+00000087
	bgeu	a5,a1,000000002304E274

l2304E262:
	addi	a1,s0,+00000024
	c.li	a0,00000003

l2304E268:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002304DE94

l2304E274:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,0002307C
	addi	a0,a0,-000002F8
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

l2304E288:
	c.li	a0,00000003
	jal	ra,000000002304DD02
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a1,0002307B
	lui	a0,0002307D
	addi	a2,zero,+00000374
	addi	a1,a1,+00000388
	addi	a0,a0,-0000024C
	c.addi	sp,00000010
	jal	zero,0000000023054FF6

l2304E2AE:
	lui	a5,0004201D
	lw	a5,a5,-00000310
	c.li	a4,00000001
	lbu	a3,a5,+0000003B
	bne	a3,a4,000000002304E2D0

l2304E2C0:
	lbu	a4,a5,+00000140
	c.beqz	a4,000000002304E2D0

l2304E2C6:
	sb	zero,a5,+0000003B
	c.li	a1,00000000
	c.li	a0,00000001
	c.j	000000002304E268

l2304E2D0:
	lui	a0,0002307C
	addi	a0,a0,-000002D0
	jal	ra,0000000023003AC6
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a0,00000002
	c.addi	sp,00000010
	jal	zero,000000002304DD02

l2304E2EA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; sm_assoc_rsp_handler: 2304E2F4
;;   Called from:
;;     23063DF0 (in rxu_mgt_ind_handler)
sm_assoc_rsp_handler proc
	c.addi16sp	FFFFFFC0
	lui	a5,0004201D
	c.swsp	s2,00000018
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s5,00000090
	c.swsp	ra,0000009C
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	addi	a5,a5,-00000310
	lw	s6,a5,+00000004
	c.lw	a5,0(a5)
	addi	a4,zero,+000005D8
	lui	s1,0004201C
	lbu	s7,a5,+0000003D
	addi	s2,a0,+0000001C
	c.mv	s5,a0
	add	a4,s7,a4
	addi	a5,s1,-00000308
	c.lui	a0,00002000
	c.li	a1,00000006
	addi	a0,a0,-000007FA
	sb	zero,sp,+0000000E
	c.add	a5,a4
	lbu	s4,a5,+00000060
	jal	ra,0000000023050AC2
	lbu	s0,s2,+00000003
	lbu	a5,s2,+00000002
	c.slli	s0,08
	c.or	s0,a5
	c.bnez	s0,000000002304E436

l2304E354:
	lhu	a4,s5,+00000000
	c.li	a5,00000005
	addi	s1,s1,-00000308
	bgeu	a5,a4,000000002304E36A

l2304E362:
	addi	s0,a4,-00000006
	c.slli	s0,10
	c.srli	s0,00000010

l2304E36A:
	lbu	a0,s2,+00000005
	lbu	a5,s2,+00000004
	addi	a1,zero,+000005D8
	c.slli	a0,08
	c.or	a0,a5
	c.slli	a0,12
	c.srli	a0,00000012
	add	s3,s7,a1
	jal	ra,000000002304E1B2
	addi	a4,zero,+000001B0
	lui	a0,0004201B
	addi	a0,a0,-000007F8
	add	a4,s4,a4
	c.add	a0,a4
	jal	ra,0000000023061CFC
	add	a0,s1,s3
	lw	a5,a0,+000003A4
	addi	a2,sp,+0000000E
	addi	a1,sp,+0000000F
	lbu	a4,a5,+00000004
	lbu	a5,a0,+000003DC
	c.sub	a4,a5
	sb	a4,sp,+0000000F
	jal	ra,0000000023049456
	lhu	a3,s6,+0000000E
	addi	a5,s6,+00000014
	c.li	a4,00000000
	c.add	a3,a5

l2304E3CA:
	bne	s0,a4,000000002304E422

l2304E3CE:
	addi	a5,zero,+000005D8
	add	a5,s7,a5
	sh	s0,s6,+00000010
	c.lui	a3,00013000
	addi	a3,a3,-00000600
	c.add	a5,s1
	lw	a4,a5,+000003E8
	c.and	a4,a3
	c.beqz	a4,000000002304E40C

l2304E3EA:
	lbu	a2,a5,+0000037E
	addi	a4,s3,+00000050
	addi	a3,s3,+00000378
	addi	a1,s3,+0000037F
	lui	a0,0004201D
	c.add	a4,s1
	c.add	a3,s1
	c.add	a1,s1
	addi	a0,a0,-00000610
	jal	ra,0000000023050FB0

l2304E40C:
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

l2304E422:
	add	a5,s5,a4
	lbu	a2,a5,+00000022
	add	a5,a3,a4
	c.addi	a4,00000001
	sb	a2,a5,+00000000
	c.j	000000002304E3CA

l2304E436:
	lui	a0,0002307C
	c.mv	a1,s0
	addi	a0,a0,-0000032C
	jal	ra,0000000023003AC6
	c.li	a0,00000005
	jal	ra,000000002304DD02
	c.j	000000002304E40C

;; sm_deauth_handler: 2304E44C
;;   Called from:
;;     23063E1E (in rxu_mgt_ind_handler)
sm_deauth_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	lui	a5,0004201D
	lbu	s1,a0,+00000008
	c.mv	s2,a0
	c.li	a0,00000006
	lw	s0,a5,-00000310
	jal	ra,000000002305070E
	c.li	a5,00000008
	bne	a0,a5,000000002304E484

l2304E472:
	c.li	s3,00000002

l2304E474:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s3
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2304E484:
	c.li	a0,00000006
	jal	ra,000000002305070E
	c.beqz	a0,000000002304E4A2

l2304E48C:
	lbu	a4,s0,+0000003D
	lbu	a5,s2,+00000008
	bne	a4,a5,000000002304E472

l2304E498:
	c.li	a0,00000006
	jal	ra,000000002304DD02
	c.li	s3,00000000
	c.j	000000002304E474

l2304E4A2:
	addi	a5,zero,+000005D8
	add	s1,s1,a5
	lui	s0,0004201C
	addi	s0,s0,-00000308
	c.li	s3,00000000
	c.add	s0,s1
	lbu	a5,s0,+00000058
	c.beqz	a5,000000002304E474

l2304E4BC:
	lbu	s1,s2,+0000001D
	lbu	a5,s2,+0000001C
	c.li	a1,00000008
	c.li	a0,00000006
	c.slli	s1,08
	c.or	s1,a5
	jal	ra,000000002305060E
	lui	a0,0002307C
	c.mv	a1,s1
	addi	a0,a0,-0000021C
	jal	ra,0000000023003AC6
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002304DB72
	c.j	000000002304E474

;; sm_handle_supplicant_result: 2304E4E8
;;   Called from:
;;     2305178E (in keyMgmtKeyGroupTxDone.isra.1)
;;     2305217A (in keyMgmtStaRsnSecuredTimeoutHandler)
sm_handle_supplicant_result proc
	addi	a4,zero,+000001B0
	add	a4,a0,a4
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	lui	s3,0004201B
	addi	a5,s3,-000007F8
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.add	a5,a4
	lbu	s6,a5,+0000001A
	c.bnez	a1,000000002304E530

l2304E512:
	c.li	a4,00000002
	sb	a4,a5,+00000031
	c.li	a0,00000000

l2304E51A:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	jal	zero,000000002304DD02

l2304E530:
	c.li	a5,0000000F
	c.mv	s4,a1
	addi	s3,s3,-000007F8
	c.mv	s5,a0
	bne	a1,a5,000000002304E54A

l2304E53E:
	lui	a0,0002307C
	addi	a0,a0,-00000158
	jal	ra,0000000023003AC6

l2304E54A:
	addi	a5,zero,+000005D8
	add	a5,s6,a5
	lui	s2,0004201C
	addi	s2,s2,-00000308
	addi	a1,zero,+00000100
	c.add	s2,a5
	lw	a5,s2,+000003A4
	lbu	a0,a5,+00000002
	sltu	a0,zero,a0
	jal	ra,000000002304A24A
	c.mv	s1,a0
	c.beqz	a0,000000002304E610

l2304E574:
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,0000000023049514
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
	jal	ra,000000002306CF80
	c.li	a2,00000006
	addi	a1,s2,+00000050
	addi	a0,s0,+00000156
	jal	ra,000000002306CF80
	c.li	a2,00000006
	c.mv	a1,s3
	addi	a0,s0,+0000015C
	jal	ra,000000002306CF80
	jal	ra,000000002304D52E
	sb	a0,s0,+00000162
	lui	a5,0002304E
	c.srli	a0,00000008
	sb	a0,s0,+00000163
	addi	a5,a5,-00000190
	sw	a5,s1,+000002CC
	c.mv	a1,s4
	sw	s2,s1,+000002D0
	sb	s6,s1,+0000002F
	sb	s5,s1,+00000030
	addi	a0,s0,+00000164
	jal	ra,0000000023060198
	c.lw	s1,108(a4)
	c.li	a1,00000003
	c.lw	a4,20(a5)
	c.addi	a5,00000017
	c.add	a5,a0
	c.addi	a0,0000001C
	c.sw	a4,28(a0)
	c.sw	a4,24(a5)
	c.mv	a0,s1
	jal	ra,000000002304A376
	c.bnez	a0,000000002304E614

l2304E60C:
	c.li	a0,00000009
	c.j	000000002304E51A

l2304E610:
	c.li	a0,0000000A
	c.j	000000002304E51A

l2304E614:
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

;; txu_cntrl_sec_hdr_append: 2304E628
;;   Called from:
;;     2304E86C (in txu_cntrl_frame_build)
;;     2304EF2A (in txu_cntrl_protect_mgmt_frame)
txu_cntrl_sec_hdr_append proc
	lbu	a5,a0,+00000030
	addi	a3,zero,+000001B0
	lui	a4,0004201B
	add	a5,a5,a3
	addi	a4,a4,-000007F8
	lbu	a6,a0,+0000002F
	c.add	a4,a5
	lw	a5,a4,+000000AC
	c.lw	a5,0(a5)
	c.beqz	a5,000000002304E6CC

l2304E64A:
	addi	a7,zero,+000005D8
	add	a6,a6,a7
	lui	a3,0004201C
	addi	a3,a3,-00000308
	c.add	a3,a6
	lw	a3,a3,+000005C4
	c.andi	a3,00000002
	c.beqz	a3,000000002304E682

l2304E664:
	lhu	a6,a0,+00000020
	slli	a3,a6,00000008
	srli	a6,a6,00000008
	or	a3,a3,a6
	lhu	a6,a4,+00000038
	slli	a4,a3,00000010
	c.srli	a4,00000010
	beq	a6,a4,000000002304E6CC

l2304E682:
	lbu	a4,a5,+00000060
	c.li	a3,00000001
	beq	a4,a3,000000002304E6D0

l2304E68C:
	c.beqz	a4,000000002304E69A

l2304E68E:
	c.li	a3,00000002
	beq	a4,a3,000000002304E718

l2304E694:
	c.li	a3,00000003
	bne	a4,a3,000000002304E6B4

l2304E69A:
	lhu	a4,a0,+00000022
	c.addi	a1,FFFFFFFC
	sh	a4,a1,+00000000
	lbu	a4,a5,+00000061
	lhu	a3,a0,+00000024
	c.slli	a4,0E
	c.or	a4,a3
	sh	a4,a1,+00000002

l2304E6B4:
	c.beqz	a2,000000002304E72E

l2304E6B6:
	c.lw	a0,84(a4)

l2304E6B8:
	c.lw	a4,12(a3)
	lbu	a5,a5,+00000062
	lui	a2,00000100
	addi	a2,a2,-00000400
	c.and	a3,a2
	c.or	a5,a3
	c.sw	a4,12(a5)

l2304E6CC:
	c.mv	a0,a1
	c.jr	ra

l2304E6D0:
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

l2304E702:
	sh	a4,a1,+00000002
	lhu	a4,a0,+00000024
	sh	a4,a1,+00000004
	lhu	a4,a0,+00000026
	sh	a4,a1,+00000006
	c.j	000000002304E6B4

l2304E718:
	lhu	a4,a0,+00000022
	c.addi	a1,FFFFFFF8
	c.lui	a3,00002000
	sh	a4,a1,+00000000
	lbu	a4,a5,+00000061
	c.slli	a4,0E
	c.or	a4,a3
	c.j	000000002304E702

l2304E72E:
	c.lw	a0,104(a4)
	addi	a4,a4,+000000F0
	c.j	000000002304E6B8

;; txu_cntrl_sechdr_len_compute: 2304E736
;;   Called from:
;;     2304EC6E (in txu_cntrl_push)
;;     2304EEF6 (in txu_cntrl_protect_mgmt_frame)
txu_cntrl_sechdr_len_compute proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a5,a0,+00000030
	addi	a6,zero,+000001B0
	lui	a4,0004201B
	add	a5,a5,a6
	addi	a4,a4,-000007F8
	lbu	a2,a0,+0000002F
	c.li	s0,00000000
	c.add	a5,a4
	lw	a5,a5,+000000AC
	c.lw	a5,0(a5)
	sw	zero,a1,+00000000
	c.beqz	a5,000000002304E7EC

l2304E764:
	addi	a7,zero,+000005D8
	add	a2,a2,a7
	lui	a3,0004201C
	addi	a3,a3,-00000308
	c.add	a3,a2
	lw	a2,a3,+000005C4
	c.andi	a2,00000002
	c.beqz	a2,000000002304E7A4

l2304E77E:
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
	beq	a2,a4,000000002304E7EC

l2304E7A4:
	lbu	a4,a5,+00000060
	c.li	a3,00000001
	beq	a4,a3,000000002304E7F6

l2304E7AE:
	c.beqz	a4,000000002304E7BE

l2304E7B0:
	c.li	a3,00000002
	beq	a4,a3,000000002304E826

l2304E7B6:
	c.li	a3,00000003
	c.li	s0,00000000
	bne	a4,a3,000000002304E7EC

l2304E7BE:
	c.li	a4,00000004
	c.sw	a1,0(a4)
	lhu	a4,a0,+00000032
	c.li	s0,00000004
	c.andi	a4,00000001
	c.bnez	a4,000000002304E7EC

l2304E7CC:
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
	jal	ra,000000002306CF80

l2304E7EC:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2304E7F6:
	c.li	a4,0000000C

l2304E7F8:
	c.sw	a1,0(a4)
	lhu	a4,a0,+00000032
	c.andi	a4,00000001
	c.bnez	a4,000000002304E822

l2304E802:
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
	jal	ra,000000002306CF80

l2304E822:
	c.li	s0,00000008
	c.j	000000002304E7EC

l2304E826:
	c.li	a4,00000008
	c.j	000000002304E7F8

;; txu_cntrl_frame_build: 2304E82A
;;   Called from:
;;     2305F6B6 (in txl_buffer_alloc)
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
	bgeu	a4,a5,000000002304E868

l2304E84A:
	c.lui	a5,FFFFB000
	c.addi	a1,FFFFFFF8
	addi	a5,a5,-00000556
	sh	a5,a1,+00000000
	c.li	a5,00000003
	sh	a5,a1,+00000002
	sh	zero,a1,+00000004
	lhu	a5,a0,+00000020
	sh	a5,a1,+00000006

l2304E868:
	c.li	a2,00000001
	c.mv	a0,s0
	jal	ra,000000002304E628
	lbu	a3,s0,+00000030
	addi	a4,zero,+000001B0
	lui	a1,0004201B
	add	a4,a3,a4
	addi	a5,a1,-000007F8
	lbu	t1,s0,+0000002E
	lbu	a6,s0,+0000002F
	addi	a1,a1,-000007F8
	c.add	a5,a4
	lw	a5,a5,+000000AC
	addi	a4,zero,+000000FF
	lw	a7,a5,+00000000
	addi	a5,a0,-0000001A
	bne	t1,a4,000000002304E8AA

l2304E8A6:
	addi	a5,a0,-00000018

l2304E8AA:
	lhu	a4,s0,+00000032
	addi	a0,a5,+00000018
	c.li	a2,00000000
	andi	a4,a4,+00000100
	c.beqz	a4,000000002304E8BE

l2304E8BA:
	c.addi	a5,FFFFFFFA
	c.mv	a2,a5

l2304E8BE:
	addi	a4,zero,+000000FF
	beq	t1,a4,000000002304EA3C

l2304E8C6:
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
	c.beqz	a4,000000002304E904

l2304E8F8:
	lhu	a4,a0,+00000000
	ori	a4,a4,+00000010
	sh	a4,a0,+00000000

l2304E904:
	lbu	a4,a5,+00000001
	lbu	a0,a5,+00000000
	c.slli	a4,08
	c.or	a4,a0
	ori	a0,a4,+00000008
	sb	a0,a5,+00000000
	c.srli	a0,00000008
	sb	a0,a5,+00000001
	lhu	t1,s0,+00000032
	lui	a0,0004201C
	addi	a0,a0,-00000308
	slli	t3,t1,00000014
	bge	t3,zero,000000002304EA4E

l2304E932:
	andi	a4,a4,-00000301
	ori	a4,a4,+00000008

l2304E93A:
	sb	a4,a5,+00000000
	c.srli	a4,00000008
	sb	a4,a5,+00000001

l2304E944:
	lhu	a4,s0,+00000032
	c.andi	a4,00000004
	c.beqz	a4,000000002304E96A

l2304E94C:
	lbu	a4,a5,+00000001
	lbu	t1,a5,+00000000
	c.slli	a4,08
	or	a4,a4,t1
	c.lui	t1,00002000
	or	a4,a4,t1
	sb	a4,a5,+00000000
	c.srli	a4,00000008
	sb	a4,a5,+00000001

l2304E96A:
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
	bne	t1,t3,000000002304EA80

l2304E9A2:
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

l2304E9DA:
	sh	a4,a5,+00000014

l2304E9DE:
	beq	a7,zero,000000002304EA34

l2304E9E2:
	addi	a4,zero,+000005D8
	add	a6,a6,a4
	c.add	a0,a6
	lw	a4,a0,+000005C4
	c.andi	a4,00000002
	c.beqz	a4,000000002304EA1A

l2304E9F4:
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
	beq	a3,a4,000000002304EA34

l2304EA1A:
	lbu	a4,a5,+00000001
	lbu	a3,a5,+00000000
	c.slli	a4,08
	c.or	a4,a3
	c.lui	a3,00004000
	c.or	a4,a3
	sb	a4,a5,+00000000
	c.srli	a4,00000008
	sb	a4,a5,+00000001

l2304EA34:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2304EA3C:
	sb	zero,a5,+00000000
	sb	zero,a5,+00000001
	sb	zero,a5,+00000016
	sb	zero,a5,+00000017
	c.j	000000002304E904

l2304EA4E:
	andi	t1,t1,+00000100
	beq	t1,zero,000000002304EA5C

l2304EA56:
	ori	a4,a4,+00000308
	c.j	000000002304E93A

l2304EA5C:
	addi	t1,zero,+000005D8
	add	t1,a6,t1
	c.add	t1,a0
	lbu	t1,t1,+00000056
	bne	t1,zero,000000002304EA74

l2304EA6E:
	ori	a4,a4,+00000108
	c.j	000000002304E93A

l2304EA74:
	c.li	t3,00000002
	bne	t1,t3,000000002304E944

l2304EA7A:
	ori	a4,a4,+00000208
	c.j	000000002304E93A

l2304EA80:
	addi	t3,zero,+00000200
	bne	t1,t3,000000002304EAB6

l2304EA88:
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
	c.j	000000002304E9DA

l2304EAB6:
	bne	t1,zero,000000002304EAEE

l2304EABA:
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
	c.j	000000002304E9DA

l2304EAEE:
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
	c.j	000000002304E9DE

;; txu_cntrl_push: 2304EB44
;;   Called from:
;;     2305552A (in ipc_emb_tx_evt)
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
	lui	a5,0004201C
	addi	a5,a5,-00000308
	c.mv	s3,a1
	c.add	s1,a5
	c.mv	a0,s1
	jal	ra,000000002304965A
	beq	a0,zero,000000002304ECCC

l2304EB74:
	lhu	a4,s0,+00000032
	andi	a5,a4,+00000008
	c.beqz	a5,000000002304EBD4

l2304EB7E:
	c.andi	a4,00000010
	c.beqz	a4,000000002304EBC2

l2304EB82:
	lui	a5,00042046
	addi	a5,a5,-000005D4

l2304EB8A:
	c.sw	s0,84(a5)
	c.lw	s0,84(a5)
	c.lw	a5,20(a0)
	jal	ra,00000000230494F0
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

l2304EBAC:
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,0000000023049CCA

l2304EBB4:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2304EBC2:
	c.lw	s1,64(a5)
	lbu	a5,a5,+00000004
	c.bnez	a5,000000002304EB82

l2304EBCA:
	lui	a5,00042045
	addi	a5,a5,+000000B4
	c.j	000000002304EB8A

l2304EBD4:
	lbu	a5,s0,+00000030
	addi	a3,zero,+000001B0
	lhu	a1,s0,+00000020
	add	a3,a5,a3
	lui	s2,0004201B
	addi	a2,s2,-000007F8
	addi	s2,s2,-000007F8
	c.add	a2,a3
	slli	a3,a1,00000008
	c.srli	a1,00000008
	lbu	a6,a2,+00000031
	c.or	a3,a1
	lhu	a2,a2,+00000038
	c.slli	a3,10
	c.srli	a3,00000010
	bne	a2,a3,000000002304ECC8

l2304EC0A:
	andi	a4,a4,-00000101
	sh	a4,s0,+00000032

l2304EC12:
	c.li	a4,00000002
	beq	a6,a4,000000002304EC20

l2304EC18:
	c.li	a4,00000001
	bne	a6,a4,000000002304ECCC

l2304EC1E:
	c.beqz	a0,000000002304ECCC

l2304EC20:
	lbu	a3,s0,+0000002E
	addi	a4,zero,+000000FF
	c.li	s1,00000018
	beq	a3,a4,000000002304EC5E

l2304EC2E:
	lhu	a4,s0,+00000032
	c.li	s1,0000001A
	c.andi	a4,00000001
	c.bnez	a4,000000002304EC5E

l2304EC38:
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

l2304EC5E:
	lhu	a5,s0,+00000032
	andi	a5,a5,+00000100
	c.beqz	a5,000000002304EC6A

l2304EC68:
	c.addi	s1,00000006

l2304EC6A:
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,000000002304E736
	lhu	a4,s0,+00000020
	addi	a3,zero,+00000600
	c.add	a0,s1
	slli	a5,a4,00000008
	c.srli	a4,00000008
	c.or	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	a4,00000000
	bgeu	a3,a5,000000002304EC92

l2304EC8E:
	c.addi	a0,00000008
	c.li	a4,00000008

l2304EC92:
	lhu	a5,s0,+0000000C
	sb	a0,s0,+0000005E
	lbu	a0,s0,+00000030
	sh	a5,s0,+0000005C
	c.lwsp	a2,000000E4
	sb	a4,s0,+0000005F
	c.li	a1,00000000
	sb	a5,s0,+00000060
	jal	ra,0000000023061B76
	lbu	a0,s0,+00000030
	addi	a5,zero,+000001B0
	add	a0,a0,a5
	c.add	a0,s2
	jal	ra,0000000023061B7A
	c.sw	s0,84(a0)
	c.j	000000002304EBAC

l2304ECC8:
	c.li	a0,00000000
	c.j	000000002304EC12

l2304ECCC:
	jal	ra,000000002304983A
	csrrci	zero,mstatus,00000008
	lui	a1,000C0000
	c.mv	a2,s3
	c.mv	a0,s0
	jal	ra,000000002305F7F8
	csrrsi	zero,mstatus,00000008
	c.li	a0,00000000
	c.j	000000002304EBB4

;; txu_cntrl_tkip_mic_append: 2304ECE8
;;   Called from:
;;     23049A12 (in txl_payload_handle_backup)
txu_cntrl_tkip_mic_append proc
	lbu	a4,a0,+00000030
	addi	a3,zero,+000001B0
	lui	a5,0004201B
	add	a4,a4,a3
	addi	a5,a5,-000007F8
	c.add	a5,a4
	lw	a5,a5,+000000AC
	c.lw	a5,0(a1)
	beq	a1,zero,000000002304EE28

l2304ED08:
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
	beq	a5,a4,000000002304ED5E

l2304ED22:
	c.beqz	a5,000000002304ED2A

l2304ED24:
	c.li	a4,00000003
	bne	a5,a4,000000002304EDF2

l2304ED2A:
	addi	a5,s0,+00000038

l2304ED2E:
	c.lw	a5,4(a4)
	c.bnez	a4,000000002304EE18

l2304ED32:
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
	c.j	000000002304EDF2

l2304ED5E:
	addi	a5,s0,+00000038

l2304ED62:
	c.lw	a5,4(a4)
	c.bnez	a4,000000002304EE02

l2304ED66:
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
	jal	ra,000000002304B43C
	addi	a1,s0,+0000014C
	lbu	a2,s1,+0000005F
	sub	a1,a1,s4
	c.add	a1,s3
	c.mv	a0,sp
	jal	ra,000000002304B4EE
	lw	s0,s2,+0000003C

l2304EDCC:
	c.beqz	s0,000000002304EE1C

l2304EDCE:
	c.lw	s0,4(s1)
	c.bnez	s1,000000002304EE06

l2304EDD2:
	c.mv	a0,sp
	jal	ra,000000002304B632
	c.lw	s0,8(a2)
	c.li	a5,00000008

l2304EDDC:
	add	a4,sp,s1
	lbu	a3,a4,+00000000
	add	a4,a2,s1
	c.addi	s1,00000001
	sb	a3,a4,+00000000
	bne	s1,a5,000000002304EDDC

l2304EDF2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2304EE02:
	c.mv	a5,a4
	c.j	000000002304ED62

l2304EE06:
	c.lw	s0,12(a2)
	c.lw	s0,8(a1)
	c.mv	a0,sp
	c.addi	a2,00000001
	c.sub	a2,a1
	jal	ra,000000002304B4EE
	c.lw	s0,4(s0)
	c.j	000000002304EDCC

l2304EE18:
	c.mv	a5,a4
	c.j	000000002304ED2E

l2304EE1C:
	c.mv	a0,sp
	jal	ra,000000002304B632
	lw	a5,zero,+00000008
	c.ebreak

l2304EE28:
	c.jr	ra

;; txu_cntrl_cfm: 2304EE2A
;;   Called from:
;;     2305F8B4 (in txl_cfm_evt)
;;     2305F92C (in txl_cfm_flush)
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
	c.beqz	a4,000000002304EEB4

l2304EE48:
	andi	a5,a5,+00000020
	c.beqz	a5,000000002304EE5C

l2304EE4E:
	c.lw	s1,16(a5)
	slli	a4,a5,00000008
	blt	a4,zero,000000002304EE5C

l2304EE58:
	jal	ra,000000002304C67A

l2304EE5C:
	lhu	a5,s0,+00000032
	andi	a5,a5,+00000200
	c.beqz	a5,000000002304EEBA

l2304EE66:
	lbu	a4,s0,+00000030
	addi	a5,zero,+000000FF
	bne	a4,a5,000000002304EE8A

l2304EE72:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+000003A9
	addi	a1,a1,+00000388
	addi	a0,a0,-000000B8
	jal	ra,0000000023054FF4

l2304EE8A:
	lbu	a0,s0,+00000030
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000017
	jal	ra,000000002304A626

l2304EE98:
	lbu	a4,s0,+00000030
	addi	a3,zero,+000001B0
	lui	a5,0004201B
	add	a4,a4,a3
	addi	a5,a5,-000007F8
	c.add	a5,a4
	sw	zero,a5,+00000034
	c.j	000000002304EEBA

l2304EEB4:
	andi	a5,a5,+00000200
	c.bnez	a5,000000002304EE98

l2304EEBA:
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

;; txu_cntrl_protect_mgmt_frame: 2304EEE0
;;   Called from:
;;     2304DF82 (in sm_auth_send)
txu_cntrl_protect_mgmt_frame proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.mv	s1,a1
	lbu	a1,a0,+0000005E
	c.mv	s0,a0
	c.bnez	a1,000000002304EF38

l2304EEF2:
	c.addi4spn	a1,0000001C
	c.swsp	a2,00000084
	jal	ra,000000002304E736
	c.lwsp	t3,000000E4
	c.lwsp	a2,00000084
	sb	a0,s0,+0000005E
	sb	a5,s0,+00000060

l2304EF06:
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
	jal	ra,000000002304E628
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l2304EF38:
	lbu	a5,s0,+00000060
	c.mv	a0,a1
	c.swsp	a5,0000008C
	c.j	000000002304EF06

;; _aid_list_delete: 2304EF42
;;   Called from:
;;     2304EFEC (in apm_sta_delete)
;;     2304F060 (in apm_tx_cfm_handler)
_aid_list_delete proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004201D
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s6,a0
	addi	s2,a5,-000002F0
	c.li	s0,00000000
	addi	s1,a5,-000002F0
	c.li	s5,0000000A

l2304EF66:
	lbu	a5,s2,+0000001E
	c.beqz	a5,000000002304EFAA

l2304EF6C:
	addi	s4,s2,+00000018
	c.li	a2,00000006
	c.mv	a1,s6
	c.mv	a0,s4
	jal	ra,000000002306CEF8
	c.mv	s3,a0
	c.bnez	a0,000000002304EFAA

l2304EF7E:
	c.li	a2,00000006
	c.li	a1,00000000
	c.mv	a0,s4
	jal	ra,000000002306D1BC
	c.li	a5,00000007
	add	s0,s0,a5
	c.add	s0,s1
	sb	zero,s0,+0000001E

l2304EF94:
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

l2304EFAA:
	c.addi	s0,00000001
	c.addi	s2,00000007
	bne	s0,s5,000000002304EF66

l2304EFB2:
	c.li	s3,FFFFFFFF
	c.j	000000002304EF94

;; apm_sta_delete: 2304EFB6
;;   Called from:
;;     2304F6E4 (in apm_sta_fw_delete)
;;     2304FAEC (in apm_auth_handler)
;;     2304FF04 (in apm_deauth_handler)
;;     2304FF2E (in apm_disassoc_handler)
;;     2304FFB0 (in apm_sta_remove)
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
	jal	ra,0000000023050474
	c.mv	s0,a0
	c.lui	a0,00002000
	c.li	a3,00000001
	c.li	a2,00000007
	c.li	a1,0000000D
	addi	a0,a0,-000003F7
	jal	ra,0000000023050474
	c.mv	s2,a0
	c.mv	a0,s3
	jal	ra,000000002304EF42
	addi	a0,s1,+00000008
	andi	a0,a0,+000000FF
	jal	ra,000000002305DA56
	lui	a5,0004201D
	addi	a5,a5,-000002F0
	lbu	a4,a5,+00000016
	c.mv	a0,s2
	c.addi	a4,FFFFFFFF
	sb	a4,a5,+00000016
	sb	s1,s2,+00000000
	jal	ra,00000000230504E0
	sb	s1,s0,+00000000
	sb	zero,s0,+00000001
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,00000000230504E0

;; apm_tx_cfm_handler: 2304F032
apm_tx_cfm_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	slli	a5,a1,00000008
	c.mv	s0,a0
	bge	a5,zero,000000002304F05E

l2304F042:
	lhu	a4,a0,+00000044
	c.beqz	a4,000000002304F052

l2304F048:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,00000000230504E0

l2304F052:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi	a0,FFFFFFF4
	c.addi16sp	00000020
	jal	zero,000000002305056C

l2304F05E:
	c.swsp	a1,00000084
	jal	ra,000000002304EF42
	addi	a0,s0,-0000000C
	jal	ra,000000002305056C
	lhu	a2,s0,+00000044
	c.lwsp	a2,00000064
	lui	a0,0002307C
	addi	a0,a0,-00000080
	jal	ra,0000000023003AC6
	lui	a5,0004201D
	addi	a5,a5,-000002F0
	lbu	a4,a5,+00000016
	c.addi	a4,FFFFFFFF
	sb	a4,a5,+00000016
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; apm_init: 2304F098
;;   Called from:
;;     2304B392 (in me_init)
apm_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201D
	c.li	a1,00000000
	addi	a0,s0,-000002F0
	addi	a2,zero,+00000060
	c.swsp	ra,00000084
	jal	ra,000000002306D1BC
	c.lui	a5,00001000
	addi	s0,s0,-000002F0
	addi	a5,a5,-00000400
	sb	zero,s0,+0000000C
	sh	a5,s0,+00000016
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.li	a0,00000007
	c.addi	sp,00000010
	jal	zero,000000002305060E

;; apm_start_cfm: 2304F0D0
;;   Called from:
;;     2306445A (in mm_bcn_change_cfm_handler)
apm_start_cfm proc
	c.addi16sp	FFFFFFD0
	c.swsp	s6,00000008
	c.mv	s6,a0
	c.lui	a0,00002000
	c.swsp	s4,0000000C
	c.li	a3,00000004
	lui	s4,0004201D
	c.li	a2,00000007
	c.li	a1,0000000D
	addi	a0,a0,-000003FF
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	lw	s2,s4,-000002F0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s5,00000088
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	jal	ra,0000000023050474
	c.mv	s3,a0
	addi	s4,s4,-000002F0
	bne	s6,zero,000000002304F1AE

l2304F10A:
	c.li	a3,00000004
	lbu	s5,s2,+00000033
	c.li	a2,00000007
	c.li	a1,00000000
	c.li	a0,0000001E
	jal	ra,0000000023050474
	addi	a4,zero,+000005D8
	addi	s7,s5,+0000000A
	add	s5,s5,a4
	lui	s1,0004201C
	c.li	s8,00000001
	addi	s1,s1,-00000308
	sb	s8,a0,+00000002
	lui	s0,0004201B
	addi	s0,s0,-000007F8
	c.add	s1,s5
	lbu	a4,s1,+00000057
	sb	a4,a0,+00000003
	jal	ra,00000000230504E0
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
	jal	ra,000000002306CF80
	c.li	a5,00000002
	sb	a5,s0,+00000031
	c.mv	a0,s0
	jal	ra,0000000023061AC8
	lbu	a5,s0,+0000011A
	sh	s8,s0,+0000001E
	ori	a5,a5,+00000010
	sb	a5,s0,+0000011A
	lbu	a5,s2,+00000033
	c.addi	a5,0000000A
	sb	a5,s0,+0000001B

l2304F1AE:
	sb	s6,s3,+00000000
	lbu	a5,s2,+00000033
	lui	a2,000004C5
	c.lui	a0,00002000
	sb	a5,s3,+00000001
	c.li	a1,00000007
	addi	a2,a2,-000004C0
	addi	a0,a0,-000003F6
	jal	ra,000000002305098E
	c.mv	a0,s3
	jal	ra,00000000230504E0
	addi	a0,s2,-0000000C
	jal	ra,000000002305056C
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
	jal	zero,000000002305060E

;; apm_send_next_bss_param: 2304F1FE
;;   Called from:
;;     2304F354 (in apm_set_bss_param)
;;     230643F0 (in me_set_ps_disable_cfm_handler)
;;     23064424 (in mm_bss_param_setting_handler)
apm_send_next_bss_param proc
	lui	a0,0004201D
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000002EC
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002305003A
	c.mv	s0,a0
	c.bnez	a0,000000002304F22C

l2304F214:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+000000BF
	addi	a1,a1,+00000388
	addi	a0,a0,-000000E8
	jal	ra,0000000023054FF4

l2304F22C:
	addi	a0,s0,+0000000C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230504E0

;; apm_set_bss_param: 2304F23A
;;   Called from:
;;     230647B4 (in apm_start_req_handler)
apm_set_bss_param proc
	c.addi16sp	FFFFFFD0
	lui	a5,0004201D
	c.swsp	s0,00000014
	lw	s0,a5,-000002F0
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
	jal	ra,0000000023050474
	c.mv	s2,a0
	c.li	a3,00000007
	c.li	a2,00000007
	c.li	a1,00000000
	c.li	a0,00000018
	jal	ra,0000000023050474
	c.mv	s6,a0
	c.li	a3,00000008
	c.li	a2,00000007
	c.li	a1,00000000
	c.li	a0,00000016
	jal	ra,0000000023050474
	c.mv	s3,a0
	c.li	a3,00000004
	c.li	a2,00000007
	c.li	a1,00000000
	c.li	a0,00000014
	jal	ra,0000000023050474
	c.li	a3,00000002
	c.mv	s5,a0
	c.li	a2,00000007
	c.li	a1,00000005
	addi	a0,s1,+00000411
	jal	ra,0000000023050474
	addi	a5,zero,+000005D8
	add	s7,s7,a5
	lui	s1,0004201C
	c.li	s8,00000001
	addi	s1,s1,-00000308
	sb	s8,s2,+00000000
	addi	a1,s2,-0000000C
	c.mv	s4,a0
	c.add	s1,s7
	lbu	a5,s1,+00000057
	sb	a5,s2,+00000001
	lui	s2,0004201D
	addi	a0,s2,-000002EC
	jal	ra,000000002304FFBE
	c.li	a2,00000006
	addi	a1,s1,+00000050
	c.mv	a0,s6
	jal	ra,000000002306CF80
	lbu	a5,s0,+00000033
	addi	a1,s6,-0000000C
	addi	a0,s2,-000002EC
	sb	a5,s6,+00000006
	jal	ra,000000002304FFBE
	lbu	a5,s0,+00000010
	c.li	a1,00000001
	c.mv	a0,s0
	sb	a5,s3,+00000005
	jal	ra,00000000230619EA
	sw	a0,s3,+00000000
	lbu	a5,s0,+00000033
	addi	a1,s3,-0000000C
	addi	a0,s2,-000002EC
	sb	a5,s3,+00000004
	jal	ra,000000002304FFBE
	lhu	a5,s0,+00000028
	addi	a1,s5,-0000000C
	addi	a0,s2,-000002EC
	sh	a5,s5,+00000000
	lbu	a5,s0,+00000033
	sb	a5,s5,+00000002
	jal	ra,000000002304FFBE
	sb	s8,s4,+00000000
	lbu	a5,s0,+00000033
	addi	a1,s4,-0000000C
	addi	a0,s2,-000002EC
	sb	a5,s4,+00000001
	jal	ra,000000002304FFBE
	jal	ra,000000002304F1FE
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
	jal	zero,000000002305060E

;; apm_stop: 2304F376
;;   Called from:
;;     230644CA (in apm_stop_req_handler)
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
	jal	ra,0000000023050474
	c.mv	s2,a0
	c.li	a3,00000002
	c.li	a2,00000007
	c.li	a1,00000005
	addi	a0,s1,+00000411
	jal	ra,0000000023050474
	c.mv	s1,a0
	c.lui	a0,00002000
	c.li	a1,00000007
	addi	a0,a0,-000003F6
	jal	ra,0000000023050AC2
	sb	zero,s2,+00000000
	lbu	a5,s0,+00000057
	c.mv	a0,s2
	sb	a5,s2,+00000001
	jal	ra,00000000230504E0
	lbu	a5,s0,+00000058
	c.beqz	a5,000000002304F3E4

l2304F3C8:
	c.li	a3,00000004
	c.li	a2,00000007
	c.li	a1,00000000
	c.li	a0,0000001E
	jal	ra,0000000023050474
	sb	zero,a0,+00000002
	lbu	a4,s0,+00000057
	sb	a4,a0,+00000003
	jal	ra,00000000230504E0

l2304F3E4:
	c.lw	s0,64(a5)
	c.beqz	a5,000000002304F3F0

l2304F3E8:
	lbu	a0,s0,+00000057
	jal	ra,000000002305C84E

l2304F3F0:
	sb	zero,s1,+00000000
	lbu	a5,s0,+00000057
	c.mv	a0,s1
	sb	a5,s1,+00000001
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,00000000230504E0

;; apm_tx_int_ps_check: 2304F40C
;;   Called from:
;;     2304914C (in sta_mgmt_send_postponed_frame)
;;     23049BF4 (in txl_cntrl_push_int)
apm_tx_int_ps_check proc
	lbu	a4,a0,+0000002F
	addi	a3,zero,+000005D8
	lui	a5,0004201C
	add	a4,a4,a3
	addi	a5,a5,-00000308
	c.add	a5,a4
	lbu	a4,a5,+00000056
	c.li	a5,00000002
	bne	a4,a5,000000002304F46A

l2304F42C:
	lbu	a3,a0,+00000030
	c.li	a5,0000000B
	c.li	a4,00000001
	bltu	a5,a3,000000002304F466

l2304F438:
	addi	a2,zero,+000001B0
	add	a3,a3,a2
	lui	a5,0004201B
	addi	a5,a5,-000007F8
	c.add	a5,a3
	lbu	a3,a5,+0000001C
	bne	a3,a4,000000002304F466

l2304F452:
	c.lw	a5,52(a5)
	c.andi	a5,00000003
	c.bnez	a5,000000002304F466

l2304F458:
	lhu	a5,a0,+00000032
	c.lui	a4,00001000
	c.or	a5,a4
	sh	a5,a0,+00000032
	c.li	a4,00000000

l2304F466:
	c.mv	a0,a4
	c.jr	ra

l2304F46A:
	c.li	a4,00000001
	c.j	000000002304F466

;; apm_tx_int_ps_postpone: 2304F46E
;;   Called from:
;;     23049C66 (in txl_cntrl_push_int)
apm_tx_int_ps_postpone proc
	lhu	a5,a0,+00000032
	slli	a4,a5,00000013
	bge	a4,zero,000000002304F4A6

l2304F47A:
	lbu	a2,a0,+0000002E
	lui	a4,00023082
	addi	a6,a4,+000007EC
	c.add	a2,a6
	lbu	a3,a1,+000000F2
	lbu	a2,a2,+00000000
	lbu	a5,a1,+00000032
	addi	a4,a4,+000007EC
	c.and	a2,a3
	c.beqz	a2,000000002304F4A8

l2304F49C:
	andi	a2,a5,+00000008
	ori	a5,a5,+00000008
	c.beqz	a2,000000002304F4B2

l2304F4A6:
	c.jr	ra

l2304F4A8:
	andi	a2,a5,+00000002
	c.bnez	a2,000000002304F4A6

l2304F4AE:
	ori	a5,a5,+00000002

l2304F4B2:
	sb	a5,a1,+00000032
	lbu	a5,a0,+0000002E
	c.add	a4,a5
	lbu	a5,a4,+00000000
	c.and	a5,a3
	c.beqz	a5,000000002304F4CA

l2304F4C4:
	c.li	a5,0000000F
	bne	a3,a5,000000002304F4A6

l2304F4CA:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a3,00000004
	c.mv	s0,a1
	c.li	a2,00000005
	c.li	a1,00000000
	addi	a0,zero,+00000041
	c.swsp	ra,00000084
	jal	ra,0000000023050474
	lhu	a4,s0,+00000018
	sh	a4,a0,+00000000
	lbu	a4,s0,+0000001A
	sb	a4,a0,+00000003
	c.li	a4,00000001
	sb	a4,a0,+00000002
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230504E0

;; apm_tx_int_ps_get_postpone: 2304F500
;;   Called from:
;;     23049158 (in sta_mgmt_send_postponed_frame)
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
	bne	s2,a5,000000002304F520

l2304F51C:
	c.lw	a1,52(a5)
	c.bnez	a5,000000002304F53C

l2304F520:
	sw	zero,a2,+00000000

l2304F524:
	c.li	s1,00000000

l2304F526:
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

l2304F53C:
	andi	a4,a5,+00000001
	c.li	s4,00000001
	c.bnez	a4,000000002304F548

l2304F544:
	c.li	s4,00000004
	c.li	s2,00000008

l2304F548:
	lbu	a4,a1,+00000032
	and	a4,s2,a4
	c.bnez	a4,000000002304F558

l2304F552:
	c.li	a5,00000001
	c.sw	a2,0(a5)
	c.j	000000002304F524

l2304F558:
	lw	s1,a1,+0000019C
	lui	s5,00023082
	c.addi	a5,FFFFFFFE
	c.mv	s3,a2
	c.mv	s0,a1
	c.li	s6,00000000
	addi	s5,s5,+000007EC
	sltiu	a5,a5,+00000001

l2304F570:
	c.bnez	s1,000000002304F592

l2304F572:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+0000016F
	addi	a1,a1,+00000388
	addi	a0,a0,-00000054
	jal	ra,0000000023054FF6
	c.li	a5,00000001
	sw	a5,s3,+00000000
	c.j	000000002304F526

l2304F592:
	lbu	a4,s1,+0000002E
	lbu	a3,s0,+000000F2
	c.add	a4,s5
	lbu	a4,a4,+00000000
	c.and	a4,a3
	sltiu	a4,a4,+00000001
	bne	a4,a5,000000002304F638

l2304F5AA:
	c.mv	s6,s1
	c.lw	s1,0(s1)
	c.j	000000002304F570

l2304F5B0:
	lw	a5,s6,+00000000

l2304F5B4:
	c.bnez	a5,000000002304F5EC

l2304F5B6:
	lbu	a5,s0,+00000032
	xori	s2,s2,-00000001
	and	s2,s2,a5
	sb	s2,s0,+00000032
	and	s2,s2,s4
	beq	s2,zero,000000002304F610

l2304F5CE:
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
	c.j	000000002304F526

l2304F5EC:
	lbu	a4,a5,+0000002E
	c.add	a4,s5
	lbu	a3,a4,+00000000
	lbu	a4,s0,+000000F2
	c.and	a3,a4
	c.lw	s0,52(a4)
	sltiu	a3,a3,+00000001
	c.addi	a4,FFFFFFFE
	sltiu	a4,a4,+00000001
	bne	a3,a4,000000002304F5CE

l2304F60C:
	c.lw	a5,0(a5)
	c.j	000000002304F5B4

l2304F610:
	c.li	a3,00000004
	c.li	a2,00000005
	c.li	a1,00000000
	addi	a0,zero,+00000041
	jal	ra,0000000023050474
	lhu	a4,s0,+00000018
	sh	a4,a0,+00000000
	lbu	a4,s0,+0000001A
	sb	zero,a0,+00000002
	sb	a4,a0,+00000003
	jal	ra,00000000230504E0
	c.j	000000002304F526

l2304F638:
	c.mv	a2,s1
	c.mv	a1,s6
	addi	a0,s0,+0000019C
	jal	ra,0000000023050118
	c.lw	s0,52(a5)
	c.andi	a5,00000008
	sltu	a5,zero,a5
	c.addi	a5,00000003
	sb	a5,s1,+0000002E
	bne	s6,zero,000000002304F5B0

l2304F656:
	lw	a5,s0,+0000019C
	c.j	000000002304F5B4

;; apm_tx_int_ps_clear: 2304F65C
;;   Called from:
;;     230486D2 (in rxl_cntrl_evt)
;;     230486F8 (in rxl_cntrl_evt)
;;     2305E068 (in mm_sta_del)
apm_tx_int_ps_clear proc
	lbu	a4,a0,+00000056
	c.li	a5,00000002
	bne	a4,a5,000000002304F6CE

l2304F666:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	s0,zero,+000001B0
	add	s0,a1,s0
	lui	a1,0004201B
	addi	a1,a1,-000007F8
	c.li	a2,00000000
	c.swsp	ra,00000084
	c.add	s0,a1
	c.mv	a1,s0
	jal	ra,000000002304911E
	lbu	a5,s0,+00000032
	andi	a4,a5,+0000000A
	c.beqz	a4,000000002304F6C6

l2304F690:
	andi	a5,a5,+000000F5
	sb	a5,s0,+00000032
	c.bnez	a5,000000002304F6C6

l2304F69A:
	c.li	a3,00000004
	c.li	a2,00000005
	c.li	a1,00000000
	addi	a0,zero,+00000041
	jal	ra,0000000023050474
	lhu	a4,s0,+00000018
	sh	a4,a0,+00000000
	lbu	a4,s0,+0000001A
	sb	zero,a0,+00000002
	sb	a4,a0,+00000003
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230504E0

l2304F6C6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2304F6CE:
	c.jr	ra

;; apm_sta_fw_delete: 2304F6D0
;;   Called from:
;;     23064100 (in apm_sta_connect_timeout_ind_handler)
apm_sta_fw_delete proc
	addi	a5,zero,+000001B0
	add	a5,a0,a5
	lui	a1,0004201B
	addi	a1,a1,-000007F8
	c.addi	a5,0000001E
	c.add	a1,a5
	jal	zero,000000002304EFB6

;; apm_sta_add: 2304F6E8
;;   Called from:
;;     230546A4 (in ProcessPWKMsg4)
;;     230641CE (in apm_sta_add_cfm_handler)
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
	jal	ra,0000000023050474
	addi	a5,zero,+000001B0
	add	s2,s2,a5
	lui	s0,0004201B
	addi	s0,s0,-000007F8
	c.li	a5,00000002
	c.mv	s1,a0
	c.li	a2,00000006
	c.addi	a0,00000004
	c.add	s0,s2
	sb	a5,s0,+00000031
	lw	a5,s0,+000000EC
	addi	a1,s0,+0000001E
	sw	a5,a0,+00000FFC
	jal	ra,000000002306CF80
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
	jal	zero,00000000230504E0

;; apm_send_mlme: 2304F76A
;;   Called from:
;;     2304BFB2 (in rxu_cntrl_frame_handle)
;;     2304FA28 (in apm_probe_req_handler)
;;     2304FB08 (in apm_auth_handler)
;;     2304FC04 (in apm_assoc_req_handler)
;;     2304FF56 (in apm_disassoc_handler)
;;     2304FFA0 (in apm_sta_remove)
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
	jal	ra,000000002304A24A
	beq	a0,zero,000000002304F8B8

l2304F7A2:
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
	jal	ra,000000002306CF80
	addi	s7,s1,+00000050
	c.li	a2,00000006
	c.mv	a1,s7
	addi	a0,s0,+00000156
	jal	ra,000000002306CF80
	c.li	a2,00000006
	c.mv	a1,s7
	addi	a0,s0,+0000015C
	jal	ra,000000002306CF80
	lui	a5,0004201C
	addi	a5,a5,-00000370
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
	bne	s6,a5,000000002304F870

l2304F810:
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000002
	c.li	a1,00000000
	addi	a0,s0,+00000164
	jal	ra,0000000023060142

l2304F820:
	c.addi	a0,00000018
	c.slli	a0,10
	c.srli	a0,00000010

l2304F826:
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
	jal	zero,000000002304A376

l2304F870:
	addi	a5,zero,+000000C0
	bne	s6,a5,000000002304F884

l2304F878:
	c.mv	a1,s5
	addi	a0,s0,+00000164
	jal	ra,0000000023060198
	c.j	000000002304F820

l2304F884:
	addi	a5,zero,+00000050
	bne	s6,a5,000000002304F89A

l2304F88C:
	lbu	a1,s1,+00000057
	addi	a0,s0,+00000164
	jal	ra,0000000023060B8C
	c.j	000000002304F820

l2304F89A:
	andi	s6,s6,-00000021
	c.li	a5,00000010
	c.li	a0,00000018
	bne	s6,a5,000000002304F826

l2304F8A6:
	lbu	a1,s1,+00000057
	c.mv	a3,s2
	c.mv	a2,s5
	addi	a0,s0,+00000164
	jal	ra,0000000023060DCC
	c.j	000000002304F820

l2304F8B8:
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

;; apm_embedded_enabled: 2304F8CE
;;   Called from:
;;     2304BAFE (in rxu_mgt_frame_check)
;;     2304BBC4 (in rxu_mgt_frame_check)
;;     2304F956 (in apm_bcn_set)
;;     23064628 (in apm_start_req_handler)
apm_embedded_enabled proc
	c.beqz	a0,000000002304F8E8

l2304F8D0:
	lbu	a4,a0,+00000056
	c.li	a5,00000002
	c.li	a0,00000000
	bne	a4,a5,000000002304F8E4

l2304F8DC:
	lui	a5,0004201D
	lbu	a0,a5,-000002DC

l2304F8E4:
	c.andi	a0,00000001
	c.jr	ra

l2304F8E8:
	lui	a5,0004201D
	lbu	a0,a5,-000002DC
	c.jr	ra

;; apm_bcn_set: 2304F8F2
;;   Called from:
;;     230648B8 (in me_set_active_cfm_handler)
apm_bcn_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	lui	s2,0004201D
	addi	s2,s2,-000002F0
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
	jal	ra,0000000023050474
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
	lui	a5,0004201C
	addi	a5,a5,-00000308
	c.add	a0,a5
	jal	ra,000000002304F8CE
	lhu	a2,s0,+00000024
	addi	a5,s1,+0000000C
	c.beqz	a0,000000002304F992

l2304F964:
	lw	a1,s2,+00000010
	c.mv	a0,a5
	jal	ra,000000002306CF80
	lw	a0,s2,+00000010
	jal	ra,00000000230503A2
	sw	zero,s2,+00000010

l2304F97A:
	c.mv	a0,s1
	jal	ra,00000000230504E0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a1,00000002
	c.li	a0,00000007
	c.addi	sp,00000010
	jal	zero,000000002305060E

l2304F992:
	addi	a1,s0,+000000A7
	c.mv	a0,a5
	jal	ra,000000002306CF80
	c.j	000000002304F97A

;; apm_probe_req_handler: 2304F99E
;;   Called from:
;;     2306414E (in rxu_mgt_ind_handler)
apm_probe_req_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	lbu	s0,a0,+00000008
	addi	a5,zero,+000000FF
	c.mv	s1,a0
	beq	s0,a5,000000002304FA2C

l2304F9B6:
	addi	a5,zero,+000005D8
	add	s0,s0,a5
	lui	a5,0004201C
	addi	a5,a5,-00000308
	c.add	s0,a5

l2304F9C8:
	lhu	a1,s1,+00000000
	addi	s2,s1,+00000034
	c.li	a2,00000000
	c.addi	a1,FFFFFFE8
	c.slli	a1,10
	c.srli	a1,00000010
	c.mv	a0,s2
	jal	ra,0000000023050BF4
	c.beqz	a0,000000002304FA40

l2304F9E0:
	lbu	a5,a0,+00000001
	c.beqz	a5,000000002304FA40

l2304F9E6:
	lbu	a2,s0,+0000037E
	bne	a2,a5,000000002304FA34

l2304F9EE:
	addi	a1,s0,+0000037F
	c.addi	a0,00000002
	jal	ra,000000002306CEF8
	c.bnez	a0,000000002304FA34

l2304F9FA:
	lhu	a1,s1,+00000000
	c.li	a2,00000003
	c.mv	a0,s2
	c.addi	a1,FFFFFFE8
	c.slli	a1,10
	c.srli	a1,00000010
	jal	ra,0000000023050BF4
	c.bnez	a0,000000002304FA4C

l2304FA0E:
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
	jal	zero,000000002304F76A

l2304FA2C:
	jal	ra,000000002304B34C
	c.mv	s0,a0
	c.bnez	a0,000000002304F9C8

l2304FA34:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2304FA40:
	lui	a5,0004201D
	lbu	a5,a5,-000002DB
	c.beqz	a5,000000002304F9FA

l2304FA4A:
	c.j	000000002304FA34

l2304FA4C:
	lw	a5,s0,+000003A4
	lbu	a1,a0,+00000002
	lbu	a3,a5,+00000002
	lhu	a4,a5,+00000000
	c.bnez	a3,000000002304FA92

l2304FA5E:
	c.lui	a2,FFFFF000
	addi	a3,a2,+00000694
	c.add	a3,a4
	c.slli	a3,10
	c.srli	a3,00000010
	addi	a0,zero,+00000048
	c.li	a5,00000000
	bltu	a0,a3,000000002304FA8C

l2304FA74:
	c.lui	a3,00001000
	addi	a3,a3,-0000064C
	c.li	a5,0000000E
	beq	a4,a3,000000002304FA8C

l2304FA80:
	addi	a5,a2,+00000699

l2304FA84:
	c.add	a4,a5
	c.li	a5,00000005
	xor	a5,a4,a5

l2304FA8C:
	bne	a1,a5,000000002304FA34

l2304FA90:
	c.j	000000002304FA0E

l2304FA92:
	c.li	a2,00000001
	c.li	a5,00000000
	bne	a3,a2,000000002304FA8C

l2304FA9A:
	c.lui	a2,FFFFF000
	addi	a3,a2,-0000038D
	c.add	a3,a4
	c.slli	a3,10
	c.srli	a3,00000010
	addi	a0,zero,+00000334
	bltu	a0,a3,000000002304FA8C

l2304FAAE:
	addi	a5,a2,-00000388
	c.j	000000002304FA84

;; apm_auth_handler: 2304FAB4
;;   Called from:
;;     23064162 (in rxu_mgt_ind_handler)
apm_auth_handler proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	lbu	a5,a0,+00000008
	addi	s2,zero,+000000FF
	beq	a5,s2,000000002304FB0C

l2304FACA:
	addi	s1,zero,+000005D8
	add	a5,a5,s1
	addi	s0,a0,+00000026
	lui	s1,0004201C
	addi	s1,s1,-00000308
	c.mv	a0,s0
	c.add	s1,a5
	jal	ra,000000002305D070
	beq	a0,s2,000000002304FAF0

l2304FAEA:
	c.mv	a1,s0
	jal	ra,000000002304EFB6

l2304FAF0:
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
	jal	zero,000000002304F76A

l2304FB0C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; apm_assoc_req_handler: 2304FB18
;;   Called from:
;;     23064176 (in rxu_mgt_ind_handler)
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
	beq	s8,a5,000000002304FC08

l2304FB40:
	c.mv	s1,a0
	c.lui	a0,00001000
	addi	a3,zero,+00000058
	c.li	a2,00000007
	c.mv	s5,a1
	addi	a0,a0,+00000407
	c.li	a1,00000005
	jal	ra,0000000023050474
	addi	a2,zero,+00000058
	c.li	a1,00000000
	c.mv	s0,a0
	addi	s4,s1,+00000026
	jal	ra,000000002306D1BC
	c.li	a2,00000006
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,000000002306CF80
	lbu	a5,s1,+00000008
	addi	s7,zero,+000005D8
	add	s7,s8,s7
	sb	a5,s0,+00000049
	c.lw	s1,16(a5)
	lui	s3,0004201C
	addi	s6,s3,-00000308
	c.sw	s0,76(a5)
	c.lw	s1,20(a5)
	addi	s3,s3,-00000308
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
	beq	s5,zero,000000002304FC26

l2304FBBA:
	addi	s1,s1,+0000003E
	addi	s2,s2,-00000022

l2304FBC2:
	addi	s9,zero,+000005D8
	add	s9,s8,s9
	addi	a5,zero,+00000033
	c.add	s9,s3
	lhu	a3,s9,+00000416
	bltu	a3,a4,000000002304FBEC

l2304FBD8:
	c.slli	s2,10
	srli	s2,s2,00000010
	c.li	a2,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023050BF4
	c.bnez	a0,000000002304FC2E

l2304FBEA:
	c.li	a5,00000001

l2304FBEC:
	lui	a3,0002304F
	c.mv	a4,s0
	addi	a3,a3,+00000032
	c.mv	a2,s4
	addi	a1,zero,+00000030
	bne	s5,zero,000000002304FC02

l2304FC00:
	c.li	a1,00000010

l2304FC02:
	c.mv	a0,s6
	jal	ra,000000002304F76A

l2304FC08:
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

l2304FC26:
	addi	s1,s1,+00000038
	c.addi	s2,FFFFFFE4
	c.j	000000002304FBC2

l2304FC2E:
	lbu	a5,a0,+00000001
	lbu	a2,s9,+0000037E
	bne	a2,a5,000000002304FBEA

l2304FC3A:
	addi	a1,s7,+0000037F
	c.add	a1,s3
	c.addi	a0,00000002
	jal	ra,000000002306CEF8
	c.mv	s7,a0
	c.bnez	a0,000000002304FBEA

l2304FC4A:
	c.li	a2,00000001
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023050BF4
	c.li	a5,00000012
	c.beqz	a0,000000002304FBEC

l2304FC58:
	lbu	a5,a0,+00000001
	c.addi4spn	a4,00000010
	c.addi	a0,00000002
	sb	a5,sp,+00000010
	c.mv	s9,a4
	c.li	a3,FFFFFFFF

l2304FC68:
	c.addi	a5,FFFFFFFF
	c.addi	a4,00000001
	bne	a5,a3,000000002304FDDA

l2304FC70:
	addi	a2,zero,+00000032
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023050BF4
	c.beqz	a0,000000002304FC98

l2304FC7E:
	lbu	a2,sp,+00000010
	lbu	a4,a0,+00000001
	c.li	a5,00000000
	c.addi	a0,00000002

l2304FC8A:
	bne	a4,a5,000000002304FDE6

l2304FC8E:
	lbu	a5,sp,+00000010
	c.add	a4,a5
	sb	a4,sp,+00000010

l2304FC98:
	c.li	a1,00000000
	c.mv	a0,s9
	jal	ra,00000000230619EA
	addi	a5,zero,+000005D8
	add	s8,s8,a5
	c.mv	s11,a0
	sb	zero,s0,+00000006
	c.li	s10,00000000
	c.add	s3,s8

l2304FCB2:
	lbu	a5,s3,+000003B0
	bltu	s10,a5,000000002304FE00

l2304FCBA:
	addi	a2,zero,+0000002D
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023050BF4
	c.beqz	a0,000000002304FD1E

l2304FCC8:
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

l2304FCEC:
	bne	a5,a3,000000002304FE3E

l2304FCF0:
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

l2304FD1E:
	lui	a2,0002307C
	c.li	a3,00000004
	addi	a2,a2,-00000090
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023050C10
	c.beqz	a0,000000002304FD4E

l2304FD32:
	c.lw	s0,64(a4)
	lbu	a5,a0,+00000008
	ori	a4,a4,+00000001
	c.sw	s0,64(a4)
	andi	a4,a5,+0000000F
	c.srli	a5,00000004
	c.andi	a5,00000006
	sb	a4,s0,+00000046
	sb	a5,s0,+00000047

l2304FD4E:
	c.li	a2,00000002
	c.li	a1,00000000
	c.mv	a0,s9
	jal	ra,000000002306D1BC
	c.li	a2,00000001
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,000000002306D1BC
	addi	a2,zero,+00000030
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023050BF4
	c.beqz	a0,000000002304FE4C

l2304FD70:
	lhu	a5,sp,+00000010
	ori	a5,a5,+00000020
	sh	a5,sp,+00000010
	lbu	a5,sp,+0000000C
	ori	a5,a5,+00000008

l2304FD84:
	sb	a5,sp,+0000000C

l2304FD88:
	lui	s1,0004201D
	lw	a0,s1,-00000524
	c.beqz	a0,000000002304FDBA

l2304FD92:
	lbu	a4,sp,+00000010
	addi	a5,zero,+0000002E
	andi	a4,a4,+00000028
	beq	a4,zero,000000002304FBEC

l2304FDA2:
	c.addi4spn	a2,0000000C
	c.mv	a1,s9
	c.li	a4,00000000
	c.li	a3,00000000
	jal	ra,00000000230548B4
	lw	a0,s1,-00000524
	c.mv	a2,s0
	c.li	a1,00000000
	jal	ra,0000000023054F3E

l2304FDBA:
	lui	s2,0004201D
	addi	a5,s2,-000002F0
	lbu	a4,a5,+00000016
	lbu	a5,a5,+00000017
	sh	zero,s0,+00000044
	addi	s3,s2,-000002F0
	bltu	a4,a5,000000002304FE76

l2304FDD6:
	c.li	a5,00000011
	c.j	000000002304FBEC

l2304FDDA:
	lbu	a2,a0,+00000000
	c.addi	a0,00000001
	sb	a2,a4,+00000000
	c.j	000000002304FC68

l2304FDE6:
	add	a3,a0,a5
	lbu	a1,a3,+00000000
	addi	a6,sp,+00000011
	add	a3,a2,a5
	c.add	a3,a6
	sb	a1,a3,+00000000
	c.addi	a5,00000001
	c.j	000000002304FC8A

l2304FE00:
	add	s8,s3,s10
	lbu	a0,s8,+000003B1
	jal	ra,0000000023061936
	sra	a0,s11,a0
	c.andi	a0,00000001
	c.beqz	a0,000000002304FE32

l2304FE14:
	lbu	a5,s0,+00000006
	lbu	a3,s8,+000003B1
	add	a4,s0,a5
	sb	a3,a4,+00000007
	c.addi	a5,00000001
	sb	a5,s0,+00000006

l2304FE2A:
	c.addi	s10,00000001
	andi	s10,s10,+000000FF
	c.j	000000002304FCB2

l2304FE32:
	lb	a5,s8,+000003B1
	bge	a5,zero,000000002304FE2A

l2304FE3A:
	c.li	a5,00000012
	c.j	000000002304FBEC

l2304FE3E:
	lbu	a2,a4,+00000000
	c.addi	a5,00000001
	c.addi	a4,00000001
	sb	a2,a5,+00000FFF
	c.j	000000002304FCEC

l2304FE4C:
	lui	a2,0002307C
	c.li	a3,00000004
	addi	a2,a2,-00000088
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023050C10
	c.beqz	a0,000000002304FD88

l2304FE60:
	lhu	a5,sp,+00000010
	ori	a5,a5,+00000008
	sh	a5,sp,+00000010
	lbu	a5,sp,+0000000C
	ori	a5,a5,+00000004
	c.j	000000002304FD84

l2304FE76:
	addi	s2,s2,-000002F0
	c.li	s1,FFFFFFFF
	c.li	s9,FFFFFFFF
	c.li	s8,0000000A

l2304FE80:
	lbu	a5,s2,+0000001E
	c.beqz	a5,000000002304FEB8

l2304FE86:
	c.li	a2,00000006
	c.mv	a1,s4
	addi	a0,s2,+00000018
	jal	ra,000000002306CEF8
	c.bnez	a0,000000002304FEBE

l2304FE94:
	c.li	a5,00000007
	add	a5,s7,a5
	c.li	a4,00000001
	c.mv	s1,s7
	c.add	a5,s3
	sb	a4,a5,+0000001E

l2304FEA4:
	lbu	a5,s3,+00000016
	c.addi	s1,00000001
	sh	s1,s0,+00000044
	c.addi	a5,00000001
	sb	a5,s3,+00000016
	c.li	a5,00000000
	c.j	000000002304FBEC

l2304FEB8:
	bne	s1,s9,000000002304FEBE

l2304FEBC:
	c.mv	s1,s7

l2304FEBE:
	c.addi	s7,00000001
	c.addi	s2,00000007
	bne	s7,s8,000000002304FE80

l2304FEC6:
	c.li	a5,FFFFFFFF
	beq	s1,a5,000000002304FDD6

l2304FECC:
	c.li	s2,00000007
	add	s2,s1,s2
	c.li	a2,00000006
	c.mv	a1,s4
	addi	a0,s2,+00000018
	c.add	a0,s3
	jal	ra,000000002306CF80
	c.add	s2,s3
	c.li	a5,00000001
	sb	a5,s2,+0000001E
	c.j	000000002304FEA4

;; apm_deauth_handler: 2304FEEA
;;   Called from:
;;     23064184 (in rxu_mgt_ind_handler)
apm_deauth_handler proc
	lbu	a4,a0,+00000008
	addi	a5,zero,+000000FF
	c.mv	a1,a0
	beq	a4,a5,000000002304FF08

l2304FEF8:
	lbu	a0,a0,+00000007
	beq	a0,a5,000000002304FF08

l2304FF00:
	addi	a1,a1,+00000026
	jal	zero,000000002304EFB6

l2304FF08:
	c.jr	ra

;; apm_disassoc_handler: 2304FF0A
;;   Called from:
;;     23064192 (in rxu_mgt_ind_handler)
apm_disassoc_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	lbu	s0,a0,+00000008
	addi	a5,zero,+000000FF
	beq	s0,a5,000000002304FF5A

l2304FF1C:
	c.mv	a2,a0
	lbu	a0,a0,+00000007
	beq	a0,a5,000000002304FF5A

l2304FF26:
	addi	a2,a2,+00000026
	c.mv	a1,a2
	c.swsp	a2,00000084
	jal	ra,000000002304EFB6
	addi	a0,zero,+000005D8
	add	s0,s0,a0
	lui	a0,0004201C
	addi	a0,a0,-00000308
	c.lwsp	a2,00000084
	c.lwsp	t3,00000020
	c.li	a5,00000002
	c.li	a4,00000000
	c.li	a3,00000000
	addi	a1,zero,+000000C0
	c.add	a0,s0
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	jal	zero,000000002304F76A

l2304FF5A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; apm_beacon_handler: 2304FF62
;;   Called from:
;;     230641A0 (in rxu_mgt_ind_handler)
apm_beacon_handler proc
	c.jr	ra

;; apm_sta_remove: 2304FF64
;;   Called from:
;;     23064218 (in apm_sta_del_req_handler)
apm_sta_remove proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	s0,zero,+000001B0
	add	s0,a1,s0
	lui	a5,0004201B
	addi	a5,a5,-000007F8
	lui	a6,0004201C
	addi	a6,a6,-00000308
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
	jal	ra,000000002304F76A
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002304EFB6

;; co_list_init: 2304FFB4
;;   Called from:
;;     230478F0 (in mm_timer_init)
;;     230483B8 (in rxl_init)
;;     2304895A (in rxl_reset)
;;     2304896A (in rxl_reset)
;;     23048D9A (in sta_mgmt_init)
;;     2304962C (in txl_cntrl_init)
;;     23049FB4 (in txl_reset)
;;     2304A0C6 (in txl_frame_init)
;;     2304A0EE (in txl_frame_init)
;;     2304AC82 (in vif_mgmt_init)
;;     2304AC8E (in vif_mgmt_init)
;;     2304BD70 (in rxu_cntrl_init)
;;     2304BD7C (in rxu_cntrl_init)
;;     2304BD88 (in rxu_cntrl_init)
;;     2304BD94 (in rxu_cntrl_init)
;;     2304DA2A (in sm_set_bss_param)
;;     2305C974 (in hal_dma_init)
;;     2305C990 (in hal_dma_init)
;;     2305E846 (in mm_bcn_init)
;;     2305F7BE (in txl_cfm_init)
;;     2305F7CA (in txl_cfm_init)
;;     2305F7D6 (in txl_cfm_init)
;;     2305F7E2 (in txl_cfm_init)
;;     2305F7F4 (in txl_cfm_init)
co_list_init proc
	sw	zero,a0,+00000000
	sw	zero,a0,+00000004
	c.jr	ra

;; co_list_push_back: 2304FFBE
;;   Called from:
;;     2304843C (in rxl_timer_int_handler)
;;     23048DB2 (in sta_mgmt_init)
;;     23048F8C (in sta_mgmt_register)
;;     23049014 (in sta_mgmt_unregister)
;;     23049C26 (in txl_cntrl_push_int)
;;     23049C5C (in txl_cntrl_push_int)
;;     23049CAC (in txl_cntrl_push_int_force)
;;     23049D3C (in txl_cntrl_push)
;;     2304A164 (in txl_frame_init)
;;     2304A454 (in txl_frame_cfm)
;;     2304A480 (in txl_frame_release)
;;     2304A50E (in txl_frame_evt)
;;     2304ACD4 (in vif_mgmt_init)
;;     2304AD16 (in vif_mgmt_init)
;;     2304ADD4 (in vif_mgmt_register)
;;     2304AF88 (in vif_mgmt_unregister)
;;     2304B8E8 (in rxu_mpdu_upload_and_indicate.constprop.11)
;;     2304C5FE (in rxu_cntrl_frame_handle)
;;     2304DA44 (in sm_set_bss_param)
;;     2304DA78 (in sm_set_bss_param)
;;     2304DAAC (in sm_set_bss_param)
;;     2304DACE (in sm_set_bss_param)
;;     2304DB2C (in sm_set_bss_param)
;;     2304DB4C (in sm_set_bss_param)
;;     2304F2D4 (in apm_set_bss_param)
;;     2304F2F4 (in apm_set_bss_param)
;;     2304F31C (in apm_set_bss_param)
;;     2304F338 (in apm_set_bss_param)
;;     2304F350 (in apm_set_bss_param)
;;     23050536 (in ke_msg_send)
;;     230506EC (in ke_state_set)
;;     23050906 (in ke_task_schedule)
;;     2305B592 (in chan_tbtt_insert)
;;     2305BFC0 (in chan_init)
;;     2305C37E (in chan_ctxt_del)
;;     2305C80A (in chan_ctxt_link)
;;     2305C9E8 (in hal_dma_push)
;;     2305E9B4 (in mm_tim_update)
;;     2305F816 (in txl_cfm_push)
co_list_push_back proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s0,a1
	c.bnez	a1,000000002304FFE4

l2304FFCC:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+00000047
	addi	a1,a1,+00000388
	addi	a0,a0,-0000003C
	jal	ra,0000000023054FF4

l2304FFE4:
	c.lw	s1,0(a5)
	c.bnez	a5,000000002304FFFA

l2304FFE8:
	c.sw	s1,0(s0)

l2304FFEA:
	c.sw	s1,4(s0)
	sw	zero,s0,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2304FFFA:
	c.lw	s1,4(a5)
	c.sw	a5,0(s0)
	c.j	000000002304FFEA

;; co_list_push_front: 23050000
;;   Called from:
;;     230500FA (in co_list_insert_after)
co_list_push_front proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s0,a1
	c.bnez	a1,0000000023050026

l2305000E:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+0000005E
	addi	a1,a1,+00000388
	addi	a0,a0,-0000003C
	jal	ra,0000000023054FF4

l23050026:
	c.lw	s1,0(a5)
	c.bnez	a5,000000002305002C

l2305002A:
	c.sw	s1,4(s0)

l2305002C:
	c.sw	s0,0(a5)
	c.sw	s1,0(s0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; co_list_pop_front: 2305003A
;;   Called from:
;;     2304793C (in mm_timer_set)
;;     230479C0 (in mm_timer_clear)
;;     23047A3C (in mm_timer_schedule)
;;     230485E0 (in rxl_cntrl_evt)
;;     23048D6A (in sta_mgmt_entry_init)
;;     23048E6E (in sta_mgmt_register)
;;     23049164 (in sta_mgmt_send_postponed_frame)
;;     23049E96 (in txl_transmit_trigger)
;;     2304A264 (in txl_frame_get)
;;     2304A4D4 (in txl_frame_evt)
;;     2304AD4E (in vif_mgmt_register)
;;     2304C6D6 (in rxu_swdesc_upload_evt)
;;     2304C748 (in rxu_swdesc_upload_evt)
;;     2304D986 (in sm_send_next_bss_param)
;;     2304F20C (in apm_send_next_bss_param)
;;     230507C0 (in ke_task_schedule)
;;     23050AEE (in ke_timer_clear)
;;     23050BA4 (in ke_timer_schedule)
;;     2305B88C (in chan_tbtt_schedule)
;;     2305C2AA (in chan_ctxt_add)
;;     2305CA5E (in hal_dma_evt)
;;     2305EE2A (in mm_bcn_transmitted)
;;     2305F8A4 (in txl_cfm_evt)
;;     2305F900 (in txl_cfm_flush)
co_list_pop_front proc
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023050042

l2305003E:
	c.lw	a5,0(a4)
	c.sw	a0,0(a4)

l23050042:
	c.mv	a0,a5
	c.jr	ra

;; co_list_extract: 23050046
;;   Called from:
;;     23047994 (in mm_timer_set)
;;     230479DE (in mm_timer_clear)
;;     23048FFA (in sta_mgmt_unregister)
;;     2304AEB8 (in vif_mgmt_unregister)
;;     2305B588 (in chan_tbtt_insert)
;;     2305C498 (in chan_tbtt_switch_update)
;;     2305C4E8 (in chan_bcn_to_evt)
;;     2305C8A6 (in chan_ctxt_unlink)
;;     2305C8EE (in chan_ctxt_unlink)
co_list_extract proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	c.bnez	a0,000000002305006C

l23050054:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+00000081
	addi	a1,a1,+00000388
	addi	a0,a0,-0000004C
	jal	ra,0000000023054FF4

l2305006C:
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023050078

l23050070:
	bne	a5,s1,0000000023050084

l23050074:
	c.lw	s1,0(a5)
	c.sw	s0,0(a5)

l23050078:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23050082:
	c.mv	a5,a4

l23050084:
	c.lw	a5,0(a4)
	c.beqz	a4,0000000023050078

l23050088:
	bne	a4,s1,0000000023050082

l2305008C:
	c.lw	s0,4(a4)
	bne	a4,s1,0000000023050094

l23050092:
	c.sw	s0,4(a5)

l23050094:
	c.lw	s1,0(a4)
	c.sw	a5,0(a4)
	c.j	0000000023050078

;; co_list_cnt: 2305009A
;;   Called from:
;;     230483D2 (in rxl_cntrl_dump)
;;     2304A008 (in txl_cntrl_env_dump)
;;     2304A35A (in txl_frame_get)
;;     2304A368 (in txl_frame_get)
;;     2304AC2A (in txl_frame_dump)
;;     2305F98C (in txl_cfm_dump)
co_list_cnt proc
	c.lw	a0,0(a5)
	c.li	a0,00000000

l2305009E:
	c.bnez	a5,00000000230500A2

l230500A0:
	c.jr	ra

l230500A2:
	c.addi	a0,00000001
	c.lw	a5,0(a5)
	c.j	000000002305009E

;; co_list_insert: 230500A8
;;   Called from:
;;     23047954 (in mm_timer_set)
;;     23050A4C (in ke_timer_set)
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

l230500BC:
	c.beqz	s0,00000000230500D0

l230500BE:
	c.mv	a1,s0
	c.mv	a0,s1
	c.swsp	a2,00000084
	c.jalr	a2
	c.bnez	a0,00000000230500D4

l230500C8:
	c.mv	s3,s0
	c.lwsp	a2,00000084
	c.lw	s0,0(s0)
	c.j	00000000230500BC

l230500D0:
	sw	s1,s2,+00000004

l230500D4:
	c.sw	s1,0(s0)
	beq	s3,zero,00000000230500EC

l230500DA:
	sw	s1,s3,+00000000

l230500DE:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l230500EC:
	sw	s1,s2,+00000000
	c.j	00000000230500DE

;; co_list_insert_after: 230500F2
;;   Called from:
;;     2305B5CE (in chan_tbtt_insert)
co_list_insert_after proc
	c.mv	a4,a0
	c.lw	a0,0(a5)
	c.bnez	a1,0000000023050104

l230500F8:
	c.mv	a1,a2
	jal	zero,0000000023050000

l230500FE:
	beq	a5,a1,000000002305010C

l23050102:
	c.lw	a5,0(a5)

l23050104:
	c.bnez	a5,00000000230500FE

l23050106:
	c.jr	ra

l23050108:
	c.sw	a4,4(a2)
	c.jr	ra

l2305010C:
	c.lw	a5,0(a3)
	c.sw	a2,0(a3)
	c.sw	a5,0(a2)
	c.lw	a2,0(a5)
	c.beqz	a5,0000000023050108

l23050116:
	c.jr	ra

;; co_list_remove: 23050118
;;   Called from:
;;     2304F640 (in apm_tx_int_ps_get_postpone)
co_list_remove proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a0
	c.mv	s1,a1
	c.mv	s0,a2
	c.bnez	a0,0000000023050142

l2305012A:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+00000168
	addi	a1,a1,+00000388
	addi	a0,a0,-0000004C
	jal	ra,0000000023054FF4

l23050142:
	c.beqz	s1,0000000023050176

l23050144:
	c.lw	s1,0(a5)
	beq	a5,s0,0000000023050162

l2305014A:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+00000169
	addi	a1,a1,+00000388
	addi	a0,a0,-00000028
	jal	ra,0000000023054FF4

l23050162:
	c.beqz	s0,0000000023050178

l23050164:
	c.lw	s0,0(a5)
	c.sw	s1,0(a5)
	lw	a5,s2,+00000004
	bne	a5,s0,0000000023050198

l23050170:
	sw	s1,s2,+00000004
	c.j	0000000023050198

l23050176:
	c.bnez	s0,0000000023050192

l23050178:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+0000016A
	addi	a1,a1,+00000388
	addi	a0,a0,+00000014
	jal	ra,0000000023054FF4
	c.bnez	s1,0000000023050164

l23050192:
	c.lw	s0,0(a5)
	sw	a5,s2,+00000000

l23050198:
	sw	zero,s0,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; ke_evt_set: 230501A8
;;   Called from:
;;     2304798A (in mm_timer_set)
;;     2304848A (in rxl_timer_int_handler)
;;     230485B6 (in rxl_cntrl_evt)
;;     2304A460 (in txl_frame_cfm)
;;     2304C01C (in rxu_cntrl_frame_handle)
;;     2304C6AA (in rxu_cntrl_evt)
;;     23050236 (in bl60x_fw_dump_statistic)
;;     23050546 (in ke_msg_send)
;;     230506F8 (in ke_state_set)
;;     23050A88 (in ke_timer_set)
;;     23054FDE (in assert_rec)
;;     230553FC (in ipc_emb_tx_irq)
;;     230554CE (in ipc_emb_tx_evt)
;;     2305556E (in ipc_emb_cfmback_irq)
;;     2305558E (in ipc_emb_cfmback_irq)
;;     230555BC (in ipc_emb_msg_irq)
;;     2305B29C (in bl_irq_handler)
;;     2305CA2C (in hal_dma_push)
;;     2305D1BA (in hal_machw_gen_handler)
;;     2305D1CC (in hal_machw_gen_handler)
;;     2305D214 (in hal_machw_gen_handler)
;;     2305D22C (in hal_machw_gen_handler)
;;     2305D2B4 (in hal_machw_gen_handler)
;;     2305F830 (in txl_cfm_push)
ke_evt_set proc
	csrrci	zero,mstatus,00000008
	lui	a5,0004201F
	addi	a5,a5,-00000124
	c.lw	a5,0(a4)
	c.or	a4,a0
	c.sw	a5,0(a4)
	csrrsi	zero,mstatus,00000008
	c.jr	ra

;; ke_evt_clear: 230501C0
;;   Called from:
;;     23047A08 (in mm_timer_schedule)
;;     230484BA (in rxl_dma_evt)
;;     230485A2 (in rxl_cntrl_evt)
;;     23049F1C (in txl_reset)
;;     2304A4C0 (in txl_frame_evt)
;;     2304C694 (in rxu_cntrl_evt)
;;     2304C6CE (in rxu_swdesc_upload_evt)
;;     230501E4 (in bl_event_handle)
;;     230501F8 (in bl_fw_statistic_dump)
;;     230502E4 (in ke_init)
;;     23050886 (in ke_task_schedule)
;;     23050B76 (in ke_timer_schedule)
;;     23055440 (in ipc_emb_tx_evt)
;;     23055612 (in ipc_emb_msg_evt)
;;     2305CA46 (in hal_dma_evt)
;;     2305D824 (in mm_tbtt_evt)
;;     2305DB66 (in mm_hw_idle_evt)
;;     2305EECC (in bl_reset_evt)
;;     2305F88E (in txl_cfm_evt)
ke_evt_clear proc
	csrrci	zero,mstatus,00000008
	lui	a5,0004201F
	addi	a5,a5,-00000124
	c.lw	a5,0(a4)
	xori	a0,a0,-00000001
	c.and	a0,a4
	c.sw	a5,0(a0)
	csrrsi	zero,mstatus,00000008
	c.jr	ra

;; bl_event_handle: 230501DC
bl_event_handle proc
	c.addi	sp,FFFFFFF0
	lui	a0,00040000
	c.swsp	ra,00000084
	jal	ra,00000000230501C0
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023008170

;; bl_fw_statistic_dump: 230501F0
;;   Called from:
;;     2305022E (in bl60x_fw_dump_statistic)
bl_fw_statistic_dump proc
	c.addi	sp,FFFFFFF0
	addi	a0,zero,+00000020
	c.swsp	ra,00000084
	jal	ra,00000000230501C0
	csrrci	zero,mstatus,00000008
	jal	ra,000000002300A3D0
	jal	ra,000000002304AC1C
	jal	ra,0000000023055710
	jal	ra,0000000023049FE8
	jal	ra,000000002305F976
	jal	ra,000000002304896E
	jal	ra,00000000230483C4
	jal	ra,0000000023046B96
	csrrsi	zero,mstatus,00000008
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; bl60x_fw_dump_statistic: 2305022A
;;   Called from:
;;     23006BF4 (in cmd_wifi_dump)
bl60x_fw_dump_statistic proc
	c.beqz	a0,0000000023050232

l2305022C:
	c.li	a0,00000000
	jal	zero,00000000230501F0

l23050232:
	addi	a0,zero,+00000020
	jal	zero,00000000230501A8

;; ke_evt_schedule: 2305023A
;;   Called from:
;;     23055210 (in wifi_main)
ke_evt_schedule proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004201F
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	addi	a4,a5,-00000124
	c.lw	a4,0(a0)
	lui	s1,0002307C
	addi	s0,a5,-00000124
	addi	s1,s1,+00000024
	c.li	s4,0000001A
	lui	s5,0002307B
	lui	s6,0002307C

l2305026C:
	c.bnez	a0,0000000023050282

l2305026E:
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

l23050282:
	jal	ra,0000000023068C40
	slli	s2,a0,00000003
	add	a5,s1,s2
	lw	s3,a5,+00000000
	blt	s4,a0,000000002305029A

l23050296:
	bne	s3,zero,00000000230502AA

l2305029A:
	addi	a2,zero,+000000DD
	addi	a1,s5,+00000388
	addi	a0,s6,+00000124
	jal	ra,0000000023054FF4

l230502AA:
	c.add	s2,s1
	lw	a0,s2,+00000004
	c.jalr	s3
	c.lw	s0,0(a0)
	c.j	000000002305026C

;; ke_init: 230502B6
;;   Called from:
;;     2305EE8A (in bl_init)
ke_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.jal	00000000230502E8
	lui	a5,0004201F
	addi	a5,a5,-00000124
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
	jal	zero,00000000230501C0

;; ke_mem_init: 230502E8
;;   Called from:
;;     230502BA (in ke_init)
ke_mem_init proc
	lui	a0,0004201D
	addi	a0,a0,-0000028D
	c.andi	a0,FFFFFFFC
	csrrci	zero,mstatus,00000008
	lui	a5,0004201E
	addi	a5,a5,+000001F0
	c.andi	a5,FFFFFFFC
	c.sub	a5,a0
	c.sw	a0,4(a5)
	sw	zero,a0,+00000000
	csrrsi	zero,mstatus,00000008
	c.jr	ra
