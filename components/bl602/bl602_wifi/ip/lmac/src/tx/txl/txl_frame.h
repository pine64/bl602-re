
void cfm_func_ptr(void * , uint32_t );
void txl_frame_cfm(void);
typedef struct txl_frame_cfm_tag txl_frame_cfm_tag, *txl_frame_cfm_tag;

typedef ulong uint32_t;

void cfm_func_ptr(void * , uint32_t );
struct txl_frame_cfm_tag {
    void (* cfm_func)(void *, uint32_t);
    void * env;
};

typedef struct txl_frame_desc_tag txl_frame_desc_tag, *txl_frame_desc_tag;

typedef struct txdesc txdesc, *txdesc;

typedef uchar uint8_t;

typedef bool _Bool;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

typedef struct hostdesc hostdesc, *hostdesc;

typedef struct umacdesc umacdesc, *umacdesc;

typedef struct lmacdesc lmacdesc, *lmacdesc;

typedef struct tx_hw_desc tx_hw_desc, *tx_hw_desc;

typedef struct tx_cfm_tag tx_cfm_tag, *tx_cfm_tag;

typedef uint32_t u32_l;

typedef ushort uint16_t;

typedef uint16_t u16_l;

typedef struct mac_addr mac_addr, *mac_addr;

typedef uint8_t u8_l;

typedef struct txl_buffer_control txl_buffer_control, *txl_buffer_control;

typedef struct tx_agg_desc tx_agg_desc, *tx_agg_desc;

typedef struct txl_buffer_tag txl_buffer_tag, *txl_buffer_tag;

typedef struct tx_hd tx_hd, *tx_hd;

typedef char int8_t;

typedef union anon_union.conflictbf1b_for_field_0 anon_union.conflictbf1b_for_field_0, *anon_union.conflictbf1b_for_field_0;

typedef struct dma_desc dma_desc, *dma_desc;

typedef struct tx_pbd tx_pbd, *tx_pbd;

typedef union anon_union.conflict9ef7_for_field_3 anon_union.conflict9ef7_for_field_3, *anon_union.conflict9ef7_for_field_3;

typedef union anon_union.conflict9f1c_for_field_4 anon_union.conflict9f1c_for_field_4, *anon_union.conflict9f1c_for_field_4;

typedef union anon_union.conflict9f41_for_field_5 anon_union.conflict9f41_for_field_5, *anon_union.conflict9f41_for_field_5;

typedef struct tx_policy_tbl tx_policy_tbl, *tx_policy_tbl;

typedef struct tx_compressed_policy_tbl tx_compressed_policy_tbl, *tx_compressed_policy_tbl;

struct co_list_hdr {
    struct co_list_hdr * next;
};

union anon_union.conflict9f41_for_field_5 {
    uint32_t dataendptr;
    uint32_t sec_user3_ptr;
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

struct txl_frame_desc_tag {
    struct txdesc txdesc;
    struct txl_frame_cfm_tag cfm;
    uint8_t type;
    _Bool postponed;
    _Bool keep_desc;
    undefined field_0x2d7;
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

struct tx_agg_desc {
    uint8_t reserved;
};

typedef struct txl_frame_env_tag txl_frame_env_tag, *txl_frame_env_tag;

typedef struct co_list co_list, *co_list;

struct co_list {
    struct co_list_hdr * first;
    struct co_list_hdr * last;
};

struct txl_frame_env_tag {
    struct co_list desc_free;
    struct co_list desc_done;
};

void txl_frame_evt(void);
void txl_frame_get(void);
void txl_frame_init(void);
void txl_frame_init_desc(void);
void txl_frame_push(void);
void txl_frame_push_force(void);
void txl_frame_release(void);
void txl_frame_send_eapol_frame(void);
void txl_frame_send_null_frame(void);
void txl_frame_send_qosnull_frame(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file txl_frame.h
* Header file for BL602
*/
#ifndef __TXL_FRAME_H__
#define __TXL_FRAME_H__

typedef void (*cfm_func_ptr)(void *, uint32_t);
struct txl_frame_cfm_tag {
    cfm_func_ptr cfm_func; // +0
    void *env; // +4
};
struct txl_frame_desc_tag {
    struct txdesc txdesc; // +0
    struct txl_frame_cfm_tag cfm; // +716
    uint8_t type; // +724
    bool postponed; // +725
    bool keep_desc; // +726
};
struct txl_frame_env_tag {
    struct co_list desc_free; // +0
    struct co_list desc_done; // +8
};
struct txl_frame_env_tag txl_frame_env;

#endif // __TXL_FRAME_H__
#endf 0 //TODO EXISTS ALEADY
