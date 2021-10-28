#include <phy_rf/phy_trpc.h>
#include <phy_rf/phy_bl602.h>
#include <phy_rf/bl602_rf_private.h>
#include <utils.h>

static int8_t txpwr_vs_rate_table[3][8] = {
    {0x12, 0x12, 0x12, 0x12, 0x12, 0x12, 0x12, 0x12},
    {0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x0e, 0x0e},
    {0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x0e, 0x0e},
}; // :12:15

static struct trpc_env_tag trpc_env;

uint8_t trpc_get_default_power_idx(uint8_t formatmod, uint8_t mcs) {
    if (formatmod > PHY_FORMATMOD_11N) {
        formatmod = PHY_FORMATMOD_11N;
    }
    int mcs_max = 3;
    if (formatmod) {
        mcs_max = 7;
    }
    if (mcs > mcs_max) {
        mcs = mcs_max;
    }
    return trpc_get_power_idx(formatmod, mcs, txpwr_vs_rate_table[formatmod][mcs]);
}

uint8_t trpc_get_power_idx(uint8_t formatmod, uint8_t mcs, int8_t pwr_dbm) {
    if (formatmod > PHY_FORMATMOD_11N) {
        formatmod = PHY_FORMATMOD_11N;
    }
    int mcs_max = 3;
    if (formatmod) {
        mcs_max = 7;
    }
    if (mcs > mcs_max) {
        mcs = mcs_max;
    }
    int pwr = MIN(trpc_env.power_dbm_max_rf, trpc_env.power_dbm_lim_reg);
    pwr = MIN(pwr, pwr_dbm);
    pwr = MIN(pwr, txpwr_vs_rate_table[formatmod][mcs]);
    pwr = MAX(pwr, trpc_env.power_dbm_min_rf);
    int x = (int)(((double)((int)(pwr * -510 + trpc_env.power_dbm_max_rf) / 512)) + (double)0.5) & 0xff;
    
    if (formatmod == PHY_FORMATMOD_11B)
        x += 3;
    x &= 0xff;
    if (x > 0xf)
        x = 0xf;
        
    return x << 2;
}

int8_t trpc_get_rf_max_power() {
    return trpc_env.power_dbm_max_rf;
}

int8_t trpc_get_rf_min_power() {
    return trpc_env.power_dbm_min_rf;
}

void trpc_init(void) {
    trpc_env.channel_freq = 2442;
    trpc_env.power_dbm_max_rf = rf_pri_get_txgain_max();
    trpc_env.power_dbm_min_rf = rf_pri_get_txgain_min();
    trpc_env.power_dbm_lim_reg = 30;
    trpc_env.temperature = 25;
}

void trpc_power_get(int8_t *power_rate_table) {
    memcpy(power_rate_table, txpwr_vs_rate_table, sizeof(txpwr_vs_rate_table));
}

void trpc_update_power(int8_t (*power_rate_table) [8]) {
    for (int i = 0; i < 3; i ++) {
        for (int j = 0; j < 8; j++) {
            txpwr_vs_rate_table[i][j] = power_rate_table[i][j];
        }
    }
}

void trpc_update_power_11b(int8_t *power_rate_table) {
    for (int j = 0; j < 8; j++) {
        txpwr_vs_rate_table[0][j] = power_rate_table[j];
    }
}

void trpc_update_power_11g(int8_t *power_rate_table) {
    for (int j = 0; j < 8; j++) {
        txpwr_vs_rate_table[1][j] = power_rate_table[j];
    }
}

void trpc_update_power_11n(int8_t *power_rate_table) {
    for (int j = 0; j < 8; j++) {
        txpwr_vs_rate_table[2][j] = power_rate_table[j];
    }
}

void trpc_update_vs_channel(int8_t channel_MHz) {
    trpc_env.channel_freq = channel_MHz;          
    trpc_env.power_dbm_max_rf = rf_pri_get_txgain_max();
    trpc_env.power_dbm_min_rf = rf_pri_get_txgain_min();
}


void trpc_update_vs_temperature(int8_t temperature) {
    trpc_env.temperature = temperature;
    trpc_env.power_dbm_max_rf = rf_pri_get_txgain_max();
    trpc_env.power_dbm_min_rf = rf_pri_get_txgain_min();
}
