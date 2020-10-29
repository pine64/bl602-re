
lld.o:     file format elf32-littleriscv


Disassembly of section .text.lld_init:

00000000 <lld_init>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	ce06                	sw	ra,28(sp)
   6:	cc22                	sw	s0,24(sp)
   8:	84aa                	mv	s1,a0
   a:	e911                	bnez	a0,1e <.L2>
   c:	000005b7          	lui	a1,0x0
  10:	00058593          	mv	a1,a1
  14:	4509                	li	a0,2

00000016 <.LVL1>:
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.LVL1>

0000001e <.L2>:
  1e:	280007b7          	lui	a5,0x28000
  22:	4398                	lw	a4,0(a5)

00000024 <.LBB640>:
  24:	fc0106b7          	lui	a3,0xfc010
  28:	16fd                	addi	a3,a3,-1

0000002a <.LBB644>:
  2a:	f0f77713          	andi	a4,a4,-241
  2e:	0e076713          	ori	a4,a4,224
  32:	c398                	sw	a4,0(a5)

00000034 <.LBB645>:
  34:	0f07a703          	lw	a4,240(a5) # 280000f0 <.LASF681+0x27ffc5f5>

00000038 <.LBE645>:
  38:	00000437          	lui	s0,0x0
  3c:	00000537          	lui	a0,0x0

00000040 <.LBB648>:
  40:	e0077713          	andi	a4,a4,-512
  44:	0d276713          	ori	a4,a4,210
  48:	0ee7a823          	sw	a4,240(a5)

0000004c <.LBB649>:
  4c:	0f07a703          	lw	a4,240(a5)

00000050 <.LBE649>:
  50:	00040593          	mv	a1,s0
  54:	00050513          	mv	a0,a0

00000058 <.LBB650>:
  58:	8f75                	and	a4,a4,a3
  5a:	01b806b7          	lui	a3,0x1b80
  5e:	8f55                	or	a4,a4,a3
  60:	0ee7a823          	sw	a4,240(a5)

00000064 <.LBB651>:
  64:	6741                	lui	a4,0x10
  66:	33a70713          	addi	a4,a4,826 # 1033a <.LASF681+0xc83f>
  6a:	c7d8                	sw	a4,12(a5)

0000006c <.LBB653>:
  6c:	4398                	lw	a4,0(a5)
  6e:	ffe006b7          	lui	a3,0xffe00
  72:	16fd                	addi	a3,a3,-1
  74:	8f75                	and	a4,a4,a3
  76:	c398                	sw	a4,0(a5)

00000078 <.LBB655>:
  78:	4398                	lw	a4,0(a5)
  7a:	fff006b7          	lui	a3,0xfff00
  7e:	16fd                	addi	a3,a3,-1
  80:	8f75                	and	a4,a4,a3
  82:	c398                	sw	a4,0(a5)

00000084 <.LBE655>:
  84:	00000097          	auipc	ra,0x0
  88:	000080e7          	jalr	ra # 84 <.LBE655>

0000008c <.LVL9>:
  8c:	24051863          	bnez	a0,2dc <.L3>
  90:	000007b7          	lui	a5,0x0
  94:	0007a783          	lw	a5,0(a5) # 0 <lld_init>
  98:	4619                	li	a2,6
  9a:	00040593          	mv	a1,s0

0000009e <.L8>:
  9e:	0028                	addi	a0,sp,8
  a0:	9782                	jalr	a5

000000a2 <.LVL10>:
  a2:	00000537          	lui	a0,0x0
  a6:	4581                	li	a1,0
  a8:	0b350513          	addi	a0,a0,179 # b3 <.LVL10+0x11>
  ac:	00000097          	auipc	ra,0x0
  b0:	000080e7          	jalr	ra # ac <.LVL10+0xa>

000000b4 <.LBB657>:
  b4:	00b14783          	lbu	a5,11(sp)
  b8:	00a14703          	lbu	a4,10(sp)

000000bc <.LBB669>:
  bc:	00814683          	lbu	a3,8(sp)

000000c0 <.LBB670>:
  c0:	07a2                	slli	a5,a5,0x8

000000c2 <.LBE670>:
  c2:	8fd9                	or	a5,a5,a4

000000c4 <.LBB671>:
  c4:	00914703          	lbu	a4,9(sp)

000000c8 <.LBE671>:
  c8:	07c2                	slli	a5,a5,0x10

000000ca <.LBB674>:
  ca:	75f1                	lui	a1,0xffffc

000000cc <.LBB672>:
  cc:	0722                	slli	a4,a4,0x8

000000ce <.LBE672>:
  ce:	8f55                	or	a4,a4,a3
  d0:	8fd9                	or	a5,a5,a4

000000d2 <.LBB679>:
  d2:	28000737          	lui	a4,0x28000
  d6:	d35c                	sw	a5,36(a4)

000000d8 <.LBB681>:
  d8:	00d14783          	lbu	a5,13(sp)
  dc:	00c14683          	lbu	a3,12(sp)

000000e0 <.LBB684>:
  e0:	ed658593          	addi	a1,a1,-298 # ffffbed6 <.LASF681+0xffff83db>

000000e4 <.LBB685>:
  e4:	07a2                	slli	a5,a5,0x8

000000e6 <.LBE685>:
  e6:	8fd5                	or	a5,a5,a3

000000e8 <.LBB686>:
  e8:	d71c                	sw	a5,40(a4)

000000ea <.LBB688>:
  ea:	431c                	lw	a5,0(a4)

000000ec <.LBB691>:
  ec:	7665                	lui	a2,0xffff9
  ee:	e8960613          	addi	a2,a2,-375 # ffff8e89 <.LASF681+0xffff538e>

000000f2 <.LBB695>:
  f2:	2007e793          	ori	a5,a5,512
  f6:	c31c                	sw	a5,0(a4)

000000f8 <.LBB696>:
  f8:	479d                	li	a5,7
  fa:	08f72823          	sw	a5,144(a4) # 28000090 <.LASF681+0x27ffc595>

000000fe <.LBB698>:
  fe:	1fe00793          	li	a5,510
 102:	0af72823          	sw	a5,176(a4)

00000106 <.LBB700>:
 106:	21600793          	li	a5,534
 10a:	0af72a23          	sw	a5,180(a4)

0000010e <.LBB702>:
 10e:	40400793          	li	a5,1028
 112:	0af72c23          	sw	a5,184(a4)

00000116 <.LBB704>:
 116:	22e00793          	li	a5,558
 11a:	12f72023          	sw	a5,288(a4)

0000011e <.LBB706>:
 11e:	478d                	li	a5,3
 120:	12f72223          	sw	a5,292(a4)

00000124 <.LBB708>:
 124:	280087b7          	lui	a5,0x28008
 128:	14b79623          	sh	a1,332(a5) # 2800814c <.LASF681+0x28004651>

0000012c <.LBB709>:
 12c:	6695                	lui	a3,0x5

0000012e <.LBB713>:
 12e:	14c79723          	sh	a2,334(a5)

00000132 <.LBB714>:
 132:	55568693          	addi	a3,a3,1365 # 5555 <.LASF681+0x1a5a>
 136:	14d79823          	sh	a3,336(a5)

0000013a <.LBB715>:
 13a:	05500513          	li	a0,85
 13e:	14a79923          	sh	a0,338(a5)

00000142 <.LBB717>:
 142:	16079123          	sh	zero,354(a5)

00000146 <.LBB719>:
 146:	16079223          	sh	zero,356(a5)

0000014a <.LBB721>:
 14a:	16079323          	sh	zero,358(a5)

0000014e <.LBB723>:
 14e:	1ab79423          	sh	a1,424(a5)

00000152 <.LBB725>:
 152:	1ac79523          	sh	a2,426(a5)

00000156 <.LBB727>:
 156:	1ad79623          	sh	a3,428(a5)

0000015a <.LBB729>:
 15a:	1aa79723          	sh	a0,430(a5)

0000015e <.LBB731>:
 15e:	1a079f23          	sh	zero,446(a5)

00000162 <.LBB733>:
 162:	1c079023          	sh	zero,448(a5)

00000166 <.LBB735>:
 166:	1c079123          	sh	zero,450(a5)

0000016a <.LBB737>:
 16a:	16079423          	sh	zero,360(a5)

0000016e <.LBB739>:
 16e:	16079523          	sh	zero,362(a5)

00000172 <.LBB741>:
 172:	1c079223          	sh	zero,452(a5)

00000176 <.LBB743>:
 176:	3ce00693          	li	a3,974

0000017a <.LBB750>:
 17a:	1c079323          	sh	zero,454(a5)

0000017e <.LBB751>:
 17e:	00000637          	lui	a2,0x0

00000182 <.LBB752>:
 182:	d754                	sw	a3,44(a4)

00000184 <.LBE752>:
 184:	00060613          	mv	a2,a2
 188:	02c64703          	lbu	a4,44(a2) # 2c <.LBB644+0x2>

0000018c <.LBB753>:
 18c:	6589                	lui	a1,0x2

0000018e <.LBE756>:
 18e:	28008437          	lui	s0,0x28008

00000192 <.LBB759>:
 192:	14e79c23          	sh	a4,344(a5)

00000196 <.LBB760>:
 196:	14a7d683          	lhu	a3,330(a5)
 19a:	6705                	lui	a4,0x1
 19c:	177d                	addi	a4,a4,-1
 19e:	8ef9                	and	a3,a3,a4
 1a0:	8ecd                	or	a3,a3,a1
 1a2:	14d79523          	sh	a3,330(a5)

000001a6 <.LBB761>:
 1a6:	19e7d683          	lhu	a3,414(a5)
 1aa:	06c2                	slli	a3,a3,0x10
 1ac:	82c1                	srli	a3,a3,0x10
 1ae:	f7f6f693          	andi	a3,a3,-129
 1b2:	06c2                	slli	a3,a3,0x10
 1b4:	82c1                	srli	a3,a3,0x10
 1b6:	18d79f23          	sh	a3,414(a5)

000001ba <.LBB763>:
 1ba:	14079a23          	sh	zero,340(a5)

000001be <.LBE763>:
 1be:	02c64683          	lbu	a3,44(a2)

000001c2 <.LBB765>:
 1c2:	1ad79a23          	sh	a3,436(a5)

000001c6 <.LBB767>:
 1c6:	1a67d683          	lhu	a3,422(a5)
 1ca:	8f75                	and	a4,a4,a3
 1cc:	8f4d                	or	a4,a4,a1
 1ce:	1ae79323          	sh	a4,422(a5)

000001d2 <.LBB769>:
 1d2:	1fa7d703          	lhu	a4,506(a5)
 1d6:	0742                	slli	a4,a4,0x10
 1d8:	8341                	srli	a4,a4,0x10
 1da:	f7f77713          	andi	a4,a4,-129
 1de:	0742                	slli	a4,a4,0x10
 1e0:	8341                	srli	a4,a4,0x10
 1e2:	1ee79d23          	sh	a4,506(a5)

000001e6 <.LBB771>:
 1e6:	1a079823          	sh	zero,432(a5)

000001ea <.LBB773>:
 1ea:	18079a23          	sh	zero,404(a5)

000001ee <.LBB775>:
 1ee:	18079b23          	sh	zero,406(a5)

000001f2 <.LBB777>:
 1f2:	18079c23          	sh	zero,408(a5)

000001f6 <.LBB779>:
 1f6:	18079d23          	sh	zero,410(a5)

000001fa <.LBB781>:
 1fa:	18079e23          	sh	zero,412(a5)

000001fe <.LBB783>:
 1fe:	1e079823          	sh	zero,496(a5)

00000202 <.LBB785>:
 202:	1e079923          	sh	zero,498(a5)

00000206 <.LBB787>:
 206:	1e079a23          	sh	zero,500(a5)

0000020a <.LBB789>:
 20a:	1e079b23          	sh	zero,502(a5)

0000020e <.LBB791>:
 20e:	1e079c23          	sh	zero,504(a5)

00000212 <.LBE791>:
 212:	04078713          	addi	a4,a5,64

00000216 <.L5>:
 216:	00079023          	sh	zero,0(a5)

0000021a <.LBB795>:
 21a:	00079123          	sh	zero,2(a5)

0000021e <.LVL64>:
 21e:	0791                	addi	a5,a5,4

00000220 <.LBE795>:
 220:	fee79be3          	bne	a5,a4,216 <.L5>
 224:	8526                	mv	a0,s1
 226:	00000097          	auipc	ra,0x0
 22a:	000080e7          	jalr	ra # 226 <.LBE795+0x6>

0000022e <.LVL65>:
 22e:	00000097          	auipc	ra,0x0
 232:	000080e7          	jalr	ra # 22e <.LVL65>

00000236 <.LBB797>:
 236:	14645783          	lhu	a5,326(s0) # 28008146 <.LASF681+0x2800464b>

0000023a <.LBE797>:
 23a:	4505                	li	a0,1

0000023c <.LBB800>:
 23c:	07c2                	slli	a5,a5,0x10
 23e:	83c1                	srli	a5,a5,0x10
 240:	eff7f793          	andi	a5,a5,-257
 244:	07c2                	slli	a5,a5,0x10
 246:	83c1                	srli	a5,a5,0x10
 248:	14f41323          	sh	a5,326(s0)

0000024c <.LBB801>:
 24c:	14645783          	lhu	a5,326(s0)
 250:	07c2                	slli	a5,a5,0x10
 252:	83c1                	srli	a5,a5,0x10
 254:	bff7f793          	andi	a5,a5,-1025
 258:	07c2                	slli	a5,a5,0x10
 25a:	83c1                	srli	a5,a5,0x10
 25c:	14f41323          	sh	a5,326(s0)

00000260 <.LBB803>:
 260:	14645783          	lhu	a5,326(s0)
 264:	07c2                	slli	a5,a5,0x10
 266:	83c1                	srli	a5,a5,0x10
 268:	dff7f793          	andi	a5,a5,-513
 26c:	07c2                	slli	a5,a5,0x10
 26e:	83c1                	srli	a5,a5,0x10
 270:	14f41323          	sh	a5,326(s0)

00000274 <.LBB805>:
 274:	1a245783          	lhu	a5,418(s0)
 278:	07c2                	slli	a5,a5,0x10
 27a:	83c1                	srli	a5,a5,0x10
 27c:	eff7f793          	andi	a5,a5,-257
 280:	07c2                	slli	a5,a5,0x10
 282:	83c1                	srli	a5,a5,0x10
 284:	1af41123          	sh	a5,418(s0)

00000288 <.LBB807>:
 288:	1a245783          	lhu	a5,418(s0)
 28c:	07c2                	slli	a5,a5,0x10
 28e:	83c1                	srli	a5,a5,0x10
 290:	bff7f793          	andi	a5,a5,-1025
 294:	07c2                	slli	a5,a5,0x10
 296:	83c1                	srli	a5,a5,0x10
 298:	1af41123          	sh	a5,418(s0)

0000029c <.LBB809>:
 29c:	1a245783          	lhu	a5,418(s0)
 2a0:	07c2                	slli	a5,a5,0x10
 2a2:	83c1                	srli	a5,a5,0x10
 2a4:	dff7f793          	andi	a5,a5,-513
 2a8:	07c2                	slli	a5,a5,0x10
 2aa:	83c1                	srli	a5,a5,0x10
 2ac:	1af41123          	sh	a5,418(s0)

000002b0 <.LBE809>:
 2b0:	00000097          	auipc	ra,0x0
 2b4:	000080e7          	jalr	ra # 2b0 <.LBE809>

000002b8 <.LBB811>:
 2b8:	280007b7          	lui	a5,0x28000
 2bc:	0e07a703          	lw	a4,224(a5) # 280000e0 <.LASF681+0x27ffc5e5>
 2c0:	76fd                	lui	a3,0xfffff
 2c2:	16fd                	addi	a3,a3,-1
 2c4:	8f75                	and	a4,a4,a3
 2c6:	0ee7a023          	sw	a4,224(a5)

000002ca <.LBB813>:
 2ca:	4398                	lw	a4,0(a5)
 2cc:	10076713          	ori	a4,a4,256
 2d0:	c398                	sw	a4,0(a5)

000002d2 <.LBE813>:
 2d2:	40f2                	lw	ra,28(sp)
 2d4:	4462                	lw	s0,24(sp)
 2d6:	44d2                	lw	s1,20(sp)
 2d8:	6105                	addi	sp,sp,32
 2da:	8082                	ret

000002dc <.L3>:
 2dc:	000007b7          	lui	a5,0x0
 2e0:	0007a783          	lw	a5,0(a5) # 0 <lld_init>
 2e4:	4619                	li	a2,6
 2e6:	459d                	li	a1,7
 2e8:	bb5d                	j	9e <.L8>

Disassembly of section .text.lld_core_reset:

00000000 <lld_core_reset>:
   0:	1141                	addi	sp,sp,-16
   2:	c606                	sw	ra,12(sp)

00000004 <.LBB819>:
   4:	280007b7          	lui	a5,0x28000
   8:	4398                	lw	a4,0(a5)

0000000a <.LBB820>:
   a:	800006b7          	lui	a3,0x80000

0000000e <.LBB823>:
   e:	eff77713          	andi	a4,a4,-257
  12:	c398                	sw	a4,0(a5)

00000014 <.LBB824>:
  14:	4398                	lw	a4,0(a5)
  16:	8f55                	or	a4,a4,a3
  18:	c398                	sw	a4,0(a5)

0000001a <.LBB825>:
  1a:	28000737          	lui	a4,0x28000

0000001e <.L10>:
  1e:	431c                	lw	a5,0(a4)

00000020 <.LBE828>:
  20:	fe07cfe3          	bltz	a5,1e <.L10>

00000024 <.LBB829>:
  24:	431c                	lw	a5,0(a4)
  26:	c00006b7          	lui	a3,0xc0000
  2a:	16fd                	addi	a3,a3,-1
  2c:	8ff5                	and	a5,a5,a3
  2e:	400006b7          	lui	a3,0x40000
  32:	8fd5                	or	a5,a5,a3
  34:	c31c                	sw	a5,0(a4)

00000036 <.LBB831>:
  36:	28000737          	lui	a4,0x28000

0000003a <.L11>:
  3a:	431c                	lw	a5,0(a4)

0000003c <.LBE834>:
  3c:	00179693          	slli	a3,a5,0x1
  40:	fe06cde3          	bltz	a3,3a <.L11>
  44:	28008737          	lui	a4,0x28008
  48:	280087b7          	lui	a5,0x28008
  4c:	04070693          	addi	a3,a4,64 # 28008040 <.LASF681+0x28004545>

00000050 <.L12>:
  50:	00071023          	sh	zero,0(a4)

00000054 <.LBB837>:
  54:	00071123          	sh	zero,2(a4)

00000058 <.LVL83>:
  58:	0711                	addi	a4,a4,4

0000005a <.LBE837>:
  5a:	fed71be3          	bne	a4,a3,50 <.L12>

0000005e <.LBB839>:
  5e:	1467d703          	lhu	a4,326(a5) # 28008146 <.LASF681+0x2800464b>

00000062 <.LBE839>:
  62:	4505                	li	a0,1

00000064 <.LBB842>:
  64:	0742                	slli	a4,a4,0x10
  66:	8341                	srli	a4,a4,0x10
  68:	eff77713          	andi	a4,a4,-257
  6c:	0742                	slli	a4,a4,0x10
  6e:	8341                	srli	a4,a4,0x10
  70:	14e79323          	sh	a4,326(a5)

00000074 <.LBB843>:
  74:	1467d703          	lhu	a4,326(a5)
  78:	0742                	slli	a4,a4,0x10
  7a:	8341                	srli	a4,a4,0x10
  7c:	bff77713          	andi	a4,a4,-1025
  80:	0742                	slli	a4,a4,0x10
  82:	8341                	srli	a4,a4,0x10
  84:	14e79323          	sh	a4,326(a5)

