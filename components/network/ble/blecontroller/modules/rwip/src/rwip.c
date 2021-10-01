#include "rwip.h"

#include <bl602.h>
#include <bl602_glb.h>
#include <bl602_hbn.h>
#include <co_string.h>
#include <ea.h>
#include <ecc_p256.h>
#include <glb_reg.h>
#include <hci.h>
#include <ke.h>
#include <ke_event.h>
#include <ke_mem.h>
#include <lld/lld_sleep.h>
#include <lld/lld_wlcoex.h>
#include <rf.h>
#include <rwble/rwble.h>


typedef struct {
	uint32_t time; // +0
	uint32_t next_tick; // +4
} rwip_time_t;

const struct rwip_prio rwip_priority[7];
const uint8_t rwip_coex_cfg[5];

struct rwip_env_tag {
	uint32_t lp_cycle_wakeup_delay; // +0
	uint32_t sleep_acc_error; // +4
	uint16_t sleep_algo_dur; // +8
	uint16_t prevent_sleep; // +10
	bool sleep_enable; // +12
	bool ext_wakeup_enable; // +13
};

static struct rwip_env_tag rwip_env;
struct rwip_rf_api rwip_rf;
uint8_t *rwip_heap_em;
uint32_t rwip_heap_ram[707];
int32_t sw_wakeup_cnt;
int32_t sleep_dur_cnt;
int32_t sleep_stat_cnt;
int32_t sleep_cnt;

bool rwip_ext_wakeup_enable(void);
uint32_t rwip_sleep_lpcycles_2_us(uint32_t lpcycles);
uint32_t rwip_us_2_lpcycles(uint32_t us);
void rwip_wlcoex_set(bool state);
void rwip_reset(void);

bool rwip_check_wakeup_boundary(void)
{
	BL_WR_WORD(0x2800001c, 0x80000000);
	while (BL_RD_WORD(0x2800001c) & 0x80000000);
	return BL_RD_WORD(0x28000020) >= 468;
}

/** rwip_init
 */
void rwip_init(uint32_t error)
{
	(*ble_memset_ptr)(&rwip_env, 0, sizeof(rwip_env));
	ble_ke_init();
	ble_ke_mem_init(0, rwip_heap_ram, 0xaff);
	ble_ke_mem_init(1, rwip_heap_em, 0x10b6);
	ble_rf_init(&rwip_rf);
	ecc_init(false);
	hci_init();
	rwble_init();
	ea_init(false);
	rwip_env.sleep_algo_dur = 200;
	rwip_env.prevent_sleep = 0;
	rwip_env.sleep_acc_error = 0;
	rwip_env.sleep_enable = true;
	rwip_env.ext_wakeup_enable = true;
	rwip_reset();
}

/** rwip_reset
 */
void rwip_reset(void)
{
	uint32_t mstatus, dummy;
	__asm__ volatile("csrr %0, mstatus" : "=r" (mstatus));
	__asm__ volatile("csrrci %0, mstatus, 8" : "=r" (dummy));
	ble_ke_flush();
	ecc_init(true);
	hci_reset();
	rwble_reset();
	rwip_env.sleep_algo_dur = 200;
	rwip_env.prevent_sleep = 0;
	rwip_env.sleep_enable = true;
	rwip_env.ext_wakeup_enable = true;
	rwip_env.sleep_acc_error = 0;
	ea_init(true);
	(*rwip_rf.reset)();
	__asm__ volatile("csrw mstatus, %0" :: "r" (mstatus));
}

/** rwip_version
 */
void rwip_version(uint8_t *fw_version, uint8_t *hw_version)
{
	rwble_version(fw_version, hw_version);
}

/** rwip_schedule
 */
void rwip_schedule(void)
{
	if (!(rwip_env.prevent_sleep & 1))
	{
		ble_ke_event_schedule();
	}
}

/** rwip_get_sw_wakup_cnt
 */
int32_t rwip_get_sw_wakup_cnt(void)
{
	return sw_wakeup_cnt;
}

/** rwip_get_sleep_dur_cnt
 */
int32_t rwip_get_sleep_dur_cnt(void)
{
	return sleep_dur_cnt;
}

/** rwip_get_sleep_stat_cnt
 */
int32_t rwip_get_sleep_stat_cnt(void)
{
	return sleep_stat_cnt;
}

/** do_reset
 */
