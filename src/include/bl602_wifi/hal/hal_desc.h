
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


/// Bit indicating if an interrupt has to be set or not once packet is transmitted
#define INTERRUPT_EN_TX                   CO_BIT(8)

/// Offset of Number of Blank delimiters
#define NB_BLANK_DELIM_OFT                9
/// Mask of Number of Blank delimiters
#define NB_BLANK_DELIM_MSK                (0x3FF << NB_BLANK_DELIM_OFT)

/// WhichDescriptor definition - contains aMPDU bit and position value
/// Offset of WhichDescriptor field in the MAC CONTROL INFO 2 word
#define WHICHDESC_OFT                     19
/// Mask of the WhichDescriptor field
#define WHICHDESC_MSK                     (0x07 << WHICHDESC_OFT)
/// Only 1 THD possible, describing an unfragmented MSDU
#define WHICHDESC_UNFRAGMENTED_MSDU       (0x00 << WHICHDESC_OFT)
/// THD describing the first MPDU of a fragmented MSDU
#define WHICHDESC_FRAGMENTED_MSDU_FIRST   (0x01 << WHICHDESC_OFT)
/// THD describing intermediate MPDUs of a fragmented MSDU
#define WHICHDESC_FRAGMENTED_MSDU_INT     (0x02 << WHICHDESC_OFT)
/// THD describing the last MPDU of a fragmented MSDU
#define WHICHDESC_FRAGMENTED_MSDU_LAST    (0x03 << WHICHDESC_OFT)
/// THD for extra descriptor starting an AMPDU
#define WHICHDESC_AMPDU_EXTRA             (0x04 << WHICHDESC_OFT)
/// THD describing the first MPDU of an A-MPDU
#define WHICHDESC_AMPDU_FIRST             (0x05 << WHICHDESC_OFT)
/// THD describing intermediate MPDUs of an A-MPDU
#define WHICHDESC_AMPDU_INT               (0x06 << WHICHDESC_OFT)
/// THD describing the last MPDU of an A-MPDU
#define WHICHDESC_AMPDU_LAST              (0x07 << WHICHDESC_OFT)

/// aMPDU bit offset
#define AMPDU_OFT                         21
/// aMPDU bit
#define AMPDU_BIT                         CO_BIT(AMPDU_OFT)

/// Under BA setup bit
#define UNDER_BA_SETUP_BIT                CO_BIT(22)

/// Don't touch duration bit
#define DONT_TOUCH_DUR                    CO_BIT(28)



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


/// @name RHD STATINFO
/// @{

/// Key index offset
#define KEY_IDX_OFT                       15
/// Key index mask
#define KEY_IDX_MSK                       (0x3FF << KEY_IDX_OFT)
/// Key index valid bit
#define KEY_IDX_VALID_BIT                 CO_BIT(25)
/// Immediate response access category offset
#define IMM_RSP_AC_OFT                    11
/// Immediate response access category mask
#define IMM_RSP_AC_MSK                    (0x03 << IMM_RSP_AC_OFT)

/// Last buffer of the MPDU
#define RX_PD_LASTBUF                     0x0001
/// Descriptor Done in HW
#define RX_PD_DONE                        0x0002

