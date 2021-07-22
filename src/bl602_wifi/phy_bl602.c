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
    AGC->RWNXAGCCNTL.set_0x0_0 = 0x0;
    AGC->RWNXAGCCNTL.set_0x0_1 = 0x0;
    AGC->r0xb3a4.set_0x0_2 = 0x0;
    AGC->r0xb3a4.set_0x0_3 = 0x0;
    AGC->r0xb394.set_0xf8_4 = 0xf8;
    AGC->r0xb398.set_0x9e_5 = 0x9e;
    AGC->r0xb3c4.set_0xce_6 = 0xce;
    AGC->r0xb364.set_0x8_7 = 0x8;
    AGC->r0xb364.set_0x3c_8 = 0x3c;
    AGC->r0xb364.set_0x38_9 = 0x38;
    AGC->r0xb364.set_0x39_10 = 0x39;
    AGC->r0xb368.set_0x70_11 = 0x70;
    AGC->r0xb368.set_0x70_12 = 0x70;
    AGC->r0xb36c.set_0x12_13 = 0x12;
    AGC->r0xb36c.set_0x5_14 = 0x5;
    AGC->r0xb36c.set_0x28_15 = 0x28;
    AGC->r0xb36c.set_0x7_16 = 0x7;
    AGC->r0xb370.set_0x58_17 = 0x58;
    AGC->r0xb3c0.set_0x18_18 = 0x18;
    AGC->r0xb380.set_0x3e_19 = 0x3e;
    AGC->r0xb380.set_0x37_20 = 0x37;
    AGC->r0xb380.set_0x1_21 = 0x1;
    AGC->r0xb380.set_0x0_22 = 0x0;
    AGC->r0xb380.set_0x1_23 = 0x1;
    AGC->r0xb384.set_0x39_24 = 0x39;
    AGC->r0xb384.set_0x37_25 = 0x37;
    AGC->r0xb384.set_0x14_26 = 0x14;
    AGC->r0xb384.set_0x0_27 = 0x0;
    AGC->r0xb384.set_0x2_28 = 0x2;
    AGC->r0xb388.set_0xf_29 = 0xf;
    AGC->r0xb388.set_0x17_30 = 0x17;
    AGC->r0xb388.set_0x2a_31 = 0x2a;
    AGC->r0xb388.set_0x0_32 = 0x0;
    AGC->r0xb388.set_0x5_33 = 0x5;
    AGC->r0xb38c.set_0x19_34 = 0x19;
    AGC->r0xb38c.set_0x0_35 = 0x0;
    AGC->r0xb38c.set_0xe_36 = 0xe;
    AGC->r0xb38c.set_0x2_37 = 0x2;
    AGC->r0xc830.set_0x3f_38 = 0x3f;
    AGC->r0xc830.set_0x1_39 = 0x1;
    AGC->r0xc830.set_0x36_40 = 0x36;
    AGC->r0xc830.set_0x5_41 = 0x5;
    AGC->r0xc814.set_0x0_42 = 0x0;
    AGC->r0xc040.set_0xc_43 = 0xc;
    AGC->r0xc040.set_0x3_44 = 0x3;
    AGC->r0xc044.set_0x8_45 = 0x8;
    AGC->r0xc044.set_0x0_46 = 0x0;

    phy_config_rxgain(0);

    AGC->r0xb3a0.set_0x9e_47 = 0x9e;
    AGC->r0xb3c0.set_0xa4_48 = 0xa4;
    AGC->r0xb3c0.set_0xa3_49 = 0xa3;
    AGC->r0xc82c.set_0xb5_50 = 0xb5;
    AGC->r0xc82c.set_0x1_51 = 0x1;
    AGC->r0xc82c.set_0x1_52 = 0x1;
    AGC->r0xc838.set_0x1_53 = 0x1;
    AGC->r0xc838.set_0x100_54 = 0x100;
    AGC->r0xc83c.set_0x1_55 = 0x1;
    AGC->r0xc83c.set_0x17c_56 = 0x17c;
    AGC->r0xc840.set_0x1_57 = 0x1;
    AGC->r0xc840.set_0x100_58 = 0x100;
    AGC->r0xc82c.set_0x40_59 = 0x40;
}

