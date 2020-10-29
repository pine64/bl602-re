
bl_sta_mgmt_others.o:     file format elf32-littleriscv


Disassembly of section .text.set_psk:

00000000 <set_psk>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)
   e:	c256                	sw	s5,4(sp)

00000010 <.LBB35>:
  10:	44b00937          	lui	s2,0x44b00

00000014 <.LBE35>:
  14:	8aae                	mv	s5,a1

00000016 <.LBB36>:
  16:	12092583          	lw	a1,288(s2) # 44b00120 <.LASF792+0x44afd225>

0000001a <.LBE36>:
  1a:	3e800413          	li	s0,1000
  1e:	8a2a                	mv	s4,a0
  20:	0285d5b3          	divu	a1,a1,s0
  24:	000004b7          	lui	s1,0x0
  28:	00000537          	lui	a0,0x0

0000002c <.LVL2>:
  2c:	89b2                	mv	s3,a2
  2e:	00050513          	mv	a0,a0
  32:	00048613          	mv	a2,s1

00000036 <.LVL3>:
  36:	00000097          	auipc	ra,0x0
  3a:	000080e7          	jalr	ra # 36 <.LVL3>

0000003e <.LVL4>:
  3e:	00000537          	lui	a0,0x0
  42:	04300613          	li	a2,67
  46:	0ff00593          	li	a1,255
  4a:	00050513          	mv	a0,a0
  4e:	00000097          	auipc	ra,0x0
  52:	000080e7          	jalr	ra # 4e <.LVL4+0x10>

00000056 <.LVL5>:
  56:	854e                	mv	a0,s3
  58:	00000097          	auipc	ra,0x0
  5c:	000080e7          	jalr	ra # 58 <.LVL5+0x2>

00000060 <.LVL6>:
  60:	864e                	mv	a2,s3
  62:	85d6                	mv	a1,s5
  64:	0ff57693          	andi	a3,a0,255
  68:	8552                	mv	a0,s4
  6a:	00000097          	auipc	ra,0x0
  6e:	000080e7          	jalr	ra # 6a <.LVL6+0xa>

00000072 <.LBB37>:
  72:	12092583          	lw	a1,288(s2)

00000076 <.LBE37>:
  76:	40f2                	lw	ra,28(sp)
  78:	4942                	lw	s2,16(sp)
  7a:	0285d5b3          	divu	a1,a1,s0
  7e:	4462                	lw	s0,24(sp)
  80:	49b2                	lw	s3,12(sp)

00000082 <.LVL8>:
  82:	4a22                	lw	s4,8(sp)

00000084 <.LVL9>:
  84:	4a92                	lw	s5,4(sp)
  86:	00048613          	mv	a2,s1
  8a:	44d2                	lw	s1,20(sp)
  8c:	00000537          	lui	a0,0x0
  90:	00050513          	mv	a0,a0
  94:	6105                	addi	sp,sp,32
  96:	00000317          	auipc	t1,0x0
  9a:	00030067          	jr	t1 # 96 <.LVL9+0x12>

Disassembly of section .text.set_pmk:

00000000 <set_pmk>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)
   e:	c256                	sw	s5,4(sp)

00000010 <.LBB47>:
  10:	44b00937          	lui	s2,0x44b00

00000014 <.LBE47>:
  14:	8aae                	mv	s5,a1

00000016 <.LBB48>:
  16:	12092583          	lw	a1,288(s2) # 44b00120 <.LASF792+0x44afd225>

0000001a <.LBE48>:
  1a:	3e800413          	li	s0,1000
  1e:	8a2a                	mv	s4,a0
  20:	0285d5b3          	divu	a1,a1,s0
  24:	000004b7          	lui	s1,0x0
  28:	00000537          	lui	a0,0x0

0000002c <.LVL13>:
  2c:	89b2                	mv	s3,a2
  2e:	00050513          	mv	a0,a0
  32:	00048613          	mv	a2,s1

00000036 <.LVL14>:
  36:	00000097          	auipc	ra,0x0
  3a:	000080e7          	jalr	ra # 36 <.LVL14>

0000003e <.LVL15>:
  3e:	00000097          	auipc	ra,0x0
  42:	000080e7          	jalr	ra # 3e <.LVL15>

