/**
* @file at_config.c
* Source file for BL602
*/
#include <atcmd/at_config.h>
#include <atcmd/at_command.h>
#include <at_private.h>

extern s32 at_get_value(char *strbuf, AT_PARA_TYPE pt, void *pvar, s32 vsize);
extern s32 at_set_value(AT_PARA_TYPE pt, void *pvar, s32 vsize, at_value_t *value);
extern s32 at_dump_noend(char *format,...);

at_config_t at_cfg;

static s32 localecho1_verify(at_value_t *value);
static s32 console1_speed_verify(at_value_t *value);
static s32 console1_hwfc_verify(at_value_t *value);
static s32 wifi_ssid_len_verify(at_value_t *value);
static s32 wifi_mode_verify(at_value_t *value);
static s32 ip_use_dhcp_verify(at_value_t *value);

static const at_var_descriptor_t at_cfg_table[22] = {
	{ .key = "nv_manuf", .pt = APT_TEXT, .po = APO_RO, .pvar = at_cfg.nv_manuf, .vsize = 0x20, .verify = NULL },
	{ .key = "nv_model", .pt = APT_TEXT, .po = APO_RO, .pvar = at_cfg.nv_model, .vsize = 0x20, .verify = NULL },
	{ .key = "nv_serial", .pt = APT_TEXT, .po = APO_RO, .pvar = at_cfg.nv_serial, .vsize = 0x20, .verify = NULL },
	{ .key = "nv_wifi_macaddr", .pt = APT_HEX, .po = APO_RO, .pvar = at_cfg.nv_wifi_macaddr, .vsize = 0x6, .verify = NULL },
	{ .key = "wind_off_low", .pt = APT_HI, .po = APO_RW, .pvar = &at_cfg.wind_off_low, .vsize = 0x4, .verify = NULL },
	{ .key = "wind_off_medium", .pt = APT_HI, .po = APO_RW, .pvar = &at_cfg.wind_off_medium, .vsize = 0x4, .verify = NULL },
	{ .key = "wind_off_high", .pt = APT_HI, .po = APO_RW, .pvar = &at_cfg.wind_off_high, .vsize = 0x4, .verify = NULL },
	{ .key = "user_desc", .pt = APT_TEXT, .po = APO_RW, .pvar = at_cfg.user_desc, .vsize = 0x40, .verify = NULL },
	{ .key = "escape_seq", .pt = APT_TEXT, .po = APO_RW, .pvar = at_cfg.escape_seq, .vsize = 0x8, .verify = NULL },
	{ .key = "localecho1", .pt = APT_DI, .po = APO_RW, .pvar = &at_cfg.localecho1, .vsize = 0x4, .verify = localecho1_verify },
	{ .key = "console1_speed", .pt = APT_DI, .po = APO_RW, .pvar = &at_cfg.console1_speed, .vsize = 0x4, .verify = console1_speed_verify },
	{ .key = "console1_hwfc", .pt = APT_DI, .po = APO_RW, .pvar = &at_cfg.console1_hwfc, .vsize = 0x4, .verify = console1_hwfc_verify },
	{ .key = "wifi_channelnum", .pt = APT_DI, .po = APO_RW, .pvar = &at_cfg.wifi_channelnum, .vsize = 0x4, .verify = NULL },
	{ .key = "wifi_mode", .pt = APT_DI, .po = APO_RW, .pvar = &at_cfg.wifi_mode, .vsize = 0x4, .verify = wifi_mode_verify },
	{ .key = "wifi_ssid", .pt = APT_HEX, .po = APO_RW, .pvar = at_cfg.wifi_ssid, .vsize = 0x21, .verify = NULL },
	{ .key = "wifi_ssid_len", .pt = APT_DI, .po = APO_RW, .pvar = &at_cfg.wifi_ssid, .vsize = 0x4, .verify = wifi_ssid_len_verify },
	{ .key = "wifi_wpa_psk_text", .pt = APT_TEXT, .po = APO_RW, .pvar = at_cfg.wifi_wpa_psk_text, .vsize = 0x41, .verify = NULL },
	{ .key = "ip_use_dhcp", .pt = APT_DI, .po = APO_RW, .pvar = &at_cfg.ip_use_dhcp, .vsize = 0x4, .verify = ip_use_dhcp_verify },
	{ .key = "ip_ipaddr", .pt = APT_IP, .po = APO_RW, .pvar = at_cfg.ip_ipaddr, .vsize = 0x4, .verify = NULL },
	{ .key = "ip_netmask", .pt = APT_IP, .po = APO_RW, .pvar = at_cfg.ip_netmask, .vsize = 0x4, .verify = NULL },
	{ .key = "ip_gw", .pt = APT_IP, .po = APO_RW, .pvar = at_cfg.ip_gw, .vsize = 0x4, .verify = NULL },
	{ .key = "ip_dns", .pt = APT_IP, .po = APO_RW, .pvar = at_cfg.ip_dns, .vsize = 0x4, .verify = NULL }
};

