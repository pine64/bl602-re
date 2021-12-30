#ifndef _BLCONFIG_H_
#define _BLCONFIG_H_

#ifndef  CFG_TXDESC
#define CFG_TXDESC          4
#endif
#define NX_TXDESC_CNT0      CFG_TXDESC
#define NX_CHAN_CTXT_CNT        3

#define CFG_STA_MAX 10
#define NX_REMOTE_STA_MAX CFG_STA_MAX
// this is 10 given by the sizeof txl_buffer_control_desc

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
#define CFG_MODE_SWITCH 0
#undef CONFIG_AOS_MESH
#endif