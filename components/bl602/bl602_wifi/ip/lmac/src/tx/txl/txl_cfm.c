
void txl_cfm_dma_int_handler(void);
void txl_cfm_dma_int_handler_backup(void);
void txl_cfm_evt(int access_category);
void txl_cfm_flush(uint8_t access_category, co_list * list, uint32_t status);
void txl_cfm_flush_desc(uint8_t access_category, txdesc * txdesc, uint32_t status);
void txl_cfm_prep(void);
void txl_cfm_push(txdesc * txdesc, uint32_t status, uint8_t access_category);
#if 0 //TODO EXISTS ALEADY
/**
* @file txl_cfm.c
* Source file for BL602
*/
#include "txl_cfm.h"


struct txl_cfm_env_tag txl_cfm_env;
const uint32_t txl_cfm_evt_bit[5];

void txl_cfm_dma_int_handler_backup(void);
void txl_cfm_evt(int access_category);
void txl_cfm_flush_desc(uint8_t access_category, struct txdesc *txdesc, uint32_t status);
void txl_cfm_flush(uint8_t access_category, struct co_list *list, uint32_t status);
void txl_cfm_dma_int_handler(void);
void txl_cfm_dump(void);




/** txl_cfm_dma_int_handler_backup
 */
void txl_cfm_dma_int_handler_backup(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** txl_cfm_evt
 */
void txl_cfm_evt(int access_category)
{
	ASSER_ERR(FALSE);
	return;
}

/** txl_cfm_flush_desc
 */
void txl_cfm_flush_desc(uint8_t access_category, struct txdesc *txdesc, uint32_t status)
{
	ASSER_ERR(FALSE);
	return;
}

/** txl_cfm_flush
 */
void txl_cfm_flush(uint8_t access_category, struct co_list *list, uint32_t status)
{
	ASSER_ERR(FALSE);
	return;
}

/** txl_cfm_dma_int_handler
 */
void txl_cfm_dma_int_handler(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** txl_cfm_dump
 */
void txl_cfm_dump(void)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