void do_reset(void)
{
	HBN_Set_ROOT_CLK_Sel(HBN_ROOT_CLK_RC32M);
	BL_WR_REG(GLB_BASE, GLB_SWRST_CFG1, BL_SET_REG_BIT(BL_RD_REG(GLB_BASE, GLB_SWRST_CFG1), GLB_SWRST_S1E));
	BL_WR_REG(GLB_BASE, GLB_DIG32K_WAKEUP_CTRL, BL_CLR_REG_BIT(BL_RD_REG(GLB_BASE, GLB_DIG32K_WAKEUP_CTRL), GLB_DIG_32K_EN));
	BL_WR_WORD(0x4000F030, BL_RD_WORD(0x4000F030) | 0x18);
	BL_WR_REG(GLB_BASE, GLB_SWRST_CFG1, BL_CLR_REG_BIT(BL_RD_REG(GLB_BASE, GLB_SWRST_CFG1), GLB_SWRST_S1E));
	GLB_Set_System_CLK(GLB_PLL_XTAL_40M, GLB_SYS_CLK_PLL160M);
	GLB_Set_UART_CLK(ENABLE, HBN_UART_CLK_160M, 3);
	HBN_32K_Sel(HBN_32K_RC);
	BL_WR_REG(GLB_BASE, GLB_DIG32K_WAKEUP_CTRL, BL_SET_REG_BIT(BL_RD_REG(GLB_BASE, GLB_DIG32K_WAKEUP_CTRL), GLB_DIG_32K_EN));
}

/** rwip_sleep
 */
int32_t rwip_sleep(void)
{
	__builtin_trap();
}

/** ble_controller_sleep
 */
int32_t ble_controller_sleep(void)
{
	return rwip_sleep();
}

/** ble_controller_wakeup
 */
void ble_controller_wakeup(void)
{
	BL_WR_WORD(0x28000030, BL_RD_WORD(0x28000030) | 0x10);
}

/** ble_get_deep_sleep_stat
 */
uint8_t ble_get_deep_sleep_stat(void)
{
	return (BL_RD_WORD(0x28000030) >> 15) & 1;
}

/** rwip_wakeup_delay_set
 */
void rwip_wakeup_delay_set(uint16_t wakeup_delay)
{
	rwip_env.lp_cycle_wakeup_delay = (wakeup_delay << 15) / 0xF4240U;
}

/** rwip_prevent_sleep_set
 */
void rwip_prevent_sleep_set(uint16_t prv_slp_bit)
{
	uint32_t mstatus, dummy;
	__asm__ volatile("csrr %0, mstatus" : "=r" (mstatus));
	__asm__ volatile("csrrci %0, mstatus, 8" : "=r" (dummy));
	rwip_env.prevent_sleep = prv_slp_bit | rwip_env.prevent_sleep;
	__asm__ volatile("csrw mstatus, %0" :: "r" (mstatus));
}

/** rwip_wakeup
 */
void rwip_wakeup(void)
{
	rwip_prevent_sleep_set(1);
	lld_sleep_wakeup();
}

/** rwip_prevent_sleep_clear
 */
void rwip_prevent_sleep_clear(uint16_t prv_slp_bit)
{
	uint32_t mstatus, dummy;
	__asm__ volatile("csrr %0, mstatus" : "=r" (mstatus));
	__asm__ volatile("csrrci %0, mstatus, 8" : "=r" (dummy));
	rwip_env.prevent_sleep = ~prv_slp_bit & rwip_env.prevent_sleep;
	__asm__ volatile("csrw mstatus, %0" :: "r" (mstatus));
}

/** rwip_wakeup_end
 */
void rwip_wakeup_end(void)
{
	if ((rwip_env.prevent_sleep & 1) != 0)
	{
		lld_sleep_wakeup_end();
		ble_ke_event_set(3);
		rwip_prevent_sleep_clear(1);
	}
}

/** rwip_sleep_enable
 */
bool rwip_sleep_enable(void)
{
	return rwip_env.sleep_enable;
}

/** rwip_ext_wakeup_enable
 */
bool rwip_ext_wakeup_enable(void)
{
	return rwip_env.ext_wakeup_enable;
}

/** rwip_sleep_lpcycles_2_us
 */
uint32_t rwip_sleep_lpcycles_2_us(uint32_t lpcycles)
{
	uint32_t error = rwip_env.sleep_acc_error + lpcycles + (lpcycles << 8) + (lpcycles << 3);
	uint32_t us = lpcycles * 30 + (error >> 9);
	rwip_env.sleep_acc_error = error & 0x1FF;
	return us;
}

/** rwip_us_2_lpcycles
 */
uint32_t rwip_us_2_lpcycles(uint32_t us)
{
	return (us << 0xf) / 1000000;
}

/** rwip_wlcoex_set
 */
void rwip_wlcoex_set(bool state)
{
	lld_wlcoex_set(state);
}
