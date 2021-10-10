#ifndef __HAL_DESC_H__
#define __HAL_DESC_H__

#include <stdint.h>

#include <driver/phy/phy.h>


struct tx_policy_tbl {
    uint32_t upatterntx; // +0
    uint32_t phycntrlinfo1; // +4
    uint32_t phycntrlinfo2; // +8
    uint32_t maccntrlinfo1; // +12
    uint32_t maccntrlinfo2; // +16
    uint32_t ratecntrlinfo[4]; // +20
    uint32_t powercntrlinfo[4]; // +36
};

struct tx_compressed_policy_tbl {
    uint32_t upatterntx; // +0
    uint32_t sec_user_control; // +4
};

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
};

struct tx_pbd {
    uint32_t upatterntx; // +0
    uint32_t next; // +4
    uint32_t datastartptr; // +8
    uint32_t dataendptr; // +12
    uint32_t bufctrlinfo; // +16
};

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
};

struct rx_pbd {
    uint32_t upattern; // +0
    uint32_t next; // +4
    uint32_t datastartptr; // +8
    uint32_t dataendptr; // +12
    uint16_t bufstatinfo; // +16
    uint16_t reserved; // +18
};

struct rx_dmadesc {
    struct rx_hd hd; // +0
    struct phy_channel_info phy_info; // +68
    uint32_t flags; // +76
    uint32_t pattern; // +80
    uint32_t payl_offset; // +84
    uint32_t reserved_pad[2]; // +88
    uint32_t use_in_tcpip; // +96
};

struct rx_payloaddesc {
    struct rx_pbd pbd; // +0
    uint32_t pd_status; // +20
    uint32_t *buffer_rx; // +24
    void *pbuf_holder[6]; // +28
};

struct tx_cfm_tag {
    uint16_t pn[4]; // +0
    uint16_t sn; // +8
    uint16_t timestamp; // +10
    int8_t credits; // +12
    uint8_t ampdu_size; // +13
    uint8_t pad[2]; // +14
    uint32_t status; // +16
};

struct tx_hw_desc {
    struct tx_cfm_tag *cfm_ptr; // +0
    struct tx_hd thd; // +4
};

struct tx_agg_desc {
    uint8_t reserved; // +0
};

extern struct dma_desc bcn_dwnld_desc;
extern struct rx_dmadesc rx_dma_hdrdesc[];
extern struct rx_payloaddesc rx_payload_desc[];
extern uint32_t rx_payload_desc_buffer[212];
extern struct tx_hw_desc tx_hw_desc0[4];
extern struct tx_hw_desc tx_hw_desc1[4];
extern struct tx_hw_desc tx_hw_desc2[4];
extern struct tx_hw_desc tx_hw_desc3[4];
extern struct tx_hw_desc tx_hw_desc4[4];
extern struct tx_cfm_tag tx_hw_cfms[4];

#endif // __HAL_DESC_H__
