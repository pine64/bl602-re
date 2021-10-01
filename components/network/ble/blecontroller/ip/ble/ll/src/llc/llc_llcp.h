#ifndef __LLC_LLCP_H__
#define __LLC_LLCP_H__

#include <stdint.h>

#include <co_list.h>

struct llcp_pdu_tag {
    struct co_list_hdr hdr; // +0
    uint16_t idx; // +4
    void *ptr; // +8
    uint8_t opcode; // +12
};
enum llc_llcp_authorize {
    LLC_LLCP_NO_AUTHZED = 0,
    LLC_LLCP_START_ENC_AUTHZED = 1,
    LLC_LLCP_PAUSE_ENC_AUTHZED = 2,
};

#endif // __LLC_LLCP_H__
