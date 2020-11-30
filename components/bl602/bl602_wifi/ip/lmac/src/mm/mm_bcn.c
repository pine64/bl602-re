
uint8_t mm_bcn_build(vif_info_tag * vif_entry);
void mm_bcn_change(mm_bcn_change_req * param);
void mm_bcn_csa_init(vif_info_tag * vif_entry, mm_bcn_change_req * param);
void mm_bcn_desc_prep(vif_info_tag * vif_entry, mm_bcn_change_req * param);
void mm_bcn_init_tim(vif_info_tag * vif_entry);
void mm_bcn_init_vif(vif_info_tag * vif_entry);
void mm_bcn_send_csa_counter_ind(uint8_t vif_index, uint8_t csa_count);
void mm_bcn_transmitted(void * env, uint32_t status);
void mm_bcn_update(mm_bcn_change_req * param);
void mm_bcn_updated(void * env, int dma_queue);
void mm_tim_update(mm_tim_update_req * param);
void mm_tim_update_proceed(mm_tim_update_req * param);
#if 0 //TODO EXISTS ALEADY
/**
* @file mm_bcn.c
* Source file for BL602
*/
#include "mm_bcn.h"


struct mm_bcn_env_tag mm_bcn_env;

static void mm_tim_update_proceed(const struct mm_tim_update_req *param);
static void mm_bcn_updated(void *env, int dma_queue);
static void mm_bcn_update(const struct mm_bcn_change_req *param);
static void mm_bcn_transmitted(void *env, uint32_t status);
void mm_bcn_init(void);
void mm_bcn_init_vif(struct vif_info_tag *vif_entry);
void mm_bcn_change(const struct mm_bcn_change_req *param);
void mm_tim_update(const struct mm_tim_update_req *param);
void mm_bcn_transmit(void);




/** mm_bcn_init
 */
void mm_bcn_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_bcn_init_vif
 */
void mm_bcn_init_vif(struct vif_info_tag *vif_entry)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_bcn_change
 */
void mm_bcn_change(const struct mm_bcn_change_req *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_tim_update
 */
void mm_tim_update(const struct mm_tim_update_req *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_bcn_transmit
 */
void mm_bcn_transmit(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_tim_update_proceed
 */
static void mm_tim_update_proceed(const struct mm_tim_update_req *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_bcn_updated
 */
static void mm_bcn_updated(void *env, int dma_queue)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_bcn_update
 */
static void mm_bcn_update(const struct mm_bcn_change_req *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_bcn_transmitted
 */
static void mm_bcn_transmitted(void *env, uint32_t status)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
