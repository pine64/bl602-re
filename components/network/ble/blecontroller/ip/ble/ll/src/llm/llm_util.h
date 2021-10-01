#ifndef __LLM_UTIL_H__
#define __LLM_UTIL_H__

#include <stdint.h>

extern const uint8_t LLM_AA_CT1[3];
extern const uint8_t LLM_AA_CT2[2];
enum bl_flag_wl {
    LLM_UTIL_BL_NO_ACTION_WL = 0,
    LLM_UTIL_BL_CLEAR_WL = 1,
    LLM_UTIL_BL_SET_WL = 2,
};
extern uint8_t orig_rxsyncwinszdef;
extern uint8_t orig_rfrxtmda;

#endif // __LLM_UTIL_H__
