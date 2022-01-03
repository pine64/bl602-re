#ifndef _MAC_FRAME_H_
#define _MAC_FRAME_H_

#include <stdint.h>

#include <modules/mac/mac.h>


struct mac_hdr_ctrl {
    uint16_t fctl; // +0
    uint16_t durid; // +2
    struct mac_addr addr1; // +4
    struct mac_addr addr2; // +10
};

struct mac_hdr {
    uint16_t fctl; // +0
    uint16_t durid; // +2
    struct mac_addr addr1; // +4
    struct mac_addr addr2; // +10
    struct mac_addr addr3; // +16
    uint16_t seq; // +22
};

struct mac_hdr_qos {
    uint16_t fctl; // +0
    uint16_t durid; // +2
    struct mac_addr addr1; // +4
    struct mac_addr addr2; // +10
    struct mac_addr addr3; // +16
    uint16_t seq; // +22
    uint16_t qos; // +24
};

struct mac_hdr_long {
    uint16_t fctl; // +0
    uint16_t durid; // +2
    struct mac_addr addr1; // +4
    struct mac_addr addr2; // +10
    struct mac_addr addr3; // +16
    uint16_t seq; // +22
    struct mac_addr addr4; // +24
};

struct mac_hdr_long_qos {
    uint16_t fctl; // +0
    uint16_t durid; // +2
    struct mac_addr addr1; // +4
    struct mac_addr addr2; // +10
    struct mac_addr addr3; // +16
    uint16_t seq; // +22
    struct mac_addr addr4; // +24
    uint16_t qos; // +30
};

struct eth_hdr {
    struct mac_addr da; // +0
    struct mac_addr sa; // +6
    uint16_t len; // +12
};

struct bcn_frame {
    struct mac_hdr h; // +0
    uint64_t tsf; // +24
    uint16_t bcnint; // +32
    uint16_t capa; // +34
    uint8_t variable[0]; // +36
};

struct preq_frame {
    struct mac_hdr h; // +0
    uint8_t payload[0]; // +24
};


/*
* ELEMENT ID DEFINITION (Table 20 page 55)
****************************************************************************************
*/
#define MAC_INFOELT_ID_OFT                0
#define MAC_INFOELT_LEN_OFT               1
#define MAC_INFOELT_INFO_OFT              2

#define MAC_ELTID_SSID                    0
#define MAC_ELTID_RATES                   1
#define MAC_ELTID_FH                      2
#define MAC_ELTID_DS                      3
#define MAC_ELTID_CF                      4
#define MAC_ELTID_TIM                     5
#define MAC_ELTID_IBSS                    6
#define MAC_ELTID_COUNTRY                 7             // optional
#define MAC_ELTID_HOP_PARAM               8             // optional
#define MAC_ELTID_HOP_TABLE               9             // optional
#define MAC_ELTID_REQUEST                10             // optional
#define MAC_ELTID_BSS_LOAD               11
#define MAC_ELTID_EDCA_PARAM             12

#define MAC_ELTID_CHALLENGE              16
#define MAC_ELTID_POWER_CONSTRAINT       32             // Spectrum & Power Management
#define MAC_ELTID_POWER_CAPABILITY       33             // Spectrum & Power Management
#define MAC_POWER_CAPABILITY_IE_LEN      2              // Spectrum & Power Management
#define MAC_ELTID_TPC_REQUEST            34             // Spectrum & Power Management
#define MAC_ELTID_TPC_REPORT             35             // Spectrum & Power Management
#define MAC_ELTID_SUPPORTED_CHANNELS     36             // Spectrum & Power Management
#define MAC_ELTID_CHANNEL_SWITCH         37             // Spectrum & Power Management
#define MAC_ELTID_MEASUREMENT_REQUEST    38             // Spectrum & Power Management
#define MAC_ELTID_MEASUREMENT_REPORT     39             // Spectrum & Power Management
#define MAC_ELTID_QUIET                  40             // Spectrum & Power Management
#define MAC_ELTID_IBSS_DFS               41             // Spectrum & Power Management

#define MAC_ELTID_ERP                    42
#define MAC_ELTID_HT_CAPA                45
#define MAC_ELTID_QOS_CAPA               46
#define MAC_ELTID_RSN_IEEE               48
#define MAC_ELTID_EXT_RATES              50
#define MAC_ELTID_MDE                    54  // Mobility Domain
#define MAC_ELTID_FTE                    55  // Fast BSS Transition
#define MAC_ELTID_SUPP_OPER_CLASS        59
#define MAC_ELTID_EXT_CHANNEL_SWITCH     60
#define MAC_ELTID_SEC_CH_OFFSET          62
#define MAC_ELTID_20_40_COEXISTENCE      72
#define MAC_ELTID_OBSS_SCAN_PARAM        74
#define MAC_ELTID_MGMT_MIC               76
#define MAC_ELTID_HT_OPERATION           61
#define MAC_ELTID_LINK_IDENTIFIER        101
#define MAC_ELTID_CHANNEL_SWITCH_TIMING  104
#define MAC_ELTID_PTI_CONTROL            105
#define MAC_ELTID_TPU_BUFFER_STATUS      106
#define MAC_ELTID_MESH_CONF              113
#define MAC_ELTID_MESH_ID                114
#define MAC_ELTID_MESH_LINK_METRIC_REP   115
#define MAC_ELTID_CONGESTION_NOTIF       116
#define MAC_ELTID_MESH_PEER_MGMT         117
#define MAC_ELTID_MESH_CHAN_SWITCH_PARAM 118
#define MAC_ELTID_MESH_AWAKE_WINDOW      119
#define MAC_ELTID_MESH_GANN              125
#define MAC_ELTID_MESH_RANN              126
#define MAC_ELTID_EXT_CAPA               127 // This number need to be confirmed.
#define MAC_ELTID_MESH_PREQ              130
#define MAC_ELTID_MESH_PREP              131
#define MAC_ELTID_MESH_PERR              132
#define MAC_ELTID_VHT_CAPA                   191
#define MAC_ELTID_VHT_OPERATION              192
#define MAC_ELTID_WIDE_BANDWIDTH_CHAN_SWITCH 194
#define MAC_ELTID_VHT_TRANSMIT_PWR_ENVELOP   195
#define MAC_ELTID_CHAN_SWITCH_WRP            196
#define MAC_ELTID_OUI                    221 // Proprietary   (0xDD)

