
typedef union anon_union.conflictcc05_for_u anon_union.conflictcc05_for_u, *anon_union.conflictcc05_for_u;

typedef struct anon_struct.conflictca3d anon_struct.conflictca3d, *anon_struct.conflictca3d;

typedef struct anon_struct.conflictcb0a anon_struct.conflictcb0a, *anon_struct.conflictcb0a;

typedef ushort uint16_t;

typedef bool _Bool;

typedef uchar uint8_t;

typedef ulong uint32_t;

typedef char int8_t;

typedef struct txl_frame_desc_tag txl_frame_desc_tag, *txl_frame_desc_tag;

typedef struct txdesc txdesc, *txdesc;

typedef struct txl_frame_cfm_tag txl_frame_cfm_tag, *txl_frame_cfm_tag;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

typedef struct hostdesc hostdesc, *hostdesc;

typedef struct umacdesc umacdesc, *umacdesc;

typedef struct lmacdesc lmacdesc, *lmacdesc;

typedef struct tx_hw_desc tx_hw_desc, *tx_hw_desc;

typedef struct tx_cfm_tag tx_cfm_tag, *tx_cfm_tag;

void cfm_func_ptr(void * , uint32_t );
typedef uint32_t u32_l;

typedef uint16_t u16_l;

typedef struct mac_addr mac_addr, *mac_addr;

typedef uint8_t u8_l;

typedef struct txl_buffer_control txl_buffer_control, *txl_buffer_control;

typedef struct tx_agg_desc tx_agg_desc, *tx_agg_desc;

typedef struct txl_buffer_tag txl_buffer_tag, *txl_buffer_tag;

typedef struct tx_hd tx_hd, *tx_hd;

typedef union anon_union.conflictbf1b_for_field_0 anon_union.conflictbf1b_for_field_0, *anon_union.conflictbf1b_for_field_0;

typedef struct dma_desc dma_desc, *dma_desc;

typedef struct tx_pbd tx_pbd, *tx_pbd;

typedef union anon_union.conflict9ef7_for_field_3 anon_union.conflict9ef7_for_field_3, *anon_union.conflict9ef7_for_field_3;

typedef union anon_union.conflict9f1c_for_field_4 anon_union.conflict9f1c_for_field_4, *anon_union.conflict9f1c_for_field_4;

typedef union anon_union.conflict9f41_for_field_5 anon_union.conflict9f41_for_field_5, *anon_union.conflict9f41_for_field_5;

typedef struct tx_policy_tbl tx_policy_tbl, *tx_policy_tbl;

typedef struct tx_compressed_policy_tbl tx_compressed_policy_tbl, *tx_compressed_policy_tbl;

struct txl_frame_cfm_tag {
    void (* cfm_func)(void *, uint32_t);
    void * env;
};

struct tx_cfm_tag {
    uint16_t pn[4];
    uint16_t sn;
    uint16_t timestamp;
    int8_t credits;
    uint8_t ampdu_size;
    uint8_t pad[2];
    uint32_t status;
};

struct co_list_hdr {
    struct co_list_hdr * next;
};

struct umacdesc {
    struct txl_buffer_control * buf_control;
    uint32_t buff_offset;
    uint16_t payl_len;
    uint8_t head_len;
    uint8_t hdr_len_802_2;
    uint8_t tail_len;
    undefined field_0xd;
    undefined field_0xe;
    undefined field_0xf;
};

union anon_union.conflict9ef7_for_field_3 {
    uint32_t first_pbd_ptr;
    uint32_t sec_user1_ptr;
};

union anon_union.conflict9f41_for_field_5 {
    uint32_t dataendptr;
    uint32_t sec_user3_ptr;
};

union anon_union.conflict9f1c_for_field_4 {
    uint32_t datastartptr;
    uint32_t sec_user2_ptr;
};

