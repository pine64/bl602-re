#include <stdint.h>
#include <phy/mdm.h>
#include <phy/agc.h>
#include <phy/agcram.h>
#include <phy/bz_phy.h>

#include "phy_bl602.h"
#include "phy_trpc.h"
#include "rfc_bl602.h"
#include "phy_adapt.h"
#include "phy_tcal.h"
#include "rf.h"

void assert_err(char * condition, char * file, int line);

#define ASSERT_ERR(cond) if (!(cond)) assert_err(#cond, __FILE__, __LINE__);

#define PHY_FORMATMOD_11B 0
#define PHY_FORMATMOD_11G 1
#define PHY_FORMATMOD_11N 2

static int8_t rxgain_offset_vs_temperature; // :79:15
static int8_t poweroffset[14]; // :80:15

void phy_config_rxgain(int offset) {
    if (rxgain_offset_vs_temperature != offset) {
        rxgain_offset_vs_temperature = (int8_t) offset;
        AGC->rxgain_offset_vs_temperature[0] = (int)rxgain_offset_vs_temperature + 3;
        AGC->rxgain_offset_vs_temperature[1] = (int)rxgain_offset_vs_temperature + 11;
        AGC->rxgain_offset_vs_temperature[2] = (int)rxgain_offset_vs_temperature + 18;
        AGC->rxgain_offset_vs_temperature[3] = (int)rxgain_offset_vs_temperature + 25;
        AGC->rxgain_offset_vs_temperature[4] = (int)rxgain_offset_vs_temperature + 32;
        AGC->rxgain_offset_vs_temperature[5] = (int)rxgain_offset_vs_temperature + 39;
        AGC->rxgain_offset_vs_temperature[6] = (int)rxgain_offset_vs_temperature + 45;
        AGC->rxgain_offset_vs_temperature[7] = (int)rxgain_offset_vs_temperature + 53;
        AGC->rxgain_offset_vs_temperature[8] = (int)rxgain_offset_vs_temperature + 59;
    }
}

void phy_get_channel(struct phy_channel_info *info, uint8_t index) {
  info->info1 = (uint32_t)phy_env[0].chnl_type << 8 | (uint32_t)phy_env[0].chnl_prim20_freq << 16 |
                (uint32_t)phy_env[0].band;
  info->info2 = phy_env[0].chnl_center1_freq | ((uint32_t)phy_env[0].chnl_center2_freq << 16);
}

uint8_t phy_get_mac_freq(void) {
    return 0x28;
}

uint8_t phy_get_nss(void) {
    return (uint8_t)(( (int8_t)(MDM->version.nss  & 0xf) )- 1);
}

void phy_get_version(uint32_t *version_1,uint32_t *version_2) {
    *version_1 = MDM->version.value;
    *version_2 = 0;
    return;
}

