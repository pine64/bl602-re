
int ke_msg_func_t(ke_msg_id_t , void * , ke_task_id_t , ke_task_id_t );
typedef struct ke_msg_handler ke_msg_handler, *ke_msg_handler;

typedef ushort uint16_t;

typedef uint16_t ke_msg_id_t;

typedef uint16_t ke_task_id_t;

int ke_msg_func_t(ke_msg_id_t , void * , ke_task_id_t , ke_task_id_t );
struct ke_msg_handler {
    ke_msg_id_t id;
    undefined field_0x2;
    undefined field_0x3;
    int (* func)(ke_msg_id_t, void *, ke_task_id_t, ke_task_id_t);
};

void ke_state_get(void);
typedef struct ke_state_handler ke_state_handler, *ke_state_handler;

struct ke_state_handler {
    struct ke_msg_handler * msg_table;
    uint16_t msg_cnt;
    undefined field_0x6;
    undefined field_0x7;
};

void ke_state_set(void);
typedef struct ke_task_desc ke_task_desc, *ke_task_desc;

typedef uint16_t ke_state_t;

struct ke_task_desc {
    struct ke_state_handler * state_handler;
    struct ke_state_handler * default_handler;
    ke_state_t * state;
    uint16_t state_max;
    uint16_t idx_max;
};

_Bool ke_task_local(ke_task_id_t id);
