/**
* @file at_config.c
* Source file for BL602
*/
#include "at_config.h"


at_config_t at_cfg;
static const at_var_descriptor_t at_cfg_table[22];

AT_ERROR_CODE at_getcfg(char *key);
AT_ERROR_CODE at_typecfg(char *key);
AT_ERROR_CODE at_setcfg(char *key, at_value_t *value);
AT_ERROR_CODE at_ssidtxt(char *ssid);
AT_ERROR_CODE at_config(void);
AT_ERROR_CODE at_factory(void);
AT_ERROR_CODE at_save(void);
static s32 localecho1_verify(at_value_t *value);
static s32 console1_speed_verify(at_value_t *value);
static s32 console1_hwfc_verify(at_value_t *value);
static s32 wifi_ssid_len_verify(at_value_t *value);
static s32 wifi_mode_verify(at_value_t *value);
static s32 ip_use_dhcp_verify(at_value_t *value);




/** at_getcfg
 */
AT_ERROR_CODE at_getcfg(char *key)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_typecfg
 */
AT_ERROR_CODE at_typecfg(char *key)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_setcfg
 */
AT_ERROR_CODE at_setcfg(char *key, at_value_t *value)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_ssidtxt
 */
AT_ERROR_CODE at_ssidtxt(char *ssid)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_config
 */
AT_ERROR_CODE at_config(void)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_factory
 */
AT_ERROR_CODE at_factory(void)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_save
 */
AT_ERROR_CODE at_save(void)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** localecho1_verify
 */
static s32 localecho1_verify(at_value_t *value)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** console1_speed_verify
 */
static s32 console1_speed_verify(at_value_t *value)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** console1_hwfc_verify
 */
static s32 console1_hwfc_verify(at_value_t *value)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** wifi_ssid_len_verify
 */
static s32 wifi_ssid_len_verify(at_value_t *value)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** wifi_mode_verify
 */
static s32 wifi_mode_verify(at_value_t *value)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** ip_use_dhcp_verify
 */
static s32 ip_use_dhcp_verify(at_value_t *value)
{
	ASSER_ERR(FALSE);
	return -1;
}
