#ifndef __ME_H__
#define __ME_H__

#include <stdbool.h>
#include <stdint.h>

#include <umac/me/me_task.h>
#include <modules/ke/ke_task.h>
#include <modules/ke/ke_msg.h>
#include <modules/supplicant/keyMgmtStatTypes.h>
#include <modules/mac/mac.h>


struct me_env_tag {
    uint32_t active_vifs; // +0
    uint32_t ps_disable_vifs; // +4
    ke_task_id_t requester_id; // +8
    struct mac_htcapability ht_cap; // +12
    uint16_t tx_lft; // +44
    bool ht_supported; // +46
    struct me_chan_config_req chan; // +48
    uint8_t stbc_nss; // +302
    uint8_t phy_bw_max; // +303
    bool ps_on; // +304
};

struct mobility_domain {
    uint16_t mdid; // +0
    uint8_t ft_capability_policy; // +2
};

struct mac_bss_info {
    struct mac_htcapability ht_cap; // +0
    struct mac_addr bssid; // +32
    struct mac_ssid ssid; // +38
    uint16_t bsstype; // +72
    struct scan_chan_tag *chan; // +76
    uint16_t center_freq1; // +80
    uint16_t center_freq2; // +82
    uint16_t beacon_period; // +84
    uint16_t cap_info; // +86
    struct mac_rateset rate_set; // +88
    struct mac_edca_param_set edca_param; // +104
    int8_t rssi; // +124
    int8_t ppm_rel; // +125
    int8_t ppm_abs; // +126
    uint8_t high_11b_rate; // +127
    uint16_t prot_status; // +128
    uint8_t bw; // +130
    uint8_t phy_bw; // +131
    uint8_t power_constraint; // +132
    uint32_t valid_flags; // +136
    struct mobility_domain mde; // +140
    bool is_supplicant_enabled; // +144
    SecurityMode_t wpa_wpa2_wep; // +145
    Cipher_t wpa_mcstCipher; // +147
    Cipher_t wpa_ucstCipher; // +148
    Cipher_t rsn_mcstCipher; // +149
    Cipher_t rsn_ucstCipher; // +150
    bool is_pmf_required; // +151
    bool is_wpa2_prefered; // +152
    uint8_t rsn_wpa_ie[32]; // +153
    uint8_t rsn_wpa_ie_len; // +185
    uint16_t beacon_interval; // +186
    uint16_t aid_bitmap; // +188
    uint16_t max_listen_interval; // +190
    uint8_t sec_type; // +192
};

extern struct me_env_tag me_env;

void me_init(void);
struct scan_chan_tag *me_freq_to_chan_ptr(uint8_t band, uint16_t freq);
unsigned char process_rsn_ie(uint8_t *rsn_ie, Cipher_t *mcstCipher, Cipher_t *ucstCipher, bool *is_pmf_required, SecurityMode_t *security_mode, bool wpa2_prefered);
unsigned char process_wpa_ie(uint8_t *wpa_ie, Cipher_t *mcstCipher, Cipher_t *ucstCipher);

#endif // __ME_H__
