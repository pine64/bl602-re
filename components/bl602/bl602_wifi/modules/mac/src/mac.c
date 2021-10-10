#include "mac.h"


const uint8_t mac_tid2ac[];
const uint8_t mac_ac2uapsd[4];
const uint8_t mac_id2rate[];
const struct mac_addr mac_addr_bcst;

/** mac_paid_gid_sta_compute
 */
uint32_t mac_paid_gid_sta_compute(const struct mac_addr *p_mac_addr)
{
	__builtin_trap();
}

/** mac_paid_gid_ap_compute
 */
uint32_t mac_paid_gid_ap_compute(const struct mac_addr *p_mac_addr, uint16_t aid)
{
	__builtin_trap();
}

/** bl60x_current_time_us
 */
void bl60x_current_time_us(long long *time_now)
{
	__builtin_trap();
}
