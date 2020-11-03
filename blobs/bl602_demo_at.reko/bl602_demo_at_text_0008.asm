;;; Segment .text (23000300)

l2308030C:
	lui	a0,000230C6
	c.mv	a2,s2
	c.mv	a1,s0
	addi	a0,a0,-00000178
	jal	ra,0000000023082388
	c.lw	s1,0(a2)
	sub	a2,a2,s2
	c.sw	s1,0(a2)
	c.li	s1,00000000
	blt	zero,a2,00000000230802BE

l2308032A:
	lui	s2,000230C7
	addi	a0,s2,-00000700
	jal	ra,000000002307C77E
	lui	a0,000230C6
	c.mv	a1,s0
	addi	a0,a0,-0000018C
	jal	ra,000000002307C77E
	addi	a0,s2,-00000700
	jal	ra,000000002307C77E
	c.j	00000000230802BE

;; tcp_connected_callback: 2308034E
tcp_connected_callback proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.li	a5,00000004
	bge	a5,a0,0000000023080382

l23080362:
	lui	a3,000230C6
	lui	a2,000230C6
	addi	a3,a3,-00000224
	addi	a2,a2,-000003BC
	addi	a1,zero,+000000D7

l23080376:
	lui	a0,000230C6
	addi	a0,a0,-00000208
	jal	ra,00000000230A35AC

l23080382:
	lui	s0,0004201C
	c.mv	s1,a0
	lui	s3,00042028
	addi	s0,s0,+00000330
	lui	s2,000230C7
	c.bnez	a2,0000000023080456

l23080396:
	lw	a0,s3,+000000EC
	c.mv	s4,a1
	c.li	a1,FFFFFFFF
	jal	ra,00000000230617D0
	addi	a5,zero,+00000038
	add	a5,s1,a5
	addi	a0,s2,-00000700
	c.add	s0,a5
	lbu	a4,s0,+00000018
	c.li	a5,00000003
	sb	a5,s0,+00000038
	bne	a4,a5,0000000023080442

l230803BE:
	c.lw	s0,48(a0)
	jal	ra,00000000230873E0
	c.bnez	a0,00000000230803DC

l230803C6:
	lui	a3,000230C6
	lui	a2,000230C6
	addi	a3,a3,-00000294
	addi	a2,a2,-000003BC
	addi	a1,zero,+000000E0
	c.j	0000000023080376

l230803DC:
	jal	ra,000000002308B7EC
	c.mv	a2,a0
	c.swsp	a0,00000084
	addi	a0,s2,-00000700
	c.beqz	a2,0000000023080442

l230803EA:
	jal	ra,000000002307C77E
	c.lwsp	a2,00000084
	lui	a0,000230C6
	c.mv	a1,s1
	addi	a0,a0,-00000280
	jal	ra,000000002307C77E

l230803FE:
	addi	a0,s2,-00000700
	jal	ra,000000002307C77E
	lui	a1,00023080
	addi	a1,a1,+000004AC
	c.mv	a0,s4
	jal	ra,00000000230863C6
	lui	a1,00023080
	addi	a1,a1,+00000254
	c.mv	a0,s4
	jal	ra,00000000230863CC

l23080422:
	lw	a0,s3,+000000EC
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l23080442:
	jal	ra,000000002307C77E
	lui	a0,000230C6
	c.mv	a1,s1
	addi	a0,a0,-00000268
	jal	ra,000000002307C77E
	c.j	00000000230803FE

l23080456:
	addi	a0,s2,-00000700
	jal	ra,000000002307C77E
	lui	a0,000230C6
	c.mv	a1,s1
	addi	a0,a0,-00000254
	jal	ra,000000002307C77E
	addi	a0,s2,-00000700
	jal	ra,000000002307C77E
	lw	a0,s3,+000000EC
	c.li	a1,FFFFFFFF
	jal	ra,00000000230617D0
	addi	a5,zero,+00000038
	add	s1,s1,a5
	c.add	s0,s1
	c.lw	s0,48(a0)
	sb	zero,s0,+00000038
	jal	ra,0000000023086452
	lbu	a4,s0,+00000018
	sw	zero,s0,+00000030
	c.li	a5,00000003
	bne	a4,a5,0000000023080422

l230804A0:
	c.lw	s0,52(a0)
	jal	ra,0000000023087482
	sw	zero,s0,+00000034
	c.j	0000000023080422

;; tcp_receive_callback: 230804AC
tcp_receive_callback proc
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
	c.li	a5,00000004
	bge	a5,a0,00000000230804E6

l230804C6:
	lui	a3,000230C6
	lui	a2,000230C6
	lui	a0,000230C6
	addi	a3,a3,-00000224
	addi	a2,a2,-000003FC
	addi	a1,zero,+00000082
	addi	a0,a0,-00000208
	jal	ra,00000000230A35AC

l230804E6:
	lui	s3,00042028
	c.mv	s1,a0
	lw	a0,s3,+000000EC
	c.li	a1,FFFFFFFF
	c.mv	s4,a2
	jal	ra,00000000230617D0
	addi	a5,zero,+00000038
	add	a5,s1,a5
	lui	a4,0004201C
	addi	s0,a4,+00000330
	c.mv	s7,s3
	addi	s6,a4,+00000330
	c.add	s0,a5
	lbu	s5,s0,+00000038
	c.li	a5,00000003
	beq	s5,a5,000000002308054E

l2308051A:
	lui	a0,000230C6
	c.mv	a1,s1
	addi	a0,a0,-000001B4
	jal	ra,0000000023082388
	lw	a0,s3,+000000EC
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.li	a0,FFFFFFF5

l23080538:
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

l2308054E:
	lui	s2,000230C7
	bne	s4,zero,00000000230805A6

l23080556:
	sb	zero,s0,+00000038
	addi	a0,s2,-00000700
	jal	ra,000000002307C77E
	lui	a0,000230C6
	c.mv	a1,s1
	addi	a0,a0,-00000244
	jal	ra,000000002307C77E
	addi	a0,s2,-00000700
	jal	ra,000000002307C77E
	c.lw	s0,48(a0)
	jal	ra,0000000023086452
	lbu	a5,s0,+00000018
	sw	zero,s0,+00000030
	bne	a5,s5,0000000023080594

l2308058A:
	c.lw	s0,52(a0)
	jal	ra,0000000023087482
	sw	zero,s0,+00000034

l23080594:
	lw	a0,s7,+000000EC
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344

l230805A2:
	c.li	a0,00000000
	c.j	0000000023080538

l230805A6:
	lw	a0,s3,+000000EC
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	jal	ra,000000002307C432
	addi	a0,s2,-00000700
	jal	ra,000000002307C77E
	lui	a0,000230C6
	addi	a0,a0,-00000234
	jal	ra,000000002307C77E
	addi	a0,s2,-00000700
	jal	ra,000000002307C77E
	addi	a0,s2,-00000700
	jal	ra,000000002307C77E
	lhu	a2,s4,+00000008
	lui	a0,000230C6
	c.mv	a1,s1
	addi	a0,a0,-0000022C
	jal	ra,000000002307C77E
	addi	a0,s2,-00000700
	jal	ra,000000002307C77E
	c.mv	s0,s4

l230805F8:
	lhu	a1,s0,+0000000A
	c.lw	s0,4(a0)
	jal	ra,000000002307C490
	c.lw	s0,0(s0)
	c.bnez	s0,00000000230805F8

l23080606:
	jal	ra,000000002307C462
	addi	a5,zero,+00000038
	add	s1,s1,a5
	lhu	a1,s4,+00000008
	c.add	s1,s6
	c.lw	s1,48(a0)
	jal	ra,00000000230863F2
	c.mv	a0,s4
	jal	ra,00000000230701A4
	c.j	00000000230805A2

;; get_romfs_file_content: 23080626
;;   Called from:
;;     23080D8C (in bl_cipstart)
;;     23080DCE (in bl_cipstart)
;;     23080DDA (in bl_cipstart)
;;     23080DE6 (in bl_cipstart)
;;     23080E0C (in bl_cipstart)
;;     23080E18 (in bl_cipstart)
get_romfs_file_content proc
	c.addi	sp,FFFFFFE0
	c.swsp	a1,00000084
	c.li	a1,00000000
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	jal	ra,000000002307AC90
	blt	a0,zero,0000000023080652

l23080638:
	c.lwsp	a2,00000084
	c.li	a1,00000001
	c.mv	s0,a0
	jal	ra,000000002307AE08
	c.mv	a0,s0
	jal	ra,000000002307AD54
	c.li	a0,00000000

l2308064A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23080652:
	c.li	a0,FFFFFFFF
	c.j	000000002308064A

;; udp_send_data: 23080656
udp_send_data proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.bnez	a0,0000000023080686

l23080666:
	lui	a3,000230C6
	lui	a2,000230C6
	addi	a3,a3,-00000134
	addi	a2,a2,-00000388
	addi	a1,zero,+000002B6

l2308067A:
	lui	a0,000230C6
	addi	a0,a0,-00000208
	jal	ra,00000000230A35AC

l23080686:
	c.lw	a0,4(a5)
	c.mv	s0,a0
	c.bnez	a5,00000000230806A2

l2308068C:
	lui	a3,000230C6
	lui	a2,000230C6
	addi	a3,a3,-00000128
	addi	a2,a2,-00000388
	addi	a1,zero,+000002BA
	c.j	000000002308067A

l230806A2:
	jal	ra,0000000023063658
	lw	s2,s0,+00000000
	addi	a5,zero,+00000038
	lui	s1,000230C7
	add	a5,s2,a5
	lui	s2,0004201C
	addi	s2,s2,+00000330
	c.add	s2,a5
	lbu	a4,s2,+00000018
	c.li	a5,00000002
	bne	a4,a5,00000000230806D0

l230806CA:
	lbu	a5,s2,+00000038
	c.bnez	a5,0000000023080706

l230806D0:
	jal	ra,000000002306366C

l230806D4:
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	c.lw	s0,0(a1)
	lui	a0,000230C6
	addi	a0,a0,-00000114
	jal	ra,000000002307C77E
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E

l230806F2:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,000000002307BEF4

l23080706:
	lui	s4,0004200F
	jal	ra,000000002306366C
	addi	s4,s4,+000006EC
	lhu	a1,s4,+00000000
	addi	a2,zero,+00000280
	addi	a0,zero,+000000B6
	jal	ra,0000000023070226
	c.mv	s3,a0
	c.beqz	a0,00000000230806D4

l23080726:
	c.lw	s0,4(a1)
	lw	a2,s4,+00000000
	c.lw	a0,4(a0)
	jal	ra,00000000230A382C
	lw	a0,s2,+00000030
	c.mv	a1,s3
	jal	ra,0000000023075138
	c.beqz	a0,0000000023080764

l2308073E:
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	c.lw	s0,0(a1)
	lui	a0,000230C6
	addi	a0,a0,-00000114

l23080750:
	jal	ra,000000002307C77E
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	c.mv	a0,s3
	jal	ra,00000000230701A4
	c.j	00000000230806F2

l23080764:
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	lui	a0,000230C6
	c.lw	s0,0(a1)
	addi	a0,a0,-00000100
	c.j	0000000023080750

;; tcp_err_callback: 23080778
tcp_err_callback proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.li	a5,00000004
	bge	a5,a0,00000000230807A6

l23080786:
	lui	a3,000230C6
	lui	a2,000230C6
	lui	a0,000230C6
	addi	a3,a3,-00000224
	addi	a2,a2,-000003D0
	addi	a1,zero,+000000C6
	addi	a0,a0,-00000208
	jal	ra,00000000230A35AC

l230807A6:
	lui	s1,000230C7
	c.mv	s0,a0
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	lui	a0,000230C6
	c.mv	a1,s0
	addi	a0,a0,-00000254
	jal	ra,000000002307C77E
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	lui	s1,00042028
	lw	a0,s1,+000000EC
	c.li	a1,FFFFFFFF
	jal	ra,00000000230617D0
	addi	a5,zero,+00000038
	add	a5,s0,a5
	lui	s0,0004201C
	addi	s0,s0,+00000330
	c.add	s0,a5
	lbu	a4,s0,+00000018
	sb	zero,s0,+00000038
	sw	zero,s0,+00000030
	c.li	a5,00000003
	bne	a4,a5,0000000023080806

l230807FC:
	c.lw	s0,52(a0)
	jal	ra,0000000023087482
	sw	zero,s0,+00000034

l23080806:
	c.lwsp	s0,00000004
	lw	a0,s1,+000000EC
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,0000000023061344

;; udp_receive_callback: 2308081C
udp_receive_callback proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.li	a5,00000004
	c.mv	s0,a2
	bge	a5,a0,000000002308084A

l2308082E:
	lui	a0,000230C6
	addi	a0,a0,-00000158
	jal	ra,0000000023082388

l2308083A:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,00000000230701A4

l2308084A:
	c.mv	s2,a0
	jal	ra,0000000023063658
	addi	a5,zero,+00000038
	add	a4,s2,a5
	lui	a5,0004201C
	addi	a5,a5,+00000330
	c.add	a5,a4
	lbu	a5,a5,+00000038
	c.bnez	a5,000000002308087C

l23080868:
	jal	ra,000000002306366C
	lui	a0,000230C6
	c.mv	a1,s2
	addi	a0,a0,-000001B4
	jal	ra,0000000023082388
	c.j	000000002308083A

l2308087C:
	jal	ra,000000002306366C
	lui	s1,000230C7
	jal	ra,000000002307C432
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	lui	a0,000230C6
	addi	a0,a0,-00000234
	jal	ra,000000002307C77E
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	lhu	a2,s0,+00000008
	lui	a0,000230C6
	c.mv	a1,s2
	addi	a0,a0,-0000022C
	jal	ra,000000002307C77E
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	c.mv	s1,s0

l230808C8:
	lhu	a1,s1,+0000000A
	c.lw	s1,4(a0)
	jal	ra,000000002307C490
	c.lw	s1,0(s1)
	c.bnez	s1,00000000230808C8

l230808D6:
	jal	ra,000000002307C462
	c.j	000000002308083A

;; tcp_accept_callback: 230808DC
tcp_accept_callback proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.mv	s0,a1
	c.beqz	a2,000000002308091C

l230808F2:
	lui	a0,000230C6
	addi	a0,a0,-000002C0

l230808FA:
	jal	ra,0000000023082388
	c.mv	a0,s0
	jal	ra,0000000023086452
	c.li	s6,FFFFFFF5

l23080906:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s6
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	c.jr	ra

l2308091C:
	lui	s4,00042028
	lw	a0,s4,+000000EC
	c.li	a1,FFFFFFFF
	lui	s1,0004201C
	c.mv	s6,a2
	jal	ra,00000000230617D0
	addi	a5,s1,+00000330
	c.li	s2,00000000
	addi	s1,s1,+00000330
	c.li	a4,00000005

l2308093C:
	lbu	a3,a5,+00000038
	c.bnez	a3,0000000023080982

l23080942:
	addi	a0,zero,+00000038
	add	a0,s2,a0
	addi	a2,zero,+00000038
	c.li	a1,00000000
	c.addi	a0,00000004
	c.add	a0,s1
	jal	ra,00000000230A3A68

l23080958:
	addi	s3,zero,+00000038
	add	s3,s2,s3
	add	s5,s1,s3
	lbu	a5,s5,+00000038
	c.beqz	a5,000000002308098E

l2308096A:
	lw	a0,s4,+000000EC
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	lui	a0,000230C6
	addi	a0,a0,-000002B0
	c.j	00000000230808FA

l23080982:
	c.addi	s2,00000001
	addi	a5,a5,+00000038
	bne	s2,a4,000000002308093C

l2308098C:
	c.j	0000000023080958

l2308098E:
	c.lw	s1,0(a5)
	sw	s0,s5,+00000030
	c.li	a1,00000000
	c.addi	a5,00000001
	c.sw	s1,0(a5)
	c.li	a5,00000003
	sb	a5,s5,+00000038
	c.li	a5,00000001
	sb	a5,s5,+00000018
	c.mv	a0,s0
	jal	ra,000000002308653C
	addi	a1,s3,+00000004
	c.li	a2,00000010
	c.add	a1,s1
	jal	ra,000000002306F4EA
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023086550
	sw	a0,s5,+00000014
	lw	a0,s4,+000000EC
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	lui	s1,000230C7
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	lui	a0,000230C6
	c.mv	a1,s2
	addi	a0,a0,-00000268
	jal	ra,000000002307C77E
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,00000000230863BA
	lui	a1,00023080
	c.mv	a0,s0
	addi	a1,a1,+000004AC
	jal	ra,00000000230863C6
	lui	a1,00023080
	c.mv	a0,s0
	addi	a1,a1,+00000254
	jal	ra,00000000230863CC
	lui	a1,00023080
	addi	a1,a1,+00000778
	c.mv	a0,s0
	jal	ra,00000000230863EC
	c.j	0000000023080906

;; tcp_send_data: 23080A28
tcp_send_data proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.bnez	a0,0000000023080A52

l23080A32:
	lui	a3,000230C6
	lui	a2,000230C6
	addi	a3,a3,-00000134
	addi	a2,a2,-00000398
	addi	a1,zero,+000002A1

l23080A46:
	lui	a0,000230C6
	addi	a0,a0,-00000208
	jal	ra,00000000230A35AC

l23080A52:
	c.lw	a0,4(a5)
	c.mv	s0,a0
	c.bnez	a5,0000000023080A6E

l23080A58:
	lui	a3,000230C6
	lui	a2,000230C6
	addi	a3,a3,-00000128
	addi	a2,a2,-00000398
	addi	a1,zero,+000002A4
	c.j	0000000023080A46

l23080A6E:
	jal	ra,0000000023063658
	c.lw	s0,0(s1)
	addi	a5,zero,+00000038
	add	a5,s1,a5
	lui	s1,0004201C
	addi	s1,s1,+00000330
	c.add	s1,a5
	lbu	a4,s1,+00000018
	c.li	a5,00000002
	beq	a4,a5,0000000023080A96

l23080A90:
	lbu	a5,s1,+00000038
	c.bnez	a5,0000000023080ACA

l23080A96:
	jal	ra,000000002306366C
	lui	s1,000230C7
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E
	c.lw	s0,0(a1)
	lui	a0,000230C6
	addi	a0,a0,-00000114
	jal	ra,000000002307C77E
	addi	a0,s1,-00000700
	jal	ra,000000002307C77E

l23080ABC:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002307BEF4

l23080ACA:
	jal	ra,000000002306366C
	lui	a5,0004200F
	lhu	a2,a5,+000006EC
	c.lw	s0,4(a1)
	c.lw	s1,48(a0)
	c.li	a3,00000000
	jal	ra,000000002308647A
	c.j	0000000023080ABC

;; bl_cipstatus: 23080AE2
bl_cipstatus proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	s0,0004201C
	lui	s2,000230C6
	lui	s3,000230C6
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	addi	s0,s0,+00000330
	c.li	s1,00000000
	lui	s4,000230C7
	c.li	s5,00000002
	lui	s6,000230C6
	addi	s2,s2,-000002E0
	addi	s3,s3,-00000408

l23080B18:
	lbu	a5,s0,+00000038
	c.beqz	a5,0000000023080B54

l23080B1E:
	addi	a0,s4,-00000700
	jal	ra,000000002307C77E
	lbu	a5,s0,+00000018
	c.mv	a2,s2
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	bltu	s5,a5,0000000023080B3C

l23080B36:
	c.slli	a5,02
	c.add	a5,s3
	c.lw	a5,0(a2)

l23080B3C:
	c.lw	s0,20(a4)
	addi	a3,s0,+00000004
	c.mv	a1,s1
	addi	a0,s6,-000002D8
	jal	ra,000000002307C77E
	addi	a0,s4,-00000700
	jal	ra,000000002307C77E

l23080B54:
	c.addi	s1,00000001
	c.li	a5,00000005
	addi	s0,s0,+00000038
	bne	s1,a5,0000000023080B18

l23080B60:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; bl_cipstart: 23080B76
bl_cipstart proc
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
	lw	s4,a0,+00000008
	c.li	a5,00000004
	blt	a5,s4,0000000023080F3A

l23080B94:
	addi	s5,zero,+00000038
	add	s5,s4,s5
	lui	s7,00042028
	lui	s3,0004201C
	c.mv	s0,a0
	lw	a0,s7,+000000EC
	addi	s6,s3,+00000330
	c.li	a1,FFFFFFFF
	jal	ra,00000000230617D0
	c.mv	s2,s7
	addi	s3,s3,+00000330
	c.add	s6,s5
	lbu	s1,s6,+00000038
	c.beqz	s1,0000000023080C0C

l23080BC2:
	lw	a0,s7,+000000EC
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	lui	s0,000230C7
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	lui	a0,000230C6
	c.mv	a1,s4
	addi	a0,a0,-00000348
	jal	ra,000000002307C77E
	addi	a0,s0,-00000700
	jal	ra,000000002307C77E
	c.li	s1,00000016

l23080BF4:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.mv	a0,s1
	c.lwsp	ra,00000048
	c.lwsp	t0,00000024
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.lwsp	a6,000001D8
	c.lwsp	a2,000001F8
	c.addi16sp	00000050
	c.jr	ra

l23080C0C:
	c.addi	s5,00000004
	c.add	s5,s3
	addi	a1,s0,+00000010
	c.li	a2,0000000F
	c.mv	a0,s5
	jal	ra,00000000230A439C
	lw	a5,s0,+00000110
	lui	a1,000230C6
	c.addi	s0,0000000C
	sw	a5,s6,+00000014
	addi	a1,a1,-00000580
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.bnez	a0,0000000023080C52

l23080C36:
	c.li	a5,00000001

l23080C38:
	sb	a5,s6,+00000018
	c.addi4spn	a1,00000004
	c.mv	a0,s5
	jal	ra,000000002306F374
	c.bnez	a0,0000000023080C9E

l23080C46:
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	lw	a0,s2,+000000EC
	c.j	0000000023080C96

l23080C52:
	lui	a1,000230C6
	addi	a1,a1,-0000044C
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.li	a5,00000002
	c.beqz	a0,0000000023080C38

l23080C64:
	lui	a1,000230C6
	addi	a1,a1,-0000057C
	c.mv	a0,s0
	jal	ra,00000000230A3FF4
	c.bnez	a0,0000000023080C8C

l23080C74:
	lbu	a5,s6,+00000019
	c.bnez	a5,0000000023080C88

l23080C7A:
	lui	a0,000230C6
	addi	a0,a0,-00000330
	jal	ra,0000000023082388
	c.j	0000000023080C36

l23080C88:
	c.li	a5,00000003
	c.j	0000000023080C38

l23080C8C:
	lw	a0,s7,+000000EC
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000

l23080C96:
	jal	ra,0000000023061344
	c.li	s1,00000004
	c.j	0000000023080BF4

l23080C9E:
	addi	s0,zero,+00000038
	add	s0,s4,s0
	c.li	a3,00000001
	c.add	s0,s3
	lbu	a5,s0,+00000018
	bne	a5,a3,0000000023080D0A

l23080CB2:
	addi	a0,zero,+0000002E
	jal	ra,000000002308693C
	c.sw	s0,48(a0)
	c.bnez	a0,0000000023080CD0

l23080CBE:
	lw	a0,s2,+000000EC
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.li	s1,00000010
	c.j	0000000023080BF4

l23080CD0:
	c.mv	a1,s4
	jal	ra,00000000230863BA
	lhu	a2,s0,+00000014
	c.lw	s0,48(a0)
	lui	a3,00023080
	addi	a3,a3,+0000034E
	c.addi4spn	a1,00000004
	jal	ra,0000000023086418
	c.lw	s0,48(a5)
	beq	a0,zero,0000000023080F28

l23080CF0:
	c.mv	a0,a5
	jal	ra,0000000023086452
	sw	zero,s0,+00000030

l23080CFA:
	lw	a0,s2,+000000EC
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.j	0000000023080EB8

l23080D0A:
	c.li	a2,00000002
	bne	a5,a2,0000000023080D7A

l23080D10:
	addi	a0,zero,+0000002E
	jal	ra,000000002307525E
	c.sw	s0,48(a0)
	c.beqz	a0,0000000023080CBE

l23080D1C:
	lui	a1,000230CC
	c.li	a2,00000000
	addi	a1,a1,-00000524
	jal	ra,0000000023074DC4
	c.lw	s0,48(a5)
	c.beqz	a0,0000000023080D3A

l23080D2E:
	c.mv	a0,a5
	jal	ra,0000000023075200
	sw	zero,s0,+00000030
	c.j	0000000023080CBE

l23080D3A:
	lhu	a2,s0,+00000014
	c.mv	a0,a5
	c.addi4spn	a1,00000004
	jal	ra,0000000023075172
	c.lw	s0,48(a5)
	c.bnez	a0,0000000023080D2E

l23080D4A:
	lui	a1,00023081
	c.mv	a0,a5
	c.mv	a2,s4
	addi	a1,a1,-000007E4
	jal	ra,00000000230751F8
	c.li	a5,00000003

l23080D5C:
	sb	a5,s0,+00000038
	lw	a5,s3,+00000000
	lw	a0,s2,+000000EC
	c.li	a3,00000000
	c.addi	a5,00000001
	c.li	a2,00000000
	c.li	a1,00000000
	sw	a5,s3,+00000000
	jal	ra,0000000023061344
	c.j	0000000023080BF4

l23080D7A:
	c.li	a4,00000003
	bne	a5,a4,0000000023080F3E

l23080D80:
	lbu	a4,s0,+00000019
	bne	a4,a2,0000000023080DC6

l23080D88:
	c.lw	s0,32(a0)
	c.addi4spn	a1,00000018
	jal	ra,0000000023080626
	bne	a0,zero,0000000023080CBE

l23080D94:
	c.lwsp	t3,00000064
	c.lwsp	s8,00000044
	jal	ra,00000000230873EA

l23080D9C:
	c.sw	s0,52(a0)
	addi	s0,zero,+00000038
	add	s0,s4,s0
	c.add	s0,s3
	c.lw	s0,52(a0)
	beq	a0,zero,0000000023080CBE

l23080DAE:
	addi	a1,zero,+0000002E
	jal	ra,000000002308661A
	c.sw	s0,48(a0)
	c.bnez	a0,0000000023080E42

l23080DBA:
	c.lw	s0,52(a0)
	jal	ra,0000000023087482
	sw	zero,s0,+00000034
	c.j	0000000023080CBE

l23080DC6:
	bne	a4,a5,0000000023080E04

l23080DCA:
	c.lw	s0,32(a0)
	c.addi4spn	a1,00000008
	jal	ra,0000000023080626
	bne	a0,zero,0000000023080CBE

l23080DD6:
	c.lw	s0,36(a0)
	c.addi4spn	a1,00000010
	jal	ra,0000000023080626
	bne	a0,zero,0000000023080CBE

l23080DE2:
	c.lw	s0,40(a0)
	c.addi4spn	a1,00000018
	jal	ra,0000000023080626
	bne	a0,zero,0000000023080CBE

l23080DEE:
	c.lwsp	s4,00000028
	c.lwsp	a6,00000008
	c.lwsp	t3,000000A4
	c.lwsp	s8,00000084
	c.lwsp	a2,00000064
	c.lwsp	s0,00000044
	c.li	a5,00000000
	c.li	a4,00000000

l23080DFE:
	jal	ra,00000000230873F0
	c.j	0000000023080D9C

l23080E04:
	bne	a4,a3,0000000023080E30

l23080E08:
	c.lw	s0,36(a0)
	c.addi4spn	a1,00000010
	jal	ra,0000000023080626
	bne	a0,zero,0000000023080CBE

l23080E14:
	c.lw	s0,40(a0)
	c.addi4spn	a1,00000018
	jal	ra,0000000023080626
	bne	a0,zero,0000000023080CBE

l23080E20:
	c.lwsp	s4,00000028
	c.lwsp	a6,00000008
	c.li	a5,00000000
	c.li	a4,00000000
	c.lwsp	t3,000000A4
	c.lwsp	s8,00000084
	c.li	a1,00000000
	c.j	0000000023080DFE

l23080E30:
	lw	a0,s2,+000000EC
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.li	s1,00000006
	c.j	0000000023080BF4

l23080E42:
	c.lw	s0,28(a4)
	lbu	a5,s0,+00000019
	c.beqz	a4,0000000023080EBC

l23080E4A:
	c.li	a4,00000001
	beq	a5,a4,0000000023080EC2

l23080E50:
	jal	ra,00000000230873E0
	c.mv	s5,a0
	c.bnez	a0,0000000023080E78

l23080E58:
	lui	a3,000230C6
	lui	a2,000230C6
	lui	a0,000230C6
	addi	a3,a3,-00000294
	addi	a2,a2,-000003A4
	addi	a1,zero,+000001CC
	addi	a0,a0,-00000208
	jal	ra,00000000230A35AC

l23080E78:
	c.lw	s0,52(a0)
	c.li	a1,00000002
	jal	ra,000000002308B700
	c.lw	s0,28(a1)
	c.mv	a0,s5
	jal	ra,000000002308B732
	c.beqz	a0,0000000023080ED4

l23080E8A:
	c.lw	s0,48(a0)
	jal	ra,0000000023086452
	c.lw	s0,52(a0)
	sw	zero,s0,+00000030
	jal	ra,0000000023087482
	lw	a0,s2,+000000EC
	sw	zero,s0,+00000034
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	lui	a0,000230C6
	addi	a0,a0,-000002F8
	jal	ra,0000000023082388

l23080EB8:
	c.li	s1,0000000E
	c.j	0000000023080BF4

l23080EBC:
	c.li	a4,00000001
	bne	a5,a4,0000000023080ED4

l23080EC2:
	addi	a5,zero,+00000038
	add	a5,s4,a5
	c.li	a1,00000000
	c.add	a5,s3
	c.lw	a5,52(a0)
	jal	ra,000000002308B700

l23080ED4:
	addi	a5,zero,+00000038
	add	a5,s4,a5
	c.add	a5,s3
	c.lw	a5,44(a1)
	c.beqz	a1,0000000023080EE8

l23080EE2:
	c.lw	a5,52(a0)
	jal	ra,000000002308B79A

l23080EE8:
	addi	s0,zero,+00000038
	add	s0,s4,s0
	c.mv	a1,s4
	c.add	s0,s3
	c.lw	s0,48(a0)
	jal	ra,00000000230863BA
	lhu	a2,s0,+00000014
	c.lw	s0,48(a0)
	lui	a3,00023080
	addi	a3,a3,+0000034E
	c.addi4spn	a1,00000004
	jal	ra,0000000023086418
	c.lw	s0,48(a5)
	c.beqz	a0,0000000023080F28

l23080F12:
	c.mv	a0,a5
	jal	ra,0000000023086452
	c.lw	s0,52(a0)
	sw	zero,s0,+00000030
	jal	ra,0000000023087482
	sw	zero,s0,+00000034
	c.j	0000000023080CFA

l23080F28:
	lui	a1,00023080
	c.mv	a0,a5
	addi	a1,a1,+00000778
	jal	ra,00000000230863EC
	c.li	a5,00000002
	c.j	0000000023080D5C

l23080F3A:
	c.li	s1,00000009
	c.j	0000000023080BF4

l23080F3E:
	c.li	s1,0000001A
	c.j	0000000023080BF4

;; bl_cipsendbuf: 23080F42
bl_cipsendbuf proc
	c.li	a0,00000000
	c.jr	ra

;; bl_cipclose: 23080F46
bl_cipclose proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.lw	a0,8(s1)
	c.li	a5,00000004
	c.li	a0,00000004
	blt	a5,s1,0000000023080FF4

l23080F5E:
	addi	a5,zero,+00000038
	add	a5,s1,a5
	lui	s2,0004201C
	addi	s0,s2,+00000330
	c.li	a0,00000016
	addi	s2,s2,+00000330
	c.add	s0,a5
	lbu	a5,s0,+00000038
	c.beqz	a5,0000000023080FF4

l23080F7C:
	lui	s3,000230C7
	addi	a0,s3,-00000700
	jal	ra,000000002307C77E
	lui	a0,000230C6
	c.mv	a1,s1
	addi	a0,a0,-00000378
	jal	ra,000000002307C77E
	addi	a0,s3,-00000700
	jal	ra,000000002307C77E
	lui	s3,00042028
	lw	a0,s3,+000000EC
	c.li	a1,FFFFFFFF
	c.mv	s4,s3
	jal	ra,00000000230617D0
	lbu	a5,s0,+00000038
	c.beqz	a5,000000002308102E

l23080FB4:
	lbu	a5,s0,+00000018
	sb	zero,s0,+00000038
	c.li	a4,00000002
	bne	a5,a4,0000000023081004

l23080FC2:
	c.lw	s0,48(a0)
	jal	ra,0000000023075200

l23080FC8:
	sw	zero,s0,+00000030

l23080FCC:
	addi	a5,zero,+00000038
	add	s1,s1,a5
	lw	a5,s2,+00000000
	lw	a0,s4,+000000EC
	c.li	a3,00000000
	c.addi	a5,FFFFFFFF
	c.li	a2,00000000
	c.li	a1,00000000
	sw	a5,s2,+00000000
	c.add	s1,s2
	sb	zero,s1,+00000018
	jal	ra,0000000023061344
	c.li	a0,00000000

l23080FF4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23081004:
	c.li	a4,00000001
	bne	a5,a4,0000000023081012

l2308100A:
	c.lw	s0,48(a0)
	jal	ra,0000000023086452
	c.j	0000000023080FC8

l23081012:
	c.li	a4,00000003
	bne	a5,a4,0000000023080FCC

l23081018:
	c.lw	s0,48(a0)
	jal	ra,0000000023086452
	c.lw	s0,52(a0)
	sw	zero,s0,+00000030
	jal	ra,0000000023087482
	sw	zero,s0,+00000034
	c.j	0000000023080FCC

l2308102E:
	lw	a0,s3,+000000EC
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.li	a0,00000012
	c.j	0000000023080FF4

;; bl_tcpserver: 23081040
bl_tcpserver proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.lw	a0,16(a5)
	c.lw	a0,12(a4)
	c.bnez	a5,000000002308112A

l23081054:
	lui	a5,0004200F
	addi	a5,a5,+000006F8
	c.lw	a5,0(a3)
	c.beqz	a4,0000000023081102

l23081060:
	c.li	s3,00000001

l23081062:
	lui	s2,0004200F
	addi	s2,s2,+000006F8
	lw	a5,s2,+00000000
	c.beqz	a5,0000000023081084

l23081070:
	c.li	a5,00000010

l23081072:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

l23081084:
	c.lw	a0,8(a5)
	lui	s1,0004200F
	lui	a0,0004201C
	addi	s1,s1,+000006F0
	c.li	s4,00000001
	addi	s0,a0,+00000308
	addi	a2,zero,+00000028
	c.li	a1,00000000
	addi	a0,a0,+00000308
	sh	a5,s1,+00000000
	sw	s4,s1,+00000004
	jal	ra,00000000230A3A68
	beq	s3,s4,00000000230810B6

l230810B2:
	c.li	a5,00000000
	c.j	0000000023081072

l230810B6:
	c.li	a0,00000000
	jal	ra,000000002308693C
	c.sw	s0,32(a0)
	c.li	a5,00000014
	c.beqz	a0,0000000023081072

l230810C2:
	lhu	a2,s1,+00000000
	lui	a1,000230CC
	addi	a1,a1,-00000524
	jal	ra,0000000023086404
	c.beqz	a0,00000000230810E2

l230810D4:
	c.lw	s0,32(a0)
	jal	ra,0000000023086452
	c.li	a5,0000000F
	sw	zero,s0,+00000020
	c.j	0000000023081072

l230810E2:
	c.lw	s0,32(a0)
	c.li	a2,00000000
	c.li	a1,00000005
	jal	ra,000000002308642C
	c.sw	s0,32(a0)
	c.beqz	a0,0000000023081070

l230810F0:
	lui	a1,00023081
	addi	a1,a1,-00000724
	sw	s3,s2,+00000000
	jal	ra,00000000230863C0
	c.j	00000000230810B2

l23081102:
	c.beqz	a3,0000000023081070

l23081104:
	sw	zero,a5,+00000000
	lui	a5,0004200F
	lw	a4,a5,+000006F4
	c.li	a5,00000001
	bne	a4,a5,00000000230810B2

l23081116:
	lui	s0,0004201C
	addi	s0,s0,+00000308
	c.lw	s0,32(a0)
	jal	ra,0000000023086452
	sw	zero,s0,+00000020
	c.j	00000000230810B2

l2308112A:
	c.li	s3,00000003
	c.li	a5,00000006
	c.bnez	a4,0000000023081062

l23081130:
	c.j	0000000023081072

;; bl_cipsend: 23081132
bl_cipsend proc
	c.lw	a0,8(a1)
	c.li	a5,00000004
	blt	a5,a1,00000000230811D6

l2308113A:
	addi	a5,zero,+00000038
	add	a4,a1,a5
	lui	a5,0004201C
	c.addi	sp,FFFFFFF0
	addi	a5,a5,+00000330
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.add	a5,a4
	lbu	a3,a5,+00000038
	c.li	a4,00000003
	beq	a3,a4,0000000023081174

l2308115E:
	lui	a0,000230C6
	addi	a0,a0,-00000368
	jal	ra,0000000023082388
	c.li	a0,00000002

l2308116C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23081174:
	c.lw	a0,12(a3)
	lbu	a5,a5,+00000018
	lui	a4,0004200F
	sw	a3,a4,+000006EC
	andi	a3,a5,+000000FD
	c.li	a4,00000001
	bne	a3,a4,00000000230811B2

l2308118C:
	c.li	a0,00000008
	jal	ra,000000002307BEFC
	c.mv	a1,a0
	c.bnez	a0,000000002308119A

l23081196:
	c.li	a0,00000014
	c.j	000000002308116C

l2308119A:
	c.lw	s0,8(a5)
	c.sw	a0,0(a5)
	c.lw	s0,16(a5)
	c.sw	a0,4(a5)
	lui	a0,00023081
	addi	a0,a0,-000005D8

l230811AA:
	jal	ra,000000002306BA7C
	c.li	a0,00000000
	c.j	000000002308116C

l230811B2:
	c.li	a4,00000002
	c.li	a0,00000006
	bne	a5,a4,000000002308116C

l230811BA:
	c.li	a0,00000008
	jal	ra,000000002307BEFC
	c.mv	a1,a0
	c.beqz	a0,0000000023081196

l230811C4:
	c.lw	s0,8(a5)
	c.sw	a0,0(a5)
	c.lw	s0,16(a5)
	c.sw	a0,4(a5)
	lui	a0,00023080
	addi	a0,a0,+00000656
	c.j	00000000230811AA

l230811D6:
	c.li	a0,00000012
	c.jr	ra

;; bl_cipsslcconf_path: 230811DA
bl_cipsslcconf_path proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.lw	a0,8(a4)
	c.li	a5,00000004
	c.li	s3,00000009
	blt	a5,a4,0000000023081238

l230811F4:
	lui	s5,00042028
	c.mv	s2,a0
	lw	a0,s5,+000000EC
	c.li	a1,FFFFFFFF
	lui	s0,0004201C
	jal	ra,00000000230617D0
	lw	s1,s2,+00000008
	addi	a4,zero,+00000038
	addi	a5,s0,+00000330
	add	a4,s1,a4
	c.mv	s4,s5
	addi	s0,s0,+00000330
	c.add	a5,a4
	lbu	s3,a5,+00000038
	beq	s3,zero,000000002308124C

l23081228:
	lw	a0,s5,+000000EC
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.li	s3,00000015

l23081238:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s3
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2308124C:
	lw	a4,s2,+0000000C
	c.li	a3,00000001
	beq	a4,a3,0000000023081322

l23081256:
	blt	a3,a4,0000000023081270

l2308125A:
	beq	a4,zero,0000000023081362

l2308125E:
	lw	a0,s4,+000000EC
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.li	s3,00000004
	c.j	0000000023081238

l23081270:
	c.li	a3,00000002
	beq	a4,a3,00000000230812D8

l23081276:
	c.li	a3,00000003
	bne	a4,a3,000000002308125E

l2308127C:
	c.lw	a5,32(a0)
	sb	a4,a5,+00000019
	c.beqz	a0,0000000023081288

l23081284:
	jal	ra,0000000023064972

l23081288:
	addi	a5,zero,+00000038
	add	a5,s1,a5
	c.add	a5,s0
	c.lw	a5,36(a0)
	c.beqz	a0,000000002308129A

l23081296:
	jal	ra,0000000023064972

l2308129A:
	addi	a5,zero,+00000038
	add	a5,s1,a5
	c.add	a5,s0
	c.lw	a5,40(a0)
	c.beqz	a0,00000000230812AC

l230812A8:
	jal	ra,0000000023064972

l230812AC:
	addi	a5,zero,+00000038
	add	s1,s1,a5
	lw	a4,s2,+00000010
	c.add	s0,s1
	c.sw	s0,32(a4)

l230812BC:
	lw	a5,s2,+00000018
	c.sw	s0,36(a5)
	lw	a5,s2,+00000014
	c.sw	s0,40(a5)

l230812C8:
	lw	a0,s4,+000000EC
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.j	0000000023081238

l230812D8:
	c.lw	a5,32(a0)
	sb	a4,a5,+00000019
	c.beqz	a0,00000000230812E4

l230812E0:
	jal	ra,0000000023064972

l230812E4:
	addi	a5,zero,+00000038
	add	a5,s1,a5
	c.add	a5,s0
	c.lw	a5,36(a0)
	c.beqz	a0,00000000230812F6

l230812F2:
	jal	ra,0000000023064972

l230812F6:
	addi	a5,zero,+00000038
	add	a5,s1,a5
	c.add	a5,s0
	c.lw	a5,40(a0)
	c.beqz	a0,0000000023081308

l23081304:
	jal	ra,0000000023064972

l23081308:
	addi	a5,zero,+00000038
	add	s1,s1,a5
	lw	a4,s2,+00000010
	c.add	s0,s1
	c.sw	s0,32(a4)

l23081318:
	sw	zero,s0,+00000024
	sw	zero,s0,+00000028
	c.j	00000000230812C8

l23081322:
	c.lw	a5,32(a0)
	sb	a4,a5,+00000019
	c.beqz	a0,000000002308132E

l2308132A:
	jal	ra,0000000023064972

l2308132E:
	addi	a5,zero,+00000038
	add	a5,s1,a5
	c.add	a5,s0
	c.lw	a5,36(a0)
	c.beqz	a0,0000000023081340

l2308133C:
	jal	ra,0000000023064972

l23081340:
	addi	a5,zero,+00000038
	add	a5,s1,a5
	c.add	a5,s0
	c.lw	a5,40(a0)
	c.beqz	a0,0000000023081352

l2308134E:
	jal	ra,0000000023064972

l23081352:
	addi	a5,zero,+00000038
	add	s1,s1,a5
	c.add	s0,s1
	sw	zero,s0,+00000020
	c.j	00000000230812BC

l23081362:
	c.lw	a5,32(a0)
	sb	zero,a5,+00000019
	c.beqz	a0,000000002308136E

l2308136A:
	jal	ra,0000000023064972

l2308136E:
	addi	a5,zero,+00000038
	add	a5,s1,a5
	c.add	a5,s0
	c.lw	a5,36(a0)
	c.beqz	a0,0000000023081380

l2308137C:
	jal	ra,0000000023064972

l23081380:
	addi	a5,zero,+00000038
	add	a5,s1,a5
	c.add	a5,s0
	c.lw	a5,40(a0)
	c.beqz	a0,0000000023081392

l2308138E:
	jal	ra,0000000023064972

l23081392:
	addi	a5,zero,+00000038
	add	s1,s1,a5
	c.add	s0,s1
	sw	zero,s0,+00000020
	c.j	0000000023081318

;; bl_cipsslcsni: 230813A2
bl_cipsslcsni proc
	c.addi16sp	FFFFFFD0
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.lw	a0,8(a4)
	c.li	a5,00000004
	c.li	s6,00000009
	blt	a5,a4,0000000023081406

l230813C2:
	lui	s5,00042028
	c.mv	s0,a0
	lw	a0,s5,+000000EC
	c.li	a1,FFFFFFFF
	lui	s2,0004201C
	jal	ra,00000000230617D0
	lw	s8,s0,+00000008
	addi	a5,zero,+00000038
	addi	s1,s2,+00000330
	add	a5,s8,a5
	c.mv	s7,s5
	addi	s2,s2,+00000330
	c.add	s1,a5
	lbu	s6,s1,+00000038
	beq	s6,zero,0000000023081420

l230813F6:
	lw	a0,s5,+000000EC
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.li	s6,00000015

l23081406:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s6
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

l23081420:
	c.addi	s0,0000000C
	c.mv	a0,s0
	jal	ra,00000000230A4220
	c.mv	s3,a0
	c.bnez	a0,0000000023081448

l2308142C:
	c.lw	s1,28(a0)
	c.beqz	a0,0000000023081438

l23081430:
	jal	ra,0000000023064972
	sw	zero,s1,+0000001C

l23081438:
	lw	a0,s7,+000000EC
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.j	0000000023081406

l23081448:
	c.addi	a0,00000001
	jal	ra,000000002306488A
	c.mv	s4,a0
	c.bnez	a0,0000000023081464

l23081452:
	lw	a0,s5,+000000EC
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.li	s6,00000014
	c.j	0000000023081406

l23081464:
	c.lw	s1,28(a0)
	c.beqz	a0,0000000023081470

l23081468:
	jal	ra,0000000023064972
	sw	zero,s1,+0000001C

l23081470:
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,00000000230A4170
	addi	a5,zero,+00000038
	add	a5,s8,a5
	c.add	s3,s4
	sb	zero,s3,+00000000
	c.add	s2,a5
	sw	s4,s2,+0000001C
	c.j	0000000023081438

;; bl_cipsslcalpn: 2308148E
bl_cipsslcalpn proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.lw	a0,8(a4)
	c.li	a5,00000004
	c.mv	s0,a0
	bge	a5,a4,00000000230814CA

l230814A8:
	c.lw	a0,12(a0)
	c.li	s2,00000009

l230814AC:
	c.beqz	a0,00000000230814B6

l230814AE:
	jal	ra,0000000023064972
	sw	zero,s0,+0000000C

l230814B6:
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

l230814CA:
	lui	s4,00042028
	lw	a0,s4,+000000EC
	c.li	a1,FFFFFFFF
	c.mv	s5,s4
	jal	ra,00000000230617D0
	lw	s3,s0,+00000008
	addi	a3,zero,+00000038
	lui	a5,0004201C
	add	a3,s3,a3
	addi	a4,a5,+00000330
	addi	s1,a5,+00000330
	c.add	a4,a3
	lbu	s2,a4,+00000038
	beq	s2,zero,0000000023081510

l230814FC:
	lw	a0,s4,+000000EC
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.lw	s0,12(a0)
	c.li	s2,00000015
	c.j	00000000230814AC

l23081510:
	c.lw	a4,44(a0)
	c.beqz	a0,0000000023081518

l23081514:
	jal	ra,0000000023064972

l23081518:
	addi	a5,zero,+00000038
	add	a5,s3,a5
	c.lw	s0,12(a4)
	lw	a0,s5,+000000EC
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.add	a5,s1
	c.sw	a5,44(a4)
	jal	ra,0000000023061344
	c.j	00000000230814B6

;; format_int: 23081536
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
	bne	s4,zero,00000000230816C6

l23081568:
	lui	s5,000230C6
	addi	a4,s5,+00000110
	c.swsp	a4,00000084

l23081572:
	andi	a4,s8,+00000040
	c.li	s3,00000000
	c.beqz	a4,0000000023081590

l2308157A:
	bge	s7,zero,0000000023081590

l2308157E:
	sub	s6,zero,s6
	sltu	a4,zero,s6
	sub	s7,zero,s7
	sub	s7,s7,a4
	c.li	s3,00000001

l23081590:
	c.mv	a0,s6
	c.mv	a1,s7
	c.li	s2,00000000
	srai	s10,a5,0000001F

l2308159A:
	or	a4,a0,a1
	bne	a4,zero,00000000230816D2

l230815A2:
	andi	a0,s8,+00000020
	c.beqz	a0,00000000230815B6

l230815A8:
	c.li	a4,00000008
	bne	a5,a4,00000000230815B6

l230815AE:
	blt	s2,s1,00000000230815C4

l230815B2:
	addi	s1,s2,+00000001

l230815B6:
	blt	s2,s1,00000000230815C4

l230815BA:
	or	a4,s6,s7
	c.mv	s1,s2
	c.bnez	a4,00000000230815C4

l230815C2:
	c.li	s1,00000001

l230815C4:
	andi	a3,s8,+00000008
	c.mv	s10,s1
	c.beqz	a3,00000000230815D6

l230815CC:
	c.li	a3,00000010
	c.li	s10,00000004
	beq	a5,a3,00000000230815D6

l230815D4:
	c.li	s10,00000003

l230815D6:
	addi	a7,s1,-00000001
	xor	a7,a7,s10
	add	s2,a7,s1
	andi	s1,s8,+00000014
	or	s1,s1,s3
	sltu	s1,zero,s1
	c.add	s1,s2
	c.beqz	a0,00000000230815FA

l230815F2:
	c.li	a3,00000010
	bne	a5,a3,00000000230815FA

l230815F8:
	c.addi	s1,00000002

l230815FA:
	andi	a1,s8,+00000003
	c.li	a3,00000000
	c.bnez	a1,0000000023081624

l23081602:
	c.mv	a3,a1
	bge	s1,s11,0000000023081624

l23081608:
	sub	a3,s11,s1
	c.li	a2,00000000
	addi	a6,zero,+00000020

l23081612:
	bgeu	a2,s9,000000002308161C

l23081616:
	sb	a6,s0,+00000000
	c.addi	s0,00000001

l2308161C:
	c.addi	a2,00000001
	bne	a2,a3,0000000023081612

l23081622:
	c.mv	s11,s1

l23081624:
	beq	s3,zero,00000000230816E2

l23081628:
	bgeu	a3,s9,0000000023081636

l2308162C:
	addi	a2,zero,+0000002D
	sb	a2,s0,+00000000
	c.addi	s0,00000001

l23081636:
	c.addi	a3,00000001

l23081638:
	c.beqz	a0,000000002308166A

l2308163A:
	c.li	a2,00000010
	bne	a5,a2,000000002308166A

l23081640:
	bgeu	a3,s9,000000002308164E

l23081644:
	addi	a2,zero,+00000030
	sb	a2,s0,+00000000
	c.addi	s0,00000001

l2308164E:
	addi	a2,a3,+00000001
	bgeu	a2,s9,0000000023081668

l23081656:
	addi	a2,zero,+00000058
	bne	s4,zero,0000000023081662

l2308165E:
	addi	a2,zero,+00000078

l23081662:
	sb	a2,s0,+00000000
	c.addi	s0,00000001

l23081668:
	c.addi	a3,00000002

l2308166A:
	c.li	a2,00000001
	bne	a1,a2,0000000023081678

l23081670:
	addi	a2,zero,+00000030
	blt	s2,s11,000000002308171C

l23081678:
	add	a4,s2,a3
	c.add	s0,s2
	c.swsp	a4,00000008
	c.mv	s4,a4
	srai	a4,a5,0000001F
	c.mv	s5,s10
	c.mv	s3,s0
	c.swsp	a4,00000088

l2308168C:
	blt	zero,s2,0000000023081722

l23081690:
	c.lwsp	a6,00000044
	andi	a4,s8,+00000002
	addi	a3,zero,+00000020
	add	a6,s11,a0

l2308169E:
	c.beqz	a4,00000000230816A8

l230816A0:
	sub	a5,a6,a0
	blt	s1,a5,0000000023081782

l230816A8:
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

l230816C6:
	lui	s5,000230C6
	addi	a4,s5,+00000124
	c.swsp	a4,00000084
	c.j	0000000023081572

l230816D2:
	c.mv	a2,a5
	c.mv	a3,s10
	c.swsp	a5,00000008
	jal	ra,000000002309FC70
	c.addi	s2,00000001
	c.lwsp	a6,000000E4
	c.j	000000002308159A

l230816E2:
	andi	a2,s8,+00000004
	c.beqz	a2,00000000230816F8

l230816E8:
	bgeu	a3,s9,0000000023081636

l230816EC:
	addi	a2,zero,+0000002B
	sb	a2,s0,+00000000
	c.addi	s0,00000001
	c.j	0000000023081636

l230816F8:
	andi	a2,s8,+00000010
	c.beqz	a2,0000000023081638

l230816FE:
	bgeu	a3,s9,0000000023081636

l23081702:
	addi	a2,zero,+00000020
	sb	a2,s0,+00000000
	c.addi	s0,00000001
	c.j	0000000023081636

l2308170E:
	bgeu	a3,s9,0000000023081718

l23081712:
	sb	a2,s0,+00000000
	c.addi	s0,00000001

l23081718:
	c.addi	a3,00000001
	c.addi	s11,FFFFFFFF

l2308171C:
	blt	s1,s11,000000002308170E

l23081720:
	c.j	0000000023081678

l23081722:
	beq	s5,zero,000000002308176A

l23081726:
	c.addi	s5,FFFFFFFF

l23081728:
	addi	a4,s3,-00000001
	c.swsp	a4,0000000C
	c.addi	s4,FFFFFFFF
	c.addi	s2,FFFFFFFF
	bgeu	s4,s9,0000000023081752

l23081736:
	c.lwsp	s4,000000A4
	c.mv	a2,a5
	c.mv	a0,s6
	c.mv	a1,s7
	c.swsp	a5,0000008C
	jal	ra,00000000230A00A4
	c.lwsp	a2,000000E4
	c.add	a0,a5
	lbu	a3,a0,+00000000
	c.lwsp	t3,000000E4
	sb	a3,s3,+00000FFF

l23081752:
	c.lwsp	s4,000000A4
	c.mv	a2,a5
	c.mv	a0,s6
	c.mv	a1,s7
	c.swsp	a5,0000008C
	jal	ra,000000002309FC70
	c.mv	s6,a0
	c.mv	s7,a1
	c.lwsp	s8,00000068
	c.lwsp	t3,000000E4
	c.j	000000002308168C

l2308176A:
	c.addi	s4,FFFFFFFF
	bgeu	s4,s9,0000000023081778

l23081770:
	addi	a4,zero,+0000005F
	sb	a4,s3,+00000FFF

l23081778:
	c.addi	s3,FFFFFFFF
	c.addi	s2,FFFFFFFF
	addi	s5,s10,-00000001
	c.j	0000000023081728

l23081782:
	bgeu	a0,s9,000000002308178C

l23081786:
	sb	a3,s0,+00000000
	c.addi	s0,00000001

l2308178C:
	c.addi	a0,00000001
	c.j	000000002308169E

;; cvt: 23081790
;;   Called from:
;;     230819CC (in ecvtbuf)
;;     230819D2 (in fcvtbuf)
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
	blt	a5,a2,00000000230817CA

l230817C2:
	c.mv	s0,a2
	bge	a2,zero,00000000230817CA

l230817C8:
	c.li	s0,00000000

l230817CA:
	c.li	a2,00000000
	c.li	a3,00000000
	c.mv	a0,s3
	c.mv	a1,s2
	c.swsp	a4,00000008
	jal	ra,00000000230A1A64
	c.lwsp	a6,000000C4
	blt	a0,zero,0000000023081854

l230817DE:
	sw	zero,a4,+00000000

l230817E2:
	c.addi4spn	a2,00000020
	c.mv	a0,s3
	c.mv	a1,s2
	jal	ra,000000002309D810
	c.mv	s3,a0
	c.mv	s4,a1
	c.lwsp	zero,00000154
	c.lwsp	tp,00000174
	c.li	a2,00000000
	c.li	a3,00000000
	addi	s2,s1,+00000050
	jal	ra,00000000230A18B0
	bne	a0,zero,00000000230818E8

l23081804:
	c.li	a2,00000000
	c.li	a3,00000000
	c.mv	a0,s3
	c.mv	a1,s4
	jal	ra,00000000230A1978
	c.li	s6,00000000
	bge	zero,a0,0000000023081850

l23081816:
	lui	a5,000230BF
	lw	s10,a5,+000007A8
	lw	s11,a5,+000007AC
	lui	a5,000230BF
	lw	s8,a5,+000007A0
	lw	s9,a5,+000007A4

l2308182E:
	c.mv	a2,s10
	c.mv	a3,s11
	c.mv	a0,s3
	c.mv	a1,s4
	jal	ra,00000000230A1B50
	c.mv	a2,s8
	c.mv	a3,s9
	c.swsp	a0,00000008
	c.mv	s7,a1
	jal	ra,00000000230A1A64
	c.lwsp	a6,00000028
	blt	a0,zero,000000002308191A

l2308184C:
	c.swsp	a7,00000014
	c.swsp	s7,00000094

l23081850:
	c.mv	s7,s1
	c.j	00000000230818BA

l23081854:
	c.li	a5,00000001
	c.sw	a4,0(a5)
	lui	a5,00080000
	xor	s2,a5,s2
	c.j	00000000230817E2

l23081862:
	c.mv	a0,a4
	c.mv	a1,a5
	c.mv	a3,s8
	c.mv	a2,s7
	jal	ra,00000000230A1004
	c.addi4spn	a2,00000020
	jal	ra,000000002309D810
	c.lwsp	a6,00000084
	c.lwsp	s4,000000A4
	c.swsp	a0,00000014
	c.swsp	a1,00000094
	jal	ra,00000000230A04B4
	c.mv	a2,s9
	c.mv	a3,s10
	jal	ra,00000000230A1B50
	jal	ra,00000000230A2EB8
	c.addi	s11,FFFFFFFF
	addi	a0,a0,+00000030
	sb	a0,s11,+00000000

l23081896:
	c.lwsp	zero,000001D4
	c.lwsp	tp,000001F4
	c.li	a2,00000000
	c.mv	a0,a4
	c.mv	a1,a5
	c.li	a3,00000000
	c.swsp	a4,0000000C
	c.swsp	a5,0000008C
	jal	ra,00000000230A18B0
	sub	s6,s2,s11
	c.lwsp	s8,000000C4
	c.lwsp	t3,000000E4
	c.bnez	a0,0000000023081862

l230818B4:
	c.mv	s7,s1

l230818B6:
	bltu	s11,s2,000000002308190C

l230818BA:
	c.lwsp	a2,000000E4
	c.add	s0,s1
	c.bnez	a5,00000000230818C2

l230818C0:
	c.add	s0,s6

l230818C2:
	sw	s6,s5,+00000000
	bltu	s0,s1,0000000023081922

l230818CA:
	lui	a5,000230BF
	lw	s8,a5,+000007A8
	lw	s9,a5,+000007AC

l230818D6:
	bltu	s0,s7,00000000230818DE

l230818DA:
	bltu	s7,s2,0000000023081946

l230818DE:
	bltu	s0,s2,0000000023081970

l230818E2:
	sb	zero,s1,+0000004F
	c.j	0000000023081926

l230818E8:
	lui	a5,000230BF
	lw	s7,a5,+000007A8
	lw	s8,a5,+000007AC
	lui	a5,000230C6
	lw	a6,a5,+0000010C
	lw	a5,a5,+00000108
	c.mv	s11,s2
	c.swsp	a6,00000088
	c.swsp	a5,00000008
	c.mv	s9,s7
	c.mv	s10,s8
	c.j	0000000023081896

l2308190C:
	c.addi	s11,00000001
	lbu	a5,s11,-00000001
	c.addi	s7,00000001
	sb	a5,s7,+00000FFF
	c.j	00000000230818B6

l2308191A:
	c.addi	s6,FFFFFFFF
	c.mv	s3,a7
	c.mv	s4,s7
	c.j	000000002308182E

l23081922:
	sb	zero,s1,+00000000

l23081926:
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

l23081946:
	c.mv	a3,s9
	c.mv	a2,s8
	c.mv	a0,s3
	c.mv	a1,s4
	jal	ra,00000000230A1B50
	c.addi4spn	a2,00000028
	jal	ra,000000002309D810
	c.mv	s3,a0
	c.mv	s4,a1
	c.lwsp	s0,00000154
	c.lwsp	a2,00000174
	c.addi	s7,00000001
	jal	ra,00000000230A2EB8
	addi	a0,a0,+00000030
	sb	a0,s7,+00000FFF
	c.j	00000000230818D6

l23081970:
	lbu	a5,s0,+00000000
	addi	a2,zero,+00000039
	addi	a3,zero,+00000030
	c.addi	a5,00000005
	sb	a5,s0,+00000000
	addi	a1,zero,+00000031
	c.mv	a5,s0

l23081988:
	lbu	a4,a5,+00000000
	bltu	a2,a4,0000000023081996

l23081990:
	sb	zero,s0,+00000000
	c.j	0000000023081926

l23081996:
	sb	a3,a5,+00000000
	bgeu	s1,a5,00000000230819AC

l2308199E:
	lbu	a4,a5,-00000001
	c.addi	a5,FFFFFFFF
	c.addi	a4,00000001
	sb	a4,a5,+00000000
	c.j	0000000023081988

l230819AC:
	sb	a1,a5,+00000000
	lw	a4,s5,+00000000
	c.addi	a4,00000001
	sw	a4,s5,+00000000
	c.lwsp	a2,000000C4
	c.bnez	a4,0000000023081988

l230819BE:
	bgeu	s1,s0,00000000230819C6

l230819C2:
	sb	a3,s0,+00000000

l230819C6:
	c.addi	s0,00000001
	c.j	0000000023081988

;; ecvtbuf: 230819CA
;;   Called from:
;;     23081A68 (in flt)
;;     23081A8E (in flt)
ecvtbuf proc
	c.li	a6,00000001
	jal	zero,0000000023081790

;; fcvtbuf: 230819D0
;;   Called from:
;;     23081BA0 (in flt)
fcvtbuf proc
	c.li	a6,00000000
	jal	zero,0000000023081790

;; flt: 230819D6
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
	beq	a5,zero,0000000023081B5A

l23081A0A:
	andi	s5,a6,-00000002
	addi	s3,zero,+00000020

l23081A12:
	andi	a5,s5,+00000002
	c.li	s2,00000000
	c.beqz	a5,0000000023081A38

l23081A1A:
	c.li	a2,00000000
	c.li	a3,00000000
	c.mv	a0,s4
	c.mv	a1,s11
	jal	ra,00000000230A1A64
	bge	a0,zero,0000000023081B6C

l23081A2A:
	lui	a5,00080000
	xor	s11,a5,s11
	c.addi	s0,FFFFFFFF
	addi	s2,zero,+0000002D

l23081A38:
	bge	s6,zero,0000000023081A3E

l23081A3C:
	c.li	s6,00000006

l23081A3E:
	andi	a5,s7,+000000FD
	addi	a4,zero,+00000045
	bne	a5,a4,0000000023081B8A

l23081A4A:
	addi	a4,s7,+00000020
	andi	a4,a4,+000000FF
	c.li	s9,00000001

l23081A54:
	addi	a5,zero,+00000067
	bne	a4,a5,0000000023081C00

l23081A5C:
	c.addi4spn	a5,00000070
	c.addi4spn	a4,0000001C
	c.addi4spn	a3,00000018
	c.mv	a2,s6
	c.mv	a0,s4
	c.mv	a1,s11
	jal	ra,00000000230819CA
	c.lwsp	s8,0000000C
	c.li	a4,FFFFFFFC
	addi	a5,s8,-00000001
	blt	a5,a4,0000000023081A7C

l23081A78:
	blt	a5,s6,0000000023081B90

l23081A7C:
	addi	s10,s6,-00000001

l23081A80:
	c.addi4spn	a5,00000070
	c.addi4spn	a4,0000001C
	c.addi4spn	a3,00000018
	addi	a2,s10,+00000001
	c.mv	a0,s4
	c.mv	a1,s11
	jal	ra,00000000230819CA
	c.lwsp	t3,000000C4
	c.addi4spn	a5,00000020
	c.beqz	a4,0000000023081AA4

l23081A98:
	addi	a5,zero,+0000002D
	sb	a5,sp,+00000020
	addi	a5,sp,+00000021

l23081AA4:
	lbu	a4,a0,+00000000
	addi	s8,a5,+00000001
	sb	a4,a5,+00000000
	bge	zero,s10,0000000023081AC0

l23081AB4:
	addi	a4,zero,+0000002E
	addi	s8,a5,+00000002
	sb	a4,a5,+00000001

l23081AC0:
	c.addi	a0,00000001
	add	a4,a0,s10
	c.mv	a5,s8

l23081AC8:
	bne	a4,a0,0000000023081C0C

l23081ACC:
	c.add	s8,s10
	addi	a5,zero,+00000045
	bne	s9,zero,0000000023081ADA

l23081AD6:
	addi	a5,zero,+00000065

l23081ADA:
	c.lwsp	s8,0000004C
	sb	a5,s8,+00000000
	addi	s9,s8,+00000002
	bne	s10,zero,0000000023081C1A

l23081AE8:
	c.li	a2,00000000
	c.li	a3,00000000
	c.mv	a0,s4
	c.mv	a1,s11
	jal	ra,00000000230A18B0
	beq	a0,zero,0000000023081C20

l23081AF8:
	c.li	s10,FFFFFFFF

l23081AFA:
	sub	s10,zero,s10
	addi	a5,zero,+0000002D

l23081B02:
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

l23081B3C:
	sb	zero,a5,+00000000
	andi	a5,s5,+00000020
	beq	a5,zero,0000000023081DB2

l23081B48:
	bne	s6,zero,0000000023081CD4

l23081B4C:
	addi	s6,sp,+00000020
	addi	a4,zero,+0000002E
	addi	a3,zero,+00000045
	c.j	0000000023081CA6

l23081B5A:
	andi	a5,a6,+00000001
	addi	s3,zero,+00000030
	bne	a5,zero,0000000023081A12

l23081B66:
	addi	s3,zero,+00000020
	c.j	0000000023081A12

l23081B6C:
	andi	a5,s5,+00000004
	c.beqz	a5,0000000023081B7A

l23081B72:
	c.addi	s0,FFFFFFFF
	addi	s2,zero,+0000002B
	c.j	0000000023081A38

l23081B7A:
	andi	a5,s5,+00000008
	beq	a5,zero,0000000023081A38

l23081B82:
	c.addi	s0,FFFFFFFF
	addi	s2,zero,+00000020
	c.j	0000000023081A38

l23081B8A:
	c.mv	a4,s7
	c.li	s9,00000000
	c.j	0000000023081A54

l23081B90:
	sub	s8,s6,s8

l23081B94:
	c.addi4spn	a5,00000070
	c.addi4spn	a4,0000001C
	c.addi4spn	a3,00000018
	c.mv	a2,s8
	c.mv	a0,s4
	c.mv	a1,s11
	jal	ra,00000000230819D0
	c.lwsp	t3,000000C4
	c.addi4spn	a5,00000020
	c.beqz	a4,0000000023081BB6

l23081BAA:
	addi	a5,zero,+0000002D
	sb	a5,sp,+00000020
	addi	a5,sp,+00000021

l23081BB6:
	lbu	a4,a0,+00000000
	c.beqz	a4,0000000023081C64

l23081BBC:
	c.lwsp	s8,000000C4
	c.mv	a3,a0
	addi	a6,zero,+0000002E
	blt	zero,a4,0000000023081C3C

l23081BC8:
	addi	a3,zero,+00000030
	addi	a2,zero,+0000002E
	sb	a3,a5,+00000000
	sb	a2,a5,+00000001
	addi	a3,a5,+00000002
	sub	a2,a5,a4
	addi	a1,zero,+00000030
	sub	a4,zero,a4

l23081BE8:
	bne	a2,a5,0000000023081C34

l23081BEC:
	add	a5,a3,a4

l23081BF0:
	lbu	a4,a0,+00000000
	c.beqz	a4,0000000023081B3C

l23081BF6:
	c.addi	a5,00000001
	c.addi	a0,00000001
	sb	a4,a5,+00000FFF
	c.j	0000000023081BF0

l23081C00:
	addi	a5,zero,+00000065
	bne	a4,a5,0000000023081C26

l23081C08:
	c.mv	s10,s6
	c.j	0000000023081A80

l23081C0C:
	c.addi	a0,00000001
	lbu	a3,a0,-00000001
	c.addi	a5,00000001
	sb	a3,a5,+00000FFF
	c.j	0000000023081AC8

l23081C1A:
	c.addi	s10,FFFFFFFF
	blt	s10,zero,0000000023081AFA

l23081C20:
	addi	a5,zero,+0000002B
	c.j	0000000023081B02

l23081C26:
	addi	a3,zero,+00000066
	c.addi4spn	a5,00000020
	bne	a4,a3,0000000023081B3C

l23081C30:
	c.mv	s8,s6
	c.j	0000000023081B94

l23081C34:
	sb	a1,a5,+00000002
	c.addi	a5,00000001
	c.j	0000000023081BE8

l23081C3C:
	sub	a1,a3,a0
	c.mv	a2,a5
	bne	a4,a1,0000000023081C4E

l23081C46:
	addi	a2,a5,+00000001
	sb	a6,a5,+00000000

l23081C4E:
	c.addi	a3,00000001
	lbu	a1,a3,-00000001
	addi	a5,a2,+00000001
	sb	a1,a2,+00000000
	lbu	a2,a3,+00000000
	c.bnez	a2,0000000023081C3C

l23081C62:
	c.j	0000000023081B3C

l23081C64:
	addi	a4,zero,+00000030
	sb	a4,a5,+00000000
	blt	zero,s8,0000000023081C74

l23081C70:
	c.addi	a5,00000001
	c.j	0000000023081B3C

l23081C74:
	addi	a3,zero,+0000002E
	sb	a3,a5,+00000001
	addi	a4,a5,+00000002
	add	a3,a5,s8
	addi	a2,zero,+00000030

l23081C88:
	sb	a2,a5,+00000002
	c.addi	a5,00000001
	bne	a3,a5,0000000023081C88

l23081C92:
	add	a5,a4,s8
	c.j	0000000023081B3C

l23081C98:
	beq	a5,a4,0000000023081CD4

l23081C9C:
	andi	a5,a5,+000000DF
	beq	a5,a3,0000000023081E04

l23081CA4:
	c.addi	s6,00000001

l23081CA6:
	lbu	a5,s6,+00000000
	c.bnez	a5,0000000023081C98

l23081CAC:
	addi	a5,zero,+0000002E
	sb	a5,s6,+00000000
	sb	zero,s6,+00000001
	c.j	0000000023081CD4

l23081CBA:
	lbu	a5,a0,+00000000
	c.addi	a0,FFFFFFFF
	sb	a5,a0,+00000002

l23081CC4:
	sub	a5,a0,s6
	blt	zero,a5,0000000023081CBA

l23081CCC:
	addi	a5,zero,+0000002E
	sb	a5,s6,+00000000

l23081CD4:
	addi	a1,zero,+00000100
	c.addi4spn	a0,00000020
	jal	ra,00000000230A4468
	andi	s5,s5,+00000011
	sub	a3,s0,a0
	beq	s5,zero,0000000023081D64

l23081CEA:
	beq	s2,zero,0000000023081CF4

l23081CEE:
	sb	s2,s1,+00000000
	c.addi	s1,00000001

l23081CF4:
	c.lwsp	a2,000000E4
	c.beqz	a5,0000000023081D8E

l23081CF8:
	c.li	a5,00000000

l23081CFA:
	blt	a5,a0,0000000023081D96

l23081CFE:
	bge	a0,zero,0000000023081D04

l23081D02:
	c.li	a0,00000000

l23081D04:
	c.add	a0,s1
	c.mv	a5,a0
	add	a2,a0,a3
	addi	a1,zero,+00000020

l23081D10:
	sub	a4,a2,a5
	blt	zero,a4,0000000023081DAA

l23081D18:
	bge	a3,zero,0000000023081D1E

l23081D1C:
	c.li	a3,00000000

l23081D1E:
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

l23081D3E:
	c.addi	a4,00000001
	c.j	0000000023081DD0

l23081D42:
	c.addi	a5,FFFFFFFF
	c.j	0000000023081DE6

l23081D46:
	c.addi	a5,00000001
	sb	a1,a5,+00000FFF

l23081D4C:
	sub	a4,a2,a5
	blt	zero,a4,0000000023081D46

l23081D54:
	c.mv	a5,a3
	bge	a3,zero,0000000023081D5C

l23081D5A:
	c.li	a5,00000000

l23081D5C:
	c.addi	a3,FFFFFFFF
	c.add	s1,a5
	c.sub	a3,a5
	c.j	0000000023081CEA

l23081D64:
	c.mv	a5,s1
	add	a2,s1,a3
	addi	a1,zero,+00000020
	c.j	0000000023081D4C

l23081D70:
	c.addi	a5,00000001
	sb	s3,a5,+00000FFF

l23081D76:
	sub	a4,a2,a5
	blt	zero,a4,0000000023081D70

l23081D7E:
	c.mv	a5,a3
	bge	a3,zero,0000000023081D86

l23081D84:
	c.li	a5,00000000

l23081D86:
	c.addi	a3,FFFFFFFF
	c.add	s1,a5
	c.sub	a3,a5
	c.j	0000000023081CF8

l23081D8E:
	c.mv	a5,s1
	add	a2,s1,a3
	c.j	0000000023081D76

l23081D96:
	c.addi4spn	a2,00000020
	c.add	a2,a5
	lbu	a2,a2,+00000000
	add	a4,s1,a5
	c.addi	a5,00000001
	sb	a2,a4,+00000000
	c.j	0000000023081CFA

l23081DAA:
	c.addi	a5,00000001
	sb	a1,a5,+00000FFF
	c.j	0000000023081D10

l23081DB2:
	addi	a5,zero,+00000067
	bne	s7,a5,0000000023081CD4

l23081DBA:
	c.addi4spn	a4,00000020
	addi	a3,zero,+0000002E

l23081DC0:
	lbu	a5,a4,+00000000
	c.addi	a4,00000001
	c.beqz	a5,0000000023081CD4

l23081DC8:
	bne	a5,a3,0000000023081DC0

l23081DCC:
	addi	a3,zero,+00000045

l23081DD0:
	lbu	a5,a4,+00000000
	c.beqz	a5,0000000023081DDE

l23081DD6:
	andi	a5,a5,+000000DF
	bne	a5,a3,0000000023081D3E

l23081DDE:
	addi	a5,a4,-00000001
	addi	a2,zero,+00000030

l23081DE6:
	lbu	a3,a5,+00000000
	beq	a3,a2,0000000023081D42

l23081DEE:
	addi	a2,zero,+0000002E
	bne	a3,a2,0000000023081DF8

l23081DF6:
	c.addi	a5,FFFFFFFF

l23081DF8:
	beq	a4,a5,0000000023081CD4

l23081DFC:
	c.addi	a5,00000001
	sb	zero,a5,+00000000
	c.j	0000000023081DF8

l23081E04:
	addi	a1,zero,+00000100
	c.mv	a0,s6
	jal	ra,00000000230A4468
	c.add	a0,s6
	c.j	0000000023081CC4

;; vsnprintf: 23081E12
;;   Called from:
;;     2305DD98 (in aos_cli_printf)
;;     2307C7DA (in at_dump_noend)
;;     2307C7FE (in at_dump_noend)
;;     230822EC (in vsprintf)
;;     230823D0 (in sprintf)
;;     230823EC (in snprintf)
;;     2308410E (in bflb_platform_printf)
;;     23093E42 (in mbedtls_debug_print_msg)
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
	lui	s1,000230C6
	addi	s1,s1,-000000F0
	lui	s9,000230C6
	addi	s9,s9,+00000024
	lui	a5,000230C6
	addi	a5,a5,+000000F0
	c.swsp	a5,00000008
	lui	a5,000230C6
	addi	a5,a5,+00000138
	c.swsp	a5,00000088

l23081E6A:
	addi	s0,a2,+00000001
	lbu	a5,a2,+00000000
	beq	a5,zero,00000000230822B0

l23081E76:
	c.li	a4,00000004
	bltu	a4,a3,000000002308227E

l23081E7C:
	slli	a4,a3,00000002
	c.add	a4,s1
	c.lw	a4,0(a4)
	c.jr	a4
23081E86                   13 07 50 02 63 8C E7 3E 63 75       ..P.c..>cu
23081E90 59 01 23 80 FB 00 85 0B 05 09 22 86 F9 B7 81 17 Y.#.......".....
23081EA0 93 F5 F7 0F 41 47 63 65 B7 3E 93 97 25 00 37 67 ....AGce.>..%.7g
23081EB0 0C 23 13 07 47 F2 BA 97 9C 43 82 87 13 6A 2A 00 .#..G....C...j*.
23081EC0 22 86 65 B7 13 6A 4A 00 22 86 45 B7 13 6A 8A 00 ".e..jJ.".E..j..
23081ED0 22 86 61 BF 13 6A 0A 01 22 86 41 BF 13 6A 0A 02 ".a..j..".A..j..
23081EE0 22 86 61 B7 13 6A 1A 00 22 86 41 B7 13 87 07 FD ".a..j..".A.....
23081EF0 13 77 F7 0F A5 45 63 EA E5 00 29 47 33 0C EC 02 .w...Ec...)G3...
23081F00 93 87 07 FD 3E 9C 22 86 8D B7 13 07 A0 02 63 88 ....>.".......c.
23081F10 E7 00 13 07 E0 02 63 8F E7 36 91 46 B9 B7 93 07 ......c..6.F....
23081F20 4D 00 03 2C 0D 00 63 45 0C 00 3E 8D 22 86 35 BF M..,..cE..>.".5.
23081F30 33 0C 80 41 13 6A 2A 00 3E 8D 22 86 3D B7 13 87 3..A.j*.>.".=...
23081F40 07 FD 13 77 F7 0F A5 45 63 EA E5 00 29 47 33 0B ...w...Ec...)G3.
23081F50 EB 02 93 87 07 FD 3E 9B 22 86 01 BF 13 07 A0 02 ......>.".......
23081F60 63 84 E7 00 91 46 11 B7 93 07 4D 00 03 2B 0D 00 c....F....M..+..
23081F70 63 45 0B 00 3E 8D 22 86 CD BD 7D 5B E5 BF 13 87 cE..>."...}[....
23081F80 47 FB 93 75 F7 0F 13 06 E0 02 63 67 B6 02 13 97 G..u......cg....
23081F90 25 00 37 66 0C 23 13 06 86 F6 32 97 18 43 02 87 %.7f.#....2..C..
23081FA0 22 86 85 49 D9 B5 FD 19 22 86 C1 B5 85 09 22 86 "..I....".....".
23081FB0 6D BD 89 09 22 86 55 BD 09 47 63 53 37 01 89 49 m...".U..GcS7..I
23081FC0 79 57 63 D3 E9 00 F9 59 13 87 07 FB 13 76 F7 0F yWc....Y.....v..
23081FD0 93 06 80 02 63 EC C6 28 13 17 26 00 66 97 18 43 ....c..(..&.f..C
23081FE0 02 87 C1 47 75 A8 13 6A 0A 08 13 6A 0A 02 83 27 ...Gu..j...j...'
23081FF0 0D 00 3E C4 02 C6 11 0D C1 47 21 4B 63 73 59 11 ..>......G!KcsY.
23082000 B3 85 2A 41 DA 88 62 88 52 87 22 46 B2 46 5E 85 ..*A..b.R."F.F^.
23082010 EF F0 6F D2 AA 9B 2A 99 22 86 81 46 B9 B5 13 6A ..o...*."..F...j
23082020 0A 04 93 87 29 00 11 47 63 6B F7 0C 8A 07 37 67 ....)..Gck....7g
23082030 0C 23 13 07 87 0C BA 97 9C 43 82 87 83 07 0D 00 .#.......C......
23082040 3E C4 FD 87 3E C6 11 0D A9 47 4D BF 83 17 0D 00 >...>....GM.....
23082050 3E C4 FD 87 3E C6 11 0D A9 47 4D B7 83 27 0D 00 >...>....GM..'..
23082060 3E C4 FD 87 3E C6 11 0D A9 47 49 BF 83 27 0D 00 >...>....GI..'..
23082070 3E C4 FD 87 3E C6 11 0D A9 47 49 B7 93 07 7D 00 >...>....GI...}.
23082080 E1 9B 13 8D 87 00 98 43 3A C4 DC 43 3E C6 A9 47 .......C:..C>..G
23082090 B5 B7 A9 47 31 A0 13 6A 0A 08 C1 47 11 A0 A1 47 ...G1..j...G...G
230820A0 13 87 29 00 91 46 E3 EB E6 F4 0A 07 B7 66 0C 23 ..)..F.......f.#
230820B0 93 86 C6 0D 36 97 18 43 02 87 03 47 0D 00 3A C4 ....6..C...G..:.
230820C0 02 C6 11 0D 25 BF 03 57 0D 00 3A C4 02 C6 11 0D ....%..W..:.....
230820D0 35 B7 03 27 0D 00 3A C4 02 C6 11 0D 05 B7 03 27 5..'..:........'
230820E0 0D 00 3A C4 02 C6 11 0D 11 BF 13 07 7D 00 61 9B ..:.........}.a.
230820F0 13 0D 87 00 14 43 36 C4 58 43 3A C6 01 B7 A9 47 .....C6.XC:....G
23082100 F5 BD 81 45 01 B7 83 27 0D 00 A3 07 F1 02 11 0D ...E...'........
23082110 05 45 93 07 F1 02 3E CC FD 57 63 05 FB 00 63 53 .E....>..Wc...cS
23082120 AB 00 5A 85 63 55 85 01 93 77 2A 00 8D C7 3D C9 ..Z.cU...w*...=.
23082130 B3 06 25 01 CA 87 99 A8 93 07 4D 00 3E CE 83 27 ..%.......M.>..'
23082140 0D 00 3E CC 91 C7 62 45 EF 20 82 0D 72 4D E9 B7 ..>...bE. ..rM..
23082150 D2 47 3E CC CD BF 93 77 1A 00 99 E7 13 07 00 02 .G>....w........
23082160 B3 07 2C 01 89 8F 39 A0 13 07 00 03 D5 BF 05 09 ..,...9.........
23082170 63 08 F9 00 E3 7D 59 FF 23 80 EB 00 85 0B C5 BF c....}Y.#.......
23082180 2A 8C 3E 89 6D B7 85 07 63 8F D7 00 E3 FD 57 FF *.>.m...c.....W.
23082190 33 87 27 41 62 46 32 97 03 47 07 00 23 80 EB 00 3.'AbF2..G..#...
230821A0 85 0B D5 B7 CA 86 63 5E 85 0F 93 77 2A 00 89 E7 ......c^...w*...
230821B0 36 89 22 86 81 46 55 B9 33 09 AC 40 36 99 93 07 6."..FU.3..@6...
230821C0 00 02 21 A0 85 06 63 88 26 01 E3 FD 56 FF 23 80 ..!...c.&...V.#.
230821D0 FB 00 85 0B C5 BF 2A 8C 22 86 81 46 79 B1 93 87 ......*."..Fy...
230821E0 29 00 11 47 63 63 F7 0C 8A 07 42 47 BA 97 9C 43 )..Gcc....BG...C
230821F0 82 87 83 27 0D 00 23 80 27 01 11 0D 22 86 81 46 ...'..#.'..."..F
23082200 AD B1 83 27 0D 00 23 90 27 01 11 0D 22 86 81 46 ...'..#.'..."..F
23082210 A9 B9 83 27 0D 00 23 A0 27 01 11 0D 22 86 81 46 ...'..#.'..."..F
23082220 A9 B1 83 27 0D 00 23 A0 27 01 11 0D 22 86 81 46 ...'..#.'..."..F
23082230 2D B9 83 27 0D 00 23 A0 27 01 23 A2 07 00 11 0D -..'..#.'.#.....
23082240 22 86 81 46 1D B1 13 06 7D 00 61 9A 13 0D 86 00 "..F....}.a.....
23082250 09 48 93 07 60 06 5A 87 E2 86 0C 42 50 42 5E 85 .H..`.Z....BPB^.
23082260 EF F0 6F F7 AA 8B 22 86 81 46 01 B1 63 75 59 01 ..o..."..F..cuY.
23082270 23 80 FB 00 85 0B 05 09 22 86 81 46 FD B6       #......."..F.. 

l2308227E:
	c.mv	a2,s0
	c.j	0000000023081E6A
23082282       22 86 85 46 01 4A 7D 5B 01 4C 81 49 F1 BE   "..F.J}[.L.I..
23082290 89 46 E1 BE 22 86 8D 46 01 4B C1 BE 22 86 89 49 .F.."..F.K.."..I
230822A0 E9 B6 36 89 22 86 81 46 C9 B6 22 86 81 46 75 BE ..6."..F.."..Fu.

l230822B0:
	bgeu	s2,s5,00000000230822D8

l230822B4:
	sb	zero,s7,+00000000

l230822B8:
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

l230822D8:
	beq	s5,zero,00000000230822B8

l230822DC:
	c.add	s5,s11
	sb	zero,s5,+00000FFF
	c.j	00000000230822B8

;; vsprintf: 230822E4
;;   Called from:
;;     23082310 (in vprint)
vsprintf proc
	c.mv	a3,a2
	c.mv	a2,a1
	addi	a1,zero,+000001E0
	jal	zero,0000000023081E12

;; vprint: 230822F0
;;   Called from:
;;     23060990 (in ef_log_debug)
;;     230609FC (in ef_log_info)
;;     23060AC0 (in ef_print)
;;     2307A22C (in bl_printk)
;;     230823AC (in printf)
vprint proc
	lui	a5,0004200F
	lbu	a5,a5,-00000348
	andi	a5,a5,+000000FF
	c.beqz	a5,0000000023082334

l230822FE:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201C
	c.mv	a2,a1
	c.mv	a1,a0
	addi	a0,s0,+0000044C
	c.swsp	ra,00000084
	jal	ra,00000000230822E4
	addi	s0,s0,+0000044C
	blt	zero,a0,000000002308232A

l2308231C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23082324:
	c.li	a0,00000000
	jal	ra,0000000023064D00

l2308232A:
	c.addi	s0,00000001
	lbu	a1,s0,-00000001
	c.bnez	a1,0000000023082324

l23082332:
	c.j	000000002308231C

l23082334:
	c.jr	ra

;; bl_putchar: 23082336
;;   Called from:
;;     2307A562 (in utils_hexdump)
bl_putchar proc
	c.addi	sp,FFFFFFF0
	andi	a1,a0,+000000FF
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023064D00
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; puts: 2308234C
;;   Called from:
;;     23000338 (in cmd_stack_wifi)
;;     230006D0 (in event_cb_wifi_event)
;;     230006DC (in event_cb_wifi_event)
;;     230006E8 (in event_cb_wifi_event)
;;     230006F4 (in event_cb_wifi_event)
;;     23000700 (in event_cb_wifi_event)
;;     2300070C (in event_cb_wifi_event)
;;     23000B6C (in aos_loop_proc)
;;     23000B78 (in aos_loop_proc)
;;     23000B84 (in aos_loop_proc)
;;     23000BA6 (in vApplicationStackOverflowHook)
;;     23000C4C (in bfl_main)
;;     23000C5C (in bfl_main)
;;     23000C6A (in bfl_main)
;;     23000C76 (in bfl_main)
;;     23000C7E (in bfl_main)
;;     23000C8A (in bfl_main)
;;     23000C96 (in bfl_main)
;;     23000CA2 (in bfl_main)
;;     23000CAA (in bfl_main)
;;     23000CB6 (in bfl_main)
;;     23000CC2 (in bfl_main)
;;     23000CCA (in bfl_main)
;;     23000CD2 (in bfl_main)
;;     23000CDA (in bfl_main)
;;     23000CE2 (in bfl_main)
;;     23000CEE (in bfl_main)
;;     23000CFA (in bfl_main)
;;     23000D02 (in bfl_main)
;;     23000D0E (in bfl_main)
;;     23000D1A (in bfl_main)
;;     23000D22 (in bfl_main)
;;     23000D2E (in bfl_main)
;;     23000D3A (in bfl_main)
;;     23000D42 (in bfl_main)
;;     23000D4E (in bfl_main)
;;     23000D5A (in bfl_main)
;;     23000D62 (in bfl_main)
;;     23000D6A (in bfl_main)
;;     23000DC8 (in bfl_main)
;;     23000DD4 (in bfl_main)
;;     23000E0C (in bfl_main)
;;     23000E20 (in bfl_main)
;;     23001136 (in wifi_prov_api_event_trigger_connect)
;;     2300114A (in wifi_prov_api_event_trigger_connect)
;;     2300116C (in wifi_prov_api_event_trigger_disconnect)
;;     23001180 (in wifi_prov_api_event_trigger_disconnect)
;;     230011A2 (in wifi_prov_api_event_trigger_scan)
;;     230011B6 (in wifi_prov_api_event_trigger_scan)
;;     230011D8 (in wifi_prov_api_event_state_get)
;;     230011EC (in wifi_prov_api_event_state_get)
;;     23009616 (in mm_timer_set)
;;     2300A7BE (in rxl_hwdesc_dump)
;;     23015158 (in mac_vsie_find)
;;     23019594 (in helper_record_dump)
;;     2301AFC0 (in hal_dma_push)
;;     2301B040 (in hal_mib_dump)
;;     2301B066 (in hal_mib_dump)
;;     2301F2AC (in dump_cfg_entries)
;;     2301F2DC (in dump_cfg_entries)
;;     2301F35C (in dump_cfg_entries)
;;     23023C3A (in bl_txdatacfm)
;;     23023C70 (in bl_txdatacfm)
;;     23024342 (in bl_utils_dump)
;;     23024398 (in bl_utils_dump)
;;     230243E4 (in bl_utils_dump)
;;     23026BF0 (in wifi_edca_dump_cmd)
;;     23026C10 (in wifi_edca_dump_cmd)
;;     23026C4C (in wifi_edca_dump_cmd)
;;     23026C84 (in wifi_edca_dump_cmd)
;;     23026CBC (in wifi_edca_dump_cmd)
;;     23027362 (in wifi_sta_ip_info)
;;     2302736E (in wifi_sta_ip_info)
;;     230273EE (in wifi_sta_ip_info)
;;     2302743A (in cmd_wifi_raw_send)
;;     2302749E (in cmd_wifi_dump)
;;     230274BC (in cmd_wifi_dump)
;;     23027638 (in wifi_sta_ip_set_cmd)
;;     23027690 (in wifi_sta_ip_set_cmd)
;;     23027696 (in wifi_sta_ip_set_cmd)
;;     2302769E (in wifi_sta_ip_set_cmd)
;;     230276B6 (in wifi_sta_ip_set_cmd)
;;     230276BC (in wifi_sta_ip_set_cmd)
;;     230276C4 (in wifi_sta_ip_set_cmd)
;;     230276DC (in wifi_sta_ip_set_cmd)
;;     230276E2 (in wifi_sta_ip_set_cmd)
;;     230276EA (in wifi_sta_ip_set_cmd)
;;     23027702 (in wifi_sta_ip_set_cmd)
;;     23027708 (in wifi_sta_ip_set_cmd)
;;     23027710 (in wifi_sta_ip_set_cmd)
;;     23027728 (in wifi_sta_ip_set_cmd)
;;     2302772E (in wifi_sta_ip_set_cmd)
;;     23027736 (in wifi_sta_ip_set_cmd)
;;     23028636 (in cb_event_ind)
;;     23028E88 (in coex_dump_ble)
;;     23049D8A (in bl_onchiphci_rx_packet_handler)
;;     2305AB46 (in ota_tcp_cmd.part.0)
;;     2305AD94 (in ota_tcp_cmd.part.0)
;;     2305AD9A (in ota_tcp_cmd.part.0)
;;     2305ADA2 (in ota_tcp_cmd.part.0)
;;     2305ADBE (in ota_tcp_cmd.part.0)
;;     2305ADC4 (in ota_tcp_cmd.part.0)
;;     2305ADCC (in ota_tcp_cmd.part.0)
;;     2305AE0E (in ota_tcp_cmd.part.0)
;;     2305AE14 (in ota_tcp_cmd.part.0)
;;     2305AE1C (in ota_tcp_cmd.part.0)
;;     2305AE38 (in ota_tcp_cmd.part.0)
;;     2305AE3E (in ota_tcp_cmd.part.0)
;;     2305AE46 (in ota_tcp_cmd.part.0)
;;     2305AE6A (in ota_tcp_cmd.part.0)
;;     2305AE8A (in ota_tcp_cmd.part.0)
;;     2305AF2C (in ota_tcp_cmd.part.0)
;;     2305AF52 (in ota_tcp_cmd.part.0)
;;     2305AF76 (in ota_tcp_cmd.part.0)
;;     2305C2F0 (in cmd_sys_time_now)
;;     23060A48 (in ef_port_init)
;;     2306586A (in exception_entry)
;;     230658B0 (in exception_entry)
;;     23065966 (in bl_irq_init)
;;     23065AA6 (in sec_trng_IRQHandler)
;;     23065C44 (in bl_rand)
;;     23065D6C (in cmd_gpio_get)
;;     230661DC (in bl_wifi_enable_irq)
;;     23069F78 (in proc_entry_looprt)
;;     2306A0F6 (in cmd_looprt_test)
;;     2306A12C (in cmd_looprt_test_status)
;;     2306A144 (in cmd_looprt_test_evt)
;;     2306A160 (in cmd_looprt_test_evt_dump)
;;     2306A17C (in cmd_looprt_test_schedule_evt1)
;;     2306A19E (in cmd_looprt_test_schedule_evt2)
;;     23077280 (in dhcp_server_recv)
;;     230781E4 (in ips_test_cmd)
;;     23078DC6 (in _startup_sntp)
;;     23078DE8 (in _startup_sntp)
;;     23078DFE (in cmd_sntp_date)
;;     23078E0A (in cmd_sntp_date)
;;     23078E4E (in cmd_sntp_date)
;;     2307A532 (in utils_hexdump)
;;     2307CE04 (in cipsta_ip)
;;     2307CE0A (in cipsta_ip)
;;     2307CE16 (in cipsta_ip)
;;     2307CE48 (in cipsta_ip)
;;     2307CE4E (in cipsta_ip)
;;     2307CE56 (in cipsta_ip)
;;     2307CE88 (in cipsta_ip)
;;     2307CE8E (in cipsta_ip)
;;     2307CE96 (in cipsta_ip)
;;     2307CEC8 (in cipsta_ip)
;;     2307CECE (in cipsta_ip)
;;     2307CED6 (in cipsta_ip)
;;     2307CF08 (in cipsta_ip)
;;     2307CF0E (in cipsta_ip)
;;     2307CF16 (in cipsta_ip)
;;     2307D0C4 (in cb_altcp_recv_fn)
;;     23084AE6 (in bl_mtd_open)
;;     23084B3E (in bl_mtd_open)
;;     23085180 (in bloop_status_dump)
;;     230851AE (in bloop_status_dump)
puts proc
	lui	a5,0004200F
	lbu	a5,a5,-00000348
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	andi	a5,a5,+000000FF
	c.li	s0,00000000
	c.beqz	a5,000000002308237C

l23082364:
	c.mv	s1,a0
	c.li	s0,00000000
	c.j	0000000023082372

l2308236A:
	c.li	a0,00000000
	jal	ra,0000000023064D00
	c.addi	s0,00000001

l23082372:
	add	a5,s1,s0
	lbu	a1,a5,+00000000
	c.bnez	a1,000000002308236A

l2308237C:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; printf: 23082388
;;   Called from:
;;     23000316 (in cmd_free_mem)
;;     23000440 (in wifiprov_wifi_state_get)
;;     2300044E (in wifiprov_wifi_state_get)
;;     2300045C (in wifiprov_wifi_state_get)
;;     2300050C (in event_cb_wifi_event)
;;     23000558 (in event_cb_wifi_event)
;;     230006AE (in event_cb_wifi_event)
;;     23000726 (in event_cb_wifi_event)
;;     230009A4 (in event_cb_wifi_event)
;;     230009E2 (in event_cb_cli)
;;     23000AE2 (in aos_loop_proc)
;;     23000BBE (in vApplicationMallocFailedHook)
;;     23000D9E (in bfl_main)
;;     23000F84 (in wifiprov_api_state_get)
;;     23000FA2 (in wifiprov_wifi_scan)
;;     23000FBC (in wifiprov_disc_from_ap_ind)
;;     23000FDA (in wifiprov_connect_ap_ind)
;;     23000FF4 (in blsync_disconnected)
;;     2300102E (in blsync_connected)
;;     230010AE (in blsync_ble_start)
;;     23004B64 (in rf_pri_config_channel.constprop.9)
;;     23004B94 (in rf_pri_config_channel.constprop.9)
;;     230061DA (in rf_pri_txcal)
;;     2300632E (in rf_pri_txcal)
;;     2300648E (in rf_pri_roscal)
;;     230064C4 (in rf_pri_roscal)
;;     230064F6 (in rf_pri_roscal)
;;     2300652A (in rf_pri_roscal)
;;     2300656A (in rf_pri_roscal)
;;     2300659C (in rf_pri_roscal)
;;     230065CA (in rf_pri_roscal)
;;     230065FA (in rf_pri_roscal)
;;     2300671C (in rf_pri_rccal)
;;     23006820 (in rf_pri_rccal)
;;     2300696C (in rf_pri_lo_acal)
;;     23006B6C (in rf_pri_fcal)
;;     23006C2E (in rf_pri_fcal)
;;     23007606 (in hal_machw_init)
;;     23008550 (in mm_sta_add)
;;     23008630 (in mm_sta_add)
;;     2300A7D0 (in rxl_hwdesc_dump)
;;     2300A7FA (in rxl_hwdesc_dump)
;;     2300A812 (in rxl_hwdesc_dump)
;;     2300A83E (in rxl_hwdesc_dump)
;;     2300A854 (in rxl_hwdesc_dump)
;;     2300A898 (in rxl_hwdesc_dump)
;;     2300A918 (in rxl_hwdesc_init)
;;     2300A98A (in rxl_hwdesc_init)
;;     2300A9C6 (in rxl_hwdesc_init)
;;     2300AF30 (in sta_mgmt_init)
;;     2300AF7C (in sta_mgmt_init)
;;     2300B08A (in sta_mgmt_register)
;;     2300B328 (in td_timer_end)
;;     2300B3CC (in td_reset)
;;     2300B41E (in td_init)
;;     2300B464 (in td_start)
;;     2301111C (in scanu_frame_handler)
;;     23011142 (in scanu_frame_handler)
;;     23011152 (in scanu_frame_handler)
;;     230112AE (in scanu_frame_handler)
;;     230118D8 (in sm_get_bss_params)
;;     230118F4 (in sm_get_bss_params)
;;     23011934 (in sm_get_bss_params)
;;     2301194C (in sm_get_bss_params)
;;     2301196E (in sm_get_bss_params)
;;     23011992 (in sm_get_bss_params)
;;     23011FC0 (in sm_connect_ind)
;;     23012090 (in sm_connect_ind)
;;     230120A0 (in sm_connect_ind)
;;     230120D8 (in sm_supplicant_deauth_cfm)
;;     230124D6 (in sm_auth_handler)
;;     2301252A (in sm_auth_handler)
;;     23012692 (in sm_assoc_rsp_handler)
;;     2301272C (in sm_deauth_handler)
;;     23012798 (in sm_handle_supplicant_result)
;;     230132CC (in apm_tx_cfm_handler)
;;     230143A8 (in cfg_api_element_general_set)
;;     23014480 (in cfg_api_element_set)
;;     23015C10 (in add_key_to_mac)
;;     23015EA0 (in add_mfp_key_to_mac)
;;     23015EB6 (in add_mfp_key_to_mac)
;;     23018EF0 (in InitGroupKey)
;;     230195D6 (in helper_record_dump)
;;     230195E4 (in helper_record_dump)
;;     23019600 (in helper_record_dump)
;;     2301961A (in helper_record_dump)
;;     23019636 (in helper_record_dump)
;;     23019656 (in helper_record_dump)
;;     2301B056 (in hal_mib_dump)
;;     2301C1EA (in txl_buffer_update_thd)
;;     2301C4B8 (in rxu_mgt_ind_handler)
;;     2301C4F8 (in rxu_mgt_ind_handler)
;;     2301D200 (in me_build_beacon)
;;     2301E12A (in cfm_raw_send)
;;     2301E148 (in scanu_raw_send_req_handler)
;;     2301E62E (in sm_connect_req_handler)
;;     2301EEC6 (in apm_start_req_handler)
;;     2301F10A (in apm_start_req_handler)
;;     2301F174 (in apm_start_req_handler)
;;     2301F1BE (in apm_start_req_handler)
;;     2301F2FE (in dump_cfg_entries)
;;     2301F30A (in dump_cfg_entries)
;;     2301F316 (in dump_cfg_entries)
;;     2301F322 (in dump_cfg_entries)
;;     2301F32E (in dump_cfg_entries)
;;     2301F346 (in dump_cfg_entries)
;;     2301F350 (in dump_cfg_entries)
;;     2301F3BC (in cfg_start_req_handler)
;;     23021980 (in ipc_host_init)
;;     23021C5E (in bl_main_if_remove)
;;     23021C78 (in bl_main_if_remove)
;;     23021CEC (in bl_main_if_add)
;;     23021D14 (in bl_main_if_add)
;;     23021D30 (in bl_main_if_add)
;;     23021D76 (in bl_main_if_add)
;;     23021DC4 (in bl_main_apm_start)
;;     23021DEC (in bl_main_apm_start)
;;     23021DFC (in bl_main_apm_start)
;;     23021E0C (in bl_main_apm_start)
;;     23021E1C (in bl_main_apm_start)
;;     23021E2C (in bl_main_apm_start)
;;     23021E62 (in bl_main_apm_stop)
;;     23021E7E (in bl_main_apm_stop)
;;     23021F4C (in bl_main_apm_sta_delete)
;;     23022138 (in bl_main_rtthread_start)
;;     230221A4 (in bl_main_rtthread_start)
;;     230221B4 (in bl_main_rtthread_start)
;;     230221C4 (in bl_main_rtthread_start)
;;     230221D4 (in bl_main_rtthread_start)
;;     230221E4 (in bl_main_rtthread_start)
;;     230221F4 (in bl_main_rtthread_start)
;;     23022346 (in bl_handle_dynparams)
;;     230223E4 (in bl_send_msg)
;;     2302241E (in bl_send_msg)
;;     2302247E (in bl_send_msg)
;;     23022512 (in bl_msg_zalloc.constprop.3)
;;     230225A4 (in bl_msg_update_channel_cfg)
;;     2302273E (in bl_send_me_config_req)
;;     23022CD4 (in bl_send_sm_connect_req)
;;     230231C6 (in bl_rx_apm_sta_del_ind)
;;     230231D6 (in bl_rx_apm_sta_del_ind)
;;     23023214 (in bl_rx_apm_sta_del_ind)
;;     23023232 (in bl_rx_apm_sta_add_ind)
;;     23023240 (in bl_rx_apm_sta_add_ind)
;;     23023264 (in bl_rx_apm_sta_add_ind)
;;     23023274 (in bl_rx_apm_sta_add_ind)
;;     23023284 (in bl_rx_apm_sta_add_ind)
;;     23023308 (in bl_rx_apm_sta_add_ind)
;;     230233FA (in bl_rx_sm_connect_ind)
;;     2302340C (in bl_rx_sm_connect_ind)
;;     2302341E (in bl_rx_sm_connect_ind)
;;     23023442 (in bl_rx_sm_connect_ind)
;;     23023452 (in bl_rx_sm_connect_ind)
;;     23023462 (in bl_rx_sm_connect_ind)
;;     23023472 (in bl_rx_sm_connect_ind)
;;     23023482 (in bl_rx_sm_connect_ind)
;;     23023492 (in bl_rx_sm_connect_ind)
;;     230234A2 (in bl_rx_sm_connect_ind)
;;     230234B2 (in bl_rx_sm_connect_ind)
;;     230234C2 (in bl_rx_sm_connect_ind)
;;     230234D2 (in bl_rx_sm_connect_ind)
;;     230234E2 (in bl_rx_sm_connect_ind)
;;     230234F2 (in bl_rx_sm_connect_ind)
;;     23023502 (in bl_rx_sm_connect_ind)
;;     23023512 (in bl_rx_sm_connect_ind)
;;     23023600 (in bl_rx_sm_connect_ind)
;;     2302362E (in bl_rx_sm_disconnect_ind)
;;     2302363E (in bl_rx_sm_disconnect_ind)
;;     23023652 (in bl_rx_sm_disconnect_ind)
;;     23023956 (in bl_rx_scanu_result_ind)
;;     2302398A (in bl_rx_scanu_result_ind)
;;     23023AF2 (in bl_tx_push)
;;     23023CB6 (in bl_output)
;;     23023D0C (in bl_output)
;;     23023DC8 (in bl_output)
;;     23023E22 (in bl_output)
;;     23023F6C (in tcpip_stack_input)
;;     23023F92 (in tcpip_stack_input)
;;     2302407A (in tcpip_stack_input)
;;     230241FC (in tcpip_stack_input)
;;     23024246 (in tcpip_stack_input)
;;     2302435E (in bl_utils_dump)
;;     23024374 (in bl_utils_dump)
;;     2302438C (in bl_utils_dump)
;;     230243C8 (in bl_utils_dump)
;;     2302440C (in printErrMsg)
;;     2302441A (in stateSnifferExit)
;;     23024428 (in stateSnifferAction)
;;     23024566 (in stateConnectedIPNoAction_ipgot)
;;     2302457E (in stateConnectedIPNoAction_ipgot)
;;     2302458C (in stateGlobalEnter)
;;     23024598 (in stateGlobalAction)
;;     230245AA (in stateConnectingEnter)
;;     23024646 (in stateConnectedIPNoExit)
;;     2302467A (in stateDisconnect_action_idle)
;;     23024686 (in stateDisconnect_action_idle)
;;     230246B2 (in stateDisconnect_action_reconnect)
;;     230246BE (in stateDisconnect_action_reconnect)
;;     230246D0 (in stateDisconnect_action_reconnect)
;;     23024700 (in stateDisconnect_action_reconnect)
;;     2302470E (in stateDisconnect_action_reconnect)
;;     23024736 (in stateDisconnect_action_reconnect)
;;     23024744 (in stateDisconnect_action_reconnect)
;;     2302476C (in stateDisconnect_action_reconnect)
;;     23024790 (in stateDisconnect_action_reconnect)
;;     23024820 (in ip_obtaining_timeout)
;;     23024848 (in stateConnectedIPNoEnter)
;;     230248B6 (in stateConnectedIPNoEnter)
;;     23024918 (in stateConnectedIPNoEnter)
;;     2302497C (in stateConnectedIPYesGuard_rcconfig)
;;     230249C2 (in stateIdleAction_connect)
;;     230249D4 (in stateIdleAction_connect)
;;     23024A04 (in stateIdleAction_connect)
;;     23024A12 (in stateIdleAction_connect)
;;     23024A3A (in stateIdleAction_connect)
;;     23024A48 (in stateIdleAction_connect)
;;     23024A70 (in stateIdleAction_connect)
;;     23024A80 (in stateIdleAction_connect)
;;     23024A98 (in stateIdleAction_connect)
;;     23024ABC (in stateIdleAction_connect)
;;     23024AD6 (in stateIdleAction_connect)
;;     23024AF6 (in stateIdleAction_connect)
;;     23024C70 (in stateGlobalGuard_fw_powersaving)
;;     23024CD4 (in stateGlobalGuard_conf_max_sta)
;;     23024D2A (in stateGlobalGuard_AP)
;;     23024D70 (in stateGlobalGuard_AP)
;;     23024D82 (in stateGlobalGuard_AP)
;;     23024DB2 (in stateGlobalGuard_AP)
;;     2302504E (in stateDisconnect_exit)
;;     23025060 (in stateDisconnect_exit)
;;     230250A2 (in stateDisconnect_exit)
;;     230250CC (in disconnect_retry)
;;     230250D8 (in disconnect_retry)
;;     230250FC (in stateGlobalGuard_fw_disconnect)
;;     23025122 (in stateConnectedIPYes_exit)
;;     23025224 (in stateIdleGuard_connect)
;;     2302524E (in stateIfaceDownGuard_phyup)
;;     23025304 (in stateGlobalGuard_stop)
;;     2302531C (in stateGlobalGuard_stop)
;;     2302532C (in stateGlobalGuard_stop)
;;     23025340 (in stateGlobalGuard_stop)
;;     2302535E (in stateGlobalGuard_stop)
;;     230253A8 (in stateGlobalGuard_enable_autoreconnect)
;;     230253FC (in stateGlobalGuard_disable_autoreconnect)
;;     23025408 (in stateGlobalGuard_disable_autoreconnect)
;;     23025428 (in stateGlobalGuard_disable_autoreconnect)
;;     2302545A (in stateDisconnect_enter)
;;     23025494 (in stateDisconnect_enter)
;;     230254F6 (in stateDisconnect_enter)
;;     2302551C (in stateDisconnect_enter)
;;     23025574 (in stateGlobalGuard_fw_scan)
;;     230255BA (in stateGlobalGuard_fw_scan)
;;     230255D2 (in stateGlobalGuard_fw_scan)
;;     230255F8 (in stateGlobalExit)
;;     23025606 (in stateSnifferEnter)
;;     23025622 (in stateConnectingAction_connected)
;;     23025630 (in stateConnectingAction_disconnect)
;;     2302563E (in stateConnectingExit)
;;     2302564C (in stateIdleAction_sniffer)
;;     2302565A (in stateIdleEnter)
;;     23025668 (in stateIdleExit)
;;     23025676 (in stateIfaceDownAction_phyup)
;;     23025684 (in stateIfaceDownEnter)
;;     23025692 (in stateIfaceDownExit)
;;     230256AE (in stateConnectedIPNoAction_disconnect)
;;     230256CA (in stateConnectedIPYes_action)
;;     230256DE (in stateConnectedIPYes_enter)
;;     23025704 (in stateConnectedIPYes_enter)
;;     23025840 (in wifi_mgmr_event_notify)
;;     23025858 (in wifi_mgmr_event_notify)
;;     230258DA (in wifi_mgmr_start)
;;     23025D00 (in wifi_mgmr_api_connect)
;;     23026A1A (in cmd_wifi_state_get)
;;     23026ACE (in wifi_sta_get_state_cmd)
;;     23026ADE (in wifi_sta_get_state_cmd)
;;     23026C2C (in wifi_edca_dump_cmd)
;;     23026C64 (in wifi_edca_dump_cmd)
;;     23026C9C (in wifi_edca_dump_cmd)
;;     23026CD4 (in wifi_edca_dump_cmd)
;;     23026D10 (in wifi_ap_sta_list_get_cmd)
;;     23026D56 (in wifi_ap_sta_list_get_cmd)
;;     23026D62 (in wifi_ap_sta_list_get_cmd)
;;     23026D6E (in wifi_ap_sta_list_get_cmd)
;;     23026D7A (in wifi_ap_sta_list_get_cmd)
;;     23026E04 (in wifi_ap_sta_list_get_cmd)
;;     23026E30 (in wifi_ap_sta_delete_cmd)
;;     23026E5E (in wifi_ap_sta_delete_cmd)
;;     23026E9A (in wifi_ap_sta_delete_cmd)
;;     23026EA8 (in wifi_ap_sta_delete_cmd)
;;     23026F6A (in wifi_ap_sta_delete_cmd)
;;     23027034 (in cmd_wifi_cfg)
;;     23027058 (in cmd_wifi_cfg)
;;     230270F4 (in cmd_wifi_cfg)
;;     23027136 (in cmd_wifi_cfg)
;;     2302714C (in cmd_wifi_cfg)
;;     2302716E (in cmd_wifi_cfg)
;;     23027190 (in cmd_wifi_cfg)
;;     230271B8 (in cmd_wifi_ap_stop)
;;     230272F2 (in wifi_sta_ip_info)
;;     23027306 (in wifi_sta_ip_info)
;;     2302731A (in wifi_sta_ip_info)
;;     2302732E (in wifi_sta_ip_info)
;;     23027342 (in wifi_sta_ip_info)
;;     23027356 (in wifi_sta_ip_info)
;;     2302738A (in wifi_sta_ip_info)
;;     230273B8 (in wifi_sta_ip_info)
;;     230273E6 (in wifi_sta_ip_info)
;;     230274D6 (in cmd_wifi_ap_conf_max_sta)
;;     230274F2 (in cmd_wifi_ap_conf_max_sta)
;;     2302752A (in wifi_rc_fixed_enable)
;;     2302757E (in wifi_rc_fixed_enable)
;;     230275B6 (in wifi_rc_fixed_enable)
;;     230275F6 (in wifi_connect_cmd)
;;     23027776 (in wifi_capcode_cmd)
;;     230277AC (in wifi_capcode_cmd)
;;     230277F0 (in wifi_mgmr_cli_scanlist)
;;     23027806 (in wifi_mgmr_cli_scanlist)
;;     2302789C (in wifi_mgmr_cli_scanlist)
;;     230278B2 (in wifi_mgmr_cli_scanlist)
;;     230278DC (in wifi_mgmr_cli_scanlist)
;;     230279B6 (in cb_scan_complete)
;;     23027A1E (in wifi_mgmr_sta_enable)
;;     23027A44 (in wifi_mgmr_sta_enable)
;;     23027C9A (in wifi_mgmr_sta_connect_ind_stat_get)
;;     23027CB6 (in wifi_mgmr_sta_connect_ind_stat_get)
;;     23027CE8 (in wifi_mgmr_sta_connect_ind_stat_get)
;;     2302805C (in wifi_mgmr_scan_complete_callback)
;;     230281B8 (in wifi_mgmr_all_ap_scan)
;;     23028258 (in wifi_mgmr_profile_add)
;;     23028354 (in wifi_mgmr_profile_get)
;;     23028472 (in cb_probe_resp_ind)
;;     230284C0 (in cb_disconnect_ind)
;;     23028626 (in cb_event_ind)
;;     23028854 (in cmd_mgr_llind)
;;     23028C86 (in netif_status_callback)
;;     23028C9C (in netif_status_callback)
;;     23028CB2 (in netif_status_callback)
;;     23028CCC (in netif_status_callback)
;;     23028D4E (in wifi_tx)
;;     23028DDA (in bl606a0_wifi_init)
;;     23028E0E (in bl606a0_wifi_init)
;;     23028E20 (in bl606a0_wifi_init)
;;     23028E9C (in coex_dump_ble)
;;     23028EB2 (in coex_dump_ble)
;;     23028EC4 (in coex_dump_ble)
;;     23028ED6 (in coex_dump_ble)
;;     23028EE8 (in coex_dump_ble)
;;     23028EFA (in coex_dump_ble)
;;     23028F0C (in coex_dump_ble)
;;     23028F1E (in coex_dump_ble)
;;     23028F30 (in coex_dump_ble)
;;     23028F42 (in coex_dump_ble)
;;     23028F54 (in coex_dump_ble)
;;     23028F66 (in coex_dump_ble)
;;     23028F78 (in coex_dump_ble)
;;     23028F8E (in coex_dump_ble)
;;     23029114 (in bdaddr_init)
;;     2302F770 (in lld_evt_end)
;;     2303A4B4 (in lpn_cb)
;;     2303A4D8 (in fault_get_reg)
;;     2303A4F2 (in fault_get_reg)
;;     2303A548 (in prov_reset)
;;     2303A564 (in prov_complete)
;;     2303A59C (in link_close)
;;     2303A5B6 (in link_open)
;;     2303A5C2 (in prov_input_complete)
;;     2303A5EA (in input)
;;     2303A5FA (in input)
;;     2303A632 (in output_string)
;;     2303A64A (in output_number)
;;     2303A688 (in vendor_data_set)
;;     2303A6EE (in blemesh_lpn_set)
;;     2303A7B4 (in blemesh_seg_send)
;;     2303A86A (in blemesh_seg_send)
;;     2303A8A8 (in blemesh_net_send)
;;     2303A972 (in blemesh_net_send)
;;     2303A9AE (in blemesh_reset)
;;     2303A9C0 (in blemesh_input_str)
;;     2303AA14 (in blemesh_input_str)
;;     2303AA48 (in blemesh_input_num)
;;     2303AAAE (in blemesh_input_num)
;;     2303AAE8 (in blemesh_ivu_test)
;;     2303AB26 (in blemesh_set_dev_uuid)
;;     2303AB3C (in blemesh_set_dev_uuid)
;;     2303AB72 (in blemesh_fault_set)
;;     2303ABC4 (in blemesh_fault_set)
;;     2303ABDE (in blemesh_fault_set)
;;     2303AC28 (in blemesh_fault_set)
;;     2303AC42 (in blemesh_fault_set)
;;     2303AC74 (in blemesh_pb)
;;     2303ACC2 (in blemesh_pb)
;;     2303ACD6 (in blemesh_pb)
;;     2303AD28 (in blemesh_init)
;;     2303ADC4 (in blemesh_init)
;;     2303ADD6 (in blemesh_init)
;;     2303AE08 (in blemesh_iv_update)
;;     2303AE46 (in blemesh_iv_update)
;;     2303AE68 (in blemesh_iv_update)
;;     2303AE92 (in fault_get_cur)
;;     2303AEFC (in show_faults)
;;     2303AF1C (in show_faults)
;;     2303AF3E (in show_faults)
;;     2303AF5C (in health_current_status)
;;     2303B200 (in friend_req_sent)
;;     2303B25E (in friend_clear_sent)
;;     2303B2B0 (in req_sent)
;;     2303B3D4 (in sub_update)
;;     2303B82E (in bt_mesh_lpn_msg_received)
;;     2303B85E (in bt_mesh_lpn_friend_offer)
;;     2303B87E (in bt_mesh_lpn_friend_offer)
;;     2303B93C (in bt_mesh_lpn_friend_clear_cfm)
;;     2303B968 (in bt_mesh_lpn_friend_clear_cfm)
;;     2303B9FE (in bt_mesh_lpn_group_add)
;;     2303BB72 (in bt_mesh_lpn_friend_sub_cfm)
;;     2303BBA4 (in bt_mesh_lpn_friend_sub_cfm)
;;     2303BBC0 (in bt_mesh_lpn_friend_sub_cfm)
;;     2303BCBE (in bt_mesh_lpn_friend_update)
;;     2303BCE4 (in bt_mesh_lpn_friend_update)
;;     2303BEE8 (in gen_onoff_set.isra.0)
;;     2303BF24 (in gen_onoff_set.isra.0)
;;     2303BFD0 (in send_onoff_status)
;;     2303C016 (in gen_onoff_get)
;;     2303C028 (in publish_start)
;;     2303C07A (in model_send)
;;     2303C0A6 (in model_send)
;;     2303C0C2 (in model_send)
;;     2303C0EE (in model_send)
;;     2303C30E (in publish_sent)
;;     2303C4F2 (in bt_mesh_model_recv)
;;     2303C51A (in bt_mesh_model_recv)
;;     2303C69A (in bt_mesh_model_recv)
;;     2303C7DA (in bt_mesh_model_publish)
;;     2303C7F4 (in bt_mesh_model_publish)
;;     2303C976 (in mod_publish)
;;     2303C9B4 (in mod_publish)
;;     2303C9CE (in mod_publish)
;;     2303CB56 (in adv_thread)
;;     2303CC3A (in bt_mesh_scan_cb)
;;     2303CCC6 (in bt_mesh_adv_create_from_pool)
;;     2303CE12 (in bt_mesh_scan_enable)
;;     2303CE44 (in bt_mesh_scan_disable)
;;     2303CFAA (in beacon_send)
;;     2303D040 (in beacon_send)
;;     2303D0FA (in beacon_send)
;;     2303D196 (in bt_mesh_beacon_recv)
;;     2303D1BE (in bt_mesh_beacon_recv)
;;     2303D3CC (in hb_pub_status)
;;     2303D494 (in hb_sub_status)
;;     2303D544 (in mod_pub_status)
;;     2303D5EE (in mod_pub_status)
;;     2303D6AA (in relay_status)
;;     2303D73A (in app_key_status)
;;     2303D7BE (in net_key_status)
;;     2303D826 (in comp_data_status)
;;     2303D8A0 (in mod_sub_status)
;;     2303D978 (in mod_app_status)
;;     2303DA52 (in state_status_u8.isra.2)
;;     2303DB64 (in send_krp_status)
;;     2303DBBE (in send_friend_status)
;;     2303DC32 (in net_key_get)
;;     2303DCA6 (in send_net_key_status)
;;     2303DCDC (in krp_get)
;;     2303DD3C (in node_identity_get)
;;     2303DD94 (in node_identity_get)
;;     2303DDDE (in app_key_get)
;;     2303DE62 (in app_key_get)
;;     2303DEE2 (in hb_pub_send_status)
;;     2303DFDE (in send_mod_sub_status)
;;     2303E038 (in krp_set)
;;     2303E092 (in krp_set)
;;     2303E10A (in lpn_timeout_get)
;;     2303E1A6 (in friend_set)
;;     2303E1C4 (in friend_set)
;;     2303E23C (in node_reset)
;;     2303E292 (in mod_sub_get)
;;     2303E36A (in mod_sub_get_vnd)
;;     2303E45C (in net_key_update)
;;     2303E52C (in net_key_add)
;;     2303E83E (in send_mod_pub_status.isra.7)
;;     2303E93C (in mod_app_get)
;;     2303EA3A (in mod_app_unbind)
;;     2303EB02 (in mod_app_bind)
;;     2303EB84 (in mod_app_bind)
;;     2303EC00 (in mod_pub_set)
;;     2303EC54 (in mod_pub_set)
;;     2303ECF8 (in mod_pub_get)
;;     2303ED8E (in mod_sub_del)
;;     2303EE54 (in mod_sub_add)
;;     2303EF24 (in mod_sub_va_del)
;;     2303F094 (in mod_pub_va_set)
;;     2303F0EA (in mod_pub_va_set)
;;     2303F1C2 (in mod_sub_va_add)
;;     2303F2AE (in dev_comp_data_get)
;;     2303F342 (in dev_comp_data_get)
;;     2303F34E (in dev_comp_data_get)
;;     2303F546 (in app_key_update)
;;     2303F5C8 (in app_key_add)
;;     2303F622 (in hb_publish)
;;     2303F6E8 (in heartbeat_pub_set)
;;     2303F8C8 (in hb_sub_send_status.constprop.14)
;;     2303F946 (in heartbeat_sub_set)
;;     2303F9A8 (in heartbeat_sub_set)
;;     2303FB04 (in app_key_del)
;;     2303FB28 (in bt_mesh_cfg_srv_init)
;;     2303FBBA (in bt_mesh_heartbeat)
;;     2303FC8C (in net_transmit_set)
;;     2303FCC0 (in net_transmit_set)
;;     2303FD24 (in net_transmit_get)
;;     2303FD8E (in relay_set)
;;     2303FDCE (in relay_set)
;;     2303FE1A (in relay_set)
;;     2303FE7E (in relay_get)
;;     2303FEC4 (in beacon_set)
;;     2303FEF6 (in beacon_set)
;;     2303FF2A (in beacon_set)
;;     2303FF80 (in beacon_get)
;;     2303FFDE (in node_identity_set)
;;     23040054 (in node_identity_set)
;;     230400D4 (in send_gatt_proxy_status)
;;     23040114 (in gatt_proxy_set)
;;     23040136 (in gatt_proxy_set)
;;     230401E6 (in default_ttl_set)
;;     23040218 (in default_ttl_set)
;;     2304024A (in default_ttl_set)
;;     230402A0 (in default_ttl_get)
;;     230402CC (in bt_mesh_label_uuid_get)
;;     23040358 (in mod_sub_list_clear)
;;     230403A0 (in mod_sub_del_all)
;;     23040438 (in mod_sub_va_overwrite)
;;     230404F8 (in mod_sub_overwrite)
;;     2304065E (in net_key_del)
;;     23041450 (in health_period_status)
;;     230414AA (in health_current_status)
;;     230414DE (in health_fault_status)
;;     23041554 (in health_fault_status)
;;     23041598 (in health_attention_status)
;;     23041638 (in send_attention_status)
;;     23041670 (in health_period_set_unrel)
;;     230416DA (in send_health_period_status)
;;     230417F4 (in health_get_registered)
;;     23041820 (in health_get_registered)
;;     2304187A (in health_fault_test)
;;     230418AE (in health_fault_test)
;;     23041910 (in health_fault_clear)
;;     23041964 (in health_fault_get)
;;     230419F0 (in health_pub_update)
;;     23041A5C (in health_pub_update)
;;     23041A80 (in bt_mesh_health_srv_init)
;;     23041AF4 (in bt_mesh_attention)
;;     23041BC8 (in bt_mesh_provision)
;;     23041BDE (in bt_mesh_provision)
;;     23041BEE (in bt_mesh_provision)
;;     23041C04 (in bt_mesh_provision)
;;     23041C1A (in bt_mesh_provision)
;;     23041EB0 (in auth_match)
;;     23041FE2 (in net_decrypt.isra.1)
;;     23041FF2 (in net_decrypt.isra.1)
;;     230420CA (in bt_mesh_net_keys_create)
;;     230421E0 (in friend_cred_set)
;;     23042368 (in friend_cred_create)
;;     23042624 (in bt_mesh_kr_update)
;;     2304271C (in bt_mesh_net_iv_update)
;;     23042752 (in bt_mesh_net_iv_update)
;;     230427D0 (in bt_mesh_net_iv_update)
;;     230427F8 (in bt_mesh_net_iv_update)
;;     2304280E (in bt_mesh_net_iv_update)
;;     23042948 (in bt_mesh_net_resend)
;;     23042A6C (in bt_mesh_net_encode)
;;     23042BDC (in bt_mesh_net_encode)
;;     23042DE4 (in bt_mesh_net_decode)
;;     23042DFC (in bt_mesh_net_decode)
;;     23042FA6 (in bt_mesh_net_decode)
;;     23043134 (in bt_mesh_net_recv)
;;     230431E4 (in bt_mesh_net_recv)
;;     2304328A (in bt_mesh_net_recv)
;;     230433EC (in prov_failed)
;;     23043430 (in adv_buf_create)
;;     23043648 (in prov_send)
;;     230436F6 (in send_input_complete)
;;     230437BA (in prov_send_fail_msg)
;;     2304383A (in reset_state)
;;     230438AE (in prov_confirm)
;;     23043932 (in prov_confirm)
;;     230439FC (in prov_invite)
;;     23043AF6 (in prov_random)
;;     23043B14 (in prov_random)
;;     23043B50 (in prov_random)
;;     23043BE8 (in prov_data)
;;     23043C2C (in prov_data)
;;     23043C9A (in prov_data)
;;     23043CF0 (in prov_data)
;;     23043D5A (in prov_dh_key_gen)
;;     23043DAA (in prov_pub_key)
;;     23043DD6 (in prov_start)
;;     23043E4A (in prov_start)
;;     23044014 (in pub_key_ready)
;;     23044070 (in prov_retransmit)
;;     230440A8 (in prov_retransmit)
;;     23044180 (in prov_msg_recv)
;;     230441B0 (in prov_msg_recv)
;;     230441E2 (in prov_msg_recv)
;;     230441F6 (in prov_msg_recv)
;;     23044228 (in prov_msg_recv)
;;     23044278 (in gen_prov_cont)
;;     230442A4 (in gen_prov_cont)
;;     230442C0 (in gen_prov_cont)
;;     230442FC (in gen_prov_cont)
;;     2304431A (in gen_prov_cont)
;;     2304439A (in gen_prov_start)
;;     230443B6 (in gen_prov_start)
;;     23044402 (in gen_prov_start)
;;     23044418 (in gen_prov_start)
;;     230444C6 (in send_pub_key)
;;     23044550 (in send_pub_key)
;;     230445D0 (in gen_prov_ctl)
;;     2304462C (in gen_prov_ctl)
;;     2304477C (in bt_mesh_pb_gatt_recv)
;;     230447A0 (in bt_mesh_pb_gatt_recv)
;;     230447C4 (in bt_mesh_pb_gatt_recv)
;;     23044806 (in bt_mesh_pb_gatt_recv)
;;     23044898 (in bt_mesh_pb_gatt_close)
;;     23044924 (in bt_mesh_pb_adv_recv)
;;     23044A2A (in bt_mesh_prov_init)
;;     23044A7E (in proxy_sar_timeout)
;;     23044AF8 (in prov_ccc_write)
;;     23044B4E (in proxy_ccc_write)
;;     23044CFE (in proxy_connected)
;;     23044F7A (in send_filter_status)
;;     23045022 (in proxy_complete_pdu)
;;     2304503E (in proxy_complete_pdu)
;;     230450A8 (in proxy_complete_pdu)
;;     230450CE (in proxy_complete_pdu)
;;     23045136 (in proxy_recv)
;;     230455F4 (in bt_mesh_proxy_send)
;;     23045622 (in bt_mesh_proxy_send)
;;     2304575C (in bt_mesh_proxy_adv_start)
;;     23045844 (in bt_mesh_proxy_adv_start)
;;     230458E4 (in bt_mesh_proxy_adv_start)
;;     23045946 (in bt_mesh_proxy_adv_start)
;;     230459FA (in bt_mesh_proxy_adv_stop)
;;     23045B84 (in is_replay)
;;     23045C56 (in sdu_recv)
;;     23045D5A (in sdu_recv)
;;     23045E0C (in seg_rx_reset)
;;     23045F46 (in seg_tx_send_unacked)
;;     23045F7C (in seg_tx_send_unacked)
;;     23046020 (in ctl_recv)
;;     23046102 (in ctl_recv)
;;     230461D0 (in ctl_recv)
;;     23046324 (in ctl_recv)
;;     23046418 (in bt_mesh_trans_send)
;;     2304658E (in bt_mesh_trans_send)
;;     23046726 (in bt_mesh_trans_send)
;;     23046754 (in bt_mesh_trans_send)
;;     2304677C (in bt_mesh_trans_send)
;;     2304686A (in bt_mesh_trans_send)
;;     23046890 (in bt_mesh_trans_send)
;;     23046902 (in bt_mesh_trans_send)
;;     23046916 (in bt_mesh_trans_send)
;;     230469A8 (in bt_mesh_ctl_send)
;;     23046AA4 (in send_ack)
;;     23046B54 (in seg_ack)
;;     23046C2A (in bt_mesh_trans_recv)
;;     23046C84 (in bt_mesh_trans_recv)
;;     23046CAA (in bt_mesh_trans_recv)
;;     23046D00 (in bt_mesh_trans_recv)
;;     23046DA8 (in bt_mesh_trans_recv)
;;     23046DE4 (in bt_mesh_trans_recv)
;;     23046E58 (in bt_mesh_trans_recv)
;;     23046EF8 (in bt_mesh_trans_recv)
;;     23046F2E (in bt_mesh_trans_recv)
;;     23046FEE (in bt_mesh_trans_recv)
;;     2304701E (in bt_mesh_trans_recv)
;;     23047062 (in bt_mesh_trans_recv)
;;     230471AE (in bt_mesh_trans_recv)
;;     230471D2 (in bt_mesh_trans_recv)
;;     2304723C (in bt_mesh_trans_recv)
;;     23047636 (in create_friend_pdu)
;;     23047774 (in buf_send_end)
;;     23047896 (in friend_timeout)
;;     23047992 (in enqueue_sub_cfm)
;;     23047A0C (in friend_queue_prepare_space)
;;     23047AE4 (in enqueue_update)
;;     23047BE4 (in enqueue_friend_pdu)
;;     23047D78 (in bt_mesh_friend_clear)
;;     23047DE4 (in bt_mesh_friend_clear)
;;     23047E06 (in bt_mesh_friend_clear)
;;     23047E70 (in bt_mesh_friend_sub_add)
;;     23047EAA (in bt_mesh_friend_sub_add)
;;     23047EC4 (in bt_mesh_friend_sub_add)
;;     23047F32 (in bt_mesh_friend_sub_add)
;;     23047F54 (in bt_mesh_friend_sub_rem)
;;     23047F8A (in bt_mesh_friend_sub_rem)
;;     23047FA4 (in bt_mesh_friend_sub_rem)
;;     2304802E (in bt_mesh_friend_poll)
;;     23048058 (in bt_mesh_friend_poll)
;;     23048090 (in bt_mesh_friend_poll)
;;     23048124 (in bt_mesh_friend_clear_cfm)
;;     23048156 (in bt_mesh_friend_clear_cfm)
;;     230481CA (in bt_mesh_friend_clear_cfm)
;;     230481FA (in bt_mesh_friend_req)
;;     23048210 (in bt_mesh_friend_req)
;;     230482AC (in bt_mesh_friend_req)
;;     230482F0 (in bt_mesh_friend_req)
;;     23048300 (in bt_mesh_friend_req)
;;     23048460 (in bt_mesh_friend_req)
;;     23048714 (in bt_mesh_friend_enqueue_rx)
;;     230488B8 (in bt_mesh_friend_enqueue_tx)
;;     23048942 (in bt_mesh_friend_clear_incomplete)
;;     230489A0 (in bt_mesh_friend_clear_incomplete)
;;     23048AA0 (in k_queue_free)
;;     23048B3A (in k_sem_init)
;;     23048B8C (in k_sem_give)
;;     23048BC6 (in k_sem_delete)
;;     23048C1E (in k_thread_delete)
;;     2304A124 (in hci_driver_send)
;;     2304A296 (in send_frag)
;;     2304A766 (in bt_conn_recv)
;;     2304A7A0 (in bt_conn_recv)
;;     2304A836 (in bt_conn_recv)
;;     2304A846 (in bt_conn_recv)
;;     2304A87E (in bt_conn_send_cb)
;;     2304A8B4 (in bt_conn_send_cb)
;;     2304A8E0 (in bt_conn_send_cb)
;;     2304AAE2 (in bt_conn_set_state)
;;     2304AC86 (in bt_conn_set_state)
;;     2304B1B8 (in bt_conn_create_le)
;;     2304B4D2 (in bt_conn_create_pdu_timeout)
;;     2304BA88 (in gatt_notify)
;;     2304BB6E (in gatt_send.constprop.28)
;;     2304BC10 (in gatt_indicate)
;;     2304BFF6 (in sc_save)
;;     2304C292 (in bt_gatt_attr_write_ccc)
;;     2304C770 (in bt_gatt_service_register)
;;     2304CADE (in update_ccc)
;;     2304CB90 (in update_ccc)
;;     2304CE8A (in bt_gatt_discover)
;;     2304D02A (in gatt_read_group_rsp)
;;     2304D2BE (in gatt_read_type_rsp)
;;     2304D3C4 (in read_included_uuid_cb)
;;     2304D48A (in gatt_find_info_rsp)
;;     2304D788 (in gatt_read_rsp)
;;     2304DEC0 (in hci_data_buf_overflow)
;;     2304DFE0 (in le_remote_feat_complete)
;;     2304E044 (in le_conn_update_complete)
;;     2304E150 (in hci_num_completed_packets)
;;     2304E1A6 (in hci_num_completed_packets)
;;     2304E238 (in update_sec_level)
;;     2304E286 (in hci_encrypt_key_refresh_complete)
;;     2304E32E (in hci_encrypt_change)
;;     2304E464 (in handle_event)
;;     2304E484 (in handle_event)
;;     2304E512 (in hci_cmd_done)
;;     2304E552 (in hci_cmd_done)
;;     2304E860 (in bt_hci_cmd_send_sync)
;;     2304EB3C (in hci_disconn_complete)
;;     2304EC5A (in set_ad)
;;     2304EF16 (in bt_id_add)
;;     2304EF30 (in bt_id_add)
;;     2304F0AE (in bt_id_del)
;;     2304F146 (in bt_id_del)
;;     2304F1BC (in bt_data_parse)
;;     2304F2CE (in bt_hci_cmd_send)
;;     2304F372 (in bt_le_set_data_len)
;;     2304F55E (in le_adv_report)
;;     2304F78E (in le_ltk_request)
;;     2304F80E (in le_ltk_request)
;;     2304F89E (in le_conn_param_neg_reply)
;;     2304F93E (in le_conn_param_req)
;;     2304FA92 (in enh_conn_complete)
;;     2304FB28 (in enh_conn_complete)
;;     2304FE24 (in hci_tx_thread)
;;     2304FE4C (in hci_tx_thread)
;;     2304FEA0 (in hci_tx_thread)
;;     2304FF10 (in bt_recv)
;;     2304FF30 (in bt_recv)
;;     2304FFB2 (in bt_recv)
;;     2305023C (in bt_enable)
;;     2305031A (in bt_enable)
;;     23050390 (in bt_id_create)
;;     2305058A (in init_work)
;;     230507E8 (in init_work)
;;     23050E36 (in bt_pub_key_gen)
;;     23050EAC (in bt_pub_key_gen)
;;     230511A0 (in l2cap_accept)
;;     230511F8 (in l2cap_create_le_sig_pdu.isra.7)
;;     2305130C (in l2cap_rtx_timeout)
;;     230518E6 (in l2cap_chan_add)
;;     2305198C (in bt_l2cap_recv)
;;     230519CE (in bt_l2cap_recv)
;;     23051B58 (in l2cap_chan_le_recv_seg)
;;     23051C46 (in l2cap_chan_le_recv_seg)
;;     23051CD4 (in l2cap_rx_process)
;;     23051D3E (in l2cap_rx_process)
;;     23051D78 (in l2cap_recv)
;;     23051DAC (in l2cap_recv)
;;     230522FC (in l2cap_recv)
;;     230525C8 (in smp_chan_get)
;;     2305277E (in smp_sign_buf)
;;     23052C2E (in smp_pairing_failed)
;;     23052CAC (in smp_timeout)
;;     23052D24 (in smp_ident_info)
;;     23052D92 (in smp_encrypt_info)
;;     23052DEE (in legacy_request_tk)
;;     23052E96 (in legacy_request_tk)
;;     23053016 (in bt_smp_accept)
;;     23053616 (in bt_smp_distribute_keys)
;;     23053666 (in bt_smp_distribute_keys)
;;     23053686 (in bt_smp_distribute_keys)
;;     230537C6 (in smp_signing_info)
;;     23053860 (in smp_master_ident)
;;     23053B0A (in smp_security_request)
;;     23053F24 (in bt_smp_recv)
;;     23053F60 (in bt_smp_recv)
;;     23053F86 (in bt_smp_recv)
;;     23053FAC (in bt_smp_recv)
;;     23053FD8 (in bt_smp_recv)
;;     230545CC (in smp_ident_addr_info)
;;     230545E2 (in smp_ident_addr_info)
;;     23054628 (in smp_ident_addr_info)
;;     23054916 (in bt_smp_pkey_ready)
;;     23054AEE (in smp_pairing_random)
;;     23054EB4 (in bt_smp_sign_verify)
;;     23054F04 (in bt_smp_sign_verify)
;;     23054F30 (in bt_smp_sign_verify)
;;     23054F70 (in bt_smp_sign)
;;     23054FCA (in bt_smp_sign)
;;     230553E8 (in bt_smp_update_keys)
;;     230559B2 (in notify_func)
;;     230559CE (in notify_func)
;;     230559DE (in le_param_updated)
;;     230559F4 (in ble_set_tx_pwr)
;;     23055A1C (in ble_set_tx_pwr)
;;     23055A3A (in ble_set_tx_pwr)
;;     23055A5C (in ble_unsubscribe)
;;     23055A94 (in ble_unsubscribe)
;;     23055AB2 (in write_func)
;;     23055ADE (in ble_exchange_mtu)
;;     23055B10 (in ble_exchange_mtu)
;;     23055B46 (in exchange_func)
;;     23055B66 (in ble_auth_pairing_confirm)
;;     23055B80 (in ble_auth_passkey_confirm)
;;     23055B9A (in ble_auth_cancel)
;;     23055BC0 (in ble_auth)
;;     23055BEC (in ble_security)
;;     23055C1E (in ble_security)
;;     23055C4A (in ble_select_conn)
;;     23055CC4 (in ble_disconnect)
;;     23055D26 (in ble_disconnect)
;;     23055D78 (in ble_connect)
;;     23055DC0 (in ble_connect)
;;     23055E08 (in ble_stop_advertise)
;;     23055E2E (in ble_get_device_name)
;;     23055E3E (in ble_get_device_name)
;;     23055E60 (in ble_start_advertise)
;;     23055E96 (in ble_start_advertise)
;;     23055EC0 (in ble_start_advertise)
;;     23055F2A (in ble_start_advertise)
;;     23055F3A (in ble_start_advertise)
;;     23055F66 (in ble_start_advertise)
;;     23055FF6 (in ble_set_adv_channel)
;;     23056042 (in ble_stop_scan)
;;     23056052 (in ble_stop_scan)
;;     2305606C (in ble_disable)
;;     2305608E (in discover_func)
;;     230560DC (in discover_func)
;;     23056102 (in discover_func)
;;     2305612A (in discover_func)
;;     2305613A (in discover_func)
;;     2305614C (in discover_func)
;;     2305615E (in discover_func)
;;     23056170 (in discover_func)
;;     23056182 (in discover_func)
;;     23056194 (in discover_func)
;;     230561A6 (in discover_func)
;;     230561B8 (in discover_func)
;;     230561CE (in discover_func)
;;     230561F8 (in discover_func)
;;     23056212 (in ble_set_data_len)
;;     23056262 (in ble_set_data_len)
;;     23056286 (in ble_subscribe)
;;     23056314 (in ble_subscribe)
;;     23056330 (in ble_write)
;;     23056410 (in ble_write)
;;     2305642C (in ble_read)
;;     230564B0 (in ble_read)
;;     230564DC (in read_func)
;;     23056530 (in read_func)
;;     2305654C (in read_func)
;;     230565A6 (in ble_discover)
;;     23056652 (in ble_discover)
;;     230566A6 (in ble_auth_passkey)
;;     2305670A (in ble_conn_update)
;;     23056758 (in ble_conn_update)
;;     23056780 (in ble_unpair)
;;     230567E2 (in ble_start_scan)
;;     23056830 (in ble_start_scan)
;;     23056878 (in ble_set_device_name)
;;     2305689C (in ble_set_device_name)
;;     230568C2 (in ble_init)
;;     230569CE (in device_found)
;;     230569FA (in ble_read_local_address)
;;     23056A16 (in ble_read_local_address)
;;     23056A42 (in connected)
;;     23056A56 (in connected)
;;     23056A8A (in disconnected)
;;     23056AC4 (in security_changed)
;;     23056AEA (in auth_passkey_display)
;;     23056B0E (in auth_passkey_entry)
;;     23056B34 (in auth_passkey_confirm)
;;     23056B56 (in auth_cancel)
;;     23056B78 (in auth_pairing_confirm)
;;     23056BA8 (in auth_pairing_complete)
;;     23056BD6 (in auth_pairing_failed)
;;     23056C04 (in identity_resolved)
;;     23056C3A (in ble_get_all_conn_info)
;;     23056C48 (in ble_get_all_conn_info)
;;     23056C7A (in ble_get_all_conn_info)
;;     23056C9A (in ble_write_without_rsp)
;;     23056D32 (in ble_write_without_rsp)
;;     23056D54 (in ble_tp_disconnected)
;;     23056D80 (in ble_tp_connected)
;;     23056DA6 (in ble_tp_connected)
;;     23056DDC (in ble_tp_connected)
;;     23056DEA (in ble_tp_connected)
;;     23056E00 (in ble_tp_connected)
;;     23056E4C (in ble_tp_ccc_cfg_changed)
;;     23056E62 (in ble_tp_ccc_cfg_changed)
;;     23056E9E (in ble_tp_tx_mtu_size)
;;     23057A6E (in find_type_cb)
;;     23057C80 (in att_send)
;;     23057D42 (in att_handle_rsp)
;;     23057EC6 (in bt_att_accept)
;;     2305805C (in att_timeout)
;;     230580E0 (in bt_att_encrypt_change)
;;     230581B8 (in att_chan_get)
;;     230581D2 (in att_chan_get)
;;     2305839C (in bt_att_create_pdu)
;;     230583DE (in bt_att_create_pdu)
;;     2305854A (in bt_att_recv)
;;     230585A8 (in bt_att_recv)
;;     230585D6 (in bt_att_recv)
;;     23058D2A (in att_signed_write_cmd)
;;     2305973A (in utilfdt_print_data)
;;     2305974E (in utilfdt_print_data)
;;     23059764 (in utilfdt_print_data)
;;     23059778 (in utilfdt_print_data)
;;     230597BA (in utilfdt_print_data)
;;     230597D8 (in utilfdt_print_data)
;;     230597F0 (in utilfdt_print_data)
;;     23059828 (in utilfdt_print_data)
;;     230598B6 (in tc_blfdtdump)
;;     23059922 (in tc_blfdtdump)
;;     23059936 (in tc_blfdtdump)
;;     23059946 (in tc_blfdtdump)
;;     23059954 (in tc_blfdtdump)
;;     23059962 (in tc_blfdtdump)
;;     23059970 (in tc_blfdtdump)
;;     2305997E (in tc_blfdtdump)
;;     23059992 (in tc_blfdtdump)
;;     230599AC (in tc_blfdtdump)
;;     230599C6 (in tc_blfdtdump)
;;     230599E0 (in tc_blfdtdump)
;;     230599EC (in tc_blfdtdump)
;;     23059A2A (in tc_blfdtdump)
;;     23059AA8 (in tc_blfdtdump)
;;     23059AE6 (in tc_blfdtdump)
;;     23059B34 (in tc_blfdtdump)
;;     23059B6C (in tc_blfdtdump)
;;     23059BA4 (in tc_blfdtdump)
;;     23059C04 (in tc_blfdtdump)
;;     23059C4E (in tc_blfdtdump)
;;     23059C5E (in tc_blfdtdump)
;;     23059C72 (in tc_blfdtdump)
;;     23059C8E (in tc_blfdtdump)
;;     2305A548 (in tc_fdt_wifi)
;;     2305ABB8 (in ota_tcp_cmd.part.0)
;;     2305AC0E (in ota_tcp_cmd.part.0)
;;     2305AC1C (in ota_tcp_cmd.part.0)
;;     2305AC32 (in ota_tcp_cmd.part.0)
;;     2305AC66 (in ota_tcp_cmd.part.0)
;;     2305AC78 (in ota_tcp_cmd.part.0)
;;     2305AC86 (in ota_tcp_cmd.part.0)
;;     2305AC98 (in ota_tcp_cmd.part.0)
;;     2305ACA6 (in ota_tcp_cmd.part.0)
;;     2305ACBE (in ota_tcp_cmd.part.0)
;;     2305AD20 (in ota_tcp_cmd.part.0)
;;     2305AD46 (in ota_tcp_cmd.part.0)
;;     2305AD58 (in ota_tcp_cmd.part.0)
;;     2305AD78 (in ota_tcp_cmd.part.0)
;;     2305ADF2 (in ota_tcp_cmd.part.0)
;;     2305AE7E (in ota_tcp_cmd.part.0)
;;     2305AEBC (in ota_tcp_cmd.part.0)
;;     2305AEE2 (in ota_tcp_cmd.part.0)
;;     2305AEF8 (in ota_tcp_cmd.part.0)
;;     2305AF42 (in ota_tcp_cmd.part.0)
;;     2305AF6A (in ota_tcp_cmd.part.0)
;;     2305AF90 (in ota_tcp_cmd.part.0)
;;     2305AF9E (in ota_tcp_cmd.part.0)
;;     2305AFAE (in ota_tcp_cmd.part.0)
;;     2305AFC0 (in ota_tcp_cmd.part.0)
;;     2305AFDC (in ota_tcp_cmd)
;;     2305B7CE (in __ble_bytes_send)
;;     2305B884 (in blsync_disconnected)
;;     2305B8A8 (in blsync_exchange_func)
;;     2305B98E (in blsync_connected)
;;     2305B9B8 (in blsync_connected)
;;     2305B9EC (in blsync_connected)
;;     2305B9FA (in blsync_connected)
;;     2305BA10 (in blsync_connected)
;;     2305DA5C (in cb_idnoe)
;;     2305DA68 (in cb_idnoe)
;;     2305DAB4 (in cb_idnoe)
;;     2305DB14 (in cat_cmd)
;;     2305DB44 (in cat_cmd)
;;     2305DB54 (in cat_cmd)
;;     2305DB6A (in cat_cmd)
;;     2305DB8E (in hexdump_cmd)
;;     2305DBAA (in hexdump_cmd)
;;     2305DBDA (in hexdump_cmd)
;;     2305DDEC (in proc_onecmd)
;;     2305DF3A (in ls_cmd)
;;     2305DF46 (in ls_cmd)
;;     2305DF92 (in ls_cmd)
;;     2305DFC4 (in ls_cmd)
;;     2305E000 (in ls_cmd)
;;     2305E00C (in ls_cmd)
;;     2305E0AE (in ls_cmd)
;;     2305E84E (in cli_main_input)
;;     2305E906 (in cli_main_input)
;;     2305E95E (in cli_main_input)
;;     2305EA2C (in cli_main_input)
;;     2305EAAA (in cli_main_input)
;;     2305EBBA (in cli_main_input)
;;     2305EEA6 (in console_cb_read)
;;     23060A8A (in ef_port_init)
;;     23060CCC (in psm_unset_cmd)
;;     23060CF0 (in psm_set_cmd)
;;     23065814 (in interrupt_entry)
;;     2306587C (in exception_entry)
;;     2306588E (in exception_entry)
;;     230698A4 (in bl_tsen_adc_get)
;;     2306A106 (in cmd_looprt_test)
;;     2306A114 (in cmd_looprt_test)
;;     2306A3F8 (in _led_bloop_evt)
;;     2306BA1A (in tcpip_inpkt)
;;     2306BA50 (in tcpip_inpkt)
;;     23070C72 (in tcp_init)
;;     230774C0 (in dhcp_server_stop)
;;     23077554 (in dhcpd_start)
;;     230775A4 (in dhcpd_start)
;;     230775C4 (in dhcpd_start)
;;     230776D0 (in iperf_server_udp)
;;     23077704 (in iperf_server_udp)
;;     23077718 (in iperf_server_udp)
;;     230778C6 (in iperf_server_udp_recv_fn)
;;     230779DE (in iperf_server_udp_recv_fn)
;;     23077AB4 (in iperf_client_udp)
;;     23077B06 (in iperf_client_udp)
;;     23077B1A (in iperf_client_udp)
;;     23077C32 (in iperf_client_udp)
;;     23077C84 (in iperf_client_udp)
;;     23077CDA (in iperf_server)
;;     23077D2A (in iperf_server)
;;     23077D6C (in iperf_server)
;;     23077DE0 (in iperf_server)
;;     23077ED6 (in iperf_server)
;;     23077FA8 (in iperf_client_tcp)
;;     23077FEA (in iperf_client_tcp)
;;     23077FFE (in iperf_client_tcp)
;;     230780E8 (in iperf_client_tcp)
;;     23078118 (in iperf_client_tcp)
;;     23078130 (in ipus_test_cmd)
;;     23078156 (in ipus_test_cmd)
;;     2307816C (in ipu_test_cmd)
;;     23078192 (in ipu_test_cmd)
;;     230781A8 (in ipc_test_cmd)
;;     230781CE (in ipc_test_cmd)
;;     2307820A (in ips_test_cmd)
;;     23078582 (in romfs_lseek)
;;     230785A4 (in romfs_lseek)
;;     230785BE (in romfs_lseek)
;;     230785DA (in romfs_lseek)
;;     23078E42 (in cmd_sntp_date)
;;     23078E82 (in cmd_sntp_date)
;;     23078EA8 (in cmd_sntp_time)
;;     23078F18 (in sntp_recv)
;;     23078F5A (in sntp_recv)
;;     23078F7E (in sntp_recv)
;;     23078FAE (in sntp_recv)
;;     23079012 (in sntp_recv)
;;     230791CE (in sntp_init)
;;     2307A4FA (in utils_hexdump)
;;     2307A50E (in utils_hexdump)
;;     2307A53E (in utils_hexdump)
;;     2307A81C (in utils_getopt)
;;     2307B878 (in aos_loop_init)
;;     2307B8DE (in aos_poll_read_fd)
;;     2307BA90 (in aos_loop_run)
;;     2307C310 (in at_serial_write)
;;     2307C33E (in at_serial_read)
;;     2307C35A (in at_cmd_exec)
;;     2307C454 (in at_serial_lock)
;;     2307C482 (in at_serial_unlock)
;;     2307C4BC (in at_data_output)
;;     2307C7B8 (in at_dump_noend)
;;     2307CA50 (in at_cmd_init)
;;     2307CAA6 (in at_server_init)
;;     2307CB6E (in at_server_init)
;;     2307CB98 (in at_server_init)
;;     2307CBD6 (in at_server_init)
;;     2307CC0C (in at_server_init)
;;     2307CC20 (in at_server_init)
;;     2307D116 (in cb_altcp_recv_fn)
;;     2307D12A (in cb_httpc_result)
;;     2307D30A (in cwjap_info)
;;     2307D45A (in scan)
;;     2307D488 (in scan)
;;     2307D4AA (in scan)
;;     2307D6E2 (in cb_httpc_headers_done_fn)
;;     2307D6EA (in cb_httpc_headers_done_fn)
;;     2307D7A6 (in __wifimode_set)
;;     2307D7F2 (in set_apcfg)
;;     2307D8BA (in cwjap_cur)
;;     2307D93E (in cwmode_cur)
;;     2307D98E (in uart_set)
;;     2307DB16 (in wifi_mode_handler)
;;     2307DC32 (in domain_name_resolution)
;;     2307DCA6 (in domain_name_resolution)
;;     2307DE62 (in deep_sleep_handler)
;;     2307DE88 (in setautoconnect_handler)
;;     2307DF1E (in setautoconnect_handler)
;;     2307E0D6 (in uart_config_handler)
;;     2307E16C (in uart_config_handler)
;;     2307E17A (in uart_config_handler)
;;     2307E188 (in uart_config_handler)
;;     2307E196 (in uart_config_handler)
;;     2307E1A4 (in uart_config_handler)
;;     2307E214 (in echo_on_handler)
;;     2307E2D6 (in disconnect_handler)
;;     2307E67C (in at_parse)
;;     2307E892 (in set_ip_handler)
;;     2307E996 (in ap_cfg_handler)
;;     2307EA02 (in join_ap_handler)
;;     2307EA7E (in join_ap_handler)
;;     2307EB78 (in at_response)
;;     2307EBBE (in at_version)
;;     2307EBFE (in at_restore)
;;     2307EC46 (in at_uart_config_get)
;;     2307ECD2 (in at_uart_config)
;;     2307ED3A (in at_deep_sleep_mode)
;;     2307ED8C (in at_wifi_mode)
;;     2307EDDA (in at_wifi_mode_get)
;;     2307EE6E (in at_join_ap)
;;     2307EF18 (in at_disconnect)
;;     2307EF6E (in at_set_ap)
;;     2307EFFA (in at_ap_sta_get)
;;     2307F052 (in at_http_request)
;;     2307F8E6 (in at_queue_get)
;;     2307F998 (in at_queue_peek)
;;     2307FA00 (in create_tcp_udp_handler)
;;     2307FAE6 (in create_tcp_udp_handler)
;;     2307FAF4 (in create_tcp_udp_handler)
;;     2307FB02 (in create_tcp_udp_handler)
;;     2307FB12 (in create_tcp_udp_handler)
;;     2307FB22 (in create_tcp_udp_handler)
;;     2307FB32 (in create_tcp_udp_handler)
;;     2307FB82 (in close_network_handler)
;;     2307FBE6 (in close_network_handler)
;;     2307FC16 (in send_data_handler)
;;     2307FC6E (in send_data_handler)
;;     2307FDC0 (in ap_server_handler)
;;     2307FF38 (in client_ssl_config_path)
;;     23080006 (in client_ssl_set_sni)
;;     230800EC (in client_ssl_set_alpn)
;;     23080176 (in client_ssl_set_alpn)
;;     23080188 (in client_ssl_set_alpn)
;;     230801B6 (in client_ssl_set_alpn)
;;     230802B8 (in tcp_sent_callback)
;;     23080318 (in tcp_sent_callback)
;;     23080524 (in tcp_receive_callback)
;;     23080836 (in udp_receive_callback)
;;     23080876 (in udp_receive_callback)
;;     230808FA (in tcp_accept_callback)
;;     23080C82 (in bl_cipstart)
;;     23080EB4 (in bl_cipstart)
;;     23081166 (in bl_cipsend)
;;     2308422C (in mfg_efuse_read_xtal_capcode)
;;     23084258 (in mfg_efuse_read_xtal_capcode)
;;     23084300 (in mfg_efuse_read_poweroffset)
;;     2308432C (in mfg_efuse_read_poweroffset)
;;     230844DA (in mfg_efuse_read_macaddr)
;;     23084506 (in mfg_efuse_read_macaddr)
;;     23084554 (in mfg_flash_read)
;;     2308458E (in mfg_flash_read)
;;     23084780 (in mfg_flash_read_macaddr)
;;     23084A22 (in bl_mtd_open)
;;     23084A30 (in bl_mtd_open)
;;     23084A54 (in bl_mtd_open)
;;     23084A62 (in bl_mtd_open)
;;     23084A8C (in bl_mtd_open)
;;     23084A9A (in bl_mtd_open)
;;     23084ABE (in bl_mtd_open)
;;     23084ACC (in bl_mtd_open)
;;     23084AF4 (in bl_mtd_open)
;;     23084B02 (in bl_mtd_open)
;;     23084B12 (in bl_mtd_open)
;;     23084B24 (in bl_mtd_open)
;;     23084B32 (in bl_mtd_open)
;;     23084CC8 (in bloop_init)
;;     23084E1C (in bloop_evt_set_async)
;;     23084E7A (in bloop_evt_set_sync)
;;     23084EB6 (in bloop_evt_unset_sync)
;;     23084F6A (in bloop_run)
;;     2308502C (in bloop_run)
;;     2308518E (in bloop_status_dump)
;;     2308519C (in bloop_status_dump)
;;     230851D8 (in bloop_status_dump)
;;     2308520E (in bloop_status_dump)
;;     2308522C (in bloop_status_dump)
;;     23085238 (in bloop_status_dump)
;;     23085242 (in bloop_status_dump)
;;     2308524E (in bloop_status_dump)
;;     23085264 (in bloop_status_dump)
;;     230852A8 (in bloop_status_dump)
;;     230852D6 (in loop_evt_entity_sys_handler)
;;     230852FE (in loop_evt_entity_sys_evt)
;;     2308533A (in loop_evt_entity_sys_evt)
;;     23085AF4 (in bl_hbn_enter)
;;     23085B04 (in bl_hbn_enter)
;;     23085B4E (in bl_hbn_enter)
;;     23085B82 (in bl_hbn_enter)
;;     23085BB0 (in bl_hbn_enter)
;;     23085BD4 (in bl_hbn_enter)
printf proc
	c.addi16sp	FFFFFFC0
	c.swsp	a5,00000098
	lui	a5,0004200F
	lbu	a5,a5,-00000348
	c.swsp	ra,0000008C
	c.swsp	a1,00000090
	c.swsp	a2,00000014
	c.swsp	a3,00000094
	c.swsp	a4,00000018
	c.swsp	a6,0000001C
	c.swsp	a7,0000009C
	andi	a5,a5,+000000FF
	c.beqz	a5,00000000230823B0

l230823A8:
	c.addi4spn	a1,00000024
	c.swsp	a1,00000084
	jal	ra,00000000230822F0

l230823B0:
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000040
	c.jr	ra

;; sprintf: 230823B8
;;   Called from:
;;     2305C93C (in print_number)
;;     2305C9AE (in print_number)
;;     2305CC0E (in print_string_ptr)
;;     2306373A (in vTaskList)
;;     2307758E (in dhcpd_start)
;;     230775B2 (in dhcpd_start)
;;     2307A302 (in log_buf_out)
;;     2307A370 (in log_buf_out)
;;     2307A3B0 (in log_buf_out)
;;     2307C546 (in at_key_value_set)
;;     2307C57A (in at_key_value_set)
;;     2307C5BE (in at_key_value_set)
;;     2307CDF0 (in cipsta_ip)
;;     2307CE34 (in cipsta_ip)
;;     2307CE74 (in cipsta_ip)
;;     2307CEB4 (in cipsta_ip)
;;     2307CEF4 (in cipsta_ip)
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
	jal	ra,0000000023081E12
	c.lwsp	t3,00000020
	c.addi16sp	00000040
	c.jr	ra

;; snprintf: 230823DA
;;   Called from:
;;     23027200 (in cmd_wifi_ap_start)
;;     2304960E (in bt_addr_le_str_real)
;;     23049650 (in bt_addr_le_str_real)
;;     230524A6 (in bt_uuid_to_str)
;;     23052528 (in bt_uuid_to_str)
;;     2305597C (in bt_settings_encode_key)
;;     23055996 (in bt_settings_encode_key)
;;     2305691E (in bt_addr_le_to_str.constprop.14)
;;     2305695A (in bt_addr_le_to_str.constprop.14)
;;     2305A928 (in blog_hexdump_out)
;;     2305A9F4 (in blog_hexdump_out)
;;     2305AA60 (in blog_hexdump_out)
;;     2305DF6E (in ls_cmd)
;;     2305E044 (in ls_cmd)
;;     2305E08A (in ls_cmd)
;;     230670F6 (in hal_gpio_init_from_dts)
;;     230779D0 (in iperf_server_udp_recv_fn)
;;     23077C28 (in iperf_client_udp)
;;     23077EC8 (in iperf_server)
;;     230780DE (in iperf_client_tcp)
;;     23086026 (in httpc_create_request_string.constprop.6)
;;     23086048 (in httpc_create_request_string.constprop.6)
;;     2308609E (in httpc_create_request_string.constprop.6)
;;     230860CA (in httpc_create_request_string.constprop.6)
;;     2308EE8E (in mbedtls_x509_crt_info)
;;     2308EEC8 (in mbedtls_x509_crt_info)
;;     2308EEE8 (in mbedtls_x509_crt_info)
;;     2308EF1E (in mbedtls_x509_crt_info)
;;     2308EF54 (in mbedtls_x509_crt_info)
;;     2308EFA6 (in mbedtls_x509_crt_info)
;;     2308EFE0 (in mbedtls_x509_crt_info)
;;     2308EFFE (in mbedtls_x509_crt_info)
;;     2308F066 (in mbedtls_x509_crt_info)
;;     2308F09C (in mbedtls_x509_crt_info)
;;     2308F0C2 (in mbedtls_x509_crt_info)
;;     2308F0EA (in mbedtls_x509_crt_info)
;;     2308F166 (in mbedtls_x509_crt_info)
;;     2308F198 (in mbedtls_x509_crt_info)
;;     2308F1C2 (in mbedtls_x509_crt_info)
;;     2308F1EC (in mbedtls_x509_crt_info)
;;     2308F216 (in mbedtls_x509_crt_info)
;;     2308F240 (in mbedtls_x509_crt_info)
;;     2308F26A (in mbedtls_x509_crt_info)
;;     2308F294 (in mbedtls_x509_crt_info)
;;     2308F2C0 (in mbedtls_x509_crt_info)
;;     2308F2E8 (in mbedtls_x509_crt_info)
;;     2308F316 (in mbedtls_x509_crt_info)
;;     2308F340 (in mbedtls_x509_crt_info)
;;     2308F36A (in mbedtls_x509_crt_info)
;;     2308F394 (in mbedtls_x509_crt_info)
;;     2308F3BE (in mbedtls_x509_crt_info)
;;     2308F3E8 (in mbedtls_x509_crt_info)
;;     2308F412 (in mbedtls_x509_crt_info)
;;     2308F43C (in mbedtls_x509_crt_info)
;;     2308F468 (in mbedtls_x509_crt_info)
;;     2308F492 (in mbedtls_x509_crt_info)
;;     2308F4DC (in mbedtls_x509_crt_info)
;;     2308F502 (in mbedtls_x509_crt_info)
;;     23093CBE (in mbedtls_debug_print_mpi.part.1)
;;     23093CF6 (in mbedtls_debug_print_mpi.part.1)
;;     23093D0E (in mbedtls_debug_print_mpi.part.1)
;;     23093DAA (in mbedtls_debug_print_mpi.part.1)
;;     23093DE0 (in mbedtls_debug_print_mpi.part.1)
;;     23093EDA (in mbedtls_debug_print_ret)
;;     23093F70 (in mbedtls_debug_print_buf)
;;     23093FD8 (in mbedtls_debug_print_buf)
;;     23094046 (in mbedtls_debug_print_buf)
;;     23094078 (in mbedtls_debug_print_buf)
;;     23094098 (in mbedtls_debug_print_buf)
;;     230940C4 (in mbedtls_debug_print_buf)
;;     2309412E (in mbedtls_debug_print_ecp.part.2)
;;     23094152 (in mbedtls_debug_print_ecp.part.2)
;;     23094218 (in mbedtls_debug_print_crt)
;;     23094320 (in mbedtls_debug_print_crt)
;;     2309D1F0 (in mbedtls_x509_dn_gets)
;;     2309D24A (in mbedtls_x509_dn_gets)
;;     2309D282 (in mbedtls_x509_dn_gets)
;;     2309D2A0 (in mbedtls_x509_dn_gets)
;;     2309D33C (in mbedtls_x509_serial_gets)
;;     2309D378 (in mbedtls_x509_serial_gets)
;;     2309D3D2 (in mbedtls_x509_sig_alg_gets)
;;     2309D3FC (in mbedtls_x509_sig_alg_gets)
;;     2309D414 (in mbedtls_x509_key_size_helper)
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
	jal	ra,0000000023081E12
	c.lwsp	t3,00000020
	c.addi16sp	00000040
	c.jr	ra

;; sscanf: 230823F6
;;   Called from:
;;     2307F6DA (in get_hi_para)
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
	c.jal	0000000023082428
	c.lwsp	t3,00000020
	c.addi16sp	00000040
	c.jr	ra

;; set_bit: 23082412
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

;; vsscanf: 23082428
;;   Called from:
;;     2308240A (in sscanf)
vsscanf proc
	c.addi16sp	FFFFFF70
	lui	a5,000230C6
	c.swsp	s6,00000038
	addi	a5,a5,+00000140
	lui	s6,000230CB
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
	addi	s6,s6,+000005B1

l2308246E:
	lbu	s1,a1,+00000000
	addi	s7,a1,+00000001
	c.beqz	s1,000000002308247C

l23082478:
	beq	s11,zero,00000000230824A8

l2308247C:
	c.li	a4,00000001
	bne	s11,a4,0000000023082488

l23082482:
	bne	s10,zero,0000000023082488

l23082486:
	c.li	s10,FFFFFFFF

l23082488:
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

l230824A8:
	c.li	a3,00000006
	bltu	a3,s0,00000000230824DE

l230824AE:
	c.lwsp	s8,000000E4
	slli	a3,s0,00000002
	c.add	a3,a5
	c.lw	a3,0(a3)
	c.jr	a3
230824BA                               93 07 50 02 63 83           ..P.c.
230824C0 F4 3A B3 87 64 01 03 C4 07 00 21 88 09 CC 83 C7 .:..d.....!.....
230824D0 09 00 DA 97 03 C4 07 00 21 88 01 E4 81 4D       ........!....M 

l230824DE:
	c.mv	a1,s7
	c.j	000000002308246E
230824E2       85 09 ED B7 83 C6 09 00 89 4D E3 99 96 FE   .........M....
230824F0 85 09 ED B7 93 06 A0 02 63 8E D4 00 63 E9 D4 00 ........c...c...
23082500 93 84 04 FD 13 F6 F4 0F A5 46 63 F8 C6 00 AE 8B .........Fc.....
23082510 0D 44 F1 B7 13 6C 1C 00 D9 B7 26 8A 13 6C 4C 00 .D...l....&..lL.
23082520 09 44 75 BF 93 86 04 FD 93 F6 F6 0F 25 46 E3 60 .Du.........%F.`
23082530 D6 FE A9 46 33 0A DA 02 13 0A 0A FD 26 9A 45 B7 ...F3.......&.E.
23082540 93 06 C0 06 63 8F D4 02 63 E0 96 02 93 06 80 06 ....c...c.......
23082550 63 87 D4 02 93 06 A0 06 63 86 D4 00 93 06 C0 04 c.......c.......
23082560 63 93 D4 02 09 49 A5 BF 93 06 40 07 63 82 D4 30 c....I....@.c..0
23082570 93 06 A0 07 63 8E D4 2E 93 06 10 07 D5 B7 7D 19 ....c.........}.
23082580 B9 BF 05 09 A9 BF 89 46 63 D3 26 01 09 49 F9 56 .......Fc.&..I.V
23082590 63 53 D9 00 79 59 93 06 90 06 63 81 D4 14 63 EF cS..yY....c...c.
230825A0 96 04 93 06 80 05 63 85 D4 14 63 ED 96 00 93 06 ......c...c.....
230825B0 50 02 63 80 D4 20 93 06 00 05 63 83 D4 12 01 44 P.c.. ....c....D
230825C0 89 4D 31 BF 93 06 30 06 63 88 D4 16 93 06 40 06 .M1...0.c.....@.
230825D0 63 8E D4 10 93 06 B0 05 E3 93 D4 FE 93 76 1C 00 c............v..
230825E0 81 4C 81 E6 83 AC 0A 00 91 0A 13 06 00 02 81 45 .L.............E
230825F0 08 18 EF 10 62 47 11 44 02 C6 D5 B5 93 06 00 07 ....bG.D........
23082600 63 80 D4 0E 63 E2 96 04 93 06 E0 06 63 8F D4 08 c...c.......c...
23082610 93 06 F0 06 21 46 E3 94 D4 FA 03 C4 09 00 B3 06 ....!F..........
23082620 64 01 83 C6 06 00 A1 8A F1 E6 63 08 04 20 D2 86 d.........c.. ..
23082630 6C 10 4E 85 91 2C 32 56 E3 03 36 F9 93 76 1C 00 l.N..,2V..6..v..
23082640 B2 89 AD EA 05 0D BD A0 93 06 50 07 63 80 D4 0A ..........P.c...
23082650 93 06 80 07 63 8E D4 08 93 06 30 07 E3 91 D4 F6 ....c.....0.....
23082660 93 76 1C 00 7D 1A FD 55 63 92 06 12 83 AC 0A 00 .v..}..Uc.......
23082670 93 85 4A 00 85 47 E6 86 7D 53 63 0E 6A 00 83 C7 ..J..G..}Sc.j...
23082680 09 00 91 CB 33 86 67 01 03 46 06 00 13 05 FA FF ....3.g..F......
23082690 21 8A 63 0A 06 10 63 85 96 01 23 80 06 00 05 0D !.c...c...#.....
230826A0 AE 8A 01 44 93 BD 17 00 1D BD D2 47 33 85 F9 40 ...D.......G3..@
230826B0 93 55 F5 41 93 76 1C 00 01 44 E3 92 06 E2 63 02 .U.A.v...D....c.
230826C0 09 06 63 4B 20 03 F9 56 63 07 D9 04 FD 56 E3 18 ..cK ..Vc....V..
230826D0 D9 E0 83 A6 0A 00 23 90 A6 00 91 A0 01 46 35 BF ......#......F5.
230826E0 37 09 00 80 01 46 13 49 F9 FF 05 BF 29 46 35 B7 7....F.I....)F5.
230826F0 41 46 25 B7 85 09 15 B7 89 46 63 0A D9 02 63 48 AF%......Fc...cH
23082700 D9 00 B7 06 00 80 93 C6 F6 FF E3 1A D9 DC 83 A6 ................
23082710 0A 00 88 C2 29 A0 83 A6 0A 00 23 80 A6 00 91 0A ....).....#.....
23082720 7D BB 83 A6 0A 00 91 0A 88 C2 01 44 4D BB 83 A6 }..........DM...
23082730 0A 00 88 C2 CC C2 E5 B7 93 76 4C 00 91 E2 05 4A .........vL....J
23082740 93 76 1C 00 7D 1A 99 CA FD 56 E3 00 DA FE 03 C4 .v..}....V......
23082750 09 00 13 06 FA FF 75 C0 32 8A C5 BF 83 AC 0A 00 ......u.2.......
23082760 93 86 4A 00 7D 56 63 15 CA 00 05 0D B6 8A 75 BF ..J.}Vc.......u.
23082770 03 C4 09 00 93 05 FA FF 63 0E 04 0E 85 0C 85 09 ........c.......
23082780 A3 8F 8C FE 2E 8A C5 B7 85 09 32 8A E3 0F BA F8 ..........2.....
23082790 03 C4 09 00 5D C0 5A 94 83 46 04 00 13 06 FA FF ....].Z..F......
230827A0 A1 8A FD D2 59 B7 85 06 A3 8F F6 FE 85 09 2A 8A ....Y.........*.
230827B0 E9 B5 83 C6 09 00 E3 94 96 E0 85 09 BD B7 93 06 ................
230827C0 E0 05 63 8B D4 0A A6 85 08 18 EF F0 9F C4 15 44 ..c............D
230827D0 39 B3 93 06 D0 05 63 84 D4 02 93 06 D0 02 63 80 9.....c.......c.
230827E0 D4 0A A6 85 08 18 EF F0 DF C2 D5 B9 13 06 D0 05 ................
230827F0 C2 46 63 9D C4 04 D2 56 09 66 D1 8E 36 DA 4E D6 .Fc....V.f..6.N.
23082800 85 46 63 02 0A 02 83 C6 09 00 91 CE 13 D6 56 00 .Fc...........V.
23082810 9C 08 0A 06 3E 96 03 26 06 FE B2 47 33 56 D6 00 ....>..&...G3V..
23082820 05 8A 63 98 C7 02 32 56 63 0C 36 03 63 8A 0C 02 ..c...2Vc.6.c...
23082830 23 80 0C 00 05 0D E3 94 06 CA 85 4D 4D B1 B6 85 #..........MM...
23082840 08 18 36 CE EF F0 FF BC F2 46 85 06 E3 C9 96 FE ..6......F......
23082850 BD BF 63 85 0C 00 23 80 DC 00 85 0C 85 09 55 B7 ..c...#.......U.
23082860 89 4D D1 BF A2 8D 01 4C 05 44 7D 5A 01 49 85 B9 .M.....L.D}Z.I..
23082870 05 49 B5 B1 B6 8A D1 B7 85 47 3E C6 8D B1 93 07 .I.......G>.....
23082880 D0 02 3E C8 19 44 A1 B9                         ..>..D..       

;; strntoumax: 23082888
strntoumax proc
	lui	a6,000230CB
	c.mv	a5,a0
	addi	a6,a6,+000005B1

l23082892:
	beq	a3,zero,00000000230829C8

l23082896:
	lbu	a4,a5,+00000000
	add	a0,a4,a6
	lbu	a0,a0,+00000000
	c.andi	a0,00000008
	c.bnez	a0,00000000230828FA

l230828A6:
	addi	a0,a4,-0000002B
	andi	a0,a0,+000000FD
	c.li	t3,00000000
	c.bnez	a0,00000000230828BE

l230828B2:
	addi	a4,a4,-0000002D
	sltiu	t3,a4,+00000001
	c.addi	a5,00000001
	c.addi	a3,FFFFFFFF

l230828BE:
	c.bnez	a2,000000002308291A

l230828C0:
	c.li	a4,00000001
	bgeu	a4,a3,0000000023082900

l230828C6:
	lbu	a0,a5,+00000000
	addi	a4,zero,+00000030
	c.li	a2,0000000A
	bne	a0,a4,00000000230828EA

l230828D4:
	lbu	a2,a5,+00000001
	addi	a4,zero,+00000058
	andi	a2,a2,+000000DF
	bne	a2,a4,0000000023082912

l230828E4:
	c.addi	a3,FFFFFFFE
	c.addi	a5,00000002
	c.li	a2,00000010

l230828EA:
	c.add	a3,a5
	c.li	a0,00000000
	c.li	a4,00000000
	c.li	t4,00000009
	c.li	t1,00000019
	srai	t5,a2,0000001F
	c.j	000000002308296E

l230828FA:
	c.addi	a5,00000001
	c.addi	a3,FFFFFFFF
	c.j	0000000023082892

l23082900:
	c.li	a0,00000000
	c.li	a4,00000000
	c.beqz	a3,0000000023082992

l23082906:
	lbu	a2,a5,+00000000
	addi	a4,zero,+00000030
	bne	a2,a4,00000000230829AA

l23082912:
	c.addi	a3,FFFFFFFF
	c.addi	a5,00000001
	c.li	a2,00000008
	c.j	00000000230828EA

l2308291A:
	c.li	a4,00000010
	bne	a2,a4,00000000230828EA

l23082920:
	c.li	a4,00000001
	bgeu	a4,a3,00000000230828EA

l23082926:
	lbu	a0,a5,+00000000
	addi	a4,zero,+00000030
	bne	a0,a4,00000000230828EA

l23082932:
	lbu	a0,a5,+00000001
	addi	a4,zero,+00000058
	andi	a0,a0,+000000DF
	bne	a0,a4,00000000230828EA

l23082942:
	c.addi	a3,FFFFFFFE
	c.addi	a5,00000002
	c.j	00000000230828EA

l23082948:
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

l2308296E:
	beq	a5,a3,0000000023082992

l23082972:
	lbu	a7,a5,+00000000
	addi	a6,a7,-00000030
	bgeu	t4,a6,000000002308298A

l2308297E:
	addi	a6,a7,-00000041
	bltu	t1,a6,00000000230829B0

l23082986:
	addi	a6,a7,-00000037

l2308298A:
	blt	a6,zero,0000000023082992

l2308298E:
	blt	a6,a2,0000000023082948

l23082992:
	c.bnez	a1,00000000230829C4

l23082994:
	beq	t3,zero,00000000230829A6

l23082998:
	sub	a0,zero,a0
	sltu	a5,zero,a0
	sub	a4,zero,a4
	c.sub	a4,a5

l230829A6:
	c.mv	a1,a4
	c.jr	ra

l230829AA:
	c.li	a3,00000001
	c.li	a2,0000000A
	c.j	00000000230828EA

l230829B0:
	addi	a6,a7,-00000061
	bltu	t1,a6,0000000023082992

l230829B8:
	addi	a6,a7,-00000057
	c.j	000000002308298A

l230829BE:
	c.mv	t3,a3
	c.li	a0,00000000
	c.li	a4,00000000

l230829C4:
	c.sw	a1,0(a5)
	c.j	0000000023082994

l230829C8:
	c.li	t3,00000000
	c.bnez	a2,00000000230828EA

l230829CC:
	c.bnez	a1,00000000230829BE

l230829CE:
	c.li	a0,00000000
	c.li	a4,00000000
	c.j	00000000230829A6

;; UART_Init: 230829D4
;;   Called from:
;;     23064CCC (in bl_uart_init)
;;     23064E50 (in bl_uart_setconfig)
;;     2307C3F8 (in at_serial_cfg_set)
UART_Init proc
	lui	a5,000230CC
	c.slli	a0,02
	addi	a5,a5,-00000500
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
	bgeu	a3,a4,0000000023082A00

l230829FE:
	c.addi	a5,00000001

l23082A00:
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
	beq	a3,a0,0000000023082AA2

l23082A1C:
	c.beqz	a3,0000000023082A9C

l23082A1E:
	c.li	a0,00000002
	beq	a3,a0,0000000023082AAC

l23082A24:
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
	bne	a6,a0,0000000023082A5A

l23082A56:
	ori	a3,a4,+00000002

l23082A5A:
	lbu	a0,a1,+0000000C
	c.li	a4,00000001
	bne	a0,a4,0000000023082ABE

l23082A64:
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	c.or	a5,a4

l23082A6C:
	lbu	a6,a1,+0000000D
	c.li	a0,00000001
	andi	a4,a5,-00000003
	bne	a6,a0,0000000023082A7E

l23082A7A:
	ori	a4,a5,+00000002

l23082A7E:
	c.sw	a2,0(a3)
	c.sw	a2,4(a4)
	c.lw	a2,12(a4)
	lbu	a1,a1,+0000000E
	c.li	a3,00000001
	andi	a5,a4,-00000002
	bne	a1,a3,0000000023082A96

l23082A92:
	ori	a5,a4,+00000001

l23082A96:
	c.sw	a2,12(a5)
	c.li	a0,00000000
	c.jr	ra

l23082A9C:
	c.andi	a4,FFFFFFEF
	c.andi	a5,FFFFFFEF
	c.j	0000000023082A24

l23082AA2:
	ori	a4,a4,+00000030
	ori	a5,a5,+00000030
	c.j	0000000023082A24

l23082AAC:
	andi	a4,a4,-00000021
	andi	a5,a5,-00000021
	ori	a4,a4,+00000010
	ori	a5,a5,+00000010
	c.j	0000000023082A24

l23082ABE:
	c.lui	a4,FFFFF000
	addi	a4,a4,+000007FF
	c.and	a5,a4
	c.j	0000000023082A6C

;; UART_FifoConfig: 23082AC8
;;   Called from:
;;     23064CDC (in bl_uart_init)
UART_FifoConfig proc
	lui	a5,000230CC
	c.slli	a0,02
	addi	a5,a5,-00000500
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
	bne	a0,a2,0000000023082B18

l23082B14:
	ori	a5,a4,+00000001

l23082B18:
	lbu	a1,a1,+00000003
	c.li	a2,00000001
	andi	a4,a5,-00000003
	bne	a1,a2,0000000023082B2A

l23082B26:
	ori	a4,a5,+00000002

l23082B2A:
	sw	a4,a3,+00000080
	c.li	a0,00000000
	c.jr	ra

;; UART_Enable: 23082B32
;;   Called from:
;;     23064CE4 (in bl_uart_init)
;;     23064E60 (in bl_uart_setconfig)
;;     2307C408 (in at_serial_cfg_set)
UART_Enable proc
	lui	a5,000230CC
	c.slli	a0,02
	addi	a5,a5,-00000500
	c.add	a5,a0
	andi	a4,a1,+000000FD
	c.lw	a5,0(a5)
	c.bnez	a4,0000000023082B4E

l23082B46:
	c.lw	a5,0(a4)
	ori	a4,a4,+00000001
	c.sw	a5,0(a4)

l23082B4E:
	c.addi	a1,FFFFFFFF
	andi	a1,a1,+000000FF
	c.li	a4,00000001
	bltu	a4,a1,0000000023082B62

l23082B5A:
	c.lw	a5,4(a4)
	ori	a4,a4,+00000001
	c.sw	a5,4(a4)

l23082B62:
	c.li	a0,00000000
	c.jr	ra

;; UART_Disable: 23082B66
;;   Called from:
;;     23064CC4 (in bl_uart_init)
;;     23064E48 (in bl_uart_setconfig)
;;     2307C3F0 (in at_serial_cfg_set)
UART_Disable proc
	lui	a5,000230CC
	c.slli	a0,02
	addi	a5,a5,-00000500
	c.add	a5,a0
	andi	a4,a1,+000000FD
	c.lw	a5,0(a5)
	c.bnez	a4,0000000023082B80

l23082B7A:
	c.lw	a5,0(a4)
	c.andi	a4,FFFFFFFE
	c.sw	a5,0(a4)

l23082B80:
	c.addi	a1,FFFFFFFF
	andi	a1,a1,+000000FF
	c.li	a4,00000001
	bltu	a4,a1,0000000023082B92

l23082B8C:
	c.lw	a5,4(a4)
	c.andi	a4,FFFFFFFE
	c.sw	a5,4(a4)

l23082B92:
	c.li	a0,00000000
	c.jr	ra

;; UART_SetRxTimeoutValue: 23082B96
;;   Called from:
;;     23064D70 (in bl_uart_int_rx_enable)
UART_SetRxTimeoutValue proc
	lui	a5,000230CC
	c.slli	a0,02
	addi	a5,a5,-00000500
	c.add	a5,a0
	c.lw	a5,0(a4)
	c.addi	a1,FFFFFFFF
	c.li	a0,00000000
	c.lw	a4,24(a5)
	andi	a5,a5,-00000100
	c.or	a1,a5
	c.sw	a4,24(a1)
	c.jr	ra

;; UART_TxFreeRun: 23082BB4
;;   Called from:
;;     23064CD4 (in bl_uart_init)
;;     23064E58 (in bl_uart_setconfig)
;;     2307C400 (in at_serial_cfg_set)
UART_TxFreeRun proc
	lui	a5,000230CC
	c.slli	a0,02
	addi	a5,a5,-00000500
	c.add	a5,a0
	c.lw	a5,0(a4)
	c.li	a3,00000001
	c.lw	a4,0(a5)
	bne	a1,a3,0000000023082BD4

l23082BCA:
	ori	a5,a5,+00000004

l23082BCE:
	c.sw	a4,0(a5)
	c.li	a0,00000000
	c.jr	ra

l23082BD4:
	c.andi	a5,FFFFFFFB
	c.j	0000000023082BCE

;; UART_IntMask: 23082BD8
;;   Called from:
;;     23064CBC (in bl_uart_init)
;;     23064D7A (in bl_uart_int_rx_enable)
;;     23064D84 (in bl_uart_int_rx_enable)
;;     23064D8E (in bl_uart_int_rx_enable)
;;     23064DA8 (in bl_uart_int_rx_disable)
;;     23064DB2 (in bl_uart_int_rx_disable)
;;     23064DBC (in bl_uart_int_rx_disable)
;;     23064DD2 (in bl_uart_int_tx_enable)
;;     23064DE6 (in bl_uart_int_tx_disable)
UART_IntMask proc
	lui	a5,000230CC
	c.slli	a0,02
	addi	a5,a5,-00000500
	c.add	a5,a0
	c.lw	a5,0(a4)
	c.li	a3,00000008
	c.lw	a4,36(a5)
	bne	a1,a3,0000000023082C00

l23082BEE:
	c.li	a3,00000001
	c.li	a1,00000000
	bne	a2,a3,0000000023082BFA

l23082BF6:
	ori	a1,a5,+000000FF

l23082BFA:
	c.sw	a4,36(a1)
	c.li	a0,00000000
	c.jr	ra

l23082C00:
	c.li	a3,00000001
	sll	a1,a3,a1
	bne	a2,a3,0000000023082C0E

l23082C0A:
	c.or	a1,a5
	c.j	0000000023082BFA

l23082C0E:
	xori	a1,a1,-00000001
	c.and	a1,a5
	c.j	0000000023082BFA

;; UART_GetTxFifoCount: 23082C16
;;   Called from:
;;     23064D1E (in bl_uart_data_send)
;;     23064E02 (in bl_uart_flush)
;;     23082C7A (in UART_SendData)
UART_GetTxFifoCount proc
	lui	a5,000230CC
	c.slli	a0,02
	addi	a5,a5,-00000500
	c.add	a5,a0
	c.lw	a5,0(a5)
	lw	a0,a5,+00000084
	andi	a0,a0,+0000003F
	c.jr	ra

;; UART_SendData: 23082C2E
;;   Called from:
;;     230840DA (in bflb_platform_usart_dbg_send)
UART_SendData proc
	lui	a5,000230CC
	slli	a4,a0,00000002
	addi	a5,a5,-00000500
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

l23082C5E:
	bltu	s1,a2,0000000023082C74

l23082C62:
	c.li	a0,00000000

l23082C64:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23082C74:
	c.mv	a0,s2
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	jal	ra,0000000023082C16
	c.lwsp	s0,00000064
	c.lwsp	a2,00000084
	c.beqz	a0,0000000023082C98

l23082C84:
	add	a5,a1,s1
	lbu	a5,a5,+00000000
	c.addi	s1,00000001
	addi	s0,s4,+00000100
	sb	a5,s3,+00000088
	c.j	0000000023082C5E

l23082C98:
	c.addi	s0,FFFFFFFF
	c.bnez	s0,0000000023082C5E

l23082C9C:
	c.li	a0,00000002
	c.j	0000000023082C64

;; UART_GetRxFifoCount: 23082CA0
;;   Called from:
;;     23064D4C (in bl_uart_data_recv)
UART_GetRxFifoCount proc
	lui	a5,000230CC
	c.slli	a0,02
	addi	a5,a5,-00000500
	c.add	a5,a0
	c.lw	a5,0(a5)
	lw	a0,a5,+00000084
	c.srli	a0,00000008
	andi	a0,a0,+0000003F
	c.jr	ra

;; ADC_Reset: 23082CBA
;;   Called from:
;;     23069822 (in bl_tsen_adc_get)
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

;; ADC_Enable: 23082CE2
;;   Called from:
;;     2306981E (in bl_tsen_adc_get)
ADC_Enable proc
	lui	a4,00040010
	lw	a5,a4,-000006F4
	ori	a5,a5,+00000001
	sw	a5,a4,+0000090C
	c.jr	ra

;; ADC_Disable: 23082CF4
;;   Called from:
;;     2306981A (in bl_tsen_adc_get)
ADC_Disable proc
	lui	a4,00040010
	lw	a5,a4,-000006F4
	c.andi	a5,FFFFFFFE
	sw	a5,a4,+0000090C
	c.jr	ra

;; ADC_Channel_Config: 23082D04
;;   Called from:
;;     23069832 (in bl_tsen_adc_get)
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

;; ADC_Start: 23082D3C
;;   Called from:
;;     23083114 (in TSEN_Get_V_Error)
;;     23083158 (in TSEN_Get_V_Error)
;;     230831B8 (in TSEN_Get_Temp)
;;     23083202 (in TSEN_Get_Temp)
ADC_Start proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	s0,00040010
	lw	a5,s0,-000006F4
	addi	a0,zero,+00000064
	c.andi	a5,FFFFFFFD
	sw	a5,s0,+0000090C
	auipc	ra,0001EF89
	jalr	ra,ra,+000007B2
	lw	a5,s0,-000006F4
	ori	a5,a5,+00000002
	sw	a5,s0,+0000090C
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ADC_FIFO_Cfg: 23082D70
;;   Called from:
;;     2306983E (in bl_tsen_adc_get)
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

;; ADC_Get_FIFO_Count: 23082D9A
;;   Called from:
;;     23083118 (in TSEN_Get_V_Error)
;;     2308315C (in TSEN_Get_V_Error)
;;     230831BC (in TSEN_Get_Temp)
;;     23083206 (in TSEN_Get_Temp)
ADC_Get_FIFO_Count proc
	lui	a5,00040002
	c.lw	a5,0(a0)
	c.srli	a0,00000010
	andi	a0,a0,+0000003F
	c.jr	ra

;; ADC_Parse_Result: 23082DA8
;;   Called from:
;;     2308313C (in TSEN_Get_V_Error)
;;     23083178 (in TSEN_Get_V_Error)
;;     230831E2 (in TSEN_Get_Temp)
;;     23083222 (in TSEN_Get_Temp)
ADC_Parse_Result proc
	c.addi16sp	FFFFFF90
	lui	a3,0004200F
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
	addi	a3,a3,-0000032C
	lbu	a5,a3,+00000000
	beq	a5,zero,0000000023082EE6

l23082DD8:
	c.flw	fa3,4(s1)

l23082DDA:
	lui	a5,00040010
	lw	s0,a5,-000006F0
	lw	a3,a5,-000006EC
	c.srli	s0,00000002
	srli	s2,a3,00000002
	c.andi	a3,00000008
	c.andi	s0,00000007
	andi	s2,s2,+00000001
	bne	a3,zero,0000000023082EF0

l23082DF8:
	lui	a5,000230C6
	flw	fs0,352(a5)

l23082E00:
	c.slli	a1,02
	beq	s2,zero,0000000023082EFA

l23082E06:
	add	a5,a0,a1
	addi	a3,s0,-00000002
	c.swsp	a5,00000004
	andi	a5,a3,+000000FD
	lui	a3,000230C6
	lw	a6,a3,+00000194
	c.swsp	a5,00000084
	lw	a5,a3,+00000190
	lui	a3,000230C6
	lw	s10,a3,+00000188
	lw	s11,a3,+0000018C
	lui	a3,000230C6
	c.swsp	a5,00000008
	c.swsp	a6,00000088
	lw	a5,a3,+00000180
	lw	a6,a3,+00000184
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

l23082E52:
	c.lwsp	s0,000000E4
	beq	s6,a5,0000000023082F48

l23082E58:
	lw	a3,s6,+00000000
	c.li	s4,00000000
	c.srli	a3,00000015
	sb	a3,s7,+00000000
	lhu	a3,s6,+00000002
	c.andi	a3,0000001F
	sb	a3,s7,+00000001
	lw	a3,s6,+00000000
	slli	a5,a3,00000010
	bge	a5,zero,0000000023082E84

l23082E7A:
	sub	a3,zero,a3
	sw	a3,s6,+00000000
	c.mv	s4,s2

l23082E84:
	bne	s0,zero,000000002308301C

l23082E88:
	lw	a0,s6,+00000000
	c.srli	a0,00000004
	and	a0,a0,s3
	fcvt.s.w	fa5,a0
	fdiv.s	fa5,fa5,fs1
	fcvt.wu.s	a0,fa5
	sh	a0,s7,+00000002
	c.and	a0,s1
	jal	ra,00000000230A307C
	c.lwsp	s8,00000084
	c.lwsp	t3,000000A4

l23082EAC:
	jal	ra,00000000230A1B50
	fmv.s	fa0,fs0,fs0
	c.mv	s8,a0
	c.mv	s9,a1
	jal	ra,00000000230A31AC
	c.mv	a2,a0
	c.mv	a3,a1
	c.mv	a0,s8
	c.mv	a1,s9
	jal	ra,00000000230A1B50
	jal	ra,00000000230A32BC
	fsw	fa0,16(a5)

l23082ED0:
	beq	s4,zero,0000000023082EE0

l23082ED4:
	flw	fa5,4(s7)
	fneg.s	fa5,fa5,fa5
	fsw	fa5,16(a5)

l23082EE0:
	c.addi	s7,00000008
	c.addi	s6,00000004
	c.j	0000000023082E52

l23082EE6:
	lui	a5,000230C6
	flw	fs1,348(a5)
	c.j	0000000023082DDA

l23082EF0:
	lui	a5,000230AA
	flw	fs0,912(a5)
	c.j	0000000023082E00

l23082EFA:
	add	a5,a0,a1
	addi	a3,s0,-00000002
	c.swsp	a5,00000004
	andi	a5,a3,+000000FD
	lui	a3,000230C6
	lw	s10,a3,+00000178
	lw	s11,a3,+0000017C
	lui	a3,000230C6
	lw	a6,a3,+00000174
	c.swsp	a5,00000084
	lw	a5,a3,+00000170
	lui	a3,000230C6
	lw	s6,a3,+00000168
	lw	s7,a3,+0000016C
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

l23082F42:
	c.lwsp	s0,000000E4
	bne	a5,s4,0000000023082F6A

l23082F48:
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

l23082F6A:
	lw	a3,s4,+00000000
	c.li	a5,FFFFFFFF
	sb	a5,s5,+00000001
	c.srli	a3,00000015
	sb	a3,s5,+00000000
	c.bnez	s0,0000000023082FCA

l23082F7C:
	lw	a0,s4,+00000000
	c.srli	a0,00000004
	and	a0,a0,s3
	fcvt.s.w	fa5,a0
	fdiv.s	fa5,fa5,fs1
	fcvt.wu.s	a0,fa5
	sh	a0,s5,+00000002
	c.and	a0,s1
	jal	ra,00000000230A307C
	c.mv	a2,s6
	c.mv	a3,s7

l23082FA0:
	jal	ra,00000000230A1B50
	fmv.s	fa0,fs0,fs0
	c.mv	s8,a0
	c.mv	s9,a1
	jal	ra,00000000230A31AC
	c.mv	a2,a0
	c.mv	a3,a1
	c.mv	a0,s8
	c.mv	a1,s9
	jal	ra,00000000230A1B50
	jal	ra,00000000230A32BC
	fsw	fa0,16(a3)

l23082FC4:
	c.addi	s4,00000004
	c.addi	s5,00000008
	c.j	0000000023082F42

l23082FCA:
	c.li	a5,00000001
	bne	s0,a5,0000000023082FF6

l23082FD0:
	lw	a3,s4,+00000000
	c.srli	a3,00000002
	and	a3,a3,s2
	fcvt.s.w	fa5,a3
	fdiv.s	fa5,fa5,fs1
	fcvt.wu.s	a0,fa5
	sh	a0,s5,+00000002
	c.and	a0,s1
	jal	ra,00000000230A307C
	c.lwsp	a6,00000084
	c.lwsp	s4,000000A4
	c.j	0000000023082FA0

l23082FF6:
	c.lwsp	a2,000000E4
	c.bnez	a5,0000000023082FC4

l23082FFA:
	lw	a0,s4,+00000000
	c.and	a0,s1
	fcvt.s.w	fa5,a0
	fdiv.s	fa5,fa5,fs1
	fcvt.wu.s	a0,fa5
	sh	a0,s5,+00000002
	c.and	a0,s1
	jal	ra,00000000230A307C
	c.mv	a2,s10
	c.mv	a3,s11
	c.j	0000000023082FA0

l2308301C:
	c.li	a5,00000001
	bne	s0,a5,0000000023083048

l23083022:
	lw	a0,s6,+00000000
	c.srli	a0,00000002
	and	a0,a0,s5
	fcvt.s.w	fa5,a0
	fdiv.s	fa5,fa5,fs1
	fcvt.wu.s	a0,fa5
	sh	a0,s7,+00000002
	c.and	a0,s1
	jal	ra,00000000230A307C
	c.mv	a2,s10
	c.mv	a3,s11
	c.j	0000000023082EAC

l23083048:
	c.lwsp	a2,000000E4
	bne	a5,zero,0000000023082ED0

l2308304E:
	lw	a0,s6,+00000000
	c.and	a0,s1
	fcvt.s.w	fa5,a0
	fdiv.s	fa5,fa5,fs1
	fcvt.wu.s	a0,fa5
	sh	a0,s7,+00000002
	c.and	a0,s1
	jal	ra,00000000230A307C
	c.lwsp	a6,00000084
	c.lwsp	s4,000000A4
	c.j	0000000023082EAC

;; ADC_Tsen_Init: 23083070
;;   Called from:
;;     23069838 (in bl_tsen_adc_get)
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

;; ADC_SET_TSVBE_LOW: 230830D0
;;   Called from:
;;     23083110 (in TSEN_Get_V_Error)
;;     230831B4 (in TSEN_Get_Temp)
ADC_SET_TSVBE_LOW proc
	lui	a4,00040010
	lw	a5,a4,-000006EC
	c.slli	a5,01
	c.srli	a5,00000001
	sw	a5,a4,+00000914
	c.jr	ra

;; ADC_SET_TSVBE_HIGH: 230830E2
;;   Called from:
;;     23083154 (in TSEN_Get_V_Error)
;;     230831FE (in TSEN_Get_Temp)
ADC_SET_TSVBE_HIGH proc
	lui	a4,00040010
	lw	a5,a4,-000006EC
	lui	a3,00080000
	c.or	a5,a3
	sw	a5,a4,+00000914
	c.jr	ra

;; TSEN_Get_V_Error: 230830F6
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
	jal	ra,00000000230830D0
	jal	ra,0000000023082D3C

l23083118:
	jal	ra,0000000023082D9A
	c.beqz	a0,0000000023083118

l2308311E:
	lui	s0,0004200F
	addi	s2,s0,-0000032C
	lui	s1,00040002
	c.lw	s1,4(a5)
	lbu	s3,s2,+00000000
	c.addi4spn	a2,00000008
	c.li	a1,00000001
	c.addi4spn	a0,00000004
	c.swsp	a5,00000080
	sb	zero,s2,+00000000
	jal	ra,0000000023082DA8
	sb	s3,s2,+00000000
	c.lw	s1,0(a5)
	lhu	s2,sp,+0000000A
	addi	s0,s0,-0000032C
	ori	a5,a5,+00000002
	c.sw	s1,0(a5)
	jal	ra,00000000230830E2
	jal	ra,0000000023082D3C

l2308315C:
	jal	ra,0000000023082D9A
	c.beqz	a0,000000002308315C

l23083162:
	lui	a5,00040002
	c.lw	a5,4(a5)
	lbu	s1,s0,+00000000
	c.addi4spn	a0,00000004
	c.addi4spn	a2,00000008
	c.li	a1,00000001
	c.swsp	a5,00000080
	sb	zero,s0,+00000000
	jal	ra,0000000023082DA8
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

;; TSEN_Get_Temp: 23083196
;;   Called from:
;;     23069888 (in bl_tsen_adc_get)
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
	jal	ra,00000000230830D0
	jal	ra,0000000023082D3C

l230831BC:
	jal	ra,0000000023082D9A
	c.beqz	a0,00000000230831BC

l230831C2:
	lui	s0,0004200F
	addi	s3,s0,-0000032C
	lui	s2,00040002
	lw	a5,s2,+00000004
	lbu	s4,s3,+00000000
	c.addi4spn	a2,00000008
	c.li	a1,00000001
	c.addi4spn	a0,00000004
	c.swsp	a5,00000080
	sb	zero,s3,+00000000
	jal	ra,0000000023082DA8
	sb	s4,s3,+00000000
	lw	a5,s2,+00000000
	lhu	s3,sp,+0000000A
	addi	s0,s0,-0000032C
	ori	a5,a5,+00000002
	sw	a5,s2,+00000000
	jal	ra,00000000230830E2
	jal	ra,0000000023082D3C

l23083206:
	jal	ra,0000000023082D9A
	c.beqz	a0,0000000023083206

l2308320C:
	lui	a5,00040002
	c.lw	a5,4(a5)
	c.addi4spn	a2,00000008
	c.li	a1,00000001
	c.addi4spn	a0,00000004
	lbu	s2,s0,+00000000
	c.swsp	a5,00000080
	sb	zero,s0,+00000000
	jal	ra,0000000023082DA8
	lhu	a5,sp,+0000000A
	sb	s2,s0,+00000000
	fcvt.s.wu	fa4,s3
	fcvt.s.wu	fa0,a5
	fcvt.s.wu	fa5,s1
	lui	s0,000230C6
	bgeu	a5,s3,000000002308326E

l23083242:
	fsub.s	fa0,fa4,fa0

l23083246:
	fsub.s	fa0,fa0,fa5
	jal	ra,00000000230A31AC
	lw	a2,s0,+00000198
	lw	a3,s0,+0000019C
	jal	ra,00000000230A1004
	jal	ra,00000000230A32BC
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2308326E:
	fsub.s	fa0,fa0,fa4
	c.j	0000000023083246

;; ADC_Init: 23083274
;;   Called from:
;;     23069828 (in bl_tsen_adc_get)
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
	c.beqz	a3,0000000023083364

l23083312:
	c.lui	a4,FFFE4000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.lui	a4,00012000

l2308331A:
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
	auipc	t1,0001EF8A
	jalr	zero,t1,-00000800

l23083364:
	c.lui	a4,FFFE2000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	c.lui	a4,00008000
	c.j	000000002308331A

;; Sec_Eng_SHA256_Update.part.0: 2308336E
;;   Called from:
;;     23083524 (in Sec_Eng_SHA256_Update)
;;     230835F4 (in Sec_Eng_SHA256_Finish)
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

l23083392:
	lw	s6,a3,+00000000
	c.addi	a4,FFFFFFFF
	beq	a4,zero,00000000230834B8

l2308339C:
	andi	a5,s6,+00000001
	c.bnez	a5,0000000023083392

l230833A2:
	c.lw	s1,0(a4)
	lbu	s2,s1,+00000010
	andi	s4,a4,+0000003F
	c.add	a4,s0
	c.sw	s1,0(a4)
	bgeu	a4,s0,00000000230833BA

l230833B4:
	c.lw	s1,4(a5)
	c.addi	a5,00000001
	c.sw	s1,4(a5)

l230833BA:
	beq	s4,zero,0000000023083410

l230833BE:
	addi	s5,zero,+00000040
	sub	s5,s5,s4
	bltu	s0,s5,0000000023083410

l230833CA:
	c.lw	s1,8(a0)
	c.mv	a2,s5
	c.mv	a1,s3
	c.add	a0,s4
	auipc	ra,0001EF89
	jalr	ra,ra,+0000015C
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

l23083410:
	addi	a5,zero,+0000003F
	andi	a2,s0,+0000003F
	bgeu	a5,s0,0000000023083466

l2308341C:
	lui	a3,00000F42
	addi	a3,a3,+00000400
	lui	a1,00040004

l23083428:
	c.lw	a1,0(a5)
	c.addi	a3,FFFFFFFF
	c.beqz	a3,00000000230834B8

l2308342E:
	andi	a4,a5,+00000001
	c.bnez	a4,0000000023083428

l23083434:
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

l23083466:
	c.beqz	a2,000000002308348C

l23083468:
	lui	a5,00000F42
	addi	a5,a5,+00000400
	lui	a3,00040004

l23083474:
	c.lw	a3,0(a4)
	c.addi	a5,FFFFFFFF
	c.beqz	a5,00000000230834B8

l2308347A:
	c.andi	a4,00000001
	c.bnez	a4,0000000023083474

l2308347E:
	c.lw	s1,8(a0)
	c.mv	a1,s3
	c.add	a0,s4
	auipc	ra,0001EF89
	jalr	ra,ra,+000000AA

l2308348C:
	lui	a5,00000F42
	addi	a5,a5,+00000400
	lui	a3,00040004

l23083498:
	c.lw	a3,0(a4)
	c.addi	a5,FFFFFFFF
	c.beqz	a5,00000000230834B8

l2308349E:
	c.andi	a4,00000001
	c.bnez	a4,0000000023083498

l230834A2:
	c.li	a0,00000000

l230834A4:
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

l230834B8:
	c.li	a0,00000002
	c.j	00000000230834A4

;; Sec_Eng_SHA256_Init: 230834BC
;;   Called from:
;;     230858E2 (in bl_sha_init)
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
	jal	ra,00000000230A3A68
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000A4
	addi	a2,zero,+00000040
	c.sw	s0,12(a4)
	c.sw	s0,8(a3)
	c.li	a1,00000000
	c.mv	a0,a4
	auipc	ra,0001EF89
	jalr	ra,ra,+0000004A
	c.lw	s0,12(a0)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.li	a2,00000001
	addi	a1,zero,+00000080
	c.addi16sp	00000020
	auipc	t1,0001EF89
	jalr	zero,t1,+00000034

;; Sec_Eng_SHA_Start: 2308350C
;;   Called from:
;;     230858EC (in bl_sha_init)
Sec_Eng_SHA_Start proc
	lui	a4,00040004
	c.lw	a4,0(a5)
	andi	a5,a5,-00000041
	ori	a5,a5,+00000020
	c.sw	a4,0(a5)
	c.jr	ra

;; Sec_Eng_SHA256_Update: 2308351E
;;   Called from:
;;     230835C6 (in Sec_Eng_SHA256_Finish)
;;     230858FA (in bl_sha_update)
Sec_Eng_SHA256_Update proc
	c.mv	a1,a2
	c.beqz	a3,0000000023083528

l23083522:
	c.mv	a2,a3
	jal	zero,000000002308336E

l23083528:
	c.li	a0,00000000
	c.jr	ra

;; Sec_Eng_SHA256_Finish: 2308352C
;;   Called from:
;;     2308590C (in bl_sha_finish)
Sec_Eng_SHA256_Finish proc
	lui	a5,00000F42
	addi	a5,a5,+00000400
	lui	a3,00040004

l23083538:
	c.lw	a3,0(a4)
	c.addi	a5,FFFFFFFF
	c.bnez	a5,000000002308354E

l2308353E:
	c.li	a0,00000002
	c.jr	ra

l23083542:
	c.li	a0,00000002

l23083544:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2308354E:
	c.andi	a4,00000001
	c.bnez	a4,0000000023083538

l23083552:
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
	bltu	a5,a3,0000000023083710

l230835B8:
	addi	a5,zero,+00000038

l230835BC:
	c.mv	s0,a2
	c.lw	a0,12(a2)
	sub	a3,a5,a3
	c.mv	s1,a0
	jal	ra,000000002308351E
	lui	a5,00000F42
	addi	a5,a5,+00000400
	lui	a3,00040004

l230835D6:
	c.lw	a3,0(a4)
	c.addi	a5,FFFFFFFF
	c.beqz	a5,0000000023083542

l230835DC:
	c.andi	a4,00000001
	c.bnez	a4,00000000230835D6

l230835E0:
	c.lw	s1,12(a0)
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	auipc	ra,0001EF89
	jalr	ra,ra,-000000B8
	c.lw	s1,12(a1)
	c.li	a2,00000008
	c.mv	a0,s1
	jal	ra,000000002308336E
	lui	a4,00000F42
	addi	a4,a4,+00000400
	lui	a5,00040004

l23083604:
	c.lw	a5,0(a3)
	c.addi	a4,FFFFFFFF
	c.beqz	a4,0000000023083542

l2308360A:
	c.andi	a3,00000001
	c.bnez	a3,0000000023083604

l2308360E:
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
	c.bnez	a3,0000000023083700

l230836A8:
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
	c.bnez	a4,0000000023083700

l230836E4:
	c.lw	a5,44(a5)
	srli	a4,a5,00000008
	sb	a5,s0,+0000001C
	sb	a4,s0,+0000001D
	srli	a4,a5,00000010
	c.srli	a5,00000018
	sb	a4,s0,+0000001E
	sb	a5,s0,+0000001F

l23083700:
	lui	a4,00040004
	c.lw	a4,0(a5)
	c.li	a0,00000000
	andi	a5,a5,-00000061
	c.sw	a4,0(a5)
	c.j	0000000023083544

l23083710:
	addi	a5,zero,+00000078
	c.j	00000000230835BC

;; DMA_Enable: 23083716
;;   Called from:
;;     230654FA (in bl_dma_init)
DMA_Enable proc
	lui	a4,0004000C
	c.lw	a4,48(a5)
	ori	a5,a5,+00000001
	c.sw	a4,48(a5)
	c.jr	ra

;; DMA_Channel_Enable: 23083724
;;   Called from:
;;     230652B0 (in bl_dma_IRQHandler)
DMA_Channel_Enable proc
	lui	a5,0004000C
	addi	a5,a5,+00000110
	c.slli	a0,08
	c.add	a0,a5
	c.lw	a0,0(a5)
	ori	a5,a5,+00000001
	c.sw	a0,0(a5)
	c.jr	ra

;; DMA_LLI_Init: 2308373A
;;   Called from:
;;     23065520 (in bl_dma_init)
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

;; DMA_LLI_Update: 23083770
;;   Called from:
;;     230652A4 (in bl_dma_IRQHandler)
DMA_LLI_Update proc
	lui	a5,0004000C
	c.slli	a0,08
	addi	a5,a5,+00000100
	c.li	a2,00000004
	c.add	a0,a5
	auipc	t1,0001EF89
	jalr	zero,t1,-0000025A

;; DMA_IntMask: 23083786
;;   Called from:
;;     23065504 (in bl_dma_init)
;;     2306550E (in bl_dma_init)
;;     23065518 (in bl_dma_init)
DMA_IntMask proc
	c.li	a5,00000001
	c.slli	a0,08
	beq	a1,a5,00000000230837BC

l2308378E:
	c.beqz	a1,0000000023083798

l23083790:
	c.li	a5,00000002
	beq	a1,a5,00000000230837DA

l23083796:
	c.jr	ra

l23083798:
	lui	a4,0004000C
	addi	a5,a4,+00000110
	c.add	a5,a0
	addi	a4,a4,+0000010C
	c.add	a0,a4
	c.lw	a5,0(a4)
	c.lui	a3,FFFF8000
	c.beqz	a2,00000000230837F0

l230837AE:
	c.lui	a3,00008000

l230837B0:
	c.or	a4,a3
	c.sw	a5,0(a4)
	c.lw	a0,0(a5)
	c.slli	a5,01
	c.srli	a5,00000001
	c.j	00000000230837D0

l230837BC:
	lui	a5,0004000C
	addi	a5,a5,+00000110
	c.add	a0,a5
	c.lw	a0,0(a5)
	c.bnez	a2,00000000230837D4

l230837CA:
	c.lui	a4,FFFFC000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4

l230837D0:
	c.sw	a0,0(a5)
	c.jr	ra

l230837D4:
	c.lui	a4,00004000

l230837D6:
	c.or	a5,a4
	c.j	00000000230837D0

l230837DA:
	lui	a4,0004000C
	addi	a5,a4,+00000110
	c.add	a5,a0
	addi	a4,a4,+0000010C
	c.add	a0,a4
	c.lw	a5,0(a4)
	c.bnez	a2,00000000230837FE

l230837EE:
	c.lui	a3,FFFF4000

l230837F0:
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	c.sw	a5,0(a4)
	c.lw	a0,0(a5)
	lui	a4,00080000
	c.j	00000000230837D6

l230837FE:
	c.lui	a3,0000C000
	c.j	00000000230837B0

;; Default_Handler: 23083802
;;   Called from:
;;     23084176 (in SPI_IRQHandler)
Default_Handler proc
	lui	a0,000230C6
	addi	a0,a0,+000001A0
	jal	zero,00000000230840DE

;; GLB_Set_UART_CLK: 2308380E
;;   Called from:
;;     23064C54 (in bl_uart_init)
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
	c.jal	000000002308390A
	c.lw	s0,8(a4)
	ori	a5,a4,+00000010
	c.bnez	s1,000000002308383A

l23083836:
	andi	a5,a4,-00000011

l2308383A:
	lui	a4,00040000
	c.sw	a4,8(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; GLB_Set_EM_Sel: 2308384C
;;   Called from:
;;     23065112 (in bl_sys_em_config)
GLB_Set_EM_Sel proc
	lui	a4,00040000
	c.lw	a4,124(a5)
	c.andi	a5,FFFFFFF0
	c.or	a0,a5
	c.sw	a4,124(a0)
	c.li	a0,00000000
	c.jr	ra

;; GLB_Set_ADC_CLK: 2308385C
;;   Called from:
;;     23069816 (in bl_tsen_adc_get)
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
	c.beqz	a0,0000000023083890

l2308388C:
	ori	a5,a4,+00000100

l23083890:
	lui	a4,00040000
	sw	a5,a4,+000000A4
	c.li	a0,00000000
	c.jr	ra

;; GLB_UART_Fun_Sel: 2308389C
;;   Called from:
;;     23064C9C (in bl_uart_init)
;;     23064CA6 (in bl_uart_init)
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

;; GLB_GPIO_Write: 230838C0
;;   Called from:
;;     23069C40 (in bl_gpio_output_set)
GLB_GPIO_Write proc
	srli	a5,a0,00000005
	lui	a4,00040000
	addi	a4,a4,+00000188
	c.slli	a5,02
	c.add	a5,a4
	c.li	a4,00000001
	c.lw	a5,0(a3)
	sll	a0,a4,a0
	c.beqz	a1,00000000230838E2

l230838DA:
	c.or	a0,a3

l230838DC:
	c.sw	a5,0(a0)
	c.li	a0,00000000
	c.jr	ra

l230838E2:
	xori	a0,a0,-00000001
	c.and	a0,a3
	c.j	00000000230838DC

;; GLB_GPIO_Read: 230838EA
;;   Called from:
;;     23069C52 (in bl_gpio_input_get)
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

;; HBN_Set_UART_CLK_Sel: 2308390A
;;   Called from:
;;     2308382C (in GLB_Set_UART_CLK)
HBN_Set_UART_CLK_Sel proc
	lui	a4,0004000F
	c.lw	a4,48(a5)
	c.slli	a0,02
	c.andi	a5,FFFFFFFB
	c.or	a0,a5
	c.sw	a4,48(a0)
	c.li	a0,00000000
	c.jr	ra

;; HBN_Get_RTC_Timer_Val: 2308391C
;;   Called from:
;;     23069904 (in bl_rtc_get_counter)
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

;; HBN_Clear_IRQ: 23083944
;;   Called from:
;;     23085B92 (in bl_hbn_enter)
;;     23085B98 (in bl_hbn_enter)
HBN_Clear_IRQ proc
	lui	a4,0004000F
	c.lw	a4,28(a3)
	c.li	a5,00000001
	sll	a0,a5,a0
	c.or	a3,a0
	c.sw	a4,28(a3)
	c.lw	a4,28(a5)
	xori	a0,a0,-00000001
	c.and	a0,a5
	c.sw	a4,28(a0)
	c.li	a0,00000000
	c.jr	ra

;; HBN_Aon_Pad_IeSmt_Cfg: 23083962
;;   Called from:
;;     23065124 (in bl_sys_early_init)
HBN_Aon_Pad_IeSmt_Cfg proc
	lui	a4,0004000F
	c.lw	a4,20(a5)
	c.slli	a0,08
	andi	a5,a5,-00000101
	c.or	a0,a5
	c.sw	a4,20(a0)
	c.li	a0,00000000
	c.jr	ra

;; TIMER_SetCompValue: 23083976
;;   Called from:
;;     23083A4C (in TIMER_Init)
;;     23083A56 (in TIMER_Init)
;;     23083A60 (in TIMER_Init)
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

;; TIMER_SetCountMode: 2308398E
;;   Called from:
;;     23083A20 (in TIMER_Init)
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

;; TIMER_ClearIntStatus: 230839B0
;;   Called from:
;;     23069ADE (in int_timer_cb)
;;     23069B4E (in bl_timer_tick_enable)
;;     23069B58 (in bl_timer_tick_enable)
;;     23069B62 (in bl_timer_tick_enable)
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

;; TIMER_Init: 230839CA
;;   Called from:
;;     23069B44 (in bl_timer_tick_enable)
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
	c.bnez	s1,0000000023083A72

l230839E8:
	andi	a3,a5,-0000000D
	slli	a5,a4,00000002

l230839F0:
	lui	a4,0004000A
	c.or	a5,a3
	sw	a5,a4,+00000500
	lw	a5,a4,+000005BC
	lbu	a4,s0,+00000004
	c.bnez	s1,0000000023083A7C

l23083A04:
	c.lui	a3,FFFF0000
	addi	a3,a3,+000000FF
	c.and	a3,a5
	slli	a5,a4,00000008

l23083A10:
	c.or	a5,a3
	lui	s2,0004000A
	sw	a5,s2,+000005BC
	lbu	a1,s0,+00000003
	c.mv	a0,s1
	jal	ra,000000002308398E
	lbu	a3,s0,+00000002
	slli	a5,s1,00000002
	addi	a4,s2,+0000055C
	c.add	a4,a5
	c.sw	a4,0(a3)
	lbu	a4,s0,+00000003
	c.bnez	a4,0000000023083A46

l23083A3A:
	c.lw	s0,20(a4)
	addi	s2,s2,+00000550
	c.add	s2,a5
	sw	a4,s2,+00000000

l23083A46:
	c.lw	s0,8(a2)
	c.mv	a0,s1
	c.li	a1,00000000
	jal	ra,0000000023083976
	c.lw	s0,12(a2)
	c.mv	a0,s1
	c.li	a1,00000001
	jal	ra,0000000023083976
	c.lw	s0,16(a2)
	c.mv	a0,s1
	c.li	a1,00000002
	jal	ra,0000000023083976
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23083A72:
	andi	a3,a5,-00000061
	slli	a5,a4,00000005
	c.j	00000000230839F0

l23083A7C:
	lui	a3,000FF010
	c.addi	a3,FFFFFFFF
	c.and	a3,a5
	slli	a5,a4,00000010
	c.j	0000000023083A10

;; TIMER_Enable: 23083A8A
;;   Called from:
;;     23069B8E (in bl_timer_tick_enable)
TIMER_Enable proc
	lui	a4,0004000A
	lw	a3,a4,+00000584
	c.addi	a0,00000001
	c.li	a5,00000001
	sll	a5,a5,a0
	c.or	a5,a3
	sw	a5,a4,+00000584
	c.jr	ra

;; TIMER_Disable: 23083AA2
;;   Called from:
;;     23069B3E (in bl_timer_tick_enable)
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

;; TIMER_IntMask: 23083ABE
;;   Called from:
;;     23069B36 (in bl_timer_tick_enable)
;;     23069B6E (in bl_timer_tick_enable)
;;     23069B7A (in bl_timer_tick_enable)
;;     23069B86 (in bl_timer_tick_enable)
TIMER_IntMask proc
	lui	a5,0004000A
	addi	a5,a5,+00000544
	c.slli	a0,02
	c.add	a0,a5
	c.lw	a0,0(a5)
	c.li	a4,00000001
	beq	a1,a4,0000000023083AF0

l23083AD2:
	c.beqz	a1,0000000023083AE2

l23083AD4:
	c.li	a4,00000002
	beq	a1,a4,0000000023083AFC

l23083ADA:
	c.li	a4,00000003
	beq	a1,a4,0000000023083B04

l23083AE0:
	c.jr	ra

l23083AE2:
	c.bnez	a2,0000000023083AEC

l23083AE4:
	ori	a5,a5,+00000001

l23083AE8:
	c.sw	a0,0(a5)
	c.jr	ra

l23083AEC:
	c.andi	a5,FFFFFFFE
	c.j	0000000023083AE8

l23083AF0:
	c.bnez	a2,0000000023083AF8

l23083AF2:
	ori	a5,a5,+00000002
	c.j	0000000023083AE8

l23083AF8:
	c.andi	a5,FFFFFFFD
	c.j	0000000023083AE8

l23083AFC:
	c.bnez	a2,0000000023083B20

l23083AFE:
	ori	a5,a5,+00000004
	c.j	0000000023083AE8

l23083B04:
	c.bnez	a2,0000000023083B14

l23083B06:
	ori	a4,a5,+00000001
	c.sw	a0,0(a4)
	ori	a4,a5,+00000002
	c.sw	a0,0(a4)
	c.j	0000000023083AFE

l23083B14:
	andi	a4,a5,-00000002
	c.sw	a0,0(a4)
	andi	a4,a5,-00000003
	c.sw	a0,0(a4)

l23083B20:
	c.andi	a5,FFFFFFFB
	c.j	0000000023083AE8

;; WDT_Set_Clock: 23083B24
;;   Called from:
;;     23069F30 (in bl_wdt_init)
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

;; WDT_SetCompValue: 23083B4A
;;   Called from:
;;     23069F3C (in bl_wdt_init)
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

;; WDT_ResetCounterValue: 23083B7A
;;   Called from:
;;     23069F10 (in bl_wdt_feed)
;;     23069F40 (in bl_wdt_init)
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

;; WDT_Enable: 23083BB2
;;   Called from:
;;     23069F4C (in bl_wdt_init)
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

;; WDT_Disable: 23083BEA
;;   Called from:
;;     23069F14 (in bl_wdt_disable)
;;     23069F28 (in bl_wdt_init)
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

;; WDT_IntMask: 23083C20
;;   Called from:
;;     23069F48 (in bl_wdt_init)
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
	c.bnez	a0,0000000023083C5C

l23083C54:
	c.bnez	a1,0000000023083C5E

l23083C56:
	c.andi	a4,FFFFFFFD

l23083C58:
	sw	a4,a5,+00000564

l23083C5C:
	c.jr	ra

l23083C5E:
	ori	a4,a4,+00000002
	c.j	0000000023083C58

;; EF_Ctrl_Get_Byte_Zero_Cnt: 23083C64
;;   Called from:
;;     23083CD4 (in EF_Ctrl_Read_MAC_Address)
;;     23083E16 (in EF_Ctrl_Read_MAC_Address_Opt)
EF_Ctrl_Get_Byte_Zero_Cnt proc
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a2,00000008

l23083C6A:
	sra	a3,a0,a5
	c.andi	a3,00000001
	c.bnez	a3,0000000023083C74

l23083C72:
	c.addi	a4,00000001

l23083C74:
	c.addi	a5,00000001
	bne	a5,a2,0000000023083C6A

l23083C7A:
	c.mv	a0,a4
	c.jr	ra

;; EF_Ctrl_Read_MAC_Address: 23083C7E
;;   Called from:
;;     23066138 (in bl_efuse_read_mac)
EF_Ctrl_Read_MAC_Address proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	auipc	ra,0001EF89
	jalr	ra,ra,-00000724
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

l23083CCA:
	add	a5,s0,s2
	lbu	a0,a5,+00000000
	c.addi	s2,00000001
	jal	ra,0000000023083C64
	c.add	s3,a0
	bne	s2,s4,0000000023083CCA

l23083CDE:
	c.srli	s1,00000010
	xor	s1,s1,s3
	andi	s1,s1,+0000003F
	c.li	a0,00000001
	c.bnez	s1,0000000023083D0E

l23083CEC:
	addi	a5,s0,+00000005
	addi	a4,s0,+00000002

l23083CF4:
	lbu	a2,a5,+00000000
	lbu	a3,s0,+00000000
	c.addi	a5,FFFFFFFF
	sb	a2,s0,+00000000
	sb	a3,a5,+00000001
	c.addi	s0,00000001
	bne	a5,a4,0000000023083CF4

l23083D0C:
	c.li	a0,00000000

l23083D0E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; EF_Ctrl_Is_MAC_Address_Slot_Empty: 23083D1E
;;   Called from:
;;     230844C6 (in mfg_efuse_read_macaddr)
;;     230844E6 (in mfg_efuse_read_macaddr)
;;     230844F4 (in mfg_efuse_read_macaddr)
EF_Ctrl_Is_MAC_Address_Slot_Empty proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	c.bnez	a0,0000000023083D56

l23083D28:
	auipc	ra,0001EF89
	jalr	ra,ra,-000007D2
	c.beqz	s0,0000000023083D3A

l23083D32:
	auipc	ra,0001EF89
	jalr	ra,ra,-000007C8

l23083D3A:
	lui	a5,00040007
	c.lw	a5,20(a4)
	c.lw	a5,24(a5)

l23083D42:
	c.slli	a5,0A
	c.srli	a5,0000000A
	c.or	a5,a4
	c.li	a0,00000001
	c.beqz	a5,0000000023083D4E

l23083D4C:
	c.li	a0,00000000

l23083D4E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23083D56:
	c.li	a5,00000001
	bne	a0,a5,0000000023083D78

l23083D5C:
	auipc	ra,0001EF88
	jalr	ra,ra,+000007FA
	c.beqz	s0,0000000023083D6E

l23083D66:
	auipc	ra,0001EF89
	jalr	ra,ra,-000007FC

l23083D6E:
	lui	a5,00040007
	c.lw	a5,108(a4)
	c.lw	a5,112(a5)
	c.j	0000000023083D42

l23083D78:
	c.li	a5,00000002
	bne	a0,a5,0000000023083D4C

l23083D7E:
	auipc	ra,0001EF88
	jalr	ra,ra,+000007D8
	c.beqz	s0,0000000023083D90

l23083D88:
	auipc	ra,0001EF88
	jalr	ra,ra,+000007E2

l23083D90:
	lui	a5,00040007
	c.lw	a5,4(a4)
	c.lw	a5,8(a5)
	c.j	0000000023083D42

;; EF_Ctrl_Read_MAC_Address_Opt: 23083D9A
;;   Called from:
;;     23084510 (in mfg_efuse_read_macaddr)
EF_Ctrl_Read_MAC_Address_Opt proc
	c.li	a5,00000002
	bltu	a5,a0,0000000023083E84

l23083DA0:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s0,a1
	c.mv	s1,a0
	c.beqz	a2,0000000023083DD0

l23083DB4:
	bne	a0,a5,0000000023083DC8

l23083DB8:
	auipc	ra,0001EF88
	jalr	ra,ra,+000007B2

l23083DC0:
	lui	a5,00040007
	c.lw	a5,4(a5)
	c.j	0000000023083DD8

l23083DC8:
	auipc	ra,0001EF88
	jalr	ra,ra,+000007A2

l23083DD0:
	c.bnez	s1,0000000023083E60

l23083DD2:
	lui	a5,00040007
	c.lw	a5,20(a5)

l23083DD8:
	srli	a4,a5,00000008
	sb	a5,s0,+00000000
	sb	a4,s0,+00000001
	srli	a4,a5,00000010
	c.srli	a5,00000018
	sb	a4,s0,+00000002
	sb	a5,s0,+00000003
	c.bnez	s1,0000000023083E6E

l23083DF4:
	lui	a5,00040007
	c.lw	a5,24(s1)

l23083DFA:
	srli	a5,s1,00000008
	sb	s1,s0,+00000004
	sb	a5,s0,+00000005
	c.li	s3,00000000
	c.li	s2,00000000
	c.li	s4,00000006

l23083E0C:
	add	a5,s0,s2
	lbu	a0,a5,+00000000
	c.addi	s2,00000001
	jal	ra,0000000023083C64
	c.add	s3,a0
	bne	s2,s4,0000000023083E0C

l23083E20:
	c.srli	s1,00000010
	xor	s1,s1,s3
	andi	s1,s1,+0000003F
	c.li	a0,00000001
	c.bnez	s1,0000000023083E50

l23083E2E:
	addi	a5,s0,+00000005
	addi	a4,s0,+00000002

l23083E36:
	lbu	a2,a5,+00000000
	lbu	a3,s0,+00000000
	c.addi	a5,FFFFFFFF
	sb	a2,s0,+00000000
	sb	a3,a5,+00000001
	c.addi	s0,00000001
	bne	a4,a5,0000000023083E36

l23083E4E:
	c.li	a0,00000000

l23083E50:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23083E60:
	c.li	a5,00000001
	bne	s1,a5,0000000023083DC0

l23083E66:
	lui	a5,00040007
	c.lw	a5,108(a5)
	c.j	0000000023083DD8

l23083E6E:
	c.li	a5,00000001
	bne	s1,a5,0000000023083E7C

l23083E74:
	lui	a5,00040007
	c.lw	a5,112(s1)
	c.j	0000000023083DFA

l23083E7C:
	lui	a5,00040007
	c.lw	a5,8(s1)
	c.j	0000000023083DFA

l23083E84:
	c.li	a0,00000001
	c.jr	ra

;; EF_Ctrl_Is_CapCode_Slot_Empty: 23083E88
;;   Called from:
;;     23084218 (in mfg_efuse_read_xtal_capcode)
;;     23084238 (in mfg_efuse_read_xtal_capcode)
;;     23084246 (in mfg_efuse_read_xtal_capcode)
EF_Ctrl_Is_CapCode_Slot_Empty proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.mv	s0,a0
	auipc	ra,0001EF88
	jalr	ra,ra,+000006C4
	c.lwsp	a2,00000064
	c.beqz	a1,0000000023083EA6

l23083E9E:
	auipc	ra,0001EF88
	jalr	ra,ra,+000006CC

l23083EA6:
	c.bnez	s0,0000000023083EC0

l23083EA8:
	lui	a5,00040007
	c.lw	a5,12(a5)
	c.srli	a5,00000002

l23083EB0:
	andi	a5,a5,+000000FF
	sltiu	a0,a5,+00000001

l23083EB8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23083EC0:
	c.li	a5,00000001
	bne	s0,a5,0000000023083ED0

l23083EC6:
	lui	a5,00040007
	c.lw	a5,112(a5)

l23083ECC:
	c.srli	a5,00000016
	c.j	0000000023083EB0

l23083ED0:
	c.li	a4,00000002
	c.li	a0,00000000
	bne	s0,a4,0000000023083EB8

l23083ED8:
	lui	a5,00040007
	c.lw	a5,8(a5)
	c.j	0000000023083ECC

;; EF_Ctrl_Read_CapCode_Opt: 23083EE0
;;   Called from:
;;     23084262 (in mfg_efuse_read_xtal_capcode)
EF_Ctrl_Read_CapCode_Opt proc
	c.li	a5,00000002
	bgeu	a5,a0,0000000023083EF8

l23083EE6:
	c.li	a0,00000001
	c.jr	ra

l23083EEA:
	c.li	a0,00000001

l23083EEC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23083EF8:
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a2
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a1
	c.mv	s0,a0
	auipc	ra,0001EF88
	jalr	ra,ra,+0000064E
	beq	s2,zero,0000000023083F1C

l23083F14:
	auipc	ra,0001EF88
	jalr	ra,ra,+00000656

l23083F1C:
	c.bnez	s0,0000000023083F54

l23083F1E:
	lui	a5,00040007
	c.lw	a5,12(a5)
	c.srli	a5,00000002

l23083F26:
	c.swsp	a5,00000084
	c.lwsp	a2,00000044
	andi	a5,a0,+00000080
	c.beqz	a5,0000000023083EEA

l23083F30:
	andi	s0,a0,+0000003F
	srli	s2,a0,00000006
	c.li	a1,00000006
	c.mv	a0,s0
	andi	s2,s2,+00000001
	auipc	ra,0001EF89
	jalr	ra,ra,-0000017E
	bne	s2,a0,0000000023083EEA

l23083F4C:
	sb	s0,s1,+00000000
	c.li	a0,00000000
	c.j	0000000023083EEC

l23083F54:
	c.li	a5,00000001
	bne	s0,a5,0000000023083F64

l23083F5A:
	lui	a5,00040007
	c.lw	a5,112(a5)

l23083F60:
	c.srli	a5,00000016
	c.j	0000000023083F26

l23083F64:
	lui	a5,00040007
	c.lw	a5,8(a5)
	c.j	0000000023083F60

;; EF_Ctrl_Is_PowerOffset_Slot_Empty: 23083F6C
;;   Called from:
;;     230842EA (in mfg_efuse_read_poweroffset)
;;     2308430C (in mfg_efuse_read_poweroffset)
;;     2308431A (in mfg_efuse_read_poweroffset)
EF_Ctrl_Is_PowerOffset_Slot_Empty proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.mv	s0,a0
	auipc	ra,0001EF88
	jalr	ra,ra,+000005E0
	c.lwsp	a2,00000064
	c.beqz	a1,0000000023083F8A

l23083F82:
	auipc	ra,0001EF88
	jalr	ra,ra,+000005E8

l23083F8A:
	c.bnez	s0,0000000023083FAC

l23083F8C:
	lui	a5,00040007
	c.lw	a5,120(a5)
	c.li	a4,00000001
	c.srli	a5,0000000F
	sltiu	a5,a5,+00000001

l23083F9A:
	c.li	a0,00000000
	c.beqz	a5,0000000023083FA0

l23083F9E:
	c.mv	a0,a4

l23083FA0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	andi	a0,a0,+000000FF
	c.addi16sp	00000020
	c.jr	ra

l23083FAC:
	c.li	a5,00000001
	bne	s0,a5,0000000023083FCA

l23083FB2:
	lui	a4,00040007
	c.lw	a4,116(a5)
	c.lw	a4,12(a4)
	c.slli	a5,10
	c.srli	a5,00000010
	sltiu	a5,a5,+00000001

l23083FC2:
	xori	a4,a4,-00000001
	c.andi	a4,00000001
	c.j	0000000023083F9A

l23083FCA:
	c.li	a5,00000002
	c.li	a0,00000000
	bne	s0,a5,0000000023083FA0

l23083FD2:
	lui	a4,00040007
	c.lw	a4,116(a5)
	c.lw	a4,12(a4)
	c.srli	a5,00000010
	sltiu	a5,a5,+00000001
	c.srli	a4,00000001
	c.j	0000000023083FC2

;; EF_Ctrl_Read_PowerOffset_Opt: 23083FE4
;;   Called from:
;;     23084336 (in mfg_efuse_read_poweroffset)
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
	auipc	ra,0001EF88
	jalr	ra,ra,+0000055E
	c.lwsp	a2,00000084
	c.beqz	a2,000000002308400C

l23084004:
	auipc	ra,0001EF88
	jalr	ra,ra,+00000566

l2308400C:
	c.bnez	s0,0000000023084062

l2308400E:
	lui	a5,00040007
	c.lw	a5,120(s0)
	srli	a5,s0,0000000F
	slli	s1,s0,00000001
	c.andi	a5,00000001
	c.srli	s1,00000011
	c.srli	s0,0000001F

l23084022:
	c.beqz	a5,0000000023084084

l23084024:
	c.li	a1,0000000F
	c.mv	a0,s1
	auipc	ra,0001EF89
	jalr	ra,ra,-00000266
	bne	a0,s0,0000000023084084

l23084034:
	c.li	s0,00000000
	c.li	s4,00000005
	c.li	s3,00000003

l2308403A:
	add	a2,s0,s4
	c.mv	a0,s1
	c.li	a1,00000000
	jal	ra,000000002309F20C
	andi	a5,a0,+0000001F
	c.andi	a0,00000010
	add	a4,s2,s0
	c.beqz	a0,0000000023084054

l23084052:
	c.addi	a5,FFFFFFE0

l23084054:
	sb	a5,a4,+00000000
	c.addi	s0,00000001
	bne	s0,s3,000000002308403A

l2308405E:
	c.li	a0,00000000
	c.j	0000000023084086

l23084062:
	c.li	a5,00000001
	bne	s0,a5,000000002308407E

l23084068:
	lui	a5,00040007
	c.lw	a5,116(s0)
	c.lw	a5,12(a5)
	slli	s1,s0,00000011
	c.srli	s0,0000000F
	c.srli	s1,00000011
	c.andi	s0,00000001

l2308407A:
	c.andi	a5,00000001
	c.j	0000000023084022

l2308407E:
	c.li	a5,00000002
	beq	s0,a5,0000000023084096

l23084084:
	c.li	a0,00000001

l23084086:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23084096:
	lui	a5,00040007
	c.lw	a5,116(s0)
	c.lw	a5,12(a5)
	slli	s1,s0,00000001
	c.srli	s1,00000011
	c.srli	s0,0000001F
	c.srli	a5,00000001
	c.j	000000002308407A

;; mfg_media_read_xtal_capcode: 230840AA
;;   Called from:
;;     23066162 (in bl_efuse_read_capcode)
mfg_media_read_xtal_capcode proc
	lui	a5,0004200F
	lbu	a5,a5,+000006FC
	c.beqz	a5,00000000230840B6

l230840B4:
	c.j	000000002308459C

l230840B6:
	c.j	00000000230841C8

;; mfg_media_read_poweroffset: 230840B8
;;   Called from:
;;     2306617A (in bl_efuse_read_pwroft)
mfg_media_read_poweroffset proc
	lui	a5,0004200F
	lbu	a5,a5,+000006FC
	c.beqz	a5,00000000230840C4

l230840C2:
	c.j	0000000023084600

l230840C4:
	c.j	000000002308429A

;; mfg_media_read_macaddr: 230840C6
;;   Called from:
;;     2306614A (in bl_efuse_read_mac_factory)
mfg_media_read_macaddr proc
	lui	a5,0004200F
	lbu	a5,a5,+000006FC
	c.beqz	a5,00000000230840D2

l230840D0:
	c.j	0000000023084764

l230840D2:
	c.j	0000000023084476

;; bflb_platform_usart_dbg_send: 230840D4
;;   Called from:
;;     23084120 (in bflb_platform_printf)
bflb_platform_usart_dbg_send proc
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	jal	zero,0000000023082C2E

;; bflb_platform_printf: 230840DE
;;   Called from:
;;     2308380A (in Default_Handler)
bflb_platform_printf proc
	c.addi16sp	FFFFFFC0
	c.swsp	a5,00000098
	lui	a5,0004200F
	lbu	a5,a5,+000006FD
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a1,00000090
	c.swsp	a2,00000014
	c.swsp	a3,00000094
	c.swsp	a4,00000018
	c.swsp	a6,0000001C
	c.swsp	a7,0000009C
	c.bnez	a5,0000000023084124

l230840FC:
	lui	s0,0004201C
	c.mv	a2,a0
	c.addi4spn	a3,00000024
	addi	a1,zero,+0000007F
	addi	a0,s0,+0000064C
	c.swsp	a3,00000084
	jal	ra,0000000023081E12
	addi	a0,s0,+0000064C
	jal	ra,00000000230A4220
	c.mv	a1,a0
	addi	a0,s0,+0000064C
	jal	ra,00000000230840D4

l23084124:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000040
	c.jr	ra

;; SPI_IRQHandler: 2308412C
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
	jal	ra,0000000023083802
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

;; mfg_efuse_read_xtal_capcode: 230841C8
;;   Called from:
;;     230840B6 (in mfg_media_read_xtal_capcode)
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
	auipc	ra,0001EF89
	jalr	ra,ra,-000003E6
	c.mv	s3,a0
	auipc	ra,0001EF89
	jalr	ra,ra,-000003E6
	c.mv	s2,a0
	c.li	a0,00000001
	auipc	ra,0001EF89
	jalr	ra,ra,-000003AC
	lui	s0,0004200F
	lbu	a4,s0,-00000324
	c.li	a5,00000002
	addi	s0,s0,-00000324
	bltu	a5,a4,0000000023084234

l2308420A:
	lbu	a4,s0,+00000000
	c.li	a5,00000001
	bgeu	a5,a4,000000002308421E

l23084214:
	c.mv	a1,s1
	c.li	a0,00000001
	jal	ra,0000000023083E88
	c.beqz	a0,0000000023084296

l2308421E:
	lbu	a5,s0,+00000000
	c.bnez	a5,0000000023084242

l23084224:
	lui	a0,000230C6
	addi	a0,a0,+000001C4
	jal	ra,0000000023082388
	c.li	s0,00000001
	c.j	0000000023084268

l23084234:
	c.mv	a1,s1
	c.li	a0,00000002
	jal	ra,0000000023083E88
	c.bnez	a0,000000002308420A

l2308423E:
	c.li	s0,00000002
	c.j	000000002308424E

l23084242:
	c.mv	a1,s1
	c.li	a0,00000000
	jal	ra,0000000023083E88
	c.mv	s0,a0
	c.bnez	a0,0000000023084224

l2308424E:
	lui	a0,000230C6
	c.mv	a1,s0
	addi	a0,a0,+000001B4
	jal	ra,0000000023082388
	c.mv	a0,s0
	c.mv	a2,s1
	c.mv	a1,s4
	jal	ra,0000000023083EE0
	c.mv	s0,a0

l23084268:
	c.mv	a1,s3
	c.mv	a0,s2
	auipc	ra,0001EF89
	jalr	ra,ra,-00000482
	c.li	a0,00000002
	auipc	ra,0001EF89
	jalr	ra,ra,-00000432
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

l23084296:
	c.li	s0,00000001
	c.j	000000002308424E

;; mfg_efuse_read_poweroffset: 2308429A
;;   Called from:
;;     230840C4 (in mfg_media_read_poweroffset)
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
	auipc	ra,0001EF89
	jalr	ra,ra,-000004B8
	c.mv	s2,a0
	auipc	ra,0001EF89
	jalr	ra,ra,-000004B8
	c.mv	s1,a0
	c.li	a0,00000001
	auipc	ra,0001EF89
	jalr	ra,ra,-0000047E
	lui	s0,0004200F
	lbu	a4,s0,-00000324
	c.li	a5,00000002
	addi	s0,s0,-00000324
	bltu	a5,a4,0000000023084308

l230842DC:
	lbu	a4,s0,+00000000
	c.li	a5,00000001
	bgeu	a5,a4,00000000230842F2

l230842E6:
	c.mv	a1,s4
	c.li	a0,00000001
	jal	ra,0000000023083F6C
	beq	a0,zero,0000000023084472

l230842F2:
	lbu	a5,s0,+00000000
	c.bnez	a5,0000000023084316

l230842F8:
	lui	a0,000230C6
	addi	a0,a0,+000001C4
	jal	ra,0000000023082388
	c.li	s0,00000001
	c.j	0000000023084444

l23084308:
	c.mv	a1,s4
	c.li	a0,00000002
	jal	ra,0000000023083F6C
	c.bnez	a0,00000000230842DC

l23084312:
	c.li	s0,00000002
	c.j	0000000023084322

l23084316:
	c.mv	a1,s4
	c.li	a0,00000000
	jal	ra,0000000023083F6C
	c.mv	s0,a0
	c.bnez	a0,00000000230842F8

l23084322:
	lui	a0,000230C6
	c.mv	a1,s0
	addi	a0,a0,+000001B4
	jal	ra,0000000023082388
	c.mv	a2,s4
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,0000000023083FE4
	c.li	a2,0000000E
	c.li	a1,00000000
	c.mv	s0,a0
	c.mv	a0,s3
	jal	ra,00000000230A3A68
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

l23084444:
	c.mv	a1,s2
	c.mv	a0,s1
	auipc	ra,0001EF89
	jalr	ra,ra,-0000065E
	c.li	a0,00000002
	auipc	ra,0001EF89
	jalr	ra,ra,-0000060E
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

l23084472:
	c.li	s0,00000001
	c.j	0000000023084322

;; mfg_efuse_read_macaddr: 23084476
;;   Called from:
;;     230840D2 (in mfg_media_read_macaddr)
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
	auipc	ra,0001EF89
	jalr	ra,ra,-00000694
	c.mv	s3,a0
	auipc	ra,0001EF89
	jalr	ra,ra,-00000694
	c.mv	s2,a0
	c.li	a0,00000001
	auipc	ra,0001EF89
	jalr	ra,ra,-0000065A
	lui	s0,0004200F
	lbu	a4,s0,-00000324
	c.li	a5,00000002
	addi	s0,s0,-00000324
	bltu	a5,a4,00000000230844E2

l230844B8:
	lbu	a4,s0,+00000000
	c.li	a5,00000001
	bgeu	a5,a4,00000000230844CC

l230844C2:
	c.mv	a1,s1
	c.li	a0,00000001
	jal	ra,0000000023083D1E
	c.beqz	a0,0000000023084544

l230844CC:
	lbu	a5,s0,+00000000
	c.bnez	a5,00000000230844F0

l230844D2:
	lui	a0,000230C6
	addi	a0,a0,+000001C4
	jal	ra,0000000023082388
	c.li	s0,00000001
	c.j	0000000023084516

l230844E2:
	c.mv	a1,s1
	c.li	a0,00000002
	jal	ra,0000000023083D1E
	c.bnez	a0,00000000230844B8

l230844EC:
	c.li	s0,00000002
	c.j	00000000230844FC

l230844F0:
	c.mv	a1,s1
	c.li	a0,00000000
	jal	ra,0000000023083D1E
	c.mv	s0,a0
	c.bnez	a0,00000000230844D2

l230844FC:
	lui	a0,000230C6
	c.mv	a1,s0
	addi	a0,a0,+000001B4
	jal	ra,0000000023082388
	c.mv	a0,s0
	c.mv	a2,s1
	c.mv	a1,s4
	jal	ra,0000000023083D9A
	c.mv	s0,a0

l23084516:
	c.mv	a1,s3
	c.mv	a0,s2
	auipc	ra,0001EF89
	jalr	ra,ra,-00000730
	c.li	a0,00000002
	auipc	ra,0001EF89
	jalr	ra,ra,-000006E0
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

l23084544:
	c.li	s0,00000001
	c.j	00000000230844FC

;; mfg_flash_read: 23084548
;;   Called from:
;;     230845CA (in mfg_flash_read_xtal_capcode)
;;     2308462E (in mfg_flash_read_poweroffset)
;;     23084772 (in mfg_flash_read_macaddr)
mfg_flash_read proc
	lui	a0,000230C6
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000001DC
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	csrrci	zero,mstatus,00000008
	lui	a5,0004200F
	lw	a1,a5,+00000704
	lui	a5,0004200F
	lw	a0,a5,+00000700
	lui	a2,0004201C
	c.li	a3,00000018
	addi	a2,a2,+000006CC
	auipc	ra,0001EF88
	jalr	ra,ra,+00000404
	csrrsi	zero,mstatus,00000008
	c.li	a5,00000000
	c.beqz	a0,0000000023084594

l23084586:
	lui	a0,000230C6
	addi	a0,a0,+000001F0
	jal	ra,0000000023082388
	c.li	a5,FFFFFFFF

l23084594:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; mfg_flash_read_xtal_capcode: 2308459C
;;   Called from:
;;     230840B4 (in mfg_media_read_xtal_capcode)
mfg_flash_read_xtal_capcode proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.mv	s1,a0
	c.bnez	a1,00000000230845CA

l230845AA:
	lui	s0,0004201C
	addi	s0,s0,+000006CC
	c.lw	s0,0(a4)
	addi	a5,zero,+00000041
	beq	a4,a5,00000000230845D2

l230845BC:
	c.li	a0,FFFFFFFF

l230845BE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230845CA:
	jal	ra,0000000023084548
	c.beqz	a0,00000000230845AA

l230845D0:
	c.j	00000000230845BC

l230845D2:
	lw	s2,s0,+00000014
	c.li	a1,00000010
	addi	a0,s0,+00000004
	auipc	ra,0001EF88
	jalr	ra,ra,+00000402
	bne	s2,a0,00000000230845BC

l230845E8:
	lbu	a4,s0,+00000004
	addi	a5,zero,+0000005A
	bne	a4,a5,00000000230845BC

l230845F4:
	lbu	a5,s0,+00000005
	c.li	a0,00000000
	sb	a5,s1,+00000000
	c.j	00000000230845BE

;; mfg_flash_read_poweroffset: 23084600
;;   Called from:
;;     230840C2 (in mfg_media_read_poweroffset)
mfg_flash_read_poweroffset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s0,a0
	c.bnez	a1,000000002308462E

l2308460E:
	lui	s1,0004201C
	addi	s1,s1,+000006CC
	c.lw	s1,0(a4)
	addi	a5,zero,+00000041
	beq	a4,a5,0000000023084636

l23084620:
	c.li	a0,FFFFFFFF

l23084622:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2308462E:
	jal	ra,0000000023084548
	c.beqz	a0,000000002308460E

l23084634:
	c.j	0000000023084620

l23084636:
	lw	s2,s1,+00000014
	c.li	a1,00000010
	addi	a0,s1,+00000004
	auipc	ra,0001EF88
	jalr	ra,ra,+0000039E
	bne	s2,a0,0000000023084620

l2308464C:
	lbu	a4,s1,+00000006
	addi	a5,zero,+0000005A
	bne	a4,a5,0000000023084620

l23084658:
	c.li	a2,0000000E
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230A3A68
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
	c.j	0000000023084622

;; mfg_flash_read_macaddr: 23084764
;;   Called from:
;;     230840D0 (in mfg_media_read_macaddr)
mfg_flash_read_macaddr proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.mv	s1,a0
	c.beqz	a1,0000000023084792

l23084772:
	jal	ra,0000000023084548
	c.beqz	a0,0000000023084792

l23084778:
	lui	a0,000230C6
	addi	a0,a0,+00000204
	jal	ra,0000000023082388

l23084784:
	c.li	a0,FFFFFFFF

l23084786:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23084792:
	lui	s0,0004201C
	addi	s0,s0,+000006CC
	c.lw	s0,0(a4)
	addi	a5,zero,+00000041
	bne	a4,a5,0000000023084784

l230847A4:
	lw	s2,s0,+00000014
	c.li	a1,00000010
	addi	a0,s0,+00000004
	auipc	ra,0001EF88
	jalr	ra,ra,+00000230
	bne	s2,a0,0000000023084784

l230847BA:
	lbu	a4,s0,+0000000A
	addi	a5,zero,+0000005A
	bne	a4,a5,0000000023084784

l230847C6:
	c.li	a2,00000006
	addi	a1,s0,+0000000B
	c.mv	a0,s1
	jal	ra,00000000230A382C
	c.li	a0,00000000
	c.j	0000000023084786

;; bt_hcionchip_recv: 230847D6
bt_hcionchip_recv proc
	c.lui	a5,FFFFF000
	addi	a5,a5,+000007FF
	c.add	a0,a5
	c.slli	a0,10
	c.srli	a0,00000010
	c.li	a5,00000005
	bltu	a5,a0,000000002308482A

l230847E8:
	lui	a5,000230C6
	addi	a5,a5,+0000021C
	c.slli	a0,02
	c.add	a0,a5
	c.lw	a0,0(a5)
	c.mv	a2,a1
	c.jr	a5
230847FA                               0D 45 41 11 06 C6           .EA...
23084800 B7 F7 00 42 B6 85 83 A7 87 70 83 46 E6 FF 01 47 ...B.....p.F...G
23084810 82 97 B2 40 01 45 41 01 82 80 11 45 C5 B7 15 45 ...@.EA....E...E
23084820 F1 BF 05 45 E1 BF 09 45 D1 BF                   ...E...E..     

l2308482A:
	c.li	a0,00000000
	c.jr	ra

;; bt_onchiphci_interface_init: 2308482E
;;   Called from:
;;     2304A01E (in bl_onchiphci_interface_init)
bt_onchiphci_interface_init proc
	lui	a5,0004200F
	lui	a1,000230C6
	sw	a0,a5,+00000708
	addi	a1,a1,+00000234
	c.li	a0,00000004
	jal	zero,0000000023035342

;; bt_onchiphci_send: 23084844
;;   Called from:
;;     2304A0B6 (in bl_onchiphci_send_2_controller)
bt_onchiphci_send proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s0,a2
	c.beqz	a0,000000002308486C

l23084854:
	c.li	a5,00000001
	c.mv	s2,a0
	beq	a0,a5,0000000023084916

l2308485C:
	c.li	a0,FFFFFFFF

l2308485E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2308486C:
	lhu	a0,a2,+00000000
	c.mv	s3,a1
	jal	ra,0000000023034A70
	lbu	s1,s0,+00000008
	sh	zero,sp,+00000006
	c.mv	s2,a0
	c.bnez	s1,00000000230848DE

l23084882:
	lhu	a3,sp,+00000006
	lhu	a2,s0,+00000000
	c.lui	a0,00001000
	c.mv	a1,s3
	addi	a0,a0,-000007FB
	jal	ra,000000002302BC8C
	c.mv	s3,a0
	c.beqz	a0,000000002308485C

l2308489A:
	lhu	a5,sp,+00000006
	c.beqz	a5,00000000230848C0

l230848A0:
	lw	a4,s2,+00000004
	c.beqz	a4,00000000230848C0

l230848A6:
	lbu	a5,s2,+00000002
	slli	a3,s1,00000010
	c.srli	a3,00000010
	andi	a5,a5,+00000040
	c.lw	s0,4(a1)
	addi	a2,sp,+00000006
	c.bnez	a5,0000000023084912

l230848BC:
	jal	ra,0000000023034D20

l230848C0:
	c.li	a5,00000001
	sb	a5,sp,+00000008
	c.swsp	s3,00000084

l230848C8:
	c.li	a1,FFFFFFFF
	c.addi4spn	a0,00000008
	jal	ra,000000002302903C
	xori	a0,a0,+00000001
	andi	a0,a0,+000000FF
	sub	a0,zero,a0
	c.j	000000002308485E

l230848DE:
	c.lw	a0,4(a4)
	c.beqz	a4,0000000023084882

l230848E2:
	lbu	a5,a0,+00000002
	slli	a3,s1,00000010
	c.srli	a3,00000010
	andi	a5,a5,+00000040
	addi	a2,sp,+00000006
	c.bnez	a5,0000000023084906

l230848F6:
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,0000000023034D20

l230848FE:
	c.li	a5,00000001
	bne	a0,a5,0000000023084882

l23084904:
	c.j	000000002308485C

l23084906:
	c.lw	s0,4(a1)
	c.li	a0,00000000
	c.jalr	a4
	andi	a0,a0,+000000FF
	c.j	00000000230848FE

l23084912:
	c.jalr	a4
	c.j	00000000230848C0

l23084916:
	c.lui	a0,00001000
	c.li	a3,0000000C
	c.li	a2,00000000
	addi	a0,a0,-000007F9
	jal	ra,000000002302BC8C
	c.mv	s1,a0
	c.beqz	a0,000000002308485C

l23084928:
	csrrs	s3,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	a0,00042026
	addi	a0,a0,+000002D0
	jal	ra,000000002302A36A
	csrrw	zero,mstatus,zero
	c.sw	s1,8(a0)
	beq	a0,zero,000000002308485C

l23084946:
	lhu	a5,s0,+00000000
	lui	a4,00028008
	sh	a5,s1,+00000000
	lbu	a5,s0,+00000002
	sb	a5,s1,+00000002
	lhu	a2,s0,+00000004
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	sh	a2,s1,+00000004
	lhu	a0,a0,+00000006
	c.lw	s0,8(a1)
	c.add	a0,a4
	c.jalr	a5
	sb	s2,sp,+00000008
	c.swsp	s1,00000084
	c.j	00000000230848C8

;; bt_onchiphci_hanlde_rx_acl: 2308497C
bt_onchiphci_hanlde_rx_acl proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.addi	a0,FFFFFFF4
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.mv	s2,a1
	jal	ra,0000000023034FD2
	lbu	s0,a0,+00000002
	lui	a5,0004200F
	lw	a5,a5,+000003D0
	c.addi	s0,00000004
	andi	s0,s0,+000000FF
	c.mv	a1,a0
	c.mv	a2,s0
	c.mv	a0,s2
	c.jalr	a5
	lbu	a0,s1,+00000006
	jal	ra,000000002302CC48
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; bl_mtd_open: 230849C0
;;   Called from:
;;     2305AB90 (in ota_tcp_cmd.part.0)
;;     23060A2A (in ef_port_init)
;;     23078CA2 (in romfs_register)
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
	jal	ra,000000002306488A
	beq	a0,zero,0000000023084B56

l230849E2:
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.mv	s0,a0
	jal	ra,00000000230A3A68
	c.li	a2,00000010
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230A439C
	andi	a5,s2,+00000002
	andi	s2,s2,+00000001
	beq	s2,zero,0000000023084A6E

l23084A04:
	c.beqz	a5,0000000023084A68

l23084A06:
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.mv	a0,s1
	jal	ra,000000002306787E
	c.mv	a2,a0
	c.bnez	a0,0000000023084A18

l23084A14:
	c.lwsp	s0,000000E4
	c.bnez	a5,0000000023084A36

l23084A18:
	lui	a0,000230C6
	c.mv	a1,s1
	addi	a0,a0,+0000026C
	jal	ra,0000000023082388
	lui	a0,000230C6
	c.mv	a1,s1
	addi	a0,a0,+000002A0
	jal	ra,0000000023082388

l23084A34:
	c.j	0000000023084A34

l23084A36:
	c.sw	s0,28(a5)

l23084A38:
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.mv	a0,s1
	jal	ra,00000000230679B2
	c.mv	a2,a0
	c.bnez	a0,0000000023084A4A

l23084A46:
	c.lwsp	s0,000000E4
	c.bnez	a5,0000000023084AD8

l23084A4A:
	lui	a0,000230C6
	c.mv	a1,s1
	addi	a0,a0,+0000026C
	jal	ra,0000000023082388
	lui	a0,000230C6
	c.mv	a1,s1
	addi	a0,a0,+000002A0
	jal	ra,0000000023082388

l23084A66:
	c.j	0000000023084A66

l23084A68:
	sw	zero,s0,+0000001C
	c.j	0000000023084A38

l23084A6E:
	c.beqz	a5,0000000023084AD2

l23084A70:
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.mv	a0,s1
	jal	ra,0000000023067842
	c.mv	a2,a0
	c.bnez	a0,0000000023084A82

l23084A7E:
	c.lwsp	s0,000000E4
	c.bnez	a5,0000000023084AA0

l23084A82:
	lui	a0,000230C6
	c.mv	a1,s1
	addi	a0,a0,+0000026C
	jal	ra,0000000023082388
	lui	a0,000230C6
	c.mv	a1,s1
	addi	a0,a0,+000002A0
	jal	ra,0000000023082388

l23084A9E:
	c.j	0000000023084A9E

l23084AA0:
	c.sw	s0,28(a5)

l23084AA2:
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.mv	a0,s1
	jal	ra,0000000023067976
	c.mv	a2,a0
	c.bnez	a0,0000000023084AB4

l23084AB0:
	c.lwsp	s0,000000E4
	c.bnez	a5,0000000023084AD8

l23084AB4:
	lui	a0,000230C6
	c.mv	a1,s1
	addi	a0,a0,+0000026C
	jal	ra,0000000023082388
	lui	a0,000230C6
	c.mv	a1,s1
	addi	a0,a0,+000002A0
	jal	ra,0000000023082388

l23084AD0:
	c.j	0000000023084AD0

l23084AD2:
	sw	zero,s0,+0000001C
	c.j	0000000023084AA2

l23084AD8:
	c.sw	s0,20(a5)
	c.lwsp	a2,000000E4
	lui	a0,000230C6
	addi	a0,a0,+000002E4
	c.sw	s0,24(a5)
	jal	ra,000000002308234C
	lui	a0,000230C6
	c.mv	a1,s0
	addi	a0,a0,+0000030C
	jal	ra,0000000023082388
	c.lw	s0,16(a1)
	lui	a0,000230C6
	addi	a0,a0,+0000031C
	jal	ra,0000000023082388
	c.lw	s0,20(a2)
	lui	a0,000230C6
	addi	a0,a0,+0000032C
	c.mv	a1,a2
	jal	ra,0000000023082388
	c.lw	s0,24(a1)
	lui	a0,000230C6
	addi	a0,a0,+00000344
	srli	a2,a1,0000000A
	jal	ra,0000000023082388
	c.lw	s0,28(a1)
	lui	a0,000230C6
	addi	a0,a0,+00000360
	jal	ra,0000000023082388
	lui	a0,000230C6
	addi	a0,a0,+00000374
	jal	ra,000000002308234C
	c.li	a0,00000000
	sw	s0,s3,+00000000

l23084B48:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23084B56:
	c.li	a0,FFFFFFFF
	c.j	0000000023084B48

;; bl_mtd_close: 23084B5A
;;   Called from:
;;     2305ABBE (in ota_tcp_cmd.part.0)
bl_mtd_close proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023064972
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_mtd_info: 23084B6A
;;   Called from:
;;     23060A5E (in ef_port_init)
;;     23078D00 (in romfs_register)
bl_mtd_info proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a1
	c.swsp	s1,00000080
	c.mv	a1,a0
	c.mv	s1,a0
	c.mv	a0,s0
	c.swsp	ra,00000084
	jal	ra,00000000230A4170
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

;; bl_mtd_erase: 23084B96
;;   Called from:
;;     230609DA (in ef_port_erase)
bl_mtd_erase proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,20(a0)
	c.add	a0,a1
	c.mv	a1,a2
	jal	ra,0000000023069C64
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_mtd_erase_all: 23084BAC
;;   Called from:
;;     2305AC8C (in ota_tcp_cmd.part.0)
bl_mtd_erase_all proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,24(a1)
	c.lw	a0,20(a0)
	jal	ra,0000000023069C64
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_mtd_write: 23084BC0
;;   Called from:
;;     2305AF0E (in ota_tcp_cmd.part.0)
;;     23060948 (in ef_port_write)
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
	jal	ra,00000000230650DE
	c.beqz	a0,0000000023084C58

l23084BDE:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023084C2A

l23084BE8:
	jal	ra,00000000230629C6

l23084BEC:
	c.mv	a1,a0
	lui	a3,000230C6
	lui	a2,000230C0
	lui	a0,000230C6
	c.mv	a6,s0
	c.mv	a5,s2
	addi	a4,zero,+000000C9
	addi	a3,a3,+0000039C
	addi	a2,a2,+000003D4
	addi	a0,a0,+000003A8
	jal	ra,000000002307A208
	addi	s4,zero,+00000040

l23084C16:
	c.bnez	s0,0000000023084C30

l23084C18:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.li	a0,00000000
	c.addi16sp	00000060
	c.jr	ra

l23084C2A:
	jal	ra,00000000230629A4
	c.j	0000000023084BEC

l23084C30:
	c.mv	s3,s0
	bgeu	s4,s0,0000000023084C3A

l23084C36:
	addi	s3,zero,+00000040

l23084C3A:
	c.mv	a1,s2
	c.mv	a2,s3
	c.mv	a0,sp
	jal	ra,00000000230A382C
	c.mv	a0,s1
	c.mv	a2,s3
	c.mv	a1,sp
	jal	ra,0000000023069C94
	c.add	s1,s3
	c.add	s2,s3
	sub	s0,s0,s3
	c.j	0000000023084C16

l23084C58:
	c.mv	a2,s0
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023069C94
	c.j	0000000023084C18

;; bl_mtd_read: 23084C64
;;   Called from:
;;     23060928 (in ef_port_read)
bl_mtd_read proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,20(a0)
	c.add	a0,a1
	c.mv	a1,a3
	jal	ra,0000000023069CC6
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bloop_init: 23084C7A
;;   Called from:
;;     2306A014 (in looprt_start)
;;     2306A06E (in looprt_start_auto)
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
	jal	ra,00000000230A3A68
	addi	s2,s0,+00000210

l23084C98:
	c.mv	a0,s1
	c.addi	s1,00000008
	jal	ra,000000002307A456
	bne	s1,s2,0000000023084C98

l23084CA4:
	addi	a5,s0,+00000490
	sw	a5,s0,+00000494
	sw	a5,s0,+00000490
	lui	a0,000230C6
	addi	a5,s0,+00000498
	sw	a5,s0,+0000049C
	sw	a5,s0,+00000498
	addi	a1,zero,+00000020
	addi	a0,a0,+000003EC
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bloop_handler_register: 23084CDA
;;   Called from:
;;     2306A026 (in looprt_start)
;;     2306A080 (in looprt_start_auto)
;;     2306A0C8 (in looprt_handler_register)
bloop_handler_register proc
	c.li	a5,0000001F
	bltu	a5,a2,0000000023084CF4

l23084CE0:
	c.slli	a2,02
	c.add	a2,a0
	lw	a5,a2,+00000410
	c.li	a0,FFFFFFFF
	c.bnez	a5,0000000023084CF6

l23084CEC:
	sw	a1,a2,+00000410
	c.li	a0,00000000
	c.jr	ra

l23084CF4:
	c.li	a0,FFFFFFFF

l23084CF6:
	c.jr	ra

;; bloop_timer_init: 23084CF8
;;   Called from:
;;     23069FC2 (in looprt_evt_schedule)
;;     2306A492 (in loopset_led_trigger)
bloop_timer_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	addi	a2,zero,+00000024
	c.mv	s1,a1
	c.li	a1,00000000
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,00000000230A3A68
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

;; bloop_timer_configure: 23084D26
;;   Called from:
;;     23069FD2 (in looprt_evt_schedule)
;;     2306A4AE (in loopset_led_trigger)
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
	jal	ra,00000000230629A4
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

;; bloop_timer_repeat_enable: 23084D5C
;;   Called from:
;;     2306A498 (in loopset_led_trigger)
bloop_timer_repeat_enable proc
	lbu	a5,a0,+00000008
	ori	a5,a5,+00000001
	sb	a5,a0,+00000008
	c.jr	ra

;; bloop_timer_repeat_reconfigure: 23084D6A
;;   Called from:
;;     23085146 (in bloop_run)
bloop_timer_repeat_reconfigure proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s1,a0
	c.lw	a0,16(s0)
	c.lw	a0,12(a0)
	c.sub	s0,a0
	jal	ra,00000000230629A4
	c.add	s0,a0
	c.sw	s1,16(s0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.sw	s1,12(a0)
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bloop_timer_register: 23084D8E
;;   Called from:
;;     23069FEC (in looprt_evt_schedule)
;;     2306A0DE (in looprt_timer_register)
;;     2308514E (in bloop_run)
bloop_timer_register proc
	lw	a2,a0,+00000494
	addi	a3,a0,+00000490
	bne	a3,a2,0000000023084DDA

l23084D9A:
	c.sw	a1,4(a3)
	c.sw	a1,0(a3)
	sw	a1,a0,+00000494
	sw	a1,a0,+00000490
	c.jr	ra

l23084DA8:
	lw	a6,a1,+00000010
	lw	a7,a4,+00000010
	sub	a6,a6,a7
	blt	zero,a6,0000000023084DC6

l23084DB8:
	c.bnez	a5,0000000023084DCE

l23084DBA:
	c.sw	a1,4(a2)
	c.sw	a1,0(a3)
	sw	a1,a0,+00000494
	c.sw	a2,0(a1)
	c.jr	ra

l23084DC6:
	c.mv	a5,a4
	c.lw	a4,4(a4)

l23084DCA:
	bne	a3,a4,0000000023084DA8

l23084DCE:
	c.lw	a5,4(a4)
	c.sw	a1,0(a5)
	c.sw	a1,4(a4)
	c.sw	a5,4(a1)
	c.sw	a4,0(a1)
	c.jr	ra

l23084DDA:
	c.mv	a4,a2
	c.li	a5,00000000
	c.j	0000000023084DCA

;; bloop_wait_startup: 23084DE0
;;   Called from:
;;     2306A050 (in looprt_start)
;;     2306A0A8 (in looprt_start_auto)
bloop_wait_startup proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0

l23084DE8:
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023084DF4

l23084DEC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23084DF4:
	c.li	a0,00000001
	jal	ra,0000000023062CC4
	c.j	0000000023084DE8

;; bloop_evt_set_async: 23084DFC
;;   Called from:
;;     23069F92 (in looprt_evt_notify_async)
bloop_evt_set_async proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.li	a5,0000001F
	bgeu	a5,a1,0000000023084E22

l23084E08:
	lui	a1,000230C6
	lui	a0,000230C3
	addi	a2,zero,+0000015A
	addi	a1,a1,+000003DC
	addi	a0,a0,+00000498
	jal	ra,0000000023082388

l23084E20:
	c.j	0000000023084E20

l23084E22:
	c.mv	s0,a0
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	jal	ra,0000000023063658
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
	jal	ra,000000002306366C
	c.lw	s0,0(a0)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.li	a3,00000000
	c.li	a2,00000002
	c.li	a1,00000000
	c.addi16sp	00000020
	jal	zero,0000000023063940

;; bloop_evt_set_sync: 23084E5C
;;   Called from:
;;     230850D2 (in bloop_run)
bloop_evt_set_sync proc
	c.li	a5,0000001F
	bgeu	a5,a1,0000000023084E80

l23084E62:
	lui	a1,000230C6
	lui	a0,000230C3
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+00000177
	addi	a1,a1,+000003DC
	addi	a0,a0,+00000498
	c.swsp	ra,00000084
	jal	ra,0000000023082388

l23084E7E:
	c.j	0000000023084E7E

l23084E80:
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

;; bloop_evt_unset_sync: 23084E98
;;   Called from:
;;     23084FDC (in bloop_run)
bloop_evt_unset_sync proc
	c.li	a5,0000001F
	bgeu	a5,a1,0000000023084EBC

l23084E9E:
	lui	a1,000230C6
	lui	a0,000230C3
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+0000017F
	addi	a1,a1,+000003DC
	addi	a0,a0,+00000498
	c.swsp	ra,00000084
	jal	ra,0000000023082388

l23084EBA:
	c.j	0000000023084EBA

l23084EBC:
	c.li	a5,00000001
	sll	a5,a5,a1
	c.lw	a0,8(a1)
	xori	a5,a5,-00000001
	c.and	a5,a1
	c.sw	a0,8(a5)
	c.jr	ra

;; bloop_run: 23084ECE
;;   Called from:
;;     23069F70 (in proc_entry_looprt)
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
	jal	ra,0000000023063372
	c.sw	s0,0(a0)
	lui	s2,00042028
	lui	s3,00042028
	lui	s4,0004200F
	lui	s5,000230C6

l23084F02:
	addi	s7,s0,+00000490

l23084F06:
	jal	ra,0000000023063658
	c.lw	s0,8(a5)
	c.lw	s0,4(a4)
	sw	zero,s0,+00000004
	c.or	a5,a4
	c.sw	s0,8(a5)
	jal	ra,000000002306366C
	c.lw	s0,8(a5)
	c.bnez	a5,0000000023084FE2

l23084F1E:
	lw	a5,s0,+00000494
	c.li	a1,FFFFFFFF
	beq	a5,s7,0000000023084F36

l23084F28:
	c.lw	a5,16(s1)
	jal	ra,00000000230629A4
	sub	a1,s1,a0
	bge	zero,a1,0000000023084FE2

l23084F36:
	c.li	a0,00000001
	jal	ra,00000000230637BA
	c.j	0000000023084F06

l23084F3E:
	c.li	a5,0000001F
	sub	s1,a5,s1
	c.li	a5,FFFFFFFF
	beq	s1,a5,0000000023084FFC

l23084F4A:
	slli	s6,s1,00000002
	c.add	s6,s0
	lw	a1,s6,+00000410
	c.bnez	a1,0000000023084F70

l23084F56:
	lui	a1,000230C6
	lui	a0,000230C3
	addi	a2,zero,+00000105
	addi	a1,a1,+000003DC
	addi	a0,a0,+00000498
	jal	ra,0000000023082388

l23084F6E:
	c.j	0000000023084F6E

l23084F70:
	c.swsp	a1,00000084
	jal	ra,0000000023063658
	lw	a4,s6,+00000010
	lw	a5,s6,+00000090
	sw	zero,s6,+00000010
	c.or	a5,a4
	sw	a5,s6,+00000090
	jal	ra,000000002306366C
	jal	ra,0000000023069AF6
	c.lwsp	a2,00000064
	addi	a3,s1,+00000024
	c.slli	a3,02
	c.lw	a1,4(a5)
	c.mv	s6,a0
	c.add	a3,s0
	addi	a2,s0,+00000008
	c.mv	a0,s0
	c.jalr	a5
	jal	ra,0000000023069AF6
	slli	a5,s1,00000004
	c.add	a5,s0
	lw	a4,a5,+00000218
	sub	a0,a0,s6
	sw	a0,a5,+00000214
	c.add	a4,a0
	sw	a4,a5,+00000218
	lw	a4,a5,+00000210
	bgeu	a4,a0,0000000023084FCE

l23084FCA:
	sw	a0,a5,+00000210

l23084FCE:
	lw	a4,a5,+0000021C
	c.mv	a1,s1
	c.mv	a0,s0
	c.addi	a4,00000001
	sw	a4,a5,+0000021C
	jal	ra,0000000023084E98
	c.j	0000000023084F02

l23084FE2:
	lw	a5,s0,+00000494
	bne	a5,s7,0000000023085032

l23084FEA:
	c.lw	s0,8(a0)
	jal	ra,000000002309F27C
	c.mv	s1,a0
	c.lw	s0,12(a0)
	jal	ra,000000002309F27C
	bge	a0,s1,0000000023084F3E

l23084FFC:
	c.li	a5,0000001F
	sub	a0,a5,a0
	c.li	a5,FFFFFFFF
	beq	a0,a5,0000000023084F02

l23085008:
	addi	a0,a0,+00000022
	c.slli	a0,03
	c.add	a0,s0
	jal	ra,000000002307A474
	bne	a0,zero,0000000023084F02

l23085018:
	lui	a1,000230C6
	lui	a0,000230C3
	addi	a2,zero,+00000124
	addi	a1,a1,+000003DC
	addi	a0,a0,+00000498
	jal	ra,0000000023082388

l23085030:
	c.j	0000000023085030

l23085032:
	jal	ra,00000000230629A4
	lw	s1,s0,+00000494
	c.mv	s9,a0
	c.li	s6,00000000
	c.beqz	s1,0000000023085044

l23085040:
	lw	s6,s1,+00000004

l23085044:
	addi	s8,s0,+00000498

l23085048:
	bne	s1,s7,00000000230850C2

l2308504C:
	lw	s1,s0,+0000049C
	c.li	s6,00000000
	c.beqz	s1,0000000023085058

l23085054:
	lw	s6,s1,+00000004

l23085058:
	c.li	s7,00000001
	lui	s9,000230C2
	lui	s10,000230C6
	lui	s11,000230C6

l23085066:
	beq	s1,s8,0000000023084FEA

l2308506A:
	c.lw	s1,0(a4)
	c.lw	s1,4(a5)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	lbu	a5,s1,+00000008
	andi	a4,a5,+00000002
	c.beqz	a4,0000000023085110

l2308507C:
	lbu	a5,s2,+000000F0
	bltu	s7,a5,00000000230850AC

l23085084:
	lbu	a5,s3,+000000F1
	bltu	s7,a5,00000000230850AC

l2308508C:
	lw	a5,s4,+00000560
	c.beqz	a5,000000002308510A

l23085092:
	jal	ra,00000000230629C6

l23085096:
	c.mv	a1,a0
	addi	a4,zero,+000000B8
	addi	a3,s5,+000003DC
	addi	a2,s9,-00000768
	addi	a0,s11,+00000404
	jal	ra,000000002307A208

l230850AC:
	c.mv	a0,s1
	jal	ra,0000000023064972

l230850B2:
	c.li	a5,00000000
	beq	s6,zero,00000000230850BC

l230850B8:
	lw	a5,s6,+00000004

l230850BC:
	c.mv	s1,s6
	c.mv	s6,a5
	c.j	0000000023085066

l230850C2:
	c.lw	s1,16(a5)
	sub	a5,s9,a5
	blt	a5,zero,000000002308504C

l230850CC:
	c.lw	s1,24(a2)
	c.lw	s1,20(a1)
	c.mv	a0,s0
	jal	ra,0000000023084E5C
	c.lw	s1,28(a5)
	c.beqz	a5,00000000230850E2

l230850DA:
	c.lw	s1,32(a2)
	c.mv	a1,s1
	c.mv	a0,s0
	c.jalr	a5

l230850E2:
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
	beq	s6,zero,0000000023085104

l23085100:
	lw	a5,s6,+00000004

l23085104:
	c.mv	s1,s6
	c.mv	s6,a5
	c.j	0000000023085048

l2308510A:
	jal	ra,00000000230629A4
	c.j	0000000023085096

l23085110:
	c.andi	a5,00000001
	c.beqz	a5,00000000230850B2

l23085114:
	lbu	a5,s2,+000000F0
	bltu	s7,a5,0000000023085144

l2308511C:
	lbu	a5,s3,+000000F1
	bltu	s7,a5,0000000023085144

l23085124:
	lw	a5,s4,+00000560
	c.beqz	a5,0000000023085154

l2308512A:
	jal	ra,00000000230629C6

l2308512E:
	c.mv	a1,a0
	addi	a4,zero,+000000BB
	addi	a3,s5,+000003DC
	addi	a2,s9,-00000768
	addi	a0,s10,+00000424
	jal	ra,000000002307A208

l23085144:
	c.mv	a0,s1
	jal	ra,0000000023084D6A
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023084D8E
	c.j	00000000230850B2

l23085154:
	jal	ra,00000000230629A4
	c.j	000000002308512E

;; bloop_status_dump: 2308515A
;;   Called from:
;;     23069F9E (in looprt_evt_status_dump)
;;     2308530C (in loop_evt_entity_sys_evt)
bloop_status_dump proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.mv	s0,a0
	lui	a0,000230C6
	addi	a0,a0,+00000450
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
	jal	ra,000000002308234C
	c.lw	s0,8(a1)
	lui	a0,000230C6
	addi	a0,a0,+0000046C
	jal	ra,0000000023082388
	c.lw	s0,12(a1)
	lui	a0,000230C6
	addi	a0,a0,+00000480
	jal	ra,0000000023082388
	jal	ra,00000000230629A4
	c.mv	s4,a0
	lui	a0,000230C6
	addi	a0,a0,+00000494
	jal	ra,000000002308234C
	lw	s1,s0,+00000494
	addi	s3,s0,+00000490
	c.li	s2,00000000
	lui	s5,000230C6

l230851C0:
	bne	s3,s1,0000000023085294

l230851C4:
	lui	a0,000230C6
	addi	a1,zero,+00000020
	addi	a0,a0,+000004F8
	lui	s3,000230C6
	addi	s1,s0,+0000008C
	jal	ra,0000000023082388
	addi	s0,s0,+00000400
	c.li	s2,0000001F
	addi	s3,s3,+00000448
	lui	s5,000230C6
	lui	s6,000230C6
	lui	s7,000230C6
	lui	s8,000230C6
	lui	s9,000230C6
	lui	s10,000230C6

l230851FE:
	lw	a5,s1,+00000400
	c.mv	a2,s3
	c.beqz	a5,0000000023085208

l23085206:
	c.lw	a5,0(a2)

l23085208:
	c.mv	a1,s2
	addi	a0,s5,+00000508
	jal	ra,0000000023082388
	lw	s4,s1,+00000400
	beq	s4,zero,0000000023085268

l2308521A:
	lw	a2,s1,+00000080
	lw	a1,s4,+00000004
	addi	a0,s6,+00000520
	c.swsp	a2,00000084
	lw	s11,s1,+00000000
	jal	ra,0000000023082388
	lw	a1,s4,+00000008
	addi	a0,s7,+00000538
	jal	ra,0000000023082388
	c.lw	s0,12(a1)
	addi	a0,s8,+0000054C
	jal	ra,0000000023082388
	c.lwsp	a2,00000084
	c.mv	a1,s11
	addi	a0,s9,+00000560
	jal	ra,0000000023082388
	c.lw	s0,8(a2)
	addi	a5,zero,+000003E8
	c.lw	s0,0(a3)
	srl	a2,a2,a5
	c.lw	s0,4(a1)
	addi	a0,s10,+0000057C
	jal	ra,0000000023082388

l23085268:
	c.addi	s2,FFFFFFFF
	c.li	a5,FFFFFFFF
	c.addi	s1,FFFFFFFC
	c.addi	s0,FFFFFFF0
	bne	s2,a5,00000000230851FE

l23085274:
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

l23085294:
	c.lw	s1,16(a2)
	lw	a6,s1,+0000001C
	c.lw	s1,24(a5)
	c.lw	s1,20(a4)
	c.mv	a1,s2
	sub	a3,s4,a2
	addi	a0,s5,+000004AC
	jal	ra,0000000023082388
	c.addi	s2,00000001
	c.lw	s1,4(s1)
	c.j	00000000230851C0

;; loop_evt_entity_sys_handler: 230852B2
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
	lui	a0,000230C6
	addi	a0,a0,+00000610
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; loop_evt_entity_sys_evt: 230852E2
loop_evt_entity_sys_evt proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.lw	a3,0(s0)
	c.lw	a2,0(a1)
	c.mv	s2,a0
	lui	a0,000230C6
	c.mv	a2,s0
	addi	a0,a0,+000005BC
	c.mv	s1,a3
	jal	ra,0000000023082388

l23085302:
	andi	a5,s0,+00000001
	c.beqz	a5,0000000023085324

l23085308:
	c.mv	a0,s2
	c.andi	s0,FFFFFFFE
	jal	ra,000000002308515A
	c.bnez	s0,0000000023085302

l23085312:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	sw	zero,s1,+00000000
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23085324:
	c.beqz	s0,0000000023085312

l23085326:
	lui	a1,000230C6
	lui	a0,000230C3
	addi	a2,zero,+0000002E
	addi	a1,a1,+000005FC
	addi	a0,a0,+00000498
	jal	ra,0000000023082388

l2308533E:
	c.j	000000002308533E

;; misaligned_load_trap: 23085340
;;   Called from:
;;     23065840 (in exception_entry)
misaligned_load_trap proc
	lui	a1,000000A0
	c.li	a4,00000003
	csrrs	a3,mstatus,zero
	andi	a6,a2,+00000002
	bne	a6,zero,0000000023085362

l23085352:
	c.lw	a2,0(a5)
	and	a6,a5,a4
	beq	a6,a4,0000000023085376

l2308535C:
	c.slli	a5,10
	c.srli	a5,00000010
	c.j	0000000023085376

l23085362:
	lhu	a5,a2,+00000000
	and	a6,a5,a4
	bne	a6,a4,0000000023085376

l2308536E:
	lhu	a6,a2,+00000002
	c.slli	a6,10
	c.add	a5,a6

l23085376:
	csrrw	zero,mstatus,zero
	andi	a1,a5,+00000003
	c.mv	t4,a2
	c.mv	t6,a5
	c.li	t3,00000004
	beq	a1,a4,000000002308538A

l23085388:
	c.li	t3,00000002

l2308538A:
	c.add	t3,t4
	csrrs	t5,mtval,gp
	c.lui	a4,00007000
	c.lui	a2,00002000
	addi	a4,a4,+0000007F
	c.and	a4,a5
	addi	a1,a2,+00000003
	beq	a4,a1,0000000023085456

l230853A2:
	c.addi	a2,00000007
	beq	a4,a2,00000000230853DE

l230853A8:
	c.lui	a2,00001000
	c.addi	a2,00000003
	beq	a4,a2,0000000023085466

l230853B0:
	c.lui	a2,00005000
	c.addi	a2,00000003
	beq	a4,a2,000000002308545E

l230853B8:
	c.lui	a4,0000E000
	c.addi	a4,00000003
	c.and	a4,a5
	c.lui	a2,00004000
	beq	a4,a2,000000002308546E

l230853C4:
	c.addi	a2,00000002
	beq	a4,a2,0000000023085450

l230853CA:
	c.lui	a2,00006000
	beq	a4,a2,0000000023085480

l230853D0:
	c.addi	a2,00000002
	beq	a4,a2,00000000230853DE

l230853D6:
	csrrwi	zero,mcause,00000005
	c.ebreak

l230853DC:
	c.j	00000000230853DC

l230853DE:
	c.li	a6,00000004
	c.li	t1,00000001
	c.li	a7,00000000

l230853E4:
	c.addi	sp,FFFFFFF0
	c.li	a5,00000000
	c.li	a4,00000000
	c.swsp	a5,00000084
	c.swsp	a4,00000004
	c.add	a6,t5
	c.mv	a5,t5

l230853F2:
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
	bne	a6,a5,00000000230853F2

l23085416:
	c.lwsp	s0,000000C4
	bne	t1,zero,000000002308543A

l2308541C:
	srli	a5,t6,00000005
	andi	a5,a5,+0000007C
	sll	a4,a4,a7
	c.add	a5,a0
	sra	a7,a4,a7
	sw	a7,a5,+0000007C
	sw	t3,a0,+00000000
	c.addi	sp,00000010
	c.jr	ra

l2308543A:
	srli	a5,t6,00000007
	c.andi	a5,0000001F
	c.addi	a5,00000001
	c.slli	a5,02
	c.add	a5,a0
	c.sw	a5,0(a4)
	sw	t3,a0,+00000000
	c.addi	sp,00000010
	c.jr	ra

l23085450:
	c.srli	a5,00000007
	c.andi	a5,0000001F
	c.beqz	a5,00000000230853D6

l23085456:
	c.li	a6,00000004
	c.li	t1,00000000
	c.li	a7,00000000
	c.j	00000000230853E4

l2308545E:
	c.li	a6,00000002
	c.li	t1,00000000
	c.li	a7,00000000
	c.j	00000000230853E4

l23085466:
	c.li	a6,00000002
	c.li	t1,00000000
	c.li	a7,00000010
	c.j	00000000230853E4

l2308546E:
	c.srli	a5,00000002
	c.andi	a5,00000007
	c.addi	a5,00000008
	slli	t6,a5,00000007
	c.li	a6,00000004
	c.li	t1,00000000
	c.li	a7,00000000
	c.j	00000000230853E4

l23085480:
	c.srli	a5,00000002
	c.andi	a5,00000007
	c.addi	a5,00000008
	slli	t6,a5,00000007
	c.li	a6,00000004
	c.li	t1,00000001
	c.li	a7,00000000
	c.j	00000000230853E4

;; misaligned_store_trap: 23085492
;;   Called from:
;;     23065858 (in exception_entry)
misaligned_store_trap proc
	lui	a1,000000A0
	c.li	a4,00000003
	csrrs	a3,mstatus,zero
	andi	a6,a2,+00000002
	bne	a6,zero,00000000230854B4

l230854A4:
	c.lw	a2,0(a5)
	and	a6,a5,a4
	beq	a6,a4,00000000230854C8

l230854AE:
	c.slli	a5,10
	c.srli	a5,00000010
	c.j	00000000230854C8

l230854B4:
	lhu	a5,a2,+00000000
	and	a6,a5,a4
	bne	a6,a4,00000000230854C8

l230854C0:
	lhu	a6,a2,+00000002
	c.slli	a6,10
	c.add	a5,a6

l230854C8:
	csrrw	zero,mstatus,zero
	andi	a1,a5,+00000003
	c.addi	sp,FFFFFFF0
	c.mv	t3,a0
	c.mv	t1,a2
	c.li	t4,00000004
	beq	a1,a4,00000000230854DE

l230854DC:
	c.li	t4,00000002

l230854DE:
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
	beq	a4,a1,0000000023085584

l23085504:
	addi	a2,a2,+00000027
	beq	a4,a2,000000002308553C

l2308550C:
	c.lui	a2,00001000
	addi	a2,a2,+00000023
	beq	a4,a2,0000000023085594

l23085516:
	c.lui	a2,0000E000
	addi	a4,a2,+00000003
	c.and	a4,a5
	c.lui	a1,0000C000
	beq	a4,a1,0000000023085588

l23085524:
	c.addi	a1,00000002
	beq	a4,a1,00000000230855B2

l2308552A:
	beq	a4,a2,0000000023085598

l2308552E:
	c.addi	a2,00000002
	beq	a4,a2,00000000230855C8

l23085534:
	csrrwi	zero,mcause,00000007
	c.ebreak

l2308553A:
	c.j	000000002308553A

l2308553C:
	c.srli	a5,00000011
	andi	a0,a5,+000000F8
	c.li	a4,00000004
	auipc	a5,00000000
	c.add	a5,a0
	jalr	t0,a5,+0000009A
2308554E                                           2A C4               *.

l23085550:
	csrrs	a7,mtval,gp
	c.addi4spn	a5,00000008
	c.add	a4,a5
	sub	a7,a7,a5

l2308555C:
	add	a6,a7,a5
	lbu	a0,a5,+00000000
	lui	a1,00000020
	c.mv	a2,t1
	csrrs	a3,mstatus,zero
	sb	a0,a6,+00000000
	csrrw	zero,mstatus,zero
	c.addi	a5,00000001
	bne	a4,a5,000000002308555C

l2308557C:
	sw	t4,t3,+00000000
	c.addi	sp,00000010
	c.jr	ra

l23085584:
	c.li	a4,00000004
	c.j	0000000023085550

l23085588:
	c.andi	a5,0000001C
	c.add	a5,a0
	c.lw	a5,32(a5)
	c.li	a4,00000004
	c.swsp	a5,00000004
	c.j	0000000023085550

l23085594:
	c.li	a4,00000002
	c.j	0000000023085550

l23085598:
	srli	a0,a5,00000002
	c.andi	a0,00000007
	c.addi	a0,00000008
	c.slli	a0,03
	c.li	a4,00000004
	auipc	a5,00000000
	c.add	a5,a0
	jalr	t0,a5,+0000003A
230855AE                                           2A C4               *.
230855B0 45 B7                                           E.             

l230855B2:
	srli	a4,a5,00000007
	c.andi	a4,0000001F
	c.beqz	a4,0000000023085534

l230855BA:
	andi	a5,a5,+0000007C
	c.add	a5,a0
	c.lw	a5,0(a5)
	c.li	a4,00000004
	c.swsp	a5,00000004
	c.j	0000000023085550

l230855C8:
	c.slli	a5,01
	andi	a0,a5,+000000F8
	c.li	a4,00000004
	auipc	a5,00000000
	c.add	a5,a0
	jalr	t0,a5,+0000000E
230855DA                               2A C4 95 BF 53 05           *...S.
230855E0 00 E0 67 80 02 00 53 85 00 E0 67 80 02 00 53 05 ..g...S...g...S.
230855F0 01 E0 67 80 02 00 53 85 01 E0 67 80 02 00 53 05 ..g...S...g...S.
23085600 02 E0 67 80 02 00 53 85 02 E0 67 80 02 00 53 05 ..g...S...g...S.
23085610 03 E0 67 80 02 00 53 85 03 E0 67 80 02 00       ..g...S...g... 

l2308561E:
	fmv.x.w	a0,fs0
	jalr	zero,t0,+00000000

l23085626:
	fmv.x.w	a0,fs1
	jalr	zero,t0,+00000000

l2308562E:
	fmv.x.w	a0,fa0
	jalr	zero,t0,+00000000

l23085636:
	fmv.x.w	a0,fa1
	jalr	zero,t0,+00000000

l2308563E:
	fmv.x.w	a0,fa2
	jalr	zero,t0,+00000000

l23085646:
	fmv.x.w	a0,fa3
	jalr	zero,t0,+00000000

l2308564E:
	fmv.x.w	a0,fa4
	jalr	zero,t0,+00000000

l23085656:
	fmv.x.w	a0,fa5
	jalr	zero,t0,+00000000
2308565E                                           53 05               S.
23085660 08 E0 67 80 02 00 53 85 08 E0 67 80 02 00 53 05 ..g...S...g...S.
23085670 09 E0 67 80 02 00 53 85 09 E0 67 80 02 00 53 05 ..g...S...g...S.
23085680 0A E0 67 80 02 00 53 85 0A E0 67 80 02 00 53 05 ..g...S...g...S.
23085690 0B E0 67 80 02 00 53 85 0B E0 67 80 02 00 53 05 ..g...S...g...S.
230856A0 0C E0 67 80 02 00 53 85 0C E0 67 80 02 00 53 05 ..g...S...g...S.
230856B0 0D E0 67 80 02 00 53 85 0D E0 67 80 02 00 53 05 ..g...S...g...S.
230856C0 0E E0 67 80 02 00 53 85 0E E0 67 80 02 00 53 05 ..g...S...g...S.
230856D0 0F E0 67 80 02 00 53 85 0F E0 67 80 02 00 53 00 ..g...S...g...S.
230856E0 05 F0 67 80 02 00 D3 00 05 F0 67 80 02 00 53 01 ..g.......g...S.
230856F0 05 F0 67 80 02 00 D3 01 05 F0 67 80 02 00 53 02 ..g.......g...S.
23085700 05 F0 67 80 02 00 D3 02 05 F0 67 80 02 00 53 03 ..g.......g...S.
23085710 05 F0 67 80 02 00 D3 03 05 F0 67 80 02 00 53 04 ..g.......g...S.
23085720 05 F0 67 80 02 00 D3 04 05 F0 67 80 02 00 53 05 ..g.......g...S.
23085730 05 F0 67 80 02 00 D3 05 05 F0 67 80 02 00 53 06 ..g.......g...S.
23085740 05 F0 67 80 02 00 D3 06 05 F0 67 80 02 00 53 07 ..g.......g...S.
23085750 05 F0 67 80 02 00 D3 07 05 F0 67 80 02 00 53 08 ..g.......g...S.
23085760 05 F0 67 80 02 00 D3 08 05 F0 67 80 02 00 53 09 ..g.......g...S.
23085770 05 F0 67 80 02 00 D3 09 05 F0 67 80 02 00 53 0A ..g.......g...S.
23085780 05 F0 67 80 02 00 D3 0A 05 F0 67 80 02 00 53 0B ..g.......g...S.
23085790 05 F0 67 80 02 00 D3 0B 05 F0 67 80 02 00 53 0C ..g.......g...S.
230857A0 05 F0 67 80 02 00 D3 0C 05 F0 67 80 02 00 53 0D ..g.......g...S.
230857B0 05 F0 67 80 02 00 D3 0D 05 F0 67 80 02 00 53 0E ..g.......g...S.
230857C0 05 F0 67 80 02 00 D3 0E 05 F0 67 80 02 00 53 0F ..g.......g...S.
230857D0 05 F0 67 80 02 00 D3 0F 05 F0 67 80 02 00       ..g.......g... 

;; backtrace_riscv: 230857DE
;;   Called from:
;;     230658BE (in exception_entry)
backtrace_riscv proc
	c.li	a0,FFFFFFFF
	c.jr	ra

;; bl_sha_mutex_take: 230857E2
;;   Called from:
;;     2307A994 (in Bl_F_fast.constprop.0)
bl_sha_mutex_take proc
	lui	a5,0004200F
	lw	a0,a5,+00000594
	c.addi	sp,FFFFFFF0
	c.li	a1,FFFFFFFF
	c.swsp	ra,00000084
	jal	ra,00000000230617D0
	c.li	a4,00000001
	c.li	a5,00000000
	beq	a0,a4,000000002308584A

l230857FC:
	lui	a5,00042026
	lbu	a3,a5,+000006B4
	c.li	a4,00000004
	c.li	a5,FFFFFFFF
	bltu	a4,a3,000000002308584A

l2308580C:
	lui	a3,00042028
	lbu	a3,a3,+000000F2
	bltu	a4,a3,000000002308584A

l23085818:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023085852

l23085822:
	jal	ra,00000000230629C6

l23085826:
	c.mv	a1,a0
	lui	a3,000230C6
	lui	a2,000230AA
	lui	a0,000230C6
	addi	a4,zero,+00000036
	addi	a3,a3,+000006C0
	addi	a2,a2,-00000228
	addi	a0,a0,+000006D0
	jal	ra,000000002307A208
	c.li	a5,FFFFFFFF

l2308584A:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23085852:
	jal	ra,00000000230629A4
	c.j	0000000023085826

;; bl_sha_mutex_give: 23085858
;;   Called from:
;;     2307A9F8 (in Bl_F_fast.constprop.0)
bl_sha_mutex_give proc
	lui	a5,0004200F
	lw	a0,a5,+00000594
	c.addi	sp,FFFFFFF0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023061344
	c.li	a4,00000001
	c.li	a5,00000000
	beq	a0,a4,00000000230858C4

l23085876:
	lui	a5,00042026
	lbu	a3,a5,+000006B4
	c.li	a4,00000004
	c.li	a5,FFFFFFFF
	bltu	a4,a3,00000000230858C4

l23085886:
	lui	a3,00042028
	lbu	a3,a3,+000000F2
	bltu	a4,a3,00000000230858C4

l23085892:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,00000000230858CC

l2308589C:
	jal	ra,00000000230629C6

l230858A0:
	c.mv	a1,a0
	lui	a3,000230C6
	lui	a2,000230AA
	lui	a0,000230C6
	addi	a4,zero,+0000003F
	addi	a3,a3,+000006C0
	addi	a2,a2,-00000228
	addi	a0,a0,+00000694
	jal	ra,000000002307A208
	c.li	a5,FFFFFFFF

l230858C4:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l230858CC:
	jal	ra,00000000230629A4
	c.j	00000000230858A0

;; bl_sha_init: 230858D2
;;   Called from:
;;     2307AB26 (in utils_hmac_sha1_fast)
;;     2307AB80 (in utils_hmac_sha1_fast)
;;     2307ABD8 (in utils_hmac_sha1_fast)
bl_sha_init proc
	c.addi	sp,FFFFFFF0
	addi	a4,a0,+00000054
	addi	a3,a0,+00000014
	c.mv	a2,a1
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,00000000230834BC
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,000000002308350C

;; bl_sha_update: 230858F0
;;   Called from:
;;     2307AB30 (in utils_hmac_sha1_fast)
;;     2307AB8C (in utils_hmac_sha1_fast)
;;     2307ABE4 (in utils_hmac_sha1_fast)
;;     2307ABEE (in utils_hmac_sha1_fast)
;;     2307AC40 (in utils_hmac_sha1_fast)
bl_sha_update proc
	c.addi	sp,FFFFFFF0
	c.mv	a3,a2
	c.mv	a2,a1
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,000000002308351E
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; bl_sha_finish: 23085904
;;   Called from:
;;     2307AB38 (in utils_hmac_sha1_fast)
;;     2307AB9A (in utils_hmac_sha1_fast)
;;     2307ABF6 (in utils_hmac_sha1_fast)
bl_sha_finish proc
	c.addi	sp,FFFFFFF0
	c.mv	a2,a1
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,000000002308352C
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; hal_hbn_init: 23085916
;;   Called from:
;;     2307D39A (in deep_sleep)
hal_hbn_init proc
	addi	a5,a1,-00000001
	c.addi	sp,FFFFFFE0
	c.slli	a5,18
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.srai	a5,00000018
	bge	a5,zero,000000002308596C

l2308592A:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023085966

l23085934:
	jal	ra,00000000230629C6

l23085938:
	lui	a3,000230C6
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C6
	addi	a4,zero,+00000051
	addi	a3,a3,+00000710
	addi	a2,a2,-00000228
	addi	a0,a0,+0000071C

l23085956:
	jal	ra,000000002307A208
	c.li	a0,FFFFFFFF

l2308595C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23085966:
	jal	ra,00000000230629A4
	c.j	0000000023085938

l2308596C:
	c.mv	s0,a0
	addi	a0,a1,+00000003
	c.swsp	a1,00000084
	jal	ra,000000002306488A
	c.mv	s1,a0
	c.lwsp	a2,00000084
	c.bnez	a0,00000000230859B2

l2308597E:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,00000000230859AC

l23085988:
	jal	ra,00000000230629C6

l2308598C:
	lui	a3,000230C6
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C6
	addi	a4,zero,+00000056
	addi	a3,a3,+00000710
	addi	a2,a2,-00000228
	addi	a0,a0,+0000073C
	c.j	0000000023085956

l230859AC:
	jal	ra,00000000230629A4
	c.j	000000002308598C

l230859B2:
	c.li	a5,00000001
	sb	a5,a0,+00000001
	sb	a2,a0,+00000000
	c.mv	a1,s0
	c.addi	a0,00000002
	lui	s0,0004200F
	jal	ra,00000000230A382C
	lw	a5,s0,+0000070C
	addi	s0,s0,+0000070C
	c.bnez	a5,0000000023085A56

l230859D2:
	c.li	a0,00000008
	jal	ra,000000002306488A
	c.sw	s0,0(a0)
	c.bnez	a0,0000000023085A4A

l230859DC:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023085A44

l230859E6:
	jal	ra,00000000230629C6

l230859EA:
	lui	a3,000230C6
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C6
	addi	a4,zero,+00000030
	addi	a3,a3,+00000710
	addi	a2,a2,-00000228
	addi	a0,a0,+0000075C
	jal	ra,000000002307A208

l23085A0C:
	c.lw	s0,0(a5)
	c.bnez	a5,0000000023085A56

l23085A10:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023085A50

l23085A1A:
	jal	ra,00000000230629C6

l23085A1E:
	lui	a3,000230C6
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C6
	addi	a4,zero,+0000003C
	addi	a3,a3,+00000710
	addi	a2,a2,-00000228
	addi	a0,a0,+00000780

l23085A3C:
	jal	ra,000000002307A208

l23085A40:
	c.li	a0,00000000
	c.j	000000002308595C

l23085A44:
	jal	ra,00000000230629A4
	c.j	00000000230859EA

l23085A4A:
	jal	ra,000000002309D5BC
	c.j	0000000023085A0C

l23085A50:
	jal	ra,00000000230629A4
	c.j	0000000023085A1E

l23085A56:
	c.li	a0,00000010
	jal	ra,000000002306488A
	c.mv	a1,a0
	c.bnez	a0,0000000023085A94

l23085A60:
	lui	a5,0004200F
	lw	a5,a5,+00000560
	c.beqz	a5,0000000023085A8E

l23085A6A:
	jal	ra,00000000230629C6

l23085A6E:
	lui	a3,000230C6
	lui	a2,000230AA
	c.mv	a1,a0
	lui	a0,000230C6
	addi	a4,zero,+00000041
	addi	a3,a3,+00000710
	addi	a2,a2,-00000228
	addi	a0,a0,+0000075C
	c.j	0000000023085A3C

l23085A8E:
	jal	ra,00000000230629A4
	c.j	0000000023085A6E

l23085A94:
	lui	a5,00023086
	addi	a5,a5,-0000053C
	c.sw	a0,4(a5)
	c.sw	a0,8(s1)
	c.lw	s0,0(a0)
	jal	ra,000000002309D5CC
	c.j	0000000023085A40

;; hal_hbn_enter: 23085AA8
;;   Called from:
;;     2307D3CE (in deep_sleep)
hal_hbn_enter proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004200F
	c.swsp	a0,00000084
	lw	a0,a5,+0000070C
	c.addi4spn	a1,0000000C
	c.swsp	ra,0000008C
	jal	ra,000000002309D5EA
	c.lwsp	t3,00000020
	c.li	a0,FFFFFFFF
	c.addi16sp	00000020
	c.jr	ra

;; bl_hbn_enter: 23085AC4
bl_hbn_enter proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.mv	s2,a1
	lui	a1,000230C6
	c.swsp	s0,00000014
	c.li	a2,00000014
	c.mv	s0,a0
	addi	a1,a1,+000007A8
	c.addi4spn	a0,0000000C
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	addi	s1,s0,+00000002
	jal	ra,00000000230A382C
	c.beqz	s0,0000000023085B20

l23085AE8:
	lbu	a1,s0,+00000000
	lui	a0,000230C6
	addi	a0,a0,+000007BC
	jal	ra,0000000023082388
	lbu	a1,s0,+00000001
	lui	a0,000230C6
	addi	a0,a0,+000007D0
	jal	ra,0000000023082388
	lbu	a3,s0,+00000000
	lui	a0,000230C6
	c.li	a4,00000000
	c.mv	a2,s1
	addi	a1,zero,+0000009C
	addi	a0,a0,+000007E4
	jal	ra,000000002307A236

l23085B20:
	lw	a5,s2,+00000000
	addi	a4,zero,+000003E8
	addi	a5,a5,+000003E7
	srl	a5,a5,a4
	c.swsp	a5,00000008
	c.beqz	s1,0000000023085B46

l23085B34:
	lbu	s1,s0,+00000000
	c.li	a4,00000001
	addi	a5,s1,-00000001
	andi	a5,a5,+000000FF
	bgeu	a4,a5,0000000023085B60

l23085B46:
	lui	a0,000230C6
	addi	a0,a0,+000007F0

l23085B4E:
	jal	ra,0000000023082388

l23085B52:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.li	a0,FFFFFFFF
	c.addi16sp	00000030
	c.jr	ra

l23085B60:
	lbu	a5,s0,+00000002
	bne	s1,a4,0000000023085BBC

l23085B68:
	addi	a4,a5,-00000007
	andi	a4,a4,+000000FF
	bltu	s1,a4,0000000023085BE8

l23085B74:
	c.li	a4,00000007
	bne	a5,a4,0000000023085BA8

l23085B7A:
	lui	a0,000230C7
	addi	a0,a0,-000007FC
	jal	ra,0000000023082388
	sb	s1,sp,+00000014

l23085B8A:
	jal	ra,0000000023069F06
	c.swsp	a0,0000000C
	c.li	a0,00000000
	jal	ra,0000000023083944
	c.li	a0,00000001
	jal	ra,0000000023083944
	c.addi4spn	a0,0000000C
	auipc	ra,0001EF87
	jalr	ra,ra,-00000594
	c.j	0000000023085B52

l23085BA8:
	lui	a0,000230C7
	addi	a0,a0,-000007EC
	jal	ra,0000000023082388
	c.li	a5,00000002

l23085BB6:
	sb	a5,sp,+00000014
	c.j	0000000023085B8A

l23085BBC:
	c.li	a4,00000007
	bne	a5,a4,0000000023085BDC

l23085BC2:
	lbu	a4,s0,+00000003
	c.li	a5,00000008

l23085BC8:
	bne	a5,a4,0000000023085BE8

l23085BCC:
	lui	a0,000230C7
	addi	a0,a0,-000007DC
	jal	ra,0000000023082388
	c.li	a5,00000003
	c.j	0000000023085BB6

l23085BDC:
	c.li	a3,00000008
	bne	a5,a3,0000000023085BE8

l23085BE2:
	lbu	a5,s0,+00000003
	c.j	0000000023085BC8

l23085BE8:
	lui	a0,000230C7
	addi	a0,a0,-000007CC
	c.j	0000000023085B4E

;; httpc_tcp_sent: 23085BF2
httpc_tcp_sent proc
	c.li	a0,00000000
	c.jr	ra

;; httpc_get_internal_addr: 23085BF6
;;   Called from:
;;     23085F48 (in httpc_dns_found)
;;     23086240 (in httpc_get_file)
;;     230862AA (in httpc_get_file_dns)
httpc_get_internal_addr proc
	addi	a5,a0,+00000004
	beq	a5,a1,0000000023085C02

l23085BFE:
	c.lw	a1,0(a4)
	c.sw	a0,4(a4)

l23085C02:
	lhu	a2,a0,+00000008
	c.lw	a0,0(a0)
	lui	a3,00023086
	addi	a3,a3,-00000068
	c.mv	a1,a5
	jal	zero,0000000023086418

;; httpc_free_state: 23085C16
;;   Called from:
;;     23085CAE (in httpc_close)
;;     23086148 (in httpc_init_connection_common.constprop.5)
;;     230861D8 (in httpc_init_connection_common.constprop.5)
;;     2308624A (in httpc_get_file)
;;     230862B6 (in httpc_get_file_dns)
httpc_free_state proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s1,a0
	c.lw	a0,16(a0)
	c.beqz	a0,0000000023085C2C

l23085C24:
	jal	ra,00000000230701A4
	sw	zero,s1,+00000010

l23085C2C:
	c.lw	s1,20(a0)
	c.beqz	a0,0000000023085C38

l23085C30:
	jal	ra,00000000230701A4
	sw	zero,s1,+00000014

l23085C38:
	c.lw	s1,0(s0)
	c.mv	a0,s1
	jal	ra,000000002306F5E2
	c.bnez	s0,0000000023085C4E

l23085C42:
	c.li	a0,00000000

l23085C44:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23085C4E:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230863BA
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230863C6
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230863EC
	c.li	a2,00000000
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230863D2
	c.mv	a0,s0
	c.li	a1,00000000
	jal	ra,00000000230863CC
	c.mv	a0,s0
	jal	ra,0000000023086452
	c.beqz	a0,0000000023085C42

l23085C80:
	c.mv	a0,s0
	jal	ra,0000000023086440
	c.li	a0,FFFFFFF3
	c.j	0000000023085C44

;; httpc_close: 23085C8A
;;   Called from:
;;     23085CFA (in httpc_tcp_recv)
;;     23085F68 (in httpc_dns_found)
;;     23085F78 (in httpc_tcp_poll)
;;     23085F92 (in httpc_tcp_err)
;;     23085FC4 (in httpc_tcp_connected)
httpc_close proc
	c.beqz	a0,0000000023085CB2

l23085C8C:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,32(a5)
	c.mv	a4,a3
	c.mv	s0,a0
	c.mv	a3,a2
	c.beqz	a5,0000000023085CA6

l23085C9C:
	c.lw	a5,20(a5)
	c.beqz	a5,0000000023085CA6

l23085CA0:
	c.lw	a0,40(a2)
	c.lw	a0,36(a0)
	c.jalr	a5

l23085CA6:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023085C16

l23085CB2:
	c.jr	ra

;; httpc_tcp_recv: 23085CB4
httpc_tcp_recv proc
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
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.li	a5,0000001E
	c.sw	a0,12(a5)
	c.mv	s0,a0
	lbu	a5,a0,+00000030
	c.bnez	a2,0000000023085D18

l23085CD8:
	c.li	a4,00000002
	c.li	a1,00000004
	bne	a5,a4,0000000023085CF2

l23085CE0:
	c.lw	a0,44(a5)
	c.li	a4,FFFFFFFF
	c.li	a1,00000000
	beq	a5,a4,0000000023085CF2

l23085CEA:
	c.lw	a0,40(a4)
	beq	a5,a4,0000000023085CF2

l23085CF0:
	c.li	a1,00000009

l23085CF2:
	lhu	a2,s0,+0000001A
	c.li	a3,00000000

l23085CF8:
	c.mv	a0,s0
	jal	ra,0000000023085C8A

l23085CFE:
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

l23085D18:
	c.li	a4,00000002
	c.mv	s3,a1
	c.mv	s1,a2
	c.mv	s4,a3
	bne	a5,a4,0000000023085D40

l23085D24:
	lhu	a4,s1,+00000008
	c.lw	s0,40(a5)
	c.add	a5,a4
	c.sw	s0,40(a5)
	c.lw	s0,28(a5)
	beq	a5,zero,0000000023085F2C

l23085D34:
	c.lw	s0,36(a0)
	c.mv	a3,s4
	c.mv	a2,s1
	c.mv	a1,s3
	c.jalr	a5
	c.j	0000000023085CFE

l23085D40:
	c.lw	a0,20(a0)
	bne	a0,zero,0000000023085EEE

l23085D46:
	c.sw	s0,20(a2)

l23085D48:
	lbu	a5,s0,+00000030
	bne	a5,zero,0000000023085EFC

l23085D50:
	lw	s6,s0,+00000014
	lui	a1,000230C7
	c.li	a3,00000000
	c.li	a2,00000002
	addi	a1,a1,-00000700
	c.mv	a0,s6
	c.lui	s7,00010000
	jal	ra,00000000230707DC
	c.addi	s7,FFFFFFFF
	c.mv	s5,a0
	beq	a0,s7,0000000023085EFC

l23085D70:
	lui	s9,000230BF
	c.li	a3,00000000
	c.li	a2,00000001
	addi	a1,s9,-000002AC
	c.mv	a0,s6
	jal	ra,00000000230707DC
	c.mv	s2,a0
	beq	a0,s7,0000000023085EFC

l23085D88:
	lui	a2,000230C7
	c.li	a3,00000005
	addi	a2,a2,-00000634
	c.li	a1,00000000
	c.mv	a0,s6
	jal	ra,0000000023070752
	bne	a0,zero,0000000023085EFC

l23085D9E:
	c.li	a1,00000006
	c.mv	a0,s6
	jal	ra,000000002307070C
	addi	a5,zero,+0000002E
	bne	a0,a5,0000000023085EFC

l23085DAE:
	c.li	a1,00000005
	c.mv	a0,s6
	jal	ra,000000002307070C
	addi	a0,a0,-00000030
	slli	s8,a0,00000010
	c.li	a1,00000007
	c.mv	a0,s6
	jal	ra,000000002307070C
	srli	s8,s8,00000010
	addi	a0,a0,-00000030
	c.slli	s8,08
	or	s8,a0,s8
	sh	s8,s0,+00000018
	addi	s8,s2,+00000001
	c.slli	s8,10
	srli	s8,s8,00000010
	c.mv	a3,s8
	c.li	a2,00000001
	addi	a1,s9,-000002AC
	c.mv	a0,s6
	jal	ra,00000000230707DC
	beq	a0,s7,0000000023085EF6

l23085DF4:
	sub	s2,a0,s2

l23085DF8:
	c.li	a2,0000000A
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,00000000230A3A68
	c.addi	s2,FFFFFFFF
	slli	a2,s2,00000010
	c.mv	a3,s8
	c.srli	a2,00000010
	c.mv	a1,sp
	c.mv	a0,s6
	jal	ra,000000002307055E
	bne	s2,a0,0000000023085EFC

l23085E18:
	c.mv	a0,sp
	jal	ra,00000000230A3618
	c.lui	a5,00010000
	addi	a4,a0,-00000001
	c.addi	a5,FFFFFFFE
	bltu	a5,a4,0000000023085EFC

l23085E2A:
	c.li	a5,00000001
	sh	a0,s0,+0000001A
	sb	a5,s0,+00000030

l23085E34:
	lw	s6,s0,+00000014
	lui	a1,000230AE
	c.li	a3,00000000
	c.li	a2,00000004
	addi	a1,a1,-00000474
	c.mv	a0,s6
	jal	ra,00000000230707DC
	c.lui	s7,00010000
	addi	a5,s7,-00000004
	c.mv	s2,a0
	bltu	a5,a0,0000000023085F06

l23085E56:
	c.li	a5,FFFFFFFF
	lui	a1,000230C7
	c.sw	s0,44(a5)
	c.li	a3,00000000
	c.li	a2,00000010
	addi	a1,a1,-0000062C
	c.mv	a0,s6
	jal	ra,00000000230707DC
	c.addi	s7,FFFFFFFF
	c.mv	s5,a0
	beq	a0,s7,0000000023085EC0

l23085E74:
	lui	a1,000230C7
	c.mv	a3,a0
	c.li	a2,00000002
	addi	a1,a1,-00000700
	c.mv	a0,s6
	jal	ra,00000000230707DC
	beq	a0,s7,0000000023085EC0

l23085E8A:
	sub	s1,a0,s5
	c.li	a2,00000010
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,00000000230A3A68
	c.addi	s1,FFFFFFF0
	c.slli	s1,10
	addi	a3,s5,+00000010
	c.srli	s1,00000010
	c.slli	a3,10
	c.srli	a3,00000010
	c.mv	a2,s1
	c.mv	a1,sp
	c.mv	a0,s6
	jal	ra,000000002307055E
	bne	s1,a0,0000000023085EC0

l23085EB4:
	c.mv	a0,sp
	jal	ra,00000000230A3618
	blt	a0,zero,0000000023085EC0

l23085EBE:
	c.sw	s0,44(a0)

l23085EC0:
	addi	s1,s2,+00000004
	c.slli	s1,10
	c.srli	s1,00000010
	c.mv	a1,s1
	c.mv	a0,s3
	c.jal	00000000230863F2
	c.lw	s0,32(a5)
	c.beqz	a5,0000000023085F14

l23085ED2:
	c.lw	a5,24(a5)
	c.beqz	a5,0000000023085F14

l23085ED6:
	c.lw	s0,44(a4)
	c.lw	s0,20(a2)
	c.lw	s0,36(a1)
	c.mv	a3,s1
	c.mv	a0,s0
	c.jalr	a5
	c.mv	a3,a0
	c.beqz	a0,0000000023085F14

l23085EE6:
	lhu	a2,s0,+0000001A
	c.li	a1,00000008
	c.j	0000000023085CF8

l23085EEE:
	c.mv	a1,a2
	jal	ra,0000000023070476
	c.j	0000000023085D48

l23085EF6:
	sub	s2,s5,s2
	c.j	0000000023085DF8

l23085EFC:
	lbu	a4,s0,+00000030
	c.li	a5,00000001
	beq	a4,a5,0000000023085E34

l23085F06:
	lbu	a4,s0,+00000030
	c.li	a5,00000002
	beq	a4,a5,0000000023085D24

l23085F10:
	c.li	a0,00000000
	c.j	0000000023085CFE

l23085F14:
	c.lw	s0,20(a0)
	c.mv	a1,s1
	jal	ra,00000000230703FE
	c.li	a5,00000002
	sw	zero,s0,+00000014
	sb	a5,s0,+00000030
	c.mv	s1,a0
	c.beqz	a0,0000000023085F10

l23085F2A:
	c.j	0000000023085D24

l23085F2C:
	lhu	a1,s1,+00000008
	c.mv	a0,s3
	c.jal	00000000230863F2
	c.mv	a0,s1
	jal	ra,00000000230701A4
	c.j	0000000023085F10

;; httpc_dns_found: 23085F3C
httpc_dns_found proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a2
	c.beqz	a1,0000000023085F5A

l23085F46:
	c.mv	a0,a2
	jal	ra,0000000023085BF6
	c.mv	a3,a0
	c.li	a1,00000002
	c.bnez	a0,0000000023085F5E

l23085F52:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23085F5A:
	c.li	a1,00000003
	c.li	a3,FFFFFFF0

l23085F5E:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a2,00000000
	c.addi	sp,00000010
	jal	zero,0000000023085C8A

;; httpc_tcp_poll: 23085F6C
httpc_tcp_poll proc
	c.beqz	a0,0000000023085F82

l23085F6E:
	c.lw	a0,12(a5)
	c.bnez	a5,0000000023085F7C

l23085F72:
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000005
	jal	zero,0000000023085C8A

l23085F7C:
	c.addi	a5,FFFFFFFF
	c.sw	a0,12(a5)
	c.beqz	a5,0000000023085F72

l23085F82:
	c.li	a0,00000000
	c.jr	ra

;; httpc_tcp_err: 23085F86
httpc_tcp_err proc
	c.mv	a3,a1
	c.beqz	a0,0000000023085F96

l23085F8A:
	sw	zero,a0,+00000000
	c.li	a2,00000000
	c.li	a1,00000004
	jal	zero,0000000023085C8A

l23085F96:
	c.jr	ra

;; httpc_tcp_connected: 23085F98
httpc_tcp_connected proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,16(a5)
	c.mv	s0,a0
	c.lw	a0,0(a0)
	lhu	a2,a5,+0000000A
	c.lw	a5,4(a1)
	c.li	a3,00000001
	c.addi	a2,FFFFFFFF
	c.slli	a2,10
	c.srli	a2,00000010
	c.jal	000000002308647A
	c.beqz	a0,0000000023085FC8

l23085FB6:
	c.mv	a3,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a2,00000000
	c.li	a1,00000007
	c.addi	sp,00000010
	jal	zero,0000000023085C8A

l23085FC8:
	c.lw	s0,16(a0)
	jal	ra,00000000230701A4
	c.lw	s0,0(a0)
	sw	zero,s0,+00000010
	c.jal	000000002308648E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; httpc_create_request_string.constprop.6: 23085FE0
;;   Called from:
;;     23086104 (in httpc_init_connection_common.constprop.5)
;;     230861CE (in httpc_init_connection_common.constprop.5)
httpc_create_request_string.constprop.6 proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.mv	s0,a0
	c.mv	a7,a1
	c.mv	a1,a5
	lbu	a5,s0,+00000006
	c.swsp	s4,00000094
	c.swsp	ra,0000009C
	c.swsp	s2,00000098
	c.swsp	s3,00000018
	c.mv	t3,a3
	c.mv	a0,a4
	lui	s4,000230C7
	c.beqz	a5,000000002308604C

l23086000:
	addi	a5,zero,+00000050
	beq	a2,a5,000000002308602A

l23086008:
	c.lwsp	s8,00000114
	c.lwsp	t3,00000130
	c.lwsp	s4,00000158
	c.lwsp	a6,00000178
	addi	a6,s4,-000007BC
	c.lwsp	a2,00000198
	c.mv	a4,a2
	lui	a2,000230C7
	c.mv	a5,a3
	c.mv	a3,a7
	addi	a2,a2,-000007B0
	c.addi16sp	00000040
	jal	zero,00000000230823DA

l2308602A:
	c.lwsp	s8,00000114
	c.lwsp	t3,00000130
	c.lwsp	s4,00000158
	c.lwsp	a6,00000178
	addi	a5,s4,-000007BC
	c.lwsp	a2,00000198
	lui	a2,000230C7
	c.mv	a4,a3
	c.mv	a6,a7
	c.mv	a3,a7
	addi	a2,a2,-00000754
	c.addi16sp	00000040
	jal	zero,00000000230823DA

l2308604C:
	lbu	a4,s0,+00000007
	c.li	a5,00000001
	bne	a4,a5,00000000230860B0

l23086056:
	lbu	a5,s0,+0000000C
	c.li	a4,00000003
	c.li	s2,00000000
	bltu	a4,a5,0000000023086074

l23086062:
	slli	a3,a5,00000002
	lui	a5,0004200E
	addi	a5,a5,+00000114
	c.add	a5,a3
	lw	s2,a5,+00000000

l23086074:
	c.mv	s3,a0
	c.lw	s0,8(a0)
	c.swsp	a1,0000008C
	c.swsp	t3,0000000C
	c.swsp	a7,00000088
	jal	ra,00000000230A4220
	c.lw	s0,8(a5)
	c.lwsp	s4,00000028
	c.lwsp	s8,000000A4
	c.lwsp	t3,00000064
	lui	a2,000230C7
	c.swsp	a5,00000000
	addi	a6,s4,-000007BC
	c.mv	a5,a0
	c.mv	a4,s2
	c.mv	a0,s3
	addi	a2,a2,-000006FC
	jal	ra,00000000230823DA
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000158
	c.lwsp	a6,00000178
	c.lwsp	a2,00000198
	c.addi16sp	00000040
	c.jr	ra

l230860B0:
	c.lwsp	s8,00000114
	c.lwsp	t3,00000130
	c.lwsp	s4,00000158
	c.lwsp	a6,00000178
	addi	a4,s4,-000007BC
	c.lwsp	a2,00000198
	lui	a2,000230C7
	c.mv	a5,a7
	addi	a2,a2,-00000684
	c.addi16sp	00000040
	jal	zero,00000000230823DA

;; httpc_init_connection_common.constprop.5: 230860CE
;;   Called from:
;;     2308622C (in httpc_get_file)
;;     23086296 (in httpc_get_file_dns)
httpc_init_connection_common.constprop.5 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.mv	s1,a1
	c.mv	s4,a2
	c.mv	s2,a3
	c.mv	s5,a4
	c.swsp	s6,00000008
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.mv	s6,a0
	c.mv	s8,a5
	c.mv	s9,a3
	c.li	a5,00000000
	c.li	a4,00000000
	c.mv	a3,s5
	c.mv	a2,s2
	c.mv	a1,s4
	c.mv	a0,s1
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s10,00000000
	c.mv	s7,a6
	jal	ra,0000000023085FE0
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFE
	bltu	a5,a0,00000000230861DC

l23086110:
	c.mv	s3,a0
	addi	a0,zero,+00000034
	jal	ra,000000002306F8D8
	c.mv	s0,a0
	c.li	a5,FFFFFFFF
	c.beqz	a0,000000002308614E

l23086120:
	addi	a2,zero,+00000034
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	addi	s10,s3,+00000001
	c.li	a5,0000001E
	slli	a1,s10,00000010
	c.sw	s0,12(a5)
	addi	a2,zero,+00000280
	c.srli	a1,00000010
	c.li	a0,00000000
	jal	ra,0000000023070226
	c.sw	s0,16(a0)
	c.bnez	a0,000000002308616C

l23086146:
	c.mv	a0,s0
	jal	ra,0000000023085C16
	c.li	a5,FFFFFFFF

l2308614E:
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

l2308616C:
	c.lw	a0,0(a5)
	c.bnez	a5,0000000023086146

l23086170:
	c.li	a5,FFFFFFFF
	c.sw	s0,44(a5)
	c.lw	s1,16(a0)
	c.jal	00000000230863B4
	c.sw	s0,0(a0)
	c.beqz	a0,0000000023086146

l2308617C:
	lbu	a5,s1,+00000006
	c.beqz	a5,0000000023086186

l23086182:
	lhu	s2,s1,+00000004

l23086186:
	c.mv	a1,s0
	sh	s2,s0,+00000008
	c.jal	00000000230863BA
	c.lw	s0,0(a0)
	lui	a1,00023086
	addi	a1,a1,-0000034C
	c.jal	00000000230863C6
	c.lw	s0,0(a0)
	lui	a1,00023086
	addi	a1,a1,-0000007A
	c.jal	00000000230863EC
	c.lw	s0,0(a0)
	lui	a1,00023086
	c.li	a2,00000001
	addi	a1,a1,-00000094
	c.jal	00000000230863D2
	c.lw	s0,0(a0)
	lui	a1,00023086
	addi	a1,a1,-0000040E
	c.jal	00000000230863CC
	c.lw	s0,16(a4)
	c.mv	a5,s10
	c.mv	a3,s5
	c.lw	a4,4(a4)
	c.mv	a2,s9
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,0000000023085FE0
	beq	s3,a0,00000000230861E0

l230861D6:
	c.mv	a0,s0
	jal	ra,0000000023085C16

l230861DC:
	c.li	a5,FFFFFFFA
	c.j	000000002308614E

l230861E0:
	sw	s8,s0,+0000001C
	c.sw	s0,32(s1)
	sw	s7,s0,+00000024
	sw	s0,s6,+00000000
	c.li	a5,00000000
	c.j	000000002308614E

;; httpc_get_file: 230861F2
;;   Called from:
;;     2307D038 (in http_url_req)
httpc_get_file proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.li	s0,FFFFFFF0
	c.beqz	a0,000000002308624E

l23086204:
	c.beqz	a2,000000002308624E

l23086206:
	c.beqz	a4,000000002308624E

l23086208:
	c.swsp	a2,00000004
	c.mv	s3,a0
	c.mv	s2,a6
	c.swsp	a5,00000084
	c.mv	s4,a4
	c.mv	s1,a3
	c.swsp	a1,00000080
	jal	ra,000000002306F586
	c.mv	a2,a0
	c.li	s0,FFFFFFFA
	c.beqz	a0,000000002308624E

l23086220:
	c.lwsp	a2,00000008
	c.lwsp	s0,000000C4
	c.lwsp	tp,000000A4
	c.mv	a5,s4
	c.mv	a1,s1
	c.addi4spn	a0,0000001C
	jal	ra,00000000230860CE
	c.mv	s0,a0
	c.bnez	a0,000000002308624E

l23086234:
	lbu	a5,s1,+00000006
	c.lwsp	t3,00000044
	c.mv	a1,s1
	c.bnez	a5,0000000023086240

l2308623E:
	c.mv	a1,s3

l23086240:
	jal	ra,0000000023085BF6
	c.mv	s0,a0
	c.beqz	a0,0000000023086260

l23086248:
	c.lwsp	t3,00000044
	jal	ra,0000000023085C16

l2308624E:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

l23086260:
	beq	s2,zero,000000002308624E

l23086264:
	c.lwsp	t3,000000E4
	sw	a5,s2,+00000000
	c.j	000000002308624E

;; httpc_get_file_dns: 2308626C
;;   Called from:
;;     2307D086 (in http_url_req)
httpc_get_file_dns proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.li	s0,FFFFFFF0
	c.beqz	a0,00000000230862BA

l2308627E:
	c.beqz	a2,00000000230862BA

l23086280:
	c.beqz	a4,00000000230862BA

l23086282:
	c.mv	s2,a3
	c.mv	s3,a6
	c.mv	a3,a1
	c.mv	a6,a5
	c.mv	s1,a0
	c.mv	a5,a4
	c.mv	a1,s2
	c.mv	a4,a2
	c.mv	a2,a0
	c.addi4spn	a0,0000000C
	jal	ra,00000000230860CE
	c.mv	s0,a0
	c.bnez	a0,00000000230862BA

l2308629E:
	lbu	a5,s2,+00000006
	c.lwsp	a2,00000088
	c.beqz	a5,00000000230862CC

l230862A6:
	c.mv	a1,s2
	c.mv	a0,s4
	jal	ra,0000000023085BF6
	c.mv	s1,a0
	c.beqz	a0,00000000230862EC

l230862B2:
	c.lwsp	a2,00000044
	c.mv	s0,s1
	jal	ra,0000000023085C16

l230862BA:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l230862CC:
	addi	s2,s4,+00000004
	lui	a2,00023086
	c.mv	a0,s1
	c.mv	a3,s4
	addi	a2,a2,-000000C4
	c.mv	a1,s2
	jal	ra,000000002306C50C
	c.mv	s1,a0
	c.beqz	a0,00000000230862A6

l230862E6:
	c.li	a5,FFFFFFFB
	bne	a0,a5,00000000230862B2

l230862EC:
	beq	s3,zero,00000000230862BA

l230862F0:
	c.lwsp	a2,000000E4
	sw	a5,s3,+00000000
	c.j	00000000230862BA

;; set_if: 230862F8
;;   Called from:
;;     2307751C (in dhcpd_start)
set_if proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	s2,a2
	c.mv	s1,a3
	c.beqz	a1,000000002308631C

l2308630A:
	c.mv	a0,a1
	c.addi4spn	a1,0000000C
	jal	ra,000000002306F374
	c.beqz	a0,000000002308631C

l23086314:
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,000000002306FC56

l2308631C:
	beq	s2,zero,0000000023086332

l23086320:
	c.addi4spn	a1,0000000C
	c.mv	a0,s2
	jal	ra,000000002306F374
	c.beqz	a0,0000000023086332

l2308632A:
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,000000002306FC8C

l23086332:
	c.beqz	s1,0000000023086346

l23086334:
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	jal	ra,000000002306F374
	c.beqz	a0,0000000023086346

l2308633E:
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,000000002306FC74

l23086346:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; altcp_alloc: 23086352
;;   Called from:
;;     230868F4 (in altcp_tcp_accept)
;;     2308694E (in altcp_tcp_new_ip_type)
;;     23086B56 (in altcp_mbedtls_lower_accept)
;;     230873C4 (in altcp_tls_wrap)
altcp_alloc proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000005
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002306FB44
	c.mv	s0,a0
	c.beqz	a0,000000002308636C

l23086362:
	addi	a2,zero,+0000002C
	c.li	a1,00000000
	jal	ra,00000000230A3A68

l2308636C:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; altcp_free: 23086376
;;   Called from:
;;     23086778 (in altcp_tcp_err)
;;     23086832 (in altcp_tcp_close)
;;     230869CE (in altcp_mbedtls_lower_err)
;;     23086B6E (in altcp_mbedtls_lower_accept)
;;     23086ECE (in altcp_mbedtls_close)
;;     230873DA (in altcp_tls_wrap)
altcp_free proc
	c.beqz	a0,0000000023086396

l23086378:
	c.lw	a0,0(a5)
	c.mv	a1,a0
	c.beqz	a5,0000000023086398

l2308637E:
	c.lw	a5,68(a5)
	c.beqz	a5,0000000023086398

l23086382:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	c.jalr	a5
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.li	a0,00000005
	c.addi16sp	00000020

l23086392:
	jal	zero,000000002306FB62

l23086396:
	c.jr	ra

l23086398:
	c.li	a0,00000005
	c.j	0000000023086392

;; altcp_new_ip_type: 2308639C
;;   Called from:
;;     230863B6 (in altcp_new)
altcp_new_ip_type proc
	c.mv	a5,a0
	c.mv	a0,a1
	c.bnez	a5,00000000230863A4

l230863A2:
	c.j	000000002308693C

l230863A4:
	lw	t1,a5,+00000000
	beq	t1,zero,00000000230863B0

l230863AC:
	c.lw	a5,4(a0)
	c.jr	t1

l230863B0:
	c.li	a0,00000000
	c.jr	ra

;; altcp_new: 230863B4
;;   Called from:
;;     23086176 (in httpc_init_connection_common.constprop.5)
altcp_new proc
	c.li	a1,00000000
	jal	zero,000000002308639C

;; altcp_arg: 230863BA
;;   Called from:
;;     230809F8 (in tcp_accept_callback)
;;     23080CD2 (in bl_cipstart)
;;     23080EF6 (in bl_cipstart)
;;     23085C52 (in httpc_free_state)
;;     2308618C (in httpc_init_connection_common.constprop.5)
;;     23086A7A (in altcp_mbedtls_setup_callbacks)
;;     23086E72 (in altcp_mbedtls_close)
altcp_arg proc
	c.beqz	a0,00000000230863BE

l230863BC:
	c.sw	a0,8(a1)

l230863BE:
	c.jr	ra

;; altcp_accept: 230863C0
;;   Called from:
;;     230810FC (in bl_tcpserver)
;;     23086EFE (in altcp_mbedtls_listen)
altcp_accept proc
	c.beqz	a0,00000000230863C4

l230863C2:
	c.sw	a0,16(a1)

l230863C4:
	c.jr	ra

;; altcp_recv: 230863C6
;;   Called from:
;;     23080410 (in tcp_connected_callback)
;;     23080A06 (in tcp_accept_callback)
;;     23085C5A (in httpc_free_state)
;;     23086198 (in httpc_init_connection_common.constprop.5)
;;     23086A88 (in altcp_mbedtls_setup_callbacks)
;;     23086E7A (in altcp_mbedtls_close)
altcp_recv proc
	c.beqz	a0,00000000230863CA

l230863C8:
	c.sw	a0,24(a1)

l230863CA:
	c.jr	ra

;; altcp_sent: 230863CC
;;   Called from:
;;     2308041E (in tcp_connected_callback)
;;     23080A14 (in tcp_accept_callback)
;;     23085C74 (in httpc_free_state)
;;     230861BE (in httpc_init_connection_common.constprop.5)
;;     23086A96 (in altcp_mbedtls_setup_callbacks)
;;     23086E82 (in altcp_mbedtls_close)
altcp_sent proc
	c.beqz	a0,00000000230863D0

l230863CE:
	c.sw	a0,28(a1)

l230863D0:
	c.jr	ra

;; altcp_poll: 230863D2
;;   Called from:
;;     23085C6C (in httpc_free_state)
;;     230861B2 (in httpc_init_connection_common.constprop.5)
;;     23086E96 (in altcp_mbedtls_close)
;;     23086EB4 (in altcp_mbedtls_close)
;;     23086FF6 (in altcp_mbedtls_set_poll)
altcp_poll proc
	c.beqz	a0,00000000230863EA

l230863D4:
	c.lw	a0,0(a5)
	c.sw	a0,32(a1)
	sb	a2,a0,+00000028
	c.beqz	a5,00000000230863EA

l230863DE:
	lw	t1,a5,+00000000
	beq	t1,zero,00000000230863EA

l230863E6:
	c.mv	a1,a2
	c.jr	t1

l230863EA:
	c.jr	ra

;; altcp_err: 230863EC
;;   Called from:
;;     23080A22 (in tcp_accept_callback)
;;     23080F32 (in bl_cipstart)
;;     23085C62 (in httpc_free_state)
;;     230861A4 (in httpc_init_connection_common.constprop.5)
;;     23086AAA (in altcp_mbedtls_setup_callbacks)
;;     23086E8A (in altcp_mbedtls_close)
altcp_err proc
	c.beqz	a0,00000000230863F0

l230863EE:
	c.sw	a0,36(a1)

l230863F0:
	c.jr	ra

;; altcp_recved: 230863F2
;;   Called from:
;;     2307D0CE (in cb_altcp_recv_fn)
;;     2308061A (in tcp_receive_callback)
;;     23085ECC (in httpc_tcp_recv)
;;     23085F32 (in httpc_tcp_recv)
;;     23086BD0 (in altcp_mbedtls_recved)
;;     2308713E (in altcp_mbedtls_handle_rx_appldata)
;;     2308728A (in altcp_mbedtls_lower_recv_process)
altcp_recved proc
	c.beqz	a0,0000000023086402

l230863F4:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023086402

l230863F8:
	lw	t1,a5,+00000004
	beq	t1,zero,0000000023086402

l23086400:
	c.jr	t1

l23086402:
	c.jr	ra

;; altcp_bind: 23086404
;;   Called from:
;;     230810CE (in bl_tcpserver)
;;     2308656A (in altcp_default_bind)
altcp_bind proc
	c.beqz	a0,0000000023086414

l23086406:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023086414

l2308640A:
	lw	t1,a5,+00000008
	beq	t1,zero,0000000023086414

l23086412:
	c.jr	t1

l23086414:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_connect: 23086418
;;   Called from:
;;     23080CE6 (in bl_cipstart)
;;     23080F0A (in bl_cipstart)
;;     23085C12 (in httpc_get_internal_addr)
;;     23086F12 (in altcp_mbedtls_connect)
altcp_connect proc
	c.beqz	a0,0000000023086428

l2308641A:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023086428

l2308641E:
	lw	t1,a5,+0000000C
	beq	t1,zero,0000000023086428

l23086426:
	c.jr	t1

l23086428:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_listen_with_backlog_and_err: 2308642C
;;   Called from:
;;     230810E8 (in bl_tcpserver)
;;     23086EEE (in altcp_mbedtls_listen)
altcp_listen_with_backlog_and_err proc
	c.beqz	a0,000000002308643C

l2308642E:
	c.lw	a0,0(a5)
	c.beqz	a5,000000002308643C

l23086432:
	lw	t1,a5,+00000010
	beq	t1,zero,000000002308643C

l2308643A:
	c.jr	t1

l2308643C:
	c.li	a0,00000000
	c.jr	ra

;; altcp_abort: 23086440
;;   Called from:
;;     23085C82 (in httpc_free_state)
;;     23086BA6 (in altcp_mbedtls_abort)
;;     23087072 (in altcp_mbedtls_handle_rx_appldata)
;;     230872AC (in altcp_mbedtls_lower_recv_process)
altcp_abort proc
	c.beqz	a0,0000000023086450

l23086442:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023086450

l23086446:
	lw	t1,a5,+00000014
	beq	t1,zero,0000000023086450

l2308644E:
	c.jr	t1

l23086450:
	c.jr	ra

;; altcp_close: 23086452
;;   Called from:
;;     2308048E (in tcp_connected_callback)
;;     2308057A (in tcp_receive_callback)
;;     23080900 (in tcp_accept_callback)
;;     23080CF2 (in bl_cipstart)
;;     23080E8C (in bl_cipstart)
;;     23080F14 (in bl_cipstart)
;;     2308100C (in bl_cipclose)
;;     2308101A (in bl_cipclose)
;;     230810D6 (in bl_tcpserver)
;;     23081120 (in bl_tcpserver)
;;     23085C7A (in httpc_free_state)
;;     2308663A (in altcp_tls_new)
;;     23086E9C (in altcp_mbedtls_close)
;;     230872A4 (in altcp_mbedtls_lower_recv_process)
;;     2308730E (in altcp_mbedtls_lower_recv)
;;     23087380 (in altcp_mbedtls_lower_recv)
altcp_close proc
	c.beqz	a0,0000000023086462

l23086454:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023086462

l23086458:
	lw	t1,a5,+00000018
	beq	t1,zero,0000000023086462

l23086460:
	c.jr	t1

l23086462:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_shutdown: 23086466
;;   Called from:
;;     2308658C (in altcp_default_shutdown)
altcp_shutdown proc
	c.beqz	a0,0000000023086476

l23086468:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023086476

l2308646C:
	lw	t1,a5,+0000001C
	beq	t1,zero,0000000023086476

l23086474:
	c.jr	t1

l23086476:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_write: 2308647A
;;   Called from:
;;     23080ADC (in tcp_send_data)
;;     23085FB2 (in httpc_tcp_connected)
;;     23086F7A (in altcp_mbedtls_bio_send)
altcp_write proc
	c.beqz	a0,000000002308648A

l2308647C:
	c.lw	a0,0(a5)
	c.beqz	a5,000000002308648A

l23086480:
	lw	t1,a5,+00000020
	beq	t1,zero,000000002308648A

l23086488:
	c.jr	t1

l2308648A:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_output: 2308648E
;;   Called from:
;;     23085FD4 (in httpc_tcp_connected)
;;     2308659A (in altcp_default_output)
;;     23086E08 (in altcp_mbedtls_write)
;;     23087232 (in altcp_mbedtls_lower_recv_process)
altcp_output proc
	c.beqz	a0,000000002308649E

l23086490:
	c.lw	a0,0(a5)
	c.beqz	a5,000000002308649E

l23086494:
	lw	t1,a5,+00000024
	beq	t1,zero,000000002308649E

l2308649C:
	c.jr	t1

l2308649E:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_mss: 230864A2
;;   Called from:
;;     23086FE2 (in altcp_mbedtls_mss)
altcp_mss proc
	c.beqz	a0,00000000230864B2

l230864A4:
	c.lw	a0,0(a5)
	c.beqz	a5,00000000230864B2

l230864A8:
	lw	t1,a5,+00000028
	beq	t1,zero,00000000230864B2

l230864B0:
	c.jr	t1

l230864B2:
	c.li	a0,00000000
	c.jr	ra

;; altcp_sndbuf: 230864B6
;;   Called from:
;;     230865A8 (in altcp_default_sndbuf)
;;     23086D62 (in altcp_mbedtls_sndbuf)
altcp_sndbuf proc
	c.beqz	a0,00000000230864C6

l230864B8:
	c.lw	a0,0(a5)
	c.beqz	a5,00000000230864C6

l230864BC:
	lw	t1,a5,+0000002C
	beq	t1,zero,00000000230864C6

l230864C4:
	c.jr	t1

l230864C6:
	c.li	a0,00000000
	c.jr	ra

;; altcp_sndqueuelen: 230864CA
;;   Called from:
;;     230865B6 (in altcp_default_sndqueuelen)
altcp_sndqueuelen proc
	c.beqz	a0,00000000230864DA

l230864CC:
	c.lw	a0,0(a5)
	c.beqz	a5,00000000230864DA

l230864D0:
	lw	t1,a5,+00000030
	beq	t1,zero,00000000230864DA

l230864D8:
	c.jr	t1

l230864DA:
	c.li	a0,00000000
	c.jr	ra

;; altcp_nagle_disable: 230864DE
;;   Called from:
;;     230865C4 (in altcp_default_nagle_disable)
altcp_nagle_disable proc
	c.beqz	a0,00000000230864EE

l230864E0:
	c.lw	a0,0(a5)
	c.beqz	a5,00000000230864EE

l230864E4:
	lw	t1,a5,+00000034
	beq	t1,zero,00000000230864EE

l230864EC:
	c.jr	t1

l230864EE:
	c.jr	ra

;; altcp_nagle_enable: 230864F0
;;   Called from:
;;     230865D0 (in altcp_default_nagle_enable)
altcp_nagle_enable proc
	c.beqz	a0,0000000023086500

l230864F2:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023086500

l230864F6:
	lw	t1,a5,+00000038
	beq	t1,zero,0000000023086500

l230864FE:
	c.jr	t1

l23086500:
	c.jr	ra

;; altcp_nagle_disabled: 23086502
;;   Called from:
;;     230865DC (in altcp_default_nagle_disabled)
altcp_nagle_disabled proc
	c.beqz	a0,0000000023086512

l23086504:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023086512

l23086508:
	lw	t1,a5,+0000003C
	beq	t1,zero,0000000023086512

l23086510:
	c.jr	t1

l23086512:
	c.li	a0,00000000
	c.jr	ra

;; altcp_setprio: 23086516
;;   Called from:
;;     230865EA (in altcp_default_setprio)
altcp_setprio proc
	c.beqz	a0,0000000023086526

l23086518:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023086526

l2308651C:
	lw	t1,a5,+00000040
	beq	t1,zero,0000000023086526

l23086524:
	c.jr	t1

l23086526:
	c.jr	ra

;; altcp_get_tcp_addrinfo: 23086528
;;   Called from:
;;     230865F6 (in altcp_default_get_tcp_addrinfo)
altcp_get_tcp_addrinfo proc
	c.beqz	a0,0000000023086538

l2308652A:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023086538

l2308652E:
	lw	t1,a5,+00000048
	beq	t1,zero,0000000023086538

l23086536:
	c.jr	t1

l23086538:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_get_ip: 2308653C
;;   Called from:
;;     230809A8 (in tcp_accept_callback)
;;     23086604 (in altcp_default_get_ip)
altcp_get_ip proc
	c.beqz	a0,000000002308654C

l2308653E:
	c.lw	a0,0(a5)
	c.beqz	a5,000000002308654C

l23086542:
	lw	t1,a5,+0000004C
	beq	t1,zero,000000002308654C

l2308654A:
	c.jr	t1

l2308654C:
	c.li	a0,00000000
	c.jr	ra

;; altcp_get_port: 23086550
;;   Called from:
;;     230809BC (in tcp_accept_callback)
;;     23086612 (in altcp_default_get_port)
altcp_get_port proc
	c.beqz	a0,0000000023086560

l23086552:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023086560

l23086556:
	lw	t1,a5,+00000050
	beq	t1,zero,0000000023086560

l2308655E:
	c.jr	t1

l23086560:
	c.li	a0,00000000
	c.jr	ra

;; altcp_default_bind: 23086564
altcp_default_bind proc
	c.beqz	a0,000000002308656E

l23086566:
	c.lw	a0,4(a0)
	c.beqz	a0,000000002308656E

l2308656A:
	jal	zero,0000000023086404

l2308656E:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_default_shutdown: 23086572
altcp_default_shutdown proc
	c.mv	a5,a0
	c.beqz	a0,0000000023086590

l23086576:
	c.beqz	a1,0000000023086588

l23086578:
	c.beqz	a2,0000000023086588

l2308657A:
	c.lw	a0,0(a4)
	c.beqz	a4,0000000023086588

l2308657E:
	lw	t1,a4,+00000018
	beq	t1,zero,0000000023086588

l23086586:
	c.jr	t1

l23086588:
	c.lw	a5,4(a0)
	c.beqz	a0,0000000023086590

l2308658C:
	jal	zero,0000000023086466

l23086590:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_default_output: 23086594
altcp_default_output proc
	c.beqz	a0,000000002308659E

l23086596:
	c.lw	a0,4(a0)
	c.beqz	a0,000000002308659E

l2308659A:
	jal	zero,000000002308648E

l2308659E:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_default_sndbuf: 230865A2
;;   Called from:
;;     23086DC4 (in altcp_mbedtls_sndbuf)
altcp_default_sndbuf proc
	c.beqz	a0,00000000230865AC

l230865A4:
	c.lw	a0,4(a0)
	c.beqz	a0,00000000230865AC

l230865A8:
	jal	zero,00000000230864B6

l230865AC:
	c.li	a0,00000000
	c.jr	ra

;; altcp_default_sndqueuelen: 230865B0
altcp_default_sndqueuelen proc
	c.beqz	a0,00000000230865BA

l230865B2:
	c.lw	a0,4(a0)
	c.beqz	a0,00000000230865BA

l230865B6:
	jal	zero,00000000230864CA

l230865BA:
	c.li	a0,00000000
	c.jr	ra

;; altcp_default_nagle_disable: 230865BE
altcp_default_nagle_disable proc
	c.beqz	a0,00000000230865C8

l230865C0:
	c.lw	a0,4(a0)
	c.beqz	a0,00000000230865C8

l230865C4:
	jal	zero,00000000230864DE

l230865C8:
	c.jr	ra

;; altcp_default_nagle_enable: 230865CA
altcp_default_nagle_enable proc
	c.beqz	a0,00000000230865D4

l230865CC:
	c.lw	a0,4(a0)
	c.beqz	a0,00000000230865D4

l230865D0:
	jal	zero,00000000230864F0

l230865D4:
	c.jr	ra

;; altcp_default_nagle_disabled: 230865D6
altcp_default_nagle_disabled proc
	c.beqz	a0,00000000230865E0

l230865D8:
	c.lw	a0,4(a0)
	c.beqz	a0,00000000230865E0

l230865DC:
	jal	zero,0000000023086502

l230865E0:
	c.li	a0,00000000
	c.jr	ra

;; altcp_default_setprio: 230865E4
altcp_default_setprio proc
	c.beqz	a0,00000000230865EE

l230865E6:
	c.lw	a0,4(a0)
	c.beqz	a0,00000000230865EE

l230865EA:
	jal	zero,0000000023086516

l230865EE:
	c.jr	ra

;; altcp_default_get_tcp_addrinfo: 230865F0
altcp_default_get_tcp_addrinfo proc
	c.beqz	a0,00000000230865FA

l230865F2:
	c.lw	a0,4(a0)
	c.beqz	a0,00000000230865FA

l230865F6:
	jal	zero,0000000023086528

l230865FA:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_default_get_ip: 230865FE
altcp_default_get_ip proc
	c.beqz	a0,0000000023086608

l23086600:
	c.lw	a0,4(a0)
	c.beqz	a0,0000000023086608

l23086604:
	jal	zero,000000002308653C

l23086608:
	c.li	a0,00000000
	c.jr	ra

;; altcp_default_get_port: 2308660C
altcp_default_get_port proc
	c.beqz	a0,0000000023086616

l2308660E:
	c.lw	a0,4(a0)
	c.beqz	a0,0000000023086616

l23086612:
	jal	zero,0000000023086550

l23086616:
	c.li	a0,00000000
	c.jr	ra

;; altcp_tls_new: 2308661A
;;   Called from:
;;     23080DB2 (in bl_cipstart)
altcp_tls_new proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.mv	a0,a1
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.jal	000000002308693C
	c.beqz	a0,000000002308664A

l2308662A:
	c.mv	a1,a0
	c.mv	s1,a0
	c.mv	a0,s0
	jal	ra,00000000230873A8
	c.mv	s0,a0
	c.bnez	a0,000000002308663E

l23086638:
	c.mv	a0,s1
	jal	ra,0000000023086452

l2308663E:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2308664A:
	c.li	s0,00000000
	c.j	000000002308663E

;; altcp_tcp_connected: 2308664E
altcp_tcp_connected proc
	c.mv	a1,a0
	c.beqz	a0,000000002308665E

l23086652:
	lw	t1,a0,+00000014
	beq	t1,zero,000000002308665E

l2308665A:
	c.lw	a0,8(a0)
	c.jr	t1

l2308665E:
	c.li	a0,00000000
	c.jr	ra

;; altcp_tcp_sent: 23086662
altcp_tcp_sent proc
	c.mv	a1,a0
	c.beqz	a0,0000000023086672

l23086666:
	lw	t1,a0,+0000001C
	beq	t1,zero,0000000023086672

l2308666E:
	c.lw	a0,8(a0)
	c.jr	t1

l23086672:
	c.li	a0,00000000
	c.jr	ra

;; altcp_tcp_poll: 23086676
altcp_tcp_poll proc
	c.mv	a1,a0
	c.beqz	a0,0000000023086686

l2308667A:
	lw	t1,a0,+00000020
	beq	t1,zero,0000000023086686

l23086682:
	c.lw	a0,8(a0)
	c.jr	t1

l23086686:
	c.li	a0,00000000
	c.jr	ra

;; altcp_tcp_mss: 2308668A
altcp_tcp_mss proc
	c.beqz	a0,0000000023086694

l2308668C:
	c.lw	a0,12(a5)
	lhu	a0,a5,+00000032
	c.jr	ra

l23086694:
	c.li	a0,00000000
	c.jr	ra

;; altcp_tcp_sndbuf: 23086698
altcp_tcp_sndbuf proc
	c.beqz	a0,00000000230866A2

l2308669A:
	c.lw	a0,12(a5)
	lhu	a0,a5,+00000064
	c.jr	ra

l230866A2:
	c.li	a0,00000000
	c.jr	ra

;; altcp_tcp_sndqueuelen: 230866A6
altcp_tcp_sndqueuelen proc
	c.beqz	a0,00000000230866B0

l230866A8:
	c.lw	a0,12(a5)
	lhu	a0,a5,+00000066
	c.jr	ra

l230866B0:
	c.li	a0,00000000
	c.jr	ra

;; altcp_tcp_nagle_disable: 230866B4
altcp_tcp_nagle_disable proc
	c.beqz	a0,00000000230866C6

l230866B6:
	c.lw	a0,12(a5)
	c.beqz	a5,00000000230866C6

l230866BA:
	lhu	a4,a5,+0000001A
	ori	a4,a4,+00000040
	sh	a4,a5,+0000001A

l230866C6:
	c.jr	ra

;; altcp_tcp_nagle_enable: 230866C8
altcp_tcp_nagle_enable proc
	c.beqz	a0,00000000230866DA

l230866CA:
	c.lw	a0,12(a5)
	c.beqz	a5,00000000230866DA

l230866CE:
	lhu	a4,a5,+0000001A
	andi	a4,a4,-00000041
	sh	a4,a5,+0000001A

l230866DA:
	c.jr	ra

;; altcp_tcp_nagle_disabled: 230866DC
altcp_tcp_nagle_disabled proc
	c.beqz	a0,00000000230866EE

l230866DE:
	c.lw	a0,12(a5)
	c.li	a0,00000000
	c.beqz	a5,00000000230866F0

l230866E4:
	lhu	a0,a5,+0000001A
	c.srli	a0,00000006
	c.andi	a0,00000001
	c.jr	ra

l230866EE:
	c.li	a0,00000000

l230866F0:
	c.jr	ra

;; altcp_tcp_dealloc: 230866F2
altcp_tcp_dealloc proc
	c.jr	ra

;; altcp_tcp_get_ip: 230866F4
altcp_tcp_get_ip proc
	c.beqz	a0,00000000230866FE

l230866F6:
	c.lw	a0,12(a0)
	c.beqz	a0,00000000230866FE

l230866FA:
	c.bnez	a1,00000000230866FE

l230866FC:
	c.addi	a0,00000004

l230866FE:
	c.jr	ra

;; altcp_tcp_get_port: 23086700
altcp_tcp_get_port proc
	c.beqz	a0,0000000023086716

l23086702:
	c.lw	a0,12(a5)
	c.li	a0,00000000
	c.beqz	a5,0000000023086718

l23086708:
	c.beqz	a1,0000000023086710

l2308670A:
	lhu	a0,a5,+00000016
	c.jr	ra

l23086710:
	lhu	a0,a5,+00000018
	c.jr	ra

l23086716:
	c.li	a0,00000000

l23086718:
	c.jr	ra

;; altcp_tcp_setup_callbacks: 2308671A
;;   Called from:
;;     2308680C (in altcp_tcp_close)
;;     230868FE (in altcp_tcp_accept)
;;     23086958 (in altcp_tcp_new_ip_type)
altcp_tcp_setup_callbacks proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a1
	c.mv	a1,a0
	c.mv	a0,s0
	c.swsp	ra,00000084
	jal	ra,0000000023070F4C
	lui	a1,00023087
	c.mv	a0,s0
	addi	a1,a1,-00000760
	jal	ra,0000000023070F52
	lui	a1,00023086
	c.mv	a0,s0
	addi	a1,a1,+00000662
	jal	ra,0000000023070F5A
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a1,00023086
	addi	a1,a1,+0000075A
	c.addi	sp,00000010
	jal	zero,0000000023070F62

;; altcp_tcp_err: 2308675A
altcp_tcp_err proc
	c.beqz	a0,000000002308677C

l2308675C:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,36(a5)
	sw	zero,a0,+0000000C
	c.mv	s0,a0
	c.beqz	a5,0000000023086770

l2308676C:
	c.lw	a0,8(a0)
	c.jalr	a5

l23086770:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023086376

l2308677C:
	c.jr	ra

;; altcp_tcp_get_tcp_addrinfo: 2308677E
altcp_tcp_get_tcp_addrinfo proc
	c.beqz	a0,0000000023086786

l23086780:
	c.lw	a0,12(a0)
	jal	zero,000000002307115C

l23086786:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_tcp_setprio: 2308678A
altcp_tcp_setprio proc
	c.beqz	a0,0000000023086792

l2308678C:
	c.lw	a0,12(a0)
	jal	zero,0000000023070F1A

l23086792:
	c.jr	ra

;; altcp_tcp_output: 23086794
altcp_tcp_output proc
	c.beqz	a0,000000002308679C

l23086796:
	c.lw	a0,12(a0)
	jal	zero,000000002307427C

l2308679C:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_tcp_write: 230867A0
altcp_tcp_write proc
	c.beqz	a0,00000000230867A8

l230867A2:
	c.lw	a0,12(a0)
	jal	zero,0000000023073960

l230867A8:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_tcp_shutdown: 230867AC
altcp_tcp_shutdown proc
	c.beqz	a0,00000000230867B4

l230867AE:
	c.lw	a0,12(a0)
	jal	zero,00000000230718F0

l230867B4:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_tcp_close: 230867B8
altcp_tcp_close proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.li	s2,FFFFFFFA
	c.beqz	a0,000000002308681C

l230867C8:
	c.lw	a0,12(s0)
	c.mv	s1,a0
	c.beqz	s0,0000000023086830

l230867CE:
	c.li	a1,00000000
	c.mv	a0,s0
	lw	s3,s0,+0000008C
	jal	ra,0000000023070F4C
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070F52
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070F5A
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070F62
	lbu	a2,s0,+0000001D
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070F7A
	c.mv	a0,s0
	jal	ra,0000000023071764
	c.mv	s2,a0
	c.beqz	a0,000000002308682C

l23086808:
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002308671A
	lbu	a2,s0,+0000001D
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,0000000023070F7A

l2308681C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2308682C:
	sw	zero,s1,+0000000C

l23086830:
	c.mv	a0,s1
	jal	ra,0000000023086376
	c.li	s2,00000000
	c.j	000000002308681C

;; altcp_tcp_abort: 2308683A
altcp_tcp_abort proc
	c.beqz	a0,0000000023086844

l2308683C:
	c.lw	a0,12(a0)
	c.beqz	a0,0000000023086844

l23086840:
	jal	zero,0000000023071378

l23086844:
	c.jr	ra

;; altcp_tcp_listen: 23086846
altcp_tcp_listen proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.bnez	a0,000000002308685A

l2308684E:
	c.li	s0,00000000

l23086850:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2308685A:
	c.mv	s0,a0
	c.lw	a0,12(a0)
	jal	ra,0000000023070D3E
	c.beqz	a0,000000002308684E

l23086864:
	lui	a1,00023087
	c.sw	s0,12(a0)
	addi	a1,a1,-00000724
	jal	ra,0000000023070F6A
	c.j	0000000023086850

;; altcp_tcp_connect: 23086874
altcp_tcp_connect proc
	c.beqz	a0,0000000023086886

l23086876:
	c.sw	a0,20(a3)
	c.lw	a0,12(a0)
	lui	a3,00023086
	addi	a3,a3,+0000064E
	jal	zero,0000000023070FC8

l23086886:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_tcp_bind: 2308688A
altcp_tcp_bind proc
	c.beqz	a0,0000000023086892

l2308688C:
	c.lw	a0,12(a0)
	jal	zero,0000000023070C7E

l23086892:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_tcp_recved: 23086896
altcp_tcp_recved proc
	c.beqz	a0,000000002308689E

l23086898:
	c.lw	a0,12(a0)
	jal	zero,0000000023070E84

l2308689E:
	c.jr	ra

;; altcp_tcp_recv: 230868A0
altcp_tcp_recv proc
	c.mv	a1,a0
	c.mv	a0,a2
	c.beqz	a1,00000000230868B2

l230868A6:
	lw	t1,a1,+00000018
	beq	t1,zero,00000000230868B2

l230868AE:
	c.lw	a1,8(a0)
	c.jr	t1

l230868B2:
	c.beqz	a0,00000000230868C4

l230868B4:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230701A4
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230868C4:
	c.li	a0,00000000
	c.jr	ra

;; altcp_tcp_set_poll: 230868C8
altcp_tcp_set_poll proc
	c.mv	a2,a1
	c.beqz	a0,00000000230868DA

l230868CC:
	c.lw	a0,12(a0)
	lui	a1,00023086
	addi	a1,a1,+00000676
	jal	zero,0000000023070F7A

l230868DA:
	c.jr	ra

;; altcp_tcp_accept: 230868DC
altcp_tcp_accept proc
	c.beqz	a0,0000000023086928

l230868DE:
	c.lw	a0,16(a5)
	c.beqz	a5,0000000023086928

l230868E2:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s3,a2
	c.mv	s2,a1
	c.mv	s0,a0
	jal	ra,0000000023086352
	c.mv	s1,a0
	c.beqz	a0,000000002308692C

l230868FC:
	c.mv	a1,s2
	jal	ra,000000002308671A
	lui	a5,000230C7
	addi	a5,a5,-000005C0
	sw	s2,s1,+0000000C
	c.sw	s1,0(a5)
	lw	t1,s0,+00000010
	c.lw	s0,8(a0)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.mv	a2,s3
	c.mv	a1,s1
	c.lwsp	a2,00000068
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	t1

l23086928:
	c.li	a0,FFFFFFF0
	c.jr	ra

l2308692C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,FFFFFFFF
	c.addi16sp	00000020
	c.jr	ra

;; altcp_tcp_new_ip_type: 2308693C
;;   Called from:
;;     23080CB6 (in bl_cipstart)
;;     230810B8 (in bl_tcpserver)
;;     230863A2 (in altcp_new_ip_type)
;;     23086626 (in altcp_tls_new)
altcp_tcp_new_ip_type proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	jal	ra,000000002307161E
	c.li	s0,00000000
	c.beqz	a0,0000000023086968

l2308694C:
	c.mv	s1,a0
	jal	ra,0000000023086352
	c.mv	s0,a0
	c.beqz	a0,0000000023086974

l23086956:
	c.mv	a1,s1
	jal	ra,000000002308671A
	lui	a5,000230C7
	addi	a5,a5,-000005C0
	c.sw	s0,12(s1)
	c.sw	s0,0(a5)

l23086968:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23086974:
	c.mv	a0,s1
	jal	ra,0000000023071764
	c.j	0000000023086968

;; dummy_rng: 2308697C
dummy_rng proc
	lui	a4,0004200F
	lw	a0,a4,+00000710
	c.li	a3,00000000
	c.li	a5,00000000
	addi	a4,a4,+00000710
	addi	a6,a0,+00000001

l23086990:
	bne	a5,a2,000000002308699E

l23086994:
	c.add	a5,a0
	c.beqz	a3,000000002308699A

l23086998:
	c.sw	a4,0(a5)

l2308699A:
	c.li	a0,00000000
	c.jr	ra

l2308699E:
	add	a3,a1,a5
	add	a7,a6,a5
	sb	a7,a3,+00000000
	c.addi	a5,00000001
	c.li	a3,00000001
	c.j	0000000023086990

;; altcp_mbedtls_lower_err: 230869B0
altcp_mbedtls_lower_err proc
	c.beqz	a0,00000000230869D2

l230869B2:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,36(a5)
	sw	zero,a0,+00000004
	c.mv	s0,a0
	c.beqz	a5,00000000230869C6

l230869C2:
	c.lw	a0,8(a0)
	c.jalr	a5

l230869C6:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023086376

l230869D2:
	c.jr	ra

;; altcp_mbedtls_bio_recv: 230869D4
altcp_mbedtls_bio_recv proc
	c.beqz	a0,0000000023086A68

l230869D6:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lw	s2,a0,+0000000C
	addi	a0,zero,-00000045
	beq	s2,zero,0000000023086A1C

l230869EC:
	lw	s1,s2,+000000C4
	c.beqz	s1,0000000023086A04

l230869F2:
	c.mv	a5,a2
	lhu	a2,s1,+0000000A
	c.bnez	a2,0000000023086A28

l230869FA:
	c.lw	s1,0(a5)
	c.bnez	a5,0000000023086A32

l230869FE:
	c.mv	a0,s1
	jal	ra,00000000230701A4

l23086A04:
	lbu	a5,s2,+000000CC
	sw	zero,s2,+000000C4
	c.li	a4,00000004
	c.andi	a5,0000000C
	c.li	a0,00000000
	beq	a5,a4,0000000023086A1C

l23086A16:
	c.lui	a0,FFFF9000
	addi	a0,a0,+00000700

l23086A1C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23086A28:
	bgeu	a5,a2,0000000023086A32

l23086A2C:
	slli	a2,a5,00000010
	c.srli	a2,00000010

l23086A32:
	c.li	a3,00000000
	c.mv	a0,s1
	jal	ra,000000002307055E
	c.mv	a1,a0
	c.mv	s0,a0
	c.mv	a0,s1
	jal	ra,0000000023070142
	lhu	a5,s1,+0000000A
	c.bnez	a5,0000000023086A5A

l23086A4A:
	c.lw	s1,0(a5)
	c.mv	a0,s1
	sw	a5,s2,+000000C4
	sw	zero,s1,+00000000
	jal	ra,00000000230701A4

l23086A5A:
	lw	a5,s2,+000000D4
	c.mv	a0,s0
	c.add	a5,s0
	sw	a5,s2,+000000D4
	c.j	0000000023086A1C

l23086A68:
	addi	a0,zero,-00000045
	c.jr	ra

;; altcp_mbedtls_setup_callbacks: 23086A6E
;;   Called from:
;;     23086B1C (in altcp_mbedtls_setup)
;;     23086EA8 (in altcp_mbedtls_close)
altcp_mbedtls_setup_callbacks proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a1
	c.mv	a1,a0
	c.mv	a0,s0
	c.swsp	ra,00000084
	jal	ra,00000000230863BA
	lui	a1,00023087
	c.mv	a0,s0
	addi	a1,a1,+000002F4
	jal	ra,00000000230863C6
	lui	a1,00023087
	c.mv	a0,s0
	addi	a1,a1,-0000006C
	jal	ra,00000000230863CC
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a1,00023087
	addi	a1,a1,-00000650
	c.addi	sp,00000010
	jal	zero,00000000230863EC

;; altcp_mbedtls_setup: 23086AAE
;;   Called from:
;;     23086B64 (in altcp_mbedtls_lower_accept)
;;     230873D2 (in altcp_tls_wrap)
altcp_mbedtls_setup proc
	c.beqz	a0,0000000023086B36

l23086AB0:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s4,00000004
	c.mv	s1,a0
	c.mv	s3,a2
	c.mv	s0,a1
	jal	ra,00000000230874B2
	c.mv	s2,a0
	c.li	a0,FFFFFFFF
	beq	s2,zero,0000000023086AEE

l23086AD0:
	addi	s4,s2,+00000004
	c.mv	a0,s4
	jal	ra,000000002308B6F6
	c.mv	a1,s1
	c.mv	a0,s4
	jal	ra,000000002308BC94
	c.beqz	a0,0000000023086AFE

l23086AE4:
	c.mv	a0,s1
	c.mv	a1,s2
	jal	ra,00000000230874D0
	c.li	a0,FFFFFFFF

l23086AEE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23086AFE:
	lui	a3,00023087
	lui	a2,00023087
	c.li	a4,00000000
	addi	a3,a3,-0000062C
	addi	a2,a2,-000000E6
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,000000002308B71A
	c.mv	a0,s0
	c.mv	a1,s3
	jal	ra,0000000023086A6E
	lui	a5,000230C7
	addi	a5,a5,-0000056C
	sw	s3,s0,+00000004
	c.sw	s0,0(a5)
	sw	s2,s0,+0000000C
	c.li	a0,00000000
	c.j	0000000023086AEE

l23086B36:
	c.li	a0,FFFFFFF0
	c.jr	ra

;; altcp_mbedtls_lower_accept: 23086B3A
altcp_mbedtls_lower_accept proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.beqz	a0,0000000023086B9A

l23086B48:
	c.lw	a0,12(s1)
	c.beqz	s1,0000000023086B9A

l23086B4C:
	c.lw	a0,16(a5)
	c.beqz	a5,0000000023086B9A

l23086B50:
	c.mv	s3,a2
	c.swsp	a1,00000084
	c.mv	s0,a0
	jal	ra,0000000023086352
	c.mv	s2,a0
	c.beqz	a0,0000000023086B9E

l23086B5E:
	c.mv	a1,a0
	c.lwsp	a2,00000084
	c.lw	s1,0(a0)
	jal	ra,0000000023086AAE
	c.mv	s1,a0
	c.beqz	a0,0000000023086B82

l23086B6C:
	c.mv	a0,s2
	jal	ra,0000000023086376

l23086B72:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23086B82:
	lw	t1,s0,+00000010
	c.lw	s0,8(a0)
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.mv	a2,s3
	c.mv	a1,s2
	c.lwsp	t3,00000068
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	t1

l23086B9A:
	c.li	s1,FFFFFFF0
	c.j	0000000023086B72

l23086B9E:
	c.li	s1,FFFFFFFF
	c.j	0000000023086B72

;; altcp_mbedtls_abort: 23086BA2
altcp_mbedtls_abort proc
	c.beqz	a0,0000000023086BAA

l23086BA4:
	c.lw	a0,4(a0)
	jal	zero,0000000023086440

l23086BAA:
	c.jr	ra

;; altcp_mbedtls_recved: 23086BAC
altcp_mbedtls_recved proc
	c.beqz	a0,0000000023086BD4

l23086BAE:
	c.lw	a0,12(a4)
	c.beqz	a4,0000000023086BD4

l23086BB2:
	lbu	a5,a4,+000000CC
	c.andi	a5,00000001
	c.beqz	a5,0000000023086BD4

l23086BBA:
	lw	a5,a4,+000000D0
	bge	a5,a1,0000000023086BC8

l23086BC2:
	slli	a1,a5,00000010
	c.srli	a1,00000010

l23086BC8:
	c.sub	a5,a1
	sw	a5,a4,+000000D0
	c.lw	a0,4(a0)
	jal	zero,00000000230863F2

l23086BD4:
	c.jr	ra

;; altcp_tls_create_config: 23086BD6
;;   Called from:
;;     23086CBC (in altcp_tls_create_config_client_common)
altcp_tls_create_config proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.mv	s4,a0
	c.swsp	s0,00000014
	c.mv	s3,a1
	c.mv	s1,a2
	c.mv	s2,a3
	jal	ra,00000000230874B0
	addi	a0,zero,+00000500
	bne	s3,zero,0000000023086BFC

l23086BF8:
	addi	a0,zero,+000003CC

l23086BFC:
	beq	s2,zero,0000000023086C04

l23086C00:
	addi	a0,a0,+00000134

l23086C04:
	c.beqz	s1,0000000023086C08

l23086C06:
	c.addi	a0,00000008

l23086C08:
	jal	ra,00000000230874D6
	c.mv	s0,a0
	c.beqz	a0,0000000023086C6C

l23086C10:
	addi	a5,a0,+000003CC
	beq	s3,zero,0000000023086C20

l23086C18:
	sw	a5,a0,+000003C0
	addi	a5,a0,+00000500

l23086C20:
	beq	s2,zero,0000000023086C2C

l23086C24:
	sw	a5,s0,+000003C8
	addi	a5,a5,+00000134

l23086C2C:
	c.beqz	s1,0000000023086C32

l23086C2E:
	sw	a5,s0,+000003C4

l23086C32:
	c.mv	a0,s0
	jal	ra,000000002308BE56
	addi	a2,s0,+00000078
	c.mv	a0,a2
	c.swsp	a2,00000084
	addi	s1,s0,+00000280
	jal	ra,0000000023087934
	c.mv	a0,s1
	jal	ra,0000000023087720
	c.lwsp	a2,00000084
	lui	a1,00023087
	c.li	a4,00000000
	c.li	a3,00000000
	addi	a1,a1,-00000684
	c.mv	a0,s1
	jal	ra,000000002308783C
	c.beqz	a0,0000000023086C7E

l23086C64:
	c.mv	a0,s0
	jal	ra,00000000230874EC
	c.li	s0,00000000

l23086C6C:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23086C7E:
	c.li	a3,00000000
	c.li	a2,00000000
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,000000002308BE60
	c.bnez	a0,0000000023086C64

l23086C8C:
	c.mv	a0,s0
	c.li	a1,00000001
	jal	ra,000000002308B700
	lui	a1,00023088
	c.mv	a2,s1
	addi	a1,a1,-000006D4
	c.mv	a0,s0
	jal	ra,000000002308B714
	c.j	0000000023086C6C

;; altcp_tls_create_config_client_common: 23086CA6
;;   Called from:
;;     230873EC (in altcp_tls_create_config_client)
;;     2308741A (in altcp_tls_create_config_client_2wayauth)
altcp_tls_create_config_client_common proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	sltu	a3,zero,a0
	c.mv	s1,a0
	c.mv	s2,a1
	c.li	a0,00000000
	c.mv	a1,a2
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,0000000023086BD6
	c.mv	s0,a0
	c.beqz	a0,0000000023086CE4

l23086CC4:
	c.beqz	s1,0000000023086CE4

l23086CC6:
	lw	a0,a0,+000003C8
	jal	ra,000000002308FC3A
	lw	a0,s0,+000003C8
	c.mv	a2,s2
	c.mv	a1,s1
	jal	ra,0000000023090390
	c.beqz	a0,0000000023086CF2

l23086CDC:
	c.mv	a0,s0
	jal	ra,00000000230874EC
	c.li	s0,00000000

l23086CE4:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23086CF2:
	lw	a1,s0,+000003C8
	c.li	a2,00000000
	c.mv	a0,s0
	jal	ra,000000002308B72C
	c.j	0000000023086CE4

;; altcp_mbedtls_dealloc: 23086D00
altcp_mbedtls_dealloc proc
	c.beqz	a0,0000000023086D40

l23086D02:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.lw	a0,12(s0)
	c.beqz	s0,0000000023086D36

l23086D0E:
	c.mv	s1,a0
	addi	a0,s0,+00000004
	jal	ra,000000002308BD6E
	lw	a0,s0,+000000C4
	sb	zero,s0,+000000CC
	c.beqz	a0,0000000023086D2A

l23086D22:
	jal	ra,00000000230701A4
	sw	zero,s0,+000000C4

l23086D2A:
	c.lw	s0,0(a0)
	c.mv	a1,s0
	jal	ra,00000000230874D0
	sw	zero,s1,+0000000C

l23086D36:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23086D40:
	c.jr	ra

;; altcp_mbedtls_sndbuf: 23086D42
altcp_mbedtls_sndbuf proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s3,a0
	c.beqz	a0,0000000023086DB6

l23086D52:
	c.lw	a0,12(s1)
	c.beqz	s1,0000000023086DC8

l23086D56:
	lbu	a5,s1,+000000CC
	c.andi	a5,00000001
	c.beqz	a5,0000000023086DC8

l23086D5E:
	c.lw	a0,4(a0)
	c.beqz	a0,0000000023086DB6

l23086D62:
	jal	ra,00000000230864B6
	c.addi	s1,00000004
	c.mv	s0,a0
	c.mv	a0,s1
	jal	ra,000000002308B7FE
	c.mv	s2,a0
	bge	zero,a0,0000000023086DB6

l23086D76:
	c.lui	a5,00010000
	addi	a4,a5,-00000002
	bge	a4,a0,0000000023086D84

l23086D80:
	addi	s2,a5,-00000001

l23086D84:
	bgeu	s2,s0,0000000023086DB6

l23086D88:
	c.mv	a0,s1
	jal	ra,000000002308B868
	sub	a5,s0,s2
	c.lui	a4,00010000
	bltu	a5,a4,0000000023086D9C

l23086D98:
	addi	a5,a4,-00000001

l23086D9C:
	bgeu	a0,a5,0000000023086DA2

l23086DA0:
	c.mv	a5,a0

l23086DA2:
	slli	a0,a5,00000010
	c.srli	a0,00000010

l23086DA8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23086DB6:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.mv	a0,s3
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,00000000230865A2

l23086DC8:
	c.li	a0,00000000
	c.j	0000000023086DA8

;; altcp_mbedtls_write: 23086DCC
altcp_mbedtls_write proc
	c.bnez	a0,0000000023086DD4

l23086DCE:
	c.li	a5,FFFFFFFA
	c.mv	a0,a5
	c.jr	ra

l23086DD4:
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.lw	a0,12(s0)
	c.li	a5,FFFFFFF1
	c.beqz	s0,0000000023086E1C

l23086DE6:
	lbu	a5,s0,+000000CC
	c.andi	a5,00000001
	c.beqz	a5,0000000023086E1A

l23086DEE:
	lw	a5,s0,+000000B0
	c.mv	s2,a2
	c.mv	s1,a0
	addi	s3,s0,+00000004
	c.bnez	a5,0000000023086E2C

l23086DFC:
	c.mv	a0,s3
	c.mv	a2,s2
	jal	ra,000000002308D750
	c.mv	s3,a0
	c.lw	s1,4(a0)
	jal	ra,000000002308648E
	bge	s3,zero,0000000023086E40

l23086E10:
	c.lui	a5,FFFF9000
	addi	a5,a5,+00000780
	beq	s3,a5,0000000023086E3C

l23086E1A:
	c.li	a5,FFFFFFFA

l23086E1C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.mv	a0,a5
	c.addi16sp	00000030
	c.jr	ra

l23086E2C:
	c.mv	a0,s3
	c.swsp	a1,00000084
	jal	ra,000000002308B43A
	lw	a5,s0,+000000B0
	c.lwsp	a2,00000064
	c.beqz	a5,0000000023086DFC

l23086E3C:
	c.li	a5,FFFFFFFF
	c.j	0000000023086E1C

l23086E40:
	bne	s2,s3,0000000023086E3C

l23086E44:
	lbu	a5,s0,+000000CC
	ori	a5,a5,+00000010
	sb	a5,s0,+000000CC
	c.li	a5,00000000
	c.j	0000000023086E1C

;; altcp_mbedtls_close: 23086E54
altcp_mbedtls_close proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.li	s2,FFFFFFFA
	c.beqz	a0,0000000023086EB8

l23086E64:
	c.lw	a0,4(s0)
	c.mv	s1,a0
	c.beqz	s0,0000000023086ECC

l23086E6A:
	c.li	a1,00000000
	c.mv	a0,s0
	lw	s3,s0,+00000020
	jal	ra,00000000230863BA
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230863C6
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230863CC
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230863EC
	lbu	a2,s0,+00000028
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,00000000230863D2
	c.lw	s1,4(a0)
	jal	ra,0000000023086452
	c.mv	s2,a0
	c.beqz	a0,0000000023086EC8

l23086EA4:
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,0000000023086A6E
	lbu	a2,s0,+00000028
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,00000000230863D2

l23086EB8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23086EC8:
	sw	zero,s1,+00000004

l23086ECC:
	c.mv	a0,s1
	jal	ra,0000000023086376
	c.li	s2,00000000
	c.j	0000000023086EB8

;; altcp_mbedtls_listen: 23086ED6
altcp_mbedtls_listen proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.bnez	a0,0000000023086EEA

l23086EDE:
	c.li	s0,00000000

l23086EE0:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23086EEA:
	c.mv	s0,a0
	c.lw	a0,4(a0)
	jal	ra,000000002308642C
	c.beqz	a0,0000000023086EDE

l23086EF4:
	lui	a1,00023087
	c.sw	s0,4(a0)
	addi	a1,a1,-000004C6
	jal	ra,00000000230863C0
	c.j	0000000023086EE0

;; altcp_mbedtls_connect: 23086F04
altcp_mbedtls_connect proc
	c.beqz	a0,0000000023086F16

l23086F06:
	c.sw	a0,20(a3)
	c.lw	a0,4(a0)
	lui	a3,00023087
	addi	a3,a3,+000002D6
	jal	zero,0000000023086418

l23086F16:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_mbedtls_bio_send: 23086F1A
altcp_mbedtls_bio_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	addi	s0,zero,-00000045
	c.beqz	a0,0000000023086F4E

l23086F32:
	c.lw	a0,4(a5)
	c.mv	s4,a0
	addi	s0,zero,-00000045
	c.beqz	a5,0000000023086F4E

l23086F3C:
	c.lui	a5,00010000
	c.mv	s5,a1
	c.mv	s1,a2
	c.li	s0,00000000
	addi	s6,a5,-00000002
	addi	s2,a5,-00000001

l23086F4C:
	c.bnez	s1,0000000023086F64

l23086F4E:
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

l23086F64:
	c.mv	s3,s1
	bgeu	s6,s1,0000000023086F6C

l23086F6A:
	c.mv	s3,s2

l23086F6C:
	lw	a0,s4,+00000004
	slli	a2,s3,00000010
	c.li	a3,00000001
	c.srli	a2,00000010
	c.mv	a1,s5
	jal	ra,000000002308647A
	c.bnez	a0,0000000023086F88

l23086F80:
	c.add	s0,s3
	sub	s1,s1,s3
	c.j	0000000023086F4C

l23086F88:
	c.li	a5,FFFFFFFF
	beq	a0,a5,0000000023086F4E

l23086F8E:
	addi	s0,zero,-0000004E
	c.j	0000000023086F4E

;; altcp_mbedtls_lower_sent: 23086F94
altcp_mbedtls_lower_sent proc
	c.beqz	a0,0000000023086FDA

l23086F96:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a0,12(s0)
	c.beqz	s0,0000000023086FD0

l23086FA0:
	lbu	a5,s0,+000000CC
	c.andi	a5,00000001
	c.beqz	a5,0000000023086FD0

l23086FA8:
	c.swsp	a0,00000084
	addi	a0,s0,+00000004
	jal	ra,000000002308B43A
	lbu	a5,s0,+000000CC
	c.andi	a5,00000010
	c.beqz	a5,0000000023086FD0

l23086FBA:
	c.lwsp	a2,00000064
	lw	t1,a1,+0000001C
	beq	t1,zero,0000000023086FD0

l23086FC4:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lw	a1,8(a0)
	c.li	a2,00000000
	c.addi16sp	00000020
	c.jr	t1

l23086FD0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23086FDA:
	c.li	a0,00000000
	c.jr	ra

;; altcp_mbedtls_mss: 23086FDE
altcp_mbedtls_mss proc
	c.beqz	a0,0000000023086FE6

l23086FE0:
	c.lw	a0,4(a0)
	jal	zero,00000000230864A2

l23086FE6:
	c.jr	ra

;; altcp_mbedtls_set_poll: 23086FE8
altcp_mbedtls_set_poll proc
	c.mv	a2,a1
	c.beqz	a0,0000000023086FFA

l23086FEC:
	c.lw	a0,4(a0)
	lui	a1,00023087
	addi	a1,a1,+000001A0
	jal	zero,00000000230863D2

l23086FFA:
	c.jr	ra

;; altcp_mbedtls_handle_rx_appldata: 23086FFC
;;   Called from:
;;     230871D2 (in altcp_mbedtls_lower_poll)
;;     23087222 (in altcp_mbedtls_lower_recv_process)
;;     2308734C (in altcp_mbedtls_lower_recv)
altcp_mbedtls_handle_rx_appldata proc
	lbu	a5,a1,+000000CC
	c.andi	a5,00000001
	beq	a5,zero,000000002308719C

l23087006:
	c.addi16sp	FFFFFFD0
	c.swsp	s5,00000088
	c.lui	s5,00010000
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	addi	s7,s5,-00000002
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	c.mv	s0,a1
	c.mv	s1,a0
	addi	s6,a1,+00000004
	c.addi	s5,FFFFFFFF
	c.li	s8,00000004

l23087032:
	addi	a2,zero,+00000280
	addi	a1,zero,+000002F8
	c.li	a0,00000000
	jal	ra,0000000023070226
	c.mv	s3,a0
	c.beqz	a0,0000000023087066

l23087044:
	c.lw	a0,4(a1)
	addi	a2,zero,+000002F8
	c.mv	a0,s6
	jal	ra,000000002308EAA4
	c.mv	s2,a0
	bge	a0,zero,0000000023087094

l23087056:
	c.lui	a5,FFFFA000
	addi	a5,a5,-00000780
	beq	a0,a5,000000002308706A

l23087060:
	c.mv	a0,s3
	jal	ra,00000000230701A4

l23087066:
	c.li	a0,00000000
	c.j	0000000023087078

l2308706A:
	c.mv	a0,s3
	jal	ra,00000000230701A4
	c.mv	a0,s1
	jal	ra,0000000023086440

l23087076:
	c.li	a0,FFFFFFF3

l23087078:
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

l23087094:
	c.beqz	a0,0000000023087150

l23087096:
	slli	a1,a0,00000010
	c.srli	a1,00000010
	c.mv	a0,s3
	jal	ra,0000000023070384
	lw	a5,s0,+000000D8
	c.mv	a0,s6
	c.add	a5,s2
	sw	a5,s0,+000000D8
	jal	ra,000000002308B7F2
	c.bnez	a0,00000000230870D0

l230870B4:
	lw	s4,s0,+000000D4
	lw	a5,s0,+000000D8
	lw	s10,s1,+00000004
	sub	s4,s4,a5

l230870C4:
	blt	zero,s4,000000002308712E

l230870C8:
	sw	zero,s0,+000000D4
	sw	zero,s0,+000000D8

l230870D0:
	lw	a0,s0,+000000C8
	c.bnez	a0,0000000023087148

l230870D6:
	sw	s3,s0,+000000C8

l230870DA:
	lw	s3,s0,+000000C8
	beq	s3,zero,0000000023087170

l230870E2:
	sw	zero,s0,+000000C8
	c.lw	s1,24(a5)
	c.beqz	a5,000000002308715E

l230870EA:
	lhu	s4,s3,+00000008
	lw	a4,s0,+000000D0
	c.li	a3,00000000
	c.mv	a2,s3
	c.add	a4,s4
	sw	a4,s0,+000000D0
	lbu	a4,s0,+000000CC
	c.mv	a1,s1
	ori	a4,a4,+00000002
	sb	a4,s0,+000000CC
	c.lw	s1,24(a5)
	c.lw	s1,8(a0)
	c.jalr	a5
	c.beqz	a0,0000000023087164

l23087112:
	c.li	a5,FFFFFFF3
	beq	a0,a5,0000000023087076

l23087118:
	lw	a5,s0,+000000D0
	sw	s3,s0,+000000C8
	sub	a5,a5,s4
	blt	a5,zero,0000000023087158

l23087128:
	sw	a5,s0,+000000D0
	c.j	0000000023087066

l2308712E:
	c.mv	s9,s4
	bge	s7,s4,0000000023087136

l23087134:
	c.mv	s9,s5

l23087136:
	slli	a1,s9,00000010
	c.srli	a1,00000010
	c.mv	a0,s10
	jal	ra,00000000230863F2
	sub	s4,s4,s9
	c.j	00000000230870C4

l23087148:
	c.mv	a1,s3
	jal	ra,0000000023070476
	c.j	00000000230870DA

l23087150:
	c.mv	a0,s3
	jal	ra,00000000230701A4
	c.j	00000000230870DA

l23087158:
	sw	zero,s0,+000000D0
	c.j	0000000023087066

l2308715E:
	c.mv	a0,s3
	jal	ra,00000000230701A4

l23087164:
	c.lw	s1,12(a5)
	bne	s0,a5,0000000023087066

l2308716A:
	bne	s2,zero,0000000023087032

l2308716E:
	c.j	0000000023087066

l23087170:
	lbu	a5,s0,+000000CC
	andi	a4,a5,+0000000C
	bne	a4,s8,0000000023087164

l2308717C:
	ori	a5,a5,+00000008
	sb	a5,s0,+000000CC
	c.lw	s1,24(a5)
	c.beqz	a5,0000000023087164

l23087188:
	c.lw	s1,8(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.mv	a1,s1
	c.jalr	a5
	c.beqz	a0,000000002308716A

l23087194:
	c.li	a5,FFFFFFF3
	bne	a0,a5,0000000023087066

l2308719A:
	c.j	0000000023087076

l2308719C:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_mbedtls_lower_poll: 230871A0
altcp_mbedtls_lower_poll proc
	c.bnez	a0,00000000230871A6

l230871A2:
	c.li	a0,00000000
	c.jr	ra

l230871A6:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.lw	a0,12(a1)
	c.mv	s0,a0
	c.bnez	a1,00000000230871C4

l230871B2:
	lw	t1,s0,+00000020
	bne	t1,zero,00000000230871DE

l230871BA:
	c.li	a0,00000000

l230871BC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l230871C4:
	addi	a0,a1,+00000004
	c.swsp	a1,00000084
	jal	ra,000000002308B43A
	c.lwsp	a2,00000064
	c.mv	a0,s0
	jal	ra,0000000023086FFC
	c.li	a5,FFFFFFF3
	bne	a0,a5,00000000230871B2

l230871DC:
	c.j	00000000230871BC

l230871DE:
	c.lw	s0,8(a0)
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	t1

;; altcp_mbedtls_lower_recv_process: 230871EA
;;   Called from:
;;     230872EC (in altcp_mbedtls_lower_connected)
;;     2308739C (in altcp_mbedtls_lower_recv)
altcp_mbedtls_lower_recv_process proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	lbu	a5,a1,+000000CC
	c.mv	s0,a0
	c.mv	s1,a1
	c.andi	a5,00000001
	c.beqz	a5,0000000023087226

l2308720A:
	c.mv	a0,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.mv	a1,s1
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	jal	zero,0000000023086FFC

l23087226:
	addi	a0,a1,+00000004
	jal	ra,000000002308B8DC
	c.mv	s5,a0
	c.lw	s0,4(a0)
	jal	ra,000000002308648E
	lw	s2,s1,+000000D4
	beq	s2,zero,0000000023087254

l2308723E:
	lw	s6,s0,+00000004
	c.lui	a5,00010000
	addi	s7,a5,-00000002
	addi	s3,a5,-00000001

l2308724C:
	blt	zero,s2,000000002308727A

l23087250:
	sw	zero,s1,+000000D4

l23087254:
	c.lui	a5,FFFF9000
	andi	a4,s5,-00000081
	addi	a5,a5,+00000700
	bne	a4,a5,0000000023087294

l23087262:
	c.li	a0,00000000

l23087264:
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

l2308727A:
	c.mv	s4,s2
	bge	s7,s2,0000000023087282

l23087280:
	c.mv	s4,s3

l23087282:
	slli	a1,s4,00000010
	c.srli	a1,00000010
	c.mv	a0,s6
	jal	ra,00000000230863F2
	sub	s2,s2,s4
	c.j	000000002308724C

l23087294:
	beq	s5,zero,00000000230872B2

l23087298:
	c.lw	s0,36(a5)
	c.beqz	a5,00000000230872A2

l2308729C:
	c.lw	s0,8(a0)
	c.li	a1,FFFFFFF1
	c.jalr	a5

l230872A2:
	c.mv	a0,s0
	jal	ra,0000000023086452
	c.beqz	a0,0000000023087262

l230872AA:
	c.mv	a0,s0
	jal	ra,0000000023086440
	c.j	0000000023087262

l230872B2:
	lbu	a5,s1,+000000CC
	ori	a5,a5,+00000001
	sb	a5,s1,+000000CC
	c.lw	s0,20(a5)
	c.bnez	a5,00000000230872CA

l230872C2:
	lw	a5,s1,+000000C4
	c.bnez	a5,000000002308720A

l230872C8:
	c.j	0000000023087262

l230872CA:
	c.lw	s0,8(a0)
	c.li	a2,00000000
	c.mv	a1,s0
	c.jalr	a5
	c.beqz	a0,00000000230872C2

l230872D4:
	c.j	0000000023087264

;; altcp_mbedtls_lower_connected: 230872D6
altcp_mbedtls_lower_connected proc
	c.beqz	a0,00000000230872F0

l230872D8:
	c.lw	a0,12(a1)
	c.beqz	a1,00000000230872F0

l230872DC:
	c.beqz	a2,00000000230872EC

l230872DE:
	lw	t1,a0,+00000014
	beq	t1,zero,00000000230872EC

l230872E6:
	c.mv	a1,a0
	c.lw	a0,8(a0)
	c.jr	t1

l230872EC:
	jal	zero,00000000230871EA

l230872F0:
	c.li	a0,FFFFFFFA
	c.jr	ra

;; altcp_mbedtls_lower_recv: 230872F4
altcp_mbedtls_lower_recv proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	a5,a2
	c.bnez	a0,000000002308731E

l23087300:
	c.beqz	a5,000000002308730C

l23087302:
	c.mv	a0,a5
	c.swsp	a1,00000084
	jal	ra,00000000230701A4
	c.lwsp	a2,00000064

l2308730C:
	c.mv	a0,a1
	jal	ra,0000000023086452
	c.li	a0,FFFFFFF1

l23087314:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2308731E:
	c.lw	a0,12(s0)
	c.mv	s1,a0
	c.beqz	s0,0000000023087300

l23087324:
	c.bnez	a2,0000000023087386

l23087326:
	lbu	a5,s0,+000000CC
	c.li	a4,00000003
	andi	a3,a5,+00000003
	bne	a3,a4,0000000023087374

l23087334:
	lw	a4,s0,+000000C4
	c.bnez	a4,0000000023087340

l2308733A:
	lw	a4,s0,+000000C8
	c.beqz	a4,0000000023087354

l23087340:
	ori	a5,a5,+00000004
	sb	a5,s0,+000000CC
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,0000000023086FFC

l23087350:
	c.li	a0,00000000
	c.j	0000000023087314

l23087354:
	ori	a5,a5,+00000008
	sb	a5,s0,+000000CC
	lw	t1,a0,+00000018
	beq	t1,zero,0000000023087350

l23087364:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.mv	a1,a0
	c.lw	a0,8(a0)
	c.li	a3,00000000
	c.addi16sp	00000020
	c.jr	t1

l23087374:
	c.lw	a0,36(a5)
	c.beqz	a5,000000002308737E

l23087378:
	c.lw	a0,8(a0)
	c.li	a1,FFFFFFF1
	c.jalr	a5

l2308737E:
	c.mv	a0,s1
	jal	ra,0000000023086452
	c.j	0000000023087350

l23087386:
	lw	a0,s0,+000000C4
	c.bnez	a0,00000000230873A0

l2308738C:
	sw	a2,s0,+000000C4

l23087390:
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,00000000230871EA

l230873A0:
	c.mv	a1,a2
	jal	ra,0000000023070476
	c.j	0000000023087390

;; altcp_tls_wrap: 230873A8
;;   Called from:
;;     23086630 (in altcp_tls_new)
altcp_tls_wrap proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.bnez	a1,00000000230873C0

l230873B2:
	c.li	s0,00000000

l230873B4:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l230873C0:
	c.swsp	a1,00000084
	c.mv	s1,a0
	jal	ra,0000000023086352
	c.mv	s0,a0
	c.beqz	a0,00000000230873B2

l230873CC:
	c.lwsp	a2,00000084
	c.mv	a1,a0
	c.mv	a0,s1
	jal	ra,0000000023086AAE
	c.beqz	a0,00000000230873B4

l230873D8:
	c.mv	a0,s0
	jal	ra,0000000023086376
	c.j	00000000230873B2

;; altcp_tls_context: 230873E0
;;   Called from:
;;     230803C0 (in tcp_connected_callback)
;;     23080E50 (in bl_cipstart)
altcp_tls_context proc
	c.beqz	a0,00000000230873E8

l230873E2:
	c.lw	a0,12(a0)
	c.beqz	a0,00000000230873E8

l230873E6:
	c.addi	a0,00000004

l230873E8:
	c.jr	ra

;; altcp_tls_create_config_client: 230873EA
;;   Called from:
;;     23080D98 (in bl_cipstart)
altcp_tls_create_config_client proc
	c.li	a2,00000000
	jal	zero,0000000023086CA6

;; altcp_tls_create_config_client_2wayauth: 230873F0
;;   Called from:
;;     23080DFE (in bl_cipstart)
altcp_tls_create_config_client_2wayauth proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	bne	a6,zero,000000002308740A

l23087406:
	c.li	s0,00000000
	c.j	000000002308746C

l2308740A:
	c.beqz	a2,0000000023087406

l2308740C:
	c.mv	s1,a2
	c.li	a2,00000001
	c.mv	s6,a7
	c.mv	s2,a6
	c.mv	s5,a5
	c.mv	s4,a4
	c.mv	s3,a3
	jal	ra,0000000023086CA6
	c.mv	s0,a0
	c.beqz	a0,0000000023087406

l23087422:
	lw	a0,a0,+000003C0
	jal	ra,000000002308FC3A
	lw	a0,s0,+000003C0
	c.mv	a2,s6
	c.mv	a1,s2
	jal	ra,0000000023090390
	c.beqz	a0,0000000023087440

l23087438:
	lw	a0,s0,+000003C0

l2308743C:
	c.jal	00000000230874EC
	c.j	0000000023087406

l23087440:
	lw	a0,s0,+000003C4
	c.jal	00000000230879C8
	lw	a0,s0,+000003C4
	c.mv	a4,s5
	c.mv	a3,s4
	c.mv	a2,s3
	c.mv	a1,s1
	jal	ra,0000000023088296
	c.beqz	a0,000000002308745C

l23087458:
	c.mv	a0,s0
	c.j	000000002308743C

l2308745C:
	lw	a2,s0,+000003C4
	lw	a1,s0,+000003C0
	c.mv	a0,s0
	jal	ra,000000002308B724
	c.bnez	a0,0000000023087458

l2308746C:
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

;; altcp_tls_free_config: 23087482
;;   Called from:
;;     230804A2 (in tcp_connected_callback)
;;     2308058C (in tcp_receive_callback)
;;     230807FE (in tcp_err_callback)
;;     23080DBC (in bl_cipstart)
;;     23080E96 (in bl_cipstart)
;;     23080F1E (in bl_cipstart)
;;     23081024 (in bl_cipclose)
altcp_tls_free_config proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	lw	a0,a0,+000003C4
	c.beqz	a0,0000000023087492

l23087490:
	c.jal	00000000230879D4

l23087492:
	lw	a0,s0,+000003C0
	c.beqz	a0,000000002308749C

l23087498:
	jal	ra,000000002308FC44

l2308749C:
	lw	a0,s0,+000003C8
	c.beqz	a0,00000000230874A6

l230874A2:
	jal	ra,000000002308FC44

l230874A6:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.j	00000000230874EC

;; altcp_mbedtls_mem_init: 230874B0
;;   Called from:
;;     23086BEC (in altcp_tls_create_config)
altcp_mbedtls_mem_init proc
	c.jr	ra

;; altcp_mbedtls_alloc: 230874B2
;;   Called from:
;;     23086AC4 (in altcp_mbedtls_setup)
altcp_mbedtls_alloc proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	a1,zero,+000000DC
	c.mv	s0,a0
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,000000002306FA34
	c.beqz	a0,00000000230874C8

l230874C6:
	c.sw	a0,0(s0)

l230874C8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; altcp_mbedtls_free: 230874D0
;;   Called from:
;;     23086AE8 (in altcp_mbedtls_setup)
;;     23086D2E (in altcp_mbedtls_dealloc)
altcp_mbedtls_free proc
	c.mv	a0,a1
	jal	zero,000000002306F5E2

;; altcp_mbedtls_alloc_config: 230874D6
;;   Called from:
;;     23086C08 (in altcp_tls_create_config)
altcp_mbedtls_alloc_config proc
	slli	a5,a0,00000010
	c.srli	a5,00000010
	bne	a0,a5,00000000230874E8

l230874E0:
	c.mv	a1,a5
	c.li	a0,00000001
	jal	zero,000000002306FA34

l230874E8:
	c.li	a0,00000000
	c.jr	ra

;; altcp_mbedtls_free_config: 230874EC
;;   Called from:
;;     23086C66 (in altcp_tls_create_config)
;;     23086CDE (in altcp_tls_create_config_client_common)
;;     2308743C (in altcp_tls_create_config_client_2wayauth)
;;     230874AE (in altcp_tls_free_config)
altcp_mbedtls_free_config proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002308BF1C
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002306F5E2

;; block_cipher_df: 23087504
;;   Called from:
;;     2308779E (in mbedtls_ctr_drbg_reseed)
;;     230878B8 (in mbedtls_ctr_drbg_random_with_add)
block_cipher_df proc
	addi	a5,zero,+00000180
	bltu	a5,a2,000000002308766A

l2308750C:
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
	jal	ra,00000000230A3A68
	c.addi4spn	a0,00000068
	jal	ra,00000000230907BE
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
	jal	ra,00000000230A382C
	c.addi4spn	a5,00000320
	c.add	a5,s0
	addi	a4,zero,-00000080
	sb	a4,a5,+00000E78
	c.addi	s0,00000019
	c.li	a5,00000000
	addi	a4,zero,+00000020

l23087584:
	c.addi4spn	a3,00000018
	c.add	a3,a5
	sb	a5,a3,+00000000
	c.addi	a5,00000001
	bne	a5,a4,0000000023087584

l23087592:
	addi	a2,zero,+00000100
	c.addi4spn	a1,00000018
	c.addi4spn	a0,00000068
	jal	ra,00000000230907DC
	c.li	s3,00000000
	c.li	s5,00000010
	addi	s6,zero,+00000030

l230875A6:
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	jal	ra,00000000230A3A68
	c.mv	s2,s0
	addi	s4,sp,+00000180

l230875B6:
	c.addi4spn	a4,00000008
	c.li	a5,00000000

l230875BA:
	add	a3,s4,a5
	lbu	a2,a4,+00000000
	lbu	a3,a3,+00000000
	c.addi	a5,00000001
	c.addi	a4,00000001
	c.xor	a3,a2
	sb	a3,a4,+00000FFF
	bne	a5,s5,00000000230875BA

l230875D4:
	c.addi	s4,00000010
	c.mv	a5,s2
	bgeu	s5,s2,00000000230875DE

l230875DC:
	c.li	a5,00000010

l230875DE:
	c.addi4spn	a3,00000008
	sub	s2,s2,a5
	c.mv	a2,a3
	c.li	a1,00000001
	c.addi4spn	a0,00000068
	jal	ra,0000000023091410
	bne	s2,zero,00000000230875B6

l230875F2:
	c.addi4spn	a5,00000038
	add	a0,a5,s3
	c.li	a2,00000010
	c.addi4spn	a1,00000008
	jal	ra,00000000230A382C
	lbu	a5,sp,+00000183
	c.addi	s3,00000010
	c.addi	a5,00000001
	sb	a5,sp,+00000183
	bne	s3,s6,00000000230875A6

l23087610:
	addi	a2,zero,+00000100
	c.addi4spn	a1,00000038
	c.addi4spn	a0,00000068
	jal	ra,00000000230907DC
	addi	s0,s1,+00000030

l23087620:
	c.addi4spn	a3,00000058
	c.mv	a2,a3
	c.li	a1,00000001
	c.addi4spn	a0,00000068
	jal	ra,0000000023091410
	c.mv	a0,s1
	c.li	a2,00000010
	c.addi4spn	a1,00000058
	c.addi	s1,00000010
	jal	ra,00000000230A382C
	bne	s0,s1,0000000023087620

l2308763C:
	c.addi4spn	a0,00000068
	jal	ra,00000000230907C8
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

l2308766A:
	addi	a0,zero,-00000038
	c.jr	ra

;; ctr_drbg_update_internal: 23087670
;;   Called from:
;;     230877A6 (in mbedtls_ctr_drbg_reseed)
;;     230878C0 (in mbedtls_ctr_drbg_random_with_add)
;;     230878D4 (in mbedtls_ctr_drbg_random_with_add)
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
	jal	ra,00000000230A3A68
	addi	s5,s0,+0000000F
	addi	s3,s0,+00000020
	addi	s6,zero,+00000030

l230876A0:
	c.mv	s1,sp
	add	a3,sp,s2
	c.mv	a4,s5
	c.j	00000000230876AC

l230876AA:
	c.mv	a4,a5

l230876AC:
	lbu	a5,a4,+00000000
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,a4,+00000000
	c.bnez	a5,00000000230876C4

l230876BC:
	addi	a5,a4,-00000001
	bne	s0,a4,00000000230876AA

l230876C4:
	c.mv	a2,s0
	c.li	a1,00000001
	c.mv	a0,s3
	c.addi	s2,00000010
	jal	ra,0000000023091410
	bne	s2,s6,00000000230876A0

l230876D4:
	c.li	a5,00000000
	addi	a3,zero,+00000030

l230876DA:
	add	a4,s4,a5
	lbu	a2,s1,+00000000
	lbu	a4,a4,+00000000
	c.addi	a5,00000001
	c.addi	s1,00000001
	c.xor	a4,a2
	sb	a4,s1,+00000FFF
	bne	a5,a3,00000000230876DA

l230876F4:
	c.mv	a1,sp
	addi	a2,zero,+00000100
	c.mv	a0,s3
	jal	ra,00000000230907DC
	c.addi4spn	a1,00000020
	c.mv	a0,s0
	c.li	a2,00000010
	jal	ra,00000000230A382C
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

;; mbedtls_ctr_drbg_init: 23087720
;;   Called from:
;;     23086C4A (in altcp_tls_create_config)
mbedtls_ctr_drbg_init proc
	addi	a2,zero,+00000140
	c.li	a1,00000000
	jal	zero,00000000230A3A68

;; mbedtls_ctr_drbg_reseed: 2308772A
;;   Called from:
;;     2308782A (in mbedtls_ctr_drbg_seed_entropy_len)
;;     23087896 (in mbedtls_ctr_drbg_random_with_add)
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
	bltu	a5,a4,00000000230877AE

l23087752:
	c.sub	a5,a4
	addi	s2,zero,-00000038
	bltu	a5,a2,00000000230877AE

l2308775C:
	c.mv	s0,a0
	c.mv	s1,a2
	c.mv	s4,a1
	addi	a2,zero,+00000180
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,00000000230A3A68
	lw	a5,s0,+00000138
	c.lw	s0,24(a2)
	lw	a0,s0,+0000013C
	c.mv	a1,sp
	c.jalr	a5
	c.mv	s2,a0
	c.bnez	a0,00000000230877CC

l23087780:
	lw	s3,s0,+00000018
	beq	s4,zero,0000000023087798

l23087788:
	c.beqz	s1,0000000023087798

l2308778A:
	add	a0,sp,s3
	c.mv	a2,s1
	c.mv	a1,s4
	jal	ra,00000000230A382C
	c.add	s3,s1

l23087798:
	c.mv	a2,s3
	c.mv	a1,sp
	c.mv	a0,sp
	jal	ra,0000000023087504
	c.mv	a1,sp
	c.mv	a0,s0
	jal	ra,0000000023087670
	c.li	a5,00000001
	c.sw	s0,16(a5)

l230877AE:
	lw	ra,sp,+0000019C
	lw	s0,sp,+00000198
	c.mv	a0,s2
	lw	s1,sp,+00000194
	lw	s2,sp,+00000190
	lw	s3,sp,+0000018C
	lw	s4,sp,+00000188
	c.addi16sp	000001A0
	c.jr	ra

l230877CC:
	addi	s2,zero,-00000034
	c.j	00000000230877AE

;; mbedtls_ctr_drbg_seed_entropy_len: 230877D2
;;   Called from:
;;     23087840 (in mbedtls_ctr_drbg_seed)
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
	jal	ra,00000000230A3A68
	c.mv	a0,s1
	jal	ra,00000000230907BE
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
	jal	ra,00000000230907DC
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000A4
	c.mv	a0,s0
	c.mv	a2,a4
	c.mv	a1,a3
	jal	ra,000000002308772A
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.addi16sp	00000050
	c.jr	ra

;; mbedtls_ctr_drbg_seed: 2308783C
;;   Called from:
;;     23086C5E (in altcp_tls_create_config)
mbedtls_ctr_drbg_seed proc
	addi	a5,zero,+00000020
	jal	zero,00000000230877D2

;; mbedtls_ctr_drbg_random_with_add: 23087844
;;   Called from:
;;     23087930 (in mbedtls_ctr_drbg_random)
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
	bltu	a5,a2,0000000023087926

l23087860:
	addi	a5,zero,+00000100
	c.swsp	a4,00000004
	c.mv	s0,a0
	addi	a0,zero,-00000038
	bltu	a5,a4,000000002308789C

l23087870:
	c.mv	s3,a1
	c.mv	s1,a2
	c.li	a1,00000000
	addi	a2,zero,+00000030
	c.addi4spn	a0,00000020
	jal	ra,00000000230A3A68
	c.lw	s0,16(a2)
	c.lw	s0,28(a5)
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000A4
	blt	a5,a2,0000000023087890

l2308788C:
	c.lw	s0,20(a5)
	c.beqz	a5,00000000230878B0

l23087890:
	c.mv	a2,a4
	c.mv	a1,a3
	c.mv	a0,s0
	jal	ra,000000002308772A
	c.beqz	a0,00000000230878C4

l2308789C:
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

l230878B0:
	c.beqz	a4,00000000230878C4

l230878B2:
	c.mv	a1,a3
	c.mv	a2,a4
	c.addi4spn	a0,00000020
	jal	ra,0000000023087504
	c.addi4spn	a1,00000020
	c.mv	a0,s0
	jal	ra,0000000023087670

l230878C4:
	addi	s4,s0,+0000000F
	addi	s5,s0,+00000020
	c.li	s6,00000010

l230878CE:
	c.bnez	s1,00000000230878E2

l230878D0:
	c.addi4spn	a1,00000020
	c.mv	a0,s0
	jal	ra,0000000023087670
	c.lw	s0,16(a5)
	c.li	a0,00000000
	c.addi	a5,00000001
	c.sw	s0,16(a5)
	c.j	000000002308789C

l230878E2:
	c.mv	a4,s4

l230878E4:
	lbu	a5,a4,+00000000
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,a4,+00000000
	c.bnez	a5,00000000230878FC

l230878F4:
	addi	a5,a4,-00000001
	bne	s0,a4,0000000023087922

l230878FC:
	c.addi4spn	a3,00000010
	c.mv	a2,s0
	c.li	a1,00000001
	c.mv	a0,s5
	jal	ra,0000000023091410
	c.mv	s2,s1
	bgeu	s6,s1,0000000023087910

l2308790E:
	c.li	s2,00000010

l23087910:
	c.mv	a0,s3
	c.mv	a2,s2
	c.addi4spn	a1,00000010
	jal	ra,00000000230A382C
	c.add	s3,s2
	sub	s1,s1,s2
	c.j	00000000230878CE

l23087922:
	c.mv	a4,a5
	c.j	00000000230878E4

l23087926:
	addi	a0,zero,-00000036
	c.j	000000002308789C

;; mbedtls_ctr_drbg_random: 2308792C
mbedtls_ctr_drbg_random proc
	c.li	a4,00000000
	c.li	a3,00000000
	jal	zero,0000000023087844

;; mbedtls_entropy_init: 23087934
;;   Called from:
;;     23086C44 (in altcp_tls_create_config)
mbedtls_entropy_init proc
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+00000208
	c.li	a1,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,00000000230A3A68
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023089A96
	c.lw	s0,116(a4)
	c.li	a5,00000013
	blt	a5,a4,000000002308797E

l23087956:
	c.li	a5,00000014
	add	a5,a4,a5
	lui	a3,00023088
	addi	a3,a3,-0000067A
	c.addi	a4,00000001
	c.add	a5,s0
	c.sw	a5,120(a3)
	addi	a3,zero,+00000020
	sw	a3,a5,+00000084
	c.li	a3,00000001
	sw	zero,a5,+0000007C
	sw	a3,a5,+00000088
	c.sw	s0,116(a4)

l2308797E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_platform_entropy_poll: 23087986
mbedtls_platform_entropy_poll proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	sw	zero,a3,+00000000
	c.li	a0,00000000
	c.li	s0,00000000

l23087994:
	bne	s0,a2,00000000230879A4

l23087998:
	c.sw	a3,0(s0)
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l230879A4:
	andi	a5,s0,+00000003
	c.bnez	a5,00000000230879BA

l230879AA:
	c.swsp	a3,00000084
	c.swsp	a2,00000004
	c.swsp	a1,00000080
	jal	ra,0000000023065C28
	c.lwsp	a2,000000A4
	c.lwsp	s0,00000084
	c.lwsp	tp,00000064

l230879BA:
	add	a5,a1,s0
	sb	a0,a5,+00000000
	c.addi	s0,00000001
	c.srli	a0,00000008
	c.j	0000000023087994

;; mbedtls_pk_init: 230879C8
;;   Called from:
;;     23087444 (in altcp_tls_create_config_client_2wayauth)
mbedtls_pk_init proc
	c.beqz	a0,00000000230879D2

l230879CA:
	sw	zero,a0,+00000000
	sw	zero,a0,+00000004

l230879D2:
	c.jr	ra

;; mbedtls_pk_free: 230879D4
;;   Called from:
;;     23087490 (in altcp_tls_free_config)
;;     230880DA (in pk_parse_key_pkcs8_unencrypted_der)
;;     230881D4 (in mbedtls_pk_parse_subpubkey)
;;     230882D0 (in mbedtls_pk_parse_key)
;;     230882F8 (in mbedtls_pk_parse_key)
;;     23088322 (in mbedtls_pk_parse_key)
;;     2308839E (in mbedtls_pk_parse_key)
;;     2308FC5C (in mbedtls_x509_crt_free)
mbedtls_pk_free proc
	c.beqz	a0,0000000023087A00

l230879D6:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,0(a5)
	c.mv	s0,a0
	c.beqz	a5,00000000230879F0

l230879E2:
	c.lw	a5,40(a5)
	c.lw	a0,4(a0)
	c.jalr	a5
	addi	a5,s0,+00000008

l230879EC:
	bne	s0,a5,00000000230879F8

l230879F0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230879F8:
	sb	zero,s0,+00000000
	c.addi	s0,00000001
	c.j	00000000230879EC

l23087A00:
	c.jr	ra

;; mbedtls_pk_info_from_type: 23087A02
;;   Called from:
;;     230880A6 (in pk_parse_key_pkcs8_unencrypted_der)
;;     23088196 (in mbedtls_pk_parse_subpubkey)
;;     230882D6 (in mbedtls_pk_parse_key)
;;     230882FE (in mbedtls_pk_parse_key)
;;     2308835C (in mbedtls_pk_parse_key)
;;     23088400 (in mbedtls_pk_parse_key)
mbedtls_pk_info_from_type proc
	c.addi	a0,FFFFFFFF
	andi	a0,a0,+000000FF
	c.li	a5,00000002
	bltu	a5,a0,0000000023087A1E

l23087A0E:
	lui	a5,000230C7
	addi	a5,a5,-00000518
	c.slli	a0,02
	c.add	a0,a5
	c.lw	a0,0(a0)
	c.jr	ra

l23087A1E:
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_pk_setup: 23087A22
;;   Called from:
;;     230880B8 (in pk_parse_key_pkcs8_unencrypted_der)
;;     230881A2 (in mbedtls_pk_parse_subpubkey)
;;     230882E0 (in mbedtls_pk_parse_key)
;;     23088308 (in mbedtls_pk_parse_key)
;;     23088386 (in mbedtls_pk_parse_key)
;;     2308840A (in mbedtls_pk_parse_key)
mbedtls_pk_setup proc
	c.beqz	a0,0000000023087A4C

l23087A24:
	c.beqz	a1,0000000023087A4C

l23087A26:
	c.lw	a0,0(a5)
	c.bnez	a5,0000000023087A4C

l23087A2A:
	c.lw	a1,36(a5)
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	c.jalr	a5
	c.sw	s0,4(a0)
	c.beqz	a0,0000000023087A54

l23087A3E:
	c.sw	s0,0(s1)
	c.li	a0,00000000

l23087A42:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23087A4C:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000180
	c.jr	ra

l23087A54:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000080
	c.j	0000000023087A42

;; mbedtls_pk_can_do: 23087A5C
;;   Called from:
;;     23087BE4 (in mbedtls_pk_verify_ext)
;;     2308BF4C (in mbedtls_ssl_sig_from_pk)
;;     2308E6A4 (in mbedtls_ssl_parse_certificate)
;;     2309C02A (in mbedtls_ssl_handshake_server_step)
mbedtls_pk_can_do proc
	c.beqz	a0,0000000023087A6A

l23087A5E:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023087A6A

l23087A62:
	lw	t1,a5,+0000000C
	c.mv	a0,a1
	c.jr	t1

l23087A6A:
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_pk_verify: 23087A6E
;;   Called from:
;;     23087C58 (in mbedtls_pk_verify_ext)
mbedtls_pk_verify proc
	c.bnez	a0,0000000023087A86

l23087A70:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000180
	c.jr	ra

l23087A78:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000180

l23087A7E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23087A86:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.beqz	a0,0000000023087A78

l23087A92:
	c.bnez	a3,0000000023087AB2

l23087A94:
	c.mv	a0,a1
	c.swsp	a5,00000084
	c.swsp	a4,00000004
	c.swsp	a2,00000080
	c.swsp	a1,00000000
	jal	ra,0000000023096520
	c.beqz	a0,0000000023087A78

l23087AA4:
	jal	ra,0000000023096834
	c.lwsp	a2,000000E4
	c.lwsp	s0,000000C4
	c.lwsp	tp,00000084
	c.lwsp	zero,00000064
	c.mv	a3,a0

l23087AB2:
	c.lw	s0,0(a0)
	lw	t1,a0,+00000010
	beq	t1,zero,0000000023087AC6

l23087ABC:
	c.lw	s0,4(a0)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	t1

l23087AC6:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000100
	c.j	0000000023087A7E

;; mbedtls_pk_sign: 23087ACE
mbedtls_pk_sign proc
	c.bnez	a0,0000000023087AE6

l23087AD0:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000180
	c.jr	ra

l23087AD8:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000180

l23087ADE:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

l23087AE6:
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.beqz	a0,0000000023087AD8

l23087AF2:
	c.bnez	a3,0000000023087B1A

l23087AF4:
	c.mv	a0,a1
	c.swsp	a7,0000008C
	c.swsp	a6,0000000C
	c.swsp	a5,00000088
	c.swsp	a4,00000008
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	jal	ra,0000000023096520
	c.beqz	a0,0000000023087AD8

l23087B08:
	jal	ra,0000000023096834
	c.lwsp	t3,00000028
	c.lwsp	s8,00000008
	c.lwsp	s4,000000E4
	c.lwsp	a6,000000C4
	c.lwsp	a2,00000084
	c.lwsp	s0,00000064
	c.mv	a3,a0

l23087B1A:
	c.lw	s0,0(a0)
	lw	t1,a0,+00000014
	beq	t1,zero,0000000023087B2E

l23087B24:
	c.lw	s0,4(a0)
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.addi16sp	00000030
	c.jr	t1

l23087B2E:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000100
	c.j	0000000023087ADE

;; mbedtls_pk_decrypt: 23087B36
mbedtls_pk_decrypt proc
	c.beqz	a0,0000000023087B4C

l23087B38:
	lw	t1,a0,+00000000
	beq	t1,zero,0000000023087B4C

l23087B40:
	lw	t1,t1,+00000018
	beq	t1,zero,0000000023087B54

l23087B48:
	c.lw	a0,4(a0)
	c.jr	t1

l23087B4C:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000180
	c.jr	ra

l23087B54:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000100
	c.jr	ra

;; mbedtls_pk_encrypt: 23087B5C
mbedtls_pk_encrypt proc
	c.beqz	a0,0000000023087B72

l23087B5E:
	lw	t1,a0,+00000000
	beq	t1,zero,0000000023087B72

l23087B66:
	lw	t1,t1,+0000001C
	beq	t1,zero,0000000023087B7A

l23087B6E:
	c.lw	a0,4(a0)
	c.jr	t1

l23087B72:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000180
	c.jr	ra

l23087B7A:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000100
	c.jr	ra

;; mbedtls_pk_get_bitlen: 23087B82
;;   Called from:
;;     23087BF4 (in mbedtls_pk_verify_ext)
;;     23087C22 (in mbedtls_pk_verify_ext)
;;     2308EE34 (in x509_profile_check_key)
;;     2308F04A (in mbedtls_x509_crt_info)
mbedtls_pk_get_bitlen proc
	c.beqz	a0,0000000023087B90

l23087B84:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023087B90

l23087B88:
	lw	t1,a5,+00000008
	c.lw	a0,4(a0)
	c.jr	t1

l23087B90:
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_pk_verify_ext: 23087B94
;;   Called from:
;;     2308F716 (in x509_crt_verify_top.isra.7)
;;     2308F91E (in x509_crt_verify_child)
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
	c.bnez	a2,0000000023087BC8

l23087BAA:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000180

l23087BB0:
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

l23087BC8:
	lw	t1,a2,+00000000
	beq	t1,zero,0000000023087BAA

l23087BD0:
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
	jal	ra,0000000023087A5C
	c.beqz	a0,0000000023087C5C

l23087BEA:
	c.li	a5,00000006
	bne	s7,a5,0000000023087C36

l23087BF0:
	c.beqz	s0,0000000023087BAA

l23087BF2:
	c.mv	a0,s1
	jal	ra,0000000023087B82
	c.addi	a0,00000007
	c.srli	a0,00000003
	bltu	s2,a0,0000000023087C64

l23087C00:
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
	jal	ra,0000000023089614
	c.mv	s0,a0
	c.bnez	a0,0000000023087BB0

l23087C20:
	c.mv	a0,s1
	jal	ra,0000000023087B82
	c.addi	a0,00000007
	c.srli	a0,00000003
	bgeu	a0,s2,0000000023087BB0

l23087C2E:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000700
	c.j	0000000023087BB0

l23087C36:
	c.bnez	s0,0000000023087BAA

l23087C38:
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
	jal	zero,0000000023087A6E

l23087C5C:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000100
	c.j	0000000023087BB0

l23087C64:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000380
	c.j	0000000023087BB0

;; mbedtls_pk_debug: 23087C6C
;;   Called from:
;;     23094264 (in mbedtls_debug_print_crt)
mbedtls_pk_debug proc
	c.beqz	a0,0000000023087C86

l23087C6E:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023087C86

l23087C72:
	c.lw	a5,44(a5)
	c.beqz	a5,0000000023087C8E

l23087C76:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,4(a0)
	c.jalr	a5
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23087C86:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000180
	c.jr	ra

l23087C8E:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000100
	c.jr	ra

;; mbedtls_pk_get_name: 23087C96
;;   Called from:
;;     2308F036 (in mbedtls_x509_crt_info)
mbedtls_pk_get_name proc
	c.beqz	a0,0000000023087CA0

l23087C98:
	c.lw	a0,0(a5)
	c.beqz	a5,0000000023087CA0

l23087C9C:
	c.lw	a5,4(a0)
	c.jr	ra

l23087CA0:
	lui	a0,000230C7
	addi	a0,a0,-0000050C
	c.jr	ra

;; mbedtls_pk_get_type: 23087CAA
;;   Called from:
;;     2308FB12 (in mbedtls_x509_crt_verify_with_profile)
mbedtls_pk_get_type proc
	c.beqz	a0,0000000023087CB8

l23087CAC:
	c.lw	a0,0(a5)
	c.li	a0,00000000
	c.beqz	a5,0000000023087CBA

l23087CB2:
	lbu	a0,a5,+00000000
	c.jr	ra

l23087CB8:
	c.li	a0,00000000

l23087CBA:
	c.jr	ra

;; pk_use_ecparams: 23087CBC
;;   Called from:
;;     23087EEA (in pk_parse_key_sec1_der)
;;     230880EE (in pk_parse_key_pkcs8_unencrypted_der)
;;     23088246 (in mbedtls_pk_parse_subpubkey)
pk_use_ecparams proc
	c.lw	a0,0(a4)
	c.li	a5,00000006
	beq	a4,a5,0000000023087CDA

l23087CC4:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000300
	c.jr	ra

l23087CCC:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000300

l23087CD2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23087CDA:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a1
	addi	a1,sp,+0000000F
	c.swsp	ra,0000008C
	jal	ra,0000000023096B18
	c.bnez	a0,0000000023087D02

l23087CEC:
	lbu	a5,s0,+00000000
	lbu	a1,sp,+0000000F
	c.beqz	a5,0000000023087CFA

l23087CF6:
	bne	a5,a1,0000000023087CCC

l23087CFA:
	c.mv	a0,s0
	jal	ra,0000000023095B7C
	c.j	0000000023087CD2

l23087D02:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000600
	c.j	0000000023087CD2

;; pk_parse_key_pkcs1_der: 23087D0A
;;   Called from:
;;     230880D0 (in pk_parse_key_pkcs8_unencrypted_der)
;;     230882EE (in mbedtls_pk_parse_key)
;;     23088394 (in mbedtls_pk_parse_key)
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
	jal	ra,000000002309171C
	c.beqz	a0,0000000023087D42

l23087D2A:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000300

l23087D30:
	c.add	s0,a0

l23087D32:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23087D42:
	c.lwsp	a2,00000048
	c.lwsp	s0,000000E4
	c.mv	a2,s1
	c.addi4spn	a0,0000000C
	c.add	s2,a5
	c.mv	a1,s2
	jal	ra,0000000023091782
	c.bnez	a0,0000000023087D2A

l23087D54:
	c.lw	s1,0(a5)
	c.bnez	a5,0000000023087E16

l23087D58:
	addi	s3,s1,+00000008
	c.mv	a2,s3
	c.mv	a1,s2
	c.addi4spn	a0,0000000C
	jal	ra,00000000230917E0
	c.mv	s0,a0
	c.bnez	a0,0000000023087DDA

l23087D6A:
	addi	a2,s1,+00000014
	c.mv	a1,s2
	c.addi4spn	a0,0000000C
	jal	ra,00000000230917E0
	c.mv	s0,a0
	c.bnez	a0,0000000023087DDA

l23087D7A:
	addi	a2,s1,+00000020
	c.mv	a1,s2
	c.addi4spn	a0,0000000C
	jal	ra,00000000230917E0
	c.mv	s0,a0
	c.bnez	a0,0000000023087DDA

l23087D8A:
	addi	a2,s1,+0000002C
	c.mv	a1,s2
	c.addi4spn	a0,0000000C
	jal	ra,00000000230917E0
	c.mv	s0,a0
	c.bnez	a0,0000000023087DDA

l23087D9A:
	addi	a2,s1,+00000038
	c.mv	a1,s2
	c.addi4spn	a0,0000000C
	jal	ra,00000000230917E0
	c.mv	s0,a0
	c.bnez	a0,0000000023087DDA

l23087DAA:
	addi	a2,s1,+00000044
	c.mv	a1,s2
	c.addi4spn	a0,0000000C
	jal	ra,00000000230917E0
	c.mv	s0,a0
	c.bnez	a0,0000000023087DDA

l23087DBA:
	addi	a2,s1,+00000050
	c.mv	a1,s2
	c.addi4spn	a0,0000000C
	jal	ra,00000000230917E0
	c.mv	s0,a0
	c.bnez	a0,0000000023087DDA

l23087DCA:
	addi	a2,s1,+0000005C
	c.mv	a1,s2
	c.addi4spn	a0,0000000C
	jal	ra,00000000230917E0
	c.mv	s0,a0
	c.beqz	a0,0000000023087DE8

l23087DDA:
	c.mv	a0,s1
	jal	ra,00000000230899F0
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000300
	c.j	0000000023087D30

l23087DE8:
	c.mv	a0,s3
	jal	ra,000000002309214A
	c.lwsp	a2,000000E4
	c.sw	s1,4(a0)
	c.mv	a0,s1
	beq	a5,s2,0000000023087E04

l23087DF8:
	c.lui	s0,FFFFC000
	jal	ra,00000000230899F0
	addi	s0,s0,+0000029A
	c.j	0000000023087D32

l23087E04:
	jal	ra,0000000023088754
	c.mv	s0,a0
	beq	a0,zero,0000000023087D32

l23087E0E:
	c.mv	a0,s1
	jal	ra,00000000230899F0
	c.j	0000000023087D32

l23087E16:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000280
	c.j	0000000023087D32

;; pk_parse_key_sec1_der: 23087E1E
;;   Called from:
;;     230880FC (in pk_parse_key_pkcs8_unencrypted_der)
;;     23088316 (in mbedtls_pk_parse_key)
;;     23088418 (in mbedtls_pk_parse_key)
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
	jal	ra,000000002309171C
	c.beqz	a0,0000000023087E46

l23087E3E:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000300
	c.j	0000000023087E8C

l23087E46:
	c.lwsp	a6,00000048
	c.lwsp	a2,000000E4
	c.addi4spn	a2,00000008
	c.addi4spn	a0,00000010
	c.add	s2,a5
	c.mv	a1,s2
	jal	ra,0000000023091782
	c.bnez	a0,0000000023087E3E

l23087E58:
	c.lwsp	s0,000000C4
	c.li	a5,00000001
	bne	a4,a5,0000000023087FB2

l23087E60:
	c.li	a3,00000004
	c.addi4spn	a2,0000000C
	c.mv	a1,s2
	c.addi4spn	a0,00000010
	jal	ra,000000002309171C
	c.bnez	a0,0000000023087E3E

l23087E6E:
	c.lwsp	a2,00000084
	c.lwsp	a6,00000064
	addi	s3,s1,+0000007C
	c.mv	a0,s3
	jal	ra,000000002309215C
	c.mv	s0,a0
	c.beqz	a0,0000000023087E9E

l23087E80:
	c.mv	a0,s1
	jal	ra,0000000023094D76
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000300

l23087E8C:
	c.add	s0,a0

l23087E8E:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l23087E9E:
	c.lwsp	a6,000000E4
	c.lwsp	a2,000000C4
	c.add	a5,a4
	c.swsp	a5,00000008
	beq	a5,s2,0000000023087F88

l23087EAA:
	addi	a3,zero,+000000A0
	c.addi4spn	a2,0000000C
	c.mv	a1,s2
	c.addi4spn	a0,00000010
	jal	ra,000000002309171C
	c.mv	s0,a0
	c.bnez	a0,0000000023087F18

l23087EBC:
	c.lwsp	a6,000000E4
	c.lwsp	a2,00000004
	c.li	a4,00000006
	c.add	s0,a5
	lbu	a5,a5,+00000000
	c.swsp	a5,00000088
	bne	a5,a4,0000000023087F10

l23087ECE:
	c.li	a3,00000006
	c.addi4spn	a2,00000018
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	jal	ra,000000002309171C
	c.beqz	a0,0000000023087EFA

l23087EDC:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000300
	c.add	s0,a0
	c.bnez	s0,0000000023087EF2

l23087EE6:
	c.mv	a1,s1
	c.addi4spn	a0,00000014
	jal	ra,0000000023087CBC
	c.mv	s0,a0
	c.beqz	a0,0000000023087F20

l23087EF2:
	c.mv	a0,s1
	jal	ra,0000000023094D76
	c.j	0000000023087E8E

l23087EFA:
	c.lwsp	a6,000000E4
	c.lwsp	s8,000000C4
	c.swsp	a5,0000008C
	c.add	a5,a4
	c.swsp	a5,00000008
	beq	s0,a5,0000000023087EE6

l23087F08:
	c.lui	a0,FFFFC000
	addi	s0,a0,+0000029A
	c.j	0000000023087EF2

l23087F10:
	c.lui	a0,FFFFC000
	addi	s0,a0,+0000029E
	c.j	0000000023087EF2

l23087F18:
	addi	a5,zero,-00000062
	bne	a0,a5,0000000023087E80

l23087F20:
	addi	a3,zero,+000000A1
	c.addi4spn	a2,0000000C
	c.mv	a1,s2
	c.addi4spn	a0,00000010
	jal	ra,000000002309171C
	c.mv	s0,a0
	c.bnez	a0,0000000023087F80

l23087F32:
	c.lwsp	a6,00000004
	c.lwsp	a2,000000E4
	c.addi4spn	a2,0000000C
	c.addi4spn	a0,00000010
	c.add	s0,a5
	c.mv	a1,s0
	jal	ra,0000000023091870
	bne	a0,zero,0000000023087E3E

l23087F46:
	c.lwsp	a6,00000084
	c.lwsp	a2,000000E4
	c.add	a5,a2
	bne	s0,a5,0000000023087FBA

l23087F50:
	addi	s2,s1,+00000088
	sub	a3,s0,a2
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230956B0
	c.bnez	a0,0000000023087F6A

l23087F62:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002309574C

l23087F6A:
	c.swsp	s0,00000008
	c.beqz	a0,0000000023087FA2

l23087F6E:
	c.lui	a5,FFFFB000
	addi	a5,a5,+00000180
	beq	a0,a5,0000000023087F88

l23087F78:
	c.lui	a0,FFFFC000
	addi	s0,a0,+00000300
	c.j	0000000023087E8E

l23087F80:
	addi	a5,zero,-00000062
	bne	a0,a5,0000000023087E80

l23087F88:
	c.li	a5,00000000
	c.li	a4,00000000
	addi	a3,s1,+00000028
	c.mv	a2,s3
	addi	a1,s1,+00000088
	c.mv	a0,s1
	jal	ra,000000002309590E
	c.mv	s0,a0
	bne	a0,zero,0000000023087E80

l23087FA2:
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,00000000230958C2
	c.mv	s0,a0
	beq	a0,zero,0000000023087E8E

l23087FB0:
	c.j	0000000023087EF2

l23087FB2:
	c.lui	a0,FFFFC000
	addi	s0,a0,+00000280
	c.j	0000000023087E8E

l23087FBA:
	c.lui	a0,FFFFC000
	addi	s0,a0,+0000029A
	c.j	0000000023087E8E

;; pk_get_pk_alg: 23087FC2
;;   Called from:
;;     2308808A (in pk_parse_key_pkcs8_unencrypted_der)
;;     2308816A (in mbedtls_pk_parse_subpubkey)
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
	jal	ra,00000000230A3A68
	c.mv	a3,s0
	c.addi4spn	a2,00000004
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,0000000023091946
	c.beqz	a0,0000000023088004

l23087FEE:
	c.lui	a5,FFFFC000
	addi	a5,a5,+00000580
	c.add	a0,a5

l23087FF6:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23088004:
	c.mv	a1,s1
	c.addi4spn	a0,00000004
	jal	ra,0000000023096AC8
	c.bnez	a0,000000002308802E

l2308800E:
	lbu	a4,s1,+00000000
	c.li	a5,00000001
	bne	a4,a5,0000000023087FF6

l23088018:
	c.lw	s0,0(a5)
	c.li	a4,00000005
	beq	a5,a4,0000000023088022

l23088020:
	c.bnez	a5,0000000023088026

l23088022:
	c.lw	s0,4(a5)
	c.beqz	a5,0000000023087FF6

l23088026:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000580
	c.j	0000000023087FF6

l2308802E:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000380
	c.j	0000000023087FF6

;; pk_parse_key_pkcs8_unencrypted_der: 23088036
;;   Called from:
;;     230882C6 (in mbedtls_pk_parse_key)
;;     23088460 (in mbedtls_pk_parse_key)
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
	jal	ra,000000002309171C
	c.beqz	a0,000000002308806A

l23088056:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000300
	c.add	s0,a0

l2308805E:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l2308806A:
	c.lwsp	a6,00000004
	c.lwsp	a2,000000E4
	c.addi4spn	a2,00000008
	c.addi4spn	a0,00000010
	c.add	s0,a5
	c.mv	a1,s0
	jal	ra,0000000023091782
	c.bnez	a0,0000000023088056

l2308807C:
	c.lwsp	s0,000000E4
	c.bnez	a5,0000000023088102

l23088080:
	c.addi4spn	a3,00000014
	addi	a2,sp,+00000007
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	jal	ra,0000000023087FC2
	c.bnez	a0,0000000023088056

l23088090:
	c.li	a3,00000004
	c.addi4spn	a2,0000000C
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	jal	ra,000000002309171C
	c.bnez	a0,0000000023088056

l2308809E:
	c.lwsp	a2,000000E4
	c.beqz	a5,000000002308810A

l230880A2:
	lbu	a0,sp,+00000007
	jal	ra,0000000023087A02
	c.mv	a1,a0
	c.bnez	a0,00000000230880B6

l230880AE:
	c.lui	a0,FFFFC000
	addi	s0,a0,+00000380
	c.j	000000002308805E

l230880B6:
	c.mv	a0,s1
	jal	ra,0000000023087A22
	c.mv	s0,a0
	c.bnez	a0,000000002308805E

l230880C0:
	lbu	a5,sp,+00000007
	c.li	a4,00000001
	bne	a5,a4,00000000230880E0

l230880CA:
	c.lwsp	a2,00000084
	c.lwsp	a6,00000064
	c.lw	s1,4(a0)
	jal	ra,0000000023087D0A

l230880D4:
	c.mv	s0,a0
	c.beqz	a0,000000002308805E

l230880D8:
	c.mv	a0,s1
	jal	ra,00000000230879D4
	c.j	000000002308805E

l230880E0:
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	bltu	a4,a5,00000000230880AE

l230880EA:
	c.lw	s1,4(a1)
	c.addi4spn	a0,00000014
	jal	ra,0000000023087CBC
	c.mv	s0,a0
	c.bnez	a0,00000000230880D8

l230880F6:
	c.lwsp	a2,00000084
	c.lwsp	a6,00000064
	c.lw	s1,4(a0)
	jal	ra,0000000023087E1E
	c.j	00000000230880D4

l23088102:
	c.lui	a0,FFFFC000
	addi	s0,a0,+00000280
	c.j	000000002308805E

l2308810A:
	c.lui	a0,FFFFC000
	addi	s0,a0,+000002A0
	c.j	000000002308805E

;; mbedtls_pk_parse_subpubkey: 23088112
;;   Called from:
;;     2308FF9C (in mbedtls_x509_crt_parse_der)
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
	jal	ra,000000002309171C
	c.beqz	a0,0000000023088158

l23088138:
	c.lui	a5,FFFFC000
	addi	a5,a5,+00000300

l2308813E:
	add	s1,a0,a5

l23088142:
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

l23088158:
	lw	s2,s3,+00000000
	c.lwsp	a2,000000E4
	c.addi4spn	a3,00000014
	addi	a2,sp,+0000000B
	c.add	s2,a5
	c.mv	a1,s2
	c.mv	a0,s3
	jal	ra,0000000023087FC2
	c.mv	s1,a0
	c.bnez	a0,0000000023088142

l23088172:
	c.addi4spn	a2,0000000C
	c.mv	a1,s2
	c.mv	a0,s3
	jal	ra,0000000023091870
	c.beqz	a0,0000000023088186

l2308817E:
	c.lui	a5,FFFFC000
	addi	a5,a5,+00000500
	c.j	000000002308813E

l23088186:
	lw	a5,s3,+00000000
	c.lwsp	a2,000000C4
	c.add	a5,a4
	bne	s2,a5,0000000023088286

l23088192:
	lbu	a0,sp,+0000000B
	jal	ra,0000000023087A02
	c.mv	a1,a0
	beq	a0,zero,000000002308828E

l230881A0:
	c.mv	a0,s4
	jal	ra,0000000023087A22
	c.mv	s1,a0
	c.bnez	a0,0000000023088142

l230881AA:
	lbu	a5,sp,+0000000B
	c.li	a4,00000001
	bne	a5,a4,0000000023088236

l230881B4:
	addi	a3,zero,+00000030
	c.addi4spn	a2,00000010
	c.mv	a1,s2
	c.mv	a0,s3
	lw	s0,s4,+00000004
	jal	ra,000000002309171C
	c.beqz	a0,00000000230881DC

l230881C8:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000500
	c.add	s0,a0
	c.beqz	s0,0000000023088224

l230881D2:
	c.mv	a0,s4
	jal	ra,00000000230879D4
	c.mv	s1,s0
	c.j	0000000023088142

l230881DC:
	lw	a5,s3,+00000000
	c.lwsp	a6,000000C4
	c.add	a5,a4
	beq	s2,a5,00000000230881F0

l230881E8:
	c.lui	s0,FFFFC000
	addi	s0,s0,+0000049A
	c.j	00000000230881D2

l230881F0:
	addi	s5,s0,+00000008
	c.mv	a2,s5
	c.mv	a1,s2
	c.mv	a0,s3
	jal	ra,00000000230917E0
	c.bnez	a0,00000000230881C8

l23088200:
	addi	a2,s0,+00000014
	c.mv	a1,s2
	c.mv	a0,s3
	jal	ra,00000000230917E0
	c.bnez	a0,00000000230881C8

l2308820E:
	lw	a5,s3,+00000000
	bne	s2,a5,00000000230881E8

l23088216:
	c.mv	a0,s0
	c.jal	00000000230886E0
	c.bnez	a0,000000002308822E

l2308821C:
	c.mv	a0,s5
	jal	ra,000000002309214A
	c.sw	s0,4(a0)

l23088224:
	lw	a5,s3,+00000000
	bne	a5,s2,00000000230881E8

l2308822C:
	c.j	0000000023088142

l2308822E:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000500
	c.j	00000000230881D2

l23088236:
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	bltu	a4,a5,000000002308827E

l23088240:
	lw	a1,s4,+00000004
	c.addi4spn	a0,00000014
	jal	ra,0000000023087CBC
	c.mv	s0,a0
	c.bnez	a0,00000000230881D2

l2308824E:
	lw	s5,s4,+00000004
	lw	a2,s3,+00000000
	addi	s6,s5,+00000088
	sub	a3,s2,a2
	c.mv	a1,s6
	c.mv	a0,s5
	jal	ra,00000000230956B0
	c.mv	s0,a0
	c.bnez	a0,0000000023088274

l2308826A:
	c.mv	a1,s6
	c.mv	a0,s5
	jal	ra,000000002309574C
	c.mv	s0,a0

l23088274:
	sw	s2,s3,+00000000
	beq	s0,zero,0000000023088142

l2308827C:
	c.j	00000000230881D2

l2308827E:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000380
	c.j	00000000230881D2

l23088286:
	c.lui	s1,FFFFC000
	addi	s1,s1,+0000049A
	c.j	0000000023088142

l2308828E:
	c.lui	s1,FFFFC000
	addi	s1,s1,+00000380
	c.j	0000000023088142

;; mbedtls_pk_parse_key: 23088296
;;   Called from:
;;     23087452 (in altcp_tls_create_config_client_2wayauth)
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
	jal	ra,0000000023096D06
	bne	s3,zero,000000002308832C

l230882C0:
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023088036
	beq	a0,zero,000000002308846C

l230882CE:
	c.mv	a0,s1
	jal	ra,00000000230879D4
	c.li	a0,00000001
	jal	ra,0000000023087A02
	c.mv	a1,a0
	c.beqz	a0,0000000023088364

l230882DE:
	c.mv	a0,s1
	jal	ra,0000000023087A22
	bne	a0,zero,000000002308846C

l230882E8:
	c.lw	s1,4(a0)
	c.mv	a2,s3
	c.mv	a1,s2
	jal	ra,0000000023087D0A
	beq	a0,zero,000000002308846C

l230882F6:
	c.mv	a0,s1
	jal	ra,00000000230879D4
	c.li	a0,00000002
	jal	ra,0000000023087A02
	c.mv	a1,a0
	c.beqz	a0,0000000023088364

l23088306:
	c.mv	a0,s1
	jal	ra,0000000023087A22
	bne	a0,zero,000000002308846C

l23088310:
	c.lw	s1,4(a0)
	c.mv	a2,s3
	c.mv	a1,s2
	jal	ra,0000000023087E1E
	beq	a0,zero,000000002308846C

l2308831E:
	c.mv	a0,s1
	c.lui	s0,FFFFC000
	jal	ra,00000000230879D4
	addi	s0,s0,+00000300
	c.j	000000002308836A

l2308832C:
	addi	s4,s3,-00000001
	c.add	s4,s2
	lbu	a5,s4,+00000000
	c.bnez	a5,00000000230882C0

l23088338:
	lui	a2,000230C7
	lui	a1,000230C7
	c.mv	a6,sp
	c.mv	a5,s6
	c.mv	a4,s5
	c.mv	a3,s2
	addi	a2,a2,-00000500
	addi	a1,a1,-000004E0
	c.addi4spn	a0,00000004
	jal	ra,0000000023096D0E
	c.mv	s0,a0
	c.bnez	a0,00000000230883AA

l2308835A:
	c.li	a0,00000001
	jal	ra,0000000023087A02
	c.mv	a1,a0
	c.bnez	a0,0000000023088384

l23088364:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000380

l2308836A:
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

l23088384:
	c.mv	a0,s1
	jal	ra,0000000023087A22
	c.mv	s0,a0
	c.bnez	a0,000000002308839C

l2308838E:
	c.lwsp	s0,00000084
	c.lwsp	tp,00000064
	c.lw	s1,4(a0)
	jal	ra,0000000023087D0A

l23088398:
	c.mv	s0,a0
	c.beqz	a0,00000000230883A2

l2308839C:
	c.mv	a0,s1
	jal	ra,00000000230879D4

l230883A2:
	c.addi4spn	a0,00000004
	jal	ra,0000000023097016
	c.j	000000002308836A

l230883AA:
	c.lui	a5,FFFFF000
	addi	s7,a5,-00000380
	bne	a0,s7,00000000230883BC

l230883B4:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000480
	c.j	000000002308836A

l230883BC:
	addi	s8,a5,-00000300
	bne	a0,s8,00000000230883CC

l230883C4:
	c.lui	s0,FFFFC000
	addi	s0,s0,+00000400
	c.j	000000002308836A

l230883CC:
	addi	a5,a5,-00000080
	bne	a0,a5,000000002308836A

l230883D4:
	lbu	a5,s4,+00000000
	bne	a5,zero,00000000230882C0

l230883DC:
	lui	a2,000230C7
	lui	a1,000230C7
	c.mv	a6,sp
	c.mv	a5,s6
	c.mv	a4,s5
	c.mv	a3,s2
	addi	a2,a2,-000004C0
	addi	a1,a1,-000004A0
	c.addi4spn	a0,00000004
	jal	ra,0000000023096D0E
	c.mv	s0,a0
	c.bnez	a0,000000002308841E

l230883FE:
	c.li	a0,00000002
	jal	ra,0000000023087A02
	c.mv	a1,a0
	c.beqz	a0,0000000023088364

l23088408:
	c.mv	a0,s1
	jal	ra,0000000023087A22
	c.mv	s0,a0
	c.bnez	a0,000000002308839C

l23088412:
	c.lwsp	s0,00000084
	c.lwsp	tp,00000064
	c.lw	s1,4(a0)
	jal	ra,0000000023087E1E
	c.j	0000000023088398

l2308841E:
	beq	a0,s7,00000000230883B4

l23088422:
	beq	a0,s8,00000000230883C4

l23088426:
	c.lui	s5,FFFFF000
	addi	s5,s5,-00000080
	bne	a0,s5,000000002308836A

l23088430:
	lbu	a5,s4,+00000000
	bne	a5,zero,00000000230882C0

l23088438:
	lui	a2,000230C7
	lui	a1,000230C7
	c.mv	a6,sp
	c.li	a5,00000000
	c.li	a4,00000000
	c.mv	a3,s2
	addi	a2,a2,-00000480
	addi	a1,a1,-00000464
	c.addi4spn	a0,00000004
	jal	ra,0000000023096D0E
	c.mv	s0,a0
	c.bnez	a0,0000000023088466

l2308845A:
	c.lwsp	s0,00000084
	c.lwsp	tp,00000064
	c.mv	a0,s1
	jal	ra,0000000023088036
	c.j	0000000023088398

l23088466:
	bne	a0,s5,000000002308836A

l2308846A:
	c.j	00000000230882C0

l2308846C:
	c.li	s0,00000000
	c.j	000000002308836A

;; rsa_can_do: 23088470
rsa_can_do proc
	c.li	a5,00000001
	beq	a0,a5,000000002308847E

l23088476:
	c.addi	a0,FFFFFFFA
	sltiu	a0,a0,+00000001
	c.jr	ra

l2308847E:
	c.li	a0,00000001
	c.jr	ra

;; rsa_get_bitlen: 23088482
rsa_get_bitlen proc
	c.lw	a0,4(a0)
	c.slli	a0,03
	c.jr	ra

;; rsa_debug: 23088488
rsa_debug proc
	lui	a5,000230C7
	addi	a5,a5,-000003B0
	c.sw	a1,4(a5)
	addi	a5,a0,+00000008
	c.sw	a1,8(a5)
	lui	a5,000230C7
	c.li	a4,00000001
	addi	a5,a5,-000003A8
	c.addi	a0,00000014
	sb	a4,a1,+00000000
	sb	a4,a1,+0000000C
	c.sw	a1,16(a5)
	c.sw	a1,20(a0)
	c.jr	ra

;; eckey_can_do: 230884B2
eckey_can_do proc
	c.addi	a0,FFFFFFFE
	sltiu	a0,a0,+00000003
	c.jr	ra

;; eckey_get_bitlen: 230884BA
eckey_get_bitlen proc
	c.lw	a0,88(a0)
	c.jr	ra

;; eckey_debug: 230884BE
eckey_debug proc
	c.li	a5,00000002
	sb	a5,a1,+00000000
	lui	a5,000230C7
	addi	a5,a5,-00000448
	addi	a0,a0,+00000088
	c.sw	a1,4(a5)
	c.sw	a1,8(a0)
	c.jr	ra

;; eckeydh_can_do: 230884D6
eckeydh_can_do proc
	c.addi	a0,FFFFFFFE
	sltiu	a0,a0,+00000002
	c.jr	ra

;; rsa_free_wrap: 230884DE
rsa_free_wrap proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,00000000230899F0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023064972

;; rsa_alloc_wrap: 230884F6
rsa_alloc_wrap proc
	c.addi	sp,FFFFFFF0
	addi	a1,zero,+000000AC
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,00000000230904A4
	c.mv	s0,a0
	c.beqz	a0,0000000023088510

l2308850A:
	c.li	a2,00000000
	c.li	a1,00000000
	c.jal	00000000230886B2

l23088510:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; rsa_check_pair_wrap: 2308851A
rsa_check_pair_wrap proc
	c.j	0000000023088962

;; rsa_encrypt_wrap: 2308851C
rsa_encrypt_wrap proc
	c.mv	t1,a1
	c.mv	a1,a6
	lw	a6,a0,+00000004
	sw	a6,a4,+00000000
	bltu	a5,a6,000000002308853A

l2308852C:
	c.mv	a6,a3
	c.mv	a4,a2
	c.mv	a5,t1
	c.li	a3,00000000
	c.mv	a2,a7
	jal	zero,0000000023088ED2

l2308853A:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000400
	c.jr	ra

;; rsa_decrypt_wrap: 23088542
rsa_decrypt_wrap proc
	c.mv	t3,a1
	c.mv	a1,a6
	lw	a6,a0,+00000004
	c.mv	t1,a7
	bne	a6,a2,000000002308855E

l23088550:
	c.mv	a7,a5
	c.mv	a6,a3
	c.mv	a5,t3
	c.li	a3,00000001
	c.mv	a2,t1
	jal	zero,0000000023089254

l2308855E:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000080
	c.jr	ra

;; rsa_sign_wrap: 23088566
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
	jal	zero,00000000230895F6

;; rsa_verify_wrap: 23088584
rsa_verify_wrap proc
	lw	a6,a0,+00000004
	bltu	a5,a6,00000000230885C2

l2308858C:
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
	jal	ra,00000000230899D2
	c.bnez	a0,00000000230885B8

l230885AC:
	c.lw	s1,4(a5)
	bgeu	a5,s0,00000000230885B8

l230885B2:
	c.lui	a0,FFFFC000
	addi	a0,a0,+00000700

l230885B8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230885C2:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000380
	c.jr	ra

;; eckey_free_wrap: 230885CA
eckey_free_wrap proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023094D76
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023064972

;; eckey_alloc_wrap: 230885E2
eckey_alloc_wrap proc
	c.addi	sp,FFFFFFF0
	addi	a1,zero,+000000AC
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,00000000230904A4
	c.mv	s0,a0
	c.beqz	a0,00000000230885FA

l230885F6:
	jal	ra,0000000023094CCA

l230885FA:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; eckey_check_pair: 23088604
eckey_check_pair proc
	jal	zero,000000002309599A

;; mgf_mask: 23088608
;;   Called from:
;;     23088D60 (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23088D6E (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     2308902E (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     2308903E (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     230893D4 (in mbedtls_rsa_rsassa_pss_sign)
;;     2308976A (in mbedtls_rsa_rsassa_pss_verify_ext)
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
	jal	ra,00000000230A3A68
	c.li	a2,00000004
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A3A68
	c.lw	s1,0(a0)
	jal	ra,0000000023096834
	c.mv	s3,a0

l23088642:
	c.bnez	s0,0000000023088658

l23088644:
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

l23088658:
	c.mv	s6,s0
	bgeu	s3,s0,0000000023088660

l2308865E:
	c.mv	s6,s3

l23088660:
	c.mv	a0,s1
	jal	ra,00000000230965E8
	c.mv	a2,s5
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,0000000023096608
	c.li	a2,00000004
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	jal	ra,0000000023096608
	c.addi4spn	a1,00000010
	c.mv	a0,s1
	jal	ra,0000000023096628
	c.li	a5,00000000

l23088684:
	add	a4,s2,a5
	bne	a5,s6,000000002308869C

l2308868C:
	c.mv	s2,a4
	lbu	a4,sp,+0000000F
	c.sub	s0,a5
	c.addi	a4,00000001
	sb	a4,sp,+0000000F
	c.j	0000000023088642

l2308869C:
	c.addi4spn	a3,00000010
	c.add	a3,a5
	lbu	a2,a4,+00000000
	lbu	a3,a3,+00000000
	c.addi	a5,00000001
	c.xor	a3,a2
	sb	a3,a4,+00000000
	c.j	0000000023088684

;; mbedtls_rsa_init: 230886B2
;;   Called from:
;;     2308850E (in rsa_alloc_wrap)
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
	jal	ra,00000000230A3A68
	c.lwsp	a2,00000020
	sw	s2,s0,+000000A4
	sw	s1,s0,+000000A8
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_rsa_check_pubkey: 230886E0
;;   Called from:
;;     23088218 (in mbedtls_pk_parse_subpubkey)
;;     23088766 (in mbedtls_rsa_check_privkey)
;;     2308896E (in mbedtls_rsa_check_pub_priv)
mbedtls_rsa_check_pubkey proc
	c.lw	a0,16(a5)
	c.beqz	a5,000000002308874A

l230886E4:
	c.lw	a0,28(a4)
	c.beqz	a4,000000002308874A

l230886E8:
	c.lw	a5,0(a5)
	c.andi	a5,00000001
	c.beqz	a5,000000002308874A

l230886EE:
	c.lw	a4,0(a5)
	c.andi	a5,00000001
	c.beqz	a5,000000002308874A

l230886F4:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	addi	s1,a0,+00000008
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.mv	a0,s1
	c.swsp	ra,00000084
	jal	ra,000000002309210A
	addi	a5,zero,+0000007F
	bgeu	a5,a0,0000000023088738

l23088710:
	c.mv	a0,s1
	jal	ra,000000002309210A
	c.lui	a5,00002000
	bltu	a5,a0,0000000023088738

l2308871C:
	c.addi	s0,00000014
	c.mv	a0,s0
	jal	ra,000000002309210A
	c.li	a5,00000001
	bgeu	a5,a0,0000000023088738

l2308872A:
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023092526
	c.li	a5,00000000
	blt	a0,zero,000000002308873E

l23088738:
	c.lui	a5,FFFFC000
	addi	a5,a5,-00000200

l2308873E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2308874A:
	c.lui	a5,FFFFC000
	addi	a5,a5,-00000200
	c.mv	a0,a5
	c.jr	ra

;; mbedtls_rsa_check_privkey: 23088754
;;   Called from:
;;     23087E04 (in pk_parse_key_pkcs1_der)
;;     23088976 (in mbedtls_rsa_check_pub_priv)
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
	jal	ra,00000000230886E0
	c.mv	s0,a0
	bne	a0,zero,000000002308894E

l23088770:
	c.lw	s1,52(a4)
	c.lui	a5,FFFFC000
	addi	a5,a5,-00000200
	c.mv	s0,a5
	beq	a4,zero,000000002308894E

l2308877E:
	c.lw	s1,64(a4)
	beq	a4,zero,000000002308894E

l23088784:
	c.lw	s1,40(a4)
	beq	a4,zero,000000002308894E

l2308878A:
	c.addi4spn	a0,00000004
	jal	ra,0000000023091E30
	c.addi4spn	a0,00000010
	jal	ra,0000000023091E30
	c.addi4spn	a0,0000001C
	jal	ra,0000000023091E30
	c.addi4spn	a0,00000028
	jal	ra,0000000023091E30
	c.addi4spn	a0,00000034
	jal	ra,0000000023091E30
	c.addi4spn	a0,00000040
	jal	ra,0000000023091E30
	c.addi4spn	a0,0000004C
	jal	ra,0000000023091E30
	c.addi4spn	a0,00000058
	jal	ra,0000000023091E30
	c.addi4spn	a0,00000064
	jal	ra,0000000023091E30
	c.addi4spn	a0,00000070
	jal	ra,0000000023091E30
	c.addi4spn	a0,0000007C
	jal	ra,0000000023091E30
	c.addi4spn	a0,00000088
	jal	ra,0000000023091E30
	c.addi4spn	a0,00000094
	jal	ra,0000000023091E30
	addi	s3,s1,+0000002C
	addi	s2,s1,+00000038
	c.mv	a2,s2
	c.mv	a1,s3
	c.addi4spn	a0,00000004
	jal	ra,000000002309281E
	c.mv	s0,a0
	bne	a0,zero,00000000230888F2

l230887F0:
	addi	s4,s1,+00000020
	addi	s5,s1,+00000014
	c.mv	a2,s5
	c.mv	a1,s4
	c.addi4spn	a0,00000010
	jal	ra,000000002309281E
	c.mv	s0,a0
	bne	a0,zero,00000000230888F2

l23088808:
	c.li	a2,00000001
	c.mv	a1,s3
	c.addi4spn	a0,0000001C
	jal	ra,00000000230927F2
	c.mv	s0,a0
	bne	a0,zero,00000000230888F2

l23088818:
	c.li	a2,00000001
	c.mv	a1,s2
	c.addi4spn	a0,00000028
	jal	ra,00000000230927F2
	c.mv	s0,a0
	bne	a0,zero,00000000230888F2

l23088828:
	c.addi4spn	a2,00000028
	c.addi4spn	a1,0000001C
	c.addi4spn	a0,00000034
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,00000000230888F2

l23088836:
	c.addi4spn	a2,00000034
	c.mv	a1,s5
	c.addi4spn	a0,0000004C
	jal	ra,00000000230930F8
	c.mv	s0,a0
	c.bnez	a0,00000000230888F2

l23088844:
	c.addi4spn	a2,00000028
	c.addi4spn	a1,0000001C
	c.addi4spn	a0,00000058
	jal	ra,00000000230930F8
	c.mv	s0,a0
	c.bnez	a0,00000000230888F2

l23088852:
	c.addi4spn	a3,00000058
	c.addi4spn	a2,00000034
	c.addi4spn	a1,00000070
	c.addi4spn	a0,00000064
	jal	ra,0000000023092920
	c.mv	s0,a0
	c.bnez	a0,00000000230888F2

l23088862:
	c.addi4spn	a2,00000064
	c.addi4spn	a1,00000010
	c.addi4spn	a0,00000040
	jal	ra,0000000023092C64
	c.mv	s0,a0
	c.bnez	a0,00000000230888F2

l23088870:
	c.addi4spn	a2,0000001C
	c.mv	a1,s4
	c.addi4spn	a0,0000007C
	jal	ra,0000000023092C64
	c.mv	s0,a0
	c.bnez	a0,00000000230888F2

l2308887E:
	c.addi4spn	a2,00000028
	c.mv	a1,s4
	c.addi4spn	a0,00000088
	jal	ra,0000000023092C64
	c.mv	s0,a0
	c.bnez	a0,00000000230888F2

l2308888C:
	c.mv	a2,s3
	c.mv	a1,s2
	c.addi4spn	a0,00000094
	jal	ra,000000002309324C
	c.mv	s0,a0
	c.bnez	a0,00000000230888F2

l2308889A:
	addi	a1,s1,+00000008
	c.addi4spn	a0,00000004
	jal	ra,0000000023092526
	c.beqz	a0,00000000230888AE

l230888A6:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000200
	c.j	00000000230888F2

l230888AE:
	addi	a1,s1,+00000044
	c.addi4spn	a0,0000007C
	jal	ra,0000000023092526
	c.bnez	a0,00000000230888A6

l230888BA:
	addi	a1,s1,+00000050
	c.addi4spn	a0,00000088
	jal	ra,0000000023092526
	c.bnez	a0,00000000230888A6

l230888C6:
	addi	a1,s1,+0000005C
	c.addi4spn	a0,00000094
	jal	ra,0000000023092526
	c.bnez	a0,00000000230888A6

l230888D2:
	c.li	a1,00000000
	c.addi4spn	a0,00000070
	jal	ra,00000000230925B2
	c.bnez	a0,00000000230888A6

l230888DC:
	c.li	a1,00000001
	c.addi4spn	a0,00000040
	jal	ra,00000000230925B2
	c.bnez	a0,00000000230888A6

l230888E6:
	c.li	a1,00000001
	c.addi4spn	a0,0000004C
	jal	ra,00000000230925B2
	c.mv	s0,a0
	c.bnez	a0,00000000230888A6

l230888F2:
	c.addi4spn	a0,00000004
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000010
	jal	ra,0000000023091E40
	c.addi4spn	a0,0000001C
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000028
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000034
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000040
	jal	ra,0000000023091E40
	c.addi4spn	a0,0000004C
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000058
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000064
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000070
	jal	ra,0000000023091E40
	c.addi4spn	a0,0000007C
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000088
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000094
	jal	ra,0000000023091E40
	c.lui	a5,FFFFC000
	addi	a5,a5,-00000200
	beq	s0,a5,000000002308894E

l2308894A:
	c.beqz	s0,000000002308894E

l2308894C:
	c.add	s0,a5

l2308894E:
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

;; mbedtls_rsa_check_pub_priv: 23088962
;;   Called from:
;;     2308851A (in rsa_check_pair_wrap)
mbedtls_rsa_check_pub_priv proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s0,a1
	jal	ra,00000000230886E0
	c.bnez	a0,0000000023088998

l23088974:
	c.mv	a0,s0
	jal	ra,0000000023088754
	c.bnez	a0,0000000023088998

l2308897C:
	addi	a1,s0,+00000008
	addi	a0,s1,+00000008
	jal	ra,0000000023092526
	c.bnez	a0,0000000023088998

l2308898A:
	addi	a1,s0,+00000014
	addi	a0,s1,+00000014
	jal	ra,0000000023092526
	c.beqz	a0,000000002308899E

l23088998:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000200

l2308899E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_rsa_public: 230889A8
;;   Called from:
;;     23088D82 (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23088E38 (in mbedtls_rsa_rsaes_pkcs1_v15_encrypt)
;;     23088FD8 (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     23089144 (in mbedtls_rsa_rsaes_pkcs1_v15_decrypt)
;;     23089412 (in mbedtls_rsa_rsassa_pss_sign)
;;     230894FC (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     2308959E (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     230896BA (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     230898B6 (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
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
	jal	ra,0000000023091E30
	c.lw	s1,4(a2)
	c.lwsp	a2,00000064
	c.addi4spn	a0,00000014
	jal	ra,000000002309215C
	c.mv	s0,a0
	c.bnez	a0,0000000023088A08

l230889CE:
	addi	a3,s1,+00000008
	c.mv	a1,a3
	c.addi4spn	a0,00000014
	c.swsp	a3,00000084
	jal	ra,0000000023092526
	c.li	s0,FFFFFFFC
	c.lwsp	a2,000000A4
	bge	a0,zero,0000000023088A08

l230889E4:
	c.addi4spn	a1,00000014
	addi	a4,s1,+00000068
	addi	a2,s1,+00000014
	c.mv	a0,a1
	lw	s3,s1,+00000004
	jal	ra,0000000023092CD6
	c.mv	s0,a0
	c.bnez	a0,0000000023088A08

l230889FC:
	c.mv	a2,s3
	c.mv	a1,s2
	c.addi4spn	a0,00000014
	jal	ra,00000000230921E0
	c.mv	s0,a0

l23088A08:
	c.addi4spn	a0,00000014
	jal	ra,0000000023091E40
	c.beqz	s0,0000000023088A18

l23088A10:
	c.lui	a5,FFFFC000
	addi	a5,a5,-00000280
	c.add	s0,a5

l23088A18:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

;; mbedtls_rsa_private: 23088A28
;;   Called from:
;;     23088D94 (in mbedtls_rsa_rsaes_oaep_encrypt)
;;     23088EB8 (in mbedtls_rsa_rsaes_pkcs1_v15_encrypt)
;;     23089006 (in mbedtls_rsa_rsaes_oaep_decrypt)
;;     23089200 (in mbedtls_rsa_rsaes_pkcs1_v15_decrypt)
;;     23089424 (in mbedtls_rsa_rsassa_pss_sign)
;;     23089590 (in mbedtls_rsa_rsassa_pkcs1_v15_sign)
;;     23089754 (in mbedtls_rsa_rsassa_pss_verify_ext)
;;     230898CE (in mbedtls_rsa_rsassa_pkcs1_v15_verify)
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
	beq	a5,zero,0000000023088C44

l23088A44:
	c.lw	a0,64(a5)
	beq	a5,zero,0000000023088C44

l23088A4A:
	c.lw	a0,40(a5)
	beq	a5,zero,0000000023088C44

l23088A50:
	c.mv	s1,a0
	c.addi4spn	a0,0000000C
	c.mv	s0,a3
	c.mv	s5,a4
	c.mv	s8,a2
	c.mv	s4,a1
	jal	ra,0000000023091E30
	c.addi4spn	a0,00000018
	jal	ra,0000000023091E30
	c.addi4spn	a0,00000024
	jal	ra,0000000023091E30
	c.lw	s1,4(a2)
	c.mv	a1,s0
	c.addi4spn	a0,0000000C
	jal	ra,000000002309215C
	c.mv	s0,a0
	bne	a0,zero,0000000023088B88

l23088A7C:
	addi	s2,s1,+00000008
	c.mv	a1,s2
	c.addi4spn	a0,0000000C
	jal	ra,0000000023092526
	c.li	s0,FFFFFFFC
	bge	a0,zero,0000000023088B88

l23088A8E:
	bne	s4,zero,0000000023088B22

l23088A92:
	addi	s6,s1,+0000002C
	addi	a4,s1,+00000074
	c.mv	a3,s6
	addi	a2,s1,+00000044
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	jal	ra,0000000023092CD6
	c.mv	s0,a0
	bne	a0,zero,0000000023088B88

l23088AAE:
	addi	s3,s1,+00000038
	addi	a4,s1,+00000080
	c.mv	a3,s3
	addi	a2,s1,+00000050
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000024
	jal	ra,0000000023092CD6
	c.mv	s0,a0
	c.bnez	a0,0000000023088B88

l23088AC8:
	c.addi4spn	a2,00000024
	c.addi4spn	a1,00000018
	c.addi4spn	a0,0000000C
	jal	ra,0000000023092794
	c.mv	s0,a0
	c.bnez	a0,0000000023088B88

l23088AD6:
	addi	a2,s1,+0000005C
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,0000000023088B88

l23088AE6:
	c.mv	a2,s6
	c.addi4spn	a1,00000018
	c.addi4spn	a0,0000000C
	jal	ra,0000000023092C64
	c.mv	s0,a0
	c.bnez	a0,0000000023088B88

l23088AF4:
	c.mv	a2,s3
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,0000000023088B88

l23088B02:
	c.addi4spn	a2,00000018
	c.addi4spn	a1,00000024
	c.addi4spn	a0,0000000C
	jal	ra,0000000023092736
	c.mv	s0,a0
	c.bnez	a0,0000000023088B88

l23088B10:
	bne	s4,zero,0000000023088C1A

l23088B14:
	c.lw	s1,4(a2)
	c.mv	a1,s5
	c.addi4spn	a0,0000000C
	jal	ra,00000000230921E0
	c.mv	s0,a0
	c.j	0000000023088B88

l23088B22:
	lw	a5,s1,+000000A0
	c.beqz	a5,0000000023088BBE

l23088B28:
	addi	s3,s1,+0000008C
	c.mv	a2,s3
	c.mv	a1,s3
	c.mv	a0,s3
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,0000000023088B88

l23088B3A:
	c.mv	a2,s2
	c.mv	a1,s3
	c.mv	a0,s3
	jal	ra,0000000023092C64
	c.mv	s0,a0
	c.bnez	a0,0000000023088B88

l23088B48:
	addi	s3,s1,+00000098
	c.mv	a2,s3
	c.mv	a1,s3
	c.mv	a0,s3
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,0000000023088B88

l23088B5A:
	c.mv	a2,s2
	c.mv	a1,s3
	c.mv	a0,s3
	jal	ra,0000000023092C64

l23088B64:
	c.mv	s0,a0
	c.bnez	a0,0000000023088B88

l23088B68:
	c.addi4spn	a1,0000000C
	addi	a2,s1,+0000008C
	c.mv	a0,a1
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,0000000023088B88

l23088B78:
	c.addi4spn	a1,0000000C
	c.mv	a2,s2
	c.mv	a0,a1
	jal	ra,0000000023092C64
	c.mv	s0,a0
	beq	a0,zero,0000000023088A92

l23088B88:
	c.addi4spn	a0,0000000C
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000018
	jal	ra,0000000023091E40
	c.addi4spn	a0,00000024
	jal	ra,0000000023091E40
	c.beqz	s0,0000000023088BA4

l23088B9C:
	c.lui	a5,FFFFC000
	addi	a5,a5,-00000300
	c.add	s0,a5

l23088BA4:
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

l23088BBE:
	c.li	s7,0000000C
	addi	s6,s1,+00000098
	addi	s3,s1,+0000008C

l23088BC8:
	c.addi	s7,FFFFFFFF
	beq	s7,zero,0000000023088C3C

l23088BCE:
	c.lw	s1,4(a1)
	c.mv	a3,s8
	c.mv	a2,s4
	c.addi	a1,FFFFFFFF
	c.mv	a0,s6
	jal	ra,0000000023093204
	c.mv	s0,a0
	c.bnez	a0,0000000023088B88

l23088BE0:
	c.mv	a2,s2
	c.mv	a1,s6
	c.mv	a0,s3
	jal	ra,00000000230930F8
	c.mv	s0,a0
	c.bnez	a0,0000000023088B88

l23088BEE:
	c.li	a1,00000001
	c.mv	a0,s3
	jal	ra,00000000230925B2
	c.bnez	a0,0000000023088BC8

l23088BF8:
	c.mv	a2,s2
	c.mv	a1,s6
	c.mv	a0,s3
	jal	ra,000000002309324C
	c.mv	s0,a0
	c.bnez	a0,0000000023088B88

l23088C06:
	addi	a4,s1,+00000068
	c.mv	a3,s2
	addi	a2,s1,+00000014
	c.mv	a1,s3
	c.mv	a0,s3
	jal	ra,0000000023092CD6
	c.j	0000000023088B64

l23088C1A:
	c.addi4spn	a1,0000000C
	addi	a2,s1,+00000098
	c.mv	a0,a1
	jal	ra,000000002309281E
	c.mv	s0,a0
	c.bnez	a0,0000000023088B88

l23088C2A:
	c.addi4spn	a1,0000000C
	c.mv	a2,s2
	c.mv	a0,a1
	jal	ra,0000000023092C64
	c.mv	s0,a0
	beq	a0,zero,0000000023088B14

l23088C3A:
	c.j	0000000023088B88

l23088C3C:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000480
	c.j	0000000023088B88

l23088C44:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000080
	c.j	0000000023088BA4

;; mbedtls_rsa_rsaes_oaep_encrypt: 23088C4C
;;   Called from:
;;     23088EFC (in mbedtls_rsa_pkcs1_encrypt)
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
	bne	a3,t1,0000000023088C9E

l23088C70:
	lw	t1,a0,+000000A4
	beq	t1,a3,0000000023088C9E

l23088C78:
	c.lui	s4,FFFFC000
	addi	s4,s4,-00000080

l23088C7E:
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

l23088C9E:
	c.beqz	a1,0000000023088C78

l23088CA0:
	c.mv	s2,a0
	lbu	a0,a0,+000000A8
	c.swsp	a7,00000004
	c.mv	s4,a6
	c.mv	s11,a5
	c.mv	s10,a4
	c.swsp	a3,00000080
	c.mv	s6,a2
	c.mv	s5,a1
	jal	ra,0000000023096520
	c.mv	s8,a0
	c.beqz	a0,0000000023088C78

l23088CBC:
	lw	s0,s2,+00000004
	jal	ra,0000000023096834
	slli	s9,a0,00000001
	addi	a5,s4,+00000002
	c.add	a5,s9
	c.mv	s1,a0
	bltu	a5,s4,0000000023088C78

l23088CD4:
	bltu	s0,a5,0000000023088C78

l23088CD8:
	c.mv	a2,s0
	c.li	a1,00000000
	c.mv	a0,s3
	jal	ra,00000000230A3A68
	addi	s7,s3,+00000001
	sb	zero,s3,+00000000
	c.mv	a2,s1
	c.mv	a1,s7
	c.mv	a0,s6
	c.jalr	s5
	c.beqz	a0,0000000023088CFE

l23088CF4:
	c.lui	s4,FFFFC000
	addi	s4,s4,-00000480
	c.add	s4,a0
	c.j	0000000023088C7E

l23088CFE:
	add	a5,s7,s1
	c.mv	a3,a5
	c.mv	a2,s11
	c.mv	a1,s10
	c.mv	a0,s8
	c.swsp	a5,00000084
	jal	ra,0000000023096648
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
	jal	ra,00000000230A382C
	c.addi4spn	a0,00000014
	jal	ra,0000000023096540
	c.li	a2,00000000
	c.mv	a1,s8
	c.addi4spn	a0,00000014
	jal	ra,0000000023096596
	c.mv	s4,a0
	c.beqz	a0,0000000023088D4C

l23088D44:
	c.addi4spn	a0,00000014
	jal	ra,0000000023096548
	c.j	0000000023088C7E

l23088D4C:
	addi	s4,s1,+00000001
	c.addi	s0,FFFFFFFF
	c.add	s4,s3
	c.sub	s0,s1
	c.addi4spn	a4,00000014
	c.mv	a3,s1
	c.mv	a2,s7
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,0000000023088608
	c.addi4spn	a4,00000014
	c.mv	a3,s0
	c.mv	a2,s4
	c.mv	a1,s1
	c.mv	a0,s7
	jal	ra,0000000023088608
	c.addi4spn	a0,00000014
	jal	ra,0000000023096548
	c.lwsp	tp,000000E4
	c.bnez	a5,0000000023088D8A

l23088D7C:
	c.mv	a2,s3
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,00000000230889A8

l23088D86:
	c.mv	s4,a0
	c.j	0000000023088C7E

l23088D8A:
	c.mv	a4,s3
	c.mv	a3,s3
	c.mv	a2,s6
	c.mv	a1,s5
	c.mv	a0,s2
	jal	ra,0000000023088A28
	c.j	0000000023088D86

;; mbedtls_rsa_rsaes_pkcs1_v15_encrypt: 23088D9A
;;   Called from:
;;     23088EEA (in mbedtls_rsa_pkcs1_encrypt)
mbedtls_rsa_rsaes_pkcs1_v15_encrypt proc
	c.li	a7,00000001
	bne	a3,a7,0000000023088DA8

l23088DA0:
	lw	a7,a0,+000000A4
	bne	a7,zero,0000000023088EBC

l23088DA8:
	beq	a1,zero,0000000023088EBC

l23088DAC:
	beq	a5,zero,0000000023088EBC

l23088DB0:
	beq	a6,zero,0000000023088EBC

l23088DB4:
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
	bltu	a7,a4,0000000023088EC4

l23088DD4:
	addi	a7,a4,+0000000B
	bltu	s0,a7,0000000023088EC4

l23088DDC:
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
	c.bnez	a3,0000000023088E78

l23088DF8:
	c.li	a5,00000002
	c.addi	s0,00000002
	sb	a5,a6,+00000001
	c.add	s0,a6

l23088E02:
	bne	s2,s0,0000000023088E3C

l23088E06:
	sb	zero,s0,+00000000
	c.mv	a2,s8
	c.mv	a1,s9
	addi	a0,s0,+00000001
	jal	ra,00000000230A382C
	bne	s5,zero,0000000023088E96

l23088E1A:
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
	jal	zero,00000000230889A8

l23088E3C:
	addi	s7,zero,+00000064

l23088E40:
	c.li	a2,00000001
	c.mv	a1,s2
	c.mv	a0,s6
	c.jalr	s4
	lbu	a5,s2,+00000000
	c.bnez	a5,0000000023088ECC

l23088E4E:
	c.addi	s7,FFFFFFFF
	beq	s7,zero,0000000023088E56

l23088E54:
	c.beqz	a0,0000000023088E40

l23088E56:
	c.lui	a5,FFFFC000
	addi	a5,a5,-00000480
	c.add	a0,a5

l23088E5E:
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

l23088E78:
	c.li	a5,00000001
	sb	a5,a6,+00000001
	c.mv	a3,a6
	add	a5,s0,a6
	c.li	a4,FFFFFFFF

l23088E86:
	bne	a5,a3,0000000023088E8E

l23088E8A:
	c.add	s0,s2
	c.j	0000000023088E06

l23088E8E:
	sb	a4,a3,+00000002
	c.addi	a3,00000001
	c.j	0000000023088E86

l23088E96:
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
	jal	zero,0000000023088A28

l23088EBC:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000080
	c.jr	ra

l23088EC4:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000080
	c.j	0000000023088E5E

l23088ECC:
	c.bnez	a0,0000000023088E56

l23088ECE:
	c.addi	s2,00000001
	c.j	0000000023088E02

;; mbedtls_rsa_pkcs1_encrypt: 23088ED2
;;   Called from:
;;     23088536 (in rsa_encrypt_wrap)
mbedtls_rsa_pkcs1_encrypt proc
	lw	t4,a0,+000000A4
	beq	t4,zero,0000000023088EEA

l23088EDA:
	c.mv	a7,a5
	c.li	a5,00000001
	beq	t4,a5,0000000023088EEE

l23088EE2:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000100
	c.jr	ra

l23088EEA:
	jal	zero,0000000023088D9A

l23088EEE:
	c.addi	sp,FFFFFFE0
	c.mv	t3,a6
	c.swsp	t3,00000000
	c.mv	a6,a4
	c.li	a5,00000000
	c.li	a4,00000000
	c.swsp	ra,0000008C
	jal	ra,0000000023088C4C
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; mbedtls_rsa_rsaes_oaep_decrypt: 23088F06
;;   Called from:
;;     23089284 (in mbedtls_rsa_pkcs1_decrypt)
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
	bne	a3,t1,0000000023088F8E

l23088F44:
	lw	t1,a0,+000000A4
	beq	t1,a3,0000000023088F8E

l23088F4C:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000080

l23088F52:
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

l23088F8E:
	c.lw	a0,4(s1)
	addi	t1,zero,+000003F0
	addi	t3,s1,-00000010
	bltu	t1,t3,0000000023088F4C

l23088F9C:
	c.mv	s0,a0
	lbu	a0,a0,+000000A8
	c.mv	s2,a7
	c.swsp	a6,00000084
	c.mv	s9,a5
	c.mv	s8,a4
	c.swsp	a3,00000004
	c.mv	s11,a2
	c.mv	s10,a1
	jal	ra,0000000023096520
	c.mv	s7,a0
	c.beqz	a0,0000000023088F4C

l23088FB8:
	jal	ra,0000000023096834
	addi	s6,a0,+00000001
	slli	s4,s6,00000001
	c.mv	s5,a0
	bltu	s1,s4,0000000023088F4C

l23088FCA:
	c.lwsp	s0,000000E4
	addi	s3,sp,+00000040
	c.bnez	a5,0000000023088FFC

l23088FD2:
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,00000000230889A8

l23088FDC:
	c.mv	s0,a0
	c.bnez	a0,0000000023088F52

l23088FE0:
	c.addi4spn	a0,00000014
	jal	ra,0000000023096540
	c.li	a2,00000000
	c.mv	a1,s7
	c.addi4spn	a0,00000014
	jal	ra,0000000023096596
	c.mv	s0,a0
	c.beqz	a0,000000002308900C

l23088FF4:
	c.addi4spn	a0,00000014
	jal	ra,0000000023096548
	c.j	0000000023088F52

l23088FFC:
	c.mv	a4,s3
	c.mv	a3,s2
	c.mv	a2,s11
	c.mv	a1,s10
	c.mv	a0,s0
	jal	ra,0000000023088A28
	c.j	0000000023088FDC

l2308900C:
	c.addi4spn	a3,00000020
	c.mv	a2,s9
	c.mv	a1,s8
	c.mv	a0,s7
	addi	s7,s1,-00000001
	jal	ra,0000000023096648
	c.add	s6,s3
	sub	s7,s7,s5
	c.addi4spn	a4,00000014
	c.mv	a3,s7
	c.mv	a2,s6
	c.mv	a1,s5
	addi	a0,sp,+00000041
	jal	ra,0000000023088608
	c.addi4spn	a4,00000014
	c.mv	a3,s5
	addi	a2,sp,+00000041
	c.mv	a1,s7
	c.mv	a0,s6
	jal	ra,0000000023088608
	c.addi4spn	a0,00000014
	jal	ra,0000000023096548
	lbu	a5,sp,+00000040
	addi	a4,sp,+00000041
	add	a0,a4,s5
	c.li	a3,00000000

l23089056:
	slli	a4,a5,00000018
	c.srai	a4,00000018
	bltu	a3,s5,00000000230890A6

l23089060:
	c.add	a0,s5
	sub	s4,s1,s4
	c.li	a1,00000000
	c.li	a3,00000000
	c.li	a2,00000000

l2308906C:
	bne	s4,a2,00000000230890C2

l23089070:
	addi	a1,a3,+00000001
	c.add	a1,a0
	c.add	a0,a3
	lbu	a5,a0,+00000000
	xori	a5,a5,+00000001
	c.or	a5,a4
	c.slli	a5,18
	c.srai	a5,00000018
	c.bnez	a5,00000000230890E2

l23089088:
	lw	a5,sp,+00000484
	sub	a2,a1,s3
	sub	a2,s1,a2
	bltu	a5,a2,00000000230890EA

l23089098:
	c.lwsp	a2,000000E4
	lw	a0,sp,+00000480
	c.sw	a5,0(a2)
	jal	ra,00000000230A382C
	c.j	0000000023088F52

l230890A6:
	c.addi4spn	a5,00000020
	c.add	a5,a3
	add	a2,a0,a3
	lbu	a5,a5,+00000000
	lbu	a2,a2,+00000000
	c.addi	a3,00000001
	c.xor	a5,a2
	c.or	a5,a4
	andi	a5,a5,+000000FF
	c.j	0000000023089056

l230890C2:
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
	c.j	000000002308906C

l230890E2:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000100
	c.j	0000000023088F52

l230890EA:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000400
	c.j	0000000023088F52

;; mbedtls_rsa_rsaes_pkcs1_v15_decrypt: 230890F2
;;   Called from:
;;     2308926C (in mbedtls_rsa_pkcs1_decrypt)
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
	bne	a3,t1,0000000023089124

l2308911C:
	lw	t1,a0,+000000A4
	bne	t1,zero,000000002308923C

l23089124:
	lw	s4,a0,+00000004
	addi	t1,zero,+000003F0
	addi	t3,s4,-00000010
	bltu	t1,t3,000000002308923C

l23089134:
	c.mv	s3,a7
	c.mv	s1,a6
	c.mv	s2,a4
	c.mv	s6,a3
	c.mv	s5,sp
	c.bnez	a3,00000000230891FC

l23089140:
	c.mv	a2,s5
	c.mv	a1,a5
	jal	ra,00000000230889A8

l23089148:
	c.mv	s0,a0
	c.bnez	a0,00000000230891D4

l2308914C:
	c.li	a3,00000001
	lbu	a4,sp,+00000001
	lb	a5,sp,+00000000
	addi	a2,s4,-00000003
	bne	s6,a3,0000000023089206

l2308915E:
	xori	a3,a4,+00000002
	c.or	a3,a5
	andi	a3,a3,+000000FF
	c.mv	a6,s5
	c.li	a1,00000000
	c.li	a0,00000000
	c.li	a5,00000000

l23089170:
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
	bltu	a0,a2,0000000023089170

l230891A2:
	addi	a4,sp,+00000400
	add	a1,a4,a5
	c.add	a4,a5
	lbu	a4,a4,-000003FE
	sltiu	a5,a5,+00000008
	addi	a1,a1,-000003FD
	c.or	a3,a4
	c.or	a5,a3
	c.bnez	a5,0000000023089244

l230891BE:
	sub	a2,a1,s5
	sub	a2,s4,a2
	bltu	s3,a2,000000002308924C

l230891CA:
	sw	a2,s2,+00000000
	c.mv	a0,s1
	jal	ra,00000000230A382C

l230891D4:
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

l230891FC:
	c.mv	a4,s5
	c.mv	a3,a5
	jal	ra,0000000023088A28
	c.j	0000000023089148

l23089206:
	xori	a3,a4,+00000001
	c.or	a3,a5
	andi	a3,a3,+000000FF
	c.mv	a0,s5
	c.li	a6,00000000
	c.li	a1,00000000
	c.li	a5,00000000

l23089218:
	lbu	a4,a0,+00000002
	c.addi	a1,00000001
	c.addi	a0,00000001
	addi	a4,a4,-000000FF
	sltu	a4,zero,a4
	or	a6,a4,a6
	xori	a4,a6,+00000001
	andi	a4,a4,+000000FF
	c.add	a5,a4
	bltu	a1,a2,0000000023089218

l2308923A:
	c.j	00000000230891A2

l2308923C:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000080
	c.j	00000000230891D4

l23089244:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000100
	c.j	00000000230891D4

l2308924C:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000400
	c.j	00000000230891D4

;; mbedtls_rsa_pkcs1_decrypt: 23089254
;;   Called from:
;;     2308855A (in rsa_decrypt_wrap)
mbedtls_rsa_pkcs1_decrypt proc
	lw	t6,a0,+000000A4
	beq	t6,zero,000000002308926C

l2308925C:
	c.mv	t3,a5
	c.li	a5,00000001
	beq	t6,a5,0000000023089270

l23089264:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000100
	c.jr	ra

l2308926C:
	jal	zero,00000000230890F2

l23089270:
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
	jal	ra,0000000023088F06
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; mbedtls_rsa_rsassa_pss_sign: 2308928E
;;   Called from:
;;     23089610 (in mbedtls_rsa_pkcs1_sign)
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
	bne	a3,a5,00000000230892EC

l230892BE:
	lw	a5,a0,+000000A4
	beq	a5,a3,00000000230892EC

l230892C6:
	c.lui	s1,FFFFC000
	addi	s1,s1,-00000080

l230892CC:
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

l230892EC:
	beq	s5,zero,00000000230892C6

l230892F0:
	lw	s0,s4,+00000004
	c.beqz	a4,0000000023089304

l230892F6:
	c.mv	a0,a4
	jal	ra,0000000023096520
	c.beqz	a0,00000000230892C6

l230892FE:
	jal	ra,0000000023096834
	c.mv	s9,a0

l23089304:
	lbu	a0,s4,+000000A8
	jal	ra,0000000023096520
	c.mv	s10,a0
	c.beqz	a0,00000000230892C6

l23089310:
	jal	ra,0000000023096834
	addi	s1,a0,+00000001
	c.slli	s1,01
	c.mv	s2,a0
	bltu	s0,s1,00000000230892C6

l23089320:
	c.mv	a2,s0
	c.li	a1,00000000
	c.mv	a0,s3
	jal	ra,00000000230A3A68
	c.mv	a2,s2
	c.addi4spn	a1,00000020
	c.mv	a0,s7
	c.jalr	s5
	c.beqz	a0,000000002308933E

l23089334:
	c.lui	s1,FFFFC000
	addi	s1,s1,-00000480
	c.add	s1,a0
	c.j	00000000230892CC

l2308933E:
	addi	s8,s4,+00000008
	c.mv	a0,s8
	jal	ra,000000002309210A
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
	jal	ra,00000000230A382C
	c.addi4spn	a0,00000014
	jal	ra,0000000023096540
	c.li	a2,00000000
	c.mv	a1,s10
	c.addi4spn	a0,00000014
	jal	ra,0000000023096596
	c.mv	s1,a0
	c.lwsp	a2,000000C4
	c.beqz	a0,0000000023089386

l2308937E:
	c.addi4spn	a0,00000014
	jal	ra,0000000023096548
	c.j	00000000230892CC

l23089386:
	c.addi4spn	a0,00000014
	add	s1,a4,s2
	jal	ra,00000000230965E8
	c.li	a2,00000008
	c.mv	a1,s1
	c.addi4spn	a0,00000014
	jal	ra,0000000023096608
	c.mv	a2,s9
	c.mv	a1,s11
	c.addi4spn	a0,00000014
	jal	ra,0000000023096608
	c.mv	a2,s2
	c.addi4spn	a1,00000020
	c.addi4spn	a0,00000014
	jal	ra,0000000023096608
	c.mv	a1,s1
	c.addi4spn	a0,00000014
	jal	ra,0000000023096628
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
	jal	ra,0000000023088608
	c.addi4spn	a0,00000014
	jal	ra,0000000023096548
	c.mv	a0,s8
	c.slli	s0,03
	jal	ra,000000002309210A
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
	bne	s6,zero,000000002308941A

l2308940C:
	c.mv	a2,s3
	c.mv	a1,s3
	c.mv	a0,s4
	jal	ra,00000000230889A8

l23089416:
	c.mv	s1,a0
	c.j	00000000230892CC

l2308941A:
	c.mv	a4,s3
	c.mv	a3,s3
	c.mv	a2,s7
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,0000000023088A28
	c.j	0000000023089416

;; mbedtls_rsa_rsassa_pkcs1_v15_sign: 2308942A
;;   Called from:
;;     2308960C (in mbedtls_rsa_pkcs1_sign)
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
	bne	a3,a5,0000000023089484

l2308945C:
	lw	a5,a0,+000000A4
	c.beqz	a5,0000000023089484

l23089462:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000080

l23089468:
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

l23089484:
	lw	s0,s2,+00000004
	addi	s1,s0,-00000003
	beq	s4,zero,00000000230894B4

l23089490:
	c.mv	a0,s4
	jal	ra,0000000023096520
	c.mv	s9,a0
	c.beqz	a0,0000000023089462

l2308949A:
	c.addi4spn	a2,00000008
	c.addi4spn	a1,0000000C
	c.mv	a0,s4
	jal	ra,0000000023096BB8
	c.bnez	a0,0000000023089462

l230894A6:
	c.lwsp	s0,00000044
	c.sub	s1,a0
	c.mv	a0,s9
	jal	ra,0000000023096834
	c.addi	s1,FFFFFFF6
	c.mv	s9,a0

l230894B4:
	sub	s1,s1,s9
	c.li	a5,00000007
	bgeu	a5,s1,0000000023089462

l230894BE:
	bltu	s0,s1,0000000023089462

l230894C2:
	c.li	a5,00000001
	addi	a0,s3,+00000002
	sb	zero,s3,+00000000
	sb	a5,s3,+00000001
	c.mv	a2,s1
	addi	a1,zero,+000000FF
	c.mv	s0,a0
	jal	ra,00000000230A3A68
	add	a0,s0,s1
	sb	zero,a0,+00000000
	bne	s4,zero,0000000023089504

l230894E8:
	c.mv	a2,s9
	c.mv	a1,s8
	c.addi	a0,00000001

l230894EE:
	jal	ra,00000000230A382C
	bne	s5,zero,0000000023089562

l230894F6:
	c.mv	a2,s3
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,00000000230889A8
	c.mv	s0,a0
	c.j	0000000023089468

l23089504:
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
	jal	ra,00000000230A382C
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
	c.j	00000000230894EE

l23089562:
	lw	a1,s2,+00000004
	c.li	a0,00000001
	c.li	s0,FFFFFFF0
	jal	ra,00000000230904A4
	c.mv	s1,a0
	beq	a0,zero,0000000023089468

l23089574:
	lw	a1,s2,+00000004
	c.li	a0,00000001
	jal	ra,00000000230904A4
	c.mv	s4,a0
	c.mv	a0,s1
	beq	s4,zero,00000000230895D0

l23089586:
	c.mv	a4,s1
	c.mv	a3,s3
	c.mv	a2,s7
	c.mv	a1,s6
	c.mv	a0,s2
	jal	ra,0000000023088A28
	c.mv	s0,a0
	c.bnez	a0,00000000230895C8

l23089598:
	c.mv	a2,s4
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,00000000230889A8
	c.mv	s0,a0
	c.bnez	a0,00000000230895C8

l230895A6:
	lw	a2,s2,+00000004
	c.li	a4,00000000
	c.li	a5,00000000

l230895AE:
	bne	a2,a5,00000000230895D6

l230895B2:
	sb	a4,sp,+00000007
	lbu	a5,sp,+00000007
	andi	a5,a5,+000000FF
	c.bnez	a5,00000000230895EE

l230895C0:
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,00000000230A382C

l230895C8:
	c.mv	a0,s1
	jal	ra,0000000023064972
	c.mv	a0,s4

l230895D0:
	jal	ra,0000000023064972
	c.j	0000000023089468

l230895D6:
	add	a3,s4,a5
	add	a1,s3,a5
	lbu	a3,a3,+00000000
	lbu	a1,a1,+00000000
	c.addi	a5,00000001
	c.xor	a3,a1
	c.or	a4,a3
	c.j	00000000230895AE

l230895EE:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000300
	c.j	00000000230895C8

;; mbedtls_rsa_pkcs1_sign: 230895F6
;;   Called from:
;;     23088580 (in rsa_sign_wrap)
mbedtls_rsa_pkcs1_sign proc
	lw	t1,a0,+000000A4
	beq	t1,zero,000000002308960C

l230895FE:
	c.li	t3,00000001
	beq	t1,t3,0000000023089610

l23089604:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000100
	c.jr	ra

l2308960C:
	jal	zero,000000002308942A

l23089610:
	jal	zero,000000002308928E

;; mbedtls_rsa_rsassa_pss_verify_ext: 23089614
;;   Called from:
;;     23087C18 (in mbedtls_pk_verify_ext)
;;     23089838 (in mbedtls_rsa_rsassa_pss_verify)
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
	bne	a3,a4,000000002308969E

l2308965C:
	lw	a4,a0,+000000A4
	beq	a4,a3,000000002308969E

l23089664:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000080

l2308966A:
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

l2308969E:
	lw	s2,s1,+00000004
	addi	a4,zero,+000003F0
	addi	a0,s2,-00000010
	bltu	a4,a0,0000000023089664

l230896AE:
	addi	s4,sp,+00000040
	c.bnez	a3,000000002308974E

l230896B4:
	c.mv	a2,s4
	c.mv	a1,a5
	c.mv	a0,s1
	jal	ra,00000000230889A8

l230896BE:
	c.mv	s0,a0
	c.bnez	a0,000000002308966A

l230896C2:
	addi	s3,s2,-00000001
	addi	a5,sp,+00000440
	c.add	a5,s3
	lbu	a4,a5,-00000400
	addi	a5,zero,+000000BC
	bne	a4,a5,0000000023089816

l230896D8:
	beq	s5,zero,00000000230896EA

l230896DC:
	c.mv	a0,s5
	jal	ra,0000000023096520
	c.beqz	a0,0000000023089664

l230896E4:
	jal	ra,0000000023096834
	c.mv	s6,a0

l230896EA:
	c.mv	a0,s9
	jal	ra,0000000023096520
	c.mv	s0,a0
	c.beqz	a0,0000000023089664

l230896F4:
	jal	ra,0000000023096834
	c.li	a2,00000008
	c.li	a1,00000000
	c.mv	s5,a0
	c.addi4spn	a0,0000000C
	jal	ra,00000000230A3A68
	addi	a0,s1,+00000008
	jal	ra,000000002309210A
	addi	s9,a0,-00000001
	andi	a5,s9,+00000007
	c.mv	s1,s4
	c.bnez	a5,000000002308971E

l23089718:
	c.mv	s2,s3
	addi	s1,sp,+00000041

l2308971E:
	c.li	a4,FFFFFFF8
	add	a4,s2,a4
	lbu	a5,sp,+00000040
	c.addi	a0,00000007
	c.add	a4,a0
	sra	a4,a5,a4
	c.bnez	a4,0000000023089664

l23089732:
	c.addi4spn	a0,00000014
	jal	ra,0000000023096540
	c.mv	a1,s0
	c.li	a2,00000000
	c.addi4spn	a0,00000014
	jal	ra,0000000023096596
	c.mv	s0,a0
	c.beqz	a0,000000002308975A

l23089746:
	c.addi4spn	a0,00000014
	jal	ra,0000000023096548
	c.j	000000002308966A

l2308974E:
	c.mv	a4,s4
	c.mv	a3,a5
	c.mv	a0,s1
	jal	ra,0000000023088A28
	c.j	00000000230896BE

l2308975A:
	xori	a1,s5,-00000001
	c.add	a1,s2
	c.addi4spn	a4,00000014
	c.mv	a3,s5
	add	a2,s1,a1
	c.mv	a0,s1
	jal	ra,0000000023088608
	slli	a5,s2,00000003
	lbu	a4,sp,+00000040
	sub	s9,a5,s9
	addi	a5,zero,+000000FF
	sra	a5,a5,s9
	c.and	a5,a4
	sb	a5,sp,+00000040
	c.add	s2,s4

l2308978A:
	bgeu	s1,s2,000000002308980C

l2308978E:
	lbu	a5,s1,+00000000
	addi	a4,s1,+00000001
	c.beqz	a5,0000000023089808

l23089798:
	lbu	a4,s1,+00000000
	c.li	a5,00000001
	addi	s0,s1,+00000001
	bne	a4,a5,0000000023089810

l230897A6:
	sub	s3,s3,s5
	sub	s4,s0,s4
	c.li	a5,FFFFFFFF
	sub	s3,s3,s4
	beq	s7,a5,00000000230897BC

l230897B8:
	bne	s7,s3,0000000023089810

l230897BC:
	c.addi4spn	a0,00000014
	jal	ra,00000000230965E8
	c.li	a2,00000008
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000014
	jal	ra,0000000023096608
	c.mv	a2,s6
	c.mv	a1,s8
	c.addi4spn	a0,00000014
	jal	ra,0000000023096608
	c.mv	a2,s3
	c.mv	a1,s0
	c.addi4spn	a0,00000014
	jal	ra,0000000023096608
	c.addi4spn	a1,00000020
	c.addi4spn	a0,00000014
	jal	ra,0000000023096628
	c.addi4spn	a0,00000014
	jal	ra,0000000023096548
	add	a0,s0,s3
	c.mv	a2,s5
	c.addi4spn	a1,00000020
	jal	ra,00000000230A37A4
	c.mv	s0,a0
	beq	a0,zero,000000002308966A

l23089800:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000380
	c.j	000000002308966A

l23089808:
	c.mv	s1,a4
	c.j	000000002308978A

l2308980C:
	bne	s2,s1,0000000023089798

l23089810:
	c.addi4spn	a0,00000014
	jal	ra,0000000023096548

l23089816:
	c.lui	s0,FFFFC000
	addi	s0,s0,-00000100
	c.j	000000002308966A

;; mbedtls_rsa_rsassa_pss_verify: 2308981E
;;   Called from:
;;     230899EC (in mbedtls_rsa_pkcs1_verify)
mbedtls_rsa_rsassa_pss_verify proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	lw	t1,a0,+000000A8
	c.mv	t3,a7
	andi	a7,t1,+000000FF
	bne	t1,zero,0000000023089832

l23089830:
	c.mv	a7,a4

l23089832:
	c.li	t1,FFFFFFFF
	c.swsp	t3,00000080
	c.swsp	t1,00000000
	jal	ra,0000000023089614
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; mbedtls_rsa_rsassa_pkcs1_v15_verify: 23089842
;;   Called from:
;;     230899E8 (in mbedtls_rsa_pkcs1_verify)
mbedtls_rsa_rsassa_pkcs1_v15_verify proc
	c.li	t1,00000001
	bne	a3,t1,000000002308987C

l23089848:
	lw	t1,a0,+000000A4
	beq	t1,zero,000000002308987C

l23089850:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000080
	c.jr	ra

l23089858:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000080

l2308985E:
	lw	ra,sp,+0000043C
	lw	s0,sp,+00000438
	lw	s1,sp,+00000434
	lw	s2,sp,+00000430
	lw	s3,sp,+0000042C
	lw	s4,sp,+00000428
	addi	sp,sp,+00000440
	c.jr	ra

l2308987C:
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
	bltu	t1,t3,0000000023089858

l230898A8:
	c.mv	s3,a6
	c.mv	s1,a5
	c.mv	s2,a4
	c.addi4spn	s0,00000020
	c.bnez	a3,00000000230898CA

l230898B2:
	c.mv	a2,s0
	c.mv	a1,a7
	jal	ra,00000000230889A8

l230898BA:
	c.bnez	a0,000000002308985E

l230898BC:
	lbu	a5,sp,+00000020
	c.beqz	a5,00000000230898D4

l230898C2:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000100
	c.j	000000002308985E

l230898CA:
	c.mv	a4,s0
	c.mv	a3,a7
	jal	ra,0000000023088A28
	c.j	00000000230898BA

l230898D4:
	lbu	a4,sp,+00000021
	addi	a5,sp,+00000022
	c.swsp	a5,00000008
	c.li	a5,00000001
	bne	a4,a5,00000000230898C2

l230898E4:
	addi	a5,s4,-00000001
	c.add	a5,s0
	addi	a3,zero,+000000FF

l230898EE:
	c.lwsp	a6,00000044
	lbu	a4,a0,+00000000
	c.bnez	a4,000000002308991C

l230898F6:
	c.addi	a0,00000001
	sub	s0,a0,s0
	c.swsp	a0,00000008
	sub	s0,s4,s0
	bne	s0,s1,000000002308992A

l23089906:
	bne	s2,zero,000000002308992A

l2308990A:
	c.mv	a2,s1
	c.mv	a1,s3
	jal	ra,00000000230A37A4
	c.beqz	a0,000000002308985E

l23089914:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000380
	c.j	000000002308985E

l2308991C:
	bgeu	a0,a5,00000000230898C2

l23089920:
	bne	a4,a3,00000000230898C2

l23089924:
	c.addi	a0,00000001
	c.swsp	a0,00000008
	c.j	00000000230898EE

l2308992A:
	c.mv	a0,s2
	jal	ra,0000000023096520
	c.beqz	a0,0000000023089858

l23089932:
	jal	ra,0000000023096834
	c.lwsp	a6,00000024
	c.mv	s4,a0
	addi	a3,zero,+00000030
	c.add	s1,s0
	c.addi4spn	a2,0000000C
	c.mv	a1,s1
	c.addi4spn	a0,00000010
	jal	ra,000000002309171C
	c.bnez	a0,0000000023089914

l2308994C:
	c.lwsp	a2,000000E4
	c.addi	a5,00000002
	bne	a5,s0,0000000023089914

l23089954:
	addi	a3,zero,+00000030
	c.addi4spn	a2,0000000C
	c.mv	a1,s1
	c.addi4spn	a0,00000010
	jal	ra,000000002309171C
	c.bnez	a0,0000000023089914

l23089964:
	c.lwsp	a2,000000E4
	c.addi	a5,00000006
	c.add	a5,s4
	bne	a5,s0,0000000023089914

l2308996E:
	c.li	a3,00000006
	c.addi4spn	a2,00000018
	c.mv	a1,s1
	c.addi4spn	a0,00000010
	jal	ra,000000002309171C
	c.bnez	a0,0000000023089914

l2308997C:
	c.lwsp	a6,000000E4
	c.lwsp	s8,000000C4
	addi	a1,sp,+0000000B
	c.swsp	a5,0000008C
	c.addi4spn	a0,00000014
	c.add	a5,a4
	c.swsp	a5,00000008
	jal	ra,0000000023096B68
	c.bnez	a0,0000000023089914

l23089992:
	lbu	a5,sp,+0000000B
	bne	a5,s2,0000000023089914

l2308999A:
	c.li	a3,00000005
	c.addi4spn	a2,0000000C
	c.mv	a1,s1
	c.addi4spn	a0,00000010
	jal	ra,000000002309171C
	c.bnez	a0,0000000023089914

l230899A8:
	c.li	a3,00000004
	c.addi4spn	a2,0000000C
	c.mv	a1,s1
	c.addi4spn	a0,00000010
	jal	ra,000000002309171C
	c.bnez	a0,0000000023089914

l230899B6:
	c.lwsp	a2,000000E4
	bne	a5,s4,0000000023089914

l230899BC:
	c.lwsp	a6,00000044
	c.mv	a2,s4
	c.mv	a1,s3
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023089914

l230899C8:
	c.lwsp	a6,000000E4
	c.add	s4,a5
	beq	s1,s4,000000002308985E

l230899D0:
	c.j	0000000023089914

;; mbedtls_rsa_pkcs1_verify: 230899D2
;;   Called from:
;;     230885A6 (in rsa_verify_wrap)
mbedtls_rsa_pkcs1_verify proc
	lw	t1,a0,+000000A4
	beq	t1,zero,00000000230899E8

l230899DA:
	c.li	t3,00000001
	beq	t1,t3,00000000230899EC

l230899E0:
	c.lui	a0,FFFFC000
	addi	a0,a0,-00000100
	c.jr	ra

l230899E8:
	jal	zero,0000000023089842

l230899EC:
	jal	zero,000000002308981E

;; mbedtls_rsa_free: 230899F0
;;   Called from:
;;     23087DDC (in pk_parse_key_pkcs1_der)
;;     23087DFA (in pk_parse_key_pkcs1_der)
;;     23087E10 (in pk_parse_key_pkcs1_der)
;;     230884E6 (in rsa_free_wrap)
mbedtls_rsa_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	addi	a0,a0,+0000008C
	c.swsp	ra,00000084
	jal	ra,0000000023091E40
	addi	a0,s0,+00000098
	jal	ra,0000000023091E40
	addi	a0,s0,+00000080
	jal	ra,0000000023091E40
	addi	a0,s0,+00000074
	jal	ra,0000000023091E40
	addi	a0,s0,+00000068
	jal	ra,0000000023091E40
	addi	a0,s0,+0000005C
	jal	ra,0000000023091E40
	addi	a0,s0,+00000050
	jal	ra,0000000023091E40
	addi	a0,s0,+00000044
	jal	ra,0000000023091E40
	addi	a0,s0,+00000038
	jal	ra,0000000023091E40
	addi	a0,s0,+0000002C
	jal	ra,0000000023091E40
	addi	a0,s0,+00000020
	jal	ra,0000000023091E40
	addi	a0,s0,+00000014
	jal	ra,0000000023091E40
	addi	a0,s0,+00000008
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023091E40

;; mbedtls_sha256_init: 23089A66
;;   Called from:
;;     2308AA12 (in mbedtls_sha256)
;;     2308AB26 (in ssl_calc_finished_tls_sha256)
;;     2308AC16 (in ssl_calc_verify_tls_sha256)
;;     2308BC40 (in ssl_handshake_init)
;;     23096910 (in sha224_ctx_alloc)
mbedtls_sha256_init proc
	addi	a2,zero,+00000074
	c.li	a1,00000000
	jal	zero,00000000230A3A68

;; mbedtls_sha256_free: 23089A70
;;   Called from:
;;     2308AA34 (in mbedtls_sha256)
;;     2308ABC4 (in ssl_calc_finished_tls_sha256)
;;     2308AC82 (in ssl_calc_verify_tls_sha256)
;;     2308B9A0 (in mbedtls_ssl_handshake_free)
;;     230968EC (in sha224_ctx_free)
mbedtls_sha256_free proc
	addi	a5,a0,+00000074
	c.bnez	a0,0000000023089A7E

l23089A76:
	c.jr	ra

l23089A78:
	sb	zero,a0,+00000000
	c.addi	a0,00000001

l23089A7E:
	bne	a0,a5,0000000023089A78

l23089A82:
	c.j	0000000023089A76

;; mbedtls_sha256_clone: 23089A84
;;   Called from:
;;     2308AB50 (in ssl_calc_finished_tls_sha256)
;;     2308AC3E (in ssl_calc_verify_tls_sha256)
;;     230968E0 (in sha224_clone_wrap)
mbedtls_sha256_clone proc
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+00000074
	c.swsp	ra,00000084
	jal	ra,00000000230A382C
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_sha256_starts: 23089A96
;;   Called from:
;;     2308794A (in mbedtls_entropy_init)
;;     2308AA1C (in mbedtls_sha256)
;;     2308B6E8 (in mbedtls_ssl_reset_checksum)
;;     2308BC48 (in ssl_handshake_init)
;;     23096934 (in sha224_starts_wrap)
;;     2309693A (in sha256_starts_wrap)
mbedtls_sha256_starts proc
	sw	zero,a0,+00000000
	sw	zero,a0,+00000004
	c.bnez	a1,0000000023089AF4

l23089AA0:
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

l23089AEE:
	c.sw	a0,36(a5)
	c.sw	a0,104(a1)
	c.jr	ra

l23089AF4:
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
	c.j	0000000023089AEE

;; mbedtls_sha256_process: 23089B44
;;   Called from:
;;     2308A7FE (in mbedtls_sha256_update.part.0)
;;     2308A814 (in mbedtls_sha256_update.part.0)
;;     230968DC (in sha224_process_wrap)
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

l23089B78:
	c.lw	a5,0(a3)
	c.addi	a5,00000004
	c.addi	a4,00000004
	sw	a3,a4,+00000FFC
	bne	a0,a5,0000000023089B78

l23089B86:
	addi	t3,sp,+00000020
	addi	a2,a1,+00000040
	c.mv	a4,t3

l23089B90:
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
	bne	a2,a1,0000000023089B90

l23089BB8:
	lui	t4,000230C7
	c.lwsp	t3,00000008
	c.lwsp	a6,00000028
	c.lwsp	s8,000000C0
	c.lwsp	s4,00000064
	c.lwsp	zero,00000084
	c.lwsp	tp,000000A4
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000E4
	addi	s1,t4,-00000390
	addi	t0,s1,+00000040
	c.mv	t6,t3
	addi	t4,t4,-00000390

l23089BDA:
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
	bne	t0,t4,0000000023089BDA

l2308A036:
	c.swsp	a6,0000008C
	c.swsp	a7,00000008
	c.swsp	t1,0000000C
	c.swsp	a1,00000088
	c.swsp	a2,00000000
	c.swsp	a3,00000080
	c.swsp	a4,00000004
	c.swsp	a5,00000084
	addi	s4,t3,+000000C0

l2308A04A:
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
	bne	s4,t3,000000002308A04A

l2308A75A:
	c.swsp	a6,0000008C
	c.swsp	a7,00000008
	c.swsp	t1,0000000C
	c.swsp	a1,00000088
	c.swsp	a2,00000000
	c.swsp	a3,00000080
	c.swsp	a4,00000004
	c.swsp	a5,00000084

l2308A76A:
	lw	a5,s2,+00000000
	lw	a4,s3,+00000000
	c.addi	s2,00000004
	c.addi	s3,00000004
	c.add	a5,a4
	sw	a5,s2,+00000FFC
	bne	a0,s2,000000002308A76A

l2308A780:
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

;; mbedtls_sha256_update.part.0: 2308A7A8
;;   Called from:
;;     2308A86C (in mbedtls_sha256_update)
;;     2308A8F6 (in mbedtls_sha256_finish)
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
	bgeu	a5,a2,000000002308A7D4

l2308A7CE:
	c.lw	a0,4(a5)
	c.addi	a5,00000001
	c.sw	a0,4(a5)

l2308A7D4:
	beq	s3,zero,000000002308A806

l2308A7D8:
	addi	s4,zero,+00000040
	sub	s4,s4,s3
	bltu	s0,s4,000000002308A806

l2308A7E4:
	addi	s5,s1,+00000028
	c.mv	a1,s2
	c.mv	a2,s4
	add	a0,s5,s3
	jal	ra,00000000230A382C
	c.mv	a1,s5
	c.mv	a0,s1
	addi	s0,s0,-00000040
	c.add	s0,s3
	jal	ra,0000000023089B44
	c.add	s2,s4
	c.li	s3,00000000

l2308A806:
	c.mv	s4,s0
	add	s6,s2,s0
	addi	s5,zero,+0000003F
	c.j	000000002308A81C

l2308A812:
	c.mv	a0,s1
	jal	ra,0000000023089B44
	addi	s4,s4,-00000040

l2308A81C:
	sub	a1,s6,s4
	bltu	s5,s4,000000002308A812

l2308A824:
	srli	a2,s0,00000006
	addi	a5,zero,-00000040
	slli	a1,a2,00000006
	add	a2,a2,a5
	c.add	a1,s2
	c.add	a2,s0
	c.beqz	a2,000000002308A856

l2308A83A:
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
	jal	zero,00000000230A382C

l2308A856:
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

;; mbedtls_sha256_update: 2308A86A
;;   Called from:
;;     2308A8EC (in mbedtls_sha256_finish)
;;     2308AA26 (in mbedtls_sha256)
;;     2308AD06 (in ssl_update_checksum_start)
;;     2309692E (in sha224_update_wrap)
mbedtls_sha256_update proc
	c.beqz	a2,000000002308A870

l2308A86C:
	jal	zero,000000002308A7A8

l2308A870:
	c.jr	ra

;; mbedtls_sha256_finish: 2308A872
;;   Called from:
;;     2308AA2E (in mbedtls_sha256)
;;     2308AB84 (in ssl_calc_finished_tls_sha256)
;;     2308AC46 (in ssl_calc_verify_tls_sha256)
;;     2309692A (in sha224_finish_wrap)
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
	bltu	a5,a2,000000002308A9F8

l2308A8DA:
	addi	a5,zero,+00000038

l2308A8DE:
	lui	a1,000230C7
	sub	a2,a5,a2
	addi	a1,a1,-00000290
	c.mv	a0,s0
	jal	ra,000000002308A86A
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	jal	ra,000000002308A7A8
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
	c.bnez	a5,000000002308A9EE

l2308A9D0:
	lbu	a5,s0,+00000027
	sb	a5,s1,+0000001C
	lhu	a5,s0,+00000026
	sb	a5,s1,+0000001D
	c.lw	s0,36(a5)
	c.srli	a5,00000008
	sb	a5,s1,+0000001E
	c.lw	s0,36(a5)
	sb	a5,s1,+0000001F

l2308A9EE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2308A9F8:
	addi	a5,zero,+00000078
	c.j	000000002308A8DE

;; mbedtls_sha256: 2308A9FE
;;   Called from:
;;     23096920 (in sha224_wrap)
;;     23096926 (in sha256_wrap)
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
	jal	ra,0000000023089A66
	c.lwsp	a2,000000A4
	c.addi4spn	a0,0000001C
	c.mv	a1,a3
	jal	ra,0000000023089A96
	c.mv	a2,s2
	c.mv	a1,s1
	c.addi4spn	a0,0000001C
	jal	ra,000000002308A86A
	c.mv	a1,s0
	c.addi4spn	a0,0000001C
	jal	ra,000000002308A872
	c.addi4spn	a0,0000001C
	jal	ra,0000000023089A70
	c.lwsp	t5,00000020
	c.lwsp	s10,00000004
	c.lwsp	s6,00000024
	c.lwsp	s2,00000048
	c.addi16sp	000000A0
	c.jr	ra

;; mbedtls_ssl_own_cert: 2308AA44
;;   Called from:
;;     2308D3CC (in mbedtls_ssl_write_certificate)
;;     2308D3F6 (in mbedtls_ssl_write_certificate)
;;     2308D418 (in mbedtls_ssl_write_certificate)
mbedtls_ssl_own_cert proc
	c.lw	a0,48(a5)
	c.beqz	a5,000000002308AA4C

l2308AA48:
	c.lw	a5,8(a5)
	c.bnez	a5,000000002308AA52

l2308AA4C:
	c.lw	a0,0(a5)
	c.lw	a5,76(a5)
	c.beqz	a5,000000002308AA54

l2308AA52:
	c.lw	a5,0(a5)

l2308AA54:
	c.mv	a0,a5
	c.jr	ra

;; mbedtls_zeroize: 2308AA58
;;   Called from:
;;     2308ABCE (in ssl_calc_finished_tls_sha256)
;;     2308AE60 (in tls_prf_sha256)
;;     2308AE6A (in tls_prf_sha256)
;;     2308B0C0 (in mbedtls_ssl_derive_keys)
;;     2308B0F0 (in mbedtls_ssl_derive_keys)
;;     2308B1AE (in mbedtls_ssl_derive_keys)
;;     2308B41C (in mbedtls_ssl_derive_keys)
;;     2308B98A (in mbedtls_ssl_transform_free)
;;     2308B9D2 (in mbedtls_ssl_handshake_free)
;;     2308BA70 (in mbedtls_ssl_session_free)
;;     2308BDA6 (in mbedtls_ssl_free)
;;     2308BDBC (in mbedtls_ssl_free)
;;     2308BE1A (in mbedtls_ssl_free)
;;     2308BE50 (in mbedtls_ssl_free)
;;     2308BF38 (in mbedtls_ssl_config_free)
mbedtls_zeroize proc
	c.add	a1,a0

l2308AA5A:
	bne	a0,a1,000000002308AA60

l2308AA5E:
	c.jr	ra

l2308AA60:
	sb	zero,a0,+00000000
	c.addi	a0,00000001
	c.j	000000002308AA5A

;; ssl_swap_epochs: 2308AA68
;;   Called from:
;;     2308C7E4 (in mbedtls_ssl_resend)
;;     2308C842 (in mbedtls_ssl_resend)
ssl_swap_epochs proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a0,48(a5)
	c.lw	a0,56(a4)
	lui	a2,000230C8
	c.lw	a5,68(a5)
	bne	a4,a5,000000002308AA9C

l2308AA7C:
	lui	a4,000230C8
	c.lui	a3,00001000
	addi	a4,a4,+00000240
	addi	a3,a3,-000005F6
	addi	a2,a2,+00000254
	c.li	a1,00000003
	jal	ra,0000000023093DF4

l2308AA94:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2308AA9C:
	lui	a4,000230C8
	c.lui	a3,00001000
	addi	a4,a4,+0000025C
	addi	a3,a3,-000005F2
	addi	a2,a2,+00000254
	c.li	a1,00000003
	c.mv	s0,a0
	jal	ra,0000000023093DF4
	c.lw	s0,48(a5)
	c.lw	s0,56(a4)
	c.li	a2,00000008
	c.lw	a5,68(a3)
	c.addi4spn	a0,00000008
	c.sw	s0,56(a3)
	c.sw	a5,68(a4)
	lw	a1,s0,+00000090
	jal	ra,00000000230A382C
	c.lw	s0,48(a1)
	lw	a0,s0,+00000090
	c.li	a2,00000008
	addi	a1,a1,+00000048
	jal	ra,00000000230A382C
	c.lw	s0,48(a0)
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	addi	a0,a0,+00000048
	jal	ra,00000000230A382C
	c.lw	s0,56(a3)
	lw	a5,s0,+0000009C
	c.beqz	a3,000000002308AB02

l2308AAF2:
	c.lw	s0,12(a2)
	c.li	a4,00000001
	bge	a4,a2,000000002308AB02

l2308AAFA:
	c.lw	a3,12(a4)
	c.lw	a3,16(a3)
	c.sub	a4,a3
	c.add	a5,a4

l2308AB02:
	sw	a5,s0,+000000A0
	c.j	000000002308AA94

;; ssl_calc_finished_tls_sha256: 2308AB08
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
	c.bnez	s1,000000002308AB24

l2308AB22:
	c.lw	a0,40(s1)

l2308AB24:
	c.addi4spn	a0,0000003C
	jal	ra,0000000023089A66
	c.lui	s4,00001000
	lui	s2,000230C8
	lui	a4,000230C8
	addi	a4,a4,+00000114
	addi	a3,s4,+00000356
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lw	s0,48(a1)
	c.addi4spn	a0,0000003C
	addi	a1,a1,+00000050
	jal	ra,0000000023089A84
	lui	a4,000230C8
	addi	a6,zero,+00000020
	c.addi4spn	a5,00000044
	addi	a4,a4,+00000134
	addi	a3,s4,+00000362
	addi	a2,s2,+00000254
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,0000000023093F06
	beq	s5,zero,000000002308ABFC

l2308AB76:
	lui	a2,000230C8
	addi	a2,a2,+00000104

l2308AB7E:
	c.addi4spn	a1,0000001C
	c.addi4spn	a0,0000003C
	c.swsp	a2,00000084
	jal	ra,000000002308A872
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
	lui	a4,000230C8
	c.mv	a5,s3
	addi	a3,s1,+0000036E
	addi	a2,s2,+00000254
	c.li	a6,0000000C
	addi	a4,a4,+00000148
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,0000000023093F06
	c.addi4spn	a0,0000003C
	jal	ra,0000000023089A70
	c.addi4spn	a0,0000001C
	addi	a1,zero,+00000020
	jal	ra,000000002308AA58
	lui	a4,000230C8
	addi	a3,s1,+00000374
	addi	a2,s2,+00000254
	c.mv	a0,s0
	addi	a4,a4,+00000160
	c.li	a1,00000002
	jal	ra,0000000023093DF4
	c.lwsp	a5,00000020
	c.lwsp	a1,00000004
	c.lwsp	t2,00000024
	c.lwsp	gp,00000048
	c.lwsp	t5,00000178
	c.lwsp	s10,00000198
	c.lwsp	s6,000001B8
	c.addi16sp	000000D0
	c.jr	ra

l2308ABFC:
	lui	a2,000230C8
	addi	a2,a2,+000000F4
	c.j	000000002308AB7E

;; ssl_calc_verify_tls_sha256: 2308AC06
ssl_calc_verify_tls_sha256 proc
	c.addi16sp	FFFFFF70
	c.swsp	s0,00000044
	c.mv	s0,a0
	c.addi4spn	a0,0000000C
	c.swsp	ra,000000C4
	c.swsp	s1,000000C0
	c.swsp	s2,00000040
	c.mv	s2,a1
	jal	ra,0000000023089A66
	lui	s1,000230C8
	lui	a4,000230C8
	addi	a2,s1,+00000254
	addi	a4,a4,+00000174
	addi	a3,zero,+0000042D
	c.mv	a0,s0
	c.li	a1,00000002
	jal	ra,0000000023093DF4
	c.lw	s0,48(a1)
	c.addi4spn	a0,0000000C
	addi	a1,a1,+00000050
	jal	ra,0000000023089A84
	c.mv	a1,s2
	c.addi4spn	a0,0000000C
	jal	ra,000000002308A872
	lui	a4,000230C8
	c.mv	a5,s2
	addi	a6,zero,+00000020
	addi	a2,s1,+00000254
	c.mv	a0,s0
	addi	a4,a4,+0000018C
	addi	a3,zero,+00000432
	c.li	a1,00000003
	jal	ra,0000000023093F06
	lui	a4,000230C8
	addi	a2,s1,+00000254
	c.mv	a0,s0
	addi	a4,a4,+000001A8
	addi	a3,zero,+00000433
	c.li	a1,00000002
	jal	ra,0000000023093DF4
	c.addi4spn	a0,0000000C
	jal	ra,0000000023089A70
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.lwsp	t1,00000024
	c.lwsp	sp,00000048
	c.addi16sp	00000090
	c.jr	ra

;; ssl_flight_free: 2308AC92
;;   Called from:
;;     2308B5C6 (in mbedtls_ssl_recv_flight_completed)
;;     2308B9C0 (in mbedtls_ssl_handshake_free)
ssl_flight_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0

l2308AC9C:
	c.bnez	s0,000000002308ACA8

l2308AC9E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2308ACA8:
	c.lw	s0,0(a0)
	c.lw	s0,12(s1)
	jal	ra,0000000023064972
	c.mv	a0,s0
	jal	ra,0000000023064972
	c.mv	s0,s1
	c.j	000000002308AC9C

;; ssl_append_key_cert: 2308ACBA
;;   Called from:
;;     2308B728 (in mbedtls_ssl_conf_own_cert)
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
	jal	ra,00000000230904A4
	c.beqz	a0,000000002308ACF8

l2308ACD2:
	c.lwsp	a2,00000084
	c.sw	a0,0(s1)
	sw	zero,a0,+00000008
	c.sw	a0,4(a2)
	c.lw	s0,0(a5)
	c.bnez	a5,000000002308ACF0

l2308ACE0:
	c.sw	s0,0(a0)

l2308ACE2:
	c.li	a0,00000000

l2308ACE4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2308ACEE:
	c.mv	a5,a4

l2308ACF0:
	c.lw	a5,8(a4)
	c.bnez	a4,000000002308ACEE

l2308ACF4:
	c.sw	a5,8(a0)
	c.j	000000002308ACE2

l2308ACF8:
	c.lui	a0,FFFF8000
	addi	a0,a0,+00000100
	c.j	000000002308ACE4

;; ssl_update_checksum_start: 2308AD00
;;   Called from:
;;     2308AD0A (in ssl_update_checksum_sha256)
ssl_update_checksum_start proc
	c.lw	a0,48(a0)
	addi	a0,a0,+00000050
	jal	zero,000000002308A86A

;; ssl_update_checksum_sha256: 2308AD0A
ssl_update_checksum_sha256 proc
	jal	zero,000000002308AD00

;; mbedtls_ssl_hdr_len.isra.1: 2308AD0E
;;   Called from:
;;     2308B53C (in mbedtls_ssl_flush_output)
;;     2308B55C (in mbedtls_ssl_flush_output)
;;     2308B804 (in mbedtls_ssl_get_record_expansion)
;;     2308B82E (in mbedtls_ssl_get_record_expansion)
;;     2308C6D6 (in mbedtls_ssl_write_record)
;;     2308C72C (in mbedtls_ssl_write_record)
;;     2308D976 (in mbedtls_ssl_read_record_layer)
;;     2308D9AC (in mbedtls_ssl_read_record_layer)
;;     2308DA74 (in mbedtls_ssl_read_record_layer)
;;     2308DBD8 (in mbedtls_ssl_read_record_layer)
;;     2308DC22 (in mbedtls_ssl_read_record_layer)
;;     2308DC2C (in mbedtls_ssl_read_record_layer)
mbedtls_ssl_hdr_len.isra.1 proc
	lhu	a5,a0,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002308AD1A

l2308AD16:
	c.li	a0,0000000D
	c.jr	ra

l2308AD1A:
	c.li	a0,00000005
	c.jr	ra

;; ssl_set_timer: 2308AD1E
;;   Called from:
;;     2308B5E0 (in mbedtls_ssl_recv_flight_completed)
;;     2308B642 (in mbedtls_ssl_send_flight_completed)
;;     2308BAFC (in mbedtls_ssl_handshake_wrapup)
;;     2308BC86 (in ssl_handshake_init)
;;     2308C8C6 (in mbedtls_ssl_resend)
;;     2308CA66 (in mbedtls_ssl_fetch_input)
;;     2308EB70 (in mbedtls_ssl_read)
;;     2308EC38 (in mbedtls_ssl_read)
ssl_set_timer proc
	c.lw	a0,72(a5)
	c.beqz	a5,000000002308AD60

l2308AD22:
	c.addi	sp,FFFFFFF0
	lui	a4,000230C8
	lui	a2,000230C8
	c.swsp	s1,00000080
	c.mv	a5,a1
	c.mv	s1,a1
	addi	a2,a2,+00000254
	c.li	a1,00000003
	addi	a4,a4,+0000022C
	addi	a3,zero,+00000052
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023093DF4
	lw	t1,s0,+00000048
	c.lw	s0,68(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a2,s1
	srli	a1,s1,00000002
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	t1

l2308AD60:
	c.jr	ra

;; ssl_check_timer: 2308AD62
;;   Called from:
;;     2308CA42 (in mbedtls_ssl_fetch_input)
;;     2308CBCE (in mbedtls_ssl_fetch_input)
ssl_check_timer proc
	c.lw	a0,76(a5)
	c.bnez	a5,000000002308AD74

l2308AD66:
	c.li	a0,00000000
	c.jr	ra

l2308AD6A:
	c.li	a0,00000000

l2308AD6C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2308AD74:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,68(a0)
	c.jalr	a5
	c.li	a5,00000002
	bne	a0,a5,000000002308AD6A

l2308AD86:
	lui	a4,000230C8
	lui	a2,000230C8
	c.mv	a0,s0
	addi	a4,a4,+000001B8
	addi	a3,zero,+00000060
	addi	a2,a2,+00000254
	c.li	a1,00000003
	jal	ra,0000000023093DF4
	c.li	a0,FFFFFFFF
	c.j	000000002308AD6C

;; tls_prf_sha256: 2308ADA6
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
	jal	ra,0000000023096540
	c.li	a0,00000006
	jal	ra,0000000023096520
	beq	a0,zero,000000002308AEE8

l2308ADDE:
	c.mv	s9,a0
	jal	ra,0000000023096834
	c.mv	s1,a0
	c.mv	a0,s0
	jal	ra,00000000230A4220
	c.add	a0,s2
	c.add	a0,s1
	addi	a5,zero,+00000080
	bltu	a5,a0,000000002308AEF0

l2308ADF8:
	c.mv	a0,s0
	jal	ra,00000000230A4220
	c.addi4spn	a5,00000030
	add	s6,a5,s1
	c.mv	a2,a0
	c.mv	a1,s0
	c.mv	s3,a0
	c.mv	a0,s6
	jal	ra,00000000230A382C
	c.addi4spn	a5,00000030
	add	a0,s1,s3
	c.mv	a2,s2
	c.mv	a1,s10
	c.add	a0,a5
	jal	ra,00000000230A382C
	c.li	a2,00000001
	c.mv	a1,s9
	c.addi4spn	a0,00000004
	jal	ra,0000000023096596
	c.mv	s0,a0
	c.bnez	a0,000000002308AE6E

l2308AE2E:
	c.mv	a2,s8
	c.mv	a1,s7
	c.addi4spn	a0,00000004
	jal	ra,000000002309666A
	c.add	s2,s3
	c.mv	a2,s2
	c.mv	a1,s6
	c.addi4spn	a0,00000004
	jal	ra,000000002309674C
	c.addi4spn	a1,00000030
	c.addi4spn	a0,00000004
	jal	ra,0000000023096770
	c.li	s3,00000000
	c.add	s2,s1

l2308AE50:
	c.addi4spn	a0,00000004
	bltu	s3,s4,000000002308AE8C

l2308AE56:
	jal	ra,0000000023096548
	addi	a1,zero,+00000080
	c.addi4spn	a0,00000030
	jal	ra,000000002308AA58
	addi	a1,zero,+00000020
	c.addi4spn	a0,00000010
	jal	ra,000000002308AA58

l2308AE6E:
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

l2308AE8C:
	jal	ra,00000000230967D4
	c.mv	a2,s2
	c.addi4spn	a1,00000030
	c.addi4spn	a0,00000004
	jal	ra,000000002309674C
	c.addi4spn	a1,00000010
	c.addi4spn	a0,00000004
	jal	ra,0000000023096770
	c.addi4spn	a0,00000004
	jal	ra,00000000230967D4
	c.mv	a2,s1
	c.addi4spn	a1,00000030
	c.addi4spn	a0,00000004
	jal	ra,000000002309674C
	c.addi4spn	a1,00000030
	c.addi4spn	a0,00000004
	jal	ra,0000000023096770
	add	a4,s1,s3
	c.mv	a3,s1
	bgeu	s4,a4,000000002308AEC8

l2308AEC4:
	and	a3,s4,s1

l2308AEC8:
	c.li	a5,00000000
	c.add	s3,s5

l2308AECC:
	bne	a5,a3,000000002308AED4

l2308AED0:
	c.mv	s3,a4
	c.j	000000002308AE50

l2308AED4:
	c.addi4spn	a1,00000010
	c.add	a1,a5
	lbu	a1,a1,+00000000
	add	a2,s3,a5
	c.addi	a5,00000001
	sb	a1,a2,+00000000
	c.j	000000002308AECC

l2308AEE8:
	c.lui	s0,FFFF9000
	addi	s0,s0,+00000400
	c.j	000000002308AE6E

l2308AEF0:
	c.lui	s0,FFFF9000
	addi	s0,s0,-00000100
	c.j	000000002308AE6E

;; mbedtls_ssl_derive_keys: 2308AEF8
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
	lui	a4,000230C7
	lui	s6,000230C8
	addi	a4,a4,-00000234
	addi	a3,zero,+000001F5
	addi	a2,s6,+00000254
	c.li	a1,00000002
	c.mv	s2,a0
	lw	s11,a0,+0000002C
	lw	s4,a0,+00000030
	jal	ra,0000000023093DF4
	c.lw	s1,0(a5)
	lbu	a0,a5,+00000008
	jal	ra,00000000230935C0
	c.lw	s1,0(a5)
	c.bnez	a0,000000002308AFBE

l2308AF62:
	lbu	a5,a5,+00000008
	lui	a4,000230C7
	addi	a4,a4,-00000224
	addi	a3,zero,+000001FB

l2308AF72:
	addi	a2,s6,+00000254
	c.li	a1,00000001
	c.mv	a0,s2
	c.lui	s0,FFFF9000
	jal	ra,0000000023093DF4
	addi	s0,s0,-00000100

l2308AF84:
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

l2308AFBE:
	c.mv	s5,a0
	lbu	a0,a5,+00000009
	jal	ra,0000000023096520
	c.mv	s8,a0
	c.bnez	a0,000000002308AFE0

l2308AFCC:
	c.lw	s1,0(a5)
	lui	a4,000230C7
	addi	a4,a4,-00000204
	lbu	a5,a5,+00000009
	addi	a3,zero,+00000203
	c.j	000000002308AF72

l2308AFE0:
	lw	a4,s2,+0000000C
	c.li	a5,00000003
	bne	a4,a5,000000002308B038

l2308AFEA:
	lui	a5,0002308B
	addi	a5,a5,-0000025A
	sw	a5,s4,+000000D0
	lui	a5,0002308B
	addi	a5,a5,-000003FA
	sw	a5,s4,+000000C8
	lui	a5,0002308B
	addi	a5,a5,-000004F8
	sw	a5,s4,+000000CC
	lw	a5,s4,+00000148
	c.mv	s3,s6
	addi	s7,s4,+000000D8
	addi	s9,s11,+0000002C
	c.beqz	a5,000000002308B058

l2308B01E:
	lui	a4,000230C7
	addi	a4,a4,-000001A4
	addi	a3,zero,+0000027C
	addi	a2,s6,+00000254
	c.li	a1,00000003
	c.mv	a0,s2
	jal	ra,0000000023093DF4
	c.j	000000002308B0C4

l2308B038:
	lui	a4,000230C7
	addi	a4,a4,-000001E0
	addi	a3,zero,+00000232
	addi	a2,s6,+00000254

l2308B048:
	c.li	a1,00000001
	c.mv	a0,s2
	c.lui	s0,FFFF9000
	jal	ra,0000000023093DF4
	addi	s0,s0,+00000400
	c.j	000000002308AF84

l2308B058:
	lw	a6,s4,+000000D4
	addi	s10,s4,+00000118
	lui	a4,000230C7
	c.mv	a5,s10
	addi	a4,a4,-000001CC
	addi	a3,zero,+00000243
	addi	a2,s6,+00000254
	c.li	a1,00000003
	c.mv	a0,s2
	jal	ra,0000000023093F06
	lw	a7,s4,+000000D0
	lw	a1,s4,+000000D4
	lui	a2,000230C7
	addi	a6,zero,+00000030
	c.mv	a5,s9
	addi	a4,zero,+00000040
	c.mv	a3,s7
	addi	a2,a2,-000001B8
	c.mv	a0,s10
	c.jalr	a7
	c.mv	s0,a0
	c.beqz	a0,000000002308B0BA

l2308B09E:
	lui	a4,000230C7
	c.mv	a5,a0
	addi	a4,a4,-000001A8
	addi	a3,zero,+00000275
	addi	a2,s6,+00000254

l2308B0B0:
	c.li	a1,00000001
	c.mv	a0,s2
	jal	ra,0000000023093E84
	c.j	000000002308AF84

l2308B0BA:
	addi	a1,zero,+00000030
	c.mv	a0,s10
	jal	ra,000000002308AA58

l2308B0C4:
	addi	a2,zero,+00000040
	c.mv	a1,s7
	c.addi4spn	a0,00000010
	jal	ra,00000000230A382C
	addi	a2,zero,+00000020
	c.addi4spn	a1,00000030
	c.mv	a0,s7
	jal	ra,00000000230A382C
	addi	a2,zero,+00000020
	c.addi4spn	a1,00000010
	addi	a0,s4,+000000F8
	jal	ra,00000000230A382C
	addi	a1,zero,+00000040
	c.addi4spn	a0,00000010
	jal	ra,000000002308AA58
	lw	a7,s4,+000000D0
	lui	a2,000230C7
	addi	a6,zero,+00000100
	c.addi4spn	a5,00000050
	addi	a4,zero,+00000040
	c.mv	a3,s7
	addi	a2,a2,-00000184
	addi	a1,zero,+00000030
	c.mv	a0,s9
	c.jalr	a7
	c.mv	s0,a0
	c.beqz	a0,000000002308B12C

l2308B118:
	lui	a4,000230C7
	c.mv	a5,a0
	addi	a4,a4,-000001A8
	addi	a3,zero,+00000296

l2308B126:
	addi	a2,s3,+00000254
	c.j	000000002308B0B0

l2308B12C:
	lw	a0,s11,+00000000
	jal	ra,0000000023099762
	lui	a4,000230C7
	c.mv	a5,a0
	addi	a4,a4,-00000174
	addi	a3,zero,+0000029B
	addi	a2,s3,+00000254
	c.li	a1,00000003
	c.mv	a0,s2
	jal	ra,0000000023093DF4
	lui	a4,000230C7
	addi	a6,zero,+00000030
	c.mv	a5,s9
	addi	a4,a4,-000001B8
	addi	a3,zero,+0000029C
	addi	a2,s3,+00000254
	c.li	a1,00000003
	c.mv	a0,s2
	jal	ra,0000000023093F06
	lui	a4,000230C7
	addi	a6,zero,+00000040
	c.mv	a5,s7
	addi	a4,a4,-00000160
	addi	a3,zero,+0000029D
	addi	a2,s3,+00000254
	c.li	a1,00000004
	c.mv	a0,s2
	jal	ra,0000000023093F06
	lui	a4,000230C7
	c.addi4spn	a5,00000050
	addi	a6,zero,+00000100
	addi	a4,a4,-00000150
	addi	a3,zero,+0000029E
	addi	a2,s3,+00000254
	c.li	a1,00000004
	c.mv	a0,s2
	jal	ra,0000000023093F06
	addi	a1,zero,+00000040
	c.mv	a0,s7
	jal	ra,000000002308AA58
	lw	a5,s5,+00000004
	c.srli	a5,00000003
	c.sw	s1,4(a5)
	lbu	a5,s5,+00000001
	c.addi	a5,FFFFFFFA
	andi	a5,a5,+000000FD
	c.bnez	a5,000000002308B1E6

l2308B1C6:
	c.li	a5,0000000C
	c.sw	s1,12(a5)
	c.li	a5,00000004
	c.sw	s1,16(a5)
	c.lw	s1,0(a5)
	sw	zero,s1,+00000014
	lbu	a4,a5,+0000001C
	c.li	a5,00000008
	c.andi	a4,00000002
	c.bnez	a4,000000002308B1E0

l2308B1DE:
	c.li	a5,00000010

l2308B1E0:
	c.addi	a5,00000008

l2308B1E2:
	c.sw	s1,8(a5)
	c.j	000000002308B230

l2308B1E6:
	c.li	a2,00000001
	c.mv	a1,s8
	addi	a0,s1,+00000038
	jal	ra,0000000023096596
	c.mv	s0,a0
	c.bnez	a0,000000002308B206

l2308B1F6:
	c.li	a2,00000001
	c.mv	a1,s8
	addi	a0,s1,+00000044
	jal	ra,0000000023096596
	c.mv	s0,a0
	c.beqz	a0,000000002308B216

l2308B206:
	lui	a4,000230C7
	c.mv	a5,s0
	addi	a4,a4,-00000144
	addi	a3,zero,+000002BB
	c.j	000000002308B126

l2308B216:
	c.mv	a0,s8
	jal	ra,0000000023096834
	c.sw	s1,20(a0)
	lw	a5,s5,+0000000C
	c.li	a4,00000007
	c.sw	s1,12(a5)
	lbu	a3,s5,+00000001
	bne	a3,a4,000000002308B2E2

l2308B22E:
	c.sw	s1,8(a0)

l2308B230:
	c.lw	s1,20(a4)
	c.lw	s1,4(a5)
	lw	a7,s1,+0000000C
	lw	a6,s1,+00000008
	c.swsp	a4,00000000
	lui	a4,000230C7
	addi	a4,a4,-00000130
	c.li	a1,00000003
	addi	a3,zero,+000002FF
	addi	a2,s3,+00000254
	c.mv	a0,s2
	jal	ra,0000000023093DF4
	lw	a5,s2,+00000000
	c.lw	s1,4(a1)
	c.lw	s1,16(s0)
	lhu	a4,a5,+00000074
	c.lw	s1,20(a5)
	addi	s9,s1,+00000018
	c.andi	a4,00000001
	addi	s10,s1,+00000028
	slli	s4,a5,00000001
	c.bnez	a4,000000002308B316

l2308B274:
	c.addi4spn	a4,00000050
	add	s6,a4,s4
	c.add	s4,a1
	c.add	s4,a4
	add	s8,a4,a5
	c.bnez	s0,000000002308B286

l2308B284:
	c.lw	s1,12(s0)

l2308B286:
	c.mv	a2,s0
	c.add	a1,s4
	c.mv	a0,s9
	jal	ra,00000000230A382C
	c.lw	s1,4(a1)
	c.mv	a2,s0
	c.mv	a0,s10
	c.add	a1,s0
	c.add	a1,s4
	jal	ra,00000000230A382C
	addi	s7,sp,+00000050

l2308B2A2:
	lw	a5,s2,+0000000C
	bge	zero,a5,000000002308B346

l2308B2AA:
	c.lw	s1,20(a2)
	c.mv	a1,s7
	addi	a0,s1,+00000038
	jal	ra,000000002309666A
	c.lw	s1,20(a2)
	c.mv	a1,s8
	addi	a0,s1,+00000044
	jal	ra,000000002309666A
	addi	s7,s1,+00000050
	c.mv	a1,s5
	c.mv	a0,s7
	jal	ra,0000000023093A6C
	c.mv	s0,a0
	c.beqz	a0,000000002308B354

l2308B2D2:
	lui	a4,000230C7
	c.mv	a5,a0
	addi	a4,a4,-00000100
	addi	a3,zero,+0000036D
	c.j	000000002308B126

l2308B2E2:
	lw	a3,s5,+00000014
	add	a4,a0,a3
	and	a0,a0,a3
	c.li	a3,00000001
	sub	a0,a4,a0
	c.sw	s1,8(a0)
	lw	a4,s2,+0000000C
	c.addi	a4,FFFFFFFE
	bltu	a3,a4,000000002308B304

l2308B300:
	c.add	a5,a0
	c.j	000000002308B1E2

l2308B304:
	lui	a4,000230C7
	addi	a4,a4,-000001E0
	addi	a3,zero,+000002F7

l2308B310:
	addi	a2,s3,+00000254
	c.j	000000002308B048

l2308B316:
	c.addi4spn	a4,00000050
	add	s6,s4,a1
	c.add	s6,a4
	c.add	s4,a4
	add	s7,a4,a5
	c.bnez	s0,000000002308B328

l2308B326:
	c.lw	s1,12(s0)

l2308B328:
	c.mv	a2,s0
	c.add	a1,s6
	c.mv	a0,s10
	jal	ra,00000000230A382C
	c.lw	s1,4(a1)
	c.mv	a2,s0
	c.mv	a0,s9
	c.add	a1,s0
	c.add	a1,s6
	jal	ra,00000000230A382C
	addi	s8,sp,+00000050
	c.j	000000002308B2A2

l2308B346:
	lui	a4,000230C7
	addi	a4,a4,-000001E0
	addi	a3,zero,+00000349
	c.j	000000002308B310

l2308B354:
	addi	s1,s1,+00000090
	c.mv	a1,s5
	c.mv	a0,s1
	jal	ra,0000000023093A6C
	c.mv	s0,a0
	c.beqz	a0,000000002308B374

l2308B364:
	lui	a4,000230C7
	c.mv	a5,a0
	addi	a4,a4,-00000100
	addi	a3,zero,+00000374
	c.j	000000002308B126

l2308B374:
	lw	a2,s5,+00000004
	c.li	a3,00000001
	c.mv	a1,s6
	c.mv	a0,s7
	jal	ra,0000000023093642
	c.mv	s0,a0
	c.beqz	a0,000000002308B396

l2308B386:
	lui	a4,000230C7
	c.mv	a5,a0
	addi	a4,a4,-000000E8
	addi	a3,zero,+0000037C
	c.j	000000002308B126

l2308B396:
	lw	a2,s5,+00000004
	c.li	a3,00000000
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,0000000023093642
	c.mv	s0,a0
	c.beqz	a0,000000002308B3B8

l2308B3A8:
	lui	a4,000230C7
	c.mv	a5,a0
	addi	a4,a4,-000000E8
	addi	a3,zero,+00000384
	c.j	000000002308B126

l2308B3B8:
	lbu	a4,s5,+00000001
	c.li	a5,00000002
	bne	a4,a5,000000002308B416

l2308B3C2:
	c.li	a1,00000004
	c.mv	a0,s7
	jal	ra,0000000023093A06
	c.mv	s4,a0
	c.beqz	a0,000000002308B3EC

l2308B3CE:
	lui	a4,000230C7
	c.mv	a5,a0
	addi	a4,a4,-000000D0
	addi	a3,zero,+0000038E
	addi	a2,s3,+00000254
	c.li	a1,00000001
	c.mv	a0,s2
	jal	ra,0000000023093E84
	c.mv	s0,s4
	c.j	000000002308AF84

l2308B3EC:
	c.mv	a0,s1
	c.li	a1,00000004
	jal	ra,0000000023093A06
	c.mv	s1,a0
	c.beqz	a0,000000002308B416

l2308B3F8:
	lui	a4,000230C7
	c.mv	a5,a0
	addi	a4,a4,-000000D0
	addi	a3,zero,+00000395
	addi	a2,s3,+00000254
	c.li	a1,00000001
	c.mv	a0,s2
	jal	ra,0000000023093E84
	c.mv	s0,s1
	c.j	000000002308AF84

l2308B416:
	c.addi4spn	a0,00000050
	addi	a1,zero,+00000100
	jal	ra,000000002308AA58
	lui	a4,000230C7
	addi	a4,a4,-000000B0
	addi	a3,zero,+000003BD
	addi	a2,s3,+00000254
	c.li	a1,00000002
	c.mv	a0,s2
	jal	ra,0000000023093DF4
	c.j	000000002308AF84

;; mbedtls_ssl_flush_output: 2308B43A
;;   Called from:
;;     23086E30 (in altcp_mbedtls_write)
;;     23086FAE (in altcp_mbedtls_lower_sent)
;;     230871CA (in altcp_mbedtls_lower_poll)
;;     2308C754 (in mbedtls_ssl_write_record)
;;     2308D830 (in mbedtls_ssl_write)
;;     2308EB24 (in mbedtls_ssl_read)
;;     2309981A (in mbedtls_ssl_handshake_client_step)
;;     2309B2A0 (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_flush_output proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	lui	a4,000230C7
	c.lui	s1,00001000
	lui	s2,000230C8
	addi	a4,a4,+00000068
	addi	a3,s1,-00000676
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.mv	s0,a0
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	jal	ra,0000000023093DF4
	c.lw	s0,16(a5)
	c.bnez	a5,000000002308B4A2

l2308B46E:
	lui	a4,000230C7
	addi	a3,s1,-00000671
	addi	a4,a4,+00000078
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023093DF4
	addi	s1,s1,-00000100

l2308B48C:
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

l2308B4A2:
	lw	a5,s0,+000000AC
	c.beqz	a5,000000002308B51E

l2308B4A8:
	c.mv	s3,s2
	lui	s4,000230C7
	addi	s5,s1,-00000663
	lui	s6,000230C7
	addi	s2,s1,-0000065D

l2308B4BA:
	lw	a6,s0,+000000AC
	c.lw	s0,0(a0)
	bne	a6,zero,000000002308B53A

l2308B4C4:
	c.li	a4,00000008

l2308B4C6:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	bgeu	a5,a4,000000002308B4EC

l2308B4D2:
	lw	a3,s0,+00000090
	addi	a2,a4,-00000001
	c.add	a3,a2
	lbu	a5,a3,+00000000
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,a3,+00000000
	c.beqz	a5,000000002308B5A0

l2308B4EC:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002308B4F8

l2308B4F6:
	c.li	a6,00000002

l2308B4F8:
	bne	a4,a6,000000002308B5A6

l2308B4FC:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,+000000F4
	addi	a3,a3,-0000064E
	addi	a2,s3,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023093DF4
	addi	s1,s1,+00000480
	c.j	000000002308B48C

l2308B51E:
	lui	a4,000230C7
	addi	a4,a4,+000000B4
	addi	a3,s1,-0000066A
	addi	a2,s2,+00000254

l2308B52E:
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.li	s1,00000000
	c.j	000000002308B48C

l2308B53A:
	c.swsp	a6,00000084
	jal	ra,000000002308AD0E
	lw	a5,s0,+000000A8
	c.lwsp	a2,00000008
	addi	a4,s4,+000000C4
	c.add	a5,a0
	c.mv	a3,s5
	addi	a2,s3,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lw	s0,0(a0)
	jal	ra,000000002308AD0E
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
	addi	a4,s6,+000000E8
	c.mv	a3,s2
	addi	a2,s3,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093E84
	bge	zero,s1,000000002308B48C

l2308B592:
	lw	a5,s0,+000000AC
	sub	s1,a5,s1
	sw	s1,s0,+000000AC
	c.j	000000002308B4BA

l2308B5A0:
	andi	a4,a2,+000000FF
	c.j	000000002308B4C6

l2308B5A6:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,+000000B4
	addi	a3,a3,-0000064A
	addi	a2,s3,+00000254
	c.j	000000002308B52E

;; mbedtls_ssl_recv_flight_completed: 2308B5BA
;;   Called from:
;;     2308EA7E (in mbedtls_ssl_parse_finished)
;;     2309C0C0 (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_recv_flight_completed proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,48(a5)
	c.mv	s0,a0
	c.lw	a5,56(a0)
	jal	ra,000000002308AC92
	c.lw	s0,48(a5)
	c.li	a1,00000000
	c.mv	a0,s0
	sw	zero,a5,+00000038
	c.lw	s0,48(a5)
	sw	zero,a5,+0000003C
	c.lw	s0,48(a5)
	c.lw	a5,32(a4)
	c.sw	a5,64(a4)
	jal	ra,000000002308AD1E
	c.lw	s0,108(a3)
	c.li	a4,00000016
	c.lw	s0,48(a5)
	bne	a3,a4,000000002308B608

l2308B5EE:
	c.lw	s0,100(a4)
	lbu	a3,a4,+00000000
	c.li	a4,00000014
	bne	a3,a4,000000002308B608

l2308B5FA:
	c.li	a4,00000003
	sb	a4,a5,+00000034

l2308B600:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2308B608:
	sb	zero,a5,+00000034
	c.j	000000002308B600

;; mbedtls_ssl_send_flight_completed: 2308B60E
;;   Called from:
;;     2308D708 (in mbedtls_ssl_write_finished)
;;     23099EF8 (in mbedtls_ssl_handshake_client_step)
mbedtls_ssl_send_flight_completed proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,0(a4)
	c.lw	a0,48(a5)
	lui	a2,000230C8
	c.lw	a4,104(a4)
	addi	a3,zero,+00000087
	addi	a2,a2,+00000254
	c.sw	a5,48(a4)
	c.lw	a0,48(a5)
	lui	a4,000230C8
	addi	a4,a4,-00000378
	c.lw	a5,48(a5)
	c.li	a1,00000003
	c.mv	s0,a0
	jal	ra,0000000023093DF4
	c.lw	s0,48(a5)
	c.mv	a0,s0
	c.lw	a5,48(a1)
	jal	ra,000000002308AD1E
	c.lw	s0,108(a3)
	c.li	a4,00000016
	c.lw	s0,48(a5)
	bne	a3,a4,000000002308B66A

l2308B650:
	c.lw	s0,100(a4)
	lbu	a3,a4,+00000000
	c.li	a4,00000014
	bne	a3,a4,000000002308B66A

l2308B65C:
	c.li	a4,00000003

l2308B65E:
	sb	a4,a5,+00000034
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2308B66A:
	c.li	a4,00000002
	c.j	000000002308B65E

;; mbedtls_ssl_update_handshake_status: 2308B66E
;;   Called from:
;;     2308E37C (in mbedtls_ssl_read_record)
mbedtls_ssl_update_handshake_status proc
	c.lw	a0,4(a4)
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,00000010
	c.mv	s0,a0
	beq	a4,a5,000000002308B68E

l2308B67E:
	c.lw	a0,48(a5)
	c.beqz	a5,000000002308B68E

l2308B682:
	lw	a5,a5,+000000C4
	lw	a2,a0,+00000080
	c.lw	a0,100(a1)
	c.jalr	a5

l2308B68E:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002308B6A2

l2308B698:
	c.lw	s0,48(a5)
	c.beqz	a5,000000002308B6A2

l2308B69C:
	c.lw	a5,32(a4)
	c.addi	a4,00000001
	c.sw	a5,32(a4)

l2308B6A2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_ssl_optimize_checksum: 2308B6AA
mbedtls_ssl_optimize_checksum proc
	lbu	a3,a1,+00000009
	c.li	a4,00000007
	beq	a3,a4,000000002308B6C4

l2308B6B4:
	c.lw	a0,48(a4)
	lui	a5,0002308B
	addi	a5,a5,-000002F6
	sw	a5,a4,+000000C4
	c.jr	ra

l2308B6C4:
	lui	a4,000230C7
	c.lui	a3,00001000
	lui	a2,000230C8
	addi	a4,a4,-000001E0
	addi	a3,a3,+0000022E
	addi	a2,a2,+00000254
	c.li	a1,00000001
	jal	zero,0000000023093DF4

;; mbedtls_ssl_reset_checksum: 2308B6E0
mbedtls_ssl_reset_checksum proc
	c.lw	a0,48(a0)
	c.li	a1,00000000
	addi	a0,a0,+00000050
	jal	zero,0000000023089A96

;; mbedtls_ssl_session_init: 2308B6EC
;;   Called from:
;;     2308BBFA (in ssl_handshake_init)
;;     2309BD70 (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_session_init proc
	addi	a2,zero,+00000074
	c.li	a1,00000000
	jal	zero,00000000230A3A68

;; mbedtls_ssl_init: 2308B6F6
;;   Called from:
;;     23086AD6 (in altcp_mbedtls_setup)
mbedtls_ssl_init proc
	addi	a2,zero,+000000C0
	c.li	a1,00000000
	jal	zero,00000000230A3A68

;; mbedtls_ssl_conf_authmode: 2308B700
;;   Called from:
;;     23080E7C (in bl_cipstart)
;;     23080ED0 (in bl_cipstart)
;;     23086C90 (in altcp_tls_create_config)
mbedtls_ssl_conf_authmode proc
	c.andi	a1,00000003
	slli	a5,a1,00000002
	lhu	a1,a0,+00000074
	c.andi	a1,FFFFFFF3
	c.or	a1,a5
	sh	a1,a0,+00000074
	c.jr	ra

;; mbedtls_ssl_conf_rng: 2308B714
;;   Called from:
;;     23086CA0 (in altcp_tls_create_config)
mbedtls_ssl_conf_rng proc
	c.sw	a0,24(a1)
	c.sw	a0,28(a2)
	c.jr	ra

;; mbedtls_ssl_set_bio: 2308B71A
;;   Called from:
;;     23086B14 (in altcp_mbedtls_setup)
mbedtls_ssl_set_bio proc
	c.sw	a0,28(a1)
	c.sw	a0,16(a2)
	c.sw	a0,20(a3)
	c.sw	a0,24(a4)
	c.jr	ra

;; mbedtls_ssl_conf_own_cert: 2308B724
;;   Called from:
;;     23087466 (in altcp_tls_create_config_client_2wayauth)
mbedtls_ssl_conf_own_cert proc
	addi	a0,a0,+0000004C
	jal	zero,000000002308ACBA

;; mbedtls_ssl_conf_ca_chain: 2308B72C
;;   Called from:
;;     23086CFA (in altcp_tls_create_config_client_common)
mbedtls_ssl_conf_ca_chain proc
	c.sw	a0,80(a1)
	c.sw	a0,84(a2)
	c.jr	ra

;; mbedtls_ssl_set_hostname: 2308B732
;;   Called from:
;;     23080E84 (in bl_cipstart)
mbedtls_ssl_set_hostname proc
	c.bnez	a1,000000002308B74E

l2308B734:
	c.lui	a0,FFFF9000
	addi	a0,a0,-00000100
	c.jr	ra

l2308B73C:
	c.lui	a0,FFFF9000
	addi	a0,a0,-00000100

l2308B742:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2308B74E:
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.mv	s2,a0
	c.mv	a0,a1
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,00000000230A4220
	addi	a5,zero,+000000FF
	c.mv	s1,a0
	bltu	a5,a0,000000002308B73C

l2308B76C:
	addi	a1,a0,+00000001
	c.li	a0,00000001
	jal	ra,00000000230904A4
	sw	a0,s2,+000000B4
	c.beqz	a0,000000002308B792

l2308B77C:
	c.mv	a2,s1
	c.mv	a1,s0
	jal	ra,00000000230A382C
	lw	a5,s2,+000000B4
	c.li	a0,00000000
	c.add	s1,a5
	sb	zero,s1,+00000000
	c.j	000000002308B742

l2308B792:
	c.lui	a0,FFFF8000
	addi	a0,a0,+00000100
	c.j	000000002308B742

;; mbedtls_ssl_conf_alpn_protocols: 2308B79A
;;   Called from:
;;     23080EE4 (in bl_cipstart)
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

l2308B7B4:
	c.lw	s0,0(a0)
	c.bnez	a0,000000002308B7CC

l2308B7B8:
	sw	a1,s2,+00000060

l2308B7BC:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2308B7CC:
	c.swsp	a1,00000084
	jal	ra,00000000230A4220
	c.add	s1,a0
	c.addi	a0,FFFFFFFF
	bltu	s3,a0,000000002308B7E4

l2308B7DA:
	bgeu	s1,s4,000000002308B7E4

l2308B7DE:
	c.addi	s0,00000004
	c.lwsp	a2,00000064
	c.j	000000002308B7B4

l2308B7E4:
	c.lui	a0,FFFF9000
	addi	a0,a0,-00000100
	c.j	000000002308B7BC

;; mbedtls_ssl_get_alpn_protocol: 2308B7EC
;;   Called from:
;;     230803DC (in tcp_connected_callback)
mbedtls_ssl_get_alpn_protocol proc
	lw	a0,a0,+000000B8
	c.jr	ra

;; mbedtls_ssl_get_bytes_avail: 2308B7F2
;;   Called from:
;;     230870AE (in altcp_mbedtls_handle_rx_appldata)
mbedtls_ssl_get_bytes_avail proc
	c.lw	a0,104(a5)
	c.beqz	a5,000000002308B7FA

l2308B7F6:
	c.lw	a0,112(a0)
	c.jr	ra

l2308B7FA:
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_ssl_get_record_expansion: 2308B7FE
;;   Called from:
;;     23086D6C (in altcp_mbedtls_sndbuf)
mbedtls_ssl_get_record_expansion proc
	c.lw	a0,56(a4)
	c.bnez	a4,000000002308B808

l2308B802:
	c.lw	a0,0(a0)
	jal	zero,000000002308AD0E

l2308B808:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a4,80(a3)
	c.beqz	a3,000000002308B83E

l2308B812:
	lbu	a5,a3,+00000001
	c.li	a2,00000002
	beq	a5,a2,000000002308B836

l2308B81C:
	bltu	a5,a2,000000002308B83E

l2308B820:
	c.addi	a5,FFFFFFFA
	andi	a5,a5,+000000FF
	bltu	a2,a5,000000002308B83E

l2308B82A:
	c.lw	a4,8(s0)

l2308B82C:
	c.lw	a0,0(a0)
	jal	ra,000000002308AD0E
	c.add	a0,s0
	c.j	000000002308B860

l2308B836:
	c.lw	a4,20(s0)
	c.lw	a3,20(a5)
	c.add	s0,a5
	c.j	000000002308B82C

l2308B83E:
	lui	a4,000230C7
	c.lui	a3,00002000
	lui	a2,000230C8
	addi	a4,a4,-000001E0
	addi	a3,a3,-00000731
	addi	a2,a2,+00000254
	c.li	a1,00000001
	jal	ra,0000000023093DF4
	c.lui	a0,FFFF9000
	addi	a0,a0,+00000400

l2308B860:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_ssl_get_max_frag_len: 2308B868
;;   Called from:
;;     23086D8A (in altcp_mbedtls_sndbuf)
;;     2308D7D4 (in mbedtls_ssl_write)
mbedtls_ssl_get_max_frag_len proc
	c.lw	a0,0(a5)
	lui	a4,000230C8
	c.lw	a0,36(a3)
	c.lw	a5,116(a5)
	addi	a4,a4,+000000E0
	c.srli	a5,00000004
	c.andi	a5,0000001C
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.beqz	a3,000000002308B890

l2308B880:
	lbu	a3,a3,+00000070
	c.slli	a3,02
	c.add	a4,a3
	c.lw	a4,0(a4)
	bgeu	a4,a5,000000002308B890

l2308B88E:
	c.mv	a5,a4

l2308B890:
	c.mv	a0,a5
	c.jr	ra

;; mbedtls_ssl_handshake_step: 2308B894
;;   Called from:
;;     2308B91A (in mbedtls_ssl_handshake)
mbedtls_ssl_handshake_step proc
	c.beqz	a0,000000002308B8CC

l2308B896:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,0(a4)
	c.mv	s0,a0
	c.beqz	a4,000000002308B8D4

l2308B8A2:
	lhu	a5,a4,+00000074
	c.andi	a5,00000001
	c.beqz	a5,000000002308B8B6

l2308B8AA:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002309B248

l2308B8B6:
	jal	ra,00000000230997D0
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000001
	c.bnez	a5,000000002308B8AA

l2308B8C4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2308B8CC:
	c.lui	a0,FFFF9000
	addi	a0,a0,-00000100
	c.jr	ra

l2308B8D4:
	c.lui	a0,FFFF9000
	addi	a0,a0,-00000100
	c.j	000000002308B8C4

;; mbedtls_ssl_handshake: 2308B8DC
;;   Called from:
;;     2308722A (in altcp_mbedtls_lower_recv_process)
;;     2308D79A (in mbedtls_ssl_write)
;;     2308EAF2 (in mbedtls_ssl_read)
mbedtls_ssl_handshake proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.beqz	a0,000000002308B94C

l2308B8EA:
	c.lw	a0,0(a5)
	c.mv	s1,a0
	c.beqz	a5,000000002308B94C

l2308B8F0:
	lui	a4,000230C7
	c.lui	a3,00002000
	lui	s2,000230C8
	addi	a4,a4,+000001A0
	addi	a3,a3,-000006DA
	addi	a2,s2,+00000254
	c.li	a1,00000002
	jal	ra,0000000023093DF4
	c.li	s3,00000010

l2308B90E:
	c.lw	s1,4(a5)
	bne	a5,s3,000000002308B918

l2308B914:
	c.li	s0,00000000
	c.j	000000002308B922

l2308B918:
	c.mv	a0,s1
	jal	ra,000000002308B894
	c.mv	s0,a0
	c.beqz	a0,000000002308B90E

l2308B922:
	lui	a4,000230C7
	c.lui	a3,00002000
	addi	a4,a4,+000001B0
	addi	a3,a3,-000006D0
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,0000000023093DF4

l2308B93C:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2308B94C:
	c.lui	s0,FFFF9000
	addi	s0,s0,-00000100
	c.j	000000002308B93C

;; mbedtls_ssl_transform_free: 2308B954
;;   Called from:
;;     2308BA12 (in ssl_handshake_wrapup_free_hs_transform)
;;     2308BB5C (in ssl_handshake_init)
;;     2308BDCA (in mbedtls_ssl_free)
;;     2308BDDE (in mbedtls_ssl_free)
mbedtls_ssl_transform_free proc
	c.beqz	a0,000000002308B98E

l2308B956:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	addi	a0,a0,+00000050
	c.swsp	ra,00000084
	jal	ra,0000000023093612
	addi	a0,s0,+00000090
	jal	ra,0000000023093612
	addi	a0,s0,+00000038
	jal	ra,0000000023096548
	addi	a0,s0,+00000044
	jal	ra,0000000023096548
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	addi	a1,zero,+000000D0
	c.addi	sp,00000010
	jal	zero,000000002308AA58

l2308B98E:
	c.jr	ra

;; mbedtls_ssl_handshake_free: 2308B990
;;   Called from:
;;     2308BA00 (in ssl_handshake_wrapup_free_hs_transform)
;;     2308BB6C (in ssl_handshake_init)
;;     2308BDD8 (in mbedtls_ssl_free)
mbedtls_ssl_handshake_free proc
	c.beqz	a0,000000002308B9D6

l2308B992:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	addi	a0,a0,+00000050
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	jal	ra,0000000023089A70
	c.lw	s0,16(a0)

l2308B9A6:
	c.beqz	a0,000000002308B9B2

l2308B9A8:
	c.lw	a0,8(s1)
	jal	ra,0000000023064972
	c.mv	a0,s1
	c.j	000000002308B9A6

l2308B9B2:
	c.lw	s0,36(a0)
	jal	ra,0000000023064972
	c.lw	s0,44(a0)
	jal	ra,0000000023064972
	c.lw	s0,56(a0)
	jal	ra,000000002308AC92
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	addi	a1,zero,+0000015C
	c.addi	sp,00000010
	jal	zero,000000002308AA58

l2308B9D6:
	c.jr	ra

;; ssl_handshake_wrapup_free_hs_transform: 2308B9D8
;;   Called from:
;;     2308BB46 (in mbedtls_ssl_handshake_wrapup)
;;     2308E2DA (in mbedtls_ssl_read_record_layer)
ssl_handshake_wrapup_free_hs_transform proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	a4,000230C8
	c.lui	a3,00001000
	lui	s1,000230C8
	addi	a4,a4,+000001EC
	addi	a3,a3,+000003AF
	addi	a2,s1,+00000254
	c.li	a1,00000003
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023093DF4
	c.lw	s0,48(a0)
	jal	ra,000000002308B990
	c.lw	s0,48(a0)
	jal	ra,0000000023064972
	c.lw	s0,60(a0)
	sw	zero,s0,+00000030
	c.beqz	a0,000000002308BA1C

l2308BA12:
	jal	ra,000000002308B954
	c.lw	s0,60(a0)
	jal	ra,0000000023064972

l2308BA1C:
	c.lw	s0,64(a5)
	c.mv	a0,s0
	sw	zero,s0,+00000040
	c.sw	s0,60(a5)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	addi	a2,s1,+00000254
	c.lwsp	tp,00000024
	lui	a4,000230C8
	c.lui	a3,00001000
	addi	a4,a4,+0000020C
	addi	a3,a3,+000003C3
	c.li	a1,00000003
	c.addi	sp,00000010
	jal	zero,0000000023093DF4

;; mbedtls_ssl_session_free: 2308BA46
;;   Called from:
;;     2308BAA8 (in mbedtls_ssl_handshake_wrapup)
;;     2308BB64 (in ssl_handshake_init)
;;     2308BDE4 (in mbedtls_ssl_free)
;;     2308BDFE (in mbedtls_ssl_free)
;;     2309BDC4 (in mbedtls_ssl_handshake_server_step)
;;     2309BE28 (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_session_free proc
	c.beqz	a0,000000002308BA74

l2308BA48:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,92(a0)
	c.beqz	a0,000000002308BA5E

l2308BA54:
	jal	ra,000000002308FC44
	c.lw	s0,92(a0)
	jal	ra,0000000023064972

l2308BA5E:
	c.lw	s0,100(a0)
	jal	ra,0000000023064972
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	addi	a1,zero,+00000074
	c.addi	sp,00000010
	jal	zero,000000002308AA58

l2308BA74:
	c.jr	ra

;; mbedtls_ssl_handshake_wrapup: 2308BA76
mbedtls_ssl_handshake_wrapup proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	c.lw	a0,48(a5)
	lui	a4,000230C7
	c.lui	a3,00001000
	lui	s1,000230C8
	addi	a4,a4,+000001C0
	addi	a3,a3,+000003CA
	addi	a2,s1,+00000254
	c.li	a1,00000003
	c.mv	s0,a0
	lw	s2,a5,+00000148
	jal	ra,0000000023093DF4
	c.lw	s0,40(a0)
	c.beqz	a0,000000002308BAB2

l2308BAA8:
	jal	ra,000000002308BA46
	c.lw	s0,40(a0)
	jal	ra,0000000023064972

l2308BAB2:
	c.lw	s0,44(a1)
	c.lw	s0,0(a4)
	sw	zero,s0,+0000002C
	c.sw	s0,40(a1)
	c.lw	a4,36(a5)
	c.beqz	a5,000000002308BAE8

l2308BAC0:
	c.lw	a1,8(a3)
	c.beqz	a3,000000002308BAE8

l2308BAC4:
	bne	s2,zero,000000002308BAE8

l2308BAC8:
	c.lw	a4,40(a0)
	c.jalr	a5
	c.beqz	a0,000000002308BAE8

l2308BACE:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,+000001D4
	addi	a3,a3,+000003ED
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093DF4

l2308BAE8:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002308BB44

l2308BAF2:
	c.lw	s0,48(a5)
	c.lw	a5,56(a5)
	c.beqz	a5,000000002308BB44

l2308BAF8:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002308AD1E
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,+000001F0
	addi	a3,a3,+000003F9
	addi	a2,s1,+00000254
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,0000000023093DF4

l2308BB1A:
	c.lw	s0,4(a5)
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.addi	a5,00000001
	c.sw	s0,4(a5)
	c.lwsp	s0,00000004
	c.lwsp	zero,00000048
	addi	a2,s1,+00000254
	c.lwsp	tp,00000024
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,+00000218
	addi	a3,a3,+00000401
	c.li	a1,00000003
	c.addi	sp,00000010
	jal	zero,0000000023093DF4

l2308BB44:
	c.mv	a0,s0
	jal	ra,000000002308B9D8
	c.j	000000002308BB1A

;; ssl_handshake_init: 2308BB4C
;;   Called from:
;;     2308BD0C (in mbedtls_ssl_setup)
ssl_handshake_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s0,a0
	c.lw	a0,64(a0)
	c.beqz	a0,000000002308BB60

l2308BB5C:
	jal	ra,000000002308B954

l2308BB60:
	c.lw	s0,44(a0)
	c.beqz	a0,000000002308BB68

l2308BB64:
	jal	ra,000000002308BA46

l2308BB68:
	c.lw	s0,48(a0)
	c.beqz	a0,000000002308BB70

l2308BB6C:
	jal	ra,000000002308B990

l2308BB70:
	c.lw	s0,64(a5)
	c.bnez	a5,000000002308BB80

l2308BB74:
	addi	a1,zero,+000000D0
	c.li	a0,00000001
	jal	ra,00000000230904A4
	c.sw	s0,64(a0)

l2308BB80:
	c.lw	s0,44(a5)
	c.bnez	a5,000000002308BB90

l2308BB84:
	addi	a1,zero,+00000074
	c.li	a0,00000001
	jal	ra,00000000230904A4
	c.sw	s0,44(a0)

l2308BB90:
	c.lw	s0,48(a5)
	c.beqz	a5,000000002308BBE6

l2308BB94:
	c.lw	s0,64(a5)
	c.bnez	a5,000000002308BBF6

l2308BB98:
	lui	a4,000230C8
	c.lui	a3,00001000
	lui	a2,000230C8
	addi	a4,a4,+000001C8
	addi	a3,a3,+0000052C
	addi	a2,a2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lw	s0,48(a0)
	jal	ra,0000000023064972
	c.lw	s0,64(a0)
	jal	ra,0000000023064972
	c.lw	s0,44(a0)
	jal	ra,0000000023064972
	c.lui	a0,FFFF8000
	sw	zero,s0,+00000030
	sw	zero,s0,+00000040
	sw	zero,s0,+0000002C
	addi	a0,a0,+00000100

l2308BBDA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2308BBE6:
	addi	a1,zero,+0000015C
	c.li	a0,00000001
	jal	ra,00000000230904A4
	c.sw	s0,48(a0)
	c.bnez	a0,000000002308BB94

l2308BBF4:
	c.j	000000002308BB98

l2308BBF6:
	c.lw	s0,44(a0)
	c.beqz	a0,000000002308BB98

l2308BBFA:
	jal	ra,000000002308B6EC
	c.lw	s0,64(s1)
	addi	a2,zero,+000000D0
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,00000000230A3A68
	addi	a0,s1,+00000050
	jal	ra,0000000023093608
	addi	a0,s1,+00000090
	jal	ra,0000000023093608
	addi	a0,s1,+00000038
	jal	ra,0000000023096540
	addi	a0,s1,+00000044
	jal	ra,0000000023096540
	c.lw	s0,48(s1)
	addi	a2,zero,+0000015C
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,00000000230A3A68
	addi	s2,s1,+00000050
	c.mv	a0,s2
	jal	ra,0000000023089A66
	c.mv	a0,s2
	c.li	a1,00000000
	jal	ra,0000000023089A96
	lui	a5,0002308B
	addi	a5,a5,-00000300
	sw	a5,s1,+000000C4
	c.li	a3,00000002
	c.li	a5,00000003
	c.sw	s1,0(a3)
	c.sw	s1,12(a5)
	c.lw	s0,0(a5)
	c.li	a0,00000000
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002308BBDA

l2308BC6C:
	c.lw	s0,48(a5)
	c.lw	s0,56(a4)
	c.sw	a5,68(a4)
	c.lw	s0,0(a5)
	c.lw	s0,48(a4)
	lhu	a5,a5,+00000074
	c.andi	a5,00000001
	c.bnez	a5,000000002308BC8E

l2308BC7E:
	sb	zero,a4,+00000034

l2308BC82:
	c.mv	a0,s0
	c.li	a1,00000000
	jal	ra,000000002308AD1E
	c.li	a0,00000000
	c.j	000000002308BBDA

l2308BC8E:
	sb	a3,a4,+00000034
	c.j	000000002308BC82

;; mbedtls_ssl_setup: 2308BC94
;;   Called from:
;;     23086ADE (in altcp_mbedtls_setup)
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
	jal	ra,00000000230904A4
	c.sw	s0,80(a0)
	c.beqz	a0,000000002308BD2E

l2308BCB4:
	addi	a1,s2,+0000013D
	c.li	a0,00000001
	jal	ra,00000000230904A4
	sw	a0,s0,+0000008C
	c.beqz	a0,000000002308BD2E

l2308BCC4:
	lhu	a2,s1,+00000074
	c.lw	s0,80(a5)
	addi	a6,a0,+0000000B
	c.andi	a2,00000002
	addi	a3,a0,+0000000D
	addi	a1,a5,+0000000B
	addi	a4,a5,+0000000D
	c.beqz	a2,000000002308BD10

l2308BCDE:
	sw	a0,s0,+00000094
	c.sw	s0,88(a5)
	c.addi	a0,00000003
	c.addi	a5,00000003
	sw	a0,s0,+00000090
	sw	a6,s0,+00000098
	sw	a3,s0,+0000009C
	sw	a3,s0,+000000A0
	c.sw	s0,84(a5)

l2308BCFA:
	c.sw	s0,92(a1)
	c.sw	s0,96(a4)
	c.sw	s0,100(a4)
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002308BB4C

l2308BD10:
	sw	a0,s0,+00000090
	c.sw	s0,84(a5)
	c.addi	a0,00000008
	c.addi	a5,00000008
	sw	a0,s0,+00000094
	sw	a6,s0,+00000098
	sw	a3,s0,+0000009C
	sw	a3,s0,+000000A0
	c.sw	s0,88(a5)
	c.j	000000002308BCFA

l2308BD2E:
	c.lui	a5,00004000
	lui	a4,000230C8
	c.lui	a3,00001000
	lui	a2,000230C8
	c.mv	a0,s0
	addi	a5,a5,+0000013D
	addi	a4,a4,-00000350
	addi	a3,a3,+00000585
	addi	a2,a2,+00000254
	c.li	a1,00000001
	jal	ra,0000000023093DF4
	c.lw	s0,80(a0)
	jal	ra,0000000023064972
	c.lwsp	a2,00000020
	sw	zero,s0,+00000050
	c.lwsp	s0,00000004
	c.lui	a0,FFFF8000
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	addi	a0,a0,+00000100
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_ssl_free: 2308BD6E
;;   Called from:
;;     23086D14 (in altcp_mbedtls_dealloc)
mbedtls_ssl_free proc
	beq	a0,zero,000000002308BE54

l2308BD72:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	a4,000230C7
	c.lui	a3,00002000
	lui	s1,000230C8
	addi	a4,a4,+00000118
	addi	a3,a3,-000003F6
	addi	a2,s1,+00000254
	c.li	a1,00000002
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.swsp	s2,00000000
	jal	ra,0000000023093DF4
	lw	a0,s0,+0000008C
	c.beqz	a0,000000002308BDB2

l2308BDA0:
	c.lui	a1,00004000
	addi	a1,a1,+0000013D
	jal	ra,000000002308AA58
	lw	a0,s0,+0000008C
	jal	ra,0000000023064972

l2308BDB2:
	c.lw	s0,80(a0)
	c.beqz	a0,000000002308BDC6

l2308BDB6:
	c.lui	a1,00004000
	addi	a1,a1,+0000013D
	jal	ra,000000002308AA58
	c.lw	s0,80(a0)
	jal	ra,0000000023064972

l2308BDC6:
	c.lw	s0,60(a0)
	c.beqz	a0,000000002308BDD4

l2308BDCA:
	jal	ra,000000002308B954
	c.lw	s0,60(a0)
	jal	ra,0000000023064972

l2308BDD4:
	c.lw	s0,48(a0)
	c.beqz	a0,000000002308BDFA

l2308BDD8:
	jal	ra,000000002308B990
	c.lw	s0,64(a0)
	jal	ra,000000002308B954
	c.lw	s0,44(a0)
	jal	ra,000000002308BA46
	c.lw	s0,48(a0)
	jal	ra,0000000023064972
	c.lw	s0,64(a0)
	jal	ra,0000000023064972
	c.lw	s0,44(a0)
	jal	ra,0000000023064972

l2308BDFA:
	c.lw	s0,40(a0)
	c.beqz	a0,000000002308BE08

l2308BDFE:
	jal	ra,000000002308BA46
	c.lw	s0,40(a0)
	jal	ra,0000000023064972

l2308BE08:
	lw	s2,s0,+000000B4
	beq	s2,zero,000000002308BE26

l2308BE10:
	c.mv	a0,s2
	jal	ra,00000000230A4220
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,000000002308AA58
	lw	a0,s0,+000000B4
	jal	ra,0000000023064972

l2308BE26:
	lui	a4,000230C7
	c.lui	a3,00002000
	c.mv	a0,s0
	addi	a2,s1,+00000254
	c.li	a1,00000002
	addi	a4,a4,+00000120
	addi	a3,a3,-000003B5
	jal	ra,0000000023093DF4
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	addi	a1,zero,+000000C0
	c.addi	sp,00000010
	jal	zero,000000002308AA58

l2308BE54:
	c.jr	ra

;; mbedtls_ssl_config_init: 2308BE56
;;   Called from:
;;     23086C34 (in altcp_tls_create_config)
mbedtls_ssl_config_init proc
	addi	a2,zero,+00000078
	c.li	a1,00000000
	jal	zero,00000000230A3A68

;; mbedtls_ssl_config_defaults: 2308BE60
;;   Called from:
;;     23086C86 (in altcp_tls_create_config)
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
	c.bnez	a1,000000002308BE88

l2308BE7C:
	andi	a5,a5,-0000020D
	ori	a5,a5,+00000208
	sh	a5,a0,+00000074

l2308BE88:
	addi	a5,zero,+000003E8
	c.sw	a0,104(a5)
	c.lui	a5,0000F000
	addi	a5,a5,-000005A0
	c.sw	a0,108(a5)
	c.li	a4,00000002
	lui	a5,00003030
	addi	a5,a5,+00000303
	bne	a3,a4,000000002308BED8

l2308BEA4:
	c.sw	a0,112(a5)
	lui	a5,0004200E
	addi	a5,a5,+00000134
	c.sw	a0,12(a5)
	c.sw	a0,8(a5)
	c.sw	a0,4(a5)
	c.sw	a0,0(a5)
	lui	a5,000230C8
	addi	a5,a5,+00000598
	c.sw	a0,72(a5)
	lui	a5,0004200E
	addi	a5,a5,+00000140
	c.sw	a0,88(a5)
	lui	a5,0004200F
	addi	a5,a5,-00000320
	c.sw	a0,92(a5)
	c.li	a0,00000000
	c.jr	ra

l2308BED8:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.sw	a0,112(a5)
	c.li	a5,00000001
	bne	a2,a5,000000002308BEEA

l2308BEE6:
	sb	a4,a0,+00000073

l2308BEEA:
	c.mv	s0,a0
	jal	ra,00000000230996F0
	lui	a5,000230C8
	addi	a5,a5,+00000588
	c.sw	s0,72(a5)
	lui	a5,0004200E
	addi	a5,a5,+00000124
	c.sw	s0,12(a0)
	c.sw	s0,8(a0)
	c.sw	s0,4(a0)
	c.sw	s0,0(a0)
	c.sw	s0,88(a5)
	jal	ra,0000000023094C6E
	c.sw	s0,92(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_ssl_config_free: 2308BF1C
;;   Called from:
;;     230874F4 (in altcp_mbedtls_free_config)
mbedtls_ssl_config_free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.lw	a0,76(a0)

l2308BF28:
	c.bnez	a0,000000002308BF3C

l2308BF2A:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	addi	a1,zero,+00000078
	c.addi	sp,00000010
	jal	zero,000000002308AA58

l2308BF3C:
	c.lw	a0,8(s1)
	jal	ra,0000000023064972
	c.mv	a0,s1
	c.j	000000002308BF28

;; mbedtls_ssl_sig_from_pk: 2308BF46
mbedtls_ssl_sig_from_pk proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000001
	c.swsp	ra,00000084
	jal	ra,0000000023087A5C
	c.lwsp	a2,00000020
	sltu	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; mbedtls_ssl_pk_alg_from_sig: 2308BF5A
mbedtls_ssl_pk_alg_from_sig proc
	c.addi	a0,FFFFFFFF
	sltiu	a0,a0,+00000001
	c.jr	ra

;; mbedtls_ssl_md_alg_from_hash: 2308BF62
;;   Called from:
;;     2309BCDA (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_md_alg_from_hash proc
	c.addi	a0,FFFFFFFF
	andi	a5,a0,+000000FF
	c.li	a4,00000003
	bltu	a4,a5,000000002308BF7E

l2308BF6E:
	lui	a0,000230CC
	addi	a0,a0,-000004F0
	c.add	a0,a5
	lbu	a0,a0,+00000000
	c.jr	ra

l2308BF7E:
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_ssl_hash_from_md_alg: 2308BF82
;;   Called from:
;;     23099F24 (in mbedtls_ssl_handshake_client_step)
mbedtls_ssl_hash_from_md_alg proc
	c.addi	a0,FFFFFFFD
	c.li	a5,00000003
	bltu	a5,a0,000000002308BF9A

l2308BF8A:
	lui	a5,000230CC
	addi	a5,a5,-000004EC
	c.add	a5,a0
	lbu	a0,a5,+00000000
	c.jr	ra

l2308BF9A:
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_ssl_check_curve: 2308BF9E
;;   Called from:
;;     2308E6B4 (in mbedtls_ssl_parse_certificate)
mbedtls_ssl_check_curve proc
	c.lw	a0,0(a5)
	c.lw	a5,92(a5)
	c.bnez	a5,000000002308BFAE

l2308BFA4:
	c.li	a0,FFFFFFFF
	c.jr	ra

l2308BFA8:
	beq	a4,a1,000000002308BFB6

l2308BFAC:
	c.addi	a5,00000001

l2308BFAE:
	lbu	a4,a5,+00000000
	c.bnez	a4,000000002308BFA8

l2308BFB4:
	c.j	000000002308BFA4

l2308BFB6:
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_ssl_check_cert_usage: 2308BFBA
;;   Called from:
;;     2308E6F2 (in mbedtls_ssl_parse_certificate)
;;     2309C0EA (in mbedtls_ssl_handshake_server_step)
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
	bne	a2,a4,000000002308BFFE

l2308BFD4:
	lbu	a5,a5,+0000000A
	c.li	a4,0000000A
	c.li	a1,00000000
	bltu	a4,a5,000000002308BFFE

l2308BFE0:
	sll	a5,a2,a5
	andi	a4,a5,+00000082
	addi	a1,zero,+00000020
	c.bnez	a4,000000002308BFFE

l2308BFEE:
	andi	a4,a5,+00000600
	c.li	a1,00000008
	c.bnez	a4,000000002308BFFE

l2308BFF6:
	c.andi	a5,0000001C
	sltu	a1,zero,a5
	c.slli	a1,07

l2308BFFE:
	c.mv	a0,s2
	c.swsp	a2,00000084
	jal	ra,000000002308F534
	c.mv	s0,a0
	c.lwsp	a2,00000084
	c.beqz	a0,000000002308C01A

l2308C00C:
	c.lw	s1,0(a5)
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	c.or	a5,a4
	c.sw	s1,0(a5)
	c.li	s0,FFFFFFFF

l2308C01A:
	c.li	a5,00000001
	beq	a2,a5,000000002308C04A

l2308C020:
	lui	a1,000230C7
	addi	a1,a1,-00000240

l2308C028:
	c.li	a2,00000008
	c.mv	a0,s2
	jal	ra,000000002308F9E0
	c.beqz	a0,000000002308C03C

l2308C032:
	c.lw	s1,0(a5)
	c.lui	a4,00001000
	c.li	s0,FFFFFFFF
	c.or	a5,a4
	c.sw	s1,0(a5)

l2308C03C:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2308C04A:
	lui	a1,000230C7
	addi	a1,a1,-0000024C
	c.j	000000002308C028

;; mbedtls_ssl_write_version: 2308C054
;;   Called from:
;;     2308C2A8 (in mbedtls_ssl_write_record)
;;     2308C426 (in mbedtls_ssl_write_record)
;;     2308DD4A (in mbedtls_ssl_read_record_layer)
;;     23099932 (in mbedtls_ssl_handshake_client_step)
mbedtls_ssl_write_version proc
	c.li	a5,00000001
	andi	a0,a0,+000000FF
	bne	a2,a5,000000002308C07A

l2308C05E:
	c.li	a5,00000002
	bne	a1,a5,000000002308C066

l2308C064:
	c.li	a1,00000001

l2308C066:
	c.addi	a0,FFFFFFFE
	xori	a0,a0,-00000001
	sb	a0,a3,+00000000
	sub	a1,zero,a1

l2308C074:
	sb	a1,a3,+00000001
	c.jr	ra

l2308C07A:
	sb	a0,a3,+00000000
	c.j	000000002308C074

;; mbedtls_ssl_write_record: 2308C080
;;   Called from:
;;     2308C880 (in mbedtls_ssl_resend)
;;     2308D2BA (in mbedtls_ssl_send_alert_message)
;;     2308D466 (in mbedtls_ssl_write_certificate)
;;     2308D562 (in mbedtls_ssl_write_change_cipher_spec)
;;     2308D70E (in mbedtls_ssl_write_finished)
;;     2308D88A (in mbedtls_ssl_write)
;;     23099EFE (in mbedtls_ssl_handshake_client_step)
mbedtls_ssl_write_record proc
	c.addi16sp	FFFFFFA0
	c.swsp	s2,00000028
	lui	a4,000230C8
	c.lui	a3,00001000
	lui	s2,000230C8
	c.swsp	s0,0000002C
	c.swsp	ra,000000AC
	c.swsp	s1,000000A8
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	addi	a4,a4,-00000140
	addi	a3,a3,-00000559
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	s0,a0
	lw	s3,a0,+000000A8
	jal	ra,0000000023093DF4
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002308C0CC

l2308C0BE:
	c.lw	s0,48(a5)
	c.beqz	a5,000000002308C0CC

l2308C0C2:
	lbu	a4,a5,+00000034
	c.li	a5,00000001
	beq	a4,a5,000000002308C1B2

l2308C0CC:
	lw	a4,s0,+000000A4
	c.li	a5,00000016
	bne	a4,a5,000000002308C1B2

l2308C0D6:
	lw	a5,s0,+000000A0
	lbu	s1,a5,+00000000
	c.beqz	s1,000000002308C11A

l2308C0E0:
	c.lw	s0,48(a4)
	c.bnez	a4,000000002308C11A

l2308C0E4:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,-000001E0
	addi	a3,a3,-00000547
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023093DF4
	addi	s1,s1,+00000400

l2308C104:
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

l2308C11A:
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
	c.beqz	a5,000000002308C1A0

l2308C144:
	lw	a0,s0,+000000A0
	c.addi	s3,00000008
	addi	a1,a0,+00000004
	c.addi	a0,0000000C
	jal	ra,00000000230A3948
	lw	a5,s0,+000000A8
	lw	a4,s0,+000000A0
	c.addi	a5,00000008
	sw	a5,s0,+000000A8
	c.beqz	s1,000000002308C224

l2308C164:
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

l2308C182:
	lw	a0,s0,+000000A0
	c.li	a2,00000003
	c.li	a1,00000000
	c.addi	a0,00000006
	jal	ra,00000000230A3A68
	lw	a0,s0,+000000A0
	c.li	a2,00000003
	addi	a1,a0,+00000001
	c.addi	a0,00000009
	jal	ra,00000000230A382C

l2308C1A0:
	c.beqz	s1,000000002308C1B2

l2308C1A2:
	c.lw	s0,48(a5)
	lw	a1,s0,+000000A0
	c.mv	a2,s3
	lw	a5,a5,+000000C4
	c.mv	a0,s0
	c.jalr	a5

l2308C1B2:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002308C28A

l2308C1BC:
	c.lw	s0,48(a5)
	c.beqz	a5,000000002308C28A

l2308C1C0:
	lbu	a4,a5,+00000034
	c.li	a5,00000001
	beq	a4,a5,000000002308C28A

l2308C1CA:
	lw	a5,s0,+000000A4
	c.li	a4,00000014
	c.andi	a5,FFFFFFFD
	bne	a5,a4,000000002308C28A

l2308C1D6:
	c.li	a1,00000010
	c.li	a0,00000001
	jal	ra,00000000230904A4
	c.mv	s1,a0
	c.bnez	a0,000000002308C232

l2308C1E2:
	lui	a4,000230C8
	c.lui	a3,00001000
	c.li	a5,00000010
	addi	a4,a4,-00000130
	addi	a3,a3,-00000636
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093DF4

l2308C1FE:
	c.lui	s1,FFFF8000
	lui	a4,000230C8
	c.lui	a3,00001000
	addi	a5,s1,+00000100
	addi	a4,a4,-00000118
	addi	a3,a3,-0000050F
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093E84
	addi	s1,s1,+00000100
	c.j	000000002308C104

l2308C224:
	sb	zero,a4,+00000004
	lw	a5,s0,+000000A0
	sb	zero,a5,+00000005
	c.j	000000002308C182

l2308C232:
	lw	a1,s0,+000000A8
	c.li	a0,00000001
	jal	ra,00000000230904A4
	c.sw	s1,0(a0)
	lw	a5,s0,+000000A8
	c.bnez	a0,000000002308C266

l2308C244:
	lui	a4,000230C8
	c.lui	a3,00001000
	c.mv	a0,s0
	addi	a4,a4,-00000130
	addi	a3,a3,-00000630
	addi	a2,s2,+00000254
	c.li	a1,00000001
	jal	ra,0000000023093DF4
	c.mv	a0,s1
	jal	ra,0000000023064972
	c.j	000000002308C1FE

l2308C266:
	lw	a1,s0,+000000A0
	c.mv	a2,a5
	jal	ra,00000000230A382C
	lw	a5,s0,+000000A8
	c.sw	s1,4(a5)
	lw	a5,s0,+000000A4
	sw	zero,s1,+0000000C
	sb	a5,s1,+00000008
	c.lw	s0,48(a4)
	c.lw	a4,56(a5)
	c.bnez	a5,000000002308C308

l2308C288:
	c.sw	a4,56(s1)

l2308C28A:
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
	jal	ra,000000002308C054
	lw	a5,s0,+00000098
	srli	a4,s3,00000008
	sb	a4,a5,+00000000
	lw	a5,s0,+00000098
	sb	s3,a5,+00000001
	c.lw	s0,56(a5)
	beq	a5,zero,000000002308C6D2

l2308C2C6:
	lui	a4,000230C8
	addi	a4,a4,-00000104
	addi	a3,zero,+00000504
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lw	s0,36(a5)
	c.beqz	a5,000000002308C2E6

l2308C2E2:
	c.lw	s0,56(a5)
	c.bnez	a5,000000002308C310

l2308C2E6:
	lui	a4,000230C7
	addi	a4,a4,-000001E0
	addi	a3,zero,+00000508

l2308C2F2:
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023093DF4
	addi	s1,s1,+00000400
	c.j	000000002308C538

l2308C306:
	c.mv	a5,a4

l2308C308:
	c.lw	a5,12(a4)
	c.bnez	a4,000000002308C306

l2308C30C:
	c.sw	a5,12(s1)
	c.j	000000002308C28A

l2308C310:
	c.lw	a5,80(a5)
	c.li	s1,00000000
	c.beqz	a5,000000002308C31A

l2308C316:
	lbu	s1,a5,+00000001

l2308C31A:
	lw	a5,s0,+000000A0
	lw	a6,s0,+000000A8
	lui	a4,000230C8
	addi	a4,a4,-000000F4
	addi	a3,zero,+0000050F
	addi	a2,s2,+00000254
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,0000000023093F06
	c.li	a5,00000007
	beq	s1,a5,000000002308C348

l2308C340:
	c.li	a5,00000002
	c.li	s5,00000000
	bne	s1,a5,000000002308C3E6

l2308C348:
	c.lw	s0,12(a5)
	bge	zero,a5,000000002308C470

l2308C34E:
	c.lw	s0,56(a0)
	lw	a1,s0,+00000090
	c.li	a2,00000008
	addi	a0,a0,+00000038
	jal	ra,000000002309674C
	c.lw	s0,56(a0)
	lw	a1,s0,+00000094
	c.li	a2,00000003
	addi	a0,a0,+00000038
	jal	ra,000000002309674C
	c.lw	s0,56(a0)
	lw	a1,s0,+00000098
	c.li	a2,00000002
	addi	a0,a0,+00000038
	jal	ra,000000002309674C
	c.lw	s0,56(a0)
	lw	a2,s0,+000000A8
	lw	a1,s0,+000000A0
	addi	a0,a0,+00000038
	c.li	s5,00000001
	jal	ra,000000002309674C
	lw	a5,s0,+000000A8
	lw	a1,s0,+000000A0
	c.lw	s0,56(a0)
	c.add	a1,a5
	addi	a0,a0,+00000038
	jal	ra,0000000023096770
	c.lw	s0,56(a0)
	addi	a0,a0,+00000038
	jal	ra,00000000230967D4
	c.lw	s0,56(a3)
	lw	a4,s0,+000000A0
	lw	a5,s0,+000000A8
	lw	a6,a3,+00000014
	addi	a2,s2,+00000254
	c.add	a5,a4
	lui	a4,000230C8
	addi	a4,a4,-000000D4
	addi	a3,zero,+0000053C
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,0000000023093F06
	c.lw	s0,56(a4)
	lw	a5,s0,+000000A8
	c.lw	a4,20(a4)
	c.add	a5,a4
	sw	a5,s0,+000000A8

l2308C3E6:
	addi	a5,s1,-00000006
	andi	a5,a5,+000000FD
	bne	a5,zero,000000002308C5A6

l2308C3F2:
	c.lw	s0,56(a5)
	c.li	s3,00000008
	c.lw	a5,0(a5)
	lbu	a5,a5,+0000001C
	c.andi	a5,00000002
	c.bnez	a5,000000002308C402

l2308C400:
	c.li	s3,00000010

l2308C402:
	lw	a1,s0,+00000090
	c.li	a2,00000008
	c.addi4spn	a0,00000030
	jal	ra,00000000230A382C
	lw	a5,s0,+000000A4
	c.lw	s0,12(a1)
	c.lw	s0,8(a0)
	sb	a5,sp,+00000038
	c.lw	s0,0(a5)
	addi	a3,sp,+00000039
	c.lw	a5,116(a2)
	c.srli	a2,00000001
	c.andi	a2,00000001
	jal	ra,000000002308C054
	lw	a5,s0,+000000A8
	c.mv	a0,s0
	c.li	a6,0000000D
	srli	a4,a5,00000008
	sb	a4,sp,+0000003B
	lui	a4,000230C8
	sb	a5,sp,+0000003C
	addi	a4,a4,-000000C4
	c.addi4spn	a5,00000030
	addi	a3,zero,+00000575
	addi	a2,s2,+00000254
	c.li	a1,00000004
	jal	ra,0000000023093F06
	c.lw	s0,56(a5)
	c.lw	a5,12(a4)
	c.lw	a5,16(a0)
	c.addi	a4,FFFFFFF8
	beq	a4,a0,000000002308C47E

l2308C462:
	lui	a4,000230C7
	addi	a4,a4,-000001E0
	addi	a3,zero,+0000057D
	c.j	000000002308C2F2

l2308C470:
	lui	a4,000230C7
	addi	a4,a4,-000001E0
	addi	a3,zero,+00000536
	c.j	000000002308C2F2

l2308C47E:
	lw	a1,s0,+00000090
	c.addi	a5,00000018
	c.add	a0,a5
	c.li	a2,00000008
	jal	ra,00000000230A382C
	lw	a1,s0,+00000090
	lw	a0,s0,+0000009C
	c.li	a2,00000008
	jal	ra,00000000230A382C
	c.lw	s0,56(a5)
	lui	a4,000230C8
	addi	a4,a4,-000000A4
	lw	a6,a5,+0000000C
	c.lw	a5,16(a5)
	addi	a3,zero,+00000586
	addi	a2,s2,+00000254
	sub	a6,a6,a5
	lw	a5,s0,+0000009C
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,0000000023093F06
	c.lw	s0,56(a4)
	lw	s4,s0,+000000A8
	lw	a7,s0,+000000A0
	c.lw	a4,12(a5)
	c.lw	a4,16(a4)
	c.li	a6,00000000
	c.add	a5,s4
	c.sub	a5,a4
	lui	a4,000230C8
	sw	a5,s0,+000000A8
	addi	a4,a4,-0000009C
	addi	a3,zero,+00000592
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s0
	c.swsp	a7,0000008C
	jal	ra,0000000023093DF4
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
	jal	ra,0000000023093B1A
	c.mv	s1,a0
	c.beqz	a0,000000002308C556

l2308C51E:
	lui	a4,000230C8
	c.mv	a5,a0
	addi	a4,a4,-00000060
	addi	a3,zero,+0000059F

l2308C52C:
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093E84

l2308C538:
	lui	a4,000230C8
	c.lui	a3,00001000
	c.mv	a5,s1
	addi	a4,a4,+00000048
	addi	a3,a3,-000004DE

l2308C548:
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093E84
	c.j	000000002308C104

l2308C556:
	c.lwsp	a2,000001F4
	beq	s4,a5,000000002308C56A

l2308C55C:
	lui	a4,000230C7
	addi	a4,a4,-000001E0
	addi	a3,zero,+000005A5
	c.j	000000002308C2F2

l2308C56A:
	lw	a5,s0,+000000A8
	lui	a4,000230C8
	c.mv	a6,s3
	c.add	a5,s3
	sw	a5,s0,+000000A8
	addi	a4,a4,-00000044
	c.mv	a5,s6
	addi	a3,zero,+000005AC
	addi	a2,s2,+00000254
	c.li	a1,00000004
	c.mv	a0,s0
	c.addi	s5,00000001
	jal	ra,0000000023093F06

l2308C592:
	c.li	a5,00000001
	beq	s5,a5,000000002308C6A2

l2308C598:
	lui	a4,000230C7
	addi	a4,a4,-000001E0
	addi	a3,zero,+0000062E
	c.j	000000002308C2F2

l2308C5A6:
	c.li	a5,00000002
	bne	s1,a5,000000002308C694

l2308C5AC:
	c.lw	s0,56(a5)
	c.swsp	zero,00000018
	lw	s3,s0,+000000A8
	c.lw	a5,12(a5)
	c.addi	s3,00000001
	and	s3,s3,a5
	sub	s3,a5,s3
	bne	a5,s3,000000002308C5C6

l2308C5C4:
	c.li	s3,00000000

l2308C5C6:
	c.li	a4,00000000

l2308C5C8:
	lw	a5,s0,+000000A0
	lw	a3,s0,+000000A8
	c.add	a5,a4
	c.add	a5,a3
	sb	s3,a5,+00000000
	c.addi	a4,00000001
	bgeu	s3,a4,000000002308C5C8

l2308C5DE:
	lw	s4,s0,+000000A8
	c.lw	s0,12(a4)
	c.li	a5,00000001
	c.addi	s4,00000001
	c.add	s4,s3
	sw	s4,s0,+000000A8
	blt	a5,a4,000000002308C64A

l2308C5F2:
	lw	s1,s0,+000000A0

l2308C5F6:
	c.lw	s0,56(a5)
	lui	a4,000230C8
	addi	a7,s3,+00000001
	lw	a6,a5,+0000000C
	lw	a5,s0,+000000A8
	addi	a4,a4,-00000030
	addi	a3,zero,+000005E3
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lw	s0,56(a0)
	c.mv	a5,s1
	c.mv	a3,s1
	c.lw	a0,12(a2)
	addi	a1,a0,+00000018
	addi	a6,sp,+00000030
	c.mv	a4,s4
	addi	a0,a0,+00000050
	jal	ra,0000000023093ABE
	c.mv	s1,a0
	c.beqz	a0,000000002308C680

l2308C63A:
	lui	a4,000230C8
	c.mv	a5,a0
	addi	a4,a4,+00000020
	addi	a3,zero,+000005EB
	c.j	000000002308C52C

l2308C64A:
	c.lw	s0,56(a1)
	c.lw	s0,0(a5)
	c.lw	a1,12(a2)
	c.lw	a5,24(a4)
	c.lw	a5,28(a0)
	c.addi	a1,00000018
	c.jalr	a4
	c.mv	s1,a0
	bne	a0,zero,000000002308C538

l2308C65E:
	c.lw	s0,56(a1)
	lw	a0,s0,+0000009C
	c.lw	a1,12(a2)
	c.addi	a1,00000018
	jal	ra,00000000230A382C
	c.lw	s0,56(a5)
	lw	s4,s0,+000000A8
	lw	s1,s0,+000000A0
	c.lw	a5,12(a5)
	c.add	a5,s4
	sw	a5,s0,+000000A8
	c.j	000000002308C5F6

l2308C680:
	c.lwsp	a6,000001F4
	beq	s4,a5,000000002308C592

l2308C686:
	lui	a4,000230C7
	addi	a4,a4,-000001E0
	addi	a3,zero,+000005F1
	c.j	000000002308C2F2

l2308C694:
	lui	a4,000230C7
	addi	a4,a4,-000001E0
	addi	a3,zero,+00000627
	c.j	000000002308C2F2

l2308C6A2:
	lui	a4,000230C8
	addi	a4,a4,+00000038
	addi	a3,zero,+00000632
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	lw	a5,s0,+000000A8
	lw	a4,s0,+00000098
	srli	a3,a5,00000008
	sb	a3,a4,+00000000
	lw	a4,s0,+00000098
	sb	a5,a4,+00000001

l2308C6D2:
	c.lw	s0,0(a0)
	c.lui	s3,00001000
	jal	ra,000000002308AD0E
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
	lui	a4,000230C8
	addi	a4,a4,+00000058
	addi	a3,s3,-000004D0
	addi	a2,s2,+00000254
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lw	s0,0(a0)
	jal	ra,000000002308AD0E
	lw	a6,s0,+000000A8
	lw	a5,s0,+00000094
	lui	a4,000230C8
	c.add	a6,a0
	addi	a4,a4,+00000094
	addi	a3,s3,-000004CD
	addi	a2,s2,+00000254
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,0000000023093F06
	c.mv	a0,s0
	jal	ra,000000002308B43A
	c.mv	s1,a0
	c.beqz	a0,000000002308C76C

l2308C75C:
	lui	a4,000230C8
	c.mv	a5,a0
	addi	a4,a4,+000000B4
	addi	a3,s3,-000004C8
	c.j	000000002308C548

l2308C76C:
	lui	a4,000230C8
	addi	a4,a4,+000000D0
	addi	a3,s3,-000004C4
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.j	000000002308C104

;; mbedtls_ssl_resend: 2308C786
;;   Called from:
;;     2308CB6E (in mbedtls_ssl_fetch_input)
;;     2308CD3C (in mbedtls_ssl_prepare_handshake_record)
;;     2308E2BE (in mbedtls_ssl_read_record_layer)
;;     2308EB3C (in mbedtls_ssl_read)
;;     23099878 (in mbedtls_ssl_handshake_client_step)
;;     2309B2E4 (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_resend proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	lui	a4,000230C8
	c.lui	s3,00001000
	lui	s2,000230C8
	addi	a4,a4,-0000042C
	addi	a3,s3,-000005C7
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a0
	c.swsp	ra,00000094
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	jal	ra,0000000023093DF4
	c.lw	s0,48(a5)
	c.li	s1,00000001
	lbu	a5,a5,+00000034
	beq	a5,s1,000000002308C7EE

l2308C7C4:
	lui	a4,000230C8
	addi	a4,a4,-00000414
	addi	a3,s3,-000005C3
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lw	s0,48(a5)
	c.mv	a0,s0
	c.lw	a5,56(a4)
	c.sw	a5,60(a4)
	jal	ra,000000002308AA68
	c.lw	s0,48(a5)
	sb	s1,a5,+00000034

l2308C7EE:
	c.lui	s3,00001000
	c.li	s4,00000016
	c.li	s5,00000014
	lui	s6,000230C8
	addi	s7,s3,-000005A7

l2308C7FC:
	c.lw	s0,48(a5)
	c.lw	a5,60(s1)
	c.bnez	s1,000000002308C82E

l2308C802:
	c.lw	s0,4(a3)
	c.li	a4,00000010
	bne	a3,a4,000000002308C8BA

l2308C80A:
	c.li	a4,00000003
	sb	a4,a5,+00000034

l2308C810:
	lui	a4,000230C8
	c.lui	a3,00001000
	addi	a4,a4,-000003C0
	addi	a3,a3,-00000596
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.li	s1,00000000
	c.j	000000002308C8A2

l2308C82E:
	lbu	a5,s1,+00000008
	bne	a5,s4,000000002308C846

l2308C836:
	c.lw	s1,0(a5)
	lbu	a5,a5,+00000000
	bne	a5,s5,000000002308C846

l2308C840:
	c.mv	a0,s0
	jal	ra,000000002308AA68

l2308C846:
	c.lw	s1,4(a2)
	c.lw	s1,0(a1)
	lw	a0,s0,+000000A0
	jal	ra,00000000230A382C
	c.lw	s1,4(a5)
	c.li	a6,0000000C
	c.mv	a3,s7
	sw	a5,s0,+000000A8
	lbu	a5,s1,+00000008
	addi	a2,s2,+00000254
	c.li	a1,00000003
	sw	a5,s0,+000000A4
	c.lw	s1,12(a4)
	c.lw	s0,48(a5)
	c.mv	a0,s0
	c.sw	a5,60(a4)
	lw	a5,s0,+000000A0
	addi	a4,s6,-000003FC
	jal	ra,0000000023093F06
	c.mv	a0,s0
	jal	ra,000000002308C080
	c.mv	s1,a0
	c.beqz	a0,000000002308C7FC

l2308C888:
	lui	a4,000230C8
	c.mv	a5,a0
	addi	a4,a4,-000003DC
	addi	a3,s3,-000005A3
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093E84

l2308C8A2:
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

l2308C8BA:
	c.li	a4,00000002
	sb	a4,a5,+00000034
	c.lw	s0,48(a5)
	c.mv	a0,s0
	c.lw	a5,48(a1)
	jal	ra,000000002308AD1E
	c.j	000000002308C810

;; mbedtls_ssl_fetch_input: 2308C8CC
;;   Called from:
;;     2308D97E (in mbedtls_ssl_read_record_layer)
;;     2308DBE2 (in mbedtls_ssl_read_record_layer)
;;     2309B33A (in mbedtls_ssl_handshake_server_step)
;;     2309B4D4 (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_fetch_input proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	lui	s1,000230C8
	lui	a4,000230C7
	c.lui	s4,00001000
	c.swsp	s3,0000008C
	addi	a4,a4,-000000A0
	c.mv	s3,a1
	addi	a3,s4,-00000746
	addi	a2,s1,+00000254
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
	jal	ra,0000000023093DF4
	c.lw	s0,20(a5)
	c.mv	s2,s1
	c.bnez	a5,000000002308C948

l2308C90A:
	c.lw	s0,24(a5)
	c.bnez	a5,000000002308C948

l2308C90E:
	lui	a4,000230C7
	addi	a4,a4,+00000078
	addi	a3,s4,-00000741
	addi	a2,s1,+00000254

l2308C91E:
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023093DF4
	addi	s1,s1,-00000100

l2308C92C:
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

l2308C948:
	c.lw	s0,88(a5)
	c.lw	s0,80(a4)
	sub	a4,a5,a4
	c.lui	a5,00004000
	addi	a5,a5,+0000013D
	c.sub	a5,a4
	bgeu	a5,s3,000000002308C970

l2308C95C:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,-00000090
	addi	a3,a3,-0000073B

l2308C96A:
	addi	a2,s2,+00000254
	c.j	000000002308C91E

l2308C970:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	beq	a5,zero,000000002308CB94

l2308C97C:
	c.lw	s0,72(a5)
	c.beqz	a5,000000002308C984

l2308C980:
	c.lw	s0,76(a5)
	c.bnez	a5,000000002308C994

l2308C984:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,-00000070
	addi	a3,a3,-0000072E
	c.j	000000002308C96A

l2308C994:
	c.lw	s0,124(a5)
	c.beqz	a5,000000002308C9F0

l2308C998:
	c.lw	s0,116(a4)
	bgeu	a4,a5,000000002308C9C0

l2308C99E:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,-000001E0
	addi	a3,a3,-0000071C

l2308C9AC:
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023093DF4
	addi	s1,s1,+00000400
	c.j	000000002308C92C

l2308C9C0:
	c.sub	a4,a5
	c.sw	s0,116(a4)
	c.beqz	a4,000000002308C9EC

l2308C9C6:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	addi	a4,a4,-0000003C
	addi	a3,a3,-00000713
	jal	ra,0000000023093DF4
	c.lw	s0,88(a0)
	c.lw	s0,124(a1)
	c.lw	s0,116(a2)
	c.add	a1,a0
	jal	ra,00000000230A3948

l2308C9EC:
	sw	zero,s0,+0000007C

l2308C9F0:
	c.lw	s0,116(a5)
	lui	a4,000230C7
	c.lui	s1,00001000
	c.mv	a6,s3
	addi	a4,a4,-00000010
	addi	a3,s1,-00000709
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lw	s0,116(a5)
	bltu	a5,s3,000000002308CA30

l2308CA14:
	lui	a4,000230C7
	addi	a4,a4,+0000000C
	addi	a3,s1,-00000702

l2308CA20:
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.li	s1,00000000
	c.j	000000002308C92C

l2308CA30:
	c.beqz	a5,000000002308CA40

l2308CA32:
	lui	a4,000230C7
	addi	a4,a4,-000001E0
	addi	a3,s1,-000006F7
	c.j	000000002308C9AC

l2308CA40:
	c.mv	a0,s0
	jal	ra,000000002308AD62
	c.beqz	a0,000000002308CA7A

l2308CA48:
	lui	a4,000230C7
	c.lui	s1,00001000
	addi	a4,a4,+0000001C
	addi	a3,s1,-000006D3
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002308AD1E
	c.lw	s0,4(a4)
	c.li	a5,00000010
	bne	a4,a5,000000002308CB1A

l2308CA72:
	c.lui	s1,FFFFA000
	addi	s1,s1,-00000800
	c.j	000000002308C92C

l2308CA7A:
	c.lw	s0,88(s1)
	c.lw	s0,80(a5)
	c.lw	s0,4(a4)
	sub	a5,s1,a5
	c.lui	s1,00004000
	addi	s1,s1,+0000013D
	c.sub	s1,a5
	c.li	a5,00000010
	beq	a4,a5,000000002308CAEA

l2308CA92:
	c.lw	s0,48(a5)
	lw	s3,a5,+00000030

l2308CA98:
	lui	a4,000230C7
	c.lui	a3,00001000
	c.mv	a5,s3
	c.li	a1,00000003
	c.mv	a0,s0
	addi	a4,a4,+00000024
	addi	a3,a3,-000006E3
	addi	a2,s2,+00000254
	jal	ra,0000000023093DF4
	c.lw	s0,24(a5)
	c.lw	s0,88(a1)
	c.lw	s0,28(a0)
	c.beqz	a5,000000002308CAF2

l2308CABC:
	c.mv	a3,s3
	c.mv	a2,s1
	c.jalr	a5

l2308CAC2:
	lui	a4,000230C7
	c.lui	a3,00001000
	c.mv	s1,a0
	c.mv	a5,a0
	addi	a4,a4,+0000003C
	addi	a3,a3,-000006DB
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093E84
	c.bnez	s1,000000002308CAFA

l2308CAE2:
	c.lui	s1,FFFF9000
	addi	s1,s1,-00000280
	c.j	000000002308C92C

l2308CAEA:
	c.lw	s0,0(a5)
	lw	s3,a5,+00000064
	c.j	000000002308CA98

l2308CAF2:
	c.lw	s0,20(a5)
	c.mv	a2,s1
	c.jalr	a5
	c.j	000000002308CAC2

l2308CAFA:
	c.lui	a5,FFFFA000
	addi	a5,a5,-00000800
	beq	s1,a5,000000002308CA48

l2308CB04:
	blt	s1,zero,000000002308C92C

l2308CB08:
	c.sw	s0,116(s1)

l2308CB0A:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,+0000000C
	addi	a3,a3,-00000683
	c.j	000000002308CA20

l2308CB1A:
	c.lw	s0,48(a2)
	c.lw	s0,0(a5)
	c.lw	a2,48(a3)
	c.lw	a5,108(a5)
	bltu	a3,a5,000000002308CB40

l2308CB26:
	lui	a4,000230B2
	addi	a4,a4,+00000580
	addi	a3,s1,-000006CC
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.j	000000002308CA72

l2308CB40:
	slli	a4,a3,00000001
	bltu	a4,a3,000000002308CB4E

l2308CB48:
	bgeu	a4,a5,000000002308CB4E

l2308CB4C:
	c.mv	a5,a4

l2308CB4E:
	c.sw	a2,48(a5)
	c.lw	s0,48(a5)
	lui	a4,000230C8
	addi	a4,a4,-00000378
	c.lw	a5,48(a5)
	addi	a3,zero,+0000007E
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.mv	a0,s0
	jal	ra,000000002308C786
	c.mv	s1,a0
	c.beqz	a0,000000002308CC2E

l2308CB76:
	lui	a4,000230C7
	c.lui	a3,00001000
	c.mv	a5,a0
	addi	a4,a4,+00000054
	addi	a3,a3,-000006C6
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093E84
	c.j	000000002308C92C

l2308CB94:
	c.lw	s0,116(a5)
	c.lui	s5,00001000
	lui	s6,000230C7
	addi	a3,s5,-000006A8
	c.mv	a6,s3
	addi	a4,s6,-00000010
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	c.lui	s7,FFFFA000
	addi	s8,s5,-00000690
	jal	ra,0000000023093DF4
	addi	s7,s7,-00000800
	lui	s9,000230C7
	addi	s5,s5,-0000068F

l2308CBC4:
	lw	s4,s0,+00000074
	bgeu	s4,s3,000000002308CB0A

l2308CBCC:
	c.mv	a0,s0
	jal	ra,000000002308AD62
	c.mv	s1,s7
	c.bnez	a0,000000002308CBEE

l2308CBD6:
	c.lw	s0,88(a1)
	c.lw	s0,116(a4)
	c.lw	s0,24(a5)
	sub	a2,s3,s4
	c.lw	s0,28(a0)
	c.add	a1,a4
	c.beqz	a5,000000002308CC28

l2308CBE6:
	c.lw	s0,0(a4)
	c.lw	a4,100(a3)
	c.jalr	a5

l2308CBEC:
	c.mv	s1,a0

l2308CBEE:
	c.lw	s0,116(a5)
	addi	a4,s6,-00000010
	c.mv	a3,s8
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	c.mv	a6,s3
	jal	ra,0000000023093DF4
	c.mv	a5,s1
	addi	a4,s9,+0000003C
	c.mv	a3,s5
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093E84
	beq	s1,zero,000000002308CAE2

l2308CC1C:
	blt	s1,zero,000000002308C92C

l2308CC20:
	c.lw	s0,116(a5)
	c.add	s1,a5
	c.sw	s0,116(s1)
	c.j	000000002308CBC4

l2308CC28:
	c.lw	s0,20(a5)
	c.jalr	a5
	c.j	000000002308CBEC

l2308CC2E:
	c.lui	s1,FFFF9000
	addi	s1,s1,+00000700
	c.j	000000002308C92C

;; mbedtls_ssl_prepare_handshake_record: 2308CC36
;;   Called from:
;;     2308D1A6 (in mbedtls_ssl_handle_message_type)
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
	c.bnez	a4,000000002308CC5C

l2308CC5A:
	c.li	a3,00000004

l2308CC5C:
	lui	s2,000230C8
	bgeu	a5,a3,000000002308CC9C

l2308CC64:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,+0000042C
	addi	a3,a3,-000003E0
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023093DF4
	addi	s1,s1,-00000200

l2308CC84:
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

l2308CC9C:
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
	lui	a4,000230C7
	addi	a4,a4,+0000044C
	addi	a3,s3,-000003D5
	addi	a2,s2,+00000254
	jal	ra,0000000023093DF4
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	beq	a5,zero,000000002308D13A

l2308CCE6:
	c.lw	s0,48(a3)
	c.lw	s0,100(a0)
	c.beqz	a3,000000002308CD84

l2308CCEC:
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
	beq	a4,a5,000000002308CD84

l2308CD0A:
	lw	a6,a3,+00000040
	addi	a3,a6,-00000001
	bne	a3,a5,000000002308CD60

l2308CD16:
	lbu	a1,a0,+00000000
	c.li	a2,00000003
	beq	a1,a2,000000002308CD60

l2308CD20:
	lui	a4,000230C7
	c.mv	a5,a3
	addi	a4,a4,+00000484
	addi	a3,s3,-000003C0
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.mv	a0,s0
	jal	ra,000000002308C786
	c.mv	s1,a0
	c.beqz	a0,000000002308CD7C

l2308CD44:
	lui	a4,000230C7
	c.mv	a5,a0
	addi	a4,a4,+00000054
	addi	a3,s3,-000003BC

l2308CD52:
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093E84
	c.j	000000002308CC84

l2308CD60:
	c.mv	a6,a4
	c.lui	a3,00001000
	lui	a4,000230C7
	addi	a4,a4,+000004D0
	addi	a3,a3,-000003B3
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4

l2308CD7C:
	c.lui	s1,FFFF9000
	addi	s1,s1,+00000700
	c.j	000000002308CC84

l2308CD84:
	c.lw	s0,112(a4)
	lw	a5,s0,+00000080
	bgeu	a4,a5,000000002308CDE4

l2308CD8E:
	lui	a4,000230C7
	c.lui	s1,00001000
	addi	a4,a4,+00000514
	addi	a3,s1,-000003A5
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lw	s0,48(a5)
	lw	s4,s0,+00000080
	addi	s5,s4,-0000000C
	c.bnez	a5,000000002308CE14

l2308CDB4:
	lui	a4,000230C7
	addi	a4,a4,+0000053C
	addi	a3,s1,-00000471

l2308CDC0:
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023093DF4
	addi	s1,s1,-00000080

l2308CDD2:
	lui	a4,000230C7
	c.lui	a3,00001000
	c.mv	a5,s1
	addi	a4,a4,+000006D8
	addi	a3,a3,-000003A1
	c.j	000000002308CD52

l2308CDE4:
	lui	a1,000230C7
	c.li	a2,00000003
	addi	a1,a1,-00000250
	c.addi	a0,00000006
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002308CD8E

l2308CDF6:
	c.lw	s0,100(a0)
	c.li	a2,00000003
	addi	a1,a0,+00000001
	c.addi	a0,00000009
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002308CD8E

l2308CE06:
	c.lw	s0,48(a5)
	c.bnez	a5,000000002308CE0E

l2308CE0A:
	c.li	s1,00000000
	c.j	000000002308CC84

l2308CE0E:
	c.lw	a5,44(a5)
	c.bnez	a5,000000002308CD8E

l2308CE12:
	c.j	000000002308CE0A

l2308CE14:
	c.lw	a5,44(a0)
	bne	a0,zero,000000002308CF1C

l2308CE1A:
	lui	a4,000230C7
	c.mv	a5,s5
	addi	a4,a4,+00000568
	addi	a3,s1,-00000465
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	lw	a4,s0,+00000080
	c.lui	a5,00004000
	bgeu	a5,a4,000000002308CE4C

l2308CE3E:
	lui	a4,000230C7
	addi	a4,a4,+00000594
	addi	a3,s1,-00000461
	c.j	000000002308CDC0

l2308CE4C:
	andi	a5,s5,+00000007
	srli	a4,s5,00000003
	c.add	a4,s4
	sltu	a5,zero,a5
	c.add	a5,a4
	lw	s3,s0,+00000030
	c.mv	a1,a5
	c.li	a0,00000001
	c.swsp	a5,00000084
	jal	ra,00000000230904A4
	sw	a0,s3,+0000002C
	c.lw	s0,48(a4)
	c.lwsp	a2,000000E4
	c.lw	a4,44(a0)
	c.bnez	a0,000000002308CE96

l2308CE76:
	lui	a4,000230C7
	addi	a3,s1,-00000457
	addi	a4,a4,+000005B0
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF8000
	jal	ra,0000000023093DF4
	addi	s1,s1,+00000100
	c.j	000000002308CDD2

l2308CE96:
	c.lw	s0,100(a1)
	c.li	a2,00000006
	jal	ra,00000000230A382C
	c.lw	s0,48(a5)
	c.li	a2,00000003
	c.li	a1,00000000
	c.lw	a5,44(a0)
	c.addi	a0,00000006
	jal	ra,00000000230A3A68
	c.lw	s0,48(a5)
	c.li	a2,00000003
	c.lw	a5,44(a0)
	addi	a1,a0,+00000001
	c.addi	a0,00000009
	jal	ra,00000000230A382C

l2308CEBC:
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
	bgeu	s5,a5,000000002308CF46

l2308CEFA:
	lui	a4,000230C7
	c.lui	a3,00001000
	c.mv	a7,s5
	c.mv	a6,s1
	c.mv	a5,s3
	addi	a4,a4,+000005E4
	addi	a3,a3,-00000432
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.j	000000002308CF3E

l2308CF1C:
	c.lw	s0,100(a1)
	c.li	a2,00000004
	jal	ra,00000000230A37A4
	c.beqz	a0,000000002308CEBC

l2308CF26:
	lui	a4,000230C7
	addi	a4,a4,+000005C8
	addi	a3,s1,-00000447
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093DF4

l2308CF3E:
	c.lui	s1,FFFF9000
	addi	s1,s1,-00000200
	c.j	000000002308CDD2

l2308CF46:
	lw	a6,s0,+00000070
	addi	s6,s1,+0000000C
	bgeu	a6,s6,000000002308CF70

l2308CF52:
	lui	a4,000230C7
	c.lui	a3,00001000
	c.mv	a5,s1
	addi	a4,a4,+00000610
	addi	a3,a3,-0000042B
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.j	000000002308CF3E

l2308CF70:
	lui	a4,000230C7
	c.lui	a3,00001000
	c.mv	a5,s3
	addi	a4,a4,+00000638
	addi	a3,a3,-00000426
	c.mv	a6,s1
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lw	s0,100(a1)
	addi	a0,s3,+0000000C
	c.mv	a2,s1
	c.addi	a1,0000000C
	c.add	a0,s7
	jal	ra,00000000230A382C
	andi	a3,s3,+00000007
	c.li	a4,00000008
	sub	a5,a4,a3
	beq	a5,a4,000000002308D03C

l2308CFAC:
	srli	a4,s3,00000003
	bltu	a5,s1,000000002308D01C

l2308CFB4:
	sub	s1,a5,s1
	c.add	a4,s4
	c.li	a2,00000001

l2308CFBC:
	bne	s1,a5,000000002308D00A

l2308CFC0:
	srli	a4,s5,00000003
	c.li	a5,00000000
	addi	a3,zero,+000000FF

l2308CFCA:
	bne	a5,a4,000000002308D080

l2308CFCE:
	c.li	a4,00000000
	andi	a7,s5,+00000007
	c.add	s4,a5
	c.li	a3,00000007

l2308CFD8:
	bltu	a4,a7,000000002308D090

l2308CFDC:
	lui	a4,000230C7
	c.lui	s1,00001000
	addi	a4,a4,+00000740
	addi	a3,s1,-00000417
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lw	s0,112(a5)
	bgeu	s6,a5,000000002308D0A4

l2308CFFC:
	lui	a4,000230C7
	addi	a4,a4,+00000664
	addi	a3,s1,-0000040E
	c.j	000000002308CDC0

l2308D00A:
	lbu	a1,a4,+00000000
	sll	a3,a2,s1
	c.addi	s1,00000001
	c.or	a3,a1
	sb	a3,a4,+00000000
	c.j	000000002308CFBC

l2308D01C:
	c.addi	s1,FFFFFFF8
	c.add	a4,s4
	c.add	s1,a3
	lbu	a3,a4,+00000000
	c.add	s3,a5
	c.li	a1,00000001

l2308D02A:
	c.addi	a5,FFFFFFFF
	sll	a2,a1,a5
	c.or	a3,a2
	andi	a3,a3,+000000FF
	c.bnez	a5,000000002308D02A

l2308D038:
	sb	a3,a4,+00000000

l2308D03C:
	andi	a2,s1,+00000007
	c.beqz	a2,000000002308D06C

l2308D042:
	add	a5,s1,s3
	c.srli	a5,00000003
	c.add	a5,s4
	lbu	a3,a5,+00000000
	c.li	a4,00000008
	c.sub	s1,a2
	c.sub	a4,a2
	c.li	a0,00000001
	c.li	a2,00000008

l2308D058:
	sll	a1,a0,a4
	c.or	a3,a1
	c.addi	a4,00000001
	andi	a3,a3,+000000FF
	bne	a4,a2,000000002308D058

l2308D068:
	sb	a3,a5,+00000000

l2308D06C:
	srli	a0,s3,00000003
	srli	a2,s1,00000003
	addi	a1,zero,+000000FF
	c.add	a0,s4
	jal	ra,00000000230A3A68
	c.j	000000002308CFC0

l2308D080:
	add	a2,s4,a5
	lbu	a2,a2,+00000000
	bne	a2,a3,000000002308D164

l2308D08C:
	c.addi	a5,00000001
	c.j	000000002308CFCA

l2308D090:
	lbu	a5,s4,+00000000
	sub	a2,a3,a4
	sra	a5,a5,a2
	c.andi	a5,00000001
	c.beqz	a5,000000002308D164

l2308D0A0:
	c.addi	a4,00000001
	c.j	000000002308CFD8

l2308D0A4:
	c.lw	s0,116(a2)
	c.lw	s0,124(a4)
	bgeu	a4,a2,000000002308D0FC

l2308D0AC:
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
	bgeu	a5,a4,000000002308D0F8

l2308D0D8:
	lui	a4,000230C7
	addi	a3,s1,-000003F8
	addi	a4,a4,+0000068C
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023093DF4
	addi	s1,s1,+00000600
	c.j	000000002308CDD2

l2308D0F8:
	jal	ra,00000000230A3948

l2308D0FC:
	c.lw	s0,48(a5)
	lw	a2,s0,+00000080
	c.lw	s0,100(a0)
	c.lw	a5,44(a1)
	jal	ra,00000000230A382C
	c.lw	s0,48(a5)
	c.lw	a5,44(a0)
	jal	ra,0000000023064972
	c.lw	s0,48(a5)
	lui	a4,000230C7
	c.lui	a3,00001000
	sw	zero,a5,+0000002C
	lw	a6,s0,+00000080
	c.lw	s0,100(a5)
	addi	a4,a4,+000006B8
	addi	a3,a3,-000003EB
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,0000000023093F06
	c.j	000000002308CE0A

l2308D13A:
	c.lw	s0,112(a4)
	lw	a5,s0,+00000080
	bgeu	a4,a5,000000002308CE0A

l2308D144:
	lui	a4,000230C7
	addi	a4,a4,+000006F8
	addi	a3,s3,-00000397
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023093DF4
	addi	s1,s1,-00000080
	c.j	000000002308CC84

l2308D164:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,+00000724
	addi	a3,a3,-0000041B
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023093DF4
	addi	s1,s1,+00000700
	c.j	000000002308CDD2

;; mbedtls_ssl_handle_message_type: 2308D186
;;   Called from:
;;     2308E354 (in mbedtls_ssl_read_record)
mbedtls_ssl_handle_message_type proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.lw	a0,108(a4)
	c.li	a5,00000016
	c.mv	s0,a0
	beq	a4,a5,000000002308D1A6

l2308D19A:
	c.lw	s0,108(a4)
	c.li	a5,00000015
	beq	a4,a5,000000002308D1B8

l2308D1A2:
	c.li	a0,00000000
	c.j	000000002308D1AC

l2308D1A6:
	jal	ra,000000002308CC36
	c.beqz	a0,000000002308D19A

l2308D1AC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2308D1B8:
	c.lw	s0,100(a5)
	lui	a4,000230C7
	c.lui	s2,00001000
	lbu	a6,a5,+00000001
	lbu	a5,a5,+00000000
	lui	s1,000230C8
	addi	a4,a4,+00000128
	addi	a3,s2,-0000006D
	addi	a2,s1,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lw	s0,100(a5)
	c.li	a3,00000002
	lbu	a4,a5,+00000000
	bne	a4,a3,000000002308D210

l2308D1EC:
	lbu	a5,a5,+00000001
	lui	a4,000230C7
	c.mv	a0,s0
	addi	a4,a4,+0000014C
	addi	a3,s2,-00000065
	addi	a2,s1,+00000254
	c.li	a1,00000001
	jal	ra,0000000023093DF4
	c.lui	a0,FFFF9000
	addi	a0,a0,-00000780
	c.j	000000002308D1AC

l2308D210:
	c.li	a3,00000001
	bne	a4,a3,000000002308D25E

l2308D216:
	lbu	a5,a5,+00000001
	c.bnez	a5,000000002308D23C

l2308D21C:
	lui	a4,000230C7
	c.mv	a0,s0
	addi	a4,a4,+00000170
	addi	a3,s2,-0000005E
	addi	a2,s1,+00000254
	c.li	a1,00000002
	jal	ra,0000000023093DF4
	c.lui	a0,FFFF8000
	addi	a0,a0,+00000780
	c.j	000000002308D1AC

l2308D23C:
	addi	a4,zero,+00000064
	bne	a5,a4,000000002308D25E

l2308D244:
	lui	a4,000230C7
	addi	a4,a4,+0000018C
	addi	a3,s2,-00000056
	addi	a2,s1,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.j	000000002308D1A2

l2308D25E:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000680
	c.j	000000002308D1AC

;; mbedtls_ssl_send_alert_message: 2308D266
;;   Called from:
;;     2308D316 (in mbedtls_ssl_send_fatal_handshake_failure)
;;     2308DA4E (in mbedtls_ssl_read_record_layer)
;;     2309B71E (in mbedtls_ssl_handshake_server_step)
;;     2309BBE8 (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_send_alert_message proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.beqz	a0,000000002308D308

l2308D276:
	c.lw	a0,0(a5)
	c.mv	s0,a0
	c.beqz	a5,000000002308D308

l2308D27C:
	lui	a4,000230C8
	c.lui	s3,00001000
	lui	s2,000230C8
	c.mv	s1,a2
	c.mv	s4,a1
	addi	a4,a4,-000003A8
	addi	a3,s3,-00000026
	addi	a2,s2,+00000254
	c.li	a1,00000002
	jal	ra,0000000023093DF4
	c.li	a5,00000015
	sw	a5,s0,+000000A4
	c.li	a5,00000002
	sw	a5,s0,+000000A8
	lw	a5,s0,+000000A0
	c.mv	a0,s0
	sb	s4,a5,+00000000
	lw	a5,s0,+000000A0
	sb	s1,a5,+00000001
	jal	ra,000000002308C080
	c.mv	s1,a0
	c.beqz	a0,000000002308D2EE

l2308D2C2:
	lui	a4,000230C8
	c.mv	a5,a0
	addi	a4,a4,-000003DC
	addi	a3,s3,-0000001D
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093E84

l2308D2DC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2308D2EE:
	lui	a4,000230C8
	addi	a4,a4,-00000390
	addi	a3,s3,-00000019
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.j	000000002308D2DC

l2308D308:
	c.lui	s1,FFFF9000
	addi	s1,s1,-00000100
	c.j	000000002308D2DC

;; mbedtls_ssl_send_fatal_handshake_failure: 2308D310
;;   Called from:
;;     2309BA02 (in mbedtls_ssl_handshake_server_step)
;;     2309BC38 (in mbedtls_ssl_handshake_server_step)
;;     2309C146 (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_send_fatal_handshake_failure proc
	addi	a2,zero,+00000028
	c.li	a1,00000002
	jal	zero,000000002308D266

;; mbedtls_ssl_write_certificate: 2308D31A
mbedtls_ssl_write_certificate proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.lw	a0,64(a5)
	lui	s1,000230C8
	lui	a4,000230C8
	lw	s2,a5,+00000000
	c.lui	s3,00001000
	addi	a4,a4,-00000284
	addi	a3,s3,+00000025
	addi	a2,s1,+00000254
	c.li	a1,00000002
	c.mv	s0,a0
	jal	ra,0000000023093DF4
	lbu	a5,s2,+0000000A
	c.li	a4,00000006
	c.mv	s2,s1
	c.addi	a5,FFFFFFFB
	andi	a5,a5,+000000FF
	bltu	a4,a5,000000002308D398

l2308D35C:
	addi	a4,zero,+0000004B
	srl	a5,a4,a5
	c.andi	a5,00000001
	c.beqz	a5,000000002308D398

l2308D368:
	lui	a4,000230C8
	addi	a2,s1,+00000254
	addi	a4,a4,-0000026C
	addi	a3,s3,+0000002C
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lw	s0,4(a5)
	c.li	s1,00000000
	c.addi	a5,00000001
	c.sw	s0,4(a5)

l2308D388:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2308D398:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000001
	c.bnez	a5,000000002308D3CA

l2308D3A2:
	lw	s1,s0,+000000B0
	c.bnez	s1,000000002308D3F4

l2308D3A8:
	lui	a4,000230C8
	c.lui	a3,00001000
	addi	a4,a4,-0000026C
	addi	a3,a3,+00000036
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lw	s0,4(a5)
	c.addi	a5,00000001
	c.sw	s0,4(a5)
	c.j	000000002308D388

l2308D3CA:
	c.mv	a0,s0
	jal	ra,000000002308AA44
	c.bnez	a0,000000002308D3F4

l2308D3D2:
	lui	a4,000230C8
	c.lui	a3,00001000
	addi	a4,a4,-00000250
	addi	a3,a3,+00000053
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023093DF4
	addi	s1,s1,-00000580
	c.j	000000002308D388

l2308D3F4:
	c.mv	a0,s0
	jal	ra,000000002308AA44
	lui	a4,000230C8
	c.lui	a3,00001000
	c.mv	a5,a0
	addi	a4,a4,-00000234
	addi	a3,a3,+00000059
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,00000000230941AC
	c.mv	a0,s0
	jal	ra,000000002308AA44
	c.lui	s3,00004000
	c.mv	s1,a0
	c.li	a4,00000007
	c.addi	s3,FFFFFFFD

l2308D424:
	c.bnez	s1,000000002308D48C

l2308D426:
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
	jal	ra,000000002308C080
	c.mv	s1,a0
	c.beqz	a0,000000002308D500

l2308D46E:
	lui	a4,000230C8
	c.lui	a3,00001000
	c.mv	a5,a0
	addi	a4,a4,-000003DC
	addi	a3,a3,+00000089
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093E84
	c.j	000000002308D388

l2308D48C:
	c.lw	s1,4(a2)
	addi	a0,a4,+00000003
	sub	a3,s3,a4
	add	a5,a0,a2
	bgeu	a3,a2,000000002308D4C2

l2308D49E:
	lui	a4,000230C8
	c.lui	a3,00001000
	c.lui	a6,00004000
	addi	a4,a4,-00000224
	addi	a3,a3,+0000006D
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023093DF4
	addi	s1,s1,-00000500
	c.j	000000002308D388

l2308D4C2:
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
	jal	ra,00000000230A382C
	c.lwsp	a2,000000E4
	lw	s1,s1,+00000130
	c.mv	a4,a5
	c.j	000000002308D424

l2308D500:
	lui	a4,000230C8
	c.lui	a3,00001000
	addi	a4,a4,-00000204
	addi	a3,a3,+0000008D
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.j	000000002308D388

;; mbedtls_ssl_write_change_cipher_spec: 2308D51C
mbedtls_ssl_write_change_cipher_spec proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	a4,000230C8
	c.lui	s3,00001000
	lui	s2,000230C8
	addi	a4,a4,-000001EC
	addi	a3,s3,+000001B4
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a0
	jal	ra,0000000023093DF4
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
	jal	ra,000000002308C080
	c.mv	s1,a0
	c.beqz	a0,000000002308D594

l2308D56A:
	lui	a4,000230C8
	c.mv	a5,a0
	addi	a4,a4,-000003DC
	addi	a3,s3,+000001BE
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093E84

l2308D584:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2308D594:
	lui	a4,000230C8
	addi	a4,a4,-000001D0
	addi	a3,s3,+000001C2
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.j	000000002308D584

;; mbedtls_ssl_write_finished: 2308D5AE
mbedtls_ssl_write_finished proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	a4,000230C8
	c.lui	a3,00001000
	lui	s1,000230C8
	addi	a4,a4,-000001B4
	c.li	a1,00000002
	addi	a3,a3,+00000408
	addi	a2,s1,+00000254
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.swsp	s2,00000000
	jal	ra,0000000023093DF4
	c.lw	s0,12(a4)
	c.li	a5,00000001
	lw	a1,s0,+0000009C
	bge	a5,a4,000000002308D5EC

l2308D5E2:
	c.lw	s0,64(a4)
	c.lw	a4,12(a5)
	c.lw	a4,16(a4)
	c.sub	a5,a4
	c.add	a1,a5

l2308D5EC:
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
	c.beqz	a4,000000002308D60C

l2308D60A:
	c.li	a5,0000000C

l2308D60C:
	c.addi	a5,00000004
	sw	a5,s0,+000000A8
	c.li	a5,00000016
	sw	a5,s0,+000000A4
	lw	a5,s0,+000000A0
	c.li	a4,00000014
	sb	a4,a5,+00000000
	c.lw	s0,48(a5)
	lw	a5,a5,+00000148
	c.beqz	a5,000000002308D6E2

l2308D62A:
	c.lw	s0,0(a4)
	lhu	a5,a4,+00000074
	c.andi	a5,00000001
	c.beqz	a5,000000002308D63A

l2308D634:
	c.li	a5,0000000A

l2308D636:
	c.sw	s0,4(a5)
	c.j	000000002308D646

l2308D63A:
	c.li	a5,0000000F
	c.sw	s0,4(a5)
	lhu	a5,a4,+00000074
	c.andi	a5,00000001
	c.bnez	a5,000000002308D634

l2308D646:
	lui	a4,000230C8
	c.lui	s2,00001000
	addi	a4,a4,-000001A0
	addi	a3,s2,+0000043E
	addi	a2,s1,+00000254
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002308D6E8

l2308D66A:
	c.lw	s0,48(a5)
	c.lw	s0,56(a4)
	c.li	a2,00000008
	c.sw	a5,68(a4)
	c.lw	s0,48(a0)
	lw	a1,s0,+00000090
	addi	a0,a0,+00000048
	jal	ra,00000000230A382C
	lw	a0,s0,+00000090
	c.li	a2,00000006
	c.li	a1,00000000
	c.addi	a0,00000002
	jal	ra,00000000230A3A68
	lw	a4,s0,+00000090
	lbu	a5,a4,+00000001
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,a4,+00000001
	c.bnez	a5,000000002308D6F4

l2308D6A2:
	lw	a4,s0,+00000090
	lbu	a5,a4,+00000000
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,a4,+00000000
	c.bnez	a5,000000002308D6F4

l2308D6B6:
	lui	a4,000230C8
	addi	a3,s2,+00000454
	addi	a4,a4,-0000016C
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s2,FFFF9000
	jal	ra,0000000023093DF4
	addi	s2,s2,+00000480

l2308D6D4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s2
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2308D6E2:
	c.lw	s0,4(a5)
	c.addi	a5,00000001
	c.j	000000002308D636

l2308D6E8:
	lw	a0,s0,+00000090
	c.li	a2,00000008
	c.li	a1,00000000
	jal	ra,00000000230A3A68

l2308D6F4:
	c.lw	s0,64(a5)
	c.sw	s0,56(a5)
	c.lw	s0,44(a5)
	c.sw	s0,36(a5)
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002308D70C

l2308D706:
	c.mv	a0,s0
	jal	ra,000000002308B60E

l2308D70C:
	c.mv	a0,s0
	jal	ra,000000002308C080
	c.mv	s2,a0
	c.beqz	a0,000000002308D734

l2308D716:
	lui	a4,000230C8
	c.lui	a3,00001000
	c.mv	a5,a0
	addi	a4,a4,-000003DC
	addi	a3,a3,+00000471
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093E84
	c.j	000000002308D6D4

l2308D734:
	lui	a4,000230C8
	c.lui	a3,00001000
	addi	a4,a4,-00000154
	addi	a3,a3,+00000475
	addi	a2,s1,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.j	000000002308D6D4

;; mbedtls_ssl_write: 2308D750
;;   Called from:
;;     23086E00 (in altcp_mbedtls_write)
mbedtls_ssl_write proc
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	lui	a4,000230C8
	c.lui	s5,00002000
	lui	s4,000230C8
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s6,00000000
	c.mv	s1,a0
	c.mv	s6,a1
	c.mv	s2,a2
	addi	a4,a4,-00000338
	addi	a3,s5,-000004C3
	addi	a2,s4,+00000254
	c.li	a1,00000002
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	jal	ra,0000000023093DF4
	beq	s1,zero,000000002308D8A8

l2308D788:
	c.lw	s1,0(a5)
	beq	a5,zero,000000002308D8A8

l2308D78E:
	c.lw	s1,4(a4)
	c.li	a5,00000010
	c.mv	s3,s4
	beq	a4,a5,000000002308D7D2

l2308D798:
	c.mv	a0,s1
	jal	ra,000000002308B8DC
	c.mv	s0,a0
	c.beqz	a0,000000002308D7D2

l2308D7A2:
	lui	a4,000230C8
	c.mv	a5,a0
	addi	a4,a4,-0000032C
	addi	a3,s5,-000004B2
	addi	a2,s4,+00000254
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,0000000023093E84

l2308D7BC:
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

l2308D7D2:
	c.mv	a0,s1
	jal	ra,000000002308B868
	bgeu	a0,s2,000000002308D828

l2308D7DC:
	c.lw	s1,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002308D826

l2308D7E6:
	lui	a4,000230C8
	c.lui	a3,00002000
	c.mv	a6,a0
	c.mv	a5,s2
	addi	a4,a4,-00000314
	addi	a3,a3,-00000519

l2308D7F8:
	addi	a2,s3,+00000254
	c.li	a1,00000001
	c.mv	a0,s1
	c.lui	s0,FFFF9000
	jal	ra,0000000023093DF4
	addi	s0,s0,-00000100

l2308D80A:
	lui	a4,000230C8
	c.lui	a3,00002000
	addi	a4,a4,-00000290
	addi	a3,a3,-000004A7
	addi	a2,s3,+00000254
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,0000000023093DF4
	c.j	000000002308D7BC

l2308D826:
	c.mv	s2,a0

l2308D828:
	lw	a5,s1,+000000AC
	c.beqz	a5,000000002308D856

l2308D82E:
	c.mv	a0,s1
	jal	ra,000000002308B43A
	c.mv	s0,a0
	c.beqz	a0,000000002308D8A4

l2308D838:
	lui	a4,000230C8
	c.lui	a3,00002000
	c.mv	a5,a0
	addi	a4,a4,+000000B4
	addi	a3,a3,-0000050C

l2308D848:
	addi	a2,s3,+00000254
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,0000000023093E84
	c.j	000000002308D80A

l2308D856:
	c.lui	a6,00004000
	addi	a6,a6,+00000130
	bgeu	a6,s2,000000002308D872

l2308D860:
	lui	a4,000230C8
	c.lui	a3,00002000
	c.mv	a5,s2
	addi	a4,a4,-000002CC
	addi	a3,a3,-00000502
	c.j	000000002308D7F8

l2308D872:
	lw	a0,s1,+000000A0
	c.li	a5,00000017
	sw	a5,s1,+000000A4
	c.mv	a2,s2
	c.mv	a1,s6
	sw	s2,s1,+000000A8
	jal	ra,00000000230A382C
	c.mv	a0,s1
	jal	ra,000000002308C080
	c.mv	s0,a0
	c.beqz	a0,000000002308D8A4

l2308D892:
	lui	a4,000230C8
	c.lui	a3,00002000
	c.mv	a5,a0
	addi	a4,a4,-000003DC
	addi	a3,a3,-000004F8
	c.j	000000002308D848

l2308D8A4:
	c.mv	s0,s2
	c.j	000000002308D80A

l2308D8A8:
	c.lui	s0,FFFF9000
	addi	s0,s0,-00000100
	c.j	000000002308D7BC

;; mbedtls_ssl_read_version: 2308D8B0
;;   Called from:
;;     2308D9FE (in mbedtls_ssl_read_record_layer)
;;     2309B438 (in mbedtls_ssl_handshake_server_step)
;;     2309B6C6 (in mbedtls_ssl_handshake_server_step)
mbedtls_ssl_read_version proc
	c.li	a5,00000001
	lbu	a4,a3,+00000000
	bne	a2,a5,000000002308D8D8

l2308D8BA:
	addi	a5,zero,+00000101
	c.sub	a5,a4
	c.sw	a0,0(a5)
	lbu	a4,a3,+00000001
	addi	a5,zero,+00000100
	c.sub	a5,a4
	beq	a5,a2,000000002308D8D4

l2308D8D0:
	c.sw	a1,0(a5)
	c.jr	ra

l2308D8D4:
	c.li	a5,00000002
	c.j	000000002308D8D0

l2308D8D8:
	c.sw	a0,0(a4)
	lbu	a5,a3,+00000001
	c.j	000000002308D8D0

;; mbedtls_ssl_read_record_layer: 2308D8E0
;;   Called from:
;;     2308E31E (in mbedtls_ssl_read_record)
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
	lui	s1,000230C8
	c.beqz	a1,000000002308D95C

l2308D908:
	c.lw	a0,112(a2)
	bgeu	a1,a2,000000002308D95C

l2308D90E:
	c.sub	a2,a1
	c.sw	a0,112(a2)
	c.lw	a0,100(a0)
	c.li	s6,00000000
	c.add	a1,a0
	jal	ra,00000000230A3948
	lw	a6,s0,+00000070
	c.lw	s0,100(a5)
	lui	a4,000230C8
	c.lui	a3,00001000
	addi	a4,a4,-000007EC
	addi	a3,a3,-00000129
	addi	a2,s1,+00000254
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,0000000023093F06

l2308D93C:
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

l2308D95C:
	c.lui	s3,FFFFA000
	c.lui	s4,00004000
	sw	zero,s0,+00000080
	addi	s8,s3,-00000780
	lui	s9,000230C8
	lui	s10,000230C8
	addi	s11,s4,+0000013D

l2308D974:
	c.lw	s0,0(a0)
	jal	ra,000000002308AD0E
	c.mv	a1,a0
	c.mv	a0,s0
	jal	ra,000000002308C8CC
	c.mv	s6,a0
	c.beqz	a0,000000002308D9A4

l2308D986:
	lui	a4,000230C8
	c.lui	a3,00001000
	c.mv	a5,a0
	addi	a4,a4,-000007D0
	addi	a3,a3,-00000119

l2308D996:
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093E84
	c.j	000000002308D93C

l2308D9A4:
	c.lw	s0,0(a0)
	c.lui	s2,00001000
	addi	s5,sp,+0000002C
	jal	ra,000000002308AD0E
	c.lw	s0,88(a5)
	lui	a4,000230C8
	c.mv	a6,a0
	addi	a4,a4,-000007B8
	addi	a3,s2,-0000024F
	addi	a2,s1,+00000254
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,0000000023093F06
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
	jal	ra,000000002308D8B0
	c.lw	s0,112(a5)
	c.lwsp	a6,00000138
	c.lwsp	a2,00000118
	c.swsp	a5,00000000
	c.lw	s0,108(a5)
	lui	a4,000230C8
	addi	a4,a4,-000007A4
	addi	a3,s2,-00000246
	addi	a2,s1,+00000254
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lw	s0,108(a4)
	c.li	a5,00000003
	addi	a3,a4,-00000014
	bgeu	a5,a3,000000002308DA96

l2308DA30:
	lui	a4,000230C8
	addi	a4,a4,-00000768
	addi	a3,s2,-0000023E
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.li	a2,0000000A
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,000000002308D266
	c.mv	s6,a0
	c.bnez	a0,000000002308DA5C

l2308DA56:
	c.lui	t1,FFFF9000
	addi	s6,t1,-00000200

l2308DA5C:
	c.lw	s0,0(a0)
	lhu	a5,a0,+00000074
	c.andi	a5,00000002
	beq	a5,zero,000000002308D93C

l2308DA68:
	beq	s6,s8,000000002308D93C

l2308DA6C:
	addi	a5,s3,-00000700
	bne	s6,a5,000000002308DBFC

l2308DA74:
	jal	ra,000000002308AD0E
	c.lw	s0,112(a5)
	c.lui	a3,00001000
	addi	a4,s10,-00000690
	c.add	a0,a5
	c.sw	s0,124(a0)
	addi	a3,a3,-00000108

l2308DA88:
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.j	000000002308D974

l2308DA96:
	c.lw	s0,8(a3)
	c.lwsp	a2,000001F4
	beq	a3,a5,000000002308DAB8

l2308DA9E:
	lui	a4,000230C8
	addi	a4,a4,-00000754
	addi	a3,s2,-0000022F

l2308DAAA:
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.j	000000002308DA56

l2308DAB8:
	c.lw	s0,0(a0)
	c.lwsp	a6,000001F4
	lbu	a3,a0,+00000071
	bge	a3,a5,000000002308DAD2

l2308DAC4:
	lui	a4,000230C8
	addi	a4,a4,-0000073C
	addi	a3,s2,-00000229
	c.j	000000002308DAAA

l2308DAD2:
	c.lw	s0,100(a5)
	c.lw	s0,80(a3)
	lw	s6,s0,+00000070
	c.sub	a5,a3
	sub	a5,s11,a5
	bgeu	a5,s6,000000002308DAF2

l2308DAE4:
	lui	a4,000230C8
	addi	a4,a4,-00000724
	addi	a3,s2,-00000221
	c.j	000000002308DAAA

l2308DAF2:
	c.lw	s0,52(a5)
	c.bnez	a5,000000002308DB0C

l2308DAF6:
	addi	a5,s6,-00000001
	bltu	a5,s4,000000002308DB3E

l2308DAFE:
	lui	a4,000230C8
	addi	a4,a4,-00000724
	addi	a3,s2,-00000217
	c.j	000000002308DAAA

l2308DB0C:
	c.lw	a5,8(a5)
	bgeu	s6,a5,000000002308DB20

l2308DB12:
	lui	a4,000230C8
	addi	a4,a4,-00000724
	addi	a3,s2,-0000020F
	c.j	000000002308DAAA

l2308DB20:
	c.lw	s0,12(a3)
	bge	zero,a3,000000002308DB3E

l2308DB26:
	addi	a3,s4,+00000100
	c.add	a5,a3
	bgeu	a5,s6,000000002308DB3E

l2308DB30:
	lui	a4,000230C8
	addi	a4,a4,-00000724
	addi	a3,s2,-000001FA
	c.j	000000002308DAAA

l2308DB3E:
	lhu	a5,a0,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002308DBD8

l2308DB46:
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
	bne	a4,a5,000000002308DB96

l2308DB6E:
	c.lw	s0,4(a5)
	c.addi	a5,FFFFFFF6
	c.andi	a5,FFFFFFFD
	c.beqz	a5,000000002308DBB4

l2308DB76:
	lui	a4,000230C8
	c.lui	a3,00001000
	addi	a4,a4,-00000710
	addi	a3,a3,-000001E4

l2308DB84:
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093DF4

l2308DB90:
	addi	s6,s3,-00000700
	c.j	000000002308DA5C

l2308DB96:
	c.li	a5,00000017
	bne	a4,a5,000000002308DBB4

l2308DB9C:
	c.lw	s0,4(a4)
	c.li	a5,00000010
	beq	a4,a5,000000002308DBB4

l2308DBA4:
	lui	a4,000230C8
	c.lui	a3,00001000
	addi	a4,a4,-000006E8
	addi	a3,a3,-000001D6
	c.j	000000002308DB84

l2308DBB4:
	lhu	a5,s0,+00000078
	beq	a6,a5,000000002308DBD8

l2308DBBC:
	lui	a4,000230C8
	c.lui	a3,00001000
	addi	a4,a4,-000006C4
	addi	a3,a3,-000001CD
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.j	000000002308DB90

l2308DBD8:
	jal	ra,000000002308AD0E
	add	a1,a0,s6
	c.mv	a0,s0
	jal	ra,000000002308C8CC
	c.mv	s6,a0
	c.beqz	a0,000000002308DC10

l2308DBEA:
	lui	a4,000230C8
	c.lui	a3,00001000
	c.mv	a5,a0
	addi	a4,a4,-000007D0
	addi	a3,a3,-000000EF
	c.j	000000002308D996

l2308DBFC:
	c.lui	a3,00001000
	sw	zero,s0,+0000007C
	sw	zero,s0,+00000074
	addi	a4,s9,-00000668
	addi	a3,a3,-000000FF
	c.j	000000002308DA88

l2308DC10:
	lw	s7,s0,+00000000
	lw	s2,s0,+00000070
	lhu	a4,s7,+00000074
	c.andi	a4,00000002
	c.beqz	a4,000000002308DC96

l2308DC20:
	c.mv	a0,s7
	jal	ra,000000002308AD0E
	c.add	a0,s2
	c.sw	s0,124(a0)

l2308DC2A:
	c.mv	a0,s7
	jal	ra,000000002308AD0E
	c.lw	s0,88(a5)
	lui	a4,000230C8
	c.lui	a3,00001000
	add	a6,a0,s2
	addi	a4,a4,-00000644
	addi	a3,a3,-0000019D
	addi	a2,s1,+00000254
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,0000000023093F06
	c.lw	s0,52(a5)
	beq	a5,zero,000000002308E274

l2308DC56:
	lui	a4,000230C8
	addi	a4,a4,-00000628
	addi	a3,zero,+00000642
	addi	a2,s1,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lw	s0,32(a5)
	c.beqz	a5,000000002308DC76

l2308DC72:
	c.lw	s0,52(a5)
	c.bnez	a5,000000002308DC9C

l2308DC76:
	lui	a4,000230C7
	addi	a4,a4,-000001E0
	addi	a3,zero,+00000646

l2308DC82:
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lui	t1,FFFF9000
	addi	s6,t1,+00000400
	c.j	000000002308E052

l2308DC96:
	sw	zero,s0,+00000074
	c.j	000000002308DC2A

l2308DC9C:
	lw	a3,a5,+00000090
	c.li	a4,00000000
	c.beqz	a3,000000002308DCA8

l2308DCA4:
	lbu	a4,a3,+00000001

l2308DCA8:
	lw	s2,s0,+00000070
	lw	a6,a5,+00000008
	bgeu	s2,a6,000000002308DCD0

l2308DCB4:
	lui	a4,000230C8
	c.mv	a5,s2
	addi	a4,a4,-00000618
	addi	a3,zero,+0000064F

l2308DCC2:
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.j	000000002308DE20

l2308DCD0:
	addi	a3,a4,-00000006
	andi	a3,a3,+000000FD
	bne	a3,zero,000000002308DFAA

l2308DCDC:
	c.lw	a5,0(a4)
	c.li	a7,00000008
	lbu	a4,a4,+0000001C
	c.andi	a4,00000002
	c.bnez	a4,000000002308DCEA

l2308DCE8:
	c.li	a7,00000010

l2308DCEA:
	c.lw	a5,12(a4)
	c.lw	a5,16(a5)
	sub	a6,a4,a5
	add	a3,a6,a7
	bgeu	s2,a3,000000002308DD16

l2308DCFA:
	lui	a4,000230C8
	c.mv	a5,s2
	addi	a4,a4,-000005F8
	addi	a3,zero,+0000067F

l2308DD08:
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.j	000000002308DE20

l2308DD16:
	c.add	s2,a5
	sub	s2,s2,a4
	c.lw	s0,84(a1)
	sub	s2,s2,a7
	c.li	a2,00000008
	sw	s2,s0,+00000070
	c.addi4spn	a0,00000030
	c.swsp	a7,0000000C
	lw	s7,s0,+00000064
	jal	ra,00000000230A382C
	c.lw	s0,108(a5)
	c.lw	s0,12(a1)
	c.lw	s0,8(a0)
	sb	a5,sp,+00000038
	c.lw	s0,0(a5)
	addi	a3,sp,+00000039
	c.lw	a5,116(a2)
	c.srli	a2,00000001
	c.andi	a2,00000001
	jal	ra,000000002308C054
	c.lw	s0,112(a5)
	c.li	a6,0000000D
	addi	a3,zero,+00000690
	srli	a4,a5,00000008
	sb	a4,sp,+0000003B
	lui	a4,000230C8
	addi	a4,a4,-000000C4
	sb	a5,sp,+0000003C
	addi	a2,s1,+00000254
	c.addi4spn	a5,00000030
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,0000000023093F06
	c.lw	s0,52(a5)
	c.lw	s0,96(a1)
	c.lw	a5,16(a0)
	c.lw	a5,12(a2)
	addi	a5,a5,+00000028
	c.sub	a2,a0
	c.add	a0,a5
	jal	ra,00000000230A382C
	c.lw	s0,52(a5)
	lui	a4,000230C8
	addi	a4,a4,-000000A4
	lw	a6,a5,+0000000C
	addi	a3,zero,+00000697
	addi	a5,a5,+00000028
	addi	a2,s1,+00000254
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,0000000023093F06
	c.lwsp	s8,00000028
	add	t3,s7,s2
	lui	a4,000230C8
	c.mv	a6,a7
	c.mv	a5,t3
	addi	a4,a4,-000005C4
	addi	a3,zero,+00000698
	addi	a2,s1,+00000254
	c.li	a1,00000004
	c.mv	a0,s0
	c.swsp	a7,0000008C
	c.swsp	t3,0000000C
	jal	ra,0000000023093F06
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
	jal	ra,0000000023093B56
	c.mv	s5,a0
	c.beqz	a0,000000002308DE28

l2308DDFC:
	lui	a4,000230C8
	c.mv	a5,a0
	addi	a4,a4,-000005B8
	addi	a3,zero,+000006A5
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093E84
	addi	a5,s3,-00000300
	c.mv	s6,s5
	bne	s5,a5,000000002308E052

l2308DE20:
	c.lui	t1,FFFF9000
	addi	s6,t1,-00000180
	c.j	000000002308E052

l2308DE28:
	c.lwsp	a2,000001F4
	beq	s2,a5,000000002308DE3C

l2308DE2E:
	lui	a4,000230C7
	addi	a4,a4,-000001E0
	addi	a3,zero,+000006B0
	c.j	000000002308DC82

l2308DE3C:
	c.li	s2,00000001
	c.li	s5,00000000
	c.li	s7,00000001

l2308DE42:
	lw	a6,s0,+00000070
	c.lw	s0,100(a5)
	lui	a4,000230C8
	addi	a4,a4,-0000053C
	addi	a3,zero,+00000792
	addi	a2,s1,+00000254
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,0000000023093F06
	bne	s7,zero,000000002308DF78

l2308DE64:
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
	jal	ra,00000000230A382C
	c.lw	s0,12(a5)
	bge	zero,a5,000000002308E1A4

l2308DE94:
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
	jal	ra,000000002309674C
	c.lw	s0,52(a0)
	c.lw	s0,88(a1)
	c.li	a2,00000003
	addi	a0,a0,+00000044
	jal	ra,000000002309674C
	c.lw	s0,52(a0)
	c.lw	s0,92(a1)
	c.li	a2,00000002
	addi	a0,a0,+00000044
	jal	ra,000000002309674C
	c.lw	s0,52(a0)
	c.lw	s0,112(a2)
	c.lw	s0,100(a1)
	addi	a0,a0,+00000044
	c.addi	s5,00000001
	jal	ra,000000002309674C
	c.lw	s0,112(a5)
	c.lw	s0,100(a1)
	c.lw	s0,52(a0)
	c.add	a1,a5
	addi	a0,a0,+00000044
	jal	ra,0000000023096770
	c.li	a5,00000000

l2308DEFC:
	c.lw	s0,52(a0)
	c.lw	s0,100(a1)
	c.swsp	a5,0000000C
	addi	a0,a0,+00000044
	jal	ra,0000000023096814
	c.lwsp	s8,000000E4
	c.addi	a5,00000001
	bltu	a5,s5,000000002308DEFC

l2308DF12:
	c.lw	s0,52(a0)
	addi	a0,a0,+00000044
	jal	ra,00000000230967D4
	c.lw	s0,52(a5)
	lui	a4,000230C8
	addi	a4,a4,-00000520
	lw	a6,a5,+00000014
	addi	a3,zero,+000007DA
	c.addi4spn	a5,00000030
	addi	a2,s1,+00000254
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,0000000023093F06
	c.lw	s0,52(a3)
	c.lw	s0,100(a4)
	c.lw	s0,112(a5)
	lw	a6,a3,+00000014
	addi	a2,s1,+00000254
	c.add	a5,a4
	lui	a4,000230C8
	addi	a4,a4,-000000D4
	c.li	a1,00000004
	c.mv	a0,s0
	addi	a3,zero,+000007DC
	jal	ra,0000000023093F06
	c.lw	s0,52(a5)
	c.lw	s0,100(a1)
	c.lw	s0,112(a0)
	c.lw	a5,20(a2)
	c.li	a4,00000000
	c.li	a5,00000000

l2308DF6C:
	bne	a2,a5,000000002308E186

l2308DF70:
	bne	a4,zero,000000002308DE20

l2308DF74:
	beq	s2,zero,000000002308DE20

l2308DF78:
	c.lw	s0,112(a5)
	bne	a5,zero,000000002308E1B2

l2308DF7E:
	lw	a5,s0,+00000084
	c.li	a4,00000003
	c.addi	a5,00000001
	sw	a5,s0,+00000084
	bge	a4,a5,000000002308E1B6

l2308DF8E:
	lui	a4,000230C8
	c.lui	a3,00001000
	addi	a4,a4,-00000510
	addi	a3,a3,-000007FE
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.j	000000002308DE20

l2308DFAA:
	c.li	a3,00000002
	bne	a4,a3,000000002308E178

l2308DFB0:
	c.swsp	zero,00000018
	lw	a6,a5,+0000000C
	c.lw	s0,12(a3)
	c.li	a2,00000001
	c.mv	a4,a6
	blt	a2,a3,000000002308DFC2

l2308DFC0:
	c.li	a4,00000000

l2308DFC2:
	lw	a7,a5,+00000014
	add	a5,a4,a6
	bltu	s2,a5,000000002308DFD8

l2308DFCE:
	addi	a5,a7,+00000001
	c.add	a5,a4
	bgeu	s2,a5,000000002308DFE8

l2308DFD8:
	lui	a4,000230C8
	c.mv	a5,s2
	addi	a4,a4,-0000059C
	addi	a3,zero,+000006D2
	c.j	000000002308DD08

l2308DFE8:
	and	s5,s2,a6
	beq	s5,zero,000000002308E000

l2308DFF0:
	lui	a4,000230C8
	c.mv	a5,s2
	addi	a4,a4,-0000055C
	addi	a3,zero,+0000070B
	c.j	000000002308DCC2

l2308E000:
	c.li	a4,00000001
	c.lw	s0,100(a5)
	bge	a4,a3,000000002308E01A

l2308E008:
	sub	s2,s2,a6
	sw	s2,s0,+00000070
	c.li	a4,00000000

l2308E012:
	c.lw	s0,52(a3)
	c.lw	a3,12(a2)
	bltu	a4,a2,000000002308E0A2

l2308E01A:
	c.lw	s0,52(a0)
	addi	a6,sp,+00000030
	c.mv	a4,s2
	c.lw	a0,12(a2)
	addi	a1,a0,+00000028
	c.mv	a3,a5
	addi	a0,a0,+00000090
	jal	ra,0000000023093ABE
	c.mv	s7,a0
	c.beqz	a0,000000002308E0B4

l2308E036:
	lui	a4,000230C8
	c.mv	a5,a0
	addi	a4,a4,+00000020
	addi	a3,zero,+00000723
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093E84
	c.mv	s6,s7

l2308E052:
	lui	a4,000230C8
	c.lui	a3,00001000
	c.mv	a5,s6
	addi	a4,a4,-00000480
	addi	a3,a3,-00000187
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093E84

l2308E06E:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	beq	a5,zero,000000002308D93C

l2308E07A:
	c.lui	a5,FFFF9000
	andi	a4,s6,-00000081
	addi	a5,a5,-00000200
	bne	a4,a5,000000002308D93C

l2308E088:
	c.lw	s0,4(a5)
	c.addi	a5,FFFFFFF5
	c.andi	a5,FFFFFFFD
	beq	a5,zero,000000002308D93C

l2308E092:
	lui	a4,000230C8
	c.lui	a3,00001000
	addi	a4,a4,-00000470
	addi	a3,a3,-000000C0
	c.j	000000002308DA88

l2308E0A2:
	c.lw	s0,96(a2)
	c.add	a3,a4
	c.add	a2,a4
	lbu	a2,a2,+00000000
	c.addi	a4,00000001
	sb	a2,a3,+00000028
	c.j	000000002308E012

l2308E0B4:
	c.lwsp	a6,000001F4
	beq	s2,a5,000000002308E0C8

l2308E0BA:
	lui	a4,000230C7
	addi	a4,a4,-000001E0
	addi	a3,zero,+00000729
	c.j	000000002308DC82

l2308E0C8:
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
	bgeu	a2,a4,000000002308E0EC

l2308E0E8:
	c.li	a6,00000000
	c.li	a5,00000000

l2308E0EC:
	c.lw	s0,12(a4)
	bge	zero,a4,000000002308E16A

l2308E0F2:
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

l2308E120:
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
	bne	a0,t4,000000002308E120

l2308E14A:
	sub	s2,a5,s5
	sltiu	s2,s2,+00000001
	and	s2,s2,a4
	addi	s5,zero,+000001FF
	add	s5,s2,s5
	and	s5,s5,a5
	sub	a2,a2,s5
	c.sw	s0,112(a2)
	c.j	000000002308DE42

l2308E16A:
	lui	a4,000230C7
	addi	a4,a4,-000001E0
	addi	a3,zero,+00000783
	c.j	000000002308DC82

l2308E178:
	lui	a4,000230C7
	addi	a4,a4,-000001E0
	addi	a3,zero,+0000078D
	c.j	000000002308DC82

l2308E186:
	add	a3,a0,a5
	addi	a6,sp,+00000030
	c.add	a6,a5
	c.add	a3,a1
	lbu	a3,a3,+00000000
	lbu	a6,a6,+00000000
	c.addi	a5,00000001
	xor	a3,a3,a6
	c.or	a4,a3
	c.j	000000002308DF6C

l2308E1A4:
	lui	a4,000230C7
	addi	a4,a4,-000001E0
	addi	a3,zero,+000007D6
	c.j	000000002308DC82

l2308E1B2:
	sw	zero,s0,+00000084

l2308E1B6:
	c.lw	s0,0(a5)
	c.li	a4,00000008
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002308E222

l2308E1C2:
	c.lui	s2,00001000
	lui	a4,000230C8
	addi	a4,a4,-000004AC
	addi	a3,s2,-000007E3
	addi	a2,s1,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lw	s0,100(a5)
	lw	a6,s0,+00000070
	lui	a4,000230C8
	addi	a4,a4,-0000049C
	addi	a3,s2,-00000182
	addi	a2,s1,+00000254
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,0000000023093F06
	c.lw	s0,112(a5)
	bgeu	s4,a5,000000002308E274

l2308E200:
	lui	a4,000230C8
	addi	a4,a4,-00000724
	addi	a3,s2,-0000017E
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lui	t1,FFFF9000
	addi	s6,t1,-00000200
	c.j	000000002308E06E

l2308E220:
	c.mv	a4,a2

l2308E222:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	bgeu	a5,a4,000000002308E246

l2308E22E:
	c.lw	s0,84(a3)
	addi	a2,a4,-00000001
	c.add	a3,a2
	lbu	a5,a3,+00000000
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	sb	a5,a3,+00000000
	c.beqz	a5,000000002308E220

l2308E246:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	bne	a4,a5,000000002308E1C2

l2308E252:
	lui	a4,000230C8
	c.lui	a3,00001000
	addi	a4,a4,-000004D0
	addi	a3,a3,-000007E8
	addi	a2,s1,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lui	t1,FFFF9000
	addi	s6,t1,+00000480
	c.j	000000002308E052

l2308E274:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	beq	a5,zero,000000002308D93C

l2308E280:
	c.lw	s0,48(a5)
	beq	a5,zero,000000002308D93C

l2308E286:
	c.lw	s0,4(a4)
	c.li	a5,00000010
	bne	a4,a5,000000002308D93C

l2308E28E:
	c.lw	s0,108(a4)
	c.li	a5,00000016
	bne	a4,a5,000000002308E2D8

l2308E296:
	c.lw	s0,100(a5)
	lbu	a4,a5,+00000000
	c.li	a5,00000014
	bne	a4,a5,000000002308E2D8

l2308E2A2:
	lui	a4,000230C8
	c.lui	s2,00001000
	addi	a4,a4,-00000450
	addi	a3,s2,-00000093
	addi	a2,s1,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.mv	a0,s0
	jal	ra,000000002308C786
	c.mv	s6,a0
	c.beqz	a0,000000002308E2E2

l2308E2C6:
	lui	a4,000230C7
	c.mv	a5,a0
	addi	a4,a4,+00000054
	addi	a3,s2,-0000008F
	jal	zero,000000002308D996

l2308E2D8:
	c.mv	a0,s0
	jal	ra,000000002308B9D8
	jal	zero,000000002308D93C

l2308E2E2:
	c.lui	t1,FFFF9000
	addi	s6,t1,+00000700
	jal	zero,000000002308D93C

;; mbedtls_ssl_read_record: 2308E2EC
;;   Called from:
;;     2308E486 (in mbedtls_ssl_parse_certificate)
;;     2308E802 (in mbedtls_ssl_parse_change_cipher_spec)
;;     2308E974 (in mbedtls_ssl_parse_finished)
;;     2308EB78 (in mbedtls_ssl_read)
;;     2308EBB2 (in mbedtls_ssl_read)
mbedtls_ssl_read_record proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	a4,000230C7
	c.lui	a3,00001000
	lui	s2,000230C8
	c.swsp	s3,00000084
	addi	a4,a4,+000007B4
	addi	a3,a3,-00000156
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.lui	s3,FFFFA000
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a0
	addi	s3,s3,-00000680
	jal	ra,0000000023093DF4

l2308E31C:
	c.mv	a0,s1
	jal	ra,000000002308D8E0
	c.mv	s0,a0
	c.beqz	a0,000000002308E352

l2308E326:
	lui	a4,000230C7
	c.lui	a3,00001000
	c.mv	a5,a0
	addi	a4,a4,+000007C4
	addi	a3,a3,-00000150

l2308E336:
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,0000000023093E84

l2308E342:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2308E352:
	c.mv	a0,s1
	jal	ra,000000002308D186
	c.mv	s0,a0
	beq	a0,s3,000000002308E31C

l2308E35E:
	c.beqz	a0,000000002308E372

l2308E360:
	lui	a4,000230C7
	c.lui	a3,00001000
	c.mv	a5,a0
	addi	a4,a4,+000007E4
	addi	a3,a3,-00000146
	c.j	000000002308E336

l2308E372:
	c.lw	s1,108(a4)
	c.li	a5,00000016
	bne	a4,a5,000000002308E380

l2308E37A:
	c.mv	a0,s1
	jal	ra,000000002308B66E

l2308E380:
	lui	a4,000230C8
	c.lui	a3,00001000
	addi	a4,a4,-000007FC
	addi	a3,a3,-0000013D
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,0000000023093DF4
	c.j	000000002308E342

;; mbedtls_ssl_parse_certificate: 2308E39C
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
	lui	s3,000230C8
	lui	a4,000230C7
	lw	s5,a5,+00000000
	c.lw	a0,0(a5)
	c.lui	s4,00001000
	addi	a4,a4,+0000022C
	addi	a3,s4,+00000099
	addi	a2,s3,+00000254
	c.li	a1,00000002
	c.lw	a5,116(s1)
	c.mv	s0,a0
	jal	ra,0000000023093DF4
	lbu	a3,s5,+0000000A
	c.srli	s1,00000002
	c.andi	s1,00000003
	addi	a5,a3,-00000005
	andi	a4,a5,+000000FF
	c.li	a5,00000006
	c.mv	s2,s3
	bltu	a5,a4,000000002308E434

l2308E3F0:
	addi	a5,zero,+0000004B
	srl	a5,a5,a4
	c.andi	a5,00000001
	c.beqz	a5,000000002308E434

l2308E3FC:
	lui	a4,000230C7
	addi	a4,a4,+00000244
	addi	a3,s4,+000000A0
	addi	a2,s3,+00000254

l2308E40C:
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lw	s0,4(a5)
	c.li	s1,00000000
	c.addi	a5,00000001
	c.sw	s0,4(a5)

l2308E41C:
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

l2308E434:
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000001
	c.beqz	a5,000000002308E458

l2308E43E:
	c.li	a4,00000007
	bne	a3,a4,000000002308E458

l2308E444:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,+00000244
	addi	a3,a3,+000000A9

l2308E452:
	addi	a2,s2,+00000254
	c.j	000000002308E40C

l2308E458:
	c.lw	s0,48(a4)
	lw	s4,a4,+0000000C
	c.li	a4,00000003
	bne	s4,a4,000000002308E466

l2308E464:
	c.mv	s4,s1

l2308E466:
	c.beqz	a5,000000002308E484

l2308E468:
	bne	s4,zero,000000002308E484

l2308E46C:
	c.lw	s0,44(a5)
	addi	a4,zero,+00000080
	c.lui	a3,00001000
	c.sw	a5,96(a4)
	lui	a4,000230C7
	addi	a4,a4,+00000244
	addi	a3,a3,+000000B7
	c.j	000000002308E452

l2308E484:
	c.mv	a0,s0
	jal	ra,000000002308E2EC
	c.mv	s1,a0
	c.beqz	a0,000000002308E4AC

l2308E48E:
	lui	a4,000230C7
	c.lui	a3,00001000
	c.mv	a5,a0
	addi	a4,a4,+00000260
	addi	a3,a3,+000000BF

l2308E49E:
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093E84
	c.j	000000002308E41C

l2308E4AC:
	c.lw	s0,4(a5)
	c.addi	a5,00000001
	c.sw	s0,4(a5)
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	andi	a4,a5,+00000001
	c.beqz	a4,000000002308E550

l2308E4BE:
	c.lw	s0,12(a4)
	c.beqz	a4,000000002308E550

l2308E4C2:
	c.andi	a5,00000002
	lw	a3,s0,+00000080
	c.li	a4,00000004
	c.beqz	a5,000000002308E4CE

l2308E4CC:
	c.li	a4,0000000C

l2308E4CE:
	addi	a5,a4,+00000003
	bne	a3,a5,000000002308E550

l2308E4D6:
	c.lw	s0,108(a3)
	c.li	a5,00000016
	beq	a3,a5,000000002308E500

l2308E4DE:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,+00000278
	addi	a3,a3,+000000F6
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023093DF4
	addi	s1,s1,-00000700
	c.j	000000002308E41C

l2308E500:
	c.lw	s0,100(a0)
	c.li	a5,0000000B
	lbu	a3,a0,+00000000
	bne	a3,a5,000000002308E558

l2308E50C:
	lui	a1,000230C7
	c.li	a2,00000003
	addi	a1,a1,-00000250
	c.add	a0,a4
	jal	ra,00000000230A37A4
	c.mv	s1,a0
	c.bnez	a0,000000002308E550

l2308E520:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,+00000290
	addi	a3,a3,+000000E7
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lw	s0,44(a5)
	addi	a4,zero,+00000040
	c.sw	a5,96(a4)
	c.li	a5,00000001
	beq	s4,a5,000000002308E41C

l2308E548:
	c.lui	s1,FFFF9000
	addi	s1,s1,-00000480
	c.j	000000002308E41C

l2308E550:
	c.lw	s0,108(a4)
	c.li	a5,00000016
	bne	a4,a5,000000002308E4DE

l2308E558:
	c.lw	s0,100(a4)
	c.li	a5,0000000B
	lbu	a3,a4,+00000000
	bne	a3,a5,000000002308E57E

l2308E564:
	c.lw	s0,0(a5)
	lw	a3,s0,+00000080
	c.li	s3,00000004
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002308E576

l2308E574:
	c.li	s3,0000000C

l2308E576:
	addi	a5,s3,+00000006
	bgeu	a3,a5,000000002308E5A0

l2308E57E:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,+00000278
	addi	a3,a3,+000000FD

l2308E58C:
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF8000
	jal	ra,0000000023093DF4
	addi	s1,s1,+00000600
	c.j	000000002308E41C

l2308E5A0:
	c.add	a4,s3
	lbu	a5,a4,+00000001
	lbu	a2,a4,+00000002
	lbu	a4,a4,+00000000
	c.slli	a5,08
	c.or	a5,a2
	c.bnez	a4,000000002308E5BC

l2308E5B4:
	c.addi	s3,00000003
	c.add	a5,s3
	beq	a3,a5,000000002308E5CC

l2308E5BC:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,+00000278
	addi	a3,a3,+0000010B
	c.j	000000002308E58C

l2308E5CC:
	c.lw	s0,44(a5)
	c.lw	a5,92(a0)
	c.beqz	a0,000000002308E5DE

l2308E5D2:
	jal	ra,000000002308FC44
	c.lw	s0,44(a5)
	c.lw	a5,92(a0)
	jal	ra,0000000023064972

l2308E5DE:
	c.lw	s0,44(s1)
	addi	a1,zero,+00000134
	c.li	a0,00000001
	jal	ra,00000000230904A4
	c.sw	s1,92(a0)
	c.bnez	a0,000000002308E614

l2308E5EE:
	lui	a4,000230C8
	c.lui	a3,00001000
	addi	a5,zero,+00000134
	addi	a4,a4,-00000350
	addi	a3,a3,+0000011A
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF8000
	jal	ra,0000000023093DF4
	addi	s1,s1,+00000100
	c.j	000000002308E41C

l2308E614:
	c.lw	s0,44(a5)
	c.lui	s6,FFFFE000
	c.li	s1,00000000
	c.lw	a5,92(a0)
	addi	s7,zero,+0000007F
	addi	s6,s6,-0000062E
	jal	ra,000000002308FC3A

l2308E628:
	lw	a4,s0,+00000080
	bltu	s3,a4,000000002308E73E

l2308E630:
	c.lw	s0,44(a5)
	lui	a4,000230C7
	c.lui	s3,00001000
	c.lw	a5,92(a5)
	addi	a4,a4,+000002CC
	addi	a3,s3,+0000013F
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,00000000230941AC
	beq	s4,zero,000000002308E722

l2308E652:
	c.lw	s0,48(a5)
	c.lw	s0,0(a3)
	c.lw	a5,20(a1)
	beq	a1,zero,000000002308E7AC

l2308E65C:
	c.lw	a5,24(a2)

l2308E65E:
	c.lw	s0,44(a0)
	lw	a7,a3,+00000038
	lw	a6,a3,+00000034
	addi	a5,a0,+00000060
	lw	a4,s0,+000000B4
	c.lw	a3,72(a3)
	c.lw	a0,92(a0)
	jal	ra,000000002308FA50
	c.mv	s1,a0
	c.beqz	a0,000000002308E698

l2308E67C:
	lui	a4,000230C7
	c.lui	a3,00001000
	c.mv	a5,a0
	addi	a4,a4,+000002F0
	addi	a3,a3,+00000180
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093E84

l2308E698:
	c.lw	s0,44(a5)
	c.li	a1,00000002
	lw	s3,a5,+0000005C
	addi	a0,s3,+000000BC
	jal	ra,0000000023087A5C
	c.beqz	a0,000000002308E6DC

l2308E6AA:
	lw	a5,s3,+000000C0
	c.mv	a0,s0
	lbu	a1,a5,+00000000
	jal	ra,000000002308BF9E
	c.beqz	a0,000000002308E6DC

l2308E6BA:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,+00000304
	addi	a3,a3,+0000018F
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.bnez	s1,000000002308E6DC

l2308E6D6:
	c.lui	s1,FFFF8000
	addi	s1,s1,+00000600

l2308E6DC:
	c.lw	s0,0(a4)
	c.lw	s0,44(a5)
	c.mv	a1,s5
	lhu	a2,a4,+00000074
	c.lw	a5,92(a0)
	addi	a3,a5,+00000060
	xori	a2,a2,-00000001
	c.andi	a2,00000001
	jal	ra,000000002308BFBA
	c.beqz	a0,000000002308E71A

l2308E6F8:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,+00000324
	addi	a3,a3,+0000019B
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.bnez	s1,000000002308E71A

l2308E714:
	c.lui	s1,FFFF8000
	addi	s1,s1,+00000600

l2308E71A:
	c.li	a5,00000001
	bne	s4,a5,000000002308E722

l2308E720:
	c.li	s1,00000000

l2308E722:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,+00000348
	addi	a3,a3,+000001A4
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.j	000000002308E41C

l2308E73E:
	c.lw	s0,100(a1)
	add	a5,a1,s3
	lbu	a3,a5,+00000000
	c.beqz	a3,000000002308E75A

l2308E74A:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,+00000278
	addi	a3,a3,+00000126
	c.j	000000002308E58C

l2308E75A:
	lbu	a2,a5,+00000001
	lbu	a5,a5,+00000002
	c.slli	a2,08
	c.or	a2,a5
	addi	a5,s3,+00000003
	bgeu	s7,a2,000000002308E776

l2308E76E:
	add	s3,a2,a5
	bgeu	a4,s3,000000002308E786

l2308E776:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,+00000278
	addi	a3,a3,+00000130
	c.j	000000002308E58C

l2308E786:
	c.lw	s0,44(a4)
	c.add	a1,a5
	c.lw	a4,92(a0)
	jal	ra,000000002308FD22
	c.mv	s1,a0
	beq	a0,zero,000000002308E628

l2308E796:
	beq	a0,s6,000000002308E628

l2308E79A:
	lui	a4,000230C7
	c.lui	a3,00001000
	c.mv	a5,a0
	addi	a4,a4,+000002B0
	addi	a3,a3,+00000138
	c.j	000000002308E49E

l2308E7AC:
	c.lw	a3,80(a1)
	c.lw	a3,84(a2)
	bne	a1,zero,000000002308E65E

l2308E7B4:
	lui	a4,000230C7
	addi	a4,a4,+000002E0
	addi	a3,s3,+0000016F
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023093DF4
	addi	s1,s1,-00000680
	c.j	000000002308E41C

;; mbedtls_ssl_parse_change_cipher_spec: 2308E7D4
mbedtls_ssl_parse_change_cipher_spec proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	a4,000230C7
	c.lui	s3,00001000
	lui	s2,000230C8
	addi	a4,a4,+00000360
	addi	a3,s3,+000001CB
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.swsp	s4,00000004
	jal	ra,0000000023093DF4
	c.mv	a0,s0
	jal	ra,000000002308E2EC
	c.mv	s1,a0
	c.beqz	a0,000000002308E836

l2308E80A:
	lui	a4,000230C7
	c.mv	a5,a0
	addi	a4,a4,+00000260
	addi	a3,s3,+000001CF
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093E84

l2308E824:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2308E836:
	c.lw	s0,108(a4)
	c.li	a5,00000014
	beq	a4,a5,000000002308E85E

l2308E83E:
	lui	a4,000230C7
	addi	a4,a4,+0000037C
	addi	a3,s3,+000001D5
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023093DF4
	addi	s1,s1,-00000700
	c.j	000000002308E824

l2308E85E:
	c.lw	s0,112(a5)
	c.li	a4,00000001
	c.mv	s4,s2
	bne	a5,a4,000000002308E872

l2308E868:
	c.lw	s0,100(a4)
	lbu	a4,a4,+00000000
	beq	a4,a5,000000002308E894

l2308E872:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,+0000037C
	addi	a3,a3,+000001DB
	addi	a2,s4,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF8000
	jal	ra,0000000023093DF4
	addi	s1,s1,+00000200
	c.j	000000002308E824

l2308E894:
	lui	a4,000230C7
	addi	a4,a4,+0000039C
	addi	a3,s3,+000001E3
	addi	a2,s2,+00000254
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.lw	s0,64(a5)
	c.sw	s0,52(a5)
	c.lw	s0,44(a5)
	c.sw	s0,32(a5)
	c.lw	s0,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002308E8EE

l2308E8BE:
	lhu	a5,s0,+00000078
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+00000078
	c.bnez	a5,000000002308E8F8

l2308E8CE:
	lui	a4,000230C8
	addi	a4,a4,-0000016C
	addi	a3,s3,+000001F1
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023093DF4
	addi	s1,s1,+00000480
	c.j	000000002308E824

l2308E8EE:
	c.lw	s0,84(a0)
	c.li	a2,00000008
	c.li	a1,00000000
	jal	ra,00000000230A3A68

l2308E8F8:
	c.lw	s0,12(a3)
	c.li	a4,00000001
	c.lw	s0,96(a5)
	bge	a4,a3,000000002308E90C

l2308E902:
	c.lw	s0,64(a3)
	c.lw	a3,12(a4)
	c.lw	a3,16(a3)
	c.sub	a4,a3
	c.add	a5,a4

l2308E90C:
	c.sw	s0,100(a5)
	c.lw	s0,4(a5)
	lui	a4,000230C7
	c.lui	a3,00001000
	c.addi	a5,00000001
	c.sw	s0,4(a5)
	addi	a4,a4,+000003D0
	addi	a3,a3,+00000211
	addi	a2,s4,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.j	000000002308E824

;; mbedtls_ssl_parse_finished: 2308E930
mbedtls_ssl_parse_finished proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	lui	a4,000230C7
	c.lui	s4,00001000
	lui	s2,000230C8
	addi	a4,a4,+000003EC
	addi	a3,s4,+00000486
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a0
	c.swsp	s3,0000008C
	jal	ra,0000000023093DF4
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
	jal	ra,000000002308E2EC
	c.mv	s1,a0
	c.beqz	a0,000000002308E9A8

l2308E97C:
	lui	a4,000230C7
	c.mv	a5,a0
	addi	a4,a4,+00000260
	addi	a3,s4,+0000048C
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023093E84

l2308E996:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2308E9A8:
	c.lw	s0,108(a4)
	c.li	a5,00000016
	beq	a4,a5,000000002308E9D0

l2308E9B0:
	lui	a4,000230C7
	addi	a4,a4,+00000400
	addi	a3,s4,+00000492
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF9000
	jal	ra,0000000023093DF4
	addi	s1,s1,-00000700
	c.j	000000002308E996

l2308E9D0:
	lw	a6,s0,+00000064
	c.li	a5,00000014
	c.mv	s3,s2
	lbu	a4,a6,+00000000
	bne	a4,a5,000000002308EA02

l2308E9E0:
	c.lw	s0,0(a3)
	lw	t1,s0,+00000080
	c.li	a0,00000004
	lhu	a4,a3,+00000074
	andi	a5,a4,+00000002
	c.beqz	a5,000000002308E9F4

l2308E9F2:
	c.li	a0,0000000C

l2308E9F4:
	addi	a1,a0,+0000000C
	c.li	a2,00000000
	c.li	a5,00000000
	c.li	a7,0000000C
	beq	t1,a1,000000002308EA24

l2308EA02:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,+00000400
	addi	a3,a3,+000004A1

l2308EA10:
	addi	a2,s3,+00000254
	c.li	a1,00000001
	c.mv	a0,s0
	c.lui	s1,FFFF8000
	jal	ra,0000000023093DF4
	addi	s1,s1,+00000180
	c.j	000000002308E996

l2308EA24:
	add	a1,a0,a5
	addi	t1,sp,+00000004
	c.add	t1,a5
	c.add	a1,a6
	lbu	a1,a1,+00000000
	lbu	t1,t1,+00000000
	c.addi	a5,00000001
	xor	a1,a1,t1
	c.or	a2,a1
	bne	a5,a7,000000002308EA24

l2308EA44:
	c.beqz	a2,000000002308EA56

l2308EA46:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,+00000400
	addi	a3,a3,+000004A8
	c.j	000000002308EA10

l2308EA56:
	c.lw	s0,48(a5)
	lw	a5,a5,+00000148
	c.beqz	a5,000000002308EA9E

l2308EA5E:
	c.andi	a4,00000001
	c.beqz	a4,000000002308EA68

l2308EA62:
	c.li	a5,0000000F

l2308EA64:
	c.sw	s0,4(a5)
	c.j	000000002308EA74

l2308EA68:
	c.li	a5,0000000A
	c.sw	s0,4(a5)
	lhu	a5,a3,+00000074
	c.andi	a5,00000001
	c.bnez	a5,000000002308EA62

l2308EA74:
	lhu	a5,a3,+00000074
	c.andi	a5,00000002
	c.beqz	a5,000000002308EA82

l2308EA7C:
	c.mv	a0,s0
	jal	ra,000000002308B5BA

l2308EA82:
	lui	a4,000230C7
	c.lui	a3,00001000
	addi	a4,a4,+00000418
	addi	a3,a3,+000004C4
	addi	a2,s3,+00000254
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,0000000023093DF4
	c.j	000000002308E996

l2308EA9E:
	c.lw	s0,4(a5)
	c.addi	a5,00000001
	c.j	000000002308EA64

;; mbedtls_ssl_read: 2308EAA4
;;   Called from:
;;     2308704C (in altcp_mbedtls_handle_rx_appldata)
mbedtls_ssl_read proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	beq	a0,zero,000000002308EC7A

l2308EAB6:
	c.lw	a0,0(a5)
	c.mv	s1,a0
	beq	a5,zero,000000002308EC7A

l2308EABE:
	lui	a4,000230C7
	c.lui	a3,00002000
	lui	s2,000230C8
	c.mv	s3,a2
	c.mv	s4,a1
	addi	a4,a4,+0000075C
	addi	a3,a3,-00000620
	addi	a2,s2,+00000254
	c.li	a1,00000002
	jal	ra,0000000023093DF4
	c.lw	s1,0(a5)
	lhu	a5,a5,+00000074
	c.andi	a5,00000002
	c.bnez	a5,000000002308EB22

l2308EAE8:
	c.lw	s1,4(a4)
	c.li	a5,00000010
	beq	a4,a5,000000002308EB56

l2308EAF0:
	c.mv	a0,s1
	jal	ra,000000002308B8DC
	c.lui	a5,FFFF9000
	addi	a5,a5,+00000500
	c.mv	s0,a0
	beq	a0,a5,000000002308EB8E

l2308EB02:
	c.beqz	a0,000000002308EB56

l2308EB04:
	lui	a4,000230C8
	c.lui	a3,00002000
	c.mv	a5,a0
	addi	a4,a4,-0000032C
	addi	a3,a3,-000005FE

l2308EB14:
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,0000000023093E84
	c.j	000000002308EB44

l2308EB22:
	c.mv	a0,s1
	jal	ra,000000002308B43A
	c.mv	s0,a0
	c.bnez	a0,000000002308EB44

l2308EB2C:
	c.lw	s1,48(a5)
	c.beqz	a5,000000002308EAE8

l2308EB30:
	lbu	a4,a5,+00000034
	c.li	a5,00000001
	bne	a4,a5,000000002308EAE8

l2308EB3A:
	c.mv	a0,s1
	jal	ra,000000002308C786
	c.mv	s0,a0
	c.beqz	a0,000000002308EAE8

l2308EB44:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2308EB56:
	c.li	s0,00000000

l2308EB58:
	c.lw	s1,104(a5)
	c.bnez	a5,000000002308EC3C

l2308EB5C:
	c.lw	s1,76(a5)
	c.beqz	a5,000000002308EB74

l2308EB60:
	c.lw	s1,68(a0)
	c.jalr	a5
	c.li	a5,FFFFFFFF
	bne	a0,a5,000000002308EB74

l2308EB6A:
	c.lw	s1,0(a5)
	c.mv	a0,s1
	c.lw	a5,100(a1)
	jal	ra,000000002308AD1E

l2308EB74:
	c.bnez	s0,000000002308EBA4

l2308EB76:
	c.mv	a0,s1
	jal	ra,000000002308E2EC
	c.mv	s0,a0
	c.beqz	a0,000000002308EBA4

l2308EB80:
	c.lui	a5,FFFF9000
	addi	a5,a5,-00000280
	bne	a0,a5,000000002308EB92

l2308EB8A:
	c.li	s0,00000000
	c.j	000000002308EB44

l2308EB8E:
	c.li	s0,00000001
	c.j	000000002308EB58

l2308EB92:
	lui	a4,000230C7
	c.lui	a3,00002000
	c.mv	a5,a0
	addi	a4,a4,+00000260
	addi	a3,a3,-000005E9
	c.j	000000002308EB14

l2308EBA4:
	c.lw	s1,112(a5)
	c.bnez	a5,000000002308EBD6

l2308EBA8:
	c.lw	s1,108(a4)
	c.li	a5,00000017
	bne	a4,a5,000000002308EBD6

l2308EBB0:
	c.mv	a0,s1
	jal	ra,000000002308E2EC
	c.mv	s0,a0
	c.beqz	a0,000000002308EBD6

l2308EBBA:
	c.lui	a5,FFFF9000
	addi	a5,a5,-00000280
	beq	a0,a5,000000002308EB8A

l2308EBC4:
	lui	a4,000230C7
	c.lui	a3,00002000
	c.mv	a5,a0
	addi	a4,a4,+00000260
	addi	a3,a3,-000005D9
	c.j	000000002308EB14

l2308EBD6:
	c.lw	s1,108(a5)
	c.li	a4,00000015
	bne	a5,a4,000000002308EC00

l2308EBDE:
	lui	a4,000230C7
	c.lui	a3,00002000
	addi	a4,a4,+00000764
	addi	a3,a3,-00000560
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s1
	c.lui	s0,FFFF9000
	jal	ra,0000000023093DF4
	addi	s0,s0,+00000700
	c.j	000000002308EB44

l2308EC00:
	c.li	a4,00000017
	beq	a5,a4,000000002308EC28

l2308EC06:
	lui	a4,000230C7
	c.lui	a3,00002000
	addi	a4,a4,+0000078C
	addi	a3,a3,-0000055A
	addi	a2,s2,+00000254
	c.li	a1,00000001
	c.mv	a0,s1
	c.lui	s0,FFFF9000
	jal	ra,0000000023093DF4
	addi	s0,s0,-00000700
	c.j	000000002308EB44

l2308EC28:
	c.lw	s1,100(a5)
	c.lw	s1,4(a4)
	c.sw	s1,104(a5)
	c.li	a5,00000010
	bne	a4,a5,000000002308EC3C

l2308EC34:
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002308AD1E

l2308EC3C:
	c.lw	s1,112(s0)
	bgeu	s3,s0,000000002308EC44

l2308EC42:
	c.mv	s0,s3

l2308EC44:
	c.lw	s1,104(a1)
	c.mv	a2,s0
	c.mv	a0,s4
	jal	ra,00000000230A382C
	c.lw	s1,112(a4)
	c.li	a5,00000000
	c.sub	a4,s0
	c.sw	s1,112(a4)
	c.beqz	a4,000000002308EC5C

l2308EC58:
	c.lw	s1,104(a5)
	c.add	a5,s0

l2308EC5C:
	lui	a4,000230C7
	c.lui	a3,00002000
	c.sw	s1,104(a5)
	addi	a4,a4,+000007AC
	addi	a3,a3,-00000530
	addi	a2,s2,+00000254
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,0000000023093DF4
	c.j	000000002308EB44

l2308EC7A:
	c.lui	s0,FFFF9000
	addi	s0,s0,-00000100
	c.j	000000002308EB44

;; mbedtls_ssl_set_calc_verify_md: 2308EC82
mbedtls_ssl_set_calc_verify_md proc
	c.lw	a0,12(a4)
	c.li	a5,00000003
	bne	a4,a5,000000002308ECA2

l2308EC8A:
	c.li	a5,00000004
	bne	a1,a5,000000002308ECA2

l2308EC90:
	c.lw	a0,48(a4)
	lui	a5,0002308B
	addi	a5,a5,-000003FA
	sw	a5,a4,+000000C8
	c.li	a0,00000000
	c.jr	ra

l2308ECA2:
	c.lui	a0,FFFFA000
	addi	a0,a0,-00000600
	c.jr	ra

;; mbedtls_zeroize: 2308ECAA
;;   Called from:
;;     2308FC86 (in mbedtls_x509_crt_free)
;;     2308FCA2 (in mbedtls_x509_crt_free)
;;     2308FCCE (in mbedtls_x509_crt_free)
;;     2308FCE6 (in mbedtls_x509_crt_free)
;;     2308FCFC (in mbedtls_x509_crt_free)
;;     2308FD12 (in mbedtls_x509_crt_free)
mbedtls_zeroize proc
	c.add	a1,a0

l2308ECAC:
	bne	a0,a1,000000002308ECB2

l2308ECB0:
	c.jr	ra

l2308ECB2:
	sb	zero,a0,+00000000
	c.addi	a0,00000001
	c.j	000000002308ECAC

;; x509_memcasecmp: 2308ECBA
;;   Called from:
;;     2308ED6E (in x509_name_cmp)
;;     2308EE0C (in x509_check_wildcard)
;;     2308FAD4 (in mbedtls_x509_crt_verify_with_profile)
;;     2308FB72 (in mbedtls_x509_crt_verify_with_profile)
x509_memcasecmp proc
	c.li	a4,00000000
	addi	a6,zero,+00000020
	c.li	a7,00000019

l2308ECC2:
	bne	a4,a2,000000002308ECCA

l2308ECC6:
	c.li	a0,00000000
	c.jr	ra

l2308ECCA:
	add	a5,a0,a4
	add	a3,a1,a4
	lbu	a5,a5,+00000000
	lbu	a3,a3,+00000000
	xor	t1,a5,a3
	beq	a5,a3,000000002308ECF6

l2308ECE2:
	bne	t1,a6,000000002308ECFA

l2308ECE6:
	andi	a5,a5,-00000021
	addi	a5,a5,-00000041
	andi	a5,a5,+000000FF
	bltu	a7,a5,000000002308ECFA

l2308ECF6:
	c.addi	a4,00000001
	c.j	000000002308ECC2

l2308ECFA:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; x509_name_cmp: 2308ECFE
;;   Called from:
;;     2308F586 (in x509_crt_check_parent)
;;     2308F81C (in x509_crt_verify_child)
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

l2308ED12:
	c.bnez	s1,000000002308ED1E

l2308ED14:
	sltu	a0,zero,s0
	sub	a0,zero,a0
	c.j	000000002308ED22

l2308ED1E:
	c.bnez	s0,000000002308ED30

l2308ED20:
	c.li	a0,FFFFFFFF

l2308ED22:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2308ED30:
	c.lw	s1,0(a4)
	c.lw	s0,0(a5)
	bne	a4,a5,000000002308ED20

l2308ED38:
	c.lw	s0,4(a5)
	c.lw	s1,4(a2)
	bne	a2,a5,000000002308ED20

l2308ED40:
	c.lw	s0,8(a1)
	c.lw	s1,8(a0)
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002308ED20

l2308ED4A:
	c.lw	s1,12(a4)
	c.lw	s0,12(a5)
	beq	a4,a5,000000002308ED76

l2308ED52:
	c.lw	s1,12(a5)
	bne	a5,s2,000000002308ED9A

l2308ED58:
	c.lw	s0,12(a5)
	beq	a5,s2,000000002308ED62

l2308ED5E:
	bne	a5,s3,000000002308ED20

l2308ED62:
	c.lw	s0,16(a5)
	c.lw	s1,16(a2)
	bne	a2,a5,000000002308ED20

l2308ED6A:
	c.lw	s0,20(a1)
	c.lw	s1,20(a0)
	jal	ra,000000002308ECBA
	c.beqz	a0,000000002308ED88

l2308ED74:
	c.j	000000002308ED20

l2308ED76:
	c.lw	s0,16(a5)
	c.lw	s1,16(a2)
	bne	a2,a5,000000002308ED52

l2308ED7E:
	c.lw	s0,20(a1)
	c.lw	s1,20(a0)
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002308ED52

l2308ED88:
	lbu	a4,s1,+0000001C
	lbu	a5,s0,+0000001C
	bne	a4,a5,000000002308ED20

l2308ED94:
	c.lw	s1,24(s1)
	c.lw	s0,24(s0)
	c.j	000000002308ED12

l2308ED9A:
	beq	a5,s3,000000002308ED58

l2308ED9E:
	c.j	000000002308ED20

;; x509_check_wildcard: 2308EDA0
;;   Called from:
;;     2308FB04 (in mbedtls_x509_crt_verify_with_profile)
;;     2308FB94 (in mbedtls_x509_crt_verify_with_profile)
x509_check_wildcard proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	c.mv	s0,a0
	jal	ra,00000000230A4220
	c.lwsp	a2,00000064
	c.li	a5,00000002
	c.lw	a1,4(a4)
	bgeu	a5,a4,000000002308EE1A

l2308EDB8:
	c.lw	a1,8(a3)
	addi	a2,zero,+0000002A
	c.li	a5,00000000
	lbu	a1,a3,+00000000
	bne	a1,a2,000000002308EDE0

l2308EDC8:
	lbu	a1,a3,+00000001
	addi	a2,zero,+0000002E
	bne	a1,a2,000000002308EDE0

l2308EDD4:
	c.li	a2,00000000
	addi	a5,zero,+0000002E

l2308EDDA:
	bne	a2,a0,000000002308EDEA

l2308EDDE:
	c.li	a5,FFFFFFFF

l2308EDE0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

l2308EDEA:
	add	a1,s0,a2
	lbu	a6,a1,+00000000
	beq	a6,a5,000000002308EDFA

l2308EDF6:
	c.addi	a2,00000001
	c.j	000000002308EDDA

l2308EDFA:
	c.li	a5,FFFFFFFF
	c.beqz	a2,000000002308EDE0

l2308EDFE:
	c.addi	a4,FFFFFFFF
	sub	a2,a0,a2
	bne	a2,a4,000000002308EDE0

l2308EE08:
	addi	a0,a3,+00000001
	jal	ra,000000002308ECBA
	sltu	a0,zero,a0
	sub	a5,zero,a0
	c.j	000000002308EDE0

l2308EE1A:
	c.li	a5,00000000
	c.j	000000002308EDE0

;; x509_profile_check_key: 2308EE1E
;;   Called from:
;;     2308F74E (in x509_crt_verify_top.isra.7)
;;     2308F8E2 (in x509_crt_verify_child)
;;     2308FB36 (in mbedtls_x509_crt_verify_with_profile)
x509_profile_check_key proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,00000001
	c.mv	s0,a0
	beq	a1,a5,000000002308EE32

l2308EE2C:
	c.li	a4,00000006
	bne	a1,a4,000000002308EE4C

l2308EE32:
	c.mv	a0,a2
	jal	ra,0000000023087B82
	c.lw	s0,12(a5)
	sltu	a5,a0,a5

l2308EE3E:
	sub	a4,zero,a5

l2308EE42:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,a4
	c.addi	sp,00000010
	c.jr	ra

l2308EE4C:
	c.addi	a1,FFFFFFFE
	andi	a1,a1,+000000FF
	c.li	a0,00000002
	c.li	a4,FFFFFFFF
	bltu	a0,a1,000000002308EE42

l2308EE5A:
	c.lw	a2,4(a4)
	lbu	a0,a4,+00000000
	c.addi	a0,FFFFFFFF
	sll	a5,a5,a0
	c.lw	s0,8(a0)
	c.and	a5,a0
	sltiu	a5,a5,+00000001
	c.j	000000002308EE3E

;; mbedtls_x509_crt_info: 2308EE70
;;   Called from:
;;     2309423C (in mbedtls_debug_print_crt)
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
	c.bnez	a3,000000002308EEB6

l2308EE86:
	lui	a2,000230C8
	addi	a2,a2,+00000270
	jal	ra,00000000230823DA
	bge	a0,zero,000000002308EE9E

l2308EE96:
	c.lui	a0,FFFFD000
	addi	a0,a0,+00000680
	c.j	000000002308EEA2

l2308EE9E:
	bgeu	a0,s4,000000002308EE96

l2308EEA2:
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

l2308EEB6:
	c.lw	a3,24(a4)
	c.mv	s3,a2
	c.mv	s2,a3
	c.mv	a3,a2
	lui	a2,000230C8
	addi	a2,a2,+00000290
	c.mv	s1,a0
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308EED0:
	bgeu	a0,s4,000000002308EE96

l2308EED4:
	sub	s0,s4,a0
	c.add	s1,a0
	lui	a2,000230C8
	c.mv	a3,s3
	addi	a2,a2,+000002AC
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308EEF0:
	bgeu	a0,s0,000000002308EE96

l2308EEF4:
	c.sub	s0,a0
	c.add	s1,a0
	addi	a2,s2,+0000001C
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002309D2D8
	blt	a0,zero,000000002308EE96

l2308EF08:
	bgeu	a0,s0,000000002308EE96

l2308EF0C:
	c.sub	s0,a0
	c.add	s1,a0
	lui	a2,000230C8
	c.mv	a3,s3
	addi	a2,a2,+000002C4
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308EF26:
	bgeu	a0,s0,000000002308EE96

l2308EF2A:
	c.sub	s0,a0
	c.add	s1,a0
	addi	a2,s2,+0000004C
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002309D168
	blt	a0,zero,000000002308EE96

l2308EF3E:
	bgeu	a0,s0,000000002308EE96

l2308EF42:
	c.sub	s0,a0
	c.add	s1,a0
	lui	a2,000230C8
	c.mv	a3,s3
	addi	a2,a2,+000002E0
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308EF5C:
	bgeu	a0,s0,000000002308EE96

l2308EF60:
	c.sub	s0,a0
	c.add	s1,a0
	addi	a2,s2,+0000006C
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002309D168
	blt	a0,zero,000000002308EE96

l2308EF74:
	bgeu	a0,s0,000000002308EE96

l2308EF78:
	lw	a5,s2,+000000A0
	c.sub	s0,a0
	c.add	s1,a0
	c.swsp	a5,00000080
	lw	a5,s2,+0000009C
	lui	a2,000230C8
	c.mv	a3,s3
	c.swsp	a5,00000000
	lw	a7,s2,+00000098
	lw	a6,s2,+00000094
	lw	a5,s2,+00000090
	lw	a4,s2,+0000008C
	addi	a2,a2,+000002FC
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308EFAE:
	bgeu	a0,s0,000000002308EE96

l2308EFB2:
	lw	a5,s2,+000000B8
	c.sub	s0,a0
	c.add	s1,a0
	c.swsp	a5,00000080
	lw	a5,s2,+000000B4
	lui	a2,000230C8
	c.mv	a3,s3
	c.swsp	a5,00000000
	lw	a7,s2,+000000B0
	lw	a6,s2,+000000AC
	lw	a5,s2,+000000A8
	lw	a4,s2,+000000A4
	addi	a2,a2,+00000334
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308EFE8:
	bgeu	a0,s0,000000002308EE96

l2308EFEC:
	c.sub	s0,a0
	c.add	s1,a0
	lui	a2,000230C8
	c.mv	a3,s3
	addi	a2,a2,+0000036C
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F006:
	bgeu	a0,s0,000000002308EE96

l2308F00A:
	lw	a5,s2,+0000012C
	lbu	a4,s2,+00000128
	lbu	a3,s2,+00000129
	c.sub	s0,a0
	c.add	s1,a0
	addi	a2,s2,+00000028
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002309D3AE
	c.mv	s5,a0
	blt	a0,zero,000000002308EE96

l2308F02C:
	bgeu	a0,s0,000000002308EE96

l2308F030:
	addi	s6,s2,+000000BC
	c.mv	a0,s6
	jal	ra,0000000023087C96
	c.mv	a2,a0
	c.li	a1,00000012
	c.addi4spn	a0,0000002C
	jal	ra,000000002309D402
	bne	a0,zero,000000002308EEA2

l2308F048:
	c.mv	a0,s6
	jal	ra,0000000023087B82
	sub	s0,s0,s5
	c.add	s1,s5
	lui	a2,000230C8
	c.mv	a5,a0
	c.addi4spn	a4,0000002C
	c.mv	a3,s3
	addi	a2,a2,+00000388
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F06E:
	bgeu	a0,s0,000000002308EE96

l2308F072:
	lw	a5,s2,+000000F8
	c.sub	s0,a0
	c.add	s1,a0
	andi	a5,a5,+00000100
	c.beqz	a5,000000002308F0D2

l2308F080:
	lw	a5,s2,+000000FC
	c.bnez	a5,000000002308F11E

l2308F086:
	lui	a4,000230B3
	addi	a4,a4,+00000194

l2308F08E:
	lui	a2,000230C8
	c.mv	a3,s3
	addi	a2,a2,+0000039C
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F0A4:
	bgeu	a0,s0,000000002308EE96

l2308F0A8:
	lw	a3,s2,+00000100
	c.sub	s0,a0
	c.add	s1,a0
	bge	zero,a3,000000002308F0D2

l2308F0B4:
	lui	a2,000230C8
	c.addi	a3,FFFFFFFF
	addi	a2,a2,+000003BC
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F0CA:
	bgeu	a0,s0,000000002308EE96

l2308F0CE:
	c.sub	s0,a0
	c.add	s1,a0

l2308F0D2:
	lw	a5,s2,+000000F8
	andi	a5,a5,+00000020
	c.beqz	a5,000000002308F14C

l2308F0DC:
	lui	a2,000230C8
	c.mv	a3,s3
	addi	a2,a2,+000003D0
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F0F2:
	bgeu	a0,s0,000000002308EE96

l2308F0F6:
	lui	a3,000230C7
	lui	a2,000230BF
	c.sub	s0,a0
	c.add	s1,a0
	addi	a5,s2,+000000E8
	addi	a3,a3,-00000244
	c.li	a1,00000000
	addi	a2,a2,-000007F8

l2308F110:
	c.lw	a5,4(a4)
	c.add	a4,a1
	bltu	a4,s0,000000002308F128

l2308F118:
	sb	zero,s1,+00000000
	c.j	000000002308EE96

l2308F11E:
	lui	a4,000230B3
	addi	a4,a4,+0000018C
	c.j	000000002308F08E

l2308F128:
	c.sub	s0,a4
	c.li	a4,00000000

l2308F12C:
	add	a0,s1,a4
	bne	a4,a1,000000002308F514

l2308F134:
	c.li	a4,00000000

l2308F136:
	c.lw	a5,4(a3)
	add	s1,a0,a4
	bltu	a4,a3,000000002308F524

l2308F140:
	c.lw	a5,12(a5)
	c.li	a1,00000002
	c.mv	a3,a2
	c.bnez	a5,000000002308F110

l2308F148:
	sb	zero,s1,+00000000

l2308F14C:
	lw	a5,s2,+000000F8
	slli	a4,a5,0000000F
	bge	a4,zero,000000002308F2D0

l2308F158:
	lui	a2,000230C8
	c.mv	a3,s3
	addi	a2,a2,+000003EC
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F16E:
	bgeu	a0,s0,000000002308EE96

l2308F172:
	lbu	s5,s2,+00000118
	lui	a5,000230C7
	c.sub	s0,a0
	slli	a4,s5,00000018
	c.srai	a4,00000018
	c.add	s1,a0
	addi	a3,a5,-00000244
	bge	a4,zero,000000002308F1B0

l2308F18C:
	lui	a2,000230C8
	addi	a2,a2,+00000408
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F1A0:
	bgeu	a0,s0,000000002308EE96

l2308F1A4:
	lui	a3,000230BF
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,-000007F8

l2308F1B0:
	andi	a5,s5,+00000040
	c.beqz	a5,000000002308F1DA

l2308F1B6:
	lui	a2,000230C8
	addi	a2,a2,+00000418
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F1CA:
	bgeu	a0,s0,000000002308EE96

l2308F1CE:
	lui	a3,000230BF
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,-000007F8

l2308F1DA:
	andi	a5,s5,+00000020
	c.beqz	a5,000000002308F204

l2308F1E0:
	lui	a2,000230C8
	addi	a2,a2,+00000428
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F1F4:
	bgeu	a0,s0,000000002308EE96

l2308F1F8:
	lui	a3,000230BF
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,-000007F8

l2308F204:
	andi	a5,s5,+00000010
	c.beqz	a5,000000002308F22E

l2308F20A:
	lui	a2,000230C8
	addi	a2,a2,+00000430
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F21E:
	bgeu	a0,s0,000000002308EE96

l2308F222:
	lui	a3,000230BF
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,-000007F8

l2308F22E:
	andi	a5,s5,+00000008
	c.beqz	a5,000000002308F258

l2308F234:
	lui	a2,000230C8
	addi	a2,a2,+00000444
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F248:
	bgeu	a0,s0,000000002308EE96

l2308F24C:
	lui	a3,000230BF
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,-000007F8

l2308F258:
	andi	a5,s5,+00000004
	c.beqz	a5,000000002308F282

l2308F25E:
	lui	a2,000230C8
	addi	a2,a2,+00000450
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F272:
	bgeu	a0,s0,000000002308EE96

l2308F276:
	lui	a3,000230BF
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,-000007F8

l2308F282:
	andi	a5,s5,+00000002
	c.beqz	a5,000000002308F2AC

l2308F288:
	lui	a2,000230C8
	addi	a2,a2,+0000045C
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F29C:
	bgeu	a0,s0,000000002308EE96

l2308F2A0:
	lui	a3,000230BF
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,-000007F8

l2308F2AC:
	andi	s5,s5,+00000001
	beq	s5,zero,000000002308F2D0

l2308F2B4:
	lui	a2,000230C8
	addi	a2,a2,+00000468
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F2C8:
	bgeu	a0,s0,000000002308EE96

l2308F2CC:
	c.sub	s0,a0
	c.add	s1,a0

l2308F2D0:
	lw	a5,s2,+000000F8
	c.andi	a5,00000004
	beq	a5,zero,000000002308F478

l2308F2DA:
	lui	a2,000230C8
	c.mv	a3,s3
	addi	a2,a2,+0000047C
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F2F0:
	bgeu	a0,s0,000000002308EE96

l2308F2F4:
	lw	s5,s2,+00000104
	lui	a5,000230C7
	c.sub	s0,a0
	andi	a4,s5,+00000080
	c.add	s1,a0
	addi	a3,a5,-00000244
	c.beqz	a4,000000002308F32E

l2308F30A:
	lui	a2,000230C8
	addi	a2,a2,+00000498
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F31E:
	bgeu	a0,s0,000000002308EE96

l2308F322:
	lui	a3,000230BF
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,-000007F8

l2308F32E:
	andi	a5,s5,+00000040
	c.beqz	a5,000000002308F358

l2308F334:
	lui	a2,000230C8
	addi	a2,a2,+000004AC
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F348:
	bgeu	a0,s0,000000002308EE96

l2308F34C:
	lui	a3,000230BF
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,-000007F8

l2308F358:
	andi	a5,s5,+00000020
	c.beqz	a5,000000002308F382

l2308F35E:
	lui	a2,000230C8
	addi	a2,a2,+000004C0
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F372:
	bgeu	a0,s0,000000002308EE96

l2308F376:
	lui	a3,000230BF
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,-000007F8

l2308F382:
	andi	a5,s5,+00000010
	c.beqz	a5,000000002308F3AC

l2308F388:
	lui	a2,000230C8
	addi	a2,a2,+000004D4
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F39C:
	bgeu	a0,s0,000000002308EE96

l2308F3A0:
	lui	a3,000230BF
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,-000007F8

l2308F3AC:
	andi	a5,s5,+00000008
	c.beqz	a5,000000002308F3D6

l2308F3B2:
	lui	a2,000230C8
	addi	a2,a2,+000004E8
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F3C6:
	bgeu	a0,s0,000000002308EE96

l2308F3CA:
	lui	a3,000230BF
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,-000007F8

l2308F3D6:
	andi	a5,s5,+00000004
	c.beqz	a5,000000002308F400

l2308F3DC:
	lui	a2,000230C8
	addi	a2,a2,+000004F8
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F3F0:
	bgeu	a0,s0,000000002308EE96

l2308F3F4:
	lui	a3,000230BF
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,-000007F8

l2308F400:
	andi	a5,s5,+00000002
	c.beqz	a5,000000002308F42A

l2308F406:
	lui	a2,000230C8
	addi	a2,a2,+00000508
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F41A:
	bgeu	a0,s0,000000002308EE96

l2308F41E:
	lui	a3,000230BF
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,-000007F8

l2308F42A:
	andi	a5,s5,+00000001
	c.beqz	a5,000000002308F454

l2308F430:
	lui	a2,000230C8
	addi	a2,a2,+00000514
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F444:
	bgeu	a0,s0,000000002308EE96

l2308F448:
	lui	a3,000230BF
	c.sub	s0,a0
	c.add	s1,a0
	addi	a3,a3,-000007F8

l2308F454:
	slli	a5,s5,00000010
	bge	a5,zero,000000002308F478

l2308F45C:
	lui	a2,000230C8
	addi	a2,a2,+00000524
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F470:
	bgeu	a0,s0,000000002308EE96

l2308F474:
	c.sub	s0,a0
	c.add	s1,a0

l2308F478:
	lw	a5,s2,+000000F8
	slli	a4,a5,00000014
	bge	a4,zero,000000002308F4F6

l2308F484:
	lui	a2,000230C8
	c.mv	a3,s3
	addi	a2,a2,+00000534
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F49A:
	bgeu	a0,s0,000000002308EE96

l2308F49E:
	lui	a3,000230C7
	lui	s5,000230BD
	lui	s3,000230BF
	c.sub	s0,a0
	c.add	s1,a0
	addi	s2,s2,+00000108
	addi	a3,a3,-00000244
	addi	s5,s5,+00000284
	lui	s6,000230C0
	addi	s3,s3,-000007F8

l2308F4C2:
	c.addi4spn	a1,00000028
	c.mv	a0,s2
	c.swsp	a3,0000008C
	jal	ra,0000000023096A14
	c.lwsp	t3,000000A4
	c.beqz	a0,000000002308F4D2

l2308F4D0:
	c.swsp	s5,00000014

l2308F4D2:
	c.lwsp	s0,000001D4
	addi	a2,s6,-000006AC
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F4E4:
	bgeu	a0,s0,000000002308EE96

l2308F4E8:
	lw	s2,s2,+0000000C
	c.sub	s0,a0
	c.add	s1,a0
	c.mv	a3,s3
	bne	s2,zero,000000002308F4C2

l2308F4F6:
	lui	a2,000230C7
	addi	a2,a2,-00000700
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230823DA
	blt	a0,zero,000000002308EE96

l2308F50A:
	bgeu	a0,s0,000000002308EE96

l2308F50E:
	c.sub	a0,s0
	c.add	a0,s4
	c.j	000000002308EEA2

l2308F514:
	add	a6,a3,a4
	lbu	a6,a6,+00000000
	c.addi	a4,00000001
	sb	a6,a0,+00000000
	c.j	000000002308F12C

l2308F524:
	c.lw	a5,8(a3)
	c.add	a3,a4
	lbu	a3,a3,+00000000
	c.addi	a4,00000001
	sb	a3,s1,+00000000
	c.j	000000002308F136

;; mbedtls_x509_crt_check_key_usage: 2308F534
;;   Called from:
;;     2308C002 (in mbedtls_ssl_check_cert_usage)
;;     2308F5AE (in x509_crt_check_parent)
mbedtls_x509_crt_check_key_usage proc
	lw	a5,a0,+000000F8
	c.andi	a5,00000004
	c.beqz	a5,000000002308F566

l2308F53C:
	c.lui	a5,FFFF8000
	lw	a4,a0,+00000104
	c.addi	a5,FFFFFFFE
	c.and	a5,a1
	and	a3,a5,a4
	bne	a5,a3,000000002308F560

l2308F54E:
	c.lui	a5,00008000
	c.addi	a5,00000001
	and	a3,a1,a5
	c.or	a1,a4
	c.and	a1,a5
	c.li	a5,00000000
	beq	a3,a1,000000002308F566

l2308F560:
	c.lui	a5,FFFFE000
	addi	a5,a5,-00000800

l2308F566:
	c.mv	a0,a5
	c.jr	ra

;; x509_crt_check_parent: 2308F56A
;;   Called from:
;;     2308F6B0 (in x509_crt_verify_top.isra.7)
;;     2308F948 (in x509_crt_verify_child)
;;     2308F98A (in x509_crt_verify_child)
;;     2308FBA6 (in mbedtls_x509_crt_verify_with_profile)
;;     2308FBBA (in mbedtls_x509_crt_verify_with_profile)
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
	jal	ra,000000002308ECFE
	c.lwsp	s0,000000A4
	c.lwsp	a2,00000084
	c.beqz	a0,000000002308F5A2

l2308F590:
	c.li	s0,FFFFFFFF

l2308F592:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2308F5A2:
	c.bnez	a2,000000002308F5BC

l2308F5A4:
	lw	a5,s1,+000000FC
	c.beqz	a5,000000002308F590

l2308F5AA:
	c.li	a1,00000004
	c.mv	a0,s1
	jal	ra,000000002308F534
	sltu	a0,zero,a0
	sub	s0,zero,a0
	c.j	000000002308F592

l2308F5BC:
	c.mv	s0,a0
	lw	s3,s1,+00000018
	c.bnez	a3,000000002308F5CC

l2308F5C4:
	c.li	a5,00000002
	bge	a5,s3,000000002308F592

l2308F5CA:
	c.j	000000002308F5A4

l2308F5CC:
	lw	a2,s2,+00000004
	c.lw	s1,4(a5)
	bne	a2,a5,000000002308F5C4

l2308F5D6:
	c.lw	s1,8(a1)
	lw	a0,s2,+00000008
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002308F5C4

l2308F5E2:
	c.j	000000002308F592

;; x509_crt_verify_top.isra.7: 2308F5E4
;;   Called from:
;;     2308F97A (in x509_crt_verify_child)
;;     2308FBD8 (in mbedtls_x509_crt_verify_with_profile)
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
	jal	ra,000000002309D432
	c.beqz	a0,000000002308F624

l2308F61C:
	c.lw	s1,0(a5)
	ori	a5,a5,+00000001
	c.sw	s1,0(a5)

l2308F624:
	addi	a0,s0,+0000008C
	jal	ra,000000002309D436
	c.beqz	a0,000000002308F636

l2308F62E:
	c.lw	s1,0(a5)
	ori	a5,a5,+00000200
	c.sw	s1,0(a5)

l2308F636:
	lbu	a5,s0,+00000128
	addi	a4,a5,-00000001
	c.li	a5,00000001
	sll	a5,a5,a4
	lw	a4,s6,+00000000
	c.and	a5,a4
	c.bnez	a5,000000002308F654

l2308F64C:
	c.lw	s1,0(a5)
	c.lui	a4,00004000
	c.or	a5,a4
	c.sw	s1,0(a5)

l2308F654:
	lbu	a5,s0,+00000129
	addi	a4,a5,-00000001
	c.li	a5,00000001
	sll	a5,a5,a4
	lw	a4,s6,+00000004
	c.and	a5,a4
	c.bnez	a5,000000002308F672

l2308F66A:
	c.lw	s1,0(a5)
	c.lui	a4,00008000
	c.or	a5,a4
	c.sw	s1,0(a5)

l2308F672:
	c.lw	s1,0(a5)
	ori	a5,a5,+00000008
	c.sw	s1,0(a5)
	lbu	a0,s0,+00000128
	jal	ra,0000000023096520
	c.mv	s9,a0
	c.beqz	a0,000000002308F6A2

l2308F686:
	c.lw	s0,16(a2)
	c.lw	s0,20(a1)
	c.addi4spn	a3,00000020
	c.li	s3,00000000
	jal	ra,0000000023096648
	sltiu	s10,s4,+00000001
	addi	s11,s4,+00000001

l2308F69A:
	bne	s2,zero,000000002308F6A8

l2308F69E:
	bne	s3,zero,000000002308F73E

l2308F6A2:
	bne	s5,zero,000000002308F7D2

l2308F6A6:
	c.j	000000002308F79C

l2308F6A8:
	c.mv	a3,s10
	c.li	a2,00000001
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002308F56A
	c.bnez	a0,000000002308F72C

l2308F6B6:
	c.lw	s0,68(a3)
	lw	a4,s2,+00000044
	c.mv	a5,s11
	bne	a3,a4,000000002308F6D6

l2308F6C2:
	c.lw	s0,56(a2)
	lw	a1,s2,+00000048
	c.lw	s0,72(a0)
	c.swsp	s11,00000080
	jal	ra,00000000230A37A4
	c.lwsp	tp,000000E4
	c.bnez	a0,000000002308F6D6

l2308F6D4:
	c.mv	a5,s4

l2308F6D6:
	lw	a4,s2,+00000100
	bge	zero,a4,000000002308F6E6

l2308F6DE:
	sub	a5,a5,s8
	blt	a4,a5,000000002308F72C

l2308F6E6:
	lbu	t1,s0,+00000129
	lw	a1,s0,+0000012C
	lbu	a3,s0,+00000128
	c.mv	a0,s9
	c.swsp	t1,00000084
	c.swsp	a1,00000004
	c.swsp	a3,00000080
	jal	ra,0000000023096834
	c.lwsp	a2,000000C0
	lw	a7,s0,+00000120
	lw	a6,s0,+00000124
	c.lwsp	tp,000000A4
	c.lwsp	s0,00000064
	c.mv	a5,a0
	c.addi4spn	a4,00000020
	addi	a2,s2,+000000BC
	c.mv	a0,t1
	jal	ra,0000000023087B94
	c.bnez	a0,000000002308F72C

l2308F71C:
	addi	a0,s2,+000000A4
	jal	ra,000000002309D432
	c.beqz	a0,000000002308F732

l2308F726:
	bne	s3,zero,000000002308F72C

l2308F72A:
	c.mv	s3,s2

l2308F72C:
	lw	s2,s2,+00000130
	c.j	000000002308F69A

l2308F732:
	addi	a0,s2,+0000008C
	jal	ra,000000002309D436
	c.bnez	a0,000000002308F726

l2308F73C:
	c.mv	s3,s2

l2308F73E:
	c.lw	s1,0(a5)
	addi	a2,s3,+000000BC
	c.mv	a0,s6
	c.andi	a5,FFFFFFF7
	c.sw	s1,0(a5)
	lbu	a1,s0,+00000129
	jal	ra,000000002308EE1E
	c.beqz	a0,000000002308F75C

l2308F754:
	c.lw	s1,0(a5)
	c.lui	a4,00010000
	c.or	a5,a4
	c.sw	s1,0(a5)

l2308F75C:
	c.lw	s0,68(a4)
	lw	a5,s3,+00000044
	bne	a4,a5,000000002308F774

l2308F766:
	c.lw	s0,56(a2)
	lw	a1,s3,+00000048
	c.lw	s0,72(a0)
	jal	ra,00000000230A37A4
	c.beqz	a0,000000002308F6A2

l2308F774:
	addi	a0,s3,+000000A4
	jal	ra,000000002309D432
	c.beqz	a0,000000002308F786

l2308F77E:
	c.lwsp	t3,000000E4
	ori	a5,a5,+00000001
	c.swsp	a5,0000008C

l2308F786:
	addi	a0,s3,+0000008C
	jal	ra,000000002309D436
	c.beqz	a0,000000002308F798

l2308F790:
	c.lwsp	t3,000000E4
	ori	a5,a5,+00000200
	c.swsp	a5,0000008C

l2308F798:
	bne	s5,zero,000000002308F7C4

l2308F79C:
	c.lw	s1,0(a5)
	c.lwsp	t3,000000C4
	c.li	a0,00000000
	c.or	a5,a4
	c.sw	s1,0(a5)

l2308F7A6:
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

l2308F7C4:
	c.addi4spn	a3,0000001C
	addi	a2,s4,+00000001
	c.mv	a1,s3
	c.mv	a0,s7
	c.jalr	s5
	c.bnez	a0,000000002308F7A6

l2308F7D2:
	c.mv	a3,s1
	c.mv	a2,s4
	c.mv	a1,s0
	c.mv	a0,s7
	c.jalr	s5
	c.beqz	a0,000000002308F79C

l2308F7DE:
	c.j	000000002308F7A6

;; x509_crt_verify_child: 2308F7E0
;;   Called from:
;;     2308F9AA (in x509_crt_verify_child)
;;     2308FBFA (in mbedtls_x509_crt_verify_with_profile)
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
	c.beqz	a5,000000002308F856

l2308F814:
	addi	a1,a0,+0000006C
	addi	a0,a0,+0000004C
	jal	ra,000000002308ECFE
	c.bnez	a0,000000002308F824

l2308F822:
	c.addi	s4,00000001

l2308F824:
	c.li	a5,00000008
	bne	s2,a5,000000002308F856

l2308F82A:
	c.lw	s0,0(a5)
	c.lui	a0,FFFFE000
	addi	a0,a0,-00000700
	ori	a5,a5,+00000008
	c.sw	s0,0(a5)

l2308F838:
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

l2308F856:
	addi	a0,s1,+000000A4
	jal	ra,000000002309D432
	c.beqz	a0,000000002308F868

l2308F860:
	c.lw	s0,0(a5)
	ori	a5,a5,+00000001
	c.sw	s0,0(a5)

l2308F868:
	addi	a0,s1,+0000008C
	jal	ra,000000002309D436
	c.beqz	a0,000000002308F87A

l2308F872:
	c.lw	s0,0(a5)
	ori	a5,a5,+00000200
	c.sw	s0,0(a5)

l2308F87A:
	lbu	a5,s1,+00000128
	addi	a4,a5,-00000001
	c.li	a5,00000001
	sll	a5,a5,a4
	lw	a4,s6,+00000000
	c.and	a5,a4
	c.bnez	a5,000000002308F898

l2308F890:
	c.lw	s0,0(a5)
	c.lui	a4,00004000
	c.or	a5,a4
	c.sw	s0,0(a5)

l2308F898:
	lbu	a5,s1,+00000129
	addi	a4,a5,-00000001
	c.li	a5,00000001
	sll	a5,a5,a4
	lw	a4,s6,+00000004
	c.and	a5,a4
	c.bnez	a5,000000002308F8B6

l2308F8AE:
	c.lw	s0,0(a5)
	c.lui	a4,00008000
	c.or	a5,a4
	c.sw	s0,0(a5)

l2308F8B6:
	lbu	a0,s1,+00000128
	jal	ra,0000000023096520
	c.mv	s11,a0
	c.bnez	a0,000000002308F8CC

l2308F8C2:
	c.lw	s0,0(a5)
	ori	a5,a5,+00000008
	c.sw	s0,0(a5)
	c.j	000000002308F924

l2308F8CC:
	c.lw	s1,16(a2)
	c.lw	s1,20(a1)
	c.addi4spn	a3,00000030
	addi	s5,s3,+000000BC
	jal	ra,0000000023096648
	lbu	a1,s1,+00000129
	c.mv	a2,s5
	c.mv	a0,s6
	jal	ra,000000002308EE1E
	c.beqz	a0,000000002308F8F0

l2308F8E8:
	c.lw	s0,0(a5)
	c.lui	a4,00010000
	c.or	a5,a4
	c.sw	s0,0(a5)

l2308F8F0:
	lbu	t1,s1,+00000129
	lw	a1,s1,+0000012C
	lbu	a3,s1,+00000128
	c.mv	a0,s11
	c.swsp	t1,0000008C
	c.swsp	a1,0000000C
	c.swsp	a3,00000088
	jal	ra,0000000023096834
	c.lwsp	t3,000000C0
	lw	a7,s1,+00000120
	lw	a6,s1,+00000124
	c.lwsp	s4,000000A4
	c.lwsp	s8,00000064
	c.mv	a5,a0
	c.addi4spn	a4,00000030
	c.mv	a2,s5
	c.mv	a0,t1
	jal	ra,0000000023087B94
	c.bnez	a0,000000002308F8C2

l2308F924:
	c.mv	s5,s9
	sltiu	s11,s2,+00000001

l2308F92A:
	bne	s5,zero,000000002308F940

l2308F92E:
	addi	s11,s2,+00000002
	lw	s5,s3,+00000130
	sltiu	a4,s2,+00000001
	sub	s11,s11,s4
	c.j	000000002308F964

l2308F940:
	c.mv	a3,s11
	c.li	a2,00000000
	c.mv	a1,s5
	c.mv	a0,s3
	jal	ra,000000002308F56A
	c.beqz	a0,000000002308F9CE

l2308F94E:
	lw	s5,s5,+00000130
	c.j	000000002308F92A

l2308F954:
	lw	a5,s5,+00000100
	bge	zero,a5,000000002308F980

l2308F95C:
	bge	a5,s11,000000002308F980

l2308F960:
	lw	s5,s5,+00000130

l2308F964:
	bne	s5,zero,000000002308F954

l2308F968:
	c.mv	a7,s8
	c.mv	a6,s7
	c.addi4spn	a5,0000002C
	c.mv	a4,s4
	addi	a3,s2,+00000001
	c.mv	a2,s6
	c.mv	a1,s9

l2308F978:
	c.mv	a0,s3
	jal	ra,000000002308F5E4
	c.j	000000002308F9AC

l2308F980:
	c.mv	a3,a4
	c.li	a2,00000000
	c.mv	a1,s5
	c.mv	a0,s3
	c.swsp	a4,00000088
	jal	ra,000000002308F56A
	c.lwsp	s4,000000C4
	c.bnez	a0,000000002308F960

l2308F992:
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
	c.jal	000000002308F7E0

l2308F9AC:
	bne	a0,zero,000000002308F838

l2308F9B0:
	bne	s7,zero,000000002308F9C0

l2308F9B4:
	c.lw	s0,0(a5)
	c.lwsp	a2,000001D4
	c.li	a0,00000000
	c.or	a5,a4
	c.sw	s0,0(a5)
	c.j	000000002308F838

l2308F9C0:
	c.mv	a3,s0
	c.mv	a2,s2
	c.mv	a1,s1
	c.mv	a0,s8
	c.jalr	s7
	c.beqz	a0,000000002308F9B4

l2308F9CC:
	c.j	000000002308F838

l2308F9CE:
	c.mv	a7,s8
	c.mv	a6,s7
	c.addi4spn	a5,0000002C
	c.mv	a4,s4
	addi	a3,s2,+00000001
	c.mv	a2,s6
	c.mv	a1,s5
	c.j	000000002308F978

;; mbedtls_x509_crt_check_extended_key_usage: 2308F9E0
;;   Called from:
;;     2308C02C (in mbedtls_ssl_check_cert_usage)
mbedtls_x509_crt_check_extended_key_usage proc
	lw	a5,a0,+000000F8
	slli	a4,a5,00000014
	bge	a4,zero,000000002308FA4C

l2308F9EC:
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
	lui	s3,000230C8

l2308FA08:
	c.lw	s0,4(a5)
	beq	a5,s1,000000002308FA3C

l2308FA0E:
	c.lw	s0,4(a5)
	bne	a5,s4,000000002308FA22

l2308FA14:
	c.lw	s0,8(a1)
	c.li	a2,00000004
	addi	a0,s3,+00000268
	jal	ra,00000000230A37A4
	c.beqz	a0,000000002308FA48

l2308FA22:
	c.lw	s0,12(s0)
	c.bnez	s0,000000002308FA08

l2308FA26:
	c.lui	a0,FFFFE000
	addi	a0,a0,-00000800

l2308FA2C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2308FA3C:
	c.lw	s0,8(a0)
	c.mv	a2,s1
	c.mv	a1,s2
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002308FA0E

l2308FA48:
	c.li	a0,00000000
	c.j	000000002308FA2C

l2308FA4C:
	c.li	a0,00000000
	c.jr	ra

;; mbedtls_x509_crt_verify_with_profile: 2308FA50
;;   Called from:
;;     2308E674 (in mbedtls_ssl_parse_certificate)
mbedtls_x509_crt_verify_with_profile proc
	beq	a3,zero,000000002308FBDE

l2308FA54:
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
	c.beqz	a4,000000002308FB0A

l2308FA86:
	c.mv	a0,a4
	jal	ra,00000000230A4220
	lw	a5,s1,+000000F8
	c.mv	s7,a0
	andi	a5,a5,+00000020
	c.bnez	a5,000000002308FABA

l2308FA98:
	addi	s8,s1,+0000006C
	lui	s9,000230C8
	c.li	s10,00000002
	lui	s11,000230C8

l2308FAA6:
	lw	a4,s8,+00000004
	c.li	a5,00000003
	beq	a4,a5,000000002308FB50

l2308FAB0:
	lw	s8,s8,+00000018
	bne	s8,zero,000000002308FAA6

l2308FAB8:
	c.j	000000002308FAE6

l2308FABA:
	addi	s9,s1,+000000E8
	c.li	s10,00000002
	lui	s11,000230C8

l2308FAC4:
	lw	s8,s9,+00000004
	bne	s8,s7,000000002308FADA

l2308FACC:
	lw	a1,s9,+00000008
	c.mv	a2,s7
	c.mv	a0,s3
	jal	ra,000000002308ECBA
	c.beqz	a0,000000002308FB0A

l2308FADA:
	bltu	s10,s8,000000002308FAF0

l2308FADE:
	lw	s9,s9,+0000000C
	bne	s9,zero,000000002308FAC4

l2308FAE6:
	c.lw	s0,0(a5)
	ori	a5,a5,+00000004
	c.sw	s0,0(a5)
	c.j	000000002308FB0A

l2308FAF0:
	lw	a0,s9,+00000008
	c.li	a2,00000002
	addi	a1,s11,+000005A8
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002308FADE

l2308FB00:
	c.mv	a1,s9
	c.mv	a0,s3
	jal	ra,000000002308EDA0
	c.bnez	a0,000000002308FADE

l2308FB0A:
	addi	a2,s1,+000000BC
	c.mv	a0,a2
	c.swsp	a2,0000008C
	jal	ra,0000000023087CAA
	addi	a4,a0,-00000001
	c.li	a5,00000001
	sll	a5,a5,a4
	lw	a4,s2,+00000004
	c.mv	a1,a0
	c.lwsp	t3,00000084
	c.and	a5,a4
	c.bnez	a5,000000002308FB34

l2308FB2C:
	c.lw	s0,0(a5)
	c.lui	a4,00008000
	c.or	a5,a4
	c.sw	s0,0(a5)

l2308FB34:
	c.mv	a0,s2
	jal	ra,000000002308EE1E
	c.beqz	a0,000000002308FB44

l2308FB3C:
	c.lw	s0,0(a5)
	c.lui	a4,00010000
	c.or	a5,a4
	c.sw	s0,0(a5)

l2308FB44:
	c.mv	s3,s4

l2308FB46:
	bne	s3,zero,000000002308FB9E

l2308FB4A:
	lw	s3,s1,+00000130
	c.j	000000002308FBC4

l2308FB50:
	lw	a1,s8,+00000008
	c.li	a2,00000003
	addi	a0,s9,+000005AC
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002308FAB0

l2308FB60:
	lw	a4,s8,+00000010
	bne	a4,s7,000000002308FB7A

l2308FB68:
	lw	a0,s8,+00000014
	c.mv	a2,s7
	c.mv	a1,s3
	c.swsp	a4,0000008C
	jal	ra,000000002308ECBA
	c.lwsp	t3,000000C4
	c.beqz	a0,000000002308FB0A

l2308FB7A:
	bgeu	s10,a4,000000002308FAB0

l2308FB7E:
	lw	a0,s8,+00000014
	c.li	a2,00000002
	addi	a1,s11,+000005A8
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002308FAB0

l2308FB8E:
	addi	a1,s8,+0000000C
	c.mv	a0,s3
	jal	ra,000000002308EDA0
	bne	a0,zero,000000002308FAB0

l2308FB9C:
	c.j	000000002308FB0A

l2308FB9E:
	c.li	a3,00000001
	c.li	a2,00000000
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,000000002308F56A
	c.beqz	a0,000000002308FC2A

l2308FBAC:
	lw	s3,s3,+00000130
	c.j	000000002308FB46

l2308FBB2:
	c.li	a3,00000001
	c.li	a2,00000000
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,000000002308F56A
	c.beqz	a0,000000002308FBE6

l2308FBC0:
	lw	s3,s3,+00000130

l2308FBC4:
	bne	s3,zero,000000002308FBB2

l2308FBC8:
	c.mv	a7,s6
	c.mv	a6,s5
	c.mv	a5,s0
	c.li	a4,00000000
	c.li	a3,00000000
	c.mv	a2,s2
	c.mv	a1,s4

l2308FBD6:
	c.mv	a0,s1
	jal	ra,000000002308F5E4
	c.j	000000002308FBFE

l2308FBDE:
	c.lui	a0,FFFFE000
	addi	a0,a0,-00000800
	c.jr	ra

l2308FBE6:
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
	jal	ra,000000002308F7E0

l2308FBFE:
	c.bnez	a0,000000002308FC0C

l2308FC00:
	c.lw	s0,0(a5)
	c.li	a0,00000000
	c.beqz	a5,000000002308FC0C

l2308FC06:
	c.lui	a0,FFFFE000
	addi	a0,a0,-00000700

l2308FC0C:
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

l2308FC2A:
	c.mv	a7,s6
	c.mv	a6,s5
	c.mv	a5,s0
	c.li	a4,00000000
	c.li	a3,00000000
	c.mv	a2,s2
	c.mv	a1,s3
	c.j	000000002308FBD6

;; mbedtls_x509_crt_init: 2308FC3A
;;   Called from:
;;     23086CCA (in altcp_tls_create_config_client_common)
;;     23087426 (in altcp_tls_create_config_client_2wayauth)
;;     2308E624 (in mbedtls_ssl_parse_certificate)
;;     2308FD74 (in mbedtls_x509_crt_parse_der)
mbedtls_x509_crt_init proc
	addi	a2,zero,+00000134
	c.li	a1,00000000
	jal	zero,00000000230A3A68

;; mbedtls_x509_crt_free: 2308FC44
;;   Called from:
;;     23087498 (in altcp_tls_free_config)
;;     230874A2 (in altcp_tls_free_config)
;;     2308BA54 (in mbedtls_ssl_session_free)
;;     2308E5D2 (in mbedtls_ssl_parse_certificate)
;;     2308FDB8 (in mbedtls_x509_crt_parse_der)
;;     2308FDDC (in mbedtls_x509_crt_parse_der)
;;     2308FE30 (in mbedtls_x509_crt_parse_der)
;;     2308FEB8 (in mbedtls_x509_crt_parse_der)
;;     2308FEE4 (in mbedtls_x509_crt_parse_der)
;;     23090000 (in mbedtls_x509_crt_parse_der)
mbedtls_x509_crt_free proc
	beq	a0,zero,000000002308FD20

l2308FC48:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s1,a0
	c.mv	s0,a0

l2308FC58:
	addi	a0,s0,+000000BC
	jal	ra,00000000230879D4
	lw	s2,s0,+00000064

l2308FC64:
	bne	s2,zero,000000002308FCC4

l2308FC68:
	lw	s2,s0,+00000084

l2308FC6C:
	bne	s2,zero,000000002308FCDC

l2308FC70:
	lw	s2,s0,+00000114

l2308FC74:
	bne	s2,zero,000000002308FCF4

l2308FC78:
	lw	s2,s0,+000000F4

l2308FC7C:
	bne	s2,zero,000000002308FD0A

l2308FC80:
	c.lw	s0,8(a0)
	c.beqz	a0,000000002308FC90

l2308FC84:
	c.lw	s0,4(a1)
	jal	ra,000000002308ECAA
	c.lw	s0,8(a0)
	jal	ra,0000000023064972

l2308FC90:
	lw	s0,s0,+00000130
	c.bnez	s0,000000002308FC58

l2308FC96:
	c.mv	s0,s1

l2308FC98:
	addi	a1,zero,+00000134
	c.mv	a0,s0
	lw	s2,s0,+00000130
	jal	ra,000000002308ECAA
	beq	s1,s0,000000002308FCB0

l2308FCAA:
	c.mv	a0,s0
	jal	ra,0000000023064972

l2308FCB0:
	c.mv	s0,s2
	bne	s2,zero,000000002308FC98

l2308FCB6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2308FCC4:
	c.mv	a0,s2
	lw	s3,s2,+00000018
	addi	a1,zero,+00000020
	jal	ra,000000002308ECAA
	c.mv	a0,s2
	jal	ra,0000000023064972
	c.mv	s2,s3
	c.j	000000002308FC64

l2308FCDC:
	c.mv	a0,s2
	lw	s3,s2,+00000018
	addi	a1,zero,+00000020
	jal	ra,000000002308ECAA
	c.mv	a0,s2
	jal	ra,0000000023064972
	c.mv	s2,s3
	c.j	000000002308FC6C

l2308FCF4:
	c.mv	a0,s2
	lw	s3,s2,+0000000C
	c.li	a1,00000010
	jal	ra,000000002308ECAA
	c.mv	a0,s2
	jal	ra,0000000023064972
	c.mv	s2,s3
	c.j	000000002308FC74

l2308FD0A:
	c.mv	a0,s2
	lw	s3,s2,+0000000C
	c.li	a1,00000010
	jal	ra,000000002308ECAA
	c.mv	a0,s2
	jal	ra,0000000023064972
	c.mv	s2,s3
	c.j	000000002308FC7C

l2308FD20:
	c.jr	ra

;; mbedtls_x509_crt_parse_der: 2308FD22
;;   Called from:
;;     2308E78C (in mbedtls_ssl_parse_certificate)
;;     230903DC (in mbedtls_x509_crt_parse)
;;     23090430 (in mbedtls_x509_crt_parse)
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
	beq	a0,zero,0000000023090370

l2308FD3E:
	beq	a1,zero,0000000023090370

l2308FD42:
	c.mv	s0,a2
	c.mv	s2,a1
	c.mv	s4,a0
	c.mv	s1,a0
	c.li	s3,00000000

l2308FD4C:
	c.lw	s1,24(a5)
	c.beqz	a5,000000002308FD7E

l2308FD50:
	lw	a5,s1,+00000130
	c.mv	s3,s1
	c.bnez	a5,000000002308FD70

l2308FD58:
	addi	a1,zero,+00000134
	c.li	a0,00000001
	jal	ra,00000000230904A4
	sw	a0,s1,+00000130
	c.bnez	a0,000000002308FD74

l2308FD68:
	c.lui	a0,FFFFD000
	addi	s0,a0,+00000780
	c.j	000000002308FE3E

l2308FD70:
	c.mv	s1,a5
	c.j	000000002308FD4C

l2308FD74:
	jal	ra,000000002308FC3A
	c.mv	s3,s1
	lw	s1,s1,+00000130

l2308FD7E:
	c.li	a2,0000000C
	c.li	a1,00000000
	c.addi4spn	a0,00000024
	jal	ra,00000000230A3A68
	c.li	a2,0000000C
	c.li	a1,00000000
	c.addi4spn	a0,00000030
	jal	ra,00000000230A3A68
	c.li	a2,0000000C
	c.li	a1,00000000
	c.addi4spn	a0,0000003C
	jal	ra,00000000230A3A68
	beq	s1,zero,000000002309035E

l2308FDA0:
	c.swsp	s0,00000084
	c.add	s0,s2
	addi	a3,zero,+00000030
	c.addi4spn	a2,0000000C
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	c.swsp	s2,00000008
	jal	ra,000000002309171C
	c.beqz	a0,000000002308FDD0

l2308FDB6:
	c.mv	a0,s1
	jal	ra,000000002308FC44
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000180

l2308FDC2:
	beq	s3,zero,000000002308FDCA

l2308FDC6:
	sw	zero,s3,+00000130

l2308FDCA:
	bne	s4,s1,0000000023090368

l2308FDCE:
	c.j	000000002308FE3E

l2308FDD0:
	c.lwsp	a6,00000064
	c.lwsp	a2,000000E4
	c.sub	s0,a1
	bgeu	s0,a5,000000002308FDE8

l2308FDDA:
	c.mv	a0,s1
	jal	ra,000000002308FC44
	c.lui	a0,FFFFE000
	addi	s0,a0,-000001E6
	c.j	000000002308FDC2

l2308FDE8:
	c.add	a1,a5
	sub	a1,a1,s2
	c.sw	s1,4(a1)
	c.li	a0,00000001
	c.jal	00000000230904A4
	c.swsp	a0,00000008
	c.sw	s1,8(a0)
	c.bnez	a0,000000002308FE02

l2308FDFA:
	c.lui	a0,FFFFD000
	addi	s0,a0,+00000780
	c.j	000000002308FDC2

l2308FE02:
	c.lw	s1,4(a2)
	c.mv	a1,s2
	jal	ra,00000000230A382C
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
	jal	ra,000000002309171C
	c.mv	s0,a0
	c.beqz	a0,000000002308FE5A

l2308FE2E:
	c.mv	a0,s1
	jal	ra,000000002308FC44
	c.lui	a0,FFFFE000
	addi	a0,a0,-00000180
	c.add	s0,a0
	c.bnez	s0,000000002308FDC2

l2308FE3E:
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

l2308FE5A:
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
	jal	ra,000000002309171C
	c.mv	s0,a0
	c.beqz	a0,000000002308FEC4

l2308FE7A:
	addi	a5,zero,-00000062
	bne	a0,a5,000000002308FEE2

l2308FE82:
	sw	zero,s1,+00000018

l2308FE86:
	addi	a2,s1,+0000001C
	c.mv	a1,s5
	c.addi4spn	a0,00000010
	jal	ra,000000002309CEBC
	c.mv	s0,a0
	c.bnez	a0,000000002308FEE2

l2308FE96:
	addi	s6,s1,+00000028
	c.addi4spn	a3,00000024
	c.mv	a2,s6
	c.mv	a1,s5
	c.addi4spn	a0,00000010
	jal	ra,000000002309CF24
	c.mv	s0,a0
	c.bnez	a0,000000002308FEE2

l2308FEAA:
	c.lw	s1,24(a5)
	c.li	a4,00000003
	c.addi	a5,00000001
	c.sw	s1,24(a5)
	bge	a4,a5,000000002308FEF8

l2308FEB6:
	c.mv	a0,s1
	jal	ra,000000002308FC44
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000580
	c.j	000000002308FDC2

l2308FEC4:
	c.lwsp	a6,00000004
	c.lwsp	s5,000000E4
	addi	a2,s1,+00000018
	c.addi4spn	a0,00000010
	c.add	s0,a5
	c.mv	a1,s0
	jal	ra,0000000023091782
	c.beqz	a0,000000002308FEEA

l2308FED8:
	c.lui	s0,FFFFE000
	addi	s0,s0,-00000200
	c.add	s0,a0
	c.beqz	s0,000000002308FE86

l2308FEE2:
	c.mv	a0,s1
	jal	ra,000000002308FC44
	c.j	000000002308FDC2

l2308FEEA:
	c.lwsp	a6,000000E4
	beq	s0,a5,000000002308FE86

l2308FEF0:
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000266
	c.j	000000002308FEE2

l2308FEF8:
	addi	a4,s1,+0000012C
	addi	a3,s1,+00000129
	addi	a2,s1,+00000128
	c.addi4spn	a1,00000024
	c.mv	a0,s6
	jal	ra,000000002309D0BE
	c.mv	s0,a0
	c.bnez	a0,000000002308FEE2

l2308FF10:
	c.lwsp	a6,000000E4
	addi	a3,zero,+00000030
	c.addi4spn	a2,0000000C
	c.sw	s1,60(a5)
	c.mv	a1,s5
	c.addi4spn	a0,00000010
	jal	ra,000000002309171C
	c.mv	s0,a0
	bne	a0,zero,000000002308FE2E

l2308FF28:
	c.lwsp	a6,00000064
	c.lwsp	a2,000000E4
	addi	a2,s1,+0000004C
	c.addi4spn	a0,00000010
	c.add	a1,a5
	jal	ra,000000002309CF3C
	c.mv	s0,a0
	c.bnez	a0,000000002308FEE2

l2308FF3C:
	c.lw	s1,60(a4)
	c.lwsp	a6,000000E4
	addi	a3,zero,+00000030
	c.addi4spn	a2,00000054
	c.sub	a5,a4
	c.sw	s1,56(a5)
	c.mv	a1,s5
	c.addi4spn	a0,00000010
	jal	ra,000000002309171C
	c.mv	s0,a0
	c.beqz	a0,000000002309000C

l2308FF56:
	addi	a5,zero,-00000062
	bne	a0,a5,000000002308FEE2

l2308FF5E:
	c.lwsp	a6,000000E4
	addi	a3,zero,+00000030
	c.addi4spn	a2,0000000C
	c.sw	s1,72(a5)
	c.mv	a1,s5
	c.addi4spn	a0,00000010
	jal	ra,000000002309171C
	c.mv	s0,a0
	bne	a0,zero,000000002308FE2E

l2308FF76:
	c.lwsp	a2,000000E4
	c.beqz	a5,000000002308FF8C

l2308FF7A:
	c.lwsp	a6,00000064
	addi	a2,s1,+0000006C
	c.addi4spn	a0,00000010
	c.add	a1,a5
	jal	ra,000000002309CF3C
	c.mv	s0,a0
	c.bnez	a0,000000002308FEE2

l2308FF8C:
	c.lw	s1,72(a4)
	c.lwsp	a6,000000E4
	addi	a2,s1,+000000BC
	c.mv	a1,s5
	c.sub	a5,a4
	c.sw	s1,68(a5)
	c.addi4spn	a0,00000010
	jal	ra,0000000023088112
	c.mv	s0,a0
	c.bnez	a0,000000002308FEE2

l2308FFA4:
	c.lw	s1,24(a5)
	c.li	a4,00000001
	c.addi	a5,FFFFFFFE
	bltu	a4,a5,000000002308FFBA

l2308FFAE:
	c.lwsp	a6,000000E4
	bne	s5,a5,0000000023090016

l2308FFB4:
	c.lwsp	a6,000000E4
	bne	s5,a5,0000000023090056

l2308FFBA:
	c.lw	s1,24(a4)
	c.li	a5,00000003
	bne	a4,a5,0000000023090094

l2308FFC2:
	c.li	a3,00000003
	addi	a2,s1,+000000DC
	c.mv	a1,s5
	c.addi4spn	a0,00000010
	jal	ra,000000002309D102
	c.mv	s0,a0
	c.bnez	a0,000000002309008C

l2308FFD4:
	c.lui	s6,FFFFE000
	addi	s6,s6,-00000500

l2308FFDA:
	c.lwsp	a6,000000E4
	bltu	a5,s5,000000002309009C

l2308FFE0:
	bne	s5,a5,00000000230902B8

l2308FFE4:
	c.addi4spn	a3,00000030
	c.addi4spn	a2,0000003C
	c.mv	a1,s2
	c.addi4spn	a0,00000010
	jal	ra,000000002309CF24
	c.mv	s0,a0
	bne	a0,zero,000000002308FEE2

l2308FFF6:
	c.lw	s1,44(a2)
	c.lwsp	ra,000000E4
	beq	a2,a5,0000000023090322

l2308FFFE:
	c.mv	a0,s1
	jal	ra,000000002308FC44
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000680
	c.j	000000002308FDC2

l2309000C:
	c.lwsp	a6,000000E4
	c.lwsp	s5,000000C4
	c.add	a5,a4
	c.swsp	a5,00000008
	c.j	000000002308FF5E

l23090016:
	lbu	a5,a5,+00000000
	addi	a3,zero,+000000A1
	addi	a2,s1,+000000C8
	sw	a5,s1,+000000C4
	c.mv	a1,s5
	c.addi4spn	a0,00000010
	jal	ra,000000002309171C
	c.mv	s0,a0
	c.beqz	a0,0000000023090046

l23090032:
	addi	a5,zero,-00000062
	bne	a0,a5,000000002308FEE2

l2309003A:
	c.lw	s1,24(a5)
	c.li	a4,00000001
	c.addi	a5,FFFFFFFE
	bgeu	a4,a5,000000002308FFB4

l23090044:
	c.j	000000002308FFBA

l23090046:
	c.lwsp	a6,000000E4
	lw	a4,s1,+000000C8
	sw	a5,s1,+000000CC
	c.add	a5,a4
	c.swsp	a5,00000008
	c.j	000000002309003A

l23090056:
	lbu	a5,a5,+00000000
	addi	a3,zero,+000000A2
	addi	a2,s1,+000000D4
	sw	a5,s1,+000000D0
	c.mv	a1,s5
	c.addi4spn	a0,00000010
	jal	ra,000000002309171C
	c.mv	s0,a0
	c.beqz	a0,000000002309007C

l23090072:
	addi	a5,zero,-00000062
	bne	a0,a5,000000002308FEE2

l2309007A:
	c.j	000000002308FFBA

l2309007C:
	c.lwsp	a6,000000E4
	lw	a4,s1,+000000D4
	sw	a5,s1,+000000D8
	c.add	a5,a4
	c.swsp	a5,00000008
	c.j	000000002308FFBA

l2309008C:
	addi	a5,zero,-00000062
	bne	a0,a5,000000002308FEE2

l23090094:
	c.lwsp	a6,000000E4
	beq	s5,a5,000000002308FFE4

l2309009A:
	c.j	000000002308FDDA

l2309009C:
	addi	a3,zero,+00000030
	c.addi4spn	a2,00000014
	c.mv	a1,s5
	c.addi4spn	a0,00000010
	c.swsp	zero,00000024
	c.swsp	zero,000000A4
	c.swsp	zero,00000028
	c.swsp	zero,0000000C
	c.swsp	zero,0000008C
	jal	ra,000000002309171C
	c.beqz	a0,00000000230900C2

l230900B6:
	c.lui	s0,FFFFE000
	addi	s0,s0,-00000500
	c.add	s0,a0
	c.beqz	s0,0000000023090094

l230900C0:
	c.j	000000002308FEE2

l230900C2:
	c.lwsp	a6,000000E4
	c.lwsp	s4,000000E8
	c.li	a3,00000006
	c.addi4spn	a2,0000004C
	c.add	s7,a5
	lbu	a5,a5,+00000000
	c.mv	a1,s5
	c.addi4spn	a0,00000010
	c.swsp	a5,00000024
	jal	ra,000000002309171C
	c.bnez	a0,00000000230900B6

l230900DC:
	c.lwsp	a6,000000E4
	c.lwsp	a3,000000C4
	c.swsp	a5,00000028
	c.add	a5,a4
	c.swsp	a5,00000008
	sub	a5,s5,a5
	bge	zero,a5,0000000023090380

l230900EE:
	c.addi4spn	a2,00000018
	c.mv	a1,s7
	c.addi4spn	a0,00000010
	jal	ra,0000000023091742
	c.beqz	a0,0000000023090102

l230900FA:
	addi	a5,zero,-00000062
	bne	a0,a5,00000000230900B6

l23090102:
	c.li	a3,00000004
	c.addi4spn	a2,00000014
	c.mv	a1,s7
	c.addi4spn	a0,00000010
	jal	ra,000000002309171C
	c.bnez	a0,00000000230900B6

l23090110:
	c.lwsp	a6,00000004
	c.lwsp	s4,000000E4
	c.add	s0,a5
	bne	s7,s0,00000000230902B8

l2309011A:
	c.addi4spn	a1,0000001C
	c.addi4spn	a0,00000048
	jal	ra,00000000230969C6
	c.beqz	a0,0000000023090134

l23090124:
	c.lwsp	s8,000000E4
	c.swsp	s7,00000008
	beq	a5,zero,000000002308FFDA

l2309012C:
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000562
	c.j	000000002308FEE2

l23090134:
	lw	a4,s1,+000000F8
	c.lwsp	t3,000000E4
	and	a3,a4,a5
	bne	a3,zero,0000000023090388

l23090142:
	c.or	a4,a5
	sw	a4,s1,+000000F8
	addi	a4,zero,+00000100
	beq	a5,a4,00000000230901A0

l23090150:
	blt	a4,a5,000000002309016A

l23090154:
	c.li	a4,00000004
	beq	a5,a4,000000002309021E

l2309015A:
	addi	a4,zero,+00000020
	beq	a5,a4,0000000023090288

l23090162:
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000080
	c.j	000000002308FEE2

l2309016A:
	addi	a4,a5,-00000800
	beq	a4,zero,000000002309026E

l23090172:
	c.lui	a4,00010000
	bne	a5,a4,0000000023090162

l23090178:
	c.addi4spn	a2,00000054
	c.mv	a1,s7
	c.addi4spn	a0,00000010
	c.swsp	zero,000000A8
	sb	zero,sp,+00000058
	c.swsp	zero,000000AC
	jal	ra,0000000023091812
	c.bnez	a0,00000000230901B8

l2309018C:
	c.lwsp	s5,000000C4
	c.li	a5,00000001
	bne	a4,a5,0000000023090236

l23090194:
	c.lwsp	t4,000000E4
	lbu	a5,a5,+00000000
	sb	a5,s1,+00000118
	c.j	000000002308FFDA

l230901A0:
	sw	zero,s1,+000000FC
	sw	zero,s1,+00000100
	addi	a3,zero,+00000030
	c.addi4spn	a2,00000054
	c.mv	a1,s7
	c.addi4spn	a0,00000010
	jal	ra,000000002309171C
	c.beqz	a0,00000000230901C2

l230901B8:
	add	s0,a0,s6
	beq	s0,zero,000000002308FFDA

l230901C0:
	c.j	000000002308FEE2

l230901C2:
	c.lwsp	a6,000000E4
	beq	s0,a5,000000002308FFDA

l230901C8:
	addi	s7,s1,+000000FC
	c.mv	a2,s7
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	jal	ra,0000000023091742
	c.beqz	a0,00000000230901F8

l230901D8:
	addi	a5,zero,-00000062
	bne	a0,a5,00000000230901B8

l230901E0:
	c.mv	a2,s7
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	jal	ra,0000000023091782
	c.bnez	a0,00000000230901B8

l230901EC:
	lw	a5,s1,+000000FC
	c.beqz	a5,00000000230901F8

l230901F2:
	c.li	a5,00000001
	sw	a5,s1,+000000FC

l230901F8:
	c.lwsp	a6,000000E4
	beq	s0,a5,000000002308FFDA

l230901FE:
	addi	a2,s1,+00000100
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	jal	ra,0000000023091782
	c.bnez	a0,00000000230901B8

l2309020C:
	c.lwsp	a6,000000E4
	bne	s0,a5,00000000230902B8

l23090212:
	lw	a5,s1,+00000100
	c.addi	a5,00000001
	sw	a5,s1,+00000100
	c.j	000000002308FFDA

l2309021E:
	c.addi4spn	a2,00000054
	c.mv	a1,s7
	c.addi4spn	a0,00000010
	c.swsp	zero,000000A8
	sb	zero,sp,+00000058
	c.swsp	zero,000000AC
	jal	ra,0000000023091812
	c.bnez	a0,00000000230901B8

l23090232:
	c.lwsp	s5,00000084
	c.bnez	a2,000000002309023E

l23090236:
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000564
	c.j	000000002308FEE2

l2309023E:
	sw	zero,s1,+00000104
	c.lwsp	t4,00000044
	c.li	a5,00000000
	c.li	a1,00000004

l23090248:
	add	a4,a0,a5
	lbu	a4,a4,+00000000
	slli	a3,a5,00000003
	c.addi	a5,00000001
	sll	a3,a4,a3
	lw	a4,s1,+00000104
	c.or	a4,a3
	sw	a4,s1,+00000104
	beq	a2,a5,000000002308FFDA

l23090268:
	bne	a5,a1,0000000023090248

l2309026C:
	c.j	000000002308FFDA

l2309026E:
	c.li	a3,00000006
	addi	a2,s1,+00000108
	c.mv	a1,s7
	c.addi4spn	a0,00000010
	jal	ra,00000000230918AE
	c.bnez	a0,00000000230901B8

l2309027E:
	lw	a5,s1,+00000110
	bne	a5,zero,000000002308FFDA

l23090286:
	c.j	0000000023090236

l23090288:
	addi	a3,zero,+00000030
	c.addi4spn	a2,00000020
	c.mv	a1,s7
	c.addi4spn	a0,00000010
	jal	ra,000000002309171C
	c.bnez	a0,00000000230901B8

l23090298:
	c.lwsp	a6,000000E4
	c.lwsp	zero,000001D4
	c.add	a5,a4
	bne	s0,a5,00000000230902B8

l230902A2:
	addi	s7,s1,+000000E8
	addi	s8,zero,+00000082

l230902AA:
	c.lwsp	a6,000000E4
	bltu	a5,s0,00000000230902C0

l230902B0:
	sw	zero,s7,+0000000C
	beq	s0,a5,000000002308FFDA

l230902B8:
	c.lui	a0,FFFFE000
	addi	s0,a0,-00000566
	c.j	000000002308FEE2

l230902C0:
	sub	a4,s0,a5
	bge	zero,a4,0000000023090380

l230902C8:
	lbu	s9,a5,+00000000
	c.addi4spn	a2,00000054
	c.addi	a5,00000001
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	c.swsp	a5,00000008
	jal	ra,0000000023091640
	bne	a0,zero,00000000230901B8

l230902DE:
	slli	a5,s9,00000018
	c.srai	a5,00000018
	bge	a5,zero,000000002309012C

l230902E8:
	beq	s9,s8,00000000230902F6

l230902EC:
	c.lwsp	a6,000000E4
	c.lwsp	s5,000000C4

l230902F0:
	c.add	a5,a4
	c.swsp	a5,00000008
	c.j	00000000230902AA

l230902F6:
	lw	a5,s7,+00000008
	c.beqz	a5,0000000023090310

l230902FC:
	lw	a5,s7,+0000000C
	c.bnez	a5,0000000023090388
