/**
* @file em_buf.c
* Source file for BL602
*/
#include "em_buf.h"


struct em_buf_env_tag em_buf_env;

void em_buf_init(void);
void em_buf_rx_free(uint8_t hdl);
uint8_t *em_buf_rx_buff_addr_get(uint16_t rx_hdl);
uint8_t *em_buf_tx_buff_addr_get(struct em_buf_tx_desc *tx_desc);
bool em_buf_tx_free(struct em_desc_node *desc_to_be_freed);




/** em_buf_init
 */
void em_buf_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** em_buf_rx_free
 */
void em_buf_rx_free(uint8_t hdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** *em_buf_rx_buff_addr_get
 */
uint8_t *em_buf_rx_buff_addr_get(uint16_t rx_hdl)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** *em_buf_tx_buff_addr_get
 */
uint8_t *em_buf_tx_buff_addr_get(struct em_buf_tx_desc *tx_desc)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** em_buf_tx_free
 */
bool em_buf_tx_free(struct em_desc_node *desc_to_be_freed)
{
	ASSER_ERR(FALSE);
	return false;
}
