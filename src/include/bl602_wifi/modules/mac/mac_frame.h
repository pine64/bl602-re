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

// MIC and FCS lengths
#define MAC_FCS_LEN     4
#define MAC_MIC_LEN     8

#define MAC_FCTRL_PROTOCOLVERSION_MASK  0x0003
#define MAC_FCTRL_TYPE_MASK             0x000C
#define MAC_FCTRL_MGT_T                 0x0000
#define MAC_FCTRL_CTRL_T                0x0004
#define MAC_FCTRL_DATA_T                0x0008
#define MAC_FCTRL_RSV_T                 0x000c

#define MAC_FCTRL_SUBT_MASK             0x00F0
/// Management SubType
#define MAC_FCTRL_ASSOCREQ_ST           0x0000
#define MAC_FCTRL_ASSOCRSP_ST           0x0010
#define MAC_FCTRL_REASSOCREQ_ST         0x0020
#define MAC_FCTRL_REASSOCRSP_ST         0x0030
#define MAC_FCTRL_PROBEREQ_ST           0x0040
#define MAC_FCTRL_PROBERSP_ST           0x0050
#define MAC_FCTRL_BEACON_ST             0x0080
#define MAC_FCTRL_ATIM_ST               0x0090
#define MAC_FCTRL_DISASSOC_ST           0x00A0
#define MAC_FCTRL_AUTHENT_ST            0x00B0
#define MAC_FCTRL_DEAUTHENT_ST          0x00C0
#define MAC_FCTRL_ACTION_ST             0x00D0
#define MAC_FCTRL_ACTION_NO_ACK_ST      0x00E0
/// Control SubTypes
#define MAC_FCTRL_BFM_REPORT_POLL_ST    0x0040
#define MAC_FCTRL_VHT_NDPA_ST           0x0050
#define MAC_FCTRL_CTRL_WRAPPER_ST       0x0070
#define MAC_FCTRL_BAR_ST                0x0080
#define MAC_FCTRL_BA_ST                 0x0090
#define MAC_FCTRL_PSPOLL_ST             0x00A0
#define MAC_FCTRL_RTS_ST                0x00B0
#define MAC_FCTRL_CTS_ST                0x00C0
#define MAC_FCTRL_ACK_ST                0x00D0
#define MAC_FCTRL_CFEND_ST              0x00E0
#define MAC_FCTRL_CFEND_CFACK_ST        0x00F0

/// Data SubTypes
/* Decoding the subtypes of data type frames can take advantage of the fact that
 * each subtype field bit position is used to indicate a specific modification of
 * the basic data frame (subtype 0). Frame control bit 4 is set to 1 in data
 * subtypes which include +CF-Ack, bit 5 is set to 1 in data subtypes which include
 * +CF-Poll, bit 6 is set to 1 in data subtypes that contain no Frame Body,
 * and bit 7 is set to 1 in the QoS data subtypes, which have QoS Control fields in
 * their MAC headers.
 *
 * Usage: check FrameT and FrameSubT individually. If the FrameT is MAC_FCTRL_DATA_T,
 * check the following bits of the FrameSubT
 */
#define MAC_CFACK_ST_BIT                CO_BIT(4)
#define MAC_CFPOLL_ST_BIT               CO_BIT(5)
#define MAC_NODATA_ST_BIT               CO_BIT(6)
#define MAC_QOS_ST_BIT                  CO_BIT(7)

#define MAC_FCTRL_DATACFACKPOLL_ST      (MAC_CFACK_ST_BIT | MAC_CFPOLL_ST_BIT)
#define MAC_FCTRL_TODS                  0x0100
#define MAC_FCTRL_FROMDS                0x0200
#define MAC_FCTRL_MOREFRAG              0x0400
#define MAC_FCTRL_RETRY                 0x0800
#define MAC_FCTRL_PWRMGT                0x1000
#define MAC_FCTRL_MOREDATA              0x2000
#define MAC_FCTRL_PROTECTEDFRAME        0x4000
#define MAC_FCTRL_ORDER                 0x8000

#define MAC_FCTRL_TODS_FROMDS          (MAC_FCTRL_TODS | MAC_FCTRL_FROMDS)

