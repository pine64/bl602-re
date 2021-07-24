typedef union {
	uint32_t regs[0x800];
	uint8_t pad[0x2000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 21;
				uint32_t iqcomp : 1; // @ 21 -- 21 # 0xffdfffff
			};
		} r000; // @ 0x0
		uint32_t activeant; // @ 0x4
		uint8_t pad0[0x108];
		union {
			uint32_t value;
			struct {
				uint32_t riu_adcpowsupthrdbm : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t riu_adcpowmindbm : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t riu_vpeakadcqdbv : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t riu_fe40gain : 1; // @ 3 -- 3 # 0xfffffff7
			};
		} r0xb110; // @ 0x110
		uint8_t pad1[0x4];
		uint32_t riu_iqestiterclr; // @ 0x118
		uint8_t pad2[0x224];
		uint32_t riu_rwnxagcaci20marg0; // @ 0x340
		uint32_t riu_rwnxagcaci20marg1; // @ 0x344
		uint32_t riu_rwnxagcaci20marg2; // @ 0x348
		uint8_t pad3[0x18];
		union {
			uint32_t value;
			struct {
				uint32_t riu_satthrdbv : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t pad0 : 2;
				uint32_t riu_satlowthrdbv : 6; // @ 13 -- 8 # 0xffffc0ff
				uint32_t pad1 : 2;
				uint32_t riu_sathighthrdbv : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t pad2 : 2;
				uint32_t riu_satdelay50ns : 5; // @ 28 -- 24 # 0xe0ffffff
			};
		} r0xb364; // @ 0x364
		union {
			uint32_t value;
			struct {
				uint32_t riu_crossupthrqdbm : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t pad0 : 2;
				uint32_t riu_crossdnthrqdbm : 10; // @ 21 -- 12 # 0xffc00fff
			};
		} r0xb368; // @ 0x368
		union {
			uint32_t value;
			struct {
				uint32_t riu_rampupgapqdb : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t riu_rampupndlindex : 3; // @ 10 -- 8 # 0xfffff8ff
				uint32_t pad0 : 5;
				uint32_t riu_rampdngapqdb : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t riu_rampdnndlindex : 3; // @ 26 -- 24 # 0xf8ffffff
			};
		} RWNXAGCRAMP; // @ 0x36c
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 16;
				uint32_t riu_adcpowdisthrdbv : 7; // @ 22 -- 16 # 0xff80ffff
			};
		} r0xb370; // @ 0x370
		uint8_t pad4[0xc];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 10;
				uint32_t riu_evt0opcomb : 3; // @ 12 -- 10 # 0xffffe3ff
				uint32_t riu_evt0pathcomb : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t riu_evt0op3 : 6; // @ 19 -- 14 # 0xfff03fff
				uint32_t riu_evt0op2 : 6; // @ 25 -- 20 # 0xfc0fffff
				uint32_t riu_evt0op1 : 6; // @ 31 -- 26 # 0x3ffffff
			};
		} r0xb380; // @ 0x380
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 10;
				uint32_t riu_evt1opcomb : 3; // @ 12 -- 10 # 0xffffe3ff
				uint32_t riu_evt1pathcomb : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t riu_evt1op3 : 6; // @ 19 -- 14 # 0xfff03fff
				uint32_t riu_evt1op2 : 6; // @ 25 -- 20 # 0xfc0fffff
				uint32_t riu_evt1op1 : 6; // @ 31 -- 26 # 0x3ffffff
			};
		} r0xb384; // @ 0x384
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 10;
				uint32_t riu_evt2opcomb : 3; // @ 12 -- 10 # 0xffffe3ff
				uint32_t riu_evt2pathcomb : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t riu_evt2op3 : 6; // @ 19 -- 14 # 0xfff03fff
				uint32_t riu_evt2op2 : 6; // @ 25 -- 20 # 0xfc0fffff
				uint32_t riu_evt2op1 : 6; // @ 31 -- 26 # 0x3ffffff
			};
		} r0xb388; // @ 0x388
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 10;
				uint32_t riu_evt3opcomb : 3; // @ 12 -- 10 # 0xffffe3ff
				uint32_t pad1 : 1;
				uint32_t riu_evt3op3 : 6; // @ 19 -- 14 # 0xfff03fff
				uint32_t riu_evt3op2 : 6; // @ 25 -- 20 # 0xfc0fffff
				uint32_t riu_evt3op1 : 6; // @ 31 -- 26 # 0x3ffffff
			};
		} r0xb38c; // @ 0x38c
		union {
			uint32_t value;
			struct {
				uint32_t combpathsel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 6;
				uint32_t riu_rifsdeten : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad1 : 1;
				uint32_t riu_rifsdeten : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t pad2 : 1;
				uint32_t agcfsmreset : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t pad3 : 3;
				uint32_t riu_htstfgainen : 1; // @ 16 -- 16 # 0xfffeffff
			};
		} RWNXAGCCNTL; // @ 0x390
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 16;
				uint32_t riu_vpeakadcqdbv : 8; // @ 23 -- 16 # 0xff00ffff
			};
		} r0xb394; // @ 0x394
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 8;
				uint32_t riu_adcpowmindbm : 8; // @ 15 -- 8 # 0xffff00ff
			};
		} r0xb398; // @ 0x398
		uint8_t pad5[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t riu_inbdpowmindbm : 8; // @ 7 -- 0 # 0xffffff00
			};
		} r0xb3a0; // @ 0x3a0
		union {
			uint32_t value;
			struct {
				uint32_t riu_fe20gain : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t riu_fe40gain : 8; // @ 15 -- 8 # 0xffff00ff
			};
		} r0xb3a4; // @ 0x3a4
		uint8_t pad6[0x14];
		uint32_t RWNXAGCCCATIMEOUT; // @ 0x3bc
		union {
			uint32_t value;
			struct {
				uint32_t riu_inbdpowsupthrdbm : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t riu_inbdpowinfthrdbm : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t pad0 : 8;
				uint32_t riu_idinbdpowgapdnqdbm : 8; // @ 31 -- 24 # 0xffffff
			};
		} r0xb3c0; // @ 0x3c0
		union {
			uint32_t value;
			struct {
				uint32_t riu_adcpowsupthrdbm : 8; // @ 7 -- 0 # 0xffffff00
			};
		} r0xb3c4; // @ 0x3c4
		uint8_t pad7[0x4c];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 8;
				uint32_t set1 : 1; // @ 8 -- 8 # 0xfffffeff
			};
		} irqmacccatimeouten; // @ 0x414
		uint8_t pad8[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 8;
				uint32_t needreset : 1; // @ 8 -- 8 # 0xfffffeff
			};
		} rwnxmacintstatmasked; // @ 0x41c
		uint32_t rwnxmacintack; // @ 0x420
		uint8_t pad9[0xdc];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 12;
				uint32_t riu_fe20gain : 2; // @ 13 -- 12 # 0xffffcfff
			};
		} r0xb500; // @ 0x500
		uint8_t pad10[0xb1c];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 16;
				uint32_t riu_htstfgainen : 10; // @ 25 -- 16 # 0xfc00ffff
			};
		} r0xc020; // @ 0x1020
		uint8_t pad11[0x1c];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 15;
				uint32_t rc2_rx0_vga_idx_min : 5; // @ 19 -- 15 # 0xfff07fff
				uint32_t rc2_rx0_vga_idx_max : 5; // @ 24 -- 20 # 0xfe0fffff
			};
		} r0xc040; // @ 0x1040
		union {
			uint32_t value;
			struct {
				uint32_t rc2_rx0_lna_idx_min : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t rc2_rx0_lna_idx_max : 8; // @ 15 -- 8 # 0xffff00ff
			};
		} r0xc044; // @ 0x1044
		uint8_t pad12[0x38];
		uint8_t rxgain_offset_vs_temperature[0x9]; // @ 0x1080
		uint8_t pad13[0x194];
		union {
			uint32_t value;
			struct {
				uint32_t txhbf20coeffsel : 16; // @ 15 -- 0 # 0xffff0000
			};
		} rc218; // @ 0x1218
		uint8_t pad14[0x5f8];
		union {
			uint32_t value;
			struct {
				uint32_t rc2_pkdet_mode : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t rc2_pkdet_cnt_thr : 4; // @ 5 -- 2 # 0xffffffc3
			};
		} r0xc814; // @ 0x1814
		uint8_t pad15[0x14];
		union {
			uint32_t value;
			struct {
				uint32_t rc2_inbdpow_adj_thr_dbm : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t rc2_inbdpowsupthr_adj_en : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t pad0 : 2;
				uint32_t rc2_inbdpowinfthr_adj_en : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t pad1 : 3;
				uint32_t rc2_inbdpowfastvalid_cnt : 9; // @ 23 -- 15 # 0xff007fff
			};
		} r0xc82c; // @ 0x182c
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 10;
				uint32_t rc2_evt4opcomb : 3; // @ 12 -- 10 # 0xffffe3ff
				uint32_t pad1 : 1;
				uint32_t rc2_evt4op3 : 6; // @ 19 -- 14 # 0xfff03fff
				uint32_t rc2_evt4op2 : 6; // @ 25 -- 20 # 0xfc0fffff
				uint32_t rc2_evt4op1 : 6; // @ 31 -- 26 # 0x3ffffff
			};
		} r0xc830; // @ 0x1830
		uint8_t pad16[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t rc2_reflevofdmthd : 19; // @ 18 -- 0 # 0xfff80000
				uint32_t pad0 : 12;
				uint32_t rc2_reflevofdmthd_en : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0xc838; // @ 0x1838
		union {
			uint32_t value;
			struct {
				uint32_t rc2_reflevdsssthd : 20; // @ 19 -- 0 # 0xfff00000
				uint32_t pad0 : 11;
				uint32_t rc2_reflevdsssthd_en : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0xc83c; // @ 0x183c
		union {
			uint32_t value;
			struct {
				uint32_t rc2_reflevdssscontthd : 22; // @ 21 -- 0 # 0xffc00000
				uint32_t pad0 : 9;
				uint32_t rc2_reflevdssscontthd_en : 1; // @ 31 -- 31 # 0x7fffffff
			};
		} r0xc840; // @ 0x1840
	};
} agc_regs;
#define AGC_BASE 0x44c0b000
#define AGC ((agc_regs* volatile)(AGC_BASE))