typedef struct dma_desc dma_desc, *dma_desc;

struct dma_desc {
    uint32_t src;
    uint32_t dest;
    uint16_t length;
    uint16_t ctrl;
    uint32_t next;
};

typedef struct dma_env_tag dma_env_tag, *dma_env_tag;

struct dma_env_tag {
    struct dma_desc * last_dma[4];
};