struct tx_hd {
    uint32_t upatterntx;
    uint32_t nextfrmexseq_ptr;
    uint32_t nextmpdudesc_ptr;
    union anon_union.conflict9ef7_for_field_3 field_3;
    union anon_union.conflict9f1c_for_field_4 field_4;
    union anon_union.conflict9f41_for_field_5 field_5;
    uint32_t frmlen;
    uint32_t frmlifetime;
    uint32_t phyctrlinfo;
    uint32_t policyentryaddr;
    uint32_t optlen[3];
    uint32_t macctrlinfo1;
    uint32_t macctrlinfo2;
    uint32_t statinfo;
    uint32_t mediumtimeused;
};

struct tx_hw_desc {
    struct tx_cfm_tag * cfm_ptr;
    struct tx_hd thd;
};

struct mac_addr {
    u8_l array[6];
};

struct hostdesc {
    uint32_t pbuf_addr;
    u32_l packet_addr;
    u16_l packet_len;
    undefined field_0xa;
    undefined field_0xb;
    u32_l status_addr;
    struct mac_addr eth_dest_addr;
    struct mac_addr eth_src_addr;
    u16_l ethertype;
    u16_l pn[4];
    u16_l sn;
    u16_l timestamp;
    u8_l tid;
    u8_l vif_idx;
    u8_l staid;
    undefined field_0x2d;
    u16_l flags;
    u32_l pbuf_chained_ptr[4];
    u32_l pbuf_chained_len[4];
};

struct lmacdesc {
    struct tx_agg_desc * agg_desc;
    struct txl_buffer_tag * buffer;
    struct tx_hw_desc * hw_desc;
};

struct txdesc {
    struct co_list_hdr list_hdr;
    struct hostdesc host;
    struct umacdesc umac;
    struct lmacdesc lmac;
    struct tx_hw_desc hw_desc;
    struct tx_cfm_tag hw_cfm;
    uint32_t buf[128];
};

struct txl_frame_desc_tag {
    struct txdesc txdesc;
    struct txl_frame_cfm_tag cfm;
    uint8_t type;
    _Bool postponed;
    _Bool keep_desc;
    undefined field_0x2d7;
};

struct anon_struct.conflictcb0a {
    uint32_t dummy;
    struct txl_frame_desc_tag bcn_desc;
    uint16_t bcn_len;
    uint16_t tim_len;
    uint16_t tim_bitmap_set;
    uint16_t bcn_int;
    uint8_t bcn_tbtt_ratio;
    uint8_t bcn_tbtt_cnt;
    _Bool bcn_configured;
    uint8_t dtim_count;
    uint8_t tim_n1;
    uint8_t tim_n2;
    uint8_t bc_mc_status;
    uint8_t csa_count;
    uint8_t csa_oft[2];
    uint8_t ps_sta_cnt;
    undefined field_0x2ef;
    uint16_t ctrl_port_ethertype;
    undefined field_0x2f2;
    undefined field_0x2f3;
};

struct tx_policy_tbl {
    uint32_t upatterntx;
    uint32_t phycntrlinfo1;
    uint32_t phycntrlinfo2;
    uint32_t maccntrlinfo1;
    uint32_t maccntrlinfo2;
    uint32_t ratecntrlinfo[4];
    uint32_t powercntrlinfo[4];
};

struct tx_compressed_policy_tbl {
    uint32_t upatterntx;
    uint32_t sec_user_control;
};

union anon_union.conflictbf1b_for_field_0 {
    struct tx_policy_tbl policy_tbl;
    struct tx_compressed_policy_tbl comp_pol_tbl;
};

struct dma_desc {
    uint32_t src;
    uint32_t dest;
    uint16_t length;
    uint16_t ctrl;
    uint32_t next;
};

struct tx_pbd {
    uint32_t upatterntx;
    uint32_t next;
    uint32_t datastartptr;
    uint32_t dataendptr;
    uint32_t bufctrlinfo;
};

struct txl_buffer_control {
    union anon_union.conflictbf1b_for_field_0 field_0;
    uint32_t mac_control_info;
    uint32_t phy_control_info;
};

