
void bl60x_current_time_us(longlong * time_now);
uint32_t mac_paid_gid_ap_compute(mac_addr * p_mac_addr, uint16_t aid);
uint32_t mac_paid_gid_sta_compute(mac_addr * p_mac_addr);
#if 0 //TODO EXISTS ALEADY
/**
* @file mac.c
* Source file for BL602
*/
#include "mac.h"


const uint8_t mac_tid2ac[];
const uint8_t mac_ac2uapsd[4];
const uint8_t mac_id2rate[];
const struct mac_addr mac_addr_bcst;

uint32_t mac_paid_gid_sta_compute(const struct mac_addr *p_mac_addr);
uint32_t mac_paid_gid_ap_compute(const struct mac_addr *p_mac_addr, uint16_t aid);
void bl60x_current_time_us(long long *time_now);




/** mac_paid_gid_sta_compute
 */
uint32_t mac_paid_gid_sta_compute(const struct mac_addr *p_mac_addr)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** mac_paid_gid_ap_compute
 */
uint32_t mac_paid_gid_ap_compute(const struct mac_addr *p_mac_addr, uint16_t aid)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** bl60x_current_time_us
 */
void bl60x_current_time_us(long long *time_now)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
