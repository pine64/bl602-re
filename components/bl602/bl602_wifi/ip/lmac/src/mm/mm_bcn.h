#ifndef __MM_BCN_H__
#define __MM_BCN_H__

#include <stdbool.h>

#include <hal/hal_dma.h>
#include <mm/mm_task.h>
#include <vif/vif_mgmt.h>
#include <co_list.h>


struct mm_bcn_env_tag {
    const struct mm_bcn_change_req *param; // +0
    int tx_cfm; // +4
    bool tx_pending; // +8
    bool update_ongoing; // +9
    bool update_pending; // +10
    struct hal_dma_desc_tag dma; // +12
    struct co_list tim_list; // +28
};


extern struct mm_bcn_env_tag mm_bcn_env;


void mm_bcn_init(void);
void mm_bcn_init_vif(struct vif_info_tag *vif_entry);
void mm_bcn_change(const struct mm_bcn_change_req *param);
void mm_tim_update(const struct mm_tim_update_req *param);
void mm_bcn_transmit(void);

#endif // __MM_BCN_H__
