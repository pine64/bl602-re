#ifndef __LLM_H__
#define __LLM_H__

#include <stdbool.h>
#include <stdint.h>

#include <co_bt_defines.h>
#include <co_hci.h>
#include <em/em_buf.h>
#include <ke_msg.h>
#include <llm/llm_task.h>

enum llm_enh_priv {
    LLM_PRIV_RFU_MASK = 140,
    LLM_PRIV_RFU_LSB = 2,
    LLM_RPA_RENEW_TIMER_EN_MASK = 2,
    LLM_RPA_RENEW_TIMER_EN_LSB = 1,
    LLM_PRIV_ENABLE_MASK = 1,
    LLM_PRIV_ENABLE_LSB = 0,
};
struct advertising_pdu_params {
    struct ke_msg *adv_data_req; // +0
    struct ke_msg *scan_rsp_req; // +4
    struct em_buf_node *adv_desc_node; // +8
    struct em_buf_node *scan_rsp_desc_node; // +12
    struct bd_addr peer_addr; // +16
    uint16_t intervalmin; // +22
    uint16_t intervalmax; // +24
    uint8_t channelmap; // +26
    uint8_t filterpolicy; // +27
    uint8_t type; // +28
    uint8_t datalen; // +29
    uint8_t scanrsplen; // +30
    uint8_t own_addr_type; // +31
    uint8_t peer_addr_type; // +32
    bool adv_ldc_flag; // +33
};
struct scanning_pdu_params {
    struct em_buf_node *conn_req_desc_node; // +0
    uint16_t interval; // +4
    uint16_t window; // +6
    uint8_t filterpolicy; // +8
    uint8_t type; // +9
    uint8_t filter_duplicate; // +10
    uint8_t own_addr_type; // +11
};
struct access_addr_gen {
    uint8_t intrand; // +0
    uint8_t ct1_idx; // +1
    uint8_t ct2_idx; // +2
};
struct adv_device_list {
    struct co_list_hdr hdr; // +0
    uint8_t adv_type; // +4
    struct bd_addr adv_addr; // +5
};
struct llm_pdu_adv {
    struct bd_addr adva; // +0
    uint8_t *adva_data; // +8
};
struct llm_pdu_con_req_rx {
    struct bd_addr inita; // +0
    struct bd_addr adva; // +6
    struct access_addr aa; // +12
    struct crc_init crcinit; // +16
    uint8_t winsize; // +19
    uint16_t winoffset; // +20
    uint16_t interval; // +22
    uint16_t latency; // +24
    uint16_t timeout; // +26
    struct le_chnl_map chm; // +28
    uint8_t hop_sca; // +33
};
struct llm_pdu_con_req_tx {
    struct access_addr aa; // +0
    struct crc_init crcinit; // +4
    uint8_t winsize; // +7
    uint16_t winoffset; // +8
    uint16_t interval; // +10
    uint16_t latency; // +12
    uint16_t timeout; // +14
    struct le_chnl_map chm; // +16
    uint8_t hop_sca; // +21
};
struct llm_test_mode {
    bool end_of_tst; // +0
    uint8_t directtesttype; // +1
};
struct data_len_ext {
    uint16_t conn_initial_max_tx_octets; // +0
    uint16_t conn_initial_max_tx_time; // +2
    uint16_t suppted_max_tx_octets; // +4
    uint16_t suppted_max_tx_time; // +6
    uint16_t suppted_max_rx_octets; // +8
    uint16_t suppted_max_rx_time; // +10
};
enum t_key_multiplication_type {
    LLM_ECC_IDLE = 0,
    LLM_PUBLIC_KEY_GENERATION = 1,
    LLM_DHKEY_GENERATION = 2,
};
typedef enum t_key_multiplication_type t_key_multi_type;
struct t_public_key256 {
    uint8_t x[32]; // +0
    uint8_t y[32]; // +32
};
typedef struct t_public_key256 t_public_key256;
struct channel_map_assess {
    uint16_t assess_timer; // +0
    int8_t lower_limit; // +2
    int8_t upper_limit; // +3
    int8_t rssi_noise_limit; // +4
    uint8_t reassess_count; // +5
    struct le_chnl_map ch_map; // +6
    bool llm_le_set_host_ch_class_cmd_sto; // +11
};
struct llm_le_env_tag {
    struct co_list enc_req; // +0
    struct co_list adv_list; // +8
    struct scanning_pdu_params *scanning_params; // +16
    struct advertising_pdu_params *advertising_params; // +20
    struct co_list cnx_list; // +24
    struct data_len_ext data_len_val; // +32
    struct channel_map_assess ch_map_assess; // +44
    struct evt_mask eventmask; // +56
    struct access_addr_gen aa; // +64
    uint16_t conhdl_alloc; // +68
    struct ea_elt_tag *elt; // +72
    bool last_opcode; // +76
    uint16_t opcode2; // +78
    uint8_t state2; // +80
    struct ea_elt_tag *elt_coext_scan; // +84
    bool enc_pend; // +88
    struct llm_test_mode test_mode; // +89
    struct bd_addr rand_add; // +91
    struct bd_addr public_add; // +97
    uint16_t enh_priv_rpa_timeout; // +104
    uint16_t p256_byte_process_timeout; // +106
    uint16_t opcode; // +108
    uint8_t state; // +110
    uint8_t enh_priv_info; // +111
    uint8_t curr_addr_type; // +112
    uint8_t nb_dev_in_wl; // +113
    uint8_t nb_dev_in_hw_wl; // +114
    t_public_key256 public_key256; // +115
    uint8_t secret_key256[32]; // +179
    t_key_multi_type cur_ecc_multiplication; // +211
};
extern const struct supp_cmds llm_local_cmds;uint8_t llm_local_supp_feats[3];
extern const struct le_features llm_local_le_feats;
extern const struct le_states llm_local_le_states;
extern const struct data_len_ext llm_local_data_len_values;
extern struct llm_le_env_tag llm_le_env;

