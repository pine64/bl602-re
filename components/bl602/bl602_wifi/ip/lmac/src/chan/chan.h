
void chan_bcn_detect_start(void);
void chan_bcn_to_evt(void);
void chan_ctxt_add(void);
void chan_ctxt_link(void);
typedef enum chan_ctxt_status {
    CHAN_WAIT_NOA_CFM=3,
    CHAN_SENDING_NOA=6,
    CHAN_CTXT_STATUS_MAX=7,
    CHAN_NOT_PROG=1,
    CHAN_NOT_SCHEDULED=0,
    CHAN_WAITING_END=4,
    CHAN_PRESENT=5,
    CHAN_GOTO_IDLE=2
} chan_ctxt_status;

typedef struct chan_ctxt_tag chan_ctxt_tag, *chan_ctxt_tag;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

typedef struct mm_chan_ctxt_add_req mm_chan_ctxt_add_req, *mm_chan_ctxt_add_req;

typedef ushort uint16_t;

typedef uint16_t ke_task_id_t;

typedef uchar uint8_t;

typedef char int8_t;

struct co_list_hdr {
    struct co_list_hdr * next;
};

struct mm_chan_ctxt_add_req {
    uint8_t band;
    uint8_t type;
    uint16_t prim20_freq;
    uint16_t center1_freq;
    uint16_t center2_freq;
    int8_t tx_power;
    undefined field_0x9;
};

struct chan_ctxt_tag {
    struct co_list_hdr list_hdr;
    struct mm_chan_ctxt_add_req channel;
    ke_task_id_t taskid;
    uint16_t nb_slots;
    uint16_t nb_rem_slots;
    uint16_t nb_res_slots;
    uint8_t status;
    uint8_t idx;
    uint8_t nb_linked_vif;
    uint8_t vif_index;
    undefined field_0x1a;
    undefined field_0x1b;
};

void chan_ctxt_unlink(void);
void chan_ctxt_update(void);
typedef enum chan_env_status_bit {
    CHAN_ENV_SCAN_BIT=3,
    CHAN_ENV_ROC_BIT=2,
    CHAN_ENV_TIMEOUT_BIT=5,
    CHAN_ENV_ROC_WAIT_BIT=0,
    CHAN_ENV_BIT_MAX=7,
    CHAN_ENV_SCAN_WAIT_BIT=1,
    CHAN_ENV_BCN_DETECT_BIT=6,
    CHAN_ENV_DELAY_PROG_BIT=4
} chan_env_status_bit;

typedef struct chan_env_tag chan_env_tag, *chan_env_tag;

typedef struct co_list co_list, *co_list;

typedef struct mm_timer_tag mm_timer_tag, *mm_timer_tag;

typedef ulong uint32_t;

void cb_timer_func_ptr(void * );
struct co_list {
    struct co_list_hdr * first;
    struct co_list_hdr * last;
};

struct mm_timer_tag {
    struct co_list_hdr list_hdr;
    void (* cb)(void *);
    void * env;
    uint32_t time;
};

struct chan_env_tag {
    struct co_list list_free_ctxt;
    struct co_list list_sched_ctxt;
    struct co_list list_tbtt;
    struct co_list list_tbtt_delay;
    struct chan_ctxt_tag * current_channel;
    struct chan_ctxt_tag * chan_switch;
    struct mm_timer_tag tmr_tbtt_switch;
    struct mm_timer_tag tmr_cde;
    struct mm_timer_tag tmr_ctxt_op;
    struct mm_timer_tag tmr_conn_less;
    uint32_t cde_dur_us;
    uint32_t cde_time;
    uint8_t status;
    uint8_t cfm_cnt;
    uint8_t nb_sched_ctxt;
    uint8_t pm;
};

void chan_init(void);
void chan_is_on_channel(void);
void chan_is_on_operational_channel(void);
void chan_is_tx_allowed(void);
void chan_roc_req(void);
void chan_scan_req(void);
typedef enum chan_tbtt_status {
    CHAN_TBTT_NOT_PROG=0,
    CHAN_TBTT_STATUS_MAX=3,
    CHAN_TBTT_PRESENCE=2,
    CHAN_TBTT_PROG=1
} chan_tbtt_status;

void chan_tbtt_switch_update(void);
typedef struct chan_tbtt_tag chan_tbtt_tag, *chan_tbtt_tag;

struct chan_tbtt_tag {
    struct co_list_hdr list_hdr;
    uint32_t time;
    uint8_t vif_index;
    uint8_t priority;
    uint8_t status;
    undefined field_0xb;
};

void chan_update_tx_power(void);
