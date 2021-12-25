#include <modules/ke/ke_mem.h>
#include <assert.h>
#include <modules/ke/ke_env.h>

#include <arch/rv32i/ll.h>

#include <modules/common/co_math.h>

#include <stddef.h>

struct mblock_free {
  struct mblock_free *next; // +0
  uint32_t size; // +4
};

struct mblock_used {
    uint32_t size; // +0
};

uint8_t ke_mem_heap[5248];

struct mblock_free *ke_mem_init(void) {
    // for some reason, ghidra cannot correctly recover this function
    // this function creates a initial block with the sizeof ke_mem_heap
    // and put the link list onto the ke_env.mblock_first
    // but ghidra completely ignored that and think it's -4(ke_mem_heap)
    // given they are close in the generated file
    __disable_irq();
    struct mblock_free *initial_block = (struct mblock_free *)ke_mem_heap;
    initial_block->next = NULL;
    initial_block->size = sizeof(ke_mem_heap);
    ke_env.mblock_first = initial_block;
    __enable_irq();
    return initial_block;
}

void *ke_malloc(uint32_t size) {
    uint32_t totalsize = CO_ALIGN4_HI(size) + 4;
    ASSERT_ERR(totalsize >= sizeof(struct mblock_free));
    struct mblock_free * found = NULL;
    __disable_irq();
    for (struct mblock_free *blk = ke_env.mblock_first; blk; blk = blk->next) {
        if (blk->size >= totalsize + sizeof(struct mblock_free)) {
            if (!found)
                found = blk;
            else {
                if (blk->size < found->size)
                    found = blk;
            }
        }
    }
    ASSERT_ERR(found != NULL);
    uint32_t residue = found->size - totalsize;
    found->size = residue;
    struct mblock_used* used = (struct mblock_used*)(((uint8_t*)found) + residue);
    used->size = totalsize;
    __enable_irq();
    return (void*)(used + 1);
}

void ke_free(void *mem_ptr) {
    struct mblock_free *node = ke_env.mblock_first;
    struct mblock_used *mblock = ((struct mblock_used *)mem_ptr) - 1;
    struct mblock_free *free = (struct mblock_free *)mblock;
	ASSERT_ERR((uint32_t)mem_ptr > (uint32_t)node);
    __disable_irq();
    // find node X that free should be inserted after X.
    for (; node->next; node = node->next) {
        if ((uint32_t)node <= (uint32_t)free && (uint32_t)free <= (uint32_t)(node->next))
            break;
    }
    // step 1. insert free
    uint32_t size = mblock->size;
    free->size = size;
    free->next = node->next;
    node->next = free;
    // step 2. merge nodes from node
    int merge_cnt = 0;
    while (node->next && (((uint32_t)node) + node->size == ((uint32_t)(node->next)))) {
        struct mblock_free *next = node->next;
        node->next = next->next;
        node->size += next->size;
        if (++merge_cnt == 2) break;
    }
    __enable_irq();
}
