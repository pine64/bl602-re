
txl_cfm.o:     file format elf32-littleriscv


Disassembly of section .text.txl_cfm_init:

00000000 <txl_cfm_init>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
   8:	02800613          	li	a2,40
   c:	4581                	li	a1,0
   e:	00040513          	mv	a0,s0
  12:	c606                	sw	ra,12(sp)
  14:	00000097          	auipc	ra,0x0
  18:	000080e7          	jalr	ra # 14 <txl_cfm_init+0x14>

0000001c <.LBB20>:
  1c:	00040513          	mv	a0,s0
  20:	00000097          	auipc	ra,0x0
  24:	000080e7          	jalr	ra # 20 <.LBB20+0x4>

00000028 <.LVL1>:
  28:	00000537          	lui	a0,0x0
  2c:	00850513          	addi	a0,a0,8 # 8 <txl_cfm_init+0x8>
  30:	00000097          	auipc	ra,0x0
  34:	000080e7          	jalr	ra # 30 <.LVL1+0x8>

00000038 <.LVL2>:
  38:	00000537          	lui	a0,0x0
  3c:	01050513          	addi	a0,a0,16 # 10 <txl_cfm_init+0x10>
  40:	00000097          	auipc	ra,0x0
  44:	000080e7          	jalr	ra # 40 <.LVL2+0x8>

00000048 <.LVL3>:
  48:	00000537          	lui	a0,0x0
  4c:	01850513          	addi	a0,a0,24 # 18 <txl_cfm_init+0x18>
  50:	00000097          	auipc	ra,0x0
  54:	000080e7          	jalr	ra # 50 <.LVL3+0x8>

00000058 <.LBE20>:
  58:	4422                	lw	s0,8(sp)
  5a:	40b2                	lw	ra,12(sp)

0000005c <.LBB21>:
  5c:	00000537          	lui	a0,0x0

00000060 <.LBB22>:
  60:	02050513          	addi	a0,a0,32 # 20 <.LBB20+0x4>

00000064 <.LBE22>:
  64:	0141                	addi	sp,sp,16

00000066 <.LBB23>:
  66:	00000317          	auipc	t1,0x0
  6a:	00030067          	jr	t1 # 66 <.LBB23>

Disassembly of section .text.txl_cfm_push:

00000000 <txl_cfm_push>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	557c                	lw	a5,108(a0)
   6:	00361713          	slli	a4,a2,0x3
   a:	c632                	sw	a2,12(sp)
   c:	439c                	lw	a5,0(a5)
   e:	cb8c                	sw	a1,16(a5)
  10:	000007b7          	lui	a5,0x0
  14:	00078793          	mv	a5,a5
  18:	85aa                	mv	a1,a0

0000001a <.LVL7>:
  1a:	00e78533          	add	a0,a5,a4

0000001e <.LVL8>:
  1e:	00000097          	auipc	ra,0x0
  22:	000080e7          	jalr	ra # 1e <.LVL8>

00000026 <.LVL9>:
  26:	4632                	lw	a2,12(sp)
  28:	40f2                	lw	ra,28(sp)
  2a:	00261793          	slli	a5,a2,0x2
  2e:	00000637          	lui	a2,0x0
  32:	00060613          	mv	a2,a2
  36:	963e                	add	a2,a2,a5
  38:	4208                	lw	a0,0(a2)
  3a:	6105                	addi	sp,sp,32
  3c:	00000317          	auipc	t1,0x0
  40:	00030067          	jr	t1 # 3c <.LVL9+0x16>

Disassembly of section .text.txl_cfm_dma_int_handler_backup:

00000000 <txl_cfm_dma_int_handler_backup>:
   0:	000007b7          	lui	a5,0x0
   4:	00078793          	mv	a5,a5
   8:	43d8                	lw	a4,4(a5)
   a:	9b79                	andi	a4,a4,-2
   c:	c3d8                	sw	a4,4(a5)
   e:	8082                	ret

Disassembly of section .text.txl_cfm_evt:

00000000 <txl_cfm_evt>:
   0:	000007b7          	lui	a5,0x0
   4:	00251713          	slli	a4,a0,0x2
   8:	00078793          	mv	a5,a5
   c:	1101                	addi	sp,sp,-32
   e:	97ba                	add	a5,a5,a4
  10:	cc22                	sw	s0,24(sp)
  12:	4380                	lw	s0,0(a5)

