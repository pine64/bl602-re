
bl_sae.o:     file format elf32-littleriscv


Disassembly of section .text.buf_shift_right:

00000000 <buf_shift_right>:
   0:	4721                	li	a4,8
   2:	95aa                	add	a1,a1,a0

00000004 <.LVL1>:
   4:	8f11                	sub	a4,a4,a2

00000006 <.L2>:
   6:	15fd                	addi	a1,a1,-1

00000008 <.LVL3>:
   8:	00b51963          	bne	a0,a1,1a <.L3>
   c:	00054783          	lbu	a5,0(a0)
  10:	40c7d7b3          	sra	a5,a5,a2
  14:	00f50023          	sb	a5,0(a0)
  18:	8082                	ret

0000001a <.L3>:
  1a:	0005c683          	lbu	a3,0(a1)
  1e:	fff5c783          	lbu	a5,-1(a1)
  22:	40c6d6b3          	sra	a3,a3,a2
  26:	00e797b3          	sll	a5,a5,a4
  2a:	8fd5                	or	a5,a5,a3
  2c:	00f58023          	sb	a5,0(a1)

00000030 <.LVL4>:
  30:	bfd9                	j	6 <.L2>

Disassembly of section .text.sae_is_password_id_elem:

00000000 <sae_is_password_id_elem>:
   0:	8d89                	sub	a1,a1,a0

00000002 <.LVL6>:
   2:	4789                	li	a5,2
   4:	02b7d763          	bge	a5,a1,32 <.L6>
   8:	00054683          	lbu	a3,0(a0)
   c:	0ff00713          	li	a4,255
  10:	4781                	li	a5,0
  12:	00e69e63          	bne	a3,a4,2e <.L4>
  16:	00154703          	lbu	a4,1(a0)
  1a:	cb11                	beqz	a4,2e <.L4>
  1c:	15fd                	addi	a1,a1,-1
  1e:	00b75863          	bge	a4,a1,2e <.L4>
  22:	00254783          	lbu	a5,2(a0)
  26:	fdf78793          	addi	a5,a5,-33
  2a:	0017b793          	seqz	a5,a5

0000002e <.L4>:
  2e:	853e                	mv	a0,a5

00000030 <.LVL7>:
  30:	8082                	ret

00000032 <.L6>:
  32:	4781                	li	a5,0
  34:	bfed                	j	2e <.L4>

Disassembly of section .text.sae_cn_confirm.isra.2:

00000000 <sae_cn_confirm.isra.2>:
   0:	bb010113          	addi	sp,sp,-1104
   4:	44812423          	sw	s0,1096(sp)
   8:	45212023          	sw	s2,1088(sp)
   c:	842a                	mv	s0,a0
   e:	8936                	mv	s2,a3
  10:	4689                	li	a3,2

00000012 <.LVL10>:
  12:	d636                	sw	a3,44(sp)
  14:	4014                	lw	a3,0(s0)
  16:	44112623          	sw	ra,1100(sp)
  1a:	44912223          	sw	s1,1092(sp)
  1e:	42f4                	lw	a3,68(a3)
  20:	0084                	addi	s1,sp,64
  22:	cc2e                	sw	a1,24(sp)
  24:	8532                	mv	a0,a2
  26:	85a6                	mv	a1,s1

00000028 <.LVL11>:
  28:	20000613          	li	a2,512

0000002c <.LVL12>:
  2c:	c242                	sw	a6,4(sp)
  2e:	c046                	sw	a7,0(sp)
  30:	c63a                	sw	a4,12(sp)
  32:	c43e                	sw	a5,8(sp)
  34:	00000097          	auipc	ra,0x0
  38:	000080e7          	jalr	ra # 34 <.LVL12+0x8>

0000003c <.LVL13>:
  3c:	4014                	lw	a3,0(s0)
  3e:	47a2                	lw	a5,8(sp)
  40:	4732                	lw	a4,12(sp)
  42:	42f4                	lw	a3,68(a3)
  44:	ce26                	sw	s1,28(sp)
  46:	0484                	addi	s1,sp,576
  48:	85a6                	mv	a1,s1
  4a:	20000613          	li	a2,512
  4e:	853e                	mv	a0,a5
  50:	d836                	sw	a3,48(sp)
  52:	d04a                	sw	s2,32(sp)
  54:	da3a                	sw	a4,52(sp)
  56:	00000097          	auipc	ra,0x0
  5a:	000080e7          	jalr	ra # 56 <.LVL13+0x1a>

0000005e <.LVL14>:
  5e:	4008                	lw	a0,0(s0)
  60:	4812                	lw	a6,4(sp)
  62:	4882                	lw	a7,0(sp)
  64:	417c                	lw	a5,68(a0)
  66:	1078                	addi	a4,sp,44
  68:	0834                	addi	a3,sp,24
  6a:	dc3e                	sw	a5,56(sp)
  6c:	45012783          	lw	a5,1104(sp)
  70:	4615                	li	a2,5
  72:	02000593          	li	a1,32
  76:	d226                	sw	s1,36(sp)
  78:	d442                	sw	a6,40(sp)
  7a:	de46                	sw	a7,60(sp)
  7c:	00000097          	auipc	ra,0x0
  80:	000080e7          	jalr	ra # 7c <.LVL14+0x1e>

00000084 <.LVL15>:
  84:	44c12083          	lw	ra,1100(sp)
  88:	44812403          	lw	s0,1096(sp)
  8c:	44412483          	lw	s1,1092(sp)
  90:	44012903          	lw	s2,1088(sp)

00000094 <.LVL16>:
  94:	45010113          	addi	sp,sp,1104

00000098 <.LVL17>:
  98:	8082                	ret

Disassembly of section .text.sae_cn_confirm_ffc:

00000000 <sae_cn_confirm_ffc>:
   0:	bc010113          	addi	sp,sp,-1088
   4:	42812c23          	sw	s0,1080(sp)
   8:	842a                	mv	s0,a0
   a:	43312623          	sw	s3,1068(sp)
   e:	89ba                	mv	s3,a4
  10:	4078                	lw	a4,68(s0)

00000012 <.LVL19>:
  12:	42912a23          	sw	s1,1076(sp)
  16:	43212823          	sw	s2,1072(sp)
  1a:	43412423          	sw	s4,1064(sp)
  1e:	42112e23          	sw	ra,1084(sp)
  22:	8536                	mv	a0,a3

00000024 <.LVL20>:
  24:	4374                	lw	a3,68(a4)

00000026 <.LVL21>:
  26:	84ae                	mv	s1,a1
  28:	8932                	mv	s2,a2
  2a:	100c                	addi	a1,sp,32

0000002c <.LVL22>:
  2c:	20000613          	li	a2,512

00000030 <.LVL23>:
  30:	ce3e                	sw	a5,28(sp)
  32:	8a42                	mv	s4,a6
  34:	00000097          	auipc	ra,0x0
  38:	000080e7          	jalr	ra # 34 <.LVL23+0x4>

0000003c <.LVL24>:
  3c:	47f2                	lw	a5,28(sp)
  3e:	02055a63          	bgez	a0,72 <.L14>
  42:	00000537          	lui	a0,0x0
  46:	00050513          	mv	a0,a0

0000004a <.L18>:
  4a:	00000097          	auipc	ra,0x0
  4e:	000080e7          	jalr	ra # 4a <.L18>

00000052 <.LVL25>:
  52:	557d                	li	a0,-1

00000054 <.L13>:
  54:	43c12083          	lw	ra,1084(sp)
  58:	43812403          	lw	s0,1080(sp)

0000005c <.LVL26>:
  5c:	43412483          	lw	s1,1076(sp)

00000060 <.LVL27>:
  60:	43012903          	lw	s2,1072(sp)

00000064 <.LVL28>:
  64:	42c12983          	lw	s3,1068(sp)

00000068 <.LVL29>:
  68:	42812a03          	lw	s4,1064(sp)

0000006c <.LVL30>:
  6c:	44010113          	addi	sp,sp,1088

00000070 <.LVL31>:
  70:	8082                	ret

00000072 <.L14>:
  72:	4078                	lw	a4,68(s0)
  74:	20000613          	li	a2,512
  78:	140c                	addi	a1,sp,544
  7a:	4374                	lw	a3,68(a4)
  7c:	853e                	mv	a0,a5
  7e:	00000097          	auipc	ra,0x0
  82:	000080e7          	jalr	ra # 7e <.L14+0xc>

00000086 <.LVL33>:
  86:	00055763          	bgez	a0,94 <.L16>
  8a:	00000537          	lui	a0,0x0
  8e:	00050513          	mv	a0,a0
  92:	bf65                	j	4a <.L18>

00000094 <.L16>:
  94:	407c                	lw	a5,68(s0)
  96:	04440513          	addi	a0,s0,68
  9a:	22010813          	addi	a6,sp,544
  9e:	0447a883          	lw	a7,68(a5)
  a2:	1014                	addi	a3,sp,32
  a4:	c052                	sw	s4,0(sp)
  a6:	87ce                	mv	a5,s3
  a8:	8746                	mv	a4,a7
  aa:	864a                	mv	a2,s2
  ac:	85a6                	mv	a1,s1
  ae:	00000097          	auipc	ra,0x0
  b2:	000080e7          	jalr	ra # ae <.L16+0x1a>

000000b6 <.LVL34>:
  b6:	4501                	li	a0,0
  b8:	bf71                	j	54 <.L13>

Disassembly of section .text.sae_cn_confirm_ecc:

00000000 <sae_cn_confirm_ecc>:
   0:	714d                	addi	sp,sp,-336
   2:	14812423          	sw	s0,328(sp)
   6:	14912223          	sw	s1,324(sp)
   a:	15212023          	sw	s2,320(sp)
   e:	13312e23          	sw	s3,316(sp)
  12:	13412c23          	sw	s4,312(sp)
  16:	14112623          	sw	ra,332(sp)
  1a:	842a                	mv	s0,a0
  1c:	4168                	lw	a0,68(a0)

0000001e <.LVL36>:
  1e:	84ae                	mv	s1,a1
  20:	85b6                	mv	a1,a3

00000022 <.LVL37>:
  22:	4174                	lw	a3,68(a0)

00000024 <.LVL38>:
  24:	4128                	lw	a0,64(a0)
  26:	ce3e                	sw	a5,28(sp)
  28:	103c                	addi	a5,sp,40

0000002a <.LVL39>:
  2a:	96be                	add	a3,a3,a5
  2c:	8932                	mv	s2,a2
  2e:	863e                	mv	a2,a5

00000030 <.LVL40>:
  30:	89ba                	mv	s3,a4
  32:	8a42                	mv	s4,a6
  34:	00000097          	auipc	ra,0x0
  38:	000080e7          	jalr	ra # 34 <.LVL40+0x4>

0000003c <.LVL41>:
  3c:	47f2                	lw	a5,28(sp)
  3e:	02055963          	bgez	a0,70 <.L20>

00000042 <.L22>:
  42:	00000537          	lui	a0,0x0
  46:	00050513          	mv	a0,a0
  4a:	00000097          	auipc	ra,0x0
  4e:	000080e7          	jalr	ra # 4a <.L22+0x8>

00000052 <.LVL42>:
  52:	557d                	li	a0,-1

00000054 <.L19>:
  54:	14c12083          	lw	ra,332(sp)
  58:	14812403          	lw	s0,328(sp)

0000005c <.LVL43>:
  5c:	14412483          	lw	s1,324(sp)

00000060 <.LVL44>:
  60:	14012903          	lw	s2,320(sp)

00000064 <.LVL45>:
  64:	13c12983          	lw	s3,316(sp)

00000068 <.LVL46>:
  68:	13812a03          	lw	s4,312(sp)

0000006c <.LVL47>:
  6c:	6171                	addi	sp,sp,336

0000006e <.LVL48>:
  6e:	8082                	ret

00000070 <.L20>:
  70:	4068                	lw	a0,68(s0)
  72:	1178                	addi	a4,sp,172
  74:	863a                	mv	a2,a4
  76:	4174                	lw	a3,68(a0)
  78:	4128                	lw	a0,64(a0)
  7a:	85be                	mv	a1,a5
  7c:	96ba                	add	a3,a3,a4
  7e:	00000097          	auipc	ra,0x0
  82:	000080e7          	jalr	ra # 7e <.L20+0xe>

00000086 <.LVL50>:
  86:	fa054ee3          	bltz	a0,42 <.L22>
  8a:	407c                	lw	a5,68(s0)
  8c:	04440513          	addi	a0,s0,68
  90:	0ac10813          	addi	a6,sp,172
  94:	0447a883          	lw	a7,68(a5)
  98:	1034                	addi	a3,sp,40
  9a:	c052                	sw	s4,0(sp)
  9c:	0886                	slli	a7,a7,0x1
  9e:	87ce                	mv	a5,s3
  a0:	8746                	mv	a4,a7
  a2:	864a                	mv	a2,s2
  a4:	85a6                	mv	a1,s1
  a6:	00000097          	auipc	ra,0x0
  aa:	000080e7          	jalr	ra # a6 <.LVL50+0x20>

000000ae <.LVL51>:
  ae:	4501                	li	a0,0
  b0:	b755                	j	54 <.L19>

Disassembly of section .text.sae_get_rand.isra.5:

00000000 <sae_get_rand.isra.5>:
   0:	de010113          	addi	sp,sp,-544
   4:	20812c23          	sw	s0,536(sp)
   8:	21512223          	sw	s5,516(sp)
   c:	20112e23          	sw	ra,540(sp)
  10:	20912a23          	sw	s1,532(sp)
  14:	21212823          	sw	s2,528(sp)
  18:	21312623          	sw	s3,524(sp)
  1c:	21412423          	sw	s4,520(sp)
  20:	411c                	lw	a5,0(a0)
  22:	8aaa                	mv	s5,a0
  24:	4ba8                	lw	a0,80(a5)
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <sae_get_rand.isra.5+0x26>

0000002e <.LVL53>:
  2e:	00750413          	addi	s0,a0,7 # 7 <sae_get_rand.isra.5+0x7>
  32:	47a1                	li	a5,8
  34:	02f44433          	div	s0,s0,a5

00000038 <.LVL54>:
  38:	20000713          	li	a4,512
  3c:	02877563          	bgeu	a4,s0,66 <.L25>

00000040 <.L27>:
  40:	4481                	li	s1,0

00000042 <.L24>:
  42:	21c12083          	lw	ra,540(sp)
  46:	21812403          	lw	s0,536(sp)

0000004a <.LVL56>:
  4a:	8526                	mv	a0,s1
  4c:	21012903          	lw	s2,528(sp)
  50:	21412483          	lw	s1,532(sp)
  54:	20c12983          	lw	s3,524(sp)
  58:	20812a03          	lw	s4,520(sp)
  5c:	20412a83          	lw	s5,516(sp)
  60:	22010113          	addi	sp,sp,544
  64:	8082                	ret

00000066 <.L25>:
  66:	02f56933          	rem	s2,a0,a5
  6a:	06600a13          	li	s4,102
  6e:	00757993          	andi	s3,a0,7
  72:	41278933          	sub	s2,a5,s2

00000076 <.L30>:
  76:	1a7d                	addi	s4,s4,-1

00000078 <.LVL59>:
  78:	fc0a04e3          	beqz	s4,40 <.L27>

