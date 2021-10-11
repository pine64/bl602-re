#include "hci_int.h"

#include <stdbool.h>

#include <em/em_buf.h>
#include <co_list.h>
#include <ke_msg.h>

enum HCI_TX_STATE {
    HCI_STATE_TX_ONGOING = 0,
    HCI_STATE_TX_IDLE = 1,
};

struct hci_tl_env_tag {
    struct co_list tx_queue;
 // +0
    struct co_list acl_queue;
 // +8
    struct ke_msg *curr_tx_msg;
 // +16
    struct em_buf_node *txtag;
 // +20
    uint8_t tx_state;
 // +24
    int8_t nb_h2c_cmd_pkts;
 // +25
};

static struct hci_tl_env_tag hci_tl_env;

void hci_tl_send(struct ke_msg *msg);
void hci_tl_init(bool reset);
uint8_t hci_cmd_get_max_param_size(uint16_t opcode);
void hci_cmd_received(uint16_t opcode, uint8_t length, uint8_t *payload);
uint8_t *hci_acl_tx_data_alloc(uint16_t hdl_flags, uint16_t len);
void hci_acl_tx_data_received(uint16_t hdl_flags, uint16_t datalen, uint8_t *payload);




/** hci_tl_send
 */
void hci_tl_send(struct ke_msg *msg)
{
	__builtin_trap();
}

/** hci_tl_init
 */
void hci_tl_init(bool reset)
{
	__builtin_trap();
}

/** hci_cmd_get_max_param_size
 */
uint8_t hci_cmd_get_max_param_size(uint16_t opcode)
{
	__builtin_trap();
}

/** hci_cmd_received
 */
void hci_cmd_received(uint16_t opcode, uint8_t length, uint8_t *payload)
{
	__builtin_trap();
}

/** *hci_acl_tx_data_alloc
 */
uint8_t *hci_acl_tx_data_alloc(uint16_t hdl_flags, uint16_t len)
{
	__builtin_trap();
}

/** hci_acl_tx_data_received
 */
void hci_acl_tx_data_received(uint16_t hdl_flags, uint16_t datalen, uint8_t *payload)
{
	__builtin_trap();
}