/// FRAME CONTROL : Type information including Type and SubType
#define MAC_FCTRL_TYPESUBTYPE_MASK      (MAC_FCTRL_TYPE_MASK | MAC_FCTRL_SUBT_MASK)
#define MAC_FCTRL_ASSOCREQ              (MAC_FCTRL_MGT_T     | MAC_FCTRL_ASSOCREQ_ST)
#define MAC_FCTRL_ASSOCRSP              (MAC_FCTRL_MGT_T     | MAC_FCTRL_ASSOCRSP_ST)
#define MAC_FCTRL_REASSOCREQ            (MAC_FCTRL_MGT_T     | MAC_FCTRL_REASSOCREQ_ST)
#define MAC_FCTRL_REASSOCRSP            (MAC_FCTRL_MGT_T     | MAC_FCTRL_REASSOCRSP_ST)
#define MAC_FCTRL_PROBEREQ              (MAC_FCTRL_MGT_T     | MAC_FCTRL_PROBEREQ_ST)
#define MAC_FCTRL_PROBERSP              (MAC_FCTRL_MGT_T     | MAC_FCTRL_PROBERSP_ST)
#define MAC_FCTRL_BEACON                (MAC_FCTRL_MGT_T     | MAC_FCTRL_BEACON_ST)
#define MAC_FCTRL_ATIM                  (MAC_FCTRL_MGT_T     | MAC_FCTRL_ATIM_ST)
#define MAC_FCTRL_DISASSOC              (MAC_FCTRL_MGT_T     | MAC_FCTRL_DISASSOC_ST)
#define MAC_FCTRL_AUTHENT               (MAC_FCTRL_MGT_T     | MAC_FCTRL_AUTHENT_ST)
#define MAC_FCTRL_DEAUTHENT             (MAC_FCTRL_MGT_T     | MAC_FCTRL_DEAUTHENT_ST)
#define MAC_FCTRL_ACTION                (MAC_FCTRL_MGT_T     | MAC_FCTRL_ACTION_ST)
#define MAC_FCTRL_ACTION_NO_ACK         (MAC_FCTRL_MGT_T     | MAC_FCTRL_ACTION_NO_ACK_ST)
#define MAC_FCTRL_BFM_REPORT_POLL       (MAC_FCTRL_CTRL_T    | MAC_FCTRL_BFM_REPORT_POLL_ST)
#define MAC_FCTRL_VHT_NDPA              (MAC_FCTRL_CTRL_T    | MAC_FCTRL_VHT_NDPA_ST)
#define MAC_FCTRL_BA                    (MAC_FCTRL_CTRL_T    | MAC_FCTRL_BA_ST)
#define MAC_FCTRL_BAR                   (MAC_FCTRL_CTRL_T    | MAC_FCTRL_BAR_ST)
#define MAC_FCTRL_PSPOLL                (MAC_FCTRL_CTRL_T    | MAC_FCTRL_PSPOLL_ST)
#define MAC_FCTRL_RTS                   (MAC_FCTRL_CTRL_T    | MAC_FCTRL_RTS_ST)
#define MAC_FCTRL_CTS                   (MAC_FCTRL_CTRL_T    | MAC_FCTRL_CTS_ST)
#define MAC_FCTRL_ACK                   (MAC_FCTRL_CTRL_T    | MAC_FCTRL_ACK_ST)
#define MAC_FCTRL_CFEND                 (MAC_FCTRL_CTRL_T    | MAC_FCTRL_CFEND_ST)
#define MAC_FCTRL_CFEND_CFACK           (MAC_FCTRL_CFEND     | MAC_CFACK_ST_BIT)
#define MAC_FCTRL_DATA_CFACK            (MAC_FCTRL_DATA_T    | MAC_CFACK_ST_BIT)
#define MAC_FCTRL_DATA_CFPOLL           (MAC_FCTRL_DATA_T    | MAC_CFPOLL_ST_BIT)
#define MAC_FCTRL_DATA_CFACKPOLL        (MAC_FCTRL_DATA_T    | MAC_FCTRL_DATACFACKPOLL_ST)
#define MAC_FCTRL_NULL_FUNCTION         (MAC_FCTRL_DATA_T    | MAC_NODATA_ST_BIT)
#define MAC_FCTRL_NULL_CFACK            (MAC_FCTRL_NULL_FUNCTION  | MAC_CFACK_ST_BIT)
#define MAC_FCTRL_NULL_CFPOLL           (MAC_FCTRL_NULL_FUNCTION  | MAC_CFPOLL_ST_BIT)
#define MAC_FCTRL_NULL_CFACKPOLL        (MAC_FCTRL_NULL_FUNCTION  | MAC_FCTRL_DATACFACKPOLL_ST)
#define MAC_FCTRL_QOS_DATA              (MAC_FCTRL_DATA_T    | MAC_QOS_ST_BIT)
#define MAC_FCTRL_QOS_DATA_CFACK        (MAC_FCTRL_QOS_DATA  | MAC_CFACK_ST_BIT)
#define MAC_FCTRL_QOS_DATA_CFPOLL       (MAC_FCTRL_QOS_DATA  | MAC_CFPOLL_ST_BIT)
#define MAC_FCTRL_QOS_DATA_CFACKPOLL    (MAC_FCTRL_QOS_DATA  | MAC_FCTRL_DATACFACKPOLL_ST)
#define MAC_FCTRL_QOS_NULL              (MAC_FCTRL_QOS_DATA  | MAC_NODATA_ST_BIT)
#define MAC_FCTRL_QOS_NULL_CFACK        (MAC_FCTRL_QOS_DATA  | MAC_FCTRL_NULL_CFACK)
#define MAC_FCTRL_QOS_NULL_CFPOLL       (MAC_FCTRL_QOS_DATA  | MAC_FCTRL_NULL_CFPOLL)
#define MAC_FCTRL_QOS_NULL_CFACKPOLL    (MAC_FCTRL_QOS_DATA  | MAC_FCTRL_NULL_CFACKPOLL)

#define MAC_FCTRL_IS(fc, type) (((fc) & MAC_FCTRL_TYPESUBTYPE_MASK) == MAC_FCTRL_##type)
#endif // _MAC_FRAME_H_