0000007c <.LVL60>:
  7c:	85a2                	mv	a1,s0
  7e:	850a                	mv	a0,sp
  80:	00000097          	auipc	ra,0x0
  84:	000080e7          	jalr	ra # 80 <.LVL60+0x4>

00000088 <.LVL61>:
  88:	00098963          	beqz	s3,9a <.L28>
  8c:	864a                	mv	a2,s2
  8e:	85a2                	mv	a1,s0
  90:	850a                	mv	a0,sp
  92:	00000097          	auipc	ra,0x0
  96:	000080e7          	jalr	ra # 92 <.LVL61+0xa>

0000009a <.L28>:
  9a:	85a2                	mv	a1,s0
  9c:	850a                	mv	a0,sp
  9e:	00000097          	auipc	ra,0x0
  a2:	000080e7          	jalr	ra # 9e <.L28+0x4>

000000a6 <.LVL63>:
  a6:	84aa                	mv	s1,a0

000000a8 <.LVL64>:
  a8:	dd41                	beqz	a0,40 <.L27>
  aa:	00000097          	auipc	ra,0x0
  ae:	000080e7          	jalr	ra # aa <.LVL64+0x2>

000000b2 <.LVL65>:
  b2:	c901                	beqz	a0,c2 <.L29>

000000b4 <.L31>:
  b4:	4581                	li	a1,0
  b6:	8526                	mv	a0,s1
  b8:	00000097          	auipc	ra,0x0
  bc:	000080e7          	jalr	ra # b8 <.L31+0x4>

000000c0 <.LVL66>:
  c0:	bf5d                	j	76 <.L30>

000000c2 <.L29>:
  c2:	8526                	mv	a0,s1
  c4:	00000097          	auipc	ra,0x0
  c8:	000080e7          	jalr	ra # c4 <.L29+0x2>

000000cc <.LVL67>:
  cc:	f565                	bnez	a0,b4 <.L31>
  ce:	000aa783          	lw	a5,0(s5)
  d2:	8526                	mv	a0,s1
  d4:	4bac                	lw	a1,80(a5)
  d6:	00000097          	auipc	ra,0x0
  da:	000080e7          	jalr	ra # d6 <.LVL67+0xa>

000000de <.LVL68>:
  de:	fc055be3          	bgez	a0,b4 <.L31>
  e2:	8622                	mv	a2,s0
  e4:	4581                	li	a1,0
  e6:	850a                	mv	a0,sp
  e8:	00000097          	auipc	ra,0x0
  ec:	000080e7          	jalr	ra # e8 <.LVL68+0xa>

000000f0 <.LVL69>:
  f0:	bf89                	j	42 <.L24>

Disassembly of section .text.sha256_prf_bits.constprop.13:

00000000 <sha256_prf_bits.constprop.13>:
   0:	7175                	addi	sp,sp,-144
   2:	c522                	sw	s0,136(sp)
   4:	c326                	sw	s1,132(sp)
   6:	4409                	li	s0,2
   8:	dece                	sw	s3,124(sp)
   a:	dad6                	sw	s5,116(sp)
   c:	84be                	mv	s1,a5
   e:	00778993          	addi	s3,a5,7
  12:	8aaa                	mv	s5,a0
  14:	083c                	addi	a5,sp,24

00000016 <.LVL71>:
  16:	852e                	mv	a0,a1

00000018 <.LVL72>:
  18:	c14a                	sw	s2,128(sp)
  1a:	dcd2                	sw	s4,120(sp)
  1c:	d4e2                	sw	s8,104(sp)
  1e:	c632                	sw	a2,12(sp)
  20:	c436                	sw	a3,8(sp)
  22:	d03e                	sw	a5,32(sp)
  24:	d822                	sw	s0,48(sp)
  26:	c706                	sw	ra,140(sp)
  28:	d8da                	sw	s6,112(sp)
  2a:	d6de                	sw	s7,108(sp)
  2c:	893a                	mv	s2,a4
  2e:	d22e                	sw	a1,36(sp)
  30:	00000097          	auipc	ra,0x0
  34:	000080e7          	jalr	ra # 30 <.LVL72+0x18>

00000038 <.LVL73>:
  38:	4632                	lw	a2,12(sp)
  3a:	46a2                	lw	a3,8(sp)
  3c:	087c                	addi	a5,sp,28
  3e:	de22                	sw	s0,60(sp)
  40:	0039d993          	srli	s3,s3,0x3

00000044 <.LVL74>:
  44:	da2a                	sw	a0,52(sp)
  46:	d432                	sw	a2,40(sp)
  48:	dc36                	sw	a3,56(sp)
  4a:	d63e                	sw	a5,44(sp)

0000004c <.LBB22>:
  4c:	00911e23          	sh	s1,28(sp)

00000050 <.LBE22>:
  50:	4401                	li	s0,0
  52:	4a05                	li	s4,1
  54:	4c7d                	li	s8,31

00000056 <.L43>:
  56:	05347f63          	bgeu	s0,s3,b4 <.L45>
  5a:	40898bb3          	sub	s7,s3,s0

0000005e <.LBB24>:
  5e:	01411c23          	sh	s4,24(sp)

00000062 <.LBE24>:
  62:	00890b33          	add	s6,s2,s0
  66:	037c7463          	bgeu	s8,s7,8e <.L44>
  6a:	0a05                	addi	s4,s4,1

0000006c <.LVL80>:
  6c:	87da                	mv	a5,s6
  6e:	1818                	addi	a4,sp,48
  70:	1014                	addi	a3,sp,32
  72:	4611                	li	a2,4
  74:	02000593          	li	a1,32
  78:	8556                	mv	a0,s5
  7a:	0a42                	slli	s4,s4,0x10
  7c:	00000097          	auipc	ra,0x0
  80:	000080e7          	jalr	ra # 7c <.LVL80+0x10>

00000084 <.LVL81>:
  84:	02040413          	addi	s0,s0,32
  88:	010a5a13          	srli	s4,s4,0x10

0000008c <.LVL83>:
  8c:	b7e9                	j	56 <.L43>

0000008e <.L44>:
  8e:	009c                	addi	a5,sp,64
  90:	1818                	addi	a4,sp,48
  92:	1014                	addi	a3,sp,32
  94:	4611                	li	a2,4
  96:	02000593          	li	a1,32
  9a:	8556                	mv	a0,s5
  9c:	00000097          	auipc	ra,0x0
  a0:	000080e7          	jalr	ra # 9c <.L44+0xe>

000000a4 <.LVL84>:
  a4:	865e                	mv	a2,s7
  a6:	008c                	addi	a1,sp,64
  a8:	855a                	mv	a0,s6
  aa:	00000097          	auipc	ra,0x0
  ae:	000080e7          	jalr	ra # aa <.LVL84+0x6>

000000b2 <.LVL85>:
  b2:	844e                	mv	s0,s3

000000b4 <.L45>:
  b4:	889d                	andi	s1,s1,7

000000b6 <.LVL87>:
  b6:	cc91                	beqz	s1,d2 <.L47>

000000b8 <.LBB26>:
  b8:	147d                	addi	s0,s0,-1

000000ba <.LVL89>:
  ba:	47a1                	li	a5,8
  bc:	8f85                	sub	a5,a5,s1
  be:	944a                	add	s0,s0,s2

000000c0 <.LVL90>:
  c0:	0ff00493          	li	s1,255

000000c4 <.LVL91>:
  c4:	00f494b3          	sll	s1,s1,a5
  c8:	00044783          	lbu	a5,0(s0)
  cc:	8cfd                	and	s1,s1,a5
  ce:	00940023          	sb	s1,0(s0)

000000d2 <.L47>:
  d2:	0088                	addi	a0,sp,64
  d4:	02000613          	li	a2,32
  d8:	4581                	li	a1,0
  da:	00000097          	auipc	ra,0x0
  de:	000080e7          	jalr	ra # da <.L47+0x8>

000000e2 <.LVL93>:
  e2:	40ba                	lw	ra,140(sp)
  e4:	442a                	lw	s0,136(sp)
  e6:	449a                	lw	s1,132(sp)
  e8:	490a                	lw	s2,128(sp)

000000ea <.LVL94>:
  ea:	59f6                	lw	s3,124(sp)

000000ec <.LVL95>:
  ec:	5a66                	lw	s4,120(sp)

000000ee <.LVL96>:
  ee:	5ad6                	lw	s5,116(sp)

000000f0 <.LVL97>:
  f0:	5b46                	lw	s6,112(sp)
  f2:	5bb6                	lw	s7,108(sp)
  f4:	5c26                	lw	s8,104(sp)
  f6:	4501                	li	a0,0
  f8:	6149                	addi	sp,sp,144

000000fa <.LVL98>:
  fa:	8082                	ret

Disassembly of section .text.sae_derive_pwe_ecc:

00000000 <sae_derive_pwe_ecc>:
   0:	7165                	addi	sp,sp,-400
   2:	18812423          	sw	s0,392(sp)
   6:	19212023          	sw	s2,384(sp)
   a:	17512a23          	sw	s5,372(sp)
   e:	17612823          	sw	s6,368(sp)
  12:	17712623          	sw	s7,364(sp)
  16:	17912223          	sw	s9,356(sp)
  1a:	17a12023          	sw	s10,352(sp)
  1e:	893e                	mv	s2,a5
  20:	18112623          	sw	ra,396(sp)
  24:	18912223          	sw	s1,388(sp)
  28:	17312e23          	sw	s3,380(sp)
  2c:	17412c23          	sw	s4,376(sp)
  30:	17812423          	sw	s8,360(sp)
  34:	15b12e23          	sw	s11,348(sp)
  38:	02000793          	li	a5,32

0000003c <.LVL100>:
  3c:	842a                	mv	s0,a0
  3e:	8b2e                	mv	s6,a1
  40:	8bb2                	mv	s7,a2
  42:	8d36                	mv	s10,a3
  44:	8aba                	mv	s5,a4
  46:	02000c93          	li	s9,32
  4a:	00e7e363          	bltu	a5,a4,50 <.L53>
  4e:	8cba                	mv	s9,a4

00000050 <.L53>:
  50:	85e6                	mv	a1,s9

00000052 <.LVL102>:
  52:	00c8                	addi	a0,sp,68

00000054 <.LVL103>:
  54:	00000097          	auipc	ra,0x0
  58:	000080e7          	jalr	ra # 54 <.LVL103>

0000005c <.LVL104>:
  5c:	407c                	lw	a5,68(s0)
  5e:	04200613          	li	a2,66
  62:	014c                	addi	a1,sp,132
  64:	43e4                	lw	s1,68(a5)

00000066 <.LVL105>:
  66:	47e8                	lw	a0,76(a5)
  68:	86a6                	mv	a3,s1
  6a:	00000097          	auipc	ra,0x0
  6e:	000080e7          	jalr	ra # 6a <.LVL105+0x4>

00000072 <.LVL106>:
  72:	04055063          	bgez	a0,b2 <.L54>

00000076 <.L65>:
  76:	547d                	li	s0,-1

00000078 <.L52>:
  78:	8522                	mv	a0,s0
  7a:	18c12083          	lw	ra,396(sp)
  7e:	18812403          	lw	s0,392(sp)
  82:	18412483          	lw	s1,388(sp)
  86:	18012903          	lw	s2,384(sp)
  8a:	17c12983          	lw	s3,380(sp)
  8e:	17812a03          	lw	s4,376(sp)
  92:	17412a83          	lw	s5,372(sp)
  96:	17012b03          	lw	s6,368(sp)
  9a:	16c12b83          	lw	s7,364(sp)
  9e:	16812c03          	lw	s8,360(sp)
  a2:	16412c83          	lw	s9,356(sp)

000000a6 <.LVL108>:
  a6:	16012d03          	lw	s10,352(sp)
  aa:	15c12d83          	lw	s11,348(sp)
  ae:	6159                	addi	sp,sp,400
  b0:	8082                	ret

000000b2 <.L54>:
  b2:	407c                	lw	a5,68(s0)

000000b4 <.LBB40>:
  b4:	4981                	li	s3,0
  b6:	4a01                	li	s4,0

000000b8 <.LBE40>:
  b8:	43a8                	lw	a0,64(a5)

000000ba <.LBB42>:
  ba:	5dfd                	li	s11,-1

000000bc <.LBE42>:
  bc:	00000097          	auipc	ra,0x0
  c0:	000080e7          	jalr	ra # bc <.LBE42>

000000c4 <.LVL110>:
  c4:	407c                	lw	a5,68(s0)

000000c6 <.LBB43>:
  c6:	00757c13          	andi	s8,a0,7

000000ca <.LBE43>:
  ca:	47fc                	lw	a5,76(a5)
  cc:	c23e                	sw	a5,4(sp)

000000ce <.LBB44>:
  ce:	47a1                	li	a5,8

000000d0 <.LVL112>:
  d0:	418787b3          	sub	a5,a5,s8
  d4:	c43e                	sw	a5,8(sp)

000000d6 <.L56>:
  d6:	85a6                	mv	a1,s1
  d8:	0268                	addi	a0,sp,268
  da:	00000097          	auipc	ra,0x0
  de:	000080e7          	jalr	ra # da <.L56+0x4>

000000e2 <.LVL114>:
  e2:	000c0963          	beqz	s8,f4 <.L57>
  e6:	4622                	lw	a2,8(sp)
  e8:	85a6                	mv	a1,s1
  ea:	0268                	addi	a0,sp,268
  ec:	00000097          	auipc	ra,0x0
  f0:	000080e7          	jalr	ra # ec <.LVL114+0xa>

000000f4 <.L57>:
  f4:	8626                	mv	a2,s1
  f6:	014c                	addi	a1,sp,132

000000f8 <.LVL116>:
  f8:	0268                	addi	a0,sp,268
  fa:	00000097          	auipc	ra,0x0
  fe:	000080e7          	jalr	ra # fa <.LVL116+0x2>

00000102 <.LVL117>:
 102:	04055263          	bgez	a0,146 <.L59>
 106:	85a6                	mv	a1,s1
 108:	0268                	addi	a0,sp,268
 10a:	00000097          	auipc	ra,0x0
 10e:	000080e7          	jalr	ra # 10a <.LVL117+0x8>

00000112 <.LVL118>:
 112:	c62a                	sw	a0,12(sp)
 114:	10050563          	beqz	a0,21e <.L60>
 118:	4592                	lw	a1,4(sp)
 11a:	00000097          	auipc	ra,0x0
 11e:	000080e7          	jalr	ra # 11a <.LVL118+0x8>

00000122 <.LVL119>:
 122:	4705                	li	a4,1
 124:	47b2                	lw	a5,12(sp)
 126:	00e51663          	bne	a0,a4,132 <.L61>
 12a:	000a1863          	bnez	s4,13a <.L63>
 12e:	8a3e                	mv	s4,a5
 130:	a819                	j	146 <.L59>

00000132 <.L61>:
 132:	01b51463          	bne	a0,s11,13a <.L63>
 136:	0e098263          	beqz	s3,21a <.L99>

0000013a <.L63>:
 13a:	4581                	li	a1,0
 13c:	853e                	mv	a0,a5

0000013e <.LVL120>:
 13e:	00000097          	auipc	ra,0x0
 142:	000080e7          	jalr	ra # 13e <.LVL120>

