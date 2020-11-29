
uint32_t scanu_build_ie(void);
void scanu_confirm(uint8_t status);
void scanu_dma_cb(void * env, int dma_type);
mac_scan_result * scanu_find_result(mac_addr * bssid_ptr, _Bool allocate);
int scanu_frame_handler(rxu_mgt_ind * frame);
void scanu_ie_download(void);
void scanu_raw_send_cfm(uint8_t status, ke_task_id_t dst_id);
void scanu_rm_exist_ssid(mac_ssid * ssid, int index);
void scanu_scan_next(void);
mac_scan_result * scanu_search_by_bssid(mac_addr * bssid);
mac_scan_result * scanu_search_by_ssid(mac_ssid * ssid, int * idx);
void scanu_start(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file scanu.c
* Source file for BL602
*/
#include "scanu.h"


struct scanu_env_tag scanu_env;

static void scanu_dma_cb(void *env, int dma_type);
void scanu_confirm(uint8_t status);
void scanu_raw_send_cfm(uint8_t status, ke_task_id_t dst_id);
void scanu_init(void);
int scanu_frame_handler(const struct rxu_mgt_ind *frame);
struct mac_scan_result *scanu_find_result(const struct mac_addr *bssid_ptr, bool allocate);
struct mac_scan_result *scanu_search_by_bssid(const struct mac_addr *bssid);
struct mac_scan_result *scanu_search_by_ssid(const struct mac_ssid *ssid, int *idx);
void scanu_rm_exist_ssid(const struct mac_ssid *ssid, int index);
void scanu_start(void);
void scanu_scan_next(void);




/** scanu_confirm
 */
void scanu_confirm(uint8_t status)
{
	ASSER_ERR(FALSE);
	return;
}

/** scanu_raw_send_cfm
 */
void scanu_raw_send_cfm(uint8_t status, ke_task_id_t dst_id)
{
	ASSER_ERR(FALSE);
	return;
}

/** scanu_init
 */
void scanu_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** scanu_frame_handler
 */
int scanu_frame_handler(const struct rxu_mgt_ind *frame)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** *scanu_find_result
 */
struct mac_scan_result *scanu_find_result(const struct mac_addr *bssid_ptr, bool allocate)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** *scanu_search_by_bssid
 */
struct mac_scan_result *scanu_search_by_bssid(const struct mac_addr *bssid)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** *scanu_search_by_ssid
 */
struct mac_scan_result *scanu_search_by_ssid(const struct mac_ssid *ssid, int *idx)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** scanu_rm_exist_ssid
 */
void scanu_rm_exist_ssid(const struct mac_ssid *ssid, int index)
{
	ASSER_ERR(FALSE);
	return;
}

/** scanu_start
 */
void scanu_start(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** scanu_scan_next
 */
void scanu_scan_next(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** scanu_dma_cb
 */
static void scanu_dma_cb(void *env, int dma_type)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
