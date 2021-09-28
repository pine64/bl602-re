#include <ke_event.h>

typedef void (*p_callback_t)(void);

struct ble_ke_event_env_tag {
    uint32_t event_field;
 // +0
    p_callback_t callback[10];
 // +4
    uint8_t state;
 // +44
};

struct ble_ke_event_env_tag ble_ke_event_env;

/** _patch_ble_ke_event_init
 */
uint32_t _patch_ble_ke_event_init(void *pRet)
{
	__builtin_trap();
}

/** ble_ke_event_init
 */
void ble_ke_event_init(void)
{
	__builtin_trap();
}

/** _patch_ble_ke_event_set
 */
uint32_t _patch_ble_ke_event_set(void *pRet, uint8_t event_type)
{
	__builtin_trap();
}

/** ble_ke_event_set
 */
void ble_ke_event_set(uint8_t event_type)
{
	__builtin_trap();
}

/** _patch_ble_ke_event_clear
 */
uint32_t _patch_ble_ke_event_clear(void *pRet, uint8_t event_type)
{
	__builtin_trap();
}

/** ble_ke_event_clear
 */
void ble_ke_event_clear(uint8_t event_type)
{
	__builtin_trap();
}

/** ble_ke_event_get
 */
uint8_t ble_ke_event_get(uint8_t event_type)
{
	__builtin_trap();
}

/** _patch_ble_ke_event_get_all
 */
uint32_t _patch_ble_ke_event_get_all(void *pRet)
{
	__builtin_trap();
}

/** ble_ke_event_get_all
 */
uint32_t ble_ke_event_get_all(void)
{
	__builtin_trap();
}

/** _patch_ble_ke_event_flush
 */
uint32_t _patch_ble_ke_event_flush(void *pRet)
{
	__builtin_trap();
}

/** ble_ke_event_flush
 */
void ble_ke_event_flush(void)
{
	__builtin_trap();
}

/** _patch_ble_ke_event_schedule
 */
uint32_t _patch_ble_ke_event_schedule(void *pRet)
{
	__builtin_trap();
}

/** ble_ke_event_schedule
 */
void ble_ke_event_schedule(void)
{
	__builtin_trap();
}