00000088 <.LBB845>:
  88:	1467d703          	lhu	a4,326(a5)
  8c:	0742                	slli	a4,a4,0x10
  8e:	8341                	srli	a4,a4,0x10
  90:	dff77713          	andi	a4,a4,-513
  94:	0742                	slli	a4,a4,0x10
  96:	8341                	srli	a4,a4,0x10
  98:	14e79323          	sh	a4,326(a5)

0000009c <.LBB847>:
  9c:	1a27d703          	lhu	a4,418(a5)
  a0:	0742                	slli	a4,a4,0x10
  a2:	8341                	srli	a4,a4,0x10
  a4:	eff77713          	andi	a4,a4,-257
  a8:	0742                	slli	a4,a4,0x10
  aa:	8341                	srli	a4,a4,0x10
  ac:	1ae79123          	sh	a4,418(a5)

000000b0 <.LBB849>:
  b0:	1a27d703          	lhu	a4,418(a5)
  b4:	0742                	slli	a4,a4,0x10
  b6:	8341                	srli	a4,a4,0x10
  b8:	bff77713          	andi	a4,a4,-1025
  bc:	0742                	slli	a4,a4,0x10
  be:	8341                	srli	a4,a4,0x10
  c0:	1ae79123          	sh	a4,418(a5)

000000c4 <.LBB851>:
  c4:	1a27d703          	lhu	a4,418(a5)
  c8:	0742                	slli	a4,a4,0x10
  ca:	8341                	srli	a4,a4,0x10
  cc:	dff77713          	andi	a4,a4,-513
  d0:	0742                	slli	a4,a4,0x10
  d2:	8341                	srli	a4,a4,0x10
  d4:	1ae79123          	sh	a4,418(a5)

000000d8 <.LBE851>:
  d8:	00000097          	auipc	ra,0x0
  dc:	000080e7          	jalr	ra # d8 <.LBE851>

000000e0 <.LBB853>:
  e0:	280007b7          	lui	a5,0x28000
  e4:	0007a623          	sw	zero,12(a5) # 2800000c <.LASF681+0x27ffc511>

000000e8 <.LBB855>:
  e8:	577d                	li	a4,-1
  ea:	cf98                	sw	a4,24(a5)

000000ec <.LBE855>:
  ec:	40b2                	lw	ra,12(sp)
  ee:	0141                	addi	sp,sp,16
  f0:	8082                	ret

Disassembly of section .text.lld_adv_start:

00000000 <lld_adv_start>:
   0:	7179                	addi	sp,sp,-48
   2:	d04a                	sw	s2,32(sp)
   4:	ce4e                	sw	s3,28(sp)
   6:	cc52                	sw	s4,24(sp)
   8:	c85a                	sw	s6,16(sp)
   a:	d606                	sw	ra,44(sp)
   c:	d422                	sw	s0,40(sp)
   e:	d226                	sw	s1,36(sp)
  10:	ca56                	sw	s5,20(sp)
  12:	c65e                	sw	s7,12(sp)
  14:	01c54703          	lbu	a4,28(a0)
  18:	4785                	li	a5,1
  1a:	892a                	mv	s2,a0
  1c:	8b2e                	mv	s6,a1
  1e:	89b2                	mv	s3,a2
  20:	8a36                	mv	s4,a3
  22:	1af71363          	bne	a4,a5,1c8 <.L22>
  26:	02154683          	lbu	a3,33(a0)

0000002a <.LVL95>:
  2a:	5dc00b93          	li	s7,1500
  2e:	ea81                	bnez	a3,3e <.L18>
  30:	6785                	lui	a5,0x1
  32:	80078793          	addi	a5,a5,-2048 # 800 <.LLST497+0x10>
  36:	00f51c23          	sh	a5,24(a0)

0000003a <.LVL96>:
  3a:	4e200b93          	li	s7,1250

0000003e <.L18>:
  3e:	01895603          	lhu	a2,24(s2)

00000042 <.LVL98>:
  42:	01695583          	lhu	a1,22(s2)

00000046 <.LVL99>:
  46:	4509                	li	a0,2

00000048 <.LVL100>:
  48:	00000097          	auipc	ra,0x0
  4c:	000080e7          	jalr	ra # 48 <.LVL100>

00000050 <.LVL101>:
  50:	84aa                	mv	s1,a0

00000052 <.LVL102>:
  52:	14050f63          	beqz	a0,1b0 <.L17>

00000056 <.LBB857>:
  56:	28008737          	lui	a4,0x28008
  5a:	14a75783          	lhu	a5,330(a4) # 2800814a <.LASF681+0x2800464f>

0000005e <.LBE858>:
  5e:	02850a93          	addi	s5,a0,40

00000062 <.LBB862>:
  62:	4585                	li	a1,1

00000064 <.LBB863>:
  64:	07c2                	slli	a5,a5,0x10
  66:	83c1                	srli	a5,a5,0x10
  68:	9b81                	andi	a5,a5,-32
  6a:	0027e793          	ori	a5,a5,2
  6e:	14f71523          	sh	a5,330(a4)

00000072 <.LBE863>:
  72:	000007b7          	lui	a5,0x0
  76:	0027c703          	lbu	a4,2(a5) # 2 <lld_adv_start+0x2>
  7a:	01c94503          	lbu	a0,28(s2)
  7e:	00175693          	srli	a3,a4,0x1
  82:	00177793          	andi	a5,a4,1
  86:	8309                	srli	a4,a4,0x2
  88:	0016f613          	andi	a2,a3,1
  8c:	8b05                	andi	a4,a4,1
  8e:	4691                	li	a3,4
  90:	00b51763          	bne	a0,a1,9e <.L20>
  94:	02194683          	lbu	a3,33(s2)
  98:	0016b693          	seqz	a3,a3
  9c:	0691                	addi	a3,a3,4

0000009e <.L20>:
  9e:	07aa                	slli	a5,a5,0xa

000000a0 <.LVL107>:
  a0:	8fd5                	or	a5,a5,a3
  a2:	00961693          	slli	a3,a2,0x9

000000a6 <.LVL108>:
  a6:	8fd5                	or	a5,a5,a3
  a8:	0722                	slli	a4,a4,0x8

000000aa <.LVL109>:
  aa:	8fd9                	or	a5,a5,a4
  ac:	673d                	lui	a4,0xf
  ae:	28008437          	lui	s0,0x28008
  b2:	8fd9                	or	a5,a5,a4
  b4:	14f41323          	sh	a5,326(s0) # 28008146 <.LASF681+0x2800464b>

000000b8 <.LBB866>:
  b8:	01b94783          	lbu	a5,27(s2)

000000bc <.LBB869>:
  bc:	01090593          	addi	a1,s2,16
  c0:	4619                	li	a2,6

000000c2 <.LBB873>:
  c2:	07a2                	slli	a5,a5,0x8
  c4:	14f41a23          	sh	a5,340(s0)

000000c8 <.LBB874>:
  c8:	19e45783          	lhu	a5,414(s0)

000000cc <.LBB877>:
  cc:	16c40513          	addi	a0,s0,364

000000d0 <.LBB878>:
  d0:	07c2                	slli	a5,a5,0x10
  d2:	83c1                	srli	a5,a5,0x10
  d4:	f7f7f793          	andi	a5,a5,-129
  d8:	07c2                	slli	a5,a5,0x10
  da:	83c1                	srli	a5,a5,0x10
  dc:	18f41f23          	sh	a5,414(s0)

000000e0 <.LBB879>:
  e0:	18041a23          	sh	zero,404(s0)

000000e4 <.LBB881>:
  e4:	18041b23          	sh	zero,406(s0)

000000e8 <.LBB883>:
  e8:	18041c23          	sh	zero,408(s0)

000000ec <.LBB885>:
  ec:	18041d23          	sh	zero,410(s0)

000000f0 <.LBB887>:
  f0:	18041e23          	sh	zero,412(s0)

000000f4 <.LBB889>:
  f4:	000007b7          	lui	a5,0x0
  f8:	0007a783          	lw	a5,0(a5) # 0 <lld_adv_start>
  fc:	9782                	jalr	a5

000000fe <.LBB890>:
  fe:	02094783          	lbu	a5,32(s2)

00000102 <.LBB893>:
 102:	6709                	lui	a4,0x2

00000104 <.LBE893>:
 104:	85da                	mv	a1,s6

00000106 <.LBB897>:
 106:	16f41923          	sh	a5,370(s0)

0000010a <.LBB898>:
 10a:	77f1                	lui	a5,0xffffc

0000010c <.LVL120>:
 10c:	02778793          	addi	a5,a5,39 # ffffc027 <.LASF681+0xffff852c>
 110:	14f41b23          	sh	a5,342(s0)

00000114 <.LBB900>:
 114:	05500793          	li	a5,85
 118:	14f41923          	sh	a5,338(s0)

0000011c <.LBB902>:
 11c:	010a1793          	slli	a5,s4,0x10

00000120 <.LBB905>:
 120:	14041d23          	sh	zero,346(s0)

00000124 <.LBE905>:
 124:	83c1                	srli	a5,a5,0x10

00000126 <.LBB906>:
 126:	14f41c23          	sh	a5,344(s0)

0000012a <.LBB908>:
 12a:	14a45783          	lhu	a5,330(s0)

0000012e <.LBE908>:
 12e:	8526                	mv	a0,s1

00000130 <.LBB909>:
 130:	07d2                	slli	a5,a5,0x14
 132:	83d1                	srli	a5,a5,0x14
 134:	8fd9                	or	a5,a5,a4
 136:	14f41523          	sh	a5,330(s0)

0000013a <.LBB910>:
 13a:	14041423          	sh	zero,328(s0)

0000013e <.LBB912>:
 13e:	16041423          	sh	zero,360(s0)

00000142 <.LBB914>:
 142:	16041523          	sh	zero,362(s0)

00000146 <.LBB916>:
 146:	47a1                	li	a5,8
 148:	16f41023          	sh	a5,352(s0)

0000014c <.LBE916>:
 14c:	01a94703          	lbu	a4,26(s2)

00000150 <.LBB918>:
 150:	280007b7          	lui	a5,0x28000
 154:	08e7a823          	sw	a4,144(a5) # 28000090 <.LASF681+0x27ffc595>

00000158 <.LBB920>:
 158:	0b77a023          	sw	s7,160(a5)

0000015c <.LBE920>:
 15c:	07448e23          	sb	s4,124(s1)
 160:	00000097          	auipc	ra,0x0
 164:	000080e7          	jalr	ra # 160 <.LBE920+0x4>

00000168 <.LVL134>:
 168:	00098863          	beqz	s3,178 <.L21>
 16c:	85ce                	mv	a1,s3
 16e:	8526                	mv	a0,s1
 170:	00000097          	auipc	ra,0x0
 174:	000080e7          	jalr	ra # 170 <.LVL134+0x8>

00000178 <.L21>:
 178:	8556                	mv	a0,s5
 17a:	00000097          	auipc	ra,0x0
 17e:	000080e7          	jalr	ra # 17a <.L21+0x2>

00000182 <.LBB922>:
 182:	30002473          	csrr	s0,mstatus

00000186 <.LBB924>:
 186:	300477f3          	csrrci	a5,mstatus,8

0000018a <.LBE924>:
 18a:	4585                	li	a1,1
 18c:	8526                	mv	a0,s1
 18e:	00000097          	auipc	ra,0x0
 192:	000080e7          	jalr	ra # 18e <.LBE924+0x4>

00000196 <.LVL139>:
 196:	449c                	lw	a5,8(s1)
 198:	6705                	lui	a4,0x1
 19a:	80070713          	addi	a4,a4,-2048 # 800 <.LLST497+0x10>
 19e:	ccbc                	sw	a5,88(s1)
 1a0:	97ba                	add	a5,a5,a4
 1a2:	0796                	slli	a5,a5,0x5
 1a4:	8395                	srli	a5,a5,0x5
 1a6:	ccfc                	sw	a5,92(s1)
 1a8:	06049023          	sh	zero,96(s1)
 1ac:	30041073          	csrw	mstatus,s0

000001b0 <.L17>:
 1b0:	50b2                	lw	ra,44(sp)
 1b2:	5422                	lw	s0,40(sp)
 1b4:	8526                	mv	a0,s1
 1b6:	5902                	lw	s2,32(sp)

000001b8 <.LVL141>:
 1b8:	5492                	lw	s1,36(sp)

000001ba <.LVL142>:
 1ba:	49f2                	lw	s3,28(sp)

000001bc <.LVL143>:
 1bc:	4a62                	lw	s4,24(sp)
 1be:	4ad2                	lw	s5,20(sp)
 1c0:	4b42                	lw	s6,16(sp)

000001c2 <.LVL144>:
 1c2:	4bb2                	lw	s7,12(sp)

000001c4 <.LVL145>:
 1c4:	6145                	addi	sp,sp,48
 1c6:	8082                	ret

000001c8 <.L22>:
 1c8:	4685                	li	a3,1

000001ca <.LVL147>:
 1ca:	5dc00b93          	li	s7,1500
 1ce:	bd85                	j	3e <.L18>

Disassembly of section .text.lld_adv_stop:

00000000 <lld_adv_stop>:
   0:	1141                	addi	sp,sp,-16
   2:	4605                	li	a2,1
   4:	4585                	li	a1,1
   6:	c422                	sw	s0,8(sp)
   8:	c606                	sw	ra,12(sp)
   a:	842a                	mv	s0,a0
   c:	00000097          	auipc	ra,0x0
  10:	000080e7          	jalr	ra # c <lld_adv_stop+0xc>

00000014 <.LVL149>:
  14:	ed11                	bnez	a0,30 <.L33>

00000016 <.LBB925>:
  16:	07e44783          	lbu	a5,126(s0)

0000001a <.LBB926>:
  1a:	28000737          	lui	a4,0x28000

0000001e <.LBE926>:
  1e:	020006b7          	lui	a3,0x2000
  22:	0107e793          	ori	a5,a5,16
  26:	06f40f23          	sb	a5,126(s0)

0000002a <.LBB929>:
  2a:	431c                	lw	a5,0(a4)

0000002c <.LBE929>:
  2c:	8fd5                	or	a5,a5,a3

0000002e <.LBB930>:
  2e:	c31c                	sw	a5,0(a4)

00000030 <.L33>:
  30:	40b2                	lw	ra,12(sp)
  32:	4422                	lw	s0,8(sp)

00000034 <.LVL153>:
  34:	0141                	addi	sp,sp,16
  36:	8082                	ret

Disassembly of section .text.lld_scan_start:

00000000 <lld_scan_start>:
   0:	7139                	addi	sp,sp,-64
   2:	da26                	sw	s1,52(sp)
   4:	d84a                	sw	s2,48(sp)
   6:	84ae                	mv	s1,a1
   8:	892a                	mv	s2,a0
   a:	4581                	li	a1,0

0000000c <.LVL155>:
   c:	450d                	li	a0,3

0000000e <.LVL156>:
   e:	dc22                	sw	s0,56(sp)
  10:	de06                	sw	ra,60(sp)
  12:	00011623          	sh	zero,12(sp)
  16:	c802                	sw	zero,16(sp)
  18:	00011a23          	sh	zero,20(sp)
  1c:	00000097          	auipc	ra,0x0
  20:	000080e7          	jalr	ra # 1c <.LVL156+0xe>

00000024 <.LVL158>:
  24:	842a                	mv	s0,a0

00000026 <.LVL159>:
  26:	14050963          	beqz	a0,178 <.L36>
  2a:	00495783          	lhu	a5,4(s2)
  2e:	006c                	addi	a1,sp,12
  30:	0828                	addi	a0,sp,24
  32:	00f11d23          	sh	a5,26(sp)
  36:	00f11c23          	sh	a5,24(sp)
  3a:	00695783          	lhu	a5,6(s2)
  3e:	02010323          	sb	zero,38(sp)
  42:	02010123          	sb	zero,34(sp)
  46:	02f11023          	sh	a5,32(sp)
  4a:	ce3e                	sw	a5,28(sp)
  4c:	1a200793          	li	a5,418
  50:	02f11723          	sh	a5,46(sp)
  54:	00ff07b7          	lui	a5,0xff0
  58:	078d                	addi	a5,a5,3
  5a:	d43e                	sw	a5,40(sp)
  5c:	00000097          	auipc	ra,0x0
  60:	000080e7          	jalr	ra # 5c <.LVL159+0x36>

00000064 <.LVL160>:
  64:	006c                	addi	a1,sp,12
  66:	0828                	addi	a0,sp,24
  68:	02011223          	sh	zero,36(sp)
  6c:	02010623          	sb	zero,44(sp)
  70:	00000097          	auipc	ra,0x0
  74:	000080e7          	jalr	ra # 70 <.LVL160+0xc>

00000078 <.LVL161>:
  78:	10051763          	bnez	a0,186 <.L38>

0000007c <.LVL162>:
  7c:	01a15783          	lhu	a5,26(sp)
  80:	4772                	lw	a4,28(sp)
  82:	006c                	addi	a1,sp,12
  84:	06f41c23          	sh	a5,120(s0)
  88:	8522                	mv	a0,s0
  8a:	00f11623          	sh	a5,12(sp)
  8e:	c83a                	sw	a4,16(sp)
  90:	00000097          	auipc	ra,0x0
  94:	000080e7          	jalr	ra # 90 <.LVL162+0x14>

00000098 <.LBB932>:
  98:	280087b7          	lui	a5,0x28008
  9c:	1a67d703          	lhu	a4,422(a5) # 280081a6 <.LASF681+0x280046ab>

000000a0 <.LBE932>:
  a0:	009035b3          	snez	a1,s1
  a4:	05a1                	addi	a1,a1,8

000000a6 <.LBB935>:
  a6:	0742                	slli	a4,a4,0x10
  a8:	8341                	srli	a4,a4,0x10
  aa:	9b01                	andi	a4,a4,-32
  ac:	00376713          	ori	a4,a4,3
  b0:	1ae79323          	sh	a4,422(a5)

000000b4 <.LBE935>:
  b4:	00000737          	lui	a4,0x0
  b8:	00374683          	lbu	a3,3(a4) # 3 <lld_scan_start+0x3>

000000bc <.LVL165>:
  bc:	0016f713          	andi	a4,a3,1

000000c0 <.LBB936>:
  c0:	00869613          	slli	a2,a3,0x8

000000c4 <.LBB940>:
  c4:	072a                	slli	a4,a4,0xa

000000c6 <.LBE940>:
  c6:	069a                	slli	a3,a3,0x6

000000c8 <.LBB941>:
  c8:	8f4d                	or	a4,a4,a1
  ca:	20067613          	andi	a2,a2,512
  ce:	1006f693          	andi	a3,a3,256
  d2:	8f51                	or	a4,a4,a2
  d4:	8f55                	or	a4,a4,a3
  d6:	76fd                	lui	a3,0xfffff
  d8:	8f55                	or	a4,a4,a3
  da:	0742                	slli	a4,a4,0x10
  dc:	8341                	srli	a4,a4,0x10
  de:	1ae79123          	sh	a4,418(a5)

000000e2 <.LBB942>:
  e2:	7771                	lui	a4,0xffffc
  e4:	02770713          	addi	a4,a4,39 # ffffc027 <.LASF681+0xffff852c>
  e8:	1ae79923          	sh	a4,434(a5)

000000ec <.LBB944>:
  ec:	05500713          	li	a4,85
  f0:	1ae79723          	sh	a4,430(a5)

000000f4 <.LBE944>:
  f4:	4742                	lw	a4,16(sp)
  f6:	c878                	sw	a4,84(s0)

