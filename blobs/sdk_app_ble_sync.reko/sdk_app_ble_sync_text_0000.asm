;;; Segment .text (23000300)

;; _dump_partition: 23000300
;;   Called from:
;;     230007EC (in hal_boot2_init)
_dump_partition proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,0004200E
	c.swsp	s0,00000014
	lui	a0,0002306E
	addi	s0,s1,-0000022C
	addi	a1,s0,+00000004
	addi	a0,a0,+00000390
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
	jal	ra,00000000230018FA
	c.lw	s0,4(a1)
	lui	a0,0002306E
	addi	a0,a0,+000003B4
	jal	ra,00000000230018FA
	lhu	a1,s0,+00000008
	lui	a0,0002306E
	addi	a0,a0,+000003C8
	jal	ra,00000000230018FA
	lhu	a1,s0,+0000000A
	lui	a0,0002306E
	addi	a0,a0,+000003DC
	jal	ra,00000000230018FA
	c.lw	s0,12(a1)
	lui	a0,0002306E
	addi	a0,a0,+000003EC
	jal	ra,00000000230018FA
	c.lw	s0,16(a1)
	lui	a0,0002306E
	addi	a0,a0,+000003F8
	jal	ra,00000000230018FA
	lui	a0,0002306E
	addi	a0,a0,+00000408
	addi	s3,s1,-0000022C
	jal	ra,00000000230018FA
	c.li	s2,00000000
	addi	s1,s1,-0000022C
	lui	s5,0002306E
	lui	s6,0002306E
	lui	s7,0002306E
	lui	s8,0002306E
	lui	s9,0002306E
	lui	s4,0002306E
	lui	s10,0002306E

l230003AE:
	lhu	a5,s1,+0000000A
	addi	s0,s3,+00000024
	blt	s2,a5,00000000230003D6

l230003BA:
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

l230003D6:
	c.mv	a1,s2
	addi	a0,s5,+00000468
	jal	ra,00000000230018FA
	lbu	a1,s0,-00000010
	addi	a0,s6,+00000470
	c.addi	s2,00000001
	jal	ra,00000000230018FA
	lbu	a1,s0,-0000000F
	addi	a0,s7,+0000047C
	jal	ra,00000000230018FA
	lbu	a1,s0,-0000000E
	addi	a0,s8,+00000478
	jal	ra,00000000230018FA
	addi	a1,s3,+00000017
	addi	a0,s9,+00000484
	jal	ra,00000000230018FA
	lw	a1,s0,-00000004
	addi	a0,s4,+00000490
	jal	ra,00000000230018FA
	lw	a1,s3,+00000024
	addi	a0,s4,+00000490
	c.mv	s3,s0
	jal	ra,00000000230018FA
	c.lw	s0,4(a1)
	addi	a0,s4,+00000490
	jal	ra,00000000230018FA
	c.lw	s0,8(a1)
	addi	a0,s4,+00000490
	jal	ra,00000000230018FA
	c.lw	s0,16(a1)
	addi	a0,s10,+00000498
	jal	ra,00000000230018FA
	c.j	00000000230003AE

;; hal_boot2_get_flash_addr: 2300044C
;;   Called from:
;;     23000042 (in bl602_start)
hal_boot2_get_flash_addr proc
	lui	a5,0004200E
	lhu	a5,a5,-00000222
	addi	a0,zero,+00000024
	add	a5,a5,a0
	lui	a0,0004204A
	addi	a0,a0,-000003E8
	c.add	a0,a5
	c.jr	ra

;; hal_boot2_partition_bus_addr: 23000468
;;   Called from:
;;     230005F2 (in hal_boot2_partition_bus_addr_active)
;;     2300062C (in hal_boot2_partition_bus_addr_inactive)
hal_boot2_partition_bus_addr proc
	lui	a6,0004200E
	addi	a7,a6,-0000022C
	lw	t1,a7,+00000004
	lui	a7,00054504
	addi	a7,a7,+00000642
	bne	t1,a7,00000000230005D8

l23000480:
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
	addi	s1,a6,-0000022C
	c.mv	s9,a5
	c.mv	s7,a4
	c.mv	s8,a3
	c.mv	s2,a2
	c.mv	s3,a1
	c.mv	s5,a0
	addi	s6,a6,-0000022C
	addi	s4,a6,-0000022C
	c.li	s0,00000000

l230004B2:
	lhu	a5,s1,+0000000A
	bge	s0,a5,00000000230004CA

l230004BA:
	addi	a0,s4,+00000017
	c.mv	a1,s5
	jal	ra,000000002306D404
	addi	s4,s4,+00000024
	c.bnez	a0,00000000230004EE

l230004CA:
	lhu	a5,s1,+0000000A
	c.li	a0,FFFFFFFE
	bne	s0,a5,00000000230004F2

l230004D4:
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

l230004EE:
	c.addi	s0,00000001
	c.j	00000000230004B2

l230004F2:
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
	lui	s7,0002306E

l23000526:
	lhu	a5,s1,+0000000A
	bge	s0,a5,0000000023000540

l2300052E:
	addi	a0,s6,+00000017
	addi	a1,s7,+00000508
	jal	ra,000000002306D404
	addi	s6,s6,+00000024
	c.bnez	a0,00000000230005D4

l23000540:
	lhu	a5,s1,+0000000A
	addi	a0,zero,-00000048
	beq	s0,a5,00000000230004D4

l2300054C:
	beq	s5,zero,0000000023000568

l23000550:
	addi	a5,zero,+00000024
	add	a5,s0,a5
	c.li	a0,FFFFFFEA
	c.add	a5,s1
	c.lw	a5,32(a4)
	bltu	s5,a4,00000000230004D4

l23000562:
	c.lw	a5,36(a5)
	bltu	s5,a5,00000000230004D4

l23000568:
	beq	s4,zero,0000000023000584

l2300056C:
	addi	a5,zero,+00000024
	add	a5,s0,a5
	c.li	a0,FFFFFFEA
	c.add	a5,s1
	c.lw	a5,32(a4)
	bltu	s4,a4,00000000230004D4

l2300057E:
	c.lw	a5,36(a5)
	bltu	s4,a5,00000000230004D4

l23000584:
	addi	a4,zero,+00000024
	add	a4,s0,a4
	c.li	a3,00000001
	c.li	a0,FFFFFFF2
	c.add	a4,s1
	lbu	a5,a4,+00000016
	bltu	a3,a5,00000000230004D4

l2300059A:
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
	c.j	00000000230004D4

l230005D4:
	c.addi	s0,00000001
	c.j	0000000023000526

l230005D8:
	c.li	a0,FFFFFFFB
	c.jr	ra

;; hal_boot2_partition_bus_addr_active: 230005DC
;;   Called from:
;;     230382B0 (in hal_board_cfg)
;;     230676D6 (in bl_mtd_open)
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
	c.jal	0000000023000468
	c.bnez	a0,0000000023000604

l230005F6:
	c.lwsp	t3,000000E4
	c.beqz	a5,000000002300060E

l230005FA:
	c.lwsp	a6,000000C4

l230005FC:
	c.sw	s1,0(a4)
	c.beqz	a5,0000000023000612

l23000600:
	c.lwsp	s8,000000E4

l23000602:
	c.sw	s0,0(a5)

l23000604:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l2300060E:
	c.lwsp	a2,000000C4
	c.j	00000000230005FC

l23000612:
	c.lwsp	s4,000000E4
	c.j	0000000023000602

;; hal_boot2_partition_bus_addr_inactive: 23000616
;;   Called from:
;;     2306766C (in bl_mtd_open)
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
	c.jal	0000000023000468
	c.bnez	a0,000000002300063E

l23000630:
	c.lwsp	t3,000000E4
	c.beqz	a5,0000000023000648

l23000634:
	c.lwsp	a2,000000C4

l23000636:
	c.sw	s1,0(a4)
	c.beqz	a5,000000002300064C

l2300063A:
	c.lwsp	s4,000000E4

l2300063C:
	c.sw	s0,0(a5)

l2300063E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l23000648:
	c.lwsp	a6,000000C4
	c.j	0000000023000636

l2300064C:
	c.lwsp	s8,000000E4
	c.j	000000002300063C

;; hal_boot2_partition_addr: 23000650
;;   Called from:
;;     23000722 (in hal_boot2_partition_addr_active)
;;     2300075C (in hal_boot2_partition_addr_inactive)
hal_boot2_partition_addr proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,0004200E
	addi	a6,s1,-0000022C
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
	bne	a7,a6,0000000023000708

l2300067E:
	addi	s2,s1,-0000022C
	c.mv	s3,a5
	c.mv	s4,a4
	c.mv	s5,a3
	c.mv	s6,a2
	c.mv	s7,a1
	c.mv	s8,a0
	addi	s1,s1,-0000022C
	c.li	s0,00000000

l23000694:
	lhu	a5,s2,+0000000A
	bge	s0,a5,00000000230006AC

l2300069C:
	addi	a0,s1,+00000017
	c.mv	a1,s8
	jal	ra,000000002306D404
	addi	s1,s1,+00000024
	c.bnez	a0,00000000230006CE

l230006AC:
	lhu	a5,s2,+0000000A
	c.li	a0,FFFFFFFE
	bne	s0,a5,00000000230006D2

l230006B6:
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

l230006CE:
	c.addi	s0,00000001
	c.j	0000000023000694

l230006D2:
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
	c.j	00000000230006B6

l23000708:
	c.li	a0,FFFFFFFB
	c.j	00000000230006B6

;; hal_boot2_partition_addr_active: 2300070C
;;   Called from:
;;     230381F6 (in hal_board_cfg)
;;     23067708 (in bl_mtd_open)
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
	c.jal	0000000023000650
	c.bnez	a0,0000000023000734

l23000726:
	c.lwsp	t3,000000E4
	c.beqz	a5,000000002300073E

l2300072A:
	c.lwsp	a6,000000C4

l2300072C:
	c.sw	s1,0(a4)
	c.beqz	a5,0000000023000742

l23000730:
	c.lwsp	s8,000000E4

l23000732:
	c.sw	s0,0(a5)

l23000734:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l2300073E:
	c.lwsp	a2,000000C4
	c.j	000000002300072C

l23000742:
	c.lwsp	s4,000000E4
	c.j	0000000023000732

;; hal_boot2_partition_addr_inactive: 23000746
;;   Called from:
;;     2306769E (in bl_mtd_open)
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
	c.jal	0000000023000650
	c.bnez	a0,000000002300076E

l23000760:
	c.lwsp	t3,000000E4
	c.beqz	a5,0000000023000778

l23000764:
	c.lwsp	a2,000000C4

l23000766:
	c.sw	s1,0(a4)
	c.beqz	a5,000000002300077C

l2300076A:
	c.lwsp	s4,000000E4

l2300076C:
	c.sw	s0,0(a5)

l2300076E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l23000778:
	c.lwsp	a6,000000C4
	c.j	0000000023000766

l2300077C:
	c.lwsp	s8,000000E4
	c.j	000000002300076C

;; hal_boot2_init: 23000780
;;   Called from:
;;     23001654 (in bfl_main)
hal_boot2_init proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004204A
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lbu	a4,a5,-00000400
	lui	a5,0004200E
	sb	a4,a5,+00000DD4
	lui	a4,00042017
	lbu	a3,a4,-0000006C
	c.li	a4,00000002
	bltu	a4,a3,00000000230007EC

l230007A4:
	addi	s0,a5,-0000022C
	lui	a5,00042017
	lbu	a5,a5,-0000006B
	bltu	a4,a5,00000000230007EC

l230007B4:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230007FA

l230007BE:
	jal	ra,0000000023033B12

l230007C2:
	lbu	a5,s0,+00000000
	lui	a3,0002306E
	lui	a2,0002306E
	c.mv	a1,a0
	lui	a0,0002306E
	addi	a6,zero,+00000254
	addi	a4,zero,+00000114
	addi	a3,a3,+000004A0
	addi	a2,a2,+000004AC
	addi	a0,a0,+000004BC
	jal	ra,00000000230018FA

l230007EC:
	c.jal	0000000023000300
	c.jal	0000000023000894
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230007FA:
	jal	ra,0000000023033AF0
	c.j	00000000230007C2

;; bl_flash_erase: 23000800
;;   Called from:
;;     230677F0 (in bl_mtd_erase)
bl_flash_erase proc
	lui	a5,0004200E
	addi	a5,a5,+0000002C
	lbu	a4,a5,+00000011
	c.beqz	a4,000000002300082C

l2300080E:
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

l2300082C:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; bl_flash_write: 23000830
;;   Called from:
;;     23067886 (in bl_mtd_write)
;;     2306789A (in bl_mtd_write)
bl_flash_write proc
	lui	a5,0004200E
	addi	a5,a5,+0000002C
	lbu	a4,a5,+00000011
	c.beqz	a4,000000002300085E

l2300083E:
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

l2300085E:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; bl_flash_read: 23000862
;;   Called from:
;;     230678AA (in bl_mtd_read)
bl_flash_read proc
	lui	a5,0004200E
	addi	a5,a5,+0000002C
	lbu	a4,a5,+00000011
	c.beqz	a4,0000000023000890

l23000870:
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

l23000890:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; bl_flash_config_update: 23000894
;;   Called from:
;;     230007EE (in hal_boot2_init)
bl_flash_config_update proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	lui	s3,00042017
	lbu	a4,s3,-0000006C
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.li	a5,00000002
	bltu	a5,a4,00000000230008BE

l230008B2:
	lui	s4,00042017
	lbu	a4,s4,-0000006A
	bgeu	a5,a4,00000000230008D2

l230008BE:
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

l230008D2:
	lui	s2,0004200E
	lw	a5,s2,+00000244
	beq	a5,zero,0000000023000A78

l230008DE:
	jal	ra,0000000023033B12

l230008E2:
	lui	s5,0004200E
	lw	a6,s5,+0000002C
	c.mv	a1,a0
	lui	a5,0004204A
	lui	s1,0002306E
	lui	s0,0002306E
	lui	a0,0002306E
	addi	a5,a5,-000003E8
	addi	a4,zero,+00000060
	addi	a3,s1,+00000528
	addi	a2,s0,+000004AC
	addi	a0,a0,+00000534
	jal	ra,00000000230018FA
	lbu	a4,s3,-0000006C
	c.li	a5,00000002
	addi	s5,s5,+0000002C
	bltu	a5,a4,00000000230008BE

l23000922:
	lbu	a4,s4,-0000006A
	bltu	a5,a4,00000000230008BE

l2300092A:
	lw	a5,s2,+00000244
	beq	a5,zero,0000000023000A7E

l23000932:
	jal	ra,0000000023033B12

l23000936:
	lbu	a5,s5,+00000011
	c.mv	a1,a0
	lui	a0,0002306E
	addi	a4,zero,+00000061
	addi	a3,s1,+00000528
	addi	a2,s0,+000004AC
	addi	a0,a0,+00000580
	jal	ra,00000000230018FA
	lbu	a4,s3,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,00000000230008BE

l2300095E:
	lbu	a4,s4,-0000006A
	bltu	a5,a4,00000000230008BE

l23000966:
	lw	a5,s2,+00000244
	beq	a5,zero,0000000023000A84

l2300096E:
	jal	ra,0000000023033B12

l23000972:
	lbu	a5,s5,+00000006
	c.mv	a1,a0
	lui	a0,0002306E
	addi	a4,zero,+00000062
	addi	a3,s1,+00000528
	addi	a2,s0,+000004AC
	addi	a0,a0,+000005A0
	jal	ra,00000000230018FA
	lbu	a4,s3,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,00000000230008BE

l2300099A:
	lbu	a4,s4,-0000006A
	bltu	a5,a4,00000000230008BE

l230009A2:
	lw	a5,s2,+00000244
	beq	a5,zero,0000000023000A8A

l230009AA:
	jal	ra,0000000023033B12

l230009AE:
	lbu	a5,s5,+00000007
	c.mv	a1,a0
	lui	a0,0002306E
	addi	a4,zero,+00000063
	addi	a3,s1,+00000528
	addi	a2,s0,+000004AC
	addi	a0,a0,+000005C4
	jal	ra,00000000230018FA
	lbu	a4,s3,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,00000000230008BE

l230009D6:
	lbu	a4,s4,-0000006A
	bltu	a5,a4,00000000230008BE

l230009DE:
	lw	a5,s2,+00000244
	c.beqz	a5,0000000023000A90

l230009E4:
	jal	ra,0000000023033B12

l230009E8:
	lbu	a5,s5,+00000010
	c.mv	a1,a0
	lui	a0,0002306E
	addi	a4,zero,+00000064
	addi	a3,s1,+00000528
	addi	a2,s0,+000004AC
	addi	a0,a0,+000005EC
	jal	ra,00000000230018FA
	lbu	a4,s3,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,00000000230008BE

l23000A10:
	lbu	a4,s4,-0000006A
	bltu	a5,a4,00000000230008BE

l23000A18:
	lw	a5,s2,+00000244
	c.beqz	a5,0000000023000A96

l23000A1E:
	jal	ra,0000000023033B12

l23000A22:
	lhu	a5,s5,+00000012
	c.mv	a1,a0
	lui	a0,0002306E
	addi	a4,zero,+00000065
	addi	a3,s1,+00000528
	addi	a2,s0,+000004AC
	addi	a0,a0,+00000618
	jal	ra,00000000230018FA
	lbu	a4,s3,-0000006C
	c.li	a5,00000002
	bltu	a5,a4,00000000230008BE

l23000A4A:
	lbu	a4,s4,-0000006A
	bltu	a5,a4,00000000230008BE

l23000A52:
	lw	a5,s2,+00000244
	c.beqz	a5,0000000023000A9C

l23000A58:
	jal	ra,0000000023033B12

l23000A5C:
	c.mv	a1,a0
	lui	a0,0002306E
	addi	a4,zero,+00000066
	addi	a3,s1,+00000528
	addi	a2,s0,+000004AC
	addi	a0,a0,+00000640
	jal	ra,00000000230018FA
	c.j	00000000230008BE

l23000A78:
	jal	ra,0000000023033AF0
	c.j	00000000230008E2

l23000A7E:
	jal	ra,0000000023033AF0
	c.j	0000000023000936

l23000A84:
	jal	ra,0000000023033AF0
	c.j	0000000023000972

l23000A8A:
	jal	ra,0000000023033AF0
	c.j	00000000230009AE

l23000A90:
	jal	ra,0000000023033AF0
	c.j	00000000230009E8

l23000A96:
	jal	ra,0000000023033AF0
	c.j	0000000023000A22

l23000A9C:
	jal	ra,0000000023033AF0
	c.j	0000000023000A5C

;; cmd_blsync_ble_stop: 23000AA2
cmd_blsync_ble_stop proc
	c.li	a2,00000000
	c.li	a1,00000002
	c.li	a0,00000005
	jal	zero,0000000023002BF6

;; stack_wifi: 23000AAC
;;   Called from:
;;     23000AE8 (in cmd_blsync_ble_start)
;;     23000B2E (in app_delayed_action_wifi)
stack_wifi proc
	lui	a5,0004200E
	addi	a5,a5,+00000088
	lbu	a3,a5,+00000000
	c.li	a4,00000001
	bne	a3,a4,0000000023000ACA

l23000ABE:
	lui	a0,0002306F
	addi	a0,a0,-00000198
	jal	zero,0000000023003A8A

l23000ACA:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	sb	a4,a5,+00000000
	jal	ra,0000000023039F70
	c.lwsp	a2,00000020
	c.li	a2,00000000
	c.li	a1,00000001
	c.li	a0,00000002
	c.addi	sp,00000010
	jal	zero,0000000023002BF6

;; cmd_blsync_ble_start: 23000AE4
cmd_blsync_ble_start proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.jal	0000000023000AAC
	addi	a0,zero,+000003E8
	jal	ra,0000000023033E10
	jal	ra,00000000230017B2
	addi	a0,zero,+000003E8
	jal	ra,0000000023033E10
	c.lwsp	a2,00000020
	c.li	a2,00000000
	c.li	a1,00000001
	c.li	a0,00000005
	c.addi	sp,00000010
	jal	zero,0000000023002BF6

;; app_delayed_action_ble: 23000B0C
app_delayed_action_ble proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230017B2
	c.lwsp	a2,00000020
	lui	a1,00023001
	c.li	a2,00000000
	addi	a1,a1,-000004D6
	addi	a0,zero,+000003E8
	c.addi	sp,00000010
	jal	zero,00000000230022FA

;; app_delayed_action_wifi: 23000B2A
app_delayed_action_wifi proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.jal	0000000023000AAC
	c.lwsp	a2,00000020
	lui	a1,00023001
	c.li	a2,00000000
	addi	a1,a1,-000004BA
	addi	a0,zero,+000003E8
	c.addi	sp,00000010
	jal	zero,00000000230022FA

;; app_delayed_action_bleadv: 23000B46
app_delayed_action_bleadv proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0002306F
	addi	a0,s0,-0000056C
	c.swsp	ra,00000084
	jal	ra,000000002306D630
	c.mv	a1,a0
	addi	a0,s0,-0000056C
	jal	ra,00000000230304EC
	lui	s0,0002306F
	addi	a0,s0,-00000560
	jal	ra,000000002306D630
	c.mv	a1,a0
	addi	a0,s0,-00000560
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230304EC

;; scan_complete_cb: 23000B7E
scan_complete_cb proc
	lui	a2,00023001
	c.mv	a1,a0
	addi	a2,a2,-00000472
	c.li	a0,00000000
	jal	zero,00000000230076D2

;; scan_item_cb: 23000B8E
scan_item_cb proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	ra,0000009C
	lb	a5,a2,+00000030
	lhu	a4,a2,+0000002E
	c.mv	s0,a2
	sb	a5,sp,+0000002C
	c.lw	a2,36(a5)
	c.mv	s1,a1
	addi	a2,zero,+00000020
	c.mv	a1,s0
	c.mv	a0,sp
	sh	a4,sp,+0000002A
	c.swsp	a5,00000010
	jal	ra,000000002306CF80
	c.li	a2,00000006
	addi	a1,s0,+00000028
	c.addi4spn	a0,00000024
	jal	ra,000000002306CF80
	c.beqz	s1,0000000023000BCC

l23000BC8:
	c.mv	a0,sp
	c.jalr	s1

l23000BCC:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.addi16sp	00000040
	c.jr	ra

;; wifiprov_wifi_state_get: 23000BD6
wifiprov_wifi_state_get proc
	c.addi16sp	FFFFFED0
	sw	s0,sp,+00000128
	addi	a2,zero,+00000058
	c.mv	s0,a0
	c.li	a1,00000000
	c.addi4spn	a0,00000018
	sw	ra,sp,+0000012C
	jal	ra,000000002306D1BC
	addi	a2,zero,+000000AE
	c.li	a1,00000000
	c.addi4spn	a0,00000070
	jal	ra,000000002306D1BC
	c.addi4spn	a0,00000008
	jal	ra,0000000023007612
	c.addi4spn	a2,00000014
	c.addi4spn	a1,00000010
	c.addi4spn	a0,0000000C
	jal	ra,00000000230071D8
	c.addi4spn	a0,00000070
	jal	ra,00000000230072C6
	c.lwsp	s0,000000E4
	c.addi4spn	a0,0000000C
	sb	a5,sp,+0000006F
	jal	ra,000000002303D99C
	c.mv	a1,a0
	c.addi4spn	a0,00000018
	jal	ra,000000002306D580
	c.addi4spn	a0,00000014
	jal	ra,000000002303D99C
	c.mv	a1,a0
	c.addi4spn	a0,00000038
	jal	ra,000000002306D580
	c.addi4spn	a0,00000010
	jal	ra,000000002303D99C
	c.mv	a1,a0
	c.addi4spn	a0,00000028
	jal	ra,000000002306D580
	addi	a2,zero,+00000020
	addi	a1,sp,+00000073
	c.addi4spn	a0,00000048
	jal	ra,000000002306CF80
	c.li	a2,00000006
	c.addi4spn	a1,00000114
	addi	a0,sp,+00000069
	jal	ra,000000002306CF80
	lui	a0,0002306F
	c.addi4spn	a1,00000018
	addi	a0,a0,-000000D8
	sb	zero,sp,+00000068
	jal	ra,0000000023003AC6
	lui	a0,0002306F
	c.addi4spn	a1,00000028
	addi	a0,a0,-000000CC
	jal	ra,0000000023003AC6
	lui	a0,0002306F
	c.addi4spn	a1,00000038
	addi	a0,a0,-000000C0
	jal	ra,0000000023003AC6
	c.beqz	s0,0000000023000C8E

l23000C8A:
	c.addi4spn	a0,00000018
	c.jalr	s0

l23000C8E:
	lw	ra,sp,+0000012C
	lw	s0,sp,+00000128
	c.addi16sp	00000130
	c.jr	ra

;; char_to_hex: 23000C9A
;;   Called from:
;;     23001006 (in _connect_wifi)
;;     2300103A (in _connect_wifi)
;;     23001054 (in _connect_wifi)
;;     2300105E (in _connect_wifi)
char_to_hex proc
	c.mv	a5,a0
	addi	a0,a0,-00000030
	andi	a0,a0,+000000FF
	c.li	a4,00000009
	bgeu	a4,a0,0000000023000CC0

l23000CAA:
	addi	a4,a5,-00000061
	andi	a4,a4,+000000FF
	c.li	a3,00000005
	bltu	a3,a4,0000000023000CC2

l23000CB8:
	addi	a5,a5,-00000057

l23000CBC:
	andi	a0,a5,+000000FF

l23000CC0:
	c.jr	ra

l23000CC2:
	addi	a4,a5,-00000041
	andi	a4,a4,+000000FF
	c.li	a0,00000000
	bltu	a3,a4,0000000023000CC0

l23000CD0:
	addi	a5,a5,-00000037
	c.j	0000000023000CBC

;; _connect_wifi: 23000CD6
;;   Called from:
;;     230010E2 (in event_cb_wifi_event)
_connect_wifi proc
	c.addi16sp	FFFFFE80
	sw	s5,sp,+00000164
	lui	s5,0004200E
	sw	ra,sp,+0000017C
	sw	s0,sp,+00000178
	sw	s1,sp,+00000174
	sw	s2,sp,+00000170
	addi	s0,s5,+0000008C
	sw	s3,sp,+0000016C
	sw	s4,sp,+00000168
	sw	s6,sp,+00000160
	sw	s7,sp,+0000015C
	sw	s8,sp,+00000158
	sw	s9,sp,+00000154
	jal	ra,00000000230070CA
	c.sw	s0,0(a0)
	jal	ra,0000000023002888
	c.lw	s0,0(a4)
	c.mv	a2,a0
	c.addi4spn	s1,00000084
	lui	a0,0002306E
	c.mv	a5,s1
	c.mv	a3,a1
	addi	a7,sp,+000000C8
	addi	a6,sp,+00000060
	addi	a0,a0,+000006F8
	jal	ra,0000000023003AC6
	addi	a2,zero,+00000042
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002306D1BC
	addi	a2,zero,+00000021
	c.li	a1,00000000
	c.addi4spn	a0,00000060
	jal	ra,000000002306D1BC
	addi	a2,zero,+00000042
	c.li	a1,00000000
	c.addi4spn	a0,000000C8
	jal	ra,000000002306D1BC
	addi	s2,sp,+00000040
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,000000002306D1BC
	c.li	a2,00000006
	c.li	a1,00000000
	c.addi4spn	a0,0000002C
	jal	ra,000000002306D1BC
	c.li	a2,0000000A
	c.li	a1,00000000
	c.addi4spn	a0,00000034
	jal	ra,000000002306D1BC
	addi	a2,zero,+00000042
	c.li	a1,00000000
	c.addi4spn	a0,0000010C
	jal	ra,000000002306D1BC
	lui	a0,0002306E
	c.li	a3,00000000
	addi	a2,zero,+00000041
	c.addi4spn	a1,0000010C
	addi	a0,a0,+0000075C
	jal	ra,0000000023031846
	lbu	a5,sp,+0000010C
	beq	a5,zero,0000000023000F5C

l23000DA4:
	addi	a2,zero,+00000020
	c.addi4spn	a1,0000010C
	c.addi4spn	a0,00000060
	jal	ra,000000002306D7AC
	addi	a2,zero,+00000042
	c.li	a1,00000000
	c.addi4spn	a0,0000010C
	jal	ra,000000002306D1BC
	lui	a0,0002306E
	c.li	a3,00000000
	addi	a2,zero,+00000041
	c.addi4spn	a1,0000010C
	addi	a0,a0,+0000076C
	jal	ra,0000000023031846
	lbu	a5,sp,+0000010C
	addi	s5,s5,+0000008C
	c.beqz	a5,0000000023000DE6

l23000DDA:
	addi	a2,zero,+00000041
	c.addi4spn	a1,0000010C
	c.addi4spn	a0,000000C8
	jal	ra,000000002306D7AC

l23000DE6:
	addi	a2,zero,+00000042
	c.li	a1,00000000
	c.addi4spn	a0,0000010C
	jal	ra,000000002306D1BC
	lui	s0,0002306F
	c.li	a3,00000000
	addi	a2,zero,+00000041
	c.addi4spn	a1,0000010C
	addi	a0,s0,-0000077C
	jal	ra,0000000023031846
	lbu	a5,sp,+0000010C
	c.beqz	a5,0000000023000E18

l23000E0C:
	addi	a2,zero,+00000041
	c.addi4spn	a1,0000010C
	c.mv	a0,s1
	jal	ra,000000002306D7AC

l23000E18:
	lbu	a5,sp,+00000084
	c.bnez	a5,0000000023000E5E

l23000E1E:
	jal	ra,0000000023002888
	c.mv	a2,a0
	lui	a0,0002306F
	c.mv	a3,a1
	addi	a0,a0,-00000770
	jal	ra,0000000023003AC6
	lui	a0,0002306F
	addi	a0,a0,-00000758
	jal	ra,0000000023003A8A
	c.addi4spn	a0,00000060
	jal	ra,000000002306D630
	c.mv	a2,a0
	c.mv	a3,s1
	c.addi4spn	a1,00000060
	c.addi4spn	a0,000000C8
	jal	ra,000000002300707A
	c.mv	a1,s1
	addi	a0,s0,-0000077C
	jal	ra,0000000023031AD2
	jal	ra,0000000023031AF2

l23000E5E:
	addi	a2,zero,+00000042
	c.li	a1,00000000
	c.addi4spn	a0,0000010C
	jal	ra,000000002306D1BC
	lui	a0,0002306F
	c.li	a3,00000000
	addi	a2,zero,+00000041
	c.addi4spn	a1,0000010C
	addi	a0,a0,-00000740
	jal	ra,0000000023031846
	lbu	a5,sp,+0000010C
	bne	a5,zero,0000000023000FD4

l23000E86:
	c.li	s3,00000000
	c.li	s8,00000000

l23000E8A:
	addi	a2,zero,+00000042
	c.li	a1,00000000
	c.addi4spn	a0,0000010C
	jal	ra,000000002306D1BC
	lui	a0,0002306F
	c.li	a3,00000000
	addi	a2,zero,+00000041
	c.addi4spn	a1,0000010C
	addi	a0,a0,-00000714
	jal	ra,0000000023031846
	lbu	a5,sp,+0000010C
	c.beqz	a5,0000000023000F0E

l23000EB0:
	c.li	a2,0000001F
	c.addi4spn	a1,0000010C
	c.mv	a0,s2
	jal	ra,000000002306D7AC
	lui	a0,0002306F
	c.mv	a1,s2
	addi	a0,a0,-00000704
	jal	ra,0000000023003AC6
	c.mv	a0,s2
	jal	ra,000000002306D630
	andi	a5,a0,+00000001
	c.mv	s0,a0
	c.beqz	a5,0000000023000EE0

l23000ED6:
	c.li	a5,00000002
	or	a5,a0,a5
	sub	s0,a0,a5

l23000EE0:
	c.beqz	s0,0000000023000EEA

l23000EE2:
	c.mv	s7,s2
	c.li	s6,00000000

l23000EE6:
	blt	s6,s0,000000002300104E

l23000EEA:
	lbu	a6,sp,+00000031
	lbu	a5,sp,+00000030
	lbu	a4,sp,+0000002F
	lbu	a3,sp,+0000002E
	lbu	a2,sp,+0000002D
	lbu	a1,sp,+0000002C
	lui	a0,0002306F
	addi	a0,a0,-000006E8
	jal	ra,0000000023003AC6

l23000F0E:
	jal	ra,0000000023002888
	c.swsp	a0,0000000C
	c.addi4spn	a0,00000060
	c.swsp	a1,0000008C
	jal	ra,000000002306D630
	c.swsp	a0,00000088
	c.addi4spn	a0,000000C8
	jal	ra,000000002306D630
	c.lwsp	s4,000000E4
	c.lwsp	s8,00000084
	c.lwsp	t3,000000A4
	c.mv	a7,a0
	lui	a0,0002306F
	addi	a6,sp,+000000C8
	c.addi4spn	a4,00000060
	c.swsp	s3,00000084
	c.swsp	s8,00000004
	c.swsp	s2,00000080
	c.swsp	s1,00000000
	addi	a0,a0,-000006C0
	jal	ra,0000000023003AC6
	lw	a0,s5,+00000000
	c.mv	a6,s3
	c.mv	a5,s8
	c.addi4spn	a4,0000002C
	c.mv	a3,s1
	c.addi4spn	a2,000000C8
	c.addi4spn	a1,00000060
	jal	ra,000000002300741E
	c.j	0000000023000FA4

l23000F5C:
	lui	a0,0002306E
	addi	a0,a0,+00000778
	jal	ra,0000000023003A8A
	lui	a0,0002306E
	addi	a0,a0,+00000790
	jal	ra,0000000023003A8A
	lui	a0,0002306E
	addi	a0,a0,+000007DC
	jal	ra,0000000023003A8A
	lui	a0,0002306F
	addi	a0,a0,-000007E0
	jal	ra,0000000023003A8A
	lui	a0,0002306F
	addi	a0,a0,-000007C0
	jal	ra,0000000023003A8A
	lui	a0,0002306F
	addi	a0,a0,-000007A4
	jal	ra,0000000023003A8A

l23000FA4:
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

l23000FD4:
	c.li	a2,00000009
	c.addi4spn	a1,0000010C
	c.addi4spn	a0,00000034
	jal	ra,000000002306D7AC
	lui	a0,0002306F
	c.addi4spn	a1,00000034
	addi	a0,a0,-00000730
	jal	ra,0000000023003AC6
	addi	a1,zero,+0000007C
	c.addi4spn	a0,00000034
	jal	ra,000000002306D298
	addi	s3,a0,+00000001
	beq	s3,zero,0000000023000E86

l23000FFE:
	lbu	a0,a0,+00000001
	c.li	s6,00000001
	c.li	s4,00000000
	c.jal	0000000023000C9A
	c.mv	s8,a0
	c.addi4spn	a0,00000034
	jal	ra,000000002306D630
	c.mv	s0,a0
	c.mv	a0,s3
	jal	ra,000000002306D630
	c.sub	s0,a0
	addi	s7,s0,-00000001
	c.addi4spn	a5,00000150
	c.add	a5,s7
	sb	zero,a5,+00000EE4
	c.addi4spn	a5,00000034
	c.add	s0,a5
	c.li	s3,00000000
	c.li	s9,0000000A

l2300102E:
	c.addi	s0,FFFFFFFF
	bge	s4,s7,0000000023000E8A

l23001034:
	lbu	a0,s0,-00000001
	c.addi	s4,00000001
	c.jal	0000000023000C9A
	add	a0,a0,s6
	c.add	s3,a0
	c.slli	s3,10
	srli	s3,s3,00000010
	add	s6,s6,s9
	c.j	000000002300102E

l2300104E:
	lbu	a0,s7,+00000000
	c.addi	s7,00000002
	c.jal	0000000023000C9A
	c.mv	s4,a0
	lbu	a0,s7,-00000001
	c.slli	s4,04
	c.jal	0000000023000C9A
	srli	a5,s6,00000001
	c.addi4spn	a4,00000150
	c.add	a5,a4
	c.add	s4,a0
	sb	s4,a5,+00000EDC
	c.addi	s6,00000002
	c.j	0000000023000EE6

;; event_cb_wifi_event: 23001072
event_cb_wifi_event proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lhu	s1,a0,+00000006
	c.li	a4,00000012
	addi	a5,s1,-00000001
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a4,a5,000000002300125C

l2300108C:
	lui	a4,0002306E
	c.slli	a5,02
	addi	a4,a4,+000006AC
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.mv	s0,a0
	c.jr	a5

l2300109E:
	jal	ra,0000000023002888
	c.mv	a2,a0
	lui	a0,0002306F
	c.mv	a3,a1
	addi	a0,a0,-00000388
	jal	ra,0000000023003AC6
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	lui	a0,0004200E
	addi	a0,a0,-00000470
	c.addi16sp	00000020
	jal	zero,000000002300510E

l230010C6:
	jal	ra,0000000023002888
	c.mv	a2,a0
	lui	a0,0002306F
	c.mv	a3,a1
	addi	a0,a0,-00000368
	jal	ra,0000000023003AC6
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.j	0000000023000CD6
230010E4             EF 10 40 7A 1C 44 2A 86 AE 86 8D C3     ..@z.D*.....
230010F0 37 F7 06 23 13 07 C7 C6 37 F5 06 23 13 05 85 CB 7..#....7..#....
23001100 EF 20 70 1C 62 44 F2 40 D2 44 05 61 6F 50 D0 60 . p.bD.@.D.aoP.`
23001110 37 07 07 23 13 07 07 C8 C5 B7 EF 10 E0 76 2A C4 7..#.........v*.
23001120 03 55 84 00 2E C6 EF 60 40 65 22 46 B2 46 2A 87 .U.....`@e"F.F*.
23001130 37 F5 06 23 13 05 85 CE EF 20 F0 18 13 05 80 3E 7..#..... .....>
23001140 EF 20 13 4D 62 44 F2 40 D2 44 01 45 05 61 6F 60 . .MbD.@.D.E.ao`
23001150 A0 07 EF 10 60 73 2A 86 37 F5 06 23 AE 86 13 05 ....`s*.7..#....
23001160 45 D1 62 44 F2 40 D2 44 05 61 6F 20 D0 15 EF 10 E.bD.@.D.ao ....
23001170 A0 71 2A 86 37 F5 06 23 AE 86 13 05 45 D3 D5 B7 .q*.7..#....E...
23001180 EF 10 80 70 2A 86 37 F5 06 23 AE 86 13 05 45 D5 ...p*.7..#....E.
23001190 C9 BF EF 10 60 6F 2A 86 37 F5 06 23 AE 86 13 05 ....`o*.7..#....
230011A0 45 D7 EF 20 50 12 EF 40 F3 15 62 44 F2 40 D2 44 E.. P..@..bD.@.D
230011B0 AA 85 37 F5 06 23 13 05 05 D9 05 61 6F 20 B0 10 ..7..#.....ao ..
230011C0 EF 10 80 6C 2A 86 37 F5 06 23 AE 86 13 05 05 DB ...l*.7..#......
230011D0 EF 20 70 0F 0C 44 2E C4 EF 50 30 6F A2 45 62 44 . p..D...P0o.EbD
230011E0 F2 40 D2 44 01 48 81 47 01 47 81 46 13 86 15 02 .@.D.H.G.G.F....
230011F0 05 61 6F 60 C0 22 EF 10 20 69 2A 86 37 F5 06 23 .ao`.".. i*.7..#
23001200 AE 86 13 05 45 DD EF 20 10 0C EF 60 C0 05 3D B7 ....E.. ...`..=.
23001210 EF 10 80 67 2A 86 37 F5 06 23 AE 86 13 05 C5 DF ...g*.7..#......
23001220 EF 20 70 0A 08 44 62 44 F2 40 D2 44 B7 15 00 23 . p..DbD.@.D...#
23001230 93 85 E5 B7 05 61 6F 60 A0 40 EF 10 E0 64 2A 86 .....ao`.@...d*.
23001240 37 F5 06 23 AE 86 13 05 05 E2 EF 20 D0 07 08 44 7..#....... ...D
23001250 62 44 F2 40 D2 44 05 61 6F F0 FF 97             bD.@.D.ao...   

l2300125C:
	jal	ra,0000000023002888
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a3,a1
	c.mv	a1,s1
	c.lwsp	s4,00000024
	c.mv	a2,a0
	lui	a0,0002306F
	addi	a0,a0,-000001BC
	c.addi16sp	00000020
	jal	zero,0000000023003AC6

;; event_cb_cli: 2300127A
event_cb_cli proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lhu	a5,a0,+00000006
	c.li	a4,00000001
	beq	a5,a4,0000000023001298

l2300128A:
	c.li	a4,00000002
	beq	a5,a4,00000000230012CA

l23001290:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23001298:
	lui	s0,0002306F
	addi	a0,s0,-0000056C
	jal	ra,000000002306D630
	c.mv	a1,a0
	addi	a0,s0,-0000056C
	jal	ra,00000000230304EC
	lui	s0,0002306F
	addi	a0,s0,-00000560
	jal	ra,000000002306D630
	c.mv	a1,a0
	addi	a0,s0,-00000560
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230304EC

l230012CA:
	lui	s0,0002306F
	addi	a0,s0,-000003B8
	jal	ra,000000002306D630
	c.mv	a1,a0
	addi	a0,s0,-000003B8
	jal	ra,00000000230304EC
	c.jal	00000000230017FC
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,0002306F
	addi	a0,a0,-000003A8
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

;; aos_loop_proc: 230012F4
aos_loop_proc proc
	lui	a2,00042010
	lui	a0,0004200F
	c.addi	sp,FFFFFFF0
	addi	a2,a2,-00000354
	addi	a1,zero,+00000200
	addi	a0,a0,+000004AC
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	jal	ra,000000002303A044
	jal	ra,000000002303A320
	jal	ra,0000000023030776
	jal	ra,0000000023001AEC
	jal	ra,0000000023002B14
	jal	ra,00000000230381BA
	lui	s0,00023079
	addi	a2,s0,+000004F8
	c.li	a1,00000000
	c.mv	s1,a0
	jal	ra,000000002302C4FE
	bne	a0,zero,000000002300142C

l2300133C:
	lui	a0,00023079
	addi	a1,s0,+000004F8
	addi	a0,a0,+0000053C
	jal	ra,0000000023003AC6

l2300134C:
	jal	ra,00000000230381BA
	lui	s0,0002307A
	c.li	a1,00000000
	addi	a2,s0,-0000056C
	c.mv	s1,a0
	jal	ra,000000002302C4FE
	c.mv	a1,a0
	bne	a0,zero,0000000023001424

l23001366:
	lui	a0,00023079
	addi	a1,s0,-0000056C
	addi	a0,a0,+0000053C
	jal	ra,0000000023003AC6

l23001376:
	jal	ra,00000000230445CA
	jal	ra,000000002300219A
	lui	a0,0002306F
	c.li	a1,00000000
	addi	a0,a0,-000005F8
	jal	ra,0000000023001B36
	c.mv	s0,a0
	blt	a0,zero,00000000230013BC

l23001392:
	lui	a0,0002306F
	addi	a0,a0,-000005EC
	jal	ra,0000000023003AC6
	c.li	a0,00000000
	jal	ra,000000002302F22E
	jal	ra,000000002302F290
	lui	a2,00012345
	c.mv	a1,a0
	addi	a2,a2,+00000678
	c.mv	a0,s0
	jal	ra,0000000023002216
	jal	ra,0000000023007046

l230013BC:
	lui	a1,00023001
	c.li	a2,00000000
	addi	a1,a1,+00000072
	c.li	a0,00000002
	jal	ra,0000000023002C2A
	lui	a1,00023001
	c.li	a2,00000000
	addi	a1,a1,+0000027A
	c.li	a0,00000005
	jal	ra,0000000023002C2A
	lui	a1,00023001
	c.li	a2,00000000
	addi	a1,a1,-000004F4
	addi	a0,zero,+000003E8
	jal	ra,00000000230022FA
	jal	ra,000000002300237E
	lui	a0,0002306E
	addi	a0,a0,+00000668
	jal	ra,0000000023003A8A
	lui	a0,0002306F
	addi	a0,a0,-000005CC
	jal	ra,0000000023003A8A
	lui	a0,0002306F
	addi	a0,a0,-0000059C
	jal	ra,0000000023003A8A
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,000000002303386C

l23001424:
	c.mv	a0,s1
	jal	ra,0000000023037C20
	c.j	0000000023001376

l2300142C:
	c.mv	a1,a0
	c.mv	a0,s1
	jal	ra,00000000230373CE
	c.j	000000002300134C

;; vApplicationStackOverflowHook: 23001436
;;   Called from:
;;     23033EAA (in vTaskSwitchContext)
vApplicationStackOverflowHook proc
	lui	a0,0002306F
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000000F4
	c.swsp	ra,00000084
	jal	ra,0000000023003A8A

l23001446:
	c.j	0000000023001446

;; vApplicationMallocFailedHook: 23001448
;;   Called from:
;;     230359BE (in pvPortMalloc)
vApplicationMallocFailedHook proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023035B04
	c.mv	a1,a0
	lui	a0,0002306F
	addi	a0,a0,-0000012C
	jal	ra,0000000023003AC6

l2300145E:
	c.j	000000002300145E

;; vApplicationIdleHook: 23001460
;;   Called from:
;;     2303374A (in prvIdleTask)
vApplicationIdleHook proc
	wfi
	c.jr	ra

;; vApplicationGetIdleTaskMemory: 23001466
;;   Called from:
;;     23033A7A (in vTaskStartScheduler)
vApplicationGetIdleTaskMemory proc
	lui	a5,00042010
	addi	a5,a5,+000004CC
	c.sw	a0,0(a5)
	lui	a5,00042010
	addi	a5,a5,-000002F4
	c.sw	a1,0(a5)
	addi	a5,zero,+00000060
	c.sw	a2,0(a5)
	c.jr	ra

;; vApplicationGetTimerTaskMemory: 23001482
;;   Called from:
;;     23034EEC (in xTimerCreateTimerTask)
vApplicationGetTimerTaskMemory proc
	lui	a5,00042010
	addi	a5,a5,+0000052C
	c.sw	a0,0(a5)
	lui	a5,00042010
	addi	a5,a5,-00000174
	c.sw	a1,0(a5)
	addi	a5,zero,+00000190
	c.sw	a2,0(a5)
	c.jr	ra

;; user_vAssertCalled: 2300149E
;;   Called from:
;;     2301CE26 (in bt_hci_cmd_send_sync)
;;     2301E378 (in hci_tx_thread)
;;     2301E3CA (in hci_tx_thread)
;;     2301E48C (in bt_recv)
;;     2301E528 (in bt_recv)
;;     2301E550 (in bt_recv)
;;     2301E594 (in bt_recv_prio)
;;     2301E5A2 (in bt_recv_prio)
;;     2301E5CA (in bt_recv_prio)
;;     230250A8 (in k_queue_init)
;;     230250D4 (in k_queue_insert)
;;     230252BC (in k_timer_init)
;;     230252E6 (in k_timer_init)
;;     230252FA (in k_timer_stop)
;;     23025318 (in k_timer_stop)
;;     2302532A (in k_timer_delete)
;;     23025348 (in k_timer_delete)
;;     2302538A (in k_timer_start)
;;     230253AA (in k_timer_start)
;;     230253CC (in k_timer_start)
;;     230253F2 (in k_timer_start)
;;     23026000 (in k_delayed_work_submit)
;;     23026082 (in work_timeout)
;;     23027BAA (in bt_conn_process_tx)
;;     23031F20 (in xEventGroupCreateStatic)
;;     23031F26 (in xEventGroupCreateStatic)
;;     23031F36 (in xEventGroupCreateStatic)
;;     23031FA0 (in xEventGroupWaitBits)
;;     23031FEC (in xEventGroupWaitBits)
;;     23032010 (in xEventGroupWaitBits)
;;     230320E8 (in xEventGroupSetBits)
;;     230320EE (in xEventGroupSetBits)
;;     2303211E (in vEventGroupDelete)
;;     230323EA (in xQueueGenericReset)
;;     2303241E (in xQueueGenericCreateStatic)
;;     2303245A (in xQueueGenericCreateStatic)
;;     23032464 (in xQueueGenericCreateStatic)
;;     2303246A (in xQueueGenericCreateStatic)
;;     230324D8 (in xQueueGenericCreate)
;;     23032514 (in xQueueCreateCountingSemaphore)
;;     23032520 (in xQueueCreateCountingSemaphore)
;;     2303264C (in xQueueGenericSend)
;;     23032658 (in xQueueGenericSend)
;;     23032674 (in xQueueGenericSend)
;;     2303267A (in xQueueGenericSend)
;;     23032728 (in xQueueGenericSendFromISR)
;;     23032768 (in xQueueGenericSendFromISR)
;;     23032786 (in xQueueGenericSendFromISR)
;;     230327F0 (in xQueueGiveFromISR)
;;     230327FC (in xQueueGiveFromISR)
;;     23032802 (in xQueueGiveFromISR)
;;     23032944 (in xQueueReceive)
;;     23032950 (in xQueueReceive)
;;     23032956 (in xQueueReceive)
;;     23032A84 (in xQueueSemaphoreTake)
;;     23032A8A (in xQueueSemaphoreTake)
;;     23032AB0 (in xQueueSemaphoreTake)
;;     23032AE6 (in xQueueSemaphoreTake)
;;     23032B12 (in uxQueueMessagesWaiting)
;;     23032B58 (in vQueueDelete)
;;     23032C58 (in prvInitialiseNewStreamBuffer)
;;     23032D00 (in prvWriteBytesToBuffer)
;;     23032D06 (in prvWriteBytesToBuffer)
;;     23032D2A (in prvWriteBytesToBuffer)
;;     23032DC8 (in prvReadBytesFromBuffer)
;;     23032DD6 (in prvReadBytesFromBuffer)
;;     23032DDC (in prvReadBytesFromBuffer)
;;     23032E32 (in xStreamBufferGenericCreate)
;;     23032E3A (in xStreamBufferGenericCreate)
;;     23032E4E (in xStreamBufferGenericCreate)
;;     23032ED4 (in xStreamBufferGenericCreateStatic)
;;     23032EE4 (in xStreamBufferGenericCreateStatic)
;;     23032EF0 (in xStreamBufferGenericCreateStatic)
;;     23032EFA (in xStreamBufferGenericCreateStatic)
;;     23032F04 (in xStreamBufferGenericCreateStatic)
;;     23032F2A (in vStreamBufferDelete)
;;     23032F6E (in xStreamBufferSpacesAvailable)
;;     23032FD2 (in xStreamBufferSend)
;;     23033096 (in xStreamBufferSend)
;;     2303309E (in xStreamBufferSend)
;;     230330A4 (in xStreamBufferSend)
;;     23033156 (in xStreamBufferSendFromISR)
;;     2303315C (in xStreamBufferSendFromISR)
;;     23033208 (in xStreamBufferReceive)
;;     2303320E (in xStreamBufferReceive)
;;     23033240 (in xStreamBufferReceive)
;;     230332E4 (in xStreamBufferReceiveFromISR)
;;     230332EA (in xStreamBufferReceiveFromISR)
;;     2303332A (in xStreamBufferIsEmpty)
;;     2303343A (in prvDeleteTCB)
;;     230337A0 (in xTaskCreateStatic)
;;     230337BC (in xTaskCreateStatic)
;;     230337CC (in xTaskCreateStatic)
;;     230337DC (in xTaskCreateStatic)
;;     23033994 (in vTaskDelete)
;;     23033A4A (in eTaskGetState)
;;     23033AD6 (in vTaskStartScheduler)
;;     23033CB6 (in xTaskIncrementTick)
;;     23033DFC (in xTaskResumeAll)
;;     23033E4A (in vTaskDelay)
;;     23033F10 (in vTaskSwitchContext)
;;     23033F44 (in vTaskPlaceOnEventList)
;;     23033F90 (in vTaskPlaceOnUnorderedEventList)
;;     23033F9A (in vTaskPlaceOnUnorderedEventList)
;;     23033FD4 (in vTaskPlaceOnEventListRestricted)
;;     2303406E (in xTaskRemoveFromEventList)
;;     230340F8 (in vTaskRemoveFromUnorderedEventList)
;;     2303410E (in vTaskRemoveFromUnorderedEventList)
;;     23034170 (in vTaskSetTimeOutState)
;;     23034230 (in xTaskCheckForTimeOut)
;;     23034238 (in xTaskCheckForTimeOut)
;;     230345DE (in xTaskPriorityDisinherit)
;;     23034600 (in xTaskPriorityDisinherit)
;;     230346DE (in vTaskPriorityDisinheritAfterTimeout)
;;     23034766 (in vTaskPriorityDisinheritAfterTimeout)
;;     23034AEE (in xTaskGenericNotify)
;;     23034B68 (in xTaskGenericNotify)
;;     23034BB4 (in xTaskGenericNotify)
;;     23034BFC (in xTaskGenericNotifyFromISR)
;;     23034C18 (in xTaskGenericNotifyFromISR)
;;     23034C74 (in xTaskGenericNotifyFromISR)
;;     23034D0C (in vTaskNotifyGiveFromISR)
;;     23034D90 (in vTaskNotifyGiveFromISR)
;;     23034F20 (in xTimerCreateTimerTask)
;;     23034F96 (in xTimerCreate)
;;     23034FC4 (in xTimerCreateStatic)
;;     23035012 (in xTimerCreateStatic)
;;     23035018 (in xTimerCreateStatic)
;;     2303508E (in xTimerGenericCommand)
;;     23035136 (in prvSwitchTimerLists)
;;     23035328 (in prvTimerTask)
;;     2303534C (in pvTimerGetTimerID)
;;     230353D6 (in xPortStartScheduler)
;;     23035A6C (in pvPortMalloc)
;;     23035A98 (in vPortFree)
;;     23035AB8 (in vPortFree)
;;     23035B32 (in vPortDefineHeapRegions)
;;     23035BE4 (in vPortDefineHeapRegions)
;;     23035BEE (in vPortDefineHeapRegions)
;;     23035C0C (in vPortDefineHeapRegions)
user_vAssertCalled proc
	c.addi	sp,FFFFFFF0
	c.swsp	zero,00000084
	csrrci	zero,mstatus,00000008
	c.li	a5,00000001

l230014A8:
	c.lwsp	a2,000000C4
	bne	a4,a5,00000000230014B2

l230014AE:
	c.addi	sp,00000010
	c.jr	ra

l230014B2:
	c.nop
	c.j	00000000230014A8

;; bfl_main: 230014B6
;;   Called from:
;;     230000F4 (in bl602_start)
bfl_main proc
	c.addi16sp	FFFFFFB0
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	jal	ra,000000002303621E
	lui	a5,000001E8
	addi	a5,a5,+00000480
	addi	a4,zero,+000000FF
	addi	a3,zero,+000000FF
	c.li	a2,00000007
	c.li	a1,00000010
	c.li	a0,00000000
	jal	ra,0000000023035D10
	lui	a0,0002306F
	addi	a0,a0,-00000540
	jal	ra,0000000023003A8A
	jal	ra,000000002303623C
	lui	a0,0002306F
	addi	a0,a0,-00000524
	jal	ra,0000000023003A8A
	c.addi4spn	a0,00000004
	jal	ra,0000000023036112
	c.bnez	a0,000000002300150A

l23001504:
	c.lwsp	tp,00000044
	jal	ra,0000000023003A8A

l2300150A:
	lui	s0,00023076
	addi	a0,s0,+0000076C
	jal	ra,0000000023003A8A
	addi	a0,s0,+0000076C
	jal	ra,0000000023003A8A
	lui	s1,00023071
	addi	a0,s1,-00000264
	jal	ra,0000000023003A8A
	lui	a0,0002306F
	addi	a0,a0,-0000050C
	jal	ra,0000000023003A8A
	c.addi4spn	a0,00000008
	jal	ra,0000000023036068
	c.addi4spn	a0,00000008
	jal	ra,0000000023003A8A
	addi	a0,s0,+0000076C
	jal	ra,0000000023003A8A
	lui	s3,0002306F
	addi	a0,s3,-000004F4
	jal	ra,0000000023003A8A
	lui	s2,0002306F
	addi	a0,s2,-000004E4
	jal	ra,0000000023003A8A
	addi	a0,s0,+0000076C
	jal	ra,0000000023003A8A
	addi	a0,s3,-000004F4
	jal	ra,0000000023003A8A
	addi	a0,s2,-000004E4
	jal	ra,0000000023003A8A
	addi	a0,s0,+0000076C
	jal	ra,0000000023003A8A
	lui	a0,0002306F
	addi	a0,a0,-000004B8
	jal	ra,0000000023003A8A
	lui	a0,0002306F
	addi	a0,a0,-000004A8
	jal	ra,0000000023003A8A
	addi	a0,s0,+0000076C
	jal	ra,0000000023003A8A
	lui	a0,0002306F
	addi	a0,a0,-00000490
	jal	ra,0000000023003A8A
	lui	a0,0002306F
	addi	a0,a0,-00000480
	jal	ra,0000000023003A8A
	addi	a0,s0,+0000076C
	jal	ra,0000000023003A8A
	lui	a0,0002306F
	addi	a0,a0,-00000478
	jal	ra,0000000023003A8A
	lui	a0,0002306F
	addi	a0,a0,-00000468
	jal	ra,0000000023003A8A
	addi	a0,s0,+0000076C
	jal	ra,0000000023003A8A
	lui	a0,0002306F
	addi	a0,a0,-0000045C
	jal	ra,0000000023003A8A
	lui	a0,0002306F
	addi	a0,a0,-0000044C
	jal	ra,0000000023003A8A
	addi	a0,s0,+0000076C
	jal	ra,0000000023003A8A
	addi	a0,s1,-00000264
	jal	ra,0000000023003A8A
	lui	a0,0004200D
	addi	a0,a0,-00000124
	jal	ra,0000000023035B0E
	lui	a4,00042049
	c.lui	a3,00001000
	lui	a2,0004201F
	lui	a1,00000021
	lui	a0,0002306F
	addi	a4,a4,+000007A0
	addi	a3,a3,-000007A0
	addi	a2,a2,-00000101
	addi	a1,a1,-000006FF
	addi	a0,a0,-00000440
	jal	ra,0000000023003AC6
	jal	ra,000000002302CF1C
	jal	ra,0000000023036A5A
	jal	ra,0000000023036D5A
	jal	ra,0000000023036DA0
	jal	ra,0000000023036522
	jal	ra,0000000023000780
	c.li	a0,00000000
	jal	ra,00000000230381C4
	lui	a0,0002306F
	addi	a0,a0,-0000042C
	jal	ra,0000000023003A8A
	lui	a6,0004200F
	lui	a5,0004200E
	lui	a1,0002306F
	lui	a0,00023001
	addi	a6,a6,+0000044C
	addi	a5,a5,+0000044C
	c.li	a4,0000000F
	c.li	a3,00000000
	addi	a2,zero,+00000400
	addi	a1,a1,-00000404
	addi	a0,a0,+000002F4
	jal	ra,0000000023033750
	lui	a0,0002306F
	addi	a0,a0,-000003F8
	jal	ra,0000000023003A8A
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,000000002303A708
	lui	a0,0002306F
	addi	a0,a0,-000003D8
	jal	ra,0000000023003A8A
	jal	ra,0000000023033A6C
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.addi16sp	00000050
	c.jr	ra

;; blesync_complete_cb: 230016C8
blesync_complete_cb proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002302DABC
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023035A72

;; wifiprov_api_state_get: 230016E0
wifiprov_api_state_get proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	lui	a0,0002306F
	addi	a0,a0,-00000098
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.j	00000000230018C4

;; wifiprov_wifi_scan: 230016FE
wifiprov_wifi_scan proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	lui	a0,0002306F
	addi	a0,a0,-0000001C
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.j	000000002300188E

;; wifiprov_disc_from_ap_ind: 2300171C
wifiprov_disc_from_ap_ind proc
	lui	a0,0002306F
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000048
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.j	0000000023001858

;; wifiprov_connect_ap_ind: 23001732
wifiprov_connect_ap_ind proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023005186
	lui	a0,0002306F
	addi	a0,a0,-00000070
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.j	0000000023001822

;; blsync_init: 23001754
;;   Called from:
;;     230017D6 (in blsync_ble_start)
blsync_init proc
	c.bnez	a0,00000000230017B0

l23001756:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	addi	s0,s0,+00000090
	c.lw	s0,0(a5)
	c.swsp	ra,00000084
	c.beqz	a5,000000002300177A

l23001768:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,0002306F
	addi	a0,a0,-000000B4
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

l2300177A:
	jal	ra,000000002302508E
	c.lui	a0,00002000
	addi	a0,a0,-000006F8
	jal	ra,000000002303598A
	c.sw	s0,0(a0)
	c.mv	a3,a0
	c.beqz	a0,00000000230017A8

l2300178E:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a2,00023001
	lui	a1,0004200D
	addi	a2,a2,+000006C8
	addi	a1,a1,-00000104
	c.addi	sp,00000010
	jal	zero,000000002302D9C2

l230017A8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230017B0:
	c.jr	ra

;; blsync_ble_start: 230017B2
;;   Called from:
;;     23000AF2 (in cmd_blsync_ble_start)
;;     23000B10 (in app_delayed_action_ble)
blsync_ble_start proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	addi	s0,s0,+00000094
	lbu	a5,s0,+00000000
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.li	s1,00000001
	bne	a5,s1,00000000230017D8

l230017CC:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.j	0000000023001754

l230017D8:
	c.li	a0,0000001F
	jal	ra,000000002300B012
	jal	ra,000000002301C42A
	lui	a0,00023001
	addi	a0,a0,+00000754
	jal	ra,000000002301E7DC
	c.lwsp	a2,00000020
	sb	s1,s0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; blsync_ble_stop: 230017FC
;;   Called from:
;;     230012E0 (in event_cb_cli)
blsync_ble_stop proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	addi	s0,s0,+00000090
	c.lw	s0,0(a0)
	c.swsp	ra,00000084
	jal	ra,000000002302DABC
	c.lw	s0,0(a0)
	jal	ra,0000000023035A72
	c.lwsp	a2,00000020
	sw	zero,s0,+00000000
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; wifi_prov_api_event_trigger_connect: 23001822
;;   Called from:
;;     23001752 (in wifiprov_connect_ap_ind)
wifi_prov_api_event_trigger_connect proc
	c.addi	sp,FFFFFFF0
	c.mv	a2,a0
	c.li	a1,00000010
	c.li	a0,00000002
	c.swsp	ra,00000084
	jal	ra,0000000023002BF6
	blt	a0,zero,0000000023001848

l23001834:
	lui	a0,0002306F
	addi	a0,a0,+00000008
	jal	ra,0000000023003A8A
	c.li	a0,00000000

l23001842:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23001848:
	lui	a0,0002306F
	addi	a0,a0,+00000030
	jal	ra,0000000023003A8A
	c.li	a0,FFFFFFFF
	c.j	0000000023001842

;; wifi_prov_api_event_trigger_disconnect: 23001858
;;   Called from:
;;     23001730 (in wifiprov_disc_from_ap_ind)
wifi_prov_api_event_trigger_disconnect proc
	c.addi	sp,FFFFFFF0
	c.li	a2,00000000
	c.li	a1,00000011
	c.li	a0,00000002
	c.swsp	ra,00000084
	jal	ra,0000000023002BF6
	blt	a0,zero,000000002300187E

l2300186A:
	lui	a0,0002306F
	addi	a0,a0,+0000005C
	jal	ra,0000000023003A8A
	c.li	a0,00000000

l23001878:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l2300187E:
	lui	a0,0002306F
	addi	a0,a0,+00000088
	jal	ra,0000000023003A8A
	c.li	a0,FFFFFFFF
	c.j	0000000023001878

;; wifi_prov_api_event_trigger_scan: 2300188E
;;   Called from:
;;     2300171A (in wifiprov_wifi_scan)
wifi_prov_api_event_trigger_scan proc
	c.addi	sp,FFFFFFF0
	c.mv	a2,a0
	c.li	a1,00000012
	c.li	a0,00000002
	c.swsp	ra,00000084
	jal	ra,0000000023002BF6
	blt	a0,zero,00000000230018B4

l230018A0:
	lui	a0,0002306F
	addi	a0,a0,+000000B8
	jal	ra,0000000023003A8A
	c.li	a0,00000000

l230018AE:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l230018B4:
	lui	a0,0002306F
	addi	a0,a0,+000000E0
	jal	ra,0000000023003A8A
	c.li	a0,FFFFFFFF
	c.j	00000000230018AE

;; wifi_prov_api_event_state_get: 230018C4
;;   Called from:
;;     230016FC (in wifiprov_api_state_get)
wifi_prov_api_event_state_get proc
	c.addi	sp,FFFFFFF0
	c.mv	a2,a0
	c.li	a1,00000013
	c.li	a0,00000002
	c.swsp	ra,00000084
	jal	ra,0000000023002BF6
	blt	a0,zero,00000000230018EA

l230018D6:
	lui	a0,0002306F
	addi	a0,a0,+000000B8
	jal	ra,0000000023003A8A
	c.li	a0,00000000

l230018E4:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l230018EA:
	lui	a0,0002306F
	addi	a0,a0,+000000E0
	jal	ra,0000000023003A8A
	c.li	a0,FFFFFFFF
	c.j	00000000230018E4

;; bl_printk: 230018FA
;;   Called from:
;;     2300032E (in _dump_partition)
;;     2300033C (in _dump_partition)
;;     2300034C (in _dump_partition)
;;     2300035C (in _dump_partition)
;;     2300036A (in _dump_partition)
;;     23000378 (in _dump_partition)
;;     23000388 (in _dump_partition)
;;     230003DC (in _dump_partition)
;;     230003EA (in _dump_partition)
;;     230003F6 (in _dump_partition)
;;     23000402 (in _dump_partition)
;;     2300040E (in _dump_partition)
;;     2300041A (in _dump_partition)
;;     23000428 (in _dump_partition)
;;     23000432 (in _dump_partition)
;;     2300043C (in _dump_partition)
;;     23000446 (in _dump_partition)
;;     230007E8 (in hal_boot2_init)
;;     23000910 (in bl_flash_config_update)
;;     23000950 (in bl_flash_config_update)
;;     2300098C (in bl_flash_config_update)
;;     230009C8 (in bl_flash_config_update)
;;     23000A02 (in bl_flash_config_update)
;;     23000A3C (in bl_flash_config_update)
;;     23000A72 (in bl_flash_config_update)
;;     23001A2A (in log_buf_out)
;;     23001ADA (in log_buf_out)
;;     230091BC (in bl_send_cfg_task_req)
;;     2302CA38 (in cmd_blog_info_dump)
;;     2302CA54 (in cmd_blog_info_dump)
;;     2302CA70 (in cmd_blog_info_dump)
;;     2302CAA2 (in cmd_blog_info_dump)
;;     2302CAF0 (in cmd_blog_info_dump)
;;     2302CB38 (in cmd_blog_info_dump)
;;     2302CB60 (in cmd_blog_info_dump)
;;     2302CBAE (in cmd_blog_set_level)
;;     2302CBCC (in cmd_blog_set_level)
;;     2302CC58 (in cmd_blog_set_level)
;;     2302CD44 (in cmd_blog_set_level)
;;     2302CD52 (in blog_port_output)
;;     2302CF2E (in blog_init)
;;     2302D0E0 (in __bl_ble_sync_task)
;;     2302D1BC (in __recv_event)
;;     2302D6B0 (in write_data)
;;     2302D6F2 (in write_data)
;;     2302D7C6 (in __ble_bytes_send)
;;     2302D806 (in __ble_bytes_send)
;;     2302D8DC (in read_data)
;;     2302DA1A (in bl_ble_sync_start)
;;     2302DB98 (in __malloc)
;;     2302DBFC (in __free)
;;     2302DEB0 (in pro_trans_read)
;;     230318B0 (in ef_get_env_blob)
;;     230319B2 (in ef_set_env_blob)
;;     23036386 (in bl_dma_IRQHandler)
;;     2303641A (in bl_dma_irq_register)
;;     2303649C (in bl_dma_irq_register)
;;     2303650C (in bl_dma_irq_register)
;;     2303658A (in bl_dma_init)
;;     2303669A (in _irq_num_check.part.0)
;;     23036760 (in bl_irq_register_with_ctx)
;;     230367BE (in bl_irq_register_with_ctx)
;;     230368AE (in bl_irq_unregister)
;;     23036B3A (in wait_trng4feed)
;;     23036C0C (in sec_trng_IRQHandler)
;;     23036DAE (in bl_sec_test)
;;     23036DC0 (in bl_sec_test)
;;     23036DCE (in bl_sec_test)
;;     23036DDA (in bl_sec_test)
;;     230370E0 (in dev_uart_init)
;;     2303722C (in dev_uart_init)
;;     230374F2 (in vfs_uart_init)
;;     23037656 (in vfs_uart_init)
;;     230376AA (in vfs_uart_init)
;;     2303776E (in vfs_uart_init)
;;     2303786E (in vfs_uart_init)
;;     230378D6 (in vfs_uart_init)
;;     23037942 (in vfs_uart_init)
;;     230379A4 (in vfs_uart_init)
;;     23037A70 (in vfs_uart_init)
;;     23037AA2 (in vfs_uart_init)
;;     23037B0C (in vfs_uart_init)
;;     23037B60 (in vfs_uart_init)
;;     23037BAA (in vfs_uart_init)
;;     23037BE4 (in vfs_uart_init)
;;     23037CBE (in hal_gpio_init_from_dts)
;;     23037D48 (in hal_gpio_init_from_dts)
;;     23037E04 (in hal_gpio_init_from_dts)
;;     23037E6C (in hal_gpio_init_from_dts)
;;     23037EA2 (in hal_gpio_init_from_dts)
;;     23038118 (in hal_gpio_init_from_dts)
;;     23038248 (in hal_board_cfg)
;;     23038294 (in hal_board_cfg)
;;     230382FE (in hal_board_cfg)
;;     2303834A (in hal_board_cfg)
;;     230383B8 (in hal_board_cfg)
;;     23038444 (in hal_board_cfg)
;;     2303849E (in hal_board_cfg)
;;     23038512 (in hal_board_cfg)
;;     230385D6 (in hal_board_cfg)
;;     23038636 (in hal_board_cfg)
;;     230386C2 (in hal_board_cfg)
;;     2303875A (in hal_board_cfg)
;;     230387E2 (in hal_board_cfg)
;;     23038830 (in hal_board_cfg)
;;     23038852 (in hal_board_cfg)
;;     2303890E (in hal_board_cfg)
;;     2303896E (in hal_board_cfg)
;;     230389A4 (in hal_board_cfg)
;;     23038A62 (in hal_board_cfg)
;;     23038AB2 (in hal_board_cfg)
;;     23038B06 (in hal_board_cfg)
;;     23038B5A (in hal_board_cfg)
;;     23038BAC (in hal_board_cfg)
;;     23038BFA (in hal_board_cfg)
;;     23038C62 (in hal_board_cfg)
;;     23038CF4 (in hal_board_cfg)
;;     23038DAC (in hal_board_cfg)
;;     23038E60 (in hal_board_cfg)
;;     23038F14 (in hal_board_cfg)
;;     23038F90 (in hal_board_cfg)
;;     23038FEC (in hal_board_cfg)
;;     23039078 (in hal_board_cfg)
;;     23039138 (in hal_board_cfg)
;;     230392D4 (in hal_board_cfg)
;;     23039318 (in hal_board_cfg)
;;     23039374 (in hal_board_cfg)
;;     230393CA (in hal_board_cfg)
;;     23039420 (in hal_board_cfg)
;;     23039476 (in hal_board_cfg)
;;     23039524 (in hal_board_cfg)
;;     23039594 (in hal_board_cfg)
;;     230395D4 (in hal_board_cfg)
;;     23039682 (in hal_board_cfg)
;;     230396FA (in hal_board_cfg)
;;     2303973E (in hal_board_cfg)
;;     230397EC (in hal_board_cfg)
;;     2303983C (in hal_board_cfg)
;;     230398C4 (in hal_board_cfg)
;;     230399BC (in hal_board_cfg)
;;     23039A88 (in hal_board_cfg)
;;     23039AFC (in hal_board_cfg)
;;     23039B76 (in hal_board_cfg)
;;     23039C1E (in hal_board_cfg)
;;     23039CA6 (in hal_board_cfg)
;;     23039D16 (in hal_board_cfg)
;;     23039D88 (in hal_board_cfg)
;;     23039E10 (in hal_board_cfg)
;;     23039EF4 (in bl_tsen_adc_get)
;;     23039F64 (in bl_tsen_adc_get)
;;     2303A144 (in _cb_led_trigger)
;;     2303A1D0 (in _led_bloop_msg)
;;     2303A2CA (in _led_bloop_evt)
;;     2303A390 (in loopset_led_trigger)
;;     23043DF0 (in file_info)
;;     23043E26 (in file_info)
;;     23043E7E (in file_info)
;;     2304407E (in dirent_file)
;;     230441AA (in dirent_file)
;;     23044280 (in romfs_opendir)
;;     2304434C (in romfs_stat)
;;     230443CE (in romfs_stat)
;;     23044422 (in romfs_open)
;;     230444BC (in romfs_open)
;;     23044544 (in romfs_open)
;;     23044620 (in romfs_register)
;;     23044678 (in romfs_register)
;;     2306784A (in bl_mtd_write)
;;     23067CE4 (in bloop_run)
;;     23067D7C (in bloop_run)
;;     2306884A (in bl_sha_mutex_take)
;;     230688C4 (in bl_sha_mutex_give)
bl_printk proc
	c.addi16sp	FFFFFFC0
	c.swsp	a5,00000098
	lui	a5,0004200E
	lbu	a5,a5,-00000390
	c.swsp	ra,0000008C
	c.swsp	a1,00000090
	c.swsp	a2,00000014
	c.swsp	a3,00000094
	c.swsp	a4,00000018
	c.swsp	a6,0000001C
	c.swsp	a7,0000009C
	andi	a5,a5,+000000FF
	c.beqz	a5,0000000023001922

l2300191A:
	c.addi4spn	a1,00000024
	c.swsp	a1,00000084
	jal	ra,0000000023003A2E

l23001922:
	c.lwsp	t3,00000020
	c.addi16sp	00000040
	c.jr	ra

;; log_buf_out: 23001928
;;   Called from:
;;     230386D6 (in hal_board_cfg)
;;     2303876E (in hal_board_cfg)
;;     23039536 (in hal_board_cfg)
;;     23039694 (in hal_board_cfg)
;;     230398FA (in hal_board_cfg)
;;     23043E02 (in file_info)
;;     230446E6 (in romfs_register)
log_buf_out proc
	bge	zero,a3,0000000023001AE8

l2300192C:
	c.addi16sp	FFFFFFB0
	addi	a5,zero,+00000032
	c.swsp	s1,000000A0
	c.mv	s1,a4
	or	a4,a3,a5
	c.swsp	s0,00000024
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s8,00000014
	c.swsp	ra,000000A4
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	c.mv	s0,a2
	c.mv	s5,a1
	c.mv	s4,a0
	c.swsp	a4,00000084
	xor	s8,a3,a5
	c.bnez	a4,00000000230019A8

l23001960:
	lui	s3,00042010
	lui	s7,0002306F
	lui	s9,0002306F
	add	s8,s8,a5
	c.add	s8,a2

l23001972:
	beq	s8,s0,0000000023001A38

l23001976:
	c.li	s6,00000000
	c.li	s2,00000000
	c.li	s10,00000001
	c.li	s11,00000002

l2300197E:
	lui	a5,00042010
	addi	a5,a5,+0000058C
	add	a4,s0,s2
	add	a0,a5,s6
	lbu	a2,a4,+00000000
	beq	s1,s10,0000000023001A98

l23001996:
	addi	a1,s9,+00000114
	beq	s1,s11,0000000023001AA0

l2300199E:
	lui	a5,0002306F
	addi	a1,a5,+0000011C
	c.j	0000000023001AA0

l230019A8:
	lui	s3,00042010
	c.li	s6,00000000
	addi	s3,s3,+0000058C
	lui	s9,0002306F
	lui	s10,0002306F
	lui	s11,0002306F

l230019BE:
	c.li	s2,00000000
	c.li	s7,00000000
	bne	s8,s6,0000000023001A70

l230019C6:
	add	a4,s0,s7
	c.li	a5,00000001
	add	a0,s3,s2
	lbu	a2,a4,+00000000
	beq	s1,a5,00000000230019EC

l230019D8:
	c.li	a5,00000002
	addi	a1,s11,+00000114
	beq	s1,a5,00000000230019F4

l230019E2:
	addi	a1,s10,+0000011C
	c.j	00000000230019F4

l230019E8:
	c.mv	s6,a5
	c.j	00000000230019BE

l230019EC:
	c.slli	a2,18
	c.srai	a2,00000018
	addi	a1,s9,+0000010C

l230019F4:
	jal	ra,0000000023003AF6
	c.lwsp	a2,000000E4
	c.addi	s7,00000001
	c.add	s2,a0
	bne	a5,s7,00000000230019C6

l23001A02:
	lui	a4,0004200E
	lw	a4,a4,+00000244
	c.beqz	a4,0000000023001A92

l23001A0C:
	jal	ra,0000000023033B12

l23001A10:
	c.mv	a1,a0
	lui	a2,0002306F
	lui	a0,0002306F
	c.mv	a5,s2
	c.mv	a6,s3
	c.mv	a4,s5
	c.mv	a3,s4
	addi	a2,a2,+00000124
	addi	a0,a0,+00000134
	c.jal	00000000230018FA
	addi	a5,s6,+00000001
	addi	s0,s0,+00000032
	blt	s6,s8,00000000230019E8

l23001A38:
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

l23001A58:
	c.slli	a2,18
	c.srai	a2,00000018
	addi	a1,s9,+0000010C

l23001A60:
	jal	ra,0000000023003AF6
	c.addi	s7,00000001
	addi	a5,zero,+00000032
	c.add	s2,a0
	beq	s7,a5,0000000023001A02

l23001A70:
	add	a4,s0,s7
	c.li	a5,00000001
	add	a0,s3,s2
	lbu	a2,a4,+00000000
	beq	s1,a5,0000000023001A58

l23001A82:
	c.li	a5,00000002
	addi	a1,s11,+00000114
	beq	s1,a5,0000000023001A60

l23001A8C:
	addi	a1,s10,+0000011C
	c.j	0000000023001A60

l23001A92:
	jal	ra,0000000023033AF0
	c.j	0000000023001A10

l23001A98:
	c.slli	a2,18
	c.srai	a2,00000018
	addi	a1,s7,+0000010C

l23001AA0:
	jal	ra,0000000023003AF6
	c.addi	s2,00000001
	addi	a4,zero,+00000032
	c.add	s6,a0
	bne	s2,a4,000000002300197E

l23001AB0:
	lui	a4,0004200E
	lw	a4,a4,+00000244
	c.beqz	a4,0000000023001AE2

l23001ABA:
	jal	ra,0000000023033B12

l23001ABE:
	c.mv	a1,a0
	lui	a2,0002306F
	lui	a0,0002306F
	addi	a6,s3,+0000058C
	c.mv	a5,s6
	c.mv	a4,s5
	c.mv	a3,s4
	addi	a2,a2,+00000124
	addi	a0,a0,+00000134
	c.jal	00000000230018FA
	addi	s0,s0,+00000032
	c.j	0000000023001972

l23001AE2:
	jal	ra,0000000023033AF0
	c.j	0000000023001ABE

l23001AE8:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; vfs_init: 23001AEC
;;   Called from:
;;     2300131C (in aos_loop_proc)
vfs_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	addi	s0,s0,+00000095
	lbu	a4,s0,+00000000
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.li	s1,00000001
	c.li	a5,00000000
	beq	a4,s1,0000000023001B2A

l23001B08:
	lui	a1,00042010
	addi	a1,a1,+0000078C
	c.li	a0,00000001
	jal	ra,0000000023032680
	lui	a5,00042017
	sw	a0,a5,+00000F98
	c.li	a5,FFFFFFFF
	c.beqz	a0,0000000023001B2A

l23001B22:
	c.jal	0000000023001FAA
	c.li	a5,00000000
	sb	s1,s0,+00000000

l23001B2A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; aos_open: 23001B36
;;   Called from:
;;     23001388 (in aos_loop_proc)
;;     23002BC0 (in aos_event_service_init)
;;     2302F15C (in cat_cmd)
;;     2302F1D6 (in hexdump_cmd)
aos_open proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.beqz	a0,0000000023001BEA

l23001B46:
	c.mv	s2,a0
	c.mv	s3,a1
	jal	ra,000000002306D630
	addi	a5,zero,+00000400
	bltu	a5,a0,0000000023001BEE

l23001B56:
	lui	s4,00042017
	lw	a0,s4,-00000068
	c.li	a1,FFFFFFFF
	jal	ra,000000002303296C
	c.li	a5,00000001
	bne	a0,a5,0000000023001BF2

l23001B6A:
	c.mv	a0,s2
	c.jal	0000000023001FE6
	c.mv	s0,a0
	c.bnez	a0,0000000023001B94

l23001B72:
	lw	a0,s4,-00000068
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528
	c.li	s0,FFFFFFFE

l23001B82:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23001B94:
	sw	s3,a0,+0000000C
	c.jal	0000000023001F0A
	c.mv	s1,a0
	lw	a0,s4,-00000068
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528
	c.beqz	s1,0000000023001BF6

l23001BAC:
	c.lw	s0,0(a5)
	lbu	a3,s0,+00000010
	c.li	a4,00000003
	c.lw	a5,0(a5)
	bne	a3,a4,0000000023001BCE

l23001BBA:
	c.beqz	a5,0000000023001BD8

l23001BBC:
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	c.jalr	a5

l23001BC4:
	c.mv	s0,a0
	c.beqz	a0,0000000023001BD8

l23001BC8:
	c.mv	a0,s1
	c.jal	0000000023001F50
	c.j	0000000023001B82

l23001BCE:
	c.beqz	a5,0000000023001BD8

l23001BD0:
	c.mv	a1,s1
	c.mv	a0,s0
	c.jalr	a5
	c.j	0000000023001BC4

l23001BD8:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.j	0000000023001F68

l23001BEA:
	c.li	s0,FFFFFFEA
	c.j	0000000023001B82

l23001BEE:
	c.li	s0,FFFFFFE6
	c.j	0000000023001B82

l23001BF2:
	c.li	s0,FFFFFFFF
	c.j	0000000023001B82

l23001BF6:
	c.li	s0,FFFFFFE9
	c.j	0000000023001B82

;; aos_close: 23001BFA
;;   Called from:
;;     2302F1B0 (in cat_cmd)
;;     2302F228 (in hexdump_cmd)
aos_close proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.jal	0000000023001F84
	c.li	s0,FFFFFFFE
	c.beqz	a0,0000000023001C40

l23001C0A:
	c.lw	a0,0(a4)
	c.mv	s1,a0
	c.li	s0,00000000
	c.lw	a4,0(a5)
	c.lw	a5,4(a5)
	c.beqz	a5,0000000023001C1A

l23001C16:
	c.jalr	a5
	c.mv	s0,a0

l23001C1A:
	lui	s2,00042017
	lw	a0,s2,-00000068
	c.li	a1,FFFFFFFF
	jal	ra,000000002303296C
	c.li	a5,00000001
	bne	a0,a5,0000000023001C4E

l23001C2E:
	c.mv	a0,s1
	c.jal	0000000023001F50
	lw	a0,s2,-00000068
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528

l23001C40:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23001C4E:
	c.li	s0,FFFFFFFF
	c.j	0000000023001C40

;; aos_read: 23001C52
;;   Called from:
;;     23002B5E (in event_read_cb)
;;     2302F172 (in cat_cmd)
;;     230304B8 (in console_cb_read)
aos_read proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.jal	0000000023001F84
	c.beqz	a0,0000000023001C74

l23001C5E:
	c.lw	a0,0(a5)
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.lw	a5,0(a4)
	lw	t1,a4,+00000008
	beq	t1,zero,0000000023001C7C

l23001C6E:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	t1

l23001C74:
	c.li	a0,FFFFFFFE

l23001C76:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23001C7C:
	c.li	a0,FFFFFFFF
	c.j	0000000023001C76

;; aos_write: 23001C80
;;   Called from:
;;     2302F2D4 (in cli_putstr)
aos_write proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.jal	0000000023001F84
	c.beqz	a0,0000000023001CA2

l23001C8C:
	c.lw	a0,0(a5)
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.lw	a5,0(a4)
	lw	t1,a4,+0000000C
	beq	t1,zero,0000000023001CAA

l23001C9C:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	t1

l23001CA2:
	c.li	a0,FFFFFFFE

l23001CA4:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23001CAA:
	c.li	a0,FFFFFFFF
	c.j	0000000023001CA4

;; aos_ioctl: 23001CAE
;;   Called from:
;;     23002C20 (in aos_post_event)
;;     2302F208 (in hexdump_cmd)
aos_ioctl proc
	blt	a0,zero,0000000023001CE4

l23001CB2:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	c.jal	0000000023001F84
	c.beqz	a0,0000000023001CE8

l23001CBE:
	c.lw	a0,0(a4)
	c.lwsp	s0,00000064
	c.lwsp	a2,00000084
	lbu	a3,a4,+00000010
	c.lw	a4,0(a5)
	c.li	a4,00000003
	bne	a3,a4,0000000023001CDE

l23001CD0:
	lw	t1,a5,+00000044

l23001CD4:
	beq	t1,zero,0000000023001CF0

l23001CD8:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	t1

l23001CDE:
	lw	t1,a5,+00000010
	c.j	0000000023001CD4

l23001CE4:
	c.li	a0,FFFFFFEA
	c.jr	ra

l23001CE8:
	c.li	a0,FFFFFFFE

l23001CEA:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23001CF0:
	addi	a0,zero,-00000047
	c.j	0000000023001CEA

;; aos_stat: 23001CF6
;;   Called from:
;;     2302F5B6 (in ls_cmd)
;;     2302F6D2 (in ls_cmd)
aos_stat proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.li	s0,FFFFFFEA
	c.beqz	a0,0000000023001D26

l23001D0A:
	lui	s0,00042017
	c.mv	s1,a0
	lw	a0,s0,-00000068
	c.mv	s4,a1
	c.li	a1,FFFFFFFF
	jal	ra,000000002303296C
	c.li	a5,00000001
	c.mv	s2,s0
	beq	a0,a5,0000000023001D3A

l23001D24:
	c.li	s0,FFFFFFFF

l23001D26:
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

l23001D3A:
	c.mv	a0,s1
	c.jal	0000000023001FE6
	c.mv	s5,a0
	c.bnez	a0,0000000023001D54

l23001D42:
	lw	a0,s0,-00000068
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528
	c.li	s0,FFFFFFED
	c.j	0000000023001D26

l23001D54:
	c.jal	0000000023001F0A
	c.mv	s3,a0
	lw	a0,s0,-00000068
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528
	c.li	s0,FFFFFFFE
	beq	s3,zero,0000000023001D26

l23001D6C:
	lbu	a4,s5,+00000010
	c.li	a5,00000003
	addi	s0,zero,-00000047
	bne	a4,a5,0000000023001D8C

l23001D7A:
	lw	a5,s5,+00000000
	c.lw	a5,24(a5)
	c.beqz	a5,0000000023001D8C

l23001D82:
	c.mv	a2,s4
	c.mv	a1,s1
	c.mv	a0,s3
	c.jalr	a5
	c.mv	s0,a0

l23001D8C:
	lw	a0,s2,-00000068
	c.li	a1,FFFFFFFF
	jal	ra,000000002303296C
	c.li	a5,00000001
	bne	a0,a5,0000000023001D24

l23001D9C:
	c.mv	a0,s3
	c.jal	0000000023001F50
	lw	a0,s2,-00000068
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528
	c.j	0000000023001D26

;; aos_opendir: 23001DB0
;;   Called from:
;;     2302F56A (in ls_cmd)
;;     2302F630 (in ls_cmd)
aos_opendir proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.bnez	a0,0000000023001DC4

l23001DC0:
	c.li	s0,00000000
	c.j	0000000023001DF2

l23001DC4:
	lui	s3,00042017
	c.mv	s1,a0
	lw	a0,s3,-00000068
	c.li	a1,FFFFFFFF
	c.mv	s4,s3
	jal	ra,000000002303296C
	c.li	a5,00000001
	bne	a0,a5,0000000023001DC0

l23001DDC:
	c.mv	a0,s1
	c.jal	0000000023001FE6
	c.mv	s0,a0
	c.bnez	a0,0000000023001E04

l23001DE4:
	lw	a0,s3,-00000068
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528

l23001DF2:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23001E04:
	c.jal	0000000023001F0A
	c.mv	s2,a0
	lw	a0,s3,-00000068
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528
	beq	s2,zero,0000000023001DC0

l23001E1A:
	lbu	a4,s0,+00000010
	c.li	a5,00000003
	beq	a4,a5,0000000023001E48

l23001E24:
	lw	a0,s4,-00000068
	c.li	a1,FFFFFFFF
	jal	ra,000000002303296C
	c.li	a5,00000001
	bne	a0,a5,0000000023001DC0

l23001E34:
	c.mv	a0,s2
	c.jal	0000000023001F50
	lw	a0,s4,-00000068
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528
	c.j	0000000023001DC0

l23001E48:
	c.lw	s0,0(a5)
	c.lw	a5,36(a5)
	c.beqz	a5,0000000023001E24

l23001E4E:
	c.mv	a1,s1
	c.mv	a0,s2
	c.jalr	a5
	c.mv	s0,a0
	c.beqz	a0,0000000023001E24

l23001E58:
	c.mv	a0,s2
	c.jal	0000000023001F68
	c.sw	s0,0(a0)
	c.j	0000000023001DF2

;; aos_closedir: 23001E60
;;   Called from:
;;     2302F5DA (in ls_cmd)
aos_closedir proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.li	s0,FFFFFFEA
	c.beqz	a0,0000000023001EBE

l23001E6E:
	c.mv	a1,a0
	c.lw	a0,0(a0)
	c.swsp	a1,00000084
	c.li	s0,FFFFFFFE
	c.jal	0000000023001F84
	c.mv	s1,a0
	c.beqz	a0,0000000023001EBE

l23001E7C:
	c.lw	a0,0(a5)
	c.li	a4,00000003
	addi	s0,zero,-00000047
	lbu	a3,a5,+00000010
	c.lwsp	a2,00000064
	bne	a3,a4,0000000023001E98

l23001E8E:
	c.lw	a5,0(a5)
	c.lw	a5,44(a5)
	c.beqz	a5,0000000023001E98

l23001E94:
	c.jalr	a5
	c.mv	s0,a0

l23001E98:
	lui	s2,00042017
	lw	a0,s2,-00000068
	c.li	a1,FFFFFFFF
	jal	ra,000000002303296C
	c.li	a5,00000001
	bne	a0,a5,0000000023001ECC

l23001EAC:
	c.mv	a0,s1
	c.jal	0000000023001F50
	lw	a0,s2,-00000068
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528

l23001EBE:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23001ECC:
	c.li	s0,FFFFFFFF
	c.j	0000000023001EBE

;; aos_readdir: 23001ED0
;;   Called from:
;;     2302F598 (in ls_cmd)
;;     2302F662 (in ls_cmd)
aos_readdir proc
	c.beqz	a0,0000000023001F06

l23001ED2:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.mv	a1,a0
	c.lw	a0,0(a0)
	c.swsp	a1,00000084
	c.jal	0000000023001F84
	c.beqz	a0,0000000023001EFE

l23001EE0:
	c.lw	a0,0(a5)
	c.li	a4,00000003
	lbu	a3,a5,+00000010
	bne	a3,a4,0000000023001EFE

l23001EEC:
	c.lw	a5,0(a5)
	lw	t1,a5,+00000028
	beq	t1,zero,0000000023001EFE

l23001EF6:
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	t1

l23001EFE:
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23001F06:
	c.li	a0,00000000
	c.jr	ra

;; new_file: 23001F0A
;;   Called from:
;;     23001B98 (in aos_open)
;;     23001D54 (in aos_stat)
;;     23001E04 (in aos_opendir)
new_file proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042010
	addi	a4,s0,+000007DC
	c.swsp	ra,00000084
	c.li	a5,00000000
	addi	s0,s0,+000007DC
	addi	a3,zero,+0000003C

l23001F22:
	c.lw	a4,0(a2)
	c.bnez	a2,0000000023001F44

l23001F26:
	c.li	a4,0000000C
	add	a5,a5,a4
	c.add	s0,a5
	c.sw	s0,0(a0)
	sw	zero,s0,+00000004
	sw	zero,s0,+00000008
	c.jal	00000000230020B2

l23001F3A:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23001F44:
	c.addi	a5,00000001
	c.addi	a4,0000000C
	bne	a5,a3,0000000023001F22

l23001F4C:
	c.li	s0,00000000
	c.j	0000000023001F3A

;; del_file: 23001F50
;;   Called from:
;;     23001BCA (in aos_open)
;;     23001C30 (in aos_close)
;;     23001D9E (in aos_stat)
;;     23001E36 (in aos_opendir)
;;     23001EAE (in aos_closedir)
del_file proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.jal	00000000230020BE
	c.lwsp	a2,00000020
	sw	zero,s0,+00000000
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; get_fd: 23001F68
;;   Called from:
;;     23001BE8 (in aos_open)
;;     23001E5A (in aos_opendir)
get_fd proc
	lui	a5,00042010
	addi	a5,a5,+000007DC
	c.sub	a0,a5
	lui	a5,000AAAAB
	addi	a5,a5,-00000555
	c.srai	a0,00000002
	add	a0,a0,a5
	c.addi	a0,00000002
	c.jr	ra

;; get_file: 23001F84
;;   Called from:
;;     23001C04 (in aos_close)
;;     23001C5A (in aos_read)
;;     23001C88 (in aos_write)
;;     23001CBA (in aos_ioctl)
;;     23001E76 (in aos_closedir)
;;     23001EDC (in aos_readdir)
;;     2300252A (in aos_poll)
;;     230025AA (in aos_poll)
get_file proc
	c.addi	a0,FFFFFFFE
	addi	a5,zero,+0000003B
	bltu	a5,a0,0000000023001FA6

l23001F8E:
	c.li	a5,0000000C
	add	a0,a0,a5
	lui	a5,00042010
	addi	a5,a5,+000007DC
	c.add	a5,a0
	c.lw	a5,0(a0)
	c.beqz	a0,0000000023001FA8

l23001FA2:
	c.mv	a0,a5
	c.jr	ra

l23001FA6:
	c.li	a0,00000000

l23001FA8:
	c.jr	ra

;; inode_init: 23001FAA
;;   Called from:
;;     23001B22 (in vfs_init)
inode_init proc
	lui	a0,00042011
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+00000258
	c.li	a1,00000000
	addi	a0,a0,-00000554
	c.swsp	ra,00000084
	jal	ra,000000002306D1BC
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; inode_alloc: 23001FC8
;;   Called from:
;;     230020F8 (in inode_reserve)
inode_alloc proc
	lui	a5,00042011
	addi	a5,a5,-00000554
	c.li	a0,00000000
	c.li	a4,0000001E

l23001FD4:
	lbu	a3,a5,+00000010
	c.beqz	a3,0000000023001FE4

l23001FDA:
	c.addi	a0,00000001
	c.addi	a5,00000014
	bne	a0,a4,0000000023001FD4

l23001FE2:
	c.li	a0,FFFFFFF4

l23001FE4:
	c.jr	ra

;; inode_open: 23001FE6
;;   Called from:
;;     23001B6C (in aos_open)
;;     23001D3C (in aos_stat)
;;     23001DDE (in aos_opendir)
inode_open proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042011
	addi	s0,s0,-00000554
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s1,a0
	addi	s5,s0,+00000258
	c.li	s6,00000003
	addi	s4,zero,+0000002F

l2300200C:
	lw	s2,s0,+00000008
	c.mv	s3,s0
	bne	s2,zero,0000000023002034

l23002016:
	c.addi	s0,00000014
	bne	s0,s5,000000002300200C

l2300201C:
	c.li	s3,00000000

l2300201E:
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

l23002034:
	lbu	a5,s0,+00000010
	beq	a5,s6,0000000023002048

l2300203C:
	c.lw	s0,8(a0)
	c.mv	a1,s1
	jal	ra,000000002306D404
	c.bnez	a0,0000000023002016

l23002046:
	c.j	000000002300201E

l23002048:
	c.mv	a0,s2
	jal	ra,000000002306D630
	c.mv	a2,a0
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,000000002306D6BC
	c.bnez	a0,000000002300203C

l2300205A:
	c.lw	s0,8(a0)
	jal	ra,000000002306D630
	c.add	a0,s1
	lbu	a5,a0,+00000000
	bne	a5,s4,000000002300203C

l2300206A:
	c.j	000000002300201E

;; inode_forearch_name: 2300206C
;;   Called from:
;;     2302F71C (in ls_cmd)
inode_forearch_name proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042011
	addi	s0,s0,-00000554
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.mv	s3,a0
	c.mv	s4,a1
	addi	s2,s0,+00000258
	c.li	s1,00000000

l2300208C:
	c.lw	s0,8(a5)
	c.beqz	a5,000000002300209A

l23002090:
	c.mv	a1,s0
	c.mv	a0,s4
	c.addi	s1,00000001
	c.jalr	s3
	c.bnez	a0,00000000230020A0

l2300209A:
	c.addi	s0,00000014
	bne	s0,s2,000000002300208C

l230020A0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; inode_ref: 230020B2
;;   Called from:
;;     23001F38 (in new_file)
inode_ref proc
	lbu	a5,a0,+00000011
	c.addi	a5,00000001
	sb	a5,a0,+00000011
	c.jr	ra

;; inode_unref: 230020BE
;;   Called from:
;;     23001F5A (in del_file)
inode_unref proc
	lbu	a5,a0,+00000011
	c.beqz	a5,00000000230020CA

l230020C4:
	c.addi	a5,FFFFFFFF
	sb	a5,a0,+00000011

l230020CA:
	c.jr	ra

;; inode_reserve: 230020CC
;;   Called from:
;;     23044BD8 (in aos_register_driver)
;;     23044C5C (in aos_register_fs)
inode_reserve proc
	c.bnez	a0,00000000230020D4

l230020CE:
	c.li	a5,FFFFFFEA
	c.mv	a0,a5
	c.jr	ra

l230020D4:
	c.beqz	a1,00000000230020CE

l230020D6:
	sw	zero,a1,+00000000
	lbu	a4,a0,+00000000
	addi	a5,zero,+0000002F
	bne	a4,a5,00000000230020CE

l230020E6:
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.mv	s4,a1
	c.mv	s1,a0
	c.jal	0000000023001FC8
	c.mv	a5,a0
	blt	a0,zero,0000000023002144

l23002100:
	c.li	a4,0000001D
	c.li	s0,00000000
	blt	a4,a0,0000000023002118

l23002108:
	c.li	a4,00000014
	add	a5,a0,a4
	lui	s0,00042011
	addi	s0,s0,-00000554
	c.add	s0,a5

l23002118:
	c.mv	a0,s1
	jal	ra,000000002306D630
	c.mv	s3,a0
	c.addi	a0,00000001
	jal	ra,000000002303598A
	c.mv	s2,a0
	c.li	a5,FFFFFFF4
	c.beqz	a0,0000000023002144

l2300212C:
	c.mv	a2,s3
	c.mv	a1,s1
	jal	ra,000000002306CF80
	sw	s2,s0,+00000008
	c.add	s2,s3
	sb	zero,s2,+00000000
	sw	s0,s4,+00000000
	c.li	a5,00000000

l23002144:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

;; get_context: 23002156
;;   Called from:
;;     2300218E (in aos_loop_set_eventfd)
;;     23002232 (in aos_poll_read_fd)
;;     23002310 (in aos_post_delayed_action)
;;     23002390 (in aos_loop_run)
get_context proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,0004200E
	addi	s1,s1,+00000098
	c.lw	s1,0(a0)
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.jal	0000000023002768
	c.bnez	a0,000000002300217C

l2300216C:
	lui	s0,0004200E
	addi	s0,s0,+0000009C
	c.lw	s0,0(a1)
	c.lw	s1,0(a0)
	c.jal	0000000023002728
	c.lw	s0,0(a0)

l2300217C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; aos_loop_set_eventfd: 23002186
;;   Called from:
;;     23002BE8 (in aos_event_service_init)
aos_loop_set_eventfd proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.jal	0000000023002156
	c.sw	a0,16(s0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; aos_loop_init: 2300219A
;;   Called from:
;;     2300137A (in aos_loop_proc)
aos_loop_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,0004200E
	lw	a0,s2,+00000098
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	lui	s1,0004200E
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.jal	0000000023002768
	lw	a5,s1,+0000009C
	addi	s3,s2,+00000098
	addi	s1,s1,+0000009C
	c.bnez	a5,00000000230021F6

l230021C2:
	addi	a0,s2,+00000098
	c.jal	00000000230026C4

l230021C8:
	c.li	a0,0000001C
	jal	ra,000000002303598A
	c.mv	s0,a0
	c.beqz	a0,00000000230021DA

l230021D2:
	c.li	a2,0000001C
	c.li	a1,00000000
	jal	ra,000000002306D1BC

l230021DA:
	c.lw	s1,0(a5)
	c.bnez	a5,00000000230021E0

l230021DE:
	c.sw	s1,0(s0)

l230021E0:
	c.sw	s0,0(s0)
	lw	a0,s3,+00000000
	c.li	a5,FFFFFFFF
	c.sw	s0,16(a5)
	c.mv	a1,s0
	c.sw	s0,4(s0)
	c.jal	0000000023002728
	jal	ra,0000000023002BB0
	c.j	0000000023002206

l230021F6:
	c.mv	s0,a0
	c.beqz	a0,00000000230021C8

l230021FA:
	lui	a0,0002306F
	addi	a0,a0,+00000150
	jal	ra,0000000023003AC6

l23002206:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; aos_poll_read_fd: 23002216
;;   Called from:
;;     230013B4 (in aos_loop_proc)
;;     23002BE2 (in aos_event_service_init)
aos_poll_read_fd proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.mv	s2,a0
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s8,00000004
	c.mv	s6,a1
	c.mv	s7,a2
	c.jal	0000000023002156
	blt	s2,zero,00000000230022F6

l23002238:
	lbu	s5,a0,+00000016
	c.li	s8,0000000C
	c.mv	s0,a0
	addi	s4,s5,+00000001
	add	s3,s4,s8
	c.mv	a0,s3
	jal	ra,000000002303598A
	c.mv	s1,a0
	slli	a0,s4,00000003
	jal	ra,000000002303598A
	c.mv	s4,a0
	c.beqz	s1,000000002300225E

l2300225C:
	c.bnez	a0,0000000023002290

l2300225E:
	lui	a0,0002306F
	addi	a0,a0,+0000017C
	jal	ra,0000000023003AC6
	c.mv	a0,s1
	jal	ra,0000000023035A72
	c.mv	a0,s4
	jal	ra,0000000023035A72
	c.li	a0,FFFFFFF4

l23002278:
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

l23002290:
	c.li	a2,00000000
	c.li	a1,00000003
	c.mv	a0,s2
	c.jal	00000000230025CE
	c.lui	a2,00004000
	c.or	a2,a0
	c.li	a1,00000004
	c.mv	a0,s2
	c.jal	00000000230025CE
	add	a2,s5,s8
	lbu	a5,s0,+00000016
	c.lw	s0,12(a1)
	c.mv	a0,s1
	c.addi	a5,00000001
	sb	a5,s0,+00000016
	c.addi	s3,FFFFFFF4
	jal	ra,000000002306CF80
	c.lw	s0,12(a0)
	jal	ra,0000000023035A72
	c.lw	s0,8(a1)
	c.sw	s0,12(s1)
	slli	a2,s5,00000003
	c.mv	a0,s4
	jal	ra,000000002306CF80
	c.lw	s0,8(a0)
	c.add	s1,s3
	jal	ra,0000000023035A72
	sw	s4,s0,+00000008
	sw	s2,s1,+00000000
	sw	s7,s1,+00000004
	sw	s6,s1,+00000008
	lhu	a5,s0,+00000014
	c.li	a0,00000000
	bge	a5,s2,0000000023002278

l230022F0:
	sh	s2,s0,+00000014
	c.j	0000000023002278

l230022F6:
	c.li	a0,FFFFFFEA
	c.j	0000000023002278

;; aos_post_delayed_action: 230022FA
;;   Called from:
;;     23000B26 (in app_delayed_action_ble)
;;     23000B42 (in app_delayed_action_wifi)
;;     230013EA (in aos_loop_proc)
;;     23004756 (in event_cb_wifi_event_mgmr)
;;     23004780 (in trigger_auto_denoise)
aos_post_delayed_action proc
	c.beqz	a1,000000002300237A

l230022FC:
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s3,a2
	c.mv	s2,a1
	c.mv	s1,a0
	jal	ra,0000000023002156
	c.mv	s4,a0
	addi	a0,zero,+00000020
	jal	ra,000000002303598A
	c.mv	s0,a0
	c.li	a0,FFFFFFF4
	c.beqz	s0,0000000023002366

l23002324:
	c.jal	0000000023002888
	srai	a5,s1,0000001F
	c.add	a0,s1
	c.add	a1,a5
	sltu	a4,a0,s1
	c.add	a4,a1
	c.sw	s0,8(a0)
	c.sw	s0,12(a4)
	sw	s3,s0,+00000010
	sw	s2,s0,+00000014
	c.sw	s0,24(s1)
	lw	a5,s4,+00000004

l23002346:
	beq	a5,s4,000000002300235A

l2300234A:
	c.lw	a5,12(a3)
	blt	a4,a3,000000002300235A

l23002350:
	bne	a3,a4,0000000023002376

l23002354:
	c.lw	a5,8(a3)
	bgeu	a0,a3,0000000023002376

l2300235A:
	c.lw	a5,0(a4)
	c.sw	s0,4(a5)
	c.li	a0,00000000
	c.sw	s0,0(a4)
	c.sw	a4,4(s0)
	c.sw	a5,0(s0)

l23002366:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23002376:
	c.lw	a5,4(a5)
	c.j	0000000023002346

l2300237A:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; aos_loop_run: 2300237E
;;   Called from:
;;     230013EE (in aos_loop_proc)
aos_loop_run proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s6,00000000
	jal	ra,0000000023002156
	c.mv	s0,a0
	c.li	s3,0000000C
	c.li	s4,00000001
	c.li	s5,00000004

l2300239C:
	lbu	a5,s0,+00000018
	c.bnez	a5,00000000230023B0

l230023A2:
	c.lw	s0,4(s1)
	lbu	s2,s0,+00000016
	bne	s0,s1,00000000230023C8

l230023AC:
	bne	s2,zero,00000000230023C8

l230023B0:
	sb	zero,s0,+00000018
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

l230023C8:
	c.li	a2,FFFFFFFF
	beq	s0,s1,00000000230023E2

l230023CE:
	c.jal	0000000023002888
	c.lw	s1,12(a5)
	c.lw	s1,8(a2)
	blt	a1,a5,00000000230023E0

l230023D8:
	bne	a5,a1,000000002300241C

l230023DC:
	bgeu	a0,a2,000000002300241C

l230023E0:
	c.sub	a2,a0

l230023E2:
	c.li	a5,00000000

l230023E4:
	c.lw	s0,8(a0)
	blt	a5,s2,0000000023002420

l230023EA:
	c.mv	a1,s2
	c.jal	000000002300249C
	c.mv	s6,a0
	bge	a0,zero,000000002300243E

l230023F4:
	jal	ra,000000002306CE0C
	c.lw	a0,0(a5)
	beq	a5,s5,000000002300243E

l230023FE:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	lui	a0,0002306F
	addi	a0,a0,+0000016C
	c.addi16sp	00000020
	jal	zero,0000000023003AC6

l2300241C:
	c.li	a2,00000000
	c.j	00000000230023E2

l23002420:
	add	a4,a5,s3
	c.lw	s0,12(a3)
	slli	a1,a5,00000003
	c.add	a0,a1
	c.addi	a5,00000001
	c.add	a3,a4
	c.lw	a3,0(a4)
	c.sw	a0,0(a4)
	c.lw	s0,8(a4)
	c.add	a4,a1
	sh	s4,a4,+00000004
	c.j	00000000230023E4

l2300243E:
	c.lw	s0,4(s1)
	beq	s0,s1,000000002300246A

l23002444:
	c.jal	0000000023002888
	c.lw	s1,12(a5)
	blt	a1,a5,000000002300246A

l2300244C:
	bne	a5,a1,0000000023002456

l23002450:
	c.lw	s1,8(a5)
	bltu	a0,a5,000000002300246A

l23002456:
	c.lw	s1,4(a5)
	c.lw	s1,0(a4)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	c.lw	s1,16(a0)
	c.lw	s1,20(a5)
	c.jalr	a5
	c.mv	a0,s1
	jal	ra,0000000023035A72

l2300246A:
	c.li	s1,00000000
	bge	zero,s6,000000002300239C

l23002470:
	beq	s1,s2,000000002300239C

l23002474:
	c.lw	s0,8(a5)
	slli	a4,s1,00000003
	c.add	a5,a4
	lhu	a5,a5,+00000006
	c.andi	a5,00000001
	c.beqz	a5,0000000023002494

l23002484:
	add	a5,s1,s3
	c.lw	s0,12(a4)
	c.add	a5,a4
	c.lw	a5,8(a4)
	c.lw	a5,4(a1)
	c.lw	a5,0(a0)
	c.jalr	a4

l23002494:
	c.addi	s1,00000001
	c.j	0000000023002470

;; vfs_poll_notify: 23002498
vfs_poll_notify proc
	c.mv	a0,a1
	c.j	0000000023002844

;; aos_poll: 2300249C
;;   Called from:
;;     230023EC (in aos_loop_run)
aos_poll proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.mv	s0,a0
	c.mv	s2,a1
	c.addi4spn	a0,00000004
	c.li	a1,00000000
	c.swsp	s3,00000094
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.mv	s3,a2
	c.jal	00000000230027FE
	c.li	a5,00000000
	c.li	a4,00000008

l230024C0:
	c.addi4spn	a3,00000008
	c.add	a3,a5
	sb	zero,a3,+00000000
	c.addi	a5,00000001
	bne	a5,a4,00000000230024C0

l230024CE:
	addi	s1,s0,+00000006
	c.mv	a4,s1
	c.li	a5,00000000

l230024D6:
	blt	a5,s2,00000000230024FA

l230024DA:
	c.mv	s6,s0
	c.li	s7,00000000
	c.li	s4,00000001
	lui	s5,00023002

l230024E4:
	blt	s7,s2,0000000023002504

l230024E8:
	c.mv	a1,s3
	bge	s3,zero,00000000230024F0

l230024EE:
	c.li	a1,FFFFFFFF

l230024F0:
	c.addi4spn	a0,00000004
	c.jal	0000000023002824
	c.li	a3,00000000
	c.li	a2,00000001
	c.j	000000002300256E

l230024FA:
	sh	zero,a4,+00000000
	c.addi	a5,00000001
	c.addi	a4,00000008
	c.j	00000000230024D6

l23002504:
	lw	a0,s6,+00000000
	blt	s4,a0,000000002300252A

l2300250C:
	srli	a5,a0,00000005
	c.addi4spn	a4,00000010
	c.slli	a5,02
	c.add	a5,a4
	lw	a4,a5,-00000008
	sll	a0,s4,a0
	c.or	a0,a4
	sw	a0,a5,+00000FF8

l23002524:
	c.addi	s7,00000001
	c.addi	s6,00000008
	c.j	00000000230024E4

l2300252A:
	jal	ra,0000000023001F84
	c.beqz	a0,00000000230025A0

l23002530:
	c.lw	a0,0(a5)
	c.addi4spn	a4,00000004
	c.mv	a3,s6
	c.lw	a5,0(a5)
	addi	a2,s5,+00000498
	c.li	a1,00000001
	c.lw	a5,20(a5)
	c.jalr	a5
	c.j	0000000023002524

l23002544:
	lw	a5,s1,-00000006
	c.addi4spn	a1,00000010
	srli	a4,a5,00000005
	c.slli	a4,02
	c.add	a4,a1
	lw	a4,a4,-00000008
	sll	a5,a2,a5
	c.and	a5,a4
	c.beqz	a5,000000002300256A

l2300255E:
	lhu	a5,s1,+00000000
	ori	a5,a5,+00000001
	sh	a5,s1,+00000000

l2300256A:
	c.addi	a3,00000001
	c.addi	s1,00000008

l2300256E:
	blt	a3,s2,0000000023002544

l23002572:
	c.li	s4,00000000

l23002574:
	c.li	s1,00000000
	c.li	s3,00000000
	c.li	s5,00000001

l2300257A:
	blt	s3,s2,00000000230025A4

l2300257E:
	c.addi4spn	a0,00000004
	c.jal	000000002300281A
	beq	s4,zero,0000000023002588

l23002586:
	c.li	s1,00000000

l23002588:
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

l230025A0:
	c.li	s4,FFFFFFFF
	c.j	0000000023002574

l230025A4:
	c.lw	s0,0(a0)
	bge	s5,a0,00000000230025C8

l230025AA:
	jal	ra,0000000023001F84
	c.beqz	a0,00000000230025C8

l230025B0:
	c.lw	a0,0(a5)
	c.li	a4,00000000
	c.li	a3,00000000
	c.lw	a5,0(a5)
	c.li	a2,00000000
	c.li	a1,00000000
	c.lw	a5,20(a5)
	c.jalr	a5
	lh	a5,s0,+00000006
	c.beqz	a5,00000000230025C8

l230025C6:
	c.addi	s1,00000001

l230025C8:
	c.addi	s3,00000001
	c.addi	s0,00000008
	c.j	000000002300257A

;; aos_fcntl: 230025CE
;;   Called from:
;;     23002296 (in aos_poll_read_fd)
;;     230022A0 (in aos_poll_read_fd)
aos_fcntl proc
	c.li	a5,FFFFFFEA
	blt	a0,zero,00000000230025DE

l230025D4:
	c.li	a4,00000001
	c.li	a5,00000000
	blt	a4,a0,00000000230025DE

l230025DC:
	c.li	a5,FFFFFFFE

l230025DE:
	c.mv	a0,a5
	c.jr	ra

;; dfl_entry: 230025E2
dfl_entry proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.lw	a0,8(s1)
	c.lw	a0,4(s0)
	jal	ra,0000000023035A72
	c.mv	a0,s1
	c.jalr	s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,000000002303386C

;; aos_task_new: 23002604
;;   Called from:
;;     2302F132 (in ota_cmd)
aos_task_new proc
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	c.mv	s4,a0
	addi	a0,zero,+0000009C
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s5,00000080
	c.mv	s3,a3
	c.mv	s5,a2
	c.swsp	s6,00000000
	c.mv	s6,a1
	jal	ra,000000002303598A
	c.mv	s0,a0
	c.li	a0,0000000C
	jal	ra,000000002303598A
	c.mv	s1,a0
	c.mv	a0,s3
	jal	ra,000000002303598A
	c.mv	a2,s3
	c.li	a1,00000000
	c.mv	s2,a0
	jal	ra,000000002306D1BC
	addi	a2,zero,+0000009C
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002306D1BC
	c.li	a5,FFFFFFF0
	c.sw	s0,96(a5)
	c.li	a2,0000001F
	c.mv	a1,s4
	sw	s2,s0,+00000074
	addi	a0,s0,+00000078
	jal	ra,000000002306D7AC
	lui	a5,00020171
	addi	a5,a5,+00000020
	sw	a5,s0,+00000098
	lui	a0,00023002
	c.sw	s1,0(s0)
	sw	s6,s1,+00000004
	sw	s5,s1,+00000008
	c.mv	a6,s0
	c.mv	a5,s2
	c.li	a4,0000000A
	c.mv	a3,s1
	srli	a2,s3,00000002
	c.mv	a1,s4
	addi	a0,a0,+000005E2
	jal	ra,0000000023033750
	c.bnez	a0,00000000230026BA

l23002692:
	c.mv	a0,s0
	jal	ra,0000000023035A72
	c.mv	a0,s2
	jal	ra,0000000023035A72
	c.mv	a0,s1
	jal	ra,0000000023035A72
	c.li	a0,FFFFFFFF

l230026A6:
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

l230026BA:
	c.li	a0,00000000
	c.j	00000000230026A6

;; aos_task_exit: 230026BE
;;   Called from:
;;     2302F138 (in tftp_ota_thread)
aos_task_exit proc
	c.li	a0,00000000
	jal	zero,000000002303386C

;; aos_task_key_create: 230026C4
;;   Called from:
;;     230021C6 (in aos_loop_init)
aos_task_key_create proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,00000000230344BE
	lw	a4,a0,+00000098
	lui	a5,00020171
	addi	a5,a5,+00000020
	bne	a4,a5,0000000023002724

l230026E0:
	c.lw	a0,96(a5)
	andi	a4,a5,+00000001
	c.beqz	a4,0000000023002712

l230026E8:
	andi	a4,a5,+00000002
	c.beqz	a4,0000000023002718

l230026EE:
	andi	a4,a5,+00000004
	c.beqz	a4,000000002300271E

l230026F4:
	andi	a3,a5,+00000008
	c.li	a4,FFFFFFFF
	c.bnez	a3,0000000023002708

l230026FC:
	c.li	a4,00000003
	c.li	a3,00000008

l23002700:
	c.or	a5,a3
	c.sw	a0,96(a5)
	c.sw	s0,0(a4)
	c.li	a4,00000000

l23002708:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,a4
	c.addi	sp,00000010
	c.jr	ra

l23002712:
	c.li	a4,00000000
	c.li	a3,00000001
	c.j	0000000023002700

l23002718:
	c.li	a4,00000001
	c.li	a3,00000002
	c.j	0000000023002700

l2300271E:
	c.li	a4,00000002
	c.li	a3,00000004
	c.j	0000000023002700

l23002724:
	c.li	a4,FFFFFFFF
	c.j	0000000023002708

;; aos_task_setspecific: 23002728
;;   Called from:
;;     23002178 (in get_context)
;;     230021EE (in aos_loop_init)
aos_task_setspecific proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.swsp	a1,00000084
	jal	ra,00000000230344BE
	c.li	a4,00000003
	bltu	a4,s0,0000000023002764

l2300273C:
	lw	a3,a0,+00000098
	lui	a4,00020171
	addi	a4,a4,+00000020
	c.mv	a5,a0
	c.li	a0,FFFFFFFF
	bne	a3,a4,000000002300275C

l23002750:
	c.addi	s0,00000018
	c.lwsp	a2,00000064
	c.slli	s0,02
	c.add	s0,a5
	c.sw	s0,4(a1)
	c.li	a0,00000000

l2300275C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23002764:
	c.li	a0,FFFFFFFF
	c.j	000000002300275C

;; aos_task_getspecific: 23002768
;;   Called from:
;;     23002168 (in get_context)
;;     230021B2 (in aos_loop_init)
aos_task_getspecific proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,00000000230344BE
	c.li	a4,00000003
	bltu	a4,s0,000000002300279E

l2300277A:
	lw	a3,a0,+00000098
	lui	a4,00020171
	addi	a4,a4,+00000020
	c.mv	a5,a0
	c.li	a0,00000000
	bne	a3,a4,0000000023002796

l2300278E:
	c.addi	s0,00000018
	c.slli	s0,02
	c.add	s0,a5
	c.lw	s0,4(a0)

l23002796:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2300279E:
	c.li	a0,00000000
	c.j	0000000023002796

;; aos_mutex_new: 230027A2
;;   Called from:
;;     2300293A (in event_open)
;;     230372C4 (in hal_uart_init)
;;     23044CDE (in vfs_uart_open)
aos_mutex_new proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,00000000230326B8
	c.sw	s0,0(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	sltiu	a0,a0,+00000001
	sub	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; aos_mutex_free: 230027C2
;;   Called from:
;;     23002A48 (in event_close)
;;     2303738E (in hal_uart_finalize)
;;     23044DE6 (in vfs_uart_close)
aos_mutex_free proc
	c.lw	a0,0(a0)
	jal	zero,0000000023032B18

;; aos_mutex_lock: 230027C8
;;   Called from:
;;     230028D8 (in event_poll)
;;     23002974 (in _event_write.isra.0)
;;     23002AAE (in event_read)
;;     23044E42 (in vfs_uart_read)
;;     23044EE4 (in vfs_uart_poll)
;;     23044F68 (in vfs_uart_sync)
;;     23045056 (in vfs_uart_ioctl)
aos_mutex_lock proc
	c.beqz	a0,00000000230027DC

l230027CA:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,0(a0)
	jal	ra,000000002303296C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230027DC:
	c.li	a0,00000000
	c.jr	ra

;; aos_mutex_unlock: 230027E0
;;   Called from:
;;     230028EE (in event_poll)
;;     230029D8 (in _event_write.isra.0)
;;     23002AF6 (in event_read)
;;     23044E72 (in vfs_uart_read)
;;     23044EFE (in vfs_uart_poll)
;;     23044F76 (in vfs_uart_sync)
;;     23045082 (in vfs_uart_ioctl)
aos_mutex_unlock proc
	c.beqz	a0,00000000230027FA

l230027E2:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,0(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230027FA:
	c.li	a0,00000000
	c.jr	ra

;; aos_sem_new: 230027FE
;;   Called from:
;;     230024BA (in aos_poll)
aos_sem_new proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	addi	a0,zero,+00000080
	c.swsp	ra,00000084
	jal	ra,00000000230324F0
	c.sw	s0,0(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; aos_sem_free: 2300281A
;;   Called from:
;;     23002580 (in aos_poll)
aos_sem_free proc
	c.beqz	a0,0000000023002822

l2300281C:
	c.lw	a0,0(a0)
	jal	zero,0000000023032B18

l23002822:
	c.jr	ra

;; aos_sem_wait: 23002824
;;   Called from:
;;     230024F2 (in aos_poll)
aos_sem_wait proc
	c.beqz	a0,0000000023002840

l23002826:
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

l23002840:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; aos_sem_signal: 23002844
;;   Called from:
;;     2300249A (in vfs_poll_notify)
aos_sem_signal proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	zero,00000084
	c.beqz	a0,0000000023002866

l2300284C:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.lw	a0,0(a0)
	c.beqz	a5,000000002300286C

l23002858:
	c.addi4spn	a1,0000000C
	jal	ra,00000000230327A6
	c.lwsp	a2,000000E4
	c.beqz	a5,0000000023002866

l23002862:
	jal	ra,0000000023033E52

l23002866:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2300286C:
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528
	c.j	0000000023002866

;; aos_malloc: 23002878
;;   Called from:
;;     2300292A (in event_open)
;;     230029F4 (in _event_write.isra.0)
;;     23002C3E (in aos_register_event_filter)
;;     2302F240 (in aos_cli_init)
;;     2302F4EC (in proc_onecmd)
;;     2304429E (in romfs_opendir)
aos_malloc proc
	jal	zero,000000002303598A

;; free: 2300287C
free proc
	jal	zero,0000000023035A72

;; aos_free: 23002880
;;   Called from:
;;     23002A62 (in event_close)
;;     23002A7A (in event_close)
;;     23002A88 (in event_close)
;;     23002B0E (in event_read)
;;     2302F4BE (in proc_onecmd)
;;     23043E92 (in romfs_closedir)
;;     230442FA (in romfs_opendir)
aos_free proc
	jal	zero,0000000023035A72

;; malloc: 23002884
malloc proc
	jal	zero,000000002303598A

;; aos_now_ms: 23002888
;;   Called from:
;;     23000D12 (in _connect_wifi)
;;     23000E1E (in _connect_wifi)
;;     23000F0E (in _connect_wifi)
;;     2300109E (in event_cb_wifi_event)
;;     230010C6 (in event_cb_wifi_event)
;;     2300125C (in event_cb_wifi_event)
;;     23002324 (in aos_post_delayed_action)
;;     230023CE (in aos_loop_run)
;;     23002444 (in aos_loop_run)
;;     2302F74C (in uptime_cmd)
;;     23036B8C (in sec_trng_IRQHandler)
aos_now_ms proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000008
	c.swsp	ra,0000008C
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	jal	ra,0000000023033AFA
	c.li	a5,00000001
	beq	a0,a5,00000000230028A0

l2300289E:
	c.j	000000002300289E

l230028A0:
	c.lwsp	a2,000000A4
	c.li	a4,FFFFFFFF
	c.lwsp	s0,00000044
	sltu	a4,a4,a3
	sub	a5,zero,a3
	c.lwsp	t3,00000020
	c.add	a0,a5
	srli	a1,a3,0000001F
	sltu	a5,a0,a5
	c.addi16sp	00000020
	c.add	a1,a4
	c.add	a1,a5
	c.jr	ra

;; event_poll: 230028C2
event_poll proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a0,4(s0)
	c.mv	s1,a1
	c.li	a1,FFFFFFFF
	c.mv	a0,s0
	c.swsp	a2,00000084
	c.swsp	a3,00000004
	c.swsp	a4,00000080
	jal	ra,00000000230027C8
	c.lwsp	tp,000000C4
	c.lwsp	s0,000000A4
	c.lwsp	a2,00000084
	c.bnez	s1,00000000230028FE

l230028E4:
	sw	zero,s0,+00000004
	sw	zero,s0,+0000000C

l230028EC:
	c.mv	a0,s0
	jal	ra,00000000230027E0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l230028FE:
	c.lw	s0,16(a5)
	c.sw	s0,4(a2)
	c.sw	s0,8(a3)
	c.sw	s0,12(a4)
	c.beqz	a5,00000000230028EC

l23002908:
	lhu	a5,a3,+00000006
	c.mv	a1,a4
	c.mv	a0,a3
	ori	a5,a5,+00000001
	sh	a5,a3,+00000006
	c.jalr	a2
	c.j	00000000230028EC

;; event_open: 2300291C
event_open proc
	c.addi	sp,FFFFFFF0
	addi	a0,zero,+00000028
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s1,a1
	c.jal	0000000023002878
	addi	a2,zero,+00000028
	c.li	a1,00000000
	c.mv	s0,a0
	jal	ra,000000002306D1BC
	c.mv	a0,s0
	jal	ra,00000000230027A2
	addi	a5,s0,+00000014
	c.sw	s0,20(a5)
	c.sw	s0,24(a5)
	addi	a5,s0,+00000020
	c.sw	s0,32(a5)
	c.sw	s0,36(a5)
	c.sw	s1,4(s0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; _event_write.isra.0: 2300295C
;;   Called from:
;;     23002A2C (in event_ioctl)
;;     23002A38 (in event_write)
_event_write.isra.0 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s4,0000000C
	c.mv	s4,a1
	c.li	a1,FFFFFFFF
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s0,a0
	c.swsp	a2,00000084
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.mv	s3,a3
	jal	ra,00000000230027C8
	c.lwsp	a2,00000084
	c.lw	s0,28(a5)
	c.mv	s2,a2
	bge	zero,a5,00000000230029EE

l23002982:
	c.lw	s0,36(s1)
	c.lw	s1,8(a5)
	bne	a2,a5,00000000230029EE

l2300298A:
	c.lw	s1,4(a5)
	c.lw	s1,0(a4)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	c.lw	s0,28(a5)
	c.addi	a5,FFFFFFFF
	c.sw	s0,28(a5)

l23002998:
	c.lw	s0,16(a5)
	c.mv	a1,s4
	addi	a0,s1,+0000000C
	c.addi	a5,00000001
	c.sw	s0,16(a5)
	c.sw	s1,8(a2)
	jal	ra,000000002306CF80
	addi	a4,s0,+00000014
	beq	s3,zero,0000000023002A02

l230029B2:
	c.lw	s0,24(a5)
	c.sw	s1,0(a4)
	c.sw	s1,4(a5)
	c.sw	s0,24(s1)
	c.sw	a5,0(s1)

l230029BC:
	c.lw	s0,4(a5)
	c.beqz	a5,00000000230029D6

l230029C0:
	c.lw	s0,8(a4)
	lhu	a5,a4,+00000006
	ori	a5,a5,+00000001
	sh	a5,a4,+00000006
	c.lw	s0,4(a5)
	c.lw	s0,12(a1)
	c.lw	s0,8(a0)
	c.jalr	a5

l230029D6:
	c.mv	a0,s0
	jal	ra,00000000230027E0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s2
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l230029EE:
	addi	a0,a2,+0000000C
	c.swsp	a2,00000084
	jal	ra,0000000023002878
	c.mv	s1,a0
	c.lwsp	a2,00000084
	c.bnez	a0,0000000023002998

l230029FE:
	c.li	s2,FFFFFFFF
	c.j	00000000230029D6

l23002A02:
	c.lw	s0,20(a5)
	c.sw	s1,4(a4)
	c.sw	s1,0(a5)
	c.sw	a5,4(s1)
	c.sw	s0,20(s1)
	c.j	00000000230029BC

;; event_ioctl: 23002A0E
event_ioctl proc
	c.mv	a5,a1
	c.li	a4,00000001
	c.mv	a1,a2
	srai	a2,a5,00000004
	c.andi	a5,0000000F
	beq	a5,a4,0000000023002A28

l23002A1E:
	c.li	a4,00000002
	beq	a5,a4,0000000023002A30

l23002A24:
	c.li	a0,FFFFFFFF
	c.jr	ra

l23002A28:
	c.li	a3,00000000

l23002A2A:
	c.lw	a0,4(a0)
	jal	zero,000000002300295C

l23002A30:
	c.li	a3,00000001
	c.j	0000000023002A2A

;; event_write: 23002A34
event_write proc
	c.lw	a0,4(a0)
	c.li	a3,00000000
	jal	zero,000000002300295C

;; event_close: 23002A3C
event_close proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,4(s0)
	c.mv	a0,s0
	jal	ra,00000000230027C2
	addi	s1,s0,+00000014

l23002A50:
	c.lw	s0,24(a0)
	bne	a0,s1,0000000023002A72

l23002A56:
	addi	s1,s0,+00000020

l23002A5A:
	c.lw	s0,36(a0)
	bne	a0,s1,0000000023002A80

l23002A60:
	c.mv	a0,s0
	jal	ra,0000000023002880
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23002A72:
	c.lw	a0,0(a4)
	c.lw	a0,4(a5)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	jal	ra,0000000023002880
	c.j	0000000023002A50

l23002A80:
	c.lw	a0,0(a4)
	c.lw	a0,4(a5)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	jal	ra,0000000023002880
	c.j	0000000023002A5A

;; event_read: 23002A8E
event_read proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.lw	a0,4(s0)
	lw	s2,s0,+00000010
	beq	s2,zero,0000000023002AFA

l23002AA6:
	c.mv	s4,a1
	c.mv	a0,s0
	c.li	a1,FFFFFFFF
	c.mv	s3,a2
	jal	ra,00000000230027C8
	c.lw	s0,24(s1)
	c.lw	s1,0(a4)
	c.lw	s1,4(a5)
	c.sw	a4,4(a5)
	c.sw	a5,0(a4)
	lw	s2,s1,+00000008
	bgeu	s3,s2,0000000023002AC6

l23002AC4:
	c.mv	s2,s3

l23002AC6:
	c.mv	a2,s2
	addi	a1,s1,+0000000C
	c.mv	a0,s4
	jal	ra,000000002306CF80
	c.lw	s0,28(a4)
	c.li	a5,00000003
	blt	a5,a4,0000000023002B0C

l23002ADA:
	c.lw	s0,36(a5)
	addi	a4,s0,+00000020
	c.sw	s1,0(a4)
	c.sw	s1,4(a5)
	c.sw	s0,36(s1)
	c.sw	a5,0(s1)
	c.lw	s0,28(a5)
	c.addi	a5,00000001
	c.sw	s0,28(a5)

l23002AEE:
	c.lw	s0,16(a5)
	c.mv	a0,s0
	c.addi	a5,FFFFFFFF
	c.sw	s0,16(a5)
	jal	ra,00000000230027E0

l23002AFA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23002B0C:
	c.mv	a0,s1
	jal	ra,0000000023002880
	c.j	0000000023002AEE

;; vfs_device_init: 23002B14
;;   Called from:
;;     23001320 (in aos_loop_proc)
vfs_device_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	addi	s0,s0,+000000A0
	c.lw	s0,0(a5)
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.li	s1,00000001
	c.li	a0,00000000
	beq	a5,s1,0000000023002B48

l23002B2E:
	lui	a1,0002306F
	lui	a0,0002306F
	c.li	a2,00000000
	addi	a1,a1,+00000190
	addi	a0,a0,+000001AC
	jal	ra,0000000023044BA6
	c.bnez	a0,0000000023002B48

l23002B46:
	c.sw	s0,0(s1)

l23002B48:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; event_read_cb: 23002B52
event_read_cb proc
	c.addi	sp,FFFFFFE0
	c.li	a2,00000010
	c.mv	a1,sp
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	jal	ra,0000000023001C52
	c.li	a5,00000010
	bne	a0,a5,0000000023002B7A

l23002B68:
	lhu	a4,sp,+00000004
	addi	a5,zero,+00000100
	bne	a4,a5,0000000023002B84

l23002B74:
	c.lwsp	a2,00000044
	c.lwsp	s0,000000E4
	c.jalr	a5

l23002B7A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23002B84:
	lui	a5,0004200E
	addi	a4,a5,-00000468
	c.lw	a4,4(s0)
	addi	s1,a5,-00000468

l23002B92:
	beq	s0,s1,0000000023002B7A

l23002B96:
	lhu	a5,s0,+00000010
	c.beqz	a5,0000000023002BA4

l23002B9C:
	lhu	a4,sp,+00000004
	bne	a4,a5,0000000023002BAC

l23002BA4:
	c.lw	s0,8(a5)
	c.lw	s0,12(a1)
	c.mv	a0,sp
	c.jalr	a5

l23002BAC:
	c.lw	s0,4(s0)
	c.j	0000000023002B92

;; aos_event_service_init: 23002BB0
;;   Called from:
;;     230021F0 (in aos_loop_init)
aos_event_service_init proc
	lui	a0,0002306F
	c.addi	sp,FFFFFFF0
	c.li	a1,00000000
	addi	a0,a0,+000001AC
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,0000000023001B36
	lui	a5,0004200E
	addi	a5,a5,-00000460
	c.lw	a5,4(a4)
	c.mv	s0,a0
	bge	a4,zero,0000000023002BD6

l23002BD4:
	c.sw	a5,4(a0)

l23002BD6:
	lui	a1,00023003
	c.li	a2,00000000
	addi	a1,a1,-000004AE
	c.mv	a0,s0
	jal	ra,0000000023002216
	c.mv	a0,s0
	jal	ra,0000000023002186
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; aos_post_event: 23002BF6
;;   Called from:
;;     23000AA8 (in cmd_blsync_ble_stop)
;;     23000AE0 (in stack_wifi)
;;     23000B08 (in cmd_blsync_ble_start)
;;     2300182C (in wifi_prov_api_event_trigger_connect)
;;     23001862 (in wifi_prov_api_event_trigger_disconnect)
;;     23001898 (in wifi_prov_api_event_trigger_scan)
;;     230018CE (in wifi_prov_api_event_state_get)
;;     23003D04 (in stateConnectingEnter)
;;     23003F58 (in stateDisconnect_action_reconnect)
;;     23004046 (in stateConnectedIPNoEnter)
;;     2300453C (in stateGlobalGuard_AP)
;;     23004918 (in stateGlobalGuard_denoise)
;;     23004ACA (in stateGlobalGuard_stop)
;;     23004C0C (in stateDisconnect_enter)
;;     23004C2A (in stateDisconnect_enter)
;;     23004D10 (in stateGlobalGuard_fw_scan)
;;     23004E38 (in stateConnectedIPYes_enter)
;;     2300500E (in wifi_mgmr_start)
;;     23007BDC (in cb_event_ind)
;;     230092A8 (in bl_rx_apm_sta_del_ind)
;;     23009398 (in bl_rx_apm_sta_add_ind)
aos_post_event proc
	slli	a5,a0,00000011
	c.addi	sp,FFFFFFE0
	c.srli	a5,00000011
	sh	a5,sp,+00000004
	lui	a5,0004200E
	sh	a1,sp,+00000006
	srli	a1,a0,0000000F
	lw	a0,a5,-0000045C
	c.swsp	a2,00000004
	addi	a1,a1,+00000101
	c.mv	a2,sp
	c.swsp	ra,0000008C
	c.swsp	zero,00000000
	c.swsp	zero,00000084
	jal	ra,0000000023001CAE
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; aos_register_event_filter: 23002C2A
;;   Called from:
;;     230013C8 (in aos_loop_proc)
;;     230013D8 (in aos_loop_proc)
;;     23005004 (in wifi_mgmr_start)
aos_register_event_filter proc
	c.beqz	a1,0000000023002C70

l23002C2C:
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.mv	s2,a0
	c.li	a0,00000014
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a2
	c.mv	s0,a1
	jal	ra,0000000023002878
	c.mv	a5,a0
	c.li	a0,FFFFFFF4
	c.beqz	a5,0000000023002C64

l23002C48:
	lui	a4,0004200E
	addi	a4,a4,-00000468
	c.lw	a4,0(a3)
	c.sw	a5,8(s0)
	sh	s2,a5,+00000010
	c.sw	a5,0(a3)
	c.sw	a5,12(s1)
	c.sw	a5,4(a4)
	c.sw	a3,4(a5)
	c.sw	a4,0(a5)
	c.li	a0,00000000

l23002C64:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23002C70:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; format_int: 23002C74
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
	bne	s4,zero,0000000023002E04

l23002CA6:
	lui	s5,0002306F
	addi	a4,s5,+000003C8
	c.swsp	a4,00000084

l23002CB0:
	andi	a4,s8,+00000040
	c.li	s3,00000000
	c.beqz	a4,0000000023002CCE

l23002CB8:
	bge	s7,zero,0000000023002CCE

l23002CBC:
	sub	s6,zero,s6
	sltu	a4,zero,s6
	sub	s7,zero,s7
	sub	s7,s7,a4
	c.li	s3,00000001

l23002CCE:
	c.mv	a0,s6
	c.mv	a1,s7
	c.li	s2,00000000
	srai	s10,a5,0000001F

l23002CD8:
	or	a4,a0,a1
	bne	a4,zero,0000000023002E10

l23002CE0:
	andi	a0,s8,+00000020
	c.beqz	a0,0000000023002CF4

l23002CE6:
	c.li	a4,00000008
	bne	a5,a4,0000000023002CF4

l23002CEC:
	blt	s2,s1,0000000023002D02

l23002CF0:
	addi	s1,s2,+00000001

l23002CF4:
	blt	s2,s1,0000000023002D02

l23002CF8:
	or	a4,s6,s7
	c.mv	s1,s2
	c.bnez	a4,0000000023002D02

l23002D00:
	c.li	s1,00000001

l23002D02:
	andi	a3,s8,+00000008
	c.mv	s10,s1
	c.beqz	a3,0000000023002D14

l23002D0A:
	c.li	a3,00000010
	c.li	s10,00000004
	beq	a5,a3,0000000023002D14

l23002D12:
	c.li	s10,00000003

l23002D14:
	addi	a7,s1,-00000001
	xor	a7,a7,s10
	add	s2,a7,s1
	andi	s1,s8,+00000014
	or	s1,s1,s3
	sltu	s1,zero,s1
	c.add	s1,s2
	c.beqz	a0,0000000023002D38

l23002D30:
	c.li	a3,00000010
	bne	a5,a3,0000000023002D38

l23002D36:
	c.addi	s1,00000002

l23002D38:
	andi	a1,s8,+00000003
	c.li	a3,00000000
	c.bnez	a1,0000000023002D62

l23002D40:
	c.mv	a3,a1
	bge	s1,s11,0000000023002D62

l23002D46:
	sub	a3,s11,s1
	c.li	a2,00000000
	addi	a6,zero,+00000020

l23002D50:
	bgeu	a2,s9,0000000023002D5A

l23002D54:
	sb	a6,s0,+00000000
	c.addi	s0,00000001

l23002D5A:
	c.addi	a2,00000001
	bne	a2,a3,0000000023002D50

l23002D60:
	c.mv	s11,s1

l23002D62:
	beq	s3,zero,0000000023002E20

l23002D66:
	bgeu	a3,s9,0000000023002D74

l23002D6A:
	addi	a2,zero,+0000002D
	sb	a2,s0,+00000000
	c.addi	s0,00000001

l23002D74:
	c.addi	a3,00000001

l23002D76:
	c.beqz	a0,0000000023002DA8

l23002D78:
	c.li	a2,00000010
	bne	a5,a2,0000000023002DA8

l23002D7E:
	bgeu	a3,s9,0000000023002D8C

l23002D82:
	addi	a2,zero,+00000030
	sb	a2,s0,+00000000
	c.addi	s0,00000001

l23002D8C:
	addi	a2,a3,+00000001
	bgeu	a2,s9,0000000023002DA6

l23002D94:
	addi	a2,zero,+00000058
	bne	s4,zero,0000000023002DA0

l23002D9C:
	addi	a2,zero,+00000078

l23002DA0:
	sb	a2,s0,+00000000
	c.addi	s0,00000001

l23002DA6:
	c.addi	a3,00000002

l23002DA8:
	c.li	a2,00000001
	bne	a1,a2,0000000023002DB6

l23002DAE:
	addi	a2,zero,+00000030
	blt	s2,s11,0000000023002E5A

l23002DB6:
	add	a4,s2,a3
	c.add	s0,s2
	c.swsp	a4,00000008
	c.mv	s4,a4
	srai	a4,a5,0000001F
	c.mv	s5,s10
	c.mv	s3,s0
	c.swsp	a4,00000088

l23002DCA:
	blt	zero,s2,0000000023002E60

l23002DCE:
	c.lwsp	a6,00000044
	andi	a4,s8,+00000002
	addi	a3,zero,+00000020
	add	a6,s11,a0

l23002DDC:
	c.beqz	a4,0000000023002DE6

l23002DDE:
	sub	a5,a6,a0
	blt	s1,a5,0000000023002EC0

l23002DE6:
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

l23002E04:
	lui	s5,0002306F
	addi	a4,s5,+000003DC
	c.swsp	a4,00000084
	c.j	0000000023002CB0

l23002E10:
	c.mv	a2,a5
	c.mv	a3,s10
	c.swsp	a5,00000008
	jal	ra,0000000023069564
	c.addi	s2,00000001
	c.lwsp	a6,000000E4
	c.j	0000000023002CD8

l23002E20:
	andi	a2,s8,+00000004
	c.beqz	a2,0000000023002E36

l23002E26:
	bgeu	a3,s9,0000000023002D74

l23002E2A:
	addi	a2,zero,+0000002B
	sb	a2,s0,+00000000
	c.addi	s0,00000001
	c.j	0000000023002D74

l23002E36:
	andi	a2,s8,+00000010
	c.beqz	a2,0000000023002D76

l23002E3C:
	bgeu	a3,s9,0000000023002D74

l23002E40:
	addi	a2,zero,+00000020
	sb	a2,s0,+00000000
	c.addi	s0,00000001
	c.j	0000000023002D74

l23002E4C:
	bgeu	a3,s9,0000000023002E56

l23002E50:
	sb	a2,s0,+00000000
	c.addi	s0,00000001

l23002E56:
	c.addi	a3,00000001
	c.addi	s11,FFFFFFFF

l23002E5A:
	blt	s1,s11,0000000023002E4C

l23002E5E:
	c.j	0000000023002DB6

l23002E60:
	beq	s5,zero,0000000023002EA8

l23002E64:
	c.addi	s5,FFFFFFFF

l23002E66:
	addi	a4,s3,-00000001
	c.swsp	a4,0000000C
	c.addi	s4,FFFFFFFF
	c.addi	s2,FFFFFFFF
	bgeu	s4,s9,0000000023002E90

l23002E74:
	c.lwsp	s4,000000A4
	c.mv	a2,a5
	c.mv	a0,s6
	c.mv	a1,s7
	c.swsp	a5,0000008C
	jal	ra,0000000023069998
	c.lwsp	a2,000000E4
	c.add	a0,a5
	lbu	a3,a0,+00000000
	c.lwsp	t3,000000E4
	sb	a3,s3,+00000FFF

l23002E90:
	c.lwsp	s4,000000A4
	c.mv	a2,a5
	c.mv	a0,s6
	c.mv	a1,s7
	c.swsp	a5,0000008C
	jal	ra,0000000023069564
	c.mv	s6,a0
	c.mv	s7,a1
	c.lwsp	s8,00000068
	c.lwsp	t3,000000E4
	c.j	0000000023002DCA

l23002EA8:
	c.addi	s4,FFFFFFFF
	bgeu	s4,s9,0000000023002EB6

l23002EAE:
	addi	a4,zero,+0000005F
	sb	a4,s3,+00000FFF

l23002EB6:
	c.addi	s3,FFFFFFFF
	c.addi	s2,FFFFFFFF
	addi	s5,s10,-00000001
	c.j	0000000023002E66

l23002EC0:
	bgeu	a0,s9,0000000023002ECA

l23002EC4:
	sb	a3,s0,+00000000
	c.addi	s0,00000001

l23002ECA:
	c.addi	a0,00000001
	c.j	0000000023002DDC

;; cvt: 23002ECE
;;   Called from:
;;     2300310A (in ecvtbuf)
;;     23003110 (in fcvtbuf)
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
	blt	a5,a2,0000000023002F08

l23002F00:
	c.mv	s0,a2
	bge	a2,zero,0000000023002F08

l23002F06:
	c.li	s0,00000000

l23002F08:
	c.li	a2,00000000
	c.li	a3,00000000
	c.mv	a0,s3
	c.mv	a1,s2
	c.swsp	a4,00000008
	jal	ra,000000002306B358
	c.lwsp	a6,000000C4
	blt	a0,zero,0000000023002F92

l23002F1C:
	sw	zero,a4,+00000000

l23002F20:
	c.addi4spn	a2,00000020
	c.mv	a0,s3
	c.mv	a1,s2
	jal	ra,0000000023068B14
	c.mv	s3,a0
	c.mv	s4,a1
	c.lwsp	zero,00000154
	c.lwsp	tp,00000174
	c.li	a2,00000000
	c.li	a3,00000000
	addi	s2,s1,+00000050
	jal	ra,000000002306B1A4
	bne	a0,zero,0000000023003026

l23002F42:
	c.li	a2,00000000
	c.li	a3,00000000
	c.mv	a0,s3
	c.mv	a1,s4
	jal	ra,000000002306B26C
	c.li	s6,00000000
	bge	zero,a0,0000000023002F8E

l23002F54:
	lui	a5,0002306F
	lw	s10,a5,+000003B0
	lw	s11,a5,+000003B4
	lui	a5,0002306F
	lw	s8,a5,+000003C0
	lw	s9,a5,+000003C4

l23002F6C:
	c.mv	a2,s10
	c.mv	a3,s11
	c.mv	a0,s3
	c.mv	a1,s4
	jal	ra,000000002306B444
	c.mv	a2,s8
	c.mv	a3,s9
	c.swsp	a0,00000008
	c.mv	s7,a1
	jal	ra,000000002306B358
	c.lwsp	a6,00000028
	blt	a0,zero,0000000023003058

l23002F8A:
	c.swsp	a7,00000014
	c.swsp	s7,00000094

l23002F8E:
	c.mv	s7,s1
	c.j	0000000023002FF8

l23002F92:
	c.li	a5,00000001
	c.sw	a4,0(a5)
	lui	a5,00080000
	xor	s2,a5,s2
	c.j	0000000023002F20

l23002FA0:
	c.mv	a0,a4
	c.mv	a1,a5
	c.mv	a3,s8
	c.mv	a2,s7
	jal	ra,000000002306A8F8
	c.addi4spn	a2,00000020
	jal	ra,0000000023068B14
	c.lwsp	a6,00000084
	c.lwsp	s4,000000A4
	c.swsp	a0,00000014
	c.swsp	a1,00000094
	jal	ra,0000000023069DA8
	c.mv	a2,s9
	c.mv	a3,s10
	jal	ra,000000002306B444
	jal	ra,000000002306C718
	c.addi	s11,FFFFFFFF
	addi	a0,a0,+00000030
	sb	a0,s11,+00000000

l23002FD4:
	c.lwsp	zero,000001D4
	c.lwsp	tp,000001F4
	c.li	a2,00000000
	c.mv	a0,a4
	c.mv	a1,a5
	c.li	a3,00000000
	c.swsp	a4,0000000C
	c.swsp	a5,0000008C
	jal	ra,000000002306B1A4
	sub	s6,s2,s11
	c.lwsp	s8,000000C4
	c.lwsp	t3,000000E4
	c.bnez	a0,0000000023002FA0

l23002FF2:
	c.mv	s7,s1

l23002FF4:
	bltu	s11,s2,000000002300304A

l23002FF8:
	c.lwsp	a2,000000E4
	c.add	s0,s1
	c.bnez	a5,0000000023003000

l23002FFE:
	c.add	s0,s6

l23003000:
	sw	s6,s5,+00000000
	bltu	s0,s1,0000000023003060

l23003008:
	lui	a5,0002306F
	lw	s8,a5,+000003B0
	lw	s9,a5,+000003B4

l23003014:
	bltu	s0,s7,000000002300301C

l23003018:
	bltu	s7,s2,0000000023003084

l2300301C:
	bltu	s0,s2,00000000230030AE

l23003020:
	sb	zero,s1,+0000004F
	c.j	0000000023003064

l23003026:
	lui	a5,0002306F
	lw	s7,a5,+000003B0
	lw	s8,a5,+000003B4
	lui	a5,0002306F
	lw	a6,a5,+000003BC
	lw	a5,a5,+000003B8
	c.mv	s11,s2
	c.swsp	a6,00000088
	c.swsp	a5,00000008
	c.mv	s9,s7
	c.mv	s10,s8
	c.j	0000000023002FD4

l2300304A:
	c.addi	s11,00000001
	lbu	a5,s11,-00000001
	c.addi	s7,00000001
	sb	a5,s7,+00000FFF
	c.j	0000000023002FF4

l23003058:
	c.addi	s6,FFFFFFFF
	c.mv	s3,a7
	c.mv	s4,s7
	c.j	0000000023002F6C

l23003060:
	sb	zero,s1,+00000000

l23003064:
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

l23003084:
	c.mv	a3,s9
	c.mv	a2,s8
	c.mv	a0,s3
	c.mv	a1,s4
	jal	ra,000000002306B444
	c.addi4spn	a2,00000028
	jal	ra,0000000023068B14
	c.mv	s3,a0
	c.mv	s4,a1
	c.lwsp	s0,00000154
	c.lwsp	a2,00000174
	c.addi	s7,00000001
	jal	ra,000000002306C718
	addi	a0,a0,+00000030
	sb	a0,s7,+00000FFF
	c.j	0000000023003014

l230030AE:
	lbu	a5,s0,+00000000
	addi	a2,zero,+00000039
	addi	a3,zero,+00000030
	c.addi	a5,00000005
	sb	a5,s0,+00000000
	addi	a1,zero,+00000031
	c.mv	a5,s0

l230030C6:
	lbu	a4,a5,+00000000
	bltu	a2,a4,00000000230030D4

l230030CE:
	sb	zero,s0,+00000000
	c.j	0000000023003064

l230030D4:
	sb	a3,a5,+00000000
	bgeu	s1,a5,00000000230030EA

l230030DC:
	lbu	a4,a5,-00000001
	c.addi	a5,FFFFFFFF
	c.addi	a4,00000001
	sb	a4,a5,+00000000
	c.j	00000000230030C6

l230030EA:
	sb	a1,a5,+00000000
	lw	a4,s5,+00000000
	c.addi	a4,00000001
	sw	a4,s5,+00000000
	c.lwsp	a2,000000C4
	c.bnez	a4,00000000230030C6

l230030FC:
	bgeu	s1,s0,0000000023003104

l23003100:
	sb	a3,s0,+00000000

l23003104:
	c.addi	s0,00000001
	c.j	00000000230030C6

;; ecvtbuf: 23003108
;;   Called from:
;;     230031A6 (in flt)
;;     230031CC (in flt)
ecvtbuf proc
	c.li	a6,00000001
	jal	zero,0000000023002ECE

;; fcvtbuf: 2300310E
;;   Called from:
;;     230032DE (in flt)
fcvtbuf proc
	c.li	a6,00000000
	jal	zero,0000000023002ECE

;; flt: 23003114
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
	beq	a5,zero,0000000023003298

l23003148:
	andi	s5,a6,-00000002
	addi	s3,zero,+00000020

l23003150:
	andi	a5,s5,+00000002
	c.li	s2,00000000
	c.beqz	a5,0000000023003176

l23003158:
	c.li	a2,00000000
	c.li	a3,00000000
	c.mv	a0,s4
	c.mv	a1,s11
	jal	ra,000000002306B358
	bge	a0,zero,00000000230032AA

l23003168:
	lui	a5,00080000
	xor	s11,a5,s11
	c.addi	s0,FFFFFFFF
	addi	s2,zero,+0000002D

l23003176:
	bge	s6,zero,000000002300317C

l2300317A:
	c.li	s6,00000006

l2300317C:
	andi	a5,s7,+000000FD
	addi	a4,zero,+00000045
	bne	a5,a4,00000000230032C8

l23003188:
	addi	a4,s7,+00000020
	andi	a4,a4,+000000FF
	c.li	s9,00000001

l23003192:
	addi	a5,zero,+00000067
	bne	a4,a5,000000002300333E

l2300319A:
	c.addi4spn	a5,00000070
	c.addi4spn	a4,0000001C
	c.addi4spn	a3,00000018
	c.mv	a2,s6
	c.mv	a0,s4
	c.mv	a1,s11
	jal	ra,0000000023003108
	c.lwsp	s8,0000000C
	c.li	a4,FFFFFFFC
	addi	a5,s8,-00000001
	blt	a5,a4,00000000230031BA

l230031B6:
	blt	a5,s6,00000000230032CE

l230031BA:
	addi	s10,s6,-00000001

l230031BE:
	c.addi4spn	a5,00000070
	c.addi4spn	a4,0000001C
	c.addi4spn	a3,00000018
	addi	a2,s10,+00000001
	c.mv	a0,s4
	c.mv	a1,s11
	jal	ra,0000000023003108
	c.lwsp	t3,000000C4
	c.addi4spn	a5,00000020
	c.beqz	a4,00000000230031E2

l230031D6:
	addi	a5,zero,+0000002D
	sb	a5,sp,+00000020
	addi	a5,sp,+00000021

l230031E2:
	lbu	a4,a0,+00000000
	addi	s8,a5,+00000001
	sb	a4,a5,+00000000
	bge	zero,s10,00000000230031FE

l230031F2:
	addi	a4,zero,+0000002E
	addi	s8,a5,+00000002
	sb	a4,a5,+00000001

l230031FE:
	c.addi	a0,00000001
	add	a4,a0,s10
	c.mv	a5,s8

l23003206:
	bne	a4,a0,000000002300334A

l2300320A:
	c.add	s8,s10
	addi	a5,zero,+00000045
	bne	s9,zero,0000000023003218

l23003214:
	addi	a5,zero,+00000065

l23003218:
	c.lwsp	s8,0000004C
	sb	a5,s8,+00000000
	addi	s9,s8,+00000002
	bne	s10,zero,0000000023003358

l23003226:
	c.li	a2,00000000
	c.li	a3,00000000
	c.mv	a0,s4
	c.mv	a1,s11
	jal	ra,000000002306B1A4
	beq	a0,zero,000000002300335E

l23003236:
	c.li	s10,FFFFFFFF

l23003238:
	sub	s10,zero,s10
	addi	a5,zero,+0000002D

l23003240:
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

l2300327A:
	sb	zero,a5,+00000000
	andi	a5,s5,+00000020
	beq	a5,zero,00000000230034F0

l23003286:
	bne	s6,zero,0000000023003412

l2300328A:
	addi	s6,sp,+00000020
	addi	a4,zero,+0000002E
	addi	a3,zero,+00000045
	c.j	00000000230033E4

l23003298:
	andi	a5,a6,+00000001
	addi	s3,zero,+00000030
	bne	a5,zero,0000000023003150

l230032A4:
	addi	s3,zero,+00000020
	c.j	0000000023003150

l230032AA:
	andi	a5,s5,+00000004
	c.beqz	a5,00000000230032B8

l230032B0:
	c.addi	s0,FFFFFFFF
	addi	s2,zero,+0000002B
	c.j	0000000023003176

l230032B8:
	andi	a5,s5,+00000008
	beq	a5,zero,0000000023003176

l230032C0:
	c.addi	s0,FFFFFFFF
	addi	s2,zero,+00000020
	c.j	0000000023003176

l230032C8:
	c.mv	a4,s7
	c.li	s9,00000000
	c.j	0000000023003192

l230032CE:
	sub	s8,s6,s8

l230032D2:
	c.addi4spn	a5,00000070
	c.addi4spn	a4,0000001C
	c.addi4spn	a3,00000018
	c.mv	a2,s8
	c.mv	a0,s4
	c.mv	a1,s11
	jal	ra,000000002300310E
	c.lwsp	t3,000000C4
	c.addi4spn	a5,00000020
	c.beqz	a4,00000000230032F4

l230032E8:
	addi	a5,zero,+0000002D
	sb	a5,sp,+00000020
	addi	a5,sp,+00000021

l230032F4:
	lbu	a4,a0,+00000000
	c.beqz	a4,00000000230033A2

l230032FA:
	c.lwsp	s8,000000C4
	c.mv	a3,a0
	addi	a6,zero,+0000002E
	blt	zero,a4,000000002300337A

l23003306:
	addi	a3,zero,+00000030
	addi	a2,zero,+0000002E
	sb	a3,a5,+00000000
	sb	a2,a5,+00000001
	addi	a3,a5,+00000002
	sub	a2,a5,a4
	addi	a1,zero,+00000030
	sub	a4,zero,a4

l23003326:
	bne	a2,a5,0000000023003372

l2300332A:
	add	a5,a3,a4

l2300332E:
	lbu	a4,a0,+00000000
	c.beqz	a4,000000002300327A

l23003334:
	c.addi	a5,00000001
	c.addi	a0,00000001
	sb	a4,a5,+00000FFF
	c.j	000000002300332E

l2300333E:
	addi	a5,zero,+00000065
	bne	a4,a5,0000000023003364

l23003346:
	c.mv	s10,s6
	c.j	00000000230031BE

l2300334A:
	c.addi	a0,00000001
	lbu	a3,a0,-00000001
	c.addi	a5,00000001
	sb	a3,a5,+00000FFF
	c.j	0000000023003206

l23003358:
	c.addi	s10,FFFFFFFF
	blt	s10,zero,0000000023003238

l2300335E:
	addi	a5,zero,+0000002B
	c.j	0000000023003240

l23003364:
	addi	a3,zero,+00000066
	c.addi4spn	a5,00000020
	bne	a4,a3,000000002300327A

l2300336E:
	c.mv	s8,s6
	c.j	00000000230032D2

l23003372:
	sb	a1,a5,+00000002
	c.addi	a5,00000001
	c.j	0000000023003326

l2300337A:
	sub	a1,a3,a0
	c.mv	a2,a5
	bne	a4,a1,000000002300338C

l23003384:
	addi	a2,a5,+00000001
	sb	a6,a5,+00000000

l2300338C:
	c.addi	a3,00000001
	lbu	a1,a3,-00000001
	addi	a5,a2,+00000001
	sb	a1,a2,+00000000
	lbu	a2,a3,+00000000
	c.bnez	a2,000000002300337A

l230033A0:
	c.j	000000002300327A

l230033A2:
	addi	a4,zero,+00000030
	sb	a4,a5,+00000000
	blt	zero,s8,00000000230033B2

l230033AE:
	c.addi	a5,00000001
	c.j	000000002300327A

l230033B2:
	addi	a3,zero,+0000002E
	sb	a3,a5,+00000001
	addi	a4,a5,+00000002
	add	a3,a5,s8
	addi	a2,zero,+00000030

l230033C6:
	sb	a2,a5,+00000002
	c.addi	a5,00000001
	bne	a3,a5,00000000230033C6

l230033D0:
	add	a5,a4,s8
	c.j	000000002300327A

l230033D6:
	beq	a5,a4,0000000023003412

l230033DA:
	andi	a5,a5,+000000DF
	beq	a5,a3,0000000023003542

l230033E2:
	c.addi	s6,00000001

l230033E4:
	lbu	a5,s6,+00000000
	c.bnez	a5,00000000230033D6

l230033EA:
	addi	a5,zero,+0000002E
	sb	a5,s6,+00000000
	sb	zero,s6,+00000001
	c.j	0000000023003412

l230033F8:
	lbu	a5,a0,+00000000
	c.addi	a0,FFFFFFFF
	sb	a5,a0,+00000002

l23003402:
	sub	a5,a0,s6
	blt	zero,a5,00000000230033F8

l2300340A:
	addi	a5,zero,+0000002E
	sb	a5,s6,+00000000

l23003412:
	addi	a1,zero,+00000100
	c.addi4spn	a0,00000020
	jal	ra,000000002306D878
	andi	s5,s5,+00000011
	sub	a3,s0,a0
	beq	s5,zero,00000000230034A2

l23003428:
	beq	s2,zero,0000000023003432

l2300342C:
	sb	s2,s1,+00000000
	c.addi	s1,00000001

l23003432:
	c.lwsp	a2,000000E4
	c.beqz	a5,00000000230034CC

l23003436:
	c.li	a5,00000000

l23003438:
	blt	a5,a0,00000000230034D4

l2300343C:
	bge	a0,zero,0000000023003442

l23003440:
	c.li	a0,00000000

l23003442:
	c.add	a0,s1
	c.mv	a5,a0
	add	a2,a0,a3
	addi	a1,zero,+00000020

l2300344E:
	sub	a4,a2,a5
	blt	zero,a4,00000000230034E8

l23003456:
	bge	a3,zero,000000002300345C

l2300345A:
	c.li	a3,00000000

l2300345C:
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

l2300347C:
	c.addi	a4,00000001
	c.j	000000002300350E

l23003480:
	c.addi	a5,FFFFFFFF
	c.j	0000000023003524

l23003484:
	c.addi	a5,00000001
	sb	a1,a5,+00000FFF

l2300348A:
	sub	a4,a2,a5
	blt	zero,a4,0000000023003484

l23003492:
	c.mv	a5,a3
	bge	a3,zero,000000002300349A

l23003498:
	c.li	a5,00000000

l2300349A:
	c.addi	a3,FFFFFFFF
	c.add	s1,a5
	c.sub	a3,a5
	c.j	0000000023003428

l230034A2:
	c.mv	a5,s1
	add	a2,s1,a3
	addi	a1,zero,+00000020
	c.j	000000002300348A

l230034AE:
	c.addi	a5,00000001
	sb	s3,a5,+00000FFF

l230034B4:
	sub	a4,a2,a5
	blt	zero,a4,00000000230034AE

l230034BC:
	c.mv	a5,a3
	bge	a3,zero,00000000230034C4

l230034C2:
	c.li	a5,00000000

l230034C4:
	c.addi	a3,FFFFFFFF
	c.add	s1,a5
	c.sub	a3,a5
	c.j	0000000023003436

l230034CC:
	c.mv	a5,s1
	add	a2,s1,a3
	c.j	00000000230034B4

l230034D4:
	c.addi4spn	a2,00000020
	c.add	a2,a5
	lbu	a2,a2,+00000000
	add	a4,s1,a5
	c.addi	a5,00000001
	sb	a2,a4,+00000000
	c.j	0000000023003438

l230034E8:
	c.addi	a5,00000001
	sb	a1,a5,+00000FFF
	c.j	000000002300344E

l230034F0:
	addi	a5,zero,+00000067
	bne	s7,a5,0000000023003412

l230034F8:
	c.addi4spn	a4,00000020
	addi	a3,zero,+0000002E

l230034FE:
	lbu	a5,a4,+00000000
	c.addi	a4,00000001
	c.beqz	a5,0000000023003412

l23003506:
	bne	a5,a3,00000000230034FE

l2300350A:
	addi	a3,zero,+00000045

l2300350E:
	lbu	a5,a4,+00000000
	c.beqz	a5,000000002300351C

l23003514:
	andi	a5,a5,+000000DF
	bne	a5,a3,000000002300347C

l2300351C:
	addi	a5,a4,-00000001
	addi	a2,zero,+00000030

l23003524:
	lbu	a3,a5,+00000000
	beq	a3,a2,0000000023003480

l2300352C:
	addi	a2,zero,+0000002E
	bne	a3,a2,0000000023003536

l23003534:
	c.addi	a5,FFFFFFFF

l23003536:
	beq	a4,a5,0000000023003412

l2300353A:
	c.addi	a5,00000001
	sb	zero,a5,+00000000
	c.j	0000000023003536

l23003542:
	addi	a1,zero,+00000100
	c.mv	a0,s6
	jal	ra,000000002306D878
	c.add	a0,s6
	c.j	0000000023003402

;; vsnprintf: 23003550
;;   Called from:
;;     23003A2A (in vsprintf)
;;     23003B0E (in sprintf)
;;     23003B2A (in snprintf)
;;     2302F3D8 (in aos_cli_printf)
;;     230464CE (in bflb_platform_printf)
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
	lui	s1,0002306F
	addi	s1,s1,+000001B8
	lui	s9,0002306F
	addi	s9,s9,+000002CC
	lui	a5,0002306F
	addi	a5,a5,+00000398
	c.swsp	a5,00000008
	lui	a5,0002306F
	addi	a5,a5,+000003F0
	c.swsp	a5,00000088

l230035A8:
	addi	s0,a2,+00000001
	lbu	a5,a2,+00000000
	beq	a5,zero,00000000230039EE

l230035B4:
	c.li	a4,00000004
	bltu	a4,a3,00000000230039BC

l230035BA:
	slli	a4,a3,00000002
	c.add	a4,s1
	c.lw	a4,0(a4)
	c.jr	a4
230035C4             13 07 50 02 63 8C E7 3E 63 75 59 01     ..P.c..>cuY.
230035D0 23 80 FB 00 85 0B 05 09 22 86 F9 B7 81 17 93 F5 #.......".......
230035E0 F7 0F 41 47 63 65 B7 3E 93 97 25 00 37 F7 06 23 ..AGce.>..%.7..#
230035F0 13 07 C7 1C BA 97 9C 43 82 87 13 6A 2A 00 22 86 .......C...j*.".
23003600 65 B7 13 6A 4A 00 22 86 45 B7 13 6A 8A 00 22 86 e..jJ.".E..j..".
23003610 61 BF 13 6A 0A 01 22 86 41 BF 13 6A 0A 02 22 86 a..j..".A..j..".
23003620 61 B7 13 6A 1A 00 22 86 41 B7 13 87 07 FD 13 77 a..j..".A......w
23003630 F7 0F A5 45 63 EA E5 00 29 47 33 0C EC 02 93 87 ...Ec...)G3.....
23003640 07 FD 3E 9C 22 86 8D B7 13 07 A0 02 63 88 E7 00 ..>.".......c...
23003650 13 07 E0 02 63 8F E7 36 91 46 B9 B7 93 07 4D 00 ....c..6.F....M.
23003660 03 2C 0D 00 63 45 0C 00 3E 8D 22 86 35 BF 33 0C .,..cE..>.".5.3.
23003670 80 41 13 6A 2A 00 3E 8D 22 86 3D B7 13 87 07 FD .A.j*.>.".=.....
23003680 13 77 F7 0F A5 45 63 EA E5 00 29 47 33 0B EB 02 .w...Ec...)G3...
23003690 93 87 07 FD 3E 9B 22 86 01 BF 13 07 A0 02 63 84 ....>.".......c.
230036A0 E7 00 91 46 11 B7 93 07 4D 00 03 2B 0D 00 63 45 ...F....M..+..cE
230036B0 0B 00 3E 8D 22 86 CD BD 7D 5B E5 BF 13 87 47 FB ..>."...}[....G.
230036C0 93 75 F7 0F 13 06 E0 02 63 67 B6 02 13 97 25 00 .u......cg....%.
230036D0 37 F6 06 23 13 06 06 21 32 97 18 43 02 87 22 86 7..#...!2..C..".
230036E0 85 49 D9 B5 FD 19 22 86 C1 B5 85 09 22 86 6D BD .I....".....".m.
230036F0 89 09 22 86 55 BD 09 47 63 53 37 01 89 49 79 57 ..".U..GcS7..IyW
23003700 63 D3 E9 00 F9 59 13 87 07 FB 13 76 F7 0F 93 06 c....Y.....v....
23003710 80 02 63 EC C6 28 13 17 26 00 66 97 18 43 02 87 ..c..(..&.f..C..
23003720 C1 47 75 A8 13 6A 0A 08 13 6A 0A 02 83 27 0D 00 .Gu..j...j...'..
23003730 3E C4 02 C6 11 0D C1 47 21 4B 63 73 59 11 B3 85 >......G!KcsY...
23003740 2A 41 DA 88 62 88 52 87 22 46 B2 46 5E 85 EF F0 *A..b.R."F.F^...
23003750 6F D2 AA 9B 2A 99 22 86 81 46 B9 B5 13 6A 0A 04 o...*."..F...j..
23003760 93 87 29 00 11 47 63 6B F7 0C 8A 07 37 F7 06 23 ..)..Gck....7..#
23003770 13 07 07 37 BA 97 9C 43 82 87 83 07 0D 00 3E C4 ...7...C......>.
23003780 FD 87 3E C6 11 0D A9 47 4D BF 83 17 0D 00 3E C4 ..>....GM.....>.
23003790 FD 87 3E C6 11 0D A9 47 4D B7 83 27 0D 00 3E C4 ..>....GM..'..>.
230037A0 FD 87 3E C6 11 0D A9 47 49 BF 83 27 0D 00 3E C4 ..>....GI..'..>.
230037B0 FD 87 3E C6 11 0D A9 47 49 B7 93 07 7D 00 E1 9B ..>....GI...}...
230037C0 13 8D 87 00 98 43 3A C4 DC 43 3E C6 A9 47 B5 B7 .....C:..C>..G..
230037D0 A9 47 31 A0 13 6A 0A 08 C1 47 11 A0 A1 47 13 87 .G1..j...G...G..
230037E0 29 00 91 46 E3 EB E6 F4 0A 07 B7 F6 06 23 93 86 )..F.........#..
230037F0 46 38 36 97 18 43 02 87 03 47 0D 00 3A C4 02 C6 F86..C...G..:...
23003800 11 0D 25 BF 03 57 0D 00 3A C4 02 C6 11 0D 35 B7 ..%..W..:.....5.
23003810 03 27 0D 00 3A C4 02 C6 11 0D 05 B7 03 27 0D 00 .'..:........'..
23003820 3A C4 02 C6 11 0D 11 BF 13 07 7D 00 61 9B 13 0D :.........}.a...
23003830 87 00 14 43 36 C4 58 43 3A C6 01 B7 A9 47 F5 BD ...C6.XC:....G..
23003840 81 45 01 B7 83 27 0D 00 A3 07 F1 02 11 0D 05 45 .E...'.........E
23003850 93 07 F1 02 3E CC FD 57 63 05 FB 00 63 53 AB 00 ....>..Wc...cS..
23003860 5A 85 63 55 85 01 93 77 2A 00 8D C7 3D C9 B3 06 Z.cU...w*...=...
23003870 25 01 CA 87 99 A8 93 07 4D 00 3E CE 83 27 0D 00 %.......M.>..'..
23003880 3E CC 91 C7 62 45 EF 90 B6 5A 72 4D E9 B7 D2 47 >...bE...ZrM...G
23003890 3E CC CD BF 93 77 1A 00 99 E7 13 07 00 02 B3 07 >....w..........
230038A0 2C 01 89 8F 39 A0 13 07 00 03 D5 BF 05 09 63 08 ,...9.........c.
230038B0 F9 00 E3 7D 59 FF 23 80 EB 00 85 0B C5 BF 2A 8C ...}Y.#.......*.
230038C0 3E 89 6D B7 85 07 63 8F D7 00 E3 FD 57 FF 33 87 >.m...c.....W.3.
230038D0 27 41 62 46 32 97 03 47 07 00 23 80 EB 00 85 0B 'AbF2..G..#.....
230038E0 D5 B7 CA 86 63 5E 85 0F 93 77 2A 00 89 E7 36 89 ....c^...w*...6.
230038F0 22 86 81 46 55 B9 33 09 AC 40 36 99 93 07 00 02 "..FU.3..@6.....
23003900 21 A0 85 06 63 88 26 01 E3 FD 56 FF 23 80 FB 00 !...c.&...V.#...
23003910 85 0B C5 BF 2A 8C 22 86 81 46 79 B1 93 87 29 00 ....*."..Fy...).
23003920 11 47 63 63 F7 0C 8A 07 42 47 BA 97 9C 43 82 87 .Gcc....BG...C..
23003930 83 27 0D 00 23 80 27 01 11 0D 22 86 81 46 AD B1 .'..#.'..."..F..
23003940 83 27 0D 00 23 90 27 01 11 0D 22 86 81 46 A9 B9 .'..#.'..."..F..
23003950 83 27 0D 00 23 A0 27 01 11 0D 22 86 81 46 A9 B1 .'..#.'..."..F..
23003960 83 27 0D 00 23 A0 27 01 11 0D 22 86 81 46 2D B9 .'..#.'..."..F-.
23003970 83 27 0D 00 23 A0 27 01 23 A2 07 00 11 0D 22 86 .'..#.'.#.....".
23003980 81 46 1D B1 13 06 7D 00 61 9A 13 0D 86 00 09 48 .F....}.a......H
23003990 93 07 60 06 5A 87 E2 86 0C 42 50 42 5E 85 EF F0 ..`.Z....BPB^...
230039A0 6F F7 AA 8B 22 86 81 46 01 B1 63 75 59 01 23 80 o..."..F..cuY.#.
230039B0 FB 00 85 0B 05 09 22 86 81 46 FD B6             ......"..F..   

l230039BC:
	c.mv	a2,s0
	c.j	00000000230035A8
230039C0 22 86 85 46 01 4A 7D 5B 01 4C 81 49 F1 BE 89 46 "..F.J}[.L.I...F
230039D0 E1 BE 22 86 8D 46 01 4B C1 BE 22 86 89 49 E9 B6 .."..F.K.."..I..
230039E0 36 89 22 86 81 46 C9 B6 22 86 81 46 75 BE       6."..F.."..Fu. 

l230039EE:
	bgeu	s2,s5,0000000023003A16

l230039F2:
	sb	zero,s7,+00000000

l230039F6:
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

l23003A16:
	beq	s5,zero,00000000230039F6

l23003A1A:
	c.add	s5,s11
	sb	zero,s5,+00000FFF
	c.j	00000000230039F6

;; vsprintf: 23003A22
;;   Called from:
;;     23003A4E (in vprint)
vsprintf proc
	c.mv	a3,a2
	c.mv	a2,a1
	addi	a1,zero,+000001E0
	jal	zero,0000000023003550

;; vprint: 23003A2E
;;   Called from:
;;     2300191E (in bl_printk)
;;     23003AEA (in printf)
;;     23031DA6 (in ef_log_debug)
;;     23031E12 (in ef_log_info)
vprint proc
	lui	a5,0004200E
	lbu	a5,a5,-00000390
	andi	a5,a5,+000000FF
	c.beqz	a5,0000000023003A72

l23003A3C:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042011
	c.mv	a2,a1
	c.mv	a1,a0
	addi	a0,s0,-000002FC
	c.swsp	ra,00000084
	jal	ra,0000000023003A22
	addi	s0,s0,-000002FC
	blt	zero,a0,0000000023003A68

l23003A5A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23003A62:
	c.li	a0,00000000
	jal	ra,0000000023035E00

l23003A68:
	c.addi	s0,00000001
	lbu	a1,s0,-00000001
	c.bnez	a1,0000000023003A62

l23003A70:
	c.j	0000000023003A5A

l23003A72:
	c.jr	ra

;; bl_putchar: 23003A74
;;   Called from:
;;     230448A0 (in utils_hexdump)
bl_putchar proc
	c.addi	sp,FFFFFFF0
	andi	a1,a0,+000000FF
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023035E00
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; puts: 23003A8A
;;   Called from:
;;     23000AC6 (in stack_wifi)
;;     23000E3A (in _connect_wifi)
;;     23000F64 (in _connect_wifi)
;;     23000F70 (in _connect_wifi)
;;     23000F7C (in _connect_wifi)
;;     23000F88 (in _connect_wifi)
;;     23000F94 (in _connect_wifi)
;;     23000FA0 (in _connect_wifi)
;;     230013FA (in aos_loop_proc)
;;     23001406 (in aos_loop_proc)
;;     23001412 (in aos_loop_proc)
;;     23001442 (in vApplicationStackOverflowHook)
;;     230014E8 (in bfl_main)
;;     230014F8 (in bfl_main)
;;     23001506 (in bfl_main)
;;     23001512 (in bfl_main)
;;     2300151A (in bfl_main)
;;     23001526 (in bfl_main)
;;     23001532 (in bfl_main)
;;     2300153E (in bfl_main)
;;     23001546 (in bfl_main)
;;     23001552 (in bfl_main)
;;     2300155E (in bfl_main)
;;     23001566 (in bfl_main)
;;     2300156E (in bfl_main)
;;     23001576 (in bfl_main)
;;     2300157E (in bfl_main)
;;     2300158A (in bfl_main)
;;     23001596 (in bfl_main)
;;     2300159E (in bfl_main)
;;     230015AA (in bfl_main)
;;     230015B6 (in bfl_main)
;;     230015BE (in bfl_main)
;;     230015CA (in bfl_main)
;;     230015D6 (in bfl_main)
;;     230015DE (in bfl_main)
;;     230015EA (in bfl_main)
;;     230015F6 (in bfl_main)
;;     230015FE (in bfl_main)
;;     23001606 (in bfl_main)
;;     23001666 (in bfl_main)
;;     2300169E (in bfl_main)
;;     230016B2 (in bfl_main)
;;     2300183C (in wifi_prov_api_event_trigger_connect)
;;     23001850 (in wifi_prov_api_event_trigger_connect)
;;     23001872 (in wifi_prov_api_event_trigger_disconnect)
;;     23001886 (in wifi_prov_api_event_trigger_disconnect)
;;     230018A8 (in wifi_prov_api_event_trigger_scan)
;;     230018BC (in wifi_prov_api_event_trigger_scan)
;;     230018DE (in wifi_prov_api_event_state_get)
;;     230018F2 (in wifi_prov_api_event_state_get)
;;     2300633C (in wifi_edca_dump_cmd)
;;     2300635C (in wifi_edca_dump_cmd)
;;     23006398 (in wifi_edca_dump_cmd)
;;     230063D0 (in wifi_edca_dump_cmd)
;;     23006408 (in wifi_edca_dump_cmd)
;;     23006AAE (in wifi_sta_ip_info)
;;     23006ABA (in wifi_sta_ip_info)
;;     23006B3A (in wifi_sta_ip_info)
;;     23006B86 (in cmd_wifi_raw_send)
;;     23006BEA (in cmd_wifi_dump)
;;     23006C08 (in cmd_wifi_dump)
;;     23006D84 (in wifi_sta_ip_set_cmd)
;;     23006DDC (in wifi_sta_ip_set_cmd)
;;     23006DE2 (in wifi_sta_ip_set_cmd)
;;     23006DEA (in wifi_sta_ip_set_cmd)
;;     23006E02 (in wifi_sta_ip_set_cmd)
;;     23006E08 (in wifi_sta_ip_set_cmd)
;;     23006E10 (in wifi_sta_ip_set_cmd)
;;     23006E28 (in wifi_sta_ip_set_cmd)
;;     23006E2E (in wifi_sta_ip_set_cmd)
;;     23006E36 (in wifi_sta_ip_set_cmd)
;;     23006E4E (in wifi_sta_ip_set_cmd)
;;     23006E54 (in wifi_sta_ip_set_cmd)
;;     23006E5C (in wifi_sta_ip_set_cmd)
;;     23006E74 (in wifi_sta_ip_set_cmd)
;;     23006E7A (in wifi_sta_ip_set_cmd)
;;     23006E82 (in wifi_sta_ip_set_cmd)
;;     23007BCA (in cb_event_ind)
;;     23009CE6 (in bl_txdatacfm)
;;     23009D1C (in bl_txdatacfm)
;;     2300A3EC (in bl_utils_dump)
;;     2300A442 (in bl_utils_dump)
;;     2300A48E (in bl_utils_dump)
;;     2302644E (in bl_onchiphci_rx_packet_handler)
;;     23031E5E (in ef_port_init)
;;     2303696A (in exception_entry)
;;     230369B0 (in exception_entry)
;;     23036A66 (in bl_irq_init)
;;     23036BA6 (in sec_trng_IRQHandler)
;;     23036D44 (in bl_rand)
;;     23036E90 (in bl_wifi_enable_irq)
;;     2303A01A (in proc_entry_looprt)
;;     230437FA (in dhcp_server_recv)
;;     23044870 (in utils_hexdump)
;;     23046BA2 (in hal_mib_dump)
;;     23046BC8 (in hal_mib_dump)
;;     2304791C (in mm_timer_set)
;;     23048986 (in rxl_hwdesc_dump)
;;     23050C2A (in mac_vsie_find)
;;     23056C78 (in helper_record_dump)
;;     2305CA14 (in hal_dma_push)
;;     2306491C (in dump_cfg_entries)
;;     2306494C (in dump_cfg_entries)
;;     230649CA (in dump_cfg_entries)
;;     23067746 (in bl_mtd_open)
;;     2306779E (in bl_mtd_open)
;;     23067DBC (in bloop_status_dump)
;;     23067DEA (in bloop_status_dump)
puts proc
	lui	a5,0004200E
	lbu	a5,a5,-00000390
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	andi	a5,a5,+000000FF
	c.li	s0,00000000
	c.beqz	a5,0000000023003ABA

l23003AA2:
	c.mv	s1,a0
	c.li	s0,00000000
	c.j	0000000023003AB0

l23003AA8:
	c.li	a0,00000000
	jal	ra,0000000023035E00
	c.addi	s0,00000001

l23003AB0:
	add	a5,s1,s0
	lbu	a1,a5,+00000000
	c.bnez	a1,0000000023003AA8

l23003ABA:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; printf: 23003AC6
;;   Called from:
;;     23000C68 (in wifiprov_wifi_state_get)
;;     23000C76 (in wifiprov_wifi_state_get)
;;     23000C84 (in wifiprov_wifi_state_get)
;;     23000D30 (in _connect_wifi)
;;     23000E2E (in _connect_wifi)
;;     23000EC4 (in _connect_wifi)
;;     23000F0A (in _connect_wifi)
;;     23000F42 (in _connect_wifi)
;;     23000FE8 (in _connect_wifi)
;;     230010AE (in event_cb_wifi_event)
;;     230010D6 (in event_cb_wifi_event)
;;     23001276 (in event_cb_wifi_event)
;;     230012F0 (in event_cb_cli)
;;     23001348 (in aos_loop_proc)
;;     23001372 (in aos_loop_proc)
;;     2300139A (in aos_loop_proc)
;;     2300145A (in vApplicationMallocFailedHook)
;;     2300163C (in bfl_main)
;;     230016F0 (in wifiprov_api_state_get)
;;     2300170E (in wifiprov_wifi_scan)
;;     23001728 (in wifiprov_disc_from_ap_ind)
;;     23001746 (in wifiprov_connect_ap_ind)
;;     23001776 (in blsync_init)
;;     23002202 (in aos_loop_init)
;;     23002266 (in aos_poll_read_fd)
;;     23002418 (in aos_loop_run)
;;     23003B58 (in printErrMsg)
;;     23003B66 (in stateSnifferExit)
;;     23003B74 (in stateSnifferAction)
;;     23003CB2 (in stateConnectedIPNoAction_ipgot)
;;     23003CCA (in stateConnectedIPNoAction_ipgot)
;;     23003CD8 (in stateGlobalEnter)
;;     23003CE4 (in stateGlobalAction)
;;     23003CF6 (in stateConnectingEnter)
;;     23003D92 (in stateConnectedIPNoExit)
;;     23003DC6 (in stateDisconnect_action_idle)
;;     23003DD2 (in stateDisconnect_action_idle)
;;     23003DFE (in stateDisconnect_action_reconnect)
;;     23003E0A (in stateDisconnect_action_reconnect)
;;     23003E1C (in stateDisconnect_action_reconnect)
;;     23003E4C (in stateDisconnect_action_reconnect)
;;     23003E5A (in stateDisconnect_action_reconnect)
;;     23003E82 (in stateDisconnect_action_reconnect)
;;     23003E90 (in stateDisconnect_action_reconnect)
;;     23003EB8 (in stateDisconnect_action_reconnect)
;;     23003EDC (in stateDisconnect_action_reconnect)
;;     23003F6C (in ip_obtaining_timeout)
;;     23003F94 (in stateConnectedIPNoEnter)
;;     23004002 (in stateConnectedIPNoEnter)
;;     23004064 (in stateConnectedIPNoEnter)
;;     230040C8 (in stateConnectedIPYesGuard_rcconfig)
;;     2300410E (in stateIdleAction_connect)
;;     23004120 (in stateIdleAction_connect)
;;     23004150 (in stateIdleAction_connect)
;;     2300415E (in stateIdleAction_connect)
;;     23004186 (in stateIdleAction_connect)
;;     23004194 (in stateIdleAction_connect)
;;     230041BC (in stateIdleAction_connect)
;;     230041CC (in stateIdleAction_connect)
;;     230041E4 (in stateIdleAction_connect)
;;     23004208 (in stateIdleAction_connect)
;;     23004222 (in stateIdleAction_connect)
;;     23004242 (in stateIdleAction_connect)
;;     230043BC (in stateGlobalGuard_fw_powersaving)
;;     23004420 (in stateGlobalGuard_conf_max_sta)
;;     23004476 (in stateGlobalGuard_AP)
;;     230044BC (in stateGlobalGuard_AP)
;;     230044CE (in stateGlobalGuard_AP)
;;     230044FE (in stateGlobalGuard_AP)
;;     2300479A (in stateDisconnect_exit)
;;     230047AC (in stateDisconnect_exit)
;;     230047EE (in stateDisconnect_exit)
;;     23004818 (in disconnect_retry)
;;     23004824 (in disconnect_retry)
;;     23004848 (in stateGlobalGuard_fw_disconnect)
;;     2300486E (in stateConnectedIPYes_exit)
;;     23004970 (in stateIdleGuard_connect)
;;     2300499A (in stateIfaceDownGuard_phyup)
;;     23004A50 (in stateGlobalGuard_stop)
;;     23004A68 (in stateGlobalGuard_stop)
;;     23004A78 (in stateGlobalGuard_stop)
;;     23004A8C (in stateGlobalGuard_stop)
;;     23004AAA (in stateGlobalGuard_stop)
;;     23004AF4 (in stateGlobalGuard_enable_autoreconnect)
;;     23004B48 (in stateGlobalGuard_disable_autoreconnect)
;;     23004B54 (in stateGlobalGuard_disable_autoreconnect)
;;     23004B74 (in stateGlobalGuard_disable_autoreconnect)
;;     23004BA6 (in stateDisconnect_enter)
;;     23004BE0 (in stateDisconnect_enter)
;;     23004C42 (in stateDisconnect_enter)
;;     23004C68 (in stateDisconnect_enter)
;;     23004CC0 (in stateGlobalGuard_fw_scan)
;;     23004D06 (in stateGlobalGuard_fw_scan)
;;     23004D1E (in stateGlobalGuard_fw_scan)
;;     23004D44 (in stateGlobalExit)
;;     23004D52 (in stateSnifferEnter)
;;     23004D6E (in stateConnectingAction_connected)
;;     23004D7C (in stateConnectingAction_disconnect)
;;     23004D8A (in stateConnectingExit)
;;     23004D98 (in stateIdleAction_sniffer)
;;     23004DA6 (in stateIdleEnter)
;;     23004DB4 (in stateIdleExit)
;;     23004DC2 (in stateIfaceDownAction_phyup)
;;     23004DD0 (in stateIfaceDownEnter)
;;     23004DDE (in stateIfaceDownExit)
;;     23004DFA (in stateConnectedIPNoAction_disconnect)
;;     23004E16 (in stateConnectedIPYes_action)
;;     23004E2A (in stateConnectedIPYes_enter)
;;     23004E50 (in stateConnectedIPYes_enter)
;;     23004F8C (in wifi_mgmr_event_notify)
;;     23004FA4 (in wifi_mgmr_event_notify)
;;     23005026 (in wifi_mgmr_start)
;;     2300544C (in wifi_mgmr_api_connect)
;;     23006166 (in cmd_wifi_state_get)
;;     2300621A (in wifi_sta_get_state_cmd)
;;     2300622A (in wifi_sta_get_state_cmd)
;;     23006378 (in wifi_edca_dump_cmd)
;;     230063B0 (in wifi_edca_dump_cmd)
;;     230063E8 (in wifi_edca_dump_cmd)
;;     23006420 (in wifi_edca_dump_cmd)
;;     2300645C (in wifi_ap_sta_list_get_cmd)
;;     230064A2 (in wifi_ap_sta_list_get_cmd)
;;     230064AE (in wifi_ap_sta_list_get_cmd)
;;     230064BA (in wifi_ap_sta_list_get_cmd)
;;     230064C6 (in wifi_ap_sta_list_get_cmd)
;;     23006550 (in wifi_ap_sta_list_get_cmd)
;;     2300657C (in wifi_ap_sta_delete_cmd)
;;     230065AA (in wifi_ap_sta_delete_cmd)
;;     230065E6 (in wifi_ap_sta_delete_cmd)
;;     230065F4 (in wifi_ap_sta_delete_cmd)
;;     230066B6 (in wifi_ap_sta_delete_cmd)
;;     23006780 (in cmd_wifi_cfg)
;;     230067A4 (in cmd_wifi_cfg)
;;     23006840 (in cmd_wifi_cfg)
;;     23006882 (in cmd_wifi_cfg)
;;     23006898 (in cmd_wifi_cfg)
;;     230068BA (in cmd_wifi_cfg)
;;     230068DC (in cmd_wifi_cfg)
;;     23006904 (in cmd_wifi_ap_stop)
;;     23006A3E (in wifi_sta_ip_info)
;;     23006A52 (in wifi_sta_ip_info)
;;     23006A66 (in wifi_sta_ip_info)
;;     23006A7A (in wifi_sta_ip_info)
;;     23006A8E (in wifi_sta_ip_info)
;;     23006AA2 (in wifi_sta_ip_info)
;;     23006AD6 (in wifi_sta_ip_info)
;;     23006B04 (in wifi_sta_ip_info)
;;     23006B32 (in wifi_sta_ip_info)
;;     23006C22 (in cmd_wifi_ap_conf_max_sta)
;;     23006C3E (in cmd_wifi_ap_conf_max_sta)
;;     23006C76 (in wifi_rc_fixed_enable)
;;     23006CCA (in wifi_rc_fixed_enable)
;;     23006D02 (in wifi_rc_fixed_enable)
;;     23006D42 (in wifi_connect_cmd)
;;     23006EC2 (in wifi_capcode_cmd)
;;     23006EF8 (in wifi_capcode_cmd)
;;     23006F3C (in wifi_mgmr_cli_scanlist)
;;     23006F52 (in wifi_mgmr_cli_scanlist)
;;     23006FE8 (in wifi_mgmr_cli_scanlist)
;;     23006FFE (in wifi_mgmr_cli_scanlist)
;;     23007028 (in wifi_mgmr_cli_scanlist)
;;     230070EC (in wifi_mgmr_sta_enable)
;;     23007112 (in wifi_mgmr_sta_enable)
;;     23007368 (in wifi_mgmr_sta_connect_ind_stat_get)
;;     23007384 (in wifi_mgmr_sta_connect_ind_stat_get)
;;     230073B6 (in wifi_mgmr_sta_connect_ind_stat_get)
;;     230076AC (in wifi_mgmr_scan_complete_callback)
;;     230077EC (in wifi_mgmr_profile_add)
;;     230078E8 (in wifi_mgmr_profile_get)
;;     23007A06 (in cb_probe_resp_ind)
;;     23007A54 (in cb_disconnect_ind)
;;     23007BBA (in cb_event_ind)
;;     23007D0A (in bl_main_if_remove)
;;     23007D24 (in bl_main_if_remove)
;;     23007D98 (in bl_main_if_add)
;;     23007DC0 (in bl_main_if_add)
;;     23007DDC (in bl_main_if_add)
;;     23007E22 (in bl_main_if_add)
;;     23007E70 (in bl_main_apm_start)
;;     23007E98 (in bl_main_apm_start)
;;     23007EA8 (in bl_main_apm_start)
;;     23007EB8 (in bl_main_apm_start)
;;     23007EC8 (in bl_main_apm_start)
;;     23007ED8 (in bl_main_apm_start)
;;     23007F0E (in bl_main_apm_stop)
;;     23007F2A (in bl_main_apm_stop)
;;     23007FF8 (in bl_main_apm_sta_delete)
;;     230081E4 (in bl_main_rtthread_start)
;;     23008250 (in bl_main_rtthread_start)
;;     23008260 (in bl_main_rtthread_start)
;;     23008270 (in bl_main_rtthread_start)
;;     23008280 (in bl_main_rtthread_start)
;;     23008290 (in bl_main_rtthread_start)
;;     230082A0 (in bl_main_rtthread_start)
;;     230083F2 (in bl_handle_dynparams)
;;     23008490 (in bl_send_msg)
;;     230084CA (in bl_send_msg)
;;     2300852A (in bl_send_msg)
;;     230085BE (in bl_msg_zalloc.constprop.3)
;;     23008650 (in bl_msg_update_channel_cfg)
;;     230087EA (in bl_send_me_config_req)
;;     23008D80 (in bl_send_sm_connect_req)
;;     23009272 (in bl_rx_apm_sta_del_ind)
;;     23009282 (in bl_rx_apm_sta_del_ind)
;;     230092C0 (in bl_rx_apm_sta_del_ind)
;;     230092DE (in bl_rx_apm_sta_add_ind)
;;     230092EC (in bl_rx_apm_sta_add_ind)
;;     23009310 (in bl_rx_apm_sta_add_ind)
;;     23009320 (in bl_rx_apm_sta_add_ind)
;;     23009330 (in bl_rx_apm_sta_add_ind)
;;     230093B4 (in bl_rx_apm_sta_add_ind)
;;     230094A6 (in bl_rx_sm_connect_ind)
;;     230094B8 (in bl_rx_sm_connect_ind)
;;     230094CA (in bl_rx_sm_connect_ind)
;;     230094EE (in bl_rx_sm_connect_ind)
;;     230094FE (in bl_rx_sm_connect_ind)
;;     2300950E (in bl_rx_sm_connect_ind)
;;     2300951E (in bl_rx_sm_connect_ind)
;;     2300952E (in bl_rx_sm_connect_ind)
;;     2300953E (in bl_rx_sm_connect_ind)
;;     2300954E (in bl_rx_sm_connect_ind)
;;     2300955E (in bl_rx_sm_connect_ind)
;;     2300956E (in bl_rx_sm_connect_ind)
;;     2300957E (in bl_rx_sm_connect_ind)
;;     2300958E (in bl_rx_sm_connect_ind)
;;     2300959E (in bl_rx_sm_connect_ind)
;;     230095AE (in bl_rx_sm_connect_ind)
;;     230095BE (in bl_rx_sm_connect_ind)
;;     230096AC (in bl_rx_sm_connect_ind)
;;     230096DA (in bl_rx_sm_disconnect_ind)
;;     230096EA (in bl_rx_sm_disconnect_ind)
;;     230096FE (in bl_rx_sm_disconnect_ind)
;;     23009A02 (in bl_rx_scanu_result_ind)
;;     23009A36 (in bl_rx_scanu_result_ind)
;;     23009B9E (in bl_tx_push)
;;     23009D62 (in bl_output)
;;     23009DB8 (in bl_output)
;;     23009E74 (in bl_output)
;;     23009ECE (in bl_output)
;;     2300A018 (in tcpip_stack_input)
;;     2300A03E (in tcpip_stack_input)
;;     2300A126 (in tcpip_stack_input)
;;     2300A2A8 (in tcpip_stack_input)
;;     2300A2F2 (in tcpip_stack_input)
;;     2300A408 (in bl_utils_dump)
;;     2300A41E (in bl_utils_dump)
;;     2300A436 (in bl_utils_dump)
;;     2300A472 (in bl_utils_dump)
;;     2300A5AE (in netif_status_callback)
;;     2300A5C4 (in netif_status_callback)
;;     2300A5DA (in netif_status_callback)
;;     2300A5F4 (in netif_status_callback)
;;     2300A676 (in wifi_tx)
;;     2300A702 (in bl606a0_wifi_init)
;;     2300A736 (in bl606a0_wifi_init)
;;     2300A748 (in bl606a0_wifi_init)
;;     2300A7A8 (in ipc_host_init)
;;     2300AB64 (in cmd_mgr_llind)
;;     2300AFFC (in bdaddr_init)
;;     23011658 (in lld_evt_end)
;;     2301C39C (in hci_driver_send)
;;     2301C482 (in hci_data_buf_overflow)
;;     2301C5A2 (in le_remote_feat_complete)
;;     2301C606 (in le_conn_update_complete)
;;     2301C712 (in hci_num_completed_packets)
;;     2301C768 (in hci_num_completed_packets)
;;     2301C7FA (in update_sec_level)
;;     2301C848 (in hci_encrypt_key_refresh_complete)
;;     2301C8F0 (in hci_encrypt_change)
;;     2301CA26 (in handle_event)
;;     2301CA46 (in handle_event)
;;     2301CAD4 (in hci_cmd_done)
;;     2301CB14 (in hci_cmd_done)
;;     2301CE22 (in bt_hci_cmd_send_sync)
;;     2301D0FE (in hci_disconn_complete)
;;     2301D21C (in set_ad)
;;     2301D4D8 (in bt_id_add)
;;     2301D4F2 (in bt_id_add)
;;     2301D670 (in bt_id_del)
;;     2301D708 (in bt_id_del)
;;     2301D77E (in bt_data_parse)
;;     2301D890 (in bt_hci_cmd_send)
;;     2301D934 (in bt_le_set_data_len)
;;     2301DB20 (in le_adv_report)
;;     2301DD50 (in le_ltk_request)
;;     2301DDD0 (in le_ltk_request)
;;     2301DE60 (in le_conn_param_neg_reply)
;;     2301DF00 (in le_conn_param_req)
;;     2301E054 (in enh_conn_complete)
;;     2301E0EA (in enh_conn_complete)
;;     2301E3E6 (in hci_tx_thread)
;;     2301E40E (in hci_tx_thread)
;;     2301E462 (in hci_tx_thread)
;;     2301E4D2 (in bt_recv)
;;     2301E4F2 (in bt_recv)
;;     2301E574 (in bt_recv)
;;     2301E7FE (in bt_enable)
;;     2301E8DC (in bt_enable)
;;     2301E952 (in bt_id_create)
;;     2301EB4C (in init_work)
;;     2301EDAA (in init_work)
;;     2301F402 (in bt_pub_key_gen)
;;     2301F478 (in bt_pub_key_gen)
;;     2301F76C (in l2cap_accept)
;;     2301F7C4 (in l2cap_create_le_sig_pdu.isra.7)
;;     2301F8D8 (in l2cap_rtx_timeout)
;;     2301FEB2 (in l2cap_chan_add)
;;     2301FF58 (in bt_l2cap_recv)
;;     2301FF9A (in bt_l2cap_recv)
;;     23020124 (in l2cap_chan_le_recv_seg)
;;     23020212 (in l2cap_chan_le_recv_seg)
;;     230202A0 (in l2cap_rx_process)
;;     2302030A (in l2cap_rx_process)
;;     23020344 (in l2cap_recv)
;;     23020378 (in l2cap_recv)
;;     230205E2 (in l2cap_recv)
;;     230207B8 (in l2cap_recv)
;;     230208C8 (in l2cap_recv)
;;     23020976 (in smp_chan_get)
;;     23020B2C (in smp_sign_buf)
;;     23020FDC (in smp_pairing_failed)
;;     2302105A (in smp_timeout)
;;     230210D2 (in smp_ident_info)
;;     23021140 (in smp_encrypt_info)
;;     2302119C (in legacy_request_tk)
;;     23021244 (in legacy_request_tk)
;;     230213C4 (in bt_smp_accept)
;;     230219C4 (in bt_smp_distribute_keys)
;;     23021A14 (in bt_smp_distribute_keys)
;;     23021A34 (in bt_smp_distribute_keys)
;;     23021B74 (in smp_signing_info)
;;     23021C0E (in smp_master_ident)
;;     23021EB8 (in smp_security_request)
;;     230222D2 (in bt_smp_recv)
;;     2302230E (in bt_smp_recv)
;;     23022334 (in bt_smp_recv)
;;     2302235A (in bt_smp_recv)
;;     23022386 (in bt_smp_recv)
;;     2302297A (in smp_ident_addr_info)
;;     23022990 (in smp_ident_addr_info)
;;     230229D6 (in smp_ident_addr_info)
;;     23022CC4 (in bt_smp_pkey_ready)
;;     23022E9C (in smp_pairing_random)
;;     23023262 (in bt_smp_sign_verify)
;;     230232B2 (in bt_smp_sign_verify)
;;     230232DE (in bt_smp_sign_verify)
;;     2302331E (in bt_smp_sign)
;;     23023378 (in bt_smp_sign)
;;     23023796 (in bt_smp_update_keys)
;;     23023D08 (in notify_func)
;;     23023D24 (in notify_func)
;;     23023D34 (in le_param_updated)
;;     23023D4A (in ble_set_tx_pwr)
;;     23023D72 (in ble_set_tx_pwr)
;;     23023D90 (in ble_set_tx_pwr)
;;     23023DB2 (in ble_unsubscribe)
;;     23023DEA (in ble_unsubscribe)
;;     23023E08 (in write_func)
;;     23023E34 (in ble_exchange_mtu)
;;     23023E66 (in ble_exchange_mtu)
;;     23023E9C (in exchange_func)
;;     23023EBC (in ble_auth_pairing_confirm)
;;     23023ED6 (in ble_auth_passkey_confirm)
;;     23023EF0 (in ble_auth_cancel)
;;     23023F16 (in ble_auth)
;;     23023F42 (in ble_security)
;;     23023F74 (in ble_security)
;;     23023FA0 (in ble_select_conn)
;;     2302401A (in ble_disconnect)
;;     2302407C (in ble_disconnect)
;;     230240CE (in ble_connect)
;;     23024116 (in ble_connect)
;;     2302415E (in ble_stop_advertise)
;;     23024184 (in ble_get_device_name)
;;     23024194 (in ble_get_device_name)
;;     230241B6 (in ble_start_advertise)
;;     230241EC (in ble_start_advertise)
;;     23024216 (in ble_start_advertise)
;;     23024280 (in ble_start_advertise)
;;     23024290 (in ble_start_advertise)
;;     230242BC (in ble_start_advertise)
;;     2302434C (in ble_set_adv_channel)
;;     23024398 (in ble_stop_scan)
;;     230243A8 (in ble_stop_scan)
;;     230243C2 (in ble_disable)
;;     230243E4 (in discover_func)
;;     23024432 (in discover_func)
;;     23024458 (in discover_func)
;;     23024480 (in discover_func)
;;     23024490 (in discover_func)
;;     230244A2 (in discover_func)
;;     230244B4 (in discover_func)
;;     230244C6 (in discover_func)
;;     230244D8 (in discover_func)
;;     230244EA (in discover_func)
;;     230244FC (in discover_func)
;;     2302450E (in discover_func)
;;     23024524 (in discover_func)
;;     2302454E (in discover_func)
;;     23024568 (in ble_set_data_len)
;;     230245B8 (in ble_set_data_len)
;;     230245DC (in ble_subscribe)
;;     2302466A (in ble_subscribe)
;;     23024686 (in ble_write)
;;     23024766 (in ble_write)
;;     23024782 (in ble_read)
;;     23024806 (in ble_read)
;;     23024832 (in read_func)
;;     23024886 (in read_func)
;;     230248A2 (in read_func)
;;     230248FC (in ble_discover)
;;     230249A8 (in ble_discover)
;;     230249FC (in ble_auth_passkey)
;;     23024A60 (in ble_conn_update)
;;     23024AAE (in ble_conn_update)
;;     23024AD6 (in ble_unpair)
;;     23024B38 (in ble_start_scan)
;;     23024B86 (in ble_start_scan)
;;     23024BCE (in ble_set_device_name)
;;     23024BF2 (in ble_set_device_name)
;;     23024C18 (in ble_init)
;;     23024D24 (in device_found)
;;     23024D50 (in ble_read_local_address)
;;     23024D6C (in ble_read_local_address)
;;     23024D98 (in connected)
;;     23024DAC (in connected)
;;     23024DE0 (in disconnected)
;;     23024E1A (in security_changed)
;;     23024E40 (in auth_passkey_display)
;;     23024E64 (in auth_passkey_entry)
;;     23024E8A (in auth_passkey_confirm)
;;     23024EAC (in auth_cancel)
;;     23024ECE (in auth_pairing_confirm)
;;     23024EFE (in auth_pairing_complete)
;;     23024F2C (in auth_pairing_failed)
;;     23024F5A (in identity_resolved)
;;     23024F90 (in ble_get_all_conn_info)
;;     23024F9E (in ble_get_all_conn_info)
;;     23024FD0 (in ble_get_all_conn_info)
;;     23024FF0 (in ble_write_without_rsp)
;;     23025088 (in ble_write_without_rsp)
;;     230250F4 (in k_queue_free)
;;     2302518E (in k_sem_init)
;;     230251E0 (in k_sem_give)
;;     2302521A (in k_sem_delete)
;;     23025272 (in k_thread_delete)
;;     230268A0 (in send_frag)
;;     23026D70 (in bt_conn_recv)
;;     23026DAA (in bt_conn_recv)
;;     23026E40 (in bt_conn_recv)
;;     23026E50 (in bt_conn_recv)
;;     23026E88 (in bt_conn_send_cb)
;;     23026EBE (in bt_conn_send_cb)
;;     23026EEA (in bt_conn_send_cb)
;;     230270EC (in bt_conn_set_state)
;;     23027290 (in bt_conn_set_state)
;;     230277A8 (in bt_conn_create_le)
;;     23027AC2 (in bt_conn_create_pdu_timeout)
;;     23028046 (in gatt_notify)
;;     2302812C (in gatt_send.constprop.28)
;;     230281CE (in gatt_indicate)
;;     230285B4 (in sc_save)
;;     23028850 (in bt_gatt_attr_write_ccc)
;;     23028D2E (in bt_gatt_service_register)
;;     23028FAC (in update_ccc)
;;     2302905E (in update_ccc)
;;     23029358 (in bt_gatt_discover)
;;     230294F8 (in gatt_read_group_rsp)
;;     2302978C (in gatt_read_type_rsp)
;;     23029892 (in read_included_uuid_cb)
;;     23029958 (in gatt_find_info_rsp)
;;     23029C56 (in gatt_read_rsp)
;;     2302AE42 (in find_type_cb)
;;     2302B054 (in att_send)
;;     2302B116 (in att_handle_rsp)
;;     2302B29A (in bt_att_accept)
;;     2302B430 (in att_timeout)
;;     2302B4B4 (in bt_att_encrypt_change)
;;     2302B58C (in att_chan_get)
;;     2302B5A6 (in att_chan_get)
;;     2302B770 (in bt_att_create_pdu)
;;     2302B7B2 (in bt_att_create_pdu)
;;     2302B91E (in bt_att_recv)
;;     2302B97C (in bt_att_recv)
;;     2302B9AA (in bt_att_recv)
;;     2302C0FE (in att_signed_write_cmd)
;;     2302D77C (in __ble_bytes_send)
;;     2302D832 (in blsync_disconnected)
;;     2302D856 (in blsync_exchange_func)
;;     2302D93C (in blsync_connected)
;;     2302D966 (in blsync_connected)
;;     2302D99A (in blsync_connected)
;;     2302D9A8 (in blsync_connected)
;;     2302D9BE (in blsync_connected)
;;     2302F09C (in cb_idnoe)
;;     2302F0A8 (in cb_idnoe)
;;     2302F0F4 (in cb_idnoe)
;;     2302F154 (in cat_cmd)
;;     2302F184 (in cat_cmd)
;;     2302F194 (in cat_cmd)
;;     2302F1AA (in cat_cmd)
;;     2302F1CE (in hexdump_cmd)
;;     2302F1EA (in hexdump_cmd)
;;     2302F21A (in hexdump_cmd)
;;     2302F42C (in proc_onecmd)
;;     2302F57A (in ls_cmd)
;;     2302F586 (in ls_cmd)
;;     2302F5D2 (in ls_cmd)
;;     2302F604 (in ls_cmd)
;;     2302F640 (in ls_cmd)
;;     2302F64C (in ls_cmd)
;;     2302F6EE (in ls_cmd)
;;     2302FE8E (in cli_main_input)
;;     2302FF46 (in cli_main_input)
;;     2302FF9E (in cli_main_input)
;;     2303006C (in cli_main_input)
;;     230300EA (in cli_main_input)
;;     230301FA (in cli_main_input)
;;     230304E6 (in console_cb_read)
;;     23031EA0 (in ef_port_init)
;;     23036914 (in interrupt_entry)
;;     2303697C (in exception_entry)
;;     2303698E (in exception_entry)
;;     23039F18 (in bl_tsen_adc_get)
;;     2303A31A (in _led_bloop_evt)
;;     2303A5F2 (in tcpip_inpkt)
;;     2303A628 (in tcpip_inpkt)
;;     2303EC0E (in tcp_init)
;;     23043A3A (in dhcp_server_stop)
;;     23043ACE (in dhcpd_start)
;;     23043B1E (in dhcpd_start)
;;     23043B3E (in dhcpd_start)
;;     23043ECA (in romfs_lseek)
;;     23043EEC (in romfs_lseek)
;;     23043F06 (in romfs_lseek)
;;     23043F22 (in romfs_lseek)
;;     23044838 (in utils_hexdump)
;;     2304484C (in utils_hexdump)
;;     2304487C (in utils_hexdump)
;;     23044A1A (in utils_getopt)
;;     230465EC (in mfg_efuse_read_xtal_capcode)
;;     23046618 (in mfg_efuse_read_xtal_capcode)
;;     230466C0 (in mfg_efuse_read_poweroffset)
;;     230466EC (in mfg_efuse_read_poweroffset)
;;     2304689A (in mfg_efuse_read_macaddr)
;;     230468C6 (in mfg_efuse_read_macaddr)
;;     23046914 (in mfg_flash_read)
;;     2304694E (in mfg_flash_read)
;;     23046B40 (in mfg_flash_read_macaddr)
;;     23046BB8 (in hal_mib_dump)
;;     23048998 (in rxl_hwdesc_dump)
;;     230489C2 (in rxl_hwdesc_dump)
;;     230489DA (in rxl_hwdesc_dump)
;;     23048A06 (in rxl_hwdesc_dump)
;;     23048A1C (in rxl_hwdesc_dump)
;;     23048A60 (in rxl_hwdesc_dump)
;;     23048AE0 (in rxl_hwdesc_init)
;;     23048B52 (in rxl_hwdesc_init)
;;     23048B8E (in rxl_hwdesc_init)
;;     23048E02 (in sta_mgmt_init)
;;     23048E4E (in sta_mgmt_init)
;;     23048F5C (in sta_mgmt_register)
;;     230491F8 (in td_timer_end)
;;     2304929C (in td_reset)
;;     230492EE (in td_init)
;;     23049334 (in td_start)
;;     2304CECA (in scanu_frame_handler)
;;     2304CEF0 (in scanu_frame_handler)
;;     2304CF00 (in scanu_frame_handler)
;;     2304D05C (in scanu_frame_handler)
;;     2304D686 (in sm_get_bss_params)
;;     2304D6A2 (in sm_get_bss_params)
;;     2304D6E2 (in sm_get_bss_params)
;;     2304D6FA (in sm_get_bss_params)
;;     2304D71C (in sm_get_bss_params)
;;     2304D740 (in sm_get_bss_params)
;;     2304DD6E (in sm_connect_ind)
;;     2304DE3E (in sm_connect_ind)
;;     2304DE4E (in sm_connect_ind)
;;     2304DE86 (in sm_supplicant_deauth_cfm)
;;     2304E284 (in sm_auth_handler)
;;     2304E2D8 (in sm_auth_handler)
;;     2304E440 (in sm_assoc_rsp_handler)
;;     2304E4DA (in sm_deauth_handler)
;;     2304E546 (in sm_handle_supplicant_result)
;;     2304F07A (in apm_tx_cfm_handler)
;;     230516E2 (in add_key_to_mac)
;;     23051972 (in add_mfp_key_to_mac)
;;     23051988 (in add_mfp_key_to_mac)
;;     2305497C (in InitGroupKey)
;;     23056CBA (in helper_record_dump)
;;     23056CC8 (in helper_record_dump)
;;     23056CE4 (in helper_record_dump)
;;     23056CFE (in helper_record_dump)
;;     23056D1A (in helper_record_dump)
;;     23056D3A (in helper_record_dump)
;;     23058BD8 (in rf_pri_config_channel.constprop.9)
;;     23058C08 (in rf_pri_config_channel.constprop.9)
;;     2305A24E (in rf_pri_txcal)
;;     2305A3A2 (in rf_pri_txcal)
;;     2305A502 (in rf_pri_roscal)
;;     2305A538 (in rf_pri_roscal)
;;     2305A56A (in rf_pri_roscal)
;;     2305A59E (in rf_pri_roscal)
;;     2305A5DE (in rf_pri_roscal)
;;     2305A610 (in rf_pri_roscal)
;;     2305A63E (in rf_pri_roscal)
;;     2305A66E (in rf_pri_roscal)
;;     2305A790 (in rf_pri_rccal)
;;     2305A894 (in rf_pri_rccal)
;;     2305A9E0 (in rf_pri_lo_acal)
;;     2305ABE0 (in rf_pri_fcal)
;;     2305ACA2 (in rf_pri_fcal)
;;     2305CECC (in hal_machw_init)
;;     2305DE16 (in mm_sta_add)
;;     2305DEF6 (in mm_sta_add)
;;     2305F73C (in txl_buffer_update_thd)
;;     2305FC12 (in rxu_mgt_ind_handler)
;;     2305FC52 (in rxu_mgt_ind_handler)
;;     2306095A (in me_build_beacon)
;;     2306379A (in cfm_raw_send)
;;     230637B8 (in scanu_raw_send_req_handler)
;;     23063C9E (in sm_connect_req_handler)
;;     23064536 (in apm_start_req_handler)
;;     2306477A (in apm_start_req_handler)
;;     230647E4 (in apm_start_req_handler)
;;     2306482E (in apm_start_req_handler)
;;     2306496E (in dump_cfg_entries)
;;     2306497A (in dump_cfg_entries)
;;     23064986 (in dump_cfg_entries)
;;     23064992 (in dump_cfg_entries)
;;     2306499E (in dump_cfg_entries)
;;     230649B4 (in dump_cfg_entries)
;;     230649BE (in dump_cfg_entries)
;;     23064A2A (in cfg_start_req_handler)
;;     23064BE4 (in cfg_api_element_general_set)
;;     23064CBC (in cfg_api_element_set)
;;     23067682 (in bl_mtd_open)
;;     23067690 (in bl_mtd_open)
;;     230676B4 (in bl_mtd_open)
;;     230676C2 (in bl_mtd_open)
;;     230676EC (in bl_mtd_open)
;;     230676FA (in bl_mtd_open)
;;     2306771E (in bl_mtd_open)
;;     2306772C (in bl_mtd_open)
;;     23067754 (in bl_mtd_open)
;;     23067762 (in bl_mtd_open)
;;     23067772 (in bl_mtd_open)
;;     23067784 (in bl_mtd_open)
;;     23067792 (in bl_mtd_open)
;;     23067904 (in bloop_init)
;;     23067A58 (in bloop_evt_set_async)
;;     23067AB6 (in bloop_evt_set_sync)
;;     23067AF2 (in bloop_evt_unset_sync)
;;     23067BA6 (in bloop_run)
;;     23067C68 (in bloop_run)
;;     23067DCA (in bloop_status_dump)
;;     23067DD8 (in bloop_status_dump)
;;     23067E14 (in bloop_status_dump)
;;     23067E4A (in bloop_status_dump)
;;     23067E68 (in bloop_status_dump)
;;     23067E74 (in bloop_status_dump)
;;     23067E7E (in bloop_status_dump)
;;     23067E8A (in bloop_status_dump)
;;     23067EA0 (in bloop_status_dump)
;;     23067EE4 (in bloop_status_dump)
;;     23067F12 (in loop_evt_entity_sys_handler)
;;     23067F3A (in loop_evt_entity_sys_evt)
;;     23067F76 (in loop_evt_entity_sys_evt)
printf proc
	c.addi16sp	FFFFFFC0
	c.swsp	a5,00000098
	lui	a5,0004200E
	lbu	a5,a5,-00000390
	c.swsp	ra,0000008C
	c.swsp	a1,00000090
	c.swsp	a2,00000014
	c.swsp	a3,00000094
	c.swsp	a4,00000018
	c.swsp	a6,0000001C
	c.swsp	a7,0000009C
	andi	a5,a5,+000000FF
	c.beqz	a5,0000000023003AEE

l23003AE6:
	c.addi4spn	a1,00000024
	c.swsp	a1,00000084
	jal	ra,0000000023003A2E

l23003AEE:
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000040
	c.jr	ra

;; sprintf: 23003AF6
;;   Called from:
;;     230019F4 (in log_buf_out)
;;     23001A60 (in log_buf_out)
;;     23001AA0 (in log_buf_out)
;;     2302E482 (in print_number)
;;     2302E4F4 (in print_number)
;;     2302E754 (in print_string_ptr)
;;     23034886 (in vTaskList)
;;     23043B08 (in dhcpd_start)
;;     23043B2C (in dhcpd_start)
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
	jal	ra,0000000023003550
	c.lwsp	t3,00000020
	c.addi16sp	00000040
	c.jr	ra

;; snprintf: 23003B18
;;   Called from:
;;     2300694C (in cmd_wifi_ap_start)
;;     23024C74 (in bt_addr_le_to_str.constprop.14)
;;     23024CB0 (in bt_addr_le_to_str.constprop.14)
;;     23025A96 (in bt_addr_le_str_real)
;;     23025AD8 (in bt_addr_le_str_real)
;;     2302A4E0 (in bt_uuid_to_str)
;;     2302A562 (in bt_uuid_to_str)
;;     2302A5A0 (in bt_settings_encode_key)
;;     2302A5BA (in bt_settings_encode_key)
;;     2302CDC4 (in blog_hexdump_out)
;;     2302CE90 (in blog_hexdump_out)
;;     2302CEFC (in blog_hexdump_out)
;;     2302F5AE (in ls_cmd)
;;     2302F684 (in ls_cmd)
;;     2302F6CA (in ls_cmd)
;;     23037CEA (in hal_gpio_init_from_dts)
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
	jal	ra,0000000023003550
	c.lwsp	t3,00000020
	c.addi16sp	00000040
	c.jr	ra

;; stateSnifferGuard: 23003B34
stateSnifferGuard proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; stateConnectedIPYesGuard_ip_update: 23003B42
stateConnectedIPYesGuard_ip_update proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; printErrMsg: 23003B50
printErrMsg proc
	lui	a0,0002306F
	addi	a0,a0,+000004D0
	jal	zero,0000000023003AC6

;; stateSnifferExit: 23003B5C
stateSnifferExit proc
	c.mv	a1,a0
	lui	a0,00023070
	addi	a0,a0,-000003C0
	jal	zero,0000000023003AC6

;; stateSnifferAction: 23003B6A
stateSnifferAction proc
	c.mv	a1,a0
	lui	a0,00023070
	addi	a0,a0,-000003F4
	jal	zero,0000000023003AC6

;; stateConnectedIPNoAction_ipgot: 23003B78
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
	lui	a0,0002306F
	c.swsp	a4,00000000
	andi	a2,a2,+000000FF
	srli	a4,a1,00000018
	srli	a7,a7,00000010
	andi	a1,a1,+000000FF
	andi	a6,a6,+000000FF
	andi	a5,a5,+000000FF
	c.srli	a3,00000010
	addi	a0,a0,+00000504
	jal	ra,0000000023003AC6
	c.mv	a1,s0
	c.lwsp	s1,00000004
	c.lwsp	a3,00000020
	c.mv	a2,s1
	c.lwsp	t0,00000024
	lui	a0,00023070
	addi	a0,a0,-000003F4
	c.addi16sp	00000050
	jal	zero,0000000023003AC6

;; stateGlobalEnter: 23003CCE
stateGlobalEnter proc
	c.mv	a1,a0
	lui	a0,00023070
	addi	a0,a0,-000007B4
	jal	zero,0000000023003AC6

;; stateGlobalAction: 23003CDC
stateGlobalAction proc
	lui	a0,00023070
	addi	a0,a0,-000007D0
	jal	zero,0000000023003AC6

;; stateConnectingEnter: 23003CE8
stateConnectingEnter proc
	c.mv	a1,a0
	lui	a0,00023070
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000007B4
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000020
	c.li	a2,00000000
	c.li	a1,00000008
	c.li	a0,00000002
	c.addi	sp,00000010
	jal	zero,0000000023002BF6

;; stateSnifferGuard_ChannelSet: 23003D08
stateSnifferGuard_ChannelSet proc
	c.lw	a1,4(a5)
	lbu	a4,a5,+00000000
	bne	a0,a4,0000000023003D5A

l23003D12:
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
	jal	ra,0000000023007CDA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23003D5A:
	c.li	a0,00000000
	c.jr	ra

;; stateIdleGuard_sniffer: 23003D5E
stateIdleGuard_sniffer proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	bne	a0,a5,0000000023003D78

l23003D68:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023007C80
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l23003D78:
	c.li	a0,00000000
	c.jr	ra

;; stateConnectedIPNoExit: 23003D7C
stateConnectedIPNoExit proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	a1,a0
	c.mv	s0,a0
	lui	a0,00023070
	addi	a0,a0,-000003C0
	c.swsp	ra,00000084
	addi	s0,s0,+00000020
	jal	ra,0000000023003AC6
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,000000002303501E
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000005
	c.addi	sp,00000010
	jal	zero,000000002303501E

;; stateDisconnect_action_idle: 23003DB8
stateDisconnect_action_idle proc
	c.mv	a1,a0
	lui	a0,00023070
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000003F4
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6
	lui	a0,0002306F
	addi	a0,a0,+00000658
	jal	ra,0000000023003AC6
	lui	a5,00042017
	c.lwsp	a2,00000020
	lbu	a0,a5,-00000054
	c.addi	sp,00000010
	jal	zero,0000000023007CF8

;; stateDisconnect_action_reconnect: 23003DE6
stateDisconnect_action_reconnect proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.mv	a1,a0
	c.mv	s0,a0
	lui	a0,00023070
	addi	a0,a0,-000003F4
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	jal	ra,0000000023003AC6
	lui	a0,0002306F
	addi	a0,a0,+00000680
	jal	ra,0000000023003AC6
	addi	s1,s0,+0000004D
	lui	a0,0002306F
	c.mv	a1,s1
	addi	a0,a0,+0000069C
	jal	ra,0000000023003AC6
	lbu	a1,s0,+0000006F
	lbu	a5,s0,+0000006E
	lui	a0,0002306F
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+00000070
	addi	a0,a0,+000006B4
	addi	s2,s0,+00000072
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+00000071
	addi	s3,s0,+000000B3
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023003AC6
	lui	a0,0002306F
	c.mv	a1,s2
	addi	a0,a0,+000006D0
	jal	ra,0000000023003AC6
	lbu	a1,s0,+000000F5
	lbu	a5,s0,+000000F4
	lui	a0,0002306F
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+000000F6
	addi	a0,a0,+000006E4
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+000000F7
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023003AC6
	lui	a0,0002306F
	c.mv	a1,s3
	addi	a0,a0,+000006FC
	jal	ra,0000000023003AC6
	lbu	a1,s0,+000000F9
	lbu	a5,s0,+000000F8
	lui	a0,0002306F
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+000000FA
	addi	a0,a0,+00000710
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+000000FB
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023003AC6
	lbu	a6,s0,+000000FC
	lbu	a5,s0,+000000FD
	lbu	a4,s0,+000000FE
	lbu	a3,s0,+000000FF
	lbu	a2,s0,+00000100
	lbu	a1,s0,+00000101
	lui	a0,0002306F
	addi	a0,a0,+00000728
	jal	ra,0000000023003AC6
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
	jal	ra,00000000230080DE
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.li	a2,00000000
	c.li	a1,00000003
	c.li	a0,00000002
	c.addi16sp	00000030
	jal	zero,0000000023002BF6

;; ip_obtaining_timeout: 23003F5C
ip_obtaining_timeout proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002303532E
	lui	a0,0002306F
	addi	a0,a0,+000004B0
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023005BF6

;; stateConnectedIPNoEnter: 23003F78
stateConnectedIPNoEnter proc
	c.addi16sp	FFFFFFC0
	c.mv	a1,a0
	c.swsp	a0,00000084
	lui	a0,00023070
	addi	a0,a0,-000007B4
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	jal	ra,0000000023003AC6
	c.lwsp	a2,000000A4
	lui	a4,00023004
	c.lui	a1,00004000
	addi	s0,a3,+00000020
	lui	a0,0002306F
	c.mv	a5,s0
	addi	a4,a4,-000000A4
	c.li	a2,00000000
	addi	a1,a1,-00000568
	addi	a0,a0,+00000574
	jal	ra,0000000023034F9C
	jal	ra,0000000023033AF0
	c.mv	a2,a0
	c.li	a1,00000001
	c.li	a4,FFFFFFFF
	c.li	a3,00000000
	c.mv	a0,s0
	jal	ra,000000002303501E
	jal	ra,00000000230347A4
	lui	a5,00042017
	addi	a5,a5,-00000064
	c.lw	a5,24(s1)
	lw	s3,a5,+0000001C
	lw	s2,a5,+00000020
	lw	s5,a5,+00000024
	lw	s4,a5,+00000028
	lui	s0,00042017
	jal	ra,00000000230347B8
	addi	a1,s0,-00000038
	c.beqz	s1,000000002300405C

l23003FFA:
	lui	a0,0002306F
	addi	a0,a0,+00000588
	jal	ra,0000000023003AC6
	c.addi4spn	a1,00000014
	c.li	a0,00000000
	c.swsp	s5,00000088
	jal	ra,000000002303AE2A
	c.addi4spn	a1,00000014
	c.li	a0,00000001
	c.swsp	s4,00000088
	jal	ra,000000002303AE2A
	lui	a1,0002303C
	c.li	a2,00000000
	addi	a1,a1,+000004B0
	addi	a0,s0,-00000038
	c.swsp	s1,00000088
	c.swsp	s3,0000000C
	c.swsp	s2,0000008C
	jal	ra,000000002303A4EC
	c.addi4spn	a3,0000001C
	c.addi4spn	a2,00000018
	c.addi4spn	a1,00000014
	addi	a0,s0,-00000038
	jal	ra,000000002303A4B0

l23004040:
	c.li	a2,00000000
	c.li	a1,00000004
	c.li	a0,00000002
	jal	ra,0000000023002BF6
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

l2300405C:
	lui	a0,0002306F
	addi	a0,a0,+000005AC
	jal	ra,0000000023003AC6
	addi	a0,s0,-00000038
	jal	ra,00000000230079D6
	c.j	0000000023004040

;; stateConnectedIPNoGuard_disconnect: 23004072
;;   Called from:
;;     23004090 (in stateConnectedIPYesGuard_disconnect)
stateConnectedIPNoGuard_disconnect proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	bne	a0,a5,000000002300408C

l2300407C:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023007C48
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2300408C:
	c.li	a0,00000000
	c.jr	ra

;; stateConnectedIPYesGuard_disconnect: 23004090
stateConnectedIPYesGuard_disconnect proc
	jal	zero,0000000023004072

;; stateConnectedIPYesGuard_rcconfig: 23004094
stateConnectedIPYesGuard_rcconfig proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a1,4(s0)
	lbu	a5,s0,+00000000
	bne	a0,a5,00000000230040DE

l230040A4:
	lbu	a1,s0,+00000002
	lbu	a5,s0,+00000001
	lui	a0,0002306F
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+00000003
	addi	a0,a0,+000005E8
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+00000004
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023003AC6
	lbu	a5,s0,+00000002
	lbu	a1,s0,+00000001
	c.li	a0,00000000
	c.slli	a5,08
	c.or	a1,a5
	jal	ra,0000000023007D42

l230040DE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; stateIdleAction_connect: 230040E8
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
	lui	a0,00023070
	sb	zero,s0,+0000002D
	sb	zero,s0,+00000072
	addi	a0,a0,-000004E8
	c.mv	s5,a2
	jal	ra,0000000023003AC6
	addi	s1,s0,+0000000D
	lui	a0,0002306F
	c.mv	a1,s1
	addi	a0,a0,+0000069C
	jal	ra,0000000023003AC6
	lbu	a1,s0,+0000002F
	lbu	a5,s0,+0000002E
	lui	a0,0002306F
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+00000030
	addi	a0,a0,+000006B4
	addi	s2,s0,+00000032
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+00000031
	addi	s3,s0,+00000073
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023003AC6
	lui	a0,0002306F
	c.mv	a1,s2
	addi	a0,a0,+000006D0
	jal	ra,0000000023003AC6
	lbu	a1,s0,+000000B5
	lbu	a5,s0,+000000B4
	lui	a0,0002306F
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+000000B6
	addi	a0,a0,+000006E4
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+000000B7
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023003AC6
	lui	a0,0002306F
	c.mv	a1,s3
	addi	a0,a0,+000006FC
	jal	ra,0000000023003AC6
	lbu	a1,s0,+000000B9
	lbu	a5,s0,+000000B8
	lui	a0,0002306F
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+000000BA
	addi	a0,a0,+00000710
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+000000BB
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023003AC6
	lbu	a1,s0,+000000C2
	lui	a0,00023070
	addi	a0,a0,-000004CC
	jal	ra,0000000023003AC6
	lbu	a5,s0,+000000C4
	lbu	a1,s0,+000000C3
	lui	a0,00023070
	c.slli	a5,08
	c.or	a1,a5
	addi	a0,a0,-000004AC
	jal	ra,0000000023003AC6
	lbu	a5,s0,+000000BD
	lbu	a6,s0,+000000BC
	lbu	a4,s0,+000000BE
	lbu	a3,s0,+000000BF
	lbu	a2,s0,+000000C0
	lbu	a1,s0,+000000C1
	lui	a0,0002306F
	addi	a0,a0,+00000728
	jal	ra,0000000023003AC6
	lbu	a5,s0,+000000C5
	c.bnez	a5,00000000230042CE

l23004212:
	lui	a1,00023070
	addi	a1,a1,-000004F0

l2300421A:
	lui	a0,00023070
	addi	a0,a0,-0000048C
	jal	ra,0000000023003AC6
	lui	a0,00042017
	c.mv	a1,s1
	c.li	a2,FFFFFFFF
	addi	a0,a0,-00000064
	jal	ra,000000002300779C
	lui	a0,00023070
	c.mv	a2,s5
	c.mv	a1,s4
	addi	a0,a0,-000003F4
	jal	ra,0000000023003AC6
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
	jal	ra,00000000230080DE
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l230042CE:
	lui	a1,00023070
	addi	a1,a1,-000004F8
	c.j	000000002300421A

;; stateGlobal_cfg_req: 230042D8
stateGlobal_cfg_req proc
	c.lw	a1,4(a4)
	c.li	a5,00000016
	lbu	a3,a4,+00000000
	bne	a3,a5,0000000023004382

l230042E4:
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
	jal	ra,0000000023008082
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23004382:
	c.li	a0,00000000
	c.jr	ra

;; stateGlobalGuard_fw_powersaving: 23004386
stateGlobalGuard_fw_powersaving proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a1,4(s0)
	c.li	a5,00000010
	lbu	a4,s0,+00000000
	bne	a4,a5,00000000230043E0

l23004398:
	lbu	a1,s0,+00000002
	lbu	a5,s0,+00000001
	lui	a0,00023070
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+00000003
	addi	a0,a0,-00000660
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+00000004
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023003AC6
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
	jal	ra,0000000023007C64

l230043E0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; stateGlobalGuard_conf_max_sta: 230043EA
stateGlobalGuard_conf_max_sta proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a1,4(s0)
	c.li	a5,0000000A
	lbu	a4,s0,+00000000
	bne	a4,a5,000000002300442C

l230043FC:
	lbu	a1,s0,+00000002
	lbu	a5,s0,+00000001
	lui	a0,00023070
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+00000003
	addi	a0,a0,-00000700
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+00000004
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023003AC6
	lbu	a0,s0,+00000001
	jal	ra,0000000023008074

l2300442C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; stateGlobalGuard_AP: 23004436
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
	bne	a4,a5,000000002300447A

l2300444E:
	lui	a2,00042017
	lui	s1,00042017
	addi	a2,a2,+0000001C
	addi	a1,s1,+00000038
	c.li	a0,00000000
	jal	ra,0000000023007D72
	c.beqz	a0,000000002300448A

l23004466:
	lui	a1,0002306F
	lui	a0,00023070
	addi	a1,a1,+00000410
	addi	a0,a0,-00000794
	jal	ra,0000000023003AC6

l2300447A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2300448A:
	lui	a1,0002303E
	c.li	a2,00000000
	addi	a1,a1,+00000324
	addi	a0,s1,+00000038
	jal	ra,000000002303A4EC
	lui	a1,00023044
	c.li	a2,00000000
	addi	a1,a1,-00000596
	addi	a0,s1,+00000038
	jal	ra,000000002303A4EC
	addi	s2,s0,+00000011
	lui	a0,00023070
	c.mv	a1,s2
	addi	a0,a0,-00000770
	jal	ra,0000000023003AC6
	addi	s3,s0,+00000037
	lui	a0,00023070
	c.mv	a1,s3
	addi	a0,a0,-0000074C
	jal	ra,0000000023003AC6
	lbu	a1,s0,+0000000E
	lbu	a5,s0,+0000000D
	lui	a0,00023070
	c.slli	a1,08
	c.or	a1,a5
	lbu	a5,s0,+0000000F
	addi	a0,a0,-00000728
	lui	s1,00042017
	c.slli	a5,10
	c.or	a5,a1
	lbu	a1,s0,+00000010
	addi	s1,s1,-00000064
	c.slli	a1,18
	c.or	a1,a5
	jal	ra,0000000023003AC6
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
	jal	ra,0000000023007E46
	c.li	a5,00000001
	c.sw	s1,8(a5)
	jal	ra,0000000023030710
	c.li	a2,00000000
	c.li	a1,0000000B
	c.li	a0,00000002
	jal	ra,0000000023002BF6
	c.j	000000002300447A

;; stateGlobalGuard_scan_beacon: 23004542
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
	bne	a0,a5,00000000230046F4

l23004568:
	lui	a0,00042017
	addi	a5,a0,-00000064
	c.lui	a3,00001000
	c.add	a5,a3
	lbu	a4,s0,+0000003B
	lw	a5,a5,+000007C4
	lui	s6,00042018
	addi	s2,a0,-00000064
	addi	s6,s6,-00000064
	blt	a5,a4,00000000230046F4

l2300458C:
	beq	a4,zero,00000000230046F4

l23004590:
	lbu	a5,s0,+0000000D
	c.bnez	a5,00000000230045A0

l23004596:
	lw	a5,s6,+000007CC
	c.andi	a5,00000001
	beq	a5,zero,00000000230046F4

l230045A0:
	jal	ra,0000000023033AF0
	c.mv	s5,a0
	c.mv	s4,s2
	c.li	s8,00000000
	c.li	s7,FFFFFFFF
	c.li	s1,FFFFFFFF
	c.li	s9,FFFFFFFF
	c.li	s3,00000000
	addi	s10,s0,+0000000D
	addi	s11,s0,+00000035

l230045BA:
	lbu	a3,s4,+000002AA
	lw	a4,s6,+000007C4
	bge	a4,a3,000000002300466A

l230045C6:
	addi	a2,zero,+0000003C
	c.li	a1,00000000
	addi	a0,s4,+0000027C
	jal	ra,000000002306D1BC
	sb	zero,s4,+000002B0

l230045D8:
	c.mv	s9,s3

l230045DA:
	c.addi	s3,00000001
	addi	a5,zero,+00000032
	addi	s4,s4,+0000003C
	bne	s3,a5,00000000230045BA

l230045E8:
	c.li	a4,FFFFFFFF
	bne	s9,a4,000000002300472A

l230045EE:
	beq	s1,s9,00000000230046F4

l230045F2:
	addi	a0,zero,+0000003C
	add	s1,s1,a0
	addi	a2,zero,+0000003C
	c.li	a1,00000000
	addi	s4,s1,+0000027C
	c.add	s4,s2
	c.mv	a0,s4
	jal	ra,000000002306D1BC
	addi	a2,zero,+00000020
	addi	a1,s0,+0000000D
	c.mv	a0,s4
	add	s3,s2,s1
	jal	ra,000000002306D7AC
	c.mv	a0,s4
	sb	zero,s3,+0000029C
	jal	ra,000000002306D630
	addi	s1,s1,+000002A4
	sw	a0,s3,+000002A0
	c.li	a2,00000006
	addi	a1,s0,+00000035
	add	a0,s2,s1
	jal	ra,000000002306CF80
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
	c.j	00000000230046F4

l2300466A:
	lbu	a4,s4,+000002B0
	c.beqz	a4,00000000230045D8

l23004670:
	lw	a4,s4,+000002B4
	beq	s8,zero,0000000023004680

l23004678:
	sub	a3,a4,s7
	bge	a3,zero,0000000023004684

l23004680:
	c.mv	s7,a4
	c.mv	s1,s3

l23004684:
	c.li	a2,00000006
	c.mv	a1,s11
	addi	a0,s4,+000002A4
	jal	ra,000000002306CEF8
	c.li	s8,00000001
	c.bnez	a0,00000000230045DA

l23004694:
	addi	a1,s4,+0000027C
	c.mv	a0,s10
	jal	ra,000000002306D404
	c.bnez	a0,00000000230045DA

l230046A0:
	addi	s1,zero,+0000003C
	add	s1,s3,s1
	lb	a4,s0,+0000003C
	c.add	s1,s2
	lb	a5,s1,+000002AB
	blt	a4,a5,0000000023004714

l230046B6:
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

l230046F4:
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

l23004714:
	jal	ra,0000000023033AF0
	lw	a5,s1,+000002B4
	c.sub	a0,a5
	c.lui	a5,00001000
	addi	a5,a5,-00000449
	bge	a5,a0,00000000230046F4

l23004728:
	c.j	00000000230046B6

l2300472A:
	c.mv	s1,s9
	c.j	00000000230045F2

;; __reload_tsen: 2300472E
__reload_tsen proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002303532E
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023005C68

;; event_cb_wifi_event_mgmr: 2300473E
event_cb_wifi_event_mgmr proc
	lhu	a4,a0,+00000006
	c.li	a5,00000014
	bne	a4,a5,000000002300475A

l23004748:
	lui	a1,00023004
	c.li	a2,00000000
	addi	a1,a1,+0000075C
	addi	a0,zero,+00000055
	jal	zero,00000000230022FA

l2300475A:
	c.jr	ra

;; trigger_auto_denoise: 2300475C
trigger_auto_denoise proc
	lui	a5,0004200E
	lw	a5,a5,+000000A4
	c.beqz	a5,0000000023004784

l23004766:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023005FBC
	c.lwsp	a2,00000020
	lui	a1,00023004
	c.li	a2,00000000
	addi	a1,a1,+0000075C
	addi	a0,zero,+00000055
	c.addi	sp,00000010
	jal	zero,00000000230022FA

l23004784:
	c.jr	ra

;; stateDisconnect_exit: 23004786
stateDisconnect_exit proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	a1,a0
	c.mv	s0,a0
	lui	a0,00023070
	addi	a0,a0,-000003C0
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	jal	ra,0000000023003AC6
	lbu	a5,s0,+0000004C
	c.beqz	a5,00000000230047DE

l230047A4:
	lui	a0,0002306F
	addi	a0,a0,+000007D0
	jal	ra,0000000023003AC6
	addi	s1,s0,+00000020
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000003
	c.mv	a0,s1
	jal	ra,000000002303501E
	c.mv	a0,s1
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000005
	jal	ra,000000002303501E
	c.lwsp	a2,00000020
	sb	zero,s0,+0000004C
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230047DE:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,0002306F
	addi	a0,a0,+000007E0
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

;; disconnect_retry: 230047F2
disconnect_retry proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002303532E
	addi	a1,a0,+0000004D
	lui	a0,00042017
	addi	a0,a0,-00000064
	jal	ra,00000000230078AC
	c.beqz	a0,000000002300481C

l2300480C:
	c.lwsp	a2,00000020
	lui	a0,0002306F
	addi	a0,a0,+0000043C
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

l2300481C:
	lui	a0,0002306F
	addi	a0,a0,+00000484
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023005784

;; stateGlobalGuard_fw_disconnect: 23004830
stateGlobalGuard_fw_disconnect proc
	c.lw	a1,4(a5)
	lbu	a4,a5,+00000000
	c.li	a5,0000000F
	bne	a4,a5,0000000023004858

l2300483C:
	lui	a0,00023070
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-00000674
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6
	jal	ra,0000000023007C48
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23004858:
	c.li	a0,00000000
	c.jr	ra

;; stateConnectedIPYes_exit: 2300485C
stateConnectedIPYes_exit proc
	c.mv	a1,a0
	lui	a0,00023070
	c.addi	sp,FFFFFFE0
	addi	a0,a0,-000003C0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	zero,00000084
	jal	ra,0000000023003AC6
	lui	s0,00042017
	lui	a1,0002303C
	c.li	a2,00000000
	addi	a1,a1,+000004B0
	addi	a0,s0,-00000038
	jal	ra,000000002303A4EC
	c.addi4spn	a3,0000000C
	c.mv	a2,a3
	c.mv	a1,a3
	addi	a0,s0,-00000038
	jal	ra,000000002303A4B0
	lui	a5,0004200E
	addi	a5,a5,+000000A4
	c.lw	a5,0(a4)
	c.beqz	a4,00000000230048AC

l230048A2:
	c.li	a0,00000000
	sw	zero,a5,+00000000
	jal	ra,0000000023007C72

l230048AC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; stateGlobalGuard_denoise: 230048B4
stateGlobalGuard_denoise proc
	c.lw	a1,4(a3)
	c.li	a5,0000000C
	lbu	a4,a3,+00000000
	bne	a4,a5,0000000023004934

l230048C0:
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
	c.beqz	a5,0000000023004924

l230048E2:
	lui	a4,00042018
	addi	a4,a4,-00000064
	lw	a4,a4,+00000718
	lui	a5,0002306F
	addi	a5,a5,+000005CC
	bne	a4,a5,000000002300491C

l230048FA:
	lui	a5,0004200E
	addi	a5,a5,+000000A4
	c.lw	a5,0(a4)
	c.li	a0,00000003
	c.bnez	a4,000000002300492E

l23004908:
	c.li	a4,00000001
	c.li	a0,00000001
	c.sw	a5,0(a4)
	jal	ra,0000000023007C72
	c.li	a2,00000000
	c.li	a1,00000014
	c.li	a0,00000002
	jal	ra,0000000023002BF6

l2300491C:
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23004924:
	lui	a5,0004200E
	sw	zero,a5,+000000A4
	c.li	a0,00000000

l2300492E:
	jal	ra,0000000023007C72
	c.j	000000002300491C

l23004934:
	c.li	a0,00000000
	c.jr	ra

;; stateIdleGuard_connect: 23004938
stateIdleGuard_connect proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	bne	a0,a5,000000002300497E

l23004942:
	lui	a2,00042017
	lui	a1,00042017
	c.addi	sp,FFFFFFF0
	addi	a2,a2,-00000054
	addi	a1,a1,-00000038
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,0000000023007D72
	c.li	a5,00000001
	c.beqz	a0,0000000023004976

l23004960:
	lui	a1,0002306F
	lui	a0,00023070
	addi	a1,a1,+00000424
	addi	a0,a0,-0000046C
	jal	ra,0000000023003AC6
	c.li	a5,00000000

l23004976:
	c.lwsp	a2,00000020
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2300497E:
	c.li	a5,00000000
	c.mv	a0,a5
	c.jr	ra

;; stateIfaceDownGuard_phyup: 23004984
stateIfaceDownGuard_phyup proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	beq	a0,a5,00000000230049A6

l23004992:
	lui	a0,00023070
	addi	a0,a0,-0000042C
	jal	ra,0000000023003AC6
	c.li	a0,00000000

l230049A0:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l230049A6:
	jal	ra,0000000023007CA6
	sltiu	a0,a0,+00000001
	c.j	00000000230049A0

;; stateSnifferGuard_raw_send: 230049B0
stateSnifferGuard_raw_send proc
	lui	a5,00042018
	addi	a5,a5,-00000064
	lw	a4,a5,+00000718
	lui	a5,00023070
	addi	a5,a5,-00000514
	beq	a4,a5,0000000023004A28

l230049C8:
	lui	a5,00023070
	addi	a5,a5,-00000448
	beq	a4,a5,0000000023004A28

l230049D4:
	c.lw	a1,4(a5)
	c.li	a4,00000015
	lbu	a3,a5,+00000000
	bne	a3,a4,0000000023004A28

l230049E0:
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
	jal	ra,0000000023007D32
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23004A28:
	c.li	a0,00000000
	c.jr	ra

;; stateGlobalGuard_stop: 23004A2C
stateGlobalGuard_stop proc
	c.lw	a1,4(a5)
	lbu	a4,a5,+00000000
	c.li	a5,00000009
	bne	a4,a5,0000000023004ADA

l23004A38:
	c.addi	sp,FFFFFFF0
	lui	a0,00023070
	c.swsp	s0,00000004
	addi	a0,a0,-000005E4
	lui	s0,00042017
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	addi	s0,s0,-00000064
	jal	ra,0000000023003AC6
	lbu	a0,s0,+00000080
	lui	s1,00042017
	jal	ra,0000000023007EFC
	lui	a0,00023070
	addi	a0,a0,-000005C0
	jal	ra,0000000023003AC6
	jal	ra,0000000023008030
	lui	a0,00023070
	addi	a0,a0,-0000058C
	jal	ra,0000000023003AC6
	lbu	a0,s0,+00000080
	jal	ra,0000000023007CF8
	lui	a0,00023070
	addi	a0,a0,-00000568
	jal	ra,0000000023003AC6
	lui	a2,00023044
	addi	a2,a2,-000005E4
	c.li	a1,00000000
	addi	a0,s1,+00000038
	jal	ra,000000002303A4EC
	lui	a0,00023070
	addi	a0,a0,-0000053C
	jal	ra,0000000023003AC6
	lui	a1,0002303E
	c.li	a2,00000000
	addi	a1,a1,+00000296
	addi	a0,s1,+00000038
	jal	ra,000000002303A4EC
	c.li	a2,00000000
	c.li	a1,0000000C
	c.li	a0,00000002
	sw	zero,s0,+00000008
	jal	ra,0000000023002BF6
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23004ADA:
	c.li	a0,00000000
	c.jr	ra

;; stateGlobalGuard_enable_autoreconnect: 23004ADE
stateGlobalGuard_enable_autoreconnect proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	bne	a0,a5,0000000023004B0E

l23004AE8:
	lui	a0,00023070
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-0000068C
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6
	lui	a0,00042017
	c.li	a1,FFFFFFFF
	addi	a0,a0,-00000064
	jal	ra,00000000230079CA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23004B0E:
	c.li	a0,00000000
	c.jr	ra

;; stateGlobalGuard_disable_autoreconnect: 23004B12
stateGlobalGuard_disable_autoreconnect proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	bne	a0,a5,0000000023004B86

l23004B1C:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042017
	c.swsp	s1,00000080
	c.lui	a4,00001000
	addi	s1,s0,-00000064
	c.swsp	ra,00000084
	c.add	a4,s1
	lw	a4,a4,+00000718
	lui	a5,0002306F
	addi	a5,a5,+0000063C
	bne	a4,a5,0000000023004B6C

l23004B40:
	lui	a0,00023070
	addi	a0,a0,-000006D4
	jal	ra,0000000023003AC6
	lui	a0,0002306F
	addi	a0,a0,+00000658
	jal	ra,0000000023003AC6
	lbu	a0,s1,+00000010
	jal	ra,0000000023007CF8
	c.li	a0,00000001

l23004B62:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23004B6C:
	lui	a0,00023070
	addi	a0,a0,-000006A8
	jal	ra,0000000023003AC6
	c.li	a1,FFFFFFFF
	addi	a0,s0,-00000064
	jal	ra,00000000230079BC
	c.li	a0,00000000
	c.j	0000000023004B62

l23004B86:
	c.li	a0,00000000
	c.jr	ra

;; stateDisconnect_enter: 23004B8A
stateDisconnect_enter proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	a1,a0
	c.mv	s1,a0
	lui	a0,00023070
	addi	a0,a0,-000007B4
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	zero,00000084
	lui	s0,00042017
	jal	ra,0000000023003AC6
	c.li	a1,FFFFFFFF
	addi	a0,s0,-00000064
	jal	ra,00000000230079AE
	c.beqz	a0,0000000023004C60

l23004BB6:
	addi	s2,s1,+00000020
	lui	a4,00023004
	lui	a0,0002306F
	c.mv	a5,s2
	addi	a4,a4,+000007F2
	c.mv	a3,s1
	c.li	a2,00000000
	addi	a1,zero,+000007D0
	addi	a0,a0,+00000758
	jal	ra,0000000023034F9C
	lui	a0,0002306F
	addi	a0,a0,+00000768
	jal	ra,0000000023003AC6
	jal	ra,0000000023033AF0
	c.mv	a2,a0
	c.li	a4,FFFFFFFF
	c.li	a3,00000000
	c.li	a1,00000001
	c.mv	a0,s2
	jal	ra,000000002303501E
	c.li	a5,00000001
	sb	a5,s1,+0000004C

l23004BFC:
	c.lui	a5,00001000
	addi	s0,s0,-00000064
	c.add	s0,a5
	lhu	a2,s0,+00000750
	c.li	a1,00000005
	c.li	a0,00000002
	jal	ra,0000000023002BF6
	c.addi4spn	a0,0000000C
	jal	ra,0000000023056C14
	c.lwsp	a2,000000E4
	lui	s0,00042018
	addi	s0,s0,-00000064
	c.or	a0,a5
	c.bnez	a0,0000000023004C32

l23004C24:
	c.li	a2,00000000
	c.li	a1,00000017
	c.li	a0,00000002
	jal	ra,0000000023002BF6
	jal	ra,0000000023056C4C

l23004C32:
	lw	a5,s0,+000007C8
	c.andi	a5,00000001
	c.beqz	a5,0000000023004C54

l23004C3A:
	lui	a0,0002306F
	addi	a0,a0,+000007B0
	jal	ra,0000000023003AC6
	jal	ra,000000002300809A
	lw	a5,s0,+000007C8
	c.andi	a5,FFFFFFFE
	sw	a5,s0,+000007C8

l23004C54:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23004C60:
	lui	a0,0002306F
	addi	a0,a0,+0000078C
	jal	ra,0000000023003AC6
	c.j	0000000023004BFC

;; stateGlobalGuard_fw_scan: 23004C6E
stateGlobalGuard_fw_scan proc
	c.lw	a1,4(a5)
	lbu	a4,a5,+00000000
	c.li	a5,00000012
	bne	a4,a5,0000000023004D28

l23004C7A:
	c.addi	sp,FFFFFFF0
	lui	a5,00042018
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	a5,a5,-00000064
	lw	a5,a5,+00000718
	lui	a4,0002306F
	lui	s0,00042018
	addi	a4,a4,+00000620
	addi	s0,s0,-00000064
	beq	a5,a4,0000000023004CB8

l23004CA0:
	lui	a4,0002306F
	addi	a4,a4,+000004E8
	beq	a5,a4,0000000023004CB8

l23004CAC:
	lui	a4,0002306F
	addi	a4,a4,+0000063C
	bne	a5,a4,0000000023004CDA

l23004CB8:
	lui	a0,00023070
	addi	a0,a0,-00000634
	jal	ra,0000000023003AC6
	lw	a5,s0,+000007C8
	ori	a5,a5,+00000001
	sw	a5,s0,+000007C8

l23004CD0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23004CDA:
	lui	a4,00023070
	addi	a4,a4,-00000514
	beq	a5,a4,0000000023004D16

l23004CE6:
	lui	a4,0002306F
	addi	a4,a4,+000005CC
	beq	a5,a4,0000000023004D16

l23004CF2:
	lui	a4,00023070
	addi	a4,a4,-00000410
	beq	a5,a4,0000000023004D16

l23004CFE:
	lui	a0,00023070
	addi	a0,a0,-00000614
	jal	ra,0000000023003AC6
	c.li	a2,00000001
	c.li	a1,00000009
	c.li	a0,00000002
	jal	ra,0000000023002BF6
	c.j	0000000023004CD0

l23004D16:
	lui	a0,00023070
	addi	a0,a0,-000005FC
	jal	ra,0000000023003AC6
	jal	ra,000000002300809A
	c.j	0000000023004CD0

l23004D28:
	c.li	a0,00000000
	c.jr	ra

;; stateDisconnect_guard: 23004D2C
stateDisconnect_guard proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; stateGlobalExit: 23004D3A
stateGlobalExit proc
	c.mv	a1,a0
	lui	a0,00023070
	addi	a0,a0,-000007B4
	jal	zero,0000000023003AC6

;; stateSnifferEnter: 23004D48
stateSnifferEnter proc
	c.mv	a1,a0
	lui	a0,00023070
	addi	a0,a0,-000007B4
	jal	zero,0000000023003AC6

;; stateConnectingGuard: 23004D56
stateConnectingGuard proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; stateConnectingAction_connected: 23004D64
stateConnectingAction_connected proc
	c.mv	a1,a0
	lui	a0,00023070
	addi	a0,a0,-000003F4
	jal	zero,0000000023003AC6

;; stateConnectingAction_disconnect: 23004D72
stateConnectingAction_disconnect proc
	c.mv	a1,a0
	lui	a0,00023070
	addi	a0,a0,-000003F4
	jal	zero,0000000023003AC6

;; stateConnectingExit: 23004D80
stateConnectingExit proc
	c.mv	a1,a0
	lui	a0,00023070
	addi	a0,a0,-000003C0
	jal	zero,0000000023003AC6

;; stateIdleAction_sniffer: 23004D8E
stateIdleAction_sniffer proc
	c.mv	a1,a0
	lui	a0,00023070
	addi	a0,a0,-000003F4
	jal	zero,0000000023003AC6

;; stateIdleEnter: 23004D9C
stateIdleEnter proc
	c.mv	a1,a0
	lui	a0,00023070
	addi	a0,a0,-000007B4
	jal	zero,0000000023003AC6

;; stateIdleExit: 23004DAA
stateIdleExit proc
	c.mv	a1,a0
	lui	a0,00023070
	addi	a0,a0,-000007B4
	jal	zero,0000000023003AC6

;; stateIfaceDownAction_phyup: 23004DB8
stateIfaceDownAction_phyup proc
	c.mv	a1,a0
	lui	a0,00023070
	addi	a0,a0,-000003F4
	jal	zero,0000000023003AC6

;; stateIfaceDownEnter: 23004DC6
stateIfaceDownEnter proc
	c.mv	a1,a0
	lui	a0,00023070
	addi	a0,a0,-000007B4
	jal	zero,0000000023003AC6

;; stateIfaceDownExit: 23004DD4
stateIfaceDownExit proc
	c.mv	a1,a0
	lui	a0,00023070
	addi	a0,a0,-000003C0
	jal	zero,0000000023003AC6

;; stateConnectedIPNoGuard: 23004DE2
stateConnectedIPNoGuard proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; stateConnectedIPNoAction_disconnect: 23004DF0
stateConnectedIPNoAction_disconnect proc
	c.mv	a1,a0
	lui	a0,00023070
	addi	a0,a0,-000003F4
	jal	zero,0000000023003AC6

;; stateConnectedIPYesGuard: 23004DFE
stateConnectedIPYesGuard proc
	c.lw	a1,4(a5)
	lbu	a5,a5,+00000000
	c.sub	a0,a5
	sltiu	a0,a0,+00000001
	c.jr	ra

;; stateConnectedIPYes_action: 23004E0C
stateConnectedIPYes_action proc
	c.mv	a1,a0
	lui	a0,00023070
	addi	a0,a0,-000003F4
	jal	zero,0000000023003AC6

;; stateConnectedIPYes_enter: 23004E1A
stateConnectedIPYes_enter proc
	c.mv	a1,a0
	lui	a0,00023070
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-000007B4
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023003AC6
	c.li	a2,00000000
	c.li	a1,00000007
	c.li	a0,00000002
	lui	s0,00042018
	jal	ra,0000000023002BF6
	addi	s0,s0,-00000064
	lw	a5,s0,+000007C8
	c.andi	a5,00000001
	c.beqz	a5,0000000023004E62

l23004E48:
	lui	a0,0002306F
	addi	a0,a0,+000007B0
	jal	ra,0000000023003AC6
	jal	ra,000000002300809A
	lw	a5,s0,+000007C8
	c.andi	a5,FFFFFFFE
	sw	a5,s0,+000007C8

l23004E62:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_auth_to_str: 23004E6A
;;   Called from:
;;     23006FBA (in wifi_mgmr_cli_scanlist)
wifi_mgmr_auth_to_str proc
	c.li	a5,00000005
	bltu	a5,a0,0000000023004EB2

l23004E70:
	lui	a5,0002306F
	addi	a5,a5,+000003F8
	c.slli	a0,02
	c.add	a0,a5
	c.lw	a0,0(a5)
	c.jr	a5
23004E80 37 05 07 23 13 05 C5 CE 82 80 37 05 07 23 13 05 7..#......7..#..
23004E90 05 CB 82 80 37 05 07 23 13 05 85 CB 82 80 37 05 ....7..#......7.
23004EA0 07 23 13 05 45 CC 82 80 37 05 07 23 13 05 85 CD .#..E...7..#....
23004EB0 82 80                                           ..             

l23004EB2:
	lui	a0,00023070
	addi	a0,a0,-00000358
	c.jr	ra
23004EBC                                     37 05 07 23             7..#
23004EC0 13 05 05 CA 82 80                               ......         

;; wifi_mgmr_cipher_to_str: 23004EC6
;;   Called from:
;;     23006FC4 (in wifi_mgmr_cli_scanlist)
wifi_mgmr_cipher_to_str proc
	c.beqz	a0,0000000023004EEA

l23004EC8:
	c.li	a5,00000001
	beq	a0,a5,0000000023004EF4

l23004ECE:
	c.li	a5,00000002
	beq	a0,a5,0000000023004EFE

l23004ED4:
	c.li	a5,00000003
	beq	a0,a5,0000000023004F08

l23004EDA:
	c.li	a5,00000004
	beq	a0,a5,0000000023004F12

l23004EE0:
	lui	a0,00023070
	addi	a0,a0,-00000358
	c.jr	ra

l23004EEA:
	lui	a0,00023070
	addi	a0,a0,-000002FC
	c.jr	ra

l23004EF4:
	lui	a0,00023070
	addi	a0,a0,-00000314
	c.jr	ra

l23004EFE:
	lui	a0,00023070
	addi	a0,a0,-000002F4
	c.jr	ra

l23004F08:
	lui	a0,00023070
	addi	a0,a0,-00000310
	c.jr	ra

l23004F12:
	lui	a0,00023070
	addi	a0,a0,-00000308
	c.jr	ra

;; wifi_mgmr_event_notify: 23004F1C
;;   Called from:
;;     23005458 (in wifi_mgmr_api_connect)
;;     230055E2 (in wifi_mgmr_api_cfg_req)
;;     23005700 (in wifi_mgmr_api_ip_got)
;;     23005778 (in wifi_mgmr_api_ip_update)
;;     230057EA (in wifi_mgmr_api_reconnect)
;;     2300585C (in wifi_mgmr_api_disable_autoreconnect)
;;     230058CE (in wifi_mgmr_api_enable_autoreconnect)
;;     23005940 (in wifi_mgmr_api_disconnect)
;;     230059AA (in wifi_mgmr_api_rate_config)
;;     23005A14 (in wifi_mgmr_api_conf_max_sta)
;;     23005A88 (in wifi_mgmr_api_ifaceup)
;;     23005AFA (in wifi_mgmr_api_sniffer_enable)
;;     23005BE2 (in wifi_mgmr_api_scan_item_beacon)
;;     23005C5C (in wifi_mgmr_api_fw_disconnect)
;;     23005CCC (in wifi_mgmr_api_fw_tsen_reload)
;;     23005D3E (in wifi_mgmr_api_fw_scan)
;;     23005DB0 (in wifi_mgmr_api_fw_powersaving)
;;     23005ED2 (in wifi_mgmr_api_ap_start)
;;     23005F40 (in wifi_mgmr_api_ap_stop)
;;     23005FB0 (in wifi_mgmr_api_idle)
;;     23006016 (in wifi_mgmr_api_denoise_enable)
;;     2300607A (in wifi_mgmr_api_denoise_disable)
;;     230060EA (in wifi_mgmr_api_raw_send)
;;     23007AC6 (in cb_disconnect_ind)
;;     23007B4C (in cb_connect_ind)
wifi_mgmr_event_notify proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a0
	lui	s1,00042017
	lui	s2,00023070

l23004F30:
	lbu	a5,s1,-00000064
	c.beqz	a5,0000000023004FA0

l23004F36:
	lbu	a2,s0,+0000000A
	lbu	a5,s0,+00000009
	lui	a0,00042018
	c.slli	a2,08
	c.or	a2,a5
	lbu	a5,s0,+0000000B
	c.li	a3,FFFFFFFF
	c.mv	a1,s0
	c.slli	a5,10
	c.or	a5,a2
	lbu	a2,s0,+0000000C
	addi	a0,a0,-00000230
	c.slli	a2,18
	c.or	a2,a5
	jal	ra,0000000023032F8E
	c.li	a5,00000000
	c.bnez	a0,0000000023004F92

l23004F66:
	lbu	a2,s0,+0000000A
	lbu	a5,s0,+00000009
	lui	a0,00023070
	c.slli	a2,08
	c.or	a2,a5
	lbu	a5,s0,+0000000B
	c.mv	a1,s0
	addi	a0,a0,-000002D0
	c.slli	a5,10
	c.or	a5,a2
	lbu	a2,s0,+0000000C
	c.slli	a2,18
	c.or	a2,a5
	jal	ra,0000000023003AC6
	c.li	a5,FFFFFFFF

l23004F92:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23004FA0:
	addi	a0,s2,-000002F0
	jal	ra,0000000023003AC6
	c.li	a0,00000014
	jal	ra,0000000023033E10
	c.j	0000000023004F30

;; wifi_mgmr_start: 23004FB0
;;   Called from:
;;     2300510A (in _wifi_mgmr_entry)
wifi_mgmr_start proc
	c.addi16sp	FFFFFEE0
	sw	s0,sp,+00000118
	lui	a2,0002306F
	lui	a1,00023070
	lui	s0,00042018
	c.li	a5,00000001
	addi	a2,a2,+000007F8
	addi	a1,a1,-00000448
	sw	s4,sp,+00000108
	addi	a0,s0,+000006B4
	addi	s4,sp,+00000019
	sw	ra,sp,+0000011C
	c.swsp	a5,00000008
	sw	s1,sp,+00000114
	sw	s2,sp,+00000110
	sw	s3,sp,+0000010C
	sw	s5,sp,+00000104
	c.swsp	s4,00000088
	jal	ra,000000002300A4AA
	jal	ra,0000000023007BE8
	lui	a1,00023004
	c.li	a2,00000000
	addi	a1,a1,+0000073E
	c.li	a0,00000002
	jal	ra,0000000023002C2A
	c.li	a2,00000000
	c.li	a1,00000002
	c.li	a0,00000002
	jal	ra,0000000023002BF6
	addi	a1,zero,+000000FF
	addi	a0,zero,+000000FF
	jal	ra,000000002303812E
	lui	a0,00023070
	addi	a0,a0,-000002A8
	jal	ra,0000000023003AC6
	lui	a3,0004200D
	addi	s1,a3,+00000290
	addi	s1,s1,+00000020
	lui	a4,00023004
	c.lui	a1,00002000
	lui	a0,00023070
	c.mv	a5,s1
	addi	a4,a4,+0000072E
	addi	a3,a3,+00000290
	c.li	a2,00000001
	addi	a1,a1,+00000710
	addi	a0,a0,-00000290
	jal	ra,0000000023034F9C
	jal	ra,0000000023033AF0
	c.mv	a2,a0
	c.li	a4,FFFFFFFF
	c.mv	a0,s1
	c.li	a3,00000000
	c.li	a1,00000001
	lui	s1,00042018
	lui	s2,0002306F
	lui	s3,0002306F
	jal	ra,000000002303501E
	addi	s1,s1,-00000064
	addi	s2,s2,+00000620
	addi	s3,s3,+0000063C

l23005082:
	lui	s5,00042018

l23005086:
	c.li	a3,FFFFFFFF
	addi	a2,zero,+000000E0
	c.mv	a1,s4
	addi	a0,s5,-00000230
	jal	ra,0000000023033166
	c.beqz	a0,0000000023005086

l23005098:
	lbu	a4,sp,+00000019
	c.li	a3,0000000D
	bne	a4,a3,00000000230050EA

l230050A2:
	lw	a5,s1,+00000718
	sh	zero,sp,+0000000E
	beq	a5,s2,00000000230050D6

l230050AE:
	beq	a5,s3,00000000230050D6

l230050B2:
	lui	a4,0002306F
	addi	a4,a4,+000005CC
	beq	a5,a4,00000000230050D6

l230050BE:
	lui	a4,00023070
	addi	a4,a4,-00000410
	beq	a5,a4,00000000230050D6

l230050CA:
	lui	a4,0002306F
	addi	a4,a4,+000004E8
	bne	a5,a4,0000000023005082

l230050D6:
	c.li	a1,00000000
	addi	a0,sp,+0000000E
	jal	ra,0000000023039E46
	lh	a0,sp,+0000000E
	jal	ra,0000000023056BF4
	c.j	0000000023005082

l230050EA:
	c.li	a5,00000001
	bgeu	a3,a4,00000000230050F8

l230050F0:
	c.li	a5,00000016
	sltu	a5,a5,a4
	c.slli	a5,01

l230050F8:
	c.addi4spn	a1,00000010
	addi	a0,s0,+000006B4
	c.swsp	a5,00000008
	jal	ra,000000002300A4B6
	c.j	0000000023005082

;; _wifi_mgmr_entry: 23005106
_wifi_mgmr_entry proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023004FB0

;; wifi_mgmr_start_background: 2300510E
;;   Called from:
;;     230010C2 (in event_cb_wifi_event)
;;     2300510A (in _wifi_mgmr_entry)
wifi_mgmr_start_background proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	jal	ra,00000000230070A6
	lui	a1,00023070
	lui	a0,00023005
	c.addi4spn	a5,0000000C
	c.li	a4,0000001C
	c.li	a3,00000000
	addi	a2,zero,+00000300
	addi	a1,a1,-0000027C
	addi	a0,a0,+00000106
	c.swsp	zero,00000084
	jal	ra,00000000230337F0
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_init: 2300513C
;;   Called from:
;;     230070B8 (in wifi_mgmr_drv_init)
wifi_mgmr_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	a4,00042018
	c.lui	s0,00001000
	lui	a3,00042018
	addi	a4,a4,-00000230
	addi	a0,s0,-00000740
	addi	a3,a3,-0000020C
	c.li	a2,00000001
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023032E58
	lui	a5,00042017
	addi	a5,a5,-00000064
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

;; wifi_mgmr_status_code_clean_internal: 23005186
;;   Called from:
;;     2300173A (in wifiprov_connect_ap_ind)
wifi_mgmr_status_code_clean_internal proc
	lui	a5,00042018
	addi	a5,a5,-00000064
	sh	zero,a5,+00000750
	c.li	a0,00000000
	c.jr	ra

;; wifi_mgmr_state_get_internal: 23005196
;;   Called from:
;;     23007612 (in wifi_mgmr_state_get)
wifi_mgmr_state_get_internal proc
	lui	a5,00042017
	addi	a5,a5,-00000064
	c.lui	a3,00001000
	c.add	a3,a5
	lw	a4,a3,+00000718
	lui	a2,00023070
	addi	a2,a2,-00000514
	lhu	a3,a3,+00000750
	bne	a4,a2,00000000230051DA

l230051B6:
	c.lw	a5,8(a5)
	c.beqz	a5,00000000230051C2

l230051BA:
	c.li	a5,00000011

l230051BC:
	c.sw	a0,0(a5)

l230051BE:
	c.li	a0,00000000
	c.jr	ra

l230051C2:
	c.li	a5,00000001

l230051C4:
	c.sw	a0,0(a5)
	c.li	a5,00000008
	bne	a3,a5,00000000230051D0

l230051CC:
	c.li	a5,00000008
	c.j	00000000230051BC

l230051D0:
	c.li	a5,0000000C
	bne	a3,a5,00000000230051BE

l230051D6:
	c.li	a5,00000009
	c.j	00000000230051BC

l230051DA:
	lui	a2,0002306F
	addi	a2,a2,+00000620
	bne	a4,a2,00000000230051F2

l230051E6:
	c.lw	a5,8(a5)
	c.beqz	a5,00000000230051EE

l230051EA:
	c.li	a5,00000012
	c.j	00000000230051BC

l230051EE:
	c.li	a5,00000002
	c.j	00000000230051C4

l230051F2:
	lui	a2,0002306F
	addi	a2,a2,+000004E8
	bne	a4,a2,000000002300520A

l230051FE:
	c.lw	a5,8(a5)
	c.beqz	a5,0000000023005206

l23005202:
	c.li	a5,00000013
	c.j	00000000230051BC

l23005206:
	c.li	a5,00000003
	c.j	00000000230051BC

l2300520A:
	lui	a2,0002306F
	addi	a2,a2,+000005CC
	bne	a4,a2,0000000023005222

l23005216:
	c.lw	a5,8(a5)
	c.beqz	a5,000000002300521E

l2300521A:
	c.li	a5,00000014
	c.j	00000000230051BC

l2300521E:
	c.li	a5,00000004
	c.j	00000000230051BC

l23005222:
	lui	a2,0002306F
	addi	a2,a2,+0000063C
	bne	a4,a2,000000002300523A

l2300522E:
	c.lw	a5,8(a5)
	c.beqz	a5,0000000023005236

l23005232:
	c.li	a5,00000015
	c.j	00000000230051BC

l23005236:
	c.li	a5,00000005
	c.j	00000000230051C4

l2300523A:
	lui	a5,00023070
	addi	a5,a5,-00000448
	bne	a4,a5,000000002300524A

l23005246:
	c.li	a5,00000006
	c.j	00000000230051BC

l2300524A:
	lui	a5,00023070
	addi	a5,a5,-00000410
	bne	a4,a5,000000002300525A

l23005256:
	c.li	a5,00000007
	c.j	00000000230051BC

l2300525A:
	sw	zero,a0,+00000000
	c.j	00000000230051BE

;; wifi_mgmr_set_connect_stat_info: 23005260
;;   Called from:
;;     23007B46 (in cb_connect_ind)
wifi_mgmr_set_connect_stat_info proc
	lhu	a4,a0,+00000000
	lui	a5,00042018
	addi	a5,a5,-00000064
	sh	a4,a5,+00000750
	lui	a4,00042018
	lui	a5,00042018
	addi	a3,a0,+00000002
	addi	a4,a4,+00000750
	addi	a2,a0,+00000008
	addi	a5,a5,-00000064

l23005288:
	lbu	a6,a3,+00000000
	c.addi	a3,00000001
	c.addi	a4,00000001
	sb	a6,a4,+00000FFF
	bne	a3,a2,0000000023005288

l23005298:
	lhu	a4,a0,+00000014
	sh	a4,a5,+000007BA
	lbu	a4,a0,+00000012
	sb	a1,a5,+00000752
	sb	a4,a5,+000007BC
	c.jr	ra

;; wifi_mgmr_set_country_code_internal: 230052AE
;;   Called from:
;;     230060FE (in wifi_mgmr_api_set_country_code)
wifi_mgmr_set_country_code_internal proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	a0,00000084
	jal	ra,0000000023007D52
	c.lwsp	a2,00000064
	lui	a0,00042018
	c.li	a2,00000003
	addi	a0,a0,+0000075A
	lui	s0,00042018
	jal	ra,000000002306D7AC
	addi	s0,s0,-00000064
	sb	zero,s0,+000007C0
	jal	ra,0000000023007D6E
	sw	a0,s0,+000007C4
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_ap_sta_cnt_get_internal: 230052E8
;;   Called from:
;;     2300755A (in wifi_mgmr_ap_sta_cnt_get)
wifi_mgmr_ap_sta_cnt_get_internal proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023007F38
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_ap_sta_info_get_internal: 230052F8
;;   Called from:
;;     23007580 (in wifi_mgmr_ap_sta_info_get)
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
	jal	ra,000000002306D1BC
	c.mv	a1,s1
	c.addi4spn	a0,00000008
	jal	ra,0000000023007F42
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
	jal	ra,000000002306CF80
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; wifi_mgmr_ap_sta_delete_internal: 2300534C
;;   Called from:
;;     230075BE (in wifi_mgmr_ap_sta_delete)
wifi_mgmr_ap_sta_delete_internal proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023007FAE
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_scan_complete_notify: 2300535C
;;   Called from:
;;     23007BCE (in cb_event_ind)
wifi_mgmr_scan_complete_notify proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023007696
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_api_connect: 2300536C
;;   Called from:
;;     23007452 (in wifi_mgmr_sta_connect)
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
	jal	ra,000000002306D1BC
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
	jal	ra,000000002306D630
	srli	a5,a0,00000010
	c.mv	a2,a0
	sh	a0,sp,+00000036
	c.mv	a1,s5
	addi	a0,sp,+00000015
	sh	a5,sp,+00000038
	jal	ra,000000002306CF80
	sb	zero,sp,+00000035
	bne	s2,zero,0000000023005460

l23005412:
	c.swsp	zero,000000DC

l23005414:
	sb	zero,sp,+0000007A
	c.bnez	s1,0000000023005494

l2300541A:
	c.swsp	zero,00000060

l2300541C:
	sb	zero,sp,+000000BB
	beq	s3,zero,000000002300542E

l23005424:
	c.li	a2,00000006
	c.mv	a1,s3
	c.addi4spn	a0,000000C4
	jal	ra,000000002306CF80

l2300542E:
	c.beqz	s0,0000000023005450

l23005430:
	lui	a0,00023070
	srli	a5,s0,00000008
	c.mv	a2,s0
	c.mv	a1,s4
	addi	a0,a0,-00000270
	sb	s4,sp,+000000CA
	sb	s0,sp,+000000CB
	sb	a5,sp,+000000CC
	jal	ra,0000000023003AC6

l23005450:
	c.li	a5,00000001
	c.addi4spn	a0,00000008
	sb	a5,sp,+000000CD
	jal	ra,0000000023004F1C
	c.li	a0,00000000
	c.j	0000000023005474

l23005460:
	c.mv	a0,s2
	jal	ra,000000002306D630
	c.swsp	a0,000000DC
	addi	a5,zero,+00000040
	c.mv	a2,a0
	bgeu	a5,a0,0000000023005486

l23005472:
	c.li	a0,FFFFFFFF

l23005474:
	c.lwsp	a5,00000130
	c.lwsp	a1,00000114
	c.lwsp	t2,00000134
	c.lwsp	gp,00000158
	c.lwsp	t6,00000068
	c.lwsp	s11,00000088
	c.lwsp	s7,000000A8
	c.addi16sp	000000F0
	c.jr	ra

l23005486:
	c.beqz	a0,0000000023005414

l23005488:
	c.mv	a1,s2
	addi	a0,sp,+0000003A
	jal	ra,000000002306CF80
	c.j	0000000023005414

l23005494:
	c.mv	a0,s1
	jal	ra,000000002306D630
	c.swsp	a0,00000060
	c.beqz	a0,000000002300541C

l2300549E:
	addi	a5,zero,+00000040
	bne	a0,a5,0000000023005472

l230054A6:
	addi	a2,zero,+00000040
	c.mv	a1,s1
	addi	a0,sp,+0000007B
	jal	ra,000000002306CF80
	c.j	000000002300541C

;; wifi_mgmr_api_cfg_req: 230054B6
;;   Called from:
;;     23007660 (in wifi_mgmr_cfg_req)
wifi_mgmr_api_cfg_req proc
	addi	a6,zero,+00000020
	bltu	a6,a4,00000000230055FA

l230054BE:
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
	jal	ra,000000002306D1BC
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
	c.beqz	s0,00000000230055E0

l230055D4:
	c.mv	a2,s0
	c.mv	a1,s5
	addi	a0,sp,+0000002D
	jal	ra,000000002306CF80

l230055E0:
	c.addi4spn	a0,0000000C
	jal	ra,0000000023004F1C
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

l230055FA:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; wifi_mgmr_api_ip_got: 230055FE
;;   Called from:
;;     2300A628 (in netif_status_callback)
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
	jal	ra,000000002306D1BC
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
	jal	ra,0000000023004F1C
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.li	a0,00000000
	c.addi16sp	00000050
	c.jr	ra

;; wifi_mgmr_api_ip_update: 23005712
;;   Called from:
;;     2300724C (in wifi_mgmr_sta_ip_set)
;;     2300A5F8 (in netif_status_callback)
wifi_mgmr_api_ip_update proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,000000002306D1BC
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
	jal	ra,0000000023004F1C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_reconnect: 23005784
;;   Called from:
;;     2300482C (in disconnect_retry)
wifi_mgmr_api_reconnect proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,000000002306D1BC
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
	jal	ra,0000000023004F1C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_disable_autoreconnect: 230057F6
;;   Called from:
;;     230072BA (in wifi_mgmr_sta_autoconnect_disable)
wifi_mgmr_api_disable_autoreconnect proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,000000002306D1BC
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
	jal	ra,0000000023004F1C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_enable_autoreconnect: 23005868
;;   Called from:
;;     230072AA (in wifi_mgmr_sta_autoconnect_enable)
wifi_mgmr_api_enable_autoreconnect proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,000000002306D1BC
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
	jal	ra,0000000023004F1C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_disconnect: 230058DA
;;   Called from:
;;     2300726A (in wifi_mgmr_sta_disconnect)
wifi_mgmr_api_disconnect proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,000000002306D1BC
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
	jal	ra,0000000023004F1C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_rate_config: 2300594C
;;   Called from:
;;     2300760A (in wifi_mgmr_rate_config)
wifi_mgmr_api_rate_config proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a2,0000000D
	c.mv	s0,a0
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,000000002306D1BC
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
	jal	ra,0000000023004F1C
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_conf_max_sta: 230059B8
;;   Called from:
;;     2300760E (in wifi_mgmr_conf_max_sta)
wifi_mgmr_api_conf_max_sta proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a2,0000000D
	c.mv	s0,a0
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,000000002306D1BC
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
	jal	ra,0000000023004F1C
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_ifaceup: 23005A22
;;   Called from:
;;     230070BC (in wifi_mgmr_drv_init)
wifi_mgmr_api_ifaceup proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,000000002306D1BC
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
	jal	ra,0000000023004F1C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_sniffer_enable: 23005A94
;;   Called from:
;;     230075EE (in wifi_mgmr_sniffer_enable)
wifi_mgmr_api_sniffer_enable proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,000000002306D1BC
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
	jal	ra,0000000023004F1C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_scan_item_beacon: 23005B06
;;   Called from:
;;     23007A30 (in cb_beacon_ind)
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
	jal	ra,000000002306D1BC
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
	jal	ra,000000002306CF80
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
	jal	ra,000000002306CF80
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
	jal	ra,0000000023004F1C
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.li	a0,00000000
	c.addi16sp	00000080
	c.jr	ra

;; wifi_mgmr_api_fw_disconnect: 23005BF6
;;   Called from:
;;     23003F74 (in ip_obtaining_timeout)
wifi_mgmr_api_fw_disconnect proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,000000002306D1BC
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
	jal	ra,0000000023004F1C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_fw_tsen_reload: 23005C68
;;   Called from:
;;     2300473A (in __reload_tsen)
wifi_mgmr_api_fw_tsen_reload proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,000000002306D1BC
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
	jal	ra,0000000023004F1C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_fw_scan: 23005CD8
;;   Called from:
;;     23007654 (in wifi_mgmr_scan)
wifi_mgmr_api_fw_scan proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,000000002306D1BC
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
	jal	ra,0000000023004F1C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_fw_powersaving: 23005D4A
;;   Called from:
;;     2300728C (in wifi_mgmr_sta_powersaving)
;;     2300729A (in wifi_mgmr_sta_powersaving)
wifi_mgmr_api_fw_powersaving proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a2,0000000D
	c.mv	s0,a0
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,000000002306D1BC
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
	jal	ra,0000000023004F1C
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_ap_start: 23005DBE
;;   Called from:
;;     2300753A (in wifi_mgmr_ap_start)
wifi_mgmr_api_ap_start proc
	c.bnez	a0,0000000023005DC4

l23005DC0:
	c.li	a0,FFFFFFFF
	c.jr	ra

l23005DC4:
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
	jal	ra,000000002306D1BC
	c.mv	a0,s3
	jal	ra,000000002306D630
	srli	a5,a0,00000008
	sb	a5,sp,+00000038
	srli	a5,a0,00000010
	sb	a5,sp,+00000039
	srli	a5,a0,00000018
	sb	a0,sp,+00000037
	sb	a5,sp,+0000003A
	addi	s4,zero,+00000020
	bltu	s4,a0,0000000023005E90

l23005E10:
	c.bnez	s1,0000000023005E84

l23005E12:
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
	jal	ra,000000002306CF80
	c.bnez	s1,0000000023005EA2

l23005E80:
	c.swsp	zero,000000BC
	c.j	0000000023005EAE

l23005E84:
	c.mv	a0,s1
	jal	ra,000000002306D630
	c.swsp	a0,000000BC
	bgeu	s4,a0,0000000023005E12

l23005E90:
	c.li	a0,FFFFFFFF

l23005E92:
	c.lwsp	t5,00000020
	c.lwsp	s10,00000004
	c.lwsp	s6,00000024
	c.lwsp	s2,00000048
	c.lwsp	a4,00000068
	c.lwsp	a0,00000088
	c.addi16sp	000000A0
	c.jr	ra

l23005EA2:
	c.lwsp	t4,00000194
	c.mv	a1,s1
	addi	a0,sp,+0000003B
	jal	ra,000000002306CF80

l23005EAE:
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
	jal	ra,0000000023004F1C
	c.li	a0,00000000
	c.j	0000000023005E92

;; wifi_mgmr_api_ap_stop: 23005EDA
;;   Called from:
;;     2300754A (in wifi_mgmr_ap_stop)
wifi_mgmr_api_ap_stop proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,000000002306D1BC
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
	jal	ra,0000000023004F1C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_idle: 23005F4C
;;   Called from:
;;     230071CC (in wifi_mgmr_sta_disable)
;;     230075FE (in wifi_mgmr_sniffer_disable)
wifi_mgmr_api_idle proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,000000002306D1BC
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
	jal	ra,0000000023004F1C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_denoise_enable: 23005FBC
;;   Called from:
;;     2300476A (in trigger_auto_denoise)
;;     230069D2 (in wifi_denoise_enable_cmd)
wifi_mgmr_api_denoise_enable proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,000000002306D1BC
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
	jal	ra,0000000023004F1C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_denoise_disable: 23006022
;;   Called from:
;;     230069CE (in wifi_denoise_disable_cmd)
wifi_mgmr_api_denoise_disable proc
	c.addi	sp,FFFFFFE0
	c.li	a2,0000000D
	c.li	a1,00000000
	c.mv	a0,sp
	c.swsp	ra,0000008C
	jal	ra,000000002306D1BC
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
	jal	ra,0000000023004F1C
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_raw_send: 23006086
;;   Called from:
;;     23007630 (in wifi_mgmr_raw_80211_send)
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
	jal	ra,000000002306D1BC
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
	jal	ra,0000000023004F1C
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_api_set_country_code: 230060FA
;;   Called from:
;;     230070B4 (in wifi_mgmr_drv_init)
wifi_mgmr_api_set_country_code proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230052AE
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; cmd_rf_dump: 2300610A
cmd_rf_dump proc
	c.jr	ra

;; cmd_dump_reset: 2300610C
cmd_dump_reset proc
	lui	a5,0004200E
	c.li	a4,0000000A
	sw	a4,a5,+000000AC
	c.jr	ra

;; cmd_wifi_power_table_update: 23006118
cmd_wifi_power_table_update proc
	c.addi16sp	FFFFFFC0
	lui	a1,00023070
	addi	a2,zero,+00000026
	addi	a1,a1,-000001F8
	c.addi4spn	a0,00000008
	c.swsp	ra,0000009C
	jal	ra,000000002306CF80
	c.addi4spn	a0,00000008
	jal	ra,00000000230493A8
	c.lwsp	t3,00000130
	c.addi16sp	00000040
	c.jr	ra

;; cmd_wifi_state_get: 2300613A
cmd_wifi_state_get proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a0,0000000C
	c.swsp	ra,0000008C
	c.swsp	zero,00000084
	jal	ra,0000000023007612
	c.lwsp	a2,000000E4
	c.li	a4,00000015
	bltu	a4,a5,000000002300616A

l2300614E:
	lui	a4,00023070
	c.slli	a5,02
	addi	a4,a4,-00000250
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5

l2300615E:
	lui	a0,00023070
	addi	a0,a0,-00000030

l23006166:
	jal	ra,0000000023003AC6

l2300616A:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23006170:
	lui	a0,00023070
	addi	a0,a0,-00000018
	c.j	0000000023006166
2300617A                               37 05 07 23 13 05           7..#..
23006180 C5 FF D5 B7 37 05 07 23 13 05 45 01 E9 BF 37 05 ....7..#..E...7.
23006190 07 23 13 05 85 03 C1 BF 37 05 07 23 13 05 85 05 .#......7..#....
230061A0 D9 B7 37 05 07 23 13 05 05 07 75 BF 37 05 07 23 ..7..#....u.7..#
230061B0 13 05 C5 08 4D BF 37 05 07 23 13 05 C5 0A 65 B7 ....M.7..#....e.
230061C0 37 05 07 23 13 05 85 0D 79 BF 37 05 07 23 13 05 7..#....y.7..#..
230061D0 05 10 51 BF 37 05 07 23 13 05 05 12 69 B7 37 05 ..Q.7..#....i.7.
230061E0 07 23 13 05 45 13 41 B7 37 05 07 23 13 05 C5 14 .#..E.A.7..#....
230061F0 9D BF 37 05 07 23 13 05 45 16 B5 B7             ..7..#..E...   

;; wifi_sta_get_state_cmd: 230061FC
wifi_sta_get_state_cmd proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a0,0000000C
	c.swsp	ra,0000008C
	c.swsp	zero,00000084
	jal	ra,0000000023007612
	c.lwsp	a2,00000084
	lui	a1,00023070
	lui	a0,00023071
	addi	a1,a1,-000001D0
	addi	a0,a0,-000001BC
	jal	ra,0000000023003AC6
	c.lwsp	a2,000000E4
	c.bnez	a5,0000000023006234

l23006222:
	lui	a0,00023071
	addi	a0,a0,-000001A4

l2300622A:
	jal	ra,0000000023003AC6
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l23006234:
	c.li	a4,00000001
	bne	a5,a4,0000000023006244

l2300623A:
	lui	a0,00023071
	addi	a0,a0,-00000178
	c.j	000000002300622A

l23006244:
	c.li	a4,00000002
	bne	a5,a4,0000000023006254

l2300624A:
	lui	a0,00023071
	addi	a0,a0,-00000150
	c.j	000000002300622A

l23006254:
	c.li	a4,00000003
	bne	a5,a4,0000000023006264

l2300625A:
	lui	a0,00023071
	addi	a0,a0,-00000124
	c.j	000000002300622A

l23006264:
	c.li	a4,00000004
	bne	a5,a4,0000000023006274

l2300626A:
	lui	a0,00023071
	addi	a0,a0,-000000EC
	c.j	000000002300622A

l23006274:
	c.li	a4,00000005
	bne	a5,a4,0000000023006284

l2300627A:
	lui	a0,00023071
	addi	a0,a0,-000000B8
	c.j	000000002300622A

l23006284:
	c.li	a4,00000011
	bne	a5,a4,0000000023006294

l2300628A:
	lui	a0,00023071
	addi	a0,a0,-0000008C
	c.j	000000002300622A

l23006294:
	c.li	a4,00000012
	bne	a5,a4,00000000230062A4

l2300629A:
	lui	a0,00023071
	addi	a0,a0,-0000005C
	c.j	000000002300622A

l230062A4:
	c.li	a4,00000013
	bne	a5,a4,00000000230062B4

l230062AA:
	lui	a0,00023071
	addi	a0,a0,-00000028
	c.j	000000002300622A

l230062B4:
	c.li	a4,00000014
	bne	a5,a4,00000000230062C4

l230062BA:
	lui	a0,00023071
	addi	a0,a0,+00000018
	c.j	000000002300622A

l230062C4:
	c.li	a4,00000015
	bne	a5,a4,00000000230062D4

l230062CA:
	lui	a0,00023071
	addi	a0,a0,+00000054
	c.j	000000002300622A

l230062D4:
	c.li	a4,00000006
	bne	a5,a4,00000000230062E4

l230062DA:
	lui	a0,00023071
	addi	a0,a0,+00000088
	c.j	000000002300622A

l230062E4:
	c.li	a4,00000007
	bne	a5,a4,00000000230062F4

l230062EA:
	lui	a0,00023071
	addi	a0,a0,+000000B0
	c.j	000000002300622A

l230062F4:
	c.li	a4,00000008
	bne	a5,a4,0000000023006304

l230062FA:
	lui	a0,00023071
	addi	a0,a0,+000000DC
	c.j	000000002300622A

l23006304:
	c.li	a4,00000009
	bne	a5,a4,0000000023006314

l2300630A:
	lui	a0,00023071
	addi	a0,a0,+00000108
	c.j	000000002300622A

l23006314:
	lui	a0,00023071
	addi	a0,a0,+00000138
	c.j	000000002300622A

;; wifi_edca_dump_cmd: 2300631E
wifi_edca_dump_cmd proc
	lui	a0,00023071
	c.addi	sp,FFFFFFE0
	addi	a0,a0,-00000414
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	sb	zero,sp,+0000000D
	sh	zero,sp,+0000000E
	jal	ra,0000000023003A8A
	addi	a4,sp,+0000000E
	addi	a3,sp,+0000000D
	c.addi4spn	a2,0000000C
	addi	a1,sp,+0000000B
	c.li	a0,00000000
	jal	ra,0000000023047812
	lui	a0,00023071
	addi	a0,a0,-00000400
	jal	ra,0000000023003A8A
	lhu	a4,sp,+0000000E
	lbu	a3,sp,+0000000D
	lbu	a2,sp,+0000000C
	lbu	a1,sp,+0000000B
	lui	s0,00023071
	addi	a0,s0,-000003F4
	jal	ra,0000000023003AC6
	addi	a4,sp,+0000000E
	addi	a3,sp,+0000000D
	c.addi4spn	a2,0000000C
	addi	a1,sp,+0000000B
	c.li	a0,00000001
	jal	ra,0000000023047812
	lui	a0,00023071
	addi	a0,a0,-000003C8
	jal	ra,0000000023003A8A
	lhu	a4,sp,+0000000E
	lbu	a3,sp,+0000000D
	lbu	a2,sp,+0000000C
	lbu	a1,sp,+0000000B
	addi	a0,s0,-000003F4
	jal	ra,0000000023003AC6
	addi	a4,sp,+0000000E
	addi	a3,sp,+0000000D
	c.addi4spn	a2,0000000C
	addi	a1,sp,+0000000B
	c.li	a0,00000002
	jal	ra,0000000023047812
	lui	a0,00023071
	addi	a0,a0,-000003BC
	jal	ra,0000000023003A8A
	lhu	a4,sp,+0000000E
	lbu	a3,sp,+0000000D
	lbu	a2,sp,+0000000C
	lbu	a1,sp,+0000000B
	addi	a0,s0,-000003F4
	jal	ra,0000000023003AC6
	addi	a4,sp,+0000000E
	addi	a3,sp,+0000000D
	c.addi4spn	a2,0000000C
	addi	a1,sp,+0000000B
	c.li	a0,00000003
	jal	ra,0000000023047812
	lui	a0,00023071
	addi	a0,a0,-000003B0
	jal	ra,0000000023003A8A
	lhu	a4,sp,+0000000E
	lbu	a3,sp,+0000000D
	lbu	a2,sp,+0000000C
	lbu	a1,sp,+0000000B
	addi	a0,s0,-000003F4
	jal	ra,0000000023003AC6
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; wifi_ap_sta_list_get_cmd: 2300642C
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
	jal	ra,0000000023007612
	c.lwsp	tp,00000174
	andi	a5,a1,+00000010
	c.bnez	a5,0000000023006476

l23006454:
	lui	a0,00023071
	addi	a0,a0,-000005E0

l2300645C:
	jal	ra,0000000023003AC6

l23006460:
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

l23006476:
	addi	a0,sp,+00000023
	jal	ra,0000000023007556
	lbu	a5,sp,+00000023
	c.bnez	a5,0000000023006490

l23006484:
	lui	a0,00023071
	c.li	a1,00000000
	addi	a0,a0,-000005B8
	c.j	000000002300645C

l23006490:
	c.li	a2,00000018
	c.li	a1,00000000
	c.addi4spn	a0,00000028
	jal	ra,000000002306D1BC
	lui	a0,00023071
	addi	a0,a0,-0000058C
	jal	ra,0000000023003AC6
	lui	s0,00023071
	addi	a0,s0,-00000580
	jal	ra,0000000023003AC6
	lui	a0,00023071
	addi	a0,a0,-00000528
	jal	ra,0000000023003AC6
	addi	a0,s0,-00000580
	lui	s3,00023070
	jal	ra,0000000023003AC6
	c.li	s2,00000000
	c.li	s1,00000000
	addi	s4,zero,+000000EF
	addi	s5,s3,+00000180
	c.li	s6,0000000C
	lui	s7,00023071

l230064DC:
	lbu	a5,sp,+00000023
	bgeu	s1,a5,0000000023006460

l230064E4:
	c.mv	a1,s1
	c.addi4spn	a0,00000028
	jal	ra,0000000023007566
	lbu	a5,sp,+00000029
	c.beqz	a5,0000000023006556

l230064F2:
	lbu	a2,sp,+00000028
	beq	a2,s4,0000000023006556

l230064FA:
	c.lwsp	a6,000001D4
	c.lwsp	s4,000001B4
	lbu	a1,sp,+0000003C
	addi	a5,s3,+00000180
	c.li	s0,00000000

l23006508:
	lbu	a0,a5,+00000000
	beq	a0,a1,000000002300651E

l23006510:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	c.addi	a5,00000008
	bne	s0,s6,0000000023006508

l2300651C:
	c.mv	s0,s2

l2300651E:
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
	addi	a0,s7,-000004D0
	jal	ra,0000000023003AC6
	c.mv	s2,s0

l23006556:
	c.addi	s1,00000001
	andi	s1,s1,+000000FF
	c.j	00000000230064DC

;; wifi_ap_sta_delete_cmd: 2300655E
wifi_ap_sta_delete_cmd proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	ra,000000A4
	c.swsp	zero,00000090
	sb	zero,sp,+00000023
	c.li	a5,00000002
	c.mv	s0,a3
	beq	a2,a5,0000000023006588

l23006572:
	c.lw	a3,0(a1)
	lui	a0,00023071
	addi	a0,a0,-000006E8

l2300657C:
	jal	ra,0000000023003AC6

l23006580:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.addi16sp	00000050
	c.jr	ra

l23006588:
	c.addi4spn	a0,00000024
	jal	ra,0000000023007612
	c.lwsp	tp,00000174
	andi	a5,a1,+00000010
	c.bnez	a5,00000000230065A0

l23006596:
	lui	a0,00023071
	addi	a0,a0,-000005E0
	c.j	000000002300657C

l230065A0:
	c.lw	s0,4(a1)
	lui	a0,00023071
	addi	a0,a0,-000006D0
	jal	ra,0000000023003AC6
	c.lw	s0,4(a4)
	c.li	s0,00000000
	c.mv	a0,a4
	c.swsp	a4,0000008C
	jal	ra,000000002306D630
	c.lwsp	t3,000000C4
	c.mv	a2,a0
	c.li	a6,00000001
	c.add	a0,a4
	sb	zero,a0,+00000000
	c.mv	a1,a0
	c.li	t3,00000009
	c.li	t1,00000005
	c.li	t4,0000000A

l230065CE:
	sub	a5,a0,a1
	blt	a5,a2,0000000023006614

l230065D6:
	andi	s0,s0,+000000FF
	lui	a0,00023071
	c.mv	a1,a4
	c.mv	a3,s0
	addi	a0,a0,-000006BC
	jal	ra,0000000023003AC6
	lui	a0,00023071
	c.mv	a1,s0
	addi	a0,a0,-0000068C
	jal	ra,0000000023003AC6
	addi	a0,sp,+00000023
	jal	ra,0000000023007556
	lbu	a1,sp,+00000023
	c.beqz	a1,000000002300660A

l23006606:
	bgeu	a1,s0,000000002300665E

l2300660A:
	lui	a0,00023071
	addi	a0,a0,-0000067C
	c.j	000000002300657C

l23006614:
	lbu	a3,a1,-00000001
	addi	a5,a3,-00000030
	andi	a5,a5,+000000FF
	bgeu	t3,a5,0000000023006638

l23006624:
	addi	a5,a3,-00000061
	andi	a5,a5,+000000FF
	bltu	t1,a5,000000002300664A

l23006630:
	addi	a5,a3,-00000057

l23006634:
	andi	a5,a5,+000000FF

l23006638:
	add	a5,a5,a6
	c.addi	a1,FFFFFFFF
	c.add	s0,a5
	c.slli	s0,10
	c.srli	s0,00000010
	add	a6,a6,t4
	c.j	00000000230065CE

l2300664A:
	addi	a7,a3,-00000041
	andi	a7,a7,+000000FF
	c.li	a5,00000000
	bltu	t1,a7,0000000023006638

l23006658:
	addi	a5,a3,-00000037
	c.j	0000000023006634

l2300665E:
	c.li	a2,00000018
	c.li	a1,00000000
	c.addi4spn	a0,00000028
	jal	ra,000000002306D1BC
	c.mv	a1,s0
	c.addi4spn	a0,00000028
	jal	ra,0000000023007566
	lbu	a5,sp,+00000029
	c.beqz	a5,0000000023006682

l23006676:
	lbu	a2,sp,+00000028
	addi	a5,zero,+000000EF
	bne	a2,a5,000000002300668E

l23006682:
	lui	a0,00023071
	c.mv	a1,s0
	addi	a0,a0,-00000648
	c.j	000000002300657C

l2300668E:
	c.lwsp	s8,000001F4
	lbu	a7,sp,+0000002E
	lbu	a6,sp,+0000002D
	c.swsp	a5,00000080
	lbu	a5,sp,+0000002F
	lbu	a4,sp,+0000002B
	lbu	a3,sp,+0000002A
	c.swsp	a5,00000000
	lbu	a5,sp,+0000002C
	lui	a0,00023071
	c.mv	a1,s0
	addi	a0,a0,-00000630
	jal	ra,0000000023003AC6
	lbu	a0,sp,+00000028
	jal	ra,00000000230075BA
	c.j	0000000023006580

;; cmd_wifi_coex_pta_force_off: 230066C4
cmd_wifi_coex_pta_force_off proc
	c.li	a0,00000000
	jal	zero,0000000023055054

;; cmd_wifi_coex_pta_force_on: 230066CA
cmd_wifi_coex_pta_force_on proc
	c.li	a0,00000001
	jal	zero,0000000023055054

;; cmd_wifi_coex_pti_force_off: 230066D0
cmd_wifi_coex_pti_force_off proc
	c.li	a0,00000000
	jal	zero,0000000023055002

;; cmd_wifi_coex_pti_force_on: 230066D6
cmd_wifi_coex_pti_force_on proc
	c.li	a0,00000001
	jal	zero,0000000023055002

;; cmd_wifi_coex_rf_force_off: 230066DC
cmd_wifi_coex_rf_force_off proc
	c.li	a0,00000000
	jal	zero,0000000023054FF8

;; cmd_wifi_coex_rf_force_on: 230066E2
cmd_wifi_coex_rf_force_on proc
	c.li	a0,00000001
	jal	zero,0000000023054FF8

;; cmd_wifi_mib: 230066E8
cmd_wifi_mib proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a3,00000084
	jal	ra,0000000023046B96
	c.lwsp	a2,000000A4
	c.lwsp	t3,00000020
	c.li	a1,0000001E
	c.lw	a3,0(a0)
	c.addi16sp	00000020
	jal	zero,00000000230447BE

;; cmd_wifi_cfg: 23006700
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
	jal	ra,00000000230448AE
	c.li	s2,00000000
	c.li	s1,00000000
	c.li	s0,00000004
	lui	s7,00023070
	addi	s5,zero,+00000063
	lui	s8,00023077
	lui	s9,00023070
	lui	s10,00023070
	lui	s11,00023070

l23006748:
	addi	a3,s7,-0000011C
	c.mv	a2,s4
	c.mv	a1,s6
	c.addi4spn	a0,0000000C
	jal	ra,00000000230448CA
	c.li	a3,FFFFFFFF
	addi	a5,zero,+00000074
	addi	a4,zero,+00000076
	addi	a6,zero,+00000065
	addi	a7,zero,+0000003F
	addi	t1,zero,+00000054
	bne	a0,a3,00000000230067BA

l23006770:
	c.lwsp	s0,000000C4
	lui	a0,00023070
	c.mv	a3,s3
	c.mv	a2,s2
	c.mv	a1,s1
	addi	a0,a0,-00000110
	jal	ra,0000000023003AC6
	c.li	a5,00000002
	beq	s0,a5,00000000230068AA

l2300678A:
	bltu	a5,s0,000000002300686E

l2300678E:
	c.li	a5,00000001
	beq	s0,a5,0000000023006888

l23006794:
	lui	a1,00023070
	lui	a0,00023070
	addi	a1,a1,+000002A8
	addi	a0,a0,-000000C8
	jal	ra,0000000023003AC6
	c.addi4spn	a5,00000008
	c.li	a4,00000004
	c.mv	a3,s3
	c.mv	a2,s2
	c.mv	a1,s1
	c.li	a0,00000000

l230067B4:
	jal	ra,0000000023007660
	c.j	0000000023006844

l230067BA:
	beq	a0,s5,00000000230067EA

l230067BE:
	blt	s5,a0,00000000230067D4

l230067C2:
	beq	a0,a7,0000000023006832

l230067C6:
	bne	a0,t1,0000000023006748

l230067CA:
	c.lwsp	a2,00000044
	jal	ra,000000002306CDF4
	c.mv	s3,a0
	c.j	0000000023006748

l230067D4:
	beq	a0,a5,000000002300681E

l230067D8:
	beq	a0,a4,0000000023006828

l230067DC:
	bne	a0,a6,0000000023006748

l230067E0:
	c.lwsp	a2,00000044
	jal	ra,000000002306CDF4
	c.mv	s2,a0
	c.j	0000000023006748

l230067EA:
	c.lwsp	a2,00000064
	addi	a0,s8,+00000238
	jal	ra,000000002306D404
	c.beqz	a0,0000000023006862

l230067F6:
	c.lwsp	a2,00000064
	addi	a0,s9,+000002A8
	jal	ra,000000002306D404
	c.beqz	a0,0000000023006866

l23006802:
	c.lwsp	a2,00000064
	addi	a0,s10,-00000140
	jal	ra,000000002306D404
	c.beqz	a0,000000002300686A

l2300680E:
	c.lwsp	a2,00000064
	addi	a0,s11,-0000013C
	jal	ra,000000002306D404
	c.bnez	a0,0000000023006748

l2300681A:
	c.li	s0,00000002
	c.j	0000000023006748

l2300681E:
	c.lwsp	a2,00000044
	jal	ra,000000002306CDF4
	c.mv	s1,a0
	c.j	0000000023006748

l23006828:
	c.lwsp	a2,00000044
	jal	ra,000000002306CDF4
	c.swsp	a0,00000004
	c.j	0000000023006748

l23006832:
	c.lwsp	s8,00000084
	lw	a1,s4,+00000000
	lui	a0,00023070
	addi	a0,a0,-00000134
	jal	ra,0000000023003AC6

l23006844:
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

l23006862:
	c.li	s0,00000003
	c.j	0000000023006748

l23006866:
	c.li	s0,00000000
	c.j	0000000023006748

l2300686A:
	c.li	s0,00000001
	c.j	0000000023006748

l2300686E:
	c.li	a5,00000003
	beq	s0,a5,00000000230068CC

l23006874:
	c.li	a5,00000004
	bne	s0,a5,0000000023006794

l2300687A:
	lui	a0,00023070
	addi	a0,a0,-000000B8
	jal	ra,0000000023003AC6
	c.j	0000000023006844

l23006888:
	lui	a1,00023070
	lui	a0,00023070
	addi	a1,a1,-00000140
	addi	a0,a0,-000000C8
	jal	ra,0000000023003AC6
	c.addi4spn	a5,00000008
	c.li	a4,00000004
	c.mv	a3,s3
	c.mv	a2,s2
	c.mv	a1,s1
	c.li	a0,00000001
	c.j	00000000230067B4

l230068AA:
	lui	a1,00023070
	lui	a0,00023070
	addi	a1,a1,-0000013C
	addi	a0,a0,-000000C8
	jal	ra,0000000023003AC6
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a3,00000000
	c.mv	a2,s2
	c.mv	a1,s1
	c.li	a0,00000002
	c.j	00000000230067B4

l230068CC:
	lui	a1,00023077
	lui	a0,00023070
	addi	a1,a1,+00000238
	addi	a0,a0,-000000C8
	jal	ra,0000000023003AC6
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000003
	c.j	00000000230067B4

;; cmd_wifi_ap_stop: 230068EE
cmd_wifi_ap_stop proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023007546
	c.lwsp	a2,00000020
	lui	a0,00023070
	addi	a0,a0,-0000015C
	c.addi	sp,00000010
	jal	zero,0000000023003AC6

;; cmd_wifi_ap_start: 23006908
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
	jal	ra,000000002306D1BC
	c.addi4spn	a0,00000008
	jal	ra,0000000023036ED4
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.addi4spn	a0,00000010
	jal	ra,000000002306D1BC
	lbu	a5,sp,+0000000D
	lbu	a4,sp,+0000000C
	lbu	a3,sp,+0000000B
	lui	a2,00023070
	addi	a2,a2,-00000180
	addi	a1,zero,+00000020
	c.addi4spn	a0,00000010
	jal	ra,0000000023003B18
	sb	zero,sp,+0000002F
	jal	ra,0000000023007456
	c.li	a5,00000001
	bne	s0,a5,0000000023006976

l2300695E:
	c.li	a4,00000001
	c.li	a3,00000000
	c.li	a2,00000000
	c.addi4spn	a1,00000010

l23006966:
	jal	ra,000000002300752C

l2300696A:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

l23006976:
	c.mv	s1,a0
	lw	a0,s2,+00000004
	jal	ra,000000002306CDF4
	addi	a3,a0,-00000001
	c.li	a5,0000000A
	c.mv	a4,a0
	bltu	a5,a3,000000002300696A

l2300698C:
	addi	a2,s0,-00000003
	lui	a3,00023070
	addi	a3,a3,-00000168
	sltiu	a2,a2,+00000001
	c.addi4spn	a1,00000010
	c.mv	a0,s1
	c.j	0000000023006966

;; wifi_sniffer_off_cmd: 230069A2
wifi_sniffer_off_cmd proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230075FA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,00000000230075DA

;; wifi_sniffer_on_cmd: 230069B4
wifi_sniffer_on_cmd proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230075EA
	c.lwsp	a2,00000020
	lui	a1,00023007
	addi	a1,a1,-00000464
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,00000000230075CA

;; wifi_denoise_disable_cmd: 230069CE
wifi_denoise_disable_cmd proc
	jal	zero,0000000023006022

;; wifi_denoise_enable_cmd: 230069D2
wifi_denoise_enable_cmd proc
	jal	zero,0000000023005FBC

;; wifi_power_saving_off_cmd: 230069D6
wifi_power_saving_off_cmd proc
	c.li	a0,00000000
	jal	zero,0000000023007276

;; wifi_power_saving_on_cmd: 230069DC
wifi_power_saving_on_cmd proc
	c.li	a0,00000002
	jal	zero,0000000023007276

;; wifi_rc_fixed_disable: 230069E2
wifi_rc_fixed_disable proc
	c.lui	a0,00010000
	c.addi	a0,FFFFFFFF
	jal	zero,000000002300760A

;; wifi_disable_autoreconnect_cmd: 230069EA
wifi_disable_autoreconnect_cmd proc
	jal	zero,00000000230072B6

;; wifi_enable_autoreconnect_cmd: 230069EE
wifi_enable_autoreconnect_cmd proc
	jal	zero,00000000230072A6

;; wifi_disconnect_cmd: 230069F2
wifi_disconnect_cmd proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023007266
	addi	a0,zero,+000003E8
	jal	ra,0000000023033E10
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,00000000230071C8

;; wifi_sta_ip_unset_cmd: 23006A0C
wifi_sta_ip_unset_cmd proc
	jal	zero,0000000023007258

;; wifi_sta_ip_info: 23006A10
wifi_sta_ip_info proc
	c.addi16sp	FFFFFFA0
	c.addi4spn	a2,00000018
	c.addi4spn	a1,00000014
	c.addi4spn	a0,00000010
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	jal	ra,00000000230071D8
	c.addi4spn	a1,00000020
	c.addi4spn	a0,0000001C
	jal	ra,00000000230071F0
	c.addi4spn	a0,00000024
	jal	ra,0000000023007616
	c.addi4spn	a0,00000028
	jal	ra,00000000230493DE
	c.lwsp	tp,00000174
	lui	a0,00023071
	addi	a0,a0,+00000158
	jal	ra,0000000023003AC6
	c.addi4spn	a0,00000010
	jal	ra,000000002303D99C
	c.mv	a1,a0
	lui	a0,00023071
	addi	a0,a0,+00000168
	jal	ra,0000000023003AC6
	c.addi4spn	a0,00000018
	jal	ra,000000002303D99C
	c.mv	a1,a0
	lui	a0,00023071
	addi	a0,a0,+00000178
	jal	ra,0000000023003AC6
	c.addi4spn	a0,00000014
	jal	ra,000000002303D99C
	c.mv	a1,a0
	lui	a0,00023071
	addi	a0,a0,+00000188
	jal	ra,0000000023003AC6
	c.addi4spn	a0,0000001C
	jal	ra,000000002303D99C
	c.mv	a1,a0
	lui	a0,00023071
	addi	a0,a0,+00000198
	jal	ra,0000000023003AC6
	c.addi4spn	a0,00000020
	jal	ra,000000002303D99C
	c.mv	a1,a0
	lui	a0,00023071
	addi	a0,a0,+000001A8
	jal	ra,0000000023003AC6
	lui	a0,00023071
	addi	a0,a0,+000001B8
	jal	ra,0000000023003A8A
	lui	s0,00023071
	addi	a0,s0,-00000248
	jal	ra,0000000023003A8A
	lb	a4,sp,+0000002B
	lb	a3,sp,+0000002A
	lb	a2,sp,+00000029
	lb	a1,sp,+00000028
	lui	a0,00023071
	addi	a0,a0,+000001D0
	jal	ra,0000000023003AC6
	lb	a5,sp,+00000037
	lb	a7,sp,+00000036
	lb	a6,sp,+00000035
	c.swsp	a5,00000000
	lb	a4,sp,+00000033
	lb	a5,sp,+00000034
	lb	a3,sp,+00000032
	lb	a2,sp,+00000031
	lb	a1,sp,+00000030
	lui	a0,00023071
	addi	a0,a0,+00000210
	jal	ra,0000000023003AC6
	lb	a5,sp,+0000003F
	lb	a7,sp,+0000003E
	lb	a6,sp,+0000003D
	c.swsp	a5,00000000
	lb	a4,sp,+0000003B
	lb	a5,sp,+0000003C
	lb	a3,sp,+0000003A
	lb	a2,sp,+00000039
	lb	a1,sp,+00000038
	lui	a0,00023071
	addi	a0,a0,+0000026C
	jal	ra,0000000023003AC6
	addi	a0,s0,-00000248
	jal	ra,0000000023003A8A
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.addi16sp	00000060
	c.jr	ra

;; cmd_wifi_raw_send: 23006B46
cmd_wifi_raw_send proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200E
	c.swsp	ra,00000084
	addi	a5,a5,+000000B0
	c.lw	a5,0(a4)
	lui	a0,0004200D
	addi	a2,a0,+000002DC
	slli	a3,a4,00000004
	sb	a3,a2,+00000016
	c.addi	a4,00000001
	c.srli	a3,00000008
	c.li	a1,00000018
	addi	a0,a0,+000002DC
	sb	a3,a2,+00000017
	c.sw	a5,0(a4)
	jal	ra,0000000023007624
	c.beqz	a0,0000000023006B8A

l23006B7A:
	lui	a0,00023070
	addi	a0,a0,-00000058

l23006B82:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023003A8A

l23006B8A:
	lui	a0,00023070
	addi	a0,a0,-00000044
	c.j	0000000023006B82

;; wifi_scan_cmd: 23006B94
wifi_scan_cmd proc
	c.li	a1,00000000
	c.li	a0,00000000
	jal	zero,0000000023007640

;; sniffer_cb: 23006B9C
sniffer_cb proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200E
	c.swsp	s0,00000004
	addi	a5,a5,+000000B4
	c.swsp	ra,00000084
	c.lw	a5,0(a4)
	lui	s0,0004200E
	addi	s0,s0,+000000A8
	c.addi	a4,00000001
	c.sw	a5,0(a4)
	jal	ra,0000000023033AF0
	c.lw	s0,0(a5)
	c.sub	a0,a5
	c.lui	a5,00002000
	addi	a5,a5,+00000710
	bge	a5,a0,0000000023006BD0

l23006BCA:
	jal	ra,0000000023033AF0
	c.sw	s0,0(a0)

l23006BD0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; cmd_wifi_dump: 23006BD8
cmd_wifi_dump proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.li	a5,00000001
	bge	a5,a2,0000000023006C00

l23006BE2:
	lui	a0,00023070
	addi	a0,a0,-000000A8
	jal	ra,0000000023003A8A
	jal	ra,00000000230347A4
	c.li	a0,00000001

l23006BF4:
	jal	ra,000000002305022A
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230347B8

l23006C00:
	lui	a0,00023070
	addi	a0,a0,-00000080
	jal	ra,0000000023003A8A
	jal	ra,00000000230347A4
	c.li	a0,00000000
	c.j	0000000023006BF4

;; cmd_wifi_ap_conf_max_sta: 23006C14
cmd_wifi_ap_conf_max_sta proc
	c.li	a5,00000002
	beq	a2,a5,0000000023006C26

l23006C1A:
	lui	a0,00023070
	addi	a0,a0,-000001B8
	jal	zero,0000000023003AC6

l23006C26:
	c.lw	a3,4(a0)
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002306CDF4
	c.mv	s0,a0
	c.mv	a1,a0
	lui	a0,00023070
	addi	a0,a0,-00000198
	jal	ra,0000000023003AC6
	andi	a0,s0,+000000FF
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300760E

;; wifi_mon_cmd: 23006C50
wifi_mon_cmd proc
	c.li	a5,00000001
	bge	a5,a2,0000000023006C5A

l23006C56:
	jal	zero,00000000230075EA

l23006C5A:
	lui	a1,00023007
	addi	a1,a1,-00000464
	c.li	a0,00000000
	jal	zero,00000000230075CA

;; wifi_rc_fixed_enable: 23006C68
wifi_rc_fixed_enable proc
	c.li	a5,00000004
	beq	a2,a5,0000000023006C7A

l23006C6E:
	lui	a0,00023071
	addi	a0,a0,-00000210
	jal	zero,0000000023003AC6

l23006C7A:
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
	jal	ra,000000002306CDF4
	c.mv	s1,a0
	andi	s4,a0,+000000FF
	c.lw	s0,8(a0)
	jal	ra,000000002306CDF4
	c.mv	s5,a0
	andi	s3,a0,+000000FF
	c.lw	s0,12(a0)
	jal	ra,000000002306CDF4
	c.li	a5,00000001
	c.mv	s2,a0
	beq	s4,a5,0000000023006D1C

l23006CB2:
	lui	a1,00023071
	addi	a1,a1,-0000021C

l23006CBA:
	lui	a0,00023071
	andi	a3,s2,+000000FF
	andi	a2,s5,+000000FF
	addi	a0,a0,-000001F0
	jal	ra,0000000023003AC6
	c.li	a5,00000001
	bne	s4,a5,0000000023006D26

l23006CD4:
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

l23006CF8:
	lui	a0,00023071
	c.mv	a1,s0
	addi	a0,a0,-000001CC
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,000000002300760A

l23006D1C:
	lui	a1,00023071
	addi	a1,a1,-00000224
	c.j	0000000023006CBA

l23006D26:
	c.li	s0,00000000
	bne	s4,zero,0000000023006CF8

l23006D2C:
	ori	s0,s3,+00000600
	c.j	0000000023006CF8

;; wifi_connect_cmd: 23006D32
wifi_connect_cmd proc
	c.li	a5,00000003
	beq	a2,a5,0000000023006D46

l23006D38:
	c.lw	a3,0(a1)
	lui	a0,00023071
	addi	a0,a0,-00000434
	jal	zero,0000000023003AC6

l23006D46:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a3
	c.jal	00000000230070CA
	c.lw	s0,8(a2)
	c.lw	s0,4(a1)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a6,00000000
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi	sp,00000010
	jal	zero,000000002300741E

;; wifi_sta_ip_set_cmd: 23006D66
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
	beq	a2,a5,0000000023006D9A

l23006D7C:
	lui	a0,00023071
	addi	a0,a0,+0000029C
	jal	ra,0000000023003A8A

l23006D88:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

l23006D9A:
	c.lw	a3,4(a0)
	c.mv	s0,a3
	jal	ra,000000002303D8E8
	c.mv	s1,a0
	c.lw	s0,8(a0)
	jal	ra,000000002303D8E8
	c.mv	s2,a0
	c.lw	s0,12(a0)
	jal	ra,000000002303D8E8
	c.mv	s3,a0
	c.lw	s0,16(a0)
	jal	ra,000000002303D8E8
	c.mv	s4,a0
	c.lw	s0,20(a0)
	lui	s0,00023076
	jal	ra,000000002303D8E8
	c.addi4spn	a1,0000000C
	c.li	a2,00000014
	c.mv	s5,a0
	c.addi4spn	a0,00000008
	c.swsp	s1,00000004
	jal	ra,000000002303D900
	lui	a0,00023071
	addi	a0,a0,+000002B4
	jal	ra,0000000023003A8A
	c.addi4spn	a0,0000000C
	jal	ra,0000000023003A8A
	addi	a0,s0,+0000076C
	jal	ra,0000000023003A8A
	c.addi4spn	a1,0000000C
	c.li	a2,00000014
	c.addi4spn	a0,00000008
	c.swsp	s2,00000004
	jal	ra,000000002303D900
	lui	a0,00023071
	addi	a0,a0,+000002BC
	jal	ra,0000000023003A8A
	c.addi4spn	a0,0000000C
	jal	ra,0000000023003A8A
	addi	a0,s0,+0000076C
	jal	ra,0000000023003A8A
	c.addi4spn	a1,0000000C
	c.li	a2,00000014
	c.addi4spn	a0,00000008
	c.swsp	s3,00000004
	jal	ra,000000002303D900
	lui	a0,00023071
	addi	a0,a0,+000002C4
	jal	ra,0000000023003A8A
	c.addi4spn	a0,0000000C
	jal	ra,0000000023003A8A
	addi	a0,s0,+0000076C
	jal	ra,0000000023003A8A
	c.addi4spn	a1,0000000C
	c.li	a2,00000014
	c.addi4spn	a0,00000008
	c.swsp	s4,00000004
	jal	ra,000000002303D900
	lui	a0,00023071
	addi	a0,a0,+000002CC
	jal	ra,0000000023003A8A
	c.addi4spn	a0,0000000C
	jal	ra,0000000023003A8A
	addi	a0,s0,+0000076C
	jal	ra,0000000023003A8A
	c.addi4spn	a1,0000000C
	c.li	a2,00000014
	c.addi4spn	a0,00000008
	c.swsp	s5,00000004
	jal	ra,000000002303D900
	lui	a0,00023071
	addi	a0,a0,+000002D4
	jal	ra,0000000023003A8A
	c.addi4spn	a0,0000000C
	jal	ra,0000000023003A8A
	addi	a0,s0,+0000076C
	jal	ra,0000000023003A8A
	c.mv	a4,s5
	c.mv	a3,s4
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	c.jal	000000002300721A
	c.j	0000000023006D88

;; wifi_scan_filter_cmd: 23006E94
wifi_scan_filter_cmd proc
	c.li	a5,00000002
	bne	a2,a5,0000000023006EAC

l23006E9A:
	c.lw	a3,4(a5)
	lbu	a0,a5,+00000000
	addi	a0,a0,-00000031
	sltiu	a0,a0,+00000001
	jal	zero,0000000023007664

l23006EAC:
	c.jr	ra

;; wifi_capcode_cmd: 23006EAE
wifi_capcode_cmd proc
	addi	a4,a2,-00000001
	c.li	a5,00000001
	bgeu	a5,a4,0000000023006EC6

l23006EB8:
	c.lw	a3,0(a1)
	lui	a0,00023071
	addi	a0,a0,-0000047C

l23006EC2:
	jal	zero,0000000023003AC6

l23006EC6:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	bne	a2,a5,0000000023006EE6

l23006ED0:
	jal	ra,0000000023038190
	c.lwsp	s0,00000004
	c.mv	a1,a0
	lui	a0,00023071
	c.lwsp	a2,00000020
	addi	a0,a0,-00000468
	c.addi	sp,00000010
	c.j	0000000023006EC2

l23006EE6:
	c.lw	a3,4(a0)
	jal	ra,000000002306CDF4
	c.mv	s0,a0
	c.mv	a1,a0
	lui	a0,00023071
	addi	a0,a0,-0000044C
	jal	ra,0000000023003AC6
	bge	zero,s0,0000000023006F10

l23006F00:
	andi	a1,s0,+000000FF
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,a1
	c.addi	sp,00000010
	jal	zero,000000002303812E

l23006F10:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_cli_scanlist: 23006F18
wifi_mgmr_cli_scanlist proc
	lui	a0,00023071
	c.addi16sp	FFFFFF80
	addi	a0,a0,-000003A4
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
	jal	ra,0000000023003AC6
	lui	a0,00023071
	lui	s0,00042017
	addi	a0,a0,-00000390
	addi	s0,s0,-00000064
	c.lui	s2,00001000
	jal	ra,0000000023003AC6
	c.li	s1,00000000
	lui	s4,00023071
	c.add	s2,s0
	lui	s5,00023071
	addi	s3,zero,+00000032

l23006F66:
	lbu	a5,s0,+000002B0
	c.beqz	a5,0000000023007022

l23006F6C:
	jal	ra,0000000023033AF0
	lw	a5,s0,+000002B4
	addi	s6,s0,+0000027C
	c.sub	a0,a5
	lw	a5,s2,+000007D0
	bgeu	a0,a5,0000000023007022

l23006F82:
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
	jal	ra,0000000023004E6A
	c.mv	s11,a0
	lbu	a0,s0,+000002AF
	jal	ra,0000000023004EC6
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
	addi	a0,s5,-00000328
	jal	ra,0000000023003AC6

l23006FEC:
	c.addi	s1,00000001
	addi	s0,s0,+0000003C
	bne	s1,s3,0000000023006F66

l23006FF6:
	lui	a0,00023071
	addi	a0,a0,-0000028C
	jal	ra,0000000023003AC6
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

l23007022:
	c.mv	a1,s1
	addi	a0,s4,-000002A4
	jal	ra,0000000023003AC6
	c.j	0000000023006FEC

;; wifi_mgmr_ext_dump_needed: 2300702E
;;   Called from:
;;     2300A042 (in tcpip_stack_input)
wifi_mgmr_ext_dump_needed proc
	lui	a5,0004200E
	addi	a5,a5,+000000AC
	c.lw	a5,0(a4)
	c.li	a0,00000000
	bge	zero,a4,0000000023007044

l2300703E:
	c.addi	a4,FFFFFFFF
	c.sw	a5,0(a4)
	c.li	a0,00000001

l23007044:
	c.jr	ra

;; wifi_mgmr_cli_init: 23007046
;;   Called from:
;;     230013B8 (in aos_loop_proc)
wifi_mgmr_cli_init proc
	c.li	a0,00000000
	c.jr	ra

;; mac_is_unvalid: 2300704A
;;   Called from:
;;     2300713E (in wifi_mgmr_sta_enable)
;;     23007154 (in wifi_mgmr_sta_enable)
;;     2300749A (in wifi_mgmr_ap_enable)
;;     230074B0 (in wifi_mgmr_ap_enable)
mac_is_unvalid proc
	lbu	a5,a0,+00000000
	c.li	a4,00000001
	c.li	a3,00000006

l23007052:
	add	a2,a0,a4
	lbu	a2,a2,+00000000
	bne	a2,a5,0000000023007076

l2300705E:
	c.addi	a4,00000001
	bne	a4,a3,0000000023007052

l23007064:
	addi	a0,a5,-00000001
	andi	a0,a0,+000000FF
	sltiu	a0,a0,+000000FE
	xori	a0,a0,+00000001
	c.jr	ra

l23007076:
	c.li	a0,00000000
	c.jr	ra

;; wifi_mgmr_psk_cal: 2300707A
;;   Called from:
;;     23000E4C (in _connect_wifi)
wifi_mgmr_psk_cal proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.mv	s1,a3
	c.mv	a3,sp
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	jal	ra,000000002305363C
	c.mv	s0,a0
	c.bnez	a0,000000002300709A

l2300708E:
	addi	a2,zero,+00000020
	c.mv	a1,sp
	c.mv	a0,s1
	jal	ra,0000000023044700

l2300709A:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; wifi_mgmr_drv_init: 230070A6
;;   Called from:
;;     23005112 (in wifi_mgmr_start_background)
wifi_mgmr_drv_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,000000002300A6F2
	c.mv	a0,s0
	jal	ra,00000000230060FA
	jal	ra,000000002300513C
	jal	ra,0000000023005A22
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sta_enable: 230070CA
;;   Called from:
;;     23000D0C (in _connect_wifi)
;;     23006D4E (in wifi_connect_cmd)
wifi_mgmr_sta_enable proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004200E
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	addi	a5,a5,+000000B8
	c.lw	a5,0(a3)
	c.li	a4,00000001
	bne	a3,a4,0000000023007104

l230070E4:
	lui	a0,00023071
	addi	a0,a0,+000005F8
	jal	ra,0000000023003AC6

l230070F0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	lui	a0,00042017
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	addi	a0,a0,-00000058
	c.addi16sp	00000020
	c.jr	ra

l23007104:
	lui	a0,00023071
	addi	a0,a0,+00000624
	c.sw	a5,0(a4)
	lui	s0,00042017
	jal	ra,0000000023003AC6
	lui	s1,00042017
	lui	s2,00042017
	addi	a5,s0,-00000064
	c.li	a2,00000006
	addi	a1,s2,-00000053
	addi	a0,s1,+00000002
	sw	zero,a5,+0000000C
	c.swsp	zero,00000080
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	jal	ra,000000002306CF80
	addi	a0,s1,+00000002
	jal	ra,000000002300704A
	addi	s0,s0,-00000064
	c.beqz	a0,000000002300717C

l23007148:
	addi	a0,s1,+00000002
	jal	ra,0000000023036ED4
	addi	a0,s1,+00000002
	jal	ra,000000002300704A
	c.beqz	a0,000000002300716E

l2300715A:
	c.lui	a5,00005000
	addi	a5,a5,+000000C0
	sh	a5,s0,+00000066
	lui	a5,0000100D
	addi	a5,a5,-000006BD
	c.sw	s0,104(a5)

l2300716E:
	c.li	a2,00000006
	addi	a1,s1,+00000002
	addi	a0,s2,-00000053
	jal	ra,000000002306CF80

l2300717C:
	lui	s1,00042017
	lui	a6,0002303A
	lui	a5,0002300A
	addi	a6,a6,+00000636
	c.li	a4,00000000
	c.addi4spn	a3,0000000C
	c.addi4spn	a2,00000008
	c.addi4spn	a1,00000004
	addi	a5,a5,+000006AA
	addi	a0,s1,-00000038
	jal	ra,000000002303A46E
	c.lui	a5,00007000
	addi	a5,a5,+00000473
	sh	a5,s0,+0000006E
	lbu	a5,s0,+0000006D
	addi	a0,s1,-00000038
	ori	a5,a5,+00000024
	sb	a5,s0,+0000006D
	jal	ra,000000002303E212
	addi	a0,s1,-00000038
	jal	ra,000000002303E21C
	c.j	00000000230070F0

;; wifi_mgmr_sta_disable: 230071C8
;;   Called from:
;;     23006A08 (in wifi_disconnect_cmd)
wifi_mgmr_sta_disable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023005F4C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sta_ip_get: 230071D8
;;   Called from:
;;     23000C06 (in wifiprov_wifi_state_get)
;;     23006A1C (in wifi_sta_ip_info)
wifi_mgmr_sta_ip_get proc
	lui	a5,00042017
	addi	a5,a5,-00000064
	c.lw	a5,48(a4)
	c.sw	a0,0(a4)
	c.lw	a5,52(a4)
	c.li	a0,00000000
	c.sw	a2,0(a4)
	c.lw	a5,56(a5)
	c.sw	a1,0(a5)
	c.jr	ra

;; wifi_mgmr_sta_dns_get: 230071F0
;;   Called from:
;;     23006A24 (in wifi_sta_ip_info)
wifi_mgmr_sta_dns_get proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.li	a0,00000000
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,000000002303AE4E
	c.lw	a0,0(a5)
	c.li	a0,00000001
	c.sw	s0,0(a5)
	jal	ra,000000002303AE4E
	c.lw	a0,0(a5)
	c.lwsp	a2,00000064
	c.li	a0,00000000
	c.sw	a1,0(a5)
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_sta_ip_set: 2300721A
;;   Called from:
;;     23006E90 (in wifi_sta_ip_set_cmd)
;;     23007262 (in wifi_mgmr_sta_ip_unset)
wifi_mgmr_sta_ip_set proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	a0,0000008C
	c.swsp	a1,0000000C
	c.swsp	a2,00000088
	c.swsp	a3,00000008
	c.swsp	a4,00000084
	jal	ra,00000000230347A4
	c.lwsp	t3,00000044
	c.lwsp	s8,00000064
	c.lwsp	s4,00000084
	c.lwsp	a6,000000A4
	c.lwsp	a2,000000C4
	lui	a5,00042017
	addi	a5,a5,-00000064
	c.sw	a5,24(a0)
	c.sw	a5,28(a1)
	c.sw	a5,32(a2)
	c.sw	a5,36(a3)
	c.sw	a5,40(a4)
	jal	ra,00000000230347B8
	jal	ra,0000000023005712
	c.lwsp	a2,00000130
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; wifi_mgmr_sta_ip_unset: 23007258
;;   Called from:
;;     23006A0C (in wifi_sta_ip_unset_cmd)
wifi_mgmr_sta_ip_unset proc
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000000
	jal	zero,000000002300721A

;; wifi_mgmr_sta_disconnect: 23007266
;;   Called from:
;;     230069F6 (in wifi_disconnect_cmd)
wifi_mgmr_sta_disconnect proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230058DA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sta_powersaving: 23007276
;;   Called from:
;;     230069D8 (in wifi_power_saving_off_cmd)
;;     230069DE (in wifi_power_saving_on_cmd)
wifi_mgmr_sta_powersaving proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.li	a5,00000001
	beq	a0,a5,000000002300729A

l23007282:
	c.li	a5,00000002
	c.mv	s0,a0
	beq	a0,a5,000000002300729A

l2300728A:
	c.bnez	a0,00000000230072A2

l2300728C:
	jal	ra,0000000023005D4A

l23007290:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2300729A:
	jal	ra,0000000023005D4A
	c.li	s0,00000000
	c.j	0000000023007290

l230072A2:
	c.li	s0,FFFFFFFF
	c.j	0000000023007290

;; wifi_mgmr_sta_autoconnect_enable: 230072A6
;;   Called from:
;;     230069EE (in wifi_enable_autoreconnect_cmd)
wifi_mgmr_sta_autoconnect_enable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023005868
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sta_autoconnect_disable: 230072B6
;;   Called from:
;;     230069EA (in wifi_disable_autoreconnect_cmd)
wifi_mgmr_sta_autoconnect_disable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230057F6
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sta_connect_ind_stat_get: 230072C6
;;   Called from:
;;     23000C0C (in wifiprov_wifi_state_get)
wifi_mgmr_sta_connect_ind_stat_get proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	lui	s3,00042018
	c.swsp	s0,0000000C
	c.mv	s0,a0
	addi	a0,s3,+000006EF
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	jal	ra,000000002306D630
	addi	s2,s0,+00000003
	bge	zero,a0,00000000230072FE

l230072EA:
	c.mv	s1,a0
	c.mv	a2,a0
	addi	a1,s3,+000006EF
	c.mv	a0,s2
	c.add	s1,s0
	jal	ra,000000002306CF80
	sb	zero,s1,+00000003

l230072FE:
	lui	s4,00042018
	addi	a0,s4,+0000070F
	jal	ra,000000002306D630
	c.mv	s1,a0
	addi	s3,s0,+00000023
	bge	zero,a0,0000000023007326

l23007314:
	c.mv	a2,a0
	addi	a1,s4,+0000070F
	c.mv	a0,s3
	c.add	s1,s0
	jal	ra,000000002306CF80
	sb	zero,s1,+00000023

l23007326:
	lui	a1,00042018
	c.li	a2,00000006
	addi	a1,a1,+00000750
	addi	a0,s0,+000000A4
	jal	ra,000000002306CF80
	lui	a5,00042018
	addi	a5,a5,-00000064
	lhu	a1,a5,+00000750
	lui	a0,00023071
	addi	a0,a0,+00000578
	sh	a1,s0,+00000000
	lbu	a4,a5,+000007BC
	sb	a4,s0,+000000AC
	lhu	a4,a5,+000007BA
	sh	a4,s0,+000000AA
	lbu	a5,a5,+00000752
	sb	a5,s0,+00000002
	jal	ra,0000000023003AC6
	lbu	a5,s0,+00000002
	lhu	a4,s0,+000000AA
	lbu	a3,s0,+000000AC
	lui	a0,00023071
	c.mv	a2,s3
	c.mv	a1,s2
	addi	a0,a0,+0000059C
	jal	ra,0000000023003AC6
	lbu	a6,s0,+000000A9
	lbu	a5,s0,+000000A8
	lbu	a4,s0,+000000A7
	lbu	a3,s0,+000000A6
	lbu	a2,s0,+000000A5
	lbu	a1,s0,+000000A4
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	lui	a0,00023071
	addi	a0,a0,+000005D4
	c.addi16sp	00000020
	jal	zero,0000000023003AC6

;; wifi_mgmr_sta_ssid_set: 230073BA
;;   Called from:
;;     23007434 (in wifi_mgmr_sta_connect)
wifi_mgmr_sta_ssid_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002306D630
	c.beqz	a0,00000000230073E4

l230073C8:
	c.mv	a0,s0
	jal	ra,000000002306D630
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a2,a0
	lui	a0,00042018
	addi	a0,a0,+000006EF
	c.addi	sp,00000010
	jal	zero,000000002306CF80

l230073E4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sta_psk_set: 230073EC
;;   Called from:
;;     2300743A (in wifi_mgmr_sta_connect)
wifi_mgmr_sta_psk_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002306D630
	c.beqz	a0,0000000023007416

l230073FA:
	c.mv	a0,s0
	jal	ra,000000002306D630
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a2,a0
	lui	a0,00042018
	addi	a0,a0,+0000070F
	c.addi	sp,00000010
	jal	zero,000000002306CF80

l23007416:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sta_connect: 2300741E
;;   Called from:
;;     23000F56 (in _connect_wifi)
;;     23006D62 (in wifi_connect_cmd)
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
	jal	ra,00000000230073BA
	c.mv	a0,s1
	jal	ra,00000000230073EC
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
	jal	zero,000000002300536C

;; wifi_mgmr_ap_enable: 23007456
;;   Called from:
;;     23006954 (in cmd_wifi_ap_start)
wifi_mgmr_ap_enable proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042017
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	addi	a5,s1,-00000064
	c.li	a4,00000001
	c.sw	a5,124(a4)
	lui	a5,000010BB
	addi	a5,a5,-00000740
	c.swsp	a5,00000080
	lui	s0,00042017
	lui	a5,00001000
	lui	s2,00042017
	c.addi	a5,FFFFFFFF
	c.li	a2,00000006
	addi	a1,s2,+0000001D
	addi	a0,s0,+00000072
	c.swsp	a5,00000004
	c.swsp	zero,00000084
	jal	ra,000000002306CF80
	addi	a0,s0,+00000072
	jal	ra,000000002300704A
	addi	s1,s1,-00000064
	c.beqz	a0,00000000230074DA

l230074A4:
	addi	a0,s0,+00000072
	jal	ra,0000000023036ED4
	addi	a0,s0,+00000072
	jal	ra,000000002300704A
	c.beqz	a0,00000000230074CC

l230074B6:
	c.lui	a5,00005000
	addi	a5,a5,+000000C0
	sh	a5,s1,+000000D6
	lui	a5,0000100D
	addi	a5,a5,-000006BD
	sw	a5,s1,+000000D8

l230074CC:
	c.li	a2,00000006
	addi	a1,s0,+00000072
	addi	a0,s2,+0000001D
	jal	ra,000000002306CF80

l230074DA:
	lui	s0,00042017
	lui	a6,0002303A
	lui	a5,0002300A
	c.addi4spn	a3,0000000C
	c.addi4spn	a2,00000008
	c.addi4spn	a1,00000004
	addi	a6,a6,+00000636
	c.li	a4,00000000
	addi	a5,a5,+000006AA
	addi	a0,s0,+00000038
	jal	ra,000000002303A46E
	c.lui	a5,00007000
	addi	a5,a5,+00000061
	addi	a0,s0,+00000038
	sh	a5,s1,+000000DE
	jal	ra,000000002303E212
	addi	a0,s0,+00000038
	jal	ra,000000002303E21C
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	lui	a0,00042017
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	addi	a0,a0,+00000018
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_ap_start: 2300752C
;;   Called from:
;;     23006966 (in cmd_wifi_ap_start)
wifi_mgmr_ap_start proc
	c.addi	sp,FFFFFFF0
	c.mv	a0,a1
	c.mv	a1,a3
	andi	a3,a2,+000000FF
	c.mv	a2,a4
	c.swsp	ra,00000084
	jal	ra,0000000023005DBE
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_ap_stop: 23007546
;;   Called from:
;;     230068F4 (in cmd_wifi_ap_stop)
wifi_mgmr_ap_stop proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023005EDA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_ap_sta_cnt_get: 23007556
;;   Called from:
;;     2300647A (in wifi_ap_sta_list_get_cmd)
;;     230065FC (in wifi_ap_sta_delete_cmd)
wifi_mgmr_ap_sta_cnt_get proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230052E8
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_ap_sta_info_get: 23007566
;;   Called from:
;;     230064E8 (in wifi_ap_sta_list_get_cmd)
;;     2300666C (in wifi_ap_sta_delete_cmd)
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
	jal	ra,000000002306D1BC
	c.mv	a1,s1
	c.addi4spn	a0,00000008
	jal	ra,00000000230052F8
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
	jal	ra,000000002306CF80
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; wifi_mgmr_ap_sta_delete: 230075BA
;;   Called from:
;;     230066BE (in wifi_ap_sta_delete_cmd)
wifi_mgmr_ap_sta_delete proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002300534C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sniffer_register: 230075CA
;;   Called from:
;;     230069CA (in wifi_sniffer_on_cmd)
;;     23006C64 (in wifi_mon_cmd)
wifi_mgmr_sniffer_register proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023009ACC
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sniffer_unregister: 230075DA
;;   Called from:
;;     230069B0 (in wifi_sniffer_off_cmd)
wifi_mgmr_sniffer_unregister proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023009AE0
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sniffer_enable: 230075EA
;;   Called from:
;;     230069B8 (in wifi_sniffer_on_cmd)
;;     23006C56 (in wifi_mon_cmd)
wifi_mgmr_sniffer_enable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023005A94
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_sniffer_disable: 230075FA
;;   Called from:
;;     230069A6 (in wifi_sniffer_off_cmd)
wifi_mgmr_sniffer_disable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023005F4C
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_rate_config: 2300760A
;;   Called from:
;;     230069E6 (in wifi_rc_fixed_disable)
;;     23006D18 (in wifi_rc_fixed_enable)
wifi_mgmr_rate_config proc
	jal	zero,000000002300594C

;; wifi_mgmr_conf_max_sta: 2300760E
;;   Called from:
;;     23006C4C (in cmd_wifi_ap_conf_max_sta)
wifi_mgmr_conf_max_sta proc
	jal	zero,00000000230059B8

;; wifi_mgmr_state_get: 23007612
;;   Called from:
;;     23000BFC (in wifiprov_wifi_state_get)
;;     23006142 (in cmd_wifi_state_get)
;;     23006204 (in wifi_sta_get_state_cmd)
;;     23006448 (in wifi_ap_sta_list_get_cmd)
;;     2300658A (in wifi_ap_sta_delete_cmd)
wifi_mgmr_state_get proc
	jal	zero,0000000023005196

;; wifi_mgmr_rssi_get: 23007616
;;   Called from:
;;     23006A2A (in wifi_sta_ip_info)
wifi_mgmr_rssi_get proc
	lui	a5,00042017
	lb	a5,a5,+00000014
	c.sw	a0,0(a5)
	c.li	a0,00000000
	c.jr	ra

;; wifi_mgmr_raw_80211_send: 23007624
;;   Called from:
;;     23006B74 (in cmd_wifi_raw_send)
wifi_mgmr_raw_80211_send proc
	addi	a5,zero,+000001E0
	blt	a5,a1,000000002300763C

l2300762C:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023006086
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2300763C:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; wifi_mgmr_scan: 23007640
;;   Called from:
;;     23006B98 (in wifi_scan_cmd)
wifi_mgmr_scan proc
	lui	a5,0004200E
	c.addi	sp,FFFFFFF0
	sw	a1,a5,+000000BC
	lui	a5,0004200E
	c.swsp	ra,00000084
	sw	a0,a5,+000000C0
	jal	ra,0000000023005CD8
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; wifi_mgmr_cfg_req: 23007660
;;   Called from:
;;     230067B4 (in cmd_wifi_cfg)
wifi_mgmr_cfg_req proc
	jal	zero,00000000230054B6

;; wifi_mgmr_scan_filter_hidden_ssid: 23007664
;;   Called from:
;;     23006EA8 (in wifi_scan_filter_cmd)
wifi_mgmr_scan_filter_hidden_ssid proc
	c.addi	sp,FFFFFFE0
	c.swsp	a0,00000084
	c.swsp	ra,0000008C
	jal	ra,00000000230347A4
	c.lwsp	a2,00000044
	lui	a4,00042018
	addi	a4,a4,-00000064
	lw	a5,a4,+000007CC
	c.beqz	a0,0000000023007690

l2300767E:
	c.andi	a5,FFFFFFFE

l23007680:
	sw	a5,a4,+000007CC
	jal	ra,00000000230347B8
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23007690:
	ori	a5,a5,+00000001
	c.j	0000000023007680

;; wifi_mgmr_scan_complete_callback: 23007696
;;   Called from:
;;     23005360 (in wifi_mgmr_scan_complete_notify)
wifi_mgmr_scan_complete_callback proc
	lui	a1,00023071
	lui	a0,00023071
	c.addi	sp,FFFFFFE0
	addi	a1,a1,+00000320
	addi	a0,a0,+00000564
	c.swsp	ra,0000008C
	c.swsp	zero,00000084
	jal	ra,0000000023003AC6
	lui	a5,0004200E
	lw	a5,a5,+000000BC
	c.beqz	a5,00000000230076CA

l230076BA:
	c.li	a4,00000001
	c.swsp	a4,00000084
	lui	a4,0004200E
	lw	a0,a4,+000000C0
	c.addi4spn	a1,0000000C
	c.jalr	a5

l230076CA:
	c.lwsp	t3,00000020
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; wifi_mgmr_scan_ap_all: 230076D2
;;   Called from:
;;     23000B8A (in scan_complete_cb)
wifi_mgmr_scan_ap_all proc
	c.addi16sp	FFFFFF90
	c.lui	a5,00001000
	c.swsp	s0,00000034
	lui	s0,00042017
	addi	s0,s0,-00000064
	c.swsp	s2,00000030
	addi	s2,a5,-00000448
	c.swsp	s1,000000B0
	c.swsp	s3,000000AC
	c.swsp	s4,0000002C
	c.swsp	s5,000000A8
	c.swsp	ra,000000B4
	c.mv	s3,a0
	c.mv	s4,a1
	c.mv	s5,a2
	c.add	s2,s0
	add	s1,s0,a5

l230076FC:
	lbu	a5,s0,+000002B0
	c.beqz	a5,000000002300775E

l23007702:
	addi	a1,s0,+0000027C
	c.swsp	a1,00000084
	jal	ra,0000000023033AF0
	lw	a5,s0,+000002B4
	c.lwsp	a2,00000064
	c.sub	a0,a5
	lw	a5,s1,+000007D0
	bgeu	a0,a5,000000002300775E

l2300771C:
	addi	a2,zero,+00000020
	c.addi4spn	a0,0000001C
	jal	ra,000000002306CF80
	c.addi4spn	a0,0000001C
	sb	zero,sp,+0000003C
	jal	ra,000000002306D630
	c.swsp	a0,00000020
	c.li	a2,00000006
	addi	a1,s0,+000002A4
	c.addi4spn	a0,00000044
	jal	ra,000000002306CF80
	lbu	a5,s0,+000002AA
	c.addi4spn	a2,0000001C
	c.mv	a1,s4
	sb	a5,sp,+0000004A
	lbu	a5,s0,+000002AB
	c.mv	a0,s3
	sb	a5,sp,+0000004C
	lbu	a5,s0,+000002AE
	sb	a5,sp,+0000004B
	c.jalr	s5

l2300775E:
	addi	s0,s0,+0000003C
	bne	s0,s2,00000000230076FC

l23007766:
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

;; wifi_mgmr_status_code_str: 2300777A
wifi_mgmr_status_code_str proc
	c.li	a5,00000010
	bltu	a5,a0,0000000023007792

l23007780:
	slli	a5,a0,00000002
	lui	a0,00023071
	addi	a0,a0,+000002DC
	c.add	a0,a5
	c.lw	a0,0(a0)
	c.jr	ra

l23007792:
	lui	a0,00023071
	addi	a0,a0,+0000063C
	c.jr	ra

;; wifi_mgmr_profile_add: 2300779C
;;   Called from:
;;     23004232 (in stateIdleAction_connect)
wifi_mgmr_profile_add proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.li	a4,FFFFFFFF
	c.mv	s1,a1
	beq	a2,a4,00000000230077BE

l230077AC:
	lbu	a4,a0,+000001B1
	c.beqz	a4,00000000230077D0

l230077B2:
	lbu	a4,a0,+00000275
	c.li	a2,FFFFFFFF
	c.bnez	a4,00000000230077C4

l230077BA:
	c.li	a1,00000001
	c.j	00000000230077D2

l230077BE:
	addi	s0,a0,+000000F0
	c.bnez	s0,00000000230077F0

l230077C4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.mv	a0,a2
	c.addi	sp,00000010
	c.jr	ra

l230077D0:
	c.li	a1,00000000

l230077D2:
	addi	s0,zero,+000000C4
	add	s0,a1,s0
	sw	a1,a0,+00000278
	addi	s0,s0,+000000F0
	c.add	s0,a0
	lui	a0,00023071
	addi	a0,a0,+00000650
	jal	ra,0000000023003AC6

l230077F0:
	addi	a2,zero,+000000C4
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002306D1BC
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
	jal	ra,000000002306CF80
	addi	a2,zero,+00000041
	addi	a1,s1,+00000025
	addi	a0,s0,+00000028
	jal	ra,000000002306CF80
	addi	a2,zero,+00000041
	addi	a1,s1,+00000066
	addi	a0,s0,+00000070
	jal	ra,000000002306CF80
	c.li	a2,00000006
	addi	a1,s1,+000000AF
	addi	a0,s0,+000000B8
	jal	ra,000000002306CF80
	lbu	a5,s1,+000000B8
	c.li	a2,00000000
	sb	a5,s0,+000000BE
	c.j	00000000230077C4

;; wifi_mgmr_profile_get: 230078AC
;;   Called from:
;;     23004806 (in disconnect_retry)
wifi_mgmr_profile_get proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	lbu	a4,a0,+000001B1
	c.li	a5,00000001
	c.mv	s2,a0
	beq	a4,a5,00000000230078DA

l230078C2:
	lbu	a4,a0,+00000275
	c.li	s1,00000001
	c.li	a0,FFFFFFFF
	beq	a4,a5,00000000230078DC

l230078CE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230078DA:
	c.li	s1,00000000

l230078DC:
	lui	a0,00023071
	c.mv	s0,a1
	addi	a0,a0,+0000067C
	c.mv	a1,s1
	jal	ra,0000000023003AC6
	addi	a2,zero,+000000B9
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002306D1BC
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
	jal	ra,000000002306CF80
	addi	a1,s1,+00000118
	addi	a2,zero,+00000041
	c.add	a1,s2
	addi	a0,s0,+00000025
	jal	ra,000000002306CF80
	addi	a1,s1,+00000160
	addi	a2,zero,+00000041
	c.add	a1,s2
	addi	a0,s0,+00000066
	jal	ra,000000002306CF80
	addi	a1,s1,+000001A8
	c.li	a2,00000006
	c.add	a1,s2
	addi	a0,s0,+000000AF
	jal	ra,000000002306CF80
	c.li	a0,00000000
	c.j	00000000230078CE

;; wifi_mgmr_profile_autoreconnect_is_enabled: 230079AE
;;   Called from:
;;     23004BB0 (in stateDisconnect_enter)
wifi_mgmr_profile_autoreconnect_is_enabled proc
	c.lui	a5,00001000
	c.add	a0,a5
	lbu	a0,a0,+000007C1
	sltiu	a0,a0,+00000001
	c.jr	ra

;; wifi_mgmr_profile_autoreconnect_disable: 230079BC
;;   Called from:
;;     23004B7E (in stateGlobalGuard_disable_autoreconnect)
wifi_mgmr_profile_autoreconnect_disable proc
	c.lui	a5,00001000
	c.add	a0,a5
	c.li	a5,00000001
	sb	a5,a0,+000007C1
	c.li	a0,00000000
	c.jr	ra

;; wifi_mgmr_profile_autoreconnect_enable: 230079CA
;;   Called from:
;;     23004B02 (in stateGlobalGuard_enable_autoreconnect)
wifi_mgmr_profile_autoreconnect_enable proc
	c.lui	a5,00001000
	c.add	a0,a5
	sb	zero,a0,+000007C1
	c.li	a0,00000000
	c.jr	ra

;; wifi_netif_dhcp_start: 230079D6
;;   Called from:
;;     2300406C (in stateConnectedIPNoEnter)
wifi_netif_dhcp_start proc
	lui	a2,0002303C
	c.addi	sp,FFFFFFF0
	addi	a2,a2,+0000014A
	c.li	a1,00000000
	c.swsp	ra,00000084
	jal	ra,000000002303A4EC
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; cb_rssi_ind: 230079F0
cb_rssi_ind proc
	lui	a5,00042017
	sb	a1,a5,+00000014
	c.jr	ra

;; cb_probe_resp_ind: 230079FA
cb_probe_resp_ind proc
	lui	a0,00023071
	c.mv	a3,a2
	addi	a0,a0,+00000734
	c.mv	a2,a1
	jal	zero,0000000023003AC6

;; cb_beacon_ind: 23007A0A
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
	jal	ra,0000000023005B06
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; cb_disconnect_ind: 23007A3A
cb_disconnect_ind proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a2,0000000D
	c.mv	s0,a1
	c.mv	a0,sp
	c.li	a1,00000000
	c.swsp	ra,0000008C
	jal	ra,000000002306D1BC
	lui	a0,00023071
	addi	a0,a0,+000006A4
	jal	ra,0000000023003AC6
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
	lui	a5,00042018
	addi	a5,a5,-00000064
	c.li	a4,00000002
	sb	a4,a5,+00000752
	lhu	a4,s0,+00000000
	c.mv	a0,sp
	sb	zero,sp,+0000000A
	sb	zero,sp,+0000000B
	sb	zero,sp,+0000000C
	sh	a4,a5,+00000750
	jal	ra,0000000023004F1C
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; cb_connect_ind: 23007AD2
cb_connect_ind proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a2,0000000D
	c.mv	s0,a1
	c.mv	a0,sp
	c.li	a1,00000000
	c.swsp	ra,0000008C
	jal	ra,000000002306D1BC
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
	jal	ra,0000000023005260
	c.mv	a0,sp
	jal	ra,0000000023004F1C
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; cb_event_ind: 23007B58
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
	beq	a5,a4,0000000023007BBE

l23007B7A:
	c.beqz	a5,0000000023007B8E

l23007B7C:
	c.li	a4,00000002
	beq	a5,a4,0000000023007BE0

l23007B82:
	lui	a0,00023071
	c.mv	a1,a5
	addi	a0,a0,+000006F8
	c.j	0000000023007BBA

l23007B8E:
	lbu	a5,a1,+00000005
	lbu	a4,a1,+00000004
	lui	a0,00023071
	c.slli	a5,08
	c.or	a4,a5
	lbu	a5,a1,+00000006
	lbu	a1,a1,+00000007
	addi	a0,a0,+000006BC
	c.slli	a5,10
	c.or	a5,a4
	c.slli	a1,18
	c.or	a1,a5
	lui	a5,00042017
	sw	a1,a5,+00000FA0

l23007BBA:
	jal	zero,0000000023003AC6

l23007BBE:
	lui	a0,00023071
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000006DC
	c.swsp	ra,00000084
	jal	ra,0000000023003A8A
	jal	ra,000000002300535C
	c.lwsp	a2,00000020
	c.li	a2,00000000
	c.li	a1,00000009
	c.li	a0,00000002
	c.addi	sp,00000010

l23007BDC:
	jal	zero,0000000023002BF6

l23007BE0:
	c.li	a2,00000000
	c.li	a1,0000000A
	c.li	a0,00000002
	c.j	0000000023007BDC

;; wifi_mgmr_event_init: 23007BE8
;;   Called from:
;;     23004FF4 (in wifi_mgmr_start)
wifi_mgmr_event_init proc
	lui	a1,00023008
	c.addi	sp,FFFFFFF0
	addi	a1,a1,-0000052E
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023009A84
	lui	a1,00023008
	addi	a1,a1,-000005C6
	c.li	a0,00000000
	jal	ra,0000000023009A98
	lui	a1,00023008
	addi	a1,a1,-000005F6
	c.li	a0,00000000
	jal	ra,0000000023009AAC
	lui	a1,00023008
	addi	a1,a1,-00000606
	c.li	a0,00000000
	jal	ra,0000000023009AC0
	lui	a1,00023008
	addi	a1,a1,-00000610
	c.li	a0,00000000
	jal	ra,0000000023009AF4
	lui	a1,00023008
	addi	a1,a1,-000004A8
	c.li	a0,00000000
	jal	ra,0000000023009B08
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_main_disconnect: 23007C48
;;   Called from:
;;     23004080 (in stateConnectedIPNoGuard_disconnect)
;;     2300484C (in stateGlobalGuard_fw_disconnect)
bl_main_disconnect proc
	lui	a0,00042018
	c.addi	sp,FFFFFFF0
	addi	a1,zero,+00000034
	addi	a0,a0,+00000770
	c.swsp	ra,00000084
	jal	ra,0000000023008E2A
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_main_powersaving: 23007C64
;;   Called from:
;;     230043DC (in stateGlobalGuard_fw_powersaving)
bl_main_powersaving proc
	c.mv	a1,a0
	lui	a0,00042018
	addi	a0,a0,+00000770
	jal	zero,0000000023008E80

;; bl_main_denoise: 23007C72
;;   Called from:
;;     230048A8 (in stateConnectedIPYes_exit)
;;     2300490E (in stateGlobalGuard_denoise)
;;     2300492E (in stateGlobalGuard_denoise)
bl_main_denoise proc
	c.mv	a1,a0
	lui	a0,00042018
	addi	a0,a0,+00000770
	jal	zero,0000000023008EC2

;; bl_main_monitor: 23007C80
;;   Called from:
;;     23003D6C (in stateIdleGuard_sniffer)
bl_main_monitor proc
	c.addi16sp	FFFFFFC0
	addi	a2,zero,+00000028
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	c.swsp	ra,0000009C
	jal	ra,000000002306D1BC
	lui	a0,00042018
	c.addi4spn	a1,00000008
	addi	a0,a0,+00000770
	jal	ra,00000000230086C0
	c.lwsp	t3,00000130
	c.li	a0,00000000
	c.addi16sp	00000040
	c.jr	ra

;; bl_main_phy_up: 23007CA6
;;   Called from:
;;     230049A6 (in stateIfaceDownGuard_phyup)
bl_main_phy_up proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042018
	addi	a0,s0,+00000770
	c.swsp	ra,00000084
	jal	ra,00000000230089A2
	c.bnez	a0,0000000023007CD6

l23007CBA:
	c.lui	a5,00001000
	addi	s0,s0,+00000770
	c.add	s0,a5
	lw	a5,s0,-00000220
	ori	a5,a5,+00000004
	sw	a5,s0,+00000DE0

l23007CCE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23007CD6:
	c.li	a0,FFFFFFFF
	c.j	0000000023007CCE

;; bl_main_monitor_channel_set: 23007CDA
;;   Called from:
;;     23003D4E (in stateSnifferGuard_ChannelSet)
bl_main_monitor_channel_set proc
	c.addi16sp	FFFFFFC0
	c.mv	a2,a0
	lui	a0,00042018
	c.mv	a3,a1
	addi	a0,a0,+00000770
	c.addi4spn	a1,00000008
	c.swsp	ra,0000009C
	jal	ra,00000000230086FC
	c.lwsp	t3,00000130
	c.li	a0,00000000
	c.addi16sp	00000040
	c.jr	ra

;; bl_main_if_remove: 23007CF8
;;   Called from:
;;     23003DE2 (in stateDisconnect_action_idle)
;;     23004A80 (in stateGlobalGuard_stop)
;;     23004B5C (in stateGlobalGuard_disable_autoreconnect)
bl_main_if_remove proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	a1,a0
	c.mv	s0,a0
	lui	a0,00023072
	addi	a0,a0,-000006F0
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6
	lui	a0,00042018
	c.mv	a1,s0
	addi	a0,a0,+00000770
	jal	ra,0000000023008AA8
	lui	a0,00023072
	addi	a0,a0,-000006B8
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_main_raw_send: 23007D32
;;   Called from:
;;     23004A1C (in stateSnifferGuard_raw_send)
bl_main_raw_send proc
	c.mv	a2,a1
	c.mv	a1,a0
	lui	a0,00042018
	addi	a0,a0,+00000770
	jal	zero,0000000023008B98

;; bl_main_rate_config: 23007D42
;;   Called from:
;;     230040DA (in stateConnectedIPYesGuard_rcconfig)
bl_main_rate_config proc
	c.mv	a2,a1
	c.mv	a1,a0
	lui	a0,00042018
	addi	a0,a0,+00000770
	jal	zero,0000000023008954

;; bl_main_set_country_code: 23007D52
;;   Called from:
;;     230052B6 (in wifi_mgmr_set_country_code_internal)
bl_main_set_country_code proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230085F0
	lui	a0,00042018
	addi	a0,a0,+00000770
	jal	ra,0000000023008882
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_main_get_channel_nums: 23007D6E
;;   Called from:
;;     230052D6 (in wifi_mgmr_set_country_code_internal)
bl_main_get_channel_nums proc
	jal	zero,0000000023008684

;; bl_main_if_add: 23007D72
;;   Called from:
;;     23004460 (in stateGlobalGuard_AP)
;;     23004958 (in stateIdleGuard_connect)
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
	c.bnez	a0,0000000023007DF4

l23007D88:
	lui	a1,00023072
	addi	a1,a1,-00000778

l23007D90:
	lui	a0,00023072
	addi	a0,a0,-00000774
	jal	ra,0000000023003AC6
	sltiu	a2,s3,+00000001
	lui	s0,00042018
	c.addi4spn	a4,0000000C
	c.li	a3,00000000
	c.addi	a2,00000002
	addi	a1,s2,+0000003A
	addi	a0,s0,+00000770
	jal	ra,0000000023008A10
	c.mv	s1,a0
	lui	a0,00023072
	addi	a0,a0,-00000750
	jal	ra,0000000023003AC6
	c.bnez	s1,0000000023007DE2

l23007DC6:
	lbu	a2,sp,+0000000C
	c.beqz	a2,0000000023007DFE

l23007DCC:
	lui	a1,00023072
	lui	a0,00023072
	addi	a1,a1,-00000734
	addi	a0,a0,-0000072C
	jal	ra,0000000023003AC6
	c.li	s1,FFFFFFFB

l23007DE2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23007DF4:
	lui	a1,00023072
	addi	a1,a1,-0000077C
	c.j	0000000023007D90

l23007DFE:
	lui	a5,00042019
	lbu	a1,sp,+0000000D
	addi	s0,s0,+00000770
	addi	a5,a5,+00000770
	beq	s3,zero,0000000023007E40

l23007E12:
	sw	a1,a5,+00000E1C

l23007E16:
	lui	a0,00023072
	sb	a1,s4,+00000000
	addi	a0,a0,-00000714
	jal	ra,0000000023003AC6
	lbu	a5,sp,+0000000D
	addi	a4,zero,+000000C4
	add	a5,a5,a4
	c.add	s0,a5
	c.li	a5,00000001
	sw	s2,s0,+00000368
	sb	a5,s0,+000003CF
	c.j	0000000023007DE2

l23007E40:
	sw	a1,a5,+00000E20
	c.j	0000000023007E16

;; bl_main_apm_start: 23007E46
;;   Called from:
;;     2300452A (in stateGlobalGuard_AP)
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
	jal	ra,000000002306D1BC
	lui	a0,00023071
	c.mv	a1,s0
	addi	a0,a0,+0000078C
	jal	ra,0000000023003AC6
	c.lwsp	a2,000000C4
	c.mv	a5,s0
	lui	s0,00042018
	c.mv	a6,a4
	c.mv	a3,s2
	c.mv	a4,s3
	c.mv	a2,s1
	c.addi4spn	a1,0000001C
	addi	a0,s0,+00000770
	jal	ra,0000000023008F04
	c.mv	s1,a0
	lui	a0,00023071
	addi	a0,a0,+000007BC
	jal	ra,0000000023003AC6
	lbu	a1,sp,+0000001C
	lui	a0,00023071
	addi	a0,a0,+000007D8
	jal	ra,0000000023003AC6
	lbu	a1,sp,+0000001D
	lui	a0,00023071
	addi	a0,a0,+000007F0
	jal	ra,0000000023003AC6
	lbu	a1,sp,+0000001E
	lui	a0,00023072
	addi	a0,a0,-000007F8
	jal	ra,0000000023003AC6
	lbu	a1,sp,+0000001F
	lui	a0,00023072
	addi	a0,a0,-000007E0
	jal	ra,0000000023003AC6
	c.lui	a5,00001000
	addi	s0,s0,+00000770
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

;; bl_main_apm_stop: 23007EFC
;;   Called from:
;;     23004A5C (in stateGlobalGuard_stop)
bl_main_apm_stop proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	a1,a0
	c.mv	s0,a0
	lui	a0,00023072
	addi	a0,a0,-000007C8
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6
	lui	a0,00042018
	c.mv	a1,s0
	addi	a0,a0,+00000770
	jal	ra,0000000023009044
	c.mv	s0,a0
	lui	a0,00023072
	addi	a0,a0,-00000798
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bl_main_apm_sta_cnt_get: 23007F38
;;   Called from:
;;     230052EC (in wifi_mgmr_ap_sta_cnt_get_internal)
bl_main_apm_sta_cnt_get proc
	c.li	a5,0000000C
	sb	a5,a0,+00000000
	c.li	a0,00000000
	c.jr	ra

;; bl_main_apm_sta_info_get: 23007F42
;;   Called from:
;;     23005312 (in wifi_mgmr_ap_sta_info_get_internal)
bl_main_apm_sta_info_get proc
	c.li	a5,0000001C
	add	a1,a1,a5
	lui	a4,00042018
	addi	a4,a4,+00000770
	c.lui	a3,00001000
	add	a5,a4,a1
	c.add	a5,a3
	lbu	a2,a5,-00000368
	c.beqz	a2,0000000023007FAA

l23007F5E:
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
	jal	ra,000000002306CF80
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l23007FAA:
	c.li	a0,00000000
	c.jr	ra

;; bl_main_apm_sta_delete: 23007FAE
;;   Called from:
;;     23005350 (in wifi_mgmr_ap_sta_delete_internal)
;;     23008054 (in bl_main_apm_remove_all_sta)
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
	lui	s5,00042018
	addi	s2,s5,+00000770
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
	jal	ra,000000002306D1BC
	lbu	a3,s1,-00000366
	lui	a0,00023071
	c.mv	a1,s4
	c.mv	a2,a3
	addi	a0,a0,+00000758
	c.swsp	a3,00000084
	jal	ra,0000000023003AC6
	c.lwsp	a2,000000A4
	c.mv	a2,s4
	c.addi4spn	a1,0000001C
	addi	a0,s5,+00000770
	jal	ra,000000002300908E
	lbu	a5,sp,+0000001C
	c.li	a0,FFFFFFFF
	c.bnez	a5,000000002300801E

l23008012:
	c.li	a2,0000001C
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002306D1BC
	c.li	a0,00000000

l2300801E:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

;; bl_main_apm_remove_all_sta: 23008030
;;   Called from:
;;     23004A6C (in stateGlobalGuard_stop)
bl_main_apm_remove_all_sta proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042019
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	addi	s1,s1,+00000408
	c.li	s0,00000000
	c.li	s3,00000001
	c.li	s2,0000000C

l2300804A:
	lbu	a5,s1,+00000000
	bne	a5,s3,0000000023008058

l23008052:
	c.mv	a0,s0
	jal	ra,0000000023007FAE

l23008058:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	c.addi	s1,0000001C
	bne	s0,s2,000000002300804A

l23008064:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; bl_main_conf_max_sta: 23008074
;;   Called from:
;;     23004428 (in stateGlobalGuard_conf_max_sta)
bl_main_conf_max_sta proc
	c.mv	a1,a0
	lui	a0,00042018
	addi	a0,a0,+00000770
	jal	zero,00000000230090E2

;; bl_main_cfg_task_req: 23008082
;;   Called from:
;;     23004376 (in stateGlobal_cfg_req)
bl_main_cfg_task_req proc
	c.mv	a6,a5
	c.mv	a5,a4
	c.mv	a4,a3
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,a0
	lui	a0,00042018
	addi	a0,a0,+00000770
	jal	zero,000000002300912C

;; bl_main_scan: 2300809A
;;   Called from:
;;     23004C46 (in stateDisconnect_enter)
;;     23004D22 (in stateGlobalGuard_fw_scan)
;;     23004E54 (in stateConnectedIPYes_enter)
bl_main_scan proc
	lui	a0,00042018
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000770
	c.swsp	ra,00000084
	jal	ra,0000000023008AE6
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_cfg80211_connect: 230080B2
;;   Called from:
;;     23008152 (in bl_main_connect)
bl_cfg80211_connect proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a2,0000000C
	c.swsp	ra,0000008C
	jal	ra,0000000023008BE4
	c.bnez	a0,00000000230080D8

l230080BE:
	lbu	a4,sp,+0000000C
	c.li	a5,00000009
	c.li	a0,FFFFFFFB
	bltu	a5,a4,00000000230080D8

l230080CA:
	lui	a5,00023071
	addi	a5,a5,+0000074C
	c.add	a5,a4
	lb	a0,a5,+00000000

l230080D8:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; bl_main_connect: 230080DE
;;   Called from:
;;     23003F42 (in stateDisconnect_action_reconnect)
;;     230042B8 (in stateIdleAction_connect)
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
	jal	ra,000000002306D1BC
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
	beq	a6,zero,000000002300813C

l2300813A:
	c.swsp	a6,0000002C

l2300813C:
	c.beqz	s0,0000000023008148

l2300813E:
	sh	s0,sp,+00000022
	sb	a7,sp,+00000020
	c.swsp	zero,00000014

l23008148:
	lui	a0,00042018
	c.addi4spn	a1,00000020
	addi	a0,a0,+00000770
	jal	ra,00000000230080B2
	lw	ra,sp,+0000012C
	lw	s0,sp,+00000128
	lw	s1,sp,+00000124
	lw	s2,sp,+00000120
	lw	s3,sp,+0000011C
	c.li	a0,00000000
	c.addi16sp	00000130
	c.jr	ra

;; bl_main_event_handle: 23008170
;;   Called from:
;;     230501EC (in bl_event_handle)
bl_main_event_handle proc
	lui	a0,00042018
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000770
	c.swsp	ra,00000084
	jal	ra,000000002300AE20
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023009C58

;; bl_main_lowlevel_init: 23008188
;;   Called from:
;;     230081A0 (in bl_main_rtthread_start)
bl_main_lowlevel_init proc
	lui	a0,00042018
	addi	a0,a0,+00000770
	jal	zero,000000002300AE1C

;; bl_main_rtthread_start: 23008194
;;   Called from:
;;     2300A764 (in bl606a0_wifi_init)
bl_main_rtthread_start proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,0000000023008188
	c.lwsp	a2,00000044
	lui	s1,00042018
	addi	s2,s1,+00000770
	lui	a5,00042019
	sw	s2,a0,+00000000
	addi	a5,a5,-00000538
	sw	a5,s2,+00000358
	sw	a5,s2,+0000035C
	c.lui	s0,00001000
	lui	a5,0004200D
	c.add	s0,s2
	addi	a5,a5,+000002F4
	addi	a0,s1,+00000770
	sw	a5,s0,+00000DFC
	jal	ra,0000000023009206
	c.beqz	a0,00000000230081F6

l230081DC:
	lui	a0,00023072
	addi	a0,a0,-00000698

l230081E4:
	jal	ra,0000000023003AC6

l230081E8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l230081F6:
	lw	a0,s2,+00000034
	addi	a1,zero,+000007FF
	jal	ra,000000002300A9B0
	jal	ra,0000000023036E54
	addi	a0,s1,+00000770
	c.jal	000000002300868E
	c.beqz	a0,0000000023008218

l2300820E:
	lui	a0,00023072
	addi	a0,a0,-00000680
	c.j	00000000230081E4

l23008218:
	c.li	a0,00000005
	jal	ra,0000000023033E10
	lui	a1,00042019
	addi	a1,a1,+00000554
	addi	a0,s1,+00000770
	c.jal	000000002300878A
	c.bnez	a0,00000000230081E8

l2300822E:
	lw	a1,s0,-0000021C
	lui	a0,00023072
	addi	a0,a0,-00000668
	srli	a3,a1,00000008
	srli	a2,a1,00000010
	andi	a4,a1,+000000FF
	andi	a3,a3,+000000FF
	andi	a2,a2,+000000FF
	c.srli	a1,00000018
	jal	ra,0000000023003AC6
	lw	a1,s0,-00000218
	lui	a0,00023072
	addi	a0,a0,-00000648
	jal	ra,0000000023003AC6
	lw	a1,s0,-00000214
	lui	a0,00023072
	addi	a0,a0,-00000624
	jal	ra,0000000023003AC6
	lw	a1,s0,-00000210
	lui	a0,00023072
	addi	a0,a0,-00000600
	jal	ra,0000000023003AC6
	lw	a1,s0,-0000020C
	lui	a0,00023072
	addi	a0,a0,-000005E0
	jal	ra,0000000023003AC6
	lw	a1,s0,-00000208
	lui	a0,00023072
	addi	a0,a0,-000005C0
	jal	ra,0000000023003AC6
	addi	a0,s1,+00000770
	c.jal	00000000230082CA
	c.beqz	a0,00000000230082B6

l230082AC:
	lui	a0,00023072
	addi	a0,a0,-000005A4
	c.j	00000000230081E4

l230082B6:
	addi	a0,s1,+00000770
	c.jal	00000000230087BE
	addi	a0,s1,+00000770
	c.jal	0000000023008882
	c.li	a5,00000001
	sb	a5,s0,+00000E6C
	c.j	00000000230081E8

;; bl_handle_dynparams: 230082CA
;;   Called from:
;;     230082A8 (in bl_main_rtthread_start)
bl_handle_dynparams proc
	c.lui	a5,00001000
	c.add	a5,a0
	lw	a3,a5,-00000200
	lui	a4,00000040
	c.or	a4,a3
	sw	a4,a5,+00000E00
	lw	a4,a5,-00000204
	lbu	a2,a4,+00000048
	c.beqz	a2,00000000230082F0

l230082E6:
	lui	a2,00000058
	c.or	a3,a2
	sw	a3,a5,+00000E00

l230082F0:
	lbu	a5,a4,+00000014
	c.beqz	a5,0000000023008306

l230082F6:
	c.lui	a5,00001000
	c.add	a5,a0
	lw	a3,a5,-00000200
	c.lui	a2,00004000
	c.or	a3,a2
	sw	a3,a5,+00000E00

l23008306:
	c.lw	a4,12(a3)
	c.li	a5,00000005
	bgeu	a5,a3,0000000023008312

l2300830E:
	c.li	a5,00000002
	c.sw	a4,12(a5)

l23008312:
	c.lui	a5,00001000
	c.add	a5,a0
	lw	a5,a5,-00000204
	c.li	a4,00000002
	c.lw	a5,4(a3)
	bgeu	a4,a3,0000000023008326

l23008322:
	sw	zero,a5,+00000004

l23008326:
	c.lui	a4,00001000
	c.add	a4,a0
	lhu	a3,a4,-000001FC
	lw	a5,a4,-00000204
	ori	a2,a3,+00000100
	c.lw	a5,28(a1)
	sh	a2,a4,+00000E04
	lbu	a2,a5,+00000008
	c.beqz	a2,000000002300834A

l23008342:
	ori	a3,a3,+00000101
	sh	a3,a4,+00000E04

l2300834A:
	lbu	a4,a5,+00000017
	slli	a3,a1,00000010
	c.srli	a3,00000010
	c.beqz	a4,00000000230083FE

l23008356:
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

l23008378:
	c.li	a4,00000001
	bge	a4,a1,000000002300838E

l2300837E:
	c.lui	a4,00001000
	c.add	a4,a0
	lhu	a2,a4,-000001FC
	ori	a2,a2,+00000080
	sh	a2,a4,+00000E04

l2300838E:
	lbu	a4,a5,+00000015
	c.beqz	a4,00000000230083BE

l23008394:
	c.lui	a4,00001000
	c.add	a4,a0
	lhu	a2,a4,-000001FC
	ori	a1,a2,+00000020
	sh	a1,a4,+00000E04
	lbu	a1,a5,+00000017
	c.beqz	a1,0000000023008416

l230083AA:
	ori	a2,a2,+00000060
	sh	a2,a4,+00000E04
	addi	a2,zero,+00000096

l230083B6:
	add	a3,a3,a2
	sh	a3,a4,+00000E14

l230083BE:
	c.lui	a4,00001000
	c.add	a0,a4
	lhu	a4,a0,-000001FC
	ori	a4,a4,+0000000C
	sh	a4,a0,+00000E04
	lbu	a4,a5,+00000000
	c.bnez	a4,00000000230083D8

l230083D4:
	sb	zero,a0,+00000E06

l230083D8:
	lbu	a5,a5,+00000019
	c.beqz	a5,000000002300841C

l230083DE:
	lui	a1,00023072
	lui	a0,00023072
	c.addi	sp,FFFFFFF0
	addi	a1,a1,-00000588
	addi	a0,a0,-00000574
	c.swsp	ra,00000084
	jal	ra,0000000023003AC6
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230083FE:
	addi	a2,zero,+00000041
	add	a2,a3,a2
	c.lui	a4,00001000
	c.add	a4,a0
	sh	a2,a4,+00000E14
	c.li	a2,FFFFFFFF
	sb	a2,a4,+00000E0A
	c.j	0000000023008378

l23008416:
	addi	a2,zero,+00000048
	c.j	00000000230083B6

l2300841C:
	c.li	a0,00000000
	c.jr	ra

;; bl_send_msg: 23008420
;;   Called from:
;;     230086B2 (in bl_send_reset)
;;     230086EE (in bl_send_monitor_enable)
;;     23008774 (in bl_send_monitor_channel_set)
;;     230087B0 (in bl_send_version_req)
;;     23008862 (in bl_send_me_config_req)
;;     23008942 (in bl_send_me_chan_config_req)
;;     23008990 (in bl_send_me_rate_config_req)
;;     230089FE (in bl_send_start)
;;     23008A82 (in bl_send_add_if)
;;     23008AD6 (in bl_send_remove_if)
;;     23008B60 (in bl_send_scanu_req)
;;     23008BCE (in bl_send_scanu_raw_send)
;;     23008E26 (in bl_send_sm_connect_req)
;;     23008E6E (in bl_send_sm_disconnect_req)
;;     23008EB2 (in bl_send_mm_powersaving_req)
;;     23008EF4 (in bl_send_mm_denoise_req)
;;     2300901E (in bl_send_apm_start_req)
;;     2300907C (in bl_send_apm_stop_req)
;;     230090D0 (in bl_send_apm_sta_del_req)
;;     2300911A (in bl_send_apm_conf_max_sta_req)
;;     2300917E (in bl_send_cfg_task_req)
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
	c.bnez	a5,00000000230084B4

l23008452:
	andi	a5,a3,-00000003
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	a3,00000001
	beq	a5,a3,00000000230084B4

l23008460:
	c.li	a3,00000005
	beq	s1,a3,00000000230084B4

l23008466:
	addi	a3,zero,+00000023
	beq	s1,a3,00000000230084B4

l2300846E:
	addi	a4,a4,+00000401
	beq	a5,a4,00000000230084B4

l23008476:
	addi	a5,zero,+00000032
	beq	s1,a5,00000000230084B4

l2300847E:
	lui	a1,00023072
	lui	a0,00023072
	c.mv	a2,s1
	addi	a1,a1,-000004F8
	addi	a0,a0,+00000670
	jal	ra,0000000023003AC6

l23008494:
	c.mv	a0,s2
	jal	ra,0000000023035A72
	c.li	s1,FFFFFFF0

l2300849C:
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

l230084B4:
	lw	a5,s6,+00000034
	c.bnez	a5,00000000230084D0

l230084BA:
	lui	a1,00023072
	lui	a0,00023072
	addi	a1,a1,-000004F8
	addi	a0,a0,+000006A0
	jal	ra,0000000023003AC6
	c.j	0000000023008494

l230084D0:
	lhu	a2,s7,-00000008
	addi	a5,zero,+00000041
	c.li	s5,00000001
	beq	a2,a5,0000000023008504

l230084DE:
	addi	a5,zero,+00000050
	beq	a2,a5,0000000023008504

l230084E6:
	c.lui	a5,FFFFF000
	addi	a5,a5,-0000040C
	c.add	a5,a2
	c.andi	a5,FFFFFFFB
	c.slli	a5,10
	c.srli	a5,00000010
	c.beqz	a5,0000000023008504

l230084F6:
	c.lui	a5,FFFFE000
	c.andi	a2,FFFFFFFB
	addi	a5,a5,-00000408
	c.add	a2,a5
	sltiu	s5,a2,+00000001

l23008504:
	addi	a0,zero,+00000040
	jal	ra,000000002303598A
	c.mv	s0,a0
	c.bnez	a0,0000000023008532

l23008510:
	c.mv	a0,s2
	jal	ra,0000000023035A72
	lui	a1,00023072
	lui	a0,00023072
	addi	a2,zero,+00000040
	addi	a1,a1,-000004F8
	addi	a0,a0,+000006CC
	jal	ra,0000000023003AC6
	c.li	s1,FFFFFFF4
	c.j	000000002300849C

l23008532:
	addi	a2,zero,+00000040
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	c.li	a5,00000004
	c.sw	s0,60(a5)
	lhu	a5,s7,-00000008
	sh	s1,s0,+0000000A
	sw	s2,s0,+0000000C
	sh	a5,s0,+00000008
	sw	s4,s0,+00000010
	beq	s5,zero,000000002300855E

l23008558:
	c.li	a5,00000001
	sh	a5,s0,+00000018

l2300855E:
	beq	s3,zero,000000002300856E

l23008562:
	lhu	a5,s0,+00000018
	ori	a5,a5,+00000002
	sh	a5,s0,+00000018

l2300856E:
	lw	a5,s6,+00000020
	c.mv	a1,s0
	addi	a0,s6,+00000004
	c.jalr	a5
	c.mv	s1,a0
	bne	s5,zero,0000000023008588

l23008580:
	c.mv	a0,s0
	jal	ra,0000000023035A72
	c.j	000000002300849C

l23008588:
	c.lw	s0,60(s1)
	c.j	000000002300849C

;; bl_msg_zalloc.constprop.3: 2300858C
;;   Called from:
;;     2300869C (in bl_send_reset)
;;     230086D2 (in bl_send_monitor_enable)
;;     23008714 (in bl_send_monitor_channel_set)
;;     2300879A (in bl_send_version_req)
;;     230087D6 (in bl_send_me_config_req)
;;     23008896 (in bl_send_me_chan_config_req)
;;     2300896E (in bl_send_me_rate_config_req)
;;     230089B6 (in bl_send_start)
;;     23008A2A (in bl_send_add_if)
;;     23008ABA (in bl_send_remove_if)
;;     23008AF6 (in bl_send_scanu_req)
;;     23008BB4 (in bl_send_scanu_raw_send)
;;     23008C04 (in bl_send_sm_connect_req)
;;     23008E42 (in bl_send_sm_disconnect_req)
;;     23008E94 (in bl_send_mm_powersaving_req)
;;     23008ED6 (in bl_send_mm_denoise_req)
;;     23008F3C (in bl_send_apm_start_req)
;;     2300905C (in bl_send_apm_stop_req)
;;     230090AA (in bl_send_apm_sta_del_req)
;;     230090FA (in bl_send_apm_conf_max_sta_req)
;;     2300914E (in bl_send_cfg_task_req)
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
	jal	ra,000000002303598A
	c.mv	s0,a0
	c.lwsp	a2,00000084
	c.bnez	a0,00000000230085D2

l230085AE:
	lui	a1,00023072
	lui	a0,00023072
	addi	a1,a1,-00000508
	addi	a0,a0,+000005F4
	jal	ra,0000000023003AC6

l230085C2:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l230085D2:
	c.li	a1,00000000
	jal	ra,000000002306D1BC
	addi	a5,zero,+00000064
	sh	s3,s0,+00000000
	sh	s2,s0,+00000002
	sh	a5,s0,+00000004
	sh	s1,s0,+00000006
	c.addi	s0,00000008
	c.j	00000000230085C2

;; bl_msg_update_channel_cfg: 230085F0
;;   Called from:
;;     23007D56 (in bl_main_set_country_code)
;;     2300A73C (in bl606a0_wifi_init)
bl_msg_update_channel_cfg proc
	c.addi	sp,FFFFFFE0
	lui	a5,00023072
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.mv	s2,a0
	addi	s3,a5,+00000700
	c.li	s1,00000000
	addi	s0,a5,+00000700
	c.li	s4,00000004

l23008610:
	lw	a0,s3,+00000000
	c.mv	a1,s2
	jal	ra,000000002306D404
	c.bnez	a0,0000000023008654

l2300861C:
	c.li	a5,0000000C
	add	a5,s1,a5
	lui	a4,0004200E
	lui	a0,00023072
	c.mv	a1,s2
	addi	a0,a0,+00000588
	c.add	a5,s0
	c.lw	a5,4(a2)
	sw	a2,a4,+000000C4
	c.lw	a5,8(a4)
	lui	a5,0004200E
	sw	a4,a5,+000000C8

l23008642:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,0000000023003AC6

l23008654:
	c.addi	s1,00000001
	c.addi	s3,0000000C
	bne	s1,s4,0000000023008610

l2300865C:
	lui	a5,0004200E
	c.li	a4,0000000E
	sw	a4,a5,+000000C4
	lui	a5,00023072
	lui	a4,0004200E
	addi	a5,a5,+00000074
	lui	a0,00023072
	sw	a5,a4,+000000C8
	c.li	a2,0000000E
	c.mv	a1,s2
	addi	a0,a0,+000005B8
	c.j	0000000023008642

;; bl_msg_get_channel_nums: 23008684
;;   Called from:
;;     23007D6E (in bl_main_get_channel_nums)
bl_msg_get_channel_nums proc
	lui	a5,0004200E
	lw	a0,a5,+000000C4
	c.jr	ra

;; bl_send_reset: 2300868E
;;   Called from:
;;     2300820A (in bl_main_rtthread_start)
bl_send_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a2,00000000
	c.mv	s0,a0
	c.li	a1,00000000
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,000000002300858C
	c.beqz	a0,00000000230086B6

l230086A2:
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a4,00000000
	c.li	a3,00000001
	c.li	a2,00000001
	c.addi	sp,00000010
	jal	zero,0000000023008420

l230086B6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_monitor_enable: 230086C0
;;   Called from:
;;     23007C9A (in bl_main_monitor)
bl_send_monitor_enable proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.mv	s0,a0
	c.li	a2,00000004
	c.li	a1,00000000
	addi	a0,zero,+0000005C
	c.swsp	ra,0000008C
	jal	ra,000000002300858C
	c.beqz	a0,00000000230086F2

l230086D8:
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
	jal	zero,0000000023008420

l230086F2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,FFFFFFF4
	c.addi16sp	00000020
	c.jr	ra

;; bl_send_monitor_channel_set: 230086FC
;;   Called from:
;;     23007CEC (in bl_main_monitor_channel_set)
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
	jal	ra,000000002300858C
	c.beqz	a0,000000002300877E

l2300871A:
	addi	a5,s0,-00000001
	c.li	a2,0000000D
	c.mv	a1,a0
	c.lwsp	s0,000000A4
	c.lwsp	a2,000000C4
	bltu	a2,a5,0000000023008754

l2300872A:
	c.li	a5,0000000E
	beq	s0,a5,000000002300875A

l23008730:
	c.li	a5,00000005
	add	s0,s0,a5
	c.lui	a5,00001000
	addi	a5,a5,-00000699
	c.add	s0,a5
	c.slli	s0,10
	c.srli	s0,00000010

l23008742:
	c.sw	a1,0(s0)
	c.beqz	a3,0000000023008778

l23008746:
	c.li	a5,00000001
	c.sw	a1,4(a5)
	bne	a3,a5,0000000023008762

l2300874E:
	sw	zero,a1,+00000008
	c.j	0000000023008764

l23008754:
	c.lui	s0,00010000
	c.addi	s0,FFFFFFFF
	c.j	0000000023008742

l2300875A:
	c.lui	s0,00001000
	addi	s0,s0,-0000064C
	c.j	0000000023008742

l23008762:
	c.sw	a1,8(a5)

l23008764:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a0,s1
	c.lwsp	s4,00000024
	addi	a3,zero,+0000005F
	c.li	a2,00000001
	c.addi16sp	00000020
	jal	zero,0000000023008420

l23008778:
	sw	zero,a1,+00000004
	c.j	000000002300874E

l2300877E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.li	a0,FFFFFFF4
	c.addi16sp	00000020
	c.jr	ra

;; bl_send_version_req: 2300878A
;;   Called from:
;;     2300822A (in bl_main_rtthread_start)
bl_send_version_req proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.mv	s0,a0
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000004
	c.swsp	ra,0000008C
	jal	ra,000000002300858C
	c.beqz	a0,00000000230087B4

l230087A0:
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	a2,000000C4
	c.lwsp	t3,00000020
	c.li	a3,00000005
	c.li	a2,00000001
	c.addi16sp	00000020
	jal	zero,0000000023008420

l230087B4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,FFFFFFF4
	c.addi16sp	00000020
	c.jr	ra

;; bl_send_me_config_req: 230087BE
;;   Called from:
;;     230082BA (in bl_main_rtthread_start)
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
	jal	ra,000000002300858C
	c.beqz	a0,0000000023008874

l230087DC:
	c.mv	s0,a0
	lui	a0,00023072
	c.li	a2,00000000
	c.li	a1,00000001
	addi	a0,a0,+00000650
	jal	ra,0000000023003AC6
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

l23008820:
	bne	a5,s1,0000000023008866

l23008824:
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
	jal	zero,0000000023008420

l23008866:
	lbu	a3,a5,+00000000
	c.addi	a4,00000001
	c.addi	a5,00000001
	sb	a3,a4,+00000FFF
	c.j	0000000023008820

l23008874:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_me_chan_config_req: 23008882
;;   Called from:
;;     23007D62 (in bl_main_set_country_code)
;;     230082C0 (in bl_main_rtthread_start)
bl_send_me_chan_config_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.lui	a0,00001000
	addi	a2,zero,+000000FE
	c.li	a1,00000005
	addi	a0,a0,+00000402
	c.swsp	ra,00000084
	jal	ra,000000002300858C
	c.beqz	a0,000000002300894A

l2300889C:
	c.mv	a1,a0
	sb	zero,a0,+000000FC
	c.li	a2,00000000
	lui	t1,0004200E
	c.li	t3,00000006
	addi	t4,zero,+00000034
	lui	a7,0004200E
	c.li	t5,00000002
	c.li	t6,0000000E

l230088B6:
	lw	a5,t1,+000000C4
	bge	a2,a5,000000002300892C

l230088BE:
	lbu	a4,a1,+000000FC
	add	a0,a2,t4
	addi	a6,a7,+000000C8
	add	a5,a4,t3
	c.add	a5,a1
	sb	zero,a5,+00000003
	lw	a3,a7,+000000C8
	c.add	a3,a0
	c.lw	a3,8(a3)
	c.andi	a3,00000001
	c.beqz	a3,00000000230088E4

l230088E0:
	sb	t5,a5,+00000003

l230088E4:
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
	bne	a5,t6,0000000023008946

l2300892C:
	sb	zero,a1,+000000FD
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lui	a3,00001000
	c.li	a4,00000000
	addi	a3,a3,+00000403
	c.li	a2,00000001
	c.addi	sp,00000010
	jal	zero,0000000023008420

l23008946:
	c.addi	a2,00000001
	c.j	00000000230088B6

l2300894A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_me_rate_config_req: 23008954
;;   Called from:
;;     23007D4E (in bl_main_rate_config)
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
	jal	ra,000000002300858C
	c.beqz	a0,0000000023008994

l23008974:
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
	jal	zero,0000000023008420

l23008994:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_start: 230089A2
;;   Called from:
;;     23007CB4 (in bl_main_phy_up)
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
	jal	ra,000000002300858C
	c.beqz	a0,0000000023008A02

l230089BC:
	c.lui	a1,00001000
	add	s2,s1,a1
	c.li	a5,00000001
	addi	a1,a1,-000001D4
	sw	a5,s2,+00000E2C
	c.add	a1,s1
	addi	a2,zero,+00000040
	c.mv	s0,a0
	jal	ra,000000002306CF80
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
	jal	zero,0000000023008420

l23008A02:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_add_if: 23008A10
;;   Called from:
;;     23007DB2 (in bl_main_if_add)
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
	jal	ra,000000002300858C
	c.beqz	a0,0000000023008A94

l23008A30:
	c.li	a2,00000006
	c.mv	s0,a0
	c.mv	a1,s3
	c.addi	a0,00000001
	jal	ra,000000002306CF80
	addi	a2,s1,-00000001
	andi	a2,a2,+000000FF
	c.li	a5,00000008
	c.lwsp	a2,000000C4
	bltu	a5,a2,0000000023008A62

l23008A4C:
	lui	a5,00023072
	addi	a5,a5,-00000538
	c.slli	a2,02
	c.add	a2,a5
	c.lw	a2,0(a5)
	c.jr	a5
23008A5C                                     85 47 A3 03             .G..
23008A60 F4 00                                           ..             

l23008A62:
	sb	zero,s0,+00000000
	c.j	0000000023008A6E
23008A68                         85 47 23 00 F4 00               .G#... 

l23008A6E:
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
	jal	zero,0000000023008420
23008A86                   85 47 A3 03 F4 00 89 47 F1 BF       .G.....G..
23008A90 8D 47 E1 BF                                     .G..           

l23008A94:
	c.li	a0,FFFFFFF4
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra
23008AA4             7D 55 C5 BF                             }U..       

;; bl_send_remove_if: 23008AA8
;;   Called from:
;;     23007D18 (in bl_main_if_remove)
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
	jal	ra,000000002300858C
	c.beqz	a0,0000000023008ADA

l23008AC0:
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
	jal	zero,0000000023008420

l23008ADA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_scanu_req: 23008AE6
;;   Called from:
;;     230080A6 (in bl_main_scan)
bl_send_scanu_req proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	addi	a2,zero,+00000154
	c.mv	s0,a0
	c.li	a1,00000004
	c.lui	a0,00001000
	c.swsp	ra,00000084
	jal	ra,000000002300858C
	c.beqz	a0,0000000023008B8E

l23008AFC:
	c.lui	a5,00001000
	c.add	a5,s0
	lw	a5,a5,-000001E4
	c.mv	a1,a0
	sh	zero,a0,+0000014C
	sb	a5,a0,+0000014E
	lui	a5,0004200E
	lw	a4,a5,+000000C4
	lui	a5,00023082
	addi	a5,a5,+000006B4
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

l23008B4E:
	blt	a2,a3,0000000023008B64

l23008B52:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.addi	sp,00000010
	jal	zero,0000000023008420

l23008B64:
	add	t1,a2,a6
	lw	a4,a0,+000000C8
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
	c.j	0000000023008B4E

l23008B8E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_scanu_raw_send: 23008B98
;;   Called from:
;;     23007D3E (in bl_main_raw_send)
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
	jal	ra,000000002300858C
	c.beqz	a0,0000000023008BE0

l23008BBA:
	c.mv	a1,a0
	sw	s3,a0,+00000000
	sw	s2,a0,+00000004
	c.addi4spn	a4,0000000C
	addi	a3,s0,+00000006
	c.li	a2,00000001
	c.mv	a0,s1
	jal	ra,0000000023008420

l23008BD2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23008BE0:
	c.li	a0,FFFFFFF4
	c.j	0000000023008BD2

;; bl_send_sm_connect_req: 23008BE4
;;   Called from:
;;     230080B8 (in bl_cfg80211_connect)
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
	jal	ra,000000002300858C
	beq	a0,zero,0000000023008D96

l23008C0C:
	c.lw	s0,96(a5)
	c.mv	s1,a0
	c.li	s2,00000000
	c.beqz	a5,0000000023008C38

l23008C14:
	c.lw	s0,100(a4)
	lui	a5,000FFF05
	addi	a5,a5,+000003FF
	c.add	a5,a4
	c.li	a3,00000001
	c.li	s2,00000004
	bgeu	a3,a5,0000000023008C38

l23008C28:
	lui	a5,000000FB
	addi	a5,a5,-000003FB
	c.li	s2,00000000
	bne	a4,a5,0000000023008C38

l23008C36:
	c.li	s2,00000004

l23008C38:
	lbu	a5,s0,+00000084
	c.beqz	a5,0000000023008C42

l23008C3E:
	ori	s2,s2,+00000001

l23008C42:
	lbu	a5,s0,+00000088
	c.beqz	a5,0000000023008C4C

l23008C48:
	ori	s2,s2,+00000002

l23008C4C:
	c.lw	s0,92(a4)
	lui	a5,000000FB
	addi	a5,a5,-000003FF
	c.andi	a4,FFFFFFFB
	beq	a4,a5,0000000023008C60

l23008C5C:
	ori	s2,s2,+00000008

l23008C60:
	lbu	a4,s0,+00000055
	c.li	a5,00000001
	bne	a4,a5,0000000023008C6E

l23008C6A:
	ori	s2,s2,+00000010

l23008C6E:
	lhu	a5,s0,+00000086
	c.bnez	a5,0000000023008C7A

l23008C74:
	c.lui	a5,00009000
	addi	a5,a5,-00000772

l23008C7A:
	sh	a5,s1,+00000034
	c.lw	s0,56(a5)
	c.beqz	a5,0000000023008CB8

l23008C82:
	lbu	a3,a5,+00000000
	addi	a4,zero,+000000FF
	bne	a3,a4,0000000023008CCC

l23008C8E:
	lbu	a2,a5,+00000001
	c.li	a4,00000000
	bne	a2,a3,0000000023008CEC

l23008C98:
	lbu	a3,a5,+00000002
	bne	a3,a2,0000000023008CEC

l23008CA0:
	lbu	a2,a5,+00000003
	bne	a2,a3,0000000023008CEC

l23008CA8:
	lbu	a3,a5,+00000004
	bne	a3,a2,0000000023008CEC

l23008CB0:
	lbu	a5,a5,+00000005
	bne	a5,a3,0000000023008CEC

l23008CB8:
	lui	a1,00023082
	c.li	a2,00000006
	addi	a1,a1,+000006B4
	addi	a0,s1,+00000022
	jal	ra,000000002306CF80
	c.j	0000000023008D04

l23008CCC:
	c.bnez	a3,0000000023008D36

l23008CCE:
	lbu	a4,a5,+00000001
	c.bnez	a4,0000000023008D36

l23008CD4:
	lbu	a4,a5,+00000002
	c.bnez	a4,0000000023008D36

l23008CDA:
	lbu	a4,a5,+00000003
	c.bnez	a4,0000000023008D36

l23008CE0:
	lbu	a4,a5,+00000004
	c.bnez	a4,0000000023008D36

l23008CE6:
	lbu	a5,a5,+00000005
	c.beqz	a5,0000000023008CB8

l23008CEC:
	c.li	a3,00000006

l23008CEE:
	c.lw	s0,56(a5)
	c.add	a5,a4
	lbu	a2,a5,+00000000
	add	a5,s1,a4
	c.addi	a4,00000001
	sb	a2,a5,+00000022
	bne	a4,a3,0000000023008CEE

l23008D04:
	c.lui	a5,00001000
	c.add	a5,s3
	lw	a5,a5,-000001E4
	sb	a5,s1,+0000003D
	lhu	a5,s0,+00000002
	c.beqz	a5,0000000023008D3A

l23008D16:
	lbu	a5,s0,+00000000
	sb	a5,s1,+0000002A
	lhu	a5,s0,+00000002
	sh	a5,s1,+00000028
	c.lw	s0,8(a5)
	c.andi	a5,0000000A
	sltu	a5,zero,a5
	sb	a5,s1,+0000002B

l23008D32:
	c.li	a5,00000000
	c.j	0000000023008D54

l23008D36:
	c.li	a4,00000000
	c.j	0000000023008CEC

l23008D3A:
	c.li	a5,FFFFFFFF
	sh	a5,s1,+00000028
	c.j	0000000023008D32

l23008D42:
	c.lw	s0,64(a4)
	c.add	a4,a5
	lbu	a3,a4,+00000000
	add	a4,s1,a5
	c.addi	a5,00000001
	sb	a3,a4,+00000001

l23008D54:
	c.lw	s0,68(a4)
	bltu	a5,a4,0000000023008D42

l23008D5A:
	sb	a4,s1,+00000000
	sw	s2,s1,+00000030
	c.lw	s0,80(a2)
	addi	a5,zero,+00000100
	bgeu	a5,a2,0000000023008D9A

l23008D6C:
	lui	a1,00023072
	lui	a0,0002307F
	addi	a2,zero,+0000030A
	addi	a1,a1,-000004EC
	addi	a0,a0,+00000514
	jal	ra,0000000023003AC6
	c.li	a0,FFFFFFEA

l23008D86:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23008D96:
	c.li	a0,FFFFFFF4
	c.j	0000000023008D86

l23008D9A:
	c.beqz	a2,0000000023008DA6

l23008D9C:
	c.lw	s0,76(a1)
	addi	a0,s1,+00000040
	jal	ra,000000002306CF80

l23008DA6:
	c.lw	s0,80(a5)
	sh	a5,s1,+00000036
	lui	a5,0004200D
	addi	a4,a5,+000002F4
	c.lw	a4,44(a3)
	lbu	a4,a4,+00000030
	addi	a5,a5,+000002F4
	sh	a3,s1,+00000038
	xori	a4,a4,+00000001
	sb	a4,s1,+0000003A
	lbu	a4,s0,+00000048
	c.li	a3,00000008
	bne	a4,a3,0000000023008DD6

l23008DD4:
	c.li	a4,00000000

l23008DD6:
	sb	a4,s1,+0000003B
	c.lw	a5,68(a5)
	sb	a5,s1,+0000003C
	c.li	a5,00000001
	sb	a5,s1,+00000140
	lbu	a2,s0,+0000009C
	c.beqz	a2,0000000023008DF8

l23008DEC:
	lw	a1,s0,+00000094
	addi	a0,s1,+00000141
	jal	ra,000000002306CF80

l23008DF8:
	lbu	a2,s0,+0000009D
	c.beqz	a2,0000000023008E0A

l23008DFE:
	lw	a1,s0,+00000098
	addi	a0,s1,+00000181
	jal	ra,000000002306CF80

l23008E0A:
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
	jal	zero,0000000023008420

;; bl_send_sm_disconnect_req: 23008E2A
;;   Called from:
;;     23007C58 (in bl_main_disconnect)
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
	jal	ra,000000002300858C
	c.beqz	a0,0000000023008E72

l23008E48:
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
	jal	zero,0000000023008420

l23008E72:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_mm_powersaving_req: 23008E80
;;   Called from:
;;     23007C6E (in bl_main_powersaving)
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
	jal	ra,000000002300858C
	c.beqz	a0,0000000023008EB6

l23008E9A:
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
	jal	zero,0000000023008420

l23008EB6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_mm_denoise_req: 23008EC2
;;   Called from:
;;     23007C7C (in bl_main_denoise)
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
	jal	ra,000000002300858C
	c.beqz	a0,0000000023008EF8

l23008EDC:
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
	jal	zero,0000000023008420

l23008EF8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_apm_start_req: 23008F04
;;   Called from:
;;     23007E8A (in bl_main_apm_start)
bl_send_apm_start_req proc
	c.addi16sp	FFFFFFC0
	c.swsp	s4,00000014
	c.mv	s4,a1
	lui	a1,00023072
	c.swsp	s1,00000098
	c.swsp	s3,00000094
	addi	a1,a1,-00000514
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
	jal	ra,000000002306CF80
	c.lui	a0,00002000
	addi	a2,zero,+000000A8
	c.li	a1,00000007
	addi	a0,a0,-00000400
	jal	ra,000000002300858C
	beq	a0,zero,0000000023009040

l23008F44:
	c.lwsp	a2,000000C4
	sb	zero,a0,+00000010
	c.li	a2,0000000D
	addi	a3,a4,-00000001
	c.mv	s0,a0
	c.lwsp	tp,00000008
	c.lwsp	s0,000000E4
	bltu	a2,a3,0000000023009032

l23008F5A:
	c.li	a3,0000000E
	beq	a4,a3,0000000023009038

l23008F60:
	c.li	a3,00000005
	add	a4,a4,a3
	c.lui	a3,00001000
	addi	a3,a3,-00000699
	c.add	a4,a3
	c.slli	a4,10
	c.srli	a4,00000010

l23008F72:
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
	jal	ra,000000002306D630
	c.li	a5,00000001
	sltu	a0,zero,a0
	sb	a5,s0,+00000034
	sb	a0,s0,+00000066
	c.mv	a0,s1
	jal	ra,000000002306D630
	c.mv	a2,a0
	c.mv	a1,s1
	addi	a0,s0,+00000045
	jal	ra,000000002306CF80
	c.mv	a0,s2
	jal	ra,000000002306D630
	c.mv	a2,a0
	c.mv	a1,s2
	addi	a0,s0,+00000067
	jal	ra,000000002306CF80
	c.mv	a0,s1
	jal	ra,000000002306D630
	c.li	a5,0000000C
	sb	a0,s0,+00000044
	sb	a5,s0,+00000035
	c.li	a2,0000000C
	c.addi4spn	a1,00000014
	addi	a0,s0,+00000036
	jal	ra,000000002306CF80
	addi	a5,zero,+00000101
	c.lui	a3,00002000
	sh	a5,s0,+00000042
	c.mv	a4,s4
	addi	a3,a3,-000003FF
	c.li	a2,00000001
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,0000000023008420

l23009022:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.addi16sp	00000040
	c.jr	ra

l23009032:
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	c.j	0000000023008F72

l23009038:
	c.lui	a4,00001000
	addi	a4,a4,-0000064C
	c.j	0000000023008F72

l23009040:
	c.li	a0,FFFFFFF4
	c.j	0000000023009022

;; bl_send_apm_stop_req: 23009044
;;   Called from:
;;     23007F1C (in bl_main_apm_stop)
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
	jal	ra,000000002300858C
	c.beqz	a0,0000000023009080

l23009062:
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
	jal	zero,0000000023008420

l23009080:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_apm_sta_del_req: 2300908E
;;   Called from:
;;     23008006 (in bl_main_apm_sta_delete)
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
	jal	ra,000000002300858C
	c.beqz	a0,00000000230090D4

l230090B0:
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
	jal	zero,0000000023008420

l230090D4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,FFFFFFF4
	c.addi16sp	00000020
	c.jr	ra

;; bl_send_apm_conf_max_sta_req: 230090E2
;;   Called from:
;;     2300807E (in bl_main_conf_max_sta)
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
	jal	ra,000000002300858C
	c.beqz	a0,000000002300911E

l23009100:
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
	jal	zero,0000000023008420

l2300911E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bl_send_cfg_task_req: 2300912C
;;   Called from:
;;     23008096 (in bl_main_cfg_task_req)
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
	jal	ra,000000002300858C
	c.beqz	a0,00000000230091F4

l23009154:
	c.sw	a0,0(s1)
	c.li	a3,00000002
	c.mv	s0,a0
	bltu	a3,s1,0000000023009182

l2300915E:
	c.lwsp	s0,000000E4
	c.lwsp	a2,000000C4
	c.beqz	s1,00000000230091C2

l23009164:
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
	jal	zero,0000000023008420

l23009182:
	c.li	a5,00000003
	beq	s1,a5,00000000230091E0

l23009188:
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.beqz	a5,00000000230091EE

l23009192:
	jal	ra,0000000023033B12

l23009196:
	lui	a3,00023072
	lui	a2,00023072
	c.mv	a1,a0
	lui	a0,00023072
	addi	a5,a3,+00000610
	addi	a6,zero,+0000040F
	addi	a4,zero,+0000040F
	addi	a3,a3,+00000610
	addi	a2,a2,+0000061C
	addi	a0,a0,+0000062C
	jal	ra,00000000230018FA

l230091C0:
	c.j	00000000230091C0

l230091C2:
	slli	a2,a4,00000010
	sw	s3,a0,+00000004
	sw	s2,a0,+00000008
	c.sw	a0,12(a4)
	c.mv	a3,a5
	c.srli	a2,00000010
	c.li	a1,00000008
	c.addi	a0,00000014
	jal	ra,0000000023044B40
	c.sw	s0,16(a0)
	c.j	0000000023009164

l230091E0:
	sw	s3,a0,+00000004
	sw	s2,a0,+00000008
	sw	zero,a0,+00000010
	c.j	0000000023009164

l230091EE:
	jal	ra,0000000023033AF0
	c.j	0000000023009196

l230091F4:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.li	a0,FFFFFFF4
	c.addi16sp	00000030
	c.jr	ra

;; bl_platform_on: 23009206
;;   Called from:
;;     230081D6 (in bl_main_rtthread_start)
bl_platform_on proc
	lui	a1,00042040
	c.addi	sp,FFFFFFF0
	addi	a4,a1,+00000000
	lui	a5,00042019
	addi	a1,a1,+00000000
	c.swsp	ra,00000084
	sw	a4,a5,+000005E0
	jal	ra,000000002300A34A
	c.bnez	a0,000000002300922C

l23009224:
	lui	a5,00044800
	c.li	a4,FFFFFFFF
	c.sw	a5,8(a4)

l2300922C:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; bl_rx_chan_pre_switch_ind: 23009232
bl_rx_chan_pre_switch_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_rssi_status_ind: 23009236
bl_rx_rssi_status_ind proc
	lui	a5,0004200E
	lw	a5,a5,+000000E8
	c.beqz	a5,000000002300925A

l23009240:
	lui	a4,0004200E
	lw	a0,a4,+000000EC
	lb	a1,a2,+0000000A
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.jalr	a5
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2300925A:
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_apm_sta_del_ind: 2300925E
bl_rx_apm_sta_del_ind proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	lui	a0,00023073
	addi	a0,a0,-000007DC
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a2
	jal	ra,0000000023003AC6
	lbu	a1,s0,+00000008
	lui	a0,00023073
	addi	a0,a0,-000007C4
	jal	ra,0000000023003AC6
	lbu	a0,s0,+00000008
	c.li	a5,0000000B
	bltu	a5,a0,00000000230092B8

l23009290:
	c.li	a5,0000001C
	add	a0,a0,a5
	c.add	s1,a0
	c.lui	a0,00001000
	c.add	a0,s1
	sb	zero,a0,+00000C98

l230092A0:
	lbu	a2,s0,+00000008
	c.li	a1,00000016
	c.li	a0,00000002
	jal	ra,0000000023002BF6
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l230092B8:
	lui	a0,00023073
	addi	a0,a0,-000007AC
	jal	ra,0000000023003AC6
	c.j	00000000230092A0

;; bl_rx_apm_sta_add_ind: 230092C6
bl_rx_apm_sta_add_ind proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	c.mv	s3,a0
	lui	a0,00023072
	addi	a0,a0,+00000784
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s0,a2
	c.swsp	s1,00000088
	jal	ra,0000000023003AC6
	c.lw	s0,8(a1)
	lui	a0,00023072
	addi	a0,a0,+0000079C
	jal	ra,0000000023003AC6
	lbu	a5,s0,+00000010
	lbu	a6,s0,+00000011
	lbu	a4,s0,+0000000F
	lbu	a3,s0,+0000000E
	lbu	a2,s0,+0000000D
	lbu	a1,s0,+0000000C
	lui	a0,00023072
	addi	a0,a0,+000007B4
	jal	ra,0000000023003AC6
	lbu	a1,s0,+00000012
	lui	a0,00023072
	addi	a0,a0,+000007E0
	jal	ra,0000000023003AC6
	lbu	a1,s0,+00000013
	lui	a0,00023073
	addi	a0,a0,-000007C4
	jal	ra,0000000023003AC6
	lbu	s2,s0,+00000013
	c.li	a5,0000000B
	bltu	a5,s2,00000000230093AC

l2300933E:
	c.li	a0,0000001C
	add	s2,s2,a0
	c.lui	s1,00001000
	addi	a0,s1,-00000370
	c.li	a2,00000006
	addi	a1,s0,+0000000C
	c.add	a0,s2
	c.add	a0,s3
	jal	ra,000000002306CF80
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

l23009390:
	lbu	a2,s0,+00000013
	c.li	a1,00000015
	c.li	a0,00000002
	jal	ra,0000000023002BF6
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l230093AC:
	lui	a0,00023072
	addi	a0,a0,+000007F8
	jal	ra,0000000023003AC6
	c.j	0000000023009390

;; notify_event_scan_done: 230093BA
;;   Called from:
;;     23009408 (in bl_rx_scanu_join_cfm)
;;     2300941A (in bl_rx_scanu_start_cfm)
notify_event_scan_done proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	a2,00000004
	c.mv	s0,a0
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	c.swsp	ra,0000008C
	jal	ra,000000002306D1BC
	c.li	a2,00000004
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,000000002306D1BC
	addi	a5,zero,+000000EC
	c.swsp	a5,00000084
	lui	a5,0004200E
	sltu	a0,zero,s0
	lw	a5,a5,+000000D4
	c.addi	a0,00000001
	c.swsp	a0,00000004
	c.beqz	a5,00000000230093FA

l230093EE:
	lui	a4,0004200E
	lw	a0,a4,+000000D8
	c.addi4spn	a1,00000008
	c.jalr	a5

l230093FA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; bl_rx_scanu_join_cfm: 23009402
bl_rx_scanu_join_cfm proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,00000000230093BA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_rx_scanu_start_cfm: 23009414
bl_rx_scanu_start_cfm proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,00000000230093BA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl_rx_chan_switch_ind: 23009426
bl_rx_chan_switch_ind proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	lbu	s0,a2,+00000008
	c.li	a1,00000000
	c.li	a2,00000004
	c.addi4spn	a0,00000008
	jal	ra,000000002306D1BC
	c.li	a2,00000004
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	jal	ra,000000002306D1BC
	lui	a5,0004200E
	lw	a5,a5,+000000D4
	c.swsp	zero,00000004
	c.swsp	s0,00000084
	c.beqz	a5,000000002300945E

l23009452:
	lui	a4,0004200E
	lw	a0,a4,+000000D8
	c.addi4spn	a1,00000008
	c.jalr	a5

l2300945E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; bl_rx_sm_connect_ind: 23009468
bl_rx_sm_connect_ind proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	ra,0000009C
	lhu	a3,a2,+00000008
	lui	a5,00023073
	addi	a4,a5,-000002AC
	addi	s3,a5,-000002AC
	c.mv	s1,a0
	c.mv	s0,a2
	c.li	s2,00000000
	c.li	a5,00000010

l2300948C:
	lhu	a2,a4,+00000000
	beq	a2,a3,000000002300949E

l23009494:
	c.addi	s2,00000001
	c.addi	a4,00000008
	bne	s2,a5,000000002300948C

l2300949C:
	c.li	s2,00000000

l2300949E:
	lui	a0,00023073
	addi	a0,a0,-00000758
	jal	ra,0000000023003AC6
	lhu	a1,s0,+00000008
	lui	a0,00023073
	addi	a0,a0,-0000073C
	c.slli	s2,03
	jal	ra,0000000023003AC6
	c.add	s2,s3
	lw	a1,s2,+00000004
	lui	a0,00023073
	addi	a0,a0,-00000724
	jal	ra,0000000023003AC6
	lbu	a5,s0,+0000000E
	lbu	a6,s0,+0000000F
	lbu	a4,s0,+0000000D
	lbu	a3,s0,+0000000C
	lbu	a2,s0,+0000000B
	lbu	a1,s0,+0000000A
	lui	a0,00023073
	addi	a0,a0,-00000708
	jal	ra,0000000023003AC6
	lbu	a1,s0,+00000011
	lui	a0,00023073
	addi	a0,a0,-000006DC
	jal	ra,0000000023003AC6
	lbu	a1,s0,+00000012
	lui	a0,00023073
	addi	a0,a0,-000006C8
	jal	ra,0000000023003AC6
	lbu	a1,s0,+00000013
	lui	a0,00023073
	addi	a0,a0,-000006B4
	jal	ra,0000000023003AC6
	lbu	a1,s0,+00000014
	lui	a0,00023073
	addi	a0,a0,-000006A0
	jal	ra,0000000023003AC6
	lbu	a1,s0,+00000015
	lui	a0,00023073
	addi	a0,a0,-00000690
	jal	ra,0000000023003AC6
	lhu	a1,s0,+00000016
	lui	a0,00023073
	addi	a0,a0,-00000680
	jal	ra,0000000023003AC6
	lhu	a1,s0,+00000018
	lui	a0,00023073
	addi	a0,a0,-00000660
	jal	ra,0000000023003AC6
	lhu	a1,s0,+0000033C
	lui	a0,00023073
	addi	a0,a0,-00000640
	jal	ra,0000000023003AC6
	lbu	a1,s0,+0000033E
	lui	a0,00023073
	addi	a0,a0,-00000630
	jal	ra,0000000023003AC6
	lhu	a1,s0,+00000340
	lui	a0,00023073
	addi	a0,a0,-0000061C
	jal	ra,0000000023003AC6
	lbu	a1,s0,+00000342
	lui	a0,00023073
	addi	a0,a0,-00000604
	jal	ra,0000000023003AC6
	lw	a1,s0,+00000344
	lui	a0,00023073
	addi	a0,a0,-000005F0
	jal	ra,0000000023003AC6
	lw	a1,s0,+00000348
	lui	a0,00023073
	addi	a0,a0,-000005D4
	jal	ra,0000000023003AC6
	lhu	a5,s0,+00000008
	c.bnez	a5,000000002300969E

l230095C8:
	lbu	a4,s0,+00000012
	c.lui	a5,00001000
	c.add	a5,s1
	sw	a4,a5,+00000E24
	c.li	a5,00000001
	c.sw	s1,0(a5)

l230095D8:
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,000000002306D1BC
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
	lw	a5,a5,+000000F0
	c.beqz	a5,000000002300964C

l23009640:
	lui	a4,0004200E
	lw	a0,a4,+000000F4
	c.mv	a1,sp
	c.jalr	a5

l2300964C:
	lhu	a5,s0,+00000008
	c.bnez	a5,000000002300968E

l23009652:
	lbu	a5,s0,+00000011
	addi	a4,zero,+000000C4
	c.li	a2,00000000
	add	a5,a5,a4
	addi	a1,a5,+00000360
	c.add	a1,s1
	c.beqz	a1,00000000230096A4

l23009668:
	c.add	s1,a5
	lw	a0,s1,+00000368
	c.beqz	a0,00000000230096A4

l23009670:
	lui	a1,0002303E
	addi	a1,a1,+00000324
	jal	ra,000000002303A4EC
	lw	a0,s1,+00000368
	lui	a1,0002303E
	c.li	a2,00000000
	addi	a1,a1,+00000212
	jal	ra,000000002303A4EC

l2300968E:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.li	a0,00000000
	c.addi16sp	00000040
	c.jr	ra

l2300969E:
	sw	zero,s1,+00000000
	c.j	00000000230095D8

l230096A4:
	lui	a0,00023073
	addi	a0,a0,-000005B8
	jal	ra,0000000023003AC6
	c.j	000000002300968E

;; bl_rx_sm_disconnect_ind: 230096B2
bl_rx_sm_disconnect_ind proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	lui	a0,00023073
	addi	a0,a0,-0000057C
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s0,a2
	jal	ra,000000002303D8E8
	lhu	a1,s0,+00000008
	c.swsp	a0,00000080
	lui	a0,00023073
	addi	a0,a0,-00000574
	jal	ra,0000000023003AC6
	lbu	a1,s0,+0000000A
	lui	a0,00023073
	addi	a0,a0,-00000544
	jal	ra,0000000023003AC6
	lbu	a1,s0,+0000000B
	lui	a0,00023073
	addi	a0,a0,-0000052C
	lui	s2,0004200E
	jal	ra,0000000023003AC6
	addi	s2,s2,+000000F8
	lw	a5,s2,+00000000
	c.beqz	a5,000000002300973C

l2300970C:
	c.li	a1,00000000
	c.li	a2,00000008
	c.addi4spn	a0,00000008
	jal	ra,000000002306D1BC
	lhu	a5,s0,+00000008
	lui	a4,0004200E
	lw	a0,a4,+000000FC
	sh	a5,sp,+00000008
	lbu	a5,s0,+0000000A
	c.addi4spn	a1,00000008
	sb	a5,sp,+0000000A
	lbu	a5,s0,+0000000B
	c.swsp	a5,00000084
	lw	a5,s2,+00000000
	c.jalr	a5

l2300973C:
	lbu	a5,s0,+0000000A
	addi	a4,zero,+000000C4
	add	a5,a5,a4
	addi	a4,a5,+00000360
	c.add	a4,s1
	c.beqz	a4,0000000023009774

l23009750:
	c.add	s1,a5
	lw	a0,s1,+00000368
	c.beqz	a0,0000000023009774

l23009758:
	lui	a1,0002303E
	c.li	a2,00000000
	addi	a1,a1,+00000368
	jal	ra,000000002303A4EC
	lw	a0,s1,+00000368
	c.addi4spn	a3,00000004
	c.mv	a2,a3
	c.mv	a1,a3
	jal	ra,000000002303A4B0

l23009774:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; bl_rx_scanu_result_ind: 23009782
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
	jal	ra,000000002306D1BC
	lhu	a5,s0,+00000024
	addi	a4,zero,+00000080
	andi	a5,a5,+000000FC
	bne	a5,a4,00000000230099F2

l230097B2:
	lui	s3,0004200E
	lw	a5,s3,+000000CC
	addi	s3,s3,+000000CC
	beq	a5,zero,0000000023009946

l230097C2:
	addi	a2,zero,+00000038
	c.li	a1,00000000
	c.addi4spn	a0,00000028
	jal	ra,000000002306D1BC
	lhu	s1,s0,+00000008
	addi	s4,s0,+00000048
	c.mv	s2,s4
	c.li	a5,00000000

l230097DA:
	bge	a5,s1,000000002300980C

l230097DE:
	lbu	a4,s2,+00000000
	lbu	a2,s2,+00000001
	bne	a4,zero,0000000023009958

l230097EA:
	addi	a5,zero,+00000020
	bltu	a5,a2,000000002300980C

l230097F2:
	addi	a1,s2,+00000002
	addi	a0,sp,+0000002E
	c.swsp	a2,000000AC
	jal	ra,000000002306CF80
	lbu	a5,s2,+00000001
	c.addi4spn	a4,00000060
	c.add	a5,a4
	sb	zero,a5,+00000FCE

l2300980C:
	lhu	a2,s0,+00000008
	c.mv	a5,s4
	c.li	a3,00000000
	c.li	a1,00000003

l23009816:
	bge	a3,a2,0000000023009836

l2300981A:
	lbu	a0,a5,+00000000
	lbu	a4,a5,+00000001
	bne	a0,a1,0000000023009960

l23009826:
	addi	a3,zero,+00000020
	bltu	a3,a4,0000000023009836

l2300982E:
	lbu	a5,a5,+00000002
	sb	a5,sp,+00000052

l23009836:
	lhu	a5,s0,+00000046
	c.andi	a5,00000010
	beq	a5,zero,00000000230099EC

l23009840:
	addi	s1,s1,-00000024
	c.slli	s1,10
	c.srli	s1,00000010
	c.mv	a1,s1
	addi	a2,zero,+00000030
	c.mv	a0,s4
	jal	ra,0000000023050BF4
	c.mv	a1,a0
	c.li	s2,00000000
	c.beqz	a0,0000000023009888

l2300985A:
	lbu	a5,sp,+00000059
	ori	a5,a5,+00000020
	sb	a5,sp,+00000059
	lbu	a2,a0,+00000001
	c.addi4spn	a0,00000008
	c.addi	a2,00000002
	andi	a2,a2,+000000FF
	jal	ra,000000002306CF80
	addi	a3,sp,+00000007
	c.addi4spn	a2,00000058
	addi	a1,sp,+00000057
	c.addi4spn	a0,00000008
	jal	ra,0000000023051DAC
	c.mv	s2,a0

l23009888:
	lui	a2,00023072
	c.mv	a1,s1
	c.li	a3,00000004
	addi	a2,a2,+00000740
	c.mv	a0,s4
	jal	ra,0000000023050C10
	c.mv	a1,a0
	c.beqz	a0,00000000230098CC

l2300989E:
	lbu	a5,sp,+00000059
	ori	a5,a5,+00000008
	sb	a5,sp,+00000059
	bne	s2,zero,00000000230098CC

l230098AE:
	lbu	a2,a0,+00000001
	c.addi4spn	a0,00000008
	c.addi	a2,00000002
	andi	a2,a2,+000000FF
	jal	ra,000000002306CF80
	addi	a2,sp,+00000056
	addi	a1,sp,+00000055
	c.addi4spn	a0,00000008
	jal	ra,0000000023052010

l230098CC:
	c.lwsp	s9,000000C4
	c.lui	a5,00003000
	addi	a5,a5,-00000800
	c.and	a4,a5
	bne	a4,a5,000000002300998A

l230098DA:
	lbu	a3,sp,+00000056
	lbu	a5,sp,+00000058
	c.or	a5,a3
	andi	a3,a5,+00000008
	c.andi	a5,00000004
	c.beqz	a5,0000000023009968

l230098EC:
	c.li	a5,00000003
	c.beqz	a3,00000000230098F2

l230098F0:
	c.li	a5,00000004

l230098F2:
	sb	a5,sp,+00000054
	c.lui	a5,00003000
	addi	a5,a5,-00000800
	bne	a4,a5,00000000230099D2

l23009900:
	c.li	a5,00000004

l23009902:
	sb	a5,sp,+00000053

l23009906:
	lbu	a5,s0,+00000020
	lui	a4,0004200E
	lw	a0,a4,+000000D0
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

l23009946:
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.lwsp	s1,00000198
	c.li	a0,00000000
	c.addi16sp	00000080
	c.jr	ra

l23009958:
	c.addi	a2,00000002
	c.add	a5,a2
	c.add	s2,a2
	c.j	00000000230097DA

l23009960:
	c.addi	a4,00000002
	c.add	a3,a4
	c.add	a5,a4
	c.j	0000000023009816

l23009968:
	c.beqz	a3,0000000023009900

l2300996A:
	c.lwsp	s5,000000A4
	lui	a5,00008001
	addi	a5,a5,-00000800
	c.and	a5,a3
	c.beqz	a5,000000002300997C

l23009978:
	c.li	a5,00000002
	c.j	00000000230098F2

l2300997C:
	lui	a5,00004000
	addi	a5,a5,+00000400
	c.and	a3,a5
	c.bnez	a3,00000000230098F0

l23009988:
	c.j	0000000023009978

l2300998A:
	lbu	a5,sp,+00000059
	andi	a3,a5,+00000008
	c.beqz	a3,00000000230099B2

l23009994:
	lbu	a5,sp,+00000056
	andi	a3,a5,+00000008
	c.andi	a5,00000004
	c.bnez	a5,00000000230098EC

l230099A0:
	c.beqz	a3,00000000230099D2

l230099A2:
	lbu	a5,sp,+00000055

l230099A6:
	andi	a3,a5,+00000008
	c.bnez	a3,0000000023009978

l230099AC:
	c.andi	a5,00000004
	c.bnez	a5,00000000230098F0

l230099B0:
	c.j	0000000023009978

l230099B2:
	andi	a5,a5,+00000020
	c.beqz	a5,00000000230099CC

l230099B8:
	lbu	a5,sp,+00000058
	andi	a3,a5,+00000008
	c.andi	a5,00000004
	c.bnez	a5,00000000230098EC

l230099C4:
	c.beqz	a3,00000000230099D2

l230099C6:
	lbu	a5,sp,+00000057
	c.j	00000000230099A6

l230099CC:
	c.li	a5,00000001
	sb	a5,sp,+00000054

l230099D2:
	lbu	a5,sp,+00000059
	andi	a4,a5,+00000020
	c.beqz	a4,00000000230099E0

l230099DC:
	c.li	a5,00000003
	c.j	0000000023009902

l230099E0:
	c.andi	a5,00000008
	c.beqz	a5,00000000230099E8

l230099E4:
	c.li	a5,00000002
	c.j	0000000023009902

l230099E8:
	c.li	a5,00000001
	c.j	0000000023009902

l230099EC:
	sb	zero,sp,+00000053
	c.j	0000000023009906

l230099F2:
	addi	a4,zero,+00000050
	bne	a5,a4,0000000023009A2E

l230099FA:
	lui	a0,00023073
	addi	a0,a0,-0000077C
	jal	ra,0000000023003AC6
	lui	a5,0004200E
	lw	a3,a5,+000000E4
	c.beqz	a3,0000000023009946

l23009A10:
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
	c.j	0000000023009946

l23009A2E:
	lui	a0,00023073
	addi	a0,a0,-00000768
	jal	ra,0000000023003AC6
	c.j	0000000023009946

;; bl_rx_mesh_path_update_ind: 23009A3C
bl_rx_mesh_path_update_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_mesh_proxy_update_ind: 23009A40
bl_rx_mesh_proxy_update_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_remain_on_channel_exp_ind: 23009A44
bl_rx_remain_on_channel_exp_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_ps_change_ind: 23009A48
bl_rx_ps_change_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_traffic_req_ind: 23009A4C
bl_rx_traffic_req_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_csa_counter_ind: 23009A50
bl_rx_csa_counter_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_csa_finish_ind: 23009A54
bl_rx_csa_finish_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_csa_traffic_ind: 23009A58
bl_rx_csa_traffic_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_channel_survey_ind: 23009A5C
bl_rx_channel_survey_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_dbg_error_ind: 23009A60
bl_rx_dbg_error_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_tdls_chan_switch_cfm: 23009A64
bl_rx_tdls_chan_switch_cfm proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_tdls_chan_switch_ind: 23009A68
bl_rx_tdls_chan_switch_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_tdls_chan_switch_base_ind: 23009A6C
bl_rx_tdls_chan_switch_base_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_tdls_peer_ps_ind: 23009A70
bl_rx_tdls_peer_ps_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_me_tkip_mic_failure_ind: 23009A74
bl_rx_me_tkip_mic_failure_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_me_tx_credits_update_ind: 23009A78
bl_rx_me_tx_credits_update_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_mesh_path_create_cfm: 23009A7C
bl_rx_mesh_path_create_cfm proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_mesh_peer_update_ind: 23009A80
bl_rx_mesh_peer_update_ind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_sm_connect_ind_cb_register: 23009A84
;;   Called from:
;;     23007BF6 (in wifi_mgmr_event_init)
bl_rx_sm_connect_ind_cb_register proc
	lui	a5,0004200E
	sw	a1,a5,+000000F0
	lui	a5,0004200E
	sw	a0,a5,+000000F4
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_sm_disconnect_ind_cb_register: 23009A98
;;   Called from:
;;     23007C04 (in wifi_mgmr_event_init)
bl_rx_sm_disconnect_ind_cb_register proc
	lui	a5,0004200E
	sw	a1,a5,+000000F8
	lui	a5,0004200E
	sw	a0,a5,+000000FC
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_beacon_ind_cb_register: 23009AAC
;;   Called from:
;;     23007C12 (in wifi_mgmr_event_init)
bl_rx_beacon_ind_cb_register proc
	lui	a5,0004200E
	sw	a1,a5,+000000CC
	lui	a5,0004200E
	sw	a0,a5,+000000D0
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_probe_resp_ind_cb_register: 23009AC0
;;   Called from:
;;     23007C20 (in wifi_mgmr_event_init)
bl_rx_probe_resp_ind_cb_register proc
	lui	a5,0004200E
	sw	a1,a5,+000000E4
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_pkt_cb_register: 23009ACC
;;   Called from:
;;     230075CE (in wifi_mgmr_sniffer_register)
bl_rx_pkt_cb_register proc
	lui	a5,0004200E
	sw	a1,a5,+000000DC
	lui	a5,0004200E
	sw	a0,a5,+000000E0
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_pkt_cb_unregister: 23009AE0
;;   Called from:
;;     230075DE (in wifi_mgmr_sniffer_unregister)
bl_rx_pkt_cb_unregister proc
	lui	a5,0004200E
	sw	zero,a5,+000000DC
	lui	a5,0004200E
	sw	zero,a5,+000000E0
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_rssi_cb_register: 23009AF4
;;   Called from:
;;     23007C2E (in wifi_mgmr_event_init)
bl_rx_rssi_cb_register proc
	lui	a5,0004200E
	sw	a1,a5,+000000E8
	lui	a5,0004200E
	sw	a0,a5,+000000EC
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_event_register: 23009B08
;;   Called from:
;;     23007C3C (in wifi_mgmr_event_init)
bl_rx_event_register proc
	lui	a5,0004200E
	sw	a1,a5,+000000D4
	lui	a5,0004200E
	sw	a0,a5,+000000D8
	c.li	a0,00000000
	c.jr	ra

;; bl_rx_e2a_handler: 23009B1C
;;   Called from:
;;     23050514 (in ke_msg_send)
bl_rx_e2a_handler proc
	lhu	a5,a0,+00000000
	c.mv	a1,a0
	lui	a0,00042018
	srli	a4,a5,0000000A
	slli	a3,a4,00000002
	lui	a4,00023073
	addi	a4,a4,-000002E0
	c.add	a4,a3
	c.lw	a4,0(a4)
	andi	a5,a5,+000003FF
	c.slli	a5,02
	c.add	a5,a4
	lui	a4,00042018
	lw	t1,a4,+00000798
	c.lw	a5,0(a2)
	addi	a0,a0,+00000774
	c.jr	t1

;; bl_rx_pkt_cb: 23009B52
;;   Called from:
;;     23009F9E (in tcpip_stack_input)
bl_rx_pkt_cb proc
	lui	a5,0004200E
	lw	t1,a5,+000000DC
	c.mv	a2,a1
	beq	t1,zero,0000000023009B6C

l23009B60:
	lui	a5,0004200E
	c.mv	a1,a0
	lw	a0,a5,+000000E0
	c.jr	t1

l23009B6C:
	c.jr	ra

;; bl_tx_push: 23009B6E
;;   Called from:
;;     23009C4C (in bl_tx_resend)
;;     23009C98 (in bl_tx_try_flush)
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
	jal	ra,000000002300A84A
	addi	s1,a0,+00000004
	c.mv	s3,a0
	c.bnez	s1,0000000023009BA2

l23009B92:
	lui	a0,00023073
	addi	a1,zero,+00000037
	addi	a0,a0,-00000118
	jal	ra,0000000023003AC6

l23009BA2:
	addi	a1,s0,+0000000C
	addi	s3,s3,+00000054

l23009BAA:
	c.addi	a1,00000001
	lbu	a5,a1,-00000001
	c.addi	s1,00000001
	sb	a5,s1,+00000FFF
	bne	s3,s1,0000000023009BAA

l23009BBA:
	lw	a0,s2,+00000034
	c.mv	a1,s4
	jal	ra,000000002300A888
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

;; bl_tx_resend: 23009BDE
;;   Called from:
;;     2300A92C (in ipc_host_irq)
bl_tx_resend proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042019
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	lui	s4,0004200E
	jal	ra,00000000230347A4
	lui	s3,0004200E
	lui	s5,0004200E
	addi	s1,s1,+000005E4

l23009C06:
	addi	s0,s4,+00000104
	c.lw	s0,0(a4)
	lw	a5,s3,+00000108
	beq	a4,a5,0000000023009C24

l23009C14:
	addi	s2,s5,-00000458
	lw	a5,s2,+00000000
	c.lw	a5,52(a0)
	jal	ra,000000002300A84A
	c.bnez	a0,0000000023009C38

l23009C24:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,00000000230347B8

l23009C38:
	c.lw	s0,0(a5)
	lw	a0,s2,+00000000
	c.andi	a5,00000007
	c.slli	a5,02
	c.add	a5,s1
	c.lw	a5,0(a4)
	sw	zero,a4,+00000004
	c.lw	a5,0(a1)
	jal	ra,0000000023009B6E
	c.lw	s0,0(a5)
	c.addi	a5,00000001
	c.sw	s0,0(a5)
	c.j	0000000023009C06

;; bl_tx_try_flush: 23009C58
;;   Called from:
;;     23008184 (in bl_main_event_handle)
bl_tx_try_flush proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lui	s1,0004200E
	jal	ra,00000000230347A4
	lui	s2,00042019

l23009C6E:
	addi	s0,s1,-00000458
	c.lw	s0,0(a5)
	c.lw	a5,52(a0)
	jal	ra,000000002300A84A
	c.beqz	a0,0000000023009C88

l23009C7C:
	addi	a0,s2,+00000604
	jal	ra,00000000230447B2
	c.mv	a1,a0
	c.bnez	a0,0000000023009C96

l23009C88:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,00000000230347B8

l23009C96:
	c.lw	s0,0(a0)
	jal	ra,0000000023009B6E
	c.j	0000000023009C6E

;; bl_txdatacfm: 23009C9E
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
	c.beqz	a5,0000000023009D08

l23009CB8:
	slli	a4,a5,0000000F
	c.mv	s1,a1
	bge	a4,zero,0000000023009D20

l23009CC2:
	lui	s2,0004200E
	addi	s2,s2,+00000108
	lw	a5,s2,+00000000
	lui	a4,0004200E
	lw	a4,a4,+00000104
	c.addi	a5,00000001
	c.xor	a5,a4
	c.andi	a5,00000007
	c.beqz	a5,0000000023009D14

l23009CDE:
	lui	a0,00023073
	addi	a0,a0,-00000100
	jal	ra,0000000023003A8A
	lw	a4,s2,+00000000
	lui	a5,00042019
	addi	a5,a5,+000005E4
	andi	a3,a4,+00000007
	c.slli	a3,02
	c.add	a5,a3
	c.addi	a4,00000001
	c.sw	a5,0(s0)
	sw	a4,s2,+00000000

l23009D06:
	c.li	a0,00000000

l23009D08:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23009D14:
	lui	a0,00023073
	addi	a0,a0,-000000F0
	jal	ra,0000000023003A8A

l23009D20:
	c.mv	a0,s1
	jal	ra,000000002303E536
	c.j	0000000023009D06

;; bl_tx_notify: 23009D28
;;   Called from:
;;     2300A91E (in ipc_host_irq)
bl_tx_notify proc
	lui	a5,0004200E
	lw	a0,a5,+00000100
	c.beqz	a0,0000000023009D3C

l23009D32:
	c.li	a3,00000000
	c.li	a2,00000002
	c.li	a1,00000000
	jal	zero,0000000023034A8C

l23009D3C:
	c.jr	ra

;; bl_output: 23009D3E
;;   Called from:
;;     2300A6A4 (in wifi_tx)
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
	c.beqz	a0,0000000023009D5A

l23009D52:
	lbu	a5,a1,+00000041
	c.andi	a5,00000004
	c.bnez	a5,0000000023009D7C

l23009D5A:
	lui	a0,00023073
	addi	a0,a0,-000001BC
	jal	ra,0000000023003AC6
	c.li	a0,FFFFFFF5

l23009D68:
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

l23009D7C:
	lui	s0,0004200E
	addi	s0,s0,+00000100
	c.lw	s0,0(a5)
	c.mv	s2,a0
	c.mv	s1,a2
	c.mv	s5,a3
	c.bnez	a5,0000000023009D94

l23009D8E:
	jal	ra,00000000230344BE
	c.sw	s0,0(a0)

l23009D94:
	lui	a5,0004200E
	addi	a1,zero,+00000080
	c.mv	a0,s1
	sw	s2,a5,+00000BA8
	lw	s3,s1,+00000004
	lhu	s4,s1,+00000008
	jal	ra,000000002303E512
	c.beqz	a0,0000000023009DC0

l23009DB0:
	lui	a0,00023073
	addi	a0,a0,-0000019C
	jal	ra,0000000023003AC6
	c.li	a0,FFFFFFF4
	c.j	0000000023009D68

l23009DC0:
	c.lw	s1,4(a5)
	addi	a2,zero,+0000005C
	c.li	a1,00000000
	sub	s0,zero,a5
	c.andi	s0,00000003
	c.add	s0,a5
	c.mv	a0,s0
	jal	ra,000000002306D1BC
	c.li	a2,00000006
	c.mv	a1,s3
	c.sw	s0,8(s1)
	addi	a0,s0,+0000001C
	jal	ra,000000002306CF80
	c.li	a2,00000006
	addi	a1,s3,+00000006
	addi	a0,s0,+00000022
	jal	ra,000000002306CF80
	c.sw	s0,12(s1)
	lbu	a5,s3,+0000000D
	lbu	a4,s3,+0000000C
	sb	zero,s0,+00000036
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s0,+00000028
	c.lui	a5,00001000
	c.add	a5,s2
	beq	s5,zero,0000000023009EB0

l23009E10:
	lbu	a5,a5,-000001E4

l23009E14:
	c.addi	s4,FFFFFFF2
	sb	a5,s0,+00000037
	sh	zero,s0,+0000003A
	sh	s4,s0,+00000014
	beq	s5,zero,0000000023009EB6

l23009E26:
	c.lui	a5,00001000
	c.add	s2,a5
	lw	a5,s2,-000001DC
	sb	a5,s0,+00000038

l23009E32:
	addi	s4,s0,+0000003C
	c.mv	s2,s1
	c.li	s3,00000000
	c.li	s5,00000004
	lui	s6,00023073

l23009E40:
	bne	s3,zero,0000000023009EC2

l23009E44:
	lw	a5,s2,+00000004
	addi	a5,a5,+0000008E
	c.sw	s0,60(a5)
	lhu	a5,s2,+0000000A
	addi	a5,a5,-0000008E
	c.sw	s0,76(a5)

l23009E58:
	lw	s2,s2,+00000000
	c.addi	s3,00000001
	c.addi	s4,00000004
	bne	s2,zero,0000000023009E40

l23009E64:
	c.li	a5,00000002
	bge	a5,s3,0000000023009E78

l23009E6A:
	lui	a0,00023073
	c.mv	a1,s3
	addi	a0,a0,-00000134
	jal	ra,0000000023003AC6

l23009E78:
	lui	a5,00011111
	addi	a5,a5,+00000111
	c.sw	s0,16(a5)
	addi	a5,s0,+00000004
	c.sw	s0,24(a5)
	c.mv	a0,s1
	sw	zero,s0,+00000004
	jal	ra,000000002303E7A2
	jal	ra,00000000230347A4
	lui	a0,00042019
	addi	a0,a0,+00000604
	c.mv	a1,s0
	jal	ra,000000002304479E
	jal	ra,00000000230347B8
	jal	ra,000000002305B290
	c.li	a0,00000000
	c.j	0000000023009D68

l23009EB0:
	lbu	a5,a5,-000001E0
	c.j	0000000023009E14

l23009EB6:
	c.mv	a1,s3
	c.mv	a0,s2
	c.jal	000000002300A2F8
	sb	a0,s0,+00000038
	c.j	0000000023009E32

l23009EC2:
	bne	s3,s5,0000000023009ED2

l23009EC6:
	lhu	a1,s1,+00000008
	addi	a0,s6,-00000174
	jal	ra,0000000023003AC6

l23009ED2:
	lw	a5,s2,+00000004
	sw	a5,s4,+00000000
	lhu	a5,s2,+0000000A
	sw	a5,s4,+00000010
	c.j	0000000023009E58

;; bl_radarind: 23009EE4
bl_radarind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_msgackind: 23009EE8
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

;; bl_prim_tbtt_ind: 23009EFA
bl_prim_tbtt_ind proc
	c.jr	ra

;; my_pbuf_free_custom: 23009EFC
my_pbuf_free_custom proc
	c.lw	a0,20(a0)
	jal	zero,000000002304891E

;; bl_dbgind: 23009F02
bl_dbgind proc
	c.li	a0,00000000
	c.jr	ra

;; bl_sec_tbtt_ind: 23009F06
bl_sec_tbtt_ind proc
	c.jr	ra

;; my_pbuf_free_custom_fake: 23009F08
my_pbuf_free_custom_fake proc
	c.jr	ra

;; tcpip_stack_input: 23009F0A
;;   Called from:
;;     2304C738 (in rxu_swdesc_upload_evt)
tcpip_stack_input proc
	c.andi	a1,00000001
	c.bnez	a1,0000000023009F12

l23009F0E:
	c.li	a0,FFFFFFFF
	c.jr	ra

l23009F12:
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
	bne	a5,a1,0000000023009F5C

l23009F3C:
	lui	a5,00042019
	lw	s2,a5,-00000538
	addi	a5,a5,-00000538

l23009F48:
	bne	s2,a5,0000000023009F50

l23009F4C:
	c.li	s2,00000000
	c.j	0000000023009F82

l23009F50:
	lbu	a1,s2,+0000006F
	c.bnez	a1,0000000023009F82

l23009F56:
	lw	s2,s2,+00000000
	c.j	0000000023009F48

l23009F5C:
	c.li	a1,00000001
	c.li	s2,00000000
	blt	a1,a5,0000000023009F82

l23009F64:
	addi	a1,zero,+000000C4
	add	a1,a5,a1
	lui	a5,00042018
	addi	a5,a5,+00000770
	addi	s2,a1,+00000360
	c.add	s2,a5
	c.add	a5,a1
	lbu	a5,a5,+000003CF
	c.beqz	a5,0000000023009F4C

l23009F82:
	c.lw	a2,48(a5)
	c.mv	s4,a4
	c.swsp	a0,00000094
	andi	a4,a5,+00000002
	c.mv	s6,a3
	c.mv	s0,a2
	c.beqz	a4,000000002300A020

l23009F92:
	lw	s1,s4,+00000000
	lhu	a1,a2,+00000000
	c.add	s1,a3
	c.mv	a0,s1
	jal	ra,0000000023009B52
	lhu	a1,s1,+00000000
	addi	a5,zero,+00000080
	andi	a4,a1,+000000FC
	beq	a4,a5,000000002300A01C

l23009FB2:
	addi	a5,a4,-000000A0
	andi	a5,a5,-00000021
	c.slli	a5,10
	c.srli	a5,00000010
	c.bnez	a5,0000000023009FD0

l23009FC0:
	lhu	a5,s1,+00000018
	c.li	a3,00000001
	c.addi	a5,FFFFFFFA
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	a3,a5,000000002300A01C

l23009FD0:
	addi	a5,zero,+000000D0
	bne	a4,a5,0000000023009FE2

l23009FD8:
	lbu	a4,s1,+00000018
	c.li	a5,00000006
	beq	a4,a5,000000002300A01C

l23009FE2:
	andi	a5,a1,+0000000C
	c.li	a4,00000008
	beq	a5,a4,000000002300A01C

l23009FEC:
	andi	a5,a1,+0000008C
	addi	a4,zero,+00000088
	bne	a5,a4,000000002300A01C

l23009FF8:
	lbu	a7,s1,+00000009
	lbu	a6,s1,+00000008
	lbu	a5,s1,+00000007
	lbu	a4,s1,+00000006
	lbu	a3,s1,+00000005
	lbu	a2,s1,+00000004
	lui	a0,00023073
	addi	a0,a0,+00000020
	jal	ra,0000000023003AC6

l2300A01C:
	c.li	a0,FFFFFFFF
	c.j	000000002300A1A0

l2300A020:
	lbu	a3,a2,+00000032
	addi	a4,zero,+000000FF
	beq	a3,a4,000000002300A042

l2300A02C:
	c.andi	a5,00000004
	c.beqz	a5,000000002300A042

l2300A030:
	lbu	a5,s2,+00000070
	c.bnez	a5,000000002300A042

l2300A036:
	lui	a0,00023073
	addi	a0,a0,+00000054
	jal	ra,0000000023003AC6

l2300A042:
	jal	ra,000000002300702E
	c.beqz	a0,000000002300A12A

l2300A048:
	lb	s1,s0,+0000001A
	lb	a4,s0,+00000019
	lui	s5,0004200E
	c.slli	s1,10
	c.srli	s1,00000010
	c.slli	s1,08
	c.or	s1,a4
	jal	ra,0000000023033AF0
	lui	a5,0004200E
	lw	a4,a5,+00000114
	c.slli	s1,10
	addi	s3,a5,+00000114
	c.sub	a0,a4
	c.lui	a4,00001000
	lui	a5,0004200E
	addi	a4,a4,-00000060
	c.srli	s1,00000010
	addi	s5,s5,+00000118
	addi	a5,a5,+0000010C
	bge	a4,a0,000000002300A090

l2300A088:
	sw	zero,s5,+00000000
	sw	zero,a5,+00000000

l2300A090:
	lw	a4,s5,+00000000
	srli	s7,s1,00000004
	andi	s11,s1,+0000000F
	c.addi	a4,00000001
	sw	a4,s5,+00000000
	jal	ra,0000000023033AF0
	lhu	a4,s0,+00000012
	lui	a5,0004200E
	sw	a0,s3,+00000000
	c.andi	a4,00000007
	c.li	a3,00000001
	andi	s7,s7,+0000001F
	srli	a7,s1,00000009
	lhu	s9,s0,+00000000
	lb	s10,s0,+00000017
	addi	a5,a5,+0000010C
	bgeu	a3,a4,000000002300A1C0

l2300A0CE:
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
	jal	ra,000000002306CA0C
	c.lwsp	s4,00000138
	c.lwsp	a6,00000194
	c.swsp	a0,00000004
	lui	a0,00023073
	c.swsp	a1,00000084
	c.swsp	s8,00000080
	c.swsp	s3,00000000
	c.mv	a6,s7
	c.mv	a5,s11
	c.mv	a4,s1
	c.mv	a3,s10
	c.mv	a1,s9
	addi	a0,a0,+0000007C

l2300A126:
	jal	ra,0000000023003AC6

l2300A12A:
	beq	s2,zero,000000002300A2E6

l2300A12E:
	lw	a3,s4,+00000010
	c.li	a2,00000018
	c.li	a1,00000000
	c.mv	a0,a3
	c.swsp	a3,00000018
	jal	ra,000000002306D1BC
	c.lwsp	a6,000001B4
	lui	a5,0002300A
	addi	a5,a5,-00000104
	c.sw	a3,16(a5)
	c.lwsp	a2,000001F4
	addi	a2,zero,+00000041
	c.li	a0,00000000
	c.sw	a3,20(a5)
	lhu	a5,s4,+00000020
	lw	a4,s4,+00000000
	lui	s3,0002300A
	sub	a5,a5,s6
	c.slli	a5,10
	c.srli	a5,00000010
	c.add	a4,s6
	c.mv	a1,a5
	jal	ra,000000002303E498
	addi	s0,s4,+00000022
	addi	s1,s4,+00000004
	c.mv	s5,a0
	addi	s4,s4,+00000028
	addi	s3,s3,-000000F8

l2300A182:
	lhu	a5,s0,+00000000
	bne	a5,zero,000000002300A2AE

l2300A18A:
	lw	a1,s2,+00000008
	beq	a1,zero,000000002300A01C

l2300A192:
	c.lw	a1,16(a5)
	c.mv	a0,s5
	c.jalr	a5
	sltu	a0,zero,a0
	sub	a0,zero,a0

l2300A1A0:
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

l2300A1C0:
	c.lw	s0,12(a3)
	lw	s8,s5,+00000000
	c.li	a2,00000003
	c.srli	a3,0000000C
	c.andi	a3,0000000F
	lbu	a4,s0,+0000001F
	lw	s3,a5,+00000000
	fcvt.s.wu	fs0,s8
	bgeu	a2,a3,000000002300A22C

l2300A1DC:
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
	jal	ra,000000002306CA0C
	c.lwsp	a6,000001D4
	c.swsp	a0,00000004
	lui	a0,00023073
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
	addi	a0,a0,+000000E8
	c.j	000000002300A126

l2300A22C:
	slli	s5,a4,00000018
	srai	s5,s5,00000018
	sub	s5,zero,s5
	c.slli	s5,10
	srai	s5,s5,00000010
	c.mv	a0,s5
	c.swsp	a7,0000009C
	c.swsp	a4,0000001C
	jal	ra,000000002306C8DC
	lui	a3,00023073
	lw	a2,a3,+00000018
	lw	a3,a3,+0000001C
	jal	ra,000000002306B444
	jal	ra,000000002306C718
	c.add	s3,a0
	fcvt.s.w	fa0,s3
	c.lw	s0,36(a3)
	lui	a5,0004200E
	fdiv.s	fa0,fa0,fs0
	addi	a5,a5,+0000010C
	c.srli	a3,00000008
	sw	s3,a5,+00000000
	c.andi	a3,00000001
	c.swsp	a3,00000018
	c.swsp	a0,00000098
	jal	ra,000000002306CA0C
	c.lwsp	s4,00000194
	c.lwsp	s8,000001D4
	c.lwsp	t3,00000138
	c.lwsp	a6,000001B4
	c.swsp	a0,00000008
	lui	a0,00023073
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
	addi	a0,a0,+00000154
	jal	ra,0000000023003AC6
	c.j	000000002300A12A

l2300A2AE:
	c.lw	s1,16(a3)
	c.li	a2,00000018
	c.li	a1,00000000
	c.mv	a0,a3
	c.swsp	a3,00000094
	jal	ra,000000002306D1BC
	c.lwsp	a2,000001B4
	addi	a2,zero,+00000041
	c.li	a0,00000000
	sw	s3,a3,+00000010
	lhu	a5,s0,+00000000
	c.lw	s1,0(a4)
	c.addi	s0,00000002
	c.mv	a1,a5
	jal	ra,000000002303E498
	c.mv	a1,a0
	c.mv	a0,s5
	jal	ra,000000002303E7C6
	c.addi	s1,00000004
	bne	s0,s4,000000002300A182

l2300A2E4:
	c.j	000000002300A18A

l2300A2E6:
	lbu	a1,s0,+00000031
	lui	a0,00023073
	addi	a0,a0,+000001D0
	jal	ra,0000000023003AC6
	c.j	000000002300A01C

;; bl_utils_idx_lookup: 2300A2F8
;;   Called from:
;;     23009EBA (in bl_output)
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

l2300A312:
	lbu	a5,s0,+00000008
	c.bnez	a5,000000002300A32E

l2300A318:
	c.addi	s1,00000001
	c.addi	s0,0000001C
	bne	s1,s3,000000002300A312

l2300A320:
	lui	a5,00042019
	addi	a5,a5,+00000770
	lw	s1,a5,-000001D8
	c.j	000000002300A33A

l2300A32E:
	c.li	a2,00000006
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002306CEF8
	c.bnez	a0,000000002300A318

l2300A33A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; bl_ipc_init: 2300A34A
;;   Called from:
;;     2300921E (in bl_platform_on)
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
	jal	ra,000000002306D1BC
	lui	a5,0002300A
	addi	a5,a5,-0000011C
	c.swsp	a5,00000004
	lui	a5,0002300A
	addi	a5,a5,-00000118
	c.swsp	a5,00000008
	lui	a5,0002300A
	addi	a5,a5,-000000FE
	c.swsp	a5,00000088
	lui	a5,0002300A
	addi	a5,a5,-00000362
	c.swsp	a5,00000000
	lui	a5,0002300A
	addi	a5,a5,-00000106
	c.swsp	a5,0000000C
	lui	a5,0002300A
	addi	a5,a5,-000000FA
	addi	a0,zero,+000000E4
	c.swsp	a5,0000008C
	c.swsp	zero,00000080
	c.swsp	zero,00000084
	jal	ra,000000002303598A
	c.sw	s0,52(a0)
	lui	a4,0004200E
	c.mv	a3,s0
	c.mv	a2,s1
	c.mv	a1,sp
	sw	a0,a4,+00000110
	c.jal	000000002300A778
	addi	a0,s0,+00000004
	jal	ra,000000002300ADC6
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.li	a0,00000000
	c.addi16sp	00000030
	c.jr	ra

;; bl_utils_dump: 2300A3D0
;;   Called from:
;;     23050200 (in bl_fw_statistic_dump)
bl_utils_dump proc
	c.addi	sp,FFFFFFE0
	lui	a0,00023073
	c.swsp	s1,00000088
	addi	a0,a0,-000000D0
	lui	s1,0004200E
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	addi	s0,s1,+00000110
	c.swsp	s3,00000084
	jal	ra,0000000023003A8A
	c.lw	s0,0(a5)
	lui	a0,00023073
	addi	a0,a0,-000000A8
	c.lw	a5,64(a1)
	addi	s1,s1,+00000110
	lui	s3,00023073
	andi	a2,a1,+00000003
	jal	ra,0000000023003AC6
	c.lw	s0,0(a5)
	lui	a0,00023073
	addi	a0,a0,-0000008C
	c.lw	a5,68(a1)
	c.li	s2,00000004
	andi	a2,a1,+00000003
	jal	ra,0000000023003AC6
	c.lw	s0,0(a5)
	lui	a0,00023073
	c.li	a1,00000004
	c.lw	a5,64(a2)
	c.lw	a5,68(a5)
	addi	a0,a0,-00000070
	c.li	s0,00000000
	c.sub	a2,a5
	jal	ra,0000000023003AC6
	lui	a0,00023073
	addi	a0,a0,-00000050
	jal	ra,0000000023003A8A

l2300A446:
	c.lw	s1,0(a5)
	c.lw	a5,68(a1)
	c.lw	a5,64(a4)
	c.add	a1,s0
	beq	a1,a4,000000002300A47A

l2300A452:
	c.andi	a1,00000003
	addi	a4,a1,+00000010
	c.slli	a4,02
	c.add	a5,a4
	c.lw	a5,8(a2)
	addi	a0,s3,-00000028
	c.addi	s0,00000001
	c.lw	a2,4(a4)
	sub	a5,zero,a4
	c.andi	a5,00000003
	c.add	a5,a4
	c.lw	a5,4(a4)
	c.lw	a5,24(a3)
	jal	ra,0000000023003AC6
	bne	s0,s2,000000002300A446

l2300A47A:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,00023073
	addi	a0,a0,-00000010
	c.addi16sp	00000020
	jal	zero,0000000023003A8A

;; goToErrorState: 2300A492
;;   Called from:
;;     2300A4D8 (in stateM_handleEvent)
goToErrorState proc
	c.lw	a0,0(a5)
	c.sw	a0,4(a5)
	c.lw	a0,8(a5)
	c.sw	a0,0(a5)
	c.beqz	a5,000000002300A4A8

l2300A49C:
	lw	t1,a5,+00000014
	beq	t1,zero,000000002300A4A8

l2300A4A4:
	c.lw	a5,16(a0)
	c.jr	t1

l2300A4A8:
	c.jr	ra

;; stateM_init: 2300A4AA
;;   Called from:
;;     23004FF0 (in wifi_mgmr_start)
stateM_init proc
	c.beqz	a0,000000002300A4B4

l2300A4AC:
	c.sw	a0,0(a1)
	sw	zero,a0,+00000004
	c.sw	a0,8(a2)

l2300A4B4:
	c.jr	ra

;; stateM_handleEvent: 2300A4B6
;;   Called from:
;;     23005100 (in wifi_mgmr_start)
stateM_handleEvent proc
	c.beqz	a0,000000002300A58C

l2300A4B8:
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
	c.beqz	a1,000000002300A4DE

l2300A4CE:
	c.lw	s0,0(s1)
	c.mv	s2,a1
	c.bnez	s1,000000002300A4F0

l2300A4D4:
	c.mv	a0,s0
	c.mv	a1,s2
	jal	ra,000000002300A492
	c.li	a0,FFFFFFFF

l2300A4DE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2300A4F0:
	c.lw	s1,12(a5)
	c.li	s5,00000014
	c.bnez	a5,000000002300A4FA

l2300A4F6:
	c.li	a0,00000002
	c.j	000000002300A4DE

l2300A4FA:
	c.li	s4,00000000

l2300A4FC:
	c.lw	s1,12(a5)
	bltu	s4,a5,000000002300A508

l2300A502:
	c.lw	s1,0(s1)
	c.bnez	s1,000000002300A4FA

l2300A506:
	c.j	000000002300A4F6

l2300A508:
	add	s3,s4,s5
	c.lw	s1,8(a5)
	c.add	s3,a5
	lw	a4,s3,+00000000
	lw	a5,s2,+00000000
	beq	a4,a5,000000002300A520

l2300A51C:
	c.addi	s4,00000001
	c.j	000000002300A4FC

l2300A520:
	lw	a5,s3,+00000008
	c.beqz	a5,000000002300A530

l2300A526:
	lw	a0,s3,+00000004
	c.mv	a1,s2
	c.jalr	a5
	c.beqz	a0,000000002300A51C

l2300A530:
	lw	s1,s3,+00000010
	c.bnez	s1,000000002300A53A

l2300A536:
	c.j	000000002300A4D4

l2300A538:
	c.mv	s1,a5

l2300A53A:
	c.lw	s1,4(a5)
	c.bnez	a5,000000002300A538

l2300A53E:
	c.lw	s0,0(a5)
	beq	a5,s1,000000002300A54E

l2300A544:
	c.lw	a5,24(a4)
	c.beqz	a4,000000002300A54E

l2300A548:
	c.lw	a5,16(a0)
	c.mv	a1,s2
	c.jalr	a4

l2300A54E:
	lw	a5,s3,+0000000C
	c.beqz	a5,000000002300A55E

l2300A554:
	c.lw	s0,0(a4)
	c.lw	s1,16(a2)
	c.mv	a1,s2
	c.lw	a4,16(a0)
	c.jalr	a5

l2300A55E:
	c.lw	s0,0(a5)
	beq	a5,s1,000000002300A56E

l2300A564:
	c.lw	s1,20(a5)
	c.beqz	a5,000000002300A56E

l2300A568:
	c.lw	s1,16(a0)
	c.mv	a1,s2
	c.jalr	a5

l2300A56E:
	c.lw	s0,0(a5)
	c.sw	s0,0(s1)
	c.li	a0,00000001
	c.sw	s0,4(a5)
	beq	a5,s1,000000002300A4DE

l2300A57A:
	c.lw	s0,8(a5)
	c.li	a0,FFFFFFFF
	beq	a5,s1,000000002300A4DE

l2300A582:
	c.lw	s1,12(a5)
	c.li	a0,00000000
	c.bnez	a5,000000002300A4DE

l2300A588:
	c.li	a0,00000003
	c.j	000000002300A4DE

l2300A58C:
	c.li	a0,FFFFFFFE
	c.jr	ra

;; netif_status_callback: 2300A590
netif_status_callback proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	addi	s1,a0,+00000004
	c.swsp	s0,0000000C
	c.mv	s0,a0
	c.mv	a0,s1
	c.swsp	ra,0000008C
	jal	ra,000000002303D99C
	c.mv	a1,a0
	lui	a0,00023073
	addi	a0,a0,+0000028C
	jal	ra,0000000023003AC6
	addi	a0,s0,+00000008
	jal	ra,000000002303D99C
	c.mv	a1,a0
	lui	a0,00023073
	addi	a0,a0,+000002B8
	jal	ra,0000000023003AC6
	addi	a0,s0,+0000000C
	jal	ra,000000002303D99C
	c.mv	a1,a0
	lui	a0,00023073
	addi	a0,a0,+000002C4
	jal	ra,0000000023003AC6
	c.beqz	s1,000000002300A5E4

l2300A5E0:
	c.lw	s0,4(a5)
	c.bnez	a5,000000002300A5F8

l2300A5E4:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	lui	a0,00023073
	addi	a0,a0,+000002D0
	c.addi16sp	00000020
	jal	zero,0000000023003AC6

l2300A5F8:
	jal	ra,0000000023005712
	c.lw	s0,8(a1)
	c.lw	s0,12(a2)
	c.li	a0,00000000
	c.lw	s0,4(s1)
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	jal	ra,000000002303AE4E
	c.lw	a0,0(a3)
	c.li	a0,00000001
	c.swsp	a3,00000080
	jal	ra,000000002303AE4E
	c.lwsp	s8,00000004
	c.lw	a0,0(a4)
	c.lwsp	tp,000000A4
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,00000000230055FE

;; wifi_tx: 2300A62C
wifi_tx proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lhu	a3,a1,+00000008
	addi	a4,zero,+000005EA
	c.mv	a2,a1
	c.mv	a5,a1
	bgeu	a4,a3,000000002300A68C

l2300A644:
	lui	s0,0004200E
	c.swsp	a1,00000084
	addi	s0,s0,+00000120
	jal	ra,0000000023033AF0
	c.lw	s0,0(a5)
	c.li	s1,FFFFFFF4
	c.lwsp	a2,00000084
	c.sub	a0,a5
	addi	a5,zero,+000007D0
	bgeu	a5,a0,000000002300A680

l2300A662:
	lhu	a2,a2,+00000008
	lui	a1,00023082
	lui	a0,00023073
	addi	a1,a1,+000006C4
	addi	a0,a0,+000002F8
	jal	ra,0000000023003AC6
	jal	ra,0000000023033AF0
	c.sw	s0,0(a0)

l2300A680:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2300A68C:
	c.lw	a5,0(a5)
	c.bnez	a5,000000002300A68C

l2300A690:
	lw	a3,a0,-00000020
	lui	a5,0004200E
	c.mv	a1,a0
	lw	a0,a5,+0000011C
	sltiu	a3,a3,+00000001
	c.li	s1,00000000
	jal	ra,0000000023009D3E
	c.j	000000002300A680

;; bl606a0_wifi_netif_init: 2300A6AA
bl606a0_wifi_netif_init proc
	c.addi	sp,FFFFFFF0
	lui	a4,00023073
	c.swsp	ra,00000084
	addi	a4,a4,+00000284
	c.sw	a0,52(a4)
	addi	a4,zero,+000005DC
	sh	a4,a0,+00000038
	c.lui	a4,00001000
	addi	a4,a4,-000005FA
	sh	a4,a0,+00000040
	lui	a4,0002303D
	addi	a4,a4,-000004AA
	c.sw	a0,20(a4)
	lui	a4,0002300A
	addi	a4,a4,+0000062C
	lui	a1,0002300A
	c.sw	a0,24(a4)
	addi	a1,a1,+00000590
	jal	ra,000000002303E31E
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bl606a0_wifi_init: 2300A6F2
;;   Called from:
;;     230070AE (in wifi_mgmr_drv_init)
bl606a0_wifi_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.mv	s0,a0
	lui	a0,00023073
	addi	a0,a0,+00000200
	c.swsp	ra,0000008C
	jal	ra,0000000023003AC6
	c.li	a2,00000006
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	jal	ra,000000002306D1BC
	c.addi4spn	a0,00000008
	jal	ra,0000000023036ED4
	lbu	a6,sp,+0000000D
	lbu	a5,sp,+0000000C
	lbu	a4,sp,+0000000B
	lbu	a3,sp,+0000000A
	lbu	a2,sp,+00000009
	lbu	a1,sp,+00000008
	lui	a0,00023073
	addi	a0,a0,+00000218
	jal	ra,0000000023003AC6
	c.mv	a0,s0
	jal	ra,00000000230085F0
	lui	a0,00023073
	addi	a0,a0,+0000024C
	jal	ra,0000000023003AC6
	jal	ra,0000000023036E40
	lui	s0,0004200E
	c.li	a2,00000004
	c.li	a1,00000000
	addi	a0,s0,+0000011C
	jal	ra,000000002306D1BC
	addi	a0,s0,+0000011C
	jal	ra,0000000023008194
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; ipc_emb2app_rawstatus_get: 2300A770
;;   Called from:
;;     2300A846 (in ipc_host_get_rawstatus)
ipc_emb2app_rawstatus_get proc
	lui	a5,00044800
	c.lw	a5,4(a0)
	c.jr	ra

;; ipc_host_init: 2300A778
;;   Called from:
;;     2300A3BA (in bl_ipc_init)
ipc_host_init proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004200E
	c.swsp	s3,00000084
	c.mv	s3,a1
	lw	a1,a5,-00000368
	lui	a5,0004200E
	c.swsp	s1,00000088
	c.mv	s1,a2
	lw	a2,a5,-00000454
	c.swsp	s0,0000000C
	c.mv	s0,a0
	lui	a0,00023073
	c.swsp	s2,00000008
	addi	a0,a0,+00000320
	c.mv	s2,a3
	add	a3,a1,a2
	c.swsp	ra,0000008C
	jal	ra,0000000023003AC6
	lui	a0,00042019
	addi	a0,a0,+00000604
	jal	ra,0000000023044794
	addi	a2,zero,+000000E4
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002306D1BC
	c.mv	a1,s3
	c.sw	s0,32(s1)
	addi	a2,zero,+00000020
	c.mv	a0,s0
	jal	ra,000000002306CF80
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
	jal	zero,000000002306D1BC

;; ipc_host_msg_push: 2300A816
;;   Called from:
;;     2300ABB2 (in cmd_mgr_llind)
;;     2300ACCC (in cmd_mgr_queue)
ipc_host_msg_push proc
	c.lw	a1,12(a3)
	c.lw	a0,32(a4)
	c.li	a5,00000000

l2300A81C:
	blt	a5,a2,000000002300A830

l2300A820:
	sw	a1,a0,+000000B0
	lui	a5,00044800
	c.li	a4,00000002
	c.sw	a5,0(a4)
	c.li	a0,00000000
	c.jr	ra

l2300A830:
	add	a6,a3,a5
	lw	a7,a6,+00000000
	add	a6,a4,a5
	c.addi	a5,00000004
	sw	a7,a6,+00000004
	c.j	000000002300A81C

;; ipc_host_get_rawstatus: 2300A844
;;   Called from:
;;     2300AE32 (in bl_irq_bottomhalf)
;;     2300AE58 (in bl_irq_bottomhalf)
;;     2300AE74 (in bl_irq_bottomhalf)
ipc_host_get_rawstatus proc
	c.lw	a0,32(a0)
	jal	zero,000000002300A770

;; ipc_host_txdesc_get: 2300A84A
;;   Called from:
;;     23009B86 (in bl_tx_push)
;;     23009C1E (in bl_tx_resend)
;;     23009C76 (in bl_tx_try_flush)
ipc_host_txdesc_get proc
	c.lw	a0,68(a4)
	c.lw	a0,64(a5)
	bgeu	a5,a4,000000002300A860

l2300A852:
	lui	a3,0004200E
	addi	a3,a3,+00000124
	c.lw	a3,0(a2)
	c.addi	a2,00000001
	c.sw	a3,0(a2)

l2300A860:
	addi	a3,a4,+00000004
	beq	a3,a5,000000002300A884

l2300A868:
	sub	a4,a5,a4
	c.li	a3,00000004
	c.lw	a0,92(a0)
	bltu	a3,a4,000000002300A882

l2300A874:
	addi	a4,zero,+00000330
	c.andi	a5,00000003
	add	a5,a5,a4
	c.add	a0,a5
	c.jr	ra

l2300A882:
	c.j	000000002300A882

l2300A884:
	c.li	a0,00000000
	c.jr	ra

;; ipc_host_txdesc_push: 2300A888
;;   Called from:
;;     23009BC0 (in bl_tx_push)
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

;; ipc_host_irq: 2300A8B6
;;   Called from:
;;     2300AE6E (in bl_irq_bottomhalf)
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
	c.beqz	a5,000000002300A92C

l2300A8DA:
	lui	s3,00023073
	addi	s3,s3,+00000360
	c.li	s4,00000007
	c.li	s6,00000001
	c.li	s5,0000000B

l2300A8E8:
	sll	a5,s6,s4
	c.and	a5,s1
	c.beqz	a5,000000002300A924

l2300A8F0:
	lw	a5,s3,+00000000
	lw	s2,s0,+00000044
	and	s2,s2,a5
	c.lw	s0,88(a5)
	c.slli	s2,02
	c.add	a5,s2
	c.lw	a5,0(a1)
	c.beqz	a1,000000002300A924

l2300A906:
	c.lw	s0,0(a5)
	lw	a0,s0,+000000E0
	c.jalr	a5
	c.bnez	a0,000000002300A924

l2300A910:
	c.lw	s0,88(a5)
	c.add	s2,a5
	sw	zero,s2,+00000000
	c.lw	s0,68(a5)
	c.addi	a5,00000001
	c.sw	s0,68(a5)
	jal	ra,0000000023009D28
	c.j	000000002300A8F0

l2300A924:
	c.addi	s4,00000001
	c.addi	s3,00000004
	bne	s4,s5,000000002300A8E8

l2300A92C:
	jal	ra,0000000023009BDE
	andi	a5,s1,+00000004
	c.beqz	a5,000000002300A950

l2300A936:
	lbu	a5,s0,+000000AC
	lw	a1,s0,+000000B0
	lw	a0,s0,+000000E0
	c.addi	a5,00000001
	sb	a5,s0,+000000AC
	c.lw	s0,16(a5)
	sw	zero,s0,+000000B0
	c.jalr	a5

l2300A950:
	andi	a5,s1,+00000001
	c.beqz	a5,000000002300A96C

l2300A956:
	lbu	a5,s0,+000000D4
	c.lw	s0,20(a4)
	lw	a0,s0,+000000E0
	c.addi	a5,00000016
	c.slli	a5,03
	c.add	a5,s0
	c.lw	a5,4(a1)
	c.jalr	a4
	c.beqz	a0,000000002300A956

l2300A96C:
	andi	a5,s1,+00000010
	c.beqz	a5,000000002300A97A

l2300A972:
	c.lw	s0,24(a5)
	lw	a0,s0,+000000E0
	c.jalr	a5

l2300A97A:
	andi	s1,s1,+00000020
	c.beqz	s1,000000002300A99C

l2300A980:
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

l2300A99C:
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

;; ipc_host_enable_irq: 2300A9B0
;;   Called from:
;;     230081FE (in bl_main_rtthread_start)
;;     2300AE52 (in bl_irq_bottomhalf)
ipc_host_enable_irq proc
	lui	a5,00044800
	c.sw	a5,12(a1)
	c.jr	ra

;; ipc_host_disable_irq_e2a: 2300A9B8
;;   Called from:
;;     2305B294 (in bl_irq_handler)
ipc_host_disable_irq_e2a proc
	lui	a5,00044800
	addi	a4,zero,+000007FF
	c.sw	a5,16(a4)
	c.jr	ra

;; cmd_mgr_print: 2300A9C4
cmd_mgr_print proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,24(a0)
	c.li	a1,FFFFFFFF
	jal	ra,000000002303296C
	c.lw	s0,16(a5)
	addi	a4,s0,+00000010

l2300A9DA:
	bne	a5,a4,000000002300A9F0

l2300A9DE:
	c.lw	s0,24(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,0000000023032528

l2300A9F0:
	c.lw	a5,0(a5)
	c.j	000000002300A9DA

;; cmd_complete.isra.1: 2300A9F4
;;   Called from:
;;     2300AAA8 (in cmd_mgr_msgind)
;;     2300AB92 (in cmd_mgr_llind)
;;     2300AD22 (in cmd_mgr_queue)
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
	c.beqz	a4,000000002300AA30

l2300AA2C:
	jal	zero,0000000023035A72

l2300AA30:
	c.andi	a5,00000018
	c.bnez	a5,000000002300AA40

l2300AA34:
	sw	zero,a1,+0000003C
	c.addi	a0,0000001C
	c.li	a1,00000001
	jal	zero,0000000023032046

l2300AA40:
	c.jr	ra

;; cmd_mgr_msgind: 2300AA42
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
	jal	ra,000000002303296C
	c.lw	s1,16(s0)
	addi	s5,s1,+00000010

l2300AA6A:
	bne	s0,s5,000000002300AA72

l2300AA6E:
	c.li	s5,00000000
	c.j	000000002300AAAC

l2300AA72:
	lhu	a4,s0,+0000000A
	lhu	a5,s2,+00000000
	bne	a4,a5,000000002300AAE6

l2300AA7E:
	lhu	a5,s0,+00000018
	c.andi	a5,00000010
	c.beqz	a5,000000002300AAE6

l2300AA86:
	bne	s3,zero,000000002300AADC

l2300AA8A:
	lhu	a5,s0,+00000018
	c.lw	s0,16(a0)
	c.andi	a5,FFFFFFEF
	sh	a5,s0,+00000018
	c.bnez	a0,000000002300AAEA

l2300AA98:
	lhu	a5,s0,+00000018
	c.li	s5,00000001
	c.andi	a5,00000018
	c.bnez	a5,000000002300AAAC

l2300AAA2:
	c.mv	a1,s0
	addi	a0,s1,+00000008
	jal	ra,000000002300A9F4

l2300AAAC:
	c.lw	s1,24(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528
	bne	s5,zero,000000002300AAC8

l2300AABC:
	beq	s3,zero,000000002300AAC8

l2300AAC0:
	c.mv	a2,s2
	c.li	a1,00000000
	c.mv	a0,s4
	c.jalr	s3

l2300AAC8:
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

l2300AADC:
	c.mv	a2,s2
	c.mv	a1,s0
	c.mv	a0,s4
	c.jalr	s3
	c.beqz	a0,000000002300AA8A

l2300AAE6:
	c.lw	s0,0(s0)
	c.j	000000002300AA6A

l2300AAEA:
	lhu	a2,s2,+00000006
	c.beqz	a2,000000002300AA98

l2300AAF0:
	addi	a1,s2,+00000008
	jal	ra,000000002306CF80
	c.j	000000002300AA98

;; cmd_mgr_llind: 2300AAFA
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
	jal	ra,000000002303296C
	c.lw	s1,16(s0)
	c.li	a5,00000000
	addi	s4,s1,+00000010
	lui	s5,0004200E
	lui	s6,00023073
	lui	s7,0002307F
	c.li	s8,00000001

l2300AB32:
	bne	s0,s4,000000002300AB3C

l2300AB36:
	c.li	s0,00000000
	c.bnez	a5,000000002300AB7C

l2300AB3A:
	c.j	000000002300ABBC

l2300AB3C:
	c.bnez	a5,000000002300AB72

l2300AB3E:
	c.lw	s0,20(a3)
	lw	a4,s2,+00000014
	bne	a3,a4,000000002300AB72

l2300AB48:
	c.mv	a5,s0
	beq	s0,s2,000000002300AB6E

l2300AB4E:
	addi	s3,s5,+00000128
	lbu	a4,s3,+00000000
	c.bnez	a4,000000002300AB6E

l2300AB58:
	addi	a2,zero,+000000CF
	addi	a1,s6,+00000370
	addi	a0,s7,+00000514
	jal	ra,0000000023003AC6
	c.mv	a5,s0
	sb	s8,s3,+00000000

l2300AB6E:
	c.lw	s0,0(s0)
	c.j	000000002300AB32

l2300AB72:
	lhu	a4,s0,+00000018
	c.andi	a4,00000004
	c.beqz	a4,000000002300AB6E

l2300AB7A:
	c.beqz	a5,000000002300AB98

l2300AB7C:
	lhu	a5,s2,+00000018
	andi	a4,a5,-00000009
	sh	a4,s2,+00000018
	c.andi	a5,00000010
	c.bnez	a5,000000002300AB96

l2300AB8C:
	c.mv	a1,s2
	addi	a0,s1,+00000008
	jal	ra,000000002300A9F4

l2300AB96:
	c.beqz	s0,000000002300ABBC

l2300AB98:
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
	jal	ra,000000002300A816
	c.lw	s0,12(a0)
	jal	ra,0000000023035A72

l2300ABBC:
	c.lw	s1,24(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528
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

;; cmd_mgr_queue: 2300ABE2
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
	jal	ra,000000002303296C
	lbu	a4,s1,+00000000
	c.li	a5,00000002
	bne	a4,a5,000000002300AC26

l2300AC04:
	addi	a5,zero,+00000020
	c.sw	s0,60(a5)
	c.lw	s1,24(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528
	c.li	a0,FFFFFFE0

l2300AC18:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2300AC26:
	c.lw	s1,16(a5)
	addi	s2,s1,+00000010
	beq	s2,a5,000000002300AD3C

l2300AC30:
	c.lw	s1,8(a4)
	c.lw	s1,12(a5)
	bne	a4,a5,000000002300AC4C

l2300AC38:
	c.li	a5,0000000C
	c.sw	s0,60(a5)
	c.lw	s1,24(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528
	c.li	a0,FFFFFFF4
	c.j	000000002300AC18

l2300AC4C:
	c.lw	s1,20(a5)
	c.li	s3,00000000
	lhu	a5,a5,+00000018
	c.andi	a5,0000000C
	c.beqz	a5,000000002300AC66

l2300AC58:
	lhu	a5,s0,+00000018
	c.li	s3,00000001
	ori	a5,a5,+00000004
	sh	a5,s0,+00000018

l2300AC66:
	lhu	a5,s0,+00000018
	andi	a4,a5,+00000002
	c.bnez	a4,000000002300AD40

l2300AC70:
	ori	a5,a5,+00000008

l2300AC74:
	sh	a5,s0,+00000018
	c.lw	s1,4(a5)
	addi	a4,a5,+00000001
	c.sw	s1,4(a4)
	c.sw	s0,20(a5)
	c.li	a5,00000004
	c.sw	s0,60(a5)
	lhu	a5,s0,+00000018
	c.andi	a5,00000001
	c.bnez	a5,000000002300AC96

l2300AC8E:
	addi	a0,s0,+0000001C
	jal	ra,0000000023031EF0

l2300AC96:
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
	jal	ra,0000000023032528
	bne	s3,zero,000000002300ACD6

l2300ACBC:
	c.lw	s0,12(a5)
	c.lw	s1,48(a0)
	c.mv	a1,s0
	lhu	a2,a5,+00000006
	c.addi	a2,00000008
	c.slli	a2,10
	c.srli	a2,00000010
	jal	ra,000000002300A816
	c.lw	s0,12(a0)
	jal	ra,0000000023035A72

l2300ACD6:
	lhu	a5,s0,+00000018
	c.andi	a5,00000001
	c.bnez	a5,000000002300AD46

l2300ACDE:
	lui	a4,000000F4
	addi	a4,a4,+00000240
	add	a4,s2,a4
	addi	s3,s0,+0000001C
	c.li	a3,00000000
	c.li	a2,00000001
	c.li	a1,00000001
	c.mv	a0,s3
	jal	ra,0000000023031F3C
	c.andi	a0,00000001
	c.bnez	a0,000000002300AD32

l2300ACFE:
	c.lw	s1,24(a0)
	c.li	a1,FFFFFFFF
	jal	ra,000000002303296C
	c.li	a5,00000002
	sb	a5,s1,+00000000
	lhu	a5,s0,+00000018
	andi	a5,a5,+00000020
	c.bnez	a5,000000002300AD26

l2300AD16:
	addi	a5,zero,+0000006E
	c.sw	s0,60(a5)
	c.mv	a1,s0
	addi	a0,s1,+00000008
	jal	ra,000000002300A9F4

l2300AD26:
	c.lw	s1,24(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023032528

l2300AD32:
	c.mv	a0,s3
	jal	ra,00000000230320F4

l2300AD38:
	c.li	a0,00000000
	c.j	000000002300AC18

l2300AD3C:
	c.li	s3,00000000
	c.j	000000002300AC66

l2300AD40:
	ori	a5,a5,+00000018
	c.j	000000002300AC74

l2300AD46:
	sw	zero,s0,+0000003C
	c.j	000000002300AD38

;; cmd_mgr_drain: 2300AD4C
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
	jal	ra,000000002303296C
	c.lw	s0,16(a0)
	lui	s3,00000200
	addi	s4,s0,+00000010
	c.lw	a0,0(s1)
	addi	s2,s2,+00000100
	addi	s3,s3,+00000200

l2300AD7C:
	bne	a0,s4,000000002300AD9A

l2300AD80:
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
	jal	zero,0000000023032528

l2300AD9A:
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
	c.bnez	a5,000000002300ADC0

l2300ADB8:
	c.li	a1,00000001
	c.addi	a0,0000001C
	jal	ra,0000000023032046

l2300ADC0:
	c.mv	a0,s1
	c.lw	s1,0(s1)
	c.j	000000002300AD7C

;; bl_cmd_mgr_init: 2300ADC6
;;   Called from:
;;     2300A3C0 (in bl_ipc_init)
bl_cmd_mgr_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	a5,a0,+00000010
	c.mv	s0,a0
	c.sw	a0,16(a5)
	c.sw	a0,20(a5)
	c.li	a0,00000001
	jal	ra,00000000230326B8
	c.li	a5,00000008
	c.sw	s0,12(a5)
	lui	a5,0002300B
	addi	a5,a5,-0000041E
	c.sw	s0,28(a5)
	lui	a5,0002300B
	addi	a5,a5,-0000063C
	c.sw	s0,40(a5)
	lui	a5,0002300B
	addi	a5,a5,-000002B4
	c.sw	s0,44(a5)
	lui	a5,0002300B
	addi	a5,a5,-00000506
	c.sw	s0,32(a5)
	lui	a5,0002300B
	addi	a5,a5,-000005BE
	c.sw	s0,24(a0)
	c.sw	s0,36(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bl_irqs_init: 2300AE1C
;;   Called from:
;;     23008190 (in bl_main_lowlevel_init)
bl_irqs_init proc
	c.li	a0,00000000
	c.jr	ra

;; bl_irq_bottomhalf: 2300AE20
;;   Called from:
;;     2300817C (in bl_main_event_handle)
bl_irq_bottomhalf proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	jal	ra,0000000023033AF0
	c.lw	s0,52(a0)
	c.li	s1,00000000
	jal	ra,000000002300A844

l2300AE36:
	c.bnez	a0,000000002300AE68

l2300AE38:
	jal	ra,0000000023033AF0
	andi	a5,s1,+00000008
	c.beqz	a5,000000002300AE44

l2300AE42:
	c.sw	s0,60(a0)

l2300AE44:
	andi	a5,s1,+00000780
	c.beqz	a5,000000002300AE4C

l2300AE4A:
	c.sw	s0,64(a0)

l2300AE4C:
	c.lw	s0,52(a0)
	addi	a1,zero,+000007FF
	jal	ra,000000002300A9B0
	c.lw	s0,52(a0)
	jal	ra,000000002300A844
	c.bnez	a0,000000002300AE36

l2300AE5E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2300AE68:
	c.mv	a1,a0
	c.or	s1,a0
	c.lw	s0,52(a0)
	jal	ra,000000002300A8B6
	c.lw	s0,52(a0)
	jal	ra,000000002300A844
	c.j	000000002300AE36

;; BLE_ROM_patch: 2300AE7A
BLE_ROM_patch proc
	c.addi	sp,FFFFFFE0
	c.swsp	a1,00000080
	c.swsp	a2,00000004
	c.swsp	a3,00000084
	c.swsp	a4,00000008
	c.swsp	a5,00000088
	c.swsp	a6,0000000C
	c.swsp	a7,0000008C
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; blecontroller_main: 2300AE90
blecontroller_main proc
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.li	a2,00000008
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	c.jalr	a5
	lui	s1,00042019
	c.li	s0,00000001

l2300AEAE:
	lw	a0,s1,+00000610
	c.li	a2,FFFFFFFF
	c.addi4spn	a1,00000008
	jal	ra,0000000023032820
	bne	a0,s0,000000002300AECC

l2300AEBE:
	lbu	a5,sp,+00000008
	bne	a5,s0,000000002300AECC

l2300AEC6:
	c.lwsp	a2,00000044
	jal	ra,000000002300BE9C

l2300AECC:
	jal	ra,000000002300C0DC
	c.j	000000002300AEAE

;; BLE_ROM_hook_init: 2300AED2
;;   Called from:
;;     2300B018 (in ble_controller_init)
BLE_ROM_hook_init proc
	lui	a5,0002300B
	lui	a4,0004200E
	addi	a5,a5,-00000186
	sw	a5,a4,+00000134
	lui	a5,0002306D
	lui	a4,0004200E
	addi	a5,a5,-00000080
	sw	a5,a4,+0000013C
	lui	a5,0002306D
	lui	a4,0004200E
	addi	a5,a5,+000001BC
	sw	a5,a4,+00000140
	lui	a5,0002306D
	lui	a4,0004200E
	addi	a5,a5,-00000108
	sw	a5,a4,+00000138
	lui	a5,0002300B
	lui	a4,0004200E
	addi	a5,a5,-000000B4
	sw	a5,a4,+00000144
	c.jr	ra

;; rw_main_task_post: 2300AF24
;;   Called from:
;;     2300AF8C (in rw_main_task_post_from_fw)
;;     2306752C (in bt_onchiphci_send)
rw_main_task_post proc
	c.beqz	a0,000000002300AF48

l2300AF26:
	lui	a5,00042019
	c.mv	a2,a1
	c.mv	a1,a0
	lw	a0,a5,+00000610
	c.addi	sp,FFFFFFF0
	c.li	a3,00000000
	c.swsp	ra,00000084
	jal	ra,0000000023032528
	c.lwsp	a2,00000020
	c.addi	a0,FFFFFFFF
	sltiu	a0,a0,+00000001
	c.addi	sp,00000010
	c.jr	ra

l2300AF48:
	c.li	a0,00000000
	c.jr	ra

;; rw_main_task_post_from_fw: 2300AF4C
rw_main_task_post_from_fw proc
	c.addi	sp,FFFFFFE0
	c.li	a5,00000002
	sb	a5,sp,+00000008
	lui	a5,0004200E
	lw	a5,a5,+00000244
	c.swsp	ra,0000008C
	c.swsp	zero,00000084
	c.beqz	a5,000000002300AF88

l2300AF62:
	lui	a5,00042019
	lw	a0,a5,+00000610
	c.li	a3,00000000
	c.addi4spn	a2,00000004
	c.addi4spn	a1,00000008
	c.swsp	zero,00000080
	jal	ra,00000000230326EC
	c.lwsp	tp,000000C4
	c.li	a5,00000001
	bne	a4,a5,000000002300AF82

l2300AF7E:
	jal	ra,0000000023033E52

l2300AF82:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2300AF88:
	c.li	a1,FFFFFFFF
	c.addi4spn	a0,00000008
	jal	ra,000000002300AF24
	c.j	000000002300AF82

;; bdaddr_init: 2300AF92
;;   Called from:
;;     2300B05A (in ble_controller_init)
bdaddr_init proc
	c.addi	sp,FFFFFFE0
	c.addi4spn	a0,00000008
	c.swsp	ra,0000008C
	jal	ra,0000000023036ED4
	lbu	a3,sp,+00000009
	lbu	a5,sp,+00000008
	lbu	a4,sp,+0000000D
	sb	a5,sp,+0000000D
	lbu	a5,sp,+0000000C
	sb	a3,sp,+0000000C
	lhu	a3,sp,+0000000A
	sb	a5,sp,+00000009
	slli	a2,a3,00000008
	c.srli	a3,00000008
	c.or	a3,a2
	sh	a3,sp,+0000000A
	addi	a3,zero,+000000FF
	beq	a4,a3,000000002300B006

l2300AFD0:
	c.addi	a4,00000001
	sb	a4,sp,+00000008

l2300AFD6:
	c.addi4spn	a0,00000008
	jal	ra,000000002300C460
	lbu	a6,sp,+00000008
	lbu	a5,sp,+00000009
	lbu	a4,sp,+0000000A
	lbu	a3,sp,+0000000B
	lbu	a2,sp,+0000000C
	lbu	a1,sp,+0000000D
	lui	a0,00023073
	addi	a0,a0,+00000380
	jal	ra,0000000023003AC6
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2300B006:
	c.addi	a5,00000001
	sb	zero,sp,+00000008
	sb	a5,sp,+00000009
	c.j	000000002300AFD6

;; ble_controller_init: 2300B012
;;   Called from:
;;     230017DA (in blsync_ble_start)
ble_controller_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a0,00000084
	jal	ra,000000002300AED2
	lui	a0,00002626
	addi	a0,a0,-00000600
	jal	ra,00000000230571B4
	lui	a5,0004200E
	sb	zero,a5,+00000129
	lui	a5,0004200E
	sb	zero,a5,+0000012A
	c.jal	000000002300B17A
	addi	a0,zero,+00000048
	jal	ra,00000000230366CA
	lui	a1,0002300B
	addi	a1,a1,+00000188
	addi	a0,zero,+00000048
	jal	ra,0000000023036822
	addi	a0,zero,+00000048
	jal	ra,00000000230366A8
	jal	ra,000000002300AF92
	lui	a5,0004200E
	lw	a0,a5,+00000148
	jal	ra,000000002300C052
	c.li	a2,00000000
	c.li	a1,00000008
	c.li	a0,00000014
	jal	ra,0000000023032470
	lui	a5,00042019
	c.lwsp	a2,000000C4
	c.lwsp	t3,00000020
	sw	a0,a5,+00000610
	lui	a1,00023073
	lui	a5,00042019
	lui	a0,0002300B
	addi	a5,a5,+0000060C
	c.li	a3,00000000
	addi	a2,zero,+00000200
	addi	a1,a1,+000003A8
	addi	a0,a0,-00000170
	c.addi16sp	00000020
	jal	zero,00000000230337F0

;; ble_controller_deinit: 2300B0A4
;;   Called from:
;;     2301E700 (in bt_disable_action)
ble_controller_deinit proc
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.li	a2,00000008
	c.li	a1,00000000
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.addi4spn	a0,00000008
	c.jalr	a5
	addi	a0,zero,+00000048
	lui	s0,00042019
	jal	ra,00000000230366BA
	lw	a0,s0,+0000060C
	c.li	s1,00000001
	jal	ra,000000002303386C
	sw	zero,s0,+0000060C
	lui	s0,00042019

l2300B0DA:
	lw	a0,s0,+00000610
	c.li	a2,00000000
	c.addi4spn	a1,00000008
	jal	ra,0000000023032820
	beq	a0,s1,000000002300B100

l2300B0EA:
	lw	a0,s0,+00000610
	jal	ra,0000000023032B18
	c.lwsp	t3,00000020
	sw	zero,s0,+00000610
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2300B100:
	c.lwsp	a2,00000044
	c.beqz	a0,000000002300B0DA

l2300B104:
	c.addi	a0,FFFFFFF4
	jal	ra,000000002300DCB6
	c.j	000000002300B0DA

;; rwble_init: 2300B10C
;;   Called from:
;;     2300C0B4 (in rwip_init)
rwble_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002300E938
	c.li	a0,00000000
	jal	ra,0000000023012EB2
	jal	ra,000000002300EC20
	c.li	a0,00000000
	jal	ra,0000000023015FA2
	lui	a5,00028000
	sw	zero,a5,+00000050
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; rwble_reset: 2300B132
;;   Called from:
;;     2300C018 (in rwip_reset)
rwble_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	csrrs	s0,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	a5,00028000
	lui	a4,00080000
	c.sw	a5,28(a4)

l2300B14A:
	c.lw	a5,28(a3)
	blt	a3,zero,000000002300B14A

l2300B150:
	c.lw	a5,28(a4)
	c.lw	a5,32(a4)
	c.lw	a5,36(a5)
	jal	ra,0000000023013184
	c.li	a0,00000001
	jal	ra,0000000023012EB2
	jal	ra,000000002300ECEE
	c.li	a0,00000001
	jal	ra,0000000023015FA2
	jal	ra,000000002300E938
	csrrw	zero,mstatus,zero
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; rwble_isr_clear: 2300B17A
;;   Called from:
;;     2300B038 (in ble_controller_init)
rwble_isr_clear proc
	lui	a5,00028000
	c.lw	a5,16(a4)
	c.beqz	a4,000000002300B186

l2300B182:
	c.li	a4,FFFFFFFF
	c.sw	a5,24(a4)

l2300B186:
	c.jr	ra

;; rwble_isr: 2300B188
rwble_isr proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.lui	s2,00010000
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s8,00000004
	c.li	s6,00000001
	lui	s3,0004200E
	addi	s7,s2,+00000008
	lui	s4,0004200E
	c.li	s5,00000001

l2300B1B0:
	lui	s1,00028000
	lui	s8,0004200E

l2300B1B8:
	c.lw	s1,16(s0)
	beq	s0,zero,000000002300B2D4

l2300B1BE:
	andi	a5,s0,+00000004
	c.beqz	a5,000000002300B1CC

l2300B1C4:
	c.li	a5,00000004
	c.sw	s1,24(a5)
	jal	ra,000000002300C126

l2300B1CC:
	andi	a5,s0,+00000001
	c.beqz	a5,000000002300B1DE

l2300B1D2:
	sw	s6,s1,+00000018
	jal	ra,000000002300C15C
	jal	ra,000000002300BBC0

l2300B1DE:
	andi	a5,s0,+00000080
	c.beqz	a5,000000002300B1EE

l2300B1E4:
	addi	a5,zero,+00000080
	c.sw	s1,24(a5)
	jal	ra,000000002300BBC0

l2300B1EE:
	andi	a5,s0,+00000008
	c.beqz	a5,000000002300B224

l2300B1F4:
	c.li	a5,00000008
	c.sw	s1,24(a5)
	andi	a5,s0,+00000002
	c.beqz	a5,000000002300B204

l2300B1FE:
	c.li	a5,00000002
	c.sw	s1,24(a5)
	c.andi	s0,FFFFFFFD

l2300B204:
	slli	a5,s0,0000000F
	bge	a5,zero,000000002300B21E

l2300B20C:
	lbu	a5,s3,+0000012A
	andi	a5,a5,+000000FF
	c.bnez	a5,000000002300B21A

l2300B216:
	sb	s5,s3,+0000012A

l2300B21A:
	sw	s2,s1,+00000018

l2300B21E:
	c.li	a0,00000000
	jal	ra,00000000230117C4

l2300B224:
	and	a5,s0,s7
	bne	a5,s2,000000002300B268

l2300B22C:
	lbu	a5,s3,+0000012A
	andi	a5,a5,+000000FF
	c.bnez	a5,000000002300B24A

l2300B236:
	sb	s5,s3,+0000012A
	lw	a5,s1,+000000A8
	sw	a5,s8,+0000012C
	lw	a5,s1,+000000AC
	sw	a5,s4,+00000130

l2300B24A:
	sw	s2,s1,+00000018
	andi	a5,s0,+00000002
	c.beqz	a5,000000002300B25A

l2300B254:
	c.li	a5,00000002
	c.sw	s1,24(a5)
	c.andi	s0,FFFFFFFD

l2300B25A:
	lw	a0,s4,+00000130
	c.srli	a0,00000010
	andi	a0,a0,+000000FF
	jal	ra,000000002301181A

l2300B268:
	andi	a5,s0,+00000100
	c.beqz	a5,000000002300B286

l2300B26E:
	addi	a5,zero,+00000100
	c.sw	s1,24(a5)
	andi	a5,s0,+00000002
	c.beqz	a5,000000002300B280

l2300B27A:
	c.li	a5,00000002
	c.sw	s1,24(a5)
	c.andi	s0,FFFFFFFD

l2300B280:
	c.li	a0,00000001
	jal	ra,00000000230117C4

l2300B286:
	andi	a5,s0,+00000002
	c.beqz	a5,000000002300B294

l2300B28C:
	c.li	a5,00000002
	c.sw	s1,24(a5)
	jal	ra,000000002301180A

l2300B294:
	andi	a5,s0,+00000200
	c.beqz	a5,000000002300B2A2

l2300B29A:
	addi	a5,zero,+00000200
	c.sw	s1,24(a5)
	c.jal	000000002300B5BC

l2300B2A2:
	andi	a5,s0,+00000040
	c.beqz	a5,000000002300B2B2

l2300B2A8:
	addi	a5,zero,+00000040
	c.sw	s1,24(a5)
	jal	ra,00000000230117BE

l2300B2B2:
	andi	a5,s0,+00000010
	c.beqz	a5,000000002300B2C0

l2300B2B8:
	c.li	a5,00000010
	c.sw	s1,24(a5)
	jal	ra,00000000230145DA

l2300B2C0:
	andi	s0,s0,+00000020
	beq	s0,zero,000000002300B1B8

l2300B2C8:
	lui	a5,00028000
	addi	a4,zero,+00000020
	c.sw	a5,24(a4)
	c.j	000000002300B1B0

l2300B2D4:
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

;; ea_conflict_check: 2300B2EC
;;   Called from:
;;     2300B48E (in ea_elt_cancel)
;;     2300BA30 (in ea_elt_insert)
ea_conflict_check proc
	c.lw	a1,8(a3)
	c.lw	a0,8(a4)
	lui	a7,00008000
	c.mv	a6,a0
	c.addi	a7,FFFFFFFF
	sub	a0,a3,a4
	and	a0,a0,a7
	lui	t1,00004000
	lhu	a5,a6,+00000014
	lhu	a2,a1,+00000014
	bgeu	t1,a0,000000002300B366

l2300B310:
	sub	a3,a4,a3
	and	a3,a3,a7
	sub	a3,zero,a3
	c.bnez	a3,000000002300B322

l2300B31E:
	bltu	a5,a2,000000002300B36A

l2300B322:
	lhu	a1,a1,+00000012
	c.li	a0,00000005
	add	a4,a2,a1
	c.sub	a4,a5
	bge	zero,a4,000000002300B364

l2300B332:
	c.addi	a4,FFFFFFFF
	addi	a7,zero,+00000271
	xor	a4,a4,a7
	c.add	a4,a3
	blt	a4,zero,000000002300B364

l2300B342:
	lhu	a4,a6,+00000012
	c.li	a0,00000004
	c.add	a5,a4
	c.sub	a5,a2
	c.sub	a5,a1
	blt	zero,a5,000000002300B364

l2300B352:
	addi	a0,zero,-00000271
	xor	a5,a5,a0
	add	a0,a5,a3
	slti	a0,a0,+00000000
	c.addi	a0,00000003

l2300B364:
	c.jr	ra

l2300B366:
	c.mv	a3,a0
	c.beqz	a0,000000002300B31E

l2300B36A:
	lhu	a4,a6,+00000012
	c.li	a0,00000000
	c.add	a5,a4
	c.sub	a5,a2
	bge	zero,a5,000000002300B364

l2300B378:
	addi	a4,a5,-00000001
	addi	a2,zero,-00000271
	xor	a4,a4,a2
	c.add	a4,a3
	blt	zero,a4,000000002300B364

l2300B38A:
	lhu	a4,a1,+00000012
	c.li	a0,00000001
	c.sub	a5,a4
	bge	zero,a5,000000002300B364

l2300B396:
	c.addi	a5,FFFFFFFF
	xor	a0,a5,a2
	c.add	a0,a3
	slti	a0,a0,+00000001
	c.addi	a0,00000001
	c.jr	ra

;; ea_elt_cancel: 2300B3A6
;;   Called from:
;;     2300BABC (in ea_elt_insert)
ea_elt_cancel proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	lui	s0,00042011
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s8,00000014
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	ra,000000A4
	c.swsp	s3,0000009C
	c.swsp	s6,00000018
	c.swsp	s7,00000094
	c.swsp	s11,0000008C
	addi	a5,s0,-000000FC
	lw	s6,a5,+0000000C
	addi	s1,s0,-000000FC
	lui	s8,00008000
	c.mv	s4,a0
	c.li	s9,00000000
	c.li	s5,00000005
	addi	s10,zero,+00000271
	c.addi	s8,FFFFFFFF
	addi	s2,s1,+0000000C

l2300B3E6:
	bne	s6,zero,000000002300B422

l2300B3EA:
	c.lw	s1,12(a5)
	c.beqz	a5,000000002300B404

l2300B3EE:
	lui	a3,00028000
	c.lw	a3,0(a5)
	lui	a4,000F0000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	lui	a4,00010000
	c.or	a5,a4
	c.sw	a3,0(a5)

l2300B404:
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

l2300B422:
	lhu	a3,s6,+00000010
	lw	s3,s6,+00000000
	srli	a5,a3,0000000E
	c.beqz	a5,000000002300B502

l2300B430:
	srai	a4,a3,00000004
	andi	a4,a4,+0000003F
	c.beqz	a4,000000002300B502

l2300B43A:
	lbu	a2,s6,+00000016
	andi	a5,a3,+0000000F
	andi	a3,a3,-000003F1
	c.add	a5,a2
	sb	a5,s6,+00000016
	addi	a5,a4,-00000001
	c.slli	a5,04
	c.or	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	srai	a2,a5,0000000C
	sh	a5,s6,+00000010
	c.andi	a2,00000003
	srli	s7,a5,0000000E
	c.mv	a4,s4
	c.li	s11,00000000

l2300B46A:
	c.bnez	a4,000000002300B486

l2300B46C:
	c.mv	a2,s6
	c.mv	a1,s9
	c.mv	a0,s2
	jal	ra,000000002300C2FA
	c.mv	a2,s6
	c.mv	a1,s11
	addi	a0,s0,-000000FC
	jal	ra,000000002300C3C4
	c.mv	s6,s9
	c.j	000000002300B502

l2300B486:
	c.mv	a1,a4
	c.mv	a0,s6
	c.swsp	a2,00000084
	c.swsp	a4,00000004
	jal	ra,000000002300B2EC
	c.beqz	a0,000000002300B46C

l2300B494:
	c.lwsp	s0,000000C4
	c.lwsp	a2,00000084
	c.li	a6,00000001
	lui	a7,00004000
	bne	a0,s5,000000002300B4A8

l2300B4A2:
	c.mv	s11,a4
	c.lw	a4,0(a4)
	c.j	000000002300B46A

l2300B4A8:
	lhu	a5,a4,+00000012
	lhu	a3,a4,+00000014
	c.lw	a4,8(a1)
	c.add	a3,a5
	srl	a5,a3,s10
	and	a3,a3,s10
	c.add	a5,a1
	lhu	a1,s6,+00000014
	bgeu	a1,a3,000000002300B4C8

l2300B4C6:
	c.addi	a5,00000001

l2300B4C8:
	bne	a2,a6,000000002300B508

l2300B4CC:
	ori	a5,a5,+00000001

l2300B4D0:
	and	a5,a5,s8
	sw	a5,s6,+00000008
	bgeu	a6,s7,000000002300B4A2

l2300B4DC:
	lw	a1,s6,+0000000C
	sub	a3,a1,a5
	and	a3,a3,s8
	bgeu	a7,a3,000000002300B4F6

l2300B4EC:
	c.sub	a5,a1
	and	a5,a5,s8
	sub	a3,zero,a5

l2300B4F6:
	lhu	a5,s6,+00000012
	srl	a5,a5,s10
	bge	a3,a5,000000002300B4A2

l2300B502:
	c.mv	s9,s6
	c.mv	s6,s3
	c.j	000000002300B3E6

l2300B508:
	c.bnez	a2,000000002300B4D0

l2300B50A:
	c.addi	a5,00000001
	c.andi	a5,FFFFFFFE
	c.j	000000002300B4D0

;; ea_init: 2300B510
;;   Called from:
;;     2300C038 (in rwip_reset)
;;     2300C0BA (in rwip_init)
ea_init proc
	c.addi	sp,FFFFFFF0
	lui	a0,00042011
	c.swsp	s0,00000004
	addi	s0,a0,-000000FC
	addi	a0,a0,-000000FC
	c.swsp	ra,00000084
	jal	ra,000000002300C1BE
	addi	a0,s0,+0000000C
	jal	ra,000000002300C1BE
	addi	a0,s0,+00000014
	jal	ra,000000002300C1BE
	c.li	a5,FFFFFFFF
	sw	zero,s0,+00000008
	c.sw	s0,28(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ea_elt_create: 2300B546
;;   Called from:
;;     23010C68 (in lld_evt_scan_create)
;;     23010EB4 (in lld_evt_update_create)
;;     23011020 (in lld_evt_move_to_slave)
;;     230113B2 (in lld_evt_slave_update)
;;     230114AE (in lld_evt_adv_create)
;;     23013634 (in lld_con_start)
;;     2301363E (in lld_con_start)
;;     23013EDE (in lld_con_update_after_param_req)
ea_elt_create proc
	addi	a2,a0,+0000002C
	c.addi	sp,FFFFFFE0
	c.li	a1,00000000
	c.mv	a0,a2
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	a2,00000084
	jal	ra,000000002300D942
	c.mv	s0,a0
	c.beqz	a0,000000002300B56C

l2300B55E:
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.lwsp	a2,00000084
	c.li	a1,00000000
	c.jalr	a5

l2300B56C:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; ea_interval_create: 2300B576
;;   Called from:
;;     23010D1C (in lld_evt_move_to_master)
;;     23011026 (in lld_evt_move_to_slave)
ea_interval_create proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000000
	c.li	a0,00000010
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002300D942
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.li	a2,00000010
	c.li	a1,00000000
	c.mv	s0,a0
	c.jalr	a5
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ea_interval_insert: 2300B59E
;;   Called from:
;;     23010E58 (in lld_evt_move_to_master)
;;     230112D6 (in lld_evt_move_to_slave)
ea_interval_insert proc
	c.mv	a1,a0
	lui	a0,00042011
	addi	a0,a0,-000000E8
	jal	zero,000000002300C1E6

;; ea_interval_remove: 2300B5AC
;;   Called from:
;;     2300FF16 (in lld_evt_init)
;;     23010048 (in lld_evt_elt_delete)
ea_interval_remove proc
	c.mv	a1,a0
	lui	a0,00042011
	c.li	a2,00000000
	addi	a0,a0,-000000E8
	jal	zero,000000002300C286

;; ea_sw_isr: 2300B5BC
;;   Called from:
;;     2300B2A0 (in rwble_isr)
ea_sw_isr proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042011
	addi	s0,s0,-000000FC
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	addi	s1,s0,+0000000C

l2300B5D0:
	c.lw	s0,12(a5)
	c.bnez	a5,000000002300B5DE

l2300B5D4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2300B5DE:
	c.mv	a0,s1
	jal	ra,000000002300C252
	c.lw	a0,36(a5)
	c.beqz	a5,000000002300B5D0

l2300B5E8:
	c.jalr	a5
	c.j	000000002300B5D0

;; ea_offset_req: 2300B5EC
;;   Called from:
;;     23010F28 (in lld_evt_update_create)
;;     230111F2 (in lld_evt_move_to_slave)
;;     23011200 (in lld_evt_move_to_slave)
;;     23012C68 (in lld_util_anchor_point_move)
;;     230134CA (in lld_scan_start)
;;     23013744 (in lld_con_start)
;;     2301402A (in lld_con_update_after_param_req)
;;     2301403A (in lld_con_update_after_param_req)
;;     2301412E (in lld_con_param_rsp)
;;     23014228 (in lld_con_param_req)
ea_offset_req proc
	lhu	a6,a1,+00000000
	beq	a6,zero,000000002300B75E

l2300B5F4:
	lw	t1,a1,+00000004
	c.li	a5,00000001
	slli	t3,t1,00000010
	srli	t3,t3,00000010
	beq	t3,zero,000000002300B760

l2300B606:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000084
	c.swsp	s1,00000004
	c.swsp	s2,00000080
	lbu	t4,a0,+0000000E
	bne	t4,a5,000000002300B64C

l2300B616:
	lhu	a2,a0,+0000000C

l2300B61A:
	lui	a5,00042011
	lw	a7,a5,-000000E8
	c.slli	t1,10
	addi	t6,zero,+000000FF
	c.mv	s0,a7
	c.addi	t3,FFFFFFFF
	c.li	t5,00000001
	srli	t1,t1,00000010
	c.mv	t0,a6

l2300B634:
	beq	s0,zero,000000002300B74C

l2300B638:
	bgeu	a2,a6,000000002300B764

l2300B63C:
	lhu	a4,a0,+00000012
	bne	a4,t6,000000002300B652

l2300B644:
	sh	a2,a1,+00000008
	c.li	a5,00000000
	c.j	000000002300B752

l2300B64C:
	lbu	a2,a0,+00000014
	c.j	000000002300B61A

l2300B652:
	lhu	a3,s0,+00000004
	c.beqz	a3,000000002300B6BC

l2300B658:
	lhu	a5,s0,+00000008
	c.beqz	a5,000000002300B6BC

l2300B65E:
	lhu	s1,s0,+0000000A
	lhu	t2,a0,+00000010
	beq	s1,t2,000000002300B6BC

l2300B66A:
	c.mv	t2,a3
	bgeu	a6,a3,000000002300B672

l2300B670:
	c.mv	t2,t0

l2300B672:
	lhu	s1,s0,+0000000C
	c.slli	t2,10
	srli	t2,t2,00000010
	bne	s1,a4,000000002300B690

l2300B680:
	bne	a4,t5,000000002300B6C4

l2300B684:
	lhu	s1,s0,+0000000E
	lhu	a4,a0,+00000016
	beq	s1,a4,000000002300B6C4

l2300B690:
	add	a4,t1,a5
	blt	t2,a4,000000002300B764

l2300B698:
	lhu	a4,s0,+00000006
	c.addi	a5,00000001
	c.add	a4,t2
	c.addi	a4,FFFFFFFF
	or	a4,a4,t2
	c.slli	a4,10
	c.srli	a4,00000010

l2300B6AA:
	and	s1,a6,t2
	c.add	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	c.bnez	s1,000000002300B6BC

l2300B6B6:
	and	a3,a3,t2
	c.beqz	a3,000000002300B6D8

l2300B6BC:
	c.lw	s0,0(s0)
	c.mv	a5,a2

l2300B6C0:
	c.mv	a2,a5
	c.j	000000002300B634

l2300B6C4:
	add	a4,t1,a5
	blt	t2,a4,000000002300B764

l2300B6CC:
	lhu	a4,s0,+00000006
	c.addi	a5,FFFFFFFF
	and	a4,a4,t2
	c.j	000000002300B6AA

l2300B6D8:
	and	s1,a2,t2
	add	a3,s1,t3
	c.slli	a3,10
	c.srli	a3,00000010
	bltu	s1,a4,000000002300B76E

l2300B6E8:
	bgeu	a5,s1,000000002300B6F4

l2300B6EC:
	bltu	a3,a4,000000002300B712

l2300B6F0:
	bltu	a5,a3,000000002300B768

l2300B6F4:
	beq	t4,t5,000000002300B748

l2300B6F8:
	c.addi	a5,00000001
	or	a5,a5,t2

l2300B6FE:
	bgeu	a2,a5,000000002300B734

l2300B702:
	lbu	a3,a0,+00000014
	andi	a4,a5,+00000001
	c.beqz	a3,000000002300B73C

l2300B70C:
	c.beqz	a4,000000002300B740

l2300B70E:
	c.mv	s0,a7
	c.j	000000002300B6C0

l2300B712:
	bne	a4,s1,000000002300B71A

l2300B716:
	bgeu	a3,a5,000000002300B6F4

l2300B71A:
	bltu	a5,t2,000000002300B726

l2300B71E:
	and	s2,a5,t2
	bgeu	s2,s1,000000002300B6F4

l2300B726:
	bltu	a3,t2,000000002300B6BC

l2300B72A:
	and	a3,a3,t2
	bltu	a3,a4,000000002300B6BC

l2300B732:
	c.j	000000002300B6F4

l2300B734:
	c.add	a5,t2
	c.slli	a5,10
	c.srli	a5,00000010
	c.j	000000002300B6FE

l2300B73C:
	c.mv	s0,a7
	c.beqz	a4,000000002300B6C0

l2300B740:
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.j	000000002300B70E

l2300B748:
	c.mv	a5,a6
	c.j	000000002300B70E

l2300B74C:
	c.li	a5,00000003
	bltu	a2,a6,000000002300B644

l2300B752:
	c.lwsp	a2,00000004
	c.lwsp	s0,00000024
	c.lwsp	tp,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2300B75E:
	c.li	a5,00000001

l2300B760:
	c.mv	a0,a5
	c.jr	ra

l2300B764:
	c.li	a5,00000003
	c.j	000000002300B752

l2300B768:
	bltu	a4,s1,000000002300B71A

l2300B76C:
	c.j	000000002300B6F4

l2300B76E:
	bgeu	a3,a4,000000002300B6F4

l2300B772:
	c.j	000000002300B716

;; ea_time_get_halfslot_rounded: 2300B774
;;   Called from:
;;     2300B906 (in ea_elt_insert)
;;     2300BBE0 (in ea_finetimer_isr)
;;     23010A60 (in lld_evt_schedule_next)
;;     23010CEA (in lld_evt_scan_create)
;;     23010D52 (in lld_evt_move_to_master)
;;     2301152C (in lld_evt_adv_create)
;;     230136D6 (in lld_con_start)
ea_time_get_halfslot_rounded proc
	lui	a5,00028000
	lui	a4,00080000
	c.sw	a5,28(a4)

l2300B77E:
	c.lw	a5,28(a3)
	blt	a3,zero,000000002300B77E

l2300B784:
	c.lw	a5,28(a4)
	c.lw	a5,32(a0)
	sltiu	a0,a0,+00000138
	c.add	a0,a4
	c.slli	a0,05
	c.srli	a0,00000005
	c.jr	ra

;; ea_time_get_slot_rounded: 2300B794
;;   Called from:
;;     2300B7CC (in ea_prog_timer)
;;     2300B830 (in ea_prog_timer)
ea_time_get_slot_rounded proc
	lui	a5,00028000
	lui	a4,00080000
	c.sw	a5,28(a4)

l2300B79E:
	c.lw	a5,28(a3)
	blt	a3,zero,000000002300B79E

l2300B7A4:
	c.lw	a5,28(a4)
	c.lw	a5,32(a0)
	sltiu	a0,a0,+0000006A
	c.add	a0,a4
	c.slli	a0,05
	c.srli	a0,00000005
	c.jr	ra

;; ea_prog_timer: 2300B7B4
;;   Called from:
;;     2300BB4A (in ea_elt_insert)
;;     2300BB9E (in ea_elt_remove)
;;     2300BC98 (in ea_finetimer_isr)
ea_prog_timer proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042011
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.li	s1,FFFFFFFF
	addi	s2,s0,-000000FC
	c.swsp	ra,00000084
	sw	s1,s2,+0000001C
	jal	ra,000000002300B794
	lw	a5,s2,+00000000
	addi	s0,s0,-000000FC
	c.beqz	a5,000000002300B880

l2300B7DA:
	lbu	a2,a5,+00000019
	c.lw	a5,8(a4)
	c.lw	s0,8(a3)
	c.sub	a4,a2
	c.slli	a4,05
	c.srli	a4,00000005
	c.sw	s0,28(a4)
	c.beqz	a3,000000002300B830

l2300B7EC:
	lbu	a2,a3,+00000016
	lbu	a4,a5,+00000016
	bgeu	a2,a4,000000002300B804

l2300B7F8:
	lhu	a4,a5,+00000010
	slli	a2,a4,00000014
	blt	a2,zero,000000002300B870

l2300B804:
	lbu	a4,a3,+00000017

l2300B808:
	lbu	a3,a5,+00000019
	bgeu	a3,a4,000000002300B830

l2300B810:
	c.lw	a5,8(a5)
	c.sub	a5,a4
	lui	a4,00008000
	addi	a3,a4,-00000001
	c.and	a5,a3
	sub	a4,a5,a0
	c.and	a4,a3
	lui	a3,00004000
	bltu	a3,a4,000000002300B876

l2300B82C:
	c.beqz	a4,000000002300B876

l2300B82E:
	c.sw	s0,28(a5)

l2300B830:
	jal	ra,000000002300B794
	c.lw	s0,28(a4)
	lui	a5,00004000
	c.addi	a5,FFFFFFFE
	sub	a4,a0,a4
	bltu	a5,a4,000000002300B84E

l2300B844:
	addi	a5,a0,+00000001
	c.slli	a5,05
	c.srli	a5,00000005
	c.sw	s0,28(a5)

l2300B84E:
	c.lw	s0,28(a4)
	lui	a5,00028000
	sw	a4,a5,+000000F8
	c.lw	a5,12(a4)
	c.srli	a4,00000007
	c.andi	a4,00000001
	c.bnez	a4,000000002300B898

l2300B860:
	addi	a4,zero,+00000080
	c.sw	a5,24(a4)
	c.lw	a5,12(a4)
	ori	a4,a4,+00000080
	c.sw	a5,12(a4)
	c.j	000000002300B898

l2300B870:
	lbu	a4,a3,+00000018
	c.j	000000002300B808

l2300B876:
	c.addi	a0,00000001
	c.slli	a0,05
	c.srli	a0,00000005
	c.sw	s0,28(a0)
	c.j	000000002300B830

l2300B880:
	c.lw	s0,28(a5)
	bne	a5,s1,000000002300B830

l2300B886:
	lui	a5,00028000
	c.lw	a5,12(a4)
	andi	a4,a4,-00000081
	c.sw	a5,12(a4)
	addi	a4,zero,+00000080
	c.sw	a5,24(a4)

l2300B898:
	lui	a5,0004200E
	lbu	a4,a5,+0000014C
	addi	a3,a5,+0000014C
	c.bnez	a4,000000002300B8BA

l2300B8A6:
	c.srli	a0,0000001A
	c.andi	a0,00000001
	sb	a0,a3,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2300B8BA:
	slli	a5,a0,00000005
	blt	a5,zero,000000002300B8A6

l2300B8C2:
	c.lw	s0,20(a4)
	lui	a1,00008000

l2300B8C8:
	c.beqz	a4,000000002300B8A6

l2300B8CA:
	lhu	a2,a4,+00000004
	lhu	a6,a4,+00000006
	or	a5,a1,a2
	sub	a5,a2,a5
	c.add	a5,a6
	or	a5,a5,a2
	sh	a5,a4,+00000006
	c.lw	a4,0(a4)
	c.j	000000002300B8C8

;; ea_elt_insert: 2300B8E8
;;   Called from:
;;     2301099E (in lld_evt_elt_insert)
;;     23011618 (in lld_evt_end)
ea_elt_insert proc
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
	c.mv	s0,a0
	jal	ra,000000002300B774
	csrrs	s3,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	s4,00042011
	lbu	a5,s0,+00000019
	addi	a4,s4,-000000FC
	c.lw	a4,8(a4)
	c.addi	a5,00000001
	lui	a3,00008000
	c.add	a5,a0
	addi	a2,a3,-00000001
	c.and	a5,a2
	addi	s5,s4,-000000FC
	c.beqz	a4,000000002300B954

l2300B934:
	lbu	a4,a4,+00000017
	c.beqz	a4,000000002300B954

l2300B93A:
	sub	a3,a5,a0
	c.and	a3,a2
	lui	a2,00004000
	bltu	a2,a3,000000002300B94C

l2300B948:
	bge	a3,a4,000000002300B954

l2300B94C:
	add	a5,a4,a0
	c.slli	a5,05
	c.srli	a5,00000005

l2300B954:
	lhu	s6,s0,+00000010
	srli	s8,s6,0000000E
	beq	s8,zero,000000002300B970

l2300B960:
	srai	a4,s6,0000000C
	c.andi	a4,00000003
	c.li	a3,00000001
	bne	a4,a3,000000002300B9C0

l2300B96C:
	ori	a5,a5,+00000001

l2300B970:
	c.lw	s0,8(a4)
	lui	a3,00008000
	c.addi	a3,FFFFFFFF
	sub	a2,a4,a5
	c.and	a2,a3
	lui	a1,00004000
	bgeu	a1,a2,000000002300B9D0

l2300B986:
	sub	a4,a5,a4
	c.and	a4,a3
	c.beqz	a4,000000002300B9D0

l2300B98E:
	bne	s8,zero,000000002300B9CE

l2300B992:
	c.li	s1,00000001

l2300B994:
	lui	a5,0004200E
	lbu	a5,a5,+0000012A
	csrrw	zero,mstatus,zero
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
	c.lwsp	s0,0000011C
	c.lwsp	tp,0000013C
	c.lwsp	zero,0000015C
	c.lwsp	t3,0000006C
	c.addi16sp	00000050
	c.jr	ra

l2300B9C0:
	c.bnez	a4,000000002300B970

l2300B9C2:
	lui	a0,00008000
	c.addi	a5,00000001
	c.addi	a0,FFFFFFFE
	c.and	a5,a0
	c.j	000000002300B970

l2300B9CE:
	c.sw	s0,8(a5)

l2300B9D0:
	c.li	a5,00000001
	bgeu	a5,s8,000000002300BA06

l2300B9D6:
	c.lw	s0,12(a2)
	c.lw	s0,8(a5)
	lui	a3,00008000
	c.addi	a3,FFFFFFFF
	sub	a4,a2,a5
	lui	a1,00004000
	c.and	a4,a3
	bgeu	a1,a4,000000002300B9F6

l2300B9EE:
	c.sub	a5,a2
	c.and	a5,a3
	sub	a4,zero,a5

l2300B9F6:
	lhu	a5,s0,+00000012
	addi	a3,zero,+00000271
	srl	a5,a5,a3
	blt	a4,a5,000000002300B992

l2300BA06:
	lw	s1,s5,+00000008
	lw	a2,s5,+00000000
	c.bnez	s1,000000002300BA12

l2300BA10:
	c.mv	s1,a2

l2300BA12:
	srai	s6,s6,0000000C
	lui	s10,00008000
	andi	s6,s6,+00000003
	c.li	s2,00000000
	c.li	s9,00000000
	c.li	s7,00000000
	c.addi	s10,FFFFFFFF
	c.li	s11,00000001

l2300BA28:
	c.beqz	s1,000000002300BA6E

l2300BA2A:
	c.mv	a1,s1
	c.mv	a0,s0
	c.swsp	a2,00000084
	jal	ra,000000002300B2EC
	c.beqz	a0,000000002300BA6E

l2300BA36:
	c.li	a6,00000005
	c.lwsp	a2,00000084
	lui	a7,00004000
	addi	a3,zero,+00000271
	beq	a0,a6,000000002300BAF8

l2300BA46:
	lbu	a4,s0,+00000016
	lbu	a5,s1,+00000016
	bgeu	a5,a4,000000002300BAC2

l2300BA52:
	lw	a5,s5,+00000008
	beq	a5,s1,000000002300BAC2

l2300BA5A:
	bne	s2,zero,000000002300BA60

l2300BA5E:
	c.mv	s9,s1

l2300BA60:
	c.addi	s2,00000001
	andi	a0,a0,+000000FD
	andi	s2,s2,+000000FF
	bne	a0,s11,000000002300BB50

l2300BA6E:
	beq	s2,zero,000000002300BAA0

l2300BA72:
	addi	a2,s2,-00000001
	andi	a2,a2,+000000FF
	c.mv	a1,s9
	addi	a0,s4,-000000FC
	jal	ra,000000002300C286
	addi	s6,s5,+0000000C

l2300BA88:
	lw	s1,s9,+00000000
	c.addi	s2,FFFFFFFF
	c.mv	a1,s9
	c.mv	a0,s6
	andi	s2,s2,+000000FF
	jal	ra,000000002300C1E6
	c.mv	s9,s1
	bne	s2,zero,000000002300BA88

l2300BAA0:
	beq	s7,zero,000000002300BB42

l2300BAA4:
	c.mv	a2,s0
	c.mv	a1,s7
	addi	a0,s4,-000000FC
	jal	ra,000000002300C3C4

l2300BAB0:
	lw	a5,s5,+0000000C
	c.li	s1,00000000
	beq	a5,zero,000000002300B994

l2300BABA:
	c.mv	a0,s0
	jal	ra,000000002300B3A6
	c.j	000000002300B994

l2300BAC2:
	beq	s8,zero,000000002300B992

l2300BAC6:
	lhu	a5,s1,+00000012
	lhu	a4,s1,+00000014
	c.lw	s1,8(a1)
	c.add	a4,a5
	srl	a5,a4,a3
	and	a4,a4,a3
	c.add	a5,a1
	lhu	a1,s0,+00000014
	bgeu	a1,a4,000000002300BAE6

l2300BAE4:
	c.addi	a5,00000001

l2300BAE6:
	bne	s6,s11,000000002300BB34

l2300BAEA:
	ori	a5,a5,+00000001

l2300BAEE:
	and	a5,a5,s10
	c.sw	s0,8(a5)
	c.li	s2,00000000
	c.li	s9,00000000

l2300BAF8:
	bgeu	s11,s8,000000002300BB22

l2300BAFC:
	c.lw	s0,12(a1)
	c.lw	s0,8(a5)
	sub	a4,a1,a5
	and	a4,a4,s10
	bgeu	a7,a4,000000002300BB16

l2300BB0C:
	c.sub	a5,a1
	and	a5,a5,s10
	sub	a4,zero,a5

l2300BB16:
	lhu	a5,s0,+00000012
	srl	a5,a5,a3
	blt	a4,a5,000000002300B992

l2300BB22:
	lw	a5,s5,+00000008
	beq	a5,s1,000000002300BB3E

l2300BB2A:
	bne	s2,zero,000000002300BB30

l2300BB2E:
	c.mv	s7,s1

l2300BB30:
	c.lw	s1,0(s1)
	c.j	000000002300BA28

l2300BB34:
	bne	s6,zero,000000002300BAEE

l2300BB38:
	c.addi	a5,00000001
	c.andi	a5,FFFFFFFE
	c.j	000000002300BAEE

l2300BB3E:
	c.mv	s1,a2
	c.j	000000002300BA28

l2300BB42:
	c.mv	a1,s0
	addi	a0,s4,-000000FC
	c.jal	000000002300C220
	jal	ra,000000002300B7B4
	c.j	000000002300BAB0

l2300BB50:
	bltu	s11,s8,000000002300BAFC

l2300BB54:
	c.j	000000002300BB2A

;; ea_elt_remove: 2300BB56
;;   Called from:
;;     23010028 (in lld_evt_elt_delete)
;;     23010AEC (in lld_evt_schedule_next)
;;     230117DC (in lld_evt_end_isr)
ea_elt_remove proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	csrrs	s2,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.bnez	a0,000000002300BB7C

l2300BB6A:
	c.li	a0,00000000

l2300BB6C:
	csrrw	zero,mstatus,zero
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2300BB7C:
	lui	a5,00042011
	addi	s1,a5,-000000FC
	c.lw	s1,8(a4)
	bne	a4,a0,000000002300BB90

l2300BB8A:
	sw	zero,s1,+00000008
	c.j	000000002300BB6A

l2300BB90:
	c.lw	s1,0(a4)
	c.mv	s0,a0
	bne	a0,a4,000000002300BBA4

l2300BB98:
	addi	a0,a5,-000000FC
	c.jal	000000002300C252
	jal	ra,000000002300B7B4
	c.j	000000002300BB6A

l2300BBA4:
	c.mv	a1,a0
	c.li	a2,00000000
	addi	a0,a5,-000000FC
	c.jal	000000002300C286
	c.bnez	a0,000000002300BB6A

l2300BBB0:
	c.li	a2,00000000
	c.mv	a1,s0
	addi	a0,s1,+0000000C
	c.jal	000000002300C286
	c.bnez	a0,000000002300BB6A

l2300BBBC:
	c.li	a0,00000002
	c.j	000000002300BB6C

;; ea_finetimer_isr: 2300BBC0
;;   Called from:
;;     2300B1DA (in rwble_isr)
;;     2300B1EA (in rwble_isr)
ea_finetimer_isr proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	lui	s2,00042011
	c.swsp	s3,0000008C
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	addi	a5,s2,-000000FC
	c.lw	a5,8(s1)
	c.lw	a5,0(s0)
	jal	ra,000000002300B774
	c.mv	s5,a0
	addi	s3,s2,-000000FC
	c.beqz	s1,000000002300BC2C

l2300BBEC:
	c.beqz	s0,000000002300BC68

l2300BBEE:
	lbu	a4,s1,+00000016
	lbu	a5,s0,+00000016
	bgeu	a4,a5,000000002300BC06

l2300BBFA:
	lhu	a5,s0,+00000010
	slli	a4,a5,00000014
	blt	a4,zero,000000002300BC9C

l2300BC06:
	lbu	a4,s1,+00000017

l2300BC0A:
	c.lw	s0,8(a5)
	lui	a3,00004000
	sub	a5,a5,s5
	c.slli	a5,05
	c.srli	a5,00000005
	bltu	a3,a5,000000002300BC20

l2300BC1C:
	blt	a4,a5,000000002300BC2C

l2300BC20:
	c.lw	s1,32(a5)
	c.beqz	a5,000000002300BC28

l2300BC24:
	c.mv	a0,s1
	c.jalr	a5

l2300BC28:
	sw	zero,s3,+00000008

l2300BC2C:
	c.beqz	s0,000000002300BC68

l2300BC2E:
	lui	s4,00008000
	lui	s6,00004000
	c.addi	s4,FFFFFFFF
	c.addi	s6,FFFFFFFE
	addi	s7,s3,+0000000C

l2300BC3E:
	lbu	a4,s0,+00000019
	c.lw	s0,8(a5)
	c.sub	a5,a4
	and	a5,a5,s4
	sub	a4,a5,s5
	and	a4,a4,s4
	bgeu	s6,a4,000000002300BCA2

l2300BC56:
	addi	a0,s2,-000000FC
	c.jal	000000002300C252
	c.mv	a1,a0
	c.mv	a0,s7
	c.jal	000000002300C1E6
	lw	s0,s3,+00000000
	c.bnez	s0,000000002300BC3E

l2300BC68:
	lw	a5,s3,+0000000C
	c.beqz	a5,000000002300BC84

l2300BC6E:
	lui	a3,00028000
	c.lw	a3,0(a5)
	lui	a4,000F0000
	c.addi	a4,FFFFFFFF
	c.and	a5,a4
	lui	a4,00010000
	c.or	a5,a4
	c.sw	a3,0(a5)

l2300BC84:
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
	jal	zero,000000002300B7B4

l2300BC9C:
	lbu	a4,s1,+00000018
	c.j	000000002300BC0A

l2300BCA2:
	bne	a5,s5,000000002300BC68

l2300BCA6:
	addi	a0,s2,-000000FC
	c.jal	000000002300C252
	lw	a5,s3,+00000008
	c.mv	s0,a0
	c.beqz	a5,000000002300BCBC

l2300BCB4:
	c.lw	a5,32(a5)
	c.beqz	a5,000000002300BCBC

l2300BCB8:
	c.mv	a0,s1
	c.jalr	a5

l2300BCBC:
	c.lw	s0,28(a5)
	sw	s0,s3,+00000008
	c.beqz	a5,000000002300BC68

l2300BCC4:
	c.mv	a0,s0
	c.jalr	a5
	c.j	000000002300BC68

;; ea_interval_duration_req: 2300BCCA
;;   Called from:
;;     23010F18 (in lld_evt_update_create)
;;     230111D6 (in lld_evt_move_to_slave)
;;     230134BA (in lld_scan_start)
;;     23013734 (in lld_con_start)
;;     23013E84 (in lld_con_update_after_param_req)
;;     230140E2 (in lld_con_param_rsp)
;;     2301420C (in lld_con_param_req)
ea_interval_duration_req proc
	lhu	a3,a0,+00000002
	sh	a3,a1,+00000000
	lhu	a6,a0,+00000000
	bgeu	a6,a3,000000002300BD0E

l2300BCDA:
	lui	a5,00042011
	c.lui	a4,00010000
	lw	a2,a5,-000000E8
	c.addi	a4,FFFFFFFF
	c.li	a5,00000000

l2300BCE8:
	c.bnez	a2,000000002300BD1C

l2300BCEA:
	c.li	a2,00000001
	bltu	a2,a5,000000002300BD42

l2300BCF0:
	lbu	a4,a0,+0000000A
	c.beqz	a4,000000002300BD70

l2300BCF6:
	xor	a5,a3,a4

l2300BCFA:
	add	a5,a4,a5
	c.slli	a5,10
	c.srli	a5,00000010

l2300BD02:
	bltu	a5,a6,000000002300BD0E

l2300BD06:
	bltu	a3,a5,000000002300BD0E

l2300BD0A:
	sh	a5,a1,+00000000

l2300BD0E:
	c.lw	a0,4(a5)
	c.li	a4,00000002
	bgeu	a5,a4,000000002300BD18

l2300BD16:
	c.li	a5,00000002

l2300BD18:
	c.sw	a1,4(a5)
	c.jr	ra

l2300BD1C:
	lhu	t1,a2,+0000000A
	lhu	a7,a0,+00000010
	c.addi	a5,00000001
	andi	a5,a5,+000000FF
	beq	t1,a7,000000002300BD3E

l2300BD2E:
	lhu	a7,a2,+00000004
	bgeu	a4,a7,000000002300BD38

l2300BD36:
	c.mv	a7,a4

l2300BD38:
	slli	a4,a7,00000010
	c.srli	a4,00000010

l2300BD3E:
	c.lw	a2,0(a2)
	c.j	000000002300BCE8

l2300BD42:
	bltu	a3,a4,000000002300BD4C

l2300BD46:
	srl	a5,a3,a4
	c.j	000000002300BCFA

l2300BD4C:
	c.lui	a5,00010000
	c.mv	a2,a3
	c.addi	a5,FFFFFFFF

l2300BD52:
	and	a7,a4,a2
	c.li	t1,00000000
	bne	a7,zero,000000002300BD60

l2300BD5C:
	c.mv	a5,a2
	c.li	t1,00000001

l2300BD60:
	c.addi	a2,FFFFFFFE
	c.slli	a2,10
	c.srli	a2,00000010
	bltu	a2,a6,000000002300BD02

l2300BD6A:
	beq	t1,zero,000000002300BD52

l2300BD6E:
	c.j	000000002300BD02

l2300BD70:
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	c.j	000000002300BD06

;; hci_send_2_host: 2300BD76
;;   Called from:
;;     2300ED5C (in llc_discon_event_complete_send)
;;     2300EE56 (in llc_le_con_cmp_evt_send)
;;     2300F0C8 (in llc_le_ch_sel_algo_evt_send)
;;     2300F30A (in llc_con_update_complete_send)
;;     2300F392 (in llc_ltk_req_send)
;;     2300F3EE (in llc_feats_rd_event_send)
;;     2300F452 (in llc_version_rd_event_send)
;;     2300F482 (in llc_common_cmd_complete_send)
;;     2300F4A8 (in llc_common_cmd_status_send)
;;     2300F4CE (in llc_common_flush_occurred_send)
;;     2300F500 (in llc_common_enc_key_ref_comp_evt_send)
;;     2300F584 (in llc_common_enc_change_evt_send)
;;     2300F5D0 (in llc_common_nb_of_pkt_comp_evt_send)
;;     23014D64 (in llm_end_evt_defer)
;;     23015230 (in llm_le_adv_report_ind)
;;     2301551E (in llm_common_cmd_complete_send)
;;     23015544 (in llm_common_cmd_status_send)
;;     2301652A (in llm_encryption_done)
;;     23017C6A (in fn23017C04)
;;     23018550 (in llcp_length_rsp_handler)
;;     230193B0 (in llcp_length_req_handler)
;;     230196B0 (in llc_auth_payl_real_to_ind_handler)
;;     23019EA4 (in llc_data_ind_handler)
;;     2301A564 (in llm_ecc_result_ind_handler)
;;     2301B052 (in hci_le_rd_chnl_map_cmd_handler)
;;     2301B0A4 (in hci_rd_auth_payl_to_cmd_handler)
;;     2301B11A (in hci_rd_rssi_cmd_handler)
;;     2301B1D6 (in hci_rd_tx_pwr_lvl_cmd_handler)
;;     2301B450 (in hci_wr_auth_payl_to_cmd_handler)
;;     2301B4B2 (in hci_flush_cmd_handler)
;;     2301B774 (in hci_le_rd_rfpath_compensation_cmd_handler)
;;     2301B7AC (in hci_le_rd_trans_pwr_cmd_handler)
;;     2301B7E2 (in hci_rd_buff_size_cmd_handler)
;;     2301B822 (in hci_rd_local_supp_feats_cmd_handler)
;;     2301B86A (in hci_rd_local_supp_cmds_cmd_handler)
;;     2301B8B2 (in hci_rd_local_ver_info_cmd_handler)
;;     2301B8F6 (in hci_rd_bd_addr_cmd_handler)
;;     2301B948 (in hci_le_rd_max_data_len_cmd_handler)
;;     2301B988 (in hci_le_rd_suggted_dft_data_len_cmd_handler)
;;     2301B9CA (in hci_le_rd_supp_states_cmd_handler)
;;     2301B9F8 (in hci_le_rd_wl_size_cmd_handler)
;;     2301BA3A (in hci_le_rd_adv_ch_tx_pw_cmd_handler)
;;     2301BA7E (in hci_le_rd_local_supp_feats_cmd_handler)
;;     2301BAB8 (in hci_le_rd_buff_size_cmd_handler)
;;     2301BD18 (in hci_le_rand_cmd_handler)
;;     2301C2D4 (in hci_le_test_end_cmd_handler)
hci_send_2_host proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	lhu	a3,a0,-00000008
	c.lui	a5,00001000
	addi	a4,a5,-000007FD
	c.mv	s1,a0
	addi	s0,a0,-0000000C
	beq	a3,a4,000000002300BDBE

l2300BD94:
	addi	a5,a5,-000007FC
	beq	a3,a5,000000002300BDFE

l2300BD9C:
	c.lui	a5,FFFFF000
	addi	a5,a5,+000007FF
	c.add	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	a4,00000005
	bltu	a4,a5,000000002300BDEE

l2300BDAE:
	lui	a4,00023073
	c.slli	a5,02
	addi	a4,a4,+000003B8
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5

l2300BDBE:
	lbu	a5,a0,-00000004
	addi	a4,zero,+0000003F
	bltu	a4,a5,000000002300BE04

l2300BDCA:
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	lui	a4,00042019
	srli	a2,a5,00000003
	addi	a4,a4,+00000614
	c.add	a4,a2
	lbu	a4,a4,+00000000
	c.slli	a2,03
	c.sub	a5,a2
	sra	a5,a4,a5
	c.andi	a5,00000001
	c.bnez	a5,000000002300BD9C

l2300BDEE:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002300DCB6

l2300BDFE:
	addi	a5,zero,+0000003E
	c.j	000000002300BDCA

l2300BE04:
	addi	a4,zero,+00000057
	bltu	a4,a5,000000002300BE32

l2300BE0C:
	addi	a5,a5,-00000040
	andi	a5,a5,+000000FF
	lui	a4,00042019
	srli	a3,a5,00000003
	addi	a4,a4,+00000614
	c.add	a4,a3
	lbu	a4,a4,+00000008
	c.slli	a3,03
	c.sub	a5,a3
	sra	a5,a4,a5
	c.andi	a5,00000001
	c.beqz	a5,000000002300BDEE

l2300BE32:
	c.mv	a0,s0
	jal	ra,0000000023016E2E
	c.j	000000002300BE4C
2300BE3A                               85 67 93 87 17 80           .g....
2300BE40 63 96 F6 00 81 45 22 85 EF A0 70 77             c....E"...pw   

l2300BE4C:
	c.li	a5,00000004
	sh	a5,s0,+00000006
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002300DBE2
2300BE62       22 85 EF B0 60 02 D5 B7 03 D6 C4 FF 83 D5   "...`.........
2300BE70 A4 FF 05 65 A1 46 13 05 65 80 EF 10 B0 4F B7 E7 ...e.F..e....O..
2300BE80 00 42 83 A7 C7 13 A6 85 21 46 2A 89 82 97 22 85 .B......!F*...".
2300BE90 EF 10 70 62 13 04 49 FF CA 84 4D BF             ..pb..I...M.   

;; hci_send_2_controller: 2300BE9C
;;   Called from:
;;     2300AEC8 (in blecontroller_main)
hci_send_2_controller proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lhu	a4,a0,-00000008
	c.lui	a5,00001000
	addi	a3,a5,-000007FB
	c.mv	s0,a0
	beq	a4,a3,000000002300BED0

l2300BEB2:
	addi	a5,a5,-000007F9
	bne	a4,a5,000000002300BF0C

l2300BEBA:
	lhu	a5,s0,-00000006
	c.li	a4,00000001
	bltu	a4,a5,000000002300BF0C

l2300BEC4:
	c.slli	a5,08
	ori	a5,a5,+00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.j	000000002300BEF8

l2300BED0:
	lhu	a0,a0,-00000004
	jal	ra,000000002301698A
	c.beqz	a0,000000002300BF0C

l2300BEDA:
	lbu	a5,a0,+00000002
	c.li	a4,00000008
	c.andi	a5,0000000F
	bltu	a4,a5,000000002300BF0C

l2300BEE6:
	lui	a4,00023073
	c.slli	a5,02
	addi	a4,a4,+000003D0
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5
2300BEF6                   81 47                               .G       

l2300BEF8:
	sh	a5,s0,+00000FFA
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300DBE2
2300BF08                         8D 47 FD B7                     .G..   

l2300BF0C:
	addi	a0,s0,-0000000C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300DCB6

;; hci_evt_mask_set: 2300BF1A
;;   Called from:
;;     2300BFB4 (in hci_init)
;;     2300BFEA (in hci_reset)
;;     2301BBC4 (in hci_set_evt_mask_page_2_cmd_handler)
;;     2301BBE4 (in hci_set_evt_mask_cmd_handler)
hci_evt_mask_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.li	a5,00000002
	beq	a1,a5,000000002300BF36

l2300BF26:
	c.li	a5,00000003
	beq	a1,a5,000000002300BF4E

l2300BF2C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2300BF36:
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	c.mv	a1,a0
	lui	a0,00042019
	c.li	a2,00000008
	addi	a0,a0,+0000061C
	c.jalr	a5
	c.j	000000002300BF2C

l2300BF4E:
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	lui	s0,00042019
	c.mv	a1,a0
	c.li	a2,00000008
	addi	a0,s0,+00000614
	c.jalr	a5
	lui	a2,00023082
	addi	a5,s0,+00000614
	c.li	a4,00000000
	addi	a2,a2,+000006D4
	c.li	a1,00000008

l2300BF74:
	add	a3,a2,a4
	lbu	a0,a5,+00000000
	lbu	a3,a3,+00000000
	c.addi	a4,00000001
	c.addi	a5,00000001
	c.or	a3,a0
	sb	a3,a5,+00000FFF
	bne	a4,a1,000000002300BF74

l2300BF8E:
	c.j	000000002300BF2C

;; hci_init: 2300BF90
;;   Called from:
;;     2300C0B0 (in rwip_init)
hci_init proc
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.addi	sp,FFFFFFF0
	lui	a0,00042019
	c.swsp	ra,00000084
	c.li	a2,00000010
	c.li	a1,00000000
	addi	a0,a0,+00000614
	c.jalr	a5
	lui	a0,00023082
	c.li	a1,00000003
	addi	a0,a0,+000006CC
	jal	ra,000000002300BF1A
	c.li	a0,00000000
	jal	ra,0000000023016A5C
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002301658E

;; hci_reset: 2300BFC6
;;   Called from:
;;     2300C014 (in rwip_reset)
hci_reset proc
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.addi	sp,FFFFFFF0
	lui	a0,00042019
	c.swsp	ra,00000084
	c.li	a2,00000010
	c.li	a1,00000000
	addi	a0,a0,+00000614
	c.jalr	a5
	lui	a0,00023082
	c.li	a1,00000003
	addi	a0,a0,+000006CC
	jal	ra,000000002300BF1A
	c.li	a0,00000001
	jal	ra,0000000023016A5C
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002301658E

;; rwip_reset: 2300BFFC
;;   Called from:
;;     2300C0D8 (in rwip_init)
;;     2301BC36 (in hci_reset_cmd_handler)
rwip_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	csrrs	s0,mstatus,zero
	csrrci	a5,mstatus,00000008
	jal	ra,000000002300E17E
	c.li	a0,00000001
	jal	ra,000000002300D05E
	jal	ra,000000002300BFC6
	jal	ra,000000002300B132
	lui	a5,00042011
	addi	a5,a5,-000000DC
	addi	a4,zero,+000000C8
	c.sw	a5,8(a4)
	addi	a4,zero,+00000101
	sh	a4,a5,+0000000C
	c.li	a0,00000001
	sw	zero,a5,+00000004
	jal	ra,000000002300B510
	lui	a5,00042019
	lw	a5,a5,+00000624
	c.jalr	a5
	csrrw	zero,mstatus,zero
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; rwip_init: 2300C052
;;   Called from:
;;     2300B066 (in ble_controller_init)
rwip_init proc
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.addi	sp,FFFFFFF0
	lui	a0,00042011
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	addi	s0,a0,-000000DC
	c.li	a2,00000010
	c.li	a1,00000000
	addi	a0,a0,-000000DC
	c.jalr	a5
	jal	ra,000000002300E108
	c.lui	s1,00001000
	lui	a1,00042019
	addi	a2,s1,-00000501
	addi	a1,a1,+00000658
	c.li	a0,00000000
	jal	ra,000000002300D8C2
	lui	a5,0004200E
	lw	a1,a5,-00000450
	addi	a2,s1,+000000B6
	c.li	a0,00000001
	jal	ra,000000002300D8C2
	lui	a0,00042019
	addi	a0,a0,+00000624
	jal	ra,000000002300E398
	c.li	a0,00000000
	jal	ra,000000002300D05E
	jal	ra,000000002300BF90
	jal	ra,000000002300B10C
	c.li	a0,00000000
	jal	ra,000000002300B510
	addi	a5,zero,+000000C8
	c.sw	s0,8(a5)
	addi	a5,zero,+00000101
	sw	zero,s0,+00000004
	sh	a5,s0,+0000000C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002300BFFC

;; rwip_schedule: 2300C0DC
;;   Called from:
;;     2300AECC (in blecontroller_main)
rwip_schedule proc
	lui	a5,00042011
	lhu	a5,a5,-000000D2
	c.andi	a5,00000001
	c.bnez	a5,000000002300C0EC

l2300C0E8:
	jal	zero,000000002300D7E6

l2300C0EC:
	c.jr	ra

;; rwip_wakeup_delay_set: 2300C0EE
;;   Called from:
;;     230129E4 (in lld_sleep_init)
rwip_wakeup_delay_set proc
	lui	a5,000000F4
	addi	a5,a5,+00000240
	c.slli	a0,0F
	srl	a0,a0,a5
	lui	a5,00042011
	sw	a0,a5,+00000F24
	c.jr	ra

;; rwip_prevent_sleep_set: 2300C106
;;   Called from:
;;     2300C12C (in rwip_wakeup)
;;     2300FCC2 (in lld_evt_delete_elt_push)
;;     2300FFD4 (in lld_evt_elt_delete)
;;     230164C4 (in llm_encryption_start)
rwip_prevent_sleep_set proc
	csrrs	a4,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	a5,00042011
	addi	a5,a5,-000000DC
	lhu	a3,a5,+0000000A
	c.or	a0,a3
	sh	a0,a5,+0000000A
	csrrw	zero,mstatus,zero
	c.jr	ra

;; rwip_wakeup: 2300C126
;;   Called from:
;;     2300B1C8 (in rwble_isr)
rwip_wakeup proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,000000002300C106
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023012A06

;; rwip_prevent_sleep_clear: 2300C138
;;   Called from:
;;     2300C17C (in rwip_wakeup_end)
;;     2300FEAC (in lld_evt_init)
;;     230100C6 (in lld_evt_delete_elt_handler)
;;     23016578 (in llm_encryption_done)
rwip_prevent_sleep_clear proc
	csrrs	a4,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	a5,00042011
	addi	a5,a5,-000000DC
	lhu	a3,a5,+0000000A
	xori	a0,a0,-00000001
	c.and	a0,a3
	sh	a0,a5,+0000000A
	csrrw	zero,mstatus,zero
	c.jr	ra

;; rwip_wakeup_end: 2300C15C
;;   Called from:
;;     2300B1D6 (in rwble_isr)
rwip_wakeup_end proc
	lui	a5,00042011
	lhu	a5,a5,-000000D2
	c.andi	a5,00000001
	c.beqz	a5,000000002300C180

l2300C168:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023012ABA
	c.li	a0,00000003
	jal	ra,000000002300D720
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	jal	zero,000000002300C138

l2300C180:
	c.jr	ra

;; rwip_sleep_lpcycles_2_us: 2300C182
;;   Called from:
;;     23012A54 (in lld_sleep_wakeup)
rwip_sleep_lpcycles_2_us proc
	lui	a4,00042011
	addi	a4,a4,-000000DC
	c.lw	a4,4(a5)
	slli	a3,a0,00000008
	c.add	a5,a0
	c.add	a5,a3
	slli	a3,a0,00000003
	c.add	a5,a3
	srli	a3,a5,00000009
	andi	a5,a5,+000001FF
	c.sw	a4,4(a5)
	c.li	a5,0000001E
	add	a0,a0,a5
	c.add	a0,a3
	c.jr	ra

;; rwip_us_2_lpcycles: 2300C1AE
;;   Called from:
;;     230129AA (in lld_sleep_init)
;;     230129B4 (in lld_sleep_init)
;;     230129BE (in lld_sleep_init)
rwip_us_2_lpcycles proc
	lui	a5,000000F4
	addi	a5,a5,+00000240
	c.slli	a0,0F
	srl	a0,a0,a5
	c.jr	ra

;; ble_co_list_init: 2300C1BE
;;   Called from:
;;     2300B522 (in ea_init)
;;     2300B52A (in ea_init)
;;     2300B532 (in ea_init)
;;     2300D06E (in ecc_init)
;;     2300E960 (in em_buf_init)
;;     2300E968 (in em_buf_init)
;;     2300FEB4 (in lld_evt_init)
;;     2300FEBC (in lld_evt_init)
;;     2300FEC4 (in lld_evt_init)
;;     2300FED0 (in lld_evt_init)
;;     2300FF66 (in lld_evt_init_evt)
;;     2300FF6E (in lld_evt_init_evt)
;;     2300FF76 (in lld_evt_init_evt)
;;     2300FF7E (in lld_evt_init_evt)
;;     23011E4C (in lld_pdu_check)
;;     23012606 (in lld_pdu_tx_prog)
;;     23016056 (in llm_init)
;;     230160EE (in llm_init)
;;     230160FA (in llm_init)
;;     23016A84 (in hci_tl_init)
;;     23016A8C (in hci_tl_init)
ble_co_list_init proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002300C1DE

l2300C1D6:
	sw	zero,s0,+00000000
	sw	zero,s0,+00000004

l2300C1DE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ble_co_list_push_back: 2300C1E6
;;   Called from:
;;     2300B5A8 (in ea_interval_insert)
;;     2300BA96 (in ea_elt_insert)
;;     2300BC60 (in ea_finetimer_isr)
;;     2300C3F8 (in ble_co_list_insert_after)
;;     2300CDCA (in ecc_multiplication_event_handler)
;;     2300D4EE (in ecc_generate_key256)
;;     2300DC10 (in ble_ke_msg_send)
;;     2300EA3E (in em_buf_init)
;;     2300EA5C (in em_buf_init)
;;     2300EA76 (in em_buf_init)
;;     2300EBC0 (in em_buf_tx_free)
;;     2300EC08 (in em_buf_tx_free)
;;     2300FA0C (in lld_evt_deferred_elt_push)
;;     2300FA32 (in lld_evt_elt_wait_insert)
;;     2300FC6E (in lld_evt_schedule)
;;     2300FCB6 (in lld_evt_delete_elt_push)
;;     23012002 (in lld_pdu_check)
;;     2301215C (in lld_pdu_data_send)
;;     230121CE (in lld_pdu_tx_push)
;;     23012508 (in lld_pdu_tx_prog)
;;     2301296A (in lld_pdu_rx_handler)
;;     23014BC4 (in llm_util_bl_add)
;;     230150D2 (in llm_le_adv_report_ind)
;;     23017086 (in ble_ke_task_saved_update)
;;     23017216 (in ble_ke_task_schedule)
;;     23017400 (in llc_llcp_send)
;;     2301A5E6 (in llm_enc_req_handler)
;;     2301B5EC (in llc_hci_acl_data_tx_handler)
;;     2301BD46 (in hci_le_enc_cmd_handler)
ble_co_list_push_back proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s0,a1
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002300C210

l2300C204:
	c.lw	s1,0(a5)
	c.bnez	a5,000000002300C21A

l2300C208:
	c.sw	s1,0(s0)

l2300C20A:
	c.sw	s1,4(s0)
	sw	zero,s0,+00000000

l2300C210:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2300C21A:
	c.lw	s1,4(a5)
	c.sw	a5,0(s0)
	c.j	000000002300C20A

;; ble_co_list_push_front: 2300C220
;;   Called from:
;;     2300BB48 (in ea_elt_insert)
ble_co_list_push_front proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002300C248

l2300C23E:
	c.lw	s0,0(a5)
	c.bnez	a5,000000002300C244

l2300C242:
	c.sw	s0,4(s1)

l2300C244:
	c.sw	s1,0(a5)
	c.sw	s0,0(s1)

l2300C248:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; ble_co_list_pop_front: 2300C252
;;   Called from:
;;     2300B5E0 (in ea_sw_isr)
;;     2300BB9C (in ea_elt_remove)
;;     2300BC5A (in ea_finetimer_isr)
;;     2300BCAA (in ea_finetimer_isr)
;;     2300CC74 (in ecc_multiplication_event_handler)
;;     2300D088 (in ecc_init)
;;     2300DEAC (in ble_ke_timer_schedule)
;;     2300E054 (in ble_ke_timer_clear)
;;     2300E19A (in ble_ke_flush)
;;     2300E1A8 (in ble_ke_flush)
;;     2300E1B6 (in ble_ke_flush)
;;     2300FA52 (in lld_evt_deferred_elt_pop)
;;     2300FAFA (in lld_evt_elt_wait_get)
;;     2300FDAC (in lld_evt_deffered_elt_handler)
;;     2300FDBC (in lld_evt_deffered_elt_handler)
;;     2300FE88 (in lld_evt_init)
;;     2300FE94 (in lld_evt_init)
;;     2300FF34 (in lld_evt_init)
;;     230117D6 (in lld_evt_end_isr)
;;     23011DBA (in lld_pdu_tx_flush_list)
;;     23011EC4 (in lld_pdu_check)
;;     23011F1A (in lld_pdu_check)
;;     23011F26 (in lld_pdu_check)
;;     23011FD4 (in lld_pdu_check)
;;     23012360 (in lld_pdu_tx_prog)
;;     230126A8 (in lld_pdu_tx_flush)
;;     23012D1C (in lld_util_flush_list)
;;     23015594 (in llm_test_mode_start_tx)
;;     230155A6 (in llm_test_mode_start_tx)
;;     230160A4 (in llm_init)
;;     230164DC (in llm_encryption_done)
;;     230171A0 (in ble_ke_task_schedule)
;;     23067598 (in bt_onchiphci_send)
ble_co_list_pop_front proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	a1,a0
	c.addi4spn	a0,0000000C
	c.jalr	a5
	c.beqz	a0,000000002300C274

l2300C26A:
	c.lwsp	a2,00000044

l2300C26C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2300C274:
	c.lw	s0,0(a0)
	c.swsp	a0,00000084
	c.beqz	a0,000000002300C26C

l2300C27A:
	c.lw	a0,0(a5)
	c.sw	s0,0(a5)
	c.bnez	a5,000000002300C26C

l2300C280:
	sw	zero,s0,+00000004
	c.j	000000002300C26C

;; ble_co_list_extract: 2300C286
;;   Called from:
;;     2300B5B8 (in ea_interval_remove)
;;     2300BA80 (in ea_elt_insert)
;;     2300BBAC (in ea_elt_remove)
;;     2300BBB8 (in ea_elt_remove)
;;     2300FAE0 (in lld_evt_elt_wait_get)
;;     23010034 (in lld_evt_elt_delete)
;;     2301010A (in lld_evt_delete_elt_handler)
;;     23012412 (in lld_pdu_tx_prog)
;;     23014C1C (in llm_util_bl_rem)
ble_co_list_extract proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.mv	s2,a1
	c.mv	s0,a2
	c.mv	a3,a2
	sb	zero,sp,+0000000F
	c.mv	a2,a1
	c.mv	a1,a0
	addi	a0,sp,+0000000F
	c.jalr	a5
	c.beqz	a0,000000002300C2C0

l2300C2B0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	lbu	a0,sp,+0000000F
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2300C2C0:
	c.lw	s1,0(a5)
	c.li	a4,00000000

l2300C2C4:
	c.bnez	a5,000000002300C2CE

l2300C2C6:
	lbu	a3,sp,+0000000F
	c.beqz	a3,000000002300C2B0

l2300C2CC:
	c.j	000000002300C2D8

l2300C2CE:
	bne	a5,s2,000000002300C2EA

l2300C2D2:
	c.li	a3,00000001
	sb	a3,sp,+0000000F

l2300C2D8:
	c.lw	a5,0(a3)
	c.bnez	s0,000000002300C2F0

l2300C2DC:
	c.bnez	a4,000000002300C2F6

l2300C2DE:
	c.sw	s1,0(a3)

l2300C2E0:
	c.lw	s1,4(a3)
	bne	a3,a5,000000002300C2B0

l2300C2E6:
	c.sw	s1,4(a4)
	c.j	000000002300C2B0

l2300C2EA:
	c.mv	a4,a5
	c.lw	a5,0(a5)
	c.j	000000002300C2C4

l2300C2F0:
	c.addi	s0,FFFFFFFF
	c.mv	a5,a3
	c.j	000000002300C2D8

l2300C2F6:
	c.sw	a4,0(a3)
	c.j	000000002300C2E0

;; ble_co_list_extract_after: 2300C2FA
;;   Called from:
;;     2300B472 (in ea_elt_cancel)
ble_co_list_extract_after proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	s2,a2
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002300C32E

l2300C31E:
	c.bnez	s1,000000002300C33A

l2300C320:
	c.lw	s0,0(a5)
	c.lw	a5,0(a5)
	c.sw	s0,0(a5)

l2300C326:
	c.lw	s0,4(a5)
	bne	a5,s2,000000002300C32E

l2300C32C:
	c.sw	s0,4(s1)

l2300C32E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2300C33A:
	lw	a5,s2,+00000000
	c.sw	s1,0(a5)
	c.j	000000002300C326

;; ble_co_list_find: 2300C342
;;   Called from:
;;     2300FFBC (in lld_evt_elt_delete)
;;     23010AD6 (in lld_evt_schedule_next)
ble_co_list_find proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.mv	s0,a1
	c.mv	a2,a1
	c.mv	a1,a0
	addi	a0,sp,+0000000F
	c.jalr	a5
	c.beqz	a0,000000002300C370

l2300C362:
	lbu	a0,sp,+0000000F

l2300C366:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2300C370:
	c.lw	s1,0(a0)

l2300C372:
	beq	a0,s0,000000002300C378

l2300C376:
	c.bnez	a0,000000002300C382

l2300C378:
	sub	a0,s0,a0
	sltiu	a0,a0,+00000001
	c.j	000000002300C366

l2300C382:
	c.lw	a0,0(a0)
	c.j	000000002300C372

;; ble_co_list_merge: 2300C386
;;   Called from:
;;     23011FE6 (in lld_pdu_check)
;;     23012600 (in lld_pdu_tx_prog)
ble_co_list_merge proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002300C3B4

l2300C3A4:
	c.lw	s0,0(a4)
	c.lw	s1,0(a5)
	c.bnez	a4,000000002300C3BE

l2300C3AA:
	c.sw	s0,0(a5)

l2300C3AC:
	c.lw	s1,4(a5)
	c.sw	s0,4(a5)
	sw	zero,s1,+00000000

l2300C3B4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2300C3BE:
	c.lw	s0,4(a4)
	c.sw	a4,0(a5)
	c.j	000000002300C3AC

;; ble_co_list_insert_after: 2300C3C4
;;   Called from:
;;     2300B47E (in ea_elt_cancel)
;;     2300BAAC (in ea_elt_insert)
ble_co_list_insert_after proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a0
	c.mv	s0,a1
	c.mv	s1,a2
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002300C418

l2300C3E8:
	c.bnez	s0,000000002300C3FC

l2300C3EA:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s1
	c.mv	a0,s2
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002300C1E6

l2300C3FC:
	lw	a5,s2,+00000000

l2300C400:
	beq	a5,s0,000000002300C40A

l2300C404:
	c.beqz	a5,000000002300C3EA

l2300C406:
	c.lw	a5,0(a5)
	c.j	000000002300C400

l2300C40A:
	c.lw	s0,0(a5)
	c.bnez	a5,000000002300C412

l2300C40E:
	sw	s1,s2,+00000004

l2300C412:
	c.lw	s0,0(a5)
	c.sw	s1,0(a5)
	c.sw	s0,0(s1)

l2300C418:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; ble_co_list_size: 2300C424
;;   Called from:
;;     2300DC62 (in ble_ke_msg_get_sent_num)
;;     230122A0 (in lld_pdu_tx_prog)
;;     230150A8 (in llm_le_adv_report_ind)
ble_co_list_size proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	a1,a0
	sh	zero,sp,+0000000E
	addi	a0,sp,+0000000E
	c.jalr	a5
	c.beqz	a0,000000002300C44E

l2300C442:
	lhu	a0,sp,+0000000E

l2300C446:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2300C44E:
	c.lw	s0,0(a5)

l2300C450:
	lhu	a0,sp,+0000000E
	c.beqz	a5,000000002300C446

l2300C456:
	c.addi	a0,00000001
	c.lw	a5,0(a5)
	sh	a0,sp,+0000000E
	c.j	000000002300C450

;; co_bdaddr_set: 2300C460
;;   Called from:
;;     2300AFD8 (in bdaddr_init)
co_bdaddr_set proc
	lui	a5,0004200E
	lw	t1,a5,+0000013C
	c.mv	a1,a0
	lui	a0,0004200E
	c.li	a2,00000006
	addi	a0,a0,+00000150
	c.jr	t1

;; co_bdaddr_compare: 2300C476
;;   Called from:
;;     23012F32 (in lld_init)
;;     230148FE (in llm_util_bd_addr_wl_position)
;;     23014942 (in llm_util_bd_addr_wl_position)
;;     2301495C (in llm_util_check_address_validity)
;;     23014AB8 (in llm_util_bl_check)
;;     23015252 (in llm_le_adv_report_ind)
;;     23015AB8 (in llm_set_adv_en)
;;     23015EAE (in llm_set_scan_en)
;;     2301639E (in llm_create_con)
;;     2301C1F8 (in hci_le_set_rand_add_cmd_handler)
co_bdaddr_compare proc
	c.li	a5,00000000
	c.li	a2,00000006

l2300C47A:
	add	a3,a0,a5
	add	a4,a1,a5
	lbu	a3,a3,+00000000
	lbu	a4,a4,+00000000
	bne	a3,a4,000000002300C498

l2300C48E:
	c.addi	a5,00000001
	bne	a5,a2,000000002300C47A

l2300C494:
	c.li	a0,00000001
	c.jr	ra

l2300C498:
	c.li	a0,00000000
	c.jr	ra

;; Mont2GF: 2300C49C
;;   Called from:
;;     2300CF22 (in ecc_multiplication_event_handler)
;;     2300CF28 (in ecc_multiplication_event_handler)
;;     2300CF86 (in ecc_multiplication_event_handler)
Mont2GF proc
	c.addi	sp,FFFFFFF0
	lui	a1,00023074
	c.swsp	s0,00000004
	c.li	a5,00000000
	c.mv	s0,a0
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,0000000D
	addi	a1,a1,-000003C4
	c.li	a0,00000008
	c.swsp	ra,00000084
	jal	ra,000000002300E57E
	c.li	a3,00000000
	c.li	a2,00000006
	c.li	a1,00000003
	c.li	a0,00000001
	jal	ra,000000002300E6AE
	c.li	a3,00000000
	c.li	a2,00000007
	c.li	a1,00000003
	c.li	a0,00000001
	jal	ra,000000002300E6AE
	c.mv	a4,s0
	c.li	a6,0000000D
	c.li	a5,00000003
	c.li	a3,00000003
	c.li	a2,00000003
	c.li	a1,00000004
	c.li	a0,00000000
	jal	ra,000000002300E8AC
	c.mv	a2,s0
	c.li	a3,00000004
	c.li	a1,00000003
	c.li	a0,00000000
	c.li	a6,00000000
	c.li	a5,00000003
	c.li	a4,00000003
	jal	ra,000000002300E75E
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a3,00000000
	c.li	a2,00000003
	c.li	a1,00000004
	c.li	a0,00000001
	c.addi	sp,00000010
	jal	zero,000000002300E6AE

;; getFinalPoint: 2300C50A
;;   Called from:
;;     2300CF8C (in ecc_multiplication_event_handler)
;;     2300CF92 (in ecc_multiplication_event_handler)
getFinalPoint proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a3,00000000
	c.mv	s0,a0
	c.li	a2,00000006
	c.li	a1,00000003
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,000000002300E6AE
	c.li	a3,00000000
	c.li	a2,00000007
	c.li	a1,00000003
	c.li	a0,00000001
	jal	ra,000000002300E6AE
	c.mv	a4,s0
	c.li	a6,0000000E
	c.li	a5,00000003
	c.li	a3,00000003
	c.li	a2,00000003
	c.li	a1,00000004
	c.li	a0,00000000
	jal	ra,000000002300E8AC
	c.mv	a2,s0
	c.li	a3,00000004
	c.li	a1,00000003
	c.li	a0,00000000
	c.li	a6,00000000
	c.li	a5,00000003
	c.li	a4,00000003
	jal	ra,000000002300E75E
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a3,00000000
	c.li	a2,00000003
	c.li	a1,00000004
	c.li	a0,00000001
	c.addi	sp,00000010
	jal	zero,000000002300E6AE

;; pka_point_addition.constprop.3: 2300C560
;;   Called from:
;;     2300CC40 (in pka_addition_win.constprop.1)
;;     2300CDBA (in ecc_multiplication_event_handler)
pka_point_addition.constprop.3 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	addi	s1,a0,+00000002
	c.swsp	s2,00000010
	c.swsp	s5,00000088
	andi	s1,s1,+000000FF
	c.mv	s2,a0
	c.mv	s5,a1
	addi	a4,a1,+00000001
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.mv	s3,a2
	c.mv	a6,s1
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a5,00000003
	andi	a4,a4,+000000FF
	c.li	a3,00000003
	c.li	a2,0000000D
	c.li	a1,00000003
	c.li	a0,00000000
	addi	s0,s2,+00000001
	addi	s4,s5,+00000002
	c.swsp	ra,00000094
	andi	s0,s0,+000000FF
	jal	ra,000000002300E7B4
	andi	s4,s4,+000000FF
	c.mv	a6,s4
	c.mv	a4,s0
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a5,00000003
	c.li	a3,00000003
	c.li	a2,0000000E
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E7B4
	c.mv	a6,s1
	c.mv	a4,s5
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a5,00000003
	c.li	a3,00000003
	c.li	a2,0000000F
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E7B4
	c.mv	a6,s4
	c.mv	a4,s2
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a5,00000003
	c.li	a3,00000003
	c.li	a2,00000010
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E7B4
	c.li	a7,00000003
	c.swsp	zero,00000000
	c.li	a6,0000000E
	c.li	a5,00000003
	c.li	a4,0000000D
	c.li	a3,00000003
	c.li	a2,0000000D
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E71E
	c.li	a7,00000003
	c.swsp	zero,00000000
	c.li	a6,00000010
	c.li	a5,00000003
	c.li	a4,0000000F
	c.li	a3,00000003
	c.li	a2,0000000F
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E71E
	c.mv	a6,s4
	c.mv	a4,s1
	c.mv	a2,s2
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a5,00000003
	c.li	a3,00000003
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E7B4
	c.mv	a2,s0
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a6,0000000F
	c.li	a5,00000003
	c.li	a4,0000000F
	c.li	a3,00000003
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E7B4
	c.mv	a4,s0
	c.mv	a2,s1
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a6,0000000F
	c.li	a5,00000003
	c.li	a3,00000003
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E7B4
	c.li	a7,00000003
	c.swsp	zero,00000000
	c.li	a6,0000000D
	c.li	a5,00000003
	c.li	a4,0000000D
	c.li	a3,00000003
	c.li	a2,00000011
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E7B4
	c.mv	a6,s2
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a5,00000003
	c.li	a4,00000011
	c.li	a3,00000003
	c.li	a2,00000011
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E7B4
	c.mv	a6,s1
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a5,00000003
	c.li	a4,00000011
	c.li	a3,00000003
	c.li	a2,00000011
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E71E
	c.mv	a6,s0
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a5,00000003
	c.li	a4,00000009
	c.li	a3,00000003
	c.li	a2,00000012
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E7B4
	c.li	a7,00000003
	c.swsp	zero,00000000
	c.li	a6,00000010
	c.li	a5,00000003
	c.li	a4,00000012
	c.li	a3,00000003
	c.li	a2,00000012
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E7B4
	c.li	a7,00000003
	c.swsp	zero,00000000
	c.li	a6,00000012
	c.li	a5,00000003
	c.li	a4,00000011
	c.li	a3,00000003
	c.li	a2,00000012
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E71E
	c.mv	a4,s0
	c.mv	a2,s0
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a6,00000010
	c.li	a5,00000003
	c.li	a3,00000003
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E7B4
	c.mv	a4,s1
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a6,0000000E
	c.li	a5,00000003
	c.li	a3,00000003
	c.li	a2,0000000E
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E7B4
	addi	a2,s3,+00000002
	c.mv	a6,s2
	c.mv	a4,s1
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a5,00000003
	c.li	a3,00000003
	andi	a2,a2,+000000FF
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E7B4
	c.mv	a2,s3
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a6,00000012
	c.li	a5,00000003
	c.li	a4,0000000F
	c.li	a3,00000003
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E7B4
	c.mv	a4,s0
	c.mv	a2,s0
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a6,00000012
	c.li	a5,00000003
	c.li	a3,00000003
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E71E
	c.mv	a6,s0
	c.mv	a2,s0
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a5,00000003
	c.li	a4,0000000D
	c.li	a3,00000003
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E7B4
	addi	a2,s3,+00000001
	c.mv	a4,s0
	c.swsp	zero,00000000
	c.li	a7,00000003
	c.li	a6,0000000E
	c.li	a5,00000003
	c.li	a3,00000003
	andi	a2,a2,+000000FF
	c.li	a1,00000003
	c.li	a0,00000001
	jal	ra,000000002300E71E
	jal	ra,000000002300E5DE
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	jal	zero,000000002300E560

;; pka_read_result.constprop.4: 2300C79C
;;   Called from:
;;     2300CC48 (in pka_addition_win.constprop.1)
;;     2300CE12 (in ecc_multiplication_event_handler)
;;     2300CE3E (in ecc_multiplication_event_handler)
;;     2300D4D6 (in ecc_generate_key256)
pka_read_result.constprop.4 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	a2,a0
	c.mv	s1,a0
	c.li	a3,00000008
	c.li	a0,00000003
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a1
	jal	ra,000000002300E5F8
	addi	a1,s0,+00000001
	addi	a2,s1,+00000028
	c.li	a3,00000008
	andi	a1,a1,+000000FF
	c.li	a0,00000003
	jal	ra,000000002300E5F8
	addi	a1,s0,+00000002
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	addi	a2,s1,+00000050
	c.lwsp	tp,00000024
	c.li	a3,00000008
	andi	a1,a1,+000000FF
	c.li	a0,00000003
	c.addi	sp,00000010
	jal	zero,000000002300E5F8

;; pka_cp_x2_to_x1.constprop.5: 2300C7E2
;;   Called from:
;;     2300CC2C (in pka_addition_win.constprop.1)
;;     2300CD86 (in ecc_multiplication_event_handler)
pka_cp_x2_to_x1.constprop.5 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	a4,a1
	c.mv	a2,a0
	c.li	a3,00000003
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	ra,00000084
	jal	ra,000000002300E6E2
	addi	a4,s1,+00000001
	addi	a2,s0,+00000001
	andi	a4,a4,+000000FF
	c.li	a3,00000003
	andi	a2,a2,+000000FF
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E6E2
	addi	a2,s0,+00000002
	c.lwsp	s0,00000004
	addi	a4,s1,+00000002
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	andi	a4,a4,+000000FF
	c.li	a3,00000003
	andi	a2,a2,+000000FF
	c.li	a1,00000003
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,000000002300E6E2

;; pka_point_inf_check.constprop.7: 2300C838
;;   Called from:
;;     2300C96A (in pka_point_double.constprop.2)
;;     2300CC08 (in pka_addition_win.constprop.1)
;;     2300CC12 (in pka_addition_win.constprop.1)
;;     2300CD66 (in ecc_multiplication_event_handler)
;;     2300CD6E (in ecc_multiplication_event_handler)
pka_point_inf_check.constprop.7 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.mv	s2,a0
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.mv	a2,a0
	c.mv	s4,a1
	addi	a0,sp,+0000000F
	c.li	a4,00000008
	c.li	a3,00000003
	c.li	a1,00000003
	addi	s3,s2,+00000001
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s5,00000088
	andi	s3,s3,+000000FF
	jal	ra,000000002300E834
	c.mv	a2,s3
	addi	a0,sp,+0000000F
	c.li	a4,00000013
	c.li	a3,00000003
	c.li	a1,00000003
	lbu	s5,sp,+0000000F
	jal	ra,000000002300E834
	lbu	s1,sp,+0000000F
	c.mv	a4,s3
	addi	a0,sp,+0000000F
	c.li	a3,00000003
	c.li	a2,00000014
	c.li	a1,00000003
	jal	ra,000000002300E834
	lbu	s0,sp,+0000000F
	addi	a2,s2,+00000002
	c.slli	s1,01
	addi	a0,sp,+0000000F
	c.slli	s1,18
	c.li	a4,00000008
	c.li	a3,00000003
	andi	a2,a2,+000000FF
	c.li	a1,00000003
	jal	ra,000000002300E834
	c.srai	s1,00000018
	c.slli	s0,02
	lbu	a5,sp,+0000000F
	c.or	s0,s1
	or	s0,s0,s5
	c.slli	s0,18
	c.srai	s0,00000018
	c.slli	a5,03
	c.or	s0,a5
	c.slli	s0,18
	c.srai	s0,00000018
	c.addi	s0,FFFFFFF1
	sltiu	s0,s0,+00000001
	sb	s0,s4,+00000000
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

;; GF2Mont.constprop.8: 2300C8E0
;;   Called from:
;;     2300D1DA (in ecc_generate_key256)
;;     2300D1E2 (in ecc_generate_key256)
GF2Mont.constprop.8 proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a1
	lui	a1,00023074
	c.swsp	s1,00000080
	c.li	a5,00000000
	c.mv	s1,a0
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000000
	addi	a1,a1,-00000384
	c.li	a0,00000008
	c.swsp	ra,00000084
	jal	ra,000000002300E57E
	c.mv	a1,s1
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000001
	c.li	a0,00000008
	jal	ra,000000002300E57E
	addi	a5,zero,+00000100
	c.li	a4,00000001
	c.li	a3,00000003
	c.li	a2,00000001
	c.li	a1,00000004
	c.li	a0,00000000
	jal	ra,000000002300E8DA
	c.li	a6,00000000
	c.li	a5,00000003
	c.li	a4,00000001
	c.li	a3,00000004
	c.li	a2,00000004
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E75E
	c.mv	a2,s0
	c.li	a3,00000008
	c.li	a1,00000004
	c.li	a0,00000003
	jal	ra,000000002300E5F8
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a3,00000000
	c.li	a2,00000001
	c.li	a1,00000004
	c.li	a0,00000001
	c.addi	sp,00000010
	jal	zero,000000002300E6AE

;; pka_point_double.constprop.2: 2300C95A
;;   Called from:
;;     2300CD92 (in ecc_multiplication_event_handler)
;;     2300CDF2 (in ecc_multiplication_event_handler)
pka_point_double.constprop.2 proc
	c.addi16sp	FFFFFFD0
	addi	a1,sp,+0000001F
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s2,a0
	jal	ra,000000002300C838
	lbu	a5,sp,+0000001F
	bne	a5,zero,000000002300CB72

l2300C976:
	c.li	a7,00000003
	c.mv	a6,s2
	c.li	a5,00000003
	c.mv	a4,s2
	c.li	a3,00000003
	c.li	a2,0000000D
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	addi	s0,s2,+00000002
	andi	s0,s0,+000000FF
	jal	ra,000000002300E7B4
	c.li	a7,00000003
	c.mv	a6,s0
	c.li	a5,00000003
	c.mv	a4,s0
	c.li	a3,00000003
	c.li	a2,0000000E
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002300E7B4
	c.li	a7,00000003
	c.li	a6,0000000E
	c.li	a5,00000003
	c.li	a4,0000000D
	c.li	a3,00000003
	c.li	a2,0000000D
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002300E71E
	c.li	a7,00000003
	c.li	a6,0000000D
	c.li	a5,00000003
	c.li	a4,0000000A
	c.li	a3,00000003
	c.li	a2,0000000D
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	addi	s1,s2,+00000001
	andi	s1,s1,+000000FF
	jal	ra,000000002300E7B4
	c.li	a7,00000003
	c.mv	a6,s0
	c.li	a5,00000003
	c.mv	a4,s1
	c.li	a3,00000003
	c.li	a2,0000000E
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002300E7B4
	c.li	a7,00000003
	c.mv	a6,s1
	c.li	a5,00000003
	c.mv	a4,s2
	c.li	a3,00000003
	c.li	a2,0000000F
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002300E7B4
	c.li	a7,00000003
	c.li	a6,0000000D
	c.li	a5,00000003
	c.li	a4,0000000D
	c.li	a3,00000003
	c.mv	a2,s0
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002300E7B4
	c.li	a7,00000003
	c.li	a6,0000000E
	c.li	a5,00000003
	c.li	a4,0000000F
	c.li	a3,00000003
	c.li	a2,0000000F
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002300E7B4
	c.li	a7,00000003
	c.li	a6,0000000F
	c.li	a5,00000003
	c.li	a4,0000000C
	c.li	a3,00000003
	c.mv	a2,s2
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002300E7B4
	c.li	a7,00000003
	c.mv	a6,s2
	c.li	a5,00000003
	c.mv	a4,s0
	c.li	a3,00000003
	c.mv	a2,s0
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002300E71E
	c.li	a7,00000003
	c.mv	a6,s0
	c.li	a5,00000003
	c.li	a4,00000009
	c.li	a3,00000003
	c.mv	a2,s2
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002300E7B4
	c.li	a7,00000003
	c.li	a6,0000000E
	c.li	a5,00000003
	c.mv	a4,s2
	c.li	a3,00000003
	c.mv	a2,s2
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002300E7B4
	c.li	a7,00000003
	c.li	a6,0000000F
	c.li	a5,00000003
	c.li	a4,0000000B
	c.li	a3,00000003
	c.li	a2,0000000F
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002300E7B4
	c.li	a7,00000003
	c.li	a6,0000000E
	c.li	a5,00000003
	c.li	a4,0000000E
	c.li	a3,00000003
	c.li	a2,00000010
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002300E7B4
	c.li	a7,00000003
	c.mv	a6,s0
	c.li	a5,00000003
	c.li	a4,0000000F
	c.li	a3,00000003
	c.li	a2,0000000F
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002300E71E
	c.li	a7,00000003
	c.mv	a6,s1
	c.li	a5,00000003
	c.mv	a4,s1
	c.li	a3,00000003
	c.mv	a2,s1
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002300E7B4
	c.li	a7,00000003
	c.li	a6,0000000D
	c.li	a5,00000003
	c.li	a4,0000000F
	c.li	a3,00000003
	c.li	a2,0000000F
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002300E7B4
	c.li	a7,00000003
	c.mv	a6,s1
	c.li	a5,00000003
	c.li	a4,0000000C
	c.li	a3,00000003
	c.mv	a2,s1
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002300E7B4
	c.li	a7,00000003
	c.li	a6,00000010
	c.li	a5,00000003
	c.mv	a4,s1
	c.li	a3,00000003
	c.mv	a2,s1
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002300E7B4
	c.li	a7,00000003
	c.mv	a6,s1
	c.li	a5,00000003
	c.li	a4,0000000F
	c.li	a3,00000003
	c.mv	a2,s1
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002300E71E
	c.li	a7,00000003
	c.li	a6,00000010
	c.li	a5,00000003
	c.li	a4,0000000E
	c.li	a3,00000003
	c.mv	a2,s0
	c.li	a1,00000003
	c.li	a0,00000000
	c.swsp	zero,00000000
	jal	ra,000000002300E7B4
	c.li	a7,00000003
	c.mv	a6,s0
	c.li	a5,00000003
	c.li	a4,0000000C
	c.li	a3,00000003
	c.mv	a2,s0
	c.li	a1,00000003
	c.li	a0,00000001
	c.swsp	zero,00000000
	jal	ra,000000002300E7B4
	jal	ra,000000002300E5DE
	jal	ra,000000002300E560

l2300CB72:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

;; pka_addition_win.constprop.1: 2300CB7E
;;   Called from:
;;     2300CE64 (in ecc_multiplication_event_handler)
;;     2300CE7E (in ecc_multiplication_event_handler)
;;     2300CE9C (in ecc_multiplication_event_handler)
;;     2300CEB6 (in ecc_multiplication_event_handler)
;;     2300CEE4 (in ecc_multiplication_event_handler)
pka_addition_win.constprop.1 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a1
	c.mv	s1,a0
	c.mv	a1,a0
	c.swsp	s2,00000008
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a0,00000008
	c.mv	s2,a2
	c.li	a2,00000015
	c.swsp	ra,0000008C
	jal	ra,000000002300E57E
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000016
	addi	a1,s1,+00000028
	c.li	a0,00000008
	jal	ra,000000002300E57E
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000017
	addi	a1,s1,+00000050
	c.li	a0,00000008
	jal	ra,000000002300E57E
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000018
	c.mv	a1,s0
	c.li	a0,00000008
	jal	ra,000000002300E57E
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000019
	addi	a1,s0,+00000028
	c.li	a0,00000008
	jal	ra,000000002300E57E
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,0000001A
	addi	a1,s0,+00000050
	c.li	a0,00000008
	jal	ra,000000002300E57E
	addi	a1,sp,+0000000E
	c.li	a0,00000015
	jal	ra,000000002300C838
	addi	a1,sp,+0000000F
	c.li	a0,00000018
	jal	ra,000000002300C838
	lbu	a5,sp,+0000000E
	c.li	a4,00000001
	bne	a5,a4,000000002300CC32

l2300CC20:
	lbu	a5,sp,+0000000F
	c.li	a1,00000018
	c.beqz	a5,000000002300CC2A

l2300CC28:
	c.li	a1,00000002

l2300CC2A:
	c.li	a0,0000001B
	jal	ra,000000002300C7E2
	c.j	000000002300CC44

l2300CC32:
	lbu	a4,sp,+0000000F
	c.or	a5,a4
	c.bnez	a5,000000002300CC28

l2300CC3A:
	c.li	a2,0000001B
	c.li	a1,00000018
	c.li	a0,00000015
	jal	ra,000000002300C560

l2300CC44:
	c.mv	a0,s2
	c.li	a1,0000001B
	jal	ra,000000002300C79C
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; ecc_multiplication_event_handler: 2300CC58
ecc_multiplication_event_handler proc
	c.addi16sp	FFFFFF70
	c.li	a0,00000000
	c.swsp	s1,000000C0
	c.swsp	ra,000000C4
	c.swsp	s0,00000044
	c.swsp	s2,00000040
	c.swsp	s3,000000BC
	c.swsp	s4,0000003C
	lui	s1,0004201A
	jal	ra,000000002300D77C
	addi	a0,s1,+00000164
	jal	ra,000000002300C252
	beq	a0,zero,000000002300CDCE

l2300CC7C:
	c.lw	a0,4(a5)
	c.mv	s0,a0
	beq	a5,zero,000000002300CF02

l2300CC84:
	lbu	s2,a0,+0000012C
	c.li	a3,00000001
	lw	a4,a0,+00000128
	addi	a5,s2,-00000001
	andi	a5,a5,+000000FF
	bltu	a3,a5,000000002300CDEA

l2300CC9A:
	beq	s2,a3,000000002300CDA2

l2300CC9E:
	lw	a1,a0,+00000130

l2300CCA2:
	addi	a5,zero,+0000003F
	c.sub	a5,a4
	addi	a3,zero,+0000007F
	c.sub	a3,a4
	c.srli	a5,00000005
	addi	a5,a5,+0000003C
	c.srli	a3,00000005
	c.slli	a5,02
	addi	a3,a3,+0000003C
	c.add	a5,s0
	c.slli	a3,02
	c.lw	a5,8(a5)
	c.add	a3,s0
	c.lw	a3,8(a3)
	andi	a2,a4,+0000001F
	srl	a5,a5,a2
	srl	a3,a3,a2
	c.andi	a5,00000001
	c.andi	a3,00000001
	c.slli	a5,01
	c.add	a5,a3
	addi	a3,zero,+000000BF
	c.sub	a3,a4
	c.srli	a3,00000005
	addi	a3,a3,+0000003C
	c.slli	a3,02
	c.add	a3,s0
	c.lw	a3,8(a3)
	c.slli	a5,01
	srl	a3,a3,a2
	c.andi	a3,00000001
	c.add	a5,a3
	addi	a3,zero,+000000FF
	sub	a4,a3,a4
	c.srli	a4,00000005
	addi	a4,a4,+0000003C
	c.slli	a4,02
	c.add	a4,s0
	c.lw	a4,8(a4)
	c.slli	a5,01
	srl	a2,a4,a2
	c.andi	a2,00000001
	c.add	a5,a2
	c.beqz	a5,000000002300CD8A

l2300CD16:
	addi	a4,zero,+00000078
	add	a5,a5,a4
	c.li	a3,00000003
	addi	a4,zero,+00000039
	c.li	a2,00000015
	c.li	a0,00000008
	addi	a5,a5,-00000078
	add	s2,a1,a5
	c.mv	a1,s2
	c.li	a5,00000000
	jal	ra,000000002300E57E
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000016
	addi	a1,s2,+00000028
	c.li	a0,00000008
	jal	ra,000000002300E57E
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000017
	addi	a1,s2,+00000050
	c.li	a0,00000008
	jal	ra,000000002300E57E
	addi	a1,sp,+0000001F
	c.li	a0,00000002
	jal	ra,000000002300C838
	c.addi4spn	a1,00000020
	c.li	a0,00000015
	jal	ra,000000002300C838
	lbu	a5,sp,+0000001F
	c.li	a4,00000001
	bne	a5,a4,000000002300CDAC

l2300CD7C:
	lbu	a5,sp,+00000020
	c.bnez	a5,000000002300CD8A

l2300CD82:
	c.li	a1,00000015
	c.li	a0,00000002
	jal	ra,000000002300C7E2

l2300CD8A:
	lw	a5,s0,+00000128
	c.beqz	a5,000000002300CDC0

l2300CD90:
	c.li	a0,00000002
	jal	ra,000000002300C95A
	lw	a5,s0,+00000128
	c.addi	a5,FFFFFFFF

l2300CD9C:
	sw	a5,s0,+00000128
	c.j	000000002300CDC4

l2300CDA2:
	lui	a1,00023073
	addi	a1,a1,+00000534
	c.j	000000002300CCA2

l2300CDAC:
	lbu	a4,sp,+00000020
	c.or	a5,a4
	c.bnez	a5,000000002300CD8A

l2300CDB4:
	c.li	a2,00000002
	c.li	a1,00000015
	c.li	a0,00000002
	jal	ra,000000002300C560
	c.j	000000002300CD8A

l2300CDC0:
	sw	zero,s0,+00000004

l2300CDC4:
	c.mv	a1,s0
	addi	a0,s1,+00000164
	jal	ra,000000002300C1E6

l2300CDCE:
	lw	a5,s1,+00000164
	c.beqz	a5,000000002300CDDA

l2300CDD4:
	c.li	a0,00000000
	jal	ra,000000002300D720

l2300CDDA:
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.lwsp	t1,00000024
	c.lwsp	sp,00000048
	c.lwsp	t4,00000178
	c.lwsp	s9,00000198
	c.addi16sp	00000090
	c.jr	ra

l2300CDEA:
	c.li	a5,00000003
	bne	s2,a5,000000002300CE4E

l2300CDF0:
	c.li	a0,00000005
	jal	ra,000000002300C95A
	lw	a5,s0,+00000128
	addi	a4,zero,+00000040
	c.addi	a5,00000001
	sw	a5,s0,+00000128
	bne	a5,a4,000000002300CE18

l2300CE08:
	lw	a0,s0,+00000130
	c.li	a1,00000005
	addi	a0,a0,+00000078

l2300CE12:
	jal	ra,000000002300C79C
	c.j	000000002300CDC4

l2300CE18:
	addi	a4,zero,+00000080
	bne	a5,a4,000000002300CE2C

l2300CE20:
	lw	a0,s0,+00000130
	c.li	a1,00000005
	addi	a0,a0,+00000168
	c.j	000000002300CE12

l2300CE2C:
	addi	a4,zero,+000000C0
	bne	a5,a4,000000002300CDC4

l2300CE34:
	lw	a0,s0,+00000130
	c.li	a1,00000005
	addi	a0,a0,+00000348
	jal	ra,000000002300C79C
	c.li	a5,00000004
	sb	a5,s0,+0000012C
	sw	s2,s0,+00000128
	c.j	000000002300CDC4

l2300CE4E:
	c.li	a3,00000004
	bne	s2,a3,000000002300CDC4

l2300CE54:
	bne	a4,a5,000000002300CE6C

l2300CE58:
	lw	a0,a0,+00000130
	addi	a2,a0,+000000F0
	addi	a1,a0,+00000078
	jal	ra,000000002300CB7E
	c.li	a5,00000005
	c.j	000000002300CD9C

l2300CE6C:
	c.li	a5,00000005
	bne	a4,a5,000000002300CE86

l2300CE72:
	lw	a0,a0,+00000130
	addi	a2,a0,+000001E0
	addi	a1,a0,+00000168
	jal	ra,000000002300CB7E
	c.li	a5,00000006
	c.j	000000002300CD9C

l2300CE86:
	c.li	a5,00000006
	bne	a4,a5,000000002300CEA4

l2300CE8C:
	lw	a0,a0,+00000130
	addi	a2,a0,+00000258
	addi	a1,a0,+00000168
	addi	a0,a0,+00000078
	jal	ra,000000002300CB7E
	c.li	a5,00000007
	c.j	000000002300CD9C

l2300CEA4:
	c.li	a3,00000007
	bne	a4,a3,000000002300CEBE

l2300CEAA:
	lw	a0,a0,+00000130
	addi	a2,a0,+000002D0
	addi	a1,a0,+00000258
	jal	ra,000000002300CB7E
	c.li	a5,00000009
	c.j	000000002300CD9C

l2300CEBE:
	addi	a3,a4,-00000009
	bltu	a5,a3,000000002300CDC4

l2300CEC6:
	addi	a1,zero,+00000078
	add	a4,a4,a1
	lw	a0,a0,+00000130
	addi	a2,a4,-00000078
	addi	a4,a4,-00000438
	add	a1,a0,a4
	c.add	a2,a0
	addi	a0,a0,+00000348
	jal	ra,000000002300CB7E
	lw	a5,s0,+00000128
	c.li	a4,0000000F
	bne	a5,a4,000000002300CEFE

l2300CEF2:
	c.li	a5,00000002
	sb	a5,s0,+0000012C
	addi	a5,zero,+0000003F
	c.j	000000002300CD9C

l2300CEFE:
	c.addi	a5,00000001
	c.j	000000002300CD9C

l2300CF02:
	lhu	a1,a0,+00000122
	addi	a5,zero,+000000FF
	beq	a1,a5,000000002300CDCE

l2300CF0E:
	lhu	a0,a0,+00000120
	addi	a3,zero,+00000040
	addi	a2,zero,+000000FF
	jal	ra,000000002300DB74
	c.mv	s2,a0
	c.li	a0,00000002
	jal	ra,000000002300C49C
	c.li	a0,00000003
	jal	ra,000000002300C49C
	lui	s3,0004200E
	lw	a5,s3,+00000140
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.addi4spn	a0,00000020
	c.jalr	a5
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,0000000D
	c.addi4spn	a1,00000020
	c.li	a0,00000008
	c.li	s4,00000002
	c.swsp	s4,0000009C
	jal	ra,000000002300E57E
	c.li	a6,0000000D
	c.li	a5,00000003
	c.li	a4,00000000
	c.li	a3,00000003
	c.li	a2,0000000D
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002300E87E
	c.li	a7,00000003
	c.li	a6,0000000D
	c.li	a4,00000004
	c.li	a3,00000003
	c.li	a5,00000003
	c.li	a2,0000000E
	c.li	a1,00000003
	c.li	a0,00000001
	c.swsp	zero,00000000
	jal	ra,000000002300E7F4
	jal	ra,000000002300E5DE
	jal	ra,000000002300E560
	c.li	a0,0000000E
	jal	ra,000000002300C49C
	c.li	a0,00000002
	jal	ra,000000002300C50A
	c.li	a0,00000003
	jal	ra,000000002300C50A
	lw	a5,s3,+00000140
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.addi4spn	a0,00000020
	c.jalr	a5
	lw	a5,s3,+00000140
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.swsp	zero,00000020
	c.swsp	zero,000000A0
	c.addi4spn	a0,00000048
	c.jalr	a5
	c.li	a3,00000008
	c.addi4spn	a2,00000020
	c.li	a1,00000002
	c.li	a0,00000003
	c.swsp	zero,00000034
	c.swsp	zero,000000B4
	jal	ra,000000002300E5F8
	c.li	a3,00000008
	c.addi4spn	a2,00000048
	c.li	a1,00000003
	c.li	a0,00000003
	jal	ra,000000002300E5F8
	lbu	a5,s0,+0000012C
	bne	a5,s4,000000002300CFE6

l2300CFDA:
	lw	a0,s0,+00000130
	jal	ra,000000002300DA32
	sw	zero,s0,+00000130

l2300CFE6:
	c.mv	a0,s0
	jal	ra,000000002300DA32
	c.addi4spn	a5,00000020
	addi	a4,s2,+0000001C

l2300CFF2:
	lbu	a3,a5,+00000003
	c.addi	a5,00000004
	sb	a3,a4,+00000003
	lhu	a3,a5,-00000002
	sb	a3,a4,+00000002
	lw	a3,a5,-00000004
	c.srli	a3,00000008
	sb	a3,a4,+00000001
	lw	a3,a5,-00000004
	sb	a3,a4,+00000000
	addi	a3,a4,-00000004
	bne	s2,a4,000000002300D05A

l2300D01E:
	c.addi4spn	a5,00000048
	addi	a4,s2,+0000003C
	addi	a2,s2,+0000001C

l2300D028:
	lbu	a3,a5,+00000003
	c.addi	a4,FFFFFFFC
	c.addi	a5,00000004
	sb	a3,a4,+00000007
	lhu	a3,a5,-00000002
	sb	a3,a4,+00000006
	lw	a3,a5,-00000004
	c.srli	a3,00000008
	sb	a3,a4,+00000005
	lw	a3,a5,-00000004
	sb	a3,a4,+00000004
	bne	a4,a2,000000002300D028

l2300D052:
	c.mv	a0,s2
	jal	ra,000000002300DBE2
	c.j	000000002300CDCE

l2300D05A:
	c.mv	a4,a3
	c.j	000000002300CFF2

;; ecc_init: 2300D05E
;;   Called from:
;;     2300C010 (in rwip_reset)
;;     2300C0AC (in rwip_init)
ecc_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	s0,0004201A
	c.bnez	a0,000000002300D090

l2300D06A:
	addi	a0,s0,+00000164
	jal	ra,000000002300C1BE
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a1,0002300D
	addi	a1,a1,-000003A8
	c.li	a0,00000000
	c.addi	sp,00000010
	c.j	000000002300D6D2

l2300D084:
	addi	a0,s0,+00000164
	jal	ra,000000002300C252
	jal	ra,000000002300DA32

l2300D090:
	lw	a5,s0,+00000164
	c.bnez	a5,000000002300D084

l2300D096:
	c.j	000000002300D06A

;; ecc_generate_key256: 2300D098
;;   Called from:
;;     2300D548 (in ecc_gen_new_public_key)
;;     2301BB22 (in hci_le_generate_dhkey_cmd_handler)
ecc_generate_key256 proc
	c.addi16sp	FFFFFEA0
	sw	s1,sp,+00000154
	sw	s2,sp,+00000150
	sw	s3,sp,+0000014C
	sw	s4,sp,+00000148
	sw	s5,sp,+00000144
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.swsp	a3,00000080
	c.mv	s3,a4
	sw	ra,sp,+0000015C
	sw	s0,sp,+00000158
	sw	s6,sp,+00000140
	sw	s7,sp,+0000013C
	sw	s8,sp,+00000138
	sw	s9,sp,+00000134
	sw	s10,sp,+00000130
	c.mv	s2,a0
	c.mv	s1,a5
	jal	ra,000000002300E550
	c.lwsp	a2,00000064
	c.lwsp	s0,00000084
	c.lwsp	tp,000000A4
	addi	a7,sp,+00000018
	addi	a6,sp,+00000068
	c.swsp	zero,0000000C
	c.swsp	zero,00000034
	c.swsp	zero,00000048
	addi	a4,a1,+0000001C
	c.addi	a2,0000001C
	c.addi	a3,0000001C
	c.mv	t1,a6
	c.mv	t3,a7
	c.mv	s5,a7
	c.mv	s4,a6

l2300D0FE:
	lbu	a5,a4,+00000003
	lbu	a0,a4,+00000002
	c.addi	t3,00000004
	c.slli	a5,18
	c.slli	a0,10
	c.add	a5,a0
	lbu	a0,a4,+00000000
	c.addi	a2,FFFFFFFC
	c.addi	t1,00000004
	c.add	a5,a0
	lbu	a0,a4,+00000001
	c.addi	a3,FFFFFFFC
	c.slli	a0,08
	c.add	a5,a0
	sw	a5,t3,+00000FFC
	lbu	a0,a2,+00000007
	lbu	a5,a2,+00000006
	c.slli	a0,18
	c.slli	a5,10
	c.add	a0,a5
	lbu	a5,a2,+00000004
	c.add	a0,a5
	lbu	a5,a2,+00000005
	c.slli	a5,08
	c.add	a0,a5
	sw	a0,t1,+00000FFC
	lbu	a5,a3,+00000006
	lbu	a0,a3,+00000007
	c.slli	a5,10
	c.slli	a0,18
	c.add	a0,a5
	lbu	a5,a3,+00000004
	c.add	a0,a5
	lbu	a5,a3,+00000005
	c.slli	a5,08
	c.add	a0,a5
	sw	a0,t1,+00000024
	addi	a5,a4,-00000004
	bne	a1,a4,000000002300D52C

l2300D16E:
	c.li	a5,00000000
	c.li	a4,00000008

l2300D172:
	lw	a3,a7,+00000000
	c.bnez	a3,000000002300D180

l2300D178:
	c.addi	a5,00000001
	c.addi	a7,00000004
	bne	a5,a4,000000002300D172

l2300D180:
	c.li	a4,00000008
	sub	a5,a4,a5
	c.swsp	a5,0000001C
	c.mv	a4,a6
	c.li	a5,00000000
	c.li	a3,00000008

l2300D18E:
	c.lw	a4,0(a2)
	c.bnez	a2,000000002300D19A

l2300D192:
	c.addi	a5,00000001
	c.addi	a4,00000004
	bne	a5,a3,000000002300D18E

l2300D19A:
	c.li	a4,00000008
	sub	a5,a4,a5
	c.swsp	a5,00000044
	c.li	a5,00000000

l2300D1A4:
	lw	a3,a6,+00000028
	c.bnez	a3,000000002300D1B2

l2300D1AA:
	c.addi	a5,00000001
	c.addi	a6,00000004
	bne	a5,a4,000000002300D1A4

l2300D1B2:
	c.li	s6,00000008
	sub	a5,s6,a5
	c.li	a1,00000000
	addi	a0,zero,+00000134
	c.swsp	a5,00000058
	c.swsp	zero,000000C4
	c.swsp	zero,000000D8
	jal	ra,000000002300D942
	c.mv	s0,a0
	sb	s2,a0,+0000012C
	sh	s3,a0,+00000120
	sh	s1,a0,+00000122
	c.mv	a1,s4
	c.mv	a0,s4
	jal	ra,000000002300C8E0
	c.addi4spn	a1,00000090
	c.mv	a0,a1
	jal	ra,000000002300C8E0
	lui	s2,0004200E
	lw	a5,s2,+00000140
	c.li	s3,00000001
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.swsp	s3,00000030
	c.swsp	zero,000000B0
	c.addi4spn	a0,00000040
	lui	s1,0004200E
	c.jalr	a5
	lw	a5,s1,+0000013C
	lui	s9,00023073
	addi	a1,s9,+00000414
	addi	a2,zero,+00000020
	c.addi4spn	a0,00000040
	c.jalr	a5
	lw	a5,s1,+0000013C
	c.mv	a1,s4
	addi	a2,zero,+00000020
	c.addi4spn	a0,000000B8
	c.jalr	a5
	c.lwsp	a0,000000E4
	addi	a2,zero,+00000020
	c.addi4spn	a1,00000090
	c.swsp	a5,0000006C
	c.lwsp	a4,000000E4
	c.addi4spn	a0,000000E0
	addi	s8,s0,+00000080
	c.swsp	a5,000000EC
	lw	a5,s1,+0000013C
	addi	s7,s0,+000000A8
	addi	s4,s0,+000000D0
	c.jalr	a5
	c.lwsp	s2,000001F4
	addi	a2,zero,+00000020
	c.addi4spn	a1,00000040
	sw	a5,sp,+00000100
	c.lwsp	s6,000001F4
	c.addi4spn	a0,00000108
	addi	s10,s0,+00000008
	sw	a5,sp,+00000104
	lw	a5,s1,+0000013C
	c.jalr	a5
	c.lwsp	ra,000001F4
	addi	a2,zero,+00000020
	c.addi4spn	a1,000000B8
	sw	a5,sp,+00000128
	c.lwsp	t0,000001F4
	c.mv	a0,s8
	sw	a5,sp,+0000012C
	lw	a5,s1,+0000013C
	c.jalr	a5
	c.lwsp	s11,000000E4
	addi	a2,zero,+00000020
	c.addi4spn	a1,000000E0
	sw	a5,s0,+000000A0
	c.lwsp	t6,000000E4
	c.mv	a0,s7
	sw	a5,s0,+000000A4
	lw	a5,s1,+0000013C
	c.jalr	a5
	lw	a5,sp,+00000100
	addi	a2,zero,+00000020
	c.addi4spn	a1,00000108
	sw	a5,s0,+000000C8
	lw	a5,sp,+00000104
	c.mv	a0,s4
	sw	a5,s0,+000000CC
	lw	a5,s1,+0000013C
	c.jalr	a5
	lw	a5,sp,+00000128
	c.mv	a1,s5
	addi	a2,zero,+00000020
	sw	a5,s0,+000000F0
	lw	a5,sp,+0000012C
	addi	a0,s0,+000000F8
	addi	s5,s0,+00000058
	sw	a5,s0,+000000F4
	lw	a5,s1,+0000013C
	c.jalr	a5
	c.lwsp	s8,000001F4
	addi	a2,zero,+00000020
	c.li	a1,00000000
	sw	a5,s0,+00000118
	c.lwsp	t3,000001F4
	c.addi4spn	a0,00000040
	sw	a5,s0,+0000011C
	lw	a5,s2,+00000140
	c.swsp	s3,00000030
	c.swsp	zero,000000B0
	c.jalr	a5
	lw	a5,s1,+0000013C
	addi	a2,zero,+00000020
	c.addi4spn	a1,00000040
	c.swsp	zero,000000AC
	c.mv	a0,s10
	c.jalr	a5
	c.lwsp	ra,000001F4
	addi	a1,s9,+00000414
	addi	a2,zero,+00000020
	c.sw	s0,40(a5)
	c.lwsp	t0,000001F4
	c.addi4spn	a0,00000040
	addi	s9,s0,+00000030
	c.sw	s0,44(a5)
	lw	a5,s1,+0000013C
	c.jalr	a5
	lw	a5,s1,+0000013C
	addi	a2,zero,+00000020
	c.addi4spn	a1,00000040
	c.mv	a0,s9
	c.jalr	a5
	c.lwsp	ra,000001F4
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.sw	s0,80(a5)
	c.lwsp	t0,000001F4
	c.addi4spn	a0,00000040
	c.sw	s0,84(a5)
	lw	a5,s2,+00000140
	c.jalr	a5
	lw	a5,s1,+0000013C
	addi	a2,zero,+00000020
	c.addi4spn	a1,00000040
	c.swsp	zero,000000AC
	c.mv	a0,s5
	c.jalr	a5
	c.lwsp	ra,000001F4
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.sw	s0,120(a5)
	c.lwsp	t0,000001F4
	c.addi4spn	a0,00000040
	c.sw	s0,124(a5)
	lw	a5,s2,+00000140
	c.jalr	a5
	lui	a1,00023074
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000000
	addi	a1,a1,-00000384
	c.li	a0,00000008
	c.swsp	s3,000000AC
	jal	ra,000000002300E57E
	lui	a1,00023074
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000001
	addi	a1,a1,-000003A4
	c.li	a0,00000008
	jal	ra,000000002300E57E
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000002
	c.mv	a1,s10
	c.li	a0,00000008
	jal	ra,000000002300E57E
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000003
	c.mv	a1,s9
	c.li	a0,00000008
	jal	ra,000000002300E57E
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000004
	c.mv	a1,s5
	c.li	a0,00000008
	jal	ra,000000002300E57E
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000005
	c.mv	a1,s8
	c.li	a0,00000008
	jal	ra,000000002300E57E
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000006
	c.mv	a1,s7
	c.li	a0,00000008
	jal	ra,000000002300E57E
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000007
	c.mv	a1,s4
	c.li	a0,00000008
	jal	ra,000000002300E57E
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000008
	c.addi4spn	a1,00000040
	c.li	a0,00000008
	jal	ra,000000002300E57E
	lui	a1,00023073
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000009
	addi	a1,a1,+00000474
	c.li	a0,00000008
	jal	ra,000000002300E57E
	lui	a1,00023073
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,0000000A
	addi	a1,a1,+00000494
	c.li	a0,00000008
	jal	ra,000000002300E57E
	lui	a1,00023073
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,0000000B
	addi	a1,a1,+000004B4
	c.li	a0,00000008
	jal	ra,000000002300E57E
	lui	a1,00023073
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,0000000C
	addi	a1,a1,+000004D4
	c.li	a0,00000008
	jal	ra,000000002300E57E
	lui	a1,00023073
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000013
	addi	a1,a1,+00000454
	c.li	a0,00000008
	jal	ra,000000002300E57E
	lui	a1,00023073
	c.li	a5,00000000
	addi	a4,zero,+00000039
	c.li	a3,00000003
	c.li	a2,00000014
	addi	a1,a1,+00000434
	c.li	a0,00000008
	jal	ra,000000002300E57E
	lbu	a4,s0,+0000012C
	addi	a5,zero,+0000003F
	sw	a5,s0,+00000128
	sw	zero,s0,+00000124
	sw	s6,s0,+00000004
	c.li	a5,00000002
	bne	a4,a5,000000002300D4E4

l2300D4C8:
	c.li	a1,00000000
	addi	a0,zero,+00000708
	c.jal	000000002300D942
	sw	a0,s0,+00000130
	c.li	a1,00000005
	jal	ra,000000002300C79C
	c.li	a5,00000003
	sb	a5,s0,+0000012C
	sw	zero,s0,+00000128

l2300D4E4:
	lui	a0,0004201A
	c.mv	a1,s0
	addi	a0,a0,+00000164
	jal	ra,000000002300C1E6
	c.li	a0,00000000
	c.jal	000000002300D720
	lw	ra,sp,+0000015C
	lw	s0,sp,+00000158
	lw	s1,sp,+00000154
	lw	s2,sp,+00000150
	lw	s3,sp,+0000014C
	lw	s4,sp,+00000148
	lw	s5,sp,+00000144
	lw	s6,sp,+00000140
	lw	s7,sp,+0000013C
	lw	s8,sp,+00000138
	lw	s9,sp,+00000134
	lw	s10,sp,+00000130
	c.li	a0,00000000
	c.addi16sp	00000160
	c.jr	ra

l2300D52C:
	c.mv	a4,a5
	c.j	000000002300D0FE

;; ecc_gen_new_public_key: 2300D530
;;   Called from:
;;     2301C270 (in hci_le_rd_local_p256_public_key_cmd_handler)
ecc_gen_new_public_key proc
	c.mv	a5,a2
	lui	a3,00023073
	lui	a2,00023073
	c.mv	a4,a1
	addi	a3,a3,+00000514
	c.mv	a1,a0
	addi	a2,a2,+000004F4
	c.li	a0,00000001
	jal	zero,000000002300D098

;; ecc_gen_new_secret_key: 2300D54C
;;   Called from:
;;     23012F56 (in lld_init)
;;     2301C25E (in hci_le_rd_local_p256_public_key_cmd_handler)
ecc_gen_new_secret_key proc
	bne	a1,zero,000000002300D69C

l2300D550:
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,00023074
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.li	s2,FFFFFFFF
	addi	s1,s1,-0000035C

l2300D566:
	jal	ra,0000000023036D28
	srli	a5,a0,00000008
	sb	a0,s0,+00000000
	sb	a5,s0,+00000001
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a5,s0,+00000002
	sb	a0,s0,+00000003
	jal	ra,0000000023036D28
	srli	a5,a0,00000008
	sb	a0,s0,+00000004
	sb	a5,s0,+00000005
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a5,s0,+00000006
	sb	a0,s0,+00000007
	jal	ra,0000000023036D28
	srli	a5,a0,00000008
	sb	a0,s0,+00000008
	sb	a5,s0,+00000009
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a5,s0,+0000000A
	sb	a0,s0,+0000000B
	jal	ra,0000000023036D28
	srli	a5,a0,00000008
	sb	a0,s0,+0000000C
	sb	a5,s0,+0000000D
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a5,s0,+0000000E
	sb	a0,s0,+0000000F
	jal	ra,0000000023036D28
	srli	a5,a0,00000008
	sb	a0,s0,+00000010
	sb	a5,s0,+00000011
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a5,s0,+00000012
	sb	a0,s0,+00000013
	jal	ra,0000000023036D28
	srli	a5,a0,00000008
	sb	a0,s0,+00000014
	sb	a5,s0,+00000015
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a5,s0,+00000016
	sb	a0,s0,+00000017
	jal	ra,0000000023036D28
	srli	a5,a0,00000008
	sb	a0,s0,+00000018
	sb	a5,s0,+00000019
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a5,s0,+0000001A
	sb	a0,s0,+0000001B
	jal	ra,0000000023036D28
	srli	a5,a0,00000008
	sb	a0,s0,+0000001C
	sb	a5,s0,+0000001D
	srli	a5,a0,00000010
	c.srli	a0,00000018
	sb	a5,s0,+0000001E
	sb	a0,s0,+0000001F
	c.li	a5,0000001F

l2300D658:
	add	a4,s0,a5
	lbu	a4,a4,+00000000
	c.bnez	a4,000000002300D670

l2300D662:
	c.addi	a5,FFFFFFFF
	bne	a5,s2,000000002300D658

l2300D668:
	lbu	a5,s0,+00000000
	beq	a5,zero,000000002300D566

l2300D670:
	c.li	a5,0000001F

l2300D672:
	add	a4,s0,a5
	lbu	a3,a4,+00000000
	add	a4,s1,a5
	lbu	a4,a4,+00000000
	bltu	a4,a3,000000002300D566

l2300D686:
	bltu	a3,a4,000000002300D690

l2300D68A:
	c.addi	a5,FFFFFFFF
	bne	a5,s2,000000002300D672

l2300D690:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2300D69C:
	c.jr	ra

;; ble_ke_event_init: 2300D69E
;;   Called from:
;;     2300E144 (in ble_ke_init)
ble_ke_event_init proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002300D6CC

l2300D6B0:
	lui	a5,0004200E
	c.lwsp	a2,00000020
	lw	t1,a5,+00000140
	lui	a0,0004201A
	addi	a2,zero,+00000030
	c.li	a1,00000000
	addi	a0,a0,+0000016C
	c.addi	sp,00000010
	c.jr	t1

l2300D6CC:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_event_callback_set: 2300D6D2
;;   Called from:
;;     2300D082 (in ecc_init)
;;     2300DF04 (in ble_ke_timer_init)
;;     2300FEDE (in lld_evt_init)
;;     2300FEFE (in lld_evt_init)
;;     23015FD6 (in llm_init)
;;     23017252 (in ble_ke_task_init)
ble_ke_event_callback_set proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	a2,a1
	c.mv	a1,a0
	addi	a0,sp,+0000000F
	c.jalr	a5
	c.beqz	a0,000000002300D700

l2300D6F2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	lbu	a0,sp,+0000000F
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2300D700:
	c.li	a5,00000003
	sb	a5,sp,+0000000F
	c.li	a5,00000009
	bltu	a5,s0,000000002300D6F2

l2300D70C:
	lui	a0,0004201A
	c.slli	s0,02
	addi	a0,a0,+0000016C
	c.add	a0,s0
	c.sw	a0,4(s1)
	sb	zero,sp,+0000000F
	c.j	000000002300D6F2

;; ble_ke_event_set: 2300D720
;;   Called from:
;;     2300C172 (in rwip_wakeup_end)
;;     2300CDD6 (in ecc_multiplication_event_handler)
;;     2300D4F4 (in ecc_generate_key256)
;;     2300DC22 (in ble_ke_msg_send)
;;     2300DFEE (in ble_ke_timer_set)
;;     2300E06E (in ble_ke_timer_clear)
;;     2300FCD2 (in lld_evt_delete_elt_push)
;;     230109FA (in lld_evt_elt_insert)
;;     23010A4A (in lld_evt_canceled)
;;     230116CA (in lld_evt_end)
;;     2301177A (in lld_evt_rx)
;;     230117B8 (in lld_evt_rx_afs)
;;     230117C0 (in lld_evt_timer_isr)
;;     230145DC (in lld_crypt_isr)
;;     23017090 (in ble_ke_task_saved_update)
ble_ke_event_set proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002300D774

l2300D738:
	csrrs	a4,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	a5,0004201A
	c.li	a3,00000009
	addi	a5,a5,+0000016C
	bltu	a3,s0,000000002300D75A

l2300D74E:
	c.li	a0,00000001
	sll	a1,a0,s0
	c.lw	a5,0(a0)
	c.or	a0,a1
	c.sw	a5,0(a0)

l2300D75A:
	csrrw	zero,mstatus,zero
	lbu	a5,a5,+0000002C
	c.bnez	a5,000000002300D774

l2300D764:
	c.lwsp	s0,00000004
	lui	a5,0004200E
	c.lwsp	a2,00000020
	lw	t1,a5,+00000144
	c.addi	sp,00000010
	c.jr	t1

l2300D774:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_event_clear: 2300D77C
;;   Called from:
;;     2300CC6C (in ecc_multiplication_event_handler)
;;     2300DE86 (in ble_ke_timer_schedule)
;;     2300FCEA (in lld_evt_deffered_elt_handler)
;;     23010090 (in lld_evt_delete_elt_handler)
;;     230164E4 (in llm_encryption_done)
;;     230171F0 (in ble_ke_task_schedule)
ble_ke_event_clear proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002300D7BE

l2300D794:
	csrrs	a4,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.li	a5,00000009
	bltu	a5,s0,000000002300D7BA

l2300D7A2:
	lui	a5,0004201A
	addi	a5,a5,+0000016C
	c.lw	a5,0(a3)
	c.li	a0,00000001
	sll	a0,a0,s0
	xori	a0,a0,-00000001
	c.and	a0,a3
	c.sw	a5,0(a0)

l2300D7BA:
	csrrw	zero,mstatus,zero

l2300D7BE:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_event_flush: 2300D7C6
;;   Called from:
;;     2300E1D4 (in ble_ke_flush)
ble_ke_event_flush proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002300D7E0

l2300D7D8:
	lui	a5,0004201A
	sw	zero,a5,+0000016C

l2300D7E0:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_event_schedule: 2300D7E6
;;   Called from:
;;     2300C0E8 (in rwip_schedule)
ble_ke_event_schedule proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002300D826

l2300D804:
	lui	s1,0004201A
	c.li	s2,00000001
	lui	s3,00080000
	addi	s4,zero,+00000020
	c.li	s5,0000001F

l2300D814:
	lw	a4,s1,+0000016C
	addi	s0,s1,+0000016C

l2300D81C:
	c.bnez	a4,000000002300D838

l2300D81E:
	c.lw	s0,0(a5)
	sb	zero,s0,+0000002C
	c.bnez	a5,000000002300D814

l2300D826:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2300D838:
	sb	s2,s0,+0000002C
	c.li	a5,00000000

l2300D83E:
	srl	a3,s3,a5
	c.and	a3,a4
	c.bnez	a3,000000002300D84C

l2300D846:
	c.addi	a5,00000001
	bne	a5,s4,000000002300D83E

l2300D84C:
	sub	a5,s5,a5
	andi	a5,a5,+000000FF
	c.slli	a5,02
	c.add	a5,s0
	c.lw	a5,4(a5)
	c.beqz	a5,000000002300D85E

l2300D85C:
	c.jalr	a5

l2300D85E:
	c.lw	s0,0(a4)
	c.j	000000002300D81C

;; ble_ke_mem_is_in_heap: 2300D862
;;   Called from:
;;     2300DA7A (in ble_ke_free)
ble_ke_mem_is_in_heap proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	a2,a1
	c.mv	a1,a0
	addi	a0,sp,+0000000F
	c.jalr	a5
	c.beqz	a0,000000002300D890

l2300D882:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	lbu	a0,sp,+0000000F
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2300D890:
	lui	a5,0004201A
	addi	a4,s0,+00000004
	addi	a5,a5,+0000019C
	c.slli	a4,02
	c.add	a4,a5
	c.lw	a4,8(a4)
	sb	zero,sp,+0000000F
	bltu	s1,a4,000000002300D882

l2300D8AA:
	c.addi	s0,00000010
	c.slli	s0,01
	c.add	s0,a5
	lhu	a5,s0,+00000000
	c.add	a5,a4
	bltu	a5,s1,000000002300D882

l2300D8BA:
	c.li	a5,00000001
	sb	a5,sp,+0000000F
	c.j	000000002300D882

;; ble_ke_mem_init: 2300D8C2
;;   Called from:
;;     2300C088 (in rwip_init)
;;     2300C09A (in rwip_init)
ble_ke_mem_init proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s0,a1
	c.mv	s2,a2
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002300D936

l2300D8E6:
	addi	a5,s1,+00000004
	lui	a4,0004201A
	addi	a3,s0,+00000003
	addi	a4,a4,+0000019C
	c.slli	a5,02
	c.andi	a3,FFFFFFFC
	c.add	a5,a4
	c.sw	a5,8(a3)
	csrrs	a2,mstatus,zero
	csrrci	a1,mstatus,00000008
	c.add	s0,s2
	c.andi	s0,FFFFFFFC
	c.sub	s0,a3
	sh	s0,a3,+00000002
	c.lw	a5,8(a1)
	c.lui	a3,FFFFA000
	addi	a3,a3,+0000055A
	sh	a3,a1,+00000000
	c.lw	a5,8(a3)
	c.addi	s1,00000010
	c.slli	s1,01
	sw	zero,a3,+00000004
	c.lw	a5,8(a5)
	c.add	s1,a4
	sw	zero,a5,+00000008
	sh	s2,s1,+00000000
	csrrw	zero,mstatus,zero

l2300D936:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_malloc: 2300D942
;;   Called from:
;;     2300B556 (in ea_elt_create)
;;     2300B580 (in ea_interval_create)
;;     2300D1C4 (in ecc_generate_key256)
;;     2300D4CE (in ecc_generate_key256)
;;     2300DBB6 (in ble_ke_msg_alloc)
;;     2300DF90 (in ble_ke_timer_set)
;;     2300F126 (in llc_start)
;;     2300F9EA (in lld_evt_deferred_elt_push)
;;     2300FA1C (in lld_evt_elt_wait_insert)
;;     2300FC96 (in lld_evt_delete_elt_push)
;;     23012112 (in lld_pdu_data_send)
;;     23012772 (in lld_pdu_rx_handler)
;;     23014B80 (in llm_util_bl_add)
;;     230150B6 (in llm_le_adv_report_ind)
;;     23015666 (in llm_test_mode_start_tx)
;;     230157B0 (in llm_test_mode_start_rx)
;;     230158D6 (in llm_set_adv_param)
;;     23015A54 (in llm_set_adv_en)
;;     23015BE2 (in llm_set_adv_data)
;;     23015CB4 (in llm_set_scan_rsp_data)
;;     23015DB4 (in llm_set_scan_param)
;;     23015E78 (in llm_set_scan_en)
;;     230173AA (in llc_llcp_send)
;;     230173B4 (in llc_llcp_send)
ble_ke_malloc proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	a2,a1
	c.mv	a1,a0
	c.addi4spn	a0,0000000C
	c.jalr	a5
	c.beqz	a0,000000002300D96C

l2300D960:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	a2,00000044
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2300D96C:
	addi	a0,s0,+00000003
	c.andi	a0,FFFFFFFC
	c.swsp	zero,00000084
	c.addi	a0,00000004
	c.li	a5,0000000C
	bgeu	a0,a5,000000002300D97E

l2300D97C:
	c.li	a0,0000000C

l2300D97E:
	csrrs	a6,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	a2,0004201A
	c.li	a3,00000000
	addi	a2,a2,+0000019C
	c.li	a7,00000001

l2300D992:
	add	a5,s1,a3
	c.andi	a5,00000001
	c.addi	a5,00000004
	c.slli	a5,02
	c.add	a5,a2
	c.lw	a5,8(a4)
	addi	t1,a0,+0000000C
	c.li	a5,00000000

l2300D9A6:
	c.bnez	a4,000000002300D9F8

l2300D9A8:
	c.beqz	a5,000000002300D9B8

l2300D9AA:
	lhu	a4,a5,+00000002
	addi	a1,a0,+0000000C
	bgeu	a4,a1,000000002300D9B8

l2300D9B6:
	c.mv	a0,a4

l2300D9B8:
	beq	a3,a7,000000002300DA1C

l2300D9BC:
	c.li	a3,00000001
	c.beqz	a5,000000002300D992

l2300D9C0:
	lhu	a4,a5,+00000002
	slli	a3,a0,00000010
	c.srli	a3,00000010
	bne	a4,a0,000000002300DA24

l2300D9CE:
	c.lw	a5,8(a4)
	c.lw	a5,4(a2)
	c.sw	a4,4(a2)
	c.lw	a5,4(a4)
	c.beqz	a4,000000002300D9DC

l2300D9D8:
	c.lw	a5,8(a2)
	c.sw	a4,8(a2)

l2300D9DC:
	c.swsp	a5,00000084
	c.lwsp	a2,000000E4
	sh	a3,a5,+00000002
	c.lwsp	a2,000000C4
	c.lui	a5,FFFF8000
	addi	a5,a5,+00000338
	sh	a5,a4,+00000000
	c.lwsp	a2,000000E4
	c.addi	a5,00000004
	c.swsp	a5,00000084
	c.j	000000002300DA1E

l2300D9F8:
	lhu	a1,a4,+00000002
	bltu	a1,a0,000000002300DA18

l2300DA00:
	bgeu	a1,t1,000000002300DA0C

l2300DA04:
	lw	t3,a4,+00000008
	beq	t3,zero,000000002300DA18

l2300DA0C:
	c.beqz	a5,000000002300DA16

l2300DA0E:
	lhu	t3,a5,+00000002
	bgeu	a1,t3,000000002300DA18

l2300DA16:
	c.mv	a5,a4

l2300DA18:
	c.lw	a4,4(a4)
	c.j	000000002300D9A6

l2300DA1C:
	c.bnez	a5,000000002300D9C0

l2300DA1E:
	csrrw	zero,mstatus,zero
	c.j	000000002300D960

l2300DA24:
	c.sub	a4,a3
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000002
	c.add	a5,a4
	c.j	000000002300D9DC

;; ble_ke_free: 2300DA32
;;   Called from:
;;     2300CFDE (in ecc_multiplication_event_handler)
;;     2300CFE8 (in ecc_multiplication_event_handler)
;;     2300D08C (in ecc_init)
;;     2300DCD6 (in ble_ke_msg_free)
;;     2300DEC4 (in ble_ke_timer_schedule)
;;     2300E080 (in ble_ke_timer_clear)
;;     2300E1BC (in ble_ke_flush)
;;     2300ECBE (in llc_stop)
;;     2300FA72 (in lld_evt_deferred_elt_pop)
;;     2300FB14 (in lld_evt_schedule)
;;     2300FF04 (in lld_evt_init)
;;     2300FF1C (in lld_evt_init)
;;     2300FF24 (in lld_evt_init)
;;     2300FF2A (in lld_evt_init)
;;     2300FF38 (in lld_evt_init)
;;     2301004E (in lld_evt_elt_delete)
;;     23010056 (in lld_evt_elt_delete)
;;     2301005C (in lld_evt_elt_delete)
;;     23010066 (in lld_evt_elt_delete)
;;     23010114 (in lld_evt_delete_elt_handler)
;;     23010A0C (in lld_evt_canceled)
;;     23010AE6 (in lld_evt_schedule_next)
;;     23011DF8 (in lld_pdu_tx_flush_list)
;;     23011F2C (in lld_pdu_check)
;;     23011F74 (in lld_pdu_check)
;;     23011FC4 (in lld_pdu_check)
;;     23012470 (in lld_pdu_tx_prog)
;;     230126B0 (in lld_pdu_tx_flush)
;;     230126B6 (in lld_pdu_tx_flush)
;;     23012D22 (in lld_util_flush_list)
;;     23013C14 (in lld_con_start)
;;     23013C1A (in lld_con_start)
;;     23013C26 (in lld_con_start)
;;     23014C34 (in llm_util_bl_rem)
;;     230160C8 (in llm_init)
;;     230160D0 (in llm_init)
ble_ke_free proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.mv	s0,a0
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002300DAC6

l2300DA54:
	c.lui	a5,FFFFF000
	c.addi	a5,0000000F
	addi	s2,s0,-00000004
	sh	a5,s0,+00000FFC
	lhu	s1,s0,-00000002
	csrrs	s5,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	s4,0004201A
	c.li	s3,00000000
	addi	s4,s4,+0000019C

l2300DA76:
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,000000002300D862
	c.beqz	a0,000000002300DADC

l2300DA80:
	addi	a5,s3,+00000004
	c.slli	a5,02
	c.add	a5,s4
	c.lw	a5,8(a5)
	c.beqz	a5,000000002300DA76

l2300DA8C:
	c.li	a4,00000000

l2300DA8E:
	c.beqz	a5,000000002300DAE2

l2300DA90:
	lhu	a3,a5,+00000002
	add	a2,a3,a5
	bne	a2,s2,000000002300DAFC

l2300DA9C:
	c.add	s1,a3
	c.slli	s1,10
	c.lw	a5,4(a4)
	c.srli	s1,00000010
	sh	s1,a5,+00000002
	add	a3,s1,a5
	bne	a4,a3,000000002300DAC2

l2300DAB0:
	lhu	a3,a4,+00000002
	c.add	s1,a3
	sh	s1,a5,+00000002
	c.lw	a4,4(a4)
	c.sw	a5,4(a4)
	c.beqz	a4,000000002300DAC2

l2300DAC0:
	c.sw	a4,8(a5)

l2300DAC2:
	csrrw	zero,mstatus,zero

l2300DAC6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2300DAD8:
	c.li	s3,00000001
	c.j	000000002300DA76

l2300DADC:
	beq	s3,zero,000000002300DAD8

l2300DAE0:
	c.li	a4,00000000

l2300DAE2:
	c.lui	a5,FFFFA000
	sw	s2,a4,+00000004
	addi	a5,a5,+0000055A
	sw	zero,s0,+00000000
	c.sw	s0,4(a4)
	sh	s1,s0,+00000FFE
	sh	a5,s0,+00000FFC
	c.j	000000002300DAC2

l2300DAFC:
	bgeu	s2,a5,000000002300DB36

l2300DB00:
	sw	s2,a4,+00000004
	c.sw	s0,4(a4)
	c.lui	a4,FFFFA000
	addi	a4,a4,+0000055A
	sh	a4,s0,+00000FFC
	add	a4,s1,s2
	bne	a5,a4,000000002300DB2E

l2300DB18:
	c.lw	a5,4(a4)
	c.sw	s0,0(a4)
	c.beqz	a4,000000002300DB22

l2300DB1E:
	sw	s2,a4,+00000008

l2300DB22:
	lhu	a5,a5,+00000002
	c.add	s1,a5

l2300DB28:
	sh	s1,s0,+00000FFE
	c.j	000000002300DAC2

l2300DB2E:
	c.sw	s0,0(a5)
	sw	s2,a5,+00000008
	c.j	000000002300DB28

l2300DB36:
	c.mv	a4,a5
	c.lw	a5,4(a5)
	c.j	000000002300DA8E

;; ble_ke_is_free: 2300DB3C
;;   Called from:
;;     230171B0 (in ble_ke_task_schedule)
ble_ke_is_free proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	a1,a0
	addi	a0,sp,+0000000F
	c.jalr	a5
	c.beqz	a0,000000002300DB62

l2300DB56:
	lbu	a0,sp,+0000000F

l2300DB5A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2300DB62:
	lhu	a0,s0,-00000004
	c.lui	a5,FFFF8000
	addi	a5,a5,-00000338
	c.add	a0,a5
	sltu	a0,zero,a0
	c.j	000000002300DB5A

;; ble_ke_msg_alloc: 2300DB74
;;   Called from:
;;     2300CF1A (in ecc_multiplication_event_handler)
;;     2300DC98 (in ble_ke_msg_send_basic)
;;     2300ED42 (in llc_discon_event_complete_send)
;;     2300ED94 (in llc_le_con_cmp_evt_send)
;;     2300EEEE (in llc_le_con_cmp_evt_send)
;;     2300F0AE (in llc_le_ch_sel_algo_evt_send)
;;     2300F2C2 (in llc_con_update_complete_send)
;;     2300F354 (in llc_ltk_req_send)
;;     2300F3BC (in llc_feats_rd_event_send)
;;     2300F416 (in llc_version_rd_event_send)
;;     2300F46E (in llc_common_cmd_complete_send)
;;     2300F49A (in llc_common_cmd_status_send)
;;     2300F4C0 (in llc_common_flush_occurred_send)
;;     2300F4EC (in llc_common_enc_key_ref_comp_evt_send)
;;     2300F566 (in llc_common_enc_change_evt_send)
;;     2300F5B6 (in llc_common_nb_of_pkt_comp_evt_send)
;;     2301121C (in lld_evt_move_to_slave)
;;     2301288C (in lld_pdu_rx_handler)
;;     2301293A (in lld_pdu_rx_handler)
;;     23012C86 (in lld_util_anchor_point_move)
;;     23014CCA (in llm_end_evt_defer)
;;     23015188 (in llm_le_adv_report_ind)
;;     230152A6 (in llm_le_adv_report_ind)
;;     23015510 (in llm_common_cmd_complete_send)
;;     23015536 (in llm_common_cmd_status_send)
;;     2301650C (in llm_encryption_done)
;;     23016552 (in llm_encryption_done)
;;     2301757A (in llcp_enc_rsp_handler)
;;     23017C3C (in fn23017C04)
;;     23018522 (in llcp_length_rsp_handler)
;;     23018D10 (in llcp_con_param_req_handler)
;;     23018D9E (in llcp_con_param_req_handler)
;;     23019382 (in llcp_length_req_handler)
;;     230196A8 (in llc_auth_payl_real_to_ind_handler)
;;     2301998C (in llc_task_random_gen_request)
;;     2301A540 (in llm_ecc_result_ind_handler)
;;     2301A59A (in llm_ecc_result_ind_handler)
;;     2301ACFC (in hci_le_ltk_req_reply_cmd_handler)
;;     2301B006 (in hci_le_rd_chnl_map_cmd_handler)
;;     2301B08A (in hci_rd_auth_payl_to_cmd_handler)
;;     2301B0F2 (in hci_rd_rssi_cmd_handler)
;;     2301B16A (in hci_rd_tx_pwr_lvl_cmd_handler)
;;     2301B302 (in hci_le_con_update_cmd_handler)
;;     2301B3BC (in hci_wr_auth_payl_to_cmd_handler)
;;     2301B482 (in hci_flush_cmd_handler)
;;     2301B754 (in hci_le_rd_rfpath_compensation_cmd_handler)
;;     2301B794 (in hci_le_rd_trans_pwr_cmd_handler)
;;     2301B7CA (in hci_rd_buff_size_cmd_handler)
;;     2301B800 (in hci_rd_local_supp_feats_cmd_handler)
;;     2301B846 (in hci_rd_local_supp_cmds_cmd_handler)
;;     2301B88C (in hci_rd_local_ver_info_cmd_handler)
;;     2301B8D4 (in hci_rd_bd_addr_cmd_handler)
;;     2301B918 (in hci_le_rd_max_data_len_cmd_handler)
;;     2301B968 (in hci_le_rd_suggted_dft_data_len_cmd_handler)
;;     2301B9A8 (in hci_le_rd_supp_states_cmd_handler)
;;     2301B9EA (in hci_le_rd_wl_size_cmd_handler)
;;     2301BA18 (in hci_le_rd_adv_ch_tx_pw_cmd_handler)
;;     2301BA5C (in hci_le_rd_local_supp_feats_cmd_handler)
;;     2301BA9E (in hci_le_rd_buff_size_cmd_handler)
;;     2301BCD0 (in hci_le_rand_cmd_handler)
;;     2301C2C6 (in hci_le_test_end_cmd_handler)
;;     230674F2 (in bt_onchiphci_send)
;;     23067580 (in bt_onchiphci_send)
ble_ke_msg_alloc proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.mv	s3,a0
	c.mv	s2,a1
	c.mv	s1,a2
	c.mv	s0,a3
	c.mv	a4,a3
	c.swsp	zero,00000084
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,a0
	c.addi4spn	a0,0000000C
	c.jalr	a5
	c.beqz	a0,000000002300DBB0

l2300DBA0:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	a2,00000044
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2300DBB0:
	c.li	a1,00000000
	addi	a0,s0,+0000000C
	jal	ra,000000002300D942
	c.li	a5,FFFFFFFF
	c.sw	a0,0(a5)
	lui	a5,0004200E
	lw	a5,a5,+00000140
	sh	s3,a0,+00000004
	sh	s2,a0,+00000006
	sh	s1,a0,+00000008
	sh	s0,a0,+0000000A
	c.addi	a0,0000000C
	c.swsp	a0,00000084
	c.mv	a2,s0
	c.li	a1,00000000
	c.jalr	a5
	c.j	000000002300DBA0

;; ble_ke_msg_send: 2300DBE2
;;   Called from:
;;     2300BE5E (in hci_send_2_host)
;;     2300BF04 (in hci_send_2_controller)
;;     2300D054 (in ecc_multiplication_event_handler)
;;     2300DCA6 (in ble_ke_msg_send_basic)
;;     23011292 (in lld_evt_move_to_slave)
;;     230128E2 (in lld_pdu_rx_handler)
;;     2301295C (in lld_pdu_rx_handler)
;;     23012D06 (in lld_util_anchor_point_move)
;;     23016570 (in llm_encryption_done)
;;     230175B4 (in llcp_enc_rsp_handler)
;;     23017760 (in llc_llcp_reject_ind)
;;     23017BCC (in fn23017B9A)
;;     2301865A (in llcp_con_param_rsp_handler)
;;     23018D7C (in llcp_con_param_req_handler)
;;     230199CC (in llc_task_random_gen_request)
;;     2301AB2C (in hci_le_rem_con_param_req_reply_cmd_handler)
;;     2301AD2E (in hci_le_ltk_req_reply_cmd_handler)
;;     2301B33E (in hci_le_con_update_cmd_handler)
ble_ke_msg_send proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002300DC26

l2300DBFC:
	csrrs	s1,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	a0,0004201A
	addi	a1,s0,-0000000C
	addi	a0,a0,+0000019C
	jal	ra,000000002300C1E6
	csrrw	zero,mstatus,zero
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a0,00000002
	c.addi	sp,00000010
	jal	zero,000000002300D720

l2300DC26:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_msg_get_sent_num: 2300DC30
;;   Called from:
;;     230150E6 (in llm_le_adv_report_ind)
ble_ke_msg_get_sent_num proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	addi	a0,sp,+0000000E
	c.jalr	a5
	c.beqz	a0,000000002300DC52

l2300DC46:
	lhu	a0,sp,+0000000E

l2300DC4A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2300DC52:
	csrrs	s0,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	a0,0004201A
	addi	a0,a0,+0000019C
	jal	ra,000000002300C424
	csrrw	zero,mstatus,zero
	c.j	000000002300DC4A

;; ble_ke_msg_send_basic: 2300DC6C
;;   Called from:
;;     2300DEBE (in ble_ke_timer_schedule)
;;     23010022 (in lld_evt_elt_delete)
;;     23014D6E (in llm_end_evt_defer)
;;     2301793C (in llcp_pause_enc_req_handler)
;;     230179AA (in llcp_start_enc_req_handler)
;;     23017AC4 (in llcp_enc_req_handler)
;;     23019574 (in llm_enc_ind_handler)
;;     23019D22 (in llc_chnl_assess_timer_handler)
;;     2301A05A (in llc_check_trafic_paused)
;;     2301A3A4 (in llc_pdu_llcp_tx_ack_defer)
;;     2301A9A8 (in hci_le_set_data_len_cmd_handler)
;;     2301AF1A (in hci_le_start_enc_cmd_handler)
ble_ke_msg_send_basic proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	s2,a2
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002300DCAA

l2300DC90:
	c.mv	a2,s2
	c.mv	a1,s1
	c.mv	a0,s0
	c.li	a3,00000000
	jal	ra,000000002300DB74
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002300DBE2

l2300DCAA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_msg_free: 2300DCB6
;;   Called from:
;;     2300B106 (in ble_controller_deinit)
;;     2300BDFA (in hci_send_2_host)
;;     2300BF16 (in hci_send_2_controller)
;;     2300E1C2 (in ble_ke_flush)
;;     2300E1C8 (in ble_ke_flush)
;;     2300ECB0 (in llc_stop)
;;     23014A50 (in llm_util_adv_data_update)
;;     23014A6A (in llm_util_adv_data_update)
;;     230160AA (in llm_init)
;;     230160B8 (in llm_init)
;;     230160C2 (in llm_init)
;;     23016530 (in llm_encryption_done)
;;     23017206 (in ble_ke_task_schedule)
;;     2301A1A6 (in llc_util_clear_operation_ptr)
;;     2301C058 (in hci_le_set_scan_rsp_data_cmd_handler)
;;     2301C160 (in hci_le_set_adv_data_cmd_handler)
ble_ke_msg_free proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002300DCDA

l2300DCCE:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300DA32

l2300DCDA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ble_cmp_abs_time: 2300DCE2
ble_cmp_abs_time proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.mv	s0,a1
	c.mv	a2,a1
	c.mv	a1,a0
	addi	a0,sp,+0000000F
	c.jalr	a5
	c.beqz	a0,000000002300DD10

l2300DD02:
	lbu	a0,sp,+0000000F

l2300DD06:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2300DD10:
	c.lw	s1,8(a0)
	c.lw	s0,8(a5)
	c.sub	a0,a5
	c.srli	a0,00000016
	c.andi	a0,00000001
	c.j	000000002300DD06

;; ble_cmp_timer_id: 2300DD1C
ble_cmp_timer_id proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.mv	s0,a1
	c.mv	a2,a1
	c.mv	a1,a0
	addi	a0,sp,+0000000F
	c.jalr	a5
	c.beqz	a0,000000002300DD4A

l2300DD3C:
	lbu	a0,sp,+0000000F

l2300DD40:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2300DD4A:
	lhu	a4,s1,+00000004
	srli	a5,s0,00000010
	c.li	a0,00000000
	bne	a4,a5,000000002300DD40

l2300DD58:
	lhu	a0,s1,+00000006
	c.slli	s0,10
	c.srli	s0,00000010
	c.sub	a0,s0
	sltiu	a0,a0,+00000001
	c.j	000000002300DD40

;; ble_ke_time: 2300DD68
;;   Called from:
;;     2300DE04 (in ble_ke_time_past)
;;     2300DF9E (in ble_ke_timer_set)
ble_ke_time proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.addi4spn	a0,0000000C
	c.jalr	a5
	c.beqz	a0,000000002300DD82

l2300DD7A:
	c.lwsp	a2,00000044

l2300DD7C:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l2300DD82:
	lui	a5,00028000
	lui	a4,00080000
	c.sw	a5,28(a4)

l2300DD8C:
	c.lw	a5,28(a3)
	blt	a3,zero,000000002300DD8C

l2300DD92:
	c.lw	a5,28(a4)
	c.lw	a5,32(a0)
	sltiu	a0,a0,+00000138
	c.add	a0,a4
	c.slli	a0,05
	c.srli	a0,00000009
	c.j	000000002300DD7C

;; ble_ke_time_cmp: 2300DDA2
;;   Called from:
;;     2300DE0A (in ble_ke_time_past)
ble_ke_time_cmp proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	a2,a1
	c.mv	a1,a0
	addi	a0,sp,+0000000F
	c.jalr	a5
	c.beqz	a0,000000002300DDD0

l2300DDC2:
	lbu	a0,sp,+0000000F

l2300DDC6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2300DDD0:
	sub	a0,s0,s1
	c.srli	a0,00000016
	xori	a0,a0,+00000001
	c.andi	a0,00000001
	c.j	000000002300DDC6

;; ble_ke_time_past: 2300DDDE
;;   Called from:
;;     2300DEA2 (in ble_ke_timer_schedule)
;;     2300DED2 (in ble_ke_timer_schedule)
;;     2300DFD4 (in ble_ke_timer_set)
;;     2300E066 (in ble_ke_timer_clear)
ble_ke_time_past proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	a1,a0
	addi	a0,sp,+0000000F
	c.jalr	a5
	c.beqz	a0,000000002300DE04

l2300DDF8:
	lbu	a0,sp,+0000000F

l2300DDFC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2300DE04:
	jal	ra,000000002300DD68
	c.mv	a1,s0
	jal	ra,000000002300DDA2
	c.j	000000002300DDFC

;; ble_ke_timer_hw_set: 2300DE10
;;   Called from:
;;     2300DE9A (in ble_ke_timer_schedule)
;;     2300DECC (in ble_ke_timer_schedule)
;;     2300DFCE (in ble_ke_timer_set)
;;     2300E05E (in ble_ke_timer_clear)
ble_ke_timer_hw_set proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002300DE4A

l2300DE28:
	c.beqz	s0,000000002300DE52

l2300DE2A:
	c.lw	s0,8(a4)
	lui	a5,00028000
	sw	a4,a5,+000000F4
	c.lw	a5,12(a4)
	c.srli	a4,00000006
	c.andi	a4,00000001
	c.bnez	a4,000000002300DE4A

l2300DE3C:
	addi	a4,zero,+00000040
	c.sw	a5,24(a4)
	c.lw	a5,12(a4)
	ori	a4,a4,+00000040
	c.sw	a5,12(a4)

l2300DE4A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2300DE52:
	lui	a4,00028000
	c.lw	a4,12(a5)
	andi	a5,a5,-00000041
	c.sw	a4,12(a5)
	c.j	000000002300DE4A

;; ble_ke_timer_schedule: 2300DE60
ble_ke_timer_schedule proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002300DED8

l2300DE78:
	lui	s1,0004201A
	addi	s1,s1,+0000019C
	lui	s2,0004201A

l2300DE84:
	c.li	a0,00000003
	jal	ra,000000002300D77C
	c.lw	s1,16(s0)
	c.bnez	s0,000000002300DE9E

l2300DE8E:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,000000002300DE10

l2300DE9E:
	c.lw	s0,8(a0)
	c.addi	a0,FFFFFFFF
	jal	ra,000000002300DDDE
	c.beqz	a0,000000002300DECA

l2300DEA8:
	addi	a0,s2,+000001AC
	jal	ra,000000002300C252
	c.mv	s0,a0
	lhu	a1,a0,+00000006
	lhu	a0,a0,+00000004
	addi	a2,zero,+000000FF
	jal	ra,000000002300DC6C
	c.mv	a0,s0
	jal	ra,000000002300DA32
	c.j	000000002300DE84

l2300DECA:
	c.mv	a0,s0
	jal	ra,000000002300DE10
	c.lw	s0,8(a0)
	jal	ra,000000002300DDDE
	c.bnez	a0,000000002300DEA8

l2300DED8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_timer_init: 2300DEE4
;;   Called from:
;;     2300E172 (in ble_ke_init)
ble_ke_timer_init proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002300DF08

l2300DEF6:
	c.lwsp	a2,00000020
	lui	a1,0002300E
	addi	a1,a1,-000001A0
	c.li	a0,00000003
	c.addi	sp,00000010
	jal	zero,000000002300D6D2

l2300DF08:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_timer_set: 2300DF0E
;;   Called from:
;;     2300F18E (in llc_start)
;;     2300F1B0 (in llc_start)
;;     2300F546 (in llc_common_enc_change_evt_send)
;;     2300F556 (in llc_common_enc_change_evt_send)
;;     2300F684 (in llc_lsto_con_update)
;;     23017620 (in llcp_enc_rsp_handler)
;;     23017DFC (in llc_llcp_pause_enc_req_pdu_send)
;;     23017F82 (in llcp_pause_enc_rsp_handler)
;;     2301809E (in llc_llcp_enc_req_pdu_send)
;;     230182C0 (in llcp_start_enc_rsp_handler)
;;     23018E88 (in llcp_con_param_req_handler)
;;     23019014 (in llc_llcp_terminate_ind_pdu_send)
;;     23019686 (in llc_auth_payl_real_to_ind_handler)
;;     23019696 (in llc_auth_payl_real_to_ind_handler)
;;     23019970 (in llc_length_req_ind_handler)
;;     23019B28 (in llc_enc_mgt_ind_handler)
;;     23019C30 (in llc_enc_mgt_ind_handler)
;;     23019CC2 (in llc_chnl_assess_timer_handler)
;;     23019D86 (in llc_link_sup_to_ind_handler)
;;     23019E36 (in llc_auth_payl_nearly_to_ind_handler)
;;     2301A4A8 (in llc_pdu_defer)
;;     2301A4DA (in llc_pdu_defer)
;;     2301A4EC (in llc_pdu_defer)
;;     2301ABD0 (in hci_le_rem_con_param_req_reply_cmd_handler)
;;     2301AC6A (in hci_le_ltk_req_neg_reply_cmd_handler)
;;     2301AF9C (in hci_le_rd_rem_used_feats_cmd_handler)
;;     2301B432 (in hci_wr_auth_payl_to_cmd_handler)
;;     2301B442 (in hci_wr_auth_payl_to_cmd_handler)
;;     2301B568 (in hci_rd_rem_ver_info_cmd_handler)
;;     2301BE48 (in hci_le_set_host_ch_class_cmd_handler)
ble_ke_timer_set proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
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
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002300DFF8

l2300DF3A:
	lui	s4,0004201A
	addi	a5,s4,+0000019C
	lui	a4,00000400
	c.lw	a5,16(a5)
	addi	s4,s4,+0000019C
	bgeu	s0,a4,000000002300DFF2

l2300DF50:
	c.bnez	s0,000000002300DF54

l2300DF52:
	c.li	s0,00000001

l2300DF54:
	c.li	s2,00000000
	c.beqz	a5,000000002300DF6C

l2300DF58:
	lhu	a4,a5,+00000004
	bne	a4,s6,000000002300DF6C

l2300DF60:
	lhu	s2,a5,+00000006
	sub	s2,s2,s5
	sltiu	s2,s2,+00000001

l2300DF6C:
	slli	a2,s6,00000010
	lui	a1,0002300E
	lui	s3,0004201A
	or	a2,a2,s5
	addi	a1,a1,-000002E4
	addi	a0,s3,+000001AC
	jal	ra,0000000023016F36
	c.mv	s1,a0
	c.bnez	a0,000000002300DF9E

l2300DF8C:
	c.li	a1,00000000
	c.li	a0,0000000C
	jal	ra,000000002300D942
	c.mv	s1,a0
	sh	s6,a0,+00000004
	sh	s5,a0,+00000006

l2300DF9E:
	jal	ra,000000002300DD68
	c.add	s0,a0
	slli	a5,s0,00000009
	c.srli	a5,00000009
	lui	a2,0002300E
	c.sw	s1,8(a5)
	addi	a2,a2,-0000031E
	c.mv	a1,s1
	addi	a0,s3,+000001AC
	jal	ra,0000000023016FA0
	bne	s2,zero,000000002300DFCA

l2300DFC2:
	lw	a5,s4,+00000010
	bne	a5,s1,000000002300DFD2

l2300DFCA:
	lw	a0,s4,+00000010
	jal	ra,000000002300DE10

l2300DFD2:
	c.mv	a0,s0
	jal	ra,000000002300DDDE
	c.beqz	a0,000000002300DFF8

l2300DFDA:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.li	a0,00000003
	c.addi16sp	00000020
	jal	zero,000000002300D720

l2300DFF2:
	addi	s0,a4,-00000001
	c.j	000000002300DF54

l2300DFF8:
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

;; ble_ke_timer_clear: 2300E00C
;;   Called from:
;;     2300F58E (in llc_common_enc_change_evt_send)
;;     2300F598 (in llc_common_enc_change_evt_send)
;;     2301749E (in llcp_ping_rsp_handler)
;;     230174B8 (in llcp_terminate_ind_handler)
;;     23017678 (in llc_llcp_reject_ind)
;;     230176B0 (in llc_llcp_reject_ind)
;;     2301772A (in llc_llcp_reject_ind)
;;     230177CE (in llc_llcp_reject_ind)
;;     230178DE (in llcp_pause_enc_req_handler)
;;     23017A84 (in llcp_enc_req_handler)
;;     23017B88 (in fn23017B78)
;;     23017BAA (in fn23017B9A)
;;     23017C14 (in fn23017C04)
;;     23017C9A (in fn23017C7C)
;;     23017D56 (in llcp_vers_ind_handler)
;;     23017EB8 (in llcp_pause_enc_rsp_handler)
;;     23017F34 (in llcp_pause_enc_rsp_handler)
;;     2301829A (in llcp_start_enc_rsp_handler)
;;     2301840C (in llcp_length_rsp_handler)
;;     230185D4 (in llcp_con_param_rsp_handler)
;;     23018720 (in llcp_feats_rsp_handler)
;;     23018A10 (in fn230189F4)
;;     23018A3C (in fn230189F4)
;;     23019F74 (in fn23019F62)
;;     23019F7E (in fn23019F62)
;;     23019F88 (in fn23019F62)
;;     23019F92 (in fn23019F62)
;;     2301A10E (in llc_util_dicon_procedure)
ble_ke_timer_clear proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s1,a0
	c.mv	s3,a1
	c.mv	a2,a1
	c.mv	a1,a0
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002300E0A0

l2300E02E:
	lui	s2,0004201A
	addi	s2,s2,+0000019C
	lw	s0,s2,+00000010
	c.beqz	s0,000000002300E0A0

l2300E03C:
	lhu	a5,s0,+00000004
	lui	a0,0004201A
	bne	a5,s1,000000002300E084

l2300E048:
	lhu	a5,s0,+00000006
	bne	a5,s3,000000002300E084

l2300E050:
	addi	a0,a0,+000001AC
	jal	ra,000000002300C252
	lw	s1,s2,+00000010
	c.mv	a0,s1
	jal	ra,000000002300DE10
	c.beqz	s1,000000002300E072

l2300E064:
	c.lw	s1,8(a0)
	jal	ra,000000002300DDDE
	c.beqz	a0,000000002300E072

l2300E06C:
	c.li	a0,00000003
	jal	ra,000000002300D720

l2300E072:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,000000002300DA32

l2300E084:
	slli	a2,s1,00000010
	lui	a1,0002300E
	or	a2,a2,s3
	addi	a1,a1,-000002E4
	addi	a0,a0,+000001AC
	jal	ra,0000000023016F36
	c.mv	s0,a0
	c.bnez	a0,000000002300E072

l2300E0A0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; ble_ke_timer_active: 2300E0AE
;;   Called from:
;;     23019DFA (in llc_auth_payl_nearly_to_ind_handler)
ble_ke_timer_active proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	a2,a1
	c.mv	a1,a0
	addi	a0,sp,+0000000F
	c.jalr	a5
	c.beqz	a0,000000002300E0DC

l2300E0CE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	lbu	a0,sp,+0000000F
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2300E0DC:
	lui	a5,0004201A
	lw	a5,a5,+000001AC

l2300E0E4:
	c.bnez	a5,000000002300E0EC

l2300E0E6:
	sb	zero,sp,+0000000F
	c.j	000000002300E0CE

l2300E0EC:
	lhu	a4,a5,+00000004
	bne	a4,s0,000000002300E0FC

l2300E0F4:
	lhu	a4,a5,+00000006
	beq	a4,s1,000000002300E100

l2300E0FC:
	c.lw	a5,0(a5)
	c.j	000000002300E0E4

l2300E100:
	c.li	a5,00000001
	sb	a5,sp,+0000000F
	c.j	000000002300E0CE

;; ble_ke_init: 2300E108
;;   Called from:
;;     2300C074 (in rwip_init)
ble_ke_init proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002300E176

l2300E11C:
	lui	s0,0004200E
	lw	a5,s0,+00000140
	lui	a0,0004201A
	c.li	a2,00000008
	c.li	a1,00000000
	addi	a0,a0,+000001B4
	c.jalr	a5
	lw	a5,s0,+00000140
	lui	a0,0004201A
	c.li	a2,00000004
	c.li	a1,00000000
	addi	a0,a0,+000001BC
	c.jalr	a5
	jal	ra,000000002300D69E
	lui	a5,0004201A
	addi	a5,a5,+0000019C
	sw	zero,a5,+00000008
	sw	zero,a5,+0000000C
	sw	zero,a5,+00000000
	sw	zero,a5,+00000004
	sw	zero,a5,+00000010
	sw	zero,a5,+00000014
	jal	ra,000000002301721C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300DEE4

l2300E176:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ble_ke_flush: 2300E17E
;;   Called from:
;;     2300C00A (in rwip_reset)
ble_ke_flush proc
	lui	a5,0004200E
	lw	a5,a5,+00000134
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.li	a0,00000000
	c.jalr	a5
	c.bnez	a0,000000002300E1D8

l2300E192:
	lui	s0,0004201A

l2300E196:
	addi	a0,s0,+0000019C
	jal	ra,000000002300C252
	c.bnez	a0,000000002300E1C2

l2300E1A0:
	lui	s0,0004201A

l2300E1A4:
	addi	a0,s0,+000001A4
	jal	ra,000000002300C252
	c.bnez	a0,000000002300E1C8

l2300E1AE:
	lui	s0,0004201A

l2300E1B2:
	addi	a0,s0,+000001AC
	jal	ra,000000002300C252
	c.beqz	a0,000000002300E1CE

l2300E1BC:
	jal	ra,000000002300DA32
	c.j	000000002300E1B2

l2300E1C2:
	jal	ra,000000002300DCB6
	c.j	000000002300E196

l2300E1C8:
	jal	ra,000000002300DCB6
	c.j	000000002300E1A4

l2300E1CE:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300D7C6

l2300E1D8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; rf_force_agc_enable: 2300E1E0
rf_force_agc_enable proc
	c.jr	ra

;; rf_txpwr_dbm_get: 2300E1E2
rf_txpwr_dbm_get proc
	lui	a5,0004200E
	lbu	a0,a5,-0000044C
	c.jr	ra

;; rf_rssi_convert: 2300E1EC
rf_rssi_convert proc
	c.li	a5,00000002
	sub	a0,a5,a0
	c.slli	a0,18
	c.srai	a0,00000018
	c.jr	ra

;; rf_reg_rd: 2300E1F8
rf_reg_rd proc
	c.li	a0,00000000
	c.jr	ra

;; rf_reg_wr: 2300E1FC
rf_reg_wr proc
	c.jr	ra

;; rf_sleep: 2300E1FE
rf_sleep proc
	lui	a4,00028000
	c.lw	a4,48(a5)
	ori	a5,a5,+00000007
	c.sw	a4,48(a5)
	c.jr	ra

;; rf_txpwr_dec: 2300E20C
rf_txpwr_dec proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	addi	s0,s0,-0000044C
	lb	a4,s0,+00000000
	lui	a5,0004200E
	c.swsp	s1,00000080
	c.sub	a4,a0
	c.mv	s1,a0
	lb	a0,a5,+00000156
	c.swsp	ra,00000084
	c.add	a0,a4
	jal	ra,000000002305798A
	c.beqz	a0,000000002300E23E

l2300E234:
	lbu	a5,s0,+00000000
	c.sub	a5,s1
	sb	a5,s0,+00000000

l2300E23E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; rf_txpwr_inc: 2300E248
rf_txpwr_inc proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	addi	s0,s0,-0000044C
	lb	a5,s0,+00000000
	lui	a4,0004200E
	c.swsp	s1,00000080
	c.add	a5,a0
	c.mv	s1,a0
	lb	a0,a4,+00000156
	c.swsp	ra,00000084
	c.add	a0,a5
	jal	ra,000000002305798A
	c.beqz	a0,000000002300E27A

l2300E270:
	lbu	a5,s0,+00000000
	c.add	s1,a5
	sb	s1,s0,+00000000

l2300E27A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; rf_txpwr_max_set: 2300E284
;;   Called from:
;;     2300E34C (in rf_reset)
rf_txpwr_max_set proc
	lui	a5,0004200E
	lb	a3,a5,-0000044C
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	addi	a4,zero,+0000007F
	addi	a5,a5,-0000044C
	bne	a3,a4,000000002300E2A0

l2300E29E:
	c.li	a0,0000000F

l2300E2A0:
	lui	s0,0004200E
	addi	s0,s0,+00000156
	sb	a0,a5,+00000000
	lb	a5,s0,+00000000
	c.add	a0,a5
	jal	ra,000000002305798A
	c.bnez	a0,000000002300E2C8

l2300E2B8:
	lb	a0,s0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	a0,0000000F
	c.addi	sp,00000010
	jal	zero,000000002305798A

l2300E2C8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; rf_reset: 2300E2D0
rf_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	lui	a5,00028000
	lw	a4,a5,+00000080
	c.lui	a3,FFFF0000
	addi	a3,a3,+000000FF
	andi	a4,a4,-00000100
	ori	a4,a4,+00000042
	sw	a4,a5,+00000080
	lw	a4,a5,+00000080
	c.and	a4,a3
	sw	a4,a5,+00000080
	lw	a4,a5,+00000080
	lui	a3,000FF010
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	lui	a3,000003C0
	c.or	a4,a3
	sw	a4,a5,+00000080
	lw	a4,a5,+00000080
	lui	a3,00081000
	c.addi	a3,FFFFFFFF
	c.and	a4,a3
	sw	a4,a5,+00000080
	c.li	a4,0000000A
	sw	a4,a5,+000001A4
	addi	a4,zero,+0000007D
	sw	a4,a5,+000001A8
	lw	a4,a5,+000001AC
	andi	a4,a4,-00000040
	ori	a4,a4,+00000028
	sw	a4,a5,+000001AC
	jal	ra,000000002305635C
	lui	a5,0004200E
	c.lwsp	a2,00000020
	lb	a0,a5,-0000044C
	c.addi	sp,00000010
	jal	zero,000000002300E284

;; ble_rf_set_pwr_offset: 2300E350
;;   Called from:
;;     23039902 (in hal_board_cfg)
ble_rf_set_pwr_offset proc
	lui	a5,0004200E
	sb	a0,a5,+00000156
	c.jr	ra

;; ble_controller_set_tx_pwr: 2300E35A
;;   Called from:
;;     23039B7C (in hal_board_cfg)
ble_controller_set_tx_pwr proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.slli	a0,18
	lui	s0,0004200E
	c.srai	a0,00000018
	lui	a5,0004200E
	addi	s0,s0,+00000156
	sb	a0,a5,+00000BB4
	lb	a5,s0,+00000000
	c.swsp	ra,00000084
	c.add	a0,a5
	jal	ra,000000002305798A
	c.bnez	a0,000000002300E390

l2300E380:
	lb	a0,s0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	a0,0000000F
	c.addi	sp,00000010
	jal	zero,000000002305798A

l2300E390:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; ble_rf_init: 2300E398
;;   Called from:
;;     2300C0A6 (in rwip_init)
ble_rf_init proc
	lui	a5,0002300E
	addi	a5,a5,+000001F8
	c.sw	a0,32(a5)
	lui	a5,0002300E
	addi	a5,a5,+000001FC
	c.sw	a0,36(a5)
	lui	a5,0002300E
	addi	a5,a5,+000001E2
	c.sw	a0,20(a5)
	c.li	a5,0000000F
	sb	a5,a0,+0000002C
	lui	a5,0002300E
	addi	a5,a5,+00000284
	c.sw	a0,16(a5)
	lui	a5,0002300E
	addi	a5,a5,+00000248
	c.sw	a0,12(a5)
	lui	a5,0002300E
	addi	a5,a5,+0000020C
	c.sw	a0,8(a5)
	lui	a5,0002300E
	addi	a5,a5,+000001FE
	c.sw	a0,40(a5)
	lui	a5,0002300E
	addi	a5,a5,+000002D0
	c.sw	a0,0(a5)
	lui	a5,0002300E
	addi	a5,a5,+000001E0
	c.sw	a0,4(a5)
	lui	a5,0002300E
	addi	a5,a5,+000001EC
	c.sw	a0,28(a5)
	c.jr	ra

;; pka0_write_common_op_first_cfg: 2300E404
;;   Called from:
;;     2300E6FA (in sec_eng_pka0_movdat)
;;     2300E742 (in sec_eng_pka0_msub)
;;     2300E77A (in sec_eng_pka0_mrem)
;;     2300E7D8 (in sec_eng_pka0_mmul)
;;     2300E818 (in sec_eng_pka0_mexp)
;;     2300E84E (in sec_eng_pka0_lcmp)
;;     2300E898 (in sec_eng_pka0_lsub)
;;     2300E8C6 (in sec_eng_pka0_lmul)
;;     2300E90E (in sec_eng_pka0_lmul2n)
pka0_write_common_op_first_cfg proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.mv	s0,a4
	lui	a4,0004200E
	lw	a4,a4,+00000140
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.mv	s1,a1
	c.mv	s3,a0
	c.li	a1,00000000
	c.swsp	ra,0000009C
	c.mv	s2,a2
	c.addi4spn	a0,0000001C
	c.li	a2,00000004
	c.swsp	a5,00000004
	c.swsp	a3,00000084
	c.jalr	a4
	sb	s3,sp,+0000001C
	c.lwsp	t3,00000064
	c.lui	a4,FFFFF000
	addi	a4,a4,+000000FF
	c.andi	s1,0000000F
	c.and	a1,a4
	c.slli	s1,08
	c.or	a1,s1
	c.swsp	a1,0000008C
	c.li	a4,00000019
	c.lwsp	s0,000000E4
	beq	s0,a4,000000002300E46A

l2300E44A:
	lui	a4,000FFF01
	c.lwsp	a2,000000A4
	c.addi	a4,FFFFFFFF
	c.and	a1,a4
	c.slli	s2,0C
	lui	a4,000FF100
	or	a1,a1,s2
	c.andi	a3,0000000F
	c.addi	a4,FFFFFFFF
	c.slli	a3,14
	c.and	a1,a4
	c.or	a1,a3
	c.swsp	a1,0000008C

l2300E46A:
	c.lwsp	t3,000000C4
	lui	a3,00081000
	andi	s0,s0,+0000007F
	c.addi	a3,FFFFFFFF
	c.slli	s0,18
	c.and	a4,a3
	c.or	a4,s0
	c.slli	a4,01
	c.slli	a5,1F
	c.srli	a4,00000001
	c.or	a4,a5
	lui	a5,00040004
	sw	a4,a5,+00000340
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

;; pka0_write_common_op_snd_cfg_S1: 2300E49A
;;   Called from:
;;     2300E856 (in sec_eng_pka0_lcmp)
;;     2300E8A8 (in sec_eng_pka0_lsub)
;;     2300E8D6 (in sec_eng_pka0_lmul)
pka0_write_common_op_snd_cfg_S1 proc
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.mv	s0,a1
	c.addi4spn	a0,0000000C
	c.li	a1,00000000
	c.li	a2,00000004
	c.jalr	a5
	c.lwsp	a2,00000064
	lui	a5,000FFF01
	c.addi	a5,FFFFFFFF
	c.slli	s1,0C
	c.and	a1,a5
	lui	a5,000FF100
	c.or	a1,s1
	c.addi	a5,FFFFFFFF
	c.andi	s0,0000000F
	c.slli	s0,14
	c.and	a1,a5
	c.or	a1,s0
	lui	a5,00040004
	sw	a1,a5,+00000340
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; pka0_write_common_op_snd_cfg_S1_S2: 2300E4E4
;;   Called from:
;;     2300E75A (in sec_eng_pka0_msub)
;;     2300E7F0 (in sec_eng_pka0_mmul)
;;     2300E830 (in sec_eng_pka0_mexp)
pka0_write_common_op_snd_cfg_S1_S2 proc
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.mv	s2,a2
	c.mv	s1,a0
	c.mv	s0,a1
	c.addi4spn	a0,0000001C
	c.li	a1,00000000
	c.li	a2,00000004
	c.swsp	a3,00000084
	c.jalr	a5
	c.lwsp	t3,00000064
	lui	a5,000FFF01
	c.addi	a5,FFFFFFFF
	c.slli	s1,0C
	c.and	a1,a5
	lui	a5,000FF100
	c.or	a1,s1
	c.addi	a5,FFFFFFFF
	c.andi	s0,0000000F
	c.lwsp	a2,000000A4
	c.slli	s0,14
	c.and	a1,a5
	c.or	a1,s0
	c.swsp	a1,0000008C
	sb	s2,sp,+0000001C
	c.andi	a3,0000000F
	slli	a5,a3,00000008
	c.lwsp	t3,000000A4
	c.lui	a4,FFFFF000
	addi	a4,a4,+000000FF
	c.and	a3,a4
	c.or	a3,a5
	lui	a5,00040004
	sw	a3,a5,+00000340
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

;; sec_eng_pka0_reset: 2300E550
;;   Called from:
;;     2300D0D6 (in ecc_generate_key256)
sec_eng_pka0_reset proc
	lui	a5,00040004
	sw	zero,a5,+00000300
	c.li	a4,00000008
	sw	a4,a5,+00000300
	c.jr	ra

;; sec_eng_pka0_clear_int: 2300E560
;;   Called from:
;;     2300C798 (in pka_point_addition.constprop.3)
;;     2300CB6E (in pka_point_double.constprop.2)
;;     2300CF80 (in ecc_multiplication_event_handler)
;;     2300E65C (in sec_eng_pka0_read_data)
;;     2300E6DE (in sec_eng_pka0_clir)
;;     2300E712 (in sec_eng_pka0_movdat)
;;     2300E85E (in sec_eng_pka0_lcmp)
sec_eng_pka0_clear_int proc
	lui	a5,00040004
	lw	a4,a5,+00000300
	ori	a4,a4,+00000200
	sw	a4,a5,+00000300
	lw	a4,a5,+00000300
	andi	a4,a4,-00000201
	sw	a4,a5,+00000300
	c.jr	ra

;; sec_eng_pka0_pld: 2300E57E
;;   Called from:
;;     2300C4B8 (in Mont2GF)
;;     2300C900 (in GF2Mont.constprop.8)
;;     2300C912 (in GF2Mont.constprop.8)
;;     2300CB9C (in pka_addition_win.constprop.1)
;;     2300CBB0 (in pka_addition_win.constprop.1)
;;     2300CBC4 (in pka_addition_win.constprop.1)
;;     2300CBD6 (in pka_addition_win.constprop.1)
;;     2300CBEA (in pka_addition_win.constprop.1)
;;     2300CBFE (in pka_addition_win.constprop.1)
;;     2300CD34 (in ecc_multiplication_event_handler)
;;     2300CD48 (in ecc_multiplication_event_handler)
;;     2300CD5C (in ecc_multiplication_event_handler)
;;     2300CF50 (in ecc_multiplication_event_handler)
;;     2300D384 (in ecc_generate_key256)
;;     2300D39C (in ecc_generate_key256)
;;     2300D3AE (in ecc_generate_key256)
;;     2300D3C0 (in ecc_generate_key256)
;;     2300D3D2 (in ecc_generate_key256)
;;     2300D3E4 (in ecc_generate_key256)
;;     2300D3F6 (in ecc_generate_key256)
;;     2300D408 (in ecc_generate_key256)
;;     2300D41A (in ecc_generate_key256)
;;     2300D432 (in ecc_generate_key256)
;;     2300D44A (in ecc_generate_key256)
;;     2300D462 (in ecc_generate_key256)
;;     2300D47A (in ecc_generate_key256)
;;     2300D492 (in ecc_generate_key256)
;;     2300D4AA (in ecc_generate_key256)
sec_eng_pka0_pld proc
	slli	a6,a0,00000014
	c.slli	a2,0C
	srli	a6,a6,00000014
	c.andi	a3,0000000F
	c.slli	a3,14
	or	a6,a6,a2
	andi	a4,a4,+0000007F
	c.slli	a4,18
	or	a6,a6,a3
	c.slli	a5,1F
	or	a6,a6,a4
	or	a6,a6,a5
	lui	a5,00040004
	sw	a6,a5,+00000340
	c.li	a4,00000000
	andi	a6,a0,+00000007
	addi	a7,a5,+00000340
	addi	a3,a5,+00000360

l2300E5BA:
	blt	a4,a0,000000002300E5C0

l2300E5BE:
	c.jr	ra

l2300E5C0:
	slli	a2,a4,00000002
	andi	a5,a4,+00000007
	c.add	a2,a1
	c.slli	a5,02
	c.lw	a2,0(a2)
	bne	a6,zero,000000002300E5DA

l2300E5D2:
	c.add	a5,a3

l2300E5D4:
	c.sw	a5,0(a2)
	c.addi	a4,00000001
	c.j	000000002300E5BA

l2300E5DA:
	c.add	a5,a7
	c.j	000000002300E5D4

;; sec_eng_pka0_wait_4_isr: 2300E5DE
;;   Called from:
;;     2300C784 (in pka_point_addition.constprop.3)
;;     2300CB6A (in pka_point_double.constprop.2)
;;     2300CF7C (in ecc_multiplication_event_handler)
;;     2300E656 (in sec_eng_pka0_read_data)
;;     2300E6D6 (in sec_eng_pka0_clir)
;;     2300E708 (in sec_eng_pka0_movdat)
;;     2300E85A (in sec_eng_pka0_lcmp)
sec_eng_pka0_wait_4_isr proc
	lui	a5,00040004
	lw	a5,a5,+00000300
	lui	a4,00040004

l2300E5EA:
	andi	a5,a5,+00000100
	c.beqz	a5,000000002300E5F2

l2300E5F0:
	c.jr	ra

l2300E5F2:
	lw	a5,a4,+00000300
	c.j	000000002300E5EA

;; sec_eng_pka0_read_data: 2300E5F8
;;   Called from:
;;     2300C7AE (in pka_read_result.constprop.4)
;;     2300C7C2 (in pka_read_result.constprop.4)
;;     2300C7DE (in pka_read_result.constprop.4)
;;     2300C942 (in GF2Mont.constprop.8)
;;     2300CFC2 (in ecc_multiplication_event_handler)
;;     2300CFCE (in ecc_multiplication_event_handler)
sec_eng_pka0_read_data proc
	addi	a5,a0,-00000001
	andi	a5,a5,+000000FF
	c.li	a6,00000009
	c.li	a4,00000000
	bltu	a6,a5,000000002300E618

l2300E608:
	lui	a4,00023074
	addi	a4,a4,-0000033C
	c.slli	a5,01
	c.add	a5,a4
	lhu	a4,a5,+00000000

l2300E618:
	andi	a4,a4,+000000FF
	bltu	a4,a3,000000002300E6AC

l2300E620:
	c.slli	a1,0C
	c.andi	a0,0000000F
	c.slli	a0,14
	c.or	a1,a3
	c.addi16sp	FFFFFFD0
	c.or	a1,a0
	lui	a5,000B8000
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	lui	s2,00040004
	c.or	a1,a5
	sw	a1,s2,+00000340
	c.mv	s0,a3
	sw	zero,s2,+00000340
	c.mv	s1,a2
	addi	s5,s2,+00000340
	jal	ra,000000002300E5DE
	c.li	s3,00000000
	jal	ra,000000002300E560
	andi	s4,s0,+00000007
	c.swsp	zero,00000084
	addi	s2,s2,+00000360
	lui	s6,0004200E

l2300E66E:
	blt	s3,s0,000000002300E686

l2300E672:
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

l2300E686:
	andi	a0,s3,+00000007
	c.slli	a0,02
	add	a5,a0,s2
	beq	s4,zero,000000002300E698

l2300E694:
	add	a5,a0,s5

l2300E698:
	c.lw	a5,0(a5)
	c.li	a2,00000004
	c.addi4spn	a1,0000000C
	c.swsp	a5,00000084
	lw	a5,s6,+0000013C
	c.add	a0,s1
	c.addi	s3,00000001
	c.jalr	a5
	c.j	000000002300E66E

l2300E6AC:
	c.jr	ra

;; sec_eng_pka0_clir: 2300E6AE
;;   Called from:
;;     2300C4C4 (in Mont2GF)
;;     2300C4D0 (in Mont2GF)
;;     2300C506 (in Mont2GF)
;;     2300C51A (in getFinalPoint)
;;     2300C526 (in getFinalPoint)
;;     2300C55C (in getFinalPoint)
;;     2300C956 (in GF2Mont.constprop.8)
sec_eng_pka0_clir proc
	c.slli	a2,0C
	c.andi	a1,0000000F
	c.slli	a1,14
	c.or	a3,a2
	c.or	a3,a1
	lui	a2,00035000
	sltu	a0,zero,a0
	c.addi	sp,FFFFFFF0
	c.slli	a0,1F
	c.or	a3,a2
	c.swsp	ra,00000084
	lui	a5,00040004
	c.or	a3,a0
	sw	a3,a5,+00000340
	sw	zero,a5,+00000340
	jal	ra,000000002300E5DE
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300E560

;; sec_eng_pka0_movdat: 2300E6E2
;;   Called from:
;;     2300C7F8 (in pka_cp_x2_to_x1.constprop.5)
;;     2300C812 (in pka_cp_x2_to_x1.constprop.5)
;;     2300C834 (in pka_cp_x2_to_x1.constprop.5)
sec_eng_pka0_movdat proc
	c.addi	sp,FFFFFFF0
	c.mv	a6,a3
	c.swsp	s0,00000004
	c.mv	s0,a0
	sltu	a5,zero,s0
	c.mv	a0,a4
	c.mv	a3,a1
	addi	a4,zero,+00000032
	c.mv	a1,a6
	c.swsp	ra,00000084
	jal	ra,000000002300E404
	lui	a5,00040004
	sw	zero,a5,+00000340
	c.beqz	s0,000000002300E716

l2300E708:
	jal	ra,000000002300E5DE
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300E560

l2300E716:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; sec_eng_pka0_msub: 2300E71E
;;   Called from:
;;     2300C5FE (in pka_point_addition.constprop.3)
;;     2300C614 (in pka_point_addition.constprop.3)
;;     2300C698 (in pka_point_addition.constprop.3)
;;     2300C6DA (in pka_point_addition.constprop.3)
;;     2300C74E (in pka_point_addition.constprop.3)
;;     2300C780 (in pka_point_addition.constprop.3)
;;     2300C9BC (in pka_point_double.constprop.2)
;;     2300CA5E (in pka_point_double.constprop.2)
;;     2300CACC (in pka_point_double.constprop.2)
;;     2300CB3A (in pka_point_double.constprop.2)
sec_eng_pka0_msub proc
	c.addi	sp,FFFFFFE0
	c.mv	t3,a3
	c.mv	t1,a4
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a5
	lbu	s1,sp,+00000020
	c.mv	a3,a1
	sltu	a5,zero,a0
	c.mv	a1,t3
	c.mv	a0,t1
	addi	a4,zero,+00000027
	c.swsp	ra,0000008C
	c.swsp	a6,00000084
	c.swsp	a7,00000004
	jal	ra,000000002300E404
	c.lwsp	s0,00000028
	c.lwsp	a2,00000008
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a2,s1
	c.lwsp	s4,00000024
	c.mv	a3,a7
	c.mv	a0,a6
	c.addi16sp	00000020
	jal	zero,000000002300E4E4

;; sec_eng_pka0_mrem: 2300E75E
;;   Called from:
;;     2300C4F4 (in Mont2GF)
;;     2300C54A (in getFinalPoint)
;;     2300C936 (in GF2Mont.constprop.8)
sec_eng_pka0_mrem proc
	c.addi16sp	FFFFFFD0
	c.mv	t1,a3
	c.mv	a7,a4
	c.swsp	s0,00000014
	addi	a4,zero,+00000026
	c.mv	a3,a1
	c.mv	s0,a5
	c.mv	a1,t1
	sltu	a5,zero,a0
	c.mv	a0,a7
	c.swsp	ra,00000094
	c.swsp	a6,00000084
	jal	ra,000000002300E404
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.addi4spn	a0,0000001C
	c.li	a2,00000004
	c.li	a1,00000000
	c.jalr	a5
	c.lwsp	a2,00000008
	c.lui	a4,FFFFF000
	addi	a4,a4,+000000FF
	sb	a6,sp,+0000001C
	c.lwsp	t3,000000E4
	c.andi	s0,0000000F
	c.slli	s0,08
	c.and	a5,a4
	c.or	a5,s0
	lui	a4,00040004
	sw	a5,a4,+00000340
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

;; sec_eng_pka0_mmul: 2300E7B4
;;   Called from:
;;     2300C5A2 (in pka_point_addition.constprop.3)
;;     2300C5BC (in pka_point_addition.constprop.3)
;;     2300C5D2 (in pka_point_addition.constprop.3)
;;     2300C5E8 (in pka_point_addition.constprop.3)
;;     2300C62A (in pka_point_addition.constprop.3)
;;     2300C640 (in pka_point_addition.constprop.3)
;;     2300C656 (in pka_point_addition.constprop.3)
;;     2300C66C (in pka_point_addition.constprop.3)
;;     2300C682 (in pka_point_addition.constprop.3)
;;     2300C6AE (in pka_point_addition.constprop.3)
;;     2300C6C4 (in pka_point_addition.constprop.3)
;;     2300C6F0 (in pka_point_addition.constprop.3)
;;     2300C706 (in pka_point_addition.constprop.3)
;;     2300C722 (in pka_point_addition.constprop.3)
;;     2300C738 (in pka_point_addition.constprop.3)
;;     2300C764 (in pka_point_addition.constprop.3)
;;     2300C990 (in pka_point_double.constprop.2)
;;     2300C9A6 (in pka_point_double.constprop.2)
;;     2300C9DA (in pka_point_double.constprop.2)
;;     2300C9F0 (in pka_point_double.constprop.2)
;;     2300CA06 (in pka_point_double.constprop.2)
;;     2300CA1C (in pka_point_double.constprop.2)
;;     2300CA32 (in pka_point_double.constprop.2)
;;     2300CA48 (in pka_point_double.constprop.2)
;;     2300CA74 (in pka_point_double.constprop.2)
;;     2300CA8A (in pka_point_double.constprop.2)
;;     2300CAA0 (in pka_point_double.constprop.2)
;;     2300CAB6 (in pka_point_double.constprop.2)
;;     2300CAE2 (in pka_point_double.constprop.2)
;;     2300CAF8 (in pka_point_double.constprop.2)
;;     2300CB0E (in pka_point_double.constprop.2)
;;     2300CB24 (in pka_point_double.constprop.2)
;;     2300CB50 (in pka_point_double.constprop.2)
;;     2300CB66 (in pka_point_double.constprop.2)
sec_eng_pka0_mmul proc
	c.addi	sp,FFFFFFE0
	c.mv	t3,a3
	c.mv	t1,a4
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a5
	lbu	s1,sp,+00000020
	c.mv	a3,a1
	sltu	a5,zero,a0
	c.mv	a1,t3
	c.mv	a0,t1
	addi	a4,zero,+00000025
	c.swsp	ra,0000008C
	c.swsp	a6,00000084
	c.swsp	a7,00000004
	jal	ra,000000002300E404
	c.lwsp	s0,00000028
	c.lwsp	a2,00000008
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a2,s1
	c.lwsp	s4,00000024
	c.mv	a3,a7
	c.mv	a0,a6
	c.addi16sp	00000020
	jal	zero,000000002300E4E4

;; sec_eng_pka0_mexp: 2300E7F4
;;   Called from:
;;     2300CF78 (in ecc_multiplication_event_handler)
sec_eng_pka0_mexp proc
	c.addi	sp,FFFFFFE0
	c.mv	t3,a3
	c.mv	t1,a4
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a5
	lbu	s1,sp,+00000020
	c.mv	a3,a1
	sltu	a5,zero,a0
	c.mv	a1,t3
	c.mv	a0,t1
	addi	a4,zero,+00000023
	c.swsp	ra,0000008C
	c.swsp	a6,00000084
	c.swsp	a7,00000004
	jal	ra,000000002300E404
	c.lwsp	s0,00000028
	c.lwsp	a2,00000008
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a2,s1
	c.lwsp	s4,00000024
	c.mv	a3,a7
	c.mv	a0,a6
	c.addi16sp	00000020
	jal	zero,000000002300E4E4

;; sec_eng_pka0_lcmp: 2300E834
;;   Called from:
;;     2300C860 (in pka_point_inf_check.constprop.7)
;;     2300C874 (in pka_point_inf_check.constprop.7)
;;     2300C888 (in pka_point_inf_check.constprop.7)
;;     2300C8A6 (in pka_point_inf_check.constprop.7)
sec_eng_pka0_lcmp proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.li	a5,00000001
	c.mv	s0,a0
	c.mv	s2,a3
	c.mv	a0,a2
	c.li	a3,00000000
	c.li	a2,00000000
	c.mv	s1,a4
	c.li	a4,00000019
	c.swsp	ra,00000084
	jal	ra,000000002300E404
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002300E49A
	jal	ra,000000002300E5DE
	jal	ra,000000002300E560
	lui	a5,00040004
	lw	a5,a5,+00000300
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.srli	a5,00000018
	c.andi	a5,00000001
	sb	a5,s0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; sec_eng_pka0_lsub: 2300E87E
;;   Called from:
;;     2300CF62 (in ecc_multiplication_event_handler)
sec_eng_pka0_lsub proc
	c.addi	sp,FFFFFFE0
	c.mv	t1,a3
	c.mv	a7,a4
	c.swsp	s0,0000000C
	c.mv	a3,a1
	c.mv	s0,a5
	c.mv	a1,t1
	sltu	a5,zero,a0
	c.li	a4,00000017
	c.mv	a0,a7
	c.swsp	ra,0000008C
	c.swsp	a6,00000084
	jal	ra,000000002300E404
	c.lwsp	a2,00000008
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a0,a6
	c.addi16sp	00000020
	jal	zero,000000002300E49A

;; sec_eng_pka0_lmul: 2300E8AC
;;   Called from:
;;     2300C4E2 (in Mont2GF)
;;     2300C538 (in getFinalPoint)
sec_eng_pka0_lmul proc
	c.addi	sp,FFFFFFE0
	c.mv	t1,a3
	c.mv	a7,a4
	c.swsp	s0,0000000C
	c.mv	a3,a1
	c.mv	s0,a5
	c.mv	a1,t1
	sltu	a5,zero,a0
	c.li	a4,00000016
	c.mv	a0,a7
	c.swsp	ra,0000008C
	c.swsp	a6,00000084
	jal	ra,000000002300E404
	c.lwsp	a2,00000008
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a0,a6
	c.addi16sp	00000020
	jal	zero,000000002300E49A

;; sec_eng_pka0_lmul2n: 2300E8DA
;;   Called from:
;;     2300C924 (in GF2Mont.constprop.8)
sec_eng_pka0_lmul2n proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.mv	s0,a5
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.mv	s3,a2
	c.mv	s4,a1
	c.li	a2,00000004
	c.li	a1,00000000
	c.addi4spn	a0,0000000C
	c.mv	s2,a3
	c.mv	s1,a4
	c.jalr	a5
	c.mv	a3,s4
	c.li	a5,00000000
	c.li	a4,00000013
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002300E404
	c.lwsp	a2,000000E4
	slli	a4,s0,00000011
	c.lui	a3,FFFF8000
	c.srli	a4,00000011
	c.and	a5,a3
	c.or	a5,a4
	lui	a4,00040004
	sw	a5,a4,+00000340
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; em_buf_init: 2300E938
;;   Called from:
;;     2300B110 (in rwble_init)
;;     2300B16A (in rwble_reset)
em_buf_init proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	lui	s2,0004201A
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	addi	s0,s2,+000001C0
	addi	a0,s2,+000001C0
	sb	zero,s0,+0000015C
	lui	s3,0004201A
	jal	ra,000000002300C1BE
	addi	a0,s3,+000001C8
	jal	ra,000000002300C1BE
	lui	a5,00028008
	addi	a4,a5,+000002CA
	sw	a4,s0,+00000158
	addi	s5,s2,+000001C0
	addi	a3,s2,+000001C0
	addi	a5,a5,+000002CE
	c.li	s1,00000000
	addi	s4,s2,+000001C0
	addi	a0,zero,+00000026
	c.lui	a1,FFFF8000
	c.li	a2,00000006

l2300E992:
	slli	a4,s1,00000010
	c.srli	a4,00000010
	sh	a4,a3,+00000014
	add	a4,a4,a0
	c.addi	s1,00000001
	c.addi	a3,0000000C
	c.addi	a5,0000000A
	addi	a4,a4,+0000043E
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000FF6
	sh	zero,a5,+00000FFA
	sh	zero,a5,+00000FF8
	lhu	a4,a5,-0000000C
	c.slli	a4,10
	c.srli	a4,00000010
	andi	a4,a4,-00000021
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000FF4
	lhu	a4,a5,-0000000C
	c.slli	a4,10
	c.srli	a4,00000010
	andi	a4,a4,-00000021
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000FF4
	sh	a1,a5,+00000FF2
	bne	s1,a2,000000002300E992

l2300E9EA:
	lui	s0,00028008
	addi	s0,s0,+0000030A
	c.lui	s7,FFFF8000
	c.li	s6,0000001A

l2300E9F6:
	sh	s1,s5,+0000005C
	sh	zero,s0,+00000000
	sh	zero,s0,+00000004
	sh	zero,s0,+00000002
	lhu	a5,s0,-00000002
	addi	a1,s5,+00000058
	addi	a0,s2,+000001C0
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000021
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+00000FFE
	lhu	a5,s0,-00000002
	c.addi	s1,00000001
	c.addi	s5,0000000C
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000021
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+00000FFE
	sh	s7,s0,+00000FFC
	jal	ra,000000002300C1E6
	c.addi	s0,0000000A
	bne	s1,s6,000000002300E9F6

l2300EA48:
	lui	a1,0004201A
	lui	a5,00005220
	addi	a1,a1,+00000308
	addi	a0,s3,+000001C8
	sw	a5,s4,+0000014C
	jal	ra,000000002300C1E6
	lui	a5,00006260
	lui	a1,0004201A
	c.addi	a5,00000001
	addi	a1,a1,+00000310
	addi	a0,s3,+000001C8
	sw	a5,s4,+00000154
	jal	ra,000000002300C1E6
	lui	a5,00028008
	addi	a5,a5,+000003D6
	c.li	a3,00000000
	addi	a0,zero,+00000104
	c.li	a1,0000000E
	c.li	a2,00000008

l2300EA8C:
	c.addi	a3,00000001
	add	a4,a3,a0
	c.addi	a5,0000000E
	addi	a4,a4,+00000626
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000FF2
	andi	a4,a3,+00000007
	add	a4,a4,a1
	addi	a4,a4,+000003CE
	sh	a4,a5,+00000FEA
	sh	zero,a5,+00000FF6
	lhu	a4,a5,-00000012
	c.slli	a4,10
	c.srli	a4,00000010
	andi	a4,a4,-00000021
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000FEE
	lhu	a4,a5,-00000012
	c.slli	a4,10
	c.srli	a4,00000010
	andi	a4,a4,-00000021
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000FEE
	bne	a3,a2,000000002300EA8C

l2300EAE0:
	lui	a4,00028008
	c.lui	a2,FFFFC000
	addi	a5,a4,+0000009E
	c.addi	a2,FFFFFFFF
	addi	a3,a4,+0000020E

l2300EAF0:
	lhu	a4,a5,+00000000
	addi	a5,a5,+0000005C
	c.and	a4,a2
	sh	a4,a5,+00000FA4
	lhu	a4,a5,-0000004A
	c.slli	a4,10
	c.srli	a4,00000010
	andi	a4,a4,-00000301
	c.slli	a4,10
	c.srli	a4,00000010
	sh	a4,a5,+00000FB6
	sh	zero,a5,+00000FEE
	bne	a5,a3,000000002300EAF0

l2300EB1A:
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

;; em_buf_rx_free: 2300EB30
;;   Called from:
;;     230128EA (in lld_pdu_rx_handler)
;;     23012978 (in lld_pdu_rx_handler)
;;     23014DAE (in llm_pdu_defer)
;;     23019E5C (in llc_data_ind_handler)
;;     23019E86 (in llc_data_ind_handler)
;;     2306760E (in bt_onchiphci_hanlde_rx_acl)
em_buf_rx_free proc
	c.li	a5,0000000E
	add	a0,a0,a5
	lui	a5,00028008
	addi	a5,a5,+000003CE
	c.add	a0,a5
	lhu	a5,a0,+00000000
	c.slli	a5,11
	c.srli	a5,00000011
	sh	a5,a0,+00000000
	c.jr	ra

;; em_buf_rx_buff_addr_get: 2300EB4E
;;   Called from:
;;     23016EF8 (in hci_build_acl_rx_data)
em_buf_rx_buff_addr_get proc
	c.li	a5,0000000E
	add	a5,a0,a5
	lui	a4,00028008
	addi	a0,a4,+000003D6
	c.add	a5,a0
	lhu	a0,a5,+00000000
	c.add	a0,a4
	c.jr	ra

;; em_buf_tx_free: 2300EB66
;;   Called from:
;;     2300FDB0 (in lld_evt_deffered_elt_handler)
;;     2300FDC0 (in lld_evt_deffered_elt_handler)
;;     23011DDC (in lld_pdu_tx_flush_list)
;;     23011F8E (in lld_pdu_check)
em_buf_tx_free proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lhu	a5,a0,+00000004
	c.li	a4,0000000A
	c.mv	s0,a0
	add	a5,a5,a4
	lui	a4,00028008
	addi	a4,a4,+000002D2
	c.add	a5,a4
	lhu	a1,a5,+00000000
	c.slli	a1,10
	c.srli	a1,00000010
	csrrs	s1,mstatus,zero
	csrrci	a5,mstatus,00000008
	slli	a5,a1,00000010
	c.srai	a5,00000010
	lui	s3,0004201A
	c.li	s2,00000000
	bge	a5,zero,000000002300EBC6

l2300EBA8:
	andi	a1,a1,+000000FF
	addi	a1,a1,+00000029
	addi	a5,s3,+000001C0
	c.slli	a1,03
	lui	a0,0004201A
	c.add	a1,a5
	addi	a0,a0,+000001C8
	jal	ra,000000002300C1E6
	c.li	s2,00000001

l2300EBC6:
	lhu	a3,s0,+00000004
	c.li	a2,0000000A
	lui	a4,00028008
	add	a3,a3,a2
	addi	a5,a4,+000002CC
	c.mv	a1,s0
	addi	a0,s3,+000001C0
	c.add	a3,a5
	sh	zero,a3,+00000000
	lhu	a3,s0,+00000004
	addi	a5,a4,+000002D2
	addi	a4,a4,+000002CE
	add	a3,a3,a2
	c.add	a3,a5
	sh	zero,a3,+00000000
	lhu	a5,s0,+00000004
	add	a5,a5,a2
	c.add	a5,a4
	sh	zero,a5,+00000000
	jal	ra,000000002300C1E6
	csrrw	zero,mstatus,zero
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; llc_init: 2300EC20
;;   Called from:
;;     2300B11A (in rwble_init)
llc_init proc
	lui	a1,00023074
	c.addi	sp,FFFFFFF0
	addi	a1,a1,-00000328
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,000000002301725C
	addi	a1,zero,+0000007F
	c.li	a0,00000001
	jal	ra,00000000230172BC
	addi	a1,zero,+0000007F
	addi	a0,zero,+00000101
	jal	ra,00000000230172BC
	lui	a5,0004200E
	c.lwsp	a2,00000020
	lw	t1,a5,+00000140
	lui	a0,0004201A
	c.li	a2,00000008
	c.li	a1,00000000
	addi	a0,a0,+00000320
	c.addi	sp,00000010
	c.jr	t1

;; llc_stop: 2300EC62
;;   Called from:
;;     2300ED02 (in llc_reset)
;;     2300ED1C (in llc_reset)
;;     23019F98 (in fn23019F62)
llc_stop proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	c.mv	s3,a0
	c.slli	a0,08
	ori	a0,a0,+00000001
	c.slli	a0,10
	c.srli	a0,00000010
	addi	a1,zero,+0000007F
	c.swsp	s0,0000000C
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s5,00000080
	lui	s0,0004201A
	jal	ra,00000000230172BC
	addi	a5,s0,+00000320
	slli	s4,s3,00000002
	c.add	a5,s4
	c.lw	a5,0(a4)
	c.beqz	a4,000000002300ECDC

l2300EC98:
	addi	s0,s0,+00000320
	c.li	s2,00000000
	c.mv	s1,a5
	c.li	s5,00000004

l2300ECA2:
	c.lw	s1,0(a5)
	slli	a4,s2,00000002
	c.add	a5,a4
	c.lw	a5,0(a0)
	c.beqz	a0,000000002300ECB4

l2300ECAE:
	c.addi	a0,FFFFFFF4
	jal	ra,000000002300DCB6

l2300ECB4:
	c.addi	s2,00000001
	bne	s2,s5,000000002300ECA2

l2300ECBA:
	c.add	s0,s4
	c.lw	s0,0(a0)
	jal	ra,000000002300DA32
	sw	zero,s0,+00000000
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.mv	a0,s3
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,0000000023014BEA

l2300ECDC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; llc_reset: 2300ECEE
;;   Called from:
;;     2300B160 (in rwble_reset)
llc_reset proc
	c.addi	sp,FFFFFFF0
	c.li	a0,00000001
	c.swsp	ra,00000084
	jal	ra,000000002301732C
	addi	a5,zero,+0000007F
	beq	a0,a5,000000002300ED06

l2300ED00:
	c.li	a0,00000000
	jal	ra,000000002300EC62

l2300ED06:
	addi	a0,zero,+00000101
	jal	ra,000000002301732C
	addi	a5,zero,+0000007F
	beq	a0,a5,000000002300ED20

l2300ED16:
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	jal	zero,000000002300EC62

l2300ED20:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; llc_discon_event_complete_send: 2300ED26
;;   Called from:
;;     23019F6A (in fn23019F62)
llc_discon_event_complete_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.lui	a0,00001000
	c.mv	s0,a2
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s1,a3
	c.mv	s2,a1
	c.li	a3,00000006
	c.mv	a1,s0
	c.li	a2,00000005
	addi	a0,a0,-000007FD
	c.swsp	ra,00000084
	jal	ra,000000002300DB74
	sb	s2,a0,+00000000
	sb	s1,a0,+00000004
	sh	s0,a0,+00000002
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002300BD76

;; llc_le_con_cmp_evt_send: 2300ED60
;;   Called from:
;;     2300F262 (in llc_start)
;;     23014C8E (in llm_end_evt_defer)
;;     2301A6EC (in lld_stop_ind_handler)
llc_le_con_cmp_evt_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a0
	c.li	a0,00000000
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.mv	s3,a1
	c.mv	s1,a2
	jal	ra,00000000230149E8
	c.beqz	a0,000000002300EE5A

l2300ED7E:
	c.li	a0,00000009
	jal	ra,00000000230149E8
	bne	a0,zero,000000002300EEE0

l2300ED88:
	c.lui	a0,00001000
	c.li	a3,00000014
	c.li	a2,00000000
	c.mv	a1,s3
	addi	a0,a0,-000007FC
	jal	ra,000000002300DB74
	c.li	a5,00000001
	sb	a5,a0,+00000000
	sb	s2,a0,+00000001
	sh	s3,a0,+00000002
	c.mv	s0,a0
	bne	s2,zero,000000002300EEA8

l2300EDAC:
	c.mv	a0,s3
	jal	ra,000000002301428C
	c.addi	a0,FFFFFFFD
	sltu	a0,zero,a0
	sb	a0,s0,+00000004
	lhu	a5,s1,+00000006
	addi	s2,s0,+00000006
	lui	s3,0004200E
	c.beqz	a5,000000002300EE84

l2300EDCA:
	addi	a4,zero,+00000034
	addi	a5,a5,-0000022E
	srl	a5,a5,a4
	andi	a5,a5,+000000FF
	add	a5,a5,a4
	lui	a4,00028008
	addi	a4,a4,+0000022E
	c.add	a5,a4
	lhu	a4,a5,+00000000
	c.srli	a4,00000001
	c.andi	a4,00000001
	c.beqz	a4,000000002300EE84

l2300EDF2:
	lbu	a4,s1,+00000011
	c.beqz	a4,000000002300EE02

l2300EDF8:
	lhu	a5,a5,+00000000
	c.srli	a5,00000003
	c.andi	a5,00000001
	c.beqz	a5,000000002300EE74

l2300EE02:
	c.li	a5,00000001
	sb	a5,s0,+00000005
	lhu	a5,s1,+00000006
	lw	a4,s3,+0000013C
	lui	a1,00028008
	c.addi	a5,00000012
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	a2,00000006
	c.add	a1,a5
	c.mv	a0,s2
	c.jalr	a4

l2300EE22:
	lhu	a5,s1,+00000000
	sh	a5,s0,+0000000C
	lhu	a5,s1,+00000002
	sh	a5,s0,+0000000E
	lhu	a5,s1,+00000004
	sh	a5,s0,+00000010
	lbu	a5,s0,+00000004
	c.bnez	a5,000000002300EE9E

l2300EE40:
	sb	zero,s0,+00000012

l2300EE44:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,000000002300BD76

l2300EE5A:
	c.li	a0,00000009
	jal	ra,00000000230149E8
	c.bnez	a0,000000002300ED7E

l2300EE62:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2300EE74:
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.li	a2,00000006
	c.li	a1,00000000
	c.mv	a0,s2
	c.jalr	a5

l2300EE84:
	lbu	a5,s1,+0000000E
	c.li	a2,00000006
	addi	a1,s1,+00000008
	c.andi	a5,00000001
	sb	a5,s0,+00000005
	lw	a5,s3,+0000013C
	c.mv	a0,s2
	c.jalr	a5
	c.j	000000002300EE22

l2300EE9E:
	lbu	a5,s1,+00000010
	sb	a5,s0,+00000012
	c.j	000000002300EE44

l2300EEA8:
	addi	a4,zero,+0000003C
	bne	s2,a4,000000002300EE44

l2300EEB0:
	sb	a5,a0,+00000004
	lbu	a5,s1,+0000000E
	sh	zero,a0,+00000002
	sh	zero,a0,+0000000C
	sb	a5,a0,+00000005
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	sh	zero,a0,+0000000E
	sh	zero,a0,+00000010
	c.li	a2,00000006
	addi	a1,s1,+00000008
	c.addi	a0,00000006

l2300EEDC:
	c.jalr	a5
	c.j	000000002300EE44

l2300EEE0:
	c.lui	a0,00001000
	addi	a3,zero,+00000020
	c.li	a2,00000000
	c.mv	a1,s3
	addi	a0,a0,-000007FC
	jal	ra,000000002300DB74
	c.li	a5,0000000A
	sb	a5,a0,+00000000
	sb	s2,a0,+00000001
	sh	s3,a0,+00000002
	c.mv	s0,a0
	bne	s2,zero,000000002300F036

l2300EF06:
	c.mv	a0,s3
	jal	ra,000000002301428C
	c.addi	a0,FFFFFFFD
	sltu	a0,zero,a0
	sb	a0,s0,+00000004
	lhu	a1,s1,+00000006
	addi	s5,s0,+00000012
	addi	s3,s0,+0000000C
	lui	s4,0004200E
	c.beqz	a1,000000002300F010

l2300EF28:
	addi	a5,zero,+00000034
	addi	s2,a1,-0000022E
	srl	s2,s2,a5
	andi	s2,s2,+000000FF
	add	s2,s2,a5
	lui	a5,00028008
	addi	a5,a5,+0000022E
	c.add	s2,a5
	lhu	a5,s2,+00000000
	c.srli	a5,00000001
	c.andi	a5,00000001
	c.beqz	a5,000000002300EFAA

l2300EF50:
	lbu	a5,s1,+00000011
	c.beqz	a5,000000002300EF60

l2300EF56:
	lhu	a5,s2,+00000000
	c.srli	a5,00000003
	c.andi	a5,00000001
	c.beqz	a5,000000002300EFAA

l2300EF60:
	c.addi	a1,00000012
	c.slli	a1,10
	lw	a5,s4,+0000013C
	c.srli	a1,00000010
	lui	a4,00028008
	c.li	a2,00000006
	c.add	a1,a4

l2300EF72:
	c.mv	a0,s5
	c.jalr	a5
	lhu	a5,s2,+00000000
	c.srli	a5,00000005
	c.andi	a5,00000001
	c.beqz	a5,000000002300EF98

l2300EF80:
	lbu	a4,s0,+00000004
	c.li	a5,00000001
	bne	a4,a5,000000002300EFB8

l2300EF8A:
	lui	a5,00028008
	lhu	a5,a5,+00000154
	c.srli	a5,00000002
	c.andi	a5,00000001
	c.bnez	a5,000000002300EFB8

l2300EF98:
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.li	a2,00000006
	c.li	a1,00000000
	c.mv	a0,s3

l2300EFA6:
	c.jalr	a5
	c.j	000000002300EFD4

l2300EFAA:
	lui	a5,0004200E
	lw	a5,a5,+00000140
	c.li	a2,00000006
	c.li	a1,00000000
	c.j	000000002300EF72

l2300EFB8:
	lhu	a5,s1,+00000006
	lw	a4,s4,+0000013C
	lui	a1,00028008
	addi	a5,a5,+0000002E
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	a2,00000006
	c.add	a1,a5
	c.mv	a0,s3
	c.jalr	a4

l2300EFD4:
	lbu	a5,s1,+0000000E
	c.li	a2,00000006
	addi	a1,s1,+00000008
	sb	a5,s0,+00000005
	lw	a5,s4,+0000013C
	addi	a0,s0,+00000006
	c.jalr	a5
	lhu	a5,s1,+00000000
	sh	a5,s0,+00000018
	lhu	a5,s1,+00000002
	sh	a5,s0,+0000001A
	lhu	a5,s1,+00000004
	sh	a5,s0,+0000001C
	lbu	a5,s0,+00000004
	c.bnez	a5,000000002300F02C

l2300F00A:
	sb	zero,s0,+0000001E
	c.j	000000002300EE44

l2300F010:
	lui	s2,0004200E
	lw	a5,s2,+00000140
	c.li	a2,00000006
	c.li	a1,00000000
	c.mv	a0,s3
	c.jalr	a5
	lw	a5,s2,+00000140
	c.li	a2,00000006
	c.li	a1,00000000
	c.mv	a0,s5
	c.j	000000002300EFA6

l2300F02C:
	lbu	a5,s1,+00000010
	sb	a5,s0,+0000001E
	c.j	000000002300EE44

l2300F036:
	addi	a5,zero,+0000003C
	bne	s2,a5,000000002300EE44

l2300F03E:
	c.li	a5,00000001
	sb	a5,a0,+00000004
	lbu	a5,s1,+0000000E
	sh	zero,a0,+00000002
	addi	a1,s1,+00000008
	sb	a5,a0,+00000005
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	sh	zero,a0,+00000018
	sh	zero,a0,+0000001A
	sh	zero,a0,+0000001C
	c.li	a2,00000006
	c.addi	a0,00000006
	c.jalr	a5
	lui	s1,0004200E
	lw	a5,s1,+00000140
	c.li	a2,00000006
	c.li	a1,00000000
	addi	a0,s0,+00000012
	c.jalr	a5
	lw	a5,s1,+00000140
	c.li	a2,00000006
	c.li	a1,00000000
	addi	a0,s0,+0000000C
	c.j	000000002300EEDC

;; llc_le_ch_sel_algo_evt_send: 2300F08E
;;   Called from:
;;     2300F29E (in llc_start)
llc_le_ch_sel_algo_evt_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.li	a0,00000013
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,00000000230149E8
	c.beqz	a0,000000002300F0CC

l2300F0A2:
	c.lui	a0,00001000
	c.mv	a1,s0
	c.li	a3,00000006
	c.li	a2,00000000
	addi	a0,a0,-000007FC
	jal	ra,000000002300DB74
	c.li	a4,00000014
	sb	a4,a0,+00000000
	sb	s1,a0,+00000004
	sh	s0,a0,+00000002
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002300BD76

l2300F0CC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; llc_start: 2300F0D6
;;   Called from:
;;     23014FEA (in llm_con_req_ind)
;;     230154B4 (in llm_con_req_tx_cfm)
llc_start proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	lhu	s4,a1,+00000074
	lui	s1,0004201A
	addi	s0,s1,+00000320
	slli	s8,s4,00000002
	c.add	s0,s8
	slli	s2,s4,00000008
	c.lw	s0,0(a5)
	ori	s2,s2,+00000001
	c.slli	s2,10
	c.mv	s5,a0
	c.mv	s6,a1
	addi	s7,a1,+00000028
	srli	s2,s2,00000010
	addi	s1,s1,+00000320
	c.bnez	a5,000000002300F12C

l2300F120:
	c.li	a1,00000000
	addi	a0,zero,+000000A8
	jal	ra,000000002300D942
	c.sw	s0,0(a0)

l2300F12C:
	add	a5,s1,s8
	c.lw	a5,0(s0)
	lui	s10,0004200E
	lw	a5,s10,+00000140
	c.li	s9,00000001
	c.li	a2,00000006
	c.li	a1,00000000
	sb	s9,s0,+000000A6
	addi	a0,s0,+0000003C
	c.jalr	a5
	addi	a0,s0,+0000005E
	jal	ra,0000000023014A06
	addi	a0,s0,+00000063
	jal	ra,0000000023014A06
	lbu	a4,s6,+0000007B
	lui	s3,0004201A
	c.li	a5,00000003
	addi	s3,s3,+00000358
	bne	a4,a5,000000002300F19E

l2300F16C:
	lw	a5,s10,+00000140
	addi	a2,zero,+00000028
	c.li	a1,00000000
	addi	a0,s0,+00000014
	c.jalr	a5
	lbu	a5,s3,+00000031
	lhu	a2,s3,+0000002C
	c.mv	a1,s2
	sb	a5,s0,+0000003A
	addi	a0,zero,+00000105
	jal	ra,000000002300DF0E
	lhu	a5,s6,+0000005E
	bgeu	s9,a5,000000002300F2A2

l2300F19A:
	sb	s9,s0,+00000039

l2300F19E:
	sw	s6,s0,+00000010
	lhu	a2,s5,+00000004
	c.mv	a1,s2
	addi	a0,zero,+00000101
	sh	a2,s0,+00000054
	jal	ra,000000002300DF0E
	c.li	a5,00000008
	sb	a5,s0,+000000A1
	addi	a0,s0,+00000069
	sh	zero,s0,+0000005C
	sb	zero,s0,+000000A2
	jal	ra,0000000023014A1A
	c.li	a1,00000000
	c.mv	a0,s2
	sw	zero,s0,+00000000
	sw	zero,s0,+00000004
	sw	zero,s0,+00000008
	sw	zero,s0,+0000000C
	jal	ra,00000000230172BC
	c.add	s1,s8
	c.lw	s1,0(a5)
	c.lui	a4,00001000
	addi	a4,a4,-00000448
	sh	a4,a5,+00000058
	c.mv	a0,s7
	sb	zero,a5,+000000A3
	sb	zero,a5,+000000A4
	jal	ra,000000002301A14E
	lhu	a5,s3,+00000020
	sb	zero,s0,+00000052
	c.mv	a2,s5
	sh	a5,s0,+00000042
	lhu	a5,s3,+00000022
	c.mv	a1,s4
	c.li	a0,00000000
	sh	a5,s0,+0000004A
	lui	a5,000001B0
	addi	a5,a5,+000000FB
	c.sw	s0,68(a5)
	c.li	a5,0000001B
	sh	a5,s0,+00000048
	lui	a5,00001481
	addi	a5,a5,-000007B8
	c.sw	s0,76(a5)
	addi	a5,zero,+00000148
	sh	a5,s0,+00000050
	lbu	a5,s0,+00000053
	c.andi	a5,FFFFFFFE
	ori	a5,a5,+00000002
	sb	a5,s0,+00000053
	c.lw	s1,0(a5)
	sw	zero,a5,+00000000
	c.lw	s1,0(a5)
	sw	zero,a5,+00000004
	c.lw	s1,0(a5)
	sw	zero,a5,+00000008
	sw	zero,a5,+0000000C
	sb	zero,a5,+000000A5
	jal	ra,000000002300ED60
	addi	a5,zero,+0000005C
	add	a5,s4,a5
	lui	a4,00028008
	addi	a4,a4,+0000009E
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.add	a5,a4
	lhu	a0,a5,+00000000
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.lwsp	zero,0000004C
	c.mv	a2,s5
	c.mv	a1,s4
	c.lwsp	s4,000000A8
	c.lwsp	s8,00000088
	c.srli	a0,0000000E
	c.andi	a0,00000001
	c.addi16sp	00000030
	jal	zero,000000002300F08E

l2300F2A2:
	sb	zero,s0,+00000039
	c.j	000000002300F19E

;; llc_con_update_complete_send: 2300F2A8
;;   Called from:
;;     2300F61A (in llc_con_update_ind)
;;     2301778A (in llc_llcp_reject_ind)
;;     23017BF6 (in fn23017B9A)
;;     23018694 (in llcp_con_param_rsp_handler)
;;     23019FF8 (in llc_enc_mgt_ind_handler)
;;     2301B370 (in hci_le_con_update_cmd_handler)
llc_con_update_complete_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.mv	s2,a0
	c.lui	a0,00001000
	c.swsp	s1,00000080
	c.li	a3,0000000A
	c.mv	s1,a2
	addi	a0,a0,-000007FC
	c.li	a2,00000000
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,000000002300DB74
	c.li	a5,00000003
	sb	a5,a0,+00000000
	sh	s0,a0,+00000002
	lui	a5,0004201A
	sb	s2,a0,+00000001
	addi	a5,a5,+00000320
	c.slli	s0,02
	c.beqz	s1,000000002300F30E

l2300F2E0:
	lhu	a4,s1,+00000050
	c.add	a5,s0
	c.srli	a4,00000001
	sh	a4,a0,+00000004
	lhu	a4,s1,+00000036
	c.addi	a4,FFFFFFFF
	sh	a4,a0,+00000006
	c.lw	a5,0(a5)
	lhu	a5,a5,+00000054

l2300F2FC:
	sh	a5,a0,+00000008

l2300F300:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002300BD76

l2300F30E:
	c.add	a5,s0
	c.lw	a5,0(a5)
	c.lw	a5,0(a5)
	c.beqz	a5,000000002300F32C

l2300F316:
	lhu	a4,a5,+0000000E
	sh	a4,a0,+00000004
	lhu	a4,a5,+00000006
	sh	a4,a0,+00000006
	lhu	a5,a5,+00000008
	c.j	000000002300F2FC

l2300F32C:
	sh	zero,a0,+00000004
	sh	zero,a0,+00000006
	sh	zero,a0,+00000008
	c.j	000000002300F300

;; llc_ltk_req_send: 2300F33A
;;   Called from:
;;     23019BE8 (in llc_enc_mgt_ind_handler)
llc_ltk_req_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s1,a1
	c.mv	s2,a0
	c.mv	a1,a0
	c.lui	a0,00001000
	c.li	a3,0000000E
	c.li	a2,00000000
	addi	a0,a0,-000007FC
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002300DB74
	c.li	a5,00000005
	sh	s2,a0,+00000002
	sb	a5,a0,+00000000
	lbu	a5,s1,+0000000A
	lbu	a4,s1,+00000009
	c.mv	s0,a0
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,a0,+0000000C
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	addi	a1,s1,+00000001
	c.li	a2,00000008
	c.addi	a0,00000004
	c.jalr	a5
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002300BD76

;; llc_feats_rd_event_send: 2300F396
;;   Called from:
;;     23017B94 (in fn23017B78)
;;     23018758 (in llcp_feats_rsp_handler)
;;     23019F5E (in llc_enc_mgt_ind_handler)
;;     2301AFC8 (in hci_le_rd_rem_used_feats_cmd_handler)
llc_feats_rd_event_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	c.mv	s3,a0
	c.li	a0,00000003
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a1
	c.mv	s2,a2
	jal	ra,00000000230149E8
	c.beqz	a0,000000002300F3F2

l2300F3B0:
	c.lui	a0,00001000
	c.mv	a1,s1
	c.li	a3,0000000C
	c.li	a2,00000000
	addi	a0,a0,-000007FC
	jal	ra,000000002300DB74
	c.li	a5,00000004
	sb	a5,a0,+00000000
	sb	s3,a0,+00000001
	sh	s1,a0,+00000002
	lui	a5,0004200E
	lw	a5,a5,+0000013C
	c.mv	s0,a0
	c.mv	a1,s2
	c.li	a2,00000008
	c.addi	a0,00000004
	c.jalr	a5
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,000000002300BD76

l2300F3F2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; llc_version_rd_event_send: 2300F400
;;   Called from:
;;     23017D5E (in llcp_vers_ind_handler)
;;     23019FB6 (in llc_enc_mgt_ind_handler)
;;     2301B520 (in hci_rd_rem_ver_info_cmd_handler)
llc_version_rd_event_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.lui	a0,00001000
	c.li	a3,0000000A
	c.li	a2,0000000C
	addi	a0,a0,-000007FD
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,000000002300DB74
	lui	a1,0004201A
	sh	s0,a0,+00000002
	addi	a1,a1,+00000320
	c.slli	s0,02
	sb	s1,a0,+00000000
	c.add	a1,s0
	c.lw	a1,0(a4)
	lhu	a4,a4,+0000003E
	sh	a4,a0,+00000006
	c.lw	a1,0(a4)
	lhu	a3,a4,+00000040
	sh	a3,a0,+00000008
	lbu	a4,a4,+0000003C
	sb	a4,a0,+00000004
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002300BD76

;; llc_common_cmd_complete_send: 2300F456
;;   Called from:
;;     2301A9B6 (in hci_le_set_data_len_cmd_handler)
;;     2301AA68 (in hci_le_rem_con_param_req_neg_reply_cmd_handler)
;;     2301AB58 (in hci_le_rem_con_param_req_reply_cmd_handler)
;;     2301AC48 (in hci_le_ltk_req_neg_reply_cmd_handler)
;;     2301AD4A (in hci_le_ltk_req_reply_cmd_handler)
llc_common_cmd_complete_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a2
	c.mv	a2,a0
	c.lui	a0,00001000
	c.swsp	s1,00000080
	c.li	a3,00000004
	c.mv	s1,a1
	addi	a0,a0,-000007FF
	c.mv	a1,s0
	c.swsp	ra,00000084
	jal	ra,000000002300DB74
	sb	s1,a0,+00000000
	sh	s0,a0,+00000002
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002300BD76

;; llc_common_cmd_status_send: 2300F486
;;   Called from:
;;     2301ADE2 (in hci_disconnect_cmd_handler)
;;     2301AE52 (in hci_le_start_enc_cmd_handler)
;;     2301AEA6 (in hci_le_start_enc_cmd_handler)
;;     2301AFA8 (in hci_le_rd_rem_used_feats_cmd_handler)
;;     2301B354 (in hci_le_con_update_cmd_handler)
;;     2301B4EE (in hci_rd_rem_ver_info_cmd_handler)
;;     2301B518 (in hci_rd_rem_ver_info_cmd_handler)
llc_common_cmd_status_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a1
	c.mv	a1,a2
	c.mv	a2,a0
	c.lui	a0,00001000
	c.li	a3,00000001
	addi	a0,a0,-000007FE
	c.swsp	ra,00000084
	jal	ra,000000002300DB74
	sb	s0,a0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300BD76

;; llc_common_flush_occurred_send: 2300F4AC
;;   Called from:
;;     2301B48A (in hci_flush_cmd_handler)
llc_common_flush_occurred_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	a1,a0
	c.mv	s0,a0
	c.lui	a0,00001000
	c.li	a3,00000002
	c.li	a2,00000011
	addi	a0,a0,-000007FD
	c.swsp	ra,00000084
	jal	ra,000000002300DB74
	sh	s0,a0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002300BD76

;; llc_common_enc_key_ref_comp_evt_send: 2300F4D2
;;   Called from:
;;     230182FE (in llcp_start_enc_rsp_handler)
;;     23019FCE (in llc_enc_mgt_ind_handler)
llc_common_enc_key_ref_comp_evt_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	a1,a0
	c.lui	a0,00001000
	c.li	a3,00000004
	addi	a2,zero,+00000030
	addi	a0,a0,-000007FD
	c.swsp	ra,00000084
	jal	ra,000000002300DB74
	sh	s0,a0,+00000002
	sb	s1,a0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002300BD76

;; llc_common_enc_change_evt_send: 2300F504
;;   Called from:
;;     230176DA (in llc_llcp_reject_ind)
;;     23017B64 (in fn23017B56)
;;     23018346 (in llcp_start_enc_rsp_handler)
;;     23019FDA (in llc_enc_mgt_ind_handler)
llc_common_enc_change_evt_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	slli	s0,a0,00000008
	ori	s0,s0,+00000001
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.slli	s0,10
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s2,a0
	c.mv	s3,a1
	c.mv	s4,a2
	c.srli	s0,00000010
	c.beqz	a1,000000002300F588

l2300F526:
	lui	a5,0004201A
	slli	s1,a0,00000002
	addi	a5,a5,+00000320
	c.add	s1,a5
	c.lw	s1,0(a5)
	c.mv	a1,s0
	addi	a0,zero,+00000103
	lhu	a2,a5,+00000058
	lhu	a5,a5,+0000005A
	c.sub	a2,a5
	jal	ra,000000002300DF0E
	c.lw	s1,0(a5)
	c.mv	a1,s0
	addi	a0,zero,+00000104
	lhu	a2,a5,+00000058
	jal	ra,000000002300DF0E

l2300F55A:
	c.lui	a0,00001000
	c.mv	a1,s2
	c.li	a3,00000006
	c.li	a2,00000008
	addi	a0,a0,-000007FD
	jal	ra,000000002300DB74
	sh	s2,a0,+00000002
	sb	s3,a0,+00000004
	sb	s4,a0,+00000000
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,000000002300BD76

l2300F588:
	c.mv	a1,s0
	addi	a0,zero,+00000103
	jal	ra,000000002300E00C
	c.mv	a1,s0
	addi	a0,zero,+00000104
	jal	ra,000000002300E00C
	c.j	000000002300F55A

;; llc_common_nb_of_pkt_comp_evt_send: 2300F59E
;;   Called from:
;;     230126A2 (in lld_pdu_tx_flush)
;;     2301A3DC (in llc_pdu_acl_tx_ack_defer)
;;     2301B5FA (in llc_hci_acl_data_tx_handler)
;;     2301B618 (in llc_hci_acl_data_tx_handler)
llc_common_nb_of_pkt_comp_evt_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	a1,a0
	c.lui	a0,00001000
	c.li	a3,00000006
	c.li	a2,00000013
	addi	a0,a0,-000007FD
	c.swsp	ra,00000084
	jal	ra,000000002300DB74
	c.li	a4,00000001
	sh	s0,a0,+00000002
	sh	s1,a0,+00000004
	sb	a4,a0,+00000000
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002300BD76

;; llc_con_update_ind: 2300F5D4
;;   Called from:
;;     2300FD2C (in lld_evt_deffered_elt_handler)
llc_con_update_ind proc
	c.addi	sp,FFFFFFE0
	lui	a5,0004201A
	c.swsp	s2,00000008
	addi	a4,a5,+00000320
	slli	s2,a0,00000002
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	c.add	a4,s2
	c.lw	a4,0(a3)
	c.mv	s1,a1
	addi	s0,a5,+00000320
	lhu	a4,a3,+0000005C
	andi	a2,a4,+000000C0
	c.beqz	a2,000000002300F61E

l2300F600:
	andi	a4,a4,-000000C1
	c.mv	s3,a0
	sh	a4,a3,+0000005C
	c.li	a0,00000002
	jal	ra,00000000230149E8
	c.beqz	a0,000000002300F61E

l2300F612:
	addi	a2,s1,+00000028
	c.mv	a1,s3
	c.li	a0,00000000
	jal	ra,000000002300F2A8

l2300F61E:
	lhu	a3,s1,+0000005E
	add	a5,s0,s2
	c.li	a4,00000001
	c.lw	a5,0(a5)
	bgeu	a4,a3,000000002300F640

l2300F62E:
	sb	a4,a5,+00000039

l2300F632:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2300F640:
	sb	zero,a5,+00000039
	c.j	000000002300F632

;; llc_lsto_con_update: 2300F646
llc_lsto_con_update proc
	lui	a5,0004201A
	c.addi	sp,FFFFFFF0
	slli	a4,a0,00000002
	addi	a5,a5,+00000320
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.add	a5,a4
	c.lw	a5,0(s0)
	lhu	a5,s0,+00000056
	lhu	a2,s0,+00000054
	bgeu	a2,a5,000000002300F66A

l2300F668:
	c.mv	a2,a5

l2300F66A:
	slli	a1,a0,00000008
	c.slli	a2,01
	c.slli	a2,10
	ori	a1,a1,+00000001
	c.srli	a2,00000010
	c.slli	a1,10
	sh	a2,s0,+00000054
	c.srli	a1,00000010
	addi	a0,zero,+00000101
	jal	ra,000000002300DF0E
	lhu	a5,s0,+0000005C
	ori	a5,a5,+00000020
	sh	a5,s0,+0000005C
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; llc_map_update_ind: 2300F69C
;;   Called from:
;;     230145B6 (in lld_ch_map_ind)
llc_map_update_ind proc
	lui	a5,0004201A
	c.addi	sp,FFFFFFF0
	slli	a4,a0,00000002
	addi	a5,a5,+00000320
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	s1,00000080
	c.add	a5,a4
	c.lw	a5,0(s1)
	c.mv	s0,a0
	c.li	a1,00000005
	addi	s2,s1,+00000063
	c.mv	a0,s2
	jal	ra,000000002301496E
	lbu	a3,s1,+00000064
	lbu	a5,s1,+00000063
	lui	a4,00028008
	c.slli	a3,08
	c.or	a3,a5
	addi	a5,zero,+0000005C
	add	a5,s0,a5
	addi	a2,a4,+000000AA
	c.slli	a0,08
	c.mv	a1,s2
	c.add	a2,a5
	sh	a3,a2,+00000000
	lbu	a3,s1,+00000066
	lbu	a2,s1,+00000065
	c.slli	a3,08
	c.or	a3,a2
	addi	a2,a4,+000000AC
	c.add	a2,a5
	sh	a3,a2,+00000000
	lbu	a3,s1,+00000067
	addi	a4,a4,+000000AE
	c.add	a5,a4
	c.or	a0,a3
	c.slli	a0,10
	c.srli	a0,00000010
	sh	a0,a5,+00000000
	c.li	a2,00000005
	addi	a0,s1,+0000005E
	jal	ra,000000002306CF80
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; llc_con_update_finished: 2300F72A
;;   Called from:
;;     2300FD34 (in lld_evt_deffered_elt_handler)
llc_con_update_finished proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	slli	s1,a0,00000008
	ori	s1,s1,+00000001
	c.slli	s1,10
	c.srli	s1,00000010
	c.swsp	s2,00000008
	c.mv	s2,a0
	c.mv	a0,s1
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	jal	ra,000000002301732C
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	beq	a4,a5,000000002300F78A

l2300F756:
	c.mv	s3,a0
	c.mv	a0,s2
	jal	ra,000000002301428C
	lui	s0,0004201A
	c.li	a5,00000003
	addi	s0,s0,+00000320
	slli	s4,s2,00000002
	bne	a0,a5,000000002300F79A

l2300F770:
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,000000002301A18A
	andi	a1,s3,+000000FE
	c.mv	a0,s1
	jal	ra,00000000230172BC
	c.add	s0,s4
	c.lw	s0,0(a5)
	sb	zero,a5,+000000A3

l2300F78A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2300F79A:
	c.add	s0,s4
	c.lw	s0,0(a3)
	lhu	a5,a3,+0000005C
	andi	a4,a5,+00000400
	c.beqz	a4,000000002300F7C6

l2300F7A8:
	andi	a1,s3,+000000FD
	c.mv	a0,s1
	jal	ra,00000000230172BC
	c.lw	s0,0(a5)
	lhu	a4,a5,+0000005C
	sb	zero,a5,+000000A4
	andi	a4,a4,-00000401
	sh	a4,a5,+0000005C
	c.j	000000002300F78A

l2300F7C6:
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	c.or	a5,a4
	sh	a5,a3,+0000005C
	c.j	000000002300F78A

;; llc_map_update_finished: 2300F7D4
;;   Called from:
;;     2300FD7A (in lld_evt_deffered_elt_handler)
llc_map_update_finished proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	slli	s1,a0,00000008
	ori	s1,s1,+00000001
	c.slli	s1,10
	c.srli	s1,00000010
	c.swsp	s2,00000008
	c.mv	s2,a0
	c.mv	a0,s1
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	jal	ra,000000002301732C
	andi	a4,a0,+0000000F
	c.li	a5,0000000F
	beq	a4,a5,000000002300F828

l2300F7FE:
	c.mv	s3,a0
	c.mv	a0,s2
	jal	ra,000000002301428C
	lui	s0,0004201A
	c.li	a5,00000003
	addi	s0,s0,+00000320
	c.slli	s2,02
	bne	a0,a5,000000002300F836

l2300F816:
	andi	a1,s3,+000000FE
	c.mv	a0,s1
	jal	ra,00000000230172BC
	c.add	s0,s2
	c.lw	s0,0(a5)
	sb	zero,a5,+000000A3

l2300F828:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2300F836:
	c.add	s0,s2
	c.lw	s0,0(a3)
	lhu	a5,a3,+0000005C
	andi	a4,a5,+00000400
	c.beqz	a4,000000002300F862

l2300F844:
	andi	a1,s3,+000000FD
	c.mv	a0,s1
	jal	ra,00000000230172BC
	c.lw	s0,0(a5)
	lhu	a4,a5,+0000005C
	sb	zero,a5,+000000A4
	andi	a4,a4,-00000401
	sh	a4,a5,+0000005C
	c.j	000000002300F828

l2300F862:
	c.lui	a4,00001000
	addi	a4,a4,-00000800
	c.or	a5,a4
	sh	a5,a3,+0000005C
	c.j	000000002300F828

;; lld_evt_winsize_change: 2300F870
;;   Called from:
;;     230101AA (in lld_evt_rxwin_compute)
;;     23011118 (in lld_evt_move_to_slave)
lld_evt_winsize_change proc
	c.lw	a0,44(a5)
	c.lw	a0,48(a4)
	slli	a2,a5,00000010
	c.slli	a4,01
	add	a3,a5,a4
	bge	a2,zero,000000002300F894

l2300F882:
	c.lui	a3,00008000
	c.addi	a3,FFFFFFFF
	c.and	a5,a3
	addi	a3,zero,+00000271
	add	a5,a5,a3
	add	a3,a5,a4

l2300F894:
	c.li	a4,0000000E
	c.mv	a5,a3
	bgeu	a3,a4,000000002300F89E

l2300F89C:
	c.li	a5,0000000E

l2300F89E:
	lhu	a4,a0,+00000050
	lhu	a2,a0,+00000036
	c.srli	a4,00000001
	add	a4,a4,a2
	addi	a2,zero,+00000271
	add	a4,a4,a2
	addi	a4,a4,-00000096
	bltu	a5,a4,000000002300F8CC

l2300F8BC:
	c.bnez	a1,000000002300F8CC

l2300F8BE:
	lbu	a5,a0,+00000056
	ori	a5,a5,+00000010
	sb	a5,a0,+00000056
	c.jr	ra

l2300F8CC:
	c.lui	a4,00004000
	bltu	a3,a4,000000002300F8EE

l2300F8D2:
	addi	a4,zero,+00000271
	addi	a5,a5,+00000270
	srl	a5,a5,a4
	c.lui	a4,FFFF8000
	c.or	a5,a4
	lhu	a4,a0,+00000004
	c.slli	a5,10
	c.srli	a5,00000010
	c.beqz	a4,000000002300F8F2

l2300F8EC:
	c.addi	a5,00000001

l2300F8EE:
	c.slli	a5,10
	c.srli	a5,00000010

l2300F8F2:
	lhu	a4,a0,+0000004C
	addi	a3,zero,+0000005C
	add	a4,a4,a3
	lui	a3,00028008
	addi	a3,a3,+000000A2
	c.add	a4,a3
	sh	a5,a4,+00000000
	c.sw	a0,44(a5)
	c.jr	ra

;; lld_evt_slave_time_compute: 2300F910
;;   Called from:
;;     23010BC0 (in lld_evt_schedule_next)
;;     230112E2 (in lld_evt_move_to_slave)
lld_evt_slave_time_compute proc
	addi	a7,zero,+00000271
	add	a1,a1,a7
	lhu	a5,a0,+0000002C
	lhu	a2,a0,+00000074
	lw	t3,a0,+00000028
	c.add	a1,a5
	srl	a3,a1,a7
	addi	a5,zero,+0000005C
	add	a2,a2,a5
	lui	a5,00028008
	addi	a5,a5,+000000A2
	c.add	a3,t3
	c.slli	a3,05
	c.srli	a3,00000005
	c.add	a5,a2
	lhu	a5,a5,+00000000
	and	t4,a1,a7
	c.slli	a5,10
	c.srli	a5,00000010
	slli	t1,a5,00000010
	srai	t1,t1,00000010
	bge	t1,zero,000000002300F9C2

l2300F95A:
	slli	a6,a5,00000011
	srli	a6,a6,00000012
	add	a6,a6,a7
	sub	a1,a1,a6

l2300F96A:
	addi	a1,a1,-00000021
	addi	a7,zero,+00000271
	srl	a4,a1,a7
	c.sw	a0,40(a3)
	sh	t4,a0,+0000002C
	c.add	a4,t3
	c.slli	a4,05
	c.srli	a4,00000005
	c.sw	a0,8(a4)
	and	a6,a1,a7
	bge	t1,zero,000000002300F9CA

l2300F98C:
	c.slli	a5,11
	c.srli	a5,00000011

l2300F990:
	c.lw	a0,80(a4)
	sh	a5,a0,+00000012
	lhu	a4,a4,+00000008
	c.add	a5,a4
	addi	a4,zero,+00000271
	add	a5,a5,a4
	lui	a4,00028008
	addi	a4,a4,+00000090
	c.add	a2,a4
	sh	a5,a0,+00000012
	slli	a5,a6,00000010
	c.srli	a5,00000010
	sh	a5,a2,+00000000
	sh	a5,a0,+00000014
	c.jr	ra

l2300F9C2:
	srli	a4,a5,00000001
	c.sub	a1,a4
	c.j	000000002300F96A

l2300F9CA:
	srl	a5,a5,a7
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010
	c.j	000000002300F990

;; lld_evt_prevent_stop: 2300F9D6
lld_evt_prevent_stop proc
	c.jr	ra

;; lld_evt_deferred_elt_push: 2300F9D8
;;   Called from:
;;     2300FB3A (in lld_evt_schedule)
;;     230109E8 (in lld_evt_elt_insert)
;;     23010A3E (in lld_evt_canceled)
;;     230115CE (in lld_evt_end)
;;     23011672 (in lld_evt_end)
;;     2301176E (in lld_evt_rx)
;;     230117AA (in lld_evt_rx_afs)
lld_evt_deferred_elt_push proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a1
	c.mv	s1,a0
	c.li	a1,00000000
	c.li	a0,0000000C
	c.swsp	ra,0000008C
	c.swsp	a2,00000084
	jal	ra,000000002300D942
	c.lwsp	a2,00000084
	c.sw	a0,4(s1)
	sb	s0,a0,+00000008
	sb	a2,a0,+00000009
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.mv	a1,a0
	lui	a0,0004201A
	addi	a0,a0,+00000338
	c.addi16sp	00000020
	jal	zero,000000002300C1E6

;; lld_evt_elt_wait_insert: 2300FA10
;;   Called from:
;;     230109B0 (in lld_evt_elt_insert)
;;     23011620 (in lld_evt_end)
lld_evt_elt_wait_insert proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a1,00000000
	c.mv	s0,a0
	c.li	a0,00000008
	c.swsp	ra,00000084
	jal	ra,000000002300D942
	c.sw	a0,4(s0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,a0
	lui	a0,0004201A
	addi	a0,a0,+00000330
	c.addi	sp,00000010
	jal	zero,000000002300C1E6

;; lld_evt_deferred_elt_pop: 2300FA36
;;   Called from:
;;     2300FCF6 (in lld_evt_deffered_elt_handler)
;;     2300FD6A (in lld_evt_deffered_elt_handler)
lld_evt_deferred_elt_pop proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a0
	c.swsp	a1,00000084
	csrrs	s0,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	a0,0004201A
	addi	a0,a0,+00000338
	jal	ra,000000002300C252
	c.mv	a5,a0
	csrrw	zero,mstatus,zero
	c.beqz	a0,000000002300FA78

l2300FA5E:
	lbu	a4,a0,+00000008
	c.lw	a0,4(s0)
	c.lwsp	a2,00000064
	sb	a4,s1,+00000000
	lbu	a5,a0,+00000009
	sb	a5,a1,+00000000
	jal	ra,000000002300DA32
	c.mv	a5,s0

l2300FA78:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

;; lld_evt_get_next_free_slot: 2300FA84
;;   Called from:
;;     230115F6 (in lld_evt_end)
lld_evt_get_next_free_slot proc
	lui	a5,0004201A
	addi	a5,a5,+00000328
	c.lw	a5,0(a4)
	c.beqz	a4,000000002300FAA8

l2300FA90:
	c.lw	a5,4(a5)
	addi	a4,zero,+00000271
	lhu	a0,a5,+00000012
	c.lw	a5,8(a5)
	srl	a0,a0,a4
	c.add	a0,a5
	c.slli	a0,05
	c.srli	a0,00000005
	c.jr	ra

l2300FAA8:
	lui	a5,00028000
	lui	a4,00080000
	c.sw	a5,28(a4)

l2300FAB2:
	c.lw	a5,28(a3)
	blt	a3,zero,000000002300FAB2

l2300FAB8:
	c.lw	a5,28(a0)
	c.jr	ra

;; lld_evt_elt_wait_get: 2300FABC
;;   Called from:
;;     2300FB0E (in lld_evt_schedule)
;;     2300FFFA (in lld_evt_elt_delete)
;;     23010A06 (in lld_evt_canceled)
;;     23010AE0 (in lld_evt_schedule_next)
lld_evt_elt_wait_get proc
	c.beqz	a0,000000002300FAF2

l2300FABE:
	c.addi	sp,FFFFFFF0
	lui	a5,0004201A
	c.swsp	s0,00000004
	lw	s0,a5,+00000330
	c.swsp	ra,00000084

l2300FACC:
	c.beqz	s0,000000002300FAE4

l2300FACE:
	c.lw	s0,4(a5)
	bne	a5,a0,000000002300FAEE

l2300FAD4:
	lui	a0,0004201A
	c.li	a2,00000000
	c.mv	a1,s0
	addi	a0,a0,+00000330
	jal	ra,000000002300C286

l2300FAE4:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2300FAEE:
	c.lw	s0,0(s0)
	c.j	000000002300FACC

l2300FAF2:
	lui	a0,0004201A
	addi	a0,a0,+00000330
	jal	zero,000000002300C252

;; lld_evt_schedule: 2300FAFE
lld_evt_schedule proc
	beq	a0,zero,000000002300FC72

l2300FB02:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.lw	a0,8(s1)
	jal	ra,000000002300FABC
	c.beqz	a0,000000002300FB18

l2300FB14:
	jal	ra,000000002300DA32

l2300FB18:
	lbu	a5,s0,+0000007B
	c.beqz	a5,000000002300FB24

l2300FB1E:
	c.li	a4,00000005
	bne	a5,a4,000000002300FB6A

l2300FB24:
	lbu	a5,s0,+0000007E
	c.andi	a5,00000010
	c.beqz	a5,000000002300FB3E

l2300FB2C:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a2,00000000
	c.li	a1,00000001
	c.addi	sp,00000010
	jal	zero,000000002300F9D8

l2300FB3E:
	jal	ra,0000000023014A2E
	lui	a5,0004201A
	lw	a5,a5,+0000036C
	lbu	a5,a5,+00000021
	c.bnez	a5,000000002300FB6A

l2300FB50:
	c.lw	s0,8(a4)
	c.lw	s0,92(a5)
	c.sub	a5,a4
	c.mv	a4,a5
	c.slli	a5,10
	c.srai	a5,00000010
	blt	zero,a5,000000002300FB62

l2300FB60:
	c.li	a4,00000001

l2300FB62:
	lui	a5,00028008
	sh	a4,a5,+00000160

l2300FB6A:
	lbu	a4,s0,+0000007B
	c.li	a5,00000001
	bne	a4,a5,000000002300FBE2

l2300FB74:
	lbu	a5,s0,+0000007E
	c.andi	a5,00000010
	c.bnez	a5,000000002300FB2C

l2300FB7C:
	c.lw	s0,8(a4)
	c.lw	s0,92(a5)
	c.sub	a5,a4
	c.slli	a5,10
	c.srai	a5,00000010
	c.mv	a4,a5
	blt	zero,a5,000000002300FB8E

l2300FB8C:
	c.li	a4,00000001

l2300FB8E:
	slli	a5,a4,00000010
	lui	a3,00028008
	sh	a4,a3,+000001BC
	c.srai	a5,00000010
	c.lui	a4,FFFF8000
	c.or	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,a3,+000001B6
	c.lw	s0,4(a5)
	c.beqz	a5,000000002300FBE2

l2300FBAC:
	lhu	a3,a5,+00000078
	c.lw	s0,8(a4)
	c.lw	a5,8(a5)
	c.sub	a4,a5
	c.slli	a4,05
	c.srli	a4,00000005
	and	a5,a4,a3
	c.li	a4,00000005
	sub	a5,a3,a5
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a4,a5,000000002300FBD2

l2300FBCC:
	c.add	a5,a3
	c.slli	a5,10
	c.srli	a5,00000010

l2300FBD2:
	c.srli	a5,00000001
	c.addi	a5,FFFFFFFF
	c.slli	a5,10
	c.srli	a5,00000010
	lui	a4,00028008
	sh	a5,a4,+000001BA

l2300FBE2:
	lui	a5,0000A002
	c.andi	s1,0000000F
	c.add	s1,a5
	c.slli	s1,02
	sh	zero,s1,+00000000
	lbu	a5,s0,+0000007B
	c.li	a4,00000001
	c.addi	a5,FFFFFFFD
	andi	a5,a5,+000000FF
	bltu	a4,a5,000000002300FC08

l2300FC00:
	lhu	a0,s0,+00000074
	jal	ra,0000000023012BC8

l2300FC08:
	lhu	a5,s0,+00000074
	addi	a4,zero,+0000005C
	lhu	a3,s0,+00000060
	add	a5,a5,a4
	lui	a4,00028008
	addi	a4,a4,+000000D8
	addi	a0,s0,+00000028
	c.add	a5,a4
	sh	a3,a5,+00000000
	lhu	a5,s1,+00000000
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000031
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s1,+00000000
	lhu	a5,s1,+00000000
	c.slli	a5,10
	c.srli	a5,00000010
	c.andi	a5,FFFFFFF0
	ori	a5,a5,+00000002
	sh	a5,s1,+00000000
	lhu	a5,s0,+00000076
	sh	a5,s1,+00000002
	jal	ra,00000000230121DE
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,0004201A
	addi	a0,a0,+00000328
	c.addi	sp,00000010
	jal	zero,000000002300C1E6

l2300FC72:
	c.jr	ra

;; lld_evt_delete_elt_push: 2300FC74
;;   Called from:
;;     2300FD92 (in lld_evt_deffered_elt_handler)
;;     23010F8C (in lld_evt_update_create)
;;     2301106C (in lld_evt_move_to_slave)
;;     23011318 (in lld_evt_move_to_slave)
;;     2301171C (in lld_evt_end)
;;     230135D2 (in lld_scan_start)
;;     23014288 (in lld_con_stop)
;;     23014C98 (in llm_end_evt_defer)
lld_evt_delete_elt_push proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	csrrs	s1,mstatus,zero
	csrrci	a5,mstatus,00000008
	lbu	a5,a0,+0000007F
	c.bnez	a5,000000002300FCBA

l2300FC8C:
	c.mv	s0,a0
	c.mv	s2,a1
	c.li	a0,0000000C
	c.li	a1,00000000
	c.swsp	a2,00000084
	jal	ra,000000002300D942
	c.lwsp	a2,00000084
	c.sw	a0,4(s0)
	sb	s2,a0,+00000008
	sb	a2,a0,+00000009
	c.mv	a1,a0
	c.li	a5,00000001
	lui	a0,0004201A
	sb	a5,s0,+0000007F
	addi	a0,a0,+00000348
	jal	ra,000000002300C1E6

l2300FCBA:
	csrrw	zero,mstatus,zero
	addi	a0,zero,+00000020
	jal	ra,000000002300C106
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,00000009
	c.addi16sp	00000020
	jal	zero,000000002300D720

;; lld_evt_deffered_elt_handler: 2300FCD6
lld_evt_deffered_elt_handler proc
	c.addi16sp	FFFFFFD0
	c.li	a0,00000008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	jal	ra,000000002300D77C
	addi	a1,sp,+0000000F
	addi	a0,sp,+0000000E
	jal	ra,000000002300FA36
	c.mv	s0,a0
	c.li	s2,00000003
	c.li	s3,00000004
	c.li	s1,00000001
	c.li	s4,00000002

l2300FD04:
	c.bnez	s0,000000002300FD1A

l2300FD06:
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

l2300FD1A:
	lbu	a5,sp,+0000000E
	addi	s5,s0,+00000028
	bne	a5,s2,000000002300FD72

l2300FD26:
	lhu	a0,s0,+00000074
	c.mv	a1,s0
	jal	ra,000000002300F5D4
	lhu	a0,s0,+00000074
	jal	ra,000000002300F72A

l2300FD38:
	c.mv	a0,s5
	jal	ra,0000000023011E2C
	lbu	a5,sp,+0000000E
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	bltu	s1,a5,000000002300FD62

l2300FD4C:
	c.bnez	a0,000000002300FD62

l2300FD4E:
	lhu	a0,s0,+00000074
	addi	a5,a0,-00000002
	c.slli	a5,10
	c.srli	a5,00000010
	bgeu	s1,a5,000000002300FDCE

l2300FD5E:
	jal	ra,000000002301A232

l2300FD62:
	addi	a1,sp,+0000000F
	addi	a0,sp,+0000000E
	jal	ra,000000002300FA36
	c.mv	s0,a0
	c.j	000000002300FD04

l2300FD72:
	bne	a5,s3,000000002300FD80

l2300FD76:
	lhu	a0,s0,+00000074
	jal	ra,000000002300F7D4
	c.j	000000002300FD38

l2300FD80:
	bne	a5,s1,000000002300FD98

l2300FD84:
	lbu	a5,s0,+0000007E
	c.andi	a5,00000010
	c.beqz	a5,000000002300FD38

l2300FD8C:
	c.li	a2,00000001
	c.li	a1,00000001

l2300FD90:
	c.mv	a0,s0
	jal	ra,000000002300FC74
	c.j	000000002300FD38

l2300FD98:
	bne	a5,s4,000000002300FD38

l2300FD9C:
	csrrs	s6,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lw	s0,72(a5)
	c.beqz	a5,000000002300FDB4

l2300FDA8:
	addi	a0,s0,+00000048
	jal	ra,000000002300C252
	jal	ra,000000002300EB66

l2300FDB4:
	c.lw	s0,48(a5)
	c.beqz	a5,000000002300FDC4

l2300FDB8:
	addi	a0,s0,+00000030
	jal	ra,000000002300C252
	jal	ra,000000002300EB66

l2300FDC4:
	csrrw	zero,mstatus,zero
	c.li	a2,00000000
	c.li	a1,00000000
	c.j	000000002300FD90

l2300FDCE:
	jal	ra,0000000023014C3C
	c.j	000000002300FD62

;; lld_evt_channel_next: 2300FDD4
;;   Called from:
;;     23010B2E (in lld_evt_schedule_next)
;;     23010BFE (in lld_evt_schedule_next)
;;     23010E02 (in lld_evt_move_to_master)
;;     230110D0 (in lld_evt_move_to_slave)
lld_evt_channel_next proc
	addi	a5,zero,+0000005C
	add	a0,a0,a5
	lui	a5,00028008
	addi	a5,a5,+0000009E
	c.add	a0,a5
	lhu	a4,a0,+00000000
	c.slli	a4,10
	c.srli	a4,00000010
	srai	a5,a4,00000008
	c.andi	a5,0000001F
	add	a1,a5,a1
	andi	a4,a4,+0000003F
	addi	a5,zero,+00000025
	c.add	a1,a4
	or	a1,a1,a5
	blt	a1,zero,000000002300FE26

l2300FE0A:
	lhu	a5,a0,+00000000
	c.slli	a1,10
	c.srai	a1,00000010
	c.slli	a5,10
	c.srli	a5,00000010
	andi	a5,a5,-00000040
	c.or	a1,a5
	c.slli	a1,10
	c.srli	a1,00000010
	sh	a1,a0,+00000000
	c.jr	ra

l2300FE26:
	addi	a1,a1,+00000025
	c.j	000000002300FE0A

;; lld_evt_init: 2300FE2C
;;   Called from:
;;     230130CC (in lld_init)
lld_evt_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004201A
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	addi	a5,s1,+00000328
	sh	zero,a5,+00000028
	sb	zero,a5,+0000002A
	lui	s3,0004201A
	lui	s2,0004201A
	c.beqz	a0,000000002300FEB0

l2300FE58:
	addi	a0,s3,+00000338
	jal	ra,0000000023012D12
	addi	a0,s2,+00000340
	jal	ra,0000000023012D12
	addi	s4,s1,+00000328
	csrrs	s5,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	s6,0004201A

l2300FE78:
	lw	a5,s4,+00000000
	c.bnez	a5,000000002300FE84

l2300FE7E:
	lw	a5,s4,+00000008
	c.beqz	a5,000000002300FE9A

l2300FE84:
	addi	a0,s1,+00000328
	jal	ra,000000002300C252
	c.mv	s0,a0
	c.bnez	a0,000000002300FF0A

l2300FE90:
	addi	a0,s6,+00000330
	jal	ra,000000002300C252
	c.bnez	a0,000000002300FF02

l2300FE9A:
	csrrw	zero,mstatus,zero
	lui	s0,0004201A

l2300FEA2:
	lw	a5,s4,+00000020
	c.bnez	a5,000000002300FF30

l2300FEA8:
	addi	a0,zero,+00000020
	jal	ra,000000002300C138

l2300FEB0:
	addi	a0,s1,+00000328
	jal	ra,000000002300C1BE
	addi	a0,s3,+00000338
	jal	ra,000000002300C1BE
	addi	a0,s2,+00000340
	jal	ra,000000002300C1BE
	lui	a0,0004201A
	addi	a0,a0,+00000348
	jal	ra,000000002300C1BE
	lui	a1,00023010
	addi	a1,a1,-0000032A
	c.li	a0,00000008
	jal	ra,000000002300D6D2
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	lui	a1,00023010
	addi	a1,a1,+0000007E
	c.li	a0,00000009
	c.addi16sp	00000020
	jal	zero,000000002300D6D2

l2300FF02:
	c.lw	a0,4(s0)
	jal	ra,000000002300DA32
	c.beqz	s0,000000002300FE9A

l2300FF0A:
	addi	a0,s0,+00000028
	jal	ra,0000000023012648
	c.lw	s0,80(a0)
	c.beqz	a0,000000002300FF20

l2300FF16:
	jal	ra,000000002300B5AC
	c.lw	s0,80(a0)
	jal	ra,000000002300DA32

l2300FF20:
	c.lw	s0,4(a0)
	c.beqz	a0,000000002300FF28

l2300FF24:
	jal	ra,000000002300DA32

l2300FF28:
	c.mv	a0,s0
	jal	ra,000000002300DA32
	c.j	000000002300FE78

l2300FF30:
	addi	a0,s0,+00000348
	jal	ra,000000002300C252
	jal	ra,000000002300DA32
	c.j	000000002300FEA2

;; lld_evt_init_evt: 2300FF3E
;;   Called from:
;;     23010C72 (in lld_evt_scan_create)
;;     23010ED2 (in lld_evt_update_create)
;;     23011062 (in lld_evt_move_to_slave)
;;     230113CE (in lld_evt_slave_update)
;;     230114B8 (in lld_evt_adv_create)
;;     2301369A (in lld_con_start)
;;     230139A6 (in lld_con_start)
;;     23013EFC (in lld_con_update_after_param_req)
lld_evt_init_evt proc
	lui	a5,00042019
	lbu	a5,a5,+00000650
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	sb	a5,a0,+00000054
	sb	zero,a0,+00000052
	sb	zero,a0,+00000057
	csrrs	s1,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.addi	a0,00000008
	jal	ra,000000002300C1BE
	addi	a0,s0,+00000010
	jal	ra,000000002300C1BE
	addi	a0,s0,+00000018
	jal	ra,000000002300C1BE
	addi	a0,s0,+00000020
	jal	ra,000000002300C1BE
	csrrw	zero,mstatus,zero
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; lld_evt_elt_delete: 2300FF90
;;   Called from:
;;     230100EC (in lld_evt_delete_elt_handler)
;;     2301343A (in lld_adv_stop)
;;     230135E6 (in lld_scan_stop)
lld_evt_elt_delete proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s7,00000084
	c.mv	s1,a0
	c.mv	s5,a1
	c.mv	s6,a2
	csrrs	s4,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	s3,0004201A
	c.mv	a1,a0
	addi	a0,s3,+00000328
	jal	ra,000000002300C342
	c.beqz	a0,000000002300FFF4

l2300FFC2:
	lbu	a5,s1,+0000007E
	addi	a0,zero,+00000020
	c.li	s0,00000000
	ori	a5,a5,+00000010
	sb	a5,s1,+0000007E
	jal	ra,000000002300C106

l2300FFD8:
	csrrw	zero,mstatus,zero
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

l2300FFF4:
	c.mv	s0,a0
	c.li	s7,00000001

l2300FFF8:
	c.mv	a0,s1
	jal	ra,000000002300FABC
	c.mv	s2,a0
	c.bnez	s1,000000002301006E

l23010002:
	c.beqz	a0,000000002300FFD8

l23010004:
	c.lw	a0,4(s0)

l23010006:
	beq	s6,zero,0000000023010026

l2301000A:
	lhu	a1,s0,+00000074
	bltu	s7,a1,0000000023010078

l23010012:
	c.slli	a1,08
	ori	a1,a1,+00000001
	c.slli	a1,10
	c.srli	a1,00000010
	c.li	a2,00000002

l2301001E:
	addi	a0,zero,+00000200
	jal	ra,000000002300DC6C

l23010026:
	c.mv	a0,s0
	jal	ra,000000002300BB56
	c.li	a2,00000000
	c.mv	a1,s0
	addi	a0,s3,+00000328
	jal	ra,000000002300C286
	beq	s5,zero,0000000023010044

l2301003C:
	addi	a0,s0,+00000028
	jal	ra,0000000023012648

l23010044:
	c.lw	s0,80(a0)
	c.beqz	a0,0000000023010052

l23010048:
	jal	ra,000000002300B5AC
	c.lw	s0,80(a0)
	jal	ra,000000002300DA32

l23010052:
	c.lw	s0,4(a0)
	c.beqz	a0,000000002301005A

l23010056:
	jal	ra,000000002300DA32

l2301005A:
	c.mv	a0,s0
	jal	ra,000000002300DA32
	beq	s2,zero,0000000023010070

l23010064:
	c.mv	a0,s2
	jal	ra,000000002300DA32
	c.li	s0,00000001
	c.j	000000002300FFF8

l2301006E:
	c.beqz	s0,0000000023010074

l23010070:
	c.li	s0,00000001
	c.j	000000002300FFD8

l23010074:
	c.mv	s0,s1
	c.j	0000000023010006

l23010078:
	c.li	a2,00000002
	c.li	a1,00000000
	c.j	000000002301001E

;; lld_evt_delete_elt_handler: 2301007E
lld_evt_delete_elt_handler proc
	c.addi	sp,FFFFFFE0
	c.li	a0,00000009
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	jal	ra,000000002300D77C
	csrrs	a4,mstatus,zero
	csrrci	a5,mstatus,00000008
	lui	a5,0004201A
	addi	a3,a5,+00000328
	c.lw	a3,32(s0)
	csrrw	zero,mstatus,zero
	c.li	s2,00000001
	addi	s1,a5,+00000328
	lui	s3,0004201A

l230100B4:
	c.bnez	s0,00000000230100E0

l230100B6:
	csrrs	s0,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.lw	s1,32(a5)
	c.bnez	a5,00000000230100CA

l230100C2:
	addi	a0,zero,+00000020
	jal	ra,000000002300C138

l230100CA:
	csrrw	zero,mstatus,zero
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l230100E0:
	c.lw	s0,4(a0)
	c.beqz	a0,00000000230100F2

l230100E4:
	lbu	a2,s0,+00000009
	lbu	a1,s0,+00000008
	jal	ra,000000002300FF90
	c.mv	s2,a0

l230100F2:
	lw	s4,s0,+00000000
	beq	s2,zero,000000002301011C

l230100FA:
	csrrs	s5,mstatus,zero
	csrrci	a5,mstatus,00000008
	c.li	a2,00000000
	c.mv	a1,s0
	addi	a0,s3,+00000348
	jal	ra,000000002300C286
	csrrw	zero,mstatus,zero
	c.mv	a0,s0
	jal	ra,000000002300DA32

l23010118:
	c.mv	s0,s4
	c.j	00000000230100B4

l2301011C:
	csrrs	a5,mstatus,zero
	csrrci	a4,mstatus,00000008
	csrrw	zero,mstatus,zero
	c.j	0000000023010118

;; lld_evt_drift_compute: 2301012A
;;   Called from:
;;     2301017A (in lld_evt_rxwin_compute)
;;     23010B44 (in lld_evt_schedule_next)
;;     230110F4 (in lld_evt_move_to_slave)
;;     2301142C (in lld_evt_slave_update)
lld_evt_drift_compute proc
	lui	a5,0004201A
	lbu	a5,a5,+00000350
	lui	a4,00023073
	addi	a4,a4,+00000404
	c.slli	a1,01
	c.slli	a5,01
	c.add	a5,a4
	c.add	a4,a1
	lhu	a5,a5,+00000000
	lhu	a4,a4,+00000000
	c.add	a5,a4
	add	a5,a5,a0
	addi	a0,zero,+00000029
	add	a0,a5,a0
	c.srli	a0,00000010
	c.jr	ra

;; lld_evt_rxwin_compute: 2301015C
;;   Called from:
;;     23010BDC (in lld_evt_schedule_next)
lld_evt_rxwin_compute proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	lhu	a0,a0,+00000062
	lhu	a5,s0,+00000078
	lbu	a1,s0,+0000006E
	c.addi	a0,00000001
	add	a0,a0,a5
	c.slli	a0,10
	c.srli	a0,00000010
	jal	ra,000000002301012A
	lhu	a5,s0,+00000074
	addi	a4,zero,+0000005C
	c.sw	s0,88(a0)
	add	a5,a5,a4
	lui	a4,00028008
	addi	a4,a4,+000000A2
	lbu	a1,s0,+00000071
	addi	a0,s0,+00000028
	c.lwsp	a2,00000020
	c.add	a5,a4
	lhu	a5,a5,+00000000
	c.sw	s0,84(a5)
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	jal	zero,000000002300F870

;; lld_evt_restart: 230101AE
;;   Called from:
;;     230109DC (in lld_evt_elt_insert)
;;     23010A24 (in lld_evt_canceled)
;;     230116E2 (in lld_evt_end)
lld_evt_restart proc
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
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	lbu	s5,a0,+0000007B
	c.li	a5,00000004
	c.mv	s0,a0
	bltu	a5,s5,000000002301022E

l230101D4:
	lui	a4,00023074
	slli	a5,s5,00000002
	addi	a4,a4,-00000318
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.mv	s6,a1
	addi	s7,a0,+00000028
	c.jr	a5
230101EC                                     B7 A7 01 42             ...B
230101F0 83 A7 C7 36 B7 34 07 23 93 84 44 3F 83 C7 17 02 ...6.4.#..D?....
23010200 95 CF EF 60 72 32 18 44 83 57 84 07 3D 89 05 05 ...`r2.D.W..=...
23010210 BA 97 79 89 AA 97 96 07 95 83 1C C4 83 C7 B4 00 ..y.............
23010220 19 67 13 07 07 0A BD 8B D9 8F 23 18 F4 00       .g........#... 

l2301022E:
	lbu	a0,s0,+0000007E
	c.srli	a0,00000004
	xori	a0,a0,+00000001
	c.andi	a0,00000001
	c.j	0000000023010274
2301023C                                     EF F0 9F 84             ....
23010240 03 C7 D4 00 74 4C E9 77 93 87 07 05 3D 8B 5D 8F ....tL.w....=.].
23010250 B7 07 00 08 23 18 E4 00 FD 17 33 87 A6 40 08 C4 ....#.....3..@..
23010260 54 C4 7D 8F 37 06 00 04 E3 73 E6 FC 15 8D E9 8F T.}.7....s......
23010270 01 45 D5 DF                                     .E..           

l23010274:
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
23010290 83 47 05 06 A9 C7 83 57 45 07 13 07 C0 05 B3 87 .G.....WE.......
230102A0 E7 02 37 87 00 28 93 06 07 0E B6 97 83 D7 07 00 ..7..(..........
230102B0 BD 83 95 C7 83 47 15 06 9D C3 83 56 07 1F 83 57 .....G.....V...W
230102C0 27 1F C2 07 D5 8F 1C D5 83 57 47 1F 13 F7 F7 3F '........WG....?
230102D0 93 07 00 27 99 8F 23 16 F5 02 01 45 61 BF 38 4C ...'..#....Ea.8L
230102E0 83 57 84 07 B7 06 00 08 FD 16 BA 97 33 F7 D7 00 .W..........3...
230102F0 7C 48 13 06 10 27 38 CC B3 D7 C7 02 18 C4 BA 97 |H...'8.........
23010300 37 37 07 23 03 47 57 3F F5 8F E9 76 3D 8B 93 86 77.#.GW?...v=...
23010310 06 05 55 8F 7C CC 23 18 E4 00 5C C4 09 BF 83 57 ..U.|.#...\....W
23010320 C5 05 03 57 05 06 93 86 F7 FF C2 06 C1 82 63 16 ...W..........c.
23010330 D7 1E 83 46 D5 06 63 86 06 64 85 47 63 8A F6 04 ...F..c..d.Gc...
23010340 89 47 63 87 F6 1C 63 07 0B 00 03 55 44 07 85 45 .Gc...c....UD..E
23010350 EF F0 5F A8 18 44 83 57 84 07 23 11 04 06 BA 97 .._..D.W..#.....
23010360 03 57 04 06 96 07 95 83 1C C4 05 07 83 47 E4 07 .W...........G..
23010370 42 07 41 83 23 10 E4 06 93 F6 27 00 63 87 06 1C B.A.#.....'.c...
23010380 95 46 E3 F6 E6 EA 93 E7 07 01 23 0F F4 06 45 B5 .F........#...E.
23010390 83 56 45 07 44 41 37 A6 01 42 8A 06 13 07 06 32 .VE.DA7..B.....2
230103A0 36 97 1C 43 83 56 85 07 03 D7 84 07 93 85 84 02 6..C.V..........
230103B0 13 09 06 32 63 9E E6 00 83 56 E5 05 03 D7 E4 05 ...2c....V......
230103C0 63 98 E6 00 83 D6 47 05 03 D7 67 05 63 88 E6 00 c.....G...g.c...
230103D0 03 D7 C7 05 13 67 07 08 23 9E E7 04 83 57 04 06 .....g..#....W..
230103E0 13 06 80 05 5E 85 23 90 F4 06 83 57 C4 05 23 9E ....^.#....W..#.
230103F0 F4 04 83 47 04 07 23 88 F4 06 3C 44 BC C4 7C 44 ...G..#...<D..|D
23010400 FC C4 1C 58 9C D8 5C 58 DC D8 3C 40 BC C0 7C 40 ...X..\X..<@..|@
23010410 FC C0 1C 5C 9C DC 5C 5C DC DC 83 57 44 07 23 9A ...\..\\...WD.#.
23010420 F4 06 83 47 E4 07 23 8F F4 06 83 47 D4 06 A3 86 ...G..#....G....
23010430 F4 06 83 57 84 06 23 94 F4 06 83 57 A4 06 23 95 ...W..#....W..#.
23010440 F4 06 83 57 64 07 03 D7 84 07 23 9B F4 06 3C 48 ...Wd.....#...<H
23010450 BC C8 9C 44 99 8F 96 07 95 83 1C C4 83 D6 84 07 ...D............
23010460 B8 48 B3 F7 D7 02 93 06 10 27 23 13 F7 00 BC 48 .H.......'#....H
23010470 03 D7 84 07 23 92 E7 00 03 D7 24 01 BC 48 33 77 ....#.....$..H3w
23010480 D7 02 33 37 E0 00 23 94 E7 00 83 D7 24 01 B8 48 ..37..#.....$..H
23010490 B3 D7 D7 02 83 56 87 00 B6 97 23 14 F7 00 83 47 .....V....#....G
230104A0 D4 07 A3 8E F4 06 B7 E7 00 42 83 A7 C7 13 82 97 .........B......
230104B0 23 22 04 00 23 A2 04 00 23 A8 04 04 83 57 44 07 #"..#...#....WD.
230104C0 22 85 8A 07 CA 97 9C 43 03 D6 07 05 83 D5 E7 04 "......C........
230104D0 EF 20 B0 06 83 57 44 07 13 07 C0 05 26 85 B3 87 . ...WD.....&...
230104E0 E7 02 37 87 00 28 93 06 87 0A 13 07 67 0A 01 46 ..7..(......g..F
230104F0 81 45 BE 96 83 D6 06 00 BA 97 C2 06 C1 82 23 90 .E............#.
23010500 D7 00 EF F0 2F F7 03 55 44 07 EF F0 CF 93 25 BD ..../..UD.....%.
23010510 03 55 45 07 EF F0 8F 98 3D B5 E3 16 F7 E2 83 47 .UE.....=......G
23010520 D5 06 05 47 63 8A E7 00 09 47 63 8D E7 00 A3 06 ...Gc....Gc.....
23010530 04 06 23 1E 04 04 01 BD 01 46 8D 45 22 85 EF F0 ..#......F.E"...
23010540 AF C9 F5 B7 01 46 91 45 D5 BF E3 12 0B CE 95 8B .....F.E........
23010550 91 C3 91 4A D6 85 22 85 EF 20 B0 0B C9 B9 99 E5 ...J..".. ......
23010560 83 47 E5 07 93 F7 F7 07 23 0F F5 06 83 57 44 07 .G......#....WD.
23010570 13 07 C0 05 B3 87 E7 02 37 87 00 28 93 06 07 0E ........7..(....
23010580 BE 96 83 D9 06 00 93 D9 F9 00 63 8A 09 06 4E 89 ..........c...N.
23010590 63 1C 0B 06 13 07 27 0A BA 97 39 47 23 90 E7 00 c.....'...9G#...
230105A0 F3 27 00 30 73 77 04 30 18 58 45 CB 73 90 07 30 .'.0sw.0.XE.s..0
230105B0 23 11 04 06 01 49 83 57 44 07 13 07 C0 05 B3 87 #....I.WD.......
230105C0 E7 02 37 87 00 28 93 06 C7 0D 13 06 E7 0D 13 07 ..7..(..........
230105D0 07 0E BE 96 3E 96 83 D5 06 00 83 56 06 00 BA 97 ....>......V....
230105E0 C2 06 CD 8E 14 D4 83 D7 07 00 A3 08 04 06 13 F7 ................
230105F0 F7 3F 93 07 00 27 99 8F 23 16 F4 02 31 A0 13 19 .?...'..#...1...
23010600 0B 01 13 59 09 01 85 49 83 47 E4 07 13 F7 07 01 ...Y...I.G......
23010610 E3 1F 07 C0 03 5A 24 06 03 55 84 07 13 F7 87 00 .....Z$..U......
23010620 05 0A 33 0A 45 03 42 0A 13 5A 0A 01 1D C3 83 56 ..3.E.B..Z.....V
23010630 C4 05 03 56 04 06 13 87 F6 FF 42 07 41 83 63 19 ...V......B.A.c.
23010640 E6 2E 83 47 D4 06 05 47 63 85 E7 0A 09 47 63 8C ...G...Gc....Gc.
23010650 E7 2C 22 85 EF F0 9F B0 A5 A4 38 40 21 FB 73 90 .,".......8@!.s.
23010660 07 30 3C 44 B1 F7 03 47 E4 07 93 77 97 00 A9 F3 .0<D...G...w....
23010670 83 47 F4 06 95 FF 03 59 E4 05 B7 A6 01 42 83 47 .G.....Y.....B.G
23010680 E4 06 83 C6 06 35 7D 19 42 09 D5 8F 13 59 09 01 .....5}.B....Y..
23010690 81 EF 93 06 20 1C CA 87 63 F4 26 01 93 07 20 1C .... ...c.&... .
230106A0 13 99 07 01 13 59 09 01 83 47 D4 06 85 C7 83 57 .....Y...G.....W
230106B0 C4 05 03 56 04 06 93 86 F7 FF C2 06 C1 82 63 5B ...V..........c[
230106C0 D6 00 91 8F F9 17 63 73 F9 00 CA 87 13 99 07 01 ......cs........
230106D0 13 59 09 01 85 47 63 F6 27 01 13 67 07 F8 23 0F .Y...Gc.'..g..#.
230106E0 E4 06 93 09 19 00 C2 09 23 11 24 07 93 D9 09 01 ........#.$.....
230106F0 D9 B5 03 57 44 07 44 40 B7 A7 01 42 0A 07 93 87 ...WD.D@...B....
23010700 07 32 BA 97 03 D7 84 07 93 85 84 02 9C 43 63 1E .2...........Cc.
23010710 A7 00 83 56 E4 05 03 D7 E4 05 63 98 E6 00 83 D6 ...V......c.....
23010720 47 05 03 D7 67 05 63 88 E6 00 03 D7 C7 05 13 67 G...g.c........g
23010730 07 08 23 9E E7 04 83 57 04 06 13 0D 20 4E 93 0C ..#....W.... N..
23010740 C0 05 23 90 F4 06 1C 54 37 8C 00 28 5E 85 9C D4 ..#....T7..(^...
23010750 5C 54 DC D4 3C 44 BC C4 7C 44 FC C4 1C 58 9C D8 \T..<D..|D...X..
23010760 5C 58 DC D8 83 47 04 07 23 88 F4 06 3C 40 BC C0 \X...G..#...<@..
23010770 7C 40 FC C0 1C 5C 9C DC 5C 5C DC DC 83 57 64 06 |@...\..\\...Wd.
23010780 23 93 F4 06 83 47 C4 06 23 86 F4 06 83 57 C4 05 #....G..#....W..
23010790 23 9E F4 04 83 47 E4 07 23 8F F4 06 83 47 D4 06 #....G..#....G..
230107A0 83 D6 44 07 03 C7 94 01 A3 86 F4 06 83 47 E4 06 ..D..........G..
230107B0 B3 86 96 03 23 87 F4 06 83 57 84 06 23 94 F4 06 ....#....W..#...
230107C0 83 57 A4 06 23 95 F4 06 83 57 64 07 23 9B F4 06 .W..#....Wd.#...
230107D0 3C 48 23 99 A4 01 BC C8 83 47 C4 06 B3 87 A7 03 <H#......G......
230107E0 FC C8 83 47 D4 07 A3 8E F4 06 83 D7 84 07 99 8F ...G............
230107F0 C2 07 13 07 8C 0A BA 96 C1 83 23 90 F6 00 83 56 ..........#....V
23010800 64 06 1C 44 B8 48 86 06 36 9A 83 D6 84 07 42 0A d..D.H..6.....B.
23010810 13 5A 0A 01 B3 F7 D7 02 13 0C 2C 0A 23 13 F7 00 .Z........,.#...
23010820 BC 48 03 D7 84 07 23 92 E7 00 03 D6 24 01 13 07 .H....#.....$...
23010830 10 27 BC 48 33 76 E6 02 33 36 C0 00 23 94 C7 00 .'.H3v..36..#...
23010840 BC 48 83 D6 24 01 13 06 80 05 B3 D6 E6 02 03 D7 .H..$...........
23010850 87 00 BA 96 23 94 D7 00 B7 E7 00 42 83 A7 C7 13 ....#......B....
23010860 82 97 23 22 04 00 23 11 04 06 01 46 81 45 26 85 ..#"..#....F.E&.
23010870 23 A2 04 00 23 A8 04 04 EF F0 CF BF 03 55 44 07 #...#........UD.
23010880 EF E0 7F DC 83 45 E4 06 52 85 EF F0 1F 8A 03 47 .....E..R......G
23010890 C4 06 83 57 44 07 85 45 33 07 A7 03 B3 87 97 03 ...WD..E3.......
230108A0 3A 95 28 CC 5E 85 E2 97 83 D7 07 00 7C C8 EF E0 :.(.^.......|...
230108B0 3F FC 85 47 23 06 04 06 23 13 04 06 A3 08 F4 06 ?..G#...#.......
230108C0 D2 85 22 85 EF F0 CF 84 83 57 04 06 23 11 04 06 .."......W..#...
230108D0 BE 99 23 10 34 07 63 09 09 00 03 55 44 07 93 15 ..#.4.c....UD...
230108E0 09 01 C1 85 EF F0 0F CF 83 57 C4 05 03 57 04 06 .........W...W..
230108F0 FD 17 C2 07 C1 83 63 1B F7 00 83 47 D4 06 99 C7 ......c....G....
23010900 83 47 E4 07 93 E7 87 00 23 0F F4 06 83 47 E4 07 .G......#....G..
23010910 93 F6 27 00 E3 96 06 A6 E3 1B 0B 90 95 8B E3 9B ..'.............
23010920 07 C2 8D 4A 05 B9 03 55 44 07 EF E0 3F D7 15 B3 ...J...UD...?...
23010930 63 1F D6 02 83 47 D4 06 05 47 63 8F E7 00 09 47 c....G...Gc....G
23010940 63 84 E7 02 83 47 E4 07 A3 06 04 06 23 1E 04 04 c....G......#...
23010950 DD 9B 23 0F F4 06 F5 B9 23 13 04 06 01 46 8D 45 ..#.....#....F.E
23010960 22 85 EF F0 6F 87 F9 BF 01 46 91 45 D5 BF DD 9B "...o....F.E....
23010970 23 0F F4 06 F9 B9 1C 45 91 07 96 07 95 83 1C C5 #......E........
23010980 7D B0 E3 12 F7 9C 65 B6                         }.....e.       
