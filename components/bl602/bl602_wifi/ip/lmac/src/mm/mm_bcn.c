
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
