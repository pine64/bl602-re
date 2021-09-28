//#include "at_wlan.h"
#include <atcmd/at_command.h>
#include <atcmd/at_types.h>

static at_peer_t peers[5];
AT_ERROR_CODE at_peers(s32 pn, char *pv);
AT_ERROR_CODE at_ping(char *hostname);
AT_ERROR_CODE at_wifi(s32 value);
AT_ERROR_CODE at_reassociate(void);
AT_ERROR_CODE at_scan(char *mode, char *repeat);

AT_ERROR_CODE at_peers(s32 pn, char *pv)
{
	at_peer_t *peer;
	AT_ERROR_CODE code;

	if (pn != 0)
	{
		code = AEC_CMD_ERROR;
		if (pn >= sizeof(peers) / sizeof(peers[0]))
		{
			return code;
		}
	}

	if (pv != NULL) {
		return at_peer(pn, peers + pn, pv);
	}

	peer = peers;
	do {
		code = at_peer(pn, peer, 0);
		if (code != AEC_OK)
		{
			return code;
		}
		++pn;
		++peer;
	} while (pn != 5);

	return code;
}

AT_ERROR_CODE at_ping(char *hostname)
{
	at_callback_para_t para;
	strcpy(para.u.ping.hostname, hostname);
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_PING, &para, NULL);
	}
	return AEC_OK;
}

AT_ERROR_CODE at_wifi(s32 value)
{
	at_callback_para_t para;
	para.cfg  = &at_cfg;
	para.u.wifi.value = value;
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_WIFI, &para, NULL);
	}
	return AEC_OK;
}

AT_ERROR_CODE at_reassociate(void)
{
	at_callback_para_t para;
	para.cfg  = &at_cfg;
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_REASSOCIATE, &para, NULL);
	}
	return AEC_OK;
}

AT_ERROR_CODE at_scan(char *mode, char *repeat)
{
	at_callback_para_t para;
	if (mode == NULL)
	{
		if (repeat != NULL)
		{
			return AEC_PARA_ERROR;
		}
		para.u.scan.method = 0;
	}
	else
	{
		if (repeat == NULL)
		{
			return AEC_PARA_ERROR;
		}
		if (strcmp(mode, "a") == 0 && strcmp(repeat, "r") == 0)
		{
			para.u.scan.method = 1;
		}
		else if (strcmp(mode, "p") == 0 && strcmp(repeat, "r") == 0)
		{
			para.u.scan.method = 2;
		}
		else
		{
			return AEC_PARA_ERROR;
		}
	}
	para.cfg  = &at_cfg;
	if (at_callback.handle_cb == NULL)
	{
	  return AEC_OK;
	}
	(*at_callback.handle_cb)(ACC_SCAN, &para, NULL);
	return AEC_OK;
}
