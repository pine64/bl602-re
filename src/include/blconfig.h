#ifndef _BLCONFIG_H_
#define _BLCONFIG_H_

// from hal_machw_init nxmac_max_rx_length_set(0x1000)
#define CFG_AMSDU_4K 

#ifndef  CFG_TXDESC
#define CFG_TXDESC          4
#endif
#define NX_TXDESC_CNT0      CFG_TXDESC
#define NX_CHAN_CTXT_CNT        3

#define CFG_STA_MAX 10
// #define NX_REMOTE_STA_MAX CFG_STA_MAX
// this is 10 given by the sizeof txl_buffer_control_desc
// no I think the value should be 3..
#define NX_REMOTE_STA_MAX 3

// == txl_buffer_control_desc_bcmc
#define NX_VIRT_DEV_MAX 2

#define NX_BEACONING 1

#define NX_TD 1
#define NX_POWERSAVE 1
#define NX_MM_TIMER 1
#define NX_HW_SCAN 1
#define NX_CHNL_CTXT 1
#define NX_GP_DMA 1
#define NX_MULTI_ROLE 1
#define NX_CONNECTION_MONITOR 1
#define NX_BCN_AUTONOMOUS_TX 1
#define NX_MFP 0
#define NX_KEY_RAM_CONFIG 1
#define NX_UAPSD 1
#define NX_DPSM 1
#define NX_AMPDU_TX 0
#define NX_AMSDU_TX 0
#define NX_P2P 0
#define NX_P2P_GO 0
#define NX_REORD 0
#define TDLS_ENABLE 0
#define RW_BFMEE_EN 0
#define RW_BFMER_EN 0
#define RW_MUMIMO_RX_EN 0
#define RW_MUMIMO_TX_EN 0
#define RW_WAPI_EN 0
#define NX_VHT 0
#define NX_RX_FRAME_HANDLING 1

/// == 13 not 17, because of the loop in rxl_hwdesc_init
/// Number of RX descriptors (SW and Header descriptors)
#define NX_RXDESC_CNT        13

/// Maximum size of A-MSDU supported in reception
#if defined CFG_AMSDU_4K
#define RWNX_MAX_AMSDU_RX    4096
#elif defined CFG_AMSDU_8K
#define RWNX_MAX_AMSDU_RX    8192
#elif defined CFG_AMSDU_12K
#define RWNX_MAX_AMSDU_RX    12288
#endif

/// Beamformer support
#if defined CFG_BFMER
    #define RW_BFMER_EN                 1
    #define RW_BFR_TXFRAME_CNT          CFG_MU_CNT
#else //defined CFG_BFMER
    #define RW_BFMER_EN                 0
    #define RW_BFR_TXFRAME_CNT          0
    // Disable MU-MIMO TX if Beamformer is not supported
    #undef CFG_MU_CNT
    #define CFG_MU_CNT                  1
#endif //defined CFG_BFMER

/// Number of users supported
#define RW_USER_MAX                 CFG_MU_CNT

#if (NX_BEACONING)
/// Number of TX descriptors available in the system (BCN)
#define CFG_TXDESC4       4
#define NX_TXDESC_CNT4       CFG_TXDESC4
#if (NX_TXDESC_CNT4 & (NX_TXDESC_CNT4 - 1))
#error "Not a power of 2"
#endif
#endif

#define NX_BCNFRAME_LEN 512

// == 4 for some reason?
#define NX_TXFRAME_CNT NX_VIRT_DEV_MAX + RW_BFR_TXFRAME_CNT + 2

#if (NX_P2P)
    #define NX_TXFRAME_LEN       384
#else
    #define NX_TXFRAME_LEN       256
#endif //(NX_P2P)

/// Wireless Mesh Networking support
#if defined CFG_MESH
    #define RW_MESH_EN                  (1)
    #define RW_UMESH_EN                 (1)
    #define RW_MESH_VIF_NB              (CFG_MESH_VIF)
    #define RW_MESH_LINK_NB             (CFG_MESH_LINK)
    #define RW_MESH_PATH_NB             (CFG_MESH_PATH)
    #define RW_MESH_PROXY_NB            (CFG_MESH_PROXY)
    
    // If Mesh is supported, enable MFP feature
    #undef CFG_MFP
    #define CFG_MFP                     (1)
#else
    #define RW_MESH_EN                  (0)
    #define RW_UMESH_EN                 (0)
    #define RW_MESH_VIF_NB              (0)
    #define RW_MESH_LINK_NB             (0)
    #define RW_MESH_PATH_NB             (0)
    #define RW_MESH_PROXY_NB            (0)
#endif //defined CFG_MESH

/// RX Payload buffer size
#define NX_RX_PAYLOAD_LEN 848

/// Number of RX payload descriptors - defined to be twice the maximum A-MSDU size
/// plus one extra one used for HW flow control
// NX_RX_PAYLOAD_DESC_CNT == 13 based on sizeof rx_payload_desc 
// RWNX_MAX_AMSDU_RX / NX_RX_PAYLOAD_LEN == 6
// * 2 only gets 9, I guess it's *3
#define NX_RX_PAYLOAD_DESC_CNT ((RWNX_MAX_AMSDU_RX / NX_RX_PAYLOAD_LEN) * 3 + 1)

#define CFG_MODE_SWITCH 0
#undef CONFIG_AOS_MESH

#define NX_VERSION_MAJ      5
/// Minor version number
#define NX_VERSION_MIN      0
/// Release number
#define NX_VERSION_REL      4
/// Patch number
#define NX_VERSION_PAT      0

/// Version word
#define NX_VERSION ((NX_VERSION_MAJ << 24) | (NX_VERSION_MIN << 16) | \
                           (NX_VERSION_REL << 8) | NX_VERSION_PAT)

#endif