/// Storage RAM key index valid bit.
#define RX_HD_KEYIDV                      0x02000000
/// Storage RAM key index.
#define RX_HD_KEYID                       0x01FF8000
/// Lowest significant bit of the storage RAM key index.
#define RX_HD_KEYID_LSB                   15
/// Done bit.
#define RX_HD_DONE                        0x00004000
/// Frame successfully received bit.
#define RX_HD_SUCCESS                     0x00002000
/// Group Addressed frame bit.
#define RX_HD_GA_FRAME                    0x00000400
/// Address mismatch bit.
#define RX_HD_ADDRMIS                     0x00000200
/// FCS error bit.
#define RX_HD_FCSERR                      0x0100
/// PHY error bit.
#define RX_HD_PHYERR                      0x00000080
/// Undefined error bit.
#define RX_HD_UNDEFERR                    0x00000040
/// Decryption status mask.
#define RX_HD_DECRSTATUS                  0x0000001C
/// Is response frame bit.
#define RX_HD_RSP_FRM                     0x00000002
/// Vector 2 valid bit.
#define RX_HD_RXVEC2V                     0x00000001
/// Frame unencrypted.
#define RX_HD_DECR_UNENC                  0x0000
/// WEP/TKIP ICV failure.
#define RX_HD_DECR_ICVFAIL                0x0004
/// MAC CCMP failure.
#define RX_HD_DECR_CCMPFAIL               0x0008
/// MAC A-MSDU discarded at HW.
#define RX_HD_DECR_AMSDUDISCARD           0x000C
/// NULL key found.
#define RX_HD_DECR_NULLKEY                0x0010
/// MAC security type WEP.
#define RX_HD_DECR_WEPSUCCESS             0x0014
/// MAC security type TKIP.
#define RX_HD_DECR_TKIPSUCCESS            0x0018
/// MAC security type CCMP.
#define RX_HD_DECR_CCMPSUCCESS            0x001C
/// Macro to retrieve the storage RAM key index for the received frame.
/// @param[in] __s MPDU status information from the RX header descriptor.
#define RX_HD_KEYID_GET(__s) (((__s) & RX_HD_KEYID) >> RX_HD_KEYID_LSB)
/// Macro to retrieve the done bit of the received frame.
/// @param[in] __s MPDU status information from the RX header descriptor.
#define RX_HD_DONE_GET(__s) ((__s) & RX_HD_DONE)
/// Macro to retrieve the success bit of the received frame.
/// @param[in] __s MPDU status information from the RX header descriptor.
#define RX_HD_SUCCESS_GET(__s) ((__s) & (RX_HD_SUCCESS | RX_HD_FCSERR))

/// @}

/// Length of the receive vectors
#define RXL_HWDESC_RXV_LEN    40

#define RATE_CONTROL_STEPS 4
#define POLICY_TABLE_PATTERN 0xBADCAB1E

#define STBC_PT_MASK (0x3 << STBC_PT_OFT)
/// Number of Transmit Chains for PPDU offset
#define NX_TX_PT_OFT 14

#define ANTENNA_SET_PT_OFT 0

#define MCS_INDEX_TX_RCX_OFT 0

//----------------------------------------------------------------------------------------
// THD: PHY CONTROL INFO definitions
//----------------------------------------------------------------------------------------
/// Sounding of PPDU Frame Transmission (Bit 0)
#define SOUNDING_TX_BIT         CO_BIT(0)
/// Smoothing for PPDU frames (Bit 1)
#define SMTHN_TX_BIT            CO_BIT(1)
/// Smoothing for Control frames (Bit 2)
#define SMTHN_PROT_BIT          CO_BIT(2)
/// Use BW signaling bit
#define USE_BW_SIG_TX_BIT       CO_BIT(3)
/// Dynamic BW
#define DYN_BW_TX_BIT           CO_BIT(4)
/// Doze allowed by AP during TXOP
#define DOZE_ALLOWED_TX_BIT     CO_BIT(5)
/// Continuous transmit
#define CONT_TX_BIT             CO_BIT(6)
/// User Position field offset
#define USER_POS_OFT            12
/// User Position field mask
#define USER_POS_MASK           (0x3 << USER_POS_OFT)
/// Use RIFS for Transmission (Bit 14)
#define USE_RIFS_TX_BIT         CO_BIT(14)
/// Use MU-MIMO for Transmission (Bit 15)
#define USE_MUMIMO_TX_BIT       CO_BIT(15)
/// GroupId field offset
#define GID_TX_OFT              16
/// GroupId field mask
#define GID_TX_MASK             (0x3F << GID_TX_OFT)
/// Partial AID field offset
#define PAID_TX_OFT             22
/// Partial AID field mask
#define PAID_TX_MASK            (0x1FF << PAID_TX_OFT)

//----------------------------------------------------------------------------------------
// TBD: BUF CONTROL INFO definitions
//----------------------------------------------------------------------------------------
/// Flag indicating if HW handled the buffer
#define TBD_DONE_HW             CO_BIT(31)
/// Bit allowing to request HW to generate an interrupt upon a payload buffer transmission
#define TBD_INTERRUPT_EN        CO_BIT(0)

//----------------------------------------------------------------------------------------
// THD: MAC CONTROL INFO 1 definitions
//----------------------------------------------------------------------------------------
/// Protection Frame Duration offset
#define PROT_FRM_DURATION_OFT             16
/// Protection Frame Duration mask
#define PROT_FRM_DURATION_MSK             (0xFFFF << PROT_FRM_DURATION_OFT)

