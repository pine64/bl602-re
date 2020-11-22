
void bl_main_event_handle(...);
void bl_utils_dump(void);
void hal_mib_dump(...);
void ipc_emb_dump(void);
void rxl_cntrl_dump(void);
void rxl_hwdesc_dump(void);
void txl_cfm_dump(void);
void txl_cntrl_env_dump(void);
void txl_frame_dump(void);
void bl60x_fw_dump_statistic(int forced);
void bl_event_handle(int param);
void bl_fw_statistic_dump(int param);
void bl_main_event_handle(void);
void bl_utils_dump(void);
void evt_ptr_t(int );
void hal_mib_dump(void);
void ipc_emb_dump(void);
void ke_evt_clear(evt_field_t event);
void ke_evt_schedule(void);
void ke_evt_set(evt_field_t event);
typedef struct ke_evt_tag ke_evt_tag, *ke_evt_tag;

void evt_ptr_t(int );
struct ke_evt_tag {
    void (* func)(int);
    int param;
};

void ke_flush(void);
void ke_init(void);
void txl_cfm_dump(void);
