typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		uint8_t pad0[0x80];
		union {
			uint32_t value;
			struct {
				uint32_t reg_key_slot_6_w0 : 32; // @ 31 -- 0 # 0x0
			};
		} reg_key_slot_6_w0; // @ 0x80
		union {
			uint32_t value;
			struct {
				uint32_t reg_key_slot_6_w1 : 32; // @ 31 -- 0 # 0x0
			};
		} reg_key_slot_6_w1; // @ 0x84
		union {
			uint32_t value;
			struct {
				uint32_t reg_key_slot_6_w2 : 32; // @ 31 -- 0 # 0x0
			};
		} reg_key_slot_6_w2; // @ 0x88
		union {
			uint32_t value;
			struct {
				uint32_t reg_key_slot_6_w3 : 32; // @ 31 -- 0 # 0x0
			};
		} reg_key_slot_6_w3; // @ 0x8c
		union {
			uint32_t value;
			struct {
				uint32_t reg_key_slot_7_w0 : 32; // @ 31 -- 0 # 0x0
			};
		} reg_key_slot_7_w0; // @ 0x90
		union {
			uint32_t value;
			struct {
				uint32_t reg_key_slot_7_w1 : 32; // @ 31 -- 0 # 0x0
			};
		} reg_key_slot_7_w1; // @ 0x94
		union {
			uint32_t value;
			struct {
				uint32_t reg_key_slot_7_w2 : 32; // @ 31 -- 0 # 0x0
			};
		} reg_key_slot_7_w2; // @ 0x98
		union {
			uint32_t value;
			struct {
				uint32_t reg_key_slot_7_w3 : 32; // @ 31 -- 0 # 0x0
			};
		} reg_key_slot_7_w3; // @ 0x9c
		union {
			uint32_t value;
			struct {
				uint32_t reg_key_slot_8_w0 : 32; // @ 31 -- 0 # 0x0
			};
		} reg_key_slot_8_w0; // @ 0xa0
		union {
			uint32_t value;
			struct {
				uint32_t reg_key_slot_8_w1 : 32; // @ 31 -- 0 # 0x0
			};
		} reg_key_slot_8_w1; // @ 0xa4
		union {
			uint32_t value;
			struct {
				uint32_t reg_key_slot_8_w2 : 32; // @ 31 -- 0 # 0x0
			};
		} reg_key_slot_8_w2; // @ 0xa8
		union {
			uint32_t value;
			struct {
				uint32_t reg_key_slot_8_w3 : 32; // @ 31 -- 0 # 0x0
			};
		} reg_key_slot_8_w3; // @ 0xac
		union {
			uint32_t value;
			struct {
				uint32_t reg_key_slot_9_w0 : 32; // @ 31 -- 0 # 0x0
			};
		} reg_key_slot_9_w0; // @ 0xb0
		union {
			uint32_t value;
			struct {
				uint32_t reg_key_slot_9_w1 : 32; // @ 31 -- 0 # 0x0
			};
		} reg_key_slot_9_w1; // @ 0xb4
		union {
			uint32_t value;
			struct {
				uint32_t reg_key_slot_9_w2 : 32; // @ 31 -- 0 # 0x0
			};
		} reg_key_slot_9_w2; // @ 0xb8
		union {
			uint32_t value;
			struct {
				uint32_t reg_key_slot_9_w3 : 32; // @ 31 -- 0 # 0x0
			};
		} reg_key_slot_9_w3; // @ 0xbc
		uint32_t reg_key_slot_10_w0; // @ 0xc0
		uint32_t reg_key_slot_10_w1; // @ 0xc4
		uint32_t reg_key_slot_10_w2; // @ 0xc8
		uint32_t reg_key_slot_10_w3; // @ 0xcc
		uint32_t reg_key_slot_11_w0; // @ 0xd0
		uint32_t reg_key_slot_11_w1; // @ 0xd4
		uint32_t reg_key_slot_11_w2; // @ 0xd8
		uint32_t reg_key_slot_11_w3; // @ 0xdc
		union {
			uint32_t value;
			struct {
				uint32_t RESERVED_9_0 : 10; // @ 9 -- 0 # 0xfffffc00
				uint32_t wr_lock_key_slot_6 : 1; // @ 10 -- 10 # 0xfffffbff
				uint32_t wr_lock_key_slot_7 : 1; // @ 11 -- 11 # 0xfffff7ff
				uint32_t wr_lock_key_slot_8 : 1; // @ 12 -- 12 # 0xffffefff
				uint32_t wr_lock_key_slot_9 : 1; // @ 13 -- 13 # 0xffffdfff
				uint32_t pad0 : 2;
				uint32_t RESERVED_25_16 : 10; // @ 25 -- 16 # 0xfc00ffff
				uint32_t rd_lock_key_slot_6 : 1; // @ 26 -- 26 # 0xfbffffff
				uint32_t rd_lock_key_slot_7 : 1; // @ 27 -- 27 # 0xf7ffffff
				uint32_t rd_lock_key_slot_8 : 1; // @ 28 -- 28 # 0xefffffff
				uint32_t rd_lock_key_slot_9 : 1; // @ 29 -- 29 # 0xdfffffff
				uint32_t pad1 : 2;
			};
		} reg_data_1_lock; // @ 0xe0
	};
} ef_data_1_regs;
#define EF_DATA_1_BASE 0x40007000
#define EF_DATA_1 ((ef_data_1_regs* volatile)(EF_DATA_1_BASE))