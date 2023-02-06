#include <modules/mac/mac.h>

#include <phy/mac_pl.h>


const uint8_t mac_tid2ac[] = {
    AC_BE,    // TID0
    AC_BK,    // TID1
    AC_BK,    // TID2
    AC_BE,    // TID3
    AC_VI,    // TID4
    AC_VI,    // TID5
    AC_VO,    // TID6
    AC_VO,    // TID7
    AC_VO,     // TIDMGT
    0,0,0
}; // :31:15

const uint8_t mac_ac2uapsd[4] = {
    MAC_QOS_INFO_STA_UAPSD_ENABLED_BK,
    MAC_QOS_INFO_STA_UAPSD_ENABLED_BE,
    MAC_QOS_INFO_STA_UAPSD_ENABLED_VI,
    MAC_QOS_INFO_STA_UAPSD_ENABLED_VO,
}; // :44:15

const uint8_t mac_id2rate[] = {
    /*
    MAC_RATE_1MBPS,
    MAC_RATE_2MBPS,
    MAC_RATE_5_5MBPS,
    MAC_RATE_11MBPS,
    MAC_RATE_6MBPS,
    MAC_RATE_9MBPS,
    MAC_RATE_12MBPS,
    MAC_RATE_18MBPS,
    MAC_RATE_24MBPS,
    MAC_RATE_36MBPS,
    MAC_RATE_48MBPS,
    MAC_RATE_54MBPS
    */
    // for unknown reason, the vals here are 0x82 instead of 0x2
    0x82, 0x84, 0x8b, 0x96, 0x0c, 0x12, 0x18,0x24, 0x30, 0x48, 0x60, 0x6c
}; // :53:15

const struct mac_addr mac_addr_bcst = {
    .array = {0xFFFF, 0xFFFF, 0xFFFF}
}; // :92:23

uint32_t mac_paid_gid_sta_compute(const struct mac_addr *p_mac_addr) {
    const mac_addr_unpack* unpack = (const mac_addr_unpack*)p_mac_addr;
    return (((uint32_t)unpack->array[5] << 1) | ((uint32_t)unpack->array[4] & 0x80)) << 0x16;
} // :99:10

uint32_t mac_paid_gid_ap_compute(const struct mac_addr *p_mac_addr, uint16_t aid){
    const mac_addr_unpack* unpack = (const mac_addr_unpack*)p_mac_addr;
      return ((uint32_t)aid + (((int32_t)((uint32_t)unpack->array[5] >> 4) ^ (uint32_t)unpack->array[5]) & 0xf) * 0x20) * 0x400000 & 0x7fc00000 | 0x3f0000;
} // :110:10

void bl60x_current_time_us(long long *time_now){
    *time_now = ((MAC_PL->TSF_LO.tsfTimerLow) | (long long)MAC_PL->TSF_HI.tsfTimerHigh);
} // :123:6
