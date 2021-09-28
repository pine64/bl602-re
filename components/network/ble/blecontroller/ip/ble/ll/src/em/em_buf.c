#include "em_buf.h"

struct em_buf_env_tag em_buf_env;

/** em_buf_init
 */
void em_buf_init(void)
{
	__builtin_trap();
}

/** em_buf_rx_free
 */
void em_buf_rx_free(uint8_t hdl)
{
	*(ushort *)(&DAT_280083ce + hdl * 0xe) =
		 (ushort)(((uint)*(ushort *)(&DAT_280083ce + CONCAT31(in_register_00002029,hdl) * 0xe) << 0x11
				  ) >> 0x11);
	return;
}

/** *em_buf_rx_buff_addr_get
 */
uint8_t *em_buf_rx_buff_addr_get(uint16_t rx_hdl)
{
	__builtin_trap();
}

/** *em_buf_tx_buff_addr_get
 */
uint8_t *em_buf_tx_buff_addr_get(struct em_buf_tx_desc *tx_desc)
{
	__builtin_trap();
}

/** em_buf_tx_free
 */
bool em_buf_tx_free(struct em_desc_node *desc_to_be_freed)
{
	__builtin_trap();
}
