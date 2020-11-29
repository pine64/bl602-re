/**
* @file co_pool.c
* Source file for BL602
*/
#include "co_pool.h"


void co_pool_init(struct co_pool *pool, struct co_pool_hdr *pool_hdr, void *elements, uint32_t elem_size, uint32_t elem_cnt);
struct co_pool_hdr *co_pool_alloc(struct co_pool *pool, uint32_t nbelem);
void co_pool_free(struct co_pool *pool, struct co_pool_hdr *elements, uint32_t nbelem);




/** co_pool_init
 */
void co_pool_init(struct co_pool *pool, struct co_pool_hdr *pool_hdr, void *elements, uint32_t elem_size, uint32_t elem_cnt)
{
	ASSER_ERR(FALSE);
	return;
}

/** *co_pool_alloc
 */
struct co_pool_hdr *co_pool_alloc(struct co_pool *pool, uint32_t nbelem)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** co_pool_free
 */
void co_pool_free(struct co_pool *pool, struct co_pool_hdr *elements, uint32_t nbelem)
{
	ASSER_ERR(FALSE);
	return;
}
