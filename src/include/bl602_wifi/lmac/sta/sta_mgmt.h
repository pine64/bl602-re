#ifndef _STA_MGMT_H_
#define _STA_MGMT_H_

#include <stdbool.h>
#include <stdint.h>

#include <lmac/mm/mm_task.h>
#include <modules/common/co_list.h>

#include <modules/mac/mac.h>



struct vif_info_tag;

enum sta_mgmt_pol_upd {
    STA_MGMT_POL_UPD_RATE = 0,
    STA_MGMT_POL_UPD_PROT = 1,
    STA_MGMT_POL_UPD_PPDU_TX = 2,
    STA_MGMT_POL_UPD_BW = 3,
    STA_MGMT_POL_UPD_TX_POWER = 4,
    STA_MGMT_POL_UPD_MAX = 5,
};

enum sta_ps_traffic {
    PS_TRAFFIC_HOST = 1,
    PS_TRAFFIC_INT = 2,
    PS_TRAFFIC = 3,
    UAPSD_TRAFFIC_HOST = 4,
    UAPSD_TRAFFIC_INT = 8,
    UAPSD_TRAFFIC = 12,
};

enum sta_ps_sp {
    NO_SERVICE_PERIOD = 0,
    PS_SERVICE_PERIOD = 1,
    UAPSD_SERVICE_PERIOD_INT = 2,
    UAPSD_SERVICE_PERIOD_HOST = 4,
    UAPSD_SERVICE_PERIOD = 6,
    ANY_SERVICE_PERIOD_INT = 3,
    BCN_SERVICE_PERIOD = 8,
};

typedef int sta_ps_sp_t;

struct sta_mgmt_sec_info {
    struct key_info_tag key_info; // +0
    struct key_info_tag *pairwise_key; // +104
    struct key_info_tag **cur_key; // +108
};

struct sta_pol_tbl_cntl {
    struct txl_buffer_control *buf_ctrl; // +0
    struct rc_sta_stats *sta_stats; // +4
    uint32_t prot_cfg; // +8
    uint16_t ppdu_tx_cfg; // +12
    uint8_t upd_field; // +14
};

struct sta_mgmt_ba_info {
    uint32_t last_tx_time; // +0
    uint32_t last_ba_add_time; // +4
    uint8_t bam_idx_rx; // +8
    uint8_t bam_idx_tx; // +9
    int8_t credit_oft; // +10
};

struct sta_info_tag {
    struct co_list_hdr list_hdr; // +0
    uint32_t bcn_int; // +4
    uint32_t ampdu_size_max_vht; // +8
    uint16_t ampdu_size_max_ht; // +12
    uint32_t paid_gid; // +16
    uint8_t ampdu_spacing_min; // +20
    uint16_t drift; // +22
    uint16_t aid; // +24
    uint8_t inst_nbr; // +26
    uint8_t staid; // +27
    uint8_t ps_state; // +28
    bool valid; // +29
    struct mac_addr mac_addr; // +30
    int8_t rssi; // +36
    uint32_t tsflo; // +40
    uint32_t tsfhi; // +44
    uint8_t data_rate; // +48
    uint8_t ctrl_port_state; // +49
    enum sta_ps_traffic traffic_avail; // +50
    sta_ps_sp_t ps_service_period; // +52
    uint16_t ctrl_port_ethertype; // +56
    struct sta_mgmt_sec_info sta_sec_info; // +64
    struct mac_sta_info info; // +176
    uint16_t seq_nbr[TID_MAX]; // +248
    struct sta_pol_tbl_cntl pol_tbl; // +268
    struct sta_mgmt_ba_info ba_info[TID_MAX]; // +284
    uint16_t rx_nqos_last_seqcntl; // +392
    uint16_t rx_qos_last_seqcntl[TID_MAX]; // +394
    struct co_list tx_desc_post; // +412
    void *suppData; // +420
    uint32_t time_last_seen; // +424
};

struct sta_info_env_tag {
    struct co_list free_sta_list; // +0
};


extern struct sta_info_env_tag sta_info_env;
extern struct sta_info_tag sta_info_tab[12];


uint8_t sta_mgmt_get_port_state(uint8_t sta_idx);
uint16_t sta_mgmt_get_port_ethertype(uint8_t sta_idx);
void sta_mgmt_init(void);
uint8_t sta_mgmt_register(const struct mm_sta_add_req *param, uint8_t *sta_idx);
void sta_mgmt_unregister(uint8_t sta_idx);
void sta_mgmt_add_key(const struct mm_key_add_req *param, uint8_t hw_key_idx);
void sta_mgmt_del_key(struct sta_info_tag *sta);
uint16_t sta_mgmt_get_tx_ssn_and_inc(uint8_t sta_idx, uint8_t tid);
bool sta_mgmt_is_valid(uint8_t sta_idx);
struct mac_addr *sta_mgmt_get_peer_addr(uint8_t sta_idx);
uint8_t sta_mgmt_get_vif_idx(uint8_t sta_idx);
int sta_mgmt_send_postponed_frame(struct vif_info_tag *p_vif_entry, struct sta_info_tag *p_sta_entry, int limit);

#endif 