void bz_phy_reset(void) {
    BZ_PHY->r0x2808.set_0x1_67 = 0x1;
    BZ_PHY->r0x2808.set_0x8_68 = 0x8;
    BZ_PHY->r0x280c.set_0x1_69 = 0x1;
    BZ_PHY->r0x280c.set_0x4_70 = 0x4;
    BZ_PHY->r0x280c.set_0x0_71 = 0x0;
    BZ_PHY->r0x2854.set_0x20_72 = 0x20;
    BZ_PHY->r0x2854.set_0x1e_73 = 0x1e;
    BZ_PHY->r0x2854.set_0xa_74 = 0xa;
    BZ_PHY->r0x2854.set_0x1e_75 = 0x1e;
    BZ_PHY->r0x2810.set_0x0_76 = 0x0;
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
    AGC->RWNXAGCCNTL.set_0x0_61 = 0;
    MDM->rxchan.reset = 1;
    MDM->mdmconf = 0;
    mdm_reset();
    MDM->TXCTRL0 = 0xb4;
    MDM->TXCTRL1 = 0x1c13;
    MDM->TXCTRL3 = 0x2d00438;
    MDM->TBECTRL0.tbe_count_adjust_20 = 0;
    MDM->DCESTIMCTRL.value = 0xf0f;
    MDM->DCESTIMCTRL.WAITHTSTF = 7;
    MDM->r834.set60h = 0x6;
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
    MDM->rxchan.rxndpnstsmax = MDM->version.rxndpnstsmax;
    MDM->rxchan.v19 = MDM->version.v19;
    MDM->rxchan.vht = phy_vht_supported();
    MDM->rxchan.v30 = MDM->version.mu_mimo_rx;
    MDM->r3024.precomp = 0x2D;
    MDM->rxframeviolationmask = 0xffffffff;

    MDM->txchan.value = 0x20d;
    MDM->txchan.txnssmax = phy_get_nss();
    MDM->txchan.ntxmax = phy_get_ntx();
    MDM->txchan.txcbwmax = MDM->version.txcbwmax;
    MDM->txchan.v18 = MDM->version.v18;
    MDM->txchan.vht = phy_vht_supported();
    MDM->txchan.v31 = MDM->version.mu_mimo_tx;
    
    MDM->r834.set1 = 1;
    MDM->SMOOTHCTRL.CFGSMOOTHFORCE = 0;
    MDM->SMOOTHSNRTHR.smoothsnrthrhigh = 0x1b;
    MDM->SMOOTHSNRTHR.smoothsnrthrmid = 0xf;
    MDM->rxctrl1 = 0x4920492;
    MDM->r874.resetto1 = 1;
    
    AGC->r0xb500.set_0x2_62 = 0x02;
    if (AGC->r000.iqcomp) {
        AGC->r0xb110.set_0x0_63 = 0;
        AGC->r0xb110.set_0x0_64 = 0;
        AGC->r0xb110.set_0x0_65 = 0;
        AGC->r0xb110.set_0x0_66 = 0;
        AGC->riu_iqestiterclr = 0;
    }
    AGC->activeant = 1;
    AGC->RWNXAGCCNTL.set1 = 1;
    AGC->RWNXAGCCCATIMEOUT = 4000000;
    AGC->irqmacccatimeouten.set1 = 1;
    agc_config();
    AGC->RWNXAGCCNTL.agcfsmreset = 1;

    MDM->r874.set1beforewriteagcmem = 1;

    for (int i = 0; i < 0x200; i++)
        AGCRAM->agcram[i] = agcmem[i];
    
    MDM->r874.set1beforewriteagcmem = 0;
    AGC->RWNXAGCCNTL.agcfsmreset = 0;
    AGC->r0xc020.set_0x14_60 = 0x14;
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
    return ((MDM->version.txcbwmax) >> 1) & 1;
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
    uint32_t val = AGC->r41c.value;
    AGC->r420_copy41c = val;
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