00000014 <.LVL12>:
  14:	000007b7          	lui	a5,0x0
  18:	00078793          	mv	a5,a5
  1c:	ca26                	sw	s1,20(sp)
  1e:	00351493          	slli	s1,a0,0x3
  22:	94be                	add	s1,s1,a5

00000024 <.LBB32>:
  24:	000007b7          	lui	a5,0x0
  28:	0007a783          	lw	a5,0(a5) # 0 <txl_cfm_evt>

0000002c <.LBE32>:
  2c:	c84a                	sw	s2,16(sp)
  2e:	ce06                	sw	ra,28(sp)
  30:	4905                	li	s2,1
  32:	c64e                	sw	s3,12(sp)
  34:	8fe1                	and	a5,a5,s0
  36:	00a91933          	sll	s2,s2,a0

0000003a <.LBB35>:
  3a:	ef99                	bnez	a5,58 <.L7>
  3c:	000005b7          	lui	a1,0x0
  40:	00000537          	lui	a0,0x0

00000044 <.LVL15>:
  44:	16800613          	li	a2,360
  48:	00058593          	mv	a1,a1
  4c:	00050513          	mv	a0,a0
  50:	00000097          	auipc	ra,0x0
  54:	000080e7          	jalr	ra # 50 <.LVL15+0xc>

00000058 <.L7>:
  58:	8522                	mv	a0,s0

0000005a <.LBB36>:
  5a:	00000437          	lui	s0,0x0

0000005e <.LBE36>:
  5e:	00000097          	auipc	ra,0x0
  62:	000080e7          	jalr	ra # 5e <.LBE36>

00000066 <.LBB41>:
  66:	00040413          	mv	s0,s0

0000006a <.L9>:
  6a:	0004a983          	lw	s3,0(s1)

0000006e <.LVL19>:
  6e:	02098e63          	beqz	s3,aa <.L6>

00000072 <.LBB42>:
  72:	30047073          	csrci	mstatus,8

00000076 <.LBE42>:
  76:	8526                	mv	a0,s1
  78:	00000097          	auipc	ra,0x0
  7c:	000080e7          	jalr	ra # 78 <.LBE42+0x2>

00000080 <.LBB44>:
  80:	30046073          	csrsi	mstatus,8

00000084 <.LBE44>:
  84:	854e                	mv	a0,s3
  86:	00000097          	auipc	ra,0x0
  8a:	000080e7          	jalr	ra # 86 <.LBE44+0x2>

0000008e <.LVL21>:
  8e:	854e                	mv	a0,s3
  90:	00000097          	auipc	ra,0x0
  94:	000080e7          	jalr	ra # 90 <.LVL21+0x2>

00000098 <.LBB46>:
  98:	483c                	lw	a5,80(s0)

0000009a <.LBE46>:
  9a:	854a                	mv	a0,s2

0000009c <.LBB47>:
  9c:	17fd                	addi	a5,a5,-1
  9e:	c83c                	sw	a5,80(s0)

000000a0 <.LBE47>:
  a0:	00000097          	auipc	ra,0x0
  a4:	000080e7          	jalr	ra # a0 <.LBE47>

000000a8 <.LVL23>:
  a8:	b7c9                	j	6a <.L9>

000000aa <.L6>:
  aa:	40f2                	lw	ra,28(sp)
  ac:	4462                	lw	s0,24(sp)
  ae:	44d2                	lw	s1,20(sp)

000000b0 <.LVL24>:
  b0:	4942                	lw	s2,16(sp)

000000b2 <.LVL25>:
  b2:	49b2                	lw	s3,12(sp)

000000b4 <.LVL26>:
  b4:	6105                	addi	sp,sp,32
  b6:	8082                	ret

Disassembly of section .text.txl_cfm_flush_desc:

00000000 <txl_cfm_flush_desc>:
   0:	1101                	addi	sp,sp,-32
   2:	cc22                	sw	s0,24(sp)
   4:	ce06                	sw	ra,28(sp)
   6:	55fc                	lw	a5,108(a1)
   8:	51f8                	lw	a4,100(a1)
   a:	4405                	li	s0,1
   c:	00a41433          	sll	s0,s0,a0

