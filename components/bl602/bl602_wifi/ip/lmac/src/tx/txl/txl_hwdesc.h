#ifndef __TXL_HWDESC_H__
#define __TXL_HWDESC_H__

#include <co_list.h>


extern struct co_list tx_agg_desc_pool[5];


void txl_hwdesc_init(void);
void txl_hwdesc_reset(void);

#endif // __TXL_HWDESC_H__
