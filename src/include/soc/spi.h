#ifndef SPI_BASE
typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t cr_spi_m_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t cr_spi_s_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t cr_spi_frame_size : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t cr_spi_sclk_pol : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t cr_spi_sclk_ph : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t cr_spi_bit_inv : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t cr_spi_byte_inv : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t cr_spi_rxd_ignr_en : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t cr_spi_m_cont_en : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t pad0 : 1;
				uint32_t cr_spi_deg_en : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t cr_spi_deg_cnt : 4; // @ 15 -- 12 # 0xffff0fff
				uint32_t pad1 : 16;
			};
		} spi_config; // @ 0x0
		union {
			uint32_t value;
			struct {
				uint32_t spi_end_int : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t spi_txf_int : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t spi_rxf_int : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t spi_sto_int : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t spi_txu_int : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t spi_fer_int : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad0 : 2;
				uint32_t cr_spi_end_mask : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t cr_spi_txf_mask : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t cr_spi_rxf_mask : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t cr_spi_sto_mask : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t cr_spi_txu_mask : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t cr_spi_fer_mask : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t pad1 : 2;
				uint32_t cr_spi_end_clr : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t rsvd_17 : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t rsvd_18 : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t cr_spi_sto_clr : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t cr_spi_txu_clr : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t rsvd_21 : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t pad2 : 2;
				uint32_t cr_spi_end_en : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t cr_spi_txf_en : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t cr_spi_rxf_en : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t cr_spi_sto_en : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t cr_spi_txu_en : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t cr_spi_fer_en : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t pad3 : 2;
			};
		} spi_int_sts; // @ 0x4
		union {
			uint32_t value;
			struct {
				uint32_t sts_spi_bus_busy : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 31;
			};
		} spi_bus_busy; // @ 0x8
		uint8_t pad0[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t cr_spi_prd_s : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t cr_spi_prd_p : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t cr_spi_prd_d_ph_0 : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t cr_spi_prd_d_ph_1 : 8; // @ 31 -- 24 # 0xffffff
			};
		} spi_prd_0; // @ 0x10
		union {
			uint32_t value;
			struct {
				uint32_t cr_spi_prd_i : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t pad0 : 24;
			};
		} spi_prd_1; // @ 0x14
		union {
			uint32_t value;
			struct {
				uint32_t cr_spi_rxd_ignr_p : 5; // @ 4 -- 0 # 0xffffffe0
				uint32_t pad0 : 11;
				uint32_t cr_spi_rxd_ignr_s : 5; // @ 20 -- 16 # 0xffe0ffff
				uint32_t pad1 : 11;
			};
		} spi_rxd_ignr; // @ 0x18
		union {
			uint32_t value;
			struct {
				uint32_t cr_spi_sto_value : 12; // @ 11 -- 0 # 0xfffff000
				uint32_t pad0 : 20;
			};
		} spi_sto_value; // @ 0x1c
		uint8_t pad1[0x60];
		union {
			uint32_t value;
			struct {
				uint32_t spi_dma_tx_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t spi_dma_rx_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t tx_fifo_clr : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t rx_fifo_clr : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t tx_fifo_overflow : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t tx_fifo_underflow : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t rx_fifo_overflow : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t rx_fifo_underflow : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t pad0 : 24;
			};
		} spi_fifo_config_0; // @ 0x80
		union {
			uint32_t value;
			struct {
				uint32_t tx_fifo_cnt : 3; // @ 2 -- 0 # 0xfffffff8
				uint32_t pad0 : 5;
				uint32_t rx_fifo_cnt : 3; // @ 10 -- 8 # 0xfffff8ff
				uint32_t pad1 : 5;
				uint32_t tx_fifo_th : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t pad2 : 6;
				uint32_t rx_fifo_th : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t pad3 : 6;
			};
		} spi_fifo_config_1; // @ 0x84
		union {
			uint32_t value;
			struct {
				uint32_t spi_fifo_wdata : 32; // @ 31 -- 0 # 0x0
			};
		} spi_fifo_wdata; // @ 0x88
		union {
			uint32_t value;
			struct {
				uint32_t spi_fifo_rdata : 32; // @ 31 -- 0 # 0x0
			};
		} spi_fifo_rdata; // @ 0x8c
	};
} spi_regs;
#define SPI_BASE 0x4000a200
#define SPI ((volatile spi_regs*)(SPI_BASE))
#endif