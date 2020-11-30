
typedef struct txl_cfm_env_tag txl_cfm_env_tag, *txl_cfm_env_tag;

typedef struct co_list co_list, *co_list;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

struct co_list_hdr {
    struct co_list_hdr * next;
};

struct co_list {
    struct co_list_hdr * first;
    struct co_list_hdr * last;
};

struct txl_cfm_env_tag {
    struct co_list cfmlist[5];
};

void txl_cfm_flush(void);
void txl_cfm_init(void);
void txl_cfm_push(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file txl_cfm.h
* Header file for BL602
*/
#ifndef __TXL_CFM_H__
#define __TXL_CFM_H__

const uint32_t txl_cfm_evt_bit[5];
struct txl_cfm_env_tag {
    struct co_list cfmlist[5]; // +0
};
struct txl_cfm_env_tag txl_cfm_env;

#endif // __TXL_CFM_H__
#endf 0 //TODO EXISTS ALEADY
