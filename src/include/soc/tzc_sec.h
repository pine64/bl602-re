typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		uint8_t pad0[0x40];
		union {
			uint32_t value;
			struct {
				uint32_t tzc_rom0_r0_id0_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t tzc_rom0_r1_id0_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t tzc_rom1_r0_id0_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t tzc_rom1_r1_id0_en : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t pad0 : 4;
				uint32_t tzc_rom0_r0_id1_en : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t tzc_rom0_r1_id1_en : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t tzc_rom1_r0_id1_en : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t tzc_rom1_r1_id1_en : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t pad1 : 4;
				uint32_t tzc_rom0_r0_en : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t tzc_rom0_r1_en : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t tzc_rom1_r0_en : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t tzc_rom1_r1_en : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t pad2 : 4;
				uint32_t tzc_rom0_r0_lock : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t tzc_rom0_r1_lock : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t tzc_rom1_r0_lock : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t tzc_rom1_r1_lock : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t tzc_sboot_done : 4; // @ 31 -- 28 # 0xfffffff
			};
		} tzc_rom_ctrl; // @ 0x40
		union {
			uint32_t value;
			struct {
				uint32_t tzc_rom0_r0_end : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t tzc_rom0_r0_start : 16; // @ 31 -- 16 # 0xffff
			};
		} tzc_rom0_r0; // @ 0x44
		union {
			uint32_t value;
			struct {
				uint32_t tzc_rom0_r1_end : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t tzc_rom0_r1_start : 16; // @ 31 -- 16 # 0xffff
			};
		} tzc_rom0_r1; // @ 0x48
		union {
			uint32_t value;
			struct {
				uint32_t tzc_rom1_r0_end : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t tzc_rom1_r0_start : 16; // @ 31 -- 16 # 0xffff
			};
		} tzc_rom1_r0; // @ 0x4c
		union {
			uint32_t value;
			struct {
				uint32_t tzc_rom1_r1_end : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t tzc_rom1_r1_start : 16; // @ 31 -- 16 # 0xffff
			};
		} tzc_rom1_r1; // @ 0x50
	};
} tzc_sec_regs;
#define TZC_SEC_BASE 0x40005000
#define TZC_SEC ((tzc_sec_regs* volatile)(TZC_SEC_BASE))