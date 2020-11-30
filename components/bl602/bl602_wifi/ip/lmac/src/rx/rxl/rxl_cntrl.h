
typedef struct rxl_cntrl_env_tag rxl_cntrl_env_tag, *rxl_cntrl_env_tag;

typedef struct co_list co_list, *co_list;

typedef struct rx_dmadesc rx_dmadesc, *rx_dmadesc;

typedef ulong uint32_t;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

typedef struct rx_hd rx_hd, *rx_hd;

typedef struct phy_channel_info phy_channel_info, *phy_channel_info;

typedef struct rx_swdesc rx_swdesc, *rx_swdesc;

typedef ushort uint16_t;

typedef struct rx_payloaddesc rx_payloaddesc, *rx_payloaddesc;

typedef struct rx_pbd rx_pbd, *rx_pbd;

typedef uchar uint8_t;

struct co_list_hdr {
    struct co_list_hdr * next;
};

struct co_list {
    struct co_list_hdr * first;
    struct co_list_hdr * last;
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

struct rxl_cntrl_env_tag {
    struct co_list ready;
    struct rx_dmadesc * first;
    struct rx_dmadesc * last;
    struct rx_dmadesc * free;
    uint32_t packet_stack_cnt;
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

void rxl_cntrl_evt(void);
void rxl_init(void);
void rxl_mpdu_free(void);
void rxl_mpdu_transfer(void);
void rxl_reset(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file rxl_cntrl.h
* Header file for BL602
*/
#ifndef __RXL_CNTRL_H__
#define __RXL_CNTRL_H__

struct rxl_cntrl_env_tag {
    struct co_list ready; // +0
    struct rx_dmadesc *first; // +8
    struct rx_dmadesc *last; // +12
    struct rx_dmadesc *free; // +16
    uint32_t packet_stack_cnt; // +20
};
struct rxl_cntrl_env_tag rxl_cntrl_env;

#endif // __RXL_CNTRL_H__
#endf 0 //TODO EXISTS ALEADY
