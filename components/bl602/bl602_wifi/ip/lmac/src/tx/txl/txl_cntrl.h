
typedef struct txl_cntrl_env_tag txl_cntrl_env_tag, *txl_cntrl_env_tag;

typedef struct txl_list txl_list, *txl_list;

typedef ulong uint32_t;

typedef ushort uint16_t;

typedef bool _Bool;

typedef struct tx_hd tx_hd, *tx_hd;

typedef struct co_list co_list, *co_list;

typedef uchar uint8_t;

typedef union anon_union.conflict9ef7_for_field_3 anon_union.conflict9ef7_for_field_3, *anon_union.conflict9ef7_for_field_3;

typedef union anon_union.conflict9f1c_for_field_4 anon_union.conflict9f1c_for_field_4, *anon_union.conflict9f1c_for_field_4;

typedef union anon_union.conflict9f41_for_field_5 anon_union.conflict9f41_for_field_5, *anon_union.conflict9f41_for_field_5;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

struct co_list_hdr {
    struct co_list_hdr * next;
};

struct co_list {
    struct co_list_hdr * first;
    struct co_list_hdr * last;
};

struct txl_list {
    struct tx_hd * last_frame_exch;
    struct co_list transmitting;
    uint16_t bridgedmacnt;
    uint8_t chk_state;
    undefined field_0xf;
};

struct txl_cntrl_env_tag {
    struct txl_list txlist[5];
    uint32_t pck_cnt;
    uint16_t seqnbr;
    _Bool reset;
    undefined field_0x57;
};

union anon_union.conflict9f41_for_field_5 {
    uint32_t dataendptr;
    uint32_t sec_user3_ptr;
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

void txl_cntrl_flush_ac(void);
void txl_cntrl_halt_ac(void);
void txl_cntrl_init(void);
void txl_cntrl_push(void);
void txl_cntrl_push_int(void);
void txl_cntrl_push_int_force(void);
void txl_cntrl_tx_check(void);
uint16_t txl_get_seq_ctrl(void);
void txl_reset(void);
_Bool txl_sleep_check(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file txl_cntrl.h
* Header file for BL602
*/
#ifndef __TXL_CNTRL_H__
#define __TXL_CNTRL_H__

struct txl_list {
    struct tx_hd *last_frame_exch; // +0
    struct co_list transmitting; // +4
    uint16_t bridgedmacnt; // +12
    uint8_t chk_state; // +14
};
struct txl_cntrl_env_tag {
    struct txl_list txlist[5]; // +0
    uint32_t pck_cnt; // +80
    uint16_t seqnbr; // +84
    bool reset; // +86
};
struct txl_cntrl_env_tag txl_cntrl_env;

#endif // __TXL_CNTRL_H__
#endf 0 //TODO EXISTS ALEADY
