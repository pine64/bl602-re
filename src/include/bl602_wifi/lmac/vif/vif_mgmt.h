#ifndef _VIF_MGMT_H_
#define _VIF_MGMT_H_

#include <stdbool.h>
#include <stdint.h>

#include <lmac/chan/chan.h>
#include <umac/me/me.h>
#include <lmac/mm/mm_timer.h>
#include <lmac/tx/txl/txl_frame.h>
#include <modules/common/co_list.h>
#include <modules/mac/mac.h>

#include <blconfig.h>

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
    /// Type of the interface (@ref VIF_STA, @ref VIF_IBSS, @ref VIF_MESH_POINT or @ref VIF_AP)
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
extern struct vif_info_tag vif_info_tab[NX_VIRT_DEV_MAX];


void vif_mgmt_init(void);
void vif_mgmt_reset(void);
uint8_t vif_mgmt_register(const struct mac_addr *mac_addr, uint8_t vif_type, bool p2p, uint8_t *vif_idx);
void vif_mgmt_unregister(uint8_t vif_idx);
void vif_mgmt_add_key(const struct mm_key_add_req *param, uint8_t hw_key_idx);
void vif_mgmt_del_key(struct vif_info_tag *vif, uint8_t keyid);
void vif_mgmt_send_postponed_frame(struct vif_info_tag *p_vif_entry);
void vif_mgmt_bcn_to_prog(struct vif_info_tag *p_vif_entry);
void vif_mgmt_bcn_recv(struct vif_info_tag *p_vif_entry);
void vif_mgmt_set_ap_bcn_int(struct vif_info_tag *p_vif_entry, uint16_t bcn_int);
void vif_mgmt_switch_channel(struct vif_info_tag *p_vif_entry);
struct vif_info_tag *vif_mgmt_get_first_ap_inf(void);

static inline int vif_mgmt_used_cnt(void) {
    return vif_mgmt_env.vif_ap_cnt + vif_mgmt_env.vif_sta_cnt;
}

static inline struct vif_info_tag *vif_mgmt_first_used(void) {
    return (struct vif_info_tag *) co_list_pick(&vif_mgmt_env.used_list);
}

static inline struct vif_info_tag *vif_mgmt_next(struct vif_info_tag *vif_entry) {
    return (struct vif_info_tag *) co_list_next(&vif_entry->list_hdr);
}

static inline uint8_t vif_mgmt_get_type(uint8_t vif_idx) {
    return vif_info_tab[vif_idx].type;
}

static inline struct mac_addr *vif_mgmt_get_addr(uint8_t vif_idx) {
    return &vif_info_tab[vif_idx].mac_addr;
}

enum {
    /// ESS STA interface
    VIF_STA,
    /// IBSS STA interface
    VIF_IBSS,
    /// AP interface
    VIF_AP,
    /// Mesh Point interface
    VIF_MESH_POINT,
    /// Unknown type
    VIF_UNKNOWN
};

/// Macro defining an invalid VIF index
#define INVALID_VIF_IDX 0xFF

/// Macro defining an unknown tx power
#define VIF_UNDEF_POWER 0x7F


#endif // __VIF_MGMT_H__
