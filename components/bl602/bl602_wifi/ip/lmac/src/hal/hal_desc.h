
typedef union anon_union.conflict9ef7_for_field_3 anon_union.conflict9ef7_for_field_3, *anon_union.conflict9ef7_for_field_3;

typedef ulong uint32_t;

union anon_union.conflict9ef7_for_field_3 {
    uint32_t first_pbd_ptr;
    uint32_t sec_user1_ptr;
};

typedef union anon_union.conflict9f1c_for_field_4 anon_union.conflict9f1c_for_field_4, *anon_union.conflict9f1c_for_field_4;

union anon_union.conflict9f1c_for_field_4 {
    uint32_t datastartptr;
    uint32_t sec_user2_ptr;
};

typedef union anon_union.conflict9f41_for_field_5 anon_union.conflict9f41_for_field_5, *anon_union.conflict9f41_for_field_5;

union anon_union.conflict9f41_for_field_5 {
    uint32_t dataendptr;
    uint32_t sec_user3_ptr;
};

typedef struct anon_struct.conflict14eb3b anon_struct.conflict14eb3b, *anon_struct.conflict14eb3b;

typedef uint32_t u32;

struct anon_struct.conflict14eb3b {
    u32 tx_done:1;
    u32 retry_required:1;
    u32 sw_retry_required:1;
    u32 reserved:29;
};

typedef union anon_union.conflict9ef7 anon_union.conflict9ef7, *anon_union.conflict9ef7;

union anon_union.conflict9ef7 {
    uint32_t first_pbd_ptr;
    uint32_t sec_user1_ptr;
};

typedef union anon_union.conflict9f1c anon_union.conflict9f1c, *anon_union.conflict9f1c;

union anon_union.conflict9f1c {
    uint32_t datastartptr;
    uint32_t sec_user2_ptr;
};

typedef union anon_union.conflict9f41 anon_union.conflict9f41, *anon_union.conflict9f41;

union anon_union.conflict9f41 {
    uint32_t dataendptr;
    uint32_t sec_user3_ptr;
};

typedef union bl_hw_txstatus bl_hw_txstatus, *bl_hw_txstatus;

union bl_hw_txstatus {
    struct anon_struct.conflict14eb3b field_0;
    u32 value;
};

typedef struct rx_dmadesc rx_dmadesc, *rx_dmadesc;

typedef struct rx_hd rx_hd, *rx_hd;

typedef struct phy_channel_info phy_channel_info, *phy_channel_info;

typedef struct rx_swdesc rx_swdesc, *rx_swdesc;

typedef ushort uint16_t;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

typedef struct rx_payloaddesc rx_payloaddesc, *rx_payloaddesc;

typedef struct rx_pbd rx_pbd, *rx_pbd;

typedef uchar uint8_t;

struct co_list_hdr {
    struct co_list_hdr * next;
};

struct rx_swdesc {
    struct co_list_hdr list_hdr;
    struct rx_dmadesc * dma_hdrdesc;
    struct rx_payloaddesc * pd;
    struct rx_pbd * last_pbd;
    struct rx_pbd * spare_pbd;
    uint32_t host_id;
    uint32_t frame_len;
    uint8_t status;
    uint8_t pbd_count;
    uint8_t use_in_tcpip;
    undefined field_0x1f;
};

struct phy_channel_info {
    uint32_t info1;
    uint32_t info2;
};

struct rx_pbd {
    uint32_t upattern;
    uint32_t next;
    uint32_t datastartptr;
    uint32_t dataendptr;
    uint16_t bufstatinfo;
    uint16_t reserved;
};

struct rx_payloaddesc {
    struct rx_pbd pbd;
    uint32_t pd_status;
    uint32_t * buffer_rx;
    void * pbuf_holder[6];
};

struct rx_hd {
    uint32_t upatternrx;
    uint32_t next;
    uint32_t first_pbd_ptr;
    struct rx_swdesc * swdesc;
    uint32_t datastartptr;
    uint32_t dataendptr;
    uint32_t headerctrlinfo;
    uint16_t frmlen;
    uint16_t ampdu_stat_info;
    uint32_t tsflo;
    uint32_t tsfhi;
    uint32_t recvec1a;
    uint32_t recvec1b;
    uint32_t recvec1c;
    uint32_t recvec1d;
    uint32_t recvec2a;
    uint32_t recvec2b;
    uint32_t statinfo;
};

struct rx_dmadesc {
    struct rx_hd hd;
    struct phy_channel_info phy_info;
    uint32_t flags;
    uint32_t pattern;
    uint32_t payl_offset;
    uint32_t reserved_pad[2];
    uint32_t use_in_tcpip;
};

typedef struct tx_agg_desc tx_agg_desc, *tx_agg_desc;

struct tx_agg_desc {
    uint8_t reserved;
};

typedef struct tx_cfm_tag tx_cfm_tag, *tx_cfm_tag;

typedef char int8_t;

struct tx_cfm_tag {
    uint16_t pn[4];
    uint16_t sn;
    uint16_t timestamp;
    int8_t credits;
    uint8_t ampdu_size;
    uint8_t pad[2];
    uint32_t status;
};

typedef struct tx_compressed_policy_tbl tx_compressed_policy_tbl, *tx_compressed_policy_tbl;

struct tx_compressed_policy_tbl {
    uint32_t upatterntx;
    uint32_t sec_user_control;
};

typedef struct tx_hd tx_hd, *tx_hd;

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

typedef struct tx_hw_desc tx_hw_desc, *tx_hw_desc;

struct tx_hw_desc {
    struct tx_cfm_tag * cfm_ptr;
    struct tx_hd thd;
};

typedef struct tx_pbd tx_pbd, *tx_pbd;

struct tx_pbd {
    uint32_t upatterntx;
    uint32_t next;
    uint32_t datastartptr;
    uint32_t dataendptr;
    uint32_t bufctrlinfo;
};

typedef struct tx_policy_tbl tx_policy_tbl, *tx_policy_tbl;

struct tx_policy_tbl {
    uint32_t upatterntx;
    uint32_t phycntrlinfo1;
    uint32_t phycntrlinfo2;
    uint32_t maccntrlinfo1;
    uint32_t maccntrlinfo2;
    uint32_t ratecntrlinfo[4];
    uint32_t powercntrlinfo[4];
};