void llm_init(bool reset);
void llm_ble_ready(void);
void llm_con_req_ind(uint8_t rx_hdl, uint16_t status);
void llm_le_adv_report_ind(uint8_t rx_hdl);
void llm_con_req_tx_cfm(uint8_t rx_hdl);
void llm_common_cmd_complete_send(uint16_t opcode, uint8_t status);
void llm_common_cmd_status_send(uint16_t opcode, uint8_t status);
uint8_t llm_test_mode_start_tx(const struct hci_le_tx_test_cmd *param);
uint8_t llm_test_mode_start_rx(const struct hci_le_rx_test_cmd *param);
uint8_t llm_set_adv_param(const struct hci_le_set_adv_param_cmd *param);
uint8_t llm_set_adv_en(const struct hci_le_set_adv_en_cmd *param);
uint8_t llm_set_adv_data(const struct hci_le_set_adv_data_cmd *param);
uint8_t llm_set_scan_rsp_data(const struct hci_le_set_scan_rsp_data_cmd *param);
uint8_t llm_set_scan_param(const struct hci_le_set_scan_param_cmd *param);
uint8_t llm_set_scan_en(const struct hci_le_set_scan_en_cmd *param);
void llm_wl_clr(void);
void llm_wl_dev_add(struct bd_addr *bd_addr, uint8_t bd_addr_type);
void llm_wl_dev_rem(struct bd_addr *bd_addr, uint8_t bd_addr_type);
uint8_t llm_wl_dev_add_hdl(struct bd_addr *bd_addr, uint8_t bd_addr_type);
uint8_t llm_wl_dev_rem_hdl(struct bd_addr *bd_addr, uint8_t bd_addr_type);
uint8_t llm_create_con(const struct hci_le_create_con_cmd *param);
void llm_encryption_done(void);
void llm_encryption_start(const struct llm_enc_req *param);

#endif // __LLM_H__
