typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		uint8_t pad0[0x10];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 16;
				uint32_t busyatffff : 16; // @ 0x1f -- 0x10 
			};
		} dma_status; // @ 0x10
		uint8_t pad1[0xc];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 5;
				uint32_t RXHeader : 1; // @ 0x5 -- 0x5 
				uint32_t RXPayload : 1; // @ 0x6 -- 0x6 
				uint32_t b7 : 1; // @ 0x7 -- 0x7 
				uint32_t b8 : 1; // @ 0x8 -- 0x8 
				uint32_t TX : 27; // @ 0x1f -- 0x5 
			};
		} tx_reset; // @ 0x20
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 5;
				uint32_t RXHeader : 1; // @ 0x5 -- 0x5 
				uint32_t RXPayload : 1; // @ 0x6 -- 0x6 
				uint32_t pad1 : 1;
				uint32_t b8 : 1; // @ 0x8 -- 0x8 
				uint32_t TX : 27; // @ 0x1f -- 0x5 
			};
		} status; // @ 0x24
		uint8_t pad2[0x58];
		union {
			uint32_t value;
			struct {
				uint32_t bridgedmacnt : 16; // @ 0xf -- 0x0 
			};
		} TX_BCN; // @ 0x80
		union {
			uint32_t value;
			struct {
				uint32_t bridgedmacnt : 16; // @ 0xf -- 0x0 
			};
		} TX_AC_0; // @ 0x84
		union {
			uint32_t value;
			struct {
				uint32_t bridgedmacnt : 16; // @ 0xf -- 0x0 
			};
		} TX_AC_1; // @ 0x88
		union {
			uint32_t value;
			struct {
				uint32_t bridgedmacnt : 16; // @ 0xf -- 0x0 
			};
		} TX_AC_2; // @ 0x8c
		union {
			uint32_t value;
			struct {
				uint32_t bridgedmacnt : 16; // @ 0xf -- 0x0 
			};
		} TX_AC_3; // @ 0x90
		uint8_t pad3[0x10];
		union {
			uint32_t value;
			struct {
				uint32_t lli : 16; // @ 0xf -- 0x0 
			};
		} LinkListItem0; // @ 0xa4
		uint8_t pad4[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t lli : 16; // @ 0xf -- 0x0 
			};
		} LinkListItem1; // @ 0xac
	};
} dma_regs;
#define DMA_BASE 0x44a00000
#define DMA ((dma_regs* volatile)(DMA_BASE))