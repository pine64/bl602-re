
typedef struct txl_cfm_env_tag txl_cfm_env_tag, *txl_cfm_env_tag;

typedef struct co_list co_list, *co_list;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

struct co_list_hdr {
    struct co_list_hdr * next;
};

struct co_list {
    struct co_list_hdr * first;
    struct co_list_hdr * last;
};

struct txl_cfm_env_tag {
    struct co_list cfmlist[5];
};

void txl_cfm_flush(void);
void txl_cfm_init(void);
void txl_cfm_push(void);
