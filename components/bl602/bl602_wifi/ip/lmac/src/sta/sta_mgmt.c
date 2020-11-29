
void sta_mgmt_add_key(mm_key_add_req * param, uint8_t hw_key_idx);
void sta_mgmt_del_key(sta_info_tag * sta);
void sta_mgmt_entry_init(sta_info_tag * sta_entry);
uint8_t sta_mgmt_register(mm_sta_add_req * param, uint8_t * sta_idx);
int sta_mgmt_send_postponed_frame(vif_info_tag * p_vif_entry, sta_info_tag * p_sta_entry, int limit);
void sta_mgmt_unregister(uint8_t sta_idx);
#if 0 //TODO EXISTS ALEADY
/**
* @file sta_mgmt.c
* Source file for BL602
*/
#include "sta_mgmt.h"


struct sta_info_env_tag sta_info_env;
struct sta_info_tag sta_info_tab[12];

static void sta_mgmt_entry_init(struct sta_info_tag *sta_entry);
void sta_mgmt_init(void);
uint8_t sta_mgmt_register(const struct mm_sta_add_req *param, uint8_t *sta_idx);
void sta_mgmt_unregister(uint8_t sta_idx);
void sta_mgmt_add_key(const struct mm_key_add_req *param, uint8_t hw_key_idx);
void sta_mgmt_del_key(struct sta_info_tag *sta);
int sta_mgmt_send_postponed_frame(struct vif_info_tag *p_vif_entry, struct sta_info_tag *p_sta_entry, int limit);




/** sta_mgmt_init
 */
void sta_mgmt_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** sta_mgmt_register
 */
uint8_t sta_mgmt_register(const struct mm_sta_add_req *param, uint8_t *sta_idx)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** sta_mgmt_unregister
 */
void sta_mgmt_unregister(uint8_t sta_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** sta_mgmt_add_key
 */
void sta_mgmt_add_key(const struct mm_key_add_req *param, uint8_t hw_key_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** sta_mgmt_del_key
 */
void sta_mgmt_del_key(struct sta_info_tag *sta)
{
	ASSER_ERR(FALSE);
	return;
}

/** sta_mgmt_send_postponed_frame
 */
int sta_mgmt_send_postponed_frame(struct vif_info_tag *p_vif_entry, struct sta_info_tag *p_sta_entry, int limit)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** sta_mgmt_entry_init
 */
static void sta_mgmt_entry_init(struct sta_info_tag *sta_entry)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
