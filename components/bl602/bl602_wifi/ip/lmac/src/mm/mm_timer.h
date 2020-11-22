
void cb_timer_func_ptr(void * );
void mm_timer_clear(void);
typedef struct mm_timer_env_tag mm_timer_env_tag, *mm_timer_env_tag;

typedef struct co_list co_list, *co_list;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

struct co_list_hdr {
    struct co_list_hdr * next;
};

struct co_list {
    struct co_list_hdr * first;
    struct co_list_hdr * last;
};

struct mm_timer_env_tag {
    struct co_list prog;
};

void mm_timer_init(void);
void mm_timer_set(void);
typedef struct mm_timer_tag mm_timer_tag, *mm_timer_tag;

void cb_timer_func_ptr(void * );
typedef ulong uint32_t;

struct mm_timer_tag {
    struct co_list_hdr list_hdr;
    void (* cb)(void *);
    void * env;
    uint32_t time;
};

