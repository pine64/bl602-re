#ifndef _MM_H_
#define _MM_H_

#include <stdbool.h>
#include <stdint.h>

#include <hal/hal_desc.h>
#include <lmac/mm/mm_task.h>
#include <lmac/vif/vif_mgmt.h>
#include <lmac/sta/sta_mgmt.h>

#include <blconfig.h>

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

///BA agreement related status
enum {
    /// Correct BA agreement establishment
    BA_AGMT_ESTABLISHED,
    /// BA agreement already exists for STA+TID requested, cannot override it (should have been deleted first)
    BA_AGMT_ALREADY_EXISTS,
    /// Correct BA agreement deletion
    BA_AGMT_DELETED,
    /// BA agreement for the (STA, TID) doesn't exist so nothing to delete
    BA_AGMT_DOESNT_EXIST,
    /// No more BA agreement can be added for the specified type
    BA_AGMT_NO_MORE_BA_AGMT,
    /// BA agreement type not supported
    BA_AGMT_NOT_SUPPORTED
};

///BA agreement types
enum
{
    ///BlockAck agreement for TX
    BA_AGMT_TX,
    ///BlockAck agreement for RX
    BA_AGMT_RX,
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
void mm_check_rssi(struct vif_info_tag *vif_entry, int8_t rssi);

void mm_tbtt_evt(int dummy);
void mm_hw_idle_evt(int dummy);

#define TXOP(limit)  (((limit)==0) || ((limit) > MM_DEFAULT_MAX_AMPDU_DURATION))?       \
                                    MM_DEFAULT_MAX_AMPDU_DURATION:(limit);
#define MM_DEFAULT_MAX_AMPDU_DURATION 150 // not 100
#define MM_BEACON_LOSS_THD          (100)  // not 30
/// Periodicity of keep-alive NULL frame transmission
#define MM_KEEP_ALIVE_PERIOD (30 * 1000000)   ///< 30s
/// Default peer device accuracy (in ppm)
#define MM_AP_CLK_ACCURACY            20

#define NXMAC_EN_DUPLICATE_DETECTION_BIT         ((uint32_t)0x80000000)
#define NXMAC_EN_DUPLICATE_DETECTION_POS         31
#define NXMAC_ACCEPT_UNKNOWN_BIT                 ((uint32_t)0x40000000)
#define NXMAC_ACCEPT_UNKNOWN_POS                 30
#define NXMAC_ACCEPT_OTHER_DATA_FRAMES_BIT       ((uint32_t)0x20000000)
#define NXMAC_ACCEPT_OTHER_DATA_FRAMES_POS       29
#define NXMAC_ACCEPT_QO_S_NULL_BIT               ((uint32_t)0x10000000)
#define NXMAC_ACCEPT_QO_S_NULL_POS               28
#define NXMAC_ACCEPT_QCFWO_DATA_BIT              ((uint32_t)0x08000000)
#define NXMAC_ACCEPT_QCFWO_DATA_POS              27
#define NXMAC_ACCEPT_Q_DATA_BIT                  ((uint32_t)0x04000000)
#define NXMAC_ACCEPT_Q_DATA_POS                  26
#define NXMAC_ACCEPT_CFWO_DATA_BIT               ((uint32_t)0x02000000)
#define NXMAC_ACCEPT_CFWO_DATA_POS               25
#define NXMAC_ACCEPT_DATA_BIT                    ((uint32_t)0x01000000)
#define NXMAC_ACCEPT_DATA_POS                    24
#define NXMAC_ACCEPT_OTHER_CNTRL_FRAMES_BIT      ((uint32_t)0x00800000)
#define NXMAC_ACCEPT_OTHER_CNTRL_FRAMES_POS      23
#define NXMAC_ACCEPT_CF_END_BIT                  ((uint32_t)0x00400000)
#define NXMAC_ACCEPT_CF_END_POS                  22
#define NXMAC_ACCEPT_ACK_BIT                     ((uint32_t)0x00200000)
#define NXMAC_ACCEPT_ACK_POS                     21
#define NXMAC_ACCEPT_CTS_BIT                     ((uint32_t)0x00100000)
#define NXMAC_ACCEPT_CTS_POS                     20
#define NXMAC_ACCEPT_RTS_BIT                     ((uint32_t)0x00080000)
#define NXMAC_ACCEPT_RTS_POS                     19
#define NXMAC_ACCEPT_PS_POLL_BIT                 ((uint32_t)0x00040000)
#define NXMAC_ACCEPT_PS_POLL_POS                 18
#define NXMAC_ACCEPT_BA_BIT                      ((uint32_t)0x00020000)
#define NXMAC_ACCEPT_BA_POS                      17
#define NXMAC_ACCEPT_BAR_BIT                     ((uint32_t)0x00010000)
#define NXMAC_ACCEPT_BAR_POS                     16
#define NXMAC_ACCEPT_OTHER_MGMT_FRAMES_BIT       ((uint32_t)0x00008000)
#define NXMAC_ACCEPT_OTHER_MGMT_FRAMES_POS       15
#define NXMAC_ACCEPT_ALL_BEACON_BIT              ((uint32_t)0x00002000)
#define NXMAC_ACCEPT_ALL_BEACON_POS              13
#define NXMAC_ACCEPT_NOT_EXPECTED_BA_BIT         ((uint32_t)0x00001000)
#define NXMAC_ACCEPT_NOT_EXPECTED_BA_POS         12
#define NXMAC_ACCEPT_DECRYPT_ERROR_FRAMES_BIT    ((uint32_t)0x00000800)
#define NXMAC_ACCEPT_DECRYPT_ERROR_FRAMES_POS    11
#define NXMAC_ACCEPT_BEACON_BIT                  ((uint32_t)0x00000400)
#define NXMAC_ACCEPT_BEACON_POS                  10
#define NXMAC_ACCEPT_PROBE_RESP_BIT              ((uint32_t)0x00000200)
#define NXMAC_ACCEPT_PROBE_RESP_POS              9
#define NXMAC_ACCEPT_PROBE_REQ_BIT               ((uint32_t)0x00000100)
#define NXMAC_ACCEPT_PROBE_REQ_POS               8
#define NXMAC_ACCEPT_MY_UNICAST_BIT              ((uint32_t)0x00000080)
#define NXMAC_ACCEPT_MY_UNICAST_POS              7
#define NXMAC_ACCEPT_UNICAST_BIT                 ((uint32_t)0x00000040)
#define NXMAC_ACCEPT_UNICAST_POS                 6
#define NXMAC_ACCEPT_ERROR_FRAMES_BIT            ((uint32_t)0x00000020)
#define NXMAC_ACCEPT_ERROR_FRAMES_POS            5
#define NXMAC_ACCEPT_OTHER_BSSID_BIT             ((uint32_t)0x00000010)
#define NXMAC_ACCEPT_OTHER_BSSID_POS             4
#define NXMAC_ACCEPT_BROADCAST_BIT               ((uint32_t)0x00000008)
#define NXMAC_ACCEPT_BROADCAST_POS               3
#define NXMAC_ACCEPT_MULTICAST_BIT               ((uint32_t)0x00000004)
#define NXMAC_ACCEPT_MULTICAST_POS               2
#define NXMAC_DONT_DECRYPT_BIT                   ((uint32_t)0x00000002)
#define NXMAC_DONT_DECRYPT_POS                   1
#define NXMAC_EXC_UNENCRYPTED_BIT                ((uint32_t)0x00000001)
#define NXMAC_EXC_UNENCRYPTED_POS                0

/// RX filter for monitoring mode (all packets allowed)
#define MM_RX_FILTER_MONITOR  (0xFFFFFFFF & ~(NXMAC_ACCEPT_ERROR_FRAMES_BIT \
                                            | NXMAC_EXC_UNENCRYPTED_BIT | \
                                              NXMAC_EN_DUPLICATE_DETECTION_BIT))

