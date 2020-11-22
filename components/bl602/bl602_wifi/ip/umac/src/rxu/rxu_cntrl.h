
typedef struct rx_cntrl_dupli rx_cntrl_dupli, *rx_cntrl_dupli;

typedef struct mac_addr mac_addr, *mac_addr;

typedef ushort uint16_t;

struct mac_addr {
    uint16_t array[3];
};

struct rx_cntrl_dupli {
    struct mac_addr last_src_addr;
    uint16_t last_seq_cntl;
};

typedef struct rx_cntrl_ipcdesc rx_cntrl_ipcdesc, *rx_cntrl_ipcdesc;

typedef ulong uint32_t;

struct rx_cntrl_ipcdesc {
    uint32_t host_id;
};

typedef struct rx_cntrl_pm_mon rx_cntrl_pm_mon, *rx_cntrl_pm_mon;

typedef uchar uint8_t;

typedef bool _Bool;

struct rx_cntrl_pm_mon {
    struct mac_addr addr;
    uint8_t pm_state;
    _Bool mon;
};

typedef struct rx_cntrl_rx_status rx_cntrl_rx_status, *rx_cntrl_rx_status;

typedef ulonglong __uint64_t;

typedef __uint64_t uint64_t;

typedef struct key_info_tag key_info_tag, *key_info_tag;

typedef union anon_union.conflict97f3_for_u anon_union.conflict97f3_for_u, *anon_union.conflict97f3_for_u;

typedef struct anon_struct.conflict9793 anon_struct.conflict9793, *anon_struct.conflict9793;

typedef struct anon_struct.conflict97ca anon_struct.conflict97ca, *anon_struct.conflict97ca;

struct anon_struct.conflict97ca {
    uint32_t key[4];
};

struct anon_struct.conflict9793 {
    uint32_t tx_key[2];
    uint32_t rx_key[2];
};

union anon_union.conflict97f3_for_u {
    struct anon_struct.conflict9793 mic;
    struct anon_struct.conflict97ca mfp;
};

struct rx_cntrl_rx_status {
    uint16_t frame_cntl;
    uint16_t seq_cntl;
    uint16_t sn;
    uint8_t fn;
    uint8_t tid;
    uint8_t machdr_len;
    uint8_t sta_idx;
    uint8_t vif_idx;
    uint8_t dst_idx;
    undefined field_0xc;
    undefined field_0xd;
    undefined field_0xe;
    undefined field_0xf;
    uint64_t pn;
    uint32_t statinfo;
    uint32_t host_buf_addr;
    struct key_info_tag * key;
    struct mac_addr da;
    struct mac_addr sa;
    uint8_t frame_info;
    _Bool eth_len_present;
    uint8_t payl_offset;
    undefined field_0x33;
    undefined field_0x34;
    undefined field_0x35;
    undefined field_0x36;
    undefined field_0x37;
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

typedef enum rx_status_bits {
    RX_STAT_LEN_UPDATE=8,
    RX_STAT_DELETE=4,
    RX_STAT_FORWARD=1,
    RX_STAT_ALLOC=2,
    RX_STAT_COPY=32,
    RX_STAT_ETH_LEN_UPDATE=16
} rx_status_bits;

typedef struct rxu_cntrl_env_tag rxu_cntrl_env_tag, *rxu_cntrl_env_tag;

typedef struct co_list co_list, *co_list;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

struct co_list_hdr {
    struct co_list_hdr * next;
};

struct co_list {
    struct co_list_hdr * first;
    struct co_list_hdr * last;
};

struct rxu_cntrl_env_tag {
    struct rx_cntrl_rx_status rx_status;
    struct co_list rxdesc_pending;
    struct co_list rxdesc_ready;
    struct rx_cntrl_ipcdesc rx_ipcdesc_stat;
    struct co_list rxu_defrag_free;
    struct co_list rxu_defrag_used;
    struct rx_cntrl_dupli rxu_dupli;
    struct mac_addr * mac_addr_ptr;
    struct rx_cntrl_pm_mon pm_mon;
    uint32_t ttr;
    undefined field_0x74;
    undefined field_0x75;
    undefined field_0x76;
    undefined field_0x77;
};

void rxu_cntrl_frame_handle(void);
typedef enum rxu_cntrl_frame_info_pos {
    RXU_CNTRL_MIC_CHECK_NEEDED=1,
    RXU_CNTRL_PN_CHECK_NEEDED=2,
    RXU_CNTRL_NEW_MESH_PEER=4
} rxu_cntrl_frame_info_pos;

void rxu_cntrl_get_pm(void);
void rxu_cntrl_init(void);
void rxu_cntrl_monitor_pm(void);
typedef struct rxu_mic_calc rxu_mic_calc, *rxu_mic_calc;

typedef struct mic_calc mic_calc, *mic_calc;

struct mic_calc {
    uint32_t mic_key_least;
    uint32_t mic_key_most;
    uint32_t last_m_i;
    uint8_t last_m_i_len;
    undefined field_0xd;
    undefined field_0xe;
    undefined field_0xf;
};

struct rxu_mic_calc {
    struct mic_calc mic_calc;
    uint32_t last_bytes[2];
};

