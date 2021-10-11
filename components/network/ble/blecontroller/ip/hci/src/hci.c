#include <hci.h>

#include "hci_int.h"


static const struct evt_mask hci_def_evt_msk;
static const struct evt_mask hci_rsvd_evt_msk;
struct hci_env_tag hci_env;


/** hci_init
 */
void hci_init(void)
{
	__builtin_trap();
}

/** hci_reset
 */
void hci_reset(void)
{
	__builtin_trap();
}

/** hci_send_2_host
 */
void hci_send_2_host(void *param)
{
	__builtin_trap();
}

/** hci_send_2_controller
 */
void hci_send_2_controller(void *param)
{
	__builtin_trap();
}

/** hci_evt_mask_set
 */
uint8_t hci_evt_mask_set(const struct evt_mask *evt_msk, uint8_t page)
{
	__builtin_trap();
}
