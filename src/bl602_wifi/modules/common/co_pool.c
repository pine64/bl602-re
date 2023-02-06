#include <modules/common/co_pool.h>

// functions here are also not used at all

void co_pool_init(struct co_pool *pool, struct co_pool_hdr *pool_hdr, void *elements, uint32_t elem_size, uint32_t elem_cnt) {
    __builtin_trap();
}

struct co_pool_hdr *co_pool_alloc(struct co_pool *pool, uint32_t nbelem) {
    __builtin_trap();
}

void co_pool_free(struct co_pool *pool, struct co_pool_hdr *elements, uint32_t nbelem) {
    __builtin_trap();
}
