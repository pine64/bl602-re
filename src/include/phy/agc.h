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
				uint32_t set0d : 1; // @ 0x0 -- 0x0 
				uint32_t set0c : 1; // @ 0x1 -- 0x1 
				uint32_t set0b : 1; // @ 0x2 -- 0x2 
				uint32_t set0a : 1; // @ 0x3 -- 0x3 
			};
		} r110; // @ 0x110
		uint8_t pad1[0x4];
		uint32_t riu_iqestiterclr; // @ 0x118
		uint8_t pad2[0x224];
		uint32_t riu_rwnxagcaci20marg0; // @ 0x340
		uint32_t riu_rwnxagcaci20marg1; // @ 0x344
		uint32_t riu_rwnxagcaci20marg2; // @ 0x348
		uint8_t pad3[0x44];
		union {
			uint32_t value;
			struct {
				uint32_t set1 : 2; // @ 0x1 -- 0x0 
				uint32_t pad0 : 10;
				uint32_t agcfsmreset : 1; // @ 0xc -- 0xc 
			};
		} RWNXAGCCNTL; // @ 0x390
		uint8_t pad4[0x28];
		uint32_t RWNXAGCCCATIMEOUT; // @ 0x3bc
		uint8_t pad5[0x54];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 8;
				uint32_t set1 : 1; // @ 0x8 -- 0x8 
			};
		} irqmacccatimeouten; // @ 0x414
		uint8_t pad6[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 8;
				uint32_t rc_resetmdm : 1; // @ 0x8 -- 0x8 
			};
		} r41c; // @ 0x41c
		uint32_t r420; // @ 0x420
		uint8_t pad7[0xdc];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 12;
				uint32_t set10 : 2; // @ 0xd -- 0xc 
			};
		} r500; // @ 0x500
		uint8_t pad8[0xb1c];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 16;
				uint32_t set20 : 10; // @ 0x19 -- 0x10 
			};
		} rc020; // @ 0x1020
		uint8_t pad9[0x1f4];
		union {
			uint32_t value;
			struct {
				uint32_t set0 : 16; // @ 0xf -- 0x0 
			};
		} rc218; // @ 0x1218
	};
} agc_regs;
#define AGC_BASE 0x44c0b000
#define AGC ((agc_regs* volatile)(AGC_BASE))