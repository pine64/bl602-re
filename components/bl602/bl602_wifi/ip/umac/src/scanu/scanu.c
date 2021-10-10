#include "scanu.h"

#include <wltypes.h>


extern const uint8 wpa_oui[3];
struct scanu_env_tag scanu_env;


uint32_t scanu_build_ie(void)
{
	__builtin_trap();
}

static void scanu_dma_cb(void *env, int dma_type)
{
	__builtin_trap();
}

void scanu_ie_download(void)
{
	__builtin_trap();
}

void scanu_confirm(uint8_t status)
{
	__builtin_trap();
}

void scanu_raw_send_cfm(uint8_t status, ke_task_id_t dst_id)
{
	__builtin_trap();
}

void scanu_init(void)
{
	__builtin_trap();
}

int scanu_frame_handler(const struct rxu_mgt_ind *frame)
{
	__builtin_trap();
}

struct mac_scan_result *scanu_find_result(const struct mac_addr *bssid_ptr, bool allocate)
{
	__builtin_trap();
}

struct mac_scan_result *scanu_search_by_bssid(const struct mac_addr *bssid)
{
	__builtin_trap();
}

struct mac_scan_result *scanu_search_by_ssid(const struct mac_ssid *ssid, int *idx)
{
	__builtin_trap();
}

void scanu_rm_exist_ssid(const struct mac_ssid *ssid, int index)
{
	__builtin_trap();
}

void scanu_start(void)
{
	__builtin_trap();
}

void scanu_scan_next(void)
{
	__builtin_trap();
}
