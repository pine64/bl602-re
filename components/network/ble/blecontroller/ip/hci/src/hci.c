/**
* @file hci.c
* Source file for BL602
*/
#include "hci.h"


static const struct evt_mask hci_def_evt_msk;
static const struct evt_mask hci_rsvd_evt_msk;
struct hci_env_tag hci_env;






/** hci_init
 */
void hci_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** hci_reset
 */
void hci_reset(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** hci_send_2_host
 */
void hci_send_2_host(void *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** hci_send_2_controller
 */
void hci_send_2_controller(void *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** hci_evt_mask_set
 */
uint8_t hci_evt_mask_set(const struct evt_mask *evt_msk, uint8_t page)
{
	ASSER_ERR(FALSE);
	return 0xff;
}
