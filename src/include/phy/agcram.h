typedef union {
	uint32_t regs[0x200];
	uint8_t pad[0x800];
	struct {
		uint32_t agcram[0x200]; // @ 0x0
	};
} agcram_regs;
#define AGCRAM_BASE 0x54c0a000
#define AGCRAM ((volatile agcram_regs*)(AGCRAM_BASE))