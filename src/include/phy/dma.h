typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		uint8_t pad0[0x10];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 16;
				uint32_t dma_status_oft_free : 16; // @ 31 -- 16 # 0xffff
			};
		} dma_status; // @ 0x10
		uint8_t pad1[0xc];
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 5;
				uint32_t RXHeader : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t RXPayload : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t b7 : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t b8 : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t TX : 27; // @ 31 -- 5 # 0x1f
			};
		} int_ack; // @ 0x20
		union {
			uint32_t value;
			struct {
				uint32_t pad0 : 5;
				uint32_t RXHeader : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t RXPayload : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t pad1 : 1;
				uint32_t b8 : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t TX : 27; // @ 31 -- 5 # 0x1f
			};
		} int_status; // @ 0x24
		uint8_t pad2[0x58];
		union {
			uint32_t value;
			struct {
				uint32_t bridgedmacnt : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} TX_BCN; // @ 0x80
		union {
			uint32_t value;
			struct {
				uint32_t bridgedmacnt : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} TX_AC_0; // @ 0x84
		union {
			uint32_t value;
			struct {
				uint32_t bridgedmacnt : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} TX_AC_1; // @ 0x88
		union {
			uint32_t value;
			struct {
				uint32_t bridgedmacnt : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} TX_AC_2; // @ 0x8c
		union {
			uint32_t value;
			struct {
				uint32_t bridgedmacnt : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} TX_AC_3; // @ 0x90
		uint8_t pad3[0x10];
		union {
			uint32_t value;
			struct {
				uint32_t counter : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} LinkListItem0; // @ 0xa4
		uint8_t pad4[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t counter : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} LinkListItem1; // @ 0xac
	};
} dma_regs;
#define DMA_BASE 0x44a00000
#define DMA ((dma_regs* volatile)(DMA_BASE))