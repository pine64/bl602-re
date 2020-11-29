
void ke_free(void * mem_ptr);
void * ke_malloc(uint32_t size);
mblock_free * ke_mem_init(void);
typedef struct mblock_free mblock_free, *mblock_free;

typedef ulong uint32_t;

struct mblock_free {
    struct mblock_free * next;
    uint32_t size;
};

typedef struct mblock_used mblock_used, *mblock_used;

struct mblock_used {
    uint32_t size;
};

#if 0 //TODO EXISTS ALEADY
/**
* @file ke_mem.c
* Source file for BL602
*/
#include "ke_mem.h"


struct mblock_free {
    struct mblock_free *next;
 // +0
    uint32_t size;
 // +4
};

struct mblock_used {
    uint32_t size;
 // +0
};

uint8_t ke_mem_heap[5248];

struct mblock_free *ke_mem_init(void);
void *ke_malloc(uint32_t size);
void ke_free(void *mem_ptr);




/** *ke_mem_init
 */
struct mblock_free *ke_mem_init(void)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** *ke_malloc
 */
void *ke_malloc(uint32_t size)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** ke_free
 */
void ke_free(void *mem_ptr)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
