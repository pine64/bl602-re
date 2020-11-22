
typedef union anon_union.conflictbf1b_for_field_0 anon_union.conflictbf1b_for_field_0, *anon_union.conflictbf1b_for_field_0;

typedef struct tx_policy_tbl tx_policy_tbl, *tx_policy_tbl;

typedef struct tx_compressed_policy_tbl tx_compressed_policy_tbl, *tx_compressed_policy_tbl;

typedef ulong uint32_t;

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

typedef union anon_union.conflictbf1b anon_union.conflictbf1b, *anon_union.conflictbf1b;

union anon_union.conflictbf1b {
    struct tx_policy_tbl policy_tbl;
    struct tx_compressed_policy_tbl comp_pol_tbl;
};

void txl_buffer_alloc(void);
typedef struct txl_buffer_control txl_buffer_control, *txl_buffer_control;

struct txl_buffer_control {
    union anon_union.conflictbf1b_for_field_0 field_0;
    uint32_t mac_control_info;
    uint32_t phy_control_info;
};

void txl_buffer_control_copy(txdesc * txdesc, txl_buffer_tag * buf);
txl_buffer_control * txl_buffer_control_get(txdesc * txdesc);
typedef struct txl_buffer_env_tag txl_buffer_env_tag, *txl_buffer_env_tag;

typedef struct txl_buffer_idx_tag txl_buffer_idx_tag, *txl_buffer_idx_tag;

typedef struct txl_buffer_list_tag txl_buffer_list_tag, *txl_buffer_list_tag;

typedef struct txl_buffer_hw_desc_tag txl_buffer_hw_desc_tag, *txl_buffer_hw_desc_tag;

typedef uchar uint8_t;

typedef struct txl_buffer_tag txl_buffer_tag, *txl_buffer_tag;

typedef struct dma_desc dma_desc, *dma_desc;

typedef struct tx_pbd tx_pbd, *tx_pbd;

typedef struct txdesc txdesc, *txdesc;

typedef ushort uint16_t;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

typedef struct hostdesc hostdesc, *hostdesc;

typedef struct umacdesc umacdesc, *umacdesc;

typedef struct lmacdesc lmacdesc, *lmacdesc;

typedef struct tx_hw_desc tx_hw_desc, *tx_hw_desc;

typedef struct tx_cfm_tag tx_cfm_tag, *tx_cfm_tag;

typedef uint32_t u32_l;

typedef uint16_t u16_l;

typedef struct mac_addr mac_addr, *mac_addr;

typedef uint8_t u8_l;

typedef struct tx_agg_desc tx_agg_desc, *tx_agg_desc;

typedef struct tx_hd tx_hd, *tx_hd;

typedef char int8_t;

typedef union anon_union.conflict9ef7_for_field_3 anon_union.conflict9ef7_for_field_3, *anon_union.conflict9ef7_for_field_3;

typedef union anon_union.conflict9f1c_for_field_4 anon_union.conflict9f1c_for_field_4, *anon_union.conflict9f1c_for_field_4;

typedef union anon_union.conflict9f41_for_field_5 anon_union.conflict9f41_for_field_5, *anon_union.conflict9f41_for_field_5;

struct co_list_hdr {
    struct co_list_hdr * next;
};

union anon_union.conflict9f41_for_field_5 {
    uint32_t dataendptr;
    uint32_t sec_user3_ptr;
};

struct tx_pbd {
    uint32_t upatterntx;
    uint32_t next;
    uint32_t datastartptr;
    uint32_t dataendptr;
    uint32_t bufctrlinfo;
};

struct dma_desc {
    uint32_t src;
    uint32_t dest;
    uint16_t length;
    uint16_t ctrl;
    uint32_t next;
};

struct txl_buffer_hw_desc_tag {
    struct dma_desc dma_desc;
    struct tx_pbd pbd;
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

struct tx_cfm_tag {
    uint16_t pn[4];
    uint16_t sn;
    uint16_t timestamp;
    int8_t credits;
    uint8_t ampdu_size;
    uint8_t pad[2];
    uint32_t status;
};

struct txl_buffer_list_tag {
    struct txl_buffer_tag * first;
    struct txl_buffer_tag * last;
};

struct lmacdesc {
    struct tx_agg_desc * agg_desc;
    struct txl_buffer_tag * buffer;
    struct tx_hw_desc * hw_desc;
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

struct txdesc {
    struct co_list_hdr list_hdr;
    struct hostdesc host;
    struct umacdesc umac;
    struct lmacdesc lmac;
    struct tx_hw_desc hw_desc;
    struct tx_cfm_tag hw_cfm;
    uint32_t buf[128];
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

struct txl_buffer_idx_tag {
    uint32_t used_area;
    uint32_t free;
    uint32_t free_size;
    uint32_t last;
    uint32_t next_needed;
    uint32_t buf_size;
    uint32_t * pool;
    struct txl_buffer_hw_desc_tag * desc;
    uint8_t count;
    undefined field_0x21;
    undefined field_0x22;
    undefined field_0x23;
};

struct txl_buffer_env_tag {
    struct txl_buffer_idx_tag buf_idx[5][1];
    struct txl_buffer_list_tag list[5];
};

struct tx_agg_desc {
    uint8_t reserved;
};

txl_buffer_tag * txl_buffer_get(txdesc * txdesc);
void txl_buffer_init(void);
void txl_buffer_mic_compute(txdesc * txdesc, uint32_t * mic_key, uint32_t start, uint32_t len, uint8_t access_category);
void * txl_buffer_payload_get(txdesc * txdesc);
txl_buffer_tag * txl_buffer_pop(uint8_t access_category);
void txl_buffer_push(uint8_t access_category, txl_buffer_tag * buf);
void txl_buffer_reinit(void);
void txl_buffer_reset(void);
void txl_buffer_update_thd(void);
