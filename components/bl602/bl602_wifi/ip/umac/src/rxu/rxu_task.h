
typedef struct rxu_mgt_ind rxu_mgt_ind, *rxu_mgt_ind;

typedef ushort uint16_t;

typedef uchar uint8_t;

typedef ulong uint32_t;

typedef char int8_t;

struct rxu_mgt_ind {
    uint16_t length;
    uint16_t framectrl;
    uint16_t center_freq;
    uint8_t band;
    uint8_t sta_idx;
    uint8_t inst_nbr;
    uint8_t sa[6];
    undefined field_0xf;
    uint32_t tsflo;
    uint32_t tsfhi;
    int8_t rssi;
    int8_t ppm_abs;
    int8_t ppm_rel;
    uint8_t data_rate;
    uint32_t[0] payload;
};

typedef enum rxu_msg_tag {
    RXU_MGT_IND=11264,
    RXU_NULL_DATA=11265
} rxu_msg_tag;

