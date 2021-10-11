#ifndef __HCI_ONCHIP_H__
#define __HCI_ONCHIP_H__

#include <stdint.h>

struct bl_hci_acl_data_tx {
	uint16_t conhdl;
	uint8_t pb_bc_flag;
	uint8_t field_0x3;
	uint16_t len;
	uint8_t field_0x6;
	uint8_t field_0x7;
	uint8_t * buffer;
};

struct bl_hci_cmd_struct {
	uint16_t opcode;
	uint8_t field_0x2;
	uint8_t field_0x3;
	uint8_t * params;
	uint8_t param_len;
	uint8_t field_0x9;
	uint8_t field_0xa;
	uint8_t field_0xb;
};

typedef void (*bt_hci_recv_cb)(uint8_t, uint16_t, uint8_t*, uint8_t, void*);

typedef struct {
	union {
		struct bl_hci_cmd_struct hci_cmd;
		struct bl_hci_acl_data_tx acl_data;
	} p;
} hci_pkt_struct;

#endif // __HCI_ONCHIP_H__