void agc_config(void) {
    AGC->RWNXAGCCNTL.riu_htstfgainen = 0x0;
    AGC->RWNXAGCCNTL.riu_rifsdeten = 0x0;
    AGC->r0xb3a4.riu_fe20gain = 0x0;
    AGC->r0xb3a4.riu_fe40gain = 0x0;
    AGC->r0xb394.riu_vpeakadcqdbv = 0xf8;
    AGC->r0xb398.riu_adcpowmindbm = 0x9e;
    AGC->r0xb3c4.riu_adcpowsupthrdbm = 0xce;
    AGC->r0xb364.riu_satdelay50ns = 0x8;
    AGC->r0xb364.riu_sathighthrdbv = 0x3c;
    AGC->r0xb364.riu_satlowthrdbv = 0x38;
    AGC->r0xb364.riu_satthrdbv = 0x39;
    AGC->r0xb368.riu_crossdnthrqdbm = 0x70;
    AGC->r0xb368.riu_crossupthrqdbm = 0x70;
    AGC->RWNXAGCRAMP.riu_rampupgapqdb = 0x12;
    AGC->RWNXAGCRAMP.riu_rampupndlindex = 0x5;
    AGC->RWNXAGCRAMP.riu_rampdngapqdb = 0x28;
    AGC->RWNXAGCRAMP.riu_rampdnndlindex = 0x7;
    AGC->r0xb370.riu_adcpowdisthrdbv = 0x58;
    AGC->r0xb3c0.riu_idinbdpowgapdnqdbm = 0x18;
    AGC->r0xb380.riu_evt0op3 = 0x3e;
    AGC->r0xb380.riu_evt0op2 = 0x37;
    AGC->r0xb380.riu_evt0op1 = 0x1;
    AGC->r0xb380.riu_evt0pathcomb = 0x0;
    AGC->r0xb380.riu_evt0opcomb = 0x1;
    AGC->r0xb384.riu_evt1op1 = 0x39;
    AGC->r0xb384.riu_evt1op2 = 0x37;
    AGC->r0xb384.riu_evt1op3 = 0x14;
    AGC->r0xb384.riu_evt1pathcomb = 0x0;
    AGC->r0xb384.riu_evt1opcomb = 0x2;
    AGC->r0xb388.riu_evt2op1 = 0xf;
    AGC->r0xb388.riu_evt2op2 = 0x17;
    AGC->r0xb388.riu_evt2op3 = 0x2a;
    AGC->r0xb388.riu_evt2pathcomb = 0x0;
    AGC->r0xb388.riu_evt2opcomb = 0x5;
    AGC->r0xb38c.riu_evt3op1 = 0x19;
    AGC->r0xb38c.riu_evt3op2 = 0x0;
    AGC->r0xb38c.riu_evt3op3 = 0xe;
    AGC->r0xb38c.riu_evt3opcomb = 0x2;
    AGC->r0xc830.rc2_evt4op1 = 0x3f;
    AGC->r0xc830.rc2_evt4op2 = 0x1;
    AGC->r0xc830.rc2_evt4op3 = 0x36;
    AGC->r0xc830.rc2_evt4opcomb = 0x5;
    AGC->r0xc814.rc2_pkdet_mode = 0x0;
    AGC->r0xc814.rc2_pkdet_cnt_thr = 0x2;
    AGC->r0xc814.rc2_pkdet_cnt_thr = 0x2;
    AGC->r0xc040.rc2_rx0_vga_idx_max = 0xc;
    AGC->r0xc040.rc2_rx0_vga_idx_min = 0x3;
    AGC->r0xc044.rc2_rx0_lna_idx_max = 0x8;
    AGC->r0xc044.rc2_rx0_lna_idx_min = 0x0;

    phy_config_rxgain(0);

    AGC->r0xb3a0.riu_inbdpowmindbm = 0x9e;
    AGC->r0xb3c0.riu_inbdpowsupthrdbm = 0xa4;
    AGC->r0xb3c0.riu_inbdpowinfthrdbm = 0xa3;
    AGC->r0xc82c.rc2_inbdpow_adj_thr_dbm = 0xb5;
    AGC->r0xc82c.rc2_inbdpowsupthr_adj_en = 0x1;
    AGC->r0xc82c.rc2_inbdpowinfthr_adj_en = 0x1;
    AGC->r0xc838.rc2_reflevofdmthd_en = 0x1;
    AGC->r0xc838.rc2_reflevofdmthd = 0x100;
    AGC->r0xc83c.rc2_reflevdsssthd_en = 0x1;
    AGC->r0xc83c.rc2_reflevdsssthd = 0x17c;
    AGC->r0xc840.rc2_reflevdssscontthd_en = 0x1;
    AGC->r0xc840.rc2_reflevdssscontthd = 0x100;
    AGC->r0xc82c.rc2_inbdpowfastvalid_cnt = 0x40;
}

void bz_phy_reset(void) {
    BZ_PHY->r0x2808.bz_phy_tx_rampup_fm_on = 0x1;
    BZ_PHY->r0x2808.bz_phy_tx_rampup_time_us = 0x8;
    BZ_PHY->r0x280c.bz_phy_tx_rampdn_fm_on = 0x1;
    BZ_PHY->r0x280c.bz_phy_tx_rampdn_time_us = 0x4;
    BZ_PHY->r0x280c.bz_phy_tx_rampdn_pad0_time_us = 0x0;
    BZ_PHY->r0x2854.bz_phy_rx_proc_time_mlsd_us = 0x20;
    BZ_PHY->r0x2854.bz_phy_rx_proc_time_direct_us = 0x1e;
    BZ_PHY->r0x2854.bz_phy_rx_proc_time_eq_us = 0xa;
    BZ_PHY->r0x2854.bz_phy_rx_proc_time_viterbi_us = 0x1e;
    BZ_PHY->r0x2810.bz_phy_rx_dfe_notch_en = 0x0;
    BZ_PHY->r0x2810.bz_phy_rx_dfe_toc_en = 0x1;
    BZ_PHY->r0x2cac.bz_agc_rbb_ind_min = 0x4;
    return ;
}

