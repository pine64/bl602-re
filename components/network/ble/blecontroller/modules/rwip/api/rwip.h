#ifndef BLECONTROLLER_MODULES_RWIP_RWIP_H
#define BLECONTROLLER_MODULES_RWIP_RWIP_H

#include <stdbool.h>
#include <stdint.h>

typedef struct {
    uint8_t msg_type; // +0
    void *params; // +4
} rw_task_msg_t;
enum rw_task_msg_type {
    HOST_TO_FW_MSG = 1,
    FW_TO_FW_MSG = 2,
};
enum prevent_sleep {
    RW_WAKE_UP_ONGOING = 1,
    RW_TL_TX_ONGOING = 2,
    RW_TL_RX_ONGOING = 4,
    RW_AHI_TIMEOUT = 8,
    RW_CRYPT_ONGOING = 16,
    RW_DELETE_ELT_ONGOING = 32,
    RW_CSB_NOT_LPO_ALLOWED = 64,
    RW_MWS_WLAN_EVENT_GENERATOR_ACTIVE = 128,
};
enum rwip_eif_types {
    RWIP_EIF_HCIC = 0,
    RWIP_EIF_HCIH = 1,
    RWIP_EIF_AHI = 2,
};
struct rwip_rf_api {
    void (*reset)(void); // +0
    void (*force_agc_enable)(bool); // +4
    bool (*txpwr_dec)(uint8_t); // +8
    bool (*txpwr_inc)(uint8_t); // +12
    void (*txpwr_max_set)(int8_t); // +16
    uint8_t (*txpwr_dbm_get)(uint8_t, uint8_t); // +20
    uint8_t (*txpwr_cs_get)(int8_t); // +24
    int8_t (*rssi_convert)(uint8_t); // +28
    uint32_t (*reg_rd)(uint16_t); // +32
    void (*reg_wr)(uint16_t, uint32_t); // +36
    void (*sleep)(void); // +40
    uint8_t txpwr_max; // +44
    int8_t rssi_high_thr; // +45
    int8_t rssi_low_thr; // +46
    int8_t rssi_interf_thr; // +47
    uint8_t wakeup_delay; // +48
};
struct rwip_prio {
    uint8_t value; // +0
    uint8_t increment; // +1
};
typedef void (*rwip_eif_callback)(void *, uint8_t);
struct rwip_eif_api {
    void (*read)(uint8_t *, uint32_t, rwip_eif_callback, void *); // +0
    void (*write)(const uint8_t *, uint32_t, rwip_eif_callback, void *); // +4
    void (*flow_on)(void); // +8
    bool (*flow_off)(void); // +12
};

extern struct rwip_rf_api rwip_rf;
extern const struct rwip_prio rwip_priority[7];
extern const uint8_t rwip_coex_cfg[5];

void rwip_init(uint32_t error);
void rwip_schedule(void);

#endif /* BLECONTROLLER_MODULES_RWIP_RWIP_H */
