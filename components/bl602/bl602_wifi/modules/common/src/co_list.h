
typedef struct co_list co_list, *co_list;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

struct co_list_hdr {
    struct co_list_hdr * next;
};

struct co_list {
    struct co_list_hdr * first;
    struct co_list_hdr * last;
};

void co_list_cnt(void);
void co_list_extract(void);
void co_list_init(void);
void co_list_insert(void);
void co_list_insert_after(void);
_Bool co_list_is_empty(co_list * list);
co_list_hdr * co_list_next(co_list_hdr * list_hdr);
co_list_hdr * co_list_pick(co_list * list);
void co_list_pop_front(void);
void co_list_push_back(void);
void co_list_remove(void);