00000046 <.LVL16>:
  46:	854e                	mv	a0,s3
  48:	00000097          	auipc	ra,0x0
  4c:	000080e7          	jalr	ra # 48 <.LVL16+0x2>

00000050 <.LVL17>:
  50:	864e                	mv	a2,s3
  52:	85d6                	mv	a1,s5
  54:	0ff57693          	andi	a3,a0,255
  58:	8552                	mv	a0,s4
  5a:	00000097          	auipc	ra,0x0
  5e:	000080e7          	jalr	ra # 5a <.LVL17+0xa>

00000062 <.LBB49>:
  62:	12092583          	lw	a1,288(s2)

00000066 <.LBE49>:
  66:	40f2                	lw	ra,28(sp)
  68:	4942                	lw	s2,16(sp)
  6a:	0285d5b3          	divu	a1,a1,s0
  6e:	4462                	lw	s0,24(sp)
  70:	49b2                	lw	s3,12(sp)

00000072 <.LVL19>:
  72:	4a22                	lw	s4,8(sp)

00000074 <.LVL20>:
  74:	4a92                	lw	s5,4(sp)
  76:	00048613          	mv	a2,s1
  7a:	44d2                	lw	s1,20(sp)
  7c:	00000537          	lui	a0,0x0
  80:	00050513          	mv	a0,a0
  84:	6105                	addi	sp,sp,32
  86:	00000317          	auipc	t1,0x0
  8a:	00030067          	jr	t1 # 86 <.LVL20+0x12>

Disassembly of section .text.get_pmk:

00000000 <get_pmk>:
   0:	00000317          	auipc	t1,0x0
   4:	00030067          	jr	t1 # 0 <get_pmk>

Disassembly of section .text.remove_psk:

00000000 <remove_psk>:
   0:	1101                	addi	sp,sp,-32
   2:	ce06                	sw	ra,28(sp)
   4:	cc22                	sw	s0,24(sp)
   6:	ca26                	sw	s1,20(sp)
   8:	c84a                	sw	s2,16(sp)
   a:	c64e                	sw	s3,12(sp)
   c:	c452                	sw	s4,8(sp)

0000000e <.LBB59>:
   e:	44b00937          	lui	s2,0x44b00

00000012 <.LBE59>:
  12:	8a2e                	mv	s4,a1

00000014 <.LBB60>:
  14:	12092583          	lw	a1,288(s2) # 44b00120 <.LASF792+0x44afd225>

00000018 <.LBE60>:
  18:	3e800413          	li	s0,1000
  1c:	89aa                	mv	s3,a0
  1e:	0285d5b3          	divu	a1,a1,s0
  22:	000004b7          	lui	s1,0x0
  26:	00000537          	lui	a0,0x0

0000002a <.LVL26>:
  2a:	00048613          	mv	a2,s1
  2e:	00050513          	mv	a0,a0
  32:	00000097          	auipc	ra,0x0
  36:	000080e7          	jalr	ra # 32 <.LVL26+0x8>

0000003a <.LVL27>:
  3a:	85d2                	mv	a1,s4
  3c:	854e                	mv	a0,s3
  3e:	00000097          	auipc	ra,0x0
  42:	000080e7          	jalr	ra # 3e <.LVL27+0x4>

00000046 <.LBB61>:
  46:	12092583          	lw	a1,288(s2)

0000004a <.LBE61>:
  4a:	40f2                	lw	ra,28(sp)
  4c:	4942                	lw	s2,16(sp)
  4e:	0285d5b3          	divu	a1,a1,s0
  52:	4462                	lw	s0,24(sp)
  54:	49b2                	lw	s3,12(sp)

00000056 <.LVL29>:
  56:	4a22                	lw	s4,8(sp)
  58:	00048613          	mv	a2,s1
  5c:	44d2                	lw	s1,20(sp)
  5e:	00000537          	lui	a0,0x0
  62:	00050513          	mv	a0,a0
  66:	6105                	addi	sp,sp,32
  68:	00000317          	auipc	t1,0x0
  6c:	00030067          	jr	t1 # 68 <.LVL29+0x12>