void mdm_reset() {
    MDM->swreset.value = 0x1111;
    MDM->swreset.value = 0x0;
}

void mpif_clk_init(void) {
    // Empty Function
    return ;
}

uint8_t phy_bfmee_supported() {
    return MDM->version.bfmee_supported;
}

uint8_t phy_bfmer_supported(void) {
    return MDM->version.bfmer_supported;
}

void phy_get_rf_gain_capab(int8_t *max,int8_t *min) {
    *max = trpc_get_rf_max_power();
    *min = trpc_get_rf_min_power();
}

void phy_get_rf_gain_idx(int8_t *power,uint8_t *idx) {
    *idx = (uint8_t)rfc_get_power_level(2, (int)*power * 10);
}

void phy_get_rf_gain_idx_vs_mode(uint8_t mode,int8_t *power,uint8_t *idx){
    *idx = (uint8_t)rfc_get_power_level(mode, (int)*power * 10);
}

void  phy_get_trpc_idx(uint8_t formatmod,uint8_t mcs,int8_t power,uint8_t *idx) {
    // THIS IS ONLY MY GUESS. THE REAL DISASSEMBLY LOOKS VERY WEIRD AND IT MUST BE WRONG
    ASSERT_ERR(formatmod <= PHY_FORMATMOD_11N);
    if (formatmod == PHY_FORMATMOD_11G)
        ASSERT_ERR((formatmod == PHY_FORMATMOD_11G) && (mcs <= 7)); // lc9
    if (formatmod == PHY_FORMATMOD_11B)
        ASSERT_ERR((formatmod == PHY_FORMATMOD_11B) && (mcs <= 3)); // lc10
    if (formatmod == PHY_FORMATMOD_11N) 
        ASSERT_ERR((formatmod == PHY_FORMATMOD_11N) && (mcs <= 7)); // lc11
    *idx = (uint8_t)trpc_get_power_idx(formatmod, mcs, power);
}

void phy_powroffset_set(int8_t *power_offset) {
    for (int i = 0; i < 14; i++) {
        poweroffset[i] = power_offset[i];
    }
}

int phy_freq_to_channel(uint8_t band, uint16_t freq);

void phy_hw_set_channel(uint8_t band, uint16_t freq, uint16_t freq1, uint8_t chantype) {
    ASSERT_ERR(chantype == PHY_CHNL_BW_20);
    ASSERT_ERR(band == PHY_BAND_2G4);
    AGC->RWNXAGCCNTL.riu_ofdmonly = 0;
    MDM->rxchan.rxdsssen = 1;
    MDM->mdmconf = 0;
    mdm_reset();
    MDM->txstartdelay = 0xb4;
    MDM->txctrl1 = 0x1c13;
    MDM->txctrl3 = 0x2d00438;
    MDM->TBECTRL0.tbe_count_adjust_20 = 0;
    MDM->DCESTIMCTRL.value = 0xf0f;
    MDM->DCESTIMCTRL.WAITHTSTF = 7;
    MDM->r834.tddchtstfmargin = 0x6;
    MDM->SMOOTHCTRL.value = 0x1880c06;
    MDM->tbectrl2 = 0x7f03;
    AGC->riu_rwnxagcaci20marg0 = 0;
    AGC->riu_rwnxagcaci20marg1 = 0;
    AGC->riu_rwnxagcaci20marg2 = 0;
    
    MDM->txchan.txcbwmax = chantype;

    if (AGC->r000.iqcomp) {
        AGC->riu_iqestiterclr = 1;
    }

    rf_set_channel(chantype,freq1);

    uint8_t channel = 0;

    /*
    int iVar3 = 0;
    if (band == PHY_BAND_2G4)  {
        if ((freq - 0x96cU & 0xffff) >= 0x48) {
            channel = 0xe;
            if (freq != 0x9b4) {
                channel = (uint8_t)((freq -0x967) / 5);
            }
        }
            
    }
    */
    // TODO: are these two functions equivelant???
    channel = phy_freq_to_channel(band, freq);
    rfc_apply_tx_power_offset(channel, poweroffset);
    trpc_update_vs_channel((int8_t)freq1);
}

void phy_set_channel(uint8_t band,uint8_t type,uint16_t prim20_freq,uint16_t center1_freq,
                    uint16_t center2_freq,uint8_t index) {
    if ((center1_freq >= 2412 && center1_freq <= 2484) || (band == PHY_BAND_5G)) {
        phy_hw_set_channel(band,prim20_freq,center1_freq,type);
        phy_env[0].chnl_prim20_freq = prim20_freq;
        phy_env[0].chnl_center1_freq = center1_freq;
        phy_env[0].band = band;
        phy_env[0].chnl_type = type;
    }
}

