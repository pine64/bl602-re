#ifndef INTC_BASE
typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		uint32_t irq_status[0x2]; // @ 0x0
		uint32_t irq_raw_status[0x2]; // @ 0x8
		uint32_t irq_unmask_set[0x2]; // @ 0x10
		uint32_t irq_unmask_clear[0x2]; // @ 0x18
		uint32_t irq_polarity[0x2]; // @ 0x20
		uint8_t pad0[0x18];
		uint32_t irq_index; // @ 0x40
	};
} intc_regs;
#define INTC_BASE 0x44910000
#define INTC ((volatile intc_regs*)(INTC_BASE))
#endif