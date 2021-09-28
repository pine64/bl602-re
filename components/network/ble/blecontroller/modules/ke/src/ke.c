#include <ke.h>

/** _patch_ble_ke_init
 */
uint32_t _patch_ble_ke_init(void *pRet)
{
	__builtin_trap();
}

/** ble_ke_init
 */
void ble_ke_init(void)
{
	__builtin_trap();
}

/** _patch_ble_ke_flush
 */
uint32_t _patch_ble_ke_flush(void *pRet)
{
	__builtin_trap();
}

/** ble_ke_flush
 */
void ble_ke_flush(void)
{
	__builtin_trap();
}

/** _patch_ble_ke_sleep_check
 */
uint32_t _patch_ble_ke_sleep_check(void *pRet)
{
	__builtin_trap();
}

/** ble_ke_sleep_check
 */
bool ble_ke_sleep_check(void)
{
	__builtin_trap();
}
