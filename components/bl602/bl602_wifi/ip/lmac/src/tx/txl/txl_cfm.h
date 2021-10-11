#ifndef __TXL_CFM_H__
#define __TXL_CFM_H__

#include <stdint.h>

#include <tx/tx_swdesc.h>
#include <co_list.h>


extern const uint32_t txl_cfm_evt_bit[5];

struct txl_cfm_env_tag {
  struct co_list cfmlist[5]; // +0
};

extern struct txl_cfm_env_tag txl_cfm_env;


void txl_cfm_init(void);
void txl_cfm_push(struct txdesc *txdesc, uint32_t status, uint8_t access_category);
void txl_cfm_flush(uint8_t access_category, struct co_list *list, uint32_t status);

#endif // __TXL_CFM_H__
