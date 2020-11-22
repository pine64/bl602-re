
typedef struct td_env_tag td_env_tag, *td_env_tag;

typedef struct mm_timer_tag mm_timer_tag, *mm_timer_tag;

typedef ulong uint32_t;

typedef uchar uint8_t;

typedef bool _Bool;

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

struct td_env_tag {
    struct mm_timer_tag td_timer;
    uint32_t pck_cnt_tx;
    uint32_t pck_cnt_rx;
    uint32_t pck_cnt_tx_ps;
    uint32_t pck_cnt_rx_ps;
    uint8_t vif_index;
    uint8_t status;
    _Bool is_on;
    _Bool has_active_chan;
};

uint8_t td_get_ps_status(uint8_t vif_index);
uint8_t td_get_status(uint8_t vif_index);
void td_init(void);
void td_pck_ind(void);
void td_pck_ps_ind(void);
void td_reset(void);
void td_start(void);
typedef enum td_status_bit {
    TD_STATUS_TX_PS=2,
    TD_STATUS_RX_PS=3,
    TD_STATUS_RX=1,
    TD_STATUS_TX=0
} td_status_bit;

