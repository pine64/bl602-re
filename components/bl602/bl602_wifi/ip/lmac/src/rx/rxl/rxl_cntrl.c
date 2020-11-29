
void bl60x_firmwre_mpdu_free(void * swdesc_ptr);
void rxl_cntrl_dump(void);
void rxl_cntrl_evt(int dummy);
void rxl_cntrl_init(void);
void rxl_current_desc_get(rx_hd * * rhd, rx_pbd * * rbd);
void rxl_dma_evt(int dummy);
void rxl_dma_int_handler(void);
uint8_t rxl_frame_handle(rx_swdesc * swdesc, _Bool * dont_free);
void rxl_frame_release(rx_swdesc * swdesc);
void rxl_mpdu_free(rx_swdesc * swdesc);
void rxl_mpdu_transfer(rx_swdesc * swdesc);
void rxl_pm_check(uint8_t * frame, uint8_t sta_idx, uint8_t vif_idx);
_Bool rxl_rxcntrl_frame(rx_swdesc * swdesc);
void rxl_timeout_int_handler(void);
void rxl_timer_int_handler(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file rxl_cntrl.c
* Source file for BL602
*/
#include "rxl_cntrl.h"


struct rxl_cntrl_env_tag rxl_cntrl_env;

void rxl_dma_int_handler(void);
void rxl_dma_evt(int dummy);
void rxl_frame_release(struct rx_swdesc *swdesc);
void rxl_mpdu_free(struct rx_swdesc *swdesc);
void bl60x_firmwre_mpdu_free(void *swdesc_ptr);
void rxl_current_desc_get(struct rx_hd **rhd, struct rx_pbd **rbd);
void rxl_reset(void);




/** rxl_dma_int_handler
 */
void rxl_dma_int_handler(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** rxl_dma_evt
 */
void rxl_dma_evt(int dummy)
{
	ASSER_ERR(FALSE);
	return;
}

/** rxl_frame_release
 */
void rxl_frame_release(struct rx_swdesc *swdesc)
{
	ASSER_ERR(FALSE);
	return;
}

/** rxl_mpdu_free
 */
void rxl_mpdu_free(struct rx_swdesc *swdesc)
{
	ASSER_ERR(FALSE);
	return;
}

/** bl60x_firmwre_mpdu_free
 */
void bl60x_firmwre_mpdu_free(void *swdesc_ptr)
{
	ASSER_ERR(FALSE);
	return;
}

/** rxl_current_desc_get
 */
void rxl_current_desc_get(struct rx_hd **rhd, struct rx_pbd **rbd)
{
	ASSER_ERR(FALSE);
	return;
}

/** rxl_reset
 */
void rxl_reset(void)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
