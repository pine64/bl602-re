void phy_tcal_callback(int16_t temperature);
void phy_tcal_handle(void);
void phy_tcal_rxgain(int16_t curr_temperature);
void phy_tcal_rxiq(int16_t curr_temperature);
void phy_tcal_stop(void);
void phy_tcal_txiq(int16_t curr_temperature);
void phy_tcal_txpwr(int16_t curr_temperature);
typedef struct tcal_tag tcal_tag, *tcal_tag;

struct tcal_tag {
    int16_t prev_temperature;
    undefined field_0x2;
    undefined field_0x3;
    uint32_t last_action_time[4];
    uint32_t last_action_temperature[4];
    int32_t last_action_out[4];
    _Bool enabled;
    undefined field_0x35;
    undefined field_0x36;
    undefined field_0x37;
};

