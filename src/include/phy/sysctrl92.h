typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		uint8_t pad0[0x4];
		uint32_t set5010001f; // @ 0x4
	};
} sysctrl92_regs;
#define SYSCTRL92_BASE 0x44920000
#define SYSCTRL92 ((sysctrl92_regs* volatile)(SYSCTRL92_BASE))