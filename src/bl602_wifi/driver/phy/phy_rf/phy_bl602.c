#include <stdint.h>
#include <phy/mdm.h>
#include <phy/agc.h>
#include <phy/agcram.h>
#include <phy/bz_phy.h>
#include <phy/bz_phy_agc.h>

#include <phy_rf/phy_bl602.h>
#include <phy_rf/phy_trpc.h>
#include <phy_rf/rfc_bl602.h>
#include <phy_rf/phy_adapt.h>
#include <phy_rf/phy_tcal.h>
#include <phy_rf/rf.h>
#include <hal/hal_desc.h>
#include <assert.h>
#include <macro.h>

static int8_t rxgain_offset_vs_temperature; // :79:15
static int8_t poweroffset[14]; // :80:15

struct phy_env_tag phy_env[1]; // :75:20

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
    return PHY_BL602_MACCORE_FREQ_MHZ;
}

uint8_t phy_get_nss(void) {
    return (uint8_t)(( (int8_t)(MDM->version.nss  & 0xf) )- 1);
}

uint8_t phy_get_nsts(void) {
    return (uint8_t)(( (int8_t)(MDM->version.nsts  & 0xf) )- 1);
}

uint8_t phy_get_ntx(){
    return (uint8_t)(( (int8_t)(MDM->version.ntx  & 0xf) )- 1);
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
    int tx_rampup_time_us = 8;
    int tx_rampdn_time_us = 4; // 4
    int tx_padzero_time_us = 0;
    BZ_PHY->r0x2808.bz_phy_tx_rampup_fm_on = 0x1;
    BZ_PHY->r0x2808.bz_phy_tx_rampup_time_us = tx_rampup_time_us;
    BZ_PHY->r0x280c.bz_phy_tx_rampdn_fm_on = 0x1;
    BZ_PHY->r0x280c.bz_phy_tx_rampdn_time_us = tx_rampdn_time_us;
    BZ_PHY->r0x280c.bz_phy_tx_rampdn_pad0_time_us = tx_padzero_time_us;
    BZ_PHY->r0x2854.bz_phy_rx_proc_time_mlsd_us = 0x20;
    BZ_PHY->r0x2854.bz_phy_rx_proc_time_direct_us = 0x1e;
    BZ_PHY->r0x2854.bz_phy_rx_proc_time_eq_us = 0xa;
    BZ_PHY->r0x2854.bz_phy_rx_proc_time_viterbi_us = 0x1e;
    BZ_PHY->r0x2810.bz_phy_rx_dfe_notch_en = 0x0;
    BZ_PHY->r0x2810.bz_phy_rx_dfe_toc_en = 0x1;
    BZ_PHY_AGC->r0x2cac.bz_agc_rbb_ind_min = 0x4;
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
    *idx = (uint8_t)rfc_get_power_level(RFC_FORMATMOD_11N, (int)*power * 10);
}

void phy_get_rf_gain_idx_vs_mode(uint8_t mode,int8_t *power,uint8_t *idx) {
    *idx = (uint8_t)rfc_get_power_level(mode, (int)*power * 10);
}

