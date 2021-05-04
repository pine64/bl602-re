/**
* @file rwip_config.h
* Header file for BL602
*/
#ifndef __RWIP_CONFIG_H__
#define __RWIP_CONFIG_H__

enum KE_EVENT_TYPE {
    KE_EVENT_ECC_MULTIPLICATION = 0,
    KE_EVENT_BLE_CRYPT = 1,
    KE_EVENT_KE_MESSAGE = 2,
    KE_EVENT_KE_TIMER = 3,
    KE_EVENT_H4TL_TX = 4,
    KE_EVENT_H4TL_CMD_HDR_RX = 5,
    KE_EVENT_H4TL_CMD_PLD_RX = 6,
    KE_EVENT_BT_PSCAN_PROC = 7,
    KE_EVENT_BLE_EVT_DEFER = 8,
    KE_EVENT_BLE_EVT_DELETE = 9,
    KE_EVENT_MAX = 10,
};
enum KE_TASK_TYPE {
    TASK_LLM = 0,
    TASK_LLC = 1,
    TASK_LLD = 2,
    TASK_DBG = 3,
    TASK_HCI_ONCHIP = 4,
    TASK_MAX = 5,
    TASK_NONE = 255,
};
enum rwip_coex_config_idx {
    RWIP_COEX_CON_IDX = 0,
    RWIP_COEX_CON_DATA_IDX = 1,
    RWIP_COEX_ADV_IDX = 2,
    RWIP_COEX_SCAN_IDX = 3,
    RWIP_COEX_INIT_IDX = 4,
    RWIP_COEX_CFG_MAX = 5,
};
enum rwip_prio_idx {
    RWIP_PRIO_SCAN_IDX = 0,
    RWIP_PRIO_INIT_IDX = 1,
    RWIP_PRIO_LE_ESTAB_IDX = 2,
    RWIP_PRIO_LE_CON_IDLE_IDX = 3,
    RWIP_PRIO_LE_CON_ACT_IDX = 4,
    RWIP_PRIO_ADV_IDX = 5,
    RWIP_PRIO_ADV_HDC_IDX = 6,
    RWIP_PRIO_IDX_MAX = 7,
};
enum rwip_prio_dft {
    RWIP_PRIO_SCAN_DFT = 5,
    RWIP_PRIO_INIT_DFT = 5,
    RWIP_PRIO_LE_ESTAB_DFT = 20,
    RWIP_PRIO_LE_CON_IDLE_DFT = 10,
    RWIP_PRIO_LE_CON_ACT_DFT = 15,
    RWIP_PRIO_ADV_DFT = 5,
    RWIP_PRIO_ADV_HDC_DFT = 10,
    RWIP_PRIO_MAX = 31,
};
enum rwip_incr_dft {
    RWIP_INCR_SCAN_DFT = 1,
    RWIP_INCR_INIT_DFT = 1,
    RWIP_INCR_LE_ESTAB_DFT = 1,
    RWIP_INCR_LE_CON_IDLE_DFT = 1,
    RWIP_INCR_LE_CON_ACT_DFT = 11,
    RWIP_INCR_ADV_DFT = 1,
    RWIP_INCR_ADV_HDC_PRIO_DFT = 1,
};

#endif // __RWIP_CONFIG_H__