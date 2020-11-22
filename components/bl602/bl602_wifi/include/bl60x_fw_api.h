
void bl60x_check_mac_status(void);
void bl60x_current_time_us(void);
void bl60x_edca_get(void);
void bl60x_fw_dump_statistic(void);
void bl60x_fw_password_hash(void);
void bl_tpc_power_table_get(void);
void bl_tpc_update_power_rate_11b(void);
void bl_tpc_update_power_rate_11g(void);
void bl_tpc_update_power_rate_11n(void);
void bl_tpc_update_power_table(void);
typedef enum task_mm_cfg {
    TASK_MM_CFG_KEEP_ALIVE_TIME_LAST_RECEIVED=1,
    TASK_MM_CFG_KEEP_ALIVE_PACKET_COUNTER=2,
    TASK_MM_CFG_KEEP_ALIVE_STATUS_ENABLED=0
} task_mm_cfg;

