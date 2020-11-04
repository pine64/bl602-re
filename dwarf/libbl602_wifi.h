/* ======== components/bl602/bl602_wifi/ip/cfg/cfg_api.c ======== */

const char *cfg_api_element_dump(void *val, enum CFG_ELEMENT_TYPE type, char *strs); // :6:13
int cfg_api_element_general_set(struct cfg_element_entry *entry, void *arg1, void *arg2); // :106:5
int cfg_api_element_general_get(struct cfg_element_entry *entry, void *arg1, void *arg2); // :157:5
int cfg_api_element_set(uint32_t task, uint32_t element, uint32_t type, void *arg1, void *arg2); // :162:5

/* ======== components/bl602/bl602_wifi/ip/cfg/cfg_api.h ======== */

struct cfg_element_entry {
    uint32_t task; // +0
    uint16_t element; // +4
    uint16_t type; // +6
    char *name; // +8
    void *val; // +12
    int (*set)(struct cfg_element_entry *, void *, void *); // +16
    int (*get)(struct cfg_element_entry *, void *, void *); // +20
    int (*notify)(struct cfg_element_entry *, void *, void *, enum CFG_ELEMENT_TYPE_OPS); // +24
}; // :7:8

/* ======== components/bl602/bl602_wifi/ip/cfg/cfg_task.c ======== */

void dump_cfg_entries(void); // :21:6
static int cfg_start_req_handler(const ke_msg_id_t msgid, struct cfg_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :42:12

const struct ke_msg_handler cfg_default_state[1]; // :87:29
const struct ke_state_handler cfg_default_handler; // :93:31
ke_state_t cfg_state[1]; // :97:12

/* ======== components/bl602/bl602_wifi/ip/cfg/cfg_task.h ======== */

enum cfg_state_tag {
    CFG_IDLE = 0,
    CFG_STATE_MAX = 1,
}; // :11:6

enum cfg_msg_tag {
    CFG_START_REQ = 12288,
    CFG_START_CFM = 12289,
}; // :20:6

struct {
    uint32_t task; // +0
    uint32_t element; // +4
    uint32_t length; // +8
    uint32_t buf[0]; // +12
} cfg_start_req_u_tlv_t; // :37:3

struct cfg_start_req {
    uint32_t ops; // +0
    union {
        struct {
            uint32_t task; // +0
            uint32_t element; // +4
        } get[];
        struct {
            uint32_t task; // +0
            uint32_t element; // +4
        } reset[];
        struct {
            uint32_t task; // +0
            uint32_t element; // +4
            uint32_t type; // +8
            uint32_t length; // +12
            uint32_t buf[0]; // +16
        } set[];
    } u; // +4
}; // :39:8

struct cfg_start_cfm {
    uint8_t status; // +0
}; // :76:8

const struct ke_state_handler cfg_default_handler; // :82:38
ke_state_t cfg_state[1]; // :83:19

/* ======== components/bl602/bl602_wifi/ip/lmac/src/bl/bl.c ======== */

struct bl_env_tag bl_env; // :47:19
static struct notifier_block *fw_nap_chain_ptr; // :50:31
struct notifier_block fw_nap_chain; // :51:23

void bl_init(void); // :67:6
void bl_reset_evt(int dummy); // :130:6
int bl_sleep(void); // :178:5
void bl_wakeup(void); // :236:6
uint32_t bl_nap_calculate(void); // :266:10
int bl_nap_call(uint32_t time); // :291:5
int bl_nap_hook_register(struct notifier_block *nb); // :296:5
int bl_nap_hook_register_fromCritical(struct notifier_block *nb); // :302:5
int bl_nap_hook_unregister(struct notifier_block *nb); // :308:5
int bl_nap_hook_unregister_fromCritical(struct notifier_block *nb); // :314:5
int bl_nap_hook_call(int event, void *env); // :320:5
int bl_nap_hook_call_fromCritical(int event, void *env); // :326:5

/* ======== components/bl602/bl602_wifi/ip/lmac/src/bl/bl.h ======== */

struct bl_env_tag {
    uint8_t prev_hw_state; // +0
    int hw_in_doze; // +4
}; // :33:8

struct bl_env_tag bl_env; // :48:26

/* ======== components/bl602/bl602_wifi/ip/lmac/src/chan/chan.c ======== */

struct chan_env_tag chan_env; // :95:21
struct chan_ctxt_tag chan_ctxt_pool[5]; // :98:22

static void chan_ctxt_op_evt(void *env); // :916:13
static void chan_pre_switch_channel(void); // :1077:13
static void chan_tx_cfm(void *dummy, uint32_t status); // :1162:13
static void chan_goto_idle_cb(void); // :1334:13
static void chan_tbtt_insert(struct chan_tbtt_tag *p_tbtt_entry); // :1618:13
static void chan_tbtt_switch_evt(void *env); // :1754:13
static void chan_tbtt_schedule(struct chan_tbtt_tag *p_tbtt_entry); // :1836:13
static void chan_switch_start(struct chan_ctxt_tag *p_chan_entry); // :2055:13
void chan_init(void); // :2163:6
void chan_scan_req(uint8_t band, uint16_t freq, int8_t pwr, uint32_t duration_us, uint8_t vif_index); // :2201:6
uint8_t chan_roc_req(const struct mm_remain_on_channel_req *req, ke_task_id_t taskid); // :2232:9
uint8_t chan_ctxt_add(const struct mm_chan_ctxt_add_req *p_add_req, uint8_t *idx); // :2385:9
void chan_ctxt_del(uint8_t chan_idx); // :2433:6
void chan_ctxt_link(uint8_t vif_idx, uint8_t chan_idx); // :2452:6
void chan_ctxt_unlink(uint8_t vif_idx); // :2523:6
void chan_ctxt_update(const struct mm_chan_ctxt_update_req *p_upd_req); // :2650:6
void chan_tbtt_switch_update(struct vif_info_tag *p_vif_entry, uint32_t tbtt_time); // :2716:6
void chan_bcn_to_evt(struct vif_info_tag *p_vif_entry); // :2764:6
void chan_bcn_detect_start(struct vif_info_tag *p_vif_entry); // :2835:6
bool chan_is_on_channel(struct vif_info_tag *p_vif_entry); // :2955:5
bool chan_is_tx_allowed(struct vif_info_tag *p_vif_entry); // :2974:5
bool chan_is_on_operational_channel(struct vif_info_tag *p_vif_entry); // :2986:5
void chan_update_tx_power(struct chan_ctxt_tag *p_chan_entry); // :3001:6

/* ======== components/bl602/bl602_wifi/ip/lmac/src/chan/chan.h ======== */

enum chan_ctxt_status {
    CHAN_NOT_SCHEDULED = 0,
    CHAN_NOT_PROG = 1,
    CHAN_GOTO_IDLE = 2,
    CHAN_WAIT_NOA_CFM = 3,
    CHAN_WAITING_END = 4,
    CHAN_PRESENT = 5,
    CHAN_SENDING_NOA = 6,
    CHAN_CTXT_STATUS_MAX = 7,
}; // :88:6

enum chan_tbtt_status {
    CHAN_TBTT_NOT_PROG = 0,
    CHAN_TBTT_PROG = 1,
    CHAN_TBTT_PRESENCE = 2,
    CHAN_TBTT_STATUS_MAX = 3,
}; // :109:6

enum chan_env_status_bit {
    CHAN_ENV_ROC_WAIT_BIT = 0,
    CHAN_ENV_SCAN_WAIT_BIT = 1,
    CHAN_ENV_ROC_BIT = 2,
    CHAN_ENV_SCAN_BIT = 3,
    CHAN_ENV_DELAY_PROG_BIT = 4,
    CHAN_ENV_TIMEOUT_BIT = 5,
    CHAN_ENV_BCN_DETECT_BIT = 6,
    CHAN_ENV_BIT_MAX = 7,
}; // :122:6

struct chan_tbtt_tag {
    struct co_list_hdr list_hdr; // +0
    uint32_t time; // +4
    uint8_t vif_index; // +8
    uint8_t priority; // +9
    uint8_t status; // +10
}; // :148:8

struct chan_ctxt_tag {
    struct co_list_hdr list_hdr; // +0
    struct mm_chan_ctxt_add_req channel; // +4
    ke_task_id_t taskid; // +14
    uint16_t nb_slots; // +16
    uint16_t nb_rem_slots; // +18
    uint16_t nb_res_slots; // +20
    uint8_t status; // +22
    uint8_t idx; // +23
    uint8_t nb_linked_vif; // +24
    uint8_t vif_index; // +25
}; // :165:8

struct chan_env_tag {
    struct co_list list_free_ctxt; // +0
    struct co_list list_sched_ctxt; // +8
    struct co_list list_tbtt; // +16
    struct co_list list_tbtt_delay; // +24
    struct chan_ctxt_tag *current_channel; // +32
    struct chan_ctxt_tag *chan_switch; // +36
    struct mm_timer_tag tmr_tbtt_switch; // +40
    struct mm_timer_tag tmr_cde; // +56
    struct mm_timer_tag tmr_ctxt_op; // +72
    struct mm_timer_tag tmr_conn_less; // +88
    uint32_t cde_dur_us; // +104
    uint32_t cde_time; // +108
    uint8_t status; // +112
    uint8_t cfm_cnt; // +113
    uint8_t nb_sched_ctxt; // +114
    uint8_t pm; // +115
}; // :211:8

struct chan_env_tag chan_env; // :268:28

/* ======== components/bl602/bl602_wifi/ip/lmac/src/hal/hal_desc.c ======== */

struct rx_dmadesc rx_dma_hdrdesc[]; // :40:19
struct rx_payloaddesc rx_payload_desc[]; // :41:23
uint32_t rx_payload_desc_buffer[13]; // :42:10
struct dma_desc bcn_dwnld_desc; // :47:17

/* ======== components/bl602/bl602_wifi/ip/lmac/src/hal/hal_desc.h ======== */

struct tx_policy_tbl {
    uint32_t upatterntx; // +0
    uint32_t phycntrlinfo1; // +4
    uint32_t phycntrlinfo2; // +8
    uint32_t maccntrlinfo1; // +12
    uint32_t maccntrlinfo2; // +16
    uint32_t ratecntrlinfo[4]; // +20
    uint32_t powercntrlinfo[4]; // +36
}; // :669:8

struct tx_compressed_policy_tbl {
    uint32_t upatterntx; // +0
    uint32_t sec_user_control; // +4
}; // :689:8

struct tx_hd {
    uint32_t upatterntx; // +0
    uint32_t nextfrmexseq_ptr; // +4
    uint32_t nextmpdudesc_ptr; // +8
    union {
        uint32_t first_pbd_ptr;
        uint32_t sec_user1_ptr;
    }; // +12
    union {
        uint32_t datastartptr;
        uint32_t sec_user2_ptr;
    }; // +16
    union {
        uint32_t dataendptr;
        uint32_t sec_user3_ptr;
    }; // +20
    uint32_t frmlen; // +24
    uint32_t frmlifetime; // +28
    uint32_t phyctrlinfo; // +32
    uint32_t policyentryaddr; // +36
    uint32_t optlen[3]; // +40
    uint32_t macctrlinfo1; // +52
    uint32_t macctrlinfo2; // +56
    uint32_t statinfo; // +60
    uint32_t mediumtimeused; // +64
}; // :698:8

struct tx_pbd {
    uint32_t upatterntx; // +0
    uint32_t next; // +4
    uint32_t datastartptr; // +8
    uint32_t dataendptr; // +12
    uint32_t bufctrlinfo; // +16
}; // :748:8

struct rx_hd {
    uint32_t upatternrx; // +0
    uint32_t next; // +4
    uint32_t first_pbd_ptr; // +8
    struct rx_swdesc *swdesc; // +12
    uint32_t datastartptr; // +16
    uint32_t dataendptr; // +20
    uint32_t headerctrlinfo; // +24
    uint16_t frmlen; // +28
    uint16_t ampdu_stat_info; // +30
    uint32_t tsflo; // +32
    uint32_t tsfhi; // +36
    uint32_t recvec1a; // +40
    uint32_t recvec1b; // +44
    uint32_t recvec1c; // +48
    uint32_t recvec1d; // +52
    uint32_t recvec2a; // +56
    uint32_t recvec2b; // +60
    uint32_t statinfo; // +64
}; // :774:8

struct rx_pbd {
    uint32_t upattern; // +0
    uint32_t next; // +4
    uint32_t datastartptr; // +8
    uint32_t dataendptr; // +12
    uint16_t bufstatinfo; // +16
    uint16_t reserved; // +18
}; // :816:8

struct rx_dmadesc {
    struct rx_hd hd; // +0
    struct phy_channel_info phy_info; // +68
    uint32_t flags; // +76
    uint32_t pattern; // +80
    uint32_t payl_offset; // +84
    uint32_t reserved_pad[2]; // +88
    uint32_t use_in_tcpip; // +96
}; // :834:8

struct rx_payloaddesc {
    struct rx_pbd pbd; // +0
    uint32_t pd_status; // +20
    uint32_t *buffer_rx; // +24
    void *pbuf_holder[6]; // +28
}; // :854:8

struct tx_cfm_tag {
    uint16_t pn[4]; // +0
    uint16_t sn; // +8
    uint16_t timestamp; // +10
    int8_t credits; // +12
    uint8_t ampdu_size; // +13
    uint8_t pad[2]; // +14
    uint32_t status; // +16
}; // :865:8

struct tx_hw_desc {
    struct tx_cfm_tag *cfm_ptr; // +0
    struct tx_hd thd; // +4
}; // :885:8

struct tx_agg_desc {
    uint8_t reserved; // +0
}; // :979:8

struct dma_desc bcn_dwnld_desc; // :1048:24
struct rx_dmadesc rx_dma_hdrdesc[]; // :1052:26
struct rx_payloaddesc rx_payload_desc[]; // :1054:30
uint32_t rx_payload_desc_buffer[13]; // :1055:17

/* ======== components/bl602/bl602_wifi/ip/lmac/src/hal/hal_dma.c ======== */

const uint8_t dma2chan[2]; // :39:15
const uint8_t dma2lli[2]; // :46:15
struct hal_dma_env_tag hal_dma_env; // :61:24

void hal_dma_init(void); // :90:6
void hal_dma_push(struct hal_dma_desc_tag *desc, int type); // :117:6
void hal_dma_evt(int dma_queue); // :159:6

/* ======== components/bl602/bl602_wifi/ip/lmac/src/hal/hal_dma.h ======== */

typedef void (*cb_dma_func_ptr)(void *, int); // :78:16

struct hal_dma_desc_tag {
    struct co_list_hdr hdr; // +0
    struct dma_desc *dma_desc; // +4
    cb_dma_func_ptr cb; // +8
    void *env; // +12
}; // :81:8

struct hal_dma_env_tag {
    struct co_list prog[2]; // +0
    struct co_list free_gp_dma_descs; // +16
    uint16_t lli_cnt[2]; // +24
}; // :94:8

struct hal_dma_env_tag hal_dma_env; // :109:31

/* ======== components/bl602/bl602_wifi/ip/lmac/src/hal/hal_machw.c ======== */

const uint8_t rxv2macrate[]; // :103:15

void hal_machw_idle_req(void); // :220:6
void hal_machw_stop(void); // :250:6
void hal_machw_init(void); // :257:6
void hal_machw_disable_int(void); // :378:6
void hal_machw_reset(void); // :410:6
uint8_t hal_machw_search_addr(struct mac_addr *addr); // :453:9
void hal_machw_monitor_mode(void); // :480:6
bool hal_machw_sleep_check(void); // :502:5
void hal_machw_gen_handler(void); // :570:6

/* ======== components/bl602/bl602_wifi/ip/lmac/src/hal/hal_machw.h ======== */

const uint8_t rxv2macrate[]; // :236:22

/* ======== components/bl602/bl602_wifi/ip/lmac/src/hal/hal_machw_mib.h ======== */

struct machw_mib_tag {
    uint32_t dot11_wep_excluded_count; // +0
    uint32_t dot11_fcs_error_count; // +4
    uint32_t nx_rx_phy_error_count; // +8
    uint32_t nx_rd_fifo_overflow_count; // +12
    uint32_t nx_tx_underun_count; // +16
    uint32_t reserved_1[7]; // +20
    uint32_t nx_qos_utransmitted_mpdu_count[8]; // +48
    uint32_t nx_qos_gtransmitted_mpdu_count[8]; // +80
    uint32_t dot11_qos_failed_count[8]; // +112
    uint32_t dot11_qos_retry_count[8]; // +144
    uint32_t dot11_qos_rts_success_count[8]; // +176
    uint32_t dot11_qos_rts_failure_count[8]; // +208
    uint32_t nx_qos_ack_failure_count[8]; // +240
    uint32_t nx_qos_ureceived_mpdu_count[8]; // +272
    uint32_t nx_qos_greceived_mpdu_count[8]; // +304
    uint32_t nx_qos_ureceived_other_mpdu[8]; // +336
    uint32_t dot11_qos_retries_received_count[8]; // +368
    uint32_t nx_utransmitted_amsdu_count[8]; // +400
    uint32_t nx_gtransmitted_amsdu_count[8]; // +432
    uint32_t dot11_failed_amsdu_count[8]; // +464
    uint32_t dot11_retry_amsdu_count[8]; // +496
    uint32_t dot11_transmitted_octets_in_amsdu[8]; // +528
    uint32_t dot11_amsdu_ack_failure_count[8]; // +560
    uint32_t nx_ureceived_amsdu_count[8]; // +592
    uint32_t nx_greceived_amsdu_count[8]; // +624
    uint32_t nx_ureceived_other_amsdu[8]; // +656
    uint32_t dot11_received_octets_in_amsdu_count[8]; // +688
    uint32_t reserved_2[24]; // +720
    uint32_t dot11_transmitted_ampdu_count; // +816
    uint32_t dot11_transmitted_mpdus_in_ampdu_count; // +820
    uint32_t dot11_transmitted_octets_in_ampdu_count; // +824
    uint32_t wnlu_ampdu_received_count; // +828
    uint32_t nx_gampdu_received_count; // +832
    uint32_t nx_other_ampdu_received_count; // +836
    uint32_t dot11_mpdu_in_received_ampdu_count; // +840
    uint32_t dot11_received_octets_in_ampdu_count; // +844
    uint32_t dot11_ampdu_delimiter_crc_error_count; // +848
    uint32_t dot11_implicit_bar_failure_count; // +852
    uint32_t dot11_explicit_bar_failure_count; // +856
    uint32_t reserved_3[5]; // +860
    uint32_t dot11_20mhz_frame_transmitted_count; // +880
    uint32_t dot11_40mhz_frame_transmitted_count; // +884
    uint32_t dot11_20mhz_frame_received_count; // +888
    uint32_t dot11_40mhz_frame_received_count; // +892
    uint32_t nx_failed_40mhz_txop; // +896
    uint32_t nx_successful_txops; // +900
    uint32_t reserved_4[4]; // +904
    uint32_t dot11_dualcts_success_count; // +920
    uint32_t dot11_stbc_cts_success_count; // +924
    uint32_t dot11_stbc_cts_failure_count; // +928
    uint32_t dot11_non_stbc_cts_success_count; // +932
    uint32_t dot11_non_stbc_cts_failure_count; // +936
}; // :35:8

/* ======== components/bl602/bl602_wifi/ip/lmac/src/hal/hal_mib.c ======== */

volatile struct machw_mib_tag *machw_mib; // :34:32

void hal_mib_dump(void); // :35:6

/* ======== components/bl602/bl602_wifi/ip/lmac/src/mm/mm.c ======== */

struct mm_env_tag mm_env; // :128:19

void mm_env_max_ampdu_duration_set(void); // :131:6
void mm_env_init(void); // :145:6
void mm_init(void); // :166:6
static void mm_ap_probe_cfm(void *env, uint32_t status); // :352:13

uint32_t beacon_rx_count; // :430:10

bool mm_check_beacon(struct rx_hd *rhd, struct vif_info_tag *vif_entry, struct sta_info_tag *p_sta_entry, uint32_t *tim); // :432:5
void mm_reset(void); // :494:6
void mm_active(void); // :511:6
void mm_sta_tbtt(void *env); // :519:6
void mm_tbtt_evt(int dummy); // :793:6
uint8_t mm_sec_machwaddr_wr(uint8_t sta_idx, uint8_t inst_nbr); // :813:9
void mm_sec_keydump(void); // :854:6
uint8_t mm_sec_machwkey_wr(const struct mm_key_add_req *param); // :953:9
void mm_sec_machwkey_del(uint8_t hw_key_idx); // :1095:6
void mm_sec_machwaddr_del(uint8_t sta_idx); // :1154:6
void mm_hw_idle_evt(int dummy); // :1179:6
void mm_hw_info_set(const struct mac_addr *mac_addr); // :1189:6
void mm_hw_ap_info_set(void); // :1212:6
void mm_hw_ap_info_reset(void); // :1228:6
void mm_back_to_host_idle(void); // :1319:6
void mm_force_idle_req(void); // :1340:6
static unsigned char ascii_to_hex(char asccode); // :1363:22

uint8_t wep_hw_keyid; // :1401:9

uint8_t mm_sta_add(const struct mm_sta_add_req *param, uint8_t *sta_idx, uint8_t *hw_sta_idx); // :1404:9
void mm_sta_del(uint8_t sta_idx); // :1512:6
void mm_cfg_element_keepalive_timestamp_update(void); // :1596:6
void mm_send_connection_loss_ind(struct vif_info_tag *p_vif_entry); // :1603:6

static long long last_us; // :1617:18

void mm_check_rssi(struct vif_info_tag *vif_entry, int8_t rssi); // :1618:6
void mm_send_csa_traffic_ind(uint8_t vif_index, bool enable); // :1684:6
uint16_t mm_get_rsn_wpa_ie(uint8_t sta_id, uint8_t *wpa_ie); // :1695:10
static int element_notify_status_enabled(struct cfg_element_entry *entry, void *arg1, void *arg2, enum CFG_ELEMENT_TYPE_OPS ops); // :1705:12
static int element_notify_time_last_received_set(struct cfg_element_entry *entry, void *arg1, void *arg2, enum CFG_ELEMENT_TYPE_OPS ops); // :1712:12
static int element_notify_keepalive_received(struct cfg_element_entry *entry, void *arg1, void *arg2, enum CFG_ELEMENT_TYPE_OPS ops); // :1719:12

static const struct cfg_element_entry cfg_entrys_mm[3]; // :1726:39

/* ======== components/bl602/bl602_wifi/ip/lmac/src/mm/mm.h ======== */

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
}; // :199:6

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
}; // :258:8

struct mm_env_tag mm_env; // :297:26

/* ======== components/bl602/bl602_wifi/ip/lmac/src/mm/mm_bcn.c ======== */

struct mm_bcn_env_tag mm_bcn_env; // :62:23

static void mm_tim_update_proceed(const struct mm_tim_update_req *param); // :74:13
static void mm_bcn_updated(void *env, int dma_queue); // :495:13
static void mm_bcn_update(const struct mm_bcn_change_req *param); // :533:13
static void mm_bcn_transmitted(void *env, uint32_t status); // :572:13
void mm_bcn_init(void); // :724:6
void mm_bcn_init_vif(struct vif_info_tag *vif_entry); // :750:6
void mm_bcn_change(const struct mm_bcn_change_req *param); // :787:6
void mm_tim_update(const struct mm_tim_update_req *param); // :804:6
void mm_bcn_transmit(void); // :819:6

/* ======== components/bl602/bl602_wifi/ip/lmac/src/mm/mm_bcn.h ======== */

struct mm_bcn_env_tag {
    const struct mm_bcn_change_req *param; // +0
    int tx_cfm; // +4
    bool tx_pending; // +8
    bool update_ongoing; // +9
    bool update_pending; // +10
    struct hal_dma_desc_tag dma; // +12
    struct co_list tim_list; // +28
}; // :56:8

struct mm_bcn_env_tag mm_bcn_env; // :85:30

/* ======== components/bl602/bl602_wifi/ip/lmac/src/mm/mm_task.c ======== */

