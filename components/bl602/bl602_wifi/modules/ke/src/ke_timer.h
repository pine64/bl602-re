
uint32_t ke_time(void);
_Bool ke_time_abs_cmp(uint32_t time1, uint32_t time2);
_Bool ke_time_past(uint32_t time);
typedef struct ke_timer ke_timer, *ke_timer;

typedef ushort uint16_t;

typedef uint16_t ke_msg_id_t;

typedef uint16_t ke_task_id_t;

typedef ulong uint32_t;

struct ke_timer {
    struct ke_timer * next;
    ke_msg_id_t id;
    ke_task_id_t task;
    uint32_t time;
};

void ke_timer_clear(void);
void ke_timer_set(void);
