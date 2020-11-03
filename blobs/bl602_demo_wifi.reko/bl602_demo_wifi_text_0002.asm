;;; Segment .text (23000300)

;; wpa_MD5Init: 23020B5C
;;   Called from:
;;     2301FF66 (in Bl_hmac_md5)
;;     2301FFB6 (in Bl_hmac_md5)
;;     23020006 (in Bl_hmac_md5)
wpa_MD5Init proc
	lui	a5,00067452
	addi	a5,a5,+00000301
	c.sw	a0,0(a5)
	lui	a5,000EFCDB
	addi	a5,a5,-00000477
	c.sw	a0,4(a5)
	lui	a5,00098BAE
	addi	a5,a5,-00000302
	c.sw	a0,8(a5)
	lui	a5,00010325
	addi	a5,a5,+00000476
	sw	zero,a0,+00000014
	sw	zero,a0,+00000010
	c.sw	a0,12(a5)
	c.jr	ra

;; wpa_MD5Update: 23020B8E
;;   Called from:
;;     2301FF70 (in Bl_hmac_md5)
;;     2301FFC2 (in Bl_hmac_md5)
;;     2301FFCC (in Bl_hmac_md5)
;;     23020012 (in Bl_hmac_md5)
;;     2302001C (in Bl_hmac_md5)
;;     23020C70 (in wpa_MD5Final)
;;     23020C7A (in wpa_MD5Final)
wpa_MD5Update proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.lw	a0,16(a5)
	slli	a4,a2,00000003
	c.mv	s0,a0
	srli	a0,a5,00000003
	c.add	a5,a4
	c.sw	s0,16(a5)
	c.mv	s3,a1
	c.mv	s2,a2
	andi	a0,a0,+0000003F
	bgeu	a5,a4,0000000023020BBE

l23020BB8:
	c.lw	s0,20(a5)
	c.addi	a5,00000001
	c.sw	s0,20(a5)

l23020BBE:
	c.lw	s0,20(a4)
	srli	a5,s2,0000001D
	addi	s1,zero,+00000040
	c.add	a5,a4
	c.sw	s0,20(a5)
	c.sub	s1,a0
	bltu	s2,s1,0000000023020C34

l23020BD2:
	addi	a0,a0,+00000058
	c.mv	a2,s1
	c.mv	a1,s3
	c.add	a0,s0
	jal	ra,0000000023070C7C
	addi	a1,s0,+00000058
	c.mv	a0,s0
	jal	ra,00000000230202A6
	addi	s4,s0,+00000018

l23020BEE:
	addi	a5,s1,+0000003F
	add	a1,s3,s1
	bltu	a5,s2,0000000023020C1C

l23020BFA:
	c.li	a0,00000000

l23020BFC:
	addi	a0,a0,+00000058
	c.add	a0,s0
	c.lwsp	s8,00000004
	sub	a2,s2,s1
	add	a1,s3,s1
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,0000000023070C7C

l23020C1C:
	addi	a2,zero,+00000040
	c.mv	a0,s4
	jal	ra,0000000023070C7C
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,00000000230202A6
	addi	s1,s1,+00000040
	c.j	0000000023020BEE

l23020C34:
	c.li	s1,00000000
	c.j	0000000023020BFC

;; wpa_MD5Final: 23020C38
;;   Called from:
;;     2301FF78 (in Bl_hmac_md5)
;;     2301FFD4 (in Bl_hmac_md5)
;;     23020024 (in Bl_hmac_md5)
wpa_MD5Final proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a1
	c.li	a2,00000008
	c.mv	s1,a0
	c.addi	a1,00000010
	c.addi4spn	a0,00000008
	c.swsp	ra,0000008C
	jal	ra,0000000023070C7C
	c.lw	s0,16(a2)
	addi	a5,zero,+00000037
	c.srli	a2,00000003
	andi	a2,a2,+0000003F
	bltu	a5,a2,0000000023020C9E

l23020C5E:
	addi	a5,zero,+00000038

l23020C62:
	lui	a1,00023079
	sub	a2,a5,a2
	c.mv	a0,s0
	addi	a1,a1,-0000032C
	jal	ra,0000000023020B8E
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	c.li	a2,00000008
	jal	ra,0000000023020B8E
	c.mv	a1,s0
	c.li	a2,00000010
	c.mv	a0,s1
	jal	ra,0000000023070C7C
	c.mv	a0,s0
	addi	a2,zero,+00000098
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23020C9E:
	addi	a5,zero,+00000078
	c.j	0000000023020C62

;; rijndaelKeySetupEnc: 23020CA4
;;   Called from:
;;     23020DBE (in rijndael_set_key)
;;     23020DE8 (in rijndael_set_key)
rijndaelKeySetupEnc proc
	lbu	a5,a1,+00000000
	lbu	a4,a1,+00000001
	c.slli	a5,18
	c.slli	a4,10
	c.xor	a5,a4
	lbu	a4,a1,+00000003
	c.xor	a5,a4
	lbu	a4,a1,+00000002
	c.slli	a4,08
	c.xor	a5,a4
	c.sw	a0,0(a5)
	lbu	a5,a1,+00000004
	lbu	a4,a1,+00000005
	c.slli	a5,18
	c.slli	a4,10
	c.xor	a5,a4
	lbu	a4,a1,+00000007
	c.xor	a5,a4
	lbu	a4,a1,+00000006
	c.slli	a4,08
	c.xor	a5,a4
	c.sw	a0,4(a5)
	lbu	a5,a1,+00000008
	lbu	a4,a1,+00000009
	c.slli	a5,18
	c.slli	a4,10
	c.xor	a5,a4
	lbu	a4,a1,+0000000B
	c.xor	a5,a4
	lbu	a4,a1,+0000000A
	c.slli	a4,08
	c.xor	a5,a4
	c.sw	a0,8(a5)
	lbu	a5,a1,+0000000C
	lbu	a4,a1,+0000000D
	c.slli	a5,18
	c.slli	a4,10
	c.xor	a5,a4
	lbu	a4,a1,+0000000F
	c.xor	a5,a4
	lbu	a4,a1,+0000000E
	c.slli	a4,08
	c.xor	a5,a4
	c.sw	a0,12(a5)
	addi	a5,zero,+00000080
	bne	a2,a5,0000000023020D9A

l23020D24:
	lui	a3,0002307B
	lui	a4,0002307B
	addi	a3,a3,-000000EC
	addi	a6,a0,+00000090
	addi	a4,a4,-000001EC

l23020D38:
	c.lw	a3,0(a1)
	c.lw	a0,12(a2)
	c.lw	a0,0(a5)
	c.addi	a3,00000004
	c.xor	a5,a1
	srli	a1,a2,00000018
	c.add	a1,a4
	lbu	a1,a1,+00000000
	c.xor	a5,a1
	andi	a1,a2,+000000FF
	c.add	a1,a4
	lbu	a1,a1,+00000000
	c.slli	a1,08
	c.xor	a5,a1
	srli	a1,a2,00000010
	andi	a1,a1,+000000FF
	c.add	a1,a4
	lbu	a1,a1,+00000000
	c.slli	a1,18
	c.xor	a5,a1
	srli	a1,a2,00000008
	andi	a1,a1,+000000FF
	c.add	a1,a4
	lbu	a1,a1,+00000000
	c.slli	a1,10
	c.xor	a5,a1
	c.lw	a0,4(a1)
	c.sw	a0,16(a5)
	c.xor	a5,a1
	c.lw	a0,8(a1)
	c.sw	a0,20(a5)
	c.xor	a5,a1
	c.sw	a0,24(a5)
	c.xor	a5,a2
	c.sw	a0,28(a5)
	beq	a0,a6,0000000023020D9E

l23020D96:
	c.addi	a0,00000010
	c.j	0000000023020D38

l23020D9A:
	c.li	a0,00000000
	c.jr	ra

l23020D9E:
	c.li	a0,0000000A
	c.jr	ra

;; rijndael_set_key: 23020DA2
;;   Called from:
;;     2301FCFE (in BL_AesEncrypt)
;;     2301FE7E (in BL_AesUnWrap)
rijndael_set_key proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	addi	s1,a0,+00000008
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.mv	a0,s1
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.mv	s3,a1
	c.mv	s4,a2
	c.mv	s2,a3
	jal	ra,0000000023020CA4
	c.sw	s0,4(a0)
	beq	s2,zero,0000000023020DDC

l23020DC8:
	sw	zero,s0,+00000000

l23020DCC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23020DDC:
	c.li	a5,00000001
	c.sw	s0,0(a5)
	c.bnez	a0,0000000023020DEC

l23020DE2:
	c.mv	a2,s4
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,0000000023020CA4

l23020DEC:
	slli	a5,a0,00000004
	c.mv	a4,s1
	slli	a2,a0,00000002
	c.add	a5,s0

l23020DF8:
	sub	a3,a2,s2
	c.addi	a5,FFFFFFF0
	blt	s2,a3,0000000023020F96

l23020E02:
	lui	a2,00023079
	lui	a5,0002307B
	lui	a1,0002307A
	lui	a6,00023079
	lui	a7,00023079
	c.li	t1,00000001
	addi	a2,a2,-000002EC
	addi	a5,a5,-000001EC
	addi	a1,a1,-000006EC
	addi	a6,a6,+00000114
	addi	a7,a7,+00000514

l23020E2C:
	bge	t1,a0,0000000023020DCC

l23020E30:
	c.addi	s1,00000010
	c.lw	s1,0(a4)
	c.addi	t1,00000001
	srli	a3,a4,00000018
	andi	t3,a4,+000000FF
	c.add	a3,a5
	c.add	t3,a5
	lbu	a3,a3,+00000000
	lbu	t3,t3,+00000000
	c.slli	a3,02
	c.slli	t3,02
	c.add	a3,a2
	c.add	t3,a1
	lw	t3,t3,+00000000
	c.lw	a3,0(a3)
	xor	a3,a3,t3
	srli	t3,a4,00000010
	andi	t3,t3,+000000FF
	c.srli	a4,00000008
	c.add	t3,a5
	andi	a4,a4,+000000FF
	lbu	t3,t3,+00000000
	c.add	a4,a5
	lbu	a4,a4,+00000000
	c.slli	t3,02
	c.add	t3,a6
	c.slli	a4,02
	lw	t3,t3,+00000000
	c.add	a4,a7
	c.lw	a4,0(a4)
	xor	a3,a3,t3
	c.xor	a4,a3
	c.sw	s1,0(a4)
	c.lw	s1,4(a4)
	srli	a3,a4,00000018
	andi	t3,a4,+000000FF
	c.add	a3,a5
	c.add	t3,a5
	lbu	a3,a3,+00000000
	lbu	t3,t3,+00000000
	c.slli	a3,02
	c.slli	t3,02
	c.add	a3,a2
	c.add	t3,a1
	lw	t3,t3,+00000000
	c.lw	a3,0(a3)
	xor	a3,a3,t3
	srli	t3,a4,00000010
	andi	t3,t3,+000000FF
	c.srli	a4,00000008
	c.add	t3,a5
	andi	a4,a4,+000000FF
	lbu	t3,t3,+00000000
	c.add	a4,a5
	lbu	a4,a4,+00000000
	c.slli	t3,02
	c.add	t3,a6
	c.slli	a4,02
	lw	t3,t3,+00000000
	c.add	a4,a7
	c.lw	a4,0(a4)
	xor	a3,a3,t3
	c.xor	a4,a3
	c.sw	s1,4(a4)
	c.lw	s1,8(a4)
	srli	a3,a4,00000018
	andi	t3,a4,+000000FF
	c.add	a3,a5
	c.add	t3,a5
	lbu	a3,a3,+00000000
	lbu	t3,t3,+00000000
	c.slli	a3,02
	c.slli	t3,02
	c.add	a3,a2
	c.add	t3,a1
	lw	t3,t3,+00000000
	c.lw	a3,0(a3)
	xor	a3,a3,t3
	srli	t3,a4,00000010
	andi	t3,t3,+000000FF
	c.srli	a4,00000008
	c.add	t3,a5
	andi	a4,a4,+000000FF
	lbu	t3,t3,+00000000
	c.add	a4,a5
	lbu	a4,a4,+00000000
	c.slli	t3,02
	c.add	t3,a6
	c.slli	a4,02
	lw	t3,t3,+00000000
	c.add	a4,a7
	c.lw	a4,0(a4)
	xor	a3,a3,t3
	c.xor	a4,a3
	c.sw	s1,8(a4)
	c.lw	s1,12(a4)
	srli	a3,a4,00000018
	andi	t3,a4,+000000FF
	c.add	a3,a5
	c.add	t3,a5
	lbu	a3,a3,+00000000
	lbu	t3,t3,+00000000
	c.slli	a3,02
	c.slli	t3,02
	c.add	a3,a2
	c.add	t3,a1
	lw	t3,t3,+00000000
	c.lw	a3,0(a3)
	xor	a3,a3,t3
	srli	t3,a4,00000010
	andi	t3,t3,+000000FF
	c.srli	a4,00000008
	c.add	t3,a5
	andi	a4,a4,+000000FF
	lbu	t3,t3,+00000000
	c.add	a4,a5
	lbu	a4,a4,+00000000
	c.slli	t3,02
	c.add	t3,a6
	c.slli	a4,02
	lw	t3,t3,+00000000
	c.add	a4,a7
	c.lw	a4,0(a4)
	xor	a3,a3,t3
	c.xor	a4,a3
	c.sw	s1,12(a4)
	c.j	0000000023020E2C

l23020F96:
	c.lw	a5,24(a1)
	c.lw	a4,0(a3)
	c.addi	s2,00000004
	c.sw	a4,0(a1)
	c.sw	a5,24(a3)
	c.lw	a5,28(a1)
	c.lw	a4,4(a3)
	c.addi	a4,00000010
	sw	a1,a4,+00000FF4
	c.sw	a5,28(a3)
	c.lw	a5,32(a1)
	lw	a3,a4,-00000008
	sw	a1,a4,+00000FF8
	c.sw	a5,32(a3)
	c.lw	a5,36(a1)
	lw	a3,a4,-00000004
	sw	a1,a4,+00000FFC
	c.sw	a5,36(a3)
	c.j	0000000023020DF8

;; rijndael_decrypt: 23020FC6
;;   Called from:
;;     2301FF0C (in BL_AesUnWrap)
rijndael_decrypt proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000094
	c.swsp	s1,00000014
	c.swsp	s2,00000090
	c.swsp	s7,00000008
	c.swsp	s8,00000084
	c.swsp	s3,00000010
	c.swsp	s4,0000008C
	c.swsp	s5,0000000C
	c.swsp	s6,00000088
	c.swsp	s9,00000004
	c.swsp	s10,00000080
	c.swsp	s11,00000000
	lbu	a4,a1,+00000000
	lbu	a5,a1,+00000001
	lbu	t3,a1,+00000004
	c.slli	a4,18
	c.slli	a5,10
	c.xor	a4,a5
	lbu	a5,a1,+00000003
	c.slli	t3,18
	lbu	a7,a1,+00000008
	c.xor	a4,a5
	lbu	a5,a1,+00000002
	c.slli	a7,18
	lbu	a3,a1,+0000000D
	c.slli	a5,08
	c.xor	a4,a5
	c.lw	a0,8(a5)
	c.slli	a3,10
	addi	s8,a0,+00000008
	c.xor	a4,a5
	lbu	a5,a1,+00000005
	lui	s2,00023079
	lui	s1,0002307A
	c.slli	a5,10
	xor	t3,t3,a5
	lbu	a5,a1,+00000007
	lui	t2,00023079
	lui	t0,00023079
	xor	t3,t3,a5
	lbu	a5,a1,+00000006
	c.mv	s0,s8
	addi	s2,s2,-000002EC
	c.slli	a5,08
	xor	t3,t3,a5
	c.lw	a0,12(a5)
	addi	s1,s1,-000006EC
	addi	t2,t2,+00000114
	xor	t3,t3,a5
	lbu	a5,a1,+00000009
	addi	t0,t0,+00000514
	c.slli	a5,10
	xor	a7,a7,a5
	lbu	a5,a1,+0000000B
	xor	a7,a7,a5
	lbu	a5,a1,+0000000A
	c.slli	a5,08
	xor	a7,a7,a5
	c.lw	a0,16(a5)
	xor	a7,a7,a5
	lbu	a5,a1,+0000000C
	c.slli	a5,18
	c.xor	a5,a3
	lbu	a3,a1,+0000000F
	c.xor	a5,a3
	lbu	a3,a1,+0000000E
	c.slli	a3,08
	c.xor	a5,a3
	c.lw	a0,20(a3)
	lw	a6,a0,+00000004
	c.xor	a5,a3
	srai	a6,a6,00000001
	c.mv	s7,a6

l230210A0:
	srli	a1,a4,00000018
	andi	a3,t3,+000000FF
	c.slli	a1,02
	c.slli	a3,02
	c.add	a1,s2
	c.add	a3,s1
	c.lw	a1,0(a0)
	c.lw	a3,0(a3)
	srli	a1,t3,00000018
	c.slli	a1,02
	c.xor	a0,a3
	c.lw	s0,16(a3)
	c.add	a1,s2
	c.lw	a1,0(a1)
	c.xor	a0,a3
	srli	a3,a5,0000000E
	andi	a3,a3,+000003FC
	c.add	a3,t2
	c.lw	a3,0(a3)
	andi	t1,a5,+000000FF
	c.slli	t1,02
	c.xor	a0,a3
	srli	a3,a7,00000006
	andi	a3,a3,+000003FC
	c.add	a3,t0
	c.lw	a3,0(a3)
	c.add	t1,s1
	lw	t1,t1,+00000000
	c.xor	a0,a3
	andi	a3,a7,+000000FF
	c.slli	a3,02
	c.add	a3,s1
	c.lw	a3,0(a3)
	srli	t4,a0,00000010
	addi	s0,s0,+00000020
	c.xor	a1,a3
	lw	a3,s0,-0000000C
	c.addi	s7,FFFFFFFF
	srli	s9,a0,00000018
	c.xor	a1,a3
	srli	a3,a4,0000000E
	andi	a3,a3,+000003FC
	c.add	a3,t2
	c.lw	a3,0(a3)
	andi	t4,t4,+000000FF
	c.xor	a1,a3
	srli	a3,a5,00000006
	andi	a3,a3,+000003FC
	c.add	a3,t0
	c.lw	a3,0(a3)
	c.srli	a5,00000018
	c.slli	a5,02
	c.xor	a1,a3
	srli	a3,a7,00000018
	c.slli	a3,02
	c.add	a3,s2
	c.lw	a3,0(a3)
	c.add	a5,s2
	c.lw	a5,0(a5)
	xor	a3,a3,t1
	lw	t1,s0,-00000008
	srli	a7,a7,0000000E
	andi	a7,a7,+000003FC
	xor	a3,a3,t1
	srli	t1,t3,0000000E
	andi	t1,t1,+000003FC
	c.add	t1,t2
	lw	t1,t1,+00000000
	c.add	a7,t2
	srli	t3,t3,00000006
	xor	a3,a3,t1
	srli	t1,a4,00000006
	andi	a4,a4,+000000FF
	c.slli	a4,02
	c.add	a4,s1
	c.lw	a4,0(a4)
	andi	t1,t1,+000003FC
	andi	t3,t3,+000003FC
	c.xor	a5,a4
	lw	a4,s0,-00000004
	c.add	t3,t0
	c.add	t1,t0
	c.xor	a5,a4
	lw	a4,a7,+00000000
	lw	t1,t1,+00000000
	srli	a7,a0,00000008
	c.xor	a5,a4
	lw	a4,t3,+00000000
	xor	a3,a3,t1
	srli	t5,a3,00000008
	c.xor	a5,a4
	srli	t6,a5,00000010
	srli	t3,a5,00000008
	srli	t1,a1,00000010
	andi	a4,a1,+000000FF
	srli	s6,a1,00000018
	andi	s5,a3,+000000FF
	srli	s4,a3,00000018
	c.srli	a1,00000008
	c.srli	a3,00000010
	andi	s3,a5,+000000FF
	andi	t6,t6,+000000FF
	andi	t5,t5,+000000FF
	lw	s10,s0,+00000000
	andi	t3,t3,+000000FF
	andi	t1,t1,+000000FF
	andi	a7,a7,+000000FF
	c.srli	a5,00000018
	andi	a3,a3,+000000FF
	andi	a1,a1,+000000FF
	andi	a0,a0,+000000FF
	beq	s7,zero,00000000230212B4

l230211F6:
	c.slli	a4,02
	c.slli	s9,02
	c.add	s9,s2
	add	s11,s1,a4
	lw	a4,s9,+00000000
	lw	s9,s11,+00000000
	c.slli	t6,02
	c.add	t6,t2
	xor	a4,a4,s9
	c.slli	t5,02
	xor	a4,a4,s10
	c.add	t5,t0
	lw	s10,t6,+00000000
	lw	t5,t5,+00000000
	c.slli	s6,02
	c.slli	s5,02
	xor	a4,a4,s10
	c.add	s6,s2
	c.add	s5,s1
	lw	t6,s5,+00000000
	xor	a4,a4,t5
	lw	t5,s6,+00000000
	c.slli	t4,02
	c.add	t4,t2
	xor	t5,t5,t6
	c.slli	t3,02
	lw	t6,s0,+00000004
	lw	t4,t4,+00000000
	c.add	t3,t0
	c.slli	a5,02
	c.slli	a0,02
	lw	t3,t3,+00000000
	c.add	a5,s2
	c.add	a0,s1
	xor	t5,t5,t6
	c.lw	a0,0(a0)
	c.slli	s4,02
	c.slli	s3,02
	c.lw	a5,0(a5)
	xor	t4,t5,t4
	c.add	s4,s2
	c.add	s3,s1
	lw	t5,s3,+00000000
	xor	t3,t4,t3
	c.slli	a3,02
	lw	t4,s4,+00000000
	c.xor	a5,a0
	c.add	a3,t2
	c.lw	s0,12(a0)
	c.lw	a3,0(a3)
	c.slli	t1,02
	xor	t4,t4,t5
	c.add	t1,t2
	lw	t5,s0,+00000008
	c.slli	a7,02
	c.slli	a1,02
	lw	t1,t1,+00000000
	c.add	a7,t0
	c.xor	a5,a0
	c.add	a1,t0
	c.xor	a5,a3
	lw	a7,a7,+00000000
	c.lw	a1,0(a3)
	xor	t4,t4,t5
	xor	t1,t4,t1
	xor	a7,t1,a7
	c.xor	a5,a3
	c.j	00000000230210A0

l230212B4:
	lui	t0,0002307A
	addi	t0,t0,-000002EC
	c.slli	a6,05
	c.add	s9,t0
	c.add	t6,t0
	c.add	s8,a6
	lbu	t6,t6,+00000000
	lbu	a6,s9,+00000000
	c.add	a4,t0
	lbu	a4,a4,+00000000
	c.slli	a6,18
	c.slli	t6,10
	xor	a6,a6,t6
	c.add	t5,t0
	xor	a4,a6,a4
	lbu	a6,t5,+00000000
	c.add	s6,t0
	c.add	t4,t0
	c.slli	a6,08
	xor	a4,a4,a6
	xor	s10,a4,s10
	srli	a4,s10,00000018
	sb	a4,a2,+00000000
	srli	a4,s10,00000010
	sb	a4,a2,+00000001
	srli	a4,s10,00000008
	sb	a4,a2,+00000002
	lbu	a6,t4,+00000000
	lbu	a4,s6,+00000000
	c.add	s5,t0
	c.slli	a6,10
	c.slli	a4,18
	xor	a4,a4,a6
	lbu	a6,s5,+00000000
	c.add	t3,t0
	sb	s10,a2,+00000003
	xor	a4,a4,a6
	lbu	a6,t3,+00000000
	c.add	s4,t0
	c.add	t1,t0
	c.slli	a6,08
	xor	a4,a4,a6
	lw	a6,s8,+00000004
	c.add	s3,t0
	c.add	a7,t0
	xor	a4,a4,a6
	srli	a6,a4,00000018
	sb	a6,a2,+00000004
	srli	a6,a4,00000010
	sb	a6,a2,+00000005
	srli	a6,a4,00000008
	sb	a6,a2,+00000006
	sb	a4,a2,+00000007
	lbu	a6,t1,+00000000
	lbu	a4,s4,+00000000
	c.add	a5,t0
	c.slli	a6,10
	c.slli	a4,18
	xor	a4,a4,a6
	lbu	a6,s3,+00000000
	c.add	a3,t0
	lbu	a5,a5,+00000000
	xor	a4,a4,a6
	lbu	a6,a7,+00000000
	c.slli	a5,18
	c.add	a0,t0
	c.slli	a6,08
	xor	a4,a4,a6
	lw	a6,s8,+00000008
	c.add	a1,t0
	xor	a4,a4,a6
	srli	a6,a4,00000018
	sb	a6,a2,+00000008
	srli	a6,a4,00000010
	sb	a6,a2,+00000009
	sb	a4,a2,+0000000B
	srli	a6,a4,00000008
	lbu	a4,a3,+00000000
	sb	a6,a2,+0000000A
	c.slli	a4,10
	c.xor	a5,a4
	lbu	a4,a0,+00000000
	c.xor	a5,a4
	lbu	a4,a1,+00000000
	c.slli	a4,08
	c.xor	a5,a4
	lw	a4,s8,+0000000C
	c.xor	a5,a4
	srli	a4,a5,00000018
	sb	a4,a2,+0000000C
	srli	a4,a5,00000010
	sb	a4,a2,+0000000D
	c.lwsp	a2,00000114
	srli	a4,a5,00000008
	sb	a4,a2,+0000000E
	sb	a5,a2,+0000000F
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

;; rijndael_encrypt: 23021408
;;   Called from:
;;     2301FD08 (in BL_AesEncrypt)
rijndael_encrypt proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000094
	c.swsp	s1,00000014
	c.swsp	s2,00000090
	c.swsp	s7,00000008
	c.swsp	s8,00000084
	c.swsp	s3,00000010
	c.swsp	s4,0000008C
	c.swsp	s5,0000000C
	c.swsp	s6,00000088
	c.swsp	s9,00000004
	c.swsp	s10,00000080
	c.swsp	s11,00000000
	lbu	a4,a1,+00000000
	lbu	a5,a1,+00000001
	lbu	t3,a1,+00000004
	c.slli	a4,18
	c.slli	a5,10
	c.xor	a4,a5
	lbu	a5,a1,+00000003
	c.slli	t3,18
	lbu	a7,a1,+00000008
	c.xor	a4,a5
	lbu	a5,a1,+00000002
	c.slli	a7,18
	lbu	a3,a1,+0000000D
	c.slli	a5,08
	c.xor	a4,a5
	c.lw	a0,8(a5)
	c.slli	a3,10
	addi	s8,a0,+00000008
	c.xor	a4,a5
	lbu	a5,a1,+00000005
	lui	s2,0002307A
	lui	s1,0002307B
	c.slli	a5,10
	xor	t3,t3,a5
	lbu	a5,a1,+00000007
	lui	t2,0002307A
	lui	t0,0002307A
	xor	t3,t3,a5
	lbu	a5,a1,+00000006
	c.mv	s0,s8
	addi	s2,s2,-000001EC
	c.slli	a5,08
	xor	t3,t3,a5
	c.lw	a0,12(a5)
	addi	s1,s1,-000005EC
	addi	t2,t2,+00000214
	xor	t3,t3,a5
	lbu	a5,a1,+00000009
	addi	t0,t0,+00000614
	c.slli	a5,10
	xor	a7,a7,a5
	lbu	a5,a1,+0000000B
	xor	a7,a7,a5
	lbu	a5,a1,+0000000A
	c.slli	a5,08
	xor	a7,a7,a5
	c.lw	a0,16(a5)
	xor	a7,a7,a5
	lbu	a5,a1,+0000000C
	c.slli	a5,18
	c.xor	a5,a3
	lbu	a3,a1,+0000000F
	c.xor	a5,a3
	lbu	a3,a1,+0000000E
	c.slli	a3,08
	c.xor	a5,a3
	c.lw	a0,20(a3)
	lw	a6,a0,+00000004
	c.xor	a5,a3
	srai	a6,a6,00000001
	c.mv	s7,a6

l230214E2:
	srli	a3,a4,00000018
	andi	a1,a5,+000000FF
	c.slli	a3,02
	c.slli	a1,02
	c.add	a3,s2
	c.add	a1,s1
	c.lw	a1,0(a1)
	c.lw	a3,0(a3)
	andi	a0,a4,+000000FF
	c.slli	a0,02
	c.xor	a3,a1
	c.lw	s0,16(a1)
	c.add	a0,s1
	c.lw	a0,0(a0)
	c.xor	a3,a1
	srli	a1,t3,0000000E
	andi	a1,a1,+000003FC
	c.add	a1,t2
	c.lw	a1,0(a1)
	andi	t1,t3,+000000FF
	c.slli	t1,02
	c.xor	a3,a1
	srli	a1,a7,00000006
	andi	a1,a1,+000003FC
	c.add	a1,t0
	c.lw	a1,0(a1)
	c.add	t1,s1
	lw	t1,t1,+00000000
	c.xor	a3,a1
	srli	a1,t3,00000018
	c.slli	a1,02
	c.add	a1,s2
	c.lw	a1,0(a1)
	srli	t3,t3,00000006
	andi	t3,t3,+000003FC
	c.xor	a1,a0
	c.lw	s0,20(a0)
	c.add	t3,t0
	addi	s0,s0,+00000020
	c.xor	a1,a0
	srli	a0,a7,0000000E
	andi	a0,a0,+000003FC
	c.add	a0,t2
	c.lw	a0,0(a0)
	srli	s9,a3,00000018
	andi	s5,a3,+000000FF
	c.xor	a1,a0
	srli	a0,a5,00000006
	andi	a0,a0,+000003FC
	c.add	a0,t0
	c.lw	a0,0(a0)
	c.addi	s7,FFFFFFFF
	c.xor	a1,a0
	srli	a0,a7,00000018
	c.slli	a0,02
	c.add	a0,s2
	c.lw	a0,0(a0)
	andi	a7,a7,+000000FF
	c.slli	a7,02
	xor	a0,a0,t1
	lw	t1,s0,-00000008
	c.add	a7,s1
	lw	a7,a7,+00000000
	xor	a0,a0,t1
	srli	t1,a5,0000000E
	andi	t1,t1,+000003FC
	c.add	t1,t2
	c.srli	a5,00000018
	lw	t1,t1,+00000000
	c.slli	a5,02
	c.add	a5,s2
	c.lw	a5,0(a5)
	xor	a0,a0,t1
	srli	t1,a4,00000006
	c.srli	a4,0000000E
	andi	a4,a4,+000003FC
	xor	a5,a5,a7
	c.add	a4,t2
	lw	a7,s0,-00000004
	c.lw	a4,0(a4)
	andi	t1,t1,+000003FC
	xor	a5,a5,a7
	c.add	t1,t0
	lw	t1,t1,+00000000
	c.xor	a5,a4
	lw	a4,t3,+00000000
	xor	a0,a0,t1
	srli	t6,a1,00000010
	c.xor	a5,a4
	srli	t5,a0,00000008
	srli	t4,a0,00000010
	srli	t3,a5,00000008
	srli	t1,a5,00000010
	srli	a7,a3,00000008
	srli	s6,a1,00000018
	andi	s3,a1,+000000FF
	c.srli	a3,00000010
	c.srli	a1,00000008
	andi	a4,a5,+000000FF
	srli	s4,a0,00000018
	andi	t6,t6,+000000FF
	andi	t5,t5,+000000FF
	lw	s10,s0,+00000000
	andi	t4,t4,+000000FF
	andi	t3,t3,+000000FF
	andi	t1,t1,+000000FF
	andi	a7,a7,+000000FF
	c.srli	a5,00000018
	andi	a3,a3,+000000FF
	andi	a1,a1,+000000FF
	andi	a0,a0,+000000FF
	beq	s7,zero,00000000230216F6

l23021638:
	c.slli	a4,02
	c.slli	s9,02
	c.add	s9,s2
	add	s11,s1,a4
	lw	a4,s9,+00000000
	lw	s9,s11,+00000000
	c.slli	t6,02
	c.add	t6,t2
	xor	a4,a4,s9
	c.slli	t5,02
	xor	a4,a4,s10
	c.add	t5,t0
	lw	s10,t6,+00000000
	lw	t5,t5,+00000000
	c.slli	s6,02
	c.slli	s5,02
	xor	a4,a4,s10
	c.add	s6,s2
	c.add	s5,s1
	lw	t6,s5,+00000000
	xor	a4,a4,t5
	lw	t5,s6,+00000000
	c.slli	t4,02
	c.add	t4,t2
	xor	t5,t5,t6
	c.slli	t3,02
	lw	t6,s0,+00000004
	lw	t4,t4,+00000000
	c.add	t3,t0
	c.slli	a5,02
	c.slli	a0,02
	lw	t3,t3,+00000000
	c.add	a5,s2
	c.add	a0,s1
	xor	t5,t5,t6
	c.lw	a0,0(a0)
	c.slli	s4,02
	c.slli	s3,02
	c.lw	a5,0(a5)
	xor	t4,t5,t4
	c.add	s4,s2
	c.add	s3,s1
	lw	t5,s3,+00000000
	xor	t3,t4,t3
	c.slli	a3,02
	lw	t4,s4,+00000000
	c.xor	a5,a0
	c.add	a3,t2
	c.lw	s0,12(a0)
	c.lw	a3,0(a3)
	c.slli	t1,02
	xor	t4,t4,t5
	c.add	t1,t2
	lw	t5,s0,+00000008
	c.slli	a7,02
	c.slli	a1,02
	lw	t1,t1,+00000000
	c.add	a7,t0
	c.xor	a5,a0
	c.add	a1,t0
	c.xor	a5,a3
	lw	a7,a7,+00000000
	c.lw	a1,0(a3)
	xor	t4,t4,t5
	xor	t1,t4,t1
	xor	a7,t1,a7
	c.xor	a5,a3
	c.j	00000000230214E2

l230216F6:
	lui	t0,0002307B
	addi	t0,t0,-000001EC
	c.slli	a6,05
	c.add	s9,t0
	c.add	t6,t0
	c.add	s8,a6
	lbu	t6,t6,+00000000
	lbu	a6,s9,+00000000
	c.add	a4,t0
	lbu	a4,a4,+00000000
	c.slli	a6,18
	c.slli	t6,10
	xor	a6,a6,t6
	c.add	t5,t0
	xor	a4,a6,a4
	lbu	a6,t5,+00000000
	c.add	s6,t0
	c.add	t4,t0
	c.slli	a6,08
	xor	a4,a4,a6
	xor	s10,a4,s10
	srli	a4,s10,00000018
	sb	a4,a2,+00000000
	srli	a4,s10,00000010
	sb	a4,a2,+00000001
	srli	a4,s10,00000008
	sb	a4,a2,+00000002
	lbu	a6,t4,+00000000
	lbu	a4,s6,+00000000
	c.add	s5,t0
	c.slli	a6,10
	c.slli	a4,18
	xor	a4,a4,a6
	lbu	a6,s5,+00000000
	c.add	t3,t0
	sb	s10,a2,+00000003
	xor	a4,a4,a6
	lbu	a6,t3,+00000000
	c.add	s4,t0
	c.add	t1,t0
	c.slli	a6,08
	xor	a4,a4,a6
	lw	a6,s8,+00000004
	c.add	s3,t0
	c.add	a7,t0
	xor	a4,a4,a6
	srli	a6,a4,00000018
	sb	a6,a2,+00000004
	srli	a6,a4,00000010
	sb	a6,a2,+00000005
	srli	a6,a4,00000008
	sb	a6,a2,+00000006
	sb	a4,a2,+00000007
	lbu	a6,t1,+00000000
	lbu	a4,s4,+00000000
	c.add	a5,t0
	c.slli	a6,10
	c.slli	a4,18
	xor	a4,a4,a6
	lbu	a6,s3,+00000000
	c.add	a3,t0
	lbu	a5,a5,+00000000
	xor	a4,a4,a6
	lbu	a6,a7,+00000000
	c.slli	a5,18
	c.add	a0,t0
	c.slli	a6,08
	xor	a4,a4,a6
	lw	a6,s8,+00000008
	c.add	a1,t0
	xor	a4,a4,a6
	srli	a6,a4,00000018
	sb	a6,a2,+00000008
	srli	a6,a4,00000010
	sb	a6,a2,+00000009
	sb	a4,a2,+0000000B
	srli	a6,a4,00000008
	lbu	a4,a3,+00000000
	sb	a6,a2,+0000000A
	c.slli	a4,10
	c.xor	a5,a4
	lbu	a4,a0,+00000000
	c.xor	a5,a4
	lbu	a4,a1,+00000000
	c.slli	a4,08
	c.xor	a5,a4
	lw	a4,s8,+0000000C
	c.xor	a5,a4
	srli	a4,a5,00000018
	sb	a4,a2,+0000000C
	srli	a4,a5,00000010
	sb	a4,a2,+0000000D
	c.lwsp	a2,00000114
	srli	a4,a5,00000008
	sb	a4,a2,+0000000E
	sb	a5,a2,+0000000F
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

;; Bl_SHA1ProcessMessageBlock: 2302184A
;;   Called from:
;;     23021BB2 (in Bl_SHA1Final)
;;     23021C04 (in Bl_SHA1Final)
;;     23021D34 (in Bl_SHA1Update)
Bl_SHA1ProcessMessageBlock proc
	addi	a2,a0,+0000001C
	c.mv	a4,a2
	addi	a1,a0,+0000005C

l23021854:
	lbu	a5,a4,+00000040
	lbu	a3,a4,+00000041
	c.addi	a4,00000004
	c.slli	a5,18
	c.slli	a3,10
	c.or	a5,a3
	lbu	a3,a4,+0000003E
	c.slli	a3,08
	c.or	a5,a3
	lbu	a3,a4,+0000003F
	c.or	a5,a3
	sw	a5,a4,+00000FFC
	bne	a1,a4,0000000023021854

l2302187A:
	lw	a6,a0,+00000000
	lw	t3,a0,+00000004
	lw	t1,a0,+00000008
	lw	t4,a0,+0000000C
	lw	t6,a0,+00000010
	lui	t5,0005A828
	c.li	a5,00000000
	addi	t5,t5,-00000667
	c.li	t0,00000014

l2302189A:
	xor	a3,t1,t4
	and	a3,a3,t3
	xor	a1,a3,t4
	srli	a4,a6,0000001B
	slli	a3,a6,00000005
	c.or	a3,a4
	add	a4,a3,t5
	add	a3,a1,a4
	andi	a4,a5,+00000030
	beq	a4,zero,0000000023021AF2

l230218C0:
	addi	a4,a5,+0000000D
	addi	a1,a5,+00000008
	c.andi	a4,0000000F
	c.andi	a1,0000000F
	c.slli	a4,02
	c.slli	a1,02
	c.add	a4,a2
	c.add	a1,a2
	c.lw	a1,0(a1)
	c.lw	a4,0(a4)
	andi	a7,a5,+0000000F
	c.slli	a7,02
	c.add	a7,a2
	c.xor	a4,a1
	lw	a1,a7,+00000000
	c.xor	a4,a1
	addi	a1,a5,+00000002
	c.andi	a1,0000000F
	c.slli	a1,02
	c.add	a1,a2
	c.lw	a1,0(a1)
	c.xor	a4,a1
	slli	a1,a4,00000001
	c.srli	a4,0000001F
	c.or	a4,a1
	sw	a4,a7,+00000000

l23021902:
	c.add	a4,a3
	slli	a7,t3,0000001E
	srli	a3,t3,00000002
	c.addi	a5,00000001
	c.add	a4,t6
	or	a7,a7,a3
	c.mv	t3,a6
	c.mv	t6,t4
	bne	a5,t0,0000000023021AEA

l2302191C:
	lui	t5,0006ED9F
	addi	t5,t5,-0000045F
	addi	t6,zero,+00000028

l23021928:
	addi	a1,a5,+0000000D
	addi	a3,a5,+00000008
	c.andi	a1,0000000F
	c.andi	a3,0000000F
	c.slli	a1,02
	c.slli	a3,02
	c.add	a1,a2
	c.add	a3,a2
	c.lw	a3,0(a3)
	andi	t3,a5,+0000000F
	c.lw	a1,0(a1)
	c.slli	t3,02
	c.add	t3,a2
	c.xor	a1,a3
	lw	a3,t3,+00000000
	srli	t0,a4,0000001B
	c.xor	a1,a3
	addi	a3,a5,+00000002
	c.andi	a3,0000000F
	c.slli	a3,02
	c.add	a3,a2
	c.lw	a3,0(a3)
	c.addi	a5,00000001
	c.xor	a1,a3
	slli	a3,a1,00000001
	c.srli	a1,0000001F
	c.or	a1,a3
	sw	a1,t3,+00000000
	slli	t3,a4,00000005
	xor	a3,a6,a7
	or	t3,t3,t0
	c.add	t3,t5
	xor	a3,a3,t1
	c.add	a3,t3
	c.add	a3,a1
	slli	t3,a6,0000001E
	srli	a1,a6,00000002
	c.add	a3,t4
	or	t3,t3,a1
	c.mv	a6,a4
	c.mv	t4,t1
	bne	a5,t6,0000000023021AFC

l2302199C:
	lui	t5,0008F1BC
	addi	t5,t5,-00000324
	addi	t6,zero,+0000003C

l230219A8:
	addi	a6,a5,+0000000D
	addi	a1,a5,+00000008
	andi	a6,a6,+0000000F
	c.andi	a1,0000000F
	c.slli	a6,02
	c.slli	a1,02
	c.add	a6,a2
	c.add	a1,a2
	c.lw	a1,0(a1)
	andi	t4,a5,+0000000F
	lw	a6,a6,+00000000
	c.slli	t4,02
	c.add	t4,a2
	xor	a6,a6,a1
	lw	a1,t4,+00000000
	srli	t0,a3,0000001B
	xor	a6,a6,a1
	addi	a1,a5,+00000002
	c.andi	a1,0000000F
	c.slli	a1,02
	c.add	a1,a2
	c.lw	a1,0(a1)
	c.addi	a5,00000001
	xor	a6,a6,a1
	slli	a1,a6,00000001
	srli	a6,a6,0000001F
	or	a6,a6,a1
	or	a1,t3,a7
	sw	a6,t4,+00000000
	c.and	a1,a4
	and	t4,t3,a7
	or	a1,a1,t4
	slli	t4,a3,00000005
	or	t4,t4,t0
	c.add	t4,t5
	c.add	a1,t4
	c.add	a1,a6
	slli	t4,a4,0000001E
	srli	a6,a4,00000002
	c.add	a1,t1
	or	t4,t4,a6
	c.mv	a4,a3
	c.mv	t1,a7
	bne	a5,t6,0000000023021B04

l23021A30:
	lui	t5,000CA62C
	addi	t5,t5,+000001D6
	addi	t6,zero,+00000050

l23021A3C:
	addi	a4,a5,+0000000D
	addi	a6,a5,+00000008
	c.andi	a4,0000000F
	andi	a6,a6,+0000000F
	c.slli	a4,02
	c.slli	a6,02
	c.add	a4,a2
	c.add	a6,a2
	lw	a6,a6,+00000000
	andi	t1,a5,+0000000F
	c.lw	a4,0(a4)
	c.slli	t1,02
	c.add	t1,a2
	xor	a4,a4,a6
	lw	a6,t1,+00000000
	srli	t0,a1,0000001B
	xor	a4,a4,a6
	addi	a6,a5,+00000002
	andi	a6,a6,+0000000F
	c.slli	a6,02
	c.add	a6,a2
	lw	a6,a6,+00000000
	c.addi	a5,00000001
	xor	a4,a4,a6
	slli	a6,a4,00000001
	c.srli	a4,0000001F
	or	a4,a4,a6
	sw	a4,t1,+00000000
	slli	t1,a1,00000005
	xor	a6,a3,t4
	or	t1,t1,t0
	xor	a6,a6,t3
	c.add	t1,t5
	c.add	a6,t1
	c.add	a4,a6
	c.add	a4,a7
	slli	a6,a3,0000001E
	srli	a7,a3,00000002
	or	a6,a6,a7
	c.mv	a3,a1
	c.mv	a7,t3
	bne	a5,t6,0000000023021B0C

l23021AC0:
	c.lw	a0,0(a5)
	sh	zero,a0,+0000009C
	c.add	a4,a5
	c.lw	a0,4(a5)
	c.sw	a0,0(a4)
	c.add	a1,a5
	c.lw	a0,8(a5)
	c.sw	a0,4(a1)
	c.add	a6,a5
	c.lw	a0,12(a5)
	sw	a6,a0,+00000008
	c.add	t4,a5
	c.lw	a0,16(a5)
	sw	t4,a0,+0000000C
	c.add	t3,a5
	sw	t3,a0,+00000010
	c.jr	ra

l23021AEA:
	c.mv	t4,t1
	c.mv	a6,a4
	c.mv	t1,a7
	c.j	000000002302189A

l23021AF2:
	slli	a4,a5,00000002
	c.add	a4,a0
	c.lw	a4,28(a4)
	c.j	0000000023021902

l23021AFC:
	c.mv	t1,a7
	c.mv	a4,a3
	c.mv	a7,t3
	c.j	0000000023021928

l23021B04:
	c.mv	a7,t3
	c.mv	a3,a1
	c.mv	t3,t4
	c.j	00000000230219A8

l23021B0C:
	c.mv	t3,t4
	c.mv	a1,a4
	c.mv	t4,a6
	c.j	0000000023021A3C

;; Bl_SHA1Init: 23021B14
;;   Called from:
;;     23020094 (in Bl_hmac_sha1)
;;     230200EC (in Bl_hmac_sha1)
;;     23020142 (in Bl_hmac_sha1)
Bl_SHA1Init proc
	c.beqz	a0,0000000023021B58

l23021B16:
	lui	a5,00067452
	addi	a5,a5,+00000301
	c.sw	a0,0(a5)
	lui	a5,000EFCDB
	addi	a5,a5,-00000477
	c.sw	a0,4(a5)
	lui	a5,00098BAE
	addi	a5,a5,-00000302
	c.sw	a0,8(a5)
	lui	a5,00010325
	addi	a5,a5,+00000476
	c.sw	a0,12(a5)
	lui	a5,000C3D2E
	addi	a5,a5,+000001F0
	sw	zero,a0,+00000014
	sw	zero,a0,+00000018
	c.sw	a0,16(a5)
	sw	zero,a0,+0000009C
	c.li	a0,00000000
	c.jr	ra

l23021B58:
	c.li	a0,00000001
	c.jr	ra

;; Bl_SHA1Final: 23021B5C
;;   Called from:
;;     230200A6 (in Bl_hmac_sha1)
;;     23020106 (in Bl_hmac_sha1)
;;     23020160 (in Bl_hmac_sha1)
Bl_SHA1Final proc
	c.li	a5,00000001
	beq	a0,zero,0000000023021CA4

l23021B62:
	beq	a1,zero,0000000023021CA4

l23021B66:
	lbu	a5,a0,+0000009F
	bne	a5,zero,0000000023021CA4

l23021B6E:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lbu	a5,a0,+0000009E
	c.mv	s1,a1
	c.mv	s0,a0
	c.bnez	a5,0000000023021C28

l23021B80:
	lh	a4,a0,+0000009C
	addi	a2,zero,+00000037
	addi	a5,a4,+00000001
	c.slli	a5,10
	c.srai	a5,00000010
	sh	a5,a0,+0000009C
	add	a3,a0,a4
	addi	a5,zero,-00000080
	sb	a5,a3,+0000005C
	bge	a2,a4,0000000023021C88

l23021BA4:
	addi	a4,zero,+0000003F

l23021BA8:
	lh	a5,s0,+0000009C
	bge	a4,a5,0000000023021C68

l23021BB0:
	c.mv	a0,s0
	jal	ra,000000002302184A
	addi	a4,zero,+00000037

l23021BBA:
	lh	a5,s0,+0000009C
	bge	a4,a5,0000000023021C78

l23021BC2:
	lhu	a5,s0,+00000018
	c.mv	a0,s0
	slli	a4,a5,00000008
	c.srli	a5,00000008
	c.or	a4,a5
	c.lw	s0,24(a5)
	sh	a4,s0,+00000096
	srli	a3,a5,00000018
	c.srli	a5,00000010
	sb	a5,s0,+00000095
	lhu	a5,s0,+00000014
	sb	a3,s0,+00000094
	slli	a4,a5,00000008
	c.srli	a5,00000008
	c.or	a4,a5
	c.lw	s0,20(a5)
	sh	a4,s0,+0000009A
	srli	a3,a5,00000018
	c.srli	a5,00000010
	sb	a5,s0,+00000099
	sb	a3,s0,+00000098
	jal	ra,000000002302184A
	addi	a5,s0,+0000005C
	addi	a4,s0,+0000009C

l23021C10:
	sb	zero,a5,+00000000
	c.addi	a5,00000001
	bne	a4,a5,0000000023021C10

l23021C1A:
	c.li	a5,00000001
	sw	zero,s0,+00000014
	sw	zero,s0,+00000018
	sb	a5,s0,+0000009E

l23021C28:
	c.li	a5,00000000
	c.li	a2,00000014

l23021C2C:
	andi	a3,a5,-00000004
	c.add	a3,s0
	xori	a4,a5,-00000001
	c.lw	a3,0(a3)
	c.andi	a4,00000003
	c.slli	a4,03
	add	a1,s1,a5
	srl	a4,a3,a4
	sb	a4,a1,+00000000
	c.addi	a5,00000001
	bne	a5,a2,0000000023021C2C

l23021C4E:
	c.mv	a0,s0
	addi	a2,zero,+000000A0
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a5,00000000
	c.lwsp	tp,00000024
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23021C68:
	addi	a3,a5,+00000001
	sh	a3,s0,+0000009C
	c.add	a5,s0
	sb	zero,a5,+0000005C
	c.j	0000000023021BA8

l23021C78:
	addi	a3,a5,+00000001
	sh	a3,s0,+0000009C
	c.add	a5,s0
	sb	zero,a5,+0000005C
	c.j	0000000023021BBA

l23021C88:
	addi	a4,zero,+00000037

l23021C8C:
	lh	a5,s0,+0000009C
	blt	a4,a5,0000000023021BC2

l23021C94:
	addi	a3,a5,+00000001
	sh	a3,s0,+0000009C
	c.add	a5,s0
	sb	zero,a5,+0000005C
	c.j	0000000023021C8C

l23021CA4:
	c.mv	a0,a5
	c.jr	ra

;; Bl_SHA1Update: 23021CA8
;;   Called from:
;;     2302009E (in Bl_hmac_sha1)
;;     230200F8 (in Bl_hmac_sha1)
;;     2302014E (in Bl_hmac_sha1)
;;     23020158 (in Bl_hmac_sha1)
;;     230201B0 (in Bl_hmac_sha1)
Bl_SHA1Update proc
	c.bnez	a2,0000000023021CAE

l23021CAA:
	c.li	a0,00000000
	c.jr	ra

l23021CAE:
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.mv	s0,a0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.li	a0,00000001
	c.beqz	s0,0000000023021CF0

l23021CC0:
	c.beqz	a1,0000000023021CF0

l23021CC2:
	lbu	a5,s0,+0000009E
	c.beqz	a5,0000000023021CD2

l23021CC8:
	c.li	a5,00000003
	sb	a5,s0,+0000009F
	c.li	a0,00000003
	c.j	0000000023021CF0

l23021CD2:
	lbu	a5,s0,+0000009F
	c.mv	a0,a5
	c.bnez	a5,0000000023021CF0

l23021CDA:
	add	s1,a1,a2
	c.li	s2,00000001
	addi	s3,zero,+00000040

l23021CE4:
	beq	a1,s1,0000000023021CEE

l23021CE8:
	lbu	a5,s0,+0000009F
	c.beqz	a5,0000000023021CFE

l23021CEE:
	c.li	a0,00000000

l23021CF0:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23021CFE:
	lh	a4,s0,+0000009C
	addi	a5,a4,+00000001
	c.slli	a5,10
	c.srai	a5,00000010
	sh	a5,s0,+0000009C
	lbu	a3,a1,+00000000
	c.add	a4,s0
	sb	a3,a4,+0000005C
	c.lw	s0,20(a4)
	c.addi	a4,00000008
	c.sw	s0,20(a4)
	c.bnez	a4,0000000023021D2C

l23021D20:
	c.lw	s0,24(a4)
	c.addi	a4,00000001
	c.sw	s0,24(a4)
	c.bnez	a4,0000000023021D2C

l23021D28:
	sb	s2,s0,+0000009F

l23021D2C:
	bne	a5,s3,0000000023021D3A

l23021D30:
	c.mv	a0,s0
	c.swsp	a1,00000084
	jal	ra,000000002302184A
	c.lwsp	a2,00000064

l23021D3A:
	c.addi	a1,00000001
	c.j	0000000023021CE4

;; supplicantRestoreDefaults: 23021D3E
;;   Called from:
;;     23021DC8 (in supplicantFuncInit)
supplicantRestoreDefaults proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	lui	s1,0002307B
	srl	a1,a1,s0
	lui	a0,00023076
	addi	a2,s1,-000000C4
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	jal	ra,0000000023011A1A
	jal	ra,0000000023011A96
	lw	a1,s2,+00000120
	lui	a0,00023076
	addi	a2,s1,-000000C4
	srl	a1,a1,s0
	addi	a0,a0,-00000288
	jal	ra,000000002301F8C0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; supplicantFuncInit: 23021D9A
;;   Called from:
;;     2301BF0A (in bl_init)
supplicantFuncInit proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lui	s2,00044B00
	lw	a1,s2,+00000120
	addi	s0,zero,+000003E8
	lui	s1,0002307B
	srl	a1,a1,s0
	lui	a0,00023076
	addi	a2,s1,-000000A8
	addi	a0,a0,-0000029C
	jal	ra,000000002301F8C0
	jal	ra,0000000023021D3E
	lw	a1,s2,+00000120
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	srl	a1,a1,s0
	c.lwsp	s0,00000004
	addi	a2,s1,-000000A8
	c.lwsp	tp,00000024
	lui	a0,00023076
	addi	a0,a0,-00000288
	c.addi	sp,00000010
	jal	zero,000000002301F8C0

;; ap_setpsk: 23021DEE
;;   Called from:
;;     2301F59C (in apm_start_req_handler)
ap_setpsk proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.mv	s1,a2
	jal	ra,000000002301306C
	c.beqz	a0,0000000023021E3C

l23021E00:
	c.lwsp	a2,00000064
	c.mv	s0,a0
	c.mv	a0,a1
	jal	ra,000000002307132C
	c.lwsp	a2,00000064
	sb	a0,s0,+000000A4
	addi	a2,zero,+00000020
	addi	a0,s0,+00000084
	jal	ra,0000000023070C7C
	c.mv	a0,s1
	jal	ra,000000002307132C
	sb	a0,s0,+00000058
	addi	a0,s0,+00000018
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a1,s1
	c.lwsp	s4,00000024
	addi	a2,zero,+00000040
	c.addi16sp	00000020
	jal	zero,0000000023070C7C

l23021E3C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; ap_resetConfiguration: 23021E46
;;   Called from:
;;     23021EDE (in InitializeAp)
ap_resetConfiguration proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	jal	ra,000000002301306C
	c.mv	s0,a0
	c.mv	a0,s1
	jal	ra,0000000023013080
	c.beqz	s0,0000000023021ED4

l23021E5E:
	c.beqz	a0,0000000023021ED4

l23021E60:
	lui	s1,0002307B
	addi	a0,s1,-00000094
	jal	ra,000000002307132C
	addi	a1,s1,-00000094
	sb	a0,s0,+000000A4
	addi	a2,zero,+00000020
	addi	a0,s0,+00000084
	jal	ra,0000000023070C7C
	c.li	s1,00000001
	sw	s1,s0,+000000B8
	addi	a2,zero,+0000007C
	c.li	a1,00000000
	addi	a0,s0,+00000008
	jal	ra,0000000023070EB8
	lhu	a5,s0,+00000008
	sh	s1,s0,+00000010
	andi	a5,a5,+000000F7
	ori	a5,a5,+00000108
	sh	a5,s0,+00000008
	lhu	a5,s0,+0000000C
	andi	a5,a5,+000000F7
	ori	a5,a5,+00000108
	sh	a5,s0,+0000000C
	c.li	a5,00000003
	sb	a5,s0,+00000079
	sb	a5,s0,+0000007A
	addi	a5,zero,+00000064
	c.sw	s0,124(a5)
	sw	a5,s0,+00000080
	c.lui	a5,00015000
	addi	a5,a5,+00000180
	c.sw	s0,20(a5)

l23021ED4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; InitializeAp: 23021EDE
;;   Called from:
;;     230130CA (in cm_AllocAPResources)
InitializeAp proc
	jal	zero,0000000023021E46

;; bl60x_check_mac_status: 23021EE2
;;   Called from:
;;     23025D12 (in stateDisconnect_enter)
bl60x_check_mac_status proc
	lui	a5,0004200E
	lbu	a3,a5,-0000029C
	lui	a5,00042012
	addi	a5,a5,+0000001C
	c.li	a4,00000000
	lui	a2,0008801E

l23021EF8:
	blt	a4,a3,0000000023021F02

l23021EFC:
	sw	zero,a0,+00000000
	c.j	0000000023021F12

l23021F02:
	addi	a5,a5,+00000028
	lw	a1,a5,-00000014
	beq	a1,a2,0000000023021F16

l23021F0E:
	c.li	a5,00000001
	c.sw	a0,0(a5)

l23021F12:
	c.li	a0,00000000
	c.jr	ra

l23021F16:
	c.addi	a4,00000001
	c.j	0000000023021EF8

;; helper_record_dump: 23021F1A
;;   Called from:
;;     23025D2E (in stateDisconnect_enter)
helper_record_dump proc
	c.addi16sp	FFFFFFD0
	lui	a0,0002307B
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	addi	a0,a0,-00000080
	lui	s0,00042012
	lui	s2,0002307B
	lui	s3,0002307B
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	addi	s0,s0,+0000001C
	jal	ra,00000000230520DC
	c.li	s1,00000000
	lui	s6,0004200E
	lui	s7,0002307B
	lui	s4,0002307B
	lui	s5,0002307B
	addi	s2,s2,+000000A4
	addi	s3,s3,+00000084

l23021F64:
	lbu	a5,s6,-0000029C
	blt	s1,a5,0000000023021F8C

l23021F6C:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	lui	a0,0002307B
	addi	a0,a0,+0000007C
	c.addi16sp	00000030
	jal	zero,0000000023052118

l23021F8C:
	c.lw	s0,4(a3)
	c.lw	s0,0(a2)
	c.mv	a1,s1
	addi	a0,s7,-00000060
	jal	ra,0000000023052118
	c.lw	s0,20(a2)
	lbu	a4,s0,+00000017
	c.lw	s0,20(a1)
	srli	a3,a2,00000008
	andi	a3,a3,+000001FF
	andi	a2,a2,+0000003F
	addi	a0,s4,-00000044
	jal	ra,0000000023052118
	lhu	a4,s0,+0000001E
	lhu	a3,s0,+0000001C
	lhu	a2,s0,+0000001A
	lhu	a1,s0,+00000018
	addi	a0,s5,-00000008
	c.addi	s1,00000001
	jal	ra,0000000023052118
	lhu	a4,s0,+00000026
	lhu	a3,s0,+00000024
	lhu	a2,s0,+00000022
	lhu	a1,s0,+00000020
	lui	a0,0002307B
	addi	a0,a0,+0000002C
	jal	ra,0000000023052118
	c.lw	s0,12(a4)
	c.lw	s0,8(a5)
	lui	a0,0002307B
	c.slli	a4,02
	c.slli	a5,02
	c.add	a4,s2
	c.add	a5,s3
	c.lw	a4,0(a2)
	c.lw	a5,0(a1)
	addi	a0,a0,+00000068
	addi	s0,s0,+00000028
	jal	ra,0000000023052118
	c.j	0000000023021F64

;; helper_record_rc_rf_states: 2302200E
;;   Called from:
;;     23022094 (in helper_record_all_states)
helper_record_rc_rf_states proc
	lui	a5,00040001
	lw	a3,a5,+00000220
	lui	a4,00010000
	addi	a2,a4,-00000001
	c.and	a3,a2
	c.or	a3,a4
	sw	a3,a5,+00000220
	lw	a4,a5,+00000224
	lw	a4,a5,+00000220
	lui	a3,00020000
	c.addi	sp,FFFFFFF0
	c.and	a4,a2
	c.or	a4,a3
	sw	a4,a5,+00000220
	lw	a5,a5,+00000224
	srli	a4,a5,0000001C
	c.andi	a4,00000007
	c.srli	a5,00000019
	c.sw	a0,0(a4)
	c.andi	a5,00000007
	c.sw	a1,0(a5)
	c.addi	sp,00000010
	c.jr	ra

;; helper_record_all_states: 23022052
;;   Called from:
;;     2301AD04 (in hal_machw_reset)
helper_record_all_states proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	lui	s2,0004200E
	addi	s2,s2,-0000029C
	lbu	a5,s2,+00000000
	addi	a2,zero,+00000028
	c.swsp	s0,00000004
	add	a5,a5,a2
	lui	s0,00044B00
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	lui	a4,00042012
	lw	a3,s0,+00000120
	addi	a4,a4,+0000001C
	add	s1,a4,a5
	c.sw	s1,4(a0)
	addi	a1,a5,+0000000C
	addi	a0,a5,+00000008
	c.sw	s1,0(a3)
	c.add	a1,a4
	c.add	a0,a4
	jal	ra,000000002302200E
	lw	a5,s0,+00000500
	c.lui	a2,FFFF0000
	c.sw	s1,16(a5)
	lw	a5,s0,+00000504
	c.sw	s1,20(a5)
	lw	a5,s0,+00000510
	andi	a5,a5,-00000100
	ori	a5,a5,+00000031
	sw	a5,s0,+00000510
	lw	a3,s0,+00000510
	addi	a5,a2,+000000FF
	c.and	a3,a5
	sw	a3,s0,+00000510
	lw	a4,s0,+0000050C
	c.sw	s1,24(a4)
	lw	a3,s0,+00000510
	andi	a3,a3,-00000100
	ori	a3,a3,+0000000B
	sw	a3,s0,+00000510
	lw	a4,s0,+00000510
	c.lui	a3,00003000
	addi	a3,a3,-00000100
	c.and	a4,a5
	c.or	a4,a3
	sw	a4,s0,+00000510
	lw	a5,s0,+0000050C
	lui	a4,00044900
	c.sw	s1,28(a5)
	addi	a5,zero,+0000033A
	c.sw	a4,116(a5)
	c.lw	a4,104(a5)
	c.and	a5,a2
	ori	a5,a5,+00000014
	c.sw	a4,104(a5)
	lui	a5,00040000
	lw	a3,a5,+000000D0
	c.li	a3,00000004
	sw	a3,a5,+000000D0
	lw	a3,a5,+000000D4
	addi	a3,a5,+00000004
	sw	a3,a5,+000000D4
	lw	a3,a5,+000000D8
	lui	a3,00080000
	c.addi	a3,00000004
	sw	a3,a5,+000000D8
	lw	a3,a5,+000000DC
	lui	a3,000C0000
	c.addi	a3,00000004
	sw	a3,a5,+000000DC
	lw	a3,a5,+000000E0
	c.andi	a3,FFFFFFFE
	sw	a3,a5,+000000E0
	lw	a3,a5,+000000E0
	srli	a2,a3,00000011
	c.srli	a3,00000001
	sh	a3,s1,+00000022
	c.lui	a3,00001000
	sh	a2,s1,+00000020
	addi	a3,a3,-000004F7
	c.sw	a4,116(a3)
	lw	a4,a5,+000000E0
	c.andi	a4,FFFFFFFE
	sw	a4,a5,+000000E0
	lw	a5,a5,+000000E0
	srli	a4,a5,00000011
	c.srli	a5,00000001
	sh	a5,s1,+00000024
	lbu	a5,s2,+00000000
	sh	a4,s1,+00000026
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	a5,00000001
	c.andi	a5,0000000F
	sb	a5,s2,+00000000
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; ipc_emb2app_rawstatus_get: 23022194
;;   Called from:
;;     2302226A (in ipc_host_get_rawstatus)
ipc_emb2app_rawstatus_get proc
	lui	a5,00044800
	c.lw	a5,4(a0)
	c.jr	ra

;; ipc_host_init: 2302219C
;;   Called from:
;;     23024B5A (in bl_ipc_init)
ipc_host_init proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004200E
	c.swsp	s3,00000084
	c.mv	s3,a1
	lw	a1,a5,-000006F8
	lui	a5,0004200E
	c.swsp	s1,00000088
	c.mv	s1,a2
	lw	a2,a5,-000006C8
	c.swsp	s0,0000000C
	c.mv	s0,a0
	lui	a0,0002307B
	c.swsp	s2,00000008
	addi	a0,a0,+00000144
	c.mv	s2,a3
	add	a3,a1,a2
	c.swsp	ra,0000008C
	jal	ra,0000000023052118
	lui	a0,0004201E
	addi	a0,a0,+00000440
	jal	ra,000000002304B966
	addi	a2,zero,+000000E4
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070EB8
	c.mv	a1,s3
	c.sw	s0,32(s1)
	addi	a2,zero,+00000020
	c.mv	a0,s0
	jal	ra,0000000023070C7C
	c.li	a5,00000002
	c.sw	s0,56(a5)
	sb	a5,s0,+00000035
	c.li	a5,00000008
	sw	a5,s0,+000000A4
	c.lui	a2,00001000
	addi	a5,zero,+000003E0
	sw	a5,s0,+000000A8
	addi	a4,a2,-00000800
	addi	a5,s0,+00000048
	addi	a0,s1,+00000204
	sw	s2,s0,+000000E0
	c.sw	s0,60(a4)
	c.sw	s0,88(a5)
	c.sw	s0,92(a0)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	addi	a2,a2,-00000340
	c.li	a1,00000000
	c.addi16sp	00000020
	jal	zero,0000000023070EB8

;; ipc_host_msg_push: 2302223A
;;   Called from:
;;     23028D86 (in cmd_mgr_llind)
;;     23028EA0 (in cmd_mgr_queue)
ipc_host_msg_push proc
	c.lw	a1,12(a3)
	c.lw	a0,32(a4)
	c.li	a5,00000000

l23022240:
	blt	a5,a2,0000000023022254

l23022244:
	sw	a1,a0,+000000B0
	lui	a5,00044800
	c.li	a4,00000002
	c.sw	a5,0(a4)
	c.li	a0,00000000
	c.jr	ra

l23022254:
	add	a6,a3,a5
	lw	a7,a6,+00000000
	add	a6,a4,a5
	c.addi	a5,00000004
	sw	a7,a6,+00000004
	c.j	0000000023022240

;; ipc_host_get_rawstatus: 23022268
;;   Called from:
;;     23029006 (in bl_irq_bottomhalf)
;;     2302902C (in bl_irq_bottomhalf)
;;     23029048 (in bl_irq_bottomhalf)
ipc_host_get_rawstatus proc
	c.lw	a0,32(a0)
	jal	zero,0000000023022194

;; ipc_host_txdesc_get: 2302226E
;;   Called from:
;;     23024326 (in bl_tx_push)
;;     230243BE (in bl_tx_resend)
;;     23024416 (in bl_tx_try_flush)
ipc_host_txdesc_get proc
	c.lw	a0,68(a4)
	c.lw	a0,64(a5)
	bgeu	a5,a4,0000000023022284

l23022276:
	lui	a3,0004200E
	addi	a3,a3,-00000298
	c.lw	a3,0(a2)
	c.addi	a2,00000001
	c.sw	a3,0(a2)

l23022284:
	addi	a3,a4,+00000004
	beq	a3,a5,00000000230222A8

l2302228C:
	sub	a4,a5,a4
	c.li	a3,00000004
	c.lw	a0,92(a0)
	bltu	a3,a4,00000000230222A6

l23022298:
	addi	a4,zero,+00000330
	c.andi	a5,00000003
	add	a5,a5,a4
	c.add	a0,a5
	c.jr	ra

l230222A6:
	c.j	00000000230222A6

l230222A8:
	c.li	a0,00000000
	c.jr	ra

;; ipc_host_txdesc_push: 230222AC
;;   Called from:
;;     23024360 (in bl_tx_push)
ipc_host_txdesc_push proc
	c.lw	a0,64(a5)
	addi	a4,zero,+00000330
	c.andi	a5,00000003
	add	a3,a5,a4
	c.lw	a0,92(a4)
	c.slli	a5,02
	c.add	a4,a3
	c.li	a3,FFFFFFFF
	c.sw	a4,0(a3)
	c.lw	a0,88(a4)
	c.add	a5,a4
	c.sw	a5,0(a1)
	c.lw	a0,64(a5)
	addi	a4,zero,+00000100
	c.addi	a5,00000001
	c.sw	a0,64(a5)
	lui	a5,00044800
	c.sw	a5,0(a4)
	c.jr	ra

;; ipc_host_irq: 230222DA
;;   Called from:
;;     23029042 (in bl_irq_bottomhalf)
ipc_host_irq proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	a5,00044800
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.sw	a5,8(a1)
	c.lw	a5,28(s1)
	c.mv	s0,a0
	c.or	s1,a1
	andi	a5,s1,+00000780
	c.beqz	a5,0000000023022350

l230222FE:
	lui	s3,0002307B
	addi	s3,s3,+00000184
	c.li	s4,00000007
	c.li	s6,00000001
	c.li	s5,0000000B

l2302230C:
	sll	a5,s6,s4
	c.and	a5,s1
	c.beqz	a5,0000000023022348

l23022314:
	lw	a5,s3,+00000000
	lw	s2,s0,+00000044
	and	s2,s2,a5
	c.lw	s0,88(a5)
	c.slli	s2,02
	c.add	a5,s2
	c.lw	a5,0(a1)
	c.beqz	a1,0000000023022348

l2302232A:
	c.lw	s0,0(a5)
	lw	a0,s0,+000000E0
	c.jalr	a5
	c.bnez	a0,0000000023022348

l23022334:
	c.lw	s0,88(a5)
	c.add	s2,a5
	sw	zero,s2,+00000000
	c.lw	s0,68(a5)
	c.addi	a5,00000001
	c.sw	s0,68(a5)
	jal	ra,00000000230244C8
	c.j	0000000023022314

l23022348:
	c.addi	s4,00000001
	c.addi	s3,00000004
	bne	s4,s5,000000002302230C

l23022350:
	jal	ra,000000002302437E
	andi	a5,s1,+00000004
	c.beqz	a5,0000000023022374

l2302235A:
	lbu	a5,s0,+000000AC
	lw	a1,s0,+000000B0
	lw	a0,s0,+000000E0
	c.addi	a5,00000001
	sb	a5,s0,+000000AC
	c.lw	s0,16(a5)
	sw	zero,s0,+000000B0
	c.jalr	a5

l23022374:
	andi	a5,s1,+00000001
	c.beqz	a5,0000000023022390

l2302237A:
	lbu	a5,s0,+000000D4
	c.lw	s0,20(a4)
	lw	a0,s0,+000000E0
	c.addi	a5,00000016
	c.slli	a5,03
	c.add	a5,s0
	c.lw	a5,4(a1)
	c.jalr	a4
	c.beqz	a0,000000002302237A

l23022390:
	andi	a5,s1,+00000010
	c.beqz	a5,000000002302239E

l23022396:
	c.lw	s0,24(a5)
	lw	a0,s0,+000000E0
	c.jalr	a5

l2302239E:
	andi	s1,s1,+00000020
	c.beqz	s1,00000000230223C0

l230223A4:
	lw	t1,s0,+0000001C
	lw	a0,s0,+000000E0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	c.jr	t1

l230223C0:
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

;; ipc_host_enable_irq: 230223D4
;;   Called from:
;;     2302299E (in bl_main_rtthread_start)
;;     23029026 (in bl_irq_bottomhalf)
ipc_host_enable_irq proc
	lui	a5,00044800
	c.sw	a5,12(a1)
	c.jr	ra

;; ipc_host_disable_irq_e2a: 230223DC
;;   Called from:
;;     23018FA8 (in bl_irq_handler)
ipc_host_disable_irq_e2a proc
	lui	a5,00044800
	addi	a4,zero,+000007FF
	c.sw	a5,16(a4)
	c.jr	ra

;; bl_main_disconnect: 230223E8
;;   Called from:
;;     23025180 (in stateConnectedIPNoGuard_disconnect)
;;     2302594C (in stateGlobalGuard_fw_disconnect)
bl_main_disconnect proc
	lui	a0,0004201D
	c.addi	sp,FFFFFFF0
	addi	a1,zero,+00000034
	addi	a0,a0,+000005AC
	c.swsp	ra,00000084
	jal	ra,00000000230235CA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_main_powersaving: 23022404
;;   Called from:
;;     230254DC (in stateGlobalGuard_fw_powersaving)
bl_main_powersaving proc
	c.mv	a1,a0
	lui	a0,0004201D
	addi	a0,a0,+000005AC
	jal	zero,0000000023023620

;; bl_main_denoise: 23022412
;;   Called from:
;;     230259A8 (in stateConnectedIPYes_exit)
;;     23025A0E (in stateGlobalGuard_denoise)
;;     23025A2E (in stateGlobalGuard_denoise)
bl_main_denoise proc
	c.mv	a1,a0
	lui	a0,0004201D
	addi	a0,a0,+000005AC
	jal	zero,0000000023023662

;; bl_main_monitor: 23022420
;;   Called from:
;;     23024E6C (in stateIdleGuard_sniffer)
bl_main_monitor proc
	c.addi16sp	FFFFFFC0
	addi	a2,zero,+00000028
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	c.swsp	ra,0000009C
	jal	ra,0000000023070EB8
	lui	a0,0004201D
	c.addi4spn	a1,00000008
	addi	a0,a0,+000005AC
	jal	ra,0000000023022E60
	c.lwsp	t3,00000130
	c.li	a0,00000000
	c.addi16sp	00000040
	c.jr	ra

;; bl_main_phy_up: 23022446
;;   Called from:
;;     23025AA6 (in stateIfaceDownGuard_phyup)
bl_main_phy_up proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201D
	addi	a0,s0,+000005AC
	c.swsp	ra,00000084
	jal	ra,0000000023023142
	c.bnez	a0,0000000023022476

l2302245A:
	c.lui	a5,00001000
	addi	s0,s0,+000005AC
	c.add	s0,a5
	lw	a5,s0,-00000220
	ori	a5,a5,+00000004
	sw	a5,s0,+00000DE0

l2302246E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23022476:
	c.li	a0,FFFFFFFF
	c.j	000000002302246E

;; bl_main_monitor_channel_set: 2302247A
;;   Called from:
;;     23024E4E (in stateSnifferGuard_ChannelSet)
bl_main_monitor_channel_set proc
	c.addi16sp	FFFFFFC0
	c.mv	a2,a0
	lui	a0,0004201D
	c.mv	a3,a1
	addi	a0,a0,+000005AC
	c.addi4spn	a1,00000008
	c.swsp	ra,0000009C
	jal	ra,0000000023022E9C
	c.lwsp	t3,00000130
	c.li	a0,00000000
	c.addi16sp	00000040
	c.jr	ra

;; bl_main_if_remove: 23022498
;;   Called from:
;;     23024EE2 (in stateDisconnect_action_idle)
;;     23025B80 (in stateGlobalGuard_stop)
;;     23025C5C (in stateGlobalGuard_disable_autoreconnect)
bl_main_if_remove proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	a1,a0
	c.mv	s0,a0
	lui	a0,0002307B
	addi	a0,a0,+00000358
	c.swsp	ra,00000084
	jal	ra,0000000023052118
	lui	a0,0004201D
	c.mv	a1,s0
	addi	a0,a0,+000005AC
	jal	ra,0000000023023248
	lui	a0,0002307B
	addi	a0,a0,+00000390
	jal	ra,0000000023052118
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_main_raw_send: 230224D2
;;   Called from:
;;     23025B1C (in stateSnifferGuard_raw_send)
bl_main_raw_send proc
	c.mv	a2,a1
	c.mv	a1,a0
	lui	a0,0004201D
	addi	a0,a0,+000005AC
	jal	zero,0000000023023338

;; bl_main_rate_config: 230224E2
;;   Called from:
;;     230251DA (in stateConnectedIPYesGuard_rcconfig)
bl_main_rate_config proc
	c.mv	a2,a1
	c.mv	a1,a0
	lui	a0,0004201D
	addi	a0,a0,+000005AC
	jal	zero,00000000230230F4

;; bl_main_set_country_code: 230224F2
;;   Called from:
;;     230263A6 (in wifi_mgmr_set_country_code_internal)
bl_main_set_country_code proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023022D90
	lui	a0,0004201D
	addi	a0,a0,+000005AC
	jal	ra,0000000023023022
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_main_get_channel_nums: 2302250E
;;   Called from:
;;     230263C6 (in wifi_mgmr_set_country_code_internal)
bl_main_get_channel_nums proc
	jal	zero,0000000023022E24

;; bl_main_if_add: 23022512
;;   Called from:
;;     23025560 (in stateGlobalGuard_AP)
;;     23025A58 (in stateIdleGuard_connect)
bl_main_if_add proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s3,a0
	c.mv	s2,a1
	c.mv	s4,a2
	c.bnez	a0,0000000023022594

l23022528:
	lui	a1,0002307B
	addi	a1,a1,+000002D0

l23022530:
	lui	a0,0002307B
	addi	a0,a0,+000002D4
	jal	ra,0000000023052118
	sltiu	a2,s3,+00000001
	lui	s0,0004201D
	c.addi4spn	a4,0000000C
	c.li	a3,00000000
	c.addi	a2,00000002
	addi	a1,s2,+0000003A
	addi	a0,s0,+000005AC
	jal	ra,00000000230231B0
	c.mv	s1,a0
	lui	a0,0002307B
	addi	a0,a0,+000002F8
	jal	ra,0000000023052118
	c.bnez	s1,0000000023022582

l23022566:
	lbu	a2,sp,+0000000C
	c.beqz	a2,000000002302259E

l2302256C:
	lui	a1,0002307B
	lui	a0,0002307B
	addi	a1,a1,+00000314
	addi	a0,a0,+0000031C
	jal	ra,0000000023052118
	c.li	s1,FFFFFFFB

l23022582:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23022594:
	lui	a1,0002307B
	addi	a1,a1,+000002CC
	c.j	0000000023022530

l2302259E:
	lui	a5,0004201E
	lbu	a1,sp,+0000000D
	addi	s0,s0,+000005AC
	addi	a5,a5,+000005AC
	beq	s3,zero,00000000230225E0

l230225B2:
	sw	a1,a5,+00000E1C

l230225B6:
	lui	a0,0002307B
	sb	a1,s4,+00000000
	addi	a0,a0,+00000334
	jal	ra,0000000023052118
	lbu	a5,sp,+0000000D
	addi	a4,zero,+000000C4
	add	a5,a5,a4
	c.add	s0,a5
	c.li	a5,00000001
	sw	s2,s0,+00000368
	sb	a5,s0,+000003CF
	c.j	0000000023022582

l230225E0:
	sw	a1,a5,+00000E20
	c.j	00000000230225B6

;; bl_main_apm_start: 230225E6
;;   Called from:
;;     2302562A (in stateGlobalGuard_AP)
bl_main_apm_start proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.mv	s1,a0
	c.mv	s2,a1
	c.mv	s3,a2
	c.li	a1,00000000
	c.li	a2,00000004
	c.addi4spn	a0,0000001C
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	a4,00000084
	c.mv	s0,a3
	jal	ra,0000000023070EB8
	lui	a0,0002307B
	c.mv	a1,s0
	addi	a0,a0,+000001D4
	jal	ra,0000000023052118
	c.lwsp	a2,000000C4
	c.mv	a5,s0
	lui	s0,0004201D
	c.mv	a6,a4
	c.mv	a3,s2
	c.mv	a4,s3
	c.mv	a2,s1
	c.addi4spn	a1,0000001C
	addi	a0,s0,+000005AC
	jal	ra,00000000230236A4
	c.mv	s1,a0
	lui	a0,0002307B
	addi	a0,a0,+00000204
	jal	ra,0000000023052118
	lbu	a1,sp,+0000001C
	lui	a0,0002307B
	addi	a0,a0,+00000220
	jal	ra,0000000023052118
	lbu	a1,sp,+0000001D
	lui	a0,0002307B
	addi	a0,a0,+00000238
	jal	ra,0000000023052118
	lbu	a1,sp,+0000001E
	lui	a0,0002307B
	addi	a0,a0,+00000250
	jal	ra,0000000023052118
	lbu	a1,sp,+0000001F
	lui	a0,0002307B
	addi	a0,a0,+00000268
	jal	ra,0000000023052118
	c.lui	a5,00001000
	addi	s0,s0,+000005AC
	c.add	s0,a5
	lbu	a5,sp,+0000001F
	c.mv	a0,s1
	sw	a5,s0,+00000E28
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

;; bl_main_apm_stop: 2302269C
;;   Called from:
;;     23025B5C (in stateGlobalGuard_stop)
bl_main_apm_stop proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	a1,a0
	c.mv	s0,a0
	lui	a0,0002307B
	addi	a0,a0,+00000280
	c.swsp	ra,00000084
	jal	ra,0000000023052118
	lui	a0,0004201D
	c.mv	a1,s0
	addi	a0,a0,+000005AC
	jal	ra,00000000230237E4
	c.mv	s0,a0
	lui	a0,0002307B
	addi	a0,a0,+000002B0
	jal	ra,0000000023052118
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bl_main_apm_sta_cnt_get: 230226D8
;;   Called from:
;;     230263DC (in wifi_mgmr_ap_sta_cnt_get_internal)
bl_main_apm_sta_cnt_get proc
	c.li	a5,0000000C
	sb	a5,a0,+00000000
	c.li	a0,00000000
	c.jr	ra

;; bl_main_apm_sta_info_get: 230226E2
;;   Called from:
;;     23026402 (in wifi_mgmr_ap_sta_info_get_internal)
bl_main_apm_sta_info_get proc
	c.li	a5,0000001C
	add	a1,a1,a5
	lui	a4,0004201D
	addi	a4,a4,+000005AC
	c.lui	a3,00001000
	add	a5,a4,a1
	c.add	a5,a3
	lbu	a2,a5,-00000368
	c.beqz	a2,000000002302274A

l230226FE:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a2,a5,-00000367
	addi	a3,a3,-00000370
	c.add	a1,a3
	sb	a2,a0,+00000000
	lbu	a2,a5,-00000368
	c.add	a1,a4
	c.addi	a0,00000002
	sb	a2,a0,+00000FFF
	lb	a2,a5,-00000364
	sw	a2,a0,+0000000E
	lw	a2,a5,-00000360
	sw	a2,a0,+0000000A
	lw	a2,a5,-0000035C
	sw	a2,a0,+00000006
	lbu	a5,a5,-00000358
	c.li	a2,00000006
	sb	a5,a0,+00000012
	jal	ra,0000000023070C7C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2302274A:
	c.li	a0,00000000
	c.jr	ra

;; bl_main_apm_sta_delete: 2302274E
;;   Called from:
;;     230227F4 (in bl_main_apm_remove_all_sta)
;;     23026440 (in wifi_mgmr_ap_sta_delete_internal)
bl_main_apm_sta_delete proc
	c.addi16sp	FFFFFFC0
	c.swsp	s2,00000018
	c.li	s2,0000001C
	c.swsp	s3,00000094
	add	s3,a0,s2
	c.swsp	s1,00000098
	c.lui	s1,00001000
	c.swsp	s0,0000001C
	c.swsp	s5,00000090
	addi	s0,s1,-00000370
	lui	s5,0004201D
	addi	s2,s5,+000005AC
	c.swsp	s4,00000014
	c.li	a2,00000003
	c.add	s0,s3
	c.mv	s4,a0
	c.li	a1,00000000
	c.add	s0,s2
	c.addi4spn	a0,0000001C
	c.add	s2,s3
	c.swsp	ra,0000009C
	c.add	s1,s2
	jal	ra,0000000023070EB8
	lbu	a3,s1,-00000366
	lui	a0,0002307B
	c.mv	a1,s4
	c.mv	a2,a3
	addi	a0,a0,+000001A0
	c.swsp	a3,00000084
	jal	ra,0000000023052118
	c.lwsp	a2,000000A4
	c.mv	a2,s4
	c.addi4spn	a1,0000001C
	addi	a0,s5,+000005AC
	jal	ra,000000002302382E
	lbu	a5,sp,+0000001C
	c.li	a0,FFFFFFFF
	c.bnez	a5,00000000230227BE

l230227B2:
	c.li	a2,0000001C
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070EB8
	c.li	a0,00000000

l230227BE:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

;; bl_main_apm_remove_all_sta: 230227D0
;;   Called from:
;;     23025B6C (in stateGlobalGuard_stop)
bl_main_apm_remove_all_sta proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004201E
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	addi	s1,s1,+00000244
	c.li	s0,00000000
	c.li	s3,00000001
	c.li	s2,0000000C

l230227EA:
	lbu	a5,s1,+00000000
	bne	a5,s3,00000000230227F8

l230227F2:
	c.mv	a0,s0
	jal	ra,000000002302274E

l230227F8:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	c.addi	s1,0000001C
	bne	s0,s2,00000000230227EA

l23022804:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; bl_main_conf_max_sta: 23022814
;;   Called from:
;;     23025528 (in stateGlobalGuard_conf_max_sta)
bl_main_conf_max_sta proc
	c.mv	a1,a0
	lui	a0,0004201D
	addi	a0,a0,+000005AC
	jal	zero,0000000023023882

;; bl_main_cfg_task_req: 23022822
;;   Called from:
;;     23025476 (in stateGlobal_cfg_req)
bl_main_cfg_task_req proc
	c.mv	a6,a5
	c.mv	a5,a4
	c.mv	a4,a3
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,a0
	lui	a0,0004201D
	addi	a0,a0,+000005AC
	jal	zero,00000000230238CC

;; bl_main_scan: 2302283A
;;   Called from:
;;     23025D46 (in stateDisconnect_enter)
;;     23025E22 (in stateGlobalGuard_fw_scan)
;;     23025F54 (in stateConnectedIPYes_enter)
bl_main_scan proc
	lui	a0,0004201D
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000005AC
	c.swsp	ra,00000084
	jal	ra,0000000023023286
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_cfg80211_connect: 23022852
;;   Called from:
;;     230228F2 (in bl_main_connect)
bl_cfg80211_connect proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a2,0000000C
	c.swsp	ra,0000008C
	jal	ra,0000000023023384
	c.bnez	a0,0000000023022878

l2302285E:
	lbu	a4,sp,+0000000C
	c.li	a5,00000009
	c.li	a0,FFFFFFFB
	bltu	a5,a4,0000000023022878

l2302286A:
	lui	a5,0002307B
	addi	a5,a5,+00000194
	c.add	a5,a4
	lb	a0,a5,+00000000

l23022878:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; bl_main_connect: 2302287E
;;   Called from:
;;     23025042 (in stateDisconnect_action_reconnect)
;;     230253B8 (in stateIdleAction_connect)
bl_main_connect proc
	c.addi16sp	FFFFFED0
	sw	s1,sp,+00000124
	sw	s2,sp,+00000120
	sw	s3,sp,+0000011C
	c.mv	s2,a0
	c.mv	s3,a1
	c.mv	s1,a2
	c.li	a1,00000000
	addi	a2,zero,+000000F0
	c.addi4spn	a0,00000020
	sw	s0,sp,+00000128
	c.swsp	a3,0000008C
	c.swsp	a4,0000000C
	c.swsp	a5,00000088
	c.swsp	a6,00000008
	c.swsp	a7,00000084
	sw	ra,sp,+0000012C
	lhu	s0,sp,+00000130
	jal	ra,0000000023070EB8
	c.lwsp	t3,000000A4
	c.lwsp	s8,000000C4
	c.lwsp	s4,000000E4
	c.lwsp	a6,00000008
	c.li	a2,00000008
	c.swsp	zero,00000040
	c.swsp	s3,000000B0
	c.swsp	s2,00000030
	sb	a2,sp,+00000068
	c.swsp	s1,000000D8
	sb	a3,sp,+000000BC
	c.swsp	a4,0000005C
	sb	a5,sp,+000000BD
	c.lwsp	a2,00000028
	beq	a6,zero,00000000230228DC

l230228DA:
	c.swsp	a6,0000002C

l230228DC:
	c.beqz	s0,00000000230228E8

l230228DE:
	sh	s0,sp,+00000022
	sb	a7,sp,+00000020
	c.swsp	zero,00000014

l230228E8:
	lui	a0,0004201D
	c.addi4spn	a1,00000020
	addi	a0,a0,+000005AC
	jal	ra,0000000023022852
	lw	ra,sp,+0000012C
	lw	s0,sp,+00000128
	lw	s1,sp,+00000124
	lw	s2,sp,+00000120
	lw	s3,sp,+0000011C
	c.li	a0,00000000
	c.addi16sp	00000130
	c.jr	ra

;; bl_main_event_handle: 23022910
;;   Called from:
;;     2300E4E0 (in bl_event_handle)
bl_main_event_handle proc
	lui	a0,0004201D
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000005AC
	c.swsp	ra,00000084
	jal	ra,0000000023028FF4
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230243F8

;; bl_main_lowlevel_init: 23022928
;;   Called from:
;;     23022940 (in bl_main_rtthread_start)
bl_main_lowlevel_init proc
	lui	a0,0004201D
	addi	a0,a0,+000005AC
	jal	zero,0000000023028FF0

;; bl_main_rtthread_start: 23022934
;;   Called from:
;;     23029320 (in bl606a0_wifi_init)
bl_main_rtthread_start proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,0000000023022928
	c.lwsp	a2,00000044
	lui	s1,0004201D
	addi	s2,s1,+000005AC
	lui	a5,0004201E
	sw	s2,a0,+00000000
	addi	a5,a5,-000006FC
	sw	a5,s2,+00000358
	sw	a5,s2,+0000035C
	c.lui	s0,00001000
	lui	a5,0004200D
	c.add	s0,s2
	addi	a5,a5,+00000048
	addi	a0,s1,+000005AC
	sw	a5,s0,+00000DFC
	jal	ra,00000000230239A6
	c.beqz	a0,0000000023022996

l2302297C:
	lui	a0,0002307B
	addi	a0,a0,+000003B0

l23022984:
	jal	ra,0000000023052118

l23022988:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23022996:
	lw	a0,s2,+00000034
	addi	a1,zero,+000007FF
	jal	ra,00000000230223D4
	jal	ra,0000000023035742
	addi	a0,s1,+000005AC
	c.jal	0000000023022E2E
	c.beqz	a0,00000000230229B8

l230229AE:
	lui	a0,0002307B
	addi	a0,a0,+000003C8
	c.j	0000000023022984

l230229B8:
	c.li	a0,00000005
	jal	ra,0000000023030630
	lui	a1,0004201E
	addi	a1,a1,+00000390
	addi	a0,s1,+000005AC
	c.jal	0000000023022F2A
	c.bnez	a0,0000000023022988

l230229CE:
	lw	a1,s0,-0000021C
	lui	a0,0002307B
	addi	a0,a0,+000003E0
	srli	a3,a1,00000008
	srli	a2,a1,00000010
	andi	a4,a1,+000000FF
	andi	a3,a3,+000000FF
	andi	a2,a2,+000000FF
	c.srli	a1,00000018
	jal	ra,0000000023052118
	lw	a1,s0,-00000218
	lui	a0,0002307B
	addi	a0,a0,+00000400
	jal	ra,0000000023052118
	lw	a1,s0,-00000214
	lui	a0,0002307B
	addi	a0,a0,+00000424
	jal	ra,0000000023052118
	lw	a1,s0,-00000210
	lui	a0,0002307B
	addi	a0,a0,+00000448
	jal	ra,0000000023052118
	lw	a1,s0,-0000020C
	lui	a0,0002307B
	addi	a0,a0,+00000468
	jal	ra,0000000023052118
	lw	a1,s0,-00000208
	lui	a0,0002307B
	addi	a0,a0,+00000488
	jal	ra,0000000023052118
	addi	a0,s1,+000005AC
	c.jal	0000000023022A6A
	c.beqz	a0,0000000023022A56

l23022A4C:
	lui	a0,0002307B
	addi	a0,a0,+000004A4
	c.j	0000000023022984

l23022A56:
	addi	a0,s1,+000005AC
	c.jal	0000000023022F5E
	addi	a0,s1,+000005AC
	c.jal	0000000023023022
	c.li	a5,00000001
	sb	a5,s0,+00000E6C
	c.j	0000000023022988

;; bl_handle_dynparams: 23022A6A
;;   Called from:
;;     23022A48 (in bl_main_rtthread_start)
bl_handle_dynparams proc
	c.lui	a5,00001000
	c.add	a5,a0
	lw	a3,a5,-00000200
	lui	a4,00000040
	c.or	a4,a3
	sw	a4,a5,+00000E00
	lw	a4,a5,-00000204
	lbu	a2,a4,+00000048
	c.beqz	a2,0000000023022A90

l23022A86:
	lui	a2,00000058
	c.or	a3,a2
	sw	a3,a5,+00000E00

l23022A90:
	lbu	a5,a4,+00000014
	c.beqz	a5,0000000023022AA6

l23022A96:
	c.lui	a5,00001000
	c.add	a5,a0
	lw	a3,a5,-00000200
	c.lui	a2,00004000
	c.or	a3,a2
	sw	a3,a5,+00000E00

l23022AA6:
	c.lw	a4,12(a3)
	c.li	a5,00000005
	bgeu	a5,a3,0000000023022AB2

l23022AAE:
	c.li	a5,00000002
	c.sw	a4,12(a5)

l23022AB2:
	c.lui	a5,00001000
	c.add	a5,a0
	lw	a5,a5,-00000204
	c.li	a4,00000002
	c.lw	a5,4(a3)
	bgeu	a4,a3,0000000023022AC6

l23022AC2:
	sw	zero,a5,+00000004

l23022AC6:
	c.lui	a4,00001000
	c.add	a4,a0
	lhu	a3,a4,-000001FC
	lw	a5,a4,-00000204
	ori	a2,a3,+00000100
	c.lw	a5,28(a1)
	sh	a2,a4,+00000E04
	lbu	a2,a5,+00000008
	c.beqz	a2,0000000023022AEA

l23022AE2:
	ori	a3,a3,+00000101
	sh	a3,a4,+00000E04

l23022AEA:
	lbu	a4,a5,+00000017
	slli	a3,a1,00000010
	c.srli	a3,00000010
	c.beqz	a4,0000000023022B9E

l23022AF6:
	c.lui	a4,00001000
	c.add	a4,a0
	lhu	a2,a4,-000001FC
	c.li	a6,00000001
	sb	a6,a4,+00000E0E
	ori	a2,a2,+00000002
	sh	a2,a4,+00000E04
	addi	a2,zero,+00000087
	add	a2,a3,a2
	sh	a2,a4,+00000E14

l23022B18:
	c.li	a4,00000001
	bge	a4,a1,0000000023022B2E

l23022B1E:
	c.lui	a4,00001000
	c.add	a4,a0
	lhu	a2,a4,-000001FC
	ori	a2,a2,+00000080
	sh	a2,a4,+00000E04

l23022B2E:
	lbu	a4,a5,+00000015
	c.beqz	a4,0000000023022B5E

l23022B34:
	c.lui	a4,00001000
	c.add	a4,a0
	lhu	a2,a4,-000001FC
	ori	a1,a2,+00000020
	sh	a1,a4,+00000E04
	lbu	a1,a5,+00000017
	c.beqz	a1,0000000023022BB6

l23022B4A:
	ori	a2,a2,+00000060
	sh	a2,a4,+00000E04
	addi	a2,zero,+00000096

l23022B56:
	add	a3,a3,a2
	sh	a3,a4,+00000E14

l23022B5E:
	c.lui	a4,00001000
	c.add	a0,a4
	lhu	a4,a0,-000001FC
	ori	a4,a4,+0000000C
	sh	a4,a0,+00000E04
	lbu	a4,a5,+00000000
	c.bnez	a4,0000000023022B78

l23022B74:
	sb	zero,a0,+00000E06

l23022B78:
	lbu	a5,a5,+00000019
	c.beqz	a5,0000000023022BBC

l23022B7E:
	lui	a1,0002307B
	lui	a0,0002307B
	c.addi	sp,FFFFFFF0
	addi	a1,a1,+000004C0
	addi	a0,a0,+000004D4
	c.swsp	ra,00000084
	jal	ra,0000000023052118
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23022B9E:
	addi	a2,zero,+00000041
	add	a2,a3,a2
	c.lui	a4,00001000
	c.add	a4,a0
	sh	a2,a4,+00000E14
	c.li	a2,FFFFFFFF
	sb	a2,a4,+00000E0A
	c.j	0000000023022B18

l23022BB6:
	addi	a2,zero,+00000048
	c.j	0000000023022B56

l23022BBC:
	c.li	a0,00000000
	c.jr	ra

;; bl_send_msg: 23022BC0
;;   Called from:
;;     23022E52 (in bl_send_reset)
;;     23022E8E (in bl_send_monitor_enable)
;;     23022F14 (in bl_send_monitor_channel_set)
;;     23022F50 (in bl_send_version_req)
;;     23023002 (in bl_send_me_config_req)
;;     230230E2 (in bl_send_me_chan_config_req)
;;     23023130 (in bl_send_me_rate_config_req)
;;     2302319E (in bl_send_start)
;;     23023222 (in bl_send_add_if)
;;     23023276 (in bl_send_remove_if)
;;     23023300 (in bl_send_scanu_req)
;;     2302336E (in bl_send_scanu_raw_send)
;;     230235C6 (in bl_send_sm_connect_req)
;;     2302360E (in bl_send_sm_disconnect_req)
;;     23023652 (in bl_send_mm_powersaving_req)
;;     23023694 (in bl_send_mm_denoise_req)
;;     230237BE (in bl_send_apm_start_req)
;;     2302381C (in bl_send_apm_stop_req)
;;     23023870 (in bl_send_apm_sta_del_req)
;;     230238BA (in bl_send_apm_conf_max_sta_req)
;;     2302391E (in bl_send_cfg_task_req)
bl_send_msg proc
	c.addi16sp	FFFFFFD0
	c.swsp	s4,0000000C
	c.mv	s4,a4
	c.lui	a4,00001000
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s5,00000088
	add	a5,a0,a4
	lw	a5,a5,-00000220
	c.mv	s6,a0
	c.mv	s7,a1
	c.srli	a5,00000002
	c.andi	a5,00000001
	c.mv	s3,a2
	c.mv	s1,a3
	addi	s2,a1,-00000008
	c.bnez	a5,0000000023022C54

l23022BF2:
	andi	a5,a3,-00000003
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	a3,00000001
	beq	a5,a3,0000000023022C54

l23022C00:
	c.li	a3,00000005
	beq	s1,a3,0000000023022C54

l23022C06:
	addi	a3,zero,+00000023
	beq	s1,a3,0000000023022C54

l23022C0E:
	addi	a4,a4,+00000401
	beq	a5,a4,0000000023022C54

l23022C16:
	addi	a5,zero,+00000032
	beq	s1,a5,0000000023022C54

l23022C1E:
	lui	a1,0002307B
	lui	a0,0002307C
	c.mv	a2,s1
	addi	a1,a1,+00000550
	addi	a0,a0,+000000B8
	jal	ra,0000000023052118

l23022C34:
	c.mv	a0,s2
	jal	ra,0000000023032272
	c.li	s1,FFFFFFF0

l23022C3C:
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

l23022C54:
	lw	a5,s6,+00000034
	c.bnez	a5,0000000023022C70

l23022C5A:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a1,a1,+00000550
	addi	a0,a0,+000000E8
	jal	ra,0000000023052118
	c.j	0000000023022C34

l23022C70:
	lhu	a2,s7,-00000008
	addi	a5,zero,+00000041
	c.li	s5,00000001
	beq	a2,a5,0000000023022CA4

l23022C7E:
	addi	a5,zero,+00000050
	beq	a2,a5,0000000023022CA4

l23022C86:
	c.lui	a5,FFFFF000
	addi	a5,a5,-0000040C
	c.add	a5,a2
	c.andi	a5,FFFFFFFB
	c.slli	a5,10
	c.srli	a5,00000010
	c.beqz	a5,0000000023022CA4

l23022C96:
	c.lui	a5,FFFFE000
	c.andi	a2,FFFFFFFB
	addi	a5,a5,-00000408
	c.add	a2,a5
	sltiu	s5,a2,+00000001

l23022CA4:
	addi	a0,zero,+00000040
	jal	ra,000000002303218A
	c.mv	s0,a0
	c.bnez	a0,0000000023022CD2

l23022CB0:
	c.mv	a0,s2
	jal	ra,0000000023032272
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a2,zero,+00000040
	addi	a1,a1,+00000550
	addi	a0,a0,+00000114
	jal	ra,0000000023052118
	c.li	s1,FFFFFFF4
	c.j	0000000023022C3C

l23022CD2:
	addi	a2,zero,+00000040
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	c.li	a5,00000004
	c.sw	s0,60(a5)
	lhu	a5,s7,-00000008
	sh	s1,s0,+0000000A
	sw	s2,s0,+0000000C
	sh	a5,s0,+00000008
	sw	s4,s0,+00000010
	beq	s5,zero,0000000023022CFE

l23022CF8:
	c.li	a5,00000001
	sh	a5,s0,+00000018

l23022CFE:
	beq	s3,zero,0000000023022D0E

l23022D02:
	lhu	a5,s0,+00000018
	ori	a5,a5,+00000002
	sh	a5,s0,+00000018

l23022D0E:
	lw	a5,s6,+00000020
	c.mv	a1,s0
	addi	a0,s6,+00000004
	c.jalr	a5
	c.mv	s1,a0
	bne	s5,zero,0000000023022D28

l23022D20:
	c.mv	a0,s0
	jal	ra,0000000023032272
	c.j	0000000023022C3C

l23022D28:
	c.lw	s0,60(s1)
	c.j	0000000023022C3C

;; bl_msg_zalloc.constprop.3: 23022D2C
;;   Called from:
;;     23022E3C (in bl_send_reset)
;;     23022E72 (in bl_send_monitor_enable)
;;     23022EB4 (in bl_send_monitor_channel_set)
;;     23022F3A (in bl_send_version_req)
;;     23022F76 (in bl_send_me_config_req)
;;     23023036 (in bl_send_me_chan_config_req)
;;     2302310E (in bl_send_me_rate_config_req)
;;     23023156 (in bl_send_start)
;;     230231CA (in bl_send_add_if)
;;     2302325A (in bl_send_remove_if)
;;     23023296 (in bl_send_scanu_req)
;;     23023354 (in bl_send_scanu_raw_send)
;;     230233A4 (in bl_send_sm_connect_req)
;;     230235E2 (in bl_send_sm_disconnect_req)
;;     23023634 (in bl_send_mm_powersaving_req)
;;     23023676 (in bl_send_mm_denoise_req)
;;     230236DC (in bl_send_apm_start_req)
;;     230237FC (in bl_send_apm_stop_req)
;;     2302384A (in bl_send_apm_sta_del_req)
;;     2302389A (in bl_send_apm_conf_max_sta_req)
;;     230238EE (in bl_send_cfg_task_req)
bl_msg_zalloc.constprop.3 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.mv	s1,a2
	c.addi	a2,00000008
	c.swsp	s3,0000008C
	c.mv	s3,a0
	c.mv	a0,a2
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	a2,00000084
	c.swsp	ra,00000094
	c.mv	s2,a1
	jal	ra,000000002303218A
	c.mv	s0,a0
	c.lwsp	a2,00000084
	c.bnez	a0,0000000023022D72

l23022D4E:
	lui	a1,0002307B
	lui	a0,0002307C
	addi	a1,a1,+00000540
	addi	a0,a0,+0000003C
	jal	ra,0000000023052118

l23022D62:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23022D72:
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	addi	a5,zero,+00000064
	sh	s3,s0,+00000000
	sh	s2,s0,+00000002
	sh	a5,s0,+00000004
	sh	s1,s0,+00000006
	c.addi	s0,00000008
	c.j	0000000023022D62

;; bl_msg_update_channel_cfg: 23022D90
;;   Called from:
;;     230224F6 (in bl_main_set_country_code)
;;     230292F8 (in bl606a0_wifi_init)
bl_msg_update_channel_cfg proc
	c.addi	sp,FFFFFFE0
	lui	a5,0002307C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.mv	s2,a0
	addi	s3,a5,+00000148
	c.li	s1,00000000
	addi	s0,a5,+00000148
	c.li	s4,00000004

l23022DB0:
	lw	a0,s3,+00000000
	c.mv	a1,s2
	jal	ra,0000000023071100
	c.bnez	a0,0000000023022DF4

l23022DBC:
	c.li	a5,0000000C
	add	a5,s1,a5
	lui	a4,0004200E
	lui	a0,0002307C
	c.mv	a1,s2
	addi	a0,a0,-00000030
	c.add	a5,s0
	c.lw	a5,4(a2)
	sw	a2,a4,+00000D6C
	c.lw	a5,8(a4)
	lui	a5,0004200E
	sw	a4,a5,+00000D70

l23022DE2:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,0000000023052118

l23022DF4:
	c.addi	s1,00000001
	c.addi	s3,0000000C
	bne	s1,s4,0000000023022DB0

l23022DFC:
	lui	a5,0004200E
	c.li	a4,0000000E
	sw	a4,a5,+00000D6C
	lui	a5,0002307C
	lui	a4,0004200E
	addi	a5,a5,-00000544
	lui	a0,0002307C
	sw	a5,a4,+00000D70
	c.li	a2,0000000E
	c.mv	a1,s2
	addi	a0,a0,+00000000
	c.j	0000000023022DE2

;; bl_msg_get_channel_nums: 23022E24
;;   Called from:
;;     2302250E (in bl_main_get_channel_nums)
bl_msg_get_channel_nums proc
	lui	a5,0004200E
	lw	a0,a5,-00000294
	c.jr	ra

;; bl_send_reset: 23022E2E
;;   Called from:
;;     230229AA (in bl_main_rtthread_start)
bl_send_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a2,00000000
	c.mv	s0,a0
	c.li	a1,00000000
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023022D2C
	c.beqz	a0,0000000023022E56

l23022E42:
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a4,00000000
	c.li	a3,00000001
	c.li	a2,00000001
	c.addi	sp,00000010
	jal	zero,0000000023022BC0

l23022E56:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_monitor_enable: 23022E60
;;   Called from:
;;     2302243A (in bl_main_monitor)
bl_send_monitor_enable proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.mv	s0,a0
	c.li	a2,00000004
	c.li	a1,00000000
	addi	a0,zero,+0000005C
	c.swsp	ra,0000008C
	jal	ra,0000000023022D2C
	c.beqz	a0,0000000023022E92

l23022E78:
	c.li	a5,00000001
	c.sw	a0,0(a5)
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	a2,000000C4
	c.lwsp	t3,00000020
	addi	a3,zero,+0000005D
	c.li	a2,00000001
	c.addi16sp	00000020
	jal	zero,0000000023022BC0

l23022E92:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,FFFFFFF4
	c.addi16sp	00000020
	c.jr	ra

;; bl_send_monitor_channel_set: 23022E9C
;;   Called from:
;;     2302248C (in bl_main_monitor_channel_set)
bl_send_monitor_channel_set proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	a1,00000084
	c.mv	s1,a0
	c.mv	s0,a2
	c.li	a1,00000000
	c.li	a2,0000000C
	addi	a0,zero,+0000005E
	c.swsp	ra,0000008C
	c.swsp	a3,00000004
	jal	ra,0000000023022D2C
	c.beqz	a0,0000000023022F1E

l23022EBA:
	addi	a5,s0,-00000001
	c.li	a2,0000000D
	c.mv	a1,a0
	c.lwsp	s0,000000A4
	c.lwsp	a2,000000C4
	bltu	a2,a5,0000000023022EF4

l23022ECA:
	c.li	a5,0000000E
	beq	s0,a5,0000000023022EFA

l23022ED0:
	c.li	a5,00000005
	add	s0,s0,a5
	c.lui	a5,00001000
	addi	a5,a5,-00000699
	c.add	s0,a5
	c.slli	s0,10
	c.srli	s0,00000010

l23022EE2:
	c.sw	a1,0(s0)
	c.beqz	a3,0000000023022F18

l23022EE6:
	c.li	a5,00000001
	c.sw	a1,4(a5)
	bne	a3,a5,0000000023022F02

l23022EEE:
	sw	zero,a1,+00000008
	c.j	0000000023022F04

l23022EF4:
	c.lui	s0,00010000
	c.addi	s0,FFFFFFFF
	c.j	0000000023022EE2

l23022EFA:
	c.lui	s0,00001000
	addi	s0,s0,-0000064C
	c.j	0000000023022EE2

l23022F02:
	c.sw	a1,8(a5)

l23022F04:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a0,s1
	c.lwsp	s4,00000024
	addi	a3,zero,+0000005F
	c.li	a2,00000001
	c.addi16sp	00000020
	jal	zero,0000000023022BC0

l23022F18:
	sw	zero,a1,+00000004
	c.j	0000000023022EEE

l23022F1E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,FFFFFFF4
	c.addi16sp	00000020
	c.jr	ra

;; bl_send_version_req: 23022F2A
;;   Called from:
;;     230229CA (in bl_main_rtthread_start)
bl_send_version_req proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.mv	s0,a0
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000004
	c.swsp	ra,0000008C
	jal	ra,0000000023022D2C
	c.beqz	a0,0000000023022F54

l23022F40:
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	a2,000000C4
	c.lwsp	t3,00000020
	c.li	a3,00000005
	c.li	a2,00000001
	c.addi16sp	00000020
	jal	zero,0000000023022BC0

l23022F54:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,FFFFFFF4
	c.addi16sp	00000020
	c.jr	ra

;; bl_send_me_config_req: 23022F5E
;;   Called from:
;;     23022A5A (in bl_main_rtthread_start)
bl_send_me_config_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.lui	s1,00001000
	c.swsp	s2,00000000
	addi	a2,zero,+00000034
	c.mv	s2,a0
	c.li	a1,00000005
	addi	a0,s1,+00000400
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023022D2C
	c.beqz	a0,0000000023023014

l23022F7C:
	c.mv	s0,a0
	lui	a0,0002307C
	c.li	a2,00000000
	c.li	a1,00000001
	addi	a0,a0,+00000098
	jal	ra,0000000023052118
	c.li	a5,00000001
	add	a4,s2,s1
	sh	a5,s0,+0000002E
	lhu	a5,a4,-000001FC
	sh	a5,s0,+00000000
	lbu	a5,a4,-000001F8
	lbu	a4,a4,-000001F9
	c.slli	a5,02
	c.or	a5,a4
	sb	a5,s0,+00000002
	addi	a5,s1,-000001F6
	addi	s1,s1,-000001E6
	c.add	a5,s2
	addi	a4,s0,+00000003
	c.add	s1,s2

l23022FC0:
	bne	a5,s1,0000000023023006

l23022FC4:
	c.lui	a3,00001000
	sh	zero,s0,+00000014
	sw	zero,s0,+00000018
	sb	zero,s0,+0000001C
	add	a5,s2,a3
	lw	a4,a5,-00000204
	c.mv	a1,s0
	c.mv	a0,s2
	lbu	a4,a4,+00000038
	addi	a3,a3,+00000401
	c.li	a2,00000001
	sb	a4,s0,+00000030
	lw	a5,a5,-00000204
	c.li	a4,00000000
	c.lw	a5,60(a5)
	sh	a5,s0,+0000002C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023022BC0

l23023006:
	lbu	a3,a5,+00000000
	c.addi	a4,00000001
	c.addi	a5,00000001
	sb	a3,a4,+00000FFF
	c.j	0000000023022FC0

l23023014:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_me_chan_config_req: 23023022
;;   Called from:
;;     23022502 (in bl_main_set_country_code)
;;     23022A60 (in bl_main_rtthread_start)
bl_send_me_chan_config_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.lui	a0,00001000
	addi	a2,zero,+000000FE
	c.li	a1,00000005
	addi	a0,a0,+00000402
	c.swsp	ra,00000084
	jal	ra,0000000023022D2C
	c.beqz	a0,00000000230230EA

l2302303C:
	c.mv	a1,a0
	sb	zero,a0,+000000FC
	c.li	a2,00000000
	lui	t1,0004200E
	c.li	t3,00000006
	addi	t4,zero,+00000034
	lui	a7,0004200E
	c.li	t5,00000002
	c.li	t6,0000000E

l23023056:
	lw	a5,t1,-00000294
	bge	a2,a5,00000000230230CC

l2302305E:
	lbu	a4,a1,+000000FC
	add	a0,a2,t4
	addi	a6,a7,-00000290
	add	a5,a4,t3
	c.add	a5,a1
	sb	zero,a5,+00000003
	lw	a3,a7,-00000290
	c.add	a3,a0
	c.lw	a3,8(a3)
	c.andi	a3,00000001
	c.beqz	a3,0000000023023084

l23023080:
	sb	t5,a5,+00000003

l23023084:
	lw	a3,a6,+00000000
	lbu	t0,a5,+00000003
	c.add	a3,a0
	c.lw	a3,8(a3)
	sb	zero,a5,+00000002
	c.andi	a3,0000000A
	sltu	a3,zero,a3
	or	a3,a3,t0
	sb	a3,a5,+00000003
	lw	a3,a6,+00000000
	c.add	a3,a0
	lhu	a3,a3,+00000002
	sh	a3,a5,+00000000
	lw	a3,a6,+00000000
	c.add	a0,a3
	c.lw	a0,16(a3)
	sb	a3,a5,+00000004
	addi	a5,a4,+00000001
	andi	a5,a5,+000000FF
	sb	a5,a1,+000000FC
	bne	a5,t6,00000000230230E6

l230230CC:
	sb	zero,a1,+000000FD
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lui	a3,00001000
	c.li	a4,00000000
	addi	a3,a3,+00000403
	c.li	a2,00000001
	c.addi	sp,00000010
	jal	zero,0000000023022BC0

l230230E6:
	c.addi	a2,00000001
	c.j	0000000023023056

l230230EA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_me_rate_config_req: 230230F4
;;   Called from:
;;     230224EE (in bl_main_rate_config)
bl_send_me_rate_config_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.lui	a0,00001000
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s1,a2
	c.mv	s2,a1
	c.li	a2,00000004
	c.li	a1,00000005
	addi	a0,a0,+00000410
	c.swsp	ra,00000084
	jal	ra,0000000023022D2C
	c.beqz	a0,0000000023023134

l23023114:
	sb	s2,a0,+00000000
	sh	s1,a0,+00000002
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.addi	sp,00000010
	jal	zero,0000000023022BC0

l23023134:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_start: 23023142
;;   Called from:
;;     23022454 (in bl_main_phy_up)
bl_send_start proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	addi	a2,zero,+00000048
	c.mv	s1,a0
	c.li	a1,00000000
	c.li	a0,00000002
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	jal	ra,0000000023022D2C
	c.beqz	a0,00000000230231A2

l2302315C:
	c.lui	a1,00001000
	add	s2,s1,a1
	c.li	a5,00000001
	addi	a1,a1,-000001D4
	sw	a5,s2,+00000E2C
	c.add	a1,s1
	addi	a2,zero,+00000040
	c.mv	s0,a0
	jal	ra,0000000023070C7C
	lw	a5,s2,-00000204
	c.mv	a1,s0
	c.mv	a0,s1
	c.lw	a5,16(a5)
	c.li	a4,00000000
	c.li	a3,00000003
	c.sw	s0,64(a5)
	lw	a5,s2,-00000204
	c.li	a2,00000001
	c.lw	a5,52(a5)
	sh	a5,s0,+00000044
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023022BC0

l230231A2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_add_if: 230231B0
;;   Called from:
;;     23022552 (in bl_main_if_add)
bl_send_add_if proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s2,a0
	c.mv	s3,a1
	c.mv	s1,a2
	c.li	a1,00000000
	c.li	a2,00000008
	c.li	a0,00000006
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	a4,00000084
	jal	ra,0000000023022D2C
	c.beqz	a0,0000000023023234

l230231D0:
	c.li	a2,00000006
	c.mv	s0,a0
	c.mv	a1,s3
	c.addi	a0,00000001
	jal	ra,0000000023070C7C
	addi	a2,s1,-00000001
	andi	a2,a2,+000000FF
	c.li	a5,00000008
	c.lwsp	a2,000000C4
	bltu	a5,a2,0000000023023202

l230231EC:
	lui	a5,0002307B
	addi	a5,a5,+00000510
	c.slli	a2,02
	c.add	a2,a5
	c.lw	a2,0(a5)
	c.jr	a5
230231FC                                     85 47 A3 03             .G..
23023200 F4 00                                           ..             

l23023202:
	sb	zero,s0,+00000000
	c.j	000000002302320E
23023208                         85 47 23 00 F4 00               .G#... 

l2302320E:
	c.mv	a1,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.mv	a0,s2
	c.lwsp	zero,00000158
	c.li	a3,00000007
	c.li	a2,00000001
	c.addi16sp	00000030
	jal	zero,0000000023022BC0
23023226                   85 47 A3 03 F4 00 89 47 F1 BF       .G.....G..
23023230 8D 47 E1 BF                                     .G..           

l23023234:
	c.li	a0,FFFFFFF4
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra
23023244             7D 55 C5 BF                             }U..       

;; bl_send_remove_if: 23023248
;;   Called from:
;;     230224B8 (in bl_main_if_remove)
bl_send_remove_if proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	c.li	a2,00000001
	c.li	a1,00000000
	c.li	a0,00000008
	c.swsp	ra,00000084
	jal	ra,0000000023022D2C
	c.beqz	a0,000000002302327A

l23023260:
	sb	s1,a0,+00000000
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a4,00000000
	c.li	a3,00000009
	c.li	a2,00000001
	c.addi	sp,00000010
	jal	zero,0000000023022BC0

l2302327A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_scanu_req: 23023286
;;   Called from:
;;     23022846 (in bl_main_scan)
bl_send_scanu_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	a2,zero,+00000154
	c.mv	s0,a0
	c.li	a1,00000004
	c.lui	a0,00001000
	c.swsp	ra,00000084
	jal	ra,0000000023022D2C
	c.beqz	a0,000000002302332E

l2302329C:
	c.lui	a5,00001000
	c.add	a5,s0
	lw	a5,a5,-000001E4
	c.mv	a1,a0
	sh	zero,a0,+0000014C
	sb	a5,a0,+0000014E
	lui	a5,0004200E
	lw	a4,a5,-00000294
	lui	a5,0002308E
	addi	a5,a5,-000001B8
	c.lw	a5,0(a3)
	lhu	a5,a5,+00000004
	sb	a4,a0,+0000014F
	sw	a3,a0,+00000140
	sh	a5,a0,+00000144
	addi	a5,zero,+00000100
	sh	a5,a0,+00000150
	sw	zero,a0,+00000148
	c.mv	a5,a0
	c.li	a2,00000000
	andi	a3,a4,+000000FF
	lui	a0,0004200E
	addi	a6,zero,+00000034
	c.li	a7,00000001

l230232EE:
	blt	a2,a3,0000000023023304

l230232F2:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.addi	sp,00000010
	jal	zero,0000000023022BC0

l23023304:
	add	t1,a2,a6
	lw	a4,a0,-00000290
	c.addi	a2,00000001
	c.addi	a5,00000006
	c.add	a4,t1
	lbu	t1,a4,+00000000
	sb	t1,a5,+00000FFC
	lhu	t1,a4,+00000002
	sb	a7,a5,+00000FFD
	sh	t1,a5,+00000FFA
	c.lw	a4,20(a4)
	sb	a4,a5,+00000FFE
	c.j	00000000230232EE

l2302332E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_scanu_raw_send: 23023338
;;   Called from:
;;     230224DE (in bl_main_raw_send)
bl_send_scanu_raw_send proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.lui	s0,00001000
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s1,a0
	c.mv	s3,a1
	c.mv	s2,a2
	c.li	a1,00000004
	c.li	a2,00000008
	addi	a0,s0,+00000005
	c.swsp	ra,00000094
	jal	ra,0000000023022D2C
	c.beqz	a0,0000000023023380

l2302335A:
	c.mv	a1,a0
	sw	s3,a0,+00000000
	sw	s2,a0,+00000004
	c.addi4spn	a4,0000000C
	addi	a3,s0,+00000006
	c.li	a2,00000001
	c.mv	a0,s1
	jal	ra,0000000023022BC0

l23023372:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23023380:
	c.li	a0,FFFFFFF4
	c.j	0000000023023372

;; bl_send_sm_connect_req: 23023384
;;   Called from:
;;     23022858 (in bl_cfg80211_connect)
bl_send_sm_connect_req proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	c.mv	s3,a0
	c.lui	a0,00002000
	c.swsp	s0,0000000C
	c.swsp	s4,00000004
	c.mv	s0,a1
	c.mv	s4,a2
	c.li	a1,00000006
	addi	a2,zero,+000001C4
	addi	a0,a0,-00000800
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	jal	ra,0000000023022D2C
	beq	a0,zero,0000000023023536

l230233AC:
	c.lw	s0,96(a5)
	c.mv	s1,a0
	c.li	s2,00000000
	c.beqz	a5,00000000230233D8

l230233B4:
	c.lw	s0,100(a4)
	lui	a5,000FFF05
	addi	a5,a5,+000003FF
	c.add	a5,a4
	c.li	a3,00000001
	c.li	s2,00000004
	bgeu	a3,a5,00000000230233D8

l230233C8:
	lui	a5,000000FB
	addi	a5,a5,-000003FB
	c.li	s2,00000000
	bne	a4,a5,00000000230233D8

l230233D6:
	c.li	s2,00000004

l230233D8:
	lbu	a5,s0,+00000084
	c.beqz	a5,00000000230233E2

l230233DE:
	ori	s2,s2,+00000001

l230233E2:
	lbu	a5,s0,+00000088
	c.beqz	a5,00000000230233EC

l230233E8:
	ori	s2,s2,+00000002

l230233EC:
	c.lw	s0,92(a4)
	lui	a5,000000FB
	addi	a5,a5,-000003FF
	c.andi	a4,FFFFFFFB
	beq	a4,a5,0000000023023400

l230233FC:
	ori	s2,s2,+00000008

l23023400:
	lbu	a4,s0,+00000055
	c.li	a5,00000001
	bne	a4,a5,000000002302340E

l2302340A:
	ori	s2,s2,+00000010

l2302340E:
	lhu	a5,s0,+00000086
	c.bnez	a5,000000002302341A

l23023414:
	c.lui	a5,00009000
	addi	a5,a5,-00000772

l2302341A:
	sh	a5,s1,+00000034
	c.lw	s0,56(a5)
	c.beqz	a5,0000000023023458

l23023422:
	lbu	a3,a5,+00000000
	addi	a4,zero,+000000FF
	bne	a3,a4,000000002302346C

l2302342E:
	lbu	a2,a5,+00000001
	c.li	a4,00000000
	bne	a2,a3,000000002302348C

l23023438:
	lbu	a3,a5,+00000002
	bne	a3,a2,000000002302348C

l23023440:
	lbu	a2,a5,+00000003
	bne	a2,a3,000000002302348C

l23023448:
	lbu	a3,a5,+00000004
	bne	a3,a2,000000002302348C

l23023450:
	lbu	a5,a5,+00000005
	bne	a5,a3,000000002302348C

l23023458:
	lui	a1,0002308E
	c.li	a2,00000006
	addi	a1,a1,-000001B8
	addi	a0,s1,+00000022
	jal	ra,0000000023070C7C
	c.j	00000000230234A4

l2302346C:
	c.bnez	a3,00000000230234D6

l2302346E:
	lbu	a4,a5,+00000001
	c.bnez	a4,00000000230234D6

l23023474:
	lbu	a4,a5,+00000002
	c.bnez	a4,00000000230234D6

l2302347A:
	lbu	a4,a5,+00000003
	c.bnez	a4,00000000230234D6

l23023480:
	lbu	a4,a5,+00000004
	c.bnez	a4,00000000230234D6

l23023486:
	lbu	a5,a5,+00000005
	c.beqz	a5,0000000023023458

l2302348C:
	c.li	a3,00000006

l2302348E:
	c.lw	s0,56(a5)
	c.add	a5,a4
	lbu	a2,a5,+00000000
	add	a5,s1,a4
	c.addi	a4,00000001
	sb	a2,a5,+00000022
	bne	a4,a3,000000002302348E

l230234A4:
	c.lui	a5,00001000
	c.add	a5,s3
	lw	a5,a5,-000001E4
	sb	a5,s1,+0000003D
	lhu	a5,s0,+00000002
	c.beqz	a5,00000000230234DA

l230234B6:
	lbu	a5,s0,+00000000
	sb	a5,s1,+0000002A
	lhu	a5,s0,+00000002
	sh	a5,s1,+00000028
	c.lw	s0,8(a5)
	c.andi	a5,0000000A
	sltu	a5,zero,a5
	sb	a5,s1,+0000002B

l230234D2:
	c.li	a5,00000000
	c.j	00000000230234F4

l230234D6:
	c.li	a4,00000000
	c.j	000000002302348C

l230234DA:
	c.li	a5,FFFFFFFF
	sh	a5,s1,+00000028
	c.j	00000000230234D2

l230234E2:
	c.lw	s0,64(a4)
	c.add	a4,a5
	lbu	a3,a4,+00000000
	add	a4,s1,a5
	c.addi	a5,00000001
	sb	a3,a4,+00000001

l230234F4:
	c.lw	s0,68(a4)
	bltu	a5,a4,00000000230234E2

l230234FA:
	sb	a4,s1,+00000000
	sw	s2,s1,+00000030
	c.lw	s0,80(a2)
	addi	a5,zero,+00000100
	bgeu	a5,a2,000000002302353A

l2302350C:
	lui	a1,0002307B
	lui	a0,00023079
	addi	a2,zero,+0000030A
	addi	a1,a1,+0000055C
	addi	a0,a0,-000005BC
	jal	ra,0000000023052118
	c.li	a0,FFFFFFEA

l23023526:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23023536:
	c.li	a0,FFFFFFF4
	c.j	0000000023023526

l2302353A:
	c.beqz	a2,0000000023023546

l2302353C:
	c.lw	s0,76(a1)
	addi	a0,s1,+00000040
	jal	ra,0000000023070C7C

l23023546:
	c.lw	s0,80(a5)
	sh	a5,s1,+00000036
	lui	a5,0004200D
	addi	a4,a5,+00000048
	c.lw	a4,44(a3)
	lbu	a4,a4,+00000030
	addi	a5,a5,+00000048
	sh	a3,s1,+00000038
	xori	a4,a4,+00000001
	sb	a4,s1,+0000003A
	lbu	a4,s0,+00000048
	c.li	a3,00000008
	bne	a4,a3,0000000023023576

l23023574:
	c.li	a4,00000000

l23023576:
	sb	a4,s1,+0000003B
	c.lw	a5,68(a5)
	sb	a5,s1,+0000003C
	c.li	a5,00000001
	sb	a5,s1,+00000140
	lbu	a2,s0,+0000009C
	c.beqz	a2,0000000023023598

l2302358C:
	lw	a1,s0,+00000094
	addi	a0,s1,+00000141
	jal	ra,0000000023070C7C

l23023598:
	lbu	a2,s0,+0000009D
	c.beqz	a2,00000000230235AA

l2302359E:
	lw	a1,s0,+00000098
	addi	a0,s1,+00000181
	jal	ra,0000000023070C7C

l230235AA:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.mv	a4,s4
	c.mv	a1,s1
	c.lwsp	s0,00000088
	c.lwsp	s4,00000024
	c.mv	a0,s3
	c.lwsp	a2,00000068
	c.lui	a3,00002000
	addi	a3,a3,-000007FF
	c.li	a2,00000001
	c.addi16sp	00000020
	jal	zero,0000000023022BC0

;; bl_send_sm_disconnect_req: 230235CA
;;   Called from:
;;     230223F8 (in bl_main_disconnect)
bl_send_sm_disconnect_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.lui	s1,00002000
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.mv	s0,a0
	c.mv	s2,a1
	c.li	a2,00000004
	c.li	a1,00000006
	addi	a0,s1,-000007FD
	c.swsp	ra,00000084
	jal	ra,0000000023022D2C
	c.beqz	a0,0000000023023612

l230235E8:
	c.lui	a5,00001000
	sh	s2,a0,+00000000
	c.add	a5,s0
	lw	a5,a5,-000001E4
	c.mv	a1,a0
	addi	a3,s1,-000007FC
	sb	a5,a0,+00000002
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a4,00000000
	c.li	a2,00000001
	c.addi	sp,00000010
	jal	zero,0000000023022BC0

l23023612:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_mm_powersaving_req: 23023620
;;   Called from:
;;     2302240E (in bl_main_powersaving)
bl_send_mm_powersaving_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	c.li	a2,00000001
	c.li	a1,00000000
	addi	a0,zero,+00000031
	c.swsp	ra,00000084
	jal	ra,0000000023022D2C
	c.beqz	a0,0000000023023656

l2302363A:
	sb	s1,a0,+00000000
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a4,00000000
	addi	a3,zero,+00000032
	c.li	a2,00000001
	c.addi	sp,00000010
	jal	zero,0000000023022BC0

l23023656:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_mm_denoise_req: 23023662
;;   Called from:
;;     2302241C (in bl_main_denoise)
bl_send_mm_denoise_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	c.li	a2,00000001
	c.li	a1,00000000
	addi	a0,zero,+00000030
	c.swsp	ra,00000084
	jal	ra,0000000023022D2C
	c.beqz	a0,0000000023023698

l2302367C:
	sb	s1,a0,+00000000
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a4,00000000
	addi	a3,zero,+00000032
	c.li	a2,00000001
	c.addi	sp,00000010
	jal	zero,0000000023022BC0

l23023698:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_apm_start_req: 230236A4
;;   Called from:
;;     2302262A (in bl_main_apm_start)
bl_send_apm_start_req proc
	c.addi16sp	FFFFFFC0
	c.swsp	s4,00000014
	c.mv	s4,a1
	lui	a1,0002307B
	c.swsp	s1,00000098
	c.swsp	s3,00000094
	addi	a1,a1,+00000534
	c.mv	s3,a0
	c.mv	s1,a2
	c.addi4spn	a0,00000014
	c.li	a2,0000000C
	c.swsp	s2,00000018
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.mv	s2,a3
	c.swsp	a4,00000084
	c.swsp	a5,00000004
	c.swsp	a6,00000080
	jal	ra,0000000023070C7C
	c.lui	a0,00002000
	addi	a2,zero,+000000A8
	c.li	a1,00000007
	addi	a0,a0,-00000400
	jal	ra,0000000023022D2C
	beq	a0,zero,00000000230237E0

l230236E4:
	c.lwsp	a2,000000C4
	sb	zero,a0,+00000010
	c.li	a2,0000000D
	addi	a3,a4,-00000001
	c.mv	s0,a0
	c.lwsp	tp,00000008
	c.lwsp	s0,000000E4
	bltu	a2,a3,00000000230237D2

l230236FA:
	c.li	a3,0000000E
	beq	a4,a3,00000000230237D8

l23023700:
	c.li	a3,00000005
	add	a4,a4,a3
	c.lui	a3,00001000
	addi	a3,a3,-00000699
	c.add	a4,a3
	c.slli	a4,10
	c.srli	a4,00000010

l23023712:
	sh	a4,s0,+0000000E
	c.sw	s0,20(a4)
	addi	a4,zero,+00000064
	sh	a4,s0,+00000028
	c.li	a4,00000008
	c.sw	s0,44(a4)
	c.lui	a4,FFFF9000
	addi	a4,a4,-00000178
	sh	a4,s0,+00000030
	c.li	a4,00000006
	sb	a4,s0,+00000032
	sb	a6,s0,+0000001D
	sb	a5,s0,+00000033
	sb	zero,s0,+00000011
	sb	zero,s0,+00000012
	sw	zero,s0,+00000018
	sb	zero,s0,+0000001C
	sw	zero,s0,+00000020
	sw	zero,s0,+00000024
	c.mv	a0,s2
	jal	ra,000000002307132C
	c.li	a5,00000001
	sltu	a0,zero,a0
	sb	a5,s0,+00000034
	sb	a0,s0,+00000066
	c.mv	a0,s1
	jal	ra,000000002307132C
	c.mv	a2,a0
	c.mv	a1,s1
	addi	a0,s0,+00000045
	jal	ra,0000000023070C7C
	c.mv	a0,s2
	jal	ra,000000002307132C
	c.mv	a2,a0
	c.mv	a1,s2
	addi	a0,s0,+00000067
	jal	ra,0000000023070C7C
	c.mv	a0,s1
	jal	ra,000000002307132C
	c.li	a5,0000000C
	sb	a0,s0,+00000044
	sb	a5,s0,+00000035
	c.li	a2,0000000C
	c.addi4spn	a1,00000014
	addi	a0,s0,+00000036
	jal	ra,0000000023070C7C
	addi	a5,zero,+00000101
	c.lui	a3,00002000
	sh	a5,s0,+00000042
	c.mv	a4,s4
	addi	a3,a3,-000003FF
	c.li	a2,00000001
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,0000000023022BC0

l230237C2:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

l230237D2:
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	c.j	0000000023023712

l230237D8:
	c.lui	a4,00001000
	addi	a4,a4,-0000064C
	c.j	0000000023023712

l230237E0:
	c.li	a0,FFFFFFF4
	c.j	00000000230237C2

;; bl_send_apm_stop_req: 230237E4
;;   Called from:
;;     230226BC (in bl_main_apm_stop)
bl_send_apm_stop_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.lui	s0,00002000
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s1,a0
	c.mv	s2,a1
	c.li	a2,00000001
	c.li	a1,00000007
	addi	a0,s0,-000003FE
	c.swsp	ra,00000084
	jal	ra,0000000023022D2C
	c.beqz	a0,0000000023023820

l23023802:
	sb	s2,a0,+00000000
	addi	a3,s0,-000003FD
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a1,a0
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.li	a4,00000000
	c.li	a2,00000001
	c.addi	sp,00000010
	jal	zero,0000000023022BC0

l23023820:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_apm_sta_del_req: 2302382E
;;   Called from:
;;     230227A6 (in bl_main_apm_sta_delete)
bl_send_apm_sta_del_req proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.lui	s0,00002000
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s1,a0
	c.swsp	a1,00000084
	c.mv	s2,a2
	c.li	a1,00000007
	c.li	a2,00000002
	addi	a0,s0,-000003F5
	c.swsp	ra,0000008C
	c.swsp	a3,00000004
	jal	ra,0000000023022D2C
	c.beqz	a0,0000000023023874

l23023850:
	c.lwsp	s0,000000A4
	sb	s2,a0,+00000001
	c.lwsp	a2,000000C4
	sb	a3,a0,+00000000
	addi	a3,s0,-000003F4
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.mv	a1,a0
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.li	a2,00000001
	c.addi16sp	00000020
	jal	zero,0000000023022BC0

l23023874:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,FFFFFFF4
	c.addi16sp	00000020
	c.jr	ra

;; bl_send_apm_conf_max_sta_req: 23023882
;;   Called from:
;;     2302281E (in bl_main_conf_max_sta)
bl_send_apm_conf_max_sta_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.lui	s0,00002000
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s1,a0
	c.mv	s2,a1
	c.li	a2,00000001
	c.li	a1,00000007
	addi	a0,s0,-000003F3
	c.swsp	ra,00000084
	jal	ra,0000000023022D2C
	c.beqz	a0,00000000230238BE

l230238A0:
	sb	s2,a0,+00000000
	addi	a3,s0,-000003F2
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a1,a0
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.li	a4,00000000
	c.li	a2,00000001
	c.addi	sp,00000010
	jal	zero,0000000023022BC0

l230238BE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_cfg_task_req: 230238CC
;;   Called from:
;;     23022836 (in bl_main_cfg_task_req)
bl_send_cfg_task_req proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.mv	s1,a1
	c.mv	s4,a0
	c.mv	s3,a2
	c.li	a1,0000000C
	addi	a2,zero,+00000024
	c.lui	a0,00003000
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.mv	s2,a3
	c.swsp	a4,00000084
	c.swsp	a5,00000004
	jal	ra,0000000023022D2C
	c.beqz	a0,0000000023023994

l230238F4:
	c.sw	a0,0(s1)
	c.li	a3,00000002
	c.mv	s0,a0
	bltu	a3,s1,0000000023023922

l230238FE:
	c.lwsp	s0,000000E4
	c.lwsp	a2,000000C4
	c.beqz	s1,0000000023023962

l23023904:
	c.mv	a1,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.mv	a0,s4
	c.lwsp	s8,00000088
	c.lui	a3,00003000
	c.li	a4,00000000
	c.addi	a3,00000001
	c.li	a2,00000001
	c.addi16sp	00000030
	jal	zero,0000000023022BC0

l23023922:
	c.li	a5,00000003
	beq	s1,a5,0000000023023980

l23023928:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002302398E

l23023932:
	jal	ra,000000002303030A

l23023936:
	lui	a3,0002307C
	lui	a2,0002307C
	c.mv	a1,a0
	lui	a0,0002307C
	addi	a5,a3,+00000058
	addi	a6,zero,+0000040F
	addi	a4,zero,+0000040F
	addi	a3,a3,+00000058
	addi	a2,a2,+00000064
	addi	a0,a0,+00000074
	jal	ra,000000002304B718

l23023960:
	c.j	0000000023023960

l23023962:
	slli	a2,a4,00000010
	sw	s3,a0,+00000004
	sw	s2,a0,+00000008
	c.sw	a0,12(a4)
	c.mv	a3,a5
	c.srli	a2,00000010
	c.li	a1,00000008
	c.addi	a0,00000014
	jal	ra,000000002304BF86
	c.sw	s0,16(a0)
	c.j	0000000023023904

l23023980:
	sw	s3,a0,+00000004
	sw	s2,a0,+00000008
	sw	zero,a0,+00000010
	c.j	0000000023023904

l2302398E:
	jal	ra,00000000230302E8
	c.j	0000000023023936

l23023994:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.li	a0,FFFFFFF4
	c.addi16sp	00000030
	c.jr	ra

;; bl_platform_on: 230239A6
;;   Called from:
;;     23022976 (in bl_main_rtthread_start)
bl_platform_on proc
	lui	a1,00042042
	c.addi	sp,FFFFFFF0
	addi	a4,a1,+00000000
	lui	a5,0004201E
	addi	a1,a1,+00000000
	c.swsp	ra,00000084
	sw	a4,a5,+0000041C
	jal	ra,0000000023024AEA
	c.bnez	a0,00000000230239CC

l230239C4:
	lui	a5,00044800
	c.li	a4,FFFFFFFF
	c.sw	a5,8(a4)

l230239CC:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; bl_rx_chan_pre_switch_ind: 230239D2
bl_rx_chan_pre_switch_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_rssi_status_ind: 230239D6
bl_rx_rssi_status_ind proc
	lui	a5,0004200E
	lw	a5,a5,-00000270
	c.beqz	a5,00000000230239FA

l230239E0:
	lui	a4,0004200E
	lw	a0,a4,-0000026C
	lb	a1,a2,+0000000A
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.jalr	a5
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230239FA:
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_apm_sta_del_ind: 230239FE
bl_rx_apm_sta_del_ind proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	lui	a0,0002307C
	addi	a0,a0,+0000026C
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a2
	jal	ra,0000000023052118
	lbu	a1,s0,+00000008
	lui	a0,0002307C
	addi	a0,a0,+00000284
	jal	ra,0000000023052118
	lbu	a0,s0,+00000008
	c.li	a5,0000000B
	bltu	a5,a0,0000000023023A58

l23023A30:
	c.li	a5,0000001C
	add	a0,a0,a5
	c.add	s1,a0
	c.lui	a0,00001000
	c.add	a0,s1
	sb	zero,a0,+00000C98

l23023A40:
	lbu	a2,s0,+00000008
	c.li	a1,00000016
	c.li	a0,00000002
	jal	ra,000000002304D7AC
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23023A58:
	lui	a0,0002307C
	addi	a0,a0,+0000029C
	jal	ra,0000000023052118
	c.j	0000000023023A40

;; bl_rx_apm_sta_add_ind: 23023A66
bl_rx_apm_sta_add_ind proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	c.mv	s3,a0
	lui	a0,0002307C
	addi	a0,a0,+000001CC
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s0,a2
	c.swsp	s1,00000088
	jal	ra,0000000023052118
	c.lw	s0,8(a1)
	lui	a0,0002307C
	addi	a0,a0,+000001E4
	jal	ra,0000000023052118
	lbu	a5,s0,+00000010
	lbu	a6,s0,+00000011
	lbu	a4,s0,+0000000F
	lbu	a3,s0,+0000000E
	lbu	a2,s0,+0000000D
	lbu	a1,s0,+0000000C
	lui	a0,0002307C
	addi	a0,a0,+000001FC
	jal	ra,0000000023052118
	lbu	a1,s0,+00000012
	lui	a0,0002307C
	addi	a0,a0,+00000228
	jal	ra,0000000023052118
	lbu	a1,s0,+00000013
	lui	a0,0002307C
	addi	a0,a0,+00000284
	jal	ra,0000000023052118
	lbu	s2,s0,+00000013
	c.li	a5,0000000B
	bltu	a5,s2,0000000023023B4C

l23023ADE:
	c.li	a0,0000001C
	add	s2,s2,a0
	c.lui	s1,00001000
	addi	a0,s1,-00000370
	c.li	a2,00000006
	addi	a1,s0,+0000000C
	c.add	a0,s2
	c.add	a0,s3
	jal	ra,0000000023070C7C
	lbu	a5,s0,+00000013
	add	a0,s3,s2
	c.add	a0,s1
	sb	a5,a0,+00000C99
	lbu	a5,s0,+00000012
	sb	a5,a0,+00000C9A
	c.li	a5,00000001
	sb	a5,a0,+00000C98
	lb	a5,s0,+00000014
	sb	a5,a0,+00000C9C
	c.lw	s0,24(a5)
	sw	a5,a0,+00000CA0
	c.lw	s0,28(a5)
	sw	a5,a0,+00000CA4
	lbu	a5,s0,+00000020
	sb	a5,a0,+00000CA8

l23023B30:
	lbu	a2,s0,+00000013
	c.li	a1,00000015
	c.li	a0,00000002
	jal	ra,000000002304D7AC
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23023B4C:
	lui	a0,0002307C
	addi	a0,a0,+00000240
	jal	ra,0000000023052118
	c.j	0000000023023B30

;; notify_event_scan_done: 23023B5A
;;   Called from:
;;     23023BA8 (in bl_rx_scanu_join_cfm)
;;     23023BBA (in bl_rx_scanu_start_cfm)
notify_event_scan_done proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a2,00000004
	c.mv	s0,a0
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	c.swsp	ra,0000008C
	jal	ra,0000000023070EB8
	c.li	a2,00000004
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,0000000023070EB8
	addi	a5,zero,+000000EC
	c.swsp	a5,00000084
	lui	a5,0004200E
	sltu	a0,zero,s0
	lw	a5,a5,-00000284
	c.addi	a0,00000001
	c.swsp	a0,00000004
	c.beqz	a5,0000000023023B9A

l23023B8E:
	lui	a4,0004200E
	lw	a0,a4,-00000280
	c.addi4spn	a1,00000008
	c.jalr	a5

l23023B9A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; bl_rx_scanu_join_cfm: 23023BA2
bl_rx_scanu_join_cfm proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,0000000023023B5A
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_rx_scanu_start_cfm: 23023BB4
bl_rx_scanu_start_cfm proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023023B5A
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_rx_chan_switch_ind: 23023BC6
bl_rx_chan_switch_ind proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	lbu	s0,a2,+00000008
	c.li	a1,00000000
	c.li	a2,00000004
	c.addi4spn	a0,00000008
	jal	ra,0000000023070EB8
	c.li	a2,00000004
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,0000000023070EB8
	lui	a5,0004200E
	lw	a5,a5,-00000284
	c.swsp	zero,00000004
	c.swsp	s0,00000084
	c.beqz	a5,0000000023023BFE

l23023BF2:
	lui	a4,0004200E
	lw	a0,a4,-00000280
	c.addi4spn	a1,00000008
	c.jalr	a5

l23023BFE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; bl_rx_sm_connect_ind: 23023C08
bl_rx_sm_connect_ind proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	ra,0000009C
	lhu	a3,a2,+00000008
	lui	a5,0002307C
	addi	a4,a5,+0000079C
	addi	s3,a5,+0000079C
	c.mv	s1,a0
	c.mv	s0,a2
	c.li	s2,00000000
	c.li	a5,00000010

l23023C2C:
	lhu	a2,a4,+00000000
	beq	a2,a3,0000000023023C3E

l23023C34:
	c.addi	s2,00000001
	c.addi	a4,00000008
	bne	s2,a5,0000000023023C2C

l23023C3C:
	c.li	s2,00000000

l23023C3E:
	lui	a0,0002307C
	addi	a0,a0,+000002F0
	jal	ra,0000000023052118
	lhu	a1,s0,+00000008
	lui	a0,0002307C
	addi	a0,a0,+0000030C
	c.slli	s2,03
	jal	ra,0000000023052118
	c.add	s2,s3
	lw	a1,s2,+00000004
	lui	a0,0002307C
	addi	a0,a0,+00000324
	jal	ra,0000000023052118
	lbu	a5,s0,+0000000E
	lbu	a6,s0,+0000000F
	lbu	a4,s0,+0000000D
	lbu	a3,s0,+0000000C
	lbu	a2,s0,+0000000B
	lbu	a1,s0,+0000000A
	lui	a0,0002307C
	addi	a0,a0,+00000340
	jal	ra,0000000023052118
	lbu	a1,s0,+00000011
	lui	a0,0002307C
	addi	a0,a0,+0000036C
	jal	ra,0000000023052118
	lbu	a1,s0,+00000012
	lui	a0,0002307C
	addi	a0,a0,+00000380
	jal	ra,0000000023052118
	lbu	a1,s0,+00000013
	lui	a0,0002307C
	addi	a0,a0,+00000394
	jal	ra,0000000023052118
	lbu	a1,s0,+00000014
	lui	a0,0002307C
	addi	a0,a0,+000003A8
	jal	ra,0000000023052118
	lbu	a1,s0,+00000015
	lui	a0,0002307C
	addi	a0,a0,+000003B8
	jal	ra,0000000023052118
	lhu	a1,s0,+00000016
	lui	a0,0002307C
	addi	a0,a0,+000003C8
	jal	ra,0000000023052118
	lhu	a1,s0,+00000018
	lui	a0,0002307C
	addi	a0,a0,+000003E8
	jal	ra,0000000023052118
	lhu	a1,s0,+0000033C
	lui	a0,0002307C
	addi	a0,a0,+00000408
	jal	ra,0000000023052118
	lbu	a1,s0,+0000033E
	lui	a0,0002307C
	addi	a0,a0,+00000418
	jal	ra,0000000023052118
	lhu	a1,s0,+00000340
	lui	a0,0002307C
	addi	a0,a0,+0000042C
	jal	ra,0000000023052118
	lbu	a1,s0,+00000342
	lui	a0,0002307C
	addi	a0,a0,+00000444
	jal	ra,0000000023052118
	lw	a1,s0,+00000344
	lui	a0,0002307C
	addi	a0,a0,+00000458
	jal	ra,0000000023052118
	lw	a1,s0,+00000348
	lui	a0,0002307C
	addi	a0,a0,+00000474
	jal	ra,0000000023052118
	lhu	a5,s0,+00000008
	c.bnez	a5,0000000023023E3E

l23023D68:
	lbu	a4,s0,+00000012
	c.lui	a5,00001000
	c.add	a5,s1
	sw	a4,a5,+00000E24
	c.li	a5,00000001
	c.sw	s1,0(a5)

l23023D78:
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,0000000023070EB8
	c.lw	s0,8(a5)
	c.swsp	a5,00000000
	c.lw	s0,12(a5)
	c.swsp	a5,00000080
	lbu	a5,s0,+00000011
	sb	a5,sp,+00000008
	lbu	a5,s0,+00000012
	sb	a5,sp,+00000009
	lbu	a5,s0,+00000013
	sb	a5,sp,+0000000A
	lbu	a5,s0,+00000014
	c.swsp	a5,00000084
	lhu	a5,s0,+0000033C
	sh	a5,sp,+00000010
	lbu	a5,s0,+0000033E
	sb	a5,sp,+00000012
	lhu	a5,s0,+00000340
	sh	a5,sp,+00000014
	lbu	a5,s0,+00000342
	sb	a5,sp,+00000016
	lw	a5,s0,+00000344
	c.swsp	a5,0000000C
	lw	a5,s0,+00000348
	c.swsp	a5,0000008C
	lui	a5,0004200E
	lw	a5,a5,-00000268
	c.beqz	a5,0000000023023DEC

l23023DE0:
	lui	a4,0004200E
	lw	a0,a4,-00000264
	c.mv	a1,sp
	c.jalr	a5

l23023DEC:
	lhu	a5,s0,+00000008
	c.bnez	a5,0000000023023E2E

l23023DF2:
	lbu	a5,s0,+00000011
	addi	a4,zero,+000000C4
	c.li	a2,00000000
	add	a5,a5,a4
	addi	a1,a5,+00000360
	c.add	a1,s1
	c.beqz	a1,0000000023023E44

l23023E08:
	c.add	s1,a5
	lw	a0,s1,+00000368
	c.beqz	a0,0000000023023E44

l23023E10:
	lui	a1,00023040
	addi	a1,a1,+0000062E
	jal	ra,000000002303A688
	lw	a0,s1,+00000368
	lui	a1,00023040
	c.li	a2,00000000
	addi	a1,a1,+0000051C
	jal	ra,000000002303A688

l23023E2E:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.li	a0,00000000
	c.addi16sp	00000040
	c.jr	ra

l23023E3E:
	sw	zero,s1,+00000000
	c.j	0000000023023D78

l23023E44:
	lui	a0,0002307C
	addi	a0,a0,+00000490
	jal	ra,0000000023052118
	c.j	0000000023023E2E

;; bl_rx_sm_disconnect_ind: 23023E52
bl_rx_sm_disconnect_ind proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	lui	a0,0002307C
	addi	a0,a0,+000004CC
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s0,a2
	jal	ra,000000002303FBF2
	lhu	a1,s0,+00000008
	c.swsp	a0,00000080
	lui	a0,0002307C
	addi	a0,a0,+000004D4
	jal	ra,0000000023052118
	lbu	a1,s0,+0000000A
	lui	a0,0002307C
	addi	a0,a0,+00000504
	jal	ra,0000000023052118
	lbu	a1,s0,+0000000B
	lui	a0,0002307C
	addi	a0,a0,+0000051C
	lui	s2,0004200E
	jal	ra,0000000023052118
	addi	s2,s2,-00000260
	lw	a5,s2,+00000000
	c.beqz	a5,0000000023023EDC

l23023EAC:
	c.li	a1,00000000
	c.li	a2,00000008
	c.addi4spn	a0,00000008
	jal	ra,0000000023070EB8
	lhu	a5,s0,+00000008
	lui	a4,0004200E
	lw	a0,a4,-0000025C
	sh	a5,sp,+00000008
	lbu	a5,s0,+0000000A
	c.addi4spn	a1,00000008
	sb	a5,sp,+0000000A
	lbu	a5,s0,+0000000B
	c.swsp	a5,00000084
	lw	a5,s2,+00000000
	c.jalr	a5

l23023EDC:
	lbu	a5,s0,+0000000A
	addi	a4,zero,+000000C4
	add	a5,a5,a4
	addi	a4,a5,+00000360
	c.add	a4,s1
	c.beqz	a4,0000000023023F14

l23023EF0:
	c.add	s1,a5
	lw	a0,s1,+00000368
	c.beqz	a0,0000000023023F14

l23023EF8:
	lui	a1,00023040
	c.li	a2,00000000
	addi	a1,a1,+00000672
	jal	ra,000000002303A688
	lw	a0,s1,+00000368
	c.addi4spn	a3,00000004
	c.mv	a2,a3
	c.mv	a1,a3
	jal	ra,000000002303A64A

l23023F14:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; bl_rx_scanu_result_ind: 23023F22
bl_rx_scanu_result_ind proc
	c.addi16sp	FFFFFF80
	c.swsp	s0,0000003C
	c.li	a1,00000000
	c.mv	s0,a2
	c.addi4spn	a0,00000008
	addi	a2,zero,+00000020
	c.swsp	ra,000000BC
	c.swsp	s1,000000B8
	c.swsp	s2,00000038
	c.swsp	s3,000000B4
	c.swsp	s4,00000034
	sb	zero,sp,+00000007
	jal	ra,0000000023070EB8
	lhu	a5,s0,+00000024
	addi	a4,zero,+00000080
	andi	a5,a5,+000000FC
	bne	a5,a4,0000000023024192

l23023F52:
	lui	s3,0004200E
	lw	a5,s3,-0000028C
	addi	s3,s3,-0000028C
	beq	a5,zero,00000000230240E6

l23023F62:
	addi	a2,zero,+00000038
	c.li	a1,00000000
	c.addi4spn	a0,00000028
	jal	ra,0000000023070EB8
	lhu	s1,s0,+00000008
	addi	s4,s0,+00000048
	c.mv	s2,s4
	c.li	a5,00000000

l23023F7A:
	bge	a5,s1,0000000023023FAC

l23023F7E:
	lbu	a4,s2,+00000000
	lbu	a2,s2,+00000001
	bne	a4,zero,00000000230240F8

l23023F8A:
	addi	a5,zero,+00000020
	bltu	a5,a2,0000000023023FAC

l23023F92:
	addi	a1,s2,+00000002
	addi	a0,sp,+0000002E
	c.swsp	a2,000000AC
	jal	ra,0000000023070C7C
	lbu	a5,s2,+00000001
	c.addi4spn	a4,00000060
	c.add	a5,a4
	sb	zero,a5,+00000FCE

l23023FAC:
	lhu	a2,s0,+00000008
	c.mv	a5,s4
	c.li	a3,00000000
	c.li	a1,00000003

l23023FB6:
	bge	a3,a2,0000000023023FD6

l23023FBA:
	lbu	a0,a5,+00000000
	lbu	a4,a5,+00000001
	bne	a0,a1,0000000023024100

l23023FC6:
	addi	a3,zero,+00000020
	bltu	a3,a4,0000000023023FD6

l23023FCE:
	lbu	a5,a5,+00000002
	sb	a5,sp,+00000052

l23023FD6:
	lhu	a5,s0,+00000046
	c.andi	a5,00000010
	beq	a5,zero,000000002302418C

l23023FE0:
	addi	s1,s1,-00000024
	c.slli	s1,10
	c.srli	s1,00000010
	c.mv	a1,s1
	addi	a2,zero,+00000030
	c.mv	a0,s4
	jal	ra,000000002300EEE8
	c.mv	a1,a0
	c.li	s2,00000000
	c.beqz	a0,0000000023024028

l23023FFA:
	lbu	a5,sp,+00000059
	ori	a5,a5,+00000020
	sb	a5,sp,+00000059
	lbu	a2,a0,+00000001
	c.addi4spn	a0,00000008
	c.addi	a2,00000002
	andi	a2,a2,+000000FF
	jal	ra,0000000023070C7C
	addi	a3,sp,+00000007
	c.addi4spn	a2,00000058
	addi	a1,sp,+00000057
	c.addi4spn	a0,00000008
	jal	ra,00000000230100A0
	c.mv	s2,a0

l23024028:
	lui	a2,0002307C
	c.mv	a1,s1
	c.li	a3,00000004
	addi	a2,a2,+00000188
	c.mv	a0,s4
	jal	ra,000000002300EF04
	c.mv	a1,a0
	c.beqz	a0,000000002302406C

l2302403E:
	lbu	a5,sp,+00000059
	ori	a5,a5,+00000008
	sb	a5,sp,+00000059
	bne	s2,zero,000000002302406C

l2302404E:
	lbu	a2,a0,+00000001
	c.addi4spn	a0,00000008
	c.addi	a2,00000002
	andi	a2,a2,+000000FF
	jal	ra,0000000023070C7C
	addi	a2,sp,+00000056
	addi	a1,sp,+00000055
	c.addi4spn	a0,00000008
	jal	ra,0000000023010304

l2302406C:
	c.lwsp	s9,000000C4
	c.lui	a5,00003000
	addi	a5,a5,-00000800
	c.and	a4,a5
	bne	a4,a5,000000002302412A

l2302407A:
	lbu	a3,sp,+00000056
	lbu	a5,sp,+00000058
	c.or	a5,a3
	andi	a3,a5,+00000008
	c.andi	a5,00000004
	c.beqz	a5,0000000023024108

l2302408C:
	c.li	a5,00000003
	c.beqz	a3,0000000023024092

l23024090:
	c.li	a5,00000004

l23024092:
	sb	a5,sp,+00000054
	c.lui	a5,00003000
	addi	a5,a5,-00000800
	bne	a4,a5,0000000023024172

l230240A0:
	c.li	a5,00000004

l230240A2:
	sb	a5,sp,+00000053

l230240A6:
	lbu	a5,s0,+00000020
	lui	a4,0004200E
	lw	a0,a4,-00000288
	sb	a5,sp,+0000004F
	lbu	a5,s0,+00000021
	c.addi4spn	a1,00000028
	sb	a5,sp,+00000050
	lbu	a5,s0,+00000022
	sb	a5,sp,+00000051
	lhu	a5,s0,+00000034
	sh	a5,sp,+00000028
	lhu	a5,s0,+00000036
	sh	a5,sp,+0000002A
	lhu	a5,s0,+00000038
	sh	a5,sp,+0000002C
	lw	a5,s3,+00000000
	c.jalr	a5

l230240E6:
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.lwsp	s1,00000198
	c.li	a0,00000000
	c.addi16sp	00000080
	c.jr	ra

l230240F8:
	c.addi	a2,00000002
	c.add	a5,a2
	c.add	s2,a2
	c.j	0000000023023F7A

l23024100:
	c.addi	a4,00000002
	c.add	a3,a4
	c.add	a5,a4
	c.j	0000000023023FB6

l23024108:
	c.beqz	a3,00000000230240A0

l2302410A:
	c.lwsp	s5,000000A4
	lui	a5,00008001
	addi	a5,a5,-00000800
	c.and	a5,a3
	c.beqz	a5,000000002302411C

l23024118:
	c.li	a5,00000002
	c.j	0000000023024092

l2302411C:
	lui	a5,00004000
	addi	a5,a5,+00000400
	c.and	a3,a5
	c.bnez	a3,0000000023024090

l23024128:
	c.j	0000000023024118

l2302412A:
	lbu	a5,sp,+00000059
	andi	a3,a5,+00000008
	c.beqz	a3,0000000023024152

l23024134:
	lbu	a5,sp,+00000056
	andi	a3,a5,+00000008
	c.andi	a5,00000004
	c.bnez	a5,000000002302408C

l23024140:
	c.beqz	a3,0000000023024172

l23024142:
	lbu	a5,sp,+00000055

l23024146:
	andi	a3,a5,+00000008
	c.bnez	a3,0000000023024118

l2302414C:
	c.andi	a5,00000004
	c.bnez	a5,0000000023024090

l23024150:
	c.j	0000000023024118

l23024152:
	andi	a5,a5,+00000020
	c.beqz	a5,000000002302416C

l23024158:
	lbu	a5,sp,+00000058
	andi	a3,a5,+00000008
	c.andi	a5,00000004
	c.bnez	a5,000000002302408C

l23024164:
	c.beqz	a3,0000000023024172

l23024166:
	lbu	a5,sp,+00000057
	c.j	0000000023024146

l2302416C:
	c.li	a5,00000001
	sb	a5,sp,+00000054

l23024172:
	lbu	a5,sp,+00000059
	andi	a4,a5,+00000020
	c.beqz	a4,0000000023024180

l2302417C:
	c.li	a5,00000003
	c.j	00000000230240A2

l23024180:
	c.andi	a5,00000008
	c.beqz	a5,0000000023024188

l23024184:
	c.li	a5,00000002
	c.j	00000000230240A2

l23024188:
	c.li	a5,00000001
	c.j	00000000230240A2

l2302418C:
	sb	zero,sp,+00000053
	c.j	00000000230240A6

l23024192:
	addi	a4,zero,+00000050
	bne	a5,a4,00000000230241CE

l2302419A:
	lui	a0,0002307C
	addi	a0,a0,+000002CC
	jal	ra,0000000023052118
	lui	a5,0004200E
	lw	a3,a5,-00000274
	c.beqz	a3,00000000230240E6

l230241B0:
	lhu	a4,s0,+0000003E
	lhu	a5,s0,+00000042
	lhu	a1,s0,+0000003C
	lhu	a2,s0,+00000040
	c.slli	a4,10
	c.slli	a5,10
	c.or	a1,a4
	c.or	a2,a5
	c.li	a0,00000000
	c.jalr	a3
	c.j	00000000230240E6

l230241CE:
	lui	a0,0002307C
	addi	a0,a0,+000002E0
	jal	ra,0000000023052118
	c.j	00000000230240E6

;; bl_rx_mesh_path_update_ind: 230241DC
bl_rx_mesh_path_update_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_mesh_proxy_update_ind: 230241E0
bl_rx_mesh_proxy_update_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_remain_on_channel_exp_ind: 230241E4
bl_rx_remain_on_channel_exp_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_ps_change_ind: 230241E8
bl_rx_ps_change_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_traffic_req_ind: 230241EC
bl_rx_traffic_req_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_csa_counter_ind: 230241F0
bl_rx_csa_counter_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_csa_finish_ind: 230241F4
bl_rx_csa_finish_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_csa_traffic_ind: 230241F8
bl_rx_csa_traffic_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_channel_survey_ind: 230241FC
bl_rx_channel_survey_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_dbg_error_ind: 23024200
bl_rx_dbg_error_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_tdls_chan_switch_cfm: 23024204
bl_rx_tdls_chan_switch_cfm proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_tdls_chan_switch_ind: 23024208
bl_rx_tdls_chan_switch_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_tdls_chan_switch_base_ind: 2302420C
bl_rx_tdls_chan_switch_base_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_tdls_peer_ps_ind: 23024210
bl_rx_tdls_peer_ps_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_me_tkip_mic_failure_ind: 23024214
bl_rx_me_tkip_mic_failure_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_me_tx_credits_update_ind: 23024218
bl_rx_me_tx_credits_update_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_mesh_path_create_cfm: 2302421C
bl_rx_mesh_path_create_cfm proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_mesh_peer_update_ind: 23024220
bl_rx_mesh_peer_update_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_sm_connect_ind_cb_register: 23024224
;;   Called from:
;;     23028B46 (in wifi_mgmr_event_init)
bl_rx_sm_connect_ind_cb_register proc
	lui	a5,0004200E
	sw	a1,a5,+00000D98
	lui	a5,0004200E
	sw	a0,a5,+00000D9C
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_sm_disconnect_ind_cb_register: 23024238
;;   Called from:
;;     23028B54 (in wifi_mgmr_event_init)
bl_rx_sm_disconnect_ind_cb_register proc
	lui	a5,0004200E
	sw	a1,a5,+00000DA0
	lui	a5,0004200E
	sw	a0,a5,+00000DA4
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_beacon_ind_cb_register: 2302424C
;;   Called from:
;;     23028B62 (in wifi_mgmr_event_init)
bl_rx_beacon_ind_cb_register proc
	lui	a5,0004200E
	sw	a1,a5,+00000D74
	lui	a5,0004200E
	sw	a0,a5,+00000D78
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_probe_resp_ind_cb_register: 23024260
;;   Called from:
;;     23028B70 (in wifi_mgmr_event_init)
bl_rx_probe_resp_ind_cb_register proc
	lui	a5,0004200E
	sw	a1,a5,+00000D8C
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_pkt_cb_register: 2302426C
;;   Called from:
;;     230285C6 (in wifi_mgmr_sniffer_register)
bl_rx_pkt_cb_register proc
	lui	a5,0004200E
	sw	a1,a5,+00000D84
	lui	a5,0004200E
	sw	a0,a5,+00000D88
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_pkt_cb_unregister: 23024280
;;   Called from:
;;     230285D6 (in wifi_mgmr_sniffer_unregister)
bl_rx_pkt_cb_unregister proc
	lui	a5,0004200E
	sw	zero,a5,+00000D84
	lui	a5,0004200E
	sw	zero,a5,+00000D88
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_rssi_cb_register: 23024294
;;   Called from:
;;     23028B7E (in wifi_mgmr_event_init)
bl_rx_rssi_cb_register proc
	lui	a5,0004200E
	sw	a1,a5,+00000D90
	lui	a5,0004200E
	sw	a0,a5,+00000D94
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_event_register: 230242A8
;;   Called from:
;;     23028B8C (in wifi_mgmr_event_init)
bl_rx_event_register proc
	lui	a5,0004200E
	sw	a1,a5,+00000D7C
	lui	a5,0004200E
	sw	a0,a5,+00000D80
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_e2a_handler: 230242BC
;;   Called from:
;;     2300E808 (in ke_msg_send)
bl_rx_e2a_handler proc
	lhu	a5,a0,+00000000
	c.mv	a1,a0
	lui	a0,0004201D
	srli	a4,a5,0000000A
	slli	a3,a4,00000002
	lui	a4,0002307C
	addi	a4,a4,+00000768
	c.add	a4,a3
	c.lw	a4,0(a4)
	andi	a5,a5,+000003FF
	c.slli	a5,02
	c.add	a5,a4
	lui	a4,0004201D
	lw	t1,a4,+000005D4
	c.lw	a5,0(a2)
	addi	a0,a0,+000005B0
	c.jr	t1

;; bl_rx_pkt_cb: 230242F2
;;   Called from:
;;     2302473E (in tcpip_stack_input)
bl_rx_pkt_cb proc
	lui	a5,0004200E
	lw	t1,a5,-0000027C
	c.mv	a2,a1
	beq	t1,zero,000000002302430C

l23024300:
	lui	a5,0004200E
	c.mv	a1,a0
	lw	a0,a5,-00000278
	c.jr	t1

l2302430C:
	c.jr	ra

;; bl_tx_push: 2302430E
;;   Called from:
;;     230243EC (in bl_tx_resend)
;;     23024438 (in bl_tx_try_flush)
bl_tx_push proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s4,00000004
	c.mv	s2,a0
	c.lw	a0,52(a0)
	c.mv	s0,a1
	lw	s4,a1,+00000008
	jal	ra,000000002302226E
	addi	s1,a0,+00000004
	c.mv	s3,a0
	c.bnez	s1,0000000023024342

l23024332:
	lui	a0,0002307D
	addi	a1,zero,+00000037
	addi	a0,a0,-000004CC
	jal	ra,0000000023052118

l23024342:
	addi	a1,s0,+0000000C
	addi	s3,s3,+00000054

l2302434A:
	c.addi	a1,00000001
	lbu	a5,a1,-00000001
	c.addi	s1,00000001
	sb	a5,s1,+00000FFF
	bne	s3,s1,000000002302434A

l2302435A:
	lw	a0,s2,+00000034
	c.mv	a1,s4
	jal	ra,00000000230222AC
	lw	a5,s2,+00000038
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi	a5,00000001
	sw	a5,s2,+00000038
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; bl_tx_resend: 2302437E
;;   Called from:
;;     23022350 (in ipc_host_irq)
bl_tx_resend proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004201E
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	lui	s4,0004200E
	jal	ra,000000002303100A
	lui	s3,0004200E
	lui	s5,0004200E
	addi	s1,s1,+00000420

l230243A6:
	addi	s0,s4,-00000254
	c.lw	s0,0(a4)
	lw	a5,s3,-00000250
	beq	a4,a5,00000000230243C4

l230243B4:
	addi	s2,s5,-000006CC
	lw	a5,s2,+00000000
	c.lw	a5,52(a0)
	jal	ra,000000002302226E
	c.bnez	a0,00000000230243D8

l230243C4:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,000000002303101E

l230243D8:
	c.lw	s0,0(a5)
	lw	a0,s2,+00000000
	c.andi	a5,00000007
	c.slli	a5,02
	c.add	a5,s1
	c.lw	a5,0(a4)
	sw	zero,a4,+00000004
	c.lw	a5,0(a1)
	jal	ra,000000002302430E
	c.lw	s0,0(a5)
	c.addi	a5,00000001
	c.sw	s0,0(a5)
	c.j	00000000230243A6

;; bl_tx_try_flush: 230243F8
;;   Called from:
;;     23022924 (in bl_main_event_handle)
bl_tx_try_flush proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lui	s1,0004200E
	jal	ra,000000002303100A
	lui	s2,0004201E

l2302440E:
	addi	s0,s1,-000006CC
	c.lw	s0,0(a5)
	c.lw	a5,52(a0)
	jal	ra,000000002302226E
	c.beqz	a0,0000000023024428

l2302441C:
	addi	a0,s2,+00000440
	jal	ra,000000002304B984
	c.mv	a1,a0
	c.bnez	a0,0000000023024436

l23024428:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002303101E

l23024436:
	c.lw	s0,0(a0)
	jal	ra,000000002302430E
	c.j	000000002302440E

;; bl_txdatacfm: 2302443E
bl_txdatacfm proc
	c.lw	a1,4(a5)
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	sub	s0,zero,a5
	c.andi	s0,00000003
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.add	s0,a5
	c.lw	s0,4(a5)
	c.li	a0,FFFFFFFF
	c.beqz	a5,00000000230244A8

l23024458:
	slli	a4,a5,0000000F
	c.mv	s1,a1
	bge	a4,zero,00000000230244C0

l23024462:
	lui	s2,0004200E
	addi	s2,s2,-00000250
	lw	a5,s2,+00000000
	lui	a4,0004200E
	lw	a4,a4,-00000254
	c.addi	a5,00000001
	c.xor	a5,a4
	c.andi	a5,00000007
	c.beqz	a5,00000000230244B4

l2302447E:
	lui	a0,0002307D
	addi	a0,a0,-000004B4
	jal	ra,00000000230520DC
	lw	a4,s2,+00000000
	lui	a5,0004201E
	addi	a5,a5,+00000420
	andi	a3,a4,+00000007
	c.slli	a3,02
	c.add	a5,a3
	c.addi	a4,00000001
	c.sw	a5,0(s0)
	sw	a4,s2,+00000000

l230244A6:
	c.li	a0,00000000

l230244A8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230244B4:
	lui	a0,0002307D
	addi	a0,a0,-000004A4
	jal	ra,00000000230520DC

l230244C0:
	c.mv	a0,s1
	jal	ra,0000000023040890
	c.j	00000000230244A6

;; bl_tx_notify: 230244C8
;;   Called from:
;;     23022342 (in ipc_host_irq)
bl_tx_notify proc
	lui	a5,0004200E
	lw	a0,a5,-00000258
	c.beqz	a0,00000000230244DC

l230244D2:
	c.li	a3,00000000
	c.li	a2,00000002
	c.li	a1,00000000
	jal	zero,00000000230312F2

l230244DC:
	c.jr	ra

;; bl_output: 230244DE
;;   Called from:
;;     23029260 (in wifi_tx)
bl_output proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.beqz	a0,00000000230244FA

l230244F2:
	lbu	a5,a1,+00000041
	c.andi	a5,00000004
	c.bnez	a5,000000002302451C

l230244FA:
	lui	a0,0002307D
	addi	a0,a0,-00000570
	jal	ra,0000000023052118
	c.li	a0,FFFFFFF5

l23024508:
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

l2302451C:
	lui	s0,0004200E
	addi	s0,s0,-00000258
	c.lw	s0,0(a5)
	c.mv	s2,a0
	c.mv	s1,a2
	c.mv	s5,a3
	c.bnez	a5,0000000023024534

l2302452E:
	jal	ra,0000000023030D24
	c.sw	s0,0(a0)

l23024534:
	lui	a5,0004200E
	addi	a1,zero,+00000080
	c.mv	a0,s1
	sw	s2,a5,+00000934
	lw	s3,s1,+00000004
	lhu	s4,s1,+00000008
	jal	ra,000000002304086C
	c.beqz	a0,0000000023024560

l23024550:
	lui	a0,0002307D
	addi	a0,a0,-00000550
	jal	ra,0000000023052118
	c.li	a0,FFFFFFF4
	c.j	0000000023024508

l23024560:
	c.lw	s1,4(a5)
	addi	a2,zero,+0000005C
	c.li	a1,00000000
	sub	s0,zero,a5
	c.andi	s0,00000003
	c.add	s0,a5
	c.mv	a0,s0
	jal	ra,0000000023070EB8
	c.li	a2,00000006
	c.mv	a1,s3
	c.sw	s0,8(s1)
	addi	a0,s0,+0000001C
	jal	ra,0000000023070C7C
	c.li	a2,00000006
	addi	a1,s3,+00000006
	addi	a0,s0,+00000022
	jal	ra,0000000023070C7C
	c.sw	s0,12(s1)
	lbu	a5,s3,+0000000D
	lbu	a4,s3,+0000000C
	sb	zero,s0,+00000036
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s0,+00000028
	c.lui	a5,00001000
	c.add	a5,s2
	beq	s5,zero,0000000023024650

l230245B0:
	lbu	a5,a5,-000001E4

l230245B4:
	c.addi	s4,FFFFFFF2
	sb	a5,s0,+00000037
	sh	zero,s0,+0000003A
	sh	s4,s0,+00000014
	beq	s5,zero,0000000023024656

l230245C6:
	c.lui	a5,00001000
	c.add	s2,a5
	lw	a5,s2,-000001DC
	sb	a5,s0,+00000038

l230245D2:
	addi	s4,s0,+0000003C
	c.mv	s2,s1
	c.li	s3,00000000
	c.li	s5,00000004
	lui	s6,0002307D

l230245E0:
	bne	s3,zero,0000000023024662

l230245E4:
	lw	a5,s2,+00000004
	addi	a5,a5,+0000008E
	c.sw	s0,60(a5)
	lhu	a5,s2,+0000000A
	addi	a5,a5,-0000008E
	c.sw	s0,76(a5)

l230245F8:
	lw	s2,s2,+00000000
	c.addi	s3,00000001
	c.addi	s4,00000004
	bne	s2,zero,00000000230245E0

l23024604:
	c.li	a5,00000002
	bge	a5,s3,0000000023024618

l2302460A:
	lui	a0,0002307D
	c.mv	a1,s3
	addi	a0,a0,-000004E8
	jal	ra,0000000023052118

l23024618:
	lui	a5,00011111
	addi	a5,a5,+00000111
	c.sw	s0,16(a5)
	addi	a5,s0,+00000004
	c.sw	s0,24(a5)
	c.mv	a0,s1
	sw	zero,s0,+00000004
	jal	ra,0000000023040B3E
	jal	ra,000000002303100A
	lui	a0,0004201E
	addi	a0,a0,+00000440
	c.mv	a1,s0
	jal	ra,000000002304B970
	jal	ra,000000002303101E
	jal	ra,0000000023018FA4
	c.li	a0,00000000
	c.j	0000000023024508

l23024650:
	lbu	a5,a5,-000001E0
	c.j	00000000230245B4

l23024656:
	c.mv	a1,s3
	c.mv	a0,s2
	c.jal	0000000023024A98
	sb	a0,s0,+00000038
	c.j	00000000230245D2

l23024662:
	bne	s3,s5,0000000023024672

l23024666:
	lhu	a1,s1,+00000008
	addi	a0,s6,-00000528
	jal	ra,0000000023052118

l23024672:
	lw	a5,s2,+00000004
	sw	a5,s4,+00000000
	lhu	a5,s2,+0000000A
	sw	a5,s4,+00000010
	c.j	00000000230245F8

;; bl_radarind: 23024684
bl_radarind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_msgackind: 23024688
bl_msgackind proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,36(a5)
	c.addi	a0,00000004
	c.jalr	a5
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_prim_tbtt_ind: 2302469A
bl_prim_tbtt_ind proc
	c.jr	ra

;; my_pbuf_free_custom: 2302469C
my_pbuf_free_custom proc
	c.lw	a0,20(a0)
	jal	zero,0000000023004750

;; bl_dbgind: 230246A2
bl_dbgind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_sec_tbtt_ind: 230246A6
bl_sec_tbtt_ind proc
	c.jr	ra

;; my_pbuf_free_custom_fake: 230246A8
my_pbuf_free_custom_fake proc
	c.jr	ra

;; tcpip_stack_input: 230246AA
;;   Called from:
;;     2300A77A (in rxu_swdesc_upload_evt)
tcpip_stack_input proc
	c.andi	a1,00000001
	c.bnez	a1,00000000230246B2

l230246AE:
	c.li	a0,FFFFFFFF
	c.jr	ra

l230246B2:
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
	c.swsp	s10,00000030
	c.swsp	s11,000000AC
	c.sdsp	s0,00000148
	lbu	a5,a2,+00000031
	addi	a1,zero,+000000FF
	bne	a5,a1,00000000230246FC

l230246DC:
	lui	a5,0004201E
	lw	s2,a5,-000006FC
	addi	a5,a5,-000006FC

l230246E8:
	bne	s2,a5,00000000230246F0

l230246EC:
	c.li	s2,00000000
	c.j	0000000023024722

l230246F0:
	lbu	a1,s2,+0000006F
	c.bnez	a1,0000000023024722

l230246F6:
	lw	s2,s2,+00000000
	c.j	00000000230246E8

l230246FC:
	c.li	a1,00000001
	c.li	s2,00000000
	blt	a1,a5,0000000023024722

l23024704:
	addi	a1,zero,+000000C4
	add	a1,a5,a1
	lui	a5,0004201D
	addi	a5,a5,+000005AC
	addi	s2,a1,+00000360
	c.add	s2,a5
	c.add	a5,a1
	lbu	a5,a5,+000003CF
	c.beqz	a5,00000000230246EC

l23024722:
	c.lw	a2,48(a5)
	c.mv	s4,a4
	c.swsp	a0,00000094
	andi	a4,a5,+00000002
	c.mv	s6,a3
	c.mv	s0,a2
	c.beqz	a4,00000000230247C0

l23024732:
	lw	s1,s4,+00000000
	lhu	a1,a2,+00000000
	c.add	s1,a3
	c.mv	a0,s1
	jal	ra,00000000230242F2
	lhu	a1,s1,+00000000
	addi	a5,zero,+00000080
	andi	a4,a1,+000000FC
	beq	a4,a5,00000000230247BC

l23024752:
	addi	a5,a4,-000000A0
	andi	a5,a5,-00000021
	c.slli	a5,10
	c.srli	a5,00000010
	c.bnez	a5,0000000023024770

l23024760:
	lhu	a5,s1,+00000018
	c.li	a3,00000001
	c.addi	a5,FFFFFFFA
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a3,a5,00000000230247BC

l23024770:
	addi	a5,zero,+000000D0
	bne	a4,a5,0000000023024782

l23024778:
	lbu	a4,s1,+00000018
	c.li	a5,00000006
	beq	a4,a5,00000000230247BC

l23024782:
	andi	a5,a1,+0000000C
	c.li	a4,00000008
	beq	a5,a4,00000000230247BC

l2302478C:
	andi	a5,a1,+0000008C
	addi	a4,zero,+00000088
	bne	a5,a4,00000000230247BC

l23024798:
	lbu	a7,s1,+00000009
	lbu	a6,s1,+00000008
	lbu	a5,s1,+00000007
	lbu	a4,s1,+00000006
	lbu	a3,s1,+00000005
	lbu	a2,s1,+00000004
	lui	a0,0002307D
	addi	a0,a0,-0000039C
	jal	ra,0000000023052118

l230247BC:
	c.li	a0,FFFFFFFF
	c.j	0000000023024940

l230247C0:
	lbu	a3,a2,+00000032
	addi	a4,zero,+000000FF
	beq	a3,a4,00000000230247E2

l230247CC:
	c.andi	a5,00000004
	c.beqz	a5,00000000230247E2

l230247D0:
	lbu	a5,s2,+00000070
	c.bnez	a5,00000000230247E2

l230247D6:
	lui	a0,0002307D
	addi	a0,a0,-00000368
	jal	ra,0000000023052118

l230247E2:
	jal	ra,000000002302811A
	c.beqz	a0,00000000230248CA

l230247E8:
	lb	s1,s0,+0000001A
	lb	a4,s0,+00000019
	lui	s5,0004200E
	c.slli	s1,10
	c.srli	s1,00000010
	c.slli	s1,08
	c.or	s1,a4
	jal	ra,00000000230302E8
	lui	a5,0004200E
	lw	a4,a5,-00000244
	c.slli	s1,10
	addi	s3,a5,-00000244
	c.sub	a0,a4
	c.lui	a4,00001000
	lui	a5,0004200E
	addi	a4,a4,-00000060
	c.srli	s1,00000010
	addi	s5,s5,-00000240
	addi	a5,a5,-0000024C
	bge	a4,a0,0000000023024830

l23024828:
	sw	zero,s5,+00000000
	sw	zero,a5,+00000000

l23024830:
	lw	a4,s5,+00000000
	srli	s7,s1,00000004
	andi	s11,s1,+0000000F
	c.addi	a4,00000001
	sw	a4,s5,+00000000
	jal	ra,00000000230302E8
	lhu	a4,s0,+00000012
	lui	a5,0004200E
	sw	a0,s3,+00000000
	c.andi	a4,00000007
	c.li	a3,00000001
	andi	s7,s7,+0000001F
	srli	a7,s1,00000009
	lhu	s9,s0,+00000000
	lb	s10,s0,+00000017
	addi	a5,a5,-0000024C
	bgeu	a3,a4,0000000023024960

l2302486E:
	lbu	s3,s0,+00000020
	lbu	a4,s0,+0000001F
	addi	a3,zero,+0000007A
	c.slli	s3,08
	or	s3,s3,a4
	c.slli	s3,10
	srai	s3,s3,00000010
	xor	s8,s3,a3
	c.lw	a5,0(a4)
	lw	a2,s5,+00000000
	c.swsp	a7,00000098
	fcvt.s.wu	fa0,a2
	c.swsp	a2,00000018
	c.add	a4,s8
	fcvt.s.w	fa5,a4
	c.sw	a5,0(a4)
	fdiv.s	fa0,fa5,fa0
	jal	ra,0000000023070708
	c.lwsp	s4,00000138
	c.lwsp	a6,00000194
	c.swsp	a0,00000004
	lui	a0,0002307D
	c.swsp	a1,00000084
	c.swsp	s8,00000080
	c.swsp	s3,00000000
	c.mv	a6,s7
	c.mv	a5,s11
	c.mv	a4,s1
	c.mv	a3,s10
	c.mv	a1,s9
	addi	a0,a0,-00000340

l230248C6:
	jal	ra,0000000023052118

l230248CA:
	beq	s2,zero,0000000023024A86

l230248CE:
	lw	a3,s4,+00000010
	c.li	a2,00000018
	c.li	a1,00000000
	c.mv	a0,a3
	c.swsp	a3,00000018
	jal	ra,0000000023070EB8
	c.lwsp	a6,000001B4
	lui	a5,00023024
	addi	a5,a5,+0000069C
	c.sw	a3,16(a5)
	c.lwsp	a2,000001F4
	addi	a2,zero,+00000041
	c.li	a0,00000000
	c.sw	a3,20(a5)
	lhu	a5,s4,+00000020
	lw	a4,s4,+00000000
	lui	s3,00023024
	sub	a5,a5,s6
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a4,s6
	c.mv	a1,a5
	jal	ra,00000000230407F2
	addi	s0,s4,+00000022
	addi	s1,s4,+00000004
	c.mv	s5,a0
	addi	s4,s4,+00000028
	addi	s3,s3,+000006A8

l23024922:
	lhu	a5,s0,+00000000
	bne	a5,zero,0000000023024A4E

l2302492A:
	lw	a1,s2,+00000008
	beq	a1,zero,00000000230247BC

l23024932:
	c.lw	a1,16(a5)
	c.mv	a0,s5
	c.jalr	a5
	sltu	a0,zero,a0
	sub	a0,zero,a0

l23024940:
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
	c.ldsp	a3,00000008
	c.addi16sp	00000090
	c.jr	ra

l23024960:
	c.lw	s0,12(a3)
	lw	s8,s5,+00000000
	c.li	a2,00000003
	c.srli	a3,0000000C
	c.andi	a3,0000000F
	lbu	a4,s0,+0000001F
	lw	s3,a5,+00000000
	fcvt.s.wu	fs0,s8
	bgeu	a2,a3,00000000230249CC

l2302497C:
	lbu	s5,s0,+00000020
	c.swsp	a7,00000098
	c.slli	s5,08
	or	s5,s5,a4
	c.slli	s5,10
	srai	s5,s5,00000010
	addi	a4,zero,+0000007A
	xor	a4,s5,a4
	c.add	s3,a4
	fcvt.s.w	fa0,s3
	sw	s3,a5,+00000000
	c.swsp	a4,00000018
	fdiv.s	fa0,fa0,fs0
	jal	ra,0000000023070708
	c.lwsp	a6,000001D4
	c.swsp	a0,00000004
	lui	a0,0002307D
	c.swsp	a1,00000084
	c.swsp	a4,00000080
	c.swsp	s5,00000000
	c.lwsp	s4,00000138
	c.mv	a6,s7
	c.mv	a5,s11
	c.mv	a4,s1
	c.mv	a3,s10
	c.mv	a2,s8
	c.mv	a1,s9
	addi	a0,a0,-000002D4
	c.j	00000000230248C6

l230249CC:
	slli	s5,a4,00000018
	srai	s5,s5,00000018
	sub	s5,zero,s5
	c.slli	s5,10
	srai	s5,s5,00000010
	c.mv	a0,s5
	c.swsp	a7,0000009C
	c.swsp	a4,0000001C
	jal	ra,00000000230705D8
	lui	a3,00023076
	lw	a2,a3,+00000790
	lw	a3,a3,+00000794
	jal	ra,000000002306F140
	jal	ra,0000000023070414
	c.add	s3,a0
	fcvt.s.w	fa0,s3
	c.lw	s0,36(a3)
	lui	a5,0004200E
	fdiv.s	fa0,fa0,fs0
	addi	a5,a5,-0000024C
	c.srli	a3,00000008
	sw	s3,a5,+00000000
	c.andi	a3,00000001
	c.swsp	a3,00000018
	c.swsp	a0,00000098
	jal	ra,0000000023070708
	c.lwsp	s4,00000194
	c.lwsp	s8,000001D4
	c.lwsp	t3,00000138
	c.lwsp	a6,000001B4
	c.swsp	a0,00000008
	lui	a0,0002307D
	c.swsp	a1,00000088
	c.swsp	a2,00000084
	c.swsp	a4,00000080
	c.swsp	a7,00000000
	c.swsp	s5,00000004
	c.mv	a7,s7
	c.mv	a6,s11
	c.mv	a5,s1
	c.mv	a4,s10
	c.mv	a2,s8
	c.mv	a1,s9
	addi	a0,a0,-00000268
	jal	ra,0000000023052118
	c.j	00000000230248CA

l23024A4E:
	c.lw	s1,16(a3)
	c.li	a2,00000018
	c.li	a1,00000000
	c.mv	a0,a3
	c.swsp	a3,00000094
	jal	ra,0000000023070EB8
	c.lwsp	a2,000001B4
	addi	a2,zero,+00000041
	c.li	a0,00000000
	sw	s3,a3,+00000010
	lhu	a5,s0,+00000000
	c.lw	s1,0(a4)
	c.addi	s0,00000002
	c.mv	a1,a5
	jal	ra,00000000230407F2
	c.mv	a1,a0
	c.mv	a0,s5
	jal	ra,0000000023040B62
	c.addi	s1,00000004
	bne	s0,s4,0000000023024922

l23024A84:
	c.j	000000002302492A

l23024A86:
	lbu	a1,s0,+00000031
	lui	a0,0002307D
	addi	a0,a0,-000001EC
	jal	ra,0000000023052118
	c.j	00000000230247BC

;; bl_utils_idx_lookup: 23024A98
;;   Called from:
;;     2302465A (in bl_output)
bl_utils_idx_lookup proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.lui	s0,00001000
	addi	s0,s0,-00000370
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s2,a1
	c.add	s0,a0
	c.li	s1,00000000
	c.li	s3,0000000C

l23024AB2:
	lbu	a5,s0,+00000008
	c.bnez	a5,0000000023024ACE

l23024AB8:
	c.addi	s1,00000001
	c.addi	s0,0000001C
	bne	s1,s3,0000000023024AB2

l23024AC0:
	lui	a5,0004201E
	addi	a5,a5,+000005AC
	lw	s1,a5,-000001D8
	c.j	0000000023024ADA

l23024ACE:
	c.li	a2,00000006
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023024AB8

l23024ADA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; bl_ipc_init: 23024AEA
;;   Called from:
;;     230239BE (in bl_platform_on)
bl_ipc_init proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a0
	c.mv	s1,a1
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,00000094
	jal	ra,0000000023070EB8
	lui	a5,00023024
	addi	a5,a5,+00000684
	c.swsp	a5,00000004
	lui	a5,00023024
	addi	a5,a5,+00000688
	c.swsp	a5,00000008
	lui	a5,00023024
	addi	a5,a5,+000006A2
	c.swsp	a5,00000088
	lui	a5,00023024
	addi	a5,a5,+0000043E
	c.swsp	a5,00000000
	lui	a5,00023024
	addi	a5,a5,+0000069A
	c.swsp	a5,0000000C
	lui	a5,00023024
	addi	a5,a5,+000006A6
	addi	a0,zero,+000000E4
	c.swsp	a5,0000008C
	c.swsp	zero,00000080
	c.swsp	zero,00000084
	jal	ra,000000002303218A
	c.sw	s0,52(a0)
	lui	a4,0004200E
	c.mv	a3,s0
	c.mv	a2,s1
	c.mv	a1,sp
	sw	a0,a4,+00000DB8
	jal	ra,000000002302219C
	addi	a0,s0,+00000004
	jal	ra,0000000023028F9A
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; bl_utils_dump: 23024B72
;;   Called from:
;;     2300E4F4 (in bl_fw_statistic_dump)
bl_utils_dump proc
	c.addi	sp,FFFFFFE0
	lui	a0,0002307D
	c.swsp	s1,00000088
	addi	a0,a0,-00000484
	lui	s1,0004200E
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	addi	s0,s1,-00000248
	c.swsp	s3,00000084
	jal	ra,00000000230520DC
	c.lw	s0,0(a5)
	lui	a0,0002307D
	addi	a0,a0,-0000045C
	c.lw	a5,64(a1)
	addi	s1,s1,-00000248
	lui	s3,0002307D
	andi	a2,a1,+00000003
	jal	ra,0000000023052118
	c.lw	s0,0(a5)
	lui	a0,0002307D
	addi	a0,a0,-00000440
	c.lw	a5,68(a1)
	c.li	s2,00000004
	andi	a2,a1,+00000003
	jal	ra,0000000023052118
	c.lw	s0,0(a5)
	lui	a0,0002307D
	c.li	a1,00000004
	c.lw	a5,64(a2)
	c.lw	a5,68(a5)
	addi	a0,a0,-00000424
	c.li	s0,00000000
	c.sub	a2,a5
	jal	ra,0000000023052118
	lui	a0,0002307D
	addi	a0,a0,-00000404
	jal	ra,00000000230520DC

l23024BE8:
	c.lw	s1,0(a5)
	c.lw	a5,68(a1)
	c.lw	a5,64(a4)
	c.add	a1,s0
	beq	a1,a4,0000000023024C1C

l23024BF4:
	c.andi	a1,00000003
	addi	a4,a1,+00000010
	c.slli	a4,02
	c.add	a5,a4
	c.lw	a5,8(a2)
	addi	a0,s3,-000003DC
	c.addi	s0,00000001
	c.lw	a2,4(a4)
	sub	a5,zero,a4
	c.andi	a5,00000003
	c.add	a5,a4
	c.lw	a5,4(a4)
	c.lw	a5,24(a3)
	jal	ra,0000000023052118
	bne	s0,s2,0000000023024BE8

l23024C1C:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,0002307D
	addi	a0,a0,-000003C4
	c.addi16sp	00000020
	jal	zero,00000000230520DC

;; stateSnifferGuard: 23024C34
stateSnifferGuard proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; stateConnectedIPYesGuard_ip_update: 23024C42
stateConnectedIPYesGuard_ip_update proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; printErrMsg: 23024C50
printErrMsg proc
	lui	a0,0002307D
	addi	a0,a0,-000000E4
	jal	zero,0000000023052118

;; stateSnifferExit: 23024C5C
stateSnifferExit proc
	c.mv	a1,a0
	lui	a0,0002307D
	addi	a0,a0,+0000067C
	jal	zero,0000000023052118

;; stateSnifferAction: 23024C6A
stateSnifferAction proc
	c.mv	a1,a0
	lui	a0,0002307D
	addi	a0,a0,+00000648
	jal	zero,0000000023052118

;; stateConnectedIPNoAction_ipgot: 23024C78
stateConnectedIPNoAction_ipgot proc
	c.addi16sp	FFFFFFB0
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.lw	a1,4(a4)
	c.mv	s1,a2
	c.mv	s0,a0
	lbu	a2,a4,+00000016
	lbu	a0,a4,+00000015
	lbu	t1,a4,+00000019
	c.slli	a2,08
	c.or	a2,a0
	lbu	a0,a4,+00000017
	lbu	a3,a4,+0000000E
	lbu	a5,a4,+0000000D
	c.slli	a0,10
	c.or	a2,a0
	lbu	a0,a4,+00000018
	c.slli	a3,08
	c.or	a5,a3
	c.slli	a0,18
	c.or	a0,a2
	lbu	a2,a4,+0000001A
	lbu	a3,a4,+0000000F
	lbu	a7,a4,+00000012
	c.slli	a2,08
	or	a2,a2,t1
	lbu	t1,a4,+0000001B
	c.slli	a3,10
	c.or	a3,a5
	c.slli	t1,10
	or	a2,t1,a2
	lbu	t1,a4,+0000001C
	lbu	a5,a4,+00000011
	c.slli	a7,08
	c.slli	t1,18
	or	t1,t1,a2
	lbu	a2,a4,+0000001E
	lbu	a6,a4,+0000001D
	or	a5,a7,a5
	lbu	a7,a4,+00000013
	c.slli	a2,08
	or	a6,a2,a6
	c.slli	a7,10
	lbu	a2,a4,+0000001F
	lbu	a1,a4,+00000010
	or	a7,a7,a5
	lbu	a5,a4,+00000014
	lbu	a4,a4,+00000020
	c.slli	a2,10
	or	a2,a2,a6
	c.slli	a4,18
	c.or	a4,a2
	srli	t3,a4,00000018
	c.swsp	t3,00000018
	srli	t3,a4,00000010
	andi	t3,t3,+000000FF
	c.swsp	t3,00000094
	srli	t3,a4,00000008
	andi	a4,a4,+000000FF
	c.swsp	a4,00000090
	srli	a4,t1,00000018
	c.swsp	a4,00000010
	srli	a4,t1,00000010
	andi	a4,a4,+000000FF
	c.swsp	a4,0000008C
	srli	a4,t1,00000008
	andi	t3,t3,+000000FF
	andi	a4,a4,+000000FF
	andi	t1,t1,+000000FF
	c.swsp	t3,00000014
	c.swsp	a4,0000000C
	c.swsp	t1,00000088
	srli	a4,a0,00000018
	c.swsp	a4,00000008
	srli	a4,a0,00000010
	andi	a4,a4,+000000FF
	c.swsp	a4,00000084
	c.slli	a1,18
	srli	a4,a0,00000008
	c.slli	a5,18
	or	a5,a5,a7
	c.or	a1,a3
	andi	a4,a4,+000000FF
	andi	a0,a0,+000000FF
	c.swsp	a4,00000004
	c.swsp	a0,00000080
	srli	a4,a5,00000018
	srli	a6,a5,00000008
	srli	a2,a1,00000008
	lui	a0,0002307D
	c.swsp	a4,00000000
	andi	a2,a2,+000000FF
	srli	a4,a1,00000018
	srli	a7,a7,00000010
	andi	a1,a1,+000000FF
	andi	a6,a6,+000000FF
	andi	a5,a5,+000000FF
	c.srli	a3,00000010
	addi	a0,a0,-000000B0
	jal	ra,0000000023052118
	c.mv	a1,s0
	c.lwsp	s1,00000004
	c.lwsp	a3,00000020
	c.mv	a2,s1
	c.lwsp	t0,00000024
	lui	a0,0002307D
	addi	a0,a0,+00000648
	c.addi16sp	00000050
	jal	zero,0000000023052118

;; stateGlobalEnter: 23024DCE
stateGlobalEnter proc
	c.mv	a1,a0
	lui	a0,0002307D
	addi	a0,a0,+00000298
	jal	zero,0000000023052118

;; stateGlobalAction: 23024DDC
stateGlobalAction proc
	lui	a0,0002307D
	addi	a0,a0,+0000027C
	jal	zero,0000000023052118

;; stateConnectingEnter: 23024DE8
stateConnectingEnter proc
	c.mv	a1,a0
	lui	a0,0002307D
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000298
	c.swsp	ra,00000084
	jal	ra,0000000023052118
	c.lwsp	a2,00000020
	c.li	a2,00000000
	c.li	a1,00000008
	c.li	a0,00000002
	c.addi	sp,00000010
	jal	zero,000000002304D7AC

;; stateSnifferGuard_ChannelSet: 23024E08
stateSnifferGuard_ChannelSet proc
	c.lw	a1,4(a5)
	lbu	a4,a5,+00000000
	bne	a0,a4,0000000023024E5A

l23024E12:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a1,a5,+00000006
	lbu	a0,a5,+00000002
	lbu	a3,a5,+00000005
	lbu	a4,a5,+00000001
	c.slli	a1,08
	c.slli	a0,08
	c.or	a1,a3
	c.or	a0,a4
	lbu	a3,a5,+00000007
	lbu	a4,a5,+00000003
	c.slli	a3,10
	c.slli	a4,10
	c.or	a3,a1
	c.or	a4,a0
	lbu	a1,a5,+00000008
	lbu	a0,a5,+00000004
	c.slli	a1,18
	c.slli	a0,18
	c.or	a1,a3
	c.or	a0,a4
	jal	ra,000000002302247A
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23024E5A:
	c.li	a0,00000000
	c.jr	ra

;; stateIdleGuard_sniffer: 23024E5E
stateIdleGuard_sniffer proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	bne	a0,a5,0000000023024E78

l23024E68:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023022420
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l23024E78:
	c.li	a0,00000000
	c.jr	ra

;; stateConnectedIPNoExit: 23024E7C
stateConnectedIPNoExit proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	a1,a0
	c.mv	s0,a0
	lui	a0,0002307D
	addi	a0,a0,+0000067C
	c.swsp	ra,00000084
	addi	s0,s0,+00000020
	jal	ra,0000000023052118
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,0000000023031814
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000005
	c.addi	sp,00000010
	jal	zero,0000000023031814

;; stateDisconnect_action_idle: 23024EB8
stateDisconnect_action_idle proc
	c.mv	a1,a0
	lui	a0,0002307D
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000648
	c.swsp	ra,00000084
	jal	ra,0000000023052118
	lui	a0,0002307D
	addi	a0,a0,+000000A4
	jal	ra,0000000023052118
	lui	a5,0004201E
	c.lwsp	a2,00000020
	lbu	a0,a5,+00000458
	c.addi	sp,00000010
	jal	zero,0000000023022498

;; stateDisconnect_action_reconnect: 23024EE6
stateDisconnect_action_reconnect proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.mv	a1,a0
	c.mv	s0,a0
	lui	a0,0002307D
	addi	a0,a0,+00000648
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	jal	ra,0000000023052118
	lui	a0,0002307D
	addi	a0,a0,+000000CC
	jal	ra,0000000023052118
	addi	s1,s0,+0000004D
	lui	a0,0002307D
	c.mv	a1,s1
	addi	a0,a0,+000000E8
	jal	ra,0000000023052118
	lbu	a1,s0,+0000006F
	lbu	a5,s0,+0000006E
	lui	a0,0002307D
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+00000070
	addi	a0,a0,+00000100
	addi	s2,s0,+00000072
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+00000071
	addi	s3,s0,+000000B3
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023052118
	lui	a0,0002307D
	c.mv	a1,s2
	addi	a0,a0,+0000011C
	jal	ra,0000000023052118
	lbu	a1,s0,+000000F5
	lbu	a5,s0,+000000F4
	lui	a0,0002307D
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+000000F6
	addi	a0,a0,+00000130
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+000000F7
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023052118
	lui	a0,0002307D
	c.mv	a1,s3
	addi	a0,a0,+00000148
	jal	ra,0000000023052118
	lbu	a1,s0,+000000F9
	lbu	a5,s0,+000000F8
	lui	a0,0002307D
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+000000FA
	addi	a0,a0,+0000015C
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+000000FB
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023052118
	lbu	a6,s0,+000000FC
	lbu	a5,s0,+000000FD
	lbu	a4,s0,+000000FE
	lbu	a3,s0,+000000FF
	lbu	a2,s0,+00000100
	lbu	a1,s0,+00000101
	lui	a0,0002307D
	addi	a0,a0,+00000174
	jal	ra,0000000023052118
	lbu	a5,s0,+000000F9
	lbu	a3,s0,+000000F5
	lbu	a1,s0,+0000006F
	lbu	a4,s0,+000000F8
	lbu	a2,s0,+000000F4
	lbu	a0,s0,+0000006E
	c.slli	a5,08
	c.slli	a3,08
	c.slli	a1,08
	c.or	a5,a4
	c.or	a3,a2
	lbu	a4,s0,+000000FA
	lbu	a2,s0,+000000F6
	c.or	a1,a0
	lbu	a0,s0,+00000070
	c.slli	a4,10
	c.slli	a2,10
	c.slli	a0,10
	c.or	a4,a5
	c.or	a2,a3
	lbu	a5,s0,+000000FB
	lbu	a3,s0,+000000F7
	c.or	a0,a1
	lbu	a1,s0,+00000071
	c.slli	a5,18
	c.slli	a3,18
	c.slli	a1,18
	c.or	a1,a0
	c.swsp	zero,00000000
	addi	a6,s0,+000000FC
	c.or	a5,a4
	c.or	a3,a2
	c.mv	a4,s3
	c.mv	a2,s2
	c.mv	a0,s1
	c.li	a7,00000000
	jal	ra,000000002302287E
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a2,00000000
	c.li	a1,00000003
	c.li	a0,00000002
	c.addi16sp	00000030
	jal	zero,000000002304D7AC

;; ip_obtaining_timeout: 2302505C
ip_obtaining_timeout proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023031B24
	lui	a0,0002307D
	addi	a0,a0,-00000104
	jal	ra,0000000023052118
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023026CE6

;; stateConnectedIPNoEnter: 23025078
stateConnectedIPNoEnter proc
	c.addi16sp	FFFFFFC0
	c.mv	a1,a0
	c.swsp	a0,00000084
	lui	a0,0002307D
	addi	a0,a0,+00000298
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	jal	ra,0000000023052118
	c.lwsp	a2,000000A4
	lui	a4,00023025
	c.lui	a1,00004000
	addi	s0,a3,+00000020
	lui	a0,0002307D
	c.mv	a5,s0
	addi	a4,a4,+0000005C
	c.li	a2,00000000
	addi	a1,a1,-00000568
	addi	a0,a0,-00000040
	jal	ra,0000000023031792
	jal	ra,00000000230302E8
	c.mv	a2,a0
	c.li	a1,00000001
	c.li	a4,FFFFFFFF
	c.li	a3,00000000
	c.mv	a0,s0
	jal	ra,0000000023031814
	jal	ra,000000002303100A
	lui	a5,0004201E
	addi	a5,a5,+00000448
	c.lw	a5,24(s1)
	lw	s3,a5,+0000001C
	lw	s2,a5,+00000020
	lw	s5,a5,+00000024
	lw	s4,a5,+00000028
	lui	s0,0004201E
	jal	ra,000000002303101E
	addi	a1,s0,+00000474
	c.beqz	s1,000000002302515C

l230250FA:
	lui	a0,0002307D
	addi	a0,a0,-0000002C
	jal	ra,0000000023052118
	c.addi4spn	a1,00000014
	c.li	a0,00000000
	c.swsp	s5,00000088
	jal	ra,000000002303CA44
	c.addi4spn	a1,00000014
	c.li	a0,00000001
	c.swsp	s4,00000088
	jal	ra,000000002303CA44
	lui	a1,0002303E
	c.li	a2,00000000
	addi	a1,a1,+00000588
	addi	a0,s0,+00000474
	c.swsp	s1,00000088
	c.swsp	s3,0000000C
	c.swsp	s2,0000008C
	jal	ra,000000002303A688
	c.addi4spn	a3,0000001C
	c.addi4spn	a2,00000018
	c.addi4spn	a1,00000014
	addi	a0,s0,+00000474
	jal	ra,000000002303A64A

l23025140:
	c.li	a2,00000000
	c.li	a1,00000004
	c.li	a0,00000002
	jal	ra,000000002304D7AC
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

l2302515C:
	lui	a0,0002307D
	addi	a0,a0,-00000008
	jal	ra,0000000023052118
	addi	a0,s0,+00000474
	jal	ra,0000000023028926
	c.j	0000000023025140

;; stateConnectedIPNoGuard_disconnect: 23025172
;;   Called from:
;;     23025190 (in stateConnectedIPYesGuard_disconnect)
stateConnectedIPNoGuard_disconnect proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	bne	a0,a5,000000002302518C

l2302517C:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230223E8
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2302518C:
	c.li	a0,00000000
	c.jr	ra

;; stateConnectedIPYesGuard_disconnect: 23025190
stateConnectedIPYesGuard_disconnect proc
	jal	zero,0000000023025172

;; stateConnectedIPYesGuard_rcconfig: 23025194
stateConnectedIPYesGuard_rcconfig proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a1,4(s0)
	lbu	a5,s0,+00000000
	bne	a0,a5,00000000230251DE

l230251A4:
	lbu	a1,s0,+00000002
	lbu	a5,s0,+00000001
	lui	a0,0002307D
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+00000003
	addi	a0,a0,+00000034
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+00000004
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023052118
	lbu	a5,s0,+00000002
	lbu	a1,s0,+00000001
	c.li	a0,00000000
	c.slli	a5,08
	c.or	a1,a5
	jal	ra,00000000230224E2

l230251DE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; stateIdleAction_connect: 230251E8
stateIdleAction_connect proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s0,00000014
	c.lw	a1,4(s0)
	c.mv	s4,a0
	lui	a0,0002307D
	sb	zero,s0,+0000002D
	sb	zero,s0,+00000072
	addi	a0,a0,+00000554
	c.mv	s5,a2
	jal	ra,0000000023052118
	addi	s1,s0,+0000000D
	lui	a0,0002307D
	c.mv	a1,s1
	addi	a0,a0,+000000E8
	jal	ra,0000000023052118
	lbu	a1,s0,+0000002F
	lbu	a5,s0,+0000002E
	lui	a0,0002307D
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+00000030
	addi	a0,a0,+00000100
	addi	s2,s0,+00000032
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+00000031
	addi	s3,s0,+00000073
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023052118
	lui	a0,0002307D
	c.mv	a1,s2
	addi	a0,a0,+0000011C
	jal	ra,0000000023052118
	lbu	a1,s0,+000000B5
	lbu	a5,s0,+000000B4
	lui	a0,0002307D
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+000000B6
	addi	a0,a0,+00000130
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+000000B7
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023052118
	lui	a0,0002307D
	c.mv	a1,s3
	addi	a0,a0,+00000148
	jal	ra,0000000023052118
	lbu	a1,s0,+000000B9
	lbu	a5,s0,+000000B8
	lui	a0,0002307D
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+000000BA
	addi	a0,a0,+0000015C
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+000000BB
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023052118
	lbu	a1,s0,+000000C2
	lui	a0,0002307D
	addi	a0,a0,+00000570
	jal	ra,0000000023052118
	lbu	a5,s0,+000000C4
	lbu	a1,s0,+000000C3
	lui	a0,0002307D
	c.slli	a5,08
	c.or	a1,a5
	addi	a0,a0,+00000590
	jal	ra,0000000023052118
	lbu	a5,s0,+000000BD
	lbu	a6,s0,+000000BC
	lbu	a4,s0,+000000BE
	lbu	a3,s0,+000000BF
	lbu	a2,s0,+000000C0
	lbu	a1,s0,+000000C1
	lui	a0,0002307D
	addi	a0,a0,+00000174
	jal	ra,0000000023052118
	lbu	a5,s0,+000000C5
	c.bnez	a5,00000000230253CE

l23025312:
	lui	a1,00023073
	addi	a1,a1,-000001A0

l2302531A:
	lui	a0,0002307D
	addi	a0,a0,+000005B0
	jal	ra,0000000023052118
	lui	a0,0004201E
	c.mv	a1,s1
	c.li	a2,FFFFFFFF
	addi	a0,a0,+00000448
	jal	ra,00000000230286EC
	lui	a0,0002307D
	c.mv	a2,s5
	c.mv	a1,s4
	addi	a0,a0,+00000648
	jal	ra,0000000023052118
	lbu	a5,s0,+000000B9
	lbu	a3,s0,+000000B5
	lbu	a1,s0,+0000002F
	lbu	a4,s0,+000000B8
	lbu	a2,s0,+000000B4
	lbu	a0,s0,+0000002E
	c.slli	a5,08
	c.slli	a3,08
	c.slli	a1,08
	c.or	a5,a4
	c.or	a3,a2
	lbu	a4,s0,+000000BA
	lbu	a2,s0,+000000B6
	c.or	a1,a0
	lbu	a0,s0,+00000030
	lbu	a6,s0,+000000C4
	c.slli	a4,10
	c.slli	a2,10
	c.slli	a0,10
	lbu	t1,s0,+000000C3
	c.or	a4,a5
	c.or	a2,a3
	lbu	a5,s0,+000000BB
	lbu	a3,s0,+000000B7
	c.or	a0,a1
	lbu	a1,s0,+00000031
	lbu	a7,s0,+000000C2
	c.slli	a6,08
	or	a6,a6,t1
	c.slli	a5,18
	c.slli	a3,18
	c.slli	a1,18
	c.swsp	a6,00000000
	c.or	a5,a4
	addi	a6,s0,+000000BC
	c.mv	a4,s3
	c.or	a3,a2
	c.or	a1,a0
	c.mv	a2,s2
	c.mv	a0,s1
	jal	ra,000000002302287E
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l230253CE:
	lui	a1,00023073
	addi	a1,a1,-000001A8
	c.j	000000002302531A

;; stateGlobal_cfg_req: 230253D8
stateGlobal_cfg_req proc
	c.lw	a1,4(a4)
	c.li	a5,00000016
	lbu	a3,a4,+00000000
	bne	a3,a5,0000000023025482

l230253E4:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a3,a4,+0000001A
	lbu	a2,a4,+00000016
	lbu	a1,a4,+00000012
	lbu	a0,a4,+0000000E
	lbu	t3,a4,+00000019
	lbu	t1,a4,+00000015
	lbu	a7,a4,+00000011
	lbu	a6,a4,+0000000D
	c.slli	a3,08
	c.slli	a2,08
	c.slli	a1,08
	c.slli	a0,08
	or	a3,a3,t3
	or	a2,a2,t1
	lbu	t3,a4,+0000001B
	lbu	t1,a4,+00000017
	or	a1,a1,a7
	or	a0,a0,a6
	lbu	a7,a4,+00000013
	lbu	a6,a4,+0000000F
	c.slli	t3,10
	c.slli	t1,10
	c.slli	a7,10
	c.slli	a6,10
	or	t3,t3,a3
	or	t1,t1,a2
	lbu	a3,a4,+0000001C
	lbu	a2,a4,+00000018
	or	a7,a7,a1
	or	a6,a6,a0
	lbu	a1,a4,+00000014
	lbu	a0,a4,+00000010
	c.slli	a3,18
	c.slli	a2,18
	c.slli	a1,18
	c.slli	a0,18
	c.li	a5,00000000
	addi	a4,a4,+00000021
	or	a3,a3,t3
	or	a2,a2,t1
	or	a1,a1,a7
	or	a0,a0,a6
	jal	ra,0000000023022822
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23025482:
	c.li	a0,00000000
	c.jr	ra

;; stateGlobalGuard_fw_powersaving: 23025486
stateGlobalGuard_fw_powersaving proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a1,4(s0)
	c.li	a5,00000010
	lbu	a4,s0,+00000000
	bne	a4,a5,00000000230254E0

l23025498:
	lbu	a1,s0,+00000002
	lbu	a5,s0,+00000001
	lui	a0,0002307D
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+00000003
	addi	a0,a0,+000003EC
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+00000004
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023052118
	lbu	a0,s0,+00000002
	lbu	a5,s0,+00000001
	c.slli	a0,08
	c.or	a0,a5
	lbu	a5,s0,+00000003
	c.slli	a5,10
	c.or	a5,a0
	lbu	a0,s0,+00000004
	c.slli	a0,18
	c.or	a0,a5
	jal	ra,0000000023022404

l230254E0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; stateGlobalGuard_conf_max_sta: 230254EA
stateGlobalGuard_conf_max_sta proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a1,4(s0)
	c.li	a5,0000000A
	lbu	a4,s0,+00000000
	bne	a4,a5,000000002302552C

l230254FC:
	lbu	a1,s0,+00000002
	lbu	a5,s0,+00000001
	lui	a0,0002307D
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+00000003
	addi	a0,a0,+0000034C
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+00000004
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023052118
	lbu	a0,s0,+00000001
	jal	ra,0000000023022814

l2302552C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; stateGlobalGuard_AP: 23025536
stateGlobalGuard_AP proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.lw	a1,4(s0)
	c.li	a5,00000008
	lbu	a4,s0,+00000000
	bne	a4,a5,000000002302557A

l2302554E:
	lui	a2,0004201E
	lui	s1,0004201E
	addi	a2,a2,+000004C8
	addi	a1,s1,+000004E4
	c.li	a0,00000000
	jal	ra,0000000023022512
	c.beqz	a0,000000002302558A

l23025566:
	lui	a1,0002307D
	lui	a0,0002307D
	addi	a1,a1,-000001A4
	addi	a0,a0,+000002B8
	jal	ra,0000000023052118

l2302557A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2302558A:
	lui	a1,00023040
	c.li	a2,00000000
	addi	a1,a1,+0000062E
	addi	a0,s1,+000004E4
	jal	ra,000000002303A688
	lui	a1,00023048
	c.li	a2,00000000
	addi	a1,a1,-000002B4
	addi	a0,s1,+000004E4
	jal	ra,000000002303A688
	addi	s2,s0,+00000011
	lui	a0,0002307D
	c.mv	a1,s2
	addi	a0,a0,+000002DC
	jal	ra,0000000023052118
	addi	s3,s0,+00000037
	lui	a0,0002307D
	c.mv	a1,s3
	addi	a0,a0,+00000300
	jal	ra,0000000023052118
	lbu	a1,s0,+0000000E
	lbu	a5,s0,+0000000D
	lui	a0,0002307D
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+0000000F
	addi	a0,a0,+00000324
	lui	s1,0004201E
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+00000010
	addi	s1,s1,+00000448
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023052118
	lbu	a2,s0,+0000000E
	lbu	a5,s0,+0000000D
	lbu	a4,s0,+00000032
	c.slli	a2,08
	c.or	a2,a5
	lbu	a5,s0,+0000000F
	lbu	a3,s1,+00000080
	c.mv	a1,s3
	c.slli	a5,10
	c.or	a5,a2
	lbu	a2,s0,+00000010
	c.mv	a0,s2
	c.slli	a2,18
	c.or	a2,a5
	jal	ra,00000000230225E6
	c.li	a5,00000001
	c.sw	s1,8(a5)
	jal	ra,000000002302CA78
	c.li	a2,00000000
	c.li	a1,0000000B
	c.li	a0,00000002
	jal	ra,000000002304D7AC
	c.j	000000002302557A

;; stateGlobalGuard_scan_beacon: 23025642
stateGlobalGuard_scan_beacon proc
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
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	s10,00000008
	c.swsp	s11,00000084
	c.lw	a1,4(s0)
	lbu	a5,s0,+00000000
	bne	a0,a5,00000000230257F4

l23025668:
	lui	a0,0004201E
	addi	a5,a0,+00000448
	c.lui	a3,00001000
	c.add	a5,a3
	lbu	a4,s0,+0000003B
	lw	a5,a5,+000007C4
	lui	s6,0004201F
	addi	s2,a0,+00000448
	addi	s6,s6,+00000448
	blt	a5,a4,00000000230257F4

l2302568C:
	beq	a4,zero,00000000230257F4

l23025690:
	lbu	a5,s0,+0000000D
	c.bnez	a5,00000000230256A0

l23025696:
	lw	a5,s6,+000007CC
	c.andi	a5,00000001
	beq	a5,zero,00000000230257F4

l230256A0:
	jal	ra,00000000230302E8
	c.mv	s5,a0
	c.mv	s4,s2
	c.li	s8,00000000
	c.li	s7,FFFFFFFF
	c.li	s1,FFFFFFFF
	c.li	s9,FFFFFFFF
	c.li	s3,00000000
	addi	s10,s0,+0000000D
	addi	s11,s0,+00000035

l230256BA:
	lbu	a3,s4,+000002AA
	lw	a4,s6,+000007C4
	bge	a4,a3,000000002302576A

l230256C6:
	addi	a2,zero,+0000003C
	c.li	a1,00000000
	addi	a0,s4,+0000027C
	jal	ra,0000000023070EB8
	sb	zero,s4,+000002B0

l230256D8:
	c.mv	s9,s3

l230256DA:
	c.addi	s3,00000001
	addi	a5,zero,+00000032
	addi	s4,s4,+0000003C
	bne	s3,a5,00000000230256BA

l230256E8:
	c.li	a4,FFFFFFFF
	bne	s9,a4,000000002302582A

l230256EE:
	beq	s1,s9,00000000230257F4

l230256F2:
	addi	a0,zero,+0000003C
	add	s1,s1,a0
	addi	a2,zero,+0000003C
	c.li	a1,00000000
	addi	s4,s1,+0000027C
	c.add	s4,s2
	c.mv	a0,s4
	jal	ra,0000000023070EB8
	addi	a2,zero,+00000020
	addi	a1,s0,+0000000D
	c.mv	a0,s4
	add	s3,s2,s1
	jal	ra,00000000230714A8
	c.mv	a0,s4
	sb	zero,s3,+0000029C
	jal	ra,000000002307132C
	addi	s1,s1,+000002A4
	sw	a0,s3,+000002A0
	c.li	a2,00000006
	addi	a1,s0,+00000035
	add	a0,s2,s1
	jal	ra,0000000023070C7C
	lbu	a5,s0,+0000003B
	sb	a5,s3,+000002AA
	lb	a5,s0,+0000003C
	sw	s5,s3,+000002B4
	sb	a5,s3,+000002AB
	lbu	a5,s0,+0000003F
	sb	a5,s3,+000002AE
	lbu	a5,s0,+00000040
	sb	a5,s3,+000002AF
	c.li	a5,00000001
	sb	a5,s3,+000002B0
	c.j	00000000230257F4

l2302576A:
	lbu	a4,s4,+000002B0
	c.beqz	a4,00000000230256D8

l23025770:
	lw	a4,s4,+000002B4
	beq	s8,zero,0000000023025780

l23025778:
	sub	a3,a4,s7
	bge	a3,zero,0000000023025784

l23025780:
	c.mv	s7,a4
	c.mv	s1,s3

l23025784:
	c.li	a2,00000006
	c.mv	a1,s11
	addi	a0,s4,+000002A4
	jal	ra,0000000023070BF4
	c.li	s8,00000001
	c.bnez	a0,00000000230256DA

l23025794:
	addi	a1,s4,+0000027C
	c.mv	a0,s10
	jal	ra,0000000023071100
	c.bnez	a0,00000000230256DA

l230257A0:
	addi	s1,zero,+0000003C
	add	s1,s3,s1
	lb	a4,s0,+0000003C
	c.add	s1,s2
	lb	a5,s1,+000002AB
	blt	a4,a5,0000000023025814

l230257B6:
	addi	a0,zero,+0000003C
	add	a0,s3,a0
	lbu	a5,s0,+0000003B
	c.add	a0,s2
	sb	a5,a0,+000002AA
	lb	a5,s0,+0000003C
	sb	a5,a0,+000002AB
	lb	a5,s0,+0000003D
	sb	a5,a0,+000002AC
	lb	a5,s0,+0000003E
	sw	s5,a0,+000002B4
	sb	a5,a0,+000002AD
	lbu	a5,s0,+0000003F
	sb	a5,a0,+000002AE
	lbu	a5,s0,+00000040
	sb	a5,a0,+000002AF

l230257F4:
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
	c.li	a0,00000000
	c.addi16sp	00000040
	c.jr	ra

l23025814:
	jal	ra,00000000230302E8
	lw	a5,s1,+000002B4
	c.sub	a0,a5
	c.lui	a5,00001000
	addi	a5,a5,-00000449
	bge	a5,a0,00000000230257F4

l23025828:
	c.j	00000000230257B6

l2302582A:
	c.mv	s1,s9
	c.j	00000000230256F2

;; __reload_tsen: 2302582E
__reload_tsen proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023031B24
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023026D58

;; event_cb_wifi_event_mgmr: 2302583E
event_cb_wifi_event_mgmr proc
	lhu	a4,a0,+00000006
	c.li	a5,00000014
	bne	a4,a5,000000002302585A

l23025848:
	lui	a1,00023026
	c.li	a2,00000000
	addi	a1,a1,-000007A4
	addi	a0,zero,+00000055
	jal	zero,000000002304CEB6

l2302585A:
	c.jr	ra

;; trigger_auto_denoise: 2302585C
trigger_auto_denoise proc
	lui	a5,0004200E
	lw	a5,a5,-0000023C
	c.beqz	a5,0000000023025884

l23025866:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230270AC
	c.lwsp	a2,00000020
	lui	a1,00023026
	c.li	a2,00000000
	addi	a1,a1,-000007A4
	addi	a0,zero,+00000055
	c.addi	sp,00000010
	jal	zero,000000002304CEB6

l23025884:
	c.jr	ra

;; stateDisconnect_exit: 23025886
stateDisconnect_exit proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	a1,a0
	c.mv	s0,a0
	lui	a0,0002307D
	addi	a0,a0,+0000067C
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	jal	ra,0000000023052118
	lbu	a5,s0,+0000004C
	c.beqz	a5,00000000230258DE

l230258A4:
	lui	a0,0002307D
	addi	a0,a0,+0000021C
	jal	ra,0000000023052118
	addi	s1,s0,+00000020
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000003
	c.mv	a0,s1
	jal	ra,0000000023031814
	c.mv	a0,s1
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000005
	jal	ra,0000000023031814
	c.lwsp	a2,00000020
	sb	zero,s0,+0000004C
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230258DE:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,0002307D
	addi	a0,a0,+0000022C
	c.addi	sp,00000010
	jal	zero,0000000023052118

;; disconnect_retry: 230258F2
disconnect_retry proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023031B24
	addi	a1,a0,+0000004D
	lui	a0,0004201E
	addi	a0,a0,+00000448
	jal	ra,00000000230287FC
	c.beqz	a0,000000002302591C

l2302590C:
	c.lwsp	a2,00000020
	lui	a0,0002307D
	addi	a0,a0,-00000178
	c.addi	sp,00000010
	jal	zero,0000000023052118

l2302591C:
	lui	a0,0002307D
	addi	a0,a0,-00000130
	jal	ra,0000000023052118
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023026874

;; stateGlobalGuard_fw_disconnect: 23025930
stateGlobalGuard_fw_disconnect proc
	c.lw	a1,4(a5)
	lbu	a4,a5,+00000000
	c.li	a5,0000000F
	bne	a4,a5,0000000023025958

l2302593C:
	lui	a0,0002307D
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000003D8
	c.swsp	ra,00000084
	jal	ra,0000000023052118
	jal	ra,00000000230223E8
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23025958:
	c.li	a0,00000000
	c.jr	ra

;; stateConnectedIPYes_exit: 2302595C
stateConnectedIPYes_exit proc
	c.mv	a1,a0
	lui	a0,0002307D
	c.addi	sp,FFFFFFE0
	addi	a0,a0,+0000067C
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	zero,00000084
	jal	ra,0000000023052118
	lui	s0,0004201E
	lui	a1,0002303E
	c.li	a2,00000000
	addi	a1,a1,+00000588
	addi	a0,s0,+00000474
	jal	ra,000000002303A688
	c.addi4spn	a3,0000000C
	c.mv	a2,a3
	c.mv	a1,a3
	addi	a0,s0,+00000474
	jal	ra,000000002303A64A
	lui	a5,0004200E
	addi	a5,a5,-0000023C
	c.lw	a5,0(a4)
	c.beqz	a4,00000000230259AC

l230259A2:
	c.li	a0,00000000
	sw	zero,a5,+00000000
	jal	ra,0000000023022412

l230259AC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; stateGlobalGuard_denoise: 230259B4
stateGlobalGuard_denoise proc
	c.lw	a1,4(a3)
	c.li	a5,0000000C
	lbu	a4,a3,+00000000
	bne	a4,a5,0000000023025A34

l230259C0:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a4,a3,+00000002
	lbu	a5,a3,+00000001
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,a3,+00000003
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,a3,+00000004
	c.slli	a5,18
	c.or	a5,a4
	c.beqz	a5,0000000023025A24

l230259E2:
	lui	a4,0004201F
	addi	a4,a4,+00000448
	lw	a4,a4,+00000718
	lui	a5,0002307D
	addi	a5,a5,+00000018
	bne	a4,a5,0000000023025A1C

l230259FA:
	lui	a5,0004200E
	addi	a5,a5,-0000023C
	c.lw	a5,0(a4)
	c.li	a0,00000003
	c.bnez	a4,0000000023025A2E

l23025A08:
	c.li	a4,00000001
	c.li	a0,00000001
	c.sw	a5,0(a4)
	jal	ra,0000000023022412
	c.li	a2,00000000
	c.li	a1,00000014
	c.li	a0,00000002
	jal	ra,000000002304D7AC

l23025A1C:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23025A24:
	lui	a5,0004200E
	sw	zero,a5,+00000DC4
	c.li	a0,00000000

l23025A2E:
	jal	ra,0000000023022412
	c.j	0000000023025A1C

l23025A34:
	c.li	a0,00000000
	c.jr	ra

;; stateIdleGuard_connect: 23025A38
stateIdleGuard_connect proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	bne	a0,a5,0000000023025A7E

l23025A42:
	lui	a2,0004201E
	lui	a1,0004201E
	c.addi	sp,FFFFFFF0
	addi	a2,a2,+00000458
	addi	a1,a1,+00000474
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,0000000023022512
	c.li	a5,00000001
	c.beqz	a0,0000000023025A76

l23025A60:
	lui	a1,0002307D
	lui	a0,0002307D
	addi	a1,a1,-00000190
	addi	a0,a0,+000005D0
	jal	ra,0000000023052118
	c.li	a5,00000000

l23025A76:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23025A7E:
	c.li	a5,00000000
	c.mv	a0,a5
	c.jr	ra

;; stateIfaceDownGuard_phyup: 23025A84
stateIfaceDownGuard_phyup proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	beq	a0,a5,0000000023025AA6

l23025A92:
	lui	a0,0002307D
	addi	a0,a0,+00000610
	jal	ra,0000000023052118
	c.li	a0,00000000

l23025AA0:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23025AA6:
	jal	ra,0000000023022446
	sltiu	a0,a0,+00000001
	c.j	0000000023025AA0

;; stateSnifferGuard_raw_send: 23025AB0
stateSnifferGuard_raw_send proc
	lui	a5,0004201F
	addi	a5,a5,+00000448
	lw	a4,a5,+00000718
	lui	a5,0002307D
	addi	a5,a5,+00000538
	beq	a4,a5,0000000023025B28

l23025AC8:
	lui	a5,0002307D
	addi	a5,a5,+000005F4
	beq	a4,a5,0000000023025B28

l23025AD4:
	c.lw	a1,4(a5)
	c.li	a4,00000015
	lbu	a3,a5,+00000000
	bne	a3,a4,0000000023025B28

l23025AE0:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lbu	a1,a5,+00000006
	lbu	a0,a5,+00000002
	lbu	a3,a5,+00000005
	lbu	a4,a5,+00000001
	c.slli	a1,08
	c.slli	a0,08
	c.or	a1,a3
	c.or	a0,a4
	lbu	a3,a5,+00000007
	lbu	a4,a5,+00000003
	c.slli	a3,10
	c.slli	a4,10
	c.or	a3,a1
	c.or	a4,a0
	lbu	a1,a5,+00000008
	lbu	a0,a5,+00000004
	c.slli	a1,18
	c.slli	a0,18
	c.or	a1,a3
	c.or	a0,a4
	jal	ra,00000000230224D2
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23025B28:
	c.li	a0,00000000
	c.jr	ra

;; stateGlobalGuard_stop: 23025B2C
stateGlobalGuard_stop proc
	c.lw	a1,4(a5)
	lbu	a4,a5,+00000000
	c.li	a5,00000009
	bne	a4,a5,0000000023025BDA

l23025B38:
	c.addi	sp,FFFFFFF0
	lui	a0,0002307D
	c.swsp	s0,00000004
	addi	a0,a0,+00000468
	lui	s0,0004201E
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	addi	s0,s0,+00000448
	jal	ra,0000000023052118
	lbu	a0,s0,+00000080
	lui	s1,0004201E
	jal	ra,000000002302269C
	lui	a0,0002307D
	addi	a0,a0,+0000048C
	jal	ra,0000000023052118
	jal	ra,00000000230227D0
	lui	a0,0002307D
	addi	a0,a0,+000004C0
	jal	ra,0000000023052118
	lbu	a0,s0,+00000080
	jal	ra,0000000023022498
	lui	a0,0002307D
	addi	a0,a0,+000004E4
	jal	ra,0000000023052118
	lui	a2,00023048
	addi	a2,a2,-00000302
	c.li	a1,00000000
	addi	a0,s1,+000004E4
	jal	ra,000000002303A688
	lui	a0,0002307D
	addi	a0,a0,+00000510
	jal	ra,0000000023052118
	lui	a1,00023040
	c.li	a2,00000000
	addi	a1,a1,+000005A0
	addi	a0,s1,+000004E4
	jal	ra,000000002303A688
	c.li	a2,00000000
	c.li	a1,0000000C
	c.li	a0,00000002
	sw	zero,s0,+00000008
	jal	ra,000000002304D7AC
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23025BDA:
	c.li	a0,00000000
	c.jr	ra

;; stateGlobalGuard_enable_autoreconnect: 23025BDE
stateGlobalGuard_enable_autoreconnect proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	bne	a0,a5,0000000023025C0E

l23025BE8:
	lui	a0,0002307D
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000003C0
	c.swsp	ra,00000084
	jal	ra,0000000023052118
	lui	a0,0004201E
	c.li	a1,FFFFFFFF
	addi	a0,a0,+00000448
	jal	ra,000000002302891A
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23025C0E:
	c.li	a0,00000000
	c.jr	ra

;; stateGlobalGuard_disable_autoreconnect: 23025C12
stateGlobalGuard_disable_autoreconnect proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	bne	a0,a5,0000000023025C86

l23025C1C:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004201E
	c.swsp	s1,00000080
	c.lui	a4,00001000
	addi	s1,s0,+00000448
	c.swsp	ra,00000084
	c.add	a4,s1
	lw	a4,a4,+00000718
	lui	a5,0002307D
	addi	a5,a5,+00000088
	bne	a4,a5,0000000023025C6C

l23025C40:
	lui	a0,0002307D
	addi	a0,a0,+00000378
	jal	ra,0000000023052118
	lui	a0,0002307D
	addi	a0,a0,+000000A4
	jal	ra,0000000023052118
	lbu	a0,s1,+00000010
	jal	ra,0000000023022498
	c.li	a0,00000001

l23025C62:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23025C6C:
	lui	a0,0002307D
	addi	a0,a0,+000003A4
	jal	ra,0000000023052118
	c.li	a1,FFFFFFFF
	addi	a0,s0,+00000448
	jal	ra,000000002302890C
	c.li	a0,00000000
	c.j	0000000023025C62

l23025C86:
	c.li	a0,00000000
	c.jr	ra

;; stateDisconnect_enter: 23025C8A
stateDisconnect_enter proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	a1,a0
	c.mv	s1,a0
	lui	a0,0002307D
	addi	a0,a0,+00000298
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	zero,00000084
	lui	s0,0004201E
	jal	ra,0000000023052118
	c.li	a1,FFFFFFFF
	addi	a0,s0,+00000448
	jal	ra,00000000230288FE
	c.beqz	a0,0000000023025D60

l23025CB6:
	addi	s2,s1,+00000020
	lui	a4,00023026
	lui	a0,0002307D
	c.mv	a5,s2
	addi	a4,a4,-0000070E
	c.mv	a3,s1
	c.li	a2,00000000
	addi	a1,zero,+000007D0
	addi	a0,a0,+000001A4
	jal	ra,0000000023031792
	lui	a0,0002307D
	addi	a0,a0,+000001B4
	jal	ra,0000000023052118
	jal	ra,00000000230302E8
	c.mv	a2,a0
	c.li	a4,FFFFFFFF
	c.li	a3,00000000
	c.li	a1,00000001
	c.mv	a0,s2
	jal	ra,0000000023031814
	c.li	a5,00000001
	sb	a5,s1,+0000004C

l23025CFC:
	c.lui	a5,00001000
	addi	s0,s0,+00000448
	c.add	s0,a5
	lhu	a2,s0,+00000750
	c.li	a1,00000005
	c.li	a0,00000002
	jal	ra,000000002304D7AC
	c.addi4spn	a0,0000000C
	jal	ra,0000000023021EE2
	c.lwsp	a2,000000E4
	lui	s0,0004201F
	addi	s0,s0,+00000448
	c.or	a0,a5
	c.bnez	a0,0000000023025D32

l23025D24:
	c.li	a2,00000000
	c.li	a1,00000017
	c.li	a0,00000002
	jal	ra,000000002304D7AC
	jal	ra,0000000023021F1A

l23025D32:
	lw	a5,s0,+000007C8
	c.andi	a5,00000001
	c.beqz	a5,0000000023025D54

l23025D3A:
	lui	a0,0002307D
	addi	a0,a0,+000001FC
	jal	ra,0000000023052118
	jal	ra,000000002302283A
	lw	a5,s0,+000007C8
	c.andi	a5,FFFFFFFE
	sw	a5,s0,+000007C8

l23025D54:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23025D60:
	lui	a0,0002307D
	addi	a0,a0,+000001D8
	jal	ra,0000000023052118
	c.j	0000000023025CFC

;; stateGlobalGuard_fw_scan: 23025D6E
stateGlobalGuard_fw_scan proc
	c.lw	a1,4(a5)
	lbu	a4,a5,+00000000
	c.li	a5,00000012
	bne	a4,a5,0000000023025E28

l23025D7A:
	c.addi	sp,FFFFFFF0
	lui	a5,0004201F
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	a5,a5,+00000448
	lw	a5,a5,+00000718
	lui	a4,0002307D
	lui	s0,0004201F
	addi	a4,a4,+0000006C
	addi	s0,s0,+00000448
	beq	a5,a4,0000000023025DB8

l23025DA0:
	lui	a4,0002307D
	addi	a4,a4,-000000CC
	beq	a5,a4,0000000023025DB8

l23025DAC:
	lui	a4,0002307D
	addi	a4,a4,+00000088
	bne	a5,a4,0000000023025DDA

l23025DB8:
	lui	a0,0002307D
	addi	a0,a0,+00000418
	jal	ra,0000000023052118
	lw	a5,s0,+000007C8
	ori	a5,a5,+00000001
	sw	a5,s0,+000007C8

l23025DD0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23025DDA:
	lui	a4,0002307D
	addi	a4,a4,+00000538
	beq	a5,a4,0000000023025E16

l23025DE6:
	lui	a4,0002307D
	addi	a4,a4,+00000018
	beq	a5,a4,0000000023025E16

l23025DF2:
	lui	a4,0002307D
	addi	a4,a4,+0000062C
	beq	a5,a4,0000000023025E16

l23025DFE:
	lui	a0,0002307D
	addi	a0,a0,+00000438
	jal	ra,0000000023052118
	c.li	a2,00000001
	c.li	a1,00000009
	c.li	a0,00000002
	jal	ra,000000002304D7AC
	c.j	0000000023025DD0

l23025E16:
	lui	a0,0002307D
	addi	a0,a0,+00000450
	jal	ra,0000000023052118
	jal	ra,000000002302283A
	c.j	0000000023025DD0

l23025E28:
	c.li	a0,00000000
	c.jr	ra

;; stateDisconnect_guard: 23025E2C
stateDisconnect_guard proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; stateGlobalExit: 23025E3A
stateGlobalExit proc
	c.mv	a1,a0
	lui	a0,0002307D
	addi	a0,a0,+00000298
	jal	zero,0000000023052118

;; stateSnifferEnter: 23025E48
stateSnifferEnter proc
	c.mv	a1,a0
	lui	a0,0002307D
	addi	a0,a0,+00000298
	jal	zero,0000000023052118

;; stateConnectingGuard: 23025E56
stateConnectingGuard proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; stateConnectingAction_connected: 23025E64
stateConnectingAction_connected proc
	c.mv	a1,a0
	lui	a0,0002307D
	addi	a0,a0,+00000648
	jal	zero,0000000023052118

;; stateConnectingAction_disconnect: 23025E72
stateConnectingAction_disconnect proc
	c.mv	a1,a0
	lui	a0,0002307D
	addi	a0,a0,+00000648
	jal	zero,0000000023052118

;; stateConnectingExit: 23025E80
stateConnectingExit proc
	c.mv	a1,a0
	lui	a0,0002307D
	addi	a0,a0,+0000067C
	jal	zero,0000000023052118

;; stateIdleAction_sniffer: 23025E8E
stateIdleAction_sniffer proc
	c.mv	a1,a0
	lui	a0,0002307D
	addi	a0,a0,+00000648
	jal	zero,0000000023052118

;; stateIdleEnter: 23025E9C
stateIdleEnter proc
	c.mv	a1,a0
	lui	a0,0002307D
	addi	a0,a0,+00000298
	jal	zero,0000000023052118

;; stateIdleExit: 23025EAA
stateIdleExit proc
	c.mv	a1,a0
	lui	a0,0002307D
	addi	a0,a0,+00000298
	jal	zero,0000000023052118

;; stateIfaceDownAction_phyup: 23025EB8
stateIfaceDownAction_phyup proc
	c.mv	a1,a0
	lui	a0,0002307D
	addi	a0,a0,+00000648
	jal	zero,0000000023052118

;; stateIfaceDownEnter: 23025EC6
stateIfaceDownEnter proc
	c.mv	a1,a0
	lui	a0,0002307D
	addi	a0,a0,+00000298
	jal	zero,0000000023052118

;; stateIfaceDownExit: 23025ED4
stateIfaceDownExit proc
	c.mv	a1,a0
	lui	a0,0002307D
	addi	a0,a0,+0000067C
	jal	zero,0000000023052118

;; stateConnectedIPNoGuard: 23025EE2
stateConnectedIPNoGuard proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; stateConnectedIPNoAction_disconnect: 23025EF0
stateConnectedIPNoAction_disconnect proc
	c.mv	a1,a0
	lui	a0,0002307D
	addi	a0,a0,+00000648
	jal	zero,0000000023052118

;; stateConnectedIPYesGuard: 23025EFE
stateConnectedIPYesGuard proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; stateConnectedIPYes_action: 23025F0C
stateConnectedIPYes_action proc
	c.mv	a1,a0
	lui	a0,0002307D
	addi	a0,a0,+00000648
	jal	zero,0000000023052118

;; stateConnectedIPYes_enter: 23025F1A
stateConnectedIPYes_enter proc
	c.mv	a1,a0
	lui	a0,0002307D
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000298
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023052118
	c.li	a2,00000000
	c.li	a1,00000007
	c.li	a0,00000002
	lui	s0,0004201F
	jal	ra,000000002304D7AC
	addi	s0,s0,+00000448
	lw	a5,s0,+000007C8
	c.andi	a5,00000001
	c.beqz	a5,0000000023025F62

l23025F48:
	lui	a0,0002307D
	addi	a0,a0,+000001FC
	jal	ra,0000000023052118
	jal	ra,000000002302283A
	lw	a5,s0,+000007C8
	c.andi	a5,FFFFFFFE
	sw	a5,s0,+000007C8

l23025F62:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_auth_to_str: 23025F6A
;;   Called from:
;;     230280A6 (in wifi_mgmr_cli_scanlist)
wifi_mgmr_auth_to_str proc
	c.li	a5,00000005
	bltu	a5,a0,0000000023025FB2

l23025F70:
	lui	a5,0002307D
	addi	a5,a5,-000001BC
	c.slli	a0,02
	c.add	a0,a5
	c.lw	a0,0(a5)
	c.jr	a5
23025F80 37 D5 07 23 13 05 85 72 82 80 37 D5 07 23 13 05 7..#...r..7..#..
23025F90 C5 6E 82 80 37 D5 07 23 13 05 45 6F 82 80 37 D5 .n..7..#..Eo..7.
23025FA0 07 23 13 05 05 70 82 80 37 D5 07 23 13 05 45 71 .#...p..7..#..Eq
23025FB0 82 80                                           ..             

l23025FB2:
	lui	a0,0002307D
	addi	a0,a0,+000006E4
	c.jr	ra
23025FBC                                     37 D5 07 23             7..#
23025FC0 13 05 C5 6D 82 80                               ...m..         

;; wifi_mgmr_cipher_to_str: 23025FC6
;;   Called from:
;;     230280B0 (in wifi_mgmr_cli_scanlist)
wifi_mgmr_cipher_to_str proc
	c.beqz	a0,0000000023025FEA

l23025FC8:
	c.li	a5,00000001
	beq	a0,a5,0000000023025FF4

l23025FCE:
	c.li	a5,00000002
	beq	a0,a5,0000000023025FFE

l23025FD4:
	c.li	a5,00000003
	beq	a0,a5,0000000023026008

l23025FDA:
	c.li	a5,00000004
	beq	a0,a5,0000000023026012

l23025FE0:
	lui	a0,0002307D
	addi	a0,a0,+000006E4
	c.jr	ra

l23025FEA:
	lui	a0,0002307D
	addi	a0,a0,+00000740
	c.jr	ra

l23025FF4:
	lui	a0,0002307D
	addi	a0,a0,+00000728
	c.jr	ra

l23025FFE:
	lui	a0,0002307D
	addi	a0,a0,+00000748
	c.jr	ra

l23026008:
	lui	a0,0002307D
	addi	a0,a0,+0000072C
	c.jr	ra

l23026012:
	lui	a0,0002307D
	addi	a0,a0,+00000734
	c.jr	ra

;; wifi_mgmr_event_notify: 2302601C
;;   Called from:
;;     23026548 (in wifi_mgmr_api_connect)
;;     230266D2 (in wifi_mgmr_api_cfg_req)
;;     230267F0 (in wifi_mgmr_api_ip_got)
;;     23026868 (in wifi_mgmr_api_ip_update)
;;     230268DA (in wifi_mgmr_api_reconnect)
;;     2302694C (in wifi_mgmr_api_disable_autoreconnect)
;;     230269BE (in wifi_mgmr_api_enable_autoreconnect)
;;     23026A30 (in wifi_mgmr_api_disconnect)
;;     23026A9A (in wifi_mgmr_api_rate_config)
;;     23026B04 (in wifi_mgmr_api_conf_max_sta)
;;     23026B78 (in wifi_mgmr_api_ifaceup)
;;     23026BEA (in wifi_mgmr_api_sniffer_enable)
;;     23026CD2 (in wifi_mgmr_api_scan_item_beacon)
;;     23026D4C (in wifi_mgmr_api_fw_disconnect)
;;     23026DBC (in wifi_mgmr_api_fw_tsen_reload)
;;     23026E2E (in wifi_mgmr_api_fw_scan)
;;     23026EA0 (in wifi_mgmr_api_fw_powersaving)
;;     23026FC2 (in wifi_mgmr_api_ap_start)
;;     23027030 (in wifi_mgmr_api_ap_stop)
;;     230270A0 (in wifi_mgmr_api_idle)
;;     23027106 (in wifi_mgmr_api_denoise_enable)
;;     2302716A (in wifi_mgmr_api_denoise_disable)
;;     230271DA (in wifi_mgmr_api_raw_send)
;;     23028A16 (in cb_disconnect_ind)
;;     23028A9C (in cb_connect_ind)
wifi_mgmr_event_notify proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a0
	lui	s1,0004201E
	lui	s2,0002307D

l23026030:
	lbu	a5,s1,+00000448
	c.beqz	a5,00000000230260A0

l23026036:
	lbu	a2,s0,+0000000A
	lbu	a5,s0,+00000009
	lui	a0,0004201F
	c.slli	a2,08
	c.or	a2,a5
	lbu	a5,s0,+0000000B
	c.li	a3,FFFFFFFF
	c.mv	a1,s0
	c.slli	a5,10
	c.or	a5,a2
	lbu	a2,s0,+0000000C
	addi	a0,a0,+0000027C
	c.slli	a2,18
	c.or	a2,a5
	jal	ra,000000002302F786
	c.li	a5,00000000
	c.bnez	a0,0000000023026092

l23026066:
	lbu	a2,s0,+0000000A
	lbu	a5,s0,+00000009
	lui	a0,0002307D
	c.slli	a2,08
	c.or	a2,a5
	lbu	a5,s0,+0000000B
	c.mv	a1,s0
	addi	a0,a0,+0000076C
	c.slli	a5,10
	c.or	a5,a2
	lbu	a2,s0,+0000000C
	c.slli	a2,18
	c.or	a2,a5
	jal	ra,0000000023052118
	c.li	a5,FFFFFFFF

l23026092:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l230260A0:
	addi	a0,s2,+0000074C
	jal	ra,0000000023052118
	c.li	a0,00000014
	jal	ra,0000000023030630
	c.j	0000000023026030

;; wifi_mgmr_start: 230260B0
;;   Called from:
;;     2302620A (in _wifi_mgmr_entry)
wifi_mgmr_start proc
	c.addi16sp	FFFFFEE0
	sw	s0,sp,+00000118
	lui	a2,0002307D
	lui	a1,0002307D
	lui	s0,00042020
	c.li	a5,00000001
	addi	a2,a2,+00000244
	addi	a1,a1,+000005F4
	sw	s4,sp,+00000108
	addi	a0,s0,-000004A0
	addi	s4,sp,+00000019
	sw	ra,sp,+0000011C
	c.swsp	a5,00000008
	sw	s1,sp,+00000114
	sw	s2,sp,+00000110
	sw	s3,sp,+0000010C
	sw	s5,sp,+00000104
	c.swsp	s4,00000088
	jal	ra,0000000023029066
	jal	ra,0000000023028B38
	lui	a1,00023026
	c.li	a2,00000000
	addi	a1,a1,-000007C2
	c.li	a0,00000002
	jal	ra,000000002304D7E0
	c.li	a2,00000000
	c.li	a1,00000002
	c.li	a0,00000002
	jal	ra,000000002304D7AC
	addi	a1,zero,+000000FF
	addi	a0,zero,+000000FF
	jal	ra,000000002303708A
	lui	a0,0002307D
	addi	a0,a0,+00000794
	jal	ra,0000000023052118
	lui	a3,0004200D
	addi	s1,a3,+00000418
	addi	s1,s1,+00000020
	lui	a4,00023026
	c.lui	a1,00002000
	lui	a0,0002307D
	c.mv	a5,s1
	addi	a4,a4,-000007D2
	addi	a3,a3,+00000418
	c.li	a2,00000001
	addi	a1,a1,+00000710
	addi	a0,a0,+000007AC
	jal	ra,0000000023031792
	jal	ra,00000000230302E8
	c.mv	a2,a0
	c.li	a4,FFFFFFFF
	c.mv	a0,s1
	c.li	a3,00000000
	c.li	a1,00000001
	lui	s1,0004201F
	lui	s2,0002307D
	lui	s3,0002307D
	jal	ra,0000000023031814
	addi	s1,s1,+00000448
	addi	s2,s2,+0000006C
	addi	s3,s3,+00000088

l23026182:
	lui	s5,0004201F

l23026186:
	c.li	a3,FFFFFFFF
	addi	a2,zero,+000000E0
	c.mv	a1,s4
	addi	a0,s5,+0000027C
	jal	ra,000000002302F95E
	c.beqz	a0,0000000023026186

l23026198:
	lbu	a4,sp,+00000019
	c.li	a3,0000000D
	bne	a4,a3,00000000230261EA

l230261A2:
	lw	a5,s1,+00000718
	sh	zero,sp,+0000000E
	beq	a5,s2,00000000230261D6

l230261AE:
	beq	a5,s3,00000000230261D6

l230261B2:
	lui	a4,0002307D
	addi	a4,a4,+00000018
	beq	a5,a4,00000000230261D6

l230261BE:
	lui	a4,0002307D
	addi	a4,a4,+0000062C
	beq	a5,a4,00000000230261D6

l230261CA:
	lui	a4,0002307D
	addi	a4,a4,-000000CC
	bne	a5,a4,0000000023026182

l230261D6:
	c.li	a1,00000000
	addi	a0,sp,+0000000E
	jal	ra,0000000023038D94
	lh	a0,sp,+0000000E
	jal	ra,0000000023014DD4
	c.j	0000000023026182

l230261EA:
	c.li	a5,00000001
	bgeu	a3,a4,00000000230261F8

l230261F0:
	c.li	a5,00000016
	sltu	a5,a5,a4
	c.slli	a5,01

l230261F8:
	c.addi4spn	a1,00000010
	addi	a0,s0,-000004A0
	c.swsp	a5,00000008
	jal	ra,0000000023029072
	c.j	0000000023026182

;; _wifi_mgmr_entry: 23026206
_wifi_mgmr_entry proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230260B0

;; wifi_mgmr_start_background: 2302620E
;;   Called from:
;;     23000D50 (in event_cb_wifi_event)
;;     2302620A (in _wifi_mgmr_entry)
wifi_mgmr_start_background proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	jal	ra,0000000023028192
	lui	a1,0002307D
	lui	a0,00023026
	c.addi4spn	a5,0000000C
	c.li	a4,0000001C
	c.li	a3,00000000
	addi	a2,zero,+00000300
	addi	a1,a1,+000007C0
	addi	a0,a0,+00000206
	c.swsp	zero,00000084
	jal	ra,000000002302FFE8
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_init: 2302623C
;;   Called from:
;;     230281A4 (in wifi_mgmr_drv_init)
wifi_mgmr_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	a4,0004201F
	c.lui	s0,00001000
	lui	a3,0004201F
	addi	a4,a4,+0000027C
	addi	a0,s0,-00000740
	addi	a3,a3,+000002A0
	c.li	a2,00000001
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,000000002302F650
	lui	a5,0004201E
	addi	a5,a5,+00000448
	c.li	a4,00000001
	sb	a4,a5,+00000000
	c.lui	a4,00004000
	c.add	a5,s0
	addi	a4,a4,-00000568
	sw	a4,a5,+000007D0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	sltiu	a0,a0,+00000001
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_state_get_internal: 23026286
;;   Called from:
;;     2302860A (in wifi_mgmr_state_get)
wifi_mgmr_state_get_internal proc
	lui	a5,0004201E
	addi	a5,a5,+00000448
	c.lui	a3,00001000
	c.add	a3,a5
	lw	a4,a3,+00000718
	lui	a2,0002307D
	addi	a2,a2,+00000538
	lhu	a3,a3,+00000750
	bne	a4,a2,00000000230262CA

l230262A6:
	c.lw	a5,8(a5)
	c.beqz	a5,00000000230262B2

l230262AA:
	c.li	a5,00000011

l230262AC:
	c.sw	a0,0(a5)

l230262AE:
	c.li	a0,00000000
	c.jr	ra

l230262B2:
	c.li	a5,00000001

l230262B4:
	c.sw	a0,0(a5)
	c.li	a5,00000008
	bne	a3,a5,00000000230262C0

l230262BC:
	c.li	a5,00000008
	c.j	00000000230262AC

l230262C0:
	c.li	a5,0000000C
	bne	a3,a5,00000000230262AE

l230262C6:
	c.li	a5,00000009
	c.j	00000000230262AC

l230262CA:
	lui	a2,0002307D
	addi	a2,a2,+0000006C
	bne	a4,a2,00000000230262E2

l230262D6:
	c.lw	a5,8(a5)
	c.beqz	a5,00000000230262DE

l230262DA:
	c.li	a5,00000012
	c.j	00000000230262AC

l230262DE:
	c.li	a5,00000002
	c.j	00000000230262B4

l230262E2:
	lui	a2,0002307D
	addi	a2,a2,-000000CC
	bne	a4,a2,00000000230262FA

l230262EE:
	c.lw	a5,8(a5)
	c.beqz	a5,00000000230262F6

l230262F2:
	c.li	a5,00000013
	c.j	00000000230262AC

l230262F6:
	c.li	a5,00000003
	c.j	00000000230262AC

l230262FA:
	lui	a2,0002307D
	addi	a2,a2,+00000018
	bne	a4,a2,0000000023026312

l23026306:
	c.lw	a5,8(a5)
	c.beqz	a5,000000002302630E

l2302630A:
	c.li	a5,00000014
	c.j	00000000230262AC

l2302630E:
	c.li	a5,00000004
	c.j	00000000230262AC

l23026312:
	lui	a2,0002307D
	addi	a2,a2,+00000088
	bne	a4,a2,000000002302632A

l2302631E:
	c.lw	a5,8(a5)
	c.beqz	a5,0000000023026326

l23026322:
	c.li	a5,00000015
	c.j	00000000230262AC

l23026326:
	c.li	a5,00000005
	c.j	00000000230262B4

l2302632A:
	lui	a5,0002307D
	addi	a5,a5,+000005F4
	bne	a4,a5,000000002302633A

l23026336:
	c.li	a5,00000006
	c.j	00000000230262AC

l2302633A:
	lui	a5,0002307D
	addi	a5,a5,+0000062C
	bne	a4,a5,000000002302634A

l23026346:
	c.li	a5,00000007
	c.j	00000000230262AC

l2302634A:
	sw	zero,a0,+00000000
	c.j	00000000230262AE

;; wifi_mgmr_set_connect_stat_info: 23026350
;;   Called from:
;;     23028A96 (in cb_connect_ind)
wifi_mgmr_set_connect_stat_info proc
	lhu	a4,a0,+00000000
	lui	a5,0004201F
	addi	a5,a5,+00000448
	sh	a4,a5,+00000750
	lui	a4,00042020
	lui	a5,0004201F
	addi	a3,a0,+00000002
	addi	a4,a4,-00000404
	addi	a2,a0,+00000008
	addi	a5,a5,+00000448

l23026378:
	lbu	a6,a3,+00000000
	c.addi	a3,00000001
	c.addi	a4,00000001
	sb	a6,a4,+00000FFF
	bne	a3,a2,0000000023026378

l23026388:
	lhu	a4,a0,+00000014
	sh	a4,a5,+000007BA
	lbu	a4,a0,+00000012
	sb	a1,a5,+00000752
	sb	a4,a5,+000007BC
	c.jr	ra

;; wifi_mgmr_set_country_code_internal: 2302639E
;;   Called from:
;;     230271EE (in wifi_mgmr_api_set_country_code)
wifi_mgmr_set_country_code_internal proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a0,00000084
	jal	ra,00000000230224F2
	c.lwsp	a2,00000064
	lui	a0,00042020
	c.li	a2,00000003
	addi	a0,a0,-000003FA
	lui	s0,0004201F
	jal	ra,00000000230714A8
	addi	s0,s0,+00000448
	sb	zero,s0,+000007C0
	jal	ra,000000002302250E
	sw	a0,s0,+000007C4
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_ap_sta_cnt_get_internal: 230263D8
;;   Called from:
;;     23028552 (in wifi_mgmr_ap_sta_cnt_get)
wifi_mgmr_ap_sta_cnt_get_internal proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230226D8
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_ap_sta_info_get_internal: 230263E8
;;   Called from:
;;     23028578 (in wifi_mgmr_ap_sta_info_get)
wifi_mgmr_ap_sta_info_get_internal proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a0
	c.mv	s1,a1
	c.li	a2,00000018
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	c.swsp	ra,00000094
	jal	ra,0000000023070EB8
	c.mv	a1,s1
	c.addi4spn	a0,00000008
	jal	ra,00000000230226E2
	lhu	a5,sp,+00000008
	addi	a1,sp,+0000000A
	addi	a0,s0,+00000002
	sh	a5,s0,+00000000
	c.lwsp	s8,000000E4
	c.li	a2,00000006
	c.sw	s0,16(a5)
	c.lwsp	s4,000000E4
	c.sw	s0,12(a5)
	c.lwsp	a6,000000E4
	c.sw	s0,8(a5)
	lbu	a5,sp,+0000001C
	sb	a5,s0,+00000014
	jal	ra,0000000023070C7C
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; wifi_mgmr_ap_sta_delete_internal: 2302643C
;;   Called from:
;;     230285B6 (in wifi_mgmr_ap_sta_delete)
wifi_mgmr_ap_sta_delete_internal proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002302274E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_scan_complete_notify: 2302644C
;;   Called from:
;;     23028B1E (in cb_event_ind)
wifi_mgmr_scan_complete_notify proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002302868E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_api_connect: 2302645C
;;   Called from:
;;     2302844A (in wifi_mgmr_sta_connect)
wifi_mgmr_api_connect proc
	c.addi16sp	FFFFFF10
	c.swsp	s1,000000F0
	c.swsp	s2,00000070
	c.swsp	s5,000000E8
	c.mv	s2,a1
	c.mv	s5,a0
	c.li	a1,00000000
	c.mv	s1,a2
	c.addi4spn	a0,00000008
	addi	a2,zero,+000000C6
	c.swsp	ra,000000F4
	c.swsp	s0,00000074
	c.swsp	s3,000000EC
	c.swsp	s4,0000006C
	c.mv	s3,a3
	c.mv	s4,a4
	c.mv	s0,a5
	jal	ra,0000000023070EB8
	c.li	a5,00000001
	sb	a5,sp,+00000008
	addi	a5,zero,+00000044
	sb	a5,sp,+00000009
	addi	a5,zero,+00000033
	sb	a5,sp,+0000000A
	addi	a5,zero,+00000022
	sb	a5,sp,+0000000B
	c.li	a5,00000011
	sb	a5,sp,+0000000C
	addi	a5,zero,-00000078
	sb	a5,sp,+0000000D
	addi	a5,zero,+00000077
	sb	a5,sp,+0000000E
	addi	a5,zero,+00000066
	sb	a5,sp,+0000000F
	addi	a5,zero,+00000055
	sb	a5,sp,+00000010
	c.mv	a0,s5
	addi	a5,zero,-0000003A
	sb	a5,sp,+00000011
	sb	zero,sp,+00000012
	sb	zero,sp,+00000013
	sb	zero,sp,+00000014
	jal	ra,000000002307132C
	srli	a5,a0,00000010
	c.mv	a2,a0
	sh	a0,sp,+00000036
	c.mv	a1,s5
	addi	a0,sp,+00000015
	sh	a5,sp,+00000038
	jal	ra,0000000023070C7C
	sb	zero,sp,+00000035
	bne	s2,zero,0000000023026550

l23026502:
	c.swsp	zero,000000DC

l23026504:
	sb	zero,sp,+0000007A
	c.bnez	s1,0000000023026584

l2302650A:
	c.swsp	zero,00000060

l2302650C:
	sb	zero,sp,+000000BB
	beq	s3,zero,000000002302651E

l23026514:
	c.li	a2,00000006
	c.mv	a1,s3
	c.addi4spn	a0,000000C4
	jal	ra,0000000023070C7C

l2302651E:
	c.beqz	s0,0000000023026540

l23026520:
	lui	a0,0002307D
	srli	a5,s0,00000008
	c.mv	a2,s0
	c.mv	a1,s4
	addi	a0,a0,+000007CC
	sb	s4,sp,+000000CA
	sb	s0,sp,+000000CB
	sb	a5,sp,+000000CC
	jal	ra,0000000023052118

l23026540:
	c.li	a5,00000001
	c.addi4spn	a0,00000008
	sb	a5,sp,+000000CD
	jal	ra,000000002302601C
	c.li	a0,00000000
	c.j	0000000023026564

l23026550:
	c.mv	a0,s2
	jal	ra,000000002307132C
	c.swsp	a0,000000DC
	addi	a5,zero,+00000040
	c.mv	a2,a0
	bgeu	a5,a0,0000000023026576

l23026562:
	c.li	a0,FFFFFFFF

l23026564:
	c.lwsp	a5,00000130
	c.lwsp	a1,00000114
	c.lwsp	t2,00000134
	c.lwsp	gp,00000158
	c.lwsp	t6,00000068
	c.lwsp	s11,00000088
	c.lwsp	s7,000000A8
	c.addi16sp	000000F0
	c.jr	ra

l23026576:
	c.beqz	a0,0000000023026504

l23026578:
	c.mv	a1,s2
	addi	a0,sp,+0000003A
	jal	ra,0000000023070C7C
	c.j	0000000023026504

l23026584:
	c.mv	a0,s1
	jal	ra,000000002307132C
	c.swsp	a0,00000060
	c.beqz	a0,000000002302650C

l2302658E:
	addi	a5,zero,+00000040
	bne	a0,a5,0000000023026562

l23026596:
	addi	a2,zero,+00000040
	c.mv	a1,s1
	addi	a0,sp,+0000007B
	jal	ra,0000000023070C7C
	c.j	000000002302650C

;; wifi_mgmr_api_cfg_req: 230265A6
;;   Called from:
;;     23028658 (in wifi_mgmr_cfg_req)
wifi_mgmr_api_cfg_req proc
	addi	a6,zero,+00000020
	bltu	a6,a4,00000000230266EA

l230265AE:
	c.addi16sp	FFFFFF90
	c.swsp	s2,00000030
	c.swsp	s3,000000AC
	c.mv	s2,a2
	c.mv	s3,a1
	c.swsp	s4,0000002C
	addi	a2,zero,+00000041
	c.mv	s4,a0
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	c.swsp	s0,00000034
	c.swsp	s1,000000B0
	c.mv	s0,a4
	c.mv	s1,a3
	c.swsp	s5,000000A8
	c.swsp	ra,000000B4
	c.mv	s5,a5
	jal	ra,0000000023070EB8
	c.li	a5,00000016
	sb	a5,sp,+0000000C
	addi	a5,zero,+00000044
	sb	a5,sp,+0000000D
	addi	a5,zero,+00000033
	sb	a5,sp,+0000000E
	addi	a5,zero,+00000022
	sb	a5,sp,+0000000F
	c.li	a5,00000011
	sb	a5,sp,+00000010
	addi	a5,zero,-00000078
	sb	a5,sp,+00000011
	addi	a5,zero,+00000077
	sb	a5,sp,+00000012
	addi	a5,zero,+00000066
	addi	a4,s0,+000000C6
	sb	a5,sp,+00000013
	addi	a5,zero,+00000055
	sb	a5,sp,+00000014
	srli	a5,a4,00000008
	sb	a5,sp,+00000016
	srli	a5,a4,00000010
	sb	a5,sp,+00000017
	srli	a5,s4,00000008
	sb	a5,sp,+0000001A
	srli	a5,s4,00000010
	sb	a5,sp,+0000001B
	srli	a5,s3,00000008
	sb	a5,sp,+0000001E
	srli	a5,s3,00000010
	sb	a5,sp,+0000001F
	srli	a5,s2,00000008
	sb	a5,sp,+00000022
	srli	a5,s2,00000010
	sb	a5,sp,+00000023
	srli	a5,s1,00000008
	sb	a5,sp,+00000026
	srli	a5,s1,00000010
	sb	a5,sp,+00000027
	srli	a5,s0,00000008
	sb	a4,sp,+00000015
	sb	s4,sp,+00000019
	sb	s3,sp,+0000001D
	sb	s2,sp,+00000021
	sb	s1,sp,+00000025
	sb	a5,sp,+0000002A
	c.srli	a4,00000018
	srli	a5,s0,00000010
	srli	s4,s4,00000018
	srli	s3,s3,00000018
	srli	s2,s2,00000018
	c.srli	s1,00000018
	sb	a5,sp,+0000002B
	sb	a4,sp,+00000018
	sb	s4,sp,+0000001C
	sb	s3,sp,+00000020
	sb	s2,sp,+00000024
	sb	s1,sp,+00000028
	sb	s0,sp,+00000029
	srli	a5,s0,00000018
	sb	a5,sp,+0000002C
	c.beqz	s0,00000000230266D0

l230266C4:
	c.mv	a2,s0
	c.mv	a1,s5
	addi	a0,sp,+0000002D
	jal	ra,0000000023070C7C

l230266D0:
	c.addi4spn	a0,0000000C
	jal	ra,000000002302601C
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.lwsp	t0,00000134
	c.lwsp	ra,00000158
	c.lwsp	t4,00000068
	c.lwsp	s9,00000088
	c.lwsp	s5,000000A8
	c.li	a0,00000000
	c.addi16sp	00000070
	c.jr	ra

l230266EA:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; wifi_mgmr_api_ip_got: 230266EE
;;   Called from:
;;     230291E4 (in netif_status_callback)
wifi_mgmr_api_ip_got proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.mv	s1,a1
	c.mv	s2,a0
	c.mv	s0,a2
	c.li	a1,00000000
	addi	a2,zero,+00000021
	c.addi4spn	a0,0000001C
	c.swsp	ra,000000A4
	c.swsp	a3,00000084
	c.swsp	a4,00000004
	jal	ra,0000000023070EB8
	c.li	a5,00000004
	sb	a5,sp,+0000001C
	addi	a5,zero,+00000044
	sb	a5,sp,+0000001D
	addi	a5,zero,+00000033
	sb	a5,sp,+0000001E
	addi	a5,zero,+00000022
	sb	a5,sp,+0000001F
	c.li	a5,00000011
	sb	a5,sp,+00000020
	addi	a5,zero,-00000078
	sb	a5,sp,+00000021
	addi	a5,zero,+00000077
	sb	a5,sp,+00000022
	addi	a5,zero,+00000066
	sb	a5,sp,+00000023
	addi	a5,zero,+00000055
	sb	a5,sp,+00000024
	addi	a5,zero,+00000021
	sb	a5,sp,+00000025
	srli	a5,s2,00000008
	sb	a5,sp,+0000002A
	srli	a5,s2,00000010
	sb	a5,sp,+0000002B
	srli	a5,s1,00000008
	c.lwsp	a2,000000A4
	sb	a5,sp,+0000002E
	srli	a5,s1,00000010
	sb	a5,sp,+0000002F
	srli	a5,s0,00000008
	c.lwsp	s0,000000C4
	sb	a5,sp,+00000032
	srli	a5,s0,00000010
	sb	a5,sp,+00000033
	srli	a5,a3,00000008
	sb	s2,sp,+00000029
	sb	s1,sp,+0000002D
	sb	s0,sp,+00000031
	sb	a3,sp,+00000035
	sb	a5,sp,+00000036
	srli	s2,s2,00000018
	srli	a5,a3,00000010
	c.srli	s1,00000018
	c.srli	s0,00000018
	c.srli	a3,00000018
	sb	s2,sp,+0000002C
	sb	s1,sp,+00000030
	sb	s0,sp,+00000034
	sb	a5,sp,+00000037
	sb	a3,sp,+00000038
	sb	a4,sp,+00000039
	srli	a5,a4,00000008
	sb	zero,sp,+00000026
	sb	zero,sp,+00000027
	sb	zero,sp,+00000028
	sb	a5,sp,+0000003A
	c.addi4spn	a0,0000001C
	srli	a5,a4,00000010
	c.srli	a4,00000018
	sb	a5,sp,+0000003B
	sb	a4,sp,+0000003C
	jal	ra,000000002302601C
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.li	a0,00000000
	c.addi16sp	00000050
	c.jr	ra

;; wifi_mgmr_api_ip_update: 23026802
;;   Called from:
;;     23028338 (in wifi_mgmr_sta_ip_set)
;;     230291B4 (in netif_status_callback)
wifi_mgmr_api_ip_update proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,0000000023070EB8
	c.li	a5,0000001E
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,000000002302601C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_reconnect: 23026874
;;   Called from:
;;     2302592C (in disconnect_retry)
wifi_mgmr_api_reconnect proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,0000000023070EB8
	c.li	a5,00000006
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,000000002302601C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_disable_autoreconnect: 230268E6
;;   Called from:
;;     230283A6 (in wifi_mgmr_sta_autoconnect_disable)
wifi_mgmr_api_disable_autoreconnect proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,0000000023070EB8
	c.li	a5,0000001C
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,000000002302601C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_enable_autoreconnect: 23026958
;;   Called from:
;;     23028396 (in wifi_mgmr_sta_autoconnect_enable)
wifi_mgmr_api_enable_autoreconnect proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,0000000023070EB8
	c.li	a5,0000001D
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,000000002302601C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_disconnect: 230269CA
;;   Called from:
;;     23028356 (in wifi_mgmr_sta_disconnect)
wifi_mgmr_api_disconnect proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,0000000023070EB8
	c.li	a5,00000005
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,000000002302601C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_rate_config: 23026A3C
;;   Called from:
;;     23028602 (in wifi_mgmr_rate_config)
wifi_mgmr_api_rate_config proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a2,0000000D
	c.mv	s0,a0
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,0000000023070EB8
	c.li	a5,0000000B
	sb	a5,sp,+00000000
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	s0,sp,+00000001
	sb	a5,sp,+00000008
	c.srli	s0,00000008
	c.li	a5,0000000D
	c.mv	a0,sp
	sb	s0,sp,+00000002
	sb	zero,sp,+00000003
	sb	zero,sp,+00000004
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,000000002302601C
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_conf_max_sta: 23026AA8
;;   Called from:
;;     23028606 (in wifi_mgmr_conf_max_sta)
wifi_mgmr_api_conf_max_sta proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a2,0000000D
	c.mv	s0,a0
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,0000000023070EB8
	c.li	a5,0000000A
	sb	a5,sp,+00000000
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	s0,sp,+00000001
	sb	zero,sp,+00000002
	sb	zero,sp,+00000003
	sb	zero,sp,+00000004
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,000000002302601C
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_ifaceup: 23026B12
;;   Called from:
;;     230281A8 (in wifi_mgmr_drv_init)
wifi_mgmr_api_ifaceup proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,0000000023070EB8
	c.li	a5,00000007
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,000000002302601C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_sniffer_enable: 23026B84
;;   Called from:
;;     230285E6 (in wifi_mgmr_sniffer_enable)
wifi_mgmr_api_sniffer_enable proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,0000000023070EB8
	c.li	a5,00000002
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,000000002302601C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_scan_item_beacon: 23026BF6
;;   Called from:
;;     23028980 (in cb_beacon_ind)
wifi_mgmr_api_scan_item_beacon proc
	c.addi16sp	FFFFFF80
	c.swsp	s1,000000B8
	c.swsp	s2,00000038
	c.swsp	s3,000000B4
	c.mv	s2,a1
	c.mv	s3,a0
	c.mv	s1,a2
	c.li	a1,00000000
	addi	a2,zero,+00000049
	c.addi4spn	a0,00000014
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	a6,00000080
	c.mv	s0,a5
	c.swsp	a7,00000000
	c.swsp	a3,00000084
	c.swsp	a4,00000004
	jal	ra,0000000023070EB8
	c.li	a5,00000018
	sb	a5,sp,+00000014
	addi	a5,zero,+00000044
	sb	a5,sp,+00000015
	addi	a5,zero,+00000033
	sb	a5,sp,+00000016
	addi	a5,zero,+00000022
	sb	a5,sp,+00000017
	c.li	a5,00000011
	sb	a5,sp,+00000018
	addi	a5,zero,-00000078
	c.lwsp	s0,000000C4
	sb	a5,sp,+00000019
	addi	a5,zero,+00000077
	sb	a5,sp,+0000001A
	addi	a5,zero,+00000066
	sb	a5,sp,+0000001B
	addi	a5,zero,+00000055
	c.mv	a1,a4
	sb	a5,sp,+0000001C
	c.mv	a2,s0
	addi	a5,zero,+00000049
	addi	a0,sp,+00000021
	sb	a5,sp,+0000001D
	sb	zero,sp,+0000001E
	sb	zero,sp,+0000001F
	sb	zero,sp,+00000020
	jal	ra,0000000023070C7C
	c.lwsp	a2,000000A4
	srli	a5,s0,00000008
	sb	s0,sp,+00000045
	sb	a5,sp,+00000046
	c.li	a2,00000006
	srli	a5,s0,00000010
	c.mv	a1,a3
	c.srli	s0,00000018
	addi	a0,sp,+00000049
	sb	a5,sp,+00000047
	sb	s0,sp,+00000048
	sb	zero,sp,+00000041
	jal	ra,0000000023070C7C
	lbu	a5,sp,+00000080
	c.lwsp	tp,00000008
	c.lwsp	zero,00000028
	c.addi4spn	a0,00000014
	sb	s3,sp,+0000004F
	sb	s2,sp,+00000050
	sb	s1,sp,+00000053
	sb	a5,sp,+00000054
	sb	a6,sp,+00000051
	sb	a7,sp,+00000052
	jal	ra,000000002302601C
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.li	a0,00000000
	c.addi16sp	00000080
	c.jr	ra

;; wifi_mgmr_api_fw_disconnect: 23026CE6
;;   Called from:
;;     23025074 (in ip_obtaining_timeout)
wifi_mgmr_api_fw_disconnect proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,0000000023070EB8
	c.li	a5,0000000F
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,000000002302601C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_fw_tsen_reload: 23026D58
;;   Called from:
;;     2302583A (in __reload_tsen)
wifi_mgmr_api_fw_tsen_reload proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,0000000023070EB8
	addi	a4,zero,+00000044
	sb	a4,sp,+00000001
	addi	a4,zero,+00000033
	sb	a4,sp,+00000002
	addi	a4,zero,+00000022
	sb	a4,sp,+00000003
	c.li	a4,00000011
	sb	a4,sp,+00000004
	addi	a4,zero,-00000078
	sb	a4,sp,+00000005
	addi	a4,zero,+00000077
	sb	a4,sp,+00000006
	addi	a4,zero,+00000066
	c.li	a5,0000000D
	sb	a4,sp,+00000007
	c.mv	a0,sp
	addi	a4,zero,+00000055
	sb	a5,sp,+00000000
	sb	a4,sp,+00000008
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,000000002302601C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_fw_scan: 23026DC8
;;   Called from:
;;     2302864C (in wifi_mgmr_scan)
wifi_mgmr_api_fw_scan proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,0000000023070EB8
	c.li	a5,00000012
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,000000002302601C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_fw_powersaving: 23026E3A
;;   Called from:
;;     23028378 (in wifi_mgmr_sta_powersaving)
;;     23028386 (in wifi_mgmr_sta_powersaving)
wifi_mgmr_api_fw_powersaving proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a2,0000000D
	c.mv	s0,a0
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,0000000023070EB8
	c.li	a5,00000010
	sb	a5,sp,+00000000
	srli	a5,s0,00000008
	sb	a5,sp,+00000002
	srli	a5,s0,00000010
	sb	a5,sp,+00000003
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	s0,sp,+00000001
	sb	a5,sp,+00000008
	c.srli	s0,00000018
	c.li	a5,0000000D
	c.mv	a0,sp
	sb	s0,sp,+00000004
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,000000002302601C
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_ap_start: 23026EAE
;;   Called from:
;;     23028532 (in wifi_mgmr_ap_start)
wifi_mgmr_api_ap_start proc
	c.bnez	a0,0000000023026EB4

l23026EB0:
	c.li	a0,FFFFFFFF
	c.jr	ra

l23026EB4:
	c.addi16sp	FFFFFF60
	c.swsp	s0,0000004C
	c.swsp	s1,000000C8
	c.swsp	s3,000000C4
	c.mv	s0,a2
	c.mv	s3,a0
	addi	a2,zero,+0000007C
	c.mv	s1,a1
	c.addi4spn	a0,00000004
	c.li	a1,00000000
	c.swsp	ra,000000CC
	c.swsp	s2,00000048
	c.swsp	s4,00000044
	c.mv	s2,a3
	jal	ra,0000000023070EB8
	c.mv	a0,s3
	jal	ra,000000002307132C
	srli	a5,a0,00000008
	sb	a5,sp,+00000038
	srli	a5,a0,00000010
	sb	a5,sp,+00000039
	srli	a5,a0,00000018
	sb	a0,sp,+00000037
	sb	a5,sp,+0000003A
	addi	s4,zero,+00000020
	bltu	s4,a0,0000000023026F80

l23026F00:
	c.bnez	s1,0000000023026F74

l23026F02:
	c.li	a5,00000008
	sb	a5,sp,+00000004
	addi	a5,zero,+00000044
	sb	a5,sp,+00000005
	addi	a5,zero,+00000033
	sb	a5,sp,+00000006
	addi	a5,zero,+00000022
	sb	a5,sp,+00000007
	c.li	a5,00000011
	sb	a5,sp,+00000008
	addi	a5,zero,-00000078
	sb	a5,sp,+00000009
	addi	a5,zero,+00000077
	sb	a5,sp,+0000000A
	addi	a5,zero,+00000066
	sb	a5,sp,+0000000B
	addi	a5,zero,+00000055
	sb	a5,sp,+0000000C
	addi	a5,zero,+0000007C
	sb	a5,sp,+0000000D
	c.lwsp	s8,000001F4
	lbu	a2,sp,+00000037
	c.mv	a1,s3
	c.slli	a5,08
	c.or	a2,a5
	addi	a0,sp,+00000015
	sb	zero,sp,+0000000E
	sb	zero,sp,+0000000F
	sb	zero,sp,+00000010
	jal	ra,0000000023070C7C
	c.bnez	s1,0000000023026F92

l23026F70:
	c.swsp	zero,000000BC
	c.j	0000000023026F9E

l23026F74:
	c.mv	a0,s1
	jal	ra,000000002307132C
	c.swsp	a0,000000BC
	bgeu	s4,a0,0000000023026F02

l23026F80:
	c.li	a0,FFFFFFFF

l23026F82:
	c.lwsp	t5,00000020
	c.lwsp	s10,00000004
	c.lwsp	s6,00000024
	c.lwsp	s2,00000048
	c.lwsp	a4,00000068
	c.lwsp	a0,00000088
	c.addi16sp	000000A0
	c.jr	ra

l23026F92:
	c.lwsp	t4,00000194
	c.mv	a1,s1
	addi	a0,sp,+0000003B
	jal	ra,0000000023070C7C

l23026F9E:
	srli	a5,s0,00000008
	sb	s0,sp,+00000011
	sb	a5,sp,+00000012
	sltu	s2,zero,s2
	srli	a5,s0,00000010
	c.addi4spn	a0,00000004
	c.srli	s0,00000018
	sb	a5,sp,+00000013
	sb	s0,sp,+00000014
	sb	s2,sp,+00000036
	jal	ra,000000002302601C
	c.li	a0,00000000
	c.j	0000000023026F82

;; wifi_mgmr_api_ap_stop: 23026FCA
;;   Called from:
;;     23028542 (in wifi_mgmr_ap_stop)
wifi_mgmr_api_ap_stop proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,0000000023070EB8
	c.li	a5,00000009
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,000000002302601C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_idle: 2302703C
;;   Called from:
;;     230282B8 (in wifi_mgmr_sta_disable)
;;     230285F6 (in wifi_mgmr_sniffer_disable)
wifi_mgmr_api_idle proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,0000000023070EB8
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	zero,sp,+00000000
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,000000002302601C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_denoise_enable: 230270AC
;;   Called from:
;;     2302586A (in trigger_auto_denoise)
;;     23027AC2 (in wifi_denoise_enable_cmd)
wifi_mgmr_api_denoise_enable proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,0000000023070EB8
	c.li	a5,0000000C
	sb	a5,sp,+00000000
	c.li	a5,00000001
	sb	a5,sp,+00000001
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	zero,sp,+00000002
	sb	zero,sp,+00000003
	sb	zero,sp,+00000004
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,000000002302601C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_denoise_disable: 23027112
;;   Called from:
;;     23027ABE (in wifi_denoise_disable_cmd)
wifi_mgmr_api_denoise_disable proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,0000000023070EB8
	c.li	a5,0000000C
	sb	a5,sp,+00000000
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.mv	a0,sp
	c.li	a5,0000000D
	sb	zero,sp,+00000001
	sb	zero,sp,+00000002
	sb	zero,sp,+00000003
	sb	zero,sp,+00000004
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,000000002302601C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_raw_send: 23027176
;;   Called from:
;;     23028628 (in wifi_mgmr_raw_80211_send)
wifi_mgmr_api_raw_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a1
	c.mv	s1,a0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,0000000023070EB8
	c.li	a5,00000015
	sb	a5,sp,+00000000
	srli	a5,s1,00000008
	sb	a5,sp,+00000002
	srli	a5,s1,00000010
	sb	a5,sp,+00000003
	srli	a5,s0,00000008
	sb	a5,sp,+00000006
	srli	a5,s0,00000010
	sb	s1,sp,+00000001
	sb	s0,sp,+00000005
	sb	a5,sp,+00000007
	c.srli	s1,00000018
	c.srli	s0,00000018
	c.li	a5,0000000D
	c.mv	a0,sp
	sb	s1,sp,+00000004
	sb	s0,sp,+00000008
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,000000002302601C
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_set_country_code: 230271EA
;;   Called from:
;;     230281A0 (in wifi_mgmr_drv_init)
wifi_mgmr_api_set_country_code proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002302639E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; cmd_rf_dump: 230271FA
cmd_rf_dump proc
	c.jr	ra

;; cmd_dump_reset: 230271FC
cmd_dump_reset proc
	lui	a5,0004200E
	c.li	a4,0000000A
	sw	a4,a5,+00000DCC
	c.jr	ra

;; cmd_wifi_power_table_update: 23027208
cmd_wifi_power_table_update proc
	c.addi16sp	FFFFFFC0
	lui	a1,0002307E
	addi	a2,zero,+00000026
	addi	a1,a1,-000007BC
	c.addi4spn	a0,00000008
	c.swsp	ra,0000009C
	jal	ra,0000000023070C7C
	c.addi4spn	a0,00000008
	jal	ra,00000000230054D0
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

;; cmd_wifi_state_get: 2302722A
cmd_wifi_state_get proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a0,0000000C
	c.swsp	ra,0000008C
	c.swsp	zero,00000084
	jal	ra,000000002302860A
	c.lwsp	a2,000000E4
	c.li	a4,00000015
	bltu	a4,a5,000000002302725A

l2302723E:
	lui	a4,0002307D
	c.slli	a5,02
	addi	a4,a4,+000007EC
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5

l2302724E:
	lui	a0,0002307E
	addi	a0,a0,-000005F8

l23027256:
	jal	ra,0000000023052118

l2302725A:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23027260:
	lui	a0,0002307E
	addi	a0,a0,-000005E0
	c.j	0000000023027256
2302726A                               37 E5 07 23 13 05           7..#..
23027270 45 A3 D5 B7 37 E5 07 23 13 05 C5 A4 E9 BF 37 E5 E...7..#......7.
23027280 07 23 13 05 05 A7 C1 BF 37 E5 07 23 13 05 05 A9 .#......7..#....
23027290 D9 B7 37 E5 07 23 13 05 85 AA 75 BF 37 E5 07 23 ..7..#....u.7..#
230272A0 13 05 45 AC 4D BF 37 E5 07 23 13 05 45 AE 65 B7 ..E.M.7..#..E.e.
230272B0 37 E5 07 23 13 05 05 B1 79 BF 37 E5 07 23 13 05 7..#....y.7..#..
230272C0 85 B3 51 BF 37 E5 07 23 13 05 85 B5 69 B7 37 E5 ..Q.7..#....i.7.
230272D0 07 23 13 05 C5 B6 41 B7 37 E5 07 23 13 05 45 B8 .#....A.7..#..E.
230272E0 9D BF 37 E5 07 23 13 05 C5 B9 B5 B7             ..7..#......   

;; wifi_sta_get_state_cmd: 230272EC
wifi_sta_get_state_cmd proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a0,0000000C
	c.swsp	ra,0000008C
	c.swsp	zero,00000084
	jal	ra,000000002302860A
	c.lwsp	a2,00000084
	lui	a1,0002307E
	lui	a0,0002307F
	addi	a1,a1,-00000794
	addi	a0,a0,-00000784
	jal	ra,0000000023052118
	c.lwsp	a2,000000E4
	c.bnez	a5,0000000023027324

l23027312:
	lui	a0,0002307F
	addi	a0,a0,-0000076C

l2302731A:
	jal	ra,0000000023052118
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23027324:
	c.li	a4,00000001
	bne	a5,a4,0000000023027334

l2302732A:
	lui	a0,0002307F
	addi	a0,a0,-00000740
	c.j	000000002302731A

l23027334:
	c.li	a4,00000002
	bne	a5,a4,0000000023027344

l2302733A:
	lui	a0,0002307F
	addi	a0,a0,-00000718
	c.j	000000002302731A

l23027344:
	c.li	a4,00000003
	bne	a5,a4,0000000023027354

l2302734A:
	lui	a0,0002307F
	addi	a0,a0,-000006EC
	c.j	000000002302731A

l23027354:
	c.li	a4,00000004
	bne	a5,a4,0000000023027364

l2302735A:
	lui	a0,0002307F
	addi	a0,a0,-000006B4
	c.j	000000002302731A

l23027364:
	c.li	a4,00000005
	bne	a5,a4,0000000023027374

l2302736A:
	lui	a0,0002307F
	addi	a0,a0,-00000680
	c.j	000000002302731A

l23027374:
	c.li	a4,00000011
	bne	a5,a4,0000000023027384

l2302737A:
	lui	a0,0002307F
	addi	a0,a0,-00000654
	c.j	000000002302731A

l23027384:
	c.li	a4,00000012
	bne	a5,a4,0000000023027394

l2302738A:
	lui	a0,0002307F
	addi	a0,a0,-00000624
	c.j	000000002302731A

l23027394:
	c.li	a4,00000013
	bne	a5,a4,00000000230273A4

l2302739A:
	lui	a0,0002307F
	addi	a0,a0,-000005F0
	c.j	000000002302731A

l230273A4:
	c.li	a4,00000014
	bne	a5,a4,00000000230273B4

l230273AA:
	lui	a0,0002307F
	addi	a0,a0,-000005B0
	c.j	000000002302731A

l230273B4:
	c.li	a4,00000015
	bne	a5,a4,00000000230273C4

l230273BA:
	lui	a0,0002307F
	addi	a0,a0,-00000574
	c.j	000000002302731A

l230273C4:
	c.li	a4,00000006
	bne	a5,a4,00000000230273D4

l230273CA:
	lui	a0,0002307F
	addi	a0,a0,-00000540
	c.j	000000002302731A

l230273D4:
	c.li	a4,00000007
	bne	a5,a4,00000000230273E4

l230273DA:
	lui	a0,0002307F
	addi	a0,a0,-00000518
	c.j	000000002302731A

l230273E4:
	c.li	a4,00000008
	bne	a5,a4,00000000230273F4

l230273EA:
	lui	a0,0002307F
	addi	a0,a0,-000004EC
	c.j	000000002302731A

l230273F4:
	c.li	a4,00000009
	bne	a5,a4,0000000023027404

l230273FA:
	lui	a0,0002307F
	addi	a0,a0,-000004C0
	c.j	000000002302731A

l23027404:
	lui	a0,0002307F
	addi	a0,a0,-00000490
	c.j	000000002302731A

;; wifi_edca_dump_cmd: 2302740E
wifi_edca_dump_cmd proc
	lui	a0,0002307E
	c.addi	sp,FFFFFFE0
	addi	a0,a0,+00000624
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	sb	zero,sp,+0000000D
	sh	zero,sp,+0000000E
	jal	ra,00000000230520DC
	addi	a4,sp,+0000000E
	addi	a3,sp,+0000000D
	c.addi4spn	a2,0000000C
	addi	a1,sp,+0000000B
	c.li	a0,00000000
	jal	ra,000000002301BE2E
	lui	a0,0002307E
	addi	a0,a0,+00000638
	jal	ra,00000000230520DC
	lhu	a4,sp,+0000000E
	lbu	a3,sp,+0000000D
	lbu	a2,sp,+0000000C
	lbu	a1,sp,+0000000B
	lui	s0,0002307E
	addi	a0,s0,+00000644
	jal	ra,0000000023052118
	addi	a4,sp,+0000000E
	addi	a3,sp,+0000000D
	c.addi4spn	a2,0000000C
	addi	a1,sp,+0000000B
	c.li	a0,00000001
	jal	ra,000000002301BE2E
	lui	a0,0002307E
	addi	a0,a0,+00000670
	jal	ra,00000000230520DC
	lhu	a4,sp,+0000000E
	lbu	a3,sp,+0000000D
	lbu	a2,sp,+0000000C
	lbu	a1,sp,+0000000B
	addi	a0,s0,+00000644
	jal	ra,0000000023052118
	addi	a4,sp,+0000000E
	addi	a3,sp,+0000000D
	c.addi4spn	a2,0000000C
	addi	a1,sp,+0000000B
	c.li	a0,00000002
	jal	ra,000000002301BE2E
	lui	a0,0002307E
	addi	a0,a0,+0000067C
	jal	ra,00000000230520DC
	lhu	a4,sp,+0000000E
	lbu	a3,sp,+0000000D
	lbu	a2,sp,+0000000C
	lbu	a1,sp,+0000000B
	addi	a0,s0,+00000644
	jal	ra,0000000023052118
	addi	a4,sp,+0000000E
	addi	a3,sp,+0000000D
	c.addi4spn	a2,0000000C
	addi	a1,sp,+0000000B
	c.li	a0,00000003
	jal	ra,000000002301BE2E
	lui	a0,0002307E
	addi	a0,a0,+00000688
	jal	ra,00000000230520DC
	lhu	a4,sp,+0000000E
	lbu	a3,sp,+0000000D
	lbu	a2,sp,+0000000C
	lbu	a1,sp,+0000000B
	addi	a0,s0,+00000644
	jal	ra,0000000023052118
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; wifi_ap_sta_list_get_cmd: 2302751C
wifi_ap_sta_list_get_cmd proc
	c.addi16sp	FFFFFF90
	c.addi4spn	a0,00000024
	c.swsp	ra,000000B4
	c.swsp	s0,00000034
	c.swsp	s1,000000B0
	c.swsp	s2,00000030
	c.swsp	s3,000000AC
	c.swsp	s4,0000002C
	c.swsp	s5,000000A8
	c.swsp	s6,00000028
	c.swsp	s7,000000A4
	c.swsp	zero,00000090
	sb	zero,sp,+00000023
	jal	ra,000000002302860A
	c.lwsp	tp,00000174
	andi	a5,a1,+00000010
	c.bnez	a5,0000000023027566

l23027544:
	lui	a0,0002307E
	addi	a0,a0,+00000458

l2302754C:
	jal	ra,0000000023052118

l23027550:
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.lwsp	t0,00000134
	c.lwsp	ra,00000158
	c.lwsp	t4,00000068
	c.lwsp	s9,00000088
	c.lwsp	s5,000000A8
	c.lwsp	a7,000000C8
	c.lwsp	a3,000000E8
	c.addi16sp	00000070
	c.jr	ra

l23027566:
	addi	a0,sp,+00000023
	jal	ra,000000002302854E
	lbu	a5,sp,+00000023
	c.bnez	a5,0000000023027580

l23027574:
	lui	a0,0002307E
	c.li	a1,00000000
	addi	a0,a0,+00000480
	c.j	000000002302754C

l23027580:
	c.li	a2,00000018
	c.li	a1,00000000
	c.addi4spn	a0,00000028
	jal	ra,0000000023070EB8
	lui	a0,0002307E
	addi	a0,a0,+000004AC
	jal	ra,0000000023052118
	lui	s0,0002307E
	addi	a0,s0,+000004B8
	jal	ra,0000000023052118
	lui	a0,0002307E
	addi	a0,a0,+00000510
	jal	ra,0000000023052118
	addi	a0,s0,+000004B8
	lui	s3,0002307E
	jal	ra,0000000023052118
	c.li	s2,00000000
	c.li	s1,00000000
	addi	s4,zero,+000000EF
	addi	s5,s3,-00000448
	c.li	s6,0000000C
	lui	s7,0002307E

l230275CC:
	lbu	a5,sp,+00000023
	bgeu	s1,a5,0000000023027550

l230275D4:
	c.mv	a1,s1
	c.addi4spn	a0,00000028
	jal	ra,000000002302855E
	lbu	a5,sp,+00000029
	c.beqz	a5,0000000023027646

l230275E2:
	lbu	a2,sp,+00000028
	beq	a2,s4,0000000023027646

l230275EA:
	c.lwsp	a6,000001D4
	c.lwsp	s4,000001B4
	lbu	a1,sp,+0000003C
	addi	a5,s3,-00000448
	c.li	s0,00000000

l230275F8:
	lbu	a0,a5,+00000000
	beq	a0,a1,000000002302760E

l23027600:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	c.addi	a5,00000008
	bne	s0,s6,00000000230275F8

l2302760C:
	c.mv	s0,s2

l2302760E:
	slli	a5,s0,00000003
	c.add	a5,s5
	c.lw	a5,4(a5)
	c.swsp	a3,00000008
	c.swsp	a4,00000088
	c.swsp	a5,00000004
	c.lwsp	s8,000001F4
	lbu	a7,sp,+0000002E
	lbu	a6,sp,+0000002D
	c.swsp	a5,00000080
	lbu	a5,sp,+0000002F
	lbu	a4,sp,+0000002B
	lbu	a3,sp,+0000002A
	c.swsp	a5,00000000
	lbu	a5,sp,+0000002C
	c.mv	a1,s1
	addi	a0,s7,+00000568
	jal	ra,0000000023052118
	c.mv	s2,s0

l23027646:
	c.addi	s1,00000001
	andi	s1,s1,+000000FF
	c.j	00000000230275CC

;; wifi_ap_sta_delete_cmd: 2302764E
wifi_ap_sta_delete_cmd proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	ra,000000A4
	c.swsp	zero,00000090
	sb	zero,sp,+00000023
	c.li	a5,00000002
	c.mv	s0,a3
	beq	a2,a5,0000000023027678

l23027662:
	c.lw	a3,0(a1)
	lui	a0,0002307E
	addi	a0,a0,+00000350

l2302766C:
	jal	ra,0000000023052118

l23027670:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.addi16sp	00000050
	c.jr	ra

l23027678:
	c.addi4spn	a0,00000024
	jal	ra,000000002302860A
	c.lwsp	tp,00000174
	andi	a5,a1,+00000010
	c.bnez	a5,0000000023027690

l23027686:
	lui	a0,0002307E
	addi	a0,a0,+00000458
	c.j	000000002302766C

l23027690:
	c.lw	s0,4(a1)
	lui	a0,0002307E
	addi	a0,a0,+00000368
	jal	ra,0000000023052118
	c.lw	s0,4(a4)
	c.li	s0,00000000
	c.mv	a0,a4
	c.swsp	a4,0000008C
	jal	ra,000000002307132C
	c.lwsp	t3,000000C4
	c.mv	a2,a0
	c.li	a6,00000001
	c.add	a0,a4
	sb	zero,a0,+00000000
	c.mv	a1,a0
	c.li	t3,00000009
	c.li	t1,00000005
	c.li	t4,0000000A

l230276BE:
	sub	a5,a0,a1
	blt	a5,a2,0000000023027704

l230276C6:
	andi	s0,s0,+000000FF
	lui	a0,0002307E
	c.mv	a1,a4
	c.mv	a3,s0
	addi	a0,a0,+0000037C
	jal	ra,0000000023052118
	lui	a0,0002307E
	c.mv	a1,s0
	addi	a0,a0,+000003AC
	jal	ra,0000000023052118
	addi	a0,sp,+00000023
	jal	ra,000000002302854E
	lbu	a1,sp,+00000023
	c.beqz	a1,00000000230276FA

l230276F6:
	bgeu	a1,s0,000000002302774E

l230276FA:
	lui	a0,0002307E
	addi	a0,a0,+000003BC
	c.j	000000002302766C

l23027704:
	lbu	a3,a1,-00000001
	addi	a5,a3,-00000030
	andi	a5,a5,+000000FF
	bgeu	t3,a5,0000000023027728

l23027714:
	addi	a5,a3,-00000061
	andi	a5,a5,+000000FF
	bltu	t1,a5,000000002302773A

l23027720:
	addi	a5,a3,-00000057

l23027724:
	andi	a5,a5,+000000FF

l23027728:
	add	a5,a5,a6
	c.addi	a1,FFFFFFFF
	c.add	s0,a5
	c.slli	s0,10
	c.srli	s0,00000010
	add	a6,a6,t4
	c.j	00000000230276BE

l2302773A:
	addi	a7,a3,-00000041
	andi	a7,a7,+000000FF
	c.li	a5,00000000
	bltu	t1,a7,0000000023027728

l23027748:
	addi	a5,a3,-00000037
	c.j	0000000023027724

l2302774E:
	c.li	a2,00000018
	c.li	a1,00000000
	c.addi4spn	a0,00000028
	jal	ra,0000000023070EB8
	c.mv	a1,s0
	c.addi4spn	a0,00000028
	jal	ra,000000002302855E
	lbu	a5,sp,+00000029
	c.beqz	a5,0000000023027772

l23027766:
	lbu	a2,sp,+00000028
	addi	a5,zero,+000000EF
	bne	a2,a5,000000002302777E

l23027772:
	lui	a0,0002307E
	c.mv	a1,s0
	addi	a0,a0,+000003F0
	c.j	000000002302766C

l2302777E:
	c.lwsp	s8,000001F4
	lbu	a7,sp,+0000002E
	lbu	a6,sp,+0000002D
	c.swsp	a5,00000080
	lbu	a5,sp,+0000002F
	lbu	a4,sp,+0000002B
	lbu	a3,sp,+0000002A
	c.swsp	a5,00000000
	lbu	a5,sp,+0000002C
	lui	a0,0002307E
	c.mv	a1,s0
	addi	a0,a0,+00000408
	jal	ra,0000000023052118
	lbu	a0,sp,+00000028
	jal	ra,00000000230285B2
	c.j	0000000023027670

;; cmd_wifi_coex_pta_force_off: 230277B4
cmd_wifi_coex_pta_force_off proc
	c.li	a0,00000000
	jal	zero,00000000230132F8

;; cmd_wifi_coex_pta_force_on: 230277BA
cmd_wifi_coex_pta_force_on proc
	c.li	a0,00000001
	jal	zero,00000000230132F8

;; cmd_wifi_coex_pti_force_off: 230277C0
cmd_wifi_coex_pti_force_off proc
	c.li	a0,00000000
	jal	zero,00000000230132A6

;; cmd_wifi_coex_pti_force_on: 230277C6
cmd_wifi_coex_pti_force_on proc
	c.li	a0,00000001
	jal	zero,00000000230132A6

;; cmd_wifi_coex_rf_force_off: 230277CC
cmd_wifi_coex_rf_force_off proc
	c.li	a0,00000000
	jal	zero,000000002301329C

;; cmd_wifi_coex_rf_force_on: 230277D2
cmd_wifi_coex_rf_force_on proc
	c.li	a0,00000001
	jal	zero,000000002301329C

;; cmd_wifi_mib: 230277D8
cmd_wifi_mib proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a3,00000084
	jal	ra,000000002301B1AE
	c.lwsp	a2,000000A4
	c.lwsp	t3,00000020
	c.li	a1,0000001E
	c.lw	a3,0(a0)
	c.addi16sp	00000020
	jal	zero,000000002304B990

;; cmd_wifi_cfg: 230277F0
cmd_wifi_cfg proc
	c.addi16sp	FFFFFFA0
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
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
	c.swsp	ra,000000AC
	c.mv	s6,a2
	c.mv	s4,a3
	c.li	s3,00000000
	jal	ra,000000002304BBC0
	c.li	s2,00000000
	c.li	s1,00000000
	c.li	s0,00000004
	lui	s7,0002307E
	addi	s5,zero,+00000063
	lui	s8,00023082
	lui	s9,00023082
	lui	s10,00023082
	lui	s11,0002307E

l23027838:
	addi	a3,s7,-000006E4
	c.mv	a2,s4
	c.mv	a1,s6
	c.addi4spn	a0,0000000C
	jal	ra,000000002304BBDC
	c.li	a3,FFFFFFFF
	addi	a5,zero,+00000074
	addi	a4,zero,+00000076
	addi	a6,zero,+00000065
	addi	a7,zero,+0000003F
	addi	t1,zero,+00000054
	bne	a0,a3,00000000230278AA

l23027860:
	c.lwsp	s0,000000C4
	lui	a0,0002307E
	c.mv	a3,s3
	c.mv	a2,s2
	c.mv	a1,s1
	addi	a0,a0,-000006D8
	jal	ra,0000000023052118
	c.li	a5,00000002
	beq	s0,a5,000000002302799A

l2302787A:
	bltu	a5,s0,000000002302795E

l2302787E:
	c.li	a5,00000001
	beq	s0,a5,0000000023027978

l23027884:
	lui	a1,00023082
	lui	a0,0002307E
	addi	a1,a1,+00000744
	addi	a0,a0,-00000690
	jal	ra,0000000023052118
	c.addi4spn	a5,00000008
	c.li	a4,00000004
	c.mv	a3,s3
	c.mv	a2,s2
	c.mv	a1,s1
	c.li	a0,00000000

l230278A4:
	jal	ra,0000000023028658
	c.j	0000000023027934

l230278AA:
	beq	a0,s5,00000000230278DA

l230278AE:
	blt	s5,a0,00000000230278C4

l230278B2:
	beq	a0,a7,0000000023027922

l230278B6:
	bne	a0,t1,0000000023027838

l230278BA:
	c.lwsp	a2,00000044
	jal	ra,0000000023070AF0
	c.mv	s3,a0
	c.j	0000000023027838

l230278C4:
	beq	a0,a5,000000002302790E

l230278C8:
	beq	a0,a4,0000000023027918

l230278CC:
	bne	a0,a6,0000000023027838

l230278D0:
	c.lwsp	a2,00000044
	jal	ra,0000000023070AF0
	c.mv	s2,a0
	c.j	0000000023027838

l230278DA:
	c.lwsp	a2,00000064
	addi	a0,s8,+00000780
	jal	ra,0000000023071100
	c.beqz	a0,0000000023027952

l230278E6:
	c.lwsp	a2,00000064
	addi	a0,s9,+00000744
	jal	ra,0000000023071100
	c.beqz	a0,0000000023027956

l230278F2:
	c.lwsp	a2,00000064
	addi	a0,s10,+0000076C
	jal	ra,0000000023071100
	c.beqz	a0,000000002302795A

l230278FE:
	c.lwsp	a2,00000064
	addi	a0,s11,-00000704
	jal	ra,0000000023071100
	c.bnez	a0,0000000023027838

l2302790A:
	c.li	s0,00000002
	c.j	0000000023027838

l2302790E:
	c.lwsp	a2,00000044
	jal	ra,0000000023070AF0
	c.mv	s1,a0
	c.j	0000000023027838

l23027918:
	c.lwsp	a2,00000044
	jal	ra,0000000023070AF0
	c.swsp	a0,00000004
	c.j	0000000023027838

l23027922:
	c.lwsp	s8,00000084
	lw	a1,s4,+00000000
	lui	a0,0002307E
	addi	a0,a0,-000006FC
	jal	ra,0000000023052118

l23027934:
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

l23027952:
	c.li	s0,00000003
	c.j	0000000023027838

l23027956:
	c.li	s0,00000000
	c.j	0000000023027838

l2302795A:
	c.li	s0,00000001
	c.j	0000000023027838

l2302795E:
	c.li	a5,00000003
	beq	s0,a5,00000000230279BC

l23027964:
	c.li	a5,00000004
	bne	s0,a5,0000000023027884

l2302796A:
	lui	a0,0002307E
	addi	a0,a0,-00000680
	jal	ra,0000000023052118
	c.j	0000000023027934

l23027978:
	lui	a1,00023082
	lui	a0,0002307E
	addi	a1,a1,+0000076C
	addi	a0,a0,-00000690
	jal	ra,0000000023052118
	c.addi4spn	a5,00000008
	c.li	a4,00000004
	c.mv	a3,s3
	c.mv	a2,s2
	c.mv	a1,s1
	c.li	a0,00000001
	c.j	00000000230278A4

l2302799A:
	lui	a1,0002307E
	lui	a0,0002307E
	addi	a1,a1,-00000704
	addi	a0,a0,-00000690
	jal	ra,0000000023052118
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a3,00000000
	c.mv	a2,s2
	c.mv	a1,s1
	c.li	a0,00000002
	c.j	00000000230278A4

l230279BC:
	lui	a1,00023082
	lui	a0,0002307E
	addi	a1,a1,+00000780
	addi	a0,a0,-00000690
	jal	ra,0000000023052118
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000003
	c.j	00000000230278A4

;; cmd_wifi_ap_stop: 230279DE
cmd_wifi_ap_stop proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,000000002302853E
	c.lwsp	a2,00000020
	lui	a0,0002307E
	addi	a0,a0,-00000720
	c.addi	sp,00000010
	jal	zero,0000000023052118

;; cmd_wifi_ap_start: 230279F8
cmd_wifi_ap_start proc
	c.addi16sp	FFFFFFC0
	c.li	a1,00000000
	c.swsp	s0,0000001C
	c.addi4spn	a0,00000008
	c.mv	s0,a2
	c.li	a2,00000006
	c.swsp	ra,0000009C
	c.swsp	s2,00000018
	c.swsp	s1,00000098
	c.mv	s2,a3
	jal	ra,0000000023070EB8
	c.addi4spn	a0,00000008
	jal	ra,00000000230357C2
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,0000000023070EB8
	lbu	a5,sp,+0000000D
	lbu	a4,sp,+0000000C
	lbu	a3,sp,+0000000B
	lui	a2,0002307E
	addi	a2,a2,-00000744
	addi	a1,zero,+00000020
	c.addi4spn	a0,00000010
	jal	ra,000000002305216A
	sb	zero,sp,+0000002F
	jal	ra,000000002302844E
	c.li	a5,00000001
	bne	s0,a5,0000000023027A66

l23027A4E:
	c.li	a4,00000001
	c.li	a3,00000000
	c.li	a2,00000000
	c.addi4spn	a1,00000010

l23027A56:
	jal	ra,0000000023028524

l23027A5A:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

l23027A66:
	c.mv	s1,a0
	lw	a0,s2,+00000004
	jal	ra,0000000023070AF0
	addi	a3,a0,-00000001
	c.li	a5,0000000A
	c.mv	a4,a0
	bltu	a5,a3,0000000023027A5A

l23027A7C:
	addi	a2,s0,-00000003
	lui	a3,0002307E
	addi	a3,a3,-0000072C
	sltiu	a2,a2,+00000001
	c.addi4spn	a1,00000010
	c.mv	a0,s1
	c.j	0000000023027A56

;; wifi_sniffer_off_cmd: 23027A92
wifi_sniffer_off_cmd proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230285F2
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,00000000230285D2

;; wifi_sniffer_on_cmd: 23027AA4
wifi_sniffer_on_cmd proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230285E2
	c.lwsp	a2,00000020
	lui	a1,00023028
	addi	a1,a1,-00000374
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,00000000230285C2

;; wifi_denoise_disable_cmd: 23027ABE
wifi_denoise_disable_cmd proc
	jal	zero,0000000023027112

;; wifi_denoise_enable_cmd: 23027AC2
wifi_denoise_enable_cmd proc
	jal	zero,00000000230270AC

;; wifi_power_saving_off_cmd: 23027AC6
wifi_power_saving_off_cmd proc
	c.li	a0,00000000
	jal	zero,0000000023028362

;; wifi_power_saving_on_cmd: 23027ACC
wifi_power_saving_on_cmd proc
	c.li	a0,00000002
	jal	zero,0000000023028362

;; wifi_rc_fixed_disable: 23027AD2
wifi_rc_fixed_disable proc
	c.lui	a0,00010000
	c.addi	a0,FFFFFFFF
	jal	zero,0000000023028602

;; wifi_disable_autoreconnect_cmd: 23027ADA
wifi_disable_autoreconnect_cmd proc
	jal	zero,00000000230283A2

;; wifi_enable_autoreconnect_cmd: 23027ADE
wifi_enable_autoreconnect_cmd proc
	jal	zero,0000000023028392

;; wifi_disconnect_cmd: 23027AE2
wifi_disconnect_cmd proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023028352
	addi	a0,zero,+000003E8
	jal	ra,0000000023030630
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,00000000230282B4

;; wifi_sta_ip_unset_cmd: 23027AFC
wifi_sta_ip_unset_cmd proc
	jal	zero,0000000023028344

;; wifi_sta_ip_info: 23027B00
wifi_sta_ip_info proc
	c.addi16sp	FFFFFFA0
	c.addi4spn	a2,00000018
	c.addi4spn	a1,00000014
	c.addi4spn	a0,00000010
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	jal	ra,00000000230282C4
	c.addi4spn	a1,00000020
	c.addi4spn	a0,0000001C
	jal	ra,00000000230282DC
	c.addi4spn	a0,00000024
	jal	ra,000000002302860E
	c.addi4spn	a0,00000028
	jal	ra,0000000023005506
	c.lwsp	tp,00000174
	lui	a0,0002307F
	addi	a0,a0,-00000470
	jal	ra,0000000023052118
	c.addi4spn	a0,00000010
	jal	ra,000000002303FCA6
	c.mv	a1,a0
	lui	a0,0002307F
	addi	a0,a0,-00000460
	jal	ra,0000000023052118
	c.addi4spn	a0,00000018
	jal	ra,000000002303FCA6
	c.mv	a1,a0
	lui	a0,0002307F
	addi	a0,a0,-00000450
	jal	ra,0000000023052118
	c.addi4spn	a0,00000014
	jal	ra,000000002303FCA6
	c.mv	a1,a0
	lui	a0,0002307F
	addi	a0,a0,-00000440
	jal	ra,0000000023052118
	c.addi4spn	a0,0000001C
	jal	ra,000000002303FCA6
	c.mv	a1,a0
	lui	a0,0002307F
	addi	a0,a0,-00000430
	jal	ra,0000000023052118
	c.addi4spn	a0,00000020
	jal	ra,000000002303FCA6
	c.mv	a1,a0
	lui	a0,0002307F
	addi	a0,a0,-00000420
	jal	ra,0000000023052118
	lui	a0,0002307F
	addi	a0,a0,-00000410
	jal	ra,00000000230520DC
	lui	s0,0002307E
	addi	a0,s0,+000007F0
	jal	ra,00000000230520DC
	lb	a4,sp,+0000002B
	lb	a3,sp,+0000002A
	lb	a2,sp,+00000029
	lb	a1,sp,+00000028
	lui	a0,0002307F
	addi	a0,a0,-000003F8
	jal	ra,0000000023052118
	lb	a5,sp,+00000037
	lb	a7,sp,+00000036
	lb	a6,sp,+00000035
	c.swsp	a5,00000000
	lb	a4,sp,+00000033
	lb	a5,sp,+00000034
	lb	a3,sp,+00000032
	lb	a2,sp,+00000031
	lb	a1,sp,+00000030
	lui	a0,0002307F
	addi	a0,a0,-000003B8
	jal	ra,0000000023052118
	lb	a5,sp,+0000003F
	lb	a7,sp,+0000003E
	lb	a6,sp,+0000003D
	c.swsp	a5,00000000
	lb	a4,sp,+0000003B
	lb	a5,sp,+0000003C
	lb	a3,sp,+0000003A
	lb	a2,sp,+00000039
	lb	a1,sp,+00000038
	lui	a0,0002307F
	addi	a0,a0,-0000035C
	jal	ra,0000000023052118
	addi	a0,s0,+000007F0
	jal	ra,00000000230520DC
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.addi16sp	00000060
	c.jr	ra

;; cmd_wifi_raw_send: 23027C36
cmd_wifi_raw_send proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200E
	c.swsp	ra,00000084
	addi	a5,a5,-00000230
	c.lw	a5,0(a4)
	lui	a0,0004200D
	addi	a2,a0,+00000464
	slli	a3,a4,00000004
	sb	a3,a2,+00000016
	c.addi	a4,00000001
	c.srli	a3,00000008
	c.li	a1,00000018
	addi	a0,a0,+00000464
	sb	a3,a2,+00000017
	c.sw	a5,0(a4)
	jal	ra,000000002302861C
	c.beqz	a0,0000000023027C7A

l23027C6A:
	lui	a0,0002307E
	addi	a0,a0,-00000620

l23027C72:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230520DC

l23027C7A:
	lui	a0,0002307E
	addi	a0,a0,-0000060C
	c.j	0000000023027C72

;; wifi_scan_cmd: 23027C84
wifi_scan_cmd proc
	c.li	a1,00000000
	c.li	a0,00000000
	jal	zero,0000000023028638

;; sniffer_cb: 23027C8C
sniffer_cb proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200E
	c.swsp	s0,00000004
	addi	a5,a5,-0000022C
	c.swsp	ra,00000084
	c.lw	a5,0(a4)
	lui	s0,0004200E
	addi	s0,s0,-00000238
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	jal	ra,00000000230302E8
	c.lw	s0,0(a5)
	c.sub	a0,a5
	c.lui	a5,00002000
	addi	a5,a5,+00000710
	bge	a5,a0,0000000023027CC0

l23027CBA:
	jal	ra,00000000230302E8
	c.sw	s0,0(a0)

l23027CC0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; cmd_wifi_dump: 23027CC8
cmd_wifi_dump proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.li	a5,00000001
	bge	a5,a2,0000000023027CF0

l23027CD2:
	lui	a0,0002307E
	addi	a0,a0,-00000670
	jal	ra,00000000230520DC
	jal	ra,000000002303100A
	c.li	a0,00000001

l23027CE4:
	jal	ra,000000002300E51E
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002303101E

l23027CF0:
	lui	a0,0002307E
	addi	a0,a0,-00000648
	jal	ra,00000000230520DC
	jal	ra,000000002303100A
	c.li	a0,00000000
	c.j	0000000023027CE4

;; cmd_wifi_ap_conf_max_sta: 23027D04
cmd_wifi_ap_conf_max_sta proc
	c.li	a5,00000002
	beq	a2,a5,0000000023027D16

l23027D0A:
	lui	a0,0002307E
	addi	a0,a0,-0000077C
	jal	zero,0000000023052118

l23027D16:
	c.lw	a3,4(a0)
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023070AF0
	c.mv	s0,a0
	c.mv	a1,a0
	lui	a0,0002307E
	addi	a0,a0,-0000075C
	jal	ra,0000000023052118
	andi	a0,s0,+000000FF
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023028606

;; wifi_mon_cmd: 23027D40
wifi_mon_cmd proc
	c.li	a5,00000001
	bge	a5,a2,0000000023027D4A

l23027D46:
	jal	zero,00000000230285E2

l23027D4A:
	lui	a1,00023028
	addi	a1,a1,-00000374
	c.li	a0,00000000
	jal	zero,00000000230285C2

;; wifi_rc_fixed_enable: 23027D58
wifi_rc_fixed_enable proc
	c.li	a5,00000004
	beq	a2,a5,0000000023027D6A

l23027D5E:
	lui	a0,0002307F
	addi	a0,a0,-000007D8
	jal	zero,0000000023052118

l23027D6A:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.lw	a3,4(a0)
	c.mv	s0,a3
	jal	ra,0000000023070AF0
	c.mv	s1,a0
	andi	s4,a0,+000000FF
	c.lw	s0,8(a0)
	jal	ra,0000000023070AF0
	c.mv	s5,a0
	andi	s3,a0,+000000FF
	c.lw	s0,12(a0)
	jal	ra,0000000023070AF0
	c.li	a5,00000001
	c.mv	s2,a0
	beq	s4,a5,0000000023027E0C

l23027DA2:
	lui	a1,0002307F
	addi	a1,a1,-000007E4

l23027DAA:
	lui	a0,0002307F
	andi	a3,s2,+000000FF
	andi	a2,s5,+000000FF
	addi	a0,a0,-000007B8
	jal	ra,0000000023052118
	c.li	a5,00000001
	bne	s4,a5,0000000023027E16

l23027DC4:
	slli	s0,s1,0000000C
	lui	s1,000000FF
	c.and	s0,s1
	lui	s1,00000020
	c.slli	s2,09
	addi	s1,s1,-00000200
	and	s2,s2,s1
	or	s0,s0,s2
	or	s0,s0,s3
	c.slli	s0,10
	c.srli	s0,00000010

l23027DE8:
	lui	a0,0002307F
	c.mv	a1,s0
	addi	a0,a0,-00000794
	jal	ra,0000000023052118
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,0000000023028602

l23027E0C:
	lui	a1,0002307F
	addi	a1,a1,-000007EC
	c.j	0000000023027DAA

l23027E16:
	c.li	s0,00000000
	bne	s4,zero,0000000023027DE8

l23027E1C:
	ori	s0,s3,+00000600
	c.j	0000000023027DE8

;; wifi_connect_cmd: 23027E22
wifi_connect_cmd proc
	c.li	a5,00000003
	beq	a2,a5,0000000023027E36

l23027E28:
	c.lw	a3,0(a1)
	lui	a0,0002307E
	addi	a0,a0,+00000604
	jal	zero,0000000023052118

l23027E36:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a3
	c.jal	00000000230281B6
	c.lw	s0,8(a2)
	c.lw	s0,4(a1)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a6,00000000
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi	sp,00000010
	c.j	0000000023028416

;; wifi_sta_ip_set_cmd: 23027E54
wifi_sta_ip_set_cmd proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.li	a5,00000006
	beq	a2,a5,0000000023027E88

l23027E6A:
	lui	a0,0002307F
	addi	a0,a0,-0000032C
	jal	ra,00000000230520DC

l23027E76:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

l23027E88:
	c.lw	a3,4(a0)
	c.mv	s0,a3
	jal	ra,000000002303FBF2
	c.mv	s1,a0
	c.lw	s0,8(a0)
	jal	ra,000000002303FBF2
	c.mv	s2,a0
	c.lw	s0,12(a0)
	jal	ra,000000002303FBF2
	c.mv	s3,a0
	c.lw	s0,16(a0)
	jal	ra,000000002303FBF2
	c.mv	s4,a0
	c.lw	s0,20(a0)
	lui	s0,00023072
	jal	ra,000000002303FBF2
	c.addi4spn	a1,0000000C
	c.li	a2,00000014
	c.mv	s5,a0
	c.addi4spn	a0,00000008
	c.swsp	s1,00000004
	jal	ra,000000002303FC0A
	lui	a0,0002307F
	addi	a0,a0,-00000314
	jal	ra,00000000230520DC
	c.addi4spn	a0,0000000C
	jal	ra,00000000230520DC
	addi	a0,s0,+000007FC
	jal	ra,00000000230520DC
	c.addi4spn	a1,0000000C
	c.li	a2,00000014
	c.addi4spn	a0,00000008
	c.swsp	s2,00000004
	jal	ra,000000002303FC0A
	lui	a0,0002307F
	addi	a0,a0,-0000030C
	jal	ra,00000000230520DC
	c.addi4spn	a0,0000000C
	jal	ra,00000000230520DC
	addi	a0,s0,+000007FC
	jal	ra,00000000230520DC
	c.addi4spn	a1,0000000C
	c.li	a2,00000014
	c.addi4spn	a0,00000008
	c.swsp	s3,00000004
	jal	ra,000000002303FC0A
	lui	a0,0002307F
	addi	a0,a0,-00000304
	jal	ra,00000000230520DC
	c.addi4spn	a0,0000000C
	jal	ra,00000000230520DC
	addi	a0,s0,+000007FC
	jal	ra,00000000230520DC
	c.addi4spn	a1,0000000C
	c.li	a2,00000014
	c.addi4spn	a0,00000008
	c.swsp	s4,00000004
	jal	ra,000000002303FC0A
	lui	a0,0002307F
	addi	a0,a0,-000002FC
	jal	ra,00000000230520DC
	c.addi4spn	a0,0000000C
	jal	ra,00000000230520DC
	addi	a0,s0,+000007FC
	jal	ra,00000000230520DC
	c.addi4spn	a1,0000000C
	c.li	a2,00000014
	c.addi4spn	a0,00000008
	c.swsp	s5,00000004
	jal	ra,000000002303FC0A
	lui	a0,0002307F
	addi	a0,a0,-000002F4
	jal	ra,00000000230520DC
	c.addi4spn	a0,0000000C
	jal	ra,00000000230520DC
	addi	a0,s0,+000007FC
	jal	ra,00000000230520DC
	c.mv	a4,s5
	c.mv	a3,s4
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	c.jal	0000000023028306
	c.j	0000000023027E76

;; wifi_scan_filter_cmd: 23027F82
wifi_scan_filter_cmd proc
	c.li	a5,00000002
	bne	a2,a5,0000000023027F98

l23027F88:
	c.lw	a3,4(a5)
	lbu	a0,a5,+00000000
	addi	a0,a0,-00000031
	sltiu	a0,a0,+00000001
	c.j	000000002302865C

l23027F98:
	c.jr	ra

;; wifi_capcode_cmd: 23027F9A
wifi_capcode_cmd proc
	addi	a4,a2,-00000001
	c.li	a5,00000001
	bgeu	a5,a4,0000000023027FB2

l23027FA4:
	c.lw	a3,0(a1)
	lui	a0,0002307E
	addi	a0,a0,+000005BC

l23027FAE:
	jal	zero,0000000023052118

l23027FB2:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	bne	a2,a5,0000000023027FD2

l23027FBC:
	jal	ra,00000000230370EC
	c.lwsp	s0,00000004
	c.mv	a1,a0
	lui	a0,0002307E
	c.lwsp	a2,00000020
	addi	a0,a0,+000005D0
	c.addi	sp,00000010
	c.j	0000000023027FAE

l23027FD2:
	c.lw	a3,4(a0)
	jal	ra,0000000023070AF0
	c.mv	s0,a0
	c.mv	a1,a0
	lui	a0,0002307E
	addi	a0,a0,+000005EC
	jal	ra,0000000023052118
	bge	zero,s0,0000000023027FFC

l23027FEC:
	andi	a1,s0,+000000FF
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,a1
	c.addi	sp,00000010
	jal	zero,000000002303708A

l23027FFC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_cli_scanlist: 23028004
wifi_mgmr_cli_scanlist proc
	lui	a0,0002307E
	c.addi16sp	FFFFFF80
	addi	a0,a0,+00000694
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	s1,000000B8
	c.swsp	s2,00000038
	c.swsp	s3,000000B4
	c.swsp	s4,00000034
	c.swsp	s5,000000B0
	c.swsp	s6,00000030
	c.swsp	s7,000000AC
	c.swsp	s8,0000002C
	c.swsp	s9,000000A8
	c.swsp	s10,00000028
	c.swsp	s11,000000A4
	jal	ra,0000000023052118
	lui	a0,0002307E
	lui	s0,0004201E
	addi	a0,a0,+000006A8
	addi	s0,s0,+00000448
	c.lui	s2,00001000
	jal	ra,0000000023052118
	c.li	s1,00000000
	lui	s4,0002307E
	c.add	s2,s0
	lui	s5,0002307E
	addi	s3,zero,+00000032

l23028052:
	lbu	a5,s0,+000002B0
	c.beqz	a5,000000002302810E

l23028058:
	jal	ra,00000000230302E8
	lw	a5,s0,+000002B4
	addi	s6,s0,+0000027C
	c.sub	a0,a5
	lw	a5,s2,+000007D0
	bgeu	a0,a5,000000002302810E

l2302806E:
	lbu	a2,s0,+000002AA
	lbu	a3,s0,+000002A4
	lbu	a4,s0,+000002A5
	lbu	a5,s0,+000002A6
	lbu	a6,s0,+000002A7
	lbu	a7,s0,+000002A8
	lbu	a0,s0,+000002AE
	c.swsp	a2,0000009C
	c.swsp	a3,0000001C
	c.swsp	a4,00000098
	c.swsp	a5,00000018
	c.swsp	a6,00000094
	c.swsp	a7,00000014
	lbu	s7,s0,+000002A9
	lb	s8,s0,+000002AB
	lb	s9,s0,+000002AC
	lb	s10,s0,+000002AD
	jal	ra,0000000023025F6A
	c.mv	s11,a0
	lbu	a0,s0,+000002AF
	jal	ra,0000000023025FC6
	c.lwsp	s0,00000138
	c.lwsp	a2,00000118
	c.lwsp	a6,000001F4
	c.lwsp	s4,000001D4
	c.lwsp	s8,000001B4
	c.lwsp	t3,00000194
	c.swsp	a0,00000088
	c.swsp	s6,0000000C
	c.swsp	s11,00000008
	c.swsp	s10,00000084
	c.swsp	s9,00000004
	c.swsp	s8,00000080
	c.swsp	s7,00000000
	c.mv	a1,s1
	addi	a0,s5,+00000710
	jal	ra,0000000023052118

l230280D8:
	c.addi	s1,00000001
	addi	s0,s0,+0000003C
	bne	s1,s3,0000000023028052

l230280E2:
	lui	a0,0002307E
	addi	a0,a0,+000007AC
	jal	ra,0000000023052118
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

l2302810E:
	c.mv	a1,s1
	addi	a0,s4,+00000794
	jal	ra,0000000023052118
	c.j	00000000230280D8

;; wifi_mgmr_ext_dump_needed: 2302811A
;;   Called from:
;;     230247E2 (in tcpip_stack_input)
wifi_mgmr_ext_dump_needed proc
	lui	a5,0004200E
	addi	a5,a5,-00000234
	c.lw	a5,0(a4)
	c.li	a0,00000000
	bge	zero,a4,0000000023028130

l2302812A:
	c.addi	a4,FFFFFFFF
	c.sw	a5,0(a4)
	c.li	a0,00000001

l23028130:
	c.jr	ra

;; wifi_mgmr_cli_init: 23028132
;;   Called from:
;;     2300085E (in aos_loop_proc)
wifi_mgmr_cli_init proc
	c.li	a0,00000000
	c.jr	ra

;; mac_is_unvalid: 23028136
;;   Called from:
;;     2302822A (in wifi_mgmr_sta_enable)
;;     23028240 (in wifi_mgmr_sta_enable)
;;     23028492 (in wifi_mgmr_ap_enable)
;;     230284A8 (in wifi_mgmr_ap_enable)
mac_is_unvalid proc
	lbu	a5,a0,+00000000
	c.li	a4,00000001
	c.li	a3,00000006

l2302813E:
	add	a2,a0,a4
	lbu	a2,a2,+00000000
	bne	a2,a5,0000000023028162

l2302814A:
	c.addi	a4,00000001
	bne	a4,a3,000000002302813E

l23028150:
	addi	a0,a5,-00000001
	andi	a0,a0,+000000FF
	sltiu	a0,a0,+000000FE
	xori	a0,a0,+00000001
	c.jr	ra

l23028162:
	c.li	a0,00000000
	c.jr	ra

;; wifi_mgmr_psk_cal: 23028166
;;   Called from:
;;     23000AC6 (in _connect_wifi)
wifi_mgmr_psk_cal proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.mv	s1,a3
	c.mv	a3,sp
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	jal	ra,0000000023054FAC
	c.mv	s0,a0
	c.bnez	a0,0000000023028186

l2302817A:
	addi	a2,zero,+00000020
	c.mv	a1,sp
	c.mv	a0,s1
	jal	ra,000000002304A7A6

l23028186:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; wifi_mgmr_drv_init: 23028192
;;   Called from:
;;     23026212 (in wifi_mgmr_start_background)
wifi_mgmr_drv_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,00000000230292AE
	c.mv	a0,s0
	jal	ra,00000000230271EA
	jal	ra,000000002302623C
	jal	ra,0000000023026B12
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sta_enable: 230281B6
;;   Called from:
;;     23000986 (in _connect_wifi)
;;     23027E3E (in wifi_connect_cmd)
wifi_mgmr_sta_enable proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004200E
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	addi	a5,a5,-00000228
	c.lw	a5,0(a3)
	c.li	a4,00000001
	bne	a3,a4,00000000230281F0

l230281D0:
	lui	a0,0002307F
	addi	a0,a0,-00000254
	jal	ra,0000000023052118

l230281DC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	lui	a0,0004201E
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	addi	a0,a0,+00000454
	c.addi16sp	00000020
	c.jr	ra

l230281F0:
	lui	a0,0002307F
	addi	a0,a0,-00000228
	c.sw	a5,0(a4)
	lui	s0,0004201E
	jal	ra,0000000023052118
	lui	s1,0004201E
	lui	s2,0004201E
	addi	a5,s0,+00000448
	c.li	a2,00000006
	addi	a1,s2,+00000459
	addi	a0,s1,+000004AE
	sw	zero,a5,+0000000C
	c.swsp	zero,00000080
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	jal	ra,0000000023070C7C
	addi	a0,s1,+000004AE
	jal	ra,0000000023028136
	addi	s0,s0,+00000448
	c.beqz	a0,0000000023028268

l23028234:
	addi	a0,s1,+000004AE
	jal	ra,00000000230357C2
	addi	a0,s1,+000004AE
	jal	ra,0000000023028136
	c.beqz	a0,000000002302825A

l23028246:
	c.lui	a5,00005000
	addi	a5,a5,+000000C0
	sh	a5,s0,+00000066
	lui	a5,0000100D
	addi	a5,a5,-000006BD
	c.sw	s0,104(a5)

l2302825A:
	c.li	a2,00000006
	addi	a1,s1,+000004AE
	addi	a0,s2,+00000459
	jal	ra,0000000023070C7C

l23028268:
	lui	s1,0004201E
	lui	a6,0002303C
	lui	a5,00023029
	addi	a6,a6,-000002BE
	c.li	a4,00000000
	c.addi4spn	a3,0000000C
	c.addi4spn	a2,00000008
	c.addi4spn	a1,00000004
	addi	a5,a5,+00000266
	addi	a0,s1,+00000474
	jal	ra,000000002303A606
	c.lui	a5,00007000
	addi	a5,a5,+00000473
	sh	a5,s0,+0000006E
	lbu	a5,s0,+0000006D
	addi	a0,s1,+00000474
	ori	a5,a5,+00000024
	sb	a5,s0,+0000006D
	jal	ra,000000002304051C
	addi	a0,s1,+00000474
	jal	ra,0000000023040526
	c.j	00000000230281DC

;; wifi_mgmr_sta_disable: 230282B4
;;   Called from:
;;     23027AF8 (in wifi_disconnect_cmd)
wifi_mgmr_sta_disable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002302703C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sta_ip_get: 230282C4
;;   Called from:
;;     23027B0C (in wifi_sta_ip_info)
wifi_mgmr_sta_ip_get proc
	lui	a5,0004201E
	addi	a5,a5,+00000448
	c.lw	a5,48(a4)
	c.sw	a0,0(a4)
	c.lw	a5,52(a4)
	c.li	a0,00000000
	c.sw	a2,0(a4)
	c.lw	a5,56(a5)
	c.sw	a1,0(a5)
	c.jr	ra

;; wifi_mgmr_sta_dns_get: 230282DC
;;   Called from:
;;     23027B14 (in wifi_sta_ip_info)
wifi_mgmr_sta_dns_get proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.li	a0,00000000
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,000000002303CA68
	c.lw	a0,0(a5)
	c.li	a0,00000001
	c.sw	s0,0(a5)
	jal	ra,000000002303CA68
	c.lw	a0,0(a5)
	c.lwsp	a2,00000064
	c.li	a0,00000000
	c.sw	a1,0(a5)
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_sta_ip_set: 23028306
;;   Called from:
;;     23027F7E (in wifi_sta_ip_set_cmd)
;;     2302834E (in wifi_mgmr_sta_ip_unset)
wifi_mgmr_sta_ip_set proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	a0,0000008C
	c.swsp	a1,0000000C
	c.swsp	a2,00000088
	c.swsp	a3,00000008
	c.swsp	a4,00000084
	jal	ra,000000002303100A
	c.lwsp	t3,00000044
	c.lwsp	s8,00000064
	c.lwsp	s4,00000084
	c.lwsp	a6,000000A4
	c.lwsp	a2,000000C4
	lui	a5,0004201E
	addi	a5,a5,+00000448
	c.sw	a5,24(a0)
	c.sw	a5,28(a1)
	c.sw	a5,32(a2)
	c.sw	a5,36(a3)
	c.sw	a5,40(a4)
	jal	ra,000000002303101E
	jal	ra,0000000023026802
	c.lwsp	a2,00000130
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; wifi_mgmr_sta_ip_unset: 23028344
;;   Called from:
;;     23027AFC (in wifi_sta_ip_unset_cmd)
wifi_mgmr_sta_ip_unset proc
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000000
	jal	zero,0000000023028306

;; wifi_mgmr_sta_disconnect: 23028352
;;   Called from:
;;     23027AE6 (in wifi_disconnect_cmd)
wifi_mgmr_sta_disconnect proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230269CA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sta_powersaving: 23028362
;;   Called from:
;;     23027AC8 (in wifi_power_saving_off_cmd)
;;     23027ACE (in wifi_power_saving_on_cmd)
wifi_mgmr_sta_powersaving proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.li	a5,00000001
	beq	a0,a5,0000000023028386

l2302836E:
	c.li	a5,00000002
	c.mv	s0,a0
	beq	a0,a5,0000000023028386

l23028376:
	c.bnez	a0,000000002302838E

l23028378:
	jal	ra,0000000023026E3A

l2302837C:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23028386:
	jal	ra,0000000023026E3A
	c.li	s0,00000000
	c.j	000000002302837C

l2302838E:
	c.li	s0,FFFFFFFF
	c.j	000000002302837C

;; wifi_mgmr_sta_autoconnect_enable: 23028392
;;   Called from:
;;     23027ADE (in wifi_enable_autoreconnect_cmd)
wifi_mgmr_sta_autoconnect_enable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023026958
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sta_autoconnect_disable: 230283A2
;;   Called from:
;;     23027ADA (in wifi_disable_autoreconnect_cmd)
wifi_mgmr_sta_autoconnect_disable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230268E6
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sta_ssid_set: 230283B2
;;   Called from:
;;     2302842C (in wifi_mgmr_sta_connect)
wifi_mgmr_sta_ssid_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002307132C
	c.beqz	a0,00000000230283DC

l230283C0:
	c.mv	a0,s0
	jal	ra,000000002307132C
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a2,a0
	lui	a0,00042020
	addi	a0,a0,-00000465
	c.addi	sp,00000010
	jal	zero,0000000023070C7C

l230283DC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sta_psk_set: 230283E4
;;   Called from:
;;     23028432 (in wifi_mgmr_sta_connect)
wifi_mgmr_sta_psk_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002307132C
	c.beqz	a0,000000002302840E

l230283F2:
	c.mv	a0,s0
	jal	ra,000000002307132C
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a2,a0
	lui	a0,00042020
	addi	a0,a0,-00000445
	c.addi	sp,00000010
	jal	zero,0000000023070C7C

l2302840E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sta_connect: 23028416
;;   Called from:
;;     23000BD0 (in _connect_wifi)
;;     23027E52 (in wifi_connect_cmd)
wifi_mgmr_sta_connect proc
	c.addi	sp,FFFFFFE0
	c.mv	a0,a1
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a1
	c.mv	s1,a2
	c.swsp	a3,00000084
	c.swsp	a4,00000004
	c.swsp	a5,00000080
	c.swsp	a6,00000000
	jal	ra,00000000230283B2
	c.mv	a0,s1
	jal	ra,00000000230283E4
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	zero,000000E4
	c.lwsp	tp,000000C4
	c.lwsp	s0,000000A4
	c.lwsp	a2,00000084
	c.lwsp	t3,00000020
	c.mv	a1,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002302645C

;; wifi_mgmr_ap_enable: 2302844E
;;   Called from:
;;     23027A44 (in cmd_wifi_ap_start)
wifi_mgmr_ap_enable proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004201E
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	addi	a5,s1,+00000448
	c.li	a4,00000001
	c.sw	a5,124(a4)
	lui	a5,000010BB
	addi	a5,a5,-00000740
	c.swsp	a5,00000080
	lui	s0,0004201E
	lui	a5,00001000
	lui	s2,0004201E
	c.addi	a5,FFFFFFFF
	c.li	a2,00000006
	addi	a1,s2,+000004C9
	addi	a0,s0,+0000051E
	c.swsp	a5,00000004
	c.swsp	zero,00000084
	jal	ra,0000000023070C7C
	addi	a0,s0,+0000051E
	jal	ra,0000000023028136
	addi	s1,s1,+00000448
	c.beqz	a0,00000000230284D2

l2302849C:
	addi	a0,s0,+0000051E
	jal	ra,00000000230357C2
	addi	a0,s0,+0000051E
	jal	ra,0000000023028136
	c.beqz	a0,00000000230284C4

l230284AE:
	c.lui	a5,00005000
	addi	a5,a5,+000000C0
	sh	a5,s1,+000000D6
	lui	a5,0000100D
	addi	a5,a5,-000006BD
	sw	a5,s1,+000000D8

l230284C4:
	c.li	a2,00000006
	addi	a1,s0,+0000051E
	addi	a0,s2,+000004C9
	jal	ra,0000000023070C7C

l230284D2:
	lui	s0,0004201E
	lui	a6,0002303C
	lui	a5,00023029
	c.addi4spn	a3,0000000C
	c.addi4spn	a2,00000008
	c.addi4spn	a1,00000004
	addi	a6,a6,-000002BE
	c.li	a4,00000000
	addi	a5,a5,+00000266
	addi	a0,s0,+000004E4
	jal	ra,000000002303A606
	c.lui	a5,00007000
	addi	a5,a5,+00000061
	addi	a0,s0,+000004E4
	sh	a5,s1,+000000DE
	jal	ra,000000002304051C
	addi	a0,s0,+000004E4
	jal	ra,0000000023040526
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	lui	a0,0004201E
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	addi	a0,a0,+000004C4
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_ap_start: 23028524
;;   Called from:
;;     23027A56 (in cmd_wifi_ap_start)
wifi_mgmr_ap_start proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a1
	c.mv	a1,a3
	andi	a3,a2,+000000FF
	c.mv	a2,a4
	c.swsp	ra,00000084
	jal	ra,0000000023026EAE
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_ap_stop: 2302853E
;;   Called from:
;;     230279E4 (in cmd_wifi_ap_stop)
wifi_mgmr_ap_stop proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023026FCA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_ap_sta_cnt_get: 2302854E
;;   Called from:
;;     2302756A (in wifi_ap_sta_list_get_cmd)
;;     230276EC (in wifi_ap_sta_delete_cmd)
wifi_mgmr_ap_sta_cnt_get proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230263D8
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_ap_sta_info_get: 2302855E
;;   Called from:
;;     230275D8 (in wifi_ap_sta_list_get_cmd)
;;     2302775C (in wifi_ap_sta_delete_cmd)
wifi_mgmr_ap_sta_info_get proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a0
	c.mv	s1,a1
	c.li	a2,00000018
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	c.swsp	ra,00000094
	jal	ra,0000000023070EB8
	c.mv	a1,s1
	c.addi4spn	a0,00000008
	jal	ra,00000000230263E8
	lhu	a5,sp,+00000008
	addi	a1,sp,+0000000A
	addi	a0,s0,+00000002
	sh	a5,s0,+00000000
	c.lwsp	s8,000000E4
	c.li	a2,00000006
	c.sw	s0,16(a5)
	c.lwsp	s4,000000E4
	c.sw	s0,12(a5)
	c.lwsp	a6,000000E4
	c.sw	s0,8(a5)
	lbu	a5,sp,+0000001C
	sb	a5,s0,+00000014
	jal	ra,0000000023070C7C
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; wifi_mgmr_ap_sta_delete: 230285B2
;;   Called from:
;;     230277AE (in wifi_ap_sta_delete_cmd)
wifi_mgmr_ap_sta_delete proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002302643C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sniffer_register: 230285C2
;;   Called from:
;;     23027ABA (in wifi_sniffer_on_cmd)
;;     23027D54 (in wifi_mon_cmd)
wifi_mgmr_sniffer_register proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002302426C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sniffer_unregister: 230285D2
;;   Called from:
;;     23027AA0 (in wifi_sniffer_off_cmd)
wifi_mgmr_sniffer_unregister proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023024280
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sniffer_enable: 230285E2
;;   Called from:
;;     23027AA8 (in wifi_sniffer_on_cmd)
;;     23027D46 (in wifi_mon_cmd)
wifi_mgmr_sniffer_enable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023026B84
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sniffer_disable: 230285F2
;;   Called from:
;;     23027A96 (in wifi_sniffer_off_cmd)
wifi_mgmr_sniffer_disable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002302703C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_rate_config: 23028602
;;   Called from:
;;     23027AD6 (in wifi_rc_fixed_disable)
;;     23027E08 (in wifi_rc_fixed_enable)
wifi_mgmr_rate_config proc
	jal	zero,0000000023026A3C

;; wifi_mgmr_conf_max_sta: 23028606
;;   Called from:
;;     23027D3C (in cmd_wifi_ap_conf_max_sta)
wifi_mgmr_conf_max_sta proc
	jal	zero,0000000023026AA8

;; wifi_mgmr_state_get: 2302860A
;;   Called from:
;;     23027232 (in cmd_wifi_state_get)
;;     230272F4 (in wifi_sta_get_state_cmd)
;;     23027538 (in wifi_ap_sta_list_get_cmd)
;;     2302767A (in wifi_ap_sta_delete_cmd)
wifi_mgmr_state_get proc
	jal	zero,0000000023026286

;; wifi_mgmr_rssi_get: 2302860E
;;   Called from:
;;     23027B1A (in wifi_sta_ip_info)
wifi_mgmr_rssi_get proc
	lui	a5,0004201E
	lb	a5,a5,+000004C0
	c.sw	a0,0(a5)
	c.li	a0,00000000
	c.jr	ra

;; wifi_mgmr_raw_80211_send: 2302861C
;;   Called from:
;;     23027C64 (in cmd_wifi_raw_send)
wifi_mgmr_raw_80211_send proc
	addi	a5,zero,+000001E0
	blt	a5,a1,0000000023028634

l23028624:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023027176
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23028634:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; wifi_mgmr_scan: 23028638
;;   Called from:
;;     23027C88 (in wifi_scan_cmd)
wifi_mgmr_scan proc
	lui	a5,0004200E
	c.addi	sp,FFFFFFF0
	sw	a1,a5,+00000DDC
	lui	a5,0004200E
	c.swsp	ra,00000084
	sw	a0,a5,+00000DE0
	jal	ra,0000000023026DC8
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_cfg_req: 23028658
;;   Called from:
;;     230278A4 (in cmd_wifi_cfg)
wifi_mgmr_cfg_req proc
	jal	zero,00000000230265A6

;; wifi_mgmr_scan_filter_hidden_ssid: 2302865C
;;   Called from:
;;     23027F96 (in wifi_scan_filter_cmd)
wifi_mgmr_scan_filter_hidden_ssid proc
	c.addi	sp,FFFFFFE0
	c.swsp	a0,00000084
	c.swsp	ra,0000008C
	jal	ra,000000002303100A
	c.lwsp	a2,00000044
	lui	a4,0004201F
	addi	a4,a4,+00000448
	lw	a5,a4,+000007CC
	c.beqz	a0,0000000023028688

l23028676:
	c.andi	a5,FFFFFFFE

l23028678:
	sw	a5,a4,+000007CC
	jal	ra,000000002303101E
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23028688:
	ori	a5,a5,+00000001
	c.j	0000000023028678

;; wifi_mgmr_scan_complete_callback: 2302868E
;;   Called from:
;;     23026450 (in wifi_mgmr_scan_complete_notify)
wifi_mgmr_scan_complete_callback proc
	lui	a1,0002307F
	lui	a0,0002307F
	c.addi	sp,FFFFFFE0
	addi	a1,a1,-000002A8
	addi	a0,a0,-00000268
	c.swsp	ra,0000008C
	c.swsp	zero,00000084
	jal	ra,0000000023052118
	lui	a5,0004200E
	lw	a5,a5,-00000224
	c.beqz	a5,00000000230286C2

l230286B2:
	c.li	a4,00000001
	c.swsp	a4,00000084
	lui	a4,0004200E
	lw	a0,a4,-00000220
	c.addi4spn	a1,0000000C
	c.jalr	a5

l230286C2:
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_status_code_str: 230286CA
wifi_mgmr_status_code_str proc
	c.li	a5,00000010
	bltu	a5,a0,00000000230286E2

l230286D0:
	slli	a5,a0,00000002
	lui	a0,0002307F
	addi	a0,a0,-000002EC
	c.add	a0,a5
	c.lw	a0,0(a0)
	c.jr	ra

l230286E2:
	lui	a0,0002307F
	addi	a0,a0,-00000210
	c.jr	ra

;; wifi_mgmr_profile_add: 230286EC
;;   Called from:
;;     23025332 (in stateIdleAction_connect)
wifi_mgmr_profile_add proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.li	a4,FFFFFFFF
	c.mv	s1,a1
	beq	a2,a4,000000002302870E

l230286FC:
	lbu	a4,a0,+000001B1
	c.beqz	a4,0000000023028720

l23028702:
	lbu	a4,a0,+00000275
	c.li	a2,FFFFFFFF
	c.bnez	a4,0000000023028714

l2302870A:
	c.li	a1,00000001
	c.j	0000000023028722

l2302870E:
	addi	s0,a0,+000000F0
	c.bnez	s0,0000000023028740

l23028714:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.mv	a0,a2
	c.addi	sp,00000010
	c.jr	ra

l23028720:
	c.li	a1,00000000

l23028722:
	addi	s0,zero,+000000C4
	add	s0,a1,s0
	sw	a1,a0,+00000278
	addi	s0,s0,+000000F0
	c.add	s0,a0
	lui	a0,0002307F
	addi	a0,a0,-000001FC
	jal	ra,0000000023052118

l23028740:
	addi	a2,zero,+000000C4
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070EB8
	addi	a5,zero,+00000100
	sh	a5,s0,+000000C0
	lbu	a4,s1,+00000022
	lbu	a5,s1,+00000021
	addi	a2,zero,+00000021
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,s1,+00000023
	c.mv	a1,s1
	c.mv	a0,s0
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,s1,+00000024
	c.slli	a5,18
	c.or	a5,a4
	c.sw	s0,36(a5)
	lbu	a4,s1,+000000A8
	lbu	a5,s1,+000000A7
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,s1,+000000A9
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,s1,+000000AA
	c.slli	a5,18
	c.or	a5,a4
	c.sw	s0,108(a5)
	lbu	a4,s1,+000000AC
	lbu	a5,s1,+000000AB
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,s1,+000000AD
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,s1,+000000AE
	c.slli	a5,18
	c.or	a5,a4
	sw	a5,s0,+000000B4
	c.li	a5,FFFFFFFF
	sb	a5,s0,+000000BF
	jal	ra,0000000023070C7C
	addi	a2,zero,+00000041
	addi	a1,s1,+00000025
	addi	a0,s0,+00000028
	jal	ra,0000000023070C7C
	addi	a2,zero,+00000041
	addi	a1,s1,+00000066
	addi	a0,s0,+00000070
	jal	ra,0000000023070C7C
	c.li	a2,00000006
	addi	a1,s1,+000000AF
	addi	a0,s0,+000000B8
	jal	ra,0000000023070C7C
	lbu	a5,s1,+000000B8
	c.li	a2,00000000
	sb	a5,s0,+000000BE
	c.j	0000000023028714

;; wifi_mgmr_profile_get: 230287FC
;;   Called from:
;;     23025906 (in disconnect_retry)
wifi_mgmr_profile_get proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	lbu	a4,a0,+000001B1
	c.li	a5,00000001
	c.mv	s2,a0
	beq	a4,a5,000000002302882A

l23028812:
	lbu	a4,a0,+00000275
	c.li	s1,00000001
	c.li	a0,FFFFFFFF
	beq	a4,a5,000000002302882C

l2302881E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2302882A:
	c.li	s1,00000000

l2302882C:
	lui	a0,0002307F
	c.mv	s0,a1
	addi	a0,a0,-000001D0
	c.mv	a1,s1
	jal	ra,0000000023052118
	addi	a2,zero,+000000B9
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070EB8
	addi	a1,zero,+000000C4
	add	s1,s1,a1
	addi	a2,zero,+00000021
	c.mv	a0,s0
	add	a4,s2,s1
	lw	a5,a4,+00000114
	addi	a1,s1,+000000F0
	c.add	a1,s2
	srli	a3,a5,00000008
	sb	a5,s0,+00000021
	sb	a3,s0,+00000022
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,s0,+00000023
	sb	a5,s0,+00000024
	lw	a5,a4,+0000015C
	srli	a3,a5,00000008
	sb	a5,s0,+000000A7
	sb	a3,s0,+000000A8
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,s0,+000000A9
	sb	a5,s0,+000000AA
	lw	a5,a4,+000001A4
	srli	a3,a5,00000008
	sb	a5,s0,+000000AB
	sb	a3,s0,+000000AC
	srli	a3,a5,00000010
	c.srli	a5,00000018
	sb	a3,s0,+000000AD
	sb	a5,s0,+000000AE
	lbu	a5,a4,+000001AE
	sb	a5,s0,+000000B8
	jal	ra,0000000023070C7C
	addi	a1,s1,+00000118
	addi	a2,zero,+00000041
	c.add	a1,s2
	addi	a0,s0,+00000025
	jal	ra,0000000023070C7C
	addi	a1,s1,+00000160
	addi	a2,zero,+00000041
	c.add	a1,s2
	addi	a0,s0,+00000066
	jal	ra,0000000023070C7C
	addi	a1,s1,+000001A8
	c.li	a2,00000006
	c.add	a1,s2
	addi	a0,s0,+000000AF
	jal	ra,0000000023070C7C
	c.li	a0,00000000
	c.j	000000002302881E

;; wifi_mgmr_profile_autoreconnect_is_enabled: 230288FE
;;   Called from:
;;     23025CB0 (in stateDisconnect_enter)
wifi_mgmr_profile_autoreconnect_is_enabled proc
	c.lui	a5,00001000
	c.add	a0,a5
	lbu	a0,a0,+000007C1
	sltiu	a0,a0,+00000001
	c.jr	ra

;; wifi_mgmr_profile_autoreconnect_disable: 2302890C
;;   Called from:
;;     23025C7E (in stateGlobalGuard_disable_autoreconnect)
wifi_mgmr_profile_autoreconnect_disable proc
	c.lui	a5,00001000
	c.add	a0,a5
	c.li	a5,00000001
	sb	a5,a0,+000007C1
	c.li	a0,00000000
	c.jr	ra

;; wifi_mgmr_profile_autoreconnect_enable: 2302891A
;;   Called from:
;;     23025C02 (in stateGlobalGuard_enable_autoreconnect)
wifi_mgmr_profile_autoreconnect_enable proc
	c.lui	a5,00001000
	c.add	a0,a5
	sb	zero,a0,+000007C1
	c.li	a0,00000000
	c.jr	ra

;; wifi_netif_dhcp_start: 23028926
;;   Called from:
;;     2302516C (in stateConnectedIPNoEnter)
wifi_netif_dhcp_start proc
	lui	a2,0002303E
	c.addi	sp,FFFFFFF0
	addi	a2,a2,+00000222
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,000000002303A688
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; cb_rssi_ind: 23028940
cb_rssi_ind proc
	lui	a5,0004201E
	sb	a1,a5,+000004C0
	c.jr	ra

;; cb_probe_resp_ind: 2302894A
cb_probe_resp_ind proc
	lui	a0,0002307F
	c.mv	a3,a2
	addi	a0,a0,-00000118
	c.mv	a2,a1
	jal	zero,0000000023052118

;; cb_beacon_ind: 2302895A
cb_beacon_ind proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	lbu	a5,a1,+0000002C
	c.mv	a3,a1
	addi	a4,a1,+00000006
	c.swsp	a5,00000000
	lb	a7,a1,+00000029
	lb	a6,a1,+00000028
	c.lw	a1,52(a5)
	lbu	a2,a1,+0000002B
	lbu	a0,a3,+0000002A
	lb	a1,a1,+00000027
	jal	ra,0000000023026BF6
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; cb_disconnect_ind: 2302898A
cb_disconnect_ind proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a2,0000000D
	c.mv	s0,a1
	c.mv	a0,sp
	c.li	a1,00000000
	c.swsp	ra,0000008C
	jal	ra,0000000023070EB8
	lui	a0,0002307F
	addi	a0,a0,-000001A8
	jal	ra,0000000023052118
	c.li	a5,00000013
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	lui	a5,0004201F
	addi	a5,a5,+00000448
	c.li	a4,00000002
	sb	a4,a5,+00000752
	lhu	a4,s0,+00000000
	c.mv	a0,sp
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	sh	a4,a5,+00000750
	jal	ra,000000002302601C
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; cb_connect_ind: 23028A22
cb_connect_ind proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a2,0000000D
	c.mv	s0,a1
	c.mv	a0,sp
	c.li	a1,00000000
	c.swsp	ra,0000008C
	jal	ra,0000000023070EB8
	lhu	a5,s0,+00000000
	c.mv	a0,s0
	c.li	a1,00000001
	sltiu	a5,a5,+00000001
	c.addi	a5,00000013
	sb	a5,sp,+00000000
	addi	a5,zero,+00000044
	sb	a5,sp,+00000001
	addi	a5,zero,+00000033
	sb	a5,sp,+00000002
	addi	a5,zero,+00000022
	sb	a5,sp,+00000003
	c.li	a5,00000011
	sb	a5,sp,+00000004
	addi	a5,zero,-00000078
	sb	a5,sp,+00000005
	addi	a5,zero,+00000077
	sb	a5,sp,+00000006
	addi	a5,zero,+00000066
	sb	a5,sp,+00000007
	addi	a5,zero,+00000055
	sb	a5,sp,+00000008
	c.li	a5,0000000D
	sb	a5,sp,+00000009
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	jal	ra,0000000023026350
	c.mv	a0,sp
	jal	ra,000000002302601C
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; cb_event_ind: 23028AA8
cb_event_ind proc
	lbu	a4,a1,+00000001
	lbu	a5,a1,+00000000
	c.slli	a4,08
	c.or	a4,a5
	lbu	a5,a1,+00000002
	c.slli	a5,10
	c.or	a4,a5
	lbu	a5,a1,+00000003
	c.slli	a5,18
	c.or	a5,a4
	c.li	a4,00000001
	beq	a5,a4,0000000023028B0E

l23028ACA:
	c.beqz	a5,0000000023028ADE

l23028ACC:
	c.li	a4,00000002
	beq	a5,a4,0000000023028B30

l23028AD2:
	lui	a0,0002307F
	c.mv	a1,a5
	addi	a0,a0,-00000154
	c.j	0000000023028B0A

l23028ADE:
	lbu	a5,a1,+00000005
	lbu	a4,a1,+00000004
	lui	a0,0002307F
	c.slli	a5,08
	c.or	a4,a5
	lbu	a5,a1,+00000006
	lbu	a1,a1,+00000007
	addi	a0,a0,-00000190
	c.slli	a5,10
	c.or	a5,a4
	c.slli	a1,18
	c.or	a1,a5
	lui	a5,0004201E
	sw	a1,a5,+0000044C

l23028B0A:
	jal	zero,0000000023052118

l23028B0E:
	lui	a0,0002307F
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000170
	c.swsp	ra,00000084
	jal	ra,00000000230520DC
	jal	ra,000000002302644C
	c.lwsp	a2,00000020
	c.li	a2,00000000
	c.li	a1,00000009
	c.li	a0,00000002
	c.addi	sp,00000010

l23028B2C:
	jal	zero,000000002304D7AC

l23028B30:
	c.li	a2,00000000
	c.li	a1,0000000A
	c.li	a0,00000002
	c.j	0000000023028B2C

;; wifi_mgmr_event_init: 23028B38
;;   Called from:
;;     230260F4 (in wifi_mgmr_start)
wifi_mgmr_event_init proc
	lui	a1,00023029
	c.addi	sp,FFFFFFF0
	addi	a1,a1,-000005DE
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023024224
	lui	a1,00023029
	addi	a1,a1,-00000676
	c.li	a0,00000000
	jal	ra,0000000023024238
	lui	a1,00023029
	addi	a1,a1,-000006A6
	c.li	a0,00000000
	jal	ra,000000002302424C
	lui	a1,00023029
	addi	a1,a1,-000006B6
	c.li	a0,00000000
	jal	ra,0000000023024260
	lui	a1,00023029
	addi	a1,a1,-000006C0
	c.li	a0,00000000
	jal	ra,0000000023024294
	lui	a1,00023029
	addi	a1,a1,-00000558
	c.li	a0,00000000
	jal	ra,00000000230242A8
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; cmd_mgr_print: 23028B98
cmd_mgr_print proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,24(a0)
	c.li	a1,FFFFFFFF
	jal	ra,000000002302F114
	c.lw	s0,16(a5)
	addi	a4,s0,+00000010

l23028BAE:
	bne	a5,a4,0000000023028BC4

l23028BB2:
	c.lw	s0,24(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,000000002302EC88

l23028BC4:
	c.lw	a5,0(a5)
	c.j	0000000023028BAE

;; cmd_complete.isra.1: 23028BC8
;;   Called from:
;;     23028C7C (in cmd_mgr_msgind)
;;     23028D66 (in cmd_mgr_llind)
;;     23028EF6 (in cmd_mgr_queue)
cmd_complete.isra.1 proc
	c.mv	a4,a0
	c.lw	a4,0(a5)
	c.mv	a0,a1
	c.addi	a5,FFFFFFFF
	c.sw	a4,0(a5)
	c.lw	a1,4(a5)
	c.lw	a1,0(a4)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	lui	a5,00000100
	addi	a5,a5,+00000100
	c.sw	a1,0(a5)
	lui	a5,00000200
	addi	a5,a5,+00000200
	c.sw	a1,4(a5)
	lhu	a5,a1,+00000018
	ori	a4,a5,+00000020
	sh	a4,a1,+00000018
	andi	a4,a5,+00000001
	c.beqz	a4,0000000023028C04

l23028C00:
	jal	zero,0000000023032272

l23028C04:
	c.andi	a5,00000018
	c.bnez	a5,0000000023028C14

l23028C08:
	sw	zero,a1,+0000003C
	c.addi	a0,0000001C
	c.li	a1,00000001
	jal	zero,000000002302E7A6

l23028C14:
	c.jr	ra

;; cmd_mgr_msgind: 23028C16
cmd_mgr_msgind proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.mv	s1,a0
	addi	s4,a0,-00000004
	c.lw	a0,24(a0)
	c.mv	s2,a1
	c.li	a1,FFFFFFFF
	c.mv	s3,a2
	jal	ra,000000002302F114
	c.lw	s1,16(s0)
	addi	s5,s1,+00000010

l23028C3E:
	bne	s0,s5,0000000023028C46

l23028C42:
	c.li	s5,00000000
	c.j	0000000023028C80

l23028C46:
	lhu	a4,s0,+0000000A
	lhu	a5,s2,+00000000
	bne	a4,a5,0000000023028CBA

l23028C52:
	lhu	a5,s0,+00000018
	c.andi	a5,00000010
	c.beqz	a5,0000000023028CBA

l23028C5A:
	bne	s3,zero,0000000023028CB0

l23028C5E:
	lhu	a5,s0,+00000018
	c.lw	s0,16(a0)
	c.andi	a5,FFFFFFEF
	sh	a5,s0,+00000018
	c.bnez	a0,0000000023028CBE

l23028C6C:
	lhu	a5,s0,+00000018
	c.li	s5,00000001
	c.andi	a5,00000018
	c.bnez	a5,0000000023028C80

l23028C76:
	c.mv	a1,s0
	addi	a0,s1,+00000008
	jal	ra,0000000023028BC8

l23028C80:
	c.lw	s1,24(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302EC88
	bne	s5,zero,0000000023028C9C

l23028C90:
	beq	s3,zero,0000000023028C9C

l23028C94:
	c.mv	a2,s2
	c.li	a1,00000000
	c.mv	a0,s4
	c.jalr	s3

l23028C9C:
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

l23028CB0:
	c.mv	a2,s2
	c.mv	a1,s0
	c.mv	a0,s4
	c.jalr	s3
	c.beqz	a0,0000000023028C5E

l23028CBA:
	c.lw	s0,0(s0)
	c.j	0000000023028C3E

l23028CBE:
	lhu	a2,s2,+00000006
	c.beqz	a2,0000000023028C6C

l23028CC4:
	addi	a1,s2,+00000008
	jal	ra,0000000023070C7C
	c.j	0000000023028C6C

;; cmd_mgr_llind: 23028CCE
cmd_mgr_llind proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.mv	s1,a0
	c.lw	a0,24(a0)
	c.mv	s2,a1
	c.li	a1,FFFFFFFF
	jal	ra,000000002302F114
	c.lw	s1,16(s0)
	c.li	a5,00000000
	addi	s4,s1,+00000010
	lui	s5,0004200E
	lui	s6,0002307F
	lui	s7,00023079
	c.li	s8,00000001

l23028D06:
	bne	s0,s4,0000000023028D10

l23028D0A:
	c.li	s0,00000000
	c.bnez	a5,0000000023028D50

l23028D0E:
	c.j	0000000023028D90

l23028D10:
	c.bnez	a5,0000000023028D46

l23028D12:
	c.lw	s0,20(a3)
	lw	a4,s2,+00000014
	bne	a3,a4,0000000023028D46

l23028D1C:
	c.mv	a5,s0
	beq	s0,s2,0000000023028D42

l23028D22:
	addi	s3,s5,-0000021C
	lbu	a4,s3,+00000000
	c.bnez	a4,0000000023028D42

l23028D2C:
	addi	a2,zero,+000000CF
	addi	a1,s6,-00000100
	addi	a0,s7,-000005BC
	jal	ra,0000000023052118
	c.mv	a5,s0
	sb	s8,s3,+00000000

l23028D42:
	c.lw	s0,0(s0)
	c.j	0000000023028D06

l23028D46:
	lhu	a4,s0,+00000018
	c.andi	a4,00000004
	c.beqz	a4,0000000023028D42

l23028D4E:
	c.beqz	a5,0000000023028D6C

l23028D50:
	lhu	a5,s2,+00000018
	andi	a4,a5,-00000009
	sh	a4,s2,+00000018
	c.andi	a5,00000010
	c.bnez	a5,0000000023028D6A

l23028D60:
	c.mv	a1,s2
	addi	a0,s1,+00000008
	jal	ra,0000000023028BC8

l23028D6A:
	c.beqz	s0,0000000023028D90

l23028D6C:
	lhu	a5,s0,+00000018
	c.mv	a1,s0
	c.andi	a5,FFFFFFFB
	sh	a5,s0,+00000018
	c.lw	s0,12(a5)
	c.lw	s1,48(a0)
	lhu	a2,a5,+00000006
	c.addi	a2,00000008
	c.slli	a2,10
	c.srli	a2,00000010
	jal	ra,000000002302223A
	c.lw	s0,12(a0)
	jal	ra,0000000023032272

l23028D90:
	c.lw	s1,24(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302EC88
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

;; cmd_mgr_queue: 23028DB6
cmd_mgr_queue proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s1,a0
	c.lw	a0,24(a0)
	c.mv	s0,a1
	c.li	a1,FFFFFFFF
	jal	ra,000000002302F114
	lbu	a4,s1,+00000000
	c.li	a5,00000002
	bne	a4,a5,0000000023028DFA

l23028DD8:
	addi	a5,zero,+00000020
	c.sw	s0,60(a5)
	c.lw	s1,24(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302EC88
	c.li	a0,FFFFFFE0

l23028DEC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23028DFA:
	c.lw	s1,16(a5)
	addi	s2,s1,+00000010
	beq	s2,a5,0000000023028F10

l23028E04:
	c.lw	s1,8(a4)
	c.lw	s1,12(a5)
	bne	a4,a5,0000000023028E20

l23028E0C:
	c.li	a5,0000000C
	c.sw	s0,60(a5)
	c.lw	s1,24(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302EC88
	c.li	a0,FFFFFFF4
	c.j	0000000023028DEC

l23028E20:
	c.lw	s1,20(a5)
	c.li	s3,00000000
	lhu	a5,a5,+00000018
	c.andi	a5,0000000C
	c.beqz	a5,0000000023028E3A

l23028E2C:
	lhu	a5,s0,+00000018
	c.li	s3,00000001
	ori	a5,a5,+00000004
	sh	a5,s0,+00000018

l23028E3A:
	lhu	a5,s0,+00000018
	andi	a4,a5,+00000002
	c.bnez	a4,0000000023028F14

l23028E44:
	ori	a5,a5,+00000008

l23028E48:
	sh	a5,s0,+00000018
	c.lw	s1,4(a5)
	addi	a4,a5,+00000001
	c.sw	s1,4(a4)
	c.sw	s0,20(a5)
	c.li	a5,00000004
	c.sw	s0,60(a5)
	lhu	a5,s0,+00000018
	c.andi	a5,00000001
	c.bnez	a5,0000000023028E6A

l23028E62:
	addi	a0,s0,+0000001C
	jal	ra,000000002302E650

l23028E6A:
	c.lw	s1,20(a5)
	c.sw	s1,20(s0)
	sw	s2,s0,+00000000
	c.sw	s0,4(a5)
	c.sw	a5,0(s0)
	lw	s2,s1,+00000008
	c.lw	s1,24(a0)
	c.li	a3,00000000
	c.addi	s2,00000001
	sw	s2,s1,+00000008
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302EC88
	bne	s3,zero,0000000023028EAA

l23028E90:
	c.lw	s0,12(a5)
	c.lw	s1,48(a0)
	c.mv	a1,s0
	lhu	a2,a5,+00000006
	c.addi	a2,00000008
	c.slli	a2,10
	c.srli	a2,00000010
	jal	ra,000000002302223A
	c.lw	s0,12(a0)
	jal	ra,0000000023032272

l23028EAA:
	lhu	a5,s0,+00000018
	c.andi	a5,00000001
	c.bnez	a5,0000000023028F1A

l23028EB2:
	lui	a4,000000F4
	addi	a4,a4,+00000240
	add	a4,s2,a4
	addi	s3,s0,+0000001C
	c.li	a3,00000000
	c.li	a2,00000001
	c.li	a1,00000001
	c.mv	a0,s3
	jal	ra,000000002302E69C
	c.andi	a0,00000001
	c.bnez	a0,0000000023028F06

l23028ED2:
	c.lw	s1,24(a0)
	c.li	a1,FFFFFFFF
	jal	ra,000000002302F114
	c.li	a5,00000002
	sb	a5,s1,+00000000
	lhu	a5,s0,+00000018
	andi	a5,a5,+00000020
	c.bnez	a5,0000000023028EFA

l23028EEA:
	addi	a5,zero,+0000006E
	c.sw	s0,60(a5)
	c.mv	a1,s0
	addi	a0,s1,+00000008
	jal	ra,0000000023028BC8

l23028EFA:
	c.lw	s1,24(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302EC88

l23028F06:
	c.mv	a0,s3
	jal	ra,000000002302E854

l23028F0C:
	c.li	a0,00000000
	c.j	0000000023028DEC

l23028F10:
	c.li	s3,00000000
	c.j	0000000023028E3A

l23028F14:
	ori	a5,a5,+00000018
	c.j	0000000023028E48

l23028F1A:
	sw	zero,s0,+0000003C
	c.j	0000000023028F0C

;; cmd_mgr_drain: 23028F20
cmd_mgr_drain proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.lw	a0,24(a0)
	c.li	a1,FFFFFFFF
	lui	s2,00000100
	jal	ra,000000002302F114
	c.lw	s0,16(a0)
	lui	s3,00000200
	addi	s4,s0,+00000010
	c.lw	a0,0(s1)
	addi	s2,s2,+00000100
	addi	s3,s3,+00000200

l23028F50:
	bne	a0,s4,0000000023028F6E

l23028F54:
	c.lw	s0,24(a0)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi16sp	00000020
	jal	zero,000000002302EC88

l23028F6E:
	c.lw	a0,4(a5)
	c.lw	a0,0(a4)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	sw	s2,a0,+00000000
	sw	s3,a0,+00000004
	c.lw	s0,8(a5)
	c.addi	a5,FFFFFFFF
	c.sw	s0,8(a5)
	lhu	a5,a0,+00000018
	c.andi	a5,00000001
	c.bnez	a5,0000000023028F94

l23028F8C:
	c.li	a1,00000001
	c.addi	a0,0000001C
	jal	ra,000000002302E7A6

l23028F94:
	c.mv	a0,s1
	c.lw	s1,0(s1)
	c.j	0000000023028F50

;; bl_cmd_mgr_init: 23028F9A
;;   Called from:
;;     23024B62 (in bl_ipc_init)
bl_cmd_mgr_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	a5,a0,+00000010
	c.mv	s0,a0
	c.sw	a0,16(a5)
	c.sw	a0,20(a5)
	c.li	a0,00000001
	jal	ra,000000002302EE60
	c.li	a5,00000008
	c.sw	s0,12(a5)
	lui	a5,00023029
	addi	a5,a5,-0000024A
	c.sw	s0,28(a5)
	lui	a5,00023029
	addi	a5,a5,-00000468
	c.sw	s0,40(a5)
	lui	a5,00023029
	addi	a5,a5,-000000E0
	c.sw	s0,44(a5)
	lui	a5,00023029
	addi	a5,a5,-00000332
	c.sw	s0,32(a5)
	lui	a5,00023029
	addi	a5,a5,-000003EA
	c.sw	s0,24(a0)
	c.sw	s0,36(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bl_irqs_init: 23028FF0
;;   Called from:
;;     23022930 (in bl_main_lowlevel_init)
bl_irqs_init proc
	c.li	a0,00000000
	c.jr	ra

;; bl_irq_bottomhalf: 23028FF4
;;   Called from:
;;     2302291C (in bl_main_event_handle)
bl_irq_bottomhalf proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	jal	ra,00000000230302E8
	c.lw	s0,52(a0)
	c.li	s1,00000000
	jal	ra,0000000023022268

l2302900A:
	c.bnez	a0,000000002302903C

l2302900C:
	jal	ra,00000000230302E8
	andi	a5,s1,+00000008
	c.beqz	a5,0000000023029018

l23029016:
	c.sw	s0,60(a0)

l23029018:
	andi	a5,s1,+00000780
	c.beqz	a5,0000000023029020

l2302901E:
	c.sw	s0,64(a0)

l23029020:
	c.lw	s0,52(a0)
	addi	a1,zero,+000007FF
	jal	ra,00000000230223D4
	c.lw	s0,52(a0)
	jal	ra,0000000023022268
	c.bnez	a0,000000002302900A

l23029032:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2302903C:
	c.mv	a1,a0
	c.or	s1,a0
	c.lw	s0,52(a0)
	jal	ra,00000000230222DA
	c.lw	s0,52(a0)
	jal	ra,0000000023022268
	c.j	000000002302900A

;; goToErrorState: 2302904E
;;   Called from:
;;     23029094 (in stateM_handleEvent)
goToErrorState proc
	c.lw	a0,0(a5)
	c.sw	a0,4(a5)
	c.lw	a0,8(a5)
	c.sw	a0,0(a5)
	c.beqz	a5,0000000023029064

l23029058:
	lw	t1,a5,+00000014
	beq	t1,zero,0000000023029064

l23029060:
	c.lw	a5,16(a0)
	c.jr	t1

l23029064:
	c.jr	ra

;; stateM_init: 23029066
;;   Called from:
;;     230260F0 (in wifi_mgmr_start)
stateM_init proc
	c.beqz	a0,0000000023029070

l23029068:
	c.sw	a0,0(a1)
	sw	zero,a0,+00000004
	c.sw	a0,8(a2)

l23029070:
	c.jr	ra

;; stateM_handleEvent: 23029072
;;   Called from:
;;     23026200 (in wifi_mgmr_start)
stateM_handleEvent proc
	c.beqz	a0,0000000023029148

l23029074:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.mv	s0,a0
	c.li	a0,FFFFFFFE
	c.beqz	a1,000000002302909A

l2302908A:
	c.lw	s0,0(s1)
	c.mv	s2,a1
	c.bnez	s1,00000000230290AC

l23029090:
	c.mv	a0,s0
	c.mv	a1,s2
	jal	ra,000000002302904E
	c.li	a0,FFFFFFFF

l2302909A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l230290AC:
	c.lw	s1,12(a5)
	c.li	s5,00000014
	c.bnez	a5,00000000230290B6

l230290B2:
	c.li	a0,00000002
	c.j	000000002302909A

l230290B6:
	c.li	s4,00000000

l230290B8:
	c.lw	s1,12(a5)
	bltu	s4,a5,00000000230290C4

l230290BE:
	c.lw	s1,0(s1)
	c.bnez	s1,00000000230290B6

l230290C2:
	c.j	00000000230290B2

l230290C4:
	add	s3,s4,s5
	c.lw	s1,8(a5)
	c.add	s3,a5
	lw	a4,s3,+00000000
	lw	a5,s2,+00000000
	beq	a4,a5,00000000230290DC

l230290D8:
	c.addi	s4,00000001
	c.j	00000000230290B8

l230290DC:
	lw	a5,s3,+00000008
	c.beqz	a5,00000000230290EC

l230290E2:
	lw	a0,s3,+00000004
	c.mv	a1,s2
	c.jalr	a5
	c.beqz	a0,00000000230290D8

l230290EC:
	lw	s1,s3,+00000010
	c.bnez	s1,00000000230290F6

l230290F2:
	c.j	0000000023029090

l230290F4:
	c.mv	s1,a5

l230290F6:
	c.lw	s1,4(a5)
	c.bnez	a5,00000000230290F4

l230290FA:
	c.lw	s0,0(a5)
	beq	a5,s1,000000002302910A

l23029100:
	c.lw	a5,24(a4)
	c.beqz	a4,000000002302910A

l23029104:
	c.lw	a5,16(a0)
	c.mv	a1,s2
	c.jalr	a4

l2302910A:
	lw	a5,s3,+0000000C
	c.beqz	a5,000000002302911A

l23029110:
	c.lw	s0,0(a4)
	c.lw	s1,16(a2)
	c.mv	a1,s2
	c.lw	a4,16(a0)
	c.jalr	a5

l2302911A:
	c.lw	s0,0(a5)
	beq	a5,s1,000000002302912A

l23029120:
	c.lw	s1,20(a5)
	c.beqz	a5,000000002302912A

l23029124:
	c.lw	s1,16(a0)
	c.mv	a1,s2
	c.jalr	a5

l2302912A:
	c.lw	s0,0(a5)
	c.sw	s0,0(s1)
	c.li	a0,00000001
	c.sw	s0,4(a5)
	beq	a5,s1,000000002302909A

l23029136:
	c.lw	s0,8(a5)
	c.li	a0,FFFFFFFF
	beq	a5,s1,000000002302909A

l2302913E:
	c.lw	s1,12(a5)
	c.li	a0,00000000
	c.bnez	a5,000000002302909A

l23029144:
	c.li	a0,00000003
	c.j	000000002302909A

l23029148:
	c.li	a0,FFFFFFFE
	c.jr	ra

;; netif_status_callback: 2302914C
netif_status_callback proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	addi	s1,a0,+00000004
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.mv	a0,s1
	c.swsp	ra,0000008C
	jal	ra,000000002303FCA6
	c.mv	a1,a0
	lui	a0,0002307F
	addi	a0,a0,-00000064
	jal	ra,0000000023052118
	addi	a0,s0,+00000008
	jal	ra,000000002303FCA6
	c.mv	a1,a0
	lui	a0,0002307F
	addi	a0,a0,-00000038
	jal	ra,0000000023052118
	addi	a0,s0,+0000000C
	jal	ra,000000002303FCA6
	c.mv	a1,a0
	lui	a0,0002307F
	addi	a0,a0,-0000002C
	jal	ra,0000000023052118
	c.beqz	s1,00000000230291A0

l2302919C:
	c.lw	s0,4(a5)
	c.bnez	a5,00000000230291B4

l230291A0:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	lui	a0,0002307F
	addi	a0,a0,-00000020
	c.addi16sp	00000020
	jal	zero,0000000023052118

l230291B4:
	jal	ra,0000000023026802
	c.lw	s0,8(a1)
	c.lw	s0,12(a2)
	c.li	a0,00000000
	c.lw	s0,4(s1)
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	jal	ra,000000002303CA68
	c.lw	a0,0(a3)
	c.li	a0,00000001
	c.swsp	a3,00000080
	jal	ra,000000002303CA68
	c.lwsp	s8,00000004
	c.lw	a0,0(a4)
	c.lwsp	tp,000000A4
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,00000000230266EE

;; wifi_tx: 230291E8
wifi_tx proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lhu	a3,a1,+00000008
	addi	a4,zero,+000005EA
	c.mv	a2,a1
	c.mv	a5,a1
	bgeu	a4,a3,0000000023029248

l23029200:
	lui	s0,0004200E
	c.swsp	a1,00000084
	addi	s0,s0,-00000214
	jal	ra,00000000230302E8
	c.lw	s0,0(a5)
	c.li	s1,FFFFFFF4
	c.lwsp	a2,00000084
	c.sub	a0,a5
	addi	a5,zero,+000007D0
	bgeu	a5,a0,000000002302923C

l2302921E:
	lhu	a2,a2,+00000008
	lui	a1,0002308E
	lui	a0,0002307F
	addi	a1,a1,-000001A8
	addi	a0,a0,+00000008
	jal	ra,0000000023052118
	jal	ra,00000000230302E8
	c.sw	s0,0(a0)

l2302923C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23029248:
	c.lw	a5,0(a5)
	c.bnez	a5,0000000023029248

l2302924C:
	lw	a3,a0,-00000020
	lui	a5,0004200E
	c.mv	a1,a0
	lw	a0,a5,-00000218
	sltiu	a3,a3,+00000001
	c.li	s1,00000000
	jal	ra,00000000230244DE
	c.j	000000002302923C

;; bl606a0_wifi_netif_init: 23029266
bl606a0_wifi_netif_init proc
	c.addi	sp,FFFFFFF0
	lui	a4,0002307F
	c.swsp	ra,00000084
	addi	a4,a4,-0000006C
	c.sw	a0,52(a4)
	addi	a4,zero,+000005DC
	sh	a4,a0,+00000038
	c.lui	a4,00001000
	addi	a4,a4,-000005FA
	sh	a4,a0,+00000040
	lui	a4,0002303F
	addi	a4,a4,-000003D2
	c.sw	a0,20(a4)
	lui	a4,00023029
	addi	a4,a4,+000001E8
	lui	a1,00023029
	c.sw	a0,24(a4)
	addi	a1,a1,+0000014C
	jal	ra,0000000023040628
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl606a0_wifi_init: 230292AE
;;   Called from:
;;     2302819A (in wifi_mgmr_drv_init)
bl606a0_wifi_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	lui	a0,0002307F
	addi	a0,a0,-000000F0
	c.swsp	ra,0000008C
	jal	ra,0000000023052118
	c.li	a2,00000006
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	jal	ra,0000000023070EB8
	c.addi4spn	a0,00000008
	jal	ra,00000000230357C2
	lbu	a6,sp,+0000000D
	lbu	a5,sp,+0000000C
	lbu	a4,sp,+0000000B
	lbu	a3,sp,+0000000A
	lbu	a2,sp,+00000009
	lbu	a1,sp,+00000008
	lui	a0,0002307F
	addi	a0,a0,-000000D8
	jal	ra,0000000023052118
	c.mv	a0,s0
	jal	ra,0000000023022D90
	lui	a0,0002307F
	addi	a0,a0,-000000A4
	jal	ra,0000000023052118
	jal	ra,000000002303572E
	lui	s0,0004200E
	c.li	a2,00000004
	c.li	a1,00000000
	addi	a0,s0,-00000218
	jal	ra,0000000023070EB8
	addi	a0,s0,-00000218
	jal	ra,0000000023022934
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; fdt32_ld: 2302932C
;;   Called from:
;;     230293C2 (in fdt_get_property_by_offset_)
;;     230293D0 (in fdt_get_property_by_offset_)
;;     230293EC (in fdt_get_string)
;;     230293FE (in fdt_get_string)
;;     2302940C (in fdt_get_string)
;;     23029424 (in fdt_get_string)
;;     23029432 (in fdt_get_string)
;;     2302947C (in fdt_get_string)
;;     230294BE (in fdt_get_name)
;;     230294DA (in fdt_get_name)
;;     2302966A (in fdt_get_property_namelen_)
;;     230296CE (in fdt_getprop_namelen)
;;     230296E4 (in fdt_getprop_namelen)
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

;; nextprop_.part.0: 2302934A
;;   Called from:
;;     230295F8 (in fdt_first_property_offset)
;;     2302961C (in fdt_next_property_offset)
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

l23029362:
	c.addi4spn	a2,0000000C
	c.mv	a1,s0
	c.mv	a0,s2
	c.jal	00000000230298EA
	beq	a0,s3,0000000023029382

l2302936E:
	c.lwsp	a2,00000004
	bne	a0,s4,000000002302937C

l23029374:
	blt	s0,zero,0000000023029382

l23029378:
	c.li	s0,FFFFFFF5
	c.j	0000000023029382

l2302937C:
	beq	a0,s1,0000000023029362

l23029380:
	c.li	s0,FFFFFFFF

l23029382:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; fdt_get_property_by_offset_: 23029394
;;   Called from:
;;     23029660 (in fdt_get_property_namelen_)
fdt_get_property_by_offset_ proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s2,a1
	c.mv	s1,a2
	c.jal	0000000023029A20
	bge	a0,zero,00000000230293BE

l230293AA:
	c.li	s0,00000000
	c.beqz	s1,00000000230293B0

l230293AE:
	c.sw	s1,0(a0)

l230293B0:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230293BE:
	addi	a0,s0,+00000008
	jal	ra,000000002302932C
	c.add	a0,s2
	c.add	s0,a0
	c.beqz	s1,00000000230293B0

l230293CC:
	addi	a0,s0,+00000004
	jal	ra,000000002302932C
	c.j	00000000230293AE

;; fdt_get_string: 230293D6
;;   Called from:
;;     23029674 (in fdt_get_property_namelen_)
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
	jal	ra,000000002302932C
	c.mv	s3,a0
	c.mv	a0,s0
	c.jal	0000000023029812
	c.bnez	a0,0000000023029496

l230293F8:
	addi	a0,s0,+00000004
	c.add	s3,s1
	jal	ra,000000002302932C
	bgeu	s3,a0,00000000230294A2

l23029406:
	sub	s2,a0,s3
	c.mv	a0,s0
	jal	ra,000000002302932C
	lui	a5,000D00E0
	addi	a5,a5,-00000113
	bne	a0,a5,0000000023029468

l2302941C:
	blt	s1,zero,00000000230294A2

l23029420:
	addi	a0,s0,+00000014
	jal	ra,000000002302932C
	c.li	a5,00000010
	bgeu	a5,a0,0000000023029442

l2302942E:
	addi	a0,s0,+00000020
	jal	ra,000000002302932C
	bgeu	s1,a0,00000000230294A2

l2302943A:
	c.sub	a0,s1
	bgeu	a0,s2,0000000023029442

l23029440:
	c.mv	s2,a0

l23029442:
	c.add	s0,s3
	c.mv	a2,s2
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023070B18
	c.beqz	a0,00000000230294A6

l23029450:
	c.sub	a0,s0
	bne	s4,zero,000000002302949C

l23029456:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23029468:
	lui	a5,0002FF20
	addi	a5,a5,+00000112
	bne	a0,a5,0000000023029494

l23029474:
	bge	s1,zero,00000000230294A2

l23029478:
	addi	a0,s0,+00000020
	jal	ra,000000002302932C
	sub	a0,zero,a0
	bltu	s1,a0,00000000230294A2

l23029488:
	sub	s1,zero,s1
	bgeu	s1,s2,0000000023029442

l23029490:
	c.mv	s2,s1
	c.j	0000000023029442

l23029494:
	c.li	a0,FFFFFFF3

l23029496:
	c.li	s0,00000000
	beq	s4,zero,0000000023029456

l2302949C:
	sw	a0,s4,+00000000
	c.j	0000000023029456

l230294A2:
	c.li	a0,FFFFFFFC
	c.j	0000000023029496

l230294A6:
	c.li	a0,FFFFFFF8
	c.j	0000000023029496

;; fdt_get_name: 230294AA
;;   Called from:
;;     2302955E (in fdt_subnode_offset_namelen)
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
	jal	ra,000000002302932C
	c.mv	s3,a0
	c.mv	a0,s1
	c.jal	0000000023029812
	c.bnez	a0,000000002302950A

l230294CA:
	c.mv	a1,s0
	c.mv	a0,s1
	c.jal	00000000230299F8
	blt	a0,zero,000000002302950A

l230294D4:
	addi	a0,s1,+00000014
	c.add	s0,s3
	jal	ra,000000002302932C
	c.add	s0,s1
	c.li	a5,0000000F
	c.addi	s0,00000004
	bltu	a5,a0,00000000230294F8

l230294E8:
	addi	a1,zero,+0000002F
	c.mv	a0,s0
	jal	ra,00000000230715B8
	c.beqz	a0,0000000023029508

l230294F4:
	addi	s0,a0,+00000001

l230294F8:
	beq	s2,zero,0000000023029510

l230294FC:
	c.mv	a0,s0
	jal	ra,000000002307132C

l23029502:
	sw	a0,s2,+00000000
	c.j	0000000023029510

l23029508:
	c.li	a0,FFFFFFF5

l2302950A:
	c.li	s0,00000000
	bne	s2,zero,0000000023029502

l23029510:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; fdt_subnode_offset_namelen: 23029520
;;   Called from:
;;     230295DC (in fdt_subnode_offset)
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
	c.jal	0000000023029812
	c.mv	s0,a0
	c.bnez	a0,00000000230295A8

l2302953E:
	c.lwsp	a2,00000064
	c.swsp	zero,0000000C
	c.li	s5,00000001
	c.mv	s0,a1

l23029546:
	c.lwsp	s8,000000E4
	blt	s0,zero,00000000230295A4

l2302954C:
	bge	a5,zero,0000000023029554

l23029550:
	c.li	s0,FFFFFFFF
	c.j	00000000230295A8

l23029554:
	bne	a5,s5,0000000023029598

l23029558:
	c.addi4spn	a2,0000001C
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,00000000230294AA
	c.mv	s1,a0
	c.beqz	a0,0000000023029598

l23029566:
	c.lwsp	t3,000000E4
	blt	a5,s2,0000000023029598

l2302956C:
	c.mv	a2,s2
	c.mv	a1,s4
	jal	ra,0000000023070BF4
	c.bnez	a0,0000000023029598

l23029576:
	c.add	s1,s2
	lbu	a5,s1,+00000000
	c.beqz	a5,00000000230295A8

l2302957E:
	c.mv	a2,s2
	addi	a1,zero,+00000040
	c.mv	a0,s4
	jal	ra,0000000023070B18
	c.bnez	a0,0000000023029598

l2302958C:
	lbu	a4,s1,+00000000
	addi	a5,zero,+00000040
	beq	a4,a5,00000000230295A8

l23029598:
	c.mv	a1,s0
	c.addi4spn	a2,00000018
	c.mv	a0,s3
	c.jal	0000000023029A48
	c.mv	s0,a0
	c.j	0000000023029546

l230295A4:
	blt	a5,zero,0000000023029550

l230295A8:
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

;; fdt_subnode_offset: 230295BC
;;   Called from:
;;     230007A6 (in aos_loop_proc)
;;     230007D6 (in aos_loop_proc)
;;     2302A192 (in tc_fdt_wifi_module)
;;     2302A1E2 (in tc_fdt_wifi_module)
;;     2302A26A (in tc_fdt_wifi_module)
;;     2302A34A (in tc_fdt_wifi_module)
;;     2302A51C (in tc_fdt_wifi_module)
;;     23035E24 (in vfs_uart_init)
;;     23036104 (in vfs_uart_init)
;;     23036276 (in vfs_uart_init)
;;     230363A4 (in vfs_uart_init)
;;     230366D6 (in hal_gpio_init_from_dts)
;;     230372C6 (in hal_board_cfg)
;;     23037324 (in hal_board_cfg)
;;     2303774E (in hal_board_cfg)
;;     23037BDA (in hal_board_cfg)
;;     23037C6E (in hal_board_cfg)
;;     2303886E (in hal_board_cfg)
;;     2303893A (in hal_board_cfg)
;;     23038A02 (in hal_board_cfg)
;;     23038A5E (in hal_board_cfg)
fdt_subnode_offset proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.mv	a0,a2
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	jal	ra,000000002307132C
	c.mv	a3,a0
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,0000000023029520

;; fdt_first_property_offset: 230295E0
;;   Called from:
;;     23029644 (in fdt_get_property_namelen_)
fdt_first_property_offset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.jal	00000000230299F8
	blt	a0,zero,00000000230295FC

l230295EE:
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002302934A

l230295FC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; fdt_next_property_offset: 23029604
;;   Called from:
;;     2302967E (in fdt_get_property_namelen_)
fdt_next_property_offset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.jal	0000000023029A20
	blt	a0,zero,0000000023029620

l23029612:
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002302934A

l23029620:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; fdt_get_property_namelen_: 23029628
;;   Called from:
;;     230296C2 (in fdt_getprop_namelen)
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
	jal	ra,00000000230295E0

l23029648:
	c.mv	s0,a0
	bge	a0,zero,000000002302965A

l2302964E:
	c.li	s1,00000000
	beq	s2,zero,000000002302969C

l23029654:
	sw	s0,s2,+00000000
	c.j	000000002302969C

l2302965A:
	c.mv	a2,s2
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,0000000023029394
	c.mv	s1,a0
	c.beqz	a0,00000000230296B2

l23029668:
	c.addi	a0,00000008
	jal	ra,000000002302932C
	c.mv	a1,a0
	c.addi4spn	a2,0000000C
	c.mv	a0,s3
	jal	ra,00000000230293D6
	c.bnez	a0,0000000023029684

l2302967A:
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,0000000023029604
	c.j	0000000023029648

l23029684:
	c.lwsp	a2,000000E4
	bne	s4,a5,000000002302967A

l2302968A:
	c.mv	a2,s4
	c.mv	a1,s6
	jal	ra,0000000023070BF4
	c.bnez	a0,000000002302967A

l23029694:
	beq	s5,zero,000000002302969C

l23029698:
	sw	s0,s5,+00000000

l2302969C:
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

l230296B2:
	c.li	s0,FFFFFFF3
	c.j	000000002302964E

;; fdt_getprop_namelen: 230296B6
;;   Called from:
;;     23029724 (in fdt_getprop)
fdt_getprop_namelen proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a5,0000000C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a0
	jal	ra,0000000023029628
	c.mv	s0,a0
	c.beqz	a0,00000000230296F0

l230296CA:
	addi	a0,s1,+00000014
	jal	ra,000000002302932C
	c.li	a5,0000000F
	bltu	a5,a0,00000000230296FC

l230296D8:
	c.lwsp	a2,000000E4
	c.addi	a5,0000000C
	c.andi	a5,00000007
	c.beqz	a5,00000000230296FC

l230296E0:
	addi	a0,s0,+00000004
	jal	ra,000000002302932C
	c.li	a5,00000007
	bgeu	a5,a0,00000000230296FC

l230296EE:
	c.addi	s0,00000010

l230296F0:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l230296FC:
	c.addi	s0,0000000C
	c.j	00000000230296F0

;; fdt_getprop: 23029700
;;   Called from:
;;     23029734 (in fdt_stringlist_count)
;;     23029784 (in fdt_stringlist_get)
;;     2302A1FA (in tc_fdt_wifi_module)
;;     2302A284 (in tc_fdt_wifi_module)
;;     2302A2EE (in tc_fdt_wifi_module)
;;     2302A448 (in tc_fdt_wifi_module)
;;     2302A536 (in tc_fdt_wifi_module)
;;     2302A594 (in tc_fdt_wifi_module)
;;     2302A7AC (in tc_fdt_wifi_module)
;;     2302A840 (in tc_fdt_wifi_module)
;;     2302A8D4 (in tc_fdt_wifi_module)
;;     23036044 (in vfs_uart_init)
;;     230360AA (in vfs_uart_init)
;;     2303616C (in vfs_uart_init)
;;     230361BA (in vfs_uart_init)
;;     23036500 (in vfs_uart_init)
;;     23036628 (in hal_gpio_init_from_dts)
;;     2303680C (in hal_gpio_init_from_dts)
;;     23036962 (in hal_gpio_init_from_dts)
;;     23037496 (in hal_board_cfg)
;;     230375AE (in hal_board_cfg)
;;     23037644 (in hal_board_cfg)
;;     230376DC (in hal_board_cfg)
;;     23037BF0 (in hal_board_cfg)
;;     23037C86 (in hal_board_cfg)
;;     23037D20 (in hal_board_cfg)
;;     23037DD4 (in hal_board_cfg)
;;     23037FF6 (in hal_board_cfg)
;;     23038022 (in hal_board_cfg)
;;     2303840A (in hal_board_cfg)
;;     230388B6 (in hal_board_cfg)
;;     23038982 (in hal_board_cfg)
;;     23038A74 (in hal_board_cfg)
fdt_getprop proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.mv	a0,a2
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.swsp	a3,00000004
	c.swsp	a2,00000080
	jal	ra,000000002307132C
	c.mv	a3,a0
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	s0,000000C4
	c.lwsp	tp,00000084
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,00000000230296B6

;; fdt_stringlist_count: 23029728
;;   Called from:
;;     2302A362 (in tc_fdt_wifi_module)
;;     2302A3D4 (in tc_fdt_wifi_module)
;;     2302A4B6 (in tc_fdt_wifi_module)
;;     23035E84 (in vfs_uart_init)
;;     23035F4C (in vfs_uart_init)
;;     230362D8 (in vfs_uart_init)
;;     2303733E (in hal_board_cfg)
;;     23037766 (in hal_board_cfg)
;;     23037E88 (in hal_board_cfg)
;;     23038884 (in hal_board_cfg)
;;     2303889C (in hal_board_cfg)
;;     23038950 (in hal_board_cfg)
;;     23038968 (in hal_board_cfg)
fdt_stringlist_count proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a3,0000000C
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	jal	ra,0000000023029700
	c.lwsp	a2,00000004
	c.beqz	a0,0000000023029748

l2302973C:
	add	s2,a0,s0
	c.mv	s1,a0
	c.li	s0,00000000

l23029744:
	bltu	s1,s2,0000000023029756

l23029748:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23029756:
	sub	a1,s2,s1
	c.mv	a0,s1
	jal	ra,0000000023071574
	c.addi	a0,00000001
	c.swsp	a0,00000084
	c.add	s1,a0
	bltu	s2,s1,000000002302976E

l2302976A:
	c.addi	s0,00000001
	c.j	0000000023029744

l2302976E:
	c.li	s0,FFFFFFF1
	c.j	0000000023029748

;; fdt_stringlist_get: 23029772
;;   Called from:
;;     2302A38C (in tc_fdt_wifi_module)
;;     2302A3FE (in tc_fdt_wifi_module)
;;     2302A4D4 (in tc_fdt_wifi_module)
;;     23035EE6 (in vfs_uart_init)
;;     23035FE4 (in vfs_uart_init)
;;     23036334 (in vfs_uart_init)
;;     23036772 (in hal_gpio_init_from_dts)
;;     230368C0 (in hal_gpio_init_from_dts)
;;     230368F4 (in hal_gpio_init_from_dts)
;;     2303692E (in hal_gpio_init_from_dts)
;;     23037354 (in hal_board_cfg)
;;     2303777C (in hal_board_cfg)
;;     23037EA0 (in hal_board_cfg)
;;     23038B14 (in hal_board_cfg)
;;     23038B9C (in hal_board_cfg)
;;     23038C7E (in hal_board_cfg)
;;     23038D06 (in hal_board_cfg)
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
	jal	ra,0000000023029700
	c.mv	s0,a0
	c.bnez	a0,00000000230297A6

l2302978C:
	c.bnez	s1,0000000023029792

l2302978E:
	c.li	s0,00000000
	c.j	0000000023029796

l23029792:
	c.lwsp	a2,000000E4
	c.sw	s1,0(a5)

l23029796:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l230297A6:
	c.lwsp	a2,00000048
	c.add	s2,a0

l230297AA:
	bltu	s0,s2,00000000230297B4

l230297AE:
	c.beqz	s1,000000002302978E

l230297B0:
	c.li	a5,FFFFFFFF
	c.j	00000000230297CE

l230297B4:
	sub	a1,s2,s0
	c.mv	a0,s0
	jal	ra,0000000023071574
	addi	a5,a0,+00000001
	c.swsp	a5,00000084
	c.add	a5,s0
	bgeu	s2,a5,00000000230297D2

l230297CA:
	c.li	a5,FFFFFFF1
	c.beqz	s1,000000002302978E

l230297CE:
	c.sw	s1,0(a5)
	c.j	000000002302978E

l230297D2:
	bne	s3,zero,00000000230297DC

l230297D6:
	c.beqz	s1,0000000023029796

l230297D8:
	c.sw	s1,0(a0)
	c.j	0000000023029796

l230297DC:
	c.addi	s3,FFFFFFFF
	c.mv	s0,a5
	c.j	00000000230297AA

;; blfdt: 230297E2
blfdt proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002302A9C4
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.j	0000000023029CD8

;; blfdt_cli_init: 230297F0
;;   Called from:
;;     2300085A (in aos_loop_proc)
blfdt_cli_init proc
	c.li	a0,00000000
	c.jr	ra

;; fdt32_ld: 230297F4
;;   Called from:
;;     2302981A (in fdt_ro_probe_)
;;     2302982E (in fdt_ro_probe_)
;;     2302983E (in fdt_ro_probe_)
;;     23029868 (in fdt_ro_probe_)
;;     2302988A (in fdt_offset_ptr)
;;     230298A6 (in fdt_offset_ptr)
;;     230298B4 (in fdt_offset_ptr)
;;     230298CA (in fdt_offset_ptr)
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

;; fdt_ro_probe_: 23029812
;;   Called from:
;;     230293F4 (in fdt_get_string)
;;     230294C6 (in fdt_get_name)
;;     23029538 (in fdt_subnode_offset_namelen)
fdt_ro_probe_ proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,00000000230297F4
	lui	a5,000D00E0
	addi	a5,a5,-00000113
	bne	a0,a5,0000000023029856

l2302982A:
	addi	a0,s0,+00000014
	jal	ra,00000000230297F4
	c.li	a4,00000001
	c.li	a5,FFFFFFF6
	bgeu	a4,a0,000000002302984C

l2302983A:
	addi	a0,s0,+00000018
	jal	ra,00000000230297F4
	c.li	a4,00000011
	c.li	a5,00000000
	bgeu	a4,a0,000000002302984C

l2302984A:
	c.li	a5,FFFFFFF6

l2302984C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23029856:
	lui	a4,0002FF20
	addi	a4,a4,+00000112
	c.li	a5,FFFFFFF7
	bne	a0,a4,000000002302984C

l23029864:
	addi	a0,s0,+00000024
	jal	ra,00000000230297F4
	c.li	a5,00000000
	c.bnez	a0,000000002302984C

l23029870:
	c.li	a5,FFFFFFF9
	c.j	000000002302984C

;; fdt_offset_ptr: 23029874
;;   Called from:
;;     23029908 (in fdt_next_tag)
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
	jal	ra,00000000230297F4
	add	s2,a0,s3
	c.li	a5,00000000
	bltu	s2,s3,00000000230298D8

l23029898:
	add	s4,s2,s1
	c.li	a5,00000000
	bltu	s4,s2,00000000230298D8

l230298A2:
	addi	a0,s0,+00000004
	jal	ra,00000000230297F4
	c.li	a5,00000000
	bltu	a0,s4,00000000230298D8

l230298B0:
	addi	a0,s0,+00000014
	jal	ra,00000000230297F4
	c.li	a5,00000010
	bgeu	a5,a0,00000000230298D4

l230298BE:
	c.add	s1,s3
	c.li	a5,00000000
	bltu	s1,s3,00000000230298D8

l230298C6:
	addi	a0,s0,+00000024
	jal	ra,00000000230297F4
	c.li	a5,00000000
	bltu	a0,s1,00000000230298D8

l230298D4:
	add	a5,s0,s2

l230298D8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

;; fdt_next_tag: 230298EA
;;   Called from:
;;     23029368 (in nextprop_.part.0)
;;     23029A12 (in fdt_check_node_offset_)
;;     23029A3A (in fdt_check_prop_offset_)
;;     23029A70 (in fdt_next_node)
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
	jal	ra,0000000023029874
	c.bnez	a0,0000000023029912

l2302990E:
	c.li	s1,00000009
	c.j	0000000023029986

l23029912:
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
	bltu	a4,a5,000000002302990E

l23029948:
	lui	a4,0002307F
	c.slli	a5,02
	addi	a4,a4,+00000038
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
23029958                         05 46 A2 85 4E 85 93 0A         .F..N...
23029960 14 00 EF F0 3F F1 45 D5 83 47 05 00 56 84 ED F7 ....?.E..G..V...
23029970 33 06 44 41 D2 85 4E 85 EF F0 DF EF 49 D9 0D 04 3.DA..N.....I...
23029980 71 98 23 20 89 00                               q.# ..         

l23029986:
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
2302999C                                     11 46 A2 85             .F..
230299A0 4E 85 EF F0 3F ED 25 D5 1C 41 13 85 49 01 13 0B N...?.%..A..I...
230299B0 CA 00 13 D7 87 01 93 9A 87 01 B3 EA EA 00 13 D7 ................
230299C0 87 00 13 77 F7 0F C1 83 42 07 93 F7 F7 0F A2 07 ...w....B.......
230299D0 B3 EA EA 00 B3 EA FA 00 EF F0 DF E1 BD 47 33 04 .............G3.
230299E0 5B 01 E3 E7 A7 F8 9D 47 E3 F4 57 F9 13 7B 7B 00 [......G..W..{{.
230299F0 E3 00 0B F8 11 04 AD BF                         ........       

;; fdt_check_node_offset_: 230299F8
;;   Called from:
;;     230294CE (in fdt_get_name)
;;     230295E8 (in fdt_first_property_offset)
;;     23029A8A (in fdt_next_node)
fdt_check_node_offset_ proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	bge	a1,zero,0000000023029A0A

l23029A02:
	c.li	a0,FFFFFFFC

l23029A04:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23029A0A:
	andi	a5,a1,+00000003
	c.bnez	a5,0000000023029A02

l23029A10:
	c.addi4spn	a2,0000000C
	jal	ra,00000000230298EA
	c.li	a5,00000001
	bne	a0,a5,0000000023029A02

l23029A1C:
	c.lwsp	a2,00000044
	c.j	0000000023029A04

;; fdt_check_prop_offset_: 23029A20
;;   Called from:
;;     230293A4 (in fdt_get_property_by_offset_)
;;     2302960C (in fdt_next_property_offset)
fdt_check_prop_offset_ proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	bge	a1,zero,0000000023029A32

l23029A2A:
	c.li	a0,FFFFFFFC

l23029A2C:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23029A32:
	andi	a5,a1,+00000003
	c.bnez	a5,0000000023029A2A

l23029A38:
	c.addi4spn	a2,0000000C
	jal	ra,00000000230298EA
	c.li	a5,00000003
	bne	a0,a5,0000000023029A2A

l23029A44:
	c.lwsp	a2,00000044
	c.j	0000000023029A2C

;; fdt_next_node: 23029A48
;;   Called from:
;;     2302959E (in fdt_subnode_offset_namelen)
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
	bge	a1,zero,0000000023029A8A

l23029A62:
	c.li	s3,00000002
	c.li	s4,00000009
	c.li	s5,00000001

l23029A68:
	c.lwsp	a2,00000004
	c.addi4spn	a2,0000000C
	c.mv	a0,s2
	c.mv	a1,s0
	jal	ra,00000000230298EA
	beq	a0,s3,0000000023029AAA

l23029A78:
	beq	a0,s4,0000000023029ABA

l23029A7C:
	bne	a0,s5,0000000023029A68

l23029A80:
	c.beqz	s1,0000000023029A96

l23029A82:
	c.lw	s1,0(a5)
	c.addi	a5,00000001
	c.sw	s1,0(a5)
	c.j	0000000023029A96

l23029A8A:
	jal	ra,00000000230299F8
	c.swsp	a0,00000084
	c.mv	s0,a0
	bge	a0,zero,0000000023029A62

l23029A96:
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

l23029AAA:
	c.beqz	s1,0000000023029A68

l23029AAC:
	c.lw	s1,0(a5)
	c.addi	a5,FFFFFFFF
	c.sw	s1,0(a5)
	bge	a5,zero,0000000023029A68

l23029AB6:
	c.lwsp	a2,00000004
	c.j	0000000023029A96

l23029ABA:
	c.lwsp	a2,00000004
	bge	s0,zero,0000000023029AC8

l23029AC0:
	c.li	a5,FFFFFFF8
	bne	s0,a5,0000000023029A96

l23029AC6:
	c.bnez	s1,0000000023029A96

l23029AC8:
	c.li	s0,FFFFFFFF
	c.j	0000000023029A96

;; fdt32_to_cpu: 23029ACC
;;   Called from:
;;     23029C58 (in utilfdt_print_data)
;;     23029D82 (in tc_blfdtdump)
;;     23029D8A (in tc_blfdtdump)
;;     23029D96 (in tc_blfdtdump)
;;     23029D9E (in tc_blfdtdump)
;;     23029DA6 (in tc_blfdtdump)
;;     23029DBA (in tc_blfdtdump)
;;     23029E16 (in tc_blfdtdump)
;;     23029E30 (in tc_blfdtdump)
;;     23029E4A (in tc_blfdtdump)
;;     23029E64 (in tc_blfdtdump)
;;     2302A010 (in tc_blfdtdump)
;;     2302A0AC (in tc_blfdtdump)
;;     2302A0B6 (in tc_blfdtdump)
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

;; fdt64_to_cpu: 23029AEE
;;   Called from:
;;     23029E8E (in tc_blfdtdump)
;;     23029E9E (in tc_blfdtdump)
fdt64_to_cpu proc
	srli	a4,a0,00000008
	andi	a4,a4,+000000FF
	slli	a3,a0,00000018
	c.slli	a4,10
	c.or	a3,a4
	srli	a4,a0,00000010
	andi	a4,a4,+000000FF
	c.slli	a4,08
	c.or	a3,a4
	srli	a5,a1,00000018
	srli	a4,a0,00000018
	slli	a0,a1,00000018
	c.or	a5,a0
	srli	a0,a1,00000008
	andi	a0,a0,+000000FF
	c.slli	a0,10
	c.or	a0,a5
	srli	a5,a1,00000010
	andi	a5,a5,+000000FF
	c.slli	a5,08
	c.or	a0,a5
	or	a1,a3,a4
	c.jr	ra

;; fdt32_ld: 23029B36
;;   Called from:
;;     23029EE2 (in tc_blfdtdump)
;;     23029EF6 (in tc_blfdtdump)
;;     23029F02 (in tc_blfdtdump)
;;     23029F0E (in tc_blfdtdump)
;;     23029F1A (in tc_blfdtdump)
;;     23029F26 (in tc_blfdtdump)
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

;; util_is_printable_string: 23029B54
;;   Called from:
;;     23029BBE (in utilfdt_print_data)
util_is_printable_string proc
	c.beqz	a1,0000000023029BA0

l23029B56:
	c.add	a1,a0
	lbu	a4,a1,-00000001
	c.li	a5,00000000
	c.bnez	a4,0000000023029B6E

l23029B60:
	lui	a3,0002308E
	addi	a3,a3,-00000393

l23029B68:
	bltu	a0,a1,0000000023029B7C

l23029B6C:
	c.li	a5,00000001

l23029B6E:
	c.mv	a0,a5
	c.jr	ra

l23029B72:
	c.addi	a5,00000001
	bne	a1,a5,0000000023029B7E

l23029B78:
	c.mv	a5,a1
	c.j	0000000023029B90

l23029B7C:
	c.mv	a5,a0

l23029B7E:
	lbu	a4,a5,+00000000
	c.beqz	a4,0000000023029B90

l23029B84:
	c.add	a4,a3
	lbu	a4,a4,+00000000
	andi	a4,a4,+00000097
	c.bnez	a4,0000000023029B72

l23029B90:
	lbu	a4,a5,+00000000
	c.bnez	a4,0000000023029BA0

l23029B96:
	beq	a0,a5,0000000023029BA0

l23029B9A:
	addi	a0,a5,+00000001
	c.j	0000000023029B68

l23029BA0:
	c.li	a5,00000000
	c.j	0000000023029B6E

;; utilfdt_print_data: 23029BA4
;;   Called from:
;;     2302A10C (in tc_blfdtdump)
utilfdt_print_data proc
	beq	a1,zero,0000000023029CD6

l23029BA8:
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.mv	s1,a0
	c.mv	s0,a1
	jal	ra,0000000023029B54
	c.beqz	a0,0000000023029BFC

l23029BC4:
	lui	a0,00023080
	addi	a0,a0,+0000063C
	jal	ra,0000000023052118
	lui	s3,00023080
	c.add	s0,s1
	lui	s2,00023080

l23029BDA:
	c.mv	a1,s1
	addi	a0,s3,+00000640
	jal	ra,0000000023052118
	c.mv	a0,s1
	jal	ra,000000002307132C
	c.addi	a0,00000001
	c.add	s1,a0
	bgeu	s1,s0,0000000023029CC2

l23029BF2:
	addi	a0,s2,+00000648
	jal	ra,0000000023052118
	c.j	0000000023029BDA

l23029BFC:
	andi	a5,s0,+00000003
	c.bnez	a5,0000000023029C72

l23029C02:
	lui	a0,00023080
	addi	a0,a0,+0000064C
	jal	ra,0000000023052118
	c.li	a5,00000004
	xor	s0,s0,a5
	lui	s3,00023081
	lui	s4,00023089
	c.li	s2,00000000
	addi	s3,s3,-00000074
	addi	s4,s4,-000001A0
	lui	s6,00023080
	addi	s5,s0,-00000001

l23029C2E:
	blt	s2,s0,0000000023029C50

l23029C32:
	lui	a0,0002308B
	addi	a0,a0,+00000038

l23029C3A:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.addi16sp	00000020
	jal	zero,0000000023052118

l23029C50:
	slli	a5,s2,00000002
	c.add	a5,s1
	c.lw	a5,0(a0)
	jal	ra,0000000023029ACC
	c.mv	a1,a0
	c.mv	a2,s3
	blt	s2,s5,0000000023029C66

l23029C64:
	c.mv	a2,s4

l23029C66:
	addi	a0,s6,+00000654
	jal	ra,0000000023052118
	c.addi	s2,00000001
	c.j	0000000023029C2E

l23029C72:
	lui	a0,00023080
	addi	a0,a0,+00000660
	lui	s3,00023081
	lui	s4,00023089
	jal	ra,0000000023052118
	c.li	s2,00000000
	addi	s5,s0,-00000001
	addi	s3,s3,-00000074
	addi	s4,s4,-000001A0
	lui	s6,00023080

l23029C98:
	blt	s2,s0,0000000023029CA6

l23029C9C:
	lui	a0,0002307E
	addi	a0,a0,-000002EC
	c.j	0000000023029C3A

l23029CA6:
	add	a5,s1,s2
	lbu	a1,a5,+00000000
	c.mv	a2,s3
	blt	s2,s5,0000000023029CB6

l23029CB4:
	c.mv	a2,s4

l23029CB6:
	addi	a0,s6,+00000668
	jal	ra,0000000023052118
	c.addi	s2,00000001
	c.j	0000000023029C98

l23029CC2:
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

l23029CD6:
	c.jr	ra

;; tc_blfdtdump: 23029CD8
;;   Called from:
;;     230297EE (in blfdt)
tc_blfdtdump proc
	c.addi16sp	FFFFFFA0
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	lui	s1,0002307F
	c.swsp	s4,00000024
	lui	s2,00023080
	lui	s4,000D00E0
	c.swsp	s0,0000002C
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	s9,00000098
	addi	s0,s1,+0000038C
	c.swsp	ra,000000AC
	c.swsp	s3,000000A4
	c.swsp	s10,00000018
	c.swsp	s11,00000094
	addi	s1,s1,+0000038C
	addi	s2,s2,+0000063B
	c.li	s6,00000003
	addi	s4,s4,-00000113
	addi	s7,zero,+00000027
	lui	s8,0002307F
	lui	s9,0002307F
	c.li	s5,00000011

l23029D20:
	sub	a2,s2,s0
	blt	s6,a2,0000000023029EC2

l23029D28:
	beq	s0,zero,0000000023029ED2

l23029D2C:
	addi	a5,zero,+00000027
	bgeu	a5,a2,0000000023029ED2

l23029D34:
	lui	a1,0002307F
	lui	a0,0002307F
	sub	a2,s0,s1
	addi	a1,a1,+000000C8
	addi	a0,a0,+0000014C
	jal	ra,0000000023052118
	lui	a5,0004200E
	lw	a4,a5,-0000017C
	c.swsp	a5,00000084
	beq	a4,zero,0000000023029F9C

l23029D5A:
	jal	ra,000000002303030A

l23029D5E:
	c.mv	a1,a0
	lui	s6,0002307F
	lui	a2,0002307F
	lui	a0,0002307F
	addi	a4,zero,+00000153
	addi	a3,s6,+000000F8
	addi	a2,a2,+0000016C
	addi	a0,a0,+0000017C
	jal	ra,000000002304B718
	c.lw	s0,16(a0)
	jal	ra,0000000023029ACC
	c.mv	s1,a0
	c.lw	s0,8(a0)
	jal	ra,0000000023029ACC
	c.mv	s3,a0
	c.lw	s0,12(a0)
	add	s2,s0,s3
	jal	ra,0000000023029ACC
	c.mv	s11,a0
	c.lw	s0,20(a0)
	jal	ra,0000000023029ACC
	c.mv	s4,a0
	c.lw	s0,4(a0)
	jal	ra,0000000023029ACC
	c.swsp	a0,00000008
	lui	a0,0002307F
	addi	a0,a0,+0000019C
	jal	ra,0000000023052118
	c.lw	s0,0(a0)
	jal	ra,0000000023029ACC
	c.mv	a1,a0
	lui	a0,0002307F
	addi	a0,a0,+000001A8
	jal	ra,0000000023052118
	c.lwsp	a6,00000084
	lui	a0,0002307F
	addi	a0,a0,+000001BC
	c.mv	a1,a2
	jal	ra,0000000023052118
	lui	a0,0002307F
	c.mv	a1,s3
	addi	a0,a0,+000001DC
	jal	ra,0000000023052118
	lui	a0,0002307F
	c.mv	a1,s11
	addi	a0,a0,+000001F8
	jal	ra,0000000023052118
	lui	a0,0002307F
	c.mv	a1,s1
	addi	a0,a0,+00000214
	jal	ra,0000000023052118
	lui	a0,0002307F
	c.mv	a1,s4
	addi	a0,a0,+00000230
	jal	ra,0000000023052118
	c.lw	s0,24(a0)
	jal	ra,0000000023029ACC
	c.mv	a1,a0
	lui	a0,0002307F
	addi	a0,a0,+00000244
	jal	ra,0000000023052118
	c.li	a5,00000001
	bgeu	a5,s4,0000000023029E76

l23029E2E:
	c.lw	s0,28(a0)
	jal	ra,0000000023029ACC
	c.mv	a1,a0
	lui	a0,0002307F
	addi	a0,a0,+00000260
	jal	ra,0000000023052118
	c.li	a5,00000002
	beq	s4,a5,0000000023029E76

l23029E48:
	c.lw	s0,32(a0)
	jal	ra,0000000023029ACC
	c.mv	a1,a0
	lui	a0,0002307F
	addi	a0,a0,+0000027C
	jal	ra,0000000023052118
	c.li	a5,00000010
	bgeu	a5,s4,0000000023029E76

l23029E62:
	c.lw	s0,36(a0)
	jal	ra,0000000023029ACC
	c.mv	a1,a0
	lui	a0,0002307F
	addi	a0,a0,+00000298
	jal	ra,0000000023052118

l23029E76:
	lui	a0,00023072
	addi	a0,a0,+000007FC
	jal	ra,0000000023052118
	c.add	s1,s0
	lui	s3,0002307F

l23029E88:
	c.lw	s1,0(a0)
	c.lw	s1,4(a1)
	c.addi	s1,00000010
	jal	ra,0000000023029AEE
	c.swsp	a0,00000088
	c.swsp	a1,00000008
	lw	a0,s1,-00000008
	lw	a1,s1,-00000004
	jal	ra,0000000023029AEE
	c.lwsp	s4,00000084
	c.lwsp	a6,000000A4
	c.mv	a5,a1
	or	a6,a2,a0
	c.or	a1,a3
	or	a6,a6,a1
	c.mv	a4,a0
	beq	a6,zero,000000002302A126

l23029EB8:
	addi	a0,s3,+000002B4
	jal	ra,0000000023052118
	c.j	0000000023029E88

l23029EC2:
	c.mv	a0,s0
	c.addi	a2,FFFFFFFC
	addi	a1,zero,+000000D0
	jal	ra,0000000023070B18
	c.mv	s0,a0
	c.bnez	a0,0000000023029EE2

l23029ED2:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.bnez	a5,0000000023029F42

l23029EDC:
	jal	ra,00000000230302E8
	c.j	0000000023029F46

l23029EE2:
	jal	ra,0000000023029B36
	bne	a0,s4,0000000023029F3E

l23029EEA:
	sub	s3,s2,s0
	bgeu	s7,s3,0000000023029F2E

l23029EF2:
	addi	a0,s0,+00000014
	jal	ra,0000000023029B36
	bltu	s5,a0,0000000023029F2E

l23029EFE:
	addi	a0,s0,+00000018
	jal	ra,0000000023029B36
	bltu	s5,a0,0000000023029F2E

l23029F0A:
	addi	a0,s0,+00000004
	jal	ra,0000000023029B36
	bgeu	a0,s3,0000000023029F2E

l23029F16:
	addi	a0,s0,+00000008
	jal	ra,0000000023029B36
	bgeu	a0,s3,0000000023029F2E

l23029F22:
	addi	a0,s0,+0000000C
	jal	ra,0000000023029B36
	bltu	a0,s3,0000000023029D34

l23029F2E:
	sub	a2,s0,s1
	addi	a1,s8,+000000C8
	addi	a0,s9,+000000D0
	jal	ra,0000000023052118

l23029F3E:
	c.addi	s0,00000001
	c.j	0000000023029D20

l23029F42:
	jal	ra,000000002303030A

l23029F46:
	c.mv	a1,a0
	lui	a5,0002307F
	lui	a3,0002307F
	lui	a2,00023073
	lui	a0,0002307F
	addi	a5,a5,+000000C8
	addi	a4,zero,+00000149
	addi	a3,a3,+000000F8
	addi	a2,a2,-00000434
	addi	a0,a0,+00000108
	jal	ra,000000002304B718
	lui	a0,0002307F
	addi	a0,a0,+0000013C
	jal	ra,0000000023052118
	c.li	a0,FFFFFFFF

l23029F7E:
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

l23029F9C:
	jal	ra,00000000230302E8
	c.j	0000000023029D5E

l23029FA2:
	c.lwsp	a6,000000C4
	c.mv	a3,s7
	add	a1,s1,a4
	bltu	a5,s8,0000000023029FBC

l23029FAE:
	c.lwsp	s4,000000C4
	slli	a5,s8,00000002
	c.add	a5,a4
	c.lw	a5,0(a3)
	c.bnez	a3,0000000023029FBC

l23029FBA:
	c.mv	a3,s7

l23029FBC:
	lui	a0,0002307F
	c.mv	a2,s8
	addi	a0,a0,+000002D0
	jal	ra,0000000023052118
	c.li	a5,00000001
	lui	s5,00023089
	bne	s8,a5,000000002302A01E

l23029FD4:
	c.mv	a0,s1
	jal	ra,000000002307132C
	lbu	a5,s2,+00000004
	add	s8,s1,a0
	c.addi	s8,00000004
	andi	s8,s8,-00000004
	c.bnez	a5,0000000023029FEC

l23029FEA:
	c.lwsp	s8,00000024

l23029FEC:
	lui	a0,0002307F
	c.mv	a3,s1
	slli	a1,s3,00000002
	addi	a2,s5,-000001A0
	addi	a0,a0,+000002F0
	jal	ra,0000000023052118
	c.addi	s3,00000001
	c.mv	s1,s8

l2302A006:
	c.mv	s2,s1

l2302A008:
	lw	a0,s2,+00000000
	addi	s1,s2,+00000004
	jal	ra,0000000023029ACC
	c.li	a5,00000009
	c.mv	s8,a0
	bne	a0,a5,0000000023029FA2

l2302A01C:
	c.j	000000002302A08E

l2302A01E:
	c.li	a5,00000002
	bne	s8,a5,000000002302A03C

l2302A024:
	c.addi	s3,FFFFFFFF
	lui	a0,0002307F
	addi	a2,s5,-000001A0
	slli	a1,s3,00000002
	addi	a0,a0,+000002FC

l2302A036:
	jal	ra,0000000023052118
	c.j	000000002302A006

l2302A03C:
	c.li	a5,00000004
	slli	s10,s3,00000002
	bne	s8,a5,000000002302A056

l2302A046:
	lui	a0,0002307F
	addi	a2,s5,-000001A0
	c.mv	a1,s10
	addi	a0,a0,+00000304
	c.j	000000002302A036

l2302A056:
	c.li	a5,00000003
	beq	s8,a5,000000002302A0A4

l2302A05C:
	c.lwsp	a2,000000E4
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002302A09E

l2302A064:
	jal	ra,000000002303030A

l2302A068:
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,0002307F
	c.mv	a7,s8
	addi	a6,s5,-000001A0
	c.mv	a5,s10
	addi	a4,zero,+000000F7
	addi	a3,s6,+000000F8
	addi	a2,a2,-00000434
	addi	a0,a0,+00000314
	jal	ra,000000002304B718

l2302A08E:
	lui	a0,0002307F
	addi	a0,a0,+00000378
	jal	ra,0000000023052118
	c.li	a0,00000000
	c.j	0000000023029F7E

l2302A09E:
	jal	ra,00000000230302E8
	c.j	000000002302A068

l2302A0A4:
	lw	a0,s2,+00000004
	addi	s8,s2,+0000000C
	jal	ra,0000000023029ACC
	c.mv	s9,a0
	lw	a0,s2,+00000008
	jal	ra,0000000023029ACC
	add	a1,s11,a0
	c.li	a4,0000000F
	add	a3,s0,a1
	bltu	a4,s4,000000002302A0D4

l2302A0C8:
	c.li	a4,00000007
	bge	a4,s9,000000002302A0D4

l2302A0CE:
	c.addi	s2,00000013
	andi	s8,s2,-00000008

l2302A0D4:
	lui	a0,0002307F
	c.mv	a2,a3
	addi	a0,a0,+00000344
	c.swsp	a3,0000008C
	jal	ra,0000000023052118
	lui	a0,0002307F
	sub	a1,s8,s0
	addi	a0,a0,+0000035C
	jal	ra,0000000023052118
	c.lwsp	t3,000000A4
	lui	a0,0002307F
	addi	a2,s5,-000001A0
	c.mv	a1,s10
	addi	a0,a0,+00000370
	jal	ra,0000000023052118
	c.mv	a0,s8
	c.mv	a1,s9
	jal	ra,0000000023029BA4
	add	s1,s8,s9
	lui	a0,0002307F
	c.addi	s1,00000003
	addi	a0,a0,+000001A4
	c.andi	s1,FFFFFFFC
	jal	ra,0000000023052118
	c.j	000000002302A006

l2302A126:
	c.li	a5,FFFFFFFC
	c.sub	a5,s0
	c.swsp	a5,00000008
	lui	a5,0002307F
	addi	a5,a5,+0000005C
	lui	s9,00023086
	lui	s7,0002307F
	c.swsp	a5,00000088
	addi	a5,s9,-000002D0
	c.li	s3,00000000
	addi	s7,s7,+000000C0
	c.swsp	a5,0000000C
	c.j	000000002302A008

;; tc_fdt_wifi_module: 2302A14C
;;   Called from:
;;     2302A9CA (in tc_fdt_wifi)
tc_fdt_wifi_module proc
	c.addi16sp	FFFFFEC0
	sw	s0,sp,+00000138
	lui	a2,00023073
	lui	s0,0002307F
	addi	a2,a2,-000003C4
	c.li	a1,00000000
	addi	a0,s0,+0000038C
	sw	ra,sp,+0000013C
	sw	s1,sp,+00000134
	sw	s2,sp,+00000130
	sw	s3,sp,+0000012C
	sw	s4,sp,+00000128
	sw	s5,sp,+00000124
	sw	s6,sp,+00000120
	sw	s7,sp,+0000011C
	sw	s8,sp,+00000118
	sw	s9,sp,+00000114
	sw	s10,sp,+00000110
	c.swsp	zero,00000084
	jal	ra,00000000230295BC
	blt	zero,a0,000000002302A1D2

l2302A19A:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002302A1CC

l2302A1A4:
	jal	ra,000000002303030A

l2302A1A8:
	lui	a3,00023080
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023080
	addi	a4,zero,+00000037
	addi	a3,a3,+000006A8
	addi	a2,a2,-00000434
	addi	a0,a0,+000006B8

l2302A1C6:
	jal	ra,000000002304B718
	c.j	000000002302A5D0

l2302A1CC:
	jal	ra,00000000230302E8
	c.j	000000002302A1A8

l2302A1D2:
	lui	a2,00023080
	c.mv	a1,a0
	c.mv	s3,a0
	addi	a2,a2,+000006D8
	addi	a0,s0,+0000038C
	jal	ra,00000000230295BC
	c.mv	a1,a0
	bge	zero,a0,000000002302A25C

l2302A1EC:
	lui	a2,00023080
	c.addi4spn	a3,0000000C
	addi	a2,a2,+000006E0
	addi	a0,s0,+0000038C
	jal	ra,0000000023029700
	lui	a5,0004200E
	c.mv	s2,a0
	lui	s1,00023080
	lw	a5,a5,-0000017C
	beq	a0,zero,000000002302A5DA

l2302A210:
	beq	a5,zero,000000002302A5D4

l2302A214:
	jal	ra,000000002303030A

l2302A218:
	lw	a4,s2,+00000000
	c.lwsp	a2,00000008
	lui	a2,0002307F
	srli	a3,a4,00000018
	slli	a5,a4,00000018
	c.or	a5,a3
	srli	a3,a4,00000008
	andi	a3,a3,+000000FF
	c.srli	a4,00000010
	c.slli	a3,10
	andi	a4,a4,+000000FF
	c.or	a5,a3
	c.slli	a4,08
	c.mv	a1,a0
	lui	a0,00023080
	c.or	a5,a4
	addi	a3,s1,+000006A8
	addi	a4,zero,+00000040
	addi	a2,a2,+0000016C
	addi	a0,a0,+000006F0
	jal	ra,000000002304B718

l2302A25C:
	lui	a2,00023080
	addi	a2,a2,+00000748
	c.mv	a1,s3
	addi	a0,s0,+0000038C
	jal	ra,00000000230295BC
	c.mv	s5,a0
	bge	zero,a0,000000002302A33C

l2302A274:
	lui	a2,00023080
	c.mv	a1,a0
	c.addi4spn	a3,0000000C
	addi	a2,a2,+0000074C
	addi	a0,s0,+0000038C
	jal	ra,0000000023029700
	c.lwsp	a2,000000C4
	c.li	a5,00000006
	c.mv	a1,a0
	lui	s4,0004200E
	lui	s1,00023080
	bne	a4,a5,000000002302A608

l2302A29A:
	c.li	a2,00000006
	c.addi4spn	a0,00000010
	jal	ra,0000000023070C7C
	lw	a5,s4,-0000017C
	beq	a5,zero,000000002302A602

l2302A2AA:
	jal	ra,000000002303030A

l2302A2AE:
	c.mv	a1,a0
	lui	s2,0002307F
	lui	a0,00023080
	addi	a4,zero,+0000004F
	addi	a3,s1,+000006A8
	addi	a2,s2,+0000016C
	addi	a0,a0,+0000075C
	jal	ra,000000002304B718
	c.li	a4,00000000
	c.li	a3,00000006
	c.addi4spn	a2,00000010
	addi	a1,zero,+00000050
	addi	a0,s1,+000006A8
	jal	ra,000000002304B746
	lui	a2,00023080
	c.mv	a1,s5
	c.addi4spn	a3,0000000C
	addi	a2,a2,+0000077C
	addi	a0,s0,+0000038C
	jal	ra,0000000023029700
	c.lwsp	a2,000000C4
	c.li	a5,00000006
	c.mv	a1,a0
	bne	a4,a5,000000002302A33C

l2302A2FC:
	c.li	a2,00000006
	c.addi4spn	a0,00000010
	jal	ra,0000000023070C7C
	lw	a5,s4,-0000017C
	beq	a5,zero,000000002302A634

l2302A30C:
	jal	ra,000000002303030A

l2302A310:
	c.mv	a1,a0
	lui	a0,00023080
	addi	a4,zero,+0000005C
	addi	a3,s1,+000006A8
	addi	a2,s2,+0000016C
	addi	a0,a0,+000007B0
	jal	ra,000000002304B718
	c.li	a4,00000000
	c.li	a3,00000006
	c.addi4spn	a2,00000010
	addi	a1,zero,+0000005D
	addi	a0,s1,+000006A8
	jal	ra,000000002304B746

l2302A33C:
	lui	a2,00023080
	addi	a2,a2,+000007D0
	c.mv	a1,s3
	addi	a0,s0,+0000038C
	jal	ra,00000000230295BC
	c.mv	s5,a0
	bge	zero,a0,000000002302A70E

l2302A354:
	lui	s2,00023072
	c.mv	a1,a0
	addi	a2,s2,+00000164
	addi	a0,s0,+0000038C
	jal	ra,0000000023029728
	c.mv	s4,a0
	bge	zero,a0,000000002302A640

l2302A36C:
	c.li	s1,00000000
	lui	s6,0004200E
	lui	s7,00023080
	lui	s8,0002307F
	lui	s9,00023080

l2302A37E:
	c.addi4spn	a4,0000000C
	c.mv	a3,s1
	addi	a2,s2,+00000164
	c.mv	a1,s5
	addi	a0,s0,+0000038C
	jal	ra,0000000023029772
	c.lwsp	a2,000000E4
	c.mv	s10,a0
	bge	zero,a5,000000002302A3C0

l2302A398:
	lw	a5,s6,-0000017C
	beq	a5,zero,000000002302A63A

l2302A3A0:
	jal	ra,000000002303030A

l2302A3A4:
	c.lwsp	a2,00000028
	c.mv	a1,a0
	c.mv	a6,s10
	c.mv	a5,s1
	addi	a4,zero,+0000006A
	addi	a3,s7,+000006A8
	addi	a2,s8,+0000016C
	addi	a0,s9,+000007D4
	jal	ra,000000002304B718

l2302A3C0:
	c.addi	s1,00000001
	bne	s4,s1,000000002302A37E

l2302A3C6:
	lui	s2,00023081
	addi	a2,s2,-000007D4
	c.mv	a1,s5
	addi	a0,s0,+0000038C
	jal	ra,0000000023029728
	c.mv	s4,a0
	bge	zero,a0,000000002302A67A

l2302A3DE:
	c.li	s1,00000000
	lui	s6,0004200E
	lui	s7,00023080
	lui	s8,0002307F
	lui	s9,00023081

l2302A3F0:
	c.addi4spn	a4,0000000C
	c.mv	a3,s1
	addi	a2,s2,-000007D4
	c.mv	a1,s5
	addi	a0,s0,+0000038C
	jal	ra,0000000023029772
	c.lwsp	a2,000000E4
	c.mv	s10,a0
	bge	zero,a5,000000002302A432

l2302A40A:
	lw	a5,s6,-0000017C
	beq	a5,zero,000000002302A674

l2302A412:
	jal	ra,000000002303030A

l2302A416:
	c.lwsp	a2,00000028
	c.mv	a1,a0
	c.mv	a6,s10
	c.mv	a5,s1
	addi	a4,zero,+00000079
	addi	a3,s7,+000006A8
	addi	a2,s8,+0000016C
	addi	a0,s9,-000007D0
	jal	ra,000000002304B718

l2302A432:
	c.addi	s1,00000001
	bne	s4,s1,000000002302A3F0

l2302A438:
	lui	a2,00023081
	c.addi4spn	a3,0000000C
	addi	a2,a2,-00000778
	c.mv	a1,s5
	addi	a0,s0,+0000038C
	jal	ra,0000000023029700
	lui	s2,0004200E
	c.mv	s4,a0
	lui	s1,00023080
	lw	a5,s2,-0000017C
	beq	a0,zero,000000002302A6B4

l2302A45E:
	beq	a5,zero,000000002302A6AE

l2302A462:
	jal	ra,000000002303030A

l2302A466:
	lw	a4,s4,+00000000
	c.mv	a1,a0
	lui	s4,0002307F
	srli	a3,a4,00000018
	slli	a5,a4,00000018
	c.or	a5,a3
	srli	a3,a4,00000008
	andi	a3,a3,+000000FF
	c.srli	a4,00000010
	c.slli	a3,10
	andi	a4,a4,+000000FF
	c.or	a5,a3
	c.slli	a4,08
	lui	a0,00023081
	c.or	a5,a4
	addi	a3,s1,+000006A8
	addi	a4,zero,+00000084
	addi	a2,s4,+0000016C
	addi	a0,a0,-0000076C
	jal	ra,000000002304B718
	lui	s7,00023081
	addi	a2,s7,-00000744
	c.mv	a1,s5
	addi	a0,s0,+0000038C
	jal	ra,0000000023029728
	c.mv	s8,a0
	c.li	s6,00000000
	bge	zero,a0,000000002302A6E2

l2302A4C2:
	lui	s9,00023081

l2302A4C6:
	c.addi4spn	a4,0000000C
	c.mv	a3,s6
	addi	a2,s7,-00000744
	c.mv	a1,s5
	addi	a0,s0,+0000038C
	jal	ra,0000000023029772
	c.lwsp	a2,000000E4
	c.mv	s10,a0
	bge	zero,a5,000000002302A508

l2302A4E0:
	lw	a5,s2,-0000017C
	beq	a5,zero,000000002302A6DC

l2302A4E8:
	jal	ra,000000002303030A

l2302A4EC:
	c.lwsp	a2,00000028
	c.mv	a1,a0
	c.mv	a6,s10
	c.mv	a5,s6
	addi	a4,zero,+00000090
	addi	a3,s1,+000006A8
	addi	a2,s4,+0000016C
	addi	a0,s9,-00000708
	jal	ra,000000002304B718

l2302A508:
	c.addi	s6,00000001
	bne	s8,s6,000000002302A4C6

l2302A50E:
	lui	a2,00023081
	c.mv	a1,s3
	addi	a2,a2,-00000698
	addi	a0,s0,+0000038C
	jal	ra,00000000230295BC
	c.mv	s3,a0
	bge	zero,a0,000000002302A996

l2302A526:
	lui	a2,00023081
	c.mv	a1,a0
	c.addi4spn	a3,0000000C
	addi	a2,a2,-00000690
	addi	a0,s0,+0000038C
	jal	ra,0000000023029700
	c.lwsp	a2,000000C4
	c.li	a5,00000014
	c.mv	a1,a0
	bne	a4,a5,000000002302A72E

l2302A544:
	c.li	a2,00000014
	c.addi4spn	a0,00000010
	jal	ra,0000000023070C7C
	lw	a5,s2,-0000017C
	beq	a5,zero,000000002302A728

l2302A554:
	jal	ra,000000002303030A

l2302A558:
	c.mv	a1,a0
	lui	a0,00023081
	addi	a4,zero,+000000A5
	addi	a3,s1,+000006A8
	addi	a2,s4,+0000016C
	addi	a0,a0,-00000688
	jal	ra,000000002304B718
	c.li	a4,00000000
	c.li	a3,00000014
	c.addi4spn	a2,00000010
	addi	a1,zero,+000000A6
	addi	a0,s1,+000006A8
	jal	ra,000000002304B746
	lui	a2,00023081
	c.mv	a1,s3
	c.addi4spn	a3,0000000C
	addi	a2,a2,-0000066C
	addi	a0,s0,+0000038C
	jal	ra,0000000023029700
	c.lwsp	a2,000000C4
	addi	a5,zero,+00000100
	c.mv	a1,a0
	beq	a4,a5,000000002302A75A

l2302A5A4:
	lw	a5,s2,-0000017C
	beq	a5,zero,000000002302A7E8

l2302A5AC:
	jal	ra,000000002303030A

l2302A5B0:
	c.lwsp	a2,000000E4
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023081
	addi	a4,zero,+000000B4
	addi	a3,s1,+000006A8
	addi	a2,a2,-00000434
	addi	a0,a0,-00000608
	jal	ra,000000002304B718

l2302A5D0:
	c.li	a0,FFFFFFFF
	c.j	000000002302A956

l2302A5D4:
	jal	ra,00000000230302E8
	c.j	000000002302A218

l2302A5DA:
	c.beqz	a5,000000002302A5FC

l2302A5DC:
	jal	ra,000000002303030A

l2302A5E0:
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023080
	addi	a4,zero,+00000042
	addi	a3,s1,+000006A8
	addi	a2,a2,-00000434
	addi	a0,a0,+00000720
	c.j	000000002302A1C6

l2302A5FC:
	jal	ra,00000000230302E8
	c.j	000000002302A5E0

l2302A602:
	jal	ra,00000000230302E8
	c.j	000000002302A2AE

l2302A608:
	lw	a5,s4,-0000017C
	c.beqz	a5,000000002302A62E

l2302A60E:
	jal	ra,000000002303030A

l2302A612:
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023080
	addi	a4,zero,+00000052
	addi	a3,s1,+000006A8
	addi	a2,a2,-00000434
	addi	a0,a0,+00000788
	c.j	000000002302A1C6

l2302A62E:
	jal	ra,00000000230302E8
	c.j	000000002302A612

l2302A634:
	jal	ra,00000000230302E8
	c.j	000000002302A310

l2302A63A:
	jal	ra,00000000230302E8
	c.j	000000002302A3A4

l2302A640:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002302A66E

l2302A64A:
	jal	ra,000000002303030A

l2302A64E:
	addi	a4,zero,+0000006E

l2302A652:
	lui	a3,00023080
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023081
	addi	a3,a3,+000006A8
	addi	a2,a2,-00000434
	addi	a0,a0,-000007F4
	c.j	000000002302A1C6

l2302A66E:
	jal	ra,00000000230302E8
	c.j	000000002302A64E

l2302A674:
	jal	ra,00000000230302E8
	c.j	000000002302A416

l2302A67A:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002302A6A8

l2302A684:
	jal	ra,000000002303030A

l2302A688:
	lui	a3,00023080
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023081
	addi	a4,zero,+0000007D
	addi	a3,a3,+000006A8
	addi	a2,a2,-00000434
	addi	a0,a0,-00000798
	c.j	000000002302A1C6

l2302A6A8:
	jal	ra,00000000230302E8
	c.j	000000002302A688

l2302A6AE:
	jal	ra,00000000230302E8
	c.j	000000002302A466

l2302A6B4:
	c.beqz	a5,000000002302A6D6

l2302A6B6:
	jal	ra,000000002303030A

l2302A6BA:
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023081
	addi	a4,zero,+00000086
	addi	a3,s1,+000006A8
	addi	a2,a2,-00000434
	addi	a0,a0,-00000730
	c.j	000000002302A1C6

l2302A6D6:
	jal	ra,00000000230302E8
	c.j	000000002302A6BA

l2302A6DC:
	jal	ra,00000000230302E8
	c.j	000000002302A4EC

l2302A6E2:
	lw	a5,s2,-0000017C
	c.beqz	a5,000000002302A708

l2302A6E8:
	jal	ra,000000002303030A

l2302A6EC:
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023081
	addi	a4,zero,+00000094
	addi	a3,s1,+000006A8
	addi	a2,a2,-00000434
	addi	a0,a0,-000006C4
	c.j	000000002302A1C6

l2302A708:
	jal	ra,00000000230302E8
	c.j	000000002302A6EC

l2302A70E:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002302A722

l2302A718:
	jal	ra,000000002303030A

l2302A71C:
	addi	a4,zero,+00000098
	c.j	000000002302A652

l2302A722:
	jal	ra,00000000230302E8
	c.j	000000002302A71C

l2302A728:
	jal	ra,00000000230302E8
	c.j	000000002302A558

l2302A72E:
	lw	a5,s2,-0000017C
	c.beqz	a5,000000002302A754

l2302A734:
	jal	ra,000000002303030A

l2302A738:
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023081
	addi	a4,zero,+000000A8
	addi	a3,s1,+000006A8
	addi	a2,a2,-00000434
	addi	a0,a0,-00000660
	c.j	000000002302A1C6

l2302A754:
	jal	ra,00000000230302E8
	c.j	000000002302A738

l2302A75A:
	addi	a2,zero,+00000100
	c.addi4spn	a0,00000010
	jal	ra,0000000023070C7C
	lw	a5,s2,-0000017C
	c.beqz	a5,000000002302A7E2

l2302A76A:
	jal	ra,000000002303030A

l2302A76E:
	c.mv	a1,a0
	lui	a0,00023081
	addi	a4,zero,+000000B1
	addi	a3,s1,+000006A8
	addi	a2,s4,+0000016C
	addi	a0,a0,-00000640
	jal	ra,000000002304B718
	c.li	a4,00000000
	addi	a3,zero,+00000100
	c.addi4spn	a2,00000010
	addi	a1,zero,+000000B2
	addi	a0,s1,+000006A8
	jal	ra,000000002304B746
	lui	a2,00023081
	c.mv	a1,s3
	c.addi4spn	a3,0000000C
	addi	a2,a2,-0000061C
	addi	a0,s0,+0000038C
	jal	ra,0000000023029700
	c.lwsp	a2,000000C4
	addi	a5,zero,+0000003C
	c.mv	a1,a0
	beq	a4,a5,000000002302A7EE

l2302A7BC:
	lw	a5,s2,-0000017C
	c.beqz	a5,000000002302A87C

l2302A7C2:
	jal	ra,000000002303030A

l2302A7C6:
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023081
	addi	a4,zero,+000000C0
	addi	a3,s1,+000006A8
	addi	a2,a2,-00000434
	addi	a0,a0,-00000594
	c.j	000000002302A1C6

l2302A7E2:
	jal	ra,00000000230302E8
	c.j	000000002302A76E

l2302A7E8:
	jal	ra,00000000230302E8
	c.j	000000002302A5B0

l2302A7EE:
	addi	a2,zero,+0000003C
	c.addi4spn	a0,00000010
	jal	ra,0000000023070C7C
	lw	a5,s2,-0000017C
	c.beqz	a5,000000002302A876

l2302A7FE:
	jal	ra,000000002303030A

l2302A802:
	c.mv	a1,a0
	lui	a0,00023081
	addi	a4,zero,+000000BD
	addi	a3,s1,+000006A8
	addi	a2,s4,+0000016C
	addi	a0,a0,-000005D4
	jal	ra,000000002304B718
	c.li	a4,00000000
	addi	a3,zero,+0000003C
	c.addi4spn	a2,00000010
	addi	a1,zero,+000000BE
	addi	a0,s1,+000006A8
	jal	ra,000000002304B746
	lui	a2,00023081
	c.mv	a1,s3
	c.addi4spn	a3,0000000C
	addi	a2,a2,-000005A8
	addi	a0,s0,+0000038C
	jal	ra,0000000023029700
	c.lwsp	a2,000000C4
	addi	a5,zero,+00000038
	c.mv	a1,a0
	beq	a4,a5,000000002302A882

l2302A850:
	lw	a5,s2,-0000017C
	c.beqz	a5,000000002302A910

l2302A856:
	jal	ra,000000002303030A

l2302A85A:
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023081
	addi	a4,zero,+000000CC
	addi	a3,s1,+000006A8
	addi	a2,a2,-00000434
	addi	a0,a0,-0000052C
	c.j	000000002302A1C6

l2302A876:
	jal	ra,00000000230302E8
	c.j	000000002302A802

l2302A87C:
	jal	ra,00000000230302E8
	c.j	000000002302A7C6

l2302A882:
	addi	a2,zero,+00000038
	c.addi4spn	a0,00000010
	jal	ra,0000000023070C7C
	lw	a5,s2,-0000017C
	c.beqz	a5,000000002302A90A

l2302A892:
	jal	ra,000000002303030A

l2302A896:
	c.mv	a1,a0
	lui	a0,00023081
	addi	a4,zero,+000000C9
	addi	a3,s1,+000006A8
	addi	a2,s4,+0000016C
	addi	a0,a0,-00000564
	jal	ra,000000002304B718
	c.li	a4,00000000
	addi	a3,zero,+00000038
	c.addi4spn	a2,00000010
	addi	a1,zero,+000000CA
	addi	a0,s1,+000006A8
	jal	ra,000000002304B746
	lui	a2,00023081
	c.mv	a1,s3
	c.addi4spn	a3,0000000C
	addi	a2,a2,-00000538
	addi	a0,s0,+0000038C
	jal	ra,0000000023029700
	c.lwsp	a2,000000C4
	c.li	a5,00000004
	c.mv	a1,a0
	beq	a4,a5,000000002302A916

l2302A8E2:
	lw	a5,s2,-0000017C
	c.beqz	a5,000000002302A990

l2302A8E8:
	jal	ra,000000002303030A

l2302A8EC:
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023081
	addi	a4,zero,+000000D8
	addi	a3,s1,+000006A8
	addi	a2,a2,-00000434
	addi	a0,a0,-000004D8
	jal	zero,000000002302A1C6

l2302A90A:
	jal	ra,00000000230302E8
	c.j	000000002302A896

l2302A910:
	jal	ra,00000000230302E8
	c.j	000000002302A85A

l2302A916:
	c.li	a2,00000004
	c.addi4spn	a0,00000010
	jal	ra,0000000023070C7C
	lw	a5,s2,-0000017C
	c.beqz	a5,000000002302A98A

l2302A924:
	jal	ra,000000002303030A

l2302A928:
	c.mv	a1,a0
	lui	a0,00023081
	addi	a4,zero,+000000D5
	addi	a3,s1,+000006A8
	addi	a2,s4,+0000016C
	addi	a0,a0,-000004FC
	jal	ra,000000002304B718
	c.li	a4,00000000
	c.li	a3,00000004
	c.addi4spn	a2,00000010
	addi	a1,zero,+000000D6
	addi	a0,s1,+000006A8
	jal	ra,000000002304B746
	c.li	a0,00000000

l2302A956:
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
	lw	s9,sp,+00000114
	lw	s10,sp,+00000110
	c.addi16sp	00000140
	c.jr	ra

l2302A98A:
	jal	ra,00000000230302E8
	c.j	000000002302A928

l2302A990:
	jal	ra,00000000230302E8
	c.j	000000002302A8EC

l2302A996:
	lw	a5,s2,-0000017C
	c.beqz	a5,000000002302A9BE

l2302A99C:
	jal	ra,000000002303030A

l2302A9A0:
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023081
	addi	a4,zero,+000000DC
	addi	a3,s1,+000006A8
	addi	a2,a2,-00000434
	addi	a0,a0,-000004B0
	jal	zero,000000002302A1C6

l2302A9BE:
	jal	ra,00000000230302E8
	c.j	000000002302A9A0

;; tc_fdt_wifi: 2302A9C4
;;   Called from:
;;     230297E6 (in blfdt)
tc_fdt_wifi proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002302A14C
	c.mv	s0,a0
	c.beqz	a0,000000002302A9E8

l2302A9D2:
	lui	a0,00023080
	addi	a0,a0,+00000670

l2302A9DA:
	jal	ra,0000000023052118
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2302A9E8:
	lui	a0,00023080
	addi	a0,a0,+0000068C
	c.j	000000002302A9DA

;; cmd_blog_info_dump: 2302A9F2
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
	jal	ra,0000000023070EB8
	lui	s3,0002308E
	lui	s0,0002308E
	lui	a0,00023081
	addi	a2,s3,+000004B4
	addi	a1,s0,+00000434
	addi	a0,a0,-0000045C
	jal	ra,000000002304B718
	lui	s6,0002308E
	lui	s4,0002308E
	lui	a0,00023081
	addi	a2,s6,+00000534
	addi	a1,s4,+000004B4
	addi	a0,a0,-00000444
	jal	ra,000000002304B718
	lui	s9,0002308E
	lui	s5,0002308E
	lui	a0,00023081
	addi	a2,s9,+00000534
	addi	a1,s5,+00000534
	addi	a0,a0,-0000042C
	jal	ra,000000002304B718
	addi	s0,s0,+00000434
	addi	s3,s3,+000004B4
	addi	s8,zero,+00000080
	lui	s7,00023081
	addi	s6,s6,+00000534
	addi	s9,s9,+00000534

l2302AA82:
	bgeu	s0,s3,000000002302AA9C

l2302AA86:
	c.lw	s0,4(a0)
	jal	ra,000000002307132C
	bgeu	s8,a0,000000002302AAB6

l2302AA90:
	lui	a0,00023081
	addi	a0,a0,-00000414
	jal	ra,000000002304B718

l2302AA9C:
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

l2302AAB6:
	lbu	a5,sp,+00000000
	c.beqz	a5,000000002302AADA

l2302AABC:
	c.lw	s0,4(a1)
	c.mv	a0,sp
	jal	ra,0000000023071100
	c.bnez	a0,000000002302AACA

l2302AAC6:
	c.addi	s0,00000008
	c.j	000000002302AA82

l2302AACA:
	c.mv	a0,sp
	jal	ra,000000002307132C
	c.mv	a2,a0
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,0000000023070EB8

l2302AADA:
	c.lw	s0,0(a5)
	c.lw	s0,4(a1)
	addi	a0,s7,-00000400
	lbu	a2,a5,+00000000
	jal	ra,000000002304B718
	lbu	a5,sp,+00000000
	c.bnez	a5,000000002302AB14

l2302AAF0:
	c.lw	s0,4(a1)
	c.mv	a0,sp
	addi	s1,s4,+000004B4
	jal	ra,000000002307127C

l2302AAFC:
	bgeu	s1,s6,000000002302AAC6

l2302AB00:
	c.lw	s0,4(a1)
	c.lw	s1,4(a0)
	jal	ra,0000000023071A84
	c.lw	s1,4(a5)
	c.mv	a1,a0
	beq	a0,a5,000000002302AB20

l2302AB10:
	c.addi	s1,00000008
	c.j	000000002302AAFC

l2302AB14:
	c.lw	s0,4(a0)
	c.mv	a1,sp
	jal	ra,0000000023071100
	c.beqz	a0,000000002302AAC6

l2302AB1E:
	c.j	000000002302AAF0

l2302AB20:
	c.lw	s1,0(a5)
	addi	a0,s7,-00000400
	addi	s2,s5,+00000534
	lbu	a2,a5,+00000000
	jal	ra,000000002304B718

l2302AB32:
	bgeu	s2,s9,000000002302AB10

l2302AB36:
	c.lw	s1,4(a1)
	lw	a0,s2,+00000004
	jal	ra,0000000023071A84
	lw	a5,s2,+00000004
	c.mv	a1,a0
	bne	a0,a5,000000002302AB5A

l2302AB4A:
	lw	a5,s2,+00000000
	addi	a0,s7,-00000400
	lbu	a2,a5,+00000000
	jal	ra,000000002304B718

l2302AB5A:
	c.addi	s2,00000008
	c.j	000000002302AB32

;; cmd_blog_set_level: 2302AB5E
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
	beq	a2,a5,000000002302ABA0

l2302AB76:
	lui	a0,00023081
	addi	a0,a0,-000003EC
	jal	ra,000000002304B718

l2302AB82:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	lui	a0,00023081
	addi	a0,a0,-00000368
	c.addi16sp	00000020
	jal	zero,000000002304B718

l2302ABA0:
	c.lw	a3,4(a0)
	lui	a1,00023081
	addi	a1,a1,-000003DC
	c.mv	s1,a3
	jal	ra,0000000023071100
	c.beqz	a0,000000002302AC2E

l2302ABB2:
	c.lw	s1,4(a0)
	lui	a1,00023081
	addi	a1,a1,-000003D8
	jal	ra,0000000023071100
	c.li	s3,00000001
	c.beqz	a0,000000002302AC30

l2302ABC4:
	c.lw	s1,4(a0)
	lui	a1,00023081
	addi	a1,a1,-000003D0
	jal	ra,0000000023071100
	c.li	s3,00000002
	c.beqz	a0,000000002302AC30

l2302ABD6:
	c.lw	s1,4(a0)
	lui	a1,00023081
	addi	a1,a1,-000003C8
	jal	ra,0000000023071100
	c.li	s3,00000003
	c.beqz	a0,000000002302AC30

l2302ABE8:
	c.lw	s1,4(a0)
	lui	a1,00023081
	addi	a1,a1,-000003C0
	jal	ra,0000000023071100
	c.li	s3,00000004
	c.beqz	a0,000000002302AC30

l2302ABFA:
	c.lw	s1,4(a0)
	lui	a1,00023081
	addi	a1,a1,-000003B8
	jal	ra,0000000023071100
	c.li	s3,00000005
	c.beqz	a0,000000002302AC30

l2302AC0C:
	c.lw	s1,4(a0)
	lui	a1,00023081
	addi	a1,a1,-000003B0
	jal	ra,0000000023071100
	c.li	s3,00000006
	c.beqz	a0,000000002302AC30

l2302AC1E:
	c.lw	s1,4(a1)
	lui	a0,00023081
	addi	a0,a0,-000003A8

l2302AC28:
	jal	ra,000000002304B718
	c.j	000000002302AB82

l2302AC2E:
	c.li	s3,00000000

l2302AC30:
	c.lw	s1,8(s0)
	c.mv	a0,s0
	jal	ra,000000002307132C
	c.li	a5,00000000
	c.li	a4,00000000
	addi	a3,zero,+0000002E

l2302AC40:
	blt	a4,a0,000000002302AC5E

l2302AC44:
	c.beqz	a5,000000002302AC70

l2302AC46:
	c.li	a4,00000001
	beq	a5,a4,000000002302AC9A

l2302AC4C:
	c.li	a4,00000002
	beq	a5,a4,000000002302ACAC

l2302AC52:
	lui	a0,00023081
	c.lw	s1,8(a1)
	addi	a0,a0,-00000388
	c.j	000000002302AC28

l2302AC5E:
	add	a2,s0,a4
	lbu	a2,a2,+00000000
	bne	a2,a3,000000002302AC6C

l2302AC6A:
	c.addi	a5,00000001

l2302AC6C:
	c.addi	a4,00000001
	c.j	000000002302AC40

l2302AC70:
	lui	s0,0002308E
	lui	s2,0002308E
	addi	s0,s0,+000004B4
	addi	s2,s2,+00000434

l2302AC80:
	sub	s0,s0,s2
	c.srai	s0,00000003
	c.addi	s0,FFFFFFFF
	c.li	s6,00000000

l2302AC8A:
	c.lw	s1,8(a1)
	bge	s0,s6,000000002302ACBE

l2302AC90:
	lui	a0,00023081
	addi	a0,a0,-00000354
	c.j	000000002302AC28

l2302AC9A:
	lui	s0,0002308E
	lui	s2,0002308E
	addi	s0,s0,+00000534
	addi	s2,s2,+000004B4
	c.j	000000002302AC80

l2302ACAC:
	lui	s0,0002308E
	lui	s2,0002308E
	addi	s0,s0,+00000534
	addi	s2,s2,+00000534
	c.j	000000002302AC80

l2302ACBE:
	add	s5,s6,s0
	srai	s5,s5,00000001
	slli	s4,s5,00000003
	c.add	s4,s2
	lw	a0,s4,+00000004
	jal	ra,0000000023071100
	bge	a0,zero,000000002302ACDE

l2302ACD8:
	addi	s6,s5,+00000001
	c.j	000000002302AC8A

l2302ACDE:
	c.beqz	a0,000000002302ACE6

l2302ACE0:
	addi	s0,s5,-00000001
	c.j	000000002302AC8A

l2302ACE6:
	lw	a5,s4,+00000000
	lui	a0,00023081
	addi	a0,a0,-00000338
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
	jal	zero,000000002304B718

;; blog_init: 2302AD18
;;   Called from:
;;     230011AC (in bfl_main)
blog_init proc
	lui	a0,00023081
	c.addi	sp,FFFFFFF0
	c.li	a3,00000002
	c.li	a2,00000002
	c.li	a1,00000002
	addi	a0,a0,-0000048C
	c.swsp	ra,00000084
	jal	ra,000000002304B718
	lui	a5,0002308E
	lui	a4,0002308E
	addi	a5,a5,+00000434
	addi	a4,a4,+000004B4
	c.li	a3,00000002

l2302AD40:
	bltu	a5,a4,000000002302AD76

l2302AD44:
	lui	a5,0002308E
	lui	a4,0002308E
	addi	a5,a5,+000004B4
	addi	a4,a4,+00000534
	c.li	a3,00000002

l2302AD56:
	bltu	a5,a4,000000002302AD80

l2302AD5A:
	lui	a5,0002308E
	lui	a4,0002308E
	addi	a5,a5,+00000534
	addi	a4,a4,+00000534
	c.li	a3,00000002

l2302AD6C:
	bltu	a5,a4,000000002302AD8A

l2302AD70:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2302AD76:
	c.lw	a5,0(a2)
	c.addi	a5,00000008
	sb	a3,a2,+00000000
	c.j	000000002302AD40

l2302AD80:
	c.lw	a5,0(a2)
	c.addi	a5,00000008
	sb	a3,a2,+00000000
	c.j	000000002302AD56

l2302AD8A:
	c.lw	a5,0(a2)
	c.addi	a5,00000008
	sb	a3,a2,+00000000
	c.j	000000002302AD6C

;; ota_dump_cmd: 2302AD94
ota_dump_cmd proc
	jal	zero,0000000023036FEC

;; ota_tcp_cmd.part.0: 2302AD98
;;   Called from:
;;     2302B27A (in ota_tcp_cmd)
ota_tcp_cmd.part.0 proc
	c.addi16sp	FFFFFEB0
	sw	ra,sp,+0000014C
	sw	s0,sp,+00000148
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
	sw	s11,sp,+0000011C
	c.lw	a0,4(a0)
	jal	ra,000000002303A3BE
	c.bnez	a0,000000002302AE1A

l2302ADD6:
	lui	a0,00023072
	addi	a0,a0,+000006C8

l2302ADDE:
	jal	ra,00000000230520DC

l2302ADE2:
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
	lw	s11,sp,+0000011C
	c.addi16sp	00000150
	c.jr	ra

l2302AE1A:
	c.mv	s0,a0
	lui	a0,00023081
	c.li	a2,00000001
	c.mv	a1,sp
	addi	a0,a0,-000002E8
	jal	ra,0000000023054FB0
	c.beqz	a0,000000002302AE38

l2302AE2E:
	lui	a0,00023081
	addi	a0,a0,-000002E4
	c.j	000000002302ADDE

l2302AE38:
	c.li	a2,00000000
	c.li	a1,00000001
	c.li	a0,00000002
	jal	ra,000000002303B73A
	c.mv	s4,a0
	bge	a0,zero,000000002302AE5C

l2302AE48:
	lui	a0,00023072
	addi	a0,a0,+000006E0
	jal	ra,0000000023052118

l2302AE54:
	c.lwsp	zero,00000044
	jal	ra,000000002305514A
	c.j	000000002302ADE2

l2302AE5C:
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,0000000023070EB8
	c.lui	a0,00001000
	c.li	a5,00000002
	addi	a0,a0,-000002FB
	sb	a5,sp,+0000000D
	jal	ra,000000002303C332
	c.lw	s0,16(a5)
	sh	a0,sp,+0000000E
	c.addi4spn	a0,00000004
	c.lw	a5,0(a5)
	c.lw	a5,0(a5)
	c.swsp	a5,00000008
	c.swsp	a5,00000080
	jal	ra,000000002303FCA6
	c.mv	s1,a0
	addi	a0,zero,+00000200
	jal	ra,000000002303218A
	c.mv	s0,a0
	jal	ra,0000000023036FBE
	c.mv	s2,a0
	lui	a0,00023081
	c.mv	a1,s0
	addi	a0,a0,-000002C0
	jal	ra,0000000023052118
	lui	a0,00023081
	c.mv	a1,s2
	addi	a0,a0,-00000298
	jal	ra,0000000023052118
	c.addi4spn	a1,00000080
	c.li	a0,00000000
	jal	ra,0000000023036FC8
	c.beqz	a0,000000002302AED6

l2302AEC2:
	lui	a0,00023081
	addi	a0,a0,-00000278
	jal	ra,0000000023052118

l2302AECE:
	c.mv	a0,s0
	jal	ra,0000000023032272
	c.j	000000002302AE54

l2302AED6:
	lbu	a5,sp,+00000082
	c.addi4spn	a3,00000110
	lui	a0,00023081
	sltiu	a5,a5,+00000001
	slli	a4,a5,00000002
	c.addi	a5,00000004
	c.slli	a5,02
	c.add	a5,a3
	lw	a1,a5,-0000008C
	c.add	a4,a3
	addi	a0,a0,-00000254
	lw	s7,a4,-00000084
	c.swsp	a1,00000004
	jal	ra,0000000023052118
	lbu	a1,sp,+00000082
	lui	a0,00023081
	c.mv	a2,s7
	addi	a0,a0,-0000022C
	jal	ra,0000000023052118
	c.lwsp	s0,00000064
	lui	a0,00023081
	addi	a0,a0,-000001F4
	jal	ra,0000000023052118
	c.lwsp	zero,00000044
	jal	ra,000000002305519C
	lui	a0,00023081
	addi	a0,a0,-000001C8
	jal	ra,0000000023052118
	lui	a0,00023072
	c.mv	a1,s1
	addi	a0,a0,+000006F4
	jal	ra,0000000023052118
	c.li	a2,00000010
	c.addi4spn	a1,0000000C
	c.mv	a0,s4
	jal	ra,000000002303B3F6
	c.beqz	a0,000000002302AF62

l2302AF4E:
	lui	a0,00023072
	addi	a0,a0,+00000710
	jal	ra,0000000023052118
	c.mv	a0,s4
	jal	ra,000000002303B34E
	c.j	000000002302AECE

l2302AF62:
	c.addi4spn	a0,000000A4
	jal	ra,000000002304A7E2
	c.addi4spn	a0,000000A4
	jal	ra,000000002304A800
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.addi4spn	a0,0000001C
	jal	ra,0000000023070EB8
	c.li	s2,00000000
	c.li	s1,00000000
	c.li	s5,00000000
	c.li	s9,00000000
	lui	s6,00023074
	lui	s3,00023072
	lui	s8,00023081

l2302AF8E:
	addi	s10,zero,+00000200
	sub	a2,s10,s9
	add	a1,s0,s9
	c.mv	a0,s4
	jal	ra,000000002303B596
	c.mv	s11,a0
	bge	a0,zero,000000002302AFD0

l2302AFA6:
	lui	a5,00042020
	lw	a2,a5,-000002B0
	c.mv	a1,a0
	lui	a0,00023072
	addi	a0,a0,+0000072C
	jal	ra,0000000023052118

l2302AFBC:
	c.mv	a0,s4
	jal	ra,000000002303B34E
	c.mv	a0,s0
	jal	ra,0000000023032272
	c.addi4spn	a0,000000A4
	jal	ra,000000002304A7EC
	c.j	000000002302AE54

l2302AFD0:
	c.add	s1,a0
	c.bnez	a0,000000002302AFE4

l2302AFD4:
	lui	a0,00023081
	c.mv	a1,s1
	addi	a0,a0,-000001C0
	jal	ra,0000000023052118
	c.j	000000002302AFBC

l2302AFE4:
	lui	a5,00023072
	c.mv	a2,a0
	c.mv	a1,s1
	addi	a0,a5,+00000744
	jal	ra,0000000023052118
	c.add	s9,s11
	bne	s2,zero,000000002302B15E

l2302AFFA:
	addi	a4,zero,+000001FF
	bgeu	a4,s9,000000002302AF8E

l2302B002:
	beq	s9,s10,000000002302B016

l2302B006:
	lui	a0,00023081
	c.mv	a1,s9
	addi	a0,a0,-00000178
	jal	ra,0000000023052118

l2302B014:
	c.j	000000002302B014

l2302B016:
	c.li	a2,00000010
	c.mv	a1,s0
	c.addi4spn	a0,0000005C
	jal	ra,0000000023070C7C
	lui	a0,00023081
	addi	a0,a0,-00000148
	sb	zero,sp,+0000006C
	jal	ra,00000000230520DC
	c.addi4spn	a0,0000005C
	jal	ra,00000000230520DC
	addi	a0,s3,+000007FC
	jal	ra,00000000230520DC
	c.li	a2,00000004
	addi	a1,s0,+00000010
	c.addi4spn	a0,0000005C
	jal	ra,0000000023070C7C
	lui	a0,00023081
	addi	a0,a0,-00000128
	sb	zero,sp,+00000060
	jal	ra,00000000230520DC
	c.addi4spn	a0,0000005C
	jal	ra,00000000230520DC
	addi	a0,s3,+000007FC
	jal	ra,00000000230520DC
	addi	a1,s8,-000002F0
	c.addi4spn	a0,0000005C
	jal	ra,0000000023071A84
	c.li	a2,00000004
	addi	a1,s0,+00000014
	c.mv	s11,a0
	c.addi4spn	a0,00000008
	jal	ra,0000000023070C7C
	c.lwsp	s0,00000064
	lui	a0,00023081
	addi	a0,a0,-00000108
	jal	ra,0000000023052118
	c.li	a2,00000010
	addi	a1,s0,+00000020
	c.addi4spn	a0,0000005C
	jal	ra,0000000023070C7C
	lui	a0,00023081
	addi	a0,a0,-000000CC
	sb	zero,sp,+0000006C
	jal	ra,00000000230520DC
	c.addi4spn	a0,0000005C
	jal	ra,00000000230520DC
	addi	a0,s3,+000007FC
	jal	ra,00000000230520DC
	c.li	a2,00000010
	addi	a1,s0,+00000030
	c.addi4spn	a0,0000005C
	jal	ra,0000000023070C7C
	lui	a0,00023081
	addi	a0,a0,-000000AC
	sb	zero,sp,+0000006C
	jal	ra,00000000230520DC
	c.addi4spn	a0,0000005C
	jal	ra,00000000230520DC
	addi	a0,s3,+000007FC
	jal	ra,00000000230520DC
	addi	s9,s0,+00000040
	addi	a2,zero,+00000020
	c.mv	a1,s9
	c.addi4spn	a0,0000005C
	jal	ra,0000000023070C7C
	lui	a0,00023081
	addi	a0,a0,-0000008C
	sb	zero,sp,+0000007C
	addi	s10,zero,+00000020
	jal	ra,00000000230520DC

l2302B106:
	c.addi4spn	a5,0000005C
	add	a4,a5,s2
	lbu	a1,a4,+00000000
	addi	a0,s6,+00000530
	c.addi	s2,00000001
	jal	ra,0000000023052118
	bne	s2,s10,000000002302B106

l2302B11E:
	addi	a0,s3,+000007FC
	jal	ra,00000000230520DC
	addi	a2,zero,+00000020
	c.mv	a1,s9
	c.addi4spn	a0,0000003C
	jal	ra,0000000023070C7C
	lui	a5,00023081
	addi	a2,a5,-000002F0
	bne	s11,zero,000000002302B146

l2302B13E:
	lui	a2,00023081
	addi	a2,a2,-000002EC

l2302B146:
	c.lwsp	s0,00000064
	lui	a0,00023081
	addi	a0,a0,-00000070
	addi	s1,s1,-00000200
	jal	ra,0000000023052118
	c.li	s9,00000000
	c.li	s2,00000001
	c.j	000000002302AF8E

l2302B15E:
	c.lwsp	s0,000000C4
	beq	a4,s1,000000002302B180

l2302B164:
	addi	a4,zero,+000001FF
	bgeu	a4,s9,000000002302AF8E

l2302B16C:
	beq	s9,s10,000000002302B180

l2302B170:
	lui	a0,00023081
	c.mv	a1,s9
	addi	a0,a0,-00000178
	jal	ra,0000000023052118

l2302B17E:
	c.j	000000002302B17E

l2302B180:
	lui	a0,00023081
	c.mv	a3,s0
	add	a2,s7,s5
	c.mv	a1,s9
	addi	a0,a0,-00000038
	jal	ra,0000000023052118
	c.mv	a2,s9
	c.mv	a1,s0
	c.addi4spn	a0,000000A4
	jal	ra,000000002304B584
	c.lwsp	zero,00000044
	c.mv	a2,s9
	c.mv	a1,s5
	c.mv	a3,s0
	jal	ra,00000000230551B0
	c.lwsp	s0,000000E4
	c.add	s5,s9
	c.li	s9,00000000
	bne	s1,a5,000000002302AF8E

l2302B1B4:
	c.addi4spn	a1,0000001C
	c.addi4spn	a0,000000A4
	jal	ra,000000002304B58C
	lui	a0,00023081
	addi	a0,a0,-00000018
	jal	ra,00000000230520DC
	addi	s11,zero,+00000020

l2302B1CC:
	c.addi4spn	a5,0000001C
	c.add	a5,s9
	lbu	a1,a5,+00000000
	addi	a0,s6,+00000530
	c.addi	s9,00000001
	jal	ra,0000000023052118
	bne	s9,s11,000000002302B1CC

l2302B1E2:
	lui	a0,00023081
	addi	a0,a0,+00000008
	jal	ra,00000000230520DC
	c.li	s9,00000000
	addi	s11,zero,+00000020

l2302B1F4:
	c.addi4spn	a5,0000003C
	c.add	a5,s9
	lbu	a1,a5,+00000000
	addi	a0,s6,+00000530
	c.addi	s9,00000001
	jal	ra,0000000023052118
	bne	s9,s11,000000002302B1F4

l2302B20A:
	addi	a0,s3,+000007FC
	jal	ra,00000000230520DC
	addi	a2,zero,+00000020
	c.addi4spn	a1,0000001C
	c.addi4spn	a0,0000003C
	jal	ra,0000000023070BF4
	c.beqz	a0,000000002302B22E

l2302B220:
	lui	a0,00023081
	addi	a0,a0,+00000028
	jal	ra,0000000023052118
	c.j	000000002302AFBC

l2302B22E:
	lui	a0,00023081
	addi	a0,a0,+0000004C
	jal	ra,0000000023052118
	c.lwsp	s0,00000064
	lui	a0,00023081
	addi	a0,a0,+00000078
	c.swsp	a1,000000CC
	jal	ra,0000000023052118
	c.addi4spn	a0,00000080
	jal	ra,0000000023036C4C
	lui	a0,00023081
	addi	a0,a0,+000000B0
	jal	ra,0000000023052118
	jal	ra,0000000023037080
	c.li	s9,00000000
	c.j	000000002302AF8E

;; ota_tcp_cmd: 2302B264
ota_tcp_cmd proc
	c.li	a5,00000002
	beq	a2,a5,000000002302B278

l2302B26A:
	c.lw	a3,0(a1)
	lui	a0,00023081
	addi	a0,a0,+000000C8
	jal	zero,0000000023052118

l2302B278:
	c.mv	a0,a3
	jal	zero,000000002302AD98

;; bl_sys_ota_cli_init: 2302B27E
;;   Called from:
;;     23000856 (in aos_loop_proc)
bl_sys_ota_cli_init proc
	c.li	a0,00000000
	c.jr	ra

;; cmd_sys_time_now: 2302B282
cmd_sys_time_now proc
	lui	a0,00023081
	c.addi16sp	FFFFFFD0
	c.li	a5,00000000
	c.li	a6,00000000
	addi	a0,a0,+0000012C
	c.swsp	ra,00000094
	c.swsp	a5,00000000
	c.swsp	a6,00000080
	jal	ra,00000000230520DC
	c.mv	a0,sp
	c.jal	000000002302B2F0
	c.lwsp	zero,00000044
	c.lwsp	tp,00000064
	addi	a2,zero,+000003E8
	c.li	a3,00000000
	jal	ra,000000002306D260
	c.addi4spn	a1,0000000C
	jal	ra,000000002304BA80
	c.lwsp	a2,00000130
	c.addi16sp	00000030
	c.jr	ra

;; bl_sys_time_cli_init: 2302B2B8
;;   Called from:
;;     23000852 (in aos_loop_proc)
bl_sys_time_cli_init proc
	c.li	a0,00000000
	c.jr	ra

;; bl_sys_time_update: 2302B2BC
;;   Called from:
;;     2304A4C8 (in sntp_recv)
bl_sys_time_update proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	jal	ra,00000000230302E8
	lui	a5,0004200E
	addi	a5,a5,-000001F8
	c.sw	a5,0(a0)
	sw	zero,a5,+00000004
	lui	a5,0004200E
	sw	s0,a5,+00000DF0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	sw	s1,a5,+00000DF4
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bl_sys_time_get: 2302B2F0
;;   Called from:
;;     2302B29C (in cmd_sys_time_now)
bl_sys_time_get proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	addi	s0,s0,-00000210
	c.lw	s0,0(a5)
	c.lw	s0,4(a4)
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.or	a5,a4
	c.beqz	a5,000000002302B33C

l2302B308:
	c.mv	s1,a0
	jal	ra,00000000230302E8
	lui	a5,0004200E
	lw	a5,a5,-000001F8
	c.lw	s0,0(a4)
	sub	a5,a0,a5
	c.lw	s0,4(a0)
	srai	a3,a5,0000001F
	c.add	a4,a5
	c.add	a3,a0
	sltu	a5,a4,a5
	c.add	a5,a3
	c.sw	s1,0(a4)
	c.sw	s1,4(a5)
	c.li	a0,00000000

l2302B332:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2302B33C:
	c.li	a0,FFFFFFFF
	c.j	000000002302B332

;; bl_sys_time_sync_state: 2302B340
;;   Called from:
;;     23030356 (in xTaskIncrementTick)
bl_sys_time_sync_state proc
	lui	a5,0004200E
	lw	a5,a5,-00000200
	c.beqz	a5,000000002302B39E

l2302B34A:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s1,a0
	jal	ra,000000002303100A
	jal	ra,00000000230302E8
	c.mv	s2,a0
	jal	ra,0000000023038ED4
	c.mv	s0,a0
	jal	ra,000000002303101E
	lui	a5,0004200E
	lui	a4,0004200E
	lw	a5,a5,-00000204
	lw	a4,a4,-00000208
	c.li	a0,00000000
	sub	a3,s2,a5
	sub	a4,s0,a4
	bgeu	a3,a4,000000002302B392

l2302B388:
	sub	a5,a5,s2
	c.add	a5,a4
	c.sw	s1,0(a5)
	c.li	a0,00000001

l2302B392:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2302B39E:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; cli_command_get: 2302B3A2
;;   Called from:
;;     2302B7CE (in proc_onecmd)
;;     2302BFF8 (in help_cmd)
;;     2302C4FC (in cli_main_input)
cli_command_get proc
	c.li	a5,FFFFFFFF
	blt	a0,zero,000000002302B3D0

l2302B3A8:
	lui	a5,0004200E
	lw	a4,a5,-000001F0
	c.li	a5,FFFFFFFF
	c.lw	a4,44(a3)
	addi	a2,a3,+00000008
	bgeu	a0,a2,000000002302B3D0

l2302B3BC:
	bgeu	a0,a3,000000002302B3D4

l2302B3C0:
	c.beqz	a1,000000002302B3C6

l2302B3C2:
	c.li	a5,00000001
	c.sw	a1,0(a5)

l2302B3C6:
	c.li	a5,0000000C
	add	a0,a0,a5
	c.lw	a4,8(a5)
	c.add	a5,a0

l2302B3D0:
	c.mv	a0,a5
	c.jr	ra

l2302B3D4:
	c.beqz	a1,000000002302B3DA

l2302B3D6:
	sw	zero,a1,+00000000

l2302B3DA:
	c.lw	a4,44(a5)
	c.sub	a0,a5
	c.slli	a0,02
	c.add	a0,a4
	c.lw	a0,12(a5)
	c.j	000000002302B3D0

;; exit_cmd: 2302B3E6
exit_cmd proc
	lui	a5,0004200E
	c.li	a4,00000001
	sw	a4,a5,+00000E14
	c.jr	ra

;; cb_idnoe: 2302B3F2
cb_idnoe proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.lw	a0,0(a5)
	c.bnez	a5,000000002302B41A

l2302B3FA:
	c.li	a5,00000001
	c.sw	a0,0(a5)
	lui	a0,00023081
	addi	a0,a0,+000001BC
	c.swsp	a1,00000084
	jal	ra,0000000023052118
	lui	a0,00023081
	addi	a0,a0,+000001DC
	jal	ra,0000000023052118
	c.lwsp	a2,00000064

l2302B41A:
	lbu	a5,a1,+00000010
	c.li	a2,00000001
	c.li	a4,0000001C
	addi	a3,a5,-00000001
	andi	a3,a3,+000000FF
	bgeu	a2,a3,000000002302B43A

l2302B42E:
	c.li	a3,00000003
	addi	a4,zero,+00000050
	beq	a5,a3,000000002302B43A

l2302B438:
	c.li	a4,00000000

l2302B43A:
	c.li	a3,00000001
	c.lw	a1,8(a2)
	beq	a5,a3,000000002302B46C

l2302B442:
	c.li	a3,00000002
	beq	a5,a3,000000002302B476

l2302B448:
	c.li	a3,00000003
	beq	a5,a3,000000002302B480

l2302B44E:
	lui	a3,0002307D
	addi	a3,a3,+000006E4

l2302B456:
	lui	a0,00023081
	c.mv	a1,a4
	addi	a0,a0,+00000234
	jal	ra,0000000023052118
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2302B46C:
	lui	a3,00023081
	addi	a3,a3,+000001A0
	c.j	000000002302B456

l2302B476:
	lui	a3,00023081
	addi	a3,a3,+000001AC
	c.j	000000002302B456

l2302B480:
	lui	a3,00023081
	addi	a3,a3,+00000194
	c.j	000000002302B456

;; ota_cmd: 2302B48A
ota_cmd proc
	lui	a1,0002302B
	lui	a0,00023081
	c.lui	a3,00001000
	c.li	a2,00000000
	addi	a1,a1,+000004A2
	addi	a0,a0,+0000058C
	jal	zero,000000002304D1C0

;; tftp_ota_thread: 2302B4A2
tftp_ota_thread proc
	c.li	a0,00000000
	jal	zero,000000002304D27A

;; cat_cmd: 2302B4A8
cat_cmd proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.li	a5,00000002
	c.mv	s1,a3
	beq	a2,a5,000000002302B4C4

l2302B4B8:
	lui	a0,00023081
	addi	a0,a0,+00000164
	jal	ra,0000000023052118

l2302B4C4:
	c.lw	s1,4(a0)
	c.li	a1,00000000
	jal	ra,000000002304C198
	c.mv	s0,a0
	blt	a0,zero,000000002302B4F6

l2302B4D2:
	lui	s1,00023081

l2302B4D6:
	c.li	a2,00000001
	addi	a1,sp,+0000000F
	c.mv	a0,s0
	jal	ra,000000002304C2B6
	c.li	a5,00000001
	bne	a0,a5,000000002302B50E

l2302B4E8:
	lbu	a1,sp,+0000000F
	addi	a0,s1,+00000190
	jal	ra,0000000023052118
	c.j	000000002302B4D6

l2302B4F6:
	c.lw	s1,4(a1)
	lui	a0,00023081
	addi	a0,a0,+0000017C
	jal	ra,0000000023052118

l2302B504:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2302B50E:
	lui	a0,00023072
	addi	a0,a0,+000007FC
	jal	ra,0000000023052118
	c.mv	a0,s0
	jal	ra,000000002304C25E
	c.j	000000002302B504

;; hexdump_cmd: 2302B522
hexdump_cmd proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.li	a5,00000002
	c.mv	s1,a3
	beq	a2,a5,000000002302B53E

l2302B532:
	lui	a0,00023081
	addi	a0,a0,+00000164
	jal	ra,0000000023052118

l2302B53E:
	c.lw	s1,4(a0)
	c.li	a1,00000000
	jal	ra,000000002304C198
	c.mv	s0,a0
	bge	a0,zero,000000002302B564

l2302B54C:
	c.lw	s1,4(a1)
	lui	a0,00023081
	addi	a0,a0,+0000017C
	jal	ra,0000000023052118

l2302B55A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2302B564:
	c.li	a2,00000008
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	jal	ra,0000000023070EB8
	c.addi4spn	a2,00000008
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002304C312
	c.lwsp	a2,000000A4
	c.lwsp	s0,00000084
	c.lw	s1,4(a1)
	lui	a0,00023081
	addi	a0,a0,+00000414
	jal	ra,0000000023052118
	c.lwsp	s0,00000044
	c.lwsp	a2,00000064
	jal	ra,000000002304B990
	c.mv	a0,s0
	jal	ra,000000002304C25E
	c.j	000000002302B55A

;; aos_cli_init: 2302B59A
;;   Called from:
;;     2300081A (in aos_loop_proc)
aos_cli_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	a0,zero,+00000244
	lui	s0,0004200E
	c.swsp	ra,00000084
	addi	s0,s0,-000001F0
	jal	ra,000000002304D434
	c.sw	s0,0(a0)
	c.li	a5,0000000C
	c.beqz	a0,000000002302B5F2

l2302B5B6:
	addi	a2,zero,+00000244
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	c.lw	s0,0(a4)
	lui	a5,0002308E
	addi	a3,a5,-00000130
	lui	a5,0002308E
	addi	a5,a5,+000003E0
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

l2302B5F2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; aos_cli_event_cb_read_get: 2302B5FC
;;   Called from:
;;     2300081E (in aos_loop_proc)
aos_cli_event_cb_read_get proc
	lui	a0,0002302D
	addi	a0,a0,-000007E8
	c.jr	ra

;; cli_putstr: 2302B606
;;   Called from:
;;     2302B6AE (in ps_cmd)
;;     2302B74E (in aos_cli_printf)
cli_putstr proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s2,a0
	jal	ra,000000002307132C
	c.mv	s1,a0
	c.li	s0,00000000
	lui	s3,0004200E

l2302B620:
	blt	s0,s1,000000002302B634

l2302B624:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2302B634:
	lw	a0,s3,-000001E4
	sub	a2,s1,s0
	add	a1,s2,s0
	jal	ra,000000002304C2E4
	blt	a0,zero,000000002302B624

l2302B648:
	c.add	s0,a0
	c.j	000000002302B620

;; ps_cmd: 2302B64C
ps_cmd proc
	c.addi	sp,FFFFFFF0
	addi	a0,zero,+00000600
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	jal	ra,000000002303218A
	c.beqz	a0,000000002302B6CE

l2302B660:
	lui	s2,00023081
	addi	a1,s2,+00000680
	c.mv	s1,a0
	jal	ra,000000002307127C
	c.mv	a0,s1
	jal	ra,000000002307132C
	add	s0,s1,a0
	addi	a0,s2,+00000680
	jal	ra,000000002307132C
	c.sub	a0,s0
	c.li	a5,0000000C
	addi	a3,zero,+00000020

l2302B688:
	add	a4,s0,a0
	bge	a5,a4,000000002302B6C2

l2302B690:
	lui	s2,00023081
	addi	a1,s2,+00000688
	c.mv	a0,s0
	jal	ra,000000002307127C
	addi	a0,s2,+00000688
	jal	ra,000000002307132C
	c.add	a0,s0
	jal	ra,000000002303103A
	c.mv	a0,s1
	jal	ra,000000002302B606
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023032272

l2302B6C2:
	sb	a3,s0,+00000000
	c.addi	s0,00000001
	sb	zero,s0,+00000000
	c.j	000000002302B688

l2302B6CE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; aos_cli_printf: 2302B6DA
;;   Called from:
;;     2302B820 (in proc_onecmd)
;;     2302B870 (in proc_onecmd)
;;     2302BA96 (in ls_cmd)
;;     2302BACC (in uptime_cmd)
;;     2302BB52 (in uptime_cmd)
;;     2302BB70 (in reset_cmd)
;;     2302BB88 (in poweroff_cmd)
;;     2302BBA0 (in reboot_cmd)
;;     2302BBC2 (in version_cmd)
;;     2302BBCE (in version_cmd)
;;     2302BBDA (in version_cmd)
;;     2302BBFA (in version_cmd)
;;     2302BC16 (in version_cmd)
;;     2302BC46 (in version_cmd)
;;     2302BC5E (in devname_cmd)
;;     2302BC94 (in echo_cmd)
;;     2302BCBC (in echo_cmd)
;;     2302BCEE (in echo_cmd)
;;     2302BD5E (in mmem_cmd)
;;     2302BDA4 (in mmem_cmd)
;;     2302BE16 (in pmem_cmd)
;;     2302BE8C (in pmem_cmd)
;;     2302BE98 (in pmem_cmd)
;;     2302BEA4 (in pmem_cmd)
;;     2302BEBE (in pmem_cmd)
;;     2302BECA (in pmem_cmd)
;;     2302BED6 (in pmem_cmd)
;;     2302BF02 (in pmem_cmd)
;;     2302BF10 (in pmem_cmd)
;;     2302BF1C (in pmem_cmd)
;;     2302BF54 (in help_cmd)
;;     2302BF72 (in help_cmd)
;;     2302BF98 (in help_cmd)
;;     2302BFAA (in help_cmd)
;;     2302BFBA (in help_cmd)
;;     2302C012 (in help_cmd)
;;     2302C170 (in cli_main_input)
;;     2302C472 (in cli_main_input)
;;     2302C4F2 (in cli_main_input)
;;     2302C52A (in cli_main_input)
;;     2302C53E (in cli_main_input)
;;     2302C550 (in cli_main_input)
;;     2302C584 (in cli_main_input)
;;     2302C590 (in cli_main_input)
;;     2302C728 (in cli_main_input)
;;     2302C734 (in cli_main_input)
;;     2302C812 (in cli_main_input)
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
	jal	ra,0000000023070EB8
	lui	a5,0004200E
	lbu	a5,a5,-000001E7
	c.li	a0,00000000
	c.beqz	a5,000000002302B734

l2302B71E:
	lui	s0,00042012
	addi	a1,s0,+000003EC
	c.addi4spn	a0,00000010
	jal	ra,000000002307127C
	addi	a0,s0,+000003EC
	jal	ra,000000002307132C

l2302B734:
	addi	a1,zero,+00000100
	c.addi4spn	a5,00000010
	c.addi4spn	a3,00000124
	c.sub	a1,a0
	c.mv	a2,s1
	c.add	a0,a5
	c.swsp	a3,00000084
	jal	ra,0000000023051BA2
	bge	zero,a0,000000002302B752

l2302B74C:
	c.addi4spn	a0,00000010
	jal	ra,000000002302B606

l2302B752:
	lw	ra,sp,+0000011C
	lw	s0,sp,+00000118
	lw	s1,sp,+00000114
	c.li	a0,00000000
	c.addi16sp	00000140
	c.jr	ra

;; proc_onecmd: 2302B764
;;   Called from:
;;     2302C6FE (in cli_main_input)
proc_onecmd proc
	bge	zero,a0,000000002302B84C

l2302B768:
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,0004200E
	lw	a5,s0,-000001F0
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
	addi	s0,s0,-000001F0
	c.bnez	a5,000000002302B79C

l2302B790:
	lui	a0,00023072
	addi	a0,a0,+000007FC
	jal	ra,0000000023052118

l2302B79C:
	c.lw	s1,0(a0)
	addi	a1,zero,+0000002E
	c.li	s5,00000000
	jal	ra,0000000023070F94
	lw	s6,s1,+00000000
	c.beqz	a0,000000002302B7B2

l2302B7AE:
	sub	s5,a0,s6

l2302B7B2:
	c.li	s3,00000000
	c.li	s4,00000000

l2302B7B6:
	c.lw	s0,0(a4)
	c.lw	a4,44(a5)
	c.addi	a5,00000008
	bgeu	s3,a5,000000002302B7C6

l2302B7C0:
	c.lw	a4,48(a5)
	bltu	s4,a5,000000002302B7CA

l2302B7C6:
	c.li	a0,00000001
	c.j	000000002302B836

l2302B7CA:
	c.li	a1,00000000
	c.mv	a0,s3
	jal	ra,000000002302B3A2
	c.mv	s7,a0
	c.lw	a0,0(a0)
	c.beqz	a0,000000002302B7E8

l2302B7D8:
	beq	s5,zero,000000002302B7EC

l2302B7DC:
	c.mv	a2,s5
	c.mv	a1,s6
	jal	ra,00000000230713B8

l2302B7E4:
	c.beqz	a0,000000002302B850

l2302B7E6:
	c.addi	s4,00000001

l2302B7E8:
	c.addi	s3,00000001
	c.j	000000002302B7B6

l2302B7EC:
	c.mv	a1,s6
	jal	ra,0000000023071100
	c.j	000000002302B7E4

l2302B7F4:
	addi	a2,zero,+00000200
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	c.lw	s0,0(a4)
	lw	a5,s7,+00000008
	c.mv	a3,s1
	lw	a0,a4,+00000138
	c.mv	a2,s2
	addi	a1,zero,+00000200
	c.jalr	a5
	c.lw	s0,0(a5)
	lui	a0,00023086
	addi	a0,a0,-00000328
	lw	a1,a5,+00000138
	jal	ra,000000002302B6DA
	c.lw	s0,0(a5)
	lw	a0,a5,+00000138
	jal	ra,000000002304D438
	c.lw	s0,0(a5)
	c.li	a0,00000000
	sw	zero,a5,+00000138

l2302B836:
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

l2302B84C:
	c.li	a0,00000000
	c.jr	ra

l2302B850:
	addi	a0,zero,+00000200
	lw	s3,s0,+00000000
	jal	ra,000000002304D434
	c.lw	s0,0(a5)
	sw	a0,s3,+00000138
	lw	a0,a5,+00000138
	c.bnez	a0,000000002302B7F4

l2302B868:
	lui	a0,00023081
	addi	a0,a0,+00000660
	jal	ra,000000002302B6DA
	c.j	000000002302B7C6

;; ls_cmd: 2302B876
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
	jal	ra,000000002303218A
	c.mv	s0,a0
	lui	a0,00023072
	addi	a2,zero,+00000058
	c.li	a1,00000000
	addi	a0,a0,-00000108
	jal	ra,0000000023070EB8
	addi	a2,zero,+00000080
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,0000000023070EB8
	c.li	a5,00000002
	bne	s1,a5,000000002302BA9C

l2302B8C0:
	lw	a0,s2,+00000004
	lui	s1,00023081
	addi	a1,s1,+0000043C
	jal	ra,0000000023071100
	c.bnez	a0,000000002302B976

l2302B8D2:
	addi	a0,s1,+0000043C
	jal	ra,000000002304C44E
	c.mv	s2,a0
	c.beqz	a0,000000002302B968

l2302B8DE:
	lui	a0,00023081
	addi	a0,a0,+000001BC
	jal	ra,0000000023052118
	lui	a0,00023081
	addi	a0,a0,+000001DC
	jal	ra,0000000023052118
	lui	s4,00023081
	lui	s3,00023081
	lui	s5,00023081

l2302B902:
	c.mv	a0,s2
	jal	ra,000000002304C56E
	c.beqz	a0,000000002302B944

l2302B90A:
	addi	s1,a0,+00000005
	addi	a1,zero,+0000007F
	c.mv	a3,s1
	addi	a2,s4,+00000444
	c.addi4spn	a0,00000010
	jal	ra,000000002305216A
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	jal	ra,000000002304C394
	c.bnez	a0,000000002302B902

l2302B928:
	c.lw	s0,4(a5)
	c.lw	s0,16(a1)
	c.mv	a2,s1
	slli	a4,a5,00000011
	addi	a0,s5,+00000450
	blt	a4,zero,000000002302B93E

l2302B93A:
	addi	a0,s3,+0000046C

l2302B93E:
	jal	ra,0000000023052118
	c.j	000000002302B902

l2302B944:
	c.mv	a0,s2

l2302B946:
	jal	ra,000000002304C4FE

l2302B94A:
	c.mv	a0,s0
	jal	ra,0000000023032272
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

l2302B968:
	lui	a0,00023081
	addi	a0,a0,+00000484

l2302B970:
	jal	ra,0000000023052118
	c.j	000000002302B94A

l2302B976:
	lw	s3,s2,+00000004
	lui	s1,00023081
	addi	a0,s1,+0000049C
	jal	ra,000000002307132C
	c.mv	a2,a0
	addi	a1,s1,+0000049C
	c.mv	a0,s3
	jal	ra,0000000023070BF4
	lw	a5,s2,+00000004
	bne	a0,zero,000000002302BA6E

l2302B99A:
	c.mv	a0,a5
	jal	ra,000000002304C44E
	c.mv	s3,a0
	c.beqz	a0,000000002302BA64

l2302B9A4:
	lui	a0,00023081
	addi	a0,a0,+000001BC
	jal	ra,0000000023052118
	lui	a0,00023081
	addi	a0,a0,+000001DC
	jal	ra,0000000023052118
	lui	s4,00023086
	addi	s5,zero,+0000002F
	lui	s6,00023081
	lui	s7,00023081

l2302B9CC:
	c.mv	a0,s3
	jal	ra,000000002304C56E
	c.mv	s1,a0
	c.beqz	a0,000000002302BA60

l2302B9D6:
	addi	a2,zero,+00000080
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,0000000023070EB8
	lw	a3,s2,+00000004
	addi	a2,s4,-00000328
	addi	a1,zero,+0000007F
	c.addi4spn	a0,00000010
	jal	ra,000000002305216A
	c.addi4spn	a0,00000010
	jal	ra,000000002307132C
	c.addi4spn	a5,00000090
	c.add	a0,a5
	lbu	a5,a0,-00000081
	beq	a5,s5,000000002302BA14

l2302BA06:
	c.addi4spn	a0,00000010
	jal	ra,000000002307132C
	c.addi4spn	a5,00000090
	c.add	a0,a5
	sb	s5,a0,+00000F80

l2302BA14:
	c.addi4spn	a0,00000010
	jal	ra,000000002307132C
	c.mv	s8,a0
	c.addi4spn	a0,00000010
	jal	ra,000000002307132C
	c.addi4spn	a5,00000010
	c.addi	s1,00000005
	addi	a1,zero,+0000007F
	c.sub	a1,a0
	c.mv	a3,s1
	addi	a2,s4,-00000328
	add	a0,a5,s8
	jal	ra,000000002305216A
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	jal	ra,000000002304C394
	c.bnez	a0,000000002302B9CC

l2302BA44:
	c.lw	s0,4(a5)
	c.lw	s0,16(a1)
	c.mv	a2,s1
	slli	a4,a5,00000011
	addi	a0,s7,+00000450
	blt	a4,zero,000000002302BA5A

l2302BA56:
	addi	a0,s6,+0000046C

l2302BA5A:
	jal	ra,0000000023052118
	c.j	000000002302B9CC

l2302BA60:
	c.mv	a0,s3
	c.j	000000002302B946

l2302BA64:
	lui	a0,00023081
	addi	a0,a0,+000004A4
	c.j	000000002302B970

l2302BA6E:
	lui	a1,00023086
	addi	a1,a1,-000002D0
	c.mv	a0,a5
	jal	ra,0000000023071100
	c.bnez	a0,000000002302BA8E

l2302BA7E:
	lui	a0,0002302B
	c.addi4spn	a1,0000000C
	addi	a0,a0,+000003F2
	jal	ra,000000002304C70A
	c.j	000000002302B94A

l2302BA8E:
	lui	a0,00023081
	addi	a0,a0,+000004BC

l2302BA96:
	jal	ra,000000002302B6DA
	c.j	000000002302B94A

l2302BA9C:
	c.li	a5,00000001
	beq	s1,a5,000000002302BA7E

l2302BAA2:
	lui	a0,00023081
	addi	a0,a0,+00000164
	c.j	000000002302BA96

;; uptime_cmd: 2302BAAC
uptime_cmd proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	jal	ra,000000002304D43C
	c.mv	s0,a0
	c.mv	a2,a0
	lui	a0,00023082
	c.mv	a3,a1
	addi	a0,a0,-000007B4
	c.mv	s1,a1
	jal	ra,000000002302B6DA
	c.lui	a2,0000F000
	addi	a2,a2,-000005A0
	c.li	a3,00000000
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,000000002306C988
	addi	a2,zero,+0000003C
	c.li	a3,00000000
	jal	ra,000000002306CE08
	lui	a2,0000036F
	c.swsp	a0,0000000C
	c.swsp	a1,0000008C
	addi	a2,a2,-00000180
	c.li	a3,00000000
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,000000002306C988
	c.li	a2,00000018
	c.li	a3,00000000
	jal	ra,000000002306CE08
	lui	a2,00005266
	c.swsp	a0,00000008
	c.swsp	a1,00000088
	addi	a2,a2,-00000400
	c.li	a3,00000000
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,000000002306C988
	c.mv	s2,a0
	c.mv	s3,a1
	addi	a2,zero,+000003E8
	c.li	a3,00000000
	c.mv	a0,s0
	c.mv	a1,s1
	jal	ra,000000002306C988
	addi	a2,zero,+0000003C
	c.li	a3,00000000
	jal	ra,000000002306CE08
	c.lwsp	s8,00000008
	c.lwsp	t3,00000028
	c.lwsp	a6,000000C4
	c.lwsp	s4,000000E4
	c.swsp	a0,00000000
	lui	a0,00023082
	c.swsp	a1,00000080
	c.mv	a2,s2
	c.mv	a3,s3
	addi	a0,a0,-0000079C
	jal	ra,000000002302B6DA
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

;; reset_cmd: 2302BB64
reset_cmd proc
	lui	a0,00023081
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000006FC
	c.swsp	ra,00000084
	jal	ra,000000002302B6DA
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023037084

;; poweroff_cmd: 2302BB7C
poweroff_cmd proc
	lui	a0,00023081
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000654
	c.swsp	ra,00000084
	jal	ra,000000002302B6DA
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023037088

;; reboot_cmd: 2302BB94
reboot_cmd proc
	lui	a0,00023081
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000006F0
	c.swsp	ra,00000084
	jal	ra,000000002302B6DA
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023037080

;; version_cmd: 2302BBAC
version_cmd proc
	lui	a0,00023082
	c.addi16sp	FFFFFFB0
	c.li	a5,00000004
	addi	a0,a0,-0000075C
	c.swsp	ra,000000A4
	c.swsp	a5,00000080
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	jal	ra,000000002302B6DA
	lui	a0,00023072
	addi	a0,a0,+000004F0
	jal	ra,000000002302B6DA
	lui	a0,00023072
	addi	a0,a0,+000007FC
	jal	ra,000000002302B6DA
	c.addi4spn	a3,00000028
	c.addi4spn	a2,00000018
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	jal	ra,0000000023032922
	c.beqz	a0,000000002302BC0A

l2302BBEC:
	jal	ra,0000000023032304
	c.mv	a1,a0
	lui	a0,00023082
	addi	a0,a0,-00000744
	jal	ra,000000002302B6DA
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.addi16sp	00000050
	c.jr	ra

l2302BC0A:
	c.lwsp	tp,00000064
	c.mv	s0,a0
	lui	a0,00023082
	addi	a0,a0,-0000072C
	jal	ra,000000002302B6DA
	c.li	s1,00000006
	lui	s2,00023082

l2302BC20:
	c.lwsp	tp,000000E4
	bge	s0,a5,000000002302BBEC

l2302BC26:
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
	addi	a0,s2,-00000708
	jal	ra,000000002302B6DA
	c.addi	s0,00000001
	c.j	000000002302BC20

;; devname_cmd: 2302BC4E
devname_cmd proc
	lui	a1,00023081
	lui	a0,00023081
	addi	a1,a1,+00000328
	addi	a0,a0,+00000330
	jal	zero,000000002302B6DA

;; echo_cmd: 2302BC62
echo_cmd proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.li	s1,00000001
	bne	a2,s1,000000002302BCA2

l2302BC70:
	lui	a5,0004200E
	lw	a5,a5,-000001F0
	c.lw	a5,4(a5)
	c.bnez	a5,000000002302BC98

l2302BC7C:
	lui	a1,00023081
	addi	a1,a1,+00000350

l2302BC84:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,00023081
	addi	a0,a0,+00000358
	c.addi	sp,00000010
	jal	zero,000000002302B6DA

l2302BC98:
	lui	a1,00023081
	addi	a1,a1,+00000344
	c.j	000000002302BC84

l2302BCA2:
	c.lw	a3,4(a0)
	lui	a1,0002307E
	addi	a1,a1,+000000B0
	c.mv	s0,a3
	jal	ra,0000000023071100
	c.bnez	a0,000000002302BCD6

l2302BCB4:
	lui	a0,00023081
	addi	a0,a0,+00000384
	jal	ra,000000002302B6DA
	lui	a5,0004200E
	lw	a5,a5,-000001F0
	sw	zero,a5,+00000004

l2302BCCC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2302BCD6:
	c.lw	s0,4(a0)
	lui	a1,0002307E
	addi	a1,a1,+000000E0
	jal	ra,0000000023071100
	c.bnez	a0,000000002302BCCC

l2302BCE6:
	lui	a0,00023081
	addi	a0,a0,+00000394
	jal	ra,000000002302B6DA
	lui	a5,0004200E
	lw	a5,a5,-000001F0
	c.sw	a5,4(s1)
	c.j	000000002302BCCC

;; mmem_cmd: 2302BCFE
mmem_cmd proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.li	a5,00000003
	c.mv	s2,a3
	beq	a2,a5,000000002302BD62

l2302BD10:
	c.li	a5,00000004
	beq	a2,a5,000000002302BD22

l2302BD16:
	c.li	a5,00000002
	bne	a2,a5,000000002302BD4C

l2302BD1C:
	c.li	s0,00000000
	c.li	s1,00000004
	c.j	000000002302BD3C

l2302BD22:
	c.lw	a3,12(a0)
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023071EDC
	c.mv	s1,a0

l2302BD2E:
	lw	a0,s2,+00000008
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023071EDC
	c.mv	s0,a0

l2302BD3C:
	lw	a0,s2,+00000004
	c.li	a1,00000000
	c.li	a2,00000000
	jal	ra,0000000023071EDC
	c.mv	a1,a0
	c.bnez	a0,000000002302BD66

l2302BD4C:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	lui	a0,00023081
	addi	a0,a0,+000004D8
	c.addi	sp,00000010
	jal	zero,000000002302B6DA

l2302BD62:
	c.li	s1,00000004
	c.j	000000002302BD2E

l2302BD66:
	c.li	a5,00000001
	beq	s1,a5,000000002302BD7A

l2302BD6C:
	c.li	a5,00000002
	beq	s1,a5,000000002302BDA8

l2302BD72:
	c.lw	a0,0(a2)
	c.sw	a0,0(s0)
	c.lw	a0,0(a3)
	c.j	000000002302BD92

l2302BD7A:
	andi	s0,s0,+000000FF
	lbu	a2,a0,+00000000
	sb	s0,a0,+00000000
	lbu	a3,a0,+00000000
	andi	a2,a2,+000000FF
	andi	a3,a3,+000000FF

l2302BD92:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	lui	a0,00023081
	addi	a0,a0,+00000560
	c.addi	sp,00000010
	jal	zero,000000002302B6DA

l2302BDA8:
	c.slli	s0,10
	c.srli	s0,00000010
	lhu	a2,a0,+00000000
	sh	s0,a0,+00000000
	lhu	a3,a0,+00000000
	c.slli	a2,10
	c.srli	a2,00000010
	c.slli	a3,10
	c.srli	a3,00000010
	c.j	000000002302BD92

;; pmem_cmd: 2302BDC2
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
	beq	a2,a5,000000002302BE5A

l2302BDE2:
	c.li	a5,00000004
	beq	a2,a5,000000002302BE32

l2302BDE8:
	c.li	a5,00000002
	c.li	s2,00000004
	c.li	s1,00000010
	c.li	s0,00000000
	bne	a2,a5,000000002302BE02

l2302BDF4:
	lw	a0,s3,+00000004
	c.li	a2,00000000
	c.addi4spn	a1,0000000C
	jal	ra,0000000023071EDC
	c.mv	s0,a0

l2302BE02:
	c.lwsp	a2,000000E4
	c.beqz	a5,000000002302BE0E

l2302BE06:
	lw	a4,s3,+00000004
	bne	a5,a4,000000002302BE5E

l2302BE0E:
	lui	a0,00023081
	addi	a0,a0,+00000598
	jal	ra,000000002302B6DA

l2302BE1A:
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

l2302BE32:
	c.lw	a3,12(a0)
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023071EDC
	c.mv	s2,a0

l2302BE3E:
	lw	a0,s3,+00000008
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023071EDC
	addi	a5,zero,+00000400
	c.mv	s1,a0
	bge	a5,a0,000000002302BDF4

l2302BE54:
	addi	s1,zero,+00000400
	c.j	000000002302BDF4

l2302BE5A:
	c.li	s2,00000004
	c.j	000000002302BE3E

l2302BE5E:
	c.li	a5,00000001
	beq	s2,a5,000000002302BEE2

l2302BE64:
	c.li	a5,00000002
	beq	s2,a5,000000002302BF28

l2302BE6A:
	c.li	s2,00000000
	lui	s4,00023081
	lui	s5,00023081
	c.li	s6,00000003
	lui	s7,00023072

l2302BE7A:
	bge	s2,s1,000000002302BE1A

l2302BE7E:
	andi	s3,s2,+00000003
	bne	s3,zero,000000002302BE90

l2302BE86:
	c.mv	a1,s0
	addi	a0,s4,+00000634
	jal	ra,000000002302B6DA

l2302BE90:
	c.lw	s0,0(a1)
	addi	a0,s5,+0000064C
	c.addi	s0,00000004
	jal	ra,000000002302B6DA
	bne	s3,s6,000000002302BEA8

l2302BEA0:
	addi	a0,s7,+000007FC
	jal	ra,000000002302B6DA

l2302BEA8:
	c.addi	s2,00000001
	c.j	000000002302BE7A

l2302BEAC:
	andi	s3,s2,+0000000F
	add	s4,s0,s2
	bne	s3,zero,000000002302BEC2

l2302BEB8:
	c.mv	a1,s4
	addi	a0,s5,+00000634
	jal	ra,000000002302B6DA

l2302BEC2:
	lbu	a1,s4,+00000000
	addi	a0,s6,+0000063C
	jal	ra,000000002302B6DA
	bne	s3,s7,000000002302BEDA

l2302BED2:
	addi	a0,s8,+000007FC
	jal	ra,000000002302B6DA

l2302BEDA:
	c.addi	s2,00000001

l2302BEDC:
	blt	s2,s1,000000002302BEAC

l2302BEE0:
	c.j	000000002302BE1A

l2302BEE2:
	c.li	s2,00000000
	lui	s5,00023081
	lui	s6,00023081
	c.li	s7,0000000F
	lui	s8,00023072
	c.j	000000002302BEDC

l2302BEF4:
	andi	s3,s2,+00000007
	bne	s3,zero,000000002302BF06

l2302BEFC:
	c.mv	a1,s0
	addi	a0,s4,+00000634
	jal	ra,000000002302B6DA

l2302BF06:
	lhu	a1,s0,+00000000
	addi	a0,s5,+00000644
	c.addi	s0,00000002
	jal	ra,000000002302B6DA
	bne	s3,s6,000000002302BF20

l2302BF18:
	addi	a0,s7,+000007FC
	jal	ra,000000002302B6DA

l2302BF20:
	c.addi	s2,00000001

l2302BF22:
	blt	s2,s1,000000002302BEF4

l2302BF26:
	c.j	000000002302BE1A

l2302BF28:
	c.li	s2,00000000
	lui	s4,00023081
	lui	s5,00023081
	c.li	s6,00000007
	lui	s7,00023072
	c.j	000000002302BF22

;; help_cmd: 2302BF3A
help_cmd proc
	lui	a0,00023081
	c.addi	sp,FFFFFFE0
	addi	a0,a0,+000003A4
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	jal	ra,000000002302B6DA
	lui	s1,0002308E
	lui	a0,00023081
	addi	s0,s1,+000001B8
	c.li	a1,00000004
	addi	a0,a0,+000003C0
	lui	s3,0002308E
	lui	s2,00023089
	jal	ra,000000002302B6DA
	addi	s4,s0,+000000C0
	addi	s1,s1,+000001B8
	addi	s3,s3,+00000278
	lui	s5,00023081
	addi	s2,s2,-000001A0

l2302BF8A:
	c.lw	s0,0(a1)
	c.beqz	a1,000000002302BF9C

l2302BF8E:
	c.lw	s0,4(a2)
	c.bnez	a2,000000002302BF94

l2302BF92:
	c.mv	a2,s2

l2302BF94:
	addi	a0,s5,+000003F0
	jal	ra,000000002302B6DA

l2302BF9C:
	c.addi	s0,0000000C
	bne	s0,s4,000000002302BF8A

l2302BFA2:
	lui	a0,00023072
	addi	a0,a0,+000007FC
	jal	ra,000000002302B6DA
	lui	a0,00023081
	addi	a0,a0,+000003FC
	lui	s4,00023089
	jal	ra,000000002302B6DA
	c.li	s2,00000010
	c.li	s0,00000000
	lui	s5,0004200E
	lui	s6,00023081
	addi	s4,s4,-000001A0

l2302BFCE:
	lw	a4,s5,-000001F0
	c.lw	a4,44(a5)
	c.addi	a5,00000008
	bgeu	s0,a5,000000002302BFE0

l2302BFDA:
	c.lw	a4,48(a5)
	bltu	s2,a5,000000002302BFF4

l2302BFE0:
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

l2302BFF4:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002302B3A2
	bltu	a0,s1,000000002302C004

l2302C000:
	bltu	a0,s3,000000002302C018

l2302C004:
	c.lw	a0,0(a1)
	c.beqz	a1,000000002302C018

l2302C008:
	c.lw	a0,4(a2)
	c.bnez	a2,000000002302C00E

l2302C00C:
	c.mv	a2,s4

l2302C00E:
	addi	a0,s6,+000003F0
	jal	ra,000000002302B6DA
	c.addi	s2,00000001

l2302C018:
	c.addi	s0,00000001
	c.j	000000002302BFCE

;; cli_getchar: 2302C01C
;;   Called from:
;;     2302C5B8 (in cli_main_input)
cli_getchar proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	addi	a2,zero,+0000003C
	c.mv	s0,a0
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	c.swsp	ra,000000A4
	c.swsp	zero,00000000
	jal	ra,0000000023070EB8
	c.li	a4,FFFFFFFF
	c.mv	a3,sp
	c.li	a2,00000001
	c.mv	a1,s0
	c.addi4spn	a0,00000004
	sb	zero,sp,+00000004
	jal	ra,0000000023035CE2
	c.bnez	a0,000000002302C056

l2302C046:
	c.lwsp	zero,00000044
	c.addi	a0,FFFFFFFF
	sltiu	a0,a0,+00000001

l2302C04E:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.addi16sp	00000050
	c.jr	ra

l2302C056:
	c.li	a0,00000000
	c.j	000000002302C04E

;; cli_main_input: 2302C05A
;;   Called from:
;;     2302C83E (in console_cb_read)
cli_main_input proc
	c.addi16sp	FFFFFF90
	c.swsp	s1,000000B0
	lui	s1,0004200E
	c.swsp	s9,000000A0
	lw	s9,s1,-000001F0
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
	c.beqz	s0,000000002302C168

l2302C086:
	c.mv	s7,a0
	addi	s1,s1,-000001F0
	c.li	s4,00000000
	lui	s8,00023072

l2302C092:
	beq	s7,zero,000000002302C5B6

l2302C096:
	c.lwsp	s0,000000E4
	bge	s4,a5,000000002302C598

l2302C09C:
	add	a4,s7,s4
	lbu	a4,a4,+00000000
	c.addi	s4,00000001
	sb	a4,sp,+00000020

l2302C0AA:
	lbu	a4,sp,+00000020
	c.li	a3,0000000A
	beq	a4,a3,000000002302C0BA

l2302C0B4:
	c.li	a3,0000000D
	bne	a4,a3,000000002302C176

l2302C0BA:
	lw	a4,s9,+00000034
	lw	s2,s1,+00000000
	c.add	s0,a4
	sb	zero,s0,+00000000
	addi	s2,s2,+00000038
	sw	zero,s9,+00000034
	c.mv	a0,s2
	jal	ra,000000002307132C
	bne	a0,zero,000000002302C5C4

l2302C0DA:
	lui	s1,00042012
	addi	a2,zero,+00000100
	c.li	a1,00000000
	addi	a0,s1,+000002EC
	c.swsp	zero,00000010
	c.swsp	zero,00000090
	c.swsp	zero,00000014
	c.swsp	zero,00000094
	jal	ra,0000000023070EB8
	c.li	a2,00000010
	c.li	a1,00000000
	c.addi4spn	a0,00000020
	jal	ra,0000000023070EB8
	c.li	a2,00000004
	c.li	a1,00000000
	c.addi4spn	a0,0000001C
	jal	ra,0000000023070EB8
	c.li	a5,00000000
	addi	s11,sp,+00000020
	c.li	s8,00000000
	addi	s6,zero,+00000020
	c.li	s3,00000001
	addi	s4,zero,+0000005C
	addi	s7,s1,+000002EC
	c.li	s9,00000002
	c.li	s5,00000003
	addi	s10,zero,+0000003B

l2302C126:
	add	s0,s2,a5
	lbu	a3,s0,+00000000
	beq	a3,s6,000000002302C7DA

l2302C132:
	bltu	s6,a3,000000002302C656

l2302C136:
	beq	a3,zero,000000002302C6B0

l2302C13A:
	lbu	a3,sp,+0000001C
	andi	a2,a3,+00000001
	bne	a2,zero,000000002302C6C4

l2302C146:
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
	c.j	000000002302C6C4

l2302C168:
	lui	a0,00023081
	addi	a0,a0,+00000248

l2302C170:
	jal	ra,000000002302B6DA
	c.j	000000002302C598

l2302C176:
	lui	a5,0004200E
	c.li	a0,0000001B
	addi	s2,a5,-000001E8
	bne	a4,a0,000000002302C19E

l2302C184:
	c.li	a4,00000001
	lui	a3,0004200E
	sb	a4,s2,+00000000
	c.li	a4,FFFFFFFF
	sb	a4,a3,+0000093C
	lui	a3,0004200E
	sb	a4,a3,+0000093D
	c.j	000000002302C092

l2302C19E:
	lb	a3,s2,+00000000
	beq	a3,zero,000000002302C41C

l2302C1A6:
	lui	a3,0004200E
	addi	a3,a3,-000006C4
	lb	a1,a3,+00000000
	bge	a1,zero,000000002302C204

l2302C1B6:
	slli	a1,a4,00000018
	c.srai	a1,00000018
	sb	a1,a3,+00000000
	addi	a3,zero,+0000005B
	beq	a1,a3,000000002302C092

l2302C1C8:
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
	c.bnez	a4,000000002302C1FE

l2302C1F2:
	lui	a0,00023081
	addi	a0,a0,+00000258

l2302C1FA:
	jal	ra,0000000023052118

l2302C1FE:
	sb	zero,s2,+00000000
	c.j	000000002302C092

l2302C204:
	lui	a3,0004200E
	lb	a2,a3,-000006C3
	addi	a3,a3,-000006C3
	bge	a2,zero,000000002302C240

l2302C214:
	slli	a2,a4,00000018
	c.srai	a2,00000018
	sb	a2,a3,+00000000
	addi	a6,zero,+00000074
	bne	a2,a6,000000002302C240

l2302C226:
	lui	a2,00042012
	addi	a2,a2,+000003EC
	sb	a0,a2,+00000000
	sb	a1,a2,+00000001
	c.li	a0,00000002
	lui	a2,0004200E
	sb	a0,a2,+00000E19

l2302C240:
	lb	a2,a3,+00000000
	c.li	a6,00000001
	andi	a0,a2,+000000FF
	addi	a3,a0,-00000041
	andi	a3,a3,+000000FF
	bgeu	a6,a3,000000002302C2C0

l2302C256:
	lui	a6,00042012
	lui	s3,0004200E
	addi	a3,zero,+00000074
	addi	s5,a6,+000003EC
	addi	s3,s3,-000001E7
	beq	a2,a3,000000002302C3B8

l2302C26E:
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
	c.bnez	a4,000000002302C2B6

l2302C2AA:
	lui	a0,00023081
	addi	a0,a0,+0000025C
	jal	ra,0000000023052118

l2302C2B6:
	sb	zero,s5,+00000000
	sb	zero,s3,+00000000
	c.j	000000002302C1FE

l2302C2C0:
	addi	a4,zero,+00000041
	bne	a2,a4,000000002302C360

l2302C2C8:
	c.lw	s1,0(a0)
	addi	a2,zero,+00000100
	lw	a3,a0,+0000013C
	addi	a4,a3,+000000FF

l2302C2D6:
	or	a4,a4,a2
	add	a1,a0,a4
	lbu	a1,a1,+00000144
	c.bnez	a1,000000002302C330

l2302C2E4:
	bne	a3,a4,000000002302C32A

l2302C2E8:
	sw	a4,a0,+0000013C
	addi	a1,zero,+00000100
	c.mv	a4,s0

l2302C2F2:
	add	a2,a0,a3
	lbu	a2,a2,+00000144
	c.bnez	a2,000000002302C352

l2302C2FC:
	lui	a0,00023081
	sb	zero,a4,+00000000
	c.mv	a1,s0
	addi	a0,a0,+00000264
	jal	ra,0000000023052118
	c.mv	a0,s0
	jal	ra,000000002307132C
	lui	a4,00042012
	sw	a0,s9,+00000034
	sb	zero,a4,+000003EC
	lui	a4,0004200E
	sb	zero,a4,+00000E19
	c.j	000000002302C1FE

l2302C32A:
	addi	a4,a4,+000000FF
	c.j	000000002302C2D6

l2302C330:
	beq	a3,a4,000000002302C2E8

l2302C334:
	addi	a2,zero,+00000100

l2302C338:
	addi	a4,a4,+000000FF
	or	a4,a4,a2
	add	a1,a0,a4
	lbu	a1,a1,+00000144
	c.bnez	a1,000000002302C338

l2302C34A:
	c.addi	a4,00000001
	or	a4,a4,a2
	c.j	000000002302C2E8

l2302C352:
	c.addi	a4,00000001
	c.addi	a3,00000001
	sb	a2,a4,+00000FFF
	or	a3,a3,a1
	c.j	000000002302C2F2

l2302C360:
	c.lw	s1,0(a2)
	addi	a0,zero,+00000100
	lw	a3,a2,+0000013C
	c.mv	a4,a3

l2302C36C:
	add	a1,a2,a4
	lbu	a1,a1,+00000144
	c.bnez	a1,000000002302C3B0

l2302C376:
	beq	a3,a4,000000002302C38E

l2302C37A:
	addi	a0,zero,+00000100

l2302C37E:
	c.addi	a4,00000001
	or	a4,a4,a0
	add	a1,a2,a4
	lbu	a1,a1,+00000144
	c.beqz	a1,000000002302C37E

l2302C38E:
	sw	a4,a2,+0000013C
	addi	a0,zero,+00000100
	c.mv	a4,s0

l2302C398:
	add	a1,a2,a3
	lbu	a1,a1,+00000144
	c.beqz	a1,000000002302C2FC

l2302C3A2:
	c.addi	a4,00000001
	c.addi	a3,00000001
	sb	a1,a4,+00000FFF
	or	a3,a3,a0
	c.j	000000002302C398

l2302C3B0:
	c.addi	a4,00000001
	or	a4,a4,a0
	c.j	000000002302C36C

l2302C3B8:
	lbu	a3,s3,+00000000
	addi	a2,zero,+0000003F
	bgeu	a2,a3,000000002302C3DE

l2302C3C4:
	lui	a0,00023081
	addi	a0,a0,+0000026C
	sb	zero,s5,+00000000
	sb	zero,s3,+00000000
	sb	zero,s2,+00000000
	jal	ra,0000000023052118
	c.j	000000002302C092

l2302C3DE:
	addi	a2,a3,+00000001
	add	a1,s5,a3
	andi	a2,a2,+000000FF
	sb	a4,a1,+00000000
	sb	a2,s3,+00000000
	addi	a1,zero,+0000006D
	bne	a4,a1,000000002302C092

l2302C3FA:
	c.lw	s1,0(a4)
	c.add	s5,a2
	sb	zero,s5,+00000000
	c.lw	a4,4(a4)
	c.addi	a3,00000002
	sb	a3,s3,+00000000
	bne	a4,zero,000000002302C1FE

l2302C40E:
	lui	a0,00023086
	addi	a1,a6,+000003EC
	addi	a0,a0,-00000328
	c.j	000000002302C1FA

l2302C41C:
	lw	a3,s9,+00000034
	c.add	a3,s0
	sb	a4,a3,+00000000
	c.li	a3,00000008
	beq	a4,a3,000000002302C434

l2302C42C:
	addi	a3,zero,+0000007F
	bne	a4,a3,000000002302C45C

l2302C434:
	lw	a4,s9,+00000034
	beq	a4,zero,000000002302C092

l2302C43C:
	c.addi	a4,FFFFFFFF
	sw	a4,s9,+00000034
	c.lw	s1,0(a4)
	c.lw	a4,4(a4)
	bne	a4,zero,000000002302C092

l2302C44A:
	lui	a5,00023081
	c.li	a2,00000008
	c.li	a1,00000008
	addi	a0,a5,+00000290
	jal	ra,0000000023052118
	c.j	000000002302C092

l2302C45C:
	c.li	a3,00000009
	bne	a4,a3,000000002302C556

l2302C462:
	lw	a4,s9,+00000034
	addi	a0,s8,+000007FC
	c.li	s3,00000000
	c.add	a4,s0
	sb	zero,a4,+00000000
	jal	ra,000000002302B6DA
	c.li	s2,00000000
	c.li	s6,00000000
	c.li	s5,00000000
	c.li	s10,00000001
	c.li	s11,00000002

l2302C480:
	c.lw	s1,0(a3)
	c.lw	a3,44(a4)
	c.addi	a4,00000008
	bgeu	s5,a4,000000002302C490

l2302C48A:
	c.lw	a3,48(a4)
	bltu	s6,a4,000000002302C4F8

l2302C490:
	c.li	a4,00000001
	bne	s2,a4,000000002302C548

l2302C496:
	beq	s3,zero,000000002302C4E0

l2302C49A:
	c.mv	a0,s3
	jal	ra,000000002307132C
	addi	a4,zero,+000000FF
	bltu	a4,a0,000000002302C4E0

l2302C4A8:
	lw	a4,s9,+00000034
	sub	s2,a0,a4
	c.mv	a2,s2
	add	a1,s3,a4
	add	a0,s0,a4
	jal	ra,0000000023070C7C
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

l2302C4E0:
	lui	a1,00023081
	lui	a0,00023081
	c.mv	a2,s0
	addi	a1,a1,+000002A4
	addi	a0,a0,+000002A8
	jal	ra,000000002302B6DA
	c.j	000000002302C092

l2302C4F8:
	c.li	a1,00000000
	c.mv	a0,s5
	jal	ra,000000002302B3A2
	c.lw	a0,0(a1)
	c.swsp	a0,00000084
	c.beqz	a1,000000002302C530

l2302C506:
	lw	a2,s9,+00000034
	c.mv	a0,s0
	jal	ra,00000000230713B8
	c.bnez	a0,000000002302C52E

l2302C512:
	c.lwsp	a2,000000C4
	c.addi	s2,00000001
	c.lw	a4,0(a2)
	beq	s2,s10,000000002302C544

l2302C51C:
	bne	s2,s11,000000002302C534

l2302C520:
	lui	a5,00023081
	c.mv	a1,s3
	addi	a0,a5,+00000298
	jal	ra,000000002302B6DA

l2302C52E:
	c.addi	s6,00000001

l2302C530:
	c.addi	s5,00000001
	c.j	000000002302C480

l2302C534:
	lui	a5,00023081
	c.mv	a1,a2
	addi	a0,a5,+000002A0
	jal	ra,000000002302B6DA
	c.j	000000002302C52E

l2302C544:
	c.mv	s3,a2
	c.j	000000002302C52E

l2302C548:
	bge	a4,s2,000000002302C4E0

l2302C54C:
	addi	a0,s8,+000007FC
	jal	ra,000000002302B6DA
	c.j	000000002302C4E0

l2302C556:
	c.lw	s1,0(a3)
	c.lw	a3,4(a3)
	c.bnez	a3,000000002302C56A

l2302C55C:
	lui	a0,00023081
	c.mv	a1,a4
	addi	a0,a0,+00000190
	jal	ra,0000000023052118

l2302C56A:
	lw	a4,s9,+00000034
	addi	a3,zero,+000000FF
	c.addi	a4,00000001
	sw	a4,s9,+00000034
	bgeu	a3,a4,000000002302C092

l2302C57C:
	lui	a0,00023081
	addi	a0,a0,+000002B0
	jal	ra,000000002302B6DA
	lui	a0,00023081
	addi	a0,a0,+000002A4
	jal	ra,000000002302B6DA
	sw	zero,s9,+00000034

l2302C598:
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

l2302C5B6:
	c.addi4spn	a0,00000020
	jal	ra,000000002302C01C
	c.li	a4,00000001
	beq	a0,a4,000000002302C0AA

l2302C5C2:
	c.j	000000002302C598

l2302C5C4:
	lw	s3,s1,+00000000
	addi	s3,s3,+00000038
	c.mv	a0,s3
	jal	ra,000000002307132C
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
	blt	s4,s5,000000002302C634

l2302C5F6:
	c.add	a5,s0
	lbu	s6,a5,+00000144
	c.mv	a2,s5
	c.mv	a1,s3

l2302C600:
	jal	ra,00000000230714A8
	c.addi	s0,00000001
	addi	a5,zero,+00000100
	or	s0,s0,a5
	c.lw	s1,0(a4)
	addi	a2,zero,+00000100
	sw	s0,a4,+00000140
	beq	s6,zero,000000002302C0DA

l2302C61C:
	add	a5,a4,s0
	lbu	a3,a5,+00000144
	beq	a3,zero,000000002302C0DA

l2302C628:
	c.addi	s0,00000001
	sb	zero,a5,+00000144
	or	s0,s0,a2
	c.j	000000002302C61C

l2302C634:
	or	s0,s0,a4
	c.mv	a2,s4
	c.mv	a1,s3
	c.add	a5,s0
	lbu	s6,a5,+00000144
	jal	ra,00000000230714A8
	c.lw	s1,0(a0)
	sub	a2,s5,s4
	add	a1,s3,s4
	addi	a0,a0,+00000144
	c.j	000000002302C600

l2302C656:
	addi	a4,zero,+00000022
	beq	a3,a4,000000002302C752

l2302C65E:
	bne	a3,s10,000000002302C13A

l2302C662:
	lbu	a3,sp,+0000001C
	c.beqz	a5,000000002302C67E

l2302C668:
	addi	a6,a5,-00000001
	add	a7,s2,a6
	lbu	a2,a7,+00000000
	bne	a2,s4,000000002302C67E

l2302C678:
	andi	a2,a3,+00000001
	c.bnez	a2,000000002302C76C

l2302C67E:
	c.andi	a3,00000002
	bne	a3,zero,000000002302C80A

l2302C684:
	c.lwsp	t3,000000A4
	c.andi	a3,00000003
	bne	a3,s3,000000002302C6C4

l2302C68C:
	lbu	a3,sp,+0000001C
	c.andi	a3,FFFFFFFE
	sb	a3,sp,+0000001C
	sb	zero,s0,+00000000
	lw	a3,s11,+00000000
	c.beqz	a3,000000002302C6C4

l2302C6A0:
	c.addi	s8,00000001
	blt	s5,s8,000000002302C6C4

l2302C6A6:
	slli	s11,s8,00000002
	c.addi4spn	a4,00000020
	c.add	s11,a4
	c.j	000000002302C6C4

l2302C6B0:
	lbu	a3,sp,+0000001C
	andi	a2,a3,+00000002
	bne	a2,zero,000000002302C80A

l2302C6BC:
	ori	a3,a3,+00000004
	sb	a3,sp,+0000001C

l2302C6C4:
	lbu	a3,sp,+0000001C
	andi	a2,a3,+00000004
	c.bnez	a2,000000002302C6E6

l2302C6CE:
	c.addi	a5,00000001
	addi	a2,zero,+000000FF
	blt	a2,a5,000000002302C6E6

l2302C6D8:
	blt	s5,s8,000000002302C6E6

l2302C6DC:
	lw	a1,s11,+00000000
	c.li	a2,0000000F
	bge	a2,a1,000000002302C126

l2302C6E6:
	c.andi	a3,00000002
	bne	a3,zero,000000002302C80A

l2302C6EC:
	c.addi4spn	s0,00000020
	addi	s1,s1,+000002EC
	c.li	s3,00000000
	c.li	s4,00000000
	c.li	s5,00000004

l2302C6F8:
	c.lw	s0,0(a0)
	c.mv	a1,s1
	c.addi	s4,00000001
	jal	ra,000000002302B764
	or	s3,s3,a0
	blt	s8,s4,000000002302C714

l2302C70A:
	c.addi	s0,00000004
	addi	s1,s1,+00000040
	bne	s4,s5,000000002302C6F8

l2302C714:
	c.li	a5,00000001
	bne	s3,a5,000000002302C804

l2302C71A:
	beq	s2,zero,000000002302C72C

l2302C71E:
	lui	a0,00023081
	c.mv	a1,s2
	addi	a0,a0,+000002D0
	jal	ra,000000002302B6DA

l2302C72C:
	lui	a0,00023072
	addi	a0,a0,+000007FC
	jal	ra,000000002302B6DA
	lui	a5,00042012
	sb	zero,a5,+000003EC
	lui	a0,00023081
	lui	a5,0004200E
	sb	zero,a5,+00000E19
	addi	a0,a0,+000002A4
	c.j	000000002302C170

l2302C752:
	c.beqz	a5,000000002302C78A

l2302C754:
	addi	a6,a5,-00000001
	add	a7,s2,a6
	lbu	a3,a7,+00000000
	bne	a3,s4,000000002302C78A

l2302C764:
	lbu	a3,sp,+0000001C
	c.andi	a3,00000001
	c.beqz	a3,000000002302C78A

l2302C76C:
	c.mv	a0,s0
	c.swsp	a6,00000084
	c.swsp	a7,00000004
	jal	ra,000000002307132C
	c.lwsp	s0,00000028
	addi	a2,a0,+00000001
	c.mv	a1,s0
	c.mv	a0,a7
	jal	ra,0000000023070C7C
	c.lwsp	a2,00000008
	c.mv	a5,a6
	c.j	000000002302C6C4

l2302C78A:
	c.lwsp	t3,000000A4
	c.andi	a3,00000003
	beq	a3,s3,000000002302C6C4

l2302C792:
	beq	a3,s9,000000002302C80A

l2302C796:
	c.bnez	a3,000000002302C7C6

l2302C798:
	lbu	a3,sp,+0000001C
	lw	a2,s11,+00000000
	c.andi	a3,FFFFFFFC
	ori	a3,a3,+00000003
	sb	a3,sp,+0000001C
	addi	a3,a2,+00000001
	sw	a3,s11,+00000000
	slli	a3,s8,00000004
	c.add	a3,a2
	c.slli	a3,02
	addi	a2,a5,+00000001
	c.add	a3,s7
	c.add	a2,s2
	c.sw	a3,0(a2)
	c.j	000000002302C6C4

l2302C7C6:
	bne	a3,s5,000000002302C6C4

l2302C7CA:
	lbu	a3,sp,+0000001C
	c.andi	a3,FFFFFFFC

l2302C7D0:
	sb	a3,sp,+0000001C
	sb	zero,s0,+00000000
	c.j	000000002302C6C4

l2302C7DA:
	c.beqz	a5,000000002302C7F4

l2302C7DC:
	addi	a6,a5,-00000001
	add	a7,s2,a6
	lbu	a3,a7,+00000000
	bne	a3,s4,000000002302C7F4

l2302C7EC:
	lbu	a3,sp,+0000001C
	c.andi	a3,00000001
	c.bnez	a3,000000002302C76C

l2302C7F4:
	c.lwsp	t3,000000A4
	c.andi	a3,00000003
	bne	a3,s3,000000002302C6C4

l2302C7FC:
	lbu	a3,sp,+0000001C
	c.andi	a3,FFFFFFFE
	c.j	000000002302C7D0

l2302C804:
	c.li	a5,00000002
	bne	s3,a5,000000002302C72C

l2302C80A:
	lui	a0,00023081
	addi	a0,a0,+000002EC
	jal	ra,000000002302B6DA
	c.j	000000002302C72C

;; console_cb_read: 2302C818
console_cb_read proc
	c.addi	sp,FFFFFFE0
	c.li	a2,00000010
	c.mv	a1,sp
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	jal	ra,000000002304C2B6
	bge	zero,a0,000000002302C842

l2302C82C:
	c.li	a5,00000010
	c.mv	a1,a0
	blt	a5,a0,000000002302C84A

l2302C834:
	lui	a5,0004200E
	c.mv	a0,sp
	sw	s0,a5,+00000E1C
	jal	ra,000000002302C05A

l2302C842:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2302C84A:
	lui	a0,00023081
	addi	a0,a0,+000002FC
	jal	ra,0000000023052118
	c.j	000000002302C842

;; get_dns_request: 2302C858
get_dns_request proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	ra,000000A4
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	sw	a1,a0,+00000108
	sw	a3,a0,+0000010C
	sh	a4,a0,+00000110
	lhu	a4,a2,+00000008
	c.li	a5,0000000B
	c.mv	s0,a0
	c.mv	s1,a2
	bgeu	a5,a4,000000002302C8F6

l2302C884:
	c.li	a2,0000000C
	c.li	a3,00000000
	c.addi4spn	a1,00000004
	c.mv	a0,s1
	jal	ra,0000000023040C4A
	lhu	a0,sp,+00000004
	jal	ra,000000002303C332
	sh	a0,s0,+00000100
	lhu	a0,sp,+00000008
	jal	ra,000000002303C332
	sh	a0,s0,+00000102
	lhu	a2,s1,+00000008
	addi	a5,zero,+000000FF
	bgeu	a5,a2,000000002302C8B8

l2302C8B4:
	addi	a2,zero,+000000FF

l2302C8B8:
	c.slli	a2,10
	c.srli	a2,00000010
	c.mv	a1,s0
	c.li	a3,0000000C
	c.mv	a0,s1
	c.swsp	a2,00000000
	jal	ra,0000000023040C4A
	c.mv	a2,sp
	c.mv	a1,s0
	c.mv	a0,s0
	jal	ra,000000002304B90E
	c.bnez	a0,000000002302C8F6

l2302C8D4:
	c.lwsp	zero,000000E4
	bge	zero,a5,000000002302C8EE

l2302C8DA:
	c.addi	a5,FFFFFFFF
	add	a4,s0,a5
	lbu	a3,a4,+00000000
	addi	a4,zero,+0000002E
	bne	a3,a4,000000002302C8EE

l2302C8EC:
	c.swsp	a5,00000000

l2302C8EE:
	c.lwsp	zero,000000E4
	c.add	a5,s0
	sb	zero,a5,+00000000

l2302C8F6:
	c.mv	a0,s1
	jal	ra,0000000023040890
	addi	a2,zero,+00000280
	addi	a1,zero,+00000200
	addi	a0,zero,+000000B6
	jal	ra,0000000023040912
	c.mv	s1,a0
	beq	a0,zero,000000002302CA56

l2302C912:
	c.li	a2,0000000C
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,0000000023070EB8
	lhu	a0,s0,+00000100
	addi	s3,s0,-00000001
	c.li	s2,0000000C
	jal	ra,000000002303C332
	sh	a0,sp,+00000010
	c.lui	a0,00008000
	addi	a0,a0,+00000180
	jal	ra,000000002303C332
	sh	a0,sp,+00000012
	c.li	a0,00000001
	jal	ra,000000002303C332
	sh	a0,sp,+00000014
	c.li	a0,00000001
	jal	ra,000000002303C332
	sh	a0,sp,+00000016
	c.li	a0,00000000
	jal	ra,000000002303C332
	sh	a0,sp,+00000018
	c.li	a0,00000000
	jal	ra,000000002303C332
	sh	a0,sp,+0000001A
	c.li	a2,0000000C
	c.addi4spn	a1,00000010
	c.mv	a0,s1
	jal	ra,0000000023040CCA
	addi	s6,zero,+0000002E

l2302C972:
	c.addi	s3,00000001
	c.mv	s5,s3
	c.li	s4,00000000

l2302C978:
	lbu	a5,s3,+00000000
	bne	a5,s6,000000002302CA6A

l2302C980:
	c.mv	a2,s4
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023040E10
	addi	a3,s2,+00000001
	sub	a2,s3,s5
	c.slli	a3,10
	c.slli	a2,10
	c.add	s2,s4
	c.srli	a3,00000010
	c.srli	a2,00000010
	c.mv	a1,s5
	c.mv	a0,s1
	slli	s4,s2,00000010
	jal	ra,0000000023040D28
	srli	s4,s4,00000010
	lbu	a5,s3,+00000000
	addi	s2,s4,+00000001
	c.slli	s2,10
	srli	s2,s2,00000010
	c.bnez	a5,000000002302C972

l2302C9BC:
	c.li	a2,00000000
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023040E10
	c.li	a0,00000001
	jal	ra,000000002303C332
	sh	a0,sp,+0000001C
	c.li	a0,00000001
	jal	ra,000000002303C332
	sh	a0,sp,+0000001E
	c.lui	a0,0000C000
	c.addi	a0,0000000C
	jal	ra,000000002303C332
	sh	a0,sp,+00000020
	c.li	a0,00000001
	jal	ra,000000002303C332
	sh	a0,sp,+00000022
	c.li	a0,00000001
	jal	ra,000000002303C332
	sh	a0,sp,+00000024
	c.li	a0,00000000
	jal	ra,000000002303C332
	sh	a0,sp,+00000026
	lui	a0,000003C0
	c.addi	a0,00000004
	jal	ra,000000002303C340
	c.swsp	a0,00000014
	lui	a0,000C0A8B
	addi	a0,a0,-000006FF
	jal	ra,000000002303C340
	addi	a3,s4,+00000002
	c.slli	a3,10
	c.srli	a3,00000010
	c.li	a2,00000014
	c.swsp	a0,00000094
	c.addi4spn	a1,0000001C
	c.mv	a0,s1
	jal	ra,0000000023040D28
	addi	a1,s4,+00000016
	c.slli	a1,10
	c.srli	a1,00000010
	c.mv	a0,s1
	jal	ra,0000000023040A70
	lhu	a3,s0,+00000110
	lw	a2,s0,+0000010C
	lw	a0,s0,+00000108
	c.mv	a1,s1
	jal	ra,0000000023045986
	c.mv	a0,s1
	jal	ra,0000000023040890

l2302CA56:
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

l2302CA6A:
	beq	a5,zero,000000002302C980

l2302CA6E:
	c.addi	s4,00000001
	andi	s4,s4,+000000FF
	c.addi	s3,00000001
	c.j	000000002302C978

;; dns_server_init: 2302CA78
;;   Called from:
;;     23025632 (in stateGlobalGuard_AP)
dns_server_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	jal	ra,0000000023045A72
	c.beqz	a0,000000002302CAD4

l2302CA86:
	lui	a1,0002308E
	addi	a2,zero,+00000035
	addi	a1,a1,-00000174
	c.mv	s0,a0
	jal	ra,000000002304561A
	c.bnez	a0,000000002302CAC6

l2302CA9A:
	addi	a0,zero,+00000114
	jal	ra,000000002303218A
	c.mv	s1,a0
	c.beqz	a0,000000002302CAC6

l2302CAA6:
	c.li	a2,00000004
	c.li	a1,00000000
	jal	ra,0000000023070EB8
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a2,s1
	c.lwsp	tp,00000024
	lui	a1,0002302D
	addi	a1,a1,-000007A8
	c.addi	sp,00000010
	jal	zero,0000000023045A3A

l2302CAC6:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023045A42

l2302CAD4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; easyflash_init: 2302CADE
;;   Called from:
;;     2300078A (in aos_loop_proc)
easyflash_init proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a1,00000008
	c.addi4spn	a0,0000000C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	zero,00000004
	jal	ra,000000002302E34A
	lui	s1,00023082
	c.mv	s0,a0
	c.bnez	a0,000000002302CB2C

l2302CAF8:
	c.lwsp	s0,00000064
	c.lwsp	a2,00000044
	jal	ra,000000002302E1AC
	c.mv	s0,a0
	c.bnez	a0,000000002302CB2C

l2302CB04:
	lui	a0,00023082
	addi	a1,s1,-000006E8
	addi	a0,a0,-000006E0

l2302CB10:
	jal	ra,000000002302E32A
	lui	a0,00023082
	addi	a0,a0,-00000694
	jal	ra,000000002302E32A
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2302CB2C:
	lui	a0,00023082
	addi	a1,s1,-000006E8
	addi	a0,a0,-000006B8
	c.j	000000002302CB10

;; get_status: 2302CB3A
;;   Called from:
;;     2302CDF4 (in read_env)
;;     2302D2E4 (in read_sector_meta_data)
;;     2302D2F6 (in read_sector_meta_data)
;;     2302D7E2 (in del_env)
get_status proc
	c.addi	a1,FFFFFFFF
	c.li	a4,FFFFFFFF

l2302CB3E:
	addi	a5,a1,-00000001
	bne	a5,a4,000000002302CB4A

l2302CB46:
	c.mv	a0,a1
	c.jr	ra

l2302CB4A:
	add	a3,a0,a5
	lbu	a3,a3,+00000000
	c.beqz	a3,000000002302CB46

l2302CB54:
	c.mv	a1,a5
	c.j	000000002302CB3E

;; update_sector_cache: 2302CB58
;;   Called from:
;;     2302CF5A (in update_sec_status)
;;     2302D004 (in format_sector.constprop.16)
;;     2302D3E2 (in read_sector_meta_data)
;;     2302D928 (in move_env)
;;     2302DC28 (in create_env_blob)
update_sector_cache proc
	lui	a5,00042012
	c.lui	a6,00001000
	addi	a2,a5,+0000051C
	c.li	a3,00000004
	c.li	a4,00000000
	addi	a5,a5,+0000051C
	c.add	a6,a0
	c.li	t3,FFFFFFFF
	c.li	t1,00000004

l2302CB70:
	lw	a7,a2,+00000000
	bgeu	a0,a1,000000002302CBA6

l2302CB78:
	bgeu	a1,a6,000000002302CBA6

l2302CB7C:
	bne	a0,a7,000000002302CB88

l2302CB80:
	c.slli	a4,03
	c.add	a5,a4

l2302CB84:
	c.sw	a5,4(a1)

l2302CB86:
	c.jr	ra

l2302CB88:
	bne	a7,t3,000000002302CB92

l2302CB8C:
	bne	a3,t1,000000002302CB92

l2302CB90:
	c.mv	a3,a4

l2302CB92:
	c.addi	a4,00000001
	c.addi	a2,00000008
	bne	a4,t1,000000002302CB70

l2302CB9A:
	beq	a3,a4,000000002302CB86

l2302CB9E:
	c.slli	a3,03
	c.add	a5,a3
	c.sw	a5,0(a0)
	c.j	000000002302CB84

l2302CBA6:
	bne	a0,a7,000000002302CB92

l2302CBAA:
	c.slli	a4,03
	c.add	a5,a4
	c.li	a4,FFFFFFFF
	c.sw	a5,0(a4)
	c.jr	ra

;; get_next_sector_addr: 2302CBB4
;;   Called from:
;;     2302D45E (in sector_iterator)
;;     2302D654 (in env_iterator)
get_next_sector_addr proc
	c.lw	a0,4(a5)
	lui	a4,0004200E
	c.li	a3,FFFFFFFF
	lw	a4,a4,-000001D8
	beq	a5,a3,000000002302CBDE

l2302CBC4:
	c.lw	a0,12(a0)
	bne	a0,a3,000000002302CBDA

l2302CBCA:
	c.lui	a0,00001000

l2302CBCC:
	c.add	a0,a5
	c.lui	a5,00008000
	c.add	a4,a5
	bltu	a0,a4,000000002302CBE0

l2302CBD6:
	c.li	a0,FFFFFFFF
	c.jr	ra

l2302CBDA:
	c.slli	a0,0C
	c.j	000000002302CBCC

l2302CBDE:
	c.mv	a0,a4

l2302CBE0:
	c.jr	ra

;; gc_check_cb: 2302CBE2
gc_check_cb proc
	lbu	a5,a0,+00000000
	c.beqz	a5,000000002302CBEE

l2302CBE8:
	c.lw	a1,0(a5)
	c.addi	a5,00000001
	c.sw	a1,0(a5)

l2302CBEE:
	c.li	a0,00000000
	c.jr	ra

;; update_env_cache: 2302CBF2
;;   Called from:
;;     2302D786 (in find_env)
;;     2302D84C (in del_env)
;;     2302D934 (in move_env)
;;     2302DC34 (in create_env_blob)
update_env_cache proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a2
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,000000002302E40E
	lui	a4,00042012
	c.lui	a7,00010000
	c.srli	a0,00000010
	addi	a2,a4,+00000484
	c.addi	a7,FFFFFFFF
	c.li	a6,00000010
	c.li	a1,00000010
	c.li	a3,00000000
	addi	a5,a4,+00000484
	c.li	t3,FFFFFFFF
	c.li	t1,00000010

l2302CC20:
	lhu	a4,a2,+00000000
	beq	s0,t3,000000002302CC78

l2302CC28:
	bne	a4,a0,000000002302CC3A

l2302CC2C:
	c.slli	a3,03
	c.add	a5,a3
	c.sw	a5,4(s0)

l2302CC32:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2302CC3A:
	c.lw	a2,4(a4)
	bne	a4,t3,000000002302CC48

l2302CC40:
	bne	a1,t1,000000002302CC60

l2302CC44:
	c.mv	a1,a3
	c.j	000000002302CC60

l2302CC48:
	lhu	a4,a2,+00000002
	c.beqz	a4,000000002302CC54

l2302CC4E:
	c.addi	a4,FFFFFFFF
	sh	a4,a2,+00000002

l2302CC54:
	lhu	a4,a2,+00000002
	bgeu	a4,a7,000000002302CC60

l2302CC5C:
	c.mv	a7,a4
	c.mv	a6,a3

l2302CC60:
	c.addi	a3,00000001
	c.addi	a2,00000008
	bne	a3,t1,000000002302CC20

l2302CC68:
	beq	a1,a3,000000002302CC88

l2302CC6C:
	c.slli	a1,03
	c.add	a5,a1

l2302CC70:
	c.sw	a5,4(s0)
	sh	a0,a5,+00000000
	c.j	000000002302CC82

l2302CC78:
	bne	a4,a0,000000002302CC60

l2302CC7C:
	c.slli	a3,03
	c.add	a5,a3
	c.sw	a5,4(s0)

l2302CC82:
	sh	zero,a5,+00000002
	c.j	000000002302CC32

l2302CC88:
	beq	a6,a1,000000002302CC32

l2302CC8C:
	c.slli	a6,03
	c.add	a5,a6
	c.j	000000002302CC70

;; find_env_cb: 2302CC92
find_env_cb proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.mv	a0,a1
	c.swsp	s2,00000008
	c.swsp	a1,00000084
	c.mv	s2,a2
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	jal	ra,000000002307132C
	lbu	a2,s0,+00000002
	c.lwsp	a2,00000064
	beq	a2,a0,000000002302CCC2

l2302CCB2:
	c.li	s1,00000000

l2302CCB4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2302CCC2:
	lbu	s1,s0,+00000001
	c.beqz	s1,000000002302CCB2

l2302CCC8:
	lbu	a4,s0,+00000000
	c.li	a5,00000002
	bne	a4,a5,000000002302CCB2

l2302CCD2:
	addi	a0,s0,+00000010
	jal	ra,00000000230713B8
	c.bnez	a0,000000002302CCB2

l2302CCDC:
	c.li	a5,00000001
	sb	a5,s2,+00000000
	c.j	000000002302CCB4

;; sector_statistics_cb: 2302CCE4
sector_statistics_cb proc
	lbu	a5,a0,+00000000
	c.beqz	a5,000000002302CCFA

l2302CCEA:
	lbu	a5,a0,+00000001
	c.li	a4,00000001
	bne	a5,a4,000000002302CCFE

l2302CCF4:
	c.lw	a1,0(a5)
	c.addi	a5,00000001
	c.sw	a1,0(a5)

l2302CCFA:
	c.li	a0,00000000
	c.jr	ra

l2302CCFE:
	c.li	a4,00000002
	bne	a5,a4,000000002302CCFA

l2302CD04:
	c.lw	a2,0(a5)
	c.addi	a5,00000001
	c.sw	a2,0(a5)
	c.j	000000002302CCFA

;; alloc_env_cb: 2302CD0C
alloc_env_cb proc
	lbu	a5,a0,+00000000
	c.beqz	a5,000000002302CD38

l2302CD12:
	c.lw	a0,16(a3)
	c.lw	a1,0(a4)
	bgeu	a4,a3,000000002302CD3C

l2302CD1A:
	lbu	a4,a0,+00000002
	c.li	a3,00000001
	beq	a4,a3,000000002302CD34

l2302CD24:
	c.li	a3,00000002
	bne	a4,a3,000000002302CD3C

l2302CD2A:
	lui	a4,0004200E
	lbu	a4,a4,-000001D4
	c.bnez	a4,000000002302CD3C

l2302CD34:
	c.lw	a0,20(a4)
	c.sw	a2,0(a4)

l2302CD38:
	c.mv	a0,a5
	c.jr	ra

l2302CD3C:
	c.li	a5,00000000
	c.j	000000002302CD38

;; write_status: 2302CD40
;;   Called from:
;;     2302CE40 (in read_env)
;;     2302CF18 (in update_sec_status)
;;     2302CF4E (in update_sec_status)
;;     2302D7BE (in del_env)
;;     2302D7F4 (in del_env)
;;     2302D82E (in del_env)
;;     2302D8FA (in move_env)
;;     2302D914 (in move_env)
;;     2302DA30 (in check_and_recovery_env_cb)
;;     2302DA68 (in do_gc)
;;     2302DBDE (in create_env_blob)
;;     2302DC68 (in create_env_blob)
write_status proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	bltu	a3,a2,000000002302CD76

l2302CD4C:
	lui	a4,00023082
	lui	a3,00023082
	lui	a2,00023082
	lui	a0,00023082
	addi	a4,a4,-00000648
	addi	a3,a3,-0000009C
	addi	a2,a2,-00000080
	addi	a1,zero,+00000111
	addi	a0,a0,-00000060
	jal	ra,000000002302E2C0

l2302CD74:
	c.j	000000002302CD74

l2302CD76:
	c.mv	s0,a1
	c.bnez	a1,000000002302CDA4

l2302CD7A:
	lui	a4,00023082
	lui	a3,00023082
	lui	a2,00023082
	lui	a0,00023082
	addi	a4,a4,-00000648
	addi	a3,a3,-00000014
	addi	a2,a2,-00000080
	addi	a1,zero,+00000112
	addi	a0,a0,-00000060
	jal	ra,000000002302E2C0

l2302CDA2:
	c.j	000000002302CDA2

l2302CDA4:
	c.slli	a2,03
	c.addi	a2,FFFFFFFF
	c.mv	s1,a0
	c.srli	a2,00000003
	addi	a1,zero,+000000FF
	c.mv	a0,s0
	c.swsp	a3,00000084
	jal	ra,0000000023070EB8
	c.lwsp	a2,000000A4
	c.li	a2,00000001
	c.addi	a3,FFFFFFFF
	add	a1,s0,a3
	sb	zero,a1,+00000000
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	add	a0,s1,a3
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002302E27C

;; read_env: 2302CDD6
;;   Called from:
;;     2302D378 (in read_sector_meta_data)
;;     2302D686 (in env_iterator)
;;     2302D73A (in find_env)
;;     2302DABE (in do_gc)
read_env proc
	c.addi16sp	FFFFFFA0
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	c.swsp	s2,00000028
	c.swsp	s1,000000A8
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.mv	s0,a0
	c.lw	a0,80(a0)
	c.li	a2,0000001C
	c.addi4spn	a1,00000004
	jal	ra,000000002302E25C
	c.li	a1,00000006
	c.addi4spn	a0,00000004
	jal	ra,000000002302CB3A
	c.lwsp	a6,000000E4
	andi	a0,a0,+000000FF
	c.lui	a4,00008000
	sb	a0,s0,+00000000
	c.sw	s0,8(a5)
	addi	s2,a5,-00000014
	c.addi	a4,FFFFFFEC
	bgeu	a4,s2,000000002302CE5A

l2302CE10:
	c.li	a5,0000001C
	c.sw	s0,8(a5)
	c.li	a5,00000005
	beq	a0,a5,000000002302CE44

l2302CE1A:
	c.lw	s0,80(a3)
	lui	a2,00023082
	lui	a0,00023082
	addi	a2,a2,-000000FC
	addi	a1,zero,+0000021C
	addi	a0,a0,-00000060
	sb	a5,s0,+00000000
	jal	ra,000000002302E2C0
	c.lw	s0,80(a0)
	c.li	a3,00000005
	c.li	a2,00000006
	c.addi4spn	a1,00000004
	jal	ra,000000002302CD40

l2302CE44:
	sb	zero,s0,+00000001
	c.li	a0,00000002

l2302CE4A:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.addi16sp	00000060
	c.jr	ra

l2302CE5A:
	c.lui	a4,FFFFF000
	c.addi	a4,00000013
	c.add	a5,a4
	c.lui	a4,00007000
	c.addi	a4,00000012
	bltu	a4,a5,000000002302CEF4

l2302CE68:
	lui	a4,00023082
	lui	a3,00023076
	lui	a2,00023082
	lui	a0,00023082
	addi	a4,a4,-00000638
	addi	a3,a3,+00000768
	addi	a2,a2,-00000080
	addi	a1,zero,+00000223
	addi	a0,a0,-00000060
	jal	ra,000000002302E2C0

l2302CE90:
	c.j	000000002302CE90

l2302CE92:
	addi	a5,s1,+00000020
	addi	s3,zero,+00000020
	bltu	a5,s2,000000002302CEA2

l2302CE9E:
	sub	s3,s2,s1

l2302CEA2:
	c.lw	s0,80(a0)
	c.mv	a2,s3
	c.addi4spn	a1,00000020
	c.addi	a0,00000014
	c.add	a0,s1
	jal	ra,000000002302E25C
	c.mv	a0,s4
	c.mv	a2,s3
	c.addi4spn	a1,00000020
	jal	ra,000000002302E40E
	c.mv	s4,a0
	c.add	s1,s3

l2302CEBE:
	bltu	s1,s2,000000002302CE92

l2302CEC2:
	c.lwsp	s4,000000E4
	bne	a5,s4,000000002302CE44

l2302CEC8:
	c.lw	s0,80(s1)
	lbu	a2,sp,+00000018
	c.li	a5,00000001
	c.addi	s1,0000001C
	sb	a5,s0,+00000001
	c.mv	a0,s1
	addi	a1,s0,+00000010
	jal	ra,000000002302E25C
	lbu	a5,sp,+00000018
	c.lwsp	t3,000000C4
	c.li	a0,00000000
	c.add	s1,a5
	c.sw	s0,84(s1)
	c.sw	s0,12(a4)
	sb	a5,s0,+00000002
	c.j	000000002302CE4A

l2302CEF4:
	c.li	s1,00000000
	c.li	s4,00000000
	c.j	000000002302CEBE

;; update_sec_status: 2302CEFA
;;   Called from:
;;     2302D8EE (in move_env)
;;     2302DBAE (in create_env_blob)
update_sec_status proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	lbu	a4,a0,+00000001
	c.li	a5,00000001
	c.mv	s0,a0
	bne	a4,a5,000000002302CF2C

l2302CF10:
	c.lw	a0,4(a0)
	c.li	a3,00000002
	c.li	a2,00000004
	c.addi4spn	a1,0000000C
	jal	ra,000000002302CD40
	c.mv	s2,a0

l2302CF1E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2302CF2C:
	c.li	a5,00000002
	c.li	s2,00000000
	bne	a4,a5,000000002302CF1E

l2302CF34:
	c.lw	a0,16(a5)
	addi	a4,zero,+0000005B
	c.mv	s1,a2
	bgeu	a4,a5,000000002302CF46

l2302CF40:
	c.sub	a5,a1
	bltu	a4,a5,000000002302CF68

l2302CF46:
	c.lw	s0,4(a0)
	c.addi4spn	a1,0000000C
	c.li	a3,00000003
	c.li	a2,00000004
	jal	ra,000000002302CD40
	c.mv	s2,a0
	c.lw	s0,4(a0)
	c.lui	a1,00001000
	c.add	a1,a0
	jal	ra,000000002302CB58
	c.beqz	s1,000000002302CF1E

l2302CF60:
	c.li	a5,00000001
	sb	a5,s1,+00000000
	c.j	000000002302CF1E

l2302CF68:
	c.beqz	a2,000000002302CF1E

l2302CF6A:
	sb	zero,a2,+00000000
	c.j	000000002302CF1E

;; format_sector.constprop.16: 2302CF70
;;   Called from:
;;     2302D03C (in check_sec_hdr_cb)
;;     2302DA8C (in do_gc)
;;     2302E092 (in ef_env_set_default)
format_sector.constprop.16 proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	slli	a5,a0,00000014
	c.beqz	a5,000000002302CFA8

l2302CF7E:
	lui	a4,00023082
	lui	a3,00023082
	lui	a2,00023082
	lui	a0,00023082
	addi	a4,a4,-00000614
	addi	a3,a3,-000001F4
	addi	a2,a2,-00000080
	addi	a1,zero,+000003B5
	addi	a0,a0,-00000060
	jal	ra,000000002302E2C0

l2302CFA6:
	c.j	000000002302CFA6

l2302CFA8:
	c.lui	a1,00001000
	c.mv	s0,a0
	jal	ra,000000002302E2DE
	c.mv	s1,a0
	c.bnez	a0,000000002302D008

l2302CFB4:
	c.li	a2,00000014
	addi	a1,zero,+000000FF
	c.addi4spn	a0,0000000C
	jal	ra,0000000023070EB8
	c.li	a2,00000003
	addi	a1,zero,+000000FF
	c.addi4spn	a0,0000000C
	jal	ra,0000000023070EB8
	c.li	a2,00000003
	addi	a1,zero,+000000FF
	addi	a0,sp,+0000000F
	sb	zero,sp,+0000000C
	jal	ra,0000000023070EB8
	lui	a5,00030344
	addi	a5,a5,+00000645
	c.swsp	a5,00000088
	c.addi4spn	a1,0000000C
	c.li	a5,FFFFFFFF
	c.li	a2,00000014
	c.mv	a0,s0
	sb	zero,sp,+0000000F
	c.swsp	a5,0000000C
	c.swsp	a5,0000008C
	jal	ra,000000002302E27C
	c.lui	a1,00001000
	c.mv	s1,a0
	c.add	a1,s0
	c.mv	a0,s0
	jal	ra,000000002302CB58

l2302D008:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; check_sec_hdr_cb: 2302D014
check_sec_hdr_cb proc
	lbu	a5,a0,+00000000
	c.bnez	a5,000000002302D04C

l2302D01A:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s1,a1
	c.lw	a0,4(a1)
	c.mv	s0,a0
	lui	a0,00023082
	addi	a0,a0,-000004F8
	jal	ra,000000002302E32A
	c.lw	s1,0(a5)
	c.addi	a5,00000001
	c.sw	s1,0(a5)
	c.lw	s0,4(a0)
	jal	ra,000000002302CF70
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2302D04C:
	c.li	a0,00000000
	c.jr	ra

;; print_env_cb: 2302D050
print_env_cb proc
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
	lbu	s4,a0,+00000001
	beq	s4,zero,000000002302D124

l2302D06C:
	c.lw	a0,8(a4)
	c.lw	a1,0(a5)
	c.add	a5,a4
	c.sw	a1,0(a5)
	lbu	a4,a0,+00000000
	c.li	a5,00000002
	bne	a4,a5,000000002302D124

l2302D07E:
	lbu	a1,a0,+00000002
	c.mv	s0,a0
	addi	a2,a0,+00000010
	lui	a0,00023082
	addi	a0,a0,-00000124
	jal	ra,000000002302E3EE
	c.lw	s0,12(a4)
	c.lui	a5,00001000
	addi	a5,a5,-00000075
	bltu	a5,a4,000000002302D108

l2302D0A0:
	c.li	s3,00000002
	c.li	s5,00000000
	addi	s6,zero,+0000005E
	lui	s7,00023082

l2302D0AC:
	c.li	s1,00000000

l2302D0AE:
	c.lw	s0,12(a5)
	bltu	s1,a5,000000002302D0C0

l2302D0B4:
	c.li	a5,00000001
	c.mv	s5,s4
	beq	s3,a5,000000002302D118

l2302D0BC:
	c.li	s3,00000001
	c.j	000000002302D0AC

l2302D0C0:
	addi	a4,s1,+00000020
	addi	s2,zero,+00000020
	bltu	a4,a5,000000002302D0D0

l2302D0CC:
	sub	s2,a5,s1

l2302D0D0:
	c.lw	s0,84(a0)
	c.mv	a2,s2
	c.mv	a1,sp
	c.add	a0,s1
	jal	ra,000000002302E25C
	c.li	a5,00000000
	beq	s5,zero,000000002302D102

l2302D0E2:
	c.mv	a2,sp
	c.mv	a1,s2
	addi	a0,s7,-0000011C
	jal	ra,000000002302E3EE

l2302D0EE:
	c.add	s1,s2
	c.j	000000002302D0AE

l2302D0F2:
	add	a4,sp,a5
	lbu	a4,a4,+00000000
	c.addi	a4,FFFFFFE0
	bltu	s6,a4,000000002302D108

l2302D100:
	c.addi	a5,00000001

l2302D102:
	bne	s2,a5,000000002302D0F2

l2302D106:
	c.j	000000002302D0EE

l2302D108:
	c.lw	s0,12(a2)
	c.lw	s0,84(a1)
	lui	a0,00023082
	addi	a0,a0,-00000114
	jal	ra,000000002302E3EE

l2302D118:
	lui	a0,00023072
	addi	a0,a0,+000007FC
	jal	ra,000000002302E3EE

l2302D124:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.lwsp	a6,000001D8
	c.lwsp	a2,000001F8
	c.li	a0,00000000
	c.addi16sp	00000050
	c.jr	ra

;; get_next_env_addr: 2302D13C
;;   Called from:
;;     2302D368 (in read_sector_meta_data)
;;     2302D67A (in env_iterator)
;;     2302DA80 (in do_gc)
get_next_env_addr proc
	lbu	a4,a0,+00000001
	c.li	a5,00000001
	bne	a4,a5,000000002302D14A

l2302D146:
	c.li	a0,FFFFFFFF
	c.jr	ra

l2302D14A:
	c.lw	a1,80(a4)
	c.li	a3,FFFFFFFF
	c.lw	a0,4(a5)
	bne	a4,a3,000000002302D15A

l2302D154:
	addi	a0,a5,+00000014
	c.jr	ra

l2302D15A:
	c.lui	a3,00001000
	c.add	a3,a5
	bltu	a3,a4,000000002302D146

l2302D162:
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	lbu	a3,a1,+00000001
	addi	s0,a4,+00000001
	c.beqz	a3,000000002302D182

l2302D17E:
	c.lw	a1,8(s0)
	c.add	s0,a4

l2302D182:
	c.lui	s4,00001000
	lui	a3,00042012
	c.mv	s5,a1
	c.addi	s4,FFFFFFEC
	c.lui	a1,FFFFF000
	c.mv	s3,a0
	addi	a2,a3,+0000051C
	c.add	s4,a5
	c.and	a1,s0
	c.li	a4,00000000
	addi	a3,a3,+0000051C
	c.li	a0,00000004

l2302D1A0:
	lw	a6,a2,+00000000
	bne	a1,a6,000000002302D1DE

l2302D1A8:
	c.slli	a4,03
	c.add	a4,a3
	c.lw	a4,4(a4)
	c.mv	s1,s0
	bne	s0,a4,000000002302D1E8

l2302D1B4:
	c.li	a0,FFFFFFFF

l2302D1B6:
	lw	a4,s3,+00000004
	c.lui	a5,00001000
	c.add	a5,a4
	bltu	a5,a0,000000002302D1C8

l2302D1C2:
	lw	a5,s5,+00000008
	c.bnez	a5,000000002302D1CA

l2302D1C8:
	c.li	a0,FFFFFFFF

l2302D1CA:
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

l2302D1DE:
	c.addi	a4,00000001
	c.addi	a2,00000008
	bne	a4,a0,000000002302D1A0

l2302D1E6:
	c.mv	s1,s0

l2302D1E8:
	c.lui	s2,00001000
	c.addi	s2,FFFFFFE4
	lui	s6,00030345
	c.add	s2,a5
	addi	s6,s6,+0000064B
	c.j	000000002302D240

l2302D1F8:
	addi	a2,zero,+00000020
	c.mv	a1,sp
	c.mv	a0,s1
	jal	ra,000000002302E25C
	c.mv	a4,sp
	addi	a0,s1,-00000008
	addi	a2,s1,+00000014

l2302D20E:
	beq	s2,a0,000000002302D23E

l2302D212:
	lbu	a5,a4,+00000001
	lbu	a3,a4,+00000000
	c.slli	a5,08
	c.add	a5,a3
	lbu	a3,a4,+00000002
	c.slli	a3,10
	c.add	a5,a3
	lbu	a3,a4,+00000003
	c.slli	a3,18
	c.add	a5,a3
	bne	a5,s6,000000002302D236

l2302D232:
	bgeu	a0,s0,000000002302D1B6

l2302D236:
	c.addi	a0,00000001
	c.addi	a4,00000001
	bne	a2,a0,000000002302D20E

l2302D23E:
	c.addi	s1,0000001C

l2302D240:
	bltu	s1,s4,000000002302D1F8

l2302D244:
	c.j	000000002302D1B4

;; read_sector_meta_data: 2302D246
;;   Called from:
;;     2302D482 (in sector_iterator)
;;     2302D49A (in sector_iterator)
;;     2302D660 (in env_iterator)
read_sector_meta_data proc
	c.addi16sp	FFFFFF40
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
	slli	a5,a0,00000014
	c.beqz	a5,000000002302D28E

l2302D264:
	lui	a4,00023082
	lui	a3,00023082
	lui	a2,00023082
	lui	a0,00023082
	addi	a4,a4,-0000062C
	addi	a3,a3,-000001F4
	addi	a2,a2,-00000080
	addi	a1,zero,+0000024A
	addi	a0,a0,-00000060
	jal	ra,000000002302E2C0

l2302D28C:
	c.j	000000002302D28C

l2302D28E:
	c.mv	s0,a1
	c.mv	s4,a2
	c.addi4spn	a1,00000004
	c.li	a2,00000014
	c.mv	s2,a0
	jal	ra,000000002302E25C
	c.lwsp	a2,000000C4
	lui	a5,00030344
	sw	s2,s0,+00000004
	c.sw	s0,8(a4)
	addi	a5,a5,+00000645
	beq	a4,a5,000000002302D2D6

l2302D2B0:
	c.li	a5,FFFFFFFF
	sb	zero,s0,+00000000
	c.sw	s0,12(a5)
	c.li	s1,00000007

l2302D2BA:
	c.lwsp	t5,00000130
	c.lwsp	s10,00000114
	c.mv	a0,s1
	c.lwsp	s2,00000158
	c.lwsp	s6,00000134
	c.lwsp	a4,00000178
	c.lwsp	a0,00000198
	c.lwsp	t1,000001B8
	c.lwsp	sp,000001D8
	c.lwsp	t5,000000E8
	c.lwsp	s10,0000000C
	c.lwsp	s6,0000002C
	c.addi16sp	000000C0
	c.jr	ra

l2302D2D6:
	c.lwsp	a6,000000E4
	c.li	s3,00000001
	c.li	a1,00000004
	c.sw	s0,12(a5)
	sb	s3,s0,+00000000
	c.addi4spn	a0,00000004
	jal	ra,000000002302CB3A
	andi	s1,a0,+000000FF
	sb	s1,s0,+00000001
	c.li	a1,00000004
	addi	a0,sp,+00000007
	jal	ra,000000002302CB3A
	sb	a0,s0,+00000002
	bne	s4,zero,000000002302D306

l2302D302:
	c.li	s1,00000000
	c.j	000000002302D2BA

l2302D306:
	addi	a5,s2,+00000014
	sw	zero,s0,+00000010
	c.sw	s0,20(a5)
	bne	s1,s3,000000002302D31C

l2302D314:
	c.lui	a5,00001000
	c.addi	a5,FFFFFFEC
	c.sw	s0,16(a5)
	c.j	000000002302D302

l2302D31C:
	c.li	a5,00000002
	bne	s1,a5,000000002302D302

l2302D322:
	lui	a4,00042012
	addi	a3,a4,+0000051C
	c.li	a5,00000000
	addi	a4,a4,+0000051C
	c.li	a2,00000004

l2302D332:
	c.lw	a3,0(a1)
	bne	s2,a1,000000002302D34E

l2302D338:
	c.slli	a5,03
	c.add	a5,a4
	c.lw	a5,4(a5)
	c.lui	a4,00001000
	c.add	s2,a4
	sub	s2,s2,a5
	c.sw	s0,20(a5)
	sw	s2,s0,+00000010
	c.j	000000002302D302

l2302D34E:
	c.addi	a5,00000001
	c.addi	a3,00000008
	bne	a5,a2,000000002302D332

l2302D356:
	c.lui	a5,00001000
	c.addi	a5,FFFFFFEC
	c.sw	s0,16(a5)
	c.li	a5,FFFFFFFF
	c.swsp	a5,00000044
	c.li	s2,FFFFFFFF
	c.li	s3,00000001

l2302D364:
	c.addi4spn	a1,00000038
	c.mv	a0,s0
	jal	ra,000000002302D13C
	c.swsp	a0,00000044
	bne	a0,s2,000000002302D376

l2302D372:
	c.li	s1,00000000
	c.j	000000002302D3A0

l2302D376:
	c.addi4spn	a0,00000038
	jal	ra,000000002302CDD6
	lbu	a5,sp,+00000039
	c.bnez	a5,000000002302D3E8

l2302D382:
	lbu	a5,sp,+00000038
	andi	a5,a5,+000000FB
	beq	a5,s3,000000002302D3E8

l2302D38E:
	c.lwsp	a0,00000064
	lui	a0,00023082
	addi	a0,a0,-000000CC
	jal	ra,000000002302E32A
	sw	zero,s0,+00000010

l2302D3A0:
	c.lw	s0,4(a5)
	lw	s2,s0,+00000014
	c.lui	s4,00001000
	add	s5,a5,s4
	addi	s4,s4,+00000020
	c.mv	s3,s2
	c.li	s6,00000000
	c.add	s4,a5
	addi	s9,zero,+000000FF

l2302D3BA:
	bltu	s3,s5,000000002302D3F8

l2302D3BE:
	addi	a5,zero,+000000FF
	beq	s6,a5,000000002302D3C8

l2302D3C6:
	c.mv	s2,s5

l2302D3C8:
	c.lw	s0,20(a5)
	c.lw	s0,4(a0)
	beq	a5,s2,000000002302D3E0

l2302D3D0:
	c.lui	a5,00001000
	c.add	a5,a0
	sw	s2,s0,+00000014
	sub	s2,a5,s2
	sw	s2,s0,+00000010

l2302D3E0:
	c.lw	s0,20(a1)
	jal	ra,000000002302CB58
	c.j	000000002302D2BA

l2302D3E8:
	c.lwsp	ra,000000A4
	c.lw	s0,20(a4)
	c.lw	s0,16(a5)
	c.add	a4,a3
	c.sub	a5,a3
	c.sw	s0,20(a4)
	c.sw	s0,16(a5)
	c.j	000000002302D364

l2302D3F8:
	addi	s7,s3,+00000020
	addi	s8,zero,+00000020
	bltu	s7,s5,000000002302D408

l2302D404:
	sub	s8,s4,s7

l2302D408:
	c.mv	a2,s8
	c.addi4spn	a1,00000018
	c.mv	a0,s3
	jal	ra,000000002302E25C
	c.li	a5,00000000

l2302D414:
	bne	s8,a5,000000002302D41C

l2302D418:
	c.mv	s3,s7
	c.j	000000002302D3BA

l2302D41C:
	c.addi4spn	a4,00000018
	c.add	a4,a5
	lbu	a4,a4,+00000000
	beq	s6,s9,000000002302D430

l2302D428:
	bne	a4,s9,000000002302D430

l2302D42C:
	add	s2,s3,a5

l2302D430:
	c.addi	a5,00000001
	c.mv	s6,a4
	c.j	000000002302D414

;; sector_iterator: 2302D436
;;   Called from:
;;     2302D4D0 (in alloc_env)
;;     2302D4EA (in alloc_env)
;;     2302D520 (in alloc_env)
;;     2302D568 (in gc_collect)
;;     2302D5A2 (in gc_collect)
;;     2302E140 (in ef_load_env)
;;     2302E172 (in ef_load_env)
sector_iterator proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.mv	s6,a5
	c.li	a5,FFFFFFFF
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	s4,a2
	c.mv	s5,a3
	c.mv	s3,a4
	c.sw	a0,4(a5)
	c.li	s7,FFFFFFFF

l2302D45C:
	c.mv	a0,s0
	jal	ra,000000002302CBB4
	c.mv	s2,a0
	bne	a0,s7,000000002302D47E

l2302D468:
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

l2302D47E:
	c.li	a2,00000000
	c.mv	a1,s0
	jal	ra,000000002302D246
	c.beqz	s1,000000002302D490

l2302D488:
	lbu	a5,s0,+00000001
	bne	a5,s1,000000002302D45C

l2302D490:
	beq	s6,zero,000000002302D49E

l2302D494:
	c.li	a2,00000001
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,000000002302D246

l2302D49E:
	c.mv	a2,s5
	c.mv	a1,s4
	c.mv	a0,s0
	c.jalr	s3
	c.beqz	a0,000000002302D45C

l2302D4A8:
	c.j	000000002302D468

;; alloc_env: 2302D4AA
;;   Called from:
;;     2302D5C0 (in new_env)
;;     2302D5F6 (in new_env)
;;     2302D892 (in move_env)
alloc_env proc
	c.addi16sp	FFFFFFD0
	c.li	a5,FFFFFFFF
	lui	a4,0002302D
	c.swsp	a1,00000084
	c.swsp	a5,00000088
	addi	a4,a4,-0000031C
	c.li	a5,00000000
	c.addi4spn	a3,0000001C
	c.addi4spn	a2,00000018
	c.li	a1,00000000
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s2,a0
	c.swsp	zero,0000000C
	c.swsp	zero,0000008C
	jal	ra,000000002302D436
	c.lwsp	t3,000000E4
	c.beqz	a5,000000002302D4EE

l2302D4D8:
	lui	a4,0002302D
	c.li	a5,00000001
	addi	a4,a4,-000002F4
	c.addi4spn	a3,00000014
	c.addi4spn	a2,0000000C
	c.li	a1,00000002
	c.mv	a0,s2
	jal	ra,000000002302D436

l2302D4EE:
	c.lwsp	s8,000000E4
	c.beqz	a5,000000002302D524

l2302D4F2:
	c.lwsp	s4,000000A4
	c.li	a4,FFFFFFFF
	bne	a3,a4,000000002302D524

l2302D4FA:
	c.li	s1,00000001
	bltu	s1,a5,000000002302D50E

l2302D500:
	lui	s0,0004200E
	addi	s0,s0,-000001D4
	lbu	a5,s0,+00000000
	c.beqz	a5,000000002302D532

l2302D50E:
	lui	a4,0002302D
	c.li	a5,00000001
	addi	a4,a4,-000002F4
	c.addi4spn	a3,00000014
	c.addi4spn	a2,0000000C
	c.li	a1,00000001
	c.mv	a0,s2
	jal	ra,000000002302D436

l2302D524:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	s4,00000044
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l2302D532:
	lui	a2,00023082
	lui	a0,00023082
	addi	a2,a2,-000005E4
	addi	a1,zero,+0000042D
	addi	a0,a0,-00000060
	jal	ra,000000002302E2C0
	sb	s1,s0,+00000000
	c.j	000000002302D524

;; gc_collect: 2302D550
;;   Called from:
;;     2302D5EE (in new_env)
;;     2302D622 (in check_and_recovery_gc_cb)
;;     2302DFA4 (in ef_set_env_blob)
;;     2302E192 (in ef_load_env)
gc_collect proc
	c.addi16sp	FFFFFFD0
	lui	a4,0002302D
	c.li	a5,00000000
	addi	a4,a4,-0000041E
	c.li	a3,00000000
	c.addi4spn	a2,00000004
	c.li	a1,00000001
	c.addi4spn	a0,00000008
	c.swsp	ra,00000094
	c.swsp	zero,00000080
	jal	ra,000000002302D436
	c.lwsp	tp,000000A4
	lui	a2,00023082
	lui	a0,00023082
	c.li	a4,00000001
	addi	a2,a2,-000001DC
	addi	a1,zero,+000004FA
	addi	a0,a0,-00000060
	jal	ra,000000002302E2C0
	c.lwsp	tp,000000C4
	c.li	a5,00000001
	bltu	a5,a4,000000002302D5A6

l2302D590:
	lui	a4,0002302E
	c.li	a5,00000000
	addi	a4,a4,-000005C8
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	jal	ra,000000002302D436

l2302D5A6:
	c.lwsp	a2,00000130
	lui	a5,0004200E
	sb	zero,a5,+00000E2C
	c.addi16sp	00000030
	c.jr	ra

;; new_env: 2302D5B4
;;   Called from:
;;     2302DB9A (in create_env_blob)
;;     2302DF46 (in ef_set_env_blob)
new_env proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s0,a1
	jal	ra,000000002302D4AA
	c.li	a5,FFFFFFFF
	bne	a0,a5,000000002302D5FA

l2302D5CA:
	lui	a5,0004200E
	lbu	a5,a5,-000001D4
	c.beqz	a5,000000002302D5FA

l2302D5D4:
	lui	a2,00023082
	lui	a0,00023082
	addi	a1,zero,+000004B6
	addi	a0,a0,-00000060
	c.mv	a3,s0
	addi	a2,a2,-00000174
	jal	ra,000000002302E2C0
	jal	ra,000000002302D550
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002302D4AA

l2302D5FA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; check_and_recovery_gc_cb: 2302D604
check_and_recovery_gc_cb proc
	lbu	a5,a0,+00000000
	c.beqz	a5,000000002302D62E

l2302D60A:
	lbu	a4,a0,+00000002
	c.li	a5,00000003
	bne	a4,a5,000000002302D62E

l2302D614:
	c.addi	sp,FFFFFFF0
	lui	a5,0004200E
	c.li	a4,00000001
	c.swsp	ra,00000084
	sb	a4,a5,+00000E2C
	jal	ra,000000002302D550
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2302D62E:
	c.li	a0,00000000
	c.jr	ra

;; env_iterator: 2302D632
;;   Called from:
;;     2302D774 (in find_env)
;;     2302D8D8 (in move_env)
;;     2302E0F4 (in ef_print_env)
;;     2302E188 (in ef_load_env)
env_iterator proc
	c.addi16sp	FFFFFFC0
	c.li	a5,FFFFFFFF
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	ra,0000009C
	c.mv	s0,a0
	c.mv	s2,a1
	c.mv	s3,a2
	c.mv	s4,a3
	c.swsp	a5,00000084
	c.li	s1,FFFFFFFF
	c.li	s5,00000001

l2302D652:
	c.addi4spn	a0,00000008
	jal	ra,000000002302CBB4
	beq	a0,s1,000000002302D694

l2302D65C:
	c.li	a2,00000000
	c.addi4spn	a1,00000008
	jal	ra,000000002302D246
	c.bnez	a0,000000002302D652

l2302D666:
	lbu	a5,sp,+00000009
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	bltu	s5,a5,000000002302D652

l2302D674:
	c.sw	s0,80(s1)

l2302D676:
	c.mv	a1,s0
	c.addi4spn	a0,00000008
	jal	ra,000000002302D13C
	c.sw	s0,80(a0)
	beq	a0,s1,000000002302D652

l2302D684:
	c.mv	a0,s0
	jal	ra,000000002302CDD6
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s0
	c.jalr	s4
	c.beqz	a0,000000002302D676

l2302D694:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

;; find_env: 2302D6A6
;;   Called from:
;;     2302D7A2 (in del_env)
;;     2302DD6C (in ef_get_env_blob)
;;     2302DF5C (in ef_set_env_blob)
find_env proc
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
	c.mv	s2,a0
	c.mv	s3,a1
	jal	ra,000000002307132C
	c.mv	a2,a0
	c.mv	s5,a0
	c.mv	a1,s2
	c.li	a0,00000000
	lui	s1,00042012
	jal	ra,000000002302E40E
	addi	s4,s1,+00000484
	srli	s7,a0,00000010
	c.li	s0,00000000
	addi	s1,s1,+00000484
	c.li	s8,FFFFFFFF
	c.li	s6,00000010

l2302D6E6:
	lw	a0,s4,+00000004
	beq	a0,s8,000000002302D75A

l2302D6EE:
	lhu	a5,s4,+00000000
	bne	a5,s7,000000002302D75A

l2302D6F6:
	addi	a2,zero,+00000040
	c.mv	a1,sp
	c.addi	a0,0000001C
	jal	ra,000000002302E25C
	c.mv	a2,s5
	c.mv	a1,sp
	c.mv	a0,s2
	jal	ra,00000000230713B8
	c.bnez	a0,000000002302D75A

l2302D70E:
	c.slli	s0,03
	add	a5,s1,s0
	c.lw	a5,4(a4)
	sw	a4,s3,+00000050
	lhu	a4,a5,+00000002
	c.lui	a5,00010000
	addi	a3,a5,-00000012
	c.addi	a5,FFFFFFFF
	bltu	a3,a4,000000002302D732

l2302D72A:
	addi	a5,a4,+00000010
	c.slli	a5,10
	c.srli	a5,00000010

l2302D732:
	c.add	s0,s1
	sh	a5,s0,+00000002
	c.mv	a0,s3
	jal	ra,000000002302CDD6
	c.li	s0,00000001

l2302D740:
	c.mv	a0,s0
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
	c.addi16sp	00000070
	c.jr	ra

l2302D75A:
	c.addi	s0,00000001
	c.addi	s4,00000008
	bne	s0,s6,000000002302D6E6

l2302D762:
	lui	a3,0002302D
	addi	a3,a3,-0000036E
	c.mv	a2,sp
	c.mv	a1,s2
	c.mv	a0,s3
	sb	zero,sp,+00000000
	jal	ra,000000002302D632
	lbu	s0,sp,+00000000
	c.beqz	s0,000000002302D740

l2302D77E:
	lw	a2,s3,+00000050
	c.mv	a1,s5
	c.mv	a0,s2
	jal	ra,000000002302CBF2
	c.j	000000002302D740

;; del_env: 2302D78C
;;   Called from:
;;     2302D888 (in move_env)
;;     2302D960 (in move_env)
;;     2302DDDE (in ef_del_env)
;;     2302DF82 (in ef_set_env_blob)
;;     2302DF92 (in ef_set_env_blob)
del_env proc
	c.addi16sp	FFFFFF70
	c.swsp	s0,00000044
	c.swsp	s3,000000BC
	c.swsp	ra,000000C4
	c.swsp	s1,000000C0
	c.swsp	s2,00000040
	c.mv	s3,a0
	c.mv	s0,a1
	c.bnez	a1,000000002302D7AC

l2302D79E:
	c.addi4spn	a1,00000018
	c.swsp	a2,00000084
	jal	ra,000000002302D6A6
	c.beqz	a0,000000002302D7FC

l2302D7A8:
	c.lwsp	a2,00000084
	c.addi4spn	s0,00000018

l2302D7AC:
	lui	s2,0004200E
	c.lw	s0,80(a0)
	addi	s2,s2,-000001D1
	c.bnez	a2,000000002302D828

l2302D7B8:
	c.li	a3,00000003
	c.li	a2,00000006
	c.addi4spn	a1,00000010
	jal	ra,000000002302CD40
	c.li	a5,00000001
	c.mv	s1,a0
	sb	a5,s2,+00000000

l2302D7CA:
	c.bnez	s1,000000002302D818

l2302D7CC:
	c.lw	s0,80(a5)
	c.lui	s0,FFFFF000
	c.li	a2,00000003
	c.and	s0,a5
	c.addi	s0,00000003
	c.addi4spn	a1,00000010
	c.mv	a0,s0
	jal	ra,000000002302E25C
	c.li	a1,00000004
	c.addi4spn	a0,00000010
	jal	ra,000000002302CB3A
	c.li	a5,00000001
	bne	a0,a5,000000002302D818

l2302D7EC:
	c.li	a3,00000002
	c.li	a2,00000004
	c.addi4spn	a1,00000010
	c.mv	a0,s0
	jal	ra,000000002302CD40
	c.mv	s1,a0
	c.j	000000002302D818

l2302D7FC:
	lui	a2,00023082
	lui	a0,00023082
	c.mv	a3,s3
	addi	a2,a2,-00000438
	addi	a1,zero,+00000447
	addi	a0,a0,-00000060
	jal	ra,000000002302E2C0
	c.li	s1,00000004

l2302D818:
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.mv	a0,s1
	c.lwsp	sp,00000048
	c.lwsp	t1,00000024
	c.lwsp	t4,00000178
	c.addi16sp	00000090
	c.jr	ra

l2302D828:
	c.li	a3,00000004
	c.li	a2,00000006
	c.addi4spn	a1,00000010
	jal	ra,000000002302CD40
	lbu	a5,s2,+00000000
	c.mv	s1,a0
	c.bnez	a5,000000002302D850

l2302D83A:
	c.bnez	a0,000000002302D850

l2302D83C:
	beq	s3,zero,000000002302D856

l2302D840:
	c.mv	a0,s3
	jal	ra,000000002307132C
	c.mv	a1,a0
	c.li	a2,FFFFFFFF
	c.mv	a0,s3

l2302D84C:
	jal	ra,000000002302CBF2

l2302D850:
	sb	zero,s2,+00000000
	c.j	000000002302D7CA

l2302D856:
	c.li	a2,FFFFFFFF
	lbu	a1,s0,+00000002
	addi	a0,s0,+00000010
	c.j	000000002302D84C

;; move_env: 2302D862
;;   Called from:
;;     2302D9DC (in check_and_recovery_env_cb)
;;     2302DAD8 (in do_gc)
move_env proc
	c.addi16sp	FFFFFF10
	c.swsp	s0,00000074
	c.swsp	ra,000000F4
	c.swsp	s1,000000F0
	c.swsp	s2,00000070
	c.swsp	s3,000000EC
	c.swsp	s4,0000006C
	c.swsp	s5,000000E8
	c.swsp	s6,00000068
	c.swsp	s7,000000E4
	lbu	a4,a0,+00000000
	c.li	a5,00000002
	c.mv	s0,a0
	bne	a4,a5,000000002302D88C

l2302D882:
	c.mv	a1,a0
	c.li	a2,00000000
	c.li	a0,00000000
	jal	ra,000000002302D78C

l2302D88C:
	c.lw	s0,8(a1)
	c.addi4spn	a0,0000000C
	c.li	s4,00000006
	jal	ra,000000002302D4AA
	c.li	a5,FFFFFFFF
	c.mv	s1,a0
	beq	a0,a5,000000002302D964

l2302D89E:
	lui	a5,0004200E
	lbu	a5,a5,-000001D3
	addi	s6,s0,+00000010
	c.beqz	a5,000000002302D8E4

l2302D8AC:
	addi	a2,zero,+00000041
	c.li	a1,00000000
	c.addi4spn	a0,00000024
	jal	ra,0000000023070EB8
	lbu	a2,s0,+00000002
	c.mv	a1,s6
	c.addi4spn	a0,00000024
	jal	ra,00000000230714A8
	lui	a3,0002302D
	addi	a3,a3,-0000036E
	addi	a2,sp,+0000000B
	c.addi4spn	a1,00000024
	c.addi4spn	a0,00000068
	sb	zero,sp,+0000000B
	jal	ra,000000002302D632
	lbu	a5,sp,+0000000B
	c.li	s4,00000000
	c.bnez	a5,000000002302D95A

l2302D8E4:
	lw	s3,s0,+00000008
	c.li	a2,00000000
	c.addi4spn	a0,0000000C
	c.mv	a1,s3
	jal	ra,000000002302CEFA
	c.li	a3,00000001
	c.li	a2,00000006
	c.addi4spn	a1,00000024
	c.mv	a0,s1
	jal	ra,000000002302CD40
	c.addi	s3,FFFFFFF8
	c.li	s2,00000000
	c.li	s4,00000000
	addi	s7,s1,+00000008

l2302D908:
	bltu	s2,s3,000000002302D97C

l2302D90C:
	c.li	a3,00000002
	c.li	a2,00000006
	c.addi4spn	a1,00000024
	c.mv	a0,s1
	jal	ra,000000002302CD40
	c.lw	s0,12(a1)
	lbu	a5,s0,+00000002
	c.lui	a0,FFFFF000
	c.addi	a1,0000001C
	c.add	a1,a5
	c.add	a1,s1
	c.and	a0,s1
	jal	ra,000000002302CB58
	lbu	a1,s0,+00000002
	c.mv	a2,s1
	c.mv	a0,s6
	jal	ra,000000002302CBF2
	c.lw	s0,80(a5)
	lbu	a3,s0,+00000002
	lui	a2,00023082
	lui	a0,00023082
	c.mv	a6,s1
	c.mv	a4,s6
	addi	a2,a2,-000001A4
	addi	a1,zero,+000004A6
	addi	a0,a0,-00000060
	jal	ra,000000002302E2C0

l2302D95A:
	c.li	a2,00000001
	c.mv	a1,s0
	c.li	a0,00000000
	jal	ra,000000002302D78C

l2302D964:
	c.lwsp	a5,00000130
	c.lwsp	a1,00000114
	c.mv	a0,s4
	c.lwsp	t2,00000134
	c.lwsp	gp,00000158
	c.lwsp	t6,00000068
	c.lwsp	s11,00000088
	c.lwsp	s7,000000A8
	c.lwsp	s3,000000C8
	c.lwsp	a5,000000E8
	c.addi16sp	000000F0
	c.jr	ra

l2302D97C:
	addi	a5,s2,+00000020
	addi	s5,zero,+00000020
	bltu	a5,s3,000000002302D98C

l2302D988:
	sub	s5,s3,s2

l2302D98C:
	c.lw	s0,80(a0)
	c.mv	a2,s5
	c.addi4spn	a1,00000068
	c.addi	a0,00000008
	c.add	a0,s2
	jal	ra,000000002302E25C
	add	a0,s7,s2
	c.mv	a2,s5
	c.addi4spn	a1,00000068
	jal	ra,000000002302E27C
	c.mv	s4,a0
	c.add	s2,s5
	c.j	000000002302D908

;; check_and_recovery_env_cb: 2302D9AC
check_and_recovery_env_cb proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	lbu	s1,a0,+00000001
	c.mv	s0,a0
	lbu	a5,a0,+00000000
	c.beqz	s1,000000002302DA20

l2302D9C0:
	c.li	a4,00000003
	bne	a5,a4,000000002302DA20

l2302D9C6:
	lbu	a1,a0,+00000002
	addi	a2,a0,+00000010
	lui	a0,00023082
	addi	a0,a0,-000005B4
	jal	ra,000000002302E32A
	c.mv	a0,s0
	jal	ra,000000002302D862
	lui	a5,00023082
	c.bnez	a0,000000002302DA08

l2302D9E6:
	lui	a2,00023082
	addi	a2,a2,-00000568
	addi	a1,zero,+000006D5
	addi	a0,a5,-00000060
	jal	ra,000000002302E2C0
	c.li	s1,00000000

l2302D9FC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2302DA08:
	c.lw	s0,8(a3)
	lui	a2,00023082
	addi	a2,a2,-00000548
	addi	a1,zero,+000006D7
	addi	a0,a5,-00000060
	jal	ra,000000002302E2C0
	c.j	000000002302D9FC

l2302DA20:
	c.li	a4,00000001
	c.li	s1,00000000
	bne	a5,a4,000000002302D9FC

l2302DA28:
	c.lw	s0,80(a0)
	c.li	a3,00000005
	c.li	a2,00000006
	c.addi4spn	a1,00000008
	jal	ra,000000002302CD40
	c.li	s1,00000001
	c.j	000000002302D9FC

;; do_gc: 2302DA38
do_gc proc
	lbu	a5,a0,+00000000
	c.beqz	a5,000000002302DAF6

l2302DA3E:
	lbu	a5,a0,+00000002
	c.li	a4,00000001
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	bltu	a4,a5,000000002302DAF6

l2302DA4E:
	c.addi16sp	FFFFFF80
	c.swsp	s0,0000003C
	c.swsp	s1,000000B8
	c.swsp	s2,00000038
	c.swsp	s3,000000B4
	c.swsp	s4,00000034
	c.swsp	ra,000000BC
	c.mv	s0,a0
	c.lw	a0,4(a0)
	c.li	a3,00000003
	c.li	a2,00000004
	c.addi4spn	a1,00000004
	c.addi	a0,00000003
	jal	ra,000000002302CD40
	c.li	a5,FFFFFFFF
	c.swsp	a5,0000002C
	c.li	s1,FFFFFFFF
	c.li	s2,00000001
	lui	s3,00023082
	lui	s4,00023082

l2302DA7C:
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	jal	ra,000000002302D13C
	c.swsp	a0,0000002C
	bne	a0,s1,000000002302DABC

l2302DA8A:
	c.lw	s0,4(a0)
	jal	ra,000000002302CF70
	c.lw	s0,4(a3)
	lui	a2,00023082
	lui	a0,00023082
	addi	a0,a0,-00000060
	addi	a2,a2,-000003EC
	addi	a1,zero,+000004E6
	jal	ra,000000002302E2C0
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.lwsp	s1,00000198
	c.li	a0,00000000
	c.addi16sp	00000080
	c.jr	ra

l2302DABC:
	c.addi4spn	a0,00000008
	jal	ra,000000002302CDD6
	lbu	a5,sp,+00000009
	c.beqz	a5,000000002302DA7C

l2302DAC8:
	lbu	a5,sp,+00000008
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	bltu	s2,a5,000000002302DA7C

l2302DAD6:
	c.addi4spn	a0,00000008
	jal	ra,000000002302D862
	c.beqz	a0,000000002302DA7C

l2302DADE:
	lbu	a3,sp,+0000000A
	c.addi4spn	a4,00000018
	addi	a2,s3,-0000041C
	addi	a1,zero,+000004E1
	addi	a0,s4,-00000060
	jal	ra,000000002302E2C0
	c.j	000000002302DA7C

l2302DAF6:
	c.li	a0,00000000
	c.jr	ra

;; create_env_blob: 2302DAFA
;;   Called from:
;;     2302DF6E (in ef_set_env_blob)
;;     2302E0BE (in ef_env_set_default)
create_env_blob proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s5,00000090
	c.lw	a0,20(s1)
	c.mv	s4,a0
	c.mv	a0,a1
	c.mv	s2,a1
	c.mv	s3,a2
	c.mv	s0,a3
	sb	zero,sp,+00000003
	jal	ra,000000002307132C
	addi	a5,zero,+00000040
	bgeu	a5,a0,000000002302DB4C

l2302DB26:
	lui	a0,00023082
	addi	a1,zero,+00000040
	addi	a0,a0,-000004B4
	jal	ra,000000002302E32A
	c.li	s0,00000004

l2302DB38:
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

l2302DB4C:
	addi	a1,zero,+000000FF
	c.li	a2,0000001C
	c.addi4spn	a0,00000004
	jal	ra,0000000023070EB8
	lui	a5,00030345
	addi	a5,a5,+0000064B
	c.mv	a0,s2
	c.swsp	a5,00000084
	jal	ra,000000002307132C
	sb	a0,sp,+00000018
	addi	a1,s0,+0000001C
	andi	a0,a0,+000000FF
	c.add	a1,a0
	c.lui	a5,00001000
	c.swsp	s0,0000008C
	c.swsp	a1,00000008
	c.addi	a5,FFFFFFEC
	bgeu	a5,a1,000000002302DB92

l2302DB82:
	lui	a0,00023082
	addi	a0,a0,-00000484
	jal	ra,000000002302E32A
	c.li	s0,00000006
	c.j	000000002302DB38

l2302DB92:
	c.li	s5,FFFFFFFF
	bne	s1,s5,000000002302DBA6

l2302DB98:
	c.mv	a0,s4
	jal	ra,000000002302D5B4
	c.mv	s1,a0
	c.li	s0,00000006
	beq	a0,s5,000000002302DB38

l2302DBA6:
	c.lwsp	a6,00000064
	addi	a2,sp,+00000003
	c.mv	a0,s4
	jal	ra,000000002302CEFA
	c.mv	s0,a0
	c.bnez	a0,000000002302DB38

l2302DBB6:
	c.li	a2,00000008
	c.addi4spn	a1,00000018
	jal	ra,000000002302E40E
	lbu	a2,sp,+00000018
	c.mv	a1,s2
	c.swsp	a0,00000088
	jal	ra,000000002302E40E
	c.lwsp	t3,00000084
	c.mv	a1,s3
	c.swsp	a0,00000088
	jal	ra,000000002302E40E
	c.swsp	a0,00000088
	c.li	a3,00000001
	c.li	a2,00000006
	c.addi4spn	a1,00000004
	c.mv	a0,s1
	jal	ra,000000002302CD40
	c.mv	s0,a0
	c.bnez	a0,000000002302DB38

l2302DBE6:
	c.li	a2,00000014
	c.addi4spn	a1,0000000C
	addi	a0,s1,+00000008
	jal	ra,000000002302E27C
	c.mv	s0,a0
	c.bnez	a0,000000002302DB38

l2302DBF6:
	lbu	s0,sp,+00000018
	c.li	a2,00000001
	addi	a1,zero,+000000FF
	c.mv	a0,sp
	jal	ra,0000000023070EB8
	c.mv	a2,s0
	c.mv	a1,s2
	addi	a0,s1,+0000001C
	c.jal	000000002302E27C
	lbu	a5,sp,+00000003
	c.mv	s0,a0
	c.bnez	a5,000000002302DC2C

l2302DC18:
	c.lwsp	t3,00000064
	lbu	a5,sp,+00000018
	lw	a0,s4,+00000004
	c.addi	a1,0000001C
	c.add	a1,a5
	c.add	a1,s1
	jal	ra,000000002302CB58

l2302DC2C:
	lbu	a1,sp,+00000018
	c.mv	a2,s1
	c.mv	a0,s2
	jal	ra,000000002302CBF2
	bne	s0,zero,000000002302DB38

l2302DC3C:
	lbu	s0,sp,+00000018
	c.lwsp	t3,00000048
	c.li	a2,00000001
	addi	a1,zero,+000000FF
	c.addi	s0,0000001C
	c.mv	a0,sp
	jal	ra,0000000023070EB8
	c.add	s0,s1
	c.mv	a0,s0
	c.mv	a2,s2
	c.mv	a1,s3
	c.jal	000000002302E27C
	c.mv	s0,a0
	bne	a0,zero,000000002302DB38

l2302DC60:
	c.li	a3,00000002
	c.li	a2,00000006
	c.addi4spn	a1,00000004
	c.mv	a0,s1
	jal	ra,000000002302CD40
	c.mv	s0,a0
	bne	a0,zero,000000002302DB38

l2302DC72:
	lbu	a5,sp,+00000003
	beq	a5,zero,000000002302DB38

l2302DC7A:
	lui	a2,00023082
	lui	a0,00023082
	addi	a2,a2,-00000460
	addi	a1,zero,+00000562
	addi	a0,a0,-00000060
	c.jal	000000002302E2C0
	lui	a5,0004200E
	c.li	a4,00000001
	sb	a4,a5,+00000E2C
	c.j	000000002302DB38

;; ef_get_env_blob: 2302DC9C
;;   Called from:
;;     23000A12 (in _connect_wifi)
;;     23000A4A (in _connect_wifi)
;;     23000A7C (in _connect_wifi)
;;     23000AF4 (in _connect_wifi)
;;     23000B20 (in _connect_wifi)
;;     2302E544 (in psm_test_cmd)
ef_get_env_blob proc
	lui	a5,0004200E
	lbu	a5,a5,-000001D2
	c.addi16sp	FFFFFF70
	c.swsp	ra,000000C4
	c.swsp	s0,00000044
	c.swsp	s1,000000C0
	c.swsp	s2,00000040
	c.swsp	s3,000000BC
	c.bnez	a5,000000002302DCCE

l2302DCB2:
	lui	a0,00023082
	addi	a0,a0,-000002B0
	c.jal	000000002302E32A
	c.li	s0,00000000

l2302DCBE:
	c.mv	a0,s0
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.lwsp	t1,00000024
	c.lwsp	sp,00000048
	c.lwsp	t4,00000178
	c.addi16sp	00000090
	c.jr	ra

l2302DCCE:
	c.mv	s0,a0
	c.mv	s1,a1
	c.beqz	a0,000000002302DCD6

l2302DCD4:
	c.bnez	a1,000000002302DD14

l2302DCD6:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002302DD0E

l2302DCE0:
	jal	ra,000000002303030A

l2302DCE4:
	lui	a3,00023082
	lui	a2,00023082
	c.mv	a1,a0
	lui	a0,00023082
	c.mv	a6,s1
	c.mv	a5,s0
	addi	a4,zero,+0000034C
	addi	a3,a3,-00000324
	addi	a2,a2,-00000318
	addi	a0,a0,-00000308

l2302DD06:
	jal	ra,000000002304B718
	c.li	s0,00000008
	c.j	000000002302DCBE

l2302DD0E:
	jal	ra,00000000230302E8
	c.j	000000002302DCE4

l2302DD14:
	c.mv	s3,a2
	c.mv	s2,a3
	jal	ra,000000002307132C
	addi	a5,zero,+00000040
	bgeu	a5,a0,000000002302DD66

l2302DD24:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002302DD60

l2302DD2E:
	jal	ra,000000002303030A

l2302DD32:
	c.swsp	a0,00000084
	c.mv	a0,s0
	jal	ra,000000002307132C
	c.mv	a5,a0
	lui	a3,00023082
	lui	a2,00023082
	lui	a0,00023082
	addi	a6,zero,+00000040
	addi	a4,zero,+00000351
	addi	a3,a3,-00000324
	addi	a2,a2,-00000318
	c.lwsp	a2,00000064
	addi	a0,a0,-000002D8
	c.j	000000002302DD06

l2302DD60:
	jal	ra,00000000230302E8
	c.j	000000002302DD32

l2302DD66:
	c.jal	000000002302E2A0
	c.mv	a0,s0
	c.addi4spn	a1,00000018
	jal	ra,000000002302D6A6
	c.li	s0,00000000
	c.beqz	a0,000000002302DD8E

l2302DD74:
	c.lwsp	tp,000001F4
	beq	s2,zero,000000002302DD7E

l2302DD7A:
	sw	a5,s2,+00000000

l2302DD7E:
	c.mv	s0,s3
	bgeu	a5,s3,000000002302DD86

l2302DD84:
	c.mv	s0,a5

l2302DD86:
	c.lwsp	a3,00000154
	c.mv	a2,s0
	c.mv	a1,s1
	c.jal	000000002302E25C

l2302DD8E:
	c.jal	000000002302E2AE
	c.j	000000002302DCBE

;; ef_del_env: 2302DD92
;;   Called from:
;;     2302E4E6 (in psm_test_cmd)
;;     2302E61A (in psm_unset_cmd)
ef_del_env proc
	lui	a5,0004200E
	lbu	a5,a5,-000001D2
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.bnez	a5,000000002302DDB6

l2302DDA2:
	lui	a0,00023082
	addi	a0,a0,-000003D0
	c.jal	000000002302E32A
	c.li	a0,00000007

l2302DDAE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2302DDB6:
	c.mv	s0,a0
	c.bnez	a0,000000002302DDCA

l2302DDBA:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.bnez	a5,000000002302DDEA

l2302DDC4:
	jal	ra,00000000230302E8
	c.j	000000002302DDEE

l2302DDCA:
	jal	ra,000000002307132C
	addi	a5,zero,+00000040
	bltu	a5,a0,000000002302DDBA

l2302DDD6:
	c.jal	000000002302E2A0
	c.li	a2,00000001
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002302D78C
	c.swsp	a0,00000084
	c.jal	000000002302E2AE
	c.lwsp	a2,00000044
	c.j	000000002302DDAE

l2302DDEA:
	jal	ra,000000002303030A

l2302DDEE:
	c.mv	a1,a0
	lui	a3,00023082
	lui	a2,00023082
	lui	a0,00023082
	addi	a0,a0,-000003AC
	c.mv	a5,s0
	addi	a4,zero,+0000057D
	addi	a3,a3,-00000324
	addi	a2,a2,-00000318
	jal	ra,000000002304B718
	c.li	a0,00000000
	c.j	000000002302DDAE

;; ef_set_env_blob: 2302DE16
;;   Called from:
;;     2302DFC8 (in ef_set_env)
;;     2302E534 (in psm_test_cmd)
ef_set_env_blob proc
	lui	a5,0004200E
	lbu	a5,a5,-000001D2
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.bnez	a5,000000002302DE54

l2302DE32:
	lui	a0,00023082
	addi	a0,a0,-000002B0
	c.jal	000000002302E32A
	c.li	s0,00000007

l2302DE3E:
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

l2302DE54:
	c.mv	s1,a0
	c.mv	s5,a1
	c.beqz	a0,000000002302DE5C

l2302DE5A:
	c.bnez	a1,000000002302DE9A

l2302DE5C:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002302DE94

l2302DE66:
	jal	ra,000000002303030A

l2302DE6A:
	lui	a3,00023082
	lui	a2,00023082
	c.mv	a1,a0
	lui	a0,00023082
	c.mv	a6,s5
	c.mv	a5,s1
	addi	a4,zero,+000005D4
	addi	a3,a3,-00000324
	addi	a2,a2,-00000318
	addi	a0,a0,-00000308

l2302DE8C:
	jal	ra,000000002304B718
	c.li	s0,00000008
	c.j	000000002302DE3E

l2302DE94:
	jal	ra,00000000230302E8
	c.j	000000002302DE6A

l2302DE9A:
	c.mv	s3,a2
	jal	ra,000000002307132C
	addi	a5,zero,+00000040
	bgeu	a5,a0,000000002302DEEA

l2302DEA8:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002302DEE4

l2302DEB2:
	jal	ra,000000002303030A

l2302DEB6:
	c.swsp	a0,00000084
	c.mv	a0,s1
	jal	ra,000000002307132C
	c.mv	a5,a0
	lui	a3,00023082
	lui	a2,00023082
	lui	a0,00023082
	addi	a6,zero,+00000040
	addi	a4,zero,+000005D9
	addi	a3,a3,-00000324
	addi	a2,a2,-00000318
	c.lwsp	a2,00000064
	addi	a0,a0,-000002D8
	c.j	000000002302DE8C

l2302DEE4:
	jal	ra,00000000230302E8
	c.j	000000002302DEB6

l2302DEEA:
	c.lui	a5,00001000
	addi	a5,a5,-00000074
	bgeu	a5,s3,000000002302DF30

l2302DEF4:
	lui	a5,0004200E
	lw	a5,a5,-0000017C
	c.beqz	a5,000000002302DF2A

l2302DEFE:
	jal	ra,000000002303030A

l2302DF02:
	c.lui	a6,00001000
	lui	a3,00023082
	lui	a2,00023082
	c.mv	a1,a0
	lui	a0,00023082
	addi	a6,a6,-00000074
	c.mv	a5,s3
	addi	a4,zero,+000005DE
	addi	a3,a3,-00000324
	addi	a2,a2,-00000318
	addi	a0,a0,-00000220
	c.j	000000002302DE8C

l2302DF2A:
	jal	ra,00000000230302E8
	c.j	000000002302DF02

l2302DF30:
	c.jal	000000002302E2A0
	c.mv	a0,s1
	jal	ra,000000002307132C
	addi	a1,s3,+0000001C
	lui	s4,00042012
	c.add	a1,a0
	addi	a0,s4,+00000504
	jal	ra,000000002302D5B4
	c.li	a5,FFFFFFFF
	c.li	s0,00000006
	beq	a0,a5,000000002302DFA8

l2302DF52:
	lui	s2,00042012
	addi	a1,s2,+0000042C
	c.mv	a0,s1
	jal	ra,000000002302D6A6
	c.mv	s6,a0
	c.bnez	a0,000000002302DF8A

l2302DF64:
	c.mv	a3,s3
	c.mv	a2,s5
	c.mv	a1,s1
	addi	a0,s4,+00000504
	jal	ra,000000002302DAFA
	c.mv	s0,a0
	beq	s6,zero,000000002302DF9A

l2302DF78:
	c.bnez	a0,000000002302DF9A

l2302DF7A:
	c.li	a2,00000001
	addi	a1,s2,+0000042C
	c.mv	a0,s1
	jal	ra,000000002302D78C
	c.mv	s0,a0
	c.j	000000002302DF9A

l2302DF8A:
	c.li	a2,00000000
	addi	a1,s2,+0000042C
	c.mv	a0,s1
	jal	ra,000000002302D78C
	c.mv	s0,a0
	c.beqz	a0,000000002302DF64

l2302DF9A:
	lui	a5,0004200E
	lbu	a5,a5,-000001D4
	c.beqz	a5,000000002302DFA8

l2302DFA4:
	jal	ra,000000002302D550

l2302DFA8:
	c.jal	000000002302E2AE
	c.j	000000002302DE3E

;; ef_set_env: 2302DFAC
;;   Called from:
;;     23000AD0 (in _connect_wifi)
;;     2302E640 (in psm_set_cmd)
ef_set_env proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.mv	a0,a1
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,000000002307132C
	c.mv	a2,a0
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,000000002302DE16

;; ef_save_env: 2302DFCC
;;   Called from:
;;     23000AD4 (in _connect_wifi)
;;     2302E622 (in psm_unset_cmd)
;;     2302E648 (in psm_set_cmd)
ef_save_env proc
	c.li	a0,00000000
	c.jr	ra

;; ef_env_set_default: 2302DFD0
;;   Called from:
;;     2302E15A (in ef_load_env)
;;     2302E5FA (in psm_erase_cmd)
ef_env_set_default proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	lui	s0,0004200E
	lw	a5,s0,-000001E0
	c.swsp	ra,000000A4
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.bnez	a5,000000002302E012

l2302DFEA:
	lui	a4,00023082
	lui	a3,00023082
	lui	a2,00023082
	lui	a0,00023082
	addi	a4,a4,-00000604
	addi	a3,a3,-0000034C
	addi	a2,a2,-00000080
	addi	a1,zero,+00000621
	addi	a0,a0,-00000060
	c.jal	000000002302E2C0

l2302E010:
	c.j	000000002302E010

l2302E012:
	lui	s2,0004200E
	lw	a5,s2,-000001DC
	addi	s2,s2,-000001DC
	c.bnez	a5,000000002302E048

l2302E020:
	lui	a4,00023082
	lui	a3,00023082
	lui	a2,00023082
	lui	a0,00023082
	addi	a4,a4,-00000604
	addi	a3,a3,-0000033C
	addi	a2,a2,-00000080
	addi	a1,zero,+00000622
	addi	a0,a0,-00000060
	c.jal	000000002302E2C0

l2302E046:
	c.j	000000002302E046

l2302E048:
	c.jal	000000002302E2A0
	lui	a5,0004200E
	lw	s1,a5,-000001D8
	addi	s0,s0,-000001E0
	addi	s3,a5,-000001D8
	c.lui	s4,00008000
	c.lui	s5,00001000

l2302E05E:
	lw	a5,s3,+00000000
	c.add	a5,s4
	bltu	s1,a5,000000002302E090

l2302E068:
	c.li	s1,00000000
	c.li	s4,0000000C
	c.li	s5,FFFFFFFF

l2302E06E:
	lw	a5,s2,+00000000
	bltu	s1,a5,000000002302E09C

l2302E076:
	c.li	a0,00000000

l2302E078:
	c.swsp	a0,00000084
	c.jal	000000002302E2AE
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

l2302E090:
	c.mv	a0,s1
	jal	ra,000000002302CF70
	c.bnez	a0,000000002302E078

l2302E098:
	c.add	s1,s5
	c.j	000000002302E05E

l2302E09C:
	add	s3,s1,s4
	c.lw	s0,0(a4)
	c.add	a4,s3
	c.lw	a4,8(a3)
	c.bnez	a3,000000002302E0B0

l2302E0A8:
	c.lw	a4,4(a0)
	jal	ra,000000002307132C
	c.mv	a3,a0

l2302E0B0:
	c.lw	s0,0(a5)
	c.swsp	s5,00000094
	c.addi4spn	a0,00000018
	c.add	a5,s3
	c.lw	a5,4(a2)
	c.lw	a5,0(a1)
	c.addi	s1,00000001
	jal	ra,000000002302DAFA
	c.j	000000002302E06E

;; ef_print_env: 2302E0C4
;;   Called from:
;;     2302E5FE (in psm_dump_cmd)
ef_print_env proc
	lui	a5,0004200E
	lbu	a5,a5,-000001D2
	c.addi16sp	FFFFFF90
	c.swsp	ra,000000B4
	c.swsp	zero,00000080
	c.bnez	a5,000000002302E0E4

l2302E0D4:
	lui	a0,00023082
	addi	a0,a0,-000002B0
	c.jal	000000002302E32A

l2302E0DE:
	c.lwsp	a3,00000130
	c.addi16sp	00000070
	c.jr	ra

l2302E0E4:
	c.jal	000000002302E2A0
	lui	a3,0002302D
	addi	a3,a3,+00000050
	c.addi4spn	a1,00000004
	c.li	a2,00000000
	c.addi4spn	a0,00000008
	jal	ra,000000002302D632
	lui	a0,00023082
	addi	a0,a0,-00000254
	c.jal	000000002302E3EE
	c.lwsp	tp,00000064
	lui	a0,00023082
	c.lui	a2,00007000
	addi	a1,a1,+0000008C
	addi	a0,a0,-00000238
	c.jal	000000002302E3EE
	c.jal	000000002302E2AE
	c.j	000000002302E0DE

;; ef_load_env: 2302E118
;;   Called from:
;;     2302E248 (in ef_env_init)
ef_load_env proc
	c.addi16sp	FFFFFF70
	c.swsp	s0,00000044
	c.li	a5,00000001
	lui	s0,0004200E
	lui	a4,0002302D
	sb	a5,s0,+00000E2D
	addi	a4,a4,+00000014
	c.li	a5,00000000
	c.li	a3,00000000
	c.addi4spn	a2,0000000C
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	c.swsp	ra,000000C4
	c.swsp	s1,000000C0
	c.swsp	s2,00000040
	c.swsp	zero,00000084
	jal	ra,000000002302D436
	c.lwsp	a2,000000C4
	c.li	a5,00000008
	addi	s0,s0,-000001D3
	bne	a4,a5,000000002302E15E

l2302E150:
	lui	a0,00023082
	addi	a0,a0,-00000294
	c.jal	000000002302E32A
	jal	ra,000000002302DFD0

l2302E15E:
	c.jal	000000002302E2A0
	lui	a4,0002302D
	c.li	a5,00000000
	addi	a4,a4,+00000604
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,000000002302D436
	lui	s1,0002302E
	lui	s2,0004200E

l2302E17E:
	addi	a3,s1,-00000654
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi4spn	a0,00000028
	jal	ra,000000002302D632
	lbu	a5,s2,-000001D4
	c.beqz	a5,000000002302E198

l2302E192:
	jal	ra,000000002302D550
	c.j	000000002302E17E

l2302E198:
	sb	zero,s0,+00000000
	c.jal	000000002302E2AE
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.lwsp	t1,00000024
	c.lwsp	sp,00000048
	c.li	a0,00000000
	c.addi16sp	00000090
	c.jr	ra

;; ef_env_init: 2302E1AC
;;   Called from:
;;     2302CAFC (in easyflash_init)
ef_env_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.bnez	a0,000000002302E1DC

l2302E1B4:
	lui	a4,00023082
	lui	a3,00023082
	lui	a2,00023082
	lui	a0,00023082
	addi	a4,a4,-000005F0
	addi	a3,a3,-0000038C
	addi	a2,a2,-00000080
	addi	a1,zero,+0000071E
	addi	a0,a0,-00000060
	c.jal	000000002302E2C0

l2302E1DA:
	c.j	000000002302E1DA

l2302E1DC:
	lui	a5,0004200E
	lbu	a4,a5,-000001D2
	c.mv	a3,a0
	addi	s0,a5,-000001D2
	c.li	a0,00000000
	c.bnez	a4,000000002302E254

l2302E1EE:
	lui	a5,00042012
	addi	a5,a5,+0000051C
	c.li	a4,FFFFFFFF
	c.sw	a5,0(a4)
	c.sw	a5,8(a4)
	c.sw	a5,16(a4)
	c.sw	a5,24(a4)
	lui	a5,00042012
	addi	a5,a5,+00000484
	addi	a4,a5,+00000080
	c.li	a2,FFFFFFFF

l2302E20E:
	c.sw	a5,4(a2)
	c.addi	a5,00000008
	bne	a5,a4,000000002302E20E

l2302E216:
	lui	a5,0004200E
	sw	zero,a5,+00000E28
	lui	a5,0004200E
	sw	a3,a5,+00000E20
	lui	a2,00023082
	lui	a5,0004200E
	lui	a0,00023082
	sw	a1,a5,+00000E24
	c.lui	a4,00008000
	c.li	a3,00000000
	addi	a2,a2,-00000380
	addi	a1,zero,+00000738
	addi	a0,a0,-00000060
	c.jal	000000002302E2C0
	jal	ra,000000002302E118
	c.bnez	a0,000000002302E254

l2302E24E:
	c.li	a5,00000001
	sb	a5,s0,+00000000

l2302E254:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ef_port_read: 2302E25C
;;   Called from:
;;     2302CDEC (in read_env)
;;     2302CEAC (in read_env)
;;     2302CEDC (in read_env)
;;     2302D0D8 (in print_env_cb)
;;     2302D200 (in get_next_env_addr)
;;     2302D298 (in read_sector_meta_data)
;;     2302D40E (in read_sector_meta_data)
;;     2302D6FE (in find_env)
;;     2302D7DA (in del_env)
;;     2302D996 (in move_env)
;;     2302DD8C (in ef_get_env_blob)
ef_port_read proc
	lui	a5,0004200E
	c.mv	a3,a1
	c.mv	a1,a0
	lw	a0,a5,-000001CC
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023055254
	c.lwsp	a2,00000020
	slti	a0,a0,+00000000
	c.slli	a0,01
	c.addi	sp,00000010
	c.jr	ra

;; ef_port_write: 2302E27C
;;   Called from:
;;     2302CDD2 (in write_status)
;;     2302CFF8 (in format_sector.constprop.16)
;;     2302D9A2 (in move_env)
;;     2302DBEE (in create_env_blob)
;;     2302DC0E (in create_env_blob)
;;     2302DC58 (in create_env_blob)
ef_port_write proc
	lui	a5,0004200E
	c.mv	a3,a1
	c.mv	a1,a0
	lw	a0,a5,-000001CC
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230551B0
	bge	a0,zero,000000002302E29C

l2302E294:
	c.li	a0,00000003

l2302E296:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2302E29C:
	c.li	a0,00000000
	c.j	000000002302E296

;; ef_port_env_lock: 2302E2A0
;;   Called from:
;;     2302DD66 (in ef_get_env_blob)
;;     2302DDD6 (in ef_del_env)
;;     2302DF30 (in ef_set_env_blob)
;;     2302E048 (in ef_env_set_default)
;;     2302E0E4 (in ef_print_env)
;;     2302E15E (in ef_load_env)
ef_port_env_lock proc
	lui	a5,0004200E
	lw	a0,a5,-000001D0
	c.li	a1,FFFFFFFF
	jal	zero,000000002302F114

;; ef_port_env_unlock: 2302E2AE
;;   Called from:
;;     2302DD8E (in ef_get_env_blob)
;;     2302DDE4 (in ef_del_env)
;;     2302DFA8 (in ef_set_env_blob)
;;     2302E07A (in ef_env_set_default)
;;     2302E114 (in ef_print_env)
;;     2302E19C (in ef_load_env)
ef_port_env_unlock proc
	lui	a5,0004200E
	lw	a0,a5,-000001D0
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	zero,000000002302EC88

;; ef_log_debug: 2302E2C0
;;   Called from:
;;     2302CD70 (in write_status)
;;     2302CD9E (in write_status)
;;     2302CE34 (in read_env)
;;     2302CE8C (in read_env)
;;     2302CFA2 (in format_sector.constprop.16)
;;     2302D288 (in read_sector_meta_data)
;;     2302D546 (in alloc_env)
;;     2302D584 (in gc_collect)
;;     2302D5EA (in new_env)
;;     2302D812 (in del_env)
;;     2302D956 (in move_env)
;;     2302D9F6 (in check_and_recovery_env_cb)
;;     2302DA1A (in check_and_recovery_env_cb)
;;     2302DAA6 (in do_gc)
;;     2302DAF0 (in do_gc)
;;     2302DC8E (in create_env_blob)
;;     2302E00E (in ef_env_set_default)
;;     2302E044 (in ef_env_set_default)
;;     2302E1D8 (in ef_env_init)
;;     2302E246 (in ef_env_init)
;;     2302E30C (in ef_port_erase)
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
	jal	ra,0000000023052080
	c.lwsp	t3,00000020
	c.addi16sp	00000040
	c.jr	ra

;; ef_port_erase: 2302E2DE
;;   Called from:
;;     2302CFAC (in format_sector.constprop.16)
ef_port_erase proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	slli	a5,a0,00000014
	c.beqz	a5,000000002302E312

l2302E2E8:
	lui	a4,00023082
	lui	a3,00023082
	lui	a2,00023082
	lui	a0,00023082
	addi	a4,a4,-00000004
	addi	a3,a3,+00000018
	addi	a2,a2,-00000080
	addi	a1,zero,+00000077
	addi	a0,a0,+00000038
	jal	ra,000000002302E2C0

l2302E310:
	c.j	000000002302E310

l2302E312:
	lui	a5,0004200E
	c.mv	a2,a1
	c.mv	a1,a0
	lw	a0,a5,-000001CC
	jal	ra,0000000023055186
	c.lwsp	a2,00000020
	c.srli	a0,0000001F
	c.addi	sp,00000010
	c.jr	ra

;; ef_log_info: 2302E32A
;;   Called from:
;;     2302CB10 (in easyflash_init)
;;     2302CB1C (in easyflash_init)
;;     2302D030 (in check_sec_hdr_cb)
;;     2302D398 (in read_sector_meta_data)
;;     2302D9D6 (in check_and_recovery_env_cb)
;;     2302DB32 (in create_env_blob)
;;     2302DB8A (in create_env_blob)
;;     2302DCBA (in ef_get_env_blob)
;;     2302DDAA (in ef_del_env)
;;     2302DE3A (in ef_set_env_blob)
;;     2302E0DC (in ef_print_env)
;;     2302E158 (in ef_load_env)
;;     2302E380 (in ef_port_init)
;;     2302E3B2 (in ef_port_init)
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
	jal	ra,0000000023052080
	c.lwsp	t3,00000020
	c.addi16sp	00000040
	c.jr	ra

;; ef_port_init: 2302E34A
;;   Called from:
;;     2302CAEC (in easyflash_init)
ef_port_init proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a1
	c.mv	s1,a0
	lui	a1,0004200E
	lui	a0,00023082
	c.swsp	s2,00000010
	c.li	a2,00000002
	addi	s2,a1,-000001CC
	addi	a0,a0,+00000084
	addi	a1,a1,-000001CC
	c.swsp	ra,00000094
	jal	ra,0000000023054FB0
	bge	a0,zero,000000002302E392

l2302E376:
	c.mv	a1,a0
	lui	a0,00023082
	addi	a0,a0,+00000088
	jal	ra,000000002302E32A
	lui	a0,00023082
	addi	a0,a0,+000000BC
	jal	ra,00000000230520DC

l2302E390:
	c.j	000000002302E390

l2302E392:
	c.li	a2,0000001C
	c.li	a1,00000000
	c.addi4spn	a0,00000004
	jal	ra,0000000023070EB8
	lw	a0,s2,+00000000
	c.addi4spn	a1,00000004
	jal	ra,000000002305515A
	c.lwsp	s4,00000084
	c.lwsp	t3,00000064
	lui	a0,00023082
	addi	a0,a0,+00000100
	jal	ra,000000002302E32A
	lui	a5,00023082
	addi	a5,a5,+0000000C
	c.sw	s1,0(a5)
	lui	a0,00023082
	c.li	a5,00000001
	c.sw	s0,0(a5)
	c.li	a1,00000001
	addi	a0,a0,+00000144
	jal	ra,0000000023052118
	c.li	a0,00000001
	jal	ra,000000002302EE60
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	lui	a5,0004200E
	sw	a0,a5,+00000E30
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; ef_print: 2302E3EE
;;   Called from:
;;     2302D090 (in print_env_cb)
;;     2302D0EA (in print_env_cb)
;;     2302D114 (in print_env_cb)
;;     2302D120 (in print_env_cb)
;;     2302E100 (in ef_print_env)
;;     2302E112 (in ef_print_env)
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
	jal	ra,0000000023052080
	c.lwsp	t3,00000020
	c.addi16sp	00000040
	c.jr	ra

;; ef_calc_crc32: 2302E40E
;;   Called from:
;;     2302CC00 (in update_env_cache)
;;     2302CEB6 (in read_env)
;;     2302D6D0 (in find_env)
;;     2302DBBA (in create_env_blob)
;;     2302DBC6 (in create_env_blob)
;;     2302DBD0 (in create_env_blob)
ef_calc_crc32 proc
	lui	a4,00023082
	xori	a0,a0,-00000001
	c.add	a2,a1
	addi	a4,a4,+00000170

l2302E41C:
	bne	a1,a2,000000002302E426

l2302E420:
	xori	a0,a0,-00000001
	c.jr	ra

l2302E426:
	c.addi	a1,00000001
	lbu	a5,a1,-00000001
	c.xor	a5,a0
	andi	a5,a5,+000000FF
	c.slli	a5,02
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.srli	a0,00000008
	c.xor	a0,a5
	c.j	000000002302E41C

;; psm_get_cmd: 2302E43E
psm_get_cmd proc
	c.jr	ra

;; psm_test_cmd: 2302E440
psm_test_cmd proc
	c.addi16sp	FFFFFFA0
	lui	a1,00023082
	c.li	a2,00000018
	addi	a1,a1,+00000570
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
	jal	ra,0000000023070C7C
	lui	s4,0004200E
	lui	s5,00023082
	lui	s7,0002307F
	lui	s8,00023082
	lui	s11,00023082

l2302E482:
	lw	s6,s0,+00000000
	c.swsp	zero,00000080
	addi	s3,s6,+00000001
	c.mv	a0,s3
	jal	ra,000000002303218A
	c.mv	s1,a0
	c.mv	a0,s3
	jal	ra,000000002303218A
	c.mv	s2,a0
	c.beqz	s1,000000002302E4A0

l2302E49E:
	c.bnez	a0,000000002302E50E

l2302E4A0:
	lw	a5,s4,-0000017C
	c.beqz	a5,000000002302E508

l2302E4A6:
	jal	ra,000000002303030A

l2302E4AA:
	lui	a5,00023082
	c.mv	a1,a0
	addi	a4,zero,+0000003D
	addi	a3,s5,+000005A8
	addi	a2,s7,+0000016C
	addi	a0,a5,+000005B8
	jal	ra,000000002304B718
	c.beqz	s1,000000002302E4CC

l2302E4C6:
	c.mv	a0,s1
	jal	ra,0000000023032272

l2302E4CC:
	beq	s2,zero,000000002302E4D6

l2302E4D0:
	c.mv	a0,s2
	jal	ra,0000000023032272

l2302E4D6:
	c.addi	s0,00000004
	c.addi4spn	a5,00000020
	bne	s0,a5,000000002302E482

l2302E4DE:
	lui	a0,00023082
	addi	a0,a0,+000005E8
	jal	ra,000000002302DD92
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

l2302E508:
	jal	ra,00000000230302E8
	c.j	000000002302E4AA

l2302E50E:
	c.mv	a2,s3
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023070EB8
	c.mv	a2,s3
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,0000000023070EB8
	c.li	s10,00000000
	addi	a4,zero,+00000076

l2302E528:
	bne	s10,s6,000000002302E582

l2302E52C:
	c.mv	a2,s10
	c.mv	a1,s1
	addi	a0,s8,+000005E8
	jal	ra,000000002302DE16
	c.mv	s9,a0
	c.addi4spn	a3,00000004
	c.mv	a2,s10
	c.mv	a1,s2
	addi	a0,s8,+000005E8
	jal	ra,000000002302DC9C
	c.mv	s3,a0
	bne	s9,zero,000000002302E552

l2302E54E:
	beq	s10,a0,000000002302E594

l2302E552:
	lw	a5,s4,-0000017C
	c.beqz	a5,000000002302E58E

l2302E558:
	jal	ra,000000002303030A

l2302E55C:
	lui	a2,00023082
	c.mv	a1,a0
	lui	a0,00023082
	c.mv	a7,s3
	c.mv	a6,s9
	c.mv	a5,s6
	addi	a4,zero,+0000004D
	addi	a3,s5,+000005A8
	addi	a2,a2,-00000318
	addi	a0,a0,+0000062C

l2302E57C:
	jal	ra,000000002304B718
	c.j	000000002302E4C6

l2302E582:
	add	a3,s1,s10
	sb	a4,a3,+00000000
	c.addi	s10,00000001
	c.j	000000002302E528

l2302E58E:
	jal	ra,00000000230302E8
	c.j	000000002302E55C

l2302E594:
	c.mv	a2,a0
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,0000000023070BF4
	lw	a5,s4,-0000017C
	c.beqz	a0,000000002302E5D2

l2302E5A4:
	c.beqz	a5,000000002302E5CC

l2302E5A6:
	jal	ra,000000002303030A

l2302E5AA:
	lui	a2,00023073
	c.mv	a1,a0
	lui	a0,00023082
	c.mv	a7,s3
	c.li	a6,00000000
	c.mv	a5,s3
	addi	a4,zero,+00000052
	addi	a3,s5,+000005A8
	addi	a2,a2,-00000434
	addi	a0,a0,+00000678
	c.j	000000002302E57C

l2302E5CC:
	jal	ra,00000000230302E8
	c.j	000000002302E5AA

l2302E5D2:
	c.beqz	a5,000000002302E5F4

l2302E5D4:
	jal	ra,000000002303030A

l2302E5D8:
	c.mv	a1,a0
	c.mv	a6,s3
	c.mv	a5,s3
	addi	a4,zero,+00000056
	addi	a3,s5,+000005A8
	addi	a2,s7,+0000016C
	addi	a0,s11,+000006CC
	jal	ra,000000002304B718
	c.j	000000002302E4C6

l2302E5F4:
	jal	ra,00000000230302E8
	c.j	000000002302E5D8

;; psm_erase_cmd: 2302E5FA
psm_erase_cmd proc
	jal	zero,000000002302DFD0

;; psm_dump_cmd: 2302E5FE
psm_dump_cmd proc
	jal	zero,000000002302E0C4

;; psm_unset_cmd: 2302E602
psm_unset_cmd proc
	c.li	a5,00000002
	beq	a2,a5,000000002302E614

l2302E608:
	lui	a0,00023082
	addi	a0,a0,+0000071C
	jal	zero,0000000023052118

l2302E614:
	c.lw	a3,4(a0)
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002302DD92
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002302DFCC

;; psm_set_cmd: 2302E626
psm_set_cmd proc
	c.li	a5,00000003
	beq	a2,a5,000000002302E638

l2302E62C:
	lui	a0,00023082
	addi	a0,a0,+00000588
	jal	zero,0000000023052118

l2302E638:
	c.lw	a3,8(a1)
	c.lw	a3,4(a0)
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002302DFAC
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002302DFCC

;; easyflash_cli_init: 2302E64C
;;   Called from:
;;     23000836 (in aos_loop_proc)
easyflash_cli_init proc
	c.li	a0,00000000
	c.jr	ra

;; xEventGroupCreateStatic: 2302E650
;;   Called from:
;;     23028E66 (in cmd_mgr_queue)
xEventGroupCreateStatic proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.beqz	a0,000000002302E686

l2302E65A:
	addi	a5,zero,+00000020
	c.swsp	a5,00000084
	c.lwsp	a2,000000C4
	bne	a4,a5,000000002302E680

l2302E666:
	sw	zero,s0,+00000000
	addi	a0,s0,+00000004
	c.jal	000000002302E8B4
	c.li	a5,00000001
	sb	a5,s0,+0000001C

l2302E676:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2302E680:
	jal	ra,0000000023001004
	c.j	000000002302E666

l2302E686:
	jal	ra,0000000023001004
	addi	a5,zero,+00000020
	c.swsp	a5,00000084
	c.lwsp	a2,000000C4
	beq	a4,a5,000000002302E676

l2302E696:
	jal	ra,0000000023001004
	c.j	000000002302E676

;; xEventGroupWaitBits: 2302E69C
;;   Called from:
;;     23028ECA (in cmd_mgr_queue)
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
	c.beqz	a0,000000002302E770

l2302E6B8:
	lui	a5,000FF000
	c.and	a5,s1
	c.bnez	a5,000000002302E700

l2302E6C0:
	c.beqz	s1,000000002302E700

l2302E6C2:
	jal	ra,0000000023030D2E
	c.beqz	a0,000000002302E748

l2302E6C8:
	jal	ra,00000000230302D8
	lw	s0,s2,+00000000
	and	a5,s1,s0
	bne	s4,zero,000000002302E70C

l2302E6D8:
	c.beqz	a5,000000002302E710

l2302E6DA:
	beq	s5,zero,000000002302E762

l2302E6DE:
	xori	s1,s1,-00000001
	c.and	s1,s0
	sw	s1,s2,+00000000
	jal	ra,00000000230304DC

l2302E6EC:
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

l2302E700:
	jal	ra,0000000023001004
	jal	ra,0000000023030D2E
	c.bnez	a0,000000002302E6C8

l2302E70A:
	c.j	000000002302E748

l2302E70C:
	beq	s1,a5,000000002302E6DA

l2302E710:
	beq	s3,zero,000000002302E762

l2302E714:
	sltu	a1,zero,s5
	c.slli	a1,18
	bne	s4,zero,000000002302E768

l2302E71E:
	c.mv	a2,s3
	c.or	a1,s1
	addi	a0,s2,+00000004
	jal	ra,000000002303076C
	jal	ra,00000000230304DC
	c.bnez	a0,000000002302E734

l2302E730:
	ecall

l2302E734:
	jal	ra,0000000023031138
	slli	a5,a0,00000006
	bge	a5,zero,000000002302E776

l2302E740:
	slli	s0,a0,00000008
	c.srli	s0,00000008
	c.j	000000002302E6EC

l2302E748:
	beq	s3,zero,000000002302E6C8

l2302E74C:
	jal	ra,0000000023001004
	jal	ra,00000000230302D8
	lw	s0,s2,+00000000
	and	a5,s1,s0
	bne	s4,zero,000000002302E70C

l2302E760:
	c.j	000000002302E6D8

l2302E762:
	jal	ra,00000000230304DC
	c.j	000000002302E6EC

l2302E768:
	lui	a5,00004000
	c.or	a1,a5
	c.j	000000002302E71E

l2302E770:
	jal	ra,0000000023001004
	c.j	000000002302E6B8

l2302E776:
	jal	ra,000000002303100A
	lw	a0,s2,+00000000
	and	a5,s1,a0
	bne	s4,zero,000000002302E7A0

l2302E786:
	c.beqz	a5,000000002302E796

l2302E788:
	beq	s5,zero,000000002302E796

l2302E78C:
	xori	s1,s1,-00000001
	c.and	s1,a0
	sw	s1,s2,+00000000

l2302E796:
	c.swsp	a0,00000084
	jal	ra,000000002303101E
	c.lwsp	a2,00000044
	c.j	000000002302E740

l2302E7A0:
	bne	s1,a5,000000002302E796

l2302E7A4:
	c.j	000000002302E788

;; xEventGroupSetBits: 2302E7A6
;;   Called from:
;;     23028C10 (in cmd_complete.isra.1)
;;     23028F90 (in cmd_mgr_drain)
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
	c.beqz	a0,000000002302E84E

l2302E7BC:
	lui	a5,000FF000
	and	a5,s2,a5
	c.bnez	a5,000000002302E848

l2302E7C6:
	jal	ra,00000000230302D8
	c.lw	s1,0(a3)
	c.lw	s1,16(s0)
	addi	s3,s1,+0000000C
	or	a3,s2,a3
	c.sw	s1,0(a3)
	beq	s3,s0,000000002302E824

l2302E7DC:
	lui	s2,00001000
	c.li	s5,00000000
	c.addi	s2,FFFFFFFF
	lui	s4,00002000

l2302E7E8:
	c.lw	s0,0(a4)
	c.mv	a0,s0
	or	a1,a3,s4
	and	a2,a4,s2
	slli	a5,a4,00000005
	and	a6,a2,a3
	c.lw	s0,4(s0)
	blt	a5,zero,000000002302E83E

l2302E802:
	beq	a6,zero,000000002302E818

l2302E806:
	slli	a5,a4,00000007
	bge	a5,zero,000000002302E812

l2302E80E:
	or	s5,s5,a2

l2302E812:
	jal	ra,0000000023030894
	c.lw	s1,0(a3)

l2302E818:
	bne	s3,s0,000000002302E7E8

l2302E81C:
	xori	s5,s5,-00000001
	and	a3,a3,s5

l2302E824:
	c.sw	s1,0(a3)
	jal	ra,00000000230304DC
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

l2302E83E:
	beq	a2,a6,000000002302E806

l2302E842:
	bne	s3,s0,000000002302E7E8

l2302E846:
	c.j	000000002302E81C

l2302E848:
	jal	ra,0000000023001004
	c.j	000000002302E7C6

l2302E84E:
	jal	ra,0000000023001004
	c.j	000000002302E7BC

;; vEventGroupDelete: 2302E854
;;   Called from:
;;     23028F08 (in cmd_mgr_queue)
vEventGroupDelete proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.swsp	ra,00000084
	jal	ra,00000000230302D8
	c.lw	s0,4(a5)
	addi	s1,s0,+0000000C
	c.bnez	a5,000000002302E878

l2302E86A:
	c.j	000000002302E890

l2302E86C:
	lui	a1,00002000
	jal	ra,0000000023030894
	c.lw	s0,4(a5)
	c.beqz	a5,000000002302E890

l2302E878:
	c.lw	s0,16(a0)
	bne	a0,s1,000000002302E86C

l2302E87E:
	jal	ra,0000000023001004
	c.lw	s0,16(a0)
	lui	a1,00002000
	jal	ra,0000000023030894
	c.lw	s0,4(a5)
	c.bnez	a5,000000002302E878

l2302E890:
	lbu	a5,s0,+0000001C
	c.beqz	a5,000000002302E8A2

l2302E896:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230304DC

l2302E8A2:
	c.mv	a0,s0
	jal	ra,0000000023032272
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230304DC

;; vListInitialise: 2302E8B4
;;   Called from:
;;     2302E66E (in xEventGroupCreateStatic)
;;     2302EB2E (in xQueueGenericReset)
;;     2302EB36 (in xQueueGenericReset)
;;     2302FE44 (in prvAddNewTaskToReadyList)
;;     2302FE58 (in prvAddNewTaskToReadyList)
;;     2302FE68 (in prvAddNewTaskToReadyList)
;;     2302FE74 (in prvAddNewTaskToReadyList)
;;     2302FE80 (in prvAddNewTaskToReadyList)
;;     2302FE8C (in prvAddNewTaskToReadyList)
;;     2303168E (in prvCheckForValidListAndQueue)
;;     2303169E (in prvCheckForValidListAndQueue)
vListInitialise proc
	addi	a5,a0,+00000008
	c.li	a4,FFFFFFFF
	c.sw	a0,4(a5)
	c.sw	a0,8(a4)
	c.sw	a0,12(a5)
	c.sw	a0,16(a5)
	sw	zero,a0,+00000000
	c.jr	ra

;; vListInitialiseItem: 2302E8C8
;;   Called from:
;;     2302FBC8 (in prvInitialiseNewTask.isra.2)
;;     2302FBD0 (in prvInitialiseNewTask.isra.2)
;;     230317E0 (in xTimerCreateStatic)
vListInitialiseItem proc
	sw	zero,a0,+00000010
	c.jr	ra

;; vListInsertEnd: 2302E8CE
;;   Called from:
;;     2302FD12 (in prvAddCurrentTaskToDelayedList)
;;     2302FDCE (in prvAddNewTaskToReadyList)
;;     23030156 (in vTaskDelete)
;;     2303047E (in xTaskIncrementTick)
;;     2303058A (in xTaskResumeAll)
;;     2303079A (in vTaskPlaceOnUnorderedEventList)
;;     230307DA (in vTaskPlaceOnEventListRestricted)
;;     23030828 (in xTaskRemoveFromEventList)
;;     23030888 (in xTaskRemoveFromEventList)
;;     230308EC (in vTaskRemoveFromUnorderedEventList)
;;     23030E24 (in xTaskPriorityInherit)
;;     23030EC2 (in xTaskPriorityDisinherit)
;;     23030FC8 (in vTaskPriorityDisinheritAfterTimeout)
;;     230313C6 (in xTaskGenericNotify)
;;     23031498 (in xTaskGenericNotifyFromISR)
;;     2303151A (in xTaskGenericNotifyFromISR)
;;     2303158C (in vTaskNotifyGiveFromISR)
;;     230315F0 (in vTaskNotifyGiveFromISR)
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

;; vListInsert: 2302E8E4
;;   Called from:
;;     2302FCB8 (in prvAddCurrentTaskToDelayedList)
;;     2302FCF2 (in prvAddCurrentTaskToDelayedList)
;;     23030750 (in vTaskPlaceOnEventList)
;;     23031712 (in prvInsertTimerInActiveList)
;;     2303172A (in prvInsertTimerInActiveList)
;;     23031920 (in prvSwitchTimerLists)
vListInsert proc
	c.lw	a1,0(a2)
	c.li	a5,FFFFFFFF
	addi	a4,a0,+00000008
	bne	a2,a5,000000002302E8F4

l2302E8F0:
	c.j	000000002302E90E

l2302E8F2:
	c.mv	a4,a5

l2302E8F4:
	c.lw	a4,4(a5)
	c.lw	a5,0(a3)
	bgeu	a2,a3,000000002302E8F2

l2302E8FC:
	c.sw	a1,4(a5)
	c.sw	a5,8(a1)
	c.sw	a1,8(a4)
	c.sw	a4,4(a1)
	c.sw	a1,16(a0)
	c.lw	a0,0(a5)
	c.addi	a5,00000001
	c.sw	a0,0(a5)
	c.jr	ra

l2302E90E:
	c.lw	a0,16(a4)
	c.lw	a4,4(a5)
	c.j	000000002302E8FC

;; uxListRemove: 2302E914
;;   Called from:
;;     2302FC7A (in prvAddCurrentTaskToDelayedList)
;;     2302FF06 (in prvIdleTask)
;;     23030096 (in vTaskDelete)
;;     230300BE (in vTaskDelete)
;;     23030452 (in xTaskIncrementTick)
;;     2303045E (in xTaskIncrementTick)
;;     2303055E (in xTaskResumeAll)
;;     23030568 (in xTaskResumeAll)
;;     23030810 (in xTaskRemoveFromEventList)
;;     2303085A (in xTaskRemoveFromEventList)
;;     230308B4 (in vTaskRemoveFromUnorderedEventList)
;;     230308BE (in vTaskRemoveFromUnorderedEventList)
;;     23030DCE (in xTaskPriorityInherit)
;;     23030E84 (in xTaskPriorityDisinherit)
;;     23030F94 (in vTaskPriorityDisinheritAfterTimeout)
;;     23031396 (in xTaskGenericNotify)
;;     230314EC (in xTaskGenericNotifyFromISR)
;;     230315C2 (in vTaskNotifyGiveFromISR)
;;     230318CC (in prvSwitchTimerLists)
;;     230319D0 (in prvTimerTask)
;;     23031ACA (in prvTimerTask)
uxListRemove proc
	c.lw	a0,4(a3)
	c.lw	a0,8(a4)
	c.lw	a0,16(a5)
	c.sw	a3,8(a4)
	c.lw	a0,4(a3)
	c.sw	a4,4(a3)
	c.lw	a5,4(a4)
	beq	a4,a0,000000002302E934

l2302E926:
	sw	zero,a0,+00000010
	c.lw	a5,0(a4)
	c.addi	a4,FFFFFFFF
	c.sw	a5,0(a4)
	c.lw	a5,0(a0)
	c.jr	ra

l2302E934:
	c.lw	a0,8(a4)
	c.sw	a5,4(a4)
	sw	zero,a0,+00000010
	c.lw	a5,0(a4)
	c.addi	a4,FFFFFFFF
	c.sw	a5,0(a4)
	c.lw	a5,0(a0)
	c.jr	ra

;; prvCopyDataToQueue: 2302E946
;;   Called from:
;;     2302ED48 (in xQueueGenericSend)
;;     2302EEE0 (in xQueueGenericSendFromISR)
prvCopyDataToQueue proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.lw	a0,64(a5)
	c.lw	a0,56(s1)
	c.mv	s0,a0
	c.bnez	a5,000000002302E96E

l2302E958:
	c.lw	a0,0(a5)
	c.addi	s1,00000001
	c.li	a0,00000000
	c.beqz	a5,000000002302E9D6

l2302E960:
	c.sw	s0,56(s1)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2302E96E:
	c.mv	s2,a2
	c.bnez	a2,000000002302E99E

l2302E972:
	c.lw	a0,4(a0)
	c.mv	a2,a5
	c.addi	s1,00000001
	jal	ra,0000000023070C7C
	c.lw	s0,4(a5)
	c.lw	s0,64(a3)
	c.lw	s0,8(a4)
	c.li	a0,00000000
	c.add	a5,a3
	c.sw	s0,4(a5)
	bltu	a5,a4,000000002302E960

l2302E98C:
	c.lw	s0,0(a5)
	c.sw	s0,56(s1)
	c.sw	s0,4(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2302E99E:
	c.lw	a0,12(a0)
	c.mv	a2,a5
	jal	ra,0000000023070C7C
	c.lw	s0,64(a4)
	c.lw	s0,12(a5)
	c.lw	s0,0(a3)
	sub	a4,zero,a4
	c.add	a5,a4
	c.sw	s0,12(a5)
	bgeu	a5,a3,000000002302E9BE

l2302E9B8:
	c.lw	s0,8(a5)
	c.add	a4,a5
	c.sw	s0,12(a4)

l2302E9BE:
	c.li	a5,00000002
	beq	s2,a5,000000002302E9E2

l2302E9C4:
	c.addi	s1,00000001
	c.sw	s0,56(s1)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2302E9D6:
	c.lw	s0,8(a0)
	jal	ra,0000000023030E2C
	sw	zero,s0,+00000008
	c.j	000000002302E960

l2302E9E2:
	c.li	a0,00000000
	c.bnez	s1,000000002302E960

l2302E9E6:
	c.li	s1,00000001
	c.j	000000002302E960

;; prvCopyDataFromQueue: 2302E9EA
;;   Called from:
;;     2302F0A6 (in xQueueReceive)
prvCopyDataFromQueue proc
	c.lw	a0,64(a2)
	c.mv	a5,a1
	c.beqz	a2,000000002302EA06

l2302E9F0:
	c.lw	a0,12(a1)
	c.lw	a0,8(a4)
	c.add	a1,a2
	c.sw	a0,12(a1)
	bltu	a1,a4,000000002302EA00

l2302E9FC:
	c.lw	a0,0(a1)
	c.sw	a0,12(a1)

l2302EA00:
	c.mv	a0,a5
	jal	zero,0000000023070C7C

l2302EA06:
	c.jr	ra

;; prvUnlockQueue: 2302EA08
;;   Called from:
;;     2302ED2C (in xQueueGenericSend)
;;     2302ED7A (in xQueueGenericSend)
;;     2302EDC8 (in xQueueGenericSend)
;;     2302F050 (in xQueueReceive)
;;     2302F080 (in xQueueReceive)
;;     2302F0D6 (in xQueueReceive)
;;     2302F19C (in xQueueSemaphoreTake)
;;     2302F1C8 (in xQueueSemaphoreTake)
;;     2302F1FA (in xQueueSemaphoreTake)
;;     2302F40A (in vQueueWaitForMessageRestricted)
;;     2302F426 (in vQueueWaitForMessageRestricted)
prvUnlockQueue proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	jal	ra,000000002303100A
	lbu	s0,s1,+00000045
	c.slli	s0,18
	c.srai	s0,00000018
	bge	zero,s0,000000002302EA5A

l2302EA24:
	c.lw	s1,36(a5)
	c.beqz	a5,000000002302EA5A

l2302EA28:
	addi	s2,s1,+00000024
	c.j	000000002302EA40

l2302EA2E:
	c.addi	s0,FFFFFFFF
	andi	a5,s0,+000000FF
	slli	s0,a5,00000018
	c.srai	s0,00000018
	c.beqz	a5,000000002302EA5A

l2302EA3C:
	c.lw	s1,36(a5)
	c.beqz	a5,000000002302EA5A

l2302EA40:
	c.mv	a0,s2
	jal	ra,00000000230307FC
	c.beqz	a0,000000002302EA2E

l2302EA48:
	c.addi	s0,FFFFFFFF
	jal	ra,0000000023030A5E
	andi	a5,s0,+000000FF
	slli	s0,a5,00000018
	c.srai	s0,00000018
	c.bnez	a5,000000002302EA3C

l2302EA5A:
	c.li	a5,FFFFFFFF
	sb	a5,s1,+00000045
	jal	ra,000000002303101E
	jal	ra,000000002303100A
	lbu	s0,s1,+00000044
	c.slli	s0,18
	c.srai	s0,00000018
	bge	zero,s0,000000002302EAAA

l2302EA74:
	c.lw	s1,16(a5)
	c.beqz	a5,000000002302EAAA

l2302EA78:
	addi	s2,s1,+00000010
	c.j	000000002302EA90

l2302EA7E:
	c.addi	s0,FFFFFFFF
	andi	a5,s0,+000000FF
	slli	s0,a5,00000018
	c.srai	s0,00000018
	c.beqz	a5,000000002302EAAA

l2302EA8C:
	c.lw	s1,16(a5)
	c.beqz	a5,000000002302EAAA

l2302EA90:
	c.mv	a0,s2
	jal	ra,00000000230307FC
	c.beqz	a0,000000002302EA7E

l2302EA98:
	c.addi	s0,FFFFFFFF
	jal	ra,0000000023030A5E
	andi	a5,s0,+000000FF
	slli	s0,a5,00000018
	c.srai	s0,00000018
	c.bnez	a5,000000002302EA8C

l2302EAAA:
	c.li	a5,FFFFFFFF
	sb	a5,s1,+00000044
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002303101E

;; xQueueGenericReset: 2302EABE
;;   Called from:
;;     2302EB9C (in xQueueGenericCreateStatic)
;;     2302EC20 (in xQueueGenericCreate)
xQueueGenericReset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	c.beqz	a0,000000002302EB4A

l2302EACC:
	jal	ra,000000002303100A
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
	c.bnez	s1,000000002302EB2A

l2302EAF8:
	c.lw	s0,16(a5)
	c.bnez	a5,000000002302EB0C

l2302EAFC:
	jal	ra,000000002303101E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l2302EB0C:
	addi	a0,s0,+00000010
	jal	ra,00000000230307FC
	c.beqz	a0,000000002302EAFC

l2302EB16:
	ecall
	jal	ra,000000002303101E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l2302EB2A:
	addi	a0,s0,+00000010
	jal	ra,000000002302E8B4
	addi	a0,s0,+00000024
	jal	ra,000000002302E8B4
	jal	ra,000000002303101E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l2302EB4A:
	jal	ra,0000000023001004
	c.j	000000002302EACC

;; xQueueGenericCreateStatic: 2302EB50
;;   Called from:
;;     2302EDF0 (in xQueueCreateMutexStatic)
;;     230316C8 (in prvCheckForValidListAndQueue)
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
	c.beqz	a0,000000002302EBBA

l2302EB6A:
	c.beqz	s0,000000002302EBCA

l2302EB6C:
	beq	s2,zero,000000002302EBC2

l2302EB70:
	c.beqz	s1,000000002302EBC4

l2302EB72:
	addi	a5,zero,+00000050
	c.swsp	a5,00000084
	c.lwsp	a2,000000C4
	beq	a4,a5,000000002302EB82

l2302EB7E:
	jal	ra,0000000023001004

l2302EB82:
	c.lwsp	a2,000000E4
	c.beqz	s0,000000002302EBA4

l2302EB86:
	c.li	a5,00000001
	sb	a5,s0,+00000046
	c.beqz	s1,000000002302EBB6

l2302EB8E:
	sw	s2,s0,+00000000
	sw	s3,s0,+0000003C
	c.sw	s0,64(s1)
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,000000002302EABE
	sb	s4,s0,+0000004C

l2302EBA4:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2302EBB6:
	c.mv	s2,s0
	c.j	000000002302EB8E

l2302EBBA:
	jal	ra,0000000023001004
	c.bnez	s0,000000002302EB6C

l2302EBC0:
	c.j	000000002302EBCA

l2302EBC2:
	c.beqz	s1,000000002302EB72

l2302EBC4:
	jal	ra,0000000023001004
	c.j	000000002302EB72

l2302EBCA:
	jal	ra,0000000023001004
	c.j	000000002302EB6C

;; xQueueGenericCreate: 2302EBD0
;;   Called from:
;;     2302EC62 (in xQueueCreateCountingSemaphore)
;;     2302EE6C (in xQueueCreateMutex)
;;     2303A0B8 (in sys_mbox_new)
;;     2303A230 (in sys_sem_new)
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
	c.beqz	a0,000000002302EC38

l2302EBE4:
	beq	s2,zero,000000002302EC04

l2302EBE8:
	add	a0,s1,s2
	addi	a0,a0,+00000050
	jal	ra,000000002303218A
	c.mv	s0,a0
	c.beqz	a0,000000002302EC3E

l2302EBF8:
	addi	a5,a0,+00000050
	sb	zero,a0,+00000046
	c.sw	a0,0(a5)
	c.j	000000002302EC16

l2302EC04:
	addi	a0,zero,+00000050
	jal	ra,000000002303218A
	c.mv	s0,a0
	c.beqz	a0,000000002302EC3E

l2302EC10:
	sb	zero,s0,+00000046
	c.sw	s0,0(s0)

l2302EC16:
	c.sw	s0,60(s1)
	sw	s2,s0,+00000040
	c.mv	a0,s0
	c.li	a1,00000001
	jal	ra,000000002302EABE
	sb	s3,s0,+0000004C
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2302EC38:
	jal	ra,0000000023001004
	c.j	000000002302EBE4

l2302EC3E:
	c.li	s0,00000000
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; xQueueCreateCountingSemaphore: 2302EC50
;;   Called from:
;;     2304D3C6 (in aos_sem_new)
xQueueCreateCountingSemaphore proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a1
	c.beqz	a0,000000002302EC72

l2302EC5A:
	bltu	a0,s0,000000002302EC7E

l2302EC5E:
	c.li	a2,00000002
	c.li	a1,00000000
	jal	ra,000000002302EBD0
	c.beqz	a0,000000002302EC6A

l2302EC68:
	c.sw	a0,56(s0)

l2302EC6A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2302EC72:
	c.swsp	a0,00000084
	jal	ra,0000000023001004
	c.lwsp	a2,00000044
	bgeu	a0,s0,000000002302EC5E

l2302EC7E:
	c.swsp	a0,00000084
	jal	ra,0000000023001004
	c.lwsp	a2,00000044
	c.j	000000002302EC5E

;; xQueueGenericSend: 2302EC88
;;   Called from:
;;     23028BC0 (in cmd_mgr_print)
;;     23028C88 (in cmd_mgr_msgind)
;;     23028D98 (in cmd_mgr_llind)
;;     23028DE6 (in cmd_mgr_queue)
;;     23028E18 (in cmd_mgr_queue)
;;     23028E88 (in cmd_mgr_queue)
;;     23028F02 (in cmd_mgr_queue)
;;     23028F6A (in cmd_mgr_drain)
;;     2302E2BC (in ef_port_env_unlock)
;;     2302EE0A (in xQueueCreateMutexStatic)
;;     2302EE54 (in xQueueGiveMutexRecursive)
;;     2302EE86 (in xQueueCreateMutex)
;;     23031854 (in xTimerGenericCommand)
;;     23031896 (in xTimerGenericCommand)
;;     23035568 (in bl_sha_mutex_give)
;;     2303A148 (in sys_mbox_post)
;;     2303A168 (in sys_mbox_trypost)
;;     2303A23E (in sys_sem_new)
;;     2303A360 (in sys_mutex_unlock)
;;     2304C1DE (in aos_open)
;;     2304C208 (in aos_open)
;;     2304C2A0 (in aos_close)
;;     2304C3EA (in aos_stat)
;;     2304C400 (in aos_stat)
;;     2304C448 (in aos_stat)
;;     2304C48C (in aos_opendir)
;;     2304C4B0 (in aos_opendir)
;;     2304C4E0 (in aos_opendir)
;;     2304C558 (in aos_closedir)
;;     2304C84A (in aos_register_driver)
;;     2304C8D0 (in aos_register_fs)
;;     2304D3AA (in aos_mutex_unlock)
;;     2304D42E (in aos_sem_signal)
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
	beq	a0,zero,000000002302EDD4

l2302ECA6:
	beq	s5,zero,000000002302EDB2

l2302ECAA:
	c.li	a5,00000002
	beq	s2,a5,000000002302EDA4

l2302ECB0:
	jal	ra,0000000023030D2E
	c.bnez	a0,000000002302ECBC

l2302ECB6:
	c.lwsp	a2,000000E4
	bne	a5,zero,000000002302EDDA

l2302ECBC:
	jal	ra,000000002303100A
	c.lw	s0,56(a4)
	c.lw	s0,60(a5)
	c.li	s6,00000000
	c.li	s3,00000002
	c.li	s1,FFFFFFFF
	addi	s4,s0,+00000010
	bltu	a4,a5,000000002302ED42

l2302ECD2:
	beq	s2,s3,000000002302ED42

l2302ECD6:
	c.lwsp	a2,000000E4
	beq	a5,zero,000000002302EDBE

l2302ECDC:
	beq	s6,zero,000000002302ED8C

l2302ECE0:
	jal	ra,000000002303101E
	jal	ra,00000000230302D8
	jal	ra,000000002303100A
	lbu	a5,s0,+00000044
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,s1,000000002302ECFC

l2302ECF8:
	sb	zero,s0,+00000044

l2302ECFC:
	lbu	a5,s0,+00000045
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,s1,000000002302ED0C

l2302ED08:
	sb	zero,s0,+00000045

l2302ED0C:
	jal	ra,000000002303101E
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	jal	ra,00000000230309AC
	c.bnez	a0,000000002302EDC6

l2302ED1A:
	jal	ra,000000002303100A
	c.lw	s0,56(a4)
	c.lw	s0,60(a5)
	beq	a4,a5,000000002302ED6C

l2302ED26:
	jal	ra,000000002303101E
	c.mv	a0,s0
	jal	ra,000000002302EA08
	jal	ra,00000000230304DC

l2302ED34:
	c.li	s6,00000001

l2302ED36:
	jal	ra,000000002303100A
	c.lw	s0,56(a4)
	c.lw	s0,60(a5)
	bgeu	a4,a5,000000002302ECD2

l2302ED42:
	c.mv	a2,s2
	c.mv	a1,s5
	c.mv	a0,s0
	jal	ra,000000002302E946
	c.lw	s0,36(a5)
	c.bnez	a5,000000002302ED94

l2302ED50:
	c.bnez	a0,000000002302ED9E

l2302ED52:
	jal	ra,000000002303101E
	c.li	a0,00000001

l2302ED58:
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

l2302ED6C:
	jal	ra,000000002303101E
	c.lwsp	a2,00000064
	c.mv	a0,s4
	jal	ra,000000002303073C
	c.mv	a0,s0
	jal	ra,000000002302EA08
	jal	ra,00000000230304DC
	c.bnez	a0,000000002302ED34

l2302ED84:
	ecall
	c.li	s6,00000001
	c.j	000000002302ED36

l2302ED8C:
	c.addi4spn	a0,00000018
	jal	ra,0000000023030996
	c.j	000000002302ECE0

l2302ED94:
	addi	a0,s0,+00000024
	jal	ra,00000000230307FC
	c.beqz	a0,000000002302ED52

l2302ED9E:
	ecall
	c.j	000000002302ED52

l2302EDA4:
	c.lw	s0,60(a4)
	c.li	a5,00000001
	beq	a4,a5,000000002302ECB0

l2302EDAC:
	jal	ra,0000000023001004
	c.j	000000002302ECB0

l2302EDB2:
	c.lw	s0,64(a5)
	beq	a5,zero,000000002302ECAA

l2302EDB8:
	jal	ra,0000000023001004
	c.j	000000002302ECAA

l2302EDBE:
	jal	ra,000000002303101E
	c.li	a0,00000000
	c.j	000000002302ED58

l2302EDC6:
	c.mv	a0,s0
	jal	ra,000000002302EA08
	jal	ra,00000000230304DC
	c.li	a0,00000000
	c.j	000000002302ED58

l2302EDD4:
	jal	ra,0000000023001004
	c.j	000000002302ECA6

l2302EDDA:
	jal	ra,0000000023001004
	c.j	000000002302ECBC

;; xQueueCreateMutexStatic: 2302EDE0
;;   Called from:
;;     2303408A (in bl_sec_init)
;;     2304C174 (in vfs_init)
xQueueCreateMutexStatic proc
	c.addi	sp,FFFFFFF0
	c.mv	a4,a0
	c.mv	a3,a1
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002302EB50
	c.mv	s0,a0
	c.beqz	a0,000000002302EE0E

l2302EDF8:
	sw	zero,a0,+00000008
	sw	zero,a0,+00000000
	sw	zero,a0,+0000000C
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302EC88

l2302EE0E:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; xQueueGiveMutexRecursive: 2302EE18
;;   Called from:
;;     23050CD4 (in aws_iot_thread_mutex_unlock)
xQueueGiveMutexRecursive proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s0,a0
	c.beqz	a0,000000002302EE5A

l2302EE26:
	lw	s2,s0,+00000008
	jal	ra,0000000023030D24
	c.li	s1,00000000
	beq	s2,a0,000000002302EE42

l2302EE34:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2302EE42:
	c.lw	s0,12(a5)
	c.li	s1,00000001
	c.addi	a5,FFFFFFFF
	c.sw	s0,12(a5)
	c.bnez	a5,000000002302EE34

l2302EE4C:
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002302EC88
	c.j	000000002302EE34

l2302EE5A:
	jal	ra,0000000023001004
	c.j	000000002302EE26

;; xQueueCreateMutex: 2302EE60
;;   Called from:
;;     23028FAC (in bl_cmd_mgr_init)
;;     2302E3D4 (in ef_port_init)
;;     2303A310 (in sys_mutex_new)
;;     2304D368 (in aos_mutex_new)
;;     23050C86 (in aws_iot_thread_mutex_init)
xQueueCreateMutex proc
	c.addi	sp,FFFFFFF0
	c.mv	a2,a0
	c.li	a1,00000000
	c.li	a0,00000001
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002302EBD0
	c.mv	s0,a0
	c.beqz	a0,000000002302EE8A

l2302EE74:
	sw	zero,a0,+00000008
	sw	zero,a0,+00000000
	sw	zero,a0,+0000000C
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,000000002302EC88

l2302EE8A:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; xQueueGenericSendFromISR: 2302EE94
;;   Called from:
;;     2303186E (in xTimerGenericCommand)
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
	c.beqz	a0,000000002302EF2C

l2302EEA8:
	c.beqz	a1,000000002302EF0A

l2302EEAA:
	c.li	a4,00000002
	c.lw	s0,60(a5)
	beq	s2,a4,000000002302EEC8

l2302EEB2:
	c.lw	s0,56(a4)
	bltu	a4,a5,000000002302EED8

l2302EEB8:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

l2302EEC8:
	c.li	a4,00000001
	beq	a5,a4,000000002302EED6

l2302EECE:
	c.swsp	a1,00000084
	jal	ra,0000000023001004
	c.lwsp	a2,00000064

l2302EED6:
	c.lw	s0,56(a5)

l2302EED8:
	lbu	s1,s0,+00000045
	c.mv	a2,s2
	c.mv	a0,s0
	jal	ra,000000002302E946
	slli	a4,s1,00000018
	c.srai	a4,00000018
	c.li	a5,FFFFFFFF
	beq	a4,a5,000000002302EF18

l2302EEF0:
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

l2302EF0A:
	c.lw	s0,64(a5)
	c.beqz	a5,000000002302EEAA

l2302EF0E:
	c.swsp	a1,00000084
	jal	ra,0000000023001004
	c.lwsp	a2,00000064
	c.j	000000002302EEAA

l2302EF18:
	c.lw	s0,36(a5)
	c.bnez	a5,000000002302EF36

l2302EF1C:
	c.li	a0,00000001

l2302EF1E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2302EF2C:
	c.swsp	a1,00000084
	jal	ra,0000000023001004
	c.lwsp	a2,00000064
	c.j	000000002302EEA8

l2302EF36:
	addi	a0,s0,+00000024
	jal	ra,00000000230307FC
	c.beqz	a0,000000002302EF1C

l2302EF40:
	beq	s3,zero,000000002302EF1C

l2302EF44:
	c.li	a5,00000001
	sw	a5,s3,+00000000
	c.li	a0,00000001
	c.j	000000002302EF1E

;; xQueueGiveFromISR: 2302EF4E
;;   Called from:
;;     2304D416 (in aos_sem_signal)
xQueueGiveFromISR proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	c.beqz	a0,000000002302EFAA

l2302EF5C:
	c.lw	s0,64(a5)
	c.bnez	a5,000000002302EF98

l2302EF60:
	c.lw	s0,0(a5)
	c.beqz	a5,000000002302EFA0

l2302EF64:
	c.lw	s0,56(a5)
	c.lw	s0,60(a4)
	c.li	a0,00000000
	bgeu	a5,a4,000000002302EF8E

l2302EF6E:
	lbu	a4,s0,+00000045
	c.addi	a5,00000001
	c.sw	s0,56(a5)
	slli	a3,a4,00000018
	c.srai	a3,00000018
	c.li	a5,FFFFFFFF
	beq	a3,a5,000000002302EFB0

l2302EF82:
	c.addi	a4,00000001
	c.slli	a4,18
	c.srai	a4,00000018
	sb	a4,s0,+00000045

l2302EF8C:
	c.li	a0,00000001

l2302EF8E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2302EF98:
	jal	ra,0000000023001004
	c.lw	s0,0(a5)
	c.bnez	a5,000000002302EF64

l2302EFA0:
	c.lw	s0,8(a5)
	c.beqz	a5,000000002302EF64

l2302EFA4:
	jal	ra,0000000023001004
	c.j	000000002302EF64

l2302EFAA:
	jal	ra,0000000023001004
	c.j	000000002302EF5C

l2302EFB0:
	c.lw	s0,36(a5)
	c.beqz	a5,000000002302EF8C

l2302EFB4:
	addi	a0,s0,+00000024
	jal	ra,00000000230307FC
	c.beqz	a0,000000002302EF8C

l2302EFBE:
	c.beqz	s1,000000002302EF8C

l2302EFC0:
	c.li	a5,00000001
	c.sw	s1,0(a5)
	c.li	a0,00000001
	c.j	000000002302EF8E

;; xQueueReceive: 2302EFC8
;;   Called from:
;;     230319BA (in prvTimerTask)
;;     2303A1B8 (in sys_arch_mbox_fetch)
;;     2303A1E6 (in sys_arch_mbox_fetch)
;;     2303A1FC (in sys_arch_mbox_tryfetch)
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
	beq	a0,zero,000000002302F0FE

l2302EFE0:
	beq	s3,zero,000000002302F0F2

l2302EFE4:
	jal	ra,0000000023030D2E
	beq	a0,zero,000000002302F0E6

l2302EFEC:
	jal	ra,000000002303100A
	lw	s2,s0,+00000038
	bne	s2,zero,000000002302F0A0

l2302EFF8:
	c.lwsp	a2,000000E4
	c.beqz	a5,000000002302F068

l2302EFFC:
	c.addi4spn	a0,00000018
	jal	ra,0000000023030996
	c.li	s1,FFFFFFFF
	addi	s4,s0,+00000024

l2302F008:
	jal	ra,000000002303101E
	jal	ra,00000000230302D8
	jal	ra,000000002303100A
	lbu	a5,s0,+00000044
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,s1,000000002302F024

l2302F020:
	sb	zero,s0,+00000044

l2302F024:
	lbu	a5,s0,+00000045
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,s1,000000002302F034

l2302F030:
	sb	zero,s0,+00000045

l2302F034:
	jal	ra,000000002303101E
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	jal	ra,00000000230309AC
	c.bnez	a0,000000002302F07E

l2302F042:
	jal	ra,000000002303100A
	c.lw	s0,56(a5)
	c.beqz	a5,000000002302F0C8

l2302F04A:
	jal	ra,000000002303101E
	c.mv	a0,s0
	jal	ra,000000002302EA08
	jal	ra,00000000230304DC
	jal	ra,000000002303100A
	lw	s2,s0,+00000038
	bne	s2,zero,000000002302F0A0

l2302F064:
	c.lwsp	a2,000000E4
	c.bnez	a5,000000002302F008

l2302F068:
	jal	ra,000000002303101E
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.li	a0,00000000
	c.addi16sp	00000040
	c.jr	ra

l2302F07E:
	c.mv	a0,s0
	jal	ra,000000002302EA08
	jal	ra,00000000230304DC
	jal	ra,000000002303100A
	c.lw	s0,56(a5)
	c.beqz	a5,000000002302F068

l2302F090:
	jal	ra,000000002303101E

l2302F094:
	jal	ra,000000002303100A
	lw	s2,s0,+00000038
	beq	s2,zero,000000002302F064

l2302F0A0:
	c.mv	a1,s3
	c.mv	a0,s0
	c.addi	s2,FFFFFFFF
	jal	ra,000000002302E9EA
	sw	s2,s0,+00000038
	c.lw	s0,16(a5)
	c.bnez	a5,000000002302F104

l2302F0B2:
	jal	ra,000000002303101E
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.li	a0,00000001
	c.addi16sp	00000040
	c.jr	ra

l2302F0C8:
	jal	ra,000000002303101E
	c.lwsp	a2,00000064
	c.mv	a0,s4
	jal	ra,000000002303073C
	c.mv	a0,s0
	jal	ra,000000002302EA08
	jal	ra,00000000230304DC
	c.bnez	a0,000000002302F094

l2302F0E0:
	ecall
	c.j	000000002302F094

l2302F0E6:
	c.lwsp	a2,000000E4
	beq	a5,zero,000000002302EFEC

l2302F0EC:
	jal	ra,0000000023001004
	c.j	000000002302EFEC

l2302F0F2:
	c.lw	s0,64(a5)
	beq	a5,zero,000000002302EFE4

l2302F0F8:
	jal	ra,0000000023001004
	c.j	000000002302EFE4

l2302F0FE:
	jal	ra,0000000023001004
	c.j	000000002302EFE0

l2302F104:
	addi	a0,s0,+00000010
	jal	ra,00000000230307FC
	c.beqz	a0,000000002302F0B2

l2302F10E:
	ecall
	c.j	000000002302F0B2

;; xQueueSemaphoreTake: 2302F114
;;   Called from:
;;     23028BA4 (in cmd_mgr_print)
;;     23028C34 (in cmd_mgr_msgind)
;;     23028CEC (in cmd_mgr_llind)
;;     23028DCA (in cmd_mgr_queue)
;;     23028ED6 (in cmd_mgr_queue)
;;     23028F38 (in cmd_mgr_drain)
;;     2302E2AA (in ef_port_env_lock)
;;     2302F2BA (in xQueueTakeMutexRecursive)
;;     230354EE (in bl_sha_mutex_take)
;;     2303A268 (in sys_sem_new)
;;     2303A2A6 (in sys_arch_sem_wait)
;;     2303A2CC (in sys_arch_sem_wait)
;;     2304C1C2 (in aos_open)
;;     2304C288 (in aos_close)
;;     2304C3B6 (in aos_stat)
;;     2304C430 (in aos_stat)
;;     2304C470 (in aos_opendir)
;;     2304C4C8 (in aos_opendir)
;;     2304C540 (in aos_closedir)
;;     2304C818 (in aos_register_driver)
;;     2304C89E (in aos_register_fs)
;;     2304D38C (in aos_mutex_lock)
;;     2304D3E8 (in aos_sem_wait)
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
	beq	a0,zero,000000002302F258

l2302F12A:
	c.lw	s0,64(a5)
	bne	a5,zero,000000002302F232

l2302F130:
	jal	ra,0000000023030D2E
	beq	a0,zero,000000002302F226

l2302F138:
	jal	ra,000000002303100A
	c.lw	s0,56(a5)
	c.li	s3,00000000
	c.li	s2,00000000
	c.li	s1,FFFFFFFF
	addi	s4,s0,+00000024
	c.bnez	a5,000000002302F1AE

l2302F14A:
	c.lwsp	a2,000000E4
	beq	a5,zero,000000002302F270

l2302F150:
	beq	s2,zero,000000002302F1E0

l2302F154:
	jal	ra,000000002303101E
	jal	ra,00000000230302D8
	jal	ra,000000002303100A
	lbu	a5,s0,+00000044
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,s1,000000002302F170

l2302F16C:
	sb	zero,s0,+00000044

l2302F170:
	lbu	a5,s0,+00000045
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,s1,000000002302F180

l2302F17C:
	sb	zero,s0,+00000045

l2302F180:
	jal	ra,000000002303101E
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000018
	jal	ra,00000000230309AC
	c.bnez	a0,000000002302F1C6

l2302F18E:
	jal	ra,000000002303100A
	c.lw	s0,56(a5)
	c.beqz	a5,000000002302F1E8

l2302F196:
	jal	ra,000000002303101E
	c.mv	a0,s0
	jal	ra,000000002302EA08
	jal	ra,00000000230304DC

l2302F1A4:
	c.li	s2,00000001

l2302F1A6:
	jal	ra,000000002303100A
	c.lw	s0,56(a5)
	c.beqz	a5,000000002302F14A

l2302F1AE:
	c.lw	s0,0(a4)
	c.addi	a5,FFFFFFFF
	c.sw	s0,56(a5)
	beq	a4,zero,000000002302F294

l2302F1B8:
	c.lw	s0,16(a5)
	bne	a5,zero,000000002302F27C

l2302F1BE:
	jal	ra,000000002303101E
	c.li	s3,00000001
	c.j	000000002302F214

l2302F1C6:
	c.mv	a0,s0
	jal	ra,000000002302EA08
	jal	ra,00000000230304DC
	jal	ra,000000002303100A
	c.lw	s0,56(a5)
	c.beqz	a5,000000002302F20C

l2302F1D8:
	jal	ra,000000002303101E
	c.li	s2,00000001
	c.j	000000002302F1A6

l2302F1E0:
	c.addi4spn	a0,00000018
	jal	ra,0000000023030996
	c.j	000000002302F154

l2302F1E8:
	jal	ra,000000002303101E
	c.lw	s0,0(a5)
	c.beqz	a5,000000002302F25E

l2302F1F0:
	c.lwsp	a2,00000064
	c.mv	a0,s4
	jal	ra,000000002303073C
	c.mv	a0,s0
	jal	ra,000000002302EA08
	jal	ra,00000000230304DC
	c.bnez	a0,000000002302F1A4

l2302F204:
	ecall
	c.li	s2,00000001
	c.j	000000002302F1A6

l2302F20C:
	jal	ra,000000002303101E
	bne	s3,zero,000000002302F238

l2302F214:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s3
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

l2302F226:
	c.lwsp	a2,000000E4
	beq	a5,zero,000000002302F138

l2302F22C:
	jal	ra,0000000023001004
	c.j	000000002302F138

l2302F232:
	jal	ra,0000000023001004
	c.j	000000002302F130

l2302F238:
	jal	ra,000000002303100A
	c.lw	s0,36(a1)
	c.beqz	a1,000000002302F24A

l2302F240:
	c.lw	s0,48(a5)
	addi	a1,zero,+00000020
	c.lw	a5,0(a5)
	c.sub	a1,a5

l2302F24A:
	c.lw	s0,8(a0)
	c.li	s3,00000000
	jal	ra,0000000023030F04
	jal	ra,000000002303101E
	c.j	000000002302F214

l2302F258:
	jal	ra,0000000023001004
	c.j	000000002302F12A

l2302F25E:
	jal	ra,000000002303100A
	c.lw	s0,8(a0)
	jal	ra,0000000023030D4A
	c.mv	s3,a0
	jal	ra,000000002303101E
	c.j	000000002302F1F0

l2302F270:
	bne	s3,zero,000000002302F28E

l2302F274:
	jal	ra,000000002303101E
	c.li	s3,00000000
	c.j	000000002302F214

l2302F27C:
	addi	a0,s0,+00000010
	jal	ra,00000000230307FC
	beq	a0,zero,000000002302F1BE

l2302F288:
	ecall
	c.j	000000002302F1BE

l2302F28E:
	jal	ra,0000000023001004
	c.j	000000002302F274

l2302F294:
	jal	ra,0000000023031154
	c.sw	s0,8(a0)
	c.j	000000002302F1B8

;; xQueueTakeMutexRecursive: 2302F29C
;;   Called from:
;;     23050CA6 (in aws_iot_thread_mutex_lock)
;;     23050CBA (in aws_iot_thread_mutex_trylock)
xQueueTakeMutexRecursive proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s2,a1
	c.beqz	a0,000000002302F2E6

l2302F2AC:
	c.lw	s0,8(s1)
	jal	ra,0000000023030D24
	beq	s1,a0,000000002302F2D2

l2302F2B6:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002302F114
	c.beqz	a0,000000002302F2C6

l2302F2C0:
	c.lw	s0,12(a5)
	c.addi	a5,00000001
	c.sw	s0,12(a5)

l2302F2C6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2302F2D2:
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

l2302F2E6:
	jal	ra,0000000023001004
	c.j	000000002302F2AC

;; uxQueueMessagesWaiting: 2302F2EC
;;   Called from:
;;     2303A106 (in sys_mbox_free)
uxQueueMessagesWaiting proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.beqz	a0,000000002302F30A

l2302F2F6:
	jal	ra,000000002303100A
	c.lw	s0,56(s0)
	jal	ra,000000002303101E
	c.lwsp	a2,00000020
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2302F30A:
	jal	ra,0000000023001004
	c.j	000000002302F2F6

;; vQueueDelete: 2302F310
;;   Called from:
;;     2303A11A (in sys_mbox_free)
;;     2303A2EA (in sys_sem_free)
;;     2304D380 (in aos_mutex_free)
;;     2304D3DA (in aos_sem_free)
;;     23050CEE (in aws_iot_thread_mutex_destroy)
vQueueDelete proc
	c.beqz	a0,000000002302F34A

l2302F312:
	lui	a5,00042020
	addi	a1,a5,-000003E4
	c.li	a4,00000000
	addi	a5,a5,-000003E4
	c.li	a2,00000008

l2302F322:
	c.lw	a5,4(a3)
	c.addi	a5,00000008
	beq	a0,a3,000000002302F33C

l2302F32A:
	c.addi	a4,00000001
	bne	a4,a2,000000002302F322

l2302F330:
	lbu	a5,a0,+00000046
	c.beqz	a5,000000002302F338

l2302F336:
	c.jr	ra

l2302F338:
	jal	zero,0000000023032272

l2302F33C:
	c.slli	a4,03
	c.add	a4,a1
	sw	zero,a4,+00000000
	sw	zero,a4,+00000004
	c.j	000000002302F330

l2302F34A:
	c.addi	sp,FFFFFFE0
	c.swsp	a0,00000084
	c.swsp	ra,0000008C
	jal	ra,0000000023001004
	c.lwsp	a2,00000044
	lui	a5,00042020
	addi	a1,a5,-000003E4
	c.li	a4,00000000
	addi	a5,a5,-000003E4
	c.li	a2,00000008

l2302F366:
	c.lw	a5,4(a3)
	c.addi	a5,00000008
	beq	a0,a3,000000002302F388

l2302F36E:
	c.addi	a4,00000001
	bne	a4,a2,000000002302F366

l2302F374:
	lbu	a5,a0,+00000046
	c.beqz	a5,000000002302F380

l2302F37A:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2302F380:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,0000000023032272

l2302F388:
	c.slli	a4,03
	c.add	a4,a1
	sw	zero,a4,+00000000
	sw	zero,a4,+00000004
	c.j	000000002302F374

;; vQueueAddToRegistry: 2302F396
;;   Called from:
;;     230316D8 (in prvCheckForValidListAndQueue)
vQueueAddToRegistry proc
	lui	a5,00042020
	addi	a6,a5,-000003E4
	c.li	a4,00000000
	addi	a5,a5,-000003E4
	c.li	a2,00000008

l2302F3A6:
	c.lw	a5,0(a3)
	c.addi	a5,00000008
	c.beqz	a3,000000002302F3B4

l2302F3AC:
	c.addi	a4,00000001
	bne	a4,a2,000000002302F3A6

l2302F3B2:
	c.jr	ra

l2302F3B4:
	c.slli	a4,03
	c.add	a4,a6
	c.sw	a4,0(a1)
	c.sw	a4,4(a0)
	c.jr	ra

;; vQueueWaitForMessageRestricted: 2302F3BE
;;   Called from:
;;     230319A4 (in prvTimerTask)
vQueueWaitForMessageRestricted proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s0,a0
	c.swsp	ra,00000084
	c.mv	s1,a1
	c.mv	s2,a2
	jal	ra,000000002303100A
	lbu	a5,s0,+00000044
	c.li	a4,FFFFFFFF
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,a4,000000002302F3E4

l2302F3E0:
	sb	zero,s0,+00000044

l2302F3E4:
	lbu	a5,s0,+00000045
	c.li	a4,FFFFFFFF
	c.slli	a5,18
	c.srai	a5,00000018
	bne	a5,a4,000000002302F3F6

l2302F3F2:
	sb	zero,s0,+00000045

l2302F3F6:
	jal	ra,000000002303101E
	c.lw	s0,56(a5)
	c.beqz	a5,000000002302F40E

l2302F3FE:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002302EA08

l2302F40E:
	addi	a0,s0,+00000024
	c.mv	a2,s2
	c.mv	a1,s1
	jal	ra,00000000230307C2
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002302EA08

;; prvInitialiseNewStreamBuffer: 2302F42A
;;   Called from:
;;     2302F612 (in xStreamBufferGenericCreate)
;;     2302F69C (in xStreamBufferGenericCreateStatic)
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
	jal	ra,0000000023070EB8
	beq	s1,a0,000000002302F454

l2302F450:
	jal	ra,0000000023001004

l2302F454:
	c.mv	a0,s0
	addi	a2,zero,+00000024
	c.li	a1,00000000
	jal	ra,0000000023070EB8
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

;; prvWriteBytesToBuffer: 2302F47E
;;   Called from:
;;     2302F820 (in xStreamBufferSend)
;;     2302F886 (in xStreamBufferSend)
;;     2302F906 (in xStreamBufferSendFromISR)
;;     2302F946 (in xStreamBufferSendFromISR)
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
	c.beqz	a2,000000002302F4FE

l2302F494:
	c.lw	a0,4(s0)
	c.lw	a0,8(a5)
	sub	s3,a5,s0
	bltu	a2,s3,000000002302F4EA

l2302F4A0:
	add	a4,s0,s3
	bltu	a5,a4,000000002302F4F8

l2302F4A8:
	c.lw	s1,24(a0)
	c.mv	a2,s3
	c.mv	a1,s4
	c.add	a0,s0
	jal	ra,0000000023070C7C
	bgeu	s3,s2,000000002302F4CC

l2302F4B8:
	c.lw	s1,8(a5)
	sub	a2,s2,s3
	bltu	a5,a2,000000002302F520

l2302F4C2:
	c.lw	s1,24(a0)
	add	a1,s4,s3
	jal	ra,0000000023070C7C

l2302F4CC:
	c.lw	s1,8(a5)
	c.add	s0,s2
	bltu	s0,a5,000000002302F4D6

l2302F4D4:
	c.sub	s0,a5

l2302F4D6:
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

l2302F4EA:
	c.mv	s3,a2
	add	a4,s0,s3
	bgeu	a5,a4,000000002302F4A8

l2302F4F4:
	c.j	000000002302F4F8

l2302F4F6:
	c.li	s3,00000000

l2302F4F8:
	jal	ra,0000000023001004
	c.j	000000002302F4A8

l2302F4FE:
	jal	ra,0000000023001004
	c.lw	s1,8(a5)
	c.lw	s1,4(s0)
	bltu	a5,s0,000000002302F4F6

l2302F50A:
	c.lw	s1,24(a0)
	c.li	a2,00000000
	c.mv	a1,s4
	c.add	a0,s0
	jal	ra,0000000023070C7C
	c.lw	s1,8(a5)
	c.add	s0,s2
	bltu	s0,a5,000000002302F4D6

l2302F51E:
	c.j	000000002302F4D4

l2302F520:
	c.swsp	a2,00000084
	jal	ra,0000000023001004
	c.lwsp	a2,00000084
	c.lw	s1,24(a0)
	add	a1,s4,s3
	jal	ra,0000000023070C7C
	c.j	000000002302F4CC

;; prvReadBytesFromBuffer: 2302F534
;;   Called from:
;;     2302F9DA (in xStreamBufferReceive)
;;     2302FA18 (in xStreamBufferReceive)
;;     2302FABC (in xStreamBufferReceiveFromISR)
;;     2302FAF4 (in xStreamBufferReceiveFromISR)
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
	bltu	a3,a2,000000002302F54C

l2302F54A:
	c.mv	s0,a2

l2302F54C:
	c.beqz	s0,000000002302F5A0

l2302F54E:
	lw	s3,a0,+00000000
	c.lw	a0,8(a5)
	sub	s4,a5,s3
	bltu	s0,s4,000000002302F5B4

l2302F55C:
	c.mv	s5,a1
	c.mv	s1,a0
	c.mv	s2,a2
	bltu	a2,s4,000000002302F5C0

l2302F566:
	add	a4,s3,s4
	bltu	a5,a4,000000002302F5CE

l2302F56E:
	c.lw	s1,24(a1)
	c.mv	a2,s4
	c.mv	a0,s5
	c.add	a1,s3
	jal	ra,0000000023070C7C
	bgeu	s4,s0,000000002302F590

l2302F57E:
	bltu	s2,s0,000000002302F5D4

l2302F582:
	c.lw	s1,24(a1)
	sub	a2,s0,s4
	add	a0,s5,s4
	jal	ra,0000000023070C7C

l2302F590:
	c.lw	s1,8(a5)
	c.add	s3,s0
	bltu	s3,a5,000000002302F59C

l2302F598:
	sub	s3,s3,a5

l2302F59C:
	sw	s3,s1,+00000000

l2302F5A0:
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

l2302F5B4:
	c.mv	s4,s0
	c.mv	s5,a1
	c.mv	s1,a0
	c.mv	s2,a2
	bgeu	a2,s4,000000002302F566

l2302F5C0:
	jal	ra,0000000023001004
	c.lw	s1,8(a5)
	add	a4,s3,s4
	bgeu	a5,a4,000000002302F56E

l2302F5CE:
	jal	ra,0000000023001004
	c.j	000000002302F56E

l2302F5D4:
	jal	ra,0000000023001004
	c.j	000000002302F582

;; xStreamBufferGenericCreate: 2302F5DA
;;   Called from:
;;     2304C938 (in vfs_uart_open)
;;     2304C944 (in vfs_uart_open)
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
	beq	a2,a5,000000002302F63E

l2302F5F0:
	c.li	s3,00000000
	c.beqz	a0,000000002302F632

l2302F5F4:
	bltu	s0,s1,000000002302F62A

l2302F5F8:
	c.beqz	s1,000000002302F626

l2302F5FA:
	addi	a0,s0,+00000025
	jal	ra,000000002303218A
	c.mv	s2,a0
	c.beqz	a0,000000002302F616

l2302F606:
	c.mv	a4,s3
	c.mv	a3,s1
	addi	a2,s0,+00000001
	addi	a1,a0,+00000024
	jal	ra,000000002302F42A

l2302F616:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2302F626:
	c.li	s1,00000001
	c.j	000000002302F5FA

l2302F62A:
	jal	ra,0000000023001004
	c.bnez	s1,000000002302F5FA

l2302F630:
	c.j	000000002302F626

l2302F632:
	jal	ra,0000000023001004
	c.mv	s3,s0
	bgeu	s0,s1,000000002302F5F8

l2302F63C:
	c.j	000000002302F62A

l2302F63E:
	c.li	a5,00000004
	c.li	s3,00000001
	bltu	a5,a0,000000002302F5F4

l2302F646:
	jal	ra,0000000023001004
	bgeu	s0,s1,000000002302F5F8

l2302F64E:
	c.j	000000002302F62A

;; xStreamBufferGenericCreateStatic: 2302F650
;;   Called from:
;;     2302625C (in wifi_mgmr_init)
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
	c.beqz	a3,000000002302F6FC

l2302F66A:
	c.beqz	s0,000000002302F6F2

l2302F66C:
	bltu	s4,s2,000000002302F6E8

l2302F670:
	beq	s2,zero,000000002302F6BE

l2302F674:
	sltu	s1,zero,s1
	c.li	a5,00000004
	c.addi	s1,00000002
	bgeu	a5,s4,000000002302F6CC

l2302F680:
	addi	a5,zero,+00000024
	c.swsp	a5,00000084
	c.lwsp	a2,000000C4
	bne	a4,a5,000000002302F6DC

l2302F68C:
	beq	s3,zero,000000002302F6E4

l2302F690:
	c.beqz	s0,000000002302F6AC

l2302F692:
	c.mv	a4,s1
	c.mv	a3,s2
	c.mv	a2,s4
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,000000002302F42A
	lbu	a5,s0,+0000001C
	ori	a5,a5,+00000002
	sb	a5,s0,+0000001C

l2302F6AC:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2302F6BE:
	sltu	s1,zero,s1
	c.li	a5,00000004
	c.li	s2,00000001
	c.addi	s1,00000002
	bltu	a5,s4,000000002302F680

l2302F6CC:
	jal	ra,0000000023001004
	addi	a5,zero,+00000024
	c.swsp	a5,00000084
	c.lwsp	a2,000000C4
	beq	a4,a5,000000002302F68C

l2302F6DC:
	jal	ra,0000000023001004
	bne	s3,zero,000000002302F690

l2302F6E4:
	c.li	s0,00000000
	c.j	000000002302F6AC

l2302F6E8:
	jal	ra,0000000023001004
	bne	s2,zero,000000002302F674

l2302F6F0:
	c.j	000000002302F6BE

l2302F6F2:
	jal	ra,0000000023001004
	bgeu	s4,s2,000000002302F670

l2302F6FA:
	c.j	000000002302F6E8

l2302F6FC:
	jal	ra,0000000023001004
	c.bnez	s0,000000002302F66C

l2302F702:
	c.j	000000002302F6F2

;; vStreamBufferDelete: 2302F704
;;   Called from:
;;     2304CA3C (in vfs_uart_close)
;;     2304CA42 (in vfs_uart_close)
vStreamBufferDelete proc
	c.beqz	a0,000000002302F71C

l2302F706:
	lbu	a5,a0,+0000001C
	c.andi	a5,00000002
	c.bnez	a5,000000002302F712

l2302F70E:
	jal	zero,0000000023032272

l2302F712:
	addi	a2,zero,+00000024
	c.li	a1,00000000
	jal	zero,0000000023070EB8

l2302F71C:
	c.addi	sp,FFFFFFE0
	c.swsp	a0,00000084
	c.swsp	ra,0000008C
	jal	ra,0000000023001004
	c.lwsp	a2,00000044
	lbu	a5,a0,+0000001C
	c.andi	a5,00000002
	c.bnez	a5,000000002302F738

l2302F730:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,0000000023032272

l2302F738:
	c.lwsp	t3,00000020
	addi	a2,zero,+00000024
	c.li	a1,00000000
	c.addi16sp	00000020
	jal	zero,0000000023070EB8

;; xStreamBufferSpacesAvailable: 2302F746
;;   Called from:
;;     2302F7F8 (in xStreamBufferSend)
;;     2302F85E (in xStreamBufferSend)
;;     2302F8D6 (in xStreamBufferSendFromISR)
xStreamBufferSpacesAvailable proc
	c.beqz	a0,000000002302F760

l2302F748:
	c.lw	a0,0(a5)
	c.lw	a0,8(a4)
	c.lw	a0,4(a3)
	add	a0,a4,a5
	c.addi	a0,FFFFFFFF
	c.sub	a0,a3
	bltu	a0,a4,000000002302F75E

l2302F75A:
	c.sub	a0,a4
	c.jr	ra

l2302F75E:
	c.jr	ra

l2302F760:
	c.addi	sp,FFFFFFE0
	c.swsp	a0,00000084
	c.swsp	ra,0000008C
	jal	ra,0000000023001004
	c.lwsp	a2,00000044
	c.lw	a0,0(a5)
	c.lw	a0,8(a4)
	c.lw	a0,4(a3)
	add	a0,a4,a5
	c.addi	a0,FFFFFFFF
	c.sub	a0,a3
	bltu	a0,a4,000000002302F780

l2302F77E:
	c.sub	a0,a4

l2302F780:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; xStreamBufferSend: 2302F786
;;   Called from:
;;     2302605E (in wifi_mgmr_event_notify)
;;     2304CAF4 (in vfs_uart_write)
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
	beq	a1,zero,000000002302F88E

l2302F7A0:
	beq	s0,zero,000000002302F896

l2302F7A4:
	lbu	a5,s0,+0000001C
	c.mv	s2,s3
	c.andi	a5,00000001
	c.beqz	a5,000000002302F7B6

l2302F7AE:
	addi	s2,s3,+00000004
	bgeu	s3,s2,000000002302F89C

l2302F7B6:
	c.lwsp	a2,000000E4
	c.beqz	a5,000000002302F85C

l2302F7BA:
	c.addi4spn	a0,00000018
	jal	ra,0000000023030936
	c.j	000000002302F7F2

l2302F7C2:
	jal	ra,00000000230315FC
	c.lw	s0,20(a5)
	c.beqz	a5,000000002302F7CE

l2302F7CA:
	jal	ra,0000000023001004

l2302F7CE:
	jal	ra,0000000023030D24
	c.sw	s0,20(a0)
	jal	ra,000000002303101E
	c.lwsp	a2,000000A4
	c.li	a1,00000000
	c.li	a2,00000000
	c.li	a0,00000000
	jal	ra,0000000023031212
	c.addi4spn	a1,0000000C
	sw	zero,s0,+00000014
	c.addi4spn	a0,00000018
	jal	ra,00000000230309AC
	c.bnez	a0,000000002302F808

l2302F7F2:
	jal	ra,000000002303100A
	c.mv	a0,s0
	jal	ra,000000002302F746
	c.mv	s1,a0
	c.li	a0,00000000
	bltu	s1,s2,000000002302F7C2

l2302F804:
	jal	ra,000000002303101E

l2302F808:
	c.beqz	s1,000000002302F85C

l2302F80A:
	c.swsp	s3,00000088

l2302F80C:
	lbu	a5,s0,+0000001C
	c.andi	a5,00000001
	c.bnez	a5,000000002302F87C

l2302F814:
	c.mv	a2,s3
	bltu	s1,s3,000000002302F8A8

l2302F81A:
	c.swsp	a2,00000088

l2302F81C:
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,000000002302F47E
	c.mv	s1,a0
	c.beqz	a0,000000002302F86A

l2302F828:
	c.lw	s0,4(a5)
	c.lw	s0,8(a4)
	c.lw	s0,0(a3)
	c.add	a5,a4
	c.sub	a5,a3
	bltu	a5,a4,000000002302F838

l2302F836:
	c.sub	a5,a4

l2302F838:
	c.lw	s0,12(a4)
	bltu	a5,a4,000000002302F86A

l2302F83E:
	jal	ra,00000000230302D8
	c.lw	s0,16(a5)
	c.beqz	a5,000000002302F856

l2302F846:
	c.lw	s0,16(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,00000000230312F2
	sw	zero,s0,+00000010

l2302F856:
	jal	ra,00000000230304DC
	c.j	000000002302F86A

l2302F85C:
	c.mv	a0,s0
	jal	ra,000000002302F746
	c.swsp	s3,00000088
	c.mv	s1,a0
	c.bnez	a0,000000002302F80C

l2302F868:
	c.li	s1,00000000

l2302F86A:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s1
	c.lwsp	a6,00000158
	c.lwsp	s4,00000134
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

l2302F87C:
	bltu	s1,s2,000000002302F868

l2302F880:
	c.li	a2,00000004
	c.addi4spn	a1,00000014
	c.mv	a0,s0
	jal	ra,000000002302F47E
	c.lwsp	s4,00000084
	c.j	000000002302F81C

l2302F88E:
	jal	ra,0000000023001004
	bne	s0,zero,000000002302F7A4

l2302F896:
	jal	ra,0000000023001004
	c.j	000000002302F7A4

l2302F89C:
	jal	ra,0000000023001004
	c.lwsp	a2,000000E4
	bne	a5,zero,000000002302F7BA

l2302F8A6:
	c.j	000000002302F85C

l2302F8A8:
	c.mv	a2,s1
	c.j	000000002302F81A

;; xStreamBufferSendFromISR: 2302F8AC
;;   Called from:
;;     2304C9A0 (in __uart_rx_irq)
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
	c.beqz	a1,000000002302F94E

l2302F8C4:
	c.beqz	s0,000000002302F954

l2302F8C6:
	lbu	a5,s0,+0000001C
	c.mv	s4,s1
	c.andi	a5,00000001
	c.beqz	a5,000000002302F8D4

l2302F8D0:
	addi	s4,s1,+00000004

l2302F8D4:
	c.mv	a0,s0
	jal	ra,000000002302F746
	c.swsp	s1,00000084
	c.bnez	a0,000000002302F8F2

l2302F8DE:
	c.li	s1,00000000

l2302F8E0:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2302F8F2:
	lbu	a5,s0,+0000001C
	c.andi	a5,00000001
	c.bnez	a5,000000002302F93C

l2302F8FA:
	c.mv	a2,s1
	bltu	a0,s1,000000002302F95A

l2302F900:
	c.swsp	a2,00000084

l2302F902:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002302F47E
	c.mv	s1,a0
	c.beqz	a0,000000002302F8E0

l2302F90E:
	c.lw	s0,4(a5)
	c.lw	s0,8(a4)
	c.lw	s0,0(a3)
	c.add	a5,a4
	c.sub	a5,a3
	bltu	a5,a4,000000002302F91E

l2302F91C:
	c.sub	a5,a4

l2302F91E:
	c.lw	s0,12(a4)
	bltu	a5,a4,000000002302F8E0

l2302F924:
	c.lw	s0,16(a5)
	c.beqz	a5,000000002302F8E0

l2302F928:
	c.lw	s0,16(a0)
	c.mv	a4,s3
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023031420
	sw	zero,s0,+00000010
	c.j	000000002302F8E0

l2302F93C:
	bltu	a0,s4,000000002302F8DE

l2302F940:
	c.li	a2,00000004
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	jal	ra,000000002302F47E
	c.lwsp	a2,00000084
	c.j	000000002302F902

l2302F94E:
	jal	ra,0000000023001004
	c.bnez	s0,000000002302F8C6

l2302F954:
	jal	ra,0000000023001004
	c.j	000000002302F8C6

l2302F95A:
	c.mv	a2,a0
	c.j	000000002302F900

;; xStreamBufferReceive: 2302F95E
;;   Called from:
;;     23026192 (in wifi_mgmr_start)
;;     2304CAB4 (in vfs_uart_read)
;;     2304CC26 (in uart_ioctl_cmd_waimode)
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
	c.beqz	a1,000000002302FA00

l2302F978:
	c.beqz	s1,000000002302FA06

l2302F97A:
	lbu	s2,s1,+0000001C
	andi	s2,s2,+00000001
	c.slli	s2,02
	bne	s5,zero,000000002302F9B2

l2302F988:
	c.lw	s1,4(s0)
	c.lw	s1,8(a5)
	c.lw	s1,0(a4)
	c.add	s0,a5
	c.sub	s0,a4
	bltu	s0,a5,000000002302F998

l2302F996:
	c.sub	s0,a5

l2302F998:
	bltu	s2,s0,000000002302F9CE

l2302F99C:
	c.li	s0,00000000

l2302F99E:
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

l2302F9B2:
	jal	ra,000000002303100A
	c.lw	s1,8(a5)
	c.lw	s1,4(s0)
	c.lw	s1,0(a4)
	c.add	s0,a5
	c.sub	s0,a4
	bltu	s0,a5,000000002302F9C6

l2302F9C4:
	c.sub	s0,a5

l2302F9C6:
	bgeu	s2,s0,000000002302FA2E

l2302F9CA:
	jal	ra,000000002303101E

l2302F9CE:
	bne	s2,zero,000000002302FA0C

l2302F9D2:
	c.mv	a3,s0
	c.mv	a2,s4
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,000000002302F534
	c.mv	s0,a0
	c.beqz	a0,000000002302F99C

l2302F9E2:
	jal	ra,00000000230302D8
	c.lw	s1,20(a5)
	c.beqz	a5,000000002302F9FA

l2302F9EA:
	c.lw	s1,20(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,00000000230312F2
	sw	zero,s1,+00000014

l2302F9FA:
	jal	ra,00000000230304DC
	c.j	000000002302F99E

l2302FA00:
	jal	ra,0000000023001004
	c.bnez	s1,000000002302F97A

l2302FA06:
	jal	ra,0000000023001004
	c.j	000000002302F97A

l2302FA0C:
	c.mv	a3,s0
	c.mv	a2,s2
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	lw	s5,s1,+00000000
	jal	ra,000000002302F534
	c.lwsp	a2,000000E4
	sub	s0,s0,s2
	bgeu	s4,a5,000000002302FA58

l2302FA26:
	sw	s5,s1,+00000000
	c.li	s4,00000000
	c.j	000000002302F9D2

l2302FA2E:
	c.li	a0,00000000
	jal	ra,00000000230315FC
	c.lw	s1,16(a5)
	c.beqz	a5,000000002302FA3C

l2302FA38:
	jal	ra,0000000023001004

l2302FA3C:
	jal	ra,0000000023030D24
	c.sw	s1,16(a0)
	jal	ra,000000002303101E
	c.mv	a3,s5
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,0000000023031212
	sw	zero,s1,+00000010
	c.j	000000002302F988

l2302FA58:
	c.mv	s4,a5
	c.j	000000002302F9D2

;; xStreamBufferReceiveFromISR: 2302FA5C
;;   Called from:
;;     2304C9E2 (in __uart_tx_irq)
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
	c.beqz	a1,000000002302FADC

l2302FA78:
	c.beqz	s1,000000002302FAE2

l2302FA7A:
	c.lw	s1,4(s0)
	c.lw	s1,8(a5)
	lbu	s2,s1,+0000001C
	c.lw	s1,0(a4)
	c.add	s0,a5
	andi	s2,s2,+00000001
	c.sub	s0,a4
	c.slli	s2,02
	bltu	s0,a5,000000002302FA94

l2302FA92:
	c.sub	s0,a5

l2302FA94:
	bltu	s2,s0,000000002302FAB0

l2302FA98:
	c.li	s0,00000000

l2302FA9A:
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

l2302FAB0:
	bne	s2,zero,000000002302FAE8

l2302FAB4:
	c.mv	a3,s0
	c.mv	a2,s4
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,000000002302F534
	c.mv	s0,a0
	c.beqz	a0,000000002302FA98

l2302FAC4:
	c.lw	s1,20(a5)
	c.beqz	a5,000000002302FA9A

l2302FAC8:
	c.lw	s1,20(a0)
	c.mv	a4,s5
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023031420
	sw	zero,s1,+00000014
	c.j	000000002302FA9A

l2302FADC:
	jal	ra,0000000023001004
	c.bnez	s1,000000002302FA7A

l2302FAE2:
	jal	ra,0000000023001004
	c.j	000000002302FA7A

l2302FAE8:
	c.mv	a3,s0
	c.mv	a2,s2
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	lw	s6,s1,+00000000
	jal	ra,000000002302F534
	c.lwsp	a2,000000E4
	sub	s0,s0,s2
	bgeu	s4,a5,000000002302FB0A

l2302FB02:
	sw	s6,s1,+00000000
	c.li	s4,00000000
	c.j	000000002302FAB4

l2302FB0A:
	c.mv	s4,a5
	c.j	000000002302FAB4

;; xStreamBufferIsEmpty: 2302FB0E
;;   Called from:
;;     2304CB7C (in vfs_uart_poll)
xStreamBufferIsEmpty proc
	c.beqz	a0,000000002302FB1C

l2302FB10:
	c.lw	a0,0(a5)
	c.lw	a0,4(a0)
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

l2302FB1C:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,0000000023001004
	c.lwsp	a2,00000044
	c.lwsp	t3,00000020
	c.lw	a0,0(a5)
	c.lw	a0,4(a0)
	c.addi16sp	00000020
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; prvResetNextTaskUnblockTime.part.0: 2302FB38
;;   Called from:
;;     230300F8 (in vTaskDelete)
;;     23030402 (in xTaskIncrementTick)
;;     2303062A (in xTaskResumeAll)
prvResetNextTaskUnblockTime.part.0 proc
	lui	a5,0004200E
	lw	a4,a5,-000001C4
	lui	a5,0004200E
	c.lw	a4,12(a4)
	c.lw	a4,12(a4)
	c.lw	a4,4(a4)
	sw	a4,a5,+00000E5C
	c.jr	ra

;; prvInitialiseNewTask.isra.2: 2302FB50
;;   Called from:
;;     2302FF76 (in xTaskCreateStatic)
;;     23030034 (in xTaskCreate)
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
	jal	ra,0000000023070EB8
	lw	s3,s1,+00000030
	c.addi	s7,FFFFFFFC
	c.add	s3,s7
	andi	s3,s3,-00000008
	c.beqz	s0,000000002302FC18

l2302FB90:
	c.mv	a1,s0
	addi	a5,s1,+00000034
	addi	a4,s0,+00000010

l2302FB9A:
	lbu	a3,a1,+00000000
	c.addi	a5,00000001
	c.addi	a1,00000001
	sb	a3,a5,+00000FFF
	c.beqz	a3,000000002302FBAC

l2302FBA8:
	bne	a1,a4,000000002302FB9A

l2302FBAC:
	sb	zero,s1,+00000043

l2302FBB0:
	c.li	a5,0000001F
	bgeu	a5,s2,000000002302FBB8

l2302FBB6:
	c.li	s2,0000001F

l2302FBB8:
	addi	a0,s1,+00000004
	sw	s2,s1,+0000002C
	sw	s2,s1,+00000050
	sw	zero,s1,+00000054
	jal	ra,000000002302E8C8
	addi	a0,s1,+00000018
	jal	ra,000000002302E8C8
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
	jal	ra,0000000023032000
	c.sw	s1,0(a0)
	beq	s4,zero,000000002302FC02

l2302FBFE:
	sw	s1,s4,+00000000

l2302FC02:
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

l2302FC18:
	sb	zero,s1,+00000034
	c.j	000000002302FBB0

;; prvDeleteTCB: 2302FC1E
;;   Called from:
;;     2302FF2E (in prvIdleTask)
;;     230300E8 (in vTaskDelete)
prvDeleteTCB proc
	lbu	a4,a0,+0000005D
	c.beqz	a4,000000002302FC36

l2302FC24:
	c.li	a5,00000001
	beq	a4,a5,000000002302FC50

l2302FC2A:
	c.li	a5,00000002
	bne	a4,a5,000000002302FC32

l2302FC30:
	c.jr	ra

l2302FC32:
	jal	zero,0000000023001004

l2302FC36:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,48(a0)
	jal	ra,0000000023032272
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023032272

l2302FC50:
	jal	zero,0000000023032272

;; prvAddCurrentTaskToDelayedList: 2302FC54
;;   Called from:
;;     23030652 (in vTaskDelay)
;;     2303075E (in vTaskPlaceOnEventList)
;;     230307AA (in vTaskPlaceOnUnorderedEventList)
;;     230307EE (in vTaskPlaceOnEventListRestricted)
;;     23031208 (in ulTaskNotifyTake)
;;     230312E8 (in xTaskNotifyWait)
prvAddCurrentTaskToDelayedList proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200E
	lui	a5,0004200E
	addi	s0,s0,-000001C8
	c.swsp	s2,00000008
	lw	s2,a5,-00000198
	c.lw	s0,0(a5)
	c.swsp	s1,00000088
	c.mv	s1,a0
	addi	a0,a5,+00000004
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s3,a1
	jal	ra,000000002302E914
	c.bnez	a0,000000002302FC9C

l2302FC80:
	c.lw	s0,0(a5)
	lui	a4,0004200E
	addi	a4,a4,-000001A8
	c.lw	a5,44(a2)
	c.lw	a4,0(a3)
	c.li	a5,00000001
	sll	a5,a5,a2
	xori	a5,a5,-00000001
	c.and	a5,a3
	c.sw	a4,0(a5)

l2302FC9C:
	c.li	a5,FFFFFFFF
	beq	s1,a5,000000002302FCF6

l2302FCA2:
	c.lw	s0,0(a5)
	c.add	s1,s2
	c.sw	a5,4(s1)
	bltu	s1,s2,000000002302FCDA

l2302FCAC:
	lui	a5,0004200E
	lw	a0,a5,-000001C4
	c.lw	s0,0(a1)
	c.addi	a1,00000004
	jal	ra,000000002302E8E4
	lui	a5,0004200E
	addi	a5,a5,-000001A4
	c.lw	a5,0(a4)
	bgeu	s1,a4,000000002302FCCC

l2302FCCA:
	c.sw	a5,0(s1)

l2302FCCC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2302FCDA:
	lui	a5,0004200E
	lw	a0,a5,-000001C0
	c.lw	s0,0(a1)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi	a1,00000004
	c.addi16sp	00000020
	jal	zero,000000002302E8E4

l2302FCF6:
	beq	s3,zero,000000002302FCA2

l2302FCFA:
	c.lw	s0,0(a1)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,00042012
	addi	a0,a0,+000007F8
	c.addi	a1,00000004
	c.addi16sp	00000020
	jal	zero,000000002302E8CE

;; vTaskEnterCritical.part.7: 2302FD16
;;   Called from:
;;     2302FD68 (in prvAddNewTaskToReadyList)
;;     2302FEF8 (in prvIdleTask)
;;     23030082 (in vTaskDelete)
;;     230301C8 (in eTaskGetState)
;;     23030510 (in xTaskResumeAll)
;;     23030952 (in vTaskSetTimeOutState)
;;     23030A3E (in xTaskCheckForTimeOut)
;;     23031018 (in vTaskEnterCritical)
;;     2303118C (in ulTaskNotifyTake)
;;     230311BC (in ulTaskNotifyTake)
;;     2303123C (in xTaskNotifyWait)
;;     23031282 (in xTaskNotifyWait)
;;     2303138A (in xTaskGenericNotify)
;;     23031618 (in xTaskNotifyStateClear)
vTaskEnterCritical.part.7 proc
	lui	a5,0004200E
	addi	a5,a5,-000001C8
	c.lw	a5,0(a4)
	c.lw	a5,0(a5)
	c.lw	a4,68(a5)
	c.addi	a5,00000001
	c.sw	a4,68(a5)
	c.jr	ra

;; vTaskExitCritical.part.8: 2302FD2A
;;   Called from:
;;     2302FE10 (in prvAddNewTaskToReadyList)
;;     2302FF28 (in prvIdleTask)
;;     23030108 (in vTaskDelete)
;;     23030228 (in eTaskGetState)
;;     230305FE (in xTaskResumeAll)
;;     23030982 (in vTaskSetTimeOutState)
;;     23030A2C (in xTaskCheckForTimeOut)
;;     23031034 (in vTaskExitCritical)
;;     230311E2 (in ulTaskNotifyTake)
;;     230311FE (in ulTaskNotifyTake)
;;     230312C6 (in xTaskNotifyWait)
;;     230312DE (in xTaskNotifyWait)
;;     23031374 (in xTaskGenericNotify)
;;     23031640 (in xTaskNotifyStateClear)
vTaskExitCritical.part.8 proc
	lui	a5,0004200E
	addi	a5,a5,-000001C8
	c.lw	a5,0(a4)
	c.lw	a5,0(a3)
	c.lw	a4,68(a5)
	c.addi	a5,FFFFFFFF
	c.sw	a4,68(a5)
	c.lw	a3,68(a5)
	c.bnez	a5,000000002302FD44

l2302FD40:
	csrrsi	zero,mstatus,00000008

l2302FD44:
	c.jr	ra

;; prvAddNewTaskToReadyList: 2302FD46
;;   Called from:
;;     2302FF7C (in xTaskCreateStatic)
;;     2303003A (in xTaskCreate)
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
	lui	s0,0004200E
	addi	s0,s0,-0000019C
	c.lw	s0,0(a5)
	c.beqz	a5,000000002302FD6C

l2302FD68:
	jal	ra,000000002302FD16

l2302FD6C:
	lui	a5,0004200E
	addi	a5,a5,-000001BC
	c.lw	a5,0(a4)
	lui	s1,0004200E
	addi	s1,s1,-000001C8
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	c.lw	s1,0(a4)
	c.beqz	a4,000000002302FE16

l2302FD86:
	c.lw	s0,0(a5)
	lw	a1,s2,+0000002C
	c.beqz	a5,000000002302FE02

l2302FD8E:
	lui	s3,00042012
	addi	s3,s3,+0000053C

l2302FD96:
	lui	a3,0004200E
	addi	a3,a3,-000001AC
	lui	a4,0004200E
	c.lw	a3,0(a2)
	addi	a4,a4,-000001A8
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
	jal	ra,000000002302E8CE
	c.lw	s0,0(a5)
	c.beqz	a5,000000002302FDDC

l2302FDD6:
	c.lw	s1,0(a5)
	c.lw	a5,68(a5)
	c.bnez	a5,000000002302FE10

l2302FDDC:
	c.lw	s0,0(a5)
	c.beqz	a5,000000002302FDF0

l2302FDE0:
	c.lw	s1,0(a4)
	lw	a5,s2,+0000002C
	c.lw	a4,44(a4)
	bgeu	a4,a5,000000002302FDF0

l2302FDEC:
	ecall

l2302FDF0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2302FE02:
	c.lw	s1,0(a5)
	c.lw	a5,44(a5)
	bltu	a1,a5,000000002302FD8E

l2302FE0A:
	sw	s2,s1,+00000000
	c.j	000000002302FD8E

l2302FE10:
	jal	ra,000000002302FD2A
	c.j	000000002302FDDC

l2302FE16:
	sw	s2,s1,+00000000
	c.lw	a5,0(a4)
	c.li	a5,00000001
	beq	a4,a5,000000002302FE30

l2302FE22:
	lui	s3,00042012
	lw	a1,s2,+0000002C
	addi	s3,s3,+0000053C
	c.j	000000002302FD96

l2302FE30:
	lui	s4,00042012
	addi	s3,s4,+0000053C
	addi	s5,s3,+00000280
	addi	s4,s4,+0000053C

l2302FE40:
	c.mv	a0,s4
	c.addi	s4,00000014
	jal	ra,000000002302E8B4
	bne	s5,s4,000000002302FE40

l2302FE4C:
	lui	a5,00042012
	addi	a0,a5,+000007BC
	addi	s5,a5,+000007BC
	jal	ra,000000002302E8B4
	lui	a5,00042012
	addi	a0,a5,+000007D0
	addi	s4,a5,+000007D0
	jal	ra,000000002302E8B4
	lui	a0,00042012
	addi	a0,a0,+000007E4
	jal	ra,000000002302E8B4
	lui	a0,00042013
	addi	a0,a0,-000007F4
	jal	ra,000000002302E8B4
	lui	a0,00042012
	addi	a0,a0,+000007F8
	jal	ra,000000002302E8B4
	lui	a4,0004200E
	lui	a5,0004200E
	sw	s5,a4,+00000E3C
	sw	s4,a5,+00000E40
	lw	a1,s2,+0000002C
	c.j	000000002302FD96

;; prvIdleTask: 2302FEA6
prvIdleTask proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	lui	s0,0004200E
	lui	s3,0004200E
	lui	s6,00042013
	lui	s2,0004200E
	lui	s5,0004200E
	lui	s4,00042012
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	addi	s0,s0,-000001B8
	addi	s3,s3,-0000019C
	addi	s6,s6,-000007F4
	addi	s2,s2,-000001BC
	addi	s5,s5,-000001C8
	addi	s4,s4,+0000053C
	c.li	s7,00000001
	c.j	000000002302FF32

l2302FEEE:
	csrrci	zero,mstatus,00000008
	lw	a5,s3,+00000000
	c.beqz	a5,000000002302FEFC

l2302FEF8:
	jal	ra,000000002302FD16

l2302FEFC:
	lw	a5,s6,+0000000C
	c.lw	a5,12(s1)
	addi	a0,s1,+00000004
	jal	ra,000000002302E914
	lw	a5,s2,+00000000
	c.addi	a5,FFFFFFFF
	sw	a5,s2,+00000000
	c.lw	s0,0(a5)
	c.addi	a5,FFFFFFFF
	c.sw	s0,0(a5)
	lw	a5,s3,+00000000
	c.beqz	a5,000000002302FF2C

l2302FF20:
	lw	a5,s5,+00000000
	c.lw	a5,68(a5)
	c.beqz	a5,000000002302FF2C

l2302FF28:
	jal	ra,000000002302FD2A

l2302FF2C:
	c.mv	a0,s1
	jal	ra,000000002302FC1E

l2302FF32:
	c.lw	s0,0(a5)
	c.bnez	a5,000000002302FEEE

l2302FF36:
	lw	a5,s4,+00000000
	bgeu	s7,a5,000000002302FF42

l2302FF3E:
	ecall

l2302FF42:
	jal	ra,00000000230008FC
	c.j	000000002302FF32

;; xTaskCreateStatic: 2302FF48
;;   Called from:
;;     230011FE (in bfl_main)
;;     23001236 (in bfl_main)
;;     23030290 (in vTaskStartScheduler)
;;     23031770 (in xTimerCreateTimerTask)
;;     23038F50 (in hal_wifi_start_firmware_task)
;;     23039C00 (in looprt_start)
;;     2304D248 (in aos_task_new)
xTaskCreateStatic proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	ra,0000009C
	c.mv	s1,a5
	c.mv	s0,a6
	c.beqz	a5,000000002302FFAA

l2302FF56:
	c.beqz	s0,000000002302FFC4

l2302FF58:
	addi	a5,zero,+00000060
	c.swsp	a5,00000014
	c.lwsp	s0,00000118
	bne	a6,a5,000000002302FF8E

l2302FF64:
	c.lwsp	s0,000001F4

l2302FF66:
	c.li	a5,00000000
	c.beqz	s1,000000002302FF82

l2302FF6A:
	c.li	a7,00000002
	c.addi4spn	a5,0000002C
	c.mv	a6,s0
	sb	a7,s0,+0000005D
	c.sw	s0,48(s1)
	jal	ra,000000002302FB50
	c.mv	a0,s0
	jal	ra,000000002302FD46
	c.lwsp	a2,000001F4

l2302FF82:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.mv	a0,a5
	c.addi16sp	00000040
	c.jr	ra

l2302FF8E:
	c.swsp	a4,0000008C
	c.swsp	a3,0000000C
	c.swsp	a2,00000088
	c.swsp	a1,00000008
	c.swsp	a0,00000084
	jal	ra,0000000023001004
	c.lwsp	s0,000001F4
	c.lwsp	a2,00000044
	c.lwsp	a6,00000064
	c.lwsp	s4,00000084
	c.lwsp	s8,000000A4
	c.lwsp	t3,000000C4
	c.j	000000002302FF66

l2302FFAA:
	c.swsp	a4,0000008C
	c.swsp	a3,0000000C
	c.swsp	a2,00000088
	c.swsp	a1,00000008
	c.swsp	a0,00000084
	jal	ra,0000000023001004
	c.lwsp	t3,000000C4
	c.lwsp	s8,000000A4
	c.lwsp	s4,00000084
	c.lwsp	a6,00000064
	c.lwsp	a2,00000044
	c.bnez	s0,000000002302FF58

l2302FFC4:
	jal	ra,0000000023001004
	addi	a5,zero,+00000060
	c.swsp	a5,00000014
	c.lwsp	s0,000001D4
	beq	a4,a5,000000002302FFD8

l2302FFD4:
	jal	ra,0000000023001004

l2302FFD8:
	c.lwsp	s0,000001F4
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.li	a5,00000000
	c.lwsp	s4,00000134
	c.mv	a0,a5
	c.addi16sp	00000040
	c.jr	ra

;; xTaskCreate: 2302FFE8
;;   Called from:
;;     2300045E (in cmd_aws)
;;     23026232 (in wifi_mgmr_start_background)
;;     23039C58 (in looprt_start_auto)
;;     2303A398 (in sys_thread_new)
;;     2304852A (in cmd_tcp_server)
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
	jal	ra,000000002303218A
	c.beqz	a0,0000000023030056

l23030012:
	c.mv	s1,a0
	addi	a0,zero,+00000060
	jal	ra,000000002303218A
	c.mv	s0,a0
	c.beqz	a0,000000002303005A

l23030020:
	c.mv	a6,a0
	c.mv	a5,s7
	c.mv	a4,s6
	c.mv	a3,s5
	c.mv	a2,s2
	c.mv	a1,s4
	c.sw	a0,48(s1)
	sb	zero,a0,+0000005D
	c.mv	a0,s3
	jal	ra,000000002302FB50
	c.mv	a0,s0
	jal	ra,000000002302FD46
	c.li	a0,00000001

l23030040:
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

l23030056:
	c.li	a0,FFFFFFFF
	c.j	0000000023030040

l2303005A:
	c.mv	a0,s1
	jal	ra,0000000023032272
	c.li	a0,FFFFFFFF
	c.j	0000000023030040

;; vTaskDelete: 23030064
;;   Called from:
;;     230008BE (in aos_loop_proc)
;;     2300186A (in aws_main_entry)
;;     23048100 (in TCP_Server)
;;     23048136 (in TCP_Server)
;;     23048BDC (in iperf_client_udp)
;;     2304D1BC (in dfl_entry)
;;     2304D27C (in aos_task_exit)
vTaskDelete proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s0,a0
	csrrci	zero,mstatus,00000008
	lui	s1,0004200E
	addi	s1,s1,-0000019C
	c.lw	s1,0(a5)
	c.beqz	a5,0000000023030086

l23030082:
	jal	ra,000000002302FD16

l23030086:
	lui	s2,0004200E
	addi	s2,s2,-000001C8
	c.beqz	s0,000000002303016A

l23030090:
	addi	s3,s0,+00000004
	c.mv	a0,s3
	jal	ra,000000002302E914
	c.bnez	a0,00000000230300B6

l2303009C:
	c.lw	s0,44(a3)
	slli	a5,a3,00000002
	c.add	a5,a3
	slli	a4,a5,00000002
	lui	a5,00042012
	addi	a5,a5,+0000053C
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.beqz	a5,0000000023030132

l230300B6:
	c.lw	s0,40(a5)
	c.beqz	a5,00000000230300C2

l230300BA:
	addi	a0,s0,+00000018
	jal	ra,000000002302E914

l230300C2:
	lui	a5,0004200E
	addi	a5,a5,-000001AC
	c.lw	a5,0(a4)
	lw	a3,s2,+00000000
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	beq	a3,s0,000000002303014C

l230300D8:
	lui	a5,0004200E
	addi	a5,a5,-000001BC
	c.lw	a5,0(a4)
	c.mv	a0,s0
	c.addi	a4,FFFFFFFF
	c.sw	a5,0(a4)
	jal	ra,000000002302FC1E
	lui	a5,0004200E
	lw	a5,a5,-000001C4
	c.lw	a5,0(a5)
	c.beqz	a5,0000000023030126

l230300F8:
	jal	ra,000000002302FB38

l230300FC:
	c.lw	s1,0(a5)
	c.beqz	a5,000000002303010C

l23030100:
	lw	a5,s2,+00000000
	c.lw	a5,68(a5)
	c.beqz	a5,000000002303010C

l23030108:
	jal	ra,000000002302FD2A

l2303010C:
	c.lw	s1,0(a5)
	c.beqz	a5,0000000023030118

l23030110:
	lw	a5,s2,+00000000
	beq	a5,s0,0000000023030170

l23030118:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23030126:
	lui	a5,0004200E
	c.li	a4,FFFFFFFF
	sw	a4,a5,+00000E5C
	c.j	00000000230300FC

l23030132:
	lui	a4,0004200E
	addi	a4,a4,-000001A8
	c.lw	a4,0(a2)
	c.li	a5,00000001
	sll	a5,a5,a3
	xori	a5,a5,-00000001
	c.and	a5,a2
	c.sw	a4,0(a5)
	c.j	00000000230300B6

l2303014C:
	lui	a0,00042013
	c.mv	a1,s3
	addi	a0,a0,-000007F4
	jal	ra,000000002302E8CE
	lui	a5,0004200E
	addi	a5,a5,-000001B8
	c.lw	a5,0(a4)
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	c.j	00000000230300FC

l2303016A:
	lw	s0,s2,+00000000
	c.j	0000000023030090

l23030170:
	lui	a5,0004200E
	lw	a5,a5,-000001B0
	c.bnez	a5,000000002303018C

l2303017A:
	ecall

l2303017E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2303018C:
	jal	ra,0000000023001004
	ecall
	c.j	000000002303017E

;; eTaskGetState: 23030196
;;   Called from:
;;     23030B04 (in vTaskGetInfo)
eTaskGetState proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s2,a0
	c.beqz	a0,0000000023030242

l230301A8:
	lui	s1,0004200E
	addi	s1,s1,-000001C8
	c.lw	s1,0(a4)
	c.li	a0,00000000
	beq	a4,s2,0000000023030212

l230301B8:
	csrrci	zero,mstatus,00000008
	lui	s0,0004200E
	addi	s0,s0,-0000019C
	c.lw	s0,0(a5)
	c.beqz	a5,00000000230301CC

l230301C8:
	jal	ra,000000002302FD16

l230301CC:
	lui	a5,0004200E
	lui	a4,0004200E
	lw	s3,a4,-000001C4
	lw	s4,a5,-000001C0
	c.lw	s0,0(a5)
	lw	s0,s2,+00000014
	c.bnez	a5,0000000023030222

l230301E4:
	beq	s0,s3,0000000023030230

l230301E8:
	beq	s0,s4,0000000023030230

l230301EC:
	lui	a5,00042012
	addi	a5,a5,+000007F8
	beq	s0,a5,0000000023030248

l230301F8:
	lui	a5,00042013
	addi	a5,a5,-000007F4
	beq	s0,a5,0000000023030260

l23030204:
	sltiu	a5,s0,+00000001
	sub	a5,zero,a5
	andi	a0,a5,+00000003
	c.addi	a0,00000001

l23030212:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23030222:
	c.lw	s1,0(a5)
	c.lw	a5,68(a5)
	c.beqz	a5,00000000230301E4

l23030228:
	jal	ra,000000002302FD2A
	bne	s0,s3,00000000230301E8

l23030230:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000002
	c.addi16sp	00000020
	c.jr	ra

l23030242:
	jal	ra,0000000023001004
	c.j	00000000230301A8

l23030248:
	lw	a4,s2,+00000028
	c.li	a0,00000002
	c.bnez	a4,0000000023030212

l23030250:
	lbu	a5,s2,+0000005C
	c.addi	a5,FFFFFFFF
	sltu	a5,zero,a5
	addi	a0,a5,+00000002
	c.j	0000000023030212

l23030260:
	c.li	a0,00000004
	c.j	0000000023030212

;; vTaskStartScheduler: 23030264
;;   Called from:
;;     2300125A (in bfl_main)
vTaskStartScheduler proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a2,0000000C
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000004
	c.swsp	ra,0000008C
	c.swsp	zero,00000080
	c.swsp	zero,00000004
	jal	ra,0000000023000FCC
	c.lwsp	tp,00000008
	c.lwsp	s0,000000E4
	c.lwsp	a2,00000084
	lui	a1,00023078
	lui	a0,00023030
	c.li	a4,00000000
	c.li	a3,00000000
	addi	a1,a1,+000002DC
	addi	a0,a0,-0000015A
	jal	ra,000000002302FF48
	c.beqz	a0,00000000230302C2

l23030296:
	jal	ra,0000000023031736
	c.li	a5,00000001
	bne	a0,a5,00000000230302C8

l230302A0:
	csrrci	zero,mstatus,00000008
	lui	a5,0004200E
	c.li	a3,FFFFFFFF
	sw	a3,a5,+00000E5C
	lui	a4,0004200E
	lui	a5,0004200E
	sw	a0,a4,+00000E64
	sw	zero,a5,+00000E68
	jal	ra,0000000023031B92

l230302C2:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l230302C8:
	c.li	a5,FFFFFFFF
	bne	a0,a5,00000000230302C2

l230302CE:
	jal	ra,0000000023001004
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; vTaskSuspendAll: 230302D8
;;   Called from:
;;     2302E6C8 (in xEventGroupWaitBits)
;;     2302E750 (in xEventGroupWaitBits)
;;     2302E7C6 (in xEventGroupSetBits)
;;     2302E85E (in vEventGroupDelete)
;;     2302ECE4 (in xQueueGenericSend)
;;     2302F00C (in xQueueReceive)
;;     2302F158 (in xQueueSemaphoreTake)
;;     2302F83E (in xStreamBufferSend)
;;     2302F9E2 (in xStreamBufferReceive)
;;     23031984 (in prvTimerTask)
;;     23031A84 (in prvTimerTask)
;;     230321A6 (in pvPortMalloc)
;;     230322D8 (in vPortFree)
vTaskSuspendAll proc
	lui	a5,0004200E
	addi	a5,a5,-000001B0
	c.lw	a5,0(a4)
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	c.jr	ra

;; xTaskGetTickCount: 230302E8
;;   Called from:
;;     230005A6 (in get_dts_addr.part.2)
;;     230006B8 (in client_demo.constprop.3)
;;     2300073C (in client_demo.constprop.3)
;;     230028E8 (in mm_cfg_element_keepalive_timestamp_update)
;;     230044B4 (in rxl_cntrl_evt)
;;     23013322 (in coex_wifi_pta_forece_enable)
;;     2301333C (in coex_wifi_pta_forece_enable)
;;     23013358 (in coex_wifi_pta_forece_enable)
;;     2301EF2C (in apm_sta_connect_timeout_ind_handler)
;;     2302398E (in bl_send_cfg_task_req)
;;     230247FC (in tcpip_stack_input)
;;     23024842 (in tcpip_stack_input)
;;     230250BC (in stateConnectedIPNoEnter)
;;     230256A0 (in stateGlobalGuard_scan_beacon)
;;     23025814 (in stateGlobalGuard_scan_beacon)
;;     23025CE4 (in stateDisconnect_enter)
;;     23026158 (in wifi_mgmr_start)
;;     23027CA8 (in sniffer_cb)
;;     23027CBA (in sniffer_cb)
;;     23028058 (in wifi_mgmr_cli_scanlist)
;;     23028FFE (in bl_irq_bottomhalf)
;;     2302900C (in bl_irq_bottomhalf)
;;     2302920A (in wifi_tx)
;;     23029236 (in wifi_tx)
;;     23029EDC (in tc_blfdtdump)
;;     23029F9C (in tc_blfdtdump)
;;     2302A09E (in tc_blfdtdump)
;;     2302A1CC (in tc_fdt_wifi_module)
;;     2302A5D4 (in tc_fdt_wifi_module)
;;     2302A5FC (in tc_fdt_wifi_module)
;;     2302A602 (in tc_fdt_wifi_module)
;;     2302A62E (in tc_fdt_wifi_module)
;;     2302A634 (in tc_fdt_wifi_module)
;;     2302A63A (in tc_fdt_wifi_module)
;;     2302A66E (in tc_fdt_wifi_module)
;;     2302A674 (in tc_fdt_wifi_module)
;;     2302A6A8 (in tc_fdt_wifi_module)
;;     2302A6AE (in tc_fdt_wifi_module)
;;     2302A6D6 (in tc_fdt_wifi_module)
;;     2302A6DC (in tc_fdt_wifi_module)
;;     2302A708 (in tc_fdt_wifi_module)
;;     2302A722 (in tc_fdt_wifi_module)
;;     2302A728 (in tc_fdt_wifi_module)
;;     2302A754 (in tc_fdt_wifi_module)
;;     2302A7E2 (in tc_fdt_wifi_module)
;;     2302A7E8 (in tc_fdt_wifi_module)
;;     2302A876 (in tc_fdt_wifi_module)
;;     2302A87C (in tc_fdt_wifi_module)
;;     2302A90A (in tc_fdt_wifi_module)
;;     2302A910 (in tc_fdt_wifi_module)
;;     2302A98A (in tc_fdt_wifi_module)
;;     2302A990 (in tc_fdt_wifi_module)
;;     2302A9BE (in tc_fdt_wifi_module)
;;     2302B2C8 (in bl_sys_time_update)
;;     2302B30A (in bl_sys_time_get)
;;     2302B35A (in bl_sys_time_sync_state)
;;     2302DD0E (in ef_get_env_blob)
;;     2302DD60 (in ef_get_env_blob)
;;     2302DDC4 (in ef_del_env)
;;     2302DE94 (in ef_set_env_blob)
;;     2302DEE4 (in ef_set_env_blob)
;;     2302DF2A (in ef_set_env_blob)
;;     2302E508 (in psm_test_cmd)
;;     2302E58E (in psm_test_cmd)
;;     2302E5CC (in psm_test_cmd)
;;     2302E5F4 (in psm_test_cmd)
;;     23031988 (in prvTimerTask)
;;     230319D4 (in prvTimerTask)
;;     23031A88 (in prvTimerTask)
;;     23032A1C (in _cb_cmd)
;;     23033000 (in bl_cks_test)
;;     23033006 (in bl_cks_test)
;;     23033080 (in bl_cks_test)
;;     23033086 (in bl_cks_test)
;;     2303308C (in bl_cks_test)
;;     23033092 (in bl_cks_test)
;;     23033098 (in bl_cks_test)
;;     2303309E (in bl_cks_test)
;;     230330A4 (in bl_cks_test)
;;     230330B0 (in bl_cks_test)
;;     230330BC (in bl_cks_test)
;;     2303313C (in bl_cks_test)
;;     23033184 (in bl_cks_test)
;;     2303318A (in bl_cks_test)
;;     23033190 (in bl_cks_test)
;;     23033196 (in bl_cks_test)
;;     2303320E (in bl_cks_test)
;;     23033214 (in bl_cks_test)
;;     2303321A (in bl_cks_test)
;;     23033228 (in bl_cks_test)
;;     23033272 (in bl_cks_test)
;;     230333D8 (in _cb_cmd)
;;     23033520 (in bl_dma_IRQHandler)
;;     23033604 (in bl_dma_irq_register)
;;     230336E6 (in bl_dma_irq_register)
;;     230336F0 (in bl_dma_irq_register)
;;     2303376A (in bl_dma_init)
;;     230337C4 (in bl_dma_init)
;;     230338FC (in bl_dma_test)
;;     23033960 (in _irq_num_check.part.0)
;;     23033AC8 (in bl_irq_register_with_ctx)
;;     23033ACE (in bl_irq_register_with_ctx)
;;     23033BCC (in bl_irq_unregister)
;;     23033E86 (in wait_trng4feed)
;;     23033F52 (in sec_trng_IRQHandler)
;;     230346A6 (in _pka_test_case2)
;;     230346AC (in _pka_test_case2)
;;     230346F6 (in _pka_test_case2)
;;     2303486C (in cmd_gpio_get)
;;     230348FA (in cmd_gpio_get)
;;     2303497C (in cmd_gpio_set)
;;     230349EA (in cmd_gpio_set)
;;     23034A54 (in cmd_gpio_set)
;;     23034AE2 (in cmd_gpio_func)
;;     23034B72 (in cmd_gpio_func)
;;     23034C06 (in cmd_gpio_func)
;;     23034DBE (in Aes_Compare_Data)
;;     23034DC4 (in Aes_Compare_Data)
;;     23034E0C (in Aes_Compare_Data)
;;     230350E4 (in Sec_Eng_AES_Link_Case_CBC_128)
;;     230350EA (in Sec_Eng_AES_Link_Case_CBC_128)
;;     230350F0 (in Sec_Eng_AES_Link_Case_CBC_128)
;;     230350F6 (in Sec_Eng_AES_Link_Case_CBC_128)
;;     2303534A (in Sec_Eng_AES_Link_Case_CTR_128)
;;     23035350 (in Sec_Eng_AES_Link_Case_CTR_128)
;;     23035356 (in Sec_Eng_AES_Link_Case_CTR_128)
;;     2303535C (in Sec_Eng_AES_Link_Case_CTR_128)
;;     23035550 (in bl_sha_mutex_take)
;;     230355CA (in bl_sha_mutex_give)
;;     2303593E (in cmd_wdt_init)
;;     23035988 (in cmd_wdt_init)
;;     23035A26 (in dev_uart_init)
;;     23035AD6 (in dev_uart_init)
;;     23035AEA (in dev_uart_init)
;;     23035B44 (in dev_uart_init)
;;     23035BA4 (in dev_uart_init)
;;     23035C2E (in dev_uart_init)
;;     23035E72 (in vfs_uart_init)
;;     23035ED4 (in vfs_uart_init)
;;     23035FCC (in vfs_uart_init)
;;     23035FD2 (in vfs_uart_init)
;;     2303608C (in vfs_uart_init)
;;     23036092 (in vfs_uart_init)
;;     230360EE (in vfs_uart_init)
;;     23036158 (in vfs_uart_init)
;;     230361A2 (in vfs_uart_init)
;;     230361F2 (in vfs_uart_init)
;;     230362C0 (in vfs_uart_init)
;;     230362C6 (in vfs_uart_init)
;;     23036324 (in vfs_uart_init)
;;     23036452 (in vfs_uart_init)
;;     230364EE (in vfs_uart_init)
;;     23036542 (in vfs_uart_init)
;;     23036554 (in vfs_uart_init)
;;     230365C6 (in vfs_uart_init)
;;     230365CC (in vfs_uart_init)
;;     230365D2 (in vfs_uart_init)
;;     23036748 (in hal_gpio_init_from_dts)
;;     2303674E (in hal_gpio_init_from_dts)
;;     23036884 (in hal_gpio_init_from_dts)
;;     2303688A (in hal_gpio_init_from_dts)
;;     230369E2 (in hal_gpio_init_from_dts)
;;     23036A2C (in hal_gpio_init_from_dts)
;;     23036A7A (in hal_gpio_init_from_dts)
;;     23036A80 (in hal_gpio_init_from_dts)
;;     23036AB2 (in hal_gpio_init_from_dts)
;;     23036AFA (in hal_gpio_init_from_dts)
;;     2303707A (in hal_boot2_init)
;;     230371F6 (in hal_board_cfg)
;;     230371FC (in hal_board_cfg)
;;     230372AC (in hal_board_cfg)
;;     230372B2 (in hal_board_cfg)
;;     23037474 (in hal_board_cfg)
;;     2303747A (in hal_board_cfg)
;;     23037480 (in hal_board_cfg)
;;     23037892 (in hal_board_cfg)
;;     23037920 (in hal_board_cfg)
;;     23037926 (in hal_board_cfg)
;;     2303792C (in hal_board_cfg)
;;     230379C4 (in hal_board_cfg)
;;     230379CA (in hal_board_cfg)
;;     230379D0 (in hal_board_cfg)
;;     23037A14 (in hal_board_cfg)
;;     23037A1A (in hal_board_cfg)
;;     23037A68 (in hal_board_cfg)
;;     23037A6E (in hal_board_cfg)
;;     23037ABC (in hal_board_cfg)
;;     23037AC2 (in hal_board_cfg)
;;     23037B0E (in hal_board_cfg)
;;     23037FDA (in hal_board_cfg)
;;     23037FE0 (in hal_board_cfg)
;;     230380CE (in hal_board_cfg)
;;     23038126 (in hal_board_cfg)
;;     2303812C (in hal_board_cfg)
;;     23038132 (in hal_board_cfg)
;;     230381BA (in hal_board_cfg)
;;     230381F6 (in hal_board_cfg)
;;     23038236 (in hal_board_cfg)
;;     2303827C (in hal_board_cfg)
;;     23038282 (in hal_board_cfg)
;;     2303828A (in hal_board_cfg)
;;     230382D6 (in hal_board_cfg)
;;     230382DC (in hal_board_cfg)
;;     2303832C (in hal_board_cfg)
;;     23038332 (in hal_board_cfg)
;;     23038382 (in hal_board_cfg)
;;     23038388 (in hal_board_cfg)
;;     230383D8 (in hal_board_cfg)
;;     230383DE (in hal_board_cfg)
;;     230383E4 (in hal_board_cfg)
;;     2303865C (in hal_board_cfg)
;;     23038662 (in hal_board_cfg)
;;     23038714 (in hal_board_cfg)
;;     2303874E (in hal_board_cfg)
;;     23038754 (in hal_board_cfg)
;;     2303875A (in hal_board_cfg)
;;     230387D2 (in hal_board_cfg)
;;     230387D8 (in hal_board_cfg)
;;     230387DE (in hal_board_cfg)
;;     23038AEE (in hal_board_cfg)
;;     23038AF4 (in hal_board_cfg)
;;     23038AFA (in hal_board_cfg)
;;     23038B02 (in hal_board_cfg)
;;     23038B8A (in hal_board_cfg)
;;     23038C12 (in hal_board_cfg)
;;     23038C18 (in hal_board_cfg)
;;     23038C6C (in hal_board_cfg)
;;     23038CF4 (in hal_board_cfg)
;;     23038D7C (in hal_board_cfg)
;;     23038D82 (in hal_board_cfg)
;;     23038D88 (in hal_board_cfg)
;;     23038D8E (in hal_board_cfg)
;;     23038E88 (in bl_tsen_adc_get)
;;     23038EB8 (in bl_tsen_adc_get)
;;     230393FE (in bl_flash_config_update)
;;     23039404 (in bl_flash_config_update)
;;     2303940A (in bl_flash_config_update)
;;     23039410 (in bl_flash_config_update)
;;     23039416 (in bl_flash_config_update)
;;     2303941C (in bl_flash_config_update)
;;     23039422 (in bl_flash_config_update)
;;     23039DEE (in _cb_led_trigger)
;;     23039E74 (in _led_bloop_msg)
;;     23039F94 (in _led_bloop_evt)
;;     2303A02C (in loopset_led_trigger)
;;     2303A1A2 (in sys_arch_mbox_fetch)
;;     2303A1C2 (in sys_arch_mbox_fetch)
;;     2303A298 (in sys_arch_sem_wait)
;;     2303A2B2 (in sys_arch_sem_wait)
;;     2303A3BA (in sys_now)
;;     230481CC (in TCP_Server)
;;     2304824E (in TCP_Server)
;;     23048312 (in TCP_Server)
;;     2304849A (in TCP_Server)
;;     23048A92 (in iperf_client_udp)
;;     23048ACA (in iperf_client_udp)
;;     23048D48 (in iperf_server)
;;     23048D68 (in iperf_server)
;;     23048F66 (in iperf_client_tcp)
;;     23048F7C (in iperf_client_tcp)
;;     230499BA (in file_info)
;;     230499C0 (in file_info)
;;     23049A10 (in file_info)
;;     23049C12 (in dirent_file)
;;     23049C44 (in dirent_file)
;;     23049CF2 (in dirent_file)
;;     23049D3C (in dirent_file)
;;     23049D94 (in dirent_file)
;;     23049E1E (in romfs_opendir)
;;     23049EEC (in romfs_stat)
;;     23049F62 (in romfs_stat)
;;     23049FC8 (in romfs_open)
;;     2304A04E (in romfs_open)
;;     2304A09E (in romfs_open)
;;     2304A136 (in romfs_open)
;;     2304A144 (in romfs_open)
;;     2304A1BE (in romfs_register)
;;     2304A20A (in romfs_register)
;;     2304A254 (in romfs_register)
;;     2304A49C (in sntp_recv)
;;     2304A766 (in sntp_get_time)
;;     2304B8B2 (in log_buf_out)
;;     2304B904 (in log_buf_out)
;;     2304EACA (in has_timer_expired)
;;     2304EB0C (in countdown_ms)
;;     2304EB2A (in left_ms)
;;     2305521A (in bl_mtd_write)
;;     23055328 (in bloop_timer_configure)
;;     2305536A (in bloop_timer_repeat_reconfigure)
;;     2305551A (in bloop_run)
;;     23055622 (in bloop_run)
;;     230556FA (in bloop_run)
;;     23055744 (in bloop_run)
;;     23055790 (in bloop_status_dump)
xTaskGetTickCount proc
	lui	a5,0004200E
	lw	a0,a5,-00000198
	c.jr	ra

;; xTaskGetTickCount2: 230302F2
;;   Called from:
;;     2304D448 (in aos_now_ms)
xTaskGetTickCount2 proc
	lui	a4,0004200E
	lw	a4,a4,-00000198
	lui	a5,0004200E
	lw	a5,a5,-000001A0
	c.sw	a0,0(a4)
	c.li	a0,00000001
	c.sw	a1,0(a5)
	c.jr	ra