void phy_get_trpc_idx(uint8_t formatmod,uint8_t mcs,int8_t power,uint8_t *idx) {
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

void phy_hw_set_channel(uint8_t band, uint16_t freq, uint16_t freq1, uint8_t chantype) {
    ASSERT_ERR(chantype == PHY_CHNL_BW_20);
    ASSERT_ERR(band == PHY_BAND_2G4);
    AGC->RWNXAGCCNTL.riu_ofdmonly = 0;
    MDM->rxchan.rxdsssen = 1;
    MDM->mdmconf = 0;
    mdm_reset();

    MDM->txstartdelay = 180;
    MDM->txctrl1 = 0x1c13; // (txfeofdm80delay = 19, txfeofdm40delay = 28, txfeofdm20delay = 0, txfedsssdelay = 0)(txfeofdm80delay = 0x13, txfeofdm40delay = 0x1c, txfeofdm20delay = 0, txfedsssdelay = 0)
    MDM->txctrl3 = 0x2d00438; // mdm_txctrl3_pack(txphyrdyhtdelay = 720, txphyrdynonhtdelay = 1080)

    MDM->TBECTRL0.tbe_count_adjust_20 = 0; // TBE for 60MHz

    MDM->DCESTIMCTRL.value = 0xf0f; // (starthtdc = 0, startdc = 0, delaysynctd20 = 0, delaysync = 0xf, waithtstf = 0xf)

    MDM->DCESTIMCTRL.WAITHTSTF = 7; // For FPGA, divide value by 2 due to timing constraints

    MDM->r834.tddchtstfmargin = 0x6;
    MDM->SMOOTHCTRL.value = 0x1880c06; // smooth enable/auto-selection
    MDM->tbectrl2 = 0x7f03;

    // No ACI margin in BW=20MHz due to latency on HTSIG decoding
    AGC->riu_rwnxagcaci20marg0 = 0;
    AGC->riu_rwnxagcaci20marg1 = 0;
    AGC->riu_rwnxagcaci20marg2 = 0;
    
    MDM->txchan.txcbwmax = chantype;

    if (AGC->r000.iqcomp) {
        AGC->riu_iqestiterclr = 1;
    }

    rf_set_channel(chantype, freq1);

    uint8_t channel = 0;

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

static void agc_download() {
    AGC->RWNXAGCCNTL.agcfsmreset = 1;

    MDM->r0x874.mdm_agcmemclkforce = 1;

    for (int i = 0; i < PHY_BL602_AGC_MEM_SIZE / 4; i++)
        AGCRAM->agcram[i] = agcmem[i];
    
    MDM->r0x874.mdm_agcmemclkforce = 0;
    AGC->RWNXAGCCNTL.agcfsmreset = 0;
    AGC->r0xc020.rc_paoff_delay = 0x14;
}

static void phy_hw_init(const struct phy_bl602_cfg_tag *cfg) {
    MDM->mdmconf = BW_20MHZ;
    mdm_reset();

    // realname = rxmode
    MDM->rxchan.value = 0x20d;
    /*
    PACK(MDM->rxchan, rxmode) {
        rxmode.rxdsssen = 1; // MDM_RXDSSSEN_BIT
        rxmode.pad0 = 0b11; // bit 2-3 MDM_RXMMEN_BIT  MDM_RXGFEN_BIT
        rxmode.pad2 = 1; // bit 9 MDM_RXSTBCEN_BIT
    }
    */
    MDM->rxchan.rxnssmax = phy_get_nss();
    MDM->rxchan.rxndpnstsmax = phy_get_nsts();
    MDM->rxchan.rxldpcen = MDM->version.ldpcdec;
    MDM->rxchan.rxvhten = phy_vht_supported();
    MDM->rxchan.rxmumimoen = MDM->version.mu_mimo_rx;
    MDM->r3024.precomp = 45;
    
    // Rx frame violation check
    //   [31:15]: VHT
    //   [14: 4]: HT
    //   [ 3: 0]: NON-HT
    MDM->rxframeviolationmask = 0xffffffff;

    MDM->txchan.value = 0x20d;
    /*
    PACK(MDM->txchan, txmode) {
        txmode.txdsssen = 1; // MDM_TXDSSSEN_BIT
        txmode.pad1 = 0b11; // bit 2-3 MDM_TXMMEN_BIT     MDM_TXGFEN_BIT  
        txmode.pad3 = 1; // bit 9 MDM_TXSTBCEN_BIT 
    }
    */

    MDM->txchan.txnssmax = phy_get_nss();
    MDM->txchan.ntxmax = phy_get_ntx();
    MDM->txchan.txcbwmax = MDM->version.chbw;
    MDM->txchan.txldpcen = MDM->version.ldpcenc;
    MDM->txchan.vht = phy_vht_supported();
    MDM->txchan.txmumimoen = MDM->version.mu_mimo_tx;
    
    // AGC reset mode
    // Don't turn off RF if rxreq de-asserted for few cycles after a RXERR
    MDM->r834.rxtdctrl1 = 1;

    // Enable automatic smoothing filter selection from SNR, then disable force
    MDM->SMOOTHCTRL.CFGSMOOTHFORCE = 0;
    MDM->SMOOTHSNRTHR.smoothsnrthrhigh = 0x1b;
    MDM->SMOOTHSNRTHR.smoothsnrthrmid = 0xf;

    // limit NDBPSMAX to 1x1 80 MCS7 LGI(292.5Mb/s) / SGI (325.0Mb/s)
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

    // limit RIU to 1 or 2 antenna active depending on modem capabilities
    AGC->activeant = 1;

    // limit AGC with a single antenna (path0)
    AGC->RWNXAGCCNTL.combpathsel = 1;

    // CCA timeout
    AGC->RWNXAGCCCATIMEOUT = 4000000;
    AGC->irqmacccatimeouten.irqmacccatimeouten = 1;
    
    agc_config();

    agc_download();
}

void phy_init(phy_cfg_tag *config) {
    const struct phy_bl602_cfg_tag *cfg = (const struct phy_bl602_cfg_tag *)&config->parameters;
    phy_hw_init(cfg);

    phy_env[0].cfg.reserved = (config->parameters)[0];
    phy_env[0].chnl_center1_freq = PHY_UNUSED;
    phy_env[0].chnl_center2_freq = PHY_UNUSED;
    phy_env[0].chnl_prim20_freq = PHY_UNUSED;
    phy_env[0].band = PHY_BAND_2G4;
    phy_env[0].chnl_type = PHY_CHNL_BW_OTHER;

    trpc_init();
    pa_init();
    phy_tcal_reset();
    phy_tcal_start();
}

uint8_t phy_vht_supported() {
    if (MDM->version.vht)
        return 1;
    return MDM->version.chbw > PHY_CHNL_BW_40;
}

uint8_t phy_ldpc_rx_supported(void) {
    return MDM->version.ldpcrx;
}

uint8_t phy_ldpc_tx_supported(void) {
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
        // RIU_IRQMACCCATIMEOUTMASKED_BIT
        mdm_reset();
    }
}

void phy_reset(void) {
    return ;
}

void phy_stop(void) {
    return ;
}
