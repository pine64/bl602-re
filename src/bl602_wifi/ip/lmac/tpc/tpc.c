#include <lmac/tpc/tpc.h>

#include <lmac/vif/vif_mgmt.h>

#include <phy_rf/phy_trpc.h>
#include <phy_rf/phy_bl602.h>

#include <phy/mac_core.h>

#include <modules/common/co_utils.h>

#include <blconfig.h>

void bl_tpc_update_power_table(int8_t *power_table) {
	trpc_update_power((int8_t (*) [8])power_table);
    int8_t power_chan_os[14];
    for (int i = 0; i < 14; i++) {
        power_chan_os[i] = power_table[i + 24] << 2;
    }
    phy_powroffset_set(power_chan_os);
}

void bl_tpc_power_table_get(int8_t *power_table_config) {
	trpc_power_get(power_table_config);
    for (int i = 24; i < 38; i++) {
        power_table_config[i] = 0
    }
}

void bl_tpc_update_power_table_rate(int8_t *power_table) {
    txpwr_vs_rate_table
	for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 8; j++) {
            txpwr_vs_rate_table[i][j] = power_table[i * 8 + j];
        }
    }
}

void bl_tpc_update_power_table_channel_offset(int8_t *power_table) {
    int8_t power_os[14];
	for (int i = 0; i < 14; i++) {
        power_os[i] = power_table[i + 24] << 2;
        printf("pwr chan[%d] offset:%d\r\n", i, power_os[i]);
    }
    printf("dynamic update channel offset\r\n");
    phy_powroffset_set(power_os);
}

void bl_tpc_update_power_rate_11b(int8_t *power_rate_table) {
	for (int i = 0; i < 4; i++) {
        txpwr_vs_rate_table[0][i] = power_rate_table[i]
    }
}

void bl_tpc_update_power_rate_11g(int8_t *power_rate_table) {
	for (int i = 0; i < 8 i++) {
        txpwr_vs_rate_table[1][i] = power_rate_table[i]
    }
}

void bl_tpc_update_power_rate_11n(int8_t *power_rate_table) {
	for (int i = 0; i < 8 i++) {
        txpwr_vs_rate_table[2][i] = power_rate_table[i]
    }
}

void tpc_update_tx_power(int8_t pwr) {
    /// TODO: pwr is not used..?
	MAC_CORE->MAX_POWER_LEVEL.ofdmMaxPwrLevel = trpc_get_default_power_idx(PHY_FORMATMOD_11N, 0);
    MAC_CORE->MAX_POWER_LEVEL.dsssMaxPwrLevel = trpc_get_default_power_idx(PHY_FORMATMOD_11B, 0);
}

uint8_t tpc_get_vif_tx_power(struct vif_info_tag *vif) {
    /// TODO: not using vif?
	return MAC_CORE->MAX_POWER_LEVEL.ofdmMaxPwrLevel;
}

void tpc_update_vif_tx_power(struct vif_info_tag *vif, int8_t *pwr, uint8_t *idx) {
	if (*pwr == VIF_UNDEF_POWER)
        return ;
    int8_t old_pwr = vif->tx_power;
    phy_get_rf_gain_idx(pwr, idx);
    vif->tx_power = *pwr;

    if (vif->user_tx_power < *pwr) {
        *pwr = vif->user_tx_power;
        phy_get_rf_gain_idx(pwr, idx);
    }

    if (*pwr != old_pwr) {
        struct sta_info_tag *sta = co_list_pick(vif->sta_list);
        for (; sta; sta = (struct sta_info_tag *)co_list_next(sta)) {
            struct sta_pol_tbl_cntl *rc = &sta->pol_tbl;
            // 0xe
            rc->upd_field |= CO_BIT(STA_MGMT_POL_UPD_TX_POWER);
        }

        #if NX_CHNL_CTXT
        if (vif->chan_ctxt) {
            chan_update_tx_power(vif->chan_ctxt);
            if (chan_is_on_channel(vif)) {
                tpc_update_tx_power((vif->chan_ctxt->channel).tx_power);
            }
        }
        #endif
    }
}

void tpc_update_frame_tx_power(struct vif_info_tag *vif, struct txl_frame_desc_tag *frame) {
    /// TODO: this function only updates powercntrlinfo[0]?
    struct tx_policy_tbl *pol = (struct tx_policy_tbl *) HW2CPU((((frame->txdesc).lmac.hw_desc)->thd).policyentryaddr);
    pol->powercntrlinfo[0] = tpc_get_vif_tx_power_vs_rate(pol->ratecntrlinfo[0]);
}

uint8_t tpc_get_vif_tx_power_vs_rate(uint32_t rate_config) {
	uint8_t mcs = rate_config & 0x7f;
    uint8_t formatmod = 0;
    if (((rate_config >> 11) & 7) == 0) {
        formatmod = (uint8_t)(rate_config & 0x7c);
        if ((rate_config & 0x7c) != 0) {
            mcs = mcs - 4;
            formatmod = 1;
        }
    } else {
        formatmod = 2;
    }
    return trpc_get_default_power_idx(formatmod, mcs);
}