00000146 <.L59>:
 146:	f80a08e3          	beqz	s4,d6 <.L56>
 14a:	f80986e3          	beqz	s3,d6 <.L56>

0000014e <.L67>:
 14e:	4619                	li	a2,6
 150:	85de                	mv	a1,s7
 152:	855a                	mv	a0,s6
 154:	00000097          	auipc	ra,0x0
 158:	000080e7          	jalr	ra # 154 <.L67+0x6>

0000015c <.LVL123>:
 15c:	4619                	li	a2,6
 15e:	0ca05563          	blez	a0,228 <.L68>
 162:	85da                	mv	a1,s6
 164:	1008                	addi	a0,sp,32

00000166 <.LVL124>:
 166:	00000097          	auipc	ra,0x0
 16a:	000080e7          	jalr	ra # 166 <.LVL124>

0000016e <.LVL125>:
 16e:	4619                	li	a2,6
 170:	85de                	mv	a1,s7

00000172 <.L128>:
 172:	02610513          	addi	a0,sp,38
 176:	00000097          	auipc	ra,0x0
 17a:	000080e7          	jalr	ra # 176 <.L128+0x4>

0000017e <.LBE53>:
 17e:	d66a                	sw	s10,44(sp)
 180:	dc56                	sw	s5,56(sp)

00000182 <.LVL127>:
 182:	4705                	li	a4,1
 184:	00090a63          	beqz	s2,198 <.L70>
 188:	854a                	mv	a0,s2
 18a:	d84a                	sw	s2,48(sp)
 18c:	00000097          	auipc	ra,0x0
 190:	000080e7          	jalr	ra # 18c <.LVL127+0xa>

00000194 <.LVL128>:
 194:	de2a                	sw	a0,60(sp)

00000196 <.LVL129>:
 196:	4709                	li	a4,2

00000198 <.L70>:
 198:	0a94                	addi	a3,sp,336
 19a:	00271793          	slli	a5,a4,0x2
 19e:	97b6                	add	a5,a5,a3
 1a0:	01f10693          	addi	a3,sp,31
 1a4:	ecd7ae23          	sw	a3,-292(a5)
 1a8:	4685                	li	a3,1
 1aa:	eed7a423          	sw	a3,-280(a5)
 1ae:	00170793          	addi	a5,a4,1
 1b2:	c23e                	sw	a5,4(sp)

000001b4 <.LVL131>:
 1b4:	00d10fa3          	sb	a3,31(sp)
 1b8:	4b01                	li	s6,0

000001ba <.LVL132>:
 1ba:	4c01                	li	s8,0

000001bc <.LBB56>:
 1bc:	4da1                	li	s11,8

000001be <.L71>:
 1be:	01f14783          	lbu	a5,31(sp)
 1c2:	02800713          	li	a4,40
 1c6:	0af77c63          	bgeu	a4,a5,27e <.L72>
 1ca:	060b0863          	beqz	s6,23a <.L95>
 1ce:	4064                	lw	s1,68(s0)
 1d0:	58dc                	lw	a5,52(s1)
 1d2:	e799                	bnez	a5,1e0 <.L96>
 1d4:	40a8                	lw	a0,64(s1)
 1d6:	00000097          	auipc	ra,0x0
 1da:	000080e7          	jalr	ra # 1d6 <.L71+0x18>

000001de <.LVL134>:
 1de:	d8c8                	sw	a0,52(s1)

000001e0 <.L96>:
 1e0:	407c                	lw	a5,68(s0)
 1e2:	547d                	li	s0,-1

000001e4 <.LVL135>:
 1e4:	5bcc                	lw	a1,52(a5)
 1e6:	c989                	beqz	a1,1f8 <.L97>
 1e8:	43a8                	lw	a0,64(a5)
 1ea:	86e2                	mv	a3,s8
 1ec:	865a                	mv	a2,s6
 1ee:	00000097          	auipc	ra,0x0
 1f2:	000080e7          	jalr	ra # 1ee <.LVL135+0xa>

000001f6 <.LVL136>:
 1f6:	842a                	mv	s0,a0

000001f8 <.L97>:
 1f8:	4585                	li	a1,1
 1fa:	855a                	mv	a0,s6
 1fc:	00000097          	auipc	ra,0x0
 200:	000080e7          	jalr	ra # 1fc <.L97+0x4>

00000204 <.LVL138>:
 204:	06045063          	bgez	s0,264 <.L73>
 208:	00000537          	lui	a0,0x0
 20c:	00050513          	mv	a0,a0
 210:	00000097          	auipc	ra,0x0
 214:	000080e7          	jalr	ra # 210 <.LVL138+0xc>

00000218 <.LVL139>:
 218:	a0b1                	j	264 <.L73>

0000021a <.L99>:
 21a:	89be                	mv	s3,a5

0000021c <.LVL141>:
 21c:	b72d                	j	146 <.L59>

0000021e <.L60>:
 21e:	e40a0ce3          	beqz	s4,76 <.L65>
 222:	f20996e3          	bnez	s3,14e <.L67>
 226:	bd81                	j	76 <.L65>

00000228 <.L68>:
 228:	85de                	mv	a1,s7
 22a:	1008                	addi	a0,sp,32

0000022c <.LVL144>:
 22c:	00000097          	auipc	ra,0x0
 230:	000080e7          	jalr	ra # 22c <.LVL144>

00000234 <.LVL145>:
 234:	4619                	li	a2,6
 236:	85da                	mv	a1,s6
 238:	bf2d                	j	172 <.L128>

0000023a <.L95>:
 23a:	0c800713          	li	a4,200
 23e:	04f77063          	bgeu	a4,a5,27e <.L72>
 242:	00000537          	lui	a0,0x0
 246:	00050513          	mv	a0,a0
 24a:	00000097          	auipc	ra,0x0
 24e:	000080e7          	jalr	ra # 24a <.L95+0x10>

00000252 <.LBE83>:
 252:	00000537          	lui	a0,0x0
 256:	00050513          	mv	a0,a0
 25a:	00000097          	auipc	ra,0x0
 25e:	000080e7          	jalr	ra # 25a <.LBE83+0x8>

00000262 <.L75>:
 262:	547d                	li	s0,-1

00000264 <.L73>:
 264:	8552                	mv	a0,s4
 266:	4581                	li	a1,0
 268:	00000097          	auipc	ra,0x0
 26c:	000080e7          	jalr	ra # 268 <.L73+0x4>

00000270 <.LVL150>:
 270:	4581                	li	a1,0
 272:	854e                	mv	a0,s3
 274:	00000097          	auipc	ra,0x0
 278:	000080e7          	jalr	ra # 274 <.LVL150+0x4>

0000027c <.LVL151>:
 27c:	bbf5                	j	78 <.L52>

0000027e <.L72>:
 27e:	4612                	lw	a2,4(sp)
 280:	1838                	addi	a4,sp,56
 282:	1074                	addi	a3,sp,44
 284:	45b1                	li	a1,12
 286:	10dc                	addi	a5,sp,100
 288:	1008                	addi	a0,sp,32
 28a:	00000097          	auipc	ra,0x0
 28e:	000080e7          	jalr	ra # 28a <.L72+0xc>

00000292 <.LBB76>:
 292:	407c                	lw	a5,68(s0)
 294:	43a8                	lw	a0,64(a5)
 296:	00000097          	auipc	ra,0x0
 29a:	000080e7          	jalr	ra # 296 <.LBB76+0x4>

0000029e <.LVL154>:
 29e:	4074                	lw	a3,68(s0)
 2a0:	000005b7          	lui	a1,0x0
 2a4:	892a                	mv	s2,a0

000002a6 <.LVL155>:
 2a6:	42f4                	lw	a3,68(a3)
 2a8:	87aa                	mv	a5,a0
 2aa:	01b8                	addi	a4,sp,200
 2ac:	0150                	addi	a2,sp,132

000002ae <.LVL156>:
 2ae:	00058593          	mv	a1,a1
 2b2:	10c8                	addi	a0,sp,100

000002b4 <.LVL157>:
 2b4:	00000097          	auipc	ra,0x0
 2b8:	000080e7          	jalr	ra # 2b4 <.LVL157>

000002bc <.LVL158>:
 2bc:	fa0543e3          	bltz	a0,262 <.L75>
 2c0:	00797913          	andi	s2,s2,7

000002c4 <.LVL159>:
 2c4:	00090b63          	beqz	s2,2da <.L76>
 2c8:	412d8633          	sub	a2,s11,s2
 2cc:	04200593          	li	a1,66
 2d0:	01a8                	addi	a0,sp,200
 2d2:	00000097          	auipc	ra,0x0
 2d6:	000080e7          	jalr	ra # 2d2 <.LVL159+0xe>

000002da <.L76>:
 2da:	407c                	lw	a5,68(s0)
 2dc:	014c                	addi	a1,sp,132

000002de <.LVL161>:
 2de:	01a8                	addi	a0,sp,200
 2e0:	43f0                	lw	a2,68(a5)
 2e2:	00000097          	auipc	ra,0x0
 2e6:	000080e7          	jalr	ra # 2e2 <.LVL161+0x4>

000002ea <.LVL162>:
 2ea:	18055663          	bgez	a0,476 <.L78>
 2ee:	407c                	lw	a5,68(s0)
 2f0:	01a8                	addi	a0,sp,200
 2f2:	43ec                	lw	a1,68(a5)
 2f4:	00000097          	auipc	ra,0x0
 2f8:	000080e7          	jalr	ra # 2f4 <.LVL162+0xa>

000002fc <.LVL163>:
 2fc:	8aaa                	mv	s5,a0

000002fe <.LVL164>:
 2fe:	d135                	beqz	a0,262 <.L75>
 300:	407c                	lw	a5,68(s0)
 302:	85aa                	mv	a1,a0
 304:	43a8                	lw	a0,64(a5)

00000306 <.LVL165>:
 306:	00000097          	auipc	ra,0x0
 30a:	000080e7          	jalr	ra # 306 <.LVL165>

0000030e <.LVL166>:
 30e:	8d2a                	mv	s10,a0

00000310 <.LVL167>:
 310:	e901                	bnez	a0,320 <.L80>
 312:	4585                	li	a1,1
 314:	8556                	mv	a0,s5

00000316 <.LVL168>:
 316:	00000097          	auipc	ra,0x0
 31a:	000080e7          	jalr	ra # 316 <.LVL168>

0000031e <.LBE76>:
 31e:	b791                	j	262 <.L75>

00000320 <.L80>:
 320:	407c                	lw	a5,68(s0)
 322:	43e4                	lw	s1,68(a5)

00000324 <.LBB61>:
 324:	412d87b3          	sub	a5,s11,s2
 328:	c43e                	sw	a5,8(sp)

0000032a <.L87>:
 32a:	85a6                	mv	a1,s1
 32c:	0268                	addi	a0,sp,268
 32e:	00000097          	auipc	ra,0x0
 332:	000080e7          	jalr	ra # 32e <.L87+0x4>

00000336 <.LVL173>:
 336:	00090963          	beqz	s2,348 <.L81>
 33a:	4622                	lw	a2,8(sp)
 33c:	85a6                	mv	a1,s1
 33e:	0268                	addi	a0,sp,268
 340:	00000097          	auipc	ra,0x0
 344:	000080e7          	jalr	ra # 340 <.LVL173+0xa>

00000348 <.L81>:
 348:	8626                	mv	a2,s1
 34a:	014c                	addi	a1,sp,132

0000034c <.LVL175>:
 34c:	0268                	addi	a0,sp,268
 34e:	00000097          	auipc	ra,0x0
 352:	000080e7          	jalr	ra # 34e <.LVL175+0x2>

00000356 <.LVL176>:
 356:	fc055ae3          	bgez	a0,32a <.L87>
 35a:	85a6                	mv	a1,s1
 35c:	0268                	addi	a0,sp,268
 35e:	00000097          	auipc	ra,0x0
 362:	000080e7          	jalr	ra # 35e <.LVL176+0x8>

00000366 <.LVL177>:
 366:	8baa                	mv	s7,a0

00000368 <.LVL178>:
 368:	c529                	beqz	a0,3b2 <.L83>
 36a:	00000097          	auipc	ra,0x0
 36e:	000080e7          	jalr	ra # 36a <.LVL178+0x2>

00000372 <.LVL179>:
 372:	c901                	beqz	a0,382 <.L84>
 374:	4581                	li	a1,0
 376:	855e                	mv	a0,s7
 378:	00000097          	auipc	ra,0x0
 37c:	000080e7          	jalr	ra # 378 <.LVL179+0x6>

00000380 <.LVL180>:
 380:	b76d                	j	32a <.L87>

00000382 <.L84>:
 382:	0a9c                	addi	a5,sp,336
 384:	94be                	add	s1,s1,a5

00000386 <.LVL181>:
 386:	fbb4c483          	lbu	s1,-69(s1)

0000038a <.LBE64>:
 38a:	00000097          	auipc	ra,0x0
 38e:	000080e7          	jalr	ra # 38a <.LBE64>

00000392 <.LVL183>:
 392:	892a                	mv	s2,a0

00000394 <.LVL184>:
 394:	ed21                	bnez	a0,3ec <.L85>

00000396 <.L89>:
 396:	54fd                	li	s1,-1

00000398 <.L86>:
 398:	854a                	mv	a0,s2
 39a:	4585                	li	a1,1
 39c:	00000097          	auipc	ra,0x0
 3a0:	000080e7          	jalr	ra # 39c <.L86+0x4>

000003a4 <.LVL187>:
 3a4:	4585                	li	a1,1
 3a6:	855e                	mv	a0,s7
 3a8:	00000097          	auipc	ra,0x0
 3ac:	000080e7          	jalr	ra # 3a8 <.LVL187+0x4>

000003b0 <.LVL188>:
 3b0:	a011                	j	3b4 <.L88>

000003b2 <.L83>:
 3b2:	54fd                	li	s1,-1

000003b4 <.L88>:
 3b4:	4585                	li	a1,1
 3b6:	856a                	mv	a0,s10
 3b8:	00000097          	auipc	ra,0x0
 3bc:	000080e7          	jalr	ra # 3b8 <.L88+0x4>

000003c0 <.LVL191>:
 3c0:	4785                	li	a5,1
 3c2:	0af49163          	bne	s1,a5,464 <.L92>

000003c6 <.LBE79>:
 3c6:	0a0b1e63          	bnez	s6,482 <.L125>

000003ca <.LVL193>:
 3ca:	08314c03          	lbu	s8,131(sp)

000003ce <.LVL194>:
 3ce:	02000613          	li	a2,32
 3d2:	4581                	li	a1,0
 3d4:	10c8                	addi	a0,sp,100
 3d6:	00000097          	auipc	ra,0x0
 3da:	000080e7          	jalr	ra # 3d6 <.LVL194+0x8>

000003de <.LVL195>:
 3de:	00dc                	addi	a5,sp,68
 3e0:	001c7c13          	andi	s8,s8,1

000003e4 <.LVL196>:
 3e4:	d63e                	sw	a5,44(sp)
 3e6:	dc66                	sw	s9,56(sp)
 3e8:	8b56                	mv	s6,s5
 3ea:	a071                	j	476 <.L78>

000003ec <.L85>:
 3ec:	407c                	lw	a5,68(s0)
 3ee:	86aa                	mv	a3,a0
 3f0:	85de                	mv	a1,s7
 3f2:	47f0                	lw	a2,76(a5)
 3f4:	856a                	mv	a0,s10

