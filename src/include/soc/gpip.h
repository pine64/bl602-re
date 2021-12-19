typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t gpadc_dma_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t gpadc_fifo_clr : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t gpadc_fifo_ne : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t gpadc_fifo_full : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t gpadc_rdy : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t gpadc_fifo_overrun : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t gpadc_fifo_underrun : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t pad0 : 1;
				uint32_t gpadc_rdy_clr : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t gpadc_fifo_overrun_clr : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t gpadc_fifo_underrun_clr : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t pad1 : 1;
				uint32_t gpadc_rdy_mask : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t gpadc_fifo_overrun_mask : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t gpadc_fifo_underrun_mask : 1; // @ 14 -- 14 # 0xffffbfff
				uint32_t pad2 : 1;
				uint32_t gpadc_fifo_data_count : 6; // @ 21 -- 16 # 0xffc0ffff
				uint32_t gpadc_fifo_thl : 2; // @ 23 -- 22 # 0xff3fffff
				uint32_t rsvd_31_24 : 8; // @ 31 -- 24 # 0xffffff
			};
		} gpadc_config; // @ 0x0
		union {
			uint32_t value;
			struct {
				uint32_t gpadc_dma_rdata : 26; // @ 25 -- 0 # 0xfc000000
				uint32_t rsvd_31_26 : 6; // @ 31 -- 26 # 0x3ffffff
			};
		} gpadc_dma_rdata; // @ 0x4
		uint8_t pad0[0x38];
		union {
			uint32_t value;
			struct {
				uint32_t gpdac_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t gpdac_en2 : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t pad0 : 2;
				uint32_t dsm_mode : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t pad1 : 2;
				uint32_t gpdac_mode : 3; // @ 10 -- 8 # 0xfffff8ff
				uint32_t pad2 : 5;
				uint32_t gpdac_ch_a_sel : 4; // @ 19 -- 16 # 0xfff0ffff
				uint32_t gpdac_ch_b_sel : 4; // @ 23 -- 20 # 0xff0fffff
				uint32_t rsvd_31_24 : 8; // @ 31 -- 24 # 0xffffff
			};
		} gpdac_config; // @ 0x40
		union {
			uint32_t value;
			struct {
				uint32_t gpdac_dma_tx_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 3;
				uint32_t gpdac_dma_format : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t pad1 : 26;
			};
		} gpdac_dma_config; // @ 0x44
		union {
			uint32_t value;
			struct {
				uint32_t gpdac_dma_wdata : 32; // @ 31 -- 0 # 0x0
			};
		} gpdac_dma_wdata; // @ 0x48
		union {
			uint32_t value;
			struct {
				uint32_t tx_fifo_empty : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t tx_fifo_full : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t tx_cs : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t TxFifoRdPtr : 3; // @ 6 -- 4 # 0xffffff8f
				uint32_t pad0 : 1;
				uint32_t TxFifoWrPtr : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad1 : 22;
			};
		} gpdac_tx_fifo_status; // @ 0x4c
	};
} gpip_regs;
#define GPIP_BASE 0x40002000
#define GPIP ((gpip_regs* volatile)(GPIP_BASE))