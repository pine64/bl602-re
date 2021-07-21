typedef union {
	uint32_t regs[0x800];
	uint8_t pad[0x2000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 21;
				uint32_t iqcomp : 1; // @ 0x15 -- 0x15 
			};
		} r000; // @ 0x0
		uint32_t activeant; // @ 0x4
		uint8_t pad0[0x108];
		union {
			uint32_t value;
			struct {
				uint32_t set_0x0_6 : 1; // @ 0x0 -- 0x0 
				uint32_t set_0x0_5 : 1; // @ 0x1 -- 0x1 
				uint32_t set_0x0_4 : 1; // @ 0x2 -- 0x2 
				uint32_t set_0x0_3 : 1; // @ 0x3 -- 0x3 
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
				uint32_t set_0x39_10 : 6; // @ 0x5 -- 0x0 
				uint32_t pad0 : 2;
				uint32_t set_0x38_9 : 6; // @ 0xd -- 0x8 
				uint32_t pad1 : 2;
				uint32_t set_0x3c_8 : 6; // @ 0x15 -- 0x10 
				uint32_t pad2 : 2;
				uint32_t set_0x8_7 : 5; // @ 0x1c -- 0x18 
			};
		} r0xb364; // @ 0x364
		union {
			uint32_t value;
			struct {
				uint32_t set_0x70_12 : 10; // @ 0x9 -- 0x0 
				uint32_t pad0 : 2;
				uint32_t set_0x70_11 : 10; // @ 0x15 -- 0xc 
			};
		} r0xb368; // @ 0x368
		union {
			uint32_t value;
			struct {
				uint32_t set_0x12_13 : 8; // @ 0x7 -- 0x0 
				uint32_t set_0x5_14 : 3; // @ 0xa -- 0x8 
				uint32_t pad0 : 5;
				uint32_t set_0x28_15 : 8; // @ 0x17 -- 0x10 
				uint32_t set_0x7_16 : 3; // @ 0x1a -- 0x18 
			};
		} r0xb36c; // @ 0x36c
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 16;
				uint32_t set_0x58_17 : 7; // @ 0x16 -- 0x10 
			};
		} r0xb370; // @ 0x370
		uint8_t pad4[0xc];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 10;
				uint32_t set_0x1_23 : 3; // @ 0xc -- 0xa 
				uint32_t set_0x0_22 : 1; // @ 0xd -- 0xd 
				uint32_t set_0x3e_19 : 6; // @ 0x13 -- 0xe 
				uint32_t set_0x37_20 : 6; // @ 0x19 -- 0x14 
				uint32_t set_0x1_21 : 6; // @ 0x1f -- 0x1a 
			};
		} r0xb380; // @ 0x380
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 10;
				uint32_t set_0x2_28 : 3; // @ 0xc -- 0xa 
				uint32_t set_0x0_27 : 1; // @ 0xd -- 0xd 
				uint32_t set_0x14_26 : 6; // @ 0x13 -- 0xe 
				uint32_t set_0x37_25 : 6; // @ 0x19 -- 0x14 
				uint32_t set_0x39_24 : 6; // @ 0x1f -- 0x1a 
			};
		} r0xb384; // @ 0x384
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 10;
				uint32_t set_0x5_33 : 3; // @ 0xc -- 0xa 
				uint32_t set_0x0_32 : 1; // @ 0xd -- 0xd 
				uint32_t set_0x2a_31 : 6; // @ 0x13 -- 0xe 
				uint32_t set_0x17_30 : 6; // @ 0x19 -- 0x14 
				uint32_t set_0xf_29 : 6; // @ 0x1f -- 0x1a 
			};
		} r0xb388; // @ 0x388
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 10;
				uint32_t set_0x2_37 : 3; // @ 0xc -- 0xa 
				uint32_t pad1 : 1;
				uint32_t set_0xe_36 : 6; // @ 0x13 -- 0xe 
				uint32_t set_0x0_35 : 6; // @ 0x19 -- 0x14 
				uint32_t set_0x19_34 : 6; // @ 0x1f -- 0x1a 
			};
		} r0xb38c; // @ 0x38c
		union {
			uint32_t value;
			struct {
				uint32_t set1 : 2; // @ 0x1 -- 0x0 
				uint32_t pad0 : 6;
				uint32_t set_0x0_1 : 1; // @ 0x8 -- 0x8 
				uint32_t pad1 : 1;
				uint32_t set_0x0_1 : 1; // @ 0xa -- 0xa 
				uint32_t pad2 : 1;
				uint32_t agcfsmreset : 1; // @ 0xc -- 0xc 
				uint32_t pad3 : 3;
				uint32_t set_0x0_0 : 1; // @ 0x10 -- 0x10 
			};
		} RWNXAGCCNTL; // @ 0x390
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 16;
				uint32_t set_0xf8_4 : 8; // @ 0x17 -- 0x10 
			};
		} r0xb394; // @ 0x394
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 8;
				uint32_t set_0x9e_5 : 8; // @ 0xf -- 0x8 
			};
		} r0xb398; // @ 0x398
		uint8_t pad5[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t set_0x9e_47 : 8; // @ 0x7 -- 0x0 
			};
		} r0xb3a0; // @ 0x3a0
		union {
			uint32_t value;
			struct {
				uint32_t set_0x0_2 : 8; // @ 0x7 -- 0x0 
				uint32_t set_0x0_3 : 8; // @ 0xf -- 0x8 
			};
		} r0xb3a4; // @ 0x3a4
		uint8_t pad6[0x14];
		uint32_t RWNXAGCCCATIMEOUT; // @ 0x3bc
		union {
			uint32_t value;
			struct {
				uint32_t set_0xa4_48 : 8; // @ 0x7 -- 0x0 
				uint32_t set_0xa3_49 : 8; // @ 0xf -- 0x8 
				uint32_t pad0 : 8;
				uint32_t set_0x18_18 : 8; // @ 0x1f -- 0x18 
			};
		} r0xb3c0; // @ 0x3c0
		union {
			uint32_t value;
			struct {
				uint32_t set_0xce_6 : 8; // @ 0x7 -- 0x0 
			};
		} r0xb3c4; // @ 0x3c4
		uint8_t pad7[0x4c];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 8;
				uint32_t set1 : 1; // @ 0x8 -- 0x8 
			};
		} irqmacccatimeouten; // @ 0x414
		uint8_t pad8[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 8;
				uint32_t needreset : 1; // @ 0x8 -- 0x8 
			};
		} r41c; // @ 0x41c
		uint32_t r420_copy41c; // @ 0x420
		uint8_t pad9[0xdc];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 12;
				uint32_t set_0x2_2 : 2; // @ 0xd -- 0xc 
			};
		} r0xb500; // @ 0x500
		uint8_t pad10[0xb1c];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 16;
				uint32_t set_0x14_0 : 10; // @ 0x19 -- 0x10 
			};
		} r0xc020; // @ 0x1020
		uint8_t pad11[0x1c];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 15;
				uint32_t set_0x3_44 : 5; // @ 0x13 -- 0xf 
				uint32_t set_0xc_43 : 5; // @ 0x18 -- 0x14 
			};
		} r0xc040; // @ 0x1040
		union {
			uint32_t value;
			struct {
				uint32_t set_0x0_46 : 8; // @ 0x7 -- 0x0 
				uint32_t set_0x8_45 : 8; // @ 0xf -- 0x8 
			};
		} r0xc044; // @ 0x1044
		uint8_t pad12[0x38];
		uint8_t rxgain_offset_vs_temperature[0x9]; // @ 0x1080
		uint8_t pad13[0x194];
		union {
			uint32_t value;
			struct {
				uint32_t set0 : 16; // @ 0xf -- 0x0 
			};
		} rc218; // @ 0x1218
		uint8_t pad14[0x5f8];
		union {
			uint32_t value;
			struct {
				uint32_t set_0x0_42 : 2; // @ 0x1 -- 0x0 
			};
		} r0xc814; // @ 0x1814
		uint8_t pad15[0x14];
		union {
			uint32_t value;
			struct {
				uint32_t set_0xb5_50 : 8; // @ 0x7 -- 0x0 
				uint32_t set_0x1_51 : 1; // @ 0x8 -- 0x8 
				uint32_t pad0 : 2;
				uint32_t set_0x1_52 : 1; // @ 0xb -- 0xb 
				uint32_t pad1 : 3;
				uint32_t set_0x40_59 : 9; // @ 0x17 -- 0xf 
			};
		} r0xc82c; // @ 0x182c
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 10;
				uint32_t set_0x5_41 : 3; // @ 0xc -- 0xa 
				uint32_t pad1 : 1;
				uint32_t set_0x36_40 : 6; // @ 0x13 -- 0xe 
				uint32_t set_0x1_39 : 6; // @ 0x19 -- 0x14 
				uint32_t set_0x3f_38 : 6; // @ 0x1f -- 0x1a 
			};
		} r0xc830; // @ 0x1830
		uint8_t pad16[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t set_0x100_54 : 19; // @ 0x12 -- 0x0 
				uint32_t pad0 : 12;
				uint32_t set_0x1_53 : 1; // @ 0x1f -- 0x1f 
			};
		} r0xc838; // @ 0x1838
		union {
			uint32_t value;
			struct {
				uint32_t set_0x17c_56 : 20; // @ 0x13 -- 0x0 
				uint32_t pad0 : 11;
				uint32_t set_0x1_55 : 1; // @ 0x1f -- 0x1f 
			};
		} r0xc83c; // @ 0x183c
		union {
			uint32_t value;
			struct {
				uint32_t set_0x100_58 : 22; // @ 0x15 -- 0x0 
				uint32_t pad0 : 9;
				uint32_t set_0x1_57 : 1; // @ 0x1f -- 0x1f 
			};
		} r0xc840; // @ 0x1840
	};
} agc_regs;
#define AGC_BASE 0x44c0b000
#define AGC ((agc_regs* volatile)(AGC_BASE))