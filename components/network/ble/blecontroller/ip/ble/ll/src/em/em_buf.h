/**
* @file em_buf.h
* Header file for BL602
*/
#ifndef __EM_BUF_H__
#define __EM_BUF_H__

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
struct em_buf_env_tag em_buf_env;

#endif // __EM_BUF_H__