struct txl_buffer_tag {
    uint32_t length;
    uint32_t lenheader;
    uint32_t lenpad;
    uint32_t flags;
    struct txl_buffer_tag * next;
    struct txdesc * txdesc;
    struct dma_desc dma_desc[1];
    struct dma_desc dma_desc_pat;
    struct tx_pbd tbd;
    struct tx_pbd tbd_body[8];
    uint8_t user_idx;
    undefined field_0xed;
    undefined field_0xee;
    undefined field_0xef;
    struct txl_buffer_control buffer_control;
    struct tx_pbd tkip_mic_icv_pbd;
    uint8_t tkip_mic_icv[12];
    uint32_t[0] payload;
};

struct anon_struct.conflictca3d {
    uint16_t listen_interval;
    _Bool dont_wait_bcmc;
    uint8_t ps_retry;
    uint8_t ap_id;
    undefined field_0x5;
    undefined field_0x6;
    undefined field_0x7;
    uint32_t uapsd_last_rxtx;
    uint8_t uapsd_queues;
    undefined field_0xd;
    undefined field_0xe;
    undefined field_0xf;
    uint32_t mon_last_tx;
    uint32_t mon_last_crc;
    uint8_t beacon_loss_cnt;
    int8_t rssi;
    int8_t rssi_thold;
    uint8_t rssi_hyst;
    _Bool rssi_status;
    uint8_t csa_count;
    _Bool csa_occured;
    undefined field_0x1f;
};

union anon_union.conflictcc05_for_u {
    struct anon_struct.conflictca3d sta;
    struct anon_struct.conflictcb0a ap;
};

struct tx_agg_desc {
    uint8_t reserved;
};

typedef union anon_union.conflictcc05 anon_union.conflictcc05, *anon_union.conflictcc05;

union anon_union.conflictcc05 {
    struct anon_struct.conflictca3d sta;
    struct anon_struct.conflictcb0a ap;
};

typedef enum VIF_AP_BCMC_STATUS {
    VIF_AP_BCMC_MOREDATA=2,
    VIF_AP_BCMC_BUFFERED=1
} VIF_AP_BCMC_STATUS;

typedef struct vif_info_tag vif_info_tag, *vif_info_tag;

typedef struct mm_timer_tag mm_timer_tag, *mm_timer_tag;

typedef struct mac_addr mac_addr, *mac_addr;

typedef struct chan_ctxt_tag chan_ctxt_tag, *chan_ctxt_tag;

typedef struct chan_tbtt_tag chan_tbtt_tag, *chan_tbtt_tag;

typedef struct co_list co_list, *co_list;

typedef struct mac_bss_info mac_bss_info, *mac_bss_info;

typedef struct key_info_tag key_info_tag, *key_info_tag;

typedef struct mm_chan_ctxt_add_req mm_chan_ctxt_add_req, *mm_chan_ctxt_add_req;

void cb_timer_func_ptr(void * );
typedef uint16_t ke_task_id_t;

typedef struct mac_htcapability mac_htcapability, *mac_htcapability;

typedef struct mac_ssid mac_ssid, *mac_ssid;

typedef struct scan_chan_tag scan_chan_tag, *scan_chan_tag;

typedef struct mac_rateset mac_rateset, *mac_rateset;

typedef struct mac_edca_param_set mac_edca_param_set, *mac_edca_param_set;

typedef struct mobility_domain mobility_domain, *mobility_domain;

typedef struct SecurityMode_t SecurityMode_t, *SecurityMode_t;

typedef struct Cipher_t Cipher_t, *Cipher_t;

typedef ulonglong __uint64_t;

typedef __uint64_t uint64_t;

typedef union anon_union.conflict97f3_for_u anon_union.conflict97f3_for_u, *anon_union.conflict97f3_for_u;

typedef ushort UINT16;

typedef uchar UINT8;

typedef struct anon_struct.conflict9793 anon_struct.conflict9793, *anon_struct.conflict9793;