000003f6 <.LVL198>:
 3f6:	00000097          	auipc	ra,0x0
 3fa:	000080e7          	jalr	ra # 3f6 <.LVL198>

000003fe <.LVL199>:
 3fe:	f8054ce3          	bltz	a0,396 <.L89>
 402:	407c                	lw	a5,68(s0)
 404:	86ca                	mv	a3,s2
 406:	85de                	mv	a1,s7
 408:	47f0                	lw	a2,76(a5)
 40a:	854a                	mv	a0,s2
 40c:	00000097          	auipc	ra,0x0
 410:	000080e7          	jalr	ra # 40c <.LVL199+0xe>

00000414 <.LVL200>:
 414:	f80541e3          	bltz	a0,396 <.L89>
 418:	407c                	lw	a5,68(s0)
 41a:	8885                	andi	s1,s1,1

0000041c <.LVL201>:
 41c:	86ca                	mv	a3,s2
 41e:	47f0                	lw	a2,76(a5)
 420:	c885                	beqz	s1,450 <.L90>

00000422 <.LVL202>:
 422:	85d2                	mv	a1,s4
 424:	854a                	mv	a0,s2
 426:	00000097          	auipc	ra,0x0
 42a:	000080e7          	jalr	ra # 426 <.LVL202+0x4>

0000042e <.LVL203>:
 42e:	4485                	li	s1,1
 430:	f60543e3          	bltz	a0,396 <.L89>

00000434 <.L91>:
 434:	407c                	lw	a5,68(s0)
 436:	854a                	mv	a0,s2
 438:	47ec                	lw	a1,76(a5)
 43a:	00000097          	auipc	ra,0x0
 43e:	000080e7          	jalr	ra # 43a <.L91+0x6>

00000442 <.LVL205>:
 442:	57f9                	li	a5,-2
 444:	f4f509e3          	beq	a0,a5,396 <.L89>
 448:	8d05                	sub	a0,a0,s1

0000044a <.LVL206>:
 44a:	00153493          	seqz	s1,a0

0000044e <.LVL207>:
 44e:	b7a9                	j	398 <.L86>

00000450 <.L90>:
 450:	85ce                	mv	a1,s3
 452:	854a                	mv	a0,s2
 454:	00000097          	auipc	ra,0x0
 458:	000080e7          	jalr	ra # 454 <.L90+0x4>

0000045c <.LVL209>:
 45c:	f2054de3          	bltz	a0,396 <.L89>
 460:	54fd                	li	s1,-1
 462:	bfc9                	j	434 <.L91>

00000464 <.L92>:
 464:	4585                	li	a1,1
 466:	8556                	mv	a0,s5
 468:	00000097          	auipc	ra,0x0
 46c:	000080e7          	jalr	ra # 468 <.L92+0x4>

00000470 <.LBE80>:
 470:	57fd                	li	a5,-1
 472:	def488e3          	beq	s1,a5,262 <.L75>

00000476 <.L78>:
 476:	01f14783          	lbu	a5,31(sp)
 47a:	0785                	addi	a5,a5,1
 47c:	00f10fa3          	sb	a5,31(sp)
 480:	bb3d                	j	1be <.L71>

00000482 <.L125>:
 482:	4585                	li	a1,1
 484:	8556                	mv	a0,s5
 486:	00000097          	auipc	ra,0x0
 48a:	000080e7          	jalr	ra # 486 <.L125+0x4>

0000048e <.LVL214>:
 48e:	b7e5                	j	476 <.L78>

Disassembly of section .text.wpabuf_clear_free:

00000000 <wpabuf_clear_free>:
   0:	c905                	beqz	a0,30 <.L129>

00000002 <.LBB91>:
   2:	1141                	addi	sp,sp,-16
   4:	c606                	sw	ra,12(sp)
   6:	c422                	sw	s0,8(sp)

00000008 <.LBB94>:
   8:	451c                	lw	a5,8(a0)
   a:	e399                	bnez	a5,10 <.L131>
   c:	00c50793          	addi	a5,a0,12 # c <.LBB94+0x4>

00000010 <.L131>:
  10:	4150                	lw	a2,4(a0)
  12:	842a                	mv	s0,a0

00000014 <.LVL217>:
  14:	4581                	li	a1,0
  16:	853e                	mv	a0,a5

00000018 <.LVL218>:
  18:	00000097          	auipc	ra,0x0
  1c:	000080e7          	jalr	ra # 18 <.LVL218>

00000020 <.LVL219>:
  20:	8522                	mv	a0,s0
  22:	4422                	lw	s0,8(sp)

00000024 <.LVL220>:
  24:	40b2                	lw	ra,12(sp)
  26:	0141                	addi	sp,sp,16
  28:	00000317          	auipc	t1,0x0
  2c:	00030067          	jr	t1 # 28 <.LVL220+0x4>

00000030 <.L129>:
  30:	8082                	ret

Disassembly of section .text.bin_clear_free:

00000000 <bin_clear_free>:
   0:	c11d                	beqz	a0,26 <.L135>
   2:	1141                	addi	sp,sp,-16
   4:	862e                	mv	a2,a1

00000006 <.LBB97>:
   6:	4581                	li	a1,0

00000008 <.LBE97>:
   8:	c422                	sw	s0,8(sp)
   a:	c606                	sw	ra,12(sp)
   c:	842a                	mv	s0,a0

0000000e <.LBB101>:
   e:	00000097          	auipc	ra,0x0
  12:	000080e7          	jalr	ra # e <.LBB101>

00000016 <.LVL225>:
  16:	8522                	mv	a0,s0

00000018 <.LBE101>:
  18:	4422                	lw	s0,8(sp)

0000001a <.LVL226>:
  1a:	40b2                	lw	ra,12(sp)
  1c:	0141                	addi	sp,sp,16

0000001e <.LBB102>:
  1e:	00000317          	auipc	t1,0x0
  22:	00030067          	jr	t1 # 1e <.LBB102>

00000026 <.L135>:
  26:	8082                	ret

Disassembly of section .text.sae_clear_temp_data:

00000000 <sae_clear_temp_data>:
   0:	c169                	beqz	a0,c2 <.L149>
   2:	1141                	addi	sp,sp,-16
   4:	c606                	sw	ra,12(sp)
   6:	c422                	sw	s0,8(sp)
   8:	c226                	sw	s1,4(sp)
   a:	4160                	lw	s0,68(a0)
   c:	c455                	beqz	s0,b8 <.L140>
   e:	84aa                	mv	s1,a0

00000010 <.LVL229>:
  10:	4028                	lw	a0,64(s0)

00000012 <.LVL230>:
  12:	00000097          	auipc	ra,0x0
  16:	000080e7          	jalr	ra # 12 <.LVL230>

0000001a <.LVL231>:
  1a:	4868                	lw	a0,84(s0)
  1c:	4581                	li	a1,0
  1e:	00000097          	auipc	ra,0x0
  22:	000080e7          	jalr	ra # 1e <.LVL231+0x4>

00000026 <.LVL232>:
  26:	4c28                	lw	a0,88(s0)
  28:	4581                	li	a1,0
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LVL232+0x4>

00000032 <.LVL233>:
  32:	5c48                	lw	a0,60(s0)
  34:	4585                	li	a1,1
  36:	00000097          	auipc	ra,0x0
  3a:	000080e7          	jalr	ra # 36 <.LVL233+0x4>

0000003e <.LVL234>:
  3e:	5c08                	lw	a0,56(s0)
  40:	4585                	li	a1,1
  42:	00000097          	auipc	ra,0x0
  46:	000080e7          	jalr	ra # 42 <.LVL234+0x4>

0000004a <.LVL235>:
  4a:	5008                	lw	a0,32(s0)
  4c:	4581                	li	a1,0
  4e:	00000097          	auipc	ra,0x0
  52:	000080e7          	jalr	ra # 4e <.LVL235+0x4>

00000056 <.LVL236>:
  56:	5048                	lw	a0,36(s0)
  58:	4581                	li	a1,0
  5a:	00000097          	auipc	ra,0x0
  5e:	000080e7          	jalr	ra # 5a <.LVL236+0x4>

00000062 <.LVL237>:
  62:	5448                	lw	a0,44(s0)
  64:	4581                	li	a1,0
  66:	00000097          	auipc	ra,0x0
  6a:	000080e7          	jalr	ra # 66 <.LVL237+0x4>

0000006e <.LVL238>:
  6e:	5848                	lw	a0,52(s0)
  70:	4585                	li	a1,1
  72:	00000097          	auipc	ra,0x0
  76:	000080e7          	jalr	ra # 72 <.LVL238+0x4>

0000007a <.LVL239>:
  7a:	5408                	lw	a0,40(s0)
  7c:	4581                	li	a1,0
  7e:	00000097          	auipc	ra,0x0
  82:	000080e7          	jalr	ra # 7e <.LVL239+0x4>

00000086 <.LVL240>:
  86:	5808                	lw	a0,48(s0)
  88:	4581                	li	a1,0
  8a:	00000097          	auipc	ra,0x0
  8e:	000080e7          	jalr	ra # 8a <.LVL240+0x4>

00000092 <.LVL241>:
  92:	4c68                	lw	a0,92(s0)
  94:	00000097          	auipc	ra,0x0
  98:	000080e7          	jalr	ra # 94 <.LVL241+0x2>

0000009c <.LVL242>:
  9c:	5028                	lw	a0,96(s0)
  9e:	00000097          	auipc	ra,0x0
  a2:	000080e7          	jalr	ra # 9e <.LVL242+0x2>

000000a6 <.LVL243>:
  a6:	06400593          	li	a1,100
  aa:	8522                	mv	a0,s0
  ac:	00000097          	auipc	ra,0x0
  b0:	000080e7          	jalr	ra # ac <.LVL243+0x6>

000000b4 <.LVL244>:
  b4:	0404a223          	sw	zero,68(s1)

000000b8 <.L140>:
  b8:	40b2                	lw	ra,12(sp)
  ba:	4422                	lw	s0,8(sp)
  bc:	4492                	lw	s1,4(sp)
  be:	0141                	addi	sp,sp,16
  c0:	8082                	ret

000000c2 <.L149>:
  c2:	8082                	ret

Disassembly of section .text.sae_clear_data:

00000000 <sae_clear_data>:
   0:	c915                	beqz	a0,34 <.L152>
   2:	1141                	addi	sp,sp,-16
   4:	c606                	sw	ra,12(sp)
   6:	c422                	sw	s0,8(sp)
   8:	842a                	mv	s0,a0

0000000a <.LBB105>:
   a:	00000097          	auipc	ra,0x0
   e:	000080e7          	jalr	ra # a <.LBB105>

00000012 <.LVL249>:
  12:	5848                	lw	a0,52(s0)
  14:	4581                	li	a1,0
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LVL249+0x4>

0000001e <.LVL250>:
  1e:	8522                	mv	a0,s0

00000020 <.LBE105>:
  20:	4422                	lw	s0,8(sp)

00000022 <.LVL251>:
  22:	40b2                	lw	ra,12(sp)

00000024 <.LBB110>:
  24:	04800613          	li	a2,72

00000028 <.LBB111>:
  28:	4581                	li	a1,0

0000002a <.LBE111>:
  2a:	0141                	addi	sp,sp,16

0000002c <.LBB112>:
  2c:	00000317          	auipc	t1,0x0
  30:	00030067          	jr	t1 # 2c <.LBB112>

00000034 <.L152>:
  34:	8082                	ret

Disassembly of section .text.sae_set_group:

00000000 <sae_set_group>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)
   4:	c226                	sw	s1,4(sp)
   6:	c04a                	sw	s2,0(sp)
   8:	84ae                	mv	s1,a1
   a:	892a                	mv	s2,a0
   c:	c422                	sw	s0,8(sp)
   e:	00000097          	auipc	ra,0x0
  12:	000080e7          	jalr	ra # e <sae_set_group+0xe>

00000016 <.LVL254>:
  16:	06400513          	li	a0,100
  1a:	00000097          	auipc	ra,0x0
  1e:	000080e7          	jalr	ra # 1a <.LVL254+0x4>

00000022 <.LVL255>:
  22:	04a92223          	sw	a0,68(s2)

00000026 <.LVL256>:
  26:	c525                	beqz	a0,8e <.L160>
  28:	06400613          	li	a2,100
  2c:	4581                	li	a1,0
  2e:	842a                	mv	s0,a0
  30:	00000097          	auipc	ra,0x0
  34:	000080e7          	jalr	ra # 30 <.LVL256+0xa>

00000038 <.LVL257>:
  38:	8526                	mv	a0,s1
  3a:	00000097          	auipc	ra,0x0
  3e:	000080e7          	jalr	ra # 3a <.LVL257+0x2>

00000042 <.LVL258>:
  42:	c028                	sw	a0,64(s0)
  44:	cd05                	beqz	a0,7c <.L159>
  46:	02992c23          	sw	s1,56(s2)
  4a:	4028                	lw	a0,64(s0)
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.LVL258+0xa>

00000054 <.LVL259>:
  54:	c068                	sw	a0,68(s0)
  56:	4028                	lw	a0,64(s0)
  58:	00000097          	auipc	ra,0x0
  5c:	000080e7          	jalr	ra # 58 <.LVL259+0x4>

00000060 <.LVL260>:
  60:	c468                	sw	a0,76(s0)
  62:	4028                	lw	a0,64(s0)
  64:	00000097          	auipc	ra,0x0
  68:	000080e7          	jalr	ra # 64 <.LVL260+0x4>

0000006c <.LVL261>:
  6c:	c828                	sw	a0,80(s0)
  6e:	4501                	li	a0,0

00000070 <.L157>:
  70:	40b2                	lw	ra,12(sp)
  72:	4422                	lw	s0,8(sp)
  74:	4492                	lw	s1,4(sp)

00000076 <.LVL263>:
  76:	4902                	lw	s2,0(sp)

00000078 <.LVL264>:
  78:	0141                	addi	sp,sp,16
  7a:	8082                	ret

0000007c <.L159>:
  7c:	00000537          	lui	a0,0x0
  80:	85a6                	mv	a1,s1
  82:	00050513          	mv	a0,a0
  86:	00000097          	auipc	ra,0x0
  8a:	000080e7          	jalr	ra # 86 <.L159+0xa>

0000008e <.L160>:
  8e:	557d                	li	a0,-1
  90:	b7c5                	j	70 <.L157>

Disassembly of section .text.sae_prepare_commit:

00000000 <sae_prepare_commit>:
   0:	0447a803          	lw	a6,68(a5)
   4:	00081463          	bnez	a6,c <.L163>
   8:	557d                	li	a0,-1

0000000a <.LVL268>:
   a:	8082                	ret

0000000c <.L163>:
   c:	1101                	addi	sp,sp,-32
   e:	cc22                	sw	s0,24(sp)
  10:	ce06                	sw	ra,28(sp)
  12:	ca26                	sw	s1,20(sp)
  14:	c84a                	sw	s2,16(sp)
  16:	c64e                	sw	s3,12(sp)
  18:	c452                	sw	s4,8(sp)
  1a:	843e                	mv	s0,a5
  1c:	87ba                	mv	a5,a4

0000001e <.LVL270>:
  1e:	8736                	mv	a4,a3

00000020 <.LVL271>:
  20:	86b2                	mv	a3,a2

