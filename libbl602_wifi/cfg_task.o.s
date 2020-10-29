
cfg_task.o:     file format elf32-littleriscv


Disassembly of section .text.dump_cfg_entries:

00000000 <dump_cfg_entries>:
   0:	7139                	addi	sp,sp,-64
   2:	00000537          	lui	a0,0x0
   6:	dc22                	sw	s0,56(sp)
   8:	da26                	sw	s1,52(sp)
   a:	00050513          	mv	a0,a0
   e:	00000437          	lui	s0,0x0
  12:	000004b7          	lui	s1,0x0
  16:	d84a                	sw	s2,48(sp)
  18:	d64e                	sw	s3,44(sp)
  1a:	d452                	sw	s4,40(sp)
  1c:	d256                	sw	s5,36(sp)
  1e:	d05a                	sw	s6,32(sp)
  20:	ce5e                	sw	s7,28(sp)
  22:	cc62                	sw	s8,24(sp)
  24:	de06                	sw	ra,60(sp)
  26:	00040413          	mv	s0,s0
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <dump_cfg_entries+0x2a>

00000032 <.LVL1>:
  32:	00048493          	mv	s1,s1
  36:	00000937          	lui	s2,0x0
  3a:	000009b7          	lui	s3,0x0
  3e:	00000a37          	lui	s4,0x0
  42:	00000ab7          	lui	s5,0x0
  46:	00000b37          	lui	s6,0x0
  4a:	00000bb7          	lui	s7,0x0
  4e:	00000c37          	lui	s8,0x0

00000052 <.L2>:
  52:	02946663          	bltu	s0,s1,7e <.L3>
  56:	00000537          	lui	a0,0x0
  5a:	00050513          	mv	a0,a0
  5e:	00000097          	auipc	ra,0x0
  62:	000080e7          	jalr	ra # 5e <.L2+0xc>

00000066 <.LVL3>:
  66:	50f2                	lw	ra,60(sp)
  68:	5462                	lw	s0,56(sp)

0000006a <.LVL4>:
  6a:	54d2                	lw	s1,52(sp)
  6c:	5942                	lw	s2,48(sp)
  6e:	59b2                	lw	s3,44(sp)
  70:	5a22                	lw	s4,40(sp)
  72:	5a92                	lw	s5,36(sp)
  74:	5b02                	lw	s6,32(sp)
  76:	4bf2                	lw	s7,28(sp)
  78:	4c62                	lw	s8,24(sp)
  7a:	6121                	addi	sp,sp,64
  7c:	8082                	ret

0000007e <.L3>:
  7e:	85a2                	mv	a1,s0
  80:	00090513          	mv	a0,s2
  84:	00000097          	auipc	ra,0x0
  88:	000080e7          	jalr	ra # 84 <.L3+0x6>

0000008c <.LVL6>:
  8c:	400c                	lw	a1,0(s0)
  8e:	00098513          	mv	a0,s3
  92:	0471                	addi	s0,s0,28

00000094 <.LVL7>:
  94:	00000097          	auipc	ra,0x0
  98:	000080e7          	jalr	ra # 94 <.LVL7>

0000009c <.LVL8>:
  9c:	fe845583          	lhu	a1,-24(s0) # ffffffe8 <.LASF169+0xfffff4d6>
  a0:	000a0513          	mv	a0,s4
  a4:	00000097          	auipc	ra,0x0
  a8:	000080e7          	jalr	ra # a4 <.LVL8+0x8>

000000ac <.LVL9>:
  ac:	fea45583          	lhu	a1,-22(s0)
  b0:	000a8513          	mv	a0,s5
  b4:	00000097          	auipc	ra,0x0
  b8:	000080e7          	jalr	ra # b4 <.LVL9+0x8>

000000bc <.LVL10>:
  bc:	fec42583          	lw	a1,-20(s0)
  c0:	000b0513          	mv	a0,s6
  c4:	00000097          	auipc	ra,0x0
  c8:	000080e7          	jalr	ra # c4 <.LVL10+0x8>

000000cc <.LVL11>:
  cc:	fea44583          	lbu	a1,-22(s0)
  d0:	ff042503          	lw	a0,-16(s0)
  d4:	860a                	mv	a2,sp
  d6:	00000097          	auipc	ra,0x0
  da:	000080e7          	jalr	ra # d6 <.LVL11+0xa>

