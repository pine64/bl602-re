/**
* @file ke_event.c
* Source file for BL602
*/
#include "ke_event.h"


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

uint32_t _patch_ble_ke_event_init(void *pRet);
void ble_ke_event_init(void);
uint32_t _patch_ble_ke_event_callback_set(void *pRet, uint8_t event_type, void (*p_callback)(void));
uint8_t ble_ke_event_callback_set(uint8_t event_type, void (*p_callback)(void));
uint32_t _patch_ble_ke_event_set(void *pRet, uint8_t event_type);
void ble_ke_event_set(uint8_t event_type);
uint32_t _patch_ble_ke_event_clear(void *pRet, uint8_t event_type);
void ble_ke_event_clear(uint8_t event_type);
uint8_t ble_ke_event_get(uint8_t event_type);
uint32_t _patch_ble_ke_event_get_all(void *pRet);
uint32_t ble_ke_event_get_all(void);
uint32_t _patch_ble_ke_event_flush(void *pRet);
void ble_ke_event_flush(void);
uint32_t _patch_ble_ke_event_schedule(void *pRet);
void ble_ke_event_schedule(void);




/** _patch_ble_ke_event_init
 */
uint32_t _patch_ble_ke_event_init(void *pRet)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_event_init
 */
void ble_ke_event_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_ke_event_set
 */
uint32_t _patch_ble_ke_event_set(void *pRet, uint8_t event_type)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_event_set
 */
void ble_ke_event_set(uint8_t event_type)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_ke_event_clear
 */
uint32_t _patch_ble_ke_event_clear(void *pRet, uint8_t event_type)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_event_clear
 */
void ble_ke_event_clear(uint8_t event_type)
{
	ASSER_ERR(FALSE);
	return;
}

/** ble_ke_event_get
 */
uint8_t ble_ke_event_get(uint8_t event_type)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** _patch_ble_ke_event_get_all
 */
uint32_t _patch_ble_ke_event_get_all(void *pRet)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_event_get_all
 */
uint32_t ble_ke_event_get_all(void)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** _patch_ble_ke_event_flush
 */
uint32_t _patch_ble_ke_event_flush(void *pRet)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_event_flush
 */
void ble_ke_event_flush(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_ke_event_schedule
 */
uint32_t _patch_ble_ke_event_schedule(void *pRet)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_event_schedule
 */
void ble_ke_event_schedule(void)
{
	ASSER_ERR(FALSE);
	return;
}
