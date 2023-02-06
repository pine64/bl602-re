#ifndef UART_BASE
typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		union {
			uint32_t value;
			struct {
				uint32_t cr_utx_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t cr_utx_cts_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t cr_utx_frm_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t pad0 : 1;
				uint32_t cr_utx_prt_en : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t cr_utx_prt_sel : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t cr_utx_ir_en : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t cr_utx_ir_inv : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t cr_utx_bit_cnt_d : 3; // @ 10 -- 8 # 0xfffff8ff
				uint32_t pad1 : 1;
				uint32_t cr_utx_bit_cnt_p : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t pad2 : 2;
				uint32_t cr_utx_len : 16; // @ 31 -- 16 # 0xffff
			};
		} utx_config; // @ 0x0
		union {
			uint32_t value;
			struct {
				uint32_t cr_urx_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t cr_urx_rts_sw_mode : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t cr_urx_rts_sw_val : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t cr_urx_abr_en : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t cr_urx_prt_en : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t cr_urx_prt_sel : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t cr_urx_ir_en : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t cr_urx_ir_inv : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t cr_urx_bit_cnt_d : 3; // @ 10 -- 8 # 0xfffff8ff
				uint32_t cr_urx_deg_en : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t cr_urx_deg_cnt : 4; // @ 15 -- 12 # 0xffff0fff
				uint32_t cr_urx_len : 16; // @ 31 -- 16 # 0xffff
			};
		} urx_config; // @ 0x4
		union {
			uint32_t value;
			struct {
				uint32_t cr_utx_bit_prd : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t cr_urx_bit_prd : 16; // @ 31 -- 16 # 0xffff
			};
		} uart_bit_prd; // @ 0x8
		union {
			uint32_t value;
			struct {
				uint32_t cr_uart_bit_inv : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t pad0 : 31;
			};
		} data_config; // @ 0xc
		union {
			uint32_t value;
			struct {
				uint32_t cr_utx_ir_pos_s : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t cr_utx_ir_pos_p : 16; // @ 31 -- 16 # 0xffff
			};
		} utx_ir_position; // @ 0x10
		union {
			uint32_t value;
			struct {
				uint32_t cr_urx_ir_pos_s : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t pad0 : 16;
			};
		} urx_ir_position; // @ 0x14
		union {
			uint32_t value;
			struct {
				uint32_t cr_urx_rto_value : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t pad0 : 24;
			};
		} urx_rto_timer; // @ 0x18
		uint8_t pad0[0x4];
		union {
			uint32_t value;
			struct {
				uint32_t utx_end_int : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t urx_end_int : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t utx_fifo_int : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t urx_fifo_int : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t urx_rto_int : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t urx_pce_int : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t utx_fer_int : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t urx_fer_int : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t pad0 : 24;
			};
		} uart_int_sts; // @ 0x20
		union {
			uint32_t value;
			struct {
				uint32_t cr_utx_end_mask : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t cr_urx_end_mask : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t cr_utx_fifo_mask : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t cr_urx_fifo_mask : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t cr_urx_rto_mask : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t cr_urx_pce_mask : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t cr_utx_fer_mask : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t cr_urx_fer_mask : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t pad0 : 24;
			};
		} uart_int_mask; // @ 0x24
		union {
			uint32_t value;
			struct {
				uint32_t cr_utx_end_clr : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t cr_urx_end_clr : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t rsvd_2 : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t rsvd_3 : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t cr_urx_rto_clr : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t cr_urx_pce_clr : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t rsvd_6 : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t rsvd_7 : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t pad0 : 24;
			};
		} uart_int_clear; // @ 0x28
		union {
			uint32_t value;
			struct {
				uint32_t cr_utx_end_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t cr_urx_end_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t cr_utx_fifo_en : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t cr_urx_fifo_en : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t cr_urx_rto_en : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t cr_urx_pce_en : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t cr_utx_fer_en : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t cr_urx_fer_en : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t pad0 : 24;
			};
		} uart_int_en; // @ 0x2c
		union {
			uint32_t value;
			struct {
				uint32_t sts_utx_bus_busy : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t sts_urx_bus_busy : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t pad0 : 30;
			};
		} uart_status; // @ 0x30
		union {
			uint32_t value;
			struct {
				uint32_t sts_urx_abr_prd_start : 16; // @ 15 -- 0 # 0xffff0000
				uint32_t sts_urx_abr_prd_0x55 : 16; // @ 31 -- 16 # 0xffff
			};
		} sts_urx_abr_prd; // @ 0x34
		uint8_t pad1[0x48];
		union {
			uint32_t value;
			struct {
				uint32_t uart_dma_tx_en : 1; // @ 0 -- 0 # 0xfffffffe
				uint32_t uart_dma_rx_en : 1; // @ 1 -- 1 # 0xfffffffd
				uint32_t tx_fifo_clr : 1; // @ 2 -- 2 # 0xfffffffb
				uint32_t rx_fifo_clr : 1; // @ 3 -- 3 # 0xfffffff7
				uint32_t tx_fifo_overflow : 1; // @ 4 -- 4 # 0xffffffef
				uint32_t tx_fifo_underflow : 1; // @ 5 -- 5 # 0xffffffdf
				uint32_t rx_fifo_overflow : 1; // @ 6 -- 6 # 0xffffffbf
				uint32_t rx_fifo_underflow : 1; // @ 7 -- 7 # 0xffffff7f
				uint32_t pad0 : 24;
			};
		} uart_fifo_config_0; // @ 0x80
		union {
			uint32_t value;
			struct {
				uint32_t tx_fifo_cnt : 6; // @ 5 -- 0 # 0xffffffc0
				uint32_t pad0 : 2;
				uint32_t rx_fifo_cnt : 6; // @ 13 -- 8 # 0xffffc0ff
				uint32_t pad1 : 2;
				uint32_t tx_fifo_th : 5; // @ 20 -- 16 # 0xffe0ffff
				uint32_t pad2 : 3;
				uint32_t rx_fifo_th : 5; // @ 28 -- 24 # 0xe0ffffff
				uint32_t pad3 : 3;
			};
		} uart_fifo_config_1; // @ 0x84
		union {
			uint32_t value;
			struct {
				uint32_t uart_fifo_wdata : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t pad0 : 24;
			};
		} uart_fifo_wdata; // @ 0x88
		union {
			uint32_t value;
			struct {
				uint32_t uart_fifo_rdata : 8; // @ 7 -- 0 # 0xffffff00
				uint32_t pad0 : 24;
			};
		} uart_fifo_rdata; // @ 0x8c
	};
} uart_regs;
#define UART_BASE 0x4000a000
#define UART ((volatile uart_regs*)(UART_BASE))
#endif