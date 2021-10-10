#include "txl_cfm.h"


struct txl_cfm_env_tag txl_cfm_env;
const uint32_t txl_cfm_evt_bit[5];


void txl_cfm_prep(void)
{
	__builtin_trap();
}

void txl_cfm_init(void)
{
	__builtin_trap();
}

void txl_cfm_push(struct txdesc *txdesc, uint32_t status, uint8_t access_category)
{
	__builtin_trap();
}

void txl_cfm_dma_int_handler_backup(void)
{
	__builtin_trap();
}

void txl_cfm_evt(int access_category)
{
	__builtin_trap();
}

void txl_cfm_flush_desc(uint8_t access_category, struct txdesc *txdesc, uint32_t status)
{
	__builtin_trap();
}

void txl_cfm_flush(uint8_t access_category, struct co_list *list, uint32_t status)
{
	__builtin_trap();
}

void txl_cfm_dma_int_handler(void)
{
	__builtin_trap();
}

void txl_cfm_dump(void)
{
	__builtin_trap();
}