typedef struct anon_struct.conflict97ca anon_struct.conflict97ca, *anon_struct.conflict97ca;

struct Cipher_t {
    UINT8 wep40:1;
    UINT8 wep104:1;
    UINT8 tkip:1;
    UINT8 ccmp:1;
    UINT8 rsvd:4;
};

struct chan_tbtt_tag {
    struct co_list_hdr list_hdr;
    uint32_t time;
    uint8_t vif_index;
    uint8_t priority;
    uint8_t status;
    undefined field_0xb;
};

struct mac_edca_param_set {
    uint8_t qos_info;
    uint8_t acm;
    undefined field_0x2;
    undefined field_0x3;
    uint32_t ac_param[4];
};

struct mac_rateset {
    uint8_t length;
    uint8_t array[12];
};

struct anon_struct.conflict9793 {
    uint32_t tx_key[2];
    uint32_t rx_key[2];
};

struct anon_struct.conflict97ca {
    uint32_t key[4];
};

union anon_union.conflict97f3_for_u {
    struct anon_struct.conflict9793 mic;
    struct anon_struct.conflict97ca mfp;
};

struct mm_timer_tag {
    struct co_list_hdr list_hdr;
    void (* cb)(void *);
    void * env;
    uint32_t time;
};

struct mm_chan_ctxt_add_req {
    uint8_t band;
    uint8_t type;
    uint16_t prim20_freq;
    uint16_t center1_freq;
    uint16_t center2_freq;
    int8_t tx_power;
    undefined field_0x9;
};

struct mac_addr {
    uint16_t array[3];
};

struct co_list {
    struct co_list_hdr * first;
    struct co_list_hdr * last;
};

struct key_info_tag {
    uint64_t rx_pn[9];
    uint64_t tx_pn;
    union anon_union.conflict97f3_for_u u;
    uint8_t cipher;
    uint8_t key_idx;
    uint8_t hw_key_idx;
    _Bool valid;
    undefined field_0x64;
    undefined field_0x65;
    undefined field_0x66;
    undefined field_0x67;
};

struct SecurityMode_t {
    UINT16 noRsn:1;
    UINT16 wepStatic:1;
    UINT16 wepDynamic:1;
    UINT16 wpa:1;
    UINT16 wpaNone:1;
    UINT16 wpa2:1;
    UINT16 cckm:1;
    UINT16 wapi:1;
    UINT16 wpa3:1;
    UINT16 rsvd:7;
};

struct mobility_domain {
    uint16_t mdid;
    uint8_t ft_capability_policy;
    undefined field_0x3;
};

struct mac_htcapability {
    uint16_t ht_capa_info;
    uint8_t a_mpdu_param;
    uint8_t mcs_rate[16];
    undefined field_0x13;
    uint16_t ht_extended_capa;
    undefined field_0x16;
    undefined field_0x17;
    uint32_t tx_beamforming_capa;
    uint8_t asel_capa;
    undefined field_0x1d;
    undefined field_0x1e;
    undefined field_0x1f;
};

struct mac_ssid {
    uint8_t length;
    uint8_t array[32];
    uint8_t array_tail[1];
};