/** at_getcfg
 */
AT_ERROR_CODE at_getcfg(const char *key)
{
	if (key == NULL)
	{
		return AEC_NULL_POINTER;
	}

	for (unsigned i = 0; i < sizeof(at_cfg_table) / sizeof(at_cfg_table[0]); ++i)
	{
		const at_var_descriptor_t *var = &at_cfg_table[i];
		if (strcmp(key, var->key) == 0)
		{
			char valbuf[1024];
			at_get_value(valbuf, var->pt, var->pvar, var->vsize);
			at_dump_noend("\r\n");
			at_dump_noend("# %s = %s\r\n", var->key, valbuf);
			at_dump_noend("\r\n");
			return AEC_OK;
		}
	}

	return AEC_NOT_FOUND;
}

/** at_typecfg
 */
AT_ERROR_CODE at_typecfg(const char *key)
{
	if (key == NULL)
	{
		return AEC_NULL_POINTER;
	}

	for (unsigned i = 0; i < sizeof(at_cfg_table) / sizeof(at_cfg_table[0]); ++i)
	{
		if (strcmp(key, at_cfg_table[i].key) == 0)
		{
			return (AT_ERROR_CODE) at_cfg_table[i].pt; // Odd, value & error codes are mixed
		}
	}

	return AEC_NOT_FOUND;
}

/** at_setcfg
 */
AT_ERROR_CODE at_setcfg(const char *key, at_value_t *value)
{
	if (key == NULL || value == NULL)
	{
		return AEC_NOT_FOUND; // Probably should be AEC_NULL_POINTER
	}

	const at_var_descriptor_t *var;
	for (unsigned i = 0;; ++i)
	{
		if (i == sizeof(at_cfg_table) / sizeof(at_cfg_table[0]))
		{
			return AEC_NOT_FOUND;
		}
		var = &at_cfg_table[i];
		if (strcmp(key, var->key) == 0)
		{
			break;
		}
	}

	if (var->po != APO_RW)
	{
		return AEC_READ_ONLY;
	}

	if (var->verify != NULL && (*var->verify)(value) != 0)
	{
		return AEC_OUT_OF_RANGE;
	}

	at_set_value(var->pt, var->pvar, var->vsize, value);

	return AEC_OK;
}

/** at_ssidtxt
 */
AT_ERROR_CODE at_ssidtxt(const char *ssid)
{
	if (ssid == NULL)
	{
		return AEC_NOT_FOUND;
	}

	memset(at_cfg.wifi_ssid, 0, sizeof(at_cfg.wifi_ssid));
	memcpy(at_cfg.wifi_ssid, ssid, strlen(ssid));
	at_cfg.wifi_ssid_len = 0; // ???

	return AEC_OK;
}

/** at_config
 */
AT_ERROR_CODE at_config(void)
{
	for (unsigned i = 0; i < sizeof(at_cfg_table) / sizeof(at_cfg_table[0]); ++i)
	{
		const at_var_descriptor_t *var = &at_cfg_table[i];
		char valbuf[1024];
		at_get_value(valbuf, var->pt, var->pvar, var->vsize);
		at_dump_noend("\r\n");
		at_dump_noend("# %s = %s\r\n", var->key, valbuf);
		at_dump_noend("\r\n");
	}

	return AEC_OK;
}

/** at_factory
 */
AT_ERROR_CODE at_factory(void)
{
	at_callback_para_t para;
	para.cfg = &at_cfg;
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_FACTORY, &para, NULL);
	}
	return AEC_OK;
}

/** at_save
 */
AT_ERROR_CODE at_save(void)
{
	at_callback_para_t para;
	para.cfg = &at_cfg;
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_SAVE, &para, NULL);
	}
	return AEC_OK;
}

/** localecho1_verify
 */
static s32 localecho1_verify(at_value_t *value)
{
	return !(value->hi < 2);
}

static at_di_t speed_tbl[5] =
{
	9600,
	19200,
	38400,
	115200,
	921600
};

/** console1_speed_verify
 */
static s32 console1_speed_verify(at_value_t *value)
{
	for (unsigned i = 0; i < sizeof(speed_tbl) / sizeof(speed_tbl[0]); ++i)
	{
		if (value->di == speed_tbl[i])
		{
			return 0;
		}
	}
	return 1;
}

/** console1_hwfc_verify
 */
static s32 console1_hwfc_verify(at_value_t *value)
{
	return 1 < value->hi;
}

/** wifi_ssid_len_verify
 */
static s32 wifi_ssid_len_verify(at_value_t *value)
{
	return !(value->hi < sizeof(at_cfg.wifi_ssid));
}

/** wifi_mode_verify
 */
static s32 wifi_mode_verify(at_value_t *value)
{
	return !(value->hi < 4);
}

/** ip_use_dhcp_verify
 */
static s32 ip_use_dhcp_verify(at_value_t *value)
{
	return !(value->hi < 3);
}
