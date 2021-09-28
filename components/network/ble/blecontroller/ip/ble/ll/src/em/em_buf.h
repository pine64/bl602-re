#ifndef BLECONTROLLER_BLE_LL_EM_EM_BUF_H
#define BLECONTROLLER_BLE_LL_EM_EM_BUF_H

#include <stdbool.h>
#include <stdint.h>

#include <co_list.h>

struct em_buf_node {
    struct co_list_hdr hdr; // +0
    uint16_t idx; // +4
    uint16_t buf_ptr; // +6
};
struct em_desc_node {
    struct co_list_hdr hdr; // +0
    uint16_t idx; // +4
    uint16_t buffer_idx; // +6
    uint16_t buffer_ptr; // +8
    uint8_t llid; // +10
    uint8_t length; // +11
};
struct em_buf_tx_desc {
    uint16_t txptr; // +0
    uint16_t txheader; // +2
    uint16_t txdataptr; // +4
    uint16_t txdle; // +6
};
struct em_buf_env_tag {
    struct co_list tx_desc_free; // +0
    struct co_list tx_buff_free; // +8
    struct em_desc_node tx_desc_node[26]; // +16
    struct em_buf_node tx_buff_node[2]; // +328
    struct em_buf_tx_desc *tx_desc; // +344
    uint8_t rx_current; // +348
};

extern struct em_buf_env_tag em_buf_env;

void em_buf_init(void);
void em_buf_rx_free(uint8_t hdl);
uint8_t *em_buf_rx_buff_addr_get(uint16_t rx_hdl);
uint8_t *em_buf_tx_buff_addr_get(struct em_buf_tx_desc *tx_desc);
bool em_buf_tx_free(struct em_desc_node *desc_to_be_freed);


#endif /* BLECONTROLLER_BLE_LL_EM_EM_BUF_H */
