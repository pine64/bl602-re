
void ke_free(void * mem_ptr);
void * ke_malloc(uint32_t size);
mblock_free * ke_mem_init(void);
typedef struct mblock_free mblock_free, *mblock_free;

typedef ulong uint32_t;

struct mblock_free {
    struct mblock_free * next;
    uint32_t size;
};

typedef struct mblock_used mblock_used, *mblock_used;

struct mblock_used {
    uint32_t size;
};

