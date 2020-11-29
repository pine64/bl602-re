
typedef struct hostdesc hostdesc, *hostdesc;

typedef ulong uint32_t;

typedef uint32_t u32_l;

typedef ushort uint16_t;

typedef uint16_t u16_l;

typedef struct mac_addr mac_addr, *mac_addr;

typedef uchar uint8_t;

typedef uint8_t u8_l;

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

_Bool is_int_frame(txdesc * txdesc);
_Bool is_qos_data(txdesc * txdesc);
typedef struct lmacdesc lmacdesc, *lmacdesc;

typedef struct tx_agg_desc tx_agg_desc, *tx_agg_desc;

typedef struct txl_buffer_tag txl_buffer_tag, *txl_buffer_tag;

typedef struct tx_hw_desc tx_hw_desc, *tx_hw_desc;

typedef struct txdesc txdesc, *txdesc;

typedef struct dma_desc dma_desc, *dma_desc;

typedef struct tx_pbd tx_pbd, *tx_pbd;

typedef struct txl_buffer_control txl_buffer_control, *txl_buffer_control;

typedef struct tx_cfm_tag tx_cfm_tag, *tx_cfm_tag;

typedef struct tx_hd tx_hd, *tx_hd;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

typedef struct umacdesc umacdesc, *umacdesc;

typedef union anon_union.conflictbf1b_for_field_0 anon_union.conflictbf1b_for_field_0, *anon_union.conflictbf1b_for_field_0;

typedef char int8_t;

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

union anon_union.conflict9f1c_for_field_4 {
    uint32_t datastartptr;
    uint32_t sec_user2_ptr;
};

union anon_union.conflict9ef7_for_field_3 {
    uint32_t first_pbd_ptr;
    uint32_t sec_user1_ptr;
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

struct tx_compressed_policy_tbl {
    uint32_t upatterntx;
    uint32_t sec_user_control;
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

union anon_union.conflictbf1b_for_field_0 {
    struct tx_policy_tbl policy_tbl;
    struct tx_compressed_policy_tbl comp_pol_tbl;
};

struct txl_buffer_control {
    union anon_union.conflictbf1b_for_field_0 field_0;
    uint32_t mac_control_info;
    uint32_t phy_control_info;
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

typedef struct txdesc_host txdesc_host, *txdesc_host;

struct txdesc_host {
    uint32_t ready;
    struct hostdesc host;
    uint32_t pad_txdesc[55];
    uint32_t pad_buf[128];
};

#if 0 //TODO EXISTS ALEADY
/**
* @file tx_swdesc.h
* Header file for BL602
*/
#ifndef __TX_SWDESC_H__
#define __TX_SWDESC_H__

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
};
struct umacdesc {
    struct txl_buffer_control *buf_control; // +0
    uint32_t buff_offset; // +4
    uint16_t payl_len; // +8
    uint8_t head_len; // +10
    uint8_t hdr_len_802_2; // +11
    uint8_t tail_len; // +12
};
struct lmacdesc {
    struct tx_agg_desc *agg_desc; // +0
    struct txl_buffer_tag *buffer; // +4
    struct tx_hw_desc *hw_desc; // +8
};
struct txdesc {
    struct co_list_hdr list_hdr; // +0
    struct hostdesc host; // +4
    struct umacdesc umac; // +84
    struct lmacdesc lmac; // +100
    struct tx_hw_desc hw_desc; // +112
    struct tx_cfm_tag hw_cfm; // +184
    uint32_t buf[128]; // +204
};
struct txdesc_host {
    uint32_t ready; // +0
    struct hostdesc host; // +4
    uint32_t pad_txdesc[55]; // +84
    uint32_t pad_buf[128]; // +304
};

#endif // __TX_SWDESC_H__
#endf 0 //TODO EXISTS ALEADY
