
#ifndef _HAL_DESC_H_
#define _HAL_DESC_H_
#include <blconfig.h>

#include <stdint.h>
#include <phy_rf/phy.h>

/// 20 MHz bandwidth
#define BW_20MHZ                  0
/// 40 MHz bandwidth
#define BW_40MHZ                  1
/// 80 MHz bandwidth
#define BW_80MHZ                  2
/// 160 or 80+80 MHz bandwidth
#define BW_160MHZ                 3


struct tx_policy_tbl {
    uint32_t upatterntx; // +0
    uint32_t phycntrlinfo1; // +4
    uint32_t phycntrlinfo2; // +8
    uint32_t maccntrlinfo1; // +12
    uint32_t maccntrlinfo2; // +16
    uint32_t ratecntrlinfo[4]; // +20
    uint32_t powercntrlinfo[4]; // +36
}; // :669:8

struct tx_compressed_policy_tbl {
    uint32_t upatterntx; // +0
    uint32_t sec_user_control; // +4
}; // :689:8

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
}; // :698:8

struct tx_pbd {
    uint32_t upatterntx; // +0
    uint32_t next; // +4
    uint32_t datastartptr; // +8
    uint32_t dataendptr; // +12
    uint32_t bufctrlinfo; // +16
}; // :748:8

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
}; // :774:8

struct rx_pbd {
    uint32_t upattern; // +0
    uint32_t next; // +4
    uint32_t datastartptr; // +8
    uint32_t dataendptr; // +12
    uint16_t bufstatinfo; // +16
    uint16_t reserved; // +18
}; // :816:8

struct rx_dmadesc {
    struct rx_hd hd; // +0
    struct phy_channel_info phy_info; // +68
    uint32_t flags; // +76
    uint32_t pattern; // +80
    uint32_t payl_offset; // +84
    uint32_t reserved_pad[2]; // +88
    uint32_t use_in_tcpip; // +96
}; // :834:8

struct rx_payloaddesc {
    struct rx_pbd pbd; // +0
    uint32_t pd_status; // +20
    uint32_t *buffer_rx; // +24
    void *pbuf_holder[6]; // +28
}; // :854:8

struct tx_cfm_tag {
    uint16_t pn[4]; // +0
    uint16_t sn; // +8
    uint16_t timestamp; // +10
    int8_t credits; // +12
    uint8_t ampdu_size; // +13
    uint8_t pad[2]; // +14
    uint32_t status; // +16
}; // :865:8

struct tx_hw_desc {
    struct tx_cfm_tag *cfm_ptr; // +0
    struct tx_hd thd; // +4
}; // :885:8

struct tx_agg_desc {
    uint8_t reserved; // +0
}; // :979:8


//----------------------------------------------------------------------------------------
//THD STATINFO fields
//----------------------------------------------------------------------------------------
/// Number of RTS frame retries offset
#define NUM_RTS_RETRIES_OFT                0
/// Number of RTS frame retries mask
#define NUM_RTS_RETRIES_MSK               (0xFF << NUM_RTS_RETRIES_OFT)
/// Number of MPDU frame retries offset
#define NUM_MPDU_RETRIES_OFT               8
/// Number of MPDU frame retries mask
#define NUM_MPDU_RETRIES_MSK              (0xFF << NUM_MPDU_RETRIES_OFT)
/// Retry limit reached: frame unsuccessful
#define RETRY_LIMIT_REACHED_BIT            CO_BIT(16)
/// Frame lifetime expired: frame unsuccessful
#define LIFETIME_EXPIRED_BIT               CO_BIT(17)
/// BA frame not received - valid only for MPDUs part of AMPDU
#define BA_FRAME_RECEIVED_BIT              CO_BIT(18)
/// Frame successful by TX DMA: Ack received successfully
#define FRAME_SUCCESSFUL_TX_BIT            CO_BIT(23)
/// Last MPDU of an A-MPDU
#define A_MPDU_LAST                        (0x0F << 26)
/// Transmission bandwidth offset
#define BW_TX_OFT                          24
/// Transmission bandwidth mask
#define BW_TX_MSK                          (0x3 << BW_TX_OFT)
/// Transmission bandwidth - 20MHz
#define BW_20MHZ_TX                        (0x0 << BW_TX_OFT)
/// Transmission bandwidth - 40MHz
#define BW_40MHZ_TX                        (0x1 << BW_TX_OFT)
/// Transmission bandwidth - 80MHz
#define BW_80MHZ_TX                        (0x2 << BW_TX_OFT)
/// Transmission bandwidth - 160MHz
#define BW_160MHZ_TX                       (0x3 << BW_TX_OFT)
/// Descriptor done bit: Set by HW for TX DMA
#define DESC_DONE_TX_BIT                   CO_BIT(31)
/// Descriptor done bit: Set by SW for TX DMA
#define DESC_DONE_SW_TX_BIT                CO_BIT(30)

/// uPattern for TX header descriptor.
#define TX_HEADER_DESC_PATTERN 0xCAFEBABE
/// uPattern for TX buffer descriptor
#define TX_PAYLOAD_DESC_PATTERN 0xCAFEFADE
/// uPattern for RX header descriptor.
#define RX_HEADER_DESC_PATTERN 0xBAADF00D
/// uPattern for RX payload descriptor.
#define RX_PAYLOAD_DESC_PATTERN 0xC0DEDBAD

// Policy Table: Power Control Information field
/// Transmit Power Level for RCX offset
#define TX_PWR_LEVEL_PT_RCX_OFT         0
/// Transmit Power Level for RCX mask
#define TX_PWR_LEVEL_PT_RCX_MASK        (0xff << TX_PWR_LEVEL_PT_RCX_OFT)
/// Transmit Power Level of Protection for RCX offset
#define TX_PWR_LEVEL_PROT_PT_RCX_OFT    8
/// Transmit Power Level of Protection for RCX mask
#define TX_PWR_LEVEL_PROT_PT_RCX_MASK   (0xff << TX_PWR_LEVEL_PROT_PT_RCX_OFT)

// TODO: check why tx_hw_descX are not existing in binary
// It seems that the entire tx_swdesc is not exists in bl602
extern struct dma_desc bcn_dwnld_desc;
extern struct rx_dmadesc rx_dma_hdrdesc[]; // NX_RXDESC_CNT
extern struct rx_payloaddesc rx_payload_desc[]; // NX_RX_PAYLOAD_DESC_CNT
extern uint32_t rx_payload_desc_buffer[NX_RX_PAYLOAD_DESC_CNT][212];
extern struct tx_hw_desc tx_hw_desc0[RW_USER_MAX * NX_TXDESC_CNT0];
extern struct tx_hw_desc tx_hw_desc1[RW_USER_MAX * NX_TXDESC_CNT0];
extern struct tx_hw_desc tx_hw_desc2[RW_USER_MAX * NX_TXDESC_CNT0];
extern struct tx_hw_desc tx_hw_desc3[RW_USER_MAX * NX_TXDESC_CNT0];
#if (NX_BEACONING)
/// Array of HW descriptors for BCN queue
extern struct tx_hw_desc       tx_hw_desc4[NX_TXDESC_CNT4];
#endif
extern struct tx_cfm_tag tx_hw_cfms[RW_USER_MAX * NX_TXDESC_CNT0];

#endif