struct mac_bss_info {
    struct mac_htcapability ht_cap;
    struct mac_addr bssid;
    struct mac_ssid ssid;
    uint16_t bsstype;
    undefined field_0x4a;
    undefined field_0x4b;
    struct scan_chan_tag * chan;
    uint16_t center_freq1;
    uint16_t center_freq2;
    uint16_t beacon_period;
    uint16_t cap_info;
    struct mac_rateset rate_set;
    undefined field_0x65;
    undefined field_0x66;
    undefined field_0x67;
    struct mac_edca_param_set edca_param;
    int8_t rssi;
    int8_t ppm_rel;
    int8_t ppm_abs;
    uint8_t high_11b_rate;
    uint16_t prot_status;
    uint8_t bw;
    uint8_t phy_bw;
    uint8_t power_constraint;
    undefined field_0x85;
    undefined field_0x86;
    undefined field_0x87;
    uint32_t valid_flags;
    struct mobility_domain mde;
    _Bool is_supplicant_enabled;
    struct SecurityMode_t wpa_wpa2_wep;
    struct Cipher_t wpa_mcstCipher;
    struct Cipher_t wpa_ucstCipher;
    struct Cipher_t rsn_mcstCipher;
    struct Cipher_t rsn_ucstCipher;
    _Bool is_pmf_required;
    _Bool is_wpa2_prefered;
    uint8_t rsn_wpa_ie[32];
    uint8_t rsn_wpa_ie_len;
    uint16_t beacon_interval;
    uint16_t aid_bitmap;
    uint16_t max_listen_interval;
    uint8_t sec_type;
    undefined field_0xc1;
    undefined field_0xc2;
    undefined field_0xc3;
};

struct vif_info_tag {
    struct co_list_hdr list_hdr;
    uint32_t prevent_sleep;
    uint32_t txq_params[4];
    struct mm_timer_tag tbtt_timer;
    struct mm_timer_tag tmr_bcn_to;
    struct mac_addr bssid;
    undefined field_0x3e;
    undefined field_0x3f;
    struct chan_ctxt_tag * chan_ctxt;
    struct chan_tbtt_tag tbtt_switch;
    struct mac_addr mac_addr;
    uint8_t type;
    uint8_t index;
    _Bool active;
    int8_t tx_power;
    int8_t user_tx_power;
    undefined field_0x5b;
    union anon_union.conflictcc05_for_u u;
    struct co_list sta_list;
    struct mac_bss_info bss_info;
    undefined field_0x41c;
    undefined field_0x41d;
    undefined field_0x41e;
    undefined field_0x41f;
    struct key_info_tag key_info[4];
    struct key_info_tag * default_key;
    uint32_t flags;
    struct mm_chan_ctxt_add_req csa_channel;
    undefined field_0x5d2;
    undefined field_0x5d3;
    undefined field_0x5d4;
    undefined field_0x5d5;
    undefined field_0x5d6;
    undefined field_0x5d7;
};

struct scan_chan_tag {
    uint16_t freq;
    uint8_t band;
    uint8_t flags;
    int8_t tx_power;
    undefined field_0x5;
};

struct chan_ctxt_tag {
    struct co_list_hdr list_hdr;
    struct mm_chan_ctxt_add_req channel;
    ke_task_id_t taskid;
    uint16_t nb_slots;
    uint16_t nb_rem_slots;
    uint16_t nb_res_slots;
    uint8_t status;
    uint8_t idx;
    uint8_t nb_linked_vif;
    uint8_t vif_index;
    undefined field_0x1a;
    undefined field_0x1b;
};

void vif_mgmt_add_key(void);
void vif_mgmt_bcn_recv(void);
void vif_mgmt_bcn_to_prog(void);
void vif_mgmt_del_key(void);
typedef struct vif_mgmt_env_tag vif_mgmt_env_tag, *vif_mgmt_env_tag;

struct vif_mgmt_env_tag {
    struct co_list free_list;
    struct co_list used_list;
    uint8_t vif_sta_cnt;
    uint8_t vif_ap_cnt;
    uint8_t low_bcn_int_idx;
    undefined field_0x13;
};

vif_info_tag * vif_mgmt_first_used(void);
mac_addr * vif_mgmt_get_addr(uint8_t vif_idx);
void vif_mgmt_get_first_ap_inf(void);
uint8_t vif_mgmt_get_type(uint8_t vif_idx);
void vif_mgmt_init(void);
vif_info_tag * vif_mgmt_next(vif_info_tag * vif_entry);
void vif_mgmt_register(void);
void vif_mgmt_send_postponed_frame(void);
void vif_mgmt_set_ap_bcn_int(void);
void vif_mgmt_switch_channel(void);
void vif_mgmt_unregister(void);
int vif_mgmt_used_cnt(void);
