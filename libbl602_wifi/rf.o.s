
rf.o:     file format elf32-littleriscv


Disassembly of section .text.rf_set_channel:

00000000 <rf_set_channel>:
   0:	852e                	mv	a0,a1

00000002 <.LVL1>:
   2:	00000317          	auipc	t1,0x0
   6:	00030067          	jr	t1 # 2 <.LVL1>

Disassembly of section .text.rf_init:

00000000 <rf_init>:
   0:	30047073          	csrci	mstatus,8

00000004 <.LBB8>:
   4:	30046073          	csrsi	mstatus,8

00000008 <.LBE8>:
   8:	8082                	ret

Disassembly of section .text.rf_dump_status:

00000000 <rf_dump_status>:
   0:	8082                	ret

Disassembly of section .text.rf_lo_isr:

00000000 <rf_lo_isr>:
   0:	8082                	ret

Disassembly of section .text.rf_clkpll_isr:

00000000 <rf_clkpll_isr>:
   0:	8082                	ret
