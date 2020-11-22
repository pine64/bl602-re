
void cb_dma_func_ptr(void * , int );
typedef struct hal_dma_desc_tag hal_dma_desc_tag, *hal_dma_desc_tag;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

typedef struct dma_desc dma_desc, *dma_desc;

void cb_dma_func_ptr(void * , int );
typedef ulong uint32_t;

typedef ushort uint16_t;

struct co_list_hdr {
    struct co_list_hdr * next;
};

struct hal_dma_desc_tag {
    struct co_list_hdr hdr;
    struct dma_desc * dma_desc;
    void (* cb)(void *, int);
    void * env;
};

struct dma_desc {
    uint32_t src;
    uint32_t dest;
    uint16_t length;
    uint16_t ctrl;
    uint32_t next;
};

typedef struct hal_dma_env_tag hal_dma_env_tag, *hal_dma_env_tag;

typedef struct co_list co_list, *co_list;

struct co_list {
    struct co_list_hdr * first;
    struct co_list_hdr * last;
};

struct hal_dma_env_tag {
    struct co_list prog[2];
    struct co_list free_gp_dma_descs;
    uint16_t lli_cnt[2];
};

void hal_dma_init(void);
void hal_dma_push(void);
