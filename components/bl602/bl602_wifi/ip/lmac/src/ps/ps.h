
void ps_check_beacon(void);
void ps_check_frame(void);
void ps_check_tx_frame(void);
typedef enum ps_dpsm_state_bit_pos {
    PS_DPSM_STATE_RESUMING=2,
    PS_DPSM_STATE_SET_MODE_REQ=4,
    PS_DPSM_STATE_ON=0,
    PS_DPSM_STATE_PAUSING=1,
    PS_DPSM_STATE_PAUSE=3
} ps_dpsm_state_bit_pos;

typedef struct ps_env_tag ps_env_tag, *ps_env_tag;

typedef bool _Bool;

typedef ushort uint16_t;

typedef uint16_t ke_task_id_t;

typedef ulong uint32_t;

typedef uchar uint8_t;

typedef struct mm_timer_tag mm_timer_tag, *mm_timer_tag;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

void cb_timer_func_ptr(void * );
struct co_list_hdr {
    struct co_list_hdr * next;
};

struct mm_timer_tag {
    struct co_list_hdr list_hdr;
    void (* cb)(void *);
    void * env;
    uint32_t time;
};

struct ps_env_tag {
    _Bool ps_on;
    undefined field_0x1;
    ke_task_id_t taskid;
    uint32_t prevent_sleep;
    uint8_t cfm_cnt;
    undefined field_0x9;
    undefined field_0xa;
    undefined field_0xb;
    struct mm_timer_tag uapsd_timer;
    _Bool uapsd_tmr_on;
    _Bool uapsd_on;
    undefined field_0x1e;
    undefined field_0x1f;
    uint32_t uapsd_timeout;
    uint8_t dpsm_state;
    uint8_t next_mode;
    undefined field_0x26;
    undefined field_0x27;
};

void ps_init(void);
void ps_set_mode(void);
_Bool ps_sleep_check(void);
void ps_traffic_status_update(void);
_Bool ps_uapsd_enabled(void);
void ps_uapsd_set(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file ps.h
* Header file for BL602
*/
#ifndef __PS_H__
#define __PS_H__

enum ps_dpsm_state_bit_pos {
    PS_DPSM_STATE_ON = 0,
    PS_DPSM_STATE_PAUSING = 1,
    PS_DPSM_STATE_RESUMING = 2,
    PS_DPSM_STATE_PAUSE = 3,
    PS_DPSM_STATE_SET_MODE_REQ = 4,
};
struct ps_env_tag {
    bool ps_on; // +0
    ke_task_id_t taskid; // +2
    uint32_t prevent_sleep; // +4
    uint8_t cfm_cnt; // +8
    struct mm_timer_tag uapsd_timer; // +12
    bool uapsd_tmr_on; // +28
    bool uapsd_on; // +29
    uint32_t uapsd_timeout; // +32
    uint8_t dpsm_state; // +36
    uint8_t next_mode; // +37
};
struct ps_env_tag ps_env;

#endif // __PS_H__
#endf 0 //TODO EXISTS ALEADY