/// Number of VLAN Id
#if NX_KEY_RAM_CONFIG
#define MM_SEC_VLAN_COUNT (NX_VIRT_DEV_MAX + RW_MESH_LINK_NB)
#else
#define MM_SEC_VLAN_COUNT 6
#endif

/// Number of default keys
#define MM_SEC_DEFAULT_KEY_COUNT (MAC_DEFAULT_KEY_COUNT * MM_SEC_VLAN_COUNT) // =8


/// NULL cipher
#define MM_SEC_CTYPE_NULL        0
/// WEP (RC4) cipher
#define MM_SEC_CTYPE_WEP         1
/// TKIP cipher
#define MM_SEC_CTYPE_TKIP        2
/// CCMP cipher
#define MM_SEC_CTYPE_CCMP        3
/// WAPI (SMS4) cipher
#define MM_SEC_CTYPE_WPI_SMS4    4

/// Macro converting a default key index to its HW index in key memory
#define MM_VIF_TO_KEY(key_idx, vif_idx)     ((key_idx) + ((vif_idx) * MAC_DEFAULT_KEY_COUNT))
/// Macro converting a STA index to the its HW pairwise key index in key memory
#define MM_STA_TO_KEY(sta_idx)              ((sta_idx) + MM_SEC_DEFAULT_KEY_COUNT)
#if (RW_MESH_EN)
/// Macro converting a Mesh Link Index and a key index to its HW index in key memory
#define MM_MLINK_TO_KEY(key_idx, mlink_idx) (((NX_VIRT_DEV_MAX + mlink_idx) * MAC_DEFAULT_KEY_COUNT) + key_idx)
#endif //(RW_MESH_EN)

