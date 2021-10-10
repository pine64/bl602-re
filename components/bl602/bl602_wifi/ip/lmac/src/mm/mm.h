#ifndef __MM_H__
#define __MM_H__

#include <stdbool.h>
#include <stdint.h>

#include <hal/hal_desc.h>
#include <mm/mm_task.h>
#include <vif/vif_mgmt.h>


enum mm_features {
    MM_FEAT_BCN_BIT = 0,
    MM_FEAT_AUTOBCN_BIT = 1,
    MM_FEAT_HWSCAN_BIT = 2,
    MM_FEAT_CMON_BIT = 3,
    MM_FEAT_MROLE_BIT = 4,
    MM_FEAT_RADAR_BIT = 5,
    MM_FEAT_PS_BIT = 6,
    MM_FEAT_UAPSD_BIT = 7,
    MM_FEAT_DPSM_BIT = 8,
    MM_FEAT_AMPDU_BIT = 9,
    MM_FEAT_AMSDU_BIT = 10,
    MM_FEAT_CHNL_CTXT_BIT = 11,
    MM_FEAT_REORD_BIT = 12,
    MM_FEAT_P2P_BIT = 13,
    MM_FEAT_P2P_GO_BIT = 14,
    MM_FEAT_UMAC_BIT = 15,
    MM_FEAT_VHT_BIT = 16,
    MM_FEAT_BFMEE_BIT = 17,
    MM_FEAT_BFMER_BIT = 18,
    MM_FEAT_WAPI_BIT = 19,
    MM_FEAT_MFP_BIT = 20,
    MM_FEAT_MU_MIMO_RX_BIT = 21,
    MM_FEAT_MU_MIMO_TX_BIT = 22,
    MM_FEAT_MESH_BIT = 23,
    MM_FEAT_TDLS_BIT = 24,
};

struct mm_env_tag {
    uint32_t rx_filter_umac; // +0
    uint32_t rx_filter_lmac_enable; // +4
    uint16_t ampdu_max_dur[5]; // +8
    uint8_t prev_mm_state; // +18
    uint8_t prev_hw_state; // +19
    uint32_t basic_rates[2]; // +20
    uint32_t uapsd_timeout; // +28
    uint16_t lp_clk_accuracy; // +32
    uint8_t host_idle; // +34
    bool keep_alive_status_enabled; // +35
    uint32_t keep_alive_packet_counter; // +36
    uint32_t keep_alive_time_last_received; // +40
};

extern struct mm_env_tag mm_env;

void mm_rx_filter_set(void);
void mm_rx_filter_umac_set(uint32_t filter);
void mm_rx_filter_lmac_enable_set(uint32_t filter);
void mm_rx_filter_lmac_enable_clear(uint32_t filter);
static void mm_ps_change_ind(uint8_t sta_idx, uint8_t ps_state);
void mm_traffic_req_ind(uint8_t sta_idx, uint8_t pkt_cnt, bool uapsd);
void mm_init(void);
void mm_reset(void);
void mm_active(void);
void mm_env_max_ampdu_duration_set(void);
uint8_t mm_sec_machwkey_wr(const struct mm_key_add_req *param);
void mm_sec_machwkey_del(uint8_t hw_key_idx);
bool mm_check_beacon(struct rx_hd *rhd, struct vif_info_tag *vif_entry, struct sta_info_tag *p_sta_entry, uint32_t *tim);
void mm_hw_info_set(const struct mac_addr *mac_addr);
void mm_hw_ap_info_set(void);
void mm_hw_ap_info_reset(void);
void mm_force_idle_req(void);
uint8_t mm_sta_add(const struct mm_sta_add_req *param, uint8_t *sta_idx, uint8_t *hw_sta_idx);
void mm_sta_del(uint8_t sta_idx);
void mm_back_to_host_idle(void);
void mm_cfg_element_keepalive_timestamp_update(void);
void mm_send_connection_loss_ind(struct vif_info_tag *p_vif_entry);
void mm_send_csa_traffic_ind(uint8_t vif_index, bool enable);

#endif // __MM_H__
