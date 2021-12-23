#ifndef _HAL_MACHW_H_
#define _HAL_MACHW_H_

#include <stdbool.h>
#include <stdint.h>

#include <hal/hal_desc.h>
#include <modules/mac/mac.h>


uint32_t hal_machw_time(void);
bool hal_machw_time_cmp(uint32_t time1, uint32_t time2);
bool hal_machw_time_past(uint32_t time);


extern const uint8_t rxv2macrate[];


static uint32_t hal_machw_rx_duration(struct rx_hd *rhd, uint16_t len);
void hal_machw_init(void);
void hal_machw_reset(void);
uint8_t hal_machw_search_addr(struct mac_addr *addr);
void hal_machw_disable_int(void);
void hal_machw_stop(void);
void hal_machw_monitor_mode(void);
bool hal_machw_sleep_check(void);
void hal_machw_idle_req(void);
extern void hal_machw_gen_handler(void);

#endif // _HAL_MACHW_H_