000000f8 <.LBB946>:
  f8:	1c079223          	sh	zero,452(a5)

000000fc <.LBB948>:
  fc:	1c079323          	sh	zero,454(a5)

00000100 <.LBB950>:
 100:	1a079223          	sh	zero,420(a5)

00000104 <.LBB952>:
 104:	1fa7d703          	lhu	a4,506(a5)
 108:	0742                	slli	a4,a4,0x10
 10a:	8341                	srli	a4,a4,0x10
 10c:	f7f77713          	andi	a4,a4,-129
 110:	0742                	slli	a4,a4,0x10
 112:	8341                	srli	a4,a4,0x10
 114:	1ee79d23          	sh	a4,506(a5)

00000118 <.LBB954>:
 118:	1e079823          	sh	zero,496(a5)

0000011c <.LBB956>:
 11c:	1e079923          	sh	zero,498(a5)

00000120 <.LBB958>:
 120:	1e079a23          	sh	zero,500(a5)

00000124 <.LBB960>:
 124:	1e079b23          	sh	zero,502(a5)

00000128 <.LBB962>:
 128:	1e079c23          	sh	zero,504(a5)

0000012c <.LBE962>:
 12c:	cc89                	beqz	s1,146 <.L40>
 12e:	8522                	mv	a0,s0
 130:	85a6                	mv	a1,s1
 132:	00000097          	auipc	ra,0x0
 136:	000080e7          	jalr	ra # 132 <.LBE962+0x6>

0000013a <.LVL182>:
 13a:	02840513          	addi	a0,s0,40

0000013e <.LVL183>:
 13e:	00000097          	auipc	ra,0x0
 142:	000080e7          	jalr	ra # 13e <.LVL183>

00000146 <.L40>:
 146:	300024f3          	csrr	s1,mstatus

0000014a <.LBB966>:
 14a:	300477f3          	csrrci	a5,mstatus,8

0000014e <.LBE966>:
 14e:	4585                	li	a1,1
 150:	8522                	mv	a0,s0
 152:	00000097          	auipc	ra,0x0
 156:	000080e7          	jalr	ra # 152 <.LBE966+0x4>

0000015a <.LVL187>:
 15a:	487c                	lw	a5,84(s0)
 15c:	27100693          	li	a3,625
 160:	4418                	lw	a4,8(s0)
 162:	02d7d7b3          	divu	a5,a5,a3
 166:	06041023          	sh	zero,96(s0)
 16a:	cc38                	sw	a4,88(s0)
 16c:	97ba                	add	a5,a5,a4
 16e:	0796                	slli	a5,a5,0x5
 170:	8395                	srli	a5,a5,0x5
 172:	cc7c                	sw	a5,92(s0)
 174:	30049073          	csrw	mstatus,s1

00000178 <.L36>:
 178:	8522                	mv	a0,s0
 17a:	50f2                	lw	ra,60(sp)
 17c:	5462                	lw	s0,56(sp)
 17e:	54d2                	lw	s1,52(sp)
 180:	5942                	lw	s2,48(sp)

00000182 <.LVL189>:
 182:	6121                	addi	sp,sp,64
 184:	8082                	ret

00000186 <.L38>:
 186:	8522                	mv	a0,s0
 188:	4601                	li	a2,0
 18a:	4585                	li	a1,1
 18c:	00000097          	auipc	ra,0x0
 190:	000080e7          	jalr	ra # 18c <.L38+0x6>

00000194 <.LVL191>:
 194:	4401                	li	s0,0
 196:	b7cd                	j	178 <.L36>

Disassembly of section .text.lld_scan_stop:

00000000 <lld_scan_stop>:
   0:	1141                	addi	sp,sp,-16
   2:	4605                	li	a2,1
   4:	4585                	li	a1,1
   6:	c422                	sw	s0,8(sp)
   8:	c606                	sw	ra,12(sp)
   a:	842a                	mv	s0,a0
   c:	00000097          	auipc	ra,0x0
  10:	000080e7          	jalr	ra # c <lld_scan_stop+0xc>

00000014 <.LVL193>:
  14:	ed11                	bnez	a0,30 <.L49>

00000016 <.LBB967>:
  16:	07e44783          	lbu	a5,126(s0)

0000001a <.LBB968>:
  1a:	28000737          	lui	a4,0x28000

0000001e <.LBE968>:
  1e:	010006b7          	lui	a3,0x1000
  22:	0107e793          	ori	a5,a5,16
  26:	06f40f23          	sb	a5,126(s0)

0000002a <.LBB971>:
  2a:	431c                	lw	a5,0(a4)

0000002c <.LBE971>:
  2c:	8fd5                	or	a5,a5,a3

0000002e <.LBB972>:
  2e:	c31c                	sw	a5,0(a4)

00000030 <.L49>:
  30:	40b2                	lw	ra,12(sp)
  32:	4422                	lw	s0,8(sp)

00000034 <.LVL197>:
  34:	0141                	addi	sp,sp,16
  36:	8082                	ret

Disassembly of section .text.lld_con_start:

00000000 <lld_con_start>:
   0:	7119                	addi	sp,sp,-128
   2:	d8ca                	sw	s2,112(sp)
   4:	892a                	mv	s2,a0
   6:	05800513          	li	a0,88

0000000a <.LVL199>:
   a:	de86                	sw	ra,124(sp)
   c:	dca2                	sw	s0,120(sp)
   e:	d2d6                	sw	s5,100(sp)
  10:	cae6                	sw	s9,84(sp)
  12:	8ab2                	mv	s5,a2
  14:	8cae                	mv	s9,a1
  16:	daa6                	sw	s1,116(sp)
  18:	d6ce                	sw	s3,108(sp)
  1a:	d4d2                	sw	s4,104(sp)
  1c:	d0da                	sw	s6,96(sp)
  1e:	cede                	sw	s7,92(sp)
  20:	cce2                	sw	s8,88(sp)
  22:	c8ea                	sw	s10,80(sp)
  24:	c6ee                	sw	s11,76(sp)
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <.LVL199+0x1c>

0000002e <.LVL200>:
  2e:	842a                	mv	s0,a0

00000030 <.LVL201>:
  30:	05800513          	li	a0,88
  34:	00000097          	auipc	ra,0x0
  38:	000080e7          	jalr	ra # 34 <.LVL201+0x4>

0000003c <.LVL202>:
  3c:	00011223          	sh	zero,4(sp)
  40:	c402                	sw	zero,8(sp)
  42:	00011623          	sh	zero,12(sp)
  46:	60040f63          	beqz	s0,664 <.L53>
  4a:	89aa                	mv	s3,a0
  4c:	60050a63          	beqz	a0,660 <.L54>
  50:	6785                	lui	a5,0x1
  52:	20000713          	li	a4,512
  56:	9c478793          	addi	a5,a5,-1596 # 9c4 <.LASF336+0x2>
  5a:	00e41c23          	sh	a4,24(s0)
  5e:	00040ba3          	sb	zero,23(s0)
  62:	00f41923          	sh	a5,18(s0)
  66:	00e51c23          	sh	a4,24(a0)
  6a:	00050ba3          	sb	zero,23(a0)
  6e:	00295783          	lhu	a5,2(s2)
  72:	27100713          	li	a4,625
  76:	02840513          	addi	a0,s0,40

0000007a <.LVL204>:
  7a:	02e787b3          	mul	a5,a5,a4
  7e:	448d                	li	s1,3
  80:	4d05                	li	s10,1
  82:	00000c37          	lui	s8,0x0
  86:	00000bb7          	lui	s7,0x0
  8a:	00000b37          	lui	s6,0x0
  8e:	05c00a13          	li	s4,92
  92:	c87c                	sw	a5,84(s0)
  94:	00000097          	auipc	ra,0x0
  98:	000080e7          	jalr	ra # 94 <.LVL204+0x1a>

0000009c <.LVL205>:
  9c:	06941a23          	sh	s1,116(s0)
  a0:	07a40da3          	sb	s10,123(s0)
  a4:	00095783          	lhu	a5,0(s2)
  a8:	4585                	li	a1,1
  aa:	8522                	mv	a0,s0
  ac:	06f41c23          	sh	a5,120(s0)
  b0:	1a200793          	li	a5,418
  b4:	06f41b23          	sh	a5,118(s0)
  b8:	00000097          	auipc	ra,0x0
  bc:	000080e7          	jalr	ra # b8 <.LVL205+0x1c>

000000c0 <.LVL206>:
  c0:	000c0793          	mv	a5,s8
  c4:	cc5c                	sw	a5,28(s0)
  c6:	000b8793          	mv	a5,s7
  ca:	d05c                	sw	a5,36(s0)
  cc:	000b0793          	mv	a5,s6
  d0:	d01c                	sw	a5,32(s0)
  d2:	6799                	lui	a5,0x6
  d4:	00f41823          	sh	a5,16(s0)
  d8:	00000097          	auipc	ra,0x0
  dc:	000080e7          	jalr	ra # d8 <.LVL206+0x18>

000000e0 <.LVL207>:
  e0:	01944783          	lbu	a5,25(s0)
  e4:	034a8a33          	mul	s4,s5,s4
  e8:	004c                	addi	a1,sp,4
  ea:	078d                	addi	a5,a5,3
  ec:	953e                	add	a0,a0,a5
  ee:	080007b7          	lui	a5,0x8000
  f2:	17f9                	addi	a5,a5,-2
  f4:	8d7d                	and	a0,a0,a5
  f6:	c408                	sw	a0,8(s0)
  f8:	00e95783          	lhu	a5,14(s2)
  fc:	1028                	addi	a0,sp,40
  fe:	08ea0a13          	addi	s4,s4,142
 102:	0786                	slli	a5,a5,0x1
 104:	02f11423          	sh	a5,40(sp)
 108:	01095783          	lhu	a5,16(s2)
 10c:	0a42                	slli	s4,s4,0x10
 10e:	010a5a13          	srli	s4,s4,0x10
 112:	0786                	slli	a5,a5,0x1
 114:	02f11523          	sh	a5,42(sp)
 118:	01695783          	lhu	a5,22(s2)
 11c:	02010923          	sb	zero,50(sp)
 120:	02010b23          	sb	zero,54(sp)
 124:	d63e                	sw	a5,44(sp)
 126:	01895783          	lhu	a5,24(s2)
 12a:	03511c23          	sh	s5,56(sp)
 12e:	02011d23          	sh	zero,58(sp)
 132:	02f11823          	sh	a5,48(sp)
 136:	03411f23          	sh	s4,62(sp)
 13a:	00000097          	auipc	ra,0x0
 13e:	000080e7          	jalr	ra # 13a <.LVL207+0x5a>

00000142 <.LVL208>:
 142:	004c                	addi	a1,sp,4
 144:	1028                	addi	a0,sp,40
 146:	02011a23          	sh	zero,52(sp)
 14a:	02010e23          	sb	zero,60(sp)
 14e:	00000097          	auipc	ra,0x0
 152:	000080e7          	jalr	ra # 14e <.LVL208+0xc>

00000156 <.LVL209>:
 156:	000c0c13          	mv	s8,s8
 15a:	000b8b93          	mv	s7,s7
 15e:	000b0b13          	mv	s6,s6
 162:	4fa50363          	beq	a0,s10,648 <.L55>

00000166 <.LBB974>:
 166:	00000097          	auipc	ra,0x0
 16a:	000080e7          	jalr	ra # 166 <.LBB974>

0000016e <.LBE975>:
 16e:	004cd703          	lhu	a4,4(s9)

00000172 <.LBB978>:
 172:	47a9                	li	a5,10
 174:	6689                	lui	a3,0x2
 176:	02f70733          	mul	a4,a4,a5
 17a:	280087b7          	lui	a5,0x28008
 17e:	2cc78793          	addi	a5,a5,716 # 280082cc <.LASF681+0x280047d1>
 182:	22568693          	addi	a3,a3,549 # 2225 <.LASF74+0x2>

00000186 <.LBB982>:
 186:	8d2a                	mv	s10,a0

00000188 <.LBE982>:
 188:	00851d93          	slli	s11,a0,0x8
 18c:	008ddd93          	srli	s11,s11,0x8

00000190 <.LBB983>:
 190:	973e                	add	a4,a4,a5

00000192 <.LBE983>:
 192:	00594783          	lbu	a5,5(s2)

00000196 <.LBB984>:
 196:	8b85                	andi	a5,a5,1
 198:	079e                	slli	a5,a5,0x7
 19a:	8fd5                	or	a5,a5,a3
 19c:	00f71023          	sh	a5,0(a4) # 28000000 <.LASF681+0x27ffc505>

000001a0 <.LBB985>:
 1a0:	00000097          	auipc	ra,0x0
 1a4:	000080e7          	jalr	ra # 1a0 <.LBB985>

000001a8 <.LBE987>:
 1a8:	00000737          	lui	a4,0x0
 1ac:	00070713          	mv	a4,a4
 1b0:	04274783          	lbu	a5,66(a4) # 42 <.LVL202+0x6>
 1b4:	000006b7          	lui	a3,0x0
 1b8:	00068693          	mv	a3,a3
 1bc:	97b6                	add	a5,a5,a3
 1be:	0007c783          	lbu	a5,0(a5)
 1c2:	04074683          	lbu	a3,64(a4)

000001c6 <.LBE985>:
 1c6:	01b11a23          	sh	s11,20(sp)

000001ca <.LBB991>:
 1ca:	0792                	slli	a5,a5,0x4
 1cc:	07e2                	slli	a5,a5,0x18
 1ce:	87e1                	srai	a5,a5,0x18
 1d0:	00f6f613          	andi	a2,a3,15
 1d4:	8e5d                	or	a2,a2,a5
 1d6:	00c10823          	sb	a2,16(sp)
 1da:	0046d613          	srli	a2,a3,0x4
 1de:	8e5d                	or	a2,a2,a5
 1e0:	00c108a3          	sb	a2,17(sp)
 1e4:	00f57613          	andi	a2,a0,15
 1e8:	8fd1                	or	a5,a5,a2
 1ea:	00f10923          	sb	a5,18(sp)
 1ee:	04174783          	lbu	a5,65(a4)
 1f2:	00000637          	lui	a2,0x0
 1f6:	00060613          	mv	a2,a2
 1fa:	963e                	add	a2,a2,a5
 1fc:	0785                	addi	a5,a5,1
 1fe:	0297e4b3          	rem	s1,a5,s1
 202:	0685                	addi	a3,a3,1
 204:	04d70023          	sb	a3,64(a4)
 208:	00064603          	lbu	a2,0(a2) # 0 <lld_con_start>
 20c:	0ff57513          	andi	a0,a0,255
 210:	8111                	srli	a0,a0,0x4

00000212 <.LVL214>:
 212:	0612                	slli	a2,a2,0x4
 214:	8d51                	or	a0,a0,a2
 216:	00a109a3          	sb	a0,19(sp)

0000021a <.LBE991>:
 21a:	010ddd93          	srli	s11,s11,0x10

0000021e <.LVL215>:
 21e:	1008                	addi	a0,sp,32

00000220 <.LBB992>:
 220:	01b10b23          	sb	s11,22(sp)

00000224 <.LBB995>:
 224:	049700a3          	sb	s1,65(a4)

00000228 <.LBB1139>:
 228:	01295783          	lhu	a5,18(s2)
 22c:	00f11e23          	sh	a5,28(sp)

00000230 <.LBB1141>:
 230:	01495783          	lhu	a5,20(s2)
 234:	00f11f23          	sh	a5,30(sp)
 238:	00000097          	auipc	ra,0x0
 23c:	000080e7          	jalr	ra # 238 <.LBB1141+0x8>

00000240 <.LVL218>:
 240:	00fd7513          	andi	a0,s10,15

00000244 <.LVL219>:
 244:	4791                	li	a5,4
 246:	00a7e363          	bltu	a5,a0,24c <.L56>
 24a:	0515                	addi	a0,a0,5

0000024c <.L56>:
 24c:	000007b7          	lui	a5,0x0

00000250 <.LBE999>:
 250:	0287c783          	lbu	a5,40(a5) # 28 <.LVL199+0x1e>
 254:	00310613          	addi	a2,sp,3
 258:	080c                	addi	a1,sp,16
 25a:	0796                	slli	a5,a5,0x5
 25c:	8d5d                	or	a0,a0,a5

0000025e <.LVL221>:
 25e:	00415783          	lhu	a5,4(sp)
 262:	02a102a3          	sb	a0,37(sp)

00000266 <.LBB1142>:
 266:	4515                	li	a0,5
 268:	8385                	srli	a5,a5,0x1
 26a:	00f11d23          	sh	a5,26(sp)
 26e:	4789                	li	a5,2

00000270 <.LBB1001>:
 270:	280084b7          	lui	s1,0x28008

00000274 <.LBE1001>:
 274:	00f10ba3          	sb	a5,23(sp)
 278:	00000097          	auipc	ra,0x0
 27c:	000080e7          	jalr	ra # 278 <.LBE1001+0x4>

00000280 <.LBB1004>:
 280:	2ec4d503          	lhu	a0,748(s1) # 280082ec <.LASF681+0x280047f1>

00000284 <.LBB1005>:
 284:	000007b7          	lui	a5,0x0
 288:	0007a783          	lw	a5,0(a5) # 0 <lld_con_start>
 28c:	00314603          	lbu	a2,3(sp)
 290:	080c                	addi	a1,sp,16

00000292 <.LVL225>:
 292:	9526                	add	a0,a0,s1

00000294 <.LVL226>:
 294:	9782                	jalr	a5

00000296 <.LBE1005>:
 296:	00c94503          	lbu	a0,12(s2)
 29a:	00000097          	auipc	ra,0x0
 29e:	000080e7          	jalr	ra # 29a <.LBE1005+0x4>

000002a2 <.LVL228>:
 2a2:	85e6                	mv	a1,s9
 2a4:	8522                	mv	a0,s0
 2a6:	01342223          	sw	s3,4(s0)
 2aa:	00000097          	auipc	ra,0x0
 2ae:	000080e7          	jalr	ra # 2aa <.LVL228+0x8>

000002b2 <.LVL229>:
 2b2:	004c                	addi	a1,sp,4
 2b4:	8522                	mv	a0,s0
 2b6:	00000097          	auipc	ra,0x0
 2ba:	000080e7          	jalr	ra # 2b6 <.LVL229+0x4>

000002be <.LBB1007>:
 2be:	1a64d783          	lhu	a5,422(s1)
 2c2:	07c2                	slli	a5,a5,0x10
 2c4:	83c1                	srli	a5,a5,0x10
 2c6:	9b81                	andi	a5,a5,-32
 2c8:	0037e793          	ori	a5,a5,3
 2cc:	1af49323          	sh	a5,422(s1)

000002d0 <.LBE1007>:
 2d0:	000007b7          	lui	a5,0x0
 2d4:	0047c703          	lbu	a4,4(a5) # 4 <lld_con_start+0x4>

000002d8 <.LBB1009>:
 2d8:	00871793          	slli	a5,a4,0x8
 2dc:	00671693          	slli	a3,a4,0x6
 2e0:	2007f793          	andi	a5,a5,512
 2e4:	1006f693          	andi	a3,a3,256
 2e8:	8b05                	andi	a4,a4,1

000002ea <.LVL233>:
 2ea:	072a                	slli	a4,a4,0xa
 2ec:	8fd5                	or	a5,a5,a3
 2ee:	8fd9                	or	a5,a5,a4
 2f0:	777d                	lui	a4,0xfffff
 2f2:	073d                	addi	a4,a4,15
 2f4:	8fd9                	or	a5,a5,a4
 2f6:	07c2                	slli	a5,a5,0x10
 2f8:	83c1                	srli	a5,a5,0x10
 2fa:	1af49123          	sh	a5,418(s1)

