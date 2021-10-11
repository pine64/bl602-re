#include "hci_int.h"

#include <ke_msg.h>

static uint16_t hci_util_read_array_size(char **fmt_cursor);
enum HCI_PACK_STATUS hci_util_pack(uint8_t *inout, uint16_t *inout_len, const char *format);
enum HCI_PACK_STATUS hci_util_unpack(uint8_t *out, uint8_t *in, uint16_t *out_len, uint16_t in_len, const char *format);
uint8_t *hci_build_cc_evt(struct ke_msg *msg, int8_t nb_h2c_cmd_pkts);
uint8_t *hci_build_evt(struct ke_msg *msg);
uint8_t *hci_build_le_evt(struct ke_msg *msg);
uint8_t *hci_build_acl_rx_data(struct ke_msg *msg);




/** hci_util_pack
 */
enum HCI_PACK_STATUS hci_util_pack(uint8_t *inout, uint16_t *inout_len, const char *format)
{
	__builtin_trap();
}

/** hci_util_unpack
 */
enum HCI_PACK_STATUS hci_util_unpack(uint8_t *out, uint8_t *in, uint16_t *out_len, uint16_t in_len, const char *format)
{
	__builtin_trap();
}

/** *hci_build_cc_evt
 */
uint8_t *hci_build_cc_evt(struct ke_msg *msg, int8_t nb_h2c_cmd_pkts)
{
	__builtin_trap();
}

/** *hci_build_evt
 */
uint8_t *hci_build_evt(struct ke_msg *msg)
{
	__builtin_trap();
}

/** *hci_build_le_evt
 */
uint8_t *hci_build_le_evt(struct ke_msg *msg)
{
	__builtin_trap();
}

/** *hci_build_acl_rx_data
 */
uint8_t *hci_build_acl_rx_data(struct ke_msg *msg)
{
	__builtin_trap();
}

/** hci_util_read_array_size
 */
static uint16_t hci_util_read_array_size(char **fmt_cursor)
{
	__builtin_trap();
}
