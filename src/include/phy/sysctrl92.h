#ifndef SYSCTRL92_BASE
typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		uint8_t pad0[0x4];
		uint32_t ptr_config; // @ 0x4
	};
} sysctrl92_regs;
#define SYSCTRL92_BASE 0x44920000
#define SYSCTRL92 ((volatile sysctrl92_regs*)(SYSCTRL92_BASE))
#endif