/// Set if ACK has to be passed to SW
#define WRITE_ACK                         CO_BIT(14)
/// Set if lower rates have to be used for retries
#define LOW_RATE_RETRY                    CO_BIT(13)
/// L-SIG TXOP Protection for protection frame
#define LSTP_PROT                         CO_BIT(12)
/// L-SIG TXOP Protection
#define LSTP                              CO_BIT(11)

// Expected Acknowledgment
/// Expected Acknowledgment offset
#define EXPECTED_ACK_OFT                  9
/// Expected Acknowledgment mask
#define EXPECTED_ACK_MSK                  (0x3 << EXPECTED_ACK_OFT)
/// No acknowledgment
#define EXPECTED_ACK_NO_ACK               (0x0 << EXPECTED_ACK_OFT)
/// Normal acknowledgment
#define EXPECTED_ACK_NORMAL_ACK           (0x1 << EXPECTED_ACK_OFT)
/// Uncompressed block acknowledgment
#define EXPECTED_ACK_BLOCK_ACK            (0x2 << EXPECTED_ACK_OFT)
/// Compressed block acknowledgment
#define EXPECTED_ACK_COMPRESSED_BLOCK_ACK (0x3 << EXPECTED_ACK_OFT)

/// legacy RATE definitions
typedef enum
{
    /// 1Mbps
    HW_RATE_1MBPS = 0,
    /// 2Mbps
    HW_RATE_2MBPS,
    /// 5.5Mbps
    HW_RATE_5_5MBPS,
    /// 11Mbps
    HW_RATE_11MBPS,
    /// 6Mbps
    HW_RATE_6MBPS,
    /// 9Mbps
    HW_RATE_9MBPS,
    /// 12Mbps
    HW_RATE_12MBPS,
    /// 18Mbps
    HW_RATE_18MBPS,
    /// 24Mbps
    HW_RATE_24MBPS,
    /// 36Mbps
    HW_RATE_36MBPS,
    /// 48Mbps
    HW_RATE_48MBPS,
    /// 54Mbps
    HW_RATE_54MBPS
} HW_RATE_E;


// Policy Table: Rate Control Information field
/// MCS Index offset
#define MCS_INDEX_TX_RCX_OFT    0
/// MCS Index mask
#define MCS_INDEX_TX_RCX_MASK   (0X7FU << MCS_INDEX_TX_RCX_OFT)
/// Bandwidth for transmission offset
#define BW_TX_RCX_OFT           7
/// Bandwidth for transmission mask
#define BW_TX_RCX_MASK          (0X3U << BW_TX_RCX_OFT)
/// Short Guard Interval for Transmission offset
#define SHORT_GI_TX_RCX_OFT     9
/// Short Guard Interval for Transmission mask
#define SHORT_GI_TX_RCX_MASK    (0x1U << SHORT_GI_TX_RCX_OFT)
/// Preamble type for 11b Transmission offset
#define PRE_TYPE_TX_RCX_OFT     10
/// Preamble type for 11b Transmission mask
#define PRE_TYPE_TX_RCX_MASK    (0x1U << PRE_TYPE_TX_RCX_OFT)
/// Format of the modulation offset
#define FORMAT_MOD_TX_RCX_OFT   11
/// Format of the modulation mask
#define FORMAT_MOD_TX_RCX_MASK  (0X7U << FORMAT_MOD_TX_RCX_OFT)
/// Type of NAV protection frame exchange offset
#define PROT_FRM_EX_RCX_OFT     14
/// Type of NAV protection frame exchange mask
#define PROT_FRM_EX_RCX_MASK    (0X7 << PROT_FRM_EX_RCX_OFT)
/// No protection
#define PROT_NO_PROT            (0x0 << PROT_FRM_EX_RCX_OFT)
/// Self-CTS
#define PROT_SELF_CTS           (0x1 << PROT_FRM_EX_RCX_OFT)
/// RTS-CTS with intended receiver
#define PROT_RTS_CTS            (0x2 << PROT_FRM_EX_RCX_OFT)
/// RTS-CTS with QAP
#define PROT_RTS_CTS_WITH_QAP   (0x3 << PROT_FRM_EX_RCX_OFT)
/// STBC protection
#define PROT_STBC               (0x4 << PROT_FRM_EX_RCX_OFT)


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