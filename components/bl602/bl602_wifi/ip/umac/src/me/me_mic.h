
void me_mic_calc(void);
void me_mic_end(void);
void me_mic_init(void);
typedef struct mic_calc mic_calc, *mic_calc;

typedef ulong uint32_t;

typedef uchar uint8_t;

struct mic_calc {
    uint32_t mic_key_least;
    uint32_t mic_key_most;
    uint32_t last_m_i;
    uint8_t last_m_i_len;
    undefined field_0xd;
    undefined field_0xe;
    undefined field_0xf;
};