/**
 * MAC HEADER LENGTH DEFINITIONS
 ****************************************************************************************
 */
/// Long MAC Header length (with QoS control field and HT control field)
#define MAC_LONG_QOS_HTC_MAC_HDR_LEN   36
/// Long MAC Header length (with QoS control field)
#define MAC_LONG_QOS_MAC_HDR_LEN       32
/// Long MAC Header length (without QoS control field)
#define MAC_LONG_MAC_HDR_LEN           30
/// Short MAC Header length (with QoS control field and HT control field)
#define MAC_SHORT_QOS_HTC_MAC_HDR_LEN  30
/// Short MAC Header length (with QoS control field)
#define MAC_SHORT_QOS_MAC_HDR_LEN      26
/// Short MAC Header length (without QoS control field)
#define MAC_SHORT_MAC_HDR_LEN          24

/*
* MANAGEMENT FRAME DESCRIPTION
****************************************************************************************
*/
#define MAC_BEACON_MAX_LEN              333
#define MAC_BEACONINFO_SIZE              78   // size without TIM
#define MAC_TIM_SIZE                    251   // max TIM size
// Attention, in a non-AP STA the IBSS
// parameter set is stored in place of
// the TIM -> min size 4

// TIM
#define MAC_TIM_ID_OFT                          0
#define MAC_TIM_LEN_OFT                         1
#define MAC_TIM_CNT_OFT                         2
#define MAC_TIM_PERIOD_OFT                      3
#define MAC_TIM_BMPC_OFT                        4
#define MAC_TIM_BMP_OFT                         5
#define MAC_TIM_IE_LEN                         (5 + MAC_TIM_SIZE)
#define MAC_TIM_BCMC_PRESENT                    CO_BIT(0)

/*
 * Beacon Frame offset (Table 5 p46)
 */
#define MAC_BEACON_TIMESTAMP_OFT          MAC_SHORT_MAC_HDR_LEN   // Order 1
#define MAC_BEACON_INTERVAL_OFT          (MAC_SHORT_MAC_HDR_LEN + 8)   // Order 2
#define MAC_BEACON_CAPA_OFT              (MAC_SHORT_MAC_HDR_LEN + 10)   // Order 3
#define MAC_BEACON_VARIABLE_PART_OFT     (MAC_SHORT_MAC_HDR_LEN + 12)   // Order 4

/*
* ELEMENT ID DEFINITION (Table 20 page 55)
****************************************************************************************
*/
#define MAC_INFOELT_ID_OFT                0
#define MAC_INFOELT_LEN_OFT               1
#define MAC_INFOELT_INFO_OFT              2


 // Cipher suite selectors
 #define MAC_RSNIE_CIPHER_MASK    0x07
 #define MAC_RSNIE_CIPHER_WEP40   0x00
 #define MAC_RSNIE_CIPHER_TKIP    0x01
 #define MAC_RSNIE_CIPHER_CCMP    0x02
 #define MAC_RSNIE_CIPHER_WEP104  0x03
 #define MAC_RSNIE_CIPHER_WPI_SMS4 0x04
 #define MAC_RSNIE_CIPHER_AES_CMAC 0x05

/*
 * MAC HEADER definitions and OFFSETS
 ****************************************************************************************
 */
#define MAC_HEAD_FCTRL_OFT              0
#define MAC_HEAD_DURATION_OFT           2
#define MAC_HEAD_DURATION_CFP      0x8000
#define MAC_HEAD_ADDR1_OFT              4
#define MAC_HEAD_ADDR2_OFT             10
#define MAC_HEAD_ADDR3_OFT             16
#define MAC_HEAD_CTRL_OFT              22
#define MAC_HEAD_ADDR4_OFT             24
#define MAC_HEAD_SHORT_QOS_OFT         24
#define MAC_HEAD_LONG_QOS_OFT          30
#define MAC_ORIGINAL_ETHTYPE_OFT       36

/// SEQUENCE CONTROL FIELD
#define MAC_SEQCTRL_LEN                 2
#define MAC_SEQCTRL_NUM_OFT             4
#define MAC_SEQCTRL_NUM_MSK             0xFFF0
#define MAC_SEQCTRL_NUM_MAX             (MAC_SEQCTRL_NUM_MSK >> MAC_SEQCTRL_NUM_OFT)
#define MAC_SEQCTRL_FRAG_OFT            0
#define MAC_SEQCTRL_FRAG_MSK            0x000F

#endif // _MAC_FRAME_H_
