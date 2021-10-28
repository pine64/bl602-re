typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t cr_i2c_m_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t cr_i2c_pkt_dir : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t cr_i2c_deg_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t cr_i2c_scl_sync_en : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t cr_i2c_sub_addr_en : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t cr_i2c_sub_addr_bc : 2; // @ 6 -- 5 # 0xffffff9f
				uint32_t pad0 : 1;
				uint32_t cr_i2c_slv_addr : 7; // @ 14 -- 8 # 0xffff80ff
				uint32_t pad1 : 1;
				uint32_t cr_i2c_pkt_len : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t pad2 : 4;
				uint32_t cr_i2c_deg_cnt : 4; // @ 31 -- 28 # 0xfffffff
			};
		} i2c_config; // @ 0x0
		union {
			uint32_t value;
			struct {
				uint32_t i2c_end_int : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t i2c_txf_int : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t i2c_rxf_int : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t i2c_nak_int : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t i2c_arb_int : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t i2c_fer_int : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t pad0 : 2;
				uint32_t cr_i2c_end_mask : 1; // @ 8 -- 8 # 0xfffffeff
				uint32_t cr_i2c_txf_mask : 1; // @ 9 -- 9 # 0xfffffdff
				uint32_t cr_i2c_rxf_mask : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t cr_i2c_nak_mask : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t cr_i2c_arb_mask : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t cr_i2c_fer_mask : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t pad1 : 2;
				uint32_t cr_i2c_end_clr : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t rsvd_17 : 1; // @ 17 -- 17 # 0xfffdffff
				uint32_t rsvd_18 : 1; // @ 18 -- 18 # 0xfffbffff
				uint32_t cr_i2c_nak_clr : 1; // @ 19 -- 19 # 0xfff7ffff
				uint32_t cr_i2c_arb_clr : 1; // @ 20 -- 20 # 0xffefffff
				uint32_t rsvd_21 : 1; // @ 21 -- 21 # 0xffdfffff
				uint32_t pad2 : 2;
				uint32_t cr_i2c_end_en : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t cr_i2c_txf_en : 1; // @ 25 -- 25 # 0xfdffffff
				uint32_t cr_i2c_rxf_en : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t cr_i2c_nak_en : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t cr_i2c_arb_en : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t cr_i2c_fer_en : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t pad3 : 2;
			};
		} i2c_int_sts; // @ 0x4
		union {
			uint32_t value;
			struct {
				uint32_t cr_i2c_sub_addr_b0 : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t cr_i2c_sub_addr_b1 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t cr_i2c_sub_addr_b2 : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t cr_i2c_sub_addr_b3 : 8; // @ 31 -- 24 # 0xffffff
			};
		} i2c_sub_addr; // @ 0x8
		union {
			uint32_t value;
			struct {
				uint32_t sts_i2c_bus_busy : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t cr_i2c_bus_busy_clr : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t pad0 : 30;
			};
		} i2c_bus_busy; // @ 0xc
		union {
			uint32_t value;
			struct {
				uint32_t cr_i2c_prd_s_ph_0 : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t cr_i2c_prd_s_ph_1 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t cr_i2c_prd_s_ph_2 : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t cr_i2c_prd_s_ph_3 : 8; // @ 31 -- 24 # 0xffffff
			};
		} i2c_prd_start; // @ 0x10
		union {
			uint32_t value;
			struct {
				uint32_t cr_i2c_prd_p_ph_0 : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t cr_i2c_prd_p_ph_1 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t cr_i2c_prd_p_ph_2 : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t cr_i2c_prd_p_ph_3 : 8; // @ 31 -- 24 # 0xffffff
			};
		} i2c_prd_stop; // @ 0x14
		union {
			uint32_t value;
			struct {
				uint32_t cr_i2c_prd_d_ph_0 : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t cr_i2c_prd_d_ph_1 : 8; // @ 15 -- 8 # 0xffff00ff
				uint32_t cr_i2c_prd_d_ph_2 : 8; // @ 23 -- 16 # 0xff00ffff
				uint32_t cr_i2c_prd_d_ph_3 : 8; // @ 31 -- 24 # 0xffffff
			};
		} i2c_prd_data; // @ 0x18
		uint8_t pad0[0x64];
		union {
			uint32_t value;
			struct {
				uint32_t i2c_dma_tx_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t i2c_dma_rx_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t tx_fifo_clr : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t rx_fifo_clr : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t tx_fifo_overflow : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t tx_fifo_underflow : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t rx_fifo_overflow : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t rx_fifo_underflow : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t pad0 : 24;
			};
		} i2c_fifo_config_0; // @ 0x80
		union {
			uint32_t value;
			struct {
				uint32_t tx_fifo_cnt : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t pad0 : 6;
				uint32_t rx_fifo_cnt : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t pad1 : 6;
				uint32_t tx_fifo_th : 1; // @ 16 -- 16 # 0xfffeffff
				uint32_t pad2 : 7;
				uint32_t rx_fifo_th : 1; // @ 24 -- 24 # 0xfeffffff
				uint32_t pad3 : 7;
			};
		} i2c_fifo_config_1; // @ 0x84
		union {
			uint32_t value;
			struct {
				uint32_t i2c_fifo_wdata : 32; // @ 31 -- 0 # 0x0
			};
		} i2c_fifo_wdata; // @ 0x88
		union {
			uint32_t value;
			struct {
				uint32_t i2c_fifo_rdata : 32; // @ 31 -- 0 # 0x0
			};
		} i2c_fifo_rdata; // @ 0x8c
	};
} i2c_regs;
#define I2C_BASE 0x4000a300
#define I2C ((i2c_regs* volatile)(I2C_BASE))