000000de <.LVL12>:
  de:	85aa                	mv	a1,a0
  e0:	000b8513          	mv	a0,s7
  e4:	00000097          	auipc	ra,0x0
  e8:	000080e7          	jalr	ra # e4 <.LVL12+0x6>

000000ec <.LVL13>:
  ec:	858a                	mv	a1,sp
  ee:	000c0513          	mv	a0,s8
  f2:	00000097          	auipc	ra,0x0
  f6:	000080e7          	jalr	ra # f2 <.LVL13+0x6>

000000fa <.LVL14>:
  fa:	00000537          	lui	a0,0x0
  fe:	00050513          	mv	a0,a0
 102:	00000097          	auipc	ra,0x0
 106:	000080e7          	jalr	ra # 102 <.LVL14+0x8>

0000010a <.LVL15>:
 10a:	b7a1                	j	52 <.L2>

Disassembly of section .text.cfg_start_req_handler:

00000000 <cfg_start_req_handler>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	c84a                	sw	s2,16(sp)
   6:	ce06                	sw	ra,28(sp)
   8:	cc22                	sw	s0,24(sp)
   a:	419c                	lw	a5,0(a1)
   c:	8932                	mv	s2,a2
   e:	84b6                	mv	s1,a3
  10:	cb95                	beqz	a5,44 <.L6>
  12:	4709                	li	a4,2
  14:	06f76763          	bltu	a4,a5,82 <.L7>

00000018 <.L8>:
  18:	650d                	lui	a0,0x3
  1a:	864a                	mv	a2,s2
  1c:	85a6                	mv	a1,s1
  1e:	4685                	li	a3,1
  20:	0505                	addi	a0,a0,1
  22:	00000097          	auipc	ra,0x0
  26:	000080e7          	jalr	ra # 22 <.L8+0xa>

0000002a <.LVL18>:
  2a:	00050023          	sb	zero,0(a0) # 3000 <.LASF169+0x24ee>
  2e:	00000097          	auipc	ra,0x0
  32:	000080e7          	jalr	ra # 2e <.LVL18+0x4>

00000036 <.LVL19>:
  36:	40f2                	lw	ra,28(sp)
  38:	4462                	lw	s0,24(sp)
  3a:	44d2                	lw	s1,20(sp)
  3c:	4942                	lw	s2,16(sp)
  3e:	4501                	li	a0,0
  40:	6105                	addi	sp,sp,32
  42:	8082                	ret

00000044 <.L6>:
  44:	842e                	mv	s0,a1
  46:	00c5d603          	lhu	a2,12(a1)

0000004a <.LVL21>:
  4a:	498c                	lw	a1,16(a1)

0000004c <.LVL22>:
  4c:	0074                	addi	a3,sp,12

0000004e <.LVL23>:
  4e:	01440513          	addi	a0,s0,20

00000052 <.LVL24>:
  52:	00000097          	auipc	ra,0x0
  56:	000080e7          	jalr	ra # 52 <.LVL24>

0000005a <.LVL25>:
  5a:	4632                	lw	a2,12(sp)
  5c:	85aa                	mv	a1,a0
  5e:	00000537          	lui	a0,0x0

00000062 <.LVL26>:
  62:	00050513          	mv	a0,a0
  66:	00000097          	auipc	ra,0x0
  6a:	000080e7          	jalr	ra # 66 <.LVL26+0x4>

0000006e <.LVL27>:
  6e:	4450                	lw	a2,12(s0)
  70:	440c                	lw	a1,8(s0)
  72:	4048                	lw	a0,4(s0)
  74:	4701                	li	a4,0
  76:	0074                	addi	a3,sp,12
  78:	00000097          	auipc	ra,0x0
  7c:	000080e7          	jalr	ra # 78 <.LVL27+0xa>

00000080 <.LVL28>:
  80:	bf61                	j	18 <.L8>

00000082 <.L7>:
  82:	00000097          	auipc	ra,0x0
  86:	000080e7          	jalr	ra # 82 <.L7>

0000008a <.LVL30>:
  8a:	b779                	j	18 <.L8>