000002fe <.LBB1011>:
 2fe:	00c94783          	lbu	a5,12(s2)

00000302 <.LBB1015>:
 302:	00494703          	lbu	a4,4(s2)

00000306 <.LBE1015>:
 306:	0786                	slli	a5,a5,0x1

00000308 <.LBB1016>:
 308:	0722                	slli	a4,a4,0x8
 30a:	8b91                	andi	a5,a5,4
 30c:	8fd9                	or	a5,a5,a4
 30e:	1af49823          	sh	a5,432(s1)

00000312 <.LBB1017>:
 312:	77f1                	lui	a5,0xffffc
 314:	02778793          	addi	a5,a5,39 # ffffc027 <.LASF681+0xffff852c>
 318:	1af49923          	sh	a5,434(s1)

0000031c <.LBB1019>:
 31c:	1fa4d783          	lhu	a5,506(s1)
 320:	07c2                	slli	a5,a5,0x10
 322:	83c1                	srli	a5,a5,0x10
 324:	f7f7f793          	andi	a5,a5,-129
 328:	07c2                	slli	a5,a5,0x10
 32a:	83c1                	srli	a5,a5,0x10
 32c:	1ef49d23          	sh	a5,506(s1)

00000330 <.LBB1021>:
 330:	1e049823          	sh	zero,496(s1)

00000334 <.LBB1023>:
 334:	1e049923          	sh	zero,498(s1)

00000338 <.LBB1025>:
 338:	1e049a23          	sh	zero,500(s1)

0000033c <.LBB1027>:
 33c:	1e049b23          	sh	zero,502(s1)

00000340 <.LBB1029>:
 340:	1e049c23          	sh	zero,504(s1)

00000344 <.LBB1031>:
 344:	1a049223          	sh	zero,420(s1)

00000348 <.LBB1033>:
 348:	00794783          	lbu	a5,7(s2)
 34c:	00694703          	lbu	a4,6(s2)
 350:	07a2                	slli	a5,a5,0x8
 352:	8fd9                	or	a5,a5,a4

00000354 <.LBB1038>:
 354:	1cf49423          	sh	a5,456(s1)

00000358 <.LBB1042>:
 358:	00994783          	lbu	a5,9(s2)
 35c:	00894703          	lbu	a4,8(s2)
 360:	07a2                	slli	a5,a5,0x8
 362:	8fd9                	or	a5,a5,a4

00000364 <.LBB1043>:
 364:	1cf49523          	sh	a5,458(s1)

00000368 <.LBB1044>:
 368:	00b94783          	lbu	a5,11(s2)
 36c:	00a94703          	lbu	a4,10(s2)
 370:	07a2                	slli	a5,a5,0x8
 372:	8fd9                	or	a5,a5,a4

00000374 <.LBB1045>:
 374:	1cf49623          	sh	a5,460(s1)

00000378 <.LBB1046>:
 378:	00594783          	lbu	a5,5(s2)
 37c:	4715                	li	a4,5

0000037e <.LBB1049>:
 37e:	8b85                	andi	a5,a5,1
 380:	1cf49723          	sh	a5,462(s1)

00000384 <.LBB1050>:
 384:	05500793          	li	a5,85
 388:	1af49723          	sh	a5,430(s1)

0000038c <.LBE1050>:
 38c:	00c15783          	lhu	a5,12(sp)
 390:	00f76863          	bltu	a4,a5,3a0 <.L57>
 394:	01a15703          	lhu	a4,26(sp)
 398:	0706                	slli	a4,a4,0x1
 39a:	97ba                	add	a5,a5,a4
 39c:	00f11623          	sh	a5,12(sp)

000003a0 <.L57>:
 3a0:	05c00493          	li	s1,92
 3a4:	029a84b3          	mul	s1,s5,s1

000003a8 <.LBE1052>:
 3a8:	00c15783          	lhu	a5,12(sp)

000003ac <.LBB1057>:
 3ac:	280086b7          	lui	a3,0x28008
 3b0:	0a668713          	addi	a4,a3,166 # 280080a6 <.LASF681+0x280045ab>

000003b4 <.LBE1057>:
 3b4:	8385                	srli	a5,a5,0x1
 3b6:	17fd                	addi	a5,a5,-1
 3b8:	07c2                	slli	a5,a5,0x10
 3ba:	83c1                	srli	a5,a5,0x10

000003bc <.LBB1058>:
 3bc:	02898513          	addi	a0,s3,40

000003c0 <.LBB1059>:
 3c0:	9726                	add	a4,a4,s1
 3c2:	00f71023          	sh	a5,0(a4) # fffff000 <.LASF681+0xffffb505>

000003c6 <.LBE1059>:
 3c6:	00415783          	lhu	a5,4(sp)
 3ca:	8385                	srli	a5,a5,0x1

000003cc <.LBB1060>:
 3cc:	1af69f23          	sh	a5,446(a3)

000003d0 <.LBE1060>:
 3d0:	00000097          	auipc	ra,0x0
 3d4:	000080e7          	jalr	ra # 3d0 <.LBE1060>

000003d8 <.LVL256>:
 3d8:	01c15703          	lhu	a4,28(sp)
 3dc:	01a15783          	lhu	a5,26(sp)
 3e0:	07599a23          	sh	s5,116(s3)
 3e4:	0705                	addi	a4,a4,1
 3e6:	04e99f23          	sh	a4,94(s3)
 3ea:	470d                	li	a4,3
 3ec:	06e98da3          	sb	a4,123(s3)
 3f0:	0786                	slli	a5,a5,0x1
 3f2:	00c15703          	lhu	a4,12(sp)
 3f6:	07c2                	slli	a5,a5,0x10
 3f8:	83c1                	srli	a5,a5,0x10
 3fa:	02f77733          	remu	a4,a4,a5
 3fe:	06f99c23          	sh	a5,120(s3)
 402:	07499b23          	sh	s4,118(s3)
 406:	8f99                	sub	a5,a5,a4
 408:	4418                	lw	a4,8(s0)
 40a:	40f707b3          	sub	a5,a4,a5
 40e:	0796                	slli	a5,a5,0x5
 410:	8395                	srli	a5,a5,0x5
 412:	00f9a423          	sw	a5,8(s3)
 416:	01695783          	lhu	a5,22(s2)
 41a:	4e200713          	li	a4,1250
 41e:	cb81                	beqz	a5,42e <.L58>
 420:	27100713          	li	a4,625
 424:	02e787b3          	mul	a5,a5,a4
 428:	01079713          	slli	a4,a5,0x10
 42c:	8341                	srli	a4,a4,0x10

0000042e <.L58>:
 42e:	000007b7          	lui	a5,0x0
 432:	0067c783          	lbu	a5,6(a5) # 6 <lld_con_start+0x6>

00000436 <.LBB1062>:
 436:	28008937          	lui	s2,0x28008

0000043a <.LBE1062>:
 43a:	00e99923          	sh	a4,18(s3)
 43e:	00f98b23          	sb	a5,22(s3)

00000442 <.LBB1066>:
 442:	08e90793          	addi	a5,s2,142 # 2800808e <.LASF681+0x28004593>

00000446 <.LBE1066>:
 446:	0189ae23          	sw	s8,28(s3)
 44a:	0379a223          	sw	s7,36(s3)
 44e:	0369a023          	sw	s6,32(s3)

00000452 <.LBB1067>:
 452:	97a6                	add	a5,a5,s1
 454:	4709                	li	a4,2
 456:	00e79023          	sh	a4,0(a5)

0000045a <.LBB1068>:
 45a:	09090793          	addi	a5,s2,144
 45e:	97a6                	add	a5,a5,s1
 460:	00079023          	sh	zero,0(a5)

00000464 <.LBB1070>:
 464:	09290793          	addi	a5,s2,146
 468:	97a6                	add	a5,a5,s1
 46a:	0007d703          	lhu	a4,0(a5)

0000046e <.LBB1073>:
 46e:	6689                	lui	a3,0x2

00000470 <.LBE1073>:
 470:	01fafa93          	andi	s5,s5,31

00000474 <.LBB1076>:
 474:	0742                	slli	a4,a4,0x10
 476:	8341                	srli	a4,a4,0x10
 478:	eff77713          	andi	a4,a4,-257
 47c:	0742                	slli	a4,a4,0x10
 47e:	8341                	srli	a4,a4,0x10
 480:	00e79023          	sh	a4,0(a5)

00000484 <.LBB1077>:
 484:	0007d703          	lhu	a4,0(a5)

00000488 <.LBE1077>:
 488:	4595                	li	a1,5
 48a:	1008                	addi	a0,sp,32

0000048c <.LBB1080>:
 48c:	0742                	slli	a4,a4,0x10
 48e:	8341                	srli	a4,a4,0x10
 490:	dff77713          	andi	a4,a4,-513
 494:	0742                	slli	a4,a4,0x10
 496:	8341                	srli	a4,a4,0x10
 498:	00e79023          	sh	a4,0(a5)

0000049c <.LBB1081>:
 49c:	0007d703          	lhu	a4,0(a5)
 4a0:	0752                	slli	a4,a4,0x14
 4a2:	8351                	srli	a4,a4,0x14
 4a4:	8f55                	or	a4,a4,a3
 4a6:	00e79023          	sh	a4,0(a5)

000004aa <.LBE1081>:
 4aa:	01114703          	lbu	a4,17(sp)
 4ae:	01014683          	lbu	a3,16(sp)
 4b2:	0722                	slli	a4,a4,0x8
 4b4:	8f55                	or	a4,a4,a3

000004b6 <.LBB1082>:
 4b6:	09490693          	addi	a3,s2,148
 4ba:	96a6                	add	a3,a3,s1
 4bc:	00e69023          	sh	a4,0(a3) # 2000 <.LASF721+0xa>

000004c0 <.LBE1082>:
 4c0:	01314703          	lbu	a4,19(sp)
 4c4:	01214683          	lbu	a3,18(sp)
 4c8:	0722                	slli	a4,a4,0x8
 4ca:	8f55                	or	a4,a4,a3

000004cc <.LBB1084>:
 4cc:	09690693          	addi	a3,s2,150
 4d0:	96a6                	add	a3,a3,s1
 4d2:	00e69023          	sh	a4,0(a3)

000004d6 <.LBE1084>:
 4d6:	01514703          	lbu	a4,21(sp)
 4da:	01414683          	lbu	a3,20(sp)
 4de:	0722                	slli	a4,a4,0x8
 4e0:	8f55                	or	a4,a4,a3

000004e2 <.LBB1086>:
 4e2:	09890693          	addi	a3,s2,152
 4e6:	96a6                	add	a3,a3,s1
 4e8:	00e69023          	sh	a4,0(a3)

000004ec <.LBE1086>:
 4ec:	01614683          	lbu	a3,22(sp)

000004f0 <.LBB1088>:
 4f0:	09a90713          	addi	a4,s2,154
 4f4:	9726                	add	a4,a4,s1
 4f6:	00d71023          	sh	a3,0(a4)

000004fa <.LBE1088>:
 4fa:	02514703          	lbu	a4,37(sp)
 4fe:	6689                	lui	a3,0x2
 500:	f0068693          	addi	a3,a3,-256 # 1f00 <.LLST294+0x8>
 504:	0722                	slli	a4,a4,0x8
 506:	8f75                	and	a4,a4,a3
 508:	66b1                	lui	a3,0xc
 50a:	8f55                	or	a4,a4,a3

0000050c <.LBB1090>:
 50c:	09e90693          	addi	a3,s2,158
 510:	96a6                	add	a3,a3,s1
 512:	00e69023          	sh	a4,0(a3) # c000 <.LASF681+0x8505>

00000516 <.LBE1090>:
 516:	00000737          	lui	a4,0x0
 51a:	02c74683          	lbu	a3,44(a4) # 2c <.LVL199+0x22>

0000051e <.LBB1092>:
 51e:	0a090713          	addi	a4,s2,160
 522:	9726                	add	a4,a4,s1
 524:	00d71023          	sh	a3,0(a4)

00000528 <.LBE1092>:
 528:	0199c683          	lbu	a3,25(s3)
 52c:	0789d703          	lhu	a4,120(s3)
 530:	8f15                	sub	a4,a4,a3
 532:	0742                	slli	a4,a4,0x10

00000534 <.LBB1094>:
 534:	0a890693          	addi	a3,s2,168
 538:	96a6                	add	a3,a3,s1

0000053a <.LBE1094>:
 53a:	8341                	srli	a4,a4,0x10

0000053c <.LBB1097>:
 53c:	00e69023          	sh	a4,0(a3)

00000540 <.LBB1098>:
 540:	0007d703          	lhu	a4,0(a5)
 544:	0742                	slli	a4,a4,0x10
 546:	8341                	srli	a4,a4,0x10
 548:	9b01                	andi	a4,a4,-32
 54a:	01576ab3          	or	s5,a4,s5
 54e:	01579023          	sh	s5,0(a5)

00000552 <.LBB1100>:
 552:	0b090793          	addi	a5,s2,176
 556:	97a6                	add	a5,a5,s1
 558:	00079023          	sh	zero,0(a5)

0000055c <.LBB1102>:
 55c:	0b290793          	addi	a5,s2,178
 560:	97a6                	add	a5,a5,s1

00000562 <.LBB1105>:
 562:	0e690713          	addi	a4,s2,230

00000566 <.LBB1108>:
 566:	00079023          	sh	zero,0(a5)

0000056a <.LBB1109>:
 56a:	9726                	add	a4,a4,s1
 56c:	00075783          	lhu	a5,0(a4)
 570:	07c2                	slli	a5,a5,0x10
 572:	83c1                	srli	a5,a5,0x10
 574:	f7f7f793          	andi	a5,a5,-129
 578:	07c2                	slli	a5,a5,0x10
 57a:	83c1                	srli	a5,a5,0x10
 57c:	00f71023          	sh	a5,0(a4)

00000580 <.LBB1110>:
 580:	0dc90793          	addi	a5,s2,220
 584:	97a6                	add	a5,a5,s1
 586:	00079023          	sh	zero,0(a5)

0000058a <.LBB1112>:
 58a:	0de90793          	addi	a5,s2,222
 58e:	97a6                	add	a5,a5,s1
 590:	00079023          	sh	zero,0(a5)

00000594 <.LBB1114>:
 594:	0e090793          	addi	a5,s2,224
 598:	97a6                	add	a5,a5,s1
 59a:	00079023          	sh	zero,0(a5)

0000059e <.LBB1116>:
 59e:	0e290793          	addi	a5,s2,226
 5a2:	97a6                	add	a5,a5,s1
 5a4:	00079023          	sh	zero,0(a5)

000005a8 <.LBB1118>:
 5a8:	0e490793          	addi	a5,s2,228

000005ac <.LBB1121>:
 5ac:	02015703          	lhu	a4,32(sp)

000005b0 <.LBB1124>:
 5b0:	97a6                	add	a5,a5,s1
 5b2:	00079023          	sh	zero,0(a5)

000005b6 <.LBB1125>:
 5b6:	0aa90793          	addi	a5,s2,170
 5ba:	97a6                	add	a5,a5,s1
 5bc:	00e79023          	sh	a4,0(a5)

000005c0 <.LBB1128>:
 5c0:	02215703          	lhu	a4,34(sp)

000005c4 <.LBB1130>:
 5c4:	0ac90793          	addi	a5,s2,172
 5c8:	97a6                	add	a5,a5,s1
 5ca:	00e79023          	sh	a4,0(a5)

000005ce <.LBE1130>:
 5ce:	00000097          	auipc	ra,0x0
 5d2:	000080e7          	jalr	ra # 5ce <.LBE1130>

000005d6 <.LVL291>:
 5d6:	02414783          	lbu	a5,36(sp)
 5da:	0522                	slli	a0,a0,0x8

000005dc <.LBB1132>:
 5dc:	0ae90913          	addi	s2,s2,174

000005e0 <.LBE1132>:
 5e0:	8d5d                	or	a0,a0,a5
 5e2:	0542                	slli	a0,a0,0x10
 5e4:	8141                	srli	a0,a0,0x10

000005e6 <.LBB1135>:
 5e6:	94ca                	add	s1,s1,s2
 5e8:	00a49023          	sh	a0,0(s1)

000005ec <.LBB1136>:
 5ec:	300024f3          	csrr	s1,mstatus

000005f0 <.LBB1138>:
 5f0:	300477f3          	csrrci	a5,mstatus,8

000005f4 <.LBE1138>:
 5f4:	4585                	li	a1,1
 5f6:	8522                	mv	a0,s0
 5f8:	00000097          	auipc	ra,0x0
 5fc:	000080e7          	jalr	ra # 5f8 <.LBE1138+0x4>

00000600 <.LVL296>:
 600:	487c                	lw	a5,84(s0)
 602:	27100693          	li	a3,625
 606:	4418                	lw	a4,8(s0)
 608:	02d7d7b3          	divu	a5,a5,a3
 60c:	cc38                	sw	a4,88(s0)
 60e:	97ba                	add	a5,a5,a4
 610:	0796                	slli	a5,a5,0x5
 612:	8395                	srli	a5,a5,0x5
 614:	cc7c                	sw	a5,92(s0)
 616:	4785                	li	a5,1
 618:	06f41023          	sh	a5,96(s0)
 61c:	4e200793          	li	a5,1250
 620:	00f41923          	sh	a5,18(s0)
 624:	30049073          	csrw	mstatus,s1

00000628 <.L52>:
 628:	8522                	mv	a0,s0
 62a:	50f6                	lw	ra,124(sp)
 62c:	5466                	lw	s0,120(sp)
 62e:	54d6                	lw	s1,116(sp)
 630:	5946                	lw	s2,112(sp)
 632:	59b6                	lw	s3,108(sp)
 634:	5a26                	lw	s4,104(sp)
 636:	5a96                	lw	s5,100(sp)
 638:	5b06                	lw	s6,96(sp)
 63a:	4bf6                	lw	s7,92(sp)
 63c:	4c66                	lw	s8,88(sp)
 63e:	4cd6                	lw	s9,84(sp)

00000640 <.LVL298>:
 640:	4d46                	lw	s10,80(sp)
 642:	4db6                	lw	s11,76(sp)
 644:	6109                	addi	sp,sp,128
 646:	8082                	ret

00000648 <.L55>:
 648:	8522                	mv	a0,s0
 64a:	00000097          	auipc	ra,0x0
 64e:	000080e7          	jalr	ra # 64a <.L55+0x2>

00000652 <.LVL300>:
 652:	854e                	mv	a0,s3

00000654 <.L63>:
 654:	00000097          	auipc	ra,0x0
 658:	000080e7          	jalr	ra # 654 <.L63>

0000065c <.LVL301>:
 65c:	4401                	li	s0,0

0000065e <.LVL302>:
 65e:	b7e9                	j	628 <.L52>

00000660 <.L54>:
 660:	8522                	mv	a0,s0

00000662 <.LVL304>:
 662:	bfcd                	j	654 <.L63>

00000664 <.L53>:
 664:	00000097          	auipc	ra,0x0
 668:	000080e7          	jalr	ra # 664 <.L53>

0000066c <.LVL306>:
 66c:	bf75                	j	628 <.L52>

Disassembly of section .text.lld_move_to_master:

00000000 <lld_move_to_master>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	8436                	mv	s0,a3
   e:	89ae                	mv	s3,a1
  10:	00000097          	auipc	ra,0x0
  14:	000080e7          	jalr	ra # 10 <lld_move_to_master+0x10>

00000018 <.LBB1143>:
  18:	47b9                	li	a5,14
  1a:	02f40433          	mul	s0,s0,a5
  1e:	280084b7          	lui	s1,0x28008
  22:	3d248793          	addi	a5,s1,978 # 280083d2 <.LASF681+0x280048d7>

