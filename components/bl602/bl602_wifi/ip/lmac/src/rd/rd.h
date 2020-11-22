
typedef struct rd_env_tag rd_env_tag, *rd_env_tag;

typedef struct co_list co_list, *co_list;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

struct co_list_hdr {
    struct co_list_hdr * next;
};

struct co_list {
    struct co_list_hdr * first;
    struct co_list_hdr * last;
};

struct rd_env_tag {
    struct co_list event_free_list;
};

