
txl_buffer_tag * txl_buffer_alloc(txdesc * txdesc, uint8_t access_category, uint8_t user_idx);
void txl_buffer_transfer(txdesc * txdesc, txl_buffer_tag * buf, uint16_t head_len);
void txl_buffer_update_thd(txdesc * txdesc);
#if 0 //TODO EXISTS ALEADY
/**
* @file txl_buffer.c
* Source file for BL602
*/
#include "txl_buffer.h"


struct txl_buffer_env_tag txl_buffer_env;

void txl_buffer_reset(void);
struct txl_buffer_tag *txl_buffer_alloc(struct txdesc *txdesc, uint8_t access_category, uint8_t user_idx);
void txl_buffer_update_thd(struct txdesc *txdesc);




/** txl_buffer_reset
 */
void txl_buffer_reset(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** *txl_buffer_alloc
 */
struct txl_buffer_tag *txl_buffer_alloc(struct txdesc *txdesc, uint8_t access_category, uint8_t user_idx)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** txl_buffer_update_thd
 */
void txl_buffer_update_thd(struct txdesc *txdesc)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