00000022 <.LVL272>:
  22:	862e                	mv	a2,a1

00000024 <.LVL273>:
  24:	85aa                	mv	a1,a0

00000026 <.LVL274>:
  26:	04082503          	lw	a0,64(a6)

0000002a <.LVL275>:
  2a:	e131                	bnez	a0,6e <.L165>

0000002c <.L168>:
  2c:	06500993          	li	s3,101
  30:	04440a13          	addi	s4,s0,68

00000034 <.L166>:
  34:	19fd                	addi	s3,s3,-1

00000036 <.LVL278>:
  36:	04098363          	beqz	s3,7c <.L198>

0000003a <.LBB121>:
  3a:	407c                	lw	a5,68(s0)
  3c:	4585                	li	a1,1
  3e:	5fc8                	lw	a0,60(a5)
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.LBB121+0x6>

00000048 <.LVL280>:
  48:	4064                	lw	s1,68(s0)
  4a:	8552                	mv	a0,s4
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.LVL280+0x4>

00000054 <.LVL281>:
  54:	dcc8                	sw	a0,60(s1)
  56:	407c                	lw	a5,68(s0)
  58:	5fdc                	lw	a5,60(a5)
  5a:	eb95                	bnez	a5,8e <.L169>

0000005c <.L170>:
  5c:	00000537          	lui	a0,0x0
  60:	00050513          	mv	a0,a0
  64:	00000097          	auipc	ra,0x0
  68:	000080e7          	jalr	ra # 64 <.L170+0x8>

0000006c <.LVL283>:
  6c:	a801                	j	7c <.L198>

0000006e <.L165>:
  6e:	8522                	mv	a0,s0
  70:	00000097          	auipc	ra,0x0
  74:	000080e7          	jalr	ra # 70 <.L165+0x2>

00000078 <.LVL285>:
  78:	fa055ae3          	bgez	a0,2c <.L168>

0000007c <.L198>:
  7c:	557d                	li	a0,-1

0000007e <.L162>:
  7e:	40f2                	lw	ra,28(sp)
  80:	4462                	lw	s0,24(sp)

00000082 <.LVL286>:
  82:	44d2                	lw	s1,20(sp)
  84:	4942                	lw	s2,16(sp)
  86:	49b2                	lw	s3,12(sp)
  88:	4a22                	lw	s4,8(sp)
  8a:	6105                	addi	sp,sp,32
  8c:	8082                	ret

0000008e <.L169>:
  8e:	8552                	mv	a0,s4
  90:	00000097          	auipc	ra,0x0
  94:	000080e7          	jalr	ra # 90 <.L169+0x2>

00000098 <.LVL288>:
  98:	892a                	mv	s2,a0

0000009a <.LBE124>:
  9a:	d169                	beqz	a0,5c <.L170>
  9c:	4064                	lw	s1,68(s0)
  9e:	509c                	lw	a5,32(s1)
  a0:	cfa5                	beqz	a5,118 <.L171>

000000a2 <.L174>:
  a2:	407c                	lw	a5,68(s0)
  a4:	85ca                	mv	a1,s2
  a6:	5390                	lw	a2,32(a5)
  a8:	5fc8                	lw	a0,60(a5)
  aa:	00000097          	auipc	ra,0x0
  ae:	000080e7          	jalr	ra # aa <.L174+0x8>

000000b2 <.LVL291>:
  b2:	407c                	lw	a5,68(s0)
  b4:	5390                	lw	a2,32(a5)
  b6:	4bac                	lw	a1,80(a5)
  b8:	8532                	mv	a0,a2
  ba:	00000097          	auipc	ra,0x0
  be:	000080e7          	jalr	ra # ba <.LVL291+0x8>

000000c2 <.LVL292>:
  c2:	407c                	lw	a5,68(s0)
  c4:	5388                	lw	a0,32(a5)
  c6:	00000097          	auipc	ra,0x0
  ca:	000080e7          	jalr	ra # c6 <.LVL292+0x4>

000000ce <.LVL293>:
  ce:	f13d                	bnez	a0,34 <.L166>
  d0:	407c                	lw	a5,68(s0)
  d2:	5388                	lw	a0,32(a5)
  d4:	00000097          	auipc	ra,0x0
  d8:	000080e7          	jalr	ra # d4 <.LVL293+0x6>

000000dc <.LVL294>:
  dc:	84aa                	mv	s1,a0
  de:	f939                	bnez	a0,34 <.L166>
  e0:	04442983          	lw	s3,68(s0)

000000e4 <.LVL295>:
  e4:	0409a503          	lw	a0,64(s3)
  e8:	c129                	beqz	a0,12a <.L175>

000000ea <.LBB125>:
  ea:	0289a783          	lw	a5,40(s3)
  ee:	cbb9                	beqz	a5,144 <.L177>

000000f0 <.L181>:
  f0:	407c                	lw	a5,68(s0)
  f2:	864a                	mv	a2,s2
  f4:	5794                	lw	a3,40(a5)
  f6:	5bcc                	lw	a1,52(a5)
  f8:	43a8                	lw	a0,64(a5)
  fa:	00000097          	auipc	ra,0x0
  fe:	000080e7          	jalr	ra # fa <.L181+0xa>

00000102 <.LVL297>:
 102:	04055b63          	bgez	a0,158 <.L193>

00000106 <.L178>:
 106:	00000537          	lui	a0,0x0
 10a:	00050513          	mv	a0,a0
 10e:	00000097          	auipc	ra,0x0
 112:	000080e7          	jalr	ra # 10e <.L178+0x8>

00000116 <.LVL298>:
 116:	a809                	j	128 <.L197>

00000118 <.L171>:
 118:	00000097          	auipc	ra,0x0
 11c:	000080e7          	jalr	ra # 118 <.L171>

00000120 <.LVL300>:
 120:	d088                	sw	a0,32(s1)
 122:	407c                	lw	a5,68(s0)
 124:	539c                	lw	a5,32(a5)
 126:	ffb5                	bnez	a5,a2 <.L174>

00000128 <.L197>:
 128:	54fd                	li	s1,-1

0000012a <.L175>:
 12a:	854a                	mv	a0,s2
 12c:	4585                	li	a1,1
 12e:	00000097          	auipc	ra,0x0
 132:	000080e7          	jalr	ra # 12e <.L175+0x4>

00000136 <.LBE135>:
 136:	00148513          	addi	a0,s1,1
 13a:	00153513          	seqz	a0,a0
 13e:	40a00533          	neg	a0,a0
 142:	bf35                	j	7e <.L162>

00000144 <.L177>:
 144:	00000097          	auipc	ra,0x0
 148:	000080e7          	jalr	ra # 144 <.L177>

0000014c <.LVL305>:
 14c:	02a9a423          	sw	a0,40(s3)
 150:	407c                	lw	a5,68(s0)
 152:	579c                	lw	a5,40(a5)
 154:	ffd1                	bnez	a5,f0 <.L181>
 156:	bfc9                	j	128 <.L197>

00000158 <.L193>:
 158:	407c                	lw	a5,68(s0)
 15a:	578c                	lw	a1,40(a5)
 15c:	43a8                	lw	a0,64(a5)
 15e:	00000097          	auipc	ra,0x0
 162:	000080e7          	jalr	ra # 15e <.L193+0x6>

00000166 <.LVL306>:
 166:	fc0552e3          	bgez	a0,12a <.L175>
 16a:	bf71                	j	106 <.L178>

Disassembly of section .text.sae_process_commit:

00000000 <sae_process_commit>:
   0:	417c                	lw	a5,68(a0)
   2:	e399                	bnez	a5,8 <.L200>
   4:	557d                	li	a0,-1

00000006 <.LVL308>:
   6:	8082                	ret

00000008 <.L200>:
   8:	b7010113          	addi	sp,sp,-1168
   c:	48812423          	sw	s0,1160(sp)
  10:	48112623          	sw	ra,1164(sp)
  14:	48912223          	sw	s1,1156(sp)
  18:	49212023          	sw	s2,1152(sp)
  1c:	842a                	mv	s0,a0
  1e:	43a8                	lw	a0,64(a5)

00000020 <.LVL310>:
  20:	e105                	bnez	a0,40 <.L202>

00000022 <.L209>:
  22:	00000097          	auipc	ra,0x0
  26:	000080e7          	jalr	ra # 22 <.L209>

0000002a <.LVL312>:
  2a:	84aa                	mv	s1,a0

0000002c <.LVL313>:
  2c:	e569                	bnez	a0,f6 <.L215>

0000002e <.L203>:
  2e:	547d                	li	s0,-1

00000030 <.L210>:
  30:	8526                	mv	a0,s1
  32:	4581                	li	a1,0
  34:	00000097          	auipc	ra,0x0
  38:	000080e7          	jalr	ra # 34 <.L210+0x4>

0000003c <.LBE145>:
  3c:	8522                	mv	a0,s0
  3e:	a0b1                	j	8a <.L199>

00000040 <.L202>:
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.L202>

00000048 <.LVL317>:
  48:	84aa                	mv	s1,a0

0000004a <.LVL318>:
  4a:	597d                	li	s2,-1
  4c:	c50d                	beqz	a0,76 <.L205>
  4e:	407c                	lw	a5,68(s0)
  50:	86aa                	mv	a3,a0
  52:	5850                	lw	a2,52(s0)
  54:	5bcc                	lw	a1,52(a5)
  56:	43a8                	lw	a0,64(a5)
  58:	00000097          	auipc	ra,0x0
  5c:	000080e7          	jalr	ra # 58 <.LVL318+0xe>

00000060 <.LVL319>:
  60:	04055063          	bgez	a0,a0 <.L206>

00000064 <.L207>:
  64:	00000537          	lui	a0,0x0
  68:	00050513          	mv	a0,a0
  6c:	00000097          	auipc	ra,0x0
  70:	000080e7          	jalr	ra # 6c <.L207+0x8>

00000074 <.LVL320>:
  74:	597d                	li	s2,-1

00000076 <.L205>:
  76:	4585                	li	a1,1
  78:	8526                	mv	a0,s1
  7a:	00000097          	auipc	ra,0x0
  7e:	000080e7          	jalr	ra # 7a <.L205+0x4>

00000082 <.LBE156>:
  82:	57fd                	li	a5,-1
  84:	f8f91fe3          	bne	s2,a5,22 <.L209>
  88:	557d                	li	a0,-1

0000008a <.L199>:
  8a:	48c12083          	lw	ra,1164(sp)
  8e:	48812403          	lw	s0,1160(sp)
  92:	48412483          	lw	s1,1156(sp)
  96:	48012903          	lw	s2,1152(sp)
  9a:	49010113          	addi	sp,sp,1168
  9e:	8082                	ret

000000a0 <.L206>:
  a0:	407c                	lw	a5,68(s0)
  a2:	86a6                	mv	a3,s1
  a4:	85a6                	mv	a1,s1
  a6:	5b90                	lw	a2,48(a5)
  a8:	43a8                	lw	a0,64(a5)
  aa:	00000097          	auipc	ra,0x0
  ae:	000080e7          	jalr	ra # aa <.L206+0xa>

000000b2 <.LVL325>:
  b2:	fa0549e3          	bltz	a0,64 <.L207>
  b6:	407c                	lw	a5,68(s0)
  b8:	86a6                	mv	a3,s1
  ba:	85a6                	mv	a1,s1
  bc:	5fd0                	lw	a2,60(a5)
  be:	43a8                	lw	a0,64(a5)
  c0:	00000097          	auipc	ra,0x0
  c4:	000080e7          	jalr	ra # c0 <.LVL325+0xe>

000000c8 <.LVL326>:
  c8:	f8054ee3          	bltz	a0,64 <.L207>
  cc:	407c                	lw	a5,68(s0)
  ce:	85a6                	mv	a1,s1
  d0:	43a8                	lw	a0,64(a5)
  d2:	00000097          	auipc	ra,0x0
  d6:	000080e7          	jalr	ra # d2 <.LVL326+0xa>

000000da <.LVL327>:
  da:	892a                	mv	s2,a0
  dc:	f541                	bnez	a0,64 <.L207>
  de:	407c                	lw	a5,68(s0)
  e0:	4681                	li	a3,0
  e2:	0110                	addi	a2,sp,128

000000e4 <.LVL328>:
  e4:	43a8                	lw	a0,64(a5)
  e6:	85a6                	mv	a1,s1
  e8:	00000097          	auipc	ra,0x0
  ec:	000080e7          	jalr	ra # e8 <.LVL328+0x4>

000000f0 <.LVL329>:
  f0:	f80553e3          	bgez	a0,76 <.L205>
  f4:	bf85                	j	64 <.L207>

000000f6 <.L215>:
  f6:	02000613          	li	a2,32
  fa:	4581                	li	a1,0
  fc:	850a                	mv	a0,sp
  fe:	00000097          	auipc	ra,0x0
 102:	000080e7          	jalr	ra # fe <.L215+0x8>

00000106 <.LVL331>:
 106:	407c                	lw	a5,68(s0)
 108:	0118                	addi	a4,sp,128

0000010a <.LBB147>:
 10a:	0094                	addi	a3,sp,64

0000010c <.LBE147>:
 10c:	43fc                	lw	a5,68(a5)

0000010e <.LBB150>:
 10e:	4605                	li	a2,1
 110:	c0ba                	sw	a4,64(sp)

00000112 <.LVL334>:
 112:	28f12023          	sw	a5,640(sp)

00000116 <.LVL335>:
 116:	0518                	addi	a4,sp,640

00000118 <.LVL336>:
 118:	101c                	addi	a5,sp,32

0000011a <.LVL337>:
 11a:	02000593          	li	a1,32
 11e:	850a                	mv	a0,sp
 120:	00000097          	auipc	ra,0x0
 124:	000080e7          	jalr	ra # 120 <.LVL337+0x6>

00000128 <.LBE150>:
 128:	407c                	lw	a5,68(s0)
 12a:	584c                	lw	a1,52(s0)
 12c:	8626                	mv	a2,s1
 12e:	5388                	lw	a0,32(a5)
 130:	00000097          	auipc	ra,0x0
 134:	000080e7          	jalr	ra # 130 <.LBE150+0x8>

00000138 <.LVL339>:
 138:	407c                	lw	a5,68(s0)
 13a:	8626                	mv	a2,s1
 13c:	8526                	mv	a0,s1
 13e:	4bac                	lw	a1,80(a5)
 140:	00000097          	auipc	ra,0x0
 144:	000080e7          	jalr	ra # 140 <.LVL339+0x8>

00000148 <.LVL340>:
 148:	407c                	lw	a5,68(s0)
 14a:	20000613          	li	a2,512
 14e:	050c                	addi	a1,sp,640
 150:	43f4                	lw	a3,68(a5)
 152:	8526                	mv	a0,s1
 154:	00000097          	auipc	ra,0x0
 158:	000080e7          	jalr	ra # 154 <.LVL340+0xc>

0000015c <.LBB151>:
 15c:	4074                	lw	a3,68(s0)

0000015e <.LBB154>:
 15e:	000005b7          	lui	a1,0x0
 162:	20000793          	li	a5,512
 166:	42f4                	lw	a3,68(a3)
 168:	0098                	addi	a4,sp,64

0000016a <.LVL342>:
 16a:	0510                	addi	a2,sp,640