00000026 <.LBB1147>:
  26:	09e48693          	addi	a3,s1,158
  2a:	7771                	lui	a4,0xffffc
  2c:	177d                	addi	a4,a4,-1

0000002e <.LBE1147>:
  2e:	14800593          	li	a1,328
  32:	892a                	mv	s2,a0

00000034 <.LBB1151>:
  34:	943e                	add	s0,s0,a5
  36:	00045783          	lhu	a5,0(s0)

0000003a <.LBB1152>:
  3a:	05c00413          	li	s0,92
  3e:	02898433          	mul	s0,s3,s0

00000042 <.LBB1153>:
  42:	8395                	srli	a5,a5,0x5

00000044 <.LBB1154>:
  44:	8b85                	andi	a5,a5,1
  46:	07ba                	slli	a5,a5,0xe
  48:	96a2                	add	a3,a3,s0
  4a:	0006d603          	lhu	a2,0(a3)
  4e:	8f71                	and	a4,a4,a2
  50:	8fd9                	or	a5,a5,a4
  52:	00f69023          	sh	a5,0(a3)

00000056 <.LBE1154>:
  56:	466d                	li	a2,27
  58:	00000097          	auipc	ra,0x0
  5c:	000080e7          	jalr	ra # 58 <.LBE1154+0x2>

00000060 <.LVL313>:
  60:	854a                	mv	a0,s2
  62:	14800613          	li	a2,328
  66:	14800593          	li	a1,328
  6a:	00000097          	auipc	ra,0x0
  6e:	000080e7          	jalr	ra # 6a <.LVL313+0xa>

00000072 <.LBB1155>:
  72:	0a848793          	addi	a5,s1,168
  76:	97a2                	add	a5,a5,s0
  78:	0007d703          	lhu	a4,0(a5)

0000007c <.LBB1158>:
  7c:	0a648793          	addi	a5,s1,166
  80:	97a2                	add	a5,a5,s0

00000082 <.LBB1161>:
  82:	0742                	slli	a4,a4,0x10
  84:	8341                	srli	a4,a4,0x10

00000086 <.LBB1162>:
  86:	00e79023          	sh	a4,0(a5)

0000008a <.LBB1163>:
  8a:	47a9                	li	a5,10
  8c:	02f989b3          	mul	s3,s3,a5

00000090 <.LVL317>:
  90:	2ca48793          	addi	a5,s1,714
  94:	6721                	lui	a4,0x8

00000096 <.LBE1163>:
  96:	854a                	mv	a0,s2
  98:	4585                	li	a1,1

0000009a <.LBB1166>:
  9a:	99be                	add	s3,s3,a5
  9c:	0009d783          	lhu	a5,0(s3)
  a0:	07c6                	slli	a5,a5,0x11
  a2:	83c5                	srli	a5,a5,0x11
  a4:	8fd9                	or	a5,a5,a4
  a6:	00f99023          	sh	a5,0(s3)

000000aa <.LBB1167>:
  aa:	09248793          	addi	a5,s1,146
  ae:	97a2                	add	a5,a5,s0
  b0:	0007d703          	lhu	a4,0(a5)
  b4:	0742                	slli	a4,a4,0x10
  b6:	8341                	srli	a4,a4,0x10
  b8:	eff77713          	andi	a4,a4,-257
  bc:	0742                	slli	a4,a4,0x10
  be:	8341                	srli	a4,a4,0x10
  c0:	00e79023          	sh	a4,0(a5)

000000c4 <.LBB1169>:
  c4:	0007d703          	lhu	a4,0(a5)
  c8:	0742                	slli	a4,a4,0x10
  ca:	8341                	srli	a4,a4,0x10
  cc:	dff77713          	andi	a4,a4,-513
  d0:	0742                	slli	a4,a4,0x10
  d2:	8341                	srli	a4,a4,0x10
  d4:	00e79023          	sh	a4,0(a5)

000000d8 <.LBB1171>:
  d8:	0007d703          	lhu	a4,0(a5)
  dc:	0742                	slli	a4,a4,0x10
  de:	8341                	srli	a4,a4,0x10
  e0:	bff77713          	andi	a4,a4,-1025
  e4:	0742                	slli	a4,a4,0x10
  e6:	8341                	srli	a4,a4,0x10
  e8:	00e79023          	sh	a4,0(a5)

000000ec <.LBB1173>:
  ec:	09c48713          	addi	a4,s1,156
  f0:	9722                	add	a4,a4,s0
  f2:	00071023          	sh	zero,0(a4) # 8000 <.LASF681+0x4505>

000000f6 <.LBB1175>:
  f6:	0cc48713          	addi	a4,s1,204
  fa:	9722                	add	a4,a4,s0
  fc:	00071023          	sh	zero,0(a4)

00000100 <.LBB1177>:
 100:	0ce48713          	addi	a4,s1,206
 104:	9722                	add	a4,a4,s0
 106:	00071023          	sh	zero,0(a4)

0000010a <.LBB1179>:
 10a:	0d048713          	addi	a4,s1,208
 10e:	9722                	add	a4,a4,s0
 110:	00071023          	sh	zero,0(a4)

00000114 <.LBB1181>:
 114:	0d248713          	addi	a4,s1,210
 118:	9722                	add	a4,a4,s0
 11a:	00071023          	sh	zero,0(a4)

0000011e <.LBB1183>:
 11e:	0d448713          	addi	a4,s1,212
 122:	9722                	add	a4,a4,s0
 124:	00071023          	sh	zero,0(a4)

00000128 <.LBB1185>:
 128:	0d648713          	addi	a4,s1,214
 12c:	9722                	add	a4,a4,s0
 12e:	00071023          	sh	zero,0(a4)

00000132 <.LBB1187>:
 132:	0d848713          	addi	a4,s1,216
 136:	9722                	add	a4,a4,s0

00000138 <.LBB1190>:
 138:	0a448493          	addi	s1,s1,164

0000013c <.LBB1193>:
 13c:	00071023          	sh	zero,0(a4)

00000140 <.LBB1194>:
 140:	94a2                	add	s1,s1,s0
 142:	00049023          	sh	zero,0(s1)

00000146 <.LBB1195>:
 146:	0007d683          	lhu	a3,0(a5)
 14a:	777d                	lui	a4,0xfffff
 14c:	7ff70713          	addi	a4,a4,2047 # fffff7ff <.LASF681+0xffffbd04>
 150:	8f75                	and	a4,a4,a3
 152:	00e79023          	sh	a4,0(a5)

00000156 <.LBE1195>:
 156:	00000097          	auipc	ra,0x0
 15a:	000080e7          	jalr	ra # 156 <.LBE1195>

0000015e <.LVL332>:
 15e:	40f2                	lw	ra,28(sp)
 160:	4462                	lw	s0,24(sp)
 162:	854a                	mv	a0,s2
 164:	44d2                	lw	s1,20(sp)
 166:	4942                	lw	s2,16(sp)

00000168 <.LVL333>:
 168:	49b2                	lw	s3,12(sp)
 16a:	6105                	addi	sp,sp,32
 16c:	8082                	ret

Disassembly of section .text.lld_con_update_req:

