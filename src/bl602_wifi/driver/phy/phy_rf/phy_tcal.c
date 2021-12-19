#include <phy_rf/phy_tcal.h>
#include <phy_rf/phy_hal.h>
#include <phy_rf/phy_bl602.h>
#include <phy_rf/phy_trpc.h>
#include <phy_rf/bl602_rf_private.h>
#include <utils.h>

static struct tcal_tag tcal_env; // :41:24

void phy_tcal_reset(void) {
    memset(&tcal_env, 0, sizeof(tcal_env));
    tcal_env.prev_temperature = 0x19;
    tcal_env.last_action_temperature[0] = 0x19;
    tcal_env.last_action_temperature[1] = 0x19;
    tcal_env.last_action_temperature[2] = 0x19;
    tcal_env.last_action_temperature[3] = 0x19;
    tcal_env.enabled = 1;
}

void phy_tcal_start(void) {
    tcal_env.enabled = 1;
}

void phy_tcal_stop(void) {
    tcal_env.enabled = 0;
}

void phy_tcal_handle(void) {
    int16_t temp;
    if (hal_get_temperature(&temp)) {
        phy_tcal_txpwr(temp);
        int cutoff = temp;
        if (cutoff > 125) 
            cutoff = 125;
        if (cutoff < -40) 
            cutoff = -40;
        // iVar3 = (int)((uVar2 - 0x19) * 0x10000) >> 0x10; sign?
        int offset = cutoff - 25;
        if (offset < 1) {
            offset = (offset * -6) >> 8;
        } else {
            offset = ((offset * 6) >> 8) * (-1);
        }
        if (offset != tcal_env.last_action_out[2])   {
            phy_config_rxgain(offset);
            tcal_env.last_action_temperature[2] = cutoff;
            tcal_env.last_action_out[2] = offset;
        }
        tcal_env.prev_temperature = temp;
    }
}

void phy_tcal_callback(int16_t temperature) {
    hal_set_temperature(temperature);
    if (tcal_env.enabled) {
        phy_tcal_handle();
    }
}

void phy_tcal_txpwr(int16_t curr_temperature) {
    rf_pri_tx_gain_comp(curr_temperature);
    trpc_update_vs_temperature((int8_t)curr_temperature);
}
