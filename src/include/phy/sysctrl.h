typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		uint8_t pad0[0x68];
		union {
			uint32_t value;
			struct {
				uint32_t diag_sel : 16; // @ 15 -- 0 # 0xffff0000
			};
		} diag_conf; // @ 0x68
		uint8_t pad1[0x8];
		uint32_t r074; // @ 0x74
		uint8_t pad2[0xc];
		union {
			uint32_t value;
			struct {
				uint32_t time_greater_on_bit12 : 1; // @ 0 -- 0 # 0xfffffffe
			};
		} time; // @ 0x84
		uint8_t pad3[0x58];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 8;
				uint32_t set1 : 9; // @ 16 -- 8 # 0xfffe00ff
			};
		} misc_cntl; // @ 0xe0
	};
} sysctrl_regs;
#define SYSCTRL_BASE 0x44900000
#define SYSCTRL ((sysctrl_regs* volatile)(SYSCTRL_BASE))