0000016c <.LVL343>:
 16c:	00058593          	mv	a1,a1
 170:	1008                	addi	a0,sp,32

00000172 <.LVL344>:
 172:	00000097          	auipc	ra,0x0
 176:	000080e7          	jalr	ra # 172 <.LVL344>

0000017a <.LBE154>:
 17a:	ea054ae3          	bltz	a0,2e <.L203>
 17e:	02000613          	li	a2,32
 182:	4581                	li	a1,0
 184:	1008                	addi	a0,sp,32
 186:	00000097          	auipc	ra,0x0
 18a:	000080e7          	jalr	ra # 186 <.LBE154+0xc>

0000018e <.LVL346>:
 18e:	4068                	lw	a0,68(s0)
 190:	02000613          	li	a2,32
 194:	008c                	addi	a1,sp,64
 196:	00000097          	auipc	ra,0x0
 19a:	000080e7          	jalr	ra # 196 <.LVL346+0x8>

0000019e <.LVL347>:
 19e:	02000613          	li	a2,32
 1a2:	108c                	addi	a1,sp,96
 1a4:	00440513          	addi	a0,s0,4
 1a8:	00000097          	auipc	ra,0x0
 1ac:	000080e7          	jalr	ra # 1a8 <.LVL347+0xa>

000001b0 <.LVL348>:
 1b0:	4641                	li	a2,16
 1b2:	050c                	addi	a1,sp,640
 1b4:	02440513          	addi	a0,s0,36
 1b8:	00000097          	auipc	ra,0x0
 1bc:	000080e7          	jalr	ra # 1b8 <.LVL348+0x8>

000001c0 <.LVL349>:
 1c0:	04000613          	li	a2,64
 1c4:	4581                	li	a1,0
 1c6:	0088                	addi	a0,sp,64
 1c8:	00000097          	auipc	ra,0x0
 1cc:	000080e7          	jalr	ra # 1c8 <.LVL349+0x8>

000001d0 <.LVL350>:
 1d0:	4401                	li	s0,0

000001d2 <.LVL351>:
 1d2:	bdb9                	j	30 <.L210>

Disassembly of section .text.sae_write_commit:

00000000 <sae_write_commit>:
   0:	7179                	addi	sp,sp,-48
   2:	d606                	sw	ra,44(sp)
   4:	d422                	sw	s0,40(sp)
   6:	d226                	sw	s1,36(sp)
   8:	d04a                	sw	s2,32(sp)
   a:	ce4e                	sw	s3,28(sp)
   c:	cc52                	sw	s4,24(sp)
   e:	417c                	lw	a5,68(a0)
  10:	cbc1                	beqz	a5,a0 <.L226>
  12:	03852a03          	lw	s4,56(a0) # 38 <.LBB187+0xe>
  16:	842e                	mv	s0,a1
  18:	84aa                	mv	s1,a0

0000001a <.LBB185>:
  1a:	4589                	li	a1,2

0000001c <.LVL354>:
  1c:	8522                	mv	a0,s0

0000001e <.LVL355>:
  1e:	8936                	mv	s2,a3
  20:	89b2                	mv	s3,a2
  22:	00000097          	auipc	ra,0x0
  26:	000080e7          	jalr	ra # 22 <.LVL355+0x4>

0000002a <.LBB187>:
  2a:	010a1793          	slli	a5,s4,0x10
  2e:	83c1                	srli	a5,a5,0x10
  30:	83a1                	srli	a5,a5,0x8
  32:	00f500a3          	sb	a5,1(a0)
  36:	01450023          	sb	s4,0(a0)

0000003a <.LBE185>:
  3a:	02098963          	beqz	s3,6c <.L221>

0000003e <.LBB189>:
  3e:	0089aa03          	lw	s4,8(s3)
  42:	000a1663          	bnez	s4,4e <.L222>
  46:	00c98a13          	addi	s4,s3,12

0000004a <.LBB193>:
  4a:	020a0163          	beqz	s4,6c <.L221>

0000004e <.L222>:
  4e:	0049a603          	lw	a2,4(s3)

00000052 <.LBB195>:
  52:	8522                	mv	a0,s0
  54:	85b2                	mv	a1,a2
  56:	c632                	sw	a2,12(sp)
  58:	00000097          	auipc	ra,0x0
  5c:	000080e7          	jalr	ra # 58 <.LBB195+0x6>

00000060 <.LVL362>:
  60:	4632                	lw	a2,12(sp)
  62:	85d2                	mv	a1,s4
  64:	00000097          	auipc	ra,0x0
  68:	000080e7          	jalr	ra # 64 <.LVL362+0x4>

0000006c <.L221>:
  6c:	40fc                	lw	a5,68(s1)
  6e:	8522                	mv	a0,s0
  70:	43ec                	lw	a1,68(a5)
  72:	00000097          	auipc	ra,0x0
  76:	000080e7          	jalr	ra # 72 <.L221+0x6>

0000007a <.LVL364>:
  7a:	40fc                	lw	a5,68(s1)
  7c:	85aa                	mv	a1,a0
  7e:	43f4                	lw	a3,68(a5)
  80:	5388                	lw	a0,32(a5)

00000082 <.LVL365>:
  82:	8636                	mv	a2,a3
  84:	00000097          	auipc	ra,0x0
  88:	000080e7          	jalr	ra # 84 <.LVL365+0x2>

0000008c <.LVL366>:
  8c:	00055c63          	bgez	a0,a4 <.L223>
  90:	00000537          	lui	a0,0x0
  94:	00050513          	mv	a0,a0

00000098 <.L236>:
  98:	00000097          	auipc	ra,0x0
  9c:	000080e7          	jalr	ra # 98 <.L236>

000000a0 <.L226>:
  a0:	54fd                	li	s1,-1
  a2:	a8c1                	j	172 <.L219>

000000a4 <.L223>:
  a4:	40fc                	lw	a5,68(s1)
  a6:	43ec                	lw	a1,68(a5)
  a8:	43bc                	lw	a5,64(a5)
  aa:	cb85                	beqz	a5,da <.L224>
  ac:	0586                	slli	a1,a1,0x1
  ae:	8522                	mv	a0,s0
  b0:	00000097          	auipc	ra,0x0
  b4:	000080e7          	jalr	ra # b0 <.L223+0xc>

000000b8 <.LVL369>:
  b8:	40fc                	lw	a5,68(s1)
  ba:	862a                	mv	a2,a0

000000bc <.LVL370>:
  bc:	43f4                	lw	a3,68(a5)
  be:	578c                	lw	a1,40(a5)
  c0:	96aa                	add	a3,a3,a0
  c2:	43a8                	lw	a0,64(a5)

000000c4 <.LVL371>:
  c4:	00000097          	auipc	ra,0x0
  c8:	000080e7          	jalr	ra # c4 <.LVL371>

000000cc <.LVL372>:
  cc:	02055c63          	bgez	a0,104 <.L225>
  d0:	00000537          	lui	a0,0x0
  d4:	00050513          	mv	a0,a0
  d8:	b7c1                	j	98 <.L236>

000000da <.L224>:
  da:	8522                	mv	a0,s0
  dc:	00000097          	auipc	ra,0x0
  e0:	000080e7          	jalr	ra # dc <.L224+0x2>

000000e4 <.LVL373>:
  e4:	40fc                	lw	a5,68(s1)
  e6:	85aa                	mv	a1,a0
  e8:	43f4                	lw	a3,68(a5)
  ea:	53c8                	lw	a0,36(a5)

000000ec <.LVL374>:
  ec:	8636                	mv	a2,a3
  ee:	00000097          	auipc	ra,0x0
  f2:	000080e7          	jalr	ra # ee <.LVL374+0x2>

000000f6 <.LVL375>:
  f6:	00055763          	bgez	a0,104 <.L225>
  fa:	00000537          	lui	a0,0x0
  fe:	00050513          	mv	a0,a0
 102:	bf59                	j	98 <.L236>

00000104 <.L225>:
 104:	4481                	li	s1,0

00000106 <.LVL376>:
 106:	06090663          	beqz	s2,172 <.L219>

0000010a <.LBB201>:
 10a:	4585                	li	a1,1
 10c:	8522                	mv	a0,s0
 10e:	00000097          	auipc	ra,0x0
 112:	000080e7          	jalr	ra # 10e <.LBB201+0x4>

00000116 <.LVL378>:
 116:	57fd                	li	a5,-1
 118:	00f50023          	sb	a5,0(a0) # 0 <sae_write_commit>

0000011c <.LBE201>:
 11c:	854a                	mv	a0,s2
 11e:	00000097          	auipc	ra,0x0
 122:	000080e7          	jalr	ra # 11e <.LBE201+0x2>

00000126 <.LVL380>:
 126:	89aa                	mv	s3,a0

00000128 <.LBB203>:
 128:	4585                	li	a1,1
 12a:	8522                	mv	a0,s0
 12c:	00000097          	auipc	ra,0x0
 130:	000080e7          	jalr	ra # 12c <.LBB203+0x4>

00000134 <.LBE203>:
 134:	0985                	addi	s3,s3,1

00000136 <.LBB206>:
 136:	4585                	li	a1,1

00000138 <.LBB209>:
 138:	01350023          	sb	s3,0(a0)

0000013c <.LBB210>:
 13c:	8522                	mv	a0,s0
 13e:	00000097          	auipc	ra,0x0
 142:	000080e7          	jalr	ra # 13e <.LBB210+0x2>

00000146 <.LVL385>:
 146:	02100793          	li	a5,33
 14a:	00f50023          	sb	a5,0(a0)

0000014e <.LBB211>:
 14e:	854a                	mv	a0,s2
 150:	00000097          	auipc	ra,0x0
 154:	000080e7          	jalr	ra # 150 <.LBB211+0x2>

00000158 <.LBB213>:
 158:	85aa                	mv	a1,a0
 15a:	c62a                	sw	a0,12(sp)
 15c:	8522                	mv	a0,s0

0000015e <.LVL388>:
 15e:	00000097          	auipc	ra,0x0
 162:	000080e7          	jalr	ra # 15e <.LVL388>

00000166 <.LVL389>:
 166:	4632                	lw	a2,12(sp)
 168:	85ca                	mv	a1,s2
 16a:	00000097          	auipc	ra,0x0
 16e:	000080e7          	jalr	ra # 16a <.LVL389+0x4>

00000172 <.L219>:
 172:	50b2                	lw	ra,44(sp)
 174:	5422                	lw	s0,40(sp)
 176:	8526                	mv	a0,s1
 178:	5902                	lw	s2,32(sp)
 17a:	5492                	lw	s1,36(sp)
 17c:	49f2                	lw	s3,28(sp)
 17e:	4a62                	lw	s4,24(sp)
 180:	6145                	addi	sp,sp,48
 182:	8082                	ret

Disassembly of section .text.sae_group_allowed:

00000000 <sae_group_allowed>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	842a                	mv	s0,a0
   a:	84ae                	mv	s1,a1
   c:	872e                	mv	a4,a1
   e:	e59d                	bnez	a1,3c <.L239>

00000010 <.L238>:
  10:	00044683          	lbu	a3,0(s0)
  14:	4705                	li	a4,1
  16:	5c1c                	lw	a5,56(s0)
  18:	04e69163          	bne	a3,a4,5a <.L242>
  1c:	06c78163          	beq	a5,a2,7e <.L243>
  20:	00000537          	lui	a0,0x0

00000024 <.LVL393>:
  24:	00050513          	mv	a0,a0
  28:	00000097          	auipc	ra,0x0
  2c:	000080e7          	jalr	ra # 28 <.LVL393+0x4>

00000030 <.L252>:
  30:	04d00513          	li	a0,77
  34:	a085                	j	94 <.L241>

00000036 <.L240>:
  36:	0711                	addi	a4,a4,4
  38:	fcc78ce3          	beq	a5,a2,10 <.L238>

0000003c <.L239>:
  3c:	431c                	lw	a5,0(a4)
  3e:	fef04ce3          	bgtz	a5,36 <.L240>
  42:	fcc787e3          	beq	a5,a2,10 <.L238>
  46:	00000537          	lui	a0,0x0
  4a:	85b2                	mv	a1,a2
  4c:	00050513          	mv	a0,a0

00000050 <.L251>:
  50:	00000097          	auipc	ra,0x0
  54:	000080e7          	jalr	ra # 50 <.L251>

00000058 <.LVL397>:
  58:	bfe1                	j	30 <.L252>

0000005a <.L242>:
  5a:	02c78263          	beq	a5,a2,7e <.L243>
  5e:	85b2                	mv	a1,a2
  60:	8522                	mv	a0,s0
  62:	c632                	sw	a2,12(sp)
  64:	00000097          	auipc	ra,0x0
  68:	000080e7          	jalr	ra # 64 <.L242+0xa>

0000006c <.LVL399>:
  6c:	4632                	lw	a2,12(sp)
  6e:	00055863          	bgez	a0,7e <.L243>
  72:	00000537          	lui	a0,0x0
  76:	85b2                	mv	a1,a2
  78:	00050513          	mv	a0,a0
  7c:	bfd1                	j	50 <.L251>

0000007e <.L243>:
  7e:	407c                	lw	a5,68(s0)
  80:	ef99                	bnez	a5,9e <.L244>
  82:	00000537          	lui	a0,0x0
  86:	00050513          	mv	a0,a0
  8a:	00000097          	auipc	ra,0x0
  8e:	000080e7          	jalr	ra # 8a <.L243+0xc>

00000092 <.LVL400>:
  92:	4505                	li	a0,1

00000094 <.L241>:
  94:	40f2                	lw	ra,28(sp)
  96:	4462                	lw	s0,24(sp)

00000098 <.LVL401>:
  98:	44d2                	lw	s1,20(sp)

0000009a <.LVL402>:
  9a:	6105                	addi	sp,sp,32
  9c:	8082                	ret

0000009e <.L244>:
  9e:	47bc                	lw	a5,72(a5)
  a0:	4501                	li	a0,0
  a2:	dbed                	beqz	a5,94 <.L241>
  a4:	f8e5                	bnez	s1,94 <.L241>
  a6:	00000537          	lui	a0,0x0
  aa:	85b2                	mv	a1,a2
  ac:	00050513          	mv	a0,a0
  b0:	b745                	j	50 <.L251>

Disassembly of section .text.sae_parse_commit:

00000000 <sae_parse_commit>:
   0:	7119                	addi	sp,sp,-128
   2:	d6ce                	sw	s3,108(sp)
   4:	de86                	sw	ra,124(sp)
   6:	89ae                	mv	s3,a1

00000008 <.LVL405>:
   8:	dca2                	sw	s0,120(sp)
   a:	daa6                	sw	s1,116(sp)
   c:	d8ca                	sw	s2,112(sp)
   e:	d4d2                	sw	s4,104(sp)
  10:	d2d6                	sw	s5,100(sp)
  12:	d0da                	sw	s6,96(sp)
  14:	cede                	sw	s7,92(sp)
  16:	4585                	li	a1,1

00000018 <.LVL406>:
  18:	00c5cf63          	blt	a1,a2,36 <.L254>

0000001c <.L342>:
  1c:	4905                	li	s2,1

