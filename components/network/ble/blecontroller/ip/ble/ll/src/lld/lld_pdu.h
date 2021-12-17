#ifndef __LLD_PDU_H__
#define __LLD_PDU_H__

#include <stdint.h>

#include <co_list.h>
#include <ea.h>
#include <em/em_buf.h>
#include <lld/lld_evt.h>

struct lld_pdu_data_tx_tag {
    struct co_list_hdr hdr; // +0
    uint16_t idx; // +4
    uint16_t conhdl; // +6
    uint16_t length; // +8
    uint8_t pb_bc_flag; // +10
    struct em_buf_node *buf; // +12
};

void lld_pdu_tx_push(struct ea_elt_tag *elt, struct em_desc_node *txnode);
void lld_pdu_tx_loop(struct lld_evt_tag *evt);
void lld_pdu_tx_prog(struct lld_evt_tag *evt);
void lld_pdu_tx_flush(struct lld_evt_tag *evt);
uint8_t lld_pdu_adv_pack(uint8_t code, uint8_t *buf, uint8_t *p_len);
void lld_pdu_rx_handler(struct lld_evt_tag *evt, uint8_t nb_rx_desc);
bool lld_pdu_check(struct lld_evt_tag *evt);
bool lld_pdu_data_send(void *param);

#endif // __LLD_PDU_H__
