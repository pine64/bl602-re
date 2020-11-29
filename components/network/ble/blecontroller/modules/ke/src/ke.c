/**
* @file ke.c
* Source file for BL602
*/
#include "ke.h"


struct ble_ke_env_tag ble_ke_env;

uint32_t _patch_ble_ke_init(void *pRet);
void ble_ke_init(void);
uint32_t _patch_ble_ke_flush(void *pRet);
void ble_ke_flush(void);
uint32_t _patch_ble_ke_sleep_check(void *pRet);
bool ble_ke_sleep_check(void);




/** _patch_ble_ke_init
 */
uint32_t _patch_ble_ke_init(void *pRet)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_init
 */
void ble_ke_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_ke_flush
 */
uint32_t _patch_ble_ke_flush(void *pRet)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_flush
 */
void ble_ke_flush(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_ke_sleep_check
 */
uint32_t _patch_ble_ke_sleep_check(void *pRet)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_sleep_check
 */
bool ble_ke_sleep_check(void)
{
	ASSER_ERR(FALSE);
	return false;
}
