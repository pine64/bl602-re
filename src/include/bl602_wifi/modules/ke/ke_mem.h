#ifndef _KE_MEM_H_
#define _KE_MEM_H_

#include <stdint.h>


struct mblock_free *ke_mem_init(void);
void *ke_malloc(uint32_t size);
void ke_free(void *mem_ptr);

#endif // _KE_MEM_H_
