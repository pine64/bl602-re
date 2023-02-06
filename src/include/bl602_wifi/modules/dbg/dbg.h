#ifndef _DBG_H_
#define _DBG_H_

#include <stdint.h>


enum dbg_mod_tag {
    DBG_MOD_IDX_KE = 0,
    DBG_MOD_IDX_DBG = 1,
    DBG_MOD_IDX_IPC = 2,
    DBG_MOD_IDX_DMA = 3,
    DBG_MOD_IDX_MM = 4,
    DBG_MOD_IDX_TX = 5,
    DBG_MOD_IDX_RX = 6,
    DBG_MOD_IDX_PHY = 7,
    DBG_MOD_IDX_MAX = 8,
};

enum dbg_sev_tag {
    DBG_SEV_IDX_NONE = 0,
    DBG_SEV_IDX_CRT = 1,
    DBG_SEV_IDX_ERR = 2,
    DBG_SEV_IDX_WRN = 3,
    DBG_SEV_IDX_INF = 4,
    DBG_SEV_IDX_VRB = 5,
    DBG_SEV_IDX_MAX = 6,
    DBG_SEV_ALL = 7,
};

#define DBG_SEV_MIN (31 - DBG_SEV_IDX_VRB)
#define DBG_SEV_MAX 32


void dbg_test_print(const char *fmt, ...);


struct debug_env_tag {
  uint32_t filter_module; // +0
  uint32_t filter_severity; // +4
};


extern struct debug_env_tag dbg_env;


void dbg_init(void);

#endif // _DBG_H_