0000001e <.L255>:
  1e:	50f6                	lw	ra,124(sp)
  20:	5466                	lw	s0,120(sp)
  22:	854a                	mv	a0,s2
  24:	54d6                	lw	s1,116(sp)
  26:	5946                	lw	s2,112(sp)
  28:	59b6                	lw	s3,108(sp)
  2a:	5a26                	lw	s4,104(sp)
  2c:	5a96                	lw	s5,100(sp)
  2e:	5b06                	lw	s6,96(sp)
  30:	4bf6                	lw	s7,92(sp)
  32:	6109                	addi	sp,sp,128
  34:	8082                	ret

00000036 <.L254>:
  36:	85be                	mv	a1,a5

00000038 <.LBB240>:
  38:	0019c783          	lbu	a5,1(s3)

0000003c <.LVL410>:
  3c:	8ab2                	mv	s5,a2

0000003e <.LBB243>:
  3e:	0009c603          	lbu	a2,0(s3)

00000042 <.LVL412>:
  42:	07a2                	slli	a5,a5,0x8
  44:	842a                	mv	s0,a0

00000046 <.LBE243>:
  46:	8e5d                	or	a2,a2,a5
  48:	8b3a                	mv	s6,a4
  4a:	8bb6                	mv	s7,a3
  4c:	00000097          	auipc	ra,0x0
  50:	000080e7          	jalr	ra # 4c <.LBE243+0x6>

00000054 <.LVL413>:
  54:	892a                	mv	s2,a0

00000056 <.LVL414>:
  56:	f561                	bnez	a0,1e <.L255>
  58:	00298493          	addi	s1,s3,2

0000005c <.LBB244>:
  5c:	000b8463          	beqz	s7,64 <.L256>
  60:	000ba023          	sw	zero,0(s7)

00000064 <.L256>:
  64:	000b0463          	beqz	s6,6c <.L257>
  68:	000b2023          	sw	zero,0(s6)

0000006c <.L257>:
  6c:	407c                	lw	a5,68(s0)
  6e:	ffea8613          	addi	a2,s5,-2

00000072 <.LBE244>:
  72:	99d6                	add	s3,s3,s5

00000074 <.LBB247>:
  74:	0407aa03          	lw	s4,64(a5)
  78:	43fc                	lw	a5,68(a5)
  7a:	01403a33          	snez	s4,s4
  7e:	0a09                	addi	s4,s4,2
  80:	02fa0a33          	mul	s4,s4,a5

00000084 <.LVL417>:
  84:	04ca7563          	bgeu	s4,a2,ce <.L259>
  88:	9a26                	add	s4,s4,s1

0000008a <.LVL418>:
  8a:	41498ab3          	sub	s5,s3,s4

0000008e <.LVL419>:
  8e:	47fd                	li	a5,31

00000090 <.LVL420>:
  90:	0357ff63          	bgeu	a5,s5,ce <.L259>

00000094 <.LVL421>:
  94:	85ce                	mv	a1,s3
  96:	8552                	mv	a0,s4

00000098 <.LVL422>:
  98:	00000097          	auipc	ra,0x0
  9c:	000080e7          	jalr	ra # 98 <.LVL422>

000000a0 <.LVL423>:
  a0:	e51d                	bnez	a0,ce <.L259>

000000a2 <.LVL424>:
  a2:	85ce                	mv	a1,s3
  a4:	020a0513          	addi	a0,s4,32

000000a8 <.LVL425>:
  a8:	00000097          	auipc	ra,0x0
  ac:	000080e7          	jalr	ra # a8 <.LVL425>

000000b0 <.LVL426>:
  b0:	c511                	beqz	a0,bc <.L260>
  b2:	021a4783          	lbu	a5,33(s4)
  b6:	1af9                	addi	s5,s5,-2

000000b8 <.LVL427>:
  b8:	40fa8ab3          	sub	s5,s5,a5

000000bc <.L260>:
  bc:	000b8463          	beqz	s7,c4 <.L261>
  c0:	009ba023          	sw	s1,0(s7)

000000c4 <.L261>:
  c4:	000b0463          	beqz	s6,cc <.L262>
  c8:	015b2023          	sw	s5,0(s6)

000000cc <.L262>:
  cc:	94d6                	add	s1,s1,s5

000000ce <.L259>:
  ce:	407c                	lw	a5,68(s0)
  d0:	43ec                	lw	a1,68(a5)
  d2:	409987b3          	sub	a5,s3,s1
  d6:	00b7db63          	bge	a5,a1,ec <.L263>
  da:	00000537          	lui	a0,0x0
  de:	00050513          	mv	a0,a0

000000e2 <.L345>:
  e2:	00000097          	auipc	ra,0x0
  e6:	000080e7          	jalr	ra # e2 <.L345>

000000ea <.LVL432>:
  ea:	bf0d                	j	1c <.L342>

000000ec <.L263>:
  ec:	8526                	mv	a0,s1
  ee:	00000097          	auipc	ra,0x0
  f2:	000080e7          	jalr	ra # ee <.L263+0x2>

000000f6 <.LVL434>:
  f6:	8a2a                	mv	s4,a0

000000f8 <.LVL435>:
  f8:	d115                	beqz	a0,1c <.L342>
  fa:	00044703          	lbu	a4,0(s0)
  fe:	478d                	li	a5,3
 100:	02f71963          	bne	a4,a5,132 <.L265>
 104:	5848                	lw	a0,52(s0)

00000106 <.LVL436>:
 106:	c515                	beqz	a0,132 <.L265>
 108:	85d2                	mv	a1,s4
 10a:	00000097          	auipc	ra,0x0
 10e:	000080e7          	jalr	ra # 10a <.LVL436+0x4>

00000112 <.LVL437>:
 112:	e105                	bnez	a0,132 <.L265>
 114:	00000537          	lui	a0,0x0
 118:	00050513          	mv	a0,a0

0000011c <.L344>:
 11c:	00000097          	auipc	ra,0x0
 120:	000080e7          	jalr	ra # 11c <.L344>

00000124 <.LVL439>:
 124:	4581                	li	a1,0
 126:	8552                	mv	a0,s4
 128:	00000097          	auipc	ra,0x0
 12c:	000080e7          	jalr	ra # 128 <.LVL439+0x4>

00000130 <.LBE248>:
 130:	b5f5                	j	1c <.L342>

00000132 <.L265>:
 132:	8552                	mv	a0,s4
 134:	00000097          	auipc	ra,0x0
 138:	000080e7          	jalr	ra # 134 <.L265+0x2>

0000013c <.LVL442>:
 13c:	c511                	beqz	a0,148 <.L266>

0000013e <.L267>:
 13e:	00000537          	lui	a0,0x0
 142:	00050513          	mv	a0,a0
 146:	bfd9                	j	11c <.L344>

00000148 <.L266>:
 148:	8552                	mv	a0,s4
 14a:	00000097          	auipc	ra,0x0
 14e:	000080e7          	jalr	ra # 14a <.L266+0x2>

00000152 <.LVL443>:
 152:	f575                	bnez	a0,13e <.L267>
 154:	407c                	lw	a5,68(s0)
 156:	8552                	mv	a0,s4
 158:	4bac                	lw	a1,80(a5)
 15a:	00000097          	auipc	ra,0x0
 15e:	000080e7          	jalr	ra # 15a <.LVL443+0x8>

00000162 <.LVL444>:
 162:	fc055ee3          	bgez	a0,13e <.L267>
 166:	5848                	lw	a0,52(s0)
 168:	4581                	li	a1,0
 16a:	00000097          	auipc	ra,0x0
 16e:	000080e7          	jalr	ra # 16a <.LVL444+0x8>

00000172 <.LVL445>:
 172:	407c                	lw	a5,68(s0)
 174:	03442a23          	sw	s4,52(s0)
 178:	43f4                	lw	a3,68(a5)

0000017a <.LBB250>:
 17a:	47b0                	lw	a2,72(a5)

0000017c <.LBB264>:
 17c:	94b6                	add	s1,s1,a3

0000017e <.LBB265>:
 17e:	40998733          	sub	a4,s3,s1
 182:	12060b63          	beqz	a2,2b8 <.L268>

00000186 <.LBB252>:
 186:	4605                	li	a2,1
 188:	00c10623          	sb	a2,12(sp)
 18c:	00d75763          	bge	a4,a3,19a <.L269>

00000190 <.L340>:
 190:	00000537          	lui	a0,0x0
 194:	00050513          	mv	a0,a0
 198:	b7a9                	j	e2 <.L345>

0000019a <.L269>:
 19a:	57c8                	lw	a0,44(a5)
 19c:	4581                	li	a1,0
 19e:	00000097          	auipc	ra,0x0
 1a2:	000080e7          	jalr	ra # 19e <.L269+0x4>

000001a6 <.LVL450>:
 1a6:	04442a03          	lw	s4,68(s0)
 1aa:	8526                	mv	a0,s1
 1ac:	044a2583          	lw	a1,68(s4)
 1b0:	00000097          	auipc	ra,0x0
 1b4:	000080e7          	jalr	ra # 1b0 <.LVL450+0xa>

000001b8 <.LVL451>:
 1b8:	02aa2623          	sw	a0,44(s4)
 1bc:	407c                	lw	a5,68(s0)
 1be:	57dc                	lw	a5,44(a5)
 1c0:	e4078ee3          	beqz	a5,1c <.L342>
 1c4:	00000097          	auipc	ra,0x0
 1c8:	000080e7          	jalr	ra # 1c4 <.LVL451+0xc>

000001cc <.LVL452>:
 1cc:	8a2a                	mv	s4,a0

000001ce <.LVL453>:
 1ce:	4585                	li	a1,1
 1d0:	0068                	addi	a0,sp,12

000001d2 <.LVL454>:
 1d2:	00000097          	auipc	ra,0x0
 1d6:	000080e7          	jalr	ra # 1d2 <.LVL454>

000001da <.LVL455>:
 1da:	8aaa                	mv	s5,a0

000001dc <.LVL456>:
 1dc:	020a1363          	bnez	s4,202 <.L271>

000001e0 <.L272>:
 1e0:	4581                	li	a1,0
 1e2:	8552                	mv	a0,s4
 1e4:	00000097          	auipc	ra,0x0
 1e8:	000080e7          	jalr	ra # 1e4 <.L272+0x4>

000001ec <.LVL458>:
 1ec:	8556                	mv	a0,s5
 1ee:	4581                	li	a1,0
 1f0:	00000097          	auipc	ra,0x0
 1f4:	000080e7          	jalr	ra # 1f0 <.LVL458+0x4>

000001f8 <.LVL459>:
 1f8:	00000537          	lui	a0,0x0
 1fc:	00050513          	mv	a0,a0
 200:	b5cd                	j	e2 <.L345>

00000202 <.L271>:
 202:	dd79                	beqz	a0,1e0 <.L272>
 204:	407c                	lw	a5,68(s0)
 206:	85aa                	mv	a1,a0
 208:	8652                	mv	a2,s4
 20a:	47e8                	lw	a0,76(a5)

0000020c <.LVL461>:
 20c:	00000097          	auipc	ra,0x0
 210:	000080e7          	jalr	ra # 20c <.LVL461>

00000214 <.LVL462>:
 214:	f571                	bnez	a0,1e0 <.L272>
 216:	407c                	lw	a5,68(s0)
 218:	57c8                	lw	a0,44(a5)
 21a:	00000097          	auipc	ra,0x0
 21e:	000080e7          	jalr	ra # 21a <.LVL462+0x6>

00000222 <.LVL463>:
 222:	fd5d                	bnez	a0,1e0 <.L272>
 224:	407c                	lw	a5,68(s0)
 226:	57c8                	lw	a0,44(a5)
 228:	00000097          	auipc	ra,0x0
 22c:	000080e7          	jalr	ra # 228 <.LVL463+0x6>

00000230 <.LVL464>:
 230:	f945                	bnez	a0,1e0 <.L272>
 232:	407c                	lw	a5,68(s0)
 234:	85d2                	mv	a1,s4
 236:	57c8                	lw	a0,44(a5)
 238:	00000097          	auipc	ra,0x0
 23c:	000080e7          	jalr	ra # 238 <.LVL464+0x8>

00000240 <.LVL465>:
 240:	fa0550e3          	bgez	a0,1e0 <.L272>
 244:	4581                	li	a1,0
 246:	8556                	mv	a0,s5
 248:	00000097          	auipc	ra,0x0
 24c:	000080e7          	jalr	ra # 248 <.LVL465+0x8>

00000250 <.LVL466>:
 250:	407c                	lw	a5,68(s0)
 252:	86d2                	mv	a3,s4
 254:	47f0                	lw	a2,76(a5)
 256:	4bac                	lw	a1,80(a5)
 258:	57c8                	lw	a0,44(a5)
 25a:	00000097          	auipc	ra,0x0
 25e:	000080e7          	jalr	ra # 25a <.LVL466+0xa>

00000262 <.LVL467>:
 262:	00055763          	bgez	a0,270 <.L273>

00000266 <.L274>:
 266:	00000537          	lui	a0,0x0
 26a:	00050513          	mv	a0,a0
 26e:	b57d                	j	11c <.L344>

00000270 <.L273>:
 270:	8552                	mv	a0,s4
 272:	00000097          	auipc	ra,0x0
 276:	000080e7          	jalr	ra # 272 <.L273+0x2>

0000027a <.LVL468>:
 27a:	d575                	beqz	a0,266 <.L274>
 27c:	4581                	li	a1,0
 27e:	8552                	mv	a0,s4
 280:	00000097          	auipc	ra,0x0
 284:	000080e7          	jalr	ra # 280 <.LVL468+0x6>

00000288 <.LVL469>:
 288:	407c                	lw	a5,68(s0)
 28a:	43fc                	lw	a5,68(a5)

0000028c <.L341>:
 28c:	94be                	add	s1,s1,a5

0000028e <.LBB266>:
 28e:	85ce                	mv	a1,s3
 290:	8526                	mv	a0,s1
 292:	00000097          	auipc	ra,0x0
 296:	000080e7          	jalr	ra # 292 <.LBB266+0x4>

0000029a <.LVL472>:
 29a:	407c                	lw	a5,68(s0)
 29c:	53ac                	lw	a1,96(a5)
 29e:	e56d                	bnez	a0,388 <.L281>
 2a0:	c9cd                	beqz	a1,352 <.L282>
 2a2:	00000537          	lui	a0,0x0
 2a6:	00050513          	mv	a0,a0

000002aa <.L343>:
 2aa:	00000097          	auipc	ra,0x0
 2ae:	000080e7          	jalr	ra # 2aa <.L343>

000002b2 <.LBE266>:
 2b2:	07b00913          	li	s2,123
 2b6:	b3a5                	j	1e <.L255>

000002b8 <.L268>:
 2b8:	00169613          	slli	a2,a3,0x1
 2bc:	ecc74ae3          	blt	a4,a2,190 <.L340>
 2c0:	47e8                	lw	a0,76(a5)
 2c2:	04200613          	li	a2,66
 2c6:	006c                	addi	a1,sp,12
 2c8:	00000097          	auipc	ra,0x0
 2cc:	000080e7          	jalr	ra # 2c8 <.L268+0x10>

000002d0 <.LVL475>:
 2d0:	d40546e3          	bltz	a0,1c <.L342>
 2d4:	407c                	lw	a5,68(s0)
 2d6:	006c                	addi	a1,sp,12
 2d8:	8526                	mv	a0,s1
 2da:	43f0                	lw	a2,68(a5)
 2dc:	00000097          	auipc	ra,0x0
 2e0:	000080e7          	jalr	ra # 2dc <.LVL475+0xc>

