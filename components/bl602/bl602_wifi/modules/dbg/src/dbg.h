
void dbg_init(void);
typedef enum dbg_mod_tag {
    DBG_MOD_IDX_MAX=8,
    DBG_MOD_IDX_PHY=7,
    DBG_MOD_IDX_MM=4,
    DBG_MOD_IDX_RX=6,
    DBG_MOD_IDX_IPC=2,
    DBG_MOD_IDX_DBG=1,
    DBG_MOD_IDX_TX=5,
    DBG_MOD_IDX_KE=0,
    DBG_MOD_IDX_DMA=3
} dbg_mod_tag;

typedef enum dbg_sev_tag {
    DBG_SEV_IDX_INF=4,
    DBG_SEV_IDX_NONE=0,
    DBG_SEV_ALL=7,
    DBG_SEV_IDX_WRN=3,
    DBG_SEV_IDX_MAX=6,
    DBG_SEV_IDX_CRT=1,
    DBG_SEV_IDX_ERR=2,
    DBG_SEV_IDX_VRB=5
} dbg_sev_tag;

void dbg_test_print(void);
typedef struct debug_env_tag debug_env_tag, *debug_env_tag;

typedef ulong uint32_t;

struct debug_env_tag {
    uint32_t filter_module;
    uint32_t filter_severity;
};

