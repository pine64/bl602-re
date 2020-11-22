
void mm_bcn_change(void);
typedef struct mm_bcn_env_tag mm_bcn_env_tag, *mm_bcn_env_tag;

typedef struct mm_bcn_change_req mm_bcn_change_req, *mm_bcn_change_req;

typedef bool _Bool;

typedef struct hal_dma_desc_tag hal_dma_desc_tag, *hal_dma_desc_tag;

typedef struct co_list co_list, *co_list;

typedef ulong uint32_t;

typedef ushort uint16_t;

typedef uchar uint8_t;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

typedef struct dma_desc dma_desc, *dma_desc;

void cb_dma_func_ptr(void * , int );
struct co_list_hdr {
    struct co_list_hdr * next;
};

struct co_list {
    struct co_list_hdr * first;
    struct co_list_hdr * last;
};

struct hal_dma_desc_tag {
    struct co_list_hdr hdr;
    struct dma_desc * dma_desc;
    void (* cb)(void *, int);
    void * env;
};

struct mm_bcn_env_tag {
    struct mm_bcn_change_req * param;
    int tx_cfm;
    _Bool tx_pending;
    _Bool update_ongoing;
    _Bool update_pending;
    undefined field_0xb;
    struct hal_dma_desc_tag dma;
    struct co_list tim_list;
};

struct mm_bcn_change_req {
    uint32_t bcn_ptr;
    uint16_t bcn_len;
    uint16_t tim_oft;
    uint8_t tim_len;
    uint8_t inst_nbr;
    uint8_t csa_oft[2];
    uint8_t[0] bcn_buf;
};

struct dma_desc {
    uint32_t src;
    uint32_t dest;
    uint16_t length;
    uint16_t ctrl;
    uint32_t next;
};

void mm_bcn_init(void);
void mm_bcn_init_vif(void);
void mm_bcn_transmit(void);
void mm_tim_update(void);