00000010 <.LVL28>:
  10:	439c                	lw	a5,0(a5)
  12:	c711                	beqz	a4,1e <.L12>
  14:	3c000737          	lui	a4,0x3c000
  18:	8e59                	or	a2,a2,a4

0000001a <.L20>:
  1a:	cb90                	sw	a2,16(a5)
  1c:	a021                	j	24 <.L13>

0000001e <.L12>:
  1e:	4b98                	lw	a4,16(a5)
  20:	fe075de3          	bgez	a4,1a <.L20>

00000024 <.L13>:
  24:	459c                	lw	a5,8(a1)
  26:	852e                	mv	a0,a1

00000028 <.LVL32>:
  28:	e395                	bnez	a5,4c <.L14>

0000002a <.LVL33>:
  2a:	00000097          	auipc	ra,0x0
  2e:	000080e7          	jalr	ra # 2a <.LVL33>

00000032 <.L15>:
  32:	4501                	li	a0,0
  34:	00000097          	auipc	ra,0x0
  38:	000080e7          	jalr	ra # 34 <.L15+0x2>

0000003c <.LVL35>:
  3c:	8522                	mv	a0,s0
  3e:	4462                	lw	s0,24(sp)

00000040 <.LVL36>:
  40:	40f2                	lw	ra,28(sp)
  42:	6105                	addi	sp,sp,32
  44:	00000317          	auipc	t1,0x0
  48:	00030067          	jr	t1 # 44 <.LVL36+0x4>

0000004c <.L14>:
  4c:	c62e                	sw	a1,12(sp)
  4e:	00000097          	auipc	ra,0x0
  52:	000080e7          	jalr	ra # 4e <.L14+0x2>

00000056 <.LBB50>:
  56:	000007b7          	lui	a5,0x0
  5a:	00078793          	mv	a5,a5
  5e:	4bb8                	lw	a4,80(a5)

00000060 <.LBE50>:
  60:	45b2                	lw	a1,12(sp)

00000062 <.LBB53>:
  62:	177d                	addi	a4,a4,-1
  64:	cbb8                	sw	a4,80(a5)

00000066 <.LBE53>:
  66:	55bc                	lw	a5,104(a1)
  68:	d7e9                	beqz	a5,32 <.L15>
  6a:	0605a423          	sw	zero,104(a1) # 68 <.LBE53+0x2>
  6e:	b7d1                	j	32 <.L15>

Disassembly of section .text.txl_cfm_flush:

00000000 <txl_cfm_flush>:
   0:	1101                	addi	sp,sp,-32
   2:	ca26                	sw	s1,20(sp)
   4:	c84a                	sw	s2,16(sp)
   6:	c64e                	sw	s3,12(sp)
   8:	4905                	li	s2,1

0000000a <.LBB57>:
   a:	3c0009b7          	lui	s3,0x3c000

0000000e <.LBB58>:
   e:	000004b7          	lui	s1,0x0

00000012 <.LBE57>:
  12:	c452                	sw	s4,8(sp)
  14:	c256                	sw	s5,4(sp)
  16:	ce06                	sw	ra,28(sp)
  18:	cc22                	sw	s0,24(sp)
  1a:	8aae                	mv	s5,a1
  1c:	8a32                	mv	s4,a2
  1e:	00a91933          	sll	s2,s2,a0

00000022 <.LBB64>:
  22:	013669b3          	or	s3,a2,s3

00000026 <.LBB62>:
  26:	00048493          	mv	s1,s1

0000002a <.L22>:
  2a:	8556                	mv	a0,s5
  2c:	00000097          	auipc	ra,0x0
  30:	000080e7          	jalr	ra # 2c <.L22+0x2>

00000034 <.LVL42>:
  34:	842a                	mv	s0,a0

00000036 <.LVL43>:
  36:	c129                	beqz	a0,78 <.L23>
  38:	557c                	lw	a5,108(a0)
  3a:	5178                	lw	a4,100(a0)
  3c:	439c                	lw	a5,0(a5)
  3e:	cb19                	beqz	a4,54 <.L24>
  40:	0137a823          	sw	s3,16(a5) # 10 <.LBB58+0x2>

00000044 <.L25>:
  44:	441c                	lw	a5,8(s0)
  46:	8522                	mv	a0,s0
  48:	ef81                	bnez	a5,60 <.L26>