/// Macro converting HW pairwise key index (>= @ref MAC_DEFAULT_KEY_COUNT) to a STA index
#define MM_KEY_TO_STA(hw_key_idx)    ((hw_key_idx) - MM_SEC_DEFAULT_KEY_COUNT)
/// Macro converting a hw_key_idx (< @ref MAC_DEFAULT_KEY_COUNT) to the VIF index it corresponds
#define MM_KEY_TO_VIF(hw_key_idx)    (((hw_key_idx) & ~(MAC_DEFAULT_KEY_COUNT - 1)) / MAC_DEFAULT_KEY_COUNT)
/// Macro converting a hw_key_idx (< @ref MAC_DEFAULT_KEY_COUNT) to the default key id ir corresponds
#define MM_KEY_TO_KEYID(hw_key_idx)  ((hw_key_idx) & (MAC_DEFAULT_KEY_COUNT - 1))
/// RX filter for active mode (i.e. not monitoring)
#ifdef CONFIG_AOS_MESH
#define MM_RX_FILTER_ACTIVE (NXMAC_ACCEPT_MULTICAST_BIT | NXMAC_ACCEPT_BROADCAST_BIT | \
                             NXMAC_ACCEPT_MY_UNICAST_BIT | \
                             NXMAC_ACCEPT_BEACON_BIT | NXMAC_ACCEPT_OTHER_MGMT_FRAMES_BIT | \
                             NXMAC_ACCEPT_BAR_BIT | NXMAC_ACCEPT_BA_BIT |                \
                             NXMAC_ACCEPT_DATA_BIT | NXMAC_ACCEPT_Q_DATA_BIT |           \
                             NXMAC_ACCEPT_QO_S_NULL_BIT | NXMAC_ACCEPT_OTHER_DATA_FRAMES_BIT| \
                             NXMAC_ACCEPT_OTHER_BSSID_BIT)
#else
#define MM_RX_FILTER_ACTIVE (NXMAC_ACCEPT_MULTICAST_BIT | NXMAC_ACCEPT_BROADCAST_BIT | \
                             NXMAC_ACCEPT_MY_UNICAST_BIT | NXMAC_ACCEPT_PROBE_REQ_BIT|\
                             NXMAC_ACCEPT_BEACON_BIT | NXMAC_ACCEPT_OTHER_MGMT_FRAMES_BIT | \
                             NXMAC_ACCEPT_BAR_BIT | NXMAC_ACCEPT_BA_BIT |                \
                             NXMAC_ACCEPT_DATA_BIT | NXMAC_ACCEPT_Q_DATA_BIT |           \
                             NXMAC_ACCEPT_QO_S_NULL_BIT | NXMAC_ACCEPT_OTHER_DATA_FRAMES_BIT)   
// bl602 has one moer NXMAC_ACCEPT_PROBE_REQ_BIT                          
#endif

/// Number of supported Default+Pairwise keys
#if NX_KEY_RAM_CONFIG
#define MM_SEC_MAX_KEY_NBR      ((MAC_CORE->encr_ram_config.max) + 1)
#else
#define MM_SEC_MAX_KEY_NBR      64
#endif

static inline void mm_ps_change_ind(uint8_t sta_idx, uint8_t ps_state) {
    struct sta_info_tag *sta = sta_info_tab + sta_idx;

    sta->ps_state = ps_state;
    struct mm_ps_change_ind *ind = ke_msg_alloc(MM_PS_CHANGE_IND, TASK_API,
        TASK_MM, sizeof(struct mm_ps_change_ind));

    ind->sta_idx = sta_idx;
    ind->ps_state = ps_state;
    ke_msg_send(ind);
}

#define TASK_IND TASK_SM

#endif // _MM_H_
