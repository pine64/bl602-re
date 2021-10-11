#include "rxl_cntrl.h"


struct rxl_cntrl_env_tag rxl_cntrl_env;


void rxl_mpdu_transfer(struct rx_swdesc *swdesc)
{
	__builtin_trap();
}

bool rxl_rxcntrl_frame(struct rx_swdesc *swdesc)
{
	__builtin_trap();
}

void rxl_pm_check(uint8_t *frame, uint8_t sta_idx, uint8_t vif_idx)
{
	__builtin_trap();
}

uint8_t rxl_frame_handle(struct rx_swdesc *swdesc, bool *dont_free)
{
	__builtin_trap();
}

void rxl_cntrl_init(void)
{
	__builtin_trap();
}

void rxl_init(void)
{
	__builtin_trap();
}

void rxl_cntrl_evt(int dummy)
{
	__builtin_trap();
}

void rxl_cntrl_dump(void)
{
	__builtin_trap();
}

void rxl_timer_int_handler(void)
{
	__builtin_trap();
}

void rxl_timeout_int_handler(void)
{
	__builtin_trap();
}

void rxl_dma_int_handler(void)
{
	__builtin_trap();
}

void rxl_dma_evt(int dummy)
{
	__builtin_trap();
}

void rxl_frame_release(struct rx_swdesc *swdesc)
{
	__builtin_trap();
}

void rxl_mpdu_free(struct rx_swdesc *swdesc)
{
	__builtin_trap();
}

void bl60x_firmwre_mpdu_free(void *swdesc_ptr)
{
	__builtin_trap();
}

void rxl_current_desc_get(struct rx_hd **rhd, struct rx_pbd **rbd)
{
	__builtin_trap();
}

void rxl_reset(void)
{
	__builtin_trap();
}
