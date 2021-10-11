#ifndef __LLD_PDU_H__
#define __LLD_PDU_H__

#include <stdint.h>

#include <co_list.h>

struct lld_pdu_data_tx_tag {
    struct co_list_hdr hdr; // +0
    uint16_t idx; // +4
    uint16_t conhdl; // +6
    uint16_t length; // +8
    uint8_t pb_bc_flag; // +10
    struct em_buf_node *buf; // +12
};

#endif // __LLD_PDU_H__