extern uint32_t agcmem[];

void phy_init(phy_cfg_tag *config) {
    MDM->mdmconf = 0;
    mdm_reset();
    MDM->rxchan.value = 0x20d;
    MDM->rxchan.rxnssmax = phy_get_nss();
    MDM->rxchan.rxndpnstsmax = MDM->version.nsts;
    MDM->rxchan.rxldpcen = MDM->version.ldpcdec;
    MDM->rxchan.rxvhten = phy_vht_supported();
    MDM->rxchan.rxmumimoen = MDM->version.mu_mimo_rx;
    MDM->r3024.precomp = 0x2D;
    MDM->rxframeviolationmask = 0xffffffff;

    MDM->txchan.value = 0x20d;
    MDM->txchan.txnssmax = phy_get_nss();
    MDM->txchan.ntxmax = phy_get_ntx();
    MDM->txchan.txcbwmax = MDM->version.chbw;
    MDM->txchan.txldpcen = MDM->version.ldpcenc;
    MDM->txchan.vht = phy_vht_supported();
    MDM->txchan.txmumimoen = MDM->version.mu_mimo_tx;
    
    MDM->r834.rxtdctrl1 = 1;
    MDM->SMOOTHCTRL.CFGSMOOTHFORCE = 0;
    MDM->SMOOTHSNRTHR.smoothsnrthrhigh = 0x1b;
    MDM->SMOOTHSNRTHR.smoothsnrthrmid = 0xf;
    MDM->rxctrl1 = 0x4920492;
    MDM->r0x874.rcclkforce = 1;
    
    AGC->r0xb500.riu_txshift4044 = 0x02;
    if (AGC->r000.iqcomp) {
        AGC->r0xb110.riu_rxiqphaseesten = 0;
        AGC->r0xb110.riu_rxiqgainesten = 0;
        AGC->r0xb110.riu_rxiqphasecompen = 0;
        AGC->r0xb110.riu_rxiqgaincompen = 0;
        AGC->riu_iqestiterclr = 0;
    }
    AGC->activeant = 1;
    AGC->RWNXAGCCNTL.combpathsel = 1;
    AGC->RWNXAGCCCATIMEOUT = 4000000;
    AGC->irqmacccatimeouten.irqmacccatimeouten = 1;
    agc_config();
    AGC->RWNXAGCCNTL.agcfsmreset = 1;

    MDM->r0x874.mdm_agcmemclkforce = 1;

    for (int i = 0; i < 0x200; i++)
        AGCRAM->agcram[i] = agcmem[i];
    
    MDM->r0x874.mdm_agcmemclkforce = 0;
    AGC->RWNXAGCCNTL.agcfsmreset = 0;
    AGC->r0xc020.rc_paoff_delay = 0x14;
    phy_env[0].cfg.reserved = (config->parameters)[0];
    phy_env[0].chnl_center1_freq = 0xff;
    phy_env[0].chnl_center2_freq = 0xff;
    phy_env[0].chnl_prim20_freq = 0xff;
    phy_env[0].band = 0x00;
    phy_env[0].chnl_type = PHY_CHNL_BW_OTHER;
    trpc_init();
    pa_init();
    phy_tcal_reset();
    phy_tcal_start();
}

uint8_t phy_vht_supported(){
    if (MDM->version.vht) // TODO: verify this cond
        return 1;
    return ((MDM->version.chbw) >> 1) & 1;
}

uint8_t phy_ldpc_rx_supported(void){
    return MDM->version.ldpcrx;
}

uint8_t phy_ldpc_tx_supported(void){
    return MDM->version.ldpctx;
}

void phy_mdm_isr(void) {
    return;
}

uint8_t phy_mu_mimo_rx_supported(void) {
    return MDM->version.mu_mimo_rx;
}

uint8_t phy_mu_mimo_tx_supported(void) {
    return MDM->version.mu_mimo_tx;
}

void phy_rc_isr(void) {
    uint32_t val = AGC->rwnxmacintstatmasked.value;
    AGC->rwnxmacintack = val;
    if (val & 0x100) {
        mdm_reset();
    }
}

void phy_reset(void) {
    return ;
}

void phy_stop(void){
    return ;
}
