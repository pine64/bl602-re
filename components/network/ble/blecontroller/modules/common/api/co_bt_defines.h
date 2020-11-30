/**
* @file co_bt_defines.h
* Header file for BL602
*/
#ifndef __CO_BT_DEFINES_H__
#define __CO_BT_DEFINES_H__

enum le_evt_mask {
    LE_CON_CMP_EVT_BIT = 0,
    LE_CON_CMP_EVT_MSK = 1,
    LE_ADV_REP_EVT_BIT = 1,
    LE_ADV_REP_EVT_MSK = 2,
    LE_CON_UPD_EVT_BIT = 2,
    LE_CON_UPD_EVT_MSK = 4,
    LE_CON_RD_REM_FEAT_EVT_BIT = 3,
    LE_CON_RD_REM_FEAT_EVT_MSK = 8,
    LE_LG_TR_KEY_REQ_EVT_BIT = 4,
    LE_LG_TR_KEY_REQ_EVT_MSK = 16,
    LE_REM_CON_PARA_REQ_EVT_BIT = 5,
    LE_REM_CON_PARA_REQ_EVT_MSK = 32,
    LE_DATA_LEN_CHG_EVT_BIT = 6,
    LE_DATA_LEN_CHG_EVT_MSK = 64,
    LE_RD_LOC_P256_PUB_KEY_CMP_EVT_BIT = 7,
    LE_RD_LOC_P256_PUB_KEY_CMP_EVT_MSK = 128,
    LE_GEN_DHKEY_CMP_EVT_BIT = 8,
    LE_GEN_DHKEY_CMP_EVT_MSK = 256,
    LE_ENH_CON_CMP_EVT_BIT = 9,
    LE_ENH_CON_CMP_EVT_MSK = 512,
    LE_DIR_ADV_REP_EVT_BIT = 10,
    LE_DIR_ADV_REP_EVT_MSK = 1024,
    LE_PHY_UPD_CMP_EVT_BIT = 11,
    LE_PHY_UPD_CMP_EVT_MSK = 2048,
    LE_EXT_ADV_REP_EVT_BIT = 12,
    LE_EXT_ADV_REP_EVT_MSK = 4096,
    LE_PER_ADV_SYNC_EST_EVT_BIT = 13,
    LE_PER_ADV_SYNC_EST_EVT_MSK = 8192,
    LE_PER_ADV_REP_EVT_BIT = 14,
    LE_PER_ADV_REP_EVT_MSK = 16384,
    LE_PER_ADV_SYNC_LOST_EVT_BIT = 15,
    LE_PER_ADV_SYNC_LOST_EVT_MSK = 32768,
    LE_EXT_SCAN_TO_EVT_BIT = 16,
    LE_EXT_SCAN_TO_EVT_MSK = 65536,
    LE_EXT_ADV_SET_TER_EVT_BIT = 17,
    LE_EXT_ADV_SET_TER_EVT_MSK = 131072,
    LE_SCAN_REQ_REC_EVT_BIT = 18,
    LE_SCAN_REQ_REC_EVT_MSK = 262144,
    LE_CH_SEL_ALGO_EVT_BIT = 19,
    LE_CH_SEL_ALGO_EVT_MSK = 524288,
    LE_DFT_EVT_MSK = 31,
};
enum rnd_addr_type {
    RND_STATIC_ADDR = 192,
    RND_NON_RSLV_ADDR = 0,
    RND_RSLV_ADDR = 64,
};
enum adv_channel_map {
    ADV_CHNL_37_EN = 1,
    ADV_CHNL_38_EN = 2,
    ADV_CHNL_39_EN = 4,
    ADV_ALL_CHNLS_EN = 7,
    ADV_CHNL_END = 8,
};
enum adv_filter_policy {
    ADV_ALLOW_SCAN_ANY_CON_ANY = 0,
    ADV_ALLOW_SCAN_WLST_CON_ANY = 1,
    ADV_ALLOW_SCAN_ANY_CON_WLST = 2,
    ADV_ALLOW_SCAN_WLST_CON_WLST = 3,
    ADV_ALLOW_SCAN_END = 4,
};
enum scan_filter_policy {
    SCAN_ALLOW_ADV_ALL = 0,
    SCAN_ALLOW_ADV_WLST = 1,
    SCAN_ALLOW_ADV_ALL_AND_INIT_RPA = 2,
    SCAN_ALLOW_ADV_WLST_AND_INIT_RPA = 3,
    SCAN_ALLOW_ADV_END = 4,
};
enum scan_dup_filter_policy {
    SCAN_FILT_DUPLIC_DIS = 0,
    SCAN_FILT_DUPLIC_EN = 1,
    SCAN_FILT_DUPLIC_END = 2,
};
struct evt_mask {
    uint8_t mask[8]; // +0
};
struct bd_addr {
    uint8_t addr[6]; // +0
};
struct back_packet_info {
    uint8_t used; // +0
    uint8_t advmode_headlen; // +1
    uint8_t head_flags; // +2
    struct bd_addr adva_addr; // +3
    struct bd_addr targeta_addr; // +9
    uint16_t adi; // +16
    uint8_t auxptr[3]; // +18
    uint8_t syncinfo[18]; // +21
    uint8_t txpwr; // +39
    uint8_t datalen; // +40
    uint8_t data[255]; // +41
};
struct access_addr {
    uint8_t addr[4]; // +0
};
struct adv_data {
    uint8_t data[31]; // +0
};
struct scan_rsp_data {
    uint8_t data[31]; // +0
};
struct le_chnl_map {
    uint8_t map[5]; // +0
};
struct ltk {
    uint8_t ltk[16]; // +0
};
struct rand_nb {
    uint8_t nb[8]; // +0
};
struct adv_report {
    uint8_t evt_type; // +0
    uint8_t adv_addr_type; // +1
    struct bd_addr adv_addr; // +2
    uint8_t data_len; // +8
    uint8_t data[31]; // +9
    uint8_t rssi; // +40
};
struct dir_adv_report {
    uint8_t evt_type; // +0
    uint8_t addr_type; // +1
    struct bd_addr addr; // +2
    uint8_t dir_addr_type; // +8
    struct bd_addr dir_addr; // +9
    uint8_t rssi; // +15
};
struct le_features {
    uint8_t feats[8]; // +0
};
struct features {
    uint8_t feats[8]; // +0
};
struct supp_cmds {
    uint8_t cmds[64]; // +0
};
struct le_states {
    uint8_t supp_states[8]; // +0
};
struct crc_init {
    uint8_t crc[3]; // +0
};
struct sess_k_div_x {
    uint8_t skdiv[8]; // +0
};
struct sess_k_div {
    uint8_t skd[16]; // +0
};
struct init_vect {
    uint8_t iv[4]; // +0
};
struct t_public_key {
    uint8_t x[32]; // +0
    uint8_t y[32]; // +32
};
typedef struct t_public_key t_public_key;

#endif // __CO_BT_DEFINES_H__
