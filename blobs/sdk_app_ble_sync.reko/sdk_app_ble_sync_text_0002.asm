;;; Segment .text (23000300)

l23020302:
	beq	a0,s5,00000000230202AA

l23020306:
	addi	a0,s6,+00000158
	jal	ra,0000000023003AC6
	c.j	00000000230202A4

l23020310:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002301F988
	c.j	00000000230202AA

;; l2cap_recv: 2302031A
l2cap_recv proc
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
	lhu	a4,a1,+0000000C
	c.li	a5,00000003
	bltu	a5,a4,000000002302034A

l2302033C:
	lui	a0,00023075
	addi	a0,a0,+00000190

l23020344:
	jal	ra,0000000023003AC6
	c.j	000000002302037C

l2302034A:
	c.mv	s0,a1
	c.mv	s2,a0
	c.li	a1,00000004
	addi	a0,s0,+00000008
	jal	ra,000000002302590A
	lbu	a2,a0,+00000003
	lbu	a5,a0,+00000002
	c.mv	s3,a0
	c.slli	a2,08
	c.or	a2,a5
	lhu	a5,s0,+0000000C
	beq	a2,a5,0000000023020398

l2302036E:
	lui	a0,00023075
	c.mv	a1,a5
	addi	a0,a0,+000001B0
	jal	ra,0000000023003AC6

l2302037C:
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
	c.li	a0,00000000
	c.addi16sp	00000050
	c.jr	ra

l23020398:
	lbu	s1,a0,+00000001
	c.bnez	s1,00000000230203A8

l2302039E:
	lui	a0,00023075
	addi	a0,a0,+000001D4
	c.j	0000000023020344

l230203A8:
	lbu	a1,a0,+00000000
	c.li	a3,00000015
	addi	a4,a1,-00000001
	andi	a4,a4,+000000FF
	bltu	a3,a4,00000000230208C0

l230203BA:
	lui	a3,00023075
	c.slli	a4,02
	addi	a3,a3,+0000003C
	c.add	a4,a3
	c.lw	a4,0(a4)
	c.jr	a4

l230203CA:
	c.li	a4,00000001
	bltu	a4,a5,000000002302037C

l230203D0:
	lui	a0,00023075
	addi	a0,a0,+000001F8
	c.j	0000000023020344

l230203DA:
	c.li	s7,00000009
	bltu	s7,a5,00000000230203EA

l230203E0:
	lui	a0,00023075
	addi	a0,a0,+00000218
	c.j	0000000023020344

l230203EA:
	c.lw	s0,8(a5)
	lbu	s4,a5,+00000005
	lbu	a4,a5,+00000004
	c.slli	s4,08
	or	s4,s4,a4
	c.li	a4,00000016
	bgeu	a4,s4,0000000023020412

l23020400:
	lbu	s5,a5,+00000007
	lbu	a3,a5,+00000006
	c.slli	s5,08
	or	s5,s5,a3
	bltu	a4,s5,000000002302041C

l23020412:
	lui	a0,00023075
	addi	a0,a0,+0000023C
	c.j	0000000023020344

l2302041C:
	lbu	s0,a5,+00000001
	lbu	a4,a5,+00000000
	lw	s6,s2,+00000000
	c.slli	s0,08
	lbu	s2,a5,+00000003
	c.or	s0,a4
	lbu	a4,a5,+00000002
	lbu	s3,a5,+00000009
	c.slli	s2,08
	or	s2,s2,a4
	lbu	a4,a5,+00000008
	c.slli	s3,08
	c.li	a2,0000000A
	c.mv	a1,s1
	c.li	a0,00000015
	or	s3,s3,a4
	jal	ra,000000002301F798
	c.mv	s9,a0
	c.beqz	a0,000000002302037C

l23020456:
	c.li	a1,0000000A
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.li	a2,0000000A
	c.li	a1,00000000
	c.mv	s1,a0
	jal	ra,000000002306D1BC
	c.mv	a0,s0
	jal	ra,000000002301F5E2
	c.mv	s8,a0
	c.li	a5,00000002
	c.beqz	a0,0000000023020482

l23020474:
	lbu	a4,s6,+00000009
	lbu	a5,a0,+00000002
	bgeu	a4,a5,0000000023020488

l23020480:
	c.li	a5,00000005

l23020482:
	sh	a5,s1,+00000008
	c.j	000000002302049C

l23020488:
	addi	a5,s2,-00000040
	c.slli	a5,10
	c.srli	a5,00000010
	addi	a4,zero,+0000003F
	bgeu	a4,a5,00000000230204A8

l23020498:
	sh	s7,s1,+00000008

l2302049C:
	c.mv	a2,s9
	c.li	a1,00000005
	c.mv	a0,s6

l230204A2:
	jal	ra,000000002301F980
	c.j	000000002302037C

l230204A8:
	c.mv	a1,s2
	c.mv	a0,s6
	jal	ra,000000002301FDCC
	c.swsp	a0,0000000C
	c.li	a5,0000000A
	c.bnez	a0,0000000023020482

l230204B6:
	lw	a5,s8,+00000004
	c.addi4spn	a1,00000018
	c.mv	a0,s6
	c.jalr	a5
	bge	a0,zero,00000000230204EE

l230204C4:
	c.li	a4,FFFFFFF3
	c.li	a5,00000006
	beq	a0,a4,0000000023020482

l230204CC:
	c.li	a5,FFFFFFF3
	blt	a5,a0,00000000230204E0

l230204D2:
	addi	a4,zero,-00000023
	c.li	a5,00000002

l230204D8:
	beq	a0,a4,0000000023020482

l230204DC:
	c.li	a5,0000000B
	c.j	0000000023020482

l230204E0:
	c.li	a4,FFFFFFF4
	c.li	a5,00000004
	beq	a0,a4,0000000023020482

l230204E8:
	c.li	a4,FFFFFFFF
	c.li	a5,00000007
	c.j	00000000230204D8

l230204EE:
	lbu	a5,s8,+00000002
	c.lwsp	s8,00000064
	lui	a2,0002301F
	addi	a2,a2,+00000668
	sb	a5,a1,+0000003D
	c.mv	a0,s6
	jal	ra,000000002301FDF8
	c.li	a5,00000004
	c.beqz	a0,0000000023020482

l2302050A:
	c.lwsp	s8,00000004
	c.mv	a0,s0
	jal	ra,000000002301F6C6
	c.mv	a1,s3
	sh	s2,s0,+00000054
	sh	s4,s0,+00000056
	sh	s3,s0,+0000005A
	c.mv	a0,s0
	sh	s5,s0,+00000058
	jal	ra,000000002301F7F4
	c.mv	a0,s0
	jal	ra,000000002301F6F6
	lhu	s2,s0,+00000046
	c.lui	s3,00010000
	c.addi	s3,FFFFFFFF
	addi	s4,s0,+00000048

l2302053C:
	c.addi	s2,FFFFFFFF
	c.slli	s2,10
	srli	s2,s2,00000010
	bne	s2,s3,0000000023020586

l23020548:
	c.lwsp	s8,00000044
	lhu	a5,s8,+00000000
	sh	a5,a0,+0000003A
	c.li	a5,00000003
	sb	a5,a0,+00000038
	c.lw	a0,4(a5)
	c.lw	a5,0(a5)
	c.beqz	a5,0000000023020560

l2302055E:
	c.jalr	a5

l23020560:
	lhu	a5,s0,+00000040
	sh	a5,s1,+00000000
	lhu	a5,s0,+00000044
	sh	a5,s1,+00000004
	lhu	a5,s0,+00000042
	sh	a5,s1,+00000002
	lhu	a5,s0,+00000046
	sh	zero,s1,+00000008
	sh	a5,s1,+00000006
	c.j	000000002302049C

l23020586:
	c.mv	a0,s4
	jal	ra,00000000230251D2
	c.j	000000002302053C

l2302058E:
	c.li	a4,00000009
	bltu	a4,a5,000000002302059E

l23020594:
	lui	a0,00023075
	addi	a0,a0,+0000025C
	c.j	0000000023020344

l2302059E:
	c.lw	s0,8(a5)
	lw	s3,s2,+00000000
	slli	a1,s1,00000010
	lhu	s2,a5,+00000008
	lhu	s7,a5,+00000000
	lhu	s6,a5,+00000002
	lhu	s5,a5,+00000004
	lhu	s4,a5,+00000006
	andi	a5,s2,-00000009
	c.srli	a1,00000010
	c.beqz	a5,00000000230205CC

l230205C4:
	c.li	a5,00000005
	c.li	a2,00000001
	bne	s2,a5,00000000230205CE

l230205CC:
	c.li	a2,00000000

l230205CE:
	c.mv	a0,s3
	jal	ra,000000002301F59E
	c.mv	s0,a0
	c.bnez	a0,00000000230205E8

l230205D8:
	lui	a0,00023075
	c.mv	a1,s1
	addi	a0,a0,+00000280
	jal	ra,0000000023003AC6
	c.j	000000002302037C

l230205E8:
	c.addi	a0,00000010
	jal	ra,0000000023025F66
	c.li	a5,00000005
	sb	zero,s0,+0000003C
	beq	s2,a5,0000000023020644

l230205F8:
	c.li	a5,00000008
	beq	s2,a5,0000000023020644

l230205FE:
	bne	s2,zero,0000000023020676

l23020602:
	c.li	a5,00000003
	sb	a5,s0,+00000038
	c.lw	s0,4(a5)
	sh	s7,s0,+00000054
	sh	s6,s0,+00000056
	sh	s5,s0,+00000058
	c.lw	a5,0(a5)
	c.beqz	a5,000000002302061E

l2302061A:
	c.mv	a0,s0
	c.jalr	a5

l2302061E:
	c.mv	a0,s0
	c.mv	a1,s4
	c.lui	s2,00010000
	jal	ra,000000002301F7F4
	c.addi	s2,FFFFFFFF
	lhu	s1,s0,+00000046
	addi	s0,s0,+00000048

l23020632:
	c.addi	s1,FFFFFFFF
	c.slli	s1,10
	c.srli	s1,00000010
	beq	s1,s2,000000002302037C

l2302063C:
	c.mv	a0,s0
	jal	ra,00000000230251D2
	c.j	0000000023020632

l23020644:
	c.li	a5,00000005
	beq	s2,a5,000000002302067E

l2302064A:
	c.li	a5,00000008
	bne	s2,a5,000000002302066E

l23020650:
	lbu	a4,s0,+0000003D
	c.li	a5,00000001
	bltu	a5,a4,000000002302066E

l2302065A:
	c.li	a5,00000002

l2302065C:
	sb	a5,s0,+0000003D
	lbu	a1,s0,+0000003D
	c.lw	s0,0(a0)
	jal	ra,0000000023026CA6
	beq	a0,zero,000000002302037C

l2302066E:
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,000000002301F856

l23020676:
	c.mv	a0,s0

l23020678:
	jal	ra,000000002301F87E
	c.j	000000002302037C

l2302067E:
	lbu	a5,s0,+0000003D
	c.li	a4,00000001
	bgeu	a4,a5,000000002302065A

l23020688:
	c.li	a4,00000002
	bne	a5,a4,0000000023020692

l2302068E:
	c.li	a5,00000003
	c.j	000000002302065C

l23020692:
	c.li	a4,00000003
	bne	a5,a4,000000002302066E

l23020698:
	c.li	a5,00000004
	c.j	000000002302065C

l2302069C:
	c.li	a4,00000003
	bgeu	a4,a5,00000000230203E0

l230206A2:
	c.lw	s0,8(s0)
	lw	s3,s2,+00000000
	lbu	a5,s0,+00000001
	lbu	a1,s0,+00000000
	c.mv	a0,s3
	c.slli	a5,08
	c.or	a1,a5
	jal	ra,000000002301F600
	c.mv	s2,a0
	c.bnez	a0,00000000230206EE

l230206BE:
	lbu	a5,s0,+00000003
	lbu	a4,s0,+00000002
	c.addi4spn	a3,00000018
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,sp,+00000018
	lbu	a5,s0,+00000001
	lbu	a4,s0,+00000000
	c.li	a2,00000002
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,sp,+0000001A
	c.li	a4,00000004
	c.mv	a1,s1
	c.mv	a0,s3

l230206E8:
	jal	ra,000000002301FB14
	c.j	000000002302037C

l230206EE:
	c.li	a2,00000004
	c.mv	a1,s1
	c.li	a0,00000007
	jal	ra,000000002301F798
	c.mv	a2,a0
	beq	a0,zero,000000002302037C

l230206FE:
	c.li	a1,00000004
	c.addi	a0,00000008
	c.swsp	a2,00000084
	jal	ra,000000002302586C
	lhu	a5,s2,+00000040
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	lhu	a5,s2,+00000054
	sb	a5,a0,+00000002
	c.srli	a5,00000008
	sb	a5,a0,+00000003
	c.mv	a0,s2
	jal	ra,000000002301F87E
	c.lwsp	a2,00000084
	c.li	a1,00000005
	c.mv	a0,s3
	c.j	00000000230204A2

l23020732:
	c.li	a4,00000003
	bltu	a4,a5,0000000023020742

l23020738:
	lui	a0,00023075
	addi	a0,a0,+000002A4
	c.j	0000000023020344

l23020742:
	c.lw	s0,8(a5)
	lw	a0,s2,+00000000
	lbu	a1,a5,+00000002
	lbu	a5,a5,+00000003
	c.slli	a5,08
	c.or	a1,a5
	jal	ra,000000002301F600

l23020758:
	c.bnez	a0,0000000023020678

l2302075A:
	c.j	000000002302037C

l2302075C:
	c.li	a4,00000003
	bltu	a4,a5,000000002302076C

l23020762:
	lui	a0,00023075
	addi	a0,a0,+000002CC
	c.j	0000000023020344

l2302076C:
	c.lw	s0,8(s1)
	lw	a0,s2,+00000000
	lbu	a5,s1,+00000001
	lbu	a1,s1,+00000000
	c.slli	a5,08
	c.or	a1,a5
	jal	ra,000000002301FDCC
	c.mv	s0,a0
	c.bnez	a0,0000000023020790

l23020786:
	lui	a0,00023075
	addi	a0,a0,+000002F0
	c.j	0000000023020344

l23020790:
	lbu	a1,s1,+00000003
	lbu	a5,s1,+00000002
	addi	a0,a0,+0000005C
	c.slli	a1,08
	c.or	a1,a5
	c.swsp	a1,00000084
	jal	ra,0000000023025234
	c.lwsp	a2,00000064
	c.lui	a5,00010000
	c.add	a0,a1
	bltu	a0,a5,00000000230207C4

l230207B0:
	lui	a0,00023075
	addi	a0,a0,+00000320
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	jal	ra,000000002302005C
	c.j	000000002302037C

l230207C4:
	c.mv	a0,s0
	jal	ra,000000002301F7F4
	addi	s1,s0,+00000068

l230207CE:
	c.lw	s0,116(a0)
	c.beqz	a0,00000000230207F8

l230207D2:
	sw	zero,s0,+00000074

l230207D6:
	c.swsp	a0,0000000C
	beq	a0,zero,000000002302037C

l230207DC:
	lhu	a2,a0,+00000014
	c.addi4spn	a1,00000018
	c.mv	a0,s0
	jal	ra,000000002301FD10
	bge	a0,zero,00000000230207CE

l230207EC:
	c.li	a5,FFFFFFF5
	bne	a0,a5,000000002302037C

l230207F2:
	c.lwsp	s8,000000E4
	c.sw	s0,116(a5)
	c.j	000000002302037C

l230207F8:
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,00000000230256E4
	c.j	00000000230207D6

l23020802:
	lw	a0,s2,+00000000
	c.li	a2,00000001
	c.mv	a1,s1
	jal	ra,000000002301F59E
	c.j	0000000023020758

l23020810:
	c.li	a4,00000007
	bltu	a4,a5,0000000023020820

l23020816:
	lui	a0,00023075
	addi	a0,a0,+00000334
	c.j	0000000023020344

l23020820:
	lw	s2,s2,+00000000
	lbu	a5,s2,+00000003
	c.beqz	a5,0000000023020836

l2302082A:
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.mv	a1,s1
	c.mv	a0,s2
	c.j	00000000230206E8

l23020836:
	c.lw	s0,8(a5)
	c.li	a2,00000002
	c.mv	a1,s1
	lbu	a4,a5,+00000001
	lbu	a3,a5,+00000000
	c.li	a0,00000013
	c.slli	a4,08
	c.or	a4,a3
	sh	a4,sp,+00000018
	lbu	a4,a5,+00000003
	lbu	a3,a5,+00000002
	c.slli	a4,08
	c.or	a4,a3
	sh	a4,sp,+0000001A
	lbu	a4,a5,+00000005
	lbu	a3,a5,+00000004
	c.slli	a4,08
	c.or	a4,a3
	sh	a4,sp,+0000001C
	lbu	a4,a5,+00000006
	lbu	a5,a5,+00000007
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,sp,+0000001E
	jal	ra,000000002301F798
	c.mv	s0,a0
	beq	a0,zero,000000002302037C

l23020888:
	c.addi4spn	a1,00000018
	c.mv	a0,s2
	jal	ra,0000000023026AD6
	c.mv	s1,a0
	c.li	a1,00000002
	addi	a0,s0,+00000008
	jal	ra,000000002302586C
	xori	a5,s1,+00000001
	sb	a5,a0,+00000000
	sb	zero,a0,+00000001
	c.mv	a2,s0
	c.li	a1,00000005
	c.mv	a0,s2
	jal	ra,000000002301F980
	beq	s1,zero,000000002302037C

l230208B6:
	c.addi4spn	a1,00000018
	c.mv	a0,s2
	jal	ra,000000002302782A
	c.j	000000002302037C

l230208C0:
	lui	a0,00023075
	addi	a0,a0,+0000035C
	jal	ra,0000000023003AC6
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	lbu	a1,s3,+00000001
	lw	a0,s2,+00000000
	c.j	00000000230206E8

;; sys_memcpy_swap: 230208DC
;;   Called from:
;;     23020B10 (in smp_sign_buf)
;;     23020B80 (in smp_f4)
;;     23020B8C (in smp_f4)
;;     23020B9C (in smp_f4)
;;     23020C9A (in smp_f5)
;;     23020CBE (in smp_f5)
;;     23020CCA (in smp_f5)
;;     23020CE0 (in smp_f5)
;;     23020CF6 (in smp_f5)
;;     23020D66 (in smp_f6)
;;     23020D70 (in smp_f6)
;;     23020D7C (in smp_f6)
;;     23020D88 (in smp_f6)
;;     23020DAA (in smp_f6)
;;     23020DD0 (in smp_f6)
;;     23020DDA (in smp_f6)
;;     23020E20 (in smp_g2)
;;     23020E2C (in smp_g2)
;;     23020E38 (in smp_g2)
;;     23020E42 (in smp_g2)
sys_memcpy_swap proc
	addi	a5,a2,-00000001
	c.add	a1,a5
	c.add	a2,a0

l230208E4:
	c.addi	a1,FFFFFFFF
	lbu	a5,a1,+00000001
	c.addi	a0,00000001
	sb	a5,a0,+00000FFF
	bne	a2,a0,00000000230208E4

l230208F4:
	c.jr	ra

;; sys_mem_swap: 230208F6
;;   Called from:
;;     23020B06 (in smp_sign_buf)
;;     23020B44 (in smp_sign_buf)
;;     23020B56 (in smp_sign_buf)
;;     23020BB6 (in smp_f4)
;;     23020D10 (in smp_f5)
;;     23020D2E (in smp_f5)
;;     23020DF4 (in smp_f6)
sys_mem_swap proc
	add	a5,a0,a1
	c.srli	a1,00000001
	c.add	a1,a0

l230208FE:
	lbu	a3,a5,-00000001
	lbu	a4,a0,+00000000
	c.addi	a0,00000001
	sb	a3,a0,+00000FFF
	sb	a4,a5,+00000FFF
	c.addi	a5,FFFFFFFF
	bne	a0,a1,00000000230208FE

l23020916:
	c.jr	ra

;; get_io_capa: 23020918
;;   Called from:
;;     230212EA (in get_auth.isra.0)
;;     23021342 (in sec_level_reachable.isra.1)
;;     23021370 (in sec_level_reachable.isra.1)
;;     23021484 (in get_pair_method)
;;     230214EA (in get_pair_method)
;;     23021D98 (in smp_send_pairing_req)
;;     23021EA4 (in smp_security_request)
;;     23021F76 (in smp_pairing_req)
get_io_capa proc
	lui	a5,0004201A
	lw	a5,a5,+000004D4
	c.li	a0,00000003
	c.beqz	a5,000000002302095C

l23020924:
	c.lw	a5,0(a4)
	c.beqz	a4,000000002302093E

l23020928:
	c.lw	a5,4(a3)
	c.beqz	a3,000000002302093E

l2302092C:
	c.lw	a5,8(a3)
	c.li	a0,00000004
	c.bnez	a3,000000002302095C

l23020932:
	lui	a3,0004200E
	lbu	a3,a3,+0000018C
	c.bnez	a3,0000000023020950

l2302093C:
	c.jr	ra

l2302093E:
	lui	a3,0004200E
	lbu	a3,a3,+0000018C
	c.beqz	a3,0000000023020950

l23020948:
	c.beqz	a4,0000000023020950

l2302094A:
	c.lw	a5,8(a3)
	c.li	a0,00000001
	c.bnez	a3,000000002302095C

l23020950:
	c.lw	a5,4(a5)
	c.li	a0,00000002
	c.bnez	a5,000000002302095C

l23020956:
	c.li	a0,00000003
	c.beqz	a4,000000002302095C

l2302095A:
	c.li	a0,00000000

l2302095C:
	c.jr	ra

;; smp_chan_get: 2302095E
;;   Called from:
;;     23021CF6 (in smp_send_pairing_req)
;;     230230B6 (in bt_smp_request_ltk)
;;     23023396 (in bt_smp_auth_passkey_entry)
;;     23023458 (in bt_smp_auth_passkey_confirm)
;;     230234D2 (in bt_smp_auth_cancel)
;;     23023534 (in bt_smp_auth_pairing_confirm)
;;     230235F6 (in bt_smp_start_security)
;;     23023688 (in bt_smp_start_security)
;;     23023752 (in bt_smp_update_keys)
smp_chan_get proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000006
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002301FDE2
	c.mv	s0,a0
	c.bnez	a0,000000002302097A

l2302096E:
	lui	a0,00023076
	addi	a0,a0,-000007C0
	jal	ra,0000000023003AC6

l2302097A:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; atomic_set_bit: 23020984
;;   Called from:
;;     230209FC (in smp_reset)
;;     23020F14 (in display_passkey)
;;     2302107A (in smp_timeout)
;;     230210F6 (in smp_ident_info)
;;     23021162 (in smp_encrypt_info)
;;     230211E4 (in legacy_request_tk)
;;     23021228 (in legacy_request_tk)
;;     23021538 (in smp_create_pdu.isra.7)
;;     23021894 (in smp_dhkey_check)
;;     23021C5C (in smp_master_ident)
;;     23021CB8 (in smp_init)
;;     23021DEA (in smp_send_pairing_req)
;;     23021DF2 (in smp_send_pairing_req)
;;     23021DFA (in smp_send_pairing_req)
;;     23021E62 (in smp_security_request)
;;     23021FB8 (in smp_pairing_req)
;;     23021FE8 (in smp_pairing_req)
;;     23022010 (in smp_pairing_req)
;;     23022018 (in smp_pairing_req)
;;     2302208C (in smp_pairing_req)
;;     230220AE (in smp_pairing_req)
;;     230220F0 (in smp_pairing_req)
;;     23022272 (in bt_smp_dhkey_ready)
;;     23022400 (in bt_smp_encrypt_change)
;;     23022432 (in bt_smp_encrypt_change)
;;     2302243A (in bt_smp_encrypt_change)
;;     2302268C (in legacy_pairing_confirm)
;;     230226A2 (in legacy_pairing_confirm)
;;     230226EA (in smp_pairing_confirm)
;;     2302272E (in smp_pairing_confirm)
;;     23022750 (in smp_pairing_confirm)
;;     230227E0 (in smp_pairing_rsp)
;;     230227FE (in smp_pairing_rsp)
;;     23022818 (in smp_pairing_rsp)
;;     23022868 (in smp_pairing_rsp)
;;     23022894 (in smp_pairing_rsp)
;;     230228AE (in smp_pairing_rsp)
;;     2302290C (in smp_pairing_rsp)
;;     2302291C (in smp_pairing_rsp)
;;     23022A60 (in smp_ident_addr_info)
;;     23022B94 (in smp_public_key)
;;     23022C10 (in smp_public_key)
;;     23022D56 (in bt_smp_pkey_ready)
;;     23022D78 (in bt_smp_pkey_ready)
;;     23022EA6 (in smp_pairing_random)
;;     23022ED8 (in smp_pairing_random)
;;     2302311C (in bt_smp_request_ltk)
;;     23023404 (in bt_smp_auth_passkey_entry)
;;     23023430 (in bt_smp_auth_passkey_entry)
;;     2302348C (in bt_smp_auth_passkey_confirm)
;;     23023570 (in bt_smp_auth_pairing_confirm)
;;     2302358C (in bt_smp_auth_pairing_confirm)
;;     2302359A (in bt_smp_auth_pairing_confirm)
;;     230235B4 (in bt_smp_auth_pairing_confirm)
;;     230235C4 (in bt_smp_auth_pairing_confirm)
;;     2302367A (in bt_smp_start_security)
;;     23023682 (in bt_smp_start_security)
;;     23023738 (in bt_smp_start_security)
atomic_set_bit proc
	c.li	a5,00000001
	sll	a1,a5,a1
	jal	zero,00000000230254FA

;; atomic_test_bit: 2302098E
;;   Called from:
;;     23020A18 (in smp_pairing_complete)
;;     23020A58 (in smp_pairing_complete)
;;     23020FB2 (in update_keys_check)
;;     23020FFC (in smp_pairing_failed)
;;     23021062 (in smp_timeout)
;;     230210A4 (in smp_ident_info)
;;     23021112 (in smp_encrypt_info)
;;     2302146A (in get_pair_method)
;;     2302151A (in smp_create_pdu.isra.7)
;;     2302188A (in smp_dhkey_check)
;;     230218A0 (in smp_dhkey_check)
;;     230219E4 (in bt_smp_distribute_keys)
;;     23021AB6 (in bt_smp_distribute_keys)
;;     23021AFE (in bt_smp_distribute_keys)
;;     23021B48 (in smp_signing_info)
;;     23021BE0 (in smp_master_ident)
;;     23021D0A (in smp_send_pairing_req)
;;     23021D16 (in smp_send_pairing_req)
;;     23021D36 (in smp_send_pairing_req)
;;     23021E1A (in smp_security_request)
;;     23021E28 (in smp_security_request)
;;     23021F44 (in smp_pairing_req)
;;     23022062 (in smp_pairing_req)
;;     23022074 (in smp_pairing_req)
;;     2302210E (in smp_pairing_req)
;;     23022250 (in bt_smp_dhkey_ready)
;;     2302225C (in bt_smp_dhkey_ready)
;;     23022278 (in bt_smp_dhkey_ready)
;;     230222FC (in bt_smp_recv)
;;     230223CA (in bt_smp_encrypt_change)
;;     230223E6 (in bt_smp_encrypt_change)
;;     23022680 (in legacy_pairing_confirm)
;;     23022702 (in smp_pairing_confirm)
;;     23022746 (in smp_pairing_confirm)
;;     2302283E (in smp_pairing_rsp)
;;     23022850 (in smp_pairing_rsp)
;;     23022888 (in smp_pairing_rsp)
;;     230228EA (in smp_pairing_rsp)
;;     230229AC (in smp_ident_addr_info)
;;     23022CEC (in bt_smp_pkey_ready)
;;     23022D1A (in bt_smp_pkey_ready)
;;     23022DE0 (in smp_pairing_random)
;;     230230D6 (in bt_smp_request_ltk)
;;     230230E0 (in bt_smp_request_ltk)
;;     23023208 (in bt_smp_request_ltk)
;;     230233C2 (in bt_smp_auth_passkey_entry)
;;     2302343A (in bt_smp_auth_passkey_entry)
;;     23023482 (in bt_smp_auth_passkey_confirm)
;;     23023498 (in bt_smp_auth_passkey_confirm)
;;     230234A6 (in bt_smp_auth_passkey_confirm)
;;     23023564 (in bt_smp_auth_pairing_confirm)
;;     230235A6 (in bt_smp_auth_pairing_confirm)
;;     2302361A (in bt_smp_start_security)
;;     23023644 (in bt_smp_start_security)
;;     23023652 (in bt_smp_start_security)
;;     23023698 (in bt_smp_start_security)
;;     230236A4 (in bt_smp_start_security)
;;     230236AE (in bt_smp_start_security)
;;     230236EE (in bt_smp_start_security)
;;     23023764 (in bt_smp_update_keys)
;;     230237B2 (in bt_smp_update_keys)
;;     23023808 (in bt_smp_update_keys)
;;     23023822 (in bt_smp_update_keys)
atomic_test_bit proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,00000000230254AC
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	sra	a0,a0,a1
	c.andi	a0,00000001
	c.addi16sp	00000020
	c.jr	ra

;; smp_reset: 230209A6
;;   Called from:
;;     23020A36 (in smp_pairing_complete)
;;     230212CA (in bt_smp_connected)
;;     230223DE (in bt_smp_encrypt_change)
;;     23023218 (in bt_smp_request_ltk)
smp_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.lw	a0,0(s1)
	addi	a0,a0,+00000184
	jal	ra,0000000023025F66
	addi	s2,s0,+00000098
	c.li	a1,00000000
	sb	zero,s0,+000000A0
	c.mv	a0,s2
	jal	ra,00000000230254B0
	c.li	a1,00000000
	addi	a0,s0,+0000009C
	jal	ra,00000000230254B0
	lbu	a5,s1,+00000009
	lbu	a4,s1,+0000000A
	beq	a4,a5,00000000230209E6

l230209E2:
	sb	a5,s1,+0000000A

l230209E6:
	lbu	a5,s1,+00000003
	c.li	a1,0000000B
	c.beqz	a5,00000000230209F0

l230209EE:
	c.li	a1,00000001

l230209F0:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.mv	a0,s2
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023020984

;; smp_pairing_complete: 23020A00
;;   Called from:
;;     23021014 (in smp_pairing_failed)
;;     2302108C (in smp_timeout)
;;     23021BC0 (in smp_signing_info)
;;     23021C84 (in smp_master_ident)
;;     2302214E (in smp_check_complete.part.16)
;;     230221AE (in smp_error)
;;     23022468 (in bt_smp_encrypt_change)
;;     23022A88 (in smp_ident_addr_info)
smp_pairing_complete proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	lui	s2,0004201A
	addi	a0,a0,+0000009C
	c.bnez	a1,0000000023020A3A

l23020A16:
	c.li	a1,0000000C
	jal	ra,000000002302098E
	lw	a5,s2,+000004D4
	c.beqz	a5,0000000023020A2A

l23020A22:
	c.lw	a5,24(a5)
	sltu	a1,zero,a0
	c.bnez	a5,0000000023020A72

l23020A2A:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,00000000230209A6

l23020A3A:
	c.addi	a1,FFFFFFFF
	andi	a1,a1,+000000FF
	c.li	a5,0000000D
	c.li	s1,00000008
	bltu	a5,a1,0000000023020A56

l23020A48:
	lui	a5,00023075
	addi	a5,a5,+000004C4
	c.add	a1,a5
	lbu	s1,a1,+00000000

l23020A56:
	c.li	a1,00000002
	jal	ra,000000002302098E
	c.bnez	a0,0000000023020A66

l23020A5E:
	c.lw	s0,0(a0)
	c.mv	a1,s1
	jal	ra,0000000023026C4C

l23020A66:
	lw	a5,s2,+000004D4
	c.beqz	a5,0000000023020A2A

l23020A6C:
	c.lw	a5,28(a5)
	c.beqz	a5,0000000023020A2A

l23020A70:
	c.mv	a1,s1

l23020A72:
	c.lw	s0,0(a0)
	c.jalr	a5
	c.j	0000000023020A2A

;; bt_smp_aes_cmac: 23020A78
;;   Called from:
;;     23020B1C (in smp_sign_buf)
;;     23020BAA (in smp_f4)
;;     23020CAE (in smp_f5)
;;     23020D04 (in smp_f5)
;;     23020D22 (in smp_f5)
;;     23020DE8 (in smp_f6)
;;     23020E50 (in smp_g2)
bt_smp_aes_cmac proc
	c.addi16sp	FFFFFEE0
	sw	s1,sp,+00000114
	sw	s2,sp,+00000110
	c.mv	s1,a1
	c.mv	s2,a2
	c.mv	a1,a0
	c.addi4spn	a2,00000060
	c.addi4spn	a0,00000008
	sw	s0,sp,+00000118
	sw	ra,sp,+0000011C
	c.mv	s0,a3
	jal	ra,0000000023026142
	c.beqz	a0,0000000023020AB4

l23020A9C:
	c.mv	a2,s2
	c.mv	a1,s1
	c.addi4spn	a0,00000008
	jal	ra,00000000230261AC
	c.beqz	a0,0000000023020AB4

l23020AA8:
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	jal	ra,000000002302629E
	c.li	a5,00000000
	c.bnez	a0,0000000023020AB6

l23020AB4:
	c.li	a5,FFFFFFFB

l23020AB6:
	lw	ra,sp,+0000011C
	lw	s0,sp,+00000118
	lw	s1,sp,+00000114
	lw	s2,sp,+00000110
	c.mv	a0,a5
	c.addi16sp	00000120
	c.jr	ra

;; smp_sign_buf: 23020ACC
;;   Called from:
;;     2302329C (in bt_smp_sign_verify)
;;     23023362 (in bt_smp_sign)
smp_sign_buf proc
	c.addi16sp	FFFFFFB0
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	add	s1,a1,a2
	c.swsp	s3,0000009C
	lbu	a4,s1,+00000001
	lbu	a5,s1,+00000000
	addi	s0,a2,+00000004
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,s1,+00000002
	c.mv	s2,a1
	c.mv	s3,a0
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,s1,+00000003
	c.mv	a1,s0
	c.mv	a0,s2
	c.slli	a5,18
	c.or	a5,a4
	c.swsp	a5,00000084
	jal	ra,00000000230208F6
	c.mv	a1,s3
	c.li	a2,00000010
	c.addi4spn	a0,00000010
	jal	ra,00000000230208DC
	c.addi4spn	a3,00000020
	c.mv	a2,s0
	c.mv	a1,s2
	c.addi4spn	a0,00000010
	jal	ra,0000000023020A78
	c.mv	s3,a0
	c.beqz	a0,0000000023020B40

l23020B24:
	lui	a0,00023076
	addi	a0,a0,-000006FC
	jal	ra,0000000023003AC6

l23020B30:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.mv	a0,s3
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.addi16sp	00000050
	c.jr	ra

l23020B40:
	c.addi4spn	a0,00000020
	c.li	a1,00000010
	jal	ra,00000000230208F6
	c.li	a2,00000004
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000024
	jal	ra,000000002306CF80
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,00000000230208F6
	c.li	a2,0000000C
	c.addi4spn	a1,00000024
	c.mv	a0,s1
	jal	ra,000000002306CF80
	c.j	0000000023020B30

;; smp_f4: 23020B66
;;   Called from:
;;     230224EC (in smp_send_pairing_confirm)
smp_f4 proc
	c.addi16sp	FFFFFF80
	c.swsp	s0,0000003C
	c.swsp	s2,00000038
	c.mv	s0,a2
	c.mv	s2,a1
	addi	a2,zero,+00000020
	c.mv	a1,a0
	c.addi4spn	a0,0000002C
	c.swsp	ra,000000BC
	c.swsp	a3,00000084
	c.swsp	s1,000000B8
	c.mv	s1,a4
	jal	ra,00000000230208DC
	addi	a2,zero,+00000020
	c.mv	a1,s2
	c.addi4spn	a0,0000004C
	jal	ra,00000000230208DC
	c.lwsp	a2,000000A4
	c.mv	a1,s0
	c.li	a2,00000010
	c.addi4spn	a0,0000001C
	sb	a3,sp,+0000006C
	jal	ra,00000000230208DC
	c.mv	a3,s1
	addi	a2,zero,+00000041
	c.addi4spn	a1,0000002C
	c.addi4spn	a0,0000001C
	jal	ra,0000000023020A78
	c.mv	s0,a0
	c.bnez	a0,0000000023020BBA

l23020BB2:
	c.li	a1,00000010
	c.mv	a0,s1
	jal	ra,00000000230208F6

l23020BBA:
	c.mv	a0,s0
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.addi16sp	00000080
	c.jr	ra

;; sc_smp_check_confirm: 23020BC8
;;   Called from:
;;     23022EEC (in smp_pairing_random)
sc_smp_check_confirm proc
	lbu	a5,a0,+000000A0
	c.li	a4,00000005
	bltu	a4,a5,0000000023020BE2

l23020BD2:
	lui	a4,00023075
	c.slli	a5,02
	addi	a4,a4,+000003EC
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5

l23020BE2:
	c.li	a5,00000008
	c.mv	a0,a5
	c.jr	ra
23020BE8                         83 47 45 17 83 26 05 17         .GE..&..
23020BF0 B3 D6 F6 00 85 8A 93 E6 06 F8 93 F6 F6 0F B7 E7 ................
23020C00 00 42 83 A5 87 18 01 11 22 CC 13 06 F5 0C 2A 84 .B......".....*.
23020C10 0A 87 13 05 F5 0E 06 CE EF F0 FF F4 A1 47 11 E9 .............G..
23020C20 41 46 8A 85 13 05 F4 0A EF C0 04 2D B3 37 A0 00 AF.........-.7..
23020C30 8A 07 F2 40 62 44 3E 85 05 61 82 80 81 46 C1 B7 ...@bD>..a...F..
23020C40 81 47 4D B7                                     .GM.           

;; smp_f5: 23020C44
smp_f5 proc
	c.addi16sp	FFFFFF60
	c.swsp	s0,0000004C
	c.swsp	s6,00000040
	c.mv	s0,a0
	c.swsp	s7,000000BC
	c.mv	s6,a2
	c.mv	s7,a1
	addi	a2,zero,+00000035
	c.li	a1,00000000
	c.addi4spn	a0,00000038
	c.swsp	ra,000000CC
	c.swsp	s1,000000C8
	c.swsp	s2,00000048
	c.mv	s1,a6
	c.swsp	s3,000000C4
	c.swsp	s4,00000044
	c.swsp	s5,000000C0
	c.mv	s4,a4
	c.mv	s5,a3
	c.mv	s3,a5
	jal	ra,000000002306D1BC
	addi	a5,zero,+00000062
	sb	a5,sp,+00000039
	c.lui	a5,00007000
	addi	a5,a5,-0000038C
	c.mv	a1,s0
	sh	a5,sp,+0000003A
	addi	a2,zero,+00000020
	addi	a5,zero,+00000065
	c.addi4spn	a0,00000018
	c.li	s2,00000001
	sb	a5,sp,+0000003C
	sb	s2,sp,+0000006B
	jal	ra,00000000230208DC
	lui	a0,00023075
	c.addi4spn	a3,00000008
	addi	a2,zero,+00000020
	c.addi4spn	a1,00000018
	addi	a0,a0,+000007F0
	jal	ra,0000000023020A78
	c.mv	s0,a0
	c.bnez	a0,0000000023020D32

l23020CB6:
	c.li	a2,00000010
	c.mv	a1,s7
	addi	a0,sp,+0000003D
	jal	ra,00000000230208DC
	c.li	a2,00000010
	c.mv	a1,s6
	addi	a0,sp,+0000004D
	jal	ra,00000000230208DC
	lbu	a5,s5,+00000000
	c.li	a2,00000006
	addi	a1,s5,+00000001
	addi	a0,sp,+0000005E
	sb	a5,sp,+0000005D
	jal	ra,00000000230208DC
	lbu	a5,s4,+00000000
	c.li	a2,00000006
	addi	a1,s4,+00000001
	addi	a0,sp,+00000065
	sb	a5,sp,+00000064
	jal	ra,00000000230208DC
	c.mv	a3,s3
	addi	a2,zero,+00000035
	c.addi4spn	a1,00000038
	c.addi4spn	a0,00000008
	jal	ra,0000000023020A78
	c.mv	s0,a0
	c.bnez	a0,0000000023020D32

l23020D0C:
	c.li	a1,00000010
	c.mv	a0,s3
	jal	ra,00000000230208F6
	c.mv	a3,s1
	addi	a2,zero,+00000035
	c.addi4spn	a1,00000038
	c.addi4spn	a0,00000008
	sb	s2,sp,+00000038
	jal	ra,0000000023020A78
	c.mv	s0,a0
	c.bnez	a0,0000000023020D32

l23020D2A:
	c.li	a1,00000010
	c.mv	a0,s1
	jal	ra,00000000230208F6

l23020D32:
	c.mv	a0,s0
	c.lwsp	t5,00000020
	c.lwsp	s10,00000004
	c.lwsp	s6,00000024
	c.lwsp	s2,00000048
	c.lwsp	a4,00000068
	c.lwsp	a0,00000088
	c.lwsp	t1,000000A8
	c.lwsp	sp,000000C8
	c.lwsp	t4,000001F8
	c.addi16sp	000000A0
	c.jr	ra

;; smp_f6: 23020D4A
smp_f6 proc
	c.addi16sp	FFFFFF80
	c.swsp	s0,0000003C
	c.swsp	s2,00000038
	c.mv	s0,a2
	c.mv	s2,a0
	c.li	a2,00000010
	c.addi4spn	a0,0000002C
	c.swsp	ra,000000BC
	c.swsp	a6,00000000
	c.swsp	a5,00000080
	c.swsp	a4,00000004
	c.swsp	a3,00000084
	c.swsp	s1,000000B8
	c.mv	s1,a7
	jal	ra,00000000230208DC
	c.mv	a1,s0
	c.li	a2,00000010
	c.addi4spn	a0,0000003C
	jal	ra,00000000230208DC
	c.lwsp	a2,000000A4
	c.li	a2,00000010
	c.addi4spn	a0,0000004C
	c.mv	a1,a3
	jal	ra,00000000230208DC
	c.lwsp	s0,000000C4
	c.li	a2,00000003
	c.addi4spn	a0,0000005C
	c.mv	a1,a4
	jal	ra,00000000230208DC
	c.lwsp	tp,000000E4
	c.li	a2,00000006
	c.addi4spn	a0,00000060
	lbu	a4,a5,+00000000
	addi	s0,a5,+00000001
	c.mv	a1,s0
	sb	a4,sp,+0000005F
	jal	ra,000000002306CF80
	c.mv	a1,s0
	c.li	a2,00000006
	c.addi4spn	a0,00000060
	jal	ra,00000000230208DC
	c.lwsp	zero,00000008
	c.li	a2,00000006
	addi	a0,sp,+00000067
	lbu	a5,a6,+00000000
	addi	s0,a6,+00000001
	c.mv	a1,s0
	sb	a5,sp,+00000066
	jal	ra,000000002306CF80
	c.mv	a1,s0
	c.li	a2,00000006
	addi	a0,sp,+00000067
	jal	ra,00000000230208DC
	c.li	a2,00000010
	c.mv	a1,s2
	c.addi4spn	a0,0000001C
	jal	ra,00000000230208DC
	c.mv	a3,s1
	addi	a2,zero,+00000041
	c.addi4spn	a1,0000002C
	c.addi4spn	a0,0000001C
	jal	ra,0000000023020A78
	c.mv	s0,a0
	c.bnez	a0,0000000023020DF8

l23020DF0:
	c.li	a1,00000010
	c.mv	a0,s1
	jal	ra,00000000230208F6

l23020DF8:
	c.mv	a0,s0
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.addi16sp	00000080
	c.jr	ra

;; smp_g2: 23020E06
smp_g2 proc
	c.addi16sp	FFFFFF80
	c.swsp	s1,000000B8
	c.swsp	s2,00000038
	c.mv	s1,a2
	c.mv	s2,a1
	addi	a2,zero,+00000020
	c.mv	a1,a0
	c.addi4spn	a0,00000020
	c.swsp	ra,000000BC
	c.swsp	a3,00000084
	c.swsp	s0,0000003C
	c.mv	s0,a4
	jal	ra,00000000230208DC
	addi	a2,zero,+00000020
	c.mv	a1,s2
	c.addi4spn	a0,00000040
	jal	ra,00000000230208DC
	c.lwsp	a2,000000A4
	c.li	a2,00000010
	c.addi4spn	a0,00000060
	c.mv	a1,a3
	jal	ra,00000000230208DC
	c.mv	a1,s1
	c.li	a2,00000010
	c.addi4spn	a0,00000010
	jal	ra,00000000230208DC
	c.addi4spn	a3,00000010
	addi	a2,zero,+00000050
	c.addi4spn	a1,00000020
	c.mv	a0,a3
	jal	ra,0000000023020A78
	c.mv	s1,a0
	c.bnez	a0,0000000023020E94

l23020E58:
	c.li	a2,00000004
	c.addi4spn	a1,0000001C
	c.mv	a0,s0
	jal	ra,000000002306CF80
	c.lw	s0,0(a3)
	c.lui	a2,00010000
	addi	a2,a2,-00000100
	slli	a4,a3,00000018
	srli	a5,a3,00000018
	c.or	a5,a4
	srli	a4,a3,00000008
	c.and	a4,a2
	c.or	a5,a4
	c.slli	a3,08
	lui	a4,00000FF0
	c.and	a3,a4
	lui	a4,000000F4
	c.or	a5,a3
	addi	a4,a4,+00000240
	and	a5,a5,a4
	c.sw	s0,0(a5)

l23020E94:
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.mv	a0,s1
	c.lwsp	a7,00000158
	c.lwsp	s5,00000134
	c.addi16sp	00000080
	c.jr	ra

;; atomic_test_and_clear_bit: 23020EA2
;;   Called from:
;;     23020FE8 (in smp_pairing_failed)
;;     2302102C (in smp_pairing_failed)
;;     23022208 (in bt_smp_dhkey_ready)
;;     23022218 (in bt_smp_dhkey_ready)
;;     23022346 (in bt_smp_recv)
;;     230233B8 (in bt_smp_auth_passkey_entry)
;;     230233DC (in bt_smp_auth_passkey_entry)
;;     23023478 (in bt_smp_auth_passkey_confirm)
;;     230234EA (in bt_smp_auth_cancel)
;;     23023554 (in bt_smp_auth_pairing_confirm)
atomic_test_and_clear_bit proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	s0,00000001
	sll	s0,s0,a1
	c.srli	a1,00000005
	slli	a5,a1,00000002
	c.add	a0,a5
	xori	a1,s0,-00000001
	c.swsp	ra,00000084
	jal	ra,0000000023025522
	c.and	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	sltu	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; display_passkey: 23020ECC
display_passkey proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a1,00000004
	c.mv	s0,a0
	addi	a0,a0,+00000170
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	jal	ra,0000000023027DC8
	c.li	s1,00000008
	c.bnez	a0,0000000023020F26

l23020EE6:
	lw	a5,s0,+00000170
	lui	a4,000000F4
	addi	a4,a4,+00000240
	and	a5,a5,a4
	lui	s2,0004201A
	sb	zero,s0,+00000174
	c.li	s1,00000000
	sw	a5,s0,+00000170
	lw	a5,s2,+000004D4
	c.beqz	a5,0000000023020F26

l23020F0A:
	c.lw	a5,0(a5)
	c.beqz	a5,0000000023020F26

l23020F0E:
	c.li	a1,0000000A
	addi	a0,s0,+0000009C
	jal	ra,0000000023020984
	lw	a5,s2,+000004D4
	lw	a1,s0,+00000170
	c.lw	s0,0(a0)
	c.lw	a5,0(a5)
	c.jalr	a5

l23020F26:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; update_keys_check: 23020F34
;;   Called from:
;;     2302202C (in smp_pairing_req)
;;     2302282C (in smp_pairing_rsp)
update_keys_check proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,0(s0)
	c.mv	s1,a0
	lw	a5,s0,+0000009C
	c.bnez	a5,0000000023020F56

l23020F46:
	lbu	a0,s0,+00000008
	addi	a1,s0,+00000070
	jal	ra,0000000023023998
	sw	a0,s0,+0000009C

l23020F56:
	lw	a3,s0,+0000009C
	c.bnez	a3,0000000023020F68

l23020F5C:
	c.li	a0,00000001

l23020F5E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23020F68:
	lhu	a4,a3,+0000000A
	andi	a5,a4,+00000024
	c.beqz	a5,0000000023020F5C

l23020F72:
	lbu	a2,s1,+000000A5
	lbu	a5,s1,+000000AC
	bgeu	a2,a5,0000000023020F80

l23020F7E:
	c.mv	a5,a2

l23020F80:
	lbu	a3,a3,+00000008
	andi	a5,a5,+000000FF
	bgeu	a5,a3,0000000023020F90

l23020F8C:
	c.li	a0,00000000
	c.j	0000000023020F5E

l23020F90:
	andi	a4,a4,+00000020
	c.bnez	a4,0000000023020FAC

l23020F96:
	lw	a5,s0,+0000009C
	lbu	a5,a5,+00000009
	c.andi	a5,00000001
	c.beqz	a5,0000000023020F5C

l23020FA2:
	lbu	a0,s1,+000000A0
	sltu	a0,zero,a0
	c.j	0000000023020F5E

l23020FAC:
	c.li	a1,00000005
	addi	a0,s1,+0000009C
	jal	ra,000000002302098E
	c.bnez	a0,0000000023020F96

l23020FB8:
	c.j	0000000023020F8C

;; smp_pairing_failed: 23020FBA
smp_pairing_failed proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lw	s2,a1,+00000008
	c.mv	s0,a0
	lw	s3,a0,+00000000
	lbu	a1,s2,+00000000
	lui	a0,00023076
	addi	a0,a0,-00000760
	jal	ra,0000000023003AC6
	addi	s1,s0,+0000009C
	c.li	a1,00000009
	c.mv	a0,s1
	jal	ra,0000000023020EA2
	c.beqz	a0,0000000023021028

l23020FEE:
	lui	a5,0004201A
	lw	a5,a5,+000004D4
	c.bnez	a5,0000000023021034

l23020FF8:
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,000000002302098E
	c.beqz	a0,000000002302100E

l23021002:
	c.lw	s0,0(a5)
	lw	a0,a5,+0000009C
	c.beqz	a0,000000002302100E

l2302100A:
	jal	ra,0000000023023C66

l2302100E:
	lbu	a1,s2,+00000000
	c.mv	a0,s0
	jal	ra,0000000023020A00
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23021028:
	c.li	a1,0000000A
	c.mv	a0,s1
	jal	ra,0000000023020EA2
	c.bnez	a0,0000000023020FEE

l23021032:
	c.j	0000000023020FF8

l23021034:
	c.lw	a5,16(a5)
	c.beqz	a5,0000000023020FF8

l23021038:
	c.mv	a0,s3
	c.jalr	a5
	c.j	0000000023020FF8

;; smp_timeout: 2302103E
smp_timeout proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.mv	s0,a0
	addi	s2,a0,-00000184
	lui	a0,00023076
	addi	a0,a0,-000006E4
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	addi	s1,s0,-000000E8
	jal	ra,0000000023003AC6
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,000000002302098E
	c.beqz	a0,0000000023021076

l23021068:
	lw	a5,s0,-00000184
	lw	a0,a5,+0000009C
	c.beqz	a0,0000000023021076

l23021072:
	jal	ra,0000000023023C66

l23021076:
	c.mv	a0,s1
	c.li	a1,00000004
	jal	ra,0000000023020984
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.mv	a0,s2
	c.lwsp	zero,00000048
	c.li	a1,00000008
	c.addi	sp,00000010
	jal	zero,0000000023020A00

;; smp_ident_info: 23021090
smp_ident_info proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	addi	a0,a0,+0000009C
	c.li	a1,0000000C
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	jal	ra,000000002302098E
	c.beqz	a0,00000000230210F0

l230210AA:
	c.lw	s0,0(a5)
	lw	s2,s1,+00000008
	c.li	a0,00000002
	lbu	a1,a5,+00000008
	addi	s1,a5,+00000070
	c.mv	a2,s1
	jal	ra,0000000023023B30
	c.bnez	a0,00000000230210E4

l230210C2:
	c.mv	a0,s1
	jal	ra,0000000023025A64
	c.mv	a1,a0
	lui	a0,00023076
	addi	a0,a0,-0000077C
	jal	ra,0000000023003AC6
	c.li	a0,00000008

l230210D8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230210E4:
	c.li	a2,00000010
	c.mv	a1,s2
	addi	a0,a0,+00000026
	jal	ra,000000002306CF80

l230210F0:
	addi	a0,s0,+00000098
	c.li	a1,00000009
	jal	ra,0000000023020984
	c.li	a0,00000000
	c.j	00000000230210D8

;; smp_encrypt_info: 230210FE
smp_encrypt_info proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	addi	a0,a0,+0000009C
	c.li	a1,0000000C
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	jal	ra,000000002302098E
	c.beqz	a0,000000002302115C

l23021118:
	c.lw	s0,0(a5)
	lw	s2,s1,+00000008
	c.li	a0,00000004
	lbu	a1,a5,+00000008
	addi	s1,a5,+00000070
	c.mv	a2,s1
	jal	ra,0000000023023B30
	c.bnez	a0,0000000023021152

l23021130:
	c.mv	a0,s1
	jal	ra,0000000023025A64
	c.mv	a1,a0
	lui	a0,00023076
	addi	a0,a0,-0000077C
	jal	ra,0000000023003AC6
	c.li	a0,00000008

l23021146:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23021152:
	c.li	a2,00000010
	c.mv	a1,s2
	c.addi	a0,00000016
	jal	ra,000000002306CF80

l2302115C:
	addi	a0,s0,+00000098
	c.li	a1,00000007
	jal	ra,0000000023020984
	c.li	a0,00000000
	c.j	0000000023021146

;; legacy_request_tk: 2302116A
;;   Called from:
;;     230220C2 (in smp_pairing_req)
;;     2302287A (in smp_pairing_rsp)
legacy_request_tk proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.lw	a0,0(s1)
	c.mv	s0,a0
	lbu	a0,s1,+00000008
	addi	a1,s1,+00000070
	jal	ra,0000000023023C56
	lbu	a5,s0,+000000A0
	c.beqz	a0,00000000230211A4

l2302118A:
	lbu	a4,a0,+00000009
	c.andi	a4,00000001
	c.beqz	a4,00000000230211A4

l23021192:
	c.bnez	a5,00000000230211A4

l23021194:
	lui	a0,00023075
	addi	a0,a0,+000007A0
	jal	ra,0000000023003AC6

l230211A0:
	c.li	a1,00000008
	c.j	0000000023021214

l230211A4:
	c.li	a4,00000001
	c.mv	a1,a5
	beq	a5,a4,0000000023021222

l230211AC:
	c.beqz	a5,0000000023021214

l230211AE:
	c.li	a4,00000002
	bne	a5,a4,000000002302123C

l230211B4:
	c.li	a1,00000004
	c.addi4spn	a0,0000000C
	jal	ra,0000000023027DC8
	c.li	a1,00000008
	c.bnez	a0,0000000023021214

l230211C0:
	c.lwsp	a2,000000E4
	lui	a4,000000F4
	addi	a4,a4,+00000240
	and	a5,a5,a4
	lui	s2,0004201A
	c.swsp	a5,00000084
	lw	a5,s2,+000004D4
	c.beqz	a5,00000000230211F4

l230211DA:
	c.lw	a5,0(a5)
	c.beqz	a5,00000000230211F4

l230211DE:
	c.li	a1,0000000A
	addi	a0,s0,+0000009C
	jal	ra,0000000023020984
	lw	a5,s2,+000004D4
	c.lwsp	a2,00000064
	c.mv	a0,s1
	c.lw	a5,0(a5)
	c.jalr	a5

l230211F4:
	c.lwsp	a2,000000E4
	slli	a4,a5,00000010
	sb	a5,s0,+000000DF
	c.srli	a4,00000010
	c.srli	a5,00000010
	c.srli	a4,00000008
	sb	a5,s0,+000000E1
	c.srli	a5,00000008
	sb	a4,s0,+000000E0
	sb	a5,s0,+000000E2

l23021212:
	c.li	a1,00000000

l23021214:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.mv	a0,a1
	c.addi16sp	00000020
	c.jr	ra

l23021222:
	addi	a0,s0,+0000009C
	c.li	a1,00000009
	jal	ra,0000000023020984
	lui	a5,0004201A
	lw	a5,a5,+000004D4
	c.mv	a0,s1
	c.lw	a5,4(a5)
	c.jalr	a5
	c.j	0000000023021212

l2302123C:
	lui	a0,00023075
	addi	a0,a0,+000007D0
	jal	ra,0000000023003AC6
	c.j	00000000230211A0

;; bt_smp_disconnected: 2302124A
bt_smp_disconnected proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a0,0(a5)
	addi	s2,a0,+00000184
	c.mv	s0,a0
	c.mv	a0,s2
	lw	s1,a5,+0000009C
	jal	ra,0000000023025F66
	lw	a5,s0,+00000194
	c.beqz	a5,0000000023021272

l2302126C:
	c.mv	a0,s2
	jal	ra,0000000023025ECE

l23021272:
	c.lw	s0,32(a5)
	c.beqz	a5,000000002302127E

l23021276:
	addi	a0,s0,+00000010
	jal	ra,0000000023025ECE

l2302127E:
	c.beqz	s1,0000000023021294

l23021280:
	lhu	a5,s1,+0000000A
	c.beqz	a5,000000002302128E

l23021286:
	lbu	a5,s1,+00000009
	c.andi	a5,00000002
	c.beqz	a5,0000000023021294

l2302128E:
	c.mv	a0,s1
	jal	ra,0000000023023C66

l23021294:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	addi	a2,zero,+000001A8
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,000000002306D1BC

;; bt_smp_connected: 230212AA
bt_smp_connected proc
	c.addi	sp,FFFFFFF0
	lui	a1,00023021
	c.swsp	s0,00000004
	addi	a1,a1,+0000003E
	c.mv	s0,a0
	addi	a0,a0,+00000184
	c.swsp	ra,00000084
	jal	ra,0000000023025EA4
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230209A6

;; get_auth.isra.0: 230212CE
;;   Called from:
;;     23021D90 (in smp_send_pairing_req)
;;     23021F6C (in smp_pairing_req)
;;     2302371E (in bt_smp_start_security)
get_auth.isra.0 proc
	lui	a5,0004200E
	lbu	a5,a5,+0000018C
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	andi	s0,a1,+0000000F
	c.bnez	a5,00000000230212EA

l230212E6:
	andi	s0,a1,+00000007

l230212EA:
	jal	ra,0000000023020918
	c.li	a5,00000003
	beq	a0,a5,0000000023021302

l230212F4:
	lbu	a3,s1,+00000000
	c.li	a4,00000002
	ori	a5,s0,+00000004
	bltu	a4,a3,0000000023021306

l23021302:
	andi	a5,s0,+0000000B

l23021306:
	lui	a4,0004200E
	lbu	a4,a4,-0000044A
	andi	a0,a5,+000000FE
	c.beqz	a4,0000000023021318

l23021314:
	ori	a0,a5,+00000001

l23021318:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; sec_level_reachable.isra.1: 23021322
;;   Called from:
;;     23021D42 (in smp_send_pairing_req)
;;     230236B8 (in bt_smp_start_security)
sec_level_reachable.isra.1 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.li	s1,00000003
	c.mv	s0,a0
	beq	a0,s1,0000000023021370

l23021332:
	sltu	a0,zero,a0
	bgeu	s1,s0,0000000023021396

l2302133A:
	c.li	a5,00000004
	c.li	a0,00000000
	bne	s0,a5,0000000023021396

l23021342:
	jal	ra,0000000023020918
	bne	a0,s1,0000000023021364

l2302134A:
	lui	a5,0004201A
	lw	a5,a5,+000004D4
	c.li	a0,00000000
	c.beqz	a5,000000002302136C

l23021356:
	c.lw	a5,12(a5)
	c.beqz	a5,000000002302136C

l2302135A:
	lui	a5,0004200E
	lbu	a5,a5,+00000184
	c.beqz	a5,000000002302136C

l23021364:
	lui	a5,0004200E
	lbu	a0,a5,+0000018C

l2302136C:
	c.andi	a0,00000001
	c.j	0000000023021396

l23021370:
	jal	ra,0000000023020918
	c.li	a5,00000001
	bne	a0,s0,0000000023021392

l2302137A:
	lui	a5,0004201A
	lw	a4,a5,+000004D4
	c.li	a5,00000000
	c.beqz	a4,0000000023021392

l23021386:
	c.lw	a4,12(a4)
	c.beqz	a4,0000000023021392

l2302138A:
	lui	a5,0004200E
	lbu	a5,a5,+00000184

l23021392:
	andi	a0,a5,+00000001

l23021396:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bt_smp_accept: 230213A0
bt_smp_accept proc
	lui	a5,00042012
	addi	a4,a5,-00000614
	c.lw	a4,0(a3)
	addi	a5,a5,-00000614
	c.beqz	a3,00000000230213D0

l230213B0:
	lw	a4,a4,+000001A8
	c.beqz	a4,00000000230213EC

l230213B6:
	c.mv	a1,a0
	lui	a0,00023075
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000004D4
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000020
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

l230213D0:
	c.li	a4,00000000

l230213D2:
	addi	a3,zero,+000001A8
	add	a4,a4,a3
	c.li	a0,00000000
	c.add	a5,a4
	lui	a4,0004200D
	addi	a4,a4,+0000049C
	c.sw	a5,4(a4)
	c.sw	a1,0(a5)
	c.jr	ra

l230213EC:
	c.li	a4,00000001
	c.j	00000000230213D2

;; smp_keys_check.part.5: 230213F0
;;   Called from:
;;     23023636 (in bt_smp_start_security)
;;     230236F8 (in bt_smp_start_security)
smp_keys_check.part.5 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lw	a5,a0,+0000009C
	c.mv	s0,a0
	c.bnez	a5,0000000023021428

l23021400:
	lbu	a1,a0,+00000008
	addi	s1,a0,+00000070
	c.mv	a2,s1
	addi	a0,zero,+00000020
	jal	ra,0000000023023B2C
	sw	a0,s0,+0000009C
	c.bnez	a0,0000000023021428

l23021418:
	lbu	a1,s0,+00000008
	c.mv	a2,s1
	c.li	a0,00000004
	jal	ra,0000000023023B2C
	sw	a0,s0,+0000009C

l23021428:
	lw	a5,s0,+0000009C
	c.li	a0,00000000
	c.beqz	a5,000000002302144C

l23021430:
	lhu	a4,a5,+0000000A
	andi	a4,a4,+00000024
	c.beqz	a4,000000002302144C

l2302143A:
	lbu	a3,s0,+0000000A
	c.li	a4,00000002
	c.li	a0,00000001
	bgeu	a4,a3,000000002302144C

l23021446:
	lbu	a0,a5,+00000009
	c.andi	a0,00000001

l2302144C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; get_pair_method: 23021456
;;   Called from:
;;     23022022 (in smp_pairing_req)
;;     23022822 (in smp_pairing_rsp)
get_pair_method proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	addi	a0,a0,+0000009C
	c.li	a1,00000005
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	jal	ra,000000002302098E
	c.bnez	a0,00000000230214BA

l23021470:
	c.li	s2,00000004
	bltu	s2,s1,00000000230214AE

l23021476:
	lbu	a0,s0,+000000A4
	lbu	a5,s0,+000000AB
	c.or	a0,a5
	c.andi	a0,00000004
	c.beqz	a0,00000000230214AE

l23021484:
	jal	ra,0000000023020918
	c.li	a5,00000005
	add	s1,s1,a5
	lui	a5,00023075
	addi	a5,a5,+000006F8
	c.add	a5,s1
	c.add	a0,a5
	lbu	a0,a0,+00000000
	bne	a0,s2,00000000230214AE

l230214A2:
	c.lw	s0,0(a5)
	lbu	a0,a5,+00000003
	sltiu	a0,a0,+00000001
	c.addi	a0,00000001

l230214AE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230214BA:
	lbu	a4,s0,+000000A4
	lbu	a3,s0,+000000AB
	and	a5,a4,a3
	c.andi	a5,00000008
	c.beqz	a5,00000000230214DA

l230214CA:
	lbu	a5,s0,+000000A3
	lbu	a2,s0,+000000AA
	c.li	a0,00000005
	c.or	a5,a2
	c.andi	a5,00000001
	c.bnez	a5,00000000230214AE

l230214DA:
	c.li	a5,00000004
	c.li	a0,00000000
	bltu	a5,s1,00000000230214AE

l230214E2:
	or	a0,a4,a3
	c.andi	a0,00000004
	c.beqz	a0,00000000230214AE

l230214EA:
	jal	ra,0000000023020918
	c.li	a5,00000005
	add	s1,s1,a5
	lui	a5,00023075
	addi	a5,a5,+00000714
	c.add	a5,s1
	c.add	a0,a5
	lbu	a0,a0,+00000000
	c.j	00000000230214AE

;; smp_create_pdu.isra.7: 23021506
;;   Called from:
;;     23021592 (in sc_smp_send_dhkey_check)
;;     230218BC (in smp_send_pairing_random)
;;     23021900 (in sc_send_public_key)
;;     23021962 (in send_pairing_rsp)
;;     23021A04 (in bt_smp_distribute_keys)
;;     23021A24 (in bt_smp_distribute_keys)
;;     23021A72 (in bt_smp_distribute_keys)
;;     23021D78 (in smp_send_pairing_req)
;;     230221B6 (in smp_error)
;;     230224C2 (in smp_send_pairing_confirm)
;;     23022608 (in legacy_send_pairing_confirm)
;;     23023704 (in bt_smp_start_security)
smp_create_pdu.isra.7 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	addi	s1,a0,+0000009C
	c.swsp	s2,00000000
	c.mv	a0,s1
	c.mv	s2,a1
	c.li	a1,00000004
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002302098E
	c.li	a2,00000000
	c.bnez	a0,0000000023021528

l23021522:
	c.lui	a2,00007000
	addi	a2,a2,+00000530

l23021528:
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,000000002301F926
	c.mv	s0,a0
	c.bnez	a0,000000002302154A

l23021534:
	c.li	a1,00000004
	c.mv	a0,s1
	jal	ra,0000000023020984

l2302153C:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2302154A:
	c.li	a1,00000001
	c.addi	a0,00000008
	jal	ra,000000002302586C
	sb	s2,a0,+00000000
	c.j	000000002302153C

;; smp_send.isra.9: 23021558
;;   Called from:
;;     230215B0 (in sc_smp_send_dhkey_check)
;;     230218DC (in smp_send_pairing_random)
;;     2302193E (in sc_send_public_key)
;;     23021982 (in send_pairing_rsp)
;;     23021A6A (in bt_smp_distribute_keys)
;;     23021AAE (in bt_smp_distribute_keys)
;;     23021B28 (in bt_smp_distribute_keys)
;;     23021DDE (in smp_send_pairing_req)
;;     23022500 (in smp_send_pairing_confirm)
;;     23022648 (in legacy_send_pairing_confirm)
smp_send.isra.9 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.mv	a3,a2
	c.li	a4,00000000
	c.mv	a2,a1
	c.li	a1,00000006
	jal	ra,000000002301F92C
	addi	a0,s0,+00000184
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lui	a1,00007000
	addi	a1,a1,+00000530
	c.addi	sp,00000010
	jal	zero,0000000023025FC2

;; sc_smp_send_dhkey_check: 23021582
sc_smp_send_dhkey_check proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.mv	s2,a1
	c.li	a1,0000000D
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s1,a0
	jal	ra,0000000023021506
	c.beqz	a0,00000000230215C2

l23021598:
	c.mv	s0,a0
	c.li	a1,00000010
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.li	a2,00000010
	c.mv	a1,s2
	jal	ra,000000002306CF80
	c.mv	a0,s1
	c.li	a2,00000000
	c.mv	a1,s0
	jal	ra,0000000023021558
	c.li	a0,00000000

l230215B6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230215C2:
	c.li	a0,00000008
	c.j	00000000230215B6

;; compute_and_send_master_dhcheck: 230215C6
;;   Called from:
;;     2302228A (in bt_smp_dhkey_ready)
;;     230234B6 (in bt_smp_auth_passkey_confirm)
compute_and_send_master_dhcheck proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.li	a2,00000010
	c.mv	s0,a0
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	jal	ra,000000002306D1BC
	lbu	a5,s0,+000000A0
	c.li	a4,00000005
	bltu	a4,a5,000000002302162E

l230215E8:
	lui	a4,00023075
	c.slli	a5,02
	addi	a4,a4,+00000404
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
230215F8                         11 46 93 05 04 17 08 08         .F......
23021600 EF B0 14 18 14 40 13 09 F4 0B 93 09 F4 0C 93 04 .....@..........
23021610 F4 15 13 87 E6 07 13 08 F4 0D A6 87 93 86 76 07 ..............v.
23021620 4E 86 CA 85 13 05 F4 12 EF F0 CF E1 01 C9       N............. 

l2302162E:
	c.li	a0,00000008
	c.j	000000002302166C
23021632       83 25 C4 17 F9 D5 41 46 D1 B7 1C 40 8A 88   .%....AF...@..
23021640 13 07 24 0A 13 88 E7 07 14 08 93 87 77 07 4E 86 ..$.........w.N.
23021650 CA 85 26 85 EF F0 6F EF 79 F9 B5 45 13 05 84 09 ..&...o.y..E....
23021660 EF F0 4F B2 8A 85 22 85 EF F0 BF F1             ..O...".....   

l2302166C:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

;; compute_and_check_and_send_slave_dhcheck: 2302167A
;;   Called from:
;;     230218A8 (in smp_dhkey_check)
;;     230222A4 (in bt_smp_dhkey_ready)
;;     230234C6 (in bt_smp_auth_passkey_confirm)
compute_and_check_and_send_slave_dhcheck proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.li	a2,00000010
	c.mv	s0,a0
	c.li	a1,00000000
	c.addi4spn	a0,00000020
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	jal	ra,000000002306D1BC
	lbu	a5,s0,+000000A0
	c.li	a4,00000005
	bltu	a4,a5,00000000230216E2

l2302169C:
	lui	a4,00023075
	c.slli	a5,02
	addi	a4,a4,+0000041C
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
230216AC                                     11 46 93 05             .F..
230216B0 04 17 08 10 EF B0 D4 0C 14 40 13 09 F4 0C 93 09 .........@......
230216C0 F4 0B 93 04 F4 15 13 87 E6 07 13 08 F4 0D A6 87 ................
230216D0 93 86 76 07 4E 86 CA 85 13 05 F4 12 EF F0 8F D6 ..v.N...........
230216E0 01 C9                                           ..             

l230216E2:
	c.li	s1,00000008
	c.j	000000002302176C
230216E6                   83 25 C4 17 F9 D5 41 46 D1 B7       .%....AF..
230216F0 1C 40 93 08 01 01 13 07 94 0A 13 88 77 07 14 10 .@..........w...
23021700 93 87 E7 07 4A 86 CE 85 26 85 EF F0 0F E4 71 F9 ....J...&.....q.
23021710 03 47 04 0A 95 47 63 19 F7 00 83 25 84 17 41 46 .G...Gc....%..AF
23021720 B1 CD 08 10 EF B0 D4 05 1C 40 8A 88 13 07 24 0A .........@....$.
23021730 13 88 E7 07 14 10 93 87 77 07 4E 86 CA 85 26 85 ........w.N...&.
23021740 EF F0 AF E0 59 FD 41 46 8A 85 13 05 F4 14 EF B0 ....Y.AF........
23021750 A4 7A AD 44 01 ED 0C 08 22 85 EF F0 9F E2 AA 84 .z.D....".......
23021760 11 E5 85 45 13 05 C4 09 EF F0 CF A1             ...E........   

l2302176C:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.mv	a0,s1
	c.lwsp	ra,00000048
	c.lwsp	t0,00000024
	c.lwsp	t3,00000178
	c.addi16sp	00000050
	c.jr	ra
2302177C                                     81 45 08 10             .E..
23021780 EF B0 D4 23 55 B7                               ...#U.         

;; smp_dhkey_check: 23021786
smp_dhkey_check proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.lw	a0,0(a5)
	c.mv	s0,a0
	lw	s2,a1,+00000008
	lbu	s1,a5,+00000003
	c.bnez	s1,0000000023021866

l2302179E:
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,00000030
	jal	ra,000000002306D1BC
	lbu	a5,s0,+000000A0
	c.li	a4,00000005
	bltu	a4,a5,00000000230217F4

l230217B2:
	lui	a4,00023075
	c.slli	a5,02
	addi	a4,a4,+00000434
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
230217C2       11 46 93 05 04 17 08 18 EF B0 64 7B 1C 40   .F........d{.@
230217D0 93 08 01 02 13 07 94 0A 13 88 77 07 14 18 93 87 ..........w.....
230217E0 E7 07 13 06 F4 0B 93 05 F4 0C 13 05 F4 15 EF F0 ................
230217F0 CF D5 01 C9                                     ....           

l230217F4:
	c.li	s1,00000008
	c.j	0000000023021854
230217F8                         83 25 84 17 E9 D9 41 46         .%....AF
23021800 E1 B7 41 46 CA 85 08 10 EF B0 04 6F 39 E9 83 47 ..AF.......o9..G
23021810 54 0A 03 47 C4 0A 63 F3 E7 00 3E 87 13 77 F7 0F T..G..c...>..w..
23021820 09 46 81 45 48 08 3A C6 EF B0 54 19 21 46 81 45 .F.EH.:...T.!F.E
23021830 28 08 EF B0 B4 18 32 47 08 40 93 06 F4 0D 50 08 (.....2G.@....P.
23021840 2C 08 EF 50 C0 35 E3 47 05 FA 85 45 13 05 C4 09 ,..P.5.G...E....
23021850 EF F0 4F 93                                     ..O.           

l23021854:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.mv	a0,s1
	c.lwsp	ra,00000048
	c.lwsp	t0,00000024
	c.addi16sp	00000050
	c.jr	ra
23021862       AD 44 C5 BF                                 .D..         

l23021866:
	c.li	a5,00000001
	bne	s1,a5,0000000023021898

l2302186C:
	addi	s1,a0,+0000009C
	c.lui	a1,FFFF8000
	c.addi	a1,FFFFFFFF
	c.mv	a0,s1
	jal	ra,0000000023025522
	c.mv	a1,s2
	c.li	a2,00000010
	addi	a0,s0,+0000014F
	jal	ra,000000002306CF80
	c.li	a1,00000007
	c.mv	a0,s1
	jal	ra,000000002302098E
	c.beqz	a0,000000002302189C

l23021890:
	c.li	a1,00000008
	c.mv	a0,s1
	jal	ra,0000000023020984

l23021898:
	c.li	s1,00000000
	c.j	0000000023021854

l2302189C:
	c.li	a1,00000009
	c.mv	a0,s1
	jal	ra,000000002302098E
	c.bnez	a0,0000000023021890

l230218A6:
	c.mv	a0,s0
	jal	ra,000000002302167A
	c.mv	s1,a0
	c.j	0000000023021854

;; smp_send_pairing_random: 230218B0
;;   Called from:
;;     230226FA (in smp_pairing_confirm)
;;     23022EDE (in smp_pairing_random)
smp_send_pairing_random proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s1,a0
	jal	ra,0000000023021506
	c.beqz	a0,00000000230218EC

l230218C2:
	c.mv	s0,a0
	c.li	a1,00000010
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.li	a2,00000010
	addi	a1,s1,+000000BF
	jal	ra,000000002306CF80
	c.mv	a0,s1
	c.li	a2,00000000
	c.mv	a1,s0
	jal	ra,0000000023021558
	c.li	a0,00000000

l230218E2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230218EC:
	c.li	a0,00000008
	c.j	00000000230218E2

;; sc_send_public_key: 230218F0
;;   Called from:
;;     2302293A (in smp_pairing_rsp)
;;     23022CA2 (in smp_public_key)
;;     23022D04 (in bt_smp_pkey_ready)
;;     23022D36 (in bt_smp_pkey_ready)
;;     23022D6A (in bt_smp_pkey_ready)
;;     23022D88 (in bt_smp_pkey_ready)
;;     230235A0 (in bt_smp_auth_pairing_confirm)
sc_send_public_key proc
	c.addi	sp,FFFFFFE0
	c.li	a1,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.mv	s2,a0
	jal	ra,0000000023021506
	c.beqz	a0,0000000023021952

l23021906:
	c.mv	s1,a0
	addi	a1,zero,+00000040
	c.addi	a0,00000008
	lui	s0,0004200E
	jal	ra,000000002302586C
	addi	s0,s0,+00000188
	c.lw	s0,0(a1)
	addi	a2,zero,+00000020
	c.mv	s3,a0
	jal	ra,000000002306CF80
	c.lw	s0,0(a1)
	addi	a2,zero,+00000020
	addi	a0,s3,+00000020
	addi	a1,a1,+00000020
	jal	ra,000000002306CF80
	c.mv	a0,s2
	c.li	a2,00000000
	c.mv	a1,s1
	jal	ra,0000000023021558
	c.li	a0,00000000

l23021944:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23021952:
	c.li	a0,00000008
	c.j	0000000023021944

;; send_pairing_rsp: 23021956
;;   Called from:
;;     2302209E (in smp_pairing_req)
;;     23022104 (in smp_pairing_req)
;;     230235BA (in bt_smp_auth_pairing_confirm)
;;     230235CA (in bt_smp_auth_pairing_confirm)
send_pairing_rsp proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000002
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s1,a0
	jal	ra,0000000023021506
	c.beqz	a0,0000000023021992

l23021968:
	c.mv	s0,a0
	c.li	a1,00000006
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.li	a2,00000006
	addi	a1,s1,+000000A9
	jal	ra,000000002306CF80
	c.mv	a0,s1
	c.li	a2,00000000
	c.mv	a1,s0
	jal	ra,0000000023021558
	c.li	a0,00000000

l23021988:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23021992:
	c.li	a0,00000008
	c.j	0000000023021988

;; bt_smp_distribute_keys: 23021996
;;   Called from:
;;     23021BB4 (in smp_signing_info)
;;     23021C78 (in smp_master_ident)
;;     2302244C (in bt_smp_encrypt_change)
;;     23022A7C (in smp_ident_addr_info)
bt_smp_distribute_keys proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.mv	s0,a0
	c.lw	a0,0(a0)
	lw	s2,a0,+0000009C
	bne	s2,zero,00000000230219DC

l230219B2:
	addi	a0,a0,+00000070
	jal	ra,0000000023025A64
	c.mv	a1,a0
	lui	a0,00023075
	addi	a0,a0,+000004FC
	jal	ra,0000000023003AC6

l230219C8:
	c.li	a0,00000008

l230219CA:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

l230219DC:
	addi	s3,s0,+0000009C
	c.li	a1,00000005
	c.mv	a0,s3
	jal	ra,000000002302098E
	c.bnez	a0,0000000023021A18

l230219EA:
	lbu	a5,s0,+00000180
	c.andi	a5,00000001
	c.beqz	a5,0000000023021A18

l230219F2:
	c.lw	s0,0(a5)
	c.li	a1,0000001A
	c.addi4spn	a0,00000004
	lw	s1,a5,+0000009C
	jal	ra,0000000023027DC8
	c.li	a1,00000006
	c.mv	a0,s0
	jal	ra,0000000023021506
	c.mv	s4,a0
	c.bnez	a0,0000000023021A3A

l23021A0C:
	lui	a0,00023075
	addi	a0,a0,+00000514

l23021A14:
	jal	ra,0000000023003AC6

l23021A18:
	lbu	a0,s0,+00000180
	c.andi	a0,00000004
	c.beqz	a0,00000000230219CA

l23021A20:
	c.li	a1,0000000A
	c.mv	a0,s0
	jal	ra,0000000023021506
	c.mv	s1,a0
	c.bnez	a0,0000000023021AEA

l23021A2C:
	lui	a0,00023075
	addi	a0,a0,+0000056C
	jal	ra,0000000023003AC6
	c.j	00000000230219C8

l23021A3A:
	c.li	a1,00000010
	c.addi	a0,00000008
	jal	ra,000000002302586C
	lbu	a2,s1,+00000008
	c.addi4spn	a1,00000004
	c.mv	s5,a0
	jal	ra,000000002306CF80
	lbu	a0,s1,+00000008
	c.li	a5,0000000F
	bltu	a5,a0,0000000023021A64

l23021A58:
	c.li	a2,00000010
	c.sub	a2,a0
	c.li	a1,00000000
	c.add	a0,s5
	jal	ra,000000002306D1BC

l23021A64:
	c.mv	a1,s4
	c.li	a2,00000000
	c.mv	a0,s0
	jal	ra,0000000023021558
	c.li	a1,00000007
	c.mv	a0,s0
	jal	ra,0000000023021506
	c.mv	s4,a0
	c.bnez	a0,0000000023021A84

l23021A7A:
	lui	a0,00023075
	addi	a0,a0,+00000540
	c.j	0000000023021A14

l23021A84:
	c.li	a1,0000000A
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.mv	s5,a0
	c.li	a2,00000008
	c.addi4spn	a1,00000014
	c.addi	a0,00000002
	jal	ra,000000002306CF80
	c.li	a2,00000002
	c.addi4spn	a1,0000001C
	c.mv	a0,s5
	jal	ra,000000002306CF80
	lui	a2,00023022
	c.mv	a1,s4
	c.mv	a0,s0
	addi	a2,a2,+00000512
	jal	ra,0000000023021558
	c.li	a1,0000000C
	c.mv	a0,s3
	jal	ra,000000002302098E
	c.beqz	a0,0000000023021A18

l23021ABC:
	c.mv	a0,s1
	c.li	a1,00000001
	jal	ra,0000000023023C5A
	c.addi4spn	a1,00000004
	c.li	a2,00000010
	addi	a0,s1,+0000006E
	jal	ra,000000002306CF80
	c.addi4spn	a1,00000014
	c.li	a2,00000008
	addi	a0,s1,+00000064
	jal	ra,000000002306CF80
	c.li	a2,00000002
	c.addi4spn	a1,0000001C
	addi	a0,s1,+0000006C
	jal	ra,000000002306CF80
	c.j	0000000023021A18

l23021AEA:
	c.li	a1,00000010
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.li	a1,00000010
	c.mv	s4,a0
	jal	ra,0000000023027DC8
	c.li	a1,0000000C
	c.mv	a0,s3
	jal	ra,000000002302098E
	c.beqz	a0,0000000023021B1C

l23021B04:
	c.li	a1,00000008
	c.mv	a0,s2
	jal	ra,0000000023023C5A
	c.li	a2,00000010
	c.mv	a1,s4
	addi	a0,s2,+0000003C
	jal	ra,000000002306CF80
	sw	zero,s2,+0000004C

l23021B1C:
	lui	a2,00023022
	c.mv	a0,s0
	addi	a2,a2,+0000015A
	c.mv	a1,s1
	jal	ra,0000000023021558
	c.li	a0,00000000
	c.j	00000000230219CA

;; smp_signing_info: 23021B30
smp_signing_info proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.mv	s0,a0
	c.mv	s2,a1
	c.lw	a0,0(s1)
	c.li	a1,0000000C
	addi	a0,a0,+0000009C
	jal	ra,000000002302098E
	c.beqz	a0,0000000023021B94

l23021B4E:
	lbu	a1,s1,+00000008
	lw	s3,s2,+00000008
	addi	s2,s1,+00000070
	c.mv	a2,s2
	c.li	a0,00000010
	jal	ra,0000000023023B30
	c.bnez	a0,0000000023021B88

l23021B64:
	c.mv	a0,s2
	jal	ra,0000000023025A64
	c.mv	a1,a0
	lui	a0,00023076
	addi	a0,a0,-0000077C
	jal	ra,0000000023003AC6
	c.li	a0,00000008

l23021B7A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23021B88:
	c.li	a2,00000010
	c.mv	a1,s3
	addi	a0,a0,+00000050
	jal	ra,000000002306CF80

l23021B94:
	lbu	a5,s0,+00000181
	andi	a5,a5,+000000FB
	sb	a5,s0,+00000181
	lbu	a4,s1,+00000003
	c.or	a5,a4
	c.beqz	a5,0000000023021BB2

l23021BA8:
	lhu	a5,s0,+00000180
	c.beqz	a5,0000000023021BBC

l23021BAE:
	c.li	a0,00000000
	c.j	0000000023021B7A

l23021BB2:
	c.mv	a0,s0
	jal	ra,0000000023021996
	c.beqz	a0,0000000023021BA8

l23021BBA:
	c.j	0000000023021B7A

l23021BBC:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023020A00
	c.j	0000000023021BAE

;; smp_master_ident: 23021BC6
smp_master_ident proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s0,a0
	c.mv	s2,a1
	c.lw	a0,0(s1)
	c.li	a1,0000000C
	addi	a0,a0,+0000009C
	jal	ra,000000002302098E
	c.beqz	a0,0000000023021C46

l23021BE6:
	lbu	a1,s1,+00000008
	addi	s4,s1,+00000070
	c.mv	a2,s4
	c.li	a0,00000004
	lw	s3,s2,+00000008
	jal	ra,0000000023023B30
	c.mv	s2,a0
	c.bnez	a0,0000000023021C24

l23021BFE:
	c.mv	a0,s4
	jal	ra,0000000023025A64
	c.mv	a1,a0
	lui	a0,00023076
	addi	a0,a0,-0000077C
	jal	ra,0000000023003AC6
	c.li	a0,00000008

l23021C14:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23021C24:
	c.li	a2,00000002
	c.mv	a1,s3
	c.addi	a0,00000014
	jal	ra,000000002306CF80
	c.li	a2,00000008
	addi	a1,s3,+00000002
	addi	a0,s2,+0000000C
	jal	ra,000000002306CF80
	lbu	a5,s0,+00000181
	c.andi	a5,FFFFFFFE
	sb	a5,s0,+00000181

l23021C46:
	lbu	a5,s0,+00000181
	c.li	a1,00000008
	andi	a4,a5,+00000002
	c.bnez	a4,0000000023021C58

l23021C52:
	c.andi	a5,00000004
	c.beqz	a5,0000000023021C60

l23021C56:
	c.li	a1,0000000A

l23021C58:
	addi	a0,s0,+00000098
	jal	ra,0000000023020984

l23021C60:
	lbu	a5,s1,+00000003
	c.beqz	a5,0000000023021C70

l23021C66:
	lhu	a5,s0,+00000180
	c.beqz	a5,0000000023021C80

l23021C6C:
	c.li	a0,00000000
	c.j	0000000023021C14

l23021C70:
	lbu	a5,s0,+00000181
	c.bnez	a5,0000000023021C66

l23021C76:
	c.mv	a0,s0
	jal	ra,0000000023021996
	c.beqz	a0,0000000023021C66

l23021C7E:
	c.j	0000000023021C14

l23021C80:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023020A00
	c.j	0000000023021C6C

;; smp_init: 23021C8A
;;   Called from:
;;     23021D50 (in smp_send_pairing_req)
;;     23022050 (in smp_pairing_req)
;;     230236DA (in bt_smp_start_security)
smp_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	addi	s1,a0,+00000098
	c.swsp	s0,00000004
	addi	a2,zero,+000000EC
	c.mv	s0,a0
	c.li	a1,00000000
	c.mv	a0,s1
	c.swsp	ra,00000084
	jal	ra,000000002306D1BC
	addi	a0,s0,+000000BF
	c.li	a1,00000010
	jal	ra,0000000023027DC8
	c.li	s0,00000008
	c.bnez	a0,0000000023021CD8

l23021CB2:
	c.li	a1,00000005
	c.mv	s0,a0
	c.mv	a0,s1
	jal	ra,0000000023020984
	jal	ra,000000002301F48C
	lui	a5,0004200E
	sw	a0,a5,+00000188
	lui	a0,0004201A
	c.li	a2,00000001
	c.li	a1,00000000
	addi	a0,a0,+00000458
	jal	ra,000000002302517E

l23021CD8:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; smp_send_pairing_req: 23021CE4
;;   Called from:
;;     23021E56 (in smp_security_request)
;;     23023630 (in bt_smp_start_security)
smp_send_pairing_req proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.mv	s3,a0
	jal	ra,000000002302095E
	addi	s1,zero,-00000039
	c.beqz	a0,0000000023021D1E

l23021D00:
	addi	s4,a0,+0000009C
	c.mv	s0,a0
	c.li	a1,00000004
	c.mv	a0,s4
	jal	ra,000000002302098E
	c.li	s1,FFFFFFFB
	c.bnez	a0,0000000023021D1E

l23021D12:
	c.li	a1,00000003
	c.mv	a0,s4
	jal	ra,000000002302098E
	c.beqz	a0,0000000023021D32

l23021D1C:
	c.li	s1,FFFFFFF0

l23021D1E:
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

l23021D32:
	c.li	a1,00000001
	c.mv	a0,s4
	jal	ra,000000002302098E
	c.bnez	a0,0000000023021D1C

l23021D3C:
	lbu	a0,s3,+0000000A
	c.li	s1,FFFFFFEA
	jal	ra,0000000023021322
	c.beqz	a0,0000000023021D1E

l23021D48:
	lw	a5,s3,+0000009C
	c.beqz	a5,0000000023021D5E

l23021D4E:
	c.mv	a0,s0
	jal	ra,0000000023021C8A
	c.mv	s1,a0
	c.beqz	a0,0000000023021D74

l23021D58:
	addi	s1,zero,-00000037
	c.j	0000000023021D1E

l23021D5E:
	lbu	a0,s3,+00000008
	addi	a1,s3,+00000070
	c.li	s1,FFFFFFF4
	jal	ra,0000000023023998
	sw	a0,s3,+0000009C
	c.bnez	a0,0000000023021D4E

l23021D72:
	c.j	0000000023021D1E

l23021D74:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023021506
	c.mv	s5,a0
	c.beqz	a0,0000000023021D58

l23021D80:
	c.li	a1,00000006
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.mv	s2,a0
	c.li	a1,00000009
	addi	a0,s3,+0000000A
	jal	ra,00000000230212CE
	sb	a0,s2,+00000002
	jal	ra,0000000023020918
	lui	a5,0004200E
	lbu	a5,a5,+00000184
	sb	a0,s2,+00000000
	c.mv	a1,s2
	sb	a5,s2,+00000001
	c.li	a5,00000010
	sb	a5,s2,+00000003
	c.li	a5,00000005
	sb	a5,s2,+00000004
	c.li	a5,00000007
	sb	a5,s2,+00000005
	addi	a5,zero,+00000705
	sh	a5,s0,+00000180
	c.li	a5,00000001
	sb	a5,s0,+000000A1
	c.li	a2,00000006
	addi	a0,s0,+000000A2
	jal	ra,000000002306CF80
	c.li	a2,00000000
	c.mv	a1,s5
	c.mv	a0,s0
	jal	ra,0000000023021558
	addi	s0,s0,+00000098
	c.mv	a0,s0
	c.li	a1,00000002
	jal	ra,0000000023020984
	c.mv	a0,s0
	c.li	a1,0000000B
	jal	ra,0000000023020984
	c.li	a1,00000003
	c.mv	a0,s4
	jal	ra,0000000023020984
	c.j	0000000023021D1E

;; smp_security_request: 23021E00
smp_security_request proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	addi	s1,a0,+0000009C
	c.lw	a0,0(s0)
	lw	s2,a1,+00000008
	c.mv	a0,s1
	c.li	a1,00000003
	jal	ra,000000002302098E
	c.beqz	a0,0000000023021E24

l23021E20:
	c.li	a0,00000000
	c.j	0000000023021EEC

l23021E24:
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,000000002302098E
	c.bnez	a0,0000000023021E20

l23021E2E:
	lui	a4,0004200E
	lbu	a5,s2,+00000000
	lbu	a4,a4,+0000018C
	andi	s2,a5,+00000007
	c.beqz	a4,0000000023021E44

l23021E40:
	andi	s2,a5,+0000000F

l23021E44:
	lw	a5,s0,+0000009C
	c.beqz	a5,0000000023021E68

l23021E4A:
	lhu	a5,a5,+0000000A
	andi	a5,a5,+00000024
	c.bnez	a5,0000000023021E90

l23021E54:
	c.mv	a0,s0
	jal	ra,0000000023021CE4
	blt	a0,zero,0000000023021EEA

l23021E5E:
	c.li	a1,0000000E

l23021E60:
	c.mv	a0,s1
	jal	ra,0000000023020984
	c.j	0000000023021E20

l23021E68:
	lbu	a1,s0,+00000008
	addi	s3,s0,+00000070
	c.mv	a2,s3
	addi	a0,zero,+00000020
	jal	ra,0000000023023B2C
	sw	a0,s0,+0000009C
	c.bnez	a0,0000000023021E90

l23021E80:
	lbu	a1,s0,+00000008
	c.mv	a2,s3
	c.li	a0,00000004
	jal	ra,0000000023023B2C
	sw	a0,s0,+0000009C

l23021E90:
	lw	a1,s0,+0000009C
	c.beqz	a1,0000000023021E54

l23021E96:
	andi	a5,s2,+00000004
	c.beqz	a5,0000000023021EBE

l23021E9C:
	lbu	a5,a1,+00000009
	c.andi	a5,00000001
	c.bnez	a5,0000000023021EBE

l23021EA4:
	jal	ra,0000000023020918
	c.li	a5,00000003
	bne	a0,a5,0000000023021E54

l23021EAE:
	lui	a0,00023076
	c.mv	a1,s2
	addi	a0,a0,-00000730
	jal	ra,0000000023003AC6
	c.j	0000000023021E54

l23021EBE:
	andi	s2,s2,+00000008
	beq	s2,zero,0000000023021ED0

l23021EC6:
	lhu	a5,a1,+0000000A
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023021E54

l23021ED0:
	lbu	a4,a1,+00000008
	addi	a3,a1,+00000016
	addi	a2,a1,+00000014
	c.mv	a0,s0
	c.addi	a1,0000000C
	jal	ra,0000000023026B9E
	c.li	a1,00000001
	bge	a0,zero,0000000023021E60

l23021EEA:
	c.li	a0,00000008

l23021EEC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; smp_pairing_req: 23021EFA
smp_pairing_req proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.lw	a1,8(s1)
	c.li	a4,00000009
	lbu	a5,s1,+00000003
	c.addi	a5,FFFFFFF9
	andi	a5,a5,+000000FF
	bgeu	a4,a5,0000000023021F2E

l23021F1A:
	c.li	s1,00000006

l23021F1C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23021F2E:
	lw	s3,a0,+00000000
	c.mv	s0,a0
	lw	a5,s3,+0000009C
	beq	a5,zero,0000000023022036

l23021F3C:
	addi	s2,s0,+0000009C
	c.li	a1,0000000E
	c.mv	a0,s2
	jal	ra,000000002302098E
	beq	a0,zero,000000002302204E

l23021F4C:
	c.li	a5,00000001
	c.li	a2,00000006
	sb	a5,s0,+000000A1
	c.mv	a1,s1
	addi	a0,s0,+000000A2
	jal	ra,000000002306CF80
	c.li	a5,00000002
	sb	a5,s0,+000000A8
	lbu	a1,s1,+00000002
	addi	a0,s3,+0000000A
	jal	ra,00000000230212CE
	sb	a0,s0,+000000AB
	c.mv	s4,a0
	jal	ra,0000000023020918
	lui	a5,0004200E
	lbu	a5,a5,+00000184
	sb	a0,s0,+000000A9
	andi	s4,s4,+00000008
	sb	a5,s0,+000000AA
	c.li	a5,00000010
	sb	a5,s0,+000000AC
	lbu	a5,s1,+00000004
	c.andi	a5,00000007
	sb	a5,s0,+000000AD
	lbu	a5,s1,+00000005
	c.andi	a5,00000005
	sb	a5,s0,+000000AE
	beq	s4,zero,0000000023021FD0

l23021FAC:
	lbu	a5,s1,+00000002
	c.andi	a5,00000008
	c.beqz	a5,0000000023021FD0

l23021FB4:
	c.li	a1,00000005
	c.mv	a0,s2
	jal	ra,0000000023020984
	lbu	a5,s0,+000000AD
	c.andi	a5,00000006
	sb	a5,s0,+000000AD
	lbu	a5,s0,+000000AE
	c.andi	a5,00000004
	sb	a5,s0,+000000AE

l23021FD0:
	lbu	a5,s0,+000000AB
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023021FEC

l23021FDA:
	lbu	a5,s1,+00000002
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023021FEC

l23021FE4:
	c.li	a1,00000013
	c.mv	a0,s2
	jal	ra,0000000023020984

l23021FEC:
	lbu	a5,s0,+000000AE
	sb	a5,s0,+00000180
	lbu	a5,s0,+000000AD
	sb	a5,s0,+00000181
	lbu	a5,s0,+000000AB
	c.andi	a5,00000001
	c.beqz	a5,0000000023022014

l23022004:
	lbu	a5,s1,+00000002
	c.andi	a5,00000001
	c.beqz	a5,0000000023022014

l2302200C:
	c.li	a1,0000000C
	c.mv	a0,s2
	jal	ra,0000000023020984

l23022014:
	c.li	a1,00000003
	c.mv	a0,s2
	jal	ra,0000000023020984
	lbu	a1,s1,+00000000
	c.mv	a0,s0
	jal	ra,0000000023021456
	sb	a0,s0,+000000A0
	c.mv	a0,s0
	jal	ra,0000000023020F34
	c.bnez	a0,000000002302205E

l23022032:
	c.li	s1,00000003
	c.j	0000000023021F1C

l23022036:
	lbu	a0,s3,+00000008
	addi	a1,s3,+00000070
	jal	ra,0000000023023998
	sw	a0,s3,+0000009C
	bne	a0,zero,0000000023021F3C

l2302204A:
	c.li	s1,00000008
	c.j	0000000023021F1C

l2302204E:
	c.mv	a0,s0
	jal	ra,0000000023021C8A
	beq	a0,zero,0000000023021F4C

l23022058:
	andi	s1,a0,+000000FF
	c.j	0000000023021F1C

l2302205E:
	c.li	a1,00000005
	c.mv	a0,s2
	jal	ra,000000002302098E
	lbu	a5,s0,+000000A0
	c.mv	s1,a5
	c.bnez	a0,00000000230220C6

l2302206E:
	c.bnez	a5,000000002302209C

l23022070:
	c.li	a1,0000000E
	c.mv	a0,s2
	jal	ra,000000002302098E
	c.bnez	a0,000000002302209C

l2302207A:
	lui	s3,0004201A
	lw	a5,s3,+000004D4
	c.beqz	a5,000000002302209C

l23022084:
	c.lw	a5,20(a5)
	c.beqz	a5,000000002302209C

l23022088:
	c.mv	a0,s2
	c.li	a1,00000009
	jal	ra,0000000023020984
	lw	a5,s3,+000004D4
	c.lw	s0,0(a0)
	c.lw	a5,20(a5)
	c.jalr	a5
	c.j	0000000023021F1C

l2302209C:
	c.mv	a0,s0
	jal	ra,0000000023021956
	c.mv	s1,a0
	bne	a0,zero,0000000023021F1C

l230220A8:
	addi	a0,s0,+00000098
	c.li	a1,00000003
	jal	ra,0000000023020984
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,000000002302116A

l230220C6:
	lbu	a3,s3,+0000000A
	c.li	a4,00000004
	bne	a3,a4,0000000023022108

l230220D0:
	c.beqz	a5,0000000023022032

l230220D2:
	lbu	a4,s0,+000000AC
	lbu	a5,s0,+000000A5
	bgeu	a4,a5,00000000230220E0

l230220DE:
	c.mv	a5,a4

l230220E0:
	andi	a5,a5,+000000FF
	c.li	a4,00000010
	bne	a5,a4,0000000023021F1A

l230220EA:
	addi	a0,s0,+00000098
	c.li	a1,0000000C
	jal	ra,0000000023020984
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,0000000023021956

l23022108:
	c.bnez	a5,00000000230220EA

l2302210A:
	c.li	a1,0000000E
	c.mv	a0,s2
	jal	ra,000000002302098E
	c.bnez	a0,00000000230220EA

l23022114:
	lui	s3,0004201A
	lw	a5,s3,+000004D4
	c.beqz	a5,00000000230220EA

l2302211E:
	c.lw	a5,20(a5)
	c.beqz	a5,00000000230220EA

l23022122:
	c.j	0000000023022088

;; smp_check_complete.part.16: 23022124
;;   Called from:
;;     23022166 (in smp_sign_info_sent)
;;     2302251E (in smp_ident_sent)
smp_check_complete.part.16 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a1
	c.li	a1,00000006
	c.swsp	ra,00000084
	jal	ra,000000002301FDCC
	lbu	a4,a0,+00000180
	xori	s0,s0,-00000001
	c.and	s0,a4
	sb	s0,a0,+00000180
	lhu	a5,a0,+00000180
	c.bnez	a5,0000000023022152

l23022146:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,0000000023020A00

l23022152:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; smp_sign_info_sent: 2302215A
smp_sign_info_sent proc
	lbu	a4,a0,+00000002
	c.li	a5,00000001
	bne	a4,a5,000000002302216A

l23022164:
	c.li	a1,00000004
	jal	zero,0000000023022124

l2302216A:
	c.jr	ra

;; le_sc_oob_config_set.isra.3.constprop.19: 2302216C
le_sc_oob_config_set.isra.3.constprop.19 proc
	c.lw	a0,0(a5)
	lbu	a3,a0,+000000A3
	lbu	a4,a0,+000000AA
	lbu	a5,a5,+00000003
	c.andi	a3,00000001
	c.andi	a4,00000001
	c.bnez	a5,000000002302218E

l23022180:
	addi	a5,a4,+00000001
	c.bnez	a3,0000000023022194

l23022186:
	c.li	a5,00000003
	c.beqz	a4,0000000023022194

l2302218A:
	c.li	a5,00000000
	c.j	0000000023022194

l2302218E:
	slli	a5,a4,00000001
	c.beqz	a3,000000002302219A

l23022194:
	sb	a5,a1,+00000000
	c.jr	ra

l2302219A:
	c.li	a5,00000003
	c.beqz	a4,0000000023022194

l2302219E:
	c.li	a5,00000001
	c.j	0000000023022194

;; smp_error: 230221A2
;;   Called from:
;;     230222A0 (in bt_smp_dhkey_ready)
;;     2302233C (in bt_smp_recv)
;;     23022D10 (in bt_smp_pkey_ready)
;;     23022D42 (in bt_smp_pkey_ready)
;;     23022D82 (in bt_smp_pkey_ready)
;;     23022DA6 (in bt_smp_pkey_ready)
;;     230233EE (in bt_smp_auth_passkey_entry)
;;     23023422 (in bt_smp_auth_passkey_entry)
;;     230234C0 (in bt_smp_auth_passkey_confirm)
;;     230237AA (in bt_smp_update_keys)
smp_error proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	s1,a1
	jal	ra,0000000023020A00
	c.li	a1,00000005
	c.mv	a0,s0
	jal	ra,0000000023021506
	c.beqz	a0,00000000230221E6

l230221BC:
	c.mv	a2,a0
	c.li	a1,00000001
	c.addi	a0,00000008
	c.swsp	a2,00000084
	jal	ra,000000002302586C
	sb	s1,a0,+00000000
	c.lwsp	a2,00000084
	c.lw	s0,0(a0)
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a1,00000006
	jal	ra,000000002301F92C
	c.li	a0,00000000

l230221DC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l230221E6:
	addi	a0,zero,-00000037
	c.j	00000000230221DC

;; bt_smp_dhkey_ready: 230221EC
bt_smp_dhkey_ready proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042012
	c.swsp	s3,00000084
	c.mv	s3,a0
	addi	a0,s0,-00000614
	c.li	a1,00000007
	addi	a0,a0,+0000009C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	jal	ra,0000000023020EA2
	addi	s0,s0,-00000614
	c.bnez	a0,0000000023022222

l23022212:
	c.li	a1,00000007
	addi	a0,s0,+00000244
	jal	ra,0000000023020EA2
	c.beqz	a0,00000000230222AA

l2302221E:
	c.li	s1,00000001
	c.j	0000000023022224

l23022222:
	c.li	s1,00000000

l23022224:
	addi	a5,zero,+000001A8
	add	s1,s1,a5
	c.li	a1,0000000B
	add	s2,s0,s1
	beq	s3,zero,0000000023022292

l23022236:
	addi	a0,s1,+0000012F
	addi	a2,zero,+00000020
	c.mv	a1,s3
	c.add	a0,s0
	addi	s1,s1,+0000009C
	jal	ra,000000002306CF80
	c.add	s0,s1
	c.li	a1,00000009
	c.mv	a0,s0
	jal	ra,000000002302098E
	c.li	a1,00000008
	c.bnez	a0,0000000023022264

l23022258:
	c.li	a1,0000000F
	c.mv	a0,s0
	jal	ra,000000002302098E
	c.li	a1,00000008
	c.beqz	a0,0000000023022276

l23022264:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,0000000023020984

l23022276:
	c.mv	a0,s0
	jal	ra,000000002302098E
	c.beqz	a0,00000000230222AA

l2302227E:
	lw	a5,s2,+00000000
	c.mv	a0,s2
	lbu	a5,a5,+00000003
	c.bnez	a5,00000000230222A4

l2302228A:
	jal	ra,00000000230215C6

l2302228E:
	c.mv	a1,a0
	c.beqz	a0,00000000230222AA

l23022292:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,00000000230221A2

l230222A4:
	jal	ra,000000002302167A
	c.j	000000002302228E

l230222AA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; bt_smp_recv: 230222B8
bt_smp_recv proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lhu	a5,a1,+0000000C
	c.bnez	a5,00000000230222E6

l230222CA:
	lui	a0,00023075
	addi	a0,a0,+000005B4
	jal	ra,0000000023003AC6

l230222D6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l230222E6:
	c.mv	s2,a1
	c.mv	s0,a0
	c.li	a1,00000001
	addi	a0,s2,+00000008
	jal	ra,000000002302590A
	c.mv	s3,a0
	c.li	a1,00000004
	addi	a0,s0,+0000009C
	jal	ra,000000002302098E
	lbu	a1,s3,+00000000
	c.beqz	a0,0000000023022314

l23022306:
	lui	a0,00023075
	addi	a0,a0,+000005D4
	jal	ra,0000000023003AC6
	c.j	00000000230222D6

l23022314:
	c.li	a5,0000000D
	bltu	a5,a1,000000002302232C

l2302231A:
	lui	s1,00023075
	addi	s1,s1,+00000730
	slli	a5,a1,00000003
	c.add	a5,s1
	c.lw	a5,0(a5)
	c.bnez	a5,0000000023022342

l2302232C:
	lui	a0,00023075
	addi	a0,a0,+00000608
	jal	ra,0000000023003AC6
	c.li	a1,00000007

l2302233A:
	c.mv	a0,s0
	jal	ra,00000000230221A2
	c.j	00000000230222D6

l23022342:
	addi	a0,s0,+00000098
	jal	ra,0000000023020EA2
	lbu	a2,s3,+00000000
	c.bnez	a0,000000002302236C

l23022350:
	lui	a0,00023075
	c.mv	a1,a2
	addi	a0,a0,+00000624
	jal	ra,0000000023003AC6
	lbu	a4,s3,+00000000
	c.li	a5,00000005
	c.li	a1,00000008
	beq	a4,a5,00000000230222D6

l2302236A:
	c.j	000000002302233A

l2302236C:
	slli	a5,a2,00000003
	c.add	s1,a5
	lhu	a1,s2,+0000000C
	lbu	a5,s1,+00000004
	beq	a5,a1,000000002302238E

l2302237E:
	lui	a0,00023075
	addi	a0,a0,+00000644
	jal	ra,0000000023003AC6
	c.li	a1,0000000A
	c.j	000000002302233A

l2302238E:
	c.lw	s1,0(a5)
	c.mv	a1,s2
	c.mv	a0,s0
	c.jalr	a5
	c.mv	a1,a0
	c.beqz	a0,00000000230222D6

l2302239A:
	c.j	000000002302233A

;; bt_smp_encrypt_change: 2302239C
bt_smp_encrypt_change proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	addi	s1,a0,+0000009C
	c.mv	s3,a1
	c.mv	s0,a0
	lw	s2,a0,+00000000
	c.li	a1,FFFFFFFD
	c.mv	a0,s1
	jal	ra,0000000023025522
	bne	s3,zero,000000002302246C

l230223C0:
	lbu	a5,s2,+0000000B
	c.beqz	a5,000000002302246C

l230223C6:
	c.li	a1,00000003
	c.mv	a0,s1
	jal	ra,000000002302098E
	c.bnez	a0,00000000230223E2

l230223D0:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,00000000230209A6

l230223E2:
	c.li	a1,00000005
	c.mv	a0,s1
	jal	ra,000000002302098E
	c.beqz	a0,0000000023022414

l230223EC:
	lbu	a5,s0,+00000180
	c.andi	a5,00000008
	c.beqz	a5,0000000023022404

l230223F4:
	lbu	a5,s0,+00000181
	c.andi	a5,00000008
	c.beqz	a5,0000000023022404

l230223FC:
	c.li	a1,00000010
	c.mv	a0,s1
	jal	ra,0000000023020984

l23022404:
	lhu	a5,s0,+00000180
	c.lui	a4,FFFFF000
	addi	a4,a4,+000007F7
	c.and	a5,a4
	sh	a5,s0,+00000180

l23022414:
	lbu	a5,s0,+00000181
	c.li	a1,00000006
	andi	a4,a5,+00000001
	c.bnez	a4,000000002302242E

l23022420:
	andi	a4,a5,+00000002
	c.li	a1,00000008
	c.bnez	a4,000000002302242E

l23022428:
	c.andi	a5,00000004
	c.beqz	a5,0000000023022436

l2302242C:
	c.li	a1,0000000A

l2302242E:
	addi	a0,s0,+00000098
	jal	ra,0000000023020984

l23022436:
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,0000000023020984
	lbu	a5,s2,+00000003
	c.bnez	a5,000000002302244A

l23022444:
	lbu	a5,s0,+00000181
	c.bnez	a5,000000002302246C

l2302244A:
	c.mv	a0,s0
	jal	ra,0000000023021996
	c.bnez	a0,000000002302246C

l23022452:
	lhu	a5,s0,+00000180
	c.bnez	a5,000000002302246C

l23022458:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a1,00000000
	c.addi16sp	00000020
	jal	zero,0000000023020A00

l2302246C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; smp_send_pairing_confirm: 2302247A
;;   Called from:
;;     2302273E (in smp_pairing_confirm)
;;     23023418 (in bt_smp_auth_passkey_entry)
;;     23023444 (in bt_smp_auth_passkey_entry)
smp_send_pairing_confirm proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lbu	a5,a0,+000000A0
	c.li	a4,00000002
	bltu	a4,a5,0000000023022494

l2302248E:
	c.bnez	a5,00000000230224A8

l23022490:
	c.li	s0,00000000
	c.j	00000000230224BE

l23022494:
	c.li	a4,00000003
	beq	a5,a4,0000000023022490

l2302249A:
	c.li	a0,00000008

l2302249C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230224A8:
	lbu	a3,a0,+00000174
	lw	s0,a0,+00000170
	srl	s0,s0,a3
	c.andi	s0,00000001
	ori	s0,s0,-00000080
	andi	s0,s0,+000000FF

l230224BE:
	c.li	a1,00000003
	c.mv	s1,a0
	jal	ra,0000000023021506
	c.mv	s2,a0
	c.li	a0,00000008
	beq	s2,zero,000000002302249C

l230224CE:
	c.li	a1,00000010
	addi	a0,s2,+00000008
	jal	ra,000000002302586C
	lui	a5,0004200E
	c.mv	a4,a0
	lw	a0,a5,+00000188
	c.mv	a3,s0
	addi	a2,s1,+000000BF
	addi	a1,s1,+000000EF
	jal	ra,0000000023020B66
	c.beqz	a0,00000000230224FA

l230224F2:
	c.mv	a0,s2
	jal	ra,000000002302574E
	c.j	000000002302249A

l230224FA:
	c.li	a2,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023021558
	c.li	a1,FFFFFFFE
	addi	a0,s1,+0000009C
	jal	ra,0000000023025522
	c.li	a0,00000000
	c.j	000000002302249C

;; smp_ident_sent: 23022512
smp_ident_sent proc
	lbu	a4,a0,+00000002
	c.li	a5,00000001
	bne	a4,a5,0000000023022522

l2302251C:
	c.li	a1,00000001
	jal	zero,0000000023022124

l23022522:
	c.jr	ra

;; smp_c1: 23022524
;;   Called from:
;;     23022632 (in legacy_send_pairing_confirm)
;;     23022E08 (in smp_pairing_random)
smp_c1 proc
	c.addi16sp	FFFFFFB0
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.mv	s3,a5
	lbu	a5,a4,+00000000
	c.mv	s1,a0
	c.mv	s4,a1
	sb	a5,sp,+00000010
	lbu	a5,s3,+00000000
	c.mv	a1,a2
	addi	a0,sp,+00000012
	c.li	a2,00000007
	sb	a5,sp,+00000011
	c.swsp	a3,00000084
	c.mv	s2,a4
	c.mv	s0,a6
	jal	ra,000000002306CF80
	c.lwsp	a2,000000A4
	c.li	a2,00000007
	addi	a0,sp,+00000019
	c.mv	a1,a3
	jal	ra,000000002306CF80
	c.li	a3,00000000
	c.li	a5,00000010

l2302256C:
	c.addi4spn	a1,00000010
	add	a2,s4,a3
	c.add	a1,a3
	lbu	a2,a2,+00000000
	lbu	a1,a1,+00000000
	add	a4,s0,a3
	c.addi	a3,00000001
	c.xor	a2,a1
	sb	a2,a4,+00000000
	bne	a3,a5,000000002302256C

l2302258C:
	c.mv	a2,s0
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,0000000023027DD8
	c.bnez	a0,00000000230225D2

l23022598:
	c.li	a2,00000006
	addi	a1,s3,+00000001
	c.addi4spn	a0,00000020
	jal	ra,000000002306CF80
	c.li	a2,00000006
	addi	a1,s2,+00000001
	addi	a0,sp,+00000026
	jal	ra,000000002306CF80
	c.li	a2,00000004
	c.li	a1,00000000
	c.addi4spn	a0,0000002C
	jal	ra,000000002306D1BC
	c.addi4spn	a5,00000020
	addi	a2,s0,+00000010
	c.mv	a4,s0

l230225C4:
	bne	a2,a4,00000000230225E2

l230225C8:
	c.mv	a2,s0
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,0000000023027DD8

l230225D2:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.addi16sp	00000050
	c.jr	ra

l230225E2:
	c.addi	a4,00000001
	lbu	a3,a4,-00000001
	lbu	a1,a5,+00000000
	c.addi	a5,00000001
	c.xor	a3,a1
	sb	a3,a4,+00000FFF
	c.j	00000000230225C4

;; legacy_send_pairing_confirm: 230225F6
;;   Called from:
;;     2302269A (in legacy_pairing_confirm)
;;     230228A6 (in smp_pairing_rsp)
;;     23023576 (in bt_smp_auth_pairing_confirm)
legacy_send_pairing_confirm proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.li	a1,00000003
	c.mv	s0,a0
	lw	s2,a0,+00000000
	jal	ra,0000000023021506
	c.beqz	a0,000000002302263E

l2302260E:
	c.li	a1,00000010
	c.mv	s1,a0
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.mv	a6,a0
	addi	a5,s2,+0000007E
	addi	a4,s2,+00000077
	addi	a3,s0,+000000A8
	addi	a2,s0,+000000A1
	addi	a1,s0,+000000BF
	addi	a0,s0,+000000DF
	jal	ra,0000000023022524
	c.beqz	a0,0000000023022642

l23022638:
	c.mv	a0,s1
	jal	ra,000000002302574E

l2302263E:
	c.li	a0,00000008
	c.j	0000000023022658

l23022642:
	c.li	a2,00000000
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023021558
	c.li	a1,FFFFFFFE
	addi	a0,s0,+0000009C
	jal	ra,0000000023025522
	c.li	a0,00000000

l23022658:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; legacy_pairing_confirm: 23022664
;;   Called from:
;;     23022714 (in smp_pairing_confirm)
;;     230233E4 (in bt_smp_auth_passkey_entry)
legacy_pairing_confirm proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a0,0(a5)
	c.mv	s0,a0
	c.li	a1,00000003
	lbu	a5,a5,+00000003
	c.beqz	a5,0000000023022688

l23022678:
	addi	s1,a0,+0000009C
	c.li	a1,00000009
	c.mv	a0,s1
	jal	ra,000000002302098E
	c.bnez	a0,000000002302269E

l23022686:
	c.li	a1,00000004

l23022688:
	addi	a0,s0,+00000098
	jal	ra,0000000023020984
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230225F6

l2302269E:
	c.mv	a0,s1
	c.li	a1,00000000
	jal	ra,0000000023020984
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; smp_pairing_confirm: 230226B2
smp_pairing_confirm proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lw	s2,a1,+00000008
	addi	s1,a0,+0000009C
	c.mv	s0,a0
	addi	a1,zero,-00000401
	c.mv	a0,s1
	jal	ra,0000000023025522
	c.li	a2,00000010
	c.mv	a1,s2
	addi	a0,s0,+000000AF
	jal	ra,000000002306CF80
	c.lw	s0,0(a5)
	lbu	a5,a5,+00000003
	c.bnez	a5,00000000230226FE

l230226E4:
	addi	a0,s0,+00000098
	c.li	a1,00000004
	jal	ra,0000000023020984
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,00000000230218B0

l230226FE:
	c.li	a1,00000005
	c.mv	a0,s1
	jal	ra,000000002302098E
	c.bnez	a0,0000000023022718

l23022708:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023022664

l23022718:
	lbu	a5,s0,+000000A0
	c.li	a4,00000001
	beq	a5,a4,0000000023022742

l23022722:
	c.li	a4,00000002
	bne	a5,a4,0000000023022762

l23022728:
	addi	a0,s0,+00000098
	c.li	a1,00000004
	jal	ra,0000000023020984
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002302247A

l23022742:
	c.li	a1,00000009
	c.mv	a0,s1
	jal	ra,000000002302098E
	c.beqz	a0,0000000023022728

l2302274C:
	c.mv	a0,s1
	c.li	a1,00000000
	jal	ra,0000000023020984
	c.li	a0,00000000

l23022756:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23022762:
	c.li	a0,00000008
	c.j	0000000023022756

;; smp_pairing_rsp: 23022766
smp_pairing_rsp proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.lw	a1,8(s1)
	c.li	a4,00000009
	lbu	a5,s1,+00000003
	c.addi	a5,FFFFFFF9
	andi	a5,a5,+000000FF
	bgeu	a4,a5,0000000023022796

l23022784:
	c.li	s1,00000006

l23022786:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23022796:
	lbu	a4,s1,+00000004
	lbu	a5,a0,+00000180
	lw	s3,a0,+00000000
	c.mv	s0,a0
	c.and	a5,a4
	sb	a5,a0,+00000180
	lbu	a4,s1,+00000005
	lbu	a5,a0,+00000181
	c.li	a2,00000006
	c.mv	a1,s1
	c.and	a5,a4
	sb	a5,a0,+00000181
	c.li	a5,00000002
	sb	a5,a0,+000000A8
	addi	a0,a0,+000000A9
	jal	ra,000000002306CF80
	lbu	a5,s1,+00000002
	c.andi	a5,00000008
	c.beqz	a5,00000000230227E4

l230227D2:
	lbu	a5,s0,+000000A4
	c.andi	a5,00000008
	c.beqz	a5,00000000230227E4

l230227DA:
	c.li	a1,00000005
	addi	a0,s0,+0000009C
	jal	ra,0000000023020984

l230227E4:
	lbu	a5,s1,+00000002
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023022802

l230227EE:
	lbu	a5,s0,+000000A4
	andi	a5,a5,+00000020
	c.beqz	a5,0000000023022802

l230227F8:
	c.li	a1,00000013
	addi	a0,s0,+0000009C
	jal	ra,0000000023020984

l23022802:
	lbu	a5,s1,+00000002
	c.andi	a5,00000001
	c.beqz	a5,000000002302281C

l2302280A:
	lbu	a5,s0,+000000A4
	c.andi	a5,00000001
	c.beqz	a5,000000002302281C

l23022812:
	c.li	a1,0000000C
	addi	a0,s0,+0000009C
	jal	ra,0000000023020984

l2302281C:
	lbu	a1,s1,+00000000
	c.mv	a0,s0
	jal	ra,0000000023021456
	sb	a0,s0,+000000A0
	c.mv	a0,s0
	jal	ra,0000000023020F34
	c.bnez	a0,0000000023022836

l23022832:
	c.li	s1,00000003
	c.j	0000000023022786

l23022836:
	addi	s2,s0,+0000009C
	c.li	a1,00000005
	c.mv	a0,s2
	jal	ra,000000002302098E
	lbu	a4,s0,+000000A0
	c.mv	s1,a4
	c.bnez	a0,00000000230228B4

l2302284A:
	c.bnez	a4,0000000023022878

l2302284C:
	c.li	a1,0000000E
	c.mv	a0,s2
	jal	ra,000000002302098E
	c.beqz	a0,0000000023022878

l23022856:
	lui	s3,0004201A
	lw	a5,s3,+000004D4
	c.beqz	a5,0000000023022878

l23022860:
	c.lw	a5,20(a5)
	c.beqz	a5,0000000023022878

l23022864:
	c.mv	a0,s2
	c.li	a1,00000009
	jal	ra,0000000023020984
	lw	a5,s3,+000004D4
	c.lw	s0,0(a0)
	c.lw	a5,20(a5)
	c.jalr	a5
	c.j	0000000023022786

l23022878:
	c.mv	a0,s0
	jal	ra,000000002302116A
	c.mv	s1,a0
	bne	a0,zero,0000000023022786

l23022884:
	c.li	a1,00000009
	c.mv	a0,s2
	jal	ra,000000002302098E
	c.bnez	a0,00000000230228AA

l2302288E:
	addi	a0,s0,+00000098
	c.li	a1,00000003
	jal	ra,0000000023020984
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,00000000230225F6

l230228AA:
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,0000000023020984
	c.j	0000000023022786

l230228B4:
	lbu	a3,s3,+0000000A
	c.li	a5,00000004
	bne	a3,a5,00000000230228D8

l230228BE:
	c.beqz	a4,0000000023022832

l230228C0:
	lbu	a3,s0,+000000A5
	lbu	a5,s0,+000000AC
	bgeu	a3,a5,00000000230228CE

l230228CC:
	c.mv	a5,a3

l230228CE:
	andi	a5,a5,+000000FF
	c.li	a3,00000010
	bne	a5,a3,0000000023022784

l230228D8:
	lhu	a5,s0,+00000180
	andi	a5,a5,+00000604
	sh	a5,s0,+00000180
	c.bnez	a4,00000000230228FE

l230228E6:
	c.li	a1,0000000E
	c.mv	a0,s2
	jal	ra,000000002302098E
	c.beqz	a0,00000000230228FE

l230228F0:
	lui	s3,0004201A
	lw	a5,s3,+000004D4
	c.beqz	a5,00000000230228FE

l230228FA:
	c.lw	a5,20(a5)
	c.bnez	a5,0000000023022864

l230228FE:
	lui	a5,0004200E
	lw	a5,a5,+00000188
	c.bnez	a5,0000000023022914

l23022908:
	c.li	a1,00000006
	c.mv	a0,s2
	jal	ra,0000000023020984
	c.li	s1,00000000
	c.j	0000000023022786

l23022914:
	addi	s1,s0,+00000098
	c.mv	a0,s1
	c.li	a1,0000000C
	jal	ra,0000000023020984
	c.lui	a1,FFFFF000
	c.mv	a0,s1
	addi	a1,a1,+000007FF
	jal	ra,0000000023025522
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,00000000230218F0

;; smp_ident_addr_info: 2302293E
smp_ident_addr_info proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lw	s2,a1,+00000008
	c.mv	s1,a0
	c.lw	a0,0(s0)
	lbu	a5,s2,+00000000
	c.beqz	a5,00000000230229A6

l2302295A:
	lbu	a5,s2,+00000006
	addi	a4,zero,+000000C0
	andi	a5,a5,+000000C0
	beq	a5,a4,00000000230229A6

l2302296A:
	c.mv	a0,s2
	jal	ra,0000000023025A64
	c.mv	a1,a0
	lui	a0,00023076
	addi	a0,a0,-000007A0
	jal	ra,0000000023003AC6
	addi	a0,s0,+00000070
	jal	ra,0000000023025A64
	c.mv	a1,a0
	lui	a0,00023076
	addi	a0,a0,-00000788
	jal	ra,0000000023003AC6
	c.li	a0,0000000A

l23022996:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l230229A6:
	c.li	a1,0000000C
	addi	a0,s1,+0000009C
	jal	ra,000000002302098E
	c.beqz	a0,0000000023022A4A

l230229B2:
	lbu	a1,s0,+00000008
	addi	s4,s0,+00000070
	c.mv	a2,s4
	c.li	a0,00000002
	jal	ra,0000000023023B30
	c.mv	s3,a0
	c.bnez	a0,00000000230229DE

l230229C6:
	c.mv	a0,s4
	jal	ra,0000000023025A64
	c.mv	a1,a0
	lui	a0,00023076
	addi	a0,a0,-0000077C
	jal	ra,0000000023003AC6
	c.li	a0,00000008
	c.j	0000000023022996

l230229DE:
	lbu	a5,s0,+00000003
	addi	a1,s0,+00000077
	c.bnez	a5,00000000230229EC

l230229E8:
	addi	a1,s0,+0000007E

l230229EC:
	lbu	a4,a1,+00000000
	c.li	a5,00000001
	bne	a4,a5,0000000023022A44

l230229F6:
	lbu	a5,a1,+00000006
	addi	a4,zero,+00000040
	andi	a5,a5,+000000C0
	bne	a5,a4,0000000023022A44

l23022A06:
	c.li	a2,00000006
	c.addi	a1,00000001
	addi	a0,s3,+00000036
	jal	ra,000000002306CF80
	lbu	a5,s0,+00000070
	c.beqz	a5,0000000023022A44

l23022A18:
	lbu	a5,s0,+00000076
	addi	a4,zero,+000000C0
	andi	a5,a5,+000000C0
	beq	a5,a4,0000000023022A44

l23022A28:
	c.li	a2,00000007
	c.mv	a1,s2
	addi	a0,s3,+00000001
	jal	ra,000000002306CF80
	c.li	a2,00000007
	c.mv	a1,s2
	c.mv	a0,s4
	jal	ra,000000002306CF80
	c.mv	a0,s0
	jal	ra,0000000023026B56

l23022A44:
	c.mv	a0,s3
	jal	ra,000000002301D426

l23022A4A:
	lbu	a5,s1,+00000181
	andi	a4,a5,-00000003
	sb	a4,s1,+00000181
	c.andi	a5,00000004
	c.beqz	a5,0000000023022A64

l23022A5A:
	c.li	a1,0000000A
	addi	a0,s1,+00000098
	jal	ra,0000000023020984

l23022A64:
	lbu	a5,s0,+00000003
	c.beqz	a5,0000000023022A74

l23022A6A:
	lhu	a5,s1,+00000180
	c.beqz	a5,0000000023022A84

l23022A70:
	c.li	a0,00000000
	c.j	0000000023022996

l23022A74:
	lbu	a5,s1,+00000181
	c.bnez	a5,0000000023022A6A

l23022A7A:
	c.mv	a0,s1
	jal	ra,0000000023021996
	c.beqz	a0,0000000023022A6A

l23022A82:
	c.j	0000000023022996

l23022A84:
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023020A00
	c.j	0000000023022A70

;; smp_public_key_slave.part.15: 23022A8E
;;   Called from:
;;     23022CAC (in smp_public_key)
;;     23022D5E (in bt_smp_pkey_ready)
;;     23022D92 (in bt_smp_pkey_ready)
smp_public_key_slave.part.15 proc
	lbu	a5,a0,+000000A0
	c.li	a4,00000005
	bltu	a4,a5,0000000023022B2E

l23022A98:
	lui	a4,00023075
	c.slli	a5,02
	addi	a4,a4,+0000044C
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.jr	a5
23022AB0 91 45 13 05 85 09 EF D0 FF EC 22 85 EF F0 FF 9B .E........".....
23022AC0 AA 87 29 C1 B2 40 22 44 3E 85 41 01 82 80 EF E0 ..)..@"D>.A.....
23022AD0 EF BF AA 87 8D 45 7D F5 13 05 84 09 EF D0 9F EA .....E}.........
23022AE0 15 A0 8D 45 13 05 85 09 EF D0 DF E9 13 05 C4 09 ...E............
23022AF0 A5 45 EF D0 3F E9 B7 A7 01 42 83 A7 47 4D 08 40 .E..?....B..GM.@
23022B00 DC 43 82 97 B7 25 02 23 93 85 C5 1E 13 05 F4 0E .C...%.#........
23022B10 EF C0 3F 9A A1 47 5D F5 9D 45 13 05 C4 09 EF D0 ..?..G]..E......
23022B20 7F E6 81 47 45 B7 91 45 45 BF A1 47 61 BF       ...GE..EE..Ga. 

l23022B2E:
	c.li	a5,00000008
	c.mv	a0,a5
	c.jr	ra

;; smp_public_key: 23022B34
smp_public_key proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s1,00000088
	c.lw	a1,8(s1)
	addi	s2,a0,+000000EF
	c.mv	s0,a0
	addi	a2,zero,+00000020
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,000000002306CF80
	addi	a2,zero,+00000020
	addi	a1,s1,+00000020
	addi	a0,s0,+0000010F
	jal	ra,000000002306CF80
	lui	a1,00023076
	addi	a2,zero,+00000040
	addi	a1,a1,-00000800
	c.mv	a0,s2
	jal	ra,000000002306CEF8
	c.beqz	a0,0000000023022B8E

l23022B76:
	c.lw	s0,0(a5)
	lbu	a5,a5,+00000003
	c.beqz	a5,0000000023022BD6

l23022B7E:
	lui	a5,0004200E
	lw	a5,a5,+00000188
	bne	a5,zero,0000000023022CA0

l23022B8A:
	c.li	a1,00000006
	c.j	0000000023022C0C

l23022B8E:
	c.li	a1,0000000D
	addi	a0,s0,+0000009C
	jal	ra,0000000023020984
	c.lw	s0,0(s1)
	lw	a5,s1,+0000009C
	c.bnez	a5,0000000023022BB0

l23022BA0:
	lbu	a0,s1,+00000008
	addi	a1,s1,+00000070
	jal	ra,0000000023023998
	sw	a0,s1,+0000009C

l23022BB0:
	lw	a5,s1,+0000009C
	c.beqz	a5,0000000023022B76

l23022BB6:
	lhu	a4,a5,+0000000A
	andi	a4,a4,+00000024
	c.beqz	a4,0000000023022B76

l23022BC0:
	lbu	a5,a5,+00000009
	c.li	a0,00000003
	c.andi	a5,00000002
	c.beqz	a5,0000000023022B76

l23022BCA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23022BD6:
	lbu	a5,s0,+000000A0
	c.li	a4,00000005
	bltu	a4,a5,0000000023022C5A

l23022BE0:
	lui	a4,00023075
	c.slli	a5,02
	addi	a4,a4,+00000464
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
23022BF0 8D 45 13 05 84 09 EF D0 FF D8 B7 25 02 23 93 85 .E.........%.#..
23022C00 C5 1E 4A 85 EF C0 FF 8A 9D 45 21 E9             ..J......E!.   

l23022C0C:
	addi	a0,s0,+0000009C
	jal	ra,0000000023020984
	c.li	a0,00000000
	c.j	0000000023022BCA
23022C18                         22 85 EF E0 2F AB 55 F5         ".../.U.
23022C20 13 05 84 09 8D 45 EF D0 FF D5 22 85 EF F0 FF 84 .....E....".....
23022C30 49 FD E1 B7 13 05 C4 09 A5 45 EF D0 BF D4 B7 A7 I........E......
23022C40 01 42 83 A7 47 4D 08 40 DC 43 82 97 7D B7 C1 45 .B..GM.@.C..}..E
23022C50 13 05 F4 0B EF 50 40 17 19 C1                   .....P@...     

l23022C5A:
	c.li	a0,00000008
	c.j	0000000023022BCA
23022C5E                                           B7 A4               ..
23022C60 01 42 83 A7 44 4D 09 45 AD D3 DC 47 B9 DF 93 07 .B..DM.E...G....
23022C70 10 30 93 05 D1 00 22 85 23 16 F1 00 EF F0 0F CF .0....".#.......
23022C80 13 05 C4 09 23 2C 04 16 23 2E 04 16 AD 45 EF D0 ....#,..#....E..
23022C90 7F CF 83 A7 44 4D 08 40 6C 00 DC 47 82 97 B1 BF ....DM.@l..G....

l23022CA0:
	c.mv	a0,s0
	jal	ra,00000000230218F0
	bne	a0,zero,0000000023022BCA

l23022CAA:
	c.mv	a0,s0
	jal	ra,0000000023022A8E
	c.j	0000000023022BCA

;; bt_smp_pkey_ready: 23022CB2
bt_smp_pkey_ready proc
	lui	a5,0004200E
	sw	a0,a5,+00000188
	c.bnez	a0,0000000023022CC8

l23022CBC:
	lui	a0,00023075
	addi	a0,a0,+00000598
	jal	zero,0000000023003AC6

l23022CC8:
	lui	a0,0004201A
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000458
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	lui	s0,00042012
	c.swsp	s2,00000000
	jal	ra,00000000230251D2
	addi	a0,s0,-00000614
	c.li	a1,00000006
	addi	a0,a0,+0000009C
	jal	ra,000000002302098E
	c.mv	s2,s0
	addi	s1,s0,-00000614
	c.beqz	a0,0000000023022D14

l23022CF8:
	c.lw	s1,0(a5)
	lbu	a5,a5,+00000003
	c.beqz	a5,0000000023022D66

l23022D00:
	addi	a0,s0,-00000614
	jal	ra,00000000230218F0
	c.beqz	a0,0000000023022D5A

l23022D0A:
	c.mv	a1,a0
	addi	a0,s2,-00000614
	jal	ra,00000000230221A2

l23022D14:
	c.li	a1,00000006
	addi	a0,s1,+00000244
	jal	ra,000000002302098E
	c.beqz	a0,0000000023022DAA

l23022D20:
	lw	a5,s1,+000001A8
	lui	s0,00042012
	addi	s2,s0,-0000046C
	lbu	a5,a5,+00000003
	addi	a0,s0,-0000046C
	c.bnez	a5,0000000023022D88

l23022D36:
	jal	ra,00000000230218F0
	c.mv	a1,a0
	c.beqz	a0,0000000023022D46

l23022D3E:
	addi	a0,s0,-0000046C
	jal	ra,00000000230221A2

l23022D46:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	addi	a0,s1,+00000240
	c.lwsp	tp,00000024
	c.li	a1,0000000C
	c.addi	sp,00000010
	jal	zero,0000000023020984

l23022D5A:
	addi	a0,s0,-00000614
	jal	ra,0000000023022A8E
	c.beqz	a0,0000000023022D14

l23022D64:
	c.j	0000000023022D0A

l23022D66:
	addi	a0,s0,-00000614
	jal	ra,00000000230218F0
	c.mv	a1,a0
	c.bnez	a0,0000000023022D7E

l23022D72:
	c.li	a1,0000000C
	addi	a0,s1,+00000098
	jal	ra,0000000023020984
	c.j	0000000023022D14

l23022D7E:
	addi	a0,s0,-00000614
	jal	ra,00000000230221A2
	c.j	0000000023022D72

l23022D88:
	jal	ra,00000000230218F0
	c.bnez	a0,0000000023022D98

l23022D8E:
	addi	a0,s0,-0000046C
	jal	ra,0000000023022A8E
	c.beqz	a0,0000000023022DAA

l23022D98:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.mv	a1,a0
	c.mv	a0,s2
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,00000000230221A2

l23022DAA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; smp_pairing_random: 23022DB6
smp_pairing_random proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s1,00000098
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.lw	a1,8(a1)
	addi	s3,a0,+000000CF
	c.mv	s0,a0
	c.li	a2,00000010
	c.mv	a0,s3
	jal	ra,000000002306CF80
	addi	s2,s0,+0000009C
	c.li	a1,00000005
	c.mv	a0,s2
	jal	ra,000000002302098E
	lw	s4,s0,+00000000
	bne	a0,zero,0000000023022EE4

l23022DEC:
	addi	s5,s0,+000000DF
	addi	a6,sp,+00000010
	addi	a5,s4,+0000007E
	addi	a4,s4,+00000077
	addi	a3,s0,+000000A8
	addi	a2,s0,+000000A1
	c.mv	a1,s3
	c.mv	a0,s5
	jal	ra,0000000023022524
	c.beqz	a0,0000000023022E26

l23022E0E:
	c.li	s1,00000008

l23022E10:
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

l23022E26:
	c.li	a2,00000010
	c.addi4spn	a1,00000010
	addi	a0,s0,+000000AF
	jal	ra,000000002306CEF8
	c.li	s1,00000004
	c.bnez	a0,0000000023022E10

l23022E36:
	lbu	s1,s4,+00000003
	addi	s6,s0,+000000BF
	c.li	a2,00000008
	c.bnez	s1,0000000023022EAC

l23022E42:
	c.mv	a1,s6
	c.addi4spn	a0,00000010
	jal	ra,000000002306CF80
	c.li	a2,00000008
	c.mv	a1,s3
	c.addi4spn	a0,00000018
	jal	ra,000000002306CF80
	c.addi4spn	a2,00000010
	c.mv	a1,a2
	c.mv	a0,s5
	jal	ra,0000000023027DD8
	c.bnez	a0,0000000023022E0E

l23022E60:
	c.li	a2,00000002
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,000000002306D1BC
	c.li	a2,00000008
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	jal	ra,000000002306D1BC
	lbu	a5,s0,+000000A5
	lbu	a4,s0,+000000AC
	bgeu	a5,a4,0000000023022E82

l23022E80:
	c.mv	a4,a5

l23022E82:
	andi	a4,a4,+000000FF
	c.addi4spn	a3,00000010
	c.addi4spn	a2,00000004
	c.addi4spn	a1,00000008
	c.mv	a0,s4
	jal	ra,0000000023026B9E
	c.beqz	a0,0000000023022EA2

l23022E94:
	lui	a0,00023076
	addi	a0,a0,-00000750
	jal	ra,0000000023003AC6
	c.j	0000000023022E0E

l23022EA2:
	c.li	a1,00000001
	c.mv	a0,s2
	jal	ra,0000000023020984
	c.j	0000000023022E10

l23022EAC:
	c.mv	a1,s3
	c.addi4spn	a0,00000010
	jal	ra,000000002306CF80
	c.li	a2,00000008
	c.mv	a1,s6
	c.addi4spn	a0,00000018
	jal	ra,000000002306CF80
	c.addi4spn	a2,00000010
	c.mv	a1,a2
	c.mv	a0,s5
	jal	ra,0000000023027DD8
	c.bnez	a0,0000000023022E0E

l23022ECA:
	c.addi4spn	a1,00000010
	c.li	a2,00000010
	c.mv	a0,s5
	jal	ra,000000002306CF80
	c.li	a1,00000001
	c.mv	a0,s2
	jal	ra,0000000023020984
	c.mv	a0,s0
	jal	ra,00000000230218B0
	c.j	0000000023022F80

l23022EE4:
	lbu	a5,s4,+00000003
	c.bnez	a5,0000000023022F9A

l23022EEA:
	c.mv	a0,s0
	jal	ra,0000000023020BC8
	c.mv	s1,a0
	bne	a0,zero,0000000023022E10

l23022EF6:
	lbu	a5,s0,+000000A0
	c.li	a4,00000005
	bltu	a4,a5,0000000023022E0E

l23022F00:
	lui	a4,00023075
	c.slli	a5,02
	addi	a4,a4,+0000047C
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
23022F10 B7 E7 00 42 03 A5 87 18 18 08 CE 86 13 06 F4 0B ...B............
23022F20 93 05 F4 0E EF D0 3F EE E3 13 05 EE 4A 85 A5 45 ......?.....J..E
23022F30 EF D0 5F A5 4A 85 A1 45 EF D0 DF A4 B7 A7 01 42 .._.J..E.......B
23022F40 83 A7 47 4D C2 45 08 40 9C 47 82 97 D1 B5 83 47 ..GM.E.@.G.....G
23022F50 44 17 51 47 85 07 93 F7 F7 0F 23 0A F4 16 63 83 D.QG......#...c.
23022F60 E7 02 C1 45 13 05 F4 0B EF 40 10 66 E3 11 05 EA ...E.....@.f....
23022F70 13 05 84 09 8D 45 EF D0 FF A0 22 85 EF F0 EF CF .....E....".....

l23022F80:
	c.mv	s1,a0
	c.j	0000000023022E10
23022F84             9D 45 4A 85 EF D0 7F A0 A1 45 E3 1B     .EJ......E..
23022F90 05 F0 22 85 EF E0 2F E3 E5 B7                   ..".../...     

l23022F9A:
	lbu	a5,s0,+000000A0
	c.li	a4,00000005
	bltu	a4,a5,0000000023022E0E

l23022FA4:
	lui	a4,00023075
	c.slli	a5,02
	addi	a4,a4,+00000494
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
23022FB4             B7 E7 00 42 83 A5 87 18 18 08 93 06     ...B........
23022FC0 F4 0B 4E 86 13 05 F4 0E EF D0 FF E3 E3 11 05 E4 ..N.............
23022FD0 A5 45 4A 85 EF D0 1F 9B B7 A7 01 42 83 A7 47 4D .EJ........B..GM
23022FE0 C2 45 08 40 9C 47 82 97 B5 45 13 05 84 09 EF D0 .E.@.G...E......
23022FF0 7F 99 BD 45 CD B5 22 85 EF D0 1F BD AA 84 E3 19 ...E..".........
23023000 05 E0 93 09 84 09 8D 45 4E 85 EF D0 BF 97 22 85 .......EN.....".
23023010 EF E0 1F 8A AA 84 E3 1D 05 DE 83 47 44 17 51 47 ...........GD.QG
23023020 85 07 93 F7 F7 0F 23 0A F4 16 63 98 E7 00 B5 45 ......#...c....E
23023030 4E 85 EF D0 3F 95 BD 45 B5 B5 C1 45 13 05 F4 0B N...?..E...E....
23023040 EF 40 90 58 E3 06 05 DC D9 B3 C1 45 13 05 F4 0B .@.X.......E....
23023050 EF 40 90 57 E3 1D 05 DA B7 A9 01 42 83 A7 49 4D .@.W.......B..IM
23023060 89 44 E3 87 07 DA DC 47 E3 84 07 DA 93 07 10 30 .D.....G.......0
23023070 93 05 11 01 22 85 23 18 F1 00 EF F0 2F 8F AD 45 ....".#...../..E
23023080 4A 85 23 2C 04 16 23 2E 04 16 EF D0 BF 8F 83 A7 J.#,..#.........
23023090 49 4D 08 40 0C 08 DC 47 81 44 82 97 95 BB       IM.@...G.D.... 

;; bt_smp_request_ltk: 2302309E
;;   Called from:
;;     2301DDB2 (in le_ltk_request)
bt_smp_request_ltk proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.mv	s1,a0
	c.swsp	a1,00000004
	c.swsp	a2,00000084
	c.mv	s2,a4
	sh	a3,sp,+00000006
	jal	ra,000000002302095E
	beq	a0,zero,000000002302321C

l230230BE:
	lhu	a5,sp,+00000006
	c.mv	s0,a0
	c.bnez	a5,0000000023023124

l230230C6:
	c.lwsp	s0,000000E4
	c.lwsp	a2,000000C4
	c.or	a5,a4
	c.bnez	a5,0000000023023124

l230230CE:
	addi	s3,a0,+0000009C
	c.li	a1,00000003
	c.mv	a0,s3
	jal	ra,000000002302098E
	c.beqz	a0,0000000023023124

l230230DC:
	c.li	a1,00000001
	c.mv	a0,s3
	jal	ra,000000002302098E
	c.beqz	a0,0000000023023124

l230230E6:
	lbu	a5,s0,+000000A5
	lbu	s1,s0,+000000AC
	bgeu	a5,s1,00000000230230F4

l230230F2:
	c.mv	s1,a5

l230230F4:
	andi	s1,s1,+000000FF
	c.mv	a2,s1
	addi	a1,s0,+000000DF
	c.mv	a0,s2
	jal	ra,000000002306CF80
	c.li	a5,0000000F
	bltu	a5,s1,0000000023023118

l2302310A:
	c.li	a2,00000010
	c.sub	a2,s1
	c.li	a1,00000000
	add	a0,s2,s1
	jal	ra,000000002306D1BC

l23023118:
	c.li	a1,00000001
	c.mv	a0,s3

l2302311C:
	jal	ra,0000000023020984
	c.li	s0,00000001
	c.j	0000000023023196

l23023124:
	lw	a5,s1,+0000009C
	c.bnez	a5,0000000023023152

l2302312A:
	lbu	a1,s1,+00000008
	addi	s3,s1,+00000070
	c.mv	a2,s3
	addi	a0,zero,+00000020
	jal	ra,0000000023023B2C
	sw	a0,s1,+0000009C
	c.bnez	a0,0000000023023152

l23023142:
	lbu	a1,s1,+00000008
	c.mv	a2,s3
	c.li	a0,00000001
	jal	ra,0000000023023B2C
	sw	a0,s1,+0000009C

l23023152:
	lhu	a5,sp,+00000006
	lw	a0,s1,+0000009C
	c.bnez	a5,00000000230231A6

l2302315C:
	c.lwsp	s0,000000E4
	c.lwsp	a2,000000C4
	c.or	a5,a4
	c.bnez	a5,00000000230231A6

l23023164:
	c.beqz	a0,0000000023023202

l23023166:
	lhu	a5,a0,+0000000A
	andi	a5,a5,+00000020
	c.beqz	a5,00000000230231A8

l23023170:
	lbu	s1,a0,+00000008
	addi	a1,a0,+00000016
	c.mv	a0,s2
	c.mv	a2,s1
	jal	ra,000000002306CF80
	c.li	a5,0000000F
	c.li	s0,00000001
	bltu	a5,s1,0000000023023196

l23023188:
	c.li	a2,00000010
	c.sub	a2,s1
	c.li	a1,00000000
	add	a0,s2,s1
	jal	ra,000000002306D1BC

l23023196:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l230231A6:
	c.beqz	a0,0000000023023202

l230231A8:
	lhu	a5,a0,+0000000A
	c.andi	a5,00000001
	c.beqz	a5,0000000023023202

l230231B0:
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	addi	a0,a0,+00000064
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023023202

l230231BE:
	lw	a0,s1,+0000009C
	c.li	a2,00000002
	addi	a1,sp,+00000006
	addi	a0,a0,+0000006C
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023023202

l230231D2:
	lw	a1,s1,+0000009C
	c.mv	a0,s2
	lbu	s1,a1,+00000008
	addi	a1,a1,+0000006E
	c.mv	a2,s1
	jal	ra,000000002306CF80
	c.li	a5,0000000F
	bltu	a5,s1,00000000230231FA

l230231EC:
	c.li	a2,00000010
	c.sub	a2,s1
	c.li	a1,00000000
	add	a0,s2,s1
	jal	ra,000000002306D1BC

l230231FA:
	c.li	a1,00000001
	addi	a0,s0,+0000009C
	c.j	000000002302311C

l23023202:
	c.li	a1,0000000E
	addi	a0,s0,+0000009C
	jal	ra,000000002302098E
	c.beqz	a0,0000000023023216

l2302320E:
	c.lw	s0,0(a0)
	c.li	a1,00000002
	jal	ra,0000000023026C4C

l23023216:
	c.mv	a0,s0
	jal	ra,00000000230209A6

l2302321C:
	c.li	s0,00000000
	c.j	0000000023023196

;; bt_smp_sign_verify: 23023220
;;   Called from:
;;     2302C0BC (in att_signed_write_cmd)
bt_smp_sign_verify proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	lhu	a5,a1,+0000000C
	c.mv	s0,a1
	c.lw	a1,8(a1)
	c.addi	a5,FFFFFFF4
	c.mv	s1,a0
	c.li	a2,0000000C
	c.add	a1,a5
	c.addi4spn	a0,00000004
	jal	ra,000000002306CF80
	lbu	a1,s1,+00000008
	addi	s2,s1,+00000070
	c.mv	a2,s2
	c.li	a0,00000010
	jal	ra,0000000023023B2C
	c.bnez	a0,0000000023023274

l23023252:
	c.mv	a0,s2
	jal	ra,0000000023025A64
	c.mv	a1,a0
	lui	a0,00023075
	addi	a0,a0,+0000068C
	jal	ra,0000000023003AC6
	c.li	a0,FFFFFFFE

l23023268:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23023274:
	c.lw	a0,96(a5)
	c.mv	s1,a0
	c.lw	s0,8(a0)
	c.swsp	a5,00000000
	lhu	a5,s0,+0000000C
	c.li	a2,00000004
	c.mv	a1,sp
	c.addi	a5,FFFFFFF4
	c.add	a0,a5
	jal	ra,000000002306CF80
	lhu	a2,s0,+0000000C
	c.lw	s0,8(a1)
	addi	a0,s1,+00000050
	c.addi	a2,FFFFFFF4
	c.slli	a2,10
	c.srli	a2,00000010
	jal	ra,0000000023020ACC
	c.beqz	a0,00000000230232BA

l230232A2:
	c.mv	a0,s2
	jal	ra,0000000023025A64
	c.mv	a1,a0
	lui	a0,00023075
	addi	a0,a0,+000006B0
	jal	ra,0000000023003AC6
	c.li	a0,FFFFFFFB
	c.j	0000000023023268

l230232BA:
	lhu	a5,s0,+0000000C
	c.lw	s0,8(a1)
	c.li	a2,0000000C
	c.addi	a5,FFFFFFF4
	c.add	a1,a5
	c.addi4spn	a0,00000004
	jal	ra,000000002306CEF8
	c.beqz	a0,00000000230232E8

l230232CE:
	c.mv	a0,s2
	jal	ra,0000000023025A64
	c.mv	a1,a0
	lui	a0,00023075
	addi	a0,a0,+000006D4
	jal	ra,0000000023003AC6
	addi	a0,zero,-0000004D
	c.j	0000000023023268

l230232E8:
	c.lw	s1,96(a5)
	c.addi	a5,00000001
	c.sw	s1,96(a5)
	c.j	0000000023023268

;; bt_smp_sign: 230232F0
;;   Called from:
;;     2302B01E (in att_send)
bt_smp_sign proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a1
	lbu	a1,a0,+00000008
	addi	s2,a0,+00000070
	c.mv	a2,s2
	c.li	a0,00000008
	jal	ra,0000000023023B2C
	c.bnez	a0,0000000023023330

l2302330E:
	c.mv	a0,s2
	jal	ra,0000000023025A64
	c.mv	a1,a0
	lui	a0,00023075
	addi	a0,a0,+00000668
	jal	ra,0000000023003AC6
	c.li	a0,FFFFFFFE

l23023324:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23023330:
	c.mv	s0,a0
	c.li	a1,0000000C
	addi	a0,s1,+00000008
	jal	ra,000000002302586C
	c.lw	s0,76(a5)
	c.lw	s1,8(a0)
	c.li	a2,00000004
	c.swsp	a5,00000084
	lhu	a5,s1,+0000000C
	c.addi4spn	a1,0000000C
	c.addi	a5,FFFFFFF4
	c.add	a0,a5
	jal	ra,000000002306CF80
	lhu	a2,s1,+0000000C
	c.lw	s1,8(a1)
	addi	a0,s0,+0000003C
	c.addi	a2,FFFFFFF4
	c.slli	a2,10
	c.srli	a2,00000010
	jal	ra,0000000023020ACC
	c.beqz	a0,0000000023023380

l23023368:
	c.mv	a0,s2
	jal	ra,0000000023025A64
	c.mv	a1,a0
	lui	a0,00023075
	addi	a0,a0,+000006B0
	jal	ra,0000000023003AC6
	c.li	a0,FFFFFFFB
	c.j	0000000023023324

l23023380:
	c.lw	s0,76(a5)
	c.addi	a5,00000001
	c.sw	s0,76(a5)
	c.j	0000000023023324

;; bt_smp_auth_passkey_entry: 23023388
;;   Called from:
;;     23027C84 (in bt_conn_auth_passkey_entry)
bt_smp_auth_passkey_entry proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.mv	s3,a1
	jal	ra,000000002302095E
	c.bnez	a0,00000000230233AE

l2302339C:
	c.li	s1,FFFFFFEA

l2302339E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l230233AE:
	addi	s2,a0,+0000009C
	c.mv	s0,a0
	c.li	a1,00000009
	c.mv	a0,s2
	jal	ra,0000000023020EA2
	c.beqz	a0,000000002302339C

l230233BE:
	c.li	a1,00000005
	c.mv	a0,s2
	jal	ra,000000002302098E
	c.mv	s1,a0
	c.bnez	a0,000000002302340A

l230233CA:
	c.addi4spn	a1,0000000C
	c.li	a2,00000004
	addi	a0,s0,+000000DF
	c.swsp	s3,00000084
	jal	ra,000000002306CF80
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,0000000023020EA2
	c.beqz	a0,000000002302339E

l230233E2:
	c.mv	a0,s0
	jal	ra,0000000023022664
	c.beqz	a0,00000000230233F4

l230233EA:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,00000000230221A2
	c.j	000000002302339E

l230233F4:
	c.lw	s0,0(a5)
	addi	a0,s0,+00000098
	c.li	a1,00000003
	lbu	a5,a5,+00000003
	c.beqz	a5,0000000023023404

l23023402:
	c.li	a1,00000004

l23023404:
	jal	ra,0000000023020984
	c.j	000000002302339E

l2302340A:
	c.lw	s0,0(a5)
	sw	s3,s0,+00000170
	lbu	a5,a5,+00000003
	c.bnez	a5,0000000023023436

l23023416:
	c.mv	a0,s0
	jal	ra,000000002302247A
	c.beqz	a0,000000002302342A

l2302341E:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,00000000230221A2

l23023426:
	c.li	s1,00000000
	c.j	000000002302339E

l2302342A:
	c.li	a1,00000003

l2302342C:
	addi	a0,s0,+00000098
	jal	ra,0000000023020984
	c.j	0000000023023426

l23023436:
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,000000002302098E
	c.mv	s1,a0
	c.beqz	a0,000000002302339E

l23023442:
	c.mv	a0,s0
	jal	ra,000000002302247A
	c.li	a1,00000004
	c.beqz	a0,000000002302342C

l2302344C:
	c.j	000000002302341E

;; bt_smp_auth_passkey_confirm: 2302344E
;;   Called from:
;;     23027CAC (in bt_conn_auth_passkey_confirm)
bt_smp_auth_passkey_confirm proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	jal	ra,000000002302095E
	c.bnez	a0,000000002302346E

l2302345E:
	c.li	s2,FFFFFFEA

l23023460:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s2
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2302346E:
	addi	s1,a0,+0000009C
	c.mv	s0,a0
	c.li	a1,00000009
	c.mv	a0,s1
	jal	ra,0000000023020EA2
	c.beqz	a0,000000002302345E

l2302347E:
	c.li	a1,00000007
	c.mv	a0,s1
	jal	ra,000000002302098E
	c.beqz	a0,0000000023023494

l23023488:
	c.li	a1,00000008
	c.mv	a0,s1

l2302348C:
	jal	ra,0000000023020984
	c.li	s2,00000000
	c.j	0000000023023460

l23023494:
	c.li	a1,0000000F
	c.mv	a0,s1
	jal	ra,000000002302098E
	c.mv	s2,a0
	c.li	a1,00000008
	c.mv	a0,s1
	bne	s2,zero,000000002302348C

l230234A6:
	jal	ra,000000002302098E
	c.beqz	a0,0000000023023460

l230234AC:
	c.lw	s0,0(a5)
	c.mv	a0,s0
	lbu	a5,a5,+00000003
	c.bnez	a5,00000000230234C6

l230234B6:
	jal	ra,00000000230215C6

l230234BA:
	c.mv	a1,a0
	c.beqz	a0,0000000023023460

l230234BE:
	c.mv	a0,s0
	jal	ra,00000000230221A2
	c.j	0000000023023460

l230234C6:
	jal	ra,000000002302167A
	c.j	00000000230234BA

;; bt_smp_auth_cancel: 230234CC
;;   Called from:
;;     23027CC8 (in bt_conn_auth_cancel)
bt_smp_auth_cancel proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002302095E
	c.bnez	a0,00000000230234E2

l230234D8:
	c.li	a0,FFFFFFEA

l230234DA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230234E2:
	c.mv	s0,a0
	c.li	a1,00000009
	addi	a0,a0,+0000009C
	jal	ra,0000000023020EA2
	c.beqz	a0,00000000230234D8

l230234F0:
	lbu	a5,s0,+000000A0
	c.li	a4,00000005
	bltu	a4,a5,0000000023023524

l230234FA:
	lui	a4,00023075
	c.slli	a5,02
	addi	a4,a4,+000004AC
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
2302350A                               85 45 22 85 22 44           .E"."D
23023510 B2 40 41 01 6F E0 FF C8 91 45 CD BF 89 45 FD B7 .@A.o....E...E..
23023520 A1 45 ED B7                                     .E..           

l23023524:
	c.li	a0,00000000
	c.j	00000000230234DA

;; bt_smp_auth_pairing_confirm: 23023528
;;   Called from:
;;     23027CE4 (in bt_conn_auth_pairing_confirm)
bt_smp_auth_pairing_confirm proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s2,a0
	jal	ra,000000002302095E
	c.bnez	a0,000000002302354A

l2302353A:
	c.li	a5,FFFFFFEA

l2302353C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2302354A:
	addi	s1,a0,+0000009C
	c.mv	s0,a0
	c.li	a1,00000009
	c.mv	a0,s1
	jal	ra,0000000023020EA2
	c.beqz	a0,000000002302353A

l2302355A:
	lbu	a5,s2,+00000003
	c.li	a1,00000005
	c.mv	a0,s1
	c.bnez	a5,00000000230235A6

l23023564:
	jal	ra,000000002302098E
	c.bnez	a0,000000002302357E

l2302356A:
	addi	a0,s0,+00000098
	c.li	a1,00000003
	jal	ra,0000000023020984
	c.mv	a0,s0
	jal	ra,00000000230225F6

l2302357A:
	c.mv	a5,a0
	c.j	000000002302353C

l2302357E:
	lui	a5,0004200E
	lw	a5,a5,+00000188
	c.bnez	a5,0000000023023594

l23023588:
	c.li	a1,00000006
	c.mv	a0,s1
	jal	ra,0000000023020984
	c.li	a5,00000000
	c.j	000000002302353C

l23023594:
	addi	a0,s0,+00000098
	c.li	a1,0000000C
	jal	ra,0000000023020984
	c.mv	a0,s0
	jal	ra,00000000230218F0
	c.j	000000002302357A

l230235A6:
	jal	ra,000000002302098E
	addi	a5,s0,+00000098
	c.bnez	a0,00000000230235C0

l230235B0:
	c.mv	a0,a5
	c.li	a1,00000003
	jal	ra,0000000023020984
	c.mv	a0,s0
	jal	ra,0000000023021956
	c.j	000000002302357A

l230235C0:
	c.mv	a0,a5
	c.li	a1,0000000C
	jal	ra,0000000023020984
	c.mv	a0,s0
	jal	ra,0000000023021956
	c.li	a5,00000000
	c.beqz	a0,000000002302353C

l230235D2:
	c.li	a5,FFFFFFFB
	c.j	000000002302353C

;; bt_smp_start_security: 230235D6
;;   Called from:
;;     23026CF0 (in bt_conn_set_security)
bt_smp_start_security proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	lbu	a5,a0,+00000003
	c.mv	s0,a0
	c.beqz	a5,00000000230235F6

l230235EC:
	c.li	a4,00000001
	beq	a5,a4,0000000023023688

l230235F2:
	c.li	s1,FFFFFFEA
	c.j	0000000023023602

l230235F6:
	jal	ra,000000002302095E
	c.mv	s3,a0
	c.bnez	a0,0000000023023614

l230235FE:
	addi	s1,zero,-00000039

l23023602:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23023614:
	c.li	a1,0000000B
	addi	a0,s0,+00000004
	jal	ra,000000002302098E
	c.beqz	a0,0000000023023634

l23023620:
	c.mv	a0,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	jal	zero,0000000023021CE4

l23023634:
	c.mv	a0,s0
	jal	ra,00000000230213F0
	c.beqz	a0,0000000023023620

l2302363C:
	addi	s2,s3,+0000009C
	c.li	a1,00000003
	c.mv	a0,s2
	jal	ra,000000002302098E
	c.beqz	a0,000000002302364E

l2302364A:
	c.li	s1,FFFFFFF0
	c.j	0000000023023602

l2302364E:
	c.li	a1,00000001
	c.mv	a0,s2
	jal	ra,000000002302098E
	c.bnez	a0,000000002302364A

l23023658:
	lw	a1,s0,+0000009C
	c.mv	a0,s0
	lbu	a4,a1,+00000008
	addi	a3,a1,+00000016
	addi	a2,a1,+00000014
	c.addi	a1,0000000C
	jal	ra,0000000023026B9E
	c.mv	s1,a0
	c.bnez	a0,0000000023023602

l23023674:
	c.li	a1,0000000B
	addi	a0,s3,+00000098
	jal	ra,0000000023020984
	c.li	a1,00000001
	c.mv	a0,s2

l23023682:
	jal	ra,0000000023020984
	c.j	0000000023023602

l23023688:
	jal	ra,000000002302095E
	c.mv	s2,a0
	c.beqz	a0,00000000230235FE

l23023690:
	addi	s3,a0,+0000009C
	c.li	a1,00000004
	c.mv	a0,s3
	jal	ra,000000002302098E
	c.li	s1,FFFFFFFB
	c.bnez	a0,0000000023023602

l230236A0:
	c.li	a1,00000003
	c.mv	a0,s3
	jal	ra,000000002302098E
	c.bnez	a0,000000002302364A

l230236AA:
	c.li	a1,00000001
	c.mv	a0,s3
	jal	ra,000000002302098E
	c.bnez	a0,000000002302364A

l230236B4:
	lbu	a0,s0,+0000000A
	jal	ra,0000000023021322
	c.beqz	a0,00000000230236E8

l230236BE:
	lw	a5,s0,+0000009C
	c.bnez	a5,00000000230236D8

l230236C4:
	lbu	a0,s0,+00000008
	addi	a1,s0,+00000070
	c.li	s1,FFFFFFF4
	c.jal	0000000023023998
	sw	a0,s0,+0000009C
	beq	a0,zero,0000000023023602

l230236D8:
	c.mv	a0,s2
	jal	ra,0000000023021C8A
	c.mv	s1,a0
	c.beqz	a0,0000000023023700

l230236E2:
	addi	s1,zero,-00000037
	c.j	0000000023023602

l230236E8:
	c.li	a1,0000000B
	addi	a0,s0,+00000004
	jal	ra,000000002302098E
	bne	a0,zero,00000000230235F2

l230236F6:
	c.mv	a0,s0
	jal	ra,00000000230213F0
	c.bnez	a0,00000000230236BE

l230236FE:
	c.j	00000000230235F2

l23023700:
	c.li	a1,0000000B
	c.mv	a0,s2
	jal	ra,0000000023021506
	c.mv	a2,a0
	c.beqz	a0,00000000230236E2

l2302370C:
	c.li	a1,00000001
	c.addi	a0,00000008
	c.swsp	a2,00000084
	jal	ra,000000002302586C
	c.mv	s4,a0
	c.li	a1,00000009
	addi	a0,s0,+0000000A
	jal	ra,00000000230212CE
	c.lwsp	a2,00000084
	sb	a0,s4,+00000000
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a1,00000006
	c.mv	a0,s0
	jal	ra,000000002301F92C
	c.li	a1,0000000E
	c.mv	a0,s3
	jal	ra,0000000023020984
	c.li	a1,00000001
	addi	a0,s2,+00000098
	c.j	0000000023023682

;; bt_smp_update_keys: 23023744
;;   Called from:
;;     2301C89E (in hci_encrypt_key_refresh_complete)
;;     2301C950 (in hci_encrypt_change)
bt_smp_update_keys proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s0,a0
	jal	ra,000000002302095E
	beq	a0,zero,0000000023023874

l2302375A:
	addi	s2,a0,+0000009C
	c.mv	s1,a0
	c.li	a1,00000003
	c.mv	a0,s2
	jal	ra,000000002302098E
	beq	a0,zero,0000000023023874

l2302376C:
	lw	a0,s0,+0000009C
	c.beqz	a0,0000000023023774

l23023772:
	c.jal	0000000023023C66

l23023774:
	lbu	a0,s0,+00000008
	addi	s3,s0,+00000070
	c.mv	a1,s3
	c.jal	0000000023023998
	sw	a0,s0,+0000009C
	c.bnez	a0,00000000230237AE

l23023786:
	c.mv	a0,s3
	jal	ra,0000000023025A64
	c.mv	a1,a0
	lui	a0,00023076
	addi	a0,a0,-0000077C
	jal	ra,0000000023003AC6
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.li	a1,00000008
	c.addi16sp	00000020
	jal	zero,00000000230221A2

l230237AE:
	c.li	a1,0000000D
	c.mv	a0,s2
	jal	ra,000000002302098E
	c.beqz	a0,00000000230237C8

l230237B8:
	lw	a4,s0,+0000009C
	lbu	a5,a4,+00000009
	ori	a5,a5,+00000002
	sb	a5,a4,+00000009

l230237C8:
	lw	a3,s0,+0000009C
	lbu	a2,s1,+000000A0
	c.li	a4,00000005
	lbu	a5,a3,+00000009
	bltu	a4,a2,000000002302386A

l230237DA:
	c.li	a4,00000001
	sll	a4,a4,a2
	andi	a4,a4,+0000002E
	c.beqz	a4,000000002302386A

l230237E6:
	ori	a5,a5,+00000001

l230237EA:
	sb	a5,a3,+00000009
	lbu	a4,s1,+000000AC
	lbu	a5,s1,+000000A5
	lw	a3,s0,+0000009C
	bgeu	a4,a5,0000000023023800

l230237FE:
	c.mv	a5,a4

l23023800:
	sb	a5,a3,+00000008
	c.li	a1,00000005
	c.mv	a0,s2
	jal	ra,000000002302098E
	lw	a5,s0,+0000009C
	lbu	a4,a5,+00000009
	c.beqz	a0,000000002302386E

l23023816:
	ori	a4,a4,+00000010
	sb	a4,a5,+00000009
	c.li	a1,0000000C
	c.mv	a0,s2
	jal	ra,000000002302098E
	c.beqz	a0,0000000023023874

l23023828:
	lw	a0,s0,+0000009C
	addi	a1,zero,+00000020
	c.jal	0000000023023C5A
	lw	a0,s0,+0000009C
	addi	a1,s1,+000000DF
	c.li	a2,00000010
	c.addi	a0,00000016
	jal	ra,000000002306CF80
	lw	a0,s0,+0000009C
	c.li	a2,00000008
	c.li	a1,00000000
	c.addi	a0,0000000C
	jal	ra,000000002306D1BC
	lw	a0,s0,+0000009C
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a2,00000002
	c.li	a1,00000000
	c.addi	a0,00000014
	c.addi16sp	00000020
	jal	zero,000000002306D1BC

l2302386A:
	c.andi	a5,FFFFFFFE
	c.j	00000000230237EA

l2302386E:
	c.andi	a4,FFFFFFEF
	sb	a4,a5,+00000009

l23023874:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; bt_smp_init: 23023882
;;   Called from:
;;     23027D5A (in bt_conn_init)
bt_smp_init proc
	lui	a0,0004201A
	c.addi	sp,FFFFFFF0
	c.li	a2,00000001
	c.li	a1,00000000
	addi	a0,a0,+00000458
	c.swsp	ra,00000084
	jal	ra,000000002302517E
	lui	a5,0004200D
	lbu	a5,a5,+0000039A
	lui	a0,0004200E
	lui	a4,0004200E
	c.andi	a5,00000006
	c.addi	a5,FFFFFFFA
	sltiu	a5,a5,+00000001
	addi	a0,a0,-00000448
	sb	a5,a4,+0000018C
	jal	ra,000000002301F3DC
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bt_keys_find_addr.part.2: 230238C2
;;   Called from:
;;     23023C56 (in bt_keys_find_addr)
;;     23023CC4 (in bt_keys_update_usage)
bt_keys_find_addr.part.2 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042012
	lbu	a5,s0,-000002C4
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s2,a1
	addi	s0,s0,-000002C4
	beq	a5,a0,00000000230238FA

l230238E0:
	lbu	a5,s0,+00000084
	bne	a5,s1,0000000023023912

l230238E8:
	c.li	a2,00000007
	c.mv	a1,s2
	addi	a0,s0,+00000085
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023023912

l230238F6:
	c.li	a0,00000001
	c.j	0000000023023906

l230238FA:
	c.li	a2,00000007
	addi	a0,s0,+00000001
	jal	ra,000000002306CEF8
	c.bnez	a0,00000000230238E0

l23023906:
	addi	a5,zero,+00000084
	add	a0,a0,a5
	c.add	a0,s0
	c.j	0000000023023914

l23023912:
	c.li	a0,00000000

l23023914:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; bt_keys_find.part.1: 23023920
;;   Called from:
;;     23023B2C (in bt_keys_find)
;;     23023B40 (in bt_keys_get_type)
bt_keys_find.part.1 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042012
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	addi	a5,s0,-000002C4
	c.swsp	ra,0000008C
	lhu	a5,a5,+0000000A
	c.mv	s3,a0
	c.mv	s2,a1
	c.and	a5,a0
	c.mv	s1,a2
	addi	s0,s0,-000002C4
	c.beqz	a5,000000002302395C

l23023946:
	lbu	a5,s0,+00000000
	bne	a5,a1,000000002302395C

l2302394E:
	c.li	a2,00000007
	c.mv	a1,s1
	addi	a0,s0,+00000001
	jal	ra,000000002306CEF8
	c.beqz	a0,0000000023023990

l2302395C:
	lhu	a0,s0,+0000008E
	and	a0,a0,s3
	c.beqz	a0,0000000023023994

l23023966:
	lbu	a5,s0,+00000084
	bne	a5,s2,0000000023023994

l2302396E:
	c.li	a2,00000007
	c.mv	a1,s1
	addi	a0,s0,+00000085
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023023994

l2302397C:
	addi	a0,zero,+00000084

l23023980:
	c.add	a0,s0

l23023982:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23023990:
	c.li	a0,00000000
	c.j	0000000023023980

l23023994:
	c.li	a0,00000000
	c.j	0000000023023982

;; bt_keys_get_addr: 23023998
;;   Called from:
;;     23020F4E (in update_keys_check)
;;     23021D68 (in smp_send_pairing_req)
;;     2302203E (in smp_pairing_req)
;;     23022BA8 (in smp_public_key)
;;     230236CE (in bt_smp_start_security)
;;     2302377E (in bt_smp_update_keys)
;;     23023B4A (in bt_keys_get_type)
bt_keys_get_addr proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,00042012
	lbu	a5,s1,-000002C4
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.mv	s3,a0
	c.swsp	ra,00000094
	lui	a0,00042012
	c.swsp	s2,00000010
	c.mv	s4,a1
	addi	s1,s1,-000002C4
	addi	s0,a0,-000002C3
	bne	a5,s3,00000000230239CE

l230239C2:
	c.li	a2,00000007
	addi	a0,a0,-000002C3
	jal	ra,000000002306CEF8
	c.beqz	a0,0000000023023AB2

l230239CE:
	c.mv	a0,s0
	c.li	a2,00000007
	c.mv	a1,sp
	c.swsp	zero,00000000
	sh	zero,sp,+00000004
	sb	zero,sp,+00000006
	jal	ra,000000002306CEF8
	c.li	s0,00000000
	c.beqz	a0,00000000230239F0

l230239E6:
	lbu	s0,s1,+00000008
	sltu	s0,zero,s0
	c.slli	s0,01

l230239F0:
	lbu	a5,s1,+00000084
	bne	a5,s3,0000000023023A06

l230239F8:
	c.li	a2,00000007
	c.mv	a1,s4
	addi	a0,s1,+00000085
	jal	ra,000000002306CEF8
	c.beqz	a0,0000000023023AC8

l23023A06:
	c.li	a5,00000002
	bne	s0,a5,0000000023023A78

l23023A0C:
	c.li	a2,00000007
	c.mv	a1,sp
	addi	a0,s1,+00000085
	c.swsp	zero,00000000
	sh	zero,sp,+00000004
	sb	zero,sp,+00000006
	jal	ra,000000002306CEF8
	c.beqz	a0,0000000023023ACE

l23023A24:
	lbu	a5,s1,+0000008C
	c.beqz	a5,0000000023023ACE

l23023A2A:
	lw	a4,s1,+00000104
	lw	a5,s1,+00000080
	addi	s0,s1,+00000084
	bltu	a4,a5,0000000023023A3C

l23023A3A:
	c.mv	s0,s1

l23023A3C:
	lbu	a0,s0,+00000000
	addi	s2,s0,+00000001
	c.mv	a1,s2
	jal	ra,000000002301D39A
	c.mv	a0,s2
	c.li	a2,00000007
	c.addi4spn	a1,00000008
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	sb	zero,sp,+0000000E
	jal	ra,000000002306CEF8
	c.li	s2,00000000
	c.bnez	a0,0000000023023AB6

l23023A62:
	c.sub	s0,s1
	lui	a0,0003E0F8
	c.srai	s0,00000002
	addi	a0,a0,+000003E1
	add	s0,s0,a0
	c.li	a5,00000001
	bltu	a5,s0,0000000023023AB6

l23023A78:
	addi	a0,zero,+00000084
	add	s0,s0,a0
	c.li	a2,00000007
	c.mv	a1,s4
	add	s2,s1,s0
	c.addi	s0,00000001
	sb	s3,s2,+00000000
	add	a0,s1,s0
	jal	ra,000000002306CF80
	lui	a4,0004200E
	addi	a4,a4,+00000190
	c.lw	a4,0(a5)
	c.addi	a5,00000001
	c.sw	a4,0(a5)
	sw	a5,s2,+00000080
	lui	a5,0004200E
	sw	s2,a5,+00000194
	c.j	0000000023023AB6

l23023AB2:
	c.li	s2,00000000

l23023AB4:
	c.add	s2,s1

l23023AB6:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s2
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23023AC8:
	addi	s2,zero,+00000084
	c.j	0000000023023AB4

l23023ACE:
	c.li	s0,00000001
	c.j	0000000023023A78

;; bt_keys_foreach: 23023AD2
;;   Called from:
;;     2301D6CC (in bt_id_del)
;;     2301DFFE (in enh_conn_complete)
;;     23023CB6 (in bt_keys_clear_all)
bt_keys_foreach proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a0
	lui	a0,00042012
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	addi	a5,a0,-000002C4
	lhu	a5,a5,+0000000A
	c.mv	s0,a1
	addi	s1,a0,-000002C4
	and	a5,a5,s2
	c.beqz	a5,0000000023023B02

l23023AF6:
	c.mv	a1,a2
	addi	a0,a0,-000002C4
	c.swsp	a2,00000084
	c.jalr	s0
	c.lwsp	a2,00000084

l23023B02:
	lhu	a0,s1,+0000008E
	and	a0,a0,s2
	c.beqz	a0,0000000023023B20

l23023B0C:
	c.mv	t1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	addi	a0,s1,+00000084
	c.lwsp	s4,00000024
	c.mv	a1,a2
	c.addi16sp	00000020
	c.jr	t1

l23023B20:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; bt_keys_find: 23023B2C
;;   Called from:
;;     2302140E (in smp_keys_check.part.5)
;;     23021420 (in smp_keys_check.part.5)
;;     23021E76 (in smp_security_request)
;;     23021E88 (in smp_security_request)
;;     23023138 (in bt_smp_request_ltk)
;;     2302314A (in bt_smp_request_ltk)
;;     2302324C (in bt_smp_sign_verify)
;;     23023308 (in bt_smp_sign)
bt_keys_find proc
	jal	zero,0000000023023920

;; bt_keys_get_type: 23023B30
;;   Called from:
;;     230210BC (in smp_ident_info)
;;     2302112A (in smp_encrypt_info)
;;     23021B5E (in smp_signing_info)
;;     23021BF6 (in smp_master_ident)
;;     230229BE (in smp_ident_addr_info)
bt_keys_get_type proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	s2,a2
	jal	ra,0000000023023920
	c.bnez	a0,0000000023023B5A

l23023B46:
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023023998
	c.beqz	a0,0000000023023B5A

l23023B50:
	lhu	a5,a0,+0000000A
	c.or	s0,a5
	sh	s0,a0,+0000000A

l23023B5A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; bt_keys_find_irk: 23023B66
;;   Called from:
;;     2301D334 (in bt_lookup_id_addr)
bt_keys_find_irk proc
	lbu	a4,a1,+00000000
	c.li	a5,00000001
	beq	a4,a5,0000000023023B74

l23023B70:
	c.li	a0,00000000
	c.jr	ra

l23023B74:
	lbu	a5,a1,+00000006
	addi	a4,zero,+00000040
	andi	a5,a5,+000000C0
	bne	a5,a4,0000000023023B70

l23023B84:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042012
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	addi	a5,s0,-000002C4
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	lhu	a5,a5,+0000000A
	c.mv	s1,a1
	c.mv	s2,a0
	c.andi	a5,00000002
	addi	s0,s0,-000002C4
	c.beqz	a5,0000000023023BC0

l23023BA8:
	lbu	a5,s0,+00000000
	bne	a5,a0,0000000023023BC0

l23023BB0:
	c.li	a2,00000006
	addi	a1,s0,+00000036
	addi	a0,s1,+00000001
	jal	ra,000000002306CEF8
	c.beqz	a0,0000000023023BE8

l23023BC0:
	lhu	a5,s0,+0000008E
	c.andi	a5,00000002
	c.beqz	a5,0000000023023BEC

l23023BC8:
	lbu	a5,s0,+00000084
	bne	a5,s2,0000000023023BEC

l23023BD0:
	c.li	a2,00000006
	addi	a1,s0,+000000BA
	addi	a0,s1,+00000001
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023023BEC

l23023BE0:
	addi	a0,zero,+00000084

l23023BE4:
	c.add	a0,s0
	c.j	0000000023023C32

l23023BE8:
	c.li	a0,00000000
	c.j	0000000023023BE4

l23023BEC:
	lhu	a5,s0,+0000000A
	c.andi	a5,00000002
	c.beqz	a5,0000000023023C0C

l23023BF4:
	lbu	a5,s0,+00000000
	bne	a5,s2,0000000023023C0C

l23023BFC:
	addi	s3,s1,+00000001
	c.mv	a1,s3
	addi	a0,s0,+00000026
	jal	ra,0000000023025D54
	c.bnez	a0,0000000023023C40

l23023C0C:
	lhu	a5,s0,+0000008E
	c.andi	a5,00000002
	c.beqz	a5,0000000023023C30

l23023C14:
	lbu	a5,s0,+00000084
	bne	a5,s2,0000000023023C30

l23023C1C:
	addi	s3,s1,+00000001
	c.mv	a1,s3
	addi	a0,s0,+000000AA
	jal	ra,0000000023025D54
	addi	s1,zero,+00000084
	c.bnez	a0,0000000023023C42

l23023C30:
	c.li	a0,00000000

l23023C32:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23023C40:
	c.li	s1,00000000

l23023C42:
	addi	a0,s1,+00000036
	c.li	a2,00000006
	c.mv	a1,s3
	c.add	a0,s0
	jal	ra,000000002306CF80
	add	a0,s0,s1
	c.j	0000000023023C32

;; bt_keys_find_addr: 23023C56
;;   Called from:
;;     2301D3EA (in bt_unpair)
;;     2301EE0E (in bt_addr_le_is_bonded)
;;     23021180 (in legacy_request_tk)
bt_keys_find_addr proc
	jal	zero,00000000230238C2

;; bt_keys_add_type: 23023C5A
;;   Called from:
;;     23021AC0 (in bt_smp_distribute_keys)
;;     23021B08 (in bt_smp_distribute_keys)
;;     23023830 (in bt_smp_update_keys)
bt_keys_add_type proc
	lhu	a5,a0,+0000000A
	c.or	a1,a5
	sh	a1,a0,+0000000A
	c.jr	ra

;; bt_keys_clear: 23023C66
;;   Called from:
;;     2301D3F4 (in bt_unpair)
;;     2302100A (in smp_pairing_failed)
;;     23021072 (in smp_timeout)
;;     23021290 (in bt_smp_disconnected)
;;     23023772 (in bt_smp_update_keys)
;;     23023C98 (in keys_clear_id)
bt_keys_clear proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lhu	a5,a0,+0000000A
	c.mv	s0,a0
	c.andi	a5,00000002
	c.beqz	a5,0000000023023C7A

l23023C76:
	jal	ra,000000002301D5AE

l23023C7A:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	addi	a2,zero,+00000084
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,000000002306D1BC

;; keys_clear_id: 23023C8C
keys_clear_id proc
	lbu	a4,a1,+00000000
	lbu	a5,a0,+00000000
	bne	a4,a5,0000000023023C9C

l23023C98:
	jal	zero,0000000023023C66

l23023C9C:
	c.jr	ra

;; bt_keys_clear_all: 23023C9E
;;   Called from:
;;     2301D3B2 (in bt_unpair)
bt_keys_clear_all proc
	c.addi	sp,FFFFFFE0
	lui	a1,00023024
	sb	a0,sp,+0000000F
	addi	a2,sp,+0000000F
	addi	a1,a1,-00000374
	addi	a0,zero,+0000003F
	c.swsp	ra,0000008C
	jal	ra,0000000023023AD2
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; bt_keys_update_usage: 23023CC0
;;   Called from:
;;     23026C84 (in bt_conn_security_changed)
bt_keys_update_usage proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230238C2
	c.beqz	a0,0000000023023CEC

l23023CCA:
	lui	a5,0004200E
	addi	a5,a5,+00000194
	c.lw	a5,0(a4)
	beq	a4,a0,0000000023023CEC

l23023CD8:
	lui	a3,0004200E
	addi	a3,a3,+00000190
	c.lw	a3,0(a4)
	c.sw	a5,0(a0)
	c.addi	a4,00000001
	c.sw	a3,0(a4)
	sw	a4,a0,+00000080

l23023CEC:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; notify_func: 23023CF2
notify_func proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lhu	a5,a1,+00000028
	c.bnez	a5,0000000023023D1A

l23023CFE:
	lui	a0,00023076
	addi	a0,a0,+00000480
	c.mv	s0,a1
	jal	ra,0000000023003AC6
	c.li	a0,00000000
	sh	zero,s0,+00000024

l23023D12:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23023D1A:
	lui	a0,00023076
	c.mv	a1,a3
	addi	a0,a0,+00000490
	jal	ra,0000000023003AC6
	c.li	a0,00000001
	c.j	0000000023023D12

;; le_param_updated: 23023D2C
le_param_updated proc
	lui	a0,00023076
	addi	a0,a0,+0000044C
	jal	zero,0000000023003AC6

;; ble_set_tx_pwr: 23023D38
ble_set_tx_pwr proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.li	a5,00000002
	beq	a2,a5,0000000023023D50

l23023D42:
	lui	a0,00023076
	addi	a0,a0,-0000016C

l23023D4A:
	jal	ra,0000000023003AC6
	c.j	0000000023023D76

l23023D50:
	addi	a0,a3,+00000004
	addi	a1,sp,+0000000F
	jal	ra,0000000023044AF4
	lbu	a0,sp,+0000000F
	c.li	a5,00000014
	bgeu	a5,a0,0000000023023D7C

l23023D66:
	lui	a0,00023076
	c.li	a2,00000014
	c.li	a1,00000000
	addi	a0,a0,-00000144
	jal	ra,0000000023003AC6

l23023D76:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23023D7C:
	c.slli	a0,18
	c.srai	a0,00000018
	jal	ra,000000002301F2DC
	c.mv	a1,a0
	c.beqz	a0,0000000023023D96

l23023D88:
	lui	a0,00023076
	addi	a0,a0,-00000100
	jal	ra,0000000023003AC6
	c.j	0000000023023D76

l23023D96:
	lui	a0,00023076
	addi	a0,a0,-000000D0
	c.j	0000000023023D4A

;; ble_unsubscribe: 23023DA0
ble_unsubscribe proc
	lui	a5,0004200E
	lw	a0,a5,+0000019C
	c.bnez	a0,0000000023023DB6

l23023DAA:
	lui	a0,00023076
	addi	a0,a0,+0000011C

l23023DB2:
	jal	zero,0000000023003AC6

l23023DB6:
	lui	a1,00042012
	addi	a5,a1,+000000B4
	lhu	a5,a5,+00000024
	c.bnez	a5,0000000023023DCE

l23023DC4:
	lui	a0,00023076
	addi	a0,a0,+0000012C
	c.j	0000000023023DB2

l23023DCE:
	c.addi	sp,FFFFFFF0
	addi	a1,a1,+000000B4
	c.swsp	ra,00000084
	jal	ra,000000002302A030
	c.mv	a1,a0
	c.beqz	a0,0000000023023DEE

l23023DDE:
	c.lwsp	a2,00000020
	lui	a0,00023076
	addi	a0,a0,+00000144
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

l23023DEE:
	lui	a0,00023076
	c.lwsp	a2,00000020
	addi	a0,a0,+00000164
	c.addi	sp,00000010
	c.j	0000000023023DB2

;; write_func: 23023DFC
write_func proc
	lui	a0,00023076
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000730
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000020
	lui	a0,00042012
	addi	a2,zero,+00000028
	c.li	a1,00000000
	addi	a0,a0,+000000E8
	c.addi	sp,00000010
	jal	zero,000000002306D1BC

;; ble_exchange_mtu: 23023E22
ble_exchange_mtu proc
	lui	a5,0004200E
	lw	a0,a5,+0000019C
	c.bnez	a0,0000000023023E38

l23023E2C:
	lui	a0,00023076
	addi	a0,a0,+0000011C

l23023E34:
	jal	zero,0000000023003AC6

l23023E38:
	c.addi	sp,FFFFFFF0
	lui	a1,00042012
	lui	a5,00023024
	addi	a4,a1,-00000190
	c.swsp	ra,00000084
	addi	a5,a5,-00000188
	addi	a1,a1,-00000190
	c.sw	a4,24(a5)
	jal	ra,000000002302908E
	c.mv	a1,a0
	c.beqz	a0,0000000023023E6A

l23023E5A:
	c.lwsp	a2,00000020
	lui	a0,00023076
	addi	a0,a0,-00000448
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

l23023E6A:
	lui	a0,00023076
	c.lwsp	a2,00000020
	addi	a0,a0,-0000042C
	c.addi	sp,00000010
	c.j	0000000023023E34

;; exchange_func: 23023E78
exchange_func proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.beqz	a1,0000000023023EA0

l23023E7E:
	lui	a1,00023076
	addi	a1,a1,+00000408

l23023E86:
	c.swsp	a1,00000084
	jal	ra,0000000023028EE0
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.mv	a2,a0
	lui	a0,00023076
	addi	a0,a0,+00000410
	c.addi16sp	00000020
	jal	zero,0000000023003AC6

l23023EA0:
	lui	a1,00023076
	addi	a1,a1,+000003FC
	c.j	0000000023023E86

;; ble_auth_pairing_confirm: 23023EAA
ble_auth_pairing_confirm proc
	lui	a5,0004200E
	lw	a0,a5,+0000019C
	c.bnez	a0,0000000023023EC0

l23023EB4:
	lui	a0,00023076
	addi	a0,a0,+0000011C
	jal	zero,0000000023003AC6

l23023EC0:
	jal	zero,0000000023027CD0

;; ble_auth_passkey_confirm: 23023EC4
ble_auth_passkey_confirm proc
	lui	a5,0004200E
	lw	a0,a5,+0000019C
	c.bnez	a0,0000000023023EDA

l23023ECE:
	lui	a0,00023076
	addi	a0,a0,+0000011C
	jal	zero,0000000023003AC6

l23023EDA:
	jal	zero,0000000023027C98

;; ble_auth_cancel: 23023EDE
ble_auth_cancel proc
	lui	a5,0004200E
	lw	a0,a5,+0000019C
	c.bnez	a0,0000000023023EF4

l23023EE8:
	lui	a0,00023076
	addi	a0,a0,+0000011C
	jal	zero,0000000023003AC6

l23023EF4:
	jal	zero,0000000023027CB4

;; ble_auth: 23023EF8
ble_auth proc
	lui	a0,0004200D
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000004C8
	c.swsp	ra,00000084
	jal	ra,0000000023027C34
	c.beqz	a0,0000000023023F1A

l23023F0A:
	lui	a0,00023076
	addi	a0,a0,-00000614

l23023F12:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

l23023F1A:
	lui	a0,00023076
	addi	a0,a0,-000005E8
	c.j	0000000023023F12

;; ble_security: 23023F24
ble_security proc
	c.addi	sp,FFFFFFE0
	c.li	a5,00000004
	sb	a5,sp,+0000000F
	lui	a5,0004200E
	lw	a4,a5,+0000019C
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.bnez	a4,0000000023023F48

l23023F3A:
	lui	a0,00023076
	addi	a0,a0,-00000300

l23023F42:
	jal	ra,0000000023003AC6
	c.j	0000000023023F78

l23023F48:
	addi	s0,a5,+0000019C
	c.li	a5,00000002
	bne	a2,a5,0000000023023F5E

l23023F52:
	addi	a1,sp,+0000000F
	addi	a0,a3,+00000004
	jal	ra,0000000023044AF4

l23023F5E:
	lbu	a1,sp,+0000000F
	c.lw	s0,0(a0)
	jal	ra,0000000023026CA6
	c.mv	a1,a0
	c.beqz	a0,0000000023023F80

l23023F6C:
	lui	a0,00023076
	addi	a0,a0,-000002C0
	jal	ra,0000000023003AC6

l23023F78:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23023F80:
	lui	a0,00023076
	addi	a0,a0,-00000298
	c.j	0000000023023F42

;; ble_select_conn: 23023F8A
ble_select_conn proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.li	a5,00000003
	beq	a2,a5,0000000023023FAE

l23023F98:
	lui	a0,00023076
	addi	a0,a0,-0000016C

l23023FA0:
	jal	ra,0000000023003AC6

l23023FA4:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l23023FAE:
	addi	a0,a3,+00000004
	c.addi4spn	a1,00000018
	c.swsp	a3,00000084
	jal	ra,0000000023044AF4
	c.lwsp	a2,000000A4
	c.li	a2,00000006
	c.addi4spn	a1,00000010
	addi	a0,a3,+00000008
	jal	ra,0000000023044AA4
	c.li	a2,00000006
	addi	a1,sp,+00000019
	c.addi4spn	a0,00000010
	jal	ra,00000000230260AA
	c.addi4spn	a1,00000018
	c.li	a0,00000000
	jal	ra,0000000023027404
	c.mv	s1,a0
	c.bnez	a0,0000000023023FEA

l23023FE0:
	lui	a0,00023076
	addi	a0,a0,-00000278
	c.j	0000000023023FA0

l23023FEA:
	lui	a5,0004200E
	lw	a0,a5,+0000019C
	addi	s0,a5,+0000019C
	c.beqz	a0,0000000023023FFC

l23023FF8:
	jal	ra,000000002302753A

l23023FFC:
	c.sw	s0,0(s1)
	c.j	0000000023023FA4

;; ble_disconnect: 23024000
ble_disconnect proc
	c.addi16sp	FFFFFFC0
	c.li	a5,FFFFFFFF
	sb	a5,sp,+0000001F
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.li	a5,00000003
	beq	a2,a5,0000000023024026

l23024012:
	lui	a0,00023076
	addi	a0,a0,-0000016C

l2302401A:
	jal	ra,0000000023003AC6

l2302401E:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.addi16sp	00000040
	c.jr	ra

l23024026:
	addi	a0,a3,+00000004
	addi	a1,sp,+0000001F
	c.swsp	a3,00000084
	jal	ra,0000000023044AF4
	c.lwsp	a2,000000A4
	c.li	a2,00000006
	c.addi4spn	a1,00000020
	addi	a0,a3,+00000008
	jal	ra,0000000023044AA4
	c.li	a2,00000006
	addi	a1,sp,+00000029
	c.addi4spn	a0,00000020
	jal	ra,00000000230260AA
	lbu	a5,sp,+0000001F
	c.addi4spn	a1,00000028
	c.li	a0,00000000
	sb	a5,sp,+00000028
	jal	ra,0000000023027404
	c.mv	s0,a0
	c.bnez	a0,000000002302406C

l23024062:
	lui	a0,00023076
	addi	a0,a0,+0000011C
	c.j	000000002302401A

l2302406C:
	c.li	a1,00000013
	jal	ra,000000002302761C
	c.beqz	a0,0000000023024088

l23024074:
	lui	a0,00023076
	addi	a0,a0,-000004C8

l2302407C:
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	jal	ra,000000002302753A
	c.j	000000002302401E

l23024088:
	lui	a0,00023076
	addi	a0,a0,-000004B0
	c.j	000000002302407C

;; ble_connect: 23024092
ble_connect proc
	c.addi16sp	FFFFFFD0
	c.li	a5,FFFFFFFF
	sb	a5,sp,+00000007
	lui	a5,0004200E
	addi	a5,a5,-00000300
	c.lw	a5,0(a4)
	c.lw	a5,4(a5)
	c.swsp	s1,00000090
	c.li	a1,00000000
	c.mv	s1,a2
	c.addi4spn	a0,00000008
	c.li	a2,00000006
	c.swsp	s0,00000014
	c.swsp	a5,0000008C
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.mv	s0,a3
	c.swsp	a4,0000000C
	jal	ra,000000002306D1BC
	c.li	a5,00000003
	beq	s1,a5,00000000230240DE

l230240C6:
	lui	a0,00023076
	addi	a0,a0,-0000016C

l230240CE:
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l230240DE:
	addi	a0,s0,+00000004
	addi	a1,sp,+00000007
	jal	ra,0000000023044AF4
	lbu	a5,sp,+00000007
	addi	a0,s0,+00000008
	c.li	a2,00000006
	c.addi4spn	a1,00000008
	sb	a5,sp,+00000010
	c.li	s0,00000000
	jal	ra,0000000023044AA4
	lui	s2,00023076
	c.li	s1,00000006

l23024106:
	c.addi4spn	a5,00000008
	c.add	a5,s0
	lbu	a2,a5,+00000000
	c.mv	a1,s0
	addi	a0,s2,-00000560
	c.addi	s0,00000001
	jal	ra,0000000023003AC6
	bne	s0,s1,0000000023024106

l2302411E:
	addi	a1,sp,+00000011
	c.addi4spn	a0,00000008
	c.li	a2,00000006
	jal	ra,00000000230260AA
	c.addi4spn	a1,00000018
	c.addi4spn	a0,00000010
	jal	ra,000000002302770E
	c.bnez	a0,000000002302413E

l23024134:
	lui	a0,00023076
	addi	a0,a0,-0000054C
	c.j	00000000230240CE

l2302413E:
	lui	a0,00023076
	addi	a0,a0,-00000538
	c.j	00000000230240CE

;; ble_stop_advertise: 23024148
ble_stop_advertise proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002301F14C
	c.beqz	a0,0000000023024162

l23024152:
	lui	a0,00023076
	addi	a0,a0,+00000048

l2302415A:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

l23024162:
	lui	a0,00023076
	addi	a0,a0,+00000068
	c.j	000000002302415A

;; ble_get_device_name: 2302416C
ble_get_device_name proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002301E8EC
	c.beqz	a0,0000000023024188

l23024176:
	c.lwsp	a2,00000020
	c.mv	a1,a0
	lui	a0,00023076
	addi	a0,a0,-000003C0
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

l23024188:
	c.lwsp	a2,00000020
	lui	a0,00023076
	addi	a0,a0,-000003AC
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

;; ble_start_advertise: 23024198
ble_start_advertise proc
	c.addi16sp	FFFFFFC0
	addi	a5,a2,-00000003
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.andi	a5,FFFFFFFD
	c.beqz	a5,00000000230241BC

l230241AE:
	lui	a0,00023076
	addi	a0,a0,-0000016C

l230241B6:
	jal	ra,0000000023003AC6
	c.j	00000000230242C0

l230241BC:
	addi	a5,zero,+000000A0
	addi	a0,a3,+00000004
	sh	a5,sp,+0000001A
	addi	a1,sp,+00000016
	addi	a5,zero,+000000F0
	sh	a5,sp,+0000001C
	c.mv	s3,a2
	c.mv	s2,a3
	sb	zero,sp,+00000018
	jal	ra,0000000023044AF4
	lbu	a1,sp,+00000016
	lui	a0,00023076
	addi	a0,a0,-000000A4
	jal	ra,0000000023003AC6
	lbu	a5,sp,+00000016
	bne	a5,zero,00000000230242D0

l230241F8:
	c.li	a5,0000000B

l230241FA:
	sb	a5,sp,+00000019

l230241FE:
	addi	a1,sp,+00000017
	addi	a0,s2,+00000008
	jal	ra,0000000023044AF4
	lbu	a1,sp,+00000017
	lui	a0,00023076
	addi	a0,a0,-00000080
	jal	ra,0000000023003AC6
	lbu	a5,sp,+00000017
	c.li	a4,00000002
	bltu	a4,a5,000000002302431A

l23024224:
	lui	s1,0004200D
	addi	s0,s1,+000004B8
	c.bnez	a5,00000000230242F0

l2302422E:
	c.li	a5,00000006
	sb	a5,sp,+0000000C
	addi	a5,zero,+00000101
	sh	a5,s0,+00000000
	c.addi4spn	a5,0000000C

l2302423E:
	c.sw	s0,4(a5)
	jal	ra,000000002301E8EC
	c.mv	s4,a0
	jal	ra,000000002306D630
	c.li	a5,00000009
	sb	a5,s0,+00000008
	sb	a0,s0,+00000009
	sw	s4,s0,+0000000C
	c.li	a5,00000005
	bne	s3,a5,0000000023024294

l2302425E:
	addi	a1,sp,+0000001A
	addi	a0,s2,+0000000C
	jal	ra,0000000023044B1A
	c.addi4spn	a1,0000001C
	addi	a0,s2,+00000010
	jal	ra,0000000023044B1A
	lhu	a1,sp,+0000001A
	lui	a0,00023076
	addi	a0,a0,-00000060
	jal	ra,0000000023003AC6
	lhu	a1,sp,+0000001C
	lui	a0,00023076
	addi	a0,a0,-0000004C
	jal	ra,0000000023003AC6

l23024294:
	lbu	a4,sp,+00000016
	c.li	a5,00000001
	bltu	a5,a4,0000000023024324

l2302429E:
	c.li	a4,00000001
	addi	a3,s1,+000004B8

l230242A4:
	c.li	a2,00000002
	addi	a1,s1,+000004B8
	c.addi4spn	a0,00000018
	jal	ra,000000002301F13C
	c.beqz	a0,000000002302432A

l230242B2:
	c.mv	a1,a0
	lui	a0,00023076
	addi	a0,a0,-00000038
	jal	ra,0000000023003AC6

l230242C0:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

l230242D0:
	c.li	a4,00000001
	bne	a5,a4,00000000230242DA

l230242D6:
	c.li	a5,00000008
	c.j	00000000230241FA

l230242DA:
	c.li	a4,00000002
	bne	a5,a4,00000000230242E6

l230242E0:
	sb	zero,sp,+00000019
	c.j	00000000230241FE

l230242E6:
	lui	a0,00023076
	addi	a0,a0,-00000094
	c.j	00000000230241B6

l230242F0:
	c.li	a4,00000001
	bne	a5,a4,0000000023024308

l230242F6:
	c.li	a5,00000004
	sb	a5,sp,+00000010
	addi	a5,zero,+00000101
	sh	a5,s0,+00000000
	c.addi4spn	a5,00000010
	c.j	000000002302423E

l23024308:
	c.li	a5,00000005
	sb	a5,sp,+00000014
	addi	a5,zero,+00000101
	sh	a5,s0,+00000000
	c.addi4spn	a5,00000014
	c.j	000000002302423E

l2302431A:
	lui	a0,00023076
	addi	a0,a0,-00000074
	c.j	00000000230241B6

l23024324:
	c.li	a4,00000000
	c.li	a3,00000000
	c.j	00000000230242A4

l2302432A:
	lui	a0,00023076
	addi	a0,a0,-00000010
	c.j	00000000230241B6

;; ble_set_adv_channel: 23024334
ble_set_adv_channel proc
	c.addi	sp,FFFFFFE0
	c.li	a5,00000007
	sb	a5,sp,+0000000F
	c.swsp	ra,0000008C
	c.li	a5,00000002
	beq	a2,a5,0000000023024356

l23024344:
	lui	a0,00023076
	addi	a0,a0,-0000016C

l2302434C:
	jal	ra,0000000023003AC6
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23024356:
	addi	a0,a3,+00000004
	addi	a1,sp,+0000000F
	jal	ra,0000000023044AF4
	lbu	a0,sp,+0000000F
	jal	ra,000000002301F0EE
	c.bnez	a0,0000000023024376

l2302436C:
	lui	a0,00023076
	addi	a0,a0,-00000258
	c.j	000000002302434C

l23024376:
	lui	a0,00023076
	addi	a0,a0,-0000023C
	c.j	000000002302434C

;; ble_stop_scan: 23024380
ble_stop_scan proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002301F2A2
	c.beqz	a0,000000002302439C

l2302438A:
	c.lwsp	a2,00000020
	c.mv	a1,a0
	lui	a0,00023076
	addi	a0,a0,+00000080
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

l2302439C:
	c.lwsp	a2,00000020
	lui	a0,00023076
	addi	a0,a0,+000000A4
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

;; ble_disable: 230243AC
ble_disable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002301E70E
	c.beqz	a0,00000000230243C6

l230243B6:
	lui	a0,00023076
	addi	a0,a0,-00000520

l230243BE:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

l230243C6:
	lui	a0,00023076
	addi	a0,a0,-000004E4
	c.j	00000000230243BE

;; discover_func: 230243D0
discover_func proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.mv	s1,a2
	c.bnez	a1,0000000023024402

l230243DC:
	lui	a0,00023076
	addi	a0,a0,+000002A4
	jal	ra,0000000023003AC6
	c.mv	a0,s1
	addi	a2,zero,+0000002C
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	c.li	s1,00000000

l230243F6:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s1
	c.lwsp	s4,00000134
	c.addi16sp	00000040
	c.jr	ra

l23024402:
	lbu	a5,a2,+00000028
	c.li	a4,00000002
	c.mv	s0,a1
	beq	a5,a4,000000002302452A

l2302440E:
	bltu	a5,a4,0000000023024438

l23024412:
	c.li	a4,00000003
	beq	a5,a4,0000000023024460

l23024418:
	c.lw	s0,0(a0)
	c.addi4spn	a1,00000008
	addi	a2,zero,+00000025
	jal	ra,000000002302A4A4
	lhu	a2,s0,+00000010
	lui	a0,00023076
	c.addi4spn	a1,00000008
	addi	a0,a0,+000003D8
	jal	ra,0000000023003AC6
	c.j	000000002302445C

l23024438:
	c.lw	a1,12(s1)
	addi	a2,zero,+00000025
	c.addi4spn	a1,00000008
	c.lw	s1,0(a0)
	jal	ra,000000002302A4A4
	lhu	a3,s1,+00000004
	lhu	a2,s0,+00000010
	lui	a0,00023076
	c.addi4spn	a1,00000008
	addi	a0,a0,+000002B8
	jal	ra,0000000023003AC6

l2302445C:
	c.li	s1,00000001
	c.j	00000000230243F6

l23024460:
	c.lw	a1,12(s1)
	addi	a2,zero,+00000025
	c.addi4spn	a1,00000008
	c.lw	s1,0(a0)
	jal	ra,000000002302A4A4
	lhu	a2,s0,+00000010
	lhu	a3,s1,+00000004
	lui	a0,00023076
	c.addi4spn	a1,00000008
	addi	a0,a0,+000002EC
	jal	ra,0000000023003AC6
	lui	a0,00023076
	lbu	s0,s1,+00000006
	addi	a0,a0,+0000032C
	jal	ra,0000000023003AC6
	andi	a5,s0,+00000001
	c.beqz	a5,00000000230244A6

l2302449A:
	lui	a0,00023076
	addi	a0,a0,+0000033C
	jal	ra,0000000023003AC6

l230244A6:
	andi	a5,s0,+00000002
	c.beqz	a5,00000000230244B8

l230244AC:
	lui	a0,00023076
	addi	a0,a0,+00000348
	jal	ra,0000000023003AC6

l230244B8:
	andi	a5,s0,+00000008
	c.beqz	a5,00000000230244CA

l230244BE:
	lui	a0,00023076
	addi	a0,a0,+00000354
	jal	ra,0000000023003AC6

l230244CA:
	andi	a5,s0,+00000004
	c.beqz	a5,00000000230244DC

l230244D0:
	lui	a0,00023076
	addi	a0,a0,+00000360
	jal	ra,0000000023003AC6

l230244DC:
	andi	a5,s0,+00000010
	c.beqz	a5,00000000230244EE

l230244E2:
	lui	a0,00023076
	addi	a0,a0,+00000374
	jal	ra,0000000023003AC6

l230244EE:
	andi	a5,s0,+00000020
	c.beqz	a5,0000000023024500

l230244F4:
	lui	a0,00023076
	addi	a0,a0,+00000380
	jal	ra,0000000023003AC6

l23024500:
	andi	a5,s0,+00000040
	c.beqz	a5,0000000023024512

l23024506:
	lui	a0,00023076
	addi	a0,a0,+0000038C
	jal	ra,0000000023003AC6

l23024512:
	c.slli	s0,18
	c.srai	s0,00000018
	c.li	s1,00000001
	bge	s0,zero,00000000230243F6

l2302451C:
	lui	a0,00023076
	addi	a0,a0,+00000398
	jal	ra,0000000023003AC6
	c.j	00000000230243F6

l2302452A:
	c.lw	a1,12(s1)
	addi	a2,zero,+00000025
	c.addi4spn	a1,00000008
	c.lw	s1,0(a0)
	jal	ra,000000002302A4A4
	lhu	a4,s1,+00000006
	lhu	a3,s1,+00000004
	lhu	a2,s0,+00000010
	lui	a0,00023076
	c.addi4spn	a1,00000008
	addi	a0,a0,+000003A8
	jal	ra,0000000023003AC6
	c.j	000000002302445C

;; ble_set_data_len: 23024554
ble_set_data_len proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.li	a5,00000003
	beq	a2,a5,000000002302456E

l23024560:
	lui	a0,00023076
	addi	a0,a0,-0000016C

l23024568:
	jal	ra,0000000023003AC6
	c.j	00000000230245BC

l2302456E:
	lui	s0,0004200E
	addi	s0,s0,+0000019C
	c.lw	s0,0(a5)
	c.bnez	a5,0000000023024584

l2302457A:
	lui	a0,00023076
	addi	a0,a0,+0000011C
	c.j	0000000023024568

l23024584:
	addi	a0,a3,+00000004
	c.addi4spn	a1,0000001C
	c.swsp	a3,00000084
	jal	ra,0000000023044B1A
	c.lwsp	a2,000000A4
	addi	a1,sp,+0000001E
	addi	a0,a3,+00000008
	jal	ra,0000000023044B1A
	lhu	a1,sp,+0000001C
	lhu	a2,sp,+0000001E
	c.lw	s0,0(a0)
	jal	ra,000000002301D8C6
	c.mv	a1,a0
	c.beqz	a0,00000000230245C4

l230245B0:
	lui	a0,00023076
	addi	a0,a0,-00000220
	jal	ra,0000000023003AC6

l230245BC:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

l230245C4:
	lui	a0,00023076
	addi	a0,a0,-000001F0
	c.j	0000000023024568

;; ble_subscribe: 230245CE
ble_subscribe proc
	c.li	a5,00000004
	beq	a2,a5,00000000230245E0

l230245D4:
	lui	a0,00023076
	addi	a0,a0,-0000016C

l230245DC:
	jal	zero,0000000023003AC6

l230245E0:
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200E
	addi	s1,s1,+0000019C
	c.lw	s1,0(a5)
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.bnez	a5,000000002302460E

l230245F8:
	lui	a0,00023076
	addi	a0,a0,+0000011C

l23024600:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.j	00000000230245DC

l2302460E:
	lui	s3,00042012
	addi	s2,s3,+000000B4
	addi	a0,a3,+00000004
	addi	a1,s2,+00000026
	c.mv	s0,a3
	jal	ra,0000000023044B1A
	addi	a1,s2,+00000024
	addi	a0,s0,+00000008
	jal	ra,0000000023044B1A
	addi	a1,s2,+00000028
	addi	a0,s0,+0000000C
	jal	ra,0000000023044B1A
	c.lw	s1,0(a0)
	lui	a5,00023024
	addi	a5,a5,-0000030E
	addi	a1,s3,+000000B4
	sw	a5,s2,+00000020
	jal	ra,0000000023029F66
	c.mv	a1,a0
	c.beqz	a0,000000002302466E

l23024656:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,00023076
	addi	a0,a0,+000000C4
	c.addi16sp	00000020
	jal	zero,0000000023003AC6

l2302466E:
	lui	a0,00023076
	addi	a0,a0,+000000E0
	c.j	0000000023024600

;; ble_write: 23024678
ble_write proc
	c.li	a5,00000005
	beq	a2,a5,000000002302468A

l2302467E:
	lui	a0,00023076
	addi	a0,a0,-0000016C

l23024686:
	jal	zero,0000000023003AC6

l2302468A:
	lui	a5,0004200E
	lw	a4,a5,+0000019C
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s5,00000080
	addi	s4,a5,+0000019C
	c.bnez	a4,00000000230246C2

l230246A8:
	lui	a0,00023076
	addi	a0,a0,+0000011C

l230246B0:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.j	0000000023024686

l230246C2:
	lui	s2,00042012
	addi	a5,s2,+000000E8
	c.lw	a5,24(a5)
	addi	s0,s2,+000000E8
	c.beqz	a5,00000000230246DC

l230246D2:
	lui	a0,00023076
	addi	a0,a0,+0000017C
	c.j	00000000230246B0

l230246DC:
	addi	a0,a3,+00000004
	addi	a1,s0,+0000001C
	c.mv	s1,a3
	jal	ra,0000000023044B1A
	addi	a1,s0,+0000001E
	addi	a0,s1,+00000008
	jal	ra,0000000023044B1A
	addi	a1,s0,+00000024
	addi	a0,s1,+0000000C
	jal	ra,0000000023044B1A
	lhu	s3,s0,+00000024
	addi	a5,zero,+00000200
	bgeu	a5,s3,0000000023024712

l2302470E:
	addi	s3,zero,+00000200

l23024712:
	lui	a1,00042012
	slli	a2,s3,00000010
	addi	s5,a1,-00000174
	c.srli	a2,00000010
	addi	a1,a1,-00000174
	addi	a0,s1,+00000010
	jal	ra,0000000023044AA4
	lw	a0,s4,+00000000
	lui	a5,00023024
	addi	a5,a5,-00000204
	addi	a1,s2,+000000E8
	sw	s5,s0,+00000020
	sh	s3,s0,+00000024
	c.sw	s0,24(a5)
	jal	ra,0000000023029DBC
	c.mv	a1,a0
	c.beqz	a0,000000002302476A

l2302474E:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	lui	a0,00023076
	addi	a0,a0,+0000018C
	c.addi16sp	00000020
	jal	zero,0000000023003AC6

l2302476A:
	lui	a0,00023076
	addi	a0,a0,+000001A4
	c.j	00000000230246B0

;; ble_read: 23024774
ble_read proc
	c.li	a5,00000003
	beq	a2,a5,0000000023024786

l2302477A:
	lui	a0,00023076
	addi	a0,a0,-0000016C

l23024782:
	jal	zero,0000000023003AC6

l23024786:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200E
	addi	s0,s0,+0000019C
	c.lw	s0,0(a5)
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.bnez	a5,00000000230247B4

l2302479E:
	lui	a0,00023076
	addi	a0,a0,+0000011C

l230247A6:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.j	0000000023024782

l230247B4:
	lui	s3,00042012
	addi	s1,s3,+0000008C
	addi	a0,a3,+00000004
	addi	a1,s1,+00000020
	c.mv	s2,a3
	jal	ra,0000000023044B1A
	addi	a1,s1,+00000022
	addi	a0,s2,+00000008
	jal	ra,0000000023044B1A
	lui	a5,00023025
	c.lw	s0,0(a0)
	addi	a5,a5,-000007EC
	c.sw	s1,24(a5)
	addi	a1,s3,+0000008C
	c.li	a5,00000001
	c.sw	s1,28(a5)
	jal	ra,0000000023029A98
	c.mv	a1,a0
	c.beqz	a0,000000002302480A

l230247F2:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,00023076
	addi	a0,a0,-00000360
	c.addi16sp	00000020
	jal	zero,0000000023003AC6

l2302480A:
	lui	a0,00023076
	addi	a0,a0,-00000348
	c.j	00000000230247A6

;; read_func: 23024814
read_func proc
	c.addi16sp	FFFFFFC0
	lui	a0,00023076
	c.swsp	s3,00000094
	addi	a0,a0,+000004B0
	c.mv	s3,a2
	c.mv	a2,a4
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.mv	s1,a4
	c.mv	s2,a3
	c.swsp	s0,0000001C
	c.swsp	s4,00000014
	jal	ra,0000000023003AC6
	c.li	a2,0000000F
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	jal	ra,000000002306D1BC
	addi	a5,s1,-00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	a4,00000015
	bgeu	a4,a5,0000000023024872

l2302484E:
	c.li	a0,00000001
	bne	s2,zero,0000000023024862

l23024854:
	addi	a2,zero,+00000028
	c.li	a1,00000000
	c.mv	a0,s3
	jal	ra,000000002306D1BC
	c.li	a0,00000000

l23024862:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

l23024872:
	c.mv	a2,s1
	c.mv	a1,s2
	c.addi4spn	a0,00000008
	jal	ra,000000002306CF80
	lui	a0,00023076
	c.addi4spn	a1,00000008
	addi	a0,a0,+000004D4
	jal	ra,0000000023003AC6
	c.li	s0,00000000
	lui	s4,00023076

l23024890:
	bge	s0,s1,000000002302484E

l23024894:
	add	a5,s2,s0
	lbu	a1,a5,+00000000
	addi	a0,s4,+000004E8
	c.addi	s0,00000001
	jal	ra,0000000023003AC6
	c.j	0000000023024890

;; data_cb: 230248A8
data_cb proc
	lbu	a4,a0,+00000000
	c.li	a3,00000001
	c.addi	a4,FFFFFFF8
	bltu	a3,a4,00000000230248DA

l230248B4:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a2,a0,+00000001
	c.li	a4,0000001D
	c.mv	a5,a0
	bgeu	a4,a2,00000000230248C6

l230248C4:
	c.li	a2,0000001D

l230248C6:
	c.mv	a0,a1
	c.lw	a5,4(a1)
	andi	a2,a2,+000000FF
	jal	ra,000000002306CF80
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230248DA:
	c.li	a0,00000001
	c.jr	ra

;; ble_discover: 230248DE
ble_discover proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.li	a5,00000005
	beq	a2,a5,0000000023024902

l230248F4:
	lui	a0,00023076
	addi	a0,a0,-0000016C

l230248FC:
	jal	ra,0000000023003AC6
	c.j	00000000230249AC

l23024902:
	lui	s4,0004200E
	lw	a5,s4,+0000019C
	addi	s4,s4,+0000019C
	c.bnez	a5,000000002302491A

l23024910:
	lui	a0,00023076
	addi	a0,a0,+0000011C
	c.j	00000000230248FC

l2302491A:
	lui	s1,00042012
	lui	a4,00023024
	addi	a5,s1,-000001BC
	addi	a4,a4,+000003D0
	c.sw	a5,28(a4)
	c.li	s2,00000001
	c.li	a4,FFFFFFFF
	addi	a1,sp,+0000000F
	addi	a0,a3,+00000004
	sh	s2,a5,+00000020
	sh	a4,a5,+00000026
	c.mv	s5,a3
	jal	ra,0000000023044AF4
	lbu	a5,sp,+0000000F
	addi	s0,s1,-000001BC
	c.bnez	a5,00000000230249BE

l23024950:
	sb	zero,s0,+00000028

l23024954:
	lui	s2,0004200E
	addi	s3,s2,+000001A0
	addi	a1,s3,+00000002
	addi	a0,s5,+00000008
	jal	ra,0000000023044B1A
	lhu	a5,s3,+00000002
	addi	s2,s2,+000001A0
	c.bnez	a5,0000000023024974

l23024972:
	c.li	s2,00000000

l23024974:
	addi	a1,s0,+00000020
	addi	a0,s5,+0000000C
	sw	s2,s0,+00000018
	jal	ra,0000000023044B1A
	addi	a1,s0,+00000026
	addi	a0,s5,+00000010
	jal	ra,0000000023044B1A
	lw	a0,s4,+00000000
	addi	a1,s1,-000001BC
	jal	ra,00000000230290F4
	c.mv	a1,a0
	c.beqz	a0,00000000230249E4

l230249A0:
	lui	a0,00023076
	addi	a0,a0,-00000478
	jal	ra,0000000023003AC6

l230249AC:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l230249BE:
	bne	a5,s2,00000000230249C8

l230249C2:
	sb	a5,s0,+00000028
	c.j	0000000023024954

l230249C8:
	c.li	a4,00000002
	beq	a5,a4,00000000230249C2

l230249CE:
	c.li	a4,00000003
	beq	a5,a4,00000000230249C2

l230249D4:
	c.li	a4,00000004
	beq	a5,a4,00000000230249C2

l230249DA:
	lui	a0,00023076
	addi	a0,a0,-00000494
	c.j	00000000230248FC

l230249E4:
	lui	a0,00023076
	addi	a0,a0,-0000045C
	c.j	00000000230248FC

;; ble_auth_passkey: 230249EE
ble_auth_passkey proc
	c.li	a5,00000002
	beq	a2,a5,0000000023024A00

l230249F4:
	lui	a0,00023076
	addi	a0,a0,-0000016C

l230249FC:
	jal	zero,0000000023003AC6

l23024A00:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	addi	s0,s0,+0000019C
	c.lw	s0,0(a5)
	c.swsp	ra,00000084
	c.bnez	a5,0000000023024A22

l23024A12:
	lui	a0,00023076
	addi	a0,a0,+0000011C

l23024A1A:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.j	00000000230249FC

l23024A22:
	c.lw	a3,4(a0)
	jal	ra,000000002306CDF4
	lui	a5,000000F4
	addi	a5,a5,+0000023F
	c.mv	a1,a0
	bgeu	a5,a0,0000000023024A40

l23024A36:
	lui	a0,00023076
	addi	a0,a0,-000005C0
	c.j	0000000023024A1A

l23024A40:
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023027C6A

;; ble_conn_update: 23024A4C
ble_conn_update proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.li	a5,00000005
	beq	a2,a5,0000000023024A66

l23024A58:
	lui	a0,00023076
	addi	a0,a0,-0000016C

l23024A60:
	jal	ra,0000000023003AC6
	c.j	0000000023024AB2

l23024A66:
	addi	a0,a3,+00000004
	c.addi4spn	a1,00000008
	c.mv	s0,a3
	jal	ra,0000000023044B1A
	addi	a1,sp,+0000000A
	addi	a0,s0,+00000008
	jal	ra,0000000023044B1A
	c.addi4spn	a1,0000000C
	addi	a0,s0,+0000000C
	jal	ra,0000000023044B1A
	addi	a1,sp,+0000000E
	addi	a0,s0,+00000010
	jal	ra,0000000023044B1A
	lui	a5,0004200E
	lw	a0,a5,+0000019C
	c.addi4spn	a1,00000008
	jal	ra,00000000230279E6
	c.mv	a1,a0
	c.beqz	a0,0000000023024ABA

l23024AA6:
	lui	a0,00023076
	addi	a0,a0,-00000598
	jal	ra,0000000023003AC6

l23024AB2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23024ABA:
	lui	a0,00023076
	addi	a0,a0,-00000578
	c.j	0000000023024A60

;; ble_unpair: 23024AC4
ble_unpair proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.li	a5,00000003
	beq	a2,a5,0000000023024AE0

l23024ACE:
	lui	a0,00023076
	addi	a0,a0,-0000016C

l23024AD6:
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000130
	c.addi16sp	00000030
	c.jr	ra

l23024AE0:
	addi	a0,a3,+00000004
	c.addi4spn	a1,00000018
	c.swsp	a3,00000084
	jal	ra,0000000023044AF4
	c.lwsp	a2,000000A4
	c.li	a2,00000006
	c.addi4spn	a1,00000010
	addi	a0,a3,+00000008
	jal	ra,0000000023044AA4
	addi	a1,sp,+00000019
	c.addi4spn	a0,00000010
	c.li	a2,00000006
	jal	ra,00000000230260AA
	c.addi4spn	a1,00000018
	c.li	a0,00000000
	jal	ra,000000002301D39A
	c.beqz	a0,0000000023024B1A

l23024B10:
	lui	a0,00023076
	addi	a0,a0,+000000F0
	c.j	0000000023024AD6

l23024B1A:
	lui	a0,00023076
	addi	a0,a0,+00000104
	c.j	0000000023024AD6

;; ble_start_scan: 23024B24
ble_start_scan proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.li	a5,00000005
	beq	a2,a5,0000000023024B3E

l23024B30:
	lui	a0,00023076
	addi	a0,a0,-0000016C

l23024B38:
	jal	ra,0000000023003AC6
	c.j	0000000023024B8A

l23024B3E:
	addi	a0,a3,+00000004
	c.addi4spn	a1,00000008
	c.mv	s0,a3
	jal	ra,0000000023044AF4
	addi	a1,sp,+00000009
	addi	a0,s0,+00000008
	jal	ra,0000000023044AF4
	addi	a1,sp,+0000000A
	addi	a0,s0,+0000000C
	jal	ra,0000000023044B1A
	c.addi4spn	a1,0000000C
	addi	a0,s0,+00000010
	jal	ra,0000000023044B1A
	lui	a1,00023025
	addi	a1,a1,-00000322
	c.addi4spn	a0,00000008
	jal	ra,000000002301F1A2
	c.mv	a1,a0
	c.beqz	a0,0000000023024B92

l23024B7E:
	lui	a0,00023076
	addi	a0,a0,+00000008
	jal	ra,0000000023003AC6

l23024B8A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23024B92:
	lui	a0,00023076
	addi	a0,a0,+0000002C
	c.j	0000000023024B38

;; ble_set_device_name: 23024B9C
ble_set_device_name proc
	c.lw	a3,4(a0)
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a3
	jal	ra,000000002306D630
	c.beqz	a0,0000000023024BDC

l23024BAC:
	c.lw	s0,4(a0)
	jal	ra,000000002306D630
	c.li	a5,0000001D
	bltu	a5,a0,0000000023024BDC

l23024BB8:
	c.lw	s0,4(a0)
	jal	ra,000000002301E74A
	c.beqz	a0,0000000023024BD2

l23024BC0:
	lui	a0,00023076
	addi	a0,a0,-000001C0

l23024BC8:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

l23024BD2:
	lui	a0,00023076
	addi	a0,a0,-000001A4
	c.j	0000000023024BC8

l23024BDC:
	c.lw	s0,4(a0)
	jal	ra,000000002306D630
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,a0
	lui	a0,00023076
	addi	a0,a0,-00000180
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

;; ble_init: 23024BF6
ble_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	addi	s0,s0,+00000198
	lbu	a5,s0,+00000000
	c.swsp	ra,00000084
	c.beqz	a5,0000000023024C1C

l23024C0A:
	lui	a0,00023076
	addi	a0,a0,-0000038C

l23024C12:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

l23024C1C:
	lui	a0,0004200D
	lui	a5,0004200E
	addi	a0,a0,+000004E8
	sw	zero,a5,+0000019C
	jal	ra,0000000023026D20
	c.li	a5,00000001
	lui	a0,00023076
	sb	a5,s0,+00000000
	addi	a0,a0,-00000378
	c.j	0000000023024C12

;; bt_addr_le_to_str.constprop.14: 23024C40
;;   Called from:
;;     23024D10 (in device_found)
;;     23024D42 (in ble_read_local_address)
;;     23024D5E (in ble_read_local_address)
;;     23024D86 (in connected)
;;     23024DD0 (in disconnected)
;;     23024E0A (in security_changed)
;;     23024E32 (in auth_passkey_display)
;;     23024E56 (in auth_passkey_entry)
;;     23024E7A (in auth_passkey_confirm)
;;     23024E9E (in auth_cancel)
;;     23024EC0 (in auth_pairing_confirm)
;;     23024EE6 (in auth_pairing_complete)
;;     23024F1E (in auth_pairing_failed)
;;     23024F42 (in identity_resolved)
;;     23024F4A (in identity_resolved)
;;     23024F82 (in ble_get_all_conn_info)
;;     23024FC4 (in ble_get_all_conn_info)
bt_addr_le_to_str.constprop.14 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	lbu	a3,a0,+00000000
	c.li	a5,00000001
	c.mv	s0,a0
	c.mv	s2,a1
	c.addi4spn	s1,00000014
	beq	a3,a5,0000000023024CC0

l23024C5A:
	c.beqz	a3,0000000023024C7A

l23024C5C:
	c.li	a5,00000002
	beq	a3,a5,0000000023024CCA

l23024C62:
	c.li	a5,00000003
	beq	a3,a5,0000000023024CD4

l23024C68:
	lui	a2,00023076
	addi	a2,a2,+000001F8
	c.li	a1,0000000A
	c.mv	a0,s1
	jal	ra,0000000023003B18
	c.j	0000000023024C88

l23024C7A:
	lui	a1,00023076
	addi	a1,a1,+000001D0

l23024C82:
	c.mv	a0,s1
	jal	ra,000000002306D580

l23024C88:
	lbu	a5,s0,+00000001
	lbu	a7,s0,+00000002
	lbu	a6,s0,+00000003
	c.swsp	a5,00000000
	lbu	a4,s0,+00000005
	lbu	a5,s0,+00000004
	lbu	a3,s0,+00000006
	lui	a2,00023076
	c.swsp	s1,00000080
	c.mv	a0,s2
	addi	a2,a2,+00000200
	c.li	a1,0000001E
	jal	ra,0000000023003B18
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l23024CC0:
	lui	a1,00023076
	addi	a1,a1,+000001D8
	c.j	0000000023024C82

l23024CCA:
	lui	a1,00023076
	addi	a1,a1,+000001E0
	c.j	0000000023024C82

l23024CD4:
	lui	a1,00023076
	addi	a1,a1,+000001EC
	c.j	0000000023024C82

;; device_found: 23024CDE
device_found proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.mv	s1,a1
	c.mv	s2,a0
	c.mv	s0,a2
	c.li	a1,00000000
	c.li	a2,0000001E
	c.addi4spn	a0,00000030
	c.swsp	ra,000000AC
	c.swsp	a3,00000084
	jal	ra,000000002306D1BC
	c.lwsp	a2,000000A4
	lui	a1,00023025
	c.addi4spn	a2,00000030
	c.mv	a0,a3
	addi	a1,a1,-00000758
	jal	ra,000000002301D740
	c.addi4spn	a1,00000010
	c.mv	a0,s2
	jal	ra,0000000023024C40
	lui	a0,00023076
	c.addi4spn	a4,00000030
	c.mv	a3,s1
	c.mv	a2,s0
	c.addi4spn	a1,00000010
	addi	a0,a0,+00000258
	jal	ra,0000000023003AC6
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.addi16sp	00000060
	c.jr	ra

;; ble_read_local_address: 23024D34
ble_read_local_address proc
	c.addi16sp	FFFFFFC0
	c.mv	a0,sp
	c.swsp	ra,0000009C
	jal	ra,000000002301F10C
	c.addi4spn	a1,00000010
	c.mv	a0,sp
	jal	ra,0000000023024C40
	lui	a0,00023076
	c.addi4spn	a1,00000010
	addi	a0,a0,-00000338
	jal	ra,0000000023003AC6
	c.addi4spn	a0,00000008
	jal	ra,000000002301F124
	c.addi4spn	a1,00000010
	c.addi4spn	a0,00000008
	jal	ra,0000000023024C40
	lui	a0,00023076
	c.addi4spn	a1,00000010
	addi	a0,a0,-0000031C
	jal	ra,0000000023003AC6
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

;; connected: 23024D76
connected proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	a1,00000084
	c.mv	s0,a0
	jal	ra,0000000023027542
	c.addi4spn	a1,00000010
	jal	ra,0000000023024C40
	c.lwsp	a2,00000084
	c.addi4spn	a1,00000010
	c.beqz	a2,0000000023024DA4

l23024D90:
	lui	a0,00023076
	addi	a0,a0,+00000224
	jal	ra,0000000023003AC6

l23024D9C:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.addi16sp	00000040
	c.jr	ra

l23024DA4:
	lui	a0,00023076
	addi	a0,a0,+00000244
	jal	ra,0000000023003AC6
	lui	a5,0004200E
	addi	a5,a5,+0000019C
	c.lw	a5,0(a4)
	c.bnez	a4,0000000023024D9C

l23024DBC:
	c.sw	a5,0(s0)
	c.j	0000000023024D9C

;; disconnected: 23024DC0
disconnected proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	a1,00000084
	c.mv	s0,a0
	jal	ra,0000000023027542
	c.addi4spn	a1,00000010
	jal	ra,0000000023024C40
	c.lwsp	a2,00000084
	lui	a0,00023076
	c.addi4spn	a1,00000010
	addi	a0,a0,+00000284
	jal	ra,0000000023003AC6
	lui	a5,0004200E
	addi	a5,a5,+0000019C
	c.lw	a5,0(a4)
	bne	a4,s0,0000000023024DF6

l23024DF2:
	sw	zero,a5,+00000000

l23024DF6:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.addi16sp	00000040
	c.jr	ra

;; security_changed: 23024DFE
security_changed proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	a1,00000084
	jal	ra,0000000023027542
	c.addi4spn	a1,00000010
	jal	ra,0000000023024C40
	c.lwsp	a2,00000084
	lui	a0,00023076
	c.addi4spn	a1,00000010
	addi	a0,a0,+000004F8
	jal	ra,0000000023003AC6
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

;; auth_passkey_display: 23024E24
auth_passkey_display proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.mv	s0,a1
	jal	ra,0000000023027542
	c.mv	a1,sp
	jal	ra,0000000023024C40
	lui	a0,00023076
	c.mv	a1,s0
	addi	a0,a0,-00000644
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

;; auth_passkey_entry: 23024E4C
auth_passkey_entry proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	jal	ra,0000000023027542
	c.mv	a1,sp
	jal	ra,0000000023024C40
	lui	a0,00023076
	c.mv	a1,sp
	addi	a0,a0,-0000062C
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000130
	c.addi16sp	00000030
	c.jr	ra

;; auth_passkey_confirm: 23024E6E
auth_passkey_confirm proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	a1,00000084
	jal	ra,0000000023027542
	c.addi4spn	a1,00000010
	jal	ra,0000000023024C40
	c.lwsp	a2,00000084
	lui	a0,00023076
	c.addi4spn	a1,00000010
	addi	a0,a0,-00000664
	jal	ra,0000000023003AC6
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

;; auth_cancel: 23024E94
auth_cancel proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	jal	ra,0000000023027542
	c.mv	a1,sp
	jal	ra,0000000023024C40
	lui	a0,00023076
	c.mv	a1,sp
	addi	a0,a0,-000006D4
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000130
	c.addi16sp	00000030
	c.jr	ra

;; auth_pairing_confirm: 23024EB6
auth_pairing_confirm proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	jal	ra,0000000023027542
	c.mv	a1,sp
	jal	ra,0000000023024C40
	lui	a0,00023076
	c.mv	a1,sp
	addi	a0,a0,-0000069C
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000130
	c.addi16sp	00000030
	c.jr	ra

;; auth_pairing_complete: 23024ED8
auth_pairing_complete proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.mv	s0,a1
	jal	ra,0000000023027542
	c.mv	a1,sp
	jal	ra,0000000023024C40
	c.bnez	s0,0000000023024F0A

l23024EEC:
	lui	a1,00023076
	addi	a1,a1,-000006B4

l23024EF4:
	lui	a0,00023076
	c.mv	a2,sp
	addi	a0,a0,-000006AC
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

l23024F0A:
	lui	a1,00023076
	addi	a1,a1,-000006BC
	c.j	0000000023024EF4

;; auth_pairing_failed: 23024F14
auth_pairing_failed proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	jal	ra,0000000023027542
	c.mv	a1,sp
	jal	ra,0000000023024C40
	lui	a0,00023076
	c.mv	a1,sp
	addi	a0,a0,-00000680
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000130
	c.addi16sp	00000030
	c.jr	ra

;; identity_resolved: 23024F36
identity_resolved proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.mv	a0,a2
	c.mv	s0,a1
	c.mv	a1,sp
	c.swsp	ra,000000A4
	jal	ra,0000000023024C40
	c.addi4spn	a1,00000020
	c.mv	a0,s0
	jal	ra,0000000023024C40
	lui	a0,00023076
	c.mv	a2,sp
	c.addi4spn	a1,00000020
	addi	a0,a0,+0000042C
	jal	ra,0000000023003AC6
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.addi16sp	00000050
	c.jr	ra

;; ble_get_all_conn_info: 23024F66
ble_get_all_conn_info proc
	c.addi16sp	FFFFFF80
	c.addi4spn	a0,00000028
	c.swsp	s2,00000038
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	s1,000000B8
	c.swsp	s3,000000B4
	jal	ra,00000000230275BE
	c.mv	s2,a0
	bge	zero,a0,0000000023024F94

l23024F7E:
	c.lwsp	s4,00000154
	c.addi4spn	a1,00000008
	jal	ra,0000000023024C40
	lui	a0,00023076
	c.addi4spn	a1,00000008
	addi	a0,a0,-00000418
	jal	ra,0000000023003AC6

l23024F94:
	lui	a0,00023076
	c.mv	a1,s2
	addi	a0,a0,-000003F8
	jal	ra,0000000023003AC6
	c.addi4spn	s0,00000028
	c.li	s1,00000000
	lui	s3,00023076

l23024FAA:
	c.addi	s0,0000001C
	blt	s1,s2,0000000023024FBE

l23024FB0:
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.addi16sp	00000080
	c.jr	ra

l23024FBE:
	lw	a0,s0,-0000000C
	c.addi4spn	a1,00000008
	jal	ra,0000000023024C40
	c.mv	a1,s1
	c.addi4spn	a2,00000008
	addi	a0,s3,-000003D4
	jal	ra,0000000023003AC6
	c.addi	s1,00000001
	c.j	0000000023024FAA

;; ble_write_without_rsp: 23024FD8
ble_write_without_rsp proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.li	a5,00000005
	beq	a2,a5,0000000023025000

l23024FE8:
	lui	a0,00023076
	addi	a0,a0,-0000016C

l23024FF0:
	jal	ra,0000000023003AC6

l23024FF4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23025000:
	lui	a5,0004200E
	lw	a4,a5,+0000019C
	addi	s0,a5,+0000019C
	c.bnez	a4,0000000023025018

l2302500E:
	lui	a0,00023076
	addi	a0,a0,+0000011C
	c.j	0000000023024FF0

l23025018:
	addi	a0,a3,+00000004
	addi	a1,sp,+0000000B
	c.mv	s1,a3
	jal	ra,0000000023044AF4
	c.addi4spn	a1,0000000C
	addi	a0,s1,+00000008
	jal	ra,0000000023044B1A
	addi	a1,sp,+0000000E
	addi	a0,s1,+0000000C
	jal	ra,0000000023044B1A
	lhu	a2,sp,+0000000E
	addi	a5,zero,+00000200
	bgeu	a5,a2,000000002302504C

l23025048:
	addi	a2,zero,+00000200

l2302504C:
	sh	a2,sp,+0000000E
	lui	s2,00042012
	c.slli	a2,10
	addi	a1,s2,-00000174
	addi	a0,s1,+00000010
	c.srli	a2,00000010
	jal	ra,0000000023044AA4
	lhu	a1,sp,+0000000C
	lbu	a4,sp,+0000000B
	lhu	a3,sp,+0000000E
	c.lw	s0,0(a0)
	c.li	a6,00000000
	c.li	a5,00000000
	addi	a2,s2,-00000174
	jal	ra,0000000023029D06
	c.mv	a1,a0
	lui	a0,00023076
	addi	a0,a0,+000001B4
	jal	ra,0000000023003AC6
	c.j	0000000023024FF4

;; ble_cli_register: 2302508E
;;   Called from:
;;     2300177A (in blsync_init)
ble_cli_register proc
	c.li	a0,00000000
	c.jr	ra

;; k_queue_init: 23025092
;;   Called from:
;;     2301C3CC (in hci_driver_open)
;;     2301E852 (in bt_enable)
;;     2301E86E (in bt_enable)
;;     2301E87C (in bt_enable)
;;     2301F6F2 (in l2cap_chan_tx_init)
;;     2301FE86 (in l2cap_chan_add)
;;     23025E4A (in k_work_q_start)
;;     230266D4 (in bl_onchiphci_interface_init)
;;     23027D28 (in bt_conn_init)
;;     23027D3E (in bt_conn_init)
;;     2302AF98 (in bt_att_connected)
k_queue_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a2,00000000
	c.mv	s0,a0
	c.mv	a0,a1
	c.li	a1,00000005
	c.swsp	ra,00000084
	jal	ra,0000000023032470
	c.sw	s0,0(a0)
	c.bnez	a0,00000000230250AC

l230250A8:
	jal	ra,000000002300149E

l230250AC:
	addi	a5,s0,+00000004
	c.sw	s0,4(a5)
	c.sw	s0,8(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; k_queue_insert: 230250BC
;;   Called from:
;;     230250E2 (in k_queue_append)
k_queue_insert proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.lw	a0,0(a0)
	c.swsp	a2,00000084
	c.li	a3,00000000
	c.li	a2,FFFFFFFF
	c.addi4spn	a1,0000000C
	jal	ra,0000000023032528
	c.li	a5,00000001
	beq	a0,a5,00000000230250D8

l230250D4:
	jal	ra,000000002300149E

l230250D8:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; k_queue_append: 230250DE
;;   Called from:
;;     23025112 (in k_queue_prepend)
;;     23025132 (in k_queue_append_list)
;;     23025DCE (in k_work_submit_to_queue)
;;     230264C6 (in bl_onchiphci_rx_packet_handler)
;;     23026802 (in tx_free)
;;     23027D4E (in bt_conn_init)
;;     2302B092 (in att_send_req)
;;     2302C182 (in bt_att_send)
k_queue_append proc
	c.mv	a2,a1
	c.li	a1,00000000
	jal	zero,00000000230250BC

;; k_queue_free: 230250E6
;;   Called from:
;;     2301E650 (in bt_delete_queue)
;;     2301E6BC (in bt_disable_action)
;;     230266B0 (in bl_onchiphci_interface_deinit)
;;     230269D2 (in conn_cleanup)
;;     2302B3FC (in bt_att_disconnected)
k_queue_free proc
	c.beqz	a0,00000000230250EC

l230250E8:
	c.lw	a0,0(a5)
	c.bnez	a5,00000000230250F8

l230250EC:
	lui	a0,00023076
	addi	a0,a0,+0000074C
	jal	zero,0000000023003AC6

l230250F8:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.mv	a0,a5
	c.swsp	ra,00000084
	jal	ra,0000000023032B18
	sw	zero,s0,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; k_queue_prepend: 23025112
;;   Called from:
;;     23025650 (in net_buf_alloc_len)
;;     230257F6 (in net_buf_unref)
k_queue_prepend proc
	jal	zero,00000000230250DE

;; k_queue_append_list: 23025116
;;   Called from:
;;     2302573A (in net_buf_put)
k_queue_append_list proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s0,a1

l23025122:
	c.bnez	s0,000000002302512E

l23025124:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2302512E:
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230250DE
	c.lw	s0,0(s0)
	c.j	0000000023025122

;; k_queue_get: 2302513A
;;   Called from:
;;     230255EE (in net_buf_alloc_len)
;;     2302569E (in net_buf_alloc_len)
;;     230256F0 (in net_buf_get)
;;     2302570C (in net_buf_get)
;;     23025DEE (in work_queue_main)
;;     230265F6 (in bl_handle_queued_msg)
;;     2302667C (in bl_onchiphci_interface_deinit)
;;     23026EAA (in bt_conn_send_cb)
;;     2302B350 (in att_reset)
k_queue_get proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	zero,00000084
	c.li	a5,FFFFFFFF
	c.mv	a2,a1
	bne	a1,a5,000000002302514A

l23025148:
	c.li	a2,FFFFFFFF

l2302514A:
	c.lw	a0,0(a0)
	c.addi4spn	a1,0000000C
	jal	ra,0000000023032820
	c.li	a4,00000001
	c.li	a5,00000000
	bne	a0,a4,000000002302515C

l2302515A:
	c.lwsp	a2,000000E4

l2302515C:
	c.lwsp	t3,00000020
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

;; k_queue_is_empty: 23025164
;;   Called from:
;;     23025BFA (in polling_events.constprop.1)
;;     230265DE (in bl_handle_queued_msg)
k_queue_is_empty proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,0(a0)
	jal	ra,0000000023032AF4
	c.lwsp	a2,00000020
	sltiu	a0,a0,+00000001
	c.addi	sp,00000010
	c.jr	ra

;; k_queue_get_cnt: 23025178
;;   Called from:
;;     2301F34A (in bt_buf_get_rx_avail_cnt)
k_queue_get_cnt proc
	c.lw	a0,0(a0)
	jal	zero,0000000023032AF4

;; k_sem_init: 2302517E
;;   Called from:
;;     2301CD80 (in bt_hci_cmd_send_sync)
;;     2301E848 (in bt_enable)
;;     2301E88C (in bt_enable)
;;     2301EBC4 (in init_work)
;;     2301ED3E (in init_work)
;;     2301F6E2 (in l2cap_chan_tx_init)
;;     2301F740 (in l2cap_chan_rx_init)
;;     23021CD4 (in smp_init)
;;     23023892 (in bt_smp_init)
;;     2302B2E2 (in bt_att_accept)
k_sem_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.bnez	a0,000000002302519C

l23025186:
	lui	a0,00023076
	addi	a0,a0,+00000760
	jal	ra,0000000023003AC6
	c.li	a0,FFFFFFEA

l23025194:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2302519C:
	c.mv	s0,a0
	c.mv	a0,a2
	jal	ra,00000000230324F0
	addi	a5,s0,+00000004
	c.sw	s0,0(a0)
	c.sw	s0,4(a5)
	c.sw	s0,8(a5)
	c.li	a0,00000000
	c.j	0000000023025194

;; k_sem_take: 230251B2
;;   Called from:
;;     2301CDD8 (in bt_hci_cmd_send_sync)
;;     2301E3D4 (in hci_tx_thread)
;;     2301FBAA (in l2cap_chan_le_send)
;;     23020296 (in l2cap_rx_process)
;;     23025C8A (in k_poll)
;;     2302682C (in send_frag)
;;     2302B084 (in att_send_req)
;;     2302B48E (in bt_att_encrypt_change)
;;     2302C172 (in bt_att_send)
k_sem_take proc
	c.beqz	a0,00000000230251CE

l230251B4:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,0(a0)
	jal	ra,000000002303296C
	c.lwsp	a2,00000020
	c.addi	a0,FFFFFFFF
	sltu	a0,zero,a0
	sub	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

l230251CE:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; k_sem_give: 230251D2
;;   Called from:
;;     2301C742 (in hci_num_completed_packets)
;;     2301C79C (in hci_num_completed_packets)
;;     2301CB86 (in hci_cmd_done)
;;     2301CBD8 (in hci_cmd_status)
;;     2301CC24 (in hci_cmd_complete)
;;     2301CDCC (in bt_hci_cmd_send_sync)
;;     2301D8BE (in bt_hci_cmd_send)
;;     2301E414 (in hci_tx_thread)
;;     2301F840 (in l2cap_chan_tx_give_credits)
;;     2301FA0A (in l2cap_chan_send_credits.isra.10)
;;     23020588 (in l2cap_recv)
;;     2302063E (in l2cap_recv)
;;     23022CDE (in bt_smp_pkey_ready)
;;     23025D4C (in k_poll_signal_raise)
;;     230268CE (in send_frag)
;;     23026F18 (in bt_conn_send_cb)
;;     2302B36A (in att_reset)
;;     2302B4C4 (in bt_att_encrypt_change)
;;     2302B532 (in att_pdu_sent)
;;     2302C1A0 (in bt_att_send)
k_sem_give proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.bnez	a0,00000000230251EC

l230251D8:
	lui	a0,00023076
	addi	a0,a0,+00000760
	jal	ra,0000000023003AC6
	c.li	a0,FFFFFFEA

l230251E6:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l230251EC:
	c.lw	a0,0(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528
	c.addi	a0,FFFFFFFF
	sltu	a0,zero,a0
	sub	a0,zero,a0
	c.j	00000000230251E6

;; k_sem_delete: 23025204
;;   Called from:
;;     2301CDDE (in bt_hci_cmd_send_sync)
;;     2301E6C4 (in bt_disable_action)
;;     2301E6D0 (in bt_disable_action)
;;     2301E6DC (in bt_disable_action)
;;     2301E6E4 (in bt_disable_action)
;;     2302B414 (in bt_att_disconnected)
k_sem_delete proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.beqz	a0,0000000023025212

l2302520C:
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.bnez	a0,0000000023025228

l23025212:
	lui	a0,00023076
	addi	a0,a0,+00000760
	jal	ra,0000000023003AC6
	c.li	a0,FFFFFFEA

l23025220:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23025228:
	jal	ra,0000000023032B18
	c.li	a0,00000000
	sw	zero,s0,+00000000
	c.j	0000000023025220

;; k_sem_count_get: 23025234
;;   Called from:
;;     2301FCDE (in l2cap_chan_le_send)
;;     2302019A (in l2cap_chan_le_recv_seg)
;;     230201C6 (in l2cap_chan_le_recv_seg)
;;     230207A2 (in l2cap_recv)
;;     23025BC4 (in polling_events.constprop.1)
k_sem_count_get proc
	c.lw	a0,0(a0)
	jal	zero,0000000023032AF4

;; k_thread_create: 2302523A
;;   Called from:
;;     2301C3F0 (in hci_driver_open)
;;     2301E8C2 (in bt_enable)
;;     23025E70 (in k_work_q_start)
k_thread_create proc
	c.addi	sp,FFFFFFF0
	c.srli	a2,00000002
	c.swsp	s0,00000004
	c.slli	a2,10
	c.mv	s0,a0
	c.mv	a5,s0
	c.mv	a0,a3
	c.srli	a2,00000010
	c.li	a3,00000000
	c.swsp	ra,00000084
	jal	ra,00000000230337F0
	c.lw	s0,0(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	sltiu	a0,a0,+00000001
	sub	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; k_thread_delete: 23025264
;;   Called from:
;;     2301E670 (in bt_disable_action)
;;     2301E67C (in bt_disable_action)
;;     2301E688 (in bt_disable_action)
k_thread_delete proc
	c.beqz	a0,000000002302526A

l23025266:
	c.lw	a0,0(a5)
	c.bnez	a5,0000000023025276

l2302526A:
	lui	a0,00023076
	addi	a0,a0,+00000770
	jal	zero,0000000023003AC6

l23025276:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.mv	a0,a5
	c.swsp	ra,00000084
	jal	ra,000000002303386C
	sw	zero,s0,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; k_yield: 23025290
;;   Called from:
;;     2301C416 (in recv_thread)
;;     2301E396 (in hci_tx_thread)
;;     23025E06 (in work_queue_main)
k_yield proc
	ecall
	c.li	a0,00000000
	c.jr	ra

;; irq_lock: 23025298
;;   Called from:
;;     2301C6F6 (in hci_num_completed_packets)
;;     2301C726 (in hci_num_completed_packets)
;;     2301C774 (in hci_num_completed_packets)
;;     2301F396 (in bt_buf_get_cmd_complete)
;;     2302543C (in atomic_cas)
;;     2302546A (in atomic_inc)
;;     23025490 (in atomic_dec)
;;     230254BC (in atomic_set)
;;     230254E0 (in atomic_clear)
;;     23025506 (in atomic_or)
;;     2302552E (in atomic_and)
;;     230255D6 (in net_buf_alloc_len)
;;     23025B66 (in polling_events.constprop.1)
;;     23025C9C (in k_poll)
;;     23025CF4 (in k_poll)
;;     23025D0A (in k_poll_signal_raise)
;;     23025F72 (in k_delayed_work_cancel)
;;     23025FD4 (in k_delayed_work_submit)
;;     23026872 (in send_frag)
;;     230268A4 (in send_frag)
;;     23026A16 (in tx_notify)
irq_lock proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230347A4
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; irq_unlock: 230252A8
;;   Called from:
;;     2301C708 (in hci_num_completed_packets)
;;     2301C71A (in hci_num_completed_packets)
;;     2301C734 (in hci_num_completed_packets)
;;     2301C75E (in hci_num_completed_packets)
;;     2301C78C (in hci_num_completed_packets)
;;     2301F3AA (in bt_buf_get_cmd_complete)
;;     2302544E (in atomic_cas)
;;     23025476 (in atomic_inc)
;;     2302549C (in atomic_dec)
;;     230254C6 (in atomic_set)
;;     230254EA (in atomic_clear)
;;     23025512 (in atomic_or)
;;     2302553A (in atomic_and)
;;     230255F8 (in net_buf_alloc_len)
;;     23025664 (in net_buf_alloc_len)
;;     23025696 (in net_buf_alloc_len)
;;     23025BEC (in polling_events.constprop.1)
;;     23025CB8 (in k_poll)
;;     23025CF0 (in k_poll)
;;     23025D1C (in k_poll_signal_raise)
;;     23025FA6 (in k_delayed_work_cancel)
;;     23026020 (in k_delayed_work_submit)
;;     23026884 (in send_frag)
;;     230268C6 (in send_frag)
;;     23026A2A (in tx_notify)
;;     23026A3C (in tx_notify)
irq_unlock proc
	jal	zero,00000000230347B8

;; k_timer_init: 230252AC
;;   Called from:
;;     23025EBE (in k_delayed_work_init)
k_timer_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	a4,a1
	c.bnez	a0,00000000230252C4

l230252B8:
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	jal	ra,000000002300149E
	c.lwsp	a2,00000084
	c.lwsp	s0,000000C4

l230252C4:
	lui	a0,00023076
	c.sw	s0,8(a2)
	c.sw	s0,4(a4)
	c.li	a3,00000000
	c.li	a2,00000000
	addi	a1,zero,+000003E8
	addi	a0,a0,+00000780
	jal	ra,0000000023034F2C
	c.sw	s0,0(a0)
	c.bnez	a0,00000000230252EA

l230252E0:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,000000002300149E

l230252EA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; k_timer_stop: 230252F2
;;   Called from:
;;     23025F8E (in k_delayed_work_cancel)
;;     2302608C (in work_timeout)
k_timer_stop proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.bnez	a0,0000000023025300

l230252F8:
	c.swsp	a0,00000084
	jal	ra,000000002300149E
	c.lwsp	a2,00000044

l23025300:
	c.lw	a0,0(a0)
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000003
	jal	ra,000000002303501E
	c.li	a5,00000001
	beq	a0,a5,000000002302531C

l23025314:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,000000002300149E

l2302531C:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; k_timer_delete: 23025322
;;   Called from:
;;     23025EDE (in k_delayed_work_del_timer)
k_timer_delete proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.bnez	a0,0000000023025330

l23025328:
	c.swsp	a0,00000084
	jal	ra,000000002300149E
	c.lwsp	a2,00000044

l23025330:
	c.lw	a0,0(a0)
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000005
	jal	ra,000000002303501E
	c.li	a5,00000001
	beq	a0,a5,000000002302534C

l23025344:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,000000002300149E

l2302534C:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; k_now_ms: 23025352
;;   Called from:
;;     23025372 (in k_uptime_get_32)
;;     23025390 (in k_timer_start)
k_now_ms proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023033AF0
	addi	a5,zero,+000003E8
	add	a0,a0,a5
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.addi	sp,00000010
	srl	a0,a0,a5
	c.jr	ra

;; k_uptime_get_32: 2302536E
;;   Called from:
;;     230255D0 (in net_buf_alloc_len)
;;     2302560A (in net_buf_alloc_len)
k_uptime_get_32 proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023025352
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; k_timer_start: 2302537C
;;   Called from:
;;     23025FF2 (in k_delayed_work_submit)
k_timer_start proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	c.bnez	a0,000000002302538E

l2302538A:
	jal	ra,000000002300149E

l2302538E:
	c.sw	s0,12(s1)
	jal	ra,0000000023025352
	c.sw	s0,16(a0)
	c.lw	s0,0(a0)
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000003
	jal	ra,000000002303501E
	c.li	a5,00000001
	beq	a0,a5,00000000230253AE

l230253AA:
	jal	ra,000000002300149E

l230253AE:
	addi	a2,zero,+000003E8
	add	s1,s1,a2
	c.lw	s0,0(a0)
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a1,00000004
	srl	a2,s1,a2
	jal	ra,000000002303501E
	c.li	a5,00000001
	beq	a0,a5,00000000230253D0

l230253CC:
	jal	ra,000000002300149E

l230253D0:
	c.lw	s0,0(s0)
	jal	ra,0000000023033AF0
	c.mv	a2,a0
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002303501E
	c.li	a5,00000001
	beq	a0,a5,00000000230253F6

l230253EA:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002300149E

l230253F6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; k_get_random_byte_array: 23025400
;;   Called from:
;;     23027DCC (in bt_rand)
k_get_random_byte_array proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	add	s1,a0,a1

l2302540E:
	bne	s0,s1,000000002302541C

l23025412:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2302541C:
	jal	ra,0000000023036D28
	sb	a0,s0,+00000000
	c.addi	s0,00000001
	c.j	000000002302540E

;; k_malloc: 23025428
;;   Called from:
;;     23026480 (in bl_onchiphci_rx_packet_handler)
k_malloc proc
	jal	zero,000000002303598A

;; k_free: 2302542C
;;   Called from:
;;     23026650 (in bl_handle_queued_msg)
;;     230266A0 (in bl_onchiphci_interface_deinit)
k_free proc
	jal	zero,0000000023035A72

;; atomic_cas: 23025430
;;   Called from:
;;     230288E2 (in bt_gatt_init)
atomic_cas proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.mv	s0,a0
	c.swsp	a2,00000004
	c.swsp	ra,0000008C
	jal	ra,0000000023025298
	c.lw	s0,0(a5)
	c.lwsp	a2,00000064
	c.lwsp	s0,00000084
	bne	a5,a1,000000002302545C

l2302544A:
	c.sw	s0,0(a2)
	c.li	s0,00000001

l2302544E:
	jal	ra,00000000230252A8
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2302545C:
	c.li	s0,00000000
	c.j	000000002302544E

;; atomic_inc: 23025460
;;   Called from:
;;     2302711E (in bt_conn_set_state)
;;     23027300 (in bt_conn_lookup_handle)
;;     230273EE (in bt_conn_lookup_state_le.part.7)
;;     2302747C (in bt_conn_lookup_addr_le)
atomic_inc proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023025298
	c.lw	s1,0(s0)
	addi	a5,s0,+00000001
	c.sw	s1,0(a5)
	jal	ra,00000000230252A8
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; atomic_dec: 23025486
;;   Called from:
;;     2302753E (in bt_conn_unref)
;;     230277E0 (in bt_conn_create_le)
;;     23027962 (in conn_update_timeout)
atomic_dec proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023025298
	c.lw	s1,0(s0)
	addi	a5,s0,-00000001
	c.sw	s1,0(a5)
	jal	ra,00000000230252A8
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; atomic_get: 230254AC
;;   Called from:
;;     2301C48C (in atomic_test_bit)
;;     2301EA0A (in init_work)
;;     23020994 (in atomic_test_bit)
;;     23025F7C (in k_delayed_work_cancel)
;;     230267DA (in atomic_test_bit)
;;     23026B38 (in le_check_valid_conn)
;;     23026B44 (in le_check_valid_conn)
;;     23026F58 (in bt_conn_prepare_events)
;;     23026F90 (in bt_conn_prepare_events)
;;     2302702C (in bt_conn_add_le)
;;     2302703A (in bt_conn_add_le)
;;     230272B0 (in bt_conn_lookup_handle)
;;     230272D8 (in bt_conn_lookup_handle)
;;     23027378 (in bt_conn_lookup_state_le.part.7)
;;     230273AC (in bt_conn_lookup_state_le.part.7)
;;     23027426 (in bt_conn_lookup_addr_le)
;;     23027454 (in bt_conn_lookup_addr_le)
;;     230274C2 (in bt_conn_foreach)
;;     230274E2 (in bt_conn_foreach)
;;     230275D8 (in bt_conn_get_remote_dev_info)
;;     230275F4 (in bt_conn_get_remote_dev_info)
;;     23027D72 (in bt_conn_init)
;;     23027D9A (in bt_conn_init)
;;     2302820A (in sc_indicate_rsp)
;;     230287A6 (in sc_indicate)
;;     2302A0C6 (in bt_gatt_unsubscribe)
;;     2302A31E (in bt_gatt_disconnected)
;;     2302B4A2 (in bt_att_encrypt_change)
;;     2302B5B8 (in att_chan_get)
atomic_get proc
	c.lw	a0,0(a0)
	c.jr	ra

;; atomic_set: 230254B0
;;   Called from:
;;     2301EA14 (in init_work)
;;     230209C8 (in smp_reset)
;;     230209D2 (in smp_reset)
;;     23027088 (in bt_conn_add_le)
atomic_set proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.swsp	a1,00000084
	jal	ra,0000000023025298
	c.lwsp	a2,00000064
	c.lw	s0,0(s1)
	c.sw	s0,0(a1)
	jal	ra,00000000230252A8
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; atomic_clear: 230254D6
;;   Called from:
;;     2301D15E (in hci_disconn_complete)
atomic_clear proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	jal	ra,0000000023025298
	c.lw	s0,0(s1)
	sw	zero,s0,+00000000
	jal	ra,00000000230252A8
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; atomic_or: 230254FA
;;   Called from:
;;     2301C4E4 (in le_pkey_complete)
;;     2301C532 (in atomic_set_bit_to)
;;     2301C66E (in le_conn_update_complete)
;;     2301D484 (in bt_id_add)
;;     2301D612 (in bt_id_del)
;;     2301E62A (in bt_finalize_init)
;;     2301E820 (in bt_enable)
;;     2301E99E (in bt_id_create)
;;     2301F228 (in bt_le_scan_start)
;;     2301F44A (in bt_pub_key_gen)
;;     2301F81A (in l2cap_chan_tx_give_credits)
;;     2301FF24 (in bt_l2cap_connected)
;;     2302098A (in atomic_set_bit)
;;     23025DBA (in k_work_submit_to_queue)
;;     23026CE2 (in bt_conn_set_security)
;;     230279CC (in conn_update_timeout)
;;     23027A90 (in bt_conn_le_param_update)
;;     230283C4 (in gatt_write_ccc.constprop.21)
;;     23028792 (in sc_indicate)
;;     23028ED0 (in sc_process)
;;     2302B35C (in att_reset)
atomic_or proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	a1,00000084
	c.mv	s1,a0
	jal	ra,0000000023025298
	c.lwsp	a2,00000064
	c.lw	s1,0(s0)
	c.or	a1,s0
	c.sw	s1,0(a1)
	jal	ra,00000000230252A8
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; atomic_and: 23025522
;;   Called from:
;;     2301C4C2 (in le_pkey_complete)
;;     2301C53A (in atomic_set_bit_to)
;;     2301DA86 (in bt_le_scan_update)
;;     2301DFDA (in enh_conn_complete)
;;     2301E028 (in enh_conn_complete)
;;     2301E0BA (in enh_conn_complete)
;;     2301E19C (in enh_conn_complete)
;;     2301E6F8 (in bt_disable_action)
;;     2301EF52 (in bt_le_adv_start_internal)
;;     2301F162 (in bt_le_adv_stop)
;;     2301F250 (in bt_le_scan_start)
;;     2301F2B4 (in bt_le_scan_stop)
;;     2301F45A (in bt_pub_key_gen)
;;     2301F482 (in bt_pub_key_gen)
;;     2301FCEE (in l2cap_chan_le_send)
;;     23020EBA (in atomic_test_and_clear_bit)
;;     23021876 (in smp_dhkey_check)
;;     230223B8 (in bt_smp_encrypt_change)
;;     2302250A (in smp_send_pairing_confirm)
;;     23022652 (in legacy_send_pairing_confirm)
;;     230226CC (in smp_pairing_confirm)
;;     23022928 (in smp_pairing_rsp)
;;     23025DF8 (in work_queue_main)
;;     23025E84 (in k_work_init)
;;     23026AA6 (in notify_le_param_updated)
;;     23026D0E (in bt_conn_set_security)
;;     23026FA4 (in bt_conn_prepare_events)
;;     23026FCE (in bt_conn_prepare_events)
;;     230279AC (in conn_update_timeout)
;;     23027A28 (in bt_conn_le_param_update)
;;     23027B80 (in bt_conn_process_tx)
;;     230280B2 (in gatt_write_ccc_rsp)
;;     23028204 (in sc_indicate_rsp)
;;     23028E92 (in sc_process)
atomic_and proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	a1,00000084
	c.mv	s1,a0
	jal	ra,0000000023025298
	c.lwsp	a2,00000064
	c.lw	s1,0(s0)
	c.and	a1,s0
	c.sw	s1,0(a1)
	jal	ra,00000000230252A8
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; fixed_data_unref: 2302554A
fixed_data_unref proc
	c.jr	ra

;; net_buf_pool_get: 2302554C
;;   Called from:
;;     2301CA9C (in hci_cmd_done)
;;     2301CAB0 (in hci_cmd_done)
;;     2301FC16 (in l2cap_chan_le_send)
net_buf_pool_get proc
	c.li	a5,0000001C
	add	a0,a0,a5
	lui	a5,0004200E
	addi	a5,a5,-000002D0
	c.add	a0,a5
	c.jr	ra

;; net_buf_id: 2302555E
;;   Called from:
;;     2301CADA (in hci_cmd_done)
;;     2301CAFC (in hci_cmd_done)
;;     2301CB1A (in hci_cmd_done)
;;     2301CB30 (in hci_cmd_done)
;;     2301CB4A (in hci_cmd_done)
;;     2301CB5C (in hci_cmd_done)
;;     2301CB6C (in hci_cmd_done)
;;     2301CCEE (in bt_hci_cmd_create)
;;     2301CD08 (in bt_hci_cmd_create)
;;     2301CD18 (in bt_hci_cmd_create)
;;     2301CD86 (in bt_hci_cmd_send_sync)
;;     2301CDA0 (in bt_hci_cmd_send_sync)
;;     2301CDE4 (in bt_hci_cmd_send_sync)
;;     2301CDF6 (in bt_hci_cmd_send_sync)
;;     2301CEB0 (in set_le_scan_enable)
;;     2301D098 (in set_advertise_enable)
;;     2301E41A (in hci_tx_thread)
;;     230255A4 (in fixed_data_alloc)
net_buf_id proc
	lbu	a4,a0,+00000006
	c.li	a3,0000001C
	lui	a5,0004200E
	add	a4,a4,a3
	addi	a5,a5,-000002D0
	c.add	a5,a4
	c.lw	a5,24(a5)
	c.sub	a0,a5
	c.srai	a0,00000005
	c.jr	ra

;; fixed_data_alloc: 2302557A
fixed_data_alloc proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lbu	a4,a0,+00000006
	c.li	a3,0000001C
	lui	a5,0004200E
	add	a4,a4,a3
	addi	a5,a5,-000002D0
	c.add	a5,a4
	c.lw	a5,20(a5)
	c.lw	a5,4(s0)
	c.lw	a1,0(a5)
	c.lw	s0,0(a4)
	bgeu	a4,a5,00000000230255A2

l230255A0:
	c.mv	a5,a4

l230255A2:
	c.sw	a1,0(a5)
	jal	ra,000000002302555E
	c.lw	s0,0(a5)
	c.lwsp	a2,00000020
	add	a0,a0,a5
	c.lw	s0,4(a5)
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.add	a0,a5
	c.jr	ra

;; net_buf_alloc_len: 230255BA
;;   Called from:
;;     230256E0 (in net_buf_alloc_fixed)
net_buf_alloc_len proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s1,a0
	c.swsp	a1,00000084
	c.mv	s2,a2
	c.swsp	s0,00000014
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	jal	ra,000000002302536E
	c.mv	s3,a0
	jal	ra,0000000023025298
	lhu	a5,s1,+0000000E
	c.beqz	a5,0000000023025696

l230255E0:
	lhu	a4,s1,+0000000C
	c.mv	s5,a0
	bgeu	a5,a4,0000000023025656

l230255EA:
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002302513A
	c.mv	s0,a0
	c.beqz	a0,0000000023025656

l230255F6:
	c.mv	a0,s5
	jal	ra,00000000230252A8

l230255FC:
	c.lwsp	a2,000000E4
	c.beqz	a5,00000000230256BA

l23025600:
	addi	a5,s2,+00000001
	c.li	a4,00000001
	bgeu	a4,a5,000000002302561C

l2302560A:
	jal	ra,000000002302536E
	sub	a0,a0,s3
	bgeu	s2,a0,0000000023025618

l23025616:
	c.mv	a0,s2

l23025618:
	sub	s2,s2,a0

l2302561C:
	lbu	a5,s0,+00000006
	c.li	s3,0000001C
	lui	s1,0004200E
	add	a5,a5,s3
	addi	s1,s1,-000002D0
	c.mv	a2,s2
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	c.add	a5,s1
	c.lw	a5,20(a5)
	c.lw	a5,0(a5)
	c.lw	a5,0(a5)
	c.jalr	a5
	c.sw	s0,16(a0)
	c.bnez	a0,00000000230256BE

l23025642:
	lbu	a0,s0,+00000006
	c.mv	a1,s0
	c.li	s0,00000000
	add	a0,a0,s3
	c.add	a0,s1
	jal	ra,0000000023025112
	c.j	00000000230256A6

l23025656:
	lhu	s4,s1,+0000000E
	c.mv	a0,s5
	addi	a5,s4,-00000001
	sh	a5,s1,+0000000E
	jal	ra,00000000230252A8
	lhu	s0,s1,+0000000C
	sub	s0,s0,s4
	slli	a5,s0,00000005
	c.lw	s1,24(s0)
	c.add	s0,a5
	lui	a5,0004200E
	addi	a5,a5,-000002D0
	c.sub	s1,a5
	lui	a5,000B6DB7
	c.srai	s1,00000002
	addi	a5,a5,-00000249
	add	s1,s1,a5
	sb	s1,s0,+00000006
	c.j	00000000230255FC

l23025696:
	jal	ra,00000000230252A8
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002302513A
	c.mv	s0,a0
	c.bnez	a0,00000000230255FC

l230256A6:
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

l230256BA:
	sw	zero,s0,+00000010

l230256BE:
	c.li	a5,00000001
	sw	zero,s0,+00000000
	sh	a5,s0,+00000004
	c.lwsp	a2,000000E4
	sh	zero,s0,+0000000C
	sh	a5,s0,+0000000E
	c.lw	s0,16(a5)
	c.sw	s0,8(a5)
	c.j	00000000230256A6

;; net_buf_alloc_fixed: 230256D8
;;   Called from:
;;     2301CCD6 (in bt_hci_cmd_create)
;;     2301F36E (in bt_buf_get_rx)
;;     2301FC1C (in l2cap_chan_le_send)
;;     23027AAE (in bt_conn_create_pdu_timeout)
net_buf_alloc_fixed proc
	c.lw	a0,20(a5)
	c.mv	a2,a1
	c.lw	a5,4(a5)
	c.lw	a5,0(a1)
	jal	zero,00000000230255BA

;; net_buf_get: 230256E4
;;   Called from:
;;     2301C40C (in recv_thread)
;;     2301E3C2 (in hci_tx_thread)
;;     2301E642 (in bt_delete_queue)
;;     2301F68C (in l2cap_chan_destroy)
;;     2301F69A (in l2cap_chan_destroy)
;;     2302026E (in l2cap_rx_process)
;;     230207FC (in l2cap_recv)
;;     230269B6 (in conn_cleanup)
;;     23027BA2 (in bt_conn_process_tx)
;;     2302B51A (in att_pdu_sent)
net_buf_get proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a0
	jal	ra,000000002302513A
	c.mv	s1,a0
	c.mv	s0,a0
	c.bnez	a0,000000002302571E

l230256FA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23025708:
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,000000002302513A
	lbu	a5,s0,+00000005
	c.sw	s0,0(a0)
	c.andi	a5,FFFFFFFE
	sb	a5,s0,+00000005
	c.mv	s0,a0

l2302571E:
	lbu	a5,s0,+00000005
	c.andi	a5,00000001
	c.bnez	a5,0000000023025708

l23025726:
	sw	zero,s0,+00000000
	c.j	00000000230256FA

;; net_buf_simple_reserve: 2302572C
;;   Called from:
;;     2301CCE4 (in bt_hci_cmd_create)
;;     2301F37A (in bt_buf_get_rx)
;;     2301F3CE (in bt_buf_get_cmd_complete)
;;     2301FC28 (in l2cap_chan_le_send)
;;     23027AD8 (in bt_conn_create_pdu_timeout)
net_buf_simple_reserve proc
	c.lw	a0,8(a5)
	c.add	a1,a5
	c.sw	a0,0(a1)
	c.jr	ra

;; net_buf_put: 23025734
;;   Called from:
;;     2301C426 (in hci_driver_enque_recvq)
;;     2301CDC0 (in bt_hci_cmd_send_sync)
;;     2301D8B2 (in bt_hci_cmd_send)
;;     2301FFC0 (in bt_l2cap_recv)
;;     23026F0C (in bt_conn_send_cb)
net_buf_put proc
	c.mv	a2,a1

l23025736:
	c.lw	a2,0(a4)
	c.bnez	a4,000000002302573E

l2302573A:
	jal	zero,0000000023025116

l2302573E:
	lbu	a5,a2,+00000005
	ori	a5,a5,+00000001
	sb	a5,a2,+00000005
	c.mv	a2,a4
	c.j	0000000023025736

;; net_buf_unref: 2302574E
;;   Called from:
;;     2301C3B8 (in hci_driver_send)
;;     2301CE30 (in bt_hci_cmd_send_sync)
;;     2301CE56 (in bt_hci_cmd_send_sync)
;;     2301D210 (in set_ad)
;;     2301D896 (in bt_hci_cmd_send)
;;     2301E3EE (in hci_tx_thread)
;;     2301E436 (in hci_tx_thread)
;;     2301E440 (in hci_tx_thread)
;;     2301E4D8 (in bt_recv)
;;     2301E57A (in bt_recv)
;;     2301E5E6 (in bt_recv_prio)
;;     2301E654 (in bt_delete_queue)
;;     2301EA1A (in init_work)
;;     2301EA44 (in init_work)
;;     2301EA9E (in init_work)
;;     2301EB0E (in init_work)
;;     2301EB36 (in init_work)
;;     2301EB90 (in init_work)
;;     2301EBCA (in init_work)
;;     2301EC32 (in init_work)
;;     2301EC60 (in init_work)
;;     2301EC84 (in init_work)
;;     2301ED44 (in init_work)
;;     2301F67C (in l2cap_chan_destroy)
;;     2301F6A4 (in l2cap_chan_destroy)
;;     2301F6BA (in l2cap_chan_destroy)
;;     2301F6C0 (in l2cap_chan_destroy)
;;     2301FC90 (in l2cap_chan_le_send)
;;     2301FD9A (in l2cap_chan_le_send_sdu)
;;     2301FF68 (in bt_l2cap_recv)
;;     2302021E (in l2cap_chan_le_recv_seg)
;;     230202AC (in l2cap_rx_process)
;;     230224F4 (in smp_send_pairing_confirm)
;;     2302263A (in legacy_send_pairing_confirm)
;;     2302585E (in net_buf_frag_del)
;;     230268E0 (in send_frag)
;;     2302698C (in bt_conn_reset_rx_state)
;;     230269F8 (in conn_cleanup)
;;     23026DC0 (in bt_conn_recv)
;;     23026E0A (in bt_conn_recv)
;;     23026E8E (in bt_conn_send_cb)
;;     23026EC4 (in bt_conn_send_cb)
;;     23026EF0 (in bt_conn_send_cb)
;;     23027B04 (in create_frag.isra.11)
;;     23027C00 (in bt_conn_process_tx)
;;     2302AB10 (in att_req_destroy)
;;     2302B05A (in att_send)
;;     2302B0E2 (in att_send_req)
;;     2302B15E (in att_handle_rsp)
;;     2302B390 (in att_reset)
;;     2302BAB6 (in att_read_group_req)
;;     2302BB92 (in att_read_mult_req)
;;     2302BC2A (in att_read_rsp)
;;     2302BD90 (in att_read_type_req)
;;     2302BE9C (in att_find_type_req)
;;     2302BF4C (in att_find_info_req)
;;     2302C004 (in att_write_rsp.constprop.10)
;;     2302C14C (in bt_att_send)
;;     2302C1B6 (in bt_att_req_send)
net_buf_unref proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	s2,0004200E
	lui	s3,0004200E
	c.swsp	s0,0000000C
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s5,00000080
	c.mv	s0,a0
	addi	s2,s2,-000002D0
	c.li	s4,0000001C
	addi	s3,s3,-00000298

l23025772:
	c.bnez	s0,0000000023025786

l23025774:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l23025786:
	lbu	a5,s0,+00000004
	lw	s5,s0,+00000000
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s0,+00000004
	c.bnez	a5,0000000023025774

l2302579A:
	c.lw	s0,16(a1)
	c.beqz	a1,00000000230257BE

l2302579E:
	lbu	a5,s0,+00000005
	c.andi	a5,00000002
	c.bnez	a5,00000000230257BA

l230257A6:
	lbu	a5,s0,+00000006
	c.mv	a0,s0
	add	a5,a5,s4
	c.add	a5,s2
	c.lw	a5,20(a5)
	c.lw	a5,0(a5)
	c.lw	a5,8(a5)
	c.jalr	a5

l230257BA:
	sw	zero,s0,+00000010

l230257BE:
	lbu	s1,s0,+00000006
	sw	zero,s0,+00000008
	sw	zero,s0,+00000000
	add	s1,s1,s4
	c.add	s1,s2
	c.lw	s1,16(a5)
	c.beqz	a5,00000000230257F2

l230257D4:
	c.mv	a0,s0
	c.jalr	a5

l230257D8:
	c.mv	s0,s5
	bne	s1,s3,0000000023025772

l230257DE:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,00000000230265D0

l230257F2:
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,0000000023025112
	c.j	00000000230257D8

;; net_buf_ref: 230257FC
;;   Called from:
;;     2301CDB2 (in bt_hci_cmd_send_sync)
;;     2301E3F8 (in hci_tx_thread)
;;     2301FBF2 (in l2cap_chan_le_send)
;;     2301FFB6 (in bt_l2cap_recv)
;;     2302B0C0 (in att_send_req)
net_buf_ref proc
	lbu	a5,a0,+00000004
	c.addi	a5,00000001
	sb	a5,a0,+00000004
	c.jr	ra

;; net_buf_frag_insert: 23025808
;;   Called from:
;;     23025832 (in net_buf_frag_add)
net_buf_frag_insert proc
	c.lw	a0,0(a4)
	c.mv	a5,a1
	c.bnez	a4,0000000023025814

l2302580E:
	c.sw	a0,0(a1)
	c.jr	ra

l23025812:
	c.mv	a5,a3

l23025814:
	c.lw	a5,0(a3)
	c.bnez	a3,0000000023025812

l23025818:
	c.sw	a5,0(a4)
	c.j	000000002302580E

;; net_buf_frag_add: 2302581C
;;   Called from:
;;     230259E4 (in net_buf_append_bytes)
net_buf_frag_add proc
	c.bnez	a0,0000000023025840

l2302581E:
	lbu	a5,a1,+00000004
	c.mv	a0,a1
	c.addi	a5,00000001
	sb	a5,a1,+00000004
	c.jr	ra

l2302582C:
	c.mv	a0,a4

l2302582E:
	c.lw	a0,0(a4)
	c.bnez	a4,000000002302582C

l23025832:
	jal	ra,0000000023025808
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23025840:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.j	000000002302582E

;; net_buf_frag_del: 2302584A
;;   Called from:
;;     2301FDAA (in l2cap_chan_le_send_sdu)
net_buf_frag_del proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.beqz	a0,0000000023025856

l23025852:
	c.lw	a1,0(a5)
	c.sw	a0,0(a5)

l23025856:
	c.lw	a1,0(s0)
	c.mv	a0,a1
	sw	zero,a1,+00000000
	jal	ra,000000002302574E
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; net_buf_simple_add: 2302586C
;;   Called from:
;;     2301CD2A (in bt_hci_cmd_create)
;;     2301CE7C (in set_le_scan_enable)
;;     2301CFBA (in hci_id_add)
;;     2301D1A0 (in set_ad)
;;     2301D6E6 (in bt_id_del)
;;     2301D8EE (in bt_le_set_data_len)
;;     2301DC42 (in le_adv_report)
;;     2301DDE0 (in le_ltk_request)
;;     2301DE18 (in le_ltk_request)
;;     2301DE6A (in le_conn_param_neg_reply)
;;     2301DF4A (in le_conn_param_req)
;;     2301E1F2 (in enh_conn_complete)
;;     2301EC9C (in init_work)
;;     2301ED62 (in init_work)
;;     2301EDCA (in init_work)
;;     2301F526 (in bt_dh_key_gen)
;;     2301F7DC (in l2cap_create_le_sig_pdu.isra.7)
;;     2301F9D2 (in l2cap_chan_send_credits.isra.10)
;;     2301FA44 (in l2cap_le_conn_req)
;;     2301FB42 (in l2cap_send_reject)
;;     23020004 (in bt_l2cap_update_conn_param)
;;     23020088 (in bt_l2cap_chan_disconnect)
;;     2302045A (in l2cap_recv)
;;     23020704 (in l2cap_recv)
;;     23020898 (in l2cap_recv)
;;     2302154E (in smp_create_pdu.isra.7)
;;     2302159E (in sc_smp_send_dhkey_check)
;;     230218C8 (in smp_send_pairing_random)
;;     23021912 (in sc_send_public_key)
;;     2302196E (in send_pairing_rsp)
;;     23021A3E (in bt_smp_distribute_keys)
;;     23021A88 (in bt_smp_distribute_keys)
;;     23021AEE (in bt_smp_distribute_keys)
;;     23021D84 (in smp_send_pairing_req)
;;     230221C4 (in smp_error)
;;     230224D4 (in smp_send_pairing_confirm)
;;     23022614 (in legacy_send_pairing_confirm)
;;     23023338 (in bt_smp_sign)
;;     23023712 (in bt_smp_start_security)
;;     23026BCC (in bt_conn_le_start_encryption)
;;     230276C2 (in bt_conn_disconnect)
;;     23027850 (in bt_conn_le_conn_update)
;;     23027FFA (in gatt_notify)
;;     23028010 (in gatt_notify)
;;     23028170 (in gatt_indicate)
;;     23028188 (in gatt_indicate)
;;     230283A8 (in gatt_write_ccc.constprop.21)
;;     230290B6 (in bt_gatt_exchange_mtu)
;;     23029714 (in gatt_read_type_rsp)
;;     23029ADE (in bt_gatt_read)
;;     23029B98 (in bt_gatt_read)
;;     23029BCC (in bt_gatt_read)
;;     23029D50 (in bt_gatt_write_without_response_cb)
;;     23029D6E (in bt_gatt_write_without_response_cb)
;;     23029E28 (in bt_gatt_write)
;;     23029E4C (in bt_gatt_write)
;;     23029E8C (in bt_gatt_write)
;;     23029EBA (in bt_gatt_write)
;;     23029F2E (in gatt_prepare_write_rsp)
;;     2302AC14 (in read_group_cb)
;;     2302AC70 (in read_group_cb)
;;     2302ACE6 (in read_type_cb)
;;     2302AD50 (in read_type_cb)
;;     2302AE7A (in find_type_cb)
;;     2302AEC4 (in find_info_cb)
;;     2302AF00 (in find_info_cb)
;;     2302AF44 (in find_info_cb)
;;     2302B6CA (in read_cb)
;;     2302B742 (in read_cb)
;;     2302B7BC (in bt_att_create_pdu)
;;     2302B84E (in att_mtu_req)
;;     2302B8BE (in send_err_rsp.part.7)
;;     2302BA8C (in att_read_group_req)
;;     2302BD64 (in att_read_type_req)
net_buf_simple_add proc
	lhu	a5,a0,+00000004
	c.lw	a0,0(a4)
	c.add	a1,a5
	sh	a1,a0,+00000004
	add	a0,a4,a5
	c.jr	ra

;; net_buf_simple_add_mem: 2302587E
;;   Called from:
;;     2301CF32 (in set_random_address)
;;     2301D59A (in bt_id_add)
;;     2301D9E8 (in start_le_scan)
;;     2301F022 (in bt_le_adv_start_internal)
;;     2301F31A (in bt_set_tx_pwr)
;;     2301FB5A (in l2cap_send_reject)
;;     2301FC7A (in l2cap_chan_le_send)
;;     230259CA (in net_buf_append_bytes)
;;     23026DF6 (in bt_conn_recv)
;;     23027B48 (in create_frag.isra.11)
;;     23029B24 (in bt_gatt_read)
net_buf_simple_add_mem proc
	lhu	a5,a0,+00000004
	c.lw	a0,0(a4)
	add	a3,a5,a2
	sh	a3,a0,+00000004
	add	a0,a4,a5
	jal	zero,000000002306CF80

;; net_buf_simple_add_u8: 23025894
;;   Called from:
;;     2301D036 (in addr_res_enable)
;;     2301D080 (in set_advertise_enable)
net_buf_simple_add_u8 proc
	lhu	a4,a0,+00000004
	c.lw	a0,0(a5)
	c.add	a5,a4
	c.addi	a4,00000001
	sh	a4,a0,+00000004
	sb	a1,a5,+00000000
	c.mv	a0,a5
	c.jr	ra

;; net_buf_simple_add_le16: 230258AA
;;   Called from:
;;     2301FC42 (in l2cap_chan_le_send)
;;     230283BA (in gatt_write_ccc.constprop.21)
;;     23029B0C (in bt_gatt_read)
;;     23029B7C (in bt_gatt_read)
net_buf_simple_add_le16 proc
	lhu	a4,a0,+00000004
	c.lw	a0,0(a5)
	c.add	a5,a4
	c.addi	a4,00000002
	sh	a4,a0,+00000004
	sb	a1,a5,+00000000
	c.srli	a1,00000008
	sb	a1,a5,+00000001
	c.jr	ra

;; net_buf_simple_push: 230258C4
;;   Called from:
;;     2301F946 (in bt_l2cap_send_cb)
;;     23026840 (in send_frag)
;;     2302C0B4 (in att_signed_write_cmd)
net_buf_simple_push proc
	c.lw	a0,0(a5)
	lhu	a4,a0,+00000004
	c.sub	a5,a1
	c.add	a1,a4
	c.sw	a0,0(a5)
	sh	a1,a0,+00000004
	c.mv	a0,a5
	c.jr	ra

;; net_buf_simple_push_le16: 230258D8
;;   Called from:
;;     2301FBEC (in l2cap_chan_le_send)
net_buf_simple_push_le16 proc
	c.lw	a0,0(a5)
	addi	a4,a5,-00000002
	c.sw	a0,0(a4)
	lhu	a4,a0,+00000004
	c.addi	a4,00000002
	sh	a4,a0,+00000004
	sb	a1,a5,+00000FFE
	c.srli	a1,00000008
	sb	a1,a5,+00000FFF
	c.jr	ra

;; net_buf_simple_pull: 230258F6
;;   Called from:
;;     2301D7B2 (in bt_data_parse)
;;     2301DCE2 (in le_adv_report)
;;     2301FC84 (in l2cap_chan_le_send)
;;     2302592C (in net_buf_simple_pull_u8)
;;     23025950 (in net_buf_simple_pull_le16)
;;     2302673A (in bl_onchiphci_send_2_controller)
;;     230267AC (in bl_onchiphci_send_2_controller)
;;     23027B52 (in create_frag.isra.11)
;;     2302C0C6 (in att_signed_write_cmd)
;;     2302C0CE (in att_signed_write_cmd)
net_buf_simple_pull proc
	lhu	a5,a0,+00000004
	c.sub	a5,a1
	sh	a5,a0,+00000004
	c.lw	a0,0(a5)
	c.add	a1,a5
	c.sw	a0,0(a1)
	c.mv	a0,a1
	c.jr	ra

;; net_buf_simple_pull_mem: 2302590A
;;   Called from:
;;     2301CA62 (in hci_le_meta_event)
;;     2301CBA8 (in hci_cmd_status)
;;     2301CBF2 (in hci_cmd_complete)
;;     2301DB46 (in le_adv_report)
;;     2301E496 (in bt_recv)
;;     2301E532 (in bt_recv)
;;     2301E5AC (in bt_recv_prio)
;;     2301FF74 (in bt_l2cap_recv)
;;     23020354 (in l2cap_recv)
;;     230222F0 (in bt_smp_recv)
;;     2302B93E (in bt_att_recv)
;;     2302BA12 (in att_read_group_req)
;;     2302BCDE (in att_read_type_req)
;;     2302BDCE (in att_find_type_req)
net_buf_simple_pull_mem proc
	c.mv	a5,a0
	lhu	a4,a5,+00000004
	c.lw	a0,0(a0)
	c.sub	a4,a1
	c.add	a1,a0
	sh	a4,a5,+00000004
	c.sw	a5,0(a1)
	c.jr	ra

;; net_buf_simple_pull_u8: 2302591E
;;   Called from:
;;     2301D760 (in bt_data_parse)
;;     2301D794 (in bt_data_parse)
;;     2301DAFC (in le_adv_report)
net_buf_simple_pull_u8 proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,0(a5)
	c.li	a1,00000001
	lbu	s0,a5,+00000000
	jal	ra,00000000230258F6
	c.lwsp	a2,00000020
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; net_buf_simple_pull_le16: 2302593A
;;   Called from:
;;     230202C6 (in l2cap_rx_process)
;;     2302AB3A (in att_notify)
;;     2302B7D4 (in att_indicate)
;;     2302BB74 (in att_read_mult_req)
;;     2302C042 (in att_write_req)
;;     2302C06E (in att_write_cmd)
net_buf_simple_pull_le16 proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,0(a5)
	c.li	a1,00000002
	lbu	s0,a5,+00000001
	lbu	a4,a5,+00000000
	c.slli	s0,08
	c.or	s0,a4
	jal	ra,00000000230258F6
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; net_buf_simple_headroom: 2302595E
;;   Called from:
;;     2301C9B8 (in hci_vendor_event)
;;     2301DB8C (in le_adv_report)
;;     2301FBC6 (in l2cap_chan_le_send)
;;     2302B0AA (in att_send_req)
;;     2302B548 (in att_pdu_sent)
net_buf_simple_headroom proc
	c.lw	a0,0(a4)
	c.lw	a0,8(a0)
	sub	a0,a4,a0
	c.jr	ra

;; net_buf_simple_tailroom: 23025968
;;   Called from:
;;     2301FC48 (in l2cap_chan_le_send)
;;     2301FC5A (in l2cap_chan_le_send)
;;     230259AE (in net_buf_append_bytes)
;;     23026DDA (in bt_conn_recv)
;;     23027B34 (in create_frag.isra.11)
;;     23027B5A (in create_frag.isra.11)
net_buf_simple_tailroom proc
	lhu	a5,a0,+00000004
	lhu	a4,a0,+00000006
	c.sub	a4,a5
	c.lw	a0,0(a5)
	c.lw	a0,8(a0)
	sub	a0,a5,a0
	sub	a0,a4,a0
	c.jr	ra

;; net_buf_append_bytes: 23025980
;;   Called from:
;;     2302016A (in l2cap_chan_le_recv_seg)
net_buf_append_bytes proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.mv	s5,a0
	c.mv	s2,a1
	c.mv	s4,a2
	c.mv	s6,a3
	c.mv	s7,a4
	c.mv	s8,a5
	c.mv	s0,a0

l230259A4:
	c.lw	s0,0(a5)
	c.bnez	a5,00000000230259EA

l230259A8:
	c.li	s3,00000000

l230259AA:
	c.addi	s0,00000008
	c.mv	a0,s0
	jal	ra,0000000023025968
	slli	s1,a0,00000010
	bgeu	s2,a0,00000000230259BE

l230259BA:
	slli	s1,s2,00000010

l230259BE:
	c.srli	s1,00000010
	c.mv	a1,s4
	c.mv	a2,s1
	c.mv	a0,s0
	sub	s2,s2,s1
	jal	ra,000000002302587E
	c.add	s3,s1
	c.add	s4,s1
	beq	s2,zero,00000000230259EE

l230259D6:
	c.mv	a1,s8
	c.mv	a0,s6
	c.jalr	s7
	c.mv	s0,a0
	c.beqz	a0,00000000230259EE

l230259E0:
	c.mv	a1,a0
	c.mv	a0,s5
	jal	ra,000000002302581C
	c.j	00000000230259AA

l230259EA:
	c.mv	s0,a5
	c.j	00000000230259A4

l230259EE:
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
	c.lwsp	s0,0000000C
	c.addi16sp	00000030
	c.jr	ra

;; bt_hex_real: 23025A08
;;   Called from:
;;     2301CA0E (in handle_event)
bt_hex_real proc
	addi	a5,zero,+0000003F
	bgeu	a5,a1,0000000023025A14

l23025A10:
	addi	a1,zero,+0000003F

l23025A14:
	lui	a5,00042012
	lui	a2,00023076
	addi	a3,a5,+00000110
	add	a7,a0,a1
	addi	a6,a5,+00000110
	addi	a2,a2,+00000794

l23025A2C:
	bne	a0,a7,0000000023025A3E

l23025A30:
	c.slli	a1,01
	c.add	a1,a6
	sb	zero,a1,+00000000
	addi	a0,a5,+00000110
	c.jr	ra

l23025A3E:
	lbu	a4,a0,+00000000
	c.addi	a3,00000002
	c.addi	a0,00000001
	c.srli	a4,00000004
	c.add	a4,a2
	lbu	a4,a4,+00000000
	sb	a4,a3,+00000FFE
	lbu	a4,a0,-00000001
	c.andi	a4,0000000F
	c.add	a4,a2
	lbu	a4,a4,+00000000
	sb	a4,a3,+00000FFF
	c.j	0000000023025A2C

;; bt_addr_le_str_real: 23025A64
;;   Called from:
;;     230210C4 (in smp_ident_info)
;;     23021132 (in smp_encrypt_info)
;;     230219B6 (in bt_smp_distribute_keys)
;;     23021B66 (in smp_signing_info)
;;     23021C00 (in smp_master_ident)
;;     2302296C (in smp_ident_addr_info)
;;     23022982 (in smp_ident_addr_info)
;;     230229C8 (in smp_ident_addr_info)
;;     23023254 (in bt_smp_sign_verify)
;;     230232A4 (in bt_smp_sign_verify)
;;     230232D0 (in bt_smp_sign_verify)
;;     23023310 (in bt_smp_sign)
;;     2302336A (in bt_smp_sign)
;;     23023788 (in bt_smp_update_keys)
bt_addr_le_str_real proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	lbu	a3,a0,+00000000
	c.li	a5,00000001
	c.mv	s0,a0
	c.addi4spn	s1,00000014
	beq	a3,a5,0000000023025AEC

l23025A7C:
	c.beqz	a3,0000000023025A9C

l23025A7E:
	c.li	a5,00000002
	beq	a3,a5,0000000023025AF6

l23025A84:
	c.li	a5,00000003
	beq	a3,a5,0000000023025B00

l23025A8A:
	lui	a2,00023076
	addi	a2,a2,+000001F8
	c.li	a1,0000000A
	c.mv	a0,s1
	jal	ra,0000000023003B18
	c.j	0000000023025AAA

l23025A9C:
	lui	a1,00023076
	addi	a1,a1,+000001D0

l23025AA4:
	c.mv	a0,s1
	jal	ra,000000002306D580

l23025AAA:
	lbu	a5,s0,+00000001
	lbu	a7,s0,+00000002
	lbu	a6,s0,+00000003
	c.swsp	a5,00000000
	lbu	a4,s0,+00000005
	lbu	a5,s0,+00000004
	lbu	a3,s0,+00000006
	lui	s2,00042012
	lui	a2,00023076
	c.swsp	s1,00000080
	addi	a0,s2,+00000190
	addi	a2,a2,+00000200
	c.li	a1,0000001E
	jal	ra,0000000023003B18
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	addi	a0,s2,+00000190
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l23025AEC:
	lui	a1,00023076
	addi	a1,a1,+000001D8
	c.j	0000000023025AA4

l23025AF6:
	lui	a1,00023076
	addi	a1,a1,+000001E0
	c.j	0000000023025AA4

l23025B00:
	lui	a1,00023076
	addi	a1,a1,+000001EC
	c.j	0000000023025AA4

;; polling_events.constprop.1: 23025B0A
;;   Called from:
;;     23025C7A (in k_poll)
;;     23025C98 (in k_poll)
polling_events.constprop.1 proc
	c.addi16sp	FFFFFFB0
	c.swsp	s4,0000001C
	c.lui	s4,FFFF1000
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	ra,000000A4
	c.swsp	s11,0000008C
	c.mv	s1,a0
	c.swsp	a1,00000084
	c.mv	s10,a2
	c.mv	s5,a3
	c.mv	s9,a0
	c.li	s0,00000000
	c.li	s2,00000001
	c.li	s6,00000002
	c.li	s3,00000014
	c.li	s7,00000003
	c.li	s8,00000001
	c.addi	s4,FFFFFFFF

l23025B40:
	c.lwsp	a2,000000E4
	blt	s0,a5,0000000023025B66

l23025B46:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.mv	a0,s2
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

l23025B66:
	jal	ra,0000000023025298
	lw	a4,s9,+0000000C
	c.mv	s11,a0
	c.srli	a4,00000008
	c.andi	a4,0000000F
	beq	a4,s6,0000000023025BC0

l23025B78:
	beq	a4,s7,0000000023025BF6

l23025B7C:
	bne	a4,s8,0000000023025B8A

l23025B80:
	lw	a4,s9,+00000010
	c.li	a2,00000002
	c.lw	a4,8(a4)
	c.bnez	a4,0000000023025BCC

l23025B8A:
	beq	s10,zero,0000000023025BEA

l23025B8E:
	beq	s2,zero,0000000023025BEA

l23025B92:
	lw	a4,s9,+0000000C
	c.srli	a4,00000008
	c.andi	a4,0000000F
	beq	a4,s6,0000000023025C04

l23025B9E:
	beq	a4,s7,0000000023025C04

l23025BA2:
	bne	a4,s8,0000000023025C20

l23025BA6:
	add	a4,s0,s3
	lw	a3,s9,+00000010
	sw	a3,s9,+00000000
	c.lw	a3,4(a2)
	sw	a2,s9,+00000004
	c.add	a4,s1
	c.sw	a2,0(a4)
	c.sw	a3,4(a4)
	c.j	0000000023025C20

l23025BC0:
	lw	a0,s9,+00000010
	jal	ra,0000000023025234
	c.beqz	a0,0000000023025B8A

l23025BCA:
	c.li	a2,00000003

l23025BCC:
	lw	a3,s9,+0000000C
	sw	zero,s9,+00000008
	c.li	s2,00000000
	srli	a4,a3,0000000C
	c.andi	a4,0000000F
	c.or	a4,a2
	c.slli	a4,0C
	and	a3,a3,s4
	c.or	a4,a3
	sw	a4,s9,+0000000C

l23025BEA:
	c.mv	a0,s11
	jal	ra,00000000230252A8
	c.addi	s0,00000001
	c.addi	s9,00000014
	c.j	0000000023025B40

l23025BF6:
	lw	a0,s9,+00000010
	jal	ra,0000000023025164
	c.bnez	a0,0000000023025B8A

l23025C00:
	c.li	a2,00000004
	c.j	0000000023025BCC

l23025C04:
	add	a4,s0,s3
	lw	a3,s9,+00000010
	addi	a2,a3,+00000004
	sw	a2,s9,+00000000
	c.lw	a3,8(a2)
	sw	a2,s9,+00000004
	c.add	a4,s1
	c.sw	a2,0(a4)
	c.sw	a3,8(a4)

l23025C20:
	sw	zero,s9,+00000008
	lw	a4,s5,+00000000
	c.addi	a4,00000001
	sw	a4,s5,+00000000
	c.j	0000000023025BEA

;; k_poll_event_init: 23025C30
;;   Called from:
;;     23026F4C (in bt_conn_prepare_events)
;;     23026F82 (in bt_conn_prepare_events)
;;     23027002 (in bt_conn_prepare_events)
k_poll_event_init proc
	c.andi	a1,0000000F
	slli	a5,a1,00000008
	c.lw	a0,12(a1)
	c.lui	a4,FFFFF000
	addi	a4,a4,+000000FF
	c.and	a1,a4
	c.or	a1,a5
	c.lui	a5,FFFF0000
	c.andi	a2,00000001
	c.addi	a5,FFFFFFFF
	c.slli	a2,10
	c.and	a1,a5
	c.or	a1,a2
	c.lui	a2,00011000
	c.addi	a2,FFFFFFFF
	c.and	a1,a2
	sw	zero,a0,+00000008
	c.sw	a0,12(a1)
	c.sw	a0,16(a3)
	c.jr	ra

;; k_poll: 23025C5E
;;   Called from:
;;     2301E372 (in hci_tx_thread)
k_poll proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.addi4spn	a3,0000000C
	c.li	s2,FFFFFFFF
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.mv	s0,a0
	c.mv	s3,a1
	c.mv	s1,a2
	c.swsp	s2,00000084
	jal	ra,0000000023025B0A
	c.beqz	a0,0000000023025C9C

l23025C80:
	lui	a0,0004201A
	c.mv	a1,s1
	addi	a0,a0,+00000464
	jal	ra,00000000230251B2
	c.addi4spn	a3,0000000C
	c.mv	a2,s1
	c.mv	a1,s3
	c.mv	a0,s0
	c.swsp	s2,00000084
	jal	ra,0000000023025B0A

l23025C9C:
	jal	ra,0000000023025298
	c.lwsp	a2,00000024
	c.li	a5,00000014
	c.mv	s2,a0
	add	a5,s1,a5
	c.li	s3,00000002
	c.li	s4,00000003
	c.li	s5,00000001
	c.add	s0,a5

l23025CB2:
	bge	s1,zero,0000000023025CD0

l23025CB6:
	c.mv	a0,s2
	jal	ra,00000000230252A8
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l23025CD0:
	c.lw	s0,12(a5)
	sw	zero,s0,+00000008
	c.srli	a5,00000008
	c.andi	a5,0000000F
	beq	a5,s3,0000000023025CE6

l23025CDE:
	beq	a5,s4,0000000023025CE6

l23025CE2:
	bne	a5,s5,0000000023025CF0

l23025CE6:
	c.lw	s0,4(a4)
	c.lw	s0,0(a5)
	c.sw	a4,0(a5)
	c.lw	s0,4(a4)
	c.sw	a5,4(a4)

l23025CF0:
	jal	ra,00000000230252A8
	jal	ra,0000000023025298
	c.addi	s1,FFFFFFFF
	c.addi	s0,FFFFFFEC
	c.j	0000000023025CB2

;; k_poll_signal_raise: 23025CFE
k_poll_signal_raise proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.mv	s0,a0
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	jal	ra,0000000023025298
	c.li	a5,00000001
	c.lwsp	a2,00000064
	c.sw	s0,8(a5)
	c.lw	s0,0(a5)
	c.sw	s0,12(a1)
	bne	s0,a5,0000000023025D2C

l23025D1C:
	jal	ra,00000000230252A8
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23025D2C:
	c.lw	a5,4(a3)
	c.lw	a5,0(a4)
	c.mv	s1,a0
	lui	a0,0004201A
	c.sw	a3,0(a4)
	c.lw	a5,4(a3)
	addi	a0,a0,+00000464
	c.sw	a4,4(a3)
	c.lw	a5,12(a4)
	c.lui	a3,00002000
	sw	zero,a5,+00000008
	c.or	a4,a3
	c.sw	a5,12(a4)
	jal	ra,00000000230251D2
	c.mv	a0,s1
	c.j	0000000023025D1C

;; bt_rpa_irk_matches: 23025D54
;;   Called from:
;;     23023C06 (in bt_keys_find_irk)
;;     23023C26 (in bt_keys_find_irk)
bt_rpa_irk_matches proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.li	a2,00000003
	c.mv	s1,a0
	c.mv	s0,a1
	c.addi4spn	a0,00000010
	c.addi	a1,00000003
	c.swsp	ra,00000094
	jal	ra,000000002306CF80
	c.li	a2,0000000D
	c.li	a1,00000000
	addi	a0,sp,+00000013
	jal	ra,000000002306D1BC
	c.addi4spn	a2,00000010
	c.mv	a1,a2
	c.mv	a0,s1
	jal	ra,0000000023027DD8
	c.bnez	a0,0000000023025DA4

l23025D82:
	c.li	a2,00000003
	c.addi4spn	a1,00000010
	c.addi4spn	a0,0000000C
	jal	ra,000000002306CF80
	c.li	a2,00000003
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,000000002306CEF8
	sltiu	a0,a0,+00000001

l23025D9A:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l23025DA4:
	c.li	a0,00000000
	c.j	0000000023025D9A

;; k_work_submit_to_queue: 23025DA8
;;   Called from:
;;     23025EA0 (in k_work_submit)
;;     2302603C (in k_delayed_work_submit)
;;     23026094 (in work_timeout)
k_work_submit_to_queue proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a1
	c.swsp	s1,00000080
	c.li	a1,00000001
	c.mv	s1,a0
	addi	a0,s0,+00000008
	c.swsp	ra,00000084
	jal	ra,00000000230254FA
	c.andi	a0,00000001
	c.bnez	a0,0000000023025DD2

l23025DC2:
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230250DE

l23025DD2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; work_queue_main: 23025DDC
work_queue_main proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lui	s1,0004201A

l23025DE8:
	c.li	a1,FFFFFFFF
	addi	a0,s1,+00000470
	jal	ra,000000002302513A
	c.mv	s0,a0
	c.li	a1,FFFFFFFE
	c.addi	a0,00000008
	jal	ra,0000000023025522
	c.andi	a0,00000001
	c.beqz	a0,0000000023025E06

l23025E00:
	c.lw	s0,4(a5)
	c.mv	a0,s0
	c.jalr	a5

l23025E06:
	jal	ra,0000000023025290
	c.j	0000000023025DE8

;; k_work_q_start: 23025E0C
;;   Called from:
;;     2301E83C (in bt_enable)
k_work_q_start proc
	c.addi	sp,FFFFFFF0
	lui	a5,00042012
	c.swsp	ra,00000084
	addi	a5,a5,+000001B0
	lui	a0,0004201A
	c.li	a1,00000014
	addi	a0,a0,+00000470
	sw	zero,a5,+00000000
	sw	zero,a5,+00000004
	sw	zero,a5,+00000008
	sw	zero,a5,+0000000C
	sw	zero,a5,+00000010
	sw	zero,a5,+00000014
	sw	zero,a5,+00000018
	sw	zero,a5,+0000001C
	sw	zero,a5,+00000020
	sw	zero,a5,+00000024
	jal	ra,0000000023025092
	c.lwsp	a2,00000020
	lui	a3,00023026
	lui	a1,00023076
	lui	a0,0004201A
	c.li	a4,0000001E
	addi	a3,a3,-00000224
	addi	a2,zero,+00000600
	addi	a1,a1,+000007A8
	addi	a0,a0,+0000047C
	c.addi	sp,00000010
	jal	zero,000000002302523A

;; k_work_init: 23025E74
;;   Called from:
;;     2301E838 (in bt_enable)
;;     2301FE7C (in l2cap_chan_add)
;;     23025EAC (in k_delayed_work_init)
;;     2302707C (in bt_conn_add_le)
k_work_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	c.addi	a0,00000008
	c.li	a1,FFFFFFFE
	c.swsp	ra,00000084
	jal	ra,0000000023025522
	c.lwsp	a2,00000020
	c.sw	s0,4(s1)
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; k_work_submit: 23025E96
;;   Called from:
;;     2301C792 (in hci_num_completed_packets)
;;     2301E8E6 (in bt_enable)
;;     2301FFD2 (in bt_l2cap_recv)
k_work_submit proc
	c.mv	a1,a0
	lui	a0,0004201A
	addi	a0,a0,+00000470
	jal	zero,0000000023025DA8

;; k_delayed_work_init: 23025EA4
;;   Called from:
;;     2301FE38 (in l2cap_chan_add)
;;     230212BE (in bt_smp_connected)
;;     2302706A (in bt_conn_add_le)
;;     23028924 (in bt_gatt_init)
;;     2302AFB2 (in bt_att_connected)
k_delayed_work_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023025E74
	lui	a1,00023026
	c.mv	a2,s0
	addi	a0,s0,+00000010
	addi	a1,a1,+00000072
	jal	ra,00000000230252AC
	c.lwsp	a2,00000020
	sw	zero,s0,+0000000C
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; k_delayed_work_del_timer: 23025ECE
;;   Called from:
;;     2301F8B4 (in bt_l2cap_chan_del)
;;     2302126E (in bt_smp_disconnected)
;;     2302127A (in bt_smp_disconnected)
;;     230269EA (in conn_cleanup)
;;     23028944 (in bt_gatt_deinit)
;;     2302B3EE (in bt_att_disconnected)
k_delayed_work_del_timer proc
	c.beqz	a0,0000000023025EEE

l23025ED0:
	c.lw	a0,16(a5)
	c.beqz	a5,0000000023025EEE

l23025ED4:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.addi	a0,00000010
	c.swsp	ra,00000084
	jal	ra,0000000023025322
	sw	zero,s0,+00000010
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23025EEE:
	c.jr	ra

;; add_timer_record: 23025EF0
;;   Called from:
;;     23025FF8 (in k_delayed_work_submit)
add_timer_record proc
	lui	a5,00042012
	c.lw	a0,16(a2)
	addi	a3,a5,+000001B0
	addi	a4,a5,+000001B0
	addi	a1,a3,+00000028
	addi	a5,a5,+000001B0

l23025F06:
	lw	a6,a4,+00000000
	beq	a6,a2,0000000023025F28

l23025F0E:
	c.addi	a4,00000008
	bne	a4,a1,0000000023025F06

l23025F14:
	c.li	a4,00000000
	c.li	a1,00000005

l23025F18:
	lw	a6,a3,+00000000
	bne	a6,zero,0000000023025F2C

l23025F20:
	c.slli	a4,03
	c.add	a5,a4
	c.sw	a5,0(a2)
	c.sw	a5,4(a0)

l23025F28:
	c.li	a0,00000000
	c.jr	ra

l23025F2C:
	c.addi	a4,00000001
	c.addi	a3,00000008
	bne	a4,a1,0000000023025F18

l23025F34:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; remv_timer_record: 23025F38
;;   Called from:
;;     23025F94 (in k_delayed_work_cancel)
remv_timer_record proc
	c.lw	a0,16(a1)
	lui	a4,00042012
	addi	a3,a4,+000001B0
	c.li	a5,00000000
	addi	a4,a4,+000001B0
	c.li	a2,00000005

l23025F4A:
	c.lw	a3,0(a0)
	bne	a0,a1,0000000023025F5C

l23025F50:
	c.slli	a5,03
	c.add	a5,a4
	sw	zero,a5,+00000000

l23025F58:
	c.li	a0,00000000
	c.jr	ra

l23025F5C:
	c.addi	a5,00000001
	c.addi	a3,00000008
	bne	a5,a2,0000000023025F4A

l23025F64:
	c.j	0000000023025F58

;; k_delayed_work_cancel: 23025F66
;;   Called from:
;;     2301F674 (in l2cap_chan_destroy)
;;     230205EA (in l2cap_recv)
;;     230209B8 (in smp_reset)
;;     23021262 (in bt_smp_disconnected)
;;     23026012 (in k_delayed_work_submit)
;;     23027132 (in bt_conn_set_state)
;;     23027692 (in bt_conn_disconnect)
;;     2302B104 (in att_handle_rsp)
k_delayed_work_cancel proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s0,a0
	jal	ra,0000000023025298
	c.mv	s2,a0
	addi	a0,s0,+00000008
	jal	ra,00000000230254AC
	andi	s1,a0,+00000001
	c.bnez	s1,0000000023025FB8

l23025F86:
	c.lw	s0,12(a5)
	c.beqz	a5,0000000023025FBE

l23025F8A:
	addi	a0,s0,+00000010
	jal	ra,00000000230252F2
	c.mv	a0,s0
	jal	ra,0000000023025F38
	sw	zero,s0,+0000000C
	sw	zero,s0,+0000001C
	sw	zero,s0,+00000020

l23025FA4:
	c.mv	a0,s2
	jal	ra,00000000230252A8
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23025FB8:
	addi	s1,zero,-00000044
	c.j	0000000023025FA4

l23025FBE:
	c.li	s1,FFFFFFEA
	c.j	0000000023025FA4

;; k_delayed_work_submit: 23025FC2
;;   Called from:
;;     2301C560 (in slave_update_conn_param)
;;     2301FA98 (in l2cap_le_conn_req)
;;     230200B0 (in bt_l2cap_chan_disconnect)
;;     2302157E (in smp_send.isra.9)
;;     230269CC (in conn_cleanup)
;;     23028220 (in sc_indicate_rsp)
;;     230287BA (in sc_indicate)
;;     2302B5EE (in att_req_sent)
k_delayed_work_submit proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.mv	s1,a0
	c.swsp	a1,00000084
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	jal	ra,0000000023025298
	c.lw	s1,12(a5)
	lui	s2,0004201A
	c.mv	s4,a0
	addi	s3,s2,+00000470
	c.lwsp	a2,00000064
	c.bnez	a5,0000000023026006

l23025FE8:
	sw	s3,s1,+0000000C
	c.beqz	a1,0000000023026036

l23025FEE:
	addi	a0,s1,+00000010
	jal	ra,000000002302537C
	c.mv	a0,s1
	jal	ra,0000000023025EF0
	c.mv	s0,a0
	c.beqz	a0,000000002302601E

l23026000:
	jal	ra,000000002300149E
	c.j	0000000023026044

l23026006:
	c.swsp	a1,00000084
	addi	s0,zero,-00000030
	bne	a5,s3,000000002302601E

l23026010:
	c.mv	a0,s1
	jal	ra,0000000023025F66
	c.mv	s0,a0
	c.lwsp	a2,00000064
	bge	a0,zero,0000000023025FE8

l2302601E:
	c.mv	a0,s4
	jal	ra,00000000230252A8
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23026036:
	c.mv	a1,s1
	addi	a0,s2,+00000470
	jal	ra,0000000023025DA8
	sw	zero,s1,+0000000C

l23026044:
	c.li	s0,00000000
	c.j	000000002302601E

;; get_timer_record: 23026048
;;   Called from:
;;     2302607A (in work_timeout)
get_timer_record proc
	lui	a5,00042012
	addi	a3,a5,+000001B0
	c.li	a4,00000000
	addi	a5,a5,+000001B0
	c.li	a2,00000005

l23026058:
	c.lw	a3,0(a1)
	bne	a1,a0,0000000023026066

l2302605E:
	slli	a0,a4,00000003
	c.add	a0,a5
	c.jr	ra

l23026066:
	c.addi	a4,00000001
	c.addi	a3,00000008
	bne	a4,a2,0000000023026058

l2302606E:
	c.li	a0,00000000
	c.jr	ra

;; work_timeout: 23026072
work_timeout proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023026048
	c.mv	s1,a0
	c.bnez	a0,0000000023026086

l23026082:
	jal	ra,000000002300149E

l23026086:
	c.lw	s1,4(s0)
	addi	a0,s0,+00000010
	jal	ra,00000000230252F2
	c.lw	s0,12(a0)
	c.mv	a1,s0
	jal	ra,0000000023025DA8
	sw	zero,s0,+0000000C
	sw	zero,s1,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; reverse_bytearray: 230260AA
;;   Called from:
;;     23023FD0 (in ble_select_conn)
;;     2302404A (in ble_disconnect)
;;     23024126 (in ble_connect)
;;     23024B02 (in ble_unpair)
reverse_bytearray proc
	c.add	a1,a2
	c.li	a5,00000000

l230260AE:
	c.addi	a1,FFFFFFFF
	blt	a5,a2,00000000230260B6

l230260B4:
	c.jr	ra

l230260B6:
	add	a4,a0,a5
	lbu	a4,a4,+00000000
	c.addi	a5,00000001
	sb	a4,a1,+00000000
	c.j	00000000230260AE

;; gf_double: 230260C6
;;   Called from:
;;     23026184 (in tc_cmac_setup)
;;     2302618E (in tc_cmac_setup)
gf_double proc
	lb	a5,a1,+00000000
	addi	a4,a1,+0000000F
	c.addi	a0,0000000F
	c.srai	a5,0000001F
	andi	a5,a5,+00000087

l230260D6:
	lbu	a3,a4,+00000000
	c.addi	a0,FFFFFFFF
	c.slli	a3,01
	c.xor	a5,a3
	sb	a5,a0,+00000001
	beq	a4,a1,00000000230260F2

l230260E8:
	c.addi	a4,FFFFFFFF
	lbu	a5,a4,+00000001
	c.srli	a5,00000007
	c.j	00000000230260D6

l230260F2:
	c.jr	ra

;; tc_cmac_erase: 230260F4
;;   Called from:
;;     230262EE (in tc_cmac_final)
tc_cmac_erase proc
	c.beqz	a0,000000002302610A

l230260F6:
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+00000058
	c.li	a1,00000000
	c.swsp	ra,00000084
	c.jal	0000000023026346
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l2302610A:
	c.li	a0,00000000
	c.jr	ra

;; tc_cmac_init: 2302610E
;;   Called from:
;;     23026194 (in tc_cmac_setup)
tc_cmac_init proc
	c.beqz	a0,000000002302613E

l23026110:
	c.addi	sp,FFFFFFF0
	c.li	a2,00000010
	c.li	a1,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.jal	0000000023026346
	addi	a0,s0,+00000030
	c.li	a2,00000010
	c.li	a1,00000000
	c.jal	0000000023026346
	c.li	a4,00000000
	c.lui	a5,00010000
	sw	zero,s0,+00000044
	c.sw	s0,80(a4)
	c.sw	s0,84(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l2302613E:
	c.li	a0,00000000
	c.jr	ra

;; tc_cmac_setup: 23026142
;;   Called from:
;;     23020A96 (in bt_smp_aes_cmac)
tc_cmac_setup proc
	c.li	a5,00000000
	c.beqz	a0,00000000230261A8

l23026146:
	c.beqz	a1,00000000230261A8

l23026148:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s1,a2
	c.mv	s2,a1
	addi	a2,zero,+00000058
	c.li	a1,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.jal	0000000023026346
	c.mv	a1,s2
	c.sw	s0,72(s1)
	c.mv	a0,s1
	jal	ra,000000002302A84A
	c.mv	a0,s0
	c.li	a2,00000010
	c.li	a1,00000000
	c.jal	0000000023026346
	c.lw	s0,72(a2)
	c.mv	a1,s0
	c.mv	a0,s0
	jal	ra,000000002302A924
	addi	s1,s0,+00000010
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,00000000230260C6
	c.mv	a1,s1
	addi	a0,s0,+00000020
	jal	ra,00000000230260C6
	c.mv	a0,s0
	jal	ra,000000002302610E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a5,00000001
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l230261A8:
	c.mv	a0,a5
	c.jr	ra

;; tc_cmac_update: 230261AC
;;   Called from:
;;     23020AA2 (in bt_smp_aes_cmac)
tc_cmac_update proc
	beq	a0,zero,000000002302629A

l230261B0:
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s1,a2
	c.bnez	a2,00000000230261D4

l230261C2:
	c.li	a0,00000001

l230261C4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l230261D4:
	c.mv	s0,a0
	c.mv	s2,a1
	c.li	a0,00000000
	c.beqz	a1,00000000230261C4

l230261DC:
	c.lw	s0,80(a5)
	c.lw	s0,84(a4)
	or	a3,a5,a4
	c.beqz	a3,00000000230261C4

l230261E6:
	addi	a3,a5,-00000001
	sltu	a5,a3,a5
	c.addi	a4,FFFFFFFF
	lw	s4,s0,+00000044
	c.add	a5,a4
	c.sw	s0,80(a3)
	c.sw	s0,84(a5)
	beq	s4,zero,0000000023026254

l230261FE:
	c.li	s3,00000010
	addi	a0,s4,+00000030
	sub	s3,s3,s4
	c.add	a0,s0
	bgeu	a2,s3,000000002302621E

l2302620E:
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,s1
	c.jal	0000000023026322
	c.lw	s0,68(a5)
	c.add	s1,a5

l2302621A:
	c.sw	s0,68(s1)
	c.j	00000000230261C2

l2302621E:
	c.mv	a3,s3
	c.mv	a2,a1
	c.mv	a1,s3
	c.jal	0000000023026322
	c.addi	s1,FFFFFFF0
	c.add	s1,s4
	c.add	s2,s3
	sw	zero,s0,+00000044
	c.mv	a5,s0
	addi	a3,s0,+00000010

l23026236:
	lbu	a4,a5,+00000000
	lbu	a2,a5,+00000030
	c.addi	a5,00000001
	c.xor	a4,a2
	sb	a4,a5,+00000FFF
	bne	a3,a5,0000000023026236

l2302624A:
	c.lw	s0,72(a2)
	c.mv	a1,s0
	c.mv	a0,s0
	jal	ra,000000002302A924

l23026254:
	c.add	s2,s1
	c.li	s3,00000010

l23026258:
	sub	a2,s2,s1
	bltu	s3,s1,000000002302626E

l23026260:
	c.beqz	s1,00000000230261C2

l23026262:
	c.mv	a3,s1
	c.mv	a1,s1
	addi	a0,s0,+00000030
	c.jal	0000000023026322
	c.j	000000002302621A

l2302626E:
	c.li	a5,00000000

l23026270:
	add	a3,s0,a5
	add	a4,a2,a5
	lbu	a4,a4,+00000000
	lbu	a1,a3,+00000000
	c.addi	a5,00000001
	c.xor	a4,a1
	sb	a4,a3,+00000000
	bne	a5,s3,0000000023026270

l2302628C:
	c.lw	s0,72(a2)
	c.mv	a1,s0
	c.mv	a0,s0
	jal	ra,000000002302A924
	c.addi	s1,FFFFFFF0
	c.j	0000000023026258

l2302629A:
	c.li	a0,00000000
	c.jr	ra

;; tc_cmac_final: 2302629E
;;   Called from:
;;     23020AAC (in bt_smp_aes_cmac)
tc_cmac_final proc
	c.li	a5,00000000
	c.beqz	a0,000000002302631E

l230262A2:
	c.beqz	a1,000000002302631E

l230262A4:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.lw	a1,68(a5)
	c.li	a2,00000010
	c.mv	s0,a1
	c.mv	s1,a0
	bne	a5,a2,0000000023026300

l230262B8:
	addi	a2,a1,+00000010

l230262BC:
	c.mv	a5,s0
	c.li	a3,00000000
	c.li	a1,00000010

l230262C2:
	lbu	a4,a5,+00000000
	lbu	a0,a5,+00000030
	c.addi	a5,00000001
	c.xor	a4,a0
	add	a0,a2,a3
	lbu	a0,a0,+00000000
	c.addi	a3,00000001
	c.xor	a4,a0
	sb	a4,a5,+00000FFF
	bne	a3,a1,00000000230262C2

l230262E2:
	c.lw	s0,72(a2)
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002302A924
	c.mv	a0,s0
	jal	ra,00000000230260F4
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a5,00000001
	c.lwsp	tp,00000024
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23026300:
	addi	a0,a5,+00000030
	c.sub	a2,a5
	c.li	a1,00000000
	c.add	a0,s0
	c.jal	0000000023026346
	c.lw	s0,68(a5)
	addi	a4,zero,-00000080
	addi	a2,s0,+00000020
	c.add	a5,s0
	sb	a4,a5,+00000030
	c.j	00000000230262BC

l2302631E:
	c.mv	a0,a5
	c.jr	ra

;; _copy: 23026322
;;   Called from:
;;     23026214 (in tc_cmac_update)
;;     23026224 (in tc_cmac_update)
;;     2302626A (in tc_cmac_update)
;;     2302A76C (in shift_rows)
;;     2302A94E (in tc_aes_encrypt)
;;     2302A9B4 (in tc_aes_encrypt)
;;     2302A9F0 (in tc_aes_encrypt)
_copy proc
	bltu	a1,a3,0000000023026340

l23026326:
	c.mv	a5,a2
	c.addi	sp,FFFFFFE0
	c.mv	a2,a3
	c.mv	a1,a5
	c.swsp	ra,0000008C
	c.swsp	a3,00000084
	jal	ra,000000002306CF80
	c.lwsp	a2,000000A4
	c.lwsp	t3,00000020
	c.mv	a0,a3
	c.addi16sp	00000020
	c.jr	ra

l23026340:
	c.li	a3,00000000
	c.mv	a0,a3
	c.jr	ra

;; _set: 23026346
;;   Called from:
;;     23026100 (in tc_cmac_erase)
;;     2302611C (in tc_cmac_init)
;;     23026126 (in tc_cmac_init)
;;     2302615E (in tc_cmac_setup)
;;     23026170 (in tc_cmac_setup)
;;     2302630A (in tc_cmac_final)
;;     2302A9FA (in tc_aes_encrypt)
_set proc
	jal	zero,000000002306D1BC

;; _double_byte: 2302634A
;;   Called from:
;;     2302A78A (in mult_row_column)
;;     2302A794 (in mult_row_column)
;;     2302A7B8 (in mult_row_column)
;;     2302A7C2 (in mult_row_column)
;;     2302A7EC (in mult_row_column)
;;     2302A7FA (in mult_row_column)
;;     2302A814 (in mult_row_column)
;;     2302A832 (in mult_row_column)
_double_byte proc
	srli	a5,a0,00000007
	c.li	a4,0000001B
	add	a5,a5,a4
	c.slli	a0,01
	c.xor	a0,a5
	andi	a0,a0,+000000FF
	c.jr	ra

;; bl_find_valid_queued_entry: 2302635E
;;   Called from:
;;     23026462 (in bl_onchiphci_rx_packet_handler)
bl_find_valid_queued_entry proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.li	a2,00000008
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	lui	s2,0004201A
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.li	s1,00000000
	jal	ra,000000002306D1BC
	addi	s2,s2,+00000480
	c.li	s3,00000009

l23026380:
	slli	s0,s1,00000003
	c.add	s0,s2
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	jal	ra,000000002306CEF8
	c.beqz	a0,000000002302639A

l23026392:
	c.addi	s1,00000001
	bne	s1,s3,0000000023026380

l23026398:
	c.li	s0,00000000

l2302639A:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; bl_onchiphci_rx_packet_handler: 230263AA
;;   Called from:
;;     2302662E (in bl_handle_queued_msg)
bl_onchiphci_rx_packet_handler proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s5,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	s4,a2
	c.mv	s2,a3
	c.mv	s3,a4
	c.bnez	a4,00000000230263EE

l230263C6:
	lui	s5,0004200E
	c.li	s3,00000001
	addi	s5,s5,+000001A4
	beq	a0,s3,00000000230264CA

l230263D4:
	addi	a5,a0,-00000002
	andi	a5,a5,+000000FF
	bltu	s3,a5,0000000023026414

l230263E0:
	c.li	a0,FFFFFFFF
	jal	ra,000000002301F38E

l230263E6:
	c.mv	s3,a0
	c.beqz	a0,0000000023026436

l230263EA:
	sw	zero,s5,+00000000

l230263EE:
	lw	a5,s3,+00000008
	lhu	a0,s3,+0000000C
	c.addi	s0,FFFFFFFF
	andi	s0,s0,+000000FF
	c.add	a0,a5
	c.li	a5,00000004
	bltu	a5,s0,00000000230265BE

l23026404:
	lui	a5,00023076
	addi	a5,a5,+000007B8
	c.slli	s0,02
	c.add	s0,a5
	c.lw	s0,0(a5)
	c.jr	a5

l23026414:
	c.li	a5,00000004
	beq	a0,a5,0000000023026424

l2302641A:
	c.li	a0,00000001

l2302641C:
	c.li	a1,00000000
	jal	ra,000000002301F35C
	c.j	00000000230263E6

l23026424:
	lbu	a4,a2,+00000000
	c.li	a5,00000002
	bne	a4,a5,000000002302641A

l2302642E:
	jal	ra,000000002301F338
	blt	s3,a0,000000002302641A

l23026436:
	lw	a5,s5,+00000000
	c.addi	a5,00000001
	sw	a5,s5,+00000000
	andi	a5,a5,+000000FF
	c.bnez	a5,0000000023026452

l23026446:
	lui	a0,00023076
	addi	a0,a0,+000007CC
	jal	ra,0000000023003A8A

l23026452:
	c.li	a5,00000004
	bne	s0,a5,0000000023026462

l23026458:
	lbu	a4,s4,+00000000
	c.li	a5,00000002
	beq	a4,a5,00000000230265BE

l23026462:
	jal	ra,000000002302635E
	c.mv	s3,a0
	beq	a0,zero,00000000230265BE

l2302646C:
	sb	s1,a0,+00000001
	c.srli	s1,00000008
	sb	s0,a0,+00000000
	sb	s1,a0,+00000002
	beq	s2,zero,00000000230264A8

l2302647E:
	c.mv	a0,s2
	jal	ra,0000000023025428
	srli	a4,a0,00000008
	sb	a4,s3,+00000004
	srli	a5,a0,00000018
	srli	a4,a0,00000010
	sb	a0,s3,+00000003
	sb	a4,s3,+00000005
	sb	a5,s3,+00000006
	c.mv	a2,s2
	c.mv	a1,s4
	jal	ra,000000002306CF80

l230264A8:
	sb	s2,s3,+00000007
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.mv	a1,s3
	c.lwsp	a2,00000068
	lui	a0,0004201A
	addi	a0,a0,+000004C8
	c.addi16sp	00000020
	jal	zero,00000000230250DE

l230264CA:
	c.li	a0,00000003
	c.j	000000002302641C
230264CE                                           B9 47               .G
230264D0 23 00 F5 00 93 07 39 00 A3 00 F5 00 A3 01 95 00 #.....9.........
230264E0 85 47 A1 80 23 01 F5 00 23 02 95 00 4A 86 D2 85 .G..#...#...J...
230264F0 15 05 93 0A 59 00 EF 60 B4 28 05 44 D6 85 13 85 ....Y..`.(.D....
23026500 89 00 EF F0 AF B6 4E 85 4D C0 62 44 F2 40 D2 44 ......N.M.bD.@.D
23026510 42 49 B2 49 22 4A 92 4A 05 61 6F 80 8F 86 BD 47 BI.I"J.J.ao....G
23026520 23 00 F5 00 91 47 A3 00 F5 00 83 47 0A 00 23 02 #....G.....G..#.
23026530 95 00 A1 80 23 01 F5 00 85 47 A3 01 F5 00 A3 02 ....#....G......
23026540 95 00 05 44 99 4A 5D BF 85 47 23 8A F9 00 93 07 ...D.J]..G#.....
23026550 E0 03 23 00 F5 00 A3 00 25 01 4A 86 D2 85 09 05 ..#.....%.J.....
23026560 93 0A 29 00 EF 60 D4 21 01 44 49 BF 85 47 23 8A ..)..`.!.DI..G#.
23026570 F9 00 13 84 D4 FE 23 00 95 00 A3 00 25 01 4A 86 ......#.....%.J.
23026580 D2 85 09 05 13 34 14 00 93 0A 29 00 EF 60 54 1F .....4....)..`T.
23026590 B5 B7 8D 47 AA 85 23 8A F9 00 52 85 EF 10 04 04 ...G..#...R.....
230265A0 93 1A 05 01 93 DA 0A 01 C1 B7 62 44 F2 40 D2 44 ..........bD.@.D
230265B0 42 49 B2 49 22 4A 92 4A 05 61 6F 50 3F E6       BI.I"J.J.aoP?. 

l230265BE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; bl_handle_queued_msg: 230265D0
;;   Called from:
;;     230257EE (in net_buf_unref)
bl_handle_queued_msg proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004201A
	addi	a0,s0,+000004C8
	c.swsp	ra,0000008C
	jal	ra,0000000023025164
	c.bnez	a0,0000000023026664

l230265E4:
	c.li	a1,00000000
	c.li	a0,00000003
	jal	ra,000000002301F35C
	c.swsp	a0,00000084
	c.beqz	a0,0000000023026664

l230265F0:
	c.li	a1,00000000
	addi	a0,s0,+000004C8
	jal	ra,000000002302513A
	lbu	a2,a0,+00000004
	lbu	a5,a0,+00000003
	c.mv	s0,a0
	c.slli	a2,08
	c.or	a2,a5
	lbu	a5,a0,+00000005
	lbu	a1,s0,+00000002
	c.lwsp	a2,000000C4
	c.slli	a5,10
	c.or	a5,a2
	lbu	a2,a0,+00000006
	lbu	a0,a0,+00000001
	c.slli	a1,08
	lbu	a3,s0,+00000007
	c.or	a1,a0
	lbu	a0,s0,+00000000
	c.slli	a2,18
	c.or	a2,a5
	jal	ra,00000000230263AA
	lbu	a5,s0,+00000004
	lbu	a0,s0,+00000003
	c.slli	a5,08
	c.or	a5,a0
	lbu	a0,s0,+00000005
	c.slli	a0,10
	c.or	a5,a0
	lbu	a0,s0,+00000006
	c.slli	a0,18
	c.or	a0,a5
	c.beqz	a0,0000000023026654

l23026650:
	jal	ra,000000002302542C

l23026654:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.li	a2,00000008
	c.li	a1,00000000
	c.addi16sp	00000020
	jal	zero,000000002306D1BC

l23026664:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; bl_onchiphci_interface_deinit: 2302666C
;;   Called from:
;;     2301E6FC (in bt_disable_action)
bl_onchiphci_interface_deinit proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	s0,0004201A

l23026676:
	c.li	a1,00000000
	addi	a0,s0,+000004C8
	jal	ra,000000002302513A
	c.beqz	a0,00000000230266A6

l23026682:
	lbu	a5,a0,+00000004
	lbu	a4,a0,+00000003
	c.slli	a5,08
	c.or	a4,a5
	lbu	a5,a0,+00000005
	lbu	a0,a0,+00000006
	c.slli	a5,10
	c.or	a5,a4
	c.slli	a0,18
	c.or	a0,a5
	c.beqz	a0,0000000023026676

l230266A0:
	jal	ra,000000002302542C
	c.j	0000000023026676

l230266A6:
	addi	a0,s0,+000004C8
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230250E6

;; bl_onchiphci_interface_init: 230266B4
;;   Called from:
;;     2301E9BE (in init_work)
bl_onchiphci_interface_init proc
	lui	a0,0004201A
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+00000048
	c.li	a1,00000000
	addi	a0,a0,+00000480
	c.swsp	ra,00000084
	jal	ra,000000002306D1BC
	lui	a0,0004201A
	addi	a0,a0,+000004C8
	c.li	a1,00000009
	jal	ra,0000000023025092
	c.lwsp	a2,00000020
	lui	a0,00023026
	addi	a0,a0,+000003AA
	c.addi	sp,00000010
	jal	zero,000000002306748E

;; bl_onchiphci_send_2_controller: 230266E8
;;   Called from:
;;     2301C3B0 (in hci_driver_send)
bl_onchiphci_send_2_controller proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	lbu	s2,a0,+00000014
	c.mv	s0,a0
	beq	s2,zero,0000000023026714

l230266FE:
	c.li	a5,00000002
	beq	s2,a5,0000000023026782

l23026704:
	c.li	a0,FFFFFFEA

l23026706:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23026714:
	lhu	a5,a0,+0000000C
	c.li	a4,00000002
	bgeu	a4,a5,0000000023026704

l2302671E:
	lw	s3,a0,+00000008
	lbu	a4,s3,+00000002
	bltu	a5,a4,0000000023026704

l2302672A:
	lbu	s1,s3,+00000001
	lbu	a5,s3,+00000000
	c.li	a1,00000003
	c.slli	s1,08
	c.addi	a0,00000008
	c.or	s1,a5
	jal	ra,00000000230258F6
	c.lui	a5,FFFFE000
	c.addi	a5,FFFFFFED
	c.add	a5,s1
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	a4,0000001F
	c.lw	s0,8(a3)
	c.li	a1,00000000
	bltu	a4,a5,000000002302676A

l23026752:
	c.li	a4,00000001
	sll	a5,a4,a5
	lui	a4,000A000E
	addi	a4,a4,+000001CD
	c.and	a5,a4
	c.mv	a1,s2
	c.beqz	a5,000000002302676A

l23026766:
	lbu	a1,a3,+00000000

l2302676A:
	lbu	a5,s3,+00000002
	sh	s1,sp,+00000004
	c.swsp	a3,00000004
	sb	a5,sp,+0000000C

l23026778:
	c.addi4spn	a2,00000004
	c.mv	a0,s2
	jal	ra,00000000230674A4
	c.j	0000000023026706

l23026782:
	lhu	a4,a0,+0000000C
	c.li	a5,00000003
	bgeu	a5,a4,0000000023026704

l2302678C:
	c.lw	a0,8(a5)
	c.li	a1,00000004
	c.addi	a0,00000008
	lbu	s2,a5,+00000003
	lbu	a4,a5,+00000002
	lbu	s1,a5,+00000001
	c.slli	s2,08
	or	s2,s2,a4
	lbu	a4,a5,+00000000
	c.slli	s1,08
	c.or	s1,a4
	jal	ra,00000000230258F6
	lhu	a5,s0,+0000000C
	bltu	a5,s2,0000000023026704

l230267B8:
	c.lw	s0,8(a5)
	slli	a1,s1,00000014
	c.srli	a1,00000014
	c.srli	s1,0000000C
	sh	s2,sp,+00000008
	sh	a1,sp,+00000004
	sb	s1,sp,+00000006
	c.swsp	a5,00000084
	c.li	s2,00000001
	c.j	0000000023026778

;; atomic_test_bit: 230267D4
;;   Called from:
;;     23026A7A (in notify_le_param_updated)
;;     23027726 (in bt_conn_create_le)
;;     2302773E (in bt_conn_create_le)
;;     2302774A (in bt_conn_create_le)
;;     2302790C (in send_conn_le_param_update)
;;     23027A62 (in bt_conn_le_param_update)
;;     23027D82 (in bt_conn_init)
;;     23027DA6 (in bt_conn_init)
atomic_test_bit proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,00000000230254AC
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	sra	a0,a0,a1
	c.andi	a0,00000001
	c.addi16sp	00000020
	c.jr	ra

;; tx_free: 230267EC
;;   Called from:
;;     230268D6 (in send_frag)
;;     230269F2 (in conn_cleanup)
;;     23026A4A (in tx_notify)
;;     23026EF6 (in bt_conn_send_cb)
tx_free proc
	c.mv	a1,a0
	sw	zero,a0,+00000004
	sw	zero,a0,+00000008
	sw	zero,a0,+0000000C
	lui	a0,0004200E
	addi	a0,a0,-000002DC
	jal	zero,00000000230250DE

;; send_frag: 23026806
;;   Called from:
;;     23027BCE (in bt_conn_process_tx)
;;     23027C0A (in bt_conn_process_tx)
send_frag proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s6,00000000
	lui	s5,0004200D
	c.mv	s0,a0
	c.lw	a1,20(s1)
	c.mv	s3,a1
	addi	a0,s5,+000003DC
	c.li	a1,FFFFFFFF
	c.mv	s2,a2
	c.mv	s4,a3
	jal	ra,00000000230251B2
	lbu	a4,s0,+0000000D
	c.li	a5,00000004
	bne	a4,a5,00000000230268CA

l2302683A:
	c.li	a1,00000004
	addi	a0,s3,+00000008
	jal	ra,00000000230258C4
	slli	a2,s2,0000000C
	lhu	s2,s0,+00000000
	or	a2,a2,s2
	c.slli	a2,10
	c.srli	a2,00000010
	sb	a2,a0,+00000000
	c.srli	a2,00000008
	sb	a2,a0,+00000001
	lhu	a5,s3,+0000000C
	c.addi	a5,FFFFFFFC
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,a0,+00000002
	c.srli	a5,00000008
	sb	a5,a0,+00000003
	jal	ra,0000000023025298
	c.beqz	s1,0000000023026902

l23026878:
	sw	zero,s1,+00000000
	c.lw	s0,24(a5)
	c.bnez	a5,00000000230268FC

l23026880:
	c.sw	s0,24(s1)
	c.sw	s0,20(s1)

l23026884:
	jal	ra,00000000230252A8
	c.li	a5,00000002
	sb	a5,s3,+00000014
	c.mv	a0,s3
	jal	ra,000000002301D848
	c.mv	a1,a0
	c.beqz	a0,000000002302693A

l23026898:
	lui	a0,00023075
	addi	a0,a0,-000005FC
	jal	ra,0000000023003AC6
	jal	ra,0000000023025298
	c.beqz	s1,000000002302692E

l230268AA:
	c.lw	s0,20(a5)
	c.li	a4,00000000

l230268AE:
	c.beqz	a5,00000000230268C6

l230268B0:
	bne	s1,a5,0000000023026928

l230268B4:
	c.lw	s1,0(a5)
	c.bnez	a4,000000002302691C

l230268B8:
	c.lw	s0,24(a4)
	c.sw	s0,20(a5)
	bne	s1,a4,00000000230268C2

l230268C0:
	c.sw	s0,24(a5)

l230268C2:
	sw	zero,s1,+00000000

l230268C6:
	jal	ra,00000000230252A8

l230268CA:
	addi	a0,s5,+000003DC
	jal	ra,00000000230251D2
	c.beqz	s1,00000000230268DA

l230268D4:
	c.mv	a0,s1
	jal	ra,00000000230267EC

l230268DA:
	beq	s4,zero,00000000230268E6

l230268DE:
	c.mv	a0,s3
	jal	ra,000000002302574E
	c.li	s4,00000000

l230268E6:
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

l230268FC:
	c.sw	a5,0(s1)
	c.sw	s0,24(s1)
	c.j	0000000023026884

l23026902:
	c.lw	s0,24(a5)
	c.beqz	a5,0000000023026914

l23026906:
	addi	s6,a5,+0000000C
	c.lw	a5,12(a5)

l2302690C:
	c.addi	a5,00000001
	sw	a5,s6,+00000000
	c.j	0000000023026884

l23026914:
	addi	s6,s0,+0000001C
	c.lw	s0,28(a5)
	c.j	000000002302690C

l2302691C:
	c.sw	a4,0(a5)
	c.lw	s0,24(a5)
	bne	s1,a5,00000000230268C2

l23026924:
	c.sw	s0,24(a4)
	c.j	00000000230268C2

l23026928:
	c.mv	a4,a5
	c.lw	a5,0(a5)
	c.j	00000000230268AE

l2302692E:
	lw	a5,s6,+00000000
	c.addi	a5,FFFFFFFF
	sw	a5,s6,+00000000
	c.j	00000000230268C6

l2302693A:
	c.li	s4,00000001
	c.j	00000000230268E6

;; notify_connected: 2302693E
notify_connected proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200E
	c.swsp	s0,00000004
	lw	s0,a5,+000001A8
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0

l23026950:
	lbu	a1,s1,+0000000C
	c.bnez	s0,0000000023026966

l23026956:
	c.bnez	a1,0000000023026972

l23026958:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002302A1BE

l23026966:
	c.lw	s0,0(a5)
	c.beqz	a5,000000002302696E

l2302696A:
	c.mv	a0,s1
	c.jalr	a5

l2302696E:
	c.lw	s0,24(s0)
	c.j	0000000023026950

l23026972:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bt_conn_reset_rx_state: 2302697C
;;   Called from:
;;     230269C0 (in conn_cleanup)
;;     23026D76 (in bt_conn_recv)
;;     23026DB0 (in bt_conn_recv)
bt_conn_reset_rx_state proc
	lhu	a5,a0,+0000000E
	c.beqz	a5,00000000230269A0

l23026982:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,16(a0)
	jal	ra,000000002302574E
	sw	zero,s0,+00000010
	sh	zero,s0,+0000000E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230269A0:
	c.jr	ra

;; conn_cleanup: 230269A2
;;   Called from:
;;     23026FB2 (in bt_conn_prepare_events)
;;     23026FDC (in bt_conn_prepare_events)
;;     23027B98 (in bt_conn_process_tx)
conn_cleanup proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	addi	s2,a0,+00000034

l230269B2:
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,00000000230256E4
	c.mv	s1,a0
	c.bnez	a0,00000000230269EE

l230269BE:
	c.mv	a0,s0
	jal	ra,000000002302697C
	addi	s1,s0,+0000004C
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023025FC2
	c.mv	a0,s2
	jal	ra,00000000230250E6
	c.lw	s0,92(a5)
	sw	zero,s0,+00000034
	c.beqz	a5,00000000230269FE

l230269DE:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023025ECE

l230269EE:
	c.lw	s1,20(a0)
	c.beqz	a0,00000000230269F6

l230269F2:
	jal	ra,00000000230267EC

l230269F6:
	c.mv	a0,s1
	jal	ra,000000002302574E
	c.j	00000000230269B2

l230269FE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; tx_notify: 23026A0A
;;   Called from:
;;     23026A5A (in tx_complete_work)
;;     23026D40 (in bt_conn_recv)
tx_notify proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s1,a0

l23026A16:
	jal	ra,0000000023025298
	c.lw	s1,32(s0)
	c.mv	a4,a0
	c.bnez	s0,0000000023026A2E

l23026A20:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,00000000230252A8

l23026A2E:
	c.lw	s0,0(a5)
	c.lw	s1,36(a3)
	c.sw	s1,32(a5)
	bne	s0,a3,0000000023026A3A

l23026A38:
	c.sw	s1,36(a5)

l23026A3A:
	c.mv	a0,a4
	jal	ra,00000000230252A8
	c.lw	s0,8(a1)
	c.mv	a0,s0
	lw	s2,s0,+00000004
	c.swsp	a1,00000084
	jal	ra,00000000230267EC
	c.lwsp	a2,00000064
	c.mv	a0,s1
	c.jalr	s2
	c.j	0000000023026A16

;; tx_complete_work: 23026A56
tx_complete_work proc
	addi	a0,a0,-00000028
	jal	zero,0000000023026A0A

;; bt_conn_get_pkts: 23026A5E
;;   Called from:
;;     2301C73A (in hci_num_completed_packets)
;;     2301C798 (in hci_num_completed_packets)
bt_conn_get_pkts proc
	lui	a0,0004200D
	addi	a0,a0,+000003DC
	c.jr	ra

;; notify_le_param_updated: 23026A68
;;   Called from:
;;     2301C64C (in le_conn_update_complete)
notify_le_param_updated proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	addi	s1,a0,+00000004
	c.swsp	s0,00000004
	c.li	a1,00000009
	c.mv	s0,a0
	c.mv	a0,s1
	c.swsp	ra,00000084
	jal	ra,00000000230267D4
	c.beqz	a0,0000000023026AAA

l23026A80:
	lhu	a5,s0,+00000086
	lhu	a4,s0,+00000088
	bltu	a5,a4,0000000023026AAA

l23026A8C:
	lhu	a4,s0,+0000008A
	bltu	a4,a5,0000000023026AAA

l23026A94:
	lw	a4,s0,+0000008C
	lw	a5,s0,+00000090
	bne	a4,a5,0000000023026AAA

l23026AA0:
	addi	a1,zero,-00000201
	c.mv	a0,s1
	jal	ra,0000000023025522

l23026AAA:
	lui	a5,0004200E
	lw	s1,a5,+000001A8

l23026AB2:
	c.bnez	s1,0000000023026ABE

l23026AB4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23026ABE:
	c.lw	s1,12(a5)
	c.beqz	a5,0000000023026AD2

l23026AC2:
	lhu	a3,s0,+0000008E
	lhu	a2,s0,+0000008C
	lhu	a1,s0,+00000086
	c.mv	a0,s0
	c.jalr	a5

l23026AD2:
	c.lw	s1,24(s1)
	c.j	0000000023026AB2

;; le_param_req: 23026AD6
;;   Called from:
;;     2301DF20 (in le_conn_param_req)
;;     2302088C (in l2cap_recv)
le_param_req proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	c.mv	s3,a0
	c.mv	a0,a1
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s2,a1
	jal	ra,000000002301D348
	c.bnez	a0,0000000023026B00

l23026AEE:
	c.li	s1,00000000

l23026AF0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23026B00:
	lui	a5,0004200E
	lw	s0,a5,+000001A8
	c.mv	s1,a0

l23026B0A:
	c.beqz	s0,0000000023026AF0

l23026B0C:
	c.lw	s0,8(a5)
	c.bnez	a5,0000000023026B14

l23026B10:
	c.lw	s0,24(s0)
	c.j	0000000023026B0A

l23026B14:
	c.mv	a1,s2
	c.mv	a0,s3
	c.jalr	a5
	c.beqz	a0,0000000023026AEE

l23026B1C:
	c.mv	a0,s2
	jal	ra,000000002301D348
	c.bnez	a0,0000000023026B10

l23026B24:
	c.j	0000000023026AEE

;; le_check_valid_conn: 23026B26
;;   Called from:
;;     2301E714 (in bt_disable)
le_check_valid_conn proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042012
	addi	s0,s0,+00000278
	addi	a0,s0,+00000048
	c.swsp	ra,00000084
	jal	ra,00000000230254AC
	c.li	a5,00000001
	c.bnez	a0,0000000023026B4C

l23026B40:
	addi	a0,s0,+000000E8
	jal	ra,00000000230254AC
	sltu	a5,zero,a0

l23026B4C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; bt_conn_identity_resolved: 23026B56
;;   Called from:
;;     23022A40 (in smp_ident_addr_info)
bt_conn_identity_resolved proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	lbu	a5,a0,+00000003
	c.mv	s0,a0
	addi	s2,a0,+0000007E
	c.beqz	a5,0000000023026B72

l23026B6E:
	addi	s2,a0,+00000077

l23026B72:
	lui	a5,0004200E
	lw	s1,a5,+000001A8
	addi	s3,s0,+00000070

l23026B7E:
	c.bnez	s1,0000000023026B8E

l23026B80:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23026B8E:
	c.lw	s1,16(a5)
	c.beqz	a5,0000000023026B9A

l23026B92:
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s0
	c.jalr	a5

l23026B9A:
	c.lw	s1,24(s1)
	c.j	0000000023026B7E

;; bt_conn_le_start_encryption: 23026B9E
;;   Called from:
;;     23021EE0 (in smp_security_request)
;;     23022E8E (in smp_pairing_random)
;;     2302366C (in bt_smp_start_security)
bt_conn_le_start_encryption proc
	c.addi	sp,FFFFFFE0
	c.swsp	s6,00000000
	c.mv	s6,a0
	c.lui	a0,00002000
	c.swsp	s5,00000080
	c.addi	a0,00000019
	c.mv	s5,a1
	c.li	a1,0000001C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s4,a2
	c.mv	s3,a3
	c.mv	s1,a4
	jal	ra,000000002301CCB8
	c.beqz	a0,0000000023026C34

l23026BC6:
	c.li	a1,0000001C
	c.mv	s2,a0
	c.addi	a0,00000008
	jal	ra,000000002302586C
	lhu	a5,s6,+00000000
	c.mv	s0,a0
	c.li	a2,00000008
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	c.mv	a1,s5
	c.addi	a0,00000002
	jal	ra,000000002306CF80
	c.li	a2,00000002
	c.mv	a1,s4
	addi	a0,s0,+0000000A
	jal	ra,000000002306CF80
	c.addi	s0,0000000C
	c.mv	a2,s1
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,000000002306CF80
	c.li	a5,0000000F
	bltu	a5,s1,0000000023026C16

l23026C08:
	c.li	a2,00000010
	c.sub	a2,s1
	c.li	a1,00000000
	add	a0,s0,s1
	jal	ra,000000002306D1BC

l23026C16:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.mv	a1,s2
	c.lwsp	a6,00000048
	c.lui	a0,00002000
	c.li	a2,00000000
	c.addi	a0,00000019
	c.addi16sp	00000020
	jal	zero,000000002301CD52

l23026C34:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	addi	a0,zero,-00000037
	c.addi16sp	00000020
	c.jr	ra

;; bt_conn_security_changed: 23026C4C
;;   Called from:
;;     2301C882 (in hci_encrypt_key_refresh_complete)
;;     2301C92A (in hci_encrypt_change)
;;     23020A62 (in smp_pairing_complete)
;;     23023212 (in bt_smp_request_ltk)
bt_conn_security_changed proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200E
	c.swsp	s1,00000080
	lw	s1,a5,+000001A8
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s2,a1

l23026C62:
	c.bnez	s1,0000000023026C88

l23026C64:
	bne	s2,zero,0000000023026C9A

l23026C68:
	lbu	a4,s0,+00000009
	c.li	a5,00000001
	bgeu	a5,a4,0000000023026C9A

l23026C72:
	lbu	a0,s0,+00000008
	addi	a1,s0,+00000070
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023023CC0

l23026C88:
	c.lw	s1,20(a5)
	c.beqz	a5,0000000023026C96

l23026C8C:
	lbu	a1,s0,+00000009
	c.mv	a2,s2
	c.mv	a0,s0
	c.jalr	a5

l23026C96:
	c.lw	s1,24(s1)
	c.j	0000000023026C62

l23026C9A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; bt_conn_set_security: 23026CA6
;;   Called from:
;;     23020666 (in l2cap_recv)
;;     23023F64 (in ble_security)
;;     2302A22A (in bt_gatt_connected)
;;     2302B222 (in att_error_rsp)
bt_conn_set_security proc
	lbu	a4,a0,+0000000D
	c.li	a5,00000004
	bne	a4,a5,0000000023026D14

l23026CB0:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lbu	a5,a0,+00000009
	c.mv	s0,a0
	c.li	a0,00000000
	bgeu	a5,a1,0000000023026CFE

l23026CC4:
	lbu	a5,s0,+0000000A
	bgeu	a5,a1,0000000023026CFE

l23026CCC:
	slli	a5,a1,00000018
	c.srai	a5,00000018
	c.mv	s1,a1
	addi	a0,s0,+00000004
	bge	a5,zero,0000000023026D08

l23026CDC:
	c.lui	a1,00001000
	addi	a1,a1,-00000800
	jal	ra,00000000230254FA

l23026CE6:
	andi	a1,s1,+0000007F
	sb	a1,s0,+0000000A
	c.mv	a0,s0
	jal	ra,00000000230235D6
	c.beqz	a0,0000000023026CFE

l23026CF6:
	lbu	a5,s0,+00000009
	sb	a5,s0,+0000000A

l23026CFE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23026D08:
	c.lui	a1,FFFFF000
	addi	a1,a1,+000007FF
	jal	ra,0000000023025522
	c.j	0000000023026CE6

l23026D14:
	addi	a0,zero,-00000039
	c.jr	ra

;; bt_conn_get_security: 23026D1A
;;   Called from:
;;     23028F30 (in bt_gatt_check_perm)
;;     23028FC2 (in update_ccc)
;;     2302A21C (in bt_gatt_connected)
bt_conn_get_security proc
	lbu	a0,a0,+00000009
	c.jr	ra

;; bt_conn_cb_register: 23026D20
;;   Called from:
;;     23024C2C (in ble_init)
;;     2302DA7A (in bl_ble_sync_start)
bt_conn_cb_register proc
	lui	a5,0004200E
	addi	a5,a5,+000001A8
	c.lw	a5,0(a4)
	c.sw	a5,0(a0)
	c.sw	a0,24(a4)
	c.jr	ra

;; bt_conn_recv: 23026D30
;;   Called from:
;;     2301E508 (in bt_recv)
bt_conn_recv proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	a2,00000084
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.mv	s0,a0
	c.mv	s1,a1
	jal	ra,0000000023026A0A
	c.lwsp	a2,00000084
	c.li	a5,00000001
	beq	a2,a5,0000000023026D9C

l23026D4C:
	c.li	a5,00000002
	bne	a2,a5,0000000023026E46

l23026D52:
	c.lw	s1,8(a4)
	lbu	s2,a4,+00000001
	lbu	a5,a4,+00000000
	c.slli	s2,08
	or	s2,s2,a5
	lhu	a5,s0,+0000000E
	c.beqz	a5,0000000023026D7A

l23026D68:
	lui	a0,00023077
	addi	a0,a0,-00000794
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	jal	ra,000000002302697C

l23026D7A:
	lhu	a5,s1,+0000000C
	sub	a5,s2,a5
	c.addi	a5,00000004
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+0000000E
	c.beqz	a5,0000000023026E1E

l23026D8E:
	c.sw	s0,16(s1)

l23026D90:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23026D9C:
	lhu	a5,s0,+0000000E
	c.bnez	a5,0000000023026DC4

l23026DA2:
	lui	a0,00023077
	addi	a0,a0,-00000774

l23026DAA:
	jal	ra,0000000023003AC6

l23026DAE:
	c.mv	a0,s0
	jal	ra,000000002302697C

l23026DB4:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002302574E

l23026DC4:
	lhu	s2,s1,+0000000C
	bgeu	a5,s2,0000000023026DD6

l23026DCC:
	lui	a0,00023077
	addi	a0,a0,-00000754
	c.j	0000000023026DAA

l23026DD6:
	c.lw	s0,16(a0)
	c.addi	a0,00000008
	jal	ra,0000000023025968
	bgeu	a0,s2,0000000023026DEC

l23026DE2:
	lui	a0,00023077
	addi	a0,a0,-0000073C
	c.j	0000000023026DAA

l23026DEC:
	c.lw	s0,16(a0)
	lhu	a2,s1,+0000000C
	c.lw	s1,8(a1)
	c.addi	a0,00000008
	jal	ra,000000002302587E
	lhu	a5,s0,+0000000E
	lhu	a4,s1,+0000000C
	c.mv	a0,s1
	c.sub	a5,a4
	sh	a5,s0,+0000000E
	jal	ra,000000002302574E
	lhu	a5,s0,+0000000E
	c.bnez	a5,0000000023026D90

l23026E14:
	c.lw	s0,16(s1)
	sh	zero,s0,+0000000E
	sw	zero,s0,+00000010

l23026E1E:
	c.lw	s1,8(a5)
	lhu	a2,s1,+0000000C
	lbu	a1,a5,+00000001
	lbu	a4,a5,+00000000
	c.slli	a1,08
	c.or	a1,a4
	addi	a5,a1,+00000004
	beq	a5,a2,0000000023026E56

l23026E38:
	lui	a0,00023077
	addi	a0,a0,-000006F0
	jal	ra,0000000023003AC6
	c.j	0000000023026DB4

l23026E46:
	lui	a0,00023077
	c.mv	a1,a2
	addi	a0,a0,-00000710
	jal	ra,0000000023003AC6
	c.j	0000000023026DAE

l23026E56:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.mv	a1,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002301FF3A

;; bt_conn_send_cb: 23026E68
;;   Called from:
;;     2301F97C (in bt_l2cap_send_cb)
bt_conn_send_cb proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	lbu	s3,a0,+0000000D
	c.li	a5,00000004
	c.mv	s0,a1
	beq	s3,a5,0000000023026E98

l23026E80:
	lui	a0,00023077
	addi	a0,a0,-000006D0
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	jal	ra,000000002302574E

l23026E92:
	addi	a0,zero,-00000039
	c.j	0000000023026ECC

l23026E98:
	c.swsp	a3,00000084
	c.swsp	a2,00000004
	c.mv	s2,a0
	c.beqz	a2,0000000023026F20

l23026EA0:
	lui	a0,0004200E
	c.li	a1,FFFFFFFF
	addi	a0,a0,-000002DC
	jal	ra,000000002302513A
	c.mv	s1,a0
	c.lwsp	s0,00000084
	c.lwsp	a2,000000A4
	c.bnez	a0,0000000023026EDA

l23026EB6:
	lui	a0,00023077
	addi	a0,a0,-000006BC
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	jal	ra,000000002302574E
	addi	a0,zero,-00000037

l23026ECC:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23026EDA:
	lbu	a5,s2,+0000000D
	beq	a5,s3,0000000023026EFC

l23026EE2:
	lui	a0,00023077
	addi	a0,a0,-0000069C
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	jal	ra,000000002302574E
	c.mv	a0,s1
	jal	ra,00000000230267EC
	c.j	0000000023026E92

l23026EFC:
	c.sw	a0,4(a2)
	c.sw	a0,8(a3)
	sw	zero,a0,+0000000C
	c.sw	s0,20(a0)

l23026F06:
	c.mv	a1,s0
	addi	a0,s2,+00000034
	jal	ra,0000000023025734
	lui	a0,0004201A
	addi	a0,a0,+00000464
	jal	ra,00000000230251D2
	c.li	a0,00000000
	c.j	0000000023026ECC

l23026F20:
	sw	zero,a1,+00000014
	c.j	0000000023026F06

;; bt_conn_prepare_events: 23026F26
;;   Called from:
;;     2301E364 (in hci_tx_thread)
bt_conn_prepare_events proc
	c.addi	sp,FFFFFFE0
	lui	a3,0004200D
	addi	a5,a3,+00000504
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	addi	a3,a3,+00000504
	c.li	a2,00000000
	c.li	a1,00000001
	c.mv	s2,a0
	sw	zero,a5,+00000008
	lui	s3,00042012
	jal	ra,0000000023025C30
	addi	a0,s3,+00000278
	addi	a0,a0,+00000048
	jal	ra,00000000230254AC
	addi	s0,s3,+00000278
	c.li	s1,00000001
	c.beqz	a0,0000000023026F8C

l23026F64:
	lbu	a5,s0,+0000000D
	c.beqz	a5,0000000023026FC6

l23026F6A:
	lbu	a4,s0,+0000000D
	c.li	a5,00000004
	c.li	s1,00000001
	bne	a4,a5,0000000023026F8C

l23026F76:
	addi	a3,s0,+00000034
	c.li	a2,00000000
	c.li	a1,00000003
	addi	a0,s2,+00000014
	jal	ra,0000000023025C30
	sb	s1,s2,+00000020
	c.li	s1,00000002

l23026F8C:
	addi	a0,s0,+000000E8
	jal	ra,00000000230254AC
	c.beqz	a0,0000000023026FB6

l23026F96:
	lbu	a5,s0,+000000AD
	c.bnez	a5,0000000023026FE4

l23026F9C:
	addi	a1,zero,-00000041
	addi	a0,s0,+000000A4
	jal	ra,0000000023025522
	andi	a0,a0,+00000040
	c.beqz	a0,0000000023026FE4

l23026FAE:
	addi	a0,s0,+000000A0
	jal	ra,00000000230269A2

l23026FB6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23026FC6:
	addi	a1,zero,-00000041
	addi	a0,s0,+00000004
	jal	ra,0000000023025522
	andi	a0,a0,+00000040
	c.beqz	a0,0000000023026F6A

l23026FD8:
	addi	a0,s3,+00000278
	jal	ra,00000000230269A2
	c.li	s1,00000001
	c.j	0000000023026F8C

l23026FE4:
	lbu	a4,s0,+000000AD
	c.li	a5,00000004
	bne	a4,a5,0000000023026FB6

l23026FEE:
	c.li	a5,00000014
	add	a5,s1,a5
	addi	a3,s0,+000000D4
	c.li	a2,00000000
	c.li	a1,00000003
	c.addi	s1,00000001
	c.add	s2,a5
	c.mv	a0,s2
	jal	ra,0000000023025C30
	c.li	a5,00000001
	sb	a5,s2,+0000000C
	c.j	0000000023026FB6

;; bt_conn_add_le: 2302700E
;;   Called from:
;;     2301E0C6 (in enh_conn_complete)
;;     2301E0D8 (in enh_conn_complete)
;;     2302780E (in bt_conn_create_le)
bt_conn_add_le proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042012
	c.swsp	s4,00000004
	c.mv	s4,a0
	addi	a0,s1,+00000278
	addi	a0,a0,+00000048
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s3,a1
	jal	ra,00000000230254AC
	addi	s1,s1,+00000278
	c.beqz	a0,0000000023027044

l23027036:
	addi	a0,s1,+000000E8
	jal	ra,00000000230254AC
	c.li	s2,00000000
	c.bnez	a0,00000000230270B6

l23027042:
	c.li	a0,00000001

l23027044:
	addi	s0,zero,+000000A0
	add	s0,a0,s0
	addi	a2,zero,+000000A0
	c.li	a1,00000000
	add	s2,s1,s0
	c.mv	a0,s2
	jal	ra,000000002306D1BC
	addi	a0,s0,+0000004C
	lui	a1,00023028
	addi	a1,a1,-000006CA
	c.add	a0,s1
	jal	ra,0000000023025EA4
	addi	a0,s0,+00000028
	lui	a1,00023027
	addi	a1,a1,-000005AA
	c.add	a0,s1
	jal	ra,0000000023025E74
	addi	a0,s0,+00000048
	c.li	a1,00000001
	c.add	a0,s1
	jal	ra,00000000230254B0
	addi	a0,s0,+00000070
	sb	s4,s2,+00000008
	c.li	a2,00000007
	c.mv	a1,s3
	c.add	a0,s1
	jal	ra,000000002306CF80
	c.li	a5,00000001
	sb	a5,s2,+00000009
	sb	a5,s2,+0000000A
	sb	a5,s2,+00000002
	lui	a5,00000280
	c.addi	a5,00000018
	sw	a5,s2,+00000088

l230270B6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; bt_conn_set_state: 230270C8
;;   Called from:
;;     2301D136 (in hci_disconn_complete)
;;     2301DCCE (in le_adv_report)
;;     2301DD12 (in le_adv_report)
;;     2301E030 (in enh_conn_complete)
;;     2301E1C2 (in enh_conn_complete)
;;     23027666 (in bt_conn_disconnect)
;;     2302767A (in bt_conn_disconnect)
;;     230276EA (in bt_conn_disconnect)
;;     230277D0 (in bt_conn_create_le)
;;     23027D92 (in bt_conn_init)
;;     23027DB6 (in bt_conn_init)
bt_conn_set_state proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lbu	s1,a0,+0000000D
	bne	s1,a1,00000000230270F0

l230270DA:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	lui	a0,00023077
	addi	a0,a0,-00000674
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

l230270F0:
	c.mv	s0,a0
	sb	a1,s0,+0000000D
	c.mv	s2,a1
	c.beqz	s1,000000002302711A

l230270FA:
	c.li	a5,00000003
	beq	s1,a5,0000000023027124

l23027100:
	lbu	a5,s0,+0000000D
	c.li	a4,00000005
	bltu	a4,a5,000000002302727C

l2302710A:
	lui	a4,00023076
	c.slli	a5,02
	addi	a4,a4,+000007EC
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5

l2302711A:
	addi	a0,a0,+00000048
	jal	ra,0000000023025460
	c.j	0000000023027100

l23027124:
	lbu	a4,a0,+00000002
	c.li	a5,00000001
	bne	a4,a5,0000000023027100

l2302712E:
	addi	a0,a0,+0000004C
	jal	ra,0000000023025F66
	c.j	0000000023027100
23027138                         03 47 24 00 91 47 63 08         .G$..Gc.
23027140 F7 10 13 05 44 03 D1 45 EF D0 BF F4 37 D5 00 42 ....D..E....7..B
23027150 81 45 13 05 45 50 EF E0 9F BA 22 85 23 20 04 04 .E..EP....".# ..
23027160 23 22 04 04 EF 80 FF D5 22 85 22 44 B2 40 92 44 #"......"."D.@.D
23027170 02 49 41 01 6F F0 AF FC 03 47 24 00 91 47 63 1B .IA.o....G$..Gc.
23027180 F7 00 13 05 84 04 22 44 B2 40 92 44 02 49 41 01 ......"D.@.D.IA.
23027190 6F E0 6F AF 93 87 C4 FF 93 F7 F7 0F 05 47 63 68 o.o..........Gch
230271A0 F7 08 37 D9 00 42 EF E0 2F 8F 5C 4C 2A 87 91 CB ..7..B../.\L*...
230271B0 FD 17 5C CC EF E0 4F 8F 13 05 C9 3D EF E0 6F 81 ..\...O....=..o.
230271C0 DD B7 44 48 99 C4 9C 40 14 4C 5C C8 63 93 D4 00 ..DH...@.L\.c...
230271D0 1C CC 3A 85 EF E0 4F 8D 89 CC EF E0 EF 8B DC 44 ..:...O........D
230271E0 5C CC 23 A6 04 00 EF E0 2F 8C 26 85 EF F0 0F E0 \.#...../.&.....
230271F0 E1 B7 22 85 EF F0 7F 81 03 47 24 00 85 47 63 16 .."......G$..Gc.
23027200 F7 00 13 05 C4 04 EF E0 1F D6 93 05 00 04 13 05 ................
23027210 44 00 EF E0 8F AE 22 44 B2 40 92 44 02 49 37 D5 D....."D.@.D.I7.
23027220 00 42 81 45 13 05 45 50 41 01 6F E0 5F AD 8D 47 .B.E..EPA.o._..G
23027230 63 96 F4 00 22 85 EF F0 8F F0 A1 B7 63 96 E4 00 c...".......c...
23027240 83 47 C4 00 9D DF FD B7 89 47 E3 8B F4 FE B2 40 .G.......G.....@
23027250 22 44 92 44 02 49 41 01 82 80 03 47 24 00 85 47 "D.D.IA....G$..G
23027260 E3 17 F7 FE 13 05 C4 04 22 44 B2 40 92 44 02 49 ........"D.@.D.I
23027270 85 65 93 85 85 BB 41 01 6F E0 BF D4             .e....A.o...   

l2302727C:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.mv	a1,s2
	c.lwsp	zero,00000048
	lui	a0,00023077
	addi	a0,a0,-00000664
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

;; bt_conn_lookup_handle: 23027294
;;   Called from:
;;     2301C588 (in le_remote_feat_complete)
;;     2301C5F6 (in le_conn_update_complete)
;;     2301C6FE (in hci_num_completed_packets)
;;     2301C830 (in hci_encrypt_key_refresh_complete)
;;     2301C8D8 (in hci_encrypt_change)
;;     2301D0EC (in hci_disconn_complete)
;;     2301DD40 (in le_ltk_request)
;;     2301DEF0 (in le_conn_param_req)
;;     2301E4DE (in bt_recv)
bt_conn_lookup_handle proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042012
	c.swsp	s0,0000000C
	addi	s0,s1,+00000278
	addi	s0,s0,+00000048
	c.swsp	s3,00000084
	c.mv	s3,a0
	c.mv	a0,s0
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	jal	ra,00000000230254AC
	addi	s1,s1,+00000278
	c.beqz	a0,00000000230272D2

l230272BA:
	lbu	a5,s1,+0000000D
	c.li	a4,00000001
	c.addi	a5,FFFFFFFC
	andi	a5,a5,+000000FF
	bltu	a4,a5,00000000230272D2

l230272CA:
	lhu	a5,s1,+00000000
	beq	a5,s3,0000000023027314

l230272D2:
	addi	s0,s1,+000000E8
	c.mv	a0,s0
	jal	ra,00000000230254AC
	c.li	s2,00000000
	c.beqz	a0,0000000023027304

l230272E0:
	lbu	a5,s1,+000000AD
	c.li	a4,00000001
	c.addi	a5,FFFFFFFC
	andi	a5,a5,+000000FF
	bltu	a4,a5,0000000023027304

l230272F0:
	lhu	a5,s1,+000000A0
	bne	a5,s3,0000000023027304

l230272F8:
	addi	s2,zero,+000000A0

l230272FC:
	c.mv	a0,s0
	c.add	s2,s1
	jal	ra,0000000023025460

l23027304:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23027314:
	c.li	s2,00000000
	c.j	00000000230272FC

;; bt_conn_addr_le_cmp: 23027318
;;   Called from:
;;     2302739A (in bt_conn_lookup_state_le.part.7)
;;     230273DC (in bt_conn_lookup_state_le.part.7)
;;     23027448 (in bt_conn_lookup_addr_le)
;;     23027474 (in bt_conn_lookup_addr_le)
;;     23027F8E (in find_ccc_cfg)
;;     23027FA6 (in find_ccc_cfg)
;;     230282C2 (in disconnected_cb)
;;     23028F8E (in update_ccc)
;;     23029FCC (in bt_gatt_subscribe)
;;     2302A0E4 (in bt_gatt_unsubscribe)
;;     2302A176 (in bt_gatt_notification)
;;     2302A24C (in bt_gatt_connected)
;;     2302A2E4 (in bt_gatt_disconnected)
bt_conn_addr_le_cmp proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a1
	c.swsp	s0,00000004
	addi	a1,a0,+00000070
	c.mv	s0,a0
	c.li	a2,00000007
	c.mv	a0,s1
	c.swsp	ra,00000084
	jal	ra,000000002306CEF8
	c.beqz	a0,0000000023027350

l23027332:
	lbu	a5,s0,+00000003
	c.li	a2,00000007
	addi	a1,s0,+0000007E
	c.beqz	a5,0000000023027342

l2302733E:
	addi	a1,s0,+00000077

l23027342:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002306CEF8

l23027350:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bt_conn_lookup_state_le.part.7: 2302735A
;;   Called from:
;;     2302749E (in bt_conn_lookup_state_le)
bt_conn_lookup_state_le.part.7 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	lui	s3,00042012
	c.swsp	s2,00000008
	c.mv	s2,a0
	addi	a0,s3,+00000278
	addi	a0,a0,+00000048
	c.swsp	s0,0000000C
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s4,a1
	jal	ra,00000000230254AC
	addi	s0,s3,+00000278
	c.beqz	a0,00000000230273A8

l23027382:
	lbu	a4,s0,+00000002
	c.li	a5,00000001
	bne	a4,a5,00000000230273A8

l2302738C:
	lui	s1,00042012
	beq	s2,zero,00000000230273A0

l23027394:
	c.mv	a1,s2
	addi	a0,s3,+00000278
	jal	ra,0000000023027318
	c.bnez	a0,00000000230273A8

l230273A0:
	lbu	a5,s0,+0000000D
	beq	a5,s4,00000000230273E6

l230273A8:
	addi	a0,s0,+000000E8
	jal	ra,00000000230254AC
	lui	s1,00042012
	c.beqz	a0,00000000230273E2

l230273B6:
	lbu	a4,s0,+000000A2
	c.li	a5,00000001
	bne	a4,a5,00000000230273E2

l230273C0:
	bne	s2,zero,00000000230273D6

l230273C4:
	lbu	a5,s0,+000000AD
	bne	a5,s4,00000000230273E2

l230273CC:
	addi	a0,s1,+00000360
	addi	a5,zero,+000000A0
	c.j	00000000230273EC

l230273D6:
	c.mv	a1,s2
	addi	a0,s0,+000000A0
	jal	ra,0000000023027318
	c.beqz	a0,00000000230273C4

l230273E2:
	c.li	s0,00000000
	c.j	00000000230273F2

l230273E6:
	addi	a0,s1,+000002C0
	c.li	a5,00000000

l230273EC:
	c.add	s0,a5
	jal	ra,0000000023025460

l230273F2:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; bt_conn_lookup_addr_le: 23027404
;;   Called from:
;;     2301D3DE (in bt_unpair)
;;     23023FD8 (in ble_select_conn)
;;     2302405A (in ble_disconnect)
;;     23027752 (in bt_conn_create_le)
;;     23028286 (in disconnected_cb)
;;     2302868A (in notify_cb)
bt_conn_lookup_addr_le proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042012
	c.swsp	s3,00000084
	addi	s3,s0,+00000278
	c.swsp	s1,00000088
	addi	s1,s3,+00000048
	c.swsp	s5,00000080
	c.mv	s5,a0
	c.mv	a0,s1
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.mv	s4,a1
	jal	ra,00000000230254AC
	addi	s2,s0,+00000278
	c.beqz	a0,000000002302744E

l23027430:
	lbu	a4,s3,+00000002
	c.li	a5,00000001
	bne	a4,a5,000000002302744E

l2302743A:
	lbu	a5,s3,+00000008
	bne	a5,s5,000000002302744E

l23027442:
	c.mv	a1,s4
	addi	a0,s0,+00000278
	jal	ra,0000000023027318
	c.beqz	a0,0000000023027494

l2302744E:
	addi	s1,s2,+000000E8
	c.mv	a0,s1
	jal	ra,00000000230254AC
	c.beqz	a0,000000002302749A

l2302745A:
	lbu	a4,s2,+000000A2
	c.li	a5,00000001
	bne	a4,a5,000000002302749A

l23027464:
	lbu	a5,s2,+000000A8
	bne	a5,s5,000000002302749A

l2302746C:
	addi	s0,s2,+000000A0
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,0000000023027318
	c.bnez	a0,000000002302749A

l2302747A:
	c.mv	a0,s1
	jal	ra,0000000023025460

l23027480:
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

l23027494:
	addi	s0,s0,+00000278
	c.j	000000002302747A

l2302749A:
	c.li	s0,00000000
	c.j	0000000023027480

;; bt_conn_lookup_state_le: 2302749E
;;   Called from:
;;     2301C97A (in find_pending_connect)
;;     2301C98A (in find_pending_connect)
;;     2301D46A (in bt_id_add)
;;     2301D5F8 (in bt_id_del)
;;     2301DA70 (in bt_le_scan_update)
;;     2301DA78 (in bt_le_scan_update)
;;     2301DBDE (in le_adv_report)
;;     230286E8 (in notify_cb)
;;     23028780 (in sc_indicate)
bt_conn_lookup_state_le proc
	jal	zero,000000002302735A

;; bt_conn_foreach: 230274A2
;;   Called from:
;;     23027530 (in bt_conn_disconnect_all)
bt_conn_foreach proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042012
	c.swsp	s4,00000004
	c.mv	s4,a0
	addi	a0,s1,+00000278
	addi	a0,a0,+00000048
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s2,a1
	c.mv	s3,a2
	jal	ra,00000000230254AC
	addi	s0,s1,+00000278
	c.beqz	a0,00000000230274DE

l230274CC:
	lbu	a5,s0,+00000002
	and	a5,a5,s4
	c.beqz	a5,00000000230274DE

l230274D6:
	c.mv	a1,s3
	addi	a0,s1,+00000278
	c.jalr	s2

l230274DE:
	addi	a0,s0,+000000E8
	jal	ra,00000000230254AC
	c.beqz	a0,000000002302750A

l230274E8:
	lbu	a0,s0,+000000A2
	and	a0,a0,s4
	c.beqz	a0,000000002302750A

l230274F2:
	addi	a0,s0,+000000A0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	s0,00000088
	c.mv	a1,s3
	c.mv	t1,s2
	c.lwsp	a2,00000068
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	t1

l2302750A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; bt_conn_disconnect_all: 2302751A
;;   Called from:
;;     2301D3AC (in bt_unpair)
bt_conn_disconnect_all proc
	c.addi	sp,FFFFFFE0
	lui	a1,00023027
	sb	a0,sp,+0000000F
	addi	a2,sp,+0000000F
	addi	a1,a1,+000006F0
	c.li	a0,00000007
	c.swsp	ra,0000008C
	jal	ra,00000000230274A2
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; bt_conn_unref: 2302753A
;;   Called from:
;;     2301C5D8 (in le_remote_feat_complete)
;;     2301C652 (in le_conn_update_complete)
;;     2301C76E (in hci_num_completed_packets)
;;     2301C890 (in hci_encrypt_key_refresh_complete)
;;     2301C938 (in hci_encrypt_change)
;;     2301D152 (in hci_disconn_complete)
;;     2301D156 (in hci_disconn_complete)
;;     2301D418 (in bt_unpair)
;;     2301D496 (in bt_id_add)
;;     2301D634 (in bt_id_del)
;;     2301DA8C (in bt_le_scan_update)
;;     2301DAC0 (in bt_le_scan_update)
;;     2301DCD4 (in le_adv_report)
;;     2301DD18 (in le_adv_report)
;;     2301DDD6 (in le_ltk_request)
;;     2301DF30 (in le_conn_param_req)
;;     2301E036 (in enh_conn_complete)
;;     2301E05A (in enh_conn_complete)
;;     2301E50E (in bt_recv)
;;     23023FF8 (in ble_select_conn)
;;     23024082 (in ble_disconnect)
;;     230282FC (in disconnected_cb)
;;     2302869A (in notify_cb)
;;     2302871C (in notify_cb)
;;     23028750 (in notify_cb)
;;     230287CC (in sc_indicate)
bt_conn_unref proc
	addi	a0,a0,+00000048
	jal	zero,0000000023025486

;; bt_conn_get_dst: 23027542
;;   Called from:
;;     23024D80 (in connected)
;;     23024DCA (in disconnected)
;;     23024E04 (in security_changed)
;;     23024E2C (in auth_passkey_display)
;;     23024E50 (in auth_passkey_entry)
;;     23024E74 (in auth_passkey_confirm)
;;     23024E98 (in auth_cancel)
;;     23024EBA (in auth_pairing_confirm)
;;     23024EE0 (in auth_pairing_complete)
;;     23024F18 (in auth_pairing_failed)
bt_conn_get_dst proc
	addi	a0,a0,+00000070
	c.jr	ra

;; bt_conn_get_info: 23027548
;;   Called from:
;;     230275EA (in bt_conn_get_remote_dev_info)
;;     23027608 (in bt_conn_get_remote_dev_info)
bt_conn_get_info proc
	lbu	a5,a0,+00000002
	sb	a5,a1,+00000000
	lbu	a5,a0,+00000003
	sb	a5,a1,+00000001
	lbu	a5,a0,+00000008
	sb	a5,a1,+00000002
	lbu	a4,a0,+00000002
	c.li	a5,00000001
	bne	a4,a5,00000000230275BA

l2302756A:
	addi	a5,a0,+00000070
	c.sw	a1,8(a5)
	lbu	a5,a0,+00000008
	c.li	a4,00000007
	add	a5,a5,a4
	lui	a4,0004200D
	addi	a4,a4,+00000358
	c.add	a5,a4
	c.sw	a1,4(a5)
	lbu	a3,a0,+00000003
	addi	a4,a0,+0000007E
	addi	a5,a0,+00000077
	c.bnez	a3,00000000230275B4

l23027594:
	c.sw	a1,12(a5)
	c.sw	a1,16(a4)

l23027598:
	lhu	a5,a0,+00000086
	sh	a5,a1,+00000014
	lhu	a5,a0,+0000008C
	sh	a5,a1,+00000016
	lhu	a5,a0,+0000008E
	c.li	a0,00000000
	sh	a5,a1,+00000018
	c.jr	ra

l230275B4:
	c.sw	a1,12(a4)
	c.sw	a1,16(a5)
	c.j	0000000023027598

l230275BA:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; bt_conn_get_remote_dev_info: 230275BE
;;   Called from:
;;     23024F74 (in ble_get_all_conn_info)
bt_conn_get_remote_dev_info proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042012
	c.swsp	s3,00000084
	c.mv	s3,a0
	addi	a0,s1,+00000278
	addi	a0,a0,+00000048
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	jal	ra,00000000230254AC
	addi	s2,s1,+00000278
	c.mv	s0,a0
	c.beqz	a0,00000000230275F0

l230275E4:
	c.mv	a1,s3
	addi	a0,s1,+00000278
	jal	ra,0000000023027548
	c.li	s0,00000001

l230275F0:
	addi	a0,s2,+000000E8
	jal	ra,00000000230254AC
	c.beqz	a0,000000002302760C

l230275FA:
	c.li	a1,0000001C
	add	a1,s0,a1
	addi	a0,s2,+000000A0
	c.addi	s0,00000001
	c.add	a1,s3
	jal	ra,0000000023027548

l2302760C:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; bt_conn_disconnect: 2302761C
;;   Called from:
;;     2301C808 (in update_sec_level)
;;     2301D412 (in bt_unpair)
;;     2302406E (in ble_disconnect)
;;     23027708 (in disconnect_all)
bt_conn_disconnect proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lbu	a5,a0,+0000000D
	c.li	a4,00000004
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	bltu	a4,a5,000000002302764C

l23027638:
	lui	a4,00023077
	c.slli	a5,02
	addi	a4,a4,-000007FC
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.mv	s2,a1
	c.mv	s0,a0
	c.jr	a5

l2302764C:
	addi	s1,zero,-00000039

l23027650:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23027660:
	sb	a1,s0,+0000000C
	c.li	a1,00000000
	jal	ra,00000000230270C8
	c.li	a0,00000000
	jal	ra,000000002301DA3A

l23027670:
	c.li	s1,00000000
	c.j	0000000023027650

l23027674:
	sb	a1,s0,+0000000C
	c.li	a1,00000000
	jal	ra,00000000230270C8
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,000000002301F14C

l2302768E:
	addi	a0,a0,+0000004C
	jal	ra,0000000023025F66
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lui	a0,00002000
	c.li	a1,00000000
	c.addi	a0,0000000E
	c.addi16sp	00000020
	jal	zero,000000002301D856

l230276AC:
	c.li	a1,00000003
	addi	a0,zero,+00000406
	jal	ra,000000002301CCB8
	c.mv	s3,a0
	addi	s1,zero,-00000037
	c.beqz	a0,0000000023027650

l230276BE:
	c.li	a1,00000003
	c.addi	a0,00000008
	jal	ra,000000002302586C
	lhu	a5,s0,+00000000
	c.mv	a1,s3
	sb	s2,a0,+00000002
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	addi	a0,zero,+00000406
	jal	ra,000000002301D856
	c.mv	s1,a0
	c.bnez	a0,0000000023027650

l230276E6:
	c.li	a1,00000005
	c.mv	a0,s0
	jal	ra,00000000230270C8
	c.j	0000000023027650

;; disconnect_all: 230276F0
disconnect_all proc
	lbu	a3,a0,+00000008
	lbu	a4,a1,+00000000
	bne	a3,a4,000000002302770C

l230276FC:
	lbu	a4,a0,+0000000D
	c.li	a5,00000004
	bne	a4,a5,000000002302770C

l23027706:
	c.li	a1,00000013
	jal	zero,000000002302761C

l2302770C:
	c.jr	ra

;; bt_conn_create_le: 2302770E
;;   Called from:
;;     2302412E (in ble_connect)
bt_conn_create_le proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200D
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s1,a1
	c.mv	s2,a0
	c.li	a1,00000001
	addi	a0,s0,+000003C4
	c.swsp	ra,0000008C
	jal	ra,00000000230267D4
	c.bnez	a0,0000000023027730

l2302772C:
	c.li	s0,00000000
	c.j	0000000023027770

l23027730:
	c.mv	a0,s1
	jal	ra,000000002301D348
	c.beqz	a0,000000002302772C

l23027738:
	c.li	a1,0000000B
	addi	a0,s0,+000003C4
	jal	ra,00000000230267D4
	c.bnez	a0,000000002302772C

l23027744:
	c.li	a1,0000000F
	addi	a0,s0,+000003C4
	jal	ra,00000000230267D4
	c.bnez	a0,000000002302772C

l23027750:
	c.mv	a1,s2
	jal	ra,0000000023027404
	c.mv	s0,a0
	c.beqz	a0,00000000230277E6

l2302775A:
	lbu	a5,a0,+0000000D
	c.li	a4,00000001
	beq	a5,a4,000000002302777E

l23027764:
	c.beqz	a5,00000000230277A0

l23027766:
	c.addi	a5,FFFFFFFD
	andi	a5,a5,+000000FF
	bltu	a4,a5,00000000230277DC

l23027770:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2302777E:
	lhu	a5,s1,+00000000
	sh	a5,a0,+00000088
	lhu	a5,s1,+00000002
	sh	a5,a0,+0000008A
	lhu	a5,s1,+00000004
	sh	a5,a0,+0000008C
	lhu	a5,s1,+00000006
	sh	a5,a0,+0000008E
	c.j	0000000023027770

l230277A0:
	lui	a0,00023077
	addi	a0,a0,-000007E8
	jal	ra,0000000023003AC6

l230277AC:
	lhu	a5,s1,+00000000
	c.mv	a0,s0
	c.li	a1,00000001
	sh	a5,s0,+00000088
	lhu	a5,s1,+00000002
	sh	a5,s0,+0000008A
	lhu	a5,s1,+00000004
	sh	a5,s0,+0000008C
	lhu	a5,s1,+00000006
	sh	a5,s0,+0000008E
	jal	ra,00000000230270C8
	c.li	a0,00000001
	jal	ra,000000002301DA3A
	c.j	0000000023027770

l230277DC:
	addi	a0,a0,+00000048
	jal	ra,0000000023025486
	c.j	000000002302772C

l230277E6:
	lbu	a5,s2,+00000000
	c.li	a4,00000001
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	bltu	a4,a5,0000000023027818

l230277F6:
	c.li	a2,00000007
	c.mv	a1,s2
	c.addi4spn	a0,00000008
	jal	ra,000000002306CF80
	lbu	a5,sp,+00000008
	c.addi	a5,FFFFFFFE
	sb	a5,sp,+00000008

l2302780A:
	c.addi4spn	a1,00000008
	c.li	a0,00000000
	jal	ra,000000002302700E
	c.mv	s0,a0
	c.bnez	a0,00000000230277AC

l23027816:
	c.j	000000002302772C

l23027818:
	c.mv	a1,s2
	jal	ra,000000002301D32C
	c.mv	a1,a0
	c.li	a2,00000007
	c.addi4spn	a0,00000008
	jal	ra,000000002306CF80
	c.j	000000002302780A

;; bt_conn_le_conn_update: 2302782A
;;   Called from:
;;     230208BA (in l2cap_recv)
;;     23027916 (in send_conn_le_param_update)
bt_conn_le_conn_update proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.lui	s2,00002000
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.mv	s1,a1
	c.mv	s4,a0
	c.li	a1,0000000E
	addi	a0,s2,+00000013
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	jal	ra,000000002301CCB8
	c.beqz	a0,00000000230278BE

l2302784A:
	c.mv	s3,a0
	c.li	a1,0000000E
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.li	a2,0000000E
	c.li	a1,00000000
	c.mv	s0,a0
	jal	ra,000000002306D1BC
	lhu	a5,s4,+00000000
	c.mv	a1,s3
	addi	a0,s2,+00000013
	sb	a5,s0,+00000000
	c.srli	a5,00000008
	sb	a5,s0,+00000001
	lhu	a5,s1,+00000000
	c.li	a2,00000000
	sb	a5,s0,+00000002
	c.srli	a5,00000008
	sb	a5,s0,+00000003
	lhu	a5,s1,+00000002
	sb	a5,s0,+00000004
	c.srli	a5,00000008
	sb	a5,s0,+00000005
	lhu	a5,s1,+00000004
	sb	a5,s0,+00000006
	c.srli	a5,00000008
	sb	a5,s0,+00000007
	lhu	a5,s1,+00000006
	sb	a5,s0,+00000008
	c.srli	a5,00000008
	sb	a5,s0,+00000009
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,000000002301CD52

l230278BE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	addi	a0,zero,-00000037
	c.addi16sp	00000020
	c.jr	ra

;; send_conn_le_param_update: 230278D2
;;   Called from:
;;     230279C2 (in conn_update_timeout)
;;     23027A56 (in bt_conn_le_param_update)
send_conn_le_param_update proc
	lui	a5,0004200D
	lbu	a5,a5,+000003C8
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.andi	a5,00000002
	c.mv	s0,a0
	c.mv	s1,a1
	c.bnez	a5,0000000023027900

l230278EA:
	lbu	a5,s0,+00000003
	c.beqz	a5,0000000023027912

l230278F0:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002301FFE0

l23027900:
	lbu	a5,a0,+00000094
	c.andi	a5,00000002
	c.beqz	a5,00000000230278EA

l23027908:
	c.li	a1,0000000A
	c.addi	a0,00000004
	jal	ra,00000000230267D4
	c.bnez	a0,00000000230278EA

l23027912:
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002302782A
	c.bnez	a0,000000002302792C

l2302791C:
	lhu	a5,s1,+00000004
	sh	a5,s0,+00000090
	lhu	a5,s1,+00000006
	sh	a5,s0,+00000092

l2302792C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; conn_update_timeout: 23027936
conn_update_timeout proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	lbu	a5,a0,-0000003F
	c.mv	s0,a0
	addi	s1,a0,-0000004C
	c.bnez	a5,0000000023027986

l2302794C:
	c.mv	a0,s1
	jal	ra,000000002301F8F4
	lui	a5,0004200E
	lw	s2,a5,+000001A8

l2302795A:
	bne	s2,zero,0000000023027972

l2302795E:
	addi	a0,s0,-00000004
	jal	ra,0000000023025486

l23027966:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23027972:
	lw	a5,s2,+00000004
	c.beqz	a5,0000000023027980

l23027978:
	lbu	a1,s0,-00000040
	c.mv	a0,s1
	c.jalr	a5

l23027980:
	lw	s2,s2,+00000018
	c.j	000000002302795A

l23027986:
	lbu	a4,a0,-0000004A
	c.li	a5,00000001
	bne	a4,a5,0000000023027966

l23027990:
	lbu	a5,a0,-00000049
	c.bnez	a5,00000000230279A2

l23027996:
	c.lui	a0,00002000
	c.li	a1,00000000
	c.addi	a0,0000000E
	jal	ra,000000002301D856
	c.j	0000000023027966

l230279A2:
	addi	s2,a0,-00000048
	addi	a1,zero,-00000201
	c.mv	a0,s2
	jal	ra,0000000023025522
	andi	a0,a0,+00000200
	c.beqz	a0,00000000230279D2

l230279B6:
	c.lw	s0,60(a5)
	c.mv	a1,sp
	c.swsp	a5,00000000
	c.lw	s0,68(a5)
	c.swsp	a5,00000080

l230279C0:
	c.mv	a0,s1
	jal	ra,00000000230278D2
	addi	a1,zero,+00000100
	c.mv	a0,s2
	jal	ra,00000000230254FA
	c.j	0000000023027966

l230279D2:
	lui	a5,0004200E
	addi	a5,a5,-000002F8
	c.lw	a5,0(a4)
	c.lw	a5,4(a5)
	c.addi4spn	a1,00000008
	c.swsp	a4,00000004
	c.swsp	a5,00000084
	c.j	00000000230279C0

;; bt_conn_le_param_update: 230279E6
;;   Called from:
;;     23024A9E (in ble_conn_update)
bt_conn_le_param_update proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lhu	a5,a0,+00000086
	lhu	a4,a1,+00000000
	c.mv	s0,a0
	c.mv	s1,a1
	bltu	a5,a4,0000000023027A40

l23027A02:
	lhu	a4,a1,+00000002
	bltu	a4,a5,0000000023027A40

l23027A0A:
	lhu	a4,a0,+0000008C
	lhu	a5,a1,+00000004
	bne	a4,a5,0000000023027A40

l23027A16:
	lhu	a4,a0,+0000008E
	lhu	a5,a1,+00000006
	bne	a4,a5,0000000023027A40

l23027A22:
	addi	a1,zero,-00000201
	c.addi	a0,00000004
	jal	ra,0000000023025522
	addi	s2,zero,-00000045

l23027A30:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23027A40:
	lbu	a5,s0,+00000003
	c.bnez	a5,0000000023027A5A

l23027A46:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a1,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,00000000230278D2

l23027A5A:
	addi	s3,s0,+00000004
	c.li	a1,00000008
	c.mv	a0,s3
	jal	ra,00000000230267D4
	c.mv	s2,a0
	c.bnez	a0,0000000023027A46

l23027A6A:
	lhu	a5,s1,+00000000
	addi	a1,zero,+00000200
	c.mv	a0,s3
	sh	a5,s0,+00000088
	lhu	a5,s1,+00000002
	sh	a5,s0,+0000008A
	lhu	a5,s1,+00000004
	sh	a5,s0,+00000090
	lhu	a5,s1,+00000006
	sh	a5,s0,+00000092
	jal	ra,00000000230254FA
	c.j	0000000023027A30

;; bt_conn_create_pdu_timeout: 23027A96
;;   Called from:
;;     2301F7B2 (in l2cap_create_le_sig_pdu.isra.7)
;;     2301F928 (in bt_l2cap_create_pdu_timeout)
;;     2301FC9E (in l2cap_chan_le_send)
;;     23027AF6 (in create_frag.isra.11)
bt_conn_create_pdu_timeout proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a1
	c.bnez	a0,0000000023027AAA

l23027AA2:
	lui	a0,0004200E
	addi	a0,a0,-000002D0

l23027AAA:
	c.mv	a1,a2
	c.swsp	a2,00000084
	jal	ra,00000000230256D8
	c.mv	s0,a0
	c.lwsp	a2,00000084
	c.bnez	a0,0000000023027AD2

l23027AB8:
	lui	a0,00023077
	c.mv	a1,a2
	addi	a0,a0,-000007BC
	jal	ra,0000000023003AC6

l23027AC6:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23027AD2:
	addi	a1,s1,+00000005
	c.addi	a0,00000008
	jal	ra,000000002302572C
	c.j	0000000023027AC6

;; create_frag.isra.11: 23027ADE
;;   Called from:
;;     23027BEA (in bt_conn_process_tx)
;;     23027C26 (in bt_conn_process_tx)
create_frag.isra.11 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.mv	s1,a0
	c.mv	s3,a1
	c.li	a2,FFFFFFFF
	c.li	a1,00000000
	c.li	a0,00000000
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	jal	ra,0000000023027A96
	lbu	a4,s1,+00000000
	c.li	a5,00000004
	beq	a4,a5,0000000023027B1C

l23027B04:
	jal	ra,000000002302574E
	c.li	s0,00000000

l23027B0A:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23027B1C:
	lui	s1,0004200D
	sw	zero,a0,+00000014
	addi	s1,s1,+00000358
	lhu	s4,s1,+00000080
	addi	s2,a0,+00000008
	c.mv	s0,a0
	c.mv	a0,s2
	jal	ra,0000000023025968
	bgeu	s4,a0,0000000023027B58

l23027B3C:
	lhu	s1,s1,+00000080

l23027B40:
	lw	a1,s3,+00000008
	c.mv	a2,s1
	c.mv	a0,s2
	jal	ra,000000002302587E
	c.mv	a1,s1
	addi	a0,s3,+00000008
	jal	ra,00000000230258F6
	c.j	0000000023027B0A

l23027B58:
	c.mv	a0,s2
	jal	ra,0000000023025968
	slli	s1,a0,00000010
	c.srli	s1,00000010
	c.j	0000000023027B40

;; bt_conn_process_tx: 23027B66
;;   Called from:
;;     2301E454 (in hci_tx_thread)
bt_conn_process_tx proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lbu	a5,a0,+0000000D
	c.mv	s0,a0
	c.bnez	a5,0000000023027B9C

l23027B7A:
	addi	a1,zero,-00000041
	c.addi	a0,00000004
	jal	ra,0000000023025522
	andi	a0,a0,+00000040
	c.beqz	a0,0000000023027B9C

l23027B8A:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,00000000230269A2

l23027B9C:
	c.li	a1,00000000
	addi	a0,s0,+00000034
	jal	ra,00000000230256E4
	c.mv	s1,a0
	c.bnez	a0,0000000023027BAE

l23027BAA:
	jal	ra,000000002300149E

l23027BAE:
	lui	a5,0004200D
	addi	a4,a5,+00000358
	lhu	a3,s1,+0000000C
	lhu	a4,a4,+00000080
	addi	s2,a5,+00000358
	bltu	a4,a3,0000000023027BE2

l23027BC6:
	c.li	a3,00000000
	c.li	a2,00000000

l23027BCA:
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023026806
	c.beqz	a0,0000000023027BF2

l23027BD4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23027BE2:
	addi	s3,s0,+0000000D
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,0000000023027ADE
	c.mv	a1,a0
	c.bnez	a0,0000000023027C04

l23027BF2:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002302574E

l23027C04:
	c.li	a3,00000001
	c.li	a2,00000000

l23027C08:
	c.mv	a0,s0
	jal	ra,0000000023026806
	c.beqz	a0,0000000023027BF2

l23027C10:
	lhu	a4,s1,+0000000C
	lhu	a5,s2,+00000080
	bltu	a5,a4,0000000023027C22

l23027C1C:
	c.li	a3,00000000
	c.li	a2,00000001
	c.j	0000000023027BCA

l23027C22:
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,0000000023027ADE
	c.mv	a1,a0
	c.beqz	a0,0000000023027BF2

l23027C2E:
	c.li	a3,00000001
	c.li	a2,00000001
	c.j	0000000023027C08

;; bt_conn_auth_cb_register: 23027C34
;;   Called from:
;;     23023F04 (in ble_auth)
bt_conn_auth_cb_register proc
	lui	a4,0004201A
	c.bnez	a0,0000000023027C44

l23027C3A:
	sw	zero,a4,+000004D4

l23027C3E:
	c.li	a5,00000000

l23027C40:
	c.mv	a0,a5
	c.jr	ra

l23027C44:
	lw	a3,a4,+000004D4
	addi	a5,zero,-00000045
	c.bnez	a3,0000000023027C40

l23027C4E:
	c.lw	a0,16(a5)
	c.bnez	a5,0000000023027C64

l23027C52:
	c.lw	a0,0(a3)
	c.li	a5,FFFFFFEA
	c.bnez	a3,0000000023027C40

l23027C58:
	c.lw	a0,4(a3)
	c.bnez	a3,0000000023027C40

l23027C5C:
	c.lw	a0,8(a3)
	c.bnez	a3,0000000023027C40

l23027C60:
	c.lw	a0,20(a3)
	c.bnez	a3,0000000023027C40

l23027C64:
	sw	a0,a4,+000004D4
	c.j	0000000023027C3E

;; bt_conn_auth_passkey_entry: 23027C6A
;;   Called from:
;;     23024A48 (in ble_auth_passkey)
bt_conn_auth_passkey_entry proc
	lui	a4,0004201A
	lw	a4,a4,+000004D4
	c.beqz	a4,0000000023027C92

l23027C74:
	lbu	a3,a0,+00000002
	c.li	a4,00000001
	c.li	a5,FFFFFFEA
	bne	a3,a4,0000000023027C94

l23027C80:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023023388
	c.lwsp	a2,00000020
	c.li	a5,00000000
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23027C92:
	c.li	a5,FFFFFFEA

l23027C94:
	c.mv	a0,a5
	c.jr	ra

;; bt_conn_auth_passkey_confirm: 23027C98
;;   Called from:
;;     23023EDA (in ble_auth_passkey_confirm)
bt_conn_auth_passkey_confirm proc
	lui	a4,0004201A
	lw	a4,a4,+000004D4
	c.beqz	a4,0000000023027CB0

l23027CA2:
	lbu	a4,a0,+00000002
	c.li	a5,00000001
	bne	a4,a5,0000000023027CB0

l23027CAC:
	jal	zero,000000002302344E

l23027CB0:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; bt_conn_auth_cancel: 23027CB4
;;   Called from:
;;     23023EF4 (in ble_auth_cancel)
bt_conn_auth_cancel proc
	lui	a4,0004201A
	lw	a4,a4,+000004D4
	c.beqz	a4,0000000023027CCC

l23027CBE:
	lbu	a4,a0,+00000002
	c.li	a5,00000001
	bne	a4,a5,0000000023027CCC

l23027CC8:
	jal	zero,00000000230234CC

l23027CCC:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; bt_conn_auth_pairing_confirm: 23027CD0
;;   Called from:
;;     23023EC0 (in ble_auth_pairing_confirm)
bt_conn_auth_pairing_confirm proc
	lui	a4,0004201A
	lw	a4,a4,+000004D4
	c.beqz	a4,0000000023027CE8

l23027CDA:
	lbu	a4,a0,+00000002
	c.li	a5,00000001
	bne	a4,a5,0000000023027CE8

l23027CE4:
	jal	zero,0000000023023528

l23027CE8:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; bt_conn_index: 23027CEC
;;   Called from:
;;     2301E4F8 (in bt_recv)
;;     2302901A (in update_ccc)
bt_conn_index proc
	lui	a5,00042012
	addi	a5,a5,+00000278
	c.sub	a0,a5
	lui	a5,000CCCCD
	addi	a5,a5,-00000333
	c.srai	a0,00000005
	add	a0,a0,a5
	andi	a0,a0,+000000FF
	c.jr	ra

;; bt_conn_init: 23027D0A
;;   Called from:
;;     2301EDFA (in init_work)
bt_conn_init proc
	lui	a5,0004200E
	lbu	a5,a5,+00000168
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.bnez	a5,0000000023027D2C

l23027D1E:
	lui	a0,0004200E
	c.li	a1,00000002
	addi	a0,a0,-000002D0
	jal	ra,0000000023025092

l23027D2C:
	lui	s1,0004200E
	lui	s0,00042012
	c.li	a1,00000014
	addi	a0,s1,-000002DC
	addi	s0,s0,+000001D8
	jal	ra,0000000023025092
	addi	s2,s0,+000000A0

l23027D46:
	c.mv	a1,s0
	addi	a0,s1,-000002DC
	c.addi	s0,00000010
	jal	ra,00000000230250DE
	bne	s2,s0,0000000023027D46

l23027D56:
	jal	ra,000000002302C112
	jal	ra,0000000023023882
	c.mv	s2,a0
	c.bnez	a0,0000000023027DBA

l23027D62:
	jal	ra,000000002302005A
	lui	s1,00042012
	addi	a0,s1,+00000278
	addi	a0,a0,+00000048
	jal	ra,00000000230254AC
	addi	s0,s1,+00000278
	c.beqz	a0,0000000023027D96

l23027D7C:
	c.li	a1,00000000
	addi	a0,s0,+00000004
	jal	ra,00000000230267D4
	c.beqz	a0,0000000023027D96

l23027D88:
	sb	zero,s0,+00000008
	c.li	a1,00000001
	addi	a0,s1,+00000278
	jal	ra,00000000230270C8

l23027D96:
	addi	a0,s0,+000000E8
	jal	ra,00000000230254AC
	c.beqz	a0,0000000023027DBA

l23027DA0:
	c.li	a1,00000000
	addi	a0,s0,+000000A4
	jal	ra,00000000230267D4
	c.beqz	a0,0000000023027DBA

l23027DAC:
	sb	zero,s0,+000000A8
	c.li	a1,00000001
	addi	a0,s0,+000000A0
	jal	ra,00000000230270C8

l23027DBA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s2
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; bt_rand: 23027DC8
;;   Called from:
;;     2301CF72 (in le_set_private_addr.isra.19)
;;     2301D7CA (in bt_addr_le_create_static)
;;     23020EDE (in display_passkey)
;;     230211B8 (in legacy_request_tk)
;;     230219FC (in bt_smp_distribute_keys)
;;     23021AF6 (in bt_smp_distribute_keys)
;;     23021CAA (in smp_init)
bt_rand proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023025400
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bt_encrypt_le: 23027DD8
;;   Called from:
;;     23022592 (in smp_c1)
;;     230225CE (in smp_c1)
;;     23022E5A (in smp_pairing_random)
;;     23022EC4 (in smp_pairing_random)
;;     23025D7C (in bt_rpa_irk_matches)
bt_encrypt_le proc
	c.addi16sp	FFFFFF30
	c.mv	a4,sp
	c.swsp	s0,00000064
	c.swsp	s1,000000E0
	c.swsp	s2,00000060
	addi	a5,a0,+0000000F
	c.swsp	ra,000000E4
	c.mv	s1,a1
	c.mv	s0,a2
	c.addi	a0,FFFFFFFF
	c.mv	s2,a4

l23027DF0:
	c.addi	a5,FFFFFFFF
	lbu	a3,a5,+00000001
	c.addi	a4,00000001
	sb	a3,a4,+00000FFF
	bne	a0,a5,0000000023027DF0

l23027E00:
	c.mv	a1,s2
	c.addi4spn	a0,00000010
	jal	ra,000000002302A84A
	c.beqz	a0,0000000023027E5E

l23027E0A:
	addi	a5,s1,+0000000F
	c.mv	a4,s2
	c.addi	s1,FFFFFFFF

l23027E12:
	c.addi	a5,FFFFFFFF
	lbu	a3,a5,+00000001
	c.addi	a4,00000001
	sb	a3,a4,+00000FFF
	bne	a5,s1,0000000023027E12

l23027E22:
	c.addi4spn	a2,00000010
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002302A924
	c.beqz	a0,0000000023027E5E

l23027E2E:
	c.mv	a2,s0
	addi	a5,s0,+0000000F
	addi	a4,s0,+00000007

l23027E38:
	lbu	a1,a5,+00000000
	lbu	a3,a2,+00000000
	c.addi	a5,FFFFFFFF
	sb	a1,a2,+00000000
	sb	a3,a5,+00000001
	c.addi	a2,00000001
	bne	a4,a5,0000000023027E38

l23027E50:
	c.li	a0,00000000

l23027E52:
	c.lwsp	a5,00000020
	c.lwsp	a1,00000004
	c.lwsp	t2,00000024
	c.lwsp	gp,00000048
	c.addi16sp	000000D0
	c.jr	ra

l23027E5E:
	c.li	a0,FFFFFFEA
	c.j	0000000023027E52

;; sys_slist_remove: 23027E62
;;   Called from:
;;     23027F22 (in gatt_subscription_remove)
;;     2302896C (in bt_gatt_service_unregister)
;;     2302A0C0 (in bt_gatt_unsubscribe)
sys_slist_remove proc
	c.lw	a2,0(a5)
	c.bnez	a1,0000000023027E76

l23027E66:
	c.lw	a0,4(a4)
	c.sw	a0,0(a5)
	bne	a4,a2,0000000023027E70

l23027E6E:
	c.sw	a0,4(a5)

l23027E70:
	sw	zero,a2,+00000000
	c.jr	ra

l23027E76:
	c.sw	a1,0(a5)
	c.lw	a0,4(a5)
	bne	a5,a2,0000000023027E70

l23027E7E:
	c.sw	a0,4(a1)
	c.j	0000000023027E70

;; found_attr: 23027E82
found_attr proc
	c.sw	a1,0(a0)
	c.li	a0,00000000
	c.jr	ra

;; find_static_attr: 23027E88
;;   Called from:
;;     230289F6 (in bt_gatt_attr_value_handle)
;;     23028DAC (in bt_gatt_indicate)
;;     23028DEE (in bt_gatt_indicate)
find_static_attr proc
	lui	a5,0004200E
	lui	a2,0004200E
	addi	a5,a5,-00000260
	c.li	a7,00000001
	addi	a2,a2,-00000250
	c.li	t3,00000014

l23027E9C:
	bgeu	a5,a2,0000000023027ECA

l23027EA0:
	lw	t1,a5,+00000004
	c.li	a3,00000000
	c.j	0000000023027EB8

l23027EA8:
	add	a1,a3,t3
	lw	a6,a5,+00000000
	c.add	a1,a6
	beq	a0,a1,0000000023027ECC

l23027EB6:
	c.addi	a3,00000001

l23027EB8:
	add	a4,a7,a3
	c.slli	a4,10
	c.srli	a4,00000010
	bne	a3,t1,0000000023027EA8

l23027EC4:
	c.addi	a5,00000008
	c.mv	a7,a4
	c.j	0000000023027E9C

l23027ECA:
	c.li	a4,00000000

l23027ECC:
	c.mv	a0,a4
	c.jr	ra

;; gatt_ccc_changed: 23027ED0
;;   Called from:
;;     2302889E (in bt_gatt_attr_write_ccc)
;;     23028FE2 (in update_ccc)
gatt_ccc_changed proc
	lhu	a3,a1,+00000012
	lhu	a4,a1,+00000008
	c.mv	a5,a1
	bgeu	a4,a3,0000000023027EE0

l23027EDE:
	c.mv	a4,a3

l23027EE0:
	lhu	a3,a5,+00000014
	slli	a1,a4,00000010
	c.srli	a1,00000010
	beq	a3,a1,0000000023027EFC

l23027EEE:
	lw	t1,a5,+00000018
	sh	a4,a5,+00000014
	beq	t1,zero,0000000023027EFC

l23027EFA:
	c.jr	t1

l23027EFC:
	c.jr	ra

;; gatt_indicate_rsp: 23027EFE
gatt_indicate_rsp proc
	c.mv	a2,a1
	lw	t1,a4,+00000020
	c.lw	a4,28(a1)
	c.jr	t1

;; sc_restore_rsp: 23027F08
sc_restore_rsp proc
	c.jr	ra

;; gatt_subscription_remove: 23027F0A
;;   Called from:
;;     230280DA (in gatt_write_ccc_rsp)
;;     2302A306 (in bt_gatt_disconnected)
gatt_subscription_remove proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	lui	a0,0004200E
	c.swsp	s0,00000004
	addi	a0,a0,+000001BC
	c.mv	s0,a2
	addi	a2,a2,+00000030
	c.swsp	ra,00000084
	jal	ra,0000000023027E62
	lw	t1,s0,+00000020
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.li	a3,00000000
	c.li	a2,00000000
	c.addi	sp,00000010
	c.jr	t1

;; gatt_mtu_rsp: 23027F3C
gatt_mtu_rsp proc
	lw	t1,a4,+00000018
	c.mv	a2,a4
	c.jr	t1

;; gatt_write_rsp: 23027F44
gatt_write_rsp proc
	lw	t1,a4,+00000018
	c.mv	a2,a4
	c.jr	t1

;; find_ccc_cfg: 23027F4C
;;   Called from:
;;     230284DC (in bt_gatt_attr_read_ccc)
;;     23028834 (in bt_gatt_attr_write_ccc)
;;     23028840 (in bt_gatt_attr_write_ccc)
find_ccc_cfg proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s0,a1
	c.bnez	a0,0000000023027F7E

l23027F58:
	c.li	a2,00000007
	c.addi4spn	a1,00000008
	addi	a0,s0,+00000001
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	sb	zero,sp,+0000000E
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023027FB4

l23027F70:
	c.li	a0,00000000

l23027F72:
	c.add	a0,s0

l23027F74:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23027F7E:
	lbu	a4,a0,+00000008
	lbu	a5,a1,+00000000
	c.mv	s1,a0
	bne	a4,a5,0000000023027F94

l23027F8C:
	c.addi	a1,00000001
	jal	ra,0000000023027318
	c.beqz	a0,0000000023027F70

l23027F94:
	lbu	a4,s1,+00000008
	lbu	a5,s0,+0000000A
	bne	a4,a5,0000000023027FB0

l23027FA0:
	addi	a1,s0,+0000000B
	c.mv	a0,s1
	jal	ra,0000000023027318

l23027FAA:
	c.bnez	a0,0000000023027FB0

l23027FAC:
	c.li	a0,0000000A
	c.j	0000000023027F72

l23027FB0:
	c.li	a0,00000000
	c.j	0000000023027F74

l23027FB4:
	c.li	a2,00000007
	c.addi4spn	a1,00000008
	addi	a0,s0,+0000000B
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	sb	zero,sp,+0000000E
	jal	ra,000000002306CEF8
	c.j	0000000023027FAA

;; gatt_notify: 23027FCC
;;   Called from:
;;     2302875E (in notify_cb)
gatt_notify proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s0,a2
	lhu	a2,a2,+0000000C
	c.mv	s1,a1
	c.li	a1,0000001B
	c.addi	a2,00000002
	c.mv	s5,a0
	jal	ra,000000002302B748
	c.beqz	a0,000000002302803E

l23027FF0:
	addi	s4,a0,+00000008
	c.mv	s2,a0
	c.li	a1,00000002
	c.mv	a0,s4
	jal	ra,000000002302586C
	sb	s1,a0,+00000000
	c.srli	s1,00000008
	sb	s1,a0,+00000001
	lhu	a1,s0,+0000000C
	c.mv	s3,a0
	c.mv	a0,s4
	jal	ra,000000002302586C
	lhu	a2,s0,+0000000C
	c.lw	s0,8(a1)
	addi	a0,s3,+00000002
	jal	ra,000000002306CF80
	c.lw	s0,20(a3)
	c.lw	s0,16(a2)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a1,s2
	c.mv	a0,s5
	c.lwsp	a6,00000048
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,000000002302C12E

l2302803E:
	lui	a0,00023077
	addi	a0,a0,-00000494
	jal	ra,0000000023003AC6
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.li	a0,FFFFFFF4
	c.addi16sp	00000020
	c.jr	ra

;; gatt_read_multiple_rsp: 2302805E
gatt_read_multiple_rsp proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	a6,a1
	c.mv	s0,a4
	lw	t1,a4,+00000018
	c.bnez	a1,0000000023028074

l23028072:
	c.bnez	a3,0000000023028088

l23028074:
	c.li	a4,00000000
	c.li	a3,00000000
	c.mv	a2,s0
	c.mv	a1,a6

l2302807C:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	t1

l23028088:
	c.mv	a4,a3
	c.mv	a3,a2
	c.mv	a2,s0
	c.jalr	t1
	lw	t1,s0,+00000018
	c.li	a4,00000000
	c.li	a3,00000000
	c.mv	a2,s0
	c.li	a1,00000000
	c.j	000000002302807C

;; gatt_write_ccc_rsp: 2302809E
gatt_write_ccc_rsp proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.mv	s1,a1
	addi	a0,a4,+0000002C
	c.li	a1,FFFFFFFD
	c.swsp	a4,00000084
	c.swsp	ra,0000008C
	jal	ra,0000000023025522
	c.lwsp	a2,000000C4
	c.beqz	s1,00000000230280E6

l230280BA:
	lui	a5,0004200E
	lw	a5,a5,+000001BC
	c.beqz	a5,00000000230280FC

l230280C4:
	c.lw	a5,0(a1)
	addi	a3,a4,+00000030

l230280CA:
	bne	a5,a3,00000000230280DE

l230280CE:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.mv	a2,a4
	c.addi16sp	00000020
	jal	zero,0000000023027F0A

l230280DE:
	c.beqz	a1,00000000230280FC

l230280E0:
	c.mv	a5,a1
	c.lw	a1,0(a1)
	c.j	00000000230280CA

l230280E6:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	lw	t1,a4,+00000020
	c.li	a3,00000000
	c.li	a2,00000000
	c.mv	a1,a4
	c.addi16sp	00000020
	c.jr	t1

l230280FC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; gatt_send.constprop.28: 23028106
;;   Called from:
;;     230281B6 (in gatt_indicate)
;;     230283E6 (in gatt_write_ccc.constprop.21)
;;     230290DC (in bt_gatt_exchange_mtu)
;;     23029734 (in gatt_read_type_rsp)
;;     23029B64 (in bt_gatt_read)
;;     23029EF6 (in bt_gatt_write)
;;     23029F50 (in gatt_prepare_write_rsp)
gatt_send.constprop.28 proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.beqz	a3,000000002302813A

l2302810E:
	c.mv	a5,a3
	c.sw	a5,16(a1)
	c.sw	a3,4(a2)
	sw	zero,a3,+00000008
	c.mv	a1,a3
	jal	ra,000000002302C1A6

l2302811E:
	c.mv	s0,a0
	c.beqz	a0,0000000023028130

l23028122:
	c.mv	a1,a0
	lui	a0,00023077
	addi	a0,a0,-0000043C
	jal	ra,0000000023003AC6

l23028130:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2302813A:
	c.li	a2,00000000
	jal	ra,000000002302C12E
	c.j	000000002302811E

;; gatt_indicate: 23028142
;;   Called from:
;;     23028748 (in notify_cb)
;;     23028E30 (in bt_gatt_indicate)
gatt_indicate proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.mv	s0,a2
	lhu	a2,a2,+00000028
	c.mv	s3,a1
	c.li	a1,0000001D
	c.addi	a2,00000002
	c.mv	s5,a0
	jal	ra,000000002302B748
	c.beqz	a0,00000000230281C6

l23028166:
	addi	s2,a0,+00000008
	c.li	a1,00000002
	c.mv	s1,a0
	c.mv	a0,s2
	jal	ra,000000002302586C
	sb	s3,a0,+00000000
	srli	s3,s3,00000008
	sb	s3,a0,+00000001
	lhu	a1,s0,+00000028
	c.mv	s4,a0
	c.mv	a0,s2
	jal	ra,000000002302586C
	lhu	a2,s0,+00000028
	c.lw	s0,36(a1)
	addi	a0,s4,+00000002
	jal	ra,000000002306CF80
	c.lw	s0,32(a5)
	c.bnez	a5,00000000230281BA

l2302819E:
	c.li	a3,00000000
	c.li	a2,00000000

l230281A2:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a1,s1
	c.mv	a0,s5
	c.lwsp	s4,00000024
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,0000000023028106

l230281BA:
	lui	a2,00023028
	c.mv	a3,s0
	addi	a2,a2,-00000102
	c.j	00000000230281A2

l230281C6:
	lui	a0,00023077
	addi	a0,a0,-000004C0
	jal	ra,0000000023003AC6
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.li	a0,FFFFFFF4
	c.addi16sp	00000020
	c.jr	ra

;; match_uuid: 230281E6
match_uuid proc
	c.sw	a1,0(a0)
	c.li	a0,00000000
	c.jr	ra

;; sc_indicate_rsp: 230281EC
sc_indicate_rsp proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042012
	addi	s0,s0,+000005F8
	c.swsp	s1,00000080
	addi	s1,s0,+00000054
	c.li	a1,FFFFFFFD
	c.mv	a0,s1
	c.swsp	ra,00000084
	jal	ra,0000000023025522
	c.mv	a0,s1
	jal	ra,00000000230254AC
	c.andi	a0,00000001
	c.beqz	a0,0000000023028224

l23028212:
	addi	a0,s0,+00000030
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,0000000023025FC2

l23028224:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; disconnected_cb: 2302822E
disconnected_cb proc
	c.lw	a0,8(a4)
	lui	a5,00023028
	addi	a5,a5,+000007F8
	bne	a4,a5,000000002302830E

l2302823C:
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
	lw	s3,a0,+0000000C
	lhu	a5,s3,+00000014
	c.beqz	a5,00000000230282A6

l2302825A:
	c.mv	s1,a1
	c.mv	s2,a0
	addi	s0,s3,+00000001
	addi	s6,s3,+00000015
	c.li	s4,00000000
	addi	s5,a1,+00000070
	c.li	s7,00000004

l2302826E:
	lhu	a5,s0,+00000007
	c.beqz	a5,000000002302828C

l23028274:
	lbu	a4,s1,+00000008
	lbu	a5,s0,-00000001
	beq	a4,a5,00000000230282BE

l23028280:
	lbu	a0,s0,-00000001
	c.mv	a1,s0
	jal	ra,0000000023027404
	c.bnez	a0,00000000230282F2

l2302828C:
	c.addi	s0,0000000A
	bne	s0,s6,000000002302826E

l23028292:
	bne	s4,zero,00000000230282A6

l23028296:
	lw	a5,s3,+00000018
	sh	zero,s3,+00000014
	c.beqz	a5,00000000230282A6

l230282A0:
	c.li	a1,00000000
	c.mv	a0,s2
	c.jalr	a5

l230282A6:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.li	a0,00000001
	c.addi16sp	00000040
	c.jr	ra

l230282BE:
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,0000000023027318
	c.bnez	a0,0000000023028280

l230282C8:
	lbu	a0,s1,+00000008
	c.mv	a1,s5
	jal	ra,000000002301EE0A
	c.bnez	a0,0000000023028302

l230282D4:
	c.li	a2,00000007
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	sb	zero,sp,+0000000E
	jal	ra,000000002306CF80
	sb	zero,s0,+00000FFF
	sh	zero,s0,+00000007
	c.j	000000002302828C

l230282F2:
	lbu	a5,a0,+0000000D
	bne	a5,s7,00000000230282FC

l230282FA:
	c.li	s4,00000001

l230282FC:
	jal	ra,000000002302753A
	c.j	000000002302828C

l23028302:
	c.li	a2,00000007
	c.mv	a1,s5
	c.mv	a0,s0
	jal	ra,000000002306CF80
	c.j	000000002302828C

l2302830E:
	c.li	a0,00000001
	c.jr	ra

;; find_sc_cfg: 23028312
;;   Called from:
;;     23028590 (in sc_save)
;;     230285A4 (in sc_save)
;;     23028620 (in sc_ccc_cfg_write)
;;     23028FFA (in update_ccc)
find_sc_cfg proc
	c.addi16sp	FFFFFFD0
	c.swsp	s4,0000000C
	c.mv	s4,a0
	lui	a0,00042012
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s7,00000084
	c.mv	s5,a1
	addi	s2,a0,+00000650
	c.li	s1,00000000
	addi	s0,a0,+00000650
	c.li	s6,0000000C
	c.li	s3,00000004

l2302833C:
	lbu	a5,s2,+00000000
	bne	a5,s4,0000000023028370

l23028344:
	c.li	a2,00000007
	c.mv	a1,s5
	addi	a0,s2,+00000001
	add	s7,s1,s6
	jal	ra,000000002306CEF8
	c.bnez	a0,0000000023028370

l23028356:
	add	a0,s0,s7

l2302835A:
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

l23028370:
	c.addi	s1,00000001
	c.addi	s2,0000000C
	bne	s1,s3,000000002302833C

l23028378:
	c.li	a0,00000000
	c.j	000000002302835A

;; gatt_write_ccc.constprop.21: 2302837C
;;   Called from:
;;     2302A008 (in bt_gatt_subscribe)
;;     2302A132 (in bt_gatt_unsubscribe)
;;     2302A25E (in bt_gatt_connected)
gatt_write_ccc.constprop.21 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s5,00000080
	c.mv	s0,a1
	c.mv	s5,a2
	c.li	a1,00000012
	c.li	a2,00000004
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.mv	s4,a0
	c.mv	s2,a3
	jal	ra,000000002302B748
	c.beqz	a0,00000000230283EA

l2302839E:
	addi	s3,a0,+00000008
	c.mv	s1,a0
	c.li	a1,00000002
	c.mv	a0,s3
	jal	ra,000000002302586C
	sb	s0,a0,+00000000
	c.srli	s0,00000008
	sb	s0,a0,+00000001
	c.mv	a1,s5
	c.mv	a0,s3
	jal	ra,00000000230258AA
	c.li	a1,00000002
	addi	a0,s2,+0000002C
	jal	ra,00000000230254FA
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a2,00000068
	c.lwsp	tp,000000A8
	c.mv	a3,s2
	c.mv	a1,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.mv	a0,s4
	c.lwsp	s0,00000088
	lui	a2,00023028
	addi	a2,a2,+0000009E
	c.addi16sp	00000020
	jal	zero,0000000023028106

l230283EA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.li	a0,FFFFFFF4
	c.addi16sp	00000020
	c.jr	ra

;; read_appearance: 230283FE
read_appearance proc
	c.addi	sp,FFFFFFE0
	addi	a5,zero,+00000341
	c.swsp	s0,0000000C
	sh	a5,sp,+0000000E
	c.swsp	ra,0000008C
	c.li	a5,00000002
	c.li	s0,FFFFFFF9
	bltu	a5,a4,000000002302842E

l23028414:
	sub	s0,a5,a4
	bge	a3,s0,000000002302841E

l2302841C:
	c.mv	s0,a3

l2302841E:
	addi	a5,sp,+0000000E
	c.mv	a0,a2
	add	a1,a5,a4
	c.mv	a2,s0
	jal	ra,000000002306CF80

l2302842E:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; read_ppcp: 23028438
read_ppcp proc
	lui	a5,00000280
	c.addi	sp,FFFFFFE0
	c.addi	a5,00000018
	c.swsp	a5,00000004
	lui	a5,00001900
	c.swsp	s0,0000000C
	c.swsp	a5,00000084
	c.swsp	ra,0000008C
	c.li	a5,00000008
	c.li	s0,FFFFFFF9
	bltu	a5,a4,000000002302846C

l23028454:
	sub	s0,a5,a4
	bge	a3,s0,000000002302845E

l2302845C:
	c.mv	s0,a3

l2302845E:
	c.addi4spn	a5,00000008
	c.mv	a0,a2
	add	a1,a5,a4
	c.mv	a2,s0
	jal	ra,000000002306CF80

l2302846C:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; read_name: 23028476
read_name proc
	c.addi	sp,FFFFFFE0
	c.swsp	a4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s1,a2
	c.swsp	a3,00000084
	jal	ra,000000002301E8EC
	c.mv	s2,a0
	jal	ra,000000002306D630
	c.lwsp	s0,000000C4
	slli	a5,a0,00000010
	c.srli	a5,00000010
	c.li	s0,FFFFFFF9
	bltu	a5,a4,00000000230284BE

l2302849E:
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	c.lwsp	a2,000000A4
	and	s0,a0,a5
	c.sub	s0,a4
	bge	a3,s0,00000000230284B0

l230284AE:
	c.mv	s0,a3

l230284B0:
	c.and	s0,a5
	c.mv	a2,s0
	add	a1,s2,a4
	c.mv	a0,s1
	jal	ra,000000002306CF80

l230284BE:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; bt_gatt_attr_read_ccc: 230284CC
bt_gatt_attr_read_ccc proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.lw	a1,12(a1)
	c.swsp	a3,00000084
	c.swsp	a4,00000004
	c.mv	s1,a2
	jal	ra,0000000023027F4C
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000A4
	c.li	a5,00000000
	c.beqz	a0,00000000230284EC

l230284E8:
	lhu	a5,a0,+00000008

l230284EC:
	sh	a5,sp,+0000001E
	c.li	a5,00000002
	c.li	s0,FFFFFFF9
	bltu	a5,a4,0000000023028512

l230284F8:
	sub	s0,a5,a4
	bge	a3,s0,0000000023028502

l23028500:
	c.mv	s0,a3

l23028502:
	addi	a5,sp,+0000001E
	c.mv	a2,s0
	add	a1,a5,a4
	c.mv	a0,s1
	jal	ra,000000002306CF80

l23028512:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; bt_gatt_attr_read_service: 2302851E
bt_gatt_attr_read_service proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a1,12(a1)
	c.mv	a0,a2
	lbu	a5,a1,+00000000
	c.bnez	a5,0000000023028560

l2302852E:
	lhu	a5,a1,+00000002
	c.li	s0,FFFFFFF9
	sh	a5,sp,+0000000E
	c.li	a5,00000002
	bltu	a5,a4,0000000023028556

l2302853E:
	sub	s0,a5,a4
	bge	a3,s0,0000000023028548

l23028546:
	c.mv	s0,a3

l23028548:
	addi	a5,sp,+0000000E
	c.mv	a2,s0
	add	a1,a5,a4

l23028552:
	jal	ra,000000002306CF80

l23028556:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23028560:
	c.li	a5,00000010
	c.addi	a1,00000001
	c.li	s0,FFFFFFF9
	bltu	a5,a4,0000000023028556

l2302856A:
	sub	s0,a5,a4
	bge	a3,s0,0000000023028574

l23028572:
	c.mv	s0,a3

l23028574:
	c.mv	a2,s0
	c.add	a1,a4
	c.j	0000000023028552

;; sc_save: 2302857A
;;   Called from:
;;     23028614 (in sc_ccc_cfg_write)
;;     23028710 (in notify_cb)
sc_save proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.mv	s4,a0
	c.mv	s3,a1
	c.mv	s2,a2
	c.mv	s1,a3
	jal	ra,0000000023028312
	c.mv	s0,a0
	c.bnez	a0,00000000230285D6

l23028598:
	c.addi4spn	a1,00000008
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	sb	zero,sp,+0000000E
	jal	ra,0000000023028312
	c.mv	s0,a0
	c.bnez	a0,00000000230285C8

l230285AC:
	lui	a0,00023077
	addi	a0,a0,-00000420
	jal	ra,0000000023003AC6

l230285B8:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l230285C8:
	sb	s4,a0,+00000000
	c.li	a2,00000007
	c.mv	a1,s3
	c.addi	a0,00000001
	jal	ra,000000002306CF80

l230285D6:
	lhu	a4,s0,+00000008
	lhu	a5,s0,+0000000A
	c.bnez	a4,00000000230285EC

l230285E0:
	c.bnez	a5,00000000230285F0

l230285E2:
	sh	s2,s0,+00000008

l230285E6:
	sh	s1,s0,+0000000A
	c.j	00000000230285B8

l230285EC:
	bltu	s2,a4,00000000230285F6

l230285F0:
	bgeu	a5,s1,00000000230285B8

l230285F4:
	c.j	00000000230285E6

l230285F6:
	sh	s2,s0,+00000008
	c.j	00000000230285F0

;; sc_ccc_cfg_write: 230285FC
sc_ccc_cfg_write proc
	c.addi	sp,FFFFFFF0
	c.mv	a1,a0
	c.swsp	ra,00000084
	c.li	a5,00000002
	lbu	a0,a0,+00000008
	addi	a1,a1,+00000070
	bne	a2,a5,0000000023028620

l23028610:
	c.li	a3,00000000
	c.li	a2,00000000
	jal	ra,000000002302857A

l23028618:
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l23028620:
	jal	ra,0000000023028312
	c.beqz	a0,0000000023028618

l23028626:
	c.li	a2,0000000C
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	c.j	0000000023028618

;; notify_cb: 23028630
notify_cb proc
	c.lw	a0,8(a4)
	lui	a5,00023028
	addi	a5,a5,+000007F8
	beq	a4,a5,0000000023028642

l2302863E:
	c.li	a0,00000001
	c.jr	ra

l23028642:
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	lw	s4,a0,+0000000C
	lui	a5,0004200D
	addi	a5,a5,+00000514
	c.mv	s1,a1
	c.mv	s2,a0
	beq	s4,a5,00000000230286BE

l2302866C:
	addi	s0,s4,+00000001
	addi	s6,s4,+00000015
	c.li	s7,00000004
	c.li	s8,00000002

l23028678:
	lhu	a4,s0,+00000007
	lhu	a5,s1,+00000004
	bne	a4,a5,000000002302869E

l23028684:
	lbu	a0,s0,-00000001
	c.mv	a1,s0
	jal	ra,0000000023027404
	c.mv	s3,a0
	c.beqz	a0,000000002302869E

l23028692:
	lbu	a5,a0,+0000000D
	beq	a5,s7,0000000023028722

l2302869A:
	jal	ra,000000002302753A

l2302869E:
	c.addi	s0,0000000A
	bne	s6,s0,0000000023028678

l230286A4:
	c.li	a0,00000001

l230286A6:
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

l230286BE:
	lui	s0,00042012
	addi	s0,s0,+00000650
	addi	s5,s0,+00000030

l230286CA:
	addi	s3,s0,+00000001
	c.li	a2,00000007
	c.addi4spn	a1,00000008
	c.mv	a0,s3
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	sb	zero,sp,+0000000E
	jal	ra,000000002306CEF8
	c.beqz	a0,0000000023028714

l230286E4:
	c.li	a1,00000004
	c.mv	a0,s3
	jal	ra,000000002302749E
	c.bnez	a0,000000002302871C

l230286EE:
	c.lw	s1,8(a5)
	lbu	a0,s0,+00000000
	c.mv	a1,s3
	c.lw	a5,36(a5)
	lbu	a3,a5,+00000002
	lbu	a4,a5,+00000003
	lbu	a2,a5,+00000000
	lbu	a5,a5,+00000001
	c.slli	a4,08
	c.or	a3,a4
	c.slli	a5,08
	c.or	a2,a5
	jal	ra,000000002302857A

l23028714:
	c.addi	s0,0000000C
	bne	s0,s5,00000000230286CA

l2302871A:
	c.j	000000002302866C

l2302871C:
	jal	ra,000000002302753A
	c.j	0000000023028714

l23028722:
	lw	a5,s4,+00000020
	c.beqz	a5,0000000023028732

l23028728:
	c.mv	a1,s2
	c.jalr	a5
	c.bnez	a0,0000000023028732

l2302872E:
	c.mv	a0,s3
	c.j	000000002302869A

l23028732:
	lhu	a1,s2,+00000010
	lhu	a5,s1,+00000004
	c.lw	s1,8(a2)
	c.addi	a1,FFFFFFFF
	c.slli	a1,10
	c.srli	a1,00000010
	c.mv	a0,s3
	bne	a5,s8,000000002302875E

l23028748:
	jal	ra,0000000023028142

l2302874C:
	c.mv	s5,a0
	c.mv	a0,s3
	jal	ra,000000002302753A
	blt	s5,zero,0000000023028764

l23028758:
	sw	zero,s1,+00000000
	c.j	000000002302869E

l2302875E:
	jal	ra,0000000023027FCC
	c.j	000000002302874C

l23028764:
	c.li	a0,00000000
	c.j	00000000230286A6

;; sc_indicate: 23028768
;;   Called from:
;;     23028984 (in bt_gatt_service_unregister)
;;     23028D04 (in bt_gatt_service_register)
sc_indicate proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.mv	s1,a1
	c.mv	s3,a0
	c.li	a1,00000004
	c.li	a0,00000000
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	lui	s0,00042012
	jal	ra,000000002302749E
	c.mv	s2,a0
	addi	s0,s0,+000005F8
	c.beqz	a0,00000000230287D0

l2302878C:
	c.li	a1,00000001
	addi	a0,s0,+00000054
	jal	ra,00000000230254FA
	c.andi	a0,00000001
	c.bnez	a0,00000000230287D0

l2302879A:
	sh	s3,s0,+0000002C

l2302879E:
	sh	s1,s0,+0000002E

l230287A2:
	addi	a0,s0,+00000054
	jal	ra,00000000230254AC
	c.srai	a0,00000001
	c.andi	a0,00000001
	c.bnez	a0,00000000230287E0

l230287B0:
	beq	s2,zero,00000000230287E0

l230287B4:
	addi	a0,s0,+00000030
	c.li	a1,0000000A
	jal	ra,0000000023025FC2
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,000000002302753A

l230287D0:
	lhu	a4,s0,+0000002C
	lhu	a5,s0,+0000002E
	bltu	s3,a4,00000000230287EE

l230287DC:
	bltu	a5,s1,000000002302879E

l230287E0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l230287EE:
	sh	s3,s0,+0000002C
	bgeu	a5,s1,00000000230287A2

l230287F6:
	c.j	000000002302879E

;; bt_gatt_attr_write_ccc: 230287F8
bt_gatt_attr_write_ccc proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	lw	s5,a1,+0000000C
	c.li	s2,FFFFFFF9
	c.bnez	a4,0000000023028856

l23028810:
	addi	a4,a3,-00000001
	c.slli	a4,10
	c.srli	a4,00000010
	c.li	a6,00000001
	c.li	s2,FFFFFFF3
	bltu	a6,a4,0000000023028856

l23028820:
	lbu	s1,a2,+00000000
	bne	a3,a6,000000002302886A

l23028828:
	c.slli	s1,10
	c.srli	s1,00000010

l2302882C:
	c.mv	s4,a1
	c.mv	a1,s5
	c.mv	s2,a3
	c.mv	s3,a0
	jal	ra,0000000023027F4C
	c.mv	s0,a0
	c.bnez	a0,0000000023028888

l2302883C:
	c.beqz	s1,0000000023028856

l2302883E:
	c.mv	a1,s5
	jal	ra,0000000023027F4C
	c.mv	s0,a0
	c.bnez	a0,0000000023028874

l23028848:
	lui	a0,00023077
	addi	a0,a0,-00000550
	jal	ra,0000000023003AC6
	c.li	s2,FFFFFFEF

l23028856:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s2
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l2302886A:
	lbu	a5,a2,+00000001
	c.slli	a5,08
	c.or	s1,a5
	c.j	000000002302882C

l23028874:
	c.li	a2,00000007
	addi	a1,s3,+00000070
	c.addi	a0,00000001
	jal	ra,000000002306CF80
	lbu	a5,s3,+00000008
	sb	a5,s0,+00000000

l23028888:
	lw	a5,s5,+0000001C
	c.bnez	a5,00000000230288C4

l2302888E:
	sh	s1,s0,+00000008
	lhu	a5,s5,+00000014
	beq	a5,s1,00000000230288A2

l2302889A:
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,0000000023027ED0

l230288A2:
	c.bnez	s1,0000000023028856

l230288A4:
	c.li	a2,00000007
	c.addi4spn	a1,00000008
	addi	a0,s0,+00000001
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	sb	zero,sp,+0000000E
	jal	ra,000000002306CF80
	sb	zero,s0,+00000000
	sh	zero,s0,+00000008
	c.j	0000000023028856

l230288C4:
	c.mv	a2,s1
	c.mv	a1,s4
	c.mv	a0,s3
	c.jalr	a5
	c.bnez	a0,000000002302888E

l230288CE:
	c.li	s2,FFFFFFFD
	c.j	0000000023028856

;; bt_gatt_init: 230288D2
;;   Called from:
;;     23028C1C (in bt_gatt_service_register)
;;     2302C112 (in bt_att_init)
bt_gatt_init proc
	lui	a0,0004200E
	c.addi	sp,FFFFFFF0
	c.li	a2,00000001
	c.li	a1,00000000
	addi	a0,a0,+000001B4
	c.swsp	ra,00000084
	jal	ra,0000000023025430
	c.beqz	a0,0000000023028936

l230288E8:
	lui	a3,0004200E
	lui	a5,0004200E
	lui	a2,0004200E
	lhu	a4,a3,+000001B8
	c.li	a1,00000000
	addi	a5,a5,-00000260
	addi	a3,a3,+000001B8
	addi	a2,a2,-00000250

l23028906:
	bltu	a5,a2,0000000023028928

l2302890A:
	c.beqz	a1,0000000023028910

l2302890C:
	sh	a4,a3,+00000000

l23028910:
	c.lwsp	a2,00000020
	lui	a1,00023029
	lui	a0,00042012
	addi	a1,a1,-0000018C
	addi	a0,a0,+00000628
	c.addi	sp,00000010
	jal	zero,0000000023025EA4

l23028928:
	c.lw	a5,4(a1)
	c.addi	a5,00000008
	c.add	a4,a1
	c.slli	a4,10
	c.srli	a4,00000010
	c.li	a1,00000001
	c.j	0000000023028906

l23028936:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; bt_gatt_deinit: 2302893C
;;   Called from:
;;     2301E664 (in bt_disable_action)
bt_gatt_deinit proc
	lui	a0,00042012
	addi	a0,a0,+00000628
	jal	zero,0000000023025ECE

;; bt_gatt_service_unregister: 23028948
;;   Called from:
;;     2302DAD2 (in bl_ble_sync_stop)
bt_gatt_service_unregister proc
	lui	a4,0004200E
	lw	a5,a4,+000001AC
	addi	a2,a0,+00000008
	c.li	a1,00000000

l23028956:
	c.bnez	a5,000000002302895C

l23028958:
	c.li	a0,FFFFFFFE
	c.jr	ra

l2302895C:
	bne	a2,a5,0000000023028992

l23028960:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	addi	a0,a4,+000001AC
	c.swsp	ra,00000084
	jal	ra,0000000023027E62
	c.lw	s0,4(a5)
	c.li	a3,00000014
	c.lw	s0,0(a4)
	add	a5,a5,a3
	lhu	a0,a4,+00000010
	c.add	a5,a4
	lhu	a1,a5,-00000004
	jal	ra,0000000023028768
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23028992:
	c.mv	a1,a5
	c.lw	a5,0(a5)
	c.j	0000000023028956

;; bt_gatt_attr_read: 23028998
;;   Called from:
;;     2302D8FC (in read_data)
bt_gatt_attr_read proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	s0,FFFFFFF9
	bltu	a6,a4,00000000230289BE

l230289A4:
	sub	s0,a6,a4
	bge	a3,s0,00000000230289AE

l230289AC:
	c.mv	s0,a3

l230289AE:
	c.slli	s0,10
	c.srli	s0,00000010
	c.mv	a0,a2
	add	a1,a5,a4
	c.mv	a2,s0
	jal	ra,000000002306CF80

l230289BE:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bt_gatt_attr_value_handle: 230289C8
;;   Called from:
;;     23028A2C (in bt_gatt_attr_read_chrc)
;;     23028E20 (in bt_gatt_indicate)
bt_gatt_attr_value_handle proc
	c.beqz	a0,0000000023028A0A

l230289CA:
	c.lw	a0,4(a2)
	lui	a3,00023029
	addi	a3,a3,-000005F2
	c.li	a5,00000000
	bne	a2,a3,00000000230289EE

l230289DA:
	c.lw	a0,12(a5)
	lhu	a5,a5,+00000004
	c.bnez	a5,00000000230289EE

l230289E2:
	lhu	a5,a0,+00000010
	c.beqz	a5,00000000230289F2

l230289E8:
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010

l230289EE:
	c.mv	a0,a5
	c.jr	ra

l230289F2:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023027E88
	c.addi	a0,00000001
	c.lwsp	a2,00000020
	slli	a5,a0,00000010
	c.srli	a5,00000010
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23028A0A:
	c.li	a5,00000000
	c.j	00000000230289EE

;; bt_gatt_attr_read_chrc: 23028A0E
bt_gatt_attr_read_chrc proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.lw	a1,12(s0)
	c.mv	a0,a1
	c.mv	s3,a2
	lbu	a5,s0,+00000006
	c.mv	s2,a3
	c.mv	s1,a4
	sb	a5,sp,+0000000C
	jal	ra,00000000230289C8
	sb	a0,sp,+0000000D
	c.srli	a0,00000008
	sb	a0,sp,+0000000E
	c.lw	s0,0(a1)
	lbu	a5,a1,+00000000
	c.bnez	a5,0000000023028A84

l23028A42:
	lhu	a5,a1,+00000002
	sb	a5,sp,+0000000F
	c.srli	a5,00000008
	sb	a5,sp,+00000010
	c.li	a5,00000005

l23028A52:
	c.li	s0,FFFFFFF9
	bltu	a5,s1,0000000023028A74

l23028A58:
	sub	s0,a5,s1
	bge	s2,s0,0000000023028A62

l23028A60:
	c.mv	s0,s2

l23028A62:
	c.slli	s0,10
	c.srli	s0,00000010
	c.addi4spn	a5,0000000C
	c.mv	a2,s0
	add	a1,a5,s1
	c.mv	a0,s3
	jal	ra,000000002306CF80

l23028A74:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l23028A84:
	c.li	a2,00000010
	c.addi	a1,00000001
	addi	a0,sp,+0000000F
	jal	ra,000000002306CF80
	c.li	a5,00000013
	c.j	0000000023028A52

;; bt_gatt_foreach_attr_type: 23028A94
;;   Called from:
;;     23028C04 (in bt_gatt_foreach_attr)
;;     23028DE0 (in bt_gatt_indicate)
;;     23028E6C (in bt_gatt_indicate)
;;     2302AB62 (in bt_gatt_foreach_attr)
bt_gatt_foreach_attr_type proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	s9,00000098
	c.swsp	ra,000000AC
	c.swsp	s1,000000A8
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	s10,00000018
	c.swsp	s11,00000094
	c.mv	s2,a0
	c.mv	s7,a1
	c.mv	s3,a2
	c.mv	s4,a3
	c.mv	s8,a5
	c.mv	s9,a6
	c.mv	s0,a4
	c.bnez	a4,0000000023028AC4

l23028AC0:
	c.lui	s0,00010000
	c.addi	s0,FFFFFFFF

l23028AC4:
	lui	a5,0004200E
	lhu	a5,a5,+000001B8
	bgeu	a5,s2,0000000023028B92

l23028AD0:
	lui	a5,0004200E
	lw	a5,a5,+000001AC
	c.li	s10,00000014
	addi	s1,a5,-00000008
	c.beqz	a5,0000000023028B68

l23028AE0:
	c.beqz	s1,0000000023028B68

l23028AE2:
	c.lw	s1,8(a5)
	c.beqz	a5,0000000023028AF8

l23028AE6:
	addi	a4,a5,-00000008
	c.beqz	a4,0000000023028AF8

l23028AEC:
	lw	a5,a5,-00000008
	lhu	a5,a5,+00000010
	bgeu	s2,a5,0000000023028BE8

l23028AF8:
	c.li	s5,00000000
	c.j	0000000023028BE2

l23028AFC:
	lw	s1,s11,+00000004
	c.add	s1,s6
	bgeu	s1,s2,0000000023028B8E

l23028B06:
	c.slli	s1,10
	c.srli	s1,00000010

l23028B0A:
	c.addi	s11,00000008
	c.mv	s6,s1

l23028B0E:
	bltu	s11,s5,0000000023028AFC

l23028B12:
	c.j	0000000023028AD0

l23028B14:
	c.lwsp	a2,00000064
	c.mv	a0,s3
	jal	ra,000000002302A3CE
	c.beqz	a0,0000000023028B54

l23028B1E:
	c.addi	s10,00000001

l23028B20:
	lw	a4,s11,+00000004
	add	s1,s6,s10
	c.slli	s1,10
	c.srli	s1,00000010
	bgeu	s10,a4,0000000023028B0A

l23028B30:
	c.li	a5,00000014
	add	a1,s10,a5
	lw	a4,s11,+00000000
	c.li	a2,00000014
	c.addi4spn	a0,0000000C
	c.add	a1,a4
	jal	ra,000000002306CF80
	sh	s1,sp,+0000001C
	bltu	s7,s1,0000000023028B68

l23028B4C:
	bltu	s1,s2,0000000023028B1E

l23028B50:
	bne	s3,zero,0000000023028B14

l23028B54:
	bne	s4,zero,0000000023028B86

l23028B58:
	c.addi	s0,FFFFFFFF
	c.slli	s0,10
	c.srli	s0,00000010
	c.mv	a1,s9
	c.addi4spn	a0,0000000C
	c.jalr	s8
	c.beqz	s0,0000000023028B68

l23028B66:
	c.bnez	a0,0000000023028B1E

l23028B68:
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

l23028B86:
	c.lwsp	s8,000000C4
	bne	s4,a4,0000000023028B1E

l23028B8C:
	c.j	0000000023028B58

l23028B8E:
	c.li	s10,00000000
	c.j	0000000023028B20

l23028B92:
	lui	s11,0004200E
	lui	s5,0004200E
	addi	s11,s11,-00000260
	c.li	s6,00000001
	addi	s5,s5,-00000250
	c.j	0000000023028B0E

l23028BA6:
	add	s6,s5,s10
	c.lw	s1,0(a5)
	c.add	s6,a5
	lhu	a5,s6,+00000010
	bltu	s7,a5,0000000023028B68

l23028BB6:
	bltu	a5,s2,0000000023028BE0

l23028BBA:
	bne	s3,zero,0000000023028BD4

l23028BBE:
	bne	s4,zero,0000000023028BF0

l23028BC2:
	c.addi	s0,FFFFFFFF
	c.slli	s0,10
	c.srli	s0,00000010
	c.mv	a1,s9
	c.mv	a0,s6
	c.jalr	s8
	c.beqz	s0,0000000023028B68

l23028BD0:
	c.bnez	a0,0000000023028BE0

l23028BD2:
	c.j	0000000023028B68

l23028BD4:
	lw	a1,s6,+00000000
	c.mv	a0,s3
	jal	ra,000000002302A3CE
	c.beqz	a0,0000000023028BBE

l23028BE0:
	c.addi	s5,00000001

l23028BE2:
	c.lw	s1,4(a5)
	bltu	s5,a5,0000000023028BA6

l23028BE8:
	c.lw	s1,8(s1)
	c.beqz	s1,0000000023028B68

l23028BEC:
	c.addi	s1,FFFFFFF8
	c.j	0000000023028AE0

l23028BF0:
	lw	a5,s6,+0000000C
	bne	s4,a5,0000000023028BE0

l23028BF8:
	c.j	0000000023028BC2

;; bt_gatt_foreach_attr: 23028BFA
;;   Called from:
;;     23028D1A (in bt_gatt_service_register)
;;     2302A216 (in bt_gatt_connected)
;;     2302A28A (in bt_gatt_encrypt_change)
;;     2302A2BA (in bt_gatt_disconnected)
bt_gatt_foreach_attr proc
	c.mv	a6,a3
	c.mv	a5,a2
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	jal	zero,0000000023028A94

;; bt_gatt_service_register: 23028C08
;;   Called from:
;;     2302DA86 (in bl_ble_sync_start)
bt_gatt_service_register proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.mv	s1,a0
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	jal	ra,00000000230288D2
	c.lw	s1,0(a5)
	c.lui	s0,00002000
	c.addi4spn	a1,00000004
	c.lw	a5,0(a0)
	addi	a5,s0,-00000800
	sb	zero,sp,+00000004
	sh	a5,sp,+00000006
	jal	ra,000000002302A3CE
	c.bnez	a0,0000000023028C52

l23028C3A:
	addi	a0,zero,-00000045

l23028C3E:
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

l23028C52:
	c.lw	s1,0(a5)
	addi	s0,s0,-000007FF
	c.addi4spn	a1,00000008
	c.lw	a5,0(a0)
	sb	zero,sp,+00000008
	sh	s0,sp,+0000000A
	jal	ra,000000002302A3CE
	c.beqz	a0,0000000023028C3A

l23028C6A:
	lui	s0,0004200E
	lw	a5,s0,+000001AC
	lw	s3,s1,+00000000
	lhu	s4,s1,+00000004
	addi	s0,s0,+000001AC
	c.bnez	a5,0000000023028C90

l23028C80:
	lui	a5,0004200E
	lhu	s2,a5,+000001B8
	c.li	s5,00000000

l23028C8A:
	lui	s6,00023028
	c.j	0000000023028CCA

l23028C90:
	c.lw	s0,4(a5)
	c.beqz	a5,0000000023028D7C

l23028C94:
	lw	a4,a5,-00000004
	c.li	a3,00000014
	lw	a5,a5,-00000008
	add	a4,a4,a3
	c.add	a5,a4
	lhu	s2,a5,-00000004
	c.mv	s5,s2
	c.j	0000000023028C8A

l23028CAC:
	lhu	a1,s3,+00000010
	c.bnez	a1,0000000023028D0C

l23028CB2:
	c.addi	s2,00000001
	slli	a1,s2,00000010
	c.srli	a1,00000010
	sh	a1,s3,+00000010

l23028CBE:
	c.addi	s4,FFFFFFFF
	c.slli	s4,10
	c.addi	s3,00000014
	srli	s4,s4,00000010
	c.mv	s2,a1

l23028CCA:
	beq	s3,zero,0000000023028CD2

l23028CCE:
	bne	s4,zero,0000000023028CAC

l23028CD2:
	beq	s5,zero,0000000023028CE0

l23028CD6:
	c.lw	s1,0(a5)
	lhu	a2,a5,+00000010
	bgeu	s5,a2,0000000023028D3A

l23028CE0:
	addi	a5,s1,+00000008

l23028CE4:
	c.lw	s0,4(a4)
	sw	zero,s1,+00000008
	c.bnez	a4,0000000023028D60

l23028CEC:
	c.sw	s0,4(a5)
	c.sw	s0,0(a5)

l23028CF0:
	c.lw	s1,4(a5)
	c.li	a3,00000014
	c.lw	s1,0(a4)
	add	a5,a5,a3
	lhu	a0,a4,+00000010
	c.add	a5,a4
	lhu	a1,a5,-00000004
	jal	ra,0000000023028768
	c.li	a0,00000000
	c.j	0000000023028C3E

l23028D0C:
	bltu	s2,a1,0000000023028CBE

l23028D10:
	c.addi4spn	a3,0000000C
	addi	a2,s6,-0000017E
	c.mv	a0,a1
	c.swsp	zero,00000084
	jal	ra,0000000023028BFA
	c.lwsp	a2,000000E4
	c.beqz	a5,0000000023028D36

l23028D22:
	lhu	a1,s3,+00000010
	lui	a0,00023077
	addi	a0,a0,-000004F8
	jal	ra,0000000023003AC6
	c.li	a0,FFFFFFEA
	c.j	0000000023028C3E

l23028D36:
	c.mv	a1,s2
	c.j	0000000023028CBE

l23028D3A:
	c.lw	s0,0(a3)
	c.beqz	a3,0000000023028CF0

l23028D3E:
	addi	a5,a3,-00000008
	c.li	a4,00000000

l23028D44:
	c.beqz	a5,0000000023028CF0

l23028D46:
	c.lw	a5,0(a1)
	lhu	a1,a1,+00000010
	bgeu	a2,a1,0000000023028D70

l23028D50:
	addi	a5,s1,+00000008
	c.beqz	a4,0000000023028D66

l23028D56:
	c.lw	a4,8(a3)
	c.beqz	a3,0000000023028CE4

l23028D5A:
	c.sw	s1,8(a3)
	c.sw	a4,8(a5)
	c.j	0000000023028CF0

l23028D60:
	c.sw	a4,0(a5)

l23028D62:
	c.sw	s0,4(a5)
	c.j	0000000023028CF0

l23028D66:
	c.lw	s0,4(a4)
	c.sw	s1,8(a3)
	c.sw	s0,0(a5)
	c.bnez	a4,0000000023028CF0

l23028D6E:
	c.j	0000000023028D62

l23028D70:
	c.lw	a5,8(a1)
	c.beqz	a1,0000000023028CF0

l23028D74:
	c.mv	a4,a5
	addi	a5,a1,-00000008
	c.j	0000000023028D44

l23028D7C:
	lw	a5,zero,+00000000
	c.ebreak

;; bt_gatt_indicate: 23028D82
;;   Called from:
;;     23028D80 (in bt_gatt_service_register)
;;     23028EC6 (in sc_process)
;;     23029050 (in update_ccc)
bt_gatt_indicate proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.lw	a1,28(a4)
	c.swsp	a4,00000004
	c.beqz	a0,0000000023028DA0

l23028D92:
	lbu	a2,a0,+0000000D
	c.li	a3,00000004
	addi	a5,zero,-00000039
	bne	a2,a3,0000000023028DB6

l23028DA0:
	lhu	s0,a4,+00000010
	c.mv	s1,a1
	c.mv	s2,a0
	c.bnez	s0,0000000023028DC4

l23028DAA:
	c.mv	a0,a4
	jal	ra,0000000023027E88
	c.mv	s0,a0
	c.bnez	a0,0000000023028DC4

l23028DB4:
	c.li	a5,FFFFFFFE

l23028DB6:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.mv	a0,a5
	c.addi16sp	00000030
	c.jr	ra

l23028DC4:
	c.lw	s1,24(a2)
	c.beqz	a2,0000000023028DF6

l23028DC8:
	lui	a5,00023028
	c.lui	a1,00010000
	c.mv	a0,s0
	addi	a6,sp,+00000008
	addi	a5,a5,+000001E6
	c.li	a4,00000001
	c.li	a3,00000000
	c.addi	a1,FFFFFFFF
	c.swsp	zero,00000004
	jal	ra,0000000023028A94
	c.lwsp	s0,00000044
	c.beqz	a0,0000000023028DB4

l23028DE8:
	lhu	s0,a0,+00000010
	c.bnez	s0,0000000023028DF6

l23028DEE:
	jal	ra,0000000023027E88
	c.mv	s0,a0
	c.beqz	a0,0000000023028DB4

l23028DF6:
	c.lwsp	s0,000000E4
	c.addi4spn	a1,0000000C
	c.lw	a5,0(a0)
	c.lui	a5,00003000
	addi	a5,a5,-000007FD
	sb	zero,sp,+0000000C
	sh	a5,sp,+0000000E
	jal	ra,000000002302A3CE
	c.bnez	a0,0000000023028E26

l23028E10:
	c.lw	s1,28(a0)
	c.lw	a0,12(a5)
	lbu	a4,a5,+00000006
	c.li	a5,FFFFFFEA
	andi	a4,a4,+00000020
	c.beqz	a4,0000000023028DB6

l23028E20:
	jal	ra,00000000230289C8
	c.mv	s0,a0

l23028E26:
	beq	s2,zero,0000000023028E38

l23028E2A:
	c.mv	a2,s1
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,0000000023028142
	c.mv	a5,a0
	c.j	0000000023028DB6

l23028E38:
	addi	a5,zero,-00000039
	c.swsp	a5,00000088
	c.li	a5,00000002
	sh	a5,sp,+00000018
	c.lui	a5,00003000
	addi	a5,a5,-000006FE
	sh	a5,sp,+00000012
	c.lui	a1,00010000
	lui	a5,00023028
	addi	a5,a5,+00000630
	addi	a6,sp,+00000014
	c.li	a4,00000001
	c.li	a3,00000000
	c.addi4spn	a2,00000010
	c.addi	a1,FFFFFFFF
	c.mv	a0,s0
	c.swsp	s1,0000008C
	sb	zero,sp,+00000010
	jal	ra,0000000023028A94
	c.lwsp	s4,000000E4
	c.j	0000000023028DB6

;; sc_process: 23028E74
sc_process proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	lw	a5,a0,-00000004
	addi	s1,a0,+00000024
	c.mv	s0,a0
	addi	s2,a0,-00000030
	c.li	a1,FFFFFFFE
	c.mv	a0,s1
	c.swsp	a5,00000084
	jal	ra,0000000023025522
	lui	a5,00023077
	addi	a5,a5,-00000604
	sw	a5,s0,+00000FEC
	lui	a5,00023028
	addi	a5,a5,+000001EC
	sw	a5,s0,+00000FF0
	c.addi4spn	a5,0000000C
	sw	a5,s0,+00000FF4
	c.li	a5,00000004
	sh	zero,s0,+00000FFC
	sh	zero,s0,+00000FFE
	sh	a5,s0,+00000FF8
	c.mv	a1,s2
	c.li	a0,00000000
	jal	ra,0000000023028D82
	c.bnez	a0,0000000023028ED4

l23028ECC:
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,00000000230254FA

l23028ED4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; bt_gatt_get_mtu: 23028EE0
;;   Called from:
;;     23023E88 (in exchange_func)
;;     2302D094 (in __bl_ble_sync_task)
bt_gatt_get_mtu proc
	jal	zero,000000002302C116

;; bt_gatt_check_perm: 23028EE4
;;   Called from:
;;     23028F9C (in update_ccc)
;;     2302ACB4 (in read_type_cb)
;;     2302B63E (in write_cb)
;;     2302B6DA (in read_cb)
bt_gatt_check_perm proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	andi	a5,a2,+00000001
	lbu	s0,a1,+00000012
	c.beqz	a5,0000000023028F02

l23028EF6:
	andi	a4,s0,+00000015
	c.li	a5,00000002
	c.beqz	a4,0000000023028F24

l23028EFE:
	c.lw	a1,4(a4)
	c.beqz	a4,0000000023028F24

l23028F02:
	andi	a5,a2,+00000002
	c.beqz	a5,0000000023028F14

l23028F08:
	andi	a4,s0,+0000002A
	c.li	a5,00000003
	c.beqz	a4,0000000023028F24

l23028F10:
	c.lw	a1,8(a4)
	c.beqz	a4,0000000023028F24

l23028F14:
	c.and	s0,a2
	andi	a5,s0,+00000030
	c.mv	s1,a0
	c.bnez	a5,0000000023028F30

l23028F1E:
	andi	a5,s0,+0000000C
	c.bnez	a5,0000000023028F3E

l23028F24:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23028F30:
	jal	ra,0000000023026D1A
	c.li	a4,00000002
	c.li	a5,00000005
	bltu	a4,a0,0000000023028F1E

l23028F3C:
	c.j	0000000023028F24

l23028F3E:
	lbu	a4,s1,+0000000B
	c.li	a5,00000000
	c.bnez	a4,0000000023028F24

l23028F46:
	c.li	a5,0000000F
	c.j	0000000023028F24

;; update_ccc: 23028F4A
update_ccc proc
	c.lw	a0,8(a4)
	lui	a5,00023028
	addi	a5,a5,+000007F8
	bne	a4,a5,000000002302908A

l23028F58:
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s4,00000014
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s3,00000094
	c.swsp	s5,00000090
	lw	s5,a0,+0000000C
	c.lw	a1,0(s0)
	c.mv	s4,a1
	c.mv	s1,a0
	addi	s2,s5,+00000001
	addi	s6,s5,+00000015
	c.li	s7,00000003
	c.li	s8,00000005
	lui	s9,00023077

l23028F8A:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,0000000023027318
	c.bnez	a0,0000000023028FB0

l23028F94:
	addi	a2,zero,+0000002A
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023028EE4
	c.beqz	a0,0000000023028FD8

l23028FA2:
	bne	a0,s7,0000000023028FB8

l23028FA6:
	c.mv	a1,s1
	addi	a0,s9,-000003FC
	jal	ra,0000000023003AC6

l23028FB0:
	c.addi	s2,0000000A
	beq	s2,s6,000000002302906E

l23028FB6:
	c.j	0000000023028F8A

l23028FB8:
	c.li	s3,00000002
	bne	a0,s8,0000000023028FC0

l23028FBE:
	c.li	s3,00000003

l23028FC0:
	c.mv	a0,s0
	jal	ra,0000000023026D1A
	bgeu	a0,s3,0000000023028FD8

l23028FCA:
	lbu	a5,s4,+00000004
	bgeu	a5,s3,0000000023028FB0

l23028FD2:
	sb	s3,s4,+00000004
	c.j	0000000023028FB0

l23028FD8:
	lhu	a5,s2,+00000007
	c.beqz	a5,0000000023028FB0

l23028FDE:
	c.mv	a1,s5
	c.mv	a0,s1
	jal	ra,0000000023027ED0
	lui	a5,0004200D
	addi	a5,a5,+00000514
	bne	s5,a5,000000002302906E

l23028FF2:
	lbu	a0,s0,+00000008
	addi	a1,s0,+00000070
	jal	ra,0000000023028312
	c.mv	s1,a0
	c.beqz	a0,000000002302906E

l23029002:
	lhu	a4,a0,+00000008
	lhu	a5,a0,+0000000A
	or	a3,a4,a5
	c.beqz	a3,000000002302906E

l23029010:
	c.mv	a0,s0
	sh	a5,sp,+0000000E
	sh	a4,sp,+0000000C
	jal	ra,0000000023027CEC
	addi	a1,zero,+0000002C
	add	a0,a0,a1
	lui	a1,00042012
	addi	a1,a1,+00000680
	lui	a5,00023077
	addi	a5,a5,-00000604
	c.add	a1,a0
	c.sw	a1,28(a5)
	lui	a5,00023028
	addi	a5,a5,-000000F8
	c.sw	a1,32(a5)
	c.addi4spn	a5,0000000C
	c.sw	a1,36(a5)
	c.li	a5,00000004
	sh	a5,a1,+00000028
	c.mv	a0,s0
	jal	ra,0000000023028D82
	c.beqz	a0,0000000023029062

l23029056:
	lui	a0,00023077
	addi	a0,a0,-000003E4
	jal	ra,0000000023003AC6

l23029062:
	c.li	a2,00000004
	c.li	a1,00000000
	addi	a0,s1,+00000008
	jal	ra,000000002306D1BC

l2302906E:
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
	c.li	a0,00000001
	c.addi16sp	00000040
	c.jr	ra

l2302908A:
	c.li	a0,00000001
	c.jr	ra

;; bt_gatt_exchange_mtu: 2302908E
;;   Called from:
;;     23023E52 (in ble_exchange_mtu)
;;     2302D982 (in blsync_connected)
bt_gatt_exchange_mtu proc
	lbu	a3,a0,+0000000D
	c.li	a4,00000004
	bne	a3,a4,00000000230290E0

l23029098:
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.li	a2,00000002
	c.mv	s2,a1
	c.li	a1,00000002
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002302B748
	c.mv	s1,a0
	c.beqz	a0,00000000230290E6

l230290B2:
	c.li	a1,00000002
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.li	a5,FFFFFFF7
	sb	a5,a0,+00000000
	sb	zero,a0,+00000001
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a3,s2
	c.mv	a1,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	lui	a2,00023028
	addi	a2,a2,-000000C4
	c.addi	sp,00000010
	jal	zero,0000000023028106

l230290E0:
	addi	a0,zero,-00000039
	c.jr	ra

l230290E6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bt_gatt_discover: 230290F4
;;   Called from:
;;     23024998 (in ble_discover)
;;     23029374 (in gatt_discover_next)
bt_gatt_discover proc
	lbu	a4,a0,+0000000D
	c.li	a5,00000004
	bne	a4,a5,000000002302935E

l230290FE:
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	ra,0000009C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.mv	s0,a1
	lbu	a1,a1,+00000028
	c.li	a5,00000005
	c.mv	s1,a0
	bltu	a5,a1,0000000023029350

l23029118:
	lui	a5,00023077
	addi	a5,a5,-00000644
	c.slli	a1,02
	c.add	a1,a5
	c.lw	a1,0(a5)
	c.jr	a5
23029128                         1C 4C F1 C7 19 46 99 45         .L...F.E
23029130 EF 20 80 61 2A 89 09 E9 51 55                   . .a*...QU     

l2302913A:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra
23029148                         93 09 85 00 99 45 4E 85         .....EN.
23029150 EF C0 CF F1 83 57 04 02 23 00 F5 00 A1 83 A3 00 .....W..#.......
23029160 F5 00 83 57 64 02 23 01 F5 00 A1 83 A3 01 F5 00 ...Wd.#.........
23029170 83 47 84 02 B1 E3 8D 67 93 87 07 80 23 1F F1 00 .G.....g....#...
23029180 23 0E 01 00 7C 08 83 D7 27 00 23 02 F5 00 A1 83 #...|...'.#.....
23029190 A3 02 F5 00 1C 4C 83 C5 07 00 85 C9 09 47 63 85 .....L.......Gc.
230291A0 E5 04 37 75 07 23 13 05 05 AD EF A0 DD 91 4A 85 ..7u.#........J.
230291B0 EF C0 EF D9                                     ....           

l230291B4:
	c.li	a0,FFFFFFEA
	c.j	000000002302913A
230291B8                         8D 67 93 87 17 80 23 1D         .g....#.
230291C0 F1 00 23 0C 01 00 3C 08 7D BF 83 D5 27 00 4E 85 ..#...<.}...'.N.
230291D0 EF C0 AF ED 37 96 02 23 A2 86 13 06 66 3B CA 85 ....7..#....f;..
230291E0 26 85 EF E0 5F F2 91 BF 41 46 93 85 17 00 4E 85 &..._...AF....N.
230291F0 EF C0 EF E8 C5 B7 11 46 C1 45 EF 20 E0 54 2A 89 .......F.E. .T*.
23029200 05 DD 93 09 85 00 91 45 4E 85 EF C0 2F E6 83 57 .......EN.../..W
23029210 04 02 8D 65 23 00 F5 00 A1 83 A3 00 F5 00 83 57 ...e#..........W
23029220 64 02 23 01 F5 00 A1 83 A3 01 F5 00 83 47 84 02 d.#..........G..
23029230 81 EF 93 85 05 80 4E 85 EF C0 2F E7 37 96 02 23 ......N.../.7..#
23029240 A2 86 13 06 66 49 61 BF 93 85 15 80 ED B7 11 46 ....fIa........F
23029250 A1 45 EF 20 60 4F 2A 89 E3 00 05 EE 93 09 85 00 .E. `O*.........
23029260 91 45 4E 85 EF C0 8F E0 83 57 04 02 8D 65 23 00 .EN......W...e#.
23029270 F5 00 A1 83 A3 00 F5 00 83 57 64 02 23 01 F5 00 .........Wd.#...
23029280 A1 83 A3 01 F5 00 03 47 84 02 89 47 63 1D F7 00 .......G...Gc...
23029290 93 85 25 80 4E 85 EF C0 4F E1 37 96 02 23 A2 86 ..%.N...O.7..#..
230292A0 13 06 C6 5E 2D BF 93 85 35 80 ED B7 08 4C 2D C1 ...^-...5....L-.
230292B0 0D 69 93 07 09 80 2C 00 23 04 01 00 23 15 F1 00 .i....,.#...#...
230292C0 EF 10 E0 10 E3 08 05 EE 08 4C 93 07 19 80 6C 00 .........L....l.
230292D0 23 06 01 00 23 17 F1 00 EF 10 60 0F E3 0C 05 EC #...#.....`.....
230292E0 08 4C 93 07 29 80 0C 08 23 08 01 00 23 19 F1 00 .L..)...#...#...
230292F0 EF 10 E0 0D E3 00 05 EC 08 4C 13 09 39 80 4C 08 .........L..9.L.
23029300 23 0A 01 00 23 1B 21 01 EF 10 60 0C E3 04 05 EA #...#.!...`.....
23029310 11 46 91 45 26 85 EF 20 20 43 2A 89 E3 0E 05 E0 .F.E&..  C*.....
23029320 91 45 21 05 EF C0 8F D4 83 57 04 02 37 A6 02 23 .E!......W..7..#
23029330 A2 86 23 00 F5 00 A1 83 A3 00 F5 00 83 57 64 02 ..#..........Wd.
23029340 13 06 06 92 23 01 F5 00 A1 83 A3 01 F5 00 41 BD ....#.........A.

l23029350:
	lui	a0,00023077
	addi	a0,a0,-00000518
	jal	ra,0000000023003AC6
	c.j	00000000230291B4

l2302935E:
	addi	a0,zero,-00000039
	c.jr	ra

;; gatt_discover_next: 23029364
;;   Called from:
;;     230293FC (in gatt_find_type_rsp)
;;     23029542 (in gatt_read_group_rsp)
;;     23029768 (in gatt_read_type_rsp)
;;     23029910 (in read_included_uuid_cb)
;;     230299A2 (in gatt_find_info_rsp)
gatt_discover_next proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.bnez	a1,0000000023029384

l2302936E:
	c.mv	a1,a2
	c.mv	a0,s0
	c.swsp	a2,00000084
	jal	ra,00000000230290F4
	c.lwsp	a2,00000084
	c.bnez	a0,0000000023029392

l2302937C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23029384:
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	bne	a1,a5,00000000230293A2

l2302938C:
	c.li	a5,FFFFFFFF
	sh	a5,a2,+00000020

l23029392:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	lw	t1,a2,+0000001C
	c.li	a1,00000000
	c.addi16sp	00000020
	c.jr	t1

l230293A2:
	c.addi	a1,00000001
	c.slli	a1,10
	lhu	a5,a2,+00000026
	c.srli	a1,00000010
	sh	a1,a2,+00000020
	bgeu	a5,a1,000000002302936E

l230293B4:
	c.j	0000000023029392

;; gatt_find_type_rsp: 230293B6
gatt_find_type_rsp proc
	c.addi16sp	FFFFFF90
	c.swsp	s8,00000024
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s1,000000B0
	c.swsp	s2,00000030
	c.swsp	s3,000000AC
	c.swsp	s4,0000002C
	c.swsp	s5,000000A8
	c.swsp	s6,00000028
	c.swsp	s7,000000A4
	c.swsp	s9,000000A0
	c.mv	s8,a0
	c.bnez	a1,000000002302948A

l230293D2:
	c.lui	a5,00003000
	c.mv	s4,a1
	c.mv	s9,a2
	c.li	s0,00000000
	c.li	s5,00000003
	addi	s6,a5,-000007FF
	addi	s7,sp,+00000020
	addi	s1,a5,-00000800
	addi	s2,sp,+0000001C
	addi	s3,sp,+00000024

l230293F0:
	bltu	s5,a3,000000002302941A

l230293F4:
	c.bnez	a3,000000002302948A

l230293F6:
	c.mv	a2,a4
	c.mv	a1,s0
	c.mv	a0,s8
	jal	ra,0000000023029364

l23029400:
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
	c.addi16sp	00000070
	c.jr	ra

l2302941A:
	slli	a5,s4,00000002
	c.add	a5,s9
	lbu	a2,a5,+00000001
	lbu	a1,a5,+00000000
	lbu	s0,a5,+00000003
	c.slli	a2,08
	c.or	a2,a1
	lbu	a1,a5,+00000002
	lbu	a5,a4,+00000028
	c.slli	s0,08
	c.swsp	zero,00000018
	c.swsp	zero,00000098
	c.swsp	zero,0000009C
	c.or	s0,a1
	c.bnez	a5,000000002302947E

l23029444:
	sb	zero,sp,+0000001C
	sh	s1,sp,+0000001E
	c.swsp	s2,00000094

l2302944E:
	c.lw	a4,24(a5)
	sh	a2,sp,+0000003C
	sh	s0,sp,+00000028
	c.swsp	a5,00000090
	c.lw	a4,28(a5)
	c.swsp	s3,0000001C
	c.mv	a2,a4
	c.addi4spn	a1,0000002C
	c.mv	a0,s8
	c.swsp	a3,00000084
	c.swsp	a4,00000004
	c.jalr	a5
	c.beqz	a0,0000000023029400

l2302946C:
	c.lwsp	a2,000000A4
	c.addi	s4,00000001
	andi	s4,s4,+000000FF
	c.addi	a3,FFFFFFFC
	c.slli	a3,10
	c.srli	a3,00000010
	c.lwsp	s0,000000C4
	c.j	00000000230293F0

l2302947E:
	sb	zero,sp,+00000020
	sh	s6,sp,+00000022
	c.swsp	s7,00000094
	c.j	000000002302944E

l2302948A:
	c.lw	a4,28(a5)
	c.mv	a2,a4
	c.li	a1,00000000
	c.mv	a0,s8
	c.jalr	a5
	c.j	0000000023029400

;; gatt_read_group_rsp: 23029496
gatt_read_group_rsp proc
	c.addi16sp	FFFFFF80
	c.swsp	s2,00000038
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	s1,000000B8
	c.swsp	s3,000000B4
	c.swsp	s4,00000034
	c.swsp	s5,000000B0
	c.swsp	s6,00000030
	c.swsp	s7,000000AC
	c.swsp	s8,0000002C
	c.swsp	s9,000000A8
	c.swsp	s10,00000028
	c.swsp	s11,000000A4
	c.mv	s2,a4
	c.beqz	a1,00000000230294DC

l230294B6:
	c.lw	a4,28(a5)
	c.mv	a2,a4
	c.li	a1,00000000

l230294BC:
	c.jalr	a5

l230294BE:
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

l230294DC:
	lbu	a1,a2,+00000000
	c.li	a5,00000006
	c.mv	s5,a0
	c.mv	s3,a2
	beq	a1,a5,0000000023029508

l230294EA:
	c.li	a5,00000014
	beq	a1,a5,0000000023029548

l230294F0:
	lui	a0,00023077
	addi	a0,a0,-00000468
	jal	ra,0000000023003AC6

l230294FC:
	lw	a5,s2,+0000001C
	c.mv	a2,s2
	c.li	a1,00000000
	c.mv	a0,s5
	c.j	00000000230294BC

l23029508:
	sb	zero,sp,+00000018

l2302950C:
	c.addi	a3,FFFFFFFF
	c.lui	s4,00003000
	slli	s1,a3,00000010
	addi	s6,s4,-000007FF
	c.srli	s1,00000010
	addi	s10,s3,+00000001
	c.li	s0,00000000
	addi	s7,sp,+00000008
	addi	s4,s4,-00000800
	addi	s8,sp,+0000000C
	addi	s9,sp,+00000018

l23029530:
	lbu	a5,s3,+00000000
	bgeu	s1,a5,0000000023029550

l23029538:
	c.bnez	s1,00000000230294FC

l2302953A:
	c.beqz	s0,00000000230294FC

l2302953C:
	c.mv	a2,s2
	c.mv	a1,s0
	c.mv	a0,s5
	jal	ra,0000000023029364
	c.j	00000000230294BE

l23029548:
	c.li	a5,00000002
	sb	a5,sp,+00000018
	c.j	000000002302950C

l23029550:
	lbu	s11,s10,+00000001
	lbu	a5,s10,+00000000
	c.swsp	zero,00000094
	c.slli	s11,08
	c.swsp	zero,00000018
	c.swsp	zero,00000098
	c.swsp	zero,0000001C
	c.swsp	zero,0000009C
	or	s11,s11,a5
	beq	s11,zero,00000000230294FC

l2302956C:
	lbu	s0,s10,+00000003
	lbu	a5,s10,+00000002
	c.slli	s0,08
	c.or	s0,a5
	c.beqz	s0,00000000230294FC

l2302957A:
	bltu	s0,s11,00000000230294FC

l2302957E:
	lbu	a5,sp,+00000018
	c.beqz	a5,00000000230295C4

l23029584:
	c.li	a4,00000002
	beq	a5,a4,00000000230295D4

l2302958A:
	lbu	a5,s2,+00000028
	c.bnez	a5,00000000230295E0

l23029590:
	sb	zero,sp,+0000000C
	sh	s4,sp,+0000000E
	c.swsp	s8,00000094

l2302959A:
	c.addi4spn	a5,00000010
	c.swsp	a5,0000001C
	lw	a5,s2,+0000001C
	sh	s0,sp,+00000014
	c.swsp	s9,00000008
	sh	s11,sp,+0000003C
	c.mv	a2,s2
	c.addi4spn	a1,0000002C
	c.mv	a0,s5
	c.jalr	a5
	c.beqz	a0,00000000230294BE

l230295B6:
	lbu	a5,s3,+00000000
	c.sub	s1,a5
	c.slli	s1,10
	c.srli	s1,00000010
	c.add	s10,a5
	c.j	0000000023029530

l230295C4:
	c.li	a2,00000002
	addi	a1,s10,+00000004
	addi	a0,sp,+0000001A

l230295CE:
	jal	ra,000000002306CF80
	c.j	000000002302958A

l230295D4:
	c.li	a2,00000010
	addi	a1,s10,+00000004
	addi	a0,sp,+00000019
	c.j	00000000230295CE

l230295E0:
	sb	zero,sp,+00000008
	sh	s6,sp,+0000000A
	c.swsp	s7,00000094
	c.j	000000002302959A

;; gatt_read_type_rsp: 230295EC
gatt_read_type_rsp proc
	c.addi16sp	FFFFFF90
	c.swsp	s3,000000AC
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s1,000000B0
	c.swsp	s2,00000030
	c.swsp	s4,0000002C
	c.swsp	s5,000000A8
	c.swsp	s6,00000028
	c.swsp	s7,000000A4
	c.swsp	s8,00000024
	c.swsp	s9,000000A0
	c.swsp	s10,00000020
	c.mv	s3,a4
	c.beqz	a1,0000000023029614

l2302960A:
	c.lw	a4,28(a5)
	c.mv	a2,a4
	c.li	a1,00000000

l23029610:
	c.jalr	a5
	c.j	0000000023029740

l23029614:
	lbu	a4,a4,+00000028
	c.li	a5,00000002
	c.mv	s4,a0
	c.mv	s5,a2
	lbu	a1,a2,+00000000
	bne	a4,a5,0000000023029778

l23029626:
	c.li	a5,00000006
	beq	a1,a5,000000002302966A

l2302962C:
	c.li	a5,00000008
	bne	a1,a5,0000000023029784

l23029632:
	sb	zero,sp,+0000002C

l23029636:
	addi	s1,a3,-00000001
	c.slli	s1,10
	c.lui	s6,00003000
	c.srli	s1,00000010
	addi	s2,s5,+00000001
	c.li	s0,00000000
	addi	s7,sp,+0000002C
	c.li	s8,00000002
	addi	s6,s6,-000007FE
	addi	s9,sp,+00000008
	addi	s10,sp,+00000010

l23029658:
	lbu	a5,s5,+00000000
	bgeu	s1,a5,0000000023029670

l23029660:
	bne	s1,zero,0000000023029790

l23029664:
	beq	s0,zero,0000000023029790

l23029668:
	c.j	0000000023029762

l2302966A:
	sb	a4,sp,+0000002C
	c.j	0000000023029636

l23029670:
	lbu	s0,s2,+00000001
	lbu	a5,s2,+00000000
	c.slli	s0,08
	c.or	s0,a5
	beq	s0,zero,0000000023029790

l23029680:
	lbu	a4,s2,+00000003
	lbu	a5,s2,+00000002
	c.slli	a4,08
	c.or	a4,a5
	sh	a4,sp,+00000014
	lbu	a5,s2,+00000005
	lbu	a3,s2,+00000004
	c.slli	a5,08
	c.or	a5,a3
	lbu	a3,sp,+0000002C
	sh	a5,sp,+00000016
	c.beqz	a3,00000000230296E2

l230296A6:
	beq	a3,s8,00000000230296F6

l230296AA:
	lw	a1,s3,+00000018
	c.bnez	a1,000000002302976E

l230296B0:
	lw	a5,s3,+0000001C
	c.swsp	zero,00000014
	c.swsp	zero,0000008C
	c.swsp	zero,00000010
	sb	zero,sp,+00000008
	sh	s6,sp,+0000000A
	c.swsp	s9,0000000C
	c.swsp	s10,00000090
	sh	s0,sp,+00000028
	c.mv	a2,s3
	c.addi4spn	a1,00000018
	c.mv	a0,s4
	c.jalr	a5
	c.beqz	a0,0000000023029740

l230296D4:
	lbu	a5,s5,+00000000
	c.sub	s1,a5
	c.slli	s1,10
	c.srli	s1,00000010
	c.add	s2,a5
	c.j	0000000023029658

l230296E2:
	c.swsp	s7,00000008
	lbu	a5,s2,+00000007
	lbu	a4,s2,+00000006
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,sp,+0000002E
	c.j	00000000230296AA

l230296F6:
	sh	s0,s3,+00000020
	sh	a4,s3,+00000022
	sh	a5,s3,+00000024
	c.li	a2,00000002
	c.li	a1,0000000A
	c.mv	a0,s4
	jal	ra,000000002302B748
	c.mv	s0,a0
	c.beqz	a0,000000002302975C

l23029710:
	c.li	a1,00000002
	c.addi	a0,00000008
	jal	ra,000000002302586C
	lhu	a5,s3,+00000022
	lui	a2,0002302A
	c.mv	a1,s0
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	c.mv	a3,s3
	addi	a2,a2,-0000078C
	c.mv	a0,s4
	jal	ra,0000000023028106
	slli	s0,a0,00000010
	c.srli	s0,00000010
	c.bnez	s0,0000000023029762

l23029740:
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
	c.addi16sp	00000070
	c.jr	ra

l2302975C:
	c.li	s0,FFFFFFF4
	c.slli	s0,10
	c.srli	s0,00000010

l23029762:
	c.mv	a2,s3
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,0000000023029364
	c.j	0000000023029740

l2302976E:
	c.mv	a0,s7
	jal	ra,000000002302A3CE
	c.beqz	a0,00000000230296B0

l23029776:
	c.j	00000000230296D4

l23029778:
	c.li	a4,00000007
	beq	a1,a4,000000002302979C

l2302977E:
	c.li	a4,00000015
	beq	a1,a4,0000000023029842

l23029784:
	lui	a0,00023077
	addi	a0,a0,-00000468
	jal	ra,0000000023003AC6

l23029790:
	lw	a5,s3,+0000001C
	c.mv	a2,s3
	c.li	a1,00000000
	c.mv	a0,s4
	c.j	0000000023029610

l2302979C:
	sb	zero,sp,+00000018

l230297A0:
	addi	s1,a3,-00000001
	c.slli	s1,10
	c.lui	s6,00003000
	lui	s7,00023029
	c.srli	s1,00000010
	addi	s2,s5,+00000001
	c.li	s0,00000000
	addi	s8,sp,+00000018
	addi	s6,s6,-000007FD
	addi	s9,sp,+0000000C
	addi	s7,s7,-000005F2
	addi	s10,sp,+00000010

l230297C8:
	lbu	a5,s5,+00000000
	bltu	s1,a5,0000000023029660

l230297D0:
	lbu	s0,s2,+00000001
	lbu	a5,s2,+00000000
	c.slli	s0,08
	c.or	s0,a5
	c.beqz	s0,0000000023029790

l230297DE:
	lbu	a5,sp,+00000018
	c.beqz	a5,0000000023029848

l230297E4:
	c.li	a4,00000002
	beq	a5,a4,000000002302985A

l230297EA:
	lw	a1,s3,+00000018
	c.bnez	a1,000000002302986A

l230297F0:
	c.swsp	zero,0000009C
	c.swsp	zero,00000098
	sb	zero,sp,+0000000C
	sh	s6,sp,+0000000E
	c.swsp	s9,00000094
	c.swsp	s7,00000018
	c.swsp	s8,00000008
	lbu	a5,s2,+00000004
	lbu	a4,s2,+00000003
	c.swsp	s10,0000001C
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,sp,+00000014
	lbu	a5,s2,+00000002
	sh	s0,sp,+0000003C
	c.mv	a2,s3
	sb	a5,sp,+00000016
	c.li	a5,00000001
	sb	a5,sp,+0000003E
	lw	a5,s3,+0000001C
	c.addi4spn	a1,0000002C
	c.mv	a0,s4
	c.jalr	a5
	c.beqz	a0,0000000023029740

l23029834:
	lbu	a5,s5,+00000000
	c.sub	s1,a5
	c.slli	s1,10
	c.srli	s1,00000010
	c.add	s2,a5
	c.j	00000000230297C8

l23029842:
	sb	a5,sp,+00000018
	c.j	00000000230297A0

l23029848:
	lbu	a5,s2,+00000006
	lbu	a4,s2,+00000005
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,sp,+0000001A
	c.j	00000000230297EA

l2302985A:
	c.li	a2,00000010
	addi	a1,s2,+00000005
	addi	a0,sp,+00000019
	jal	ra,000000002306CF80
	c.j	00000000230297EA

l2302986A:
	c.mv	a0,s8
	jal	ra,000000002302A3CE
	c.beqz	a0,00000000230297F0

l23029872:
	c.j	0000000023029834

;; read_included_uuid_cb: 23029874
read_included_uuid_cb proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	ra,000000A4
	c.swsp	s2,00000020
	c.li	a5,00000010
	c.mv	s1,a0
	c.mv	s0,a4
	beq	a3,a5,00000000230298AC

l23029888:
	lui	a0,00023077
	c.mv	a1,a3
	addi	a0,a0,-00000468
	jal	ra,0000000023003AC6
	c.lw	s0,28(a5)
	c.mv	a2,s0
	c.li	a1,00000000
	c.mv	a0,s1
	c.jalr	a5

l230298A0:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.addi16sp	00000050
	c.jr	ra

l230298AC:
	lhu	a5,a4,+00000022
	c.mv	a1,a2
	addi	s2,sp,+00000018
	sh	a5,sp,+00000014
	lhu	a5,a4,+00000024
	c.li	a2,00000010
	addi	a0,sp,+00000019
	sh	a5,sp,+00000016
	c.li	a5,00000002
	c.swsp	s2,00000008
	sb	a5,sp,+00000018
	jal	ra,000000002306CF80
	c.lw	s0,24(a1)
	c.bnez	a1,0000000023029916

l230298D8:
	c.lui	a5,00003000
	addi	a5,a5,-000007FE
	sh	a5,sp,+0000000E
	c.addi4spn	a5,0000000C
	c.swsp	a5,00000094
	c.addi4spn	a5,00000010
	c.swsp	a5,0000001C
	lhu	a5,s0,+00000020
	c.swsp	zero,0000009C
	c.swsp	zero,00000018
	sh	a5,sp,+0000003C
	c.lw	s0,28(a5)
	c.swsp	zero,00000098
	sb	zero,sp,+0000000C
	c.mv	a2,s0
	c.addi4spn	a1,0000002C
	c.mv	a0,s1
	c.jalr	a5
	c.beqz	a0,00000000230298A0

l23029908:
	lhu	a1,s0,+00000020
	c.mv	a2,s0
	c.mv	a0,s1
	jal	ra,0000000023029364
	c.j	00000000230298A0

l23029916:
	c.mv	a0,s2
	jal	ra,000000002302A3CE
	c.beqz	a0,00000000230298D8

l2302991E:
	c.j	0000000023029908

;; gatt_find_info_rsp: 23029920
gatt_find_info_rsp proc
	c.addi16sp	FFFFFF90
	c.swsp	s4,0000002C
	c.swsp	s7,000000A4
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s1,000000B0
	c.swsp	s2,00000030
	c.swsp	s3,000000AC
	c.swsp	s5,000000A8
	c.swsp	s6,00000028
	c.swsp	s8,00000024
	c.swsp	s9,000000A0
	c.swsp	s10,00000020
	c.mv	s7,a0
	c.mv	s4,a4
	c.bnez	a1,000000002302995C

l23029940:
	lbu	a1,a2,+00000000
	c.li	a5,00000001
	beq	a1,a5,000000002302996A

l2302994A:
	c.li	a5,00000002
	beq	a1,a5,00000000230299A8

l23029950:
	lui	a0,00023077
	addi	a0,a0,-000004D4
	jal	ra,0000000023003AC6

l2302995C:
	lw	a5,s4,+0000001C
	c.mv	a2,s4
	c.li	a1,00000000
	c.mv	a0,s7
	c.jalr	a5
	c.j	0000000023029A7C

l2302996A:
	sb	zero,sp,+00000018
	c.li	s5,00000004

l23029970:
	addi	s0,a3,-00000001
	c.slli	s0,10
	c.srli	s0,00000010
	bltu	s0,s5,000000002302995C

l2302997C:
	srl	s0,s0,s5
	c.lui	s6,00003000
	addi	s1,a2,+00000001
	c.li	a5,00000000
	c.li	s2,00000000
	addi	s3,sp,+00000018
	addi	s8,s6,-00000800
	addi	s9,s6,-000007FF
	addi	s10,s6,-000007FE

l2302999A:
	c.bnez	s0,00000000230299B0

l2302999C:
	c.mv	a2,s4
	c.mv	a1,s2
	c.mv	a0,s7
	jal	ra,0000000023029364
	c.j	0000000023029A7C

l230299A8:
	sb	a1,sp,+00000018
	c.li	s5,00000012
	c.j	0000000023029970

l230299B0:
	lbu	s2,s1,+00000001
	lbu	a4,s1,+00000000
	c.slli	s2,08
	or	s2,s2,a4
	c.beqz	a5,00000000230299C8

l230299C0:
	c.li	a5,00000000

l230299C2:
	c.addi	s0,FFFFFFFF
	c.add	s1,s5
	c.j	000000002302999A

l230299C8:
	lbu	a5,sp,+00000018
	c.beqz	a5,0000000023029A34

l230299CE:
	c.li	a4,00000002
	beq	a5,a4,0000000023029A46

l230299D4:
	lw	a1,s4,+00000018
	c.bnez	a1,0000000023029A56

l230299DA:
	lbu	a4,s4,+00000028
	c.li	a5,00000004
	bne	a4,a5,0000000023029A60

l230299E4:
	c.addi4spn	a1,00000008
	c.mv	a0,s3
	sb	zero,sp,+00000008
	sh	s8,sp,+0000000A
	jal	ra,000000002302A3CE
	c.beqz	a0,00000000230299C0

l230299F6:
	c.addi4spn	a1,0000000C
	c.mv	a0,s3
	sb	zero,sp,+0000000C
	sh	s9,sp,+0000000E
	jal	ra,000000002302A3CE
	c.beqz	a0,00000000230299C0

l23029A08:
	c.addi4spn	a1,00000010
	c.mv	a0,s3
	sb	zero,sp,+00000010
	sh	s10,sp,+00000012
	jal	ra,000000002302A3CE
	c.beqz	a0,00000000230299C0

l23029A1A:
	addi	a5,s6,-000007FD
	c.addi4spn	a1,00000014
	c.mv	a0,s3
	sb	zero,sp,+00000014
	sh	a5,sp,+00000016
	jal	ra,000000002302A3CE
	c.bnez	a0,0000000023029A60

l23029A30:
	c.li	a5,00000001
	c.j	00000000230299C2

l23029A34:
	lbu	a5,s1,+00000003
	lbu	a4,s1,+00000002
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,sp,+0000001A
	c.j	00000000230299D4

l23029A46:
	c.li	a2,00000010
	addi	a1,s1,+00000002
	addi	a0,sp,+00000019
	jal	ra,000000002306CF80
	c.j	00000000230299D4

l23029A56:
	c.mv	a0,s3
	jal	ra,000000002302A3CE
	c.beqz	a0,00000000230299DA

l23029A5E:
	c.j	00000000230299C0

l23029A60:
	lw	a5,s4,+0000001C
	c.swsp	zero,0000009C
	c.swsp	zero,00000018
	c.swsp	zero,00000098
	c.swsp	zero,0000001C
	c.swsp	s3,00000094
	sh	s2,sp,+0000003C
	c.mv	a2,s4
	c.addi4spn	a1,0000002C
	c.mv	a0,s7
	c.jalr	a5
	c.bnez	a0,00000000230299C0

l23029A7C:
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
	c.addi16sp	00000070
	c.jr	ra

;; bt_gatt_read: 23029A98
;;   Called from:
;;     230247EA (in ble_read)
;;     23029C8A (in gatt_read_rsp)
bt_gatt_read proc
	lbu	a4,a0,+0000000D
	c.li	a5,00000004
	bne	a4,a5,0000000023029BE0

l23029AA2:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.lw	a1,28(a2)
	c.mv	s1,a0
	c.mv	s0,a1
	c.bnez	a2,0000000023029B2A

l23029AB8:
	c.li	a2,00000004
	c.li	a1,00000008
	jal	ra,000000002302B748
	c.mv	s2,a0
	c.bnez	a0,0000000023029AD6

l23029AC4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,FFFFFFF4
	c.addi16sp	00000020
	c.jr	ra

l23029AD6:
	addi	s3,a0,+00000008
	c.li	a1,00000004
	c.mv	a0,s3
	jal	ra,000000002302586C
	lhu	a5,s0,+00000020
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	lhu	a5,s0,+00000022
	sb	a5,a0,+00000002
	c.srli	a5,00000008
	sb	a5,a0,+00000003
	c.lw	s0,36(a1)
	lbu	a5,a1,+00000000
	c.bnez	a5,0000000023029B1E

l23029B06:
	lhu	a1,a1,+00000002
	c.mv	a0,s3
	jal	ra,00000000230258AA

l23029B10:
	lui	a2,0002302A
	c.mv	a3,s0
	addi	a2,a2,-0000041A
	c.mv	a1,s2
	c.j	0000000023029B54

l23029B1E:
	c.li	a2,00000010
	c.addi	a1,00000001
	c.mv	a0,s3
	jal	ra,000000002302587E
	c.j	0000000023029B10

l23029B2A:
	c.li	a5,00000001
	bgeu	a5,a2,0000000023029B82

l23029B30:
	c.slli	a2,01
	c.li	a1,0000000E
	jal	ra,000000002302B748
	c.mv	s3,a0
	c.beqz	a0,0000000023029AC4

l23029B3C:
	c.li	s2,00000000
	addi	s4,a0,+00000008

l23029B42:
	c.lw	s0,28(a5)
	bltu	s2,a5,0000000023029B68

l23029B48:
	lui	a2,00023028
	c.mv	a3,s0
	addi	a2,a2,+0000005E
	c.mv	a1,s3

l23029B54:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,0000000023028106

l23029B68:
	c.lw	s0,32(a5)
	slli	a4,s2,00000001
	c.mv	a0,s4
	c.add	a5,a4
	lhu	a1,a5,+00000000
	c.addi	s2,00000001
	andi	s2,s2,+000000FF
	jal	ra,00000000230258AA
	c.j	0000000023029B42

l23029B82:
	lhu	a5,a1,+00000022
	c.beqz	a5,0000000023029BBA

l23029B88:
	c.li	a2,00000004
	c.li	a1,0000000C
	jal	ra,000000002302B748
	c.mv	s2,a0
	c.beqz	a0,0000000023029AC4

l23029B94:
	c.li	a1,00000004
	c.addi	a0,00000008
	jal	ra,000000002302586C
	lhu	a5,s0,+00000020
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	lhu	a5,s0,+00000022
	sb	a5,a0,+00000002
	c.srli	a5,00000008
	sb	a5,a0,+00000003
	c.j	0000000023029B10

l23029BBA:
	c.li	a2,00000002
	c.li	a1,0000000A
	jal	ra,000000002302B748
	c.mv	s2,a0
	beq	a0,zero,0000000023029AC4

l23029BC8:
	c.li	a1,00000002
	c.addi	a0,00000008
	jal	ra,000000002302586C
	lhu	a5,s0,+00000020
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	c.j	0000000023029B10

l23029BE0:
	addi	a0,zero,-00000039
	c.jr	ra

;; gatt_read_rsp: 23029BE6
gatt_read_rsp proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s2,a0
	c.mv	a5,a1
	c.mv	s0,a4
	c.bnez	a1,0000000023029BFE

l23029BFC:
	c.bnez	a3,0000000023029C1C

l23029BFE:
	lw	t1,s0,+00000018
	c.li	a4,00000000
	c.li	a3,00000000
	c.mv	a2,s0
	c.mv	a1,a5

l23029C0A:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	t1

l23029C1C:
	c.lw	a4,28(a5)
	c.mv	s1,a3
	c.mv	s3,a2
	c.bnez	a5,0000000023029CD2

l23029C24:
	addi	s1,a3,-00000001
	c.slli	s1,10
	c.srli	s1,00000010
	addi	s4,a2,+00000001

l23029C30:
	c.beqz	s1,0000000023029C86

l23029C32:
	lbu	a5,s4,+00000001
	lbu	a4,s4,+00000000
	c.slli	a5,08
	c.or	a5,a4
	c.bnez	a5,0000000023029C5A

l23029C40:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	lui	a0,00023077
	addi	a0,a0,-00000450
	c.addi16sp	00000020
	jal	zero,0000000023003AC6

l23029C5A:
	lbu	a4,s3,+00000000
	bgeu	s1,a4,0000000023029CA0

l23029C62:
	addi	a4,s1,-00000002

l23029C66:
	sh	a5,s0,+00000020
	c.lw	s0,24(a5)
	c.slli	a4,10
	c.srli	a4,00000010
	addi	a3,s4,+00000002
	c.mv	a2,s0
	c.li	a1,00000000
	c.mv	a0,s2
	c.jalr	a5
	c.beqz	a0,0000000023029CF6

l23029C7E:
	lbu	a5,s3,+00000000
	bgeu	s1,a5,0000000023029CA4

l23029C86:
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,0000000023029A98
	bge	a0,zero,0000000023029CF6

l23029C92:
	lw	t1,s0,+00000018
	c.li	a4,00000000
	c.li	a3,00000000
	c.mv	a2,s0
	c.li	a1,0000000E
	c.j	0000000023029C0A

l23029CA0:
	c.addi	a4,FFFFFFFE
	c.j	0000000023029C66

l23029CA4:
	lhu	a5,s0,+00000020
	lhu	a4,s0,+00000022
	bne	a4,a5,0000000023029CBE

l23029CB0:
	lw	t1,s0,+00000018
	c.li	a4,00000000
	c.li	a3,00000000
	c.mv	a2,s0
	c.li	a1,00000000
	c.j	0000000023029C0A

l23029CBE:
	c.addi	a5,00000001
	sh	a5,s0,+00000020
	lbu	a5,s3,+00000000
	c.sub	s1,a5
	c.slli	s1,10
	c.srli	s1,00000010
	c.add	s4,a5
	c.j	0000000023029C30

l23029CD2:
	c.lw	a4,24(a5)
	c.mv	a4,a3
	c.mv	a3,a2
	c.mv	a2,s0
	c.jalr	a5
	c.beqz	a0,0000000023029CF6

l23029CDE:
	c.mv	a0,s2
	jal	ra,000000002302C116
	c.addi	a0,FFFFFFFF
	blt	s1,a0,0000000023029CB0

l23029CEA:
	lhu	a3,s0,+00000022
	c.add	s1,a3
	sh	s1,s0,+00000022
	c.j	0000000023029C86

l23029CF6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; bt_gatt_write_without_response_cb: 23029D06
;;   Called from:
;;     2302507A (in ble_write_without_rsp)
bt_gatt_write_without_response_cb proc
	lbu	t1,a0,+0000000D
	c.li	a7,00000004
	bne	t1,a7,0000000023029D9E

l23029D10:
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.swsp	s7,00000084
	c.mv	s4,a5
	lbu	a5,a0,+0000000B
	c.mv	s0,a0
	c.mv	s5,a6
	c.mv	s1,a3
	c.mv	s6,a2
	c.mv	s2,a1
	c.bnez	a5,0000000023029D92

l23029D36:
	c.beqz	a4,0000000023029D92

l23029D38:
	addi	a2,a3,+0000000E
	addi	a1,zero,+000000D2

l23029D40:
	jal	ra,000000002302B748
	c.mv	s3,a0
	c.beqz	a0,0000000023029DA4

l23029D48:
	addi	s7,a0,+00000008
	c.li	a1,00000002
	c.mv	a0,s7
	jal	ra,000000002302586C
	sb	s2,a0,+00000000
	srli	s2,s2,00000008
	c.mv	a2,s1
	sb	s2,a0,+00000001
	c.mv	a1,s6
	c.addi	a0,00000002
	jal	ra,000000002306CF80
	c.mv	a1,s1
	c.mv	a0,s7
	jal	ra,000000002302586C
	c.mv	a0,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.mv	a3,s5
	c.mv	a2,s4
	c.lwsp	s4,000000A8
	c.lwsp	s8,00000088
	c.mv	a1,s3
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	jal	zero,000000002302C12E

l23029D92:
	addi	a2,s1,+00000002
	addi	a1,zero,+00000052
	c.mv	a0,s0
	c.j	0000000023029D40

l23029D9E:
	addi	a0,zero,-00000039
	c.jr	ra

l23029DA4:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.li	a0,FFFFFFF4
	c.addi16sp	00000030
	c.jr	ra

;; bt_gatt_write: 23029DBC
;;   Called from:
;;     23024746 (in ble_write)
;;     23029F56 (in gatt_prepare_write_rsp)
bt_gatt_write proc
	lbu	a4,a0,+0000000D
	c.li	a5,00000004
	bne	a4,a5,0000000023029EFA

l23029DC6:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lhu	a5,a1,+0000001E
	c.mv	s1,a0
	c.mv	s0,a1
	c.beqz	a5,0000000023029E00

l23029DDE:
	lhu	s2,s0,+00000024
	c.mv	a0,s1
	jal	ra,000000002302C116
	c.addi	a0,FFFFFFFB
	bltu	s2,a0,0000000023029E5E

l23029DEE:
	c.mv	a0,s1
	jal	ra,000000002302C116
	c.addi	a0,FFFFFFFB
	slli	s2,a0,00000010
	srli	s2,s2,00000010
	c.j	0000000023029E62

l23029E00:
	lhu	s2,a1,+00000024
	jal	ra,000000002302C116
	c.addi	a0,FFFFFFFD
	bltu	a0,s2,0000000023029DDE

l23029E0E:
	lhu	a2,s0,+00000024
	c.li	a1,00000012
	c.mv	a0,s1
	c.addi	a2,00000002
	jal	ra,000000002302B748
	c.mv	s2,a0
	c.beqz	a0,0000000023029E72

l23029E20:
	addi	s3,a0,+00000008
	c.li	a1,00000002
	c.mv	a0,s3
	jal	ra,000000002302586C
	lhu	a5,s0,+0000001C
	c.addi	a0,00000002
	sb	a5,a0,+00000FFE
	c.srli	a5,00000008
	sb	a5,a0,+00000FFF
	lhu	a2,s0,+00000024
	c.lw	s0,32(a1)
	jal	ra,000000002306CF80
	lhu	a1,s0,+00000024
	c.mv	a0,s3
	jal	ra,000000002302586C
	lui	a2,00023028
	c.mv	a3,s0
	addi	a2,a2,-000000BC
	c.mv	a1,s2
	c.j	0000000023029EE6

l23029E5E:
	lhu	s2,s0,+00000024

l23029E62:
	addi	a2,s2,+00000004
	c.li	a1,00000016
	c.mv	a0,s1
	jal	ra,000000002302B748
	c.mv	s3,a0
	c.bnez	a0,0000000023029E84

l23029E72:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,FFFFFFF4
	c.addi16sp	00000020
	c.jr	ra

l23029E84:
	addi	s4,a0,+00000008
	c.li	a1,00000004
	c.mv	a0,s4
	jal	ra,000000002302586C
	lhu	a5,s0,+0000001C
	c.mv	a2,s2
	c.addi	a0,00000004
	sb	a5,a0,+00000FFC
	c.srli	a5,00000008
	sb	a5,a0,+00000FFD
	lhu	a5,s0,+0000001E
	sb	a5,a0,+00000FFE
	c.srli	a5,00000008
	sb	a5,a0,+00000FFF
	c.lw	s0,32(a1)
	jal	ra,000000002306CF80
	c.mv	a1,s2
	c.mv	a0,s4
	jal	ra,000000002302586C
	lhu	a5,s0,+0000001E
	lhu	a0,s0,+00000024
	lui	a2,0002302A
	c.add	a5,s2
	sh	a5,s0,+0000001E
	c.lw	s0,32(a5)
	c.mv	a3,s0
	addi	a2,a2,-00000100
	c.add	a5,s2
	sub	s2,a0,s2
	c.sw	s0,32(a5)
	sh	s2,s0,+00000024
	c.mv	a1,s3

l23029EE6:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,0000000023028106

l23029EFA:
	addi	a0,zero,-00000039
	c.jr	ra

;; gatt_prepare_write_rsp: 23029F00
gatt_prepare_write_rsp proc
	c.beqz	a1,0000000023029F0A

l23029F02:
	lw	t1,a4,+00000018
	c.mv	a2,a4
	c.jr	t1

l23029F0A:
	lhu	a5,a4,+00000024
	c.bnez	a5,0000000023029F54

l23029F10:
	c.addi	sp,FFFFFFF0
	c.li	a2,00000001
	c.li	a1,00000018
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s0,a4
	jal	ra,000000002302B748
	c.mv	s2,a0
	c.beqz	a0,0000000023029F5A

l23029F2A:
	c.li	a1,00000001
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.li	a5,00000001
	sb	a5,a0,+00000000
	c.mv	a3,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s2
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	lui	a2,00023028
	addi	a2,a2,-000000BC
	c.addi	sp,00000010
	jal	zero,0000000023028106

l23029F54:
	c.mv	a1,a4
	jal	zero,0000000023029DBC

l23029F5A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; bt_gatt_subscribe: 23029F66
;;   Called from:
;;     2302464E (in ble_subscribe)
bt_gatt_subscribe proc
	lbu	a4,a0,+0000000D
	c.li	a5,00000004
	bne	a4,a5,000000002302A024

l23029F70:
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,0004200E
	c.swsp	s0,0000000C
	lw	s0,s2,+000001BC
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	addi	s2,s2,+000001BC
	c.beqz	s0,0000000023029F90

l23029F8C:
	addi	s0,s0,-00000030

l23029F90:
	c.mv	s1,a1
	c.mv	s3,a0
	c.li	s4,00000000

l23029F96:
	c.bnez	s0,0000000023029FC2

l23029F98:
	beq	s4,zero,0000000023029FFC

l23029F9C:
	c.li	a2,00000007
	addi	a1,s3,+00000070
	addi	a0,s1,+00000018
	jal	ra,000000002306CF80
	lw	a4,s2,+00000000
	addi	a5,s1,+00000030
	sw	a5,s2,+00000000
	c.sw	s1,48(a4)
	lw	a4,s2,+00000004
	c.beqz	a4,000000002302A01E

l23029FBE:
	c.li	a0,00000000
	c.j	000000002302A00E

l23029FC2:
	beq	s0,s1,000000002302A02A

l23029FC6:
	addi	a1,s0,+00000018
	c.mv	a0,s3
	jal	ra,0000000023027318
	c.bnez	a0,0000000023029FEC

l23029FD2:
	lhu	a4,s0,+00000024
	lhu	a5,s1,+00000024
	bne	a4,a5,0000000023029FEC

l23029FDE:
	lhu	a4,s0,+00000028
	lhu	a5,s1,+00000028
	bltu	a4,a5,0000000023029FEC

l23029FEA:
	c.li	s4,00000001

l23029FEC:
	addi	a5,s0,+00000030
	c.beqz	a5,0000000023029F98

l23029FF2:
	c.lw	s0,48(s0)
	c.beqz	s0,0000000023029F98

l23029FF6:
	addi	s0,s0,-00000030
	c.j	0000000023029F96

l23029FFC:
	lhu	a2,s1,+00000028
	lhu	a1,s1,+00000026
	c.mv	a3,s1
	c.mv	a0,s3
	jal	ra,000000002302837C
	c.beqz	a0,0000000023029F9C

l2302A00E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2302A01E:
	sw	a5,s2,+00000004
	c.j	0000000023029FBE

l2302A024:
	addi	a0,zero,-00000039
	c.jr	ra

l2302A02A:
	addi	a0,zero,-00000045
	c.j	000000002302A00E

;; bt_gatt_unsubscribe: 2302A030
;;   Called from:
;;     23023DD6 (in ble_unsubscribe)
;;     2302A196 (in bt_gatt_notification)
bt_gatt_unsubscribe proc
	lbu	a4,a0,+0000000D
	c.li	a5,00000004
	bne	a4,a5,000000002302A136

l2302A03A:
	c.addi16sp	FFFFFFC0
	lui	a5,0004200E
	c.swsp	s0,0000001C
	lw	s0,a5,+000001BC
	c.swsp	s2,00000018
	c.swsp	s7,0000008C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s8,0000000C
	c.mv	s7,a5
	c.li	s2,00000000
	c.beqz	s0,000000002302A06E

l2302A05E:
	addi	s2,s0,-00000030
	beq	s2,zero,000000002302A0AE

l2302A066:
	c.lw	s0,0(s0)
	c.beqz	s0,000000002302A06E

l2302A06A:
	addi	s0,s0,-00000030

l2302A06E:
	c.mv	s1,a1
	c.mv	s3,a0
	c.li	s4,00000000
	c.li	s5,00000000
	c.li	s6,00000000
	addi	s8,a1,+0000002C

l2302A07C:
	bne	s2,zero,000000002302A0B2

l2302A080:
	beq	s5,zero,000000002302A13C

l2302A084:
	beq	s6,zero,000000002302A10E

l2302A088:
	c.lw	s1,32(a5)
	c.li	a3,00000000
	c.li	a2,00000000
	c.mv	a1,s1
	c.mv	a0,s3
	c.jalr	a5
	c.li	a0,00000000

l2302A096:
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

l2302A0AE:
	c.li	s0,00000000
	c.j	000000002302A06E

l2302A0B2:
	addi	a2,s2,+00000030
	bne	s2,s1,000000002302A0DC

l2302A0BA:
	c.mv	a1,s4
	addi	a0,s7,+000001BC
	jal	ra,0000000023027E62
	c.mv	a0,s8
	jal	ra,00000000230254AC
	c.andi	a0,00000002
	c.beqz	a0,000000002302A0D6

l2302A0CE:
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,000000002302C1F6

l2302A0D6:
	c.mv	a2,s4
	c.li	s5,00000001
	c.j	000000002302A0FA

l2302A0DC:
	addi	a1,s2,+00000018
	c.mv	a0,s3
	c.swsp	a2,00000084
	jal	ra,0000000023027318
	c.lwsp	a2,00000084
	c.bnez	a0,000000002302A0FA

l2302A0EC:
	lhu	a4,s2,+00000024
	lhu	a5,s1,+00000024
	bne	a4,a5,000000002302A0FA

l2302A0F8:
	c.li	s6,00000001

l2302A0FA:
	c.li	a5,00000000
	c.beqz	s0,000000002302A106

l2302A0FE:
	c.lw	s0,48(a5)
	c.beqz	a5,000000002302A106

l2302A102:
	addi	a5,a5,-00000030

l2302A106:
	c.mv	s2,s0
	c.mv	s4,a2
	c.mv	s0,a5
	c.j	000000002302A07C

l2302A10E:
	sh	zero,s1,+00000028
	c.lwsp	s8,00000114
	lhu	a1,s1,+00000026
	c.lwsp	t3,00000130
	c.lwsp	a6,00000158
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.lwsp	t3,000000E8
	c.lwsp	s8,0000000C
	c.mv	a3,s1
	c.mv	a0,s3
	c.lwsp	s4,00000134
	c.lwsp	a2,00000178
	c.li	a2,00000000
	c.addi16sp	00000040
	jal	zero,000000002302837C

l2302A136:
	addi	a0,zero,-00000039
	c.jr	ra

l2302A13C:
	c.li	a0,FFFFFFEA
	c.j	000000002302A096

;; bt_gatt_notification: 2302A140
;;   Called from:
;;     2302AB4A (in att_notify)
;;     2302B7E4 (in att_indicate)
bt_gatt_notification proc
	lui	a5,0004200E
	lw	a5,a5,+000001BC
	c.beqz	a5,000000002302A1BC

l2302A14A:
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	addi	s1,a5,-00000030
	c.beqz	s1,000000002302A1AA

l2302A160:
	c.lw	a5,0(s0)
	c.mv	s5,a3
	c.mv	s4,a2
	c.mv	s3,a1
	c.mv	s2,a0
	c.beqz	s0,000000002302A170

l2302A16C:
	addi	s0,s0,-00000030

l2302A170:
	addi	a1,s1,+00000018
	c.mv	a0,s2
	jal	ra,0000000023027318
	c.bnez	a0,000000002302A19A

l2302A17C:
	lhu	a5,s1,+00000024
	bne	a5,s3,000000002302A19A

l2302A184:
	c.lw	s1,32(a5)
	c.mv	a3,s5
	c.mv	a2,s4
	c.mv	a1,s1
	c.mv	a0,s2
	c.jalr	a5
	c.bnez	a0,000000002302A19A

l2302A192:
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,000000002302A030

l2302A19A:
	c.beqz	s0,000000002302A1AA

l2302A19C:
	c.lw	s0,48(a5)
	c.beqz	a5,000000002302A1A4

l2302A1A0:
	addi	a5,a5,-00000030

l2302A1A4:
	c.mv	s1,s0
	c.mv	s0,a5
	c.j	000000002302A170

l2302A1AA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2302A1BC:
	c.jr	ra

;; bt_gatt_connected: 2302A1BE
;;   Called from:
;;     23026962 (in notify_connected)
bt_gatt_connected proc
	c.addi16sp	FFFFFFB0
	c.swsp	s1,000000A0
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	addi	a3,a0,+00000070
	c.mv	s1,a0
	c.swsp	a0,00000088
	lbu	a0,a0,+00000008
	c.li	a5,00000001
	c.mv	a1,a3
	sb	a5,sp,+00000018
	c.swsp	a3,00000084
	jal	ra,000000002301EE0A
	c.beqz	a0,000000002302A206

l2302A1E2:
	lbu	a2,s1,+00000008
	lui	s0,00023077
	c.lwsp	a2,000000A4
	c.li	a4,00000000
	c.beqz	a2,000000002302A1FA

l2302A1F0:
	c.li	a1,00000004
	c.addi4spn	a0,00000010
	c.jal	000000002302A5C0
	c.lwsp	a2,000000A4
	c.addi4spn	a4,00000010

l2302A1FA:
	addi	a2,s0,-00000534
	addi	a1,zero,+00000024
	c.addi4spn	a0,0000001C
	c.jal	000000002302A568

l2302A206:
	lui	a2,00023029
	c.lui	a1,00010000
	c.addi	a1,FFFFFFFF
	c.addi4spn	a3,00000014
	addi	a2,a2,-000000B6
	c.li	a0,00000001
	jal	ra,0000000023028BFA
	c.mv	a0,s1
	jal	ra,0000000023026D1A
	lbu	a1,sp,+00000018
	bgeu	a0,a1,000000002302A22E

l2302A228:
	c.mv	a0,s1
	jal	ra,0000000023026CA6

l2302A22E:
	lui	a5,0004200E
	lw	a5,a5,+000001BC
	addi	s0,a5,-00000030
	c.bnez	a5,000000002302A26A

l2302A23C:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.addi16sp	00000050
	c.jr	ra

l2302A246:
	addi	a1,s0,+00000018
	c.mv	a0,s1
	jal	ra,0000000023027318
	c.bnez	a0,000000002302A262

l2302A252:
	lhu	a2,s0,+00000028
	lhu	a1,s0,+00000026
	c.mv	a3,s0
	c.mv	a0,s1
	jal	ra,000000002302837C

l2302A262:
	c.lw	s0,48(s0)
	c.beqz	s0,000000002302A23C

l2302A266:
	addi	s0,s0,-00000030

l2302A26A:
	c.bnez	s0,000000002302A246

l2302A26C:
	c.j	000000002302A23C

;; bt_gatt_encrypt_change: 2302A26E
;;   Called from:
;;     2302B46C (in bt_att_encrypt_change)
bt_gatt_encrypt_change proc
	c.addi	sp,FFFFFFE0
	lui	a2,00023029
	c.lui	a1,00010000
	c.swsp	a0,00000004
	c.li	a5,00000001
	c.addi4spn	a3,00000008
	addi	a2,a2,-000000B6
	c.addi	a1,FFFFFFFF
	c.li	a0,00000001
	c.swsp	ra,0000008C
	sb	a5,sp,+0000000C
	jal	ra,0000000023028BFA
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; bt_gatt_change_aware: 2302A294
;;   Called from:
;;     2302BBDE (in att_read_rsp)
;;     2302BF8A (in att_write_rsp.constprop.10)
bt_gatt_change_aware proc
	c.li	a0,00000001
	c.jr	ra

;; bt_gatt_disconnected: 2302A298
;;   Called from:
;;     2302B3E0 (in bt_att_disconnected)
;;     2302B440 (in att_timeout)
bt_gatt_disconnected proc
	c.addi	sp,FFFFFFE0
	lui	a2,00023028
	c.lui	a1,00010000
	c.swsp	s2,00000008
	c.mv	a3,a0
	c.mv	s2,a0
	addi	a2,a2,+0000022E
	c.addi	a1,FFFFFFFF
	c.li	a0,00000001
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	jal	ra,0000000023028BFA
	lui	a5,0004200E
	lw	a5,a5,+000001BC
	c.beqz	a5,000000002302A338

l2302A2C8:
	addi	s0,a5,-00000030
	c.beqz	s0,000000002302A338

l2302A2CE:
	c.lw	a5,0(s1)
	c.beqz	s1,000000002302A2D6

l2302A2D2:
	addi	s1,s1,-00000030

l2302A2D6:
	c.li	s3,00000000
	addi	s4,s2,+00000070

l2302A2DC:
	addi	s5,s0,+00000018
	c.mv	a1,s5
	c.mv	a0,s2
	jal	ra,0000000023027318
	c.beqz	a0,000000002302A2F0

l2302A2EA:
	addi	s3,s0,+00000030
	c.j	000000002302A30A

l2302A2F0:
	lbu	a0,s2,+00000008
	c.mv	a1,s4
	jal	ra,000000002301EE0A
	c.bnez	a0,000000002302A31A

l2302A2FC:
	sh	zero,s0,+00000028
	c.mv	a2,s0
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,0000000023027F0A

l2302A30A:
	c.beqz	s1,000000002302A338

l2302A30C:
	c.lw	s1,48(a5)
	c.beqz	a5,000000002302A314

l2302A310:
	addi	a5,a5,-00000030

l2302A314:
	c.mv	s0,s1
	c.mv	s1,a5
	c.j	000000002302A2DC

l2302A31A:
	addi	a0,s0,+0000002C
	jal	ra,00000000230254AC
	c.andi	a0,00000001
	c.bnez	a0,000000002302A2FC

l2302A326:
	lbu	a5,s0,+00000018
	c.beqz	a5,000000002302A2EA

l2302A32C:
	c.li	a2,00000007
	c.mv	a1,s4
	c.mv	a0,s5
	jal	ra,000000002306CF80
	c.j	000000002302A2EA

l2302A338:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; uuid_to_uuid128: 2302A34A
;;   Called from:
;;     2302A3E4 (in bt_uuid_cmp)
;;     2302A3EC (in bt_uuid_cmp)
uuid_to_uuid128 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a4,a0,+00000000
	c.li	a3,00000001
	c.mv	s0,a0
	c.mv	a5,a1
	beq	a4,a3,000000002302A38E

l2302A35E:
	c.beqz	a4,000000002302A36E

l2302A360:
	c.li	a3,00000002
	beq	a4,a3,000000002302A3BE

l2302A366:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2302A36E:
	lui	a1,00023077
	c.li	a2,00000011
	addi	a1,a1,-000003A4
	c.mv	a0,a5
	jal	ra,000000002306CF80
	lhu	a4,s0,+00000002
	sb	a4,a0,+0000000D
	c.srli	a4,00000008
	sb	a4,a0,+0000000E
	c.j	000000002302A366

l2302A38E:
	lui	a1,00023077
	c.li	a2,00000011
	addi	a1,a1,-000003A4
	c.mv	a0,a5
	jal	ra,000000002306CF80
	c.lw	s0,4(a4)
	slli	a3,a4,00000010
	sb	a4,a0,+0000000D
	c.srli	a3,00000010
	c.srli	a4,00000010
	c.srli	a3,00000008
	sb	a4,a0,+0000000F
	c.srli	a4,00000008
	sb	a3,a0,+0000000E
	sb	a4,a0,+00000010
	c.j	000000002302A366

l2302A3BE:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,a0
	c.li	a2,00000011
	c.mv	a0,a5
	c.addi	sp,00000010
	jal	zero,000000002306CF80

;; bt_uuid_cmp: 2302A3CE
;;   Called from:
;;     23028B18 (in bt_gatt_foreach_attr_type)
;;     23028BDA (in bt_gatt_foreach_attr_type)
;;     23028C34 (in bt_gatt_service_register)
;;     23028C64 (in bt_gatt_service_register)
;;     23028E0A (in bt_gatt_indicate)
;;     23029770 (in gatt_read_type_rsp)
;;     2302986C (in gatt_read_type_rsp)
;;     23029918 (in read_included_uuid_cb)
;;     230299F0 (in gatt_find_info_rsp)
;;     23029A02 (in gatt_find_info_rsp)
;;     23029A14 (in gatt_find_info_rsp)
;;     23029A2A (in gatt_find_info_rsp)
;;     23029A58 (in gatt_find_info_rsp)
;;     2302AB92 (in read_group_cb)
;;     2302ABA8 (in read_group_cb)
;;     2302ABE6 (in read_group_cb)
;;     2302ACA8 (in read_type_cb)
;;     2302ADAA (in find_type_cb)
;;     2302ADC0 (in find_type_cb)
;;     2302AE6A (in find_type_cb)
;;     2302BA60 (in att_read_group_req)
;;     2302BAFC (in att_read_group_req)
;;     2302BE1C (in att_find_type_req)
bt_uuid_cmp proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	lbu	a3,a0,+00000000
	lbu	a4,a1,+00000000
	c.mv	s0,a1
	beq	a4,a3,000000002302A400

l2302A3E2:
	c.addi4spn	a1,00000008
	jal	ra,000000002302A34A
	c.addi4spn	a1,0000001C
	c.mv	a0,s0
	jal	ra,000000002302A34A
	c.li	a2,00000010
	addi	a1,sp,+0000001D
	addi	a0,sp,+00000009

l2302A3FA:
	jal	ra,000000002306CEF8
	c.j	000000002302A426

l2302A400:
	c.li	a3,00000001
	c.mv	a5,a0
	beq	a4,a3,000000002302A42E

l2302A408:
	c.beqz	a4,000000002302A41C

l2302A40A:
	c.li	a3,00000002
	c.li	a0,FFFFFFEA
	bne	a4,a3,000000002302A426

l2302A412:
	c.li	a2,00000010
	c.addi	a1,00000001
	addi	a0,a5,+00000001
	c.j	000000002302A3FA

l2302A41C:
	lhu	a0,a0,+00000002
	lhu	a5,a1,+00000002

l2302A424:
	c.sub	a0,a5

l2302A426:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.addi16sp	00000040
	c.jr	ra

l2302A42E:
	c.lw	a0,4(a0)
	c.lw	a1,4(a5)
	c.j	000000002302A424

;; bt_uuid_create: 2302A434
;;   Called from:
;;     2302AE30 (in find_type_cb)
;;     2302AE54 (in find_type_cb)
;;     2302BA3C (in att_read_group_req)
;;     2302BD08 (in att_read_type_req)
bt_uuid_create proc
	c.li	a5,00000004
	beq	a2,a5,000000002302A464

l2302A43A:
	c.li	a5,00000010
	c.mv	a3,a2
	beq	a2,a5,000000002302A48A

l2302A442:
	c.li	a2,00000002
	c.li	a5,00000000
	bne	a3,a2,000000002302A460

l2302A44A:
	sb	zero,a0,+00000000
	lbu	a5,a1,+00000001
	lbu	a4,a1,+00000000
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,a0,+00000002

l2302A45E:
	c.li	a5,00000001

l2302A460:
	c.mv	a0,a5
	c.jr	ra

l2302A464:
	c.li	a5,00000001
	sb	a5,a0,+00000000
	lbu	a5,a1,+00000003
	lbu	a3,a1,+00000002
	lbu	a4,a1,+00000000
	c.slli	a5,08
	c.or	a5,a3
	lbu	a3,a1,+00000001
	c.slli	a5,10
	c.slli	a3,08
	c.or	a4,a3
	c.or	a5,a4
	c.sw	a0,4(a5)
	c.j	000000002302A45E

l2302A48A:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.li	a5,00000002
	sb	a5,a0,+00000000
	c.addi	a0,00000001
	jal	ra,000000002306CF80
	c.lwsp	a2,00000020
	c.li	a5,00000001
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; bt_uuid_to_str: 2302A4A4
;;   Called from:
;;     23024420 (in discover_func)
;;     23024442 (in discover_func)
;;     2302446A (in discover_func)
;;     23024534 (in discover_func)
bt_uuid_to_str proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	lbu	a5,a0,+00000000
	c.li	a4,00000001
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	s2,a2
	beq	a5,a4,000000002302A4F0

l2302A4BE:
	c.beqz	a5,000000002302A4D0

l2302A4C0:
	c.li	a4,00000002
	beq	a5,a4,000000002302A4F4

l2302A4C6:
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002306D1BC
	c.j	000000002302A4E4

l2302A4D0:
	lhu	a3,a0,+00000002

l2302A4D4:
	lui	a2,00023077
	addi	a2,a2,-000003AC
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023003B18

l2302A4E4:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l2302A4F0:
	c.lw	a0,4(a3)
	c.j	000000002302A4D4

l2302A4F4:
	addi	a1,a0,+00000001
	c.li	a2,00000002
	c.addi4spn	a0,00000010
	jal	ra,000000002306CF80
	addi	a1,s0,+00000003
	c.li	a2,00000004
	c.addi4spn	a0,00000018
	jal	ra,000000002306CF80
	addi	a1,s0,+00000007
	c.li	a2,00000002
	addi	a0,sp,+00000012
	jal	ra,000000002306CF80
	addi	a1,s0,+00000009
	c.li	a2,00000002
	c.addi4spn	a0,00000014
	jal	ra,000000002306CF80
	addi	a1,s0,+0000000B
	c.li	a2,00000002
	addi	a0,sp,+00000016
	jal	ra,000000002306CF80
	addi	a1,s0,+0000000D
	c.li	a2,00000004
	c.addi4spn	a0,0000001C
	jal	ra,000000002306CF80
	lhu	a5,sp,+00000010
	c.lwsp	s8,00000028
	lhu	a6,sp,+00000012
	c.swsp	a5,00000000
	lhu	a4,sp,+00000016
	lhu	a5,sp,+00000014
	c.lwsp	t3,000000A4
	lui	a2,00023077
	addi	a2,a2,-000003C4
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023003B18
	c.j	000000002302A4E4

;; bt_settings_encode_key: 2302A568
;;   Called from:
;;     2302A204 (in bt_gatt_connected)
bt_settings_encode_key proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.mv	t4,a4
	lbu	a5,a3,+00000005
	lbu	a4,a3,+00000006
	lbu	a6,a3,+00000004
	lbu	a7,a3,+00000003
	lbu	t1,a3,+00000002
	lbu	t3,a3,+00000001
	lbu	a3,a3,+00000000
	beq	t4,zero,000000002302A5AA

l2302A58E:
	c.swsp	a3,00000004
	c.mv	a3,a2
	lui	a2,00023077
	c.swsp	t4,00000084
	c.swsp	t3,00000080
	c.swsp	t1,00000000
	addi	a2,a2,-00000390
	jal	ra,0000000023003B18

l2302A5A4:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2302A5AA:
	c.swsp	a3,00000004
	c.mv	a3,a2
	lui	a2,00023077
	c.swsp	t3,00000080
	c.swsp	t1,00000000
	addi	a2,a2,-0000036C
	jal	ra,0000000023003B18
	c.j	000000002302A5A4

;; u8_to_dec: 2302A5C0
;;   Called from:
;;     2302A1F4 (in bt_gatt_connected)
u8_to_dec proc
	c.li	a3,00000004
	c.li	a5,00000000
	addi	a4,zero,+00000064
	c.li	a7,00000001
	c.li	t1,0000000A

l2302A5CC:
	c.beqz	a1,000000002302A5D6

l2302A5CE:
	c.addi	a3,FFFFFFFF
	c.bnez	a3,000000002302A5DA

l2302A5D2:
	sb	zero,a0,+00000000

l2302A5D6:
	c.mv	a0,a5
	c.jr	ra

l2302A5DA:
	srl	a6,a2,a4
	bgeu	a2,a4,000000002302A5E8

l2302A5E2:
	beq	a4,a7,000000002302A5E8

l2302A5E6:
	c.beqz	a5,000000002302A5FE

l2302A5E8:
	addi	a6,a6,+00000030
	c.addi	a1,FFFFFFFF
	c.addi	a5,00000001
	sb	a6,a0,+00000000
	andi	a1,a1,+000000FF
	c.addi	a0,00000001
	andi	a5,a5,+000000FF

l2302A5FE:
	and	a2,a2,a4
	srl	a4,a4,t1
	c.j	000000002302A5CC

;; add_round_key: 2302A608
;;   Called from:
;;     2302A95E (in tc_aes_encrypt)
;;     2302A9BE (in tc_aes_encrypt)
;;     2302A9E4 (in tc_aes_encrypt)
add_round_key proc
	lbu	a5,a1,+00000003
	lbu	a4,a0,+00000000
	c.xor	a5,a4
	sb	a5,a0,+00000000
	lhu	a5,a1,+00000002
	lbu	a4,a0,+00000001
	c.xor	a5,a4
	sb	a5,a0,+00000001
	c.lw	a1,0(a5)
	lbu	a4,a0,+00000002
	c.srli	a5,00000008
	c.xor	a5,a4
	sb	a5,a0,+00000002
	c.lw	a1,0(a5)
	lbu	a4,a0,+00000003
	c.xor	a5,a4
	sb	a5,a0,+00000003
	lbu	a5,a1,+00000007
	lbu	a4,a0,+00000004
	c.xor	a5,a4
	sb	a5,a0,+00000004
	lhu	a5,a1,+00000006
	lbu	a4,a0,+00000005
	c.xor	a5,a4
	sb	a5,a0,+00000005
	c.lw	a1,4(a5)
	lbu	a4,a0,+00000006
	c.srli	a5,00000008
	c.xor	a5,a4
	sb	a5,a0,+00000006
	c.lw	a1,4(a5)
	lbu	a4,a0,+00000007
	c.xor	a5,a4
	sb	a5,a0,+00000007
	lbu	a5,a1,+0000000B
	lbu	a4,a0,+00000008
	c.xor	a5,a4
	sb	a5,a0,+00000008
	lbu	a4,a0,+00000009
	lhu	a5,a1,+0000000A
	c.xor	a5,a4
	sb	a5,a0,+00000009
	c.lw	a1,8(a5)
	lbu	a4,a0,+0000000A
	c.srli	a5,00000008
	c.xor	a5,a4
	sb	a5,a0,+0000000A
	c.lw	a1,8(a5)
	lbu	a4,a0,+0000000B
	c.xor	a5,a4
	sb	a5,a0,+0000000B
	lbu	a5,a1,+0000000F
	lbu	a4,a0,+0000000C
	c.xor	a5,a4
	sb	a5,a0,+0000000C
	lhu	a5,a1,+0000000E
	lbu	a4,a0,+0000000D
	c.xor	a5,a4
	sb	a5,a0,+0000000D
	c.lw	a1,12(a5)
	lbu	a4,a0,+0000000E
	c.srli	a5,00000008
	c.xor	a5,a4
	sb	a5,a0,+0000000E
	c.lw	a1,12(a5)
	lbu	a4,a0,+0000000F
	c.xor	a5,a4
	sb	a5,a0,+0000000F
	c.jr	ra

;; shift_rows: 2302A6E2
;;   Called from:
;;     2302A988 (in tc_aes_encrypt)
;;     2302A9DC (in tc_aes_encrypt)
shift_rows proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	lbu	a4,a0,+00000000
	lbu	a5,a0,+0000000B
	c.mv	a2,sp
	sb	a4,sp,+00000000
	lbu	a4,a0,+00000005
	c.li	a3,00000010
	c.li	a1,00000010
	sb	a4,sp,+00000001
	lbu	a4,a0,+0000000A
	sb	a4,sp,+00000002
	lbu	a4,a0,+0000000F
	sb	a4,sp,+00000003
	lbu	a4,a0,+00000004
	sb	a4,sp,+00000004
	lbu	a4,a0,+00000009
	sb	a4,sp,+00000005
	lbu	a4,a0,+0000000E
	sb	a4,sp,+00000006
	lbu	a4,a0,+00000003
	sb	a4,sp,+00000007
	lbu	a4,a0,+00000008
	sb	a4,sp,+00000008
	lbu	a4,a0,+0000000D
	sb	a4,sp,+00000009
	lbu	a4,a0,+00000002
	sb	a4,sp,+0000000A
	lbu	a4,a0,+00000007
	sb	a4,sp,+0000000B
	lbu	a4,a0,+0000000C
	sb	a4,sp,+0000000C
	lbu	a4,a0,+00000001
	sb	a4,sp,+0000000D
	lbu	a4,a0,+00000006
	sb	a4,sp,+0000000E
	sb	a5,sp,+0000000F
	jal	ra,0000000023026322
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; mult_row_column: 2302A776
;;   Called from:
;;     2302A990 (in tc_aes_encrypt)
;;     2302A998 (in tc_aes_encrypt)
;;     2302A9A0 (in tc_aes_encrypt)
;;     2302A9A8 (in tc_aes_encrypt)
mult_row_column proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	c.mv	s3,a0
	lbu	a0,a1,+00000000
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a1
	c.swsp	s2,00000008
	jal	ra,000000002302634A
	c.mv	s1,a0
	lbu	a0,s0,+00000001
	jal	ra,000000002302634A
	lbu	a4,s0,+00000002
	lbu	a5,s0,+00000001
	c.xor	a5,a4
	lbu	a4,s0,+00000003
	c.xor	a5,a4
	c.xor	s1,a5
	c.xor	s1,a0
	sb	s1,s3,+00000000
	lbu	a0,s0,+00000001
	lbu	s2,s0,+00000000
	jal	ra,000000002302634A
	c.mv	s1,a0
	lbu	a0,s0,+00000002
	jal	ra,000000002302634A
	lbu	a5,s0,+00000002
	xor	s2,s2,a5
	lbu	a5,s0,+00000003
	xor	s2,s2,a5
	xor	s1,s1,s2
	c.xor	s1,a0
	sb	s1,s3,+00000001
	lbu	a0,s0,+00000002
	lbu	s1,s0,+00000001
	lbu	s2,s0,+00000000
	jal	ra,000000002302634A
	xor	s2,s2,s1
	c.mv	s1,a0
	lbu	a0,s0,+00000003
	jal	ra,000000002302634A
	lbu	a5,s0,+00000003
	xor	s2,s2,a5
	xor	s1,s1,s2
	c.xor	s1,a0
	sb	s1,s3,+00000002
	lbu	a0,s0,+00000000
	jal	ra,000000002302634A
	lbu	a5,s0,+00000001
	lbu	s1,s0,+00000000
	c.xor	s1,a5
	lbu	a5,s0,+00000002
	c.xor	s1,a5
	c.xor	s1,a0
	lbu	a0,s0,+00000003
	andi	s1,s1,+000000FF
	jal	ra,000000002302634A
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.xor	a0,s1
	sb	a0,s3,+00000003
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; tc_aes128_set_encrypt_key: 2302A84A
;;   Called from:
;;     23026166 (in tc_cmac_setup)
;;     23027E04 (in bt_encrypt_le)
tc_aes128_set_encrypt_key proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.mv	s0,a1
	lui	a1,00023077
	c.swsp	s1,00000098
	addi	a2,zero,+0000002C
	c.mv	s1,a0
	addi	a1,a1,-00000348
	c.addi4spn	a0,00000004
	c.swsp	ra,0000009C
	jal	ra,000000002306CF80
	c.li	a0,00000000
	c.beqz	s1,000000002302A91A

l2302A86C:
	c.beqz	s0,000000002302A91A

l2302A86E:
	c.mv	a1,s0
	c.mv	a0,s1
	addi	a2,s0,+00000010
	c.mv	a4,s1

l2302A878:
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
	bne	a2,a1,000000002302A878

l2302A8A0:
	lui	a2,00023077
	c.li	a1,00000004
	addi	a2,a2,-0000031C
	addi	a6,zero,+0000002C

l2302A8AE:
	andi	a4,a1,+00000003
	c.lw	a0,12(a5)
	c.bnez	a4,000000002302A90A

l2302A8B6:
	slli	a4,a5,00000008
	c.srli	a5,00000018
	c.or	a5,a4
	srli	a4,a5,00000018
	andi	a3,a5,+000000FF
	c.add	a4,a2
	lbu	a4,a4,+00000000
	c.add	a3,a2
	lbu	a3,a3,+00000000
	c.slli	a4,18
	c.or	a4,a3
	srli	a3,a5,00000010
	andi	a3,a3,+000000FF
	c.add	a3,a2
	lbu	a3,a3,+00000000
	c.slli	a3,10
	c.or	a3,a4
	srli	a4,a5,00000008
	andi	a4,a4,+000000FF
	c.add	a4,a2
	lbu	a5,a4,+00000000
	c.slli	a5,08
	or	a4,a3,a5
	andi	a5,a1,-00000004
	c.addi4spn	a3,00000030
	c.add	a5,a3
	lw	a5,a5,-0000002C
	c.xor	a5,a4

l2302A90A:
	c.lw	a0,0(a4)
	c.addi	a1,00000001
	c.addi	a0,00000004
	c.xor	a5,a4
	c.sw	a0,12(a5)
	bne	a1,a6,000000002302A8AE

l2302A918:
	c.li	a0,00000001

l2302A91A:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.addi16sp	00000040
	c.jr	ra

;; tc_aes_encrypt: 2302A924
;;   Called from:
;;     23026178 (in tc_cmac_setup)
;;     23026250 (in tc_cmac_update)
;;     23026292 (in tc_cmac_update)
;;     230262E8 (in tc_cmac_final)
;;     23027E28 (in bt_encrypt_le)
tc_aes_encrypt proc
	c.li	a5,00000000
	beq	a0,zero,000000002302AA14

l2302A92A:
	beq	a1,zero,000000002302AA14

l2302A92E:
	beq	a2,zero,000000002302AA14

l2302A932:
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.mv	s0,a2
	c.li	a3,00000010
	c.mv	a2,a1
	c.mv	s2,a0
	c.li	a1,00000010
	c.mv	a0,sp
	c.swsp	ra,0000009C
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s1,00000098
	jal	ra,0000000023026322
	c.mv	a1,s0
	c.mv	a0,sp
	lui	s4,00023077
	addi	s5,s0,+00000010
	jal	ra,000000002302A608
	addi	s0,s0,+000000A0
	addi	s3,sp,+00000010
	addi	s4,s4,-0000031C

l2302A96E:
	c.mv	s1,sp
	c.mv	a5,sp

l2302A972:
	lbu	a4,a5,+00000000
	c.addi	a5,00000001
	c.add	a4,s4
	lbu	a4,a4,+00000000
	sb	a4,a5,+00000FFF
	bne	a5,s3,000000002302A972

l2302A986:
	c.mv	a0,sp
	jal	ra,000000002302A6E2
	c.mv	a1,sp
	c.mv	a0,s3
	jal	ra,000000002302A776
	c.addi4spn	a1,00000004
	c.addi4spn	a0,00000014
	jal	ra,000000002302A776
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000018
	jal	ra,000000002302A776
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,0000001C
	jal	ra,000000002302A776
	c.li	a3,00000010
	c.mv	a2,s3
	c.li	a1,00000010
	c.mv	a0,sp
	jal	ra,0000000023026322
	c.mv	a1,s5
	c.mv	a0,sp
	c.addi	s5,00000010
	jal	ra,000000002302A608
	bne	s5,s0,000000002302A96E

l2302A9C6:
	lbu	a5,s1,+00000000
	c.addi	s1,00000001
	c.add	a5,s4
	lbu	a5,a5,+00000000
	sb	a5,s1,+00000FFF
	bne	s3,s1,000000002302A9C6

l2302A9DA:
	c.mv	a0,sp
	jal	ra,000000002302A6E2
	c.mv	a1,s0
	c.mv	a0,sp
	jal	ra,000000002302A608
	c.mv	a2,sp
	c.li	a3,00000010
	c.li	a1,00000010
	c.mv	a0,s2
	jal	ra,0000000023026322
	c.mv	a0,sp
	c.li	a2,00000010
	c.li	a1,00000000
	jal	ra,0000000023026346
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.li	a5,00000001
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.mv	a0,a5
	c.addi16sp	00000040
	c.jr	ra

l2302AA14:
	c.mv	a0,a5
	c.jr	ra

;; att_prepare_write_req: 2302AA18
att_prepare_write_req proc
	c.li	a0,00000006
	c.jr	ra

;; att_op_get_type: 2302AA1C
;;   Called from:
;;     2302AFCE (in att_cb.isra.3)
;;     2302B784 (in bt_att_create_pdu)
;;     2302B9B6 (in bt_att_recv)
att_op_get_type proc
	c.li	a4,0000000E
	c.mv	a5,a0
	beq	a0,a4,000000002302AA56

l2302AA24:
	bltu	a4,a0,000000002302AA82

l2302AA28:
	c.li	a4,00000007
	c.li	a0,00000002
	beq	a5,a4,000000002302AA58

l2302AA30:
	bltu	a4,a5,000000002302AA5A

l2302AA34:
	c.li	a4,00000003
	beq	a5,a4,000000002302AA58

l2302AA3A:
	bltu	a4,a5,000000002302AA4E

l2302AA3E:
	c.li	a4,00000001
	beq	a5,a4,000000002302AA58

l2302AA44:
	c.li	a4,00000002
	c.li	a0,00000001
	bne	a5,a4,000000002302AAE0

l2302AA4C:
	c.jr	ra

l2302AA4E:
	c.li	a4,00000005
	c.li	a0,00000002
	beq	a5,a4,000000002302AA58

l2302AA56:
	c.li	a0,00000001

l2302AA58:
	c.jr	ra

l2302AA5A:
	c.li	a4,0000000A
	c.li	a0,00000001
	beq	a5,a4,000000002302AA58

l2302AA62:
	bltu	a4,a5,000000002302AA76

l2302AA66:
	c.li	a4,00000008
	beq	a5,a4,000000002302AA58

l2302AA6C:
	c.li	a4,00000009
	c.li	a0,00000002
	bne	a5,a4,000000002302AAE0

l2302AA74:
	c.jr	ra

l2302AA76:
	c.li	a4,0000000C
	c.li	a0,00000001
	beq	a5,a4,000000002302AA58

l2302AA7E:
	c.li	a0,00000002
	c.jr	ra

l2302AA82:
	c.li	a4,00000017
	c.li	a0,00000002
	beq	a5,a4,000000002302AA58

l2302AA8A:
	bltu	a4,a5,000000002302AABE

l2302AA8E:
	c.li	a4,00000011
	beq	a5,a4,000000002302AA58

l2302AA94:
	bltu	a4,a5,000000002302AAA8

l2302AA98:
	c.li	a4,0000000F
	beq	a5,a4,000000002302AA58

l2302AA9E:
	c.li	a4,00000010
	c.li	a0,00000001
	bne	a5,a4,000000002302AAE0

l2302AAA6:
	c.jr	ra

l2302AAA8:
	c.li	a4,00000013
	c.li	a0,00000002
	beq	a5,a4,000000002302AA58

l2302AAB0:
	c.li	a0,00000001
	bltu	a5,a4,000000002302AA58

l2302AAB6:
	c.li	a4,00000016
	bne	a5,a4,000000002302AAE0

l2302AABC:
	c.jr	ra

l2302AABE:
	c.li	a4,0000001D
	c.li	a0,00000005
	beq	a5,a4,000000002302AA58

l2302AAC6:
	bltu	a4,a5,000000002302AAEC

l2302AACA:
	c.li	a4,00000019
	c.li	a0,00000002
	beq	a5,a4,000000002302AA58

l2302AAD2:
	c.li	a0,00000001
	bltu	a5,a4,000000002302AA58

l2302AAD8:
	c.li	a4,0000001B
	c.li	a0,00000003

l2302AADC:
	beq	a5,a4,000000002302AA58

l2302AAE0:
	andi	a5,a5,+00000040
	c.li	a0,00000006
	c.beqz	a5,000000002302AA58

l2302AAE8:
	c.li	a0,00000000
	c.jr	ra

l2302AAEC:
	addi	a4,zero,+00000052
	c.li	a0,00000000
	beq	a5,a4,000000002302AA58

l2302AAF6:
	addi	a4,zero,+000000D2
	beq	a5,a4,000000002302AA58

l2302AAFE:
	c.li	a4,0000001E
	c.li	a0,00000004
	c.j	000000002302AADC

;; att_req_destroy: 2302AB04
;;   Called from:
;;     2302B18C (in att_handle_rsp)
;;     2302B3AC (in att_reset)
;;     2302C224 (in bt_att_req_cancel)
att_req_destroy proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,16(a0)
	c.beqz	a0,000000002302AB14

l2302AB10:
	jal	ra,000000002302574E

l2302AB14:
	c.lw	s0,8(a5)
	c.beqz	a5,000000002302AB1C

l2302AB18:
	c.mv	a0,s0
	c.jalr	a5

l2302AB1C:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a2,00000018
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,000000002306D1BC

;; att_notify: 2302AB2C
att_notify proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a0,0(s0)
	addi	a0,a1,+00000008
	c.swsp	a1,00000084
	jal	ra,000000002302593A
	c.lwsp	a2,00000064
	lhu	a3,a1,+0000000C
	c.lw	a1,8(a2)
	c.mv	a1,a0
	c.mv	a0,s0
	jal	ra,000000002302A140
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; bt_gatt_foreach_attr: 2302AB58
;;   Called from:
;;     2302BAA6 (in att_read_group_req)
;;     2302BB86 (in att_read_mult_req)
;;     2302BC1C (in att_read_rsp)
;;     2302BD82 (in att_read_type_req)
;;     2302BE8C (in att_find_type_req)
;;     2302BF40 (in att_find_info_req)
;;     2302BFCA (in att_write_rsp.constprop.10)
bt_gatt_foreach_attr proc
	c.mv	a6,a3
	c.mv	a5,a2
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	jal	zero,0000000023028A94

;; read_group_cb: 2302AB66
read_group_cb proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	lw	s3,a1,+00000000
	c.mv	s1,a0
	c.lw	a0,0(a0)
	c.lui	s2,00003000
	c.mv	s0,a1
	addi	a5,s2,-00000800
	c.addi4spn	a1,00000008
	lw	s4,s3,+00000000
	sb	zero,sp,+00000008
	sh	a5,sp,+0000000A
	jal	ra,000000002302A3CE
	c.beqz	a0,000000002302ABE2

l2302AB98:
	c.lw	s1,0(a0)
	addi	s2,s2,-000007FF
	c.addi4spn	a1,0000000C
	sb	zero,sp,+0000000C
	sh	s2,sp,+0000000E
	jal	ra,000000002302A3CE
	c.beqz	a0,000000002302ABE2

l2302ABAE:
	c.lw	s0,16(a5)
	c.li	a0,00000001
	c.beqz	a5,000000002302ABD2

l2302ABB4:
	lbu	a3,a5,+00000003
	lbu	a2,a5,+00000002
	lhu	a4,s1,+00000010
	c.slli	a3,08
	c.or	a3,a2
	bgeu	a3,a4,000000002302ABD2

l2302ABC8:
	sb	a4,a5,+00000002
	c.srli	a4,00000008
	sb	a4,a5,+00000003

l2302ABD2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2302ABE2:
	c.lw	s0,4(a1)
	c.lw	s1,0(a0)
	jal	ra,000000002302A3CE
	c.beqz	a0,000000002302ABF4

l2302ABEC:
	sw	zero,s0,+00000010

l2302ABF0:
	c.li	a0,00000001
	c.j	000000002302ABD2

l2302ABF4:
	c.lw	s0,12(a5)
	c.lw	s0,8(a0)
	lbu	a4,a5,+00000000
	c.beqz	a4,000000002302AC10

l2302ABFE:
	lhu	a5,s3,+00000056
	lhu	a3,a0,+0000000C
	c.sub	a5,a3
	bge	a5,a4,000000002302AC10

l2302AC0C:
	c.li	a0,00000000
	c.j	000000002302ABD2

l2302AC10:
	c.li	a1,00000004
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.sw	s0,16(a0)
	lhu	a5,s1,+00000010
	c.mv	a1,s1
	andi	a3,a5,+000000FF
	c.srli	a5,00000008
	sb	a3,a0,+00000000
	sb	a5,a0,+00000001
	c.lw	s0,16(a4)
	c.mv	a0,s4
	sb	a5,a4,+00000003
	sb	a3,a4,+00000002
	c.lw	s0,8(a4)
	lhu	a3,s3,+00000056
	lw	a6,s1,+00000004
	lhu	a5,a4,+0000000C
	c.lw	a4,8(a2)
	c.li	a4,00000000
	c.sub	a3,a5
	c.slli	a3,10
	c.srli	a3,00000010
	c.add	a2,a5
	c.jalr	a6
	c.mv	a1,a0
	blt	a0,zero,000000002302AC0C

l2302AC5C:
	c.lw	s0,12(a3)
	addi	a5,a0,+00000004
	lbu	a4,a3,+00000000
	c.bnez	a4,000000002302AC76

l2302AC68:
	sb	a5,a3,+00000000

l2302AC6C:
	c.lw	s0,8(a0)
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.j	000000002302ABF0

l2302AC76:
	beq	a4,a5,000000002302AC6C

l2302AC7A:
	c.lw	s0,8(a4)
	lhu	a5,a4,+0000000C
	c.addi	a5,FFFFFFFC
	sh	a5,a4,+0000000C
	c.j	000000002302AC0C

;; read_type_cb: 2302AC88
read_type_cb proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lw	s3,a1,+00000000
	c.mv	s2,a0
	c.mv	s0,a1
	c.lw	a0,0(a0)
	c.lw	a1,4(a1)
	lw	s4,s3,+00000000
	c.li	s1,00000001
	jal	ra,000000002302A3CE
	c.bnez	a0,000000002302ACCE

l2302ACAE:
	c.li	a2,00000015
	c.mv	a1,s2
	c.mv	a0,s4
	jal	ra,0000000023028EE4
	sb	a0,s0,+00000014
	c.mv	s1,a0
	c.beqz	a0,000000002302ACE0

l2302ACC0:
	c.lw	s0,12(a5)
	lbu	s1,a5,+00000000
	c.beqz	s1,000000002302ACCE

l2302ACC8:
	sb	zero,s0,+00000014
	c.li	s1,00000000

l2302ACCE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2302ACE0:
	c.lw	s0,8(a0)
	c.li	a1,00000002
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.sw	s0,16(a0)
	lhu	a5,s2,+00000010
	c.mv	a1,s2
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	c.lw	s0,8(a4)
	lhu	a3,s3,+00000056
	lw	a6,s2,+00000004
	lhu	a5,a4,+0000000C
	c.lw	a4,8(a2)
	c.mv	a0,s4
	c.sub	a3,a5
	c.slli	a3,10
	c.li	a4,00000000
	c.srli	a3,00000010
	c.add	a2,a5
	c.jalr	a6
	c.mv	a1,a0
	bge	a0,zero,000000002302AD3C

l2302AD20:
	addi	a5,a0,+000000FF
	addi	a4,zero,+000000FE
	c.li	a0,0000000E
	bltu	a4,a5,000000002302AD36

l2302AD2E:
	sub	a1,zero,a1
	andi	a0,a1,+000000FF

l2302AD36:
	sb	a0,s0,+00000014
	c.j	000000002302ACCE

l2302AD3C:
	c.lw	s0,12(a3)
	addi	a5,a0,+00000002
	lbu	a4,a3,+00000000
	c.bnez	a4,000000002302AD6C

l2302AD48:
	sb	a5,a3,+00000000

l2302AD4C:
	c.lw	s0,8(a0)
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.lw	s0,8(a5)
	lhu	s1,s3,+00000056
	lhu	a5,a5,+0000000C
	c.sub	s1,a5
	c.lw	s0,12(a5)
	lbu	a5,a5,+00000000
	slt	s1,a5,s1
	c.j	000000002302ACCE

l2302AD6C:
	beq	a4,a5,000000002302AD4C

l2302AD70:
	c.lw	s0,8(a4)
	lhu	a5,a4,+0000000C
	c.addi	a5,FFFFFFFE
	sh	a5,a4,+0000000C
	c.j	000000002302ACCE

;; find_type_cb: 2302AD7E
find_type_cb proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	ra,000000AC
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	lw	s3,a1,+00000000
	c.mv	s1,a0
	c.lw	a0,0(a0)
	c.lui	s2,00003000
	c.mv	s0,a1
	addi	a5,s2,-000007FF
	c.mv	a1,sp
	lw	s4,s3,+00000000
	sb	zero,sp,+00000000
	sh	a5,sp,+00000002
	jal	ra,000000002302A3CE
	c.beqz	a0,000000002302AE46

l2302ADB0:
	c.lw	s1,0(a0)
	addi	s2,s2,-00000800
	c.addi4spn	a1,00000004
	sb	zero,sp,+00000004
	sh	s2,sp,+00000006
	jal	ra,000000002302A3CE
	c.beqz	a0,000000002302ADFA

l2302ADC6:
	c.lw	s0,8(a5)
	c.li	a0,00000001
	c.beqz	a5,000000002302ADEA

l2302ADCC:
	lbu	a3,a5,+00000003
	lbu	a2,a5,+00000002
	lhu	a4,s1,+00000010
	c.slli	a3,08
	c.or	a3,a2
	bgeu	a3,a4,000000002302ADEA

l2302ADE0:
	sb	a4,a5,+00000002
	c.srli	a4,00000008
	sb	a4,a5,+00000003

l2302ADEA:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.addi16sp	00000060
	c.jr	ra

l2302ADFA:
	c.lw	s0,4(a4)
	lhu	a5,s3,+00000056
	c.li	a0,00000000
	lhu	a4,a4,+0000000C
	c.sub	a5,a4
	c.li	a4,00000003
	bgeu	a4,a5,000000002302ADEA

l2302AE0E:
	c.lw	s1,4(a5)
	c.li	a4,00000000
	c.li	a3,00000010
	c.addi4spn	a2,00000008
	c.mv	a1,s1
	c.mv	a0,s4
	c.jalr	a5
	c.mv	s2,a0
	blt	a0,zero,000000002302AE46

l2302AE22:
	lbu	a2,s0,+00000010
	c.lw	s0,12(a0)
	beq	a2,s2,000000002302AEA0

l2302AE2C:
	c.mv	a1,a0
	c.addi4spn	a0,0000002C
	jal	ra,000000002302A434
	c.bnez	a0,000000002302AE4C

l2302AE36:
	lbu	a1,s0,+00000010
	lui	a0,00023077
	addi	a0,a0,-000000C8

l2302AE42:
	jal	ra,0000000023003AC6

l2302AE46:
	sw	zero,s0,+00000008
	c.j	000000002302AE9C

l2302AE4C:
	andi	a2,s2,+000000FF
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000018
	jal	ra,000000002302A434
	c.bnez	a0,000000002302AE66

l2302AE5A:
	lui	a0,00023077
	c.mv	a1,s2
	addi	a0,a0,-000000A4
	c.j	000000002302AE42

l2302AE66:
	c.addi4spn	a1,00000018
	c.addi4spn	a0,0000002C
	jal	ra,000000002302A3CE

l2302AE6E:
	c.bnez	a0,000000002302AE46

l2302AE70:
	c.lw	s0,4(a0)
	sb	zero,s0,+00000011
	c.li	a1,00000004
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.sw	s0,8(a0)
	lhu	a5,s1,+00000010
	andi	a3,a5,+000000FF
	c.srli	a5,00000008
	sb	a3,a0,+00000000
	sb	a5,a0,+00000001
	c.lw	s0,8(a4)
	sb	a3,a4,+00000002
	sb	a5,a4,+00000003

l2302AE9C:
	c.li	a0,00000001
	c.j	000000002302ADEA

l2302AEA0:
	c.addi4spn	a1,00000008
	jal	ra,000000002306CEF8
	c.j	000000002302AE6E

;; find_info_cb: 2302AEA8
find_info_cb proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	c.lw	a1,8(a5)
	c.mv	s1,a0
	c.mv	s0,a1
	lw	s2,a1,+00000000
	c.bnez	a5,000000002302AEDA

l2302AEBE:
	c.lw	a1,4(a0)
	c.li	a1,00000001
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.sw	s0,8(a0)
	c.lw	s1,0(a5)
	lbu	a5,a5,+00000000
	sltu	a5,zero,a5
	c.addi	a5,00000001
	sb	a5,a0,+00000000

l2302AEDA:
	c.lw	s0,8(a5)
	c.li	a4,00000001
	lbu	a5,a5,+00000000
	beq	a5,a4,000000002302AF34

l2302AEE6:
	c.li	a4,00000002
	c.li	a0,00000000
	bne	a5,a4,000000002302AF7E

l2302AEEE:
	c.lw	s1,0(a4)
	c.li	a0,00000000
	lbu	a4,a4,+00000000
	bne	a4,a5,000000002302AF7E

l2302AEFA:
	c.lw	s0,4(a0)
	c.li	a1,00000012
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.sw	s0,12(a0)
	lhu	a5,s1,+00000010
	c.li	a2,00000010
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	c.lw	s1,0(a1)
	c.lw	s0,12(a0)
	c.addi	a1,00000001
	c.addi	a0,00000002
	jal	ra,000000002306CF80
	c.lw	s0,4(a5)
	lhu	a0,s2,+00000056
	lhu	a5,a5,+0000000C
	c.sub	a0,a5
	sltiu	a0,a0,+00000013
	c.j	000000002302AF7A

l2302AF34:
	c.lw	s1,0(a5)
	c.li	a0,00000000
	lbu	a5,a5,+00000000
	c.bnez	a5,000000002302AF7E

l2302AF3E:
	c.lw	s0,4(a0)
	c.li	a1,00000004
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.sw	s0,12(a0)
	lhu	a5,s1,+00000010
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	c.lw	s1,0(a5)
	c.lw	s0,12(a4)
	lhu	a5,a5,+00000002
	sb	a5,a4,+00000002
	c.srli	a5,00000008
	sb	a5,a4,+00000003
	c.lw	s0,4(a5)
	lhu	a0,s2,+00000056
	lhu	a5,a5,+0000000C
	c.sub	a0,a5
	sltiu	a0,a0,+00000005

l2302AF7A:
	xori	a0,a0,+00000001

l2302AF7E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; bt_att_connected: 2302AF8A
bt_att_connected proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a1,00000014
	c.mv	s0,a0
	addi	a0,a0,+000000D8
	c.swsp	ra,00000084
	jal	ra,0000000023025092
	c.li	a5,00000017
	lui	a1,0002302B
	sh	a5,s0,+00000056
	sh	a5,s0,+00000042
	addi	a0,s0,+000000A8
	addi	a1,a1,+00000420
	jal	ra,0000000023025EA4
	c.lwsp	a2,00000020
	sw	zero,s0,+000000A0
	sw	zero,s0,+000000A4
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; att_cb.isra.3: 2302AFC6
;;   Called from:
;;     2302B02C (in att_send)
;;     2302B0CA (in att_send_req)
;;     2302B4D2 (in bt_att_encrypt_change)
att_cb.isra.3 proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a0,a0,+00000000
	jal	ra,000000002302AA1C
	c.addi	a0,FFFFFFFF
	andi	a0,a0,+000000FF
	c.li	a5,00000004
	bltu	a5,a0,000000002302AFF2

l2302AFDE:
	lui	a5,00023077
	c.slli	a0,02
	addi	a5,a5,-0000021C
	c.add	a0,a5
	c.lw	a0,0(a0)

l2302AFEC:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2302AFF2:
	lui	a0,0002302B
	addi	a0,a0,+000004FC
	c.j	000000002302AFEC

;; att_send: 2302AFFC
;;   Called from:
;;     2302B560 (in att_pdu_sent)
;;     2302C190 (in bt_att_send)
att_send proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.lw	a1,8(a5)
	c.mv	s2,a0
	c.mv	s0,a1
	lbu	a4,a5,+00000000
	addi	a5,zero,+000000D2
	c.mv	s3,a3
	bne	a4,a5,000000002302B028

l2302B01C:
	c.swsp	a2,00000084
	jal	ra,00000000230232F0
	c.mv	s1,a0
	c.lwsp	a2,00000084
	c.bnez	a0,000000002302B04C

l2302B028:
	c.bnez	a2,000000002302B032

l2302B02A:
	c.lw	s0,8(a0)
	jal	ra,000000002302AFC6
	c.mv	a2,a0

l2302B032:
	c.mv	a3,a2
	c.mv	a2,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.mv	a4,s3
	c.mv	a0,s2
	c.lwsp	t3,00000068
	c.lwsp	zero,00000158
	c.li	a1,00000004
	c.addi16sp	00000030
	jal	zero,000000002301F92C

l2302B04C:
	lui	a0,00023077
	addi	a0,a0,-000001A4
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	jal	ra,000000002302574E
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; att_send_req: 2302B06E
;;   Called from:
;;     2302B134 (in att_handle_rsp)
;;     2302C1F2 (in bt_att_req_send)
att_send_req proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	sw	a1,a0,+0000009C
	c.mv	s0,a1
	c.mv	s1,a0
	c.li	a1,00000000
	addi	a0,a0,+000000CC
	jal	ra,00000000230251B2
	c.lw	s0,16(a1)
	bge	a0,zero,000000002302B0A4

l2302B08E:
	addi	a0,s1,+000000D8
	jal	ra,00000000230250DE
	c.li	s1,00000000

l2302B098:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2302B0A4:
	addi	a0,a1,+00000008
	c.swsp	a1,00000084
	jal	ra,000000002302595E
	c.lwsp	a2,00000064
	sh	a0,s0,+0000000C
	c.lw	s0,16(a0)
	lhu	a5,a1,+0000000C
	sh	a5,s0,+0000000E
	c.lw	s1,0(s1)
	jal	ra,00000000230257FC
	c.lw	s0,16(a5)
	c.swsp	a0,00000084
	c.lw	a5,8(a0)
	jal	ra,000000002302AFC6
	c.lwsp	a2,00000084
	c.mv	a3,a0
	c.li	a4,00000000
	c.mv	a0,s1
	c.li	a1,00000004
	jal	ra,000000002301F92C
	c.mv	s1,a0
	c.beqz	a0,000000002302B098

l2302B0E0:
	c.lw	s0,16(a0)
	jal	ra,000000002302574E
	sw	zero,s0,+00000010
	c.j	000000002302B098

;; att_handle_rsp: 2302B0EC
;;   Called from:
;;     2302B19A (in att_handle_find_info_rsp)
;;     2302B260 (in att_error_rsp)
;;     2302B316 (in att_mtu_rsp)
;;     2302B3CE (in att_reset)
;;     2302B458 (in bt_att_encrypt_change)
att_handle_rsp proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	addi	a0,a0,+000000A8
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s2,a1
	c.mv	s3,a2
	c.mv	s1,a3
	jal	ra,0000000023025F66
	lw	a5,s0,+0000009C
	c.bnez	a5,000000002302B148

l2302B10E:
	lui	a0,00023077
	addi	a0,a0,-000001C0
	jal	ra,0000000023003AC6

l2302B11A:
	lw	a1,s0,+000000A0
	c.beqz	a1,000000002302B138

l2302B120:
	c.lw	a1,0(a5)
	lw	a4,s0,+000000A4
	sw	a5,s0,+000000A0
	bne	a1,a4,000000002302B132

l2302B12E:
	sw	a5,s0,+000000A4

l2302B132:
	c.mv	a0,s0
	jal	ra,000000002302B06E

l2302B138:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2302B148:
	lui	a4,00042013
	addi	a4,a4,-00000760
	bne	a5,a4,000000002302B15A

l2302B154:
	sw	zero,s0,+0000009C
	c.j	000000002302B11A

l2302B15A:
	c.lw	a5,16(a0)
	c.beqz	a0,000000002302B16A

l2302B15E:
	jal	ra,000000002302574E
	lw	a5,s0,+0000009C
	sw	zero,a5,+00000010

l2302B16A:
	lw	a5,s0,+0000009C
	c.mv	a3,s3
	c.mv	a2,s2
	lw	a6,a5,+00000004
	sw	zero,a5,+00000004
	c.lw	s0,0(a0)
	lw	a4,s0,+0000009C
	c.mv	a1,s1
	c.jalr	a6
	lw	a0,s0,+0000009C
	c.lw	a0,4(a5)
	c.bnez	a5,000000002302B154

l2302B18C:
	jal	ra,000000002302AB04
	c.j	000000002302B154

;; att_handle_find_info_rsp: 2302B192
;;   Called from:
;;     2302B19E (in att_handle_find_type_rsp)
;;     2302B1A2 (in att_handle_read_type_rsp)
;;     2302B1A6 (in att_handle_read_rsp)
;;     2302B1AA (in att_handle_read_blob_rsp)
;;     2302B1AE (in att_handle_read_mult_rsp)
;;     2302B1B2 (in att_handle_read_group_rsp)
;;     2302B1B6 (in att_handle_write_rsp)
;;     2302B1BA (in att_handle_prepare_write_rsp)
;;     2302B1BE (in att_handle_exec_write_rsp)
;;     2302B1C2 (in att_confirm)
att_handle_find_info_rsp proc
	lhu	a2,a1,+0000000C
	c.lw	a1,8(a1)
	c.li	a3,00000000
	jal	zero,000000002302B0EC

;; att_handle_find_type_rsp: 2302B19E
att_handle_find_type_rsp proc
	jal	zero,000000002302B192

;; att_handle_read_type_rsp: 2302B1A2
att_handle_read_type_rsp proc
	jal	zero,000000002302B192

;; att_handle_read_rsp: 2302B1A6
att_handle_read_rsp proc
	jal	zero,000000002302B192

;; att_handle_read_blob_rsp: 2302B1AA
att_handle_read_blob_rsp proc
	jal	zero,000000002302B192

;; att_handle_read_mult_rsp: 2302B1AE
att_handle_read_mult_rsp proc
	jal	zero,000000002302B192

;; att_handle_read_group_rsp: 2302B1B2
att_handle_read_group_rsp proc
	jal	zero,000000002302B192

;; att_handle_write_rsp: 2302B1B6
att_handle_write_rsp proc
	jal	zero,000000002302B192

;; att_handle_prepare_write_rsp: 2302B1BA
att_handle_prepare_write_rsp proc
	jal	zero,000000002302B192

;; att_handle_exec_write_rsp: 2302B1BE
att_handle_exec_write_rsp proc
	jal	zero,000000002302B192

;; att_confirm: 2302B1C2
att_confirm proc
	jal	zero,000000002302B192

;; att_error_rsp: 2302B1C6
att_error_rsp proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	lw	a5,a0,+0000009C
	c.mv	s0,a0
	c.beqz	a5,000000002302B268

l2302B1D4:
	lui	a4,00042013
	addi	a4,a4,-00000760
	beq	a5,a4,000000002302B268

l2302B1E0:
	c.lw	a5,16(a4)
	c.lw	a1,8(a2)
	c.beqz	a4,000000002302B1F8

l2302B1E6:
	lhu	a1,a5,+0000000C
	c.lw	a4,16(a3)
	c.add	a3,a1
	c.sw	a4,8(a3)
	lhu	a5,a5,+0000000E
	sh	a5,a4,+0000000C

l2302B1F8:
	lw	a5,s0,+0000009C
	lbu	a3,a2,+00000003
	lbu	a5,a5,+00000014
	c.bnez	a5,000000002302B254

l2302B206:
	c.li	a5,00000005
	c.lw	s0,0(a0)
	beq	a3,a5,000000002302B23C

l2302B20E:
	c.li	a5,0000000F
	bne	a3,a5,000000002302B254

l2302B214:
	lbu	a4,a0,+00000009
	c.li	a5,00000001
	bltu	a5,a4,000000002302B254

l2302B21E:
	c.li	a1,00000002

l2302B220:
	c.swsp	a3,00000084
	jal	ra,0000000023026CA6
	c.lwsp	a2,000000A4
	c.bnez	a0,000000002302B254

l2302B22A:
	lw	a5,s0,+0000009C
	c.li	a4,00000001
	sb	a4,a5,+00000014
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2302B23C:
	lbu	a5,a0,+00000009
	c.li	a4,00000001
	bgeu	a4,a5,000000002302B21E

l2302B246:
	c.li	a4,00000002
	beq	a5,a4,000000002302B264

l2302B24C:
	c.li	a4,00000003
	c.li	a1,00000004
	beq	a5,a4,000000002302B220

l2302B254:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi16sp	00000020
	jal	zero,000000002302B0EC

l2302B264:
	c.li	a1,00000003
	c.j	000000002302B220

l2302B268:
	c.li	a3,0000000E
	c.j	000000002302B254

;; bt_att_accept: 2302B26C
bt_att_accept proc
	c.addi	sp,FFFFFFE0
	lui	a5,00042012
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	addi	a4,a5,+000006D8
	c.lw	a4,0(a3)
	c.mv	s3,a1
	addi	s1,a5,+000006D8
	c.beqz	a3,000000002302B2AE

l2302B28A:
	lw	a5,a4,+000000E4
	c.beqz	a5,000000002302B2EE

l2302B290:
	c.mv	a1,a0
	lui	a0,00023077
	addi	a0,a0,-00000164
	jal	ra,0000000023003AC6
	c.li	a0,FFFFFFF4

l2302B2A0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2302B2AE:
	addi	a0,a5,+000006D8
	c.li	s0,00000000

l2302B2B4:
	addi	a2,zero,+000000E4
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	addi	a0,zero,+000000E4
	add	s0,s0,a0
	lui	a5,0004200D
	addi	a5,a5,+00000538
	c.li	a2,0000000A
	c.li	a1,0000000A
	add	s2,s1,s0
	addi	s0,s0,+000000CC
	sw	a5,s2,+00000004
	add	a0,s1,s0
	jal	ra,000000002302517E
	c.li	a0,00000000
	sw	s2,s3,+00000000
	c.j	000000002302B2A0

l2302B2EE:
	addi	a0,s1,+000000E4
	c.li	s0,00000001
	c.j	000000002302B2B4

;; att_mtu_rsp: 2302B2F6
att_mtu_rsp proc
	c.mv	a4,a0
	c.mv	a2,a1
	c.beqz	a0,000000002302B33A

l2302B2FC:
	c.lw	a1,8(a1)
	lbu	a5,a1,+00000001
	lbu	a3,a1,+00000000
	c.slli	a5,08
	c.or	a5,a3
	c.li	a3,00000016
	bltu	a3,a5,000000002302B31A

l2302B310:
	c.li	a3,00000004
	c.li	a2,00000000
	c.li	a1,00000000

l2302B316:
	jal	zero,000000002302B0EC

l2302B31A:
	addi	a0,zero,+000000F7
	c.mv	a3,a5
	bgeu	a0,a5,000000002302B328

l2302B324:
	addi	a3,zero,+000000F7

l2302B328:
	sh	a3,a4,+00000042
	sh	a3,a4,+00000056
	lhu	a2,a2,+0000000C
	c.li	a3,00000000
	c.mv	a0,a4
	c.j	000000002302B316

l2302B33A:
	c.jr	ra

;; att_reset: 2302B33C
;;   Called from:
;;     2302B3DA (in bt_att_disconnected)
;;     2302B438 (in att_timeout)
att_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	c.mv	s0,a0
	addi	s1,a0,+000000D8

l2302B34C:
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002302513A
	c.bnez	a0,000000002302B390

l2302B356:
	c.li	a1,00000004
	addi	a0,s0,+00000098
	jal	ra,00000000230254FA
	c.li	s1,0000000A
	addi	s2,s0,+000000CC

l2302B366:
	c.mv	a0,s2
	c.addi	s1,FFFFFFFF
	jal	ra,00000000230251D2
	c.bnez	s1,000000002302B366

l2302B370:
	lw	s1,s0,+000000A0
	c.bnez	s1,000000002302B396

l2302B376:
	lw	a5,s0,+0000009C
	sw	zero,s0,+000000A0
	sw	zero,s0,+000000A4
	c.bnez	a5,000000002302B3BC

l2302B384:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2302B390:
	jal	ra,000000002302574E
	c.j	000000002302B34C

l2302B396:
	lw	s2,s1,+00000000

l2302B39A:
	c.lw	s1,4(a5)
	c.beqz	a5,000000002302B3AA

l2302B39E:
	c.mv	a4,s1
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,0000000E
	c.li	a0,00000000
	c.jalr	a5

l2302B3AA:
	c.mv	a0,s1
	jal	ra,000000002302AB04
	beq	s2,zero,000000002302B376

l2302B3B4:
	c.mv	s1,s2
	lw	s2,s2,+00000000
	c.j	000000002302B39A

l2302B3BC:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a3,0000000E
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,000000002302B0EC

;; bt_att_disconnected: 2302B3D2
bt_att_disconnected proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,000000002302B33C
	c.lw	s0,0(a0)
	jal	ra,000000002302A298
	lw	a5,s0,+000000B8
	c.beqz	a5,000000002302B3F2

l2302B3EA:
	addi	a0,s0,+000000A8
	jal	ra,0000000023025ECE

l2302B3F2:
	lw	a5,s0,+000000D8
	c.beqz	a5,000000002302B404

l2302B3F8:
	addi	a0,s0,+000000D8
	jal	ra,00000000230250E6
	sw	zero,s0,+000000D8

l2302B404:
	lw	a5,s0,+000000CC
	c.beqz	a5,000000002302B418

l2302B40A:
	addi	a0,s0,+000000CC
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023025204

l2302B418:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; att_timeout: 2302B420
att_timeout proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	lui	a0,00023077
	addi	a0,a0,-00000174
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6
	addi	a0,s0,-000000A8
	jal	ra,000000002302B33C
	lw	a0,s0,-000000A8
	jal	ra,000000002302A298
	c.lwsp	a2,00000020
	sw	zero,s0,+00000F58
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bt_att_encrypt_change: 2302B450
bt_att_encrypt_change proc
	c.beqz	a1,000000002302B45C

l2302B452:
	c.li	a3,00000005
	c.li	a2,00000000
	c.li	a1,00000000
	jal	zero,000000002302B0EC

l2302B45C:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.lw	a0,0(s1)
	c.mv	s0,a0
	c.mv	a0,s1
	jal	ra,000000002302A26E
	lbu	a4,s1,+00000009
	c.li	a5,00000001
	beq	a4,a5,000000002302B4EC

l2302B47A:
	lw	a5,s0,+0000009C
	c.beqz	a5,000000002302B4EC

l2302B480:
	lbu	a5,a5,+00000014
	c.beqz	a5,000000002302B4EC

l2302B486:
	addi	s2,s0,+000000CC
	c.li	a1,FFFFFFFF
	c.mv	a0,s2
	jal	ra,00000000230251B2
	c.lw	s0,0(a5)
	lbu	a4,a5,+0000000D
	c.li	a5,00000004
	bne	a4,a5,000000002302B4C8

l2302B49E:
	addi	a0,s0,+00000098
	jal	ra,00000000230254AC
	c.srai	a0,00000002
	c.andi	a0,00000001
	c.beqz	a0,000000002302B4C8

l2302B4AC:
	lui	a0,00023077
	addi	a0,a0,-00000114
	jal	ra,0000000023003AC6
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,00000000230251D2

l2302B4C8:
	lw	a5,s0,+0000009C
	c.lw	a5,16(a2)
	c.lw	a2,8(a0)
	c.swsp	a2,00000084
	jal	ra,000000002302AFC6
	c.lwsp	a2,00000084
	c.mv	a3,a0
	c.li	a4,00000000
	c.li	a1,00000004
	c.mv	a0,s1
	jal	ra,000000002301F92C
	lw	a5,s0,+0000009C
	sw	zero,a5,+00000010

l2302B4EC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; att_exec_write_req: 2302B4F8
att_exec_write_req proc
	c.li	a0,00000006
	c.jr	ra

;; att_pdu_sent: 2302B4FC
;;   Called from:
;;     2302B5FE (in att_req_sent)
;;     2302B620 (in att_cfm_sent)
att_pdu_sent proc
	c.addi16sp	FFFFFFD0
	c.li	a1,00000004
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.mv	s3,a0
	jal	ra,000000002301FDCC
	c.mv	s1,a0
	addi	s2,a0,+000000D8

l2302B516:
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,00000000230256E4
	c.mv	a1,a0
	c.bnez	a0,000000002302B536

l2302B522:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	addi	a0,s1,+000000CC
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	jal	zero,00000000230251D2

l2302B536:
	lw	s0,s1,+0000009C
	c.beqz	s0,000000002302B55A

l2302B53C:
	c.lw	s0,16(a5)
	bne	a5,a1,000000002302B55A

l2302B542:
	addi	a0,a1,+00000008
	c.swsp	a1,00000084
	jal	ra,000000002302595E
	c.lwsp	a2,00000064
	sh	a0,s0,+0000000C
	lhu	a5,a1,+0000000C
	sh	a5,s0,+0000000E

l2302B55A:
	c.li	a3,00000000
	c.li	a2,00000000
	c.mv	a0,s3
	jal	ra,000000002302AFFC
	c.bnez	a0,000000002302B516

l2302B566:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; att_chan_get: 2302B574
;;   Called from:
;;     2302B754 (in bt_att_create_pdu)
;;     2302C11A (in bt_att_get_mtu)
;;     2302C142 (in bt_att_send)
;;     2302C1AC (in bt_att_req_send)
;;     2302C202 (in bt_att_req_cancel)
att_chan_get proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lbu	a4,a0,+0000000D
	c.li	a5,00000004
	beq	a4,a5,000000002302B594

l2302B584:
	lui	a0,00023076
	addi	a0,a0,+0000011C

l2302B58C:
	jal	ra,0000000023003AC6
	c.li	s0,00000000
	c.j	000000002302B5AA

l2302B594:
	c.li	a1,00000004
	jal	ra,000000002301FDE2
	c.mv	s0,a0
	c.bnez	a0,000000002302B5B4

l2302B59E:
	lui	a0,00023077
	addi	a0,a0,-00000208
	jal	ra,0000000023003AC6

l2302B5AA:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2302B5B4:
	addi	a0,a0,+00000098
	jal	ra,00000000230254AC
	c.srai	a0,00000002
	c.andi	a0,00000001
	c.beqz	a0,000000002302B5AA

l2302B5C2:
	lui	a0,00023077
	addi	a0,a0,-000001E8
	c.j	000000002302B58C

;; att_req_sent: 2302B5CC
att_req_sent proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a1
	c.li	a1,00000004
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002301FDCC
	lw	a5,a0,+0000009C
	c.beqz	a5,000000002302B5F2

l2302B5E4:
	c.lui	a1,00007000
	addi	a1,a1,+00000530
	addi	a0,a0,+000000A8
	jal	ra,0000000023025FC2

l2302B5F2:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002302B4FC

;; att_cfm_sent: 2302B602
;;   Called from:
;;     2302B624 (in att_rsp_sent)
att_cfm_sent proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a1
	c.li	a1,00000004
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002301FDCC
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002302B4FC

;; att_rsp_sent: 2302B624
att_rsp_sent proc
	jal	zero,000000002302B602

;; write_cb: 2302B628
write_cb proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a1
	c.swsp	s2,00000000
	c.mv	a1,a0
	c.mv	s2,a0
	c.lw	s0,0(a0)
	addi	a2,zero,+0000002A
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	jal	ra,0000000023028EE4
	sb	a0,s0,+00000014
	c.li	s1,00000000
	c.bnez	a0,000000002302B698

l2302B64A:
	lbu	a5,s0,+00000008
	c.mv	s1,a0
	lw	a6,s2,+00000008
	lhu	a4,s0,+00000012
	lhu	a3,s0,+00000010
	c.lw	s0,12(a2)
	c.lw	s0,0(a0)
	sltiu	a5,a5,+00000001
	c.slli	a5,01
	c.mv	a1,s2
	c.jalr	a6
	blt	a0,zero,000000002302B67E

l2302B66E:
	lhu	a5,s0,+00000010
	bne	a0,a5,000000002302B6A6

l2302B676:
	sb	zero,s0,+00000014
	c.li	s1,00000001
	c.j	000000002302B698

l2302B67E:
	addi	a4,a0,+000000FF
	addi	a3,zero,+000000FE
	c.li	a5,0000000E
	bltu	a3,a4,000000002302B694

l2302B68C:
	sub	a0,zero,a0
	andi	a5,a0,+000000FF

l2302B694:
	sb	a5,s0,+00000014

l2302B698:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2302B6A6:
	c.li	a5,0000000E
	c.j	000000002302B694

;; read_cb: 2302B6AA
read_cb proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lw	s4,a1,+00000000
	c.mv	s2,a0
	c.lw	a1,8(a0)
	lw	s3,s4,+00000000
	c.mv	s0,a1
	c.addi	a0,00000008
	c.li	a1,00000000
	jal	ra,000000002302586C
	c.sw	s0,12(a0)
	sb	zero,s0,+00000010
	c.li	a2,00000015
	c.mv	a1,s2
	c.mv	a0,s3
	jal	ra,0000000023028EE4
	sb	a0,s0,+00000010
	c.li	s1,00000000
	c.bnez	a0,000000002302B72A

l2302B6E6:
	c.lw	s0,8(a4)
	lhu	a3,s4,+00000056
	lw	a6,s2,+00000004
	lhu	a5,a4,+0000000C
	c.lw	a4,8(a2)
	lhu	a4,s0,+00000004
	c.sub	a3,a5
	c.slli	a3,10
	c.mv	a1,s2
	c.mv	s1,a0
	c.srli	a3,00000010
	c.add	a2,a5
	c.mv	a0,s3
	c.jalr	a6
	c.mv	a1,a0
	bge	a0,zero,000000002302B73C

l2302B710:
	addi	a5,a0,+000000FF
	addi	a4,zero,+000000FE
	c.li	a0,0000000E
	bltu	a4,a5,000000002302B726

l2302B71E:
	sub	a1,zero,a1
	andi	a0,a1,+000000FF

l2302B726:
	sb	a0,s0,+00000010

l2302B72A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2302B73C:
	c.lw	s0,8(a0)
	c.li	s1,00000001
	c.addi	a0,00000008
	jal	ra,000000002302586C
	c.j	000000002302B72A

;; bt_att_create_pdu: 2302B748
;;   Called from:
;;     23027FEA (in gatt_notify)
;;     23028160 (in gatt_indicate)
;;     23028398 (in gatt_write_ccc.constprop.21)
;;     230290AA (in bt_gatt_exchange_mtu)
;;     23029708 (in gatt_read_type_rsp)
;;     23029ABC (in bt_gatt_read)
;;     23029B34 (in bt_gatt_read)
;;     23029B8C (in bt_gatt_read)
;;     23029BBE (in bt_gatt_read)
;;     23029D40 (in bt_gatt_write_without_response_cb)
;;     23029E18 (in bt_gatt_write)
;;     23029E6A (in bt_gatt_write)
;;     23029F22 (in gatt_prepare_write_rsp)
;;     2302B7EE (in att_indicate)
;;     2302B83C (in att_mtu_req)
;;     2302B8B0 (in send_err_rsp.part.7)
;;     2302BA7A (in att_read_group_req)
;;     2302BB40 (in att_read_mult_req)
;;     2302BBFC (in att_read_rsp)
;;     2302BD2E (in att_read_type_req)
;;     2302BE64 (in att_find_type_req)
;;     2302BF04 (in att_find_info_req)
;;     2302BFE2 (in att_write_rsp.constprop.10)
bt_att_create_pdu proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a1
	c.swsp	a2,00000084
	jal	ra,000000002302B574
	c.mv	s0,a0
	c.beqz	a0,000000002302B776

l2302B75C:
	c.lwsp	a2,00000084
	lhu	a1,a0,+00000056
	c.addi	a2,00000001
	bgeu	a1,a2,000000002302B782

l2302B768:
	lui	a0,00023077
	addi	a0,a0,-0000013C
	jal	ra,0000000023003AC6
	c.li	s0,00000000

l2302B776:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2302B782:
	c.mv	a0,s1
	jal	ra,000000002302AA1C
	c.li	a5,00000002
	beq	a0,a5,000000002302B796

l2302B78E:
	c.li	a5,00000004
	c.li	a2,FFFFFFFF
	bne	a0,a5,000000002302B79C

l2302B796:
	c.lui	a2,00007000
	addi	a2,a2,+00000530

l2302B79C:
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,000000002301F926
	c.mv	s0,a0
	c.bnez	a0,000000002302B7B8

l2302B7A8:
	lui	a0,00023075
	c.mv	a1,s1
	addi	a0,a0,+00000164
	jal	ra,0000000023003AC6
	c.j	000000002302B776

l2302B7B8:
	c.li	a1,00000001
	c.addi	a0,00000008
	jal	ra,000000002302586C
	sb	s1,a0,+00000000
	c.j	000000002302B776

;; att_indicate: 2302B7C6
att_indicate proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a0,0(s0)
	addi	a0,a1,+00000008
	c.swsp	a1,00000084
	jal	ra,000000002302593A
	c.lwsp	a2,00000064
	c.lw	a1,8(a2)
	lhu	a3,a1,+0000000C
	c.mv	a1,a0
	c.mv	a0,s0
	jal	ra,000000002302A140
	c.li	a2,00000000
	c.li	a1,0000001E
	c.mv	a0,s0
	jal	ra,000000002302B748
	c.beqz	a0,000000002302B808

l2302B7F4:
	lui	a3,0002302B
	c.mv	a2,a0
	c.li	a4,00000000
	addi	a3,a3,+00000602
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,000000002301F92C

l2302B808:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; att_mtu_req: 2302B812
att_mtu_req proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.lw	a1,8(a5)
	lbu	s0,a5,+00000001
	lbu	a4,a5,+00000000
	c.li	a5,00000016
	c.slli	s0,08
	c.or	s0,a4
	bgeu	a5,s0,000000002302B894

l2302B830:
	lw	s2,a0,+00000000
	c.li	a2,00000002
	c.mv	s1,a0
	c.li	a1,00000003
	c.mv	a0,s2
	jal	ra,000000002302B748
	c.mv	a2,a0
	c.li	a0,0000000E
	c.beqz	a2,000000002302B888

l2302B846:
	c.li	a1,00000002
	addi	a0,a2,+00000008
	c.swsp	a2,00000084
	jal	ra,000000002302586C
	c.lwsp	a2,00000084
	c.li	a5,FFFFFFF7
	lui	a3,0002302B
	sb	a5,a0,+00000000
	sb	zero,a0,+00000001
	c.li	a4,00000000
	addi	a3,a3,+00000624
	c.li	a1,00000004
	c.mv	a0,s2
	jal	ra,000000002301F92C
	addi	a4,zero,+000000F7
	c.mv	a5,s0
	bgeu	a4,s0,000000002302B87E

l2302B87A:
	addi	a5,zero,+000000F7

l2302B87E:
	sh	a5,s1,+00000042
	sh	a5,s1,+00000056
	c.li	a0,00000000

l2302B888:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2302B894:
	c.li	a0,00000004
	c.j	000000002302B888

;; send_err_rsp.part.7: 2302B898
;;   Called from:
;;     2302B9C8 (in bt_att_recv)
;;     2302BAC2 (in att_read_group_req)
;;     2302BAE4 (in att_read_group_req)
;;     2302BBA0 (in att_read_mult_req)
;;     2302BC38 (in att_read_rsp)
;;     2302BD54 (in att_read_type_req)
;;     2302BE30 (in att_find_type_req)
;;     2302BF28 (in att_find_info_req)
;;     2302C016 (in att_write_rsp.constprop.10)
send_err_rsp.part.7 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.mv	s0,a2
	c.mv	s3,a1
	c.li	a2,00000004
	c.li	a1,00000001
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.mv	s1,a0
	c.mv	s2,a3
	jal	ra,000000002302B748
	c.beqz	a0,000000002302B8F4

l2302B8B6:
	c.mv	a2,a0
	c.li	a1,00000004
	c.addi	a0,00000008
	c.swsp	a2,00000084
	jal	ra,000000002302586C
	sb	s0,a0,+00000001
	c.srli	s0,00000008
	sb	s3,a0,+00000000
	sb	s0,a0,+00000002
	sb	s2,a0,+00000003
	c.lwsp	s0,00000114
	c.lwsp	a2,00000084
	c.lwsp	a2,00000130
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.mv	a0,s1
	c.lwsp	tp,00000134
	lui	a3,0002302B
	c.li	a4,00000000
	addi	a3,a3,+00000624
	c.li	a1,00000004
	c.addi16sp	00000030
	jal	zero,000000002301F92C

l2302B8F4:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; bt_att_recv: 2302B902
bt_att_recv proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	lhu	a5,a1,+0000000C
	c.bnez	a5,000000002302B934

l2302B916:
	lui	a0,00023077
	addi	a0,a0,-00000104
	jal	ra,0000000023003AC6

l2302B922:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l2302B934:
	c.mv	s2,a1
	c.mv	s4,a0
	c.li	a1,00000001
	addi	a0,s2,+00000008
	jal	ra,000000002302590A
	lbu	a2,a0,+00000000
	lui	s0,00023077
	addi	a4,s0,-00000080
	c.mv	s3,a0
	c.li	a5,00000000
	addi	s0,s0,-00000080
	c.li	a3,0000001C

l2302B958:
	lbu	a1,a4,+00000000
	bne	a1,a2,000000002302B998

l2302B960:
	slli	s1,a5,00000003
	add	a5,s0,s1
	lhu	a1,s2,+0000000C
	lbu	a4,a5,+00000001
	bgeu	a1,a4,000000002302B9CE

l2302B974:
	lui	a0,00023075
	addi	a0,a0,+00000644
	jal	ra,0000000023003AC6
	c.li	a3,00000004

l2302B982:
	c.add	s0,s1
	lbu	a4,s0,+00000002
	c.li	a5,00000001
	bne	a4,a5,000000002302B922

l2302B98E:
	c.beqz	a3,000000002302B922

l2302B990:
	lbu	a1,s3,+00000000
	c.beqz	a1,000000002302B922

l2302B996:
	c.j	000000002302B9C2

l2302B998:
	c.addi	a5,00000001
	c.addi	a4,00000008
	bne	a5,a3,000000002302B958

l2302B9A0:
	lui	a0,00023077
	c.mv	a1,a2
	addi	a0,a0,-000000E4
	jal	ra,0000000023003AC6
	lbu	a1,s3,+00000000
	c.mv	a0,a1
	c.swsp	a1,00000084
	jal	ra,000000002302AA1C
	c.lwsp	a2,00000064
	c.beqz	a0,000000002302B922

l2302B9BE:
	c.li	a3,00000006
	c.beqz	a1,000000002302B922

l2302B9C2:
	lw	a0,s4,+00000000
	c.li	a2,00000000
	jal	ra,000000002302B898
	c.j	000000002302B922

l2302B9CE:
	c.lw	a5,4(a5)
	c.mv	a1,s2
	c.mv	a0,s4
	c.jalr	a5
	c.mv	a3,a0
	c.j	000000002302B982

;; att_read_group_req: 2302B9DA
att_read_group_req proc
	c.addi16sp	FFFFFFA0
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	lbu	a2,a1,+0000000C
	c.li	a5,00000002
	c.addi	a2,FFFFFFFC
	andi	a2,a2,+000000FF
	beq	a2,a5,000000002302BA02

l2302B9FA:
	c.li	a5,00000010
	c.li	s1,00000004
	bne	a2,a5,000000002302BAC6

l2302BA02:
	c.mv	a5,a1
	lw	s5,a0,+00000000
	c.li	a1,00000004
	c.mv	s3,a0
	addi	a0,a5,+00000008
	c.swsp	a2,00000084
	jal	ra,000000002302590A
	lbu	s0,a0,+00000001
	lbu	a5,a0,+00000000
	lbu	s2,a0,+00000003
	c.slli	s0,08
	c.or	s0,a5
	c.lwsp	a2,00000084
	lbu	a5,a0,+00000002
	addi	s4,sp,+00000018
	addi	a1,a0,+00000004
	c.slli	s2,08
	c.mv	a0,s4
	or	s2,s2,a5
	jal	ra,000000002302A434
	c.li	s1,0000000E
	c.beqz	a0,000000002302BAC6

l2302BA44:
	c.beqz	s0,000000002302BADC

l2302BA46:
	beq	s2,zero,000000002302BADA

l2302BA4A:
	bltu	s2,s0,000000002302BADC

l2302BA4E:
	c.lui	s1,00003000
	addi	a5,s1,-00000800
	c.addi4spn	a1,00000010
	c.mv	a0,s4
	sb	zero,sp,+00000010
	sh	a5,sp,+00000012
	jal	ra,000000002302A3CE
	c.bnez	a0,000000002302BAEC

l2302BA66:
	lw	s5,s3,+00000000
	c.li	a2,00000014
	c.li	a1,00000000
	c.addi4spn	a0,0000002C
	jal	ra,000000002306D1BC
	c.li	a2,00000001
	c.li	a1,00000011
	c.mv	a0,s5
	jal	ra,000000002302B748
	c.swsp	a0,00000098
	c.li	s1,0000000E
	c.beqz	a0,000000002302BAC6

l2302BA84:
	c.li	a1,00000001
	c.addi	a0,00000008
	c.swsp	s3,00000094
	c.swsp	s4,00000018
	jal	ra,000000002302586C
	c.swsp	a0,0000001C
	lui	a2,0002302B
	sb	zero,a0,+00000000
	addi	a2,a2,-0000049A
	c.addi4spn	a3,0000002C
	c.mv	a1,s2
	c.mv	a0,s0
	c.swsp	zero,0000009C
	jal	ra,000000002302AB58
	c.lwsp	s8,000001F4
	c.lwsp	s4,00000194
	lbu	s1,a5,+00000000
	c.bnez	s1,000000002302BB06

l2302BAB4:
	c.mv	a0,a2
	jal	ra,000000002302574E
	c.li	a3,0000000A
	c.mv	a2,s0
	c.li	a1,00000010
	c.mv	a0,s5
	jal	ra,000000002302B898

l2302BAC6:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.mv	a0,s1
	c.lwsp	a7,00000048
	c.lwsp	s5,00000024
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.lwsp	t0,000000A8
	c.addi16sp	00000060
	c.jr	ra

l2302BADA:
	c.li	s0,00000000

l2302BADC:
	c.li	a3,00000001

l2302BADE:
	c.mv	a2,s0
	c.li	a1,00000010
	c.mv	a0,s5
	jal	ra,000000002302B898

l2302BAE8:
	c.li	s1,00000000
	c.j	000000002302BAC6

l2302BAEC:
	addi	s1,s1,-000007FF
	c.addi4spn	a1,00000014
	c.mv	a0,s4
	sb	zero,sp,+00000014
	sh	s1,sp,+00000016
	jal	ra,000000002302A3CE
	c.beqz	a0,000000002302BA66

l2302BB02:
	c.li	a3,00000010
	c.j	000000002302BADE

l2302BB06:
	lui	a3,0002302B
	c.li	a4,00000000
	addi	a3,a3,+00000624
	c.li	a1,00000004
	c.mv	a0,s5
	jal	ra,000000002301F92C
	c.j	000000002302BAE8

;; att_read_mult_req: 2302BB1A
att_read_mult_req proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s0,0000001C
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.lw	a0,0(s0)
	c.li	a2,00000014
	c.mv	s1,a0
	c.mv	s2,a1
	c.addi4spn	a0,0000000C
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	c.li	a2,00000000
	c.li	a1,0000000F
	c.mv	a0,s0
	jal	ra,000000002302B748
	c.swsp	a0,00000088
	c.beqz	a0,000000002302BBB8

l2302BB48:
	c.swsp	s1,00000084
	addi	s4,s2,+00000008
	c.li	s1,00000001
	lui	s5,0002302B

l2302BB54:
	lhu	a5,s2,+0000000C
	bltu	s1,a5,000000002302BB72

l2302BB5C:
	c.lwsp	s4,00000084
	lui	a3,0002302B
	c.li	a4,00000000
	addi	a3,a3,+00000624
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,000000002301F92C
	c.j	000000002302BBA4

l2302BB72:
	c.mv	a0,s4
	jal	ra,000000002302593A
	c.addi4spn	a3,0000000C
	addi	a2,s5,+000006AA
	c.mv	a1,a0
	c.mv	s3,a0
	sb	s1,sp,+0000001C
	jal	ra,000000002302AB58
	lbu	a5,sp,+0000001C
	c.beqz	a5,000000002302BB54

l2302BB90:
	c.lwsp	s4,00000044
	jal	ra,000000002302574E
	lbu	a3,sp,+0000001C
	c.mv	a2,s3
	c.li	a1,0000000E
	c.mv	a0,s0
	jal	ra,000000002302B898

l2302BBA4:
	c.li	a0,00000000

l2302BBA6:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

l2302BBB8:
	c.li	a0,0000000E
	c.j	000000002302BBA6

;; att_read_rsp: 2302BBBC
;;   Called from:
;;     2302BC8A (in att_read_blob_req)
;;     2302BCA2 (in att_read_req)
att_read_rsp proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.lw	a0,0(s1)
	c.mv	s3,a0
	c.mv	s4,a1
	c.mv	a0,s1
	c.li	a1,00000001
	c.mv	s6,a2
	c.mv	s2,a3
	c.mv	s5,a4
	jal	ra,000000002302A294
	c.li	s0,00000012
	c.beqz	a0,000000002302BC3E

l2302BBE6:
	c.li	s0,00000001
	beq	s2,zero,000000002302BC3E

l2302BBEC:
	c.li	a2,00000014
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,000000002306D1BC
	c.li	a2,00000000
	c.mv	a1,s6
	c.mv	a0,s1
	jal	ra,000000002302B748
	c.swsp	a0,00000088
	c.beqz	a0,000000002302BC68

l2302BC04:
	lui	a2,0002302B
	addi	a2,a2,+000006AA
	c.addi4spn	a3,0000000C
	c.mv	a1,s2
	c.mv	a0,s2
	sb	s0,sp,+0000001C
	c.swsp	s3,00000084
	sh	s5,sp,+00000010
	jal	ra,000000002302AB58
	lbu	s0,sp,+0000001C
	c.lwsp	s4,00000084
	c.beqz	s0,000000002302BC54

l2302BC28:
	c.mv	a0,a2
	jal	ra,000000002302574E
	lbu	a3,sp,+0000001C
	c.mv	a2,s2
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,000000002302B898
	c.li	s0,00000000

l2302BC3E:
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

l2302BC54:
	lui	a3,0002302B
	c.li	a4,00000000
	addi	a3,a3,+00000624
	c.li	a1,00000004
	c.mv	a0,s1
	jal	ra,000000002301F92C
	c.j	000000002302BC3E

l2302BC68:
	c.li	s0,0000000E
	c.j	000000002302BC3E

;; att_read_blob_req: 2302BC6C
att_read_blob_req proc
	c.lw	a1,8(a5)
	c.li	a1,0000000C
	lbu	a2,a5,+00000002
	lbu	a4,a5,+00000003
	lbu	a3,a5,+00000000
	lbu	a5,a5,+00000001
	c.slli	a4,08
	c.or	a4,a2
	c.slli	a5,08
	c.or	a3,a5
	c.li	a2,0000000D
	jal	zero,000000002302BBBC

;; att_read_req: 2302BC8E
att_read_req proc
	c.lw	a1,8(a5)
	c.li	a4,00000000
	c.li	a2,0000000B
	lbu	a3,a5,+00000000
	lbu	a5,a5,+00000001
	c.li	a1,0000000A
	c.slli	a5,08
	c.or	a3,a5
	jal	zero,000000002302BBBC

;; att_read_type_req: 2302BCA6
att_read_type_req proc
	c.addi16sp	FFFFFFA0
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	lbu	a2,a1,+0000000C
	c.li	a5,00000002
	c.addi	a2,FFFFFFFC
	andi	a2,a2,+000000FF
	beq	a2,a5,000000002302BCCE

l2302BCC6:
	c.li	a5,00000010
	c.li	s1,00000004
	bne	a2,a5,000000002302BD36

l2302BCCE:
	c.mv	a5,a1
	lw	s4,a0,+00000000
	c.li	a1,00000004
	c.mv	s3,a0
	addi	a0,a5,+00000008
	c.swsp	a2,00000084
	jal	ra,000000002302590A
	lbu	s0,a0,+00000001
	lbu	a5,a0,+00000000
	lbu	s2,a0,+00000003
	c.slli	s0,08
	c.or	s0,a5
	c.lwsp	a2,00000084
	lbu	a5,a0,+00000002
	addi	s5,sp,+00000014
	addi	a1,a0,+00000004
	c.slli	s2,08
	c.mv	a0,s5
	or	s2,s2,a5
	jal	ra,000000002302A434
	c.li	s1,0000000E
	c.beqz	a0,000000002302BD36

l2302BD10:
	c.beqz	s0,000000002302BD4C

l2302BD12:
	beq	s2,zero,000000002302BD4A

l2302BD16:
	bltu	s2,s0,000000002302BD4C

l2302BD1A:
	lw	s4,s3,+00000000
	c.li	a2,00000018
	c.li	a1,00000000
	c.addi4spn	a0,00000028
	jal	ra,000000002306D1BC
	c.li	a2,00000001
	c.li	a1,00000009
	c.mv	a0,s4
	jal	ra,000000002302B748
	c.swsp	a0,00000018
	c.bnez	a0,000000002302BD5C

l2302BD36:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.mv	a0,s1
	c.lwsp	a7,00000048
	c.lwsp	s5,00000024
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.lwsp	t0,000000A8
	c.addi16sp	00000060
	c.jr	ra

l2302BD4A:
	c.li	s0,00000000

l2302BD4C:
	c.li	a3,00000001

l2302BD4E:
	c.mv	a2,s0
	c.li	a1,00000008
	c.mv	a0,s4
	jal	ra,000000002302B898
	c.li	s1,00000000
	c.j	000000002302BD36

l2302BD5C:
	c.li	a1,00000001
	c.addi	a0,00000008
	c.swsp	s3,00000014
	c.swsp	s5,00000094
	jal	ra,000000002302586C
	c.swsp	a0,00000098
	lui	a2,0002302B
	sb	zero,a0,+00000000
	c.li	a5,0000000A
	addi	a2,a2,-00000378
	c.addi4spn	a3,00000028
	c.mv	a1,s2
	c.mv	a0,s0
	sb	a5,sp,+0000003C
	jal	ra,000000002302AB58
	lbu	s1,sp,+0000003C
	c.lwsp	a6,00000194
	c.beqz	s1,000000002302BD9A

l2302BD8E:
	c.mv	a0,a2
	jal	ra,000000002302574E
	lbu	a3,sp,+0000003C
	c.j	000000002302BD4E

l2302BD9A:
	lui	a3,0002302B
	c.li	a4,00000000
	addi	a3,a3,+00000624
	c.li	a1,00000004
	c.mv	a0,s4
	jal	ra,000000002301F92C
	c.j	000000002302BD36

;; att_find_type_req: 2302BDAE
att_find_type_req proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.mv	s4,a1
	lw	s2,a0,+00000000
	c.mv	s3,a0
	c.li	a1,00000006
	addi	a0,s4,+00000008
	jal	ra,000000002302590A
	lbu	s0,a0,+00000001
	lbu	a5,a0,+00000000
	c.slli	s0,08
	c.or	s0,a5
	c.beqz	s0,000000002302BE28

l2302BDE0:
	lbu	s1,a0,+00000003
	lbu	a5,a0,+00000002
	c.slli	s1,08
	c.or	s1,a5
	c.beqz	s1,000000002302BE26

l2302BDEE:
	bltu	s1,s0,000000002302BE28

l2302BDF2:
	lbu	a5,a0,+00000005
	lbu	a4,a0,+00000004
	c.addi4spn	a1,00000008
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,sp,+00000006
	c.lui	a5,00003000
	addi	a5,a5,-00000800
	c.addi4spn	a0,00000004
	lw	s5,s4,+00000008
	sb	zero,sp,+00000004
	sb	zero,sp,+00000008
	sh	a5,sp,+0000000A
	jal	ra,000000002302A3CE
	c.beqz	a0,000000002302BE4C

l2302BE22:
	c.li	a3,0000000A
	c.j	000000002302BE2A

l2302BE26:
	c.li	s0,00000000

l2302BE28:
	c.li	a3,00000001

l2302BE2A:
	c.mv	a2,s0
	c.li	a1,00000006
	c.mv	a0,s2

l2302BE30:
	jal	ra,000000002302B898
	c.li	s2,00000000

l2302BE36:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s2
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.lwsp	zero,000001D8
	c.addi16sp	00000040
	c.jr	ra

l2302BE4C:
	lbu	s6,s4,+0000000C
	lw	s4,s3,+00000000
	c.li	a2,00000014
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,000000002306D1BC
	c.li	a2,00000000
	c.li	a1,00000007
	c.mv	a0,s4
	jal	ra,000000002302B748
	c.swsp	a0,00000008
	c.li	s2,0000000E
	c.beqz	a0,000000002302BE36

l2302BE6E:
	lui	a2,0002302B
	c.li	a5,0000000A
	addi	a2,a2,-00000282
	c.addi4spn	a3,0000000C
	c.mv	a1,s1
	c.mv	a0,s0
	c.swsp	s3,00000084
	c.swsp	zero,00000088
	c.swsp	s5,0000000C
	sb	s6,sp,+0000001C
	sb	a5,sp,+0000001D
	jal	ra,000000002302AB58
	lbu	s2,sp,+0000001D
	c.lwsp	a6,00000084
	beq	s2,zero,000000002302BEAC

l2302BE9A:
	c.mv	a0,a2
	jal	ra,000000002302574E
	lbu	a3,sp,+0000001D
	c.mv	a2,s0
	c.li	a1,00000006
	c.mv	a0,s4
	c.j	000000002302BE30

l2302BEAC:
	lui	a3,0002302B
	c.li	a4,00000000
	addi	a3,a3,+00000624
	c.li	a1,00000004
	c.mv	a0,s4
	jal	ra,000000002301F92C
	c.j	000000002302BE36

;; att_find_info_req: 2302BEC0
att_find_info_req proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.lw	a1,8(a5)
	lw	s2,a0,+00000000
	lbu	s0,a5,+00000001
	lbu	a4,a5,+00000000
	c.slli	s0,08
	c.or	s0,a4
	c.beqz	s0,000000002302BF20

l2302BEE0:
	lbu	s1,a5,+00000003
	lbu	a4,a5,+00000002
	c.slli	s1,08
	c.or	s1,a4
	c.beqz	s1,000000002302BF1E

l2302BEEE:
	bltu	s1,s0,000000002302BF20

l2302BEF2:
	c.li	a2,00000010
	c.li	a1,00000000
	c.mv	s3,a0
	c.mv	a0,sp
	jal	ra,000000002306D1BC
	c.li	a2,00000000
	c.li	a1,00000005
	c.mv	a0,s2
	jal	ra,000000002302B748
	c.swsp	a0,00000080
	c.li	a5,0000000E
	c.bnez	a0,000000002302BF30

l2302BF0E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.mv	a0,a5
	c.addi16sp	00000030
	c.jr	ra

l2302BF1E:
	c.li	s0,00000000

l2302BF20:
	c.li	a3,00000001

l2302BF22:
	c.mv	a2,s0
	c.li	a1,00000004
	c.mv	a0,s2
	jal	ra,000000002302B898

l2302BF2C:
	c.li	a5,00000000
	c.j	000000002302BF0E

l2302BF30:
	lui	a2,0002302B
	addi	a2,a2,-00000158
	c.mv	a3,sp
	c.mv	a1,s1
	c.mv	a0,s0
	c.swsp	s3,00000000
	jal	ra,000000002302AB58
	c.lwsp	s0,000000E4
	c.lwsp	tp,00000084
	c.bnez	a5,000000002302BF54

l2302BF4A:
	c.mv	a0,a2
	jal	ra,000000002302574E
	c.li	a3,0000000A
	c.j	000000002302BF22

l2302BF54:
	lui	a3,0002302B
	c.li	a4,00000000
	addi	a3,a3,+00000624
	c.li	a1,00000004
	c.mv	a0,s2
	jal	ra,000000002301F92C
	c.j	000000002302BF2C

;; att_write_rsp.constprop.10: 2302BF68
;;   Called from:
;;     2302C05C (in att_write_req)
;;     2302C088 (in att_write_cmd)
;;     2302C0F2 (in att_signed_write_cmd)
att_write_rsp.constprop.10 proc
	c.addi16sp	FFFFFFC0
	c.swsp	s2,00000018
	c.mv	s2,a1
	sltu	a1,zero,a1
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	ra,0000009C
	c.mv	s1,a0
	c.mv	s4,a2
	c.mv	s3,a3
	c.mv	s5,a4
	c.mv	s6,a5
	jal	ra,000000002302A294
	c.li	s0,00000012
	c.beqz	a0,000000002302BFEC

l2302BF92:
	c.li	s0,00000001
	beq	s3,zero,000000002302BFEC

l2302BF98:
	c.li	a2,00000018
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	jal	ra,000000002306D1BC
	bne	s4,zero,000000002302BFDC

l2302BFA6:
	lui	a2,0002302B
	c.li	a5,00000001
	c.addi4spn	a3,00000008
	addi	a2,a2,+00000628
	c.mv	a1,s3
	c.mv	a0,s3
	c.swsp	s1,00000004
	sb	s2,sp,+00000010
	sh	zero,sp,+0000001A
	c.swsp	s5,00000088
	sh	s6,sp,+00000018
	sb	a5,sp,+0000001C
	jal	ra,000000002302AB58
	lbu	s0,sp,+0000001C
	c.beqz	s0,000000002302C01C

l2302BFD4:
	bne	s4,zero,000000002302C002

l2302BFD8:
	c.li	s0,00000000
	c.j	000000002302BFEC

l2302BFDC:
	c.li	a2,00000000
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,000000002302B748
	c.swsp	a0,00000084
	c.li	s0,0000000E
	c.bnez	a0,000000002302BFA6

l2302BFEC:
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

l2302C002:
	c.lwsp	a2,00000044
	jal	ra,000000002302574E
	beq	s2,zero,000000002302BFD8

l2302C00C:
	lbu	a3,sp,+0000001C
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002302B898
	c.j	000000002302BFD8

l2302C01C:
	c.lwsp	a2,00000084
	c.beqz	a2,000000002302BFD8

l2302C020:
	lui	a3,0002302B
	c.li	a4,00000000
	addi	a3,a3,+00000624
	c.li	a1,00000004
	c.mv	a0,s1
	jal	ra,000000002301F92C
	c.j	000000002302BFEC

;; att_write_req: 2302C034
att_write_req proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a0,0(s0)
	addi	a0,a1,+00000008
	c.swsp	a1,00000084
	jal	ra,000000002302593A
	c.lwsp	a2,00000064
	c.mv	a3,a0
	c.mv	a0,s0
	c.lwsp	s8,00000004
	lhu	a5,a1,+0000000C
	c.lw	a1,8(a4)
	c.lwsp	t3,00000020
	c.li	a2,00000013
	c.li	a1,00000012
	c.addi16sp	00000020
	jal	zero,000000002302BF68

;; att_write_cmd: 2302C060
att_write_cmd proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a0,0(s0)
	addi	a0,a1,+00000008
	c.swsp	a1,00000084
	jal	ra,000000002302593A
	c.lwsp	a2,00000064
	c.mv	a3,a0
	c.mv	a0,s0
	c.lwsp	s8,00000004
	lhu	a5,a1,+0000000C
	c.lw	a1,8(a4)
	c.lwsp	t3,00000020
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi16sp	00000020
	jal	zero,000000002302BF68

;; att_signed_write_cmd: 2302C08C
att_signed_write_cmd proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.lw	a1,8(a5)
	lw	s3,a0,+00000000
	addi	s2,a1,+00000008
	lbu	s0,a5,+00000001
	lbu	a3,a5,+00000000
	c.mv	s1,a1
	c.slli	s0,08
	c.li	a1,00000001
	c.mv	a0,s2
	c.or	s0,a3
	jal	ra,00000000230258C4
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,0000000023023220
	c.bnez	a0,000000002302C0F6

l2302C0C2:
	c.li	a1,00000001
	c.mv	a0,s2
	jal	ra,00000000230258F6
	c.li	a1,00000002
	c.mv	a0,s2
	jal	ra,00000000230258F6
	lhu	a5,s1,+0000000C
	c.mv	a3,s0
	c.lwsp	s8,00000004
	c.lw	s1,8(a4)
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi	a5,FFFFFFF4
	c.mv	a0,s3
	c.lwsp	a2,00000068
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi16sp	00000020
	jal	zero,000000002302BF68

l2302C0F6:
	lui	a0,00023077
	addi	a0,a0,-0000018C
	jal	ra,0000000023003AC6
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; bt_att_init: 2302C112
;;   Called from:
;;     23027D56 (in bt_conn_init)
bt_att_init proc
	jal	zero,00000000230288D2

;; bt_att_get_mtu: 2302C116
;;   Called from:
;;     23028EE0 (in bt_gatt_get_mtu)
;;     23029CE0 (in gatt_read_rsp)
;;     23029DE4 (in bt_gatt_write)
;;     23029DF0 (in bt_gatt_write)
;;     23029E04 (in bt_gatt_write)
bt_att_get_mtu proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002302B574
	c.beqz	a0,000000002302C12A

l2302C120:
	lhu	a0,a0,+00000056

l2302C124:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2302C12A:
	c.li	a0,00000000
	c.j	000000002302C124

;; bt_att_send: 2302C12E
;;   Called from:
;;     2302803A (in gatt_notify)
;;     2302813C (in gatt_send.constprop.28)
;;     23029D8E (in bt_gatt_write_without_response_cb)
bt_att_send proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	a3,00000084
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.mv	s3,a0
	c.mv	s0,a1
	c.mv	s2,a2
	jal	ra,000000002302B574
	c.lwsp	a2,000000A4
	c.bnez	a0,000000002302C164

l2302C14A:
	c.mv	a0,s0
	jal	ra,000000002302574E
	addi	s0,zero,-00000039

l2302C154:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2302C164:
	c.mv	s1,a0
	bne	s2,zero,000000002302C18A

l2302C16A:
	c.li	a1,00000000
	addi	a0,a0,+000000CC
	c.swsp	a3,00000084
	jal	ra,00000000230251B2
	c.lwsp	a2,000000A4
	bge	a0,zero,000000002302C18A

l2302C17C:
	c.mv	a1,s0
	addi	a0,s1,+000000D8
	jal	ra,00000000230250DE
	c.li	s0,00000000
	c.j	000000002302C154

l2302C18A:
	c.mv	a1,s0
	c.mv	a2,s2
	c.mv	a0,s3
	jal	ra,000000002302AFFC
	c.mv	s0,a0
	c.beqz	a0,000000002302C154

l2302C198:
	bne	s2,zero,000000002302C154

l2302C19C:
	addi	a0,s1,+000000CC
	jal	ra,00000000230251D2
	c.j	000000002302C154

;; bt_att_req_send: 2302C1A6
;;   Called from:
;;     2302811A (in gatt_send.constprop.28)
bt_att_req_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	a1,00000084
	c.swsp	ra,0000008C
	jal	ra,000000002302B574
	c.lwsp	a2,00000064
	c.bnez	a0,000000002302C1CA

l2302C1B4:
	c.lw	a1,16(a0)
	jal	ra,000000002302574E
	c.lwsp	a2,00000064
	addi	a0,zero,-00000039
	sw	zero,a1,+00000010

l2302C1C4:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2302C1CA:
	lw	a4,a0,+0000009C
	c.beqz	a4,000000002302C1EE

l2302C1D0:
	sw	zero,a1,+00000000
	lw	a4,a0,+000000A4
	c.bnez	a4,000000002302C1E6

l2302C1DA:
	sw	a1,a0,+000000A4
	sw	a1,a0,+000000A0

l2302C1E2:
	c.li	a0,00000000
	c.j	000000002302C1C4

l2302C1E6:
	c.sw	a4,0(a1)
	sw	a1,a0,+000000A4
	c.j	000000002302C1E2

l2302C1EE:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,000000002302B06E

;; bt_att_req_cancel: 2302C1F6
;;   Called from:
;;     2302A0D2 (in bt_gatt_unsubscribe)
bt_att_req_cancel proc
	c.beqz	a0,000000002302C26C

l2302C1F8:
	c.beqz	a1,000000002302C26C

l2302C1FA:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,000000002302B574
	c.beqz	a0,000000002302C264

l2302C208:
	lw	a5,a0,+0000009C
	bne	a5,s0,000000002302C228

l2302C210:
	lui	a5,00042013
	addi	a5,a5,-00000760
	sw	a5,a0,+0000009C

l2302C21C:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002302AB04

l2302C228:
	lw	a5,a0,+000000A0
	c.li	a4,00000000

l2302C22E:
	c.beqz	a5,000000002302C21C

l2302C230:
	bne	s0,a5,000000002302C25E

l2302C234:
	c.lw	s0,0(a5)
	c.bnez	a4,000000002302C24E

l2302C238:
	lw	a4,a0,+000000A4
	sw	a5,a0,+000000A0
	bne	s0,a4,000000002302C248

l2302C244:
	sw	a5,a0,+000000A4

l2302C248:
	sw	zero,s0,+00000000
	c.j	000000002302C21C

l2302C24E:
	c.sw	a4,0(a5)
	lw	a5,a0,+000000A4
	bne	s0,a5,000000002302C248

l2302C258:
	sw	a4,a0,+000000A4
	c.j	000000002302C248

l2302C25E:
	c.mv	a4,a5
	c.lw	a5,0(a5)
	c.j	000000002302C22E

l2302C264:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2302C26C:
	c.jr	ra

;; fdt32_ld: 2302C26E
;;   Called from:
;;     2302C304 (in fdt_get_property_by_offset_)
;;     2302C312 (in fdt_get_property_by_offset_)
;;     2302C32E (in fdt_get_string)
;;     2302C340 (in fdt_get_string)
;;     2302C34E (in fdt_get_string)
;;     2302C366 (in fdt_get_string)
;;     2302C374 (in fdt_get_string)
;;     2302C3BE (in fdt_get_string)
;;     2302C400 (in fdt_get_name)
;;     2302C41C (in fdt_get_name)
;;     2302C5AC (in fdt_get_property_namelen_)
;;     2302C610 (in fdt_getprop_namelen)
;;     2302C626 (in fdt_getprop_namelen)
fdt32_ld proc
	lbu	a5,a0,+00000000
	lbu	a4,a0,+00000001
	c.slli	a5,18
	c.slli	a4,10
	c.or	a5,a4
	lbu	a4,a0,+00000003
	lbu	a0,a0,+00000002
	c.or	a5,a4
	c.slli	a0,08
	c.or	a0,a5
	c.jr	ra

;; nextprop_.part.0: 2302C28C
;;   Called from:
;;     2302C53A (in fdt_first_property_offset)
;;     2302C55E (in fdt_next_property_offset)
nextprop_.part.0 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.mv	s2,a0
	c.mv	s0,a1
	c.li	s3,00000003
	c.li	s4,00000009
	c.li	s1,00000004

l2302C2A4:
	c.addi4spn	a2,0000000C
	c.mv	a1,s0
	c.mv	a0,s2
	c.jal	000000002302C81A
	beq	a0,s3,000000002302C2C4

l2302C2B0:
	c.lwsp	a2,00000004
	bne	a0,s4,000000002302C2BE

l2302C2B6:
	blt	s0,zero,000000002302C2C4

l2302C2BA:
	c.li	s0,FFFFFFF5
	c.j	000000002302C2C4

l2302C2BE:
	beq	a0,s1,000000002302C2A4

l2302C2C2:
	c.li	s0,FFFFFFFF

l2302C2C4:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; fdt_get_property_by_offset_: 2302C2D6
;;   Called from:
;;     2302C5A2 (in fdt_get_property_namelen_)
fdt_get_property_by_offset_ proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s2,a1
	c.mv	s1,a2
	c.jal	000000002302C950
	bge	a0,zero,000000002302C300

l2302C2EC:
	c.li	s0,00000000
	c.beqz	s1,000000002302C2F2

l2302C2F0:
	c.sw	s1,0(a0)

l2302C2F2:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2302C300:
	addi	a0,s0,+00000008
	jal	ra,000000002302C26E
	c.add	a0,s2
	c.add	s0,a0
	c.beqz	s1,000000002302C2F2

l2302C30E:
	addi	a0,s0,+00000004
	jal	ra,000000002302C26E
	c.j	000000002302C2F0

;; fdt_get_string: 2302C318
;;   Called from:
;;     2302C5B6 (in fdt_get_property_namelen_)
fdt_get_string proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.addi	a0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.mv	s1,a1
	c.mv	s4,a2
	jal	ra,000000002302C26E
	c.mv	s3,a0
	c.mv	a0,s0
	c.jal	000000002302C742
	c.bnez	a0,000000002302C3D8

l2302C33A:
	addi	a0,s0,+00000004
	c.add	s3,s1
	jal	ra,000000002302C26E
	bgeu	s3,a0,000000002302C3E4

l2302C348:
	sub	s2,a0,s3
	c.mv	a0,s0
	jal	ra,000000002302C26E
	lui	a5,000D00E0
	addi	a5,a5,-00000113
	bne	a0,a5,000000002302C3AA

l2302C35E:
	blt	s1,zero,000000002302C3E4

l2302C362:
	addi	a0,s0,+00000014
	jal	ra,000000002302C26E
	c.li	a5,00000010
	bgeu	a5,a0,000000002302C384

l2302C370:
	addi	a0,s0,+00000020
	jal	ra,000000002302C26E
	bgeu	s1,a0,000000002302C3E4

l2302C37C:
	c.sub	a0,s1
	bgeu	a0,s2,000000002302C384

l2302C382:
	c.mv	s2,a0

l2302C384:
	c.add	s0,s3
	c.mv	a2,s2
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002306CE1C
	c.beqz	a0,000000002302C3E8

l2302C392:
	c.sub	a0,s0
	bne	s4,zero,000000002302C3DE

l2302C398:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2302C3AA:
	lui	a5,0002FF20
	addi	a5,a5,+00000112
	bne	a0,a5,000000002302C3D6

l2302C3B6:
	bge	s1,zero,000000002302C3E4

l2302C3BA:
	addi	a0,s0,+00000020
	jal	ra,000000002302C26E
	sub	a0,zero,a0
	bltu	s1,a0,000000002302C3E4

l2302C3CA:
	sub	s1,zero,s1
	bgeu	s1,s2,000000002302C384

l2302C3D2:
	c.mv	s2,s1
	c.j	000000002302C384

l2302C3D6:
	c.li	a0,FFFFFFF3

l2302C3D8:
	c.li	s0,00000000
	beq	s4,zero,000000002302C398

l2302C3DE:
	sw	a0,s4,+00000000
	c.j	000000002302C398

l2302C3E4:
	c.li	a0,FFFFFFFC
	c.j	000000002302C3D8

l2302C3E8:
	c.li	a0,FFFFFFF8
	c.j	000000002302C3D8

;; fdt_get_name: 2302C3EC
;;   Called from:
;;     2302C4A0 (in fdt_subnode_offset_namelen)
fdt_get_name proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	c.addi	a0,00000008
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s0,a1
	c.mv	s2,a2
	jal	ra,000000002302C26E
	c.mv	s3,a0
	c.mv	a0,s1
	c.jal	000000002302C742
	c.bnez	a0,000000002302C44C

l2302C40C:
	c.mv	a1,s0
	c.mv	a0,s1
	c.jal	000000002302C928
	blt	a0,zero,000000002302C44C

l2302C416:
	addi	a0,s1,+00000014
	c.add	s0,s3
	jal	ra,000000002302C26E
	c.add	s0,s1
	c.li	a5,0000000F
	c.addi	s0,00000004
	bltu	a5,a0,000000002302C43A

l2302C42A:
	addi	a1,zero,+0000002F
	c.mv	a0,s0
	jal	ra,000000002306D8BC
	c.beqz	a0,000000002302C44A

l2302C436:
	addi	s0,a0,+00000001

l2302C43A:
	beq	s2,zero,000000002302C452

l2302C43E:
	c.mv	a0,s0
	jal	ra,000000002306D630

l2302C444:
	sw	a0,s2,+00000000
	c.j	000000002302C452

l2302C44A:
	c.li	a0,FFFFFFF5

l2302C44C:
	c.li	s0,00000000
	bne	s2,zero,000000002302C444

l2302C452:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; fdt_subnode_offset_namelen: 2302C462
;;   Called from:
;;     2302C51E (in fdt_subnode_offset)
fdt_subnode_offset_namelen proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s5,00000090
	c.mv	s3,a0
	c.swsp	a1,00000084
	c.mv	s4,a2
	c.mv	s2,a3
	c.jal	000000002302C742
	c.mv	s0,a0
	c.bnez	a0,000000002302C4EA

l2302C480:
	c.lwsp	a2,00000064
	c.swsp	zero,0000000C
	c.li	s5,00000001
	c.mv	s0,a1

l2302C488:
	c.lwsp	s8,000000E4
	blt	s0,zero,000000002302C4E6

l2302C48E:
	bge	a5,zero,000000002302C496

l2302C492:
	c.li	s0,FFFFFFFF
	c.j	000000002302C4EA

l2302C496:
	bne	a5,s5,000000002302C4DA

l2302C49A:
	c.addi4spn	a2,0000001C
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,000000002302C3EC
	c.mv	s1,a0
	c.beqz	a0,000000002302C4DA

l2302C4A8:
	c.lwsp	t3,000000E4
	blt	a5,s2,000000002302C4DA

l2302C4AE:
	c.mv	a2,s2
	c.mv	a1,s4
	jal	ra,000000002306CEF8
	c.bnez	a0,000000002302C4DA

l2302C4B8:
	c.add	s1,s2
	lbu	a5,s1,+00000000
	c.beqz	a5,000000002302C4EA

l2302C4C0:
	c.mv	a2,s2
	addi	a1,zero,+00000040
	c.mv	a0,s4
	jal	ra,000000002306CE1C
	c.bnez	a0,000000002302C4DA

l2302C4CE:
	lbu	a4,s1,+00000000
	addi	a5,zero,+00000040
	beq	a4,a5,000000002302C4EA

l2302C4DA:
	c.mv	a1,s0
	c.addi4spn	a2,00000018
	c.mv	a0,s3
	c.jal	000000002302C978
	c.mv	s0,a0
	c.j	000000002302C488

l2302C4E6:
	blt	a5,zero,000000002302C492

l2302C4EA:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

;; fdt_subnode_offset: 2302C4FE
;;   Called from:
;;     23001334 (in aos_loop_proc)
;;     2300135C (in aos_loop_proc)
;;     23037448 (in vfs_uart_init)
;;     23037728 (in vfs_uart_init)
;;     2303789A (in vfs_uart_init)
;;     230379C8 (in vfs_uart_init)
;;     23037CFA (in hal_gpio_init_from_dts)
;;     2303836A (in hal_board_cfg)
;;     230383C8 (in hal_board_cfg)
;;     230387F2 (in hal_board_cfg)
;;     23038C7E (in hal_board_cfg)
;;     23038D12 (in hal_board_cfg)
;;     2303991A (in hal_board_cfg)
;;     230399E6 (in hal_board_cfg)
;;     23039AAE (in hal_board_cfg)
;;     23039B0A (in hal_board_cfg)
fdt_subnode_offset proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.mv	a0,a2
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	jal	ra,000000002306D630
	c.mv	a3,a0
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,000000002302C462

;; fdt_first_property_offset: 2302C522
;;   Called from:
;;     2302C586 (in fdt_get_property_namelen_)
fdt_first_property_offset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.jal	000000002302C928
	blt	a0,zero,000000002302C53E

l2302C530:
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002302C28C

l2302C53E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; fdt_next_property_offset: 2302C546
;;   Called from:
;;     2302C5C0 (in fdt_get_property_namelen_)
fdt_next_property_offset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.jal	000000002302C950
	blt	a0,zero,000000002302C562

l2302C554:
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002302C28C

l2302C562:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; fdt_get_property_namelen_: 2302C56A
;;   Called from:
;;     2302C604 (in fdt_getprop_namelen)
fdt_get_property_namelen_ proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s3,a0
	c.mv	s6,a2
	c.mv	s4,a3
	c.mv	s2,a4
	c.mv	s5,a5
	jal	ra,000000002302C522

l2302C58A:
	c.mv	s0,a0
	bge	a0,zero,000000002302C59C

l2302C590:
	c.li	s1,00000000
	beq	s2,zero,000000002302C5DE

l2302C596:
	sw	s0,s2,+00000000
	c.j	000000002302C5DE

l2302C59C:
	c.mv	a2,s2
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,000000002302C2D6
	c.mv	s1,a0
	c.beqz	a0,000000002302C5F4

l2302C5AA:
	c.addi	a0,00000008
	jal	ra,000000002302C26E
	c.mv	a1,a0
	c.addi4spn	a2,0000000C
	c.mv	a0,s3
	jal	ra,000000002302C318
	c.bnez	a0,000000002302C5C6

l2302C5BC:
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,000000002302C546
	c.j	000000002302C58A

l2302C5C6:
	c.lwsp	a2,000000E4
	bne	s4,a5,000000002302C5BC

l2302C5CC:
	c.mv	a2,s4
	c.mv	a1,s6
	jal	ra,000000002306CEF8
	c.bnez	a0,000000002302C5BC

l2302C5D6:
	beq	s5,zero,000000002302C5DE

l2302C5DA:
	sw	s0,s5,+00000000

l2302C5DE:
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

l2302C5F4:
	c.li	s0,FFFFFFF3
	c.j	000000002302C590

;; fdt_getprop_namelen: 2302C5F8
;;   Called from:
;;     2302C666 (in fdt_getprop)
fdt_getprop_namelen proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a5,0000000C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a0
	jal	ra,000000002302C56A
	c.mv	s0,a0
	c.beqz	a0,000000002302C632

l2302C60C:
	addi	a0,s1,+00000014
	jal	ra,000000002302C26E
	c.li	a5,0000000F
	bltu	a5,a0,000000002302C63E

l2302C61A:
	c.lwsp	a2,000000E4
	c.addi	a5,0000000C
	c.andi	a5,00000007
	c.beqz	a5,000000002302C63E

l2302C622:
	addi	a0,s0,+00000004
	jal	ra,000000002302C26E
	c.li	a5,00000007
	bgeu	a5,a0,000000002302C63E

l2302C630:
	c.addi	s0,00000010

l2302C632:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2302C63E:
	c.addi	s0,0000000C
	c.j	000000002302C632

;; fdt_getprop: 2302C642
;;   Called from:
;;     2302C676 (in fdt_stringlist_count)
;;     2302C6C6 (in fdt_stringlist_get)
;;     23037668 (in vfs_uart_init)
;;     230376CE (in vfs_uart_init)
;;     23037790 (in vfs_uart_init)
;;     230377DE (in vfs_uart_init)
;;     23037B24 (in vfs_uart_init)
;;     23037C4C (in hal_gpio_init_from_dts)
;;     23037E30 (in hal_gpio_init_from_dts)
;;     23037F86 (in hal_gpio_init_from_dts)
;;     2303853A (in hal_board_cfg)
;;     23038652 (in hal_board_cfg)
;;     230386E8 (in hal_board_cfg)
;;     23038780 (in hal_board_cfg)
;;     23038C94 (in hal_board_cfg)
;;     23038D2A (in hal_board_cfg)
;;     23038DC4 (in hal_board_cfg)
;;     23038E78 (in hal_board_cfg)
;;     2303909A (in hal_board_cfg)
;;     230390C6 (in hal_board_cfg)
;;     230394AE (in hal_board_cfg)
;;     23039962 (in hal_board_cfg)
;;     23039A2E (in hal_board_cfg)
;;     23039B20 (in hal_board_cfg)
fdt_getprop proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.mv	a0,a2
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.swsp	a3,00000004
	c.swsp	a2,00000080
	jal	ra,000000002306D630
	c.mv	a3,a0
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	s0,000000C4
	c.lwsp	tp,00000084
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,000000002302C5F8

;; fdt_stringlist_count: 2302C66A
;;   Called from:
;;     230374A8 (in vfs_uart_init)
;;     23037570 (in vfs_uart_init)
;;     230378FC (in vfs_uart_init)
;;     230383E2 (in hal_board_cfg)
;;     2303880A (in hal_board_cfg)
;;     23038F2C (in hal_board_cfg)
;;     23039930 (in hal_board_cfg)
;;     23039948 (in hal_board_cfg)
;;     230399FC (in hal_board_cfg)
;;     23039A14 (in hal_board_cfg)
fdt_stringlist_count proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a3,0000000C
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	jal	ra,000000002302C642
	c.lwsp	a2,00000004
	c.beqz	a0,000000002302C68A

l2302C67E:
	add	s2,a0,s0
	c.mv	s1,a0
	c.li	s0,00000000

l2302C686:
	bltu	s1,s2,000000002302C698

l2302C68A:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2302C698:
	sub	a1,s2,s1
	c.mv	a0,s1
	jal	ra,000000002306D878
	c.addi	a0,00000001
	c.swsp	a0,00000084
	c.add	s1,a0
	bltu	s2,s1,000000002302C6B0

l2302C6AC:
	c.addi	s0,00000001
	c.j	000000002302C686

l2302C6B0:
	c.li	s0,FFFFFFF1
	c.j	000000002302C68A

;; fdt_stringlist_get: 2302C6B4
;;   Called from:
;;     2303750A (in vfs_uart_init)
;;     23037608 (in vfs_uart_init)
;;     23037958 (in vfs_uart_init)
;;     23037D96 (in hal_gpio_init_from_dts)
;;     23037EE4 (in hal_gpio_init_from_dts)
;;     23037F18 (in hal_gpio_init_from_dts)
;;     23037F52 (in hal_gpio_init_from_dts)
;;     230383F8 (in hal_board_cfg)
;;     23038820 (in hal_board_cfg)
;;     23038F44 (in hal_board_cfg)
;;     23039BC6 (in hal_board_cfg)
;;     23039C4E (in hal_board_cfg)
;;     23039D30 (in hal_board_cfg)
;;     23039DB8 (in hal_board_cfg)
fdt_stringlist_get proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.mv	s3,a3
	c.addi4spn	a3,0000000C
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.mv	s1,a4
	jal	ra,000000002302C642
	c.mv	s0,a0
	c.bnez	a0,000000002302C6E8

l2302C6CE:
	c.bnez	s1,000000002302C6D4

l2302C6D0:
	c.li	s0,00000000
	c.j	000000002302C6D8

l2302C6D4:
	c.lwsp	a2,000000E4
	c.sw	s1,0(a5)

l2302C6D8:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2302C6E8:
	c.lwsp	a2,00000048
	c.add	s2,a0

l2302C6EC:
	bltu	s0,s2,000000002302C6F6

l2302C6F0:
	c.beqz	s1,000000002302C6D0

l2302C6F2:
	c.li	a5,FFFFFFFF
	c.j	000000002302C710

l2302C6F6:
	sub	a1,s2,s0
	c.mv	a0,s0
	jal	ra,000000002306D878
	addi	a5,a0,+00000001
	c.swsp	a5,00000084
	c.add	a5,s0
	bgeu	s2,a5,000000002302C714

l2302C70C:
	c.li	a5,FFFFFFF1
	c.beqz	s1,000000002302C6D0

l2302C710:
	c.sw	s1,0(a5)
	c.j	000000002302C6D0

l2302C714:
	bne	s3,zero,000000002302C71E

l2302C718:
	c.beqz	s1,000000002302C6D8

l2302C71A:
	c.sw	s1,0(a0)
	c.j	000000002302C6D8

l2302C71E:
	c.addi	s3,FFFFFFFF
	c.mv	s0,a5
	c.j	000000002302C6EC

;; fdt32_ld: 2302C724
;;   Called from:
;;     2302C74A (in fdt_ro_probe_)
;;     2302C75E (in fdt_ro_probe_)
;;     2302C76E (in fdt_ro_probe_)
;;     2302C798 (in fdt_ro_probe_)
;;     2302C7BA (in fdt_offset_ptr)
;;     2302C7D6 (in fdt_offset_ptr)
;;     2302C7E4 (in fdt_offset_ptr)
;;     2302C7FA (in fdt_offset_ptr)
fdt32_ld proc
	lbu	a5,a0,+00000000
	lbu	a4,a0,+00000001
	c.slli	a5,18
	c.slli	a4,10
	c.or	a5,a4
	lbu	a4,a0,+00000003
	lbu	a0,a0,+00000002
	c.or	a5,a4
	c.slli	a0,08
	c.or	a0,a5
	c.jr	ra

;; fdt_ro_probe_: 2302C742
;;   Called from:
;;     2302C336 (in fdt_get_string)
;;     2302C408 (in fdt_get_name)
;;     2302C47A (in fdt_subnode_offset_namelen)
fdt_ro_probe_ proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002302C724
	lui	a5,000D00E0
	addi	a5,a5,-00000113
	bne	a0,a5,000000002302C786

l2302C75A:
	addi	a0,s0,+00000014
	jal	ra,000000002302C724
	c.li	a4,00000001
	c.li	a5,FFFFFFF6
	bgeu	a4,a0,000000002302C77C

l2302C76A:
	addi	a0,s0,+00000018
	jal	ra,000000002302C724
	c.li	a4,00000011
	c.li	a5,00000000
	bgeu	a4,a0,000000002302C77C

l2302C77A:
	c.li	a5,FFFFFFF6

l2302C77C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2302C786:
	lui	a4,0002FF20
	addi	a4,a4,+00000112
	c.li	a5,FFFFFFF7
	bne	a0,a4,000000002302C77C

l2302C794:
	addi	a0,s0,+00000024
	jal	ra,000000002302C724
	c.li	a5,00000000
	c.bnez	a0,000000002302C77C

l2302C7A0:
	c.li	a5,FFFFFFF9
	c.j	000000002302C77C

;; fdt_offset_ptr: 2302C7A4
;;   Called from:
;;     2302C838 (in fdt_next_tag)
fdt_offset_ptr proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.addi	a0,00000008
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s3,a1
	c.swsp	s4,00000004
	c.mv	s1,a2
	jal	ra,000000002302C724
	add	s2,a0,s3
	c.li	a5,00000000
	bltu	s2,s3,000000002302C808

l2302C7C8:
	add	s4,s2,s1
	c.li	a5,00000000
	bltu	s4,s2,000000002302C808

l2302C7D2:
	addi	a0,s0,+00000004
	jal	ra,000000002302C724
	c.li	a5,00000000
	bltu	a0,s4,000000002302C808

l2302C7E0:
	addi	a0,s0,+00000014
	jal	ra,000000002302C724
	c.li	a5,00000010
	bgeu	a5,a0,000000002302C804

l2302C7EE:
	c.add	s1,s3
	c.li	a5,00000000
	bltu	s1,s3,000000002302C808

l2302C7F6:
	addi	a0,s0,+00000024
	jal	ra,000000002302C724
	c.li	a5,00000000
	bltu	a0,s1,000000002302C808

l2302C804:
	add	a5,s0,s2

l2302C808:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

;; fdt_next_tag: 2302C81A
;;   Called from:
;;     2302C2AA (in nextprop_.part.0)
;;     2302C942 (in fdt_check_node_offset_)
;;     2302C96A (in fdt_check_prop_offset_)
;;     2302C9A0 (in fdt_next_node)
fdt_next_tag proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.li	a5,FFFFFFF8
	c.mv	s2,a2
	c.sw	a2,0(a5)
	c.li	a2,00000004
	c.mv	s3,a0
	c.mv	s4,a1
	jal	ra,000000002302C7A4
	c.bnez	a0,000000002302C842

l2302C83E:
	c.li	s1,00000009
	c.j	000000002302C8B6

l2302C842:
	c.lw	a0,0(a5)
	addi	s0,s4,+00000004
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
	c.li	a5,FFFFFFF5
	sw	a5,s2,+00000000
	c.li	a4,00000008
	addi	a5,s1,-00000001
	bltu	a4,a5,000000002302C83E

l2302C878:
	lui	a4,00023077
	c.slli	a5,02
	addi	a4,a4,+00000060
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
2302C888                         05 46 A2 85 4E 85 93 0A         .F..N...
2302C890 14 00 EF F0 3F F1 45 D5 83 47 05 00 56 84 ED F7 ....?.E..G..V...
2302C8A0 33 06 44 41 D2 85 4E 85 EF F0 DF EF 49 D9 0D 04 3.DA..N.....I...
2302C8B0 71 98 23 20 89 00                               q.# ..         

l2302C8B6:
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
2302C8CC                                     11 46 A2 85             .F..
2302C8D0 4E 85 EF F0 3F ED 25 D5 1C 41 13 85 49 01 13 0B N...?.%..A..I...
2302C8E0 CA 00 13 D7 87 01 93 9A 87 01 B3 EA EA 00 13 D7 ................
2302C8F0 87 00 13 77 F7 0F C1 83 42 07 93 F7 F7 0F A2 07 ...w....B.......
2302C900 B3 EA EA 00 B3 EA FA 00 EF F0 DF E1 BD 47 33 04 .............G3.
2302C910 5B 01 E3 E7 A7 F8 9D 47 E3 F4 57 F9 13 7B 7B 00 [......G..W..{{.
2302C920 E3 00 0B F8 11 04 AD BF                         ........       

;; fdt_check_node_offset_: 2302C928
;;   Called from:
;;     2302C410 (in fdt_get_name)
;;     2302C52A (in fdt_first_property_offset)
;;     2302C9BA (in fdt_next_node)
fdt_check_node_offset_ proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	bge	a1,zero,000000002302C93A

l2302C932:
	c.li	a0,FFFFFFFC

l2302C934:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2302C93A:
	andi	a5,a1,+00000003
	c.bnez	a5,000000002302C932

l2302C940:
	c.addi4spn	a2,0000000C
	jal	ra,000000002302C81A
	c.li	a5,00000001
	bne	a0,a5,000000002302C932

l2302C94C:
	c.lwsp	a2,00000044
	c.j	000000002302C934

;; fdt_check_prop_offset_: 2302C950
;;   Called from:
;;     2302C2E6 (in fdt_get_property_by_offset_)
;;     2302C54E (in fdt_next_property_offset)
fdt_check_prop_offset_ proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	bge	a1,zero,000000002302C962

l2302C95A:
	c.li	a0,FFFFFFFC

l2302C95C:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2302C962:
	andi	a5,a1,+00000003
	c.bnez	a5,000000002302C95A

l2302C968:
	c.addi4spn	a2,0000000C
	jal	ra,000000002302C81A
	c.li	a5,00000003
	bne	a0,a5,000000002302C95A

l2302C974:
	c.lwsp	a2,00000044
	c.j	000000002302C95C

;; fdt_next_node: 2302C978
;;   Called from:
;;     2302C4E0 (in fdt_subnode_offset_namelen)
fdt_next_node proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	zero,00000084
	c.mv	s2,a0
	c.mv	s1,a2
	bge	a1,zero,000000002302C9BA

l2302C992:
	c.li	s3,00000002
	c.li	s4,00000009
	c.li	s5,00000001

l2302C998:
	c.lwsp	a2,00000004
	c.addi4spn	a2,0000000C
	c.mv	a0,s2
	c.mv	a1,s0
	jal	ra,000000002302C81A
	beq	a0,s3,000000002302C9DA

l2302C9A8:
	beq	a0,s4,000000002302C9EA

l2302C9AC:
	bne	a0,s5,000000002302C998

l2302C9B0:
	c.beqz	s1,000000002302C9C6

l2302C9B2:
	c.lw	s1,0(a5)
	c.addi	a5,00000001
	c.sw	s1,0(a5)
	c.j	000000002302C9C6

l2302C9BA:
	jal	ra,000000002302C928
	c.swsp	a0,00000084
	c.mv	s0,a0
	bge	a0,zero,000000002302C992

l2302C9C6:
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

l2302C9DA:
	c.beqz	s1,000000002302C998

l2302C9DC:
	c.lw	s1,0(a5)
	c.addi	a5,FFFFFFFF
	c.sw	s1,0(a5)
	bge	a5,zero,000000002302C998

l2302C9E6:
	c.lwsp	a2,00000004
	c.j	000000002302C9C6

l2302C9EA:
	c.lwsp	a2,00000004
	bge	s0,zero,000000002302C9F8

l2302C9F0:
	c.li	a5,FFFFFFF8
	bne	s0,a5,000000002302C9C6

l2302C9F6:
	c.bnez	s1,000000002302C9C6

l2302C9F8:
	c.li	s0,FFFFFFFF
	c.j	000000002302C9C6

;; cmd_blog_info_dump: 2302C9FC
cmd_blog_info_dump proc
	c.addi16sp	FFFFFF50
	addi	a2,zero,+00000080
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,000000D4
	c.swsp	s0,00000054
	c.swsp	s3,000000CC
	c.swsp	s4,0000004C
	c.swsp	s5,000000C8
	c.swsp	s6,00000048
	c.swsp	s7,000000C4
	c.swsp	s8,00000044
	c.swsp	s9,000000C0
	c.swsp	s1,000000D0
	c.swsp	s2,00000050
	jal	ra,000000002306D1BC
	lui	s3,00023083
	lui	s0,00023083
	lui	a0,00023077
	addi	a2,s3,-00000244
	addi	a1,s0,-000002B4
	addi	a0,a0,+000000E4
	jal	ra,00000000230018FA
	lui	s6,00023083
	lui	s4,00023083
	lui	a0,00023077
	addi	a2,s6,-000001D4
	addi	a1,s4,-00000244
	addi	a0,a0,+000000FC
	jal	ra,00000000230018FA
	lui	s9,00023083
	lui	s5,00023083
	lui	a0,00023077
	addi	a2,s9,-000001D4
	addi	a1,s5,-000001D4
	addi	a0,a0,+00000114
	jal	ra,00000000230018FA
	addi	s0,s0,-000002B4
	addi	s3,s3,-00000244
	addi	s8,zero,+00000080
	lui	s7,00023077
	addi	s6,s6,-000001D4
	addi	s9,s9,-000001D4

l2302CA8C:
	bgeu	s0,s3,000000002302CAA6

l2302CA90:
	c.lw	s0,4(a0)
	jal	ra,000000002306D630
	bgeu	s8,a0,000000002302CAC0

l2302CA9A:
	lui	a0,00023077
	addi	a0,a0,+0000012C
	jal	ra,00000000230018FA

l2302CAA6:
	c.lwsp	a4,00000130
	c.lwsp	a0,00000114
	c.lwsp	t1,00000134
	c.lwsp	sp,00000158
	c.lwsp	t5,00000068
	c.lwsp	s10,00000088
	c.lwsp	s6,000000A8
	c.lwsp	s2,000000C8
	c.lwsp	a4,000000E8
	c.lwsp	a0,0000000C
	c.lwsp	t1,0000002C
	c.addi16sp	000000B0
	c.jr	ra

l2302CAC0:
	lbu	a5,sp,+00000000
	c.beqz	a5,000000002302CAE4

l2302CAC6:
	c.lw	s0,4(a1)
	c.mv	a0,sp
	jal	ra,000000002306D404
	c.bnez	a0,000000002302CAD4

l2302CAD0:
	c.addi	s0,00000008
	c.j	000000002302CA8C

l2302CAD4:
	c.mv	a0,sp
	jal	ra,000000002306D630
	c.mv	a2,a0
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,000000002306D1BC

l2302CAE4:
	c.lw	s0,0(a5)
	c.lw	s0,4(a1)
	addi	a0,s7,+00000140
	lbu	a2,a5,+00000000
	jal	ra,00000000230018FA
	lbu	a5,sp,+00000000
	c.bnez	a5,000000002302CB1E

l2302CAFA:
	c.lw	s0,4(a1)
	c.mv	a0,sp
	addi	s1,s4,-00000244
	jal	ra,000000002306D580

l2302CB06:
	bgeu	s1,s6,000000002302CAD0

l2302CB0A:
	c.lw	s0,4(a1)
	c.lw	s1,4(a0)
	jal	ra,000000002306DD88
	c.lw	s1,4(a5)
	c.mv	a1,a0
	beq	a0,a5,000000002302CB2A

l2302CB1A:
	c.addi	s1,00000008
	c.j	000000002302CB06

l2302CB1E:
	c.lw	s0,4(a0)
	c.mv	a1,sp
	jal	ra,000000002306D404
	c.beqz	a0,000000002302CAD0

l2302CB28:
	c.j	000000002302CAFA

l2302CB2A:
	c.lw	s1,0(a5)
	addi	a0,s7,+00000140
	addi	s2,s5,-000001D4
	lbu	a2,a5,+00000000
	jal	ra,00000000230018FA

l2302CB3C:
	bgeu	s2,s9,000000002302CB1A

l2302CB40:
	c.lw	s1,4(a1)
	lw	a0,s2,+00000004
	jal	ra,000000002306DD88
	lw	a5,s2,+00000004
	c.mv	a1,a0
	bne	a0,a5,000000002302CB64

l2302CB54:
	lw	a5,s2,+00000000
	addi	a0,s7,+00000140
	lbu	a2,a5,+00000000
	jal	ra,00000000230018FA

l2302CB64:
	c.addi	s2,00000008
	c.j	000000002302CB3C

;; blog_strcpy.part.0: 2302CB68
;;   Called from:
;;     2302CE04 (in blog_hexdump_out)
;;     2302CE5C (in blog_hexdump_out)
;;     2302CE9C (in blog_hexdump_out)
;;     2302CEBA (in blog_hexdump_out)
;;     2302CF08 (in blog_hexdump_out)
blog_strcpy.part.0 proc
	c.mv	a5,a2
	c.sub	a0,a2
	addi	a3,zero,+000000FF

l2302CB70:
	lbu	a4,a5,+00000000
	c.bnez	a4,000000002302CB7C

l2302CB76:
	sub	a0,a5,a2
	c.jr	ra

l2302CB7C:
	add	a6,a5,a0
	bltu	a3,a6,000000002302CB76

l2302CB84:
	c.addi	a1,00000001
	c.addi	a5,00000001
	sb	a4,a1,+00000FFF
	c.j	000000002302CB70

;; cmd_blog_set_level: 2302CB8E
cmd_blog_set_level proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.li	a5,00000003
	beq	a2,a5,000000002302CBD0

l2302CBA6:
	lui	a0,00023077
	addi	a0,a0,+00000154
	jal	ra,00000000230018FA

l2302CBB2:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	lui	a0,00023077
	addi	a0,a0,+000001D8
	c.addi16sp	00000020
	jal	zero,00000000230018FA

l2302CBD0:
	c.lw	a3,4(a0)
	lui	a1,00023077
	addi	a1,a1,+00000164
	c.mv	s1,a3
	jal	ra,000000002306D404
	c.beqz	a0,000000002302CC5E

l2302CBE2:
	c.lw	s1,4(a0)
	lui	a1,00023077
	addi	a1,a1,+00000168
	jal	ra,000000002306D404
	c.li	s3,00000001
	c.beqz	a0,000000002302CC60

l2302CBF4:
	c.lw	s1,4(a0)
	lui	a1,00023077
	addi	a1,a1,+00000170
	jal	ra,000000002306D404
	c.li	s3,00000002
	c.beqz	a0,000000002302CC60

l2302CC06:
	c.lw	s1,4(a0)
	lui	a1,00023077
	addi	a1,a1,+00000178
	jal	ra,000000002306D404
	c.li	s3,00000003
	c.beqz	a0,000000002302CC60

l2302CC18:
	c.lw	s1,4(a0)
	lui	a1,00023077
	addi	a1,a1,+00000180
	jal	ra,000000002306D404
	c.li	s3,00000004
	c.beqz	a0,000000002302CC60

l2302CC2A:
	c.lw	s1,4(a0)
	lui	a1,00023077
	addi	a1,a1,+00000188
	jal	ra,000000002306D404
	c.li	s3,00000005
	c.beqz	a0,000000002302CC60

l2302CC3C:
	c.lw	s1,4(a0)
	lui	a1,00023077
	addi	a1,a1,+00000190
	jal	ra,000000002306D404
	c.li	s3,00000006
	c.beqz	a0,000000002302CC60

l2302CC4E:
	c.lw	s1,4(a1)
	lui	a0,00023077
	addi	a0,a0,+00000198

l2302CC58:
	jal	ra,00000000230018FA
	c.j	000000002302CBB2

l2302CC5E:
	c.li	s3,00000000

l2302CC60:
	c.lw	s1,8(s0)
	c.mv	a0,s0
	jal	ra,000000002306D630
	c.li	a5,00000000
	c.li	a4,00000000
	addi	a3,zero,+0000002E

l2302CC70:
	blt	a4,a0,000000002302CC8E

l2302CC74:
	c.beqz	a5,000000002302CCA0

l2302CC76:
	c.li	a4,00000001
	beq	a5,a4,000000002302CCCA

l2302CC7C:
	c.li	a4,00000002
	beq	a5,a4,000000002302CCDC

l2302CC82:
	lui	a0,00023077
	c.lw	s1,8(a1)
	addi	a0,a0,+000001B8
	c.j	000000002302CC58

l2302CC8E:
	add	a2,s0,a4
	lbu	a2,a2,+00000000
	bne	a2,a3,000000002302CC9C

l2302CC9A:
	c.addi	a5,00000001

l2302CC9C:
	c.addi	a4,00000001
	c.j	000000002302CC70

l2302CCA0:
	lui	s0,00023083
	lui	s2,00023083
	addi	s0,s0,-00000244
	addi	s2,s2,-000002B4

l2302CCB0:
	sub	s0,s0,s2
	c.srai	s0,00000003
	c.addi	s0,FFFFFFFF
	c.li	s6,00000000

l2302CCBA:
	c.lw	s1,8(a1)
	bge	s0,s6,000000002302CCEE

l2302CCC0:
	lui	a0,00023077
	addi	a0,a0,+000001EC
	c.j	000000002302CC58

l2302CCCA:
	lui	s0,00023083
	lui	s2,00023083
	addi	s0,s0,-000001D4
	addi	s2,s2,-00000244
	c.j	000000002302CCB0

l2302CCDC:
	lui	s0,00023083
	lui	s2,00023083
	addi	s0,s0,-000001D4
	addi	s2,s2,-000001D4
	c.j	000000002302CCB0

l2302CCEE:
	add	s5,s6,s0
	srai	s5,s5,00000001
	slli	s4,s5,00000003
	c.add	s4,s2
	lw	a0,s4,+00000004
	jal	ra,000000002306D404
	bge	a0,zero,000000002302CD0E

l2302CD08:
	addi	s6,s5,+00000001
	c.j	000000002302CCBA

l2302CD0E:
	c.beqz	a0,000000002302CD16

l2302CD10:
	addi	s0,s5,-00000001
	c.j	000000002302CCBA

l2302CD16:
	lw	a5,s4,+00000000
	lui	a0,00023077
	addi	a0,a0,+00000208
	sb	s3,a5,+00000000
	lw	a5,s4,+00000000
	c.lwsp	s8,00000004
	lw	a1,s4,+00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	lbu	a2,a5,+00000000
	c.addi16sp	00000020
	jal	zero,00000000230018FA

;; blog_port_output: 2302CD48
;;   Called from:
;;     2302CE70 (in blog_hexdump_out)
blog_port_output proc
	c.mv	a2,a0
	lui	a0,00023077
	addi	a0,a0,+000000DC
	jal	zero,00000000230018FA

;; blog_hexdump_out: 2302CD56
;;   Called from:
;;     2302D700 (in write_data)
;;     2302D814 (in __ble_bytes_send)
blog_hexdump_out proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s6,00000020
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	s9,00000098
	c.swsp	s11,00000094
	c.swsp	ra,000000AC
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	c.swsp	s10,00000018
	c.swsp	a0,00000084
	c.mv	s8,a1
	c.mv	s9,a2
	c.mv	s6,a3
	c.swsp	zero,0000000C
	c.swsp	zero,0000008C
	c.li	s0,00000000
	lui	s7,00042013
	lui	s11,00023077

l2302CD88:
	bltu	s0,s6,000000002302CDAA

l2302CD8C:
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

l2302CDAA:
	c.lwsp	a2,000000A4
	add	a5,s8,s0
	lui	a2,00023077
	c.addi	a5,FFFFFFFF
	c.mv	a4,s0
	addi	a2,a2,+00000084
	addi	a1,zero,+00000100
	addi	a0,s7,-00000748
	jal	ra,0000000023003B18
	addi	a5,zero,+00000100
	bgeu	a5,a0,000000002302CDD4

l2302CDD0:
	addi	a0,zero,+00000100

l2302CDD4:
	slli	s10,a0,00000010
	slli	s1,s8,00000010
	srli	s10,s10,00000010
	c.mv	s3,s0
	c.mv	s5,s0
	c.li	s4,00000000
	c.srli	s1,00000010
	addi	s2,s7,-00000748

l2302CDEC:
	slli	a4,s4,00000010
	c.srli	a4,00000010
	bltu	a4,s1,000000002302CE78

l2302CDF6:
	lui	a2,00023077
	addi	a2,a2,+000000A4
	add	a1,s2,s10
	c.mv	a0,s10
	jal	ra,000000002302CB68
	c.add	a0,s10
	slli	s4,a0,00000010
	srli	s4,s4,00000010
	addi	s5,zero,+0000005E
	lui	a4,00023077

l2302CE1A:
	sub	a5,s3,s0
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a5,s1,000000002302CEDC

l2302CE26:
	lui	s3,00023076
	addi	a0,s3,+0000076C
	jal	ra,000000002306D630
	c.add	a0,s4
	addi	a5,zero,+00000100
	bgeu	a5,a0,000000002302CE52

l2302CE3C:
	addi	a0,s3,+0000076C
	jal	ra,000000002306D630
	addi	s4,zero,+00000100
	sub	s4,s4,a0
	c.slli	s4,10
	srli	s4,s4,00000010

l2302CE52:
	addi	a2,s3,+0000076C
	add	a1,s2,s4
	c.mv	a0,s4
	jal	ra,000000002302CB68
	c.add	a0,s4
	slli	a1,a0,00000010
	c.add	s0,s1
	c.srli	a1,00000010
	addi	a0,s7,-00000748
	c.slli	s0,10
	jal	ra,000000002302CD48
	c.srli	s0,00000010
	c.j	000000002302CD88

l2302CE78:
	bge	s5,s6,000000002302CECA

l2302CE7C:
	add	a4,s9,s5
	lbu	a3,a4,+00000000
	lui	a5,00023077
	addi	a2,a5,+00000098
	c.li	a1,00000008
	c.addi4spn	a0,00000018
	jal	ra,0000000023003B18

l2302CE94:
	add	a1,s2,s10
	c.mv	a0,s10
	c.addi4spn	a2,00000018
	jal	ra,000000002302CB68
	c.add	s10,a0
	c.addi	s4,00000001
	c.slli	s10,10
	andi	a4,s4,+00000007
	srli	s10,s10,00000010
	c.bnez	a4,000000002302CEC6

l2302CEB0:
	add	a1,s2,s10
	c.mv	a0,s10
	addi	a2,s11,+00000094
	jal	ra,000000002302CB68
	c.add	s10,a0
	c.slli	s10,10
	srli	s10,s10,00000010

l2302CEC6:
	c.addi	s5,00000001
	c.j	000000002302CDEC

l2302CECA:
	lui	a5,00023077
	c.li	a2,00000008
	addi	a1,a5,+000000A0
	c.addi4spn	a0,00000018
	jal	ra,000000002306D7AC
	c.j	000000002302CE94

l2302CEDC:
	bge	s3,s6,000000002302CF18

l2302CEE0:
	add	a5,s9,s3
	lbu	a3,a5,+00000000
	addi	a5,a3,-00000020
	bgeu	s5,a5,000000002302CEF4

l2302CEF0:
	addi	a3,zero,+0000002E

l2302CEF4:
	addi	a2,a4,+000000A8
	c.li	a1,00000008
	c.addi4spn	a0,00000018
	jal	ra,0000000023003B18
	add	a1,s2,s4
	c.mv	a0,s4
	c.addi4spn	a2,00000018
	jal	ra,000000002302CB68
	c.add	s4,a0
	c.slli	s4,10
	srli	s4,s4,00000010
	lui	a4,00023077

l2302CF18:
	c.addi	s3,00000001
	c.j	000000002302CE1A

;; blog_init: 2302CF1C
;;   Called from:
;;     23001640 (in bfl_main)
blog_init proc
	lui	a0,00023077
	c.addi	sp,FFFFFFF0
	c.li	a3,00000002
	c.li	a2,00000002
	c.li	a1,00000002
	addi	a0,a0,+000000AC
	c.swsp	ra,00000084
	jal	ra,00000000230018FA
	lui	a5,00023083
	lui	a4,00023083
	addi	a5,a5,-000002B4
	addi	a4,a4,-00000244
	c.li	a3,00000002

l2302CF44:
	bltu	a5,a4,000000002302CF7A

l2302CF48:
	lui	a5,00023083
	lui	a4,00023083
	addi	a5,a5,-00000244
	addi	a4,a4,-000001D4
	c.li	a3,00000002

l2302CF5A:
	bltu	a5,a4,000000002302CF84

l2302CF5E:
	lui	a5,00023083
	lui	a4,00023083
	addi	a5,a5,-000001D4
	addi	a4,a4,-000001D4
	c.li	a3,00000002

l2302CF70:
	bltu	a5,a4,000000002302CF8E

l2302CF74:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2302CF7A:
	c.lw	a5,0(a2)
	c.addi	a5,00000008
	sb	a3,a2,+00000000
	c.j	000000002302CF44

l2302CF84:
	c.lw	a5,0(a2)
	c.addi	a5,00000008
	sb	a3,a2,+00000000
	c.j	000000002302CF5A

l2302CF8E:
	c.lw	a5,0(a2)
	c.addi	a5,00000008
	sb	a3,a2,+00000000
	c.j	000000002302CF70

;; wifiprov_ccc_cfg_changed: 2302CF98
wifiprov_ccc_cfg_changed proc
	c.jr	ra

;; __bl_ble_sync_task: 2302CF9A
__bl_ble_sync_task proc
	c.addi16sp	FFFFFEC0
	sw	s0,sp,+00000138
	c.mv	s0,a0
	lui	a0,00023082
	addi	a0,a0,+00000764
	sw	ra,sp,+0000013C
	sw	s1,sp,+00000134
	sw	s2,sp,+00000130
	sw	s3,sp,+0000012C
	sw	s4,sp,+00000128
	sw	s5,sp,+00000124
	sw	s6,sp,+00000120
	sw	s7,sp,+0000011C
	sw	s8,sp,+00000118
	jal	ra,000000002302EEC0
	c.lui	a0,00001000
	lui	a1,00023082
	addi	a0,a0,-00000110
	c.li	a2,00000000
	addi	a1,a1,+0000076C
	c.add	a0,s0
	jal	ra,000000002302E06E
	c.li	a5,00000001
	sw	a0,s0,+0000040C
	sb	a5,s0,+0000061E
	c.li	a4,00000003
	addi	a3,s0,+00000004
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000001
	jal	ra,00000000230323F0
	c.sw	s0,0(a0)
	c.li	a4,00000000
	addi	a3,s0,+000000B0
	addi	a2,s0,+00000100
	addi	a1,zero,+00000104
	c.li	a0,00000002
	jal	ra,00000000230323F0
	sw	a0,s0,+000000AC
	c.li	s1,00000000
	c.lui	s2,00002000
	lui	s3,0004201A
	lui	s4,0004201A
	lui	s5,0004200E
	lui	s6,00023077
	lui	s7,0002306E
	lui	s8,00023077

l2302D038:
	lbu	a5,s0,+00000620
	c.beqz	a5,000000002302D07A

l2302D03E:
	c.lui	a5,00001000
	sb	zero,s0,+0000061E
	c.add	s0,a5
	lw	a0,s0,-00000118
	jal	ra,000000002303386C
	lw	ra,sp,+0000013C
	lw	s0,sp,+00000138
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

l2302D07A:
	lw	a0,s0,+000000AC
	addi	a2,s2,+00000710
	c.addi4spn	a1,0000000C
	jal	ra,0000000023032820
	c.li	a5,00000001
	bne	a0,a5,000000002302D0EC

l2302D08E:
	lw	a0,s0,+00000684
	c.beqz	a0,000000002302D0A0

l2302D094:
	jal	ra,0000000023028EE0
	c.addi	a0,FFFFFFFD
	slli	s1,a0,00000010
	c.srli	s1,00000010

l2302D0A0:
	lw	a2,sp,+0000010C
	lw	a0,s0,+0000040C
	c.mv	a3,s1
	c.addi4spn	a1,0000000C
	jal	ra,000000002302DDEA
	c.beqz	a0,000000002302D038

l2302D0B2:
	lbu	a4,s3,+000004D8
	c.li	a5,00000002
	bltu	a5,a4,000000002302D038

l2302D0BC:
	lbu	a4,s4,+000004D9
	bltu	a5,a4,000000002302D038

l2302D0C4:
	lw	a5,s5,+00000244
	c.beqz	a5,000000002302D0E6

l2302D0CA:
	jal	ra,0000000023033B12

l2302D0CE:
	c.mv	a1,a0
	addi	a4,zero,+00000142
	addi	a3,s6,+0000027C
	addi	a2,s7,+000004AC
	addi	a0,s8,+0000028C
	jal	ra,00000000230018FA
	c.j	000000002302D038

l2302D0E6:
	jal	ra,0000000023033AF0
	c.j	000000002302D0CE

l2302D0EC:
	lw	a0,s0,+0000040C
	jal	ra,000000002302E0BA
	c.j	000000002302D038

;; scan_complete_cb: 2302D0F6
scan_complete_cb proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	addi	s0,s0,+000001C8
	c.lw	s0,0(a4)
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.lui	s1,00002000
	sb	zero,a4,+0000061F
	add	a5,a4,s1
	lbu	a5,a5,-00000700
	addi	a3,zero,+00000031
	bltu	a3,a5,000000002302D148

l2302D11E:
	c.mv	a1,a0
	addi	a0,zero,+00000030
	add	a5,a5,a0
	c.lui	a0,00001000
	addi	a0,a0,-00000060
	addi	a2,zero,+00000030
	c.add	a0,a5
	c.add	a0,a4
	jal	ra,000000002306CF80
	c.lw	s0,0(a5)
	c.add	a5,s1
	lbu	a4,a5,-00000700
	c.addi	a4,00000001
	sb	a4,a5,+00000900

l2302D148:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; __recv_event: 2302D152
__recv_event proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	lui	s1,0004201A
	lbu	a4,s1,+000004D8
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	zero,00000084
	c.swsp	zero,00000008
	c.swsp	zero,00000088
	c.swsp	zero,0000000C
	c.swsp	zero,0000008C
	c.li	a5,00000002
	c.mv	s0,a1
	bltu	a5,a4,000000002302D1C0

l2302D17C:
	lui	a4,0004201A
	lbu	a4,a4,+000004D9
	bltu	a5,a4,000000002302D1C0

l2302D188:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,000000002302D1E2

l2302D192:
	jal	ra,0000000023033B12

l2302D196:
	lw	a6,s0,+00000004
	lbu	a5,s0,+00000000
	lui	a3,00023077
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,00023077
	addi	a4,zero,+000000A0
	addi	a3,a3,+0000027C
	addi	a2,a2,+000004AC
	addi	a0,a0,+000002F8
	jal	ra,00000000230018FA

l2302D1C0:
	lbu	a4,s0,+00000000
	c.li	a5,00000001
	bne	a4,a5,000000002302D24C

l2302D1CA:
	c.lw	s0,4(a3)
	c.li	a5,00000002
	beq	a3,a5,000000002302D1E8

l2302D1D2:
	c.li	a5,00000003
	beq	a3,a5,000000002302D228

l2302D1D8:
	c.li	a5,00000000
	beq	a3,a4,000000002302D214

l2302D1DE:
	c.li	a5,00000002
	c.j	000000002302D214

l2302D1E2:
	jal	ra,0000000023033AF0
	c.j	000000002302D196

l2302D1E8:
	lui	s1,0004200E
	addi	s1,s1,+000001C8
	c.lw	s1,0(a0)
	addi	a2,zero,+00000020
	c.li	a1,00000000
	addi	a0,a0,+00000621
	jal	ra,000000002306D1BC
	c.lw	s1,0(a0)
	sb	zero,a0,+00000641
	c.lw	s0,12(a2)
	c.lw	s0,8(a1)
	addi	a0,a0,+00000621

l2302D20E:
	jal	ra,000000002306CF80

l2302D212:
	c.li	a5,00000000

l2302D214:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.mv	a0,a5
	c.addi16sp	00000040
	c.jr	ra

l2302D228:
	lui	s1,0004200E
	addi	s1,s1,+000001C8
	c.lw	s1,0(a0)
	addi	a2,zero,+00000040
	c.li	a1,00000000
	addi	a0,a0,+00000642
	jal	ra,000000002306D1BC
	c.lw	s1,0(a0)
	c.lw	s0,12(a2)
	c.lw	s0,8(a1)
	addi	a0,a0,+00000642
	c.j	000000002302D20E

l2302D24C:
	c.bnez	a4,000000002302D212

l2302D24E:
	c.lw	s0,4(a5)
	c.li	a4,0000000A
	c.addi	a5,FFFFFFFD
	bltu	a4,a5,000000002302D1DE

l2302D258:
	lui	a4,00023077
	c.slli	a5,02
	addi	a4,a4,+00000250
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
2302D268                         B7 E7 00 42 03 A5 87 1C         ...B....
2302D270 83 27 85 41 13 05 15 62 9C 43 C1 DF 82 97 51 BF .'.A...b.C....Q.
2302D280 B7 E7 00 42 83 A7 87 1C 83 A7 87 41 DC 43 D1 D3 ...B.......A.C..
2302D290 82 97 41 B7 B7 E7 00 42 83 A7 87 1C 83 A6 87 41 ..A....B.......A
2302D2A0 98 46 25 DB 09 67 3E 97 23 10 07 90 05 47 A3 8F .F%..g>.#....G..
2302D2B0 E7 60 37 D5 02 23 9C 46 13 05 65 0F C1 B7 B7 E9 .`7..#.F..e.....
2302D2C0 00 42 83 AA 89 1C 09 67 93 89 89 1C 56 97 03 46 .B.....g....V..F
2302D2D0 07 90 85 47 21 D2 03 44 17 90 83 C6 84 4D 63 19 ...G!..D.....Mc.
2302D2E0 86 04 23 10 07 90 89 47 E3 E5 D7 F2 37 A7 01 42 ..#....G....7..B
2302D2F0 03 47 97 4D E3 EF E7 F0 B7 E7 00 42 83 A7 47 24 .G.M.......B..G$
2302D300 8D C7 EF 60 10 01 AA 85 B7 76 07 23 37 E6 06 23 ...`.....v.#7..#
2302D310 37 75 07 23 13 07 20 0D 93 86 C6 27 13 06 C6 4A 7u.#.. ....'...J
2302D320 13 05 45 32 EF 40 6D DD ED B5 EF 60 60 7C E1 BF ..E2.@m....``|..
2302D330 89 47 63 EB D7 04 37 A7 01 42 03 47 97 4D 63 E5 .Gc...7..B.G.Mc.
2302D340 E7 04 B7 E7 00 42 83 A7 47 24 63 86 07 12 EF 60 .....B..G$c....`
2302D350 40 7C 03 A7 09 00 89 67 37 E6 06 23 3E 97 83 47 @|.....g7..#>..G
2302D360 17 90 AA 85 37 75 07 23 93 86 17 00 A3 00 D7 90 ....7u.#........
2302D370 B7 76 07 23 13 07 60 0D 93 86 C6 27 13 06 C6 4A .v.#..`....'...J
2302D380 13 05 85 34 EF 40 6D D7 13 09 00 03 33 09 24 03 ...4.@m.....3.$.
2302D390 05 6A EF 10 10 49 B7 75 07 23 AA 84 93 85 C5 36 .j...I.u.#.....6
2302D3A0 68 00 33 84 2A 01 52 94 83 48 94 FC 03 48 84 FC h.3.*.R..H...H..
2302D3B0 03 47 64 FC 83 46 54 FC 83 47 74 FC 03 46 44 FC .Gd..FT..Gt..FD.
2302D3C0 EF 60 6D F3 03 45 A4 FC EF F0 03 5C EF 10 30 3F .`m..E.....\..0?
2302D3D0 B7 75 07 23 2A 86 93 85 C5 38 26 85 EF 10 70 3A .u.#*....8&...p:
2302D3E0 68 00 EF 10 70 41 B7 F5 06 23 2A 86 93 85 45 8F h...pA...#*...E.
2302D3F0 26 85 EF 10 10 39 03 05 C4 FC EF F0 23 4E EF 10 &....9......#N..
2302D400 10 3C B7 75 07 23 2A 86 93 85 45 39 26 85 EF 10 .<.u.#*...E9&...
2302D410 50 37 13 05 0A FA 4A 95 56 95 EF 10 F0 3D B7 E5 P7....J.V....=..
2302D420 06 23 2A 86 93 85 45 76 26 85 EF 10 90 35 03 45 .#*...Ev&....5.E
2302D430 B4 FC EF F0 63 55 EF 10 90 38 B7 65 07 23 2A 86 ....cU...8.e.#*.
2302D440 93 85 45 62 26 85 EF 10 D0 33 26 85 EF 10 70 31 ..Eb&....3&...p1
2302D450 83 A7 09 00 2A 84 03 A9 C7 40 EF 00 64 1D 2A 86 ....*....@..d.*.
2302D460 A2 85 4A 85 EF 00 D0 3C 26 85 EF 10 30 29 22 85 ..J....<&...0)".
2302D470 EF 80 20 60 79 BB EF 60 A0 67 E1 BD B7 E7 00 42 .. `y..`.g.....B
2302D480 03 A7 87 1C 83 27 07 41 E3 85 07 D8 03 25 47 41 .....'.A.....%GA
2302D490 F5 B3 37 E4 00 42 13 04 84 1C 1C 40 83 A7 87 41 ..7..B.....@...A
2302D4A0 DC 47 E3 88 07 D6 37 D5 02 23 13 05 25 5D 82 97 .G....7..#..%]..
2302D4B0 1C 40 89 65 93 85 05 71 88 43 EF 50 20 4B 05 47 .@.e...q.C.P K.G
2302D4C0 89 47 E3 19 E5 D4 10 40 B7 75 07 23 93 85 C5 36 .G.....@.u.#...6
2302D4D0 83 48 A6 0A 03 48 96 0A 03 47 76 0A 83 46 66 0A .H...H...Gv..Ff.
2302D4E0 83 47 86 0A 03 46 56 0A 68 00 EF 60 CD E0 EF 10 .G...FV.h..`....
2302D4F0 50 33 1C 40 AA 84 03 C5 B7 0A EF F0 E3 48 EF 10 P3.@.........H..
2302D500 10 2C B7 75 07 23 2A 86 93 85 C5 39 26 85 EF 10 .,.u.#*....9&...
2302D510 50 27 08 40 13 05 45 05 EF 10 10 2E B7 75 07 23 P'.@..E......u.#
2302D520 2A 86 93 85 45 3A 26 85 EF 10 B0 25 08 40 13 05 *...E:&....%.@..
2302D530 45 06 EF 10 70 2C B7 75 07 23 2A 86 93 85 85 3A E...p,.u.#*....:
2302D540 26 85 EF 10 10 24 08 40 13 05 45 07 EF 10 D0 2A &....$.@..E....*
2302D550 B7 75 07 23 2A 86 93 85 C5 3A 26 85 EF 10 70 22 .u.#*....:&...p"
2302D560 08 40 13 05 45 08 EF 10 30 29 B7 E5 06 23 2A 86 .@..E...0)...#*.
2302D570 93 85 45 76 26 85 EF 10 D0 20 68 00 EF 10 D0 27 ..Ev&.... h....'
2302D580 B7 F5 06 23 2A 86 93 85 45 8F 26 85 EF 10 70 1F ...#*...E.&...p.
2302D590 26 85 EF 10 10 1D 1C 40 2A 89 03 A4 C7 40 EF 00 &......@*....@..
2302D5A0 24 09 2A 86 CA 85 22 85 EF 00 90 28 26 85 EF 10 $.*..."....(&...
2302D5B0 F0 14 4A 85 75 BD B7 E7 00 42 83 A7 87 1C B7 75 ..J.u....B.....u
2302D5C0 07 23 1D 46 03 A5 C7 40 93 85 45 3B EF 00 50 26 .#.F...@..E;..P&
2302D5D0 89 B1                                           ..             

;; wifi_state_get_cb: 2302D5D2
wifi_state_get_cb proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200E
	c.swsp	s0,00000004
	lw	s0,a5,+000001C8
	c.mv	a1,a0
	addi	a2,zero,+00000058
	addi	a0,s0,+00000054
	c.swsp	ra,00000084
	jal	ra,000000002306CF80
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,0000000023032528

;; write_data: 2302D600
write_data proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,0004200E
	lw	a5,s1,+000001C8
	lui	a4,0004201A
	c.swsp	s0,00000014
	c.mv	s0,a3
	lbu	a3,a4,+000004D8
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	sw	a0,a5,+00000684
	c.li	a5,00000002
	c.mv	s5,a2
	addi	s1,s1,+000001C8
	bltu	a5,a3,000000002302D644

l2302D636:
	lui	s7,0004201A
	c.mv	s4,a4
	lbu	a4,s7,+000004D9
	bgeu	a5,a4,000000002302D680

l2302D644:
	c.lw	s1,0(a0)
	c.mv	a2,s0
	c.mv	a1,s5
	sw	s0,a0,+00000408
	addi	a0,a0,+00000308
	jal	ra,000000002306CF80
	c.lw	s1,0(a5)
	c.li	a3,00000000
	c.li	a2,00000000
	lw	a0,a5,+000000AC
	addi	a1,a5,+00000308
	jal	ra,0000000023032528
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

l2302D680:
	lui	a5,0004200E
	lw	a4,a5,+00000244
	c.mv	s6,a5
	c.beqz	a4,000000002302D706

l2302D68C:
	jal	ra,0000000023033B12

l2302D690:
	lui	s3,00023077
	lui	s2,0002306E
	c.mv	a1,a0
	lui	a0,00023077
	c.mv	a5,s0
	addi	a4,zero,+0000007C
	addi	a3,s3,+0000027C
	addi	a2,s2,+000004AC
	addi	a0,a0,+000004F0
	jal	ra,00000000230018FA
	lbu	a4,s4,+000004D8
	c.li	a5,00000002
	c.mv	s4,s3
	c.mv	s3,s2
	bltu	a5,a4,000000002302D644

l2302D6C2:
	lbu	a4,s7,+000004D9
	bltu	a5,a4,000000002302D644

l2302D6CA:
	lw	a5,s6,+00000244
	c.beqz	a5,000000002302D70C

l2302D6D0:
	jal	ra,0000000023033B12

l2302D6D4:
	lui	s2,00023077
	c.mv	a1,a0
	lui	a0,00023077
	addi	a3,s4,+0000027C
	addi	a2,s3,+000004AC
	addi	a5,s2,+00000518
	addi	a4,zero,+0000007D
	addi	a0,a0,+00000520
	jal	ra,00000000230018FA
	c.mv	a3,s0
	c.mv	a2,s5
	c.li	a1,00000010
	addi	a0,s2,+00000518
	jal	ra,000000002302CD56
	c.j	000000002302D644

l2302D706:
	jal	ra,0000000023033AF0
	c.j	000000002302D690

l2302D70C:
	jal	ra,0000000023033AF0
	c.j	000000002302D6D4

;; __ble_bytes_send: 2302D712
__ble_bytes_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200E
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	addi	s1,s1,+000001C8
	c.lw	s1,0(a5)
	c.li	a0,FFFFFFFF
	lw	a4,a5,+00000684
	c.beqz	a4,000000002302D782

l2302D736:
	addi	a4,zero,+000000FF
	c.mv	s0,a2
	bltu	a4,a2,000000002302D782

l2302D740:
	addi	a0,a5,+0000041C
	c.mv	s3,a1
	jal	ra,000000002306CF80
	c.lw	s1,0(a5)
	lui	a4,0004201A
	slli	s4,s0,00000010
	lbu	a3,a4,+000004D8
	srli	s4,s4,00000010
	sh	s4,a5,+0000061C
	c.li	a5,00000002
	c.mv	s2,a4
	bltu	a5,a3,000000002302D774

l2302D768:
	lui	s6,0004201A
	lbu	a4,s6,+000004D9
	bgeu	a5,a4,000000002302D796

l2302D774:
	lui	a0,00023076
	addi	a0,a0,+0000076C
	jal	ra,0000000023003AC6
	c.li	a0,00000000

l2302D782:
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

l2302D796:
	lui	a5,0004200E
	lw	a4,a5,+00000244
	c.mv	s5,a5
	c.beqz	a4,000000002302D81A

l2302D7A2:
	jal	ra,0000000023033B12

l2302D7A6:
	c.mv	a5,s0
	lui	s1,00023077
	c.mv	a1,a0
	lui	s0,0002306E
	lui	a0,00023077
	addi	a4,zero,+00000091
	addi	a3,s1,+0000027C
	addi	a2,s0,+000004AC
	addi	a0,a0,+000002BC
	jal	ra,00000000230018FA
	lbu	a4,s2,+000004D8
	c.li	a5,00000002
	c.mv	s2,s1
	bltu	a5,a4,000000002302D774

l2302D7D6:
	lbu	a4,s6,+000004D9
	bltu	a5,a4,000000002302D774

l2302D7DE:
	lw	a5,s5,+00000244
	c.beqz	a5,000000002302D820

l2302D7E4:
	jal	ra,0000000023033B12

l2302D7E8:
	lui	s1,00023077
	c.mv	a1,a0
	lui	a0,00023077
	addi	a3,s2,+0000027C
	addi	a2,s0,+000004AC
	addi	a5,s1,+00000518
	addi	a4,zero,+00000093
	addi	a0,a0,+00000520
	jal	ra,00000000230018FA
	c.mv	a3,s4
	c.mv	a2,s3
	c.li	a1,00000010
	addi	a0,s1,+00000518
	jal	ra,000000002302CD56
	c.j	000000002302D774

l2302D81A:
	jal	ra,0000000023033AF0
	c.j	000000002302D7A6

l2302D820:
	jal	ra,0000000023033AF0
	c.j	000000002302D7E8

;; blsync_disconnected: 2302D826
blsync_disconnected proc
	lui	a0,00023077
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+0000046C
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000020
	lui	a5,0004200E
	sw	zero,a5,+000001C4
	c.addi	sp,00000010
	c.jr	ra

;; blsync_exchange_func: 2302D844
blsync_exchange_func proc
	c.beqz	a1,000000002302D85A

l2302D846:
	lui	a1,00023076
	addi	a1,a1,+00000408

l2302D84E:
	lui	a0,00023077
	addi	a0,a0,+0000048C
	jal	zero,0000000023003AC6

l2302D85A:
	lui	a1,00023076
	addi	a1,a1,+000003FC
	c.j	000000002302D84E

;; read_data: 2302D864
read_data proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200E
	lw	a5,s0,+000001C8
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	lhu	a5,a5,+0000061C
	c.beqz	a5,000000002302D91E

l2302D882:
	lui	a5,0004201A
	c.mv	s5,a4
	lbu	a4,a5,+000004D8
	c.li	a5,00000002
	addi	s0,s0,+000001C8
	c.mv	s4,a3
	c.mv	s3,a2
	c.mv	s2,a1
	c.mv	s1,a0
	bltu	a5,a4,000000002302D8E0

l2302D89E:
	lui	a4,0004201A
	lbu	a4,a4,+000004D9
	bltu	a5,a4,000000002302D8E0

l2302D8AA:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,000000002302D918

l2302D8B4:
	jal	ra,0000000023033B12

l2302D8B8:
	c.lw	s0,0(a5)
	lui	a3,00023077
	lui	a2,0002306E
	lhu	a5,a5,+0000061C
	c.mv	a1,a0
	lui	a0,00023077
	addi	a4,zero,+0000006D
	addi	a3,a3,+0000027C
	addi	a2,a2,+000004AC
	addi	a0,a0,+0000049C
	jal	ra,00000000230018FA

l2302D8E0:
	c.lw	s0,0(a5)
	lw	a0,a5,+0000040C
	c.jal	000000002302E00E
	c.lw	s0,0(a5)
	c.mv	a4,s5
	c.mv	a3,s4
	lhu	a6,a5,+0000061C
	c.mv	a2,s3
	addi	a5,a5,+0000041C
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023028998
	c.lw	s0,0(a5)
	sh	zero,a5,+0000061C

l2302D906:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2302D918:
	jal	ra,0000000023033AF0
	c.j	000000002302D8B8

l2302D91E:
	c.li	a0,FFFFFFFC
	c.j	000000002302D906

;; blsync_connected: 2302D922
blsync_connected proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	a1,00023077
	c.mv	s1,a0
	lui	a0,0002307F
	addi	a1,a1,+000002E4
	addi	a0,a0,-000006C4
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023003AC6
	c.lui	a2,00001000
	lui	s0,0004200E
	addi	a2,a2,-000007B8
	addi	a1,zero,+000000FB
	c.mv	a0,s1
	sw	s1,s0,+000001C4
	jal	ra,000000002301D8C6
	addi	s0,s0,+000001C4
	c.bnez	a0,000000002302D99E

l2302D95E:
	lui	a0,00023077
	addi	a0,a0,+000003EC
	jal	ra,0000000023003AC6

l2302D96A:
	c.lw	s0,0(a0)
	lui	a1,0004201A
	lui	a5,0002302E
	addi	a4,a1,+000004DC
	addi	a5,a5,-000007BC
	addi	a1,a1,+000004DC
	c.sw	a4,24(a5)
	jal	ra,000000002302908E
	c.mv	a1,a0
	c.bnez	a0,000000002302D9AE

l2302D98A:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,00023077
	addi	a0,a0,+0000042C
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

l2302D99E:
	c.mv	a1,a0
	lui	a0,00023077
	addi	a0,a0,+00000408
	jal	ra,0000000023003AC6
	c.j	000000002302D96A

l2302D9AE:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,00023077
	addi	a0,a0,+00000448
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

;; bl_ble_sync_start: 2302D9C2
;;   Called from:
;;     230017A4 (in blsync_init)
bl_ble_sync_start proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.beqz	a0,000000002302D9D2

l2302D9CE:
	c.mv	s1,a1
	c.bnez	a1,000000002302DA32

l2302D9D2:
	lui	a5,0004201A
	lbu	a4,a5,+000004D8
	c.li	a5,00000002
	c.li	a0,FFFFFFFF
	bltu	a5,a4,000000002302DA20

l2302D9E2:
	lui	a4,0004201A
	lbu	a4,a4,+000004D9
	bltu	a5,a4,000000002302DA20

l2302D9EE:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,000000002302DA2C

l2302D9F8:
	jal	ra,0000000023033B12

l2302D9FC:
	c.mv	a1,a0
	lui	a3,00023077
	lui	a2,0002306E
	lui	a0,00023077
	addi	a0,a0,+000003BC
	addi	a4,zero,+0000016D
	addi	a3,a3,+0000027C
	addi	a2,a2,+000004AC
	jal	ra,00000000230018FA
	c.li	a0,FFFFFFFF

l2302DA20:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2302DA2C:
	jal	ra,0000000023033AF0
	c.j	000000002302D9FC

l2302DA32:
	c.mv	s2,a2
	c.lui	a2,00002000
	addi	a2,a2,-000006F8
	c.li	a1,00000000
	c.mv	s0,a0
	c.swsp	a3,00000084
	jal	ra,000000002306D1BC
	lui	a5,0004200E
	sw	s0,a5,+000001C8
	lui	a5,0004200E
	c.lwsp	a2,000000A4
	addi	a5,a5,+000001CC
	c.lw	a5,0(a4)
	sw	s1,s0,+00000418
	sw	s2,s0,+00000410
	sw	a3,s0,+00000414
	sh	zero,s0,+0000061E
	sb	zero,s0,+00000620
	c.bnez	a4,000000002302DA7E

l2302DA6E:
	lui	a0,0004200D
	c.li	a4,00000001
	addi	a0,a0,+000005F0
	c.sw	a5,0(a4)
	jal	ra,0000000023026D20

l2302DA7E:
	lui	a0,00023077
	addi	a0,a0,+000004E4
	jal	ra,0000000023028C08
	c.lui	s1,00001000
	addi	a6,s1,-00000178
	lui	a1,00023077
	lui	a0,0002302D
	c.add	a6,s0
	addi	a5,s0,+00000688
	c.mv	a3,s0
	c.li	a4,0000000A
	addi	a2,zero,+00000200
	addi	a1,a1,+000003E8
	addi	a0,a0,-00000066
	jal	ra,0000000023033750
	c.add	s0,s1
	sw	a0,s0,+00000EE8
	c.li	a0,00000000
	c.j	000000002302DA20

;; bl_ble_sync_stop: 2302DABC
;;   Called from:
;;     230016D0 (in blesync_complete_cb)
;;     2300180C (in blsync_ble_stop)
bl_ble_sync_stop proc
	c.beqz	a0,000000002302DB40

l2302DABE:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	lui	a0,00023077
	addi	a0,a0,+000004E4
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	jal	ra,0000000023028948
	c.li	a5,00000001
	sb	a5,s0,+00000620
	jal	ra,00000000230344BE
	lui	s1,0004200E
	lw	a5,s1,+000001C8
	c.lui	a4,00001000
	addi	s1,s1,+000001C8
	c.add	a5,a4
	lw	a5,a5,-00000118
	c.li	s2,00000001
	bne	a5,a0,000000002302DB2C

l2302DAFA:
	c.lw	s1,0(a5)
	lbu	a5,a5,+0000061F
	beq	a5,s2,000000002302DB1E

l2302DB04:
	c.lui	a0,00001000
	c.add	s0,a0
	lw	a0,s0,-00000118
	jal	ra,000000002303386C

l2302DB10:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2302DB1E:
	c.li	a0,0000000A
	jal	ra,0000000023033E10
	c.j	000000002302DAFA

l2302DB26:
	c.li	a0,0000000A
	jal	ra,0000000023033E10

l2302DB2C:
	c.lw	s1,0(a5)
	lbu	a5,a5,+0000061F
	beq	a5,s2,000000002302DB26

l2302DB36:
	lbu	a5,s0,+0000061E
	beq	a5,s2,000000002302DB26

l2302DB3E:
	c.j	000000002302DB10

l2302DB40:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; __malloc: 2302DB44
;;   Called from:
;;     2302DC7C (in __protocol_send)
;;     2302DF5A (in pro_trans_read)
;;     2302DFF4 (in pro_trans_read)
__malloc proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002303598A
	c.mv	s0,a0
	c.beqz	a0,000000002302DB9C

l2302DB52:
	lui	a5,0004201A
	lbu	a4,a5,+000004D8
	c.li	a5,00000002
	bltu	a5,a4,000000002302DB9C

l2302DB60:
	lui	a4,0004201A
	lbu	a4,a4,+000004F8
	bltu	a5,a4,000000002302DB9C

l2302DB6C:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,000000002302DBA6

l2302DB76:
	jal	ra,0000000023033B12

l2302DB7A:
	lui	a3,00023077
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,00023077
	c.mv	a5,s0
	c.li	a4,0000001E
	addi	a3,a3,+0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,+00000568
	jal	ra,00000000230018FA

l2302DB9C:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2302DBA6:
	jal	ra,0000000023033AF0
	c.j	000000002302DB7A

;; __free: 2302DBAC
;;   Called from:
;;     2302DC20 (in __clear_dev)
;;     2302DD94 (in __protocol_send)
;;     2302DF8A (in pro_trans_read)
__free proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.beqz	a0,000000002302DC00

l2302DBB6:
	lui	a5,0004201A
	lbu	a4,a5,+000004D8
	c.li	a5,00000002
	bltu	a5,a4,000000002302DC00

l2302DBC4:
	lui	a4,0004201A
	lbu	a4,a4,+000004F8
	bltu	a5,a4,000000002302DC00

l2302DBD0:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,000000002302DC0C

l2302DBDA:
	jal	ra,0000000023033B12

l2302DBDE:
	lui	a3,00023077
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,00023077
	c.mv	a5,s0
	c.li	a4,00000014
	addi	a3,a3,+0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,+0000053C
	jal	ra,00000000230018FA

l2302DC00:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023035A72

l2302DC0C:
	jal	ra,0000000023033AF0
	c.j	000000002302DBDE

;; __clear_dev: 2302DC12
;;   Called from:
;;     2302DE64 (in pro_trans_read)
;;     2302DF1A (in pro_trans_read)
;;     2302DF54 (in pro_trans_read)
;;     2302DFD2 (in pro_trans_read)
;;     2302E0BA (in pro_trans_reset)
__clear_dev proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	sw	zero,a0,+00000038
	c.lw	a0,36(a0)
	jal	ra,000000002302DBAC
	c.lwsp	a2,00000020
	sw	zero,s0,+00000024
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; __protocol_send: 2302DC30
;;   Called from:
;;     2302DF80 (in pro_trans_read)
__protocol_send proc
	c.addi16sp	FFFFFFA0
	c.swsp	s4,00000024
	c.swsp	s11,00000094
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	s9,00000098
	c.swsp	s10,00000018
	c.swsp	a3,00000080
	c.swsp	a4,00000004
	sb	zero,sp,+0000001C
	sb	a1,sp,+0000001D
	sh	zero,sp,+0000001E
	c.mv	s11,a0
	c.mv	s4,a5
	c.beqz	a2,000000002302DC68

l2302DC62:
	c.li	a5,00000008
	sb	a5,sp,+0000001C

l2302DC68:
	lbu	a5,sp,+0000001C
	lhu	a0,s11,+0000003C
	c.li	s3,FFFFFFFD
	c.andi	a5,0000000F
	ori	a5,a5,+00000010
	sb	a5,sp,+0000001C
	jal	ra,000000002302DB44
	c.mv	s8,a0
	beq	a0,zero,000000002302DD98

l2302DC86:
	srli	a5,s4,00000008
	c.lui	s0,00002000
	c.swsp	a5,00000000
	c.li	s10,00000000
	andi	s1,s4,+000000FF
	addi	s6,a0,+00000006
	c.li	s2,00000001
	addi	s7,a0,+00000004
	addi	s0,s0,+00000710

l2302DCA2:
	c.li	a5,00000004
	sb	a5,sp,+0000001B
	lhu	a7,s11,+0000003C
	beq	s10,zero,000000002302DDB8

l2302DCB0:
	c.addi	a7,FFFFFFFC
	c.slli	a7,10
	c.mv	s5,s7
	srai	a7,a7,00000010
	c.li	s9,00000004

l2302DCBC:
	lbu	a5,sp,+0000001B
	lw	a0,s11,+00000000
	c.addi	a7,FFFFFFFF
	c.addi	a5,00000001
	sb	a5,sp,+0000001B
	c.lw	a0,20(a5)
	c.lwsp	tp,00000084
	c.lw	a0,24(a0)
	lw	t4,a5,+00000004
	c.lwsp	s0,000000E4
	sub	a6,s1,s10
	c.slli	a7,10
	addi	a4,sp,+0000001B
	srai	a7,a7,00000010
	andi	a6,a6,+000000FF
	c.add	a5,s10
	addi	a3,s5,+00000001
	c.li	a1,00000001
	c.jalr	t4
	lw	a4,s11,+00000000
	c.mv	s3,a0
	sb	zero,a4,+00000010
	blt	a0,zero,000000002302DD92

l2302DD02:
	andi	a2,a0,+000000FF
	c.add	s10,a2
	c.slli	s10,10
	srli	s10,s10,00000010
	bltu	s10,s4,000000002302DDDE

l2302DD12:
	bne	s4,s10,000000002302DDE2

l2302DD16:
	lhu	a4,sp,+0000001E
	c.lui	a3,FFFF8000
	c.or	a4,a3
	sh	a4,sp,+0000001E
	c.li	a3,00000001

l2302DD24:
	bgeu	a2,s4,000000002302DD34

l2302DD28:
	lbu	a4,sp,+0000001C
	ori	a4,a4,+00000002
	sb	a4,sp,+0000001C

l2302DD34:
	c.li	a2,00000002
	c.addi4spn	a1,0000001C
	c.mv	a0,s8
	c.swsp	a3,00000084
	jal	ra,000000002306CF80
	lhu	a4,sp,+0000001E
	c.mv	a1,s8
	c.li	a0,00000000
	sb	a4,s8,+00000002
	c.srli	a4,00000008
	sb	a4,s8,+00000003
	lbu	a4,sp,+0000001B
	c.addi	a4,FFFFFFFF
	sub	s9,a4,s9
	sb	s9,s5,+00000000
	lw	a4,s11,+000000A4
	lbu	a2,sp,+0000001B
	c.lw	a4,0(a4)
	c.jalr	a4
	lbu	a4,sp,+0000001D
	lw	a0,s11,+00000050
	c.mv	a1,s0
	c.addi	a4,00000001
	sb	a4,sp,+0000001D
	lhu	a4,sp,+0000001E
	c.addi	a4,00000001
	sh	a4,sp,+0000001E
	jal	ra,000000002303296C
	bne	a0,s2,000000002302DDE6

l2302DD8E:
	c.lwsp	a2,000000A4
	c.beqz	a3,000000002302DCA2

l2302DD92:
	c.mv	a0,s8
	jal	ra,000000002302DBAC

l2302DD98:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.mv	a0,s3
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

l2302DDB8:
	c.lwsp	zero,000000E4
	sb	s1,s8,+00000004
	c.addi	a7,FFFFFFFA
	sb	a5,s8,+00000005
	c.li	a5,00000006
	sb	a5,sp,+0000001B
	lw	a5,s11,+00000000
	c.slli	a7,10
	c.mv	s5,s6
	srai	a7,a7,00000010
	sb	s2,a5,+00000010
	c.li	s9,00000006
	c.j	000000002302DCBC

l2302DDDE:
	c.li	a3,00000000
	c.j	000000002302DD24

l2302DDE2:
	c.li	s3,FFFFFFFE
	c.j	000000002302DD92

l2302DDE6:
	c.li	s3,FFFFFFFC
	c.j	000000002302DD92

;; pro_trans_read: 2302DDEA
;;   Called from:
;;     2302D0AC (in __bl_ble_sync_task)
pro_trans_read proc
	c.addi16sp	FFFFFFC0
	c.swsp	s2,00000018
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s3,00000094
	c.li	s2,FFFFFFFE
	c.beqz	a0,000000002302DEB6

l2302DDFA:
	c.mv	s1,a1
	c.li	s2,FFFFFFFE
	c.beqz	a1,000000002302DEB6

l2302DE00:
	sh	a3,a0,+0000003C
	c.mv	s2,a2
	c.mv	s0,a0
	c.li	a2,00000002
	c.addi4spn	a0,0000000C
	jal	ra,000000002306CF80
	lbu	a5,sp,+0000000C
	c.andi	a5,00000001
	c.beqz	a5,000000002302DECC

l2302DE18:
	lbu	s3,sp,+0000000D
	lbu	a5,s0,+00000020
	beq	a5,s3,000000002302DE32

l2302DE24:
	jal	ra,0000000023033AF0
	c.sw	s0,72(a0)
	sw	zero,s0,+0000004C
	sb	s3,s0,+00000020

l2302DE32:
	c.lw	s0,72(a5)
	c.lw	s0,76(a4)
	c.or	a5,a4
	c.beqz	a5,000000002302DECC

l2302DE3A:
	jal	ra,0000000023033AF0
	c.lw	s0,72(a4)
	c.lw	s0,76(a5)
	sub	a4,a0,a4
	sltu	a0,a0,a4
	sub	a5,zero,a5
	sub	a0,a5,a0
	blt	zero,a0,000000002302DE62

l2302DE56:
	c.bnez	a0,000000002302DECC

l2302DE58:
	c.lui	a5,00002000
	addi	a5,a5,+00000710
	bgeu	a5,a4,000000002302DECC

l2302DE62:
	c.mv	a0,s0
	jal	ra,000000002302DC12
	lui	a5,0004201A
	lbu	a4,a5,+000004D8
	c.li	a5,00000002
	c.li	s2,FFFFFFFC
	bltu	a5,a4,000000002302DEB6

l2302DE78:
	lui	a4,0004201A
	lbu	a4,a4,+000004F8
	bltu	a5,a4,000000002302DEB6

l2302DE84:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,000000002302DEC6

l2302DE8E:
	jal	ra,0000000023033B12

l2302DE92:
	c.mv	a1,a0
	lui	a3,00023077
	lui	a2,0002306E
	lui	a0,00023077
	addi	a4,zero,+00000145
	addi	a3,a3,+0000055C
	addi	a2,a2,+000004AC
	addi	a0,a0,+00000588
	jal	ra,00000000230018FA
	c.li	s2,FFFFFFFC

l2302DEB6:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s2
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l2302DEC6:
	jal	ra,0000000023033AF0
	c.j	000000002302DE92

l2302DECC:
	lbu	a5,s1,+00000003
	lbu	a4,s1,+00000002
	lbu	s3,sp,+0000000C
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,sp,+0000000E
	srli	s3,s3,00000004
	c.slli	a5,11
	addi	a2,s2,-00000004
	andi	s3,s3,+00000003
	lbu	s2,s1,+00000004
	c.bnez	a5,000000002302DF94

l2302DEF4:
	lbu	a6,s1,+00000005
	c.addi	s1,00000007
	c.slli	a6,08
	or	a6,a6,s2
	sh	a6,s0,+0000003A
	lbu	s2,s1,-00000001
	addi	a5,s2,+00000003
	beq	a2,a5,000000002302DF14

l2302DF10:
	c.li	s2,FFFFFFFE
	c.j	000000002302DF64

l2302DF14:
	c.lw	s0,36(a5)
	c.beqz	a5,000000002302DF1E

l2302DF18:
	c.mv	a0,s0
	jal	ra,000000002302DC12

l2302DF1E:
	lhu	a0,s0,+0000003A
	c.bnez	a0,000000002302DF5A

l2302DF24:
	c.lw	s0,0(a5)
	c.li	a4,00000001
	sb	a4,a5,+00000010

l2302DF2C:
	c.lw	s0,0(a0)
	c.lw	s0,36(a2)
	lhu	a3,s0,+00000038
	c.lw	a0,20(a5)
	c.lw	a0,24(a0)
	c.mv	a6,s2
	lw	a7,a5,+00000000
	c.add	a3,a2
	c.mv	a5,s1
	addi	a4,sp,+0000000A
	addi	a2,sp,+0000000B
	c.mv	a1,s3
	c.jalr	a7
	c.mv	s2,a0
	c.beqz	a0,000000002302DFA6

l2302DF52:
	c.mv	a0,s0
	jal	ra,000000002302DC12
	c.j	000000002302DF64

l2302DF5A:
	jal	ra,000000002302DB44
	c.sw	s0,36(a0)
	c.bnez	a0,000000002302DF24

l2302DF62:
	c.li	s2,FFFFFFFD

l2302DF64:
	lbu	a5,sp,+0000000C
	c.srli	a5,00000003
	c.andi	a5,00000001
	c.bnez	a5,000000002302DF84

l2302DF6E:
	lbu	a5,s0,+0000003E
	c.lw	s0,64(a4)
	lbu	a1,sp,+0000000D
	andi	a3,s2,+000000FF
	c.li	a2,00000001
	c.mv	a0,s0
	jal	ra,000000002302DC30

l2302DF84:
	c.lw	s0,64(a0)
	sh	zero,s0,+0000003E
	jal	ra,000000002302DBAC
	sw	zero,s0,+00000040
	c.j	000000002302DEB6

l2302DF94:
	addi	a5,s2,+00000001
	c.addi	s1,00000005
	bne	a2,a5,000000002302DF10

l2302DF9E:
	c.lw	s0,0(a5)
	sb	zero,a5,+00000010
	c.j	000000002302DF2C

l2302DFA6:
	lbu	a4,sp,+0000000A
	lhu	a5,s0,+00000038
	c.add	a5,a4
	lbu	a4,sp,+0000000C
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+00000038
	c.andi	a4,00000002
	c.beqz	a4,000000002302DFC8

l2302DFC0:
	lh	a4,sp,+0000000E
	bge	a4,zero,000000002302DF64

l2302DFC8:
	lhu	a4,s0,+0000003A
	beq	a4,a5,000000002302DFD8

l2302DFD0:
	c.mv	a0,s0
	jal	ra,000000002302DC12
	c.j	000000002302DF10

l2302DFD8:
	lbu	a4,sp,+0000000B
	c.swsp	a5,0000008C
	lw	a5,s0,+000000A4
	c.swsp	a4,00000088
	c.lw	s0,36(a4)
	sb	s3,sp,+00000010
	c.swsp	a4,0000000C
	c.lw	a5,4(a5)
	c.beqz	a5,000000002302DF52

l2302DFF0:
	addi	a0,zero,+00000100
	jal	ra,000000002302DB44
	c.sw	s0,64(a0)
	c.beqz	a0,000000002302DF62

l2302DFFC:
	lw	a5,s0,+000000A4
	lw	a0,s0,+000000A8
	c.addi4spn	a1,00000010
	c.lw	a5,4(a5)
	c.jalr	a5
	c.mv	s2,a0
	c.j	000000002302DF52

;; pro_trans_ack: 2302E00E
;;   Called from:
;;     2302D8E6 (in read_data)
pro_trans_ack proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,80(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528
	c.li	a5,00000001
	beq	a0,a5,000000002302E02C

l2302E024:
	c.li	a0,00000002

l2302E026:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2302E02C:
	c.li	a0,00000000
	c.j	000000002302E026

;; pro_trans_layer_ack_read: 2302E030
pro_trans_layer_ack_read proc
	c.beqz	a0,000000002302E068

l2302E032:
	c.li	a5,FFFFFFFE
	c.beqz	a1,000000002302E06A

l2302E036:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	addi	a3,zero,+00000100
	c.mv	s1,a2
	bltu	a3,a2,000000002302E05C

l2302E048:
	c.lw	a0,64(a3)
	c.li	a5,FFFFFFFD
	c.beqz	a3,000000002302E05C

l2302E04E:
	c.mv	s0,a0
	c.mv	a0,a3
	jal	ra,000000002306CF80
	c.li	a5,00000000
	sh	s1,s0,+0000003E

l2302E05C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2302E068:
	c.li	a5,FFFFFFFE

l2302E06A:
	c.mv	a0,a5
	c.jr	ra

;; pro_trans_init: 2302E06E
;;   Called from:
;;     2302CFE4 (in __bl_ble_sync_task)
pro_trans_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s1,a2
	c.mv	s2,a1
	addi	a2,zero,+000000B0
	c.li	a1,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,000000002306D1BC
	addi	a1,s0,+00000004
	c.mv	a0,a1
	c.jal	000000002302E166
	c.sw	s0,0(a0)
	sw	s2,s0,+000000A4
	sw	s1,s0,+000000A8
	addi	a3,s0,+00000054
	c.li	a4,00000003
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000001
	jal	ra,00000000230323F0
	c.sw	s0,80(a0)
	c.lwsp	a2,00000020
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; pro_trans_reset: 2302E0BA
;;   Called from:
;;     2302D0F0 (in __bl_ble_sync_task)
pro_trans_reset proc
	jal	zero,000000002302DC12

;; __pack_encrypt_read: 2302E0BE
__pack_encrypt_read proc
	c.mv	a7,a3
	c.mv	a3,a4
	lbu	a4,a0,+00000010
	c.beqz	a4,000000002302E0E8

l2302E0C8:
	addi	a4,a5,+00000009
	c.addi	a6,FFFFFFF7

l2302E0CE:
	sltu	a5,zero,a1
	sb	a5,a0,+0000000C
	c.lw	a0,0(a0)
	c.mv	a1,a7
	c.lw	a0,0(a5)
	c.lw	a0,4(a0)
	lw	t1,a5,+00000000
	andi	a5,a6,+000000FF
	c.jr	t1

l2302E0E8:
	addi	a4,a5,+00000001
	c.addi	a6,FFFFFFFF
	c.j	000000002302E0CE

;; __pack_encrypt_write: 2302E0F0
__pack_encrypt_write proc
	sb	zero,a3,+00000000
	lbu	a1,a0,+00000010
	c.slli	a7,10
	c.mv	t3,a2
	srli	a7,a7,00000010
	c.mv	a2,a4
	c.mv	a4,a5
	c.mv	a5,a6
	c.beqz	a1,000000002302E154

l2302E108:
	sb	zero,a3,+00000001
	sb	zero,a3,+00000002
	sb	zero,a3,+00000003
	sb	zero,a3,+00000004
	sb	zero,a3,+00000005
	sb	zero,a3,+00000006
	sb	zero,a3,+00000007
	sb	zero,a3,+00000008
	addi	a1,a3,+00000009
	lbu	a3,a2,+00000000
	c.addi	a7,FFFFFFF7
	c.addi	a3,00000009
	sb	a3,a2,+00000000

l2302E138:
	c.li	a3,00000001
	sb	a3,a0,+0000000C
	c.lw	a0,0(a0)
	slli	a6,a7,00000010
	srai	a6,a6,00000010
	c.lw	a0,0(a3)
	c.lw	a0,4(a0)
	lw	t1,a3,+00000004
	c.mv	a3,t3
	c.jr	t1

l2302E154:
	addi	a1,a3,+00000001
	lbu	a3,a2,+00000000
	c.addi	a7,FFFFFFFF
	c.addi	a3,00000001
	sb	a3,a2,+00000000
	c.j	000000002302E138

;; pro_encrypt_init: 2302E166
;;   Called from:
;;     2302E08E (in pro_trans_init)
pro_encrypt_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a1
	addi	a1,a0,+00000004
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.mv	a0,a1
	c.swsp	ra,00000084
	c.jal	000000002302E27C
	lui	a5,00023082
	addi	a5,a5,+00000774
	c.sw	s0,0(a0)
	c.sw	s0,24(s1)
	c.sw	s0,20(a5)
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; __payload_write: 2302E194
__payload_write proc
	blt	a6,zero,000000002302E21E

l2302E198:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	a7,a1
	c.mv	a1,a4
	lbu	a4,a0,+00000008
	c.slli	a6,10
	c.mv	s1,a2
	srli	a6,a6,00000010
	c.bnez	a4,000000002302E1F0

l2302E1B2:
	c.addi	a6,FFFFFFFF
	c.slli	a6,10
	srai	a6,a6,00000010
	bge	a5,a6,000000002302E1C0

l2302E1BE:
	c.mv	a6,a5

l2302E1C0:
	andi	s0,a6,+000000FF
	c.li	a5,00000004
	c.li	a0,FFFFFFFE
	bne	s0,a5,000000002302E1E6

l2302E1CC:
	sb	a3,a7,+00000000
	c.li	a2,00000004
	addi	a0,a7,+00000001
	jal	ra,000000002306CF80
	lbu	a5,s1,+00000000
	c.addi	a5,00000005

l2302E1E0:
	sb	a5,s1,+00000000
	c.mv	a0,s0

l2302E1E6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2302E1F0:
	c.addi	a6,FFFFFFFE
	c.slli	a6,10
	srai	a6,a6,00000010
	bge	a5,a6,000000002302E1FE

l2302E1FC:
	c.mv	a6,a5

l2302E1FE:
	andi	s0,a6,+000000FF
	sb	s0,a7,+00000000
	sb	a3,a7,+00000001
	c.mv	a2,s0
	addi	a0,a7,+00000002
	jal	ra,000000002306CF80
	lbu	a5,s1,+00000000
	c.addi	a5,00000002
	c.add	a5,s0
	c.j	000000002302E1E0

l2302E21E:
	c.li	a0,FFFFFFFE
	c.jr	ra

;; __payload_read: 2302E222
__payload_read proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.mv	a6,a1
	lbu	a1,a0,+00000008
	c.bnez	a1,000000002302E25A

l2302E22E:
	c.li	a1,00000005
	c.li	a0,FFFFFFFE
	bne	a5,a1,000000002302E254

l2302E236:
	c.li	a5,00000004
	sb	a5,a3,+00000000
	lbu	a5,a4,+00000000
	addi	a1,a4,+00000001
	sb	a5,a2,+00000000
	lbu	a2,a3,+00000000

l2302E24C:
	c.mv	a0,a6
	jal	ra,000000002306CF80
	c.li	a0,00000000

l2302E254:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2302E25A:
	lbu	a1,a4,+00000000
	c.addi	a5,FFFFFFFE
	c.li	a0,FFFFFFFE
	bne	a5,a1,000000002302E254

l2302E266:
	sb	a5,a3,+00000000
	lbu	a5,a4,+00000001
	addi	a1,a4,+00000002
	sb	a5,a2,+00000000
	lbu	a2,a3,+00000000
	c.j	000000002302E24C

;; pro_payload_init: 2302E27C
;;   Called from:
;;     2302E178 (in pro_encrypt_init)
pro_payload_init proc
	lui	a5,00023082
	addi	a5,a5,+0000077C
	c.sw	a0,0(a5)
	c.sw	a0,4(a1)
	c.jr	ra

;; cJSON_New_Item: 2302E28A
;;   Called from:
;;     2302EFCC (in cJSON_CreateNumber)
;;     2302F002 (in cJSON_CreateString)
;;     2302F026 (in cJSON_CreateObject)
cJSON_New_Item proc
	lui	a5,0004200E
	lw	a5,a5,-000003A0
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	a0,zero,+00000028
	c.jalr	a5
	c.mv	s0,a0
	c.beqz	a0,000000002302E2AC

l2302E2A2:
	addi	a2,zero,+00000028
	c.li	a1,00000000
	jal	ra,000000002306D1BC

l2302E2AC:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ensure: 2302E2B6
;;   Called from:
;;     2302E3DC (in print_number)
;;     2302E46E (in print_number)
;;     2302E49E (in print_number)
;;     2302E59A (in print_string_ptr)
;;     2302E5FA (in print_string_ptr)
;;     2302E672 (in print_string_ptr)
;;     2302E792 (in print_array.isra.4)
;;     2302E7E4 (in print_array.isra.4)
;;     2302E818 (in print_array.isra.4)
;;     2302E84C (in print_array.isra.4)
;;     2302EAC0 (in print_object.isra.3)
;;     2302EB56 (in print_object.isra.3)
;;     2302EBA8 (in print_object.isra.3)
;;     2302EBCE (in print_object.isra.3)
;;     2302EBFE (in print_object.isra.3)
;;     2302EC42 (in print_object.isra.3)
ensure proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.li	s2,00000000
	c.beqz	a0,000000002302E32C

l2302E2C6:
	lw	s2,a0,+00000000
	beq	s2,zero,000000002302E32C

l2302E2CE:
	c.lw	a0,8(a5)
	c.lw	a0,4(a4)
	c.add	a1,a5
	blt	a4,a1,000000002302E2DC

l2302E2D8:
	c.add	s2,a5
	c.j	000000002302E32C

l2302E2DC:
	addi	s0,a1,-00000001
	srai	a1,s0,00000001
	c.or	s0,a1
	srai	a1,s0,00000002
	c.or	s0,a1
	srai	a1,s0,00000004
	c.or	s0,a1
	srai	a5,s0,00000008
	c.or	s0,a5
	srai	a5,s0,00000010
	c.or	s0,a5
	lui	a5,0004200E
	lw	a5,a5,-000003A0
	c.addi	s0,00000001
	c.mv	s1,a0
	c.mv	a0,s0
	c.jalr	a5
	lui	s3,0004200E
	c.mv	s2,a0
	c.lw	s1,0(a1)
	addi	s3,s3,-000003A4
	c.bnez	a0,000000002302E33C

l2302E31C:
	lw	a5,s3,+00000000
	c.mv	a0,a1
	c.jalr	a5
	sw	zero,s1,+00000004
	sw	zero,s1,+00000000

l2302E32C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2302E33C:
	c.lw	s1,4(a2)
	jal	ra,000000002306CF80
	lw	a5,s3,+00000000
	c.lw	s1,0(a0)
	c.jalr	a5
	c.lw	s1,8(a5)
	c.sw	s1,4(s0)
	sw	s2,s1,+00000000
	c.j	000000002302E2D8

;; cJSON_strdup: 2302E354
;;   Called from:
;;     2302EFA4 (in cJSON_AddItemToObject)
;;     2302F010 (in cJSON_CreateString)
cJSON_strdup proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a0,00000084
	jal	ra,000000002306D630
	lui	a5,0004200E
	lw	a5,a5,-000003A0
	addi	a2,a0,+00000001
	c.mv	a0,a2
	c.swsp	a2,00000004
	c.jalr	a5
	c.mv	s0,a0
	c.beqz	a0,000000002302E37E

l2302E376:
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	jal	ra,000000002306CF80

l2302E37E:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; update: 2302E388
;;   Called from:
;;     2302E83C (in print_array.isra.4)
;;     2302EBF2 (in print_object.isra.3)
;;     2302EC28 (in print_object.isra.3)
update proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	s0,00000000
	c.beqz	a0,000000002302E3A4

l2302E392:
	c.lw	a0,0(a4)
	c.li	s0,00000000
	c.beqz	a4,000000002302E3A4

l2302E398:
	c.lw	a0,8(s0)
	add	a0,a4,s0
	jal	ra,000000002306D630
	c.add	s0,a0

l2302E3A4:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; print_number: 2302E3AE
print_number proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lw	s3,a0,+0000001C
	lw	s2,a0,+00000018
	c.mv	s4,a0
	c.mv	s0,a1
	c.li	a2,00000000
	c.li	a3,00000000
	c.mv	a0,s2
	c.mv	a1,s3
	jal	ra,000000002306B1A4
	c.bnez	a0,000000002302E410

l2302E3D6:
	c.beqz	s0,000000002302E402

l2302E3D8:
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,000000002302E2B6

l2302E3E0:
	c.mv	s0,a0
	c.beqz	a0,000000002302E3F0

l2302E3E4:
	lui	a1,0002307D
	addi	a1,a1,-0000024C
	jal	ra,000000002306D580

l2302E3F0:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2302E402:
	lui	a5,0004200E
	lw	a5,a5,-000003A0
	c.li	a0,00000002
	c.jalr	a5
	c.j	000000002302E3E0

l2302E410:
	lw	a0,s4,+00000014
	lui	s1,00023077
	jal	ra,000000002306C8DC
	c.mv	a2,s2
	c.mv	a3,s3
	jal	ra,000000002306BBE0
	jal	ra,000000002306891C
	lw	a2,s1,+00000618
	lw	a3,s1,+0000061C
	jal	ra,000000002306B358
	blt	zero,a0,000000002302E496

l2302E438:
	lui	a5,00023077
	lw	a2,a5,+00000620
	lw	a3,a5,+00000624
	c.mv	a0,s2
	c.mv	a1,s3
	jal	ra,000000002306B358
	blt	zero,a0,000000002302E496

l2302E450:
	lui	a5,00023077
	lw	a2,a5,+00000628
	lw	a3,a5,+0000062C
	c.mv	a0,s2
	c.mv	a1,s3
	jal	ra,000000002306B26C
	blt	a0,zero,000000002302E496

l2302E468:
	c.beqz	s0,000000002302E488

l2302E46A:
	c.li	a1,00000015
	c.mv	a0,s0
	jal	ra,000000002302E2B6

l2302E472:
	c.mv	s0,a0
	c.beqz	a0,000000002302E3F0

l2302E476:
	lw	a2,s4,+00000014
	lui	a1,00023077
	addi	a1,a1,+00000648
	jal	ra,0000000023003AF6
	c.j	000000002302E3F0

l2302E488:
	lui	a5,0004200E
	lw	a5,a5,-000003A0
	c.li	a0,00000015
	c.jalr	a5
	c.j	000000002302E472

l2302E496:
	c.beqz	s0,000000002302E4FA

l2302E498:
	addi	a1,zero,+00000040
	c.mv	a0,s0
	jal	ra,000000002302E2B6

l2302E4A2:
	c.mv	s0,a0
	c.beqz	a0,000000002302E3F0

l2302E4A6:
	c.mv	a0,s2
	c.mv	a1,s3
	jal	ra,0000000023068928
	c.mv	a2,s2
	c.mv	a3,s3
	jal	ra,000000002306BBE0
	jal	ra,000000002306891C
	lw	a2,s1,+00000618
	lw	a3,s1,+0000061C
	jal	ra,000000002306B358
	blt	zero,a0,000000002302E50A

l2302E4CA:
	c.mv	a0,s2
	c.mv	a1,s3
	jal	ra,000000002306891C
	lui	a5,00023077
	lw	a2,a5,+00000630
	lw	a3,a5,+00000634
	jal	ra,000000002306B358
	bge	a0,zero,000000002302E50A

l2302E4E6:
	lui	a1,00023077
	c.mv	a2,s2
	c.mv	a3,s3
	addi	a1,a1,+0000064C

l2302E4F2:
	c.mv	a0,s0
	jal	ra,0000000023003AF6
	c.j	000000002302E3F0

l2302E4FA:
	lui	a5,0004200E
	lw	a5,a5,-000003A0
	addi	a0,zero,+00000040
	c.jalr	a5
	c.j	000000002302E4A2

l2302E50A:
	c.mv	a0,s2
	c.mv	a1,s3
	jal	ra,000000002306891C
	lui	a5,00023077
	lw	a2,a5,+00000638
	lw	a3,a5,+0000063C
	jal	ra,000000002306B358
	bge	a0,zero,000000002302E534

l2302E526:
	lui	a1,00023077
	c.mv	a2,s2
	c.mv	a3,s3
	addi	a1,a1,+00000654
	c.j	000000002302E4F2

l2302E534:
	c.mv	a0,s2
	c.mv	a1,s3
	jal	ra,000000002306891C
	lui	a5,00023077
	lw	a2,a5,+00000640
	lw	a3,a5,+00000644
	jal	ra,000000002306B26C
	blt	zero,a0,000000002302E526

l2302E550:
	lui	a1,00023077
	c.mv	a2,s2
	c.mv	a3,s3
	addi	a1,a1,+00000658
	c.j	000000002302E4F2

;; print_string_ptr: 2302E55E
;;   Called from:
;;     2302EBEC (in print_object.isra.3)
;;     2302ED62 (in print_object.isra.3)
print_string_ptr proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.mv	s1,a1
	c.mv	s2,a0
	c.mv	s0,a0
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	c.li	a4,00000000
	c.li	a1,0000001E
	addi	a0,zero,+00000022

l2302E586:
	lbu	a5,s0,+00000000
	c.bnez	a5,000000002302E5C2

l2302E58C:
	c.bnez	a4,000000002302E5F0

l2302E58E:
	sub	s3,s0,s2
	addi	a1,s3,+00000003
	c.beqz	s1,000000002302E5E2

l2302E598:
	c.mv	a0,s1
	jal	ra,000000002302E2B6

l2302E59E:
	c.mv	s1,a0
	c.beqz	a0,000000002302E60E

l2302E5A2:
	addi	s0,a0,+00000001
	addi	s4,zero,+00000022
	sb	s4,a0,+00000000
	c.mv	a1,s2
	c.mv	a0,s0
	c.add	s0,s3
	jal	ra,000000002306D580
	sb	s4,s0,+00000000

l2302E5BC:
	sb	zero,s0,+00000001
	c.j	000000002302E60E

l2302E5C2:
	addi	a3,a5,-00000001
	andi	a3,a3,+000000FF
	c.li	a2,00000001
	bgeu	a1,a3,000000002302E5DC

l2302E5D0:
	beq	a5,a0,000000002302E5DC

l2302E5D4:
	addi	a5,a5,-0000005C
	sltiu	a2,a5,+00000001

l2302E5DC:
	c.or	a4,a2
	c.addi	s0,00000001
	c.j	000000002302E586

l2302E5E2:
	lui	a5,0004200E
	lw	a5,a5,-000003A0
	c.mv	a0,a1
	c.jalr	a5
	c.j	000000002302E59E

l2302E5F0:
	bne	s2,zero,000000002302E65E

l2302E5F4:
	c.beqz	s1,000000002302E62C

l2302E5F6:
	c.li	a1,00000003
	c.mv	a0,s1
	jal	ra,000000002302E2B6

l2302E5FE:
	c.mv	s1,a0
	c.beqz	a0,000000002302E60E

l2302E602:
	lui	a1,00023077
	addi	a1,a1,+0000065C
	jal	ra,000000002306D580

l2302E60E:
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
	c.lwsp	zero,0000004C
	c.addi16sp	00000030
	c.jr	ra

l2302E62C:
	lui	a5,0004200E
	lw	a5,a5,-000003A0
	c.li	a0,00000003
	c.jalr	a5
	c.j	000000002302E5FE

l2302E63A:
	c.addi	s0,00000002

l2302E63C:
	c.addi	s3,00000001

l2302E63E:
	lbu	s4,s3,+00000000
	beq	s4,zero,000000002302E66A

l2302E646:
	c.mv	a1,s4
	addi	a0,s5,+00000660
	jal	ra,000000002306D298
	c.bnez	a0,000000002302E63A

l2302E652:
	bgeu	s6,s4,000000002302E65A

l2302E656:
	c.addi	s0,00000001
	c.j	000000002302E63C

l2302E65A:
	c.addi	s0,00000006
	c.j	000000002302E63C

l2302E65E:
	c.mv	s3,s2
	c.li	s0,00000000
	lui	s5,00023077
	c.li	s6,0000001F
	c.j	000000002302E63E

l2302E66A:
	addi	a1,s0,+00000003
	c.beqz	s1,000000002302E6B0

l2302E670:
	c.mv	a0,s1
	jal	ra,000000002302E2B6

l2302E676:
	c.mv	s1,a0
	c.beqz	a0,000000002302E60E

l2302E67A:
	addi	a5,zero,+00000022
	addi	s0,a0,+00000001
	sb	a5,a0,+00000000
	c.li	s6,0000001F
	addi	s3,zero,+0000005C
	c.li	s5,0000000C
	addi	s7,zero,+00000066
	lui	s8,00023077
	addi	s4,zero,+00000022
	c.li	s9,0000000D
	addi	s10,zero,+00000072

l2302E6A0:
	lbu	a5,s2,+00000000
	c.bnez	a5,000000002302E6BE

l2302E6A6:
	addi	a5,zero,+00000022
	sb	a5,s0,+00000000
	c.j	000000002302E5BC

l2302E6B0:
	lui	a5,0004200E
	lw	a5,a5,-000003A0
	c.mv	a0,a1
	c.jalr	a5
	c.j	000000002302E676

l2302E6BE:
	addi	a0,s0,+00000001
	c.addi	s2,00000001
	bgeu	s6,a5,000000002302E6D8

l2302E6C8:
	beq	a5,s4,000000002302E6D8

l2302E6CC:
	beq	a5,s3,000000002302E6D8

l2302E6D0:
	sb	a5,s0,+00000000

l2302E6D4:
	c.mv	s0,a0
	c.j	000000002302E6A0

l2302E6D8:
	sb	s3,s0,+00000000
	lbu	a2,s2,-00000001
	beq	a2,s5,000000002302E732

l2302E6E4:
	bltu	s5,a2,000000002302E708

l2302E6E8:
	c.li	a5,00000009
	beq	a2,a5,000000002302E746

l2302E6EE:
	c.li	a5,0000000A
	beq	a2,a5,000000002302E73C

l2302E6F4:
	c.li	a5,00000008
	bne	a2,a5,000000002302E750

l2302E6FA:
	addi	a0,s0,+00000002
	addi	a5,zero,+00000062

l2302E702:
	sb	a5,s0,+00000001
	c.j	000000002302E6D4

l2302E708:
	beq	a2,s4,000000002302E728

l2302E70C:
	beq	a2,s3,000000002302E71E

l2302E710:
	bne	a2,s9,000000002302E750

l2302E714:
	addi	a0,s0,+00000002
	sb	s10,s0,+00000001
	c.j	000000002302E6D4

l2302E71E:
	addi	a0,s0,+00000002
	sb	s3,s0,+00000001
	c.j	000000002302E6D4

l2302E728:
	addi	a0,s0,+00000002
	sb	s4,s0,+00000001
	c.j	000000002302E6D4

l2302E732:
	addi	a0,s0,+00000002
	sb	s7,s0,+00000001
	c.j	000000002302E6D4

l2302E73C:
	addi	a0,s0,+00000002
	addi	a5,zero,+0000006E
	c.j	000000002302E702

l2302E746:
	addi	a0,s0,+00000002
	addi	a5,zero,+00000074
	c.j	000000002302E702

l2302E750:
	addi	a1,s8,+00000668
	jal	ra,0000000023003AF6
	addi	a0,s0,+00000006
	c.j	000000002302E6D4

;; print_array.isra.4: 2302E75E
print_array.isra.4 proc
	c.addi16sp	FFFFFFB0
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s4,0000001C
	c.swsp	s7,00000094
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	c.lw	a0,0(s0)
	c.mv	s2,a0
	c.mv	s6,a1
	c.mv	s5,a2
	c.mv	s1,a3
	c.li	s3,00000000

l2302E786:
	c.bnez	s0,000000002302E7C6

l2302E788:
	bne	s3,zero,000000002302E7DA

l2302E78C:
	c.beqz	s1,000000002302E7CC

l2302E78E:
	c.li	a1,00000003
	c.mv	a0,s1
	jal	ra,000000002302E2B6

l2302E796:
	c.mv	s0,a0
	c.beqz	a0,000000002302E7A6

l2302E79A:
	lui	a1,00023077
	addi	a1,a1,+00000610
	jal	ra,000000002306D580

l2302E7A6:
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

l2302E7C6:
	c.addi	s3,00000001
	c.lw	s0,0(s0)
	c.j	000000002302E786

l2302E7CC:
	lui	a5,0004200E
	lw	a5,a5,-000003A0
	c.li	a0,00000003
	c.jalr	a5
	c.j	000000002302E796

l2302E7DA:
	c.beqz	s1,000000002302E876

l2302E7DC:
	c.li	a1,00000001
	c.mv	a0,s1
	lw	s4,s1,+00000008
	jal	ra,000000002302E2B6
	c.beqz	a0,000000002302E7A6

l2302E7EA:
	addi	a5,zero,+0000005B
	sb	a5,a0,+00000000
	c.lw	s1,8(a5)
	sltu	s3,zero,s5
	c.addi	s3,00000001
	c.addi	a5,00000001
	c.sw	s1,8(a5)
	lw	s2,s2,+00000000
	addi	s7,s3,+00000001
	c.addi	s6,00000001
	addi	s8,zero,+0000002C
	addi	s9,zero,+00000020

l2302E810:
	bne	s2,zero,000000002302E830

l2302E814:
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,000000002302E2B6
	c.beqz	a0,000000002302E7A6

l2302E81E:
	addi	a5,zero,+0000005D
	sb	a5,a0,+00000000
	sb	zero,a0,+00000001
	c.lw	s1,0(s0)
	c.add	s0,s4
	c.j	000000002302E7A6

l2302E830:
	c.mv	a3,s1
	c.mv	a2,s5
	c.mv	a1,s6
	c.mv	a0,s2
	c.jal	000000002302E990
	c.mv	a0,s1
	jal	ra,000000002302E388
	c.sw	s1,8(a0)
	lw	a5,s2,+00000000
	c.beqz	a5,000000002302E870

l2302E848:
	c.mv	a1,s7
	c.mv	a0,s1
	jal	ra,000000002302E2B6
	c.beqz	a0,000000002302E7A6

l2302E852:
	sb	s8,a0,+00000000
	addi	a5,a0,+00000001
	beq	s5,zero,000000002302E866

l2302E85E:
	addi	a5,a0,+00000002
	sb	s9,a0,+00000001

l2302E866:
	sb	zero,a5,+00000000
	c.lw	s1,8(a5)
	c.add	a5,s3
	c.sw	s1,8(a5)

l2302E870:
	lw	s2,s2,+00000000
	c.j	000000002302E810

l2302E876:
	lui	s1,0004200E
	lw	a5,s1,-000003A0
	slli	a2,s3,00000002
	c.mv	a0,a2
	c.swsp	a2,00000084
	c.jalr	a5
	c.mv	s4,a0
	addi	s1,s1,-000003A0
	c.beqz	a0,000000002302E7A6

l2302E890:
	c.lwsp	a2,00000084
	c.li	a1,00000000
	sltu	s10,zero,s5
	jal	ra,000000002306D1BC
	c.mv	s7,s4
	lw	s8,s2,+00000000
	c.mv	s9,s4
	c.li	s2,00000000
	c.li	s0,00000005
	c.addi	s6,00000001
	c.addi	s10,00000002

l2302E8AC:
	beq	s8,zero,000000002302E904

l2302E8B0:
	beq	s2,zero,000000002302E8E0

l2302E8B4:
	c.li	s0,00000000
	lui	s1,0004200E

l2302E8BA:
	slli	a5,s0,00000002
	c.add	a5,s4
	c.lw	a5,0(a0)
	c.beqz	a0,000000002302E8CA

l2302E8C4:
	lw	a5,s1,-000003A4
	c.jalr	a5

l2302E8CA:
	c.addi	s0,00000001
	bne	s3,s0,000000002302E8BA

l2302E8D0:
	lui	a5,0004200E
	lw	a5,a5,-000003A4
	c.mv	a0,s4
	c.li	s0,00000000
	c.jalr	a5
	c.j	000000002302E7A6

l2302E8E0:
	c.li	a3,00000000
	c.mv	a2,s5
	c.mv	a1,s6
	c.mv	a0,s8
	c.jal	000000002302E990
	sw	a0,s9,+00000000
	c.beqz	a0,000000002302E900

l2302E8F0:
	jal	ra,000000002306D630
	c.add	s0,s10
	c.add	s0,a0

l2302E8F8:
	lw	s8,s8,+00000000
	c.addi	s9,00000004
	c.j	000000002302E8AC

l2302E900:
	c.li	s2,00000001
	c.j	000000002302E8F8

l2302E904:
	bne	s2,zero,000000002302E8B4

l2302E908:
	c.lw	s1,0(a5)
	c.mv	a0,s0
	c.jalr	a5
	c.mv	s0,a0
	c.beqz	a0,000000002302E8B4

l2302E912:
	addi	a5,zero,+0000005B
	sb	a5,a0,+00000000
	addi	s1,a0,+00000001
	sb	zero,a0,+00000001
	addi	s9,s3,-00000001
	addi	s10,zero,+0000002C
	addi	s11,zero,+00000020
	lui	s8,0004200E

l2302E932:
	lw	a0,s7,+00000000
	jal	ra,000000002306D630
	lw	a1,s7,+00000000
	c.mv	s6,a0
	c.mv	a2,a0
	c.mv	a0,s1
	jal	ra,000000002306CF80
	c.add	s1,s6
	beq	s9,s2,000000002302E95C

l2302E94E:
	sb	s10,s1,+00000000
	bne	s5,zero,000000002302E988

l2302E956:
	c.addi	s1,00000001

l2302E958:
	sb	zero,s1,+00000000

l2302E95C:
	addi	s6,s8,-000003A4
	lw	a0,s7,+00000000
	lw	a5,s6,+00000000
	c.addi	s2,00000001
	c.addi	s7,00000004
	c.jalr	a5
	bne	s3,s2,000000002302E932

l2302E972:
	lw	a5,s6,+00000000
	c.mv	a0,s4
	c.jalr	a5
	addi	a5,zero,+0000005D
	sb	a5,s1,+00000000
	sb	zero,s1,+00000001
	c.j	000000002302E7A6

l2302E988:
	sb	s11,s1,+00000001
	c.addi	s1,00000002
	c.j	000000002302E958

;; print_value: 2302E990
;;   Called from:
;;     2302E838 (in print_array.isra.4)
;;     2302E8E8 (in print_array.isra.4)
;;     2302EC22 (in print_object.isra.3)
;;     2302ED74 (in print_object.isra.3)
;;     2302EF68 (in cJSON_Print)
print_value proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.beqz	a0,000000002302E9CE

l2302E99A:
	lbu	a5,a0,+0000000C
	c.li	a4,00000006
	c.beqz	a3,000000002302EA20

l2302E9A2:
	bltu	a4,a5,000000002302EA80

l2302E9A6:
	lui	a4,00023077
	c.slli	a5,02
	addi	a4,a4,+000005D0
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
2302E9B6                   95 45 36 85 EF F0 DF 8F 2A 84       .E6.....*.
2302E9C0 19 C5 B7 75 07 23 93 85 85 60 EF E0 73 3B       ...u.#...`..s; 

l2302E9CE:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra
2302E9D8                         99 45 36 85 EF F0 BF 8D         .E6.....
2302E9E0 2A 84 75 D5 B7 05 07 23 93 85 05 B1 F9 BF 95 45 *.u....#.......E
2302E9F0 36 85 EF F0 5F 8C 2A 84 79 D9 B7 05 07 23 93 85 6..._.*.y....#..
2302EA00 85 B0 E1 B7 B6 85 22 85 22 44 B2 40 41 01 6F F0 ......"."D.@A.o.
2302EA10 1F 9A B6 85 08 48 22 44 B2 40 41 01 6F F0 3F B4 .....H"D.@A.o.?.

l2302EA20:
	bltu	a4,a5,000000002302EA80

l2302EA24:
	lui	a4,00023077
	c.slli	a5,02
	addi	a4,a4,+000005EC
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
2302EA34             37 75 07 23 13 05 85 60 22 44 B2 40     7u.#...`"D.@
2302EA40 41 01 6F F0 3F 91 37 05 07 23 13 05 05 B1 FD B7 A.o.?.7..#......
2302EA50 37 05 07 23 13 05 85 B0 D5 B7 81 45 6D B7 81 45 7..#.......Em..E
2302EA60 55 BF 81 46 13 05 84 00 22 44 B2 40 41 01 6F F0 U..F...."D.@A.o.
2302EA70 1F CF 81 46 13 05 84 00 22 44 B2 40 41 01 19 A0 ...F...."D.@A...

l2302EA80:
	c.li	s0,00000000
	c.j	000000002302E9CE

;; print_object.isra.3: 2302EA84
print_object.isra.3 proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	ra,000000AC
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	s9,00000098
	c.swsp	s10,00000018
	c.swsp	s11,00000094
	c.lw	a0,0(a5)
	c.mv	s6,a0
	c.mv	s1,a1
	c.mv	s0,a2
	c.mv	s2,a3
	c.li	s5,00000000

l2302EAAC:
	c.bnez	a5,000000002302EACC

l2302EAAE:
	bne	s5,zero,000000002302EB42

l2302EAB2:
	beq	s2,zero,000000002302EAD2

l2302EAB6:
	c.li	a1,00000003
	c.beqz	s0,000000002302EABE

l2302EABA:
	addi	a1,s1,+00000004

l2302EABE:
	c.mv	a0,s2
	jal	ra,000000002302E2B6

l2302EAC4:
	c.mv	s10,a0
	c.bnez	a0,000000002302EAE6

l2302EAC8:
	c.li	s10,00000000
	c.j	000000002302EB1A

l2302EACC:
	c.addi	s5,00000001
	c.lw	a5,0(a5)
	c.j	000000002302EAAC

l2302EAD2:
	lui	a5,0004200E
	lw	a5,a5,-000003A0
	c.li	a0,00000003
	c.beqz	s0,000000002302EAE2

l2302EADE:
	addi	a0,s1,+00000004

l2302EAE2:
	c.jalr	a5
	c.j	000000002302EAC4

l2302EAE6:
	addi	a5,zero,+0000007B
	sb	a5,a0,+00000000
	addi	a5,a0,+00000001
	c.beqz	s0,000000002302EB0E

l2302EAF4:
	c.li	a3,0000000A
	sb	a3,a0,+00000001
	c.li	a3,FFFFFFFE
	addi	a5,a0,+00000002
	c.addi	s1,FFFFFFFF
	c.sub	a3,a0
	c.li	a1,00000009

l2302EB06:
	add	a2,a5,a3
	blt	a2,s1,000000002302EB3A

l2302EB0E:
	addi	a3,zero,+0000007D
	sb	a3,a5,+00000000
	sb	zero,a5,+00000001

l2302EB1A:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.mv	a0,s10
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

l2302EB3A:
	c.addi	a5,00000001
	sb	a1,a5,+00000FFF
	c.j	000000002302EB06

l2302EB42:
	beq	s2,zero,000000002302ECA0

l2302EB46:
	sltu	s3,zero,s0
	c.addi	s3,00000001
	addi	a1,s3,+00000001
	c.mv	a0,s2
	lw	s4,s2,+00000008
	jal	ra,000000002302E2B6
	c.beqz	a0,000000002302EAC8

l2302EB5C:
	addi	a5,zero,+0000007B
	sb	a5,a0,+00000000
	addi	a5,a0,+00000001
	c.beqz	s0,000000002302EB74

l2302EB6A:
	c.li	a4,0000000A
	addi	a5,a0,+00000002
	sb	a4,a0,+00000001

l2302EB74:
	sb	zero,a5,+00000000
	lw	a5,s2,+00000008
	addi	s5,s1,+00000001
	addi	s7,zero,+0000003A
	c.add	a5,s3
	sw	a5,s2,+00000008
	lw	s11,s6,+00000000
	sltu	s8,zero,s0
	c.li	s6,00000009
	addi	s9,zero,+0000002C
	c.li	s10,0000000A

l2302EB9A:
	bne	s11,zero,000000002302EBC8

l2302EB9E:
	c.li	a1,00000002
	c.beqz	s0,000000002302EBA6

l2302EBA2:
	addi	a1,s1,+00000002

l2302EBA6:
	c.mv	a0,s2
	jal	ra,000000002302E2B6
	c.beqz	a0,000000002302EAC8

l2302EBAE:
	bne	s0,zero,000000002302EC9A

l2302EBB2:
	addi	a5,zero,+0000007D
	sb	a5,a0,+00000000
	sb	zero,a0,+00000001
	lw	a4,s2,+00000000
	add	s10,a4,s4
	c.j	000000002302EB1A

l2302EBC8:
	c.beqz	s0,000000002302EBE6

l2302EBCA:
	c.mv	a1,s5
	c.mv	a0,s2
	jal	ra,000000002302E2B6
	beq	a0,zero,000000002302EAC8

l2302EBD6:
	c.li	a5,00000000

l2302EBD8:
	blt	a5,s5,000000002302EC74

l2302EBDC:
	lw	a5,s2,+00000008
	c.add	a5,s5
	sw	a5,s2,+00000008

l2302EBE6:
	lw	a0,s11,+00000020
	c.mv	a1,s2
	jal	ra,000000002302E55E
	c.mv	a0,s2
	jal	ra,000000002302E388
	sw	a0,s2,+00000008
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,000000002302E2B6
	beq	a0,zero,000000002302EAC8

l2302EC06:
	sb	s7,a0,+00000000
	c.beqz	s0,000000002302EC10

l2302EC0C:
	sb	s6,a0,+00000001

l2302EC10:
	lw	a5,s2,+00000008
	c.mv	a1,s5
	c.mv	a3,s2
	c.add	a5,s3
	sw	a5,s2,+00000008
	c.mv	a2,s0
	c.mv	a0,s11
	jal	ra,000000002302E990
	c.mv	a0,s2
	jal	ra,000000002302E388
	sw	a0,s2,+00000008
	lw	a5,s11,+00000000
	c.mv	a0,s2
	sltu	a5,zero,a5
	c.add	a5,s8
	addi	a1,a5,+00000001
	c.swsp	a5,00000004
	jal	ra,000000002302E2B6
	beq	a0,zero,000000002302EAC8

l2302EC4A:
	lw	a4,s11,+00000000
	c.lwsp	s0,000000E4
	c.beqz	a4,000000002302EC58

l2302EC52:
	sb	s9,a0,+00000000
	c.addi	a0,00000001

l2302EC58:
	c.beqz	s0,000000002302EC60

l2302EC5A:
	sb	s10,a0,+00000000
	c.addi	a0,00000001

l2302EC60:
	sb	zero,a0,+00000000
	lw	a4,s2,+00000008
	c.add	a5,a4
	sw	a5,s2,+00000008
	lw	s11,s11,+00000000
	c.j	000000002302EB9A

l2302EC74:
	add	a4,a0,a5
	sb	s6,a4,+00000000
	c.addi	a5,00000001
	c.j	000000002302EBD8

l2302EC80:
	add	a3,a0,a5
	sb	a4,a3,+00000000
	c.addi	a5,00000001

l2302EC8A:
	blt	a5,s1,000000002302EC80

l2302EC8E:
	c.mv	s4,s1
	bge	s1,zero,000000002302EC96

l2302EC94:
	c.li	s4,00000000

l2302EC96:
	c.add	a0,s4
	c.j	000000002302EBB2

l2302EC9A:
	c.li	a5,00000000
	c.li	a4,00000009
	c.j	000000002302EC8A

l2302ECA0:
	lui	s4,0004200E
	addi	s3,s4,-000003A0
	lw	a5,s3,+00000000
	slli	s8,s5,00000002
	c.mv	a0,s8
	c.jalr	a5
	addi	a5,s4,-000003A0
	c.swsp	a5,00000008
	c.mv	s2,a0
	beq	a0,zero,000000002302EAC8

l2302ECC0:
	lw	a5,s3,+00000000
	c.mv	a0,s8
	c.jalr	a5
	c.mv	s4,a0
	c.bnez	a0,000000002302ECDA

l2302ECCC:
	lui	a5,0004200E
	lw	a5,a5,-000003A4

l2302ECD4:
	c.mv	a0,s2
	c.jalr	a5
	c.j	000000002302EAC8

l2302ECDA:
	c.mv	a2,s8
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,000000002306D1BC
	c.mv	a2,s8
	c.li	a1,00000000
	c.mv	a0,s4
	jal	ra,000000002306D1BC
	addi	a5,s1,+00000001
	c.swsp	a5,00000084
	lw	s10,s6,+00000000
	c.beqz	s0,000000002302ED54

l2302ECFA:
	addi	s11,s1,+00000008
	addi	s9,s1,+00000003

l2302ED02:
	addi	a5,s9,+00000002
	c.mv	s7,s4
	c.mv	s6,s2
	c.mv	a6,s2
	c.swsp	s4,00000004
	c.li	s3,00000000
	c.swsp	a5,00000088

l2302ED12:
	bne	s10,zero,000000002302ED5A

l2302ED16:
	beq	s3,zero,000000002302EDB2

l2302ED1A:
	c.li	s0,00000000
	lui	s1,0004200E

l2302ED20:
	add	a5,s4,s0
	c.lw	a5,0(a0)
	c.beqz	a0,000000002302ED2E

l2302ED28:
	lw	a5,s1,-000003A4
	c.jalr	a5

l2302ED2E:
	add	a5,s2,s0
	c.lw	a5,0(a0)
	c.beqz	a0,000000002302ED3C

l2302ED36:
	lw	a5,s1,-000003A4
	c.jalr	a5

l2302ED3C:
	c.addi	s0,00000004
	bne	s8,s0,000000002302ED20

l2302ED42:
	lui	s0,0004200E
	addi	s0,s0,-000003A4
	c.lw	s0,0(a5)
	c.mv	a0,s4
	c.jalr	a5
	c.lw	s0,0(a5)
	c.j	000000002302ECD4

l2302ED54:
	c.li	s11,00000007
	c.li	s9,00000000
	c.j	000000002302ED02

l2302ED5A:
	lw	a0,s10,+00000020
	c.li	a1,00000000
	c.swsp	a6,0000000C
	jal	ra,000000002302E55E
	c.lwsp	s0,000000E4
	c.lwsp	a2,00000064
	c.mv	s9,a0
	c.sw	a5,0(a0)
	c.li	a3,00000000
	c.mv	a2,s0
	c.mv	a0,s10
	jal	ra,000000002302E990
	c.lwsp	s8,00000008
	sw	a0,a6,+00000000
	beq	s9,zero,000000002302EDAE

l2302ED82:
	c.beqz	a0,000000002302EDAE

l2302ED84:
	c.swsp	a6,0000008C
	jal	ra,000000002306D630
	c.swsp	a0,0000000C
	c.mv	a0,s9
	jal	ra,000000002306D630
	c.lwsp	s4,000000E4
	c.lwsp	s8,000000A4
	c.lwsp	t3,00000008
	c.add	a5,s11
	c.add	a5,a3
	add	s11,a5,a0

l2302EDA0:
	c.lwsp	s0,000000E4
	lw	s10,s10,+00000000
	c.addi	a6,00000004
	c.addi	a5,00000004
	c.swsp	a5,00000004
	c.j	000000002302ED12

l2302EDAE:
	c.li	s3,00000001
	c.j	000000002302EDA0

l2302EDB2:
	c.lwsp	a6,000000E4
	c.mv	a0,s11
	c.lw	a5,0(a4)
	c.jalr	a4
	c.mv	s10,a0
	c.beqz	a0,000000002302ED1A

l2302EDBE:
	addi	a5,zero,+0000007B
	sb	a5,a0,+00000000
	addi	s9,a0,+00000001
	c.beqz	s0,000000002302EDD6

l2302EDCC:
	c.li	a3,0000000A
	addi	s9,a0,+00000002
	sb	a3,a0,+00000001

l2302EDD6:
	addi	a5,s5,-00000001
	sb	zero,s9,+00000000
	c.li	s8,00000000
	c.swsp	a5,00000004

l2302EDE2:
	c.beqz	s0,000000002302EDFC

l2302EDE4:
	c.li	a3,00000000
	c.j	000000002302EDF0

l2302EDE8:
	c.li	a5,00000009
	sb	a5,a2,+00000000
	c.addi	a3,00000001

l2302EDF0:
	c.lwsp	a2,000000E4
	add	a2,s9,a3
	blt	a3,a5,000000002302EDE8

l2302EDFA:
	c.mv	s9,a2

l2302EDFC:
	lw	a0,s7,+00000000
	jal	ra,000000002306D630
	lw	a1,s7,+00000000
	c.mv	s11,a0
	c.mv	a2,a0
	c.mv	a0,s9
	jal	ra,000000002306CF80
	add	a0,s9,s11
	addi	a5,zero,+0000003A
	sb	a5,a0,+00000000
	addi	s9,a0,+00000001
	c.beqz	s0,000000002302EE2E

l2302EE24:
	c.li	a5,00000009
	addi	s9,a0,+00000002
	sb	a5,a0,+00000001

l2302EE2E:
	lw	a1,s6,+00000000
	c.mv	a0,s9
	jal	ra,000000002306D580
	lw	a0,s6,+00000000
	jal	ra,000000002306D630
	c.lwsp	s0,000000E4
	c.add	s9,a0
	beq	a5,s8,000000002302EE52

l2302EE48:
	addi	a5,zero,+0000002C
	sb	a5,s9,+00000000
	c.addi	s9,00000001

l2302EE52:
	c.beqz	s0,000000002302EE5C

l2302EE54:
	c.li	a5,0000000A
	sb	a5,s9,+00000000
	c.addi	s9,00000001

l2302EE5C:
	lui	a5,0004200E
	addi	s11,a5,-000003A4
	sb	zero,s9,+00000000
	lw	a0,s7,+00000000
	lw	a2,s11,+00000000
	c.addi	s8,00000001
	c.addi	s7,00000004
	c.jalr	a2
	lw	a0,s6,+00000000
	lw	a2,s11,+00000000
	c.addi	s6,00000004
	c.jalr	a2
	bne	s5,s8,000000002302EDE2

l2302EE86:
	lw	a2,s11,+00000000
	c.mv	a0,s4
	c.jalr	a2
	lw	a3,s11,+00000000
	c.mv	a0,s2
	c.jalr	a3
	c.li	a3,00000009
	c.bnez	s0,000000002302EEB2

l2302EE9A:
	addi	a3,zero,+0000007D
	sb	a3,s9,+00000000
	sb	zero,s9,+00000001
	c.j	000000002302EB1A

l2302EEA8:
	add	a2,s9,s3
	sb	a3,a2,+00000000
	c.addi	s3,00000001

l2302EEB2:
	blt	s3,s1,000000002302EEA8

l2302EEB6:
	bge	s1,zero,000000002302EEBC

l2302EEBA:
	c.li	s1,00000000

l2302EEBC:
	c.add	s9,s1
	c.j	000000002302EE9A

;; cJSON_InitHooks: 2302EEC0
;;   Called from:
;;     2302CFCE (in __bl_ble_sync_task)
cJSON_InitHooks proc
	lui	a3,0004200E
	lui	a4,0004200E
	addi	a3,a3,-000003A0
	addi	a4,a4,-000003A4
	c.bnez	a0,000000002302EEE6

l2302EED2:
	lui	a5,00023003
	addi	a5,a5,-0000077C
	c.sw	a3,0(a5)

l2302EEDC:
	lui	a5,00023003
	addi	a5,a5,-00000784
	c.j	000000002302EEF8

l2302EEE6:
	c.lw	a0,0(a5)
	c.bnez	a5,000000002302EEF2

l2302EEEA:
	lui	a5,00023003
	addi	a5,a5,-0000077C

l2302EEF2:
	c.sw	a3,0(a5)
	c.lw	a0,4(a5)
	c.beqz	a5,000000002302EEDC

l2302EEF8:
	c.sw	a4,0(a5)
	c.jr	ra

;; cJSON_Delete: 2302EEFC
;;   Called from:
;;     2302EF50 (in cJSON_Delete)
cJSON_Delete proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.mv	s0,a0
	lui	s2,0004200E

l2302EF0E:
	c.bnez	s0,000000002302EF1E

l2302EF10:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2302EF1E:
	c.lw	s0,12(a5)
	lw	s3,s0,+00000000
	addi	s1,s2,-000003A4
	andi	a5,a5,+00000100
	c.bnez	a5,000000002302EF36

l2302EF2E:
	c.lw	s0,8(a0)
	c.bnez	a0,000000002302EF50

l2302EF32:
	c.lw	s0,16(a0)
	c.bnez	a0,000000002302EF5C

l2302EF36:
	c.lw	s0,12(a5)
	andi	a5,a5,+00000200
	c.bnez	a5,000000002302EF46

l2302EF3E:
	c.lw	s0,32(a0)
	c.beqz	a0,000000002302EF46

l2302EF42:
	c.lw	s1,0(a5)
	c.jalr	a5

l2302EF46:
	c.lw	s1,0(a5)
	c.mv	a0,s0
	c.mv	s0,s3
	c.jalr	a5
	c.j	000000002302EF0E

l2302EF50:
	c.jal	000000002302EEFC
	c.lw	s0,12(a5)
	andi	a5,a5,+00000100
	c.beqz	a5,000000002302EF32

l2302EF5A:
	c.j	000000002302EF36

l2302EF5C:
	c.lw	s1,0(a5)
	c.jalr	a5
	c.j	000000002302EF36

;; cJSON_Print: 2302EF62
cJSON_Print proc
	c.li	a3,00000000
	c.li	a2,00000001
	c.li	a1,00000000
	jal	zero,000000002302E990

;; cJSON_AddItemToArray: 2302EF6C
;;   Called from:
;;     2302EFB8 (in cJSON_AddItemToObject)
cJSON_AddItemToArray proc
	c.beqz	a1,000000002302EF80

l2302EF6E:
	c.lw	a0,8(a5)
	c.bnez	a5,000000002302EF78

l2302EF72:
	c.sw	a0,8(a1)
	c.jr	ra

l2302EF76:
	c.mv	a5,a4

l2302EF78:
	c.lw	a5,0(a4)
	c.bnez	a4,000000002302EF76

l2302EF7C:
	c.sw	a5,0(a1)
	c.sw	a1,4(a5)

l2302EF80:
	c.jr	ra

;; cJSON_AddItemToObject: 2302EF82
cJSON_AddItemToObject proc
	c.beqz	a2,000000002302EFBC

l2302EF84:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.lw	a2,32(a0)
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a2
	c.mv	s2,a1
	c.beqz	a0,000000002302EFA2

l2302EF98:
	lui	a5,0004200E
	lw	a5,a5,-000003A4
	c.jalr	a5

l2302EFA2:
	c.mv	a0,s2
	jal	ra,000000002302E354
	c.sw	s0,32(a0)
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002302EF6C

l2302EFBC:
	c.jr	ra

;; cJSON_CreateNumber: 2302EFBE
cJSON_CreateNumber proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000080
	c.swsp	s3,00000000
	c.swsp	ra,00000084
	c.mv	s2,a0
	c.mv	s3,a1
	jal	ra,000000002302E28A
	c.mv	s0,a0
	c.beqz	a0,000000002302EFEA

l2302EFD4:
	c.li	a5,00000003
	c.sw	a0,12(a5)
	sw	s2,a0,+00000018
	sw	s3,a0,+0000001C
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,000000002306C718
	c.sw	s0,20(a0)

l2302EFEA:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000048
	c.lwsp	zero,00000068
	c.addi	sp,00000010
	c.jr	ra

;; cJSON_CreateString: 2302EFF8
cJSON_CreateString proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	jal	ra,000000002302E28A
	c.mv	s0,a0
	c.beqz	a0,000000002302F016

l2302F00A:
	c.li	a5,00000004
	c.sw	a0,12(a5)
	c.mv	a0,s1
	jal	ra,000000002302E354
	c.sw	s0,16(a0)

l2302F016:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; cJSON_CreateObject: 2302F022
cJSON_CreateObject proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002302E28A
	c.beqz	a0,000000002302F030

l2302F02C:
	c.li	a5,00000006
	c.sw	a0,12(a5)

l2302F030:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; cli_command_get: 2302F036
;;   Called from:
;;     2302F462 (in proc_onecmd)
;;     2302FC8C (in help_cmd)
;;     23030190 (in cli_main_input)
cli_command_get proc
	c.li	a5,FFFFFFFF
	blt	a0,zero,000000002302F064

l2302F03C:
	lui	a5,0004200E
	lw	a4,a5,+000001D0
	c.li	a5,FFFFFFFF
	c.lw	a4,44(a3)
	addi	a2,a3,+00000008
	bgeu	a0,a2,000000002302F064

l2302F050:
	bgeu	a0,a3,000000002302F068

l2302F054:
	c.beqz	a1,000000002302F05A

l2302F056:
	c.li	a5,00000001
	c.sw	a1,0(a5)

l2302F05A:
	c.li	a5,0000000C
	add	a0,a0,a5
	c.lw	a4,8(a5)
	c.add	a5,a0

l2302F064:
	c.mv	a0,a5
	c.jr	ra

l2302F068:
	c.beqz	a1,000000002302F06E

l2302F06A:
	sw	zero,a1,+00000000

l2302F06E:
	c.lw	a4,44(a5)
	c.sub	a0,a5
	c.slli	a0,02
	c.add	a0,a4
	c.lw	a0,12(a5)
	c.j	000000002302F064

;; exit_cmd: 2302F07A
exit_cmd proc
	lui	a5,0004200E
	c.li	a4,00000001
	sw	a4,a5,+000001D4
	c.jr	ra

;; cb_idnoe: 2302F086
cb_idnoe proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.lw	a0,0(a5)
	c.bnez	a5,000000002302F0AE

l2302F08E:
	c.li	a5,00000001
	c.sw	a0,0(a5)
	lui	a0,00023077
	addi	a0,a0,+000006C4
	c.swsp	a1,00000084
	jal	ra,0000000023003AC6
	lui	a0,00023077
	addi	a0,a0,+000006E4
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000064

l2302F0AE:
	lbu	a5,a1,+00000010
	c.li	a2,00000001
	c.li	a4,0000001C
	addi	a3,a5,-00000001
	andi	a3,a3,+000000FF
	bgeu	a2,a3,000000002302F0CE

l2302F0C2:
	c.li	a3,00000003
	addi	a4,zero,+00000050
	beq	a5,a3,000000002302F0CE

l2302F0CC:
	c.li	a4,00000000

l2302F0CE:
	c.li	a3,00000001
	c.lw	a1,8(a2)
	beq	a5,a3,000000002302F100

l2302F0D6:
	c.li	a3,00000002
	beq	a5,a3,000000002302F10A

l2302F0DC:
	c.li	a3,00000003
	beq	a5,a3,000000002302F114

l2302F0E2:
	lui	a3,00023070
	addi	a3,a3,-00000358

l2302F0EA:
	lui	a0,00023077
	c.mv	a1,a4
	addi	a0,a0,+0000073C
	jal	ra,0000000023003AC6
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2302F100:
	lui	a3,00023077
	addi	a3,a3,+000006A8
	c.j	000000002302F0EA

l2302F10A:
	lui	a3,00023077
	addi	a3,a3,+000006B4
	c.j	000000002302F0EA

l2302F114:
	lui	a3,00023077
	addi	a3,a3,+0000069C
	c.j	000000002302F0EA

;; ota_cmd: 2302F11E
ota_cmd proc
	lui	a1,0002302F
	lui	a0,00023078
	c.lui	a3,00001000
	c.li	a2,00000000
	addi	a1,a1,+00000136
	addi	a0,a0,-00000568
	jal	zero,0000000023002604

;; tftp_ota_thread: 2302F136
tftp_ota_thread proc
	c.li	a0,00000000
	jal	zero,00000000230026BE

;; cat_cmd: 2302F13C
cat_cmd proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.li	a5,00000002
	c.mv	s1,a3
	beq	a2,a5,000000002302F158

l2302F14C:
	lui	a0,00023077
	addi	a0,a0,+00000670
	jal	ra,0000000023003AC6

l2302F158:
	c.lw	s1,4(a0)
	c.li	a1,00000000
	jal	ra,0000000023001B36
	c.mv	s0,a0
	blt	a0,zero,000000002302F18A

l2302F166:
	lui	s1,00023077

l2302F16A:
	c.li	a2,00000001
	addi	a1,sp,+0000000F
	c.mv	a0,s0
	jal	ra,0000000023001C52
	c.li	a5,00000001
	bne	a0,a5,000000002302F1A2

l2302F17C:
	lbu	a1,sp,+0000000F
	addi	a0,s1,+000000A8
	jal	ra,0000000023003AC6
	c.j	000000002302F16A

l2302F18A:
	c.lw	s1,4(a1)
	lui	a0,00023077
	addi	a0,a0,+00000688
	jal	ra,0000000023003AC6

l2302F198:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2302F1A2:
	lui	a0,00023076
	addi	a0,a0,+0000076C
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	jal	ra,0000000023001BFA
	c.j	000000002302F198

;; hexdump_cmd: 2302F1B6
hexdump_cmd proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.li	a5,00000002
	c.mv	s1,a3
	beq	a2,a5,000000002302F1D2

l2302F1C6:
	lui	a0,00023077
	addi	a0,a0,+00000670
	jal	ra,0000000023003AC6

l2302F1D2:
	c.lw	s1,4(a0)
	c.li	a1,00000000
	jal	ra,0000000023001B36
	c.mv	s0,a0
	bge	a0,zero,000000002302F1F8

l2302F1E0:
	c.lw	s1,4(a1)
	lui	a0,00023077
	addi	a0,a0,+00000688
	jal	ra,0000000023003AC6

l2302F1EE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2302F1F8:
	c.li	a2,00000008
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	jal	ra,000000002306D1BC
	c.addi4spn	a2,00000008
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023001CAE
	c.lwsp	a2,000000A4
	c.lwsp	s0,00000084
	c.lw	s1,4(a1)
	lui	a0,00023078
	addi	a0,a0,-000006E4
	jal	ra,0000000023003AC6
	c.lwsp	s0,00000044
	c.lwsp	a2,00000064
	jal	ra,00000000230447BE
	c.mv	a0,s0
	jal	ra,0000000023001BFA
	c.j	000000002302F1EE

;; aos_cli_init: 2302F22E
;;   Called from:
;;     230013A0 (in aos_loop_proc)
aos_cli_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	a0,zero,+00000244
	lui	s0,0004200E
	c.swsp	ra,00000084
	addi	s0,s0,+000001D0
	jal	ra,0000000023002878
	c.sw	s0,0(a0)
	c.li	a5,0000000C
	c.beqz	a0,000000002302F286

l2302F24A:
	addi	a2,zero,+00000244
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	c.lw	s0,0(a4)
	lui	a5,00023083
	addi	a3,a5,-0000074C
	lui	a5,00023083
	addi	a5,a5,-00000308
	c.sub	a5,a3
	c.sw	a4,8(a3)
	lui	a3,000AAAAB
	c.srai	a5,00000002
	addi	a3,a3,-00000555
	add	a5,a5,a3
	sw	zero,a4,+00000004
	c.sw	a4,44(a5)
	c.sw	a4,48(a5)
	c.li	a5,00000001
	c.sw	a4,0(a5)
	c.li	a5,00000000

l2302F286:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; aos_cli_event_cb_read_get: 2302F290
;;   Called from:
;;     230013A4 (in aos_loop_proc)
aos_cli_event_cb_read_get proc
	lui	a0,00023030
	addi	a0,a0,+000004AC
	c.jr	ra

;; cli_putstr: 2302F29A
;;   Called from:
;;     2302F342 (in ps_cmd)
;;     2302F3E2 (in aos_cli_printf)
cli_putstr proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s2,a0
	jal	ra,000000002306D630
	c.mv	s1,a0
	c.li	s0,00000000
	lui	s3,0004200E

l2302F2B4:
	blt	s0,s1,000000002302F2C8

l2302F2B8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2302F2C8:
	lw	a0,s3,+000001DC
	sub	a2,s1,s0
	add	a1,s2,s0
	jal	ra,0000000023001C80
	blt	a0,zero,000000002302F2B8

l2302F2DC:
	c.add	s0,a0
	c.j	000000002302F2B4

;; ps_cmd: 2302F2E0
ps_cmd proc
	c.addi	sp,FFFFFFF0
	addi	a0,zero,+00000600
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	jal	ra,000000002303598A
	c.beqz	a0,000000002302F362

l2302F2F4:
	lui	s2,00023078
	addi	a1,s2,-00000474
	c.mv	s1,a0
	jal	ra,000000002306D580
	c.mv	a0,s1
	jal	ra,000000002306D630
	add	s0,s1,a0
	addi	a0,s2,-00000474
	jal	ra,000000002306D630
	c.sub	a0,s0
	c.li	a5,0000000C
	addi	a3,zero,+00000020

l2302F31C:
	add	a4,s0,a0
	bge	a5,a4,000000002302F356

l2302F324:
	lui	s2,00023078
	addi	a1,s2,-0000046C
	c.mv	a0,s0
	jal	ra,000000002306D580
	addi	a0,s2,-0000046C
	jal	ra,000000002306D630
	c.add	a0,s0
	jal	ra,00000000230347D4
	c.mv	a0,s1
	jal	ra,000000002302F29A
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023035A72

l2302F356:
	sb	a3,s0,+00000000
	c.addi	s0,00000001
	sb	zero,s0,+00000000
	c.j	000000002302F31C

l2302F362:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; aos_cli_printf: 2302F36E
;;   Called from:
;;     2302F4B4 (in proc_onecmd)
;;     2302F504 (in proc_onecmd)
;;     2302F72A (in ls_cmd)
;;     2302F760 (in uptime_cmd)
;;     2302F7E6 (in uptime_cmd)
;;     2302F804 (in reset_cmd)
;;     2302F81C (in poweroff_cmd)
;;     2302F834 (in reboot_cmd)
;;     2302F856 (in version_cmd)
;;     2302F862 (in version_cmd)
;;     2302F86E (in version_cmd)
;;     2302F88E (in version_cmd)
;;     2302F8AA (in version_cmd)
;;     2302F8DA (in version_cmd)
;;     2302F8F2 (in devname_cmd)
;;     2302F928 (in echo_cmd)
;;     2302F950 (in echo_cmd)
;;     2302F982 (in echo_cmd)
;;     2302F9F2 (in mmem_cmd)
;;     2302FA38 (in mmem_cmd)
;;     2302FAAA (in pmem_cmd)
;;     2302FB20 (in pmem_cmd)
;;     2302FB2C (in pmem_cmd)
;;     2302FB38 (in pmem_cmd)
;;     2302FB52 (in pmem_cmd)
;;     2302FB5E (in pmem_cmd)
;;     2302FB6A (in pmem_cmd)
;;     2302FB96 (in pmem_cmd)
;;     2302FBA4 (in pmem_cmd)
;;     2302FBB0 (in pmem_cmd)
;;     2302FBE8 (in help_cmd)
;;     2302FC06 (in help_cmd)
;;     2302FC2C (in help_cmd)
;;     2302FC3E (in help_cmd)
;;     2302FC4E (in help_cmd)
;;     2302FCA6 (in help_cmd)
;;     2302FE04 (in cli_main_input)
;;     23030106 (in cli_main_input)
;;     23030186 (in cli_main_input)
;;     230301BE (in cli_main_input)
;;     230301D2 (in cli_main_input)
;;     230301E4 (in cli_main_input)
;;     23030218 (in cli_main_input)
;;     23030224 (in cli_main_input)
;;     230303BC (in cli_main_input)
;;     230303C8 (in cli_main_input)
;;     230304A6 (in cli_main_input)
aos_cli_printf proc
	c.addi16sp	FFFFFEC0
	sw	s1,sp,+00000114
	sw	a1,sp,+00000124
	sw	a2,sp,+00000128
	c.mv	s1,a0
	addi	a2,zero,+00000100
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	sw	a5,sp,+00000134
	sw	ra,sp,+0000011C
	sw	s0,sp,+00000118
	sw	a3,sp,+0000012C
	sw	a4,sp,+00000130
	sw	a6,sp,+00000138
	sw	a7,sp,+0000013C
	jal	ra,000000002306D1BC
	lui	a5,0004200E
	lbu	a5,a5,+000001D9
	c.li	a0,00000000
	c.beqz	a5,000000002302F3C8

l2302F3B2:
	lui	s0,00042013
	addi	a1,s0,-00000548
	c.addi4spn	a0,00000010
	jal	ra,000000002306D580
	addi	a0,s0,-00000548
	jal	ra,000000002306D630

l2302F3C8:
	addi	a1,zero,+00000100
	c.addi4spn	a5,00000010
	c.addi4spn	a3,00000124
	c.sub	a1,a0
	c.mv	a2,s1
	c.add	a0,a5
	c.swsp	a3,00000084
	jal	ra,0000000023003550
	bge	zero,a0,000000002302F3E6

l2302F3E0:
	c.addi4spn	a0,00000010
	jal	ra,000000002302F29A

l2302F3E6:
	lw	ra,sp,+0000011C
	lw	s0,sp,+00000118
	lw	s1,sp,+00000114
	c.li	a0,00000000
	c.addi16sp	00000140
	c.jr	ra

;; proc_onecmd: 2302F3F8
;;   Called from:
;;     23030392 (in cli_main_input)
proc_onecmd proc
	bge	zero,a0,000000002302F4E0

l2302F3FC:
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,0004200E
	lw	a5,s0,+000001D0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.lw	a5,4(a5)
	c.mv	s1,a1
	c.mv	s2,a0
	addi	s0,s0,+000001D0
	c.bnez	a5,000000002302F430

l2302F424:
	lui	a0,00023076
	addi	a0,a0,+0000076C
	jal	ra,0000000023003AC6

l2302F430:
	c.lw	s1,0(a0)
	addi	a1,zero,+0000002E
	c.li	s5,00000000
	jal	ra,000000002306D298
	lw	s6,s1,+00000000
	c.beqz	a0,000000002302F446

l2302F442:
	sub	s5,a0,s6

l2302F446:
	c.li	s3,00000000
	c.li	s4,00000000

l2302F44A:
	c.lw	s0,0(a4)
	c.lw	a4,44(a5)
	c.addi	a5,00000008
	bgeu	s3,a5,000000002302F45A

l2302F454:
	c.lw	a4,48(a5)
	bltu	s4,a5,000000002302F45E

l2302F45A:
	c.li	a0,00000001
	c.j	000000002302F4CA

l2302F45E:
	c.li	a1,00000000
	c.mv	a0,s3
	jal	ra,000000002302F036
	c.mv	s7,a0
	c.lw	a0,0(a0)
	c.beqz	a0,000000002302F47C

l2302F46C:
	beq	s5,zero,000000002302F480

l2302F470:
	c.mv	a2,s5
	c.mv	a1,s6
	jal	ra,000000002306D6BC

l2302F478:
	c.beqz	a0,000000002302F4E4

l2302F47A:
	c.addi	s4,00000001

l2302F47C:
	c.addi	s3,00000001
	c.j	000000002302F44A

l2302F480:
	c.mv	a1,s6
	jal	ra,000000002306D404
	c.j	000000002302F478

l2302F488:
	addi	a2,zero,+00000200
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	c.lw	s0,0(a4)
	lw	a5,s7,+00000008
	c.mv	a3,s1
	lw	a0,a4,+00000138
	c.mv	a2,s2
	addi	a1,zero,+00000200
	c.jalr	a5
	c.lw	s0,0(a5)
	lui	a0,00023077
	addi	a0,a0,+00000770
	lw	a1,a5,+00000138
	jal	ra,000000002302F36E
	c.lw	s0,0(a5)
	lw	a0,a5,+00000138
	jal	ra,0000000023002880
	c.lw	s0,0(a5)
	c.li	a0,00000000
	sw	zero,a5,+00000138

l2302F4CA:
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

l2302F4E0:
	c.li	a0,00000000
	c.jr	ra

l2302F4E4:
	addi	a0,zero,+00000200
	lw	s3,s0,+00000000
	jal	ra,0000000023002878
	c.lw	s0,0(a5)
	sw	a0,s3,+00000138
	lw	a0,a5,+00000138
	c.bnez	a0,000000002302F488

l2302F4FC:
	lui	a0,00023078
	addi	a0,a0,-00000494
	jal	ra,000000002302F36E
	c.j	000000002302F45A

;; ls_cmd: 2302F50A
ls_cmd proc
	c.addi16sp	FFFFFF40
	addi	a0,zero,+00000058
	c.swsp	ra,000000DC
	c.swsp	s0,0000005C
	c.swsp	s1,000000D8
	c.swsp	s2,00000058
	c.mv	s1,a2
	c.mv	s2,a3
	c.swsp	s3,000000D4
	c.swsp	s4,00000054
	c.swsp	s5,000000D0
	c.swsp	s6,00000050
	c.swsp	s7,000000CC
	c.swsp	s8,0000004C
	c.swsp	zero,00000084
	jal	ra,000000002303598A
	c.mv	s0,a0
	lui	a0,0002306E
	addi	a2,zero,+00000058
	c.li	a1,00000000
	addi	a0,a0,+000001FC
	jal	ra,000000002306D1BC
	addi	a2,zero,+00000080
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,000000002306D1BC
	c.li	a5,00000002
	bne	s1,a5,000000002302F730

l2302F554:
	lw	a0,s2,+00000004
	lui	s1,00023078
	addi	a1,s1,-000006BC
	jal	ra,000000002306D404
	c.bnez	a0,000000002302F60A

l2302F566:
	addi	a0,s1,-000006BC
	jal	ra,0000000023001DB0
	c.mv	s2,a0
	c.beqz	a0,000000002302F5FC

l2302F572:
	lui	a0,00023077
	addi	a0,a0,+000006C4
	jal	ra,0000000023003AC6
	lui	a0,00023077
	addi	a0,a0,+000006E4
	jal	ra,0000000023003AC6
	lui	s4,00023078
	lui	s3,00023078
	lui	s5,00023078

l2302F596:
	c.mv	a0,s2
	jal	ra,0000000023001ED0
	c.beqz	a0,000000002302F5D8

l2302F59E:
	addi	s1,a0,+00000005
	addi	a1,zero,+0000007F
	c.mv	a3,s1
	addi	a2,s4,-000006B4
	c.addi4spn	a0,00000010
	jal	ra,0000000023003B18
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	jal	ra,0000000023001CF6
	c.bnez	a0,000000002302F596

l2302F5BC:
	c.lw	s0,4(a5)
	c.lw	s0,16(a1)
	c.mv	a2,s1
	slli	a4,a5,00000011
	addi	a0,s5,-000006A8
	blt	a4,zero,000000002302F5D2

l2302F5CE:
	addi	a0,s3,-0000068C

l2302F5D2:
	jal	ra,0000000023003AC6
	c.j	000000002302F596

l2302F5D8:
	c.mv	a0,s2

l2302F5DA:
	jal	ra,0000000023001E60

l2302F5DE:
	c.mv	a0,s0
	jal	ra,0000000023035A72
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
	c.addi16sp	000000C0
	c.jr	ra

l2302F5FC:
	lui	a0,00023078
	addi	a0,a0,-00000674

l2302F604:
	jal	ra,0000000023003AC6
	c.j	000000002302F5DE

l2302F60A:
	lw	s3,s2,+00000004
	lui	s1,00023078
	addi	a0,s1,-0000065C
	jal	ra,000000002306D630
	c.mv	a2,a0
	addi	a1,s1,-0000065C
	c.mv	a0,s3
	jal	ra,000000002306CEF8
	lw	a5,s2,+00000004
	bne	a0,zero,000000002302F702

l2302F62E:
	c.mv	a0,a5
	jal	ra,0000000023001DB0
	c.mv	s3,a0
	c.beqz	a0,000000002302F6F8

l2302F638:
	lui	a0,00023077
	addi	a0,a0,+000006C4
	jal	ra,0000000023003AC6
	lui	a0,00023077
	addi	a0,a0,+000006E4
	jal	ra,0000000023003AC6
	lui	s4,00023077
	addi	s5,zero,+0000002F
	lui	s6,00023078
	lui	s7,00023078

l2302F660:
	c.mv	a0,s3
	jal	ra,0000000023001ED0
	c.mv	s1,a0
	c.beqz	a0,000000002302F6F4

l2302F66A:
	addi	a2,zero,+00000080
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,000000002306D1BC
	lw	a3,s2,+00000004
	addi	a2,s4,+00000770
	addi	a1,zero,+0000007F
	c.addi4spn	a0,00000010
	jal	ra,0000000023003B18
	c.addi4spn	a0,00000010
	jal	ra,000000002306D630
	c.addi4spn	a5,00000090
	c.add	a0,a5
	lbu	a5,a0,-00000081
	beq	a5,s5,000000002302F6A8

l2302F69A:
	c.addi4spn	a0,00000010
	jal	ra,000000002306D630
	c.addi4spn	a5,00000090
	c.add	a0,a5
	sb	s5,a0,+00000F80

l2302F6A8:
	c.addi4spn	a0,00000010
	jal	ra,000000002306D630
	c.mv	s8,a0
	c.addi4spn	a0,00000010
	jal	ra,000000002306D630
	c.addi4spn	a5,00000010
	c.addi	s1,00000005
	addi	a1,zero,+0000007F
	c.sub	a1,a0
	c.mv	a3,s1
	addi	a2,s4,+00000770
	add	a0,a5,s8
	jal	ra,0000000023003B18
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	jal	ra,0000000023001CF6
	c.bnez	a0,000000002302F660

l2302F6D8:
	c.lw	s0,4(a5)
	c.lw	s0,16(a1)
	c.mv	a2,s1
	slli	a4,a5,00000011
	addi	a0,s7,-000006A8
	blt	a4,zero,000000002302F6EE

l2302F6EA:
	addi	a0,s6,-0000068C

l2302F6EE:
	jal	ra,0000000023003AC6
	c.j	000000002302F660

l2302F6F4:
	c.mv	a0,s3
	c.j	000000002302F5DA

l2302F6F8:
	lui	a0,00023078
	addi	a0,a0,-00000654
	c.j	000000002302F604

l2302F702:
	lui	a1,00023078
	addi	a1,a1,-0000063C
	c.mv	a0,a5
	jal	ra,000000002306D404
	c.bnez	a0,000000002302F722

l2302F712:
	lui	a0,0002302F
	c.addi4spn	a1,0000000C
	addi	a0,a0,+00000086
	jal	ra,000000002300206C
	c.j	000000002302F5DE

l2302F722:
	lui	a0,00023078
	addi	a0,a0,-00000638

l2302F72A:
	jal	ra,000000002302F36E
	c.j	000000002302F5DE

l2302F730:
	c.li	a5,00000001
	beq	s1,a5,000000002302F712

l2302F736:
	lui	a0,00023077
	addi	a0,a0,+00000670
	c.j	000000002302F72A

;; uptime_cmd: 2302F740
uptime_cmd proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	jal	ra,0000000023002888
	c.mv	s0,a0
	c.mv	a2,a0
	lui	a0,00023078
	c.mv	a3,a1
	addi	a0,a0,-000002A4
	c.mv	s1,a1
	jal	ra,000000002302F36E
	c.lui	a2,0000F000
	addi	a2,a2,-000005A0
	c.li	a3,00000000
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,0000000023068C8C
	addi	a2,zero,+0000003C
	c.li	a3,00000000
	jal	ra,000000002306910C
	lui	a2,0000036F
	c.swsp	a0,0000000C
	c.swsp	a1,0000008C
	addi	a2,a2,-00000180
	c.li	a3,00000000
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,0000000023068C8C
	c.li	a2,00000018
	c.li	a3,00000000
	jal	ra,000000002306910C
	lui	a2,00005266
	c.swsp	a0,00000008
	c.swsp	a1,00000088
	addi	a2,a2,-00000400
	c.li	a3,00000000
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,0000000023068C8C
	c.mv	s2,a0
	c.mv	s3,a1
	addi	a2,zero,+000003E8
	c.li	a3,00000000
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,0000000023068C8C
	addi	a2,zero,+0000003C
	c.li	a3,00000000
	jal	ra,000000002306910C
	c.lwsp	s8,00000008
	c.lwsp	t3,00000028
	c.lwsp	a6,000000C4
	c.lwsp	s4,000000E4
	c.swsp	a0,00000000
	lui	a0,00023078
	c.swsp	a1,00000080
	c.mv	a2,s2
	c.mv	a3,s3
	addi	a0,a0,-0000028C
	jal	ra,000000002302F36E
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

;; reset_cmd: 2302F7F8
reset_cmd proc
	lui	a0,00023078
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000003F8
	c.swsp	ra,00000084
	jal	ra,000000002302F36E
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023038128

;; poweroff_cmd: 2302F810
poweroff_cmd proc
	lui	a0,00023078
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000004A0
	c.swsp	ra,00000084
	jal	ra,000000002302F36E
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002303812C

;; reboot_cmd: 2302F828
reboot_cmd proc
	lui	a0,00023078
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000404
	c.swsp	ra,00000084
	jal	ra,000000002302F36E
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023038124

;; version_cmd: 2302F840
version_cmd proc
	lui	a0,00023078
	c.addi16sp	FFFFFFB0
	c.li	a5,00000004
	addi	a0,a0,-0000024C
	c.swsp	ra,000000A4
	c.swsp	a5,00000080
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	jal	ra,000000002302F36E
	lui	a0,0002306F
	addi	a0,a0,-000004E4
	jal	ra,000000002302F36E
	lui	a0,00023076
	addi	a0,a0,+0000076C
	jal	ra,000000002302F36E
	c.addi4spn	a3,00000028
	c.addi4spn	a2,00000018
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	jal	ra,0000000023036120
	c.beqz	a0,000000002302F89E

l2302F880:
	jal	ra,0000000023035B04
	c.mv	a1,a0
	lui	a0,00023078
	addi	a0,a0,-00000234
	jal	ra,000000002302F36E
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.addi16sp	00000050
	c.jr	ra

l2302F89E:
	c.lwsp	tp,00000064
	c.mv	s0,a0
	lui	a0,00023078
	addi	a0,a0,-0000021C
	jal	ra,000000002302F36E
	c.li	s1,00000006
	lui	s2,00023078

l2302F8B4:
	c.lwsp	tp,000000E4
	bge	s0,a5,000000002302F880

l2302F8BA:
	add	a2,s0,s1
	slli	a5,s0,00000002
	c.addi4spn	a3,00000018
	c.addi4spn	a4,00000008
	c.add	a4,a5
	c.add	a5,a3
	c.lw	a5,0(a3)
	c.lw	a4,0(a4)
	c.addi4spn	a5,00000028
	c.mv	a1,s0
	c.srli	a3,0000000A
	c.add	a2,a5
	addi	a0,s2,-000001F8
	jal	ra,000000002302F36E
	c.addi	s0,00000001
	c.j	000000002302F8B4

;; devname_cmd: 2302F8E2
devname_cmd proc
	lui	a1,00023078
	lui	a0,00023078
	addi	a1,a1,-000007D0
	addi	a0,a0,-000007C8
	jal	zero,000000002302F36E

;; echo_cmd: 2302F8F6
echo_cmd proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.li	s1,00000001
	bne	a2,s1,000000002302F936

l2302F904:
	lui	a5,0004200E
	lw	a5,a5,+000001D0
	c.lw	a5,4(a5)
	c.bnez	a5,000000002302F92C

l2302F910:
	lui	a1,00023078
	addi	a1,a1,-000007A8

l2302F918:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,00023078
	addi	a0,a0,-000007A0
	c.addi	sp,00000010
	jal	zero,000000002302F36E

l2302F92C:
	lui	a1,00023078
	addi	a1,a1,-000007B4
	c.j	000000002302F918

l2302F936:
	c.lw	a3,4(a0)
	lui	a1,00023070
	addi	a1,a1,+00000678
	c.mv	s0,a3
	jal	ra,000000002306D404
	c.bnez	a0,000000002302F96A

l2302F948:
	lui	a0,00023078
	addi	a0,a0,-00000774
	jal	ra,000000002302F36E
	lui	a5,0004200E
	lw	a5,a5,+000001D0
	sw	zero,a5,+00000004

l2302F960:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2302F96A:
	c.lw	s0,4(a0)
	lui	a1,00023070
	addi	a1,a1,+000006A8
	jal	ra,000000002306D404
	c.bnez	a0,000000002302F960

l2302F97A:
	lui	a0,00023078
	addi	a0,a0,-00000764
	jal	ra,000000002302F36E
	lui	a5,0004200E
	lw	a5,a5,+000001D0
	c.sw	a5,4(s1)
	c.j	000000002302F960

;; mmem_cmd: 2302F992
mmem_cmd proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.li	a5,00000003
	c.mv	s2,a3
	beq	a2,a5,000000002302F9F6

l2302F9A4:
	c.li	a5,00000004
	beq	a2,a5,000000002302F9B6

l2302F9AA:
	c.li	a5,00000002
	bne	a2,a5,000000002302F9E0

l2302F9B0:
	c.li	s0,00000000
	c.li	s1,00000004
	c.j	000000002302F9D0

l2302F9B6:
	c.lw	a3,12(a0)
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002306E1E0
	c.mv	s1,a0

l2302F9C2:
	lw	a0,s2,+00000008
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002306E1E0
	c.mv	s0,a0

l2302F9D0:
	lw	a0,s2,+00000004
	c.li	a1,00000000
	c.li	a2,00000000
	jal	ra,000000002306E1E0
	c.mv	a1,a0
	c.bnez	a0,000000002302F9FA

l2302F9E0:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	lui	a0,00023078
	addi	a0,a0,-0000061C
	c.addi	sp,00000010
	jal	zero,000000002302F36E

l2302F9F6:
	c.li	s1,00000004
	c.j	000000002302F9C2

l2302F9FA:
	c.li	a5,00000001
	beq	s1,a5,000000002302FA0E

l2302FA00:
	c.li	a5,00000002
	beq	s1,a5,000000002302FA3C

l2302FA06:
	c.lw	a0,0(a2)
	c.sw	a0,0(s0)
	c.lw	a0,0(a3)
	c.j	000000002302FA26

l2302FA0E:
	andi	s0,s0,+000000FF
	lbu	a2,a0,+00000000
	sb	s0,a0,+00000000
	lbu	a3,a0,+00000000
	andi	a2,a2,+000000FF
	andi	a3,a3,+000000FF

l2302FA26:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	lui	a0,00023078
	addi	a0,a0,-00000594
	c.addi	sp,00000010
	jal	zero,000000002302F36E

l2302FA3C:
	c.slli	s0,10
	c.srli	s0,00000010
	lhu	a2,a0,+00000000
	sh	s0,a0,+00000000
	lhu	a3,a0,+00000000
	c.slli	a2,10
	c.srli	a2,00000010
	c.slli	a3,10
	c.srli	a3,00000010
	c.j	000000002302FA26

;; pmem_cmd: 2302FA56
pmem_cmd proc
	c.addi16sp	FFFFFFC0
	c.swsp	s3,00000094
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	zero,00000084
	c.li	a5,00000003
	c.mv	s3,a3
	beq	a2,a5,000000002302FAEE

l2302FA76:
	c.li	a5,00000004
	beq	a2,a5,000000002302FAC6

l2302FA7C:
	c.li	a5,00000002
	c.li	s2,00000004
	c.li	s1,00000010
	c.li	s0,00000000
	bne	a2,a5,000000002302FA96

l2302FA88:
	lw	a0,s3,+00000004
	c.li	a2,00000000
	c.addi4spn	a1,0000000C
	jal	ra,000000002306E1E0
	c.mv	s0,a0

l2302FA96:
	c.lwsp	a2,000000E4
	c.beqz	a5,000000002302FAA2

l2302FA9A:
	lw	a4,s3,+00000004
	bne	a5,a4,000000002302FAF2

l2302FAA2:
	lui	a0,00023078
	addi	a0,a0,-0000055C
	jal	ra,000000002302F36E

l2302FAAE:
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

l2302FAC6:
	c.lw	a3,12(a0)
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002306E1E0
	c.mv	s2,a0

l2302FAD2:
	lw	a0,s3,+00000008
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002306E1E0
	addi	a5,zero,+00000400
	c.mv	s1,a0
	bge	a5,a0,000000002302FA88

l2302FAE8:
	addi	s1,zero,+00000400
	c.j	000000002302FA88

l2302FAEE:
	c.li	s2,00000004
	c.j	000000002302FAD2

l2302FAF2:
	c.li	a5,00000001
	beq	s2,a5,000000002302FB76

l2302FAF8:
	c.li	a5,00000002
	beq	s2,a5,000000002302FBBC

l2302FAFE:
	c.li	s2,00000000
	lui	s4,00023078
	lui	s5,00023078
	c.li	s6,00000003
	lui	s7,00023076

l2302FB0E:
	bge	s2,s1,000000002302FAAE

l2302FB12:
	andi	s3,s2,+00000003
	bne	s3,zero,000000002302FB24

l2302FB1A:
	c.mv	a1,s0
	addi	a0,s4,-000004C0
	jal	ra,000000002302F36E

l2302FB24:
	c.lw	s0,0(a1)
	addi	a0,s5,-000004A8
	c.addi	s0,00000004
	jal	ra,000000002302F36E
	bne	s3,s6,000000002302FB3C

l2302FB34:
	addi	a0,s7,+0000076C
	jal	ra,000000002302F36E

l2302FB3C:
	c.addi	s2,00000001
	c.j	000000002302FB0E

l2302FB40:
	andi	s3,s2,+0000000F
	add	s4,s0,s2
	bne	s3,zero,000000002302FB56

l2302FB4C:
	c.mv	a1,s4
	addi	a0,s5,-000004C0
	jal	ra,000000002302F36E

l2302FB56:
	lbu	a1,s4,+00000000
	addi	a0,s6,-000004B8
	jal	ra,000000002302F36E
	bne	s3,s7,000000002302FB6E

l2302FB66:
	addi	a0,s8,+0000076C
	jal	ra,000000002302F36E

l2302FB6E:
	c.addi	s2,00000001

l2302FB70:
	blt	s2,s1,000000002302FB40

l2302FB74:
	c.j	000000002302FAAE

l2302FB76:
	c.li	s2,00000000
	lui	s5,00023078
	lui	s6,00023078
	c.li	s7,0000000F
	lui	s8,00023076
	c.j	000000002302FB70

l2302FB88:
	andi	s3,s2,+00000007
	bne	s3,zero,000000002302FB9A

l2302FB90:
	c.mv	a1,s0
	addi	a0,s4,-000004C0
	jal	ra,000000002302F36E

l2302FB9A:
	lhu	a1,s0,+00000000
	addi	a0,s5,-000004B0
	c.addi	s0,00000002
	jal	ra,000000002302F36E
	bne	s3,s6,000000002302FBB4

l2302FBAC:
	addi	a0,s7,+0000076C
	jal	ra,000000002302F36E

l2302FBB4:
	c.addi	s2,00000001

l2302FBB6:
	blt	s2,s1,000000002302FB88

l2302FBBA:
	c.j	000000002302FAAE

l2302FBBC:
	c.li	s2,00000000
	lui	s4,00023078
	lui	s5,00023078
	c.li	s6,00000007
	lui	s7,00023076
	c.j	000000002302FBB6

;; help_cmd: 2302FBCE
help_cmd proc
	lui	a0,00023078
	c.addi	sp,FFFFFFE0
	addi	a0,a0,-00000754
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	jal	ra,000000002302F36E
	lui	s1,00023083
	lui	a0,00023078
	addi	s0,s1,-000003C8
	c.li	a1,00000004
	addi	a0,a0,-00000738
	lui	s3,00023083
	lui	s2,0002307D
	jal	ra,000000002302F36E
	addi	s4,s0,+000000C0
	addi	s1,s1,-000003C8
	addi	s3,s3,-00000308
	lui	s5,00023078
	addi	s2,s2,-00000110

l2302FC1E:
	c.lw	s0,0(a1)
	c.beqz	a1,000000002302FC30

l2302FC22:
	c.lw	s0,4(a2)
	c.bnez	a2,000000002302FC28

l2302FC26:
	c.mv	a2,s2

l2302FC28:
	addi	a0,s5,-00000708
	jal	ra,000000002302F36E

l2302FC30:
	c.addi	s0,0000000C
	bne	s0,s4,000000002302FC1E

l2302FC36:
	lui	a0,00023076
	addi	a0,a0,+0000076C
	jal	ra,000000002302F36E
	lui	a0,00023078
	addi	a0,a0,-000006FC
	lui	s4,0002307D
	jal	ra,000000002302F36E
	c.li	s2,00000010
	c.li	s0,00000000
	lui	s5,0004200E
	lui	s6,00023078
	addi	s4,s4,-00000110

l2302FC62:
	lw	a4,s5,+000001D0
	c.lw	a4,44(a5)
	c.addi	a5,00000008
	bgeu	s0,a5,000000002302FC74

l2302FC6E:
	c.lw	a4,48(a5)
	bltu	s2,a5,000000002302FC88

l2302FC74:
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

l2302FC88:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002302F036
	bltu	a0,s1,000000002302FC98

l2302FC94:
	bltu	a0,s3,000000002302FCAC

l2302FC98:
	c.lw	a0,0(a1)
	c.beqz	a1,000000002302FCAC

l2302FC9C:
	c.lw	a0,4(a2)
	c.bnez	a2,000000002302FCA2

l2302FCA0:
	c.mv	a2,s4

l2302FCA2:
	addi	a0,s6,-00000708
	jal	ra,000000002302F36E
	c.addi	s2,00000001

l2302FCAC:
	c.addi	s0,00000001
	c.j	000000002302FC62

;; cli_getchar: 2302FCB0
;;   Called from:
;;     2303024C (in cli_main_input)
cli_getchar proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	addi	a2,zero,+0000003C
	c.mv	s0,a0
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	c.swsp	ra,000000A4
	c.swsp	zero,00000000
	jal	ra,000000002306D1BC
	c.li	a4,FFFFFFFF
	c.mv	a3,sp
	c.li	a2,00000001
	c.mv	a1,s0
	c.addi4spn	a0,00000004
	sb	zero,sp,+00000004
	jal	ra,0000000023037306
	c.bnez	a0,000000002302FCEA

l2302FCDA:
	c.lwsp	zero,00000044
	c.addi	a0,FFFFFFFF
	sltiu	a0,a0,+00000001

l2302FCE2:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.addi16sp	00000050
	c.jr	ra

l2302FCEA:
	c.li	a0,00000000
	c.j	000000002302FCE2

;; cli_main_input: 2302FCEE
;;   Called from:
;;     230304D2 (in console_cb_read)
;;     230304EC (in aos_cli_input_direct)
cli_main_input proc
	c.addi16sp	FFFFFF90
	c.swsp	s1,000000B0
	lui	s1,0004200E
	c.swsp	s9,000000A0
	lw	s9,s1,+000001D0
	c.swsp	s0,00000034
	c.swsp	ra,000000B4
	c.swsp	s2,00000030
	c.swsp	s3,000000AC
	c.swsp	s4,0000002C
	c.swsp	s5,000000A8
	c.swsp	s6,00000028
	c.swsp	s7,000000A4
	c.swsp	s8,00000024
	c.swsp	s10,00000020
	c.swsp	s11,0000009C
	c.swsp	a1,00000004
	addi	s0,s9,+00000038
	c.beqz	s0,000000002302FDFC

l2302FD1A:
	c.mv	s7,a0
	addi	s1,s1,+000001D0
	c.li	s4,00000000
	lui	s8,00023076

l2302FD26:
	beq	s7,zero,000000002303024A

l2302FD2A:
	c.lwsp	s0,000000E4
	bge	s4,a5,000000002303022C

l2302FD30:
	add	a4,s7,s4
	lbu	a4,a4,+00000000
	c.addi	s4,00000001
	sb	a4,sp,+00000020

l2302FD3E:
	lbu	a4,sp,+00000020
	c.li	a3,0000000A
	beq	a4,a3,000000002302FD4E

l2302FD48:
	c.li	a3,0000000D
	bne	a4,a3,000000002302FE0A

l2302FD4E:
	lw	a4,s9,+00000034
	lw	s2,s1,+00000000
	c.add	s0,a4
	sb	zero,s0,+00000000
	addi	s2,s2,+00000038
	sw	zero,s9,+00000034
	c.mv	a0,s2
	jal	ra,000000002306D630
	bne	a0,zero,0000000023030258

l2302FD6E:
	lui	s1,00042013
	addi	a2,zero,+00000100
	c.li	a1,00000000
	addi	a0,s1,-00000648
	c.swsp	zero,00000010
	c.swsp	zero,00000090
	c.swsp	zero,00000014
	c.swsp	zero,00000094
	jal	ra,000000002306D1BC
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,00000020
	jal	ra,000000002306D1BC
	c.li	a2,00000004
	c.li	a1,00000000
	c.addi4spn	a0,0000001C
	jal	ra,000000002306D1BC
	c.li	a5,00000000
	addi	s11,sp,+00000020
	c.li	s8,00000000
	addi	s6,zero,+00000020
	c.li	s3,00000001
	addi	s4,zero,+0000005C
	addi	s7,s1,-00000648
	c.li	s9,00000002
	c.li	s5,00000003
	addi	s10,zero,+0000003B

l2302FDBA:
	add	s0,s2,a5
	lbu	a3,s0,+00000000
	beq	a3,s6,000000002303046E

l2302FDC6:
	bltu	s6,a3,00000000230302EA

l2302FDCA:
	beq	a3,zero,0000000023030344

l2302FDCE:
	lbu	a3,sp,+0000001C
	andi	a2,a3,+00000001
	bne	a2,zero,0000000023030358

l2302FDDA:
	lw	a2,s11,+00000000
	ori	a3,a3,+00000001
	sb	a3,sp,+0000001C
	addi	a3,a2,+00000001
	sw	a3,s11,+00000000
	slli	a3,s8,00000004
	c.add	a3,a2
	c.slli	a3,02
	c.add	a3,s7
	c.sw	a3,0(s0)
	c.j	0000000023030358

l2302FDFC:
	lui	a0,00023077
	addi	a0,a0,+00000750

l2302FE04:
	jal	ra,000000002302F36E
	c.j	000000002303022C

l2302FE0A:
	lui	a5,0004200E
	c.li	a0,0000001B
	addi	s2,a5,+000001D8
	bne	a4,a0,000000002302FE32

l2302FE18:
	c.li	a4,00000001
	lui	a3,0004200E
	sb	a4,s2,+00000000
	c.li	a4,FFFFFFFF
	sb	a4,a3,+00000C64
	lui	a3,0004200E
	sb	a4,a3,+00000C65
	c.j	000000002302FD26

l2302FE32:
	lb	a3,s2,+00000000
	beq	a3,zero,00000000230300B0

l2302FE3A:
	lui	a3,0004200E
	addi	a3,a3,-0000039C
	lb	a1,a3,+00000000
	bge	a1,zero,000000002302FE98

l2302FE4A:
	slli	a1,a4,00000018
	c.srai	a1,00000018
	sb	a1,a3,+00000000
	addi	a3,zero,+0000005B
	beq	a1,a3,000000002302FD26

l2302FE5C:
	lw	a3,s9,+00000034
	c.add	a3,s0
	sb	a0,a3,+00000000
	lw	a3,s9,+00000034
	c.addi	a3,00000001
	sw	a3,s9,+00000034
	c.add	a3,s0
	sb	a4,a3,+00000000
	lw	a4,s9,+00000034
	c.addi	a4,00000001
	sw	a4,s9,+00000034
	c.lw	s1,0(a4)
	c.lw	a4,4(a4)
	c.bnez	a4,000000002302FE92

l2302FE86:
	lui	a0,00023077
	addi	a0,a0,+00000760

l2302FE8E:
	jal	ra,0000000023003AC6

l2302FE92:
	sb	zero,s2,+00000000
	c.j	000000002302FD26

l2302FE98:
	lui	a3,0004200E
	lb	a2,a3,-0000039B
	addi	a3,a3,-0000039B
	bge	a2,zero,000000002302FED4

l2302FEA8:
	slli	a2,a4,00000018
	c.srai	a2,00000018
	sb	a2,a3,+00000000
	addi	a6,zero,+00000074
	bne	a2,a6,000000002302FED4

l2302FEBA:
	lui	a2,00042013
	addi	a2,a2,-00000548
	sb	a0,a2,+00000000
	sb	a1,a2,+00000001
	c.li	a0,00000002
	lui	a2,0004200E
	sb	a0,a2,+000001D9

l2302FED4:
	lb	a2,a3,+00000000
	c.li	a6,00000001
	andi	a0,a2,+000000FF
	addi	a3,a0,-00000041
	andi	a3,a3,+000000FF
	bgeu	a6,a3,000000002302FF54

l2302FEEA:
	lui	a6,00042013
	lui	s3,0004200E
	addi	a3,zero,+00000074
	addi	s5,a6,-00000548
	addi	s3,s3,+000001D9
	beq	a2,a3,000000002303004C

l2302FF02:
	lw	a4,s9,+00000034
	c.li	a3,0000001B
	c.add	a4,s0
	sb	a3,a4,+00000000
	lw	a4,s9,+00000034
	c.addi	a4,00000001
	sw	a4,s9,+00000034
	c.add	a4,s0
	sb	a1,a4,+00000000
	lw	a4,s9,+00000034
	c.addi	a4,00000001
	sw	a4,s9,+00000034
	c.add	a4,s0
	sb	a0,a4,+00000000
	lw	a4,s9,+00000034
	c.addi	a4,00000001
	sw	a4,s9,+00000034
	c.lw	s1,0(a4)
	c.lw	a4,4(a4)
	c.bnez	a4,000000002302FF4A

l2302FF3E:
	lui	a0,00023077
	addi	a0,a0,+00000764
	jal	ra,0000000023003AC6

l2302FF4A:
	sb	zero,s5,+00000000
	sb	zero,s3,+00000000
	c.j	000000002302FE92

l2302FF54:
	addi	a4,zero,+00000041
	bne	a2,a4,000000002302FFF4

l2302FF5C:
	c.lw	s1,0(a0)
	addi	a2,zero,+00000100
	lw	a3,a0,+0000013C
	addi	a4,a3,+000000FF

l2302FF6A:
	or	a4,a4,a2
	add	a1,a0,a4
	lbu	a1,a1,+00000144
	c.bnez	a1,000000002302FFC4

l2302FF78:
	bne	a3,a4,000000002302FFBE

l2302FF7C:
	sw	a4,a0,+0000013C
	addi	a1,zero,+00000100
	c.mv	a4,s0

l2302FF86:
	add	a2,a0,a3
	lbu	a2,a2,+00000144
	c.bnez	a2,000000002302FFE6

l2302FF90:
	lui	a0,00023077
	sb	zero,a4,+00000000
	c.mv	a1,s0
	addi	a0,a0,+0000076C
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	jal	ra,000000002306D630
	lui	a4,00042013
	sw	a0,s9,+00000034
	sb	zero,a4,+00000AB8
	lui	a4,0004200E
	sb	zero,a4,+000001D9
	c.j	000000002302FE92

l2302FFBE:
	addi	a4,a4,+000000FF
	c.j	000000002302FF6A

l2302FFC4:
	beq	a3,a4,000000002302FF7C

l2302FFC8:
	addi	a2,zero,+00000100

l2302FFCC:
	addi	a4,a4,+000000FF
	or	a4,a4,a2
	add	a1,a0,a4
	lbu	a1,a1,+00000144
	c.bnez	a1,000000002302FFCC

l2302FFDE:
	c.addi	a4,00000001
	or	a4,a4,a2
	c.j	000000002302FF7C

l2302FFE6:
	c.addi	a4,00000001
	c.addi	a3,00000001
	sb	a2,a4,+00000FFF
	or	a3,a3,a1
	c.j	000000002302FF86

l2302FFF4:
	c.lw	s1,0(a2)
	addi	a0,zero,+00000100
	lw	a3,a2,+0000013C
	c.mv	a4,a3

l23030000:
	add	a1,a2,a4
	lbu	a1,a1,+00000144
	c.bnez	a1,0000000023030044

l2303000A:
	beq	a3,a4,0000000023030022

l2303000E:
	addi	a0,zero,+00000100

l23030012:
	c.addi	a4,00000001
	or	a4,a4,a0
	add	a1,a2,a4
	lbu	a1,a1,+00000144
	c.beqz	a1,0000000023030012

l23030022:
	sw	a4,a2,+0000013C
	addi	a0,zero,+00000100
	c.mv	a4,s0

l2303002C:
	add	a1,a2,a3
	lbu	a1,a1,+00000144
	c.beqz	a1,000000002302FF90

l23030036:
	c.addi	a4,00000001
	c.addi	a3,00000001
	sb	a1,a4,+00000FFF
	or	a3,a3,a0
	c.j	000000002303002C

l23030044:
	c.addi	a4,00000001
	or	a4,a4,a0
	c.j	0000000023030000

l2303004C:
	lbu	a3,s3,+00000000
	addi	a2,zero,+0000003F
	bgeu	a2,a3,0000000023030072

l23030058:
	lui	a0,00023077
	addi	a0,a0,+00000774
	sb	zero,s5,+00000000
	sb	zero,s3,+00000000
	sb	zero,s2,+00000000
	jal	ra,0000000023003AC6
	c.j	000000002302FD26

l23030072:
	addi	a2,a3,+00000001
	add	a1,s5,a3
	andi	a2,a2,+000000FF
	sb	a4,a1,+00000000
	sb	a2,s3,+00000000
	addi	a1,zero,+0000006D
	bne	a4,a1,000000002302FD26

l2303008E:
	c.lw	s1,0(a4)
	c.add	s5,a2
	sb	zero,s5,+00000000
	c.lw	a4,4(a4)
	c.addi	a3,00000002
	sb	a3,s3,+00000000
	bne	a4,zero,000000002302FE92

l230300A2:
	lui	a0,00023077
	addi	a1,a6,-00000548
	addi	a0,a0,+00000770
	c.j	000000002302FE8E

l230300B0:
	lw	a3,s9,+00000034
	c.add	a3,s0
	sb	a4,a3,+00000000
	c.li	a3,00000008
	beq	a4,a3,00000000230300C8

l230300C0:
	addi	a3,zero,+0000007F
	bne	a4,a3,00000000230300F0

l230300C8:
	lw	a4,s9,+00000034
	beq	a4,zero,000000002302FD26

l230300D0:
	c.addi	a4,FFFFFFFF
	sw	a4,s9,+00000034
	c.lw	s1,0(a4)
	c.lw	a4,4(a4)
	bne	a4,zero,000000002302FD26

l230300DE:
	lui	a5,00023077
	c.li	a2,00000008
	c.li	a1,00000008
	addi	a0,a5,+00000798
	jal	ra,0000000023003AC6
	c.j	000000002302FD26

l230300F0:
	c.li	a3,00000009
	bne	a4,a3,00000000230301EA

l230300F6:
	lw	a4,s9,+00000034
	addi	a0,s8,+0000076C
	c.li	s3,00000000
	c.add	a4,s0
	sb	zero,a4,+00000000
	jal	ra,000000002302F36E
	c.li	s2,00000000
	c.li	s6,00000000
	c.li	s5,00000000
	c.li	s10,00000001
	c.li	s11,00000002

l23030114:
	c.lw	s1,0(a3)
	c.lw	a3,44(a4)
	c.addi	a4,00000008
	bgeu	s5,a4,0000000023030124

l2303011E:
	c.lw	a3,48(a4)
	bltu	s6,a4,000000002303018C

l23030124:
	c.li	a4,00000001
	bne	s2,a4,00000000230301DC

l2303012A:
	beq	s3,zero,0000000023030174

l2303012E:
	c.mv	a0,s3
	jal	ra,000000002306D630
	addi	a4,zero,+000000FF
	bltu	a4,a0,0000000023030174

l2303013C:
	lw	a4,s9,+00000034
	sub	s2,a0,a4
	c.mv	a2,s2
	add	a1,s3,a4
	add	a0,s0,a4
	jal	ra,000000002306CF80
	lw	a0,s9,+00000034
	c.add	s2,a0
	addi	a4,s2,+00000001
	sw	a4,s9,+00000034
	c.add	s2,s0
	addi	a4,zero,+00000020
	sb	a4,s2,+00000000
	lw	a4,s9,+00000034
	c.add	a4,s0
	sb	zero,a4,+00000000

l23030174:
	lui	a1,00023077
	lui	a0,00023077
	c.mv	a2,s0
	addi	a1,a1,+000007AC
	addi	a0,a0,+000007B0
	jal	ra,000000002302F36E
	c.j	000000002302FD26

l2303018C:
	c.li	a1,00000000
	c.mv	a0,s5
	jal	ra,000000002302F036
	c.lw	a0,0(a1)
	c.swsp	a0,00000084
	c.beqz	a1,00000000230301C4

l2303019A:
	lw	a2,s9,+00000034
	c.mv	a0,s0
	jal	ra,000000002306D6BC
	c.bnez	a0,00000000230301C2

l230301A6:
	c.lwsp	a2,000000C4
	c.addi	s2,00000001
	c.lw	a4,0(a2)
	beq	s2,s10,00000000230301D8

l230301B0:
	bne	s2,s11,00000000230301C8

l230301B4:
	lui	a5,00023077
	c.mv	a1,s3
	addi	a0,a5,+000007A0
	jal	ra,000000002302F36E

l230301C2:
	c.addi	s6,00000001

l230301C4:
	c.addi	s5,00000001
	c.j	0000000023030114

l230301C8:
	lui	a5,00023077
	c.mv	a1,a2
	addi	a0,a5,+000007A8
	jal	ra,000000002302F36E
	c.j	00000000230301C2

l230301D8:
	c.mv	s3,a2
	c.j	00000000230301C2

l230301DC:
	bge	a4,s2,0000000023030174

l230301E0:
	addi	a0,s8,+0000076C
	jal	ra,000000002302F36E
	c.j	0000000023030174

l230301EA:
	c.lw	s1,0(a3)
	c.lw	a3,4(a3)
	c.bnez	a3,00000000230301FE

l230301F0:
	lui	a0,00023077
	c.mv	a1,a4
	addi	a0,a0,+000000A8
	jal	ra,0000000023003AC6

l230301FE:
	lw	a4,s9,+00000034
	addi	a3,zero,+000000FF
	c.addi	a4,00000001
	sw	a4,s9,+00000034
	bgeu	a3,a4,000000002302FD26

l23030210:
	lui	a0,00023077
	addi	a0,a0,+000007B8
	jal	ra,000000002302F36E
	lui	a0,00023077
	addi	a0,a0,+000007AC
	jal	ra,000000002302F36E
	sw	zero,s9,+00000034

l2303022C:
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

l2303024A:
	c.addi4spn	a0,00000020
	jal	ra,000000002302FCB0
	c.li	a4,00000001
	beq	a0,a4,000000002302FD3E

l23030256:
	c.j	000000002303022C

l23030258:
	lw	s3,s1,+00000000
	addi	s3,s3,+00000038
	c.mv	a0,s3
	jal	ra,000000002306D630
	c.lw	s1,0(a5)
	addi	s5,a0,+00000001
	addi	a4,zero,+00000100
	lw	s0,a5,+00000140
	addi	a0,s0,+00000144
	sub	s4,a4,s0
	sw	s0,a5,+0000013C
	c.add	s0,s5
	c.add	a0,a5
	c.addi	s0,FFFFFFFF
	blt	s4,s5,00000000230302C8

l2303028A:
	c.add	a5,s0
	lbu	s6,a5,+00000144
	c.mv	a2,s5
	c.mv	a1,s3

l23030294:
	jal	ra,000000002306D7AC
	c.addi	s0,00000001
	addi	a5,zero,+00000100
	or	s0,s0,a5
	c.lw	s1,0(a4)
	addi	a2,zero,+00000100
	sw	s0,a4,+00000140
	beq	s6,zero,000000002302FD6E

l230302B0:
	add	a5,a4,s0
	lbu	a3,a5,+00000144
	beq	a3,zero,000000002302FD6E

l230302BC:
	c.addi	s0,00000001
	sb	zero,a5,+00000144
	or	s0,s0,a2
	c.j	00000000230302B0

l230302C8:
	or	s0,s0,a4
	c.mv	a2,s4
	c.mv	a1,s3
	c.add	a5,s0
	lbu	s6,a5,+00000144
	jal	ra,000000002306D7AC
	c.lw	s1,0(a0)
	sub	a2,s5,s4
	add	a1,s3,s4
	addi	a0,a0,+00000144
	c.j	0000000023030294

l230302EA:
	addi	a4,zero,+00000022
	beq	a3,a4,00000000230303E6

l230302F2:
	bne	a3,s10,000000002302FDCE

l230302F6:
	lbu	a3,sp,+0000001C
	c.beqz	a5,0000000023030312

l230302FC:
	addi	a6,a5,-00000001
	add	a7,s2,a6
	lbu	a2,a7,+00000000
	bne	a2,s4,0000000023030312
