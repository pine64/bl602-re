#ifndef __KE_MEM_H__
#define __KE_MEM_H__

#include <stdint.h>


struct mblock_free *ke_mem_init(void);
void *ke_malloc(uint32_t size);
void ke_free(void *mem_ptr);

#endif // __KE_MEM_H__
