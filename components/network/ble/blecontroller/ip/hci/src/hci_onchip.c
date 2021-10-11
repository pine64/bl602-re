#include <hci_onchip.h>

#include <ke_msg.h>
#include <ke_task.h>

#include "hci_int.h"

static bt_hci_recv_cb hci_rx_cb;
static const struct ke_msg_handler hci_onchip_default_state[5];
const struct ke_state_handler hci_onchip_default_handler;
static const struct ke_task_desc TASK_DESC_HCI_ONCHIP;

uint8_t bt_onchiphci_interface_init(bt_hci_recv_cb cb);
int bt_onchiphci_send(uint8_t pkt_type, ke_task_id_t dest_id, hci_pkt_struct *pkt);
static int bt_hcionchip_recv(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
uint8_t bt_onchiphci_hanlde_rx_acl(void *param, uint8_t *host_buf_data);




/** bt_onchiphci_interface_init
 */
uint8_t bt_onchiphci_interface_init(bt_hci_recv_cb cb)
{
	__builtin_trap();
}

/** bt_onchiphci_send
 */
int bt_onchiphci_send(uint8_t pkt_type, ke_task_id_t dest_id, hci_pkt_struct *pkt)
{
	__builtin_trap();
}

/** bt_onchiphci_hanlde_rx_acl
 */
uint8_t bt_onchiphci_hanlde_rx_acl(void *param, uint8_t *host_buf_data)
{
	__builtin_trap();
}

/** bt_hcionchip_recv
 */
static int bt_hcionchip_recv(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}
