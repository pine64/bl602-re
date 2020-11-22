
typedef struct bl_env_tag bl_env_tag, *bl_env_tag;

typedef uchar uint8_t;

struct bl_env_tag {
    uint8_t prev_hw_state;
    undefined field_0x1;
    undefined field_0x2;
    undefined field_0x3;
    int hw_in_doze;
};

void bl_init(void);
void bl_nap_calculate(void);
void bl_sleep(void);