0000004a <.LVL45>:
  4a:	00000097          	auipc	ra,0x0
  4e:	000080e7          	jalr	ra # 4a <.LVL45>

00000052 <.LVL46>:
  52:	bfe1                	j	2a <.L22>

00000054 <.L24>:
  54:	4b98                	lw	a4,16(a5)
  56:	fe0747e3          	bltz	a4,44 <.L25>
  5a:	0147a823          	sw	s4,16(a5)
  5e:	b7dd                	j	44 <.L25>

00000060 <.L26>:
  60:	00000097          	auipc	ra,0x0
  64:	000080e7          	jalr	ra # 60 <.L26>

00000068 <.LBB63>:
  68:	48bc                	lw	a5,80(s1)
  6a:	17fd                	addi	a5,a5,-1
  6c:	c8bc                	sw	a5,80(s1)

0000006e <.LBE63>:
  6e:	543c                	lw	a5,104(s0)
  70:	dfcd                	beqz	a5,2a <.L22>
  72:	06042423          	sw	zero,104(s0) # 68 <.LBB63>
  76:	bf55                	j	2a <.L22>

00000078 <.L23>:
  78:	00000097          	auipc	ra,0x0
  7c:	000080e7          	jalr	ra # 78 <.L23>

00000080 <.LVL49>:
  80:	4462                	lw	s0,24(sp)

00000082 <.LVL50>:
  82:	40f2                	lw	ra,28(sp)
  84:	44d2                	lw	s1,20(sp)
  86:	49b2                	lw	s3,12(sp)
  88:	4a22                	lw	s4,8(sp)

0000008a <.LVL51>:
  8a:	4a92                	lw	s5,4(sp)

0000008c <.LVL52>:
  8c:	854a                	mv	a0,s2
  8e:	4942                	lw	s2,16(sp)

00000090 <.LVL53>:
  90:	6105                	addi	sp,sp,32
  92:	00000317          	auipc	t1,0x0
  96:	00030067          	jr	t1 # 92 <.LVL53+0x2>

Disassembly of section .text.txl_cfm_dma_int_handler:

00000000 <txl_cfm_dma_int_handler>:
   0:	44a00737          	lui	a4,0x44a00
   4:	535c                	lw	a5,36(a4)

00000006 <.LBE66>:
   6:	1007f793          	andi	a5,a5,256

0000000a <.LBB68>:
   a:	d31c                	sw	a5,32(a4)

0000000c <.LBE68>:
   c:	000007b7          	lui	a5,0x0

00000010 <.LVL57>:
  10:	00078793          	mv	a5,a5
  14:	43d8                	lw	a4,4(a5)

00000016 <.LVL58>:
  16:	9b79                	andi	a4,a4,-2
  18:	c3d8                	sw	a4,4(a5)
  1a:	8082                	ret

Disassembly of section .text.txl_cfm_dump:

00000000 <txl_cfm_dump>:
   0:	1141                	addi	sp,sp,-16
   2:	c422                	sw	s0,8(sp)
   4:	00000437          	lui	s0,0x0
   8:	00040413          	mv	s0,s0
   c:	c226                	sw	s1,4(sp)
   e:	c606                	sw	ra,12(sp)
  10:	02840493          	addi	s1,s0,40 # 28 <.L34+0x4>

00000014 <.L37>:
  14:	8522                	mv	a0,s0
  16:	00000097          	auipc	ra,0x0
  1a:	000080e7          	jalr	ra # 16 <.L37+0x2>

0000001e <.LVL61>:
  1e:	c119                	beqz	a0,24 <.L34>
  20:	401c                	lw	a5,0(s0)

00000022 <.L35>:
  22:	eb89                	bnez	a5,34 <.L36>

00000024 <.L34>:
  24:	0421                	addi	s0,s0,8
  26:	fe9417e3          	bne	s0,s1,14 <.L37>
  2a:	40b2                	lw	ra,12(sp)
  2c:	4422                	lw	s0,8(sp)
  2e:	4492                	lw	s1,4(sp)
  30:	0141                	addi	sp,sp,16
  32:	8082                	ret

00000034 <.L36>:
  34:	439c                	lw	a5,0(a5)

00000036 <.LVL67>:
  36:	b7f5                	j	22 <.L35>
