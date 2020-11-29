
void vif_mgmt_add_key(mm_key_add_req * param, uint8_t hw_key_idx);
void vif_mgmt_bcn_recv(vif_info_tag * p_vif_entry);
void vif_mgmt_bcn_to_evt(void * env);
void vif_mgmt_bcn_to_prog(vif_info_tag * p_vif_entry);
void vif_mgmt_del_key(vif_info_tag * vif, uint8_t keyid);
void vif_mgmt_entry_init(vif_info_tag * vif_entry);
vif_info_tag * vif_mgmt_get_first_ap_inf(void);
uint8_t vif_mgmt_register(mac_addr * mac_addr, uint8_t vif_type, _Bool p2p, uint8_t * vif_idx);
void vif_mgmt_reset(void);
void vif_mgmt_send_postponed_frame(vif_info_tag * p_vif_entry);
void vif_mgmt_set_ap_bcn_int(vif_info_tag * p_vif_entry, uint16_t bcn_int);
void vif_mgmt_switch_channel(vif_info_tag * p_vif_entry);
void vif_mgmt_unregister(uint8_t vif_idx);
#if 0 //TODO EXISTS ALEADY
/**
* @file vif_mgmt.c
* Source file for BL602
*/
#include "vif_mgmt.h"


struct vif_mgmt_env_tag vif_mgmt_env;
struct vif_info_tag vif_info_tab[2];

static void vif_mgmt_bcn_to_evt(void *env);
void vif_mgmt_init(void);
void vif_mgmt_reset(void);
uint8_t vif_mgmt_register(const struct mac_addr *mac_addr, uint8_t vif_type, bool p2p, uint8_t *vif_idx);
void vif_mgmt_unregister(uint8_t vif_idx);
void vif_mgmt_add_key(const struct mm_key_add_req *param, uint8_t hw_key_idx);
void vif_mgmt_del_key(struct vif_info_tag *vif, uint8_t keyid);
void vif_mgmt_send_postponed_frame(struct vif_info_tag *p_vif_entry);
void vif_mgmt_bcn_to_prog(struct vif_info_tag *p_vif_entry);
void vif_mgmt_bcn_recv(struct vif_info_tag *p_vif_entry);
void vif_mgmt_set_ap_bcn_int(struct vif_info_tag *p_vif_entry, uint16_t bcn_int);
void vif_mgmt_switch_channel(struct vif_info_tag *p_vif_entry);
struct vif_info_tag *vif_mgmt_get_first_ap_inf(void);




/** vif_mgmt_init
 */
void vif_mgmt_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** vif_mgmt_reset
 */
void vif_mgmt_reset(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** vif_mgmt_register
 */
uint8_t vif_mgmt_register(const struct mac_addr *mac_addr, uint8_t vif_type, bool p2p, uint8_t *vif_idx)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** vif_mgmt_unregister
 */
void vif_mgmt_unregister(uint8_t vif_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** vif_mgmt_add_key
 */
void vif_mgmt_add_key(const struct mm_key_add_req *param, uint8_t hw_key_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** vif_mgmt_del_key
 */
void vif_mgmt_del_key(struct vif_info_tag *vif, uint8_t keyid)
{
	ASSER_ERR(FALSE);
	return;
}

/** vif_mgmt_send_postponed_frame
 */
void vif_mgmt_send_postponed_frame(struct vif_info_tag *p_vif_entry)
{
	ASSER_ERR(FALSE);
	return;
}

/** vif_mgmt_bcn_to_prog
 */
void vif_mgmt_bcn_to_prog(struct vif_info_tag *p_vif_entry)
{
	ASSER_ERR(FALSE);
	return;
}

/** vif_mgmt_bcn_recv
 */
void vif_mgmt_bcn_recv(struct vif_info_tag *p_vif_entry)
{
	ASSER_ERR(FALSE);
	return;
}

/** vif_mgmt_set_ap_bcn_int
 */
void vif_mgmt_set_ap_bcn_int(struct vif_info_tag *p_vif_entry, uint16_t bcn_int)
{
	ASSER_ERR(FALSE);
	return;
}

/** vif_mgmt_switch_channel
 */
void vif_mgmt_switch_channel(struct vif_info_tag *p_vif_entry)
{
	ASSER_ERR(FALSE);
	return;
}

/** *vif_mgmt_get_first_ap_inf
 */
struct vif_info_tag *vif_mgmt_get_first_ap_inf(void)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** vif_mgmt_bcn_to_evt
 */
static void vif_mgmt_bcn_to_evt(void *env)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