000002e4 <.LVL476>:
 2e4:	00054763          	bltz	a0,2f2 <.L278>

000002e8 <.L279>:
 2e8:	00000537          	lui	a0,0x0
 2ec:	00050513          	mv	a0,a0
 2f0:	bbcd                	j	e2 <.L345>

000002f2 <.L278>:
 2f2:	407c                	lw	a5,68(s0)
 2f4:	006c                	addi	a1,sp,12
 2f6:	43f0                	lw	a2,68(a5)
 2f8:	00c48533          	add	a0,s1,a2
 2fc:	00000097          	auipc	ra,0x0
 300:	000080e7          	jalr	ra # 2fc <.L278+0xa>

00000304 <.LVL477>:
 304:	fe0552e3          	bgez	a0,2e8 <.L279>
 308:	407c                	lw	a5,68(s0)
 30a:	4581                	li	a1,0
 30c:	5b88                	lw	a0,48(a5)
 30e:	00000097          	auipc	ra,0x0
 312:	000080e7          	jalr	ra # 30e <.LVL477+0xa>

00000316 <.LVL478>:
 316:	04442a03          	lw	s4,68(s0)
 31a:	85a6                	mv	a1,s1
 31c:	040a2503          	lw	a0,64(s4)
 320:	00000097          	auipc	ra,0x0
 324:	000080e7          	jalr	ra # 320 <.LVL478+0xa>

00000328 <.LVL479>:
 328:	02aa2823          	sw	a0,48(s4)
 32c:	407c                	lw	a5,68(s0)
 32e:	5b8c                	lw	a1,48(a5)
 330:	ce0586e3          	beqz	a1,1c <.L342>
 334:	43a8                	lw	a0,64(a5)
 336:	00000097          	auipc	ra,0x0
 33a:	000080e7          	jalr	ra # 336 <.LVL479+0xe>

0000033e <.LVL480>:
 33e:	e511                	bnez	a0,34a <.L280>
 340:	00000537          	lui	a0,0x0
 344:	00050513          	mv	a0,a0
 348:	bb69                	j	e2 <.L345>

0000034a <.L280>:
 34a:	407c                	lw	a5,68(s0)
 34c:	43fc                	lw	a5,68(a5)
 34e:	0786                	slli	a5,a5,0x1
 350:	bf35                	j	28c <.L341>

00000352 <.L282>:
 352:	00000097          	auipc	ra,0x0
 356:	000080e7          	jalr	ra # 352 <.L282>

0000035a <.LVL482>:
 35a:	407c                	lw	a5,68(s0)
 35c:	0607a023          	sw	zero,96(a5)

00000360 <.L283>:
 360:	407c                	lw	a5,68(s0)
 362:	5388                	lw	a0,32(a5)
 364:	ca050de3          	beqz	a0,1e <.L255>
 368:	584c                	lw	a1,52(s0)
 36a:	00000097          	auipc	ra,0x0
 36e:	000080e7          	jalr	ra # 36a <.L283+0xa>

00000372 <.LVL484>:
 372:	ca0516e3          	bnez	a0,1e <.L255>
 376:	407c                	lw	a5,68(s0)
 378:	47b8                	lw	a4,72(a5)
 37a:	eb51                	bnez	a4,40e <.L289>

0000037c <.L291>:
 37c:	407c                	lw	a5,68(s0)
 37e:	43a8                	lw	a0,64(a5)
 380:	e14d                	bnez	a0,422 <.L290>
 382:	6941                	lui	s2,0x10
 384:	197d                	addi	s2,s2,-1
 386:	b961                	j	1e <.L255>

00000388 <.L281>:
 388:	cd95                	beqz	a1,3c4 <.L284>
 38a:	0014c983          	lbu	s3,1(s1)
 38e:	852e                	mv	a0,a1
 390:	19fd                	addi	s3,s3,-1
 392:	00000097          	auipc	ra,0x0
 396:	000080e7          	jalr	ra # 392 <.L281+0xa>

0000039a <.LVL486>:
 39a:	00a98963          	beq	s3,a0,3ac <.L285>

0000039e <.L286>:
 39e:	407c                	lw	a5,68(s0)
 3a0:	00000537          	lui	a0,0x0
 3a4:	00050513          	mv	a0,a0
 3a8:	53ac                	lw	a1,96(a5)
 3aa:	b701                	j	2aa <.L343>

000003ac <.L285>:
 3ac:	407c                	lw	a5,68(s0)
 3ae:	0014c603          	lbu	a2,1(s1)
 3b2:	00348593          	addi	a1,s1,3
 3b6:	53a8                	lw	a0,96(a5)
 3b8:	167d                	addi	a2,a2,-1
 3ba:	00000097          	auipc	ra,0x0
 3be:	000080e7          	jalr	ra # 3ba <.L285+0xe>

000003c2 <.LVL487>:
 3c2:	fd71                	bnez	a0,39e <.L286>

000003c4 <.L284>:
 3c4:	407c                	lw	a5,68(s0)
 3c6:	53a8                	lw	a0,96(a5)
 3c8:	00000097          	auipc	ra,0x0
 3cc:	000080e7          	jalr	ra # 3c8 <.L284+0x4>

000003d0 <.LVL488>:
 3d0:	0014c503          	lbu	a0,1(s1)
 3d4:	04442983          	lw	s3,68(s0)
 3d8:	00000097          	auipc	ra,0x0
 3dc:	000080e7          	jalr	ra # 3d8 <.LVL488+0x8>

000003e0 <.LVL489>:
 3e0:	06a9a023          	sw	a0,96(s3)
 3e4:	407c                	lw	a5,68(s0)
 3e6:	53a8                	lw	a0,96(a5)
 3e8:	c2050ae3          	beqz	a0,1c <.L342>
 3ec:	0014c603          	lbu	a2,1(s1)
 3f0:	00348593          	addi	a1,s1,3
 3f4:	167d                	addi	a2,a2,-1
 3f6:	00000097          	auipc	ra,0x0
 3fa:	000080e7          	jalr	ra # 3f6 <.LVL489+0x16>

000003fe <.LVL490>:
 3fe:	407c                	lw	a5,68(s0)
 400:	0014c703          	lbu	a4,1(s1)
 404:	53bc                	lw	a5,96(a5)
 406:	97ba                	add	a5,a5,a4
 408:	fe078fa3          	sb	zero,-1(a5)

0000040c <.LBE272>:
 40c:	bf91                	j	360 <.L283>

0000040e <.L289>:
 40e:	53c8                	lw	a0,36(a5)
 410:	c00507e3          	beqz	a0,1e <.L255>
 414:	57cc                	lw	a1,44(a5)
 416:	00000097          	auipc	ra,0x0
 41a:	000080e7          	jalr	ra # 416 <.L289+0x8>

0000041e <.LVL493>:
 41e:	dd39                	beqz	a0,37c <.L291>
 420:	befd                	j	1e <.L255>

00000422 <.L290>:
 422:	578c                	lw	a1,40(a5)
 424:	be058de3          	beqz	a1,1e <.L255>
 428:	5b90                	lw	a2,48(a5)
 42a:	00000097          	auipc	ra,0x0
 42e:	000080e7          	jalr	ra # 42a <.L290+0x8>

00000432 <.LVL494>:
 432:	00153913          	seqz	s2,a0
 436:	41200933          	neg	s2,s2
 43a:	0942                	slli	s2,s2,0x10
 43c:	01095913          	srli	s2,s2,0x10
 440:	bef9                	j	1e <.L255>

Disassembly of section .text.sae_write_confirm:

00000000 <sae_write_confirm>:
   0:	417c                	lw	a5,68(a0)
   2:	c7dd                	beqz	a5,b0 <.L351>
   4:	7179                	addi	sp,sp,-48
   6:	d226                	sw	s1,36(sp)
   8:	84ae                	mv	s1,a1
   a:	d422                	sw	s0,40(sp)
   c:	4581                	li	a1,0

0000000e <.LVL496>:
   e:	842a                	mv	s0,a0
  10:	8526                	mv	a0,s1

00000012 <.LVL497>:
  12:	d606                	sw	ra,44(sp)
  14:	d04a                	sw	s2,32(sp)
  16:	ce4e                	sw	s3,28(sp)
  18:	00000097          	auipc	ra,0x0
  1c:	000080e7          	jalr	ra # 18 <.LVL497+0x6>

00000020 <.LVL498>:
  20:	00245903          	lhu	s2,2(s0)
  24:	89aa                	mv	s3,a0

00000026 <.LBB277>:
  26:	4589                	li	a1,2
  28:	8526                	mv	a0,s1

0000002a <.LVL500>:
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LVL500>

00000032 <.LBB279>:
  32:	00895793          	srli	a5,s2,0x8
  36:	00f500a3          	sb	a5,1(a0) # 1 <sae_write_confirm+0x1>
  3a:	01250023          	sb	s2,0(a0)

0000003e <.LBE277>:
  3e:	00245783          	lhu	a5,2(s0)
  42:	6741                	lui	a4,0x10
  44:	177d                	addi	a4,a4,-1
  46:	00e78563          	beq	a5,a4,50 <.L348>
  4a:	0785                	addi	a5,a5,1
  4c:	00f41123          	sh	a5,2(s0)

00000050 <.L348>:
  50:	407c                	lw	a5,68(s0)
  52:	43b8                	lw	a4,64(a5)
  54:	eb09                	bnez	a4,66 <.L349>

00000056 <.L350>:
  56:	4501                	li	a0,0

00000058 <.L346>:
  58:	50b2                	lw	ra,44(sp)
  5a:	5422                	lw	s0,40(sp)

0000005c <.LVL503>:
  5c:	5492                	lw	s1,36(sp)

0000005e <.LVL504>:
  5e:	5902                	lw	s2,32(sp)
  60:	49f2                	lw	s3,28(sp)

00000062 <.LVL505>:
  62:	6145                	addi	sp,sp,48
  64:	8082                	ret

00000066 <.L349>:
  66:	5390                	lw	a2,32(a5)
  68:	5794                	lw	a3,40(a5)
  6a:	5858                	lw	a4,52(s0)
  6c:	5b9c                	lw	a5,48(a5)
  6e:	02000593          	li	a1,32
  72:	8526                	mv	a0,s1
  74:	c632                	sw	a2,12(sp)
  76:	c436                	sw	a3,8(sp)
  78:	c23a                	sw	a4,4(sp)
  7a:	c03e                	sw	a5,0(sp)
  7c:	00000097          	auipc	ra,0x0
  80:	000080e7          	jalr	ra # 7c <.L349+0x16>

00000084 <.LVL507>:
  84:	4782                	lw	a5,0(sp)
  86:	4712                	lw	a4,4(sp)
  88:	46a2                	lw	a3,8(sp)
  8a:	4632                	lw	a2,12(sp)
  8c:	882a                	mv	a6,a0
  8e:	85ce                	mv	a1,s3
  90:	8522                	mv	a0,s0
  92:	00000097          	auipc	ra,0x0
  96:	000080e7          	jalr	ra # 92 <.LVL507+0xe>

0000009a <.LVL508>:
  9a:	dd55                	beqz	a0,56 <.L350>
  9c:	00000537          	lui	a0,0x0
  a0:	00050513          	mv	a0,a0
  a4:	00000097          	auipc	ra,0x0
  a8:	000080e7          	jalr	ra # a4 <.LVL508+0xa>

000000ac <.LVL509>:
  ac:	557d                	li	a0,-1
  ae:	b76d                	j	58 <.L346>

000000b0 <.L351>:
  b0:	557d                	li	a0,-1

000000b2 <.LVL511>:
  b2:	8082                	ret

Disassembly of section .text.sae_check_confirm:

00000000 <sae_check_confirm>:
   0:	7179                	addi	sp,sp,-48
   2:	d606                	sw	ra,44(sp)
   4:	d422                	sw	s0,40(sp)
   6:	02100713          	li	a4,33
   a:	00c76f63          	bltu	a4,a2,28 <.L360>
   e:	00000537          	lui	a0,0x0

00000012 <.LVL513>:
  12:	00050513          	mv	a0,a0

00000016 <.L375>:
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.L375>

0000001e <.LVL515>:
  1e:	557d                	li	a0,-1

00000020 <.L359>:
  20:	50b2                	lw	ra,44(sp)
  22:	5422                	lw	s0,40(sp)
  24:	6145                	addi	sp,sp,48
  26:	8082                	ret

00000028 <.L360>:
  28:	4174                	lw	a3,68(a0)
  2a:	e691                	bnez	a3,36 <.L362>
  2c:	00000537          	lui	a0,0x0

00000030 <.LVL517>:
  30:	00050513          	mv	a0,a0
  34:	b7cd                	j	16 <.L375>

00000036 <.L362>:
  36:	42bc                	lw	a5,64(a3)
  38:	842e                	mv	s0,a1
  3a:	5950                	lw	a2,52(a0)

0000003c <.LVL519>:
  3c:	5298                	lw	a4,32(a3)
  3e:	880a                	mv	a6,sp
  40:	cf89                	beqz	a5,5a <.L363>

00000042 <.LVL520>:
  42:	569c                	lw	a5,40(a3)
  44:	5a94                	lw	a3,48(a3)
  46:	00000097          	auipc	ra,0x0
  4a:	000080e7          	jalr	ra # 46 <.LVL520+0x4>

0000004e <.LVL521>:
  4e:	c115                	beqz	a0,72 <.L364>
  50:	00000537          	lui	a0,0x0
  54:	00050513          	mv	a0,a0
  58:	bf7d                	j	16 <.L375>

0000005a <.L363>:
  5a:	52dc                	lw	a5,36(a3)
  5c:	56d4                	lw	a3,44(a3)
  5e:	00000097          	auipc	ra,0x0
  62:	000080e7          	jalr	ra # 5e <.L363+0x4>

00000066 <.LVL523>:
  66:	c511                	beqz	a0,72 <.L364>
  68:	00000537          	lui	a0,0x0
  6c:	00050513          	mv	a0,a0
  70:	b75d                	j	16 <.L375>

00000072 <.L364>:
  72:	02000613          	li	a2,32
  76:	00240593          	addi	a1,s0,2
  7a:	850a                	mv	a0,sp
  7c:	00000097          	auipc	ra,0x0
  80:	000080e7          	jalr	ra # 7c <.L364+0xa>

00000084 <.LVL524>:
  84:	dd51                	beqz	a0,20 <.L359>
  86:	00000537          	lui	a0,0x0
  8a:	00050513          	mv	a0,a0
  8e:	b761                	j	16 <.L375>

Disassembly of section .text.sae_state_txt:

00000000 <sae_state_txt>:
   0:	478d                	li	a5,3
   2:	00a7eb63          	bltu	a5,a0,18 <.L378>
   6:	00251793          	slli	a5,a0,0x2
   a:	00000537          	lui	a0,0x0

0000000e <.LVL526>:
   e:	00050513          	mv	a0,a0
  12:	953e                	add	a0,a0,a5
  14:	4108                	lw	a0,0(a0)
  16:	8082                	ret

00000018 <.L378>:
  18:	00000537          	lui	a0,0x0

0000001c <.LVL528>:
  1c:	00050513          	mv	a0,a0
  20:	8082                	ret
