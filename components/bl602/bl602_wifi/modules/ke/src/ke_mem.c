#include "ke_mem.h"


struct mblock_free {
  struct mblock_free *next; // +0
  uint32_t size; // +4
};

struct mblock_used {
  uint32_t size; // +0
};

extern uint8_t ke_mem_heap[5248];


struct mblock_free *ke_mem_init(void)
{
	__builtin_trap();
}

void *ke_malloc(uint32_t size)
{
	__builtin_trap();
}

void ke_free(void *mem_ptr)
{
	__builtin_trap();
}
