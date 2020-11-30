
typedef struct rx_swdesc rx_swdesc, *rx_swdesc;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

typedef struct rx_dmadesc rx_dmadesc, *rx_dmadesc;

typedef struct rx_payloaddesc rx_payloaddesc, *rx_payloaddesc;

typedef struct rx_pbd rx_pbd, *rx_pbd;

typedef ulong uint32_t;

typedef uchar uint8_t;

typedef struct rx_hd rx_hd, *rx_hd;

typedef struct phy_channel_info phy_channel_info, *phy_channel_info;

typedef ushort uint16_t;

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

void rx_swdesc_init(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file rx_swdesc.h
* Header file for BL602
*/
#ifndef __RX_SWDESC_H__
#define __RX_SWDESC_H__

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
};
struct rx_swdesc rx_swdesc_tab[13];

#endif // __RX_SWDESC_H__
#endf 0 //TODO EXISTS ALEADY