int bl60x_edca_get(int ac, uint8_t *aifs, uint8_t *cwmin, uint8_t *cwmax, uint16_t *txop); // :63:5
static int mm_version_req_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :121:1
static int mm_reset_req_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :251:1
static int mm_start_req_handler(const ke_msg_id_t msgid, const struct mm_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :303:1
static int mm_set_power_req_handler(const ke_msg_id_t msgid, const struct mm_set_power_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :969:1
static int mm_set_idle_req_handler(const ke_msg_id_t msgid, const struct mm_set_idle_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1127:1
static int mm_force_idle_req_handler(const ke_msg_id_t msgid, const struct mm_force_idle_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1206:1
static int mm_sta_add_req_handler(const ke_msg_id_t msgid, const struct mm_sta_add_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1262:1
static int mm_sta_del_req_handler(const ke_msg_id_t msgid, const struct mm_sta_del_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1297:1
static int mm_key_add_req_handler(const ke_msg_id_t msgid, const struct mm_key_add_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1328:1
static int mm_key_del_req_handler(const ke_msg_id_t msgid, const struct mm_key_del_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1381:1
static int mm_remain_on_channel_req_handler(const ke_msg_id_t msgid, const struct mm_remain_on_channel_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1792:1
static int mm_bcn_change_req_handler(const ke_msg_id_t msgid, const struct mm_bcn_change_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1838:1
static int mm_tim_update_req_handler(const ke_msg_id_t msgid, const struct mm_tim_update_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1865:1
static int mm_hw_config_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1903:1
static int mm_set_ps_mode_req_handler(const ke_msg_id_t msgid, const struct mm_set_ps_mode_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2015:1
static int mm_set_ps_options_req_handler(const ke_msg_id_t msgid, const struct mm_set_ps_options_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2061:1
static int mm_cfg_rssi_req_handler(const ke_msg_id_t msgid, const struct mm_cfg_rssi_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2294:12
static int mm_monitor_enable_req_handler(const ke_msg_id_t msgid, const struct mm_monitor_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2330:1
static int mm_monitor_channel_req_handler(const ke_msg_id_t msgid, const struct mm_monitor_channel_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2387:1

const struct ke_msg_handler mm_default_state[33]; // :2431:29
const struct ke_state_handler mm_state_handler[4]; // :2544:31
const struct ke_state_handler mm_default_handler; // :2553:31
ke_state_t mm_state[1]; // :2557:12

/* ======== components/bl602/bl602_wifi/ip/lmac/src/mm/mm_task.h ======== */

enum mm_state_tag {
    MM_IDLE = 0,
    MM_ACTIVE = 1,
    MM_GOING_TO_IDLE = 2,
    MM_HOST_BYPASSED = 3,
    MM_STATE_MAX = 4,
}; // :45:6

enum mm_remain_on_channel_op {
    MM_ROC_OP_START = 0,
    MM_ROC_OP_CANCEL = 1,
    MM_ROC_OP_MAX = 2,
}; // :60:6

enum mm_msg_tag {
    MM_RESET_REQ = 0,
    MM_RESET_CFM = 1,
    MM_START_REQ = 2,
    MM_START_CFM = 3,
    MM_VERSION_REQ = 4,
    MM_VERSION_CFM = 5,
    MM_ADD_IF_REQ = 6,
    MM_ADD_IF_CFM = 7,
    MM_REMOVE_IF_REQ = 8,
    MM_REMOVE_IF_CFM = 9,
    MM_STA_ADD_REQ = 10,
    MM_STA_ADD_CFM = 11,
    MM_STA_DEL_REQ = 12,
    MM_STA_DEL_CFM = 13,
    MM_SET_FILTER_REQ = 14,
    MM_SET_FILTER_CFM = 15,
    MM_SET_CHANNEL_REQ = 16,
    MM_SET_CHANNEL_CFM = 17,
    MM_SET_DTIM_REQ = 18,
    MM_SET_DTIM_CFM = 19,
    MM_SET_BEACON_INT_REQ = 20,
    MM_SET_BEACON_INT_CFM = 21,
    MM_SET_BASIC_RATES_REQ = 22,
    MM_SET_BASIC_RATES_CFM = 23,
    MM_SET_BSSID_REQ = 24,
    MM_SET_BSSID_CFM = 25,
    MM_SET_EDCA_REQ = 26,
    MM_SET_EDCA_CFM = 27,
    MM_SET_MODE_REQ = 28,
    MM_SET_MODE_CFM = 29,
    MM_SET_VIF_STATE_REQ = 30,
    MM_SET_VIF_STATE_CFM = 31,
    MM_SET_SLOTTIME_REQ = 32,
    MM_SET_SLOTTIME_CFM = 33,
    MM_SET_IDLE_REQ = 34,
    MM_SET_IDLE_CFM = 35,
    MM_KEY_ADD_REQ = 36,
    MM_KEY_ADD_CFM = 37,
    MM_KEY_DEL_REQ = 38,
    MM_KEY_DEL_CFM = 39,
    MM_BA_ADD_REQ = 40,
    MM_BA_ADD_CFM = 41,
    MM_BA_DEL_REQ = 42,
    MM_BA_DEL_CFM = 43,
    MM_PRIMARY_TBTT_IND = 44,
    MM_SECONDARY_TBTT_IND = 45,
    MM_SET_POWER_REQ = 46,
    MM_SET_POWER_CFM = 47,
    MM_DENOISE_REQ = 48,
    MM_SET_PS_MODE_REQ = 49,
    MM_SET_PS_MODE_CFM = 50,
    MM_CHAN_CTXT_ADD_REQ = 51,
    MM_CHAN_CTXT_ADD_CFM = 52,
    MM_CHAN_CTXT_DEL_REQ = 53,
    MM_CHAN_CTXT_DEL_CFM = 54,
    MM_CHAN_CTXT_LINK_REQ = 55,
    MM_CHAN_CTXT_LINK_CFM = 56,
    MM_CHAN_CTXT_UNLINK_REQ = 57,
    MM_CHAN_CTXT_UNLINK_CFM = 58,
    MM_CHAN_CTXT_UPDATE_REQ = 59,
    MM_CHAN_CTXT_UPDATE_CFM = 60,
    MM_CHAN_CTXT_SCHED_REQ = 61,
    MM_CHAN_CTXT_SCHED_CFM = 62,
    MM_BCN_CHANGE_REQ = 63,
    MM_BCN_CHANGE_CFM = 64,
    MM_TIM_UPDATE_REQ = 65,
    MM_TIM_UPDATE_CFM = 66,
    MM_CONNECTION_LOSS_IND = 67,
    MM_CHANNEL_SWITCH_IND = 68,
    MM_CHANNEL_PRE_SWITCH_IND = 69,
    MM_REMAIN_ON_CHANNEL_REQ = 70,
    MM_REMAIN_ON_CHANNEL_CFM = 71,
    MM_REMAIN_ON_CHANNEL_EXP_IND = 72,
    MM_PS_CHANGE_IND = 73,
    MM_TRAFFIC_REQ_IND = 74,
    MM_SET_PS_OPTIONS_REQ = 75,
    MM_SET_PS_OPTIONS_CFM = 76,
    MM_P2P_VIF_PS_CHANGE_IND = 77,
    MM_CSA_COUNTER_IND = 78,
    MM_CHANNEL_SURVEY_IND = 79,
    MM_BFMER_ENABLE_REQ = 80,
    MM_SET_P2P_NOA_REQ = 81,
    MM_SET_P2P_OPPPS_REQ = 82,
    MM_SET_P2P_NOA_CFM = 83,
    MM_SET_P2P_OPPPS_CFM = 84,
    MM_P2P_NOA_UPD_IND = 85,
    MM_CFG_RSSI_REQ = 86,
    MM_RSSI_STATUS_IND = 87,
    MM_CSA_FINISH_IND = 88,
    MM_CSA_TRAFFIC_IND = 89,
    MM_MU_GROUP_UPDATE_REQ = 90,
    MM_MU_GROUP_UPDATE_CFM = 91,
    MM_MONITOR_REQ = 92,
    MM_MONITOR_CFM = 93,
    MM_MONITOR_CHANNEL_REQ = 94,
    MM_MONITOR_CHANNEL_CFM = 95,
    MM_FORCE_IDLE_REQ = 96,
    MM_SCAN_CHANNEL_START_IND = 97,
    MM_SCAN_CHANNEL_END_IND = 98,
    MM_MAX = 99,
}; // :69:6

struct mm_monitor_cfm {
    uint32_t status; // +0
    uint32_t enable; // +4
    uint32_t data[8]; // +8
}; // :280:8

struct mm_monitor_req {
    uint32_t enable; // +0
}; // :288:8

struct mm_monitor_channel_cfm {
    uint32_t status; // +0
    uint32_t freq; // +4
    uint32_t data[8]; // +8
}; // :294:8

struct mm_monitor_channel_req {
    uint32_t freq; // +0
    uint32_t use_40Mhz; // +4
    uint32_t higher_band; // +8
}; // :302:8

struct mm_start_req {
    struct phy_cfg_tag phy_cfg; // +0
    uint32_t uapsd_timeout; // +64
    uint16_t lp_clk_accuracy; // +68
}; // :310:8

struct mm_set_channel_req {
    uint8_t band; // +0
    uint8_t type; // +1
    uint16_t prim20_freq; // +2
    uint16_t center1_freq; // +4
    uint16_t center2_freq; // +6
    uint8_t index; // +8
    int8_t tx_power; // +9
}; // :321:8

struct mm_set_channel_cfm {
    uint8_t radio_idx; // +0
    int8_t power; // +1
}; // :342:8

struct mm_set_dtim_req {
    uint8_t dtim_period; // +0
}; // :351:8

struct mm_set_power_req {
    uint8_t inst_nbr; // +0
    int8_t power; // +1
}; // :358:8

struct mm_set_power_cfm {
    uint8_t radio_idx; // +0
    int8_t power; // +1
}; // :367:8

struct mm_set_beacon_int_req {
    uint16_t beacon_int; // +0
    uint8_t inst_nbr; // +2
}; // :376:8

struct mm_set_basic_rates_req {
    uint32_t rates; // +0
    uint8_t inst_nbr; // +4
    uint8_t band; // +5
}; // :385:8

struct mm_set_bssid_req {
    struct mac_addr bssid; // +0
    uint8_t inst_nbr; // +6
}; // :396:8

struct mm_set_filter_req {
    uint32_t filter; // +0
}; // :405:8

struct mm_add_if_req {
    uint8_t type; // +0
    struct mac_addr addr; // +1
    bool p2p; // +7
}; // :412:8

struct mm_set_edca_req {
    uint32_t ac_param; // +0
    bool uapsd; // +4
    uint8_t hw_queue; // +5
    uint8_t inst_nbr; // +6
}; // :423:8

struct mm_set_slottime_req {
    uint8_t slottime; // +0
}; // :436:8

struct mm_set_mode_req {
    uint8_t abgnmode; // +0
}; // :443:8

struct mm_set_vif_state_req {
    uint16_t aid; // +0
    bool active; // +2
    uint8_t inst_nbr; // +3
}; // :450:8

struct mm_add_if_cfm {
    uint8_t status; // +0
    uint8_t inst_nbr; // +1
}; // :461:8

struct mm_remove_if_req {
    uint8_t inst_nbr; // +0
}; // :470:8

struct mm_version_cfm {
    uint32_t version_lmac; // +0
    uint32_t version_machw_1; // +4
    uint32_t version_machw_2; // +8
    uint32_t version_phy_1; // +12
    uint32_t version_phy_2; // +16
    uint32_t features; // +20
}; // :477:8

struct mm_sta_add_req {
    uint32_t ampdu_size_max_vht; // +0
    uint32_t paid_gid; // +4
    uint16_t ampdu_size_max_ht; // +8
    struct mac_addr mac_addr; // +10
    uint8_t ampdu_spacing_min; // +16
    uint8_t inst_nbr; // +17
    bool tdls_sta; // +18
    int8_t rssi; // +19
    uint32_t tsflo; // +20
    uint32_t tsfhi; // +24
    uint8_t data_rate; // +28
}; // :494:8

struct mm_sta_add_cfm {
    uint8_t status; // +0
    uint8_t sta_idx; // +1
    uint8_t hw_sta_idx; // +2
}; // :517:8

struct mm_sta_del_req {
    uint8_t sta_idx; // +0
}; // :528:8

struct mm_set_idle_req {
    uint8_t hw_idle; // +0
}; // :542:8

struct mm_key_add_req {
    uint8_t key_idx; // +0
    uint8_t sta_idx; // +1
    struct mac_sec_key key; // +4
    uint8_t cipher_suite; // +40
    uint8_t inst_nbr; // +41
    uint8_t spp; // +42
    bool pairwise; // +43
}; // :549:8

struct mm_key_add_cfm {
    uint8_t status; // +0
    uint8_t hw_key_idx; // +1
}; // :568:8

struct mm_key_del_req {
    uint8_t hw_key_idx; // +0
}; // :577:8

struct mm_ba_add_req {
    uint8_t type; // +0
    uint8_t sta_idx; // +1
    uint8_t tid; // +2
    uint8_t bufsz; // +3
    uint16_t ssn; // +4
}; // :584:8

struct mm_ba_add_cfm {
    uint8_t sta_idx; // +0
    uint8_t tid; // +1
    uint8_t status; // +2
}; // :599:8

struct mm_connection_loss_ind {
    uint8_t inst_nbr; // +0
}; // :654:8

struct mm_set_ps_mode_req {
    uint8_t new_state; // +0
}; // :669:8

struct mm_chan_ctxt_add_req {
    uint8_t band; // +0
    uint8_t type; // +1
    uint16_t prim20_freq; // +2
    uint16_t center1_freq; // +4
    uint16_t center2_freq; // +6
    int8_t tx_power; // +8
}; // :682:8

struct mm_chan_ctxt_update_req {
    uint8_t chan_index; // +0
    uint8_t band; // +1
    uint8_t type; // +2
    uint16_t prim20_freq; // +4
    uint16_t center1_freq; // +6
    uint16_t center2_freq; // +8
    int8_t tx_power; // +10
}; // :735:8

struct mm_bcn_change_req {
    uint32_t bcn_ptr; // +0
    uint16_t bcn_len; // +4
    uint16_t tim_oft; // +6
    uint8_t tim_len; // +8
    uint8_t inst_nbr; // +9
    uint8_t csa_oft[2]; // +10
    uint8_t bcn_buf[0]; // +12
}; // :768:8

struct mm_tim_update_req {
    uint16_t aid; // +0
    uint8_t tx_avail; // +2
    uint8_t inst_nbr; // +3
}; // :787:8

struct mm_ps_change_ind {
    uint8_t sta_idx; // +0
    uint8_t ps_state; // +1
}; // :798:8

struct mm_traffic_req_ind {
    uint8_t sta_idx; // +0
    uint8_t pkt_cnt; // +1
    bool uapsd; // +2
}; // :816:8

struct mm_remain_on_channel_req {
    uint8_t op_code; // +0
    uint8_t vif_index; // +1
    uint8_t band; // +2
    uint8_t type; // +3
    uint16_t prim20_freq; // +4
    uint16_t center1_freq; // +6
    uint16_t center2_freq; // +8
    uint32_t duration_ms; // +12
    int8_t tx_power; // +16
}; // :828:8

struct mm_remain_on_channel_cfm {
    uint8_t op_code; // +0
    uint8_t status; // +1
    uint8_t chan_ctxt_index; // +2
}; // :851:8

struct mm_set_ps_options_req {
    uint8_t vif_index; // +0
    uint16_t listen_interval; // +2
    bool dont_listen_bc_mc; // +4
}; // :871:8

struct mm_csa_counter_ind {
    uint8_t vif_index; // +0
    uint8_t csa_count; // +1
}; // :882:8

struct mm_cfg_rssi_req {
    uint8_t vif_index; // +0
    int8_t rssi_thold; // +1
    uint8_t rssi_hyst; // +2
}; // :919:8

struct mm_rssi_status_ind {
    uint8_t vif_index; // +0
    bool rssi_status; // +1
    int8_t rssi; // +2
}; // :930:8

struct mm_csa_finish_ind {
    uint8_t vif_index; // +0
    uint8_t status; // +1
    uint8_t chan_idx; // +2
}; // :941:8

struct mm_csa_traffic_ind {
    uint8_t vif_index; // +0
    bool enable; // +1
}; // :952:8

typedef void (*cb_idle_func_ptr)(void); // :961:16

struct mm_force_idle_req {
    cb_idle_func_ptr cb; // +0
}; // :964:8

const struct ke_state_handler mm_state_handler[4]; // :1052:38
const struct ke_state_handler mm_default_handler; // :1054:38
ke_state_t mm_state[1]; // :1056:19

/* ======== components/bl602/bl602_wifi/ip/lmac/src/mm/mm_timer.c ======== */

struct mm_timer_env_tag mm_timer_env; // :46:25

void mm_timer_init(void); // :52:6
static void mm_timer_hw_set(struct mm_timer_tag *timer); // :66:13
static bool cmp_abs_time(const struct co_list_hdr *timerA, const struct co_list_hdr *timerB); // :104:12
void mm_timer_set(struct mm_timer_tag *timer, uint32_t value); // :112:6
void mm_timer_clear(struct mm_timer_tag *timer); // :159:6
void mm_timer_schedule(int dummy); // :187:6

/* ======== components/bl602/bl602_wifi/ip/lmac/src/mm/mm_timer.h ======== */

typedef void (*cb_timer_func_ptr)(void *); // :44:16

struct mm_timer_tag {
    struct co_list_hdr list_hdr; // +0
    cb_timer_func_ptr cb; // +4
    void *env; // +8
    uint32_t time; // +12
}; // :47:8

struct mm_timer_env_tag {
    struct co_list prog; // +0
}; // :60:8

struct mm_timer_env_tag mm_timer_env; // :70:32

/* ======== components/bl602/bl602_wifi/ip/lmac/src/ps/ps.c ======== */

struct ps_env_tag ps_env; // :54:19

static uint8_t ps_send_pspoll(struct vif_info_tag *vif_entry); // :71:16
static void ps_enable_cfm(void *env, uint32_t status); // :194:13
static void ps_disable_cfm(void *env, uint32_t status); // :274:13
static void ps_dpsm_update(bool pause); // :339:13
static void ps_uapsd_timer_handle(void *env); // :425:13
void ps_init(void); // :474:6
void ps_set_mode(uint8_t mode, ke_task_id_t taskid); // :485:6
void ps_polling_frame(struct vif_info_tag *vif_entry); // :636:6
void ps_check_beacon(uint32_t tim, uint16_t len, struct vif_info_tag *vif_entry); // :643:6
void ps_check_frame(uint8_t *frame, uint32_t statinfo, struct vif_info_tag *vif_entry); // :716:6
void ps_check_tx_frame(uint8_t staid, uint8_t tid); // :844:6
void ps_uapsd_set(struct vif_info_tag *vif_entry, uint8_t hw_queue, bool uapsd); // :898:6
void ps_traffic_status_update(uint8_t vif_index, uint8_t new_status); // :923:6

/* ======== components/bl602/bl602_wifi/ip/lmac/src/ps/ps.h ======== */

enum ps_dpsm_state_bit_pos {
    PS_DPSM_STATE_ON = 0,
    PS_DPSM_STATE_PAUSING = 1,
    PS_DPSM_STATE_RESUMING = 2,
    PS_DPSM_STATE_PAUSE = 3,
    PS_DPSM_STATE_SET_MODE_REQ = 4,
}; // :134:6

struct ps_env_tag {
    bool ps_on; // +0
    ke_task_id_t taskid; // +2
    uint32_t prevent_sleep; // +4
    uint8_t cfm_cnt; // +8
    struct mm_timer_tag uapsd_timer; // +12
    bool uapsd_tmr_on; // +28
    bool uapsd_on; // +29
    uint32_t uapsd_timeout; // +32
    uint8_t dpsm_state; // +36
    uint8_t next_mode; // +37
}; // :158:8

struct ps_env_tag ps_env; // :192:26

/* ======== components/bl602/bl602_wifi/ip/lmac/src/rd/rd.h ======== */

struct rd_env_tag {
    struct co_list event_free_list; // +0
}; // :44:8

/* ======== components/bl602/bl602_wifi/ip/lmac/src/rx/rx_swdesc.c ======== */

struct rx_swdesc rx_swdesc_tab[13]; // :40:18

void rx_swdesc_init(void); // :46:6

/* ======== components/bl602/bl602_wifi/ip/lmac/src/rx/rx_swdesc.h ======== */

struct rx_swdesc {
    struct co_list_hdr list_hdr; // +0
    struct rx_dmadesc *dma_hdrdesc; // +4
    struct rx_payloaddesc *pd; // +8
    struct rx_pbd *last_pbd; // +12
    struct rx_pbd *spare_pbd; // +16
    uint32_t host_id; // +20
    uint32_t frame_len; // +24
    uint8_t status; // +28
    uint8_t pbd_count; // +29
    uint8_t use_in_tcpip; // +30
}; // :52:8

struct rx_swdesc rx_swdesc_tab[13]; // :74:25

/* ======== components/bl602/bl602_wifi/ip/lmac/src/rx/rxl/rxl_cntrl.c ======== */

struct rxl_cntrl_env_tag rxl_cntrl_env; // :121:26

void rxl_dma_int_handler(void); // :860:6
void rxl_dma_evt(int dummy); // :868:6
void rxl_frame_release(struct rx_swdesc *swdesc); // :875:6
void rxl_mpdu_free(struct rx_swdesc *swdesc); // :890:6
void bl60x_firmwre_mpdu_free(void *swdesc_ptr); // :933:6
void rxl_current_desc_get(struct rx_hd **rhd, struct rx_pbd **rbd); // :943:6
void rxl_reset(void); // :952:6

/* ======== components/bl602/bl602_wifi/ip/lmac/src/rx/rxl/rxl_cntrl.h ======== */

struct rxl_cntrl_env_tag {
    struct co_list ready; // +0
    struct rx_dmadesc *first; // +8
    struct rx_dmadesc *last; // +12
    struct rx_dmadesc *free; // +16
    uint32_t packet_stack_cnt; // +20
}; // :90:8

struct rxl_cntrl_env_tag rxl_cntrl_env; // :108:33

/* ======== components/bl602/bl602_wifi/ip/lmac/src/rx/rxl/rxl_hwdesc.c ======== */

struct rxl_hwdesc_env_tag rx_hwdesc_env; // :36:27

void rxl_hwdesc_dump(void); // :42:6
void rxl_hwdesc_init(int init); // :93:6
void rxl_hd_append(struct rx_dmadesc *desc); // :244:6
void rxl_pd_append(struct rx_pbd *first, struct rx_pbd *last, struct rx_pbd *spare); // :293:6

/* ======== components/bl602/bl602_wifi/ip/lmac/src/rx/rxl/rxl_hwdesc.h ======== */

struct rxl_hwdesc_env_tag {
    struct rx_pbd *last; // +0
    struct rx_pbd *free; // +4
}; // :45:8

struct rxl_hwdesc_env_tag rx_hwdesc_env; // :58:34

/* ======== components/bl602/bl602_wifi/ip/lmac/src/scan/scan.c ======== */

struct scan_env_tag scan_env; // :43:21

const struct scan_chan_tag *scan_get_chan(void); // :241:29

/* ======== components/bl602/bl602_wifi/ip/lmac/src/scan/scan.h ======== */

struct scan_chan_tag {
    uint16_t freq; // +0
    uint8_t band; // +2
    uint8_t flags; // +3
    int8_t tx_power; // +4
}; // :74:8

struct scan_probe_req_ie_tag {
    struct dma_desc dma_desc; // +0
    struct tx_pbd pbd; // +16
    uint32_t buf[50]; // +36
}; // :87:8

struct scan_env_tag {
    struct hal_dma_desc_tag dma_desc; // +0
    const struct scan_start_req *param; // +16
    uint32_t ds_ie; // +20
    ke_task_id_t req_id; // +24
    uint8_t chan_idx; // +26
    bool abort; // +27
}; // :98:8

struct scan_env_tag scan_env; // :119:28
struct scan_probe_req_ie_tag scan_probe_req_ie; // :122:37

/* ======== components/bl602/bl602_wifi/ip/lmac/src/scan/scan_shared.c ======== */

struct scan_probe_req_ie_tag scan_probe_req_ie; // :31:30

/* ======== components/bl602/bl602_wifi/ip/lmac/src/scan/scan_task.c ======== */

static int scan_start_req_handler(const ke_msg_id_t msgid, const struct scan_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :55:1
static int scan_cancel_req_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :113:1
static int mm_scan_channel_start_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :149:1
static int mm_scan_channel_end_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :190:1

const struct ke_msg_handler scan_default_state[4]; // :242:29
const struct ke_state_handler scan_default_handler; // :255:31
ke_state_t scan_state[1]; // :259:12

/* ======== components/bl602/bl602_wifi/ip/lmac/src/scan/scan_task.h ======== */

enum scan_state_tag {
    SCAN_IDLE = 0,
    SCAN_WAIT_IE_DWNLD = 1,
    SCAN_WAIT_CHANNEL = 2,
    SCAN_WAIT_BEACON_PROBE_RSP = 3,
    SCAN_STATE_MAX = 4,
}; // :47:6

enum scan_msg_tag {
    SCAN_START_REQ = 2048,
    SCAN_START_CFM = 2049,
    SCAN_DONE_IND = 2050,
    SCAN_CANCEL_REQ = 2051,
    SCAN_CANCEL_CFM = 2052,
    SCAN_TIMER = 2053,
    SCAN_MAX = 2054,
}; // :62:6

struct scan_start_req {
    struct scan_chan_tag chan[42]; // +0
    struct mac_ssid ssid[2]; // +252
    struct mac_addr bssid; // +320
    uint32_t add_ies; // +328
    uint16_t add_ie_len; // +332
    uint8_t vif_idx; // +334
    uint8_t chan_cnt; // +335
    uint8_t ssid_cnt; // +336
    bool no_cck; // +337
}; // :85:8

struct scan_start_cfm {
    uint8_t status; // +0
}; // :109:8

struct scan_cancel_cfm {
    uint8_t status; // +0
}; // :116:8

const struct ke_state_handler scan_default_handler; // :126:38
ke_state_t scan_state[1]; // :128:19

/* ======== components/bl602/bl602_wifi/ip/lmac/src/sta/sta_mgmt.c ======== */

struct sta_info_env_tag sta_info_env; // :54:25
struct sta_info_tag sta_info_tab[12]; // :55:21

static void sta_mgmt_entry_init(struct sta_info_tag *sta_entry); // :68:13
void sta_mgmt_init(void); // :97:6
uint8_t sta_mgmt_register(const struct mm_sta_add_req *param, uint8_t *sta_idx); // :149:9
void sta_mgmt_unregister(uint8_t sta_idx); // :301:6
void sta_mgmt_add_key(const struct mm_key_add_req *param, uint8_t hw_key_idx); // :367:6
void sta_mgmt_del_key(struct sta_info_tag *sta); // :441:6
int sta_mgmt_send_postponed_frame(struct vif_info_tag *p_vif_entry, struct sta_info_tag *p_sta_entry, int limit); // :456:5

/* ======== components/bl602/bl602_wifi/ip/lmac/src/sta/sta_mgmt.h ======== */

enum sta_mgmt_pol_upd {
    STA_MGMT_POL_UPD_RATE = 0,
    STA_MGMT_POL_UPD_PROT = 1,
    STA_MGMT_POL_UPD_PPDU_TX = 2,
    STA_MGMT_POL_UPD_BW = 3,
    STA_MGMT_POL_UPD_TX_POWER = 4,
    STA_MGMT_POL_UPD_MAX = 5,
}; // :94:6

enum sta_ps_traffic {
    PS_TRAFFIC_HOST = 1,
    PS_TRAFFIC_INT = 2,
    PS_TRAFFIC = 3,
    UAPSD_TRAFFIC_HOST = 4,
    UAPSD_TRAFFIC_INT = 8,
    UAPSD_TRAFFIC = 12,
}; // :111:6

enum sta_ps_sp {
    NO_SERVICE_PERIOD = 0,
    PS_SERVICE_PERIOD = 1,
    UAPSD_SERVICE_PERIOD_INT = 2,
    UAPSD_SERVICE_PERIOD_HOST = 4,
    UAPSD_SERVICE_PERIOD = 6,
    ANY_SERVICE_PERIOD_INT = 3,
    BCN_SERVICE_PERIOD = 8,
}; // :129:6

typedef int sta_ps_sp_t; // :146:13

struct sta_mgmt_sec_info {
    struct key_info_tag key_info; // +0
    struct key_info_tag *pairwise_key; // +104
    struct key_info_tag **cur_key; // +108
}; // :170:8

struct sta_pol_tbl_cntl {
    struct txl_buffer_control *buf_ctrl; // +0
    struct rc_sta_stats *sta_stats; // +4
    uint32_t prot_cfg; // +8
    uint16_t ppdu_tx_cfg; // +12
    uint8_t upd_field; // +14
}; // :186:8

struct sta_mgmt_ba_info {
    uint32_t last_tx_time; // +0
    uint32_t last_ba_add_time; // +4
    uint8_t bam_idx_rx; // +8
    uint8_t bam_idx_tx; // +9
    int8_t credit_oft; // +10
}; // :214:8

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
    uint16_t seq_nbr[9]; // +248
    struct sta_pol_tbl_cntl pol_tbl; // +268
    struct sta_mgmt_ba_info ba_info[9]; // +284
    uint16_t rx_nqos_last_seqcntl; // +392
    uint16_t rx_qos_last_seqcntl[9]; // +394
    struct co_list tx_desc_post; // +412
    void *suppData; // +420
    uint32_t time_last_seen; // +424
}; // :287:8

struct sta_info_env_tag {
    struct co_list free_sta_list; // +0
}; // :392:8

struct sta_info_env_tag sta_info_env; // :410:32
struct sta_info_tag sta_info_tab[12]; // :413:28

/* ======== components/bl602/bl602_wifi/ip/lmac/src/td/td.c ======== */

struct td_env_tag td_env[2]; // :85:19

static void td_timer_end(void *env); // :133:13
void td_init(void); // :255:6
void td_reset(uint8_t vif_index); // :276:6
void td_start(uint8_t vif_index); // :315:6
void td_pck_ind(uint8_t vif_index, uint8_t sta_index, bool rx); // :336:6
void td_pck_ps_ind(uint8_t vif_index, bool rx); // :389:6

/* ======== components/bl602/bl602_wifi/ip/lmac/src/td/td.h ======== */

enum td_status_bit {
    TD_STATUS_TX = 0,
    TD_STATUS_RX = 1,
    TD_STATUS_TX_PS = 2,
    TD_STATUS_RX_PS = 3,
}; // :49:6

struct td_env_tag {
    struct mm_timer_tag td_timer; // +0
    uint32_t pck_cnt_tx; // +16
    uint32_t pck_cnt_rx; // +20
    uint32_t pck_cnt_tx_ps; // +24
    uint32_t pck_cnt_rx_ps; // +28
    uint8_t vif_index; // +32
    uint8_t status; // +33
    bool is_on; // +34
    bool has_active_chan; // +35
}; // :73:8

struct td_env_tag td_env[2]; // :110:26

/* ======== components/bl602/bl602_wifi/ip/lmac/src/tpc/tpc.c ======== */

void bl_tpc_update_power_table(int8_t *power_table); // :23:6
void bl_tpc_power_table_get(int8_t *power_table_config); // :38:6
void bl_tpc_update_power_table_rate(int8_t *power_table); // :49:6
void bl_tpc_update_power_table_channel_offset(int8_t *power_table); // :54:6
void bl_tpc_update_power_rate_11b(int8_t *power_rate_table); // :66:6
void bl_tpc_update_power_rate_11g(int8_t *power_rate_table); // :71:6
void bl_tpc_update_power_rate_11n(int8_t *power_rate_table); // :76:6
void tpc_update_tx_power(int8_t pwr); // :82:6
uint8_t tpc_get_vif_tx_power(struct vif_info_tag *vif); // :110:9
void tpc_update_vif_tx_power(struct vif_info_tag *vif, int8_t *pwr, uint8_t *idx); // :115:6
void tpc_update_frame_tx_power(struct vif_info_tag *vif, struct txl_frame_desc_tag *frame); // :175:6
uint8_t tpc_get_vif_tx_power_vs_rate(uint32_t rate_config); // :195:9

/* ======== components/bl602/bl602_wifi/ip/lmac/src/tx/tx_swdesc.h ======== */

struct hostdesc {
    uint32_t pbuf_addr; // +0
    uint32_t packet_addr; // +4
    uint16_t packet_len; // +8
    uint32_t status_addr; // +12
    struct mac_addr eth_dest_addr; // +16
    struct mac_addr eth_src_addr; // +22
    uint16_t ethertype; // +28
    uint16_t pn[4]; // +30
    uint16_t sn; // +38
    uint16_t timestamp; // +40
    uint8_t tid; // +42
    uint8_t vif_idx; // +43
    uint8_t staid; // +44
    uint16_t flags; // +46
    uint32_t pbuf_chained_ptr[4]; // +48
    uint32_t pbuf_chained_len[4]; // +64
}; // :59:8

struct umacdesc {
    struct txl_buffer_control *buf_control; // +0
    uint32_t buff_offset; // +4
    uint16_t payl_len; // +8
    uint8_t head_len; // +10
    uint8_t hdr_len_802_2; // +11
    uint8_t tail_len; // +12
}; // :95:8

struct lmacdesc {
    struct tx_agg_desc *agg_desc; // +0
    struct txl_buffer_tag *buffer; // +4
    struct tx_hw_desc *hw_desc; // +8
}; // :112:8

struct txdesc {
    struct co_list_hdr list_hdr; // +0
    struct hostdesc host; // +4
    struct umacdesc umac; // +84
    struct lmacdesc lmac; // +100
    struct tx_hw_desc hw_desc; // +112
    struct tx_cfm_tag hw_cfm; // +184
    uint32_t buf[128]; // +204
}; // :123:8

struct txdesc_host {
    uint32_t ready; // +0
    struct hostdesc host; // +4
    uint32_t pad_txdesc[55]; // +84
    uint32_t pad_buf[128]; // +304
}; // :143:8

/* ======== components/bl602/bl602_wifi/ip/lmac/src/tx/txl/txl_buffer.c ======== */

struct txl_buffer_env_tag txl_buffer_env; // :42:27

void txl_buffer_reset(void); // :140:6
struct txl_buffer_tag *txl_buffer_alloc(struct txdesc *txdesc, uint8_t access_category, uint8_t user_idx); // :146:24
void txl_buffer_update_thd(struct txdesc *txdesc); // :183:6

/* ======== components/bl602/bl602_wifi/ip/lmac/src/tx/txl/txl_buffer.h ======== */

struct txl_buffer_hw_desc_tag {
    struct dma_desc dma_desc; // +0
    struct tx_pbd pbd; // +16
}; // :128:8

struct txl_buffer_list_tag {
    struct txl_buffer_tag *first; // +0
    struct txl_buffer_tag *last; // +4
}; // :137:8

struct txl_buffer_idx_tag {
    uint32_t used_area; // +0
    uint32_t free; // +4
    uint32_t free_size; // +8
    uint32_t last; // +12
    uint32_t next_needed; // +16
    uint32_t buf_size; // +20
    uint32_t *pool; // +24
    struct txl_buffer_hw_desc_tag *desc; // +28
    uint8_t count; // +32
}; // :146:8

struct txl_buffer_control {
    union {
        struct tx_policy_tbl policy_tbl;
        struct tx_compressed_policy_tbl comp_pol_tbl;
    }; // +0
    uint32_t mac_control_info; // +52
    uint32_t phy_control_info; // +56
}; // :171:8

struct txl_buffer_env_tag {
    struct txl_buffer_idx_tag buf_idx[5]; // +0
    struct txl_buffer_list_tag list[5]; // +180
}; // :198:8

struct txl_buffer_tag {
    uint32_t length; // +0
    uint32_t lenheader; // +4
    uint32_t lenpad; // +8
    uint32_t flags; // +12
    struct txl_buffer_tag *next; // +16
    struct txdesc *txdesc; // +20
    struct dma_desc dma_desc[1]; // +24
    struct dma_desc dma_desc_pat; // +40
    struct tx_pbd tbd; // +56
    struct tx_pbd tbd_body[8]; // +76
    uint8_t user_idx; // +236
    struct txl_buffer_control buffer_control; // +240
    struct tx_pbd tkip_mic_icv_pbd; // +300
    uint8_t tkip_mic_icv[12]; // +320
    uint32_t payload[0]; // +332
}; // :207:8

struct txl_buffer_env_tag txl_buffer_env; // :247:34
struct txl_buffer_control txl_buffer_control_desc[10]; // :251:34
struct txl_buffer_control txl_buffer_control_desc_bcmc[2]; // :253:34

/* ======== components/bl602/bl602_wifi/ip/lmac/src/tx/txl/txl_buffer_shared.c ======== */

struct txl_buffer_control txl_buffer_control_desc[10]; // :30:27
struct txl_buffer_control txl_buffer_control_desc_bcmc[2]; // :31:27

/* ======== components/bl602/bl602_wifi/ip/lmac/src/tx/txl/txl_cfm.c ======== */

struct txl_cfm_env_tag txl_cfm_env; // :59:24
const uint32_t txl_cfm_evt_bit[5]; // :61:16

void txl_cfm_dma_int_handler_backup(void); // :342:6
void txl_cfm_evt(int access_category); // :349:6
void txl_cfm_flush_desc(uint8_t access_category, struct txdesc *txdesc, uint32_t status); // :408:6
void txl_cfm_flush(uint8_t access_category, struct co_list *list, uint32_t status); // :486:6
void txl_cfm_dma_int_handler(void); // :576:6
void txl_cfm_dump(void); // :597:6

/* ======== components/bl602/bl602_wifi/ip/lmac/src/tx/txl/txl_cfm.h ======== */

const uint32_t txl_cfm_evt_bit[5]; // :59:23

struct txl_cfm_env_tag {
    struct co_list cfmlist[5]; // +0
}; // :62:8

struct txl_cfm_env_tag txl_cfm_env; // :73:31

/* ======== components/bl602/bl602_wifi/ip/lmac/src/tx/txl/txl_cntrl.c ======== */

const uint16_t VHT_NDBPS[4]; // :155:16
const uint32_t TX_TIMEOUT[5]; // :164:16
struct txl_cntrl_env_tag txl_cntrl_env; // :179:26

void txl_cntrl_inc_pck_cnt(void); // :2053:6
bool txl_cntrl_push_int(struct txdesc *txdesc, uint8_t access_category); // :2063:5
bool txl_cntrl_push_int_force(struct txdesc *txdesc, uint8_t access_category); // :2134:5
void txl_payload_handle(void); // :2169:6
void txl_payload_handle_backup(void); // :2193:6
void txl_transmit_trigger(void); // :2288:6
void txl_current_desc_get(int access_category, struct tx_hd **thd); // :2335:6
void txl_reset(void); // :2384:6
void txl_cntrl_env_dump(void); // :2501:6

/* ======== components/bl602/bl602_wifi/ip/lmac/src/tx/txl/txl_cntrl.h ======== */

struct txl_list {
    struct tx_hd *last_frame_exch; // +0
    struct co_list transmitting; // +4
    uint16_t bridgedmacnt; // +12
    uint8_t chk_state; // +14
}; // :200:8

struct txl_cntrl_env_tag {
    struct txl_list txlist[5]; // +0
    uint32_t pck_cnt; // +80
    uint16_t seqnbr; // +84
    bool reset; // +86
}; // :238:8

struct txl_cntrl_env_tag txl_cntrl_env; // :267:33

/* ======== components/bl602/bl602_wifi/ip/lmac/src/tx/txl/txl_frame.c ======== */

static struct txl_frame_desc_tag txl_frame_desc[4]; // :55:34
struct txl_frame_env_tag txl_frame_env; // :58:26

void txl_frame_init_desc(struct txl_frame_desc_tag *frame, struct txl_buffer_tag *buffer, struct tx_hw_desc *hwdesc, struct txl_buffer_control *bufctrl); // :64:6
void txl_frame_init(bool reset); // :96:6

static uint32_t tx_count; // :249:17
static uint32_t rx_count; // :250:17
uint8_t mac_hw_reset; // :251:9

struct txl_frame_desc_tag *txl_frame_get(int type, int len); // :252:28
bool txl_frame_push(struct txl_frame_desc_tag *frame, uint8_t ac); // :379:5
bool txl_frame_push_force(struct txl_frame_desc_tag *frame, uint8_t ac); // :422:5
void txl_frame_cfm(struct txdesc *txdesc); // :448:6
void txl_frame_release(struct txdesc *txdesc, bool postponed); // :457:6
void txl_frame_evt(int dummy); // :480:6
uint8_t txl_frame_send_null_frame(uint8_t sta_idx, cfm_func_ptr cfm, void *env); // :539:9
uint8_t txl_frame_send_qosnull_frame(uint8_t sta_idx, uint16_t qos, cfm_func_ptr cfm, void *env); // :608:9
uint8_t txl_frame_send_eapol_frame(uint8_t sta_idx, cfm_func_ptr cfm, void *cfm_env, uint8_t *pBuf, uint32_t pBuf_len); // :1340:9
void txl_frame_dump(void); // :1495:6

/* ======== components/bl602/bl602_wifi/ip/lmac/src/tx/txl/txl_frame.h ======== */

typedef void (*cfm_func_ptr)(void *, uint32_t); // :69:16

struct txl_frame_cfm_tag {
    cfm_func_ptr cfm_func; // +0
    void *env; // +4
}; // :72:8

struct txl_frame_desc_tag {
    struct txdesc txdesc; // +0
    struct txl_frame_cfm_tag cfm; // +716
    uint8_t type; // +724
    bool postponed; // +725
    bool keep_desc; // +726
}; // :81:8

struct txl_frame_env_tag {
    struct co_list desc_free; // +0
    struct co_list desc_done; // +8
}; // :97:8

struct txl_frame_env_tag txl_frame_env; // :111:33

/* ======== components/bl602/bl602_wifi/ip/lmac/src/tx/txl/txl_frame_shared.c ======== */

uint32_t txl_frame_pool[4]; // :40:10
uint8_t txl_tim_ie_pool[2]; // :43:9
uint8_t txl_tim_bitmap_pool[2]; // :44:9
struct tx_pbd txl_tim_desc[2]; // :45:15
uint32_t txl_bcn_pool[2]; // :46:10
struct tx_hw_desc txl_bcn_hwdesc_pool[2]; // :47:19
struct tx_cfm_tag txl_bcn_hwdesc_cfms[2]; // :48:19
struct tx_pbd txl_bcn_end_desc[2]; // :49:15
struct txl_buffer_control txl_bcn_buf_ctrl[2]; // :51:27
struct tx_hw_desc txl_frame_hwdesc_pool[4]; // :68:19
struct tx_cfm_tag txl_frame_hwdesc_cfms[4]; // :69:19
struct txl_buffer_control txl_buffer_control_24G; // :73:27
struct txl_buffer_control txl_buffer_control_5G; // :75:27
struct txl_buffer_control txl_frame_buf_ctrl[4]; // :96:27

/* ======== components/bl602/bl602_wifi/ip/lmac/src/tx/txl/txl_hwdesc.c ======== */

void txl_hwdesc_reset(void); // :138:6

/* ======== components/bl602/bl602_wifi/ip/lmac/src/vif/vif_mgmt.c ======== */

struct vif_mgmt_env_tag vif_mgmt_env; // :60:25
struct vif_info_tag vif_info_tab[2]; // :61:21

static void vif_mgmt_bcn_to_evt(void *env); // :76:13
void vif_mgmt_init(void); // :121:6
void vif_mgmt_reset(void); // :144:6
uint8_t vif_mgmt_register(const struct mac_addr *mac_addr, uint8_t vif_type, bool p2p, uint8_t *vif_idx); // :158:9
void vif_mgmt_unregister(uint8_t vif_idx); // :388:6
void vif_mgmt_add_key(const struct mm_key_add_req *param, uint8_t hw_key_idx); // :486:6
void vif_mgmt_del_key(struct vif_info_tag *vif, uint8_t keyid); // :542:6
void vif_mgmt_send_postponed_frame(struct vif_info_tag *p_vif_entry); // :583:6
void vif_mgmt_bcn_to_prog(struct vif_info_tag *p_vif_entry); // :622:6
void vif_mgmt_bcn_recv(struct vif_info_tag *p_vif_entry); // :627:6
void vif_mgmt_set_ap_bcn_int(struct vif_info_tag *p_vif_entry, uint16_t bcn_int); // :660:6
void vif_mgmt_switch_channel(struct vif_info_tag *p_vif_entry); // :728:6
struct vif_info_tag *vif_mgmt_get_first_ap_inf(void); // :803:23

/* ======== components/bl602/bl602_wifi/ip/lmac/src/vif/vif_mgmt.h ======== */

enum VIF_AP_BCMC_STATUS {
    VIF_AP_BCMC_BUFFERED = 1,
    VIF_AP_BCMC_MOREDATA = 2,
}; // :83:6

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
}; // :93:8

struct vif_mgmt_env_tag {
    struct co_list free_list; // +0
    struct co_list used_list; // +8
    uint8_t vif_sta_cnt; // +16
    uint8_t vif_ap_cnt; // +17
    uint8_t low_bcn_int_idx; // +18
}; // :314:8

struct vif_mgmt_env_tag vif_mgmt_env; // :350:32
struct vif_info_tag vif_info_tab[2]; // :353:28

/* ======== components/bl602/bl602_wifi/ip/umac/src/apm/apm.c ======== */

struct apm apm_env; // :41:12

void apm_init(void); // :62:6
void apm_start_cfm(uint8_t status); // :75:6
void apm_set_bss_param(void); // :138:6
void apm_send_next_bss_param(void); // :186:6
void apm_bcn_set(void); // :197:6
void apm_stop(struct vif_info_tag *vif); // :227:6
bool apm_tx_int_ps_check(struct txdesc *txdesc); // :265:5
void apm_tx_int_ps_postpone(struct txdesc *txdesc, struct sta_info_tag *sta); // :283:6
struct txdesc *apm_tx_int_ps_get_postpone(struct vif_info_tag *vif, struct sta_info_tag *sta, int *stop); // :320:16
void apm_tx_int_ps_clear(struct vif_info_tag *vif, uint8_t sta_idx); // :429:6
static int _aid_list_delete(uint8_t *mac); // :457:12
static void apm_sta_delete(uint8_t sta_idx, uint8_t *mac); // :522:13
void apm_sta_fw_delete(uint8_t sta_idx); // :549:6
void apm_sta_add(uint8_t sta_idx); // :555:6
void apm_tx_cfm_handler(void *env, uint32_t status); // :576:6
void apm_send_mlme(struct vif_info_tag *vif, uint16_t fctl, const struct mac_addr *ra, cfm_func_ptr cfm_func, void *env, uint16_t status_code); // :599:6
bool apm_embedded_enabled(struct vif_info_tag *vif); // :671:5
void apm_probe_req_handler(const struct rxu_mgt_ind *param); // :679:6
void apm_auth_handler(const struct rxu_mgt_ind *param); // :744:6
void apm_assoc_req_handler(const struct rxu_mgt_ind *param, bool is_reassoc); // :768:6
void apm_deauth_handler(const struct rxu_mgt_ind *param); // :991:6
void apm_disassoc_handler(const struct rxu_mgt_ind *param); // :1002:6
void apm_beacon_handler(const struct rxu_mgt_ind *param); // :1017:6
void apm_sta_remove(uint8_t vif_idx, uint8_t sta_idx); // :1022:6

/* ======== components/bl602/bl602_wifi/ip/umac/src/apm/apm.h ======== */

struct apm {
    const struct apm_start_req *param; // +0
    struct co_list bss_config; // +4
    uint8_t aging_sta_idx; // +12
    uint8_t *bcn_buf; // +16
    bool apm_emb_enabled; // +20
    uint8_t hidden_ssid; // +21
    uint8_t assoc_sta_count; // +22
    uint8_t max_sta_supported; // +23
    struct {
        uint8_t mac[6]; // +0
        uint8_t used; // +6
    } aid_list[10]; // +24
}; // :32:8

struct apm apm_env; // :205:19

/* ======== components/bl602/bl602_wifi/ip/umac/src/apm/apm_task.c ======== */

static int apm_start_req_handler(const ke_msg_id_t msgid, struct apm_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :65:1
static int me_set_ps_disable_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :231:1
static int mm_bss_param_setting_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :266:1
static int me_set_active_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :296:1
static int mm_bcn_change_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :336:1
static int apm_stop_req_handler(const ke_msg_id_t msgid, const struct apm_stop_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :365:1
static int apm_conf_max_sta_req_handler(const ke_msg_id_t msgid, const struct apm_conf_max_sta_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :429:1
static int apm_start_cac_req_handler(const ke_msg_id_t msgid, const struct apm_start_cac_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :461:1
static int apm_stop_cac_req_handler(const ke_msg_id_t msgid, const struct apm_stop_cac_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :544:1
static int apm_sta_del_req_handler(const ke_msg_id_t msgid, const struct apm_sta_del_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :586:1
static int apm_sta_add_cfm_handler(const ke_msg_id_t msgid, const struct me_sta_add_cfm *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :636:1
static int rxu_mgt_ind_handler(const ke_msg_id_t msgid, const struct rxu_mgt_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :668:1
static int apm_sta_connect_timeout_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :709:1

const struct ke_msg_handler apm_default_state[16]; // :734:29
const struct ke_state_handler apm_default_handler; // :757:31
ke_state_t apm_state[1]; // :761:12

/* ======== components/bl602/bl602_wifi/ip/umac/src/apm/apm_task.h ======== */

enum apm_state_tag {
    APM_IDLE = 0,
    APM_BSS_PARAM_SETTING = 1,
    APM_BCN_SETTING = 2,
    APM_STATE_MAX = 3,
}; // :40:6

enum apm_msg_tag {
    APM_START_REQ = 7168,
    APM_START_CFM = 7169,
    APM_STOP_REQ = 7170,
    APM_STOP_CFM = 7171,
    APM_START_CAC_REQ = 7172,
    APM_START_CAC_CFM = 7173,
    APM_STOP_CAC_REQ = 7174,
    APM_STOP_CAC_CFM = 7175,
    APM_STA_ADD_IND = 7176,
    APM_STA_DEL_IND = 7177,
    APM_STA_CONNECT_TIMEOUT_IND = 7178,
    APM_STA_DEL_REQ = 7179,
    APM_STA_DEL_CFM = 7180,
    APM_CONF_MAX_STA_REQ = 7181,
    APM_CONF_MAX_STA_CFM = 7182,
}; // :53:6

struct apm_start_req {
    struct mac_rateset basic_rates; // +0
    struct scan_chan_tag chan; // +14
    uint32_t center_freq1; // +20
    uint32_t center_freq2; // +24
    uint8_t ch_width; // +28
    uint8_t hidden_ssid; // +29
    uint32_t bcn_addr; // +32
    uint16_t bcn_len; // +36
    uint16_t tim_oft; // +38
    uint16_t bcn_int; // +40
    uint32_t flags; // +44
    uint16_t ctrl_port_ethertype; // +48
    uint8_t tim_len; // +50
    uint8_t vif_idx; // +51
    bool apm_emb_enabled; // +52
    struct mac_rateset rate_set; // +53
    uint8_t beacon_period; // +66
    uint8_t qos_supported; // +67
    struct mac_ssid ssid; // +68
    uint8_t ap_sec_type; // +102
    uint8_t phrase[64]; // +103
    uint8_t bcn_buf[]; // +167
}; // :88:8

struct apm_start_cfm {
    uint8_t status; // +0
    uint8_t vif_idx; // +1
    uint8_t ch_idx; // +2
    uint8_t bcmc_idx; // +3
}; // :139:8

struct apm_stop_req {
    uint8_t vif_idx; // +0
}; // :152:8

struct apm_conf_max_sta_req {
    uint8_t max_sta_supported; // +0
}; // :159:8

struct apm_start_cac_req {
    struct scan_chan_tag chan; // +0
    uint32_t center_freq1; // +8
    uint32_t center_freq2; // +12
    uint8_t ch_width; // +16
    uint8_t vif_idx; // +17
}; // :166:8

struct apm_start_cac_cfm {
    uint8_t status; // +0
    uint8_t ch_idx; // +1
}; // :181:8

struct apm_stop_cac_req {
    uint8_t vif_idx; // +0
}; // :190:8

struct apm_sta_del_req {
    uint8_t vif_idx; // +0
    uint8_t sta_idx; // +1
}; // :196:8

struct apm_sta_del_cfm {
    uint8_t status; // +0
    uint8_t vif_idx; // +1
    uint8_t sta_idx; // +2
}; // :205:8

struct apm_sta_add_ind {
    uint32_t flags; // +0
    struct mac_addr sta_addr; // +4
    uint8_t vif_idx; // +10
    uint8_t sta_idx; // +11
    int8_t rssi; // +12
    uint32_t tsflo; // +16
    uint32_t tsfhi; // +20
    uint8_t data_rate; // +24
}; // :216:8

struct apm_sta_del_ind {
    uint8_t sta_idx; // +0
}; // :233:8

const struct ke_state_handler apm_default_handler; // :239:38
ke_state_t apm_state[1]; // :241:19

/* ======== components/bl602/bl602_wifi/ip/umac/src/bam/bam.c ======== */

struct bam_env_tag bam_env[1]; // :43:20

void bam_init(void); // :335:6
void bam_send_air_action_frame(uint8_t sta_idx, struct bam_env_tag *bam_env, uint8_t action, uint8_t dialog_token, uint16_t param, uint16_t status_code, void (*cfm_func)(void *, uint32_t)); // :493:6

/* ======== components/bl602/bl602_wifi/ip/umac/src/bam/bam.h ======== */

typedef unsigned int (*bam_baw_index_func_ptr)(struct bam_baw *, unsigned int); // :192:24

struct bam_baw {
    bam_baw_index_func_ptr idx_compute; // +0
    uint16_t fsn; // +4
    uint8_t states[64]; // +6
    uint8_t fsn_idx; // +70
    uint8_t buf_size; // +71
    uint8_t mask; // +72
}; // :272:8

struct bam_env_tag {
    uint32_t pkt_cnt; // +0
    uint32_t last_activity_time; // +4
    uint16_t ssn; // +8
    uint16_t ba_timeout; // +10
    uint8_t sta_idx; // +12
    uint8_t dev_type; // +13
    uint8_t ba_policy; // +14
    uint8_t buffer_size; // +15
    uint8_t tid; // +16
    uint8_t dialog_token; // +17
    uint8_t amsdu; // +18
    uint8_t delba_count; // +19
    struct bam_baw baw; // +20
}; // :288:8

struct bam_env_tag bam_env[1]; // :324:27

/* ======== components/bl602/bl602_wifi/ip/umac/src/bam/bam_task.c ======== */

static int rxu_mgt_ind_handler(const ke_msg_id_t msgid, const struct rxu_mgt_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :334:12

const struct ke_msg_handler bam_default_state[1]; // :603:29
const struct ke_state_handler bam_default_handler; // :618:31
ke_state_t bam_state[1]; // :621:12

/* ======== components/bl602/bl602_wifi/ip/umac/src/bam/bam_task.h ======== */

enum bam_state_tag {
    BAM_IDLE = 0,
    BAM_ACTIVE = 1,
    BAM_WAIT_RSP = 2,
    BAM_CHECK_ADMISSION = 3,
    BAM_RESET = 4,
    BAM_STATE_MAX = 5,
}; // :35:6

const struct ke_state_handler bam_default_handler; // :67:38
ke_state_t bam_state[1]; // :68:19

/* ======== components/bl602/bl602_wifi/ip/umac/src/hostapd/hostapd_api.c ======== */

int bl606fw_send_mlme(void *priv, const uint8_t *frm, size_t data_len, int noack, unsigned int freq, const uint16_t *csa_offs, size_t csa_offs_len); // :13:5

/* ======== components/bl602/bl602_wifi/ip/umac/src/hostapd/hostapd_task.c ======== */

static int hostapd_mgt_ind_handler(const ke_msg_id_t msgid, const struct rxu_mgt_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :24:12

static const struct ke_msg_handler hostapd_default_state[1]; // :42:36
const struct ke_state_handler hostapd_default_handler; // :47:31
ke_state_t hostapd_u_state[1]; // :50:12

/* ======== components/bl602/bl602_wifi/ip/umac/src/hostapd/hostapd_task.h ======== */

enum hostapd_state_tag {
    HOSTAPD_STATE_IDLE = 0,
    HOSTAPD_STATE_MAX = 1,
}; // :6:6

const struct ke_state_handler hostapd_default_handler; // :12:38
ke_state_t hostapd_u_state[1]; // :13:19

/* ======== components/bl602/bl602_wifi/ip/umac/src/llc/llc.h ======== */

struct llc_snap_short {
    uint16_t dsap_ssap; // +0
    uint16_t control_oui0; // +2
    uint16_t oui1_2; // +4
}; // :89:8

struct llc_snap {
    uint16_t dsap_ssap; // +0
    uint16_t control_oui0; // +2
    uint16_t oui1_2; // +4
    uint16_t proto_id; // +6
}; // :100:8

/* ======== components/bl602/bl602_wifi/ip/umac/src/me/me.c ======== */

struct me_env_tag me_env; // :44:19

void me_init(void); // :70:6
struct scan_chan_tag *me_freq_to_chan_ptr(uint8_t band, uint16_t freq); // :99:23

/* ======== components/bl602/bl602_wifi/ip/umac/src/me/me.h ======== */

struct me_env_tag {
    uint32_t active_vifs; // +0
    uint32_t ps_disable_vifs; // +4
    ke_task_id_t requester_id; // +8
    struct mac_htcapability ht_cap; // +12
    uint16_t tx_lft; // +44
    bool ht_supported; // +46
    struct me_chan_config_req chan; // +48
    uint8_t stbc_nss; // +302
    uint8_t phy_bw_max; // +303
    bool ps_on; // +304
}; // :66:8

struct mobility_domain {
    uint16_t mdid; // +0
    uint8_t ft_capability_policy; // +2
}; // :99:8

struct mac_bss_info {
    struct mac_htcapability ht_cap; // +0
    struct mac_addr bssid; // +32
    struct mac_ssid ssid; // +38
    uint16_t bsstype; // +72
    struct scan_chan_tag *chan; // +76
    uint16_t center_freq1; // +80
    uint16_t center_freq2; // +82
    uint16_t beacon_period; // +84
    uint16_t cap_info; // +86
    struct mac_rateset rate_set; // +88
    struct mac_edca_param_set edca_param; // +104
    int8_t rssi; // +124
    int8_t ppm_rel; // +125
    int8_t ppm_abs; // +126
    uint8_t high_11b_rate; // +127
    uint16_t prot_status; // +128
    uint8_t bw; // +130
    uint8_t phy_bw; // +131
    uint8_t power_constraint; // +132
    uint32_t valid_flags; // +136
    struct mobility_domain mde; // +140
    bool is_supplicant_enabled; // +144
    SecurityMode_t wpa_wpa2_wep; // +145
    Cipher_t wpa_mcstCipher; // +147
    Cipher_t wpa_ucstCipher; // +148
    Cipher_t rsn_mcstCipher; // +149
    Cipher_t rsn_ucstCipher; // +150
    bool is_pmf_required; // +151
    bool is_wpa2_prefered; // +152
    uint8_t rsn_wpa_ie[32]; // +153
    uint8_t rsn_wpa_ie_len; // +185
    uint16_t beacon_interval; // +186
    uint16_t aid_bitmap; // +188
    uint16_t max_listen_interval; // +190
    uint8_t sec_type; // +192
}; // :108:8

struct me_env_tag me_env; // :188:26

/* ======== components/bl602/bl602_wifi/ip/umac/src/me/me_mgmtframe.c ======== */

uint32_t me_add_ie_ssid(uint32_t *frame_addr, uint8_t ssid_len, uint8_t *p_ssid); // :119:10
uint32_t me_add_ie_supp_rates(uint32_t *frame_addr, struct mac_rateset *p_rateset); // :142:10
uint32_t me_add_ie_ext_supp_rates(uint32_t *frame_addr, struct mac_rateset *p_rateset); // :164:10
uint32_t me_add_ie_ds(uint32_t *frame_addr, uint8_t channel); // :187:10
uint32_t me_add_ie_erp(uint32_t *frame_addr, uint8_t erp_info); // :207:10
uint32_t me_add_ie_rsn(uint32_t *frame_addr, uint8_t enc_type); // :227:10
uint32_t me_add_ie_wpa(uint32_t *frame_addr, uint8_t enc_type); // :285:10
uint32_t me_add_ie_tim(uint32_t *frame_addr, uint8_t dtim_period); // :321:10
uint32_t me_add_ie_ht_capa(uint32_t *frame_addr); // :364:10
uint32_t me_add_ie_ht_oper(uint32_t *frame_addr, struct vif_info_tag *p_vif_entry); // :393:10
uint16_t me_build_authenticate(uint32_t frame, uint16_t algo_type, uint16_t seq_nbr, uint16_t status_code, uint32_t *challenge_array_ptr); // :554:10
uint16_t me_build_deauthenticate(uint32_t frame, uint16_t reason_code); // :602:10
uint16_t me_build_associate_req(uint32_t frame, struct mac_bss_info *bss, struct mac_addr *old_ap_addr_ptr, uint8_t vif_idx, uint32_t *ie_addr, uint16_t *ie_len, const struct sm_connect_req *con_par); // :613:10
uint16_t me_build_add_ba_req(uint32_t frame, struct bam_env_tag *bam_env); // :821:10
uint16_t me_build_add_ba_rsp(uint32_t frame, struct bam_env_tag *bam_env, uint16_t param, uint8_t dialog_token, uint16_t status_code); // :838:10
uint16_t me_build_del_ba(uint32_t frame, struct bam_env_tag *bam_env, uint16_t reason_code); // :864:10
void me_extract_rate_set(uint32_t buffer, uint16_t buflen, struct mac_rateset *mac_rate_set_ptr); // :879:6
void me_extract_power_constraint(uint32_t buffer, uint16_t buflen, struct mac_bss_info *bss); // :934:6
void me_extract_country_reg(uint32_t buffer, uint16_t buflen, struct mac_bss_info *bss); // :950:6
void me_extract_mobility_domain(uint32_t buffer, uint16_t buflen, struct mac_bss_info *bss); // :997:6
int me_extract_csa(uint32_t buffer, uint16_t buflen, uint8_t *mode, struct mm_chan_ctxt_add_req *chan_desc); // :1015:5
uint16_t me_build_beacon(uint32_t frame, uint8_t vif_idx, uint16_t *tim_oft, uint8_t *tim_len, uint8_t hidden_ssid); // :1121:10
uint16_t me_build_probe_rsp(uint32_t frame, uint8_t vif_idx); // :1219:10
uint16_t me_build_associate_rsp(uint32_t frame, uint8_t vif_idx, uint16_t status_code, struct me_sta_add_req *req); // :1294:10

/* ======== components/bl602/bl602_wifi/ip/umac/src/me/me_mic.c ======== */

static void michael_block(struct mic_calc *mic_calc_ptr, uint32_t block); // :156:13
void me_mic_init(struct mic_calc *mic_calc_ptr, uint32_t *mic_key_ptr, struct mac_addr *da, struct mac_addr *sa, uint8_t tid); // :340:6
void me_mic_calc(struct mic_calc *mic_calc_ptr, uint32_t start_ptr, uint32_t data_len); // :366:6
void me_mic_end(struct mic_calc *mic_calc_ptr); // :379:6

/* ======== components/bl602/bl602_wifi/ip/umac/src/me/me_mic.h ======== */

struct mic_calc {
    uint32_t mic_key_least; // +0
    uint32_t mic_key_most; // +4
    uint32_t last_m_i; // +8
    uint8_t last_m_i_len; // +12
}; // :41:8

/* ======== components/bl602/bl602_wifi/ip/umac/src/me/me_task.c ======== */

static int me_config_req_handler(const ke_msg_id_t msgid, const struct me_config_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :44:1
static int me_chan_config_req_handler(const ke_msg_id_t msgid, const struct me_chan_config_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :143:1
static int me_set_control_port_req_handler(const ke_msg_id_t msgid, const struct me_set_control_port_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :172:1
static int me_sta_add_req_handler(const ke_msg_id_t msgid, const struct me_sta_add_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :221:1
static int me_sta_del_req_handler(const ke_msg_id_t msgid, const struct me_sta_del_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :421:1
static int me_traffic_ind_req_handler(const ke_msg_id_t msgid, const struct me_traffic_ind_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :467:1
static int me_set_active_req_handler(const ke_msg_id_t msgid, const struct me_set_active_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :530:1
static int mm_set_idle_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :588:1
static int me_set_ps_disable_req_handler(const ke_msg_id_t msgid, const struct me_set_ps_disable_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :620:1
static int mm_set_ps_mode_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :693:1
static int me_rc_stats_req_handler(const ke_msg_id_t msgid, const struct me_rc_stats_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :725:1
static int me_rc_set_rate_req_handler(const ke_msg_id_t msgid, const struct me_rc_set_rate_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :789:1

const struct ke_msg_handler me_default_state[15]; // :825:29
const struct ke_state_handler me_default_handler; // :848:31
ke_state_t me_state[1]; // :852:12

/* ======== components/bl602/bl602_wifi/ip/umac/src/me/me_task.h ======== */

struct me_config_req {
    struct mac_htcapability ht_cap; // +0
    struct mac_vhtcapability vht_cap; // +32
    uint16_t tx_lft; // +44
    bool ht_supp; // +46
    bool vht_supp; // +47
    bool ps_on; // +48
}; // :96:8

struct me_chan_config_req {
    struct scan_chan_tag chan2G4[14]; // +0
    struct scan_chan_tag chan5G[28]; // +84
    uint8_t chan2G4_cnt; // +252
    uint8_t chan5G_cnt; // +253
}; // :113:8

struct me_set_control_port_req {
    uint8_t sta_idx; // +0
    bool control_port_open; // +1
}; // :126:8

struct me_tkip_mic_failure_ind {
    struct mac_addr addr; // +0
    uint64_t tsc; // +8
    bool ga; // +16
    uint8_t keyid; // +17
    uint8_t vif_idx; // +18
}; // :135:8

struct me_sta_add_req {
    struct mac_addr mac_addr; // +0
    struct mac_rateset rate_set; // +6
    struct mac_htcapability ht_cap; // +20
    struct mac_vhtcapability vht_cap; // +52
    uint32_t flags; // +64
    uint16_t aid; // +68
    uint8_t uapsd_queues; // +70
    uint8_t max_sp_len; // +71
    uint8_t opmode; // +72
    uint8_t vif_idx; // +73
    bool tdls_sta; // +74
    uint32_t tsflo; // +76
    uint32_t tsfhi; // +80
    int8_t rssi; // +84
    uint8_t data_rate; // +85
}; // :150:8

struct me_sta_add_cfm {
    uint8_t sta_idx; // +0
    uint8_t status; // +1
    uint8_t pm_state; // +2
}; // :182:8

struct me_sta_del_req {
    uint8_t sta_idx; // +0
    bool tdls_sta; // +1
}; // :193:8

struct me_set_active_req {
    bool active; // +0
    uint8_t vif_idx; // +1
}; // :213:8

struct me_set_ps_disable_req {
    bool ps_disable; // +0
    uint8_t vif_idx; // +1
}; // :222:8

struct me_traffic_ind_req {
    uint8_t sta_idx; // +0
    uint8_t tx_avail; // +1
    bool uapsd; // +2
}; // :231:8

struct me_rc_stats_req {
    uint8_t sta_idx; // +0
}; // :242:8

struct me_rc_stats_cfm {
    uint8_t sta_idx; // +0
    uint16_t no_samples; // +2
    uint16_t ampdu_len; // +4
    uint16_t ampdu_packets; // +6
    uint32_t avg_ampdu_len; // +8
    uint8_t sw_retry_step; // +12
    uint8_t sample_wait; // +13
    struct step retry[4]; // +16
    struct rc_rate_stats rate_stats[10]; // +48
    uint32_t tp[10]; // +168
}; // :249:8

struct me_rc_set_rate_req {
    uint8_t sta_idx; // +0
    uint16_t fixed_rate_cfg; // +2
}; // :274:8

const struct ke_state_handler me_default_handler; // :282:38
ke_state_t me_state[1]; // :284:19

/* ======== components/bl602/bl602_wifi/ip/umac/src/me/me_utils.c ======== */

bool me_set_sta_ht_vht_param(struct sta_info_tag *sta, struct mac_bss_info *bss); // :72:5
uint8_t me_11ac_mcs_max(uint16_t mcs_map); // :122:9
uint8_t me_11ac_nss_max(uint16_t mcs_map); // :145:9
uint8_t me_11n_nss_max(uint8_t *mcs_set); // :159:9
uint8_t me_legacy_ridx_min(uint16_t rate_map); // :173:9
uint8_t me_legacy_ridx_max(uint16_t rate_map); // :188:9
uint8_t me_rate_translate(uint8_t rate); // :373:9
void me_get_basic_rates(const struct mac_rateset *rateset, struct mac_rateset *basic_ratest); // :422:6
uint16_t me_legacy_rate_bitfield_build(const struct mac_rateset *rateset, bool basic_only); // :438:10
uint16_t me_rate_bitfield_vht_build(uint16_t mcs_map_1, uint16_t mcs_map_2); // :466:10
uint16_t me_build_capability(uint8_t vif_idx); // :489:10
void me_init_rate(struct sta_info_tag *sta_entry); // :539:6
void me_init_bcmc_rate(struct sta_info_tag *sta_entry); // :546:6
void me_tx_cfm_singleton(struct txdesc *txdesc); // :566:6
void me_tx_cfm_ampdu(uint8_t sta_idx, uint32_t txed, uint32_t txok, bool retry_required); // :588:6
void me_check_rc(uint8_t sta_idx, bool *tx_ampdu); // :594:6
struct txl_buffer_control *me_update_buffer_control(struct sta_info_tag *sta_info); // :600:28
void me_bw_check(uint32_t ht_op_addr, uint32_t vht_op_addr, struct mac_bss_info *bss); // :816:6
void me_beacon_check(uint8_t vif_idx, uint16_t length, uint32_t bcn_addr); // :892:6
void me_sta_bw_nss_max_upd(uint8_t sta_idx, uint8_t bw, uint8_t nss); // :1042:6
uint16_t me_tx_cfm_amsdu(struct txdesc *txdesc); // :1084:10
uint8_t me_add_chan_ctx(uint8_t *p_chan_idx, struct scan_chan_tag *p_chan, uint32_t center_freq1, uint32_t center_freq2, uint8_t ch_width); // :1108:9

/* ======== components/bl602/bl602_wifi/ip/umac/src/rc/rc.c ======== */

struct rc_sta_stats sta_stats[10]; // :38:21
static const uint32_t rc_duration_ht_ampdu[80]; // :44:23
static const uint32_t rc_duration_cck[8]; // :74:23
static const uint32_t rc_duration_non_ht[8]; // :85:23

static uint8_t rc_get_nss(uint16_t rate_config); // :164:16
static uint8_t rc_get_mcs_index(uint16_t rate_config); // :198:16
static void rc_calc_prob_ewma(struct rc_rate_stats *rc_rs); // :260:13
static uint16_t rc_set_previous_mcs_index(struct rc_sta_stats *rc_ss, uint16_t rate_config); // :305:17
static uint16_t rc_set_next_mcs_index(struct rc_sta_stats *rc_ss, uint16_t rate_config); // :364:17
static uint16_t rc_new_random_rate(struct rc_sta_stats *rc_ss); // :580:17
static bool is_cck_group(uint16_t rate_config); // :726:12
static void rc_sort_samples_tp(struct rc_sta_stats *rc_ss, uint32_t *cur_tp); // :1031:13
static bool rc_update_stats(struct rc_sta_stats *rc_ss, bool init); // :1072:12
static void rc_update_retry_chain(struct rc_sta_stats *rc_ss, uint32_t *cur_tp); // :1173:13
static bool rc_check_valid_rate(struct rc_sta_stats *rc_ss, uint16_t rate_config); // :1272:12
static uint16_t rc_get_lowest_rate_config(struct rc_sta_stats *rc_ss); // :1520:17
static uint16_t rc_get_initial_rate_config(struct rc_sta_stats *rc_ss); // :1582:17
void rc_update_counters(uint8_t sta_idx, uint32_t attempts, uint32_t failures, bool tx_ampdu, bool retry_required); // :1989:6
void rc_check(uint8_t sta_idx, bool *tx_ampdu); // :2079:6
void rc_init(struct sta_info_tag *sta_entry); // :2136:6
uint32_t rc_get_duration(uint16_t rate_config); // :2358:10
void rc_update_bw_nss_max(uint8_t sta_idx, uint8_t bw_max, uint8_t nss_max); // :2402:6
void rc_update_preamble_type(uint8_t sta_idx, uint8_t preamble_type); // :2471:6
void rc_init_bcmc_rate(struct sta_info_tag *sta_entry, uint8_t basic_rate_idx); // :2533:6
bool rc_check_fixed_rate_config(struct rc_sta_stats *rc_ss, uint16_t fixed_rate_config); // :2550:5
uint32_t rc_calc_tp(struct rc_sta_stats *rc_ss, uint8_t sample_idx); // :2610:10

/* ======== components/bl602/bl602_wifi/ip/umac/src/rc/rc.h ======== */

struct rc_rate_stats {
    uint16_t attempts; // +0
    uint16_t success; // +2
    uint16_t probability; // +4
    uint16_t rate_config; // +6
    uint8_t sample_skipped; // +8
    bool old_prob_available; // +9
    uint8_t n_retry; // +10
    bool rate_allowed; // +11
}; // :133:8

struct step {
    uint32_t tp; // +0
    uint16_t idx; // +4
}; // :154:8

struct rc_sta_stats {
    uint32_t last_rc_time; // +0
    struct rc_rate_stats rate_stats[10]; // +4
    struct step retry[4]; // +124
    struct step max_tp_2_trial; // +156
    uint16_t ampdu_len; // +164
    uint16_t ampdu_packets; // +166
    uint32_t avg_ampdu_len; // +168
    uint8_t sample_wait; // +172
    uint8_t sample_slow; // +173
    uint8_t trial_status; // +174
    uint8_t info; // +175
    uint8_t sw_retry_step; // +176
    uint8_t format_mod; // +177
    union {
        uint8_t ht[4];
    } rate_map; // +178
    uint16_t rate_map_l; // +182
    uint8_t mcs_max; // +184
    uint8_t r_idx_min; // +185
    uint8_t r_idx_max; // +186
    uint8_t bw_max; // +187
    uint8_t no_ss; // +188
    uint8_t short_gi; // +189
    uint8_t p_type; // +190
    uint16_t no_samples; // +192
    uint16_t max_amsdu_len; // +194
    uint16_t curr_amsdu_len; // +196
    uint16_t fixed_rate_cfg; // +198
}; // :163:8

/* ======== components/bl602/bl602_wifi/ip/umac/src/rxu/rxu_cntrl.c ======== */

struct rxu_cntrl_env_tag rxu_cntrl_env; // :134:26
static const struct llc_snap_short rxu_cntrl_rfc1042_hdr; // :137:36
static const struct llc_snap_short rxu_cntrl_bridge_tunnel_hdr; // :144:36

static uint8_t rxu_cntrl_machdr_len_get(uint16_t frame_cntl); // :211:23
static bool rxu_cntrl_protected_handle(uint8_t *frame, uint32_t statinfo); // :248:12

uint32_t mac_payload_offset; // :375:10

static bool rxu_mgt_frame_check(struct rx_swdesc *swdesc, uint8_t sta_idx); // :1705:12

cm_ConnectionInfo_t sta_conn_info; // :1756:21
cm_ConnectionInfo_t *uap_conn_info; // :1757:22

void rxu_cntrl_init(void); // :1806:6
bool rxu_cntrl_frame_handle(struct rx_swdesc *swdesc); // :1817:5
void rxu_cntrl_monitor_pm(struct mac_addr *addr); // :1998:6
uint8_t rxu_cntrl_get_pm(void); // :2012:9
void rxu_cntrl_evt(int dummy); // :2024:6

struct wifi_pkt {
    uint32_t pkt[4]; // +0
    void *pbuf[4]; // +16
    uint16_t len[4]; // +32
}; // :2039:8

void rxu_swdesc_upload_evt(int arg); // :2047:6

/* ======== components/bl602/bl602_wifi/ip/umac/src/rxu/rxu_cntrl.h ======== */

enum rx_status_bits {
    RX_STAT_FORWARD = 1,
    RX_STAT_ALLOC = 2,
    RX_STAT_DELETE = 4,
    RX_STAT_LEN_UPDATE = 8,
    RX_STAT_ETH_LEN_UPDATE = 16,
    RX_STAT_COPY = 32,
}; // :64:6

enum rxu_cntrl_frame_info_pos {
    RXU_CNTRL_MIC_CHECK_NEEDED = 1,
    RXU_CNTRL_PN_CHECK_NEEDED = 2,
    RXU_CNTRL_NEW_MESH_PEER = 4,
}; // :106:6

struct rxu_mic_calc {
    struct mic_calc mic_calc; // +0
    uint32_t last_bytes[2]; // +16
}; // :127:8

struct rx_cntrl_rx_status {
    uint16_t frame_cntl; // +0
    uint16_t seq_cntl; // +2
    uint16_t sn; // +4
    uint8_t fn; // +6
    uint8_t tid; // +7
    uint8_t machdr_len; // +8
    uint8_t sta_idx; // +9
    uint8_t vif_idx; // +10
    uint8_t dst_idx; // +11
    uint64_t pn; // +16
    uint32_t statinfo; // +24
    uint32_t host_buf_addr; // +28
    struct key_info_tag *key; // +32
    struct mac_addr da; // +36
    struct mac_addr sa; // +42
    uint8_t frame_info; // +48
    bool eth_len_present; // +49
    uint8_t payl_offset; // +50
}; // :213:8

struct rx_cntrl_ipcdesc {
    uint32_t host_id; // +0
}; // :262:8

struct rx_cntrl_dupli {
    struct mac_addr last_src_addr; // +0
    uint16_t last_seq_cntl; // +6
}; // :269:8

struct rx_cntrl_pm_mon {
    struct mac_addr addr; // +0
    uint8_t pm_state; // +6
    bool mon; // +7
}; // :278:8

struct rxu_cntrl_env_tag {
    struct rx_cntrl_rx_status rx_status; // +0
    struct co_list rxdesc_pending; // +56
    struct co_list rxdesc_ready; // +64
    struct rx_cntrl_ipcdesc rx_ipcdesc_stat; // +72
    struct co_list rxu_defrag_free; // +76
    struct co_list rxu_defrag_used; // +84
    struct rx_cntrl_dupli rxu_dupli; // +92
    struct mac_addr *mac_addr_ptr; // +100
    struct rx_cntrl_pm_mon pm_mon; // +104
    uint32_t ttr; // +112
}; // :290:8

struct rxu_cntrl_env_tag rxu_cntrl_env; // :322:33

/* ======== components/bl602/bl602_wifi/ip/umac/src/rxu/rxu_task.h ======== */

enum rxu_msg_tag {
    RXU_MGT_IND = 11264,
    RXU_NULL_DATA = 11265,
}; // :27:6

struct rxu_mgt_ind {
    uint16_t length; // +0
    uint16_t framectrl; // +2
    uint16_t center_freq; // +4
    uint8_t band; // +6
    uint8_t sta_idx; // +7
    uint8_t inst_nbr; // +8
    uint8_t sa[6]; // +9
    uint32_t tsflo; // +16
    uint32_t tsfhi; // +20
    int8_t rssi; // +24
    int8_t ppm_abs; // +25
    int8_t ppm_rel; // +26
    uint8_t data_rate; // +27
    uint32_t payload[0]; // +28
}; // :45:8

/* ======== components/bl602/bl602_wifi/ip/umac/src/scanu/scanu.c ======== */

struct scanu_env_tag scanu_env; // :61:22

static void scanu_dma_cb(void *env, int dma_type); // :187:13
void scanu_confirm(uint8_t status); // :225:6
void scanu_raw_send_cfm(uint8_t status, ke_task_id_t dst_id); // :255:6
void scanu_init(void); // :268:6
int scanu_frame_handler(const struct rxu_mgt_ind *frame); // :288:5
struct mac_scan_result *scanu_find_result(const struct mac_addr *bssid_ptr, bool allocate); // :673:25
struct mac_scan_result *scanu_search_by_bssid(const struct mac_addr *bssid); // :704:25
struct mac_scan_result *scanu_search_by_ssid(const struct mac_ssid *ssid, int *idx); // :709:25
void scanu_rm_exist_ssid(const struct mac_ssid *ssid, int index); // :746:6
void scanu_start(void); // :765:6
void scanu_scan_next(void); // :801:6

/* ======== components/bl602/bl602_wifi/ip/umac/src/scanu/scanu.h ======== */

struct scanu_env_tag {
    const struct scanu_start_req *param; // +0
    struct hal_dma_desc_tag dma_desc; // +4
    uint16_t result_cnt; // +20
    struct mac_scan_result scan_result[6]; // +24
    ke_task_id_t src_id; // +360
    bool joining; // +362
    uint8_t band; // +363
    struct mac_addr bssid; // +364
    struct mac_ssid ssid; // +370
}; // :42:8

struct scanu_add_ie_tag {
    struct dma_desc dma_desc; // +0
    uint32_t buf[50]; // +16
}; // :69:8

struct scanu_env_tag scanu_env; // :81:29
struct scanu_add_ie_tag scanu_add_ie; // :84:32

/* ======== components/bl602/bl602_wifi/ip/umac/src/scanu/scanu_shared.c ======== */

struct scanu_add_ie_tag scanu_add_ie; // :30:25

/* ======== components/bl602/bl602_wifi/ip/umac/src/scanu/scanu_task.c ======== */

static int scanu_start_req_handler(const ke_msg_id_t msgid, const struct scanu_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :50:1
static void cfm_raw_send(void *env, uint32_t status); // :68:13
static int scanu_raw_send_req_handler(const ke_msg_id_t msgid, const struct scanu_raw_send_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :130:1
static int scanu_join_req_handler(const ke_msg_id_t msgid, const struct scanu_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :163:1
static int scan_start_cfm_handler(const ke_msg_id_t msgid, const struct scan_start_cfm *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :203:1
static int scan_done_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :229:1
static int rxu_mgt_ind_handler(const ke_msg_id_t msgid, const struct rxu_mgt_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :256:1

const struct ke_msg_handler scanu_idle[3]; // :270:29
const struct ke_msg_handler scanu_scanning[3]; // :278:29
const struct ke_msg_handler scanu_default_state[3]; // :286:29
const struct ke_state_handler scanu_state_handler[2]; // :297:31
const struct ke_state_handler scanu_default_handler; // :307:31
ke_state_t scanu_state[1]; // :312:12

/* ======== components/bl602/bl602_wifi/ip/umac/src/scanu/scanu_task.h ======== */

struct scanu_start_req {
    struct scan_chan_tag chan[42]; // +0
    struct mac_ssid ssid[2]; // +252
    struct mac_addr bssid; // +320
    uint32_t add_ies; // +328
    uint16_t add_ie_len; // +332
    uint8_t vif_idx; // +334
    uint8_t chan_cnt; // +335
    uint8_t ssid_cnt; // +336
    bool no_cck; // +337
}; // :62:8

struct scanu_raw_send_req {
    void *pkt; // +0
    uint32_t len; // +4
}; // :85:8

struct scanu_raw_send_cfm {
    uint32_t status; // +0
}; // :91:8

struct scanu_start_cfm {
    uint8_t status; // +0
}; // :97:8

const struct ke_state_handler scanu_state_handler[2]; // :103:38
const struct ke_state_handler scanu_default_handler; // :105:38
ke_state_t scanu_state[1]; // :107:19

/* ======== components/bl602/bl602_wifi/ip/umac/src/sm/sm.c ======== */

struct sm_env_tag sm_env; // :50:19

static void sm_frame_tx_cfm_handler(void *env, uint32_t status); // :64:13
static void sm_deauth_cfm(void *env, uint32_t status); // :125:13
static void sm_delete_resources(struct vif_info_tag *vif); // :137:13
void sm_init(void); // :188:6
void sm_get_bss_params(const struct mac_addr **bssid, const struct scan_chan_tag **chan); // :198:6
void sm_scan_bss(const struct mac_addr *bssid, const struct scan_chan_tag *chan); // :239:6
void sm_join_bss(const struct mac_addr *bssid, const struct scan_chan_tag *chan, bool passive); // :279:6
uint8_t sm_add_chan_ctx(uint8_t *p_chan_idx); // :312:9
void sm_set_bss_param(void); // :335:6
void sm_send_next_bss_param(void); // :411:6
void sm_disconnect(uint8_t vif_index, uint16_t reason_code); // :422:6
void sm_disconnect_process(struct vif_info_tag *vif, uint16_t reason); // :527:6
void sm_connect_ind(uint16_t status); // :546:6
void sm_auth_send(uint16_t auth_seq, uint32_t *challenge); // :618:6
void sm_assoc_req_send(void); // :724:6
void sm_assoc_done(uint16_t aid); // :819:6
void sm_auth_handler(const struct rxu_mgt_ind *param); // :840:6
void sm_assoc_rsp_handler(const struct rxu_mgt_ind *param); // :939:6
int sm_deauth_handler(const struct rxu_mgt_ind *param); // :1009:5
static void sm_supplicant_deauth_cfm(void *env, uint32_t status); // :1145:13
void sm_handle_supplicant_result(uint8_t sta_id, uint16_t reason_code); // :1153:6

/* ======== components/bl602/bl602_wifi/ip/umac/src/sm/sm.h ======== */

struct sm_env_tag {
    struct sm_connect_req *connect_param; // +0
    struct sm_connect_ind *connect_ind; // +4
    struct co_list bss_config; // +8
    bool join_passive; // +16
    bool ft_over_ds; // +17
    int exist_ssid_idx; // +20
    struct mac_addr ft_old_bssid; // +24
}; // :36:8

struct sm_env_tag sm_env; // :239:26

/* ======== components/bl602/bl602_wifi/ip/umac/src/sm/sm_task.c ======== */

static int sm_connect_req_handler(const ke_msg_id_t msgid, const struct sm_connect_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :50:1
static int sm_disconnect_req_handler(const ke_msg_id_t msgid, const struct sm_disconnect_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :162:1
static int mm_connection_loss_ind_handler(const ke_msg_id_t msgid, const struct mm_connection_loss_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :191:1
static int sm_rsp_timeout_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :228:1
static int scanu_start_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :257:1
static int scanu_join_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :297:1
static int mm_sta_add_cfm_handler(const ke_msg_id_t msgid, const struct mm_sta_add_cfm *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :406:1
static int me_set_ps_disable_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :467:1
static int mm_bss_param_setting_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :500:1
static int me_set_active_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :527:1
static int mm_set_vif_state_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :582:1
static int rxu_mgt_ind_handler(const ke_msg_id_t msgid, const struct rxu_mgt_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :651:1

const struct ke_msg_handler sm_default_state[17]; // :691:29
const struct ke_state_handler sm_default_handler; // :713:31
ke_state_t sm_state[1]; // :717:12

/* ======== components/bl602/bl602_wifi/ip/umac/src/sm/sm_task.h ======== */

enum sm_state_tag {
    SM_IDLE = 0,
    SM_SCANNING = 1,
    SM_JOINING = 2,
    SM_STA_ADDING = 3,
    SM_BSS_PARAM_SETTING = 4,
    SM_AUTHENTICATING = 5,
    SM_ASSOCIATING = 6,
    SM_ACTIVATING = 7,
    SM_DISCONNECTING = 8,
    SM_STATE_MAX = 9,
}; // :32:6

enum sm_msg_tag {
    SM_CONNECT_REQ = 6144,
    SM_CONNECT_CFM = 6145,
    SM_CONNECT_IND = 6146,
    SM_DISCONNECT_REQ = 6147,
    SM_DISCONNECT_CFM = 6148,
    SM_DISCONNECT_IND = 6149,
    SM_RSP_TIMEOUT_IND = 6150,
}; // :57:6

struct sm_connect_req {
    struct mac_ssid ssid; // +0
    struct mac_addr bssid; // +34
    struct scan_chan_tag chan; // +40
    uint32_t flags; // +48
    uint16_t ctrl_port_ethertype; // +52
    uint16_t ie_len; // +54
    uint16_t listen_interval; // +56
    bool dont_wait_bcmc; // +58
    uint8_t auth_type; // +59
    uint8_t uapsd_queues; // +60
    uint8_t vif_idx; // +61
    uint32_t ie_buf[64]; // +64
    bool is_supplicant_enabled; // +320
    uint8_t phrase[64]; // +321
    uint8_t phrase_pmk[64]; // +385
}; // :76:8

struct sm_connect_cfm {
    uint8_t status; // +0
}; // :113:8

struct sm_connect_ind {
    uint16_t status_code; // +0
    struct mac_addr bssid; // +2
    bool roamed; // +8
    uint8_t vif_idx; // +9
    uint8_t ap_idx; // +10
    uint8_t ch_idx; // +11
    bool qos; // +12
    uint8_t acm; // +13
    uint16_t assoc_req_ie_len; // +14
    uint16_t assoc_rsp_ie_len; // +16
    uint32_t assoc_ie_buf[200]; // +20
    uint16_t aid; // +820
    uint8_t band; // +822
    uint16_t center_freq; // +824
    uint8_t width; // +826
    uint32_t center_freq1; // +828
    uint32_t center_freq2; // +832
    uint32_t ac_param[4]; // +836
}; // :126:8

struct sm_disconnect_req {
    uint16_t reason_code; // +0
    uint8_t vif_idx; // +2
}; // :167:8

struct sm_disconnect_ind {
    uint16_t reason_code; // +0
    uint8_t vif_idx; // +2
    bool ft_over_ds; // +3
}; // :176:8

const struct ke_state_handler sm_default_handler; // :188:38
ke_state_t sm_state[1]; // :191:19

/* ======== components/bl602/bl602_wifi/ip/umac/src/txu/txu_cntrl.c ======== */

void txu_cntrl_init(void); // :765:6
void txu_cntrl_frame_build(struct txdesc *txdesc, uint32_t buf); // :769:6
bool txu_cntrl_push(struct txdesc *txdesc, uint8_t access_category); // :790:5
void txu_cntrl_tkip_mic_append(struct txdesc *txdesc, uint8_t ac); // :849:6
void txu_cntrl_cfm(struct txdesc *txdesc); // :909:6
void txu_cntrl_protect_mgmt_frame(struct txdesc *txdesc, uint32_t frame, uint16_t hdr_len); // :980:6

/* ======== components/bl602/bl602_wifi/modules/common/src/co_dlist.c ======== */

void co_dlist_init(struct co_dlist *list); // :33:6
void co_dlist_push_back(struct co_dlist *list, struct co_dlist_hdr *list_hdr); // :45:6
void co_dlist_push_front(struct co_dlist *list, struct co_dlist_hdr *list_hdr); // :74:6
struct co_dlist_hdr *co_dlist_pop_front(struct co_dlist *list); // :102:22
void co_dlist_extract(struct co_dlist *list, const struct co_dlist_hdr *list_hdr); // :134:6

/* ======== components/bl602/bl602_wifi/modules/common/src/co_dlist.h ======== */

struct co_dlist_hdr {
    struct co_dlist_hdr *next; // +0
    struct co_dlist_hdr *prev; // +4
}; // :48:8

struct co_dlist {
    struct co_dlist_hdr *first; // +0
    struct co_dlist_hdr *last; // +4
    uint32_t cnt; // +8
}; // :57:8

/* ======== components/bl602/bl602_wifi/modules/common/src/co_list.c ======== */

void co_list_init(struct co_list *list); // :36:6
void co_list_pool_init(struct co_list *list, void *pool, size_t elmt_size, uint32_t elmt_cnt, void *default_value); // :42:6
void co_list_push_back(struct co_list *list, struct co_list_hdr *list_hdr); // :67:6
void co_list_push_front(struct co_list *list, struct co_list_hdr *list_hdr); // :90:6
struct co_list_hdr *co_list_pop_front(struct co_list *list); // :108:21
void co_list_extract(struct co_list *list, struct co_list_hdr *list_hdr); // :123:6
bool co_list_find(struct co_list *list, struct co_list_hdr *list_hdr); // :166:5
uint32_t co_list_cnt(const struct co_list *const list); // :181:10
void co_list_insert(struct co_list *const list, struct co_list_hdr *const element, bool (*cmp)(const struct co_list_hdr *, const struct co_list_hdr *)); // :211:6
void co_list_insert_after(struct co_list *const list, struct co_list_hdr *const prev_element, struct co_list_hdr *const element); // :254:6
void co_list_insert_before(struct co_list *const list, struct co_list_hdr *const next_element, struct co_list_hdr *const element); // :293:6
void co_list_concat(struct co_list *list1, struct co_list *list2); // :332:6
void co_list_remove(struct co_list *list, struct co_list_hdr *prev_element, struct co_list_hdr *element); // :355:6

/* ======== components/bl602/bl602_wifi/modules/common/src/co_list.h ======== */

struct co_list_hdr {
    struct co_list_hdr *next; // +0
}; // :47:8

struct co_list {
    struct co_list_hdr *first; // +0
    struct co_list_hdr *last; // +4
}; // :54:8

/* ======== components/bl602/bl602_wifi/modules/common/src/co_math.c ======== */

static const uint32_t crc_tab[256]; // :32:23

uint32_t co_crc32(uint32_t addr, uint32_t len, uint32_t crc); // :105:10

/* ======== components/bl602/bl602_wifi/modules/common/src/co_math.h ======== */

static unsigned long next; // :107:26

/* ======== components/bl602/bl602_wifi/modules/common/src/co_pool.c ======== */

void co_pool_init(struct co_pool *pool, struct co_pool_hdr *pool_hdr, void *elements, uint32_t elem_size, uint32_t elem_cnt); // :33:6
struct co_pool_hdr *co_pool_alloc(struct co_pool *pool, uint32_t nbelem); // :66:21
void co_pool_free(struct co_pool *pool, struct co_pool_hdr *elements, uint32_t nbelem); // :105:6

/* ======== components/bl602/bl602_wifi/modules/common/src/co_pool.h ======== */

struct co_pool_hdr {
    struct co_pool_hdr *next; // +0
    void *element; // +4
}; // :53:8

struct co_pool {
    struct co_pool_hdr *first_ptr; // +0
    uint32_t freecnt; // +4
}; // :64:8

/* ======== components/bl602/bl602_wifi/modules/common/src/notifier.c ======== */

int notifier_chain_regsiter(struct notifier_block **list, struct notifier_block *n); // :6:5
int notifier_chain_regsiter_fromCritical(struct notifier_block **list, struct notifier_block *n); // :22:5
int notifier_chain_unregsiter(struct notifier_block **list, struct notifier_block *n); // :37:5
int notifier_chain_unregsiter_fromCritical(struct notifier_block **list, struct notifier_block *n); // :53:5
int notifier_chain_call(struct notifier_block **list, int event, void *env); // :65:5
int notifier_chain_call_fromeCritical(struct notifier_block **list, int event, void *env); // :81:5

/* ======== components/bl602/bl602_wifi/modules/common/src/notifier.h ======== */

struct notifier_block {
    int (*cb)(struct notifier_block *, int, void *); // +0
    struct notifier_block *next; // +4
    int priority; // +8
}; // :3:8

/* ======== components/bl602/bl602_wifi/modules/dbg/src/dbg.c ======== */

struct debug_env_tag dbg_env; // :40:22

void dbg_init(void); // :299:6

/* ======== components/bl602/bl602_wifi/modules/dbg/src/dbg.h ======== */

enum dbg_mod_tag {
    DBG_MOD_IDX_KE = 0,
    DBG_MOD_IDX_DBG = 1,
    DBG_MOD_IDX_IPC = 2,
    DBG_MOD_IDX_DMA = 3,
    DBG_MOD_IDX_MM = 4,
    DBG_MOD_IDX_TX = 5,
    DBG_MOD_IDX_RX = 6,
    DBG_MOD_IDX_PHY = 7,
    DBG_MOD_IDX_MAX = 8,
}; // :88:6

enum dbg_sev_tag {
    DBG_SEV_IDX_NONE = 0,
    DBG_SEV_IDX_CRT = 1,
    DBG_SEV_IDX_ERR = 2,
    DBG_SEV_IDX_WRN = 3,
    DBG_SEV_IDX_INF = 4,
    DBG_SEV_IDX_VRB = 5,
    DBG_SEV_IDX_MAX = 6,
    DBG_SEV_ALL = 7,
}; // :108:6

struct debug_env_tag {
    uint32_t filter_module; // +0
    uint32_t filter_severity; // +4
}; // :1287:8

struct debug_env_tag dbg_env; // :1300:29

/* ======== components/bl602/bl602_wifi/modules/dbg/src/dbg_print.c ======== */

static const uint8_t transition_table[8]; // :83:22
static const char hex_upper_table[17]; // :97:19

void dbg_test_print(const char *fmt); // :638:6
uint32_t dbg_snprintf(char *buffer, uint32_t size, const char *fmt); // :705:10

/* ======== components/bl602/bl602_wifi/modules/dbg/src/dbg_task.c ======== */

static int dbg_mem_read_req_handler(const ke_msg_id_t msgid, const struct dbg_mem_read_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :53:1
static int dbg_mem_write_req_handler(const ke_msg_id_t msgid, const struct dbg_mem_write_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :88:1
static int dbg_set_mod_filter_req_handler(const ke_msg_id_t msgid, const struct dbg_set_mod_filter_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :125:1
static int dbg_set_sev_filter_req_handler(const ke_msg_id_t msgid, const struct dbg_set_sev_filter_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :155:1
static int dbg_get_sys_stat_req_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :185:1

const struct ke_msg_handler dbg_default_state[5]; // :245:29
const struct ke_state_handler dbg_default_handler; // :264:31

/* ======== components/bl602/bl602_wifi/modules/dbg/src/dbg_task.h ======== */

enum dbg_msg_tag {
    DBG_MEM_READ_REQ = 1024,
    DBG_MEM_READ_CFM = 1025,
    DBG_MEM_WRITE_REQ = 1026,
    DBG_MEM_WRITE_CFM = 1027,
    DBG_SET_MOD_FILTER_REQ = 1028,
    DBG_SET_MOD_FILTER_CFM = 1029,
    DBG_SET_SEV_FILTER_REQ = 1030,
    DBG_SET_SEV_FILTER_CFM = 1031,
    DBG_ERROR_IND = 1032,
    DBG_GET_SYS_STAT_REQ = 1033,
    DBG_GET_SYS_STAT_CFM = 1034,
    DBG_SYS_STAT_TIMER = 1035,
}; // :41:6

struct dbg_mem_read_req {
    uint32_t memaddr; // +0
}; // :76:8

struct dbg_mem_read_cfm {
    uint32_t memaddr; // +0
    uint32_t memdata; // +4
}; // :83:8

struct dbg_mem_write_req {
    uint32_t memaddr; // +0
    uint32_t memdata; // +4
}; // :92:8

struct dbg_mem_write_cfm {
    uint32_t memaddr; // +0
    uint32_t memdata; // +4
}; // :101:8

struct dbg_set_mod_filter_req {
    uint32_t mod_filter; // +0
}; // :110:8

struct dbg_set_sev_filter_req {
    uint32_t sev_filter; // +0
}; // :117:8

struct dbg_get_sys_stat_cfm {
    uint32_t cpu_sleep_time; // +0
    uint32_t doze_time; // +4
    uint32_t stats_time; // +8
}; // :124:8

const struct ke_state_handler dbg_default_handler; // :138:38

/* ======== components/bl602/bl602_wifi/modules/ke/src/ke_env.c ======== */

struct ke_env_tag ke_env; // :26:19

/* ======== components/bl602/bl602_wifi/modules/ke/src/ke_env.h ======== */

typedef uint32_t evt_field_t; // :43:18

struct ke_env_tag {
    volatile evt_field_t evt_field; // +0
    struct co_list queue_sent; // +4
    struct co_list queue_saved; // +12
    struct co_list queue_timer; // +20
    struct mblock_free *mblock_first; // +28
}; // :46:8

struct ke_env_tag ke_env; // :70:26

/* ======== components/bl602/bl602_wifi/modules/ke/src/ke_event.c ======== */

typedef void (*evt_ptr_t)(int); // :43:16

struct ke_evt_tag {
    evt_ptr_t func; // +0
    int param; // +4
}; // :47:8

void bl_event_handle(int param); // :73:6

static const struct ke_evt_tag ke_evt_hdlr[32]; // :81:32

void bl60x_fw_dump_statistic(int forced); // :128:6
void bl_fw_statistic_dump(int param); // :137:6
void ke_evt_set(const evt_field_t event); // :176:6
void ke_evt_clear(const evt_field_t event); // :193:6
void ke_evt_schedule(void); // :210:6
void ke_init(void); // :240:6
void ke_flush(void); // :270:6

/* ======== components/bl602/bl602_wifi/modules/ke/src/ke_mem.c ======== */

struct mblock_free {
    struct mblock_free *next; // +0
    uint32_t size; // +4
}; // :45:8

struct mblock_used {
    uint32_t size; // +0
}; // :56:8

uint8_t ke_mem_heap[5248]; // :69:9

struct mblock_free *ke_mem_init(void); // :76:21
void *ke_malloc(uint32_t size); // :104:7
void ke_free(void *mem_ptr); // :181:6

/* ======== components/bl602/bl602_wifi/modules/ke/src/ke_msg.c ======== */

void *ke_msg_alloc(const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id, const uint16_t param_len); // :71:7
void ke_msg_send(const void *param_ptr); // :111:6
void ke_msg_send_basic(const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :146:6
void ke_msg_forward(const void *param_ptr, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :166:6
void ke_msg_forward_and_change_id(const void *param_ptr, const ke_msg_id_t msg_id, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :195:6
void ke_msg_free(const struct ke_msg *msg); // :219:6

/* ======== components/bl602/bl602_wifi/modules/ke/src/ke_msg.h ======== */

typedef uint16_t ke_task_id_t; // :63:18
typedef uint16_t ke_state_t; // :75:18
typedef uint16_t ke_msg_id_t; // :81:18

struct ke_msg {
    struct co_list_hdr hdr; // +0
    ke_msg_id_t id; // +4
    ke_task_id_t dest_id; // +6
    ke_task_id_t src_id; // +8
    uint16_t param_len; // +10
    uint32_t param[0]; // +12
}; // :84:8

enum ke_msg_status_tag {
    KE_MSG_CONSUMED = 0,
    KE_MSG_NO_FREE = 1,
    KE_MSG_SAVED = 2,
}; // :97:6

/* ======== components/bl602/bl602_wifi/modules/ke/src/ke_queue.c ======== */

struct co_list_hdr *ke_queue_extract(struct co_list *const queue, bool (*func)(const struct co_list_hdr *, uint32_t), uint32_t arg); // :43:21

/* ======== components/bl602/bl602_wifi/modules/ke/src/ke_task.c ======== */

static const struct ke_task_desc TASK_DESC[14]; // :65:34

static bool cmp_dest_id(const struct co_list_hdr *msg, uint32_t dest_id); // :113:12
void ke_state_set(const ke_task_id_t id, const ke_state_t state_id); // :170:6
ke_state_t ke_state_get(const ke_task_id_t id); // :210:12
static ke_msg_func_t ke_handler_search(const ke_msg_id_t msg_id, const struct ke_state_handler *state_handler); // :235:22
void ke_task_schedule(int dummy); // :309:6
int ke_msg_discard(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :387:5
int ke_msg_save(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :406:5

/* ======== components/bl602/bl602_wifi/modules/ke/src/ke_task.h ======== */

typedef int (*ke_msg_func_t)(const ke_msg_id_t, const void *, const ke_task_id_t, const ke_task_id_t); // :120:15

struct ke_msg_handler {
    ke_msg_id_t id; // +0
    ke_msg_func_t func; // +4
}; // :126:8

struct ke_state_handler {
    const struct ke_msg_handler *msg_table; // +0
    uint16_t msg_cnt; // +4
}; // :135:8

struct ke_task_desc {
    const struct ke_state_handler *state_handler; // +0
    const struct ke_state_handler *default_handler; // +4
    ke_state_t *state; // +8
    uint16_t state_max; // +12
    uint16_t idx_max; // +14
}; // :151:8

static bool ke_task_local(const ke_task_id_t id); // :179:21

/* ======== components/bl602/bl602_wifi/modules/ke/src/ke_timer.c ======== */

static void ke_timer_hw_set(struct ke_timer *timer); // :46:13
static bool cmp_abs_time(const struct co_list_hdr *timerA, const struct co_list_hdr *timerB); // :84:12
static bool cmp_timer_id(const struct co_list_hdr *timer, uint32_t timer_task); // :102:12
void ke_timer_set(const ke_msg_id_t timer_id, const ke_task_id_t task_id, const uint32_t delay); // :133:6
void ke_timer_clear(const ke_msg_id_t timer_id, const ke_task_id_t task_id); // :197:6
void ke_timer_schedule(int dummy); // :246:6
bool ke_timer_active(const ke_msg_id_t timer_id, const ke_task_id_t task_id); // :302:5

/* ======== components/bl602/bl602_wifi/modules/ke/src/ke_timer.h ======== */

struct ke_timer {
    struct ke_timer *next; // +0
    ke_msg_id_t id; // +4
    ke_task_id_t task; // +6
    uint32_t time; // +8
}; // :62:8

/* ======== components/bl602/bl602_wifi/modules/mac/src/mac.c ======== */

const uint8_t mac_tid2ac[]; // :31:15
const uint8_t mac_ac2uapsd[4]; // :44:15
const uint8_t mac_id2rate[]; // :53:15
const struct mac_addr mac_addr_bcst; // :92:23

uint32_t mac_paid_gid_sta_compute(const struct mac_addr *p_mac_addr); // :99:10
uint32_t mac_paid_gid_ap_compute(const struct mac_addr *p_mac_addr, uint16_t aid); // :110:10
void bl60x_current_time_us(long long *time_now); // :123:6

/* ======== components/bl602/bl602_wifi/modules/mac/src/mac.h ======== */

struct mac_addr {
    uint16_t array[3]; // +0
}; // :207:8

struct mac_ssid {
    uint8_t length; // +0
    uint8_t array[32]; // +1
    uint8_t array_tail[1]; // +33
}; // :217:8

struct mac_rateset {
    uint8_t length; // +0
    uint8_t array[12]; // +1
}; // :232:8

struct key_info_tag {
    uint64_t rx_pn[9]; // +0
    uint64_t tx_pn; // +72
    union {
        struct {
            uint32_t tx_key[2]; // +0
            uint32_t rx_key[2]; // +8
        } mic;
        struct {
            uint32_t key[4]; // +0
        } mfp;
    } u; // +80
    uint8_t cipher; // +96
    uint8_t key_idx; // +97
    uint8_t hw_key_idx; // +98
    bool valid; // +99
}; // :257:8

struct mac_sec_key {
    uint8_t length; // +0
    uint32_t array[8]; // +4
}; // :292:8

struct mac_htcapability {
    uint16_t ht_capa_info; // +0
    uint8_t a_mpdu_param; // +2
    uint8_t mcs_rate[16]; // +3
    uint16_t ht_extended_capa; // +20
    uint32_t tx_beamforming_capa; // +24
    uint8_t asel_capa; // +28
}; // :303:8

struct mac_vhtcapability {
    uint32_t vht_capa_info; // +0
    uint16_t rx_mcs_map; // +4
    uint16_t rx_highest; // +6
    uint16_t tx_mcs_map; // +8
    uint16_t tx_highest; // +10
}; // :321:8

struct mac_edca_param_set {
    uint8_t qos_info; // +0
    uint8_t acm; // +1
    uint32_t ac_param[4]; // +4
}; // :353:8

struct mac_scan_result {
    struct mac_addr bssid; // +0
    struct mac_ssid ssid; // +6
    uint16_t bsstype; // +40
    struct scan_chan_tag *chan; // +44
    uint16_t beacon_period; // +48
    uint16_t cap_info; // +50
    bool valid_flag; // +52
    int8_t rssi; // +53
    int8_t ppm_rel; // +54
    int8_t ppm_abs; // +55
}; // :381:8

struct mac_sta_info {
    struct mac_rateset rate_set; // +0
    struct mac_htcapability ht_cap; // +16
    struct mac_vhtcapability vht_cap; // +48
    uint32_t capa_flags; // +60
    uint8_t phy_bw_max; // +64
    uint8_t bw_cur; // +65
    uint8_t uapsd_queues; // +66
    uint8_t max_sp_len; // +67
    uint8_t stbc_nss; // +68
}; // :471:8

const uint8_t mac_tid2ac[]; // :499:22
const uint8_t mac_ac2uapsd[4]; // :502:22
const uint8_t mac_id2rate[]; // :505:22
const struct mac_addr mac_addr_bcst; // :512:30

/* ======== components/bl602/bl602_wifi/modules/mac/src/mac_frame.h ======== */

struct mac_hdr_ctrl {
    uint16_t fctl; // +0
    uint16_t durid; // +2
    struct mac_addr addr1; // +4
    struct mac_addr addr2; // +10
}; // :1774:8

struct mac_hdr {
    uint16_t fctl; // +0
    uint16_t durid; // +2
    struct mac_addr addr1; // +4
    struct mac_addr addr2; // +10
    struct mac_addr addr3; // +16
    uint16_t seq; // +22
}; // :1787:8

struct mac_hdr_qos {
    uint16_t fctl; // +0
    uint16_t durid; // +2
    struct mac_addr addr1; // +4
    struct mac_addr addr2; // +10
    struct mac_addr addr3; // +16
    uint16_t seq; // +22
    uint16_t qos; // +24
}; // :1804:8

struct mac_hdr_long {
    uint16_t fctl; // +0
    uint16_t durid; // +2
    struct mac_addr addr1; // +4
    struct mac_addr addr2; // +10
    struct mac_addr addr3; // +16
    uint16_t seq; // +22
    struct mac_addr addr4; // +24
}; // :1823:8

struct mac_hdr_long_qos {
    uint16_t fctl; // +0
    uint16_t durid; // +2
    struct mac_addr addr1; // +4
    struct mac_addr addr2; // +10
    struct mac_addr addr3; // +16
    uint16_t seq; // +22
    struct mac_addr addr4; // +24
    uint16_t qos; // +30
}; // :1843:8

struct eth_hdr {
    struct mac_addr da; // +0
    struct mac_addr sa; // +6
    uint16_t len; // +12
}; // :1864:8

struct bcn_frame {
    struct mac_hdr h; // +0
    uint64_t tsf; // +24
    uint16_t bcnint; // +32
    uint16_t capa; // +34
    uint8_t variable[0]; // +36
}; // :1875:8

struct preq_frame {
    struct mac_hdr h; // +0
    uint8_t payload[0]; // +24
}; // :1890:8

/* ======== components/bl602/bl602_wifi/modules/mac/src/mac_ie.c ======== */

uint32_t mac_ie_find(uint32_t addr, uint16_t buflen, uint8_t ie_id); // :39:10
uint32_t mac_vsie_find(uint32_t addr, uint16_t buflen, const uint8_t *oui, uint8_t ouilen); // :65:10

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/IEEE_types.h ======== */

typedef enum {
    IEEE_8021X_PACKET_TYPE_EAP_PACKET = 0,
    IEEE_8021X_PACKET_TYPE_EAPOL_START = 1,
    IEEE_8021X_PACKET_TYPE_EAPOL_LOGOFF = 2,
    IEEE_8021X_PACKET_TYPE_EAPOL_KEY = 3,
    IEEE_8021X_PACKET_TYPE_ASF_ALERT = 4,
} IEEEtypes_8021x_PacketType_e; // :418:27

typedef enum {
    IEEE_8021X_CODE_TYPE_REQUEST = 1,
    IEEE_8021X_CODE_TYPE_RESPONSE = 2,
    IEEE_8021X_CODE_TYPE_SUCCESS = 3,
    IEEE_8021X_CODE_TYPE_FAILURE = 4,
} IEEEtypes_8021x_CodeType_e; // :428:27

typedef enum {
    ELEM_ID_SSID = 0,
    ELEM_ID_SUPPORTED_RATES = 1,
    ELEM_ID_FH_PARAM_SET = 2,
    ELEM_ID_DS_PARAM_SET = 3,
    ELEM_ID_CF_PARAM_SET = 4,
    ELEM_ID_TIM = 5,
    ELEM_ID_IBSS_PARAM_SET = 6,
    ELEM_ID_COUNTRY = 7,
    ELEM_ID_HOP_PARAM = 8,
    ELEM_ID_HOP_TABLE = 9,
    ELEM_ID_REQUEST = 10,
    ELEM_ID_BSS_LOAD = 11,
    ELEM_ID_EDCA_PARAM_SET = 12,
    ELEM_ID_TSPEC = 13,
    ELEM_ID_TCLAS = 14,
    ELEM_ID_SCHEDULE = 15,
    ELEM_ID_CHALLENGE_TEXT = 16,
    ELEM_ID_POWER_CONSTRAINT = 32,
    ELEM_ID_POWER_CAPABILITY = 33,
    ELEM_ID_TPC_REQUEST = 34,
    ELEM_ID_TPC_REPORT = 35,
    ELEM_ID_SUPPORTED_CHANNELS = 36,
    ELEM_ID_CHANNEL_SWITCH_ANN = 37,
    ELEM_ID_MEASUREMENT_REQ = 38,
    ELEM_ID_MEASUREMENT_RPT = 39,
    ELEM_ID_QUIET = 40,
    ELEM_ID_IBSS_DFS = 41,
    ELEM_ID_ERP_INFO = 42,
    ELEM_ID_TS_DELAY = 43,
    ELEM_ID_TCLAS_PROCESS = 44,
    ELEM_ID_HT_CAPABILITY = 45,
    ELEM_ID_QOS_CAPABILITY = 46,
    ELEM_ID_RSN = 48,
    ELEM_ID_EXT_SUPPORTED_RATES = 50,
    ELEM_ID_AP_CHANNEL_REPORT = 51,
    ELEM_ID_NEIGHBOR_REPORT = 52,
    ELEM_ID_RCPI = 53,
    ELEM_ID_MOBILITY_DOMAIN = 54,
    ELEM_ID_FAST_BSS_TRANS = 55,
    ELEM_ID_TIMEOUT_INTERVAL = 56,
    ELEM_ID_RIC_DATA = 57,
    ELEM_ID_DSE_REGISTERED_LOC = 58,
    ELEM_ID_SUPPORTED_REGCLASS = 59,
    ELEM_ID_EXT_CHAN_SWITCH_ANN = 60,
    ELEM_ID_HT_INFORMATION = 61,
    ELEM_ID_SECONDARY_CHAN_OFFSET = 62,
    ELEM_ID_BSS_ACCESS_DELAY = 63,
    ELEM_ID_ANTENNA_INFO = 64,
    ELEM_ID_RSNI = 65,
    ELEM_ID_MEAS_PILOT_TX_INFO = 66,
    ELEM_ID_BSS_AVAIL_ADM_CAP = 67,
    ELEM_ID_BSS_AC_ACCESS_DELAY = 68,
    ELEM_ID_RRM_ENABLED_CAP = 70,
    ELEM_ID_MULTI_BSSID = 71,
    ELEM_ID_2040_BSS_COEXISTENCE = 72,
    ELEM_ID_2040_BSS_INTOL_CHRPT = 73,
    ELEM_ID_OBSS_SCAN_PARAM = 74,
    ELEM_ID_RIC_DESCRIPTOR = 75,
    ELEM_ID_MANAGEMENT_MIC = 76,
    ELEM_ID_EVENT_REQUEST = 78,
    ELEM_ID_EVENT_REPORT = 79,
    ELEM_ID_DIAG_REQUEST = 80,
    ELEM_ID_DIAG_REPORT = 81,
    ELEM_ID_LOCATION_PARAM = 82,
    ELEM_ID_NONTRANS_BSSID_CAP = 83,
    ELEM_ID_SSID_LIST = 84,
    ELEM_ID_MBSSID_INDEX = 85,
    ELEM_ID_FMS_DESCRIPTOR = 86,
    ELEM_ID_FMS_REQUEST = 87,
    ELEM_ID_FMS_RESPONSE = 88,
    ELEM_ID_QOS_TRAFFIC_CAP = 89,
    ELEM_ID_BSS_MAX_IDLE_PERIOD = 90,
    ELEM_ID_TFS_REQUEST = 91,
    ELEM_ID_TFS_RESPONSE = 92,
    ELEM_ID_WNM_SLEEP_MODE = 93,
    ELEM_ID_TIM_BCAST_REQUEST = 94,
    ELEM_ID_TIM_BCAST_RESPONSE = 95,
    ELEM_ID_COLLOC_INTF_REPORT = 96,
    ELEM_ID_CHANNEL_USAGE = 97,
    ELEM_ID_TIME_ZONE = 98,
    ELEM_ID_DMS_REQUEST = 99,
    ELEM_ID_DMS_RESPONSE = 100,
    ELEM_ID_LINK_ID = 101,
    ELEM_ID_WAKEUP_SCHEDULE = 102,
    ELEM_ID_TDLS_CS_TIMING = 104,
    ELEM_ID_PTI_CONTROL = 105,
    ELEM_ID_PU_BUFFER_STATUS = 106,
    ELEM_ID_EXT_CAPABILITIES = 127,
    ELEM_ID_VHT_CAPABILITIES = 191,
    ELEM_ID_VHT_OPERATION = 192,
    ELEM_ID_WIDE_BAND_CHAN_SW = 193,
    ELEM_ID_AID = 197,
    ELEM_ID_VHT_OP_MODE_NOTIFICATION = 199,
    ELEM_ID_VENDOR_SPECIFIC = 221,
    ELEM_ID_EXTENSION = 255,
    ELEM_ID_EXT_ASSOC_DELAY_INFO = 1,
    ELEM_ID_EXT_FILS_REQ_PARAMS = 2,
    ELEM_ID_EXT_FILS_KEY_CONFIRM = 3,
    ELEM_ID_EXT_FILS_SESSION = 4,
    ELEM_ID_EXT_FILS_HLP_CONTAINER = 5,
    ELEM_ID_EXT_FILS_IP_ADDR_ASSIGN = 6,
    ELEM_ID_EXT_KEY_DELIVERY = 7,
    ELEM_ID_EXT_FILS_WRAPPED_DATA = 8,
    ELEM_ID_EXT_FTM_SYNC_INFO = 9,
    ELEM_ID_EXT_EXTENDED_REQUEST = 10,
    ELEM_ID_EXT_ESTIMATED_SERVICE_PARAMS = 11,
    ELEM_ID_EXT_FILS_PUBLIC_KEY = 12,
    ELEM_ID_EXT_FILS_NONCE = 13,
    ELEM_ID_EXT_FUTURE_CHANNEL_GUIDANCE = 14,
    ELEM_ID_EXT_OWE_DH_PARAM = 32,
    ELEM_ID_EXT_PASSWORD_IDENTIFIER = 33,
    ELEM_ID_EXT_HE_CAPABILITIES = 35,
    ELEM_ID_EXT_HE_OPERATION = 36,
    SUBELEM_ID_REPORTED_FRAME_BODY = 1,
    SUBELEM_ID_REPORTING_DETAIL = 2,
    SUBELEM_ID_PMK_R1_KEY_HOLDER_ID = 1,
    SUBELEM_ID_GTK = 2,
    SUBELEM_ID_PMK_R0_KEY_HOLDER_ID = 3,
    SUBELEM_ID_IGTK = 4,
    ELEM_ID_WAPI = 68,
} IEEEtypes_ElementId_e; // :761:3

typedef enum {
    KDE_DATA_TYPE_RESERVED = 0,
    KDE_DATA_TYPE_GTK = 1,
    KDE_DATA_TYPE_RESERVED2 = 2,
    KDE_DATA_TYPE_MACADDR = 3,
    KDE_DATA_TYPE_PMKID = 4,
    KDE_DATA_TYPE_SMK = 5,
    KDE_DATA_TYPE_NONCE = 6,
    KDE_DATA_TYPE_LIFETIME = 7,
    KDE_DATA_TYPE_ERROR = 8,
    KDE_DATA_TYPE_IGTK = 9,
} IEEEtypes_KDEDataType_e; // :777:3

typedef enum {
    PWR_MODE_ACTIVE = 0,
    PWR_MODE_PWR_SAVE = 1,
} IEEEtypes_PwrMgmtMode_e; // :785:3

typedef UINT8 IEEEtypes_Len_t; // :948:15
typedef UINT8 IEEEtypes_Addr_t; // :953:15
typedef IEEEtypes_Addr_t IEEEtypes_MacAddr_t[6]; // :958:26
typedef UINT8 IEEEtypes_SsId_t[32]; // :968:15
typedef UINT16 IEEEtypes_BcnInterval_t; // :1183:16
typedef UINT8 IEEEtypes_DtimPeriod_t; // :1189:15

typedef struct {
    IEEEtypes_ElementId_e ElementId; // +0
    IEEEtypes_Len_t Len; // +1
} IEEEtypes_InfoElementHdr_t; // :1246:25

typedef struct {
    IEEEtypes_ElementId_e ElementId; // +0
    IEEEtypes_Len_t Len; // +1
    IEEEtypes_SsId_t SsId; // +2
} IEEEtypes_SsIdElement_t; // :1266:25

typedef struct {
    IEEEtypes_ElementId_e ElementId; // +0
    IEEEtypes_Len_t Len; // +1
    UINT8 OuiType[4]; // +2
    UINT16 Ver; // +6
    UINT8 GrpKeyCipher[4]; // +8
    UINT16 PwsKeyCnt; // +12
    UINT8 PwsKeyCipherList[4]; // +14
    UINT16 AuthKeyCnt; // +18
    UINT8 AuthKeyList[4]; // +20
} IEEEtypes_WPAElement_t; // :2232:25

typedef struct {
    UINT8 PreAuth:1; // +0
    UINT8 NoPairwise:1; // +0
    UINT8 PtksaReplayCtr:2; // +0
    UINT8 GtksaReplayCtr:2; // +0
    UINT8 MFPR:1; // +0
    UINT8 MFPC:1; // +0
    UINT8 Reserved_8:1; // +1
    UINT8 PeerkeyEnabled:1; // +1
    UINT8 SppAmsduCap:1; // +1
    UINT8 SppAmsduReq:1; // +1
    UINT8 PBAC:1; // +1
    UINT8 Reserved_13_15:3; // +1
} IEEEtypes_RSNCapability_t; // :2251:25

typedef struct {
    IEEEtypes_ElementId_e ElementId; // +0
    IEEEtypes_Len_t Len; // +1
    UINT16 Ver; // +2
    UINT8 GrpKeyCipher[4]; // +4
    UINT16 PwsKeyCnt; // +8
    UINT8 PwsKeyCipherList[4]; // +10
    UINT16 AuthKeyCnt; // +14
    UINT8 AuthKeyList[4]; // +16
    IEEEtypes_RSNCapability_t RsnCap; // +20
    UINT16 PMKIDCnt; // +22
    UINT8 PMKIDList[16]; // +24
    UINT8 GrpMgmtCipher[4]; // +40
} IEEEtypes_RSNElement_t; // :2286:25

typedef enum {
    Band_2_4_GHz = 0,
    Band_5_GHz = 1,
    Band_4_GHz = 2,
} ChanBand_e; // :2672:3

typedef enum {
    ChanWidth_20_MHz = 0,
    ChanWidth_10_MHz = 1,
    ChanWidth_40_MHz = 2,
    ChanWidth_80_MHz = 3,
} ChanWidth_e; // :2682:3

typedef enum {
    SECONDARY_CHAN_NONE = 0,
    SECONDARY_CHAN_ABOVE = 1,
    SECONDARY_CHAN_BELOW = 3,
} Chan2Offset_e; // :2690:3

typedef enum {
    MANUAL_MODE = 0,
    ACS_MODE = 1,
} ScanMode_e; // :2696:3

typedef struct {
    ChanBand_e chanBand:2; // +0
    ChanWidth_e chanWidth:2; // +0
    Chan2Offset_e chan2Offset:2; // +0
    ScanMode_e scanMode:2; // +0
} BandConfig_t; // :2712:27

typedef struct {
    BandConfig_t bandConfig; // +0
    UINT8 chanNum; // +1
} ChanBandInfo_t; // :2724:27

typedef struct {
    IEEEtypes_MacAddr_t da; // +0
    IEEEtypes_MacAddr_t sa; // +6
    UINT16 type; // +12
} ether_hdr_t; // :2995:25

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/KeyApiStaDefs.h ======== */

typedef struct {
    UINT8 key[16]; // +0
    UINT8 txMicKey[8]; // +16
    UINT8 rxMicKey[8]; // +24
} key_Type_TKIP_t; // :60:25

typedef struct {
    UINT8 keyIndex; // +0
    UINT8 isDefaultTx; // +1
    UINT8 key[13]; // +2
} key_Type_WEP_t; // :71:25

typedef struct {
    UINT8 key[16]; // +0
} key_Type_AES_t; // :77:25

typedef struct {
    UINT8 keyIndex; // +0
    UINT8 isDefKey; // +1
    UINT8 key[16]; // +2
    UINT8 mickey[16]; // +18
    UINT8 rxPN[16]; // +34
} key_Type_WAPI_t; // :87:25

typedef struct {
    UINT8 ipn[6]; // +0
    UINT8 reserved[2]; // +6
    UINT8 key[16]; // +8
} key_Type_AES_CMAC_t; // :95:25

typedef struct {
    UINT16 keyType; // +0
    UINT16 keyInfo; // +2
    UINT16 keyLen; // +4
    union {
        key_Type_TKIP_t TKIP;
        key_Type_AES_t AES1;
        key_Type_WEP_t WEP;
        key_Type_WAPI_t WAPI;
        key_Type_AES_CMAC_t iGTK;
    } keyEncypt; // +6
} key_MgtMaterial_t; // :115:25

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/ap/bl_ap_init.c ======== */

void InitializeAp(cm_ConnectionInfo_t *connPtr); // :124:6
void ap_setpsk(cm_ConnectionInfo_t *connPtr, CHAR *ssid, CHAR *passphrase); // :190:6
void ap_resetConfiguration(cm_ConnectionInfo_t *connPtr); // :205:6

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/ap/bl_ap_mgmt.c ======== */

void ReInitGTK(cm_ConnectionInfo_t *connPtr); // :184:6
void KeyMgmtInit(cm_ConnectionInfo_t *connPtr); // :244:6
BufferDesc_t *PrepDefaultEapolMsg(cm_ConnectionInfo_t *connPtr, EAPOL_KeyMsg_Tx_t **pTxEapolPtr, BufferDesc_t *pBufDesc); // :408:15
Status_e GeneratePWKMsg1(cm_ConnectionInfo_t *connPtr, BufferDesc_t *pBufDesc); // :451:10

uint8_t int_rsn_ie[26]; // :497:9
uint8_t rsn_len; // :498:9

Status_e ProcessPWKMsg2(BufferDesc_t *pBufDesc); // :500:10
Status_e GeneratePWKMsg3(cm_ConnectionInfo_t *connPtr, BufferDesc_t *pBufDesc); // :595:10
Status_e ProcessPWKMsg4(BufferDesc_t *pBufDesc); // :711:10
BOOLEAN SendEAPOLMsgUsingBufDesc(cm_ConnectionInfo_t *connPtr, BufferDesc_t *pBufDesc); // :846:9
Status_e GenerateApEapolMsg(cm_ConnectionInfo_t *connPtr, keyMgmtState_e msgState, BufferDesc_t *pBufDesc); // :895:10
Status_e ProcessKeyMgmtDataAp(BufferDesc_t *pBufDesc); // :986:10
BOOLEAN IsAuthenticatorEnabled(cm_ConnectionInfo_t *connPtr); // :1046:9
void InitStaKeyInfo(void *pConn, SecurityMode_t *secType, Cipher_t *pwCipher, UINT16 staRsnCap, UINT8 akmType); // :1288:6
void RemoveAPKeyInfo(void *pConn); // :1351:6
void InitGroupKey(cm_ConnectionInfo_t *connPtr); // :1364:6

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/ap/bl_ap_mgmt_internal.c ======== */

void GenerateGTK_internal(KeyData_t *grpKeyData, UINT8 *nonce, IEEEtypes_Addr_t *StaMacAddr); // :68:6
void PopulateKeyMsg(EAPOL_KeyMsg_Tx_t *tx_eapol_ptr, Cipher_t *Cipher, UINT16 Type, UINT32 *replay_cnt, UINT8 *Nonce); // :108:6
void prepareKDE(EAPOL_KeyMsg_Tx_t *tx_eapol_ptr, KeyData_t *grKey, Cipher_t *cipher); // :179:6
BOOLEAN Encrypt_keyData(EAPOL_KeyMsg_Tx_t *tx_eapol_ptr, UINT8 *EAPOL_Encr_Key, Cipher_t *cipher); // :248:9
void KeyMgmtAp_DerivePTK(UINT8 *pPMK, IEEEtypes_MacAddr_t *da, IEEEtypes_MacAddr_t *sa, UINT8 *ANonce, UINT8 *SNonce, UINT8 *EAPOL_MIC_Key, UINT8 *EAPOL_Encr_Key, KeyData_t *newPWKey, BOOLEAN use_kdf); // :326:6
BOOLEAN KeyData_CopyWPAWP2(EAPOL_KeyMsg_Tx_t *pTxEAPOL, void *pIe); // :357:9
BOOLEAN KeyData_UpdateKeyMaterial(EAPOL_KeyMsg_Tx_t *pTxEAPOL, SecurityMode_t *pSecType, void *pWPA, void *pWPA2); // :378:9
void ROM_InitGTK(KeyData_t *grpKeyData, UINT8 *nonce, IEEEtypes_Addr_t *StaMacAddr); // :457:6
int validate4WayHandshakeIe(SecurityMode_t secType, Cipher_t pwCipher, Cipher_t grpCipher, apKeyMgmtInfoStaRom_t *pKeyMgmtInfo, UINT8 akmType, UINT16 rsnCap, Cipher_t config_mcstCipher); // :584:5
void InitKeyMgmtInfo(apKeyMgmtInfoStaRom_t *pKeyMgmtInfo, SecurityMode_t *secType, Cipher_t *pwCipher, UINT16 staRsnCap, UINT8 akmType); // :619:6

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/ap/bl_connection_mgmt.c ======== */

Status_e cm_AllocAPResources(cm_ConnectionInfo_t *connPtr); // :618:10
Status_e cm_AllocResources(cm_ConnectionInfo_t *connPtr); // :671:10
cm_ConnectionInfo_t *cm_InitConnection(UINT8 conType, UINT8 bssType, UINT8 bssNum, IEEEtypes_MacAddr_t *bssId, IEEEtypes_MacAddr_t *peerMacAddr, UINT8 channel, mdev_t *hostMdev); // :1355:22
void cm_DeleteConnection(cm_ConnectionInfo_t *connPtr); // :2297:6
apInfo_t *cm_GetApInfo(cm_ConnectionInfo_t *connPtr); // :3716:11
apSpecificData_t *cm_GetApData(cm_ConnectionInfo_t *connPtr); // :3738:19
void cm_SetPeerAddr(cm_ConnectionInfo_t *connPtr, IEEEtypes_MacAddr_t *bssId, IEEEtypes_MacAddr_t *peerMacAddr); // :5274:6
void cm_SetComData(cm_ConnectionInfo_t *connPtr, char *ssid); // :5291:6

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/bl_aes_cmac.c ======== */

static const UINT8 const_Rb[16]; // :36:20

void bl_aes_128(UINT8 *key, UINT8 *input, UINT8 *output); // :43:6
void xor_128(const UINT8 *a, const UINT8 *b, UINT8 *out); // :75:6
void leftshift_onebit(UINT8 *input, UINT8 *output); // :86:6
void generate_subkey(UINT8 *key, UINT8 *K1, UINT8 *K2); // :99:6
void padding(UINT8 *lastb, UINT8 *pad, int length); // :132:6
void bl_aes_cmac(UINT8 *key, UINT8 *input, int length, UINT8 *mac); // :154:6

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/bl_crypt.c ======== */

static const UINT8 BL_DEFAULT_IV[8]; // :115:20

int BL_AES_MEMCMP(UINT8 *dst, UINT8 *src, int len); // :127:5
void BL_AES_MEMSET(UINT8 *dst, UINT8 val, int size); // :155:6
void BL_AES_MEMCPY(UINT8 *dst, UINT8 *src, int size); // :173:6
int BL_AesEncrypt(UINT8 *kek, UINT8 kekLen, UINT8 *data, UINT8 *ret); // :275:5
int BL_AesWrap(UINT8 *kek, UINT8 kekLen, UINT32 n, UINT8 *plain, UINT8 *keyIv, UINT8 *cipher); // :329:5
int BL_AesUnWrap(UINT8 *kek, UINT8 kekLen, UINT32 n, UINT8 *cipher, UINT8 *keyIv, UINT8 *plain); // :410:5

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/bl_md5_wrapper.c ======== */

void Bl_hmac_md5(UINT8 *text_data, int text_len, UINT8 *key, int key_len, void *digest); // :19:6

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/bl_passphrase.c ======== */

void Bl_F(unsigned char *digest, unsigned char *digest1, char *password, unsigned char *ssid, int ssidlength, int iterations, int count, unsigned char *output); // :16:6
int Bl_PasswordHash(char *password, unsigned char *ssid, int ssidlength, unsigned char *output); // :70:5
int bl60x_fw_password_hash(char *password, unsigned char *ssid, int ssidlength, unsigned char *output); // :85:5

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/bl_pmk_mgmt.c ======== */

pmkElement_t pmkCache[2]; // :14:14
UINT8 PSKPassPhrase[]; // :16:7

UINT8 *pmkCacheFindPSK(UINT8 *pSsid, UINT8 ssidLen); // :28:9
void pmkCacheSetPassphrase(UINT8 *pSsid, UINT8 ssidLen, UINT8 *pPassphrase, UINT8 PassphraseLen); // :69:6
void pmkCacheInit(void); // :107:6
void pmkCacheFlush(void); // :118:6
void pmkCacheRomInit(void); // :128:6

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/bl_pmk_mgmt_internal.c ======== */

SINT8 replacementRankMax; // :55:7
SINT32 ramHook_MAX_PMK_CACHE_ENTRIES; // :57:8
pmkElement_t *ramHook_pmkCache; // :59:15
UINT8 *ramHook_PSKPassPhrase; // :60:8

pmkElement_t *pmkCacheNewElement(void); // :77:15
void pmkCacheUpdateReplacementRank(pmkElement_t *pPMKElement); // :127:6
pmkElement_t *pmkCacheFindPSKElement(UINT8 *pSsid, UINT8 ssidLen); // :215:15
void pmkCacheAddPSK(UINT8 *pSsid, UINT8 ssidLen, UINT8 *pPSK, UINT8 pPSKLen); // :313:6
void pmkCacheDeletePSK(UINT8 *pSsid, UINT8 ssidLen); // :369:6
UINT8 pmkCacheGetHexNibble(UINT8 nibble); // :388:7
void pmkCacheGeneratePSK(UINT8 *pSsid, UINT8 ssidLen, UINT8 *pPassphrase, UINT8 PassphraseLen, UINT8 *pPSK); // :406:6

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/bl_sha1_wrapper.c ======== */

void Bl_hmac_sha1(unsigned char **ppText, int *pTextLen, int textNum, unsigned char *key, int key_len, unsigned char *output, int outputLen); // :8:6
void Bl_PRF(unsigned char *key, int key_len, unsigned char *prefix, int prefix_len, unsigned char *data, int data_len, unsigned char *output, int len); // :95:6

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/bl_sha256_crypto.c ======== */

void bl_sha256_crypto_kdf(UINT8 *pKey, UINT8 key_len, char *label, UINT8 label_len, UINT8 *pContext, UINT16 context_len, UINT8 *pOutput, UINT16 output_len); // :72:6

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/bl_sta_mgmt.c ======== */

static supplicantData_t keyMgmt_SuppData[1]; // :125:25

UINT8 ProcessEAPoLPkt(BufferDesc_t *bufDesc, IEEEtypes_MacAddr_t *sa, IEEEtypes_MacAddr_t *da); // :172:7
BufferDesc_t *GetTxEAPOLBuffer(cm_ConnectionInfo_t *connPtr, EAPOL_KeyMsg_Tx_t **ppTxEapol, BufferDesc_t *pBufDesc); // :215:15
void allocSupplicantData(void *connectionPtr); // :297:6
void freeSupplicantData(void *connectionPtr); // :331:6
void UpdateEAPOLWcbLenAndTransmit(BufferDesc_t *pBufDesc, UINT16 frameLen); // :347:6
BOOLEAN keyMgmtProcessMsgExt(keyMgmtInfoSta_t *pKeyMgmtInfoSta, EAPOL_KeyMsg_t *pKeyMsg); // :387:9
void KeyMgmtInitSta(cm_ConnectionInfo_t *connPtr); // :538:6
Status_e GeneratePWKMsg2(BufferDesc_t *pEAPoLBufDesc, UINT8 *pSNonce, UINT8 *pEAPOLMICKey, UINT8 forceKeyDescVersion); // :547:10
Status_e GeneratePWKMsg4(BufferDesc_t *pEAPoLBufDesc, keyMgmtInfoSta_t *pKeyMgmtInfoSta, BOOLEAN groupKeyReceived); // :612:10
Status_e GenerateGrpMsg2(BufferDesc_t *pEAPoLBufDesc, keyMgmtInfoSta_t *pKeyMgmtInfoSta); // :686:10
BOOLEAN KeyMgmtStaHsk_Recvd_PWKMsg1(BufferDesc_t *pEAPoLBufDesc, IEEEtypes_MacAddr_t *sa, IEEEtypes_MacAddr_t *da); // :732:9
const EAPOL_KeyMsg_t *KeyMgmtStaHsk_Recvd_PWKMsg3(BufferDesc_t *pEAPoLBufDesc); // :878:23
const EAPOL_KeyMsg_t *KeyMgmtStaHsk_Recvd_GrpMsg1(BufferDesc_t *pEAPoLBufDesc); // :917:23
void ProcessKeyMgmtDataSta(BufferDesc_t *pBufDesc, IEEEtypes_MacAddr_t *sa, IEEEtypes_MacAddr_t *da); // :953:6
void keyMgmtSta_StartSession(cm_ConnectionInfo_t *connPtr, CHAR *pBssid, UINT8 *pStaAddr); // :1185:6
void supplicantInitSession(cm_ConnectionInfo_t *connPtr, CHAR *pSsid, UINT16 len, CHAR *pBssid, UINT8 *pStaAddr); // :1405:6
void init_customApp_mibs(supplicantData_t *suppData); // :1431:6
UINT8 supplicantIsEnabled(void *connectionPtr); // :1457:7
void supplicantDisable(cm_ConnectionInfo_t *connPtr); // :1472:6
void supplicantEnable(void *connectionPtr, int security_mode, void *mcstCipher, void *ucstCipher, bool is_pmf_required); // :1487:6
UINT16 keyMgmtFormatWpaRsnIe(cm_ConnectionInfo_t *connPtr, UINT8 *pos, IEEEtypes_MacAddr_t *pBssid, IEEEtypes_MacAddr_t *pStaAddr, UINT8 *pPmkid, BOOLEAN addPmkid); // :1563:8
void supplicantInit(supplicantData_t *suppData); // :1674:6
UINT16 keyMgmtGetKeySize(cm_ConnectionInfo_t *connPtr, UINT8 isPairwise); // :1711:8
uint8_t add_key_to_mac(cm_ConnectionInfo_t *connPtr, UINT8 pairwise); // :1847:9
uint8_t add_mfp_key_to_mac(cm_ConnectionInfo_t *connPtr, UINT8 pairwise); // :1934:9
void keyMgmtPlumbPairwiseKey(cm_ConnectionInfo_t *connPtr); // :1980:6
void supplicantRemoveKeyInfo(cm_ConnectionInfo_t *connPtr); // :2317:6

struct _wpa_suite_t {
    uint8_t oui[3]; // +0
    uint8_t type; // +3
}; // :2331:16

typedef struct _wpa_suite_t wpa_suite_mcast_t; // :2337:38
typedef struct _wpa_suite_t wpa_suite; // :2337:27

typedef struct {
    uint16_t count; // +0
    wpa_suite list[2]; // +2
} wpa_suite_auth_key_mgmt_t; // :2346:46

typedef struct {
    uint16_t count; // +0
    wpa_suite list[2]; // +2
} wpa_suite_ucast_t; // :2346:27

struct _IEEEtypes_Rsn_t {
    uint8_t element_id; // +0
    uint8_t len; // +1
    uint16_t version; // +2
    wpa_suite_mcast_t group_cipher; // +4
    wpa_suite_ucast_t pairwise_cipher; // +8
    wpa_suite_auth_key_mgmt_t auth_key_mgmt; // +18
}; // :2348:16

typedef struct _IEEEtypes_Rsn_t IEEEtypes_Rsn_t; // :2362:27

struct _IEEEtypes_Wpa_t {
    uint8_t element_id; // +0
    uint8_t len; // +1
    uint8_t oui[4]; // +2
    uint16_t version; // +6
    wpa_suite_mcast_t group_cipher; // +8
    wpa_suite_ucast_t pairwise_cipher; // +12
    wpa_suite_auth_key_mgmt_t auth_key_mgmt; // +22
}; // :2365:16

typedef struct _IEEEtypes_Wpa_t IEEEtypes_Wpa_t; // :2381:27

unsigned char process_rsn_ie(uint8_t *rsn_ie, Cipher_t *mcstCipher, Cipher_t *ucstCipher, bool *is_pmf_required, SecurityMode_t *security_mode, bool wpa2_prefered); // :2383:15
unsigned char process_wpa_ie(uint8_t *wpa_ie, Cipher_t *mcstCipher, Cipher_t *ucstCipher); // :2506:15

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/bl_sta_mgmt_internal.c ======== */

const UINT8 wpa_oui_none[4]; // :191:13
const UINT8 wpa_oui01[4]; // :192:13
const UINT8 wpa_oui02[4]; // :193:13
const UINT8 wpa_oui03[4]; // :194:13
const UINT8 wpa_oui04[4]; // :195:13
const UINT8 wpa_oui05[4]; // :196:13
const UINT8 wpa_oui06[4]; // :197:13
const UINT8 wpa2_oui01[4]; // :199:13
const UINT8 wpa2_oui02[4]; // :200:13
const UINT8 wpa2_oui03[4]; // :201:13
const UINT8 wpa2_oui04[4]; // :202:13
const UINT8 wpa2_oui05[4]; // :203:13
const UINT8 wpa2_oui06[4]; // :204:13
const UINT8 wpa2_oui08[4]; // :205:13
const UINT8 wpa_oui[3]; // :207:13
const UINT8 kde_oui[3]; // :208:13

void supplicantGenerateRand(UINT8 *dataOut, UINT32 length); // :210:6
void ComputeEAPOL_MIC(EAPOL_KeyMsg_t *pKeyMsg, UINT16 data_length, UINT8 *MIC_Key, UINT8 MIC_Key_length, UINT8 micKeyDescVersion); // :219:6
UINT16 keyMgmtGetKeySize_internal(RSNConfig_t *pRsnConfig, UINT8 isPairwise); // :971:8
int isApReplayCounterFresh(keyMgmtInfoSta_t *pKeyMgmtInfoSta, UINT8 *pRxReplayCount); // :1044:5
void updateApReplayCounter(keyMgmtInfoSta_t *pKeyMgmtStaInfo, UINT8 *pRxReplayCount); // :1093:6
void formEAPOLEthHdr(EAPOL_KeyMsg_Tx_t *pTxEapol, IEEEtypes_MacAddr_t *da, IEEEtypes_MacAddr_t *sa); // :1210:6
BOOLEAN IsEAPOL_MICValid(EAPOL_KeyMsg_t *pKeyMsg, UINT8 *pMICKey); // :1225:9
UINT16 KeyMgmtSta_PopulateEAPOLLengthMic(EAPOL_KeyMsg_Tx_t *pTxEapol, UINT8 *pEAPOLMICKey, UINT8 eapolProtocolVersion, UINT8 forceKeyDescVersion); // :1262:8
KDE_t *parseKeyKDE(IEEEtypes_InfoElementHdr_t *pIe); // :1314:8
KDE_t *parseKeyKDE_DataType(UINT8 *pData, SINT32 dataLen, IEEEtypes_KDEDataType_e KDEDataType); // :1343:8
KDE_t *parseKeyDataGTK(UINT8 *pKey, UINT16 len, KeyData_t *pGRKey); // :1402:8
void KeyMgmtSta_ApplyKEK(EAPOL_KeyMsg_t *pKeyMsg, KeyData_t *pGRKey, UINT8 *EAPOL_Encr_Key); // :1448:6
BOOLEAN KeyMgmtSta_IsRxEAPOLValid(keyMgmtInfoSta_t *pKeyMgmtInfoSta, EAPOL_KeyMsg_t *pKeyMsg); // :1520:9
void KeyMgmtSta_PrepareEAPOLFrame(EAPOL_KeyMsg_Tx_t *pTxEapol, EAPOL_KeyMsg_t *pRxEapol, IEEEtypes_MacAddr_t *da, IEEEtypes_MacAddr_t *sa, UINT8 *pSNonce); // :1585:6
BOOLEAN supplicantAkmIsWpaWpa2(AkmSuite_t *pAkm); // :1670:9
BOOLEAN supplicantAkmIsWpa2(AkmSuite_t *pAkm); // :1684:9
BOOLEAN supplicantAkmIsWpaWpa2Psk(AkmSuite_t *pAkm); // :1698:9
BOOLEAN supplicantAkmUsesKdf(AkmSuite_t *pAkm); // :1712:9
void supplicantConstructContext(IEEEtypes_MacAddr_t *pAddr1, IEEEtypes_MacAddr_t *pAddr2, UINT8 *pNonce1, UINT8 *pNonce2, UINT8 *pContext); // :1761:6
void KeyMgmt_DerivePTK(IEEEtypes_MacAddr_t *pAddr1, IEEEtypes_MacAddr_t *pAddr2, UINT8 *pNonce1, UINT8 *pNonce2, UINT8 *pPTK, UINT8 *pPMK, BOOLEAN use_kdf); // :1868:6
void KeyMgmtSta_DeriveKeys(UINT8 *pPMK, IEEEtypes_MacAddr_t *da, IEEEtypes_MacAddr_t *sa, UINT8 *ANonce, UINT8 *SNonce, UINT8 *EAPOL_MIC_Key, UINT8 *EAPOL_Encr_Key, KeyData_t *newPWKey, BOOLEAN use_kdf); // :1932:6
void SetEAPOLKeyDescTypeVersion(EAPOL_KeyMsg_Tx_t *pTxEapol, BOOLEAN isWPA2, BOOLEAN isKDF, BOOLEAN nonTKIP); // :1994:6
EAPOL_KeyMsg_t *GetKeyMsgNonceFromEAPOL(BufferDesc_t *pEAPoLBufDesc, keyMgmtInfoSta_t *pKeyMgmtInfoSta); // :2034:17
EAPOL_KeyMsg_t *ProcessRxEAPOL_PwkMsg3(BufferDesc_t *pEAPoLBufDesc, keyMgmtInfoSta_t *pKeyMgmtInfoSta); // :2061:17
EAPOL_KeyMsg_t *ProcessRxEAPOL_GrpMsg1(BufferDesc_t *pEAPoLBufDesc, keyMgmtInfoSta_t *pKeyMgmtInfoSta); // :2103:17
void KeyMgmtResetCounter(keyMgmtInfoSta_t *pKeyMgmtInfo); // :2155:6
void keyMgmtStaRsnSecuredTimeoutHandler(void *env); // :2219:6
void keyMgmtSta_StartSession_internal(keyMgmtInfoSta_t *pKeyMgmtInfoSta, UINT32 expiry); // :2251:6
void KeyMgmtSta_InitSession(keyMgmtInfoSta_t *pKeyMgmtInfoSta); // :2342:6

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/bl_sta_mgmt_others.c ======== */

NoHostSecurityParams_t nohostParams; // :28:24

void set_psk(char *pSsid, UINT8 ssidLen, char *phrase); // :30:6
void set_pmk(char *pSsid, UINT8 ssidLen, char *pPMK); // :43:6
char *get_pmk(char *pSsid, UINT8 ssidLen); // :53:7
void remove_psk(char *pSsid, UINT8 ssidLen); // :60:6

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/bl_supplicant.c ======== */

Status_e supplicantRestoreDefaults(void); // :38:10
void supplicantFuncInit(void); // :49:6

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/bufferMgmtLib.h ======== */

typedef void (*BufferReturnNotify_t)(void); // :66:16

struct BufferDesc {
    union {
        uint32 Interface;
        struct cm_ConnectionInfo *connPtr;
    } intf; // +0
    uint16 DataLen; // +4
    void *Buffer; // +8
}; // :71:16

typedef struct BufferDesc BufferDesc_t; // :119:3

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/crypt_new_rom.h ======== */

typedef struct {
    UINT8 enDeAction; // +0
    UINT8 *pData; // +4
} BL_ENDECRYPT_t; // :56:3

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/customApp_mib.h ======== */

typedef struct {
    UINT8 RSNEnabled:1; // +0
    UINT8 pmkidValid:1; // +0
    UINT8 rsnCapValid:1; // +0
    UINT8 grpMgmtCipherValid:1; // +0
    UINT8 rsvd:4; // +0
    SecurityMode_t wpaType; // +1
    Cipher_t mcstCipher; // +3
    Cipher_t ucstCipher; // +4
    AkmSuite_t AKM; // +5
    UINT8 PMKID[16]; // +9
    IEEEtypes_RSNCapability_t rsnCap; // +25
    Cipher_t grpMgmtCipher; // +27
} RSNConfig_t; // :37:3

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/keyApiStaTypes.h ======== */

struct cipher_key_buf {
    cipher_key_t cipher_key; // +0
}; // :157:16

typedef struct cipher_key_buf cipher_key_buf_t; // :165:27

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/keyApiStaTypes_rom.h ======== */

typedef struct {
    UINT8 ANonce[32]; // +0
    KeyData_t pwsKeyData; // +32
} eapolHskData_t; // :98:27

struct cipher_key_t {
    union ckd ckd; // +0
}; // :101:16

union ckd {
    eapolHskData_t hskData;
}; // :106:11

typedef struct cipher_key_t cipher_key_t; // :115:27

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/keyMgmtApTypes.h ======== */

typedef struct {
    apKeyMgmtInfoStaRom_t rom; // +0
    UINT8 numHskTries; // +8
    UINT32 counterLo; // +12
    UINT32 counterHi; // +16
    struct mm_timer_tag HskTimer; // +20
    UINT8 EAPOL_MIC_Key[16]; // +36
    UINT8 EAPOL_Encr_Key[16]; // +52
    UINT8 EAPOLProtoVersion; // +68
    UINT8 rsvd[3]; // +69
} apKeyMgmtInfoSta_t; // :46:3

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/keyMgmtApTypes_rom.h ======== */

typedef enum {
    HSK_NOT_STARTED = 0,
    MSG1_PENDING = 1,
    WAITING_4_MSG2 = 2,
    MSG3_PENDING = 3,
    WAITING_4_MSG4 = 4,
    GRPMSG1_PENDING = 5,
    WAITING_4_GRPMSG2 = 6,
    GRP_REKEY_MSG1_PENDING = 7,
    WAITING_4_GRP_REKEY_MSG2 = 8,
    HSK_DUMMY_STATE = 9,
    HSK_END = 10,
} keyMgmtState_e; // :35:3

typedef struct {
    UINT16 staRsnCap; // +0
    SecurityMode_t staSecType; // +2
    Cipher_t staUcstCipher; // +4
    UINT8 staAkmType; // +5
    keyMgmtState_e keyMgmtState; // +6
} apKeyMgmtInfoStaRom_t; // :45:3

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/keyMgmtCommon.h ======== */

typedef struct {
    UINT8 protocol_ver; // +0
    IEEEtypes_8021x_PacketType_e pckt_type; // +1
    UINT16 pckt_body_len; // +2
} Hdr_8021x_t; // :36:25

typedef struct {
    UINT16 KeyMIC:1; // +0
    UINT16 Secure:1; // +0
    UINT16 Error:1; // +0
    UINT16 Request:1; // +0
    UINT16 EncryptedKeyData:1; // +0
    UINT16 Reserved:3; // +0
    UINT16 KeyDescriptorVersion:3; // +0
    UINT16 KeyType:1; // +0
    UINT16 KeyIndex:2; // +0
    UINT16 Install:1; // +0
    UINT16 KeyAck:1; // +0
} key_info_t; // :59:27

typedef struct {
    UINT8 KeyID:2; // +0
    UINT8 Tx:1; // +0
    UINT8 rsvd:5; // +0
    UINT8 rsvd1; // +1
    UINT8 GTK[1]; // +2
} GTK_KDE_t; // :73:25

typedef struct {
    UINT8 type; // +0
    UINT8 length; // +1
    UINT8 OUI[3]; // +2
    UINT8 dataType; // +5
    UINT8 data[1]; // +6
} KDE_t; // :84:25

typedef struct {
    Hdr_8021x_t hdr_8021x; // +0
    UINT8 desc_type; // +4
    key_info_t key_info; // +5
    UINT16 key_length; // +7
    UINT32 replay_cnt[2]; // +9
    UINT8 key_nonce[32]; // +17
    UINT8 EAPOL_key_IV[16]; // +49
    UINT8 key_RSC[8]; // +65
    UINT8 key_ID[8]; // +73
    UINT8 key_MIC[16]; // +81
    UINT16 key_material_len; // +97
    UINT8 key_data[1]; // +99
} EAPOL_KeyMsg_t; // :109:25

typedef struct {
    Hdr_8021x_t hdr_8021x; // +0
    IEEEtypes_8021x_CodeType_e code; // +4
    UINT8 identifier; // +5
    UINT16 length; // +6
    UINT8 data[1]; // +8
} EAP_PacketMsg_t; // :120:25

typedef struct {
    ether_hdr_t ethHdr; // +0
    EAPOL_KeyMsg_t keyMsg; // +14
} EAPOL_KeyMsg_Tx_t; // :128:25

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/keyMgmtSta.h ======== */

struct supplicantData {
    BOOLEAN inUse; // +0
    IEEEtypes_SsIdElement_t hashSsId; // +4
    IEEEtypes_MacAddr_t localBssid; // +38
    IEEEtypes_MacAddr_t localStaAddr; // +44
    customMIB_RSNStats_t customMIB_RSNStats; // +50
    RSNConfig_t customMIB_RSNConfig; // +53
    keyMgmtInfoSta_t keyMgmtInfoSta; // +84
    SecurityParams_t currParams; // +408
}; // :37:16

typedef struct supplicantData supplicantData_t; // :47:3

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/keyMgmtStaHostTypes_rom.h ======== */

typedef struct {
    UINT8 Key[16]; // +0
    UINT8 RxMICKey[8]; // +16
    UINT8 TxMICKey[8]; // +24
    UINT32 TxIV32; // +32
    UINT16 TxIV16; // +36
    UINT16 KeyIndex; // +38
} KeyData_t; // :14:3

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/keyMgmtStaTypes.h ======== */

typedef struct {
    UINT8 wep40:1; // +0
    UINT8 wep104:1; // +0
    UINT8 tkip:1; // +0
    UINT8 ccmp:1; // +0
    UINT8 rsvd:4; // +0
} Cipher_t; // :34:3

typedef struct {
    UINT16 noRsn:1; // +0
    UINT16 wepStatic:1; // +0
    UINT16 wepDynamic:1; // +0
    UINT16 wpa:1; // +0
    UINT16 wpaNone:1; // +0
    UINT16 wpa2:1; // +0
    UINT16 cckm:1; // +0
    UINT16 wapi:1; // +0
    UINT16 wpa3:1; // +0
    UINT16 rsvd:7; // +0
} SecurityMode_t; // :50:27

typedef enum {
    AKM_NONE = 0,
    AKM_1X = 1,
    AKM_PSK = 2,
    AKM_FT_1X = 3,
    AKM_FT_PSK = 4,
    AKM_SHA256_1X = 5,
    AKM_SHA256_PSK = 6,
    AKM_TDLS = 7,
    AKM_CCKM = 99,
    AKM_WPA_MAX = 2,
    AKM_RSN_MAX = 6,
    AKM_SUITE_MAX = 5,
} AkmType_e; // :71:27

typedef AkmType_e AkmTypePacked_e; // :73:19

typedef struct {
    UINT8 akmOui[3]; // +0
    AkmTypePacked_e akmType; // +3
} AkmSuite_t; // :80:3

typedef struct {
    SecurityMode_t wpaType; // +0
    Cipher_t mcstCipher; // +2
    Cipher_t ucstCipher; // +3
} SecurityParams_t; // :88:3

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/keyMgmtSta_rom.h ======== */

typedef enum {
    NO_MIC_FAILURE = 0,
    FIRST_MIC_FAIL_IN_60_SEC = 1,
    SECOND_MIC_FAIL_IN_60_SEC = 2,
} MIC_Fail_State_e; // :31:3

typedef struct {
    MIC_Fail_State_e status; // +0
    BOOLEAN MICCounterMeasureEnabled; // +4
    UINT32 disableStaAsso; // +8
} MIC_Error_t; // :39:3

typedef struct {
    UINT8 TKIPICVErrors; // +0
    UINT8 TKIPLocalMICFailures; // +1
    UINT8 TKIPCounterMeasuresInvoked; // +2
} customMIB_RSNStats_t; // :47:3

typedef struct {
    UINT8 ANonce[32]; // +0
    UINT8 SNonce[32]; // +32
    UINT8 EAPOL_MIC_Key[16]; // +64
    UINT8 EAPOL_Encr_Key[16]; // +80
    UINT32 apCounterLo; // +96
    UINT32 apCounterHi; // +100
    UINT32 apCounterZeroDone; // +104
    UINT32 staCounterLo; // +108
    UINT32 staCounterHi; // +112
    BOOLEAN RSNDataTrafficEnabled; // +116
    BOOLEAN RSNSecured; // +120
    BOOLEAN pwkHandshakeComplete; // +124
    cipher_key_t *pRxDecryptKey; // +128
    KeyData_t PWKey; // +132
    KeyData_t GRKey; // +172
    KeyData_t newPWKey; // +212
    MIC_Error_t sta_MIC_Error; // +252
    struct mm_timer_tag rsnTimer; // +264
    struct cm_ConnectionInfo *connPtr; // +280
    KeyData_t IGtk; // +284
} keyMgmtInfoSta_t; // :82:3

typedef struct {
    UINT8 kck[16]; // +0
    UINT8 kek[16]; // +16
    UINT8 tk[16]; // +32
    UINT8 rxMicKey[8]; // +48
    UINT8 txMicKey[8]; // +56
} TkipPtk_t; // :100:3

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/macMgmtMain.h ======== */

typedef struct {
    IEEEtypes_SsId_t SsId; // +0
    IEEEtypes_Len_t SsIdLen; // +32
    IEEEtypes_DtimPeriod_t DtimPeriod; // +33
    IEEEtypes_BcnInterval_t BcnPeriod; // +34
    IEEEtypes_MacAddr_t BssId; // +36
    UINT16 RtsThresh; // +42
    UINT16 FragThresh; // +44
    UINT8 ShortRetryLim; // +46
    UINT8 LongRetryLim; // +47
    UINT8 MbssBcnIntFac; // +48
    UINT8 MbssCurBcnIntCnt; // +49
    UINT16 Reserved; // +50
} CommonMlmeData_t; // :367:3

struct _txQingInfo_t {
    IEEEtypes_PwrMgmtMode_e mode; // +0
}; // :426:16

typedef struct _txQingInfo_t txQingInfo_t; // :439:1

typedef struct {
    UINT16 keyExchange:1; // +0
    UINT16 authenticate:1; // +0
    UINT16 reserved:14; // +0
} Operation_t; // :550:2

typedef struct {
    Cipher_t mcstCipher; // +0
    UINT8 mcstCipherCount; // +1
    Cipher_t wpaUcstCipher; // +2
    UINT8 wpaUcstCipherCount; // +3
    Cipher_t wpa2UcstCipher; // +4
    UINT8 wpa2UcstCipherCount; // +5
    UINT16 AuthKey; // +6
    UINT16 AuthKeyCount; // +8
    Operation_t Akmp; // +10
    UINT32 GrpReKeyTime; // +12
    UINT8 PSKPassPhrase[64]; // +16
    UINT8 PSKPassPhraseLen; // +80
    UINT8 PSKValue[32]; // +81
    UINT8 MaxPwsHskRetries; // +113
    UINT8 MaxGrpHskRetries; // +114
    UINT32 PwsHskTimeOut; // +116
    UINT32 GrpHskTimeOut; // +120
} apRsnConfig_t; // :577:3

typedef struct {
    UINT32 StaAgeOutTime; // +0
    UINT32 PsStaAgeOutTime; // +4
    apRsnConfig_t RsnConfig; // +8
    CommonMlmeData_t comData; // +132
} BssConfig_t; // :695:3

typedef struct {
    BOOLEAN updatePassPhrase; // +0
    struct mm_timer_tag apMicTimer; // +4
    KeyData_t grpKeyData; // +20
    UINT8 GNonce[32]; // +60
    UINT32 grpRekeyBcnCntConfigured; // +92
    UINT32 grpRekeyBcnCntRemaining; // +96
} BssData_t; // :813:3

typedef struct {
    txQingInfo_t pwrSaveInfo; // +0
    apKeyMgmtInfoSta_t keyMgmtInfo; // +4
} staData_t; // :879:3

typedef struct {
    BssConfig_t bssConfig; // +0
    BssData_t bssData; // +184
    UINT8 ApStop_Req_Pending; // +284
} apInfo_t; // :886:3

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/md5.c ======== */

static const unsigned char PADDING[64]; // :38:28

void wpa_MD5Init(Bl_MD5_CTX *context); // :82:6
void wpa_MD5Update(Bl_MD5_CTX *context, UINT8 *input, UINT32 inputLen); // :96:6
void wpa_MD5Final(unsigned char *digest, Bl_MD5_CTX *context); // :140:6
static void wpa_MD5Transform(UINT32 *state, unsigned long *block); // :166:13

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/md5.h ======== */

typedef struct {
    unsigned long state[4]; // +0
    unsigned long count[2]; // +16
    unsigned long scratch[16]; // +24
    unsigned char buffer[64]; // +88
} Bl_MD5_CTX; // :23:1

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/nohostSecurityParams.h ======== */

typedef struct {
    UINT8 CipherType; // +0
    UINT8 MulticastCipher; // +1
    UINT8 UnicastCipher; // +2
    char PSKPassPhrase[64]; // +3
} NoHostSecurityParams_t; // :23:3

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/pmkCache.h ======== */

UINT8 PSKPassPhrase[]; // :8:14

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/pmkCache_rom.h ======== */

typedef struct {
    union {
        IEEEtypes_MacAddr_t Bssid;
        char Ssid[32];
    } key; // +0
    UINT8 PMK[32]; // +32
    UINT8 length; // +64
    UINT8 psk_length; // +65
    SINT8 replacementRank; // +66
} pmkElement_t; // :31:3

SINT8 replacementRankMax; // :104:14
SINT32 ramHook_MAX_PMK_CACHE_ENTRIES; // :107:15
pmkElement_t *ramHook_pmkCache; // :108:23
UINT8 *ramHook_PSKPassPhrase; // :109:16

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/rc4.c ======== */

struct rc4_key {
    unsigned char state[256]; // +0
    unsigned char x; // +256
    unsigned char y; // +257
}; // :5:16

typedef struct rc4_key rc4_key; // :10:3

static rc4_key rc4key; // :12:16

void prepare_key(unsigned char *key_data_ptr, int key_data_len, rc4_key *key); // :16:6
void rc4(unsigned char *buffer_ptr, int buffer_len, int skip, rc4_key *key); // :43:6
void RC4_Encrypt(unsigned char *Encr_Key, unsigned char *IV, unsigned short iv_length, unsigned char *Data, unsigned short data_length, unsigned short skipBytes); // :86:6

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/rijndael.c ======== */

static const u32 Te0[256]; // :59:18
static const u32 Te1[256]; // :125:18
static const u32 Te2[256]; // :191:18
static const u32 Te3[256]; // :257:18
static const u8 Te4[256]; // :325:17
static const u32 Td0[256]; // :392:18
static const u32 Td1[256]; // :458:18
static const u32 Td2[256]; // :524:18
static const u32 Td3[256]; // :591:18
static const u8 Td4[256]; // :657:17
static const u32 rcon[10]; // :724:18

static int rijndaelKeySetupEnc(u32 *rk, const u8 *cipherKey, int keyBits); // :738:12
void rijndael_set_key(rijndael_ctx *ctx, u8 *key, int bits, int encrypt); // :1183:1
void rijndael_decrypt(rijndael_ctx *ctx, u8 *src, u8 *dst); // :1195:1
void rijndael_encrypt(rijndael_ctx *ctx, u8 *src, u8 *dst); // :1202:1

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/rijndael.h ======== */

typedef unsigned char u8; // :44:23
typedef unsigned int u32; // :46:22

typedef struct {
    int decrypt; // +0
    int Nr; // +4
    u32 key[60]; // +8
} rijndael_ctx; // :53:3

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/sae/bl_buf.c ======== */

struct wpabuf *wpabuf_alloc(size_t len); // :15:17
void wpabuf_free(struct wpabuf *buf); // :30:6
void *wpabuf_put(struct wpabuf *buf, size_t len); // :45:8

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/sae/bl_buf.h ======== */

struct wpabuf {
    size_t size; // +0
    size_t used; // +4
    uint8 *ext_data; // +8
}; // :14:8

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/sae/bl_sae.c ======== */

void wpabuf_clear_free(struct wpabuf *buf); // :147:6
void bin_clear_free(void *bin, size_t len); // :155:6
sint32 sae_set_group(struct sae_data *sae, sint32 group); // :163:8
void sae_clear_temp_data(struct sae_data *sae); // :222:6
void sae_clear_data(struct sae_data *sae); // :245:6
static void buf_shift_right(uint8 *buf, size_t len, size_t bits); // :254:13
static sint32 sae_derive_pwe_ecc(struct sae_data *sae, const uint8 *addr1, const uint8 *addr2, const uint8 *password, size_t password_len, const char *identifier); // :560:15
sint32 sae_prepare_commit(const uint8 *addr1, const uint8 *addr2, const uint8 *password, size_t password_len, const char *identifier, struct sae_data *sae); // :856:8
sint32 sae_process_commit(struct sae_data *sae); // :993:8
sint32 sae_write_commit(struct sae_data *sae, struct wpabuf *buf, const struct wpabuf *token, const char *identifier); // :1007:8
uint16 sae_group_allowed(struct sae_data *sae, sint32 *allowed_groups, uint16 group); // :1064:8
static sint32 sae_is_password_id_elem(const uint8 *pos, const uint8 *end); // :1105:15
uint16 sae_parse_commit(struct sae_data *sae, const uint8 *data, size_t len, const uint8 **token, size_t *token_len, sint32 *allowed_groups); // :1353:8
static sint32 sae_cn_confirm_ecc(struct sae_data *sae, const uint8 *sc, const struct crypto_bignum *scalar1, const struct crypto_ec_point *element1, const struct crypto_bignum *scalar2, const struct crypto_ec_point *element2, uint8 *confirm); // :1448:15
static sint32 sae_cn_confirm_ffc(struct sae_data *sae, const uint8 *sc, const struct crypto_bignum *scalar1, const struct crypto_bignum *element1, const struct crypto_bignum *scalar2, const struct crypto_bignum *element2, uint8 *confirm); // :1474:15
sint32 sae_write_confirm(struct sae_data *sae, struct wpabuf *buf); // :1500:8
sint32 sae_check_confirm(struct sae_data *sae, const uint8 *data, size_t len); // :1538:8
const char *sae_state_txt(enum sae_state state); // :1586:14

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/sae/bl_sae.h ======== */

struct sae_temporary_data {
    uint8 kck[32]; // +0
    struct crypto_bignum *own_commit_scalar; // +32
    struct crypto_bignum *own_commit_element_ffc; // +36
    struct crypto_ec_point *own_commit_element_ecc; // +40
    struct crypto_bignum *peer_commit_element_ffc; // +44
    struct crypto_ec_point *peer_commit_element_ecc; // +48
    struct crypto_ec_point *pwe_ecc; // +52
    struct crypto_bignum *pwe_ffc; // +56
    struct crypto_bignum *sae_rand; // +60
    struct crypto_ec *ec; // +64
    sint32 prime_len; // +68
    const struct dh_group *dh; // +72
    const struct crypto_bignum *prime; // +76
    const struct crypto_bignum *order; // +80
    struct crypto_bignum *prime_buf; // +84
    struct crypto_bignum *order_buf; // +88
    struct wpabuf *anti_clogging_token; // +92
    char *pw_id; // +96
}; // :25:8

enum sae_state {
    SAE_NOTHING = 0,
    SAE_COMMITTED = 1,
    SAE_CONFIRMED = 2,
    SAE_ACCEPTED = 3,
}; // :51:6

struct sae_data {
    enum sae_state state; // +0
    uint16 send_confirm; // +2
    uint8 pmk[32]; // +4
    uint8 pmkid[16]; // +36
    struct crypto_bignum *peer_commit_scalar; // +52
    sint32 group; // +56
    uint32 sync; // +60
    uint16 rc; // +64
    struct sae_temporary_data *tmp; // +68
}; // :55:8

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/sha1.c ======== */

int Bl_SHA1Init(Bl_SHA1_CTX *context); // :38:5
int Bl_SHA1Final(Bl_SHA1_CTX *context, UINT8 *Message_Digest); // :80:5
int Bl_SHA1Update(Bl_SHA1_CTX *context, const UINT8 *message_array, unsigned int length); // :140:5
static void Bl_SHA1ProcessMessageBlock(Bl_SHA1_CTX *context); // :236:6

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/sha1.h ======== */

typedef struct {
    UINT32 Intermediate_Hash[5]; // +0
    UINT32 Length_Low; // +20
    UINT32 Length_High; // +24
    UINT32 Scratch[16]; // +28
    UINT8 Message_Block[64]; // +92
    SINT16 Message_Block_Index; // +156
    UINT8 Computed; // +158
    UINT8 Corrupted; // +159
} Bl_SHA1_CTX; // :46:1

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/sha256.c ======== */

void hmac_sha256_vector(const UINT8 *key, size_t key_len, size_t num_elem, const UINT8 **addr, const size_t *len, UINT8 *mac); // :51:6
void sha256_vector(size_t num_elem, const UINT8 **addr, size_t *len, UINT8 *mac, UINT8 *pScratchMem); // :151:6

static const unsigned long K[64]; // :190:28

int sha256_compress(struct sha256_state *md, UINT8 *msgBuf, UINT8 *pScratchMem); // :232:5
void sha256_init(struct sha256_state *md); // :302:6

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/sha_256.h ======== */

struct sha256_state {
    UINT64 length; // +0
    UINT32 state[8]; // +8
    UINT32 curlen; // +40
    UINT8 buf[64]; // +44
}; // :23:8

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/w81connmgr.h ======== */

typedef struct {
    apInfo_t *apInfo; // +0
    BufferDesc_t *apInfoBuffDesc; // +4
    ChanBandInfo_t chanBandInfo; // +8
    staData_t staData; // +12
} apSpecificData_t; // :345:3

struct cm_ConnectionInfo {
    UINT8 conType; // +0
    UINT8 staId; // +1
    UINT8 instNbr; // +2
    UINT8 gtkHwKeyId; // +3
    UINT8 ptkHwKeyId; // +4
    UINT8 mfpHwKeyId; // +5
    struct supplicantData *suppData; // +8
    CommonMlmeData_t comData; // +12
    IEEEtypes_MacAddr_t peerMacAddr; // +64
    IEEEtypes_MacAddr_t localMacAddr; // +70
    union {
        apSpecificData_t apData;
    } specDat; // +76
    cipher_key_buf_t TxRxCipherKeyBuf; // +164
}; // :787:16

typedef struct cm_ConnectionInfo cm_ConnectionInfo_t; // :807:3

cm_ConnectionInfo_t sta_conn_info; // :822:28
cm_ConnectionInfo_t *uap_conn_info; // :823:29

/* ======== components/bl602/bl602_wifi/modules/supplicant/src/wltypes.h ======== */

typedef unsigned long long UINT64; // :29:28
typedef unsigned long UINT32; // :31:23
typedef long SINT32; // :32:21
typedef unsigned short UINT16; // :33:24
typedef short SINT16; // :34:22
typedef unsigned char UINT8; // :35:23
typedef signed char SINT8; // :36:21
typedef unsigned long uint32; // :40:23
typedef int sint32; // :42:20
typedef unsigned short uint16; // :43:24
typedef unsigned char uint8; // :45:23
typedef int BOOLEAN; // :48:13
typedef char CHAR; // :53:14

typedef enum {
    FW_SUCCESS = 0,
    FAIL = 1,
} Status_e; // :113:3

typedef void mdev_t; // :661:14

enum wlan_security_type {
    WLAN_SECURITY_NONE = 0,
    WLAN_SECURITY_WEP_OPEN = 1,
    WLAN_SECURITY_WEP_SHARED = 2,
    WLAN_SECURITY_WPA = 3,
    WLAN_SECURITY_WPA2 = 4,
    WLAN_SECURITY_WPA_WPA2_MIXED = 5,
    WLAN_SECURITY_EAP_TLS = 6,
    WLAN_SECURITY_WILDCARD = 7,
}; // :664:6

/* ======== components/bl602/bl602_wifi/plf/refip/src/arch/rv32i/arch_main.c ======== */

int dbg_assert_block; // :54:5

void assert_rec(const char *condition, const char *file, int line); // :66:6
void assert_err(const char *condition, const char *file, int line); // :132:6
void assert_warn(const char *condition, const char *file, int line); // :163:6
void force_trigger(const char *msg); // :178:6
void wifi_main(void *param); // :355:6
void coex_dump_pta(void); // :527:6
void coex_dump_wifi(void); // :640:6
void coex_wifi_rf_forece_enable(int enable); // :650:6
void coex_wifi_pti_forece_enable(int enable); // :659:6

uint32_t pds_slept_time; // :684:10
uint32_t pds_woken_time; // :685:10

void coex_wifi_pta_forece_enable(int enable); // :687:6

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/dma/dma.h ======== */

struct dma_desc {
    uint32_t src; // +0
    uint32_t dest; // +4
    uint16_t length; // +8
    uint16_t ctrl; // +10
    uint32_t next; // +12
}; // :120:8

struct dma_env_tag {
    volatile struct dma_desc *last_dma[4]; // +0
}; // :137:8

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/intc/rv32i/intc.c ======== */

void intc_spurious(void); // :51:6

typedef void (*void_fn)(void); // :58:16

static const void_fn intc_irq_handlers[64]; // :61:22

static void intc_enable_irq(int index); // :113:13
void intc_init(void); // :121:6
void mac_irq(void); // :150:6
void bl_irq_handler(void); // :165:6

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/ipc/ipc_emb.c ======== */

int internel_cal_size_tx_desc; // :59:5
static TaskHandle_t xTaskToNotify; // :91:21
uint32_t ipc_emb_counter; // :92:10
const uint32_t ipc_emb_evt_bit[5]; // :98:16
struct ipc_emb_env_tag ipc_emb_env; // :110:24
const int nx_txdesc_cnt_msk[]; // :113:11

void ipc_emb_msg_dma_int_handler(void); // :565:6
void ipc_emb_dbg_dma_int_handler(void); // :583:6
void ipc_emb_dump(void); // :593:6

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/ipc/ipc_emb.h ======== */

struct ipc_emb_env_tag {
    struct co_list rx_queue; // +0
    struct co_list cfm_queue; // +8
    uint8_t ipc_rxdesc_idx; // +16
    uint8_t ipc_rxbuf_idx; // +17
    uint8_t ipc_radar_buf_idx; // +18
    uint8_t ipc_msge2a_buf_idx; // +19
    uint8_t ipc_dbg_buf_idx; // +20
    uint8_t ipc_msgacke2a_cnt; // +21
    uint32_t txdesc_idx; // +24
    volatile struct txdesc_host *txdesc; // +28
}; // :41:8

struct ipc_emb_env_tag ipc_emb_env; // :71:31
const int nx_txdesc_cnt_msk[]; // :75:18

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/ipc/ipc_shared.c ======== */

struct ipc_shared_env_tag ipc_shared_env; // :24:27

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/ipc/ipc_shared.h ======== */

struct ipc_a2e_msg {
    uint32_t dummy_word; // +0
    uint32_t msg[127]; // +4
}; // :213:8

struct ipc_shared_env_tag {
    volatile struct ipc_a2e_msg msg_a2e_buf; // +0
    volatile uint32_t pattern_addr; // +512
    volatile struct txdesc_host volatile txdesc0[4]; // +516
}; // :244:8

struct ipc_shared_env_tag ipc_shared_env; // :257:34

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/la/la_mem.h ======== */

struct la_mem_format {
    uint32_t word[4]; // +0
}; // :37:8

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/phy/bl602_phy_rf/agcmem_bl602.c ======== */

const uint32_t agcmem[512]; // :3:16

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/phy/bl602_phy_rf/phy_adapt.c ======== */

typedef struct {
    int8_t rssi; // +0
    int8_t lna; // +1
    float ppm; // +4
    uint8_t new; // +8
} input_t; // :53:3

typedef struct {
    uint8_t used; // +0
    uint32_t vif_tag; // +4
    input_t input_buffer[8]; // +8
    int8_t input_buffer_ptr; // +104
    uint32_t last_update; // +108
    int8_t rss; // +112
    int8_t rss_acq; // +113
    int8_t rss_trk; // +114
    int8_t rss_state; // +115
    uint8_t rss_hit_count; // +116
    uint32_t rss_count; // +120
    int8_t ris; // +124
    float ce; // +128
    int8_t ce_in; // +132
    int8_t ce_acq; // +133
    int8_t ce_trk; // +134
    int8_t ce_state; // +135
    int8_t ce_num_up_cmds; // +136
    int8_t ce_num_dn_cmds; // +137
} pa_state_t; // :83:3

typedef struct {
    uint32_t leg_length:12; // +0
    uint32_t leg_rate:4; // +0
    uint32_t ht_length:16; // +0
    uint32_t _ht_length:4; // +4
    uint32_t short_gi:1; // +4
    uint32_t stbc:2; // +4
    uint32_t smoothing:1; // +4
    uint32_t mcs:7; // +4
    uint32_t pre_type:1; // +4
    uint32_t format_mod:3; // +4
    uint32_t ch_bw:2; // +4
    uint32_t n_sts:3; // +4
    uint32_t lsig_valid:1; // +4
    uint32_t sounding:1; // +4
    uint32_t num_extn_ss:2; // +4
    uint32_t aggregation:1; // +4
    uint32_t fec_coding:1; // +4
    uint32_t dyn_bw:1; // +4
    uint32_t doze_not_allowed:1; // +4
    uint32_t antenna_set:8; // +8
    uint32_t partial_aid:9; // +8
    uint32_t group_id:6; // +8
    uint32_t reserved_1c:1; // +8
    int32_t rssi1:8; // +8
    int32_t rssi2:8; // +12
    int32_t agc_lna:4; // +12
    int32_t agc_rbb1:5; // +12
    int32_t agc_dg:7; // +12
    uint32_t reserved_1d:8; // +12
    uint32_t rcpi:8; // +16
    uint32_t evm1:8; // +16
    uint32_t evm2:8; // +16
    uint32_t freqoff_lo:8; // +16
    uint32_t freqoff_hi:8; // +20
    uint32_t reserved2b_1:8; // +20
    uint32_t reserved2b_2:8; // +20
    uint32_t reserved2b_3:8; // +20
} rvec_t; // :134:3

static pa_state_t pa_env[4]; // :136:19

void pa_init(void); // :138:6
int8_t pa_alloc(uint32_t vif_addr); // :161:8
void pa_free(uint8_t id); // :175:6
void pa_reset(uint8_t id); // :185:6
void pa_input(uint8_t id, struct rx_hd *rhd); // :225:6
void pa_adapt(uint8_t id); // :247:6

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/phy/bl602_phy_rf/phy_bl602.c ======== */

struct phy_bl602_cfg_tag {
    uint32_t reserved; // +0
}; // :48:8

struct phy_env_tag {
    struct phy_bl602_cfg_tag cfg; // +0
    uint16_t chnl_prim20_freq; // +4
    uint16_t chnl_center1_freq; // +6
    uint16_t chnl_center2_freq; // +8
    uint8_t band; // +10
    uint8_t chnl_type; // +11
}; // :54:8

struct phy_env_tag phy_env[1]; // :75:20
static int8_t rxgain_offset_vs_temperature; // :79:15
static int8_t poweroffset[14]; // :80:15

void phy_mdm_isr(void); // :711:6
void phy_rc_isr(void); // :716:6

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/phy/bl602_phy_rf/phy_hal.c ======== */

struct phy_hal_tag {
    int16_t temperature; // +0
    uint8_t capcode; // +2
}; // :6:8

static struct phy_hal_tag hal_env; // :15:27

uint8_t hal_get_capcode(void); // :43:9
void hal_set_capcode(uint32_t capcode); // :48:6
void hal_set_capcode_asymm(uint32_t capcode_in, uint32_t capcode_out); // :55:6
void hal_get_capcode_asymm(uint8_t *capcode_in, uint8_t *capcode_out); // :64:6
bool hal_get_temperature(int16_t *temperature); // :75:5
void hal_set_temperature(int16_t temperature); // :83:6

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/phy/bl602_phy_rf/phy_helper.c ======== */

static char *rc_state_str[8]; // :35:14
static char *rf_state_str[8]; // :47:14

struct HWStateMachineReg {
    uint32_t rxControl:6; // +0
    uint32_t reserved_7_6:2; // +0
    uint32_t txControl:9; // +0
    uint32_t reserved_23_17:7; // +0
    uint32_t macControl:8; // +0
}; // :59:8

struct dump_data_t {
    uint32_t time; // +0
    const char *func_name; // +4
    uint32_t rc_state; // +8
    uint32_t rf_state; // +12
    uint32_t mac_debugRegHWSM1; // +16
    uint32_t mac_debugRegHWSM2; // +20
    uint16_t mac_debugPortCoex; // +24
    uint16_t mac_debugPortBackoff; // +26
    uint16_t mac_debugPortMacPhyIf; // +28
    uint16_t mac_debugPortMacPhyIf2; // +30
    uint16_t phy_debugPortMainFSM; // +32
    uint16_t phy_debugPortTDTX; // +34
    uint16_t phy_debugPortDSSSCCK1; // +36
    uint16_t phy_debugPortDSSSCCKTx; // +38
}; // :68:8

static struct dump_data_t dump_data_poll[18]; // :86:27
static uint8_t dump_data_ptr; // :87:16

typedef long long (*timer_func_ptr)(...); // :237:21

void helper_channel_monitor(uint32_t chanfreq, timer_func_ptr timer_func, int nrepeats, int mon_time_ms); // :378:6

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/phy/bl602_phy_rf/phy_tcal.c ======== */

struct tcal_tag {
    int16_t prev_temperature; // +0
    uint32_t last_action_time[4]; // +4
    uint32_t last_action_temperature[4]; // +20
    int32_t last_action_out[4]; // +36
    bool enabled; // +52
}; // :29:8

static struct tcal_tag tcal_env; // :41:24

void phy_tcal_stop(void); // :69:6
void phy_tcal_handle(void); // :74:6
void phy_tcal_callback(int16_t temperature); // :104:6
void phy_tcal_txpwr(int16_t curr_temperature); // :141:6

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/phy/bl602_phy_rf/phy_trpc.c ======== */

static int8_t txpwr_vs_rate_table[3]; // :12:15
struct trpc_env_tag trpc_env; // :49:21

int8_t trpc_get_rf_min_power(void); // :120:8
uint8_t trpc_get_default_power_idx(uint8_t formatmod, uint8_t mcs); // :125:9
uint8_t trpc_get_power_idx(uint8_t formatmod, uint8_t mcs, int8_t pwr_dbm); // :134:9
void trpc_update_vs_channel(int8_t channel_MHz); // :171:6
void trpc_update_vs_temperature(int8_t temperature); // :178:6

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/phy/bl602_phy_rf/phy_trpc.h ======== */

struct trpc_env_tag {
    int8_t power_dbm_max_rf; // +0
    int8_t power_dbm_min_rf; // +1
    int8_t power_dbm_lim_reg; // +2
    int16_t channel_freq; // +4
    int8_t temperature; // +6
    int8_t temperature_compensate; // +7
}; // :13:8

struct trpc_env_tag trpc_env; // :33:28

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/phy/bl602_phy_rf/rf/Inc/bl602_rf_calib_data.h ======== */

typedef struct {
    uint32_t gpadc_oscode:12; // +0
    uint32_t rx_offset_i:10; // +0
    uint32_t rx_offset_q:10; // +0
    uint32_t rbb_cap1_fc_i:6; // +4
    uint32_t rbb_cap1_fc_q:6; // +4
    uint32_t rbb_cap2_fc_i:6; // +4
    uint32_t rbb_cap2_fc_q:6; // +4
    uint32_t tx_dc_comp_i:12; // +8
    uint32_t tx_dc_comp_q:12; // +8
    uint32_t tmx_cs:3; // +8
    uint32_t txpwr_att_rec:3; // +8
    uint32_t pa_pwrmx_osdac:4; // +12
    uint32_t tmx_csh:3; // +12
    uint32_t tmx_csl:3; // +12
    uint32_t tsen_refcode_rfcal:12; // +12
    uint32_t tsen_refcode_corner:12; // +16
    uint32_t rc32k_code_fr_ext:10; // +16
    uint32_t rc32m_code_fr_ext:8; // +16
    uint32_t saradc_oscode:10; // +20
    uint16_t fcal_4osmx:4; // +20
} rf_calib1_tag; // :37:3

typedef struct {
    uint16_t fcal:8; // +0
    uint16_t acal:5; // +0
} rf_calib2_tag; // :44:3

typedef struct {
    uint32_t rosdac_i:6; // +0
    uint32_t rosdac_q:6; // +0
    uint32_t rx_iq_gain_comp:11; // +0
    uint32_t rx_iq_phase_comp:10; // +4
} rf_calib3_tag; // :53:3

typedef struct {
    uint32_t tosdac_i:6; // +0
    uint32_t tosdac_q:6; // +0
    uint32_t tx_iq_gain_comp:11; // +0
    uint32_t tx_iq_phase_comp:10; // +4
} rf_calib4_tag; // :62:3

typedef volatile struct {
    uint32_t inited; // +0
    rf_calib1_tag cal; // +4
    rf_calib2_tag lo[21]; // +28
    rf_calib3_tag rxcal[4]; // +72
    rf_calib4_tag txcal[8]; // +104
} rf_calib_data_tag; // :72:3

rf_calib_data_tag *rf_calib_data; // :75:27

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/phy/bl602_phy_rf/rf/Inc/bl602_rf_private.h ======== */

typedef volatile struct {
    uint32_t index; // +0
    int32_t dvga; // +4
} tx_pwr_index; // :61:3

tx_pwr_index *tp_index; // :62:22

typedef volatile struct {
    uint32_t notch_en; // +0
    int32_t spur_freq; // +4
} notch_param; // :67:3

typedef volatile struct {
    uint32_t vbcore; // +0
    uint32_t iet; // +4
    uint32_t vbcore_11n; // +8
    uint32_t iet_11n; // +12
    uint32_t vbcore_11g; // +16
    uint32_t iet_11g; // +20
    uint32_t vbcore_11b; // +24
    uint32_t iet_11b; // +28
    uint32_t lo_fbdv_halfstep_en; // +32
    uint32_t lo_fbdv_halfstep_en_tx; // +36
    uint32_t lo_fbdv_halfstep_en_rx; // +40
    uint32_t clkpll_reset_postdiv; // +44
    uint32_t clkpll_dither_sel; // +48
} regs_to_opti; // :84:3

regs_to_opti *opti_regs; // :85:22

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/phy/bl602_phy_rf/rf/Src/bl602_calib_data.c ======== */

static rf_calib_data_tag data; // :9:26
rf_calib_data_tag *rf_calib_data; // :10:20

void rf_pri_init_calib_mem(void); // :14:6

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/phy/bl602_phy_rf/rf/Src/bl602_rf_private.c ======== */

static uint32_t state_rf_fsm_ctrl_hw; // :121:17
static uint32_t state_rfctrl_hw_en; // :122:17
static uint32_t state_rfcal_ctrlen; // :123:17
static uint32_t state_pucr1; // :124:17
static uint32_t state_fbdv; // :125:17
static uint32_t state_sdm1; // :126:17
static uint32_t state_sdm2; // :127:17
static uint32_t state_rbb3; // :128:17
static uint32_t state_adda1; // :129:17
static uint32_t state_dfe_ctrl_0; // :130:17
static uint32_t state_dfe_ctrl_3; // :131:17
static uint32_t state_dfe_ctrl_6; // :132:17
static uint32_t state_dfe_ctrl_7; // :133:17
static uint32_t state_trx_gain1; // :134:17
static uint32_t state_singen_ctrl0; // :135:17
static uint32_t state_singen_ctrl2; // :136:17
static uint32_t state_singen_ctrl3; // :137:17
static uint32_t state_sram_ctrl0; // :138:17
static uint32_t state_sram_ctrl1; // :139:17
static uint32_t state_sram_ctrl2; // :140:17
static uint32_t state_rf_resv_reg_1; // :141:17
static uint32_t state_pa1; // :142:17
static uint32_t state_ten_ac; // :143:17
static uint32_t state_rfif_dfe_ctrl0; // :144:17
static uint32_t state_tbb; // :145:17
static uint32_t state_vco2; // :146:17
static uint32_t init_fast; // :148:17
static int32_t temps[13]; // :150:16
static uint32_t Tchannels[6]; // :153:17
static int32_t Tchannel_os[6]; // :154:16
static int32_t Tchannel_os_low[6]; // :155:16
static int32_t index_os_pre; // :160:16
static int32_t index_os_pre_mdb; // :161:16
static int32_t dvga_os_pre; // :162:16
static int32_t up_dn; // :163:16
static int32_t Tthr; // :164:16
static int8_t temps_dvga[16]; // :165:15
static uint32_t channel_div_table[21]; // :184:17
static uint16_t channel_cnt_table[21]; // :310:17
static uint16_t channel_cnt_range[3]; // :430:17
static uint16_t fcal_div; // :438:17
static uint16_t tmxcss[3]; // :440:17
static int32_t rx_notch_para_40M[14]; // :446:16
static tx_pwr_index data; // :463:21
tx_pwr_index *tp_index; // :464:15
static int32_t tx_pwr_table_a0[16]; // :465:16
static int32_t tx_pwr_table_a1[16]; // :485:16
static int32_t tx_pwr_table[16]; // :519:16
static int32_t tx_pwr_table_origin[16]; // :520:16
static int32_t tx_pwr_os; // :522:16
static int32_t tx_pwr_os_temperature; // :523:16
static int32_t tx_pwr_ch_os_a0[14]; // :524:16
static int32_t tx_pwr_ch_os_a1[14]; // :556:16
static int32_t tx_pwr_ch_os[14]; // :572:16
static uint32_t txcal_para_a0[8]; // :574:17
static uint32_t txcal_para_a1[8]; // :608:17
static uint32_t txcal_para[8]; // :618:17
static regs_to_opti opti_regs_data; // :620:21
regs_to_opti *opti_regs; // :621:15
static uint16_t channel_cw_table[21]; // :623:17
static uint16_t channel_cnt_opt_table[40]; // :624:17

static void rf_pri_restore_state_for_cal(void); // :2049:13
static void rf_pri_singen_start(void); // :2093:13
static uint32_t rf_pri_pm_pwr(void); // :2115:17
static void rf_pri_rccal_config(uint32_t iq, uint32_t rbb_fc); // :2151:13
static void rf_pri_start_txdfe(void); // :2253:13
static int32_t rf_pri_pm_pwr_avg(uint32_t iq, uint32_t acc_len); // :2307:16
static void rf_pri_txcal_config(uint32_t param_ind, int32_t val); // :2347:13
static int32_t rf_pri_txcal_search_core(uint32_t param_ind, uint32_t center, uint32_t delta, uint32_t meas_freq); // :2373:16
static void rf_pri_txcal_config_hw(void); // :2437:13
static uint32_t rf_pri_rccal_iq(uint32_t iq); // :2540:17
static uint16_t rf_pri_fcal_meas(uint32_t cw); // :2644:17
void rf_pri_config_bandwidth(uint32_t bw); // :2739:6
void rf_pri_txcal(void); // :2748:6
void rf_pri_roscal(void); // :2931:6
void rf_pri_rccal(void); // :3097:6
void rf_pri_lo_acal(void); // :3186:6
void rf_pri_fcal(void); // :3259:6
void rf_pri_full_cal(void); // :3429:6
void rf_pri_restore_cal_reg(void); // :3468:6
void rf_pri_update_power_offset(int32_t *power_offset); // :3503:6

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/phy/bl602_phy_rf/rfc_bl602.c ======== */

static uint8_t inited; // :21:16
static double xtalfreq_MHz; // :23:15

void rfc_reset(void); // :1040:6
void rfc_ver_set(uint8_t ver); // :1047:6
void rfc_txdfe_start(void); // :1056:6
void rfc_txdfe_stop(void); // :1063:6
void rfc_txdfe_mux(int8_t signal_source); // :1070:6
void rfc_txdfe_set_dvga(int8_t dvga_qdb); // :1075:6
void rfc_txdfe_set_iqgaincomp(uint8_t en, uint16_t coeff); // :1084:6
void rfc_txdfe_set_iqphasecomp(uint8_t en, int16_t coeff); // :1090:6
void rfc_txdfe_set_dccomp(int16_t dcc_i, int16_t dcc_q); // :1097:6
void rfc_txdfe_set_iqswap(uint8_t swap_on); // :1103:6
void rfc_rxdfe_start(void); // :1113:6
void rfc_rxdfe_stop(void); // :1119:6
void rfc_rxdfe_set_iqgaincomp(uint8_t en, uint16_t coeff); // :1125:6
void rfc_rxdfe_set_iqphasecomp(uint8_t en, int16_t coeff); // :1131:6
void rfc_rxdfe_set_dccomp(int16_t dcc_i, int16_t dcc_q); // :1137:6
void rfc_rxdfe_set_iqswap(uint8_t swap_on); // :1143:6
void rfc_rxdfe_set_notch0(uint8_t en, uint8_t alpha, int8_t nrmfc); // :1148:6
void rfc_rxdfe_set_notch1(uint8_t en, uint8_t alpha, int8_t nrmfc); // :1155:6
void rfc_sg_start(uint32_t inc_step, uint32_t gain_i, uint32_t gain_q, uint32_t addr_i, uint32_t addr_q); // :1167:6
void rfc_sg_stop(void); // :1193:6
uint32_t rfc_pm_start(uint32_t insel, int32_t freq_cw, uint32_t acclen, uint32_t rshift, int32_t *raw_acc_i, int32_t *raw_acc_q); // :1205:10
void rfc_pm_stop(void); // :1272:6
void rfc_hwctrl_txrfgain(uint8_t hwctrl_on); // :1282:6
void rfc_hwctrl_rxgain(uint8_t hwctrl_on); // :1287:6
void rfc_hwctrl_txdvga(uint8_t hwctrl_on); // :1292:6
void rfc_hwctrl_calparam(uint8_t hwctrl_on); // :1297:6
void rfc_fsm_force(uint8_t state); // :1302:6
void rfc_rc_fsm_force(uint8_t state); // :1313:6
void rfc_coex_force_to(uint32_t force_enable, uint32_t bbmode); // :1327:6
void rfc_config_power(uint32_t mode, uint32_t tbb_boost, uint32_t tbb, uint32_t tmx); // :1346:6
bool rfc_config_power_ble(int32_t pwr_dbm); // :1355:5
void rfc_config_bandwidth(uint32_t mode); // :1447:6
uint32_t rfc_get_power_level(uint32_t formatmod, int32_t power); // :1479:10
void rfc_wlan_mode_force(uint32_t force_mode); // :1500:6
void rfc_apply_tx_dvga_offset(int8_t offset_qdb); // :1519:6
void rfc_apply_tx_dvga(int8_t *dvga_qdb); // :1540:6
void rfc_dump(void); // :1560:6
void rfc_apply_tx_power_offset(uint8_t channel, int8_t *power_offset); // :1643:6

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/phy/bl602_phy_rf/rfc_bl602.h ======== */

struct rfc_status_tag {
    uint32_t pkdet_out_raw:1; // +0
    uint32_t dig_xtal_clk_dbg:1; // +0
    uint32_t clk_ble_16m_dbg:1; // +0
    uint32_t clk_rc_dbg0:1; // +0
    uint32_t clk_adcpow_dbg:1; // +0
    uint32_t clk_fetx_dbg:1; // +0
    uint32_t clk_ferx_dbg:1; // +0
    uint32_t clkpll_postdiv_outclk_dbg:1; // +0
    uint32_t clk_soc_480m_dbg:1; // +0
    uint32_t clk_soc_240m_dbg:1; // +0
    uint32_t clk_soc_192m_dbg:1; // +0
    uint32_t clk_soc_160m_dbg:1; // +0
    uint32_t clk_soc_120m_dbg:1; // +0
    uint32_t clk_soc_96m_dbg:1; // +0
    uint32_t clk_soc_80m_dbg:1; // +0
    uint32_t clk_soc_48m_dbg:1; // +0
    uint32_t clk_soc_32m_dbg:1; // +0
    uint32_t pad_pkdet_out:1; // +0
    uint32_t pad_agc_ctrl:10; // +0
    uint32_t rf_pkdet_rst_hw:1; // +0
    uint32_t rf_cbw_wifi:2; // +0
    uint32_t lo_unlocked:1; // +0
    uint32_t fsm_pu_txbuf:1; // +4
    uint32_t fsm_pu_rxbuf:1; // +4
    uint32_t fsm_pu_tosdac:1; // +4
    uint32_t fsm_pu_dac:1; // +4
    uint32_t fsm_trsw_en:1; // +4
    uint32_t fsm_pu_adc:1; // +4
    uint32_t fsm_pu_pkdet:1; // +4
    uint32_t fsm_pu_rbb:1; // +4
    uint32_t fsm_pu_rmx:1; // +4
    uint32_t fsm_pu_rmxgm:1; // +4
    uint32_t fsm_pu_lna:1; // +4
    uint32_t clk_rc_dbg2:1; // +4
    uint32_t rf_lna_ind_hw:4; // +4
    uint32_t rf_rbb_ind_hw:4; // +4
    uint32_t rf_tx_pow_lvl_hw:4; // +4
    uint32_t rf_rc_lo_rdy:1; // +4
    uint32_t rf_fsm_state:3; // +4
    uint32_t rf_rc_state:3; // +4
    uint32_t clk_rc_dbg:1; // +4
}; // :84:8

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/phy/phy.h ======== */

struct phy_channel_info {
    uint32_t info1; // +0
    uint32_t info2; // +4
}; // :97:8

struct phy_cfg_tag {
    uint32_t parameters[16]; // +0
}; // :113:8

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/phy/rf.c ======== */

void rf_clkpll_isr(void); // :45:6

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/phyif/phyif_utils.c ======== */

typedef struct {
    uint32_t leg_length:12; // +0
    uint32_t leg_rate:4; // +0
    uint32_t ht_length:16; // +0
    uint32_t _ht_length:4; // +4
    uint32_t short_gi:1; // +4
    uint32_t stbc:2; // +4
    uint32_t smoothing:1; // +4
    uint32_t mcs:7; // +4
    uint32_t pre_type:1; // +4
    uint32_t format_mod:3; // +4
    uint32_t ch_bw:2; // +4
    uint32_t n_sts:3; // +4
    uint32_t lsig_valid:1; // +4
    uint32_t sounding:1; // +4
    uint32_t num_extn_ss:2; // +4
    uint32_t aggregation:1; // +4
    uint32_t fec_coding:1; // +4
    uint32_t dyn_bw:1; // +4
    uint32_t doze_not_allowed:1; // +4
    uint32_t antenna_set:8; // +8
    uint32_t partial_aid:9; // +8
    uint32_t group_id:6; // +8
    uint32_t reserved_1c:1; // +8
    int32_t rssi1:8; // +8
    int32_t rssi2:8; // +12
    int32_t rssi3:8; // +12
    int32_t rssi4:8; // +12
    uint32_t reserved_1d:8; // +12
    uint32_t rcpi:8; // +16
    uint32_t evm1:8; // +16
    uint32_t evm2:8; // +16
    uint32_t evm3:8; // +16
    uint32_t evm4:8; // +20
    uint32_t reserved2b_1:8; // +20
    uint32_t reserved2b_2:8; // +20
    uint32_t reserved2b_3:8; // +20
} phyif_utils_recvtable_priv_t; // :47:3

int phyif_utils_decode(phyif_utils_recvtable_t *vec, int8_t *ppm); // :49:5

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/phyif/phyif_utils.h ======== */

typedef struct {
    uint32_t recvtable1; // +0
    uint32_t recvtable2; // +4
    uint32_t recvtable3; // +8
    uint32_t recvtable4; // +12
    uint32_t recvtable5; // +16
    uint32_t recvtable6; // +20
} phyif_utils_recvtable_t; // :11:3

/* ======== components/bl602/bl602_wifi/plf/refip/src/driver/sysctrl/sysctrl.c ======== */

void sysctrl_init(void); // :34:6