00000000 <lld_con_update_req>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ca26                	sw	s1,20(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	0105d683          	lhu	a3,16(a1) # 2010 <.LASF921+0x8>
   c:	842e                	mv	s0,a1
   e:	84b2                	mv	s1,a2
  10:	0125c783          	lbu	a5,18(a1)
  14:	00e5d603          	lhu	a2,14(a1)

00000018 <.LVL335>:
  18:	0065d703          	lhu	a4,6(a1)
  1c:	00a5d583          	lhu	a1,10(a1)

00000020 <.LVL336>:
  20:	0686                	slli	a3,a3,0x1
  22:	0606                	slli	a2,a2,0x1
  24:	0585                	addi	a1,a1,1
  26:	06c2                	slli	a3,a3,0x10
  28:	0642                	slli	a2,a2,0x10
  2a:	99f9                	andi	a1,a1,-2

0000002c <.LBB1201>:
  2c:	4809                	li	a6,2

0000002e <.LBE1201>:
  2e:	82c1                	srli	a3,a3,0x10
  30:	8241                	srli	a2,a2,0x10

00000032 <.LBB1202>:
  32:	0105f363          	bgeu	a1,a6,38 <.L67>
  36:	4589                	li	a1,2

00000038 <.L67>:
  38:	05c2                	slli	a1,a1,0x10
  3a:	00810813          	addi	a6,sp,8
  3e:	81c1                	srli	a1,a1,0x10
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.L67+0x8>

00000048 <.LVL337>:
  48:	00845783          	lhu	a5,8(s0)
  4c:	40f2                	lw	ra,28(sp)
  4e:	00f49423          	sh	a5,8(s1)
  52:	07855783          	lhu	a5,120(a0)
  56:	8385                	srli	a5,a5,0x1
  58:	00f49223          	sh	a5,4(s1)
  5c:	00645783          	lhu	a5,6(s0)
  60:	4462                	lw	s0,24(sp)

00000062 <.LVL338>:
  62:	00f49323          	sh	a5,6(s1)
  66:	00c14783          	lbu	a5,12(sp)
  6a:	00f480a3          	sb	a5,1(s1)
  6e:	00815783          	lhu	a5,8(sp)
  72:	00f49123          	sh	a5,2(s1)
  76:	00a15783          	lhu	a5,10(sp)
  7a:	00f49523          	sh	a5,10(s1)
  7e:	44d2                	lw	s1,20(sp)

00000080 <.LVL339>:
  80:	6105                	addi	sp,sp,32
  82:	8082                	ret

Disassembly of section .text.lld_con_update_after_param_req:

00000000 <lld_con_update_after_param_req>:
   0:	711d                	addi	sp,sp,-96
   2:	cca2                	sw	s0,88(sp)
   4:	caa6                	sw	s1,84(sp)
   6:	c8ca                	sw	s2,80(sp)
   8:	c6ce                	sw	s3,76(sp)
   a:	c2d6                	sw	s5,68(sp)
   c:	ce86                	sw	ra,92(sp)
   e:	c4d2                	sw	s4,72(sp)
  10:	c0da                	sw	s6,64(sp)
  12:	de5e                	sw	s7,60(sp)
  14:	dc62                	sw	s8,56(sp)
  16:	00e65783          	lhu	a5,14(a2)
  1a:	843a                	mv	s0,a4
  1c:	7741                	lui	a4,0xffff0

0000001e <.LVL341>:
  1e:	0786                	slli	a5,a5,0x1
  20:	00f11c23          	sh	a5,24(sp)
  24:	01065783          	lhu	a5,16(a2)
  28:	0705                	addi	a4,a4,1
  2a:	8aae                	mv	s5,a1

0000002c <.LVL342>:
  2c:	0786                	slli	a5,a5,0x1
  2e:	00f11d23          	sh	a5,26(sp)
  32:	00a65783          	lhu	a5,10(a2)
  36:	02a11423          	sh	a0,40(sp)
  3a:	006c                	addi	a1,sp,12

0000003c <.LVL343>:
  3c:	ce3e                	sw	a5,28(sp)
  3e:	00c65783          	lhu	a5,12(a2)
  42:	89aa                	mv	s3,a0
  44:	84b2                	mv	s1,a2
  46:	02f11023          	sh	a5,32(sp)
  4a:	01264783          	lbu	a5,18(a2)
  4e:	8936                	mv	s2,a3
  50:	02011523          	sh	zero,42(sp)
  54:	0786                	slli	a5,a5,0x1
  56:	02f10123          	sb	a5,34(sp)
  5a:	01665783          	lhu	a5,22(a2)
  5e:	97ba                	add	a5,a5,a4
  60:	00f037b3          	snez	a5,a5
  64:	02f10323          	sb	a5,38(sp)
  68:	05c00793          	li	a5,92
  6c:	02f507b3          	mul	a5,a0,a5
  70:	0828                	addi	a0,sp,24

00000072 <.LVL344>:
  72:	08e78793          	addi	a5,a5,142
  76:	02f11723          	sh	a5,46(sp)
  7a:	00000097          	auipc	ra,0x0
  7e:	000080e7          	jalr	ra # 7a <.LVL344+0x8>

00000082 <.LVL345>:
  82:	0164d503          	lhu	a0,22(s1)
  86:	67c1                	lui	a5,0x10
  88:	17fd                	addi	a5,a5,-1
  8a:	008aa603          	lw	a2,8(s5)
  8e:	00c15583          	lhu	a1,12(sp)
  92:	18f50c63          	beq	a0,a5,22a <.L70>

00000096 <.LBB1203>:
  96:	060ad703          	lhu	a4,96(s5)
  9a:	0144d783          	lhu	a5,20(s1)
  9e:	078ad683          	lhu	a3,120(s5)
  a2:	16e7ff63          	bgeu	a5,a4,220 <.L71>
  a6:	40f707b3          	sub	a5,a4,a5
  aa:	02d787b3          	mul	a5,a5,a3
  ae:	8e1d                	sub	a2,a2,a5

000000b0 <.L72>:
  b0:	0506                	slli	a0,a0,0x1
  b2:	0542                	slli	a0,a0,0x10
  b4:	8141                	srli	a0,a0,0x10
  b6:	00000097          	auipc	ra,0x0
  ba:	000080e7          	jalr	ra # b6 <.L72+0x6>

000000be <.LVL347>:
  be:	02a11223          	sh	a0,36(sp)

000000c2 <.L73>:
  c2:	02414783          	lbu	a5,36(sp)
  c6:	02614703          	lbu	a4,38(sp)
  ca:	8b85                	andi	a5,a5,1
  cc:	02f10623          	sb	a5,44(sp)
  d0:	4785                	li	a5,1
  d2:	16f70163          	beq	a4,a5,234 <.L74>

000000d6 <.L76>:
  d6:	4a01                	li	s4,0

000000d8 <.L75>:
  d8:	05800513          	li	a0,88
  dc:	00000097          	auipc	ra,0x0
  e0:	000080e7          	jalr	ra # dc <.L75+0x4>

000000e4 <.LVL348>:
  e4:	8baa                	mv	s7,a0

000000e6 <.LVL349>:
  e6:	16050c63          	beqz	a0,25e <.L77>

000000ea <.LBB1205>:
  ea:	000007b7          	lui	a5,0x0
  ee:	0007a783          	lw	a5,0(a5) # 0 <lld_con_update_after_param_req>
  f2:	85d6                	mv	a1,s5
  f4:	02c00613          	li	a2,44
  f8:	9782                	jalr	a5

000000fa <.LVL351>:
  fa:	028b8513          	addi	a0,s7,40 # 28 <.LVL341+0xa>

000000fe <.LVL352>:
  fe:	00000097          	auipc	ra,0x0
 102:	000080e7          	jalr	ra # fe <.LVL352>

00000106 <.LVL353>:
 106:	0064d783          	lhu	a5,6(s1)
 10a:	00c15583          	lhu	a1,12(sp)
 10e:	0785                	addi	a5,a5,1
 110:	04fb9f23          	sh	a5,94(s7)
 114:	478d                	li	a5,3
 116:	06fb8da3          	sb	a5,123(s7)
 11a:	06bb9c23          	sh	a1,120(s7)
 11e:	0164d503          	lhu	a0,22(s1)
 122:	67c1                	lui	a5,0x10
 124:	17fd                	addi	a5,a5,-1
 126:	14f51963          	bne	a0,a5,278 <.L78>
 12a:	008aa603          	lw	a2,8(s5)
 12e:	01415503          	lhu	a0,20(sp)
 132:	00000097          	auipc	ra,0x0
 136:	000080e7          	jalr	ra # 132 <.LVL353+0x2c>

0000013a <.LVL354>:
 13a:	8105                	srli	a0,a0,0x1
 13c:	060ad783          	lhu	a5,96(s5)
 140:	0542                	slli	a0,a0,0x10
 142:	8141                	srli	a0,a0,0x10

00000144 <.L79>:
 144:	05ead703          	lhu	a4,94(s5)
 148:	469d                	li	a3,7
 14a:	060adb03          	lhu	s6,96(s5)
 14e:	02d70733          	mul	a4,a4,a3
 152:	078ad403          	lhu	s0,120(s5)
 156:	1b7d                	addi	s6,s6,-1
 158:	008aa683          	lw	a3,8(s5)
 15c:	0506                	slli	a0,a0,0x1

0000015e <.LVL356>:
 15e:	0742                	slli	a4,a4,0x10
 160:	8341                	srli	a4,a4,0x10

00000162 <.LVL357>:
 162:	9b3a                	add	s6,s6,a4
 164:	177d                	addi	a4,a4,-1

00000166 <.LVL358>:
 166:	02870733          	mul	a4,a4,s0

0000016a <.LVL359>:
 16a:	0b42                	slli	s6,s6,0x10
 16c:	010b5b13          	srli	s6,s6,0x10

00000170 <.LVL360>:
 170:	9736                	add	a4,a4,a3
 172:	0716                	slli	a4,a4,0x5
 174:	8315                	srli	a4,a4,0x5

00000176 <.LVL361>:
 176:	078bd683          	lhu	a3,120(s7)
 17a:	10fb7263          	bgeu	s6,a5,27e <.L80>
 17e:	416787b3          	sub	a5,a5,s6

00000182 <.LVL362>:
 182:	02878433          	mul	s0,a5,s0
 186:	942a                	add	s0,s0,a0

00000188 <.L93>:
 188:	02d46433          	rem	s0,s0,a3
 18c:	4c05                	li	s8,1
 18e:	855e                	mv	a0,s7
 190:	0442                	slli	s0,s0,0x10
 192:	8041                	srli	s0,s0,0x10

00000194 <.LVL363>:
 194:	00e407b3          	add	a5,s0,a4
 198:	0796                	slli	a5,a5,0x5
 19a:	8395                	srli	a5,a5,0x5
 19c:	00fba423          	sw	a5,8(s7)
 1a0:	000007b7          	lui	a5,0x0
 1a4:	00299713          	slli	a4,s3,0x2

000001a8 <.LVL364>:
 1a8:	00078993          	mv	s3,a5
 1ac:	017aa223          	sw	s7,4(s5)
 1b0:	99ba                	add	s3,s3,a4
 1b2:	0009a783          	lw	a5,0(s3)
 1b6:	056a9e23          	sh	s6,92(s5)
 1ba:	078a86a3          	sb	s8,109(s5)
 1be:	0507d603          	lhu	a2,80(a5) # 50 <.LVL343+0x14>
 1c2:	04e7d583          	lhu	a1,78(a5)
 1c6:	8005                	srli	s0,s0,0x1

000001c8 <.LVL365>:
 1c8:	00000097          	auipc	ra,0x0
 1cc:	000080e7          	jalr	ra # 1c8 <.LVL365>

000001d0 <.LBB1206>:
 1d0:	074ad783          	lhu	a5,116(s5)

000001d4 <.LBB1211>:
 1d4:	05c00713          	li	a4,92
 1d8:	02e787b3          	mul	a5,a5,a4

000001dc <.LVL368>:
 1dc:	28008737          	lui	a4,0x28008
 1e0:	0a870693          	addi	a3,a4,168 # 280080a8 <.LASF681+0x280045ad>

000001e4 <.LBB1212>:
 1e4:	0a670713          	addi	a4,a4,166

000001e8 <.LBB1216>:
 1e8:	96be                	add	a3,a3,a5
 1ea:	0006d683          	lhu	a3,0(a3)

000001ee <.LBB1217>:
 1ee:	97ba                	add	a5,a5,a4

000001f0 <.LBB1218>:
 1f0:	06c2                	slli	a3,a3,0x10
 1f2:	82c1                	srli	a3,a3,0x10

000001f4 <.LBB1219>:
 1f4:	00d79023          	sh	a3,0(a5)

000001f8 <.LBE1219>:
 1f8:	0084d783          	lhu	a5,8(s1)
 1fc:	00f91423          	sh	a5,8(s2)
 200:	078bd783          	lhu	a5,120(s7)
 204:	8385                	srli	a5,a5,0x1
 206:	00f91223          	sh	a5,4(s2)
 20a:	0064d783          	lhu	a5,6(s1)
 20e:	018900a3          	sb	s8,1(s2)
 212:	00891123          	sh	s0,2(s2)
 216:	00f91323          	sh	a5,6(s2)
 21a:	01691523          	sh	s6,10(s2)
 21e:	a081                	j	25e <.L77>

00000220 <.L71>:
 220:	8f99                	sub	a5,a5,a4
 222:	02d787b3          	mul	a5,a5,a3
 226:	963e                	add	a2,a2,a5

00000228 <.LVL372>:
 228:	b561                	j	b0 <.L72>

0000022a <.L70>:
 22a:	02b67633          	remu	a2,a2,a1
 22e:	02c11223          	sh	a2,36(sp)
 232:	bd41                	j	c2 <.L73>

00000234 <.L74>:
 234:	006c                	addi	a1,sp,12
 236:	0828                	addi	a0,sp,24
 238:	00000097          	auipc	ra,0x0
 23c:	000080e7          	jalr	ra # 238 <.L74+0x4>

00000240 <.LVL374>:
 240:	e8050be3          	beqz	a0,d6 <.L76>
 244:	006c                	addi	a1,sp,12
 246:	0828                	addi	a0,sp,24
 248:	02010323          	sb	zero,38(sp)
 24c:	00000097          	auipc	ra,0x0
 250:	000080e7          	jalr	ra # 24c <.LVL374+0xc>

00000254 <.LVL375>:
 254:	e80501e3          	beqz	a0,d6 <.L76>
 258:	4a7d                	li	s4,31
 25a:	e6041fe3          	bnez	s0,d8 <.L75>

0000025e <.L77>:
 25e:	40f6                	lw	ra,92(sp)
 260:	4466                	lw	s0,88(sp)
 262:	8552                	mv	a0,s4
 264:	44d6                	lw	s1,84(sp)

00000266 <.LVL376>:
 266:	4946                	lw	s2,80(sp)

00000268 <.LVL377>:
 268:	49b6                	lw	s3,76(sp)
 26a:	4a26                	lw	s4,72(sp)
 26c:	4a96                	lw	s5,68(sp)

0000026e <.LVL378>:
 26e:	4b06                	lw	s6,64(sp)
 270:	5bf2                	lw	s7,60(sp)
 272:	5c62                	lw	s8,56(sp)
 274:	6125                	addi	sp,sp,96
 276:	8082                	ret

00000278 <.L78>:
 278:	0144d783          	lhu	a5,20(s1)

0000027c <.LVL380>:
 27c:	b5e1                	j	144 <.L79>

0000027e <.L80>:
 27e:	40fb07b3          	sub	a5,s6,a5

00000282 <.LVL382>:
 282:	02878433          	mul	s0,a5,s0
 286:	8c09                	sub	s0,s0,a0
 288:	02d46433          	rem	s0,s0,a3
 28c:	40868433          	sub	s0,a3,s0
 290:	bde5                	j	188 <.L93>

Disassembly of section .text.lld_con_param_rsp:

00000000 <lld_con_param_rsp>:
   0:	7139                	addi	sp,sp,-64
   2:	dc22                	sw	s0,56(sp)
   4:	da26                	sw	s1,52(sp)
   6:	de06                	sw	ra,60(sp)
   8:	d84a                	sw	s2,48(sp)
   a:	00e65783          	lhu	a5,14(a2)
   e:	7741                	lui	a4,0xffff0
  10:	0705                	addi	a4,a4,1
  12:	0786                	slli	a5,a5,0x1
  14:	00f11c23          	sh	a5,24(sp)
  18:	01065783          	lhu	a5,16(a2)
  1c:	02a11423          	sh	a0,40(sp)
  20:	84ae                	mv	s1,a1
  22:	0786                	slli	a5,a5,0x1
  24:	00f11d23          	sh	a5,26(sp)
  28:	0645d783          	lhu	a5,100(a1)
  2c:	006c                	addi	a1,sp,12

0000002e <.LVL384>:
  2e:	8432                	mv	s0,a2
  30:	ce3e                	sw	a5,28(sp)
  32:	02f11023          	sh	a5,32(sp)
  36:	01264783          	lbu	a5,18(a2)
  3a:	0786                	slli	a5,a5,0x1
  3c:	02f10123          	sb	a5,34(sp)
  40:	01665783          	lhu	a5,22(a2)
  44:	97ba                	add	a5,a5,a4
  46:	00f037b3          	snez	a5,a5
  4a:	02f10323          	sb	a5,38(sp)
  4e:	4785                	li	a5,1
  50:	02f11523          	sh	a5,42(sp)
  54:	05c00793          	li	a5,92
  58:	02f50533          	mul	a0,a0,a5

0000005c <.LVL385>:
  5c:	08e50513          	addi	a0,a0,142
  60:	02a11723          	sh	a0,46(sp)
  64:	0828                	addi	a0,sp,24
  66:	00000097          	auipc	ra,0x0
  6a:	000080e7          	jalr	ra # 66 <.LVL385+0xa>

0000006e <.LVL386>:
  6e:	01645503          	lhu	a0,22(s0)
  72:	67c1                	lui	a5,0x10
  74:	17fd                	addi	a5,a5,-1
  76:	4490                	lw	a2,8(s1)
  78:	00c15583          	lhu	a1,12(sp)
  7c:	0af50a63          	beq	a0,a5,130 <.L95>

00000080 <.LBB1223>:
  80:	0604d703          	lhu	a4,96(s1)
  84:	01445783          	lhu	a5,20(s0)
  88:	0784d683          	lhu	a3,120(s1)
  8c:	08e7fd63          	bgeu	a5,a4,126 <.L96>
  90:	40f707b3          	sub	a5,a4,a5
  94:	02d787b3          	mul	a5,a5,a3
  98:	8e1d                	sub	a2,a2,a5

0000009a <.L97>:
  9a:	0506                	slli	a0,a0,0x1
  9c:	0542                	slli	a0,a0,0x10
  9e:	8141                	srli	a0,a0,0x10
  a0:	00000097          	auipc	ra,0x0
  a4:	000080e7          	jalr	ra # a0 <.L97+0x6>

000000a8 <.LVL388>:
  a8:	02a11223          	sh	a0,36(sp)

000000ac <.L98>:
  ac:	02414783          	lbu	a5,36(sp)
  b0:	006c                	addi	a1,sp,12
  b2:	0828                	addi	a0,sp,24
  b4:	8b85                	andi	a5,a5,1
  b6:	02f10623          	sb	a5,44(sp)
  ba:	00000097          	auipc	ra,0x0
  be:	000080e7          	jalr	ra # ba <.L98+0xe>

000000c2 <.LVL389>:
  c2:	892a                	mv	s2,a0
  c4:	e93d                	bnez	a0,13a <.L101>
  c6:	00c15583          	lhu	a1,12(sp)
  ca:	01645703          	lhu	a4,22(s0)
  ce:	00040923          	sb	zero,18(s0)
  d2:	0015d793          	srli	a5,a1,0x1
  d6:	00f41723          	sh	a5,14(s0)
  da:	00f41823          	sh	a5,16(s0)
  de:	67c1                	lui	a5,0x10
  e0:	17fd                	addi	a5,a5,-1
  e2:	02f71063          	bne	a4,a5,102 <.L100>
  e6:	4490                	lw	a2,8(s1)
  e8:	01415503          	lhu	a0,20(sp)
  ec:	00000097          	auipc	ra,0x0
  f0:	000080e7          	jalr	ra # ec <.LVL389+0x2a>

000000f4 <.LVL390>:
  f4:	8105                	srli	a0,a0,0x1
  f6:	00a41b23          	sh	a0,22(s0)
  fa:	0604d783          	lhu	a5,96(s1)
  fe:	00f41a23          	sh	a5,20(s0)

00000102 <.L100>:
 102:	57fd                	li	a5,-1
 104:	00f41c23          	sh	a5,24(s0)
 108:	00f41d23          	sh	a5,26(s0)
 10c:	00f41e23          	sh	a5,28(s0)
 110:	00f41f23          	sh	a5,30(s0)
 114:	02f41023          	sh	a5,32(s0)

00000118 <.L99>:
 118:	50f2                	lw	ra,60(sp)
 11a:	5462                	lw	s0,56(sp)

0000011c <.LVL392>:
 11c:	854a                	mv	a0,s2
 11e:	54d2                	lw	s1,52(sp)

00000120 <.LVL393>:
 120:	5942                	lw	s2,48(sp)

00000122 <.LVL394>:
 122:	6121                	addi	sp,sp,64
 124:	8082                	ret

00000126 <.L96>:
 126:	8f99                	sub	a5,a5,a4
 128:	02d787b3          	mul	a5,a5,a3
 12c:	963e                	add	a2,a2,a5

0000012e <.LVL396>:
 12e:	b7b5                	j	9a <.L97>

00000130 <.L95>:
 130:	02b67633          	remu	a2,a2,a1
 134:	02c11223          	sh	a2,36(sp)
 138:	bf95                	j	ac <.L98>

0000013a <.L101>:
 13a:	497d                	li	s2,31
 13c:	bff1                	j	118 <.L99>

Disassembly of section .text.lld_con_param_req:

00000000 <lld_con_param_req>:
   0:	7139                	addi	sp,sp,-64
   2:	dc22                	sw	s0,56(sp)
   4:	da26                	sw	s1,52(sp)
   6:	de06                	sw	ra,60(sp)

00000008 <.LBB1226>:
   8:	00265783          	lhu	a5,2(a2)

0000000c <.LBE1226>:
   c:	84ae                	mv	s1,a1
   e:	8432                	mv	s0,a2

00000010 <.LBB1227>:
  10:	0786                	slli	a5,a5,0x1
  12:	00f11c23          	sh	a5,24(sp)
  16:	00465783          	lhu	a5,4(a2)
  1a:	0786                	slli	a5,a5,0x1
  1c:	00f11d23          	sh	a5,26(sp)
  20:	00a65783          	lhu	a5,10(a2)
  24:	e399                	bnez	a5,2a <.L105>
  26:	0645d783          	lhu	a5,100(a1)

0000002a <.L105>:
  2a:	ce3e                	sw	a5,28(sp)
  2c:	00c45783          	lhu	a5,12(s0)
  30:	02a11423          	sh	a0,40(sp)
  34:	006c                	addi	a1,sp,12

00000036 <.LVL399>:
  36:	02f11023          	sh	a5,32(sp)
  3a:	07b4c783          	lbu	a5,123(s1)
  3e:	02010123          	sb	zero,34(sp)
  42:	02010323          	sb	zero,38(sp)
  46:	17f5                	addi	a5,a5,-3
  48:	00f037b3          	snez	a5,a5
  4c:	02f11523          	sh	a5,42(sp)
  50:	05c00793          	li	a5,92
  54:	02f50533          	mul	a0,a0,a5

00000058 <.LVL400>:
  58:	08e50513          	addi	a0,a0,142
  5c:	02a11723          	sh	a0,46(sp)
  60:	0828                	addi	a0,sp,24
  62:	00000097          	auipc	ra,0x0
  66:	000080e7          	jalr	ra # 62 <.LVL400+0xa>

0000006a <.LVL401>:
  6a:	00c15703          	lhu	a4,12(sp)
  6e:	449c                	lw	a5,8(s1)
  70:	006c                	addi	a1,sp,12
  72:	0828                	addi	a0,sp,24
  74:	02e7f7b3          	remu	a5,a5,a4
  78:	02f11223          	sh	a5,36(sp)
  7c:	8b85                	andi	a5,a5,1
  7e:	02f10623          	sb	a5,44(sp)
  82:	00000097          	auipc	ra,0x0
  86:	000080e7          	jalr	ra # 82 <.LVL401+0x18>

0000008a <.LVL402>:
  8a:	02415783          	lhu	a5,36(sp)
  8e:	e929                	bnez	a0,e0 <.L106>
  90:	00c15583          	lhu	a1,12(sp)

00000094 <.L109>:
  94:	0015d713          	srli	a4,a1,0x1
  98:	00e41723          	sh	a4,14(s0)
  9c:	00e41823          	sh	a4,16(s0)
  a0:	4490                	lw	a2,8(s1)
  a2:	853e                	mv	a0,a5
  a4:	00000097          	auipc	ra,0x0
  a8:	000080e7          	jalr	ra # a4 <.L109+0x10>

000000ac <.LVL403>:
  ac:	8105                	srli	a0,a0,0x1
  ae:	00a41b23          	sh	a0,22(s0)
  b2:	00040923          	sb	zero,18(s0)
  b6:	0604d783          	lhu	a5,96(s1)

000000ba <.LBE1227>:
  ba:	50f2                	lw	ra,60(sp)
  bc:	54d2                	lw	s1,52(sp)

000000be <.LBB1228>:
  be:	0789                	addi	a5,a5,2
  c0:	00f41a23          	sh	a5,20(s0)
  c4:	57fd                	li	a5,-1
  c6:	00f41c23          	sh	a5,24(s0)
  ca:	00f41d23          	sh	a5,26(s0)
  ce:	00f41e23          	sh	a5,28(s0)
  d2:	00f41f23          	sh	a5,30(s0)
  d6:	02f41023          	sh	a5,32(s0)

000000da <.LBE1228>:
  da:	5462                	lw	s0,56(sp)

000000dc <.LVL405>:
  dc:	6121                	addi	sp,sp,64
  de:	8082                	ret

000000e0 <.L106>:
  e0:	01a15583          	lhu	a1,26(sp)
  e4:	bf45                	j	94 <.L109>

Disassembly of section .text.lld_con_stop:

00000000 <lld_con_stop>:
   0:	4605                	li	a2,1
   2:	4585                	li	a1,1
   4:	00000317          	auipc	t1,0x0
   8:	00030067          	jr	t1 # 4 <lld_con_stop+0x4>

Disassembly of section .text.lld_get_mode:

00000000 <lld_get_mode>:
   0:	4789                	li	a5,2
   2:	00f51b63          	bne	a0,a5,18 <.L112>
   6:	000007b7          	lui	a5,0x0
   a:	0487a783          	lw	a5,72(a5) # 48 <.LVL100>

0000000e <.L113>:
   e:	4521                	li	a0,8
  10:	c399                	beqz	a5,16 <.L115>
  12:	07b7c503          	lbu	a0,123(a5)

00000016 <.L115>:
  16:	8082                	ret

00000018 <.L112>:
  18:	478d                	li	a5,3
  1a:	00f51763          	bne	a0,a5,28 <.L114>
  1e:	000007b7          	lui	a5,0x0
  22:	0547a783          	lw	a5,84(a5) # 54 <.LBB837>

00000026 <.LVL413>:
  26:	b7e5                	j	e <.L113>

00000028 <.L114>:
  28:	000007b7          	lui	a5,0x0
  2c:	050a                	slli	a0,a0,0x2

0000002e <.LVL415>:
  2e:	00078793          	mv	a5,a5
  32:	97aa                	add	a5,a5,a0
  34:	439c                	lw	a5,0(a5)
  36:	4521                	li	a0,8
  38:	dff9                	beqz	a5,16 <.L115>
  3a:	4b9c                	lw	a5,16(a5)

0000003c <.LVL416>:
  3c:	bfc9                	j	e <.L113>

Disassembly of section .text.lld_move_to_slave:

00000000 <lld_move_to_slave>:
   0:	7179                	addi	sp,sp,-48
   2:	d422                	sw	s0,40(sp)

00000004 <.LBB1235>:
   4:	05c00413          	li	s0,92
   8:	02868433          	mul	s0,a3,s0

0000000c <.LBE1235>:
   c:	cc52                	sw	s4,24(sp)
   e:	8a2a                	mv	s4,a0

00000010 <.LBB1236>:
  10:	4529                	li	a0,10

00000012 <.LBE1236>:
  12:	d226                	sw	s1,36(sp)

00000014 <.LBB1242>:
  14:	280084b7          	lui	s1,0x28008
  18:	08e48793          	addi	a5,s1,142 # 2800808e <.LASF681+0x28004593>

0000001c <.LBE1242>:
  1c:	d606                	sw	ra,44(sp)
  1e:	d04a                	sw	s2,32(sp)
  20:	ce4e                	sw	s3,28(sp)

00000022 <.LBB1243>:
  22:	02a68533          	mul	a0,a3,a0

00000026 <.LBE1243>:
  26:	89ae                	mv	s3,a1

00000028 <.LBB1244>:
  28:	97a2                	add	a5,a5,s0
  2a:	458d                	li	a1,3

0000002c <.LVL419>:
  2c:	00b79023          	sh	a1,0(a5) # 0 <lld_move_to_slave>

00000030 <.LBB1245>:
  30:	2ca48793          	addi	a5,s1,714
  34:	7861                	lui	a6,0xffff8

00000036 <.LBB1246>:
  36:	09248913          	addi	s2,s1,146
  3a:	9922                	add	s2,s2,s0

0000003c <.LBE1246>:
  3c:	c632                	sw	a2,12(sp)

0000003e <.LBB1249>:
  3e:	953e                	add	a0,a0,a5
  40:	00055583          	lhu	a1,0(a0)

00000044 <.LBE1249>:
  44:	c436                	sw	a3,8(sp)

00000046 <.LBB1250>:
  46:	05c6                	slli	a1,a1,0x11
  48:	81c5                	srli	a1,a1,0x11
  4a:	0105e5b3          	or	a1,a1,a6
  4e:	05c2                	slli	a1,a1,0x10
  50:	81c1                	srli	a1,a1,0x10
  52:	00b51023          	sh	a1,0(a0)

00000056 <.LBB1251>:
  56:	45b9                	li	a1,14
  58:	02b70733          	mul	a4,a4,a1

0000005c <.LVL422>:
  5c:	3d248593          	addi	a1,s1,978

00000060 <.LBE1251>:
  60:	01c98513          	addi	a0,s3,28

00000064 <.LBB1255>:
  64:	972e                	add	a4,a4,a1
  66:	00075783          	lhu	a5,0(a4) # ffff0000 <.LASF681+0xfffec505>

0000006a <.LBE1255>:
  6a:	0219c703          	lbu	a4,33(s3)
  6e:	6589                	lui	a1,0x2

00000070 <.LBB1256>:
  70:	8395                	srli	a5,a5,0x5

00000072 <.LBE1256>:
  72:	f0058593          	addi	a1,a1,-256 # 1f00 <.LLST294+0x8>
  76:	8b85                	andi	a5,a5,1
  78:	0722                	slli	a4,a4,0x8
  7a:	8f6d                	and	a4,a4,a1
  7c:	07ba                	slli	a5,a5,0xe
  7e:	8fd9                	or	a5,a5,a4
  80:	0107e7b3          	or	a5,a5,a6

00000084 <.LBB1257>:
  84:	09e48713          	addi	a4,s1,158

00000088 <.LBE1257>:
  88:	07c2                	slli	a5,a5,0x10

0000008a <.LBB1261>:
  8a:	9722                	add	a4,a4,s0

0000008c <.LBE1261>:
  8c:	83c1                	srli	a5,a5,0x10

0000008e <.LBB1262>:
  8e:	00f71023          	sh	a5,0(a4)

00000092 <.LBE1262>:
  92:	00d9c783          	lbu	a5,13(s3)
  96:	00c9c703          	lbu	a4,12(s3)
  9a:	4595                	li	a1,5
  9c:	07a2                	slli	a5,a5,0x8
  9e:	8fd9                	or	a5,a5,a4

000000a0 <.LBB1263>:
  a0:	09448713          	addi	a4,s1,148
  a4:	9722                	add	a4,a4,s0
  a6:	00f71023          	sh	a5,0(a4)

000000aa <.LBE1263>:
  aa:	00f9c783          	lbu	a5,15(s3)
  ae:	00e9c703          	lbu	a4,14(s3)
  b2:	07a2                	slli	a5,a5,0x8
  b4:	8fd9                	or	a5,a5,a4

000000b6 <.LBB1265>:
  b6:	09648713          	addi	a4,s1,150
  ba:	9722                	add	a4,a4,s0
  bc:	00f71023          	sh	a5,0(a4)

000000c0 <.LBE1265>:
  c0:	0119c783          	lbu	a5,17(s3)
  c4:	0109c703          	lbu	a4,16(s3)
  c8:	07a2                	slli	a5,a5,0x8
  ca:	8fd9                	or	a5,a5,a4

000000cc <.LBB1267>:
  cc:	09848713          	addi	a4,s1,152
  d0:	9722                	add	a4,a4,s0
  d2:	00f71023          	sh	a5,0(a4)

000000d6 <.LBE1267>:
  d6:	0129c703          	lbu	a4,18(s3)

000000da <.LBB1269>:
  da:	09a48793          	addi	a5,s1,154
  de:	97a2                	add	a5,a5,s0
  e0:	00e79023          	sh	a4,0(a5)

000000e4 <.LBE1269>:
  e4:	000007b7          	lui	a5,0x0
  e8:	02c7c703          	lbu	a4,44(a5) # 2c <.LVL419>

000000ec <.LBB1271>:
  ec:	0a048793          	addi	a5,s1,160
  f0:	97a2                	add	a5,a5,s0
  f2:	00e79023          	sh	a4,0(a5)

000000f6 <.LBB1273>:
  f6:	00095783          	lhu	a5,0(s2)
  fa:	6709                	lui	a4,0x2
  fc:	07d2                	slli	a5,a5,0x14
  fe:	83d1                	srli	a5,a5,0x14
 100:	8fd9                	or	a5,a5,a4
 102:	00f91023          	sh	a5,0(s2)

00000106 <.LBB1274>:
 106:	00095783          	lhu	a5,0(s2)

0000010a <.LBE1274>:
 10a:	01f6f713          	andi	a4,a3,31

0000010e <.LBB1277>:
 10e:	07c2                	slli	a5,a5,0x10
 110:	83c1                	srli	a5,a5,0x10
 112:	9b81                	andi	a5,a5,-32
 114:	8fd9                	or	a5,a5,a4
 116:	00f91023          	sh	a5,0(s2)

0000011a <.LBB1278>:
 11a:	01c9d703          	lhu	a4,28(s3)

0000011e <.LBB1280>:
 11e:	0aa48793          	addi	a5,s1,170
 122:	97a2                	add	a5,a5,s0
 124:	00e79023          	sh	a4,0(a5)

00000128 <.LBB1282>:
 128:	01e9d703          	lhu	a4,30(s3)

0000012c <.LBB1284>:
 12c:	0ac48793          	addi	a5,s1,172
 130:	97a2                	add	a5,a5,s0
 132:	00e79023          	sh	a4,0(a5)

00000136 <.LBE1284>:
 136:	00000097          	auipc	ra,0x0
 13a:	000080e7          	jalr	ra # 136 <.LBE1284>

0000013e <.LVL443>:
 13e:	0209c783          	lbu	a5,32(s3)
 142:	0522                	slli	a0,a0,0x8

00000144 <.LBB1286>:
 144:	0e648713          	addi	a4,s1,230

00000148 <.LBE1286>:
 148:	8d5d                	or	a0,a0,a5
 14a:	0542                	slli	a0,a0,0x10

0000014c <.LBB1290>:
 14c:	0ae48793          	addi	a5,s1,174
 150:	97a2                	add	a5,a5,s0

00000152 <.LBE1290>:
 152:	8141                	srli	a0,a0,0x10

00000154 <.LBB1293>:
 154:	00a79023          	sh	a0,0(a5)

00000158 <.LBB1294>:
 158:	00095783          	lhu	a5,0(s2)

0000015c <.LBB1297>:
 15c:	9722                	add	a4,a4,s0

0000015e <.LBE1297>:
 15e:	46a2                	lw	a3,8(sp)

00000160 <.LBB1298>:
 160:	07c2                	slli	a5,a5,0x10
 162:	83c1                	srli	a5,a5,0x10
 164:	eff7f793          	andi	a5,a5,-257
 168:	07c2                	slli	a5,a5,0x10
 16a:	83c1                	srli	a5,a5,0x10
 16c:	00f91023          	sh	a5,0(s2)

00000170 <.LBB1299>:
 170:	00095783          	lhu	a5,0(s2)

00000174 <.LBE1299>:
 174:	4632                	lw	a2,12(sp)
 176:	85ce                	mv	a1,s3

00000178 <.LBB1302>:
 178:	07c2                	slli	a5,a5,0x10
 17a:	83c1                	srli	a5,a5,0x10
 17c:	dff7f793          	andi	a5,a5,-513
 180:	07c2                	slli	a5,a5,0x10
 182:	83c1                	srli	a5,a5,0x10
 184:	00f91023          	sh	a5,0(s2)

00000188 <.LBB1303>:
 188:	00095783          	lhu	a5,0(s2)

0000018c <.LBE1303>:
 18c:	8552                	mv	a0,s4

0000018e <.LBB1306>:
 18e:	07c2                	slli	a5,a5,0x10
 190:	83c1                	srli	a5,a5,0x10
 192:	bff7f793          	andi	a5,a5,-1025
 196:	07c2                	slli	a5,a5,0x10
 198:	83c1                	srli	a5,a5,0x10
 19a:	00f91023          	sh	a5,0(s2)

0000019e <.LBB1307>:
 19e:	09c48793          	addi	a5,s1,156
 1a2:	97a2                	add	a5,a5,s0
 1a4:	00079023          	sh	zero,0(a5)

000001a8 <.LBB1309>:
 1a8:	00075783          	lhu	a5,0(a4) # 2000 <.LASF721+0xa>
 1ac:	07c2                	slli	a5,a5,0x10
 1ae:	83c1                	srli	a5,a5,0x10
 1b0:	f7f7f793          	andi	a5,a5,-129
 1b4:	07c2                	slli	a5,a5,0x10
 1b6:	83c1                	srli	a5,a5,0x10
 1b8:	00f71023          	sh	a5,0(a4)

000001bc <.LBB1310>:
 1bc:	0dc48793          	addi	a5,s1,220
 1c0:	97a2                	add	a5,a5,s0
 1c2:	00079023          	sh	zero,0(a5)

000001c6 <.LBB1312>:
 1c6:	0de48793          	addi	a5,s1,222
 1ca:	97a2                	add	a5,a5,s0
 1cc:	00079023          	sh	zero,0(a5)

000001d0 <.LBB1314>:
 1d0:	0e048793          	addi	a5,s1,224
 1d4:	97a2                	add	a5,a5,s0
 1d6:	00079023          	sh	zero,0(a5)

000001da <.LBB1316>:
 1da:	0e248793          	addi	a5,s1,226
 1de:	97a2                	add	a5,a5,s0
 1e0:	00079023          	sh	zero,0(a5)

000001e4 <.LBB1318>:
 1e4:	0e448793          	addi	a5,s1,228
 1e8:	97a2                	add	a5,a5,s0
 1ea:	00079023          	sh	zero,0(a5)

000001ee <.LBE1318>:
 1ee:	00000097          	auipc	ra,0x0
 1f2:	000080e7          	jalr	ra # 1ee <.LBE1318>

000001f6 <.LVL456>:
 1f6:	466d                	li	a2,27
 1f8:	14800593          	li	a1,328
 1fc:	89aa                	mv	s3,a0

000001fe <.LVL457>:
 1fe:	00000097          	auipc	ra,0x0
 202:	000080e7          	jalr	ra # 1fe <.LVL457>

00000206 <.LVL458>:
 206:	854e                	mv	a0,s3
 208:	14800613          	li	a2,328
 20c:	14800593          	li	a1,328
 210:	00000097          	auipc	ra,0x0
 214:	000080e7          	jalr	ra # 210 <.LVL458+0xa>

00000218 <.LBB1320>:
 218:	0a848793          	addi	a5,s1,168
 21c:	97a2                	add	a5,a5,s0
 21e:	0007d703          	lhu	a4,0(a5)

00000222 <.LBB1323>:
 222:	0a648793          	addi	a5,s1,166
 226:	97a2                	add	a5,a5,s0

00000228 <.LBB1326>:
 228:	0742                	slli	a4,a4,0x10
 22a:	8341                	srli	a4,a4,0x10

0000022c <.LBB1327>:
 22c:	00e79023          	sh	a4,0(a5)

00000230 <.LBB1328>:
 230:	0b048793          	addi	a5,s1,176
 234:	97a2                	add	a5,a5,s0
 236:	00079023          	sh	zero,0(a5)

0000023a <.LBB1330>:
 23a:	0b248793          	addi	a5,s1,178
 23e:	97a2                	add	a5,a5,s0
 240:	00079023          	sh	zero,0(a5)

00000244 <.LBB1332>:
 244:	0cc48793          	addi	a5,s1,204
 248:	97a2                	add	a5,a5,s0
 24a:	00079023          	sh	zero,0(a5)

0000024e <.LBB1334>:
 24e:	0ce48793          	addi	a5,s1,206
 252:	97a2                	add	a5,a5,s0
 254:	00079023          	sh	zero,0(a5)

00000258 <.LBB1336>:
 258:	0d048793          	addi	a5,s1,208
 25c:	97a2                	add	a5,a5,s0
 25e:	00079023          	sh	zero,0(a5)

00000262 <.LBB1338>:
 262:	0d248793          	addi	a5,s1,210
 266:	97a2                	add	a5,a5,s0
 268:	00079023          	sh	zero,0(a5)

0000026c <.LBB1340>:
 26c:	0d448793          	addi	a5,s1,212
 270:	97a2                	add	a5,a5,s0
 272:	00079023          	sh	zero,0(a5)

00000276 <.LBB1342>:
 276:	0d648793          	addi	a5,s1,214
 27a:	97a2                	add	a5,a5,s0
 27c:	00079023          	sh	zero,0(a5)

00000280 <.LBB1344>:
 280:	0d848793          	addi	a5,s1,216
 284:	97a2                	add	a5,a5,s0

00000286 <.LBB1347>:
 286:	0a448493          	addi	s1,s1,164

0000028a <.LBB1350>:
 28a:	00079023          	sh	zero,0(a5)

0000028e <.LBB1351>:
 28e:	94a2                	add	s1,s1,s0
 290:	00049023          	sh	zero,0(s1)

00000294 <.LBB1352>:
 294:	00095703          	lhu	a4,0(s2)
 298:	77fd                	lui	a5,0xfffff
 29a:	7ff78793          	addi	a5,a5,2047 # fffff7ff <.LASF681+0xffffbd04>
 29e:	8ff9                	and	a5,a5,a4

000002a0 <.LBE1352>:
 2a0:	854e                	mv	a0,s3

000002a2 <.LBB1355>:
 2a2:	00f91023          	sh	a5,0(s2)

000002a6 <.LBE1355>:
 2a6:	4585                	li	a1,1
 2a8:	00000097          	auipc	ra,0x0
 2ac:	000080e7          	jalr	ra # 2a8 <.LBE1355+0x2>

000002b0 <.LVL473>:
 2b0:	50b2                	lw	ra,44(sp)
 2b2:	5422                	lw	s0,40(sp)
 2b4:	854e                	mv	a0,s3
 2b6:	5492                	lw	s1,36(sp)
 2b8:	5902                	lw	s2,32(sp)
 2ba:	49f2                	lw	s3,28(sp)

000002bc <.LVL474>:
 2bc:	4a62                	lw	s4,24(sp)

000002be <.LVL475>:
 2be:	6145                	addi	sp,sp,48

000002c0 <.LVL476>:
 2c0:	8082                	ret

Disassembly of section .text.lld_ch_map_ind:

00000000 <lld_ch_map_ind>:
   0:	4789                	li	a5,2
   2:	06f506a3          	sb	a5,109(a0)
   6:	07e54783          	lbu	a5,126(a0)
   a:	06055683          	lhu	a3,96(a0)
   e:	04b51e23          	sh	a1,92(a0)
  12:	0017e713          	ori	a4,a5,1
  16:	06e50f23          	sb	a4,126(a0)
  1a:	fff58713          	addi	a4,a1,-1
  1e:	0742                	slli	a4,a4,0x10
  20:	8341                	srli	a4,a4,0x10
  22:	00e69763          	bne	a3,a4,30 <.L121>
  26:	0097e793          	ori	a5,a5,9
  2a:	06f50f23          	sb	a5,126(a0)
  2e:	8082                	ret

00000030 <.L121>:
  30:	02b69663          	bne	a3,a1,5c <.L124>
  34:	1141                	addi	sp,sp,-16
  36:	c422                	sw	s0,8(sp)
  38:	c606                	sw	ra,12(sp)
  3a:	842a                	mv	s0,a0
  3c:	07455503          	lhu	a0,116(a0)

00000040 <.LVL478>:
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.LVL478>

00000048 <.LVL479>:
  48:	07e44783          	lbu	a5,126(s0)
  4c:	0087e793          	ori	a5,a5,8
  50:	06f40f23          	sb	a5,126(s0)
  54:	40b2                	lw	ra,12(sp)
  56:	4422                	lw	s0,8(sp)

00000058 <.LVL480>:
  58:	0141                	addi	sp,sp,16
  5a:	8082                	ret

0000005c <.L124>:
  5c:	8082                	ret

Disassembly of section .text.lld_con_update_ind:

00000000 <lld_con_update_ind>:
   0:	87ae                	mv	a5,a1
   2:	85aa                	mv	a1,a0

00000004 <.LVL483>:
   4:	853e                	mv	a0,a5

00000006 <.LVL484>:
   6:	00000317          	auipc	t1,0x0
   a:	00030067          	jr	t1 # 6 <.LVL484>

Disassembly of section .text.lld_crypt_isr:

00000000 <lld_crypt_isr>:
   0:	4505                	li	a0,1
   2:	00000317          	auipc	t1,0x0
   6:	00030067          	jr	t1 # 2 <lld_crypt_isr+0x2>

Disassembly of section .text.lld_test_mode_tx:

00000000 <lld_test_mode_tx>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	c64e                	sw	s3,12(sp)
   6:	c452                	sw	s4,8(sp)
   8:	4681                	li	a3,0
   a:	8a2e                	mv	s4,a1
   c:	89aa                	mv	s3,a0
   e:	4581                	li	a1,0

00000010 <.LVL488>:
  10:	84b2                	mv	s1,a2
  12:	4509                	li	a0,2

00000014 <.LVL489>:
  14:	4605                	li	a2,1

00000016 <.LVL490>:
  16:	ce06                	sw	ra,28(sp)
  18:	cc22                	sw	s0,24(sp)
  1a:	c84a                	sw	s2,16(sp)
  1c:	00000097          	auipc	ra,0x0
  20:	000080e7          	jalr	ra # 1c <.LVL490+0x6>

00000024 <.LVL491>:
  24:	4789                	li	a5,2
  26:	06f50da3          	sb	a5,123(a0)

0000002a <.LBB1356>:
  2a:	280006b7          	lui	a3,0x28000
  2e:	0e06a783          	lw	a5,224(a3) # 280000e0 <.LASF681+0x27ffc5e5>
  32:	777d                	lui	a4,0xfffff
  34:	7ff70713          	addi	a4,a4,2047 # fffff7ff <.LASF681+0xffffbd04>
  38:	8ff9                	and	a5,a5,a4
  3a:	6705                	lui	a4,0x1
  3c:	80070713          	addi	a4,a4,-2048 # 800 <.LLST497+0x10>
  40:	8fd9                	or	a5,a5,a4
  42:	0ef6a023          	sw	a5,224(a3)

00000046 <.LBB1359>:
  46:	28008437          	lui	s0,0x28008
  4a:	18041223          	sh	zero,388(s0) # 28008184 <.LASF681+0x28004689>

0000004e <.LBB1362>:
  4e:	18041323          	sh	zero,390(s0)

00000052 <.LBB1365>:
  52:	18041423          	sh	zero,392(s0)

00000056 <.LBB1368>:
  56:	47f1                	li	a5,28
  58:	14f41323          	sh	a5,326(s0)

0000005c <.LBB1371>:
  5c:	6791                	lui	a5,0x4
  5e:	12978793          	addi	a5,a5,297 # 4129 <.LASF681+0x62e>
  62:	14f41623          	sh	a5,332(s0)

00000066 <.LBB1374>:
  66:	679d                	lui	a5,0x7
  68:	17678793          	addi	a5,a5,374 # 7176 <.LASF681+0x367b>
  6c:	14f41723          	sh	a5,334(s0)

00000070 <.LBB1377>:
  70:	15845783          	lhu	a5,344(s0)

00000074 <.LBE1377>:
  74:	892a                	mv	s2,a0

00000076 <.LBB1381>:
  76:	8552                	mv	a0,s4

00000078 <.LBB1389>:
  78:	07c2                	slli	a5,a5,0x10
  7a:	83c1                	srli	a5,a5,0x10
  7c:	f007f793          	andi	a5,a5,-256
  80:	00f7e793          	ori	a5,a5,15
  84:	14f41c23          	sh	a5,344(s0)

00000088 <.LBB1390>:
  88:	14041423          	sh	zero,328(s0)

0000008c <.LBB1392>:
  8c:	19e45783          	lhu	a5,414(s0)
  90:	07c2                	slli	a5,a5,0x10
  92:	83c1                	srli	a5,a5,0x10
  94:	f7f7f793          	andi	a5,a5,-129
  98:	07c2                	slli	a5,a5,0x10
  9a:	83c1                	srli	a5,a5,0x10
  9c:	18f41f23          	sh	a5,414(s0)

000000a0 <.LBB1394>:
  a0:	14a45783          	lhu	a5,330(s0)
  a4:	07c2                	slli	a5,a5,0x10
  a6:	83c1                	srli	a5,a5,0x10
  a8:	9b81                	andi	a5,a5,-32
  aa:	0027e793          	ori	a5,a5,2
  ae:	14f41523          	sh	a5,330(s0)

000000b2 <.LBB1396>:
  b2:	18041a23          	sh	zero,404(s0)

000000b6 <.LBB1398>:
  b6:	18041b23          	sh	zero,406(s0)

000000ba <.LBB1400>:
  ba:	18041c23          	sh	zero,408(s0)

000000be <.LBB1402>:
  be:	18041d23          	sh	zero,410(s0)

000000c2 <.LBB1404>:
  c2:	18041e23          	sh	zero,412(s0)

000000c6 <.LBE1404>:
  c6:	00000097          	auipc	ra,0x0
  ca:	000080e7          	jalr	ra # c6 <.LBE1404>

000000ce <.LBB1406>:
  ce:	15645783          	lhu	a5,342(s0)
  d2:	07c2                	slli	a5,a5,0x10
  d4:	83c1                	srli	a5,a5,0x10
  d6:	fc07f793          	andi	a5,a5,-64
  da:	8d5d                	or	a0,a0,a5

000000dc <.LVL504>:
  dc:	0542                	slli	a0,a0,0x10
  de:	8141                	srli	a0,a0,0x10
  e0:	14a41b23          	sh	a0,342(s0)

000000e4 <.LBE1406>:
  e4:	cc85                	beqz	s1,11c <.L130>
  e6:	4791                	li	a5,4
  e8:	06f49563          	bne	s1,a5,152 <.L131>

000000ec <.LBB1408>:
  ec:	1a045783          	lhu	a5,416(s0)

000000f0 <.LBE1408>:
  f0:	448d                	li	s1,3

000000f2 <.LBB1411>:
  f2:	07c2                	slli	a5,a5,0x10
  f4:	83c1                	srli	a5,a5,0x10
  f6:	fcf7f793          	andi	a5,a5,-49
  fa:	0107e793          	ori	a5,a5,16
  fe:	1af41023          	sh	a5,416(s0)

00000102 <.L132>:
 102:	28008737          	lui	a4,0x28008
 106:	1a075783          	lhu	a5,416(a4) # 280081a0 <.LASF681+0x280046a5>

0000010a <.LBE1412>:
 10a:	14fd                	addi	s1,s1,-1

0000010c <.LBB1415>:
 10c:	0ff4f493          	andi	s1,s1,255
 110:	07c2                	slli	a5,a5,0x10
 112:	83c1                	srli	a5,a5,0x10
 114:	9bf1                	andi	a5,a5,-4
 116:	8cdd                	or	s1,s1,a5
 118:	1a971023          	sh	s1,416(a4)

0000011c <.L130>:
 11c:	85ce                	mv	a1,s3
 11e:	854a                	mv	a0,s2
 120:	00000097          	auipc	ra,0x0
 124:	000080e7          	jalr	ra # 120 <.L130+0x4>

00000128 <.LVL510>:
 128:	02890513          	addi	a0,s2,40
 12c:	00000097          	auipc	ra,0x0
 130:	000080e7          	jalr	ra # 12c <.LVL510+0x4>

00000134 <.LVL511>:
 134:	854a                	mv	a0,s2
 136:	4585                	li	a1,1
 138:	00000097          	auipc	ra,0x0
 13c:	000080e7          	jalr	ra # 138 <.LVL511+0x4>

00000140 <.LVL512>:
 140:	40f2                	lw	ra,28(sp)
 142:	4462                	lw	s0,24(sp)
 144:	854a                	mv	a0,s2
 146:	44d2                	lw	s1,20(sp)
 148:	4942                	lw	s2,16(sp)

0000014a <.LVL513>:
 14a:	49b2                	lw	s3,12(sp)

0000014c <.LVL514>:
 14c:	4a22                	lw	s4,8(sp)
 14e:	6105                	addi	sp,sp,32
 150:	8082                	ret

00000152 <.L131>:
 152:	478d                	li	a5,3
 154:	faf497e3          	bne	s1,a5,102 <.L132>

00000158 <.LBB1416>:
 158:	1a045783          	lhu	a5,416(s0)
 15c:	07c2                	slli	a5,a5,0x10
 15e:	83c1                	srli	a5,a5,0x10
 160:	fcf7f793          	andi	a5,a5,-49
 164:	07c2                	slli	a5,a5,0x10
 166:	83c1                	srli	a5,a5,0x10
 168:	1af41023          	sh	a5,416(s0)
 16c:	bf59                	j	102 <.L132>

Disassembly of section .text.lld_test_mode_rx:

00000000 <lld_test_mode_rx>:
   0:	1141                	addi	sp,sp,-16
   2:	c04a                	sw	s2,0(sp)
   4:	4681                	li	a3,0
   6:	892a                	mv	s2,a0
   8:	4605                	li	a2,1
   a:	4581                	li	a1,0
   c:	4509                	li	a0,2

0000000e <.LVL518>:
   e:	c606                	sw	ra,12(sp)
  10:	c422                	sw	s0,8(sp)
  12:	c226                	sw	s1,4(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <.LVL518+0x6>

0000001c <.LVL519>:
  1c:	4789                	li	a5,2
  1e:	06f50da3          	sb	a5,123(a0)

00000022 <.LBB1418>:
  22:	280007b7          	lui	a5,0x28000
  26:	0e07a703          	lw	a4,224(a5) # 280000e0 <.LASF681+0x27ffc5e5>
  2a:	f80006b7          	lui	a3,0xf8000
  2e:	16fd                	addi	a3,a3,-1
  30:	8f75                	and	a4,a4,a3
  32:	080006b7          	lui	a3,0x8000
  36:	8f55                	or	a4,a4,a3
  38:	0ee7a023          	sw	a4,224(a5)

0000003c <.LBB1421>:
  3c:	28008437          	lui	s0,0x28008
  40:	18041523          	sh	zero,394(s0) # 2800818a <.LASF681+0x2800468f>

00000044 <.LBB1424>:
  44:	18041623          	sh	zero,396(s0)

00000048 <.LBB1427>:
  48:	18041723          	sh	zero,398(s0)

0000004c <.LBB1430>:
  4c:	4775                	li	a4,29

0000004e <.LBB1434>:
  4e:	7661                	lui	a2,0xffff8

00000050 <.LBB1438>:
  50:	14e41323          	sh	a4,326(s0)

00000054 <.LBB1439>:
  54:	04b60713          	addi	a4,a2,75 # ffff804b <.LASF681+0xffff4550>
  58:	14e41d23          	sh	a4,346(s0)

0000005c <.LBB1440>:
  5c:	1ac7a703          	lw	a4,428(a5)

00000060 <.LBE1440>:
  60:	000006b7          	lui	a3,0x0
  64:	84aa                	mv	s1,a0

00000066 <.LBB1443>:
  66:	03f77713          	andi	a4,a4,63

0000006a <.LBE1449>:
  6a:	00e68023          	sb	a4,0(a3) # 0 <lld_test_mode_rx>

0000006e <.LBB1450>:
  6e:	1ac7a703          	lw	a4,428(a5)

00000072 <.LBB1453>:
  72:	000006b7          	lui	a3,0x0

00000076 <.LBB1457>:
  76:	10000537          	lui	a0,0x10000

0000007a <.LBB1460>:
  7a:	fc077713          	andi	a4,a4,-64
  7e:	00f76713          	ori	a4,a4,15
  82:	1ae7a623          	sw	a4,428(a5)

00000086 <.LBB1461>:
  86:	5fb8                	lw	a4,120(a5)

00000088 <.LBE1461>:
  88:	400035b7          	lui	a1,0x40003

0000008c <.LBB1462>:
  8c:	167d                	addi	a2,a2,-1

0000008e <.LBB1466>:
  8e:	8371                	srli	a4,a4,0x1c
  90:	00e68023          	sb	a4,0(a3) # 0 <lld_test_mode_rx>

00000094 <.LBB1467>:
  94:	5fb4                	lw	a3,120(a5)
  96:	fff50713          	addi	a4,a0,-1 # fffffff <.LASF681+0xfffc504>
  9a:	8ef9                	and	a3,a3,a4
  9c:	f0000737          	lui	a4,0xf0000
  a0:	8ed9                	or	a3,a3,a4
  a2:	dfb4                	sw	a3,120(a5)

000000a4 <.LBE1467>:
  a4:	8505a703          	lw	a4,-1968(a1) # 40002850 <.LASF681+0x3fffed55>

000000a8 <.LVL526>:
  a8:	d00006b7          	lui	a3,0xd0000
  ac:	16fd                	addi	a3,a3,-1
  ae:	8f75                	and	a4,a4,a3
  b0:	8f49                	or	a4,a4,a0
  b2:	84e5a823          	sw	a4,-1968(a1)

000000b6 <.LBB1468>:
  b6:	4398                	lw	a4,0(a5)

000000b8 <.LBE1468>:
  b8:	854a                	mv	a0,s2

000000ba <.LBB1469>:
  ba:	8e79                	and	a2,a2,a4
  bc:	c390                	sw	a2,0(a5)

000000be <.LBB1470>:
  be:	6791                	lui	a5,0x4
  c0:	12978793          	addi	a5,a5,297 # 4129 <.LASF681+0x62e>
  c4:	14f41623          	sh	a5,332(s0)

000000c8 <.LBB1472>:
  c8:	679d                	lui	a5,0x7
  ca:	17678793          	addi	a5,a5,374 # 7176 <.LASF681+0x367b>
  ce:	14f41723          	sh	a5,334(s0)

000000d2 <.LBB1474>:
  d2:	14041423          	sh	zero,328(s0)

000000d6 <.LBB1476>:
  d6:	0ff00793          	li	a5,255
  da:	16f41423          	sh	a5,360(s0)

000000de <.LBB1478>:
  de:	16041523          	sh	zero,362(s0)

000000e2 <.LBB1480>:
  e2:	19e45783          	lhu	a5,414(s0)
  e6:	07c2                	slli	a5,a5,0x10
  e8:	83c1                	srli	a5,a5,0x10
  ea:	f7f7f793          	andi	a5,a5,-129
  ee:	07c2                	slli	a5,a5,0x10
  f0:	83c1                	srli	a5,a5,0x10
  f2:	18f41f23          	sh	a5,414(s0)

000000f6 <.LBB1482>:
  f6:	14a45783          	lhu	a5,330(s0)
  fa:	07c2                	slli	a5,a5,0x10
  fc:	83c1                	srli	a5,a5,0x10
  fe:	9b81                	andi	a5,a5,-32
 100:	0027e793          	ori	a5,a5,2
 104:	14f41523          	sh	a5,330(s0)

00000108 <.LBB1484>:
 108:	18041a23          	sh	zero,404(s0)

0000010c <.LBB1486>:
 10c:	18041b23          	sh	zero,406(s0)

00000110 <.LBB1488>:
 110:	18041c23          	sh	zero,408(s0)

00000114 <.LBB1490>:
 114:	18041d23          	sh	zero,410(s0)

00000118 <.LBB1492>:
 118:	18041e23          	sh	zero,412(s0)

0000011c <.LBE1492>:
 11c:	00000097          	auipc	ra,0x0
 120:	000080e7          	jalr	ra # 11c <.LBE1492>

00000124 <.LBB1494>:
 124:	15645783          	lhu	a5,342(s0)
 128:	07c2                	slli	a5,a5,0x10
 12a:	83c1                	srli	a5,a5,0x10
 12c:	fc07f793          	andi	a5,a5,-64
 130:	8d5d                	or	a0,a0,a5

00000132 <.LVL545>:
 132:	0542                	slli	a0,a0,0x10
 134:	8141                	srli	a0,a0,0x10
 136:	14a41b23          	sh	a0,342(s0)

0000013a <.LBE1494>:
 13a:	000007b7          	lui	a5,0x0
 13e:	0047a783          	lw	a5,4(a5) # 4 <lld_test_mode_rx+0x4>
 142:	4501                	li	a0,0
 144:	9782                	jalr	a5

00000146 <.LVL547>:
 146:	8526                	mv	a0,s1
 148:	4585                	li	a1,1
 14a:	00000097          	auipc	ra,0x0
 14e:	000080e7          	jalr	ra # 14a <.LVL547+0x4>

00000152 <.LVL548>:
 152:	40b2                	lw	ra,12(sp)
 154:	4422                	lw	s0,8(sp)
 156:	8526                	mv	a0,s1
 158:	4902                	lw	s2,0(sp)
 15a:	4492                	lw	s1,4(sp)

0000015c <.LVL549>:
 15c:	0141                	addi	sp,sp,16
 15e:	8082                	ret

Disassembly of section .text.lld_enh_test_mode_rx:

00000000 <lld_enh_test_mode_rx>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	c64e                	sw	s3,12(sp)
   6:	4605                	li	a2,1

00000008 <.LVL551>:
   8:	89aa                	mv	s3,a0
   a:	84ae                	mv	s1,a1
   c:	4681                	li	a3,0
   e:	4581                	li	a1,0

00000010 <.LVL552>:
  10:	4509                	li	a0,2

00000012 <.LVL553>:
  12:	ce06                	sw	ra,28(sp)
  14:	cc22                	sw	s0,24(sp)
  16:	c84a                	sw	s2,16(sp)
  18:	00000097          	auipc	ra,0x0
  1c:	000080e7          	jalr	ra # 18 <.LVL553+0x6>

00000020 <.LVL554>:
  20:	4789                	li	a5,2
  22:	06f50da3          	sb	a5,123(a0)

00000026 <.LBB1496>:
  26:	28000737          	lui	a4,0x28000
  2a:	0e072783          	lw	a5,224(a4) # 280000e0 <.LASF681+0x27ffc5e5>
  2e:	f80006b7          	lui	a3,0xf8000
  32:	16fd                	addi	a3,a3,-1
  34:	8ff5                	and	a5,a5,a3
  36:	080006b7          	lui	a3,0x8000
  3a:	8fd5                	or	a5,a5,a3
  3c:	0ef72023          	sw	a5,224(a4)

00000040 <.LBB1499>:
  40:	28008437          	lui	s0,0x28008
  44:	18041523          	sh	zero,394(s0) # 2800818a <.LASF681+0x2800468f>

00000048 <.LBB1502>:
  48:	18041623          	sh	zero,396(s0)

0000004c <.LBB1505>:
  4c:	18041723          	sh	zero,398(s0)

00000050 <.LBB1508>:
  50:	47f5                	li	a5,29
  52:	14f41323          	sh	a5,326(s0)

00000056 <.LBB1511>:
  56:	77e1                	lui	a5,0xffff8
  58:	04b78693          	addi	a3,a5,75 # ffff804b <.LASF681+0xffff4550>
  5c:	14d41d23          	sh	a3,346(s0)

00000060 <.LBB1514>:
  60:	4314                	lw	a3,0(a4)
  62:	17fd                	addi	a5,a5,-1

00000064 <.LBE1514>:
  64:	892a                	mv	s2,a0

00000066 <.LBB1517>:
  66:	8ff5                	and	a5,a5,a3
  68:	c31c                	sw	a5,0(a4)

0000006a <.LBB1524>:
  6a:	6791                	lui	a5,0x4
  6c:	12978793          	addi	a5,a5,297 # 4129 <.LASF681+0x62e>
  70:	14f41623          	sh	a5,332(s0)

00000074 <.LBB1526>:
  74:	679d                	lui	a5,0x7
  76:	17678793          	addi	a5,a5,374 # 7176 <.LASF681+0x367b>
  7a:	14f41723          	sh	a5,334(s0)

0000007e <.LBB1528>:
  7e:	14041423          	sh	zero,328(s0)

00000082 <.LBB1530>:
  82:	0ff00793          	li	a5,255
  86:	16f41423          	sh	a5,360(s0)

0000008a <.LBB1532>:
  8a:	16041523          	sh	zero,362(s0)

0000008e <.LBB1534>:
  8e:	19e45783          	lhu	a5,414(s0)

00000092 <.LBE1534>:
  92:	854e                	mv	a0,s3

00000094 <.LVL562>:
  94:	14fd                	addi	s1,s1,-1

00000096 <.LBB1537>:
  96:	07c2                	slli	a5,a5,0x10
  98:	83c1                	srli	a5,a5,0x10
  9a:	f7f7f793          	andi	a5,a5,-129
  9e:	07c2                	slli	a5,a5,0x10
  a0:	83c1                	srli	a5,a5,0x10
  a2:	18f41f23          	sh	a5,414(s0)

000000a6 <.LBB1538>:
  a6:	14a45783          	lhu	a5,330(s0)

000000aa <.LBB1541>:
  aa:	0ff4f493          	andi	s1,s1,255
  ae:	04a2                	slli	s1,s1,0x8

000000b0 <.LBB1544>:
  b0:	07c2                	slli	a5,a5,0x10
  b2:	83c1                	srli	a5,a5,0x10
  b4:	9b81                	andi	a5,a5,-32
  b6:	0027e793          	ori	a5,a5,2
  ba:	14f41523          	sh	a5,330(s0)

000000be <.LBB1545>:
  be:	18041a23          	sh	zero,404(s0)

000000c2 <.LBB1547>:
  c2:	18041b23          	sh	zero,406(s0)

000000c6 <.LBB1549>:
  c6:	18041c23          	sh	zero,408(s0)

000000ca <.LBB1551>:
  ca:	18041d23          	sh	zero,410(s0)

000000ce <.LBB1553>:
  ce:	18041e23          	sh	zero,412(s0)

000000d2 <.LBE1553>:
  d2:	00000097          	auipc	ra,0x0
  d6:	000080e7          	jalr	ra # d2 <.LBE1553>

000000da <.LBB1555>:
  da:	15645783          	lhu	a5,342(s0)
  de:	07c2                	slli	a5,a5,0x10
  e0:	83c1                	srli	a5,a5,0x10
  e2:	fc07f793          	andi	a5,a5,-64
  e6:	8d5d                	or	a0,a0,a5

000000e8 <.LVL571>:
  e8:	0542                	slli	a0,a0,0x10
  ea:	8141                	srli	a0,a0,0x10
  ec:	14a41b23          	sh	a0,342(s0)

000000f0 <.LBE1555>:
  f0:	400027b7          	lui	a5,0x40002
  f4:	8907a703          	lw	a4,-1904(a5) # 40001890 <.LASF681+0x3fffdd95>
  f8:	4501                	li	a0,0
  fa:	f0077713          	andi	a4,a4,-256
  fe:	88e7a823          	sw	a4,-1904(a5)
 102:	8907a703          	lw	a4,-1904(a5)
 106:	08476713          	ori	a4,a4,132
 10a:	88e7a823          	sw	a4,-1904(a5)

0000010e <.LBB1557>:
 10e:	1a045783          	lhu	a5,416(s0)
 112:	07c2                	slli	a5,a5,0x10
 114:	83c1                	srli	a5,a5,0x10
 116:	cff7f793          	andi	a5,a5,-769
 11a:	8cdd                	or	s1,s1,a5
 11c:	1a941023          	sh	s1,416(s0)

00000120 <.LBE1557>:
 120:	000007b7          	lui	a5,0x0
 124:	0047a783          	lw	a5,4(a5) # 4 <lld_enh_test_mode_rx+0x4>
 128:	9782                	jalr	a5

0000012a <.LVL575>:
 12a:	854a                	mv	a0,s2
 12c:	4585                	li	a1,1
 12e:	00000097          	auipc	ra,0x0
 132:	000080e7          	jalr	ra # 12e <.LVL575+0x4>

00000136 <.LVL576>:
 136:	40f2                	lw	ra,28(sp)
 138:	4462                	lw	s0,24(sp)
 13a:	854a                	mv	a0,s2
 13c:	44d2                	lw	s1,20(sp)
 13e:	4942                	lw	s2,16(sp)

00000140 <.LVL577>:
 140:	49b2                	lw	s3,12(sp)
 142:	6105                	addi	sp,sp,32
 144:	8082                	ret

Disassembly of section .text.lld_test_stop:

00000000 <lld_test_stop>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	c606                	sw	ra,12(sp)

00000006 <.LBB1561>:
   6:	28000437          	lui	s0,0x28000
   a:	401c                	lw	a5,0(s0)

0000000c <.LBE1561>:
   c:	04000737          	lui	a4,0x4000
  10:	4505                	li	a0,1

00000012 <.LVL579>:
  12:	8fd9                	or	a5,a5,a4

00000014 <.LBB1562>:
  14:	c01c                	sw	a5,0(s0)

00000016 <.LBE1562>:
  16:	000007b7          	lui	a5,0x0
  1a:	0047a783          	lw	a5,4(a5) # 4 <lld_test_stop+0x4>
  1e:	9782                	jalr	a5

00000020 <.LBB1564>:
  20:	0e042023          	sw	zero,224(s0) # 280000e0 <.LASF681+0x27ffc5e5>

00000024 <.LBE1564>:
  24:	40b2                	lw	ra,12(sp)
  26:	4422                	lw	s0,8(sp)
  28:	0141                	addi	sp,sp,16
  2a:	8082                	ret
