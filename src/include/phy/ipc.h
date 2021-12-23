typedef union {
	uint32_t regs[0x400];
	uint8_t pad[0x1000];
	struct {
		uint32_t app2emb_trigger; // @ 0x0
		uint32_t emb2app_rawstatus; // @ 0x4
		uint32_t emb2app_ack; // @ 0x8
		uint32_t emb2app_unmask_set; // @ 0xc
		uint32_t emb2app_unmask_clear; // @ 0x10
		union {
			uint32_t value;
			struct {
				uint32_t emb2app0_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t emb2app1_sel : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t emb2app2_sel : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t emb2app3_sel : 2; // @ 7 -- 6 # 0xffffff3f
				uint32_t emb2app4_sel : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t emb2app5_sel : 2; // @ 11 -- 10 # 0xfffff3ff
				uint32_t emb2app6_sel : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t emb2app7_sel : 2; // @ 15 -- 14 # 0xffff3fff
				uint32_t emb2app8_sel : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t emb2app9_sel : 2; // @ 19 -- 18 # 0xfff3ffff
				uint32_t emb2app10_sel : 2; // @ 21 -- 20 # 0xffcfffff
				uint32_t emb2app11_sel : 2; // @ 23 -- 22 # 0xff3fffff
				uint32_t emb2app12_sel : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t emb2app13_sel : 2; // @ 27 -- 26 # 0xf3ffffff
				uint32_t emb2app14_sel : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t emb2app15_sel : 2; // @ 31 -- 30 # 0x3fffffff
			};
		} emb2app_line_sel_low; // @ 0x14
		uint32_t emb2app_line_sel_high; // @ 0x18
		uint32_t emb2app_status; // @ 0x1c
		uint8_t pad0[0x20];
		uint32_t app_signature; // @ 0x40
		uint8_t pad1[0xbc];
		uint32_t emb2app_trigger; // @ 0x100
		uint32_t app2emb_rawstatus; // @ 0x104
		uint32_t app2emb_ack; // @ 0x108
		uint32_t app2emb_unmask_set; // @ 0x10c
		uint32_t app2emb_unmask_clear; // @ 0x110
		union {
			uint32_t value;
			struct {
				uint32_t app2emb0_sel : 2; // @ 1 -- 0 # 0xfffffffc
				uint32_t app2emb1_sel : 2; // @ 3 -- 2 # 0xfffffff3
				uint32_t app2emb2_sel : 2; // @ 5 -- 4 # 0xffffffcf
				uint32_t app2emb3_sel : 2; // @ 7 -- 6 # 0xffffff3f
				uint32_t app2emb4_sel : 2; // @ 9 -- 8 # 0xfffffcff
				uint32_t app2emb5_sel : 2; // @ 11 -- 10 # 0xfffff3ff
				uint32_t app2emb6_sel : 2; // @ 13 -- 12 # 0xffffcfff
				uint32_t app2emb7_sel : 2; // @ 15 -- 14 # 0xffff3fff
				uint32_t app2emb8_sel : 2; // @ 17 -- 16 # 0xfffcffff
				uint32_t app2emb9_sel : 2; // @ 19 -- 18 # 0xfff3ffff
				uint32_t app2emb10_sel : 2; // @ 21 -- 20 # 0xffcfffff
				uint32_t app2emb11_sel : 2; // @ 23 -- 22 # 0xff3fffff
				uint32_t app2emb12_sel : 2; // @ 25 -- 24 # 0xfcffffff
				uint32_t app2emb13_sel : 2; // @ 27 -- 26 # 0xf3ffffff
				uint32_t app2emb14_sel : 2; // @ 29 -- 28 # 0xcfffffff
				uint32_t app2emb15_sel : 2; // @ 31 -- 30 # 0x3fffffff
			};
		} app2emb_line_sel_low; // @ 0x114
		uint32_t app2emb_line_sel_high; // @ 0x118
		uint32_t app2emb_status; // @ 0x11c
		uint8_t pad2[0x20];
		uint32_t emb_signature; // @ 0x140
	};
} ipc_regs;
#define IPC_BASE 0x44800000
#define IPC ((volatile ipc_regs*)(IPC_BASE))