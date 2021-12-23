typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t cr_cks_clr : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t cr_cks_byte_swap : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t pad0 : 30;
			};
		} cks_config; // @ 0x0
		union {
			uint32_t value;
			struct {
				uint32_t data_in : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t pad0 : 24;
			};
		} data_in; // @ 0x4
		union {
			uint32_t value;
			struct {
				uint32_t cks_out : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} cks_out; // @ 0x8
	};
} cks_regs;
#define CKS_BASE 0x4000a000
#define CKS ((volatile cks_regs*)(CKS_BASE))