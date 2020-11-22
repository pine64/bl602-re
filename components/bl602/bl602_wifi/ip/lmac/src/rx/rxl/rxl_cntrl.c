
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
