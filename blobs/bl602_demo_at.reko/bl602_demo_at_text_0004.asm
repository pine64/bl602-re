;;; Segment .text (23000300)

l23040310:
	lhu	a0,s0,+00000000
	add	a5,a0,s4
	c.slli	a5,10
	c.srli	a5,00000010
	bltu	a5,s5,0000000023040346

l23040320:
	c.beqz	a0,0000000023040328

l23040322:
	sh	zero,s0,+00000000
	c.addi	s1,00000001

l23040328:
	c.addi	s0,00000002
	bne	s3,s0,0000000023040310

l2304032E:
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

l23040346:
	jal	ra,00000000230402AE
	sh	zero,s0,+00000000
	c.mv	a1,a0
	c.addi	s1,00000001
	c.bnez	a0,000000002304035E

l23040354:
	addi	a0,s6,+000005DC
	jal	ra,0000000023082388
	c.j	0000000023040328

l2304035E:
	c.li	a2,00000010
	c.mv	a0,s7
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023040328

l23040368:
	lhu	a5,s2,+00000000
	c.addi	a5,FFFFFFFF
	sh	a5,s2,+00000000
	c.j	0000000023040328

;; mod_sub_del_all: 23040374
mod_sub_del_all proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.mv	s2,a0
	c.mv	a0,a2
	c.swsp	s0,00000014
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.mv	s3,a1
	c.mv	s0,a2
	jal	ra,0000000023049430
	slli	a5,a0,00000010
	c.srai	a5,00000010
	blt	zero,a5,00000000230403B4

l23040398:
	lui	a0,000230B8
	addi	a0,a0,+00000560
	jal	ra,0000000023082388

l230403A4:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l230403B4:
	c.mv	s1,a0
	lw	s4,s0,+00000000
	jal	ra,000000002303C3DC
	c.bnez	a0,00000000230403E4

l230403C0:
	lhu	a5,s0,+00000004
	c.li	a2,00000001
	c.addi	a5,FFFFFFFC
	sltiu	a5,a5,+00000001
	sb	a5,sp,+0000000F

l230403D0:
	lbu	a6,sp,+0000000F
	c.mv	a5,s4
	c.li	a4,00000000
	c.mv	a3,s1
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,000000002303DF62
	c.j	00000000230403A4

l230403E4:
	addi	a2,sp,+0000000F
	c.mv	a1,s0
	jal	ra,000000002303E8A4
	c.mv	s0,a0
	c.li	a2,00000002
	c.beqz	a0,00000000230403D0

l230403F4:
	c.li	a1,00000002
	c.addi	a0,00000010
	jal	ra,000000002303BA66
	c.mv	a0,s0
	jal	ra,00000000230402DE
	c.li	a2,00000000
	c.j	00000000230403D0

;; mod_sub_va_overwrite: 23040406
mod_sub_va_overwrite proc
	c.addi16sp	FFFFFFC0
	c.swsp	s2,00000018
	c.mv	s2,a0
	c.mv	a0,a2
	c.swsp	s0,0000001C
	c.swsp	s3,00000094
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.mv	s3,a1
	c.mv	s0,a2
	sh	zero,sp,+0000001E
	jal	ra,0000000023049430
	slli	a5,a0,00000010
	c.srai	a5,00000010
	blt	zero,a5,000000002304044E

l23040430:
	lui	a0,000230B8
	addi	a0,a0,+00000560
	jal	ra,0000000023082388

l2304043C:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.lwsp	s0,00000198
	c.lwsp	tp,000001B8
	c.addi16sp	00000040
	c.jr	ra

l2304044E:
	c.mv	s1,a0
	c.li	a1,00000010
	c.mv	a0,s0
	jal	ra,0000000023049400
	c.mv	s5,a0
	c.mv	a0,s1
	lw	s4,s0,+00000000
	jal	ra,000000002303C3DC
	c.bnez	a0,000000002304048C

l23040466:
	lhu	a5,s0,+00000004
	c.li	a2,00000001
	c.addi	a5,FFFFFFFC
	sltiu	a5,a5,+00000001
	sb	a5,sp,+0000001D

l23040476:
	lbu	a6,sp,+0000001D
	lhu	a4,sp,+0000001E
	c.mv	a5,s4
	c.mv	a3,s1
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,000000002303DF62
	c.j	000000002304043C

l2304048C:
	addi	a2,sp,+0000001D
	c.mv	a1,s0
	jal	ra,000000002303E8A4
	c.mv	s0,a0
	c.li	a2,00000002
	c.beqz	a0,0000000023040476

l2304049C:
	c.li	a1,00000002
	c.addi	a0,00000010
	jal	ra,000000002303BA66
	c.mv	a0,s0
	jal	ra,00000000230402DE
	addi	a1,sp,+0000001E
	c.mv	a0,s5
	jal	ra,000000002303EFE8
	c.mv	a2,a0
	c.bnez	a0,0000000023040476

l230404B8:
	c.swsp	a0,00000084
	lhu	a0,sp,+0000001E
	sh	a0,s0,+00000010
	jal	ra,000000002303B9D8
	c.lwsp	a2,00000084
	c.j	0000000023040476

;; mod_sub_overwrite: 230404CA
mod_sub_overwrite proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.mv	s3,a0
	c.mv	a0,a2
	c.swsp	s0,00000014
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s5,00000088
	c.mv	s4,a1
	c.mv	s0,a2
	jal	ra,0000000023049430
	slli	a5,a0,00000010
	c.srai	a5,00000010
	blt	zero,a5,000000002304050E

l230404F0:
	lui	a0,000230B8
	addi	a0,a0,+00000560
	jal	ra,0000000023082388

l230404FC:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l2304050E:
	c.mv	s2,a0
	c.mv	a0,s0
	jal	ra,0000000023049430
	c.mv	s1,a0
	c.mv	a0,s2
	lw	s5,s0,+00000000
	jal	ra,000000002303C3DC
	c.bnez	a0,0000000023040548

l23040524:
	lhu	a5,s0,+00000004
	c.li	a2,00000001
	c.addi	a5,FFFFFFFC
	sltiu	a5,a5,+00000001
	sb	a5,sp,+0000000F

l23040534:
	lbu	a6,sp,+0000000F
	c.mv	a5,s5
	c.mv	a4,s1
	c.mv	a3,s2
	c.mv	a1,s4
	c.mv	a0,s3
	jal	ra,000000002303DF62
	c.j	00000000230404FC

l23040548:
	addi	a2,sp,+0000000F
	c.mv	a1,s0
	jal	ra,000000002303E8A4
	c.mv	s0,a0
	c.li	a2,00000002
	c.beqz	a0,0000000023040534

l23040558:
	c.lui	a5,00004000
	c.add	a5,s1
	c.slli	a5,10
	c.lui	a4,00004000
	c.srli	a5,00000010
	addi	a4,a4,-00000100
	c.li	a2,00000001
	bltu	a4,a5,0000000023040534

l2304056C:
	c.li	a1,00000002
	c.addi	a0,00000010
	jal	ra,000000002303BA66
	c.mv	a0,s0
	jal	ra,00000000230402DE
	c.mv	a0,s1
	sh	s1,s0,+00000010
	jal	ra,000000002303B9D8
	c.li	a2,00000000
	c.j	0000000023040534

;; mod_reset: 23040588
mod_reset proc
	jal	zero,00000000230402DE

;; bt_mesh_cfg_get: 2304058C
;;   Called from:
;;     2303B04A (in clear_friendship)
;;     2303BD54 (in bt_mesh_lpn_friend_update)
;;     23047324 (in bt_mesh_heartbeat_send)
bt_mesh_cfg_get proc
	lui	a5,0004200F
	lw	a0,a5,+0000042C
	c.jr	ra

;; bt_mesh_subnet_del: 23040596
;;   Called from:
;;     23040676 (in net_key_del)
;;     230406D6 (in bt_mesh_cfg_reset)
;;     230406F0 (in bt_mesh_cfg_reset)
bt_mesh_subnet_del proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200F
	c.swsp	s0,00000004
	c.mv	s0,a0
	lw	a0,a5,+0000042C
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s2,a1
	c.beqz	a0,00000000230405C8

l230405AE:
	lhu	a4,a0,+00000038
	lhu	a5,s0,+0000001C
	bne	a4,a5,00000000230405C8

l230405BA:
	sw	zero,a0,+00000030
	sh	zero,a0,+00000034
	c.addi	a0,0000000C
	jal	ra,000000002304986E

l230405C8:
	lui	a5,0004200D
	addi	a4,a5,+000006BC
	lhu	a3,a4,+000001B4
	lhu	a4,s0,+0000001C
	addi	s1,a5,+000006BC
	bne	a3,a4,00000000230405EE

l230405E0:
	lui	a0,0004200E
	c.mv	a1,s2
	addi	a0,a0,-00000790
	jal	ra,000000002303FA2C

l230405EE:
	lhu	a4,s1,+000001DC
	lhu	a5,s0,+0000001C
	bne	a4,a5,0000000023040608

l230405FA:
	lui	a0,0004200E
	c.mv	a1,s2
	addi	a0,a0,-00000768
	jal	ra,000000002303FA2C

l23040608:
	lhu	a0,s0,+0000001C
	jal	ra,0000000023047C7A
	c.mv	a0,s0
	addi	a2,zero,+000000E4
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.li	a5,FFFFFFFF
	sh	a5,s0,+0000001C
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; net_key_del: 2304062E
net_key_del proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.mv	s2,a0
	c.mv	a0,a2
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a1
	jal	ra,0000000023049430
	c.lui	a5,00001000
	c.mv	s0,a0
	bltu	a0,a5,0000000023040662

l2304064A:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a1,a0
	lui	a0,000230B8
	addi	a0,a0,+000003E8
	c.addi	sp,00000010
	jal	zero,0000000023082388

l23040662:
	jal	ra,0000000023042056
	c.li	a3,00000000
	c.beqz	a0,000000002304067C

l2304066A:
	lhu	a5,s1,+00000000
	c.li	a3,0000000C
	beq	a5,s0,000000002304067C

l23040674:
	c.li	a1,00000001
	jal	ra,0000000023040596
	c.li	a3,00000000

l2304067C:
	c.mv	a2,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s1
	c.mv	a0,s2
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,000000002303DC50

;; bt_mesh_cfg_reset: 23040690
;;   Called from:
;;     23041CDA (in bt_mesh_reset)
bt_mesh_cfg_reset proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200F
	c.swsp	s0,00000004
	lw	s0,a5,+0000042C
	c.swsp	ra,00000084
	c.beqz	s0,0000000023040718

l230406A0:
	c.li	a0,00000000
	jal	ra,0000000023046372
	c.li	a5,00000000
	c.sw	s0,64(a5)
	c.li	a6,00000000
	lui	a5,0004200D
	sw	a6,s0,+00000044
	sw	zero,s0,+00000048
	addi	a4,a5,+000006BC
	lhu	a3,a4,+00000220
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	addi	s0,a5,+000006BC
	beq	a3,a4,00000000230406DA

l230406CC:
	lui	a0,0004200E
	c.li	a1,00000001
	addi	a0,a0,-00000740
	jal	ra,0000000023040596

l230406DA:
	lhu	a4,s0,+00000304
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	a4,a5,00000000230406F4

l230406E6:
	lui	a0,0004200E
	c.li	a1,00000001
	addi	a0,a0,-0000065C
	jal	ra,0000000023040596

l230406F4:
	lui	a0,00023040
	c.li	a1,00000000
	addi	a0,a0,+00000588
	jal	ra,000000002303C1BA
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,00042014
	c.li	a2,00000014
	c.li	a1,00000000
	addi	a0,a0,+00000358
	c.addi	sp,00000010
	jal	zero,00000000230A3A68

l23040718:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; sys_put_be32: 23040720
;;   Called from:
;;     23040FFE (in bt_mesh_net_obfuscate)
;;     230410A2 (in bt_mesh_net_encrypt)
;;     23041146 (in bt_mesh_net_decrypt)
;;     230411B2 (in bt_mesh_app_encrypt)
;;     230411D8 (in bt_mesh_app_encrypt)
;;     2304124A (in bt_mesh_app_decrypt)
;;     23041270 (in bt_mesh_app_decrypt)
;;     230413F8 (in bt_mesh_beacon_auth)
sys_put_be32 proc
	srli	a5,a0,00000010
	srli	a4,a5,00000008
	sb	a5,a1,+00000001
	slli	a5,a0,00000010
	c.srli	a5,00000010
	c.srli	a5,00000008
	sb	a4,a1,+00000000
	sb	a5,a1,+00000002
	sb	a0,a1,+00000003
	c.jr	ra

;; bt_mesh_ccm_encrypt: 23040742
;;   Called from:
;;     230410BE (in bt_mesh_net_encrypt)
;;     230411FC (in bt_mesh_app_encrypt)
bt_mesh_ccm_encrypt proc
	c.addi16sp	FFFFFF60
	c.swsp	s1,000000C8
	c.swsp	s2,00000048
	c.swsp	s4,00000044
	c.mv	s2,a2
	c.mv	s4,a0
	c.li	a2,0000000D
	c.mv	s1,a5
	addi	a0,sp,+00000011
	c.li	a5,00000001
	c.swsp	ra,000000CC
	c.swsp	s0,0000004C
	c.swsp	s5,000000C0
	c.swsp	s6,00000040
	c.swsp	s8,0000003C
	c.swsp	s9,000000B8
	c.swsp	s10,00000038
	c.mv	s8,a1
	c.mv	s5,a3
	c.mv	s6,a4
	c.mv	s9,a6
	c.mv	s10,a7
	sb	a5,sp,+00000010
	c.swsp	s3,000000C4
	c.swsp	s7,000000BC
	c.swsp	s11,000000B4
	jal	ra,00000000230A382C
	c.addi4spn	a2,00000020
	c.addi4spn	a1,00000010
	c.mv	a0,s4
	sh	zero,sp,+0000001E
	jal	ra,000000002304B872
	c.mv	s0,a0
	c.bnez	a0,0000000023040800

l23040790:
	c.li	a5,00000008
	bne	s10,a5,0000000023040820

l23040796:
	addi	a5,zero,+00000059
	c.bnez	s1,000000002304079E

l2304079C:
	c.li	a5,00000019

l2304079E:
	c.li	a2,0000000D
	c.mv	a1,s8
	addi	a0,sp,+00000011
	slli	s3,s5,00000010
	sb	a5,sp,+00000010
	srli	s3,s3,00000010
	jal	ra,00000000230A382C
	srli	a4,s3,00000008
	slli	a5,s5,00000008
	c.or	a5,a4
	c.addi4spn	a2,00000050
	c.addi4spn	a1,00000010
	c.mv	a0,s4
	sh	a5,sp,+0000001E
	jal	ra,000000002304B872
	c.mv	s0,a0
	c.bnez	a0,0000000023040800

l230407D2:
	c.bnez	s1,000000002304082A

l230407D4:
	addi	a5,s5,+0000000F
	c.srli	a5,00000004
	andi	s3,s3,+0000000F
	c.swsp	a5,00000084
	bne	s3,zero,00000000230407E6

l230407E4:
	c.li	s3,00000010

l230407E6:
	c.mv	s6,s9
	c.li	s1,00000000
	c.li	s7,00000010
	c.li	s11,00000001

l230407EE:
	c.lwsp	a2,000000E4
	bne	a5,s1,00000000230408D4

l230407F4:
	c.mv	a2,s10
	c.addi4spn	a1,00000040
	add	a0,s9,s5
	jal	ra,00000000230A382C

l23040800:
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
	c.lwsp	s9,0000011C
	c.lwsp	s5,0000013C
	c.lwsp	a7,0000015C
	c.lwsp	a3,0000017C
	c.addi16sp	000000A0
	c.jr	ra

l23040820:
	addi	a5,zero,+00000049
	c.bnez	s1,000000002304079E

l23040826:
	c.li	a5,00000009
	c.j	000000002304079E

l2304082A:
	lbu	a5,sp,+00000050
	c.li	a3,00000002
	c.li	s7,00000010
	sb	a5,sp,+00000010
	lbu	a5,sp,+00000051
	c.xor	a5,s1
	sb	a5,sp,+00000011
	addi	a5,s1,+00000002
	c.li	s1,00000000

l23040846:
	add	a4,s6,s1
	bltu	s7,a5,0000000023040866

l2304084E:
	bltu	a3,a5,00000000230408A2

l23040852:
	c.li	a4,00000010

l23040854:
	bne	a5,a4,00000000230408C0

l23040858:
	c.addi4spn	a2,00000050
	c.addi4spn	a1,00000010
	c.mv	a0,s4
	jal	ra,000000002304B872
	c.beqz	a0,00000000230407D4

l23040864:
	c.j	000000002304089E

l23040866:
	c.mv	a5,a3

l23040868:
	c.addi4spn	a2,00000010
	add	a1,a2,a5
	c.addi4spn	a2,00000050
	c.add	a2,a5
	lbu	a0,a4,+00000000
	lbu	a2,a2,+00000000
	c.addi	a5,00000001
	c.addi	a4,00000001
	c.xor	a2,a0
	sb	a2,a1,+00000000
	bne	a5,s7,0000000023040868

l23040888:
	sub	a3,a5,a3
	c.addi4spn	a2,00000050
	c.addi4spn	a1,00000010
	c.mv	a0,s4
	c.add	s1,a3
	jal	ra,000000002304B872
	c.li	a5,00000002
	c.li	a3,00000000
	c.beqz	a0,0000000023040846

l2304089E:
	c.mv	s0,a0
	c.j	0000000023040800

l230408A2:
	c.addi4spn	a2,00000010
	add	a1,a2,a3
	c.addi4spn	a2,00000050
	c.add	a2,a3
	lbu	a0,a4,+00000000
	lbu	a2,a2,+00000000
	c.addi	a3,00000001
	c.addi	a4,00000001
	c.xor	a2,a0
	sb	a2,a1,+00000000
	c.j	000000002304084E

l230408C0:
	c.addi4spn	a2,00000050
	c.add	a2,a5
	lbu	a2,a2,+00000000
	c.addi4spn	a3,00000010
	c.add	a3,a5
	sb	a2,a3,+00000000
	c.addi	a5,00000001
	c.j	0000000023040854

l230408D4:
	c.lwsp	a2,000000E4
	c.addi	s1,00000001
	beq	a5,s1,0000000023040A10

l230408DC:
	c.li	a5,00000000

l230408DE:
	c.addi4spn	a4,00000010
	add	a3,a4,a5
	c.addi4spn	a4,00000050
	c.add	a4,a5
	add	a2,s2,a5
	lbu	a4,a4,+00000000
	lbu	a2,a2,+00000000
	c.addi	a5,00000001
	c.xor	a4,a2
	sb	a4,a3,+00000000
	bne	a5,s7,00000000230408DE

l23040900:
	c.addi4spn	a2,00000050
	c.addi4spn	a1,00000010
	c.mv	a0,s4
	jal	ra,000000002304B872
	c.bnez	a0,000000002304089E

l2304090C:
	c.li	a2,0000000D
	c.mv	a1,s8
	addi	a0,sp,+00000011
	sb	s11,sp,+00000010
	jal	ra,00000000230A382C
	slli	a4,s1,00000010
	c.srli	a4,00000010
	slli	a5,s1,00000008
	c.srli	a4,00000008
	c.or	a5,a4
	c.addi4spn	a2,00000030
	c.addi4spn	a1,00000010
	c.mv	a0,s4
	sh	a5,sp,+0000001E
	jal	ra,000000002304B872
	c.bnez	a0,000000002304089E

l2304093A:
	c.li	a5,00000000

l2304093C:
	c.addi4spn	a2,00000030
	add	a4,s2,a5
	c.add	a2,a5
	lbu	a4,a4,+00000000
	lbu	a2,a2,+00000000
	add	a3,s6,a5
	c.addi	a5,00000001
	c.xor	a4,a2
	sb	a4,a3,+00000000
	bne	a5,s7,000000002304093C

l2304095C:
	c.j	0000000023040A0A

l2304095E:
	c.addi4spn	a4,00000010
	add	a3,a4,a5
	c.addi4spn	a4,00000050
	c.add	a4,a5
	add	a2,s2,a5
	lbu	a4,a4,+00000000
	lbu	a2,a2,+00000000
	c.addi	a5,00000001
	c.xor	a4,a2
	sb	a4,a3,+00000000

l2304097C:
	bltu	a5,s3,000000002304095E

l23040980:
	c.mv	a5,s3

l23040982:
	bne	a5,s7,0000000023040A14

l23040986:
	c.addi4spn	a2,00000050
	c.addi4spn	a1,00000010
	c.mv	a0,s4
	jal	ra,000000002304B872
	bne	a0,zero,000000002304089E

l23040994:
	c.li	a5,00000000

l23040996:
	c.addi4spn	a4,00000040
	add	a3,a4,a5
	c.addi4spn	a2,00000050
	c.addi4spn	a4,00000020
	c.add	a4,a5
	c.add	a2,a5
	lbu	a4,a4,+00000000
	lbu	a2,a2,+00000000
	c.addi	a5,00000001
	c.xor	a4,a2
	sb	a4,a3,+00000000
	bne	a5,s7,0000000023040996

l230409B8:
	c.li	a2,0000000D
	c.mv	a1,s8
	addi	a0,sp,+00000011
	sb	s11,sp,+00000010
	jal	ra,00000000230A382C
	slli	a4,s1,00000010
	c.srli	a4,00000010
	slli	a5,s1,00000008
	c.srli	a4,00000008
	c.or	a5,a4
	c.addi4spn	a2,00000030
	c.addi4spn	a1,00000010
	c.mv	a0,s4
	sh	a5,sp,+0000001E
	jal	ra,000000002304B872
	bne	a0,zero,000000002304089E

l230409E8:
	c.li	a5,00000000

l230409EA:
	c.addi4spn	a2,00000030
	add	a4,s2,a5
	c.add	a2,a5
	lbu	a4,a4,+00000000
	lbu	a2,a2,+00000000
	add	a3,s6,a5
	c.addi	a5,00000001
	c.xor	a4,a2
	sb	a4,a3,+00000000
	bltu	a5,s3,00000000230409EA

l23040A0A:
	c.addi	s2,00000010
	c.addi	s6,00000010
	c.j	00000000230407EE

l23040A10:
	c.li	a5,00000000
	c.j	000000002304097C

l23040A14:
	c.addi4spn	a3,00000050
	c.add	a3,a5
	lbu	a3,a3,+00000000
	c.addi4spn	a4,00000010
	c.add	a4,a5
	sb	a3,a4,+00000000
	c.addi	a5,00000001
	c.j	0000000023040982

;; bt_mesh_ccm_decrypt: 23040A28
;;   Called from:
;;     2304116C (in bt_mesh_net_decrypt)
;;     23041290 (in bt_mesh_app_decrypt)
;;     230413CE (in bt_mesh_prov_decrypt)
bt_mesh_ccm_decrypt proc
	beq	a3,zero,0000000023040D30

l23040A2C:
	c.addi16sp	FFFFFF50
	c.swsp	s0,00000054
	c.swsp	s3,000000CC
	c.swsp	s7,000000C4
	c.mv	s0,a0
	c.mv	s3,a5
	c.mv	s7,a2
	c.li	a5,00000001
	c.li	a2,0000000D
	addi	a0,sp,+00000021
	c.swsp	s2,00000050
	c.swsp	s4,0000004C
	c.swsp	s5,000000C8
	c.swsp	s6,00000048
	c.swsp	s8,00000044
	c.swsp	ra,000000D4
	c.swsp	s1,000000D0
	c.swsp	s9,000000C0
	c.swsp	s10,00000040
	c.swsp	s11,000000BC
	c.mv	s6,a1
	c.mv	s8,a7
	c.mv	s2,a6
	c.mv	s5,a4
	c.mv	s4,a3
	sb	a5,sp,+00000020
	jal	ra,00000000230A382C
	c.addi4spn	a2,00000030
	c.addi4spn	a1,00000020
	c.mv	a0,s0
	sh	zero,sp,+0000002E
	jal	ra,000000002304B872
	bne	a0,zero,0000000023040B72

l23040A7A:
	c.li	a5,00000008
	bne	s8,a5,0000000023040AF0

l23040A80:
	addi	a5,zero,+00000059
	bne	s3,zero,0000000023040A8A

l23040A88:
	c.li	a5,00000019

l23040A8A:
	c.li	a2,0000000D
	c.mv	a1,s6
	addi	a0,sp,+00000021
	slli	s1,s4,00000010
	sb	a5,sp,+00000020
	c.srli	s1,00000010
	jal	ra,00000000230A382C
	slli	a5,s4,00000008
	srli	a4,s1,00000008
	c.or	a5,a4
	c.addi4spn	a2,00000050
	c.addi4spn	a1,00000020
	c.mv	a0,s0
	sh	a5,sp,+0000002E
	jal	ra,000000002304B872
	c.bnez	a0,0000000023040B72

l23040ABA:
	bne	s3,zero,0000000023040AFC

l23040ABE:
	addi	a5,s4,+0000000F
	c.andi	s1,0000000F
	c.srli	a5,00000004
	c.bnez	s1,0000000023040ACA

l23040AC8:
	c.li	s1,00000010

l23040ACA:
	c.slli	a5,10
	c.srli	a5,00000010
	c.mv	s9,s7
	c.li	s5,00000000
	c.swsp	a5,00000084
	c.li	s10,00000010

l23040AD6:
	c.lwsp	a2,000000E4
	bltu	s5,a5,0000000023040BC2

l23040ADC:
	c.mv	a2,s8
	add	a1,s7,s4
	c.addi4spn	a0,00000060
	jal	ra,00000000230A37A4
	c.beqz	a0,0000000023040B72

l23040AEA:
	addi	a0,zero,-0000004D
	c.j	0000000023040B72

l23040AF0:
	addi	a5,zero,+00000049
	bne	s3,zero,0000000023040A8A

l23040AF8:
	c.li	a5,00000009
	c.j	0000000023040A8A

l23040AFC:
	lbu	a5,sp,+00000050
	c.li	s9,00000000
	c.li	a3,00000002
	sb	a5,sp,+00000020
	lbu	a5,sp,+00000051
	xor	a5,s3,a5
	sb	a5,sp,+00000021
	addi	a5,s3,+00000002
	c.li	s3,00000010

l23040B1A:
	add	a4,s5,s9
	bltu	s3,a5,0000000023040B3A

l23040B22:
	bltu	a3,a5,0000000023040B90

l23040B26:
	c.li	a4,00000010

l23040B28:
	bne	a5,a4,0000000023040BAE

l23040B2C:
	c.addi4spn	a2,00000050
	c.addi4spn	a1,00000020
	c.mv	a0,s0
	jal	ra,000000002304B872
	c.beqz	a0,0000000023040ABE

l23040B38:
	c.j	0000000023040B72

l23040B3A:
	c.mv	a5,a3

l23040B3C:
	c.addi4spn	a2,00000020
	add	a1,a2,a5
	c.addi4spn	a2,00000050
	c.add	a2,a5
	lbu	a0,a4,+00000000
	lbu	a2,a2,+00000000
	c.addi	a5,00000001
	c.addi	a4,00000001
	c.xor	a2,a0
	sb	a2,a1,+00000000
	bne	a5,s3,0000000023040B3C

l23040B5C:
	sub	a3,s3,a3
	c.addi4spn	a2,00000050
	c.addi4spn	a1,00000020
	c.mv	a0,s0
	c.add	s9,a3
	jal	ra,000000002304B872
	c.li	a5,00000002
	c.li	a3,00000000
	c.beqz	a0,0000000023040B1A

l23040B72:
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
	c.lwsp	sp,0000004C
	c.lwsp	t4,0000017C
	c.addi16sp	000000B0
	c.jr	ra

l23040B90:
	c.addi4spn	a2,00000020
	add	a1,a2,a3
	c.addi4spn	a2,00000050
	c.add	a2,a3
	lbu	a0,a4,+00000000
	lbu	a2,a2,+00000000
	c.addi	a3,00000001
	c.addi	a4,00000001
	c.xor	a2,a0
	sb	a2,a1,+00000000
	c.j	0000000023040B22

l23040BAE:
	c.addi4spn	a2,00000050
	c.add	a2,a5
	lbu	a2,a2,+00000000
	c.addi4spn	a3,00000020
	c.add	a3,a5
	sb	a2,a3,+00000000
	c.addi	a5,00000001
	c.j	0000000023040B28

l23040BC2:
	c.lwsp	a2,000000E4
	c.addi	s5,00000001
	slli	s3,s5,00000010
	slli	s11,s5,00000008
	srli	s3,s3,00000010
	bne	a5,s5,0000000023040CA4

l23040BD6:
	c.li	a5,00000001
	c.li	a2,0000000D
	c.mv	a1,s6
	addi	a0,sp,+00000021
	sb	a5,sp,+00000020
	srli	s3,s3,00000008
	jal	ra,00000000230A382C
	or	s11,s11,s3
	c.addi4spn	a2,00000040
	c.addi4spn	a1,00000020
	c.mv	a0,s0
	sh	s11,sp,+0000002E
	jal	ra,000000002304B872
	c.bnez	a0,0000000023040B72

l23040C00:
	c.li	a5,00000000

l23040C02:
	c.mv	s3,s1
	bltu	a5,s1,0000000023040C70

l23040C08:
	c.mv	a2,s1
	c.addi4spn	a1,00000010
	c.mv	a0,s2
	jal	ra,00000000230A382C
	c.li	a5,00000000

l23040C14:
	c.addi4spn	a4,00000020
	add	a3,a4,a5
	c.addi4spn	a2,00000010
	c.addi4spn	a4,00000050
	c.add	a4,a5
	c.add	a2,a5
	lbu	a4,a4,+00000000
	lbu	a2,a2,+00000000
	c.addi	a5,00000001
	c.xor	a4,a2
	sb	a4,a3,+00000000
	bltu	a5,s1,0000000023040C14

l23040C36:
	bne	s3,s10,0000000023040C90

l23040C3A:
	c.addi4spn	a2,00000050
	c.addi4spn	a1,00000020
	c.mv	a0,s0
	jal	ra,000000002304B872
	c.bnez	a0,0000000023040B72

l23040C46:
	c.li	a5,00000000

l23040C48:
	c.addi4spn	a4,00000060
	add	a3,a4,a5
	c.addi4spn	a2,00000050
	c.addi4spn	a4,00000030
	c.add	a4,a5
	c.add	a2,a5
	lbu	a4,a4,+00000000
	lbu	a2,a2,+00000000
	c.addi	a5,00000001
	c.xor	a4,a2
	sb	a4,a3,+00000000
	bne	a5,s10,0000000023040C48

l23040C6A:
	c.addi	s2,00000010
	c.addi	s9,00000010
	c.j	0000000023040AD6

l23040C70:
	c.addi4spn	a4,00000010
	c.addi4spn	a2,00000040
	add	a3,a4,a5
	c.add	a2,a5
	add	a4,s9,a5
	lbu	a4,a4,+00000000
	lbu	a2,a2,+00000000
	c.addi	a5,00000001
	c.xor	a4,a2
	sb	a4,a3,+00000000
	c.j	0000000023040C02

l23040C90:
	c.addi4spn	a4,00000050
	c.add	a4,s3
	lbu	a4,a4,+00000000
	c.addi4spn	a5,00000020
	c.add	a5,s3
	sb	a4,a5,+00000000
	c.addi	s3,00000001
	c.j	0000000023040C36

l23040CA4:
	c.li	a5,00000001
	c.li	a2,0000000D
	c.mv	a1,s6
	addi	a0,sp,+00000021
	sb	a5,sp,+00000020
	srli	s3,s3,00000008
	jal	ra,00000000230A382C
	or	s11,s11,s3
	c.addi4spn	a2,00000040
	c.addi4spn	a1,00000020
	c.mv	a0,s0
	sh	s11,sp,+0000002E
	jal	ra,000000002304B872
	bne	a0,zero,0000000023040B72

l23040CD0:
	c.li	a5,00000000

l23040CD2:
	c.addi4spn	a4,00000010
	c.addi4spn	a2,00000040
	add	a3,a4,a5
	c.add	a2,a5
	add	a4,s9,a5
	lbu	a4,a4,+00000000
	lbu	a2,a2,+00000000
	c.addi	a5,00000001
	c.xor	a4,a2
	sb	a4,a3,+00000000
	bne	a5,s10,0000000023040CD2

l23040CF4:
	c.li	a2,00000010
	c.addi4spn	a1,00000010
	c.mv	a0,s2
	jal	ra,00000000230A382C
	c.li	a5,00000000

l23040D00:
	c.addi4spn	a4,00000020
	add	a3,a4,a5
	c.addi4spn	a2,00000010
	c.addi4spn	a4,00000050
	c.add	a4,a5
	c.add	a2,a5
	lbu	a4,a4,+00000000
	lbu	a2,a2,+00000000
	c.addi	a5,00000001
	c.xor	a4,a2
	sb	a4,a3,+00000000
	bne	a5,s10,0000000023040D00

l23040D22:
	c.addi4spn	a2,00000050
	c.addi4spn	a1,00000020
	c.mv	a0,s0
	jal	ra,000000002304B872
	c.beqz	a0,0000000023040C6A

l23040D2E:
	c.j	0000000023040B72

l23040D30:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; bt_mesh_aes_cmac: 23040D34
;;   Called from:
;;     2303D084 (in beacon_send)
;;     23040D9C (in bt_mesh_aes_cmac_one)
;;     23040E72 (in bt_mesh_k2)
;;     23040E9A (in bt_mesh_k2)
;;     23040EBA (in bt_mesh_k2)
;;     230413BA (in bt_mesh_prov_conf)
;;     23043B7A (in prov_random)
bt_mesh_aes_cmac proc
	c.addi16sp	FFFFFEE0
	sw	s0,sp,+00000118
	sw	s1,sp,+00000114
	c.mv	s0,a1
	c.mv	s1,a2
	c.mv	a1,a0
	c.addi4spn	a2,00000060
	c.addi4spn	a0,00000008
	sw	s2,sp,+00000110
	sw	ra,sp,+0000011C
	c.mv	s2,a3
	jal	ra,0000000023049A7E
	c.bnez	a0,0000000023040D6C

l23040D58:
	c.li	a5,FFFFFFFB
	c.j	0000000023040D7A

l23040D5C:
	c.lw	s0,4(a2)
	c.lw	s0,0(a1)
	c.addi4spn	a0,00000008
	jal	ra,0000000023049AE8
	c.beqz	a0,0000000023040D58

l23040D68:
	c.addi	s1,FFFFFFFF
	c.addi	s0,00000008

l23040D6C:
	c.bnez	s1,0000000023040D5C

l23040D6E:
	c.addi4spn	a1,00000008
	c.mv	a0,s2
	jal	ra,0000000023049BDA
	c.li	a5,00000000
	c.beqz	a0,0000000023040D58

l23040D7A:
	lw	ra,sp,+0000011C
	lw	s0,sp,+00000118
	lw	s1,sp,+00000114
	lw	s2,sp,+00000110
	c.mv	a0,a5
	c.addi16sp	00000120
	c.jr	ra

;; bt_mesh_aes_cmac_one: 23040D90
;;   Called from:
;;     23040DC4 (in bt_mesh_s1)
;;     23040DEA (in bt_mesh_k1)
;;     23040E08 (in bt_mesh_k1)
;;     23040E4A (in bt_mesh_k2)
;;     23040F1C (in bt_mesh_k3)
;;     23040F2C (in bt_mesh_k3)
;;     23040F7C (in bt_mesh_k4)
;;     23040F8A (in bt_mesh_k4)
;;     23041348 (in bt_mesh_virtual_addr)
;;     2304138A (in bt_mesh_prov_conf_salt)
;;     23041404 (in bt_mesh_beacon_auth)
bt_mesh_aes_cmac_one proc
	c.addi	sp,FFFFFFE0
	c.swsp	a1,00000004
	c.swsp	a2,00000084
	c.addi4spn	a1,00000008
	c.li	a2,00000001
	c.swsp	ra,0000008C
	jal	ra,0000000023040D34
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; bt_mesh_s1: 23040DA6
;;   Called from:
;;     23040E3C (in bt_mesh_k2)
;;     23040F0E (in bt_mesh_k3)
;;     23040F6E (in bt_mesh_k4)
;;     23040FB8 (in bt_mesh_id128)
;;     2304133A (in bt_mesh_virtual_addr)
bt_mesh_s1 proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	a1,00000084
	c.mv	s0,a0
	c.swsp	zero,00000008
	c.swsp	zero,00000088
	c.swsp	zero,0000000C
	c.swsp	zero,0000008C
	jal	ra,00000000230A4220
	c.lwsp	a2,000000A4
	c.mv	a2,a0
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	jal	ra,0000000023040D90
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	sltu	a0,zero,a0
	c.addi16sp	00000030
	c.jr	ra

;; bt_mesh_k1: 23040DD4
;;   Called from:
;;     23040FCE (in bt_mesh_id128)
;;     230413A4 (in bt_mesh_prov_conf_key)
;;     23043BDA (in prov_data)
;;     23043C02 (in prov_data)
;;     23043C4A (in prov_data)
bt_mesh_k1 proc
	c.addi	sp,FFFFFFF0
	c.mv	a5,a2
	c.swsp	s0,00000004
	c.mv	a2,a1
	c.mv	s0,a3
	c.mv	a1,a0
	c.mv	a3,a4
	c.mv	a0,a5
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a4
	jal	ra,0000000023040D90
	blt	a0,zero,0000000023040E0C

l23040DF2:
	c.mv	a0,s0
	jal	ra,00000000230A4220
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a3,s1
	c.mv	a2,a0
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023040D90

l23040E0C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_k2: 23040E16
;;   Called from:
;;     230420BA (in bt_mesh_net_keys_create)
;;     230421D0 (in friend_cred_set)
bt_mesh_k2 proc
	c.addi16sp	FFFFFF90
	c.swsp	s0,00000034
	c.mv	s0,a0
	lui	a0,000230B9
	c.swsp	s5,000000A8
	addi	a0,a0,-000007BC
	c.mv	s5,a1
	c.addi4spn	a1,00000008
	c.swsp	s1,000000B0
	c.swsp	s2,00000030
	c.swsp	s3,000000AC
	c.swsp	s4,0000002C
	c.swsp	ra,000000B4
	c.mv	s1,a2
	c.mv	s4,a3
	c.mv	s3,a4
	c.mv	s2,a5
	jal	ra,0000000023040DA6
	c.bnez	a0,0000000023040EE0

l23040E42:
	c.mv	a1,s0
	c.addi4spn	a3,00000028
	c.li	a2,00000010
	c.addi4spn	a0,00000008
	jal	ra,0000000023040D90
	c.mv	s0,a0
	c.bnez	a0,0000000023040ECC

l23040E52:
	c.swsp	s1,000000A0
	c.addi4spn	s1,00000018
	c.li	a5,00000001
	addi	a4,sp,+00000007
	c.mv	a3,s1
	c.li	a2,00000003
	c.addi4spn	a1,00000038
	c.addi4spn	a0,00000028
	sb	a5,sp,+00000007
	c.swsp	zero,0000001C
	c.swsp	zero,0000009C
	c.swsp	s5,00000020
	c.swsp	a4,00000024
	c.swsp	a5,000000A4
	jal	ra,0000000023040D34
	c.mv	s0,a0
	c.bnez	a0,0000000023040ECC

l23040E7A:
	lbu	a5,sp,+00000027
	c.mv	a3,s1
	c.li	a2,00000003
	andi	a5,a5,+0000007F
	sb	a5,s4,+00000000
	c.li	a5,00000010
	c.swsp	a5,0000009C
	c.addi4spn	a1,00000038
	c.li	a5,00000002
	c.addi4spn	a0,00000028
	c.swsp	s1,0000001C
	sb	a5,sp,+00000007
	jal	ra,0000000023040D34
	c.mv	s0,a0
	c.bnez	a0,0000000023040ECC

l23040EA2:
	c.li	a2,00000010
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,00000000230A382C
	c.li	a5,00000003
	c.mv	a3,s1
	c.li	a2,00000003
	c.addi4spn	a1,00000038
	c.addi4spn	a0,00000028
	sb	a5,sp,+00000007
	jal	ra,0000000023040D34
	c.mv	s0,a0
	c.bnez	a0,0000000023040ECC

l23040EC2:
	c.li	a2,00000010
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,00000000230A382C

l23040ECC:
	c.mv	a0,s0
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.lwsp	t0,00000134
	c.lwsp	ra,00000158
	c.lwsp	t4,00000068
	c.lwsp	s9,00000088
	c.lwsp	s5,000000A8
	c.addi16sp	00000070
	c.jr	ra

l23040EE0:
	c.li	s0,00000001
	c.j	0000000023040ECC

;; bt_mesh_k3: 23040EE4
;;   Called from:
;;     230420F4 (in bt_mesh_net_keys_create)
bt_mesh_k3 proc
	lui	a5,0004200F
	addi	a5,a5,-00000188
	c.addi16sp	FFFFFFC0
	c.lw	a5,0(a4)
	lbu	a5,a5,+00000004
	c.swsp	s0,0000001C
	c.mv	s0,a0
	lui	a0,000230B9
	c.swsp	s1,00000098
	addi	a0,a0,-000007B4
	c.mv	s1,a1
	c.addi4spn	a1,00000010
	c.swsp	ra,0000009C
	c.swsp	a4,00000004
	sb	a5,sp,+0000000C
	jal	ra,0000000023040DA6
	c.bnez	a0,0000000023040F4A

l23040F14:
	c.mv	a1,s0
	c.addi4spn	a3,00000020
	c.li	a2,00000010
	c.addi4spn	a0,00000010
	jal	ra,0000000023040D90
	c.mv	s0,a0
	c.bnez	a0,0000000023040F3E

l23040F24:
	c.addi4spn	a3,00000010
	c.li	a2,00000005
	c.addi4spn	a1,00000008
	c.addi4spn	a0,00000020
	jal	ra,0000000023040D90
	c.mv	s0,a0
	c.bnez	a0,0000000023040F3E

l23040F34:
	c.li	a2,00000008
	c.addi4spn	a1,00000018
	c.mv	a0,s1
	jal	ra,00000000230A382C

l23040F3E:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.addi16sp	00000040
	c.jr	ra

l23040F4A:
	c.li	s0,00000001
	c.j	0000000023040F3E

;; bt_mesh_k4: 23040F4E
;;   Called from:
;;     2303F452 (in app_key_set)
bt_mesh_k4 proc
	lui	a5,0004200F
	c.addi16sp	FFFFFFC0
	lw	a5,a5,-00000180
	c.swsp	s1,00000098
	c.mv	s1,a0
	lui	a0,000230B9
	c.swsp	s0,0000001C
	addi	a0,a0,-000007AC
	c.mv	s0,a1
	c.addi4spn	a1,00000010
	c.swsp	ra,0000009C
	c.swsp	a5,00000084
	jal	ra,0000000023040DA6
	c.bnez	a0,0000000023040FA6

l23040F74:
	c.addi4spn	a3,00000020
	c.li	a2,00000010
	c.mv	a1,s1
	c.addi4spn	a0,00000010
	jal	ra,0000000023040D90
	c.bnez	a0,0000000023040F9C

l23040F82:
	c.addi4spn	a3,00000010
	c.li	a2,00000004
	c.addi4spn	a1,0000000C
	c.addi4spn	a0,00000020
	jal	ra,0000000023040D90
	c.bnez	a0,0000000023040F9C

l23040F90:
	lbu	a5,sp,+0000001F
	andi	a5,a5,+0000003F
	sb	a5,s0,+00000000

l23040F9C:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.addi16sp	00000040
	c.jr	ra

l23040FA6:
	c.li	a0,00000001
	c.j	0000000023040F9C

;; bt_mesh_id128: 23040FAA
;;   Called from:
;;     23042114 (in bt_mesh_net_keys_create)
;;     23042134 (in bt_mesh_net_keys_create)
bt_mesh_id128 proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.mv	s0,a0
	c.mv	a0,a1
	c.addi4spn	a1,00000010
	c.swsp	ra,00000094
	c.swsp	a2,00000084
	jal	ra,0000000023040DA6
	c.bnez	a0,0000000023040FDA

l23040FBE:
	c.lwsp	a2,000000C4
	lui	a3,000230B9
	addi	a3,a3,-000007C4
	c.addi4spn	a2,00000010
	c.li	a1,00000010
	c.mv	a0,s0
	jal	ra,0000000023040DD4

l23040FD2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

l23040FDA:
	c.li	a0,00000001
	c.j	0000000023040FD2

;; bt_mesh_net_obfuscate: 23040FDE
;;   Called from:
;;     23041F2E (in net_decrypt.isra.1)
;;     23042936 (in bt_mesh_net_resend)
;;     230429F8 (in bt_mesh_net_resend)
;;     23042BA8 (in bt_mesh_net_encode)
;;     230432A8 (in bt_mesh_net_recv)
;;     23047660 (in create_friend_pdu)
bt_mesh_net_obfuscate proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.mv	s0,a0
	c.mv	a0,a1
	addi	a1,sp,+00000005
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	zero,00000000
	c.mv	s2,a2
	c.swsp	zero,00000080
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	addi	s1,s0,+00000007
	jal	ra,0000000023040720
	c.li	a2,00000007
	c.mv	a1,s1
	addi	a0,sp,+00000009
	jal	ra,00000000230A382C
	c.addi4spn	a2,00000010
	c.mv	a1,sp
	c.mv	a0,s2
	jal	ra,000000002304B872
	c.bnez	a0,0000000023041036

l2304101A:
	addi	a5,s0,+00000001
	c.addi4spn	a4,00000010

l23041020:
	lbu	a3,a5,+00000000
	lbu	a2,a4,+00000000
	c.addi	a5,00000001
	c.addi	a4,00000001
	c.xor	a3,a2
	sb	a3,a5,+00000FFF
	bne	s1,a5,0000000023041020

l23041036:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

;; bt_mesh_net_encrypt: 23041042
;;   Called from:
;;     230429D2 (in bt_mesh_net_resend)
;;     23042B7A (in bt_mesh_net_encode)
;;     2304327C (in bt_mesh_net_recv)
;;     2304760A (in create_friend_pdu)
bt_mesh_net_encrypt proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.lw	a1,0(a5)
	c.mv	s2,a0
	c.mv	s0,a1
	lbu	a7,a5,+00000001
	c.mv	a0,a2
	c.li	s1,00000004
	slli	a4,a7,00000018
	c.srai	a4,00000018
	bge	a4,zero,0000000023041066

l23041064:
	c.li	s1,00000008

l23041066:
	lbu	a6,a5,+00000002
	lbu	a1,a5,+00000003
	lbu	a2,a5,+00000004
	lbu	a4,a5,+00000005
	lbu	a5,a5,+00000006
	c.beqz	a3,00000000230410DC

l2304107C:
	c.li	a3,00000003
	sh	a3,sp,+00000000

l23041082:
	sb	a1,sp,+00000003
	addi	a1,sp,+00000009
	sb	a6,sp,+00000002
	sb	a2,sp,+00000004
	sb	a4,sp,+00000005
	sb	a5,sp,+00000006
	sb	zero,sp,+00000007
	sb	zero,sp,+00000008
	jal	ra,0000000023040720
	lw	a6,s0,+00000000
	lhu	a3,s0,+00000004
	c.mv	a0,s2
	c.addi	a6,00000007
	c.mv	a7,s1
	c.li	a5,00000000
	c.li	a4,00000000
	c.addi	a3,FFFFFFF9
	c.mv	a2,a6
	c.mv	a1,sp
	jal	ra,0000000023040742
	c.mv	s2,a0
	c.bnez	a0,00000000230410CE

l230410C6:
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230492DE

l230410CE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l230410DC:
	sb	zero,sp,+00000000
	sb	a7,sp,+00000001
	c.j	0000000023041082

;; bt_mesh_net_decrypt: 230410E6
;;   Called from:
;;     23042032 (in net_decrypt.isra.1)
;;     23042984 (in bt_mesh_net_resend)
bt_mesh_net_decrypt proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	c.lw	a1,0(a5)
	c.mv	s2,a0
	c.mv	s0,a1
	lbu	a7,a5,+00000001
	c.mv	a0,a2
	c.li	s1,00000004
	slli	a4,a7,00000018
	c.srai	a4,00000018
	bge	a4,zero,000000002304110A

l23041108:
	c.li	s1,00000008

l2304110A:
	lbu	a6,a5,+00000002
	lbu	a1,a5,+00000003
	lbu	a2,a5,+00000004
	lbu	a4,a5,+00000005
	lbu	a5,a5,+00000006
	c.beqz	a3,000000002304117C

l23041120:
	c.li	a3,00000003
	sh	a3,sp,+00000000

l23041126:
	sb	a1,sp,+00000003
	addi	a1,sp,+00000009
	sb	a6,sp,+00000002
	sb	a2,sp,+00000004
	sb	a4,sp,+00000005
	sb	a5,sp,+00000006
	sb	zero,sp,+00000007
	sb	zero,sp,+00000008
	jal	ra,0000000023040720
	lhu	a3,s0,+00000004
	lw	a6,s0,+00000000
	c.mv	a7,s1
	c.sub	a3,s1
	c.slli	a3,10
	c.srli	a3,00000010
	c.addi	a6,00000007
	sh	a3,s0,+00000004
	c.mv	a1,sp
	c.mv	a0,s2
	c.li	a5,00000000
	c.li	a4,00000000
	c.addi	a3,FFFFFFF9
	c.mv	a2,a6
	jal	ra,0000000023040A28
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2304117C:
	sb	zero,sp,+00000000
	sb	a7,sp,+00000001
	c.j	0000000023041126

;; bt_mesh_app_encrypt: 23041186
;;   Called from:
;;     230464F8 (in bt_mesh_trans_send)
bt_mesh_app_encrypt proc
	c.addi16sp	FFFFFFD0
	sltu	a1,zero,a1
	c.swsp	s2,00000010
	c.addi	a1,00000001
	c.mv	s2,a0
	slli	a0,a2,0000001F
	or	a0,a0,a7
	sb	a1,sp,+00000010
	addi	a1,sp,+00000011
	c.swsp	a4,00000084
	c.swsp	a2,00000000
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a3
	c.swsp	a5,00000004
	c.swsp	a6,00000080
	jal	ra,0000000023040720
	c.lwsp	s0,000000E4
	c.lwsp	tp,00000008
	c.lwsp	a6,00000154
	srli	a3,a5,00000008
	sb	a5,sp,+00000016
	addi	a1,sp,+00000019
	srli	a5,a6,00000008
	sb	a3,sp,+00000015
	sb	a5,sp,+00000017
	sb	a6,sp,+00000018
	jal	ra,0000000023040720
	c.lwsp	a2,000000C4
	c.lwsp	zero,00000084
	lw	a6,s0,+00000000
	sltu	a5,zero,a4
	lhu	a3,s0,+00000004
	c.slli	a5,04
	c.li	s1,00000004
	c.beqz	a2,00000000230411F4

l230411F2:
	c.li	s1,00000008

l230411F4:
	c.mv	a0,s2
	c.mv	a7,s1
	c.mv	a2,a6
	c.addi4spn	a1,00000010
	jal	ra,0000000023040742
	c.mv	s2,a0
	c.bnez	a0,000000002304120C

l23041204:
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230492DE

l2304120C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s2
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

;; bt_mesh_app_decrypt: 2304121A
;;   Called from:
;;     23045CCE (in sdu_recv)
;;     23045D4A (in sdu_recv)
bt_mesh_app_decrypt proc
	c.addi16sp	FFFFFFC0
	c.swsp	a5,00000084
	c.lwsp	ra,000000E4
	sltu	a1,zero,a1
	c.swsp	s3,00000094
	c.addi	a1,00000001
	c.mv	s3,a0
	slli	a0,a2,0000001F
	c.or	a0,a5
	sb	a1,sp,+00000010
	addi	a1,sp,+00000011
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.mv	s0,a3
	c.mv	s1,a2
	c.swsp	s2,00000018
	c.swsp	a6,00000004
	c.mv	s2,a4
	c.swsp	a7,00000080
	jal	ra,0000000023040720
	c.lwsp	s0,00000008
	c.lwsp	tp,00000028
	c.lwsp	t0,00000044
	srli	a5,a6,00000008
	sb	a5,sp,+00000015
	addi	a1,sp,+00000019
	srli	a5,a7,00000008
	sb	a6,sp,+00000016
	sb	a5,sp,+00000017
	sb	a7,sp,+00000018
	jal	ra,0000000023040720
	c.lwsp	a2,000000C4
	c.lw	s0,0(a2)
	lhu	a3,s0,+00000004
	sltu	a5,zero,a4
	c.slli	a5,04
	lw	a6,s2,+00000000
	c.li	a7,00000004
	c.beqz	s1,000000002304128C

l2304128A:
	c.li	a7,00000008

l2304128C:
	c.addi4spn	a1,00000010
	c.mv	a0,s3
	jal	ra,0000000023040A28
	c.mv	s1,a0
	c.bnez	a0,00000000230412A2

l23041298:
	lhu	a1,s0,+00000004
	c.mv	a0,s2
	jal	ra,00000000230492DE

l230412A2:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.mv	a0,s1
	c.lwsp	a6,00000158
	c.lwsp	s4,00000134
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

;; bt_mesh_fcs_calc: 230412B2
;;   Called from:
;;     230435F0 (in prov_send)
bt_mesh_fcs_calc proc
	lui	a4,000230B9
	c.add	a1,a0
	addi	a5,zero,+000000FF
	addi	a4,a4,-00000794

l230412C0:
	bne	a0,a1,00000000230412CE

l230412C4:
	xori	a0,a5,-00000001
	andi	a0,a0,+000000FF
	c.jr	ra

l230412CE:
	c.addi	a0,00000001
	lbu	a3,a0,-00000001
	c.xor	a5,a3
	c.add	a5,a4
	lbu	a5,a5,+00000000
	c.j	00000000230412C0

;; bt_mesh_fcs_check: 230412DE
;;   Called from:
;;     23044166 (in prov_msg_recv)
bt_mesh_fcs_check proc
	lhu	a4,a0,+00000004
	c.lw	a0,0(a2)
	addi	a5,zero,+000000FF
	c.add	a4,a2
	slli	a3,a4,00000010
	lui	a4,000230B9
	c.srli	a3,00000010
	addi	a4,a4,-00000794

l230412F8:
	slli	a0,a2,00000010
	c.srli	a0,00000010
	bne	a0,a3,0000000023041314

l23041302:
	c.xor	a5,a1
	c.add	a5,a4
	lbu	a0,a5,+00000000
	addi	a0,a0,-000000CF
	sltiu	a0,a0,+00000001
	c.jr	ra

l23041314:
	c.addi	a2,00000001
	lbu	a0,a2,-00000001
	c.xor	a5,a0
	c.add	a5,a4
	lbu	a5,a5,+00000000
	c.j	00000000230412F8

;; bt_mesh_virtual_addr: 23041324
;;   Called from:
;;     2303F036 (in va_add)
;;     2303F15A (in mod_pub_va_set)
bt_mesh_virtual_addr proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.mv	s1,a0
	lui	a0,000230B9
	c.swsp	s0,00000014
	addi	a0,a0,-0000079C
	c.mv	s0,a1
	c.mv	a1,sp
	c.swsp	ra,00000094
	jal	ra,0000000023040DA6
	c.bnez	a0,0000000023041370

l23041340:
	c.addi4spn	a3,00000010
	c.li	a2,00000010
	c.mv	a1,s1
	c.mv	a0,sp
	jal	ra,0000000023040D90
	c.bnez	a0,0000000023041366

l2304134E:
	lbu	a5,sp,+0000001E
	lbu	a4,sp,+0000001F
	c.slli	a5,08
	c.or	a5,a4
	c.slli	a5,12
	c.srli	a5,00000012
	c.lui	a4,FFFF8000
	c.or	a5,a4
	sh	a5,s0,+00000000

l23041366:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l23041370:
	c.li	a0,00000001
	c.j	0000000023041366

;; bt_mesh_prov_conf_salt: 23041374
;;   Called from:
;;     230438A0 (in prov_confirm)
bt_mesh_prov_conf_salt proc
	c.addi	sp,FFFFFFE0
	c.mv	a3,a1
	addi	a2,zero,+00000091
	c.mv	a1,a0
	c.mv	a0,sp
	c.swsp	ra,0000008C
	c.swsp	zero,00000000
	c.swsp	zero,00000080
	c.swsp	zero,00000004
	c.swsp	zero,00000084
	jal	ra,0000000023040D90
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; bt_mesh_prov_conf_key: 23041394
;;   Called from:
;;     230438D0 (in prov_confirm)
bt_mesh_prov_conf_key proc
	lui	a3,000230B9
	c.mv	a4,a2
	addi	a3,a3,-000007A4
	c.mv	a2,a1
	addi	a1,zero,+00000020
	jal	zero,0000000023040DD4

;; bt_mesh_prov_conf: 230413A8
;;   Called from:
;;     23043912 (in prov_confirm)
;;     23043AE8 (in prov_random)
bt_mesh_prov_conf proc
	c.addi	sp,FFFFFFE0
	c.swsp	a1,00000000
	c.li	a5,00000010
	c.swsp	a2,00000004
	c.mv	a1,sp
	c.li	a2,00000002
	c.swsp	ra,0000008C
	c.swsp	a5,00000080
	c.swsp	a5,00000084
	jal	ra,0000000023040D34
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; bt_mesh_prov_decrypt: 230413C4
;;   Called from:
;;     23043C1E (in prov_data)
bt_mesh_prov_decrypt proc
	c.mv	a6,a3
	c.li	a7,00000008
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a3,00000019
	jal	zero,0000000023040A28

;; bt_mesh_beacon_auth: 230413D2
;;   Called from:
;;     23041E80 (in auth_match)
;;     230424D4 (in bt_mesh_net_beacon_update)
bt_mesh_beacon_auth proc
	c.addi16sp	FFFFFFC0
	c.mv	a5,a2
	c.swsp	s0,0000001C
	c.li	a2,00000008
	c.mv	s0,a0
	sb	a1,sp,+00000010
	addi	a0,sp,+00000011
	c.mv	a1,a5
	c.swsp	a4,00000004
	c.swsp	ra,0000009C
	c.swsp	a3,00000084
	jal	ra,00000000230A382C
	c.lwsp	a2,000000A4
	addi	a1,sp,+00000019
	c.mv	a0,a3
	jal	ra,0000000023040720
	c.mv	a0,s0
	c.addi4spn	a3,00000020
	c.li	a2,0000000D
	c.addi4spn	a1,00000010
	jal	ra,0000000023040D90
	c.mv	s0,a0
	c.lwsp	s0,000000C4
	c.bnez	a0,0000000023041418

l2304140E:
	c.li	a2,00000008
	c.addi4spn	a1,00000020
	c.mv	a0,a4
	jal	ra,00000000230A382C

l23041418:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.addi16sp	00000040
	c.jr	ra

;; health_period_status: 23041422
health_period_status proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	addi	s0,s0,+00000430
	c.lw	s0,0(a4)
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a4,20(a3)
	c.lui	a5,00008000
	addi	a5,a5,+00000037
	beq	a3,a5,0000000023041454

l23041440:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,000230B9
	addi	a0,a0,-00000554
	c.addi	sp,00000010
	jal	zero,0000000023082388

l23041454:
	c.lw	a4,24(a5)
	c.mv	a0,a2
	c.lw	a5,0(s1)
	jal	ra,0000000023049414
	sb	a0,s1,+00000000
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	a0,00000008
	c.addi	sp,00000010
	jal	zero,0000000023048B7E

;; health_current_status: 23041472
health_current_status proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.lw	a0,24(s1)
	c.mv	a0,a2
	c.mv	s0,a2
	c.swsp	a1,00000084
	jal	ra,0000000023049414
	c.swsp	a0,00000004
	c.mv	a0,s0
	jal	ra,0000000023049430
	lw	t1,s1,+00000004
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	bne	t1,zero,00000000230414AE

l2304149A:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	lui	a0,000230B9
	addi	a0,a0,-00000628
	c.addi16sp	00000020
	jal	zero,0000000023082388

l230414AE:
	lhu	a5,s0,+00000004
	c.lw	s0,0(a4)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.mv	a3,a0
	lhu	a1,a1,+00000004
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	t1

;; health_fault_status: 230414C6
health_fault_status proc
	lui	a4,0004200F
	lw	a5,a4,+00000430
	c.li	a3,00000005
	c.lw	a5,20(a1)
	beq	a1,a3,00000000230414E2

l230414D6:
	lui	a0,000230B9
	addi	a0,a0,-00000600

l230414DE:
	jal	zero,0000000023082388

l230414E2:
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a5,24(s0)
	c.mv	a0,a2
	addi	s3,a4,+00000430
	c.mv	s1,a2
	jal	ra,0000000023049414
	c.lw	s0,4(a5)
	c.mv	s2,a0
	c.beqz	a5,0000000023041520

l23041502:
	lbu	a5,a5,+00000000
	beq	a5,a0,0000000023041520

l2304150A:
	lui	a0,000230B9
	addi	a0,a0,-000005D4

l23041512:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.j	00000000230414DE

l23041520:
	c.mv	a0,s1
	jal	ra,0000000023049430
	lhu	a5,s0,+00000000
	beq	a5,a0,0000000023041538

l2304152E:
	lui	a0,000230B9
	addi	a0,a0,-000005AC
	c.j	0000000023041512

l23041538:
	c.lw	s0,8(a5)
	c.beqz	a5,0000000023041540

l2304153C:
	sb	s2,a5,+00000000

l23041540:
	c.lw	s0,16(a5)
	lhu	a4,s1,+00000004
	c.lw	a5,0(a3)
	bgeu	a3,a4,000000002304157A

l2304154C:
	lui	a0,000230B9
	addi	a0,a0,-00000580
	jal	ra,0000000023082388

l23041558:
	c.lw	s0,16(a5)
	c.lw	s1,0(a1)
	c.lw	s0,12(a0)
	c.lw	a5,0(a2)
	jal	ra,00000000230A382C
	lw	a0,s3,+00000000
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi	a0,00000008
	c.addi16sp	00000020
	jal	zero,0000000023048B7E

l2304157A:
	c.sw	a5,0(a4)
	c.j	0000000023041558

;; health_attention_status: 2304157E
health_attention_status proc
	lui	a5,0004200F
	lw	a3,a5,+00000430
	c.lui	a4,00008000
	c.addi	a4,00000007
	c.lw	a3,20(a1)
	beq	a1,a4,000000002304159C

l23041590:
	lui	a0,000230B9
	addi	a0,a0,-00000658
	jal	zero,0000000023082388

l2304159C:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	addi	s0,a5,+00000430
	c.lw	a3,24(a5)
	c.lw	a5,0(s1)
	c.beqz	s1,00000000230415B8

l230415AE:
	c.mv	a0,a2
	jal	ra,0000000023049414
	sb	a0,s1,+00000000

l230415B8:
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	a0,00000008
	c.addi	sp,00000010
	jal	zero,0000000023048B7E

;; attention_off: 230415C8
attention_off proc
	lw	a5,a0,-00000004
	c.beqz	a5,00000000230415DC

l230415CE:
	lw	t1,a5,+00000014
	beq	t1,zero,00000000230415DC

l230415D6:
	lw	a0,a0,-00000008
	c.jr	t1

l230415DC:
	c.jr	ra

;; send_attention_status: 230415DE
;;   Called from:
;;     23041648 (in attention_get)
;;     23041B92 (in attention_set)
send_attention_status proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.mv	s1,a0
	c.lw	a0,24(a0)
	c.addi4spn	a5,0000000C
	c.swsp	a5,00000088
	lui	a5,00000070
	c.swsp	a5,0000000C
	c.addi	a0,00000008
	c.addi4spn	a5,0000000C
	c.mv	s2,a1
	c.swsp	a5,0000008C
	jal	ra,00000000230497AA
	c.lui	a1,00008000
	c.mv	s0,a0
	c.addi	a1,00000007
	c.addi4spn	a0,00000014
	jal	ra,000000002303C6A0
	addi	a1,zero,+000003E8
	xor	a1,s0,a1
	c.addi4spn	a0,00000014
	andi	a1,a1,+000000FF
	jal	ra,0000000023049306
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,000000002303C700
	c.beqz	a0,000000002304163C

l23041630:
	lui	a0,000230B9
	addi	a0,a0,-0000036C
	jal	ra,0000000023082388

l2304163C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

;; attention_get: 23041648
attention_get proc
	jal	zero,00000000230415DE

;; health_period_set_unrel: 2304164C
;;   Called from:
;;     230416F4 (in health_period_set)
health_period_set_unrel proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.mv	a0,a2
	c.swsp	ra,00000084
	jal	ra,0000000023049414
	c.li	a5,0000000F
	c.mv	a1,a0
	bgeu	a5,a0,0000000023041674

l23041662:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,000230B9
	addi	a0,a0,-0000038C
	c.addi	sp,00000010
	jal	zero,0000000023082388

l23041674:
	c.lw	s0,8(a5)
	andi	a1,a0,+0000000F
	lbu	a0,a5,+0000000B
	c.andi	a0,FFFFFFF0
	c.or	a0,a1
	sb	a0,a5,+0000000B
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; send_health_period_status: 2304168E
;;   Called from:
;;     23041704 (in health_period_set)
;;     23041708 (in health_period_get)
send_health_period_status proc
	c.addi16sp	FFFFFFD0
	c.addi4spn	a5,0000000C
	c.swsp	s1,00000090
	c.swsp	a5,00000088
	c.mv	s1,a1
	lui	a5,00000070
	c.lui	a1,00008000
	c.swsp	s0,00000014
	c.swsp	a5,0000000C
	c.mv	s0,a0
	c.addi4spn	a5,0000000C
	addi	a1,a1,+00000037
	c.addi4spn	a0,00000014
	c.swsp	ra,00000094
	c.swsp	a5,0000008C
	jal	ra,000000002303C6A0
	c.lw	s0,8(a5)
	c.addi4spn	a0,00000014
	lbu	a1,a5,+0000000B
	c.andi	a1,0000000F
	jal	ra,0000000023049306
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,00000014
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002303C700
	c.beqz	a0,00000000230416DE

l230416D2:
	lui	a0,000230B9
	addi	a0,a0,-00000348
	jal	ra,0000000023082388

l230416DE:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; health_period_set: 230416E8
health_period_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	jal	ra,000000002304164C
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002304168E

;; health_period_get: 23041708
health_period_get proc
	jal	zero,000000002304168E

;; health_fault_test_unrel: 2304170C
health_fault_test_unrel proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.lw	a0,24(s1)
	c.mv	s0,a0
	c.mv	a0,a2
	c.swsp	a2,00000084
	jal	ra,0000000023049414
	c.lwsp	a2,00000084
	c.swsp	a0,00000004
	c.mv	a0,a2
	jal	ra,0000000023049430
	c.lw	s1,4(a5)
	c.beqz	a5,0000000023041746

l2304172E:
	lw	t1,a5,+0000000C
	beq	t1,zero,0000000023041746

l23041736:
	c.mv	a2,a0
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	s0,00000064
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	t1

l23041746:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; health_fault_clear_unrel: 23041750
health_fault_clear_unrel proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a0,24(s1)
	c.mv	s0,a0
	c.mv	a0,a2
	jal	ra,0000000023049430
	c.lw	s1,4(a5)
	c.beqz	a5,000000002304177C

l23041766:
	lw	t1,a5,+00000008
	beq	t1,zero,000000002304177C

l2304176E:
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	t1

l2304177C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; health_get_registered: 23041786
;;   Called from:
;;     23041892 (in health_fault_test)
;;     230418F4 (in health_fault_clear)
;;     23041948 (in health_fault_get)
health_get_registered proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	lw	s4,a0,+00000018
	c.mv	s3,a1
	c.mv	s2,a0
	c.li	a1,00000005
	c.mv	a0,a2
	c.mv	s0,a2
	jal	ra,000000002303C6A0
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,00000000230492DE
	c.mv	s1,a0
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,000000002304931C
	lw	a5,s4,+00000004
	c.beqz	a5,0000000023041818

l230417BE:
	c.lw	a5,4(a5)
	c.beqz	a5,0000000023041818

l230417C2:
	c.mv	a0,s0
	jal	ra,00000000230494E0
	lw	a5,s4,+00000004
	c.lw	s0,0(a2)
	lhu	a3,s0,+00000004
	c.lw	a5,4(a5)
	c.addi	a0,FFFFFFFC
	sb	a0,sp,+0000000F
	c.add	a3,a2
	c.mv	a1,s3
	addi	a4,sp,+0000000F
	c.mv	a2,s1
	c.mv	a0,s2
	c.jalr	a5
	c.mv	a1,a0
	c.beqz	a0,00000000230417FE

l230417EC:
	lui	a0,000230B9
	addi	a0,a0,-000003D0
	jal	ra,0000000023082388

l230417F8:
	sb	zero,s1,+00000000
	c.j	0000000023041808

l230417FE:
	lbu	a1,sp,+0000000F
	c.mv	a0,s0
	jal	ra,00000000230492DE

l23041808:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23041818:
	lui	a0,000230B9
	addi	a0,a0,-000003B0
	jal	ra,0000000023082388
	c.j	00000000230417F8

;; health_fault_test: 23041826
health_fault_test proc
	c.addi16sp	FFFFFF70
	c.addi4spn	a5,00000028
	c.swsp	ra,000000C4
	c.swsp	s0,00000044
	c.swsp	s1,000000C0
	c.swsp	s2,00000040
	c.swsp	s3,000000BC
	c.swsp	a5,0000008C
	lui	a5,00000480
	lw	s3,a0,+00000018
	c.swsp	a5,00000010
	c.mv	s0,a0
	c.addi4spn	a5,00000028
	c.mv	a0,a2
	c.swsp	a5,00000090
	c.mv	s2,a1
	c.swsp	a2,00000084
	jal	ra,0000000023049414
	c.lwsp	a2,00000084
	c.swsp	a0,00000004
	c.mv	a0,a2
	jal	ra,0000000023049430
	lw	a5,s3,+00000004
	c.mv	s1,a0
	c.beqz	a5,000000002304188C

l23041862:
	c.lw	a5,12(a5)
	c.beqz	a5,000000002304188C

l23041866:
	c.lwsp	s0,00000064
	c.mv	a2,a0
	c.mv	a0,s0
	c.jalr	a5
	c.mv	a1,a0
	c.beqz	a0,000000002304188C

l23041872:
	lui	a0,000230B9
	addi	a0,a0,-00000428
	jal	ra,0000000023082388

l2304187E:
	c.lwsp	a4,00000020
	c.lwsp	a0,00000004
	c.lwsp	t1,00000024
	c.lwsp	sp,00000048
	c.lwsp	t4,00000178
	c.addi16sp	00000090
	c.jr	ra

l2304188C:
	c.addi4spn	a2,0000001C
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023041786
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,0000001C
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002303C700
	c.beqz	a0,000000002304187E

l230418A6:
	lui	a0,000230B9
	addi	a0,a0,-00000400
	jal	ra,0000000023082388
	c.j	000000002304187E

;; health_fault_clear: 230418B4
health_fault_clear proc
	c.addi16sp	FFFFFF80
	c.swsp	s0,0000003C
	c.swsp	s1,000000B8
	c.swsp	s2,00000038
	c.swsp	ra,000000BC
	c.swsp	s3,000000B4
	c.addi4spn	a5,00000018
	lw	s3,a0,+00000018
	c.swsp	a5,00000084
	lui	a5,00000480
	c.swsp	a5,00000008
	c.mv	s0,a0
	c.addi4spn	a5,00000018
	c.mv	a0,a2
	c.swsp	a5,00000088
	c.mv	s2,a1
	jal	ra,0000000023049430
	lw	a5,s3,+00000004
	c.mv	s1,a0
	c.beqz	a5,00000000230418EE

l230418E4:
	c.lw	a5,8(a5)
	c.beqz	a5,00000000230418EE

l230418E8:
	c.mv	a1,a0
	c.mv	a0,s0
	c.jalr	a5

l230418EE:
	c.addi4spn	a2,0000000C
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023041786
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,0000000C
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002303C700
	c.beqz	a0,0000000023041914

l23041908:
	lui	a0,000230B9
	addi	a0,a0,-00000400
	jal	ra,0000000023082388

l23041914:
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.addi16sp	00000080
	c.jr	ra

;; health_fault_get: 23041922
health_fault_get proc
	c.addi16sp	FFFFFF90
	c.addi4spn	a5,00000018
	c.swsp	a5,00000084
	lui	a5,00000480
	c.swsp	s0,00000034
	c.swsp	a5,00000008
	c.mv	s0,a0
	c.addi4spn	a5,00000018
	c.mv	a0,a2
	c.swsp	ra,000000B4
	c.swsp	s1,000000B0
	c.swsp	a5,00000088
	c.mv	s1,a1
	jal	ra,0000000023049430
	c.mv	a1,a0
	c.addi4spn	a2,0000000C
	c.mv	a0,s0
	jal	ra,0000000023041786
	c.li	a4,00000000
	c.li	a3,00000000
	c.addi4spn	a2,0000000C
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002303C700
	c.beqz	a0,0000000023041968

l2304195C:
	lui	a0,000230B9
	addi	a0,a0,-00000400
	jal	ra,0000000023082388

l23041968:
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.lwsp	t0,00000134
	c.addi16sp	00000070
	c.jr	ra

;; health_pub_update: 23041972
health_pub_update proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s6,00000008
	lw	s2,a0,+00000008
	lw	s6,a0,+00000018
	c.li	a1,00000004
	lw	s0,s2,+00000014
	c.mv	s4,a0
	c.mv	a0,s0
	jal	ra,000000002303C6A0
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,00000000230492DE
	c.li	a1,00000002
	c.mv	s3,a0
	c.mv	a0,s0
	jal	ra,00000000230492DE
	c.mv	s1,a0
	jal	ra,000000002303CA30
	lw	a5,s6,+00000004
	c.mv	s5,a0
	c.beqz	a5,0000000023041A54

l230419BA:
	c.lw	a5,0(a5)
	c.beqz	a5,0000000023041A54

l230419BE:
	c.mv	a0,s0
	jal	ra,00000000230494E0
	lw	a5,s6,+00000004
	sb	a0,sp,+0000000D
	c.lw	s0,0(a2)
	lhu	a3,s0,+00000004
	c.lw	a5,0(a5)
	c.mv	a1,s3
	c.add	a3,a2
	addi	a4,sp,+0000000D
	addi	a2,sp,+0000000E
	c.mv	a0,s4
	c.jalr	a5
	c.mv	a1,a0
	c.beqz	a0,0000000023041A0C

l230419E8:
	lui	a0,000230B9
	addi	a0,a0,-000003D0
	jal	ra,0000000023082388

l230419F4:
	lhu	a5,s5,+00000000
	sb	a5,s1,+00000000
	c.srli	a5,00000008
	sb	a5,s1,+00000001
	sb	zero,s3,+00000000
	sb	zero,sp,+0000000D
	c.j	0000000023041A24

l23041A0C:
	lhu	a5,sp,+0000000E
	c.mv	a0,s0
	sb	a5,s1,+00000000
	lbu	a1,sp,+0000000D
	c.srli	a5,00000008
	sb	a5,s1,+00000001
	jal	ra,00000000230492DE

l23041A24:
	lbu	a5,sp,+0000000D
	c.li	a0,00000000
	sltu	a5,zero,a5
	slli	a4,a5,00000005
	lbu	a5,s2,+0000000B
	andi	a5,a5,-00000021
	c.or	a5,a4
	sb	a5,s2,+0000000B
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

l23041A54:
	lui	a0,000230B9
	addi	a0,a0,-000003B0
	jal	ra,0000000023082388
	c.j	00000000230419F4

;; bt_mesh_health_srv_init: 23041A62
;;   Called from:
;;     2303C1B6 (in mod_init)
bt_mesh_health_srv_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.lw	a0,24(s0)
	c.mv	s2,a1
	c.bnez	s0,0000000023041A92

l23041A72:
	c.bnez	a1,0000000023041A78

l23041A74:
	c.li	a0,00000000
	c.j	0000000023041A86

l23041A78:
	lui	a0,000230B9
	addi	a0,a0,-00000508

l23041A80:
	jal	ra,0000000023082388
	c.li	a0,FFFFFFEA

l23041A86:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23041A92:
	c.lw	a0,8(a4)
	c.mv	s1,a0
	c.bnez	a4,0000000023041AA2

l23041A98:
	lui	a0,000230B9
	addi	a0,a0,-000004E4
	c.j	0000000023041A80

l23041AA2:
	lui	a5,00023042
	addi	a5,a5,-0000068E
	lui	a1,00023041
	c.sw	a4,24(a5)
	addi	a1,a1,+000005C8
	addi	a0,s0,+00000008
	jal	ra,0000000023049780
	c.sw	s0,0(s1)
	beq	s2,zero,0000000023041A74

l23041AC2:
	lui	a5,00042026
	sw	s0,a5,+000005A4
	c.j	0000000023041A74

;; bt_mesh_attention: 23041ACC
;;   Called from:
;;     23041B72 (in attention_set_unrel)
;;     230437F8 (in reset_state)
;;     23043960 (in prov_invite)
bt_mesh_attention proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.bnez	a0,0000000023041B28

l23041AD8:
	lui	a5,00042026
	lw	s0,a5,+000005A4
	c.bnez	s0,0000000023041AF8

l23041AE2:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	lui	a0,000230B9
	addi	a0,a0,-00000528
	c.addi16sp	00000020
	jal	zero,0000000023082388

l23041AF8:
	c.lw	s0,0(s1)

l23041AFA:
	addi	s2,s0,+00000008
	c.beqz	a1,0000000023041B2E

l23041B00:
	c.lw	s0,4(a5)
	c.beqz	a5,0000000023041B10

l23041B04:
	c.lw	a5,16(a5)
	c.beqz	a5,0000000023041B10

l23041B08:
	c.mv	a0,s1
	c.swsp	a1,00000084
	c.jalr	a5
	c.lwsp	a2,00000064

l23041B10:
	addi	a5,zero,+000003E8
	add	a1,a1,a5
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,00000000230498CA

l23041B28:
	c.mv	s1,a0
	c.lw	a0,24(s0)
	c.j	0000000023041AFA

l23041B2E:
	c.mv	a0,s2
	jal	ra,000000002304986E
	c.lw	s0,4(a5)
	c.beqz	a5,0000000023041B4E

l23041B38:
	lw	t1,a5,+00000014
	beq	t1,zero,0000000023041B4E

l23041B40:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	t1

l23041B4E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; attention_set_unrel: 23041B5A
;;   Called from:
;;     23041B82 (in attention_set)
attention_set_unrel proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.mv	a0,a2
	c.swsp	ra,00000084
	jal	ra,0000000023049414
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023041ACC

;; attention_set: 23041B76
attention_set proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	jal	ra,0000000023041B5A
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230415DE

;; bt_mesh_provision: 23041B96
;;   Called from:
;;     23043CE0 (in prov_data)
bt_mesh_provision proc
	c.addi16sp	FFFFFFD0
	c.swsp	s5,00000088
	c.mv	s5,a0
	lui	a0,000230B9
	c.swsp	s2,00000010
	addi	a0,a0,-00000320
	lui	s2,000230C4
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.swsp	ra,00000094
	c.mv	s3,a1
	c.mv	s4,a2
	c.mv	s6,a3
	c.mv	s7,a4
	c.mv	s1,a5
	c.li	s0,00000000
	jal	ra,0000000023082388
	c.li	s9,00000010
	c.mv	s8,s2

l23041BD0:
	add	a5,s5,s0
	lbu	a1,a5,+00000000
	addi	a0,s2,+00000668
	c.addi	s0,00000001
	jal	ra,0000000023082388
	bne	s0,s9,0000000023041BD0

l23041BE6:
	lui	a0,000230B9
	addi	a0,a0,-00000300
	jal	ra,0000000023082388
	c.li	s0,00000000
	c.li	s2,00000010

l23041BF6:
	add	a5,s1,s0
	lbu	a1,a5,+00000000
	addi	a0,s8,+00000668
	c.addi	s0,00000001
	jal	ra,0000000023082388
	bne	s0,s2,0000000023041BF6

l23041C0C:
	lui	a0,000230B9
	c.mv	a3,s6
	c.mv	a2,s4
	c.mv	a1,s3
	addi	a0,a0,-000002E0
	jal	ra,0000000023082388
	lui	s2,0004200D
	c.li	a1,00000001
	addi	a0,s2,+000006C4
	jal	ra,0000000023048EBA
	c.andi	a0,00000001
	addi	s0,zero,-00000045
	c.bnez	a0,0000000023041C5C

l23041C34:
	jal	ra,0000000023045426
	c.mv	s8,a0
	c.mv	a3,s6
	c.mv	a2,s5
	c.mv	a1,s4
	c.mv	a0,s3
	jal	ra,00000000230424D8
	c.mv	s0,a0
	c.beqz	a0,0000000023041C78

l23041C4A:
	c.li	a1,FFFFFFFE
	addi	a0,s2,+000006C4
	jal	ra,0000000023048EE2
	bne	s8,zero,0000000023041C5C

l23041C58:
	jal	ra,00000000230453C2

l23041C5C:
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
	c.lwsp	tp,0000002C
	c.addi16sp	00000030
	c.jr	ra

l23041C78:
	lui	a5,0004200D
	c.mv	a0,s7
	sw	zero,a5,+000006C0
	jal	ra,000000002303C368
	lui	a0,0004200E
	c.li	a2,00000010
	c.mv	a1,s1
	addi	a0,a0,-000007A0
	jal	ra,00000000230A382C
	jal	ra,0000000023043350
	c.j	0000000023041C5C

;; bt_mesh_reset: 23041C9C
;;   Called from:
;;     2303A99E (in blemesh_reset)
;;     2303E248 (in node_reset)
bt_mesh_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200D
	addi	a0,s0,+000006C4
	c.swsp	ra,00000084
	jal	ra,0000000023048E6C
	c.andi	a0,00000001
	c.beqz	a0,0000000023041D1E

l23041CB2:
	lui	a5,0004200D
	addi	a5,a5,+000006BC
	c.li	a2,00000004
	c.li	a1,00000000
	addi	a0,s0,+000006C4
	sw	zero,a5,+00000000
	sw	zero,a5,+00000004
	jal	ra,00000000230A3A68
	lui	a0,0004200E
	addi	a0,a0,-000007C4
	jal	ra,000000002304986E
	jal	ra,0000000023040690
	jal	ra,000000002304724A
	jal	ra,0000000023047284
	c.li	a0,00000001
	jal	ra,000000002303B792
	c.lui	a0,00010000
	c.addi	a0,FFFFFFFF
	jal	ra,0000000023047C7A
	jal	ra,000000002304556C
	lui	a0,0004200E
	c.li	a2,00000010
	c.li	a1,00000000
	addi	a0,a0,-000007A0
	jal	ra,00000000230A3A68
	jal	ra,000000002303CE24
	jal	ra,000000002303D388
	jal	ra,000000002303C39A
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023044A4E

l23041D1E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_is_provisioned: 23041D26
;;   Called from:
;;     2303A7C2 (in blemesh_seg_send)
;;     2303A8B8 (in blemesh_net_send)
;;     2303ADC8 (in blemesh_init)
;;     2303AE16 (in blemesh_iv_update)
;;     2303B7D0 (in bt_mesh_lpn_set)
;;     2303C06C (in model_send)
;;     2303CEF4 (in beacon_send)
;;     2303D32C (in bt_mesh_beacon_enable)
;;     23041D48 (in bt_mesh_prov_enable)
;;     23041DA6 (in bt_mesh_prov_disable)
;;     230430C6 (in bt_mesh_net_recv)
;;     2304492A (in bt_mesh_pb_adv_recv)
;;     2304533C (in bt_mesh_proxy_identity_enable)
;;     230456EE (in bt_mesh_proxy_adv_start)
;;     23045804 (in bt_mesh_proxy_adv_start)
bt_mesh_is_provisioned proc
	lui	a0,0004200D
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000006C4
	c.swsp	ra,00000084
	jal	ra,0000000023048E6C
	c.lwsp	a2,00000020
	c.andi	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_prov_enable: 23041D3E
;;   Called from:
;;     2303ACA4 (in blemesh_pb)
bt_mesh_prov_enable proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.mv	s0,a0
	jal	ra,0000000023041D26
	addi	s1,zero,-00000045
	c.bnez	a0,0000000023041D90

l23041D52:
	jal	ra,00000000230448DC
	c.li	a5,00000002
	c.swsp	zero,00000084
	sb	a5,sp,+0000000C
	c.swsp	zero,00000008
	c.swsp	zero,00000088
	c.swsp	zero,0000000C
	sb	zero,sp,+0000001C
	c.lw	a0,0(a1)
	c.li	a2,00000010
	addi	a0,sp,+0000000D
	jal	ra,00000000230A382C
	andi	a5,s0,+00000001
	c.beqz	a5,0000000023041D82

l23041D7A:
	jal	ra,000000002303CDD4
	jal	ra,000000002303D326

l23041D82:
	c.andi	s0,00000002
	c.li	s1,00000000
	c.beqz	s0,0000000023041D90

l23041D88:
	jal	ra,00000000230453C2
	jal	ra,000000002303CD2C

l23041D90:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; bt_mesh_prov_disable: 23041D9C
;;   Called from:
;;     2303ACDC (in blemesh_pb)
bt_mesh_prov_disable proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023041D26
	addi	s1,zero,-00000045
	c.bnez	a0,0000000023041DCA

l23041DB0:
	andi	a5,s0,+00000001
	c.beqz	a5,0000000023041DBE

l23041DB6:
	jal	ra,000000002303D388
	jal	ra,000000002303CE24

l23041DBE:
	c.andi	s0,00000002
	c.li	s1,00000000
	c.beqz	s0,0000000023041DCA

l23041DC4:
	c.li	a0,00000001
	jal	ra,0000000023045426

l23041DCA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_init: 23041DD6
;;   Called from:
;;     2303ADA6 (in blemesh_init)
bt_mesh_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.mv	a0,a1
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002303C33E
	c.mv	s0,a0
	c.bnez	a0,0000000023041E08

l23041DEA:
	c.mv	a0,s1
	jal	ra,00000000230449DA
	c.mv	s0,a0
	c.bnez	a0,0000000023041E08

l23041DF4:
	jal	ra,000000002304339E
	jal	ra,00000000230472A8
	jal	ra,000000002303D11A
	jal	ra,000000002303CD8C
	jal	ra,0000000023045A0A

l23041E08:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; send_cb_finalize: 23041E14
;;   Called from:
;;     23042A20 (in bt_mesh_net_resend)
;;     23042C56 (in bt_mesh_net_send)
send_cb_finalize proc
	c.beqz	a0,0000000023041E4E

l23041E16:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.lw	a0,0(a5)
	c.mv	s1,a1
	c.mv	s0,a0
	c.beqz	a5,0000000023041E2E

l23041E26:
	c.mv	a2,a1
	c.li	a0,00000000
	c.li	a1,00000000
	c.jalr	a5

l23041E2E:
	lw	t1,s0,+00000004
	beq	t1,zero,0000000023041E44

l23041E36:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s1
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	t1

l23041E44:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23041E4E:
	c.jr	ra

;; auth_match: 23041E50
;;   Called from:
;;     23042D26 (in bt_mesh_subnet_find)
;;     23042D3E (in bt_mesh_subnet_find)
;;     23042D5C (in bt_mesh_subnet_find)
;;     23042D96 (in bt_mesh_subnet_find)
auth_match proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.mv	s1,a0
	c.swsp	s2,00000018
	addi	s2,s1,+00000021
	c.swsp	s3,00000094
	c.mv	a0,a1
	c.mv	s3,a2
	c.mv	a1,s2
	c.li	a2,00000008
	c.swsp	s0,0000001C
	c.swsp	ra,0000009C
	c.swsp	a3,00000084
	c.mv	s0,a4
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023041EB4

l23041E74:
	c.lwsp	a2,000000A4
	c.addi4spn	a4,00000018
	c.mv	a2,s2
	c.mv	a1,s3
	addi	a0,s1,+00000049
	jal	ra,00000000230413D2
	c.li	a2,00000008
	c.addi4spn	a1,00000018
	c.mv	a0,s0
	jal	ra,00000000230A37A4
	c.li	a5,00000001
	c.beqz	a0,0000000023041EB6

l23041E92:
	c.li	a1,00000008
	c.mv	a0,s0
	jal	ra,0000000023049580
	c.mv	s0,a0
	c.li	a1,00000008
	c.addi4spn	a0,00000018
	jal	ra,0000000023049580
	c.mv	a2,a0
	lui	a0,000230B9
	c.mv	a1,s0
	addi	a0,a0,-00000294
	jal	ra,0000000023082388

l23041EB4:
	c.li	a5,00000000

l23041EB6:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.mv	a0,a5
	c.addi16sp	00000040
	c.jr	ra

;; net_decrypt.isra.1: 23041EC6
;;   Called from:
;;     23042E96 (in bt_mesh_net_decode)
;;     23042EC2 (in bt_mesh_net_decode)
;;     23042F0E (in bt_mesh_net_decode)
;;     23042FCC (in bt_mesh_net_decode)
;;     23043008 (in bt_mesh_net_decode)
;;     23043044 (in bt_mesh_net_decode)
net_decrypt.isra.1 proc
	c.addi16sp	FFFFFFC0
	c.swsp	s4,00000014
	lui	s4,0004200D
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	addi	s2,s4,+000006BC
	c.mv	s0,a5
	c.mv	s1,a4
	lbu	a5,a2,+00000000
	lw	a4,s2,+00000000
	c.mv	s6,a1
	c.srli	a5,00000007
	c.andi	a4,00000001
	c.xor	a4,a5
	lbu	a5,s1,+00000020
	c.mv	a1,a3
	c.mv	s3,a0
	c.andi	a5,FFFFFFFE
	c.or	a5,a4
	sb	a5,s1,+00000020
	c.lw	s0,8(a5)
	sh	zero,s0,+00000004
	c.mv	a0,s0
	c.sw	s0,0(a5)
	c.mv	s5,a2
	c.swsp	a3,00000084
	jal	ra,00000000230492DE
	c.lwsp	a2,000000A4
	c.mv	a1,s5
	c.mv	a2,a3
	jal	ra,00000000230A382C
	c.lw	s1,32(a5)
	lw	a1,s2,+00000000
	c.lw	s0,0(a0)
	c.andi	a5,00000001
	c.mv	a2,s6
	c.sub	a1,a5
	jal	ra,0000000023040FDE
	bne	a0,zero,0000000023042038

l23041F36:
	lbu	a5,s1,+00000020
	addi	s4,s4,+000006BC
	andi	a5,a5,+00000030
	c.bnez	a5,0000000023041FBA

l23041F44:
	lw	s2,s1,+00000020
	c.lw	s0,0(a1)
	c.li	a2,00000004
	andi	a5,s2,+00000001
	lw	s2,s4,+00000000
	c.addi	a1,00000003
	c.addi4spn	a0,0000001C
	sub	s2,s2,a5
	lbu	a5,a1,-00000001
	c.slli	s2,08
	or	s2,s2,a5
	jal	ra,00000000230A382C
	lui	a4,00042014
	c.lwsp	t3,00000084
	addi	a5,a4,+00000400
	addi	a3,a5,+00000060
	addi	a4,a4,+00000400

l23041F7C:
	c.lw	a5,0(a1)
	bne	a1,a2,0000000023041F88

l23041F82:
	c.lw	a5,4(a1)
	beq	a1,s2,0000000023041FEA

l23041F88:
	c.addi	a5,00000008
	bne	a3,a5,0000000023041F7C

l23041F8E:
	lui	a3,0004200F
	addi	a3,a3,+00000434
	lhu	a5,a3,+00000000
	sh	a5,s1,+00000022
	slli	a1,a5,00000003
	c.addi	a5,00000001
	c.add	a4,a1
	c.slli	a5,10
	c.sw	a4,0(a2)
	sw	s2,a4,+00000004
	c.srli	a5,00000010
	c.li	a4,0000000C
	and	a5,a5,a4
	sh	a5,a3,+00000000

l23041FBA:
	c.lw	s0,0(a4)
	lbu	a5,a4,+00000005
	lbu	a4,a4,+00000006
	c.slli	a5,08
	c.or	a5,a4
	c.slli	a5,10
	c.srai	a5,00000010
	slli	a1,a5,00000010
	c.srli	a1,00000010
	sh	a1,s1,+00000008
	blt	zero,a5,000000002304200E

l23041FDA:
	lui	a0,000230B9
	addi	a0,a0,+000001A0
	jal	ra,0000000023082388
	c.li	a0,FFFFFFEA
	c.j	0000000023041FFA

l23041FEA:
	lui	a0,000230B9
	addi	a0,a0,+00000174
	jal	ra,0000000023082388
	addi	a0,zero,-00000045

l23041FFA:
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

l2304200E:
	c.lw	s1,32(a2)
	addi	a4,zero,+00000030
	c.li	a3,00000001
	andi	a5,a2,+00000001
	lw	a2,s4,+00000000
	c.sub	a2,a5
	lbu	a5,s1,+00000020
	andi	a5,a5,+00000030
	beq	a5,a4,000000002304202E

l2304202C:
	c.li	a3,00000000

l2304202E:
	c.mv	a1,s0
	c.mv	a0,s3
	jal	ra,00000000230410E6
	c.j	0000000023041FFA

l23042038:
	c.li	a0,FFFFFFFE
	c.j	0000000023041FFA

;; atomic_test_bit.constprop.8: 2304203C
;;   Called from:
;;     2304248A (in bt_mesh_net_flags)
;;     23042706 (in bt_mesh_net_iv_update)
;;     2304286E (in ivu_refresh)
;;     230428A8 (in bt_mesh_next_seq)
;;     2304292A (in bt_mesh_net_resend)
;;     23042970 (in bt_mesh_net_resend)
;;     230429C4 (in bt_mesh_net_resend)
;;     230429EC (in bt_mesh_net_resend)
;;     23042B50 (in bt_mesh_net_encode)
;;     23042B6C (in bt_mesh_net_encode)
;;     23042B8A (in bt_mesh_net_encode)
atomic_test_bit.constprop.8 proc
	lui	a0,0004200D
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000006C4
	c.swsp	ra,00000084
	jal	ra,0000000023048E6C
	c.lwsp	a2,00000020
	c.srai	a0,00000002
	c.andi	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_subnet_get: 23042056
;;   Called from:
;;     2303A848 (in blemesh_seg_send)
;;     2303A932 (in blemesh_net_send)
;;     2303C71A (in bt_mesh_model_send)
;;     2303C842 (in bt_mesh_model_publish)
;;     2303C920 (in mod_publish)
;;     2303D290 (in bt_mesh_beacon_recv)
;;     2303DCE4 (in krp_get)
;;     2303DD5C (in node_identity_get)
;;     2303DDFC (in app_key_get)
;;     2303E040 (in krp_set)
;;     2303E460 (in net_key_update)
;;     2303E530 (in net_key_add)
;;     2303F3EE (in app_key_set)
;;     2303F610 (in hb_publish)
;;     2303F71C (in heartbeat_pub_set)
;;     2303FAA4 (in app_key_del)
;;     2304001C (in node_identity_set)
;;     23040662 (in net_key_del)
;;     2304735A (in bt_mesh_heartbeat_send)
;;     2304752C (in create_friend_pdu)
;;     23047A66 (in enqueue_update)
bt_mesh_subnet_get proc
	c.lui	a5,00010000
	lui	a4,0004200D
	c.addi	a5,FFFFFFFF
	addi	a4,a4,+000006BC
	beq	a0,a5,0000000023042090

l23042066:
	lhu	a5,a4,+00000220
	beq	a5,a0,000000002304208C

l2304206E:
	lhu	a3,a4,+00000304
	c.li	a5,00000000
	bne	a3,a0,0000000023042088

l23042078:
	c.li	a5,00000001

l2304207A:
	addi	a0,zero,+000000E4
	add	a5,a5,a0
	addi	a5,a5,+00000204
	c.add	a5,a4

l23042088:
	c.mv	a0,a5
	c.jr	ra

l2304208C:
	c.li	a5,00000000
	c.j	000000002304207A

l23042090:
	addi	a5,a4,+00000204
	c.j	0000000023042088

;; bt_mesh_net_keys_create: 23042096
;;   Called from:
;;     2303E4D2 (in net_key_update)
;;     2303E5A8 (in net_key_add)
;;     23042524 (in bt_mesh_net_create)
;;     2304257A (in bt_mesh_net_create)
bt_mesh_net_keys_create proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a1
	c.swsp	s1,00000088
	addi	a5,a0,+00000039
	c.mv	s1,a0
	addi	a4,a0,+00000011
	addi	a3,sp,+0000000F
	c.li	a2,00000001
	c.addi4spn	a1,0000000C
	c.mv	a0,s2
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	sb	zero,sp,+0000000C
	jal	ra,0000000023040E16
	c.beqz	a0,00000000230420DC

l230420C0:
	c.mv	s0,a0
	lui	a0,000230B9
	addi	a0,a0,-00000044

l230420CA:
	jal	ra,0000000023082388

l230420CE:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l230420DC:
	c.li	a2,00000010
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230A382C
	lbu	a5,sp,+0000000F
	addi	a1,s1,+00000021
	c.mv	a0,s2
	sb	a5,s1,+00000010
	jal	ra,0000000023040EE4
	c.mv	s0,a0
	c.beqz	a0,0000000023042106

l230420FC:
	lui	a0,000230B9
	addi	a0,a0,-00000014
	c.j	00000000230420CA

l23042106:
	lui	a1,000230B9
	addi	a2,s1,+00000029
	addi	a1,a1,+00000008
	c.mv	a0,s2
	jal	ra,0000000023040FAA
	c.mv	s0,a0
	c.beqz	a0,0000000023042126

l2304211C:
	lui	a0,000230B9
	addi	a0,a0,+00000010
	c.j	00000000230420CA

l23042126:
	lui	a1,000230B9
	addi	a2,s1,+00000049
	addi	a1,a1,+00000034
	c.mv	a0,s2
	jal	ra,0000000023040FAA
	c.mv	s0,a0
	c.beqz	a0,00000000230420CE

l2304213C:
	lui	a0,000230B9
	addi	a0,a0,+0000003C
	c.j	00000000230420CA

;; friend_cred_set: 23042146
;;   Called from:
;;     23042290 (in friend_cred_update)
;;     230422BE (in friend_cred_update)
;;     23042352 (in friend_cred_create)
;;     2304237E (in friend_cred_create)
friend_cred_set proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	lui	a5,0004200D
	lhu	s2,a0,+00000002
	lhu	a5,a5,+000007E8
	c.mv	s1,a0
	c.mv	s0,a1
	c.mv	s3,a2
	bne	a5,s2,00000000230421F4

l23042168:
	jal	ra,000000002303C3B0
	c.mv	s2,a0
	lhu	a0,s1,+00000002

l23042172:
	addi	a1,zero,+00000021
	add	a1,s0,a1
	c.li	a5,00000001
	sb	a5,sp,+00000004
	srli	a5,s2,00000008
	sb	a5,sp,+00000005
	srli	a5,a0,00000008
	sb	a5,sp,+00000007
	lhu	a5,s1,+00000004
	sb	a0,sp,+00000008
	c.li	a2,00000009
	srli	a4,a5,00000008
	sb	a5,sp,+0000000A
	lhu	a5,s1,+00000006
	sb	a4,sp,+00000009
	c.mv	a0,s3
	srli	a4,a5,00000008
	sb	a4,sp,+0000000B
	sb	a5,sp,+0000000C
	addi	a4,a1,+00000009
	addi	a5,a1,+00000019
	c.addi	a1,00000008
	add	a3,s1,a1
	c.add	a5,s1
	c.add	a4,s1
	c.addi4spn	a1,00000004
	sb	s2,sp,+00000006
	jal	ra,0000000023040E16
	c.mv	s0,a0
	c.beqz	a0,00000000230421E4

l230421D8:
	lui	a0,000230B9
	addi	a0,a0,-00000044
	jal	ra,0000000023082388

l230421E4:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l230421F4:
	jal	ra,000000002303C3B0
	c.j	0000000023042172

;; friend_cred_refresh: 230421FA
;;   Called from:
;;     2303E0CA (in krp_set)
;;     23042664 (in bt_mesh_kr_update)
friend_cred_refresh proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042014
	c.swsp	s1,00000080
	addi	a5,s0,+0000036C
	c.swsp	ra,00000084
	lhu	a5,a5,+00000002
	c.mv	s1,a0
	addi	s0,s0,+0000036C
	c.beqz	a5,000000002304222E

l23042216:
	lhu	a5,s0,+00000000
	bne	a5,a0,000000002304222E

l2304221E:
	addi	a2,zero,+00000021
	addi	a1,s0,+00000029
	addi	a0,s0,+00000008
	jal	ra,00000000230A382C

l2304222E:
	lhu	a5,s0,+0000004C
	c.beqz	a5,0000000023042254

l23042234:
	lhu	a5,s0,+0000004A
	bne	a5,s1,0000000023042254

l2304223C:
	addi	a1,s0,+00000073
	addi	a0,s0,+00000052
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	addi	a2,zero,+00000021
	c.addi	sp,00000010
	jal	zero,00000000230A382C

l23042254:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; friend_cred_update: 2304225E
;;   Called from:
;;     2303E4DE (in net_key_update)
friend_cred_update proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	lui	a0,00042014
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	a5,a0,+0000036C
	lhu	a5,a5,+00000002
	addi	s0,a0,+0000036C
	c.beqz	a5,0000000023042296

l2304227A:
	lhu	a4,s0,+00000000
	lhu	a5,s1,+0000001C
	bne	a4,a5,0000000023042296

l23042286:
	addi	a2,s1,+00000089
	c.li	a1,00000001
	addi	a0,a0,+0000036C
	jal	ra,0000000023042146
	c.bnez	a0,000000002304229E

l23042296:
	lhu	a5,s0,+0000004C
	c.bnez	a5,00000000230422A8

l2304229C:
	c.li	a0,00000000

l2304229E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230422A8:
	lhu	a4,s0,+0000004A
	lhu	a5,s1,+0000001C
	bne	a4,a5,000000002304229C

l230422B4:
	addi	a2,s1,+00000089
	c.li	a1,00000001
	addi	a0,s0,+0000004A
	jal	ra,0000000023042146
	c.beqz	a0,000000002304229C

l230422C4:
	c.j	000000002304229E

;; friend_cred_clear: 230422C6
;;   Called from:
;;     2303B902 (in bt_mesh_lpn_friend_offer)
;;     2304235A (in friend_cred_create)
;;     230423C6 (in friend_cred_del)
friend_cred_clear proc
	c.li	a5,FFFFFFFF
	sh	a5,a0,+00000000
	sh	zero,a0,+00000002
	sh	zero,a0,+00000004
	sh	zero,a0,+00000006
	addi	a2,zero,+00000042
	c.li	a1,00000000
	c.addi	a0,00000008
	jal	zero,00000000230A3A68

;; friend_cred_create: 230422E4
;;   Called from:
;;     2303B8CC (in bt_mesh_lpn_friend_offer)
;;     230483F4 (in bt_mesh_friend_req)
friend_cred_create proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042014
	c.swsp	s1,00000080
	addi	a5,s0,+0000036C
	c.swsp	ra,00000084
	lhu	a5,a5,+00000002
	c.mv	s1,a0
	addi	s0,s0,+0000036C
	c.beqz	a5,000000002304232A

l23042300:
	bne	a1,a5,0000000023042310

l23042304:
	lhu	a4,s0,+00000000
	lhu	a5,a0,+0000001C
	beq	a4,a5,000000002304232A

l23042310:
	lhu	a5,s0,+0000004C
	c.beqz	a5,0000000023042326

l23042316:
	bne	a1,a5,0000000023042360

l2304231A:
	lhu	a4,s0,+0000004A
	lhu	a5,s1,+0000001C
	bne	a4,a5,0000000023042360

l23042326:
	c.li	a5,00000001
	c.j	000000002304232C

l2304232A:
	c.li	a5,00000000

l2304232C:
	addi	a4,zero,+0000004A
	add	a5,a5,a4
	c.add	s0,a5
	lhu	a5,s1,+0000001C
	c.mv	a0,s0
	sh	a1,s0,+00000002
	sh	a2,s0,+00000004
	sh	a5,s0,+00000000
	sh	a3,s0,+00000006
	addi	a2,s1,+00000030
	c.li	a1,00000000
	jal	ra,0000000023042146
	c.beqz	a0,0000000023042370

l23042358:
	c.mv	a0,s0
	jal	ra,00000000230422C6
	c.j	000000002304236C

l23042360:
	lui	a0,000230B9
	addi	a0,a0,+00000150
	jal	ra,0000000023082388

l2304236C:
	c.li	s0,00000000
	c.j	0000000023042384

l23042370:
	lbu	a5,s1,+0000001E
	c.beqz	a5,0000000023042384

l23042376:
	addi	a2,s1,+00000089
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023042146
	c.bnez	a0,0000000023042358

l23042384:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; friend_cred_del: 23042390
;;   Called from:
;;     2303B122 (in clear_friendship)
;;     230477D8 (in friend_clear)
friend_cred_del proc
	lui	a5,00042014
	addi	a3,a5,+0000036C
	lhu	a2,a3,+00000002
	addi	a4,a5,+0000036C
	bne	a2,a1,00000000230423AC

l230423A4:
	lhu	a3,a3,+00000000
	beq	a3,a0,00000000230423D4

l230423AC:
	lhu	a3,a4,+0000004C
	c.li	a5,FFFFFFFE
	bne	a3,a1,00000000230423DA

l230423B6:
	lhu	a3,a4,+0000004A
	bne	a3,a0,00000000230423DA

l230423BE:
	addi	a0,a4,+0000004A

l230423C2:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230422C6
	c.lwsp	a2,00000020
	c.li	a5,00000000
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l230423D4:
	addi	a0,a5,+0000036C
	c.j	00000000230423C2

l230423DA:
	c.mv	a0,a5
	c.jr	ra

;; friend_cred_get: 230423DE
;;   Called from:
;;     23047628 (in create_friend_pdu)
friend_cred_get proc
	lui	a5,00042014
	lhu	a6,a5,+0000036C
	lhu	t1,a0,+0000001C
	addi	a5,a5,+0000036C
	bne	a6,t1,00000000230423FE

l230423F2:
	c.beqz	a1,0000000023042416

l230423F4:
	lhu	a7,a5,+00000002
	c.li	a6,00000000
	beq	a7,a1,0000000023042418

l230423FE:
	lhu	a6,a5,+0000004A
	c.li	a7,FFFFFFFE
	bne	a6,t1,0000000023042478

l23042408:
	c.beqz	a1,0000000023042412

l2304240A:
	lhu	a6,a5,+0000004C
	bne	a6,a1,0000000023042478

l23042412:
	c.li	a6,00000001
	c.j	0000000023042418

l23042416:
	c.li	a6,00000000

l23042418:
	c.beqz	a2,000000002304243A

l2304241A:
	lbu	a1,a0,+0000001E
	addi	a7,zero,+00000021
	add	a1,a1,a7
	addi	a7,zero,+0000004A
	add	a7,a6,a7
	c.add	a1,a7
	c.add	a1,a5
	lbu	a1,a1,+00000008
	sb	a1,a2,+00000000

l2304243A:
	c.beqz	a3,0000000023042458

l2304243C:
	lbu	a2,a0,+0000001E
	addi	a1,zero,+00000021
	add	a2,a2,a1
	addi	a1,zero,+0000004A
	add	a1,a6,a1
	c.addi	a2,00000009
	c.add	a2,a1
	c.add	a2,a5
	c.sw	a3,0(a2)

l23042458:
	c.li	a7,00000000
	c.beqz	a4,0000000023042478

l2304245C:
	lbu	a3,a0,+0000001E
	addi	a2,zero,+00000021
	add	a3,a3,a2
	addi	a2,zero,+0000004A
	add	a6,a6,a2
	c.addi	a3,00000019
	c.add	a6,a3
	c.add	a5,a6
	c.sw	a4,0(a5)

l23042478:
	c.mv	a0,a7
	c.jr	ra

;; bt_mesh_net_flags: 2304247C
;;   Called from:
;;     2303CE7A (in bt_mesh_beacon_create)
;;     230424A6 (in bt_mesh_net_beacon_update)
;;     23047A80 (in enqueue_update)
bt_mesh_net_flags proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	s0,00000000
	c.beqz	a0,000000002304248A

l23042486:
	lbu	s0,a0,+0000001E

l2304248A:
	jal	ra,000000002304203C
	c.beqz	a0,0000000023042494

l23042490:
	ori	s0,s0,+00000002

l23042494:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_net_beacon_update: 2304249E
;;   Called from:
;;     2303BE10 (in bt_mesh_lpn_friend_update)
;;     2303D2EC (in bt_mesh_beacon_recv)
;;     2303D356 (in bt_mesh_beacon_enable)
;;     2303D372 (in bt_mesh_beacon_enable)
;;     2303E0A8 (in krp_set)
;;     2303E4EC (in net_key_update)
;;     2303E5B6 (in net_key_add)
;;     2304256E (in bt_mesh_net_create)
;;     230427A6 (in bt_mesh_net_iv_update)
;;     230427BC (in bt_mesh_net_iv_update)
bt_mesh_net_beacon_update proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002304247C
	lbu	a5,s0,+0000001E
	c.mv	a1,a0
	addi	a0,s0,+00000089
	c.bnez	a5,00000000230424BA

l230424B6:
	addi	a0,s0,+00000030

l230424BA:
	addi	a4,s0,+00000028
	lui	a3,0004200D
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lw	a3,a3,+000006BC
	addi	a2,a0,+00000021
	addi	a0,a0,+00000049
	c.addi	sp,00000010
	jal	zero,00000000230413D2

;; bt_mesh_net_create: 230424D8
;;   Called from:
;;     23041C42 (in bt_mesh_provision)
bt_mesh_net_create proc
	c.addi	sp,FFFFFFE0
	c.swsp	s4,00000004
	c.mv	s4,a0
	lui	a0,00042014
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s1,a1
	c.mv	s2,a2
	c.li	a1,00000000
	addi	a2,zero,+00000060
	addi	a0,a0,+00000400
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s3,a3
	jal	ra,00000000230A3A68
	lui	a5,0004200F
	lui	s0,0004200D
	addi	a4,s0,+000006BC
	sh	zero,a5,+00000434
	andi	a5,s1,+00000001
	sb	a5,a4,+00000222
	addi	s0,s0,+000006BC
	c.mv	a1,s2
	c.beqz	a5,0000000023042576

l23042520:
	addi	a0,s0,+0000028D
	jal	ra,0000000023042096
	c.beqz	a0,000000002304253C

l2304252A:
	c.li	a0,FFFFFFFB

l2304252C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2304253C:
	c.li	a5,00000002
	sb	a5,s0,+00000223

l23042542:
	c.srli	s1,00000001
	sh	s4,s0,+00000220
	sb	zero,s0,+00000224
	sw	s3,s0,+00000000
	c.andi	s1,00000001
	lui	a0,0004200D
	c.beqz	s1,0000000023042582

l23042558:
	c.li	a1,00000004
	addi	a0,a0,+000006C4
	jal	ra,0000000023048EBA

l23042562:
	addi	a5,zero,+00000060
	addi	a0,s0,+00000204
	sb	a5,s0,+0000017C
	jal	ra,000000002304249E
	c.li	a0,00000000
	c.j	000000002304252C

l23042576:
	addi	a0,s0,+00000234
	jal	ra,0000000023042096
	c.beqz	a0,0000000023042542

l23042580:
	c.j	000000002304252A

l23042582:
	c.li	a1,FFFFFFFB
	addi	a0,a0,+000006C4
	jal	ra,0000000023048EE2
	c.j	0000000023042562

;; bt_mesh_net_revoke_keys: 2304258E
;;   Called from:
;;     2303E0C2 (in krp_set)
;;     2304265C (in bt_mesh_kr_update)
bt_mesh_net_revoke_keys proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	addi	a1,a0,+00000089
	c.mv	s1,a0
	addi	a2,zero,+00000059
	addi	a0,a0,+00000030
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	s0,0004200D
	jal	ra,00000000230A382C
	addi	a5,s0,+000006BC
	lhu	a4,a5,+000001B4
	lhu	a5,s1,+0000001C
	addi	s0,s0,+000006BC
	bne	a4,a5,00000000230425D8

l230425C0:
	lbu	a5,s0,+000001B8
	c.beqz	a5,00000000230425D8

l230425C6:
	c.li	a2,00000011
	addi	a1,s0,+000001CA
	addi	a0,s0,+000001B9
	jal	ra,00000000230A382C
	sb	zero,s0,+000001B8

l230425D8:
	lhu	a4,s0,+000001DC
	lhu	a5,s1,+0000001C
	bne	a4,a5,00000000230425FC

l230425E4:
	lbu	a5,s0,+000001E0
	c.beqz	a5,00000000230425FC

l230425EA:
	c.li	a2,00000011
	addi	a1,s0,+000001F2
	addi	a0,s0,+000001E1
	jal	ra,00000000230A382C
	sb	zero,s0,+000001E0

l230425FC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_kr_update: 23042606
;;   Called from:
;;     2303BE08 (in bt_mesh_lpn_friend_update)
;;     2303D2E4 (in bt_mesh_beacon_recv)
bt_mesh_kr_update proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a4,a0,+0000001E
	c.mv	s0,a0
	lbu	a5,a0,+0000001F
	beq	a4,a1,0000000023042634

l2304261A:
	c.bnez	a5,0000000023042634

l2304261C:
	lui	a0,000230B9
	addi	a0,a0,-00000274
	jal	ra,0000000023082388

l23042628:
	c.li	a2,00000000

l2304262A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,a2
	c.addi	sp,00000010
	c.jr	ra

l23042634:
	sltu	a4,zero,a1
	sb	a4,s0,+0000001E
	c.li	a4,00000001
	c.beqz	a1,0000000023042650

l23042640:
	c.li	a2,00000000
	bne	a5,a4,000000002304262A

l23042646:
	c.li	a5,00000002
	sb	a5,s0,+0000001F

l2304264C:
	c.li	a2,00000001
	c.j	000000002304262A

l23042650:
	beq	a5,a4,000000002304266E

l23042654:
	c.li	a4,00000002
	bne	a5,a4,0000000023042628

l2304265A:
	c.mv	a0,s0
	jal	ra,000000002304258E
	lhu	a0,s0,+0000001C
	jal	ra,00000000230421FA
	sb	zero,s0,+0000001F
	c.j	000000002304264C

l2304266E:
	c.beqz	a2,000000002304262A

l23042670:
	c.j	000000002304265A

;; bt_mesh_rpl_reset: 23042672
;;   Called from:
;;     23042782 (in bt_mesh_net_iv_update)
bt_mesh_rpl_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200D
	addi	s0,s0,+000006BC
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	addi	s1,s0,+00000028
	c.li	s2,00000001

l2304268A:
	lhu	a5,s0,+000003CC
	c.beqz	a5,00000000230426A2

l23042690:
	lbu	a5,s0,+000003CE
	c.beqz	a5,00000000230426B4

l23042696:
	c.li	a2,00000008
	c.li	a1,00000000
	addi	a0,s0,+000003CC
	jal	ra,00000000230A3A68

l230426A2:
	c.addi	s0,00000008
	bne	s0,s1,000000002304268A

l230426A8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l230426B4:
	sb	s2,s0,+000003CE
	c.j	00000000230426A2

;; bt_mesh_net_sec_update: 230426BA
;;   Called from:
;;     2303D2F6 (in bt_mesh_beacon_recv)
;;     230428DE (in bt_mesh_next_seq)
;;     23045ED6 (in seg_tx_reset)
bt_mesh_net_sec_update proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.beqz	a0,00000000230426E2

l230426C4:
	lhu	a0,a0,+0000001C

l230426C8:
	jal	ra,0000000023047CE4
	jal	ra,000000002303FF8E
	c.li	a5,00000001
	bne	a0,a5,00000000230426E8

l230426D6:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023045270

l230426E2:
	c.lui	a0,00010000
	c.addi	a0,FFFFFFFF
	c.j	00000000230426C8

l230426E8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_net_iv_update: 230426F0
;;   Called from:
;;     2303BE1E (in bt_mesh_lpn_friend_update)
;;     2303D2D4 (in bt_mesh_beacon_recv)
;;     23042884 (in ivu_refresh)
;;     230428D8 (in bt_mesh_next_seq)
;;     23045EC4 (in seg_tx_reset)
bt_mesh_net_iv_update proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200D
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a0
	c.mv	s1,a1
	addi	s0,s0,+000006BC
	jal	ra,000000002304203C
	c.lw	s0,0(a2)
	c.beqz	a0,0000000023042728

l2304270E:
	beq	a2,s2,0000000023042722

l23042712:
	lui	a0,000230B9
	c.mv	a1,s2
	addi	a0,a0,-00000134

l2304271C:
	jal	ra,0000000023082388
	c.j	0000000023042724

l23042722:
	c.beqz	s1,00000000230427E4

l23042724:
	c.li	s1,00000000
	c.j	00000000230427D4

l23042728:
	beq	a2,s2,0000000023042724

l2304272C:
	bltu	s2,a2,0000000023042738

l23042730:
	addi	a5,a2,+0000002A
	bgeu	a5,s2,0000000023042744

l23042738:
	lui	a0,000230B9
	c.mv	a1,s2
	addi	a0,a0,-0000010C
	c.j	000000002304271C

l23042744:
	c.addi	a2,00000001
	bgeu	a2,s2,00000000230427C2

l2304274A:
	lui	a0,000230B9
	addi	a0,a0,-000000E0
	jal	ra,0000000023082388
	addi	a2,zero,+00000028
	c.li	a1,00000000
	addi	a0,s0,+000003CC
	jal	ra,00000000230A3A68
	sw	s2,s0,+00000000
	sw	zero,s0,+00000004
	c.beqz	s1,0000000023042820

l2304276E:
	c.li	a1,00000004
	addi	a0,s0,+00000008
	jal	ra,0000000023048EBA

l23042778:
	sb	zero,s0,+0000017C
	c.beqz	s1,000000002304282C

l2304277E:
	sw	s2,s0,+00000000
	jal	ra,0000000023042672

l23042786:
	lui	a1,0000A4CC
	addi	a1,a1,-00000800
	addi	a0,s0,+00000180
	jal	ra,00000000230498CA
	lhu	a4,s0,+00000220
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	a4,a5,00000000230427AA

l230427A2:
	addi	a0,s0,+00000204
	jal	ra,000000002304249E

l230427AA:
	lhu	a4,s0,+00000304
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	c.li	s1,00000001
	beq	a4,a5,00000000230427D4

l230427B8:
	addi	a0,s0,+000002E8
	jal	ra,000000002304249E
	c.j	00000000230427D4

l230427C2:
	bne	a2,s2,00000000230427E2

l230427C6:
	c.bnez	s1,00000000230427E4

l230427C8:
	lui	a0,000230B9
	addi	a0,a0,-000000C0
	jal	ra,0000000023082388

l230427D4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230427E2:
	c.beqz	s1,00000000230427D4

l230427E4:
	lbu	a4,s0,+0000017C
	addi	a5,zero,+0000005F
	bltu	a5,a4,00000000230427FE

l230427F0:
	lui	a0,000230B9
	addi	a0,a0,-0000009C
	jal	ra,0000000023082388
	c.j	0000000023042724

l230427FE:
	c.bnez	s1,000000002304276E

l23042800:
	jal	ra,000000002304637C
	c.beqz	a0,0000000023042820

l23042806:
	lui	a0,000230B9
	addi	a0,a0,-00000078
	jal	ra,0000000023082388
	addi	a1,zero,+00000020
	addi	a0,s0,+00000008
	jal	ra,0000000023048EBA
	c.j	00000000230427D4

l23042820:
	c.li	a1,FFFFFFFB
	addi	a0,s0,+00000008
	jal	ra,0000000023048EE2
	c.j	0000000023042778

l2304282C:
	sw	zero,s0,+00000004
	c.j	0000000023042786

;; ivu_refresh: 23042832
ivu_refresh proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200D
	addi	s0,s0,+000006BC
	lbu	a5,s0,+0000017C
	c.swsp	ra,00000084
	addi	a4,zero,+0000005F
	addi	a5,a5,+00000030
	andi	a5,a5,+000000FF
	sb	a5,s0,+0000017C
	bltu	a4,a5,000000002304286E

l23042858:
	addi	a0,s0,+00000180
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a1,0000A4CC
	addi	a1,a1,-00000800
	c.addi	sp,00000010
	jal	zero,00000000230498CA

l2304286E:
	jal	ra,000000002304203C
	c.beqz	a0,0000000023042888

l23042874:
	c.li	a0,00000001
	jal	ra,000000002303D12E
	c.lw	s0,0(a0)
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,00000000230426F0

l23042888:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_next_seq: 23042890
;;   Called from:
;;     23042998 (in bt_mesh_net_resend)
;;     23042ABC (in bt_mesh_net_encode)
;;     2304790C (in encode_friend_ctl)
;;     2304887A (in bt_mesh_friend_enqueue_tx)
bt_mesh_next_seq proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200D
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	addi	a5,s0,+000006BC
	c.lw	a5,4(s1)
	addi	a4,s1,+00000001
	c.sw	a5,4(a4)
	jal	ra,000000002304203C
	c.bnez	a0,00000000230428E2

l230428AE:
	addi	s0,s0,+000006BC
	c.lw	s0,4(a4)
	lui	a5,000007A1
	addi	a5,a5,+00000200
	bgeu	a5,a4,00000000230428E2

l230428C0:
	lhu	a5,s0,+00000220
	c.beqz	a5,00000000230428CC

l230428C6:
	lhu	a5,s0,+00000304
	c.bnez	a5,00000000230428E2

l230428CC:
	c.li	a0,00000001
	jal	ra,000000002303D12E
	c.lw	s0,0(a0)
	c.li	a1,00000001
	c.addi	a0,00000001
	jal	ra,00000000230426F0
	c.li	a0,00000000
	jal	ra,00000000230426BA

l230428E2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_net_resend: 230428EE
;;   Called from:
;;     23045F6E (in seg_tx_send_unacked)
bt_mesh_net_resend proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	addi	s3,zero,+00000059
	add	s3,a2,s3
	c.swsp	s2,00000010
	lui	s2,0004200D
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	addi	s2,s2,+000006BC
	c.lw	a1,8(s0)
	lw	s8,s2,+00000000
	addi	s7,s3,+00000069
	c.mv	s1,a1
	c.add	s7,a0
	c.mv	s6,a0
	c.mv	s4,a3
	c.mv	s5,a4
	jal	ra,000000002304203C
	sub	a1,s8,a0
	c.mv	a2,s7
	c.mv	a0,s0
	jal	ra,0000000023040FDE
	c.beqz	a0,0000000023042968

l2304293C:
	c.mv	s0,a0
	c.mv	a1,a0
	lui	a0,000230B9
	addi	a0,a0,+000000DC

l23042948:
	jal	ra,0000000023082388

l2304294C:
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
	c.lwsp	tp,0000002C
	c.addi16sp	00000030
	c.jr	ra

l23042968:
	lw	s0,s2,+00000000
	addi	s3,s3,+00000041
	jal	ra,000000002304203C
	c.add	s3,s6
	addi	s6,s1,+00000008
	sub	a2,s0,a0
	c.li	a3,00000000
	c.mv	a1,s6
	c.mv	a0,s3
	jal	ra,00000000230410E6
	c.mv	s0,a0
	c.beqz	a0,0000000023042998

l2304298C:
	c.mv	a1,a0
	lui	a0,000230B9
	addi	a0,a0,+000000FC
	c.j	0000000023042948

l23042998:
	jal	ra,0000000023042890
	c.lw	s1,8(a5)
	srli	a4,a0,00000010
	sb	a4,a5,+00000002
	c.lw	s1,8(a5)
	srli	a4,a0,00000008
	sb	a4,a5,+00000003
	c.lw	s1,8(a5)
	lw	s0,s2,+00000000
	sb	a0,a5,+00000004
	c.lw	s1,8(a5)
	lbu	s8,a5,+00000007
	lbu	s9,a5,+00000008
	jal	ra,000000002304203C
	sub	a2,s0,a0
	c.li	a3,00000000
	c.mv	a1,s6
	c.mv	a0,s3
	jal	ra,0000000023041042
	c.mv	s0,a0
	c.beqz	a0,00000000230429E6

l230429DA:
	c.mv	a1,a0
	lui	a0,000230B9
	addi	a0,a0,+00000118
	c.j	0000000023042948

l230429E6:
	c.lw	s1,8(s0)
	lw	s2,s2,+00000000
	jal	ra,000000002304203C
	c.mv	a2,s7
	sub	a1,s2,a0
	c.mv	a0,s0
	jal	ra,0000000023040FDE
	c.mv	s0,a0
	c.beqz	a0,0000000023042A0C

l23042A00:
	c.mv	a1,a0
	lui	a0,000230B9
	addi	a0,a0,+00000134
	c.j	0000000023042948

l23042A0C:
	slli	a1,s8,00000008
	or	a1,a1,s9
	c.mv	a0,s6
	jal	ra,0000000023045636
	c.beqz	a0,0000000023042A26

l23042A1C:
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,0000000023041E14
	c.j	000000002304294C

l23042A26:
	c.mv	a2,s5
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,000000002303CD5C
	c.j	000000002304294C

;; bt_mesh_net_encode: 23042A32
;;   Called from:
;;     23042C28 (in bt_mesh_net_send)
;;     23044F6A (in send_filter_status)
bt_mesh_net_encode proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	c.swsp	s6,00000000
	c.lw	a0,4(a5)
	c.mv	s1,a0
	c.mv	s2,a1
	lhu	s4,a5,+00000002
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	c.mv	s3,a2
	bne	s4,a5,0000000023042A86

l23042A58:
	c.mv	a0,a1
	jal	ra,00000000230494E0
	c.li	a5,00000007
	bltu	a5,a0,0000000023042A86

l23042A64:
	lui	a0,000230B9
	addi	a0,a0,-000001A8

l23042A6C:
	jal	ra,0000000023082388
	c.li	a0,FFFFFFEA

l23042A72:
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

l23042A86:
	c.mv	a0,s2
	jal	ra,00000000230494E0
	c.li	a5,00000003
	bltu	a5,a0,0000000023042A9C

l23042A92:
	lui	a0,000230B9
	addi	a0,a0,-00000180
	c.j	0000000023042A6C

l23042A9C:
	c.lw	s1,4(a5)
	c.mv	a0,s2
	lhu	a1,a5,+00000004
	jal	ra,00000000230493B4
	lhu	a1,s1,+00000008
	c.mv	a0,s2
	jal	ra,00000000230493B4
	c.li	a1,00000003
	c.mv	a0,s2
	jal	ra,0000000023049382
	c.mv	s0,a0
	jal	ra,0000000023042890
	srli	a5,a0,00000010
	sb	a5,s0,+00000000
	srli	a5,a0,00000008
	sb	a5,s0,+00000001
	sb	a0,s0,+00000002
	c.lw	s1,4(a4)
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	lbu	a1,a4,+0000000B
	bne	s4,a5,0000000023042AE6

l23042AE2:
	ori	a1,a1,+00000080

l23042AE6:
	c.mv	a0,s2
	jal	ra,00000000230493D4
	lbu	a4,s1,+0000000B
	c.lw	s1,0(a5)
	andi	a3,a4,+00000001
	c.beqz	a3,0000000023042BAC

l23042AF8:
	lui	s0,00042014
	lhu	a2,a5,+0000001C
	lhu	a1,s0,+0000036C
	addi	a4,s0,+0000036C
	c.li	a3,00000000
	beq	a1,a2,0000000023042B18

l23042B0E:
	lhu	a3,a4,+0000004A
	bne	a3,a2,0000000023042BD4

l23042B16:
	c.li	a3,00000001

l23042B18:
	lbu	s0,a5,+0000001E
	addi	a5,zero,+00000021
	add	s0,s0,a5
	addi	a5,zero,+0000004A
	add	a3,a3,a5
	c.add	s0,a3
	add	a5,a4,s0
	addi	s1,s0,+00000009
	lbu	s4,a5,+00000008
	addi	a5,s0,+00000019
	c.add	s1,a4
	add	s0,a4,a5

l23042B44:
	lui	s5,0004200D
	addi	s5,s5,+000006BC
	lbu	s6,s5,+00000000
	jal	ra,000000002304203C
	sub	a1,s6,a0
	c.slli	a1,07
	or	a1,s4,a1
	andi	a1,a1,+000000FF
	c.mv	a0,s2
	jal	ra,00000000230493D4
	lw	s4,s5,+00000000
	jal	ra,000000002304203C
	c.mv	a3,s3
	sub	a2,s4,a0
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023041042
	bne	a0,zero,0000000023042A72

l23042B82:
	lw	s1,s2,+00000000
	lw	s2,s5,+00000000
	jal	ra,000000002304203C
	c.mv	a2,s0
	c.lwsp	s8,00000004
	sub	a1,s2,a0
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.lwsp	zero,000000C8
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,0000000023040FDE

l23042BAC:
	c.andi	a4,FFFFFFFE
	sb	a4,s1,+0000000B

l23042BB2:
	lbu	s0,a5,+0000001E
	addi	a4,zero,+00000059
	add	s0,s0,a4
	add	a4,a5,s0
	addi	s1,s0,+00000041
	addi	s0,s0,+00000069
	lbu	s4,a4,+00000040
	c.add	s1,a5
	c.add	s0,a5
	c.j	0000000023042B44

l23042BD4:
	lui	a0,000230B9
	addi	a0,a0,-0000015C
	jal	ra,0000000023082388
	lbu	a5,s1,+0000000B
	c.andi	a5,FFFFFFFE
	sb	a5,s1,+0000000B
	c.lw	s1,0(a5)
	c.j	0000000023042BB2

;; bt_mesh_net_send: 23042BEE
;;   Called from:
;;     2303A994 (in blemesh_net_send)
;;     2304685A (in bt_mesh_trans_send)
;;     2304693E (in bt_mesh_trans_send)
;;     23046A2C (in bt_mesh_ctl_send)
bt_mesh_net_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	lw	s4,a0,+00000004
	addi	a5,zero,+000000FF
	c.mv	s0,a0
	lbu	a4,s4,+0000000B
	c.mv	s2,a1
	c.mv	s1,a2
	c.mv	s3,a3
	bne	a4,a5,0000000023042C1E

l23042C16:
	jal	ra,00000000230401AE
	sb	a0,s4,+0000000B

l23042C1E:
	addi	s5,s2,+00000008
	c.li	a2,00000000
	c.mv	a1,s5
	c.mv	a0,s0
	jal	ra,0000000023042A32
	c.mv	s4,a0
	c.bnez	a0,0000000023042C5A

l23042C30:
	c.lw	s0,4(a5)
	c.li	a4,00000001
	lbu	a3,a5,+0000000B
	beq	a3,a4,0000000023042C74

l23042C3C:
	lhu	a1,a5,+00000004
	c.mv	a0,s5
	jal	ra,0000000023045636
	c.beqz	a0,0000000023042C74

l23042C48:
	c.lw	s0,4(a5)
	lh	a5,a5,+00000004
	bge	zero,a5,0000000023042C74

l23042C52:
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,0000000023041E14

l23042C5A:
	c.mv	a0,s2
	jal	ra,00000000230491C0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s4
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l23042C74:
	c.lw	s0,4(a5)
	lhu	a0,a5,+00000004
	jal	ra,000000002303C478
	c.beqz	a0,0000000023042CB4

l23042C80:
	c.bnez	s1,0000000023042CD8

l23042C82:
	c.mv	a0,s2
	jal	ra,000000002304926E
	lui	s0,0004200D
	addi	a5,s0,+000006BC
	c.mv	a1,a0
	addi	a0,a5,+00000018
	jal	ra,00000000230490F4
	addi	s0,s0,+000006BC
	c.beqz	s1,0000000023042CAA

l23042CA0:
	c.lw	s1,4(a5)
	c.beqz	a5,0000000023042CAA

l23042CA4:
	c.mv	a1,s3
	c.li	a0,00000000
	c.jalr	a5

l23042CAA:
	addi	a0,s0,+0000000C
	jal	ra,0000000023049772
	c.j	0000000023042C5A

l23042CB4:
	c.lw	s0,4(a5)
	lhu	a0,a5,+00000004
	jal	ra,000000002303C3DC
	c.bnez	a0,0000000023042C80

l23042CC0:
	c.lw	s0,4(a5)
	lbu	a4,a5,+0000000B
	c.li	a5,00000001
	beq	a4,a5,0000000023042C5A

l23042CCC:
	c.mv	a2,s3
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,000000002303CD5C
	c.j	0000000023042C5A

l23042CD8:
	c.lw	s1,0(a5)
	c.beqz	a5,0000000023042C82

l23042CDC:
	c.mv	a2,s3
	c.li	a1,00000000
	c.li	a0,00000000
	c.jalr	a5
	c.j	0000000023042C82

;; bt_mesh_subnet_find: 23042CE6
;;   Called from:
;;     2303D216 (in bt_mesh_beacon_recv)
bt_mesh_subnet_find proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a0
	lui	a0,0004200D
	c.swsp	s0,0000000C
	addi	s0,a0,+000006BC
	c.swsp	s5,00000080
	c.mv	s5,a4
	lhu	a4,s0,+00000220
	c.lui	a5,00010000
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s6,00000000
	c.swsp	ra,0000008C
	c.addi	a5,FFFFFFFF
	c.mv	s3,a1
	c.mv	s4,a2
	c.mv	s6,a3
	addi	s1,a0,+000006BC
	beq	a4,a5,0000000023042D44

l23042D1A:
	c.mv	a4,a3
	addi	a0,s0,+00000234
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,s2
	jal	ra,0000000023041E50
	c.bnez	a0,0000000023042D7E

l23042D2C:
	lbu	a5,s0,+00000223
	c.beqz	a5,0000000023042D44

l23042D32:
	c.mv	a4,s6
	c.mv	a3,s4
	c.mv	a2,s3
	c.mv	a1,s2
	addi	a0,s0,+0000028D
	jal	ra,0000000023041E50
	c.bnez	a0,0000000023042DA8

l23042D44:
	lhu	a4,s1,+00000304
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	a4,a5,0000000023042DAE

l23042D50:
	c.mv	a4,s6
	c.mv	a3,s4
	c.mv	a2,s3
	c.mv	a1,s2
	addi	a0,s1,+00000318
	jal	ra,0000000023041E50
	c.beqz	a0,0000000023042D84

l23042D62:
	addi	a0,s1,+000002E8

l23042D66:
	sb	zero,s5,+00000000

l23042D6A:
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

l23042D7E:
	addi	a0,s0,+00000204
	c.j	0000000023042D66

l23042D84:
	lbu	a5,s1,+00000307
	c.beqz	a5,0000000023042DAE

l23042D8A:
	c.mv	a4,s6
	c.mv	a3,s4
	c.mv	a2,s3
	c.mv	a1,s2
	addi	a0,s1,+00000371
	jal	ra,0000000023041E50
	c.beqz	a0,0000000023042DAE

l23042D9C:
	addi	a0,s1,+000002E8

l23042DA0:
	c.li	a5,00000001
	sb	a5,s5,+00000000
	c.j	0000000023042D6A

l23042DA8:
	addi	a0,s0,+00000204
	c.j	0000000023042DA0

l23042DAE:
	c.li	a0,00000000
	c.j	0000000023042D6A

;; bt_mesh_net_decode: 23042DB2
;;   Called from:
;;     230430D4 (in bt_mesh_net_recv)
;;     23045012 (in proxy_complete_pdu)
bt_mesh_net_decode proc
	c.addi16sp	FFFFFFC0
	c.swsp	s1,00000098
	c.swsp	s4,00000014
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.swsp	s5,00000090
	c.swsp	s6,00000010
	c.swsp	s7,0000008C
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.swsp	s10,00000008
	c.swsp	s11,00000084
	c.mv	s4,a1
	lhu	a1,a0,+00000004
	c.li	a5,00000011
	c.mv	s1,a0
	bltu	a5,a1,0000000023042E22

l23042DDC:
	lui	a0,000230B9
	addi	a0,a0,-0000023C
	jal	ra,0000000023082388
	lhu	a1,s1,+00000004
	c.lw	s1,0(a0)
	jal	ra,0000000023049580
	c.mv	a1,a0
	lui	a0,000230BC
	addi	a0,a0,+000002D4
	jal	ra,0000000023082388
	c.li	a5,FFFFFFEA

l23042E02:
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
	c.mv	a0,a5
	c.addi16sp	00000040
	c.jr	ra

l23042E22:
	andi	a5,s4,+00000003
	slli	a4,a5,00000004
	lbu	a5,a2,+00000020
	lui	a6,00042014
	lui	s2,0004200D
	andi	a5,a5,-00000031
	c.or	a5,a4
	sb	a5,a2,+00000020
	lw	s9,a0,+00000000
	lhu	s1,a0,+00000004
	c.lui	s5,00010000
	addi	s10,a6,+0000036C
	addi	s8,s2,+000006BC
	c.mv	s0,a2
	c.mv	s7,a3
	c.li	s3,00000000
	addi	s2,s2,+000006BC
	c.addi	s5,FFFFFFFF
	addi	s11,s10,+0000003A

l23042E62:
	lhu	a5,s8,+00000220
	beq	a5,s5,0000000023043054

l23042E6A:
	lhu	a4,s10,+00000000
	addi	s6,s8,+00000204
	bne	a4,a5,0000000023042ECA

l23042E76:
	lbu	a5,s9,+00000000
	lbu	a4,s10,+00000008
	andi	a5,a5,+0000007F
	bne	a4,a5,0000000023042E9E

l23042E86:
	c.mv	a5,s7
	c.mv	a4,s0
	c.mv	a3,s1
	c.mv	a2,s9
	addi	a1,s10,+00000019
	addi	a0,s10,+00000009
	jal	ra,0000000023041EC6
	beq	a0,zero,0000000023042FD2

l23042E9E:
	lbu	a5,s8,+00000223
	c.beqz	a5,0000000023042ECA

l23042EA4:
	lbu	a5,s9,+00000000
	lbu	a4,s10,+00000029
	andi	a5,a5,+0000007F
	bne	a4,a5,0000000023042ECA

l23042EB4:
	c.mv	a5,s7
	c.mv	a4,s0
	c.mv	a3,s1
	c.mv	a2,s9
	c.mv	a1,s11
	addi	a0,s10,+0000002A
	jal	ra,0000000023041EC6
	beq	a0,zero,0000000023043010

l23042ECA:
	lhu	a4,s10,+0000004A
	lhu	a5,s8,+00000220
	bne	a4,a5,0000000023042EEE

l23042ED6:
	lbu	a5,s9,+00000000
	lbu	a4,s10,+00000052
	andi	a5,a5,+0000007F
	beq	a4,a5,0000000023042FB4

l23042EE6:
	lbu	a5,s8,+00000223
	bne	a5,zero,0000000023042FE0

l23042EEE:
	lbu	a5,s9,+00000000
	lbu	a4,s8,+00000244
	andi	a5,a5,+0000007F
	bne	a4,a5,000000002304301E

l23042EFE:
	c.mv	a5,s7
	c.mv	a4,s0
	c.mv	a3,s1
	c.mv	a2,s9
	addi	a1,s8,+0000026D
	addi	a0,s8,+00000245
	jal	ra,0000000023041EC6
	bne	a0,zero,000000002304301E

l23042F16:
	addi	a5,zero,+000000E4
	add	s3,s3,a5
	c.add	s2,s3
	lhu	a5,s2,+00000220
	sw	s6,s0,+00000000
	sh	a5,s0,+00000004
	c.li	a5,FFFFFFFF
	sh	a5,s0,+00000006
	lw	a5,s7,+00000000
	lbu	a5,a5,+00000001
	andi	a5,a5,+0000007F
	sb	a5,s0,+0000000D
	sltu	a5,zero,a5
	sub	a5,zero,a5
	sb	a5,s0,+0000000F
	lw	a5,s7,+00000000
	lbu	a5,a5,+00000001
	c.srli	a5,00000007
	slli	a4,a5,00000003
	lbu	a5,s0,+00000020
	c.andi	a5,FFFFFFF7
	c.or	a5,a4
	sb	a5,s0,+00000020
	lw	a4,s7,+00000000
	lbu	a5,a4,+00000002
	lbu	a3,a4,+00000003
	lbu	a4,a4,+00000004
	c.slli	a5,10
	c.slli	a3,08
	c.or	a5,a3
	c.or	a5,a4
	c.sw	s0,28(a5)
	lw	a4,s7,+00000000
	lbu	a5,a4,+00000007
	lbu	a4,a4,+00000008
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s0,+0000000A
	c.li	a4,00000003
	beq	s4,a4,0000000023043060

l23042F9C:
	c.bnez	a5,0000000023043060

l23042F9E:
	lui	a0,000230B9
	addi	a0,a0,-00000210

l23042FA6:
	jal	ra,0000000023082388
	addi	a5,zero,-0000004D
	c.j	0000000023042E02

l23042FB0:
	c.li	s3,00000001
	c.j	0000000023042E62

l23042FB4:
	lui	a1,00042014
	lui	a0,00042014
	c.mv	a5,s7
	c.mv	a4,s0
	c.mv	a3,s1
	c.mv	a2,s9
	addi	a1,a1,+000003CF
	addi	a0,a0,+000003BF
	jal	ra,0000000023041EC6
	c.bnez	a0,0000000023042EE6

l23042FD2:
	lbu	a5,s0,+00000020
	ori	a5,a5,+00000004

l23042FDA:
	sb	a5,s0,+00000020
	c.j	0000000023042F16

l23042FE0:
	lbu	a5,s9,+00000000
	lbu	a4,s10,+00000073
	andi	a5,a5,+0000007F
	bne	a4,a5,0000000023042EEE

l23042FF0:
	lui	a1,00042014
	lui	a0,00042014
	c.mv	a5,s7
	c.mv	a4,s0
	c.mv	a3,s1
	c.mv	a2,s9
	addi	a1,a1,+000003F0
	addi	a0,a0,+000003E0
	jal	ra,0000000023041EC6
	bne	a0,zero,0000000023042EEE

l23043010:
	lbu	a5,s0,+00000020
	ori	a5,a5,+00000002
	sb	a5,s0,+00000020
	c.j	0000000023042FD2

l2304301E:
	lbu	a5,s8,+00000223
	c.beqz	a5,0000000023043054

l23043024:
	lbu	a5,s9,+00000000
	lbu	a4,s8,+0000029D
	andi	a5,a5,+0000007F
	bne	a4,a5,0000000023043054

l23043034:
	c.mv	a5,s7
	c.mv	a4,s0
	c.mv	a3,s1
	c.mv	a2,s9
	addi	a1,s8,+000002C6
	addi	a0,s8,+0000029E
	jal	ra,0000000023041EC6
	c.bnez	a0,0000000023043054

l2304304A:
	lbu	a5,s0,+00000020
	ori	a5,a5,+00000002
	c.j	0000000023042FDA

l23043054:
	addi	s8,s8,+000000E4
	beq	s3,zero,0000000023042FB0

l2304305C:
	c.li	a5,FFFFFFFE
	c.j	0000000023042E02

l23043060:
	addi	a5,a5,+00000100
	c.slli	a5,10
	c.srli	a5,00000010
	addi	a4,zero,+000000FB
	bltu	a4,a5,000000002304307A

l23043070:
	lui	a0,000230B9
	addi	a0,a0,-000001D8
	c.j	0000000023042FA6

l2304307A:
	c.li	a5,00000001
	beq	s4,a5,0000000023043090

l23043080:
	lhu	a0,s0,+00000008
	jal	ra,000000002303C3DC
	addi	a5,zero,-0000004D
	bne	a0,zero,0000000023042E02

l23043090:
	c.li	a5,00000000
	c.j	0000000023042E02

;; bt_mesh_net_recv: 23043094
;;   Called from:
;;     2303CC70 (in bt_mesh_scan_cb)
;;     23043344 (in bt_mesh_net_local)
;;     23044FD8 (in proxy_complete_pdu)
bt_mesh_net_recv proc
	c.addi16sp	FFFFFF90
	c.addi4spn	a5,0000000C
	c.swsp	a5,00000000
	lui	a5,000001D0
	c.swsp	s0,00000034
	c.swsp	s2,00000030
	c.swsp	s3,000000AC
	c.mv	s0,a1
	c.swsp	a5,00000080
	c.mv	s2,a0
	c.addi4spn	a5,0000000C
	c.mv	s3,a2
	c.li	a1,00000000
	addi	a2,zero,+00000024
	c.addi4spn	a0,0000002C
	c.swsp	ra,000000B4
	c.swsp	s1,000000B0
	c.swsp	s4,0000002C
	c.swsp	a5,00000004
	jal	ra,00000000230A3A68
	sb	s0,sp,+00000038
	jal	ra,0000000023041D26
	c.beqz	a0,0000000023043190

l230430CC:
	c.mv	a3,sp
	c.addi4spn	a2,0000002C
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,0000000023042DB2
	c.bnez	a0,0000000023043190

l230430DA:
	c.mv	a0,sp
	jal	ra,00000000230494D6
	c.li	a5,00000002
	c.mv	s0,a0
	lhu	s1,sp,+00000004
	bne	s3,a5,00000000230430F6

l230430EC:
	lhu	a1,sp,+00000034
	c.mv	a0,s2
	jal	ra,00000000230455AA

l230430F6:
	lhu	a0,sp,+00000036
	jal	ra,000000002303C478
	c.li	a4,00000001
	c.bnez	a0,000000002304310E

l23043102:
	lhu	a0,sp,+00000036
	jal	ra,000000002303C3DC
	sltu	a4,zero,a0

l2304310E:
	lbu	a5,sp,+0000004C
	c.slli	a4,06
	c.addi4spn	a1,0000002C
	andi	a5,a5,-00000041
	c.or	a5,a4
	c.mv	a0,sp
	sb	a5,sp,+0000004C
	jal	ra,0000000023046BA6
	c.li	a5,FFFFFFF5
	bne	a0,a5,000000002304315A

l2304312C:
	lui	a0,000230B9
	addi	a0,a0,+0000005C
	jal	ra,0000000023082388
	lhu	a4,sp,+0000004E
	lui	a5,00042014
	addi	a5,a5,+00000400
	slli	a3,a4,00000003
	c.add	a5,a3
	c.li	a2,00000000
	c.li	a3,00000000
	c.sw	a5,0(a2)
	c.sw	a5,4(a3)
	lui	a5,0004200F
	sh	a4,a5,+00000434

l2304315A:
	lh	a5,sp,+00000036
	bge	zero,a5,000000002304316A

l23043162:
	c.lwsp	a3,000000E4
	andi	a5,a5,+000000C0
	c.bnez	a5,0000000023043190

l2304316A:
	c.lwsp	s0,00000044
	c.slli	s0,10
	lbu	a5,sp,+0000004C
	c.srli	s0,00000010
	c.add	a0,s0
	c.swsp	a0,00000000
	sh	s1,sp,+00000004
	andi	a5,a5,+00000030
	c.li	a3,00000010
	lbu	a4,sp,+00000039
	bne	a5,a3,00000000230431A0

l2304318A:
	c.li	a5,00000001
	bne	a4,a5,00000000230431BA

l23043190:
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.lwsp	t0,00000134
	c.lwsp	ra,00000158
	c.lwsp	t4,00000068
	c.lwsp	s9,00000088
	c.addi16sp	00000070
	c.jr	ra

l230431A0:
	c.li	s0,00000001
	bgeu	s0,a4,0000000023043190

l230431A6:
	c.bnez	a5,00000000230431BA

l230431A8:
	jal	ra,000000002303FD32
	bne	a0,s0,00000000230431C0

l230431B0:
	lbu	a5,sp,+0000004C
	andi	a5,a5,+00000030
	c.beqz	a5,00000000230431CA

l230431BA:
	jal	ra,000000002303FC54
	c.j	00000000230431CE

l230431C0:
	jal	ra,000000002303FF8E
	bne	a0,s0,0000000023043190

l230431C8:
	c.j	00000000230431B0

l230431CA:
	jal	ra,000000002303FD56

l230431CE:
	c.mv	a1,a0
	c.li	a2,00000000
	c.li	a0,00000001
	jal	ra,000000002303CD12
	c.mv	s0,a0
	c.bnez	a0,00000000230431EA

l230431DC:
	lui	a0,000230B9
	addi	a0,a0,+00000094
	jal	ra,0000000023082388
	c.j	0000000023043190

l230431EA:
	lbu	a5,sp,+0000004C
	c.li	a4,00000010
	andi	a5,a5,+00000030
	beq	a5,a4,0000000023043218

l230431F8:
	c.lwsp	zero,000000C4
	lbu	a5,a4,+00000001
	andi	a5,a5,-00000080
	sb	a5,a4,+00000001
	c.lwsp	zero,000000C4
	lbu	a5,sp,+00000039
	lbu	a3,a4,+00000001
	c.addi	a5,FFFFFFFF
	c.or	a5,a3
	sb	a5,a4,+00000001

l23043218:
	lhu	a2,sp,+00000004
	c.lwsp	zero,00000064
	addi	s4,s0,+00000008
	c.mv	a0,s4
	jal	ra,00000000230492F0
	c.lwsp	a2,00000158
	addi	a2,zero,+00000059
	lbu	a5,sp,+0000004C
	lbu	s1,s2,+0000001E
	c.andi	a5,00000004
	add	s1,s1,a2
	addi	a0,s1,+00000041
	c.add	a0,s2
	c.beqz	a5,0000000023043266

l23043244:
	c.lw	s0,8(a3)
	add	a5,s2,s1
	lbu	a5,a5,+00000040
	lbu	a4,a3,+00000000
	andi	a4,a4,-00000080
	sb	a4,a3,+00000000
	c.lw	s0,8(a4)
	lbu	a3,a4,+00000000
	c.or	a5,a3
	sb	a5,a4,+00000000

l23043266:
	lui	s3,0004200D
	addi	s3,s3,+000006BC
	c.lwsp	a3,000000E4
	lw	a2,s3,+00000000
	c.li	a3,00000000
	c.andi	a5,00000001
	c.sub	a2,a5
	c.mv	a1,s4
	jal	ra,0000000023041042
	c.beqz	a0,0000000023043296

l23043282:
	lui	a0,000230B9
	addi	a0,a0,+000000AC

l2304328A:
	jal	ra,0000000023082388

l2304328E:
	c.mv	a0,s0
	jal	ra,00000000230491C0
	c.j	0000000023043190

l23043296:
	c.lwsp	a3,000000E4
	lw	a1,s3,+00000000
	c.lw	s0,8(a0)
	addi	a2,s1,+00000069
	c.andi	a5,00000001
	c.add	a2,s2
	c.sub	a1,a5
	jal	ra,0000000023040FDE
	c.beqz	a0,00000000230432B8

l230432AE:
	lui	a0,000230B9
	addi	a0,a0,+000000C4
	c.j	000000002304328A

l230432B8:
	jal	ra,000000002303FF8E
	c.li	a5,00000001
	beq	a0,a5,00000000230432EA

l230432C2:
	lbu	a5,sp,+0000004C
	c.li	a4,00000010
	andi	a5,a5,+00000030
	beq	a5,a4,00000000230432EA

l230432D0:
	c.lwsp	a3,000000E4
	c.li	a4,00000001
	c.srli	a5,00000004
	c.andi	a5,00000003
	beq	a5,a4,000000002304330C

l230432DC:
	c.beqz	a5,0000000023043300

l230432DE:
	c.li	a4,00000002
	bne	a5,a4,000000002304328E

l230432E4:
	jal	ra,000000002303FF8E
	c.j	0000000023043304

l230432EA:
	lhu	a1,sp,+00000036
	c.mv	a0,s4
	jal	ra,0000000023045636
	c.beqz	a0,00000000230432D0

l230432F6:
	lh	a5,sp,+00000036
	bge	zero,a5,00000000230432D0

l230432FE:
	c.j	000000002304328E

l23043300:
	jal	ra,000000002303FD32

l23043304:
	c.addi	a0,FFFFFFFF
	sltiu	a0,a0,+00000001
	c.beqz	a0,000000002304328E

l2304330C:
	c.li	a2,00000000
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002303CD5C
	c.j	000000002304328E

;; bt_mesh_net_local: 23043318
bt_mesh_net_local proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,0004200D
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	addi	s1,s1,+000006D4

l23043328:
	c.mv	a0,s1
	jal	ra,0000000023049134
	c.mv	s0,a0
	c.bnez	a0,000000002304333C

l23043332:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2304333C:
	addi	a0,s0,+00000008
	c.li	a2,00000001
	c.li	a1,00000000
	jal	ra,0000000023043094
	c.mv	a0,s0
	jal	ra,00000000230491C0
	c.j	0000000023043328

;; bt_mesh_net_start: 23043350
;;   Called from:
;;     23041C96 (in bt_mesh_provision)
bt_mesh_net_start proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002303FE8C
	c.li	a5,00000001
	bne	a0,a5,0000000023043398

l23043360:
	jal	ra,000000002303D326

l23043364:
	jal	ra,000000002303FF8E
	c.li	a5,00000002
	beq	a0,a5,0000000023043376

l2304336E:
	jal	ra,00000000230454B6
	jal	ra,000000002303CD2C

l23043376:
	jal	ra,000000002303BE8C
	jal	ra,00000000230484AC
	lui	a5,0004200E
	lhu	s0,a5,-00000724
	jal	ra,000000002303C3B0
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023044A3A

l23043398:
	jal	ra,000000002303D388
	c.j	0000000023043364

;; bt_mesh_net_init: 2304339E
;;   Called from:
;;     23041DF4 (in bt_mesh_init)
bt_mesh_net_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200D
	addi	s0,s0,+000006BC
	lui	a1,00023043
	addi	a0,s0,+00000180
	addi	a1,a1,-000007CE
	c.swsp	ra,00000084
	jal	ra,0000000023049780
	addi	a0,s0,+0000000C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a1,00023043
	addi	a1,a1,+00000318
	c.addi	sp,00000010
	jal	zero,0000000023049750

;; ack_complete: 230433D2
ack_complete proc
	lui	a5,0004200F
	c.li	a4,FFFFFFFF
	sb	a4,a5,+00000B4C
	c.jr	ra

;; prov_capabilities: 230433DE
;;   Called from:
;;     23044244 (in prov_msg_recv)
;;     2304480E (in bt_mesh_pb_gatt_recv)
prov_capabilities proc
	c.jr	ra

;; prov_failed: 230433E0
prov_failed proc
	lbu	a1,a0,+00000000
	lui	a0,000230B9
	addi	a0,a0,+00000664
	jal	zero,0000000023082388

;; prov_buf_init: 230433F0
;;   Called from:
;;     230436E2 (in send_input_complete)
;;     2304379E (in prov_send_fail_msg)
;;     230438FC (in prov_confirm)
;;     23043978 (in prov_invite)
;;     23043B2E (in prov_random)
;;     23043C84 (in prov_data)
;;     2304450A (in send_pub_key)
prov_buf_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a1
	c.li	a1,00000005
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,00000000230490EC
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023049306

;; adv_buf_create: 23043412
;;   Called from:
;;     23043568 (in prov_send)
;;     2304366A (in prov_send)
;;     23043722 (in bearer_ctl_send)
;;     23043A4C (in gen_prov_ack_send)
adv_buf_create proc
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+00000190
	c.li	a1,0000000A
	c.li	a0,00000000
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002303CD12
	c.mv	s0,a0
	c.bnez	a0,0000000023043434

l23043428:
	lui	a0,000230B9
	addi	a0,a0,+000001E8
	jal	ra,0000000023082388

l23043434:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; free_segments: 2304343E
;;   Called from:
;;     23043490 (in prov_clear_tx)
;;     2304364C (in prov_send)
;;     23043674 (in prov_send)
free_segments proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042014
	addi	s0,s0,+00000460
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	addi	s1,s0,+0000000C

l23043452:
	lw	a0,s0,+0000013C
	c.beqz	a0,0000000023043472

l23043458:
	sw	zero,s0,+0000013C
	c.lw	a0,20(a4)
	c.addi	s0,00000004
	lbu	a5,a4,+00000008
	c.andi	a5,FFFFFFFB
	sb	a5,a4,+00000008
	jal	ra,00000000230491C0
	bne	s0,s1,0000000023043452

l23043472:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; prov_clear_tx: 2304347C
;;   Called from:
;;     230434AE (in gen_prov_ack)
;;     23043564 (in prov_send)
;;     2304371E (in bearer_ctl_send)
;;     2304384E (in reset_adv_link)
;;     23043D8E (in prov_pub_key)
prov_clear_tx proc
	lui	a0,00042014
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+000005A8
	c.swsp	ra,00000084
	jal	ra,000000002304986E
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002304343E

;; gen_prov_ack: 23043494
gen_prov_ack proc
	lui	a5,00042014
	addi	a5,a5,+00000460
	lw	a4,a5,+0000013C
	c.beqz	a4,00000000230434B2

l230434A2:
	lbu	a4,a0,+00000004
	lbu	a5,a5,+00000138
	bne	a4,a5,00000000230434B2

l230434AE:
	jal	zero,000000002304347C

l230434B2:
	c.jr	ra

;; send_reliable: 230434B4
;;   Called from:
;;     23043634 (in prov_send)
;;     23043768 (in bearer_ctl_send)
send_reliable proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	s0,00042014
	c.swsp	ra,0000008C
	jal	ra,0000000023048D2A
	addi	a5,s0,+00000460
	sw	a0,a5,+00000130
	sw	a1,a5,+00000134
	addi	s0,s0,+00000460
	c.li	s1,00000000
	c.li	s2,00000003
	lui	s3,0004200F

l230434E0:
	lw	a0,s0,+0000013C
	c.beqz	a0,0000000023043504

l230434E6:
	c.addi	s1,00000001
	c.li	a2,00000000
	beq	s1,s2,00000000230434F6

l230434EE:
	lw	a5,s0,+00000140
	c.li	a1,00000000
	c.bnez	a5,00000000230434FA

l230434F6:
	addi	a1,s3,-000004BC

l230434FA:
	jal	ra,000000002303CD5C
	c.addi	s0,00000004
	bne	s1,s2,00000000230434E0

l23043504:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; prov_send: 23043512
;;   Called from:
;;     230436E8 (in send_input_complete)
;;     230437AC (in prov_send_fail_msg)
;;     23043924 (in prov_confirm)
;;     230439EE (in prov_invite)
;;     23043B42 (in prov_random)
;;     23043C8A (in prov_data)
;;     23044542 (in send_pub_key)
prov_send proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	lui	s1,00042014
	c.swsp	s2,00000010
	c.lui	a1,0000F000
	addi	s2,s1,+00000460
	c.swsp	s0,00000014
	addi	a1,a1,-000005A0
	c.mv	s0,a0
	addi	a0,s2,+00000170
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	jal	ra,00000000230498CA
	lw	a0,s2,+00000004
	c.beqz	a0,0000000023043564

l23043546:
	c.mv	a2,s0
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
	c.li	a1,00000003
	c.addi16sp	00000030
	jal	zero,00000000230455D6

l23043564:
	jal	ra,000000002304347C
	jal	ra,0000000023043412
	c.mv	s2,a0
	addi	a0,zero,-00000037
	beq	s2,zero,0000000023043652

l23043576:
	addi	s1,s1,+00000460
	lbu	a5,s1,+00000138
	addi	a3,zero,+000000FD
	addi	s4,zero,+00000080
	addi	a4,a5,-00000001
	andi	a4,a4,+000000FF
	bltu	a3,a4,000000002304359A

l23043592:
	addi	s4,a5,+00000001
	andi	s4,s4,+000000FF

l2304359A:
	lw	a1,s1,+00000120
	addi	s3,s2,+00000008
	c.mv	a0,s3
	sb	s4,s1,+00000138
	jal	ra,0000000023049352
	c.mv	a1,s4
	c.mv	a0,s3
	jal	ra,0000000023049306
	lbu	a5,s0,+00000004
	c.li	a4,00000014
	c.li	a1,00000000
	bgeu	a4,a5,00000000230435D4

l230435C0:
	addi	a1,a5,-00000014
	andi	a1,a1,+000000FF
	c.li	a5,00000017
	srl	a1,a1,a5
	c.addi	a1,00000001
	andi	a1,a1,+000000FF

l230435D4:
	c.slli	a1,02
	andi	a1,a1,+000000FC
	c.mv	a0,s3
	jal	ra,0000000023049306
	lhu	a1,s0,+00000004
	c.mv	a0,s3
	jal	ra,0000000023049336
	lbu	a1,s0,+00000004
	c.lw	s0,0(a0)
	jal	ra,00000000230412B2
	c.mv	a1,a0
	c.mv	a0,s3
	jal	ra,0000000023049306
	sw	s2,s1,+0000013C
	lhu	a1,s0,+00000004
	c.li	a5,00000014
	bgeu	a5,a1,000000002304360C

l2304360A:
	c.li	a1,00000014

l2304360C:
	slli	s2,a1,00000010
	c.lw	s0,0(a1)
	srli	s2,s2,00000010
	c.mv	a2,s2
	c.mv	a0,s3
	jal	ra,00000000230492F0
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,00000000230493EC
	c.mv	s6,s1
	c.li	s5,00000000
	c.li	s7,00000008
	c.li	s8,00000017

l2304362E:
	lhu	a5,s0,+00000004
	c.bnez	a5,000000002304363C

l23043634:
	jal	ra,00000000230434B4
	c.li	a0,00000000
	c.j	0000000023043652

l2304363C:
	bne	s5,s7,000000002304366A

l23043640:
	lui	a0,000230B7
	addi	a0,a0,+000007D8
	jal	ra,0000000023082388
	jal	ra,000000002304343E
	c.li	a0,FFFFFFF9

l23043652:
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

l2304366A:
	jal	ra,0000000023043412
	c.addi	s6,00000004
	c.addi	s5,00000004
	c.bnez	a0,000000002304367E

l23043674:
	jal	ra,000000002304343E
	addi	a0,zero,-00000037
	c.j	0000000023043652

l2304367E:
	sw	a0,s6,+0000013C
	lhu	a1,s0,+00000004
	bgeu	s8,a1,000000002304368C

l2304368A:
	c.li	a1,00000017

l2304368C:
	slli	s3,a1,00000010
	lw	a1,s1,+00000120
	addi	s2,a0,+00000008
	c.mv	a0,s2
	jal	ra,0000000023049352
	c.mv	a1,s4
	c.mv	a0,s2
	jal	ra,0000000023049306
	ori	a1,s5,+00000002
	andi	a1,a1,+000000FF
	c.mv	a0,s2
	jal	ra,0000000023049306
	c.lw	s0,0(a1)
	srli	s3,s3,00000010
	c.mv	a2,s3
	c.mv	a0,s2
	jal	ra,00000000230492F0
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,00000000230493EC
	c.j	000000002304362E

;; send_input_complete: 230436CC
;;   Called from:
;;     23044700 (in bt_mesh_input_number)
;;     2304474A (in bt_mesh_input_string)
send_input_complete proc
	c.addi16sp	FFFFFFD0
	c.addi4spn	a5,0000000C
	c.swsp	a5,00000088
	lui	a5,00000060
	c.swsp	a5,0000000C
	c.addi4spn	a0,00000014
	c.addi4spn	a5,0000000C
	c.li	a1,00000004
	c.swsp	ra,00000094
	c.swsp	a5,0000008C
	jal	ra,00000000230433F0
	c.addi4spn	a0,00000014
	jal	ra,0000000023043512
	c.beqz	a0,00000000230436FA

l230436EE:
	lui	a0,000230BA
	addi	a0,a0,-00000688
	jal	ra,0000000023082388

l230436FA:
	c.lwsp	a2,00000130
	lui	a5,00042014
	c.li	a4,00000005
	sb	a4,a5,+00000488
	c.addi16sp	00000030
	c.jr	ra

;; bearer_ctl_send: 2304370A
;;   Called from:
;;     23044612 (in gen_prov_ctl)
;;     23044678 (in gen_prov_ctl)
;;     230448D2 (in protocol_timeout)
bearer_ctl_send proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s4,0000000C
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s0,a0
	c.mv	s4,a1
	c.swsp	a2,00000084
	jal	ra,000000002304347C
	jal	ra,0000000023043412
	c.beqz	a0,000000002304377E

l23043728:
	lui	s1,00042014
	addi	s1,s1,+00000460
	lw	a1,s1,+00000120
	addi	s2,a0,+00000008
	c.mv	s3,a0
	c.mv	a0,s2
	jal	ra,0000000023049352
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,0000000023049306
	slli	a1,s0,00000002
	ori	a1,a1,+00000003
	andi	a1,a1,+000000FF
	c.mv	a0,s2
	jal	ra,0000000023049306
	c.lwsp	a2,00000084
	c.mv	a1,s4
	c.mv	a0,s2
	jal	ra,00000000230492F0
	sw	s3,s1,+0000013C
	jal	ra,00000000230434B4
	c.li	a0,00000000

l2304376E:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2304377E:
	addi	a0,zero,-00000037
	c.j	000000002304376E

;; prov_send_fail_msg: 23043784
;;   Called from:
;;     230438B4 (in prov_confirm)
;;     23043B1A (in prov_random)
;;     23043C32 (in prov_data)
;;     23043D60 (in prov_dh_key_gen)
;;     23043DDC (in prov_start)
;;     230441C2 (in prov_msg_recv)
;;     230442CE (in gen_prov_cont)
;;     2304442C (in gen_prov_start)
;;     230444CC (in send_pub_key)
;;     230447CA (in bt_mesh_pb_gatt_recv)
prov_send_fail_msg proc
	c.addi16sp	FFFFFFD0
	c.addi4spn	a5,0000000C
	c.swsp	a5,00000088
	lui	a5,00000070
	c.swsp	s0,00000014
	c.swsp	a5,0000000C
	c.mv	s0,a0
	c.addi4spn	a5,0000000C
	c.li	a1,00000009
	c.addi4spn	a0,00000014
	c.swsp	ra,00000094
	c.swsp	a5,0000008C
	jal	ra,00000000230433F0
	c.mv	a1,s0
	c.addi4spn	a0,00000014
	jal	ra,0000000023049306
	c.addi4spn	a0,00000014
	jal	ra,0000000023043512
	c.beqz	a0,00000000230437BE

l230437B2:
	lui	a0,000230BA
	addi	a0,a0,-00000784
	jal	ra,0000000023082388

l230437BE:
	lui	a0,00042014
	addi	a1,zero,+00000020
	addi	a0,a0,+00000460
	jal	ra,0000000023048EBA
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	c.jr	ra

;; reset_state: 230437D6
;;   Called from:
;;     23043866 (in reset_adv_link)
;;     2304488C (in bt_mesh_pb_gatt_close)
;;     230448D6 (in protocol_timeout)
;;     23044A1E (in bt_mesh_prov_init)
reset_state proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042014
	c.swsp	s1,00000080
	addi	s1,s0,+00000460
	addi	a0,s1,+00000170
	c.swsp	ra,00000084
	jal	ra,000000002304986E
	lbu	a5,s1,+0000007C
	c.beqz	a5,00000000230437FC

l230437F4:
	c.li	a1,00000000
	c.li	a0,00000000
	jal	ra,0000000023041ACC

l230437FC:
	c.lw	s1,4(a0)
	c.beqz	a0,0000000023043804

l23043800:
	jal	ra,000000002304AF4A

l23043804:
	addi	a2,zero,+00000148
	c.li	a1,00000000
	addi	a0,s0,+00000460
	jal	ra,00000000230A3A68
	c.li	a5,FFFFFFFF
	sb	a5,s1,+00000125
	jal	ra,00000000230453AC
	sw	a0,s1,+0000012C
	lui	a0,0004200F
	addi	a0,a0,-000004B0
	jal	ra,0000000023050E10
	c.mv	s0,a0
	c.beqz	a0,000000002304383E

l23043830:
	c.mv	a1,a0
	lui	a0,000230BA
	addi	a0,a0,-000006B0
	jal	ra,0000000023082388

l2304383E:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; reset_adv_link: 2304384A
;;   Called from:
;;     230440B8 (in prov_retransmit)
;;     230446BC (in gen_prov_ctl)
reset_adv_link proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002304347C
	lui	a5,0004200F
	lw	a5,a5,+00000438
	c.lw	a5,44(a5)
	c.beqz	a5,0000000023043862

l2304385E:
	c.li	a0,00000001
	c.jalr	a5

l23043862:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230437D6

;; prov_confirm: 2304386A
prov_confirm proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	lui	s0,00042014
	addi	s0,s0,+00000460
	c.mv	a1,a0
	c.li	a2,00000010
	addi	a0,s0,+0000002C
	c.swsp	s2,00000018
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	jal	ra,00000000230A382C
	c.addi4spn	a5,00000018
	c.swsp	a5,00000084
	addi	s2,s0,+0000005C
	lui	a5,00000160
	c.swsp	a5,00000008
	c.mv	a1,s2
	c.addi4spn	a5,00000018
	addi	a0,s0,+0000007C
	c.swsp	a5,00000088
	jal	ra,0000000023041374
	c.beqz	a0,00000000230438C4

l230438A6:
	lui	a0,000230B9
	addi	a0,a0,+00000494

l230438AE:
	jal	ra,0000000023082388
	c.li	a0,00000007
	jal	ra,0000000023043784

l230438B8:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

l230438C4:
	addi	s1,s0,+0000006C
	c.mv	a2,s1
	c.mv	a1,s2
	addi	a0,s0,+00000008
	jal	ra,0000000023041394
	c.beqz	a0,00000000230438E0

l230438D6:
	lui	a0,000230B9
	addi	a0,a0,+000004BC
	c.j	00000000230438AE

l230438E0:
	addi	s2,s0,+0000003C
	c.li	a1,00000010
	c.mv	a0,s2
	jal	ra,000000002304B7D8
	c.beqz	a0,00000000230438F8

l230438EE:
	lui	a0,000230B9
	addi	a0,a0,+000004E4
	c.j	00000000230438AE

l230438F8:
	c.li	a1,00000005
	c.addi4spn	a0,0000000C
	jal	ra,00000000230433F0
	c.li	a1,00000010
	c.addi4spn	a0,0000000C
	jal	ra,00000000230492DE
	c.mv	a3,a0
	addi	a2,s0,+0000004C
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230413A8
	c.beqz	a0,0000000023043922

l23043918:
	lui	a0,000230B9
	addi	a0,a0,+00000508
	c.j	00000000230438AE

l23043922:
	c.addi4spn	a0,0000000C
	jal	ra,0000000023043512
	c.beqz	a0,0000000023043938

l2304392A:
	lui	a0,000230B9
	addi	a0,a0,+00000530
	jal	ra,0000000023082388
	c.j	00000000230438B8

l23043938:
	c.li	a5,00000006
	sb	a5,s0,+00000028
	c.j	00000000230438B8

;; prov_invite: 23043940
;;   Called from:
;;     23044244 (in prov_msg_recv)
;;     2304480E (in bt_mesh_pb_gatt_recv)
prov_invite proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.addi4spn	a5,0000000C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	a5,00000000
	lbu	a1,a0,+00000000
	lui	a5,00000110
	c.swsp	a5,00000080
	c.addi4spn	a5,0000000C
	c.swsp	a5,00000004
	c.mv	s0,a0
	c.beqz	a1,0000000023043964

l2304395E:
	c.li	a0,00000000
	jal	ra,0000000023041ACC

l23043964:
	lbu	a5,s0,+00000000
	lui	s1,00042014
	c.li	a1,00000001
	addi	s1,s1,+00000460
	c.mv	a0,sp
	sb	a5,s1,+0000007C
	jal	ra,00000000230433F0
	jal	ra,000000002303C46A
	c.mv	a1,a0
	c.mv	a0,sp
	jal	ra,0000000023049306
	c.li	a1,00000001
	c.mv	a0,sp
	jal	ra,0000000023049336
	c.li	a1,00000000
	c.mv	a0,sp
	lui	s0,0004200F
	jal	ra,0000000023049306
	addi	s0,s0,+00000438
	c.lw	s0,0(a5)
	c.mv	a0,sp
	c.lw	a5,12(a1)
	sltu	a1,zero,a1
	jal	ra,0000000023049306
	c.lw	s0,0(a5)
	c.mv	a0,sp
	lbu	a1,a5,+00000011
	jal	ra,0000000023049306
	c.lw	s0,0(a5)
	c.mv	a0,sp
	lhu	a1,a5,+00000012
	jal	ra,0000000023049336
	c.lw	s0,0(a5)
	c.mv	a0,sp
	lbu	a1,a5,+00000014
	jal	ra,0000000023049306
	c.lw	s0,0(a5)
	c.mv	a0,sp
	lhu	a1,a5,+00000016
	jal	ra,0000000023049336
	c.lwsp	zero,00000064
	c.li	a2,0000000B
	addi	a0,s1,+0000007D
	c.addi	a1,00000001
	jal	ra,00000000230A382C
	c.mv	a0,sp
	jal	ra,0000000023043512
	c.beqz	a0,0000000023043A0A

l230439F4:
	lui	a0,000230B9
	addi	a0,a0,+000006C4
	jal	ra,0000000023082388

l23043A00:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l23043A0A:
	c.li	a5,00000002
	sb	a5,s1,+00000028
	c.j	0000000023043A00

;; buf_sent: 23043A12
buf_sent proc
	lui	a0,00042014
	addi	a0,a0,+00000460
	lw	a5,a0,+0000013C
	c.beqz	a5,0000000023043A2C

l23043A20:
	addi	a1,zero,+000001F4
	addi	a0,a0,+00000148
	jal	zero,00000000230498CA

l23043A2C:
	c.jr	ra

;; gen_prov_ack_send: 23043A2E
;;   Called from:
;;     23044188 (in prov_msg_recv)
;;     23044288 (in gen_prov_cont)
;;     230443CC (in gen_prov_start)
gen_prov_ack_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200F
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	addi	s1,s1,-000004B4
	lbu	a5,s1,+00000000
	beq	a5,a0,0000000023043AAC

l23043A4A:
	c.mv	s0,a0
	jal	ra,0000000023043412
	c.mv	s2,a0
	c.beqz	a0,0000000023043AAC

l23043A54:
	lbu	a4,s1,+00000000
	addi	a5,zero,+000000FF
	c.li	s3,00000000
	bne	a4,a5,0000000023043A6E

l23043A62:
	lui	s3,000230CC
	sb	s0,s1,+00000000
	addi	s3,s3,-00000600

l23043A6E:
	lui	a5,00042014
	lw	a1,a5,+00000580
	addi	s1,s2,+00000008
	c.mv	a0,s1
	jal	ra,0000000023049352
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,0000000023049306
	c.li	a1,00000001
	c.mv	a0,s1
	jal	ra,0000000023049306
	c.mv	a0,s2
	c.mv	a1,s3
	c.li	a2,00000000
	jal	ra,000000002303CD5C
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,00000000230491C0

l23043AAC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; prov_random: 23043ABA
prov_random proc
	c.addi16sp	FFFFFF90
	c.swsp	s0,00000034
	c.addi4spn	a5,00000030
	lui	s0,00042014
	addi	s0,s0,+00000460
	c.swsp	a5,00000080
	lui	a5,00000150
	c.swsp	s2,00000030
	c.swsp	a5,00000004
	c.mv	s2,a0
	c.addi4spn	a5,00000030
	c.mv	a1,a0
	c.addi4spn	a3,00000010
	addi	a2,s0,+0000004C
	addi	a0,s0,+0000006C
	c.swsp	ra,000000B4
	c.swsp	s1,000000B0
	c.swsp	a5,00000084
	jal	ra,00000000230413A8
	c.beqz	a0,0000000023043AFE

l23043AEE:
	lui	a0,000230B9
	addi	a0,a0,+000007B0

l23043AF6:
	jal	ra,0000000023082388
	c.li	a0,00000007
	c.j	0000000023043B1A

l23043AFE:
	c.li	a2,00000010
	addi	a1,s0,+0000002C
	c.addi4spn	a0,00000010
	jal	ra,00000000230A37A4
	c.beqz	a0,0000000023043B2A

l23043B0C:
	lui	a0,000230B9
	addi	a0,a0,+000007E0
	jal	ra,0000000023082388
	c.li	a0,00000004

l23043B1A:
	jal	ra,0000000023043784

l23043B1E:
	c.lwsp	a3,00000130
	c.lwsp	s1,00000114
	c.lwsp	t0,00000134
	c.lwsp	ra,00000158
	c.addi16sp	00000070
	c.jr	ra

l23043B2A:
	c.li	a1,00000006
	c.addi4spn	a0,00000004
	jal	ra,00000000230433F0
	addi	s1,s0,+0000003C
	c.li	a2,00000010
	c.mv	a1,s1
	c.addi4spn	a0,00000004
	jal	ra,00000000230492F0
	c.addi4spn	a0,00000004
	jal	ra,0000000023043512
	c.beqz	a0,0000000023043B56

l23043B48:
	lui	a0,000230BA
	addi	a0,a0,-00000800
	jal	ra,0000000023082388
	c.j	0000000023043B1E

l23043B56:
	addi	a5,s0,+0000005C
	c.swsp	a5,00000024
	addi	a3,s0,+0000010D
	c.li	a5,00000010
	c.li	a2,00000003
	c.addi4spn	a1,00000048
	c.addi4spn	a0,00000020
	c.swsp	zero,00000010
	c.swsp	zero,00000090
	c.swsp	zero,00000014
	c.swsp	zero,00000094
	c.swsp	a5,000000A4
	c.swsp	s2,00000028
	c.swsp	a5,000000A8
	c.swsp	s1,0000002C
	c.swsp	a5,000000AC
	jal	ra,0000000023040D34
	c.beqz	a0,0000000023043B8A

l23043B80:
	lui	a0,000230BA
	addi	a0,a0,-000007D8
	c.j	0000000023043AF6

l23043B8A:
	c.li	a5,00000007
	sb	a5,s0,+00000028
	c.j	0000000023043B1E

;; prov_data: 23043B92
prov_data proc
	c.addi16sp	FFFFFF60
	c.swsp	s1,000000C8
	lui	s1,00042014
	c.addi4spn	a5,00000010
	addi	s1,s1,+00000460
	c.swsp	s0,0000004C
	c.swsp	s2,00000048
	c.swsp	a5,0000000C
	addi	s2,s1,+0000010D
	lui	a5,00000060
	addi	s0,s1,+00000008
	lui	a3,000230B9
	c.swsp	s3,000000C4
	c.swsp	a5,0000008C
	c.mv	s3,a0
	c.addi4spn	a5,00000010
	c.addi4spn	a4,00000034
	addi	a3,a3,+00000558
	c.mv	a2,s2
	addi	a1,zero,+00000020
	c.mv	a0,s0
	c.swsp	ra,000000CC
	c.swsp	s4,00000044
	c.swsp	s5,000000C0
	c.swsp	s6,00000040
	c.swsp	s7,000000BC
	c.swsp	s8,0000003C
	c.swsp	a5,00000010
	jal	ra,0000000023040DD4
	c.beqz	a0,0000000023043BF0

l23043BE0:
	lui	a0,000230B9
	addi	a0,a0,+00000560

l23043BE8:
	jal	ra,0000000023082388
	c.li	a0,00000007
	c.j	0000000023043C32

l23043BF0:
	lui	a3,000230B9
	c.addi4spn	a4,00000054
	addi	a3,a3,+00000584
	c.mv	a2,s2
	addi	a1,zero,+00000020
	c.mv	a0,s0
	jal	ra,0000000023040DD4
	bne	a0,zero,0000000023043CFE

l23043C0A:
	c.li	a2,0000000D
	addi	a1,sp,+00000057
	c.addi4spn	a0,00000024
	jal	ra,00000000230A382C
	c.addi4spn	a3,00000054
	c.mv	a2,s3
	c.addi4spn	a1,00000024
	c.addi4spn	a0,00000034
	jal	ra,00000000230413C4
	c.beqz	a0,0000000023043C38

l23043C24:
	lui	a0,000230B9
	addi	a0,a0,+0000058C
	jal	ra,0000000023082388
	c.li	a0,00000006

l23043C32:
	jal	ra,0000000023043784
	c.j	0000000023043C9E

l23043C38:
	lui	a3,000230B9
	c.addi4spn	a4,00000044
	addi	a3,a3,+000005B4
	c.mv	a2,s2
	addi	a1,zero,+00000020
	c.mv	a0,s0
	jal	ra,0000000023040DD4
	c.beqz	a0,0000000023043C5A

l23043C50:
	lui	a0,000230B9
	addi	a0,a0,+000005BC
	c.j	0000000023043BE8

l23043C5A:
	lbu	a2,sp,+00000066
	c.li	a1,00000008
	c.addi4spn	a0,00000018
	c.swsp	a2,00000084
	lbu	s3,sp,+00000064
	lbu	s5,sp,+00000065
	lbu	s0,sp,+00000067
	lbu	s8,sp,+00000068
	lbu	s2,sp,+00000069
	lbu	s7,sp,+0000006A
	lbu	s4,sp,+0000006B
	lbu	s6,sp,+0000006C
	jal	ra,00000000230433F0
	c.addi4spn	a0,00000018
	jal	ra,0000000023043512
	c.lwsp	a2,00000084
	c.beqz	a0,0000000023043CB6

l23043C92:
	lui	a0,000230B9
	addi	a0,a0,+000005DC
	jal	ra,0000000023082388

l23043C9E:
	c.lwsp	t5,00000020
	c.lwsp	s10,00000004
	c.lwsp	s6,00000024
	c.lwsp	s2,00000048
	c.lwsp	a4,00000068
	c.lwsp	a0,00000088
	c.lwsp	t1,000000A8
	c.lwsp	sp,000000C8
	c.lwsp	t4,000001F8
	c.lwsp	s9,0000011C
	c.addi16sp	000000A0
	c.jr	ra

l23043CB6:
	c.slli	s0,08
	or	s0,s0,s8
	c.slli	s2,08
	c.li	a5,FFFFFFFF
	c.slli	s4,08
	c.slli	s0,10
	or	a3,s2,s7
	slli	a1,s3,00000008
	sb	a5,s1,+00000028
	or	a1,a1,s5
	c.addi4spn	a5,00000044
	or	a4,s4,s6
	c.or	a3,s0
	c.addi4spn	a0,00000054
	c.lw	s1,4(s1)
	jal	ra,0000000023041B96
	c.mv	a1,a0
	c.beqz	a0,0000000023043CF6

l23043CE8:
	lui	a0,000230B9
	addi	a0,a0,+00000604
	jal	ra,0000000023082388
	c.j	0000000023043C9E

l23043CF6:
	c.beqz	s1,0000000023043C9E

l23043CF8:
	jal	ra,0000000023045336
	c.j	0000000023043C9E

l23043CFE:
	lui	a0,000230B9
	addi	a0,a0,+00000624
	c.j	0000000023043BE8

;; sys_memcpy_swap.constprop.16: 23043D08
;;   Called from:
;;     23043D34 (in prov_dh_key_gen)
;;     23043D3E (in prov_dh_key_gen)
;;     230444EC (in send_pub_key)
;;     2304451A (in send_pub_key)
;;     2304452C (in send_pub_key)
sys_memcpy_swap.constprop.16 proc
	addi	a5,a1,+0000001F
	c.addi	a1,FFFFFFFF

l23043D0E:
	c.addi	a5,FFFFFFFF
	lbu	a4,a5,+00000001
	c.addi	a0,00000001
	sb	a4,a0,+00000FFF
	bne	a5,a1,0000000023043D0E

l23043D1E:
	c.jr	ra

;; prov_dh_key_gen: 23043D20
;;   Called from:
;;     23043DB4 (in prov_pub_key)
;;     23044032 (in pub_key_ready)
prov_dh_key_gen proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	lui	s0,00042014
	addi	s0,s0,+00000460
	addi	a1,s0,+0000008D
	c.mv	a0,sp
	c.swsp	ra,000000A4
	jal	ra,0000000023043D08
	addi	a1,s0,+000000AD
	c.addi4spn	a0,00000020
	jal	ra,0000000023043D08
	lui	a1,00023044
	addi	a1,a1,+000004A2
	c.mv	a0,sp
	jal	ra,0000000023050EE6
	c.beqz	a0,0000000023043D64

l23043D52:
	lui	a0,000230B9
	addi	a0,a0,+00000648
	jal	ra,0000000023082388
	c.li	a0,00000007
	jal	ra,0000000023043784

l23043D64:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.addi16sp	00000050
	c.jr	ra

;; prov_pub_key: 23043D6C
prov_pub_key proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042014
	addi	a5,s0,+00000460
	c.mv	a1,a0
	addi	a2,zero,+00000040
	addi	a0,a5,+0000008D
	c.swsp	ra,00000084
	jal	ra,00000000230A382C
	jal	ra,0000000023050EC0
	c.bnez	a0,0000000023043DAE

l23043D8E:
	jal	ra,000000002304347C
	addi	a0,s0,+00000460
	c.li	a1,00000001
	jal	ra,0000000023048EBA
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,000230B9
	addi	a0,a0,+00000790
	c.addi	sp,00000010
	jal	zero,0000000023082388

l23043DAE:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023043D20

;; prov_start: 23043DB8
prov_start proc
	c.addi16sp	FFFFFFB0
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	lbu	a1,a0,+00000000
	c.beqz	a1,0000000023043DE2

l23043DCE:
	lui	a0,000230BA
	addi	a0,a0,-00000754

l23043DD6:
	jal	ra,0000000023082388

l23043DDA:
	c.li	a0,00000002
	jal	ra,0000000023043784
	c.j	0000000023043E60

l23043DE2:
	lbu	s3,a0,+00000001
	c.mv	s1,a0
	beq	s3,zero,0000000023043DF8

l23043DEC:
	lui	a0,000230BA
	c.mv	a1,s3
	addi	a0,a0,-00000738
	c.j	0000000023043DD6

l23043DF8:
	lui	s2,00042014
	addi	s4,s2,+00000460
	c.li	a2,00000005
	c.mv	a1,a0
	addi	a0,s4,+00000088
	jal	ra,00000000230A382C
	c.li	a3,00000003
	sb	a3,s4,+00000028
	lbu	a4,s1,+00000002
	c.li	a2,00000001
	c.mv	a0,s2
	lbu	a5,s1,+00000003
	lbu	s0,s1,+00000004
	addi	s2,s2,+00000460
	beq	a4,a2,0000000023043E72

l23043E2A:
	c.beqz	a4,0000000023043E50

l23043E2C:
	c.li	a2,00000002
	beq	a4,a2,0000000023043EA6

l23043E32:
	beq	a4,a3,0000000023043FB4

l23043E36:
	lbu	a3,s1,+00000004
	lbu	a2,s1,+00000003
	lbu	a1,s1,+00000002
	lui	a0,000230BA
	addi	a0,a0,-00000714
	jal	ra,0000000023082388
	c.j	0000000023043DDA

l23043E50:
	c.or	s0,a5
	c.bnez	s0,0000000023043E36

l23043E54:
	c.li	a2,00000010
	c.li	a1,00000000
	addi	a0,s4,+0000004C

l23043E5C:
	jal	ra,00000000230A3A68

l23043E60:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.lwsp	t3,00000178
	c.lwsp	s8,00000198
	c.lwsp	s4,000001B8
	c.addi16sp	00000050
	c.jr	ra

l23043E72:
	c.or	s0,a5
	c.bnez	s0,0000000023043E36

l23043E76:
	lui	s0,0004200F
	addi	s0,s0,+00000438
	c.lw	s0,0(a5)
	c.li	s1,00000010
	addi	s4,s4,+0000004C
	lbu	a2,a5,+00000010
	c.lw	a5,12(a1)
	sub	a0,s1,a2
	c.add	a0,s4
	jal	ra,00000000230A382C
	c.lw	s0,0(a5)
	c.li	a1,00000000
	c.mv	a0,s4
	lbu	a2,a5,+00000010
	sub	a2,s1,a2
	c.j	0000000023043E5C

l23043EA6:
	c.li	a4,00000004
	bltu	a4,a5,0000000023043E36

l23043EAC:
	lui	a4,000230CC
	addi	a4,a4,-0000060C
	c.add	a5,a4
	lbu	s5,a5,+00000000
	beq	s5,zero,0000000023043E36

l23043EBE:
	lui	s4,0004200F
	lw	a4,s4,+00000438
	addi	s4,s4,+00000438
	lhu	a5,a4,+00000012
	and	a5,a5,s5
	c.beqz	a5,0000000023043E36

l23043ED4:
	lbu	a5,a4,+00000011
	bltu	a5,s0,0000000023043E36

l23043EDC:
	c.li	a5,00000010
	bne	s5,a5,0000000023043F4C

l23043EE2:
	c.mv	a1,s0
	c.addi4spn	a0,00000010
	jal	ra,000000002304B7D8
	c.addi4spn	a4,00000010
	addi	a2,zero,+00000024
	c.li	a1,00000009

l23043EF2:
	bne	s0,s3,0000000023043F2A

l23043EF6:
	addi	s2,s2,+0000004C
	c.addi4spn	a5,00000030
	c.add	a5,s0
	c.mv	a2,s0
	c.addi4spn	a1,00000010
	c.mv	a0,s2
	sb	zero,a5,+00000FE0
	jal	ra,00000000230A382C
	c.li	a2,00000010
	c.sub	a2,s0
	c.li	a1,00000000
	add	a0,s2,s0
	jal	ra,00000000230A3A68
	lw	a5,s4,+00000000
	c.addi4spn	a0,00000010
	c.lw	a5,28(a5)
	c.jalr	a5

l23043F24:
	bge	a0,zero,0000000023043E60

l23043F28:
	c.j	0000000023043E36

l23043F2A:
	lbu	a5,a4,+00000000
	and	a5,a5,a2
	addi	a3,a5,+00000037
	bltu	a1,a5,0000000023043F3E

l23043F3A:
	addi	a3,a5,+00000030

l23043F3E:
	c.addi	s3,00000001
	sb	a3,a4,+00000000
	andi	s3,s3,+000000FF
	c.addi	a4,00000001
	c.j	0000000023043EF2

l23043F4C:
	lui	a1,000230B9
	addi	a2,zero,+00000020
	addi	a1,a1,+000001C8
	c.addi4spn	a0,00000010
	jal	ra,00000000230A382C
	c.li	a1,00000004
	c.addi4spn	a0,0000000C
	jal	ra,000000002304B7D8
	c.addi	s0,FFFFFFFF
	c.addi4spn	a5,00000030
	c.slli	s0,02
	c.add	s0,a5
	lw	a4,s0,-00000020
	c.lwsp	a2,000000E4
	c.li	a2,0000000C
	c.li	a1,00000000
	and	a5,a5,a4
	addi	a0,s2,+0000004C
	srli	a4,a5,00000010
	srli	a3,a4,00000008
	c.swsp	a5,00000084
	sb	a4,s2,+00000059
	slli	a4,a5,00000008
	c.slli	a5,10
	c.srli	a5,00000010
	c.srli	a5,00000008
	c.or	a5,a4
	sh	a5,s2,+0000005A
	sb	a3,s2,+00000058
	jal	ra,00000000230A3A68
	lw	a5,s4,+00000000
	c.lwsp	a2,00000064
	c.mv	a0,s5
	c.lw	a5,24(a5)
	c.jalr	a5
	c.j	0000000023043F24

l23043FB4:
	bltu	a4,a5,0000000023043E36

l23043FB8:
	lui	a4,000230CC
	addi	a4,a4,-00000604
	c.add	a5,a4
	lbu	s2,a5,+00000000
	beq	s2,zero,0000000023043E36

l23043FCA:
	lui	a5,0004200F
	lw	a3,a5,+00000438
	addi	s3,a5,+00000438
	lhu	a4,a3,+00000016
	and	a4,a4,s2
	beq	a4,zero,0000000023043E36

l23043FE2:
	lbu	a5,a3,+00000014
	bltu	a5,s0,0000000023043E36

l23043FEA:
	c.li	a5,00000008
	c.li	a1,00000008
	beq	s2,a5,0000000023043FF4

l23043FF2:
	c.li	a1,00000004

l23043FF4:
	addi	a0,a0,+00000460
	jal	ra,0000000023048EBA
	lw	a5,s3,+00000000
	c.mv	a1,s0
	c.mv	a0,s2
	c.lw	a5,32(a5)
	c.jalr	a5
	c.j	0000000023043F24

;; pub_key_ready: 2304400A
pub_key_ready proc
	c.bnez	a0,0000000023044018

l2304400C:
	lui	a0,000230BA
	addi	a0,a0,-000006CC
	jal	zero,0000000023082388

l23044018:
	lui	a0,00042014
	c.addi	sp,FFFFFFF0
	c.li	a1,FFFFFFFE
	addi	a0,a0,+00000460
	c.swsp	ra,00000084
	jal	ra,0000000023048EE2
	c.andi	a0,00000001
	c.beqz	a0,0000000023044036

l2304402E:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023043D20

l23044036:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; prov_complete: 2304403C
prov_complete proc
	c.jr	ra

;; prov_retransmit: 2304403E
prov_retransmit proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042014
	addi	a0,s0,+00000460
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	jal	ra,0000000023048E6C
	c.srai	a0,00000001
	c.andi	a0,00000001
	c.bnez	a0,0000000023044074

l2304405C:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,000230BA
	addi	a0,a0,-000007B0
	c.addi16sp	00000020
	jal	zero,0000000023082388

l23044074:
	jal	ra,0000000023048D2A
	addi	s0,s0,+00000460
	lw	a4,s0,+00000130
	lw	a5,s0,+00000134
	sub	a4,a0,a4
	sltu	a0,a0,a4
	c.sub	a1,a5
	c.sub	a1,a0
	blt	zero,a1,00000000230440A0

l23044094:
	c.bnez	a1,00000000230440BC

l23044096:
	c.lui	a5,00007000
	addi	a5,a5,+00000530
	bgeu	a5,a4,00000000230440BC

l230440A0:
	lui	a0,000230BA
	addi	a0,a0,-0000079C
	jal	ra,0000000023082388
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,000000002304384A

l230440BC:
	c.li	s1,00000000
	c.li	s2,00000003
	lui	s3,0004200F

l230440C4:
	lw	a0,s0,+0000013C
	c.beqz	a0,00000000230440F2

l230440CA:
	c.lw	a0,20(a5)
	c.addi	s1,00000001
	lbu	a5,a5,+00000008
	c.andi	a5,00000004
	c.bnez	a5,00000000230440EC

l230440D6:
	c.li	a2,00000000
	beq	s1,s2,00000000230440E4

l230440DC:
	lw	a5,s0,+00000140
	c.li	a1,00000000
	c.bnez	a5,00000000230440E8

l230440E4:
	addi	a1,s3,-000004BC

l230440E8:
	jal	ra,000000002303CD5C

l230440EC:
	c.addi	s0,00000004
	bne	s1,s2,00000000230440C4

l230440F2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; prov_input_complete: 23044100
prov_input_complete proc
	lui	a0,00042014
	c.addi	sp,FFFFFFF0
	c.li	a1,FFFFFFEF
	addi	a0,a0,+00000460
	c.swsp	ra,00000084
	jal	ra,0000000023048EE2
	c.andi	a0,00000010
	c.beqz	a0,000000002304412C

l23044116:
	lui	a5,0004200F
	lw	a5,a5,+00000438
	lw	t1,a5,+00000024
	beq	t1,zero,000000002304412C

l23044126:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	t1

l2304412C:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; prov_msg_recv: 23044132
;;   Called from:
;;     2304435A (in gen_prov_cont)
;;     2304448E (in gen_prov_start)
prov_msg_recv proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,00042014
	c.swsp	s0,0000000C
	addi	s0,s2,+00000460
	lw	a5,s0,+0000012C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.lw	a5,0(a5)
	c.lui	a1,0000F000
	addi	a1,a1,-000005A0
	addi	a0,s0,+00000170
	lbu	s1,a5,+00000000
	jal	ra,00000000230498CA
	lbu	a1,s0,+00000128
	lw	a0,s0,+0000012C
	jal	ra,00000000230412DE
	c.bnez	a0,0000000023044184

l2304416C:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,000230B9
	addi	a0,a0,+000006E4
	c.addi16sp	00000020
	jal	zero,0000000023082388

l23044184:
	lbu	a0,s0,+00000124
	jal	ra,0000000023043A2E
	lbu	a5,s0,+00000124
	addi	a0,s2,+00000460
	sb	zero,s0,+00000124
	sb	a5,s0,+00000125
	jal	ra,0000000023048E6C
	c.srai	a0,00000005
	c.andi	a0,00000001
	c.beqz	a0,00000000230441C6

l230441A6:
	lui	a0,000230B9
	c.mv	a1,s1
	addi	a0,a0,+000006F4
	jal	ra,0000000023082388

l230441B4:
	c.li	a0,00000003

l230441B6:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,0000000023043784

l230441C6:
	c.li	a5,00000009
	addi	s3,s2,+00000460
	beq	s1,a5,00000000230441FE

l230441D0:
	lbu	a2,s0,+00000028
	beq	a2,s1,00000000230441E8

l230441D8:
	lui	a0,000230B9
	c.mv	a1,s1
	addi	a0,a0,+00000720
	jal	ra,0000000023082388
	c.j	00000000230441B4

l230441E8:
	bgeu	a5,a2,00000000230441FE

l230441EC:
	lui	a0,000230B9
	c.mv	a1,a2
	addi	a0,a0,+00000744
	jal	ra,0000000023082388
	c.li	a0,00000001
	c.j	00000000230441B6

l230441FE:
	lui	a4,000230B9
	addi	a4,a4,+00000674
	lw	a3,s3,+0000012C
	slli	a5,s1,00000003
	c.add	a5,a4
	lhu	a4,a5,+00000004
	lhu	a1,a3,+00000004
	c.addi	a4,00000001
	beq	a4,a1,0000000023044230

l2304421E:
	lui	a0,000230B9
	c.mv	a2,s1
	addi	a0,a0,+0000076C
	jal	ra,0000000023082388
	c.li	a0,00000002
	c.j	00000000230441B6

l23044230:
	c.lw	a3,0(a0)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lw	t1,a5,+00000000
	c.addi	a0,00000001
	c.addi16sp	00000020
	c.jr	t1

;; gen_prov_cont: 23044246
gen_prov_cont proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042014
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	addi	a5,s0,+00000460
	lbu	a4,a5,+00000126
	c.mv	a3,a1
	c.mv	s1,a0
	lbu	a1,a0,+00000004
	addi	s0,s0,+00000460
	c.bnez	a4,000000002304428C

l23044268:
	lbu	a5,a5,+00000125
	bne	a5,a1,000000002304428C

l23044270:
	lui	a0,000230B9
	addi	a0,a0,+000002CC
	jal	ra,0000000023082388
	c.lwsp	s0,00000004
	lbu	a0,s1,+00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023043A2E

l2304428C:
	lbu	a2,s0,+00000124
	beq	a2,a1,00000000230442A8

l23044294:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,000230B9
	addi	a0,a0,+000002DC
	c.addi	sp,00000010
	jal	zero,0000000023082388

l230442A8:
	lbu	s1,s1,+00000005
	lbu	a5,s0,+00000127
	c.srli	s1,00000002
	bgeu	a5,s1,00000000230442D2

l230442B6:
	lui	a0,000230B9
	c.mv	a1,s1
	addi	a0,a0,+00000308
	jal	ra,0000000023082388

l230442C4:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a0,00000002
	c.addi	sp,00000010
	jal	zero,0000000023043784

l230442D2:
	bne	a5,s1,0000000023044302

l230442D6:
	c.li	a1,FFFFFFE9
	add	a5,a5,a1
	lw	a2,s0,+0000012C
	lbu	a1,a2,+00000004
	lhu	a2,a3,+00000004
	c.addi	a5,00000003
	c.add	a5,a1
	andi	a1,a5,+000000FF
	beq	a1,a2,0000000023044302

l230442F4:
	lui	a0,000230B9
	addi	a0,a0,+00000324
	jal	ra,0000000023082388
	c.j	00000000230442C4

l23044302:
	srl	a4,a4,s1
	c.andi	a4,00000001
	c.bnez	a4,000000002304431E

l2304430A:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,000230B9
	addi	a0,a0,+00000348
	c.addi	sp,00000010
	jal	zero,0000000023082388

l2304431E:
	c.li	a0,00000017
	addi	a5,s1,-00000001
	add	a5,a5,a0
	lw	a4,s0,+0000012C
	c.lw	a3,0(a1)
	lhu	a2,a3,+00000004
	c.lw	a4,0(a0)
	c.addi	a5,00000014
	c.add	a0,a5
	jal	ra,00000000230A382C
	lbu	a5,s0,+00000126
	c.li	a1,00000001
	sll	a1,a1,s1
	xori	a1,a1,-00000001
	c.and	a1,a5
	sb	a1,s0,+00000126
	c.bnez	a1,000000002304435E

l23044352:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023044132

l2304435E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; gen_prov_start: 23044368
gen_prov_start proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042014
	c.swsp	s3,00000084
	addi	s3,s0,+00000460
	lbu	a5,s3,+00000126
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.beqz	a5,000000002304439E

l23044384:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	lui	a0,000230B9
	addi	a0,a0,+000003E4
	c.addi16sp	00000020
	jal	zero,0000000023082388

l2304439E:
	lbu	a4,s3,+00000125
	lbu	a5,a0,+00000004
	c.mv	s2,a1
	c.mv	s1,a0
	bne	a4,a5,00000000230443D0

l230443AE:
	lui	a0,000230B9
	addi	a0,a0,+000002CC
	jal	ra,0000000023082388
	c.lwsp	s8,00000004
	lbu	a0,s1,+00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,0000000023043A2E

l230443D0:
	lw	s4,s3,+0000012C
	c.mv	a0,a1
	jal	ra,0000000023049454
	sh	a0,s4,+00000004
	lbu	a5,s1,+00000004
	c.mv	a0,s2
	sb	a5,s3,+00000124
	jal	ra,0000000023049414
	lw	a3,s3,+0000012C
	sb	a0,s3,+00000128
	lhu	a1,a3,+00000004
	c.bnez	a1,0000000023044408

l230443FA:
	lui	a0,000230B9
	addi	a0,a0,+00000414

l23044402:
	jal	ra,0000000023082388
	c.j	000000002304441C

l23044408:
	lhu	a5,a3,+00000006
	bgeu	a5,a1,0000000023044430

l23044410:
	lui	a0,000230B9
	addi	a0,a0,+0000043C
	jal	ra,0000000023082388

l2304441C:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000002
	c.addi16sp	00000020
	jal	zero,0000000023043784

l23044430:
	lbu	a5,s1,+00000005
	addi	s0,s0,+00000460
	c.srli	a5,00000002
	c.beqz	a5,000000002304444C

l2304443C:
	c.li	a4,00000014
	bltu	a4,a1,000000002304444C

l23044442:
	lui	a0,000230B9
	addi	a0,a0,+00000464
	c.j	0000000023044402

l2304444C:
	c.li	a4,00000001
	c.addi	a5,00000001
	sll	a5,a4,a5
	c.addi	a5,FFFFFFFF
	sb	a5,s0,+00000126
	lbu	a5,s1,+00000005
	c.srli	a5,00000002
	sb	a5,s0,+00000127
	lhu	a2,s2,+00000004
	lw	a1,s2,+00000000
	c.lw	a3,0(a0)
	jal	ra,00000000230A382C
	lbu	a5,s0,+00000126
	andi	a5,a5,+000000FE
	sb	a5,s0,+00000126
	c.bnez	a5,0000000023044492

l23044480:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,0000000023044132

l23044492:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; send_pub_key: 230444A2
send_pub_key proc
	c.addi16sp	FFFFFF80
	c.addi4spn	a5,00000018
	c.swsp	a5,00000084
	lui	a5,00000460
	c.swsp	a5,00000008
	c.addi4spn	a5,00000018
	c.swsp	ra,000000BC
	c.swsp	s0,0000003C
	c.swsp	s1,000000B8
	c.swsp	s2,00000038
	c.swsp	s3,000000B4
	c.swsp	a5,00000088
	c.bnez	a0,00000000230444DE

l230444BE:
	lui	a0,000230BA
	addi	a0,a0,-00000658

l230444C6:
	jal	ra,0000000023082388
	c.li	a0,00000007
	jal	ra,0000000023043784

l230444D0:
	c.lwsp	t4,00000130
	c.lwsp	s9,00000114
	c.lwsp	s5,00000134
	c.lwsp	a7,00000158
	c.lwsp	a3,00000178
	c.addi16sp	00000080
	c.jr	ra

l230444DE:
	lui	s0,00042014
	addi	s2,s0,+00000460
	c.mv	a1,a0
	addi	a0,s2,+00000008
	jal	ra,0000000023043D08
	jal	ra,0000000023050EC0
	c.mv	s1,a0
	addi	s3,s0,+00000460
	c.bnez	a0,0000000023044506

l230444FC:
	lui	a0,000230BA
	addi	a0,a0,-0000063C
	c.j	00000000230444C6

l23044506:
	c.li	a1,00000003
	c.addi4spn	a0,0000000C
	jal	ra,00000000230433F0
	addi	a1,zero,+00000020
	c.addi4spn	a0,0000000C
	jal	ra,00000000230492DE
	c.mv	a1,s1
	jal	ra,0000000023043D08
	addi	a1,zero,+00000020
	c.addi4spn	a0,0000000C
	jal	ra,00000000230492DE
	addi	a1,s1,+00000020
	jal	ra,0000000023043D08
	c.lwsp	a2,00000064
	addi	a2,zero,+00000040
	addi	a0,s2,+000000CD
	c.addi	a1,00000001
	jal	ra,00000000230A382C
	c.addi4spn	a0,0000000C
	jal	ra,0000000023043512
	c.beqz	a0,0000000023044556

l23044548:
	lui	a0,000230BA
	addi	a0,a0,-00000620
	jal	ra,0000000023082388
	c.j	00000000230444D0

l23044556:
	addi	a0,s0,+00000460
	jal	ra,0000000023048E6C
	c.srai	a0,00000002
	c.andi	a0,00000001
	c.bnez	a0,0000000023044574

l23044564:
	addi	a0,s0,+00000460
	jal	ra,0000000023048E6C
	c.srai	a0,00000003
	c.andi	a0,00000001
	c.li	a5,00000005
	c.beqz	a0,0000000023044578

l23044574:
	addi	a5,zero,+000000FF

l23044578:
	sb	a5,s3,+00000028
	c.j	00000000230444D0

;; gen_prov_ctl: 2304457E
gen_prov_ctl proc
	lbu	a5,a0,+00000005
	c.li	a4,00000001
	c.srli	a5,00000002
	beq	a5,a4,0000000023044690

l2304458A:
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.mv	s3,a1
	c.mv	s1,a0
	c.beqz	a5,00000000230445B0

l2304459E:
	c.li	a4,00000002
	beq	a5,a4,000000002304469C

l230445A4:
	lui	a0,000230B9
	c.mv	a1,a5
	addi	a0,a0,+000003C4
	c.j	00000000230445C2

l230445B0:
	lhu	a1,a1,+00000004
	c.li	a5,0000000F
	bltu	a5,a1,00000000230445D4

l230445BA:
	lui	a0,000230B9
	addi	a0,a0,+0000036C

l230445C2:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,0000000023082388

l230445D4:
	lui	s0,00042014
	addi	a0,s0,+00000460
	jal	ra,0000000023048E6C
	c.srai	a0,00000001
	c.andi	a0,00000001
	addi	s2,s0,+00000460
	addi	s4,s0,+00000460
	c.beqz	a0,0000000023044630

l230445EE:
	lw	a4,s2,+00000120
	c.lw	s1,0(a5)
	bne	a4,a5,0000000023044616

l230445F8:
	lbu	a5,s2,+00000028
	c.bnez	a5,0000000023044616

l230445FE:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a2,00000000
	c.li	a1,00000000
	c.li	a0,00000001
	c.addi16sp	00000020
	jal	zero,000000002304370A

l23044616:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	lui	a0,000230B9
	addi	a0,a0,+00000398
	c.addi16sp	00000020
	jal	zero,0000000023082388

l23044630:
	lui	s2,0004200F
	addi	s2,s2,+00000438
	lw	a5,s2,+00000000
	lw	a0,s3,+00000000
	c.li	a2,00000010
	c.lw	a5,0(a1)
	jal	ra,00000000230A37A4
	c.bnez	a0,0000000023044680

l2304464A:
	lw	a5,s2,+00000000
	c.lw	a5,40(a5)
	c.beqz	a5,0000000023044656

l23044652:
	c.li	a0,00000001
	c.jalr	a5

l23044656:
	c.lw	s1,0(a5)
	c.li	a1,00000002
	addi	a0,s0,+00000460
	sw	a5,s4,+00000120
	jal	ra,0000000023048EBA
	lw	a5,s4,+0000012C
	c.li	a2,00000000
	c.li	a1,00000000
	c.lw	a5,8(a4)
	sh	zero,a5,+00000004
	c.li	a0,00000001
	c.sw	a5,0(a4)
	jal	ra,000000002304370A
	sb	zero,s4,+00000028

l23044680:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23044690:
	lui	a0,00042014
	addi	a0,a0,+00000460
	jal	zero,0000000023048E6C

l2304469C:
	lui	a0,00042014
	addi	a0,a0,+00000460
	jal	ra,0000000023048E6C
	c.srai	a0,00000001
	c.andi	a0,00000001
	c.beqz	a0,0000000023044680

l230446AE:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	jal	zero,000000002304384A

;; bt_mesh_input_number: 230446C0
;;   Called from:
;;     2303AAB4 (in blemesh_input_num)
bt_mesh_input_number proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	lui	a0,00042014
	c.swsp	s1,00000080
	c.li	a1,FFFFFFFB
	addi	s1,a0,+00000460
	addi	a0,a0,+00000460
	c.swsp	ra,00000084
	jal	ra,0000000023048EE2
	c.andi	a0,00000004
	c.beqz	a0,0000000023044710

l230446E0:
	srli	a5,s0,00000010
	srli	a4,a5,00000008
	sb	a5,s1,+00000059
	slli	a5,s0,00000008
	c.slli	s0,10
	c.srli	s0,00000010
	c.srli	s0,00000008
	c.or	s0,a5
	sb	a4,s1,+00000058
	sh	s0,s1,+0000005A
	jal	ra,00000000230436CC
	c.li	a0,00000000

l23044706:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23044710:
	c.li	a0,FFFFFFEA
	c.j	0000000023044706

;; bt_mesh_input_string: 23044714
;;   Called from:
;;     2303AA1A (in blemesh_input_str)
bt_mesh_input_string proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	lui	a0,00042014
	c.swsp	s0,00000004
	c.li	a1,FFFFFFF7
	addi	s0,a0,+00000460
	addi	a0,a0,+00000460
	c.swsp	ra,00000084
	jal	ra,0000000023048EE2
	c.andi	a0,00000008
	c.beqz	a0,000000002304475A

l23044734:
	lui	a5,0004200F
	lw	a5,a5,+00000438
	c.mv	a1,s1
	addi	a0,s0,+0000004C
	lbu	a2,a5,+00000014
	jal	ra,00000000230A439C
	jal	ra,00000000230436CC
	c.li	a0,00000000

l23044750:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2304475A:
	c.li	a0,FFFFFFEA
	c.j	0000000023044750

;; bt_mesh_pb_gatt_recv: 2304475E
;;   Called from:
;;     2304510A (in proxy_complete_pdu)
bt_mesh_pb_gatt_recv proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	lui	s1,00042014
	addi	s1,s1,+00000460
	c.lw	s1,4(a5)
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	beq	a5,a0,000000002304478E

l23044774:
	lui	a0,000230B9
	addi	a0,a0,+00000238
	jal	ra,0000000023082388
	addi	a0,zero,-00000039

l23044784:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2304478E:
	lhu	a5,a1,+00000004
	c.mv	s0,a1
	c.bnez	a5,00000000230447A6

l23044796:
	lui	a0,000230B9
	c.li	a1,00000000
	addi	a0,a0,+0000025C

l230447A0:
	jal	ra,0000000023082388
	c.j	00000000230447CE

l230447A6:
	c.mv	a0,a1
	jal	ra,0000000023049414
	c.li	a5,00000009
	beq	a0,a5,00000000230447E2

l230447B2:
	lbu	a2,s1,+00000028
	beq	a2,a0,00000000230447D2

l230447BA:
	c.mv	a1,a0
	lui	a0,000230B9
	addi	a0,a0,+00000720
	jal	ra,0000000023082388
	c.li	a0,00000003
	jal	ra,0000000023043784

l230447CE:
	c.li	a0,FFFFFFEA
	c.j	0000000023044784

l230447D2:
	bgeu	a5,a2,00000000230447E2

l230447D6:
	lui	a0,000230B9
	c.mv	a1,a2
	addi	a0,a0,+00000744
	c.j	00000000230447A0

l230447E2:
	lui	a4,000230B9
	addi	a4,a4,+00000674
	slli	a5,a0,00000003
	c.add	a5,a4
	lhu	a1,s0,+00000004
	lhu	a4,a5,+00000004
	beq	a4,a1,000000002304480C

l230447FC:
	c.mv	a2,a0
	lui	a0,000230B9
	addi	a0,a0,+0000076C
	jal	ra,0000000023082388
	c.j	00000000230447CE

l2304480C:
	c.lw	s0,0(a0)
	c.lw	a5,0(a5)
	c.jalr	a5
	c.li	a0,00000000
	c.j	0000000023044784

;; bt_mesh_pb_gatt_open: 23044816
;;   Called from:
;;     23044B20 (in prov_ccc_write)
bt_mesh_pb_gatt_open proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.mv	s2,a0
	lui	a0,00042014
	c.swsp	s1,00000080
	c.li	a1,00000002
	addi	s1,a0,+00000460
	addi	a0,a0,+00000460
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	jal	ra,0000000023048EBA
	andi	s0,a0,+00000002
	c.bnez	s0,0000000023044864

l2304483A:
	c.mv	a0,s2
	jal	ra,000000002304AF30
	lui	a5,0004200F
	lw	a5,a5,+00000438
	sb	zero,s1,+00000028
	c.sw	s1,4(a0)
	c.lw	a5,40(a5)
	c.beqz	a5,0000000023044856

l23044852:
	c.li	a0,00000002
	c.jalr	a5

l23044856:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23044864:
	c.li	s0,FFFFFFF0
	c.j	0000000023044856

;; bt_mesh_pb_gatt_close: 23044868
;;   Called from:
;;     230448B6 (in protocol_timeout)
;;     23044C86 (in proxy_disconnected)
;;     23045470 (in bt_mesh_proxy_prov_disable)
;;     230454A6 (in bt_mesh_proxy_prov_disable)
bt_mesh_pb_gatt_close proc
	lui	a5,00042014
	lw	a5,a5,+00000464
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	bne	a5,a0,0000000023044890

l23044878:
	lui	a5,0004200F
	lw	a5,a5,+00000438
	c.lw	a5,44(a5)
	c.beqz	a5,0000000023044888

l23044884:
	c.li	a0,00000002
	c.jalr	a5

l23044888:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230437D6

l23044890:
	lui	a0,000230B9
	addi	a0,a0,+00000228
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	addi	a0,zero,-00000039
	c.addi	sp,00000010
	c.jr	ra

;; protocol_timeout: 230448A6
protocol_timeout proc
	c.addi	sp,FFFFFFE0
	lui	a5,00042014
	c.swsp	ra,0000008C
	addi	a5,a5,+00000460
	c.lw	a5,4(a0)
	c.beqz	a0,00000000230448C0

l230448B6:
	jal	ra,0000000023044868

l230448BA:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

l230448C0:
	c.li	a4,00000001
	c.li	a2,00000001
	addi	a1,sp,+0000000F
	c.li	a0,00000002
	sb	a4,sp,+0000000F
	sb	zero,a5,+00000126
	jal	ra,000000002304370A
	jal	ra,00000000230437D6
	c.j	00000000230448BA

;; bt_mesh_prov_get: 230448DC
;;   Called from:
;;     2303D046 (in beacon_send)
;;     23041D52 (in bt_mesh_prov_enable)
;;     2304570C (in bt_mesh_proxy_adv_start)
bt_mesh_prov_get proc
	lui	a5,0004200F
	lw	a0,a5,+00000438
	c.jr	ra

;; bt_prov_active: 230448E6
;;   Called from:
;;     2303CEE6 (in beacon_send)
;;     2304490C (in bt_mesh_pb_adv_recv)
bt_prov_active proc
	lui	a0,00042014
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000460
	c.swsp	ra,00000084
	jal	ra,0000000023048E6C
	c.lwsp	a2,00000020
	c.srai	a0,00000001
	c.andi	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_pb_adv_recv: 23044900
;;   Called from:
;;     2303CC64 (in bt_mesh_scan_cb)
bt_mesh_pb_adv_recv proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s1,a0
	jal	ra,00000000230448E6
	c.beqz	a0,000000002304492A

l23044912:
	lhu	a1,s1,+00000004
	c.li	a5,00000005
	bltu	a5,a1,000000002304493C

l2304491C:
	lui	a0,000230B9
	addi	a0,a0,+0000025C

l23044924:
	jal	ra,0000000023082388
	c.j	0000000023044930

l2304492A:
	jal	ra,0000000023041D26
	c.beqz	a0,0000000023044912

l23044930:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2304493C:
	c.mv	a0,s1
	jal	ra,0000000023049482
	c.swsp	a0,00000004
	c.mv	a0,s1
	jal	ra,0000000023049414
	sb	a0,sp,+0000000C
	c.mv	a0,s1
	jal	ra,0000000023049414
	lui	s0,00042014
	sb	a0,sp,+0000000D
	addi	a0,s0,+00000460
	jal	ra,0000000023048E6C
	c.srai	a0,00000001
	andi	a5,a0,+00000001
	addi	s2,s0,+00000460
	c.mv	a0,s0
	c.beqz	a5,000000002304497C

l23044972:
	lw	a4,s2,+00000120
	c.lwsp	s0,000000E4
	bne	a4,a5,0000000023044930

l2304497C:
	lbu	a1,sp,+0000000D
	lui	s0,000230B9
	addi	a5,s0,+000002AC
	c.andi	a1,00000003
	slli	a4,a1,00000003
	c.add	a5,a4
	lbu	a5,a5,+00000005
	lhu	a4,s1,+00000004
	addi	s0,s0,+000002AC
	bgeu	a4,a5,00000000230449AA

l230449A0:
	lui	a0,000230B9
	addi	a0,a0,+00000208
	c.j	0000000023044924

l230449AA:
	addi	a0,a0,+00000460
	jal	ra,0000000023048E6C
	c.srai	a0,00000001
	c.andi	a0,00000001
	lbu	a5,sp,+0000000D
	c.bnez	a0,00000000230449CA

l230449BC:
	andi	a4,a5,+00000003
	c.slli	a4,03
	c.add	a4,s0
	lbu	a4,a4,+00000004
	c.bnez	a4,0000000023044930

l230449CA:
	c.andi	a5,00000003
	c.slli	a5,03
	c.add	s0,a5
	c.lw	s0,0(a5)
	c.mv	a1,s1
	c.addi4spn	a0,00000008
	c.jalr	a5
	c.j	0000000023044930

;; bt_mesh_prov_init: 230449DA
;;   Called from:
;;     23041DEC (in bt_mesh_init)
bt_mesh_prov_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.beqz	a0,0000000023044A22

l230449E4:
	lui	s0,00042014
	addi	s0,s0,+00000460
	lui	a1,00023045
	c.mv	s1,a0
	addi	a1,a1,-0000075A
	addi	a0,s0,+00000170
	jal	ra,0000000023049780
	lui	a1,00023044
	lui	a5,0004200F
	addi	a0,s0,+00000148
	addi	a1,a1,+0000003E
	sw	s1,a5,+00000438
	jal	ra,0000000023049780
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230437D6

l23044A22:
	lui	a0,000230B9
	addi	a0,a0,+00000288
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,FFFFFFEA
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_prov_complete: 23044A3A
;;   Called from:
;;     23043394 (in bt_mesh_net_start)
bt_mesh_prov_complete proc
	lui	a5,0004200F
	lw	a5,a5,+00000438
	lw	t1,a5,+00000030
	beq	t1,zero,0000000023044A4C

l23044A4A:
	c.jr	t1

l23044A4C:
	c.jr	ra

;; bt_mesh_prov_reset: 23044A4E
;;   Called from:
;;     23041D1A (in bt_mesh_reset)
bt_mesh_prov_reset proc
	lui	a5,0004200F
	lw	a5,a5,+00000438
	lw	t1,a5,+00000034
	beq	t1,zero,0000000023044A60

l23044A5E:
	c.jr	t1

l23044A60:
	c.jr	ra

;; prov_ccc_read: 23044A62
;;   Called from:
;;     23044A6A (in proxy_ccc_read)
prov_ccc_read proc
	c.lw	a1,12(a5)
	c.li	a6,00000002
	jal	zero,000000002304C3DA

;; proxy_ccc_read: 23044A6A
proxy_ccc_read proc
	jal	zero,0000000023044A62

;; proxy_sar_timeout: 23044A6E
proxy_sar_timeout proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	lui	a0,000230BA
	addi	a0,a0,-0000022C
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	lw	a0,s0,-00000014
	c.beqz	a0,0000000023044A94

l23044A88:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a1,00000013
	c.addi	sp,00000010
	jal	zero,000000002304B02C

l23044A94:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; find_client.part.0: 23044A9C
;;   Called from:
;;     23044B0C (in prov_ccc_write)
;;     23044B60 (in proxy_ccc_write)
;;     23045122 (in proxy_recv)
;;     230455E2 (in bt_mesh_proxy_send)
find_client.part.0 proc
	lui	a4,0004200E
	lw	a5,a4,-00000550
	addi	a4,a4,-00000550
	beq	a0,a5,0000000023044AC4

l23044AAC:
	c.lw	a4,68(a3)
	c.li	a5,00000000
	bne	a0,a3,0000000023044AC0

l23044AB4:
	c.li	a5,00000001

l23044AB6:
	addi	a0,zero,+00000044
	add	a5,a5,a0
	c.add	a5,a4

l23044AC0:
	c.mv	a0,a5
	c.jr	ra

l23044AC4:
	c.li	a5,00000000
	c.j	0000000023044AB6

;; prov_ccc_write: 23044AC8
prov_ccc_write proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a1,12(a4)
	c.li	a1,00000002
	c.li	s0,FFFFFFF3
	bne	a3,a1,0000000023044AFE

l23044ADA:
	lbu	a1,a2,+00000001
	lbu	a5,a2,+00000000
	c.slli	a1,08
	c.or	a1,a5
	sh	a1,a4,+00000000
	c.li	a5,00000001
	beq	a1,a5,0000000023044B0A

l23044AF0:
	lui	a0,000230BA
	addi	a0,a0,-000004AC
	jal	ra,0000000023082388
	c.li	s0,00000002

l23044AFE:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23044B0A:
	c.mv	s1,a0
	jal	ra,0000000023044A9C
	lbu	a5,a0,+00000006
	c.li	s0,00000002
	c.bnez	a5,0000000023044AFE

l23044B18:
	c.li	a5,00000003
	sb	a5,a0,+00000006
	c.mv	a0,s1
	jal	ra,0000000023044816
	c.j	0000000023044AFE

;; proxy_ccc_write: 23044B26
proxy_ccc_write proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.li	a5,00000002
	c.li	s0,FFFFFFF3
	bne	a3,a5,0000000023044B54

l23044B34:
	lbu	a1,a2,+00000001
	lbu	a5,a2,+00000000
	c.slli	a1,08
	c.or	a1,a5
	c.li	a5,00000001
	beq	a1,a5,0000000023044B5E

l23044B46:
	lui	a0,000230BA
	addi	a0,a0,-000004AC
	jal	ra,0000000023082388
	c.li	s0,00000002

l23044B54:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23044B5E:
	c.swsp	a1,00000084
	jal	ra,0000000023044A9C
	lbu	a5,a0,+00000006
	c.li	s0,00000002
	c.lwsp	a2,00000064
	c.bnez	a5,0000000023044B54

l23044B6E:
	sb	a1,a0,+00000006
	c.addi	a0,00000008
	jal	ra,0000000023049772
	c.j	0000000023044B54

;; filter_add.isra.1: 23044B7A
;;   Called from:
;;     23045068 (in proxy_complete_pdu)
;;     230455B8 (in bt_mesh_proxy_addr_add)
filter_add.isra.1 proc
	c.beqz	a1,0000000023044B8A

l23044B7C:
	lhu	a5,a0,+00000000
	beq	a1,a5,0000000023044B8A

l23044B84:
	c.bnez	a5,0000000023044B8A

l23044B86:
	sh	a1,a0,+00000000

l23044B8A:
	c.jr	ra

;; next_sub.part.6: 23044B8C
;;   Called from:
;;     23045810 (in bt_mesh_proxy_adv_start)
;;     230459BE (in bt_mesh_proxy_adv_start)
next_sub.part.6 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,0004200F
	c.swsp	s0,0000000C
	lw	s0,s2,+00000444
	addi	a4,zero,+000000E4
	c.swsp	s1,00000088
	c.andi	s0,00000001
	add	a4,s0,a4
	lui	s1,0004200D
	addi	a5,s1,+000006BC
	c.swsp	ra,0000008C
	c.swsp	s3,00000084
	addi	s2,s2,+00000444
	addi	s1,s1,+000006BC
	c.add	a5,a4
	lhu	a3,a5,+00000220
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	beq	a3,a4,0000000023044BDA

l23044BC8:
	lbu	a5,a5,+00000224
	c.li	s3,00000001
	beq	a5,s3,0000000023044C02

l23044BD2:
	jal	ra,000000002303FF8E
	beq	a0,s3,0000000023044C02

l23044BDA:
	lw	s0,s2,+00000000
	addi	a5,zero,+000000E4
	c.lui	a4,00010000
	c.addi	s0,00000001
	c.andi	s0,00000001
	add	a5,s0,a5
	c.addi	a4,FFFFFFFF
	c.add	a5,s1
	lhu	a3,a5,+00000220
	beq	a3,a4,0000000023044C32

l23044BF8:
	lbu	a5,a5,+00000224
	c.li	s3,00000001
	bne	a5,s3,0000000023044C2A

l23044C02:
	addi	a0,zero,+000000E4
	add	s0,s0,a0
	lw	a5,s2,+00000000
	c.addi	a5,00000001
	c.andi	a5,00000001
	sw	a5,s2,+00000000
	addi	a0,s0,+00000204
	c.add	a0,s1

l23044C1C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23044C2A:
	jal	ra,000000002303FF8E
	beq	a0,s3,0000000023044C02

l23044C32:
	c.li	a0,00000000
	c.j	0000000023044C1C

;; proxy_disconnected: 23044C36
proxy_disconnected proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200F
	c.swsp	s0,00000004
	addi	a5,a5,+0000043C
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.lw	a5,0(a4)
	lui	s0,0004200E
	c.addi	a4,FFFFFFFF
	c.sw	a5,0(a4)
	lw	a5,s0,-00000550
	addi	s0,s0,-00000550
	beq	a0,a5,0000000023044C70

l23044C5C:
	c.lw	s0,68(a5)
	c.li	s1,00000001
	beq	a0,a5,0000000023044C72

l23044C64:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002303CD2C

l23044C70:
	c.li	s1,00000000

l23044C72:
	addi	a5,zero,+00000044
	add	a5,s1,a5
	c.add	a5,s0
	lbu	a4,a5,+00000006
	c.li	a5,00000003
	bne	a4,a5,0000000023044C8A

l23044C86:
	jal	ra,0000000023044868

l23044C8A:
	addi	a5,zero,+00000044
	add	s1,s1,a5
	addi	a0,s1,+00000014
	c.add	a0,s0
	jal	ra,000000002304986E
	c.add	s0,s1
	c.lw	s0,0(a0)
	jal	ra,000000002304AF4A
	sw	zero,s0,+00000000
	c.j	0000000023044C64

;; proxy_connected: 23044CAA
proxy_connected proc
	c.addi	sp,FFFFFFE0
	lui	a4,0004200F
	addi	a4,a4,+0000043C
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.lw	a4,0(a5)
	c.addi	a5,00000001
	c.sw	a4,0(a5)
	lui	a4,0004200F
	sb	zero,a4,+0000044B
	c.li	a4,00000001
	blt	a4,a5,0000000023044CD8

l23044CD0:
	c.swsp	a0,00000084
	jal	ra,000000002303CD2C
	c.lwsp	a2,00000044

l23044CD8:
	lui	s1,0004200E
	lw	a5,s1,-00000550
	addi	s1,s1,-00000550
	c.beqz	a5,0000000023044D02

l23044CE6:
	c.lw	s1,68(a5)
	c.li	s0,00000001
	c.beqz	a5,0000000023044D04

l23044CEC:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	lui	a0,000230BA
	addi	a0,a0,-000003A0
	c.addi16sp	00000020
	jal	zero,0000000023082388

l23044D02:
	c.li	s0,00000000

l23044D04:
	addi	a5,zero,+00000044
	add	s0,s0,a5
	jal	ra,000000002304AF30
	c.li	a2,00000002
	c.li	a1,00000000
	add	s2,s1,s0
	sw	a0,s2,+00000000
	addi	a0,s0,+00000004
	sb	zero,s2,+00000006
	c.add	a0,s1
	jal	ra,00000000230A3A68
	lw	a5,s2,+00000040
	sh	zero,s2,+0000003C
	sw	a5,s2,+00000038
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; proxy_send: 23044D42
;;   Called from:
;;     23044DF4 (in proxy_segment_and_send)
;;     23044E08 (in proxy_segment_and_send)
;;     23044E36 (in proxy_segment_and_send)
;;     23044E5A (in proxy_segment_and_send)
proxy_send proc
	lui	a5,0004200F
	lbu	a5,a5,+00000440
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.li	a4,00000002
	c.mv	s0,a0
	c.mv	s2,a1
	c.mv	s1,a2
	bne	a5,a4,0000000023044D8E

l23044D60:
	c.li	a2,00000018
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	jal	ra,00000000230A3A68
	lui	a5,0004200E
	addi	a5,a5,-000003D8

l23044D72:
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	c.swsp	a5,00000084
	c.swsp	s2,00000008
	sh	s1,sp,+00000014
	jal	ra,000000002304C7C4

l23044D82:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l23044D8E:
	c.li	a4,00000001
	c.li	a0,00000000
	bne	a5,a4,0000000023044D82

l23044D96:
	c.li	a2,00000018
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	jal	ra,00000000230A3A68
	lui	a5,0004200E
	addi	a5,a5,-00000470
	c.j	0000000023044D72

;; proxy_segment_and_send: 23044DAA
;;   Called from:
;;     23044E98 (in beacon_send)
;;     23044F8E (in send_filter_status)
;;     23045632 (in bt_mesh_proxy_send)
proxy_segment_and_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s0,a2
	c.mv	s4,a1
	c.swsp	ra,0000008C
	c.mv	s3,a0
	jal	ra,000000002304CA12
	c.addi	a0,FFFFFFFD
	lhu	a5,s0,+00000004
	slli	s1,a0,00000010
	c.srli	s1,00000010
	andi	s2,s4,+0000003F
	bgeu	a5,s1,0000000023044DF8

l23044DD6:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,00000000230493D4
	lhu	a2,s0,+00000004
	c.lw	s0,0(a1)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	s0,00000088
	c.mv	a0,s3
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,0000000023044D42

l23044DF8:
	ori	a1,s2,+00000040
	c.mv	a0,s0
	jal	ra,00000000230493D4
	c.lw	s0,0(a1)
	c.mv	a2,s1
	c.mv	a0,s3
	jal	ra,0000000023044D42
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230493EC
	ori	s2,s2,+00000080

l23044E18:
	lhu	a5,s0,+00000004
	c.beqz	a5,0000000023044E3A

l23044E1E:
	c.addi	a5,00000001
	bge	a5,s1,0000000023044E4C

l23044E24:
	ori	a1,s4,+000000C0
	c.mv	a0,s0
	jal	ra,00000000230493D4
	lhu	a2,s0,+00000004
	c.lw	s0,0(a1)
	c.mv	a0,s3
	jal	ra,0000000023044D42

l23044E3A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l23044E4C:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,00000000230493D4
	c.lw	s0,0(a1)
	c.mv	a2,s1
	c.mv	a0,s3
	jal	ra,0000000023044D42
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230493EC
	c.j	0000000023044E18

;; beacon_send: 23044E68
;;   Called from:
;;     23044ED4 (in proxy_send_beacons)
;;     23044EF8 (in proxy_send_beacons)
;;     230452AC (in bt_mesh_proxy_beacon_send)
;;     230452C4 (in bt_mesh_proxy_beacon_send)
beacon_send proc
	c.addi16sp	FFFFFFC0
	c.addi4spn	a5,00000018
	c.swsp	a5,00000084
	lui	a5,00000170
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.mv	s0,a0
	c.mv	s1,a1
	c.swsp	a5,00000008
	c.addi4spn	a0,0000000C
	c.addi4spn	a5,00000018
	c.li	a1,00000001
	c.swsp	ra,0000009C
	c.swsp	a5,00000088
	jal	ra,00000000230490EC
	c.addi4spn	a1,0000000C
	c.mv	a0,s1
	jal	ra,000000002303CE6A
	c.addi4spn	a2,0000000C
	c.mv	a0,s0
	c.li	a1,00000001
	jal	ra,0000000023044DAA
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.addi16sp	00000040
	c.jr	ra

;; proxy_send_beacons: 23044EA6
proxy_send_beacons proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200D
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	addi	a4,a5,+000006BC
	c.swsp	ra,00000084
	lhu	a3,a4,+00000220
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	c.mv	s1,a0
	addi	s0,a5,+000006BC
	beq	a3,a4,0000000023044ED8

l23044EC8:
	lw	a0,a0,-00000008
	lui	a1,0004200E
	addi	a1,a1,-00000740
	jal	ra,0000000023044E68

l23044ED8:
	lhu	a4,s0,+00000304
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	a4,a5,0000000023044EFC

l23044EE4:
	c.lwsp	s0,00000004
	lw	a0,s1,-00000008
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a1,0004200E
	addi	a1,a1,-0000065C
	c.addi	sp,00000010
	jal	zero,0000000023044E68

l23044EFC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; send_filter_status: 23044F06
;;   Called from:
;;     230450B2 (in proxy_complete_pdu)
send_filter_status proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.lw	a1,0(a5)
	c.addi	a1,00000004
	c.mv	s0,a2
	c.mv	s1,a0
	c.swsp	a5,00000080
	c.swsp	a1,00000004
	c.swsp	zero,00000084
	jal	ra,000000002303C3B0
	c.lwsp	s0,000000E4
	sh	a0,sp,+0000000C
	c.li	a1,0000000A
	sh	zero,a5,+00000004
	c.lw	s0,8(a5)
	c.mv	a0,s0
	sh	zero,s0,+00000004
	c.sw	s0,0(a5)
	jal	ra,00000000230490EC
	c.li	a1,00000003
	c.mv	a0,s0
	jal	ra,0000000023049306
	lbu	a4,s1,+00000006
	c.li	a5,00000001
	c.li	a1,00000000
	beq	a4,a5,0000000023044F50

l23044F4E:
	c.li	a1,00000001

l23044F50:
	c.mv	a0,s0
	jal	ra,0000000023049306
	lhu	a1,s1,+00000004
	c.mv	a0,s0
	sltu	a1,zero,a1
	jal	ra,0000000023049336
	c.mv	a1,s0
	c.li	a2,00000001
	c.addi4spn	a0,00000004
	jal	ra,0000000023042A32
	c.mv	a1,a0
	c.beqz	a0,0000000023044F88

l23044F72:
	lui	a0,000230BA
	addi	a0,a0,-00000218

l23044F7A:
	jal	ra,0000000023082388

l23044F7E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l23044F88:
	c.lw	s1,0(a0)
	c.li	a1,00000002
	c.mv	a2,s0
	jal	ra,0000000023044DAA
	c.mv	a1,a0
	c.beqz	a0,0000000023044F7E

l23044F96:
	lui	a0,000230BA
	addi	a0,a0,-000001E8
	c.j	0000000023044F7A

;; proxy_complete_pdu: 23044FA0
;;   Called from:
;;     230451BC (in proxy_recv)
proxy_complete_pdu proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s2,00000028
	c.swsp	ra,000000AC
	c.swsp	s1,000000A8
	lbu	s1,a0,+00000007
	c.li	s2,00000001
	c.mv	s0,a0
	beq	s1,s2,0000000023044FF0

l23044FB6:
	c.beqz	s1,0000000023044FD0

l23044FB8:
	c.li	a5,00000002
	beq	s1,a5,0000000023044FFA

l23044FBE:
	c.li	a5,00000003
	beq	s1,a5,0000000023045104

l23044FC4:
	lui	a0,000230BA
	c.mv	a1,s1
	addi	a0,a0,-000003C0
	c.j	0000000023045022

l23044FD0:
	c.li	a2,00000002
	c.li	a1,00000000
	addi	a0,a0,+00000038
	jal	ra,0000000023043094

l23044FDC:
	c.lw	s0,64(a5)
	sh	zero,s0,+0000003C
	c.lwsp	t4,00000020
	c.sw	s0,56(a5)
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.addi16sp	00000060
	c.jr	ra

l23044FF0:
	addi	a0,a0,+00000038
	jal	ra,000000002303D178
	c.j	0000000023044FDC

l23044FFA:
	c.addi4spn	a5,0000000C
	c.swsp	a5,00000000
	lui	a5,000001D0
	c.swsp	a5,00000080
	c.li	a1,00000003
	c.addi4spn	a5,0000000C
	c.mv	a3,sp
	c.addi4spn	a2,0000002C
	addi	a0,a0,+00000038
	c.swsp	a5,00000004
	jal	ra,0000000023042DB2
	c.mv	a1,a0
	c.beqz	a0,0000000023045028

l2304501A:
	lui	a0,000230BA
	addi	a0,a0,-0000047C

l23045022:
	jal	ra,0000000023082388
	c.j	0000000023044FDC

l23045028:
	c.li	a1,00000009
	c.mv	a0,sp
	jal	ra,00000000230493EC
	lhu	a5,sp,+00000004
	c.bnez	a5,0000000023045044

l23045036:
	lui	a0,000230BA
	addi	a0,a0,-0000044C
	jal	ra,0000000023082388
	c.j	0000000023044FDC

l23045044:
	c.mv	a0,sp
	jal	ra,0000000023049414
	c.mv	a1,a0
	bne	a0,s2,000000002304506E

l23045050:
	c.li	s1,00000001
	addi	s2,s0,+00000004

l23045056:
	lhu	a5,sp,+00000004
	bgeu	s1,a5,00000000230450AC

l2304505E:
	c.mv	a0,sp
	jal	ra,0000000023049454
	c.mv	a1,a0
	c.mv	a0,s2
	jal	ra,0000000023044B7A
	c.j	0000000023045056

l2304506E:
	slli	a5,a0,00000018
	c.srai	a5,00000018
	c.beqz	a5,000000002304509A

l23045076:
	bne	a0,s1,00000000230450FA

l2304507A:
	c.li	s1,00000001

l2304507C:
	lhu	a5,sp,+00000004
	bgeu	s1,a5,00000000230450AC

l23045084:
	c.mv	a0,sp
	jal	ra,0000000023049454
	c.beqz	a0,000000002304507C

l2304508C:
	lhu	a5,s0,+00000004
	bne	a5,a0,000000002304507C

l23045094:
	sh	zero,s0,+00000004
	c.j	000000002304507C

l2304509A:
	lhu	a5,sp,+00000004
	c.bnez	a5,00000000230450B8

l230450A0:
	lui	a0,000230BA
	addi	a0,a0,-00000428
	jal	ra,0000000023082388

l230450AC:
	c.mv	a2,sp
	c.addi4spn	a1,0000002C
	c.mv	a0,s0
	jal	ra,0000000023044F06
	c.j	0000000023044FDC

l230450B8:
	c.mv	a0,sp
	jal	ra,0000000023049414
	c.mv	a1,a0
	c.beqz	a0,00000000230450D4

l230450C2:
	beq	a0,s2,00000000230450E6

l230450C6:
	lui	a0,000230BA
	addi	a0,a0,-00000408
	jal	ra,0000000023082388
	c.j	00000000230450AC

l230450D4:
	c.li	a2,00000002
	c.li	a1,00000000
	addi	a0,s0,+00000004
	jal	ra,00000000230A3A68
	sb	s2,s0,+00000006
	c.j	00000000230450AC

l230450E6:
	c.li	a2,00000002
	c.li	a1,00000000
	addi	a0,s0,+00000004
	jal	ra,00000000230A3A68
	c.li	a5,00000002
	sb	a5,s0,+00000006
	c.j	00000000230450AC

l230450FA:
	lui	a0,000230BA
	addi	a0,a0,-000003E8
	c.j	0000000023045022

l23045104:
	addi	a1,a0,+00000038
	c.lw	a0,0(a0)
	jal	ra,000000002304475E
	c.j	0000000023044FDC

;; proxy_recv: 23045110
proxy_recv proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	a1,00000084
	c.mv	s2,a2
	c.mv	s0,a3
	jal	ra,0000000023044A9C
	beq	a0,zero,000000002304526A

l2304512A:
	c.lwsp	a2,00000064
	c.bnez	s0,000000002304513E

l2304512E:
	lui	a0,000230BA
	addi	a0,a0,-00000380

l23045136:
	jal	ra,0000000023082388
	c.li	s0,FFFFFFEA
	c.j	00000000230451F6

l2304513E:
	lbu	a5,s2,+00000000
	c.lw	a1,12(a4)
	andi	a5,a5,+0000003F
	c.addi	a5,FFFFFFFD
	sltu	a4,zero,a4
	sltiu	a5,a5,+00000001
	beq	a4,a5,0000000023045160

l23045156:
	lui	a0,000230BA
	addi	a0,a0,-00000368
	c.j	0000000023045136

l23045160:
	addi	s3,a0,+00000038
	addi	a2,s0,-00000001
	c.mv	s1,a0
	c.mv	a0,s3
	c.swsp	a2,00000084
	jal	ra,00000000230494E0
	c.lwsp	a2,00000084
	bgeu	a0,a2,0000000023045182

l23045178:
	lui	a0,000230BA
	addi	a0,a0,-0000033C
	c.j	0000000023045136

l23045182:
	lbu	a5,s2,+00000000
	c.li	a1,00000002
	lhu	a4,s1,+0000003C
	srli	a3,a5,00000006
	beq	a3,a1,0000000023045206

l23045194:
	c.li	a1,00000003
	beq	a3,a1,000000002304523A

l2304519A:
	c.li	a1,00000001
	beq	a3,a1,00000000230451C2

l230451A0:
	c.beqz	a4,00000000230451AC

l230451A2:
	lui	a0,000230BA
	addi	a0,a0,-00000328
	c.j	0000000023045136

l230451AC:
	sb	a5,s1,+00000007

l230451B0:
	addi	a1,s2,+00000001
	c.mv	a0,s3
	jal	ra,00000000230492F0
	c.mv	a0,s1
	jal	ra,0000000023044FA0
	c.j	00000000230451F6

l230451C2:
	c.beqz	a4,00000000230451CE

l230451C4:
	lui	a0,000230BA
	addi	a0,a0,-000002F8
	c.j	0000000023045136

l230451CE:
	c.lui	a1,00005000
	addi	a1,a1,-000001E0
	addi	a0,s1,+00000014
	c.swsp	a2,00000084
	jal	ra,00000000230498CA
	lbu	a5,s2,+00000000
	andi	a5,a5,+0000003F
	sb	a5,s1,+00000007

l230451EA:
	c.lwsp	a2,00000084
	addi	a1,s2,+00000001
	c.mv	a0,s3
	jal	ra,00000000230492F0

l230451F6:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l23045206:
	c.bnez	a4,0000000023045212

l23045208:
	lui	a0,000230BA
	addi	a0,a0,-000002CC
	c.j	0000000023045136

l23045212:
	lbu	a4,s1,+00000007
	andi	a5,a5,+0000003F
	beq	a4,a5,0000000023045228

l2304521E:
	lui	a0,000230BA
	addi	a0,a0,-000002A8
	c.j	0000000023045136

l23045228:
	c.lui	a1,00005000
	addi	a1,a1,-000001E0
	addi	a0,s1,+00000014
	c.swsp	a2,00000084
	jal	ra,00000000230498CA
	c.j	00000000230451EA

l2304523A:
	c.bnez	a4,0000000023045246

l2304523C:
	lui	a0,000230BA
	addi	a0,a0,-0000027C
	c.j	0000000023045136

l23045246:
	lbu	a4,s1,+00000007
	andi	a5,a5,+0000003F
	beq	a4,a5,000000002304525C

l23045252:
	lui	a0,000230BA
	addi	a0,a0,-00000258
	c.j	0000000023045136

l2304525C:
	addi	a0,s1,+00000014
	c.swsp	a2,00000084
	jal	ra,000000002304986E
	c.lwsp	a2,00000084
	c.j	00000000230451B0

l2304526A:
	addi	s0,zero,-00000039
	c.j	00000000230451F6

;; bt_mesh_proxy_beacon_send: 23045270
;;   Called from:
;;     2303E5C0 (in net_key_add)
;;     230426DE (in bt_mesh_net_sec_update)
;;     230452D4 (in bt_mesh_proxy_beacon_send)
bt_mesh_proxy_beacon_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	lui	s1,0004200D
	c.lui	s0,00010000
	lui	s3,0004200E
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.mv	s2,a0
	addi	s1,s1,+000006BC
	c.addi	s0,FFFFFFFF
	lui	s4,0004200E
	addi	s3,s3,-0000065C

l23045298:
	beq	s2,zero,00000000230452C8

l2304529C:
	lui	a5,0004200E
	lw	a0,a5,-00000550
	addi	s0,a5,-00000550
	c.beqz	a0,00000000230452B0

l230452AA:
	c.mv	a1,s2
	jal	ra,0000000023044E68

l230452B0:
	c.lw	s0,68(a0)
	c.beqz	a0,00000000230452E0

l230452B4:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a1,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,0000000023044E68

l230452C8:
	lhu	a5,s1,+00000220
	beq	a5,s0,00000000230452D6

l230452D0:
	addi	a0,s4,-00000740
	c.jal	0000000023045270

l230452D6:
	lhu	a5,s1,+00000304
	c.mv	s2,s3
	bne	a5,s0,0000000023045298

l230452E0:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; bt_mesh_proxy_identity_start: 230452F0
;;   Called from:
;;     23040078 (in node_identity_set)
;;     23045370 (in bt_mesh_proxy_identity_enable)
;;     23045394 (in bt_mesh_proxy_identity_enable)
bt_mesh_proxy_identity_start proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,00000001
	sb	a5,a0,+00000020
	c.mv	s0,a0
	jal	ra,0000000023048D2E
	lui	a5,0004200E
	addi	a5,a5,-00000740
	c.sw	s0,36(a0)
	c.sub	s0,a5
	lui	a5,000B823F
	addi	a5,a5,-000001F7
	c.srai	s0,00000002
	add	s0,s0,a5
	lui	a5,0004200F
	c.lwsp	a2,00000020
	sw	s0,a5,+00000444
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_proxy_identity_stop: 2304532C
;;   Called from:
;;     23040086 (in node_identity_set)
;;     2304017C (in gatt_proxy_set)
;;     23040194 (in gatt_proxy_set)
bt_mesh_proxy_identity_stop proc
	sb	zero,a0,+00000020
	sw	zero,a0,+00000024
	c.jr	ra

;; bt_mesh_proxy_identity_enable: 23045336
;;   Called from:
;;     23043CF8 (in prov_data)
bt_mesh_proxy_identity_enable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023041D26
	c.li	a5,FFFFFFF5
	c.beqz	a0,00000000230453A2

l23045344:
	lui	s0,0004200D
	addi	a5,s0,+000006BC
	lhu	a3,a5,+00000220
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	addi	s0,s0,+000006BC
	c.li	a5,00000000
	beq	a3,a4,0000000023045376

l2304535E:
	lbu	a3,s0,+00000224
	c.li	a4,00000002
	beq	a3,a4,0000000023045376

l23045368:
	lui	a0,0004200E
	addi	a0,a0,-00000740
	jal	ra,00000000230452F0
	c.li	a5,00000001

l23045376:
	lhu	a3,s0,+00000304
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	beq	a3,a4,00000000230453A0

l23045382:
	lbu	a3,s0,+00000308
	c.li	a4,00000002
	beq	a3,a4,00000000230453A0

l2304538C:
	lui	a0,0004200E
	addi	a0,a0,-0000065C
	jal	ra,00000000230452F0

l23045398:
	jal	ra,000000002303CD2C
	c.li	a5,00000000
	c.j	00000000230453A2

l230453A0:
	c.bnez	a5,0000000023045398

l230453A2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_proxy_get_buf: 230453AC
;;   Called from:
;;     23043818 (in reset_state)
bt_mesh_proxy_get_buf proc
	lui	a0,0004200E
	addi	a0,a0,-00000550
	c.lw	a0,64(a5)
	sh	zero,a0,+0000003C
	addi	a0,a0,+00000038
	c.sw	a0,0(a5)
	c.jr	ra

;; bt_mesh_proxy_prov_enable: 230453C2
;;   Called from:
;;     23041C58 (in bt_mesh_provision)
;;     23041D88 (in bt_mesh_prov_enable)
bt_mesh_proxy_prov_enable proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	addi	s0,s0,+00000440
	lbu	a5,s0,+00000000
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.li	s1,00000001
	addi	a0,zero,-00000045
	beq	a5,s1,000000002304541C

l230453E0:
	c.li	a0,FFFFFFF0
	c.bnez	a5,000000002304541C

l230453E4:
	lui	a0,0004200E
	addi	a0,a0,-00000434
	jal	ra,000000002304C64A
	lui	a5,0004200F
	sb	s1,a5,+0000044A
	lui	a5,0004200E
	lw	a4,a5,-00000550
	sb	s1,s0,+00000000
	addi	a5,a5,-00000550
	c.beqz	a4,0000000023045410

l2304540A:
	c.li	a4,00000003
	sb	a4,a5,+00000006

l23045410:
	c.lw	a5,68(a4)
	c.li	a0,00000000
	c.beqz	a4,000000002304541C

l23045416:
	c.li	a4,00000003
	sb	a4,a5,+0000004A

l2304541C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_proxy_prov_disable: 23045426
;;   Called from:
;;     23041C34 (in bt_mesh_provision)
;;     23041DC6 (in bt_mesh_prov_disable)
bt_mesh_proxy_prov_disable proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	addi	s0,s0,+00000440
	lbu	a5,s0,+00000000
	c.beqz	a5,00000000230454B0

l2304543C:
	c.li	a4,00000001
	c.mv	s1,a0
	c.li	a0,FFFFFFF0
	bne	a5,a4,0000000023045494

l23045446:
	lui	a0,0004200E
	addi	a0,a0,-00000434
	jal	ra,000000002304C38A
	sb	zero,s0,+00000000
	lui	s0,0004200E
	lw	a0,s0,-00000550
	addi	s0,s0,-00000550
	c.beqz	a0,0000000023045478

l23045464:
	lbu	a4,s0,+00000006
	c.li	a5,00000003
	bne	a4,a5,0000000023045478

l2304546E:
	c.bnez	s1,000000002304549E

l23045470:
	jal	ra,0000000023044868
	sb	zero,s0,+00000006

l23045478:
	c.lw	s0,68(a0)
	c.beqz	a0,000000002304548E

l2304547C:
	lbu	a4,s0,+0000004A
	c.li	a5,00000003
	bne	a4,a5,000000002304548E

l23045486:
	c.beqz	s1,00000000230454A6

l23045488:
	c.li	a1,00000013
	jal	ra,000000002304B02C

l2304548E:
	jal	ra,000000002303CD2C
	c.li	a0,00000000

l23045494:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2304549E:
	c.li	a1,00000013
	jal	ra,000000002304B02C
	c.j	0000000023045478

l230454A6:
	jal	ra,0000000023044868
	sb	zero,s0,+0000004A
	c.j	000000002304548E

l230454B0:
	addi	a0,zero,-00000045
	c.j	0000000023045494

;; bt_mesh_proxy_gatt_enable: 230454B6
;;   Called from:
;;     2304336E (in bt_mesh_net_start)
bt_mesh_proxy_gatt_enable proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	addi	s0,s0,+00000440
	lbu	a5,s0,+00000000
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.li	s1,00000002
	addi	a0,zero,-00000045
	beq	a5,s1,0000000023045508

l230454D4:
	c.li	a0,FFFFFFF0
	c.bnez	a5,0000000023045508

l230454D8:
	lui	a0,0004200E
	addi	a0,a0,-0000039C
	jal	ra,000000002304C64A
	lui	a5,0004200E
	lw	a4,a5,-00000550
	sb	s1,s0,+00000000
	addi	a5,a5,-00000550
	c.beqz	a4,00000000230454FC

l230454F6:
	c.li	a4,00000001
	sb	a4,a5,+00000006

l230454FC:
	c.lw	a5,68(a4)
	c.li	a0,00000000
	c.beqz	a4,0000000023045508

l23045502:
	c.li	a4,00000001
	sb	a4,a5,+0000004A

l23045508:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_proxy_gatt_disconnect: 23045512
;;   Called from:
;;     23040198 (in gatt_proxy_set)
;;     2304558C (in bt_mesh_proxy_gatt_disable)
bt_mesh_proxy_gatt_disconnect proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200E
	lw	a0,s0,-00000550
	c.swsp	ra,00000084
	addi	s0,s0,-00000550
	c.beqz	a0,0000000023045540

l23045526:
	lbu	a5,s0,+00000006
	c.li	a4,00000001
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	bltu	a4,a5,0000000023045540

l23045536:
	c.li	a1,00000013
	sb	zero,s0,+00000006
	jal	ra,000000002304B02C

l23045540:
	c.lw	s0,68(a0)
	c.beqz	a0,0000000023045564

l23045544:
	lbu	a5,s0,+0000004A
	c.li	a4,00000001
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	bltu	a4,a5,0000000023045564

l23045554:
	sb	zero,s0,+0000004A
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a1,00000013
	c.addi	sp,00000010
	jal	zero,000000002304B02C

l23045564:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_proxy_gatt_disable: 2304556C
;;   Called from:
;;     23041CF4 (in bt_mesh_reset)
bt_mesh_proxy_gatt_disable proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	addi	s0,s0,+00000440
	lbu	a5,s0,+00000000
	c.swsp	ra,00000084
	addi	a0,zero,-00000045
	c.beqz	a5,00000000230455A2

l23045584:
	c.li	a4,00000002
	c.li	a0,FFFFFFF0
	bne	a5,a4,00000000230455A2

l2304558C:
	jal	ra,0000000023045512
	lui	a0,0004200E
	addi	a0,a0,-0000039C
	jal	ra,000000002304C38A
	c.li	a0,00000000
	sb	zero,s0,+00000000

l230455A2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_proxy_addr_add: 230455AA
;;   Called from:
;;     230430F2 (in bt_mesh_net_recv)
bt_mesh_proxy_addr_add proc
	lbu	a4,a0,-00000032
	c.li	a3,00000001
	bne	a4,a3,00000000230455BC

l230455B4:
	addi	a0,a0,-00000034
	jal	zero,0000000023044B7A

l230455BC:
	c.li	a3,00000002
	bne	a4,a3,00000000230455D4

l230455C2:
	c.bnez	a1,00000000230455CC

l230455C4:
	c.jr	ra

l230455C6:
	sh	zero,a0,+00000FCC
	c.jr	ra

l230455CC:
	lhu	a4,a0,-00000034
	beq	a4,a1,00000000230455C6

l230455D4:
	c.jr	ra

;; bt_mesh_proxy_send: 230455D6
;;   Called from:
;;     23043560 (in prov_send)
;;     230456C0 (in bt_mesh_proxy_relay)
bt_mesh_proxy_send proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.swsp	a2,00000004
	c.swsp	ra,0000008C
	c.mv	s0,a0
	jal	ra,0000000023044A9C
	c.lwsp	s0,00000084
	c.lwsp	a2,00000064
	c.bnez	a0,0000000023045604

l230455EC:
	lui	a0,000230BA
	addi	a0,a0,-00000530
	jal	ra,0000000023082388
	addi	a0,zero,-00000039

l230455FC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23045604:
	lbu	a4,a0,+00000006
	addi	a5,a1,-00000003
	sltiu	a5,a5,+00000001
	c.addi	a4,FFFFFFFD
	sltiu	a4,a4,+00000001
	beq	a4,a5,000000002304562A

l2304561A:
	lui	a0,000230BA
	addi	a0,a0,-00000518
	jal	ra,0000000023082388
	c.li	a0,FFFFFFEA
	c.j	00000000230455FC

l2304562A:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,0000000023044DAA

;; bt_mesh_proxy_relay: 23045636
;;   Called from:
;;     23042A16 (in bt_mesh_net_resend)
;;     23042C42 (in bt_mesh_net_send)
;;     230432F0 (in bt_mesh_net_recv)
bt_mesh_proxy_relay proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	lui	s0,0004200E
	addi	s0,s0,-00000550
	c.swsp	s1,000000A0
	c.swsp	s2,00000020
	c.swsp	s3,0000009C
	c.swsp	s4,0000001C
	c.swsp	s5,00000098
	c.swsp	s6,00000018
	c.mv	s1,a0
	c.swsp	ra,000000A4
	c.mv	s2,a1
	addi	s3,s0,+00000088
	c.li	a0,00000000
	lui	s4,00000200
	c.li	s5,00000001
	c.li	s6,00000002

l23045662:
	c.addi4spn	a5,00000010
	c.swsp	a5,00000080
	c.swsp	a5,00000084
	c.lw	s0,0(a5)
	c.swsp	s4,00000004
	c.beqz	a5,000000002304567E

l2304566E:
	lbu	a5,s0,+00000006
	bne	a5,s5,000000002304569A

l23045676:
	lhu	a5,s0,+00000004
	beq	a5,s2,00000000230456A6

l2304567E:
	addi	s0,s0,+00000044
	bne	s0,s3,0000000023045662

l23045686:
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

l2304569A:
	bne	a5,s6,000000002304567E

l2304569E:
	lhu	a5,s0,+00000004
	beq	a5,s2,000000002304567E

l230456A6:
	c.li	a1,00000001
	c.addi4spn	a0,00000004
	jal	ra,00000000230490EC
	lhu	a2,s1,+00000004
	c.lw	s1,0(a1)
	c.addi4spn	a0,00000004
	jal	ra,00000000230492F0
	c.lw	s0,0(a0)
	c.addi4spn	a2,00000004
	c.li	a1,00000000
	jal	ra,00000000230455D6
	c.li	a0,00000001
	c.j	000000002304567E

;; bt_mesh_proxy_adv_start: 230456C8
;;   Called from:
;;     2303CB60 (in adv_thread)
bt_mesh_proxy_adv_start proc
	lui	a5,0004200F
	lbu	a5,a5,+00000440
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
	c.bnez	a5,00000000230456EE

l230456EA:
	c.li	s1,FFFFFFFF
	c.j	00000000230457DC

l230456EE:
	jal	ra,0000000023041D26
	bne	a0,zero,0000000023045804

l230456F6:
	lui	s1,0004200F
	lbu	a5,s1,+0000044A
	addi	s1,s1,+0000044A
	c.bnez	a5,0000000023045766

l23045704:
	lui	s0,000230CC
	addi	s0,s0,-000005F0

l2304570C:
	jal	ra,00000000230448DC
	c.mv	s2,a0
	jal	ra,000000002305032A
	c.mv	s5,a0
	jal	ra,00000000230A4220
	lui	s3,0004200E
	lw	a1,s2,+00000000
	addi	s3,s3,-00000428
	c.mv	s4,a0
	c.li	a2,00000010
	addi	a0,s3,+00000002
	jal	ra,00000000230A382C
	lhu	a5,s2,+00000008
	slli	a4,a5,00000008
	c.srli	a5,00000008
	c.or	a5,a4
	sh	a5,s3,+00000012
	lw	a0,s2,+00000004
	c.beqz	a0,0000000023045760

l2304574A:
	jal	ra,00000000230A4220
	c.li	a5,0000001D
	bgeu	a5,a0,0000000023045770

l23045754:
	lui	a0,000230BA
	addi	a0,a0,-00000604
	jal	ra,0000000023082388

l23045760:
	c.li	a0,0000001F
	c.li	a4,00000000
	c.j	000000002304578E

l23045766:
	lui	s0,000230CC
	addi	s0,s0,-000005F8
	c.j	000000002304570C

l23045770:
	addi	a4,zero,+00000024
	sb	a0,sp,+00000001
	sb	a4,sp,+00000000
	lw	a4,s2,+00000004
	sub	a0,a5,a0
	c.li	a5,00000002
	c.swsp	a4,00000080
	c.li	a4,00000001
	bgeu	a5,a0,00000000230457AE

l2304578E:
	beq	s4,zero,00000000230457AE

l23045792:
	slli	a5,a4,00000003
	c.addi	a0,FFFFFFFE
	c.add	a5,sp
	bgeu	a0,s4,00000000230457F8

l2304579E:
	c.li	a3,00000008
	sb	a3,a5,+00000000
	sb	a0,a5,+00000001

l230457A8:
	sw	s5,a5,+00000004
	c.addi	a4,00000001

l230457AE:
	lui	a1,000230BA
	c.mv	a3,sp
	c.li	a2,00000003
	addi	a1,a1,-000004C4
	c.mv	a0,s0
	jal	ra,0000000023050B70
	c.bnez	a0,0000000023045804

l230457C2:
	lui	a5,0004200F
	c.li	a4,00000001
	sb	a4,a5,+0000044B
	lbu	a5,s1,+00000000
	c.beqz	a5,0000000023045804

l230457D2:
	sb	zero,s1,+00000000
	c.lui	s1,0000F000
	addi	s1,s1,-000005A0

l230457DC:
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

l230457F8:
	c.li	a3,00000009
	sb	a3,a5,+00000000
	sb	s4,a5,+00000001
	c.j	00000000230457A8

l23045804:
	jal	ra,0000000023041D26
	beq	a0,zero,00000000230456EA

l2304580C:
	lui	s2,0004200E
	jal	ra,0000000023044B8C
	c.lui	s4,0000F000
	addi	s2,s2,-00000390
	c.mv	s0,a0
	lui	s6,0004200F
	addi	s7,s4,-000005A1
	addi	s5,s2,+0000000B
	lui	s8,000230BA
	lui	s9,000230CC

l23045830:
	lw	a4,s6,+0000043C
	c.li	a5,00000002
	beq	a4,a5,00000000230456EA

l2304583A:
	c.bnez	s0,000000002304584A

l2304583C:
	lui	a0,000230BA
	addi	a0,a0,-000005D8
	jal	ra,0000000023082388
	c.j	00000000230456EA

l2304584A:
	lbu	s3,s0,+00000020
	c.li	a5,00000001
	c.li	s1,FFFFFFFF
	bne	s3,a5,00000000230458E8

l23045856:
	jal	ra,0000000023048D2E
	c.lw	s0,36(a5)
	sub	a4,a0,a5
	bltu	s7,a4,00000000230459AA

l23045864:
	addi	s1,s4,-000005A0
	c.add	s1,a5
	c.sub	s1,a0
	c.li	a1,00000008
	c.mv	a0,s5
	sb	s3,s2,+00000002
	jal	ra,000000002304B7D8
	c.bnez	a0,00000000230458E8

l2304587A:
	c.li	a2,00000006
	c.li	a1,00000000
	c.mv	a0,sp
	jal	ra,00000000230A3A68
	c.li	a2,00000008
	c.mv	a1,s5
	addi	a0,sp,+00000006
	jal	ra,00000000230A382C
	jal	ra,000000002303C3B0
	slli	a5,a0,00000008
	c.srli	a0,00000008
	c.or	a0,a5
	sh	a0,sp,+0000000E
	lbu	a0,s0,+0000001E
	addi	a5,zero,+00000059
	c.mv	a2,sp
	c.addi	a0,00000001
	add	a0,a0,a5
	c.mv	a1,a2
	c.add	a0,s0
	jal	ra,000000002304B872
	c.bnez	a0,00000000230458E8

l230458BA:
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	addi	a0,s2,+00000003
	jal	ra,00000000230A382C
	addi	a1,s8,-000004DC
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000003
	addi	a0,s9,-000005F8
	jal	ra,0000000023050B70
	c.mv	a1,a0
	c.beqz	a0,00000000230459A0

l230458DC:
	lui	a0,000230BA
	addi	a0,a0,-000005B8
	jal	ra,0000000023082388

l230458E8:
	lbu	a5,s0,+00000020
	c.bnez	a5,000000002304594A

l230458EE:
	jal	ra,000000002303FF8E
	c.li	a5,00000001
	c.mv	s3,a0
	bne	a0,a5,00000000230459BE

l230458FA:
	lbu	a1,s0,+0000001E
	addi	a5,zero,+00000059
	lui	a0,0004200E
	add	a1,a1,a5
	addi	a0,a0,-00000390
	sb	zero,a0,+00000002
	c.li	a2,00000008
	c.addi	a0,00000003
	addi	a1,a1,+00000051
	c.add	a1,s0
	jal	ra,00000000230A382C
	lui	a1,000230BA
	lui	a0,000230CC
	addi	a1,a1,-000004F4
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000003
	addi	a0,a0,-000005F0
	jal	ra,0000000023050B70
	c.mv	a1,a0
	c.beqz	a0,00000000230459B4

l2304593E:
	lui	a0,000230BA
	addi	a0,a0,-00000588
	jal	ra,0000000023082388

l2304594A:
	lui	s0,0004200D
	addi	a5,s0,+000006BC
	lhu	a4,a5,+00000220
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	addi	s0,s0,+000006BC
	c.li	s2,00000000
	beq	a4,a5,0000000023045978

l23045964:
	lbu	a5,s0,+00000224
	c.li	s3,00000001
	beq	a5,s3,0000000023045976

l2304596E:
	jal	ra,000000002303FF8E
	bne	a0,s3,0000000023045978

l23045976:
	c.li	s2,00000001

l23045978:
	lhu	a4,s0,+00000304
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	a4,a5,00000000230457DC

l23045984:
	lbu	a5,s0,+00000308
	c.li	s0,00000001
	bne	a5,s0,00000000230459C6

l2304598E:
	beq	s2,zero,00000000230457DC

l23045992:
	c.lui	a5,00002000
	addi	a5,a5,+00000710
	bgeu	a5,s1,00000000230457DC

l2304599C:
	c.mv	s1,a5
	c.j	00000000230457DC

l230459A0:
	lui	a5,0004200F
	sb	s3,a5,+0000044B
	c.j	00000000230458E8

l230459AA:
	sb	zero,s0,+00000020
	sw	zero,s0,+00000024
	c.j	00000000230458E8

l230459B4:
	lui	a5,0004200F
	sb	s3,a5,+0000044B
	c.j	000000002304594A

l230459BE:
	jal	ra,0000000023044B8C
	c.mv	s0,a0
	c.j	0000000023045830

l230459C6:
	jal	ra,000000002303FF8E
	bne	a0,s0,00000000230457DC

l230459CE:
	c.j	000000002304598E

;; bt_mesh_proxy_adv_stop: 230459D0
;;   Called from:
;;     2303CB70 (in adv_thread)
bt_mesh_proxy_adv_stop proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,0004200F
	addi	s0,s0,+0000044B
	lbu	a5,s0,+00000000
	c.swsp	ra,00000084
	c.beqz	a5,0000000023045A02

l230459E4:
	jal	ra,0000000023050B80
	c.mv	a1,a0
	c.beqz	a0,00000000230459FE

l230459EC:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,000230BA
	addi	a0,a0,-00000558
	c.addi	sp,00000010
	jal	zero,0000000023082388

l230459FE:
	sb	zero,s0,+00000000

l23045A02:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_proxy_init: 23045A0A
;;   Called from:
;;     23041E04 (in bt_mesh_init)
bt_mesh_proxy_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200E
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	addi	s0,s0,-00000550
	lui	s2,00023045
	lui	s1,00042014
	c.swsp	s3,00000084
	addi	a1,s2,-00000592
	addi	s3,zero,+00000044
	addi	a0,s0,+00000014
	addi	s1,s1,+000005F8
	c.swsp	ra,0000008C
	sh	s3,s0,+0000003E
	c.sw	s0,64(s1)
	jal	ra,0000000023049780
	addi	a1,s2,-00000592
	addi	a0,s0,+00000058
	addi	s1,s1,+00000044
	sh	s3,s0,+00000082
	sw	s1,s0,+00000084
	jal	ra,0000000023049780
	lui	a0,0004200E
	addi	a0,a0,-000004C8
	jal	ra,000000002304A716
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; send_cb_finalize: 23045A74
;;   Called from:
;;     23046708 (in bt_mesh_trans_send)
;;     23046968 (in bt_mesh_trans_send)
send_cb_finalize proc
	c.beqz	a0,0000000023045AAE

l23045A76:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.lw	a0,0(a5)
	c.mv	s1,a1
	c.mv	s0,a0
	c.beqz	a5,0000000023045A8E

l23045A86:
	c.mv	a2,a1
	c.li	a0,00000000
	c.li	a1,00000000
	c.jalr	a5

l23045A8E:
	lw	t1,s0,+00000004
	beq	t1,zero,0000000023045AA4

l23045A96:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s1
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	t1

l23045AA4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23045AAE:
	c.jr	ra

;; seg_first_send_start: 23045AB0
seg_first_send_start proc
	c.lw	a2,48(a5)
	c.beqz	a5,0000000023045AC0

l23045AB4:
	lw	t1,a5,+00000000
	beq	t1,zero,0000000023045AC0

l23045ABC:
	c.lw	a2,52(a2)
	c.jr	t1

l23045AC0:
	c.jr	ra

;; is_replay: 23045AC2
;;   Called from:
;;     23046C92 (in bt_mesh_trans_recv)
;;     230471BA (in bt_mesh_trans_recv)
is_replay proc
	lbu	a6,a0,+00000020
	c.li	a5,00000010
	andi	a4,a6,+00000030
	beq	a4,a5,0000000023045B62

l23045AD0:
	andi	a5,a6,+00000040
	c.li	a4,00000000
	c.beqz	a5,0000000023045AEE

l23045AD8:
	lui	a2,0004200E
	addi	a2,a2,-00000578
	c.li	a5,00000000
	c.li	a3,00000005

l23045AE4:
	lhu	a4,a2,+00000000
	c.bnez	a4,0000000023045B18

l23045AEA:
	c.beqz	a1,0000000023045AF2

l23045AEC:
	c.sw	a1,0(a2)

l23045AEE:
	c.mv	a0,a4
	c.jr	ra

l23045AF2:
	lhu	a3,a0,+00000008
	lui	a4,0004200D
	addi	a5,a5,+00000078
	c.slli	a5,03
	addi	a4,a4,+000006BC
	c.add	a5,a4
	sh	a3,a5,+0000000C

l23045B0A:
	c.lw	a0,28(a4)
	c.sw	a5,16(a4)
	c.lw	a0,32(a4)
	c.andi	a4,00000001
	sb	a4,a5,+0000000E
	c.j	0000000023045B62

l23045B18:
	lhu	a7,a0,+00000008
	bne	a4,a7,0000000023045B70

l23045B20:
	lui	a3,0004200D
	addi	a5,a5,+00000078
	addi	a4,a3,+000006BC
	slli	t1,a5,00000003
	c.add	a4,t1
	andi	a6,a6,+00000001
	lbu	a4,a4,+0000000E
	addi	a3,a3,+000006BC
	beq	a6,zero,0000000023045B48

l23045B42:
	c.bnez	a4,0000000023045B4A

l23045B44:
	c.li	a4,00000001
	c.j	0000000023045AEE

l23045B48:
	c.bnez	a4,0000000023045B5E

l23045B4A:
	slli	a4,a5,00000003
	c.add	a4,a3
	lw	t1,a4,+00000010
	lw	a6,a0,+0000001C
	c.li	a4,00000001
	bgeu	t1,a6,0000000023045AEE

l23045B5E:
	c.beqz	a1,0000000023045B66

l23045B60:
	c.sw	a1,0(a2)

l23045B62:
	c.li	a4,00000000
	c.j	0000000023045AEE

l23045B66:
	c.slli	a5,03
	c.add	a5,a3
	sh	a7,a5,+0000000C
	c.j	0000000023045B0A

l23045B70:
	c.addi	a5,00000001
	c.addi	a2,00000008
	bne	a5,a3,0000000023045AE4

l23045B78:
	lui	a0,000230BA
	c.addi	sp,FFFFFFF0
	addi	a0,a0,+00000340
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	c.lwsp	a2,00000020
	c.li	a4,00000001
	c.mv	a0,a4
	c.addi	sp,00000010
	c.jr	ra

;; seg_sent: 23045B92
seg_sent proc
	lh	a4,a1,+00000028
	addi	a0,a1,+00000038
	addi	a5,zero,+00000032
	bge	zero,a4,0000000023045BAE

l23045BA2:
	lbu	a1,a1,+0000002C
	add	a5,a1,a5
	addi	a5,a5,+00000190

l23045BAE:
	c.mv	a1,a5
	jal	zero,00000000230498CA

;; ack_timeout: 23045BB4
;;   Called from:
;;     23046B92 (in seg_ack)
;;     230470C6 (in bt_mesh_trans_recv)
ack_timeout proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lbu	s0,a0,+00000012
	addi	a5,zero,+000000FF
	c.mv	s1,a0
	bne	s0,a5,0000000023045BD0

l23045BCA:
	jal	ra,00000000230401AE
	c.mv	s0,a0

l23045BD0:
	c.lw	s1,24(a0)
	jal	ra,000000002309F2C8
	c.lw	s1,16(a5)
	c.andi	a5,0000001F
	c.addi	a5,00000001
	sub	a0,a5,a0
	addi	a5,zero,+00000064
	add	a0,a0,a5
	addi	a5,zero,+00000032
	add	s0,s0,a5
	addi	a5,zero,+00000190
	addi	s0,s0,+00000096
	c.add	a0,s0
	bge	a0,a5,0000000023045C02

l23045BFE:
	addi	a0,zero,+00000190

l23045C02:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; sdu_recv: 23045C0C
;;   Called from:
;;     23047196 (in bt_mesh_trans_recv)
;;     23047212 (in bt_mesh_trans_recv)
sdu_recv proc
	c.addi16sp	FFFFFF30
	c.addi4spn	a5,00000028
	c.swsp	a5,0000008C
	lui	a5,00000680
	c.swsp	a5,00000010
	c.addi4spn	a5,00000028
	c.swsp	s0,00000064
	c.swsp	s3,000000DC
	c.swsp	s4,0000005C
	c.swsp	s5,000000D8
	c.swsp	s9,000000D0
	c.swsp	ra,000000E4
	c.swsp	s1,000000E0
	c.swsp	s2,00000060
	c.swsp	s6,00000058
	c.swsp	s7,000000D4
	c.swsp	s8,00000054
	c.swsp	s10,00000050
	c.swsp	s11,000000CC
	c.swsp	a5,00000090
	c.mv	s3,a4
	c.mv	s0,a0
	c.mv	s9,a1
	c.mv	s5,a2
	c.mv	s4,a3
	lhu	a4,a4,+00000004
	c.li	a5,00000005
	c.beqz	a3,0000000023045C4A

l23045C48:
	c.li	a5,00000009

l23045C4A:
	bge	a4,a5,0000000023045C5E

l23045C4E:
	lui	a0,000230BA
	addi	a0,a0,+00000350

l23045C56:
	jal	ra,0000000023082388
	c.li	s2,FFFFFFEA
	c.j	0000000023045D8E

l23045C5E:
	lbu	a5,s0,+00000020
	c.li	s2,00000000
	andi	a5,a5,+00000040
	beq	a5,zero,0000000023045D8E

l23045C6C:
	lhu	a0,s0,+0000000A
	c.lui	a5,00008000
	c.lui	a4,00004000
	c.xor	a5,a0
	c.li	s7,00000000
	bgeu	a5,a4,0000000023045C82

l23045C7C:
	jal	ra,00000000230402AE
	c.mv	s7,a0

l23045C82:
	lhu	a5,s3,+00000004
	c.li	a4,00000008
	bne	s4,zero,0000000023045C8E

l23045C8C:
	c.li	a4,00000004

l23045C8E:
	c.sub	a5,a4
	sh	a5,s3,+00000004
	srli	a5,s5,00000006
	lui	s1,0004200D
	c.andi	a5,00000001
	addi	s8,s1,+000006BC
	c.bnez	a5,0000000023045CE2

l23045CA4:
	c.lw	s0,32(a5)
	lhu	a7,s0,+0000000A
	lhu	a6,s0,+00000008
	andi	a4,a5,+00000001
	lw	a5,s8,+00000000
	lui	a0,0004200E
	c.swsp	s9,00000000
	c.sub	a5,a4
	c.swsp	a5,00000080
	c.addi4spn	a4,0000001C
	c.mv	a5,s7
	c.mv	a3,s3
	c.mv	a2,s4
	c.li	a1,00000001
	addi	a0,a0,-000007A0
	jal	ra,000000002304121A
	c.mv	s2,a0
	c.li	a5,FFFFFFFE
	c.beqz	a0,0000000023045D82

l23045CD8:
	lui	a0,000230BA
	addi	a0,a0,+00000368
	c.j	0000000023045C56

l23045CE2:
	addi	s1,s1,+000006BC
	c.li	s6,00000000
	andi	s5,s5,+0000003F
	lui	s11,000230BA
	c.li	s10,00000001

l23045CF2:
	c.lw	s0,0(a5)
	lhu	a4,s1,+000001B4
	lhu	a5,a5,+0000001C
	bne	a4,a5,0000000023045D5E

l23045D00:
	lbu	a5,s0,+00000020
	c.andi	a5,00000002
	c.beqz	a5,0000000023045D12

l23045D08:
	lbu	a5,s1,+000001B8
	addi	a0,s1,+000001CA
	c.bnez	a5,0000000023045D16

l23045D12:
	addi	a0,s1,+000001B9

l23045D16:
	lbu	a5,a0,+00000000
	bne	a5,s5,0000000023045D5E

l23045D1E:
	c.lwsp	tp,000001F4
	lhu	a7,s0,+0000000A
	lhu	a6,s0,+00000008
	c.swsp	a5,0000008C
	c.lw	s0,32(a5)
	c.swsp	s9,00000000
	c.mv	a3,s3
	andi	a4,a5,+00000001
	lw	a5,s8,+00000000
	c.mv	a2,s4
	c.li	a1,00000000
	c.sub	a5,a4
	c.swsp	a5,00000080
	c.addi4spn	a4,0000001C
	c.mv	a5,s7
	c.addi	a0,00000001
	sh	zero,sp,+00000020
	jal	ra,000000002304121A
	c.mv	s2,a0
	c.beqz	a0,0000000023045D74

l23045D52:
	lhu	a1,s1,+000001B6
	addi	a0,s11,+00000388
	jal	ra,0000000023082388

l23045D5E:
	addi	s1,s1,+00000028
	bne	s6,s10,0000000023045D70

l23045D66:
	lui	a0,000230BA
	addi	a0,a0,+000003B0
	c.j	0000000023045C56

l23045D70:
	c.li	s6,00000001
	c.j	0000000023045CF2

l23045D74:
	addi	a5,zero,+00000028
	add	a5,s6,a5
	c.add	a5,s8
	lhu	a5,a5,+000001B6

l23045D82:
	sh	a5,s0,+00000006
	c.addi4spn	a1,0000001C
	c.mv	a0,s0
	jal	ra,000000002303C4AC

l23045D8E:
	c.lwsp	a5,00000020
	c.lwsp	a1,00000004
	c.mv	a0,s2
	c.lwsp	t2,00000024
	c.lwsp	gp,00000048
	c.lwsp	t5,00000178
	c.lwsp	s10,00000198
	c.lwsp	s6,000001B8
	c.lwsp	s2,000001D8
	c.lwsp	a4,000001F8
	c.lwsp	a0,0000011C
	c.lwsp	t1,0000013C
	c.lwsp	sp,0000015C
	c.lwsp	t5,0000006C
	c.addi16sp	000000D0
	c.jr	ra

;; seg_send_start: 23045DAE
seg_send_start proc
	c.beqz	a1,0000000023045DD0

l23045DB0:
	lh	a5,a2,+00000028
	addi	a0,a2,+00000038
	addi	a1,zero,+00000032
	bge	zero,a5,0000000023045DCC

l23045DC0:
	lbu	a5,a2,+0000002C
	add	a1,a5,a1
	addi	a1,a1,+00000190

l23045DCC:
	jal	zero,00000000230498CA

l23045DD0:
	c.jr	ra

;; seg_rx_reset: 23045DD2
;;   Called from:
;;     23046B64 (in seg_ack)
;;     23046DEC (in bt_mesh_trans_recv)
;;     2304708C (in bt_mesh_trans_recv)
;;     2304717A (in bt_mesh_trans_recv)
;;     2304725E (in bt_mesh_rx_reset)
;;     23047268 (in bt_mesh_rx_reset)
seg_rx_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	addi	a0,a0,+00000020
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a1
	jal	ra,000000002304986E
	lb	a5,s0,+00000010
	bge	a5,zero,0000000023045E22

l23045DEE:
	c.lw	s0,16(a2)
	c.li	a0,00000001
	c.li	a1,00000000
	c.andi	a2,0000001F
	c.addi	a2,00000001
	jal	ra,000000002309F244
	c.lw	s0,24(a5)
	c.addi	a0,FFFFFFFF
	beq	a5,a0,0000000023045E22

l23045E04:
	lui	a0,000230BA
	addi	a0,a0,+000003E4
	jal	ra,0000000023082388
	lhu	a2,s0,+00000016
	lhu	a1,s0,+00000014
	c.lw	s0,0(a0)
	addi	a3,s0,+00000008
	jal	ra,00000000230488E6

l23045E22:
	lbu	a5,s0,+00000010
	andi	a5,a5,-00000041
	sb	a5,s0,+00000010
	c.beqz	s1,0000000023045E42

l23045E30:
	c.li	a5,00000000
	c.li	a6,00000000
	c.sw	s0,8(a5)
	sw	a6,s0,+0000000C
	sw	zero,s0,+00000000
	sw	zero,s0,+00000014

l23045E42:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; seg_tx_reset: 23045E4C
;;   Called from:
;;     23045F04 (in seg_tx_complete)
;;     23046700 (in bt_mesh_trans_send)
;;     2304675A (in bt_mesh_trans_send)
;;     23046870 (in bt_mesh_trans_send)
;;     23047296 (in bt_mesh_tx_reset)
;;     230472A4 (in bt_mesh_tx_reset)
seg_tx_reset proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	addi	a0,a0,+00000038
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	jal	ra,000000002304986E
	c.li	a5,00000000
	c.sw	s0,32(a5)
	lbu	a5,s0,+0000002B
	c.li	a6,00000000
	sw	zero,s0,+00000030
	sw	zero,s0,+00000034
	sw	a6,s0,+00000024
	sw	zero,s0,+00000000
	sh	zero,s0,+00000028
	c.beqz	a5,0000000023045EDA

l23045E80:
	addi	s1,s0,+00000004
	c.li	s2,00000000

l23045E86:
	c.lw	s1,0(a0)
	c.beqz	a0,0000000023045E92

l23045E8A:
	jal	ra,00000000230491C0
	sw	zero,s1,+00000000

l23045E92:
	lhu	a5,s0,+0000002A
	c.addi	s2,00000001
	c.addi	s1,00000004
	c.andi	a5,0000001F
	bge	a5,s2,0000000023045E86

l23045EA0:
	lui	a0,0004200D
	sb	zero,s0,+0000002B
	addi	a1,zero,-00000021
	addi	a0,a0,+000006C4
	jal	ra,0000000023048EE2
	andi	a0,a0,+00000020
	c.beqz	a0,0000000023045EDA

l23045EBA:
	lui	a5,0004200D
	lw	a0,a5,+000006BC
	c.li	a1,00000000
	jal	ra,00000000230426F0
	c.beqz	a0,0000000023045EDA

l23045ECA:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,00000000230426BA

l23045EDA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; seg_tx_complete: 23045EE6
;;   Called from:
;;     23045F5C (in seg_tx_send_unacked)
;;     2304610C (in ctl_recv)
seg_tx_complete proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.lw	a0,48(a5)
	c.mv	s0,a0
	c.beqz	a5,0000000023045EFC

l23045EF2:
	c.lw	a5,4(a5)
	c.beqz	a5,0000000023045EFC

l23045EF6:
	c.mv	a0,a1
	c.lw	s0,52(a1)
	c.jalr	a5

l23045EFC:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023045E4C

;; seg_tx_send_unacked: 23045F08
;;   Called from:
;;     23045FA4 (in seg_retransmit)
;;     23046168 (in ctl_recv)
seg_tx_send_unacked proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s0,a0
	addi	s2,a0,+00000004
	c.li	s1,00000000
	lui	s3,000230CC

l23045F20:
	lw	a1,s2,+00000000
	c.beqz	a1,0000000023045F84

l23045F26:
	c.lw	a1,20(a5)
	lbu	a4,a5,+00000008
	c.andi	a4,00000004
	c.bnez	a4,0000000023045F84

l23045F30:
	lbu	a4,a5,+0000000A
	addi	a3,a4,-00000001
	sb	a3,a5,+0000000A
	c.bnez	a4,0000000023045F60

l23045F3E:
	lui	a0,000230BA
	addi	a0,a0,+00000414
	jal	ra,0000000023082388
	addi	a1,zero,-0000003C

l23045F4E:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,0000000023045EE6

l23045F60:
	c.lw	s0,40(a2)
	c.lw	s0,0(a0)
	c.mv	a4,s0
	c.srli	a2,00000015
	addi	a3,s3,-000005E0
	c.andi	a2,00000001
	jal	ra,00000000230428EE
	c.beqz	a0,0000000023045F84

l23045F74:
	lui	a0,000230BA
	addi	a0,a0,+00000438
	jal	ra,0000000023082388
	c.li	a1,FFFFFFFB
	c.j	0000000023045F4E

l23045F84:
	lhu	a5,s0,+0000002A
	c.addi	s1,00000001
	c.addi	s2,00000004
	c.andi	a5,0000001F
	bge	a5,s1,0000000023045F20

l23045F92:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; seg_retransmit: 23045FA0
seg_retransmit proc
	addi	a0,a0,-00000038
	jal	zero,0000000023045F08

;; ctl_recv: 23045FA8
;;   Called from:
;;     23047170 (in bt_mesh_trans_recv)
;;     230471F2 (in bt_mesh_trans_recv)
ctl_recv proc
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
	c.swsp	s8,00000004
	andi	a1,a1,+0000007F
	c.mv	s0,a0
	c.mv	s1,a2
	c.beqz	a1,000000002304600E

l23045FC8:
	c.li	a5,0000000A
	beq	a1,a5,00000000230461A4

l23045FCE:
	lbu	a4,a0,+00000020
	andi	a5,a4,+00000040
	c.beqz	a5,0000000023046082

l23045FD8:
	lui	a3,0004200D
	addi	a5,a3,+000006BC
	lw	a5,a5,+00000134
	addi	a3,a3,+000006BC
	c.srli	a5,00000004
	c.andi	a5,00000001
	bne	a5,zero,00000000230462AE

l23045FF0:
	addi	a5,a1,-00000001
	andi	a5,a5,+000000FF
	c.li	a2,00000007
	bltu	a2,a5,00000000230462AE

l23045FFE:
	lui	a2,000230BA
	c.slli	a5,02
	addi	a2,a2,-000001BC
	c.add	a5,a2
	c.lw	a5,0(a5)
	c.jr	a5

l2304600E:
	lhu	a4,a2,+00000004
	c.li	a5,00000005
	bltu	a5,a4,000000002304603E

l23046018:
	lui	a0,000230BA
	addi	a0,a0,+0000022C

l23046020:
	jal	ra,0000000023082388
	c.li	a0,FFFFFFEA

l23046026:
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

l2304603E:
	c.mv	a0,a2
	c.mv	s6,a3
	jal	ra,0000000023049454
	srli	a5,a0,00000002
	c.slli	a5,10
	c.lui	s5,00002000
	c.srli	a5,00000010
	c.addi	s5,FFFFFFFF
	and	s3,a5,s5
	lb	a5,s0,+00000020
	c.mv	s2,a0
	bge	a5,zero,0000000023046086

l23046060:
	c.lw	s0,32(a5)
	andi	a4,a5,+00000001
	lui	a5,0004200D
	lw	a5,a5,+000006BC
	c.sub	a5,a4
	srli	a4,a5,00000008
	c.slli	a5,18
	or	a5,a5,s3
	sw	a5,s6,+00000000
	sw	a4,s6,+00000004

l23046082:
	c.li	a0,00000000
	c.j	0000000023046026

l23046086:
	c.mv	a0,s1
	jal	ra,0000000023049482
	srli	s2,s2,0000000F
	c.mv	s4,a0
	lhu	a0,s0,+00000008
	lui	s1,00042014
	slli	a4,s2,00000010
	addi	a5,s1,+00000758
	c.srli	a4,00000010
	c.li	s2,00000000
	addi	s1,s1,+00000758
	addi	a7,zero,+00000060
	c.li	t1,00000001

l230460B0:
	c.lw	a5,32(a1)
	lw	a6,a5,+00000024
	and	a3,a1,s5
	bne	a3,s3,0000000023046112

l230460BE:
	lhu	a3,a5,+00000028
	beq	a3,a0,00000000230460E2

l230460C6:
	c.beqz	a4,0000000023046112

l230460C8:
	add	a3,s2,a7
	lbu	t3,a5,+0000002B
	c.add	a3,s1
	lhu	a2,a3,+0000002A
	c.andi	a2,0000001F
	c.addi	a2,00000001
	bne	t3,a2,0000000023046112

l230460DE:
	sh	a0,a3,+00000028

l230460E2:
	addi	s0,zero,+00000060
	add	s0,s2,s0
	sw	a1,s6,+00000000
	sw	a6,s6,+00000004
	add	s5,s1,s0
	bne	s4,zero,000000002304611E

l230460FA:
	lui	a0,000230BA
	addi	a0,a0,+00000244
	jal	ra,0000000023082388
	addi	a1,zero,-00000048

l2304610A:
	c.mv	a0,s5
	jal	ra,0000000023045EE6
	c.j	0000000023046082

l23046112:
	addi	a5,a5,+00000060
	beq	s2,t1,0000000023046368

l2304611A:
	c.li	s2,00000001
	c.j	00000000230460B0

l2304611E:
	c.mv	a0,s4
	jal	ra,00000000230499CE
	lhu	a5,s5,+0000002A
	c.addi	a0,FFFFFFFF
	c.andi	a5,0000001F
	bgeu	a5,a0,000000002304613A

l23046130:
	lui	a0,000230BA
	addi	a0,a0,+00000254
	c.j	0000000023046020

l2304613A:
	c.li	s6,00000018
	add	s6,s2,s6
	addi	a0,s0,+00000038
	c.add	a0,s1
	jal	ra,000000002304986E
	c.mv	s7,s5
	c.li	s8,00000001

l2304614E:
	c.mv	a0,s4
	jal	ra,00000000230499EA
	c.bnez	a0,000000002304616E

l23046156:
	addi	a5,zero,+00000060
	add	s2,s2,a5
	c.add	s1,s2
	lbu	a5,s1,+0000002B
	c.beqz	a5,00000000230461A0

l23046166:
	c.mv	a0,s5
	jal	ra,0000000023045F08
	c.j	0000000023046082

l2304616E:
	addi	s0,a0,-00000001
	add	s3,s6,s0
	c.slli	s3,02
	c.add	s3,s1
	lw	a0,s3,+00000004
	c.beqz	a0,0000000023046192

l23046180:
	jal	ra,00000000230491C0
	lbu	a5,s7,+0000002B
	sw	zero,s3,+00000004
	c.addi	a5,FFFFFFFF
	sb	a5,s7,+0000002B

l23046192:
	sll	s0,s8,s0
	xori	s0,s0,-00000001
	and	s4,s4,s0
	c.j	000000002304614E

l230461A0:
	c.li	a1,00000000
	c.j	000000002304610A

l230461A4:
	lhu	a4,a2,+00000004
	c.li	a5,00000002
	bltu	a5,a4,00000000230461B8

l230461AE:
	lui	a0,000230BA
	addi	a0,a0,+00000278
	c.j	0000000023046020

l230461B8:
	lui	a5,0004200F
	lhu	a4,a0,+0000000A
	lhu	a5,a5,+0000044E
	beq	a4,a5,00000000230461D6

l230461C8:
	lui	a0,000230BA
	addi	a0,a0,+00000298
	jal	ra,0000000023082388
	c.j	0000000023046082

l230461D6:
	c.mv	a0,a2
	jal	ra,0000000023049414
	c.mv	s2,a0
	c.mv	a0,s1
	jal	ra,0000000023049454
	lbu	a5,s0,+0000000D
	c.li	a2,00000001
	andi	s2,s2,+0000007F
	c.sub	a2,a5
	c.mv	a3,a0
	lhu	a1,s0,+0000000A
	lhu	a0,s0,+00000008
	c.add	a2,s2
	andi	a2,a2,+000000FF
	jal	ra,000000002303FB94
	c.j	0000000023046082

l23046206:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.mv	a1,s1
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	jal	zero,0000000023048012

l23046222:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.mv	a1,s1
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	jal	zero,00000000230481DA

l2304623E:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.mv	a1,s1
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	jal	zero,0000000023047D36

l2304625A:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.mv	a1,s1
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	jal	zero,000000002304810A

l23046276:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.mv	a1,s1
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	jal	zero,0000000023047E50

l23046292:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.mv	a1,s1
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	jal	zero,0000000023047F38

l230462AE:
	c.li	a5,00000004
	bne	a1,a5,00000000230462D2

l230462B4:
	c.mv	a0,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.mv	a1,s1
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	jal	zero,000000002303B842

l230462D2:
	lhu	a2,s0,+00000008
	lhu	a5,a3,+0000012C
	bne	a2,a5,000000002304631C

l230462DE:
	c.li	a5,00000006
	bne	a1,a5,0000000023046302

l230462E4:
	c.mv	a0,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.mv	a1,s1
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	jal	zero,000000002303B920

l23046302:
	c.andi	a4,00000004
	c.bnez	a4,0000000023046310

l23046306:
	lui	a0,000230BA
	addi	a0,a0,+000002CC
	c.j	0000000023046020

l23046310:
	c.li	a5,00000002
	beq	a1,a5,000000002304632C

l23046316:
	c.li	a5,00000009
	beq	a1,a5,000000002304634A

l2304631C:
	lui	a0,000230BA
	addi	a0,a0,+000002FC
	jal	ra,0000000023082388
	c.li	a0,FFFFFFFE
	c.j	0000000023046026

l2304632C:
	c.mv	a0,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.mv	a1,s1
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	jal	zero,000000002303BC9E

l2304634A:
	c.mv	a0,s0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.mv	a1,s1
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	jal	zero,000000002303BB56

l23046368:
	lui	a0,000230BA
	addi	a0,a0,+0000031C
	c.j	0000000023046020

;; bt_mesh_set_hb_sub_dst: 23046372
;;   Called from:
;;     2303F9C6 (in heartbeat_sub_set)
;;     230406A2 (in bt_mesh_cfg_reset)
bt_mesh_set_hb_sub_dst proc
	lui	a5,0004200F
	sh	a0,a5,+0000044E
	c.jr	ra

;; bt_mesh_tx_in_progress: 2304637C
;;   Called from:
;;     2303B728 (in poll_timeout.constprop.4)
;;     23042800 (in bt_mesh_net_iv_update)
bt_mesh_tx_in_progress proc
	lui	a5,00042014
	addi	a5,a5,+00000758
	lbu	a0,a5,+0000002B
	lbu	a5,a5,+0000008B
	c.or	a0,a5
	sltu	a0,zero,a0
	c.jr	ra

;; bt_mesh_app_key_find: 23046394
;;   Called from:
;;     2303C7BC (in bt_mesh_model_publish)
;;     2303C910 (in mod_publish)
;;     2303E692 (in _mod_pub_set.isra.1)
;;     2303F3F8 (in app_key_set)
;;     2303FAB0 (in app_key_del)
;;     23046522 (in bt_mesh_trans_send)
bt_mesh_app_key_find proc
	lui	a4,0004200D
	addi	a3,a4,+000006BC
	lhu	a2,a3,+000001B4
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	addi	a4,a4,+000006BC
	beq	a2,a5,00000000230463B4

l230463AC:
	lhu	a5,a3,+000001B6
	beq	a5,a0,00000000230463D6

l230463B4:
	lhu	a2,a4,+000001DC
	c.lui	a3,00010000
	c.addi	a3,FFFFFFFF
	c.li	a5,00000000
	beq	a2,a3,00000000230463D2

l230463C2:
	lhu	a4,a4,+000001DE
	bne	a4,a0,00000000230463D2

l230463CA:
	lui	a5,0004200E
	addi	a5,a5,-00000768

l230463D2:
	c.mv	a0,a5
	c.jr	ra

l230463D6:
	lui	a5,0004200E
	addi	a5,a5,-00000790
	c.j	00000000230463D2

;; bt_mesh_trans_send: 230463E0
;;   Called from:
;;     2303A880 (in blemesh_seg_send)
;;     2303C10C (in model_send)
;;     2303C966 (in mod_publish)
bt_mesh_trans_send proc
	c.addi16sp	FFFFFF90
	c.swsp	s10,00000020
	c.mv	s10,a0
	c.mv	a0,a1
	c.swsp	s1,000000B0
	c.swsp	s11,0000009C
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
	c.mv	s1,a1
	c.swsp	a2,00000008
	c.mv	s11,a3
	jal	ra,00000000230494E0
	c.li	a5,00000003
	bltu	a5,a0,0000000023046420

l23046410:
	lui	a0,000230BA
	addi	a0,a0,+000000F4

l23046418:
	jal	ra,0000000023082388

l2304641C:
	c.li	s0,FFFFFFEA
	c.j	0000000023046596

l23046420:
	lhu	a4,s1,+00000004
	c.li	a5,0000000B
	bgeu	a5,a4,0000000023046434

l2304642A:
	lw	a5,s10,+00000004
	c.li	a4,00000001
	sb	a4,a5,+0000000A

l23046434:
	lw	s2,s10,+00000004
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFE
	lhu	a0,s2,+00000002
	bne	a0,a5,0000000023046522

l23046444:
	lbu	a5,s10,+0000000B
	lui	s0,0004200E
	addi	s0,s0,-000007A0
	c.andi	a5,00000003
	sb	a5,s10,+0000000B

l23046456:
	lbu	a0,s2,+0000000A
	c.beqz	a0,000000002304646A

l2304645C:
	c.mv	a0,s1
	jal	ra,00000000230494E0
	sltiu	a0,a0,+00000008
	xori	a0,a0,+00000001

l2304646A:
	lbu	a5,s10,+0000000B
	c.andi	a0,00000001
	c.slli	a0,01
	c.andi	a5,FFFFFFFD
	c.or	a0,a5
	lw	a5,s10,+00000004
	sb	a0,s10,+0000000B
	c.lui	a3,00004000
	lhu	a0,a5,+00000004
	c.lui	a5,00008000
	c.li	a4,00000000
	c.xor	a5,a0
	bgeu	a5,a3,0000000023046494

l2304648E:
	jal	ra,00000000230402AE
	c.mv	a4,a0

l23046494:
	lw	a3,s10,+00000004
	lw	a2,s10,+00000008
	lui	s6,0004200D
	lhu	a1,a3,+00000002
	c.lui	a5,FFFF0000
	lhu	a6,a3,+00000004
	c.addi	a5,00000002
	addi	a3,s6,+000006BC
	lw	a7,a3,+00000004
	c.add	a1,a5
	lhu	a5,s10,+00000008
	lui	s3,0004200D
	c.srli	a2,00000019
	sltiu	a1,a1,+00000001
	c.andi	a2,00000001
	addi	a0,s3,+000006C4
	lw	s2,a3,+00000000
	c.swsp	a4,00000014
	c.swsp	a1,00000090
	c.swsp	a2,00000010
	c.swsp	a5,0000008C
	c.swsp	a6,0000000C
	c.swsp	a7,00000088
	jal	ra,0000000023048E6C
	c.srai	a0,00000002
	c.andi	a0,00000001
	c.lwsp	s4,00000028
	c.lwsp	s8,00000008
	c.lwsp	t3,000000E4
	c.lwsp	s0,000001D4
	c.lwsp	zero,00000194
	c.lwsp	tp,00000174
	sub	s2,s2,a0
	c.swsp	s2,00000000
	c.mv	a0,s0
	c.mv	a3,s1
	jal	ra,0000000023041186
	c.mv	s0,a0
	addi	s6,s6,+000006BC
	c.mv	a0,s3
	c.bnez	s0,0000000023046596

l23046506:
	lw	a5,s10,+00000004
	lbu	a4,a5,+0000000A
	beq	a4,zero,0000000023046878

l23046512:
	lhu	a1,s1,+00000004
	c.bnez	a1,0000000023046560

l23046518:
	lui	a0,000230BA
	addi	a0,a0,+00000120
	c.j	0000000023046418

l23046522:
	jal	ra,0000000023046394
	beq	a0,zero,000000002304641C

l2304652A:
	lw	a5,s10,+00000000
	c.li	a4,00000002
	lbu	a3,a5,+0000001F
	lbu	a5,s10,+0000000B
	bne	a3,a4,0000000023046556

l2304653C:
	lbu	a4,a0,+00000004
	c.beqz	a4,0000000023046556

l23046542:
	lbu	a4,a0,+00000016
	addi	s0,a0,+00000017

l2304654A:
	c.slli	a4,02
	c.andi	a5,00000003
	c.or	a5,a4
	sb	a5,s10,+0000000B
	c.j	0000000023046456

l23046556:
	addi	s0,a0,+00000006
	lbu	a4,a0,+00000005
	c.j	000000002304654A

l23046560:
	addi	a4,zero,+00000048
	bltu	a4,a1,0000000023046586

l23046568:
	lui	s2,00042014
	addi	a4,s2,+00000758
	lbu	a3,a4,+0000002B
	addi	s2,s2,+00000758
	c.beqz	a3,00000000230465B6

l2304657A:
	lbu	a4,a4,+0000008B
	bne	a4,zero,000000002304671E

l23046582:
	c.li	s3,00000001
	c.j	00000000230465B8

l23046586:
	lui	a0,000230BA
	addi	a0,a0,+00000140
	jal	ra,0000000023082388
	addi	s0,zero,-00000024

l23046596:
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
	c.lwsp	t0,0000002C
	c.lwsp	ra,0000004C
	c.lwsp	t3,0000017C
	c.addi16sp	00000070
	c.jr	ra

l230465B6:
	c.li	s3,00000000

l230465B8:
	addi	s5,zero,+00000060
	add	s5,s3,s5
	lhu	a3,a5,+00000002
	c.lui	a4,00010000
	addi	a2,zero,+00000080
	c.addi	a4,FFFFFFFE
	c.swsp	a2,0000000C
	add	s9,s2,s5
	bne	a3,a4,000000002304672E

l230465D6:
	addi	s4,zero,+00000060
	add	s4,s3,s4
	lhu	a5,a5,+00000004
	c.li	a4,0000000C
	addi	a0,a0,+000006C4
	lw	s8,s6,+00000000
	c.add	s4,s2
	sh	a5,s4,+00000028
	lhu	a5,s1,+00000004
	c.addi	a5,FFFFFFFF
	srl	a5,a5,a4
	lbu	a4,s4,+0000002A
	c.andi	a4,FFFFFFE0
	c.andi	a5,0000001F
	c.or	a4,a5
	c.addi	a5,00000001
	sb	a4,s4,+0000002A
	sb	a5,s4,+0000002B
	jal	ra,0000000023048E6C
	c.srai	a0,00000002
	lw	a4,s6,+00000004
	c.andi	a0,00000001
	sub	a0,s8,a0
	srli	a5,a0,00000008
	c.slli	a0,18
	c.or	a0,a4
	sw	a0,s4,+00000020
	sw	a5,s4,+00000024
	lw	a5,s10,+00000000
	sw	a5,s4,+00000000
	lbu	a5,a5,+0000001E
	sw	s11,s4,+00000034
	c.andi	a5,00000001
	slli	a4,a5,00000005
	lbu	a5,s4,+0000002A
	andi	a5,a5,-00000021
	c.or	a5,a4
	sb	a5,s4,+0000002A
	c.lwsp	a6,000000E4
	addi	a4,zero,+000000FF
	sw	a5,s4,+00000030
	lw	a5,s10,+00000004
	lbu	a5,a5,+0000000B
	bne	a5,a4,000000002304673E

l2304666A:
	jal	ra,00000000230401AE
	sb	a0,s4,+0000002C

l23046672:
	addi	s4,zero,+00000060
	add	s4,s3,s4
	addi	s5,s5,+00000020
	add	a5,s2,s5
	c.swsp	a5,00000088
	c.lwsp	s4,000000A4
	lhu	a1,s10,+00000008
	c.add	s4,s2
	lw	a5,s4,+00000000
	lhu	a4,s4,+0000002A
	lhu	s8,s4,+00000020
	lhu	a2,s4,+00000028
	lhu	a0,a5,+0000001C
	c.andi	a4,0000001F
	c.slli	s8,13
	c.addi	a4,00000001
	srli	s8,s8,00000013
	jal	ra,0000000023048582
	c.bnez	a0,00000000230466B8

l230466B0:
	lh	a5,s4,+00000028
	blt	zero,a5,0000000023046744

l230466B8:
	srli	a5,s8,00000006
	c.slli	s8,02
	c.swsp	a5,0000008C
	slli	a5,s8,00000018
	addi	s8,zero,+00000060
	add	s8,s3,s8
	c.srai	a5,00000018
	c.swsp	a5,00000010
	lui	a5,000230CC
	addi	a5,a5,-000005E0
	c.swsp	a5,00000090
	lui	a5,000230CC
	addi	a5,a5,-000005E8
	c.li	s4,00000000
	c.swsp	a5,00000014
	c.add	s8,s2

l230466E8:
	lhu	a5,s1,+00000004
	c.bnez	a5,0000000023046764

l230466EE:
	addi	a5,zero,+00000060
	add	s3,s3,a5
	c.add	s2,s3
	lw	a5,s2,+00000004
	c.bnez	a5,000000002304670C

l230466FE:
	c.mv	a0,s9
	jal	ra,0000000023045E4C
	c.lwsp	a6,00000044
	c.mv	a1,s11
	jal	ra,0000000023045A74

l2304670C:
	lw	a5,s6,+00000134
	c.srli	a5,00000004
	c.andi	a5,00000001
	beq	a5,zero,0000000023046596

l23046718:
	jal	ra,000000002303BE6E
	c.j	0000000023046596

l2304671E:
	lui	a0,000230BA
	addi	a0,a0,+0000016C
	jal	ra,0000000023082388
	c.li	s0,FFFFFFF0
	c.j	0000000023046596

l2304672E:
	lw	s7,s10,+00000008
	srli	s7,s7,0000001A
	ori	a4,s7,+000000C0
	c.swsp	a4,0000000C
	c.j	00000000230465D6

l2304673E:
	sb	a5,s4,+0000002C
	c.j	0000000023046672

l23046744:
	lhu	a1,s4,+0000002A
	lui	a0,000230BA
	addi	a0,a0,+0000019C
	c.andi	a1,0000001F
	c.addi	a1,00000001
	jal	ra,0000000023082388

l23046758:
	c.mv	a0,s9
	jal	ra,0000000023045E4C

l2304675E:
	addi	s0,zero,-00000037
	c.j	0000000023046596

l23046764:
	lbu	a1,s10,+0000000A
	c.li	a2,00000000
	c.li	a0,00000001
	jal	ra,000000002303CD12
	c.mv	s7,a0
	c.bnez	a0,0000000023046782

l23046774:
	lui	a0,000230BA
	addi	a0,a0,+000001D0
	jal	ra,0000000023082388
	c.j	0000000023046758

l23046782:
	c.lw	a0,20(a5)
	c.li	a4,00000004
	addi	s5,a0,+00000008
	sb	a4,a5,+0000000A
	c.li	a1,00000009
	c.mv	a0,s5
	jal	ra,00000000230490EC
	c.lwsp	s8,00000064
	c.mv	a0,s5
	jal	ra,0000000023049306
	lw	a1,s10,+00000008
	c.lwsp	t3,000000E4
	c.mv	a0,s5
	c.srli	a1,00000012
	andi	a1,a1,+00000080
	c.or	a1,a5
	jal	ra,0000000023049306
	c.lwsp	zero,000001F4
	srli	a1,s4,00000003
	c.mv	a0,s5
	c.or	a1,a5
	andi	a1,a1,+000000FF
	jal	ra,0000000023049306
	lhu	a5,s8,+0000002A
	slli	a1,s4,00000005
	c.mv	a0,s5
	c.andi	a5,0000001F
	c.or	a1,a5
	andi	a1,a1,+000000FF
	jal	ra,0000000023049306
	lhu	a1,s1,+00000004
	c.li	a5,0000000C
	bgeu	a5,a1,00000000230467E6

l230467E4:
	c.li	a1,0000000C

l230467E6:
	slli	a5,a1,00000010
	c.lw	s1,0(a1)
	c.srli	a5,00000010
	c.mv	a2,a5
	c.mv	a0,s5
	c.swsp	a5,00000094
	jal	ra,00000000230492F0
	c.lwsp	a2,000001F4
	c.mv	a0,s1
	c.mv	a1,a5
	jal	ra,00000000230493EC
	lhu	a3,s8,+0000002A
	c.li	a1,00000002
	c.andi	a3,0000001F
	beq	s4,a3,0000000023046810

l2304680E:
	c.li	a1,00000001

l23046810:
	c.lwsp	s4,00000084
	c.mv	a4,s5
	c.addi	a3,00000001
	c.mv	a0,s10
	jal	ra,000000002304875E
	c.beqz	a0,0000000023046838

l2304681E:
	lw	a5,s10,+00000004
	lh	a5,a5,+00000004
	bge	zero,a5,0000000023046838

l2304682A:
	c.mv	a0,s7
	jal	ra,00000000230491C0

l23046830:
	c.addi	s4,00000001
	andi	s4,s4,+000000FF
	c.j	00000000230466E8

l23046838:
	c.mv	a0,s7
	jal	ra,000000002304926E
	c.li	a5,00000018
	add	a5,s3,a5
	c.lwsp	tp,00000194
	c.add	a5,s4
	c.slli	a5,02
	c.add	a5,s2
	c.sw	a5,4(a0)
	bne	s4,zero,0000000023046854

l23046852:
	c.lwsp	s0,00000194

l23046854:
	c.mv	a3,s9
	c.mv	a1,s7
	c.mv	a0,s10
	jal	ra,0000000023042BEE
	c.mv	s5,a0
	c.beqz	a0,0000000023046830

l23046862:
	lui	a0,000230BA
	addi	a0,a0,+00000438
	jal	ra,0000000023082388
	c.mv	a0,s9
	jal	ra,0000000023045E4C
	c.mv	s0,s5
	c.j	0000000023046596

l23046878:
	lbu	a1,s10,+0000000A
	c.li	a2,00000000
	c.li	a0,00000001
	jal	ra,000000002303CD12
	c.mv	s2,a0
	c.bnez	a0,0000000023046896

l23046888:
	lui	a0,000230B6
	addi	a0,a0,+00000700
	jal	ra,0000000023082388
	c.j	000000002304675E

l23046896:
	addi	s3,a0,+00000008
	c.li	a1,00000009
	c.mv	a0,s3
	jal	ra,00000000230490EC
	lw	a5,s10,+00000004
	c.li	a1,00000000
	lhu	a4,a5,+00000002
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFE
	beq	a4,a5,00000000230468BE

l230468B4:
	lw	a1,s10,+00000008
	c.srli	a1,0000001A
	ori	a1,a1,+00000040

l230468BE:
	c.mv	a0,s3
	jal	ra,0000000023049306
	lhu	a2,s1,+00000004
	c.lw	s1,0(a1)
	c.mv	a0,s3
	jal	ra,00000000230492F0
	lw	a2,s10,+00000004
	lw	a5,s10,+00000000
	lhu	a1,s10,+00000008
	lhu	a2,a2,+00000004
	lhu	a0,a5,+0000001C
	c.li	a4,00000001
	c.li	a3,00000000
	jal	ra,0000000023048582
	c.bnez	a0,0000000023046942

l230468EE:
	lw	a5,s10,+00000004
	lh	a5,a5,+00000004
	bge	zero,a5,000000002304690E

l230468FA:
	lui	a0,000230BA
	addi	a0,a0,+000001EC
	jal	ra,0000000023082388
	c.mv	a0,s2
	jal	ra,00000000230491C0
	c.j	000000002304675E

l2304690E:
	lui	a0,000230BA
	addi	a0,a0,+00000210
	jal	ra,0000000023082388

l2304691A:
	c.lwsp	s1,00000114
	c.lwsp	a6,00000084
	c.lwsp	a3,00000130
	c.lwsp	t0,00000134
	c.lwsp	t4,00000068
	c.lwsp	s9,00000088
	c.lwsp	s5,000000A8
	c.lwsp	a7,000000C8
	c.lwsp	a3,000000E8
	c.lwsp	s1,0000000C
	c.lwsp	t0,0000002C
	c.mv	a3,s11
	c.mv	a1,s2
	c.lwsp	t3,0000017C
	c.lwsp	ra,00000158
	c.mv	a0,s10
	c.lwsp	ra,0000004C
	c.addi16sp	00000070
	jal	zero,0000000023042BEE

l23046942:
	c.mv	a4,s3
	c.li	a3,00000001
	c.li	a2,00000000
	c.li	a1,00000000
	c.mv	a0,s10
	jal	ra,000000002304875E
	c.beqz	a0,000000002304691A

l23046952:
	lw	a5,s10,+00000004
	lh	a5,a5,+00000004
	bge	zero,a5,000000002304691A

l2304695E:
	c.mv	a0,s2
	jal	ra,00000000230491C0
	c.lwsp	a6,00000044
	c.mv	a1,s11
	jal	ra,0000000023045A74
	c.j	0000000023046596

;; bt_mesh_ctl_send: 2304696E
;;   Called from:
;;     2303B018 (in send_friend_poll)
;;     2303B0E8 (in clear_friendship)
;;     2303B46A (in sub_update)
;;     2303B58A (in send_friend_req.constprop.8)
;;     23046B24 (in send_ack)
;;     230473D6 (in bt_mesh_heartbeat_send)
;;     230474DA (in send_friend_clear)
;;     23047E44 (in bt_mesh_friend_clear)
bt_mesh_ctl_send proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.mv	s8,a1
	lbu	a1,a0,+0000000A
	c.mv	s1,a0
	c.mv	s6,a2
	c.li	a0,00000001
	c.li	a2,00000000
	c.mv	s7,a3
	c.mv	s5,a4
	c.mv	s3,a5
	c.mv	s4,a6
	jal	ra,000000002303CD12
	c.bnez	a0,00000000230469C8

l230469A0:
	lui	a0,000230BA
	addi	a0,a0,-0000019C
	jal	ra,0000000023082388
	addi	a0,zero,-00000037

l230469B0:
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

l230469C8:
	addi	s0,a0,+00000008
	c.li	a1,00000009
	c.mv	s2,a0
	c.mv	a0,s0
	jal	ra,00000000230490EC
	andi	a1,s8,+0000007F
	c.mv	a0,s0
	jal	ra,0000000023049306
	c.mv	a2,s7
	c.mv	a1,s6
	c.mv	a0,s0
	jal	ra,00000000230492F0
	c.mv	a4,s0
	c.li	a3,00000001
	c.mv	a2,s5
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,000000002304875E
	c.beqz	a0,0000000023046A0E

l230469FA:
	c.lw	s1,4(a5)
	lh	a5,a5,+00000004
	bge	zero,a5,0000000023046A0E

l23046A04:
	c.mv	a0,s2
	jal	ra,00000000230491C0
	c.li	a0,00000000
	c.j	00000000230469B0

l23046A0E:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	s4,000000A8
	c.lwsp	a6,000000C8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.mv	a3,s4
	c.mv	a2,s3
	c.lwsp	s8,00000088
	c.lwsp	t3,00000068
	c.mv	a1,s2
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	jal	zero,0000000023042BEE

;; send_ack: 23046A30
;;   Called from:
;;     23046B8C (in seg_ack)
;;     23046DCA (in bt_mesh_trans_recv)
;;     23046E7A (in bt_mesh_trans_recv)
;;     23046F50 (in bt_mesh_trans_recv)
;;     23047084 (in bt_mesh_trans_recv)
;;     23047156 (in bt_mesh_trans_recv)
send_ack proc
	c.addi16sp	FFFFFFA0
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s5,000000A0
	c.mv	s3,a0
	c.mv	s2,a1
	c.mv	s5,a2
	c.li	a1,00000000
	c.li	a2,00000012
	addi	a0,sp,+0000002E
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s4,00000024
	c.swsp	a3,00000084
	c.mv	s0,a5
	c.swsp	ra,000000AC
	c.mv	s4,a4
	c.mv	s1,a6
	jal	ra,00000000230A3A68
	lhu	a5,s3,+0000001C
	c.lwsp	a2,000000A4
	sh	s5,sp,+0000002C
	sh	a5,sp,+00000028
	c.li	a5,FFFFFFFF
	sh	a5,sp,+0000002A
	c.addi4spn	a5,00000028
	sb	a3,sp,+00000033
	c.swsp	zero,00000090
	c.swsp	s3,0000008C
	c.swsp	a5,00000010
	c.mv	a0,s2
	c.beqz	s1,0000000023046A82

l23046A7E:
	jal	ra,000000002303C3B0

l23046A82:
	sh	a0,sp,+00000024
	jal	ra,000000002303FC54
	lui	a5,0004200D
	lw	a5,a5,+000007F0
	sb	a0,sp,+00000026
	c.srli	a5,00000004
	c.andi	a5,00000001
	c.beqz	a5,0000000023046ABC

l23046A9C:
	lui	a0,000230BA
	addi	a0,a0,+00000454

l23046AA4:
	jal	ra,0000000023082388
	c.li	a0,00000000

l23046AAA:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.lwsp	s5,00000024
	c.lwsp	a7,00000048
	c.lwsp	a3,00000068
	c.lwsp	s1,00000088
	c.lwsp	t0,000000A8
	c.addi16sp	00000060
	c.jr	ra

l23046ABC:
	c.slli	s2,10
	srai	s2,s2,00000010
	blt	zero,s2,0000000023046AD0

l23046AC6:
	lui	a0,000230BA
	addi	a0,a0,+0000047C
	c.j	0000000023046AA4

l23046AD0:
	lhu	a6,s4,+00000000
	c.slli	s1,0F
	c.li	a3,00000006
	c.slli	a6,13
	srli	a6,a6,00000011
	or	a6,a6,s1
	slli	a5,a6,00000008
	c.slli	a6,10
	srli	a6,a6,00000010
	srli	a6,a6,00000008
	or	a6,a5,a6
	srli	a5,s0,00000010
	srli	a4,a5,00000008
	sb	a5,sp,+00000017
	slli	a5,s0,00000008
	c.slli	s0,10
	c.srli	s0,00000010
	c.srli	s0,00000008
	c.or	s0,a5
	sh	a6,sp,+00000014
	sb	a4,sp,+00000016
	c.li	a6,00000000
	c.li	a5,00000000
	c.li	a4,00000000
	c.addi4spn	a2,00000014
	c.li	a1,00000000
	c.addi4spn	a0,0000001C
	sh	s0,sp,+00000018
	jal	ra,000000002304696E
	c.j	0000000023046AAA

;; seg_ack: 23046B2A
seg_ack proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.swsp	ra,00000084
	addi	s1,a0,-00000020
	jal	ra,0000000023048D2E
	lw	a5,s0,-00000004
	c.sub	a0,a5
	c.lui	a5,0000F000
	addi	a5,a5,-000005A0
	bgeu	a5,a0,0000000023046B68

l23046B4C:
	lui	a0,000230BA
	addi	a0,a0,+000003C8
	jal	ra,0000000023082388
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,0000000023045DD2

l23046B68:
	lw	a6,s0,-00000010
	lhu	a1,s0,-0000000A
	lw	a5,s0,-00000008
	lbu	a3,s0,-0000000E
	lhu	a2,s0,-0000000C
	lw	a0,s0,-00000020
	srli	a6,a6,00000007
	addi	a4,s0,-00000018
	andi	a6,a6,+00000001
	jal	ra,0000000023046A30
	c.mv	a0,s1
	jal	ra,0000000023045BB4
	c.mv	a1,a0
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230498CA

;; bt_mesh_trans_recv: 23046BA6
;;   Called from:
;;     23043122 (in bt_mesh_net_recv)
bt_mesh_trans_recv proc
	c.addi16sp	FFFFFFA0
	c.swsp	ra,000000AC
	c.swsp	s0,0000002C
	c.swsp	s4,00000024
	c.swsp	s7,0000009C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s3,000000A4
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	s8,0000001C
	c.swsp	s9,00000098
	c.swsp	s10,00000018
	c.swsp	s11,00000094
	c.li	a5,FFFFFFFF
	c.swsp	a5,0000008C
	c.lw	a1,0(a5)
	c.mv	s0,a1
	c.mv	s4,a0
	lhu	a1,a1,+0000000A
	lhu	a0,a5,+0000001C
	c.li	a4,FFFFFFFF
	c.swsp	a4,0000000C
	jal	ra,0000000023048542
	lbu	a5,s0,+00000020
	c.slli	a0,07
	c.li	a1,00000009
	andi	a5,a5,+0000007F
	c.or	a5,a0
	sb	a5,s0,+00000020
	c.mv	a0,s4
	jal	ra,00000000230493EC
	lui	s7,0004200D
	addi	a5,s7,+000006BC
	lw	a5,a5,+00000134
	addi	s7,s7,+000006BC
	c.srli	a5,00000004
	c.andi	a5,00000001
	c.beqz	a5,0000000023046C50

l23046C0A:
	lbu	a5,s0,+00000020
	andi	a4,a5,+00000030
	c.bnez	a4,0000000023046C50

l23046C14:
	lbu	a3,s7,+00000128
	c.li	a4,00000008
	bne	a3,a4,0000000023046C22

l23046C1E:
	c.andi	a5,00000004
	c.bnez	a5,0000000023046C50

l23046C22:
	lui	a0,000230BA
	addi	a0,a0,-00000180
	jal	ra,0000000023082388
	c.li	s1,FFFFFFF5

l23046C30:
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
	c.lwsp	a2,0000017C
	c.addi16sp	00000060
	c.jr	ra

l23046C50:
	c.mv	a0,s4
	jal	ra,00000000230494D6
	lw	s8,s4,+00000000
	c.swsp	a0,00000084
	lhu	s9,s4,+00000004
	lb	a5,s8,+00000000
	bge	a5,zero,00000000230471A2

l23046C68:
	c.lw	s0,32(a5)
	c.li	s1,00000000
	andi	a5,a5,+000000C0
	c.beqz	a5,0000000023046C30

l23046C72:
	c.swsp	zero,00000088
	c.li	a5,00000004
	bltu	a5,s9,0000000023046C8E

l23046C7A:
	lui	a0,000230BA
	c.mv	a1,s9
	addi	a0,a0,-00000150
	jal	ra,0000000023082388

l23046C88:
	c.li	s6,00000000

l23046C8A:
	c.li	s2,00000000
	c.j	0000000023046EFC

l23046C8E:
	c.addi4spn	a1,00000014
	c.mv	a0,s0
	jal	ra,0000000023045AC2
	c.beqz	a0,0000000023046CB0

l23046C98:
	c.lw	s0,28(a3)
	lhu	a2,s0,+0000000A
	lhu	a1,s0,+00000008
	lui	a0,000230BA
	addi	a0,a0,-00000128
	jal	ra,0000000023082388
	c.j	0000000023046C88

l23046CB0:
	c.li	a1,00000001
	c.mv	a0,s4
	jal	ra,00000000230493EC
	c.mv	a0,s4
	jal	ra,0000000023049454
	slli	s5,a0,00000003
	c.srli	a0,00000002
	c.lui	s1,00002000
	c.slli	a0,10
	c.srli	a0,00000010
	addi	s3,s1,-00000001
	and	s1,a0,s3
	c.mv	a0,s4
	jal	ra,0000000023049414
	andi	s5,s5,+00000018
	srli	a5,a0,00000005
	or	s5,s5,a5
	andi	s2,a0,+0000001F
	andi	s5,s5,+000000FF
	andi	s10,s2,+000000FF
	bgeu	s10,s5,0000000023046D06

l23046CF4:
	lui	a0,000230BA
	c.mv	a2,s10
	c.mv	a1,s5
	addi	a0,a0,-000000FC
	jal	ra,0000000023082388
	c.j	0000000023046C88

l23046D06:
	c.lw	s0,28(a4)
	c.lw	s0,32(a1)
	lw	a5,s7,+00000000
	sub	s1,a4,s1
	andi	a3,a1,+00000001
	c.sub	a5,a3
	and	s1,s1,s3
	sub	s1,a4,s1
	srli	a0,a5,00000008
	c.slli	a5,18
	c.or	a5,s1
	lui	s1,0004200E
	addi	a4,s1,-00000378
	c.lw	s0,8(a2)
	c.lw	a4,20(a4)
	addi	s11,s10,+00000001
	c.swsp	a5,0000000C
	c.swsp	a0,0000008C
	andi	s6,s11,+000000FF
	addi	s1,s1,-00000378
	bne	a2,a4,0000000023046D62

l23046D48:
	c.lw	s1,12(a4)
	c.lw	s1,8(a3)
	bltu	a4,a0,0000000023046D58

l23046D50:
	bne	a0,a4,0000000023047224

l23046D54:
	bgeu	a3,a5,0000000023047224

l23046D58:
	lbu	a4,s1,+00000010
	andi	a4,a4,+00000040
	c.bnez	a4,0000000023046DD6

l23046D62:
	c.lw	s1,100(a4)
	bne	a4,a2,0000000023046D86

l23046D68:
	c.lw	s1,92(a4)
	c.lw	s1,88(a3)
	bltu	a4,a0,0000000023046D78

l23046D70:
	bne	a0,a4,0000000023047242

l23046D74:
	bgeu	a3,a5,0000000023047242

l23046D78:
	lbu	a5,s1,+00000060
	addi	s3,s1,+00000050
	andi	a5,a5,+00000040
	c.bnez	a5,0000000023046DD8

l23046D86:
	c.lw	s0,32(a5)
	c.li	a4,00000008
	srli	a3,a5,00000003
	c.andi	a3,00000001
	c.bnez	a3,0000000023046D94

l23046D92:
	c.li	a4,0000000C

l23046D94:
	add	a4,a4,s10
	addi	a3,zero,+0000006B
	bge	a3,a4,0000000023046F00

l23046DA0:
	lui	a0,000230BA
	addi	a0,a0,-00000010
	jal	ra,0000000023082388
	lw	a6,s0,+00000020
	lbu	a3,s0,+0000000F
	lhu	a2,s0,+00000008
	lhu	a1,s0,+0000000A
	c.lw	s0,0(a0)
	srli	a6,a6,00000007
	andi	a6,a6,+00000001
	c.li	a5,00000000
	c.addi4spn	a4,00000018
	jal	ra,0000000023046A30

l23046DCE:
	c.li	s2,00000000
	addi	s1,zero,-00000024
	c.j	0000000023046E9A

l23046DD6:
	c.mv	s3,s1

l23046DD8:
	lhu	a1,s0,+00000008
	lui	a0,000230BA
	addi	a0,a0,-000000D8
	jal	ra,0000000023082388
	c.li	a1,00000001
	c.mv	a0,s3
	jal	ra,0000000023045DD2
	c.j	0000000023046D86

l23046DF2:
	addi	a5,zero,+00000050
	add	a2,a2,a5
	lbu	a4,s8,+00000000
	c.add	s1,a2
	lbu	a5,s1,+00000011
	bne	a4,a5,0000000023046E12

l23046E08:
	c.lw	s1,16(a5)
	andi	a4,a5,+0000001F
	beq	a4,s10,0000000023046E1C

l23046E12:
	lui	a0,000230BA
	addi	a0,a0,-000000A0
	c.j	000000002304723C

l23046E1C:
	c.srli	a5,00000005
	c.srli	a1,00000003
	c.andi	a5,00000001
	c.andi	a1,00000001
	beq	a5,a1,0000000023046E32

l23046E28:
	lui	a0,000230BA
	addi	a0,a0,-00000078
	c.j	000000002304723C

l23046E32:
	lbu	s2,s1,+00000010
	andi	s2,s2,+00000040
	bne	s2,zero,0000000023046FDA

l23046E3E:
	c.mv	a2,s11
	c.li	a0,00000001
	c.li	a1,00000000
	jal	ra,000000002309F244
	c.lw	s1,24(a5)
	c.addi	a0,FFFFFFFF
	bne	a5,a0,0000000023046EF0

l23046E50:
	lui	a0,000230BA
	addi	a0,a0,-00000058
	jal	ra,0000000023082388
	lw	a6,s1,+00000010
	c.lw	s1,24(a5)
	lbu	a3,s0,+0000000F
	lhu	a2,s0,+00000008
	lhu	a1,s0,+0000000A
	c.lw	s0,0(a0)
	srli	a6,a6,00000007
	andi	a6,a6,+00000001
	c.addi4spn	a4,00000018
	jal	ra,0000000023046A30
	c.lwsp	s4,000000E4
	addi	s1,zero,-00000045
	c.beqz	a5,0000000023046E9A

l23046E86:
	lhu	a4,s0,+00000008
	sh	a4,a5,+00000000
	c.lw	s0,28(a4)
	c.sw	a5,4(a4)
	c.lw	s0,32(a4)
	c.andi	a4,00000001
	sb	a4,a5,+00000002

l23046E9A:
	lw	a5,s7,+00000134
	c.srli	a5,00000004
	c.andi	a5,00000001
	c.beqz	a5,0000000023046EB4

l23046EA4:
	lbu	a4,s7,+00000128
	c.li	a5,00000008
	bne	a4,a5,0000000023046EB4

l23046EAE:
	c.mv	a0,s0
	jal	ra,000000002303B7FC

l23046EB4:
	lw	a5,s4,+00000008
	lhu	s10,sp,+0000000C
	sh	s9,s4,+00000004
	c.add	s10,a5
	sw	s10,s4,+00000000
	lb	a5,s0,+00000020
	bge	a5,zero,0000000023046C30

l23046ECE:
	bne	s1,zero,0000000023046C30

l23046ED2:
	c.lwsp	s8,000000E4
	c.li	a4,FFFFFFFF
	bne	a5,a4,000000002304721C

l23046EDA:
	c.lwsp	t3,000000C4
	bne	a4,a5,000000002304721C

l23046EE0:
	c.mv	a4,s4
	c.mv	a3,s6
	c.li	a2,00000000

l23046EE6:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,0000000023048614
	c.j	0000000023046C30

l23046EF0:
	lui	a0,000230BA
	addi	a0,a0,-00000030
	jal	ra,0000000023082388

l23046EFC:
	c.li	s1,FFFFFFEA
	c.j	0000000023046E9A

l23046F00:
	andi	a5,a5,+000000C0
	addi	a4,zero,+00000080
	bne	a5,a4,0000000023047002

l23046F0C:
	c.lw	s0,0(a5)
	lhu	a2,s0,+0000000A
	lhu	a1,s0,+00000008
	lhu	a0,a5,+0000001C
	c.mv	a4,s6
	c.addi4spn	a3,00000018
	jal	ra,0000000023048582
	c.bnez	a0,0000000023047002

l23046F24:
	lui	a0,000230BA
	c.mv	a1,s6
	addi	a0,a0,+00000010
	jal	ra,0000000023082388
	lw	a6,s0,+00000020
	lbu	a3,s0,+0000000F
	lhu	a2,s0,+00000008
	lhu	a1,s0,+0000000A
	c.lw	s0,0(a0)
	srli	a6,a6,00000007
	andi	a6,a6,+00000001
	c.li	a5,00000000
	c.addi4spn	a4,00000018
	jal	ra,0000000023046A30
	c.li	s2,00000000
	addi	s1,zero,-00000037
	c.j	0000000023046E9A

l23046F5C:
	c.mv	s3,s1
	c.li	a5,00000000

l23046F60:
	addi	a4,zero,+00000050
	add	a5,a5,a4
	c.add	s1,a5
	lbu	a5,s1,+00000010
	c.lw	s1,76(a4)
	sh	zero,s1,+00000048
	ori	a5,a5,+00000040
	sb	a5,s1,+00000010
	c.sw	s1,68(a4)
	c.lw	s0,0(a4)
	andi	a0,a5,+000000C0
	c.lwsp	t3,000000E4
	c.sw	s1,0(a4)
	c.lw	s0,32(a3)
	c.lwsp	s8,000000C4
	c.sw	s1,12(a5)
	c.slli	a3,02
	andi	a3,a3,+00000020
	or	a5,a0,a3
	or	s2,a5,s2
	c.sw	s1,8(a4)
	sb	s2,s1,+00000010
	lbu	a5,s8,+00000000
	sb	a5,s1,+00000011
	lbu	a5,s0,+0000000F
	sb	a5,s1,+00000012
	lhu	a5,s0,+00000008
	sh	a5,s1,+00000014
	lhu	a5,s0,+0000000A
	sw	zero,s1,+00000018
	sh	a5,s1,+00000016
	c.lw	s0,32(a5)
	andi	a4,a5,+00000080
	lbu	a5,s3,+00000010
	andi	a5,a5,+0000007F
	c.or	a5,a4
	sb	a5,s3,+00000010

l23046FDA:
	lw	a5,s3,+00000018
	srl	a5,a5,s5
	c.andi	a5,00000001
	c.beqz	a5,0000000023047028

l23046FE6:
	lui	a0,000230BA
	addi	a0,a0,+00000070
	jal	ra,0000000023082388
	c.li	s2,00000000
	addi	s1,zero,-00000045
	c.j	0000000023046E9A

l23046FFA:
	addi	s3,s1,+00000050
	c.li	a5,00000001
	c.j	0000000023046F60

l23047002:
	lbu	a5,s1,+00000010
	andi	a5,a5,+00000040
	c.beqz	a5,0000000023046F5C

l2304700C:
	lbu	a5,s1,+00000060
	andi	a5,a5,+00000040
	c.beqz	a5,0000000023046FFA

l23047016:
	lui	a0,000230BA
	addi	a0,a0,+0000003C
	jal	ra,0000000023082388
	c.li	s2,00000000
	c.li	s1,FFFFFFF4
	c.j	0000000023046E9A

l23047028:
	lw	a4,s3,+00000010
	lhu	a5,s4,+00000004
	c.srli	a4,00000005
	c.andi	a4,00000001
	bne	s5,s10,0000000023047092

l23047038:
	slli	a3,s5,00000010
	c.srli	a3,00000010
	c.li	a2,00000008
	c.bnez	a4,0000000023047044

l23047042:
	c.li	a2,0000000C

l23047044:
	add	a4,a3,a2
	c.add	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s3,+00000048
	addi	a4,zero,+0000006C
	bgeu	a4,a5,00000000230470A6

l2304705A:
	lui	a0,000230BA
	addi	a0,a0,+00000098
	jal	ra,0000000023082388
	lw	a6,s3,+00000010
	lhu	a1,s0,+0000000A
	lbu	a3,s0,+0000000F
	lhu	a2,s0,+00000008
	c.lw	s0,0(a0)
	srli	a6,a6,00000007
	andi	a6,a6,+00000001
	c.li	a5,00000000
	c.addi4spn	a4,00000018
	jal	ra,0000000023046A30
	c.li	a1,00000001
	c.mv	a0,s3
	jal	ra,0000000023045DD2
	c.j	0000000023046DCE

l23047092:
	c.li	a3,00000008
	c.bnez	a4,0000000023047098

l23047096:
	c.li	a3,0000000C

l23047098:
	beq	a3,a5,00000000230470A6

l2304709C:
	lui	a0,000230BA
	addi	a0,a0,+000000AC
	c.j	000000002304723C

l230470A6:
	jal	ra,0000000023048D2E
	addi	s1,s3,+00000020
	sw	a0,s3,+0000001C
	c.mv	a0,s1
	jal	ra,00000000230497AA
	c.bnez	a0,00000000230470D2

l230470BA:
	lw	a5,s7,+00000134
	c.srli	a5,00000004
	c.andi	a5,00000001
	c.bnez	a5,00000000230470D2

l230470C4:
	c.mv	a0,s3
	jal	ra,0000000023045BB4
	c.mv	a1,a0
	c.mv	a0,s1
	jal	ra,00000000230498CA

l230470D2:
	lw	a5,s3,+00000010
	lw	a0,s3,+00000044
	c.li	a4,00000008
	c.srli	a5,00000005
	c.andi	a5,00000001
	c.bnez	a5,00000000230470E4

l230470E2:
	c.li	a4,0000000C

l230470E4:
	add	a4,a4,s5
	lhu	a2,s4,+00000004
	lw	a1,s4,+00000000
	c.add	a0,a4
	jal	ra,00000000230A382C
	c.li	a5,00000001
	sll	s5,a5,s5
	lw	a5,s3,+00000018
	c.mv	a2,s11
	c.li	a0,00000001
	or	s5,s5,a5
	sw	s5,s3,+00000018
	c.li	a1,00000000
	jal	ra,000000002309F244
	c.addi	a0,FFFFFFFF
	bne	s5,a0,000000002304719C

l23047118:
	c.lwsp	s4,000000E4
	c.beqz	a5,0000000023047130

l2304711C:
	lhu	a4,s0,+00000008
	sh	a4,a5,+00000000
	c.lw	s0,28(a4)
	c.sw	a5,4(a4)
	c.lw	s0,32(a4)
	c.andi	a4,00000001
	sb	a4,a5,+00000002

l23047130:
	c.mv	a0,s1
	jal	ra,000000002304986E
	lw	a6,s3,+00000010
	lw	a5,s3,+00000018
	lhu	a1,s0,+0000000A
	lbu	a3,s0,+0000000F
	lhu	a2,s0,+00000008
	c.lw	s0,0(a0)
	srli	a6,a6,00000007
	c.addi4spn	a4,00000018
	andi	a6,a6,+00000001
	jal	ra,0000000023046A30
	lbu	a5,s0,+00000020
	addi	a4,s3,+00000044
	lbu	a1,s8,+00000000
	c.andi	a5,00000008
	c.beqz	a5,0000000023047182

l2304716A:
	c.addi4spn	a3,00000018
	c.mv	a2,a4
	c.mv	a0,s0
	jal	ra,0000000023045FA8

l23047174:
	c.mv	s1,a0
	c.li	a1,00000000
	c.mv	a0,s3
	jal	ra,0000000023045DD2
	c.li	s2,00000002
	c.j	0000000023046E9A

l23047182:
	lw	a5,s3,+00000008
	lbu	a3,s8,+00000001
	c.mv	a2,a1
	c.slli	a5,08
	c.srli	a3,00000007
	srli	a1,a5,00000008
	c.mv	a0,s0
	jal	ra,0000000023045C0C
	c.j	0000000023047174

l2304719C:
	c.li	s2,00000001

l2304719E:
	c.li	s1,00000000
	c.j	0000000023046E9A

l230471A2:
	bne	s9,zero,00000000230471B6

l230471A6:
	lui	a0,000230BA
	addi	a0,a0,+000000D8
	jal	ra,0000000023082388

l230471B2:
	c.li	s6,00000001
	c.j	0000000023046C8A

l230471B6:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023045AC2
	c.beqz	a0,00000000230471D8

l230471C0:
	c.lw	s0,28(a3)
	lhu	a2,s0,+0000000A
	lhu	a1,s0,+00000008
	lui	a0,000230BA
	addi	a0,a0,-00000128
	jal	ra,0000000023082388
	c.j	00000000230471B2

l230471D8:
	c.mv	a0,s4
	jal	ra,0000000023049414
	lbu	s2,s0,+00000020
	c.mv	a1,a0
	andi	s2,s2,+00000008
	beq	s2,zero,00000000230471FE

l230471EC:
	c.addi4spn	a3,00000018
	c.mv	a2,s4
	c.mv	a0,s0
	jal	ra,0000000023045FA8
	c.mv	s1,a0
	c.li	s6,00000001
	c.li	s2,00000000
	c.j	0000000023046E9A

l230471FE:
	c.lw	s0,32(a5)
	c.li	s6,00000001
	andi	a5,a5,+000000C0
	c.beqz	a5,000000002304719E

l23047208:
	c.lw	s0,28(a1)
	c.mv	a2,a0
	c.mv	a4,s4
	c.li	a3,00000000
	c.mv	a0,s0
	jal	ra,0000000023045C0C
	c.mv	s1,a0
	c.li	s6,00000001
	c.j	0000000023046E9A

l2304721C:
	c.mv	a4,s4
	c.mv	a3,s6
	c.addi4spn	a2,00000018
	c.j	0000000023046EE6

l23047224:
	c.li	a2,00000000
	c.mv	s3,s1

l23047228:
	bltu	a0,a4,0000000023047234

l2304722C:
	bne	a4,a0,0000000023046DF2

l23047230:
	bgeu	a5,a3,0000000023046DF2

l23047234:
	lui	a0,000230BA
	addi	a0,a0,-000000B8

l2304723C:
	jal	ra,0000000023082388
	c.j	0000000023046C8A

l23047242:
	c.li	a2,00000001
	addi	s3,s1,+00000050
	c.j	0000000023047228

;; bt_mesh_rx_reset: 2304724A
;;   Called from:
;;     2303B10A (in clear_friendship)
;;     23041CDE (in bt_mesh_reset)
bt_mesh_rx_reset proc
	c.addi	sp,FFFFFFF0
	lui	a0,0004200E
	c.swsp	s0,00000004
	c.li	a1,00000001
	addi	s0,a0,-00000378
	addi	a0,a0,-00000378
	c.swsp	ra,00000084
	jal	ra,0000000023045DD2
	addi	a0,s0,+00000050
	c.li	a1,00000001
	jal	ra,0000000023045DD2
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lui	a0,0004200E
	addi	a2,zero,+00000028
	c.li	a1,00000000
	addi	a0,a0,-00000578
	c.addi	sp,00000010
	jal	zero,00000000230A3A68

;; bt_mesh_tx_reset: 23047284
;;   Called from:
;;     23041CE2 (in bt_mesh_reset)
bt_mesh_tx_reset proc
	c.addi	sp,FFFFFFF0
	lui	a0,00042014
	c.swsp	s0,00000004
	addi	s0,a0,+00000758
	addi	a0,a0,+00000758
	c.swsp	ra,00000084
	jal	ra,0000000023045E4C
	addi	a0,s0,+00000060
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023045E4C

;; bt_mesh_trans_init: 230472A8
;;   Called from:
;;     23041DF8 (in bt_mesh_init)
bt_mesh_trans_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042014
	c.swsp	s1,00000080
	addi	s0,s0,+00000758
	lui	s1,00023046
	addi	a1,s1,-00000060
	addi	a0,s0,+00000038
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	jal	ra,0000000023049780
	addi	a1,s1,-00000060
	addi	a0,s0,+00000098
	lui	s0,0004200E
	addi	s0,s0,-00000378
	jal	ra,0000000023049780
	lui	s2,00023047
	addi	a1,s2,-000004D6
	addi	a0,s0,+00000020
	lui	s1,00042014
	jal	ra,0000000023049780
	addi	s1,s1,+00000680
	c.sw	s0,76(s1)
	c.sw	s0,68(s1)
	addi	a1,s2,-000004D6
	addi	s1,s1,+0000006C
	addi	a0,s0,+00000070
	jal	ra,0000000023049780
	sw	s1,s0,+0000009C
	sw	s1,s0,+00000094
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_heartbeat_send: 2304731E
;;   Called from:
;;     2303B19A (in clear_friendship)
;;     2303BD7E (in bt_mesh_lpn_friend_update)
;;     2303E1F8 (in friend_set)
;;     2303F65C (in hb_publish)
;;     2303FE0C (in relay_set)
;;     230401A8 (in gatt_proxy_set)
bt_mesh_heartbeat_send proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	jal	ra,000000002304058C
	c.mv	s0,a0
	c.li	a2,00000012
	c.li	a1,00000000
	addi	a0,sp,+0000001E
	jal	ra,00000000230A3A68
	c.li	a5,FFFFFFFF
	sh	a5,sp,+0000001A
	lhu	a5,s0,+00000030
	lhu	a0,s0,+00000038
	c.swsp	zero,00000084
	sh	a5,sp,+0000001C
	lbu	a5,s0,+00000035
	sh	a0,sp,+00000018
	c.swsp	zero,00000008
	sb	a5,sp,+00000023
	c.swsp	zero,00000088
	jal	ra,0000000023042056
	c.addi4spn	a5,00000018
	c.swsp	a5,00000008
	c.swsp	a0,00000084
	c.lw	s0,0(a0)
	jal	ra,000000002303C32A
	lhu	a5,a0,+00000000
	sh	a5,sp,+00000014
	jal	ra,000000002303FC54
	lhu	a5,s0,+00000030
	sb	a0,sp,+00000016
	c.beqz	a5,00000000230473DA

l23047380:
	lbu	a5,s0,+00000035
	sb	a5,sp,+00000008
	jal	ra,000000002303FD32
	c.addi	a0,FFFFFFFF
	sltiu	s0,a0,+00000001
	jal	ra,000000002303FF8E
	c.li	a5,00000001
	bne	a0,a5,00000000230473A0

l2304739C:
	ori	s0,s0,+00000002

l230473A0:
	jal	ra,000000002303FD44
	c.li	a5,00000001
	bne	a0,a5,00000000230473AE

l230473AA:
	ori	s0,s0,+00000004

l230473AE:
	lui	a5,0004200D
	lw	a5,a5,+000007F0
	c.srli	a5,00000004
	c.andi	a5,00000001
	c.beqz	a5,00000000230473C0

l230473BC:
	ori	s0,s0,+00000008

l230473C0:
	c.li	a6,00000000
	c.li	a5,00000000
	c.li	a4,00000000
	c.li	a3,00000003
	c.addi4spn	a2,00000008
	c.li	a1,0000000A
	c.addi4spn	a0,0000000C
	sb	zero,sp,+00000009
	sb	s0,sp,+0000000A
	jal	ra,000000002304696E

l230473DA:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.addi16sp	00000040
	c.jr	ra

;; adv_alloc: 230473E2
adv_alloc proc
	c.li	a5,00000018
	add	a0,a0,a5
	lui	a5,00042015
	addi	a5,a5,-000007E8
	c.add	a0,a5
	c.jr	ra

;; friend_purge_old_ack: 230473F4
;;   Called from:
;;     230486B4 (in bt_mesh_friend_enqueue_rx)
;;     23048838 (in bt_mesh_friend_enqueue_tx)
friend_purge_old_ack proc
	c.lw	a0,76(a5)
	c.li	a4,00000000

l230473F8:
	c.bnez	a5,00000000230473FC

l230473FA:
	c.jr	ra

l230473FC:
	lw	a6,a5,+00000014
	c.lw	a5,0(a3)
	lhu	a7,a6,+0000000A
	bne	a7,a2,000000002304744E

l2304740A:
	lw	t1,a6,+00000010
	lw	a7,a1,+00000000
	bne	t1,a7,000000002304744E

l23047416:
	lw	a7,a6,+00000014
	lw	a6,a1,+00000004
	bne	a7,a6,000000002304744E

l23047422:
	c.bnez	a4,0000000023047442

l23047424:
	c.lw	a0,80(a4)
	c.sw	a0,76(a3)
	bne	a5,a4,000000002304742E

l2304742C:
	c.sw	a0,80(a3)

l2304742E:
	sw	zero,a5,+00000000
	c.lw	a0,84(a4)
	c.addi	a4,FFFFFFFF
	c.sw	a0,84(a4)
	sw	zero,a5,+00000000
	c.mv	a0,a5
	jal	zero,00000000230491C0

l23047442:
	c.sw	a4,0(a3)
	c.lw	a0,80(a3)
	bne	a5,a3,000000002304742E

l2304744A:
	c.sw	a0,80(a4)
	c.j	000000002304742E

l2304744E:
	c.mv	a4,a5
	c.mv	a5,a3
	c.j	00000000230473F8

;; send_friend_clear: 23047454
;;   Called from:
;;     230476A2 (in clear_timeout)
;;     23048392 (in bt_mesh_friend_req)
send_friend_clear proc
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.li	a2,00000012
	c.mv	s0,a0
	c.li	a1,00000000
	addi	a0,sp,+0000001E
	c.swsp	ra,0000009C
	jal	ra,00000000230A3A68
	lhu	a5,s0,+0000000E
	c.swsp	zero,00000088
	sh	a5,sp,+00000018
	c.li	a5,FFFFFFFF
	sh	a5,sp,+0000001A
	lhu	a5,s0,+0000005C
	sh	a5,sp,+0000001C
	addi	a5,zero,+0000007F
	sb	a5,sp,+00000023
	lui	a5,0004200E
	addi	a5,a5,-00000740
	c.swsp	a5,00000084
	c.addi4spn	a5,00000018
	c.swsp	a5,00000008
	jal	ra,000000002303C3B0
	sh	a0,sp,+00000014
	jal	ra,000000002303FC54
	lhu	a5,s0,+00000000
	sb	a0,sp,+00000016
	c.mv	a6,s0
	srli	a4,a5,00000008
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,sp,+00000008
	lhu	a5,s0,+0000000A
	c.addi4spn	a2,00000008
	c.addi4spn	a0,0000000C
	srli	a4,a5,00000008
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,sp,+0000000A
	lui	a5,000230CC
	addi	a5,a5,-000005D0
	c.li	a4,00000000
	c.li	a3,00000004
	c.li	a1,00000005
	jal	ra,000000002304696E
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.addi16sp	00000040
	c.jr	ra

;; friend_clear_sent: 230474E6
friend_clear_sent proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	lhu	a1,a1,+0000005E
	addi	a5,zero,+000003E8
	addi	a0,s0,+00000060
	add	a1,a1,a5
	jal	ra,00000000230498CA
	lhu	a5,s0,+0000005E
	c.lwsp	a2,00000020
	c.slli	a5,01
	sh	a5,s0,+0000005E
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; create_friend_pdu: 23047514
;;   Called from:
;;     23047946 (in encode_friend_ctl)
;;     23048708 (in bt_mesh_friend_enqueue_rx)
;;     230488AC (in bt_mesh_friend_enqueue_tx)
create_friend_pdu proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.mv	s4,a0
	lhu	a0,a0,+0000000E
	c.mv	s0,a1
	c.mv	s3,a2
	jal	ra,0000000023042056
	c.mv	s2,a0
	lui	a1,00023047
	lui	a0,0004200F
	c.li	a4,00000000
	c.li	a3,00000008
	c.li	a2,00000001
	addi	a1,a1,+000003E2
	addi	a0,a0,-000000FC
	jal	ra,000000002303CC94
	c.mv	s1,a0
	beq	a0,zero,0000000023047642

l23047552:
	c.lw	a0,20(a5)
	lhu	a4,s0,+00000000
	c.li	a2,FFFFFFFF
	c.li	a3,FFFFFFFF
	sh	a4,a5,+0000000A
	c.lw	a0,20(a5)
	c.sw	a5,16(a2)
	c.sw	a5,20(a3)
	lb	a5,s0,+00000007
	bge	a5,zero,000000002304761A

l2304756E:
	lw	a5,s3,+00000000
	c.li	a4,00000004
	lbu	a5,a5,+00000000
	andi	a5,a5,+0000007F
	bne	a5,a4,000000002304761A

l23047580:
	lbu	a0,s2,+0000001E
	addi	a5,zero,+00000059
	add	a0,a0,a5
	addi	a5,a0,+00000041
	c.add	a5,s2
	c.swsp	a5,00000004
	addi	a5,a0,+00000069
	c.add	a5,s2
	c.add	a0,s2
	c.swsp	a5,00000084
	lbu	a5,a0,+00000040
	sb	a5,sp,+00000007

l230475A6:
	c.lw	s0,8(a1)
	lbu	a5,sp,+00000007
	addi	s2,s1,+00000008
	c.slli	a1,07
	c.or	a1,a5
	andi	a1,a1,+000000FF
	c.mv	a0,s2
	jal	ra,0000000023049306
	c.lw	s0,4(a1)
	lb	a5,s0,+00000007
	c.srli	a1,00000018
	bge	a5,zero,0000000023047654

l230475CA:
	ori	a1,a1,+00000080

l230475CE:
	c.mv	a0,s2
	jal	ra,0000000023049306
	c.li	a2,00000003
	addi	a1,s0,+00000004
	c.mv	a0,s2
	jal	ra,00000000230492F0
	lhu	a1,s0,+00000000
	c.mv	a0,s2
	jal	ra,0000000023049336
	lhu	a1,s0,+00000002
	c.mv	a0,s2
	jal	ra,0000000023049336
	lhu	a2,s3,+00000004
	lw	a1,s3,+00000000
	c.mv	a0,s2
	jal	ra,00000000230492F0
	c.lw	s0,8(a2)
	c.lwsp	s0,00000044
	c.li	a3,00000000
	c.mv	a1,s2
	jal	ra,0000000023041042
	c.beqz	a0,000000002304765A

l23047610:
	lui	a0,000230B9
	addi	a0,a0,+000000AC
	c.j	0000000023047636

l2304761A:
	lhu	a1,s4,+00000000
	c.addi4spn	a4,0000000C
	c.addi4spn	a3,00000008
	addi	a2,sp,+00000007
	c.mv	a0,s2
	jal	ra,00000000230423DE
	c.beqz	a0,00000000230475A6

l2304762E:
	lui	a0,000230BB
	addi	a0,a0,-00000764

l23047636:
	jal	ra,0000000023082388
	c.mv	a0,s1
	jal	ra,00000000230491C0
	c.li	s1,00000000

l23047642:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.mv	a0,s1
	c.lwsp	zero,00000158
	c.lwsp	tp,00000134
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l23047654:
	andi	a1,a1,+0000007F
	c.j	00000000230475CE

l2304765A:
	c.lwsp	a2,00000084
	c.lw	s0,8(a1)
	c.lw	s1,8(a0)
	jal	ra,0000000023040FDE
	c.beqz	a0,0000000023047642

l23047666:
	lui	a0,000230B9
	addi	a0,a0,+000000C4
	c.j	0000000023047636

;; clear_timeout: 23047670
clear_timeout proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023048D2E
	lw	a4,s0,-0000005C
	lw	a5,s0,-00000008
	c.slli	a4,01
	c.sub	a0,a5
	bgeu	a4,a0,0000000023047698

l2304768C:
	sh	zero,s0,+00000FFC
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23047698:
	addi	a0,s0,-00000060
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023047454

;; friend_lpn_matches: 230476A6
;;   Called from:
;;     2304855A (in bt_mesh_friend_match)
;;     23048574 (in bt_mesh_friend_match)
;;     230485AA (in bt_mesh_friend_queue_has_space)
;;     230485D6 (in bt_mesh_friend_queue_has_space)
;;     2304868E (in bt_mesh_friend_enqueue_rx)
;;     2304879C (in bt_mesh_friend_enqueue_tx)
;;     230487AE (in bt_mesh_friend_enqueue_tx)
;;     23048810 (in bt_mesh_friend_enqueue_tx)
;;     23048908 (in bt_mesh_friend_clear_incomplete)
;;     23048964 (in bt_mesh_friend_clear_incomplete)
friend_lpn_matches proc
	lbu	a5,a0,+00000003
	c.mv	a4,a0
	andi	a5,a5,+00000040
	c.beqz	a5,00000000230476FE

l230476B2:
	lhu	a5,a0,+0000000E
	c.li	a0,00000000
	bne	a5,a1,0000000023047700

l230476BC:
	slli	a5,a2,00000010
	c.srai	a5,00000010
	blt	zero,a5,00000000230476E4

l230476C6:
	lhu	a5,a4,+00000010
	c.li	a0,00000001
	beq	a5,a2,0000000023047700

l230476D0:
	lhu	a5,a4,+00000012
	beq	a5,a2,0000000023047700

l230476D8:
	lhu	a0,a4,+00000014
	c.sub	a0,a2
	sltiu	a0,a0,+00000001
	c.jr	ra

l230476E4:
	lhu	a3,a4,+00000000
	c.beqz	a3,0000000023047700

l230476EA:
	c.li	a5,00000000
	bltu	a2,a3,00000000230476FA

l230476F0:
	lbu	a0,a4,+00000008
	c.add	a0,a3
	slt	a5,a2,a0

l230476FA:
	c.mv	a0,a5
	c.jr	ra

l230476FE:
	c.li	a0,00000000

l23047700:
	c.jr	ra

;; friend_queue_has_space.part.6: 23047702
;;   Called from:
;;     230479D2 (in friend_queue_prepare_space)
;;     230485C4 (in bt_mesh_friend_queue_has_space)
;;     230485EC (in bt_mesh_friend_queue_has_space)
friend_queue_has_space.part.6 proc
	c.beqz	a2,0000000023047722

l23047704:
	c.lw	a0,60(a5)
	c.beqz	a5,0000000023047722

l23047708:
	c.lw	a5,20(a5)
	lhu	a4,a5,+0000000A
	bne	a4,a1,0000000023047722

l23047712:
	c.lw	a5,16(a1)
	c.lw	a2,0(a4)
	bne	a1,a4,0000000023047722

l2304771A:
	c.lw	a5,20(a4)
	c.lw	a2,4(a5)
	beq	a4,a5,0000000023047730

l23047722:
	lbu	a5,a0,+00000044
	c.li	a0,00000010
	c.sub	a0,a5
	sltu	a0,a3,a0
	c.jr	ra

l23047730:
	c.li	a0,00000001
	c.jr	ra

;; buf_send_start: 23047734
buf_send_start proc
	lbu	a5,a2,+00000003
	andi	a4,a5,-00000011
	sb	a4,a2,+00000003
	andi	a5,a5,+00000040
	c.bnez	a5,0000000023047760

l23047746:
	c.lw	a2,72(a0)
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a2
	c.swsp	ra,00000084
	jal	ra,00000000230491C0
	sw	zero,s0,+00000048
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23047760:
	c.jr	ra

;; buf_send_end: 23047762
buf_send_end proc
	lbu	a5,a1,+00000003
	andi	a4,a5,+00000004
	c.beqz	a4,0000000023047778

l2304776C:
	lui	a0,000230BB
	addi	a0,a0,-00000798
	jal	zero,0000000023082388

l23047778:
	andi	a5,a5,+00000040
	addi	a0,a1,+00000018
	c.beqz	a5,0000000023047788

l23047782:
	c.lw	a1,4(a1)

l23047784:
	jal	zero,00000000230498CA

l23047788:
	addi	a1,zero,+000003E8
	c.j	0000000023047784

;; purge_buffers: 2304778E
;;   Called from:
;;     23047802 (in friend_clear)
;;     2304780A (in friend_clear)
;;     2304894E (in bt_mesh_friend_clear_incomplete)
;;     230489AC (in bt_mesh_friend_clear_incomplete)
purge_buffers proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0

l23047796:
	c.lw	s0,0(a0)
	c.bnez	a0,00000000230477A2

l2304779A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230477A2:
	c.lw	a0,0(a5)
	c.lw	s0,4(a4)
	c.sw	s0,0(a5)
	bne	a0,a4,00000000230477AE

l230477AC:
	c.sw	s0,4(a5)

l230477AE:
	lbu	a5,a0,+00000005
	sw	zero,a0,+00000000
	c.andi	a5,FFFFFFFE
	sb	a5,a0,+00000005
	jal	ra,00000000230491C0
	c.j	0000000023047796

;; friend_clear: 230477C2
;;   Called from:
;;     230478A2 (in friend_timeout)
;;     23047CA8 (in bt_mesh_friend_clear_net_idx)
;;     23047CCC (in bt_mesh_friend_clear_net_idx)
;;     23047E4A (in bt_mesh_friend_clear)
;;     23048306 (in bt_mesh_friend_req)
friend_clear proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.addi	a0,00000018
	c.swsp	ra,00000084
	jal	ra,000000002304986E
	lhu	a1,s0,+00000000
	lhu	a0,s0,+0000000E
	jal	ra,0000000023042390
	c.lw	s0,72(a4)
	c.beqz	a4,00000000230477FE

l230477E0:
	lbu	a5,s0,+00000003
	c.andi	a5,00000010
	c.beqz	a5,00000000230477F4

l230477E8:
	c.lw	a4,20(a4)
	lbu	a5,a4,+00000008
	c.andi	a5,FFFFFFFB
	sb	a5,a4,+00000008

l230477F4:
	c.lw	s0,72(a0)
	jal	ra,00000000230491C0
	sw	zero,s0,+00000048

l230477FE:
	addi	a0,s0,+0000004C
	jal	ra,000000002304778E
	addi	a0,s0,+0000003C
	jal	ra,000000002304778E
	lbu	a5,s0,+00000003
	sb	zero,s0,+00000044
	sw	zero,s0,+00000054
	andi	a5,a5,-00000076
	sb	a5,s0,+00000003
	addi	a0,s0,+00000010
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a2,00000006
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,00000000230A3A68

;; friend_timeout: 23047834
friend_timeout proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lbu	a5,a0,-00000015
	addi	s0,a0,-00000018
	andi	a4,a5,+00000002
	c.beqz	a4,0000000023047876

l23047848:
	c.lw	a0,48(a4)
	c.beqz	a4,0000000023047876

l2304784C:
	c.andi	a5,FFFFFFFD
	sb	a5,a0,+00000FEB

l23047852:
	lbu	a5,a0,-00000015
	c.mv	a2,s0
	lui	a1,000230CC
	c.andi	a5,FFFFFFFB
	ori	a5,a5,+00000010
	sb	a5,a0,+00000FEB
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lw	a0,48(a0)
	addi	a1,a1,-000005D8
	c.addi	sp,00000010
	jal	zero,000000002303CD5C

l23047876:
	lw	a3,a0,-00000018
	lui	a4,00044000
	c.mv	a5,a0
	c.and	a4,a3
	lui	a3,00040000
	bne	a4,a3,00000000230478A6

l2304788A:
	lhu	a1,a0,-00000018
	lui	a0,000230BB
	addi	a0,a0,-0000069C

l23047896:
	jal	ra,0000000023082388
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,00000000230477C2

l230478A6:
	c.lw	a0,52(a4)
	c.bnez	a4,00000000230478BC

l230478AA:
	sw	zero,a0,+00000030
	lhu	a1,a0,-00000018
	lui	a0,000230BB
	addi	a0,a0,-0000067C
	c.j	0000000023047896

l230478BC:
	c.lw	a4,0(a3)
	c.lw	a0,56(a2)
	c.sw	a0,52(a3)
	bne	a4,a2,00000000230478C8

l230478C6:
	c.sw	a0,56(a3)

l230478C8:
	c.sw	a5,48(a4)
	lbu	a3,a4,+00000005
	c.andi	a3,FFFFFFFE
	sb	a3,a4,+00000005
	c.lw	a5,48(a4)
	sw	zero,a4,+00000000
	c.lw	a5,60(a4)
	c.addi	a4,FFFFFFFF
	c.sw	a5,60(a4)
	c.j	0000000023047852

;; encode_friend_ctl: 230478E2
;;   Called from:
;;     23047984 (in enqueue_sub_cfm)
;;     23047AD6 (in enqueue_update)
;;     23048450 (in bt_mesh_friend_req)
encode_friend_ctl proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.mv	s1,a0
	c.mv	a0,a2
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	a2,00000084
	jal	ra,00000000230493D4
	jal	ra,000000002303C3B0
	lhu	a5,s1,+00000000
	sh	a0,sp,+00000014
	sh	a5,sp,+00000016
	addi	a5,zero,-00000080
	sb	a5,sp,+0000001B
	jal	ra,0000000023042890
	srli	a5,a0,00000010
	sb	a5,sp,+00000018
	sb	a0,sp,+0000001A
	srli	a5,a0,00000008
	lui	a0,0004200D
	sb	a5,sp,+00000019
	addi	a0,a0,+000006C4
	lui	a5,0004200D
	lw	s0,a5,+000006BC
	jal	ra,0000000023048E6C
	c.lwsp	a2,00000084
	c.srai	a0,00000002
	c.andi	a0,00000001
	c.sub	s0,a0
	c.addi4spn	a1,00000014
	c.mv	a0,s1
	c.swsp	s0,0000008C
	jal	ra,0000000023047514
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; enqueue_sub_cfm: 23047954
;;   Called from:
;;     23047EFA (in bt_mesh_friend_sub_add)
;;     23047FD4 (in bt_mesh_friend_sub_rem)
enqueue_sub_cfm proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	lui	a5,00000020
	c.mv	s0,a0
	c.mv	s1,a1
	c.addi4spn	a0,00000004
	c.li	a1,00000001
	c.swsp	ra,0000008C
	c.swsp	a5,00000004
	c.swsp	sp,00000080
	c.swsp	sp,00000084
	jal	ra,00000000230490EC
	c.li	a1,00000001
	c.addi4spn	a0,00000004
	jal	ra,00000000230492DE
	sb	s1,a0,+00000000
	c.addi4spn	a2,00000004
	c.li	a1,00000009
	c.mv	a0,s0
	jal	ra,00000000230478E2
	c.bnez	a0,00000000230479A0

l2304798A:
	lui	a0,000230BB
	addi	a0,a0,-00000718
	jal	ra,0000000023082388

l23047996:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l230479A0:
	c.mv	s1,a0
	c.lw	s0,72(a0)
	c.beqz	a0,00000000230479AA

l230479A6:
	jal	ra,00000000230491C0

l230479AA:
	lbu	a5,s0,+00000003
	c.sw	s0,72(s1)
	ori	a5,a5,+00000002
	sb	a5,s0,+00000003
	c.j	0000000023047996

;; friend_queue_prepare_space: 230479BA
;;   Called from:
;;     2304869E (in bt_mesh_friend_enqueue_rx)
;;     23048820 (in bt_mesh_friend_enqueue_tx)
friend_queue_prepare_space proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.li	a5,00000010
	bltu	a5,a3,0000000023047A10

l230479CE:
	c.mv	s1,a0
	c.mv	s3,a3
	jal	ra,0000000023047702
	c.mv	s2,a0
	c.beqz	a0,00000000230479EE

l230479DA:
	c.lw	s1,84(a5)
	c.li	s0,00000010
	c.li	s4,00000000
	c.sub	s0,a5
	andi	s0,s0,+000000FF

l230479E6:
	bne	s4,zero,0000000023047A00

l230479EA:
	bltu	s0,s3,0000000023047A00

l230479EE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23047A00:
	c.lw	s1,76(a0)
	c.bnez	a0,0000000023047A14

l23047A04:
	lui	a0,000230BB
	addi	a0,a0,-000006C0
	jal	ra,0000000023082388

l23047A10:
	c.li	s2,00000000
	c.j	00000000230479EE

l23047A14:
	c.lw	a0,0(a5)
	c.lw	s1,80(a4)
	c.sw	s1,76(a5)
	bne	a0,a4,0000000023047A20

l23047A1E:
	c.sw	s1,80(a5)

l23047A20:
	c.lw	s1,84(a5)
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	c.addi	a5,FFFFFFFF
	c.sw	s1,84(a5)
	lbu	a5,a0,+00000005
	sw	zero,a0,+00000000
	andi	s4,a5,+00000001
	c.andi	a5,FFFFFFFE
	sb	a5,a0,+00000005
	jal	ra,00000000230491C0
	c.j	00000000230479E6

;; enqueue_update: 23047A44
;;   Called from:
;;     23047B2C (in enqueue_friend_pdu)
;;     23047B8E (in enqueue_friend_pdu)
;;     23048104 (in bt_mesh_friend_poll)
enqueue_update proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	c.mv	s0,a0
	c.addi4spn	a5,0000000C
	lhu	a0,a0,+0000000E
	c.swsp	a5,00000088
	lui	a5,00000070
	c.swsp	a5,0000000C
	c.addi4spn	a5,0000000C
	c.swsp	a5,0000008C
	c.mv	s2,a1
	jal	ra,0000000023042056
	c.mv	s3,a0
	c.li	a1,00000001
	c.addi4spn	a0,00000014
	jal	ra,00000000230490EC
	c.li	a1,00000006
	c.addi4spn	a0,00000014
	jal	ra,00000000230492DE
	c.mv	s1,a0
	c.mv	a0,s3
	jal	ra,000000002304247C
	sb	a0,s1,+00000000
	lui	a5,0004200D
	lw	a4,a5,+000006BC
	c.lui	a2,00010000
	addi	a2,a2,-00000100
	slli	a3,a4,00000018
	srli	a5,a4,00000018
	c.or	a5,a3
	srli	a3,a4,00000008
	c.and	a3,a2
	c.or	a5,a3
	c.slli	a4,08
	lui	a3,00000FF0
	c.and	a4,a3
	c.or	a5,a4
	srli	a4,a5,00000008
	sb	a5,s1,+00000001
	sb	a4,s1,+00000002
	srli	a4,a5,00000010
	c.srli	a5,00000018
	sb	a4,s1,+00000003
	sb	a5,s1,+00000004
	sb	s2,s1,+00000005
	c.addi4spn	a2,00000014
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,00000000230478E2
	c.bnez	a0,0000000023047AF6

l23047ADC:
	lui	a0,000230BB
	addi	a0,a0,-000006E4
	jal	ra,0000000023082388

l23047AE8:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l23047AF6:
	lbu	a5,s0,+00000003
	c.mv	a1,a0
	addi	a0,s0,+0000004C
	c.andi	a5,FFFFFFF7
	sb	a5,s0,+00000003
	jal	ra,00000000230490F4
	c.lw	s0,84(a5)
	c.addi	a5,00000001
	c.sw	s0,84(a5)
	c.j	0000000023047AE8

;; enqueue_friend_pdu: 23047B12
;;   Called from:
;;     23048756 (in bt_mesh_friend_enqueue_rx)
;;     230488E0 (in bt_mesh_friend_enqueue_tx)
enqueue_friend_pdu proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s2,00000000
	c.mv	s0,a0
	c.mv	s1,a3
	c.bnez	a1,0000000023047B4C

l23047B22:
	lbu	a5,a0,+00000003
	c.andi	a5,00000008
	c.beqz	a5,0000000023047B30

l23047B2A:
	c.li	a1,00000001
	jal	ra,0000000023047A44

l23047B30:
	c.mv	a1,s1
	addi	a0,s0,+0000004C
	jal	ra,00000000230490F4
	c.lw	s0,84(a5)
	c.addi	a5,00000001
	c.sw	s0,84(a5)

l23047B40:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23047B4C:
	c.lw	a3,20(a5)
	c.lw	a0,60(a4)
	c.mv	s2,a1
	lhu	a1,a5,+0000000A
	c.beqz	a4,0000000023047BB4

l23047B58:
	c.lw	a4,20(a4)
	lhu	a3,a4,+0000000A
	bne	a3,a1,0000000023047BDC

l23047B62:
	c.lw	a4,16(a2)
	c.lw	a5,16(a3)
	bne	a2,a3,0000000023047BDC

l23047B6A:
	c.lw	a4,20(a4)
	c.lw	a5,20(a5)
	bne	a4,a5,0000000023047BDC

l23047B72:
	c.mv	a1,s1
	addi	a0,s0,+0000003C
	jal	ra,00000000230490F4
	c.li	a5,00000002
	bne	s2,a5,0000000023047BCE

l23047B82:
	lbu	a5,s0,+00000003
	c.andi	a5,00000008
	c.beqz	a5,0000000023047B92

l23047B8A:
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023047A44

l23047B92:
	c.lw	s0,60(a5)
	c.li	a2,FFFFFFFF
	c.li	a3,FFFFFFFF

l23047B98:
	c.bnez	a5,0000000023047BBA

l23047B9A:
	c.lw	s0,80(a4)
	c.lw	s0,60(a3)
	c.lw	s0,64(a5)
	c.bnez	a4,0000000023047BCA

l23047BA2:
	c.sw	s0,76(a3)

l23047BA4:
	c.sw	s0,80(a5)
	sw	zero,s0,+0000003C
	sw	zero,s0,+00000040
	sb	zero,s0,+00000044
	c.j	0000000023047B40

l23047BB4:
	sb	a2,a0,+00000044
	c.j	0000000023047B72

l23047BBA:
	c.lw	a5,20(a4)
	c.sw	a4,16(a2)
	c.sw	a4,20(a3)
	c.lw	s0,84(a4)
	c.addi	a4,00000001
	c.sw	s0,84(a4)
	c.lw	a5,0(a5)
	c.j	0000000023047B98

l23047BCA:
	c.sw	a4,0(a3)
	c.j	0000000023047BA4

l23047BCE:
	lbu	a5,s1,+00000005
	ori	a5,a5,+00000001
	sb	a5,s1,+00000005
	c.j	0000000023047B40

l23047BDC:
	lui	a0,000230BB
	addi	a0,a0,-00000748
	jal	ra,0000000023082388
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230491C0

;; bt_mesh_friend_find: 23047BF8
;;   Called from:
;;     2303E13A (in lpn_timeout_get)
;;     23047DD2 (in bt_mesh_friend_clear)
;;     23047E98 (in bt_mesh_friend_sub_add)
;;     23047F78 (in bt_mesh_friend_sub_rem)
;;     23048046 (in bt_mesh_friend_poll)
;;     230482BE (in bt_mesh_friend_req)
bt_mesh_friend_find proc
	lui	a5,0004200D
	c.lui	a7,00010000
	addi	a6,a5,+000006BC
	c.li	a4,00000000
	addi	a5,a5,+000006BC
	c.addi	a7,FFFFFFFF
	addi	t4,zero,+00000084
	c.li	t5,00000001

l23047C10:
	c.beqz	a2,0000000023047C24

l23047C12:
	add	t1,a4,t4
	c.add	t1,a5
	lbu	t1,t1,+00000023
	andi	t1,t1,+00000020
	beq	t1,zero,0000000023047C5A

l23047C24:
	c.beqz	a3,0000000023047C38

l23047C26:
	add	t1,a4,t4
	c.add	t1,a5
	lbu	t1,t1,+00000023
	andi	t1,t1,+00000040
	beq	t1,zero,0000000023047C5A

l23047C38:
	beq	a0,a7,0000000023047C44

l23047C3C:
	lhu	t1,a6,+0000002E
	bne	t1,a0,0000000023047C5A

l23047C44:
	lhu	t3,a6,+00000020
	beq	t3,zero,0000000023047C5A

l23047C4C:
	bltu	a1,t3,0000000023047C5A

l23047C50:
	lbu	t1,a6,+00000028
	c.add	t1,t3
	blt	a1,t1,0000000023047C6A

l23047C5A:
	addi	a6,a6,+00000084
	bne	a4,t5,0000000023047C66

l23047C62:
	c.li	a0,00000000
	c.jr	ra

l23047C66:
	c.li	a4,00000001
	c.j	0000000023047C10

l23047C6A:
	addi	a0,zero,+00000084
	add	a0,a4,a0
	addi	a0,a0,+00000020
	c.add	a0,a5
	c.jr	ra

;; bt_mesh_friend_clear_net_idx: 23047C7A
;;   Called from:
;;     2303E1EC (in friend_set)
;;     2304060C (in bt_mesh_subnet_del)
;;     23041CF0 (in bt_mesh_reset)
bt_mesh_friend_clear_net_idx proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200D
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	addi	a4,a5,+000006BC
	c.swsp	ra,00000084
	lhu	a3,a4,+0000002E
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	c.mv	s0,a0
	addi	s1,a5,+000006BC
	beq	a3,a4,0000000023047CAC

l23047C9C:
	bne	a0,a4,0000000023047CD0

l23047CA0:
	lui	a0,0004200D
	addi	a0,a0,+000006DC
	jal	ra,00000000230477C2

l23047CAC:
	lhu	a4,s1,+000000B2
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	beq	a4,a5,0000000023047CDA

l23047CB8:
	bne	s0,a5,0000000023047CD6

l23047CBC:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	lui	a0,0004200D
	addi	a0,a0,+00000760
	c.addi	sp,00000010
	jal	zero,00000000230477C2

l23047CD0:
	bne	a0,a3,0000000023047CAC

l23047CD4:
	c.j	0000000023047CA0

l23047CD6:
	beq	s0,a4,0000000023047CBC

l23047CDA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_friend_sec_update: 23047CE4
;;   Called from:
;;     230426C8 (in bt_mesh_net_sec_update)
bt_mesh_friend_sec_update proc
	lui	a5,0004200D
	addi	a4,a5,+000006BC
	lhu	a3,a4,+0000002E
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	addi	a5,a5,+000006BC
	beq	a3,a4,0000000023047D0C

l23047CFC:
	bne	a0,a4,0000000023047D2A

l23047D00:
	lbu	a4,a5,+00000023
	ori	a4,a4,+00000008
	sb	a4,a5,+00000023

l23047D0C:
	lhu	a3,a5,+000000B2
	c.lui	a4,00010000
	c.addi	a4,FFFFFFFF
	beq	a3,a4,0000000023047D34

l23047D18:
	bne	a0,a4,0000000023047D30

l23047D1C:
	lbu	a4,a5,+000000A7
	ori	a4,a4,+00000008
	sb	a4,a5,+000000A7
	c.jr	ra

l23047D2A:
	bne	a0,a3,0000000023047D0C

l23047D2E:
	c.j	0000000023047D00

l23047D30:
	beq	a0,a3,0000000023047D1C

l23047D34:
	c.jr	ra

;; bt_mesh_friend_clear: 23047D36
;;   Called from:
;;     23046256 (in ctl_recv)
bt_mesh_friend_clear proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s3,00000094
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.lw	a0,0(a5)
	c.lw	a1,0(s0)
	c.swsp	a1,00000084
	c.swsp	a5,00000088
	addi	a5,a0,+00000004
	c.swsp	a5,0000000C
	c.mv	s3,a0
	c.swsp	zero,0000008C
	jal	ra,000000002303C3B0
	sh	a0,sp,+0000001C
	jal	ra,000000002303FC54
	c.lwsp	a2,00000064
	sb	a0,sp,+0000001E
	c.li	a5,00000003
	lhu	a4,a1,+00000004
	bltu	a5,a4,0000000023047D8C

l23047D70:
	lui	a0,000230BA
	addi	a0,a0,+000004A8
	jal	ra,0000000023082388
	c.li	a0,FFFFFFEA

l23047D7E:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l23047D8C:
	lbu	a5,s0,+00000001
	lbu	a4,s0,+00000000
	c.li	a3,00000000
	c.slli	a5,08
	c.or	a5,a4
	srli	s2,a5,00000008
	c.slli	a5,08
	or	a5,s2,a5
	slli	s2,a5,00000010
	lbu	a5,s0,+00000003
	lbu	a4,s0,+00000002
	srli	s2,s2,00000010
	c.slli	a5,08
	c.or	a5,a4
	srli	s1,a5,00000008
	c.slli	a5,08
	c.or	a5,s1
	slli	s1,a5,00000010
	lw	a5,s3,+00000000
	c.li	a2,00000000
	c.mv	a1,s2
	lhu	a0,a5,+0000001C
	c.srli	s1,00000010
	jal	ra,0000000023047BF8
	c.mv	s3,a0
	c.bnez	a0,0000000023047DEC

l23047DDA:
	lui	a0,000230BA
	c.mv	a1,s2
	addi	a0,a0,+000004C4
	jal	ra,0000000023082388

l23047DE8:
	c.li	a0,00000000
	c.j	0000000023047D7E

l23047DEC:
	lhu	a1,a0,+0000000A
	addi	a5,zero,+000000FF
	sub	a4,s1,a1
	bge	a5,a4,0000000023047E0C

l23047DFC:
	lui	a0,000230BA
	c.mv	a2,s1
	addi	a0,a0,+000004E4
	jal	ra,0000000023082388
	c.j	0000000023047DE8

l23047E0C:
	c.lwsp	s8,000000E4
	addi	a4,zero,+0000007F
	c.li	a6,00000000
	sb	a4,a5,+0000000B
	lbu	a5,s0,+00000001
	lbu	a4,s0,+00000000
	c.li	a3,00000004
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,sp,+00000010
	lbu	a5,s0,+00000003
	lbu	a4,s0,+00000002
	c.addi4spn	a2,00000010
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,sp,+00000012
	c.li	a4,00000000
	c.li	a5,00000000
	c.li	a1,00000006
	c.addi4spn	a0,00000014
	jal	ra,000000002304696E
	c.mv	a0,s3
	jal	ra,00000000230477C2
	c.j	0000000023047DE8

;; bt_mesh_friend_sub_add: 23047E50
;;   Called from:
;;     2304628E (in ctl_recv)
bt_mesh_friend_sub_add proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	lhu	a4,a1,+00000004
	c.li	a5,00000002
	bltu	a5,a4,0000000023047E86

l23047E68:
	lui	a0,000230BA
	addi	a0,a0,+000007D4
	jal	ra,0000000023082388
	c.li	a0,FFFFFFEA

l23047E76:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23047E86:
	c.lw	a0,0(a5)
	lhu	s2,a0,+00000008
	c.mv	s1,a1
	lhu	a0,a5,+0000001C
	c.li	a3,00000001
	c.li	a2,00000001
	c.mv	a1,s2
	jal	ra,0000000023047BF8
	c.mv	s0,a0
	c.bnez	a0,0000000023047EB2

l23047EA0:
	lui	a0,000230BA
	c.mv	a1,s2
	addi	a0,a0,+000004C4
	jal	ra,0000000023082388

l23047EAE:
	c.li	a0,00000000
	c.j	0000000023047E76

l23047EB2:
	lbu	a5,a0,+00000003
	andi	a4,a5,+00000010
	c.beqz	a4,0000000023047ECA

l23047EBC:
	lui	a0,000230BA
	addi	a0,a0,+000007F8
	jal	ra,0000000023082388
	c.j	0000000023047EAE

l23047ECA:
	lbu	a1,a0,+00000002
	ori	a5,a5,+00000004
	sb	a5,a0,+00000003
	addi	a1,a1,+00000033
	c.addi	a0,00000018
	jal	ra,00000000230498CA
	c.mv	a0,s1
	jal	ra,0000000023049414
	c.mv	s2,a0
	c.li	s3,00000001
	lui	s4,000230BB

l23047EEE:
	lhu	a5,s1,+00000004
	bltu	s3,a5,0000000023047F00

l23047EF6:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,0000000023047954
	c.j	0000000023047EAE

l23047F00:
	c.mv	a0,s1
	jal	ra,0000000023049454
	lhu	a5,s0,+00000010
	c.beqz	a5,0000000023047F26

l23047F0C:
	lhu	a5,s0,+00000012
	c.beqz	a5,0000000023047F2A

l23047F12:
	lhu	a5,s0,+00000014
	c.bnez	a5,0000000023047F2E

l23047F18:
	c.li	a5,00000002

l23047F1A:
	c.addi	a5,00000008
	c.slli	a5,01
	c.add	a5,s0
	sh	a0,a5,+00000000
	c.j	0000000023047EEE

l23047F26:
	c.li	a5,00000000
	c.j	0000000023047F1A

l23047F2A:
	c.li	a5,00000001
	c.j	0000000023047F1A

l23047F2E:
	addi	a0,s4,-000007E8
	jal	ra,0000000023082388
	c.j	0000000023047EEE

;; bt_mesh_friend_sub_rem: 23047F38
;;   Called from:
;;     230462AA (in ctl_recv)
bt_mesh_friend_sub_rem proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	lhu	a4,a1,+00000004
	c.li	a5,00000002
	bltu	a5,a4,0000000023047F66

l23047F4C:
	lui	a0,000230BB
	addi	a0,a0,-000007C0
	jal	ra,0000000023082388
	c.li	a0,FFFFFFEA

l23047F5A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l23047F66:
	c.lw	a0,0(a5)
	lhu	s2,a0,+00000008
	c.mv	s1,a1
	lhu	a0,a5,+0000001C
	c.li	a3,00000001
	c.li	a2,00000001
	c.mv	a1,s2
	jal	ra,0000000023047BF8
	c.mv	s0,a0
	c.bnez	a0,0000000023047F92

l23047F80:
	lui	a0,000230BA
	c.mv	a1,s2
	addi	a0,a0,+000004C4
	jal	ra,0000000023082388

l23047F8E:
	c.li	a0,00000000
	c.j	0000000023047F5A

l23047F92:
	lbu	a5,a0,+00000003
	andi	a4,a5,+00000010
	c.beqz	a4,0000000023047FAA

l23047F9C:
	lui	a0,000230BA
	addi	a0,a0,+000007F8
	jal	ra,0000000023082388
	c.j	0000000023047F8E

l23047FAA:
	lbu	a1,a0,+00000002
	ori	a5,a5,+00000004
	sb	a5,a0,+00000003
	addi	a1,a1,+00000033
	c.addi	a0,00000018
	jal	ra,00000000230498CA
	c.mv	a0,s1
	jal	ra,0000000023049414
	c.mv	a1,a0
	c.li	s2,00000001

l23047FCA:
	lhu	a5,s1,+00000004
	bltu	s2,a5,0000000023047FDA

l23047FD2:
	c.mv	a0,s0
	jal	ra,0000000023047954
	c.j	0000000023047F8E

l23047FDA:
	c.mv	a0,s1
	c.swsp	a1,00000084
	jal	ra,0000000023049454
	lhu	a5,s0,+00000010
	c.lwsp	a2,00000064
	beq	a5,a0,000000002304800A

l23047FEC:
	lhu	a5,s0,+00000012
	beq	a5,a0,000000002304800E

l23047FF4:
	lhu	a5,s0,+00000014
	bne	a5,a0,0000000023047FCA

l23047FFC:
	c.li	a5,00000002

l23047FFE:
	c.addi	a5,00000008
	c.slli	a5,01
	c.add	a5,s0
	sh	zero,a5,+00000000
	c.j	0000000023047FCA

l2304800A:
	c.li	a5,00000000
	c.j	0000000023047FFE

l2304800E:
	c.li	a5,00000001
	c.j	0000000023047FFE

;; bt_mesh_friend_poll: 23048012
;;   Called from:
;;     2304621E (in ctl_recv)
bt_mesh_friend_poll proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lhu	a5,a1,+00000004
	lw	s2,a1,+00000000
	c.bnez	a5,0000000023048036

l23048026:
	lui	a0,000230BA
	addi	a0,a0,+000005E0

l2304802E:
	jal	ra,0000000023082388
	c.li	s1,FFFFFFEA
	c.j	000000002304805E

l23048036:
	c.lw	a0,0(a5)
	lhu	s1,a0,+00000008
	c.li	a3,00000000
	lhu	a0,a5,+0000001C
	c.li	a2,00000001
	c.mv	a1,s1
	jal	ra,0000000023047BF8
	c.mv	s0,a0
	c.bnez	a0,000000002304806C

l2304804E:
	lui	a0,000230BA
	c.mv	a1,s1
	addi	a0,a0,+000004C4
	jal	ra,0000000023082388
	c.li	s1,00000000

l2304805E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2304806C:
	lbu	s1,s2,+00000000
	c.andi	s1,FFFFFFFE
	c.beqz	s1,000000002304807E

l23048074:
	lui	a0,000230BA
	addi	a0,a0,+000005F8
	c.j	000000002304802E

l2304807E:
	lbu	a5,a0,+00000003
	andi	a4,a5,+00000010
	c.beqz	a4,0000000023048096

l23048088:
	lui	a0,000230BA
	addi	a0,a0,+00000620
	jal	ra,0000000023082388
	c.j	000000002304805E

l23048096:
	lbu	a1,a0,+00000002
	ori	a5,a5,+00000004
	sb	a5,a0,+00000003
	addi	a1,a1,+00000033
	c.addi	a0,00000018
	jal	ra,00000000230498CA
	lbu	a5,s0,+00000003
	andi	a4,a5,+00000040
	c.bnez	a4,00000000230480BE

l230480B6:
	ori	a5,a5,+00000040
	sb	a5,s0,+00000003

l230480BE:
	lbu	a5,s0,+00000003
	lbu	a4,s2,+00000000
	c.lw	s0,72(a0)
	c.andi	a5,00000001
	bne	a4,a5,00000000230480DE

l230480CE:
	c.beqz	a0,00000000230480E8

l230480D0:
	lbu	a5,s0,+00000003
	ori	a5,a5,+00000002
	sb	a5,s0,+00000003
	c.j	000000002304805E

l230480DE:
	c.beqz	a0,00000000230480E8

l230480E0:
	jal	ra,00000000230491C0
	sw	zero,s0,+00000048

l230480E8:
	lbu	a5,s2,+00000000
	andi	a4,a5,+00000001
	lbu	a5,s0,+00000003
	c.andi	a5,FFFFFFFE
	c.or	a5,a4
	sb	a5,s0,+00000003
	c.lw	s0,76(a5)
	c.bnez	a5,000000002304805E

l23048100:
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,0000000023047A44
	c.j	000000002304805E

;; bt_mesh_friend_clear_cfm: 2304810A
;;   Called from:
;;     23046272 (in ctl_recv)
bt_mesh_friend_clear_cfm proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lhu	a3,a1,+00000004
	c.li	a5,00000003
	c.lw	a1,0(a4)
	bltu	a5,a3,0000000023048132

l2304811C:
	lui	a0,000230B7
	addi	a0,a0,+000001D0
	jal	ra,0000000023082388
	c.li	a0,FFFFFFEA

l2304812A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23048132:
	lui	a5,0004200D
	addi	a5,a5,+000006BC
	lhu	a1,a0,+00000008
	lhu	a3,a5,+0000007C
	beq	a3,a1,0000000023048198

l23048146:
	lhu	a5,a5,+00000100
	beq	a5,a1,00000000230481D0

l2304814E:
	lui	a0,000230BA
	addi	a0,a0,+00000510
	jal	ra,0000000023082388

l2304815A:
	c.li	a0,00000000
	c.j	000000002304812A

l2304815E:
	lbu	a5,a4,+00000003
	lbu	a1,a4,+00000002
	lhu	a2,s0,+0000000A
	c.slli	a5,08
	c.or	a5,a1
	srli	a1,a5,00000008
	c.slli	a5,08
	c.or	a5,a1
	slli	a1,a5,00000010
	c.srli	a1,00000010
	beq	a2,a1,000000002304818A

l23048180:
	lui	a0,000230BA
	addi	a0,a0,+00000564
	c.j	00000000230481CA

l2304818A:
	addi	a0,s0,+00000060
	jal	ra,000000002304986E
	sh	zero,s0,+0000005C
	c.j	000000002304815A

l23048198:
	lui	s0,0004200D
	addi	s0,s0,+000006DC

l230481A0:
	lbu	a5,a4,+00000001
	lbu	a1,a4,+00000000
	lhu	a2,s0,+00000000
	c.slli	a5,08
	c.or	a5,a1
	srli	a1,a5,00000008
	c.slli	a5,08
	c.or	a5,a1
	slli	a1,a5,00000010
	c.srli	a1,00000010
	beq	a2,a1,000000002304815E

l230481C2:
	lui	a0,000230BA
	addi	a0,a0,+00000538

l230481CA:
	jal	ra,0000000023082388
	c.j	000000002304815A

l230481D0:
	lui	s0,0004200D
	addi	s0,s0,+00000760
	c.j	00000000230481A0

;; bt_mesh_friend_req: 230481DA
;;   Called from:
;;     2304623A (in ctl_recv)
bt_mesh_friend_req proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s0,0000001C
	c.swsp	s1,00000098
	c.swsp	s2,00000018
	c.swsp	s3,00000094
	lhu	a4,a1,+00000004
	c.li	a5,00000009
	c.lw	a1,0(s1)
	bltu	a5,a4,0000000023048200

l230481F2:
	lui	a0,000230BA
	addi	a0,a0,+00000640

l230481FA:
	jal	ra,0000000023082388
	c.j	0000000023048214

l23048200:
	lbu	a1,s1,+00000001
	bltu	a5,a1,0000000023048224

l23048208:
	lui	a0,000230BA
	addi	a0,a0,+0000065C

l23048210:
	jal	ra,0000000023082388

l23048214:
	c.li	a0,FFFFFFEA

l23048216:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l23048224:
	lbu	s2,s1,+00000002
	lbu	a5,s1,+00000003
	c.slli	s2,10
	c.slli	a5,08
	or	s2,s2,a5
	lbu	a5,s1,+00000004
	or	s2,s2,a5
	lui	a5,0000034C
	addi	a4,s2,-0000000A
	addi	a5,a5,-0000040B
	bgeu	a5,a4,0000000023048258

l2304824C:
	lui	a0,000230BA
	c.mv	a1,s2
	addi	a0,a0,+00000680
	c.j	0000000023048210

l23048258:
	lbu	a5,s1,+00000007
	c.bnez	a5,0000000023048268

l2304825E:
	lui	a0,000230BA
	addi	a0,a0,+000006A4
	c.j	00000000230481FA

l23048268:
	lhu	a1,a0,+00000008
	c.li	a2,00000001
	c.mv	s3,a0
	c.add	a5,a1
	beq	a5,a2,000000002304827C

l23048276:
	c.lui	a4,00008000
	bge	a4,a5,0000000023048286

l2304827C:
	lui	a0,000230BA
	addi	a0,a0,+000006CC
	c.j	00000000230481FA

l23048286:
	lbu	a5,s1,+00000000
	c.andi	a5,00000007
	c.bnez	a5,0000000023048298

l2304828E:
	lui	a0,000230BA
	addi	a0,a0,+000006FC
	c.j	00000000230481FA

l23048298:
	sll	a2,a2,a5
	c.li	a5,00000010
	bgeu	a5,a2,00000000230482B4

l230482A2:
	lui	a0,000230BA
	c.li	a1,00000010
	addi	a0,a0,+00000730
	jal	ra,0000000023082388

l230482B0:
	c.li	a0,00000000
	c.j	0000000023048216

l230482B4:
	c.lw	a0,0(a5)
	c.li	a3,00000000
	c.li	a2,00000001
	lhu	a0,a5,+0000001C
	jal	ra,0000000023047BF8
	c.mv	s0,a0
	c.bnez	a0,00000000230482F8

l230482C6:
	lui	a5,0004200D
	addi	a4,a5,+000006BC
	c.lw	a4,32(a4)
	addi	a5,a5,+000006BC
	slli	a3,a4,00000002
	bge	a3,zero,0000000023048466

l230482DC:
	lw	a4,a5,+000000A4
	slli	a3,a4,00000002
	bge	a3,zero,0000000023048486

l230482E8:
	lui	a0,000230BA
	addi	a0,a0,+00000764
	jal	ra,0000000023082388
	c.li	a0,FFFFFFF4
	c.j	0000000023048216

l230482F8:
	lui	a0,000230BA
	addi	a0,a0,+0000078C
	jal	ra,0000000023082388
	c.mv	a0,s0
	jal	ra,00000000230477C2

l2304830A:
	lhu	a5,s3,+00000008
	sh	a5,s0,+00000000
	lbu	a5,s1,+00000007
	sb	a5,s0,+00000008
	lw	a5,s3,+00000000
	lhu	a5,a5,+0000001C
	sh	a5,s0,+0000000E
	lbu	a5,s1,+00000001
	sb	a5,s0,+00000002
	addi	a5,zero,+00000064
	add	s2,s2,a5
	sw	s2,s0,+00000004
	lbu	a5,s1,+00000009
	lbu	a4,s1,+00000008
	c.slli	a5,08
	c.or	a5,a4
	srli	a4,a5,00000008
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s0,+0000000A
	lbu	a5,s1,+00000006
	lbu	a4,s1,+00000005
	c.slli	a5,08
	c.or	a5,a4
	srli	a4,a5,00000008
	c.slli	a5,08
	c.or	a5,a4
	c.slli	a5,10
	c.srai	a5,00000010
	slli	a0,a5,00000010
	c.srli	a0,00000010
	sh	a0,s0,+0000005C
	bge	zero,a5,0000000023048396

l23048378:
	jal	ra,000000002303C3DC
	c.bnez	a0,0000000023048396

l2304837E:
	jal	ra,0000000023048D2E
	c.lw	s0,4(a5)
	c.slli	a5,01
	c.add	a0,a5
	c.li	a5,00000001
	c.sw	s0,88(a0)
	sh	a5,s0,+0000005E
	c.mv	a0,s0
	jal	ra,0000000023047454

l23048396:
	lbu	a3,s1,+00000000
	lui	a4,000230CC
	addi	a4,a4,-000005C8
	srli	a5,a3,00000003
	c.srli	a3,00000005
	c.andi	a3,00000003
	c.andi	a5,00000003
	c.add	a5,a4
	c.add	a4,a3
	lbu	a5,a5,+00000000
	lbu	a4,a4,+00000000
	lb	a3,s3,+0000000C
	addi	a2,zero,+000000FF
	add	a5,a5,a2
	c.li	a1,0000000A
	addi	a0,s0,+00000018
	add	a4,a4,a3
	c.sub	a5,a4
	addi	a4,zero,+000003E7
	xor	a1,a5,a1
	blt	a4,a5,00000000230483E0

l230483DC:
	addi	a1,zero,+00000064

l230483E0:
	jal	ra,00000000230498CA
	lhu	a3,s0,+0000000C
	lhu	a2,s0,+0000000A
	lhu	a1,s0,+00000000
	lw	a0,s3,+00000000
	jal	ra,00000000230422E4
	c.addi4spn	a5,0000000C
	c.swsp	a5,00000088
	lui	a5,00000070
	c.swsp	a5,0000000C
	c.li	a1,00000001
	c.addi4spn	a5,0000000C
	c.addi4spn	a0,00000014
	lb	s1,s3,+0000000C
	c.swsp	a5,0000008C
	jal	ra,00000000230490EC
	c.li	a1,00000006
	c.addi4spn	a0,00000014
	jal	ra,00000000230492DE
	c.li	a5,FFFFFFFF
	sb	a5,a0,+00000000
	c.li	a5,00000010
	sb	a5,a0,+00000001
	c.li	a5,00000003
	sb	a5,a0,+00000002
	sb	s1,a0,+00000003
	lhu	a4,s0,+0000000C
	c.addi4spn	a2,00000014
	c.li	a1,00000004
	srli	a5,a4,00000008
	c.slli	a4,08
	c.or	a5,a4
	c.slli	a5,10
	c.srli	a5,00000010
	sb	a5,a0,+00000004
	c.srli	a5,00000008
	sb	a5,a0,+00000005
	c.mv	a0,s0
	jal	ra,00000000230478E2
	c.mv	s1,a0
	c.bnez	a0,000000002304848A

l23048458:
	lui	a0,000230BA
	addi	a0,a0,+000007B4
	jal	ra,0000000023082388
	c.j	00000000230482B0

l23048466:
	c.li	a4,00000000

l23048468:
	addi	a3,zero,+00000084
	add	a4,a4,a3
	addi	s0,a4,+00000020
	c.add	s0,a5
	c.add	a5,a4
	lbu	a4,a5,+00000023
	ori	a4,a4,+00000020
	sb	a4,a5,+00000023
	c.j	000000002304830A

l23048486:
	c.li	a4,00000001
	c.j	0000000023048468

l2304848A:
	lhu	a5,s0,+0000000C
	c.lw	s0,72(a0)
	c.addi	a5,00000001
	sh	a5,s0,+0000000C
	c.beqz	a0,000000002304849C

l23048498:
	jal	ra,00000000230491C0

l2304849C:
	lbu	a5,s0,+00000003
	c.sw	s0,72(s1)
	ori	a5,a5,+00000002
	sb	a5,s0,+00000003
	c.j	00000000230482B0

;; bt_mesh_friend_init: 230484AC
;;   Called from:
;;     2304337A (in bt_mesh_net_start)
bt_mesh_friend_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	lui	s0,0004200D
	lui	s2,00023048
	lui	a0,0004200D
	addi	s0,s0,+000006BC
	c.swsp	s3,00000084
	addi	a1,s2,-000007CC
	c.li	s3,FFFFFFFF
	addi	a0,a0,+000006F4
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	sh	s3,s0,+0000002E
	sw	zero,s0,+0000006C
	sw	zero,s0,+00000070
	jal	ra,0000000023049780
	lui	s1,00023047
	lui	a0,0004200D
	addi	a1,s1,+00000670
	addi	a0,a0,+0000073C
	jal	ra,0000000023049780
	lui	a0,0004200D
	addi	a1,s2,-000007CC
	addi	a0,a0,+00000778
	sh	s3,s0,+000000B2
	sw	zero,s0,+0000005C
	sw	zero,s0,+00000060
	sw	zero,s0,+000000F0
	sw	zero,s0,+000000F4
	jal	ra,0000000023049780
	lui	a0,0004200D
	addi	a1,s1,+00000670
	addi	a0,a0,+000007C0
	jal	ra,0000000023049780
	c.lwsp	t3,00000020
	sw	zero,s0,+000000E0
	sw	zero,s0,+000000E4
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; bt_mesh_friend_match: 23048542
;;   Called from:
;;     23046BD8 (in bt_mesh_trans_recv)
bt_mesh_friend_match proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	c.mv	a2,a1
	c.mv	a1,a0
	lui	a0,0004200D
	addi	a0,a0,+000006DC
	c.swsp	ra,00000084
	jal	ra,00000000230476A6
	c.bnez	a0,0000000023048578

l23048560:
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a2,s1
	c.lwsp	tp,00000024
	lui	a0,0004200D
	addi	a0,a0,+00000760
	c.addi	sp,00000010
	jal	zero,00000000230476A6

l23048578:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bt_mesh_friend_queue_has_space: 23048582
;;   Called from:
;;     230466AA (in bt_mesh_trans_send)
;;     230468E8 (in bt_mesh_trans_send)
;;     23046F1E (in bt_mesh_trans_recv)
bt_mesh_friend_queue_has_space proc
	c.addi16sp	FFFFFFD0
	c.swsp	s6,00000008
	lui	s6,0004200D
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.mv	s3,a0
	c.mv	s4,a1
	c.mv	a1,a0
	addi	a0,s6,+000006DC
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s5,00000088
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.mv	s7,a2
	c.mv	s5,a3
	c.mv	s1,a4
	jal	ra,00000000230476A6
	c.mv	s2,a0
	c.li	s0,00000000
	c.beqz	a0,00000000230485CA

l230485B4:
	c.li	a5,00000010
	bltu	a5,s1,00000000230485CA

l230485BA:
	c.mv	a3,s1
	c.mv	a2,s5
	c.mv	a1,s4
	addi	a0,s6,+000006DC
	jal	ra,0000000023047702
	c.mv	s0,a0

l230485CA:
	c.mv	a1,s3
	lui	s3,0004200D
	c.mv	a2,s7
	addi	a0,s3,+00000760
	jal	ra,00000000230476A6
	c.beqz	a0,000000002304860C

l230485DC:
	c.li	a5,00000010
	bltu	a5,s1,00000000230485F4

l230485E2:
	c.mv	a3,s1
	c.mv	a2,s5
	c.mv	a1,s4
	addi	a0,s3,+00000760
	jal	ra,0000000023047702
	c.beqz	a0,00000000230485F4

l230485F2:
	c.mv	s0,a0

l230485F4:
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

l2304860C:
	bne	s2,zero,00000000230485F4

l23048610:
	c.li	s0,00000001
	c.j	00000000230485F4

;; bt_mesh_friend_enqueue_rx: 23048614
;;   Called from:
;;     23046EEA (in bt_mesh_trans_recv)
bt_mesh_friend_enqueue_rx proc
	lbu	a5,a0,+00000020
	slli	a6,a5,00000018
	srai	a6,a6,00000018
	bge	a6,zero,000000002304875C

l23048624:
	lbu	a7,a0,+0000000D
	c.li	a6,00000001
	bltu	a6,a7,0000000023048638

l2304862E:
	andi	a5,a5,+00000030
	c.li	a6,00000010
	bne	a5,a6,000000002304875C

l23048638:
	c.addi16sp	FFFFFFC0
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	s4,00000014
	c.swsp	s5,00000090
	c.swsp	s7,0000008C
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s3,00000094
	c.swsp	s6,00000010
	c.swsp	s8,0000000C
	c.swsp	s9,00000088
	c.mv	s7,a4
	c.mv	s5,a3
	c.mv	s2,a2
	c.mv	s4,a1
	c.mv	s0,a0
	jal	ra,000000002303FD44
	c.li	a5,00000001
	bne	a0,a5,0000000023048720

l23048664:
	lui	s3,0004200D
	addi	s6,s3,+000006BC
	lui	s1,0004200D
	addi	s1,s1,+000006DC
	addi	s6,s6,+00000128
	addi	s3,s3,+000006BC
	c.li	s8,00000010
	lui	s9,000230BA

l23048682:
	c.lw	s0,0(a5)
	lhu	a2,s0,+0000000A
	c.mv	a0,s1
	lhu	a1,a5,+0000001C
	jal	ra,00000000230476A6
	c.beqz	a0,0000000023048718

l23048694:
	lhu	a1,s0,+00000008
	c.mv	a3,s5
	c.mv	a2,s2
	c.mv	a0,s1
	jal	ra,00000000230479BA
	c.beqz	a0,0000000023048718

l230486A4:
	bne	s4,zero,00000000230486B8

l230486A8:
	beq	s2,zero,00000000230486B8

l230486AC:
	lhu	a2,s0,+00000008
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,00000000230473F4

l230486B8:
	c.lw	s0,8(a5)
	lbu	a4,s0,+00000020
	c.swsp	a5,00000080
	andi	a4,a4,+00000030
	lbu	a5,s0,+0000000D
	bne	a4,s8,000000002304873A

l230486CC:
	c.lw	s0,32(a4)
	andi	a5,a5,+0000007F
	c.mv	a2,s7
	slli	a3,a4,00000004
	andi	a3,a3,+00000080
	c.or	a5,a3
	sb	a5,sp,+0000000B
	c.lw	s0,28(a5)
	c.andi	a4,00000001
	c.addi4spn	a1,00000004
	srli	a3,a5,00000010
	sb	a3,sp,+00000008
	sb	a5,sp,+0000000A
	srli	a3,a5,00000008
	lw	a5,s3,+00000000
	c.mv	a0,s1
	sb	a3,sp,+00000009
	sub	a4,a5,a4
	c.swsp	a4,00000084
	jal	ra,0000000023047514
	c.mv	a3,a0
	c.bnez	a0,000000002304873E

l23048710:
	addi	a0,s9,+000005BC
	jal	ra,0000000023082388

l23048718:
	addi	s1,s1,+00000084
	bne	s6,s1,0000000023048682

l23048720:
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

l2304873A:
	c.addi	a5,FFFFFFFF
	c.j	00000000230486CC

l2304873E:
	beq	s2,zero,0000000023048750

l23048742:
	c.lw	a0,20(a2)
	lw	a4,s2,+00000000
	lw	a5,s2,+00000004
	c.sw	a2,16(a4)
	c.sw	a2,20(a5)

l23048750:
	c.mv	a2,s5
	c.mv	a1,s4
	c.mv	a0,s1
	jal	ra,0000000023047B12
	c.j	0000000023048718

l2304875C:
	c.jr	ra

;; bt_mesh_friend_enqueue_tx: 2304875E
;;   Called from:
;;     23046818 (in bt_mesh_trans_send)
;;     2304694C (in bt_mesh_trans_send)
;;     230469F4 (in bt_mesh_ctl_send)
bt_mesh_friend_enqueue_tx proc
	c.addi16sp	FFFFFFA0
	c.swsp	s0,0000002C
	c.swsp	s1,000000A8
	c.swsp	s2,00000028
	c.swsp	s7,0000009C
	c.swsp	s8,0000001C
	c.swsp	ra,000000AC
	c.swsp	s3,000000A4
	c.swsp	s4,00000024
	c.swsp	s5,000000A0
	c.swsp	s6,00000020
	c.swsp	s9,00000098
	c.swsp	s10,00000018
	c.swsp	s11,00000094
	c.lw	a0,0(a5)
	lui	s0,0004200D
	c.mv	s1,a0
	lhu	s3,a5,+0000001C
	c.lw	a0,4(a5)
	c.mv	s7,a1
	c.mv	s2,a2
	lhu	s4,a5,+00000004
	c.mv	a1,s3
	addi	a0,s0,+000006DC
	c.mv	a2,s4
	c.mv	s8,a3
	c.swsp	a4,00000084
	jal	ra,00000000230476A6
	c.bnez	a0,00000000230487D6

l230487A2:
	lui	a0,0004200D
	c.mv	a2,s4
	c.mv	a1,s3
	addi	a0,a0,+00000760
	jal	ra,00000000230476A6
	c.bnez	a0,00000000230487D6

l230487B4:
	c.li	s9,00000000

l230487B6:
	c.lwsp	t4,00000020
	c.lwsp	s9,00000004
	c.mv	a0,s9
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

l230487D6:
	jal	ra,000000002303FD44
	c.li	a5,00000001
	bne	a0,a5,00000000230487B4

l230487E0:
	lui	s3,0004200D
	addi	s4,s3,+000006BC
	c.lui	s5,FFFF0000
	addi	s0,s0,+000006DC
	addi	s4,s4,+00000128
	c.li	s9,00000000
	addi	s3,s3,+000006BC
	c.addi	s5,00000001
	lui	s10,0004200D
	lui	s11,000230BA

l23048802:
	c.lw	s1,4(a3)
	c.lw	s1,0(a4)
	c.mv	a0,s0
	lhu	a2,a3,+00000004
	lhu	a1,a4,+0000001C
	jal	ra,00000000230476A6
	c.beqz	a0,00000000230488BE

l23048816:
	lhu	a1,s1,+00000008
	c.mv	a3,s8
	c.mv	a2,s2
	c.mv	a0,s0
	jal	ra,00000000230479BA
	c.mv	s6,a0
	c.beqz	a0,00000000230488BE

l23048828:
	bne	s7,zero,000000002304883C

l2304882C:
	beq	s2,zero,000000002304883C

l23048830:
	lhu	a2,s1,+00000008
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,00000000230473F4

l2304883C:
	c.lw	s1,4(a4)
	lhu	a5,s1,+00000008
	sh	a5,sp,+00000014
	lhu	a5,a4,+00000004
	sh	a5,sp,+00000016
	lbu	a5,a4,+0000000B
	andi	a3,a5,+0000007F
	lbu	a5,sp,+0000001B
	andi	a5,a5,-00000080
	c.or	a5,a3
	sb	a5,sp,+0000001B
	lhu	a4,a4,+00000002
	andi	a5,a5,+0000007F
	c.add	a4,s5
	sltiu	a4,a4,+00000001
	c.slli	a4,07
	c.or	a5,a4
	sb	a5,sp,+0000001B
	jal	ra,0000000023042890
	srli	a5,a0,00000010
	sb	a5,sp,+00000018
	sb	a0,sp,+0000001A
	srli	a5,a0,00000008
	addi	a0,s10,+000006C4
	sb	a5,sp,+00000019
	lw	s9,s3,+00000000
	c.jal	0000000023048E6C
	c.srai	a0,00000002
	c.lwsp	a2,00000084
	c.andi	a0,00000001
	sub	a5,s9,a0
	c.addi4spn	a1,00000014
	c.mv	a0,s0
	c.swsp	a5,0000008C
	jal	ra,0000000023047514
	c.mv	a3,a0
	c.bnez	a0,00000000230488C8

l230488B4:
	addi	a0,s11,+000005BC
	jal	ra,0000000023082388

l230488BC:
	c.mv	s9,s6

l230488BE:
	addi	s0,s0,+00000084
	bne	s4,s0,0000000023048802

l230488C6:
	c.j	00000000230487B6

l230488C8:
	beq	s2,zero,00000000230488DA

l230488CC:
	c.lw	a0,20(a5)
	lw	a1,s2,+00000004
	lw	a0,s2,+00000000
	c.sw	a5,20(a1)
	c.sw	a5,16(a0)

l230488DA:
	c.mv	a2,s8
	c.mv	a1,s7
	c.mv	a0,s0
	jal	ra,0000000023047B12
	c.j	00000000230488BC

;; bt_mesh_friend_clear_incomplete: 230488E6
;;   Called from:
;;     23045E1E (in seg_rx_reset)
bt_mesh_friend_clear_incomplete proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a1
	lhu	a1,a0,+0000001C
	c.mv	s3,a0
	lui	a0,0004200D
	addi	a0,a0,+000006DC
	c.mv	s4,a2
	c.mv	s2,a3
	jal	ra,00000000230476A6
	c.beqz	a0,0000000023048956

l2304890E:
	lui	s0,0004200D
	addi	s0,s0,+000006BC
	c.lw	s0,92(a5)
	c.beqz	a5,0000000023048956

l2304891A:
	c.lw	a5,20(a5)
	lhu	a4,a5,+0000000A
	bne	a4,s1,0000000023048956

l23048924:
	c.lw	a5,16(a3)
	lw	a4,s2,+00000000
	bne	a3,a4,0000000023048956

l2304892E:
	c.lw	a5,20(a4)
	lw	a5,s2,+00000004
	bne	a4,a5,0000000023048956

l23048938:
	lui	a0,000230BA
	c.mv	a1,s1
	addi	a0,a0,+00000590
	jal	ra,0000000023082388
	lui	a0,0004200D
	addi	a0,a0,+00000718
	jal	ra,000000002304778E
	sb	zero,s0,+00000064

l23048956:
	lhu	a1,s3,+0000001C
	lui	a0,0004200D
	c.mv	a2,s4
	addi	a0,a0,+00000760
	jal	ra,00000000230476A6
	c.beqz	a0,00000000230489B4

l2304896A:
	lui	s0,0004200D
	addi	s0,s0,+000006BC
	lw	a5,s0,+000000E0
	c.beqz	a5,00000000230489B4

l23048978:
	c.lw	a5,20(a5)
	lhu	a4,a5,+0000000A
	bne	a4,s1,00000000230489B4

l23048982:
	c.lw	a5,16(a3)
	lw	a4,s2,+00000000
	bne	a3,a4,00000000230489B4

l2304898C:
	c.lw	a5,20(a4)
	lw	a5,s2,+00000004
	bne	a4,a5,00000000230489B4

l23048996:
	lui	a0,000230BA
	c.mv	a1,s1
	addi	a0,a0,+00000590
	jal	ra,0000000023082388
	lui	a0,0004200D
	addi	a0,a0,+0000079C
	jal	ra,000000002304778E
	sb	zero,s0,+000000E8

l230489B4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; bt_mesh_srv_update_last_rcvd_msg: 230489C4
;;   Called from:
;;     2303BF72 (in gen_onoff_set.isra.0)
bt_mesh_srv_update_last_rcvd_msg proc
	sb	a1,a0,+00000000
	sh	a2,a0,+00000002
	sh	a3,a0,+00000004
	c.sw	a0,8(a4)
	c.sw	a0,12(a5)
	c.jr	ra

;; bt_mesh_srv_check_rcvd_msg_with_last: 230489D6
;;   Called from:
;;     2303BF42 (in gen_onoff_set.isra.0)
bt_mesh_srv_check_rcvd_msg_with_last proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	a2,00000084
	c.swsp	a3,00000004
	c.swsp	a4,00000080
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.mv	s0,a1
	c.jal	0000000023048D2A
	c.lwsp	s0,000000A4
	c.lwsp	tp,000000C4
	c.lwsp	a2,00000084
	c.sw	a3,0(a0)
	c.sw	a3,4(a1)
	lbu	a5,a4,+00000000
	bne	a5,s1,0000000023048A30

l230489FC:
	lhu	a3,a4,+00000002
	c.li	a5,00000000
	bne	a3,s0,0000000023048A32

l23048A06:
	lhu	a3,a4,+00000004
	bne	a3,a2,0000000023048A32

l23048A0E:
	c.lw	a4,8(a5)
	c.lw	a4,12(a3)
	sub	a4,a0,a5
	sltu	a0,a0,a4
	c.sub	a1,a3
	c.sub	a1,a0
	c.li	a5,00000001
	blt	zero,a1,0000000023048A30

l23048A24:
	c.bnez	a1,0000000023048A32

l23048A26:
	c.lui	a3,00001000
	addi	a3,a3,+00000770
	bgeu	a3,a4,0000000023048A32

l23048A30:
	c.li	a5,00000000

l23048A32:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

;; k_queue_init: 23048A3E
;;   Called from:
;;     2303CD9C (in bt_mesh_adv_init)
;;     2303CDAA (in bt_mesh_adv_init)
;;     23049724 (in k_work_q_start)
;;     2304A00E (in bl_onchiphci_interface_init)
;;     2304A154 (in hci_driver_open)
;;     2304B738 (in bt_conn_init)
;;     2304B74E (in bt_conn_init)
;;     23050290 (in bt_enable)
;;     230502AC (in bt_enable)
;;     230502BA (in bt_enable)
;;     23051126 (in l2cap_chan_tx_init)
;;     230518BA (in l2cap_chan_add)
;;     23057BC4 (in bt_att_connected)
k_queue_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a2,00000000
	c.mv	s0,a0
	c.mv	a0,a1
	c.li	a1,00000005
	c.swsp	ra,00000084
	jal	ra,000000002306128C
	c.sw	s0,0(a0)
	c.bnez	a0,0000000023048A58

l23048A54:
	jal	ra,0000000023000C02

l23048A58:
	addi	a5,s0,+00000004
	c.sw	s0,4(a5)
	c.sw	s0,8(a5)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; k_queue_insert: 23048A68
;;   Called from:
;;     23048A8E (in k_queue_append)
k_queue_insert proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.lw	a0,0(a0)
	c.swsp	a2,00000084
	c.li	a3,00000000
	c.li	a2,FFFFFFFF
	c.addi4spn	a1,0000000C
	jal	ra,0000000023061344
	c.li	a5,00000001
	beq	a0,a5,0000000023048A84

l23048A80:
	jal	ra,0000000023000C02

l23048A84:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; k_queue_append: 23048A8A
;;   Called from:
;;     23048ABE (in k_queue_prepend)
;;     23048ADE (in k_queue_append_list)
;;     230496A8 (in k_work_submit_to_queue)
;;     23049E02 (in bl_onchiphci_rx_packet_handler)
;;     2304A1F8 (in tx_free)
;;     2304B75E (in bt_conn_init)
;;     23057CBE (in att_send_req)
;;     23058DAE (in bt_att_send)
k_queue_append proc
	c.mv	a2,a1
	c.li	a1,00000000
	jal	zero,0000000023048A68

;; k_queue_free: 23048A92
;;   Called from:
;;     23049FEA (in bl_onchiphci_interface_deinit)
;;     2304A3C8 (in conn_cleanup)
;;     2305008E (in bt_delete_queue)
;;     230500FA (in bt_disable_action)
;;     23058028 (in bt_att_disconnected)
k_queue_free proc
	c.beqz	a0,0000000023048A98

l23048A94:
	c.lw	a0,0(a5)
	c.bnez	a5,0000000023048AA4

l23048A98:
	lui	a0,000230BB
	addi	a0,a0,-00000650
	jal	zero,0000000023082388

l23048AA4:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.mv	a0,a5
	c.swsp	ra,00000084
	jal	ra,00000000230619CC
	sw	zero,s0,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; k_queue_prepend: 23048ABE
;;   Called from:
;;     23049010 (in net_buf_alloc_len)
;;     23049268 (in net_buf_unref)
k_queue_prepend proc
	jal	zero,0000000023048A8A

;; k_queue_append_list: 23048AC2
;;   Called from:
;;     230491AC (in net_buf_put)
k_queue_append_list proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s0,a1

l23048ACE:
	c.bnez	s0,0000000023048ADA

l23048AD0:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23048ADA:
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,0000000023048A8A
	c.lw	s0,0(s0)
	c.j	0000000023048ACE

;; k_queue_get: 23048AE6
;;   Called from:
;;     23048FAE (in net_buf_alloc_len)
;;     2304905E (in net_buf_alloc_len)
;;     230490B0 (in net_buf_get)
;;     230490CC (in net_buf_get)
;;     230496C8 (in work_queue_main)
;;     23049F30 (in bl_handle_queued_msg)
;;     23049FB6 (in bl_onchiphci_interface_deinit)
;;     2304A8A0 (in bt_conn_send_cb)
;;     23057F7C (in att_reset)
k_queue_get proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	zero,00000084
	c.li	a5,FFFFFFFF
	c.mv	a2,a1
	bne	a1,a5,0000000023048AF6

l23048AF4:
	c.li	a2,FFFFFFFF

l23048AF6:
	c.lw	a0,0(a0)
	c.addi4spn	a1,0000000C
	jal	ra,0000000023061684
	c.li	a4,00000001
	c.li	a5,00000000
	bne	a0,a4,0000000023048B08

l23048B06:
	c.lwsp	a2,000000E4

l23048B08:
	c.lwsp	t3,00000020
	c.mv	a0,a5
	c.addi16sp	00000020
	c.jr	ra

;; k_queue_is_empty: 23048B10
;;   Called from:
;;     23049F18 (in bl_handle_queued_msg)
;;     2305703E (in polling_events.constprop.1)
k_queue_is_empty proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,0(a0)
	jal	ra,00000000230619A8
	c.lwsp	a2,00000020
	sltiu	a0,a0,+00000001
	c.addi	sp,00000010
	c.jr	ra

;; k_queue_get_cnt: 23048B24
;;   Called from:
;;     23050D7E (in bt_buf_get_rx_avail_cnt)
k_queue_get_cnt proc
	c.lw	a0,0(a0)
	jal	zero,00000000230619A8

;; k_sem_init: 23048B2A
;;   Called from:
;;     2304E7BE (in bt_hci_cmd_send_sync)
;;     23050286 (in bt_enable)
;;     230502CA (in bt_enable)
;;     23050602 (in init_work)
;;     2305077C (in init_work)
;;     23051116 (in l2cap_chan_tx_init)
;;     23051174 (in l2cap_chan_rx_init)
;;     23053926 (in smp_init)
;;     230554E4 (in bt_smp_init)
;;     23057F0E (in bt_att_accept)
k_sem_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.bnez	a0,0000000023048B48

l23048B32:
	lui	a0,000230BB
	addi	a0,a0,-0000063C
	jal	ra,0000000023082388
	c.li	a0,FFFFFFEA

l23048B40:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23048B48:
	c.mv	s0,a0
	c.mv	a0,a2
	jal	ra,000000002306130C
	addi	a5,s0,+00000004
	c.sw	s0,0(a0)
	c.sw	s0,4(a5)
	c.sw	s0,8(a5)
	c.li	a0,00000000
	c.j	0000000023048B40

;; k_sem_take: 23048B5E
;;   Called from:
;;     2304A222 (in send_frag)
;;     2304E816 (in bt_hci_cmd_send_sync)
;;     2304FE12 (in hci_tx_thread)
;;     230515DE (in l2cap_chan_le_send)
;;     23051CCA (in l2cap_rx_process)
;;     230570CE (in k_poll)
;;     23057CB0 (in att_send_req)
;;     230580BA (in bt_att_encrypt_change)
;;     23058D9E (in bt_att_send)
k_sem_take proc
	c.beqz	a0,0000000023048B7A

l23048B60:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.lw	a0,0(a0)
	jal	ra,00000000230617D0
	c.lwsp	a2,00000020
	c.addi	a0,FFFFFFFF
	sltu	a0,zero,a0
	sub	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

l23048B7A:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; k_sem_give: 23048B7E
;;   Called from:
;;     2303D458 (in hb_pub_status)
;;     2303D50E (in hb_sub_status)
;;     2303D670 (in mod_pub_status)
;;     2303D6E0 (in relay_status)
;;     2303D790 (in app_key_status)
;;     2303D808 (in net_key_status)
;;     2303D882 (in comp_data_status)
;;     2303D958 (in mod_sub_status)
;;     2303DA24 (in mod_app_status)
;;     2303DA6C (in state_status_u8.isra.2)
;;     2304146E (in health_period_status)
;;     23041576 (in health_fault_status)
;;     230415C4 (in health_attention_status)
;;     2304A2C4 (in send_frag)
;;     2304A90E (in bt_conn_send_cb)
;;     2304E180 (in hci_num_completed_packets)
;;     2304E1DA (in hci_num_completed_packets)
;;     2304E5C4 (in hci_cmd_done)
;;     2304E616 (in hci_cmd_status)
;;     2304E662 (in hci_cmd_complete)
;;     2304E80A (in bt_hci_cmd_send_sync)
;;     2304F2FC (in bt_hci_cmd_send)
;;     2304FE52 (in hci_tx_thread)
;;     23051274 (in l2cap_chan_tx_give_credits)
;;     2305143E (in l2cap_chan_send_credits.isra.10)
;;     23054930 (in bt_smp_pkey_ready)
;;     23057190 (in k_poll_signal_raise)
;;     23057F96 (in att_reset)
;;     230580F0 (in bt_att_encrypt_change)
;;     2305815E (in att_pdu_sent)
;;     23058DCC (in bt_att_send)
k_sem_give proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.bnez	a0,0000000023048B98

l23048B84:
	lui	a0,000230BB
	addi	a0,a0,-0000063C
	jal	ra,0000000023082388
	c.li	a0,FFFFFFEA

l23048B92:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

l23048B98:
	c.lw	a0,0(a0)
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000000
	jal	ra,0000000023061344
	c.addi	a0,FFFFFFFF
	sltu	a0,zero,a0
	sub	a0,zero,a0
	c.j	0000000023048B92

;; k_sem_delete: 23048BB0
;;   Called from:
;;     2304E81C (in bt_hci_cmd_send_sync)
;;     23050102 (in bt_disable_action)
;;     2305010E (in bt_disable_action)
;;     2305011A (in bt_disable_action)
;;     23050122 (in bt_disable_action)
;;     23058040 (in bt_att_disconnected)
k_sem_delete proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.beqz	a0,0000000023048BBE

l23048BB8:
	c.mv	s0,a0
	c.lw	a0,0(a0)
	c.bnez	a0,0000000023048BD4

l23048BBE:
	lui	a0,000230BB
	addi	a0,a0,-0000063C
	jal	ra,0000000023082388
	c.li	a0,FFFFFFEA

l23048BCC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l23048BD4:
	jal	ra,00000000230619CC
	c.li	a0,00000000
	sw	zero,s0,+00000000
	c.j	0000000023048BCC

;; k_sem_count_get: 23048BE0
;;   Called from:
;;     23051712 (in l2cap_chan_le_send)
;;     23051BCE (in l2cap_chan_le_recv_seg)
;;     23051BFA (in l2cap_chan_le_recv_seg)
;;     23057008 (in polling_events.constprop.1)
k_sem_count_get proc
	c.lw	a0,0(a0)
	jal	zero,00000000230619A8

;; k_thread_create: 23048BE6
;;   Called from:
;;     2303CDD0 (in bt_mesh_adv_init)
;;     2304974C (in k_work_q_start)
;;     2304A178 (in hci_driver_open)
;;     23050300 (in bt_enable)
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
	jal	ra,00000000230626A4
	c.lw	s0,0(a0)
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	sltiu	a0,a0,+00000001
	sub	a0,zero,a0
	c.addi	sp,00000010
	c.jr	ra

;; k_thread_delete: 23048C10
;;   Called from:
;;     230500AE (in bt_disable_action)
;;     230500BA (in bt_disable_action)
;;     230500C6 (in bt_disable_action)
k_thread_delete proc
	c.beqz	a0,0000000023048C16

l23048C12:
	c.lw	a0,0(a5)
	c.bnez	a5,0000000023048C22

l23048C16:
	lui	a0,000230BB
	addi	a0,a0,-0000062C
	jal	zero,0000000023082388

l23048C22:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.mv	a0,a5
	c.swsp	ra,00000084
	jal	ra,0000000023062720
	sw	zero,s0,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; k_yield: 23048C3C
;;   Called from:
;;     2303CB5A (in adv_thread)
;;     230496E0 (in work_queue_main)
;;     2304A19E (in recv_thread)
;;     2304FDD4 (in hci_tx_thread)
k_yield proc
	ecall
	c.li	a0,00000000
	c.jr	ra

;; k_sleep: 23048C44
;;   Called from:
;;     2303CB7E (in adv_thread)
k_sleep proc
	addi	a5,zero,+000003E8
	add	a0,a0,a5
	srl	a0,a0,a5
	jal	zero,0000000023062CC4

;; irq_lock: 23048C54
;;   Called from:
;;     23048DFC (in atomic_cas)
;;     23048E2A (in atomic_inc)
;;     23048E50 (in atomic_dec)
;;     23048E7C (in atomic_set)
;;     23048EA0 (in atomic_clear)
;;     23048EC6 (in atomic_or)
;;     23048EEE (in atomic_and)
;;     23048F96 (in net_buf_alloc_len)
;;     23049106 (in net_buf_slist_put)
;;     23049140 (in net_buf_slist_get)
;;     23049172 (in net_buf_slist_get)
;;     2304987A (in k_delayed_work_cancel)
;;     230498DC (in k_delayed_work_submit)
;;     2304A268 (in send_frag)
;;     2304A29A (in send_frag)
;;     2304A40C (in tx_notify)
;;     2304E134 (in hci_num_completed_packets)
;;     2304E164 (in hci_num_completed_packets)
;;     2304E1B2 (in hci_num_completed_packets)
;;     23050DCA (in bt_buf_get_cmd_complete)
;;     23056FAA (in polling_events.constprop.1)
;;     230570E0 (in k_poll)
;;     23057138 (in k_poll)
;;     2305714E (in k_poll_signal_raise)
irq_lock proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023063658
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

;; irq_unlock: 23048C64
;;   Called from:
;;     23048E0E (in atomic_cas)
;;     23048E36 (in atomic_inc)
;;     23048E5C (in atomic_dec)
;;     23048E86 (in atomic_set)
;;     23048EAA (in atomic_clear)
;;     23048ED2 (in atomic_or)
;;     23048EFA (in atomic_and)
;;     23048FB8 (in net_buf_alloc_len)
;;     23049024 (in net_buf_alloc_len)
;;     23049056 (in net_buf_alloc_len)
;;     2304911C (in net_buf_slist_put)
;;     2304915A (in net_buf_slist_get)
;;     23049188 (in net_buf_slist_get)
;;     230498AE (in k_delayed_work_cancel)
;;     23049928 (in k_delayed_work_submit)
;;     2304A27A (in send_frag)
;;     2304A2BC (in send_frag)
;;     2304A420 (in tx_notify)
;;     2304A432 (in tx_notify)
;;     2304E146 (in hci_num_completed_packets)
;;     2304E158 (in hci_num_completed_packets)
;;     2304E172 (in hci_num_completed_packets)
;;     2304E19C (in hci_num_completed_packets)
;;     2304E1CA (in hci_num_completed_packets)
;;     23050DDE (in bt_buf_get_cmd_complete)
;;     23057030 (in polling_events.constprop.1)
;;     230570FC (in k_poll)
;;     23057134 (in k_poll)
;;     23057160 (in k_poll_signal_raise)
irq_unlock proc
	jal	zero,000000002306366C

;; k_timer_init: 23048C68
;;   Called from:
;;     2304979A (in k_delayed_work_init)
k_timer_init proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.mv	a4,a1
	c.bnez	a0,0000000023048C80

l23048C74:
	c.swsp	a2,00000084
	c.swsp	a1,00000004
	jal	ra,0000000023000C02
	c.lwsp	a2,00000084
	c.lwsp	s0,000000C4

l23048C80:
	lui	a0,000230BB
	c.sw	s0,8(a2)
	c.sw	s0,4(a4)
	c.li	a3,00000000
	c.li	a2,00000000
	addi	a1,zero,+000003E8
	addi	a0,a0,-0000061C
	jal	ra,0000000023063DE0
	c.sw	s0,0(a0)
	c.bnez	a0,0000000023048CA6

l23048C9C:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,0000000023000C02

l23048CA6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; k_timer_stop: 23048CAE
;;   Called from:
;;     23049896 (in k_delayed_work_cancel)
;;     23049994 (in work_timeout)
k_timer_stop proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.bnez	a0,0000000023048CBC

l23048CB4:
	c.swsp	a0,00000084
	jal	ra,0000000023000C02
	c.lwsp	a2,00000044

l23048CBC:
	c.lw	a0,0(a0)
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000003
	jal	ra,0000000023063ED2
	c.li	a5,00000001
	beq	a0,a5,0000000023048CD8

l23048CD0:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,0000000023000C02

l23048CD8:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; k_timer_delete: 23048CDE
;;   Called from:
;;     230497E6 (in k_delayed_work_del_timer)
k_timer_delete proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.bnez	a0,0000000023048CEC

l23048CE4:
	c.swsp	a0,00000084
	jal	ra,0000000023000C02
	c.lwsp	a2,00000044

l23048CEC:
	c.lw	a0,0(a0)
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000005
	jal	ra,0000000023063ED2
	c.li	a5,00000001
	beq	a0,a5,0000000023048D08

l23048D00:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	jal	zero,0000000023000C02

l23048D08:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; k_now_ms: 23048D0E
;;   Called from:
;;     23048D2A (in k_uptime_get)
;;     23048D32 (in k_uptime_get_32)
;;     23048D50 (in k_timer_start)
;;     230497B8 (in k_delayed_work_remaining_get)
k_now_ms proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,00000000230629A4
	addi	a5,zero,+000003E8
	add	a0,a0,a5
	c.lwsp	a2,00000020
	c.li	a1,00000000
	c.addi	sp,00000010
	srl	a0,a0,a5
	c.jr	ra

;; k_uptime_get: 23048D2A
;;   Called from:
;;     2303F7F0 (in hb_sub_send_status.constprop.14)
;;     2303F9CC (in heartbeat_sub_set)
;;     2303FBE0 (in bt_mesh_heartbeat)
;;     230434C4 (in send_reliable)
;;     23044074 (in prov_retransmit)
;;     230489E8 (in bt_mesh_srv_check_rcvd_msg_with_last)
k_uptime_get proc
	jal	zero,0000000023048D0E

;; k_uptime_get_32: 23048D2E
;;   Called from:
;;     2303C042 (in publish_start)
;;     2303C2F6 (in publish_sent)
;;     2303CE5C (in beacon_complete)
;;     2303CF4A (in beacon_send)
;;     230452FE (in bt_mesh_proxy_identity_start)
;;     23045856 (in bt_mesh_proxy_adv_start)
;;     23046B38 (in seg_ack)
;;     230470A6 (in bt_mesh_trans_recv)
;;     23047678 (in clear_timeout)
;;     2304837E (in bt_mesh_friend_req)
;;     23048F90 (in net_buf_alloc_len)
;;     23048FCA (in net_buf_alloc_len)
k_uptime_get_32 proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023048D0E
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; k_timer_start: 23048D3C
;;   Called from:
;;     230498FA (in k_delayed_work_submit)
k_timer_start proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s1,a1
	c.bnez	a0,0000000023048D4E

l23048D4A:
	jal	ra,0000000023000C02

l23048D4E:
	c.sw	s0,12(s1)
	jal	ra,0000000023048D0E
	c.sw	s0,16(a0)
	c.lw	s0,0(a0)
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	c.li	a1,00000003
	jal	ra,0000000023063ED2
	c.li	a5,00000001
	beq	a0,a5,0000000023048D6E

l23048D6A:
	jal	ra,0000000023000C02

l23048D6E:
	addi	a2,zero,+000003E8
	add	s1,s1,a2
	c.lw	s0,0(a0)
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a1,00000004
	srl	a2,s1,a2
	jal	ra,0000000023063ED2
	c.li	a5,00000001
	beq	a0,a5,0000000023048D90

l23048D8C:
	jal	ra,0000000023000C02

l23048D90:
	c.lw	s0,0(s0)
	jal	ra,00000000230629A4
	c.mv	a2,a0
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a1,00000001
	c.mv	a0,s0
	jal	ra,0000000023063ED2
	c.li	a5,00000001
	beq	a0,a5,0000000023048DB6

l23048DAA:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023000C02

l23048DB6:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; k_get_random_byte_array: 23048DC0
;;   Called from:
;;     2304B7DC (in bt_rand)
k_get_random_byte_array proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	add	s1,a0,a1

l23048DCE:
	bne	s0,s1,0000000023048DDC

l23048DD2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l23048DDC:
	jal	ra,0000000023065C28
	sb	a0,s0,+00000000
	c.addi	s0,00000001
	c.j	0000000023048DCE

;; k_malloc: 23048DE8
;;   Called from:
;;     23049DBC (in bl_onchiphci_rx_packet_handler)
k_malloc proc
	jal	zero,000000002306488A

;; k_free: 23048DEC
;;   Called from:
;;     23049F8A (in bl_handle_queued_msg)
;;     23049FDA (in bl_onchiphci_interface_deinit)
k_free proc
	jal	zero,0000000023064972

;; atomic_cas: 23048DF0
;;   Called from:
;;     2304C324 (in bt_gatt_init)
atomic_cas proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	a1,00000084
	c.mv	s0,a0
	c.swsp	a2,00000004
	c.swsp	ra,0000008C
	jal	ra,0000000023048C54
	c.lw	s0,0(a5)
	c.lwsp	a2,00000064
	c.lwsp	s0,00000084
	bne	a5,a1,0000000023048E1C

l23048E0A:
	c.sw	s0,0(a2)
	c.li	s0,00000001

l23048E0E:
	jal	ra,0000000023048C64
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l23048E1C:
	c.li	s0,00000000
	c.j	0000000023048E0E

;; atomic_inc: 23048E20
;;   Called from:
;;     2304AB14 (in bt_conn_set_state)
;;     2304ACF6 (in bt_conn_lookup_handle)
;;     2304ADE4 (in bt_conn_lookup_state_le.part.7)
;;     2304AE72 (in bt_conn_lookup_addr_le)
;;     2304AF3C (in bt_conn_ref)
atomic_inc proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023048C54
	c.lw	s1,0(s0)
	addi	a5,s0,+00000001
	c.sw	s1,0(a5)
	jal	ra,0000000023048C64
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; atomic_dec: 23048E46
;;   Called from:
;;     2304AF4E (in bt_conn_unref)
;;     2304B1F0 (in bt_conn_create_le)
;;     2304B372 (in conn_update_timeout)
atomic_dec proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023048C54
	c.lw	s1,0(s0)
	addi	a5,s0,-00000001
	c.sw	s1,0(a5)
	jal	ra,0000000023048C64
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; atomic_get: 23048E6C
;;   Called from:
;;     2303AE4E (in blemesh_iv_update)
;;     2303AE70 (in blemesh_iv_update)
;;     2303B1E4 (in atomic_test_bit)
;;     2303B32E (in sub_update)
;;     2303BBD6 (in bt_mesh_lpn_friend_sub_cfm)
;;     2303BC4E (in bt_mesh_lpn_friend_sub_cfm)
;;     2303CCB2 (in bt_mesh_adv_create_from_pool)
;;     2303D000 (in beacon_send)
;;     2303D2AA (in bt_mesh_beacon_recv)
;;     2303D2BE (in bt_mesh_beacon_recv)
;;     2303D394 (in bt_mesh_beacon_disable)
;;     23041CAA (in bt_mesh_reset)
;;     23041D32 (in bt_mesh_is_provisioned)
;;     23042048 (in atomic_test_bit.constprop.8)
;;     23044052 (in prov_retransmit)
;;     2304419C (in prov_msg_recv)
;;     2304455A (in send_pub_key)
;;     23044568 (in send_pub_key)
;;     230445DC (in gen_prov_ctl)
;;     23044698 (in gen_prov_ctl)
;;     230446A4 (in gen_prov_ctl)
;;     230448F2 (in bt_prov_active)
;;     23044960 (in bt_mesh_pb_adv_recv)
;;     230449AE (in bt_mesh_pb_adv_recv)
;;     230464DA (in bt_mesh_trans_send)
;;     23046610 (in bt_mesh_trans_send)
;;     23047934 (in encode_friend_ctl)
;;     2304889A (in bt_mesh_friend_enqueue_tx)
;;     23049884 (in k_delayed_work_cancel)
;;     2304A1D0 (in atomic_test_bit)
;;     2304A52E (in le_check_valid_conn)
;;     2304A53A (in le_check_valid_conn)
;;     2304A94E (in bt_conn_prepare_events)
;;     2304A986 (in bt_conn_prepare_events)
;;     2304AA22 (in bt_conn_add_le)
;;     2304AA30 (in bt_conn_add_le)
;;     2304ACA6 (in bt_conn_lookup_handle)
;;     2304ACCE (in bt_conn_lookup_handle)
;;     2304AD6E (in bt_conn_lookup_state_le.part.7)
;;     2304ADA2 (in bt_conn_lookup_state_le.part.7)
;;     2304AE1C (in bt_conn_lookup_addr_le)
;;     2304AE4A (in bt_conn_lookup_addr_le)
;;     2304AEB8 (in bt_conn_foreach)
;;     2304AED8 (in bt_conn_foreach)
;;     2304AFE8 (in bt_conn_get_remote_dev_info)
;;     2304B004 (in bt_conn_get_remote_dev_info)
;;     2304B782 (in bt_conn_init)
;;     2304B7AA (in bt_conn_init)
;;     2304BC4C (in sc_indicate_rsp)
;;     2304C1E8 (in sc_indicate)
;;     2304DBF8 (in bt_gatt_unsubscribe)
;;     2304DE54 (in bt_gatt_disconnected)
;;     2304DECA (in atomic_test_bit)
;;     23050448 (in init_work)
;;     230525E6 (in atomic_test_bit)
;;     230580CE (in bt_att_encrypt_change)
;;     230581E4 (in att_chan_get)
atomic_get proc
	c.lw	a0,0(a0)
	c.jr	ra

;; atomic_set: 23048E70
;;   Called from:
;;     2303B032 (in group_zero)
;;     2304AA7E (in bt_conn_add_le)
;;     23050452 (in init_work)
;;     2305261A (in smp_reset)
;;     23052624 (in smp_reset)
atomic_set proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.mv	s0,a0
	c.swsp	a1,00000084
	jal	ra,0000000023048C54
	c.lwsp	a2,00000064
	c.lw	s0,0(s1)
	c.sw	s0,0(a1)
	jal	ra,0000000023048C64
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; atomic_clear: 23048E96
;;   Called from:
;;     2304EB9C (in hci_disconn_complete)
atomic_clear proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	jal	ra,0000000023048C54
	c.lw	s0,0(s1)
	sw	zero,s0,+00000000
	jal	ra,0000000023048C64
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; atomic_or: 23048EBA
;;   Called from:
;;     2303B432 (in sub_update)
;;     2303BB0A (in bt_mesh_lpn_group_del)
;;     2303BBE4 (in bt_mesh_lpn_friend_sub_cfm)
;;     2303D13E (in bt_mesh_beacon_ivu_initiator)
;;     23041C28 (in bt_mesh_provision)
;;     2304255E (in bt_mesh_net_create)
;;     23042774 (in bt_mesh_net_iv_update)
;;     2304281A (in bt_mesh_net_iv_update)
;;     230437CA (in prov_send_fail_msg)
;;     23043D98 (in prov_pub_key)
;;     23043FF8 (in prov_start)
;;     23044662 (in gen_prov_ctl)
;;     23044830 (in bt_mesh_pb_gatt_open)
;;     23049694 (in k_work_submit_to_queue)
;;     2304A6D8 (in bt_conn_set_security)
;;     2304B3DC (in conn_update_timeout)
;;     2304B4A0 (in bt_conn_le_param_update)
;;     2304BE06 (in gatt_write_ccc.constprop.21)
;;     2304C1D4 (in sc_indicate)
;;     2304CA02 (in sc_process)
;;     2304DF22 (in le_pkey_complete)
;;     2304DF70 (in atomic_set_bit_to)
;;     2304E0AC (in le_conn_update_complete)
;;     2304EEC2 (in bt_id_add)
;;     2304F050 (in bt_id_del)
;;     23050068 (in bt_finalize_init)
;;     2305025E (in bt_enable)
;;     230503DC (in bt_id_create)
;;     23050C5C (in bt_le_scan_start)
;;     23050E7E (in bt_pub_key_gen)
;;     2305124E (in l2cap_chan_tx_give_credits)
;;     23051958 (in bt_l2cap_connected)
;;     230525DC (in atomic_set_bit)
;;     23057F88 (in att_reset)
atomic_or proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	a1,00000084
	c.mv	s1,a0
	jal	ra,0000000023048C54
	c.lwsp	a2,00000064
	c.lw	s1,0(s0)
	c.or	a1,s0
	c.sw	s1,0(a1)
	jal	ra,0000000023048C64
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; atomic_and: 23048EE2
;;   Called from:
;;     2303B1CC (in atomic_test_and_clear_bit)
;;     2303BA1E (in bt_mesh_lpn_group_add)
;;     2303BC5E (in bt_mesh_lpn_friend_sub_cfm)
;;     2303D158 (in bt_mesh_beacon_ivu_initiator)
;;     23041C50 (in bt_mesh_provision)
;;     23042588 (in bt_mesh_net_create)
;;     23042826 (in bt_mesh_net_iv_update)
;;     23044026 (in pub_key_ready)
;;     2304410E (in prov_input_complete)
;;     230446D8 (in bt_mesh_input_number)
;;     2304472C (in bt_mesh_input_string)
;;     23045EB0 (in seg_tx_reset)
;;     230496D2 (in work_queue_main)
;;     23049760 (in k_work_init)
;;     2304A49C (in notify_le_param_updated)
;;     2304A704 (in bt_conn_set_security)
;;     2304A99A (in bt_conn_prepare_events)
;;     2304A9C4 (in bt_conn_prepare_events)
;;     2304B3BC (in conn_update_timeout)
;;     2304B438 (in bt_conn_le_param_update)
;;     2304B590 (in bt_conn_process_tx)
;;     2304BAF4 (in gatt_write_ccc_rsp)
;;     2304BC46 (in sc_indicate_rsp)
;;     2304C9C4 (in sc_process)
;;     2304DF00 (in le_pkey_complete)
;;     2304DF78 (in atomic_set_bit_to)
;;     2304F4C4 (in bt_le_scan_update)
;;     2304FA18 (in enh_conn_complete)
;;     2304FA66 (in enh_conn_complete)
;;     2304FAF8 (in enh_conn_complete)
;;     2304FBDA (in enh_conn_complete)
;;     23050136 (in bt_disable_action)
;;     23050990 (in bt_le_adv_start_internal)
;;     23050B96 (in bt_le_adv_stop)
;;     23050C84 (in bt_le_scan_start)
;;     23050CE8 (in bt_le_scan_stop)
;;     23050E8E (in bt_pub_key_gen)
;;     23050EB6 (in bt_pub_key_gen)
;;     23051722 (in l2cap_chan_le_send)
;;     23052B0C (in atomic_test_and_clear_bit)
;;     230534C8 (in smp_dhkey_check)
;;     2305400A (in bt_smp_encrypt_change)
;;     2305415C (in smp_send_pairing_confirm)
;;     230542A4 (in legacy_send_pairing_confirm)
;;     2305431E (in smp_pairing_confirm)
;;     2305457A (in smp_pairing_rsp)
atomic_and proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	a1,00000084
	c.mv	s1,a0
	jal	ra,0000000023048C54
	c.lwsp	a2,00000064
	c.lw	s1,0(s0)
	c.and	a1,s0
	c.sw	s1,0(a1)
	jal	ra,0000000023048C64
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; fixed_data_unref: 23048F0A
fixed_data_unref proc
	c.jr	ra

;; net_buf_pool_get: 23048F0C
;;   Called from:
;;     2304E4DA (in hci_cmd_done)
;;     2304E4EE (in hci_cmd_done)
;;     2305164A (in l2cap_chan_le_send)
net_buf_pool_get proc
	c.li	a5,0000001C
	add	a0,a0,a5
	lui	a5,0004200F
	addi	a5,a5,-00000134
	c.add	a0,a5
	c.jr	ra

;; net_buf_id: 23048F1E
;;   Called from:
;;     2303CCE8 (in bt_mesh_adv_create_from_pool)
;;     23048F64 (in fixed_data_alloc)
;;     2304E518 (in hci_cmd_done)
;;     2304E53A (in hci_cmd_done)
;;     2304E558 (in hci_cmd_done)
;;     2304E56E (in hci_cmd_done)
;;     2304E588 (in hci_cmd_done)
;;     2304E59A (in hci_cmd_done)
;;     2304E5AA (in hci_cmd_done)
;;     2304E72C (in bt_hci_cmd_create)
;;     2304E746 (in bt_hci_cmd_create)
;;     2304E756 (in bt_hci_cmd_create)
;;     2304E7C4 (in bt_hci_cmd_send_sync)
;;     2304E7DE (in bt_hci_cmd_send_sync)
;;     2304E822 (in bt_hci_cmd_send_sync)
;;     2304E834 (in bt_hci_cmd_send_sync)
;;     2304E8EE (in set_le_scan_enable)
;;     2304EAD6 (in set_advertise_enable)
;;     2304FE58 (in hci_tx_thread)
net_buf_id proc
	lbu	a4,a0,+00000006
	c.li	a3,0000001C
	lui	a5,0004200F
	add	a4,a4,a3
	addi	a5,a5,-00000134
	c.add	a5,a4
	c.lw	a5,24(a5)
	c.sub	a0,a5
	c.srai	a0,00000005
	c.jr	ra

;; fixed_data_alloc: 23048F3A
fixed_data_alloc proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lbu	a4,a0,+00000006
	c.li	a3,0000001C
	lui	a5,0004200F
	add	a4,a4,a3
	addi	a5,a5,-00000134
	c.add	a5,a4
	c.lw	a5,20(a5)
	c.lw	a5,4(s0)
	c.lw	a1,0(a5)
	c.lw	s0,0(a4)
	bgeu	a4,a5,0000000023048F62

l23048F60:
	c.mv	a5,a4

l23048F62:
	c.sw	a1,0(a5)
	jal	ra,0000000023048F1E
	c.lw	s0,0(a5)
	c.lwsp	a2,00000020
	add	a0,a0,a5
	c.lw	s0,4(a5)
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.add	a0,a5
	c.jr	ra

;; net_buf_alloc_len: 23048F7A
;;   Called from:
;;     230490A0 (in net_buf_alloc_fixed)
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
	jal	ra,0000000023048D2E
	c.mv	s3,a0
	jal	ra,0000000023048C54
	lhu	a5,s1,+0000000E
	c.beqz	a5,0000000023049056

l23048FA0:
	lhu	a4,s1,+0000000C
	c.mv	s5,a0
	bgeu	a5,a4,0000000023049016

l23048FAA:
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,0000000023048AE6
	c.mv	s0,a0
	c.beqz	a0,0000000023049016

l23048FB6:
	c.mv	a0,s5
	jal	ra,0000000023048C64

l23048FBC:
	c.lwsp	a2,000000E4
	c.beqz	a5,000000002304907A

l23048FC0:
	addi	a5,s2,+00000001
	c.li	a4,00000001
	bgeu	a4,a5,0000000023048FDC

l23048FCA:
	jal	ra,0000000023048D2E
	sub	a0,a0,s3
	bgeu	s2,a0,0000000023048FD8

l23048FD6:
	c.mv	a0,s2

l23048FD8:
	sub	s2,s2,a0

l23048FDC:
	lbu	a5,s0,+00000006
	c.li	s3,0000001C
	lui	s1,0004200F
	add	a5,a5,s3
	addi	s1,s1,-00000134
	c.mv	a2,s2
	c.addi4spn	a1,0000000C
	c.mv	a0,s0
	c.add	a5,s1
	c.lw	a5,20(a5)
	c.lw	a5,0(a5)
	c.lw	a5,0(a5)
	c.jalr	a5
	c.sw	s0,16(a0)
	c.bnez	a0,000000002304907E

l23049002:
	lbu	a0,s0,+00000006
	c.mv	a1,s0
	c.li	s0,00000000
	add	a0,a0,s3
	c.add	a0,s1
	jal	ra,0000000023048ABE
	c.j	0000000023049066

l23049016:
	lhu	s4,s1,+0000000E
	c.mv	a0,s5
	addi	a5,s4,-00000001
	sh	a5,s1,+0000000E
	jal	ra,0000000023048C64
	lhu	s0,s1,+0000000C
	sub	s0,s0,s4
	slli	a5,s0,00000005
	c.lw	s1,24(s0)
	c.add	s0,a5
	lui	a5,0004200F
	addi	a5,a5,-00000134
	c.sub	s1,a5
	lui	a5,000B6DB7
	c.srai	s1,00000002
	addi	a5,a5,-00000249
	add	s1,s1,a5
	sb	s1,s0,+00000006
	c.j	0000000023048FBC

l23049056:
	jal	ra,0000000023048C64
	c.mv	a1,s2
	c.mv	a0,s1
	jal	ra,0000000023048AE6
	c.mv	s0,a0
	c.bnez	a0,0000000023048FBC

l23049066:
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

l2304907A:
	sw	zero,s0,+00000010

l2304907E:
	c.li	a5,00000001
	sw	zero,s0,+00000000
	sh	a5,s0,+00000004
	c.lwsp	a2,000000E4
	sh	zero,s0,+0000000C
	sh	a5,s0,+0000000E
	c.lw	s0,16(a5)
	c.sw	s0,8(a5)
	c.j	0000000023049066

;; net_buf_alloc_fixed: 23049098
;;   Called from:
;;     2303CCE0 (in bt_mesh_adv_create_from_pool)
;;     2304B4BE (in bt_conn_create_pdu_timeout)
;;     2304E714 (in bt_hci_cmd_create)
;;     23050DA2 (in bt_buf_get_rx)
;;     23051650 (in l2cap_chan_le_send)
net_buf_alloc_fixed proc
	c.lw	a0,20(a5)
	c.mv	a2,a1
	c.lw	a5,4(a5)
	c.lw	a5,0(a1)
	jal	zero,0000000023048F7A

;; net_buf_get: 230490A4
;;   Called from:
;;     2303CA8A (in adv_thread)
;;     2303CB6A (in adv_thread)
;;     2304A194 (in recv_thread)
;;     2304A3AC (in conn_cleanup)
;;     2304B5B2 (in bt_conn_process_tx)
;;     2304FE00 (in hci_tx_thread)
;;     23050080 (in bt_delete_queue)
;;     230510C0 (in l2cap_chan_destroy)
;;     230510CE (in l2cap_chan_destroy)
;;     23051CA2 (in l2cap_rx_process)
;;     23058146 (in att_pdu_sent)
net_buf_get proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s2,a0
	jal	ra,0000000023048AE6
	c.mv	s1,a0
	c.mv	s0,a0
	c.bnez	a0,00000000230490DE

l230490BA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230490C8:
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,0000000023048AE6
	lbu	a5,s0,+00000005
	c.sw	s0,0(a0)
	c.andi	a5,FFFFFFFE
	sb	a5,s0,+00000005
	c.mv	s0,a0

l230490DE:
	lbu	a5,s0,+00000005
	c.andi	a5,00000001
	c.bnez	a5,00000000230490C8

l230490E6:
	sw	zero,s0,+00000000
	c.j	00000000230490BA

;; net_buf_simple_reserve: 230490EC
;;   Called from:
;;     2303A97E (in blemesh_net_send)
;;     230433FE (in prov_buf_init)
;;     23044E86 (in beacon_send)
;;     23044F36 (in send_filter_status)
;;     230456AA (in bt_mesh_proxy_relay)
;;     23046792 (in bt_mesh_trans_send)
;;     2304689E (in bt_mesh_trans_send)
;;     230469D2 (in bt_mesh_ctl_send)
;;     2304796E (in enqueue_sub_cfm)
;;     23047A70 (in enqueue_update)
;;     2304840E (in bt_mesh_friend_req)
;;     2304B4E8 (in bt_conn_create_pdu_timeout)
;;     2304E722 (in bt_hci_cmd_create)
;;     23050DAE (in bt_buf_get_rx)
;;     23050E02 (in bt_buf_get_cmd_complete)
;;     2305165C (in l2cap_chan_le_send)
net_buf_simple_reserve proc
	c.lw	a0,8(a5)
	c.add	a1,a5
	c.sw	a0,0(a1)
	c.jr	ra

;; net_buf_slist_put: 230490F4
;;   Called from:
;;     23042C96 (in bt_mesh_net_send)
;;     23047B06 (in enqueue_update)
;;     23047B36 (in enqueue_friend_pdu)
;;     23047B78 (in enqueue_friend_pdu)
net_buf_slist_put proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.mv	s1,a0
	c.mv	s0,a1

l23049100:
	c.lw	s0,0(a4)
	c.bnez	a4,0000000023049120

l23049104:
	c.swsp	a1,00000084
	jal	ra,0000000023048C54
	c.lw	s1,4(a5)
	c.lwsp	a2,00000064
	c.bnez	a5,0000000023049130

l23049110:
	c.sw	s1,0(a1)

l23049112:
	c.sw	s1,4(s0)
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,0000000023048C64

l23049120:
	lbu	a5,s0,+00000005
	ori	a5,a5,+00000001
	sb	a5,s0,+00000005
	c.mv	s0,a4
	c.j	0000000023049100

l23049130:
	c.sw	a5,0(a1)
	c.j	0000000023049112

;; net_buf_slist_get: 23049134
;;   Called from:
;;     2304332A (in bt_mesh_net_local)
net_buf_slist_get proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	jal	ra,0000000023048C54
	lw	s2,s0,+00000000
	beq	s2,zero,000000002304915A

l2304914C:
	lw	a5,s2,+00000000
	c.lw	s0,4(a4)
	c.sw	s0,0(a5)
	bne	s2,a4,000000002304915A

l23049158:
	c.sw	s0,4(a5)

l2304915A:
	jal	ra,0000000023048C64
	c.mv	s1,s2
	bne	s2,zero,0000000023049198

l23049164:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s2
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l23049172:
	jal	ra,0000000023048C54
	c.lw	s0,0(a5)
	c.beqz	a5,0000000023049186

l2304917A:
	c.lw	a5,0(a4)
	c.lw	s0,4(a3)
	c.sw	s0,0(a4)
	bne	a5,a3,0000000023049186

l23049184:
	c.sw	s0,4(a4)

l23049186:
	c.sw	s1,0(a5)
	jal	ra,0000000023048C64
	lbu	a5,s1,+00000005
	c.andi	a5,FFFFFFFE
	sb	a5,s1,+00000005
	c.lw	s1,0(s1)

l23049198:
	lbu	a5,s1,+00000005
	c.andi	a5,00000001
	c.bnez	a5,0000000023049172

l230491A0:
	sw	zero,s1,+00000000
	c.j	0000000023049164

;; net_buf_put: 230491A6
;;   Called from:
;;     2303CD58 (in bt_mesh_adv_update)
;;     2303CD88 (in bt_mesh_adv_send)
;;     2304A1AE (in hci_driver_enque_recvq)
;;     2304A902 (in bt_conn_send_cb)
;;     2304E7FE (in bt_hci_cmd_send_sync)
;;     2304F2F0 (in bt_hci_cmd_send)
;;     230519F4 (in bt_l2cap_recv)
net_buf_put proc
	c.mv	a2,a1

l230491A8:
	c.lw	a2,0(a4)
	c.bnez	a4,00000000230491B0

l230491AC:
	jal	zero,0000000023048AC2

l230491B0:
	lbu	a5,a2,+00000005
	ori	a5,a5,+00000001
	sb	a5,a2,+00000005
	c.mv	a2,a4
	c.j	00000000230491A8

;; net_buf_unref: 230491C0
;;   Called from:
;;     2303CB3A (in adv_thread)
;;     2303CBA0 (in adv_thread)
;;     2303CFEA (in beacon_send)
;;     2303D0B2 (in beacon_send)
;;     2303D100 (in beacon_send)
;;     23042C5C (in bt_mesh_net_send)
;;     23043290 (in bt_mesh_net_recv)
;;     2304334A (in bt_mesh_net_local)
;;     2304346A (in free_segments)
;;     23043AA8 (in gen_prov_ack_send)
;;     23045E8A (in seg_tx_reset)
;;     23046180 (in ctl_recv)
;;     2304682C (in bt_mesh_trans_send)
;;     23046908 (in bt_mesh_trans_send)
;;     23046960 (in bt_mesh_trans_send)
;;     23046A06 (in bt_mesh_ctl_send)
;;     2304743E (in friend_purge_old_ack)
;;     2304763C (in create_friend_pdu)
;;     23047750 (in buf_send_start)
;;     230477BC (in purge_buffers)
;;     230477F6 (in friend_clear)
;;     230479A6 (in enqueue_sub_cfm)
;;     23047A3E (in friend_queue_prepare_space)
;;     23047BF4 (in enqueue_friend_pdu)
;;     230480E0 (in bt_mesh_friend_poll)
;;     23048498 (in bt_mesh_friend_req)
;;     230492D0 (in net_buf_frag_del)
;;     2304A140 (in hci_driver_send)
;;     2304A2D6 (in send_frag)
;;     2304A382 (in bt_conn_reset_rx_state)
;;     2304A3EE (in conn_cleanup)
;;     2304A7B6 (in bt_conn_recv)
;;     2304A800 (in bt_conn_recv)
;;     2304A884 (in bt_conn_send_cb)
;;     2304A8BA (in bt_conn_send_cb)
;;     2304A8E6 (in bt_conn_send_cb)
;;     2304B514 (in create_frag.isra.11)
;;     2304B610 (in bt_conn_process_tx)
;;     2304E86E (in bt_hci_cmd_send_sync)
;;     2304E894 (in bt_hci_cmd_send_sync)
;;     2304EC4E (in set_ad)
;;     2304F2D4 (in bt_hci_cmd_send)
;;     2304FE2C (in hci_tx_thread)
;;     2304FE74 (in hci_tx_thread)
;;     2304FE7E (in hci_tx_thread)
;;     2304FF16 (in bt_recv)
;;     2304FFB8 (in bt_recv)
;;     23050024 (in bt_recv_prio)
;;     23050092 (in bt_delete_queue)
;;     23050458 (in init_work)
;;     23050482 (in init_work)
;;     230504DC (in init_work)
;;     2305054C (in init_work)
;;     23050574 (in init_work)
;;     230505CE (in init_work)
;;     23050608 (in init_work)
;;     23050670 (in init_work)
;;     2305069E (in init_work)
;;     230506C2 (in init_work)
;;     23050782 (in init_work)
;;     230510B0 (in l2cap_chan_destroy)
;;     230510D8 (in l2cap_chan_destroy)
;;     230510EE (in l2cap_chan_destroy)
;;     230510F4 (in l2cap_chan_destroy)
;;     230516C4 (in l2cap_chan_le_send)
;;     230517CE (in l2cap_chan_le_send_sdu)
;;     2305199C (in bt_l2cap_recv)
;;     23051C52 (in l2cap_chan_le_recv_seg)
;;     23051CE0 (in l2cap_rx_process)
;;     23054146 (in smp_send_pairing_confirm)
;;     2305428C (in legacy_send_pairing_confirm)
;;     2305773C (in att_req_destroy)
;;     23057C86 (in att_send)
;;     23057D0E (in att_send_req)
;;     23057D8A (in att_handle_rsp)
;;     23057FBC (in att_reset)
;;     230586E2 (in att_read_group_req)
;;     230587BE (in att_read_mult_req)
;;     23058856 (in att_read_rsp)
;;     230589BC (in att_read_type_req)
;;     23058AC8 (in att_find_type_req)
;;     23058B78 (in att_find_info_req)
;;     23058C30 (in att_write_rsp.constprop.10)
;;     23058D78 (in bt_att_send)
;;     23058DE2 (in bt_att_req_send)
net_buf_unref proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	s2,0004200F
	lui	s3,0004200F
	c.swsp	s0,0000000C
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s5,00000080
	c.mv	s0,a0
	addi	s2,s2,-00000134
	c.li	s4,0000001C
	addi	s3,s3,-000000C4

l230491E4:
	c.bnez	s0,00000000230491F8

l230491E6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l230491F8:
	lbu	a5,s0,+00000004
	lw	s5,s0,+00000000
	c.addi	a5,FFFFFFFF
	andi	a5,a5,+000000FF
	sb	a5,s0,+00000004
	c.bnez	a5,00000000230491E6

l2304920C:
	c.lw	s0,16(a1)
	c.beqz	a1,0000000023049230

l23049210:
	lbu	a5,s0,+00000005
	c.andi	a5,00000002
	c.bnez	a5,000000002304922C

l23049218:
	lbu	a5,s0,+00000006
	c.mv	a0,s0
	add	a5,a5,s4
	c.add	a5,s2
	c.lw	a5,20(a5)
	c.lw	a5,0(a5)
	c.lw	a5,8(a5)
	c.jalr	a5

l2304922C:
	sw	zero,s0,+00000010

l23049230:
	lbu	s1,s0,+00000006
	sw	zero,s0,+00000008
	sw	zero,s0,+00000000
	add	s1,s1,s4
	c.add	s1,s2
	c.lw	s1,16(a5)
	c.beqz	a5,0000000023049264

l23049246:
	c.mv	a0,s0
	c.jalr	a5

l2304924A:
	c.mv	s0,s5
	bne	s1,s3,00000000230491E4

l23049250:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,0000000023049F0A

l23049264:
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,0000000023048ABE
	c.j	000000002304924A

;; net_buf_ref: 2304926E
;;   Called from:
;;     2303CD46 (in bt_mesh_adv_update)
;;     2303CD76 (in bt_mesh_adv_send)
;;     23042C84 (in bt_mesh_net_send)
;;     2304683A (in bt_mesh_trans_send)
;;     2304E7F0 (in bt_hci_cmd_send_sync)
;;     2304FE36 (in hci_tx_thread)
;;     23051626 (in l2cap_chan_le_send)
;;     230519EA (in bt_l2cap_recv)
;;     23057CEC (in att_send_req)
net_buf_ref proc
	lbu	a5,a0,+00000004
	c.addi	a5,00000001
	sb	a5,a0,+00000004
	c.jr	ra

;; net_buf_frag_insert: 2304927A
;;   Called from:
;;     230492A4 (in net_buf_frag_add)
net_buf_frag_insert proc
	c.lw	a0,0(a4)
	c.mv	a5,a1
	c.bnez	a4,0000000023049286

l23049280:
	c.sw	a0,0(a1)
	c.jr	ra

l23049284:
	c.mv	a5,a3

l23049286:
	c.lw	a5,0(a3)
	c.bnez	a3,0000000023049284

l2304928A:
	c.sw	a5,0(a4)
	c.j	0000000023049280

;; net_buf_frag_add: 2304928E
;;   Called from:
;;     2304955C (in net_buf_append_bytes)
net_buf_frag_add proc
	c.bnez	a0,00000000230492B2

l23049290:
	lbu	a5,a1,+00000004
	c.mv	a0,a1
	c.addi	a5,00000001
	sb	a5,a1,+00000004
	c.jr	ra

l2304929E:
	c.mv	a0,a4

l230492A0:
	c.lw	a0,0(a4)
	c.bnez	a4,000000002304929E

l230492A4:
	jal	ra,000000002304927A
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230492B2:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.j	00000000230492A0

;; net_buf_frag_del: 230492BC
;;   Called from:
;;     230517DE (in l2cap_chan_le_send_sdu)
net_buf_frag_del proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.beqz	a0,00000000230492C8

l230492C4:
	c.lw	a1,0(a5)
	c.sw	a0,0(a5)

l230492C8:
	c.lw	a1,0(s0)
	c.mv	a0,a1
	sw	zero,a1,+00000000
	jal	ra,00000000230491C0
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; net_buf_simple_add: 230492DE
;;   Called from:
;;     2303DEBE (in hb_pub_send_status)
;;     2303DFBA (in send_mod_sub_status)
;;     2303DFF2 (in send_mod_sub_status)
;;     2303E790 (in create_mod_app_status.isra.5)
;;     2303E7AA (in create_mod_app_status.isra.5)
;;     2303E806 (in send_mod_pub_status.isra.7)
;;     2303E81A (in send_mod_pub_status.isra.7)
;;     2303E89C (in send_mod_pub_status.isra.7)
;;     230410CA (in bt_mesh_net_encrypt)
;;     23041208 (in bt_mesh_app_encrypt)
;;     2304129E (in bt_mesh_app_decrypt)
;;     230417AA (in health_get_registered)
;;     23041804 (in health_get_registered)
;;     2304199E (in health_pub_update)
;;     230419A8 (in health_pub_update)
;;     23041A20 (in health_pub_update)
;;     23041F12 (in net_decrypt.isra.1)
;;     23043904 (in prov_confirm)
;;     23044514 (in send_pub_key)
;;     23044524 (in send_pub_key)
;;     23047976 (in enqueue_sub_cfm)
;;     23047A78 (in enqueue_update)
;;     23048416 (in bt_mesh_friend_req)
;;     2304A5C2 (in bt_conn_le_start_encryption)
;;     2304B0D2 (in bt_conn_disconnect)
;;     2304B260 (in bt_conn_le_conn_update)
;;     2304BA3C (in gatt_notify)
;;     2304BA52 (in gatt_notify)
;;     2304BBB2 (in gatt_indicate)
;;     2304BBCA (in gatt_indicate)
;;     2304BDEA (in gatt_write_ccc.constprop.21)
;;     2304CBE8 (in bt_gatt_exchange_mtu)
;;     2304D246 (in gatt_read_type_rsp)
;;     2304D610 (in bt_gatt_read)
;;     2304D6CA (in bt_gatt_read)
;;     2304D6FE (in bt_gatt_read)
;;     2304D882 (in bt_gatt_write_without_response_cb)
;;     2304D8A0 (in bt_gatt_write_without_response_cb)
;;     2304D95A (in bt_gatt_write)
;;     2304D97E (in bt_gatt_write)
;;     2304D9BE (in bt_gatt_write)
;;     2304D9EC (in bt_gatt_write)
;;     2304DA60 (in gatt_prepare_write_rsp)
;;     2304E768 (in bt_hci_cmd_create)
;;     2304E8BA (in set_le_scan_enable)
;;     2304E9F8 (in hci_id_add)
;;     2304EBDE (in set_ad)
;;     2304F124 (in bt_id_del)
;;     2304F32C (in bt_le_set_data_len)
;;     2304F680 (in le_adv_report)
;;     2304F81E (in le_ltk_request)
;;     2304F856 (in le_ltk_request)
;;     2304F8A8 (in le_conn_param_neg_reply)
;;     2304F988 (in le_conn_param_req)
;;     2304FC30 (in enh_conn_complete)
;;     230506DA (in init_work)
;;     230507A0 (in init_work)
;;     23050808 (in init_work)
;;     23050F5A (in bt_dh_key_gen)
;;     23051210 (in l2cap_create_le_sig_pdu.isra.7)
;;     23051406 (in l2cap_chan_send_credits.isra.10)
;;     23051478 (in l2cap_le_conn_req)
;;     23051576 (in l2cap_send_reject)
;;     23051A38 (in bt_l2cap_update_conn_param)
;;     23051ABC (in bt_l2cap_chan_disconnect)
;;     230531A0 (in smp_create_pdu.isra.7)
;;     230531F0 (in sc_smp_send_dhkey_check)
;;     2305351A (in smp_send_pairing_random)
;;     23053564 (in sc_send_public_key)
;;     230535C0 (in send_pairing_rsp)
;;     23053690 (in bt_smp_distribute_keys)
;;     230536DA (in bt_smp_distribute_keys)
;;     23053740 (in bt_smp_distribute_keys)
;;     230539D6 (in smp_send_pairing_req)
;;     23053E16 (in smp_error)
;;     23054126 (in smp_send_pairing_confirm)
;;     23054266 (in legacy_send_pairing_confirm)
;;     23054F8A (in bt_smp_sign)
;;     23055364 (in bt_smp_start_security)
;;     23057840 (in read_group_cb)
;;     2305789C (in read_group_cb)
;;     23057912 (in read_type_cb)
;;     2305797C (in read_type_cb)
;;     23057AA6 (in find_type_cb)
;;     23057AF0 (in find_info_cb)
;;     23057B2C (in find_info_cb)
;;     23057B70 (in find_info_cb)
;;     230582F6 (in read_cb)
;;     2305836E (in read_cb)
;;     230583E8 (in bt_att_create_pdu)
;;     2305847A (in att_mtu_req)
;;     230584EA (in send_err_rsp.part.7)
;;     230586B8 (in att_read_group_req)
;;     23058990 (in att_read_type_req)
net_buf_simple_add proc
	lhu	a5,a0,+00000004
	c.lw	a0,0(a4)
	c.add	a1,a5
	sh	a1,a0,+00000004
	add	a0,a4,a5
	c.jr	ra

;; net_buf_simple_add_mem: 230492F0
;;   Called from:
;;     2303A6A2 (in vendor_data_set)
;;     2303A874 (in blemesh_seg_send)
;;     2303A988 (in blemesh_net_send)
;;     2303C80A (in bt_mesh_model_publish)
;;     2303C940 (in mod_publish)
;;     2303CEA6 (in bt_mesh_beacon_create)
;;     2303CECC (in bt_mesh_beacon_create)
;;     2303D05E (in beacon_send)
;;     2303D0A2 (in beacon_send)
;;     2303D10A (in beacon_send)
;;     2303D86E (in comp_data_status)
;;     2303E9A0 (in mod_app_get)
;;     23043224 (in bt_mesh_net_recv)
;;     2304361A (in prov_send)
;;     230436BE (in prov_send)
;;     23043760 (in bearer_ctl_send)
;;     23043B3C (in prov_random)
;;     230451B6 (in proxy_recv)
;;     230451F2 (in proxy_recv)
;;     230456B6 (in bt_mesh_proxy_relay)
;;     230467F4 (in bt_mesh_trans_send)
;;     230468CC (in bt_mesh_trans_send)
;;     230469E6 (in bt_mesh_ctl_send)
;;     230475DC (in create_friend_pdu)
;;     230475FE (in create_friend_pdu)
;;     23049542 (in net_buf_append_bytes)
;;     2304A7EC (in bt_conn_recv)
;;     2304B558 (in create_frag.isra.11)
;;     2304D656 (in bt_gatt_read)
;;     2304E970 (in set_random_address)
;;     2304EFD8 (in bt_id_add)
;;     2304F426 (in start_le_scan)
;;     23050A60 (in bt_le_adv_start_internal)
;;     23050D4E (in bt_set_tx_pwr)
;;     2305158E (in l2cap_send_reject)
;;     230516AE (in l2cap_chan_le_send)
net_buf_simple_add_mem proc
	lhu	a5,a0,+00000004
	c.lw	a0,0(a4)
	add	a3,a5,a2
	sh	a3,a0,+00000004
	add	a0,a4,a5
	jal	zero,00000000230A382C

;; net_buf_simple_add_u8: 23049306
;;   Called from:
;;     2303BFAE (in send_onoff_status)
;;     2303C6BE (in bt_mesh_model_msg_init)
;;     2303C6EC (in bt_mesh_model_msg_init)
;;     2303CE84 (in bt_mesh_beacon_create)
;;     2303CE9A (in bt_mesh_beacon_create)
;;     2303D054 (in beacon_send)
;;     2303DB00 (in key_idx_pack)
;;     2303DB34 (in send_krp_status)
;;     2303DB48 (in send_krp_status)
;;     2303DBA2 (in send_friend_status)
;;     2303DC80 (in send_net_key_status)
;;     2303DD68 (in node_identity_get)
;;     2303DD78 (in node_identity_get)
;;     2303DD9E (in node_identity_get)
;;     2303DE0A (in app_key_get)
;;     2303DEB2 (in hb_pub_send_status)
;;     2303DF2C (in hb_pub_send_status)
;;     2303DF36 (in hb_pub_send_status)
;;     2303DF40 (in hb_pub_send_status)
;;     2303DF98 (in send_mod_sub_status)
;;     2303E156 (in lpn_timeout_get)
;;     2303E164 (in lpn_timeout_get)
;;     2303E172 (in lpn_timeout_get)
;;     2303E2D4 (in mod_sub_get)
;;     2303E2EE (in mod_sub_get)
;;     2303E3B8 (in mod_sub_get_vnd)
;;     2303E3DA (in mod_sub_get_vnd)
;;     2303E770 (in create_mod_app_status.isra.5)
;;     2303E7EE (in send_mod_pub_status.isra.7)
;;     2303E87A (in send_mod_pub_status.isra.7)
;;     2303E886 (in send_mod_pub_status.isra.7)
;;     2303E892 (in send_mod_pub_status.isra.7)
;;     2303E986 (in mod_app_get)
;;     2303F2BE (in dev_comp_data_get)
;;     2303F37A (in dev_comp_data_get)
;;     2303F384 (in dev_comp_data_get)
;;     2303F51C (in app_key_update)
;;     2303F59E (in app_key_add)
;;     2303F834 (in hb_sub_send_status.constprop.14)
;;     2303F870 (in hb_sub_send_status.constprop.14)
;;     2303F898 (in hb_sub_send_status.constprop.14)
;;     2303F8A2 (in hb_sub_send_status.constprop.14)
;;     2303F8AC (in hb_sub_send_status.constprop.14)
;;     2303FADA (in app_key_del)
;;     2303FCA4 (in net_transmit_set)
;;     2303FD08 (in net_transmit_get)
;;     2303FDA6 (in relay_set)
;;     2303FDB2 (in relay_set)
;;     2303FE56 (in relay_get)
;;     2303FE62 (in relay_get)
;;     2303FEDA (in beacon_set)
;;     2303FF64 (in beacon_get)
;;     23040028 (in node_identity_set)
;;     23040038 (in node_identity_set)
;;     2304005E (in node_identity_set)
;;     230400B8 (in send_gatt_proxy_status)
;;     230401FC (in default_ttl_set)
;;     23040284 (in default_ttl_get)
;;     2304161C (in send_attention_status)
;;     230416BE (in send_health_period_status)
;;     2304340E (in prov_buf_init)
;;     230435B0 (in prov_send)
;;     230435DC (in prov_send)
;;     230435F8 (in prov_send)
;;     230436A2 (in prov_send)
;;     230436B0 (in prov_send)
;;     23043744 (in bearer_ctl_send)
;;     23043756 (in bearer_ctl_send)
;;     230437A6 (in prov_send_fail_msg)
;;     23043984 (in prov_invite)
;;     23043998 (in prov_invite)
;;     230439AA (in prov_invite)
;;     230439B6 (in prov_invite)
;;     230439CE (in prov_invite)
;;     23043A84 (in gen_prov_ack_send)
;;     23043A8C (in gen_prov_ack_send)
;;     23044F3E (in send_filter_status)
;;     23044F52 (in send_filter_status)
;;     2304679A (in bt_mesh_trans_send)
;;     230467AE (in bt_mesh_trans_send)
;;     230467C0 (in bt_mesh_trans_send)
;;     230467D6 (in bt_mesh_trans_send)
;;     230468C0 (in bt_mesh_trans_send)
;;     230469DC (in bt_mesh_ctl_send)
;;     230475BA (in create_friend_pdu)
;;     230475D0 (in create_friend_pdu)
;;     2304EA74 (in addr_res_enable)
;;     2304EABE (in set_advertise_enable)
net_buf_simple_add_u8 proc
	lhu	a4,a0,+00000004
	c.lw	a0,0(a5)
	c.add	a5,a4
	c.addi	a4,00000001
	sh	a4,a0,+00000004
	sb	a1,a5,+00000000
	c.mv	a0,a5
	c.jr	ra

;; net_buf_simple_add_le16: 2304931C
;;   Called from:
;;     2303C6FC (in bt_mesh_model_msg_init)
;;     2303DAEC (in key_idx_pack)
;;     2303DB3E (in send_krp_status)
;;     2303DC4A (in net_key_get)
;;     2303DC8A (in send_net_key_status)
;;     2303DD70 (in node_identity_get)
;;     2303DE12 (in app_key_get)
;;     2303DE7A (in app_key_get)
;;     2303DEFA (in hb_pub_send_status)
;;     2303DF4A (in hb_pub_send_status)
;;     2303DF54 (in hb_pub_send_status)
;;     2303DFA2 (in send_mod_sub_status)
;;     2303DFAC (in send_mod_sub_status)
;;     2303E12C (in lpn_timeout_get)
;;     2303E2DC (in mod_sub_get)
;;     2303E2E4 (in mod_sub_get)
;;     2303E2F6 (in mod_sub_get)
;;     2303E2FE (in mod_sub_get)
;;     2303E30A (in mod_sub_get)
;;     2303E3C0 (in mod_sub_get_vnd)
;;     2303E3C8 (in mod_sub_get_vnd)
;;     2303E3D0 (in mod_sub_get_vnd)
;;     2303E3E2 (in mod_sub_get_vnd)
;;     2303E3EA (in mod_sub_get_vnd)
;;     2303E3F2 (in mod_sub_get_vnd)
;;     2303E3FE (in mod_sub_get_vnd)
;;     2303E77A (in create_mod_app_status.isra.5)
;;     2303E784 (in create_mod_app_status.isra.5)
;;     2303E7F8 (in send_mod_pub_status.isra.7)
;;     2303E858 (in send_mod_pub_status.isra.7)
;;     2303E86E (in send_mod_pub_status.isra.7)
;;     2303E98E (in mod_app_get)
;;     2303E9B4 (in mod_app_get)
;;     2303E9C6 (in mod_app_get)
;;     2303F2CE (in dev_comp_data_get)
;;     2303F2DA (in dev_comp_data_get)
;;     2303F2E6 (in dev_comp_data_get)
;;     2303F2EE (in dev_comp_data_get)
;;     2303F2F6 (in dev_comp_data_get)
;;     2303F370 (in dev_comp_data_get)
;;     2303F3AE (in dev_comp_data_get)
;;     2303F3C6 (in dev_comp_data_get)
;;     2303F3D0 (in dev_comp_data_get)
;;     2303F83E (in hb_sub_send_status.constprop.14)
;;     2303F848 (in hb_sub_send_status.constprop.14)
;;     23040030 (in node_identity_set)
;;     23040066 (in node_identity_set)
;;     230417B4 (in health_get_registered)
;;     2304BDFC (in gatt_write_ccc.constprop.21)
;;     2304D63E (in bt_gatt_read)
;;     2304D6AE (in bt_gatt_read)
;;     23051676 (in l2cap_chan_le_send)
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

;; net_buf_simple_add_be16: 23049336
;;   Called from:
;;     2303C6E0 (in bt_mesh_model_msg_init)
;;     2303D094 (in beacon_send)
;;     230435E6 (in prov_send)
;;     2304398C (in prov_invite)
;;     230439C2 (in prov_invite)
;;     230439DA (in prov_invite)
;;     23044F60 (in send_filter_status)
;;     230475E6 (in create_friend_pdu)
;;     230475F0 (in create_friend_pdu)
net_buf_simple_add_be16 proc
	lhu	a4,a0,+00000004
	c.lw	a0,0(a5)
	c.add	a5,a4
	c.addi	a4,00000002
	sh	a4,a0,+00000004
	srli	a4,a1,00000008
	sb	a4,a5,+00000000
	sb	a1,a5,+00000001
	c.jr	ra

;; net_buf_simple_add_be32: 23049352
;;   Called from:
;;     2303CEB4 (in bt_mesh_beacon_create)
;;     230435A8 (in prov_send)
;;     2304369A (in prov_send)
;;     2304373C (in bearer_ctl_send)
;;     23043A7C (in gen_prov_ack_send)
net_buf_simple_add_be32 proc
	lhu	a4,a0,+00000004
	c.lw	a0,0(a5)
	c.add	a5,a4
	c.addi	a4,00000004
	sh	a4,a0,+00000004
	srli	a4,a1,00000010
	srli	a3,a4,00000008
	sb	a4,a5,+00000001
	slli	a4,a1,00000010
	c.srli	a4,00000010
	c.srli	a4,00000008
	sb	a3,a5,+00000000
	sb	a4,a5,+00000002
	sb	a1,a5,+00000003
	c.jr	ra

;; net_buf_simple_push: 23049382
;;   Called from:
;;     23042AB6 (in bt_mesh_net_encode)
;;     2304A236 (in send_frag)
;;     2305137A (in bt_l2cap_send_cb)
;;     23058CE0 (in att_signed_write_cmd)
net_buf_simple_push proc
	c.lw	a0,0(a5)
	lhu	a4,a0,+00000004
	c.sub	a5,a1
	c.add	a1,a4
	c.sw	a0,0(a5)
	sh	a1,a0,+00000004
	c.mv	a0,a5
	c.jr	ra

;; net_buf_simple_push_le16: 23049396
;;   Called from:
;;     23051620 (in l2cap_chan_le_send)
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

;; net_buf_simple_push_be16: 230493B4
;;   Called from:
;;     23042AA4 (in bt_mesh_net_encode)
;;     23042AAE (in bt_mesh_net_encode)
net_buf_simple_push_be16 proc
	c.lw	a0,0(a5)
	addi	a4,a5,-00000002
	c.sw	a0,0(a4)
	lhu	a4,a0,+00000004
	c.addi	a4,00000002
	sh	a4,a0,+00000004
	srli	a4,a1,00000008
	sb	a4,a5,+00000FFE
	sb	a1,a5,+00000FFF
	c.jr	ra

;; net_buf_simple_push_u8: 230493D4
;;   Called from:
;;     23042AE8 (in bt_mesh_net_encode)
;;     23042B64 (in bt_mesh_net_encode)
;;     23044DDA (in proxy_segment_and_send)
;;     23044DFE (in proxy_segment_and_send)
;;     23044E2A (in proxy_segment_and_send)
;;     23044E50 (in proxy_segment_and_send)
;;     230478F0 (in encode_friend_ctl)
net_buf_simple_push_u8 proc
	c.lw	a0,0(a4)
	addi	a5,a4,-00000001
	c.sw	a0,0(a5)
	lhu	a5,a0,+00000004
	c.addi	a5,00000001
	sh	a5,a0,+00000004
	sb	a1,a4,+00000FFF
	c.jr	ra

;; net_buf_simple_pull: 230493EC
;;   Called from:
;;     2303CC86 (in bt_mesh_scan_cb)
;;     2303D710 (in key_idx_unpack)
;;     2303E5F6 (in key_idx_unpack)
;;     23043622 (in prov_send)
;;     230436C6 (in prov_send)
;;     23044E10 (in proxy_segment_and_send)
;;     23044E62 (in proxy_segment_and_send)
;;     2304502C (in proxy_complete_pdu)
;;     230467FE (in bt_mesh_trans_send)
;;     23046BF0 (in bt_mesh_trans_recv)
;;     23046CB4 (in bt_mesh_trans_recv)
;;     23049422 (in net_buf_simple_pull_u8)
;;     23049446 (in net_buf_simple_pull_le16)
;;     2304946A (in net_buf_simple_pull_be16)
;;     230494A8 (in net_buf_simple_pull_be32)
;;     2304A074 (in bl_onchiphci_send_2_controller)
;;     2304A0E6 (in bl_onchiphci_send_2_controller)
;;     2304B562 (in create_frag.isra.11)
;;     2304F1F0 (in bt_data_parse)
;;     2304F720 (in le_adv_report)
;;     230516B8 (in l2cap_chan_le_send)
;;     23058CF2 (in att_signed_write_cmd)
;;     23058CFA (in att_signed_write_cmd)
net_buf_simple_pull proc
	lhu	a5,a0,+00000004
	c.sub	a5,a1
	sh	a5,a0,+00000004
	c.lw	a0,0(a5)
	c.add	a1,a5
	c.sw	a0,0(a1)
	c.mv	a0,a1
	c.jr	ra

;; net_buf_simple_pull_mem: 23049400
;;   Called from:
;;     2303D1FC (in bt_mesh_beacon_recv)
;;     2303EF42 (in mod_sub_va_del)
;;     2303F0BA (in mod_pub_va_set)
;;     2303F1DE (in mod_sub_va_add)
;;     23040454 (in mod_sub_va_overwrite)
;;     2304E4A0 (in hci_le_meta_event)
;;     2304E5E6 (in hci_cmd_status)
;;     2304E630 (in hci_cmd_complete)
;;     2304F584 (in le_adv_report)
;;     2304FED4 (in bt_recv)
;;     2304FF70 (in bt_recv)
;;     2304FFEA (in bt_recv_prio)
;;     230519A8 (in bt_l2cap_recv)
;;     23051D88 (in l2cap_recv)
;;     23053F42 (in bt_smp_recv)
;;     2305856A (in bt_att_recv)
;;     2305863E (in att_read_group_req)
;;     2305890A (in att_read_type_req)
;;     230589FA (in att_find_type_req)
net_buf_simple_pull_mem proc
	c.mv	a5,a0
	lhu	a4,a5,+00000004
	c.lw	a0,0(a0)
	c.sub	a4,a1
	c.add	a1,a0
	sh	a4,a5,+00000004
	c.sw	a5,0(a1)
	c.jr	ra

;; net_buf_simple_pull_u8: 23049414
;;   Called from:
;;     2303BF04 (in gen_onoff_set.isra.0)
;;     2303BF2C (in gen_onoff_set.isra.0)
;;     2303C520 (in bt_mesh_model_recv)
;;     2303C598 (in bt_mesh_model_recv)
;;     2303CC02 (in bt_mesh_scan_cb)
;;     2303CC4E (in bt_mesh_scan_cb)
;;     2303D19E (in bt_mesh_beacon_recv)
;;     2303D1F2 (in bt_mesh_beacon_recv)
;;     2303D3EA (in hb_pub_status)
;;     2303D40A (in hb_pub_status)
;;     2303D418 (in hb_pub_status)
;;     2303D426 (in hb_pub_status)
;;     2303D430 (in hb_pub_status)
;;     2303D43C (in hb_pub_status)
;;     2303D4A2 (in hb_sub_status)
;;     2303D4CC (in hb_sub_status)
;;     2303D4DA (in hb_sub_status)
;;     2303D4E8 (in hb_sub_status)
;;     2303D4F4 (in hb_sub_status)
;;     2303D5C4 (in mod_pub_status)
;;     2303D63C (in mod_pub_status)
;;     2303D64A (in mod_pub_status)
;;     2303D656 (in mod_pub_status)
;;     2303D6BA (in relay_status)
;;     2303D6C8 (in relay_status)
;;     2303D74E (in app_key_status)
;;     2303D7D2 (in net_key_status)
;;     2303D846 (in comp_data_status)
;;     2303D8BC (in mod_sub_status)
;;     2303D994 (in mod_app_status)
;;     2303DA58 (in state_status_u8.isra.2)
;;     2303E018 (in krp_set)
;;     2303EC34 (in mod_pub_set)
;;     2303EC5C (in mod_pub_set)
;;     2303EC64 (in mod_pub_set)
;;     2303F0CA (in mod_pub_va_set)
;;     2303F0F2 (in mod_pub_va_set)
;;     2303F0FA (in mod_pub_va_set)
;;     2303F29E (in dev_comp_data_get)
;;     2303F922 (in heartbeat_sub_set)
;;     2303FFF6 (in node_identity_set)
;;     2304145A (in health_period_status)
;;     23041482 (in health_current_status)
;;     230414F8 (in health_fault_status)
;;     230415B0 (in health_attention_status)
;;     23041656 (in health_period_set_unrel)
;;     2304171C (in health_fault_test_unrel)
;;     2304184C (in health_fault_test)
;;     23041B64 (in attention_set_unrel)
;;     230443E8 (in gen_prov_start)
;;     230447A8 (in bt_mesh_pb_gatt_recv)
;;     23044946 (in bt_mesh_pb_adv_recv)
;;     23044950 (in bt_mesh_pb_adv_recv)
;;     23045046 (in proxy_complete_pdu)
;;     230450BA (in proxy_complete_pdu)
;;     230461D8 (in ctl_recv)
;;     23046CD4 (in bt_mesh_trans_recv)
;;     230471DA (in bt_mesh_trans_recv)
;;     23047EE2 (in bt_mesh_friend_sub_add)
;;     23047FC2 (in bt_mesh_friend_sub_rem)
;;     2304F19E (in bt_data_parse)
;;     2304F1D2 (in bt_data_parse)
;;     2304F53A (in le_adv_report)
net_buf_simple_pull_u8 proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,0(a5)
	c.li	a1,00000001
	lbu	s0,a5,+00000000
	jal	ra,00000000230493EC
	c.lwsp	a2,00000020
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; net_buf_simple_pull_le16: 23049430
;;   Called from:
;;     2303C5A0 (in bt_mesh_model_recv)
;;     2303D3FC (in hb_pub_status)
;;     2303D4B0 (in hb_sub_status)
;;     2303D4BE (in hb_sub_status)
;;     2303D5CC (in mod_pub_status)
;;     2303D604 (in mod_pub_status)
;;     2303D612 (in mod_pub_status)
;;     2303D8C4 (in mod_sub_status)
;;     2303D8CC (in mod_sub_status)
;;     2303D8DE (in mod_sub_status)
;;     2303D8E6 (in mod_sub_status)
;;     2303D99C (in mod_app_status)
;;     2303D9A4 (in mod_app_status)
;;     2303D9B6 (in mod_app_status)
;;     2303D9BE (in mod_app_status)
;;     2303DCC0 (in krp_get)
;;     2303DD26 (in node_identity_get)
;;     2303DDC8 (in app_key_get)
;;     2303E00E (in krp_set)
;;     2303E0F4 (in lpn_timeout_get)
;;     2303E27A (in mod_sub_get)
;;     2303E2AA (in mod_sub_get)
;;     2303E354 (in mod_sub_get_vnd)
;;     2303E384 (in mod_sub_get_vnd)
;;     2303E38C (in mod_sub_get_vnd)
;;     2303E438 (in net_key_update)
;;     2303E508 (in net_key_add)
;;     2303E8C0 (in get_model)
;;     2303E8DA (in get_model)
;;     2303E8E2 (in get_model)
;;     2303E926 (in mod_app_get)
;;     2303EA24 (in mod_app_unbind)
;;     2303EA54 (in mod_app_unbind)
;;     2303EAEC (in mod_app_bind)
;;     2303EB1C (in mod_app_bind)
;;     2303EBEA (in mod_pub_set)
;;     2303EC24 (in mod_pub_set)
;;     2303EC2C (in mod_pub_set)
;;     2303ECE2 (in mod_pub_get)
;;     2303ED78 (in mod_sub_del)
;;     2303EDA6 (in mod_sub_del)
;;     2303EE3E (in mod_sub_add)
;;     2303EE6E (in mod_sub_add)
;;     2303EF0E (in mod_sub_va_del)
;;     2303F07E (in mod_pub_va_set)
;;     2303F0C2 (in mod_pub_va_set)
;;     2303F1AC (in mod_sub_va_add)
;;     2303F912 (in heartbeat_sub_set)
;;     2303F91A (in heartbeat_sub_set)
;;     2303FFC6 (in node_identity_set)
;;     2304038A (in mod_sub_del_all)
;;     23040422 (in mod_sub_va_overwrite)
;;     230404E2 (in mod_sub_overwrite)
;;     23040512 (in mod_sub_overwrite)
;;     2304063E (in net_key_del)
;;     2304148A (in health_current_status)
;;     23041522 (in health_fault_status)
;;     23041726 (in health_fault_test_unrel)
;;     2304175E (in health_fault_clear_unrel)
;;     23041856 (in health_fault_test)
;;     230418D8 (in health_fault_clear)
;;     2304193E (in health_fault_get)
;;     23051CFA (in l2cap_rx_process)
;;     23057766 (in att_notify)
;;     23058400 (in att_indicate)
;;     230587A0 (in att_read_mult_req)
;;     23058C6E (in att_write_req)
;;     23058C9A (in att_write_cmd)
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
	jal	ra,00000000230493EC
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; net_buf_simple_pull_be16: 23049454
;;   Called from:
;;     2303C57E (in bt_mesh_model_recv)
;;     230443D6 (in gen_prov_start)
;;     23045060 (in proxy_complete_pdu)
;;     23045086 (in proxy_complete_pdu)
;;     23046042 (in ctl_recv)
;;     230461E0 (in ctl_recv)
;;     23046CBA (in bt_mesh_trans_recv)
;;     23047F02 (in bt_mesh_friend_sub_add)
;;     23047FDE (in bt_mesh_friend_sub_rem)
net_buf_simple_pull_be16 proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,0(a5)
	c.li	a1,00000002
	lbu	s0,a5,+00000001
	lbu	a4,a5,+00000000
	c.slli	s0,08
	c.or	s0,a4
	jal	ra,00000000230493EC
	srli	a0,s0,00000008
	c.slli	s0,08
	c.or	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.slli	a0,10
	c.srli	a0,00000010
	c.addi	sp,00000010
	c.jr	ra

;; net_buf_simple_pull_be32: 23049482
;;   Called from:
;;     2303D204 (in bt_mesh_beacon_recv)
;;     2304493E (in bt_mesh_pb_adv_recv)
;;     23046088 (in ctl_recv)
net_buf_simple_pull_be32 proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.lw	a0,0(a4)
	c.li	a1,00000004
	lbu	a5,a4,+00000001
	lbu	s0,a4,+00000000
	c.slli	a5,08
	c.or	a5,s0
	lbu	s0,a4,+00000002
	c.slli	s0,10
	c.or	a5,s0
	lbu	s0,a4,+00000003
	c.slli	s0,18
	c.or	s0,a5
	jal	ra,00000000230493EC
	slli	a5,s0,00000018
	srli	a0,s0,00000018
	c.lui	a4,00010000
	c.or	a0,a5
	addi	a4,a4,-00000100
	srli	a5,s0,00000008
	c.and	a5,a4
	c.or	a0,a5
	c.slli	s0,08
	lui	a5,00000FF0
	c.and	s0,a5
	c.or	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; net_buf_simple_headroom: 230494D6
;;   Called from:
;;     2303C65C (in bt_mesh_model_recv)
;;     2303CC40 (in bt_mesh_scan_cb)
;;     230430DC (in bt_mesh_net_recv)
;;     23046C52 (in bt_mesh_trans_recv)
;;     2304E3F6 (in hci_vendor_event)
;;     2304F5CA (in le_adv_report)
;;     230515FA (in l2cap_chan_le_send)
;;     23057CD6 (in att_send_req)
;;     23058174 (in att_pdu_sent)
net_buf_simple_headroom proc
	c.lw	a0,0(a4)
	c.lw	a0,8(a0)
	sub	a0,a4,a0
	c.jr	ra

;; net_buf_simple_tailroom: 230494E0
;;   Called from:
;;     2303C094 (in model_send)
;;     2303D0E8 (in beacon_send)
;;     2303D852 (in comp_data_status)
;;     2303D862 (in comp_data_status)
;;     2303F324 (in dev_comp_data_get)
;;     230417C4 (in health_get_registered)
;;     230419C0 (in health_pub_update)
;;     23042A5A (in bt_mesh_net_encode)
;;     23042A88 (in bt_mesh_net_encode)
;;     2304516E (in proxy_recv)
;;     23046406 (in bt_mesh_trans_send)
;;     2304645E (in bt_mesh_trans_send)
;;     23049526 (in net_buf_append_bytes)
;;     2304A7D0 (in bt_conn_recv)
;;     2304B544 (in create_frag.isra.11)
;;     2304B56A (in create_frag.isra.11)
;;     2305167C (in l2cap_chan_le_send)
;;     2305168E (in l2cap_chan_le_send)
net_buf_simple_tailroom proc
	lhu	a5,a0,+00000004
	lhu	a4,a0,+00000006
	c.sub	a4,a5
	c.lw	a0,0(a5)
	c.lw	a0,8(a0)
	sub	a0,a5,a0
	sub	a0,a4,a0
	c.jr	ra

;; net_buf_append_bytes: 230494F8
;;   Called from:
;;     23051B9E (in l2cap_chan_le_recv_seg)
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

l2304951C:
	c.lw	s0,0(a5)
	c.bnez	a5,0000000023049562

l23049520:
	c.li	s3,00000000

l23049522:
	c.addi	s0,00000008
	c.mv	a0,s0
	jal	ra,00000000230494E0
	slli	s1,a0,00000010
	bgeu	s2,a0,0000000023049536

l23049532:
	slli	s1,s2,00000010

l23049536:
	c.srli	s1,00000010
	c.mv	a1,s4
	c.mv	a2,s1
	c.mv	a0,s0
	sub	s2,s2,s1
	jal	ra,00000000230492F0
	c.add	s3,s1
	c.add	s4,s1
	beq	s2,zero,0000000023049566

l2304954E:
	c.mv	a1,s8
	c.mv	a0,s6
	c.jalr	s7
	c.mv	s0,a0
	c.beqz	a0,0000000023049566

l23049558:
	c.mv	a1,a0
	c.mv	a0,s5
	jal	ra,000000002304928E
	c.j	0000000023049522

l23049562:
	c.mv	s0,a5
	c.j	000000002304951C

l23049566:
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

;; bt_hex_real: 23049580
;;   Called from:
;;     2303A67A (in vendor_data_set)
;;     23041E96 (in auth_match)
;;     23041EA0 (in auth_match)
;;     23042DEE (in bt_mesh_net_decode)
;;     2304E44C (in handle_event)
bt_hex_real proc
	addi	a5,zero,+0000003F
	bgeu	a5,a1,000000002304958C

l23049588:
	addi	a1,zero,+0000003F

l2304958C:
	lui	a5,00042015
	lui	a2,000230BB
	addi	a3,a5,+00000364
	add	a7,a0,a1
	addi	a6,a5,+00000364
	addi	a2,a2,-000005B4

l230495A4:
	bne	a0,a7,00000000230495B6

l230495A8:
	c.slli	a1,01
	c.add	a1,a6
	sb	zero,a1,+00000000
	addi	a0,a5,+00000364
	c.jr	ra

l230495B6:
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
	c.j	00000000230495A4

;; bt_addr_le_str_real: 230495DC
;;   Called from:
;;     23052D16 (in smp_ident_info)
;;     23052D84 (in smp_encrypt_info)
;;     23053608 (in bt_smp_distribute_keys)
;;     230537B8 (in smp_signing_info)
;;     23053852 (in smp_master_ident)
;;     230545BE (in smp_ident_addr_info)
;;     230545D4 (in smp_ident_addr_info)
;;     2305461A (in smp_ident_addr_info)
;;     23054EA6 (in bt_smp_sign_verify)
;;     23054EF6 (in bt_smp_sign_verify)
;;     23054F22 (in bt_smp_sign_verify)
;;     23054F62 (in bt_smp_sign)
;;     23054FBC (in bt_smp_sign)
;;     230553DA (in bt_smp_update_keys)
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
	beq	a3,a5,0000000023049664

l230495F4:
	c.beqz	a3,0000000023049614

l230495F6:
	c.li	a5,00000002
	beq	a3,a5,000000002304966E

l230495FC:
	c.li	a5,00000003
	beq	a3,a5,0000000023049678

l23049602:
	lui	a2,000230BB
	addi	a2,a2,-000005E0
	c.li	a1,0000000A
	c.mv	a0,s1
	jal	ra,00000000230823DA
	c.j	0000000023049622

l23049614:
	lui	a1,000230BB
	addi	a1,a1,-00000608

l2304961C:
	c.mv	a0,s1
	jal	ra,00000000230A4170

l23049622:
	lbu	a5,s0,+00000001
	lbu	a7,s0,+00000002
	lbu	a6,s0,+00000003
	c.swsp	a5,00000000
	lbu	a4,s0,+00000005
	lbu	a5,s0,+00000004
	lbu	a3,s0,+00000006
	lui	s2,00042015
	lui	a2,000230BB
	c.swsp	s1,00000080
	addi	a0,s2,+000003E4
	addi	a2,a2,-000005D8
	c.li	a1,0000001E
	jal	ra,00000000230823DA
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	addi	a0,s2,+000003E4
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.addi16sp	00000030
	c.jr	ra

l23049664:
	lui	a1,000230BB
	addi	a1,a1,-00000600
	c.j	000000002304961C

l2304966E:
	lui	a1,000230BB
	addi	a1,a1,-000005F8
	c.j	000000002304961C

l23049678:
	lui	a1,000230BB
	addi	a1,a1,-000005EC
	c.j	000000002304961C

;; k_work_submit_to_queue: 23049682
;;   Called from:
;;     2304977C (in k_work_submit)
;;     23049944 (in k_delayed_work_submit)
;;     2304999C (in work_timeout)
k_work_submit_to_queue proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a1
	c.swsp	s1,00000080
	c.li	a1,00000001
	c.mv	s1,a0
	addi	a0,s0,+00000008
	c.swsp	ra,00000084
	jal	ra,0000000023048EBA
	c.andi	a0,00000001
	c.bnez	a0,00000000230496AC

l2304969C:
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023048A8A

l230496AC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; work_queue_main: 230496B6
work_queue_main proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	lui	s1,00042026

l230496C2:
	c.li	a1,FFFFFFFF
	addi	a0,s1,+000005A8
	jal	ra,0000000023048AE6
	c.mv	s0,a0
	c.li	a1,FFFFFFFE
	c.addi	a0,00000008
	jal	ra,0000000023048EE2
	c.andi	a0,00000001
	c.beqz	a0,00000000230496E0

l230496DA:
	c.lw	s0,4(a5)
	c.mv	a0,s0
	c.jalr	a5

l230496E0:
	jal	ra,0000000023048C3C
	c.j	00000000230496C2

;; k_work_q_start: 230496E6
;;   Called from:
;;     2305027A (in bt_enable)
k_work_q_start proc
	c.addi	sp,FFFFFFF0
	lui	a5,00042015
	c.swsp	ra,00000084
	addi	a5,a5,+00000404
	lui	a0,00042026
	c.li	a1,00000014
	addi	a0,a0,+000005A8
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
	jal	ra,0000000023048A3E
	c.lwsp	a2,00000020
	lui	a3,00023049
	c.lui	a2,00001000
	lui	a1,000230BB
	lui	a0,00042026
	c.li	a4,0000001E
	addi	a3,a3,+000006B6
	addi	a2,a2,-00000800
	addi	a1,a1,-000005A0
	addi	a0,a0,+000005B4
	c.addi	sp,00000010
	jal	zero,0000000023048BE6

;; k_work_init: 23049750
;;   Called from:
;;     230433CE (in bt_mesh_net_init)
;;     23049788 (in k_delayed_work_init)
;;     2304AA72 (in bt_conn_add_le)
;;     23050276 (in bt_enable)
;;     230518B0 (in l2cap_chan_add)
k_work_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.mv	s0,a0
	c.mv	s1,a1
	c.addi	a0,00000008
	c.li	a1,FFFFFFFE
	c.swsp	ra,00000084
	jal	ra,0000000023048EE2
	c.lwsp	a2,00000020
	c.sw	s0,4(s1)
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; k_work_submit: 23049772
;;   Called from:
;;     2303D14E (in bt_mesh_beacon_ivu_initiator)
;;     2303D384 (in bt_mesh_beacon_enable)
;;     2303F776 (in heartbeat_pub_set)
;;     23042CAE (in bt_mesh_net_send)
;;     23044B74 (in proxy_ccc_write)
;;     2304E1D0 (in hci_num_completed_packets)
;;     23050324 (in bt_enable)
;;     23051A06 (in bt_l2cap_recv)
k_work_submit proc
	c.mv	a1,a0
	lui	a0,00042026
	addi	a0,a0,+000005A8
	jal	zero,0000000023049682

;; k_delayed_work_init: 23049780
;;   Called from:
;;     2303BEA0 (in bt_mesh_lpn_init)
;;     2303C134 (in mod_init)
;;     2303D12A (in bt_mesh_beacon_init)
;;     2303FB60 (in bt_mesh_cfg_srv_init)
;;     23041AB8 (in bt_mesh_health_srv_init)
;;     230433B8 (in bt_mesh_net_init)
;;     230449FA (in bt_mesh_prov_init)
;;     23044A12 (in bt_mesh_prov_init)
;;     23045A3C (in bt_mesh_proxy_init)
;;     23045A54 (in bt_mesh_proxy_init)
;;     230472C6 (in bt_mesh_trans_init)
;;     230472DA (in bt_mesh_trans_init)
;;     230472EE (in bt_mesh_trans_init)
;;     23047306 (in bt_mesh_trans_init)
;;     230484DE (in bt_mesh_friend_init)
;;     230484F2 (in bt_mesh_friend_init)
;;     23048516 (in bt_mesh_friend_init)
;;     23048526 (in bt_mesh_friend_init)
;;     2304AA60 (in bt_conn_add_le)
;;     2304C366 (in bt_gatt_init)
;;     2305186C (in l2cap_chan_add)
;;     23052F10 (in bt_smp_connected)
;;     23057BDE (in bt_att_connected)
k_delayed_work_init proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	jal	ra,0000000023049750
	lui	a1,0002304A
	c.mv	a2,s0
	addi	a0,s0,+00000010
	addi	a1,a1,-00000686
	jal	ra,0000000023048C68
	c.lwsp	a2,00000020
	sw	zero,s0,+0000000C
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; k_delayed_work_remaining_get: 230497AA
;;   Called from:
;;     2303E144 (in lpn_timeout_get)
;;     230415FE (in send_attention_status)
;;     230470B4 (in bt_mesh_trans_recv)
k_delayed_work_remaining_get proc
	c.beqz	a0,00000000230497D2

l230497AC:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.lw	a0,28(s0)
	c.lw	a0,32(s1)
	jal	ra,0000000023048D0E
	c.add	s0,s1
	sub	a0,s0,a0
	bge	a0,zero,00000000230497C8

l230497C6:
	c.li	a0,00000000

l230497C8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230497D2:
	c.li	a0,00000000
	c.jr	ra

;; k_delayed_work_del_timer: 230497D6
;;   Called from:
;;     2304A3E0 (in conn_cleanup)
;;     2304C386 (in bt_gatt_deinit)
;;     230512E8 (in bt_l2cap_chan_del)
;;     23052EC0 (in bt_smp_disconnected)
;;     23052ECC (in bt_smp_disconnected)
;;     2305801A (in bt_att_disconnected)
k_delayed_work_del_timer proc
	c.beqz	a0,00000000230497F6

l230497D8:
	c.lw	a0,16(a5)
	c.beqz	a5,00000000230497F6

l230497DC:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.addi	a0,00000010
	c.swsp	ra,00000084
	jal	ra,0000000023048CDE
	sw	zero,s0,+00000010
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l230497F6:
	c.jr	ra

;; add_timer_record: 230497F8
;;   Called from:
;;     23049900 (in k_delayed_work_submit)
add_timer_record proc
	lui	a5,00042015
	c.lw	a0,16(a2)
	addi	a3,a5,+00000404
	addi	a4,a5,+00000404
	addi	a1,a3,+00000028
	addi	a5,a5,+00000404

l2304980E:
	lw	a6,a4,+00000000
	beq	a6,a2,0000000023049830

l23049816:
	c.addi	a4,00000008
	bne	a4,a1,000000002304980E

l2304981C:
	c.li	a4,00000000
	c.li	a1,00000005

l23049820:
	lw	a6,a3,+00000000
	bne	a6,zero,0000000023049834

l23049828:
	c.slli	a4,03
	c.add	a5,a4
	c.sw	a5,0(a2)
	c.sw	a5,4(a0)

l23049830:
	c.li	a0,00000000
	c.jr	ra

l23049834:
	c.addi	a4,00000001
	c.addi	a3,00000008
	bne	a4,a1,0000000023049820

l2304983C:
	c.li	a0,FFFFFFFF
	c.jr	ra

;; remv_timer_record: 23049840
;;   Called from:
;;     2304989C (in k_delayed_work_cancel)
remv_timer_record proc
	c.lw	a0,16(a1)
	lui	a4,00042015
	addi	a3,a4,+00000404
	c.li	a5,00000000
	addi	a4,a4,+00000404
	c.li	a2,00000005

l23049852:
	c.lw	a3,0(a0)
	bne	a0,a1,0000000023049864

l23049858:
	c.slli	a5,03
	c.add	a5,a4
	sw	zero,a5,+00000000

l23049860:
	c.li	a0,00000000
	c.jr	ra

l23049864:
	c.addi	a5,00000001
	c.addi	a3,00000008
	bne	a5,a2,0000000023049852

l2304986C:
	c.j	0000000023049860

;; k_delayed_work_cancel: 2304986E
;;   Called from:
;;     2303B116 (in clear_friendship)
;;     2303B4CE (in friend_response_received.constprop.7)
;;     2303B8E4 (in bt_mesh_lpn_friend_offer)
;;     2303C7FC (in bt_mesh_model_publish)
;;     2303D16E (in bt_mesh_beacon_ivu_initiator)
;;     2303D3AA (in bt_mesh_beacon_disable)
;;     2303E68A (in _mod_pub_set.isra.1)
;;     2303F74E (in heartbeat_pub_set)
;;     230405C4 (in bt_mesh_subnet_del)
;;     23041B30 (in bt_mesh_attention)
;;     23041CD6 (in bt_mesh_reset)
;;     23043488 (in prov_clear_tx)
;;     230437EA (in reset_state)
;;     23044C98 (in proxy_disconnected)
;;     23045262 (in proxy_recv)
;;     23045DE2 (in seg_rx_reset)
;;     23045E5C (in seg_tx_reset)
;;     23046146 (in ctl_recv)
;;     23047132 (in bt_mesh_trans_recv)
;;     230477CC (in friend_clear)
;;     2304818E (in bt_mesh_friend_clear_cfm)
;;     2304991A (in k_delayed_work_submit)
;;     2304AB28 (in bt_conn_set_state)
;;     2304B0A2 (in bt_conn_disconnect)
;;     230510A8 (in l2cap_chan_destroy)
;;     2305260A (in smp_reset)
;;     23052EB4 (in bt_smp_disconnected)
;;     23057D30 (in att_handle_rsp)
k_delayed_work_cancel proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.mv	s0,a0
	jal	ra,0000000023048C54
	c.mv	s2,a0
	addi	a0,s0,+00000008
	jal	ra,0000000023048E6C
	andi	s1,a0,+00000001
	c.bnez	s1,00000000230498C0

l2304988E:
	c.lw	s0,12(a5)
	c.beqz	a5,00000000230498C6

l23049892:
	addi	a0,s0,+00000010
	jal	ra,0000000023048CAE
	c.mv	a0,s0
	jal	ra,0000000023049840
	sw	zero,s0,+0000000C
	sw	zero,s0,+0000001C
	sw	zero,s0,+00000020

l230498AC:
	c.mv	a0,s2
	jal	ra,0000000023048C64
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l230498C0:
	addi	s1,zero,-00000044
	c.j	00000000230498AC

l230498C6:
	c.li	s1,FFFFFFEA
	c.j	00000000230498AC

;; k_delayed_work_submit: 230498CA
;;   Called from:
;;     2303B1B6 (in clear_friendship)
;;     2303B222 (in friend_req_sent)
;;     2303B294 (in friend_clear_sent)
;;     2303B2F8 (in req_sent)
;;     2303B818 (in bt_mesh_lpn_msg_received)
;;     2303BC3A (in bt_mesh_lpn_friend_sub_cfm)
;;     2303BE68 (in bt_mesh_lpn_friend_update)
;;     2303C2E8 (in publish_sent)
;;     2303C98C (in mod_publish)
;;     2303CFC6 (in beacon_send)
;;     2303E6E0 (in _mod_pub_set.isra.1)
;;     2303F658 (in hb_publish)
;;     23041B24 (in bt_mesh_attention)
;;     23042792 (in bt_mesh_net_iv_update)
;;     2304286A (in ivu_refresh)
;;     2304353C (in prov_send)
;;     23043A28 (in buf_sent)
;;     2304415A (in prov_msg_recv)
;;     230451DA (in proxy_recv)
;;     23045234 (in proxy_recv)
;;     23045BB0 (in seg_sent)
;;     23045DCC (in seg_send_start)
;;     23046BA2 (in seg_ack)
;;     230470CE (in bt_mesh_trans_recv)
;;     230474FE (in friend_clear_sent)
;;     23047784 (in buf_send_end)
;;     23047EDC (in bt_mesh_friend_sub_add)
;;     23047FBC (in bt_mesh_friend_sub_rem)
;;     230480A8 (in bt_mesh_friend_poll)
;;     230483E0 (in bt_mesh_friend_req)
;;     2304A3C2 (in conn_cleanup)
;;     2304BC62 (in sc_indicate_rsp)
;;     2304C1FC (in sc_indicate)
;;     2304DF9E (in slave_update_conn_param)
;;     230514CC (in l2cap_le_conn_req)
;;     23051AE4 (in bt_l2cap_chan_disconnect)
;;     230531D0 (in smp_send.isra.9)
;;     2305821A (in att_req_sent)
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
	jal	ra,0000000023048C54
	c.lw	s1,12(a5)
	lui	s2,00042026
	c.mv	s4,a0
	addi	s3,s2,+000005A8
	c.lwsp	a2,00000064
	c.bnez	a5,000000002304990E

l230498F0:
	sw	s3,s1,+0000000C
	c.beqz	a1,000000002304993E

l230498F6:
	addi	a0,s1,+00000010
	jal	ra,0000000023048D3C
	c.mv	a0,s1
	jal	ra,00000000230497F8
	c.mv	s0,a0
	c.beqz	a0,0000000023049926

l23049908:
	jal	ra,0000000023000C02
	c.j	000000002304994C

l2304990E:
	c.swsp	a1,00000084
	addi	s0,zero,-00000030
	bne	a5,s3,0000000023049926

l23049918:
	c.mv	a0,s1
	jal	ra,000000002304986E
	c.mv	s0,a0
	c.lwsp	a2,00000064
	bge	a0,zero,00000000230498F0

l23049926:
	c.mv	a0,s4
	jal	ra,0000000023048C64
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2304993E:
	c.mv	a1,s1
	addi	a0,s2,+000005A8
	jal	ra,0000000023049682
	sw	zero,s1,+0000000C

l2304994C:
	c.li	s0,00000000
	c.j	0000000023049926

;; get_timer_record: 23049950
;;   Called from:
;;     23049982 (in work_timeout)
get_timer_record proc
	lui	a5,00042015
	addi	a3,a5,+00000404
	c.li	a4,00000000
	addi	a5,a5,+00000404
	c.li	a2,00000005

l23049960:
	c.lw	a3,0(a1)
	bne	a1,a0,000000002304996E

l23049966:
	slli	a0,a4,00000003
	c.add	a0,a5
	c.jr	ra

l2304996E:
	c.addi	a4,00000001
	c.addi	a3,00000008
	bne	a4,a2,0000000023049960

l23049976:
	c.li	a0,00000000
	c.jr	ra

;; work_timeout: 2304997A
work_timeout proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,0000000023049950
	c.mv	s1,a0
	c.bnez	a0,000000002304998E

l2304998A:
	jal	ra,0000000023000C02

l2304998E:
	c.lw	s1,4(s0)
	addi	a0,s0,+00000010
	jal	ra,0000000023048CAE
	c.lw	s0,12(a0)
	c.mv	a1,s0
	jal	ra,0000000023049682
	sw	zero,s0,+0000000C
	sw	zero,s1,+00000000
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; reverse_bytearray: 230499B2
;;   Called from:
;;     23055C7A (in ble_select_conn)
;;     23055CF4 (in ble_disconnect)
;;     23055DD0 (in ble_connect)
;;     230567AC (in ble_unpair)
reverse_bytearray proc
	c.add	a1,a2
	c.li	a5,00000000

l230499B6:
	c.addi	a1,FFFFFFFF
	blt	a5,a2,00000000230499BE

l230499BC:
	c.jr	ra

l230499BE:
	add	a4,a0,a5
	lbu	a4,a4,+00000000
	c.addi	a5,00000001
	sb	a4,a1,+00000000
	c.j	00000000230499B6

;; find_msb_set: 230499CE
;;   Called from:
;;     23046120 (in ctl_recv)
find_msb_set proc
	c.beqz	a0,00000000230499E2

l230499D0:
	lui	a4,00080000
	c.li	a5,00000000

l230499D6:
	and	a3,a4,a0
	c.beqz	a3,00000000230499E4

l230499DC:
	addi	a0,zero,+00000020
	c.sub	a0,a5

l230499E2:
	c.jr	ra

l230499E4:
	c.addi	a5,00000001
	c.srli	a4,00000001
	c.j	00000000230499D6

;; find_lsb_set: 230499EA
;;   Called from:
;;     23046150 (in ctl_recv)
find_lsb_set proc
	c.li	a5,00000000
	c.beqz	a0,00000000230499FA

l230499EE:
	c.li	a4,00000001
	c.li	a5,00000000

l230499F2:
	and	a3,a4,a0
	c.addi	a5,00000001
	c.beqz	a3,00000000230499FE

l230499FA:
	c.mv	a0,a5
	c.jr	ra

l230499FE:
	c.slli	a4,01
	c.j	00000000230499F2

;; gf_double: 23049A02
;;   Called from:
;;     23049AC0 (in tc_cmac_setup)
;;     23049ACA (in tc_cmac_setup)
gf_double proc
	lb	a5,a1,+00000000
	addi	a4,a1,+0000000F
	c.addi	a0,0000000F
	c.srai	a5,0000001F
	andi	a5,a5,+00000087

l23049A12:
	lbu	a3,a4,+00000000
	c.addi	a0,FFFFFFFF
	c.slli	a3,01
	c.xor	a5,a3
	sb	a5,a0,+00000001
	beq	a4,a1,0000000023049A2E

l23049A24:
	c.addi	a4,FFFFFFFF
	lbu	a5,a4,+00000001
	c.srli	a5,00000007
	c.j	0000000023049A12

l23049A2E:
	c.jr	ra

;; tc_cmac_erase: 23049A30
;;   Called from:
;;     23049C2A (in tc_cmac_final)
tc_cmac_erase proc
	c.beqz	a0,0000000023049A46

l23049A32:
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+00000058
	c.li	a1,00000000
	c.swsp	ra,00000084
	c.jal	0000000023049C82
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l23049A46:
	c.li	a0,00000000
	c.jr	ra

;; tc_cmac_init: 23049A4A
;;   Called from:
;;     23049AD0 (in tc_cmac_setup)
tc_cmac_init proc
	c.beqz	a0,0000000023049A7A

l23049A4C:
	c.addi	sp,FFFFFFF0
	c.li	a2,00000010
	c.li	a1,00000000
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.mv	s0,a0
	c.jal	0000000023049C82
	addi	a0,s0,+00000030
	c.li	a2,00000010
	c.li	a1,00000000
	c.jal	0000000023049C82
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

l23049A7A:
	c.li	a0,00000000
	c.jr	ra

;; tc_cmac_setup: 23049A7E
;;   Called from:
;;     23040D52 (in bt_mesh_aes_cmac)
;;     230526E8 (in bt_smp_aes_cmac)
tc_cmac_setup proc
	c.li	a5,00000000
	c.beqz	a0,0000000023049AE4

l23049A82:
	c.beqz	a1,0000000023049AE4

l23049A84:
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
	c.jal	0000000023049C82
	c.mv	a1,s2
	c.sw	s0,72(s1)
	c.mv	a0,s1
	jal	ra,0000000023057476
	c.mv	a0,s0
	c.li	a2,00000010
	c.li	a1,00000000
	c.jal	0000000023049C82
	c.lw	s0,72(a2)
	c.mv	a1,s0
	c.mv	a0,s0
	jal	ra,0000000023057550
	addi	s1,s0,+00000010
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,0000000023049A02
	c.mv	a1,s1
	addi	a0,s0,+00000020
	jal	ra,0000000023049A02
	c.mv	a0,s0
	jal	ra,0000000023049A4A
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a5,00000001
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23049AE4:
	c.mv	a0,a5
	c.jr	ra

;; tc_cmac_update: 23049AE8
;;   Called from:
;;     23040D62 (in bt_mesh_aes_cmac)
;;     230526F4 (in bt_smp_aes_cmac)
tc_cmac_update proc
	beq	a0,zero,0000000023049BD6

l23049AEC:
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s1,a2
	c.bnez	a2,0000000023049B10

l23049AFE:
	c.li	a0,00000001

l23049B00:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l23049B10:
	c.mv	s0,a0
	c.mv	s2,a1
	c.li	a0,00000000
	c.beqz	a1,0000000023049B00

l23049B18:
	c.lw	s0,80(a5)
	c.lw	s0,84(a4)
	or	a3,a5,a4
	c.beqz	a3,0000000023049B00

l23049B22:
	addi	a3,a5,-00000001
	sltu	a5,a3,a5
	c.addi	a4,FFFFFFFF
	lw	s4,s0,+00000044
	c.add	a5,a4
	c.sw	s0,80(a3)
	c.sw	s0,84(a5)
	beq	s4,zero,0000000023049B90

l23049B3A:
	c.li	s3,00000010
	addi	a0,s4,+00000030
	sub	s3,s3,s4
	c.add	a0,s0
	bgeu	a2,s3,0000000023049B5A

l23049B4A:
	c.mv	a3,a2
	c.mv	a2,a1
	c.mv	a1,s1
	c.jal	0000000023049C5E
	c.lw	s0,68(a5)
	c.add	s1,a5

l23049B56:
	c.sw	s0,68(s1)
	c.j	0000000023049AFE

l23049B5A:
	c.mv	a3,s3
	c.mv	a2,a1
	c.mv	a1,s3
	c.jal	0000000023049C5E
	c.addi	s1,FFFFFFF0
	c.add	s1,s4
	c.add	s2,s3
	sw	zero,s0,+00000044
	c.mv	a5,s0
	addi	a3,s0,+00000010

l23049B72:
	lbu	a4,a5,+00000000
	lbu	a2,a5,+00000030
	c.addi	a5,00000001
	c.xor	a4,a2
	sb	a4,a5,+00000FFF
	bne	a3,a5,0000000023049B72

l23049B86:
	c.lw	s0,72(a2)
	c.mv	a1,s0
	c.mv	a0,s0
	jal	ra,0000000023057550

l23049B90:
	c.add	s2,s1
	c.li	s3,00000010

l23049B94:
	sub	a2,s2,s1
	bltu	s3,s1,0000000023049BAA

l23049B9C:
	c.beqz	s1,0000000023049AFE

l23049B9E:
	c.mv	a3,s1
	c.mv	a1,s1
	addi	a0,s0,+00000030
	c.jal	0000000023049C5E
	c.j	0000000023049B56

l23049BAA:
	c.li	a5,00000000

l23049BAC:
	add	a3,s0,a5
	add	a4,a2,a5
	lbu	a4,a4,+00000000
	lbu	a1,a3,+00000000
	c.addi	a5,00000001
	c.xor	a4,a1
	sb	a4,a3,+00000000
	bne	a5,s3,0000000023049BAC

l23049BC8:
	c.lw	s0,72(a2)
	c.mv	a1,s0
	c.mv	a0,s0
	jal	ra,0000000023057550
	c.addi	s1,FFFFFFF0
	c.j	0000000023049B94

l23049BD6:
	c.li	a0,00000000
	c.jr	ra

;; tc_cmac_final: 23049BDA
;;   Called from:
;;     23040D72 (in bt_mesh_aes_cmac)
;;     230526FE (in bt_smp_aes_cmac)
tc_cmac_final proc
	c.li	a5,00000000
	c.beqz	a0,0000000023049C5A

l23049BDE:
	c.beqz	a1,0000000023049C5A

l23049BE0:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.lw	a1,68(a5)
	c.li	a2,00000010
	c.mv	s0,a1
	c.mv	s1,a0
	bne	a5,a2,0000000023049C3C

l23049BF4:
	addi	a2,a1,+00000010

l23049BF8:
	c.mv	a5,s0
	c.li	a3,00000000
	c.li	a1,00000010

l23049BFE:
	lbu	a4,a5,+00000000
	lbu	a0,a5,+00000030
	c.addi	a5,00000001
	c.xor	a4,a0
	add	a0,a2,a3
	lbu	a0,a0,+00000000
	c.addi	a3,00000001
	c.xor	a4,a0
	sb	a4,a5,+00000FFF
	bne	a3,a1,0000000023049BFE

l23049C1E:
	c.lw	s0,72(a2)
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,0000000023057550
	c.mv	a0,s0
	jal	ra,0000000023049A30
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a5,00000001
	c.lwsp	tp,00000024
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l23049C3C:
	addi	a0,a5,+00000030
	c.sub	a2,a5
	c.li	a1,00000000
	c.add	a0,s0
	c.jal	0000000023049C82
	c.lw	s0,68(a5)
	addi	a4,zero,-00000080
	addi	a2,s0,+00000020
	c.add	a5,s0
	sb	a4,a5,+00000030
	c.j	0000000023049BF8

l23049C5A:
	c.mv	a0,a5
	c.jr	ra

;; _copy: 23049C5E
;;   Called from:
;;     23049B50 (in tc_cmac_update)
;;     23049B60 (in tc_cmac_update)
;;     23049BA6 (in tc_cmac_update)
;;     23057398 (in shift_rows)
;;     2305757A (in tc_aes_encrypt)
;;     230575E0 (in tc_aes_encrypt)
;;     2305761C (in tc_aes_encrypt)
_copy proc
	bltu	a1,a3,0000000023049C7C

l23049C62:
	c.mv	a5,a2
	c.addi	sp,FFFFFFE0
	c.mv	a2,a3
	c.mv	a1,a5
	c.swsp	ra,0000008C
	c.swsp	a3,00000084
	jal	ra,00000000230A382C
	c.lwsp	a2,000000A4
	c.lwsp	t3,00000020
	c.mv	a0,a3
	c.addi16sp	00000020
	c.jr	ra

l23049C7C:
	c.li	a3,00000000
	c.mv	a0,a3
	c.jr	ra

;; _set: 23049C82
;;   Called from:
;;     23049A3C (in tc_cmac_erase)
;;     23049A58 (in tc_cmac_init)
;;     23049A62 (in tc_cmac_init)
;;     23049A9A (in tc_cmac_setup)
;;     23049AAC (in tc_cmac_setup)
;;     23049C46 (in tc_cmac_final)
;;     23057626 (in tc_aes_encrypt)
_set proc
	jal	zero,00000000230A3A68

;; _double_byte: 23049C86
;;   Called from:
;;     230573B6 (in mult_row_column)
;;     230573C0 (in mult_row_column)
;;     230573E4 (in mult_row_column)
;;     230573EE (in mult_row_column)
;;     23057418 (in mult_row_column)
;;     23057426 (in mult_row_column)
;;     23057440 (in mult_row_column)
;;     2305745E (in mult_row_column)
_double_byte proc
	srli	a5,a0,00000007
	c.li	a4,0000001B
	add	a5,a5,a4
	c.slli	a0,01
	c.xor	a0,a5
	andi	a0,a0,+000000FF
	c.jr	ra

;; bl_find_valid_queued_entry: 23049C9A
;;   Called from:
;;     23049D9E (in bl_onchiphci_rx_packet_handler)
bl_find_valid_queued_entry proc
	c.addi16sp	FFFFFFD0
	c.swsp	s2,00000010
	c.li	a2,00000008
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	lui	s2,00042026
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.li	s1,00000000
	jal	ra,00000000230A3A68
	addi	s2,s2,+000005B8
	c.li	s3,00000009

l23049CBC:
	slli	s0,s1,00000003
	c.add	s0,s2
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	jal	ra,00000000230A37A4
	c.beqz	a0,0000000023049CD6

l23049CCE:
	c.addi	s1,00000001
	bne	s1,s3,0000000023049CBC

l23049CD4:
	c.li	s0,00000000

l23049CD6:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

;; bl_onchiphci_rx_packet_handler: 23049CE6
;;   Called from:
;;     23049F68 (in bl_handle_queued_msg)
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
	c.bnez	a4,0000000023049D2A

l23049D02:
	lui	s5,0004200F
	c.li	s3,00000001
	addi	s5,s5,+00000450
	beq	a0,s3,0000000023049E06

l23049D10:
	addi	a5,a0,-00000002
	andi	a5,a5,+000000FF
	bltu	s3,a5,0000000023049D50

l23049D1C:
	c.li	a0,FFFFFFFF
	jal	ra,0000000023050DC2

l23049D22:
	c.mv	s3,a0
	c.beqz	a0,0000000023049D72

l23049D26:
	sw	zero,s5,+00000000

l23049D2A:
	lw	a5,s3,+00000008
	lhu	a0,s3,+0000000C
	c.addi	s0,FFFFFFFF
	andi	s0,s0,+000000FF
	c.add	a0,a5
	c.li	a5,00000004
	bltu	a5,s0,0000000023049EF8

l23049D40:
	lui	a5,000230BB
	addi	a5,a5,-00000590
	c.slli	s0,02
	c.add	s0,a5
	c.lw	s0,0(a5)
	c.jr	a5

l23049D50:
	c.li	a5,00000004
	beq	a0,a5,0000000023049D60

l23049D56:
	c.li	a0,00000001

l23049D58:
	c.li	a1,00000000
	jal	ra,0000000023050D90
	c.j	0000000023049D22

l23049D60:
	lbu	a4,a2,+00000000
	c.li	a5,00000002
	bne	a4,a5,0000000023049D56

l23049D6A:
	jal	ra,0000000023050D6C
	blt	s3,a0,0000000023049D56

l23049D72:
	lw	a5,s5,+00000000
	c.addi	a5,00000001
	sw	a5,s5,+00000000
	andi	a5,a5,+000000FF
	c.bnez	a5,0000000023049D8E

l23049D82:
	lui	a0,000230BB
	addi	a0,a0,-0000057C
	jal	ra,000000002308234C

l23049D8E:
	c.li	a5,00000004
	bne	s0,a5,0000000023049D9E

l23049D94:
	lbu	a4,s4,+00000000
	c.li	a5,00000002
	beq	a4,a5,0000000023049EF8

l23049D9E:
	jal	ra,0000000023049C9A
	c.mv	s3,a0
	beq	a0,zero,0000000023049EF8

l23049DA8:
	sb	s1,a0,+00000001
	c.srli	s1,00000008
	sb	s0,a0,+00000000
	sb	s1,a0,+00000002
	beq	s2,zero,0000000023049DE4

l23049DBA:
	c.mv	a0,s2
	jal	ra,0000000023048DE8
	srli	a4,a0,00000008
	sb	a4,s3,+00000004
	srli	a5,a0,00000018
	srli	a4,a0,00000010
	sb	a0,s3,+00000003
	sb	a4,s3,+00000005
	sb	a5,s3,+00000006
	c.mv	a2,s2
	c.mv	a1,s4
	jal	ra,00000000230A382C

l23049DE4:
	sb	s2,s3,+00000007
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.mv	a1,s3
	c.lwsp	a2,00000068
	lui	a0,00042026
	addi	a0,a0,+00000600
	c.addi16sp	00000020
	jal	zero,0000000023048A8A

l23049E06:
	c.li	a0,00000003
	c.j	0000000023049D58
23049E0A                               B9 47 23 00 F5 00           .G#...
23049E10 93 07 39 00 A3 00 F5 00 A3 01 95 00 85 47 A1 80 ..9..........G..
23049E20 23 01 F5 00 23 02 95 00 4A 86 D2 85 15 05 93 0A #...#...J.......
23049E30 59 00 EF 90 B5 1F 05 44 D6 85 13 85 89 00 EF F0 Y......D........
23049E40 0F CA 4E 85 4D C0 62 44 F2 40 D2 44 42 49 B2 49 ..N.M.bD.@.DBI.I
23049E50 22 4A 92 4A 05 61 6F 60 A0 16 BD 47 23 00 F5 00 "J.J.ao`...G#...
23049E60 91 47 A3 00 F5 00 83 47 0A 00 23 02 95 00 A1 80 .G.....G..#.....
23049E70 23 01 F5 00 85 47 A3 01 F5 00 A3 02 95 00 05 44 #....G.........D
23049E80 99 4A 5D BF 85 47 23 8A F9 00 93 07 E0 03 23 00 .J]..G#.......#.
23049E90 F5 00 A3 00 25 01 4A 86 D2 85 09 05 93 0A 29 00 ....%.J.......).
23049EA0 EF 90 D5 18 01 44 49 BF 85 47 23 8A F9 00 13 84 .....DI..G#.....
23049EB0 D4 FE 23 00 95 00 A3 00 25 01 4A 86 D2 85 09 05 ..#.....%.J.....
23049EC0 13 34 14 00 93 0A 29 00 EF 90 55 16 B5 B7 8D 47 .4....)...U....G
23049ED0 AA 85 23 8A F9 00 52 85 EF A0 53 2A 93 1A 05 01 ..#...R...S*....
23049EE0 93 DA 0A 01 C1 B7 62 44 F2 40 D2 44 42 49 B2 49 ......bD.@.DBI.I
23049EF0 22 4A 92 4A 05 61 7D A4                         "J.J.a}.       

l23049EF8:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; bl_handle_queued_msg: 23049F0A
;;   Called from:
;;     23049260 (in net_buf_unref)
bl_handle_queued_msg proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042026
	addi	a0,s0,+00000600
	c.swsp	ra,0000008C
	jal	ra,0000000023048B10
	c.bnez	a0,0000000023049F9E

l23049F1E:
	c.li	a1,00000000
	c.li	a0,00000003
	jal	ra,0000000023050D90
	c.swsp	a0,00000084
	c.beqz	a0,0000000023049F9E

l23049F2A:
	c.li	a1,00000000
	addi	a0,s0,+00000600
	jal	ra,0000000023048AE6
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
	jal	ra,0000000023049CE6
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
	c.beqz	a0,0000000023049F8E

l23049F8A:
	jal	ra,0000000023048DEC

l23049F8E:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.li	a2,00000008
	c.li	a1,00000000
	c.addi16sp	00000020
	jal	zero,00000000230A3A68

l23049F9E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; bl_onchiphci_interface_deinit: 23049FA6
;;   Called from:
;;     2305013A (in bt_disable_action)
bl_onchiphci_interface_deinit proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	s0,00042026

l23049FB0:
	c.li	a1,00000000
	addi	a0,s0,+00000600
	jal	ra,0000000023048AE6
	c.beqz	a0,0000000023049FE0

l23049FBC:
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
	c.beqz	a0,0000000023049FB0

l23049FDA:
	jal	ra,0000000023048DEC
	c.j	0000000023049FB0

l23049FE0:
	addi	a0,s0,+00000600
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023048A92

;; bl_onchiphci_interface_init: 23049FEE
;;   Called from:
;;     230503FC (in init_work)
bl_onchiphci_interface_init proc
	lui	a0,00042026
	c.addi	sp,FFFFFFF0
	addi	a2,zero,+00000048
	c.li	a1,00000000
	addi	a0,a0,+000005B8
	c.swsp	ra,00000084
	jal	ra,00000000230A3A68
	lui	a0,00042026
	addi	a0,a0,+00000600
	c.li	a1,00000009
	jal	ra,0000000023048A3E
	c.lwsp	a2,00000020
	lui	a0,0002304A
	addi	a0,a0,-0000031A
	c.addi	sp,00000010
	jal	zero,000000002308482E

;; bl_onchiphci_send_2_controller: 2304A022
;;   Called from:
;;     2304A138 (in hci_driver_send)
bl_onchiphci_send_2_controller proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	lbu	s2,a0,+00000014
	c.mv	s0,a0
	beq	s2,zero,000000002304A04E

l2304A038:
	c.li	a5,00000002
	beq	s2,a5,000000002304A0BC

l2304A03E:
	c.li	a0,FFFFFFEA

l2304A040:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2304A04E:
	lhu	a5,a0,+0000000C
	c.li	a4,00000002
	bgeu	a4,a5,000000002304A03E

l2304A058:
	lw	s3,a0,+00000008
	lbu	a4,s3,+00000002
	bltu	a5,a4,000000002304A03E

l2304A064:
	lbu	s1,s3,+00000001
	lbu	a5,s3,+00000000
	c.li	a1,00000003
	c.slli	s1,08
	c.addi	a0,00000008
	c.or	s1,a5
	jal	ra,00000000230493EC
	c.lui	a5,FFFFE000
	c.addi	a5,FFFFFFED
	c.add	a5,s1
	c.slli	a5,10
	c.srli	a5,00000010
	c.li	a4,0000001F
	c.lw	s0,8(a3)
	c.li	a1,00000000
	bltu	a4,a5,000000002304A0A4

l2304A08C:
	c.li	a4,00000001
	sll	a5,a4,a5
	lui	a4,000A000E
	addi	a4,a4,+000001CD
	c.and	a5,a4
	c.mv	a1,s2
	c.beqz	a5,000000002304A0A4

l2304A0A0:
	lbu	a1,a3,+00000000

l2304A0A4:
	lbu	a5,s3,+00000002
	sh	s1,sp,+00000004
	c.swsp	a3,00000004
	sb	a5,sp,+0000000C

l2304A0B2:
	c.addi4spn	a2,00000004
	c.mv	a0,s2
	jal	ra,0000000023084844
	c.j	000000002304A040

l2304A0BC:
	lhu	a4,a0,+0000000C
	c.li	a5,00000003
	bgeu	a5,a4,000000002304A03E

l2304A0C6:
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
	jal	ra,00000000230493EC
	lhu	a5,s0,+0000000C
	bltu	a5,s2,000000002304A03E

l2304A0F2:
	c.lw	s0,8(a5)
	slli	a1,s1,00000014
	c.srli	a1,00000014
	c.srli	s1,0000000C
	sh	s2,sp,+00000008
	sh	a1,sp,+00000004
	sb	s1,sp,+00000006
	c.swsp	a5,00000084
	c.li	s2,00000001
	c.j	000000002304A0B2

;; hci_driver_send: 2304A10E
hci_driver_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	lhu	a5,a0,+0000000C
	c.bnez	a5,000000002304A136

l2304A11C:
	lui	a0,000230BB
	addi	a0,a0,-0000053C
	jal	ra,0000000023082388
	c.li	s0,FFFFFFEA

l2304A12A:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2304A136:
	c.mv	s1,a0
	jal	ra,000000002304A022
	c.mv	s0,a0
	c.mv	a0,s1
	jal	ra,00000000230491C0
	c.j	000000002304A12A

;; hci_driver_open: 2304A146
hci_driver_open proc
	lui	a0,0004200F
	c.addi	sp,FFFFFFF0
	c.li	a1,00000014
	addi	a0,a0,-0000014C
	c.swsp	ra,00000084
	jal	ra,0000000023048A3E
	lui	a3,0002304A
	c.lui	a2,00001000
	lui	a1,000230BB
	lui	a0,00042026
	c.li	a4,0000001C
	addi	a3,a3,+00000184
	addi	a2,a2,-00000400
	addi	a1,a1,-00000548
	addi	a0,a0,+0000060C
	jal	ra,0000000023048BE6
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; recv_thread: 2304A184
recv_thread proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	lui	s0,0004200F

l2304A18E:
	c.li	a1,FFFFFFFF
	addi	a0,s0,-0000014C
	jal	ra,00000000230490A4
	c.beqz	a0,000000002304A19E

l2304A19A:
	jal	ra,000000002304FEA6

l2304A19E:
	jal	ra,0000000023048C3C
	c.j	000000002304A18E

;; hci_driver_enque_recvq: 2304A1A4
hci_driver_enque_recvq proc
	c.mv	a1,a0
	lui	a0,0004200F
	addi	a0,a0,-0000014C
	jal	zero,00000000230491A6

;; hci_driver_init: 2304A1B2
;;   Called from:
;;     23000F26 (in ble_stack_start)
hci_driver_init proc
	lui	a0,000230BB
	c.addi	sp,FFFFFFF0
	addi	a0,a0,-0000055C
	c.swsp	ra,00000084
	jal	ra,0000000023050032
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; atomic_test_bit: 2304A1CA
;;   Called from:
;;     2304A470 (in notify_le_param_updated)
;;     2304B136 (in bt_conn_create_le)
;;     2304B14E (in bt_conn_create_le)
;;     2304B15A (in bt_conn_create_le)
;;     2304B31C (in send_conn_le_param_update)
;;     2304B472 (in bt_conn_le_param_update)
;;     2304B792 (in bt_conn_init)
;;     2304B7B6 (in bt_conn_init)
atomic_test_bit proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,0000000023048E6C
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	sra	a0,a0,a1
	c.andi	a0,00000001
	c.addi16sp	00000020
	c.jr	ra

;; tx_free: 2304A1E2
;;   Called from:
;;     2304A2CC (in send_frag)
;;     2304A3E8 (in conn_cleanup)
;;     2304A440 (in tx_notify)
;;     2304A8EC (in bt_conn_send_cb)
tx_free proc
	c.mv	a1,a0
	sw	zero,a0,+00000004
	sw	zero,a0,+00000008
	sw	zero,a0,+0000000C
	lui	a0,0004200F
	addi	a0,a0,-00000140
	jal	zero,0000000023048A8A

;; send_frag: 2304A1FC
;;   Called from:
;;     2304B5DE (in bt_conn_process_tx)
;;     2304B61A (in bt_conn_process_tx)
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
	lui	s5,0004200E
	c.mv	s0,a0
	c.lw	a1,20(s1)
	c.mv	s3,a1
	addi	a0,s5,-0000021C
	c.li	a1,FFFFFFFF
	c.mv	s2,a2
	c.mv	s4,a3
	jal	ra,0000000023048B5E
	lbu	a4,s0,+0000000D
	c.li	a5,00000004
	bne	a4,a5,000000002304A2C0

l2304A230:
	c.li	a1,00000004
	addi	a0,s3,+00000008
	jal	ra,0000000023049382
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
	jal	ra,0000000023048C54
	c.beqz	s1,000000002304A2F8

l2304A26E:
	sw	zero,s1,+00000000
	c.lw	s0,24(a5)
	c.bnez	a5,000000002304A2F2

l2304A276:
	c.sw	s0,24(s1)
	c.sw	s0,20(s1)

l2304A27A:
	jal	ra,0000000023048C64
	c.li	a5,00000002
	sb	a5,s3,+00000014
	c.mv	a0,s3
	jal	ra,000000002304F286
	c.mv	a1,a0
	c.beqz	a0,000000002304A330

l2304A28E:
	lui	a0,000230BB
	addi	a0,a0,-0000034C
	jal	ra,0000000023082388
	jal	ra,0000000023048C54
	c.beqz	s1,000000002304A324

l2304A2A0:
	c.lw	s0,20(a5)
	c.li	a4,00000000

l2304A2A4:
	c.beqz	a5,000000002304A2BC

l2304A2A6:
	bne	s1,a5,000000002304A31E

l2304A2AA:
	c.lw	s1,0(a5)
	c.bnez	a4,000000002304A312

l2304A2AE:
	c.lw	s0,24(a4)
	c.sw	s0,20(a5)
	bne	s1,a4,000000002304A2B8

l2304A2B6:
	c.sw	s0,24(a5)

l2304A2B8:
	sw	zero,s1,+00000000

l2304A2BC:
	jal	ra,0000000023048C64

l2304A2C0:
	addi	a0,s5,-0000021C
	jal	ra,0000000023048B7E
	c.beqz	s1,000000002304A2D0

l2304A2CA:
	c.mv	a0,s1
	jal	ra,000000002304A1E2

l2304A2D0:
	beq	s4,zero,000000002304A2DC

l2304A2D4:
	c.mv	a0,s3
	jal	ra,00000000230491C0
	c.li	s4,00000000

l2304A2DC:
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

l2304A2F2:
	c.sw	a5,0(s1)
	c.sw	s0,24(s1)
	c.j	000000002304A27A

l2304A2F8:
	c.lw	s0,24(a5)
	c.beqz	a5,000000002304A30A

l2304A2FC:
	addi	s6,a5,+0000000C
	c.lw	a5,12(a5)

l2304A302:
	c.addi	a5,00000001
	sw	a5,s6,+00000000
	c.j	000000002304A27A

l2304A30A:
	addi	s6,s0,+0000001C
	c.lw	s0,28(a5)
	c.j	000000002304A302

l2304A312:
	c.sw	a4,0(a5)
	c.lw	s0,24(a5)
	bne	s1,a5,000000002304A2B8

l2304A31A:
	c.sw	s0,24(a4)
	c.j	000000002304A2B8

l2304A31E:
	c.mv	a4,a5
	c.lw	a5,0(a5)
	c.j	000000002304A2A4

l2304A324:
	lw	a5,s6,+00000000
	c.addi	a5,FFFFFFFF
	sw	a5,s6,+00000000
	c.j	000000002304A2BC

l2304A330:
	c.li	s4,00000001
	c.j	000000002304A2DC

;; notify_connected: 2304A334
notify_connected proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200F
	c.swsp	s0,00000004
	lw	s0,a5,+00000454
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0

l2304A346:
	lbu	a1,s1,+0000000C
	c.bnez	s0,000000002304A35C

l2304A34C:
	c.bnez	a1,000000002304A368

l2304A34E:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002304DCF0

l2304A35C:
	c.lw	s0,0(a5)
	c.beqz	a5,000000002304A364

l2304A360:
	c.mv	a0,s1
	c.jalr	a5

l2304A364:
	c.lw	s0,24(s0)
	c.j	000000002304A346

l2304A368:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bt_conn_reset_rx_state: 2304A372
;;   Called from:
;;     2304A3B6 (in conn_cleanup)
;;     2304A76C (in bt_conn_recv)
;;     2304A7A6 (in bt_conn_recv)
bt_conn_reset_rx_state proc
	lhu	a5,a0,+0000000E
	c.beqz	a5,000000002304A396

l2304A378:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.lw	a0,16(a0)
	jal	ra,00000000230491C0
	sw	zero,s0,+00000010
	sh	zero,s0,+0000000E
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2304A396:
	c.jr	ra

;; conn_cleanup: 2304A398
;;   Called from:
;;     2304A9A8 (in bt_conn_prepare_events)
;;     2304A9D2 (in bt_conn_prepare_events)
;;     2304B5A8 (in bt_conn_process_tx)
conn_cleanup proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s0,a0
	addi	s2,a0,+00000034

l2304A3A8:
	c.li	a1,00000000
	c.mv	a0,s2
	jal	ra,00000000230490A4
	c.mv	s1,a0
	c.bnez	a0,000000002304A3E4

l2304A3B4:
	c.mv	a0,s0
	jal	ra,000000002304A372
	addi	s1,s0,+0000004C
	c.li	a1,00000000
	c.mv	a0,s1
	jal	ra,00000000230498CA
	c.mv	a0,s2
	jal	ra,0000000023048A92
	c.lw	s0,92(a5)
	sw	zero,s0,+00000034
	c.beqz	a5,000000002304A3F4

l2304A3D4:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230497D6

l2304A3E4:
	c.lw	s1,20(a0)
	c.beqz	a0,000000002304A3EC

l2304A3E8:
	jal	ra,000000002304A1E2

l2304A3EC:
	c.mv	a0,s1
	jal	ra,00000000230491C0
	c.j	000000002304A3A8

l2304A3F4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; tx_notify: 2304A400
;;   Called from:
;;     2304A450 (in tx_complete_work)
;;     2304A736 (in bt_conn_recv)
tx_notify proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s1,a0

l2304A40C:
	jal	ra,0000000023048C54
	c.lw	s1,32(s0)
	c.mv	a4,a0
	c.bnez	s0,000000002304A424

l2304A416:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,0000000023048C64

l2304A424:
	c.lw	s0,0(a5)
	c.lw	s1,36(a3)
	c.sw	s1,32(a5)
	bne	s0,a3,000000002304A430

l2304A42E:
	c.sw	s1,36(a5)

l2304A430:
	c.mv	a0,a4
	jal	ra,0000000023048C64
	c.lw	s0,8(a1)
	c.mv	a0,s0
	lw	s2,s0,+00000004
	c.swsp	a1,00000084
	jal	ra,000000002304A1E2
	c.lwsp	a2,00000064
	c.mv	a0,s1
	c.jalr	s2
	c.j	000000002304A40C

;; tx_complete_work: 2304A44C
tx_complete_work proc
	addi	a0,a0,-00000028
	jal	zero,000000002304A400

;; bt_conn_get_pkts: 2304A454
;;   Called from:
;;     2304E178 (in hci_num_completed_packets)
;;     2304E1D6 (in hci_num_completed_packets)
bt_conn_get_pkts proc
	lui	a0,0004200E
	addi	a0,a0,-0000021C
	c.jr	ra

;; notify_le_param_updated: 2304A45E
;;   Called from:
;;     2304E08A (in le_conn_update_complete)
notify_le_param_updated proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	addi	s1,a0,+00000004
	c.swsp	s0,00000004
	c.li	a1,00000009
	c.mv	s0,a0
	c.mv	a0,s1
	c.swsp	ra,00000084
	jal	ra,000000002304A1CA
	c.beqz	a0,000000002304A4A0

l2304A476:
	lhu	a5,s0,+00000086
	lhu	a4,s0,+00000088
	bltu	a5,a4,000000002304A4A0

l2304A482:
	lhu	a4,s0,+0000008A
	bltu	a4,a5,000000002304A4A0

l2304A48A:
	lw	a4,s0,+0000008C
	lw	a5,s0,+00000090
	bne	a4,a5,000000002304A4A0

l2304A496:
	addi	a1,zero,-00000201
	c.mv	a0,s1
	jal	ra,0000000023048EE2

l2304A4A0:
	lui	a5,0004200F
	lw	s1,a5,+00000454

l2304A4A8:
	c.bnez	s1,000000002304A4B4

l2304A4AA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2304A4B4:
	c.lw	s1,12(a5)
	c.beqz	a5,000000002304A4C8

l2304A4B8:
	lhu	a3,s0,+0000008E
	lhu	a2,s0,+0000008C
	lhu	a1,s0,+00000086
	c.mv	a0,s0
	c.jalr	a5

l2304A4C8:
	c.lw	s1,24(s1)
	c.j	000000002304A4A8

;; le_param_req: 2304A4CC
;;   Called from:
;;     2304F95E (in le_conn_param_req)
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
	jal	ra,000000002304ED86
	c.bnez	a0,000000002304A4F6

l2304A4E4:
	c.li	s1,00000000

l2304A4E6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2304A4F6:
	lui	a5,0004200F
	lw	s0,a5,+00000454
	c.mv	s1,a0

l2304A500:
	c.beqz	s0,000000002304A4E6

l2304A502:
	c.lw	s0,8(a5)
	c.bnez	a5,000000002304A50A

l2304A506:
	c.lw	s0,24(s0)
	c.j	000000002304A500

l2304A50A:
	c.mv	a1,s2
	c.mv	a0,s3
	c.jalr	a5
	c.beqz	a0,000000002304A4E4

l2304A512:
	c.mv	a0,s2
	jal	ra,000000002304ED86
	c.bnez	a0,000000002304A506

l2304A51A:
	c.j	000000002304A4E4

;; le_check_valid_conn: 2304A51C
;;   Called from:
;;     23050152 (in bt_disable)
le_check_valid_conn proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042015
	addi	s0,s0,+000004CC
	addi	a0,s0,+00000048
	c.swsp	ra,00000084
	jal	ra,0000000023048E6C
	c.li	a5,00000001
	c.bnez	a0,000000002304A542

l2304A536:
	addi	a0,s0,+000000E8
	jal	ra,0000000023048E6C
	sltu	a5,zero,a0

l2304A542:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

;; bt_conn_identity_resolved: 2304A54C
;;   Called from:
;;     23054692 (in smp_ident_addr_info)
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
	c.beqz	a5,000000002304A568

l2304A564:
	addi	s2,a0,+00000077

l2304A568:
	lui	a5,0004200F
	lw	s1,a5,+00000454
	addi	s3,s0,+00000070

l2304A574:
	c.bnez	s1,000000002304A584

l2304A576:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2304A584:
	c.lw	s1,16(a5)
	c.beqz	a5,000000002304A590

l2304A588:
	c.mv	a2,s3
	c.mv	a1,s2
	c.mv	a0,s0
	c.jalr	a5

l2304A590:
	c.lw	s1,24(s1)
	c.j	000000002304A574

;; bt_conn_le_start_encryption: 2304A594
;;   Called from:
;;     23053B32 (in smp_security_request)
;;     23054AE0 (in smp_pairing_random)
;;     230552BE (in bt_smp_start_security)
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
	jal	ra,000000002304E6F6
	c.beqz	a0,000000002304A62A

l2304A5BC:
	c.li	a1,0000001C
	c.mv	s2,a0
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	lhu	a5,s6,+00000000
	c.mv	s0,a0
	c.li	a2,00000008
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	c.mv	a1,s5
	c.addi	a0,00000002
	jal	ra,00000000230A382C
	c.li	a2,00000002
	c.mv	a1,s4
	addi	a0,s0,+0000000A
	jal	ra,00000000230A382C
	c.addi	s0,0000000C
	c.mv	a2,s1
	c.mv	a1,s3
	c.mv	a0,s0
	jal	ra,00000000230A382C
	c.li	a5,0000000F
	bltu	a5,s1,000000002304A60C

l2304A5FE:
	c.li	a2,00000010
	c.sub	a2,s1
	c.li	a1,00000000
	add	a0,s0,s1
	jal	ra,00000000230A3A68

l2304A60C:
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
	jal	zero,000000002304E790

l2304A62A:
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

;; bt_conn_security_changed: 2304A642
;;   Called from:
;;     2304E2C0 (in hci_encrypt_key_refresh_complete)
;;     2304E368 (in hci_encrypt_change)
;;     230526B4 (in smp_pairing_complete)
;;     23054E64 (in bt_smp_request_ltk)
bt_conn_security_changed proc
	c.addi	sp,FFFFFFF0
	lui	a5,0004200F
	c.swsp	s1,00000080
	lw	s1,a5,+00000454
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.mv	s2,a1

l2304A658:
	c.bnez	s1,000000002304A67E

l2304A65A:
	bne	s2,zero,000000002304A690

l2304A65E:
	lbu	a4,s0,+00000009
	c.li	a5,00000001
	bgeu	a5,a4,000000002304A690

l2304A668:
	lbu	a0,s0,+00000008
	addi	a1,s0,+00000070
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	jal	zero,0000000023055912

l2304A67E:
	c.lw	s1,20(a5)
	c.beqz	a5,000000002304A68C

l2304A682:
	lbu	a1,s0,+00000009
	c.mv	a2,s2
	c.mv	a0,s0
	c.jalr	a5

l2304A68C:
	c.lw	s1,24(s1)
	c.j	000000002304A658

l2304A690:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; bt_conn_set_security: 2304A69C
;;   Called from:
;;     2304DD60 (in bt_gatt_connected)
;;     23055C0E (in ble_security)
;;     23057E4E (in att_error_rsp)
bt_conn_set_security proc
	lbu	a4,a0,+0000000D
	c.li	a5,00000004
	bne	a4,a5,000000002304A70A

l2304A6A6:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	lbu	a5,a0,+00000009
	c.mv	s0,a0
	c.li	a0,00000000
	bgeu	a5,a1,000000002304A6F4

l2304A6BA:
	lbu	a5,s0,+0000000A
	bgeu	a5,a1,000000002304A6F4

l2304A6C2:
	slli	a5,a1,00000018
	c.srai	a5,00000018
	c.mv	s1,a1
	addi	a0,s0,+00000004
	bge	a5,zero,000000002304A6FE

l2304A6D2:
	c.lui	a1,00001000
	addi	a1,a1,-00000800
	jal	ra,0000000023048EBA

l2304A6DC:
	andi	a1,s1,+0000007F
	sb	a1,s0,+0000000A
	c.mv	a0,s0
	jal	ra,0000000023055228
	c.beqz	a0,000000002304A6F4

l2304A6EC:
	lbu	a5,s0,+00000009
	sb	a5,s0,+0000000A

l2304A6F4:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2304A6FE:
	c.lui	a1,FFFFF000
	addi	a1,a1,+000007FF
	jal	ra,0000000023048EE2
	c.j	000000002304A6DC

l2304A70A:
	addi	a0,zero,-00000039
	c.jr	ra

;; bt_conn_get_security: 2304A710
;;   Called from:
;;     2304CA62 (in bt_gatt_check_perm)
;;     2304CAF4 (in update_ccc)
;;     2304DD52 (in bt_gatt_connected)
bt_conn_get_security proc
	lbu	a0,a0,+00000009
	c.jr	ra

;; bt_conn_cb_register: 2304A716
;;   Called from:
;;     23001090 (in blsync_ble_start)
;;     23045A60 (in bt_mesh_proxy_init)
;;     230568D6 (in ble_init)
;;     23056F3A (in ble_tp_init)
;;     2305BACC (in bl_ble_sync_start)
bt_conn_cb_register proc
	lui	a5,0004200F
	addi	a5,a5,+00000454
	c.lw	a5,0(a4)
	c.sw	a5,0(a0)
	c.sw	a0,24(a4)
	c.jr	ra

;; bt_conn_recv: 2304A726
;;   Called from:
;;     2304FF46 (in bt_recv)
bt_conn_recv proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	a2,00000084
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.mv	s0,a0
	c.mv	s1,a1
	jal	ra,000000002304A400
	c.lwsp	a2,00000084
	c.li	a5,00000001
	beq	a2,a5,000000002304A792

l2304A742:
	c.li	a5,00000002
	bne	a2,a5,000000002304A83C

l2304A748:
	c.lw	s1,8(a4)
	lbu	s2,a4,+00000001
	lbu	a5,a4,+00000000
	c.slli	s2,08
	or	s2,s2,a5
	lhu	a5,s0,+0000000E
	c.beqz	a5,000000002304A770

l2304A75E:
	lui	a0,000230BB
	addi	a0,a0,-0000049C
	jal	ra,0000000023082388
	c.mv	a0,s0
	jal	ra,000000002304A372

l2304A770:
	lhu	a5,s1,+0000000C
	sub	a5,s2,a5
	c.addi	a5,00000004
	c.slli	a5,10
	c.srli	a5,00000010
	sh	a5,s0,+0000000E
	c.beqz	a5,000000002304A814

l2304A784:
	c.sw	s0,16(s1)

l2304A786:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2304A792:
	lhu	a5,s0,+0000000E
	c.bnez	a5,000000002304A7BA

l2304A798:
	lui	a0,000230BB
	addi	a0,a0,-0000047C

l2304A7A0:
	jal	ra,0000000023082388

l2304A7A4:
	c.mv	a0,s0
	jal	ra,000000002304A372

l2304A7AA:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,00000000230491C0

l2304A7BA:
	lhu	s2,s1,+0000000C
	bgeu	a5,s2,000000002304A7CC

l2304A7C2:
	lui	a0,000230BB
	addi	a0,a0,-0000045C
	c.j	000000002304A7A0

l2304A7CC:
	c.lw	s0,16(a0)
	c.addi	a0,00000008
	jal	ra,00000000230494E0
	bgeu	a0,s2,000000002304A7E2

l2304A7D8:
	lui	a0,000230BB
	addi	a0,a0,-00000444
	c.j	000000002304A7A0

l2304A7E2:
	c.lw	s0,16(a0)
	lhu	a2,s1,+0000000C
	c.lw	s1,8(a1)
	c.addi	a0,00000008
	jal	ra,00000000230492F0
	lhu	a5,s0,+0000000E
	lhu	a4,s1,+0000000C
	c.mv	a0,s1
	c.sub	a5,a4
	sh	a5,s0,+0000000E
	jal	ra,00000000230491C0
	lhu	a5,s0,+0000000E
	c.bnez	a5,000000002304A786

l2304A80A:
	c.lw	s0,16(s1)
	sh	zero,s0,+0000000E
	sw	zero,s0,+00000010

l2304A814:
	c.lw	s1,8(a5)
	lhu	a2,s1,+0000000C
	lbu	a1,a5,+00000001
	lbu	a4,a5,+00000000
	c.slli	a1,08
	c.or	a1,a4
	addi	a5,a1,+00000004
	beq	a5,a2,000000002304A84C

l2304A82E:
	lui	a0,000230BB
	addi	a0,a0,-000003F8
	jal	ra,0000000023082388
	c.j	000000002304A7AA

l2304A83C:
	lui	a0,000230BB
	c.mv	a1,a2
	addi	a0,a0,-00000418
	jal	ra,0000000023082388
	c.j	000000002304A7A4

l2304A84C:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.mv	a1,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002305196E

;; bt_conn_send_cb: 2304A85E
;;   Called from:
;;     230513B0 (in bt_l2cap_send_cb)
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
	beq	s3,a5,000000002304A88E

l2304A876:
	lui	a0,000230BB
	addi	a0,a0,-000003D8
	jal	ra,0000000023082388
	c.mv	a0,s0
	jal	ra,00000000230491C0

l2304A888:
	addi	a0,zero,-00000039
	c.j	000000002304A8C2

l2304A88E:
	c.swsp	a3,00000084
	c.swsp	a2,00000004
	c.mv	s2,a0
	c.beqz	a2,000000002304A916

l2304A896:
	lui	a0,0004200F
	c.li	a1,FFFFFFFF
	addi	a0,a0,-00000140
	jal	ra,0000000023048AE6
	c.mv	s1,a0
	c.lwsp	s0,00000084
	c.lwsp	a2,000000A4
	c.bnez	a0,000000002304A8D0

l2304A8AC:
	lui	a0,000230BB
	addi	a0,a0,-000003C4
	jal	ra,0000000023082388
	c.mv	a0,s0
	jal	ra,00000000230491C0
	addi	a0,zero,-00000037

l2304A8C2:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2304A8D0:
	lbu	a5,s2,+0000000D
	beq	a5,s3,000000002304A8F2

l2304A8D8:
	lui	a0,000230BB
	addi	a0,a0,-000003A4
	jal	ra,0000000023082388
	c.mv	a0,s0
	jal	ra,00000000230491C0
	c.mv	a0,s1
	jal	ra,000000002304A1E2
	c.j	000000002304A888

l2304A8F2:
	c.sw	a0,4(a2)
	c.sw	a0,8(a3)
	sw	zero,a0,+0000000C
	c.sw	s0,20(a0)

l2304A8FC:
	c.mv	a1,s0
	addi	a0,s2,+00000034
	jal	ra,00000000230491A6
	lui	a0,00042026
	addi	a0,a0,+00000644
	jal	ra,0000000023048B7E
	c.li	a0,00000000
	c.j	000000002304A8C2

l2304A916:
	sw	zero,a1,+00000014
	c.j	000000002304A8FC

;; bt_conn_prepare_events: 2304A91C
;;   Called from:
;;     2304FDA2 (in hci_tx_thread)
bt_conn_prepare_events proc
	c.addi	sp,FFFFFFE0
	lui	a3,0004200E
	addi	a5,a3,-000002D8
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	addi	a3,a3,-000002D8
	c.li	a2,00000000
	c.li	a1,00000001
	c.mv	s2,a0
	sw	zero,a5,+00000008
	lui	s3,00042015
	jal	ra,0000000023057074
	addi	a0,s3,+000004CC
	addi	a0,a0,+00000048
	jal	ra,0000000023048E6C
	addi	s0,s3,+000004CC
	c.li	s1,00000001
	c.beqz	a0,000000002304A982

l2304A95A:
	lbu	a5,s0,+0000000D
	c.beqz	a5,000000002304A9BC

l2304A960:
	lbu	a4,s0,+0000000D
	c.li	a5,00000004
	c.li	s1,00000001
	bne	a4,a5,000000002304A982

l2304A96C:
	addi	a3,s0,+00000034
	c.li	a2,00000000
	c.li	a1,00000003
	addi	a0,s2,+00000014
	jal	ra,0000000023057074
	sb	s1,s2,+00000020
	c.li	s1,00000002

l2304A982:
	addi	a0,s0,+000000E8
	jal	ra,0000000023048E6C
	c.beqz	a0,000000002304A9AC

l2304A98C:
	lbu	a5,s0,+000000AD
	c.bnez	a5,000000002304A9DA

l2304A992:
	addi	a1,zero,-00000041
	addi	a0,s0,+000000A4
	jal	ra,0000000023048EE2
	andi	a0,a0,+00000040
	c.beqz	a0,000000002304A9DA

l2304A9A4:
	addi	a0,s0,+000000A0
	jal	ra,000000002304A398

l2304A9AC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2304A9BC:
	addi	a1,zero,-00000041
	addi	a0,s0,+00000004
	jal	ra,0000000023048EE2
	andi	a0,a0,+00000040
	c.beqz	a0,000000002304A960

l2304A9CE:
	addi	a0,s3,+000004CC
	jal	ra,000000002304A398
	c.li	s1,00000001
	c.j	000000002304A982

l2304A9DA:
	lbu	a4,s0,+000000AD
	c.li	a5,00000004
	bne	a4,a5,000000002304A9AC

l2304A9E4:
	c.li	a5,00000014
	add	a5,s1,a5
	addi	a3,s0,+000000D4
	c.li	a2,00000000
	c.li	a1,00000003
	c.addi	s1,00000001
	c.add	s2,a5
	c.mv	a0,s2
	jal	ra,0000000023057074
	c.li	a5,00000001
	sb	a5,s2,+0000000C
	c.j	000000002304A9AC

;; bt_conn_add_le: 2304AA04
;;   Called from:
;;     2304B21E (in bt_conn_create_le)
;;     2304FB04 (in enh_conn_complete)
;;     2304FB16 (in enh_conn_complete)
bt_conn_add_le proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042015
	c.swsp	s4,00000004
	c.mv	s4,a0
	addi	a0,s1,+000004CC
	addi	a0,a0,+00000048
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s3,a1
	jal	ra,0000000023048E6C
	addi	s1,s1,+000004CC
	c.beqz	a0,000000002304AA3A

l2304AA2C:
	addi	a0,s1,+000000E8
	jal	ra,0000000023048E6C
	c.li	s2,00000000
	c.bnez	a0,000000002304AAAC

l2304AA38:
	c.li	a0,00000001

l2304AA3A:
	addi	s0,zero,+000000A0
	add	s0,a0,s0
	addi	a2,zero,+000000A0
	c.li	a1,00000000
	add	s2,s1,s0
	c.mv	a0,s2
	jal	ra,00000000230A3A68
	addi	a0,s0,+0000004C
	lui	a1,0002304B
	addi	a1,a1,+00000346
	c.add	a0,s1
	jal	ra,0000000023049780
	addi	a0,s0,+00000028
	lui	a1,0002304A
	addi	a1,a1,+0000044C
	c.add	a0,s1
	jal	ra,0000000023049750
	addi	a0,s0,+00000048
	c.li	a1,00000001
	c.add	a0,s1
	jal	ra,0000000023048E70
	addi	a0,s0,+00000070
	sb	s4,s2,+00000008
	c.li	a2,00000007
	c.mv	a1,s3
	c.add	a0,s1
	jal	ra,00000000230A382C
	c.li	a5,00000001
	sb	a5,s2,+00000009
	sb	a5,s2,+0000000A
	sb	a5,s2,+00000002
	lui	a5,00000280
	c.addi	a5,00000018
	sw	a5,s2,+00000088

l2304AAAC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; bt_conn_set_state: 2304AABE
;;   Called from:
;;     2304B076 (in bt_conn_disconnect)
;;     2304B08A (in bt_conn_disconnect)
;;     2304B0FA (in bt_conn_disconnect)
;;     2304B1E0 (in bt_conn_create_le)
;;     2304B7A2 (in bt_conn_init)
;;     2304B7C6 (in bt_conn_init)
;;     2304EB74 (in hci_disconn_complete)
;;     2304F70C (in le_adv_report)
;;     2304F750 (in le_adv_report)
;;     2304FA6E (in enh_conn_complete)
;;     2304FC00 (in enh_conn_complete)
bt_conn_set_state proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lbu	s1,a0,+0000000D
	bne	s1,a1,000000002304AAE6

l2304AAD0:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	lui	a0,000230BB
	addi	a0,a0,-0000037C
	c.addi	sp,00000010
	jal	zero,0000000023082388

l2304AAE6:
	c.mv	s0,a0
	sb	a1,s0,+0000000D
	c.mv	s2,a1
	c.beqz	s1,000000002304AB10

l2304AAF0:
	c.li	a5,00000003
	beq	s1,a5,000000002304AB1A

l2304AAF6:
	lbu	a5,s0,+0000000D
	c.li	a4,00000005
	bltu	a4,a5,000000002304AC72

l2304AB00:
	lui	a4,000230BB
	c.slli	a5,02
	addi	a4,a4,-0000051C
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.jr	a5

l2304AB10:
	addi	a0,a0,+00000048
	jal	ra,0000000023048E20
	c.j	000000002304AAF6

l2304AB1A:
	lbu	a4,a0,+00000002
	c.li	a5,00000001
	bne	a4,a5,000000002304AAF6

l2304AB24:
	addi	a0,a0,+0000004C
	jal	ra,000000002304986E
	c.j	000000002304AAF6
2304AB2E                                           03 47               .G
2304AB30 24 00 91 47 63 08 F7 10 13 05 44 03 D1 45 EF D0 $..Gc.....D..E..
2304AB40 1F F0 37 E5 00 42 81 45 13 05 85 D2 EF C0 60 5F ..7..B.E......`_
2304AB50 22 85 23 20 04 04 23 22 04 04 EF 60 D0 59 22 85 ".# ..#"...`.Y".
2304AB60 22 44 B2 40 92 44 02 49 41 01 6F F0 AF FC 03 47 "D.@.D.IA.o....G
2304AB70 24 00 91 47 63 1B F7 00 13 05 84 04 22 44 B2 40 $..Gc......."D.@
2304AB80 92 44 02 49 41 01 6F E0 0F AC 93 87 C4 FF 93 F7 .D.IA.o.........
2304AB90 F7 0F 05 47 63 68 F7 08 37 E9 00 42 EF E0 8F 8B ...Gch..7..B....
2304ABA0 5C 4C 2A 87 91 CB FD 17 5C CC EF E0 AF 8B 13 05 \L*.....\.......
2304ABB0 49 DE EF D0 DF FC DD B7 44 48 99 C4 9C 40 14 4C I.......DH...@.L
2304ABC0 5C C8 63 93 D4 00 1C CC 3A 85 EF E0 AF 89 89 CC \.c.....:.......
2304ABD0 EF E0 4F 88 DC 44 5C CC 23 A6 04 00 EF E0 8F 88 ..O..D\.#.......
2304ABE0 26 85 EF F0 0F E0 E1 B7 22 85 EF F0 7F 81 03 47 &......."......G
2304ABF0 24 00 85 47 63 16 F7 00 13 05 C4 04 EF E0 3F C7 $..Gc.........?.
2304AC00 93 05 00 04 13 05 44 00 EF E0 2F AB 22 44 B2 40 ......D.../."D.@
2304AC10 92 44 02 49 37 E5 00 42 81 45 13 05 85 D2 41 01 .D.I7..B.E....A.
2304AC20 6F C0 20 52 8D 47 63 96 F4 00 22 85 EF F0 8F F0 o. R.Gc...".....
2304AC30 A1 B7 63 96 E4 00 83 47 C4 00 9D DF FD B7 89 47 ..c....G.......G
2304AC40 E3 8B F4 FE B2 40 22 44 92 44 02 49 41 01 82 80 .....@"D.D.IA...
2304AC50 03 47 24 00 85 47 E3 17 F7 FE 13 05 C4 04 22 44 .G$..G........"D
2304AC60 B2 40 92 44 02 49 85 65 93 85 85 BB 41 01 6F E0 .@.D.I.e....A.o.
2304AC70 DF C5                                           ..             

l2304AC72:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.mv	a1,s2
	c.lwsp	zero,00000048
	lui	a0,000230BB
	addi	a0,a0,-0000036C
	c.addi	sp,00000010
	jal	zero,0000000023082388

;; bt_conn_lookup_handle: 2304AC8A
;;   Called from:
;;     2304DFC6 (in le_remote_feat_complete)
;;     2304E034 (in le_conn_update_complete)
;;     2304E13C (in hci_num_completed_packets)
;;     2304E26E (in hci_encrypt_key_refresh_complete)
;;     2304E316 (in hci_encrypt_change)
;;     2304EB2A (in hci_disconn_complete)
;;     2304F77E (in le_ltk_request)
;;     2304F92E (in le_conn_param_req)
;;     2304FF1C (in bt_recv)
bt_conn_lookup_handle proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042015
	c.swsp	s0,0000000C
	addi	s0,s1,+000004CC
	addi	s0,s0,+00000048
	c.swsp	s3,00000084
	c.mv	s3,a0
	c.mv	a0,s0
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	jal	ra,0000000023048E6C
	addi	s1,s1,+000004CC
	c.beqz	a0,000000002304ACC8

l2304ACB0:
	lbu	a5,s1,+0000000D
	c.li	a4,00000001
	c.addi	a5,FFFFFFFC
	andi	a5,a5,+000000FF
	bltu	a4,a5,000000002304ACC8

l2304ACC0:
	lhu	a5,s1,+00000000
	beq	a5,s3,000000002304AD0A

l2304ACC8:
	addi	s0,s1,+000000E8
	c.mv	a0,s0
	jal	ra,0000000023048E6C
	c.li	s2,00000000
	c.beqz	a0,000000002304ACFA

l2304ACD6:
	lbu	a5,s1,+000000AD
	c.li	a4,00000001
	c.addi	a5,FFFFFFFC
	andi	a5,a5,+000000FF
	bltu	a4,a5,000000002304ACFA

l2304ACE6:
	lhu	a5,s1,+000000A0
	bne	a5,s3,000000002304ACFA

l2304ACEE:
	addi	s2,zero,+000000A0

l2304ACF2:
	c.mv	a0,s0
	c.add	s2,s1
	jal	ra,0000000023048E20

l2304ACFA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2304AD0A:
	c.li	s2,00000000
	c.j	000000002304ACF2

;; bt_conn_addr_le_cmp: 2304AD0E
;;   Called from:
;;     2304AD90 (in bt_conn_lookup_state_le.part.7)
;;     2304ADD2 (in bt_conn_lookup_state_le.part.7)
;;     2304AE3E (in bt_conn_lookup_addr_le)
;;     2304AE6A (in bt_conn_lookup_addr_le)
;;     2304B9D0 (in find_ccc_cfg)
;;     2304B9E8 (in find_ccc_cfg)
;;     2304BD04 (in disconnected_cb)
;;     2304CAC0 (in update_ccc)
;;     2304DAFE (in bt_gatt_subscribe)
;;     2304DC16 (in bt_gatt_unsubscribe)
;;     2304DCA8 (in bt_gatt_notification)
;;     2304DD82 (in bt_gatt_connected)
;;     2304DE1A (in bt_gatt_disconnected)
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
	jal	ra,00000000230A37A4
	c.beqz	a0,000000002304AD46

l2304AD28:
	lbu	a5,s0,+00000003
	c.li	a2,00000007
	addi	a1,s0,+0000007E
	c.beqz	a5,000000002304AD38

l2304AD34:
	addi	a1,s0,+00000077

l2304AD38:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,00000000230A37A4

l2304AD46:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; bt_conn_lookup_state_le.part.7: 2304AD50
;;   Called from:
;;     2304AE94 (in bt_conn_lookup_state_le)
bt_conn_lookup_state_le.part.7 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	lui	s3,00042015
	c.swsp	s2,00000008
	c.mv	s2,a0
	addi	a0,s3,+000004CC
	addi	a0,a0,+00000048
	c.swsp	s0,0000000C
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s4,a1
	jal	ra,0000000023048E6C
	addi	s0,s3,+000004CC
	c.beqz	a0,000000002304AD9E

l2304AD78:
	lbu	a4,s0,+00000002
	c.li	a5,00000001
	bne	a4,a5,000000002304AD9E

l2304AD82:
	lui	s1,00042015
	beq	s2,zero,000000002304AD96

l2304AD8A:
	c.mv	a1,s2
	addi	a0,s3,+000004CC
	jal	ra,000000002304AD0E
	c.bnez	a0,000000002304AD9E

l2304AD96:
	lbu	a5,s0,+0000000D
	beq	a5,s4,000000002304ADDC

l2304AD9E:
	addi	a0,s0,+000000E8
	jal	ra,0000000023048E6C
	lui	s1,00042015
	c.beqz	a0,000000002304ADD8

l2304ADAC:
	lbu	a4,s0,+000000A2
	c.li	a5,00000001
	bne	a4,a5,000000002304ADD8

l2304ADB6:
	bne	s2,zero,000000002304ADCC

l2304ADBA:
	lbu	a5,s0,+000000AD
	bne	a5,s4,000000002304ADD8

l2304ADC2:
	addi	a0,s1,+000005B4
	addi	a5,zero,+000000A0
	c.j	000000002304ADE2

l2304ADCC:
	c.mv	a1,s2
	addi	a0,s0,+000000A0
	jal	ra,000000002304AD0E
	c.beqz	a0,000000002304ADBA

l2304ADD8:
	c.li	s0,00000000
	c.j	000000002304ADE8

l2304ADDC:
	addi	a0,s1,+00000514
	c.li	a5,00000000

l2304ADE2:
	c.add	s0,a5
	jal	ra,0000000023048E20

l2304ADE8:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; bt_conn_lookup_addr_le: 2304ADFA
;;   Called from:
;;     2304B162 (in bt_conn_create_le)
;;     2304BCC8 (in disconnected_cb)
;;     2304C0CC (in notify_cb)
;;     2304EE1C (in bt_unpair)
;;     23055C82 (in ble_select_conn)
;;     23055D04 (in ble_disconnect)
bt_conn_lookup_addr_le proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,00042015
	c.swsp	s3,00000084
	addi	s3,s0,+000004CC
	c.swsp	s1,00000088
	addi	s1,s3,+00000048
	c.swsp	s5,00000080
	c.mv	s5,a0
	c.mv	a0,s1
	c.swsp	s2,00000008
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.mv	s4,a1
	jal	ra,0000000023048E6C
	addi	s2,s0,+000004CC
	c.beqz	a0,000000002304AE44

l2304AE26:
	lbu	a4,s3,+00000002
	c.li	a5,00000001
	bne	a4,a5,000000002304AE44

l2304AE30:
	lbu	a5,s3,+00000008
	bne	a5,s5,000000002304AE44

l2304AE38:
	c.mv	a1,s4
	addi	a0,s0,+000004CC
	jal	ra,000000002304AD0E
	c.beqz	a0,000000002304AE8A

l2304AE44:
	addi	s1,s2,+000000E8
	c.mv	a0,s1
	jal	ra,0000000023048E6C
	c.beqz	a0,000000002304AE90

l2304AE50:
	lbu	a4,s2,+000000A2
	c.li	a5,00000001
	bne	a4,a5,000000002304AE90

l2304AE5A:
	lbu	a5,s2,+000000A8
	bne	a5,s5,000000002304AE90

l2304AE62:
	addi	s0,s2,+000000A0
	c.mv	a1,s4
	c.mv	a0,s0
	jal	ra,000000002304AD0E
	c.bnez	a0,000000002304AE90

l2304AE70:
	c.mv	a0,s1
	jal	ra,0000000023048E20

l2304AE76:
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

l2304AE8A:
	addi	s0,s0,+000004CC
	c.j	000000002304AE70

l2304AE90:
	c.li	s0,00000000
	c.j	000000002304AE76

;; bt_conn_lookup_state_le: 2304AE94
;;   Called from:
;;     2304C12A (in notify_cb)
;;     2304C1C2 (in sc_indicate)
;;     2304E3B8 (in find_pending_connect)
;;     2304E3C8 (in find_pending_connect)
;;     2304EEA8 (in bt_id_add)
;;     2304F036 (in bt_id_del)
;;     2304F4AE (in bt_le_scan_update)
;;     2304F4B6 (in bt_le_scan_update)
;;     2304F61C (in le_adv_report)
bt_conn_lookup_state_le proc
	jal	zero,000000002304AD50

;; bt_conn_foreach: 2304AE98
;;   Called from:
;;     2304AF26 (in bt_conn_disconnect_all)
bt_conn_foreach proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042015
	c.swsp	s4,00000004
	c.mv	s4,a0
	addi	a0,s1,+000004CC
	addi	a0,a0,+00000048
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	ra,0000008C
	c.mv	s2,a1
	c.mv	s3,a2
	jal	ra,0000000023048E6C
	addi	s0,s1,+000004CC
	c.beqz	a0,000000002304AED4

l2304AEC2:
	lbu	a5,s0,+00000002
	and	a5,a5,s4
	c.beqz	a5,000000002304AED4

l2304AECC:
	c.mv	a1,s3
	addi	a0,s1,+000004CC
	c.jalr	s2

l2304AED4:
	addi	a0,s0,+000000E8
	jal	ra,0000000023048E6C
	c.beqz	a0,000000002304AF00

l2304AEDE:
	lbu	a0,s0,+000000A2
	and	a0,a0,s4
	c.beqz	a0,000000002304AF00

l2304AEE8:
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

l2304AF00:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; bt_conn_disconnect_all: 2304AF10
;;   Called from:
;;     2304EDEA (in bt_unpair)
bt_conn_disconnect_all proc
	c.addi	sp,FFFFFFE0
	lui	a1,0002304B
	sb	a0,sp,+0000000F
	addi	a2,sp,+0000000F
	addi	a1,a1,+00000100
	c.li	a0,00000007
	c.swsp	ra,0000008C
	jal	ra,000000002304AE98
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; bt_conn_ref: 2304AF30
;;   Called from:
;;     2304483C (in bt_mesh_pb_gatt_open)
;;     23044D0C (in proxy_connected)
bt_conn_ref proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	addi	a0,a0,+00000048
	c.swsp	ra,00000084
	jal	ra,0000000023048E20
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bt_conn_unref: 2304AF4A
;;   Called from:
;;     23043800 (in reset_state)
;;     23044CA0 (in proxy_disconnected)
;;     2304BD3E (in disconnected_cb)
;;     2304C0DC (in notify_cb)
;;     2304C15E (in notify_cb)
;;     2304C192 (in notify_cb)
;;     2304C20E (in sc_indicate)
;;     2304E016 (in le_remote_feat_complete)
;;     2304E090 (in le_conn_update_complete)
;;     2304E1AC (in hci_num_completed_packets)
;;     2304E2CE (in hci_encrypt_key_refresh_complete)
;;     2304E376 (in hci_encrypt_change)
;;     2304EB90 (in hci_disconn_complete)
;;     2304EB94 (in hci_disconn_complete)
;;     2304EE56 (in bt_unpair)
;;     2304EED4 (in bt_id_add)
;;     2304F072 (in bt_id_del)
;;     2304F4CA (in bt_le_scan_update)
;;     2304F4FE (in bt_le_scan_update)
;;     2304F712 (in le_adv_report)
;;     2304F756 (in le_adv_report)
;;     2304F814 (in le_ltk_request)
;;     2304F96E (in le_conn_param_req)
;;     2304FA74 (in enh_conn_complete)
;;     2304FA98 (in enh_conn_complete)
;;     2304FF4C (in bt_recv)
;;     23055CA2 (in ble_select_conn)
;;     23055D2C (in ble_disconnect)
bt_conn_unref proc
	addi	a0,a0,+00000048
	jal	zero,0000000023048E46

;; bt_conn_get_dst: 2304AF52
;;   Called from:
;;     2300100A (in blsync_connected)
;;     23056A2A (in connected)
;;     23056A74 (in disconnected)
;;     23056AAE (in security_changed)
;;     23056AD6 (in auth_passkey_display)
;;     23056AFA (in auth_passkey_entry)
;;     23056B1E (in auth_passkey_confirm)
;;     23056B42 (in auth_cancel)
;;     23056B64 (in auth_pairing_confirm)
;;     23056B8A (in auth_pairing_complete)
;;     23056BC2 (in auth_pairing_failed)
bt_conn_get_dst proc
	addi	a0,a0,+00000070
	c.jr	ra

;; bt_conn_get_info: 2304AF58
;;   Called from:
;;     2304AFFA (in bt_conn_get_remote_dev_info)
;;     2304B018 (in bt_conn_get_remote_dev_info)
bt_conn_get_info proc
	lbu	a5,a0,+00000002
	sb	a5,a1,+00000000
	lbu	a5,a0,+00000003
	sb	a5,a1,+00000001
	lbu	a5,a0,+00000008
	sb	a5,a1,+00000002
	lbu	a4,a0,+00000002
	c.li	a5,00000001
	bne	a4,a5,000000002304AFCA

l2304AF7A:
	addi	a5,a0,+00000070
	c.sw	a1,8(a5)
	lbu	a5,a0,+00000008
	c.li	a4,00000007
	add	a5,a5,a4
	lui	a4,0004200E
	addi	a4,a4,-000002A0
	c.add	a5,a4
	c.sw	a1,4(a5)
	lbu	a3,a0,+00000003
	addi	a4,a0,+0000007E
	addi	a5,a0,+00000077
	c.bnez	a3,000000002304AFC4

l2304AFA4:
	c.sw	a1,12(a5)
	c.sw	a1,16(a4)

l2304AFA8:
	lhu	a5,a0,+00000086
	sh	a5,a1,+00000014
	lhu	a5,a0,+0000008C
	sh	a5,a1,+00000016
	lhu	a5,a0,+0000008E
	c.li	a0,00000000
	sh	a5,a1,+00000018
	c.jr	ra

l2304AFC4:
	c.sw	a1,12(a4)
	c.sw	a1,16(a5)
	c.j	000000002304AFA8

l2304AFCA:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; bt_conn_get_remote_dev_info: 2304AFCE
;;   Called from:
;;     23056C1E (in ble_get_all_conn_info)
bt_conn_get_remote_dev_info proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,00042015
	c.swsp	s3,00000084
	c.mv	s3,a0
	addi	a0,s1,+000004CC
	addi	a0,a0,+00000048
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	ra,0000008C
	jal	ra,0000000023048E6C
	addi	s2,s1,+000004CC
	c.mv	s0,a0
	c.beqz	a0,000000002304B000

l2304AFF4:
	c.mv	a1,s3
	addi	a0,s1,+000004CC
	jal	ra,000000002304AF58
	c.li	s0,00000001

l2304B000:
	addi	a0,s2,+000000E8
	jal	ra,0000000023048E6C
	c.beqz	a0,000000002304B01C

l2304B00A:
	c.li	a1,0000001C
	add	a1,s0,a1
	addi	a0,s2,+000000A0
	c.addi	s0,00000001
	c.add	a1,s3
	jal	ra,000000002304AF58

l2304B01C:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

;; bt_conn_disconnect: 2304B02C
;;   Called from:
;;     23044A90 (in proxy_sar_timeout)
;;     2304548A (in bt_mesh_proxy_prov_disable)
;;     230454A0 (in bt_mesh_proxy_prov_disable)
;;     2304553C (in bt_mesh_proxy_gatt_disconnect)
;;     23045560 (in bt_mesh_proxy_gatt_disconnect)
;;     2304B118 (in disconnect_all)
;;     2304E246 (in update_sec_level)
;;     2304EE50 (in bt_unpair)
;;     23055D18 (in ble_disconnect)
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
	bltu	a4,a5,000000002304B05C

l2304B048:
	lui	a4,000230BB
	c.slli	a5,02
	addi	a4,a4,-00000504
	c.add	a5,a4
	c.lw	a5,0(a5)
	c.mv	s2,a1
	c.mv	s0,a0
	c.jr	a5

l2304B05C:
	addi	s1,zero,-00000039

l2304B060:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2304B070:
	sb	a1,s0,+0000000C
	c.li	a1,00000000
	jal	ra,000000002304AABE
	c.li	a0,00000000
	jal	ra,000000002304F478

l2304B080:
	c.li	s1,00000000
	c.j	000000002304B060

l2304B084:
	sb	a1,s0,+0000000C
	c.li	a1,00000000
	jal	ra,000000002304AABE
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,0000000023050B80

l2304B09E:
	addi	a0,a0,+0000004C
	jal	ra,000000002304986E
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lui	a0,00002000
	c.li	a1,00000000
	c.addi	a0,0000000E
	c.addi16sp	00000020
	jal	zero,000000002304F294

l2304B0BC:
	c.li	a1,00000003
	addi	a0,zero,+00000406
	jal	ra,000000002304E6F6
	c.mv	s3,a0
	addi	s1,zero,-00000037
	c.beqz	a0,000000002304B060

l2304B0CE:
	c.li	a1,00000003
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	lhu	a5,s0,+00000000
	c.mv	a1,s3
	sb	s2,a0,+00000002
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	addi	a0,zero,+00000406
	jal	ra,000000002304F294
	c.mv	s1,a0
	c.bnez	a0,000000002304B060

l2304B0F6:
	c.li	a1,00000005
	c.mv	a0,s0
	jal	ra,000000002304AABE
	c.j	000000002304B060

;; disconnect_all: 2304B100
disconnect_all proc
	lbu	a3,a0,+00000008
	lbu	a4,a1,+00000000
	bne	a3,a4,000000002304B11C

l2304B10C:
	lbu	a4,a0,+0000000D
	c.li	a5,00000004
	bne	a4,a5,000000002304B11C

l2304B116:
	c.li	a1,00000013
	jal	zero,000000002304B02C

l2304B11C:
	c.jr	ra

;; bt_conn_create_le: 2304B11E
;;   Called from:
;;     23055DD8 (in ble_connect)
bt_conn_create_le proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200E
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s1,a1
	c.mv	s2,a0
	c.li	a1,00000001
	addi	a0,s0,-00000234
	c.swsp	ra,0000008C
	jal	ra,000000002304A1CA
	c.bnez	a0,000000002304B140

l2304B13C:
	c.li	s0,00000000
	c.j	000000002304B180

l2304B140:
	c.mv	a0,s1
	jal	ra,000000002304ED86
	c.beqz	a0,000000002304B13C

l2304B148:
	c.li	a1,0000000B
	addi	a0,s0,-00000234
	jal	ra,000000002304A1CA
	c.bnez	a0,000000002304B13C

l2304B154:
	c.li	a1,0000000F
	addi	a0,s0,-00000234
	jal	ra,000000002304A1CA
	c.bnez	a0,000000002304B13C

l2304B160:
	c.mv	a1,s2
	jal	ra,000000002304ADFA
	c.mv	s0,a0
	c.beqz	a0,000000002304B1F6

l2304B16A:
	lbu	a5,a0,+0000000D
	c.li	a4,00000001
	beq	a5,a4,000000002304B18E

l2304B174:
	c.beqz	a5,000000002304B1B0

l2304B176:
	c.addi	a5,FFFFFFFD
	andi	a5,a5,+000000FF
	bltu	a4,a5,000000002304B1EC

l2304B180:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2304B18E:
	lhu	a5,s1,+00000000
	sh	a5,a0,+00000088
	lhu	a5,s1,+00000002
	sh	a5,a0,+0000008A
	lhu	a5,s1,+00000004
	sh	a5,a0,+0000008C
	lhu	a5,s1,+00000006
	sh	a5,a0,+0000008E
	c.j	000000002304B180

l2304B1B0:
	lui	a0,000230BB
	addi	a0,a0,-000004F0
	jal	ra,0000000023082388

l2304B1BC:
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
	jal	ra,000000002304AABE
	c.li	a0,00000001
	jal	ra,000000002304F478
	c.j	000000002304B180

l2304B1EC:
	addi	a0,a0,+00000048
	jal	ra,0000000023048E46
	c.j	000000002304B13C

l2304B1F6:
	lbu	a5,s2,+00000000
	c.li	a4,00000001
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	bltu	a4,a5,000000002304B228

l2304B206:
	c.li	a2,00000007
	c.mv	a1,s2
	c.addi4spn	a0,00000008
	jal	ra,00000000230A382C
	lbu	a5,sp,+00000008
	c.addi	a5,FFFFFFFE
	sb	a5,sp,+00000008

l2304B21A:
	c.addi4spn	a1,00000008
	c.li	a0,00000000
	jal	ra,000000002304AA04
	c.mv	s0,a0
	c.bnez	a0,000000002304B1BC

l2304B226:
	c.j	000000002304B13C

l2304B228:
	c.mv	a1,s2
	jal	ra,000000002304ED6A
	c.mv	a1,a0
	c.li	a2,00000007
	c.addi4spn	a0,00000008
	jal	ra,00000000230A382C
	c.j	000000002304B21A

;; bt_conn_le_conn_update: 2304B23A
;;   Called from:
;;     2304B326 (in send_conn_le_param_update)
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
	jal	ra,000000002304E6F6
	c.beqz	a0,000000002304B2CE

l2304B25A:
	c.mv	s3,a0
	c.li	a1,0000000E
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	c.li	a2,0000000E
	c.li	a1,00000000
	c.mv	s0,a0
	jal	ra,00000000230A3A68
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
	jal	zero,000000002304E790

l2304B2CE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	addi	a0,zero,-00000037
	c.addi16sp	00000020
	c.jr	ra

;; send_conn_le_param_update: 2304B2E2
;;   Called from:
;;     2304B3D2 (in conn_update_timeout)
;;     2304B466 (in bt_conn_le_param_update)
send_conn_le_param_update proc
	lui	a5,0004200E
	lbu	a5,a5,-00000230
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.andi	a5,00000002
	c.mv	s0,a0
	c.mv	s1,a1
	c.bnez	a5,000000002304B310

l2304B2FA:
	lbu	a5,s0,+00000003
	c.beqz	a5,000000002304B322

l2304B300:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,0000000023051A14

l2304B310:
	lbu	a5,a0,+00000094
	c.andi	a5,00000002
	c.beqz	a5,000000002304B2FA

l2304B318:
	c.li	a1,0000000A
	c.addi	a0,00000004
	jal	ra,000000002304A1CA
	c.bnez	a0,000000002304B2FA

l2304B322:
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002304B23A
	c.bnez	a0,000000002304B33C

l2304B32C:
	lhu	a5,s1,+00000004
	sh	a5,s0,+00000090
	lhu	a5,s1,+00000006
	sh	a5,s0,+00000092

l2304B33C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; conn_update_timeout: 2304B346
conn_update_timeout proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	lbu	a5,a0,-0000003F
	c.mv	s0,a0
	addi	s1,a0,-0000004C
	c.bnez	a5,000000002304B396

l2304B35C:
	c.mv	a0,s1
	jal	ra,0000000023051328
	lui	a5,0004200F
	lw	s2,a5,+00000454

l2304B36A:
	bne	s2,zero,000000002304B382

l2304B36E:
	addi	a0,s0,-00000004
	jal	ra,0000000023048E46

l2304B376:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2304B382:
	lw	a5,s2,+00000004
	c.beqz	a5,000000002304B390

l2304B388:
	lbu	a1,s0,-00000040
	c.mv	a0,s1
	c.jalr	a5

l2304B390:
	lw	s2,s2,+00000018
	c.j	000000002304B36A

l2304B396:
	lbu	a4,a0,-0000004A
	c.li	a5,00000001
	bne	a4,a5,000000002304B376

l2304B3A0:
	lbu	a5,a0,-00000049
	c.bnez	a5,000000002304B3B2

l2304B3A6:
	c.lui	a0,00002000
	c.li	a1,00000000
	c.addi	a0,0000000E
	jal	ra,000000002304F294
	c.j	000000002304B376

l2304B3B2:
	addi	s2,a0,-00000048
	addi	a1,zero,-00000201
	c.mv	a0,s2
	jal	ra,0000000023048EE2
	andi	a0,a0,+00000200
	c.beqz	a0,000000002304B3E2

l2304B3C6:
	c.lw	s0,60(a5)
	c.mv	a1,sp
	c.swsp	a5,00000000
	c.lw	s0,68(a5)
	c.swsp	a5,00000080

l2304B3D0:
	c.mv	a0,s1
	jal	ra,000000002304B2E2
	addi	a1,zero,+00000100
	c.mv	a0,s2
	jal	ra,0000000023048EBA
	c.j	000000002304B376

l2304B3E2:
	lui	a5,0004200F
	addi	a5,a5,-0000017C
	c.lw	a5,0(a4)
	c.lw	a5,4(a5)
	c.addi4spn	a1,00000008
	c.swsp	a4,00000004
	c.swsp	a5,00000084
	c.j	000000002304B3D0

;; bt_conn_le_param_update: 2304B3F6
;;   Called from:
;;     23056748 (in ble_conn_update)
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
	bltu	a5,a4,000000002304B450

l2304B412:
	lhu	a4,a1,+00000002
	bltu	a4,a5,000000002304B450

l2304B41A:
	lhu	a4,a0,+0000008C
	lhu	a5,a1,+00000004
	bne	a4,a5,000000002304B450

l2304B426:
	lhu	a4,a0,+0000008E
	lhu	a5,a1,+00000006
	bne	a4,a5,000000002304B450

l2304B432:
	addi	a1,zero,-00000201
	c.addi	a0,00000004
	jal	ra,0000000023048EE2
	addi	s2,zero,-00000045

l2304B440:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2304B450:
	lbu	a5,s0,+00000003
	c.bnez	a5,000000002304B46A

l2304B456:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a1,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002304B2E2

l2304B46A:
	addi	s3,s0,+00000004
	c.li	a1,00000008
	c.mv	a0,s3
	jal	ra,000000002304A1CA
	c.mv	s2,a0
	c.bnez	a0,000000002304B456

l2304B47A:
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
	jal	ra,0000000023048EBA
	c.j	000000002304B440

;; bt_conn_create_pdu_timeout: 2304B4A6
;;   Called from:
;;     2304B506 (in create_frag.isra.11)
;;     230511E6 (in l2cap_create_le_sig_pdu.isra.7)
;;     2305135C (in bt_l2cap_create_pdu_timeout)
;;     230516D2 (in l2cap_chan_le_send)
bt_conn_create_pdu_timeout proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.mv	s1,a1
	c.bnez	a0,000000002304B4BA

l2304B4B2:
	lui	a0,0004200F
	addi	a0,a0,-00000134

l2304B4BA:
	c.mv	a1,a2
	c.swsp	a2,00000084
	jal	ra,0000000023049098
	c.mv	s0,a0
	c.lwsp	a2,00000084
	c.bnez	a0,000000002304B4E2

l2304B4C8:
	lui	a0,000230BB
	c.mv	a1,a2
	addi	a0,a0,-000004C4
	jal	ra,0000000023082388

l2304B4D6:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2304B4E2:
	addi	a1,s1,+00000005
	c.addi	a0,00000008
	jal	ra,00000000230490EC
	c.j	000000002304B4D6

;; create_frag.isra.11: 2304B4EE
;;   Called from:
;;     2304B5FA (in bt_conn_process_tx)
;;     2304B636 (in bt_conn_process_tx)
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
	jal	ra,000000002304B4A6
	lbu	a4,s1,+00000000
	c.li	a5,00000004
	beq	a4,a5,000000002304B52C

l2304B514:
	jal	ra,00000000230491C0
	c.li	s0,00000000

l2304B51A:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2304B52C:
	lui	s1,0004200E
	sw	zero,a0,+00000014
	addi	s1,s1,-000002A0
	lhu	s4,s1,+00000080
	addi	s2,a0,+00000008
	c.mv	s0,a0
	c.mv	a0,s2
	jal	ra,00000000230494E0
	bgeu	s4,a0,000000002304B568

l2304B54C:
	lhu	s1,s1,+00000080

l2304B550:
	lw	a1,s3,+00000008
	c.mv	a2,s1
	c.mv	a0,s2
	jal	ra,00000000230492F0
	c.mv	a1,s1
	addi	a0,s3,+00000008
	jal	ra,00000000230493EC
	c.j	000000002304B51A

l2304B568:
	c.mv	a0,s2
	jal	ra,00000000230494E0
	slli	s1,a0,00000010
	c.srli	s1,00000010
	c.j	000000002304B550

;; bt_conn_process_tx: 2304B576
;;   Called from:
;;     2304FE92 (in hci_tx_thread)
bt_conn_process_tx proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lbu	a5,a0,+0000000D
	c.mv	s0,a0
	c.bnez	a5,000000002304B5AC

l2304B58A:
	addi	a1,zero,-00000041
	c.addi	a0,00000004
	jal	ra,0000000023048EE2
	andi	a0,a0,+00000040
	c.beqz	a0,000000002304B5AC

l2304B59A:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,000000002304A398

l2304B5AC:
	c.li	a1,00000000
	addi	a0,s0,+00000034
	jal	ra,00000000230490A4
	c.mv	s1,a0
	c.bnez	a0,000000002304B5BE

l2304B5BA:
	jal	ra,0000000023000C02

l2304B5BE:
	lui	a5,0004200E
	addi	a4,a5,-000002A0
	lhu	a3,s1,+0000000C
	lhu	a4,a4,+00000080
	addi	s2,a5,-000002A0
	bltu	a4,a3,000000002304B5F2

l2304B5D6:
	c.li	a3,00000000
	c.li	a2,00000000

l2304B5DA:
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002304A1FC
	c.beqz	a0,000000002304B602

l2304B5E4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2304B5F2:
	addi	s3,s0,+0000000D
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,000000002304B4EE
	c.mv	a1,a0
	c.bnez	a0,000000002304B614

l2304B602:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,00000000230491C0

l2304B614:
	c.li	a3,00000001
	c.li	a2,00000000

l2304B618:
	c.mv	a0,s0
	jal	ra,000000002304A1FC
	c.beqz	a0,000000002304B602

l2304B620:
	lhu	a4,s1,+0000000C
	lhu	a5,s2,+00000080
	bltu	a5,a4,000000002304B632

l2304B62C:
	c.li	a3,00000000
	c.li	a2,00000001
	c.j	000000002304B5DA

l2304B632:
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,000000002304B4EE
	c.mv	a1,a0
	c.beqz	a0,000000002304B602

l2304B63E:
	c.li	a3,00000001
	c.li	a2,00000001
	c.j	000000002304B618

;; bt_conn_auth_cb_register: 2304B644
;;   Called from:
;;     23055BAE (in ble_auth)
bt_conn_auth_cb_register proc
	lui	a4,00042026
	c.bnez	a0,000000002304B654

l2304B64A:
	sw	zero,a4,+00000610

l2304B64E:
	c.li	a5,00000000

l2304B650:
	c.mv	a0,a5
	c.jr	ra

l2304B654:
	lw	a3,a4,+00000610
	addi	a5,zero,-00000045
	c.bnez	a3,000000002304B650

l2304B65E:
	c.lw	a0,16(a5)
	c.bnez	a5,000000002304B674

l2304B662:
	c.lw	a0,0(a3)
	c.li	a5,FFFFFFEA
	c.bnez	a3,000000002304B650

l2304B668:
	c.lw	a0,4(a3)
	c.bnez	a3,000000002304B650

l2304B66C:
	c.lw	a0,8(a3)
	c.bnez	a3,000000002304B650

l2304B670:
	c.lw	a0,20(a3)
	c.bnez	a3,000000002304B650

l2304B674:
	sw	a0,a4,+00000610
	c.j	000000002304B64E

;; bt_conn_auth_passkey_entry: 2304B67A
;;   Called from:
;;     230566F2 (in ble_auth_passkey)
bt_conn_auth_passkey_entry proc
	lui	a4,00042026
	lw	a4,a4,+00000610
	c.beqz	a4,000000002304B6A2

l2304B684:
	lbu	a3,a0,+00000002
	c.li	a4,00000001
	c.li	a5,FFFFFFEA
	bne	a3,a4,000000002304B6A4

l2304B690:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023054FDA
	c.lwsp	a2,00000020
	c.li	a5,00000000
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2304B6A2:
	c.li	a5,FFFFFFEA

l2304B6A4:
	c.mv	a0,a5
	c.jr	ra

;; bt_conn_auth_passkey_confirm: 2304B6A8
;;   Called from:
;;     23055B84 (in ble_auth_passkey_confirm)
bt_conn_auth_passkey_confirm proc
	lui	a4,00042026
	lw	a4,a4,+00000610
	c.beqz	a4,000000002304B6C0

l2304B6B2:
	lbu	a4,a0,+00000002
	c.li	a5,00000001
	bne	a4,a5,000000002304B6C0

l2304B6BC:
	jal	zero,00000000230550A0

l2304B6C0:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; bt_conn_auth_cancel: 2304B6C4
;;   Called from:
;;     23055B9E (in ble_auth_cancel)
bt_conn_auth_cancel proc
	lui	a4,00042026
	lw	a4,a4,+00000610
	c.beqz	a4,000000002304B6DC

l2304B6CE:
	lbu	a4,a0,+00000002
	c.li	a5,00000001
	bne	a4,a5,000000002304B6DC

l2304B6D8:
	jal	zero,000000002305511E

l2304B6DC:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; bt_conn_auth_pairing_confirm: 2304B6E0
;;   Called from:
;;     23055B6A (in ble_auth_pairing_confirm)
bt_conn_auth_pairing_confirm proc
	lui	a4,00042026
	lw	a4,a4,+00000610
	c.beqz	a4,000000002304B6F8

l2304B6EA:
	lbu	a4,a0,+00000002
	c.li	a5,00000001
	bne	a4,a5,000000002304B6F8

l2304B6F4:
	jal	zero,000000002305517A

l2304B6F8:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; bt_conn_index: 2304B6FC
;;   Called from:
;;     2304CB4C (in update_ccc)
;;     2304FF36 (in bt_recv)
bt_conn_index proc
	lui	a5,00042015
	addi	a5,a5,+000004CC
	c.sub	a0,a5
	lui	a5,000CCCCD
	addi	a5,a5,-00000333
	c.srai	a0,00000005
	add	a0,a0,a5
	andi	a0,a0,+000000FF
	c.jr	ra

;; bt_conn_init: 2304B71A
;;   Called from:
;;     23050838 (in init_work)
bt_conn_init proc
	lui	a5,0004200F
	lbu	a5,a5,+0000047C
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.bnez	a5,000000002304B73C

l2304B72E:
	lui	a0,0004200F
	c.li	a1,00000002
	addi	a0,a0,-00000134
	jal	ra,0000000023048A3E

l2304B73C:
	lui	s1,0004200F
	lui	s0,00042015
	c.li	a1,00000014
	addi	a0,s1,-00000140
	addi	s0,s0,+0000042C
	jal	ra,0000000023048A3E
	addi	s2,s0,+000000A0

l2304B756:
	c.mv	a1,s0
	addi	a0,s1,-00000140
	c.addi	s0,00000010
	jal	ra,0000000023048A8A
	bne	s2,s0,000000002304B756

l2304B766:
	jal	ra,0000000023058D3E
	jal	ra,00000000230554D4
	c.mv	s2,a0
	c.bnez	a0,000000002304B7CA

l2304B772:
	jal	ra,0000000023051A8E
	lui	s1,00042015
	addi	a0,s1,+000004CC
	addi	a0,a0,+00000048
	jal	ra,0000000023048E6C
	addi	s0,s1,+000004CC
	c.beqz	a0,000000002304B7A6

l2304B78C:
	c.li	a1,00000000
	addi	a0,s0,+00000004
	jal	ra,000000002304A1CA
	c.beqz	a0,000000002304B7A6

l2304B798:
	sb	zero,s0,+00000008
	c.li	a1,00000001
	addi	a0,s1,+000004CC
	jal	ra,000000002304AABE

l2304B7A6:
	addi	a0,s0,+000000E8
	jal	ra,0000000023048E6C
	c.beqz	a0,000000002304B7CA

l2304B7B0:
	c.li	a1,00000000
	addi	a0,s0,+000000A4
	jal	ra,000000002304A1CA
	c.beqz	a0,000000002304B7CA

l2304B7BC:
	sb	zero,s0,+000000A8
	c.li	a1,00000001
	addi	a0,s0,+000000A0
	jal	ra,000000002304AABE

l2304B7CA:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s2
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; bt_rand: 2304B7D8
;;   Called from:
;;     230438E8 (in prov_confirm)
;;     23043EE6 (in prov_start)
;;     23043F62 (in prov_start)
;;     23045874 (in bt_mesh_proxy_adv_start)
;;     2304E9B0 (in le_set_private_addr.isra.19)
;;     2304F208 (in bt_addr_le_create_static)
;;     23052B30 (in display_passkey)
;;     23052E0A (in legacy_request_tk)
;;     2305364E (in bt_smp_distribute_keys)
;;     23053748 (in bt_smp_distribute_keys)
;;     230538FC (in smp_init)
bt_rand proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,0000000023048DC0
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bt_encrypt_le: 2304B7E8
;;   Called from:
;;     230541E4 (in smp_c1)
;;     23054220 (in smp_c1)
;;     23054AAC (in smp_pairing_random)
;;     23054B16 (in smp_pairing_random)
;;     230571C0 (in bt_rpa_irk_matches)
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

l2304B800:
	c.addi	a5,FFFFFFFF
	lbu	a3,a5,+00000001
	c.addi	a4,00000001
	sb	a3,a4,+00000FFF
	bne	a0,a5,000000002304B800

l2304B810:
	c.mv	a1,s2
	c.addi4spn	a0,00000010
	jal	ra,0000000023057476
	c.beqz	a0,000000002304B86E

l2304B81A:
	addi	a5,s1,+0000000F
	c.mv	a4,s2
	c.addi	s1,FFFFFFFF

l2304B822:
	c.addi	a5,FFFFFFFF
	lbu	a3,a5,+00000001
	c.addi	a4,00000001
	sb	a3,a4,+00000FFF
	bne	a5,s1,000000002304B822

l2304B832:
	c.addi4spn	a2,00000010
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,0000000023057550
	c.beqz	a0,000000002304B86E

l2304B83E:
	c.mv	a2,s0
	addi	a5,s0,+0000000F
	addi	a4,s0,+00000007

l2304B848:
	lbu	a1,a5,+00000000
	lbu	a3,a2,+00000000
	c.addi	a5,FFFFFFFF
	sb	a1,a2,+00000000
	sb	a3,a5,+00000001
	c.addi	a2,00000001
	bne	a4,a5,000000002304B848

l2304B860:
	c.li	a0,00000000

l2304B862:
	c.lwsp	a5,00000020
	c.lwsp	a1,00000004
	c.lwsp	t2,00000024
	c.lwsp	gp,00000048
	c.addi16sp	000000D0
	c.jr	ra

l2304B86E:
	c.li	a0,FFFFFFEA
	c.j	000000002304B862

;; bt_encrypt_be: 2304B872
;;   Called from:
;;     23040788 (in bt_mesh_ccm_encrypt)
;;     230407CA (in bt_mesh_ccm_encrypt)
;;     2304085E (in bt_mesh_ccm_encrypt)
;;     23040894 (in bt_mesh_ccm_encrypt)
;;     23040906 (in bt_mesh_ccm_encrypt)
;;     23040934 (in bt_mesh_ccm_encrypt)
;;     2304098C (in bt_mesh_ccm_encrypt)
;;     230409E0 (in bt_mesh_ccm_encrypt)
;;     23040A72 (in bt_mesh_ccm_decrypt)
;;     23040AB4 (in bt_mesh_ccm_decrypt)
;;     23040B32 (in bt_mesh_ccm_decrypt)
;;     23040B68 (in bt_mesh_ccm_decrypt)
;;     23040BFA (in bt_mesh_ccm_decrypt)
;;     23040C40 (in bt_mesh_ccm_decrypt)
;;     23040CC8 (in bt_mesh_ccm_decrypt)
;;     23040D28 (in bt_mesh_ccm_decrypt)
;;     23041014 (in bt_mesh_net_obfuscate)
;;     230458B4 (in bt_mesh_proxy_adv_start)
bt_encrypt_be proc
	c.addi16sp	FFFFFF40
	c.swsp	s1,000000D8
	c.mv	s1,a1
	c.mv	a1,a0
	c.mv	a0,sp
	c.swsp	s0,0000005C
	c.swsp	ra,000000DC
	c.mv	s0,a2
	jal	ra,0000000023057476
	c.beqz	a0,000000002304B896

l2304B888:
	c.mv	a2,sp
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,0000000023057550
	c.li	a5,00000000
	c.bnez	a0,000000002304B898

l2304B896:
	c.li	a5,FFFFFFEA

l2304B898:
	c.lwsp	t5,00000130
	c.lwsp	s10,00000114
	c.lwsp	s6,00000134
	c.mv	a0,a5
	c.addi16sp	000000C0
	c.jr	ra

;; sys_slist_remove: 2304B8A4
;;   Called from:
;;     2304B964 (in gatt_subscription_remove)
;;     2304C3AE (in bt_gatt_service_unregister)
;;     2304DBF2 (in bt_gatt_unsubscribe)
sys_slist_remove proc
	c.lw	a2,0(a5)
	c.bnez	a1,000000002304B8B8

l2304B8A8:
	c.lw	a0,4(a4)
	c.sw	a0,0(a5)
	bne	a4,a2,000000002304B8B2

l2304B8B0:
	c.sw	a0,4(a5)

l2304B8B2:
	sw	zero,a2,+00000000
	c.jr	ra

l2304B8B8:
	c.sw	a1,0(a5)
	c.lw	a0,4(a5)
	bne	a5,a2,000000002304B8B2

l2304B8C0:
	c.sw	a0,4(a1)
	c.j	000000002304B8B2

;; found_attr: 2304B8C4
found_attr proc
	c.sw	a1,0(a0)
	c.li	a0,00000000
	c.jr	ra

;; find_static_attr: 2304B8CA
;;   Called from:
;;     2304C438 (in bt_gatt_attr_value_handle)
;;     2304C7EE (in bt_gatt_notify_cb)
;;     2304C830 (in bt_gatt_notify_cb)
;;     2304C8DE (in bt_gatt_indicate)
;;     2304C920 (in bt_gatt_indicate)
find_static_attr proc
	lui	a5,0004200F
	lui	a2,0004200F
	addi	a5,a5,-0000008C
	c.li	a7,00000001
	addi	a2,a2,-0000007C
	c.li	t3,00000014

l2304B8DE:
	bgeu	a5,a2,000000002304B90C

l2304B8E2:
	lw	t1,a5,+00000004
	c.li	a3,00000000
	c.j	000000002304B8FA

l2304B8EA:
	add	a1,a3,t3
	lw	a6,a5,+00000000
	c.add	a1,a6
	beq	a0,a1,000000002304B90E

l2304B8F8:
	c.addi	a3,00000001

l2304B8FA:
	add	a4,a7,a3
	c.slli	a4,10
	c.srli	a4,00000010
	bne	a3,t1,000000002304B8EA

l2304B906:
	c.addi	a5,00000008
	c.mv	a7,a4
	c.j	000000002304B8DE

l2304B90C:
	c.li	a4,00000000

l2304B90E:
	c.mv	a0,a4
	c.jr	ra

;; gatt_ccc_changed: 2304B912
;;   Called from:
;;     2304C2E0 (in bt_gatt_attr_write_ccc)
;;     2304CB14 (in update_ccc)
gatt_ccc_changed proc
	lhu	a3,a1,+00000012
	lhu	a4,a1,+00000008
	c.mv	a5,a1
	bgeu	a4,a3,000000002304B922

l2304B920:
	c.mv	a4,a3

l2304B922:
	lhu	a3,a5,+00000014
	slli	a1,a4,00000010
	c.srli	a1,00000010
	beq	a3,a1,000000002304B93E

l2304B930:
	lw	t1,a5,+00000018
	sh	a4,a5,+00000014
	beq	t1,zero,000000002304B93E

l2304B93C:
	c.jr	t1

l2304B93E:
	c.jr	ra

;; gatt_indicate_rsp: 2304B940
gatt_indicate_rsp proc
	c.mv	a2,a1
	lw	t1,a4,+00000020
	c.lw	a4,28(a1)
	c.jr	t1

;; sc_restore_rsp: 2304B94A
sc_restore_rsp proc
	c.jr	ra

;; gatt_subscription_remove: 2304B94C
;;   Called from:
;;     2304BB1C (in gatt_write_ccc_rsp)
;;     2304DE3C (in bt_gatt_disconnected)
gatt_subscription_remove proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.mv	s1,a0
	lui	a0,0004200F
	c.swsp	s0,00000004
	addi	a0,a0,+00000468
	c.mv	s0,a2
	addi	a2,a2,+00000030
	c.swsp	ra,00000084
	jal	ra,000000002304B8A4
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

;; gatt_mtu_rsp: 2304B97E
gatt_mtu_rsp proc
	lw	t1,a4,+00000018
	c.mv	a2,a4
	c.jr	t1

;; gatt_write_rsp: 2304B986
gatt_write_rsp proc
	lw	t1,a4,+00000018
	c.mv	a2,a4
	c.jr	t1

;; find_ccc_cfg: 2304B98E
;;   Called from:
;;     2304BF1E (in bt_gatt_attr_read_ccc)
;;     2304C276 (in bt_gatt_attr_write_ccc)
;;     2304C282 (in bt_gatt_attr_write_ccc)
find_ccc_cfg proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.mv	s0,a1
	c.bnez	a0,000000002304B9C0

l2304B99A:
	c.li	a2,00000007
	c.addi4spn	a1,00000008
	addi	a0,s0,+00000001
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	sb	zero,sp,+0000000E
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002304B9F6

l2304B9B2:
	c.li	a0,00000000

l2304B9B4:
	c.add	a0,s0

l2304B9B6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2304B9C0:
	lbu	a4,a0,+00000008
	lbu	a5,a1,+00000000
	c.mv	s1,a0
	bne	a4,a5,000000002304B9D6

l2304B9CE:
	c.addi	a1,00000001
	jal	ra,000000002304AD0E
	c.beqz	a0,000000002304B9B2

l2304B9D6:
	lbu	a4,s1,+00000008
	lbu	a5,s0,+0000000A
	bne	a4,a5,000000002304B9F2

l2304B9E2:
	addi	a1,s0,+0000000B
	c.mv	a0,s1
	jal	ra,000000002304AD0E

l2304B9EC:
	c.bnez	a0,000000002304B9F2

l2304B9EE:
	c.li	a0,0000000A
	c.j	000000002304B9B4

l2304B9F2:
	c.li	a0,00000000
	c.j	000000002304B9B6

l2304B9F6:
	c.li	a2,00000007
	c.addi4spn	a1,00000008
	addi	a0,s0,+0000000B
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	sb	zero,sp,+0000000E
	jal	ra,00000000230A37A4
	c.j	000000002304B9EC

;; gatt_notify: 2304BA0E
;;   Called from:
;;     2304C1A0 (in notify_cb)
;;     2304C870 (in bt_gatt_notify_cb)
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
	jal	ra,0000000023058374
	c.beqz	a0,000000002304BA80

l2304BA32:
	addi	s4,a0,+00000008
	c.mv	s2,a0
	c.li	a1,00000002
	c.mv	a0,s4
	jal	ra,00000000230492DE
	sb	s1,a0,+00000000
	c.srli	s1,00000008
	sb	s1,a0,+00000001
	lhu	a1,s0,+0000000C
	c.mv	s3,a0
	c.mv	a0,s4
	jal	ra,00000000230492DE
	lhu	a2,s0,+0000000C
	c.lw	s0,8(a1)
	addi	a0,s3,+00000002
	jal	ra,00000000230A382C
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
	jal	zero,0000000023058D5A

l2304BA80:
	lui	a0,000230BB
	addi	a0,a0,-00000178
	jal	ra,0000000023082388
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

;; gatt_read_multiple_rsp: 2304BAA0
gatt_read_multiple_rsp proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	a6,a1
	c.mv	s0,a4
	lw	t1,a4,+00000018
	c.bnez	a1,000000002304BAB6

l2304BAB4:
	c.bnez	a3,000000002304BACA

l2304BAB6:
	c.li	a4,00000000
	c.li	a3,00000000
	c.mv	a2,s0
	c.mv	a1,a6

l2304BABE:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	t1

l2304BACA:
	c.mv	a4,a3
	c.mv	a3,a2
	c.mv	a2,s0
	c.jalr	t1
	lw	t1,s0,+00000018
	c.li	a4,00000000
	c.li	a3,00000000
	c.mv	a2,s0
	c.li	a1,00000000
	c.j	000000002304BABE

;; gatt_write_ccc_rsp: 2304BAE0
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
	jal	ra,0000000023048EE2
	c.lwsp	a2,000000C4
	c.beqz	s1,000000002304BB28

l2304BAFC:
	lui	a5,0004200F
	lw	a5,a5,+00000468
	c.beqz	a5,000000002304BB3E

l2304BB06:
	c.lw	a5,0(a1)
	addi	a3,a4,+00000030

l2304BB0C:
	bne	a5,a3,000000002304BB20

l2304BB10:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.mv	a2,a4
	c.addi16sp	00000020
	jal	zero,000000002304B94C

l2304BB20:
	c.beqz	a1,000000002304BB3E

l2304BB22:
	c.mv	a5,a1
	c.lw	a1,0(a1)
	c.j	000000002304BB0C

l2304BB28:
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

l2304BB3E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; gatt_send.constprop.28: 2304BB48
;;   Called from:
;;     2304BBF8 (in gatt_indicate)
;;     2304BE28 (in gatt_write_ccc.constprop.21)
;;     2304CC0E (in bt_gatt_exchange_mtu)
;;     2304D266 (in gatt_read_type_rsp)
;;     2304D696 (in bt_gatt_read)
;;     2304DA28 (in bt_gatt_write)
;;     2304DA82 (in gatt_prepare_write_rsp)
gatt_send.constprop.28 proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.beqz	a3,000000002304BB7C

l2304BB50:
	c.mv	a5,a3
	c.sw	a5,16(a1)
	c.sw	a3,4(a2)
	sw	zero,a3,+00000008
	c.mv	a1,a3
	jal	ra,0000000023058DD2

l2304BB60:
	c.mv	s0,a0
	c.beqz	a0,000000002304BB72

l2304BB64:
	c.mv	a1,a0
	lui	a0,000230BB
	addi	a0,a0,-00000120
	jal	ra,0000000023082388

l2304BB72:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2304BB7C:
	c.li	a2,00000000
	jal	ra,0000000023058D5A
	c.j	000000002304BB60

;; gatt_indicate: 2304BB84
;;   Called from:
;;     2304C18A (in notify_cb)
;;     2304C962 (in bt_gatt_indicate)
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
	jal	ra,0000000023058374
	c.beqz	a0,000000002304BC08

l2304BBA8:
	addi	s2,a0,+00000008
	c.li	a1,00000002
	c.mv	s1,a0
	c.mv	a0,s2
	jal	ra,00000000230492DE
	sb	s3,a0,+00000000
	srli	s3,s3,00000008
	sb	s3,a0,+00000001
	lhu	a1,s0,+00000028
	c.mv	s4,a0
	c.mv	a0,s2
	jal	ra,00000000230492DE
	lhu	a2,s0,+00000028
	c.lw	s0,36(a1)
	addi	a0,s4,+00000002
	jal	ra,00000000230A382C
	c.lw	s0,32(a5)
	c.bnez	a5,000000002304BBFC

l2304BBE0:
	c.li	a3,00000000
	c.li	a2,00000000

l2304BBE4:
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
	jal	zero,000000002304BB48

l2304BBFC:
	lui	a2,0002304C
	c.mv	a3,s0
	addi	a2,a2,-000006C0
	c.j	000000002304BBE4

l2304BC08:
	lui	a0,000230BB
	addi	a0,a0,-000001A4
	jal	ra,0000000023082388
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

;; match_uuid: 2304BC28
match_uuid proc
	c.sw	a1,0(a0)
	c.li	a0,00000000
	c.jr	ra

;; sc_indicate_rsp: 2304BC2E
sc_indicate_rsp proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	lui	s0,00042016
	addi	s0,s0,-000007B4
	c.swsp	s1,00000080
	addi	s1,s0,+00000054
	c.li	a1,FFFFFFFD
	c.mv	a0,s1
	c.swsp	ra,00000084
	jal	ra,0000000023048EE2
	c.mv	a0,s1
	jal	ra,0000000023048E6C
	c.andi	a0,00000001
	c.beqz	a0,000000002304BC66

l2304BC54:
	addi	a0,s0,+00000030
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.li	a1,00000000
	c.addi	sp,00000010
	jal	zero,00000000230498CA

l2304BC66:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

;; disconnected_cb: 2304BC70
disconnected_cb proc
	c.lw	a0,8(a4)
	lui	a5,0002304C
	addi	a5,a5,+0000023A
	bne	a4,a5,000000002304BD50

l2304BC7E:
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
	c.beqz	a5,000000002304BCE8

l2304BC9C:
	c.mv	s1,a1
	c.mv	s2,a0
	addi	s0,s3,+00000001
	addi	s6,s3,+00000015
	c.li	s4,00000000
	addi	s5,a1,+00000070
	c.li	s7,00000004

l2304BCB0:
	lhu	a5,s0,+00000007
	c.beqz	a5,000000002304BCCE

l2304BCB6:
	lbu	a4,s1,+00000008
	lbu	a5,s0,-00000001
	beq	a4,a5,000000002304BD00

l2304BCC2:
	lbu	a0,s0,-00000001
	c.mv	a1,s0
	jal	ra,000000002304ADFA
	c.bnez	a0,000000002304BD34

l2304BCCE:
	c.addi	s0,0000000A
	bne	s0,s6,000000002304BCB0

l2304BCD4:
	bne	s4,zero,000000002304BCE8

l2304BCD8:
	lw	a5,s3,+00000018
	sh	zero,s3,+00000014
	c.beqz	a5,000000002304BCE8

l2304BCE2:
	c.li	a1,00000000
	c.mv	a0,s2
	c.jalr	a5

l2304BCE8:
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

l2304BD00:
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002304AD0E
	c.bnez	a0,000000002304BCC2

l2304BD0A:
	lbu	a0,s1,+00000008
	c.mv	a1,s5
	jal	ra,0000000023050848
	c.bnez	a0,000000002304BD44

l2304BD16:
	c.li	a2,00000007
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	sb	zero,sp,+0000000E
	jal	ra,00000000230A382C
	sb	zero,s0,+00000FFF
	sh	zero,s0,+00000007
	c.j	000000002304BCCE

l2304BD34:
	lbu	a5,a0,+0000000D
	bne	a5,s7,000000002304BD3E

l2304BD3C:
	c.li	s4,00000001

l2304BD3E:
	jal	ra,000000002304AF4A
	c.j	000000002304BCCE

l2304BD44:
	c.li	a2,00000007
	c.mv	a1,s5
	c.mv	a0,s0
	jal	ra,00000000230A382C
	c.j	000000002304BCCE

l2304BD50:
	c.li	a0,00000001
	c.jr	ra

;; find_sc_cfg: 2304BD54
;;   Called from:
;;     2304BFD2 (in sc_save)
;;     2304BFE6 (in sc_save)
;;     2304C062 (in sc_ccc_cfg_write)
;;     2304CB2C (in update_ccc)
find_sc_cfg proc
	c.addi16sp	FFFFFFD0
	c.swsp	s4,0000000C
	c.mv	s4,a0
	lui	a0,00042016
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	ra,00000094
	c.swsp	s7,00000084
	c.mv	s5,a1
	addi	s2,a0,-0000075C
	c.li	s1,00000000
	addi	s0,a0,-0000075C
	c.li	s6,0000000C
	c.li	s3,00000004

l2304BD7E:
	lbu	a5,s2,+00000000
	bne	a5,s4,000000002304BDB2

l2304BD86:
	c.li	a2,00000007
	c.mv	a1,s5
	addi	a0,s2,+00000001
	add	s7,s1,s6
	jal	ra,00000000230A37A4
	c.bnez	a0,000000002304BDB2

l2304BD98:
	add	a0,s0,s7

l2304BD9C:
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

l2304BDB2:
	c.addi	s1,00000001
	c.addi	s2,0000000C
	bne	s1,s3,000000002304BD7E

l2304BDBA:
	c.li	a0,00000000
	c.j	000000002304BD9C

;; gatt_write_ccc.constprop.21: 2304BDBE
;;   Called from:
;;     2304DB3A (in bt_gatt_subscribe)
;;     2304DC64 (in bt_gatt_unsubscribe)
;;     2304DD94 (in bt_gatt_connected)
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
	jal	ra,0000000023058374
	c.beqz	a0,000000002304BE2C

l2304BDE0:
	addi	s3,a0,+00000008
	c.mv	s1,a0
	c.li	a1,00000002
	c.mv	a0,s3
	jal	ra,00000000230492DE
	sb	s0,a0,+00000000
	c.srli	s0,00000008
	sb	s0,a0,+00000001
	c.mv	a1,s5
	c.mv	a0,s3
	jal	ra,000000002304931C
	c.li	a1,00000002
	addi	a0,s2,+0000002C
	jal	ra,0000000023048EBA
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
	lui	a2,0002304C
	addi	a2,a2,-00000520
	c.addi16sp	00000020
	jal	zero,000000002304BB48

l2304BE2C:
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

;; read_appearance: 2304BE40
read_appearance proc
	c.addi	sp,FFFFFFE0
	addi	a5,zero,+00000341
	c.swsp	s0,0000000C
	sh	a5,sp,+0000000E
	c.swsp	ra,0000008C
	c.li	a5,00000002
	c.li	s0,FFFFFFF9
	bltu	a5,a4,000000002304BE70

l2304BE56:
	sub	s0,a5,a4
	bge	a3,s0,000000002304BE60

l2304BE5E:
	c.mv	s0,a3

l2304BE60:
	addi	a5,sp,+0000000E
	c.mv	a0,a2
	add	a1,a5,a4
	c.mv	a2,s0
	jal	ra,00000000230A382C

l2304BE70:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; read_ppcp: 2304BE7A
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
	bltu	a5,a4,000000002304BEAE

l2304BE96:
	sub	s0,a5,a4
	bge	a3,s0,000000002304BEA0

l2304BE9E:
	c.mv	s0,a3

l2304BEA0:
	c.addi4spn	a5,00000008
	c.mv	a0,a2
	add	a1,a5,a4
	c.mv	a2,s0
	jal	ra,00000000230A382C

l2304BEAE:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; read_name: 2304BEB8
read_name proc
	c.addi	sp,FFFFFFE0
	c.swsp	a4,00000004
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.mv	s1,a2
	c.swsp	a3,00000084
	jal	ra,000000002305032A
	c.mv	s2,a0
	jal	ra,00000000230A4220
	c.lwsp	s0,000000C4
	slli	a5,a0,00000010
	c.srli	a5,00000010
	c.li	s0,FFFFFFF9
	bltu	a5,a4,000000002304BF00

l2304BEE0:
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	c.lwsp	a2,000000A4
	and	s0,a0,a5
	c.sub	s0,a4
	bge	a3,s0,000000002304BEF2

l2304BEF0:
	c.mv	s0,a3

l2304BEF2:
	c.and	s0,a5
	c.mv	a2,s0
	add	a1,s2,a4
	c.mv	a0,s1
	jal	ra,00000000230A382C

l2304BF00:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; bt_gatt_attr_read_ccc: 2304BF0E
bt_gatt_attr_read_ccc proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.lw	a1,12(a1)
	c.swsp	a3,00000084
	c.swsp	a4,00000004
	c.mv	s1,a2
	jal	ra,000000002304B98E
	c.lwsp	s0,000000C4
	c.lwsp	a2,000000A4
	c.li	a5,00000000
	c.beqz	a0,000000002304BF2E

l2304BF2A:
	lhu	a5,a0,+00000008

l2304BF2E:
	sh	a5,sp,+0000001E
	c.li	a5,00000002
	c.li	s0,FFFFFFF9
	bltu	a5,a4,000000002304BF54

l2304BF3A:
	sub	s0,a5,a4
	bge	a3,s0,000000002304BF44

l2304BF42:
	c.mv	s0,a3

l2304BF44:
	addi	a5,sp,+0000001E
	c.mv	a2,s0
	add	a1,a5,a4
	c.mv	a0,s1
	jal	ra,00000000230A382C

l2304BF54:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

;; bt_gatt_attr_read_service: 2304BF60
bt_gatt_attr_read_service proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.lw	a1,12(a1)
	c.mv	a0,a2
	lbu	a5,a1,+00000000
	c.bnez	a5,000000002304BFA2

l2304BF70:
	lhu	a5,a1,+00000002
	c.li	s0,FFFFFFF9
	sh	a5,sp,+0000000E
	c.li	a5,00000002
	bltu	a5,a4,000000002304BF98

l2304BF80:
	sub	s0,a5,a4
	bge	a3,s0,000000002304BF8A

l2304BF88:
	c.mv	s0,a3

l2304BF8A:
	addi	a5,sp,+0000000E
	c.mv	a2,s0
	add	a1,a5,a4

l2304BF94:
	jal	ra,00000000230A382C

l2304BF98:
	c.mv	a0,s0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2304BFA2:
	c.li	a5,00000010
	c.addi	a1,00000001
	c.li	s0,FFFFFFF9
	bltu	a5,a4,000000002304BF98

l2304BFAC:
	sub	s0,a5,a4
	bge	a3,s0,000000002304BFB6

l2304BFB4:
	c.mv	s0,a3

l2304BFB6:
	c.mv	a2,s0
	c.add	a1,a4
	c.j	000000002304BF94

;; sc_save: 2304BFBC
;;   Called from:
;;     2304C056 (in sc_ccc_cfg_write)
;;     2304C152 (in notify_cb)
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
	jal	ra,000000002304BD54
	c.mv	s0,a0
	c.bnez	a0,000000002304C018

l2304BFDA:
	c.addi4spn	a1,00000008
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	sb	zero,sp,+0000000E
	jal	ra,000000002304BD54
	c.mv	s0,a0
	c.bnez	a0,000000002304C00A

l2304BFEE:
	lui	a0,000230BB
	addi	a0,a0,-00000104
	jal	ra,0000000023082388

l2304BFFA:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2304C00A:
	sb	s4,a0,+00000000
	c.li	a2,00000007
	c.mv	a1,s3
	c.addi	a0,00000001
	jal	ra,00000000230A382C

l2304C018:
	lhu	a4,s0,+00000008
	lhu	a5,s0,+0000000A
	c.bnez	a4,000000002304C02E

l2304C022:
	c.bnez	a5,000000002304C032

l2304C024:
	sh	s2,s0,+00000008

l2304C028:
	sh	s1,s0,+0000000A
	c.j	000000002304BFFA

l2304C02E:
	bltu	s2,a4,000000002304C038

l2304C032:
	bgeu	a5,s1,000000002304BFFA

l2304C036:
	c.j	000000002304C028

l2304C038:
	sh	s2,s0,+00000008
	c.j	000000002304C032

;; sc_ccc_cfg_write: 2304C03E
sc_ccc_cfg_write proc
	c.addi	sp,FFFFFFF0
	c.mv	a1,a0
	c.swsp	ra,00000084
	c.li	a5,00000002
	lbu	a0,a0,+00000008
	addi	a1,a1,+00000070
	bne	a2,a5,000000002304C062

l2304C052:
	c.li	a3,00000000
	c.li	a2,00000000
	jal	ra,000000002304BFBC

l2304C05A:
	c.lwsp	a2,00000020
	c.li	a0,00000001
	c.addi	sp,00000010
	c.jr	ra

l2304C062:
	jal	ra,000000002304BD54
	c.beqz	a0,000000002304C05A

l2304C068:
	c.li	a2,0000000C
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	c.j	000000002304C05A

;; notify_cb: 2304C072
notify_cb proc
	c.lw	a0,8(a4)
	lui	a5,0002304C
	addi	a5,a5,+0000023A
	beq	a4,a5,000000002304C084

l2304C080:
	c.li	a0,00000001
	c.jr	ra

l2304C084:
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
	lui	a5,0004200E
	addi	a5,a5,-000002C8
	c.mv	s1,a1
	c.mv	s2,a0
	beq	s4,a5,000000002304C100

l2304C0AE:
	addi	s0,s4,+00000001
	addi	s6,s4,+00000015
	c.li	s7,00000004
	c.li	s8,00000002

l2304C0BA:
	lhu	a4,s0,+00000007
	lhu	a5,s1,+00000004
	bne	a4,a5,000000002304C0E0

l2304C0C6:
	lbu	a0,s0,-00000001
	c.mv	a1,s0
	jal	ra,000000002304ADFA
	c.mv	s3,a0
	c.beqz	a0,000000002304C0E0

l2304C0D4:
	lbu	a5,a0,+0000000D
	beq	a5,s7,000000002304C164

l2304C0DC:
	jal	ra,000000002304AF4A

l2304C0E0:
	c.addi	s0,0000000A
	bne	s6,s0,000000002304C0BA

l2304C0E6:
	c.li	a0,00000001

l2304C0E8:
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

l2304C100:
	lui	s0,00042016
	addi	s0,s0,-0000075C
	addi	s5,s0,+00000030

l2304C10C:
	addi	s3,s0,+00000001
	c.li	a2,00000007
	c.addi4spn	a1,00000008
	c.mv	a0,s3
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	sb	zero,sp,+0000000E
	jal	ra,00000000230A37A4
	c.beqz	a0,000000002304C156

l2304C126:
	c.li	a1,00000004
	c.mv	a0,s3
	jal	ra,000000002304AE94
	c.bnez	a0,000000002304C15E

l2304C130:
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
	jal	ra,000000002304BFBC

l2304C156:
	c.addi	s0,0000000C
	bne	s0,s5,000000002304C10C

l2304C15C:
	c.j	000000002304C0AE

l2304C15E:
	jal	ra,000000002304AF4A
	c.j	000000002304C156

l2304C164:
	lw	a5,s4,+00000020
	c.beqz	a5,000000002304C174

l2304C16A:
	c.mv	a1,s2
	c.jalr	a5
	c.bnez	a0,000000002304C174

l2304C170:
	c.mv	a0,s3
	c.j	000000002304C0DC

l2304C174:
	lhu	a1,s2,+00000010
	lhu	a5,s1,+00000004
	c.lw	s1,8(a2)
	c.addi	a1,FFFFFFFF
	c.slli	a1,10
	c.srli	a1,00000010
	c.mv	a0,s3
	bne	a5,s8,000000002304C1A0

l2304C18A:
	jal	ra,000000002304BB84

l2304C18E:
	c.mv	s5,a0
	c.mv	a0,s3
	jal	ra,000000002304AF4A
	blt	s5,zero,000000002304C1A6

l2304C19A:
	sw	zero,s1,+00000000
	c.j	000000002304C0E0

l2304C1A0:
	jal	ra,000000002304BA0E
	c.j	000000002304C18E

l2304C1A6:
	c.li	a0,00000000
	c.j	000000002304C0E8

;; sc_indicate: 2304C1AA
;;   Called from:
;;     2304C3C6 (in bt_gatt_service_unregister)
;;     2304C746 (in bt_gatt_service_register)
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
	lui	s0,00042016
	jal	ra,000000002304AE94
	c.mv	s2,a0
	addi	s0,s0,-000007B4
	c.beqz	a0,000000002304C212

l2304C1CE:
	c.li	a1,00000001
	addi	a0,s0,+00000054
	jal	ra,0000000023048EBA
	c.andi	a0,00000001
	c.bnez	a0,000000002304C212

l2304C1DC:
	sh	s3,s0,+0000002C

l2304C1E0:
	sh	s1,s0,+0000002E

l2304C1E4:
	addi	a0,s0,+00000054
	jal	ra,0000000023048E6C
	c.srai	a0,00000001
	c.andi	a0,00000001
	c.bnez	a0,000000002304C222

l2304C1F2:
	beq	s2,zero,000000002304C222

l2304C1F6:
	addi	a0,s0,+00000030
	c.li	a1,0000000A
	jal	ra,00000000230498CA
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,000000002304AF4A

l2304C212:
	lhu	a4,s0,+0000002C
	lhu	a5,s0,+0000002E
	bltu	s3,a4,000000002304C230

l2304C21E:
	bltu	a5,s1,000000002304C1E0

l2304C222:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2304C230:
	sh	s3,s0,+0000002C
	bgeu	a5,s1,000000002304C1E4

l2304C238:
	c.j	000000002304C1E0

;; bt_gatt_attr_write_ccc: 2304C23A
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
	c.bnez	a4,000000002304C298

l2304C252:
	addi	a4,a3,-00000001
	c.slli	a4,10
	c.srli	a4,00000010
	c.li	a6,00000001
	c.li	s2,FFFFFFF3
	bltu	a6,a4,000000002304C298

l2304C262:
	lbu	s1,a2,+00000000
	bne	a3,a6,000000002304C2AC

l2304C26A:
	c.slli	s1,10
	c.srli	s1,00000010

l2304C26E:
	c.mv	s4,a1
	c.mv	a1,s5
	c.mv	s2,a3
	c.mv	s3,a0
	jal	ra,000000002304B98E
	c.mv	s0,a0
	c.bnez	a0,000000002304C2CA

l2304C27E:
	c.beqz	s1,000000002304C298

l2304C280:
	c.mv	a1,s5
	jal	ra,000000002304B98E
	c.mv	s0,a0
	c.bnez	a0,000000002304C2B6

l2304C28A:
	lui	a0,000230BB
	addi	a0,a0,-00000234
	jal	ra,0000000023082388
	c.li	s2,FFFFFFEF

l2304C298:
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

l2304C2AC:
	lbu	a5,a2,+00000001
	c.slli	a5,08
	c.or	s1,a5
	c.j	000000002304C26E

l2304C2B6:
	c.li	a2,00000007
	addi	a1,s3,+00000070
	c.addi	a0,00000001
	jal	ra,00000000230A382C
	lbu	a5,s3,+00000008
	sb	a5,s0,+00000000

l2304C2CA:
	lw	a5,s5,+0000001C
	c.bnez	a5,000000002304C306

l2304C2D0:
	sh	s1,s0,+00000008
	lhu	a5,s5,+00000014
	beq	a5,s1,000000002304C2E4

l2304C2DC:
	c.mv	a1,s5
	c.mv	a0,s4
	jal	ra,000000002304B912

l2304C2E4:
	c.bnez	s1,000000002304C298

l2304C2E6:
	c.li	a2,00000007
	c.addi4spn	a1,00000008
	addi	a0,s0,+00000001
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	sb	zero,sp,+0000000E
	jal	ra,00000000230A382C
	sb	zero,s0,+00000000
	sh	zero,s0,+00000008
	c.j	000000002304C298

l2304C306:
	c.mv	a2,s1
	c.mv	a1,s4
	c.mv	a0,s3
	c.jalr	a5
	c.bnez	a0,000000002304C2D0

l2304C310:
	c.li	s2,FFFFFFFD
	c.j	000000002304C298

;; bt_gatt_init: 2304C314
;;   Called from:
;;     2304C65E (in bt_gatt_service_register)
;;     23058D3E (in bt_att_init)
bt_gatt_init proc
	lui	a0,0004200F
	c.addi	sp,FFFFFFF0
	c.li	a2,00000001
	c.li	a1,00000000
	addi	a0,a0,+00000460
	c.swsp	ra,00000084
	jal	ra,0000000023048DF0
	c.beqz	a0,000000002304C378

l2304C32A:
	lui	a3,0004200F
	lui	a5,0004200F
	lui	a2,0004200F
	lhu	a4,a3,+00000464
	c.li	a1,00000000
	addi	a5,a5,-0000008C
	addi	a3,a3,+00000464
	addi	a2,a2,-0000007C

l2304C348:
	bltu	a5,a2,000000002304C36A

l2304C34C:
	c.beqz	a1,000000002304C352

l2304C34E:
	sh	a4,a3,+00000000

l2304C352:
	c.lwsp	a2,00000020
	lui	a1,0002304D
	lui	a0,00042016
	addi	a1,a1,-0000065A
	addi	a0,a0,-00000784
	c.addi	sp,00000010
	jal	zero,0000000023049780

l2304C36A:
	c.lw	a5,4(a1)
	c.addi	a5,00000008
	c.add	a4,a1
	c.slli	a4,10
	c.srli	a4,00000010
	c.li	a1,00000001
	c.j	000000002304C348

l2304C378:
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	c.jr	ra

;; bt_gatt_deinit: 2304C37E
;;   Called from:
;;     230500A2 (in bt_disable_action)
bt_gatt_deinit proc
	lui	a0,00042016
	addi	a0,a0,-00000784
	jal	zero,00000000230497D6

;; bt_gatt_service_unregister: 2304C38A
;;   Called from:
;;     2304544E (in bt_mesh_proxy_prov_disable)
;;     23045598 (in bt_mesh_proxy_gatt_disable)
;;     2305BB24 (in bl_ble_sync_stop)
bt_gatt_service_unregister proc
	lui	a4,0004200F
	lw	a5,a4,+00000458
	addi	a2,a0,+00000008
	c.li	a1,00000000

l2304C398:
	c.bnez	a5,000000002304C39E

l2304C39A:
	c.li	a0,FFFFFFFE
	c.jr	ra

l2304C39E:
	bne	a2,a5,000000002304C3D4

l2304C3A2:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	addi	a0,a4,+00000458
	c.swsp	ra,00000084
	jal	ra,000000002304B8A4
	c.lw	s0,4(a5)
	c.li	a3,00000014
	c.lw	s0,0(a4)
	add	a5,a5,a3
	lhu	a0,a4,+00000010
	c.add	a5,a4
	lhu	a1,a5,-00000004
	jal	ra,000000002304C1AA
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

l2304C3D4:
	c.mv	a1,a5
	c.lw	a5,0(a5)
	c.j	000000002304C398

;; bt_gatt_attr_read: 2304C3DA
;;   Called from:
;;     23044A66 (in prov_ccc_read)
;;     2305B94E (in read_data)
bt_gatt_attr_read proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	s0,FFFFFFF9
	bltu	a6,a4,000000002304C400

l2304C3E6:
	sub	s0,a6,a4
	bge	a3,s0,000000002304C3F0

l2304C3EE:
	c.mv	s0,a3

l2304C3F0:
	c.slli	s0,10
	c.srli	s0,00000010
	c.mv	a0,a2
	add	a1,a5,a4
	c.mv	a2,s0
	jal	ra,00000000230A382C

l2304C400:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bt_gatt_attr_value_handle: 2304C40A
;;   Called from:
;;     2304C46E (in bt_gatt_attr_read_chrc)
;;     2304C860 (in bt_gatt_notify_cb)
;;     2304C952 (in bt_gatt_indicate)
bt_gatt_attr_value_handle proc
	c.beqz	a0,000000002304C44C

l2304C40C:
	c.lw	a0,4(a2)
	lui	a3,0002304C
	addi	a3,a3,+00000450
	c.li	a5,00000000
	bne	a2,a3,000000002304C430

l2304C41C:
	c.lw	a0,12(a5)
	lhu	a5,a5,+00000004
	c.bnez	a5,000000002304C430

l2304C424:
	lhu	a5,a0,+00000010
	c.beqz	a5,000000002304C434

l2304C42A:
	c.addi	a5,00000001
	c.slli	a5,10
	c.srli	a5,00000010

l2304C430:
	c.mv	a0,a5
	c.jr	ra

l2304C434:
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	jal	ra,000000002304B8CA
	c.addi	a0,00000001
	c.lwsp	a2,00000020
	slli	a5,a0,00000010
	c.srli	a5,00000010
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2304C44C:
	c.li	a5,00000000
	c.j	000000002304C430

;; bt_gatt_attr_read_chrc: 2304C450
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
	jal	ra,000000002304C40A
	sb	a0,sp,+0000000D
	c.srli	a0,00000008
	sb	a0,sp,+0000000E
	c.lw	s0,0(a1)
	lbu	a5,a1,+00000000
	c.bnez	a5,000000002304C4C6

l2304C484:
	lhu	a5,a1,+00000002
	sb	a5,sp,+0000000F
	c.srli	a5,00000008
	sb	a5,sp,+00000010
	c.li	a5,00000005

l2304C494:
	c.li	s0,FFFFFFF9
	bltu	a5,s1,000000002304C4B6

l2304C49A:
	sub	s0,a5,s1
	bge	s2,s0,000000002304C4A4

l2304C4A2:
	c.mv	s0,s2

l2304C4A4:
	c.slli	s0,10
	c.srli	s0,00000010
	c.addi4spn	a5,0000000C
	c.mv	a2,s0
	add	a1,a5,s1
	c.mv	a0,s3
	jal	ra,00000000230A382C

l2304C4B6:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra

l2304C4C6:
	c.li	a2,00000010
	c.addi	a1,00000001
	addi	a0,sp,+0000000F
	jal	ra,00000000230A382C
	c.li	a5,00000013
	c.j	000000002304C494

;; bt_gatt_foreach_attr_type: 2304C4D6
;;   Called from:
;;     2304C646 (in bt_gatt_foreach_attr)
;;     2304C822 (in bt_gatt_notify_cb)
;;     2304C8AC (in bt_gatt_notify_cb)
;;     2304C912 (in bt_gatt_indicate)
;;     2304C99E (in bt_gatt_indicate)
;;     2305778E (in bt_gatt_foreach_attr)
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
	c.bnez	a4,000000002304C506

l2304C502:
	c.lui	s0,00010000
	c.addi	s0,FFFFFFFF

l2304C506:
	lui	a5,0004200F
	lhu	a5,a5,+00000464
	bgeu	a5,s2,000000002304C5D4

l2304C512:
	lui	a5,0004200F
	lw	a5,a5,+00000458
	c.li	s10,00000014
	addi	s1,a5,-00000008
	c.beqz	a5,000000002304C5AA

l2304C522:
	c.beqz	s1,000000002304C5AA

l2304C524:
	c.lw	s1,8(a5)
	c.beqz	a5,000000002304C53A

l2304C528:
	addi	a4,a5,-00000008
	c.beqz	a4,000000002304C53A

l2304C52E:
	lw	a5,a5,-00000008
	lhu	a5,a5,+00000010
	bgeu	s2,a5,000000002304C62A

l2304C53A:
	c.li	s5,00000000
	c.j	000000002304C624

l2304C53E:
	lw	s1,s11,+00000004
	c.add	s1,s6
	bgeu	s1,s2,000000002304C5D0

l2304C548:
	c.slli	s1,10
	c.srli	s1,00000010

l2304C54C:
	c.addi	s11,00000008
	c.mv	s6,s1

l2304C550:
	bltu	s11,s5,000000002304C53E

l2304C554:
	c.j	000000002304C512

l2304C556:
	c.lwsp	a2,00000064
	c.mv	a0,s3
	jal	ra,0000000023052394
	c.beqz	a0,000000002304C596

l2304C560:
	c.addi	s10,00000001

l2304C562:
	lw	a4,s11,+00000004
	add	s1,s6,s10
	c.slli	s1,10
	c.srli	s1,00000010
	bgeu	s10,a4,000000002304C54C

l2304C572:
	c.li	a5,00000014
	add	a1,s10,a5
	lw	a4,s11,+00000000
	c.li	a2,00000014
	c.addi4spn	a0,0000000C
	c.add	a1,a4
	jal	ra,00000000230A382C
	sh	s1,sp,+0000001C
	bltu	s7,s1,000000002304C5AA

l2304C58E:
	bltu	s1,s2,000000002304C560

l2304C592:
	bne	s3,zero,000000002304C556

l2304C596:
	bne	s4,zero,000000002304C5C8

l2304C59A:
	c.addi	s0,FFFFFFFF
	c.slli	s0,10
	c.srli	s0,00000010
	c.mv	a1,s9
	c.addi4spn	a0,0000000C
	c.jalr	s8
	c.beqz	s0,000000002304C5AA

l2304C5A8:
	c.bnez	a0,000000002304C560

l2304C5AA:
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

l2304C5C8:
	c.lwsp	s8,000000C4
	bne	s4,a4,000000002304C560

l2304C5CE:
	c.j	000000002304C59A

l2304C5D0:
	c.li	s10,00000000
	c.j	000000002304C562

l2304C5D4:
	lui	s11,0004200F
	lui	s5,0004200F
	addi	s11,s11,-0000008C
	c.li	s6,00000001
	addi	s5,s5,-0000007C
	c.j	000000002304C550

l2304C5E8:
	add	s6,s5,s10
	c.lw	s1,0(a5)
	c.add	s6,a5
	lhu	a5,s6,+00000010
	bltu	s7,a5,000000002304C5AA

l2304C5F8:
	bltu	a5,s2,000000002304C622

l2304C5FC:
	bne	s3,zero,000000002304C616

l2304C600:
	bne	s4,zero,000000002304C632

l2304C604:
	c.addi	s0,FFFFFFFF
	c.slli	s0,10
	c.srli	s0,00000010
	c.mv	a1,s9
	c.mv	a0,s6
	c.jalr	s8
	c.beqz	s0,000000002304C5AA

l2304C612:
	c.bnez	a0,000000002304C622

l2304C614:
	c.j	000000002304C5AA

l2304C616:
	lw	a1,s6,+00000000
	c.mv	a0,s3
	jal	ra,0000000023052394
	c.beqz	a0,000000002304C600

l2304C622:
	c.addi	s5,00000001

l2304C624:
	c.lw	s1,4(a5)
	bltu	s5,a5,000000002304C5E8

l2304C62A:
	c.lw	s1,8(s1)
	c.beqz	s1,000000002304C5AA

l2304C62E:
	c.addi	s1,FFFFFFF8
	c.j	000000002304C522

l2304C632:
	lw	a5,s6,+0000000C
	bne	s4,a5,000000002304C622

l2304C63A:
	c.j	000000002304C604

;; bt_gatt_foreach_attr: 2304C63C
;;   Called from:
;;     2304C75C (in bt_gatt_service_register)
;;     2304DD4C (in bt_gatt_connected)
;;     2304DDC0 (in bt_gatt_encrypt_change)
;;     2304DDF0 (in bt_gatt_disconnected)
bt_gatt_foreach_attr proc
	c.mv	a6,a3
	c.mv	a5,a2
	c.li	a4,00000000
	c.li	a3,00000000
	c.li	a2,00000000
	jal	zero,000000002304C4D6

;; bt_gatt_service_register: 2304C64A
;;   Called from:
;;     230453EC (in bt_mesh_proxy_prov_enable)
;;     230454E0 (in bt_mesh_proxy_gatt_enable)
;;     23056F4A (in ble_tp_init)
;;     2305BAD8 (in bl_ble_sync_start)
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
	jal	ra,000000002304C314
	c.lw	s1,0(a5)
	c.lui	s0,00002000
	c.addi4spn	a1,00000004
	c.lw	a5,0(a0)
	addi	a5,s0,-00000800
	sb	zero,sp,+00000004
	sh	a5,sp,+00000006
	jal	ra,0000000023052394
	c.bnez	a0,000000002304C694

l2304C67C:
	addi	a0,zero,-00000045

l2304C680:
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

l2304C694:
	c.lw	s1,0(a5)
	addi	s0,s0,-000007FF
	c.addi4spn	a1,00000008
	c.lw	a5,0(a0)
	sb	zero,sp,+00000008
	sh	s0,sp,+0000000A
	jal	ra,0000000023052394
	c.beqz	a0,000000002304C67C

l2304C6AC:
	lui	s0,0004200F
	lw	a5,s0,+00000458
	lw	s3,s1,+00000000
	lhu	s4,s1,+00000004
	addi	s0,s0,+00000458
	c.bnez	a5,000000002304C6D2

l2304C6C2:
	lui	a5,0004200F
	lhu	s2,a5,+00000464
	c.li	s5,00000000

l2304C6CC:
	lui	s6,0002304C
	c.j	000000002304C70C

l2304C6D2:
	c.lw	s0,4(a5)
	c.beqz	a5,000000002304C7BE

l2304C6D6:
	lw	a4,a5,-00000004
	c.li	a3,00000014
	lw	a5,a5,-00000008
	add	a4,a4,a3
	c.add	a5,a4
	lhu	s2,a5,-00000004
	c.mv	s5,s2
	c.j	000000002304C6CC

l2304C6EE:
	lhu	a1,s3,+00000010
	c.bnez	a1,000000002304C74E

l2304C6F4:
	c.addi	s2,00000001
	slli	a1,s2,00000010
	c.srli	a1,00000010
	sh	a1,s3,+00000010

l2304C700:
	c.addi	s4,FFFFFFFF
	c.slli	s4,10
	c.addi	s3,00000014
	srli	s4,s4,00000010
	c.mv	s2,a1

l2304C70C:
	beq	s3,zero,000000002304C714

l2304C710:
	bne	s4,zero,000000002304C6EE

l2304C714:
	beq	s5,zero,000000002304C722

l2304C718:
	c.lw	s1,0(a5)
	lhu	a2,a5,+00000010
	bgeu	s5,a2,000000002304C77C

l2304C722:
	addi	a5,s1,+00000008

l2304C726:
	c.lw	s0,4(a4)
	sw	zero,s1,+00000008
	c.bnez	a4,000000002304C7A2

l2304C72E:
	c.sw	s0,4(a5)
	c.sw	s0,0(a5)

l2304C732:
	c.lw	s1,4(a5)
	c.li	a3,00000014
	c.lw	s1,0(a4)
	add	a5,a5,a3
	lhu	a0,a4,+00000010
	c.add	a5,a4
	lhu	a1,a5,-00000004
	jal	ra,000000002304C1AA
	c.li	a0,00000000
	c.j	000000002304C680

l2304C74E:
	bltu	s2,a1,000000002304C700

l2304C752:
	c.addi4spn	a3,0000000C
	addi	a2,s6,-0000073C
	c.mv	a0,a1
	c.swsp	zero,00000084
	jal	ra,000000002304C63C
	c.lwsp	a2,000000E4
	c.beqz	a5,000000002304C778

l2304C764:
	lhu	a1,s3,+00000010
	lui	a0,000230BB
	addi	a0,a0,-000001DC
	jal	ra,0000000023082388
	c.li	a0,FFFFFFEA
	c.j	000000002304C680

l2304C778:
	c.mv	a1,s2
	c.j	000000002304C700

l2304C77C:
	c.lw	s0,0(a3)
	c.beqz	a3,000000002304C732

l2304C780:
	addi	a5,a3,-00000008
	c.li	a4,00000000

l2304C786:
	c.beqz	a5,000000002304C732

l2304C788:
	c.lw	a5,0(a1)
	lhu	a1,a1,+00000010
	bgeu	a2,a1,000000002304C7B2

l2304C792:
	addi	a5,s1,+00000008
	c.beqz	a4,000000002304C7A8

l2304C798:
	c.lw	a4,8(a3)
	c.beqz	a3,000000002304C726

l2304C79C:
	c.sw	s1,8(a3)
	c.sw	a4,8(a5)
	c.j	000000002304C732

l2304C7A2:
	c.sw	a4,0(a5)

l2304C7A4:
	c.sw	s0,4(a5)
	c.j	000000002304C732

l2304C7A8:
	c.lw	s0,4(a4)
	c.sw	s1,8(a3)
	c.sw	s0,0(a5)
	c.bnez	a4,000000002304C732

l2304C7B0:
	c.j	000000002304C7A4

l2304C7B2:
	c.lw	a5,8(a1)
	c.beqz	a1,000000002304C732

l2304C7B6:
	c.mv	a4,a5
	addi	a5,a1,-00000008
	c.j	000000002304C786

l2304C7BE:
	lw	a5,zero,+00000000
	c.ebreak

;; bt_gatt_notify_cb: 2304C7C4
;;   Called from:
;;     23044D7E (in proxy_send)
;;     2304C7C2 (in bt_gatt_service_register)
;;     23056F28 (in ble_tp_notify_task)
bt_gatt_notify_cb proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.lw	a1,4(a4)
	c.swsp	a4,00000004
	c.beqz	a0,000000002304C7E2

l2304C7D4:
	lbu	a2,a0,+0000000D
	c.li	a3,00000004
	addi	a5,zero,-00000039
	bne	a2,a3,000000002304C7F8

l2304C7E2:
	lhu	s0,a4,+00000010
	c.mv	s1,a1
	c.mv	s2,a0
	c.bnez	s0,000000002304C806

l2304C7EC:
	c.mv	a0,a4
	jal	ra,000000002304B8CA
	c.mv	s0,a0
	c.bnez	a0,000000002304C806

l2304C7F6:
	c.li	a5,FFFFFFFE

l2304C7F8:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.mv	a0,a5
	c.addi16sp	00000030
	c.jr	ra

l2304C806:
	c.lw	s1,0(a2)
	c.beqz	a2,000000002304C838

l2304C80A:
	lui	a5,0002304C
	c.lui	a1,00010000
	c.mv	a0,s0
	addi	a6,sp,+00000008
	addi	a5,a5,-000003D8
	c.li	a4,00000001
	c.li	a3,00000000
	c.addi	a1,FFFFFFFF
	c.swsp	zero,00000004
	jal	ra,000000002304C4D6
	c.lwsp	s0,00000044
	c.beqz	a0,000000002304C7F6

l2304C82A:
	lhu	s0,a0,+00000010
	c.bnez	s0,000000002304C838

l2304C830:
	jal	ra,000000002304B8CA
	c.mv	s0,a0
	c.beqz	a0,000000002304C7F6

l2304C838:
	c.lwsp	s0,000000E4
	c.addi4spn	a1,0000000C
	c.lw	a5,0(a0)
	c.lui	a5,00003000
	addi	a5,a5,-000007FD
	sb	zero,sp,+0000000C
	sh	a5,sp,+0000000E
	jal	ra,0000000023052394
	c.bnez	a0,000000002304C866

l2304C852:
	c.lwsp	s0,00000044
	c.lw	a0,12(a5)
	lbu	a4,a5,+00000006
	c.li	a5,FFFFFFEA
	c.andi	a4,00000010
	c.beqz	a4,000000002304C7F8

l2304C860:
	jal	ra,000000002304C40A
	c.mv	s0,a0

l2304C866:
	beq	s2,zero,000000002304C878

l2304C86A:
	c.mv	a2,s1
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,000000002304BA0E
	c.mv	a5,a0
	c.j	000000002304C7F8

l2304C878:
	addi	a5,zero,-00000039
	c.swsp	a5,00000088
	c.li	a5,00000001
	sh	a5,sp,+00000018
	c.lui	a5,00003000
	addi	a5,a5,-000006FE
	sh	a5,sp,+00000012
	c.lui	a1,00010000
	lui	a5,0002304C
	addi	a5,a5,+00000072
	addi	a6,sp,+00000014
	c.li	a4,00000001
	c.li	a3,00000000
	c.addi4spn	a2,00000010
	c.addi	a1,FFFFFFFF
	c.mv	a0,s0
	c.swsp	s1,0000008C
	sb	zero,sp,+00000010
	jal	ra,000000002304C4D6
	c.lwsp	s4,000000E4
	c.j	000000002304C7F8

;; bt_gatt_indicate: 2304C8B4
;;   Called from:
;;     2304C9F8 (in sc_process)
;;     2304CB82 (in update_ccc)
bt_gatt_indicate proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.lw	a1,28(a4)
	c.swsp	a4,00000004
	c.beqz	a0,000000002304C8D2

l2304C8C4:
	lbu	a2,a0,+0000000D
	c.li	a3,00000004
	addi	a5,zero,-00000039
	bne	a2,a3,000000002304C8E8

l2304C8D2:
	lhu	s0,a4,+00000010
	c.mv	s1,a1
	c.mv	s2,a0
	c.bnez	s0,000000002304C8F6

l2304C8DC:
	c.mv	a0,a4
	jal	ra,000000002304B8CA
	c.mv	s0,a0
	c.bnez	a0,000000002304C8F6

l2304C8E6:
	c.li	a5,FFFFFFFE

l2304C8E8:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.mv	a0,a5
	c.addi16sp	00000030
	c.jr	ra

l2304C8F6:
	c.lw	s1,24(a2)
	c.beqz	a2,000000002304C928

l2304C8FA:
	lui	a5,0002304C
	c.lui	a1,00010000
	c.mv	a0,s0
	addi	a6,sp,+00000008
	addi	a5,a5,-000003D8
	c.li	a4,00000001
	c.li	a3,00000000
	c.addi	a1,FFFFFFFF
	c.swsp	zero,00000004
	jal	ra,000000002304C4D6
	c.lwsp	s0,00000044
	c.beqz	a0,000000002304C8E6

l2304C91A:
	lhu	s0,a0,+00000010
	c.bnez	s0,000000002304C928

l2304C920:
	jal	ra,000000002304B8CA
	c.mv	s0,a0
	c.beqz	a0,000000002304C8E6

l2304C928:
	c.lwsp	s0,000000E4
	c.addi4spn	a1,0000000C
	c.lw	a5,0(a0)
	c.lui	a5,00003000
	addi	a5,a5,-000007FD
	sb	zero,sp,+0000000C
	sh	a5,sp,+0000000E
	jal	ra,0000000023052394
	c.bnez	a0,000000002304C958

l2304C942:
	c.lw	s1,28(a0)
	c.lw	a0,12(a5)
	lbu	a4,a5,+00000006
	c.li	a5,FFFFFFEA
	andi	a4,a4,+00000020
	c.beqz	a4,000000002304C8E8

l2304C952:
	jal	ra,000000002304C40A
	c.mv	s0,a0

l2304C958:
	beq	s2,zero,000000002304C96A

l2304C95C:
	c.mv	a2,s1
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,000000002304BB84
	c.mv	a5,a0
	c.j	000000002304C8E8

l2304C96A:
	addi	a5,zero,-00000039
	c.swsp	a5,00000088
	c.li	a5,00000002
	sh	a5,sp,+00000018
	c.lui	a5,00003000
	addi	a5,a5,-000006FE
	sh	a5,sp,+00000012
	c.lui	a1,00010000
	lui	a5,0002304C
	addi	a5,a5,+00000072
	addi	a6,sp,+00000014
	c.li	a4,00000001
	c.li	a3,00000000
	c.addi4spn	a2,00000010
	c.addi	a1,FFFFFFFF
	c.mv	a0,s0
	c.swsp	s1,0000008C
	sb	zero,sp,+00000010
	jal	ra,000000002304C4D6
	c.lwsp	s4,000000E4
	c.j	000000002304C8E8

;; sc_process: 2304C9A6
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
	jal	ra,0000000023048EE2
	lui	a5,000230BB
	addi	a5,a5,-000002E8
	sw	a5,s0,+00000FEC
	lui	a5,0002304C
	addi	a5,a5,-000003D2
	sw	a5,s0,+00000FF0
	c.addi4spn	a5,0000000C
	sw	a5,s0,+00000FF4
	c.li	a5,00000004
	sh	zero,s0,+00000FFC
	sh	zero,s0,+00000FFE
	sh	a5,s0,+00000FF8
	c.mv	a1,s2
	c.li	a0,00000000
	jal	ra,000000002304C8B4
	c.bnez	a0,000000002304CA06

l2304C9FE:
	c.li	a1,00000002
	c.mv	a0,s1
	jal	ra,0000000023048EBA

l2304CA06:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

;; bt_gatt_get_mtu: 2304CA12
;;   Called from:
;;     23044DBE (in proxy_segment_and_send)
;;     23055B32 (in exchange_func)
;;     23056E84 (in ble_tp_tx_mtu_size)
;;     2305B0E6 (in __bl_ble_sync_task)
bt_gatt_get_mtu proc
	jal	zero,0000000023058D42

;; bt_gatt_check_perm: 2304CA16
;;   Called from:
;;     2304CACE (in update_ccc)
;;     230578E0 (in read_type_cb)
;;     2305826A (in write_cb)
;;     23058306 (in read_cb)
bt_gatt_check_perm proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	andi	a5,a2,+00000001
	lbu	s0,a1,+00000012
	c.beqz	a5,000000002304CA34

l2304CA28:
	andi	a4,s0,+00000015
	c.li	a5,00000002
	c.beqz	a4,000000002304CA56

l2304CA30:
	c.lw	a1,4(a4)
	c.beqz	a4,000000002304CA56

l2304CA34:
	andi	a5,a2,+00000002
	c.beqz	a5,000000002304CA46

l2304CA3A:
	andi	a4,s0,+0000002A
	c.li	a5,00000003
	c.beqz	a4,000000002304CA56

l2304CA42:
	c.lw	a1,8(a4)
	c.beqz	a4,000000002304CA56

l2304CA46:
	c.and	s0,a2
	andi	a5,s0,+00000030
	c.mv	s1,a0
	c.bnez	a5,000000002304CA62

l2304CA50:
	andi	a5,s0,+0000000C
	c.bnez	a5,000000002304CA70

l2304CA56:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.mv	a0,a5
	c.addi	sp,00000010
	c.jr	ra

l2304CA62:
	jal	ra,000000002304A710
	c.li	a4,00000002
	c.li	a5,00000005
	bltu	a4,a0,000000002304CA50

l2304CA6E:
	c.j	000000002304CA56

l2304CA70:
	lbu	a4,s1,+0000000B
	c.li	a5,00000000
	c.bnez	a4,000000002304CA56

l2304CA78:
	c.li	a5,0000000F
	c.j	000000002304CA56

;; update_ccc: 2304CA7C
update_ccc proc
	c.lw	a0,8(a4)
	lui	a5,0002304C
	addi	a5,a5,+0000023A
	bne	a4,a5,000000002304CBBC

l2304CA8A:
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
	lui	s9,000230BB

l2304CABC:
	c.mv	a1,s2
	c.mv	a0,s0
	jal	ra,000000002304AD0E
	c.bnez	a0,000000002304CAE2

l2304CAC6:
	addi	a2,zero,+0000002A
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,000000002304CA16
	c.beqz	a0,000000002304CB0A

l2304CAD4:
	bne	a0,s7,000000002304CAEA

l2304CAD8:
	c.mv	a1,s1
	addi	a0,s9,-000000E0
	jal	ra,0000000023082388

l2304CAE2:
	c.addi	s2,0000000A
	beq	s2,s6,000000002304CBA0

l2304CAE8:
	c.j	000000002304CABC

l2304CAEA:
	c.li	s3,00000002
	bne	a0,s8,000000002304CAF2

l2304CAF0:
	c.li	s3,00000003

l2304CAF2:
	c.mv	a0,s0
	jal	ra,000000002304A710
	bgeu	a0,s3,000000002304CB0A

l2304CAFC:
	lbu	a5,s4,+00000004
	bgeu	a5,s3,000000002304CAE2

l2304CB04:
	sb	s3,s4,+00000004
	c.j	000000002304CAE2

l2304CB0A:
	lhu	a5,s2,+00000007
	c.beqz	a5,000000002304CAE2

l2304CB10:
	c.mv	a1,s5
	c.mv	a0,s1
	jal	ra,000000002304B912
	lui	a5,0004200E
	addi	a5,a5,-000002C8
	bne	s5,a5,000000002304CBA0

l2304CB24:
	lbu	a0,s0,+00000008
	addi	a1,s0,+00000070
	jal	ra,000000002304BD54
	c.mv	s1,a0
	c.beqz	a0,000000002304CBA0

l2304CB34:
	lhu	a4,a0,+00000008
	lhu	a5,a0,+0000000A
	or	a3,a4,a5
	c.beqz	a3,000000002304CBA0

l2304CB42:
	c.mv	a0,s0
	sh	a5,sp,+0000000E
	sh	a4,sp,+0000000C
	jal	ra,000000002304B6FC
	addi	a1,zero,+0000002C
	add	a0,a0,a1
	lui	a1,00042016
	addi	a1,a1,-0000072C
	lui	a5,000230BB
	addi	a5,a5,-000002E8
	c.add	a1,a0
	c.sw	a1,28(a5)
	lui	a5,0002304C
	addi	a5,a5,-000006B6
	c.sw	a1,32(a5)
	c.addi4spn	a5,0000000C
	c.sw	a1,36(a5)
	c.li	a5,00000004
	sh	a5,a1,+00000028
	c.mv	a0,s0
	jal	ra,000000002304C8B4
	c.beqz	a0,000000002304CB94

l2304CB88:
	lui	a0,000230BB
	addi	a0,a0,-000000C8
	jal	ra,0000000023082388

l2304CB94:
	c.li	a2,00000004
	c.li	a1,00000000
	addi	a0,s1,+00000008
	jal	ra,00000000230A3A68

l2304CBA0:
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

l2304CBBC:
	c.li	a0,00000001
	c.jr	ra

;; bt_gatt_exchange_mtu: 2304CBC0
;;   Called from:
;;     23055AFC (in ble_exchange_mtu)
;;     23056DC4 (in ble_tp_connected)
;;     2305B9D4 (in blsync_connected)
bt_gatt_exchange_mtu proc
	lbu	a3,a0,+0000000D
	c.li	a4,00000004
	bne	a3,a4,000000002304CC12

l2304CBCA:
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.li	a2,00000002
	c.mv	s2,a1
	c.li	a1,00000002
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,0000000023058374
	c.mv	s1,a0
	c.beqz	a0,000000002304CC18

l2304CBE4:
	c.li	a1,00000002
	c.addi	a0,00000008
	jal	ra,00000000230492DE
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
	lui	a2,0002304C
	addi	a2,a2,-00000682
	c.addi	sp,00000010
	jal	zero,000000002304BB48

l2304CC12:
	addi	a0,zero,-00000039
	c.jr	ra

l2304CC18:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,FFFFFFF4
	c.addi	sp,00000010
	c.jr	ra

;; bt_gatt_discover: 2304CC26
;;   Called from:
;;     2304CEA6 (in gatt_discover_next)
;;     23056642 (in ble_discover)
bt_gatt_discover proc
	lbu	a4,a0,+0000000D
	c.li	a5,00000004
	bne	a4,a5,000000002304CE90

l2304CC30:
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
	bltu	a5,a1,000000002304CE82

l2304CC4A:
	lui	a5,000230BB
	addi	a5,a5,-00000328
	c.slli	a1,02
	c.add	a1,a5
	c.lw	a1,0(a5)
	c.jr	a5
2304CC5A                               1C 4C F1 C7 19 46           .L...F
2304CC60 99 45 EF B0 20 71 2A 89 09 E9 51 55             .E.. q*...QU   

l2304CC6C:
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.lwsp	a2,00000178
	c.addi16sp	00000040
	c.jr	ra
2304CC7A                               93 09 85 00 99 45           .....E
2304CC80 4E 85 EF C0 CF E5 83 57 04 02 23 00 F5 00 A1 83 N......W..#.....
2304CC90 A3 00 F5 00 83 57 64 02 23 01 F5 00 A1 83 A3 01 .....Wd.#.......
2304CCA0 F5 00 83 47 84 02 B1 E3 8D 67 93 87 07 80 23 1F ...G.....g....#.
2304CCB0 F1 00 23 0E 01 00 7C 08 83 D7 27 00 23 02 F5 00 ..#...|...'.#...
2304CCC0 A1 83 A3 02 F5 00 1C 4C 83 C5 07 00 85 C9 09 47 .......L.......G
2304CCD0 63 85 E5 04 37 B5 0B 23 13 05 C5 DE EF 50 C3 6A c...7..#.....P.j
2304CCE0 4A 85 EF C0 EF CD                               J.....         

l2304CCE6:
	c.li	a0,FFFFFFEA
	c.j	000000002304CC6C
2304CCEA                               8D 67 93 87 17 80           .g....
2304CCF0 23 1D F1 00 23 0C 01 00 3C 08 7D BF 83 D5 27 00 #...#...<.}...'.
2304CD00 4E 85 EF C0 AF E1 37 D6 04 23 A2 86 13 06 86 EE N.....7..#......
2304CD10 CA 85 26 85 EF E0 5F E3 91 BF 41 46 93 85 17 00 ..&..._...AF....
2304CD20 4E 85 EF C0 EF DC C5 B7 11 46 C1 45 EF B0 80 64 N........F.E...d
2304CD30 2A 89 05 DD 93 09 85 00 91 45 4E 85 EF C0 2F DA *........EN.../.
2304CD40 83 57 04 02 8D 65 23 00 F5 00 A1 83 A3 00 F5 00 .W...e#.........
2304CD50 83 57 64 02 23 01 F5 00 A1 83 A3 01 F5 00 83 47 .Wd.#..........G
2304CD60 84 02 81 EF 93 85 05 80 4E 85 EF C0 2F DB 37 D6 ........N.../.7.
2304CD70 04 23 A2 86 13 06 86 FC 61 BF 93 85 15 80 ED B7 .#......a.......
2304CD80 11 46 A1 45 EF B0 00 5F 2A 89 E3 00 05 EE 93 09 .F.E..._*.......
2304CD90 85 00 91 45 4E 85 EF C0 8F D4 83 57 04 02 8D 65 ...EN......W...e
2304CDA0 23 00 F5 00 A1 83 A3 00 F5 00 83 57 64 02 23 01 #..........Wd.#.
2304CDB0 F5 00 A1 83 A3 01 F5 00 03 47 84 02 89 47 63 1D .........G...Gc.
2304CDC0 F7 00 93 85 25 80 4E 85 EF C0 4F D5 37 D6 04 23 ....%.N...O.7..#
2304CDD0 A2 86 13 06 E6 11 2D BF 93 85 35 80 ED B7 08 4C ......-...5....L
2304CDE0 2D C1 0D 69 93 07 09 80 2C 00 23 04 01 00 23 15 -..i....,.#...#.
2304CDF0 F1 00 EF 50 20 5A E3 08 05 EE 08 4C 93 07 19 80 ...P Z.....L....
2304CE00 6C 00 23 06 01 00 23 17 F1 00 EF 50 A0 58 E3 0C l.#...#....P.X..
2304CE10 05 EC 08 4C 93 07 29 80 0C 08 23 08 01 00 23 19 ...L..)...#...#.
2304CE20 F1 00 EF 50 20 57 E3 00 05 EC 08 4C 13 09 39 80 ...P W.....L..9.
2304CE30 4C 08 23 0A 01 00 23 1B 21 01 EF 50 A0 55 E3 04 L.#...#.!..P.U..
2304CE40 05 EA 11 46 91 45 26 85 EF B0 C0 52 2A 89 E3 0E ...F.E&....R*...
2304CE50 05 E0 91 45 21 05 EF C0 8F C8 83 57 04 02 37 D6 ...E!......W..7.
2304CE60 04 23 A2 86 23 00 F5 00 A1 83 A3 00 F5 00 83 57 .#..#..........W
2304CE70 64 02 13 06 26 45 23 01 F5 00 A1 83 A3 01 F5 00 d...&E#.........
2304CE80 41 BD                                           A.             

l2304CE82:
	lui	a0,000230BB
	addi	a0,a0,-000001FC
	jal	ra,0000000023082388
	c.j	000000002304CCE6

l2304CE90:
	addi	a0,zero,-00000039
	c.jr	ra

;; gatt_discover_next: 2304CE96
;;   Called from:
;;     2304CF2E (in gatt_find_type_rsp)
;;     2304D074 (in gatt_read_group_rsp)
;;     2304D29A (in gatt_read_type_rsp)
;;     2304D442 (in read_included_uuid_cb)
;;     2304D4D4 (in gatt_find_info_rsp)
gatt_discover_next proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.bnez	a1,000000002304CEB6

l2304CEA0:
	c.mv	a1,a2
	c.mv	a0,s0
	c.swsp	a2,00000084
	jal	ra,000000002304CC26
	c.lwsp	a2,00000084
	c.bnez	a0,000000002304CEC4

l2304CEAE:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

l2304CEB6:
	c.lui	a5,00010000
	c.addi	a5,FFFFFFFF
	bne	a1,a5,000000002304CED4

l2304CEBE:
	c.li	a5,FFFFFFFF
	sh	a5,a2,+00000020

l2304CEC4:
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	lw	t1,a2,+0000001C
	c.li	a1,00000000
	c.addi16sp	00000020
	c.jr	t1

l2304CED4:
	c.addi	a1,00000001
	c.slli	a1,10
	lhu	a5,a2,+00000026
	c.srli	a1,00000010
	sh	a1,a2,+00000020
	bgeu	a5,a1,000000002304CEA0

l2304CEE6:
	c.j	000000002304CEC4

;; gatt_find_type_rsp: 2304CEE8
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
	c.bnez	a1,000000002304CFBC

l2304CF04:
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

l2304CF22:
	bltu	s5,a3,000000002304CF4C

l2304CF26:
	c.bnez	a3,000000002304CFBC

l2304CF28:
	c.mv	a2,a4
	c.mv	a1,s0
	c.mv	a0,s8
	jal	ra,000000002304CE96

l2304CF32:
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

l2304CF4C:
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
	c.bnez	a5,000000002304CFB0

l2304CF76:
	sb	zero,sp,+0000001C
	sh	s1,sp,+0000001E
	c.swsp	s2,00000094

l2304CF80:
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
	c.beqz	a0,000000002304CF32

l2304CF9E:
	c.lwsp	a2,000000A4
	c.addi	s4,00000001
	andi	s4,s4,+000000FF
	c.addi	a3,FFFFFFFC
	c.slli	a3,10
	c.srli	a3,00000010
	c.lwsp	s0,000000C4
	c.j	000000002304CF22

l2304CFB0:
	sb	zero,sp,+00000020
	sh	s6,sp,+00000022
	c.swsp	s7,00000094
	c.j	000000002304CF80

l2304CFBC:
	c.lw	a4,28(a5)
	c.mv	a2,a4
	c.li	a1,00000000
	c.mv	a0,s8
	c.jalr	a5
	c.j	000000002304CF32

;; gatt_read_group_rsp: 2304CFC8
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
	c.beqz	a1,000000002304D00E

l2304CFE8:
	c.lw	a4,28(a5)
	c.mv	a2,a4
	c.li	a1,00000000

l2304CFEE:
	c.jalr	a5

l2304CFF0:
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

l2304D00E:
	lbu	a1,a2,+00000000
	c.li	a5,00000006
	c.mv	s5,a0
	c.mv	s3,a2
	beq	a1,a5,000000002304D03A

l2304D01C:
	c.li	a5,00000014
	beq	a1,a5,000000002304D07A

l2304D022:
	lui	a0,000230BB
	addi	a0,a0,-0000014C
	jal	ra,0000000023082388

l2304D02E:
	lw	a5,s2,+0000001C
	c.mv	a2,s2
	c.li	a1,00000000
	c.mv	a0,s5
	c.j	000000002304CFEE

l2304D03A:
	sb	zero,sp,+00000018

l2304D03E:
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

l2304D062:
	lbu	a5,s3,+00000000
	bgeu	s1,a5,000000002304D082

l2304D06A:
	c.bnez	s1,000000002304D02E

l2304D06C:
	c.beqz	s0,000000002304D02E

l2304D06E:
	c.mv	a2,s2
	c.mv	a1,s0
	c.mv	a0,s5
	jal	ra,000000002304CE96
	c.j	000000002304CFF0

l2304D07A:
	c.li	a5,00000002
	sb	a5,sp,+00000018
	c.j	000000002304D03E

l2304D082:
	lbu	s11,s10,+00000001
	lbu	a5,s10,+00000000
	c.swsp	zero,00000094
	c.slli	s11,08
	c.swsp	zero,00000018
	c.swsp	zero,00000098
	c.swsp	zero,0000001C
	c.swsp	zero,0000009C
	or	s11,s11,a5
	beq	s11,zero,000000002304D02E

l2304D09E:
	lbu	s0,s10,+00000003
	lbu	a5,s10,+00000002
	c.slli	s0,08
	c.or	s0,a5
	c.beqz	s0,000000002304D02E

l2304D0AC:
	bltu	s0,s11,000000002304D02E

l2304D0B0:
	lbu	a5,sp,+00000018
	c.beqz	a5,000000002304D0F6

l2304D0B6:
	c.li	a4,00000002
	beq	a5,a4,000000002304D106

l2304D0BC:
	lbu	a5,s2,+00000028
	c.bnez	a5,000000002304D112

l2304D0C2:
	sb	zero,sp,+0000000C
	sh	s4,sp,+0000000E
	c.swsp	s8,00000094

l2304D0CC:
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
	c.beqz	a0,000000002304CFF0

l2304D0E8:
	lbu	a5,s3,+00000000
	c.sub	s1,a5
	c.slli	s1,10
	c.srli	s1,00000010
	c.add	s10,a5
	c.j	000000002304D062

l2304D0F6:
	c.li	a2,00000002
	addi	a1,s10,+00000004
	addi	a0,sp,+0000001A

l2304D100:
	jal	ra,00000000230A382C
	c.j	000000002304D0BC

l2304D106:
	c.li	a2,00000010
	addi	a1,s10,+00000004
	addi	a0,sp,+00000019
	c.j	000000002304D100

l2304D112:
	sb	zero,sp,+00000008
	sh	s6,sp,+0000000A
	c.swsp	s7,00000094
	c.j	000000002304D0CC

;; gatt_read_type_rsp: 2304D11E
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
	c.beqz	a1,000000002304D146

l2304D13C:
	c.lw	a4,28(a5)
	c.mv	a2,a4
	c.li	a1,00000000

l2304D142:
	c.jalr	a5
	c.j	000000002304D272

l2304D146:
	lbu	a4,a4,+00000028
	c.li	a5,00000002
	c.mv	s4,a0
	c.mv	s5,a2
	lbu	a1,a2,+00000000
	bne	a4,a5,000000002304D2AA

l2304D158:
	c.li	a5,00000006
	beq	a1,a5,000000002304D19C

l2304D15E:
	c.li	a5,00000008
	bne	a1,a5,000000002304D2B6

l2304D164:
	sb	zero,sp,+0000002C

l2304D168:
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

l2304D18A:
	lbu	a5,s5,+00000000
	bgeu	s1,a5,000000002304D1A2

l2304D192:
	bne	s1,zero,000000002304D2C2

l2304D196:
	beq	s0,zero,000000002304D2C2

l2304D19A:
	c.j	000000002304D294

l2304D19C:
	sb	a4,sp,+0000002C
	c.j	000000002304D168

l2304D1A2:
	lbu	s0,s2,+00000001
	lbu	a5,s2,+00000000
	c.slli	s0,08
	c.or	s0,a5
	beq	s0,zero,000000002304D2C2

l2304D1B2:
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
	c.beqz	a3,000000002304D214

l2304D1D8:
	beq	a3,s8,000000002304D228

l2304D1DC:
	lw	a1,s3,+00000018
	c.bnez	a1,000000002304D2A0

l2304D1E2:
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
	c.beqz	a0,000000002304D272

l2304D206:
	lbu	a5,s5,+00000000
	c.sub	s1,a5
	c.slli	s1,10
	c.srli	s1,00000010
	c.add	s2,a5
	c.j	000000002304D18A

l2304D214:
	c.swsp	s7,00000008
	lbu	a5,s2,+00000007
	lbu	a4,s2,+00000006
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,sp,+0000002E
	c.j	000000002304D1DC

l2304D228:
	sh	s0,s3,+00000020
	sh	a4,s3,+00000022
	sh	a5,s3,+00000024
	c.li	a2,00000002
	c.li	a1,0000000A
	c.mv	a0,s4
	jal	ra,0000000023058374
	c.mv	s0,a0
	c.beqz	a0,000000002304D28E

l2304D242:
	c.li	a1,00000002
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	lhu	a5,s3,+00000022
	lui	a2,0002304D
	c.mv	a1,s0
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	c.mv	a3,s3
	addi	a2,a2,+000003A6
	c.mv	a0,s4
	jal	ra,000000002304BB48
	slli	s0,a0,00000010
	c.srli	s0,00000010
	c.bnez	s0,000000002304D294

l2304D272:
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

l2304D28E:
	c.li	s0,FFFFFFF4
	c.slli	s0,10
	c.srli	s0,00000010

l2304D294:
	c.mv	a2,s3
	c.mv	a1,s0
	c.mv	a0,s4
	jal	ra,000000002304CE96
	c.j	000000002304D272

l2304D2A0:
	c.mv	a0,s7
	jal	ra,0000000023052394
	c.beqz	a0,000000002304D1E2

l2304D2A8:
	c.j	000000002304D206

l2304D2AA:
	c.li	a4,00000007
	beq	a1,a4,000000002304D2CE

l2304D2B0:
	c.li	a4,00000015
	beq	a1,a4,000000002304D374

l2304D2B6:
	lui	a0,000230BB
	addi	a0,a0,-0000014C
	jal	ra,0000000023082388

l2304D2C2:
	lw	a5,s3,+0000001C
	c.mv	a2,s3
	c.li	a1,00000000
	c.mv	a0,s4
	c.j	000000002304D142

l2304D2CE:
	sb	zero,sp,+00000018

l2304D2D2:
	addi	s1,a3,-00000001
	c.slli	s1,10
	c.lui	s6,00003000
	lui	s7,0002304C
	c.srli	s1,00000010
	addi	s2,s5,+00000001
	c.li	s0,00000000
	addi	s8,sp,+00000018
	addi	s6,s6,-000007FD
	addi	s9,sp,+0000000C
	addi	s7,s7,+00000450
	addi	s10,sp,+00000010

l2304D2FA:
	lbu	a5,s5,+00000000
	bltu	s1,a5,000000002304D192

l2304D302:
	lbu	s0,s2,+00000001
	lbu	a5,s2,+00000000
	c.slli	s0,08
	c.or	s0,a5
	c.beqz	s0,000000002304D2C2

l2304D310:
	lbu	a5,sp,+00000018
	c.beqz	a5,000000002304D37A

l2304D316:
	c.li	a4,00000002
	beq	a5,a4,000000002304D38C

l2304D31C:
	lw	a1,s3,+00000018
	c.bnez	a1,000000002304D39C

l2304D322:
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
	c.beqz	a0,000000002304D272

l2304D366:
	lbu	a5,s5,+00000000
	c.sub	s1,a5
	c.slli	s1,10
	c.srli	s1,00000010
	c.add	s2,a5
	c.j	000000002304D2FA

l2304D374:
	sb	a5,sp,+00000018
	c.j	000000002304D2D2

l2304D37A:
	lbu	a5,s2,+00000006
	lbu	a4,s2,+00000005
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,sp,+0000001A
	c.j	000000002304D31C

l2304D38C:
	c.li	a2,00000010
	addi	a1,s2,+00000005
	addi	a0,sp,+00000019
	jal	ra,00000000230A382C
	c.j	000000002304D31C

l2304D39C:
	c.mv	a0,s8
	jal	ra,0000000023052394
	c.beqz	a0,000000002304D322

l2304D3A4:
	c.j	000000002304D366

;; read_included_uuid_cb: 2304D3A6
read_included_uuid_cb proc
	c.addi16sp	FFFFFFB0
	c.swsp	s0,00000024
	c.swsp	s1,000000A0
	c.swsp	ra,000000A4
	c.swsp	s2,00000020
	c.li	a5,00000010
	c.mv	s1,a0
	c.mv	s0,a4
	beq	a3,a5,000000002304D3DE

l2304D3BA:
	lui	a0,000230BB
	c.mv	a1,a3
	addi	a0,a0,-0000014C
	jal	ra,0000000023082388
	c.lw	s0,28(a5)
	c.mv	a2,s0
	c.li	a1,00000000
	c.mv	a0,s1
	c.jalr	a5

l2304D3D2:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.lwsp	ra,00000048
	c.addi16sp	00000050
	c.jr	ra

l2304D3DE:
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
	jal	ra,00000000230A382C
	c.lw	s0,24(a1)
	c.bnez	a1,000000002304D448

l2304D40A:
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
	c.beqz	a0,000000002304D3D2

l2304D43A:
	lhu	a1,s0,+00000020
	c.mv	a2,s0
	c.mv	a0,s1
	jal	ra,000000002304CE96
	c.j	000000002304D3D2

l2304D448:
	c.mv	a0,s2
	jal	ra,0000000023052394
	c.beqz	a0,000000002304D40A

l2304D450:
	c.j	000000002304D43A

;; gatt_find_info_rsp: 2304D452
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
	c.bnez	a1,000000002304D48E

l2304D472:
	lbu	a1,a2,+00000000
	c.li	a5,00000001
	beq	a1,a5,000000002304D49C

l2304D47C:
	c.li	a5,00000002
	beq	a1,a5,000000002304D4DA

l2304D482:
	lui	a0,000230BB
	addi	a0,a0,-000001B8
	jal	ra,0000000023082388

l2304D48E:
	lw	a5,s4,+0000001C
	c.mv	a2,s4
	c.li	a1,00000000
	c.mv	a0,s7
	c.jalr	a5
	c.j	000000002304D5AE

l2304D49C:
	sb	zero,sp,+00000018
	c.li	s5,00000004

l2304D4A2:
	addi	s0,a3,-00000001
	c.slli	s0,10
	c.srli	s0,00000010
	bltu	s0,s5,000000002304D48E

l2304D4AE:
	srl	s0,s0,s5
	c.lui	s6,00003000
	addi	s1,a2,+00000001
	c.li	a5,00000000
	c.li	s2,00000000
	addi	s3,sp,+00000018
	addi	s8,s6,-00000800
	addi	s9,s6,-000007FF
	addi	s10,s6,-000007FE

l2304D4CC:
	c.bnez	s0,000000002304D4E2

l2304D4CE:
	c.mv	a2,s4
	c.mv	a1,s2
	c.mv	a0,s7
	jal	ra,000000002304CE96
	c.j	000000002304D5AE

l2304D4DA:
	sb	a1,sp,+00000018
	c.li	s5,00000012
	c.j	000000002304D4A2

l2304D4E2:
	lbu	s2,s1,+00000001
	lbu	a4,s1,+00000000
	c.slli	s2,08
	or	s2,s2,a4
	c.beqz	a5,000000002304D4FA

l2304D4F2:
	c.li	a5,00000000

l2304D4F4:
	c.addi	s0,FFFFFFFF
	c.add	s1,s5
	c.j	000000002304D4CC

l2304D4FA:
	lbu	a5,sp,+00000018
	c.beqz	a5,000000002304D566

l2304D500:
	c.li	a4,00000002
	beq	a5,a4,000000002304D578

l2304D506:
	lw	a1,s4,+00000018
	c.bnez	a1,000000002304D588

l2304D50C:
	lbu	a4,s4,+00000028
	c.li	a5,00000004
	bne	a4,a5,000000002304D592

l2304D516:
	c.addi4spn	a1,00000008
	c.mv	a0,s3
	sb	zero,sp,+00000008
	sh	s8,sp,+0000000A
	jal	ra,0000000023052394
	c.beqz	a0,000000002304D4F2

l2304D528:
	c.addi4spn	a1,0000000C
	c.mv	a0,s3
	sb	zero,sp,+0000000C
	sh	s9,sp,+0000000E
	jal	ra,0000000023052394
	c.beqz	a0,000000002304D4F2

l2304D53A:
	c.addi4spn	a1,00000010
	c.mv	a0,s3
	sb	zero,sp,+00000010
	sh	s10,sp,+00000012
	jal	ra,0000000023052394
	c.beqz	a0,000000002304D4F2

l2304D54C:
	addi	a5,s6,-000007FD
	c.addi4spn	a1,00000014
	c.mv	a0,s3
	sb	zero,sp,+00000014
	sh	a5,sp,+00000016
	jal	ra,0000000023052394
	c.bnez	a0,000000002304D592

l2304D562:
	c.li	a5,00000001
	c.j	000000002304D4F4

l2304D566:
	lbu	a5,s1,+00000003
	lbu	a4,s1,+00000002
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,sp,+0000001A
	c.j	000000002304D506

l2304D578:
	c.li	a2,00000010
	addi	a1,s1,+00000002
	addi	a0,sp,+00000019
	jal	ra,00000000230A382C
	c.j	000000002304D506

l2304D588:
	c.mv	a0,s3
	jal	ra,0000000023052394
	c.beqz	a0,000000002304D50C

l2304D590:
	c.j	000000002304D4F2

l2304D592:
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
	c.bnez	a0,000000002304D4F2

l2304D5AE:
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

;; bt_gatt_read: 2304D5CA
;;   Called from:
;;     2304D7BC (in gatt_read_rsp)
;;     23056494 (in ble_read)
bt_gatt_read proc
	lbu	a4,a0,+0000000D
	c.li	a5,00000004
	bne	a4,a5,000000002304D712

l2304D5D4:
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
	c.bnez	a2,000000002304D65C

l2304D5EA:
	c.li	a2,00000004
	c.li	a1,00000008
	jal	ra,0000000023058374
	c.mv	s2,a0
	c.bnez	a0,000000002304D608

l2304D5F6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,FFFFFFF4
	c.addi16sp	00000020
	c.jr	ra

l2304D608:
	addi	s3,a0,+00000008
	c.li	a1,00000004
	c.mv	a0,s3
	jal	ra,00000000230492DE
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
	c.bnez	a5,000000002304D650

l2304D638:
	lhu	a1,a1,+00000002
	c.mv	a0,s3
	jal	ra,000000002304931C

l2304D642:
	lui	a2,0002304D
	c.mv	a3,s0
	addi	a2,a2,+00000718
	c.mv	a1,s2
	c.j	000000002304D686

l2304D650:
	c.li	a2,00000010
	c.addi	a1,00000001
	c.mv	a0,s3
	jal	ra,00000000230492F0
	c.j	000000002304D642

l2304D65C:
	c.li	a5,00000001
	bgeu	a5,a2,000000002304D6B4

l2304D662:
	c.slli	a2,01
	c.li	a1,0000000E
	jal	ra,0000000023058374
	c.mv	s3,a0
	c.beqz	a0,000000002304D5F6

l2304D66E:
	c.li	s2,00000000
	addi	s4,a0,+00000008

l2304D674:
	c.lw	s0,28(a5)
	bltu	s2,a5,000000002304D69A

l2304D67A:
	lui	a2,0002304C
	c.mv	a3,s0
	addi	a2,a2,-00000560
	c.mv	a1,s3

l2304D686:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002304BB48

l2304D69A:
	c.lw	s0,32(a5)
	slli	a4,s2,00000001
	c.mv	a0,s4
	c.add	a5,a4
	lhu	a1,a5,+00000000
	c.addi	s2,00000001
	andi	s2,s2,+000000FF
	jal	ra,000000002304931C
	c.j	000000002304D674

l2304D6B4:
	lhu	a5,a1,+00000022
	c.beqz	a5,000000002304D6EC

l2304D6BA:
	c.li	a2,00000004
	c.li	a1,0000000C
	jal	ra,0000000023058374
	c.mv	s2,a0
	c.beqz	a0,000000002304D5F6

l2304D6C6:
	c.li	a1,00000004
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	lhu	a5,s0,+00000020
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	lhu	a5,s0,+00000022
	sb	a5,a0,+00000002
	c.srli	a5,00000008
	sb	a5,a0,+00000003
	c.j	000000002304D642

l2304D6EC:
	c.li	a2,00000002
	c.li	a1,0000000A
	jal	ra,0000000023058374
	c.mv	s2,a0
	beq	a0,zero,000000002304D5F6

l2304D6FA:
	c.li	a1,00000002
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	lhu	a5,s0,+00000020
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	c.j	000000002304D642

l2304D712:
	addi	a0,zero,-00000039
	c.jr	ra

;; gatt_read_rsp: 2304D718
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
	c.bnez	a1,000000002304D730

l2304D72E:
	c.bnez	a3,000000002304D74E

l2304D730:
	lw	t1,s0,+00000018
	c.li	a4,00000000
	c.li	a3,00000000
	c.mv	a2,s0
	c.mv	a1,a5

l2304D73C:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,s2
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	t1

l2304D74E:
	c.lw	a4,28(a5)
	c.mv	s1,a3
	c.mv	s3,a2
	c.bnez	a5,000000002304D804

l2304D756:
	addi	s1,a3,-00000001
	c.slli	s1,10
	c.srli	s1,00000010
	addi	s4,a2,+00000001

l2304D762:
	c.beqz	s1,000000002304D7B8

l2304D764:
	lbu	a5,s4,+00000001
	lbu	a4,s4,+00000000
	c.slli	a5,08
	c.or	a5,a4
	c.bnez	a5,000000002304D78C

l2304D772:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	lui	a0,000230BB
	addi	a0,a0,-00000134
	c.addi16sp	00000020
	jal	zero,0000000023082388

l2304D78C:
	lbu	a4,s3,+00000000
	bgeu	s1,a4,000000002304D7D2

l2304D794:
	addi	a4,s1,-00000002

l2304D798:
	sh	a5,s0,+00000020
	c.lw	s0,24(a5)
	c.slli	a4,10
	c.srli	a4,00000010
	addi	a3,s4,+00000002
	c.mv	a2,s0
	c.li	a1,00000000
	c.mv	a0,s2
	c.jalr	a5
	c.beqz	a0,000000002304D828

l2304D7B0:
	lbu	a5,s3,+00000000
	bgeu	s1,a5,000000002304D7D6

l2304D7B8:
	c.mv	a1,s0
	c.mv	a0,s2
	jal	ra,000000002304D5CA
	bge	a0,zero,000000002304D828

l2304D7C4:
	lw	t1,s0,+00000018
	c.li	a4,00000000
	c.li	a3,00000000
	c.mv	a2,s0
	c.li	a1,0000000E
	c.j	000000002304D73C

l2304D7D2:
	c.addi	a4,FFFFFFFE
	c.j	000000002304D798

l2304D7D6:
	lhu	a5,s0,+00000020
	lhu	a4,s0,+00000022
	bne	a4,a5,000000002304D7F0

l2304D7E2:
	lw	t1,s0,+00000018
	c.li	a4,00000000
	c.li	a3,00000000
	c.mv	a2,s0
	c.li	a1,00000000
	c.j	000000002304D73C

l2304D7F0:
	c.addi	a5,00000001
	sh	a5,s0,+00000020
	lbu	a5,s3,+00000000
	c.sub	s1,a5
	c.slli	s1,10
	c.srli	s1,00000010
	c.add	s4,a5
	c.j	000000002304D762

l2304D804:
	c.lw	a4,24(a5)
	c.mv	a4,a3
	c.mv	a3,a2
	c.mv	a2,s0
	c.jalr	a5
	c.beqz	a0,000000002304D828

l2304D810:
	c.mv	a0,s2
	jal	ra,0000000023058D42
	c.addi	a0,FFFFFFFF
	blt	s1,a0,000000002304D7E2

l2304D81C:
	lhu	a3,s0,+00000022
	c.add	s1,a3
	sh	s1,s0,+00000022
	c.j	000000002304D7B8

l2304D828:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; bt_gatt_write_without_response_cb: 2304D838
;;   Called from:
;;     23056D24 (in ble_write_without_rsp)
bt_gatt_write_without_response_cb proc
	lbu	t1,a0,+0000000D
	c.li	a7,00000004
	bne	t1,a7,000000002304D8D0

l2304D842:
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
	c.bnez	a5,000000002304D8C4

l2304D868:
	c.beqz	a4,000000002304D8C4

l2304D86A:
	addi	a2,a3,+0000000E
	addi	a1,zero,+000000D2

l2304D872:
	jal	ra,0000000023058374
	c.mv	s3,a0
	c.beqz	a0,000000002304D8D6

l2304D87A:
	addi	s7,a0,+00000008
	c.li	a1,00000002
	c.mv	a0,s7
	jal	ra,00000000230492DE
	sb	s2,a0,+00000000
	srli	s2,s2,00000008
	c.mv	a2,s1
	sb	s2,a0,+00000001
	c.mv	a1,s6
	c.addi	a0,00000002
	jal	ra,00000000230A382C
	c.mv	a1,s1
	c.mv	a0,s7
	jal	ra,00000000230492DE
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
	jal	zero,0000000023058D5A

l2304D8C4:
	addi	a2,s1,+00000002
	addi	a1,zero,+00000052
	c.mv	a0,s0
	c.j	000000002304D872

l2304D8D0:
	addi	a0,zero,-00000039
	c.jr	ra

l2304D8D6:
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

;; bt_gatt_write: 2304D8EE
;;   Called from:
;;     2304DA88 (in gatt_prepare_write_rsp)
;;     230563F0 (in ble_write)
bt_gatt_write proc
	lbu	a4,a0,+0000000D
	c.li	a5,00000004
	bne	a4,a5,000000002304DA2C

l2304D8F8:
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
	c.beqz	a5,000000002304D932

l2304D910:
	lhu	s2,s0,+00000024
	c.mv	a0,s1
	jal	ra,0000000023058D42
	c.addi	a0,FFFFFFFB
	bltu	s2,a0,000000002304D990

l2304D920:
	c.mv	a0,s1
	jal	ra,0000000023058D42
	c.addi	a0,FFFFFFFB
	slli	s2,a0,00000010
	srli	s2,s2,00000010
	c.j	000000002304D994

l2304D932:
	lhu	s2,a1,+00000024
	jal	ra,0000000023058D42
	c.addi	a0,FFFFFFFD
	bltu	a0,s2,000000002304D910

l2304D940:
	lhu	a2,s0,+00000024
	c.li	a1,00000012
	c.mv	a0,s1
	c.addi	a2,00000002
	jal	ra,0000000023058374
	c.mv	s2,a0
	c.beqz	a0,000000002304D9A4

l2304D952:
	addi	s3,a0,+00000008
	c.li	a1,00000002
	c.mv	a0,s3
	jal	ra,00000000230492DE
	lhu	a5,s0,+0000001C
	c.addi	a0,00000002
	sb	a5,a0,+00000FFE
	c.srli	a5,00000008
	sb	a5,a0,+00000FFF
	lhu	a2,s0,+00000024
	c.lw	s0,32(a1)
	jal	ra,00000000230A382C
	lhu	a1,s0,+00000024
	c.mv	a0,s3
	jal	ra,00000000230492DE
	lui	a2,0002304C
	c.mv	a3,s0
	addi	a2,a2,-0000067A
	c.mv	a1,s2
	c.j	000000002304DA18

l2304D990:
	lhu	s2,s0,+00000024

l2304D994:
	addi	a2,s2,+00000004
	c.li	a1,00000016
	c.mv	a0,s1
	jal	ra,0000000023058374
	c.mv	s3,a0
	c.bnez	a0,000000002304D9B6

l2304D9A4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.li	a0,FFFFFFF4
	c.addi16sp	00000020
	c.jr	ra

l2304D9B6:
	addi	s4,a0,+00000008
	c.li	a1,00000004
	c.mv	a0,s4
	jal	ra,00000000230492DE
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
	jal	ra,00000000230A382C
	c.mv	a1,s2
	c.mv	a0,s4
	jal	ra,00000000230492DE
	lhu	a5,s0,+0000001E
	lhu	a0,s0,+00000024
	lui	a2,0002304E
	c.add	a5,s2
	sh	a5,s0,+0000001E
	c.lw	s0,32(a5)
	c.mv	a3,s0
	addi	a2,a2,-000005CE
	c.add	a5,s2
	sub	s2,a0,s2
	c.sw	s0,32(a5)
	sh	s2,s0,+00000024
	c.mv	a1,s3

l2304DA18:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.mv	a0,s1
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002304BB48

l2304DA2C:
	addi	a0,zero,-00000039
	c.jr	ra

;; gatt_prepare_write_rsp: 2304DA32
gatt_prepare_write_rsp proc
	c.beqz	a1,000000002304DA3C

l2304DA34:
	lw	t1,a4,+00000018
	c.mv	a2,a4
	c.jr	t1

l2304DA3C:
	lhu	a5,a4,+00000024
	c.bnez	a5,000000002304DA86

l2304DA42:
	c.addi	sp,FFFFFFF0
	c.li	a2,00000001
	c.li	a1,00000018
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.mv	s1,a0
	c.mv	s0,a4
	jal	ra,0000000023058374
	c.mv	s2,a0
	c.beqz	a0,000000002304DA8C

l2304DA5C:
	c.li	a1,00000001
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	c.li	a5,00000001
	sb	a5,a0,+00000000
	c.mv	a3,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.mv	a1,s2
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	lui	a2,0002304C
	addi	a2,a2,-0000067A
	c.addi	sp,00000010
	jal	zero,000000002304BB48

l2304DA86:
	c.mv	a1,a4
	jal	zero,000000002304D8EE

l2304DA8C:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

;; bt_gatt_subscribe: 2304DA98
;;   Called from:
;;     230562F8 (in ble_subscribe)
bt_gatt_subscribe proc
	lbu	a4,a0,+0000000D
	c.li	a5,00000004
	bne	a4,a5,000000002304DB56

l2304DAA2:
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	lui	s2,0004200F
	c.swsp	s0,0000000C
	lw	s0,s2,+00000468
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	addi	s2,s2,+00000468
	c.beqz	s0,000000002304DAC2

l2304DABE:
	addi	s0,s0,-00000030

l2304DAC2:
	c.mv	s1,a1
	c.mv	s3,a0
	c.li	s4,00000000

l2304DAC8:
	c.bnez	s0,000000002304DAF4

l2304DACA:
	beq	s4,zero,000000002304DB2E

l2304DACE:
	c.li	a2,00000007
	addi	a1,s3,+00000070
	addi	a0,s1,+00000018
	jal	ra,00000000230A382C
	lw	a4,s2,+00000000
	addi	a5,s1,+00000030
	sw	a5,s2,+00000000
	c.sw	s1,48(a4)
	lw	a4,s2,+00000004
	c.beqz	a4,000000002304DB50

l2304DAF0:
	c.li	a0,00000000
	c.j	000000002304DB40

l2304DAF4:
	beq	s0,s1,000000002304DB5C

l2304DAF8:
	addi	a1,s0,+00000018
	c.mv	a0,s3
	jal	ra,000000002304AD0E
	c.bnez	a0,000000002304DB1E

l2304DB04:
	lhu	a4,s0,+00000024
	lhu	a5,s1,+00000024
	bne	a4,a5,000000002304DB1E

l2304DB10:
	lhu	a4,s0,+00000028
	lhu	a5,s1,+00000028
	bltu	a4,a5,000000002304DB1E

l2304DB1C:
	c.li	s4,00000001

l2304DB1E:
	addi	a5,s0,+00000030
	c.beqz	a5,000000002304DACA

l2304DB24:
	c.lw	s0,48(s0)
	c.beqz	s0,000000002304DACA

l2304DB28:
	addi	s0,s0,-00000030
	c.j	000000002304DAC8

l2304DB2E:
	lhu	a2,s1,+00000028
	lhu	a1,s1,+00000026
	c.mv	a3,s1
	c.mv	a0,s3
	jal	ra,000000002304BDBE
	c.beqz	a0,000000002304DACE

l2304DB40:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2304DB50:
	sw	a5,s2,+00000004
	c.j	000000002304DAF0

l2304DB56:
	addi	a0,zero,-00000039
	c.jr	ra

l2304DB5C:
	addi	a0,zero,-00000045
	c.j	000000002304DB40

;; bt_gatt_unsubscribe: 2304DB62
;;   Called from:
;;     2304DCC8 (in bt_gatt_notification)
;;     23055A80 (in ble_unsubscribe)
bt_gatt_unsubscribe proc
	lbu	a4,a0,+0000000D
	c.li	a5,00000004
	bne	a4,a5,000000002304DC68

l2304DB6C:
	c.addi16sp	FFFFFFC0
	lui	a5,0004200F
	c.swsp	s0,0000001C
	lw	s0,a5,+00000468
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
	c.beqz	s0,000000002304DBA0

l2304DB90:
	addi	s2,s0,-00000030
	beq	s2,zero,000000002304DBE0

l2304DB98:
	c.lw	s0,0(s0)
	c.beqz	s0,000000002304DBA0

l2304DB9C:
	addi	s0,s0,-00000030

l2304DBA0:
	c.mv	s1,a1
	c.mv	s3,a0
	c.li	s4,00000000
	c.li	s5,00000000
	c.li	s6,00000000
	addi	s8,a1,+0000002C

l2304DBAE:
	bne	s2,zero,000000002304DBE4

l2304DBB2:
	beq	s5,zero,000000002304DC6E

l2304DBB6:
	beq	s6,zero,000000002304DC40

l2304DBBA:
	c.lw	s1,32(a5)
	c.li	a3,00000000
	c.li	a2,00000000
	c.mv	a1,s1
	c.mv	a0,s3
	c.jalr	a5
	c.li	a0,00000000

l2304DBC8:
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

l2304DBE0:
	c.li	s0,00000000
	c.j	000000002304DBA0

l2304DBE4:
	addi	a2,s2,+00000030
	bne	s2,s1,000000002304DC0E

l2304DBEC:
	c.mv	a1,s4
	addi	a0,s7,+00000468
	jal	ra,000000002304B8A4
	c.mv	a0,s8
	jal	ra,0000000023048E6C
	c.andi	a0,00000002
	c.beqz	a0,000000002304DC08

l2304DC00:
	c.mv	a1,s1
	c.mv	a0,s3
	jal	ra,0000000023058E22

l2304DC08:
	c.mv	a2,s4
	c.li	s5,00000001
	c.j	000000002304DC2C

l2304DC0E:
	addi	a1,s2,+00000018
	c.mv	a0,s3
	c.swsp	a2,00000084
	jal	ra,000000002304AD0E
	c.lwsp	a2,00000084
	c.bnez	a0,000000002304DC2C

l2304DC1E:
	lhu	a4,s2,+00000024
	lhu	a5,s1,+00000024
	bne	a4,a5,000000002304DC2C

l2304DC2A:
	c.li	s6,00000001

l2304DC2C:
	c.li	a5,00000000
	c.beqz	s0,000000002304DC38

l2304DC30:
	c.lw	s0,48(a5)
	c.beqz	a5,000000002304DC38

l2304DC34:
	addi	a5,a5,-00000030

l2304DC38:
	c.mv	s2,s0
	c.mv	s4,a2
	c.mv	s0,a5
	c.j	000000002304DBAE

l2304DC40:
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
	jal	zero,000000002304BDBE

l2304DC68:
	addi	a0,zero,-00000039
	c.jr	ra

l2304DC6E:
	c.li	a0,FFFFFFEA
	c.j	000000002304DBC8

;; bt_gatt_notification: 2304DC72
;;   Called from:
;;     23057776 (in att_notify)
;;     23058410 (in att_indicate)
bt_gatt_notification proc
	lui	a5,0004200F
	lw	a5,a5,+00000468
	c.beqz	a5,000000002304DCEE

l2304DC7C:
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	addi	s1,a5,-00000030
	c.beqz	s1,000000002304DCDC

l2304DC92:
	c.lw	a5,0(s0)
	c.mv	s5,a3
	c.mv	s4,a2
	c.mv	s3,a1
	c.mv	s2,a0
	c.beqz	s0,000000002304DCA2

l2304DC9E:
	addi	s0,s0,-00000030

l2304DCA2:
	addi	a1,s1,+00000018
	c.mv	a0,s2
	jal	ra,000000002304AD0E
	c.bnez	a0,000000002304DCCC

l2304DCAE:
	lhu	a5,s1,+00000024
	bne	a5,s3,000000002304DCCC

l2304DCB6:
	c.lw	s1,32(a5)
	c.mv	a3,s5
	c.mv	a2,s4
	c.mv	a1,s1
	c.mv	a0,s2
	c.jalr	a5
	c.bnez	a0,000000002304DCCC

l2304DCC4:
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,000000002304DB62

l2304DCCC:
	c.beqz	s0,000000002304DCDC

l2304DCCE:
	c.lw	s0,48(a5)
	c.beqz	a5,000000002304DCD6

l2304DCD2:
	addi	a5,a5,-00000030

l2304DCD6:
	c.mv	s1,s0
	c.mv	s0,a5
	c.j	000000002304DCA2

l2304DCDC:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2304DCEE:
	c.jr	ra

;; bt_gatt_connected: 2304DCF0
;;   Called from:
;;     2304A358 (in notify_connected)
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
	jal	ra,0000000023050848
	c.beqz	a0,000000002304DD3C

l2304DD14:
	lbu	a2,s1,+00000008
	lui	s0,000230BB
	c.lwsp	a2,000000A4
	c.li	a4,00000000
	c.beqz	a2,000000002304DD2E

l2304DD22:
	c.li	a1,00000004
	c.addi4spn	a0,00000010
	jal	ra,00000000230571EC
	c.lwsp	a2,000000A4
	c.addi4spn	a4,00000010

l2304DD2E:
	addi	a2,s0,-00000218
	addi	a1,zero,+00000024
	c.addi4spn	a0,0000001C
	jal	ra,0000000023055944

l2304DD3C:
	lui	a2,0002304D
	c.lui	a1,00010000
	c.addi	a1,FFFFFFFF
	c.addi4spn	a3,00000014
	addi	a2,a2,-00000584
	c.li	a0,00000001
	jal	ra,000000002304C63C
	c.mv	a0,s1
	jal	ra,000000002304A710
	lbu	a1,sp,+00000018
	bgeu	a0,a1,000000002304DD64

l2304DD5E:
	c.mv	a0,s1
	jal	ra,000000002304A69C

l2304DD64:
	lui	a5,0004200F
	lw	a5,a5,+00000468
	addi	s0,a5,-00000030
	c.bnez	a5,000000002304DDA0

l2304DD72:
	c.lwsp	a3,00000020
	c.lwsp	s1,00000004
	c.lwsp	t0,00000024
	c.addi16sp	00000050
	c.jr	ra

l2304DD7C:
	addi	a1,s0,+00000018
	c.mv	a0,s1
	jal	ra,000000002304AD0E
	c.bnez	a0,000000002304DD98

l2304DD88:
	lhu	a2,s0,+00000028
	lhu	a1,s0,+00000026
	c.mv	a3,s0
	c.mv	a0,s1
	jal	ra,000000002304BDBE

l2304DD98:
	c.lw	s0,48(s0)
	c.beqz	s0,000000002304DD72

l2304DD9C:
	addi	s0,s0,-00000030

l2304DDA0:
	c.bnez	s0,000000002304DD7C

l2304DDA2:
	c.j	000000002304DD72

;; bt_gatt_encrypt_change: 2304DDA4
;;   Called from:
;;     23058098 (in bt_att_encrypt_change)
bt_gatt_encrypt_change proc
	c.addi	sp,FFFFFFE0
	lui	a2,0002304D
	c.lui	a1,00010000
	c.swsp	a0,00000004
	c.li	a5,00000001
	c.addi4spn	a3,00000008
	addi	a2,a2,-00000584
	c.addi	a1,FFFFFFFF
	c.li	a0,00000001
	c.swsp	ra,0000008C
	sb	a5,sp,+0000000C
	jal	ra,000000002304C63C
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; bt_gatt_change_aware: 2304DDCA
;;   Called from:
;;     2305880A (in att_read_rsp)
;;     23058BB6 (in att_write_rsp.constprop.10)
bt_gatt_change_aware proc
	c.li	a0,00000001
	c.jr	ra

;; bt_gatt_disconnected: 2304DDCE
;;   Called from:
;;     2305800C (in bt_att_disconnected)
;;     2305806C (in att_timeout)
bt_gatt_disconnected proc
	c.addi	sp,FFFFFFE0
	lui	a2,0002304C
	c.lui	a1,00010000
	c.swsp	s2,00000008
	c.mv	a3,a0
	c.mv	s2,a0
	addi	a2,a2,-00000390
	c.addi	a1,FFFFFFFF
	c.li	a0,00000001
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	jal	ra,000000002304C63C
	lui	a5,0004200F
	lw	a5,a5,+00000468
	c.beqz	a5,000000002304DE6E

l2304DDFE:
	addi	s0,a5,-00000030
	c.beqz	s0,000000002304DE6E

l2304DE04:
	c.lw	a5,0(s1)
	c.beqz	s1,000000002304DE0C

l2304DE08:
	addi	s1,s1,-00000030

l2304DE0C:
	c.li	s3,00000000
	addi	s4,s2,+00000070

l2304DE12:
	addi	s5,s0,+00000018
	c.mv	a1,s5
	c.mv	a0,s2
	jal	ra,000000002304AD0E
	c.beqz	a0,000000002304DE26

l2304DE20:
	addi	s3,s0,+00000030
	c.j	000000002304DE40

l2304DE26:
	lbu	a0,s2,+00000008
	c.mv	a1,s4
	jal	ra,0000000023050848
	c.bnez	a0,000000002304DE50

l2304DE32:
	sh	zero,s0,+00000028
	c.mv	a2,s0
	c.mv	a1,s3
	c.mv	a0,s2
	jal	ra,000000002304B94C

l2304DE40:
	c.beqz	s1,000000002304DE6E

l2304DE42:
	c.lw	s1,48(a5)
	c.beqz	a5,000000002304DE4A

l2304DE46:
	addi	a5,a5,-00000030

l2304DE4A:
	c.mv	s0,s1
	c.mv	s1,a5
	c.j	000000002304DE12

l2304DE50:
	addi	a0,s0,+0000002C
	jal	ra,0000000023048E6C
	c.andi	a0,00000001
	c.bnez	a0,000000002304DE32

l2304DE5C:
	lbu	a5,s0,+00000018
	c.beqz	a5,000000002304DE20

l2304DE62:
	c.li	a2,00000007
	c.mv	a1,s4
	c.mv	a0,s5
	jal	ra,00000000230A382C
	c.j	000000002304DE20

l2304DE6E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

;; le_dhkey_complete: 2304DE80
le_dhkey_complete proc
	lui	a5,0004200F
	lw	a4,a5,+00000470
	c.beqz	a4,000000002304DEB0

l2304DE8A:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	addi	s0,a5,+00000470
	c.lw	a0,8(a5)
	c.li	a0,00000000
	lbu	a3,a5,+00000000
	c.bnez	a3,000000002304DEA2

l2304DE9E:
	addi	a0,a5,+00000001

l2304DEA2:
	c.jalr	a4
	c.lwsp	a2,00000020
	sw	zero,s0,+00000000
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

l2304DEB0:
	c.jr	ra

;; hci_data_buf_overflow: 2304DEB2
hci_data_buf_overflow proc
	c.lw	a0,8(a5)
	lui	a0,000230BB
	addi	a0,a0,+00000388
	lbu	a1,a5,+00000000
	jal	zero,0000000023082388

;; atomic_test_bit: 2304DEC4
;;   Called from:
;;     2304DF88 (in slave_update_conn_param)
;;     2304E8D4 (in set_le_scan_enable)
;;     2304EB4C (in hci_disconn_complete)
;;     2304EB56 (in hci_disconn_complete)
;;     2304EEE0 (in bt_id_add)
;;     2304EEF2 (in bt_id_add)
;;     2304F07C (in bt_id_del)
;;     2304F08E (in bt_id_del)
;;     2304F3D0 (in start_le_scan)
;;     2304F3FA (in start_le_scan)
;;     2304F48E (in bt_le_scan_update)
;;     2304F4A4 (in bt_le_scan_update)
;;     2304F60A (in le_adv_report)
;;     2304F62A (in le_adv_report)
;;     2304FBAA (in enh_conn_complete)
;;     2304FBCA (in enh_conn_complete)
;;     23050164 (in bt_disable)
;;     2305016E (in bt_disable)
;;     230501D4 (in bt_set_name)
;;     23050202 (in bt_set_name)
;;     230503D2 (in bt_id_create)
;;     230504E6 (in init_work)
;;     23050898 (in bt_le_adv_start_internal)
;;     2305094E (in bt_le_adv_start_internal)
;;     23050B9E (in bt_le_adv_stop)
;;     23050BC0 (in bt_le_adv_stop)
;;     23050BCA (in bt_le_adv_stop)
;;     23050BF6 (in bt_le_scan_start)
;;     23050C6C (in bt_le_scan_start)
;;     23050ECE (in bt_pub_key_get)
;;     23050F20 (in bt_dh_key_gen)
;;     23050F2A (in bt_dh_key_gen)
atomic_test_bit proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	a1,00000084
	jal	ra,0000000023048E6C
	c.lwsp	a2,00000064
	c.lwsp	t3,00000020
	sra	a0,a0,a1
	c.andi	a0,00000001
	c.addi16sp	00000020
	c.jr	ra

;; bt_addr_le_copy: 2304DEDC
;;   Called from:
;;     2304EA00 (in hci_id_add)
;;     2304EFAE (in bt_id_add)
;;     2304F12C (in bt_id_del)
;;     2304F258 (in id_create.isra.25)
;;     2304F27A (in id_create.isra.25)
;;     2304F5AC (in le_adv_report)
;;     2304F63A (in le_adv_report)
;;     2304F6BA (in le_adv_report)
;;     2304F736 (in le_adv_report)
;;     2304FAB6 (in enh_conn_complete)
;;     2304FB32 (in enh_conn_complete)
;;     2304FB42 (in enh_conn_complete)
;;     2304FB8E (in enh_conn_complete)
;;     2304FBA2 (in enh_conn_complete)
;;     2304FBE4 (in enh_conn_complete)
;;     2304FBF8 (in enh_conn_complete)
;;     2304FCE8 (in le_legacy_conn_complete)
;;     2304FD30 (in le_legacy_conn_complete)
;;     23050A20 (in bt_le_adv_start_internal)
;;     23050B4C (in bt_get_local_public_address)
;;     23050B64 (in bt_get_local_ramdon_address)
bt_addr_le_copy proc
	c.li	a2,00000007
	jal	zero,00000000230A382C

;; le_pkey_complete: 2304DEE2
le_pkey_complete proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	lui	s0,0004200E
	lw	s2,a0,+00000008
	addi	s0,s0,-00000234
	addi	a1,zero,-00000021
	c.mv	a0,s0
	jal	ra,0000000023048EE2
	lbu	a5,s2,+00000000
	c.bnez	a5,000000002304DF26

l2304DF0A:
	lui	a0,00042016
	addi	a1,s2,+00000001
	addi	a2,zero,+00000040
	addi	a0,a0,+000007E4
	jal	ra,00000000230A382C
	c.li	a1,00000010
	c.mv	a0,s0
	jal	ra,0000000023048EBA

l2304DF26:
	lui	a5,0004200F
	lw	s1,a5,+00000478
	lui	s3,00042016
	addi	s0,a5,+00000478
	addi	s3,s3,+000007E4

l2304DF3A:
	c.bnez	s1,000000002304DF4E

l2304DF3C:
	sw	zero,s0,+00000000
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l2304DF4E:
	lbu	a4,s2,+00000000
	c.lw	s1,0(a5)
	c.mv	a0,s3
	c.beqz	a4,000000002304DF5A

l2304DF58:
	c.li	a0,00000000

l2304DF5A:
	c.jalr	a5
	c.lw	s1,4(s1)
	c.j	000000002304DF3A

;; atomic_set_bit_to: 2304DF60
;;   Called from:
;;     2304E582 (in hci_cmd_done)
;;     2304F44A (in start_le_scan)
;;     23050A96 (in bt_le_adv_start_internal)
;;     23050AA6 (in bt_le_adv_start_internal)
;;     23050AB4 (in bt_le_adv_start_internal)
;;     23050CA4 (in bt_le_scan_start)
;;     23050CB4 (in bt_le_scan_start)
atomic_set_bit_to proc
	c.mv	a5,a1
	c.li	a1,00000001
	sll	a1,a1,a5
	c.srli	a5,00000005
	c.slli	a5,02
	c.add	a0,a5
	c.beqz	a2,000000002304DF74

l2304DF70:
	jal	zero,0000000023048EBA

l2304DF74:
	xori	a1,a1,-00000001
	jal	zero,0000000023048EE2

;; slave_update_conn_param: 2304DF7C
;;   Called from:
;;     2304E006 (in le_remote_feat_complete)
;;     2304FC5A (in enh_conn_complete)
slave_update_conn_param proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a1,00000008
	c.mv	s0,a0
	c.addi	a0,00000004
	c.swsp	ra,00000084
	jal	ra,000000002304DEC4
	c.bnez	a0,000000002304DFA2

l2304DF8E:
	addi	a0,s0,+0000004C
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lui	a1,00001000
	addi	a1,a1,+00000388
	c.addi	sp,00000010
	jal	zero,00000000230498CA

l2304DFA2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; le_remote_feat_complete: 2304DFAA
le_remote_feat_complete proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	c.swsp	s2,00000000
	lw	s2,a0,+00000008
	lbu	s0,s2,+00000002
	lbu	a1,s2,+00000001
	c.slli	s0,08
	c.or	s0,a1
	c.mv	a0,s0
	jal	ra,000000002304AC8A
	c.bnez	a0,000000002304DFE4

l2304DFCC:
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	lui	a0,000230BB
	addi	a0,a0,+00000510
	c.addi	sp,00000010
	jal	zero,0000000023082388

l2304DFE4:
	lbu	a5,s2,+00000000
	c.mv	s1,a0
	c.bnez	a5,000000002304DFFA

l2304DFEC:
	c.li	a2,00000008
	addi	a1,s2,+00000003
	addi	a0,a0,+00000094
	jal	ra,00000000230A382C

l2304DFFA:
	lbu	a4,s1,+00000003
	c.li	a5,00000001
	bne	a4,a5,000000002304E00A

l2304E004:
	c.mv	a0,s1
	jal	ra,000000002304DF7C

l2304E00A:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	c.mv	a0,s1
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	jal	zero,000000002304AF4A

;; le_conn_update_complete: 2304E01A
le_conn_update_complete proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.lw	a0,8(s1)
	lbu	a1,s1,+00000002
	lbu	a5,s1,+00000001
	c.slli	a1,08
	c.or	a1,a5
	c.mv	a0,a1
	c.swsp	a1,00000084
	jal	ra,000000002304AC8A
	c.lwsp	a2,00000064
	c.bnez	a0,000000002304E052

l2304E03C:
	lui	a0,000230BB
	addi	a0,a0,+00000510
	jal	ra,0000000023082388

l2304E048:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.addi16sp	00000030
	c.jr	ra

l2304E052:
	lbu	a5,s1,+00000000
	c.mv	s0,a0
	c.bnez	a5,000000002304E096

l2304E05A:
	lbu	a5,s1,+00000004
	lbu	a4,s1,+00000003
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,a0,+00000086
	lbu	a5,s1,+00000006
	lbu	a4,s1,+00000005
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,a0,+0000008C
	lbu	a5,s1,+00000008
	lbu	a4,s1,+00000007
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,a0,+0000008E
	jal	ra,000000002304A45E

l2304E08E:
	c.mv	a0,s0
	jal	ra,000000002304AF4A
	c.j	000000002304E048

l2304E096:
	c.li	a4,0000001A
	bne	a5,a4,000000002304E08E

l2304E09C:
	lbu	a4,a0,+00000003
	c.li	a5,00000001
	bne	a4,a5,000000002304E08E

l2304E0A6:
	addi	a1,zero,+00000400
	c.addi	a0,00000004
	jal	ra,0000000023048EBA
	andi	a0,a0,+00000400
	c.bnez	a0,000000002304E08E

l2304E0B6:
	lw	a5,s0,+00000088
	c.addi4spn	a1,00000018
	c.mv	a0,s0
	c.swsp	a5,0000000C
	lw	a5,s0,+00000090
	c.swsp	a5,0000008C
	jal	ra,0000000023051A14
	c.j	000000002304E08E

;; hci_num_completed_packets: 2304E0CC
hci_num_completed_packets proc
	c.addi16sp	FFFFFFD0
	c.swsp	s3,0000008C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s4,0000000C
	c.swsp	s8,00000004
	lw	s4,a0,+00000008
	c.li	s3,00000000
	lui	s5,00042026
	lui	s6,000230BB
	lui	s7,000230BB

l2304E0F4:
	lbu	a5,s4,+00000000
	blt	s3,a5,000000002304E114

l2304E0FC:
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

l2304E114:
	slli	a5,s3,00000002
	c.add	a5,s4
	lbu	s1,a5,+00000002
	lbu	a4,a5,+00000001
	lbu	s2,a5,+00000004
	c.slli	s1,08
	c.or	s1,a4
	lbu	a4,a5,+00000003
	c.slli	s2,08
	or	s2,s2,a4
	jal	ra,0000000023048C54
	c.mv	s8,a0
	c.mv	a0,s1
	jal	ra,000000002304AC8A
	c.mv	s0,a0
	c.mv	a0,s8
	c.bnez	s0,000000002304E158

l2304E146:
	jal	ra,0000000023048C64
	c.mv	a1,s1
	addi	a0,s7,+000003DC
	jal	ra,0000000023082388

l2304E154:
	c.addi	s3,00000001
	c.j	000000002304E0F4

l2304E158:
	jal	ra,0000000023048C64
	addi	s8,s0,+00000028

l2304E160:
	beq	s2,zero,000000002304E1AA

l2304E164:
	jal	ra,0000000023048C54
	c.lw	s0,28(a5)
	c.mv	a4,a0
	c.beqz	a5,000000002304E18A

l2304E16E:
	c.addi	a5,FFFFFFFF
	c.sw	s0,28(a5)
	jal	ra,0000000023048C64
	c.mv	a0,s0
	jal	ra,000000002304A454

l2304E17C:
	c.addi	s2,FFFFFFFF
	c.slli	s2,10
	jal	ra,0000000023048B7E
	srli	s2,s2,00000010
	c.j	000000002304E160

l2304E18A:
	c.lw	s0,20(s1)
	c.beqz	s1,000000002304E19A

l2304E18E:
	c.lw	s1,0(a5)
	c.lw	s0,24(a3)
	c.sw	s0,20(a5)
	bne	s1,a3,000000002304E19A

l2304E198:
	c.sw	s0,24(a5)

l2304E19A:
	c.mv	a0,a4
	jal	ra,0000000023048C64
	c.bnez	s1,000000002304E1B2

l2304E1A2:
	addi	a0,s6,+000003FC
	jal	ra,0000000023082388

l2304E1AA:
	c.mv	a0,s0
	jal	ra,000000002304AF4A
	c.j	000000002304E154

l2304E1B2:
	jal	ra,0000000023048C54
	c.lw	s1,12(a5)
	c.sw	s0,28(a5)
	sw	zero,s1,+0000000C
	sw	zero,s1,+00000000
	c.lw	s0,36(a5)
	c.bnez	a5,000000002304E1E4

l2304E1C6:
	c.sw	s0,36(s1)
	c.sw	s0,32(s1)

l2304E1CA:
	jal	ra,0000000023048C64
	c.mv	a0,s8
	jal	ra,0000000023049772
	c.mv	a0,s0
	jal	ra,000000002304A454
	jal	ra,0000000023048B7E
	addi	a0,s5,+00000644
	c.j	000000002304E17C

l2304E1E4:
	c.sw	a5,0(s1)
	c.sw	s0,36(s1)
	c.j	000000002304E1CA

;; update_sec_level: 2304E1EA
;;   Called from:
;;     2304E2E2 (in hci_encrypt_key_refresh_complete)
;;     2304E394 (in hci_encrypt_change)
update_sec_level proc
	lbu	a5,a0,+0000000B
	c.bnez	a5,000000002304E1F8

l2304E1F0:
	c.li	a5,00000001
	sb	a5,a0,+00000009
	c.jr	ra

l2304E1F8:
	lw	a4,a0,+0000009C
	c.beqz	a4,000000002304E24E

l2304E1FE:
	lbu	a5,a4,+00000009
	andi	a3,a5,+00000001
	c.beqz	a3,000000002304E24E

l2304E208:
	c.andi	a5,00000010
	c.beqz	a5,000000002304E24A

l2304E20C:
	lbu	a4,a4,+00000008
	c.li	a5,00000010
	bne	a4,a5,000000002304E24A

l2304E216:
	c.li	a5,00000004

l2304E218:
	sb	a5,a0,+00000009
	lbu	a4,a0,+0000000A
	lbu	a5,a0,+00000009
	bgeu	a5,a4,000000002304E252

l2304E228:
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.mv	s0,a0
	lui	a0,000230BB
	addi	a0,a0,+000005E4
	c.swsp	ra,00000084
	jal	ra,0000000023082388
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a1,00000005
	c.addi	sp,00000010
	jal	zero,000000002304B02C

l2304E24A:
	c.li	a5,00000003
	c.j	000000002304E218

l2304E24E:
	c.li	a5,00000002
	c.j	000000002304E218

l2304E252:
	c.jr	ra

;; hci_encrypt_key_refresh_complete: 2304E254
hci_encrypt_key_refresh_complete proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.lw	a0,8(s1)
	lbu	a1,s1,+00000002
	lbu	a5,s1,+00000001
	c.slli	a1,08
	c.or	a1,a5
	c.mv	a0,a1
	c.swsp	a1,00000084
	jal	ra,000000002304AC8A
	c.lwsp	a2,00000064
	c.bnez	a0,000000002304E28A

l2304E276:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	lui	a0,000230BB
	addi	a0,a0,+000003B4
	c.addi16sp	00000020
	jal	zero,0000000023082388

l2304E28A:
	lbu	a5,s1,+00000000
	c.mv	s0,a0
	c.beqz	a5,000000002304E2D2

l2304E292:
	lbu	a5,a0,+00000009
	sb	a5,a0,+0000000A
	lbu	a1,s1,+00000000
	jal	ra,00000000230514E8
	lbu	a4,s1,+00000000
	addi	a5,zero,+00000029
	c.li	a1,00000008
	bltu	a5,a4,000000002304E2BE

l2304E2B0:
	lui	a5,000230BB
	addi	a5,a5,-000000A8
	c.add	a5,a4
	lbu	a1,a5,+00000000

l2304E2BE:
	c.mv	a0,s0
	jal	ra,000000002304A642
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002304AF4A

l2304E2D2:
	lbu	a4,a0,+00000002
	c.li	a5,00000001
	bne	a4,a5,000000002304E2E6

l2304E2DC:
	jal	ra,0000000023055396
	c.mv	a0,s0
	jal	ra,000000002304E1EA

l2304E2E6:
	lbu	a5,s0,+00000009
	c.mv	a0,s0
	sb	a5,s0,+0000000A
	lbu	a1,s1,+00000000
	jal	ra,00000000230514E8
	c.li	a1,00000000
	c.j	000000002304E2BE

;; hci_encrypt_change: 2304E2FC
hci_encrypt_change proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.lw	a0,8(s1)
	lbu	a1,s1,+00000002
	lbu	a5,s1,+00000001
	c.slli	a1,08
	c.or	a1,a5
	c.mv	a0,a1
	c.swsp	a1,00000084
	jal	ra,000000002304AC8A
	c.lwsp	a2,00000064
	c.bnez	a0,000000002304E332

l2304E31E:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	lui	a0,000230BB
	addi	a0,a0,+000003B4
	c.addi16sp	00000020
	jal	zero,0000000023082388

l2304E332:
	lbu	a5,s1,+00000000
	c.mv	s0,a0
	c.beqz	a5,000000002304E37A

l2304E33A:
	lbu	a5,a0,+00000009
	sb	a5,a0,+0000000A
	lbu	a1,s1,+00000000
	jal	ra,00000000230514E8
	lbu	a4,s1,+00000000
	addi	a5,zero,+00000029
	c.li	a1,00000008
	bltu	a5,a4,000000002304E366

l2304E358:
	lui	a5,000230BB
	addi	a5,a5,-000000A8
	c.add	a5,a4
	lbu	a1,a5,+00000000

l2304E366:
	c.mv	a0,s0
	jal	ra,000000002304A642
	c.mv	a0,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002304AF4A

l2304E37A:
	lbu	a5,s1,+00000003
	lbu	a3,a0,+00000002
	c.li	a4,00000001
	sb	a5,a0,+0000000B
	bne	a3,a4,000000002304E398

l2304E38C:
	c.beqz	a5,000000002304E392

l2304E38E:
	jal	ra,0000000023055396

l2304E392:
	c.mv	a0,s0
	jal	ra,000000002304E1EA

l2304E398:
	lbu	a5,s0,+00000009
	c.mv	a0,s0
	sb	a5,s0,+0000000A
	lbu	a1,s1,+00000000
	jal	ra,00000000230514E8
	c.li	a1,00000000
	c.j	000000002304E366

;; find_pending_connect: 2304E3AE
;;   Called from:
;;     2304FA48 (in enh_conn_complete)
;;     2304FAE2 (in enh_conn_complete)
find_pending_connect proc
	c.addi	sp,FFFFFFF0
	c.li	a1,00000003
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	jal	ra,000000002304AE94
	c.bnez	a0,000000002304E3CC

l2304E3BE:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.li	a1,00000002
	c.addi	sp,00000010
	jal	zero,000000002304AE94

l2304E3CC:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; hci_vendor_event: 2304E3D4
hci_vendor_event proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200F
	addi	s1,s1,+00000474
	c.lw	s1,0(a5)
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.beqz	a5,000000002304E416

l2304E3EE:
	addi	s3,a0,+00000008
	c.mv	s0,a0
	c.mv	a0,s3
	jal	ra,00000000230494D6
	c.lw	s1,0(a5)
	c.mv	s2,a0
	c.mv	a0,s3
	lhu	s4,s0,+0000000C
	c.jalr	a5
	c.lw	s0,16(a0)
	c.slli	s2,10
	srli	s2,s2,00000010
	c.add	a0,s2
	c.sw	s0,8(a0)
	sh	s4,s0,+0000000C

l2304E416:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

;; handle_event: 2304E426
;;   Called from:
;;     2304E4BA (in hci_le_meta_event)
;;     2304FFA4 (in bt_recv)
;;     2305001E (in bt_recv_prio)
handle_event proc
	c.addi	sp,FFFFFFE0
	c.slli	a3,03
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.mv	s0,a0
	c.add	a3,a2
	c.mv	a0,a1

l2304E434:
	lbu	a5,a2,+00000000
	beq	a5,s0,000000002304E468

l2304E43C:
	c.addi	a2,00000008
	bne	a2,a3,000000002304E434

l2304E442:
	lhu	a2,a0,+0000000C
	c.lw	a0,8(a0)
	c.mv	a1,a2
	c.swsp	a2,00000084
	jal	ra,0000000023049580
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	a2,00000084
	c.lwsp	t3,00000020
	c.mv	a3,a0
	lui	a0,000230BB
	addi	a0,a0,+000002F4
	c.addi16sp	00000020
	jal	zero,0000000023082388

l2304E468:
	lhu	a1,a0,+0000000C
	lbu	a5,a2,+00000001
	bgeu	a1,a5,000000002304E488

l2304E474:
	c.mv	a2,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	lui	a0,000230BB
	addi	a0,a0,+000002D0
	c.addi16sp	00000020
	jal	zero,0000000023082388

l2304E488:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	lw	t1,a2,+00000004
	c.addi16sp	00000020
	c.jr	t1

;; hci_le_meta_event: 2304E494
hci_le_meta_event proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.li	a1,00000001
	c.mv	s0,a0
	c.addi	a0,00000008
	c.swsp	ra,00000084
	jal	ra,0000000023049400
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	lbu	a0,a0,+00000000
	lui	a2,000230BB
	c.li	a3,00000009
	addi	a2,a2,+00000538
	c.addi	sp,00000010
	jal	zero,000000002304E426

;; hci_cmd_done: 2304E4BE
;;   Called from:
;;     2304E602 (in hci_cmd_status)
;;     2304E64E (in hci_cmd_complete)
;;     2304FE6C (in hci_tx_thread)
hci_cmd_done proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.mv	s4,a0
	lbu	a0,a2,+00000006
	c.mv	s3,a1
	c.mv	s1,a2
	lui	s0,0004200F
	jal	ra,0000000023048F0C
	addi	a5,s0,-000000E0
	beq	a5,a0,000000002304E516

l2304E4E6:
	lbu	a2,s1,+00000006
	c.mv	a0,a2
	c.swsp	a2,00000084
	jal	ra,0000000023048F0C
	addi	a4,s0,-000000E0
	c.lwsp	s0,00000114
	c.lwsp	a2,00000084
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.mv	a1,s4
	c.lwsp	s8,00000088
	c.mv	a3,a0
	lui	a0,000230BB
	addi	a0,a0,+00000318
	c.addi16sp	00000030
	jal	zero,0000000023082388

l2304E516:
	c.mv	a0,s1
	jal	ra,0000000023048F1E
	c.li	s2,0000000C
	add	a0,a0,s2
	lui	s0,00042016
	addi	a5,s0,-000006D4
	addi	s0,s0,-000006D4
	c.add	a5,a0
	lhu	a5,a5,+00000002
	beq	a5,s4,000000002304E556

l2304E538:
	c.mv	a0,s1
	jal	ra,0000000023048F1E
	add	a0,a0,s2
	c.mv	a1,s4
	c.add	a0,s0
	lhu	a2,a0,+00000002
	lui	a0,000230BB
	addi	a0,a0,+00000350
	jal	ra,0000000023082388

l2304E556:
	c.mv	a0,s1
	jal	ra,0000000023048F1E
	c.li	s2,0000000C
	add	a0,a0,s2
	c.add	a0,s0
	c.lw	a0,4(a5)
	c.beqz	a5,000000002304E586

l2304E568:
	bne	s3,zero,000000002304E586

l2304E56C:
	c.mv	a0,s1
	jal	ra,0000000023048F1E
	add	a0,a0,s2
	c.add	a0,s0
	c.lw	a0,4(a5)
	lbu	a2,a5,+00000008
	c.lw	a5,4(a1)
	c.lw	a5,0(a0)
	jal	ra,000000002304DF60

l2304E586:
	c.mv	a0,s1
	jal	ra,0000000023048F1E
	c.li	s2,0000000C
	add	a0,a0,s2
	c.add	a0,s0
	c.lw	a0,8(a5)
	c.beqz	a5,000000002304E5C8

l2304E598:
	c.mv	a0,s1
	jal	ra,0000000023048F1E
	add	a0,a0,s2
	c.add	a0,s0
	sb	s3,a0,+00000000
	c.mv	a0,s1
	jal	ra,0000000023048F1E
	add	a0,a0,s2
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.add	s0,a0
	c.lw	s0,8(a0)
	c.lwsp	s0,00000114
	c.addi16sp	00000030
	jal	zero,0000000023048B7E

l2304E5C8:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; hci_cmd_status: 2304E5D8
hci_cmd_status proc
	c.addi	sp,FFFFFFE0
	c.mv	a2,a0
	c.li	a1,00000004
	c.addi	a0,00000008
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	a2,00000084
	jal	ra,0000000023049400
	lbu	a5,a0,+00000003
	lbu	a4,a0,+00000002
	lbu	s0,a0,+00000001
	lbu	a1,a0,+00000000
	c.lwsp	a2,00000084
	c.slli	a5,08
	or	a0,a5,a4
	jal	ra,000000002304E4BE
	c.beqz	s0,000000002304E61A

l2304E608:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	lui	a0,0004200E
	addi	a0,a0,-00000208
	c.addi16sp	00000020
	jal	zero,0000000023048B7E

l2304E61A:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; hci_cmd_complete: 2304E622
hci_cmd_complete proc
	c.addi	sp,FFFFFFE0
	c.mv	a2,a0
	c.li	a1,00000003
	c.addi	a0,00000008
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	a2,00000084
	jal	ra,0000000023049400
	c.lwsp	a2,00000084
	lbu	a5,a0,+00000002
	lbu	a4,a0,+00000001
	c.lw	a2,8(a3)
	lbu	s0,a0,+00000000
	c.slli	a5,08
	lbu	a1,a3,+00000000
	or	a0,a5,a4
	jal	ra,000000002304E4BE
	c.beqz	s0,000000002304E666

l2304E654:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	lui	a0,0004200E
	addi	a0,a0,-00000208
	c.addi16sp	00000020
	jal	zero,0000000023048B7E

l2304E666:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.addi16sp	00000020
	c.jr	ra

;; id_find: 2304E66E
;;   Called from:
;;     2304F26E (in id_create.isra.25)
;;     2305039A (in bt_id_create)
id_find proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200E
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.mv	s3,a0
	c.li	s0,00000000
	addi	s1,s1,-000002A0
	c.li	s4,00000007

l2304E68A:
	lbu	a5,s1,+00000007
	bltu	s0,a5,000000002304E6A6

l2304E692:
	c.li	s2,FFFFFFFE

l2304E694:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s2
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.addi16sp	00000020
	c.jr	ra

l2304E6A6:
	add	a1,s0,s4
	c.li	a2,00000007
	c.mv	a0,s3
	c.mv	s2,s0
	c.add	a1,s1
	jal	ra,00000000230A37A4
	c.beqz	a0,000000002304E694

l2304E6B8:
	c.addi	s0,00000001
	andi	s0,s0,+000000FF
	c.j	000000002304E68A

;; sys_put_le64: 2304E6C0
;;   Called from:
;;     23050718 (in init_work)
;;     230507BA (in init_work)
sys_put_le64 proc
	slli	a5,a0,00000010
	c.srli	a5,00000010
	c.srli	a5,00000008
	sb	a5,a2,+00000001
	slli	a5,a1,00000010
	c.srli	a5,00000010
	sb	a0,a2,+00000000
	c.srli	a5,00000008
	c.srli	a0,00000018
	c.srli	a1,00000018
	sb	zero,a2,+00000002
	sb	a0,a2,+00000003
	sb	zero,a2,+00000004
	sb	a5,a2,+00000005
	sb	zero,a2,+00000006
	sb	a1,a2,+00000007
	c.jr	ra

;; bt_hci_cmd_create: 2304E6F6
;;   Called from:
;;     2304A5B6 (in bt_conn_le_start_encryption)
;;     2304B0C2 (in bt_conn_disconnect)
;;     2304B254 (in bt_conn_le_conn_update)
;;     2304E7A8 (in bt_hci_cmd_send_sync)
;;     2304E8AE (in set_le_scan_enable)
;;     2304E95E (in set_random_address)
;;     2304E9EA (in hci_id_add)
;;     2304EA68 (in addr_res_enable)
;;     2304EAAE (in set_advertise_enable)
;;     2304EBCE (in set_ad)
;;     2304EFC0 (in bt_id_add)
;;     2304F118 (in bt_id_del)
;;     2304F2A4 (in bt_hci_cmd_send)
;;     2304F320 (in bt_le_set_data_len)
;;     2304F414 (in start_le_scan)
;;     2304F674 (in le_adv_report)
;;     2304F7FE (in le_ltk_request)
;;     2304F84A (in le_ltk_request)
;;     2304F884 (in le_conn_param_neg_reply)
;;     2304F97C (in le_conn_param_req)
;;     2304FC24 (in enh_conn_complete)
;;     230506CC (in init_work)
;;     2305078E (in init_work)
;;     230507F6 (in init_work)
;;     23050A4C (in bt_le_adv_start_internal)
;;     23050D3A (in bt_set_tx_pwr)
;;     23050F42 (in bt_dh_key_gen)
bt_hci_cmd_create proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.mv	s2,a0
	lui	a0,0004200F
	c.swsp	s5,00000080
	addi	a0,a0,-000000E0
	c.mv	s5,a1
	c.li	a1,FFFFFFFF
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	jal	ra,0000000023049098
	addi	s4,a0,+00000008
	c.mv	s1,a0
	c.li	a1,00000001
	c.mv	a0,s4
	jal	ra,00000000230490EC
	c.mv	a0,s1
	sb	zero,s1,+00000014
	jal	ra,0000000023048F1E
	c.li	s3,0000000C
	add	a0,a0,s3
	lui	s0,00042016
	addi	s0,s0,-000006D4
	c.add	a0,s0
	sh	s2,a0,+00000002
	c.mv	a0,s1
	jal	ra,0000000023048F1E
	add	a0,a0,s3
	c.add	a0,s0
	sw	zero,a0,+00000008
	c.mv	a0,s1
	jal	ra,0000000023048F1E
	add	a0,a0,s3
	c.li	a1,00000003
	c.add	s0,a0
	sw	zero,s0,+00000004
	c.mv	a0,s4
	jal	ra,00000000230492DE
	sb	s2,a0,+00000000
	srli	s2,s2,00000008
	sb	s2,a0,+00000001
	sb	s5,a0,+00000002
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

;; bt_hci_cmd_send_sync: 2304E790
;;   Called from:
;;     2304A626 (in bt_conn_le_start_encryption)
;;     2304B2CA (in bt_conn_le_conn_update)
;;     2304E90E (in set_le_scan_enable)
;;     2304E97C (in set_random_address)
;;     2304EA32 (in hci_id_add)
;;     2304EA8A (in addr_res_enable)
;;     2304EAF6 (in set_advertise_enable)
;;     2304EC1A (in set_ad)
;;     2304EF3E (in bt_id_add)
;;     2304EFE4 (in bt_id_add)
;;     2304F138 (in bt_id_del)
;;     2304F702 (in le_adv_report)
;;     23050426 (in init_work)
;;     23050466 (in init_work)
;;     2305048E (in init_work)
;;     230504F4 (in init_work)
;;     23050558 (in init_work)
;;     230505B4 (in init_work)
;;     230505DA (in init_work)
;;     23050628 (in init_work)
;;     23050688 (in init_work)
;;     230506AC (in init_work)
;;     23050724 (in init_work)
;;     23050746 (in init_work)
;;     230507C8 (in init_work)
;;     2305081E (in init_work)
;;     23050A6C (in bt_le_adv_start_internal)
;;     23050D5A (in bt_set_tx_pwr)
;;     23050E9C (in bt_pub_key_gen)
;;     23050F70 (in bt_dh_key_gen)
bt_hci_cmd_send_sync proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.mv	s4,a0
	c.mv	s5,a2
	c.mv	s0,a1
	c.bnez	a1,000000002304E7B4

l2304E7A8:
	jal	ra,000000002304E6F6
	c.mv	s0,a0
	addi	s1,zero,-00000037
	c.beqz	a0,000000002304E872

l2304E7B4:
	addi	s3,sp,+00000004
	c.li	a2,00000001
	c.li	a1,00000000
	c.mv	a0,s3
	jal	ra,0000000023048B2A
	c.mv	a0,s0
	jal	ra,0000000023048F1E
	c.li	s2,0000000C
	add	a0,a0,s2
	lui	s1,00042016
	addi	s1,s1,-000006D4
	c.add	a0,s1
	sw	s3,a0,+00000008
	c.mv	a0,s0
	jal	ra,0000000023048F1E
	add	a0,a0,s2
	c.li	a5,FFFFFFFF
	c.add	a0,s1
	sb	a5,a0,+00000000
	c.mv	a0,s0
	jal	ra,000000002304926E
	lui	a0,0004200E
	c.mv	a1,s0
	addi	a0,a0,-000001F8
	jal	ra,00000000230491A6
	lui	a0,00042026
	addi	a0,a0,+00000644
	jal	ra,0000000023048B7E
	c.lui	a1,00002000
	addi	a1,a1,+00000710
	c.mv	a0,s3
	jal	ra,0000000023048B5E
	c.mv	a0,s3
	jal	ra,0000000023048BB0
	c.mv	a0,s0
	jal	ra,0000000023048F1E
	add	a0,a0,s2
	c.add	a0,s1
	lbu	a5,a0,+00000000
	c.beqz	a5,000000002304E886

l2304E832:
	c.mv	a0,s0
	jal	ra,0000000023048F1E
	add	a0,a0,s2
	c.li	a4,00000009
	c.add	s1,a0
	lbu	a5,s1,+00000000
	addi	s1,zero,-0000003D
	beq	a5,a4,000000002304E86C

l2304E84C:
	addi	a4,zero,+000000FF
	c.li	s1,FFFFFFFB
	bne	a5,a4,000000002304E86C

l2304E856:
	lui	a0,000230BB
	c.mv	a1,s4
	addi	a0,a0,-0000000C
	jal	ra,0000000023082388
	jal	ra,0000000023000C02
	addi	s1,zero,-0000004F

l2304E86C:
	c.mv	a0,s0
	jal	ra,00000000230491C0

l2304E872:
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

l2304E886:
	beq	s5,zero,000000002304E892

l2304E88A:
	sw	s0,s5,+00000000

l2304E88E:
	c.li	s1,00000000
	c.j	000000002304E872

l2304E892:
	c.mv	a0,s0
	jal	ra,00000000230491C0
	c.j	000000002304E88E

;; set_le_scan_enable: 2304E89A
;;   Called from:
;;     2304EEFC (in bt_id_add)
;;     2304EF64 (in bt_id_add)
;;     2304F098 (in bt_id_del)
;;     2304F0C4 (in bt_id_del)
;;     2304F436 (in start_le_scan)
;;     2304F4EC (in bt_le_scan_update)
;;     2304F73E (in le_adv_report)
;;     23050C74 (in bt_le_scan_start)
set_le_scan_enable proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.mv	s0,a0
	c.lui	a0,00002000
	c.li	a1,00000002
	c.addi	a0,0000000C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	jal	ra,000000002304E6F6
	c.beqz	a0,000000002304E926

l2304E8B4:
	c.mv	s1,a0
	c.li	a1,00000002
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	c.mv	s2,a0
	c.li	a5,00000001
	lui	a0,0004200E
	addi	s3,a0,-00000234
	bne	s0,a5,000000002304E920

l2304E8CE:
	c.li	a1,0000000D
	addi	a0,a0,-00000234
	jal	ra,000000002304DEC4
	sb	a0,s2,+00000001

l2304E8DC:
	sb	s0,s2,+00000000
	c.li	a5,0000000A
	c.andi	s0,00000001
	c.mv	a0,s1
	c.swsp	a5,00000004
	c.swsp	s3,00000080
	sb	s0,sp,+0000000C
	jal	ra,0000000023048F1E
	c.li	a5,0000000C
	add	a0,a0,a5
	lui	a5,00042016
	addi	a5,a5,-000006D4
	c.addi4spn	a4,00000004
	c.li	a2,00000000
	c.mv	a1,s1
	c.add	a5,a0
	c.lui	a0,00002000
	c.sw	a5,4(a4)
	c.addi	a0,0000000C
	jal	ra,000000002304E790

l2304E912:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2304E920:
	sb	zero,s2,+00000001
	c.j	000000002304E8DC

l2304E926:
	addi	a0,zero,-00000037
	c.j	000000002304E912

;; set_random_address: 2304E92C
;;   Called from:
;;     2304E9C4 (in le_set_private_addr.isra.19)
;;     2304F45E (in start_le_scan)
;;     2304F65A (in le_adv_report)
;;     23050A02 (in bt_le_adv_start_internal)
;;     23050AE4 (in bt_le_adv_start_internal)
set_random_address proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	lui	s1,0004200E
	addi	s1,s1,-000002A0
	c.swsp	s3,00000084
	addi	s3,s1,+0000000A
	c.li	a2,00000006
	c.mv	a1,s3
	c.swsp	s0,0000000C
	c.swsp	s4,00000004
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.swsp	s5,00000080
	c.mv	s4,a0
	jal	ra,00000000230A37A4
	c.mv	s0,a0
	c.beqz	a0,000000002304E994

l2304E956:
	c.lui	s5,00002000
	c.li	a1,00000006
	addi	a0,s5,+00000005
	jal	ra,000000002304E6F6
	c.mv	s2,a0
	addi	s0,zero,-00000037
	c.beqz	a0,000000002304E994

l2304E96A:
	c.li	a2,00000006
	c.mv	a1,s4
	c.addi	a0,00000008
	jal	ra,00000000230492F0
	c.li	a2,00000000
	c.mv	a1,s2
	addi	a0,s5,+00000005
	jal	ra,000000002304E790
	c.mv	s0,a0
	c.bnez	a0,000000002304E994

l2304E984:
	c.li	a2,00000006
	c.mv	a1,s4
	c.mv	a0,s3
	jal	ra,00000000230A382C
	c.li	a5,00000001
	sb	a5,s1,+00000009

l2304E994:
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

;; le_set_private_addr.isra.19: 2304E9A8
;;   Called from:
;;     2304F400 (in start_le_scan)
;;     23050BD0 (in bt_le_adv_stop)
le_set_private_addr.isra.19 proc
	c.addi	sp,FFFFFFE0
	c.li	a1,00000006
	c.addi4spn	a0,00000008
	c.swsp	ra,0000008C
	jal	ra,000000002304B7D8
	c.bnez	a0,000000002304E9C8

l2304E9B6:
	lbu	a5,sp,+0000000D
	c.addi4spn	a0,00000008
	andi	a5,a5,+0000003F
	sb	a5,sp,+0000000D
	jal	ra,000000002304E92C

l2304E9C8:
	c.lwsp	t3,00000020
	c.addi16sp	00000020
	c.jr	ra

;; hci_id_add: 2304E9CE
;;   Called from:
;;     2304EA50 (in keys_add_id)
;;     2304EF7E (in bt_id_add)
hci_id_add proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.lui	s1,00002000
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.mv	s3,a1
	c.mv	s4,a0
	addi	a1,zero,+00000027
	addi	a0,s1,+00000027
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	jal	ra,000000002304E6F6
	c.beqz	a0,000000002304EA36

l2304E9F0:
	c.mv	s0,a0
	addi	a1,zero,+00000027
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	c.mv	a1,s4
	c.mv	s2,a0
	jal	ra,000000002304DEDC
	c.mv	a1,s3
	c.li	a2,00000010
	addi	a0,s2,+00000007
	jal	ra,00000000230A382C
	c.li	a2,00000010
	c.li	a1,00000000
	addi	a0,s2,+00000017
	jal	ra,00000000230A3A68
	c.mv	a1,s0
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	addi	a0,s1,+00000027
	c.lwsp	s4,00000024
	c.li	a2,00000000
	c.addi16sp	00000020
	jal	zero,000000002304E790

l2304EA36:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	addi	a0,zero,-00000037
	c.addi16sp	00000020
	c.jr	ra

;; keys_add_id: 2304EA4A
keys_add_id proc
	addi	a1,a0,+00000026
	c.addi	a0,00000001
	jal	zero,000000002304E9CE

;; addr_res_enable: 2304EA54
;;   Called from:
;;     2304EF08 (in bt_id_add)
;;     2304EF5A (in bt_id_add)
;;     2304F09E (in bt_id_del)
;;     2304F0BA (in bt_id_del)
addr_res_enable proc
	c.addi	sp,FFFFFFF0
	c.swsp	s1,00000080
	c.lui	s1,00002000
	c.swsp	s2,00000000
	c.li	a1,00000001
	c.mv	s2,a0
	addi	a0,s1,+0000002D
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002304E6F6
	c.beqz	a0,000000002304EA8E

l2304EA6E:
	c.mv	s0,a0
	c.mv	a1,s2
	c.addi	a0,00000008
	jal	ra,0000000023049306
	c.mv	a1,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	zero,00000048
	addi	a0,s1,+0000002D
	c.lwsp	tp,00000024
	c.li	a2,00000000
	c.addi	sp,00000010
	jal	zero,000000002304E790

l2304EA8E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	addi	a0,zero,-00000037
	c.addi	sp,00000010
	c.jr	ra

;; set_advertise_enable: 2304EA9E
;;   Called from:
;;     2304EB66 (in hci_disconn_complete)
;;     2304EEEA (in bt_id_add)
;;     2304EF6E (in bt_id_add)
;;     2304F086 (in bt_id_del)
;;     2304F0DE (in bt_id_del)
;;     2304FBBC (in enh_conn_complete)
;;     2305020A (in bt_set_name)
;;     23050210 (in bt_set_name)
;;     23050A7C (in bt_le_adv_start_internal)
;;     23050BB4 (in bt_le_adv_stop)
set_advertise_enable proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.mv	s1,a0
	c.lui	a0,00002000
	c.li	a1,00000001
	c.addi	a0,0000000A
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	jal	ra,000000002304E6F6
	c.beqz	a0,000000002304EB04

l2304EAB4:
	c.mv	s0,a0
	c.li	a1,00000001
	c.addi	a0,00000008
	c.bnez	s1,000000002304EABE

l2304EABC:
	c.li	a1,00000000

l2304EABE:
	jal	ra,0000000023049306
	lui	a5,0004200E
	addi	a5,a5,-00000234
	c.swsp	a5,00000080
	c.mv	a0,s0
	c.li	a5,00000006
	c.swsp	a5,00000004
	sb	s1,sp,+0000000C
	jal	ra,0000000023048F1E
	c.li	a5,0000000C
	add	a0,a0,a5
	lui	a5,00042016
	addi	a5,a5,-000006D4
	c.addi4spn	a4,00000004
	c.li	a2,00000000
	c.mv	a1,s0
	c.add	a5,a0
	c.lui	a0,00002000
	c.sw	a5,4(a4)
	c.addi	a0,0000000A
	jal	ra,000000002304E790

l2304EAFA:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2304EB04:
	addi	a0,zero,-00000037
	c.j	000000002304EAFA

;; hci_disconn_complete: 2304EB0A
hci_disconn_complete proc
	c.addi	sp,FFFFFFE0
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s1,00000088
	c.lw	a0,8(s1)
	lbu	a5,s1,+00000000
	c.bnez	a5,000000002304EBA2

l2304EB1A:
	lbu	a1,s1,+00000002
	lbu	a5,s1,+00000001
	c.slli	a1,08
	c.or	a1,a5
	c.mv	a0,a1
	c.swsp	a1,00000084
	jal	ra,000000002304AC8A
	c.mv	s0,a0
	c.lwsp	a2,00000064
	c.bnez	a0,000000002304EB6A

l2304EB34:
	lui	a0,000230BB
	addi	a0,a0,+000003B4
	jal	ra,0000000023082388

l2304EB40:
	lui	s0,0004200E
	addi	s0,s0,-00000234
	c.li	a1,00000009
	c.mv	a0,s0
	jal	ra,000000002304DEC4
	c.beqz	a0,000000002304EBA2

l2304EB52:
	c.li	a1,00000006
	c.mv	a0,s0
	jal	ra,000000002304DEC4
	c.bnez	a0,000000002304EBA2

l2304EB5C:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.li	a0,00000001
	c.addi16sp	00000020
	jal	zero,000000002304EA9E

l2304EB6A:
	lbu	a5,s1,+00000003
	c.li	a1,00000000
	sb	a5,a0,+0000000C
	jal	ra,000000002304AABE
	lbu	a4,s0,+00000002
	sh	zero,s0,+00000000
	c.li	a5,00000001
	c.mv	a0,s0
	beq	a4,a5,000000002304EB94

l2304EB88:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	jal	zero,000000002304AF4A

l2304EB94:
	jal	ra,000000002304AF4A
	addi	a0,s0,+00000048
	jal	ra,0000000023048E96
	c.j	000000002304EB40

l2304EBA2:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

;; set_ad: 2304EBAC
;;   Called from:
;;     2304ECE8 (in le_adv_update)
;;     2304ED3A (in le_adv_update)
;;     230501FA (in bt_set_name)
set_ad proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.mv	s0,a1
	addi	a1,zero,+00000020
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	s9,00000080
	c.mv	s3,a0
	c.mv	s2,a2
	jal	ra,000000002304E6F6
	beq	a0,zero,000000002304ECC0

l2304EBD6:
	addi	a1,zero,+00000020
	c.mv	s6,a0
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	addi	a2,zero,+00000020
	c.li	a1,00000000
	c.slli	s2,03
	c.mv	s1,a0
	add	s4,s0,s2
	jal	ra,00000000230A3A68
	c.li	s8,0000001D
	c.li	s9,00000009

l2304EBF8:
	bne	s0,s4,000000002304EC1E

l2304EBFC:
	c.lwsp	s0,00000114
	c.lwsp	a2,00000130
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.lwsp	a2,000000E8
	c.lwsp	s0,0000000C
	c.lwsp	tp,0000002C
	c.mv	a1,s6
	c.mv	a0,s3
	c.lwsp	a6,000000C8
	c.lwsp	t3,00000068
	c.li	a2,00000000
	c.addi16sp	00000030
	jal	zero,000000002304E790

l2304EC1E:
	lw	s5,s0,+00000000
	c.li	s7,00000000

l2304EC24:
	c.lw	s0,4(a5)
	bltu	s7,a5,000000002304EC2E

l2304EC2A:
	c.addi	s0,00000008
	c.j	000000002304EBF8

l2304EC2E:
	lbu	a2,s5,+00000001
	lbu	a5,s1,+00000000
	lbu	a4,s5,+00000000
	add	a3,a5,a2
	bge	s8,a3,000000002304EC7C

l2304EC42:
	sub	a2,s8,a5
	bne	a4,s9,000000002304EC4C

l2304EC4A:
	c.bnez	a2,000000002304EC7A

l2304EC4C:
	c.mv	a0,s6
	jal	ra,00000000230491C0
	lui	a0,000230BB
	addi	a0,a0,+000005C8
	jal	ra,0000000023082388
	c.li	a0,FFFFFFEA

l2304EC60:
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

l2304EC7A:
	c.li	a4,00000008

l2304EC7C:
	andi	s2,a2,+000000FF
	add	a3,s1,a5
	addi	a1,s2,+00000001
	addi	a0,a5,+00000002
	c.addi	a5,00000001
	sb	a1,a3,+00000001
	andi	a0,a0,+000000FF
	andi	a5,a5,+000000FF
	sb	a0,s1,+00000000
	c.add	a5,s1
	sb	a4,a5,+00000001
	lw	a1,s5,+00000004
	c.addi	a0,00000001
	c.add	a0,s1
	jal	ra,00000000230A382C
	lbu	a5,s1,+00000000
	c.addi	s7,00000001
	c.addi	s5,00000008
	c.add	s2,a5
	sb	s2,s1,+00000000
	c.j	000000002304EC24

l2304ECC0:
	addi	a0,zero,-00000037
	c.j	000000002304EC60

;; le_adv_update: 2304ECC6
;;   Called from:
;;     23050B12 (in bt_le_adv_start_internal)
le_adv_update proc
	c.addi16sp	FFFFFFC0
	c.swsp	a0,00000010
	c.lui	a0,00002000
	c.swsp	s1,00000098
	c.swsp	a1,00000090
	c.mv	s1,a2
	c.addi4spn	a1,00000020
	c.li	a2,00000001
	c.addi	a0,00000008
	c.swsp	s0,0000001C
	c.swsp	s2,00000018
	c.swsp	ra,0000009C
	c.swsp	a3,00000084
	c.mv	s2,a4
	c.swsp	a5,00000004
	c.swsp	zero,00000014
	c.swsp	zero,00000094
	jal	ra,000000002304EBAC
	c.mv	s0,a0
	c.bnez	a0,000000002304ED40

l2304ECF0:
	c.lwsp	a2,000000A4
	c.lwsp	s0,000000E4
	c.swsp	s1,00000010
	c.swsp	a3,00000090
	c.beqz	a5,000000002304ED26

l2304ECFA:
	c.beqz	s1,000000002304ED04

l2304ECFC:
	c.li	a2,00000000
	c.li	a4,00000001

l2304ED00:
	bne	a2,a3,000000002304ED4E

l2304ED04:
	lui	s1,0004200E
	addi	s1,s1,-000001E8
	c.mv	a0,s1
	jal	ra,00000000230A4220
	c.li	a5,00000009
	sb	a5,sp,+00000018
	c.addi4spn	a5,00000018
	c.swsp	a5,00000014
	c.li	a5,00000001
	sb	a0,sp,+00000019
	c.swsp	s1,0000008C
	c.swsp	a5,00000094

l2304ED26:
	c.lwsp	zero,000001F4
	c.bnez	a5,000000002304ED32

l2304ED2A:
	c.lwsp	s0,000001F4
	c.bnez	a5,000000002304ED32

l2304ED2E:
	beq	s2,zero,000000002304ED40

l2304ED32:
	c.lui	a0,00002000
	c.li	a2,00000002
	c.addi4spn	a1,00000020
	c.addi	a0,00000009
	jal	ra,000000002304EBAC
	c.mv	s0,a0

l2304ED40:
	c.mv	a0,s0
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.lwsp	a6,00000158
	c.addi16sp	00000040
	c.jr	ra

l2304ED4E:
	slli	a5,a2,00000003
	c.add	a5,s1
	lbu	a5,a5,+00000000
	c.addi	a5,FFFFFFF8
	andi	a5,a5,+000000FF
	bgeu	a4,a5,000000002304ED66

l2304ED62:
	c.addi	a2,00000001
	c.j	000000002304ED00

l2304ED66:
	c.li	s0,FFFFFFEA
	c.j	000000002304ED40

;; bt_lookup_id_addr: 2304ED6A
;;   Called from:
;;     2304B22A (in bt_conn_create_le)
;;     2304F72E (in le_adv_report)
;;     2304FD14 (in le_legacy_conn_complete)
bt_lookup_id_addr proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a1
	jal	ra,00000000230557B8
	c.beqz	a0,000000002304ED7C

l2304ED78:
	addi	s0,a0,+00000001

l2304ED7C:
	c.mv	a0,s0
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; bt_le_conn_params_valid: 2304ED86
;;   Called from:
;;     2304A4DE (in le_param_req)
;;     2304A514 (in le_param_req)
;;     2304B142 (in bt_conn_create_le)
bt_le_conn_params_valid proc
	lhu	a4,a0,+00000000
	lhu	a1,a0,+00000002
	c.li	a5,00000000
	bltu	a1,a4,000000002304EDD4

l2304ED94:
	c.li	a3,00000005
	c.li	a5,00000000
	bgeu	a3,a4,000000002304EDD4

l2304ED9C:
	c.lui	a2,00001000
	addi	a4,a2,-00000380
	bltu	a4,a1,000000002304EDD4

l2304EDA6:
	lhu	a4,a0,+00000004
	addi	a3,zero,+000001F3
	bltu	a3,a4,000000002304EDD4

l2304EDB2:
	lhu	a3,a0,+00000006
	addi	a2,a2,-0000038A
	addi	a0,a3,-0000000A
	c.slli	a0,10
	c.srli	a0,00000010
	bltu	a2,a0,000000002304EDD4

l2304EDC6:
	addi	a5,a4,+00000001
	add	a5,a5,a1
	c.slli	a3,02
	sltu	a5,a5,a3

l2304EDD4:
	c.mv	a0,a5
	c.jr	ra

;; bt_unpair: 2304EDD8
;;   Called from:
;;     23055698 (in bt_keys_get_addr)
;;     230567B4 (in ble_unpair)
bt_unpair proc
	c.bnez	a0,000000002304EE60

l2304EDDA:
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s1,a1
	c.bnez	a1,000000002304EE02

l2304EDE8:
	c.li	a0,00000000
	jal	ra,000000002304AF10
	c.li	a0,00000000
	jal	ra,00000000230558F0

l2304EDF4:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

l2304EE02:
	c.li	a2,00000007
	c.addi4spn	a1,00000008
	c.mv	a0,s1
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	sb	zero,sp,+0000000E
	jal	ra,00000000230A37A4
	c.beqz	a0,000000002304EDE8

l2304EE18:
	c.mv	a1,s1
	c.li	a0,00000000
	jal	ra,000000002304ADFA
	c.mv	s0,a0
	c.bnez	a0,000000002304EE38

l2304EE24:
	c.mv	a1,s1
	c.li	a0,00000000
	jal	ra,00000000230558A8
	c.mv	s2,a0
	c.beqz	a0,000000002304EDF4

l2304EE30:
	c.mv	a0,s2
	jal	ra,00000000230558B8
	c.j	000000002304EDF4

l2304EE38:
	lbu	a4,a0,+00000002
	c.li	a5,00000001
	c.li	s2,00000000
	bne	a4,a5,000000002304EE4C

l2304EE44:
	lw	s2,a0,+0000009C
	sw	zero,a0,+0000009C

l2304EE4C:
	c.li	a1,00000013
	c.mv	a0,s0
	jal	ra,000000002304B02C
	c.mv	a0,s0
	jal	ra,000000002304AF4A
	bne	s2,zero,000000002304EE30

l2304EE5E:
	c.j	000000002304EE24

l2304EE60:
	c.li	a0,FFFFFFEA
	c.jr	ra

;; bt_id_add: 2304EE64
;;   Called from:
;;     2304F168 (in update_pending_id)
;;     23054698 (in smp_ident_addr_info)
bt_id_add proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	lui	s0,0004200E
	addi	a5,s0,-000002A0
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	lbu	a4,a5,+00000090
	addi	s0,s0,-000002A0
	lbu	a5,a5,+00000091
	c.beqz	a4,000000002304EE8C

l2304EE88:
	bgeu	a4,a5,000000002304EEA2

l2304EE8C:
	c.addi	a5,00000001
	sb	a5,s0,+00000091

l2304EE92:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2304EEA2:
	c.mv	s1,a0
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002304AE94
	c.mv	s2,a0
	lui	a0,0004200E
	addi	s3,a0,-00000234
	beq	s2,zero,000000002304EEDA

l2304EEBA:
	lui	a1,00000020
	addi	a0,a0,-00000234
	jal	ra,0000000023048EBA
	lbu	a5,s1,+00000009
	c.mv	a0,s2
	ori	a5,a5,+00000004
	sb	a5,s1,+00000009
	jal	ra,000000002304AF4A
	c.j	000000002304EE92

l2304EEDA:
	c.li	a1,00000006
	addi	a0,a0,-00000234
	jal	ra,000000002304DEC4
	c.mv	s2,a0
	c.beqz	a0,000000002304EEEE

l2304EEE8:
	c.li	a0,00000000
	jal	ra,000000002304EA9E

l2304EEEE:
	c.mv	a0,s3
	c.li	a1,0000000A
	jal	ra,000000002304DEC4
	c.mv	s3,a0
	c.beqz	a0,000000002304EF00

l2304EEFA:
	c.li	a0,00000000
	jal	ra,000000002304E89A

l2304EF00:
	lbu	a5,s0,+00000091
	c.beqz	a5,000000002304EF1C

l2304EF06:
	c.li	a0,00000000
	jal	ra,000000002304EA54
	c.beqz	a0,000000002304EF1C

l2304EF0E:
	lui	a0,000230BB
	addi	a0,a0,+0000001C

l2304EF16:
	jal	ra,0000000023082388
	c.j	000000002304EF58

l2304EF1C:
	lbu	a4,s0,+00000091
	lbu	a5,s0,+00000090
	bne	a4,a5,000000002304EF74

l2304EF28:
	lui	a0,000230BB
	addi	a0,a0,+00000044
	jal	ra,0000000023082388
	c.lui	a0,00002000
	c.li	a2,00000000
	c.li	a1,00000000
	addi	a0,a0,+00000029
	jal	ra,000000002304E790
	c.beqz	a0,000000002304EF4E

l2304EF44:
	lui	a0,000230BB
	addi	a0,a0,+00000078
	c.j	000000002304EF16

l2304EF4E:
	lbu	a5,s0,+00000091
	c.addi	a5,00000001
	sb	a5,s0,+00000091

l2304EF58:
	c.li	a0,00000001
	jal	ra,000000002304EA54
	beq	s3,zero,000000002304EF68

l2304EF62:
	c.li	a0,00000001
	jal	ra,000000002304E89A

l2304EF68:
	beq	s2,zero,000000002304EE92

l2304EF6C:
	c.li	a0,00000001
	jal	ra,000000002304EA9E
	c.j	000000002304EE92

l2304EF74:
	addi	s4,s1,+00000001
	addi	a1,s1,+00000026
	c.mv	a0,s4
	jal	ra,000000002304E9CE
	c.beqz	a0,000000002304EF8E

l2304EF84:
	lui	a0,000230BB
	addi	a0,a0,+0000009C
	c.j	000000002304EF16

l2304EF8E:
	lbu	a5,s0,+00000091
	c.addi	a5,00000001
	sb	a5,s0,+00000091
	lbu	a5,s0,+00000047
	c.andi	a5,00000004
	c.bnez	a5,000000002304EFAA

l2304EFA0:
	lui	a0,000230BB
	addi	a0,a0,+000000C0
	c.j	000000002304EF16

l2304EFAA:
	c.mv	a1,s4
	c.addi4spn	a0,00000008
	jal	ra,000000002304DEDC
	c.lui	s1,00002000
	c.li	a5,00000001
	c.li	a1,00000008
	addi	a0,s1,+0000004E
	sb	a5,sp,+0000000F
	jal	ra,000000002304E6F6
	c.mv	s0,a0
	c.bnez	a0,000000002304EFD2

l2304EFC8:
	lui	a0,000230BB
	addi	a0,a0,+000000EC
	c.j	000000002304EF16

l2304EFD2:
	c.li	a2,00000008
	c.addi4spn	a1,00000008
	c.addi	a0,00000008
	jal	ra,00000000230492F0
	c.li	a2,00000000
	c.mv	a1,s0
	addi	a0,s1,+0000004E
	jal	ra,000000002304E790
	c.beqz	a0,000000002304EF58

l2304EFEA:
	c.j	000000002304EFC8

;; bt_id_del: 2304EFEC
;;   Called from:
;;     2304F178 (in update_pending_id)
;;     230558C8 (in bt_keys_clear)
bt_id_del proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200E
	addi	a5,s0,-000002A0
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	c.swsp	s4,00000004
	c.swsp	s5,00000080
	lbu	a4,a5,+00000090
	addi	s0,s0,-000002A0
	lbu	a5,a5,+00000091
	c.beqz	a4,000000002304F018

l2304F012:
	c.addi	a4,00000001
	bge	a4,a5,000000002304F030

l2304F018:
	c.addi	a5,FFFFFFFF
	sb	a5,s0,+00000091

l2304F01E:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	c.jr	ra

l2304F030:
	c.mv	s1,a0
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002304AE94
	c.mv	s2,a0
	lui	a0,0004200E
	addi	s4,a0,-00000234
	beq	s2,zero,000000002304F076

l2304F048:
	lui	a1,00000020
	addi	a0,a0,-00000234
	jal	ra,0000000023048EBA
	lbu	a5,s1,+00000009
	c.mv	a0,s2
	ori	a5,a5,+00000008
	sb	a5,s1,+00000009
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.addi16sp	00000020
	jal	zero,000000002304AF4A

l2304F076:
	c.li	a1,00000006
	addi	a0,a0,-00000234
	jal	ra,000000002304DEC4
	c.mv	s3,a0
	c.beqz	a0,000000002304F08A

l2304F084:
	c.li	a0,00000000
	jal	ra,000000002304EA9E

l2304F08A:
	c.mv	a0,s4
	c.li	a1,0000000A
	jal	ra,000000002304DEC4
	c.mv	s4,a0
	c.beqz	a0,000000002304F09C

l2304F096:
	c.li	a0,00000000
	jal	ra,000000002304E89A

l2304F09C:
	c.li	a0,00000000
	jal	ra,000000002304EA54
	c.mv	a1,a0
	c.beqz	a0,000000002304F0E2

l2304F0A6:
	lui	a0,000230BB
	addi	a0,a0,+0000013C
	jal	ra,0000000023082388

l2304F0B2:
	lbu	a5,s0,+00000091
	c.beqz	a5,000000002304F0BE

l2304F0B8:
	c.li	a0,00000001
	jal	ra,000000002304EA54

l2304F0BE:
	beq	s4,zero,000000002304F0C8

l2304F0C2:
	c.li	a0,00000001
	jal	ra,000000002304E89A

l2304F0C8:
	beq	s3,zero,000000002304F01E

l2304F0CC:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	c.lwsp	tp,000000A8
	c.li	a0,00000001
	c.addi16sp	00000020
	jal	zero,000000002304EA9E

l2304F0E2:
	lbu	a5,s0,+00000091
	lbu	a4,s0,+00000090
	bgeu	a4,a5,000000002304F110

l2304F0EE:
	c.addi	a5,FFFFFFFF
	sb	a5,s0,+00000091
	lhu	a5,s1,+0000000A
	lui	a1,0002304F
	c.li	a2,00000000
	c.andi	a5,FFFFFFFD
	sh	a5,s1,+0000000A
	addi	a1,a1,-000005B6
	c.li	a0,00000002
	jal	ra,0000000023055724
	c.j	000000002304F0B2

l2304F110:
	c.lui	s5,00002000
	c.li	a1,00000007
	addi	a0,s5,+00000028
	jal	ra,000000002304E6F6
	c.mv	s2,a0
	c.beqz	a0,000000002304F0B2

l2304F120:
	c.li	a1,00000007
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	addi	a1,s1,+00000001
	jal	ra,000000002304DEDC
	c.li	a2,00000000
	c.mv	a1,s2
	addi	a0,s5,+00000028
	jal	ra,000000002304E790
	c.beqz	a0,000000002304F14C

l2304F13E:
	lui	a0,000230BB
	addi	a0,a0,+0000016C
	jal	ra,0000000023082388
	c.j	000000002304F0B2

l2304F14C:
	lbu	a5,s0,+00000091
	c.addi	a5,FFFFFFFF
	sb	a5,s0,+00000091
	c.j	000000002304F0B2

;; update_pending_id: 2304F158
update_pending_id proc
	lbu	a5,a0,+00000009
	andi	a3,a5,+00000004
	c.beqz	a3,000000002304F16C

l2304F162:
	c.andi	a5,FFFFFFFB
	sb	a5,a0,+00000009
	jal	zero,000000002304EE64

l2304F16C:
	andi	a3,a5,+00000008
	c.beqz	a3,000000002304F17C

l2304F172:
	c.andi	a5,FFFFFFF7
	sb	a5,a0,+00000009
	jal	zero,000000002304EFEC

l2304F17C:
	c.jr	ra

;; bt_data_parse: 2304F17E
;;   Called from:
;;     230569B2 (in device_found)
bt_data_parse proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.swsp	ra,00000094
	c.swsp	s1,00000090
	c.mv	s0,a0
	c.mv	s3,a1
	c.mv	s4,a2
	c.li	s2,00000001

l2304F194:
	lhu	a5,s0,+00000004
	bgeu	s2,a5,000000002304F1C0

l2304F19C:
	c.mv	a0,s0
	jal	ra,0000000023049414
	c.mv	s1,a0
	c.beqz	a0,000000002304F1C0

l2304F1A6:
	lhu	a4,s0,+00000004
	slli	a5,a0,00000010
	c.srli	a5,00000010
	bgeu	a4,a5,000000002304F1D0

l2304F1B4:
	lui	a0,000230BB
	addi	a0,a0,-0000007C
	jal	ra,0000000023082388

l2304F1C0:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2304F1D0:
	c.mv	a0,s0
	jal	ra,0000000023049414
	c.lw	s0,0(a5)
	sb	a0,sp,+00000008
	c.addi	s1,FFFFFFFF
	c.mv	a1,s4
	c.addi4spn	a0,00000008
	sb	s1,sp,+00000009
	c.swsp	a5,00000084
	c.jalr	s3
	c.beqz	a0,000000002304F1C0

l2304F1EC:
	c.mv	a1,s1
	c.mv	a0,s0
	jal	ra,00000000230493EC
	c.j	000000002304F194

;; bt_addr_le_create_static: 2304F1F6
;;   Called from:
;;     2304F268 (in id_create.isra.25)
bt_addr_le_create_static proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.li	a5,00000001
	c.mv	s0,a0
	sb	a5,a0,+00000000
	c.li	a1,00000006
	c.addi	a0,00000001
	jal	ra,000000002304B7D8
	c.bnez	a0,000000002304F21A

l2304F20E:
	lbu	a5,s0,+00000006
	ori	a5,a5,-00000040
	sb	a5,s0,+00000006

l2304F21A:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.addi	sp,00000010
	c.jr	ra

;; id_create.isra.25: 2304F222
;;   Called from:
;;     230503E4 (in bt_id_create)
id_create.isra.25 proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.li	s0,00000007
	add	a0,a0,s0
	lui	s0,0004200E
	c.swsp	s1,00000088
	addi	s0,s0,-000002A0
	c.swsp	ra,0000008C
	c.mv	s1,a1
	c.add	s0,a0
	c.beqz	a1,000000002304F266

l2304F23E:
	c.li	a2,00000007
	c.mv	a1,sp
	c.mv	a0,s1
	c.swsp	zero,00000000
	sh	zero,sp,+00000004
	sb	zero,sp,+00000006
	jal	ra,00000000230A37A4
	c.beqz	a0,000000002304F266

l2304F254:
	c.mv	a1,s1
	c.mv	a0,s0

l2304F258:
	jal	ra,000000002304DEDC

l2304F25C:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.addi16sp	00000020
	c.jr	ra

l2304F266:
	c.addi4spn	a0,00000008
	jal	ra,000000002304F1F6
	c.addi4spn	a0,00000008
	jal	ra,000000002304E66E
	bge	a0,zero,000000002304F266

l2304F276:
	c.addi4spn	a1,00000008
	c.mv	a0,s0
	jal	ra,000000002304DEDC
	c.beqz	s1,000000002304F25C

l2304F280:
	c.mv	a1,s0
	c.mv	a0,s1
	c.j	000000002304F258

;; bt_send: 2304F286
;;   Called from:
;;     2304A286 (in send_frag)
;;     2304F2BC (in bt_hci_cmd_send)
;;     2304FE40 (in hci_tx_thread)
bt_send proc
	lui	a5,0004200E
	lw	a5,a5,-000001EC
	lw	t1,a5,+00000010
	c.jr	t1

;; bt_hci_cmd_send: 2304F294
;;   Called from:
;;     2304B0B8 (in bt_conn_disconnect)
;;     2304B0EE (in bt_conn_disconnect)
;;     2304B3AC (in conn_update_timeout)
;;     2304F366 (in bt_le_set_data_len)
;;     2304F430 (in start_le_scan)
;;     2304F83C (in le_ltk_request)
;;     2304F8CC (in le_conn_param_neg_reply)
;;     2304F9E2 (in le_conn_param_req)
;;     2304FC48 (in enh_conn_complete)
bt_hci_cmd_send proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	s2,00000000
	c.swsp	ra,00000084
	c.swsp	s1,00000080
	c.mv	s2,a0
	c.mv	s0,a1
	c.bnez	a1,000000002304F2B0

l2304F2A4:
	jal	ra,000000002304E6F6
	c.mv	s0,a0
	addi	s1,zero,-00000037
	c.beqz	a0,000000002304F2D8

l2304F2B0:
	c.lui	a5,00001000
	addi	a5,a5,-000003CB
	bne	s2,a5,000000002304F2E6

l2304F2BA:
	c.mv	a0,s0
	jal	ra,000000002304F286
	c.mv	s1,a0
	c.beqz	a0,000000002304F2D8

l2304F2C4:
	c.mv	a1,a0
	lui	a0,000230BB
	addi	a0,a0,-0000034C
	jal	ra,0000000023082388
	c.mv	a0,s0
	jal	ra,00000000230491C0

l2304F2D8:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.mv	a0,s1
	c.lwsp	zero,00000048
	c.lwsp	tp,00000024
	c.addi	sp,00000010
	c.jr	ra

l2304F2E6:
	lui	a0,0004200E
	c.mv	a1,s0
	addi	a0,a0,-000001F8
	jal	ra,00000000230491A6
	lui	a0,00042026
	addi	a0,a0,+00000644
	jal	ra,0000000023048B7E
	c.li	s1,00000000
	c.j	000000002304F2D8

;; bt_le_set_data_len: 2304F304
;;   Called from:
;;     23056252 (in ble_set_data_len)
;;     23056D98 (in ble_tp_connected)
;;     2305B9A6 (in blsync_connected)
bt_le_set_data_len proc
	c.addi	sp,FFFFFFE0
	c.swsp	s3,00000084
	c.lui	s3,00002000
	c.swsp	s1,00000088
	c.swsp	s4,00000004
	c.mv	s1,a1
	c.mv	s4,a0
	c.li	a1,00000006
	addi	a0,s3,+00000022
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s2,00000008
	c.mv	s0,a2
	jal	ra,000000002304E6F6
	c.beqz	a0,000000002304F36A

l2304F326:
	c.mv	s2,a0
	c.li	a1,00000006
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	lhu	a5,s4,+00000000
	sb	s1,a0,+00000002
	sb	s0,a0,+00000004
	sb	a5,a0,+00000000
	c.srli	s1,00000008
	c.srli	s0,00000008
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	sb	s1,a0,+00000003
	sb	s0,a0,+00000005
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	s0,00000088
	c.mv	a1,s2
	addi	a0,s3,+00000022
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	jal	zero,000000002304F294

l2304F36A:
	lui	a0,000230BB
	addi	a0,a0,+00000194
	jal	ra,0000000023082388
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	c.lwsp	s0,00000088
	addi	a0,zero,-00000037
	c.addi16sp	00000020
	c.jr	ra

;; start_le_scan: 2304F38A
;;   Called from:
;;     2304F4E6 (in bt_le_scan_update)
;;     23050CC4 (in bt_le_scan_start)
start_le_scan proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.mv	s0,a2
	c.swsp	s2,00000010
	c.mv	s1,a0
	c.mv	s2,a1
	c.li	a2,00000007
	c.li	a1,00000000
	c.addi4spn	a0,00000008
	c.swsp	ra,00000094
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	jal	ra,00000000230A3A68
	sb	s0,sp,+0000000B
	c.srli	s0,00000008
	sb	s2,sp,+00000009
	sb	s0,sp,+0000000C
	srli	s2,s2,00000008
	lui	s0,0004200E
	sb	s2,sp,+0000000A
	addi	s2,s0,-000002A0
	addi	a0,s2,+0000006C
	c.li	a1,0000000E
	sb	s1,sp,+00000008
	jal	ra,000000002304DEC4
	lbu	a5,s2,+00000000
	sltu	a0,zero,a0
	lui	s2,0004200E
	sb	a5,sp,+0000000D
	sb	a0,sp,+0000000E
	c.li	a5,00000001
	addi	s0,s0,-000002A0
	addi	s2,s2,-00000234
	bne	s1,a5,000000002304F450

l2304F3F6:
	c.li	a1,00000006
	c.mv	a0,s2
	jal	ra,000000002304DEC4
	c.bnez	a0,000000002304F450

l2304F400:
	jal	ra,000000002304E9A8
	c.mv	s0,a0
	c.bnez	a0,000000002304F466

l2304F408:
	sb	s1,sp,+0000000D

l2304F40C:
	c.lui	s4,00002000
	c.li	a1,00000007
	addi	a0,s4,+0000000B
	jal	ra,000000002304E6F6
	c.mv	s3,a0
	addi	s0,zero,-00000037
	c.beqz	a0,000000002304F466

l2304F420:
	c.li	a2,00000007
	c.addi4spn	a1,00000008
	c.addi	a0,00000008
	jal	ra,00000000230492F0
	c.mv	a1,s3
	addi	a0,s4,+0000000B
	jal	ra,000000002304F294
	c.li	a0,00000001
	jal	ra,000000002304E89A
	c.mv	s0,a0
	c.bnez	a0,000000002304F466

l2304F43E:
	addi	a2,s1,-00000001
	sltiu	a2,a2,+00000001
	c.li	a1,0000000C
	c.mv	a0,s2
	jal	ra,000000002304DF60
	c.j	000000002304F466

l2304F450:
	lbu	a4,sp,+0000000D
	c.li	a5,00000001
	bne	a4,a5,000000002304F40C

l2304F45A:
	addi	a0,s0,+00000001
	jal	ra,000000002304E92C
	c.mv	s0,a0
	c.beqz	a0,000000002304F40C

l2304F466:
	c.mv	a0,s0
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

;; bt_le_scan_update: 2304F478
;;   Called from:
;;     2304B07C (in bt_conn_disconnect)
;;     2304B1E6 (in bt_conn_create_le)
;;     2304F75C (in le_adv_report)
;;     2304FA7A (in enh_conn_complete)
;;     23050072 (in bt_finalize_init)
;;     23050D02 (in bt_le_scan_stop)
bt_le_scan_update proc
	c.addi	sp,FFFFFFF0
	c.swsp	s2,00000000
	c.mv	s2,a0
	lui	a0,0004200E
	c.li	a1,0000000B
	addi	a0,a0,-00000234
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	c.swsp	s1,00000080
	jal	ra,000000002304DEC4
	c.beqz	a0,000000002304F498

l2304F494:
	c.li	a0,00000000
	c.j	000000002304F4F2

l2304F498:
	lui	s0,0004200E
	addi	s0,s0,-00000234
	c.li	a1,0000000A
	c.mv	a0,s0
	jal	ra,000000002304DEC4
	c.bnez	a0,000000002304F4EA

l2304F4AA:
	c.li	a1,00000003
	c.li	a0,00000000
	jal	ra,000000002304AE94
	c.bnez	a0,000000002304F4FE

l2304F4B4:
	c.li	a1,00000001
	jal	ra,000000002304AE94
	c.mv	s1,a0
	c.beqz	a0,000000002304F494

l2304F4BE:
	c.lui	a1,FFFFE000
	c.addi	a1,FFFFFFFF
	c.mv	a0,s0
	jal	ra,0000000023048EE2
	c.mv	a0,s1
	jal	ra,000000002304AF4A
	bne	s2,zero,000000002304F504

l2304F4D2:
	c.lui	a1,00001000
	c.li	a2,00000012
	addi	a1,a1,-00000800

l2304F4DA:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,000000002304F38A

l2304F4EA:
	c.li	a0,00000000
	jal	ra,000000002304E89A
	c.beqz	a0,000000002304F4AA

l2304F4F2:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.lwsp	tp,00000024
	c.lwsp	zero,00000048
	c.addi	sp,00000010
	c.jr	ra

l2304F4FE:
	jal	ra,000000002304AF4A
	c.j	000000002304F494

l2304F504:
	addi	a2,zero,+00000030
	addi	a1,zero,+00000060
	c.j	000000002304F4DA

;; le_adv_report: 2304F50E
le_adv_report proc
	c.addi16sp	FFFFFFB0
	c.swsp	s5,00000098
	addi	s5,a0,+00000008
	c.swsp	s1,000000A0
	c.swsp	s3,0000009C
	lui	s1,0004200E
	c.mv	s3,a0
	c.mv	a0,s5
	c.swsp	s4,0000001C
	c.swsp	s6,00000018
	c.swsp	s8,00000014
	c.swsp	ra,000000A4
	c.swsp	s0,00000024
	c.swsp	s2,00000020
	c.swsp	s7,00000094
	c.swsp	s9,00000090
	c.swsp	s10,00000010
	c.swsp	s11,0000008C
	addi	s1,s1,-000002A0
	jal	ra,0000000023049414
	c.lui	s6,00010000
	c.mv	s4,a0
	c.addi	s6,FFFFFFFF
	addi	s8,s1,+0000006C

l2304F548:
	beq	s4,zero,000000002304F562

l2304F54C:
	lhu	a5,s3,+0000000C
	c.li	a4,00000008
	bltu	a4,a5,000000002304F580

l2304F556:
	lui	a0,000230BB
	addi	a0,a0,+000004BC
	jal	ra,0000000023082388

l2304F562:
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

l2304F580:
	c.li	a1,00000009
	c.mv	a0,s5
	jal	ra,0000000023049400
	lbu	a5,a0,+00000008
	addi	s11,a0,+00000001
	c.li	a4,00000001
	c.add	a5,a0
	lbu	s0,a5,+00000009
	lbu	a5,a0,+00000001
	c.mv	s2,a0
	c.mv	a1,s11
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	bltu	a4,a5,000000002304F72A

l2304F5AA:
	c.addi4spn	a0,00000008
	jal	ra,000000002304DEDC
	lbu	a5,sp,+00000008
	c.addi	a5,FFFFFFFE
	sb	a5,sp,+00000008

l2304F5BA:
	lui	a5,0004200F
	addi	s10,a5,+00000484
	lw	a4,s10,+00000000
	c.beqz	a4,000000002304F602

l2304F5C8:
	c.mv	a0,s5
	jal	ra,00000000230494D6
	lbu	a3,s2,+00000008
	lhu	s9,s3,+0000000C
	lw	a5,s10,+00000000
	sh	a3,s3,+0000000C
	lbu	a2,s2,+00000000
	slli	a1,s0,00000018
	c.mv	s7,a0
	c.mv	a3,s5
	c.addi4spn	a0,00000008
	c.srai	a1,00000018
	c.jalr	a5
	lw	a0,s3,+00000010
	and	s7,s7,s6
	sh	s9,s3,+0000000C
	c.add	a0,s7
	sw	a0,s3,+00000008

l2304F602:
	c.li	a1,0000000B
	c.mv	a0,s8
	lbu	s0,s2,+00000000
	jal	ra,000000002304DEC4
	bne	a0,zero,000000002304F716

l2304F612:
	c.li	a5,00000001
	bltu	a5,s0,000000002304F716

l2304F618:
	c.li	a1,00000001
	c.addi4spn	a0,00000008
	jal	ra,000000002304AE94
	c.mv	s0,a0
	beq	a0,zero,000000002304F716

l2304F626:
	c.li	a1,0000000A
	c.mv	a0,s8
	jal	ra,000000002304DEC4
	bne	a0,zero,000000002304F73C

l2304F632:
	addi	s7,s0,+0000007E
	c.mv	a1,s11
	c.mv	a0,s7
	jal	ra,000000002304DEDC
	lbu	s11,s0,+00000008
	c.li	a0,00000007
	add	a0,s11,a0
	add	a5,s1,a0
	lbu	a4,a5,+00000000
	c.li	a5,00000001
	bne	a4,a5,000000002304F662

l2304F656:
	c.addi	a0,00000001
	c.add	a0,s1
	jal	ra,000000002304E92C
	bne	a0,zero,000000002304F746

l2304F662:
	c.li	a5,00000007
	add	s11,s11,a5
	c.lui	a0,00002000
	c.li	a1,00000019
	c.addi	a0,0000000D
	c.add	s11,s1
	lbu	s11,s11,+00000000
	jal	ra,000000002304E6F6
	c.mv	s9,a0
	c.beqz	a0,000000002304F746

l2304F67C:
	c.li	a1,00000019
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	c.li	a2,00000019
	c.li	a1,00000000
	c.mv	s10,a0
	jal	ra,00000000230A3A68
	addi	a4,zero,+00000060
	sb	a4,s10,+00000000
	sb	zero,s10,+00000001
	sb	a4,s10,+00000002
	sb	zero,s10,+00000003
	lbu	a4,s1,+00000090
	c.beqz	a4,000000002304F6B4

l2304F6A8:
	lbu	a2,s1,+00000091
	bltu	a4,a2,000000002304F6B4

l2304F6B0:
	addi	s7,s0,+00000070

l2304F6B4:
	c.mv	a1,s7
	addi	a0,s10,+00000005
	jal	ra,000000002304DEDC
	sb	s11,s10,+0000000C
	lhu	a4,s0,+00000088
	c.lui	a0,00002000
	c.li	a2,00000000
	sb	a4,s10,+0000000D
	c.srli	a4,00000008
	sb	a4,s10,+0000000E
	lhu	a4,s0,+0000008A
	c.mv	a1,s9
	c.addi	a0,0000000D
	sb	a4,s10,+0000000F
	c.srli	a4,00000008
	sb	a4,s10,+00000010
	lhu	a4,s0,+0000008C
	sb	a4,s10,+00000011
	c.srli	a4,00000008
	sb	a4,s10,+00000012
	lhu	a4,s0,+0000008E
	sb	a4,s10,+00000013
	c.srli	a4,00000008
	sb	a4,s10,+00000014
	jal	ra,000000002304E790
	c.bnez	a0,000000002304F746

l2304F708:
	c.mv	a0,s0
	c.li	a1,00000003
	jal	ra,000000002304AABE
	c.mv	a0,s0
	jal	ra,000000002304AF4A

l2304F716:
	lbu	a1,s2,+00000008
	c.mv	a0,s5
	c.addi	s4,FFFFFFFF
	c.addi	a1,00000001
	jal	ra,00000000230493EC
	andi	s4,s4,+000000FF
	c.j	000000002304F548

l2304F72A:
	lbu	a0,s1,+00000008
	jal	ra,000000002304ED6A
	c.mv	a1,a0
	c.addi4spn	a0,00000008
	jal	ra,000000002304DEDC
	c.j	000000002304F5BA

l2304F73C:
	c.li	a0,00000000
	jal	ra,000000002304E89A
	beq	a0,zero,000000002304F632

l2304F746:
	c.li	a5,0000001F
	sb	a5,s0,+0000000C
	c.li	a1,00000000
	c.mv	a0,s0
	jal	ra,000000002304AABE
	c.mv	a0,s0
	jal	ra,000000002304AF4A
	c.li	a0,00000000
	jal	ra,000000002304F478
	c.j	000000002304F716

;; le_ltk_request: 2304F762
le_ltk_request proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.lw	a0,8(s1)
	lbu	s0,s1,+00000001
	lbu	a5,s1,+00000000
	c.slli	s0,08
	c.or	s0,a5
	c.mv	a0,s0
	jal	ra,000000002304AC8A
	c.bnez	a0,000000002304F7A0

l2304F784:
	lui	a0,000230BB
	c.mv	a1,s0
	addi	a0,a0,+00000510
	jal	ra,0000000023082388

l2304F792:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.addi16sp	00000030
	c.jr	ra

l2304F7A0:
	lbu	a1,s1,+00000003
	lbu	a2,s1,+00000007
	lbu	a6,s1,+00000002
	lbu	a5,s1,+00000006
	c.slli	a1,08
	c.slli	a2,08
	or	a1,a1,a6
	c.or	a2,a5
	lbu	a6,s1,+00000004
	lbu	a5,s1,+00000008
	lbu	a3,s1,+0000000B
	c.slli	a6,10
	c.slli	a5,10
	or	a6,a6,a1
	c.or	a5,a2
	lbu	a1,s1,+00000005
	lbu	a2,s1,+00000009
	lbu	a7,s1,+0000000A
	c.slli	a3,08
	c.slli	a1,18
	c.slli	a2,18
	c.mv	a4,sp
	or	a3,a3,a7
	or	a1,a1,a6
	c.or	a2,a5
	c.mv	s2,a0
	jal	ra,0000000023054CF0
	c.beqz	a0,000000002304F842

l2304F7F6:
	c.lui	s3,00002000
	c.li	a1,00000012
	addi	a0,s3,+0000001A
	jal	ra,000000002304E6F6
	c.mv	s1,a0
	c.bnez	a0,000000002304F81A

l2304F806:
	lui	a0,000230BB
	addi	a0,a0,+000004F4
	jal	ra,0000000023082388

l2304F812:
	c.mv	a0,s2
	jal	ra,000000002304AF4A
	c.j	000000002304F792

l2304F81A:
	c.li	a1,00000012
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	sb	s0,a0,+00000000
	c.srli	s0,00000008
	sb	s0,a0,+00000001
	c.mv	a1,sp
	c.li	a2,00000010
	c.addi	a0,00000002
	jal	ra,00000000230A382C
	c.mv	a1,s1
	addi	a0,s3,+0000001A

l2304F83C:
	jal	ra,000000002304F294
	c.j	000000002304F812

l2304F842:
	c.lui	s3,00002000
	c.li	a1,00000002
	addi	a0,s3,+0000001B
	jal	ra,000000002304E6F6
	c.mv	s1,a0
	c.beqz	a0,000000002304F806

l2304F852:
	c.li	a1,00000002
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	sb	s0,a0,+00000000
	c.srli	s0,00000008
	sb	s0,a0,+00000001
	c.mv	a1,s1
	addi	a0,s3,+0000001B
	c.j	000000002304F83C

;; le_conn_param_neg_reply: 2304F86C
;;   Called from:
;;     2304F946 (in le_conn_param_req)
;;     2304F968 (in le_conn_param_req)
le_conn_param_neg_reply proc
	c.addi	sp,FFFFFFE0
	c.swsp	s2,00000008
	c.lui	s2,00002000
	c.swsp	s0,0000000C
	c.swsp	s3,00000084
	c.mv	s0,a0
	c.mv	s3,a1
	addi	a0,s2,+00000021
	c.li	a1,00000003
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	jal	ra,000000002304E6F6
	c.bnez	a0,000000002304F8A2

l2304F88A:
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.lwsp	a2,00000068
	lui	a0,000230BB
	addi	a0,a0,+000004D8
	c.addi16sp	00000020
	jal	zero,0000000023082388

l2304F8A2:
	c.mv	s1,a0
	c.li	a1,00000003
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	sb	s0,a0,+00000000
	c.srli	s0,00000008
	sb	s0,a0,+00000001
	sb	s3,a0,+00000002
	c.lwsp	s8,00000004
	c.lwsp	t3,00000020
	c.lwsp	a2,00000068
	c.mv	a1,s1
	addi	a0,s2,+00000021
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	jal	zero,000000002304F294

;; le_conn_param_req: 2304F8D0
le_conn_param_req proc
	c.addi16sp	FFFFFFD0
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s4,0000000C
	c.lw	a0,8(a5)
	lbu	s0,a5,+00000001
	lbu	a4,a5,+00000000
	lbu	a3,a5,+00000002
	c.slli	s0,08
	c.or	s0,a4
	lbu	a4,a5,+00000003
	c.mv	a0,s0
	c.slli	a4,08
	c.or	a4,a3
	sh	a4,sp,+00000008
	lbu	a4,a5,+00000005
	lbu	a3,a5,+00000004
	c.slli	a4,08
	c.or	a4,a3
	sh	a4,sp,+0000000A
	lbu	a4,a5,+00000007
	lbu	a3,a5,+00000006
	c.slli	a4,08
	c.or	a4,a3
	sh	a4,sp,+0000000C
	lbu	a4,a5,+00000008
	lbu	a5,a5,+00000009
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,sp,+0000000E
	jal	ra,000000002304AC8A
	c.bnez	a0,000000002304F95A

l2304F934:
	lui	a0,000230BB
	c.mv	a1,s0
	addi	a0,a0,+00000510
	jal	ra,0000000023082388
	c.li	a1,00000002
	c.mv	a0,s0
	jal	ra,000000002304F86C

l2304F94A:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.addi16sp	00000030
	c.jr	ra

l2304F95A:
	c.addi4spn	a1,00000008
	c.mv	s3,a0
	jal	ra,000000002304A4CC
	c.bnez	a0,000000002304F974

l2304F964:
	c.li	a1,0000001E
	c.mv	a0,s0
	jal	ra,000000002304F86C

l2304F96C:
	c.mv	a0,s3
	jal	ra,000000002304AF4A
	c.j	000000002304F94A

l2304F974:
	c.lui	s4,00002000
	c.li	a1,0000000E
	addi	a0,s4,+00000020
	jal	ra,000000002304E6F6
	c.mv	s2,a0
	c.beqz	a0,000000002304F96C

l2304F984:
	c.li	a1,0000000E
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	c.mv	s1,a0
	c.li	a2,0000000E
	c.li	a1,00000000
	jal	ra,00000000230A3A68
	sb	s0,s1,+00000000
	c.srli	s0,00000008
	sb	s0,s1,+00000001
	lbu	a5,sp,+00000008
	c.mv	a1,s2
	addi	a0,s4,+00000020
	sb	a5,s1,+00000002
	lbu	a5,sp,+00000009
	sb	a5,s1,+00000003
	lhu	a5,sp,+0000000A
	sb	a5,s1,+00000004
	c.srli	a5,00000008
	sb	a5,s1,+00000005
	lbu	a5,sp,+0000000C
	sb	a5,s1,+00000006
	lbu	a5,sp,+0000000D
	sb	a5,s1,+00000007
	lhu	a5,sp,+0000000E
	sb	a5,s1,+00000008
	c.srli	a5,00000008
	sb	a5,s1,+00000009
	jal	ra,000000002304F294
	c.j	000000002304F96C

;; enh_conn_complete: 2304F9E8
;;   Called from:
;;     2304FC62 (in le_enh_conn_complete)
;;     2304FD40 (in le_legacy_conn_complete)
enh_conn_complete proc
	c.addi16sp	FFFFFFD0
	c.swsp	s1,00000090
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	ra,00000094
	c.swsp	s0,00000014
	c.swsp	s4,0000000C
	c.swsp	s5,00000088
	lbu	s4,a0,+00000002
	lbu	a5,a0,+00000001
	lui	s2,0004200E
	c.mv	s1,a0
	c.lui	a1,FFFE0000
	addi	a0,s2,-000002A0
	c.slli	s4,08
	c.addi	a1,FFFFFFFF
	addi	a0,a0,+0000006C
	or	s4,s4,a5
	jal	ra,0000000023048EE2
	lui	s3,0004200E
	slli	a5,a0,0000000E
	addi	s2,s2,-000002A0
	addi	s3,s3,-00000234
	bge	a5,zero,000000002304FA40

l2304FA30:
	lui	a1,0002304F
	c.li	a2,00000000
	addi	a1,a1,+00000158
	c.li	a0,00000002
	jal	ra,0000000023055724

l2304FA40:
	lbu	a5,s1,+00000000
	c.beqz	a5,000000002304FAAE

l2304FA46:
	c.li	a0,00000000
	jal	ra,000000002304E3AE
	c.mv	s0,a0
	c.beqz	a0,000000002304FA9C

l2304FA50:
	lbu	a1,s1,+00000000
	addi	a5,zero,+0000003C
	sb	a1,a0,+0000000C
	bne	a1,a5,000000002304FA80

l2304FA60:
	addi	a1,zero,-00000041
	c.mv	a0,s3
	jal	ra,0000000023048EE2
	c.li	a1,00000000
	c.mv	a0,s0

l2304FA6E:
	jal	ra,000000002304AABE

l2304FA72:
	c.mv	a0,s0
	jal	ra,000000002304AF4A
	c.li	a0,00000000
	jal	ra,000000002304F478
	c.j	000000002304FA9C

l2304FA80:
	c.li	a5,00000002
	bne	a1,a5,000000002304FA8A

l2304FA86:
	c.li	a1,00000000
	c.j	000000002304FA6E

l2304FA8A:
	lui	a0,000230BB
	addi	a0,a0,+0000028C
	jal	ra,0000000023082388
	c.mv	a0,s0
	jal	ra,000000002304AF4A

l2304FA9C:
	c.lwsp	a2,00000130
	c.lwsp	s0,00000114
	c.lwsp	tp,00000134
	c.lwsp	zero,00000158
	c.lwsp	t3,00000068
	c.lwsp	s8,00000088
	c.lwsp	s4,000000A8
	c.addi16sp	00000030
	c.jr	ra

l2304FAAE:
	addi	s0,s1,+00000004
	c.mv	a1,s0
	c.addi4spn	a0,00000008
	jal	ra,000000002304DEDC
	lbu	a5,sp,+00000008
	c.li	s5,00000001
	c.addi	a5,FFFFFFFE
	andi	a5,a5,+000000FF
	bltu	s5,a5,000000002304FB2E

l2304FACA:
	c.li	a2,00000006
	addi	a1,s1,+00000011
	addi	a0,sp,+00000001
	sb	a5,sp,+00000008
	jal	ra,00000000230A382C
	sb	s5,sp,+00000000

l2304FAE0:
	c.addi4spn	a0,00000008
	jal	ra,000000002304E3AE
	lbu	a4,s1,+00000003
	c.li	a5,00000001
	c.mv	s0,a0
	bne	a4,a5,000000002304FB0A

l2304FAF2:
	addi	a1,zero,-00000041
	c.mv	a0,s3
	jal	ra,0000000023048EE2
	c.bnez	s0,000000002304FB0A

l2304FAFE:
	lbu	a0,s2,+00000008
	c.addi4spn	a1,00000008
	jal	ra,000000002304AA04
	c.mv	s0,a0

l2304FB0A:
	lbu	a5,s1,+00000003
	c.bnez	a5,000000002304FB1C

l2304FB10:
	c.bnez	s0,000000002304FB38

l2304FB12:
	c.addi4spn	a1,00000008
	c.li	a0,00000000
	jal	ra,000000002304AA04
	c.mv	s0,a0

l2304FB1C:
	c.bnez	s0,000000002304FB38

l2304FB1E:
	lui	a0,000230BB
	c.mv	a1,s4
	addi	a0,a0,+000002A8
	jal	ra,0000000023082388
	c.j	000000002304FA9C

l2304FB2E:
	c.mv	a1,s0
	c.mv	a0,sp
	jal	ra,000000002304DEDC
	c.j	000000002304FAE0

l2304FB38:
	sh	s4,s0,+00000000
	c.addi4spn	a1,00000008
	addi	a0,s0,+00000070
	jal	ra,000000002304DEDC
	lbu	a5,s1,+00000018
	lbu	a4,s1,+00000017
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s0,+00000086
	lbu	a5,s1,+0000001A
	lbu	a4,s1,+00000019
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s0,+0000008C
	lbu	a5,s1,+0000001C
	lbu	a4,s1,+0000001B
	c.slli	a5,08
	c.or	a5,a4
	sh	a5,s0,+0000008E
	lbu	a5,s1,+00000003
	c.li	a4,00000001
	sb	zero,s0,+0000000C
	sb	a5,s0,+00000003
	bne	a5,a4,000000002304FBC0

l2304FB88:
	c.mv	a1,sp
	addi	a0,s0,+00000077
	jal	ra,000000002304DEDC
	lbu	a1,s0,+00000008
	c.li	a5,00000007
	addi	a0,s0,+0000007E
	add	a1,a1,a5
	c.add	a1,s2
	jal	ra,000000002304DEDC
	c.li	a1,00000009
	c.mv	a0,s3
	jal	ra,000000002304DEC4
	c.beqz	a0,000000002304FBC0

l2304FBB0:
	lw	a5,s2,+0000007C
	andi	a5,a5,+00000040
	c.beqz	a5,000000002304FBC0

l2304FBBA:
	c.li	a0,00000001
	jal	ra,000000002304EA9E

l2304FBC0:
	lbu	a5,s0,+00000003
	c.bnez	a5,000000002304FBFC

l2304FBC6:
	c.li	a1,0000000F
	c.mv	a0,s3
	jal	ra,000000002304DEC4
	c.beqz	a0,000000002304FBDE

l2304FBD0:
	c.lui	a1,FFFF8000
	sb	zero,s0,+00000008
	c.addi	a1,FFFFFFFF
	c.mv	a0,s3
	jal	ra,0000000023048EE2

l2304FBDE:
	c.mv	a1,sp
	addi	a0,s0,+0000007E
	jal	ra,000000002304DEDC
	lbu	a1,s0,+00000008
	c.li	a5,00000007
	addi	a0,s0,+00000077
	add	a1,a1,a5
	c.add	a1,s2
	jal	ra,000000002304DEDC

l2304FBFC:
	c.li	a1,00000004
	c.mv	a0,s0
	jal	ra,000000002304AABE
	lbu	a4,s0,+0000000D
	c.li	a5,00000004
	bne	a4,a5,000000002304FA72

l2304FC0E:
	lbu	a5,s1,+00000003
	c.beqz	a5,000000002304FC1C

l2304FC14:
	lbu	a5,s2,+00000070
	c.andi	a5,00000008
	c.beqz	a5,000000002304FC4E

l2304FC1C:
	c.lui	s2,00002000
	c.li	a1,00000002
	addi	a0,s2,+00000016
	jal	ra,000000002304E6F6
	c.mv	s1,a0
	c.beqz	a0,000000002304FC4E

l2304FC2C:
	c.li	a1,00000002
	c.addi	a0,00000008
	jal	ra,00000000230492DE
	lhu	a5,s0,+00000000
	c.mv	a1,s1
	sb	a5,a0,+00000000
	c.srli	a5,00000008
	sb	a5,a0,+00000001
	addi	a0,s2,+00000016
	jal	ra,000000002304F294
	c.j	000000002304FA72

l2304FC4E:
	lbu	a4,s0,+00000003
	c.li	a5,00000001
	bne	a4,a5,000000002304FA72

l2304FC58:
	c.mv	a0,s0
	jal	ra,000000002304DF7C
	c.j	000000002304FA72

;; le_enh_conn_complete: 2304FC60
le_enh_conn_complete proc
	c.lw	a0,8(a0)
	jal	zero,000000002304F9E8

;; le_legacy_conn_complete: 2304FC66
le_legacy_conn_complete proc
	c.addi16sp	FFFFFFC0
	c.swsp	ra,0000009C
	c.swsp	s1,00000098
	c.swsp	s0,0000001C
	c.lw	a0,8(s0)
	c.addi4spn	s1,00000014
	c.mv	a0,s1
	lbu	a5,s0,+00000000
	lbu	a4,s0,+00000001
	addi	a1,s0,+00000004
	sb	a5,sp,+00000010
	lbu	a5,s0,+00000002
	c.slli	a5,08
	c.or	a5,a4
	sb	a5,sp,+00000011
	c.srli	a5,00000008
	sb	a5,sp,+00000012
	lbu	a5,s0,+00000003
	sb	a5,sp,+00000013
	lbu	a5,s0,+0000000C
	lbu	a4,s0,+0000000B
	c.slli	a5,08
	c.or	a5,a4
	sb	a5,sp,+00000027
	c.srli	a5,00000008
	sb	a5,sp,+00000028
	lbu	a5,s0,+0000000E
	lbu	a4,s0,+0000000D
	c.slli	a5,08
	c.or	a5,a4
	sb	a5,sp,+00000029
	c.srli	a5,00000008
	sb	a5,sp,+0000002A
	lbu	a5,s0,+00000010
	lbu	a4,s0,+0000000F
	c.slli	a5,08
	c.or	a5,a4
	sb	a5,sp,+0000002B
	c.srli	a5,00000008
	sb	a5,sp,+0000002C
	lbu	a5,s0,+00000011
	sb	a5,sp,+0000002D
	jal	ra,000000002304DEDC
	c.mv	a1,sp
	c.li	a2,00000006
	addi	a0,sp,+0000001B
	c.swsp	zero,00000000
	sh	zero,sp,+00000004
	jal	ra,00000000230A382C
	lbu	a4,s0,+00000003
	c.li	a5,00000001
	c.mv	a1,s1
	c.li	a0,00000000
	bne	a4,a5,000000002304FD14

l2304FD0C:
	lui	a5,0004200E
	lbu	a0,a5,-00000298

l2304FD14:
	jal	ra,000000002304ED6A
	c.mv	s0,a0
	beq	a0,s1,000000002304FD4E

l2304FD1E:
	c.li	a2,00000006
	addi	a1,sp,+00000015
	addi	a0,sp,+00000021
	jal	ra,00000000230A382C
	c.mv	a1,s0
	c.mv	a0,s1
	jal	ra,000000002304DEDC
	lbu	a5,sp,+00000014
	c.addi	a5,00000002
	sb	a5,sp,+00000014

l2304FD3E:
	c.addi4spn	a0,00000010
	jal	ra,000000002304F9E8
	c.lwsp	t3,00000130
	c.lwsp	s8,00000114
	c.lwsp	s4,00000134
	c.addi16sp	00000040
	c.jr	ra

l2304FD4E:
	c.li	a2,00000006
	c.addi4spn	a1,00000008
	addi	a0,sp,+00000021
	c.swsp	zero,00000004
	sh	zero,sp,+0000000C
	jal	ra,00000000230A382C
	c.j	000000002304FD3E

;; hci_tx_thread: 2304FD62
hci_tx_thread proc
	c.addi16sp	FFFFFFD0
	c.swsp	s0,00000014
	c.swsp	s1,00000090
	lui	s0,0004200E
	lui	s1,0004200E
	c.swsp	s4,0000000C
	addi	s1,s1,-000001C8
	c.lui	s4,FFFF1000
	addi	s0,s0,-000002A0
	c.swsp	s7,00000084
	c.swsp	s8,00000004
	c.swsp	ra,00000094
	c.swsp	s2,00000010
	c.swsp	s3,0000008C
	c.swsp	s5,00000088
	c.swsp	s6,00000008
	c.swsp	s9,00000080
	c.swsp	s10,00000000
	c.addi	s4,FFFFFFFF
	addi	s7,s1,+00000014
	addi	s8,s0,+000000A8

l2304FD98:
	c.lw	s1,12(a5)
	c.mv	a0,s7
	and	a5,a5,s4
	c.sw	s1,12(a5)
	jal	ra,000000002304A91C
	addi	s3,a0,+00000001
	c.li	a2,FFFFFFFF
	c.mv	a1,s3
	c.mv	a0,s1
	jal	ra,00000000230570A2
	c.beqz	a0,000000002304FDBA

l2304FDB6:
	jal	ra,0000000023000C02

l2304FDBA:
	lui	s5,0004200E
	lui	s6,00042016
	c.mv	s2,s1
	addi	s5,s5,-00000208
	lui	s9,000230BB
	addi	s6,s6,-000006D4

l2304FDD0:
	bne	s3,zero,000000002304FDDA

l2304FDD4:
	jal	ra,0000000023048C3C
	c.j	000000002304FD98

l2304FDDA:
	lw	a1,s2,+0000000C
	c.li	a5,00000002
	c.srli	a1,0000000C
	c.andi	a1,0000000F
	beq	a1,a5,000000002304FDF0

l2304FDE8:
	c.li	a5,00000004
	beq	a1,a5,000000002304FDF6

l2304FDEE:
	c.bnez	a1,000000002304FE98

l2304FDF0:
	c.addi	s2,00000014
	c.addi	s3,FFFFFFFF
	c.j	000000002304FDD0

l2304FDF6:
	lbu	a5,s2,+0000000C
	c.bnez	a5,000000002304FE84

l2304FDFC:
	c.li	a1,00000000
	c.mv	a0,s8
	jal	ra,00000000230490A4
	c.mv	s10,a0
	c.bnez	a0,000000002304FE0C

l2304FE08:
	jal	ra,0000000023000C02

l2304FE0C:
	c.li	a1,FFFFFFFF
	addi	a0,s0,+00000098
	jal	ra,0000000023048B5E
	lw	a5,s0,+000000A4
	c.beqz	a5,000000002304FE34

l2304FE1C:
	lui	a0,000230BB
	addi	a0,a0,+00000418
	jal	ra,0000000023082388
	lw	a0,s0,+000000A4
	jal	ra,00000000230491C0
	sw	zero,s0,+000000A4

l2304FE34:
	c.mv	a0,s10
	jal	ra,000000002304926E
	sw	a0,s0,+000000A4
	c.mv	a0,s10
	jal	ra,000000002304F286
	c.mv	a1,a0
	c.beqz	a0,000000002304FDF0

l2304FE48:
	addi	a0,s9,-0000034C
	jal	ra,0000000023082388
	c.mv	a0,s5
	jal	ra,0000000023048B7E
	c.mv	a0,s10
	jal	ra,0000000023048F1E
	c.li	a5,0000000C
	add	a0,a0,a5
	c.li	a2,00000000
	c.li	a1,0000001F
	c.add	a0,s6
	lhu	a0,a0,+00000002
	jal	ra,000000002304E4BE
	lw	a0,s0,+000000A4
	jal	ra,00000000230491C0
	c.mv	a0,s10
	sw	zero,s0,+000000A4
	jal	ra,00000000230491C0
	c.j	000000002304FDF0

l2304FE84:
	c.li	a4,00000001
	bne	a5,a4,000000002304FDF0

l2304FE8A:
	lw	a0,s2,+00000010
	addi	a0,a0,-00000034
	jal	ra,000000002304B576
	c.j	000000002304FDF0

l2304FE98:
	lui	a0,000230BB
	addi	a0,a0,+00000438
	jal	ra,0000000023082388
	c.j	000000002304FDF0

;; bt_recv: 2304FEA6
;;   Called from:
;;     2304A19A (in recv_thread)
bt_recv proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	lbu	a1,a0,+00000014
	c.li	a5,00000001
	c.mv	s0,a0
	beq	a1,a5,000000002304FF5E

l2304FEBC:
	c.li	a5,00000003
	bne	a1,a5,000000002304FFAA

l2304FEC2:
	lhu	a5,a0,+0000000C
	bltu	a1,a5,000000002304FECE

l2304FECA:
	jal	ra,0000000023000C02

l2304FECE:
	c.li	a1,00000004
	addi	a0,s0,+00000008
	jal	ra,0000000023049400
	lbu	a2,a0,+00000003
	lbu	a5,a0,+00000002
	lbu	s1,a0,+00000001
	c.slli	a2,08
	c.or	a2,a5
	lbu	a5,a0,+00000000
	c.slli	s1,08
	lhu	a1,s0,+0000000C
	c.or	s1,a5
	slli	a0,s1,00000014
	c.srli	a0,00000014
	c.li	a5,FFFFFFFF
	sh	a0,s0,+00000016
	sb	a5,s0,+00000015
	beq	a2,a1,000000002304FF1C

l2304FF08:
	lui	a0,000230BB
	addi	a0,a0,+00000228
	jal	ra,0000000023082388

l2304FF14:
	c.mv	a0,s0
	jal	ra,00000000230491C0
	c.j	000000002304FF50

l2304FF1C:
	jal	ra,000000002304AC8A
	c.mv	s2,a0
	c.bnez	a0,000000002304FF36

l2304FF24:
	lhu	a1,s0,+00000016
	lui	a0,000230BB
	addi	a0,a0,+00000250
	jal	ra,0000000023082388
	c.j	000000002304FF14

l2304FF36:
	jal	ra,000000002304B6FC
	sb	a0,s0,+00000015
	srli	a2,s1,0000000C
	c.mv	a0,s2
	c.mv	a1,s0
	jal	ra,000000002304A726
	c.mv	a0,s2
	jal	ra,000000002304AF4A

l2304FF50:
	c.li	a0,00000000

l2304FF52:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l2304FF5E:
	lhu	a5,a0,+0000000C
	bltu	a1,a5,000000002304FF6A

l2304FF66:
	jal	ra,0000000023000C02

l2304FF6A:
	c.li	a1,00000002
	addi	a0,s0,+00000008
	jal	ra,0000000023049400
	lbu	a4,a0,+00000000
	c.li	a5,0000001A
	bltu	a5,a4,000000002304FF94

l2304FF7E:
	c.li	a5,00000001
	sll	a5,a5,a4
	lui	a4,0000408C
	c.and	a5,a4
	c.beqz	a5,000000002304FF94

l2304FF8C:
	c.swsp	a0,00000084
	jal	ra,0000000023000C02
	c.lwsp	a2,00000044

l2304FF94:
	lbu	a0,a0,+00000000
	lui	a2,000230BB
	c.li	a3,00000005
	addi	a2,a2,+00000580
	c.mv	a1,s0
	jal	ra,000000002304E426
	c.j	000000002304FF14

l2304FFAA:
	lui	a0,000230BB
	addi	a0,a0,+00000274
	jal	ra,0000000023082388
	c.mv	a0,s0
	jal	ra,00000000230491C0
	c.li	a0,FFFFFFEA
	c.j	000000002304FF52

;; bt_recv_prio: 2304FFC0
bt_recv_prio proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	c.swsp	ra,0000008C
	lbu	a4,a0,+00000014
	c.li	a5,00000001
	c.mv	s0,a0
	beq	a4,a5,000000002304FFD6

l2304FFD2:
	jal	ra,0000000023000C02

l2304FFD6:
	lhu	a4,s0,+0000000C
	c.li	a5,00000001
	bltu	a5,a4,000000002304FFE4

l2304FFE0:
	jal	ra,0000000023000C02

l2304FFE4:
	c.li	a1,00000002
	addi	a0,s0,+00000008
	jal	ra,0000000023049400
	lbu	a4,a0,+00000000
	c.li	a5,0000001A
	bltu	a5,a4,0000000023050006

l2304FFF8:
	c.li	a5,00000001
	sll	a5,a5,a4
	lui	a4,0000408C
	c.and	a5,a4
	c.bnez	a5,000000002305000E

l23050006:
	c.swsp	a0,00000084
	jal	ra,0000000023000C02
	c.lwsp	a2,00000044

l2305000E:
	lbu	a0,a0,+00000000
	lui	a2,000230BB
	c.mv	a1,s0
	c.li	a3,00000004
	addi	a2,a2,+000005A8
	jal	ra,000000002304E426
	c.mv	a0,s0
	jal	ra,00000000230491C0
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.li	a0,00000000
	c.addi16sp	00000020
	c.jr	ra

;; bt_hci_driver_register: 23050032
;;   Called from:
;;     2304A1BE (in hci_driver_init)
bt_hci_driver_register proc
	lui	a4,0004200E
	addi	a4,a4,-000002A0
	lw	a5,a4,+000000B4
	c.bnez	a5,0000000023050054

l23050040:
	c.lw	a0,12(a3)
	c.li	a5,FFFFFFEA
	c.beqz	a3,0000000023050050

l23050046:
	c.lw	a0,16(a3)
	c.beqz	a3,0000000023050050

l2305004A:
	sw	a0,a4,+000000B4
	c.li	a5,00000000

l23050050:
	c.mv	a0,a5
	c.jr	ra

l23050054:
	addi	a5,zero,-00000045
	c.j	0000000023050050

;; bt_finalize_init: 2305005A
;;   Called from:
;;     23050842 (in init_work)
bt_finalize_init proc
	lui	a0,0004200E
	c.addi	sp,FFFFFFF0
	c.li	a1,00000002
	addi	a0,a0,-00000234
	c.swsp	ra,00000084
	jal	ra,0000000023048EBA
	c.lwsp	a2,00000020
	c.li	a0,00000000
	c.addi	sp,00000010
	jal	zero,000000002304F478

;; bt_delete_queue: 23050076
;;   Called from:
;;     230500D2 (in bt_disable_action)
;;     230500E2 (in bt_disable_action)
;;     230500EE (in bt_disable_action)
bt_delete_queue proc
	c.addi	sp,FFFFFFF0
	c.swsp	s0,00000004
	c.swsp	ra,00000084
	c.mv	s0,a0
	c.li	a1,00000000

l23050080:
	jal	ra,00000000230490A4
	c.bnez	a0,0000000023050092

l23050086:
	c.mv	a0,s0
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,0000000023048A92

l23050092:
	jal	ra,00000000230491C0
	c.li	a1,00000000
	c.mv	a0,s0
	c.j	0000000023050080

;; bt_disable_action: 2305009C
;;   Called from:
;;     2305017A (in bt_disable)
bt_disable_action proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002304C37E
	lui	a0,0004200F
	addi	a0,a0,+00000488
	jal	ra,0000000023048C10
	lui	a0,00042026
	addi	a0,a0,+0000060C
	jal	ra,0000000023048C10
	lui	a0,00042026
	addi	a0,a0,+000005B4
	jal	ra,0000000023048C10
	lui	a0,0004200F
	addi	a0,a0,-0000014C
	jal	ra,0000000023050076
	lui	a0,00042026
	addi	a0,a0,+000005A8
	lui	s0,0004200E
	jal	ra,0000000023050076
	addi	s0,s0,-000002A0
	addi	a0,s0,+000000A8
	jal	ra,0000000023050076
	lui	a0,0004200F
	addi	a0,a0,-00000140
	jal	ra,0000000023048A92
	addi	a0,s0,+00000098
	jal	ra,0000000023048BB0
	lui	a0,00042026
	addi	a0,a0,+00000644
	jal	ra,0000000023048BB0
	lui	a0,00042026
	addi	a0,a0,+00000614
	jal	ra,0000000023048BB0
	addi	a0,s0,+00000084
	jal	ra,0000000023048BB0
	lui	a5,0004200F
	c.li	a4,00000001
	c.li	a1,FFFFFFFE
	addi	a0,s0,+0000006C
	sb	a4,a5,+0000047C
	jal	ra,0000000023048EE2
	jal	ra,0000000023049FA6
	jal	ra,00000000230291BC
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,00000000
	c.addi	sp,00000010
	c.jr	ra

;; bt_disable: 2305014C
;;   Called from:
;;     2305605A (in ble_disable)
bt_disable proc
	c.addi	sp,FFFFFFF0
	c.swsp	ra,00000084
	c.swsp	s0,00000004
	jal	ra,000000002304A51C
	c.bnez	a0,000000002305017E

l23050158:
	lui	s0,0004200E
	addi	s0,s0,-00000234
	c.li	a1,0000000B
	c.mv	a0,s0
	jal	ra,000000002304DEC4
	c.bnez	a0,000000002305017E

l2305016A:
	c.li	a1,00000006
	c.mv	a0,s0
	jal	ra,000000002304DEC4
	c.bnez	a0,000000002305017E

l23050174:
	c.lwsp	s0,00000004
	c.lwsp	a2,00000020
	c.addi	sp,00000010
	jal	zero,000000002305009C

l2305017E:
	c.lwsp	a2,00000020
	c.lwsp	s0,00000004
	c.li	a0,FFFFFFFF
	c.addi	sp,00000010
	c.jr	ra

;; bt_set_name: 23050188
;;   Called from:
;;     230502D6 (in bt_enable)
;;     23056864 (in ble_set_device_name)
bt_set_name proc
	c.addi	sp,FFFFFFE0
	c.swsp	s1,00000088
	c.swsp	ra,0000008C
	c.swsp	s0,0000000C
	c.swsp	s2,00000008
	c.mv	s1,a0
	jal	ra,00000000230A4220
	c.li	a5,0000001D
	bltu	a5,a0,0000000023050216

l2305019E:
	lui	s0,0004200E
	addi	s0,s0,-000002A0
	addi	s2,s0,+000000B8
	c.mv	a1,s1
	c.mv	a0,s2
	jal	ra,00000000230A3FF4
	c.bnez	a0,00000000230501C2

l230501B4:
	c.li	a0,00000000

l230501B6:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.lwsp	s4,00000024
	c.lwsp	a6,00000048
	c.addi16sp	00000020
	c.jr	ra

l230501C2:
	c.mv	a1,s1
	c.li	a2,0000001E
	c.mv	a0,s2
	jal	ra,00000000230A439C
	addi	s0,s0,+0000006C
	c.li	a1,00000007
	c.mv	a0,s0
	jal	ra,000000002304DEC4
	c.beqz	a0,00000000230501B4

l230501DA:
	c.li	a5,00000009
	c.mv	a0,s1
	sb	a5,sp,+00000000
	jal	ra,00000000230A4220
	sb	a0,sp,+00000001
	c.lui	a0,00002000
	c.li	a5,00000001
	c.addi4spn	a1,00000008
	c.li	a2,00000001
	c.addi	a0,00000009
	c.swsp	s1,00000080
	c.swsp	sp,00000004
	c.swsp	a5,00000084
	jal	ra,000000002304EBAC
	c.li	a1,00000006
	c.mv	a0,s0
	jal	ra,000000002304DEC4
	c.beqz	a0,00000000230501B4

l23050208:
	c.li	a0,00000000
	jal	ra,000000002304EA9E
	c.li	a0,00000001
	jal	ra,000000002304EA9E
	c.j	00000000230501B4

l23050216:
	c.li	a0,FFFFFFF4
	c.j	00000000230501B6

;; bt_enable: 2305021A
;;   Called from:
;;     23000F36 (in ble_stack_start)
bt_enable proc
	c.addi	sp,FFFFFFE0
	c.swsp	s0,0000000C
	lui	s0,0004200E
	c.swsp	ra,0000008C
	c.swsp	s1,00000088
	c.swsp	s2,00000008
	c.swsp	s3,00000084
	addi	a5,s0,-000002A0
	lw	a5,a5,+000000B4
	c.bnez	a5,0000000023050252

l23050234:
	lui	a0,000230BB
	addi	a0,a0,-00000068
	jal	ra,0000000023082388
	c.li	s1,FFFFFFED

l23050242:
	c.lwsp	t3,00000020
	c.lwsp	s8,00000004
	c.mv	a0,s1
	c.lwsp	a6,00000048
	c.lwsp	s4,00000024
	c.lwsp	a2,00000068
	c.addi16sp	00000020
	c.jr	ra

l23050252:
	addi	s0,s0,-000002A0
	c.mv	s3,a0
	c.li	a1,00000001
	addi	a0,s0,+0000006C
	jal	ra,0000000023048EBA
	c.andi	a0,00000001
	addi	s1,zero,-00000045
	c.bnez	a0,0000000023050242

l2305026A:
	lui	a1,00023050
	addi	a1,a1,+000003F2
	addi	a0,s0,+00000060
	jal	ra,0000000023049750
	jal	ra,00000000230496E6
	c.li	a2,00000001
	c.li	a1,00000001
	addi	a0,s0,+00000098
	jal	ra,0000000023048B2A
	c.li	a1,00000014
	addi	a0,s0,+000000A8
	jal	ra,0000000023048A3E
	lui	a5,0004200F
	lbu	a5,a5,+0000047C
	lui	s2,0004200E
	c.bnez	a5,00000000230502BE

l230502A2:
	lui	a0,0004200F
	c.li	a1,00000002
	addi	a0,a0,-000000E0
	jal	ra,0000000023048A3E
	lui	a0,0004200F
	c.li	a1,0000000A
	addi	a0,a0,-000000C4
	jal	ra,0000000023048A3E

l230502BE:
	lui	a0,00042026
	c.li	a2,00000001
	c.li	a1,00000000
	addi	a0,a0,+00000644
	jal	ra,0000000023048B2A
	lui	a0,000230BB
	addi	a0,a0,-0000004C
	jal	ra,0000000023050188
	lui	a3,00023050
	lui	a1,000230BB
	lui	a0,0004200F
	lui	a5,0004200F
	c.li	a4,0000001D
	addi	a3,a3,-0000029E
	addi	a2,zero,+00000600
	addi	a1,a1,-0000003C
	addi	a0,a0,+00000488
	sw	s3,a5,+00000480
	jal	ra,0000000023048BE6
	lw	a5,s0,+000000B4
	c.lw	a5,12(a5)
	c.jalr	a5
	c.mv	s1,a0
	c.beqz	a0,0000000023050320
