void rfc_apply_tx_power_offset(void);
void rfc_coex_force_to(void);
void rfc_config_channel(void);
void rfc_get_power_level(void);
void rfc_init(void);
typedef struct rfc_status_tag rfc_status_tag, *rfc_status_tag;

struct rfc_status_tag {
    uint32_t pkdet_out_raw:1;
    uint32_t dig_xtal_clk_dbg:1;
    uint32_t clk_ble_16m_dbg:1;
    uint32_t clk_rc_dbg0:1;
    uint32_t clk_adcpow_dbg:1;
    uint32_t clk_fetx_dbg:1;
    uint32_t clk_ferx_dbg:1;
    uint32_t clkpll_postdiv_outclk_dbg:1;
    uint32_t clk_soc_480m_dbg:1;
    uint32_t clk_soc_240m_dbg:1;
    uint32_t clk_soc_192m_dbg:1;
    uint32_t clk_soc_160m_dbg:1;
    uint32_t clk_soc_120m_dbg:1;
    uint32_t clk_soc_96m_dbg:1;
    uint32_t clk_soc_80m_dbg:1;
    uint32_t clk_soc_48m_dbg:1;
    uint32_t clk_soc_32m_dbg:1;
    uint32_t pad_pkdet_out:1;
    uint32_t pad_agc_ctrl:10;
    uint32_t rf_pkdet_rst_hw:1;
    uint32_t rf_cbw_wifi:2;
    uint32_t lo_unlocked:1;
    uint32_t fsm_pu_txbuf:1;
    uint32_t fsm_pu_rxbuf:1;
    uint32_t fsm_pu_tosdac:1;
    uint32_t fsm_pu_dac:1;
    uint32_t fsm_trsw_en:1;
    uint32_t fsm_pu_adc:1;
    uint32_t fsm_pu_pkdet:1;
    uint32_t fsm_pu_rbb:1;
    uint32_t fsm_pu_rmx:1;
    uint32_t fsm_pu_rmxgm:1;
    uint32_t fsm_pu_lna:1;
    uint32_t clk_rc_dbg2:1;
    uint32_t rf_lna_ind_hw:4;
    uint32_t rf_rbb_ind_hw:4;
    uint32_t rf_tx_pow_lvl_hw:4;
    uint32_t rf_rc_lo_rdy:1;
    uint32_t rf_fsm_state:3;
    uint32_t rf_rc_state:3;
    uint32_t clk_rc_dbg:1;
};

#if 0 //TODO EXISTS ALEADY
/**
* @file rfc_bl602.h
* Header file for BL602
*/
#ifndef __RFC_BL602_H__
#define __RFC_BL602_H__

struct rfc_status_tag {
    uint32_t pkdet_out_raw:1; // +0
    uint32_t dig_xtal_clk_dbg:1; // +0
    uint32_t clk_ble_16m_dbg:1; // +0
    uint32_t clk_rc_dbg0:1; // +0
    uint32_t clk_adcpow_dbg:1; // +0
    uint32_t clk_fetx_dbg:1; // +0
    uint32_t clk_ferx_dbg:1; // +0
    uint32_t clkpll_postdiv_outclk_dbg:1; // +0
    uint32_t clk_soc_480m_dbg:1; // +0
    uint32_t clk_soc_240m_dbg:1; // +0
    uint32_t clk_soc_192m_dbg:1; // +0
    uint32_t clk_soc_160m_dbg:1; // +0
    uint32_t clk_soc_120m_dbg:1; // +0
    uint32_t clk_soc_96m_dbg:1; // +0
    uint32_t clk_soc_80m_dbg:1; // +0
    uint32_t clk_soc_48m_dbg:1; // +0
    uint32_t clk_soc_32m_dbg:1; // +0
    uint32_t pad_pkdet_out:1; // +0
    uint32_t pad_agc_ctrl:10; // +0
    uint32_t rf_pkdet_rst_hw:1; // +0
    uint32_t rf_cbw_wifi:2; // +0
    uint32_t lo_unlocked:1; // +0
    uint32_t fsm_pu_txbuf:1; // +4
    uint32_t fsm_pu_rxbuf:1; // +4
    uint32_t fsm_pu_tosdac:1; // +4
    uint32_t fsm_pu_dac:1; // +4
    uint32_t fsm_trsw_en:1; // +4
    uint32_t fsm_pu_adc:1; // +4
    uint32_t fsm_pu_pkdet:1; // +4
    uint32_t fsm_pu_rbb:1; // +4
    uint32_t fsm_pu_rmx:1; // +4
    uint32_t fsm_pu_rmxgm:1; // +4
    uint32_t fsm_pu_lna:1; // +4
    uint32_t clk_rc_dbg2:1; // +4
    uint32_t rf_lna_ind_hw:4; // +4
    uint32_t rf_rbb_ind_hw:4; // +4
    uint32_t rf_tx_pow_lvl_hw:4; // +4
    uint32_t rf_rc_lo_rdy:1; // +4
    uint32_t rf_fsm_state:3; // +4
    uint32_t rf_rc_state:3; // +4
    uint32_t clk_rc_dbg:1; // +4
};

#endif // __RFC_BL602_H__
#endf 0 //TODO EXISTS ALEADY
