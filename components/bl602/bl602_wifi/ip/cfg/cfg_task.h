
typedef struct anon_struct.conflict1227f3 anon_struct.conflict1227f3, *anon_struct.conflict1227f3;

typedef ulong uint32_t;

struct anon_struct.conflict1227f3 {
    uint32_t task;
    uint32_t element;
};

typedef struct anon_struct.conflict12283b anon_struct.conflict12283b, *anon_struct.conflict12283b;

struct anon_struct.conflict12283b {
    uint32_t task;
    uint32_t element;
    uint32_t type;
    uint32_t length;
    uint32_t[0] buf;
};

typedef struct anon_struct.conflict89a93 anon_struct.conflict89a93, *anon_struct.conflict89a93;

struct anon_struct.conflict89a93 {
    uint32_t task;
    uint32_t element;
    uint32_t length;
    uint32_t[0] buf;
};

typedef union anon_union.conflict122886 anon_union.conflict122886, *anon_union.conflict122886;

union anon_union.conflict122886 {
    undefined1 get; /* Data type larger than union's declared size: anon_struct.conflict1227f3[1] */
    undefined1 reset; /* Data type larger than union's declared size: anon_struct.conflict122817[1] */
    undefined1 set; /* Data type larger than union's declared size: anon_struct.conflict12283b[1] */
};

typedef enum cfg_msg_tag {
    CFG_MAX=12290,
    CFG_START_REQ=12288,
    CFG_START_CFM=12289
} cfg_msg_tag;

typedef struct cfg_start_cfm cfg_start_cfm, *cfg_start_cfm;

typedef uchar uint8_t;

struct cfg_start_cfm {
    uint8_t status;
};

typedef struct cfg_start_req cfg_start_req, *cfg_start_req;

struct cfg_start_req { /* Missing member u : anon_union.conflict122886_for_u at offset 0x4 [exceeds parent struct len] */
    uint32_t ops;
};

typedef enum cfg_state_tag {
    CFG_IDLE=0,
    CFG_STATE_MAX=1
} cfg_state_tag;

