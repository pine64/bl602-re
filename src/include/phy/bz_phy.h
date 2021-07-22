typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		uint8_t pad0[0x808];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 23;
				uint32_t set_0x1_67 : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t set_0x8_68 : 8; // @ 31 -- 24 # 0xffffff
			};
		} r0x2808; // @ 0x808
		union {
			uint32_t value;
			struct {
				uint32_t set_0x0_71 : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t pad0 : 15;
				uint32_t set_0x1_69 : 1; // @ 23 -- 23 # 0xff7fffff
				uint32_t set_0x4_70 : 8; // @ 31 -- 24 # 0xffffff
			};
		} r0x280c; // @ 0x80c
		union {
			uint32_t value;
			struct {
				uint32_t set_0x0_76 : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t set_0x1_77 : 1; // @ 1 -- 1 # 0xfffffffd
			};
		} r0x2810; // @ 0x810
		uint8_t pad1[0x40];
		union {
			uint32_t value;
			struct {
				uint32_t set_0x1e_75 : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t set_0x20_72 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t set_0xa_74 : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t set_0x1e_73 : 8; // @ 31 -- 24 # 0xffffff
			};
		} r0x2854; // @ 0x854
		uint8_t pad2[0x454];
		union {
			uint32_t value;
			struct {
				uint32_t set_0x4_78 : 5; // @ 4 -- 0 # 0xffffffe0
			};
		} r0x2cac; // @ 0xcac
	};
} bz_phy_regs;
#define BZ_PHY_BASE 0x40002000
#define BZ_PHY ((bz_phy_regs* volatile)(BZ_PHY_BASE))