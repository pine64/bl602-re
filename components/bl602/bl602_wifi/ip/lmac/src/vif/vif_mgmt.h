#ifndef __VIF_MGMT_H__
#define __VIF_MGMT_H__

#include <stdbool.h>
#include <stdint.h>

#include <chan/chan.h>
#include <me/me.h>
#include <mm/mm_timer.h>
#include <tx/txl/txl_frame.h>
#include <co_list.h>
#include <mac.h>


enum VIF_AP_BCMC_STATUS {
    VIF_AP_BCMC_BUFFERED = 1,
    VIF_AP_BCMC_MOREDATA = 2,
};

struct vif_info_tag {
    struct co_list_hdr list_hdr; // +0
    uint32_t prevent_sleep; // +4
    uint32_t txq_params[4]; // +8
    struct mm_timer_tag tbtt_timer; // +24
    struct mm_timer_tag tmr_bcn_to; // +40
    struct mac_addr bssid; // +56
    struct chan_ctxt_tag *chan_ctxt; // +64
    struct chan_tbtt_tag tbtt_switch; // +68
    struct mac_addr mac_addr; // +80
    uint8_t type; // +86
    uint8_t index; // +87
    bool active; // +88
    int8_t tx_power; // +89
    int8_t user_tx_power; // +90
    union {
        struct {
            uint16_t listen_interval; // +0
            bool dont_wait_bcmc; // +2
            uint8_t ps_retry; // +3
            uint8_t ap_id; // +4
            uint32_t uapsd_last_rxtx; // +8
            uint8_t uapsd_queues; // +12
            uint32_t mon_last_tx; // +16
            uint32_t mon_last_crc; // +20
            uint8_t beacon_loss_cnt; // +24
            int8_t rssi; // +25
            int8_t rssi_thold; // +26
            uint8_t rssi_hyst; // +27
            bool rssi_status; // +28
            uint8_t csa_count; // +29
            bool csa_occured; // +30
        } sta;
        struct {
            uint32_t dummy; // +0
            struct txl_frame_desc_tag bcn_desc; // +4
            uint16_t bcn_len; // +732
            uint16_t tim_len; // +734
            uint16_t tim_bitmap_set; // +736
            uint16_t bcn_int; // +738
            uint8_t bcn_tbtt_ratio; // +740
            uint8_t bcn_tbtt_cnt; // +741
            bool bcn_configured; // +742
            uint8_t dtim_count; // +743
            uint8_t tim_n1; // +744
            uint8_t tim_n2; // +745
            uint8_t bc_mc_status; // +746
            uint8_t csa_count; // +747
            uint8_t csa_oft[2]; // +748
            uint8_t ps_sta_cnt; // +750
            uint16_t ctrl_port_ethertype; // +752
        } ap;
    } u; // +92
    struct co_list sta_list; // +848
    struct mac_bss_info bss_info; // +856
    struct key_info_tag key_info[4]; // +1056
    struct key_info_tag *default_key; // +1472
    uint32_t flags; // +1476
    struct mm_chan_ctxt_add_req csa_channel; // +1480
};

struct vif_mgmt_env_tag {
    struct co_list free_list; // +0
    struct co_list used_list; // +8
    uint8_t vif_sta_cnt; // +16
    uint8_t vif_ap_cnt; // +17
    uint8_t low_bcn_int_idx; // +18
};


extern struct vif_mgmt_env_tag vif_mgmt_env;
extern struct vif_info_tag vif_info_tab[2];


int vif_mgmt_used_cnt(void);
struct vif_info_tag *vif_mgmt_first_used(void);
struct vif_info_tag *vif_mgmt_next(struct vif_info_tag *vif_entry);
void vif_mgmt_init(void);
void vif_mgmt_reset(void);
uint8_t vif_mgmt_register(const struct mac_addr *mac_addr, uint8_t vif_type, bool p2p, uint8_t *vif_idx);
void vif_mgmt_unregister(uint8_t vif_idx);
void vif_mgmt_add_key(const struct mm_key_add_req *param, uint8_t hw_key_idx);
void vif_mgmt_del_key(struct vif_info_tag *vif, uint8_t keyid);
uint8_t vif_mgmt_get_type(uint8_t vif_idx);
struct mac_addr *vif_mgmt_get_addr(uint8_t vif_idx);
void vif_mgmt_send_postponed_frame(struct vif_info_tag *p_vif_entry);
void vif_mgmt_bcn_to_prog(struct vif_info_tag *p_vif_entry);
void vif_mgmt_bcn_recv(struct vif_info_tag *p_vif_entry);
void vif_mgmt_set_ap_bcn_int(struct vif_info_tag *p_vif_entry, uint16_t bcn_int);
void vif_mgmt_switch_channel(struct vif_info_tag *p_vif_entry);
struct vif_info_tag *vif_mgmt_get_first_ap_inf(void);

#endif // __VIF_MGMT_H__
