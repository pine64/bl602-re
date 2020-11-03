/* ======== components/network/ble/blecontroller/ip/ble/ll/src/em/em_buf.c ======== */

struct em_buf_env_tag em_buf_env; // :67:23

void em_buf_init(void); // :83:6
void em_buf_rx_free(uint8_t hdl); // :182:6
uint8_t *em_buf_rx_buff_addr_get(uint16_t rx_hdl); // :188:10
uint8_t *em_buf_tx_buff_addr_get(struct em_buf_tx_desc *tx_desc); // :193:10
bool em_buf_tx_free(struct em_desc_node *desc_to_be_freed); // :198:5

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/em/em_buf.h ======== */

struct em_buf_node {
    struct co_list_hdr hdr;
    uint16_t idx;
    uint16_t buf_ptr;
}; // :54:8

struct em_desc_node {
    struct co_list_hdr hdr;
    uint16_t idx;
    uint16_t buffer_idx;
    uint16_t buffer_ptr;
    uint8_t llid;
    uint8_t length;
}; // :63:8

struct em_buf_tx_desc {
    uint16_t txptr;
    uint16_t txheader;
    uint16_t txdataptr;
    uint16_t txdle;
}; // :79:8

struct em_buf_env_tag {
    struct co_list tx_desc_free;
    struct co_list tx_buff_free;
    struct em_desc_node tx_desc_node[26];
    struct em_buf_node tx_buff_node[2];
    struct em_buf_tx_desc *tx_desc;
    uint8_t rx_current;
}; // :92:8

struct em_buf_env_tag em_buf_env; // :116:30

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/llc/llc.c ======== */

struct llc_env_tag *llc_env[2]; // :66:21
static const struct ke_task_desc TASK_DESC_LLC; // :69:34

void llc_init(void); // :76:6
void llc_reset(void); // :94:6
void llc_start(struct llc_create_con_req_ind *param, struct ea_elt_tag *elt); // :109:6
void llc_stop(uint16_t conhdl); // :282:6
void llc_discon_event_complete_send(ke_task_id_t src_id, uint8_t status, uint8_t conhdl, uint8_t reason); // :313:6
void llc_le_con_cmp_evt_send(uint8_t status, uint16_t conhdl, struct llc_create_con_req_ind *param); // :330:6
void llc_le_ch_sel_algo_evt_send(uint8_t chSel, uint16_t conhdl, struct llc_create_con_req_ind *param); // :541:6
void llc_con_update_complete_send(uint8_t status, uint16_t conhdl, struct lld_evt_tag *evt); // :561:6
void llc_ltk_req_send(uint16_t conhdl, const struct llcp_enc_req *param); // :605:6
void llc_feats_rd_event_send(uint8_t status, uint16_t conhdl, const struct le_features *feats); // :621:6
void llc_version_rd_event_send(uint8_t status, uint16_t conhdl); // :671:6
void llc_common_cmd_complete_send(uint16_t opcode, uint8_t status, uint16_t conhdl); // :690:6
void llc_common_cmd_status_send(uint16_t opcode, uint8_t status, uint16_t conhdl); // :701:6
void llc_common_flush_occurred_send(uint16_t conhdl); // :711:6
void llc_common_enc_key_ref_comp_evt_send(uint16_t conhdl, uint8_t status); // :719:6
void llc_common_enc_change_evt_send(uint16_t conhdl, uint8_t enc_status, uint8_t status); // :728:6
void llc_common_nb_of_pkt_comp_evt_send(uint16_t conhdl, uint8_t nb_of_pkt); // :753:6
void llc_con_update_ind(uint16_t conhdl, struct ea_elt_tag *elt_new); // :767:6
void llc_lsto_con_update(uint16_t conhdl); // :800:6
void llc_map_update_ind(uint16_t conhdl); // :817:6
void llc_con_update_finished(uint16_t conhdl); // :832:6
void llc_map_update_finished(uint16_t conhdl); // :869:6

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/llc/llc.h ======== */

enum llc_status_flag {
    LLC_STAT_INSTANT_PROCEED_MASK = 2048,
    LLC_STAT_INSTANT_PROCEED_LSB = 11,
    LLC_STAT_LLCP_INSTANT_EXTRACTED_MASK = 1024,
    LLC_STAT_LLCP_INSTANT_EXTRACTED_LSB = 10,
    LLC_STAT_DISC_REM_REQ_MASK = 512,
    LLC_STAT_DISC_REM_REQ_LSB = 9,
    LLC_STAT_SYNC_FOUND_MASK = 256,
    LLC_STAT_SYNC_FOUND_LSB = 8,
    LLC_STAT_UPDATE_EVT_SENT_MASK = 128,
    LLC_STAT_UPDATE_EVT_SENT_LSB = 7,
    LLC_STAT_UPDATE_HOST_REQ_MASK = 64,
    LLC_STAT_UPDATE_HOST_REQ_LSB = 6,
    LLC_STAT_UPDATE_PENDING_MASK = 32,
    LLC_STAT_UPDATE_PENDING_LSB = 5,
    LLC_STAT_TO_PENDING_MASK = 16,
    LLC_STAT_TO_PENDING_LSB = 4,
    LLC_STAT_LLCP_DISCARD_MASK = 8,
    LLC_STAT_LLCP_DISCARD_LSB = 3,
    LLC_STAT_WAIT_TRAFFIC_PAUSED_MASK = 4,
    LLC_STAT_WAIT_TRAFFIC_PAUSED_LSB = 2,
    LLC_STAT_PEER_VERS_KNOWN_MASK = 2,
    LLC_STAT_PEER_VERS_KNOWN_LSB = 1,
    LLC_STAT_FEAT_EXCH_MASK = 1,
    LLC_STAT_FEAT_EXCH_LSB = 0,
}; // :65:6

enum llc_dle_flag {
    LLC_DLE_EVT_SENT_MASK = 2,
    LLC_DLE_EVT_SENT_LSB = 1,
    LLC_DLE_REQ_RCVD_MASK = 1,
    LLC_DLE_REQ_RCVD_LSB = 0,
}; // :122:6

struct rem_version {
    uint8_t vers;
    uint16_t compid;
    uint16_t subvers;
}; // :185:8

struct encrypt {
    struct sess_k_div skd;
    struct ltk ltk;
    uint8_t randn[16];
}; // :196:8

struct data_len_ext_tag {
    uint16_t conn_max_tx_octets;
    uint16_t conn_max_rx_octets;
    uint16_t conn_eff_max_tx_octets;
    uint16_t conn_eff_max_rx_octets;
    uint16_t conn_max_tx_time;
    uint16_t conn_max_rx_time;
    uint16_t conn_eff_max_tx_time;
    uint16_t conn_eff_max_rx_time;
    bool send_req_not_allowed;
    uint8_t data_len_ext_flag;
}; // :207:8

struct llc_env_tag {
    void *operation[4];
    struct ea_elt_tag *elt;
    struct llc_ch_asses_tag chnl_assess;
    struct rem_version peer_version;
    struct data_len_ext_tag data_len_ext_info;
    uint16_t sup_to;
    uint16_t n_sup_to;
    uint16_t auth_payl_to;
    uint16_t auth_payl_to_margin;
    uint16_t llc_status;
    struct le_chnl_map ch_map;
    struct le_chnl_map n_ch_map;
    int8_t rssi;
    struct le_features feats_used;
    struct encrypt encrypt;
    uint8_t disc_reason;
    bool disc_event_sent;
    uint8_t loc_proc_state;
    uint8_t rem_proc_state;
    uint8_t encryption_state;
    bool peer_sup_conn_param_req;
}; // :269:8

struct llc_env_tag *llc_env[2]; // :368:28

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/llc/llc_ch_asses.c ======== */

void llc_ch_assess_local(uint16_t conhdl, uint16_t status, int8_t rssi, uint8_t channel); // :58:6
uint8_t llc_ch_assess_get_local_ch_map(uint16_t conhdl, struct le_chnl_map *map, struct le_chnl_map *hostmap); // :108:9
struct le_chnl_map *llc_ch_assess_get_current_ch_map(uint16_t conhdl); // :132:22
void llc_ch_assess_reass_ch(uint16_t conhdl, struct le_chnl_map *map, struct le_chnl_map *hostmap, uint8_t nb_chgood); // :139:6

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/llc/llc_ch_asses.h ======== */

enum lld_ch_asses_ponderation {
    LLD_CH_ASSES_SYNC_ERR_HIGH_RSSI = -3,
    LLD_CH_ASSES_CRC_ERR = -3,
    LLD_CH_ASSES_SYNC_ERR_LOW_RSSI_NO_LATENCY = -1,
    LLD_CH_ASSES_SYNC_ERR_LOW_RSSI_LATENCY = 0,
    LLD_CH_ASSES_SYNC_FOUND_NO_CRC_ERR = 3,
}; // :59:6

struct llc_ch_asses_tag {
    int8_t rcvd_quality[37];
    bool latency_en;
    uint8_t reassess_count;
    uint8_t reassess_cursor;
}; // :80:8

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/llc/llc_hci.c ======== */

static int hci_le_con_update_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_con_update_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :92:12
static int hci_le_rd_chnl_map_cmd_handler(const ke_msg_id_t msgid, const struct hci_basic_conhdl_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :214:12
static int hci_le_rd_rem_used_feats_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_rd_rem_used_feats_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :263:12
static int hci_le_start_enc_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_start_enc_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :341:12
static int hci_le_ltk_req_reply_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_ltk_req_reply_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :436:12
static int hci_le_ltk_req_neg_reply_cmd_handler(const ke_msg_id_t msgid, const struct hci_basic_conhdl_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :495:12
static int hci_le_rem_con_param_req_reply_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_rem_con_param_req_reply_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :577:12
static int hci_le_rem_con_param_req_neg_reply_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_rem_con_param_req_neg_reply_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :661:12
static int hci_flush_cmd_handler(const ke_msg_id_t msgid, const struct hci_basic_conhdl_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :725:12
static int hci_disconnect_cmd_handler(const ke_msg_id_t msgid, const struct hci_disconnect_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :760:12
static int hci_rd_rssi_cmd_handler(const ke_msg_id_t msgid, const struct hci_basic_conhdl_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :816:12
static int hci_rd_tx_pwr_lvl_cmd_handler(const ke_msg_id_t msgid, const struct hci_rd_tx_pwr_lvl_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :859:12
static int hci_rd_rem_ver_info_cmd_handler(const ke_msg_id_t msgid, const struct hci_rd_rem_ver_info_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :921:12
static int hci_rd_auth_payl_to_cmd_handler(const ke_msg_id_t msgid, const struct hci_rd_auth_payl_to_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :982:12
static int hci_wr_auth_payl_to_cmd_handler(const ke_msg_id_t msgid, const struct hci_wr_auth_payl_to_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1025:12
static int hci_le_set_data_len_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_data_len_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1234:12

static const struct ke_msg_handler llc_hci_command_handler_tab[16]; // :1408:36

int llc_hci_command_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1457:5
int llc_hci_acl_data_tx_handler(const ke_msg_id_t msgid, const struct hci_acl_data_tx *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1498:5

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/llc/llc_llcp.c ======== */

enum llc_instant_state {
    LLC_INSTANT_IGNORED = 0,
    LLC_INSTANT_ACCEPTED = 1,
    LLC_INSTANT_COLLISION = 2,
    LLC_INSTANT_PASSED = 3,
    LLC_INSTANT_MIC_FAILURE = 4,
    LLC_INSTANT_REJECT = 5,
}; // :74:6

typedef int (*llcp_pdu_handler_func_t)(uint16_t, ke_task_id_t, bool, union llcp_pdu *); // :98:15

struct llcp_pdu_handler_info {
    llcp_pdu_handler_func_t handler;
    bool int_ctx_allowed;
    uint8_t enc_auth;
}; // :137:8

static const struct llcp_pdu_handler_info llcp_pdu_handler[22]; // :149:43

void llc_llcp_version_ind_pdu_send(uint16_t conhdl); // :194:6
void llc_llcp_ch_map_update_pdu_send(uint16_t conhdl); // :213:6
void llc_llcp_pause_enc_req_pdu_send(uint16_t conhdl); // :232:6
void llc_llcp_pause_enc_rsp_pdu_send(uint16_t conhdl); // :250:6
void llc_llcp_enc_req_pdu_send(uint16_t conhdl, struct hci_le_start_enc_cmd *param); // :269:6
void llc_llcp_enc_rsp_pdu_send(uint16_t conhdl, struct llcp_enc_req *param); // :305:6
void llc_llcp_start_enc_rsp_pdu_send(uint16_t conhdl); // :331:6
void llc_llcp_reject_ind_pdu_send(uint16_t conhdl, uint8_t rej_opcode, uint8_t reason); // :355:6
void llc_llcp_con_update_pdu_send(uint16_t conhdl, struct llcp_con_upd_ind *param); // :397:6
void llc_llcp_con_param_req_pdu_send(uint16_t conhdl, struct llc_con_upd_req_ind *param); // :419:6
void llc_llcp_con_param_rsp_pdu_send(uint16_t conhdl, struct llc_con_upd_req_ind *param); // :446:6
void llc_llcp_feats_req_pdu_send(uint16_t conhdl); // :473:6
void llc_llcp_feats_rsp_pdu_send(uint16_t conhdl); // :499:6
void llc_llcp_start_enc_req_pdu_send(uint16_t conhdl); // :518:6
void llc_llcp_terminate_ind_pdu_send(uint16_t conhdl, uint8_t err_code); // :549:6
void llc_llcp_unknown_rsp_send_pdu(uint16_t conhdl, uint8_t unk_type); // :596:6
void llc_llcp_ping_req_pdu_send(uint16_t conhdl); // :612:6
void llc_llcp_ping_rsp_pdu_send(uint16_t conhdl); // :627:6
void llc_llcp_length_req_pdu_send(uint16_t conhdl); // :642:6
void llc_llcp_length_rsp_pdu_send(uint16_t conhdl); // :663:6
static void llc_llcp_send(uint8_t conhdl, void *param, uint8_t opcode); // :773:13
static void llc_llcp_reject_ind(uint16_t conhdl, const ke_task_id_t dest_id, uint8_t err_code, bool extended); // :822:13
int llc_llcp_recv_handler(ke_task_id_t dest_id, uint8_t status, union llcp_pdu *pdu, bool int_ctx); // :1059:5
static int llcp_con_upd_ind_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_con_upd_ind *param); // :1173:12
static int llcp_channel_map_ind_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_channel_map_ind *param); // :1328:12
static int llcp_terminate_ind_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_terminate_ind *param); // :1450:12
static int llcp_feats_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_feats_req *param); // :1485:12
static int llcp_slave_feature_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_slave_feature_req *param); // :1542:12
static int llcp_feats_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_feats_rsp *param); // :1565:12
static int llcp_vers_ind_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_vers_ind *param); // :1626:12
static int llcp_con_param_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_con_param_req *param); // :1690:12
static int llcp_con_param_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_con_param_rsp *param); // :1881:12
static int llcp_enc_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_enc_req *param); // :1974:12
static int llcp_enc_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_enc_rsp *param); // :2051:12
static int llcp_start_enc_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_start_enc_req *param); // :2118:12
static int llcp_start_enc_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_start_enc_rsp *param); // :2173:12
static int llcp_pause_enc_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_pause_enc_req *param); // :2268:12
static int llcp_pause_enc_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_pause_enc_rsp *param); // :2341:12
static int llcp_reject_ind_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_reject_ind *param); // :2417:12
static int llcp_reject_ind_ext_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_reject_ind_ext *param); // :2438:12
static int llcp_ping_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, void *param); // :2459:12
static int llcp_ping_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, void *param); // :2491:12
static int llcp_length_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_length_req *param); // :2531:12
static int llcp_length_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_length_rsp *param); // :2623:12
static int llcp_unknown_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_unknown_rsp *param); // :3051:12
uint8_t llc_llcp_get_autorize(uint8_t opcode); // :3236:9

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/llc/llc_llcp.h ======== */

struct llcp_pdu_tag {
    struct co_list_hdr hdr;
    uint16_t idx;
    void *ptr;
    uint8_t opcode;
}; // :48:8

enum llc_llcp_authorize {
    LLC_LLCP_NO_AUTHZED = 0,
    LLC_LLCP_START_ENC_AUTHZED = 1,
    LLC_LLCP_PAUSE_ENC_AUTHZED = 2,
}; // :66:6

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/llc/llc_task.c ======== */

static void llc_task_random_gen_request(ke_task_id_t dest_id); // :85:13
static int llc_enc_mgt_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :115:12
static int llc_link_sup_to_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :344:12
static int llc_auth_payl_nearly_to_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :386:12
static int llc_auth_payl_real_to_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :445:12
static int llc_llcp_rsp_to_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :490:12
static int llc_chnl_assess_timer_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :514:12
static int llc_con_upd_req_ind_handler(const ke_msg_id_t msgid, struct llc_con_upd_req_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :593:12
static int llc_length_req_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :812:12
static int llc_chmap_update_req_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :940:12
static int llm_enc_ind_handler(const ke_msg_id_t msgid, const struct llm_enc_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :994:12
static int lld_stop_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1054:12
static int llc_data_ind_handler(const ke_msg_id_t msgid, const struct llc_data_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1191:12
static int llc_dft_handler(const ke_msg_id_t msgid, void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1246:12
static int llc_llcp_recv_ind_handler(const ke_msg_id_t msgid, struct llc_llcp_recv_ind *ind, ke_task_id_t dest_id, ke_task_id_t src_id); // :1268:12

static const struct ke_msg_handler llc_default_state[16]; // :1285:36
const struct ke_state_handler llc_default_handler; // :1356:31
ke_state_t llc_state[2]; // :1359:12

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/llc/llc_task.h ======== */

enum llc_op_type {
    LLC_OP_LOC_PARAM_UPD = 0,
    LLC_OP_REM_PARAM_UPD = 1,
    LLC_OP_ENCRYPT = 2,
    LLC_OP_DLE_UPD = 3,
    LLC_OP_MAX = 4,
}; // :56:6

enum llc_proc_field {
    LLC_LOC_PROC = 0,
    LLC_REM_PROC = 1,
    LLC_TRAFFIC_PAUSED = 2,
    LLC_DISC = 3,
}; // :80:6

enum llc_state_id {
    LLC_CONNECTED = 0,
    LLC_LOC_PROC_BUSY = 1,
    LLC_REM_PROC_BUSY = 2,
    LLC_TRAFFIC_PAUSED_BUSY = 4,
    LLC_DISC_BUSY = 15,
    LLC_FREE = 127,
    LLC_STATE_MAX = 128,
}; // :95:6

enum llc_loc_proc_state {
    LLC_LOC_IDLE = 0,
    LLC_LOC_WAIT_FEAT_RSP = 1,
    LLC_LOC_WAIT_VERS_IND = 2,
    LLC_LOC_WAIT_TERM_ACK = 3,
    LLC_LOC_WAIT_LENGTH_RSP = 4,
    LLC_LOC_WAIT_PING_RSP = 5,
    LLC_LOC_WAIT_MAP_UPD_INSTANT = 6,
    LLC_LOC_WAIT_CON_PARAM_RSP = 7,
    LLC_LOC_WAIT_CON_UPD_REQ = 8,
    LLC_LOC_WAIT_CON_UPD_INSTANT = 9,
    LLC_LOC_WAIT_TRAFFIC_PAUSED = 10,
    LLC_LOC_WAIT_PAUSE_ENC_RSP = 11,
    LLC_LOC_WAIT_PAUSE_ENC_RSP_SENT = 12,
    LLC_LOC_WAIT_ENC_RSP = 13,
    LLC_LOC_WAIT_SK_AND_START_ENC_REQ = 14,
    LLC_LOC_WAIT_SK = 15,
    LLC_LOC_WAIT_START_ENC_REQ = 16,
    LLC_LOC_SEND_START_ENC_RSP = 17,
    LLC_LOC_WAIT_START_ENC_RSP = 18,
    LLC_LOC_WAIT_RANDN_GEN_IND = 19,
}; // :123:6

enum llc_rem_proc_state {
    LLC_REM_IDLE = 0,
    LLC_REM_WAIT_MAP_UPD_INSTANT = 1,
    LLC_REM_WAIT_CON_PARAM_HOST_RSP = 2,
    LLC_REM_WAIT_CON_UPD_REQ = 3,
    LLC_REM_WAIT_CON_UPD_INSTANT = 4,
    LLC_REM_WAIT_TP_FOR_PAUSE_ENC_REQ = 5,
    LLC_REM_WAIT_PAUSE_ENC_RSP = 6,
    LLC_REM_WAIT_ENC_REQ = 7,
    LLC_REM_WAIT_TP_FOR_ENC_REQ = 8,
    LLC_REM_WAIT_LTK = 9,
    LLC_REM_WAIT_SK = 10,
    LLC_REM_WAIT_START_ENC_RSP = 11,
    LLC_REM_WAIT_START_ENC_RSP_ACK = 12,
    LLC_REM_WAIT_ENC_REJECT_ACK = 13,
    LLC_REM_WAIT_RANDN_GEN_IND = 14,
}; // :193:6

enum LLC_MSG {
    LLC_DATA_IND = 256,
    LLC_LE_LINK_SUP_TO = 257,
    LLC_LLCP_RSP_TO = 258,
    LLC_AUTH_PAYL_NEARLY_TO = 259,
    LLC_AUTH_PAYL_REAL_TO = 260,
    LLC_CHNL_ASSESS_TO = 261,
    LLC_ENC_MGT_IND = 262,
    LLC_LENGTH_REQ_IND = 263,
    LLC_CHMAP_UPDATE_REQ_IND = 264,
    LLC_CON_UPD_REQ_IND = 265,
    LLC_LLCP_RECV_IND = 266,
}; // :254:6

struct llc_create_con_req_ind {
    uint16_t con_int;
    uint16_t con_lat;
    uint16_t sup_to;
    uint16_t ral_ptr;
    struct bd_addr peer_addr;
    uint8_t peer_addr_type;
    uint8_t hop_inc;
    uint8_t sleep_clk_acc;
    uint8_t filter_policy;
}; // :366:8

struct llc_data_ind {
    uint16_t conhdl;
    uint8_t pb_bc_flag;
    uint16_t length;
    uint8_t rx_hdl;
}; // :389:8

struct llc_llcp_recv_ind {
    uint8_t status;
    uint8_t dummy;
    union llcp_pdu pdu;
}; // :410:8

enum llc_con_up_op {
    LLC_CON_UP_HCI_REQ = 0,
    LLC_CON_UP_MOVE_ANCHOR = 1,
    LLC_CON_UP_FORCE = 2,
    LLC_CON_UP_PEER_REQ = 3,
    LLC_CON_UP_LOC_REQ = 4,
}; // :422:6

struct llc_con_upd_req_ind {
    uint8_t operation;
    uint16_t con_intv_min;
    uint16_t con_intv_max;
    uint16_t con_latency;
    uint16_t superv_to;
    uint16_t ce_len_min;
    uint16_t ce_len_max;
    uint16_t interval_min;
    uint16_t interval_max;
    uint8_t pref_period;
    uint16_t ref_con_event_count;
    uint16_t offset0;
    uint16_t offset1;
    uint16_t offset2;
    uint16_t offset3;
    uint16_t offset4;
    uint16_t offset5;
}; // :439:8

const struct ke_state_handler llc_default_handler; // :489:38
ke_state_t llc_state[2]; // :490:19

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/llc/llc_util.c ======== */

static void llc_check_trafic_paused(uint8_t conhdl); // :50:13
uint8_t llc_util_get_free_conhdl(uint16_t *conhdl); // :81:9
uint8_t llc_util_get_nb_active_link(void); // :107:9
void llc_util_dicon_procedure(uint16_t conhdl, uint8_t reason); // :132:6
void llc_util_update_channel_map(uint16_t conhdl, struct le_chnl_map *map); // :156:6
void llc_util_set_llcp_discard_enable(uint16_t conhdl, bool enable); // :168:6
void llc_util_set_auth_payl_to_margin(struct lld_evt_tag *evt); // :186:6
void llc_util_clear_operation_ptr(uint16_t conhdl, uint8_t op_type); // :211:6
void llc_util_bw_mgt(uint16_t conhdl); // :223:6
void llc_end_evt_defer(uint16_t conhdl); // :267:6
void llc_pdu_llcp_tx_ack_defer(uint16_t conhdl, uint8_t opcode); // :295:6
void llc_pdu_acl_tx_ack_defer(uint16_t conhdl, uint8_t tx_cnt); // :346:6
void llc_pdu_defer(uint16_t conhdl, uint16_t status, uint8_t rssi, uint8_t channel, uint8_t length); // :378:6

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/llc/llc_util.h ======== */

enum llc_util_enc_state {
    LLC_ENC_DISABLED = 0,
    LLC_ENC_TX = 1,
    LLC_ENC_RX = 2,
    LLC_ENC_ENABLE = 3,
    LLC_ENC_TX_FLOW_OFF = 4,
    LLC_ENC_RX_FLOW_OFF = 8,
    LLC_ENC_FLOW_OFF = 12,
    LLC_ENC_REFRESH_PENDING = 16,
    LLC_ENC_PAUSE_PENDING = 32,
}; // :108:6

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/lld/lld.c ======== */

static const struct ke_task_desc TASK_DESC_LLD; // :93:34

void lld_init(bool reset); // :116:6
void lld_core_reset(void); // :492:6
struct ea_elt_tag *lld_adv_start(struct advertising_pdu_params *adv_par, struct em_desc_node *adv_pdu, struct em_desc_node *scan_rsp_pdu, uint8_t adv_pwr); // :554:20
void lld_adv_stop(struct ea_elt_tag *elt); // :1111:6
struct ea_elt_tag *lld_scan_start(const struct scanning_pdu_params *scan_par, struct em_desc_node *scan_req_pdu); // :1127:20
void lld_scan_stop(struct ea_elt_tag *elt); // :1258:6
struct ea_elt_tag *lld_con_start(const struct hci_le_create_con_cmd *con_par, struct em_desc_node *con_req_pdu, uint16_t conhdl); // :1409:20
struct ea_elt_tag *lld_move_to_master(struct ea_elt_tag *elt, uint16_t conhdl, const struct llc_create_con_req_ind *param, uint8_t rx_hdl); // :1772:20
void lld_con_update_req(struct ea_elt_tag *elt_old, struct llc_con_upd_req_ind *param, struct llcp_con_upd_ind *param_pdu); // :1834:6
uint8_t lld_con_update_after_param_req(uint16_t conhdl, struct ea_elt_tag *elt_old, struct llc_con_upd_req_ind *param, struct llcp_con_upd_ind *param_pdu, bool bypass_offchk); // :1860:9
uint8_t lld_con_param_rsp(uint16_t conhdl, struct ea_elt_tag *elt, struct llc_con_upd_req_ind *param); // :2005:9
void lld_con_param_req(uint16_t conhdl, struct ea_elt_tag *elt, struct llc_con_upd_req_ind *param); // :2069:6
void lld_con_stop(struct ea_elt_tag *elt); // :2140:6
uint8_t lld_get_mode(uint16_t conhdl); // :2145:9
struct ea_elt_tag *lld_move_to_slave(struct llc_create_con_req_ind *con_par, struct llm_pdu_con_req_rx *con_req_pdu, struct ea_elt_tag *elt_adv, uint16_t conhdl, uint8_t rx_hdl); // :2185:20
void lld_ch_map_ind(struct ea_elt_tag *elt, uint16_t instant); // :2471:6
void lld_con_update_ind(struct ea_elt_tag *elt_old, const struct llcp_con_upd_ind *param_pdu); // :2502:6
void lld_crypt_isr(void); // :2543:6
struct ea_elt_tag *lld_test_mode_tx(struct em_desc_node *txdesc, uint8_t tx_freq, uint8_t tx_phy); // :2550:20

uint8_t orig_rxsyncwinszdef; // :2622:9
uint8_t orig_rfrxtmda; // :2623:9

struct ea_elt_tag *lld_test_mode_rx(uint8_t rx_freq); // :2624:20
struct ea_elt_tag *lld_enh_test_mode_rx(uint8_t rx_freq, uint8_t rx_phy, uint8_t modul_index); // :2704:20
void lld_test_stop(struct ea_elt_tag *elt); // :2777:6

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/lld/lld_evt.c ======== */

enum lld_evt_defer_type {
    LLD_DEFER_RX = 0,
    LLD_DEFER_END = 1,
    LLD_DEFER_TEST_END = 2,
    LLD_DEFER_CON_UP_INSTANT = 3,
    LLD_DEFER_MAP_UP_INSTANT = 4,
    LLD_DEFER_MAX = 5,
}; // :105:6

struct lld_evt_env_tag lld_evt_env; // :133:24

static void lld_evt_elt_wait_insert(struct ea_elt_tag *elt); // :170:13
static struct lld_evt_wait_tag *lld_evt_elt_wait_get(struct ea_elt_tag *elt); // :179:34
static void lld_evt_deferred_elt_push(struct ea_elt_tag *elt, uint8_t type, uint8_t rx_desc_cnt); // :224:13
static void lld_evt_delete_elt_handler(void); // :246:13
static struct ea_elt_tag *lld_evt_deferred_elt_pop(uint8_t *type, uint8_t *rx_desc_cnt); // :317:27
static void lld_evt_winsize_change(struct lld_evt_tag *evt, bool instant); // :489:13
static void lld_evt_rxwin_compute(struct ea_elt_tag *elt); // :560:13
static void lld_evt_slave_time_compute(struct ea_elt_tag *elt, uint16_t slot_offset); // :618:13
static uint32_t lld_evt_get_next_free_slot(void); // :938:17
void lld_evt_delete_elt_push(struct ea_elt_tag *elt, bool flush, bool send_indication); // :1292:6
void lld_evt_channel_next(uint16_t conhdl, int16_t nb_inc); // :1327:6
void lld_evt_init(bool reset); // :1347:6
void lld_evt_init_evt(struct lld_evt_tag *evt); // :1384:6
bool lld_evt_restart(struct ea_elt_tag *elt, bool rejected); // :1406:5
void lld_evt_elt_insert(struct ea_elt_tag *elt, bool inc_prio); // :1930:6
bool lld_evt_elt_delete(struct ea_elt_tag *elt, bool flush_data, bool send_indication); // :1969:5
uint16_t lld_evt_drift_compute(uint16_t delay, uint8_t master_sca); // :2105:10
void lld_evt_schedule_next(struct ea_elt_tag *elt); // :2120:6
void lld_evt_schedule(struct ea_elt_tag *elt); // :2278:6
void lld_evt_prevent_stop(struct ea_elt_tag *elt); // :2525:6
struct ea_elt_tag *lld_evt_scan_create(uint16_t handle, uint16_t latency); // :2533:20
struct ea_elt_tag *lld_evt_move_to_master(struct ea_elt_tag *elt_scan, uint16_t conhdl, const struct llc_create_con_req_ind *pdu_tx, uint8_t rx_hdl); // :2572:20
struct ea_elt_tag *lld_evt_update_create(struct ea_elt_tag *elt_old, uint16_t ce_len, uint16_t mininterval, uint16_t maxinterval, uint16_t latency, uint8_t pref_period, struct lld_evt_update_tag *upd_par); // :2679:20
struct ea_elt_tag *lld_evt_move_to_slave(struct llc_create_con_req_ind *con_par, struct llm_pdu_con_req_rx *con_req_pdu, struct ea_elt_tag *elt_adv, uint16_t conhdl); // :2748:20
void lld_evt_slave_update(const struct llcp_con_upd_ind *param_pdu, struct ea_elt_tag *elt_old); // :2951:6
struct ea_elt_tag *lld_evt_adv_create(uint16_t handle, uint16_t mininterval, uint16_t maxinterval, bool restart_pol); // :3056:20
void lld_evt_deffered_elt_handler(void); // :3108:6
void lld_evt_end(struct ea_elt_tag *elt); // :3215:6
void lld_evt_rx(struct ea_elt_tag *elt); // :3362:6
void lld_evt_rx_afs(struct ea_elt_tag *elt, uint8_t num); // :3384:6
void lld_evt_canceled(struct ea_elt_tag *elt); // :3410:6
void lld_evt_timer_isr(void); // :3439:6
void lld_evt_end_isr(bool apfm); // :3449:6
void lld_evt_rx_isr(void); // :3479:6
void lld_evt_afs_isr(uint8_t num); // :3489:6

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/lld/lld_evt.h ======== */

enum lld_evt_flag {
    LLD_EVT_FLAG_WAITING_ACK = 1,
    LLD_EVT_FLAG_WAITING_SYNC = 2,
    LLD_EVT_FLAG_WAITING_TXPROG = 4,
    LLD_EVT_FLAG_WAITING_INSTANT = 8,
    LLD_EVT_FLAG_WAITING_EOEVT_TO_DELETE = 16,
    LLD_EVT_FLAG_NO_RESTART = 32,
    LLD_EVT_FLAG_APFM = 64,
    LLD_EVT_FLAG_LATENCY_ACTIVE = 128,
}; // :147:6

enum lld_evt_mode {
    LLD_EVT_ADV_MODE = 0,
    LLD_EVT_SCAN_MODE = 1,
    LLD_EVT_TEST_MODE = 2,
    LLD_EVT_MST_MODE = 3,
    LLD_EVT_SLV_MODE = 4,
    LLD_EVT_EXT_ADV_MODE = 5,
    LLD_EVT_PER_ADV_MODE = 6,
    LLD_EVT_EXT_SCAN_MODE = 7,
    LLD_EVT_MODE_MAX = 8,
}; // :188:6

enum lld_evt_cs_format {
    LLD_MASTER_CONNECTED = 2,
    LLD_SLAVE_CONNECTED = 3,
    LLD_LD_ADVERTISER = 4,
    LLD_HD_ADVERTISER = 5,
    LLD_PASSIVE_SCANNING = 8,
    LLD_ACTIVE_SCANNING = 9,
    LLD_INITIATING = 15,
    LLD_TXTEST_MODE = 28,
    LLD_RXTEST_MODE = 29,
    LLD_TXRXTEST_MODE = 30,
}; // :204:6

struct lld_evt_anchor {
    uint32_t basetime_cnt;
    uint16_t finetime_cnt;
    uint16_t evt_cnt;
}; // :235:8

struct lld_non_conn {
    uint32_t window;
    uint32_t anchor;
    uint32_t end_ts;
    bool initiate;
    bool connect_req_sent;
}; // :246:8

struct lld_conn {
    uint32_t sync_win_size;
    uint32_t sca_drift;
    uint16_t instant;
    uint16_t latency;
    uint16_t counter;
    uint16_t missed_cnt;
    uint16_t duration_dft;
    uint16_t update_offset;
    uint16_t eff_max_tx_time;
    uint16_t eff_max_tx_size;
    uint8_t update_size;
    uint8_t instant_action;
    uint8_t mst_sca;
    uint8_t last_md_rx;
    uint8_t tx_prog_pkt_cnt;
    bool wait_con_up_sync;
}; // :267:8

struct lld_evt_tag {
    struct lld_evt_anchor anchor_point;
    struct co_list tx_acl_rdy;
    struct co_list tx_acl_tofree;
    struct co_list tx_llcp_pdu_rdy;
    struct co_list tx_prog;
    struct ea_interval_tag *interval_elt;
    union lld_evt_info evt;
    uint16_t conhdl;
    uint16_t cs_ptr;
    uint16_t interval;
    uint8_t rx_cnt;
    uint8_t mode;
    uint8_t tx_pwr;
    uint8_t default_prio;
    uint8_t evt_flag;
    bool delete_ongoing;
}; // :304:8

union lld_evt_info {
    struct lld_non_conn non_conn;
    struct lld_conn conn;
}; // :325:11

struct lld_evt_update_tag {
    uint16_t win_offset;
    uint16_t instant;
    uint8_t win_size;
}; // :361:8

struct lld_evt_env_tag {
    struct co_list elt_prog;
    struct co_list elt_wait;
    struct co_list elt_deferred;
    struct co_list rx_pkt_deferred;
    struct co_list elt_to_be_deleted;
    uint8_t sca;
    bool renew;
    uint8_t hw_wa_sleep_compensation;
}; // :385:8

struct lld_evt_wait_tag {
    struct co_list_hdr hdr;
    struct ea_elt_tag *elt_ptr;
}; // :406:8

struct lld_evt_deferred_tag {
    struct co_list_hdr hdr;
    struct ea_elt_tag *elt_ptr;
    uint8_t type;
    uint8_t rx_desc_cnt;
}; // :415:8

struct lld_evt_delete_tag {
    struct co_list_hdr hdr;
    struct ea_elt_tag *elt_ptr;
    bool flush;
    bool send_ind;
}; // :431:8

struct lld_evt_env_tag lld_evt_env; // :450:31

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/lld/lld_pdu.c ======== */

enum lld_pdu_pack_status {
    LLC_PDU_PACK_OK = 0,
    LLC_PDU_PACK_WRONG_FORMAT = 1,
    LLC_PDU_PACK_UNKNOWN = 2,
}; // :68:6

typedef void (*llcp_pdu_unpk_func_t)(uint16_t, uint8_t, uint8_t *); // :94:16

struct lld_pdu_rx_info {
    struct co_list_hdr hdr;
    uint8_t rx_hdl;
    bool free;
    uint16_t conhdl;
    uint16_t status;
    uint8_t length;
    uint8_t channel;
    uint8_t rssi;
    uint8_t audio;
}; // :98:8

struct lld_pdu_pack_desc {
    uint8_t pdu_len;
    void *pack_fmt;
    llcp_pdu_unpk_func_t unpack_func;
}; // :121:8

const struct lld_pdu_pack_desc lld_pdu_adv_pk_desc_tab[7]; // :132:32
const struct lld_pdu_pack_desc lld_pdu_llcp_pk_desc_tab[22]; // :145:32

static void lld_pdu_cntl_aligned_unpk(uint16_t pdu_ptr, uint8_t parlen, uint8_t *param); // :587:13
static void lld_pdu_llcp_con_param_req_unpk(uint16_t pdu_ptr, uint8_t parlen, uint8_t *param); // :608:13
static void lld_pdu_llcp_con_param_rsp_unpk(uint16_t pdu_ptr, uint8_t parlen, uint8_t *param); // :660:13
static void lld_pdu_llcp_length_req_unpk(uint16_t pdu_ptr, uint8_t parlen, uint8_t *param); // :711:13
static void lld_pdu_llcp_length_rsp_unpk(uint16_t pdu_ptr, uint8_t parlen, uint8_t *param); // :738:13
static uint8_t lld_pdu_pack(uint8_t *p_data, uint8_t *p_length, const char *format); // :854:16
static uint8_t lld_pdu_tx_flush_list(struct co_list *list); // :954:16
bool lld_pdu_check(struct lld_evt_tag *evt); // :996:5
void lld_pdu_tx_loop(struct lld_evt_tag *evt); // :1182:6
void lld_pdu_data_tx_push(struct lld_evt_tag *evt, struct em_desc_node *txnode, bool can_be_freed, bool encrypted); // :1199:6
bool lld_pdu_data_send(void *param); // :1251:5
void lld_pdu_tx_push(struct ea_elt_tag *elt, struct em_desc_node *txnode); // :1278:6
void lld_pdu_tx_prog(struct lld_evt_tag *evt); // :1311:6
void lld_pdu_tx_flush(struct lld_evt_tag *evt); // :1558:6
uint8_t lld_pdu_adv_pack(uint8_t code, uint8_t *buf, uint8_t *p_len); // :1596:9
void lld_pdu_rx_handler(struct lld_evt_tag *evt, uint8_t nb_rx_desc); // :1677:6

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/lld/lld_pdu.h ======== */

struct lld_pdu_data_tx_tag {
    struct co_list_hdr hdr;
    uint16_t idx;
    uint16_t conhdl;
    uint16_t length;
    uint8_t pb_bc_flag;
    struct em_buf_node *buf;
}; // :45:8

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/lld/lld_sleep.c ======== */

struct lld_sleep_env_tag {
    uint32_t irq_mask;
    int32_t last_sleep_dur;
    bool sw_wakeup;
    bool pds_reset;
    uint32_t basetimecnt;
    uint32_t finetimecnt;
}; // :44:8

static struct lld_sleep_env_tag lld_sleep_env; // :68:33

uint32_t lld_sleep_get_pds_reset(void); // :391:10
void lld_sleep_set_current_time(void); // :396:6

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/lld/lld_util.c ======== */

uint16_t lld_util_instant_get(void *event, uint8_t action); // :54:10
void lld_util_get_bd_address(struct bd_addr *bd_addr); // :80:6
void lld_util_set_bd_address(struct bd_addr *bd_addr, uint8_t type); // :87:6
uint8_t lld_util_freq2chnl(uint8_t freq); // :122:9
uint16_t lld_util_get_local_offset(uint16_t PeerOffset, uint16_t Interval, uint32_t AnchorPoint); // :160:10
uint16_t lld_util_get_peer_offset(uint16_t LocalOffset, uint16_t Interval, uint32_t AnchorPoint); // :169:10
void lld_util_connection_param_set(struct ea_elt_tag *elt, struct ea_param_output *param); // :178:6
void lld_util_dle_set_cs_fields(uint16_t conhdl); // :217:6
void lld_util_anchor_point_move(struct ea_elt_tag *elt_connect); // :224:6
void lld_util_flush_list(struct co_list *list); // :271:6
bool lld_util_instant_ongoing(struct ea_elt_tag *elt); // :288:5
void lld_util_compute_ce_max(struct ea_elt_tag *elt, uint16_t tx_time, uint16_t rx_time); // :294:6
bool lld_util_elt_programmed(struct ea_elt_tag *elt); // :428:5
void lld_util_priority_set(struct ea_elt_tag *elt, uint8_t priority_index); // :442:6
void lld_util_priority_update(struct ea_elt_tag *elt, uint8_t value); // :528:6
uint8_t lld_util_get_tx_pkt_cnt(struct ea_elt_tag *elt); // :537:9
void lld_util_eff_tx_time_set(struct ea_elt_tag *elt, uint16_t max_tx_time, uint16_t max_tx_size); // :546:6

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/lld/lld_util.h ======== */

enum lld_util_instant_action {
    LLD_UTIL_NO_ACTION = 0,
    LLD_UTIL_PARAM_UPDATE = 1,
    LLD_UTIL_CHMAP_UPDATE = 2,
}; // :48:6

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/lld/lld_wlcoex.c ======== */

void lld_wlcoex_set(bool en); // :38:6
void coex_dump_ble(void); // :124:6

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/llm/llm.c ======== */

struct llm_le_env_tag llm_le_env; // :82:23
static const struct bd_addr llm_dflt_bdaddr; // :89:29
const struct supp_cmds llm_local_cmds; // :92:24
uint8_t llm_local_supp_feats[3]; // :102:9
const struct le_features llm_local_le_feats; // :140:26
const struct le_states llm_local_le_states; // :145:24
const struct data_len_ext llm_local_data_len_values; // :152:27
static const struct ke_task_desc TASK_DESC_LLM; // :158:34

static void llm_wlpub_addr_set(uint16_t elem_index, const struct bd_addr *bdaddr); // :166:13
static void llm_wlpriv_addr_set(uint16_t elem_index, const struct bd_addr *bdaddr); // :175:13
void llm_init(bool reset); // :560:6
void llm_ble_ready(void); // :803:6
void llm_con_req_ind(uint8_t rx_hdl, uint16_t status); // :810:6
void llm_le_adv_report_ind(uint8_t rx_hdl); // :920:6
void llm_con_req_tx_cfm(uint8_t rx_hdl); // :1214:6
void llm_common_cmd_complete_send(uint16_t opcode, uint8_t status); // :1309:6
void llm_common_cmd_status_send(uint16_t opcode, uint8_t status); // :1319:6
uint8_t llm_test_mode_start_tx(const struct hci_le_tx_test_cmd *param); // :1331:9
uint8_t llm_test_mode_start_rx(const struct hci_le_rx_test_cmd *param); // :1418:9
uint8_t llm_set_adv_param(const struct hci_le_set_adv_param_cmd *param); // :1572:9
uint8_t llm_set_adv_en(const struct hci_le_set_adv_en_cmd *param); // :1702:9
uint8_t llm_set_adv_data(const struct hci_le_set_adv_data_cmd *param); // :1864:9
uint8_t llm_set_scan_rsp_data(const struct hci_le_set_scan_rsp_data_cmd *param); // :1891:9
uint8_t llm_set_scan_param(const struct hci_le_set_scan_param_cmd *param); // :3179:9
uint8_t llm_set_scan_en(const struct hci_le_set_scan_en_cmd *param); // :3238:9
void llm_wl_clr(void); // :3576:6
void llm_wl_dev_add(struct bd_addr *bd_addr, uint8_t bd_addr_type); // :3603:6
void llm_wl_dev_rem(struct bd_addr *bd_addr, uint8_t bd_addr_type); // :3623:6
uint8_t llm_wl_dev_add_hdl(struct bd_addr *bd_addr, uint8_t bd_addr_type); // :3645:9
uint8_t llm_wl_dev_rem_hdl(struct bd_addr *bd_addr, uint8_t bd_addr_type); // :3700:9
uint8_t llm_create_con(const struct hci_le_create_con_cmd *param); // :3745:9
void llm_encryption_done(void); // :3888:6
void llm_encryption_start(const struct llm_enc_req *param); // :3958:6

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/llm/llm.h ======== */

enum llm_enh_priv {
    LLM_PRIV_RFU_MASK = 140,
    LLM_PRIV_RFU_LSB = 2,
    LLM_RPA_RENEW_TIMER_EN_MASK = 2,
    LLM_RPA_RENEW_TIMER_EN_LSB = 1,
    LLM_PRIV_ENABLE_MASK = 1,
    LLM_PRIV_ENABLE_LSB = 0,
}; // :74:6

struct advertising_pdu_params {
    struct ke_msg *adv_data_req;
    struct ke_msg *scan_rsp_req;
    struct em_buf_node *adv_desc_node;
    struct em_buf_node *scan_rsp_desc_node;
    struct bd_addr peer_addr;
    uint16_t intervalmin;
    uint16_t intervalmax;
    uint8_t channelmap;
    uint8_t filterpolicy;
    uint8_t type;
    uint8_t datalen;
    uint8_t scanrsplen;
    uint8_t own_addr_type;
    uint8_t peer_addr_type;
    bool adv_ldc_flag;
}; // :94:8

struct scanning_pdu_params {
    struct em_buf_node *conn_req_desc_node;
    uint16_t interval;
    uint16_t window;
    uint8_t filterpolicy;
    uint8_t type;
    uint8_t filter_duplicate;
    uint8_t own_addr_type;
}; // :138:8

struct access_addr_gen {
    uint8_t intrand;
    uint8_t ct1_idx;
    uint8_t ct2_idx;
}; // :183:8

struct adv_device_list {
    struct co_list_hdr hdr;
    uint8_t adv_type;
    struct bd_addr adv_addr;
}; // :194:8

struct llm_pdu_adv {
    struct bd_addr adva;
    uint8_t *adva_data;
}; // :215:8

struct llm_pdu_con_req_rx {
    struct bd_addr inita;
    struct bd_addr adva;
    struct access_addr aa;
    struct crc_init crcinit;
    uint8_t winsize;
    uint16_t winoffset;
    uint16_t interval;
    uint16_t latency;
    uint16_t timeout;
    struct le_chnl_map chm;
    uint8_t hop_sca;
}; // :251:8

struct llm_pdu_con_req_tx {
    struct access_addr aa;
    struct crc_init crcinit;
    uint8_t winsize;
    uint16_t winoffset;
    uint16_t interval;
    uint16_t latency;
    uint16_t timeout;
    struct le_chnl_map chm;
    uint8_t hop_sca;
}; // :277:8

struct llm_test_mode {
    bool end_of_tst;
    uint8_t directtesttype;
}; // :324:8

struct data_len_ext {
    uint16_t conn_initial_max_tx_octets;
    uint16_t conn_initial_max_tx_time;
    uint16_t suppted_max_tx_octets;
    uint16_t suppted_max_tx_time;
    uint16_t suppted_max_rx_octets;
    uint16_t suppted_max_rx_time;
}; // :337:8

enum t_key_multiplication_type {
    LLM_ECC_IDLE = 0,
    LLM_PUBLIC_KEY_GENERATION = 1,
    LLM_DHKEY_GENERATION = 2,
}; // :354:14

typedef enum t_key_multiplication_type t_key_multi_type; // :359:3

struct t_public_key256 {
    uint8_t x[32];
    uint8_t y[32];
}; // :361:16

typedef struct t_public_key256 t_public_key256; // :365:3

struct channel_map_assess {
    uint16_t assess_timer;
    int8_t lower_limit;
    int8_t upper_limit;
    int8_t rssi_noise_limit;
    uint8_t reassess_count;
    struct le_chnl_map ch_map;
    bool llm_le_set_host_ch_class_cmd_sto;
}; // :369:8

struct llm_le_env_tag {
    struct co_list enc_req;
    struct co_list adv_list;
    struct scanning_pdu_params *scanning_params;
    struct advertising_pdu_params *advertising_params;
    struct co_list cnx_list;
    struct data_len_ext data_len_val;
    struct channel_map_assess ch_map_assess;
    struct evt_mask eventmask;
    struct access_addr_gen aa;
    uint16_t conhdl_alloc;
    struct ea_elt_tag *elt;
    bool last_opcode;
    uint16_t opcode2;
    uint8_t state2;
    struct ea_elt_tag *elt_coext_scan;
    bool enc_pend;
    struct llm_test_mode test_mode;
    struct bd_addr rand_add;
    struct bd_addr public_add;
    uint16_t enh_priv_rpa_timeout;
    uint16_t p256_byte_process_timeout;
    uint16_t opcode;
    uint8_t state;
    uint8_t enh_priv_info;
    uint8_t curr_addr_type;
    uint8_t nb_dev_in_wl;
    uint8_t nb_dev_in_hw_wl;
    t_public_key256 public_key256;
    uint8_t secret_key256[32];
    t_key_multi_type cur_ecc_multiplication;
}; // :406:8

const struct supp_cmds llm_local_cmds; // :558:31
uint8_t llm_local_supp_feats[3]; // :559:16
const struct le_features llm_local_le_feats; // :560:33
const struct le_states llm_local_le_states; // :561:31
const struct data_len_ext llm_local_data_len_values; // :563:34
struct llm_le_env_tag llm_le_env; // :779:30

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/llm/llm_hci.c ======== */

static int hci_le_set_evt_mask_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_evt_mask_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :89:12
static int hci_le_set_rand_add_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_rand_addr_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :115:12
static int hci_le_set_adv_param_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_adv_param_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :212:12
static int hci_le_rd_trans_pwr_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1098:12

uint16_t g_rf_txpath_compensation_value; // :1117:10
uint16_t g_rf_rxpath_compensation_value; // :1118:10

static int hci_le_rd_rfpath_compensation_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1119:12
static int hci_le_wr_rfpath_compensation_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_wr_rfpath_cps_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1138:12
static int hci_le_rd_adv_ch_tx_pw_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1171:1
static int hci_le_set_adv_data_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_adv_data_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1208:12
static int hci_le_set_adv_en_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_adv_en_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1278:1
static int hci_le_set_scan_rsp_data_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_scan_rsp_data_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1395:1
static int hci_le_set_scan_param_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_scan_param_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1473:1
static int hci_le_set_scan_en_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_scan_en_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1519:1
static int hci_le_rx_test_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1652:12
static int hci_le_tx_test_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1707:12
static int hci_le_wl_mngt_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1772:12
static int hci_le_create_con_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_create_con_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1874:12
static int hci_le_create_con_cancel_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :1940:12
static int hci_le_set_host_ch_class_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_host_ch_class_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2012:12
static int hci_le_rd_local_supp_feats_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2075:12
static int hci_le_rd_wl_size_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2111:12
static int hci_le_rd_supp_states_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2145:12
static int hci_le_rd_buff_size_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2179:12
static int hci_le_enc_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_enc_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2214:12
static int hci_le_rand_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2252:12
static int hci_le_test_end_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2287:12
static int hci_reset_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2337:12
static int hci_rd_bd_addr_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2363:12
static int hci_rd_local_ver_info_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2393:12
static int hci_rd_local_supp_cmds_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2431:12
static int hci_rd_local_supp_feats_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2464:12
static int hci_wr_le_host_supp_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2481:12
static int hci_set_evt_mask_cmd_handler(const ke_msg_id_t msgid, const struct hci_set_evt_mask_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2503:12
static int hci_set_evt_mask_page_2_cmd_handler(const ke_msg_id_t msgid, const struct hci_set_evt_mask_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2529:12
static int hci_set_ctrl_to_host_flow_ctrl_cmd_handler(const ke_msg_id_t msgid, const struct hci_set_ctrl_to_host_flow_ctrl_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2556:12
static int hci_host_buf_size_cmd_handler(const ke_msg_id_t msgid, const struct hci_host_buf_size_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2605:12
static int hci_host_nb_cmp_pkts_cmd_handler(const ke_msg_id_t msgid, const struct hci_host_nb_cmp_pkts_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2631:12
static int hci_rd_buff_size_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2683:12
static int hci_le_rd_suggted_dft_data_len_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2724:12
static int hci_le_wr_suggted_dft_data_len_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_wr_suggted_dft_data_len_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2754:12
static int hci_le_rd_max_data_len_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :2807:12
static int hci_le_rd_local_p256_public_key_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :3045:12
static int hci_le_generate_dhkey_cmd_handler(const ke_msg_id_t msgid, struct hci_le_generate_dh_key_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :3111:12
static int hci_vsc_set_tx_pwr(const ke_msg_id_t msgid, struct hci_vsc_set_tx_pwr_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :3226:12

static const struct ke_msg_handler llm_hci_command_handler_tab[45]; // :3246:36

int hci_command_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :3390:5

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/llm/llm_task.c ======== */

static int llm_enc_req_handler(const ke_msg_id_t msgid, const struct llm_enc_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :85:12
static int llm_ecc_result_ind_handler(const ke_msg_id_t msgid, const struct ecc_result_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :120:12
static int lld_stop_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :236:12
static int llm_dft_handler(const ke_msg_id_t msgid, void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :406:12
static int llm_le_set_host_ch_class_cmd_sto_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :429:12

static const struct ke_msg_handler llm_default_state[7]; // :462:36
const struct ke_state_handler llm_default_handler; // :491:31
ke_state_t llm_state[1]; // :494:12

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/llm/llm_task.h ======== */

enum llm_state_id {
    LLM_ADV_STATE_MASK = 240,
    LLM_SCAN_INIT_STATE_MASK = 15,
    LLM_COEXT_IDLE_IDLE = 0,
    LLM_COEXT_ADVERTISING_IDLE = 16,
    LLM_COEXT_STOPPING_IDLE = 32,
    LLM_COEXT_IDLE_SCANNING = 1,
    LLM_COEXT_IDLE_INITIATING = 2,
    LLM_COEXT_IDLE_STOPPING = 3,
    LLM_COEXT_ADVERTISING_SCANNING = 17,
    LLM_COEXT_ADVERTISING_INITIATING = 18,
    LLM_COEXT_ADVERTISING_STOPPING = 19,
    LLM_COEXT_STOPPING_SCANNING = 33,
    LLM_COEXT_STOPPING_INITIATING = 34,
    LLM_COEXT_STOPPING_STOPPING = 35,
    LLM_TEST = 36,
    LLM_STATE_MAX = 37,
}; // :53:6

enum llm_msg_id {
    LLM_LE_SET_HOST_CH_CLASS_CMD_STO = 0,
    LLM_STOP_IND = 1,
    LLM_LE_SET_HOST_CH_CLASS_REQ = 2,
    LLM_LE_SET_HOST_CH_CLASS_REQ_IND = 3,
    LLM_ENC_REQ = 4,
    LLM_ENC_IND = 5,
    LLM_ECC_RESULT_IND = 6,
    LLM_LE_CHNL_ASSESS_TIMER = 7,
    LLM_GEN_CHNL_CLS_CMD = 8,
    LLM_LE_ENH_PRIV_ADDR_RENEW_TIMER = 9,
}; // :121:6

struct llm_enc_req {
    struct ltk key;
    uint8_t plain_data[16];
}; // :171:8

struct llm_enc_ind {
    uint8_t status;
    uint8_t encrypted_data[16];
}; // :180:8

const struct ke_state_handler llm_default_handler; // :192:38
ke_state_t llm_state[1]; // :193:19

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/llm/llm_util.c ======== */

const uint8_t LLM_AA_CT1[3]; // :48:15
const uint8_t LLM_AA_CT2[2]; // :51:15

struct llm_util_cnx_bd_addr_tag {
    struct co_list_hdr hdr;
    struct bd_addr dev_addr;
    uint16_t conhdl;
    uint8_t dev_addr_type;
    bool in_wl;
}; // :59:8

uint16_t llm_util_bd_addr_wl_position(const struct bd_addr *bd_address, uint8_t bd_addr_type); // :79:10
bool llm_util_bd_addr_in_wl(const struct bd_addr *bd_address, uint8_t bd_addr_type, bool *in_black_list); // :120:5
uint8_t llm_util_check_address_validity(struct bd_addr *bd_address, uint8_t addr_type); // :158:9
uint8_t llm_util_check_map_validity(uint8_t *channel_map, uint8_t nb_octet); // :177:9
void llm_util_apply_bd_addr(uint8_t addr_type); // :217:6
void llm_util_set_public_addr(struct bd_addr *bd_addr); // :257:6
bool llm_util_check_evt_mask(uint8_t event_id); // :269:5
void llm_util_get_channel_map(struct le_chnl_map *map); // :274:6
void llm_util_get_supp_features(struct le_features *feats); // :282:6
void llm_util_adv_data_update(void); // :288:6
uint8_t llm_util_bl_check(const struct bd_addr *bd_addr_to_add, uint8_t bd_addr_type, uint16_t *conhdl, uint8_t wl_flag_action, bool *in_wl); // :361:9
uint8_t llm_util_bl_add(struct bd_addr *bd_addr_to_add, uint8_t bd_addr_type, uint16_t conhdl); // :403:9
uint8_t llm_util_bl_rem(uint16_t conhdl); // :442:9
void llm_end_evt_defer(void); // :524:6
bool llm_pdu_defer(uint16_t status, uint8_t rx_hdl, uint8_t tx_cnt); // :580:5

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/llm/llm_util.h ======== */

const uint8_t LLM_AA_CT1[3]; // :72:22
const uint8_t LLM_AA_CT2[2]; // :75:22

enum bl_flag_wl {
    LLM_UTIL_BL_NO_ACTION_WL = 0,
    LLM_UTIL_BL_CLEAR_WL = 1,
    LLM_UTIL_BL_SET_WL = 2,
}; // :77:6

uint8_t orig_rxsyncwinszdef; // :582:16
uint8_t orig_rfrxtmda; // :583:16

/* ======== components/network/ble/blecontroller/ip/ble/ll/src/rwble/rwble.c ======== */

void rwble_init(void); // :87:6
void rwble_reset(void); // :117:6
bool rwble_sleep_check(void); // :158:5
bool rwble_activity_ongoing_check(void); // :164:5
void rwble_version(uint8_t *fw_version, uint8_t *hw_version); // :175:6
void rwble_isr_clear(void); // :193:6
void rwble_isr(void); // :202:6

/* ======== components/network/ble/blecontroller/ip/ea/api/ea.h ======== */

enum ea_error {
    EA_ERROR_OK = 0,
    EA_ERROR_REJECTED = 1,
    EA_ERROR_NOT_FOUND = 2,
    EA_ERROR_BW_FULL = 3,
}; // :83:6

enum ea_param_req_action {
    EA_PARAM_REQ_GET = 0,
    EA_PARAM_REQ_CHECK = 1,
}; // :96:6

enum ea_elt_asap_type {
    EA_FLAG_NO_ASAP = 0,
    EA_FLAG_ASAP_NO_LIMIT = 1,
    EA_FLAG_ASAP_LIMIT = 2,
    EA_FLAG_MAX = 3,
}; // :103:6

enum ea_elt_asap_parity {
    EA_EVEN_SLOT = 0,
    EA_ODD_SLOT = 1,
    EA_NO_PARITY = 2,
}; // :115:6

struct ea_elt_tag {
    struct co_list_hdr hdr;
    struct ea_elt_tag *linked_element;
    uint32_t timestamp;
    uint32_t asap_limit;
    uint16_t asap_settings;
    uint16_t duration_min;
    uint16_t delay;
    uint8_t current_prio;
    uint8_t stop_latency1;
    uint8_t stop_latency2;
    uint8_t start_latency;
    void (*ea_cb_start)(struct ea_elt_tag *);
    void (*ea_cb_stop)(struct ea_elt_tag *);
    void (*ea_cb_cancel)(struct ea_elt_tag *);
    void *env;
}; // :130:8

struct ea_interval_tag {
    struct co_list_hdr hdr;
    uint16_t interval_used;
    uint16_t offset_used;
    uint16_t bandwidth_used;
    uint16_t conhdl_used;
    uint16_t role_used;
    uint16_t linkid;
}; // :217:8

struct ea_param_input {
    uint16_t interval_min;
    uint16_t interval_max;
    uint32_t duration_min;
    uint16_t duration_max;
    uint8_t pref_period;
    uint16_t offset;
    uint8_t action;
    uint16_t conhdl;
    uint16_t role;
    bool odd_offset;
    uint16_t linkid;
}; // :236:8

struct ea_param_output {
    uint16_t interval;
    uint32_t duration;
    uint16_t offset;
}; // :263:8

/* ======== components/network/ble/blecontroller/ip/ea/src/ea.c ======== */

enum ea_conflict {
    START_BEFORE_END_BEFORE = 0,
    START_BEFORE_END_DURING = 1,
    START_BEFORE_END_AFTER = 2,
    START_DURING_END_DURING = 3,
    START_DURING_END_AFTER = 4,
    START_AFTER_END_AFTER = 5,
}; // :81:6

struct ea_env_tag {
    struct co_list elt_wait;
    struct ea_elt_tag *elt_prog;
    struct co_list elt_canceled;
    struct co_list interval_list;
    uint32_t finetarget_time;
}; // :97:8

static struct ea_env_tag ea_env; // :122:26

static uint8_t ea_conflict_check(struct ea_elt_tag *evt_a, struct ea_elt_tag *evt_b); // :147:16
void ea_elt_cancel(struct ea_elt_tag *new_elt); // :268:6
static void ea_prog_timer(void); // :418:13
void ea_init(bool reset); // :555:6
struct ea_elt_tag *ea_elt_create(uint16_t size_of_env); // :569:20
uint8_t ea_elt_insert(struct ea_elt_tag *elt); // :592:9
uint8_t ea_elt_remove(struct ea_elt_tag *elt); // :980:9
struct ea_interval_tag *ea_interval_create(void); // :1030:25
void ea_interval_insert(struct ea_interval_tag *interval_to_add); // :1037:6
void ea_interval_remove(struct ea_interval_tag *interval_to_remove); // :1042:6
void ea_interval_delete(struct ea_interval_tag *interval_to_remove); // :1048:6
void ea_finetimer_isr(void); // :1059:6
void ea_sw_isr(void); // :1189:6
uint8_t ea_offset_req(struct ea_param_input *input_param, struct ea_param_output *output_param); // :1207:9
uint32_t ea_time_get_halfslot_rounded(void); // :1321:10
uint32_t ea_time_get_slot_rounded(void); // :1340:10
uint32_t ea_timer_target_get(uint32_t current_time); // :1360:10
void ea_interval_duration_req(struct ea_param_input *input_param, struct ea_param_output *output_param); // :1379:6

/* ======== components/network/ble/blecontroller/ip/hci/api/hci.h ======== */

enum HCI_MSG {
    HCI_MSG_ID_FIRST = 2048,
    HCI_CMD_CMP_EVENT = 2049,
    HCI_CMD_STAT_EVENT = 2050,
    HCI_EVENT = 2051,
    HCI_LE_EVENT = 2052,
    HCI_COMMAND = 2053,
    HCI_ACL_DATA_RX = 2054,
    HCI_ACL_DATA_TX = 2055,
    HCI_TCI_LMP = 2056,
    HCI_DBG_EVT = 2057,
    HCI_MSG_ID_LAST = 2058,
}; // :80:6

/* ======== components/network/ble/blecontroller/ip/hci/src/hci.c ======== */

static const struct evt_mask hci_def_evt_msk; // :76:30
static const struct evt_mask hci_rsvd_evt_msk; // :79:30
struct hci_env_tag hci_env; // :88:20

void hci_init(void); // :721:6
void hci_reset(void); // :737:6
void hci_send_2_host(void *param); // :755:6
void hci_send_2_controller(void *param); // :979:6
uint8_t hci_evt_mask_set(const struct evt_mask *evt_msk, uint8_t page); // :1128:9

/* ======== components/network/ble/blecontroller/ip/hci/src/hci_fc.c ======== */

struct host_set_fc {
    bool acl_flow_cntl_en;
    uint16_t acl_pkt_len;
    uint16_t acl_pkt_nb;
    uint16_t curr_pkt_nb;
}; // :67:8

struct counter_fc {
    uint16_t acl_pkt_sent;
}; // :90:8

struct hci_fc_tag {
    struct host_set_fc host_set;
    struct counter_fc cntr;
}; // :102:8

struct hci_fc_tag hci_fc_env; // :122:19

void hci_fc_acl_packet_sent(void); // :236:6
void hci_fc_host_nb_acl_pkts_complete(uint16_t acl_pkt_nb); // :256:6
uint16_t hci_fc_check_host_available_nb_acl_packets(void); // :284:10

/* ======== components/network/ble/blecontroller/ip/hci/src/hci_int.h ======== */

enum HCI_MSG_DEST_LL {
    MNG = 0,
    CTRL = 1,
    BLE_MNG = 2,
    BLE_CTRL = 3,
    BT_MNG = 4,
    BT_CTRL_CONHDL = 5,
    BT_CTRL_BD_ADDR = 6,
    BT_BCST = 7,
    DBG = 8,
    LL_UNDEF = 9,
}; // :122:6

enum HCI_MSG_DEST_HL {
    HL_MNG = 0,
    HL_CTRL = 1,
    HL_DATA = 2,
    HL_AM0 = 3,
    HL_UNDEF = 4,
}; // :137:6

enum HCI_PACK_STATUS {
    HCI_PACK_OK = 0,
    HCI_PACK_IN_BUF_OVFLW = 1,
    HCI_PACK_OUT_BUF_OVFLW = 2,
    HCI_PACK_WRONG_FORMAT = 3,
    HCI_PACK_ERROR = 4,
}; // :148:6

struct hci_cmd_desc_tab_ref {
    uint8_t ogf;
    uint16_t nb_cmds;
    const struct hci_cmd_desc_tag *cmd_desc_tab;
}; // :178:8

struct hci_cmd_desc_tag {
    uint16_t opcode;
    uint8_t dest_field;
    uint8_t par_size_max;
    void *par_fmt;
    void *ret_par_fmt;
}; // :191:8

struct hci_evt_desc_tag {
    uint8_t code;
    uint8_t dest_field;
    uint8_t special_pack;
    void *par_fmt;
}; // :212:8

typedef uint16_t (*hci_pkupk_func_t)(uint8_t *, uint8_t *, uint16_t *, uint16_t); // :231:20

struct hci_env_tag {
    struct evt_mask evt_msk;
    struct evt_mask evt_msk_page_2;
}; // :288:8

struct hci_env_tag hci_env; // :339:27

/* ======== components/network/ble/blecontroller/ip/hci/src/hci_msg.c ======== */

const struct hci_cmd_desc_tag hci_cmd_desc_tab_lk_ctrl[3]; // :135:31
const struct hci_cmd_desc_tag hci_cmd_desc_tab_ctrl_bb[10]; // :207:31
const struct hci_cmd_desc_tag hci_cmd_desc_tab_info_par[5]; // :309:31
const struct hci_cmd_desc_tag hci_cmd_desc_tab_stat_par[1]; // :323:31
const struct hci_cmd_desc_tag hci_cmd_desc_tab_le[49]; // :353:31
const struct hci_cmd_desc_tag hci_cmd_desc_tab_vs[4]; // :446:31
const struct hci_cmd_desc_tab_ref hci_cmd_desc_root_tab[6]; // :522:35
const struct hci_evt_desc_tag hci_evt_desc_tab[9]; // :541:31
const struct hci_evt_desc_tag hci_evt_le_desc_tab[12]; // :628:31

static uint8_t hci_pack_bytes(uint8_t **pp_in, uint8_t **pp_out, uint8_t *p_in_end, uint8_t *p_out_end, uint8_t len); // :679:16
static uint8_t hci_host_nb_cmp_pkts_cmd_pkupk(uint8_t *out, uint8_t *in, uint16_t *out_len, uint16_t in_len); // :710:16
static uint8_t hci_le_adv_report_evt_pkupk(uint8_t *out, uint8_t *in, uint16_t *out_len, uint16_t in_len); // :1557:16
static uint8_t hci_le_dir_adv_report_evt_pkupk(uint8_t *out, uint8_t *in, uint16_t *out_len, uint16_t in_len); // :1849:16
const struct hci_cmd_desc_tag *hci_look_for_cmd_desc(uint16_t opcode); // :2584:32
const struct hci_evt_desc_tag *hci_look_for_evt_desc(uint8_t code); // :2637:32
const struct hci_evt_desc_tag *hci_look_for_le_evt_desc(uint8_t subcode); // :2687:32

/* ======== components/network/ble/blecontroller/ip/hci/src/hci_onchip.c ======== */

static bt_hci_recv_cb hci_rx_cb; // :22:23
static const struct ke_msg_handler hci_onchip_default_state[5]; // :26:36
const struct ke_state_handler hci_onchip_default_handler; // :35:31
static const struct ke_task_desc TASK_DESC_HCI_ONCHIP; // :36:34

uint8_t bt_onchiphci_interface_init(bt_hci_recv_cb cb); // :38:9
int bt_onchiphci_send(uint8_t pkt_type, ke_task_id_t dest_id, hci_pkt_struct *pkt); // :44:5
static int bt_hcionchip_recv(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :144:12
uint8_t bt_onchiphci_hanlde_rx_acl(void *param, uint8_t *host_buf_data); // :191:9

/* ======== components/network/ble/blecontroller/ip/hci/src/hci_tl.c ======== */

enum HCI_TX_STATE {
    HCI_STATE_TX_ONGOING = 0,
    HCI_STATE_TX_IDLE = 1,
}; // :92:6

struct hci_tl_env_tag {
    struct co_list tx_queue;
    struct co_list acl_queue;
    struct ke_msg *curr_tx_msg;
    struct em_buf_node *txtag;
    uint8_t tx_state;
    int8_t nb_h2c_cmd_pkts;
}; // :107:8

static struct hci_tl_env_tag hci_tl_env; // :154:30

void hci_tl_send(struct ke_msg *msg); // :1221:6
void hci_tl_init(bool reset); // :1272:6
uint8_t hci_cmd_get_max_param_size(uint16_t opcode); // :1303:9
void hci_cmd_received(uint16_t opcode, uint8_t length, uint8_t *payload); // :1319:6
uint8_t *hci_acl_tx_data_alloc(uint16_t hdl_flags, uint16_t len); // :1530:10
void hci_acl_tx_data_received(uint16_t hdl_flags, uint16_t datalen, uint8_t *payload); // :1634:6

/* ======== components/network/ble/blecontroller/ip/hci/src/hci_util.c ======== */

static uint16_t hci_util_read_array_size(char **fmt_cursor); // :69:17
enum HCI_PACK_STATUS hci_util_pack(uint8_t *inout, uint16_t *inout_len, const char *format); // :95:22
enum HCI_PACK_STATUS hci_util_unpack(uint8_t *out, uint8_t *in, uint16_t *out_len, uint16_t in_len, const char *format); // :226:22
uint8_t *hci_build_cc_evt(struct ke_msg *msg, int8_t nb_h2c_cmd_pkts); // :392:10
uint8_t *hci_build_evt(struct ke_msg *msg); // :463:10
uint8_t *hci_build_le_evt(struct ke_msg *msg); // :525:10
uint8_t *hci_build_acl_rx_data(struct ke_msg *msg); // :592:10

/* ======== components/network/ble/blecontroller/modules/common/api/co_bt_defines.h ======== */

enum le_evt_mask {
    LE_CON_CMP_EVT_BIT = 0,
    LE_CON_CMP_EVT_MSK = 1,
    LE_ADV_REP_EVT_BIT = 1,
    LE_ADV_REP_EVT_MSK = 2,
    LE_CON_UPD_EVT_BIT = 2,
    LE_CON_UPD_EVT_MSK = 4,
    LE_CON_RD_REM_FEAT_EVT_BIT = 3,
    LE_CON_RD_REM_FEAT_EVT_MSK = 8,
    LE_LG_TR_KEY_REQ_EVT_BIT = 4,
    LE_LG_TR_KEY_REQ_EVT_MSK = 16,
    LE_REM_CON_PARA_REQ_EVT_BIT = 5,
    LE_REM_CON_PARA_REQ_EVT_MSK = 32,
    LE_DATA_LEN_CHG_EVT_BIT = 6,
    LE_DATA_LEN_CHG_EVT_MSK = 64,
    LE_RD_LOC_P256_PUB_KEY_CMP_EVT_BIT = 7,
    LE_RD_LOC_P256_PUB_KEY_CMP_EVT_MSK = 128,
    LE_GEN_DHKEY_CMP_EVT_BIT = 8,
    LE_GEN_DHKEY_CMP_EVT_MSK = 256,
    LE_ENH_CON_CMP_EVT_BIT = 9,
    LE_ENH_CON_CMP_EVT_MSK = 512,
    LE_DIR_ADV_REP_EVT_BIT = 10,
    LE_DIR_ADV_REP_EVT_MSK = 1024,
    LE_PHY_UPD_CMP_EVT_BIT = 11,
    LE_PHY_UPD_CMP_EVT_MSK = 2048,
    LE_EXT_ADV_REP_EVT_BIT = 12,
    LE_EXT_ADV_REP_EVT_MSK = 4096,
    LE_PER_ADV_SYNC_EST_EVT_BIT = 13,
    LE_PER_ADV_SYNC_EST_EVT_MSK = 8192,
    LE_PER_ADV_REP_EVT_BIT = 14,
    LE_PER_ADV_REP_EVT_MSK = 16384,
    LE_PER_ADV_SYNC_LOST_EVT_BIT = 15,
    LE_PER_ADV_SYNC_LOST_EVT_MSK = 32768,
    LE_EXT_SCAN_TO_EVT_BIT = 16,
    LE_EXT_SCAN_TO_EVT_MSK = 65536,
    LE_EXT_ADV_SET_TER_EVT_BIT = 17,
    LE_EXT_ADV_SET_TER_EVT_MSK = 131072,
    LE_SCAN_REQ_REC_EVT_BIT = 18,
    LE_SCAN_REQ_REC_EVT_MSK = 262144,
    LE_CH_SEL_ALGO_EVT_BIT = 19,
    LE_CH_SEL_ALGO_EVT_MSK = 524288,
    LE_DFT_EVT_MSK = 31,
}; // :1330:6

enum rnd_addr_type {
    RND_STATIC_ADDR = 192,
    RND_NON_RSLV_ADDR = 0,
    RND_RSLV_ADDR = 64,
}; // :1646:6

enum adv_channel_map {
    ADV_CHNL_37_EN = 1,
    ADV_CHNL_38_EN = 2,
    ADV_CHNL_39_EN = 4,
    ADV_ALL_CHNLS_EN = 7,
    ADV_CHNL_END = 8,
}; // :1657:6

enum adv_filter_policy {
    ADV_ALLOW_SCAN_ANY_CON_ANY = 0,
    ADV_ALLOW_SCAN_WLST_CON_ANY = 1,
    ADV_ALLOW_SCAN_ANY_CON_WLST = 2,
    ADV_ALLOW_SCAN_WLST_CON_WLST = 3,
    ADV_ALLOW_SCAN_END = 4,
}; // :1672:6

enum scan_filter_policy {
    SCAN_ALLOW_ADV_ALL = 0,
    SCAN_ALLOW_ADV_WLST = 1,
    SCAN_ALLOW_ADV_ALL_AND_INIT_RPA = 2,
    SCAN_ALLOW_ADV_WLST_AND_INIT_RPA = 3,
    SCAN_ALLOW_ADV_END = 4,
}; // :1709:6

enum scan_dup_filter_policy {
    SCAN_FILT_DUPLIC_DIS = 0,
    SCAN_FILT_DUPLIC_EN = 1,
    SCAN_FILT_DUPLIC_END = 2,
}; // :1735:6

struct evt_mask {
    uint8_t mask[8];
}; // :1928:8

struct bd_addr {
    uint8_t addr[6];
}; // :1944:8

struct back_packet_info {
    uint8_t used;
    uint8_t advmode_headlen;
    uint8_t head_flags;
    struct bd_addr adva_addr;
    struct bd_addr targeta_addr;
    uint16_t adi;
    uint8_t auxptr[3];
    uint8_t syncinfo[18];
    uint8_t txpwr;
    uint8_t datalen;
    uint8_t data[255];
}; // :1951:8

struct access_addr {
    uint8_t addr[4];
}; // :1968:8

struct adv_data {
    uint8_t data[31];
}; // :1975:8

struct scan_rsp_data {
    uint8_t data[31];
}; // :1988:8

struct le_chnl_map {
    uint8_t map[5];
}; // :2010:8

struct ltk {
    uint8_t ltk[16];
}; // :2017:8

struct rand_nb {
    uint8_t nb[8];
}; // :2047:8

struct adv_report {
    uint8_t evt_type;
    uint8_t adv_addr_type;
    struct bd_addr adv_addr;
    uint8_t data_len;
    uint8_t data[31];
    uint8_t rssi;
}; // :2054:8

struct dir_adv_report {
    uint8_t evt_type;
    uint8_t addr_type;
    struct bd_addr addr;
    uint8_t dir_addr_type;
    struct bd_addr dir_addr;
    uint8_t rssi;
}; // :2111:8

struct le_features {
    uint8_t feats[8];
}; // :2129:8

struct features {
    uint8_t feats[8];
}; // :2186:8

struct supp_cmds {
    uint8_t cmds[64];
}; // :2193:8

struct le_states {
    uint8_t supp_states[8];
}; // :2248:8

struct crc_init {
    uint8_t crc[3];
}; // :2264:8

struct sess_k_div_x {
    uint8_t skdiv[8];
}; // :2271:8

struct sess_k_div {
    uint8_t skd[16];
}; // :2278:8

struct init_vect {
    uint8_t iv[4];
}; // :2285:8

struct t_public_key {
    uint8_t x[32];
    uint8_t y[32];
}; // :2291:16

typedef struct t_public_key t_public_key; // :2296:3

/* ======== components/network/ble/blecontroller/modules/common/api/co_error.h ======== */

enum co_error {
    CO_ERROR_NO_ERROR = 0,
    CO_ERROR_UNKNOWN_HCI_COMMAND = 1,
    CO_ERROR_UNKNOWN_CONNECTION_ID = 2,
    CO_ERROR_HARDWARE_FAILURE = 3,
    CO_ERROR_PAGE_TIMEOUT = 4,
    CO_ERROR_AUTH_FAILURE = 5,
    CO_ERROR_PIN_MISSING = 6,
    CO_ERROR_MEMORY_CAPA_EXCEED = 7,
    CO_ERROR_CON_TIMEOUT = 8,
    CO_ERROR_CON_LIMIT_EXCEED = 9,
    CO_ERROR_SYNC_CON_LIMIT_DEV_EXCEED = 10,
    CO_ERROR_ACL_CON_EXISTS = 11,
    CO_ERROR_COMMAND_DISALLOWED = 12,
    CO_ERROR_CONN_REJ_LIMITED_RESOURCES = 13,
    CO_ERROR_CONN_REJ_SECURITY_REASONS = 14,
    CO_ERROR_CONN_REJ_UNACCEPTABLE_BDADDR = 15,
    CO_ERROR_CONN_ACCEPT_TIMEOUT_EXCEED = 16,
    CO_ERROR_UNSUPPORTED = 17,
    CO_ERROR_INVALID_HCI_PARAM = 18,
    CO_ERROR_REMOTE_USER_TERM_CON = 19,
    CO_ERROR_REMOTE_DEV_TERM_LOW_RESOURCES = 20,
    CO_ERROR_REMOTE_DEV_POWER_OFF = 21,
    CO_ERROR_CON_TERM_BY_LOCAL_HOST = 22,
    CO_ERROR_REPEATED_ATTEMPTS = 23,
    CO_ERROR_PAIRING_NOT_ALLOWED = 24,
    CO_ERROR_UNKNOWN_LMP_PDU = 25,
    CO_ERROR_UNSUPPORTED_REMOTE_FEATURE = 26,
    CO_ERROR_SCO_OFFSET_REJECTED = 27,
    CO_ERROR_SCO_INTERVAL_REJECTED = 28,
    CO_ERROR_SCO_AIR_MODE_REJECTED = 29,
    CO_ERROR_INVALID_LMP_PARAM = 30,
    CO_ERROR_UNSPECIFIED_ERROR = 31,
    CO_ERROR_UNSUPPORTED_LMP_PARAM_VALUE = 32,
    CO_ERROR_ROLE_CHANGE_NOT_ALLOWED = 33,
    CO_ERROR_LMP_RSP_TIMEOUT = 34,
    CO_ERROR_LMP_COLLISION = 35,
    CO_ERROR_LMP_PDU_NOT_ALLOWED = 36,
    CO_ERROR_ENC_MODE_NOT_ACCEPT = 37,
    CO_ERROR_LINK_KEY_CANT_CHANGE = 38,
    CO_ERROR_QOS_NOT_SUPPORTED = 39,
    CO_ERROR_INSTANT_PASSED = 40,
    CO_ERROR_PAIRING_WITH_UNIT_KEY_NOT_SUP = 41,
    CO_ERROR_DIFF_TRANSACTION_COLLISION = 42,
    CO_ERROR_QOS_UNACCEPTABLE_PARAM = 44,
    CO_ERROR_QOS_REJECTED = 45,
    CO_ERROR_CHANNEL_CLASS_NOT_SUP = 46,
    CO_ERROR_INSUFFICIENT_SECURITY = 47,
    CO_ERROR_PARAM_OUT_OF_MAND_RANGE = 48,
    CO_ERROR_ROLE_SWITCH_PEND = 50,
    CO_ERROR_RESERVED_SLOT_VIOLATION = 52,
    CO_ERROR_ROLE_SWITCH_FAIL = 53,
    CO_ERROR_EIR_TOO_LARGE = 54,
    CO_ERROR_SP_NOT_SUPPORTED_HOST = 55,
    CO_ERROR_HOST_BUSY_PAIRING = 56,
    CO_ERROR_CONTROLLER_BUSY = 58,
    CO_ERROR_UNACCEPTABLE_CONN_INT = 59,
    CO_ERROR_DIRECT_ADV_TO = 60,
    CO_ERROR_TERMINATED_MIC_FAILURE = 61,
    CO_ERROR_CONN_FAILED_TO_BE_EST = 62,
    CO_ERROR_CCA_REJ_USE_CLOCK_DRAG = 64,
    CO_ERROR_UNKNOW_ADV_ID = 66,
    CO_ERROR_LIMIT_REACHED = 67,
    CO_ERROR_OP_CANCELL_BY_HOST = 68,
    CO_ERROR_UNDEFINED = 255,
    CO_ERROR_HW_UART_OUT_OF_SYNC = 0,
    CO_ERROR_HW_MEM_ALLOC_FAIL = 1,
}; // :31:6

/* ======== components/network/ble/blecontroller/modules/common/api/co_hci.h ======== */

enum hci_opcode {
    HCI_NO_OPERATION_CMD_OPCODE = 0,
    HCI_INQ_CMD_OPCODE = 1025,
    HCI_INQ_CANCEL_CMD_OPCODE = 1026,
    HCI_PER_INQ_MODE_CMD_OPCODE = 1027,
    HCI_EXIT_PER_INQ_MODE_CMD_OPCODE = 1028,
    HCI_CREATE_CON_CMD_OPCODE = 1029,
    HCI_DISCONNECT_CMD_OPCODE = 1030,
    HCI_CREATE_CON_CANCEL_CMD_OPCODE = 1032,
    HCI_ACCEPT_CON_REQ_CMD_OPCODE = 1033,
    HCI_REJECT_CON_REQ_CMD_OPCODE = 1034,
    HCI_LK_REQ_REPLY_CMD_OPCODE = 1035,
    HCI_LK_REQ_NEG_REPLY_CMD_OPCODE = 1036,
    HCI_PIN_CODE_REQ_REPLY_CMD_OPCODE = 1037,
    HCI_PIN_CODE_REQ_NEG_REPLY_CMD_OPCODE = 1038,
    HCI_CHG_CON_PKT_TYPE_CMD_OPCODE = 1039,
    HCI_AUTH_REQ_CMD_OPCODE = 1041,
    HCI_SET_CON_ENC_CMD_OPCODE = 1043,
    HCI_CHG_CON_LK_CMD_OPCODE = 1045,
    HCI_MASTER_LK_CMD_OPCODE = 1047,
    HCI_REM_NAME_REQ_CMD_OPCODE = 1049,
    HCI_REM_NAME_REQ_CANCEL_CMD_OPCODE = 1050,
    HCI_RD_REM_SUPP_FEATS_CMD_OPCODE = 1051,
    HCI_RD_REM_EXT_FEATS_CMD_OPCODE = 1052,
    HCI_RD_REM_VER_INFO_CMD_OPCODE = 1053,
    HCI_RD_CLK_OFF_CMD_OPCODE = 1055,
    HCI_RD_LMP_HDL_CMD_OPCODE = 1056,
    HCI_SETUP_SYNC_CON_CMD_OPCODE = 1064,
    HCI_ACCEPT_SYNC_CON_REQ_CMD_OPCODE = 1065,
    HCI_REJECT_SYNC_CON_REQ_CMD_OPCODE = 1066,
    HCI_IO_CAP_REQ_REPLY_CMD_OPCODE = 1067,
    HCI_USER_CFM_REQ_REPLY_CMD_OPCODE = 1068,
    HCI_USER_CFM_REQ_NEG_REPLY_CMD_OPCODE = 1069,
    HCI_USER_PASSKEY_REQ_REPLY_CMD_OPCODE = 1070,
    HCI_USER_PASSKEY_REQ_NEG_REPLY_CMD_OPCODE = 1071,
    HCI_REM_OOB_DATA_REQ_REPLY_CMD_OPCODE = 1072,
    HCI_REM_OOB_DATA_REQ_NEG_REPLY_CMD_OPCODE = 1075,
    HCI_IO_CAP_REQ_NEG_REPLY_CMD_OPCODE = 1076,
    HCI_ENH_SETUP_SYNC_CON_CMD_OPCODE = 1085,
    HCI_ENH_ACCEPT_SYNC_CON_CMD_OPCODE = 1086,
    HCI_TRUNC_PAGE_CMD_OPCODE = 1087,
    HCI_TRUNC_PAGE_CAN_CMD_OPCODE = 1088,
    HCI_SET_CON_SLV_BCST_CMD_OPCODE = 1089,
    HCI_SET_CON_SLV_BCST_REC_CMD_OPCODE = 1090,
    HCI_START_SYNC_TRAIN_CMD_OPCODE = 1091,
    HCI_REC_SYNC_TRAIN_CMD_OPCODE = 1092,
    HCI_REM_OOB_EXT_DATA_REQ_REPLY_CMD_OPCODE = 1093,
    HCI_HOLD_MODE_CMD_OPCODE = 2049,
    HCI_SNIFF_MODE_CMD_OPCODE = 2051,
    HCI_EXIT_SNIFF_MODE_CMD_OPCODE = 2052,
    HCI_PARK_STATE_CMD_OPCODE = 2053,
    HCI_EXIT_PARK_STATE_CMD_OPCODE = 2054,
    HCI_QOS_SETUP_CMD_OPCODE = 2055,
    HCI_ROLE_DISCOVERY_CMD_OPCODE = 2057,
    HCI_SWITCH_ROLE_CMD_OPCODE = 2059,
    HCI_RD_LINK_POL_STG_CMD_OPCODE = 2060,
    HCI_WR_LINK_POL_STG_CMD_OPCODE = 2061,
    HCI_RD_DFT_LINK_POL_STG_CMD_OPCODE = 2062,
    HCI_WR_DFT_LINK_POL_STG_CMD_OPCODE = 2063,
    HCI_FLOW_SPEC_CMD_OPCODE = 2064,
    HCI_SNIFF_SUB_CMD_OPCODE = 2065,
    HCI_SET_EVT_MASK_CMD_OPCODE = 3073,
    HCI_RESET_CMD_OPCODE = 3075,
    HCI_SET_EVT_FILTER_CMD_OPCODE = 3077,
    HCI_FLUSH_CMD_OPCODE = 3080,
    HCI_RD_PIN_TYPE_CMD_OPCODE = 3081,
    HCI_WR_PIN_TYPE_CMD_OPCODE = 3082,
    HCI_CREATE_NEW_UNIT_KEY_CMD_OPCODE = 3083,
    HCI_RD_STORED_LK_CMD_OPCODE = 3085,
    HCI_WR_STORED_LK_CMD_OPCODE = 3089,
    HCI_DEL_STORED_LK_CMD_OPCODE = 3090,
    HCI_WR_LOCAL_NAME_CMD_OPCODE = 3091,
    HCI_RD_LOCAL_NAME_CMD_OPCODE = 3092,
    HCI_RD_CON_ACCEPT_TO_CMD_OPCODE = 3093,
    HCI_WR_CON_ACCEPT_TO_CMD_OPCODE = 3094,
    HCI_RD_PAGE_TO_CMD_OPCODE = 3095,
    HCI_WR_PAGE_TO_CMD_OPCODE = 3096,
    HCI_RD_SCAN_EN_CMD_OPCODE = 3097,
    HCI_WR_SCAN_EN_CMD_OPCODE = 3098,
    HCI_RD_PAGE_SCAN_ACT_CMD_OPCODE = 3099,
    HCI_WR_PAGE_SCAN_ACT_CMD_OPCODE = 3100,
    HCI_RD_INQ_SCAN_ACT_CMD_OPCODE = 3101,
    HCI_WR_INQ_SCAN_ACT_CMD_OPCODE = 3102,
    HCI_RD_AUTH_EN_CMD_OPCODE = 3103,
    HCI_WR_AUTH_EN_CMD_OPCODE = 3104,
    HCI_RD_CLASS_OF_DEV_CMD_OPCODE = 3107,
    HCI_WR_CLASS_OF_DEV_CMD_OPCODE = 3108,
    HCI_RD_VOICE_STG_CMD_OPCODE = 3109,
    HCI_WR_VOICE_STG_CMD_OPCODE = 3110,
    HCI_RD_AUTO_FLUSH_TO_CMD_OPCODE = 3111,
    HCI_WR_AUTO_FLUSH_TO_CMD_OPCODE = 3112,
    HCI_RD_NB_BDCST_RETX_CMD_OPCODE = 3113,
    HCI_WR_NB_BDCST_RETX_CMD_OPCODE = 3114,
    HCI_RD_HOLD_MODE_ACTIVITY_CMD_OPCODE = 3115,
    HCI_WR_HOLD_MODE_ACTIVITY_CMD_OPCODE = 3116,
    HCI_RD_TX_PWR_LVL_CMD_OPCODE = 3117,
    HCI_RD_SYNC_FLOW_CTRL_EN_CMD_OPCODE = 3118,
    HCI_WR_SYNC_FLOW_CTRL_EN_CMD_OPCODE = 3119,
    HCI_SET_CTRL_TO_HOST_FLOW_CTRL_CMD_OPCODE = 3121,
    HCI_HOST_BUF_SIZE_CMD_OPCODE = 3123,
    HCI_HOST_NB_CMP_PKTS_CMD_OPCODE = 3125,
    HCI_RD_LINK_SUPV_TO_CMD_OPCODE = 3126,
    HCI_WR_LINK_SUPV_TO_CMD_OPCODE = 3127,
    HCI_RD_NB_SUPP_IAC_CMD_OPCODE = 3128,
    HCI_RD_CURR_IAC_LAP_CMD_OPCODE = 3129,
    HCI_WR_CURR_IAC_LAP_CMD_OPCODE = 3130,
    HCI_SET_AFH_HOST_CH_CLASS_CMD_OPCODE = 3135,
    HCI_RD_INQ_SCAN_TYPE_CMD_OPCODE = 3138,
    HCI_WR_INQ_SCAN_TYPE_CMD_OPCODE = 3139,
    HCI_RD_INQ_MODE_CMD_OPCODE = 3140,
    HCI_WR_INQ_MODE_CMD_OPCODE = 3141,
    HCI_RD_PAGE_SCAN_TYPE_CMD_OPCODE = 3142,
    HCI_WR_PAGE_SCAN_TYPE_CMD_OPCODE = 3143,
    HCI_RD_AFH_CH_ASSESS_MODE_CMD_OPCODE = 3144,
    HCI_WR_AFH_CH_ASSESS_MODE_CMD_OPCODE = 3145,
    HCI_RD_EXT_INQ_RSP_CMD_OPCODE = 3153,
    HCI_WR_EXT_INQ_RSP_CMD_OPCODE = 3154,
    HCI_REFRESH_ENC_KEY_CMD_OPCODE = 3155,
    HCI_RD_SP_MODE_CMD_OPCODE = 3157,
    HCI_WR_SP_MODE_CMD_OPCODE = 3158,
    HCI_RD_LOC_OOB_DATA_CMD_OPCODE = 3159,
    HCI_RD_INQ_RSP_TX_PWR_LVL_CMD_OPCODE = 3160,
    HCI_WR_INQ_TX_PWR_LVL_CMD_OPCODE = 3161,
    HCI_RD_DFT_ERR_DATA_REP_CMD_OPCODE = 3162,
    HCI_WR_DFT_ERR_DATA_REP_CMD_OPCODE = 3163,
    HCI_ENH_FLUSH_CMD_OPCODE = 3167,
    HCI_SEND_KEYPRESS_NOTIF_CMD_OPCODE = 3168,
    HCI_SET_EVT_MASK_PAGE_2_CMD_OPCODE = 3171,
    HCI_RD_FLOW_CNTL_MODE_CMD_OPCODE = 3174,
    HCI_WR_FLOW_CNTL_MODE_CMD_OPCODE = 3175,
    HCI_RD_ENH_TX_PWR_LVL_CMD_OPCODE = 3176,
    HCI_RD_LE_HOST_SUPP_CMD_OPCODE = 3180,
    HCI_WR_LE_HOST_SUPP_CMD_OPCODE = 3181,
    HCI_SET_MWS_CHANNEL_PARAMS_CMD_OPCODE = 3182,
    HCI_SET_EXTERNAL_FRAME_CONFIG_CMD_OPCODE = 3183,
    HCI_SET_MWS_SIGNALING_CMD_OPCODE = 3184,
    HCI_SET_MWS_TRANSPORT_LAYER_CMD_OPCODE = 3185,
    HCI_SET_MWS_SCAN_FREQ_TABLE_CMD_OPCODE = 3186,
    HCI_SET_MWS_PATTERN_CONFIG_CMD_OPCODE = 3187,
    HCI_SET_RES_LT_ADDR_CMD_OPCODE = 3188,
    HCI_DEL_RES_LT_ADDR_CMD_OPCODE = 3189,
    HCI_SET_CON_SLV_BCST_DATA_CMD_OPCODE = 3190,
    HCI_RD_SYNC_TRAIN_PARAM_CMD_OPCODE = 3191,
    HCI_WR_SYNC_TRAIN_PARAM_CMD_OPCODE = 3192,
    HCI_RD_SEC_CON_HOST_SUPP_CMD_OPCODE = 3193,
    HCI_WR_SEC_CON_HOST_SUPP_CMD_OPCODE = 3194,
    HCI_RD_AUTH_PAYL_TO_CMD_OPCODE = 3195,
    HCI_WR_AUTH_PAYL_TO_CMD_OPCODE = 3196,
    HCI_RD_LOC_OOB_EXT_DATA_CMD_OPCODE = 3197,
    HCI_RD_EXT_PAGE_TO_CMD_OPCODE = 3198,
    HCI_WR_EXT_PAGE_TO_CMD_OPCODE = 3199,
    HCI_RD_EXT_INQ_LEN_CMD_OPCODE = 3200,
    HCI_WR_EXT_INQ_LEN_CMD_OPCODE = 3201,
    HCI_RD_LOCAL_VER_INFO_CMD_OPCODE = 4097,
    HCI_RD_LOCAL_SUPP_CMDS_CMD_OPCODE = 4098,
    HCI_RD_LOCAL_SUPP_FEATS_CMD_OPCODE = 4099,
    HCI_RD_LOCAL_EXT_FEATS_CMD_OPCODE = 4100,
    HCI_RD_BUFF_SIZE_CMD_OPCODE = 4101,
    HCI_RD_BD_ADDR_CMD_OPCODE = 4105,
    HCI_RD_LOCAL_SUPP_CODECS_CMD_OPCODE = 4107,
    HCI_RD_FAIL_CONTACT_CNT_CMD_OPCODE = 5121,
    HCI_RST_FAIL_CONTACT_CNT_CMD_OPCODE = 5122,
    HCI_RD_LINK_QUAL_CMD_OPCODE = 5123,
    HCI_RD_RSSI_CMD_OPCODE = 5125,
    HCI_RD_AFH_CH_MAP_CMD_OPCODE = 5126,
    HCI_RD_CLK_CMD_OPCODE = 5127,
    HCI_RD_ENC_KEY_SIZE_CMD_OPCODE = 5128,
    HCI_GET_MWS_TRANSPORT_LAYER_CONFIG_CMD_OPCODE = 5132,
    HCI_RD_LOOPBACK_MODE_CMD_OPCODE = 6145,
    HCI_WR_LOOPBACK_MODE_CMD_OPCODE = 6146,
    HCI_EN_DUT_MODE_CMD_OPCODE = 6147,
    HCI_WR_SP_DBG_MODE_CMD_OPCODE = 6148,
    HCI_WR_SEC_CON_TEST_MODE_CMD_OPCODE = 6154,
    HCI_LE_SET_EVT_MASK_CMD_OPCODE = 8193,
    HCI_LE_RD_BUFF_SIZE_CMD_OPCODE = 8194,
    HCI_LE_RD_LOCAL_SUPP_FEATS_CMD_OPCODE = 8195,
    HCI_LE_SET_RAND_ADDR_CMD_OPCODE = 8197,
    HCI_LE_SET_ADV_PARAM_CMD_OPCODE = 8198,
    HCI_LE_RD_ADV_CHNL_TX_PW_CMD_OPCODE = 8199,
    HCI_LE_SET_ADV_DATA_CMD_OPCODE = 8200,
    HCI_LE_SET_SCAN_RSP_DATA_CMD_OPCODE = 8201,
    HCI_LE_SET_ADV_EN_CMD_OPCODE = 8202,
    HCI_LE_SET_SCAN_PARAM_CMD_OPCODE = 8203,
    HCI_LE_SET_SCAN_EN_CMD_OPCODE = 8204,
    HCI_LE_CREATE_CON_CMD_OPCODE = 8205,
    HCI_LE_CREATE_CON_CANCEL_CMD_OPCODE = 8206,
    HCI_LE_RD_WLST_SIZE_CMD_OPCODE = 8207,
    HCI_LE_CLEAR_WLST_CMD_OPCODE = 8208,
    HCI_LE_ADD_DEV_TO_WLST_CMD_OPCODE = 8209,
    HCI_LE_RMV_DEV_FROM_WLST_CMD_OPCODE = 8210,
    HCI_LE_CON_UPDATE_CMD_OPCODE = 8211,
    HCI_LE_SET_HOST_CH_CLASS_CMD_OPCODE = 8212,
    HCI_LE_RD_CHNL_MAP_CMD_OPCODE = 8213,
    HCI_LE_RD_REM_USED_FEATS_CMD_OPCODE = 8214,
    HCI_LE_ENC_CMD_OPCODE = 8215,
    HCI_LE_RAND_CMD_OPCODE = 8216,
    HCI_LE_START_ENC_CMD_OPCODE = 8217,
    HCI_LE_LTK_REQ_REPLY_CMD_OPCODE = 8218,
    HCI_LE_LTK_REQ_NEG_REPLY_CMD_OPCODE = 8219,
    HCI_LE_RD_SUPP_STATES_CMD_OPCODE = 8220,
    HCI_LE_RX_TEST_CMD_OPCODE = 8221,
    HCI_LE_TX_TEST_CMD_OPCODE = 8222,
    HCI_LE_TEST_END_CMD_OPCODE = 8223,
    HCI_LE_REM_CON_PARAM_REQ_REPLY_CMD_OPCODE = 8224,
    HCI_LE_REM_CON_PARAM_REQ_NEG_REPLY_CMD_OPCODE = 8225,
    HCI_LE_SET_DATA_LEN_CMD_OPCODE = 8226,
    HCI_LE_RD_SUGGTED_DFT_DATA_LEN_CMD_OPCODE = 8227,
    HCI_LE_WR_SUGGTED_DFT_DATA_LEN_CMD_OPCODE = 8228,
    HCI_LE_RD_LOC_P256_PUB_KEY_CMD_OPCODE = 8229,
    HCI_LE_GEN_DHKEY_CMD_OPCODE = 8230,
    HCI_LE_ADD_DEV_TO_RSLV_LIST_CMD_OPCODE = 8231,
    HCI_LE_RMV_DEV_FROM_RSLV_LIST_CMD_OPCODE = 8232,
    HCI_LE_CLEAR_RSLV_LIST_CMD_OPCODE = 8233,
    HCI_LE_RD_RSLV_LIST_SIZE_CMD_OPCODE = 8234,
    HCI_LE_RD_PEER_RSLV_ADDR_CMD_OPCODE = 8235,
    HCI_LE_RD_LOC_RSLV_ADDR_CMD_OPCODE = 8236,
    HCI_LE_SET_ADDR_RESOL_EN_CMD_OPCODE = 8237,
    HCI_LE_SET_RSLV_PRIV_ADDR_TO_CMD_OPCODE = 8238,
    HCI_LE_RD_MAX_DATA_LEN_CMD_OPCODE = 8239,
    HCI_LE_RD_TRANS_PWR_CMD_OPCODE = 8267,
    HCI_LE_RD_RFPATH_CPS_CMD_OPCODE = 8268,
    HCI_LE_WR_RFPATH_CPS_CMD_OPCODE = 8269,
    HCI_DBG_RD_MEM_CMD_OPCODE = 64513,
    HCI_DBG_WR_MEM_CMD_OPCODE = 64514,
    HCI_DBG_DEL_PAR_CMD_OPCODE = 64515,
    HCI_DBG_ID_FLASH_CMD_OPCODE = 64517,
    HCI_DBG_ER_FLASH_CMD_OPCODE = 64518,
    HCI_DBG_WR_FLASH_CMD_OPCODE = 64519,
    HCI_DBG_RD_FLASH_CMD_OPCODE = 64520,
    HCI_DBG_RD_PAR_CMD_OPCODE = 64521,
    HCI_DBG_WR_PAR_CMD_OPCODE = 64522,
    HCI_DBG_WLAN_COEX_CMD_OPCODE = 64523,
    HCI_DBG_WLAN_COEXTST_SCEN_CMD_OPCODE = 64525,
    HCI_DBG_BT_SEND_LMP_CMD_OPCODE = 64526,
    HCI_DBG_SET_LOCAL_CLOCK_CMD_OPCODE = 64527,
    HCI_DBG_RD_KE_STATS_CMD_OPCODE = 64528,
    HCI_DBG_PLF_RESET_CMD_OPCODE = 64529,
    HCI_DBG_RD_MEM_INFO_CMD_OPCODE = 64530,
    HCI_DBG_HW_REG_RD_CMD_OPCODE = 64560,
    HCI_DBG_HW_REG_WR_CMD_OPCODE = 64561,
    HCI_DBG_SET_BD_ADDR_CMD_OPCODE = 64562,
    HCI_DBG_SET_TYPE_PUB_CMD_OPCODE = 64563,
    HCI_DBG_SET_TYPE_RAND_CMD_OPCODE = 64564,
    HCI_DBG_SET_CRC_CMD_OPCODE = 64565,
    HCI_DBG_LLCP_DISCARD_CMD_OPCODE = 64566,
    HCI_DBG_RESET_RX_CNT_CMD_OPCODE = 64567,
    HCI_DBG_RESET_TX_CNT_CMD_OPCODE = 64568,
    HCI_DBG_RF_REG_RD_CMD_OPCODE = 64569,
    HCI_DBG_RF_REG_WR_CMD_OPCODE = 64570,
    HCI_DBG_SET_TX_PW_CMD_OPCODE = 64571,
    HCI_DBG_RF_SWITCH_CLK_CMD_OPCODE = 64572,
    HCI_DBG_RF_WR_DATA_TX_CMD_OPCODE = 64573,
    HCI_DBG_RF_RD_DATA_RX_CMD_OPCODE = 64574,
    HCI_DBG_RF_CNTL_TX_CMD_OPCODE = 64575,
    HCI_DBG_RF_SYNC_P_CNTL_CMD_OPCODE = 64576,
    HCI_TESTER_SET_LE_PARAMS_CMD_OPCODE = 64576,
    HCI_DBG_WR_DLE_DFT_VALUE_CMD_OPCODE = 64577,
    HCI_DBG_BLE_TST_LLCP_PT_EN_CMD_OPCODE = 64578,
    HCI_DBG_BLE_TST_SEND_LLCP_CMD_OPCODE = 64579,
    HCI_VS_AUDIO_ALLOCATE_CMD_OPCODE = 64592,
    HCI_VS_AUDIO_CONFIGURE_CMD_OPCODE = 64593,
    HCI_VS_AUDIO_SET_MODE_CMD_OPCODE = 64594,
    HCI_VS_AUDIO_RESET_CMD_OPCODE = 64595,
    HCI_VS_AUDIO_SET_POINTER_CMD_OPCODE = 64596,
    HCI_VS_AUDIO_GET_BUFFER_RANGE_CMD_OPCODE = 64597,
    HCI_DBG_MWS_COEX_CMD_OPCODE = 64581,
    HCI_DBG_MWS_COEXTST_SCEN_CMD_OPCODE = 64582,
    HCI_SET_TX_PWR_CMD_OPCODE = 64609,
}; // :197:6

enum hci_evt_code {
    HCI_INQ_CMP_EVT_CODE = 1,
    HCI_INQ_RES_EVT_CODE = 2,
    HCI_CON_CMP_EVT_CODE = 3,
    HCI_CON_REQ_EVT_CODE = 4,
    HCI_DISC_CMP_EVT_CODE = 5,
    HCI_AUTH_CMP_EVT_CODE = 6,
    HCI_REM_NAME_REQ_CMP_EVT_CODE = 7,
    HCI_ENC_CHG_EVT_CODE = 8,
    HCI_CHG_CON_LK_CMP_EVT_CODE = 9,
    HCI_MASTER_LK_CMP_EVT_CODE = 10,
    HCI_RD_REM_SUPP_FEATS_CMP_EVT_CODE = 11,
    HCI_RD_REM_VER_INFO_CMP_EVT_CODE = 12,
    HCI_QOS_SETUP_CMP_EVT_CODE = 13,
    HCI_CMD_CMP_EVT_CODE = 14,
    HCI_CMD_STATUS_EVT_CODE = 15,
    HCI_HW_ERR_EVT_CODE = 16,
    HCI_FLUSH_OCCURRED_EVT_CODE = 17,
    HCI_ROLE_CHG_EVT_CODE = 18,
    HCI_NB_CMP_PKTS_EVT_CODE = 19,
    HCI_MODE_CHG_EVT_CODE = 20,
    HCI_RETURN_LINK_KEYS_EVT_CODE = 21,
    HCI_PIN_CODE_REQ_EVT_CODE = 22,
    HCI_LK_REQ_EVT_CODE = 23,
    HCI_LK_NOTIF_EVT_CODE = 24,
    HCI_DATA_BUF_OVFLW_EVT_CODE = 26,
    HCI_MAX_SLOT_CHG_EVT_CODE = 27,
    HCI_RD_CLK_OFF_CMP_EVT_CODE = 28,
    HCI_CON_PKT_TYPE_CHG_EVT_CODE = 29,
    HCI_QOS_VIOL_EVT_CODE = 30,
    HCI_PAGE_SCAN_REPET_MODE_CHG_EVT_CODE = 32,
    HCI_FLOW_SPEC_CMP_EVT_CODE = 33,
    HCI_INQ_RES_WITH_RSSI_EVT_CODE = 34,
    HCI_RD_REM_EXT_FEATS_CMP_EVT_CODE = 35,
    HCI_SYNC_CON_CMP_EVT_CODE = 44,
    HCI_SYNC_CON_CHG_EVT_CODE = 45,
    HCI_SNIFF_SUB_EVT_CODE = 46,
    HCI_EXT_INQ_RES_EVT_CODE = 47,
    HCI_ENC_KEY_REFRESH_CMP_EVT_CODE = 48,
    HCI_IO_CAP_REQ_EVT_CODE = 49,
    HCI_IO_CAP_RSP_EVT_CODE = 50,
    HCI_USER_CFM_REQ_EVT_CODE = 51,
    HCI_USER_PASSKEY_REQ_EVT_CODE = 52,
    HCI_REM_OOB_DATA_REQ_EVT_CODE = 53,
    HCI_SP_CMP_EVT_CODE = 54,
    HCI_LINK_SUPV_TO_CHG_EVT_CODE = 56,
    HCI_ENH_FLUSH_CMP_EVT_CODE = 57,
    HCI_USER_PASSKEY_NOTIF_EVT_CODE = 59,
    HCI_KEYPRESS_NOTIF_EVT_CODE = 60,
    HCI_REM_HOST_SUPP_FEATS_NOTIF_EVT_CODE = 61,
    HCI_LE_META_EVT_CODE = 62,
    HCI_MAX_EVT_MSK_PAGE_1_CODE = 64,
    HCI_SYNC_TRAIN_CMP_EVT_CODE = 79,
    HCI_SYNC_TRAIN_REC_EVT_CODE = 80,
    HCI_CON_SLV_BCST_REC_EVT_CODE = 81,
    HCI_CON_SLV_BCST_TO_EVT_CODE = 82,
    HCI_TRUNC_PAGE_CMP_EVT_CODE = 83,
    HCI_SLV_PAGE_RSP_TO_EVT_CODE = 84,
    HCI_CON_SLV_BCST_CH_MAP_CHG_EVT_CODE = 85,
    HCI_AUTH_PAYL_TO_EXP_EVT_CODE = 87,
    HCI_MAX_EVT_MSK_PAGE_2_CODE = 88,
    HCI_DBG_META_EVT_CODE = 255,
    HCI_LE_CON_CMP_EVT_SUBCODE = 1,
    HCI_LE_ADV_REPORT_EVT_SUBCODE = 2,
    HCI_LE_CON_UPDATE_CMP_EVT_SUBCODE = 3,
    HCI_LE_RD_REM_USED_FEATS_CMP_EVT_SUBCODE = 4,
    HCI_LE_LTK_REQUEST_EVT_SUBCODE = 5,
    HCI_LE_REM_CON_PARAM_REQ_EVT_SUBCODE = 6,
    HCI_LE_DATA_LEN_CHG_EVT_SUBCODE = 7,
    HCI_LE_RD_LOC_P256_PUB_KEY_CMP_EVT_SUBCODE = 8,
    HCI_LE_GEN_DHKEY_CMP_EVT_SUBCODE = 9,
    HCI_LE_ENH_CON_CMP_EVT_SUBCODE = 10,
    HCI_LE_DIR_ADV_REP_EVT_SUBCODE = 11,
    HCI_LE_CH_SEL_ALGO_EVT_SUBCODE = 20,
}; // :540:6

enum hci_evt_mask_page {
    HCI_PAGE_0 = 0,
    HCI_PAGE_1 = 1,
    HCI_PAGE_2 = 2,
    HCI_PAGE_DFT = 3,
}; // :642:6

struct hci_acl_data_rx {
    uint16_t conhdl;
    uint8_t pb_bc_flag;
    uint16_t length;
    uint8_t rx_hdl;
}; // :654:8

struct hci_acl_data_tx {
    uint16_t conhdl;
    uint8_t pb_bc_flag;
    uint16_t length;
    struct em_buf_node *buf;
}; // :673:8

struct hci_basic_conhdl_cmd {
    uint16_t conhdl;
}; // :735:8

struct hci_disconnect_cmd {
    uint16_t conhdl;
    uint8_t reason;
}; // :1120:8

struct hci_le_generate_dh_key_cmd {
    uint8_t public_key[64];
}; // :1396:8

struct hci_set_evt_mask_cmd {
    struct evt_mask event_mask;
}; // :1445:8

struct hci_flush_cmd_cmp_evt {
    uint8_t status;
    uint16_t conhdl;
}; // :1535:8

struct hci_set_ctrl_to_host_flow_ctrl_cmd {
    uint8_t flow_cntl;
}; // :1788:8

struct hci_host_buf_size_cmd {
    uint16_t acl_pkt_len;
    uint8_t sync_pkt_len;
    uint16_t nb_acl_pkts;
    uint16_t nb_sync_pkts;
}; // :1795:8

struct hci_host_nb_cmp_pkts_cmd {
    uint8_t nb_of_hdl;
    uint16_t con_hdl[3];
    uint16_t nb_comp_pkt[3];
}; // :1820:8

struct hci_rd_auth_payl_to_cmd {
    uint16_t conhdl;
}; // :2334:8

struct hci_rd_auth_payl_to_cmd_cmp_evt {
    uint8_t status;
    uint16_t conhdl;
    uint16_t auth_payl_to;
}; // :2341:8

struct hci_rd_local_ver_info_cmd_cmp_evt {
    uint8_t status;
    uint8_t hci_ver;
    uint16_t hci_rev;
    uint8_t lmp_ver;
    uint16_t manuf_name;
    uint16_t lmp_subver;
}; // :2412:8

struct hci_rd_local_supp_cmds_cmd_cmp_evt {
    uint8_t status;
    struct supp_cmds local_cmds;
}; // :2429:8

struct hci_rd_local_supp_feats_cmd_cmp_evt {
    uint8_t status;
    struct features feats;
}; // :2438:8

struct hci_rd_buff_size_cmd_cmp_evt {
    uint8_t status;
    uint16_t hc_data_pk_len;
    uint8_t hc_sync_pk_len;
    uint16_t hc_tot_nb_data_pkts;
    uint16_t hc_tot_nb_sync_pkts;
}; // :2466:8

struct hci_rd_bd_addr_cmd_cmp_evt {
    uint8_t status;
    struct bd_addr local_addr;
}; // :2481:8

struct hci_rd_rssi_cmd_cmp_evt {
    uint8_t status;
    uint16_t conhdl;
    int8_t rssi;
}; // :2507:8

struct hci_le_set_evt_mask_cmd {
    struct evt_mask le_mask;
}; // :2604:8

struct hci_le_set_rand_addr_cmd {
    struct bd_addr rand_addr;
}; // :2611:8

struct hci_le_set_adv_param_cmd {
    uint16_t adv_intv_min;
    uint16_t adv_intv_max;
    uint8_t adv_type;
    uint8_t own_addr_type;
    uint8_t peer_addr_type;
    struct bd_addr peer_addr;
    uint8_t adv_chnl_map;
    uint8_t adv_filt_policy;
}; // :2754:8

struct hci_le_set_adv_data_cmd {
    uint8_t adv_data_len;
    struct adv_data data;
}; // :2775:8

struct hci_le_set_scan_rsp_data_cmd {
    uint8_t scan_rsp_data_len;
    struct scan_rsp_data data;
}; // :2784:8

struct hci_le_set_adv_en_cmd {
    uint8_t adv_en;
}; // :2793:8

struct hci_le_set_scan_param_cmd {
    uint8_t scan_type;
    uint16_t scan_intv;
    uint16_t scan_window;
    uint8_t own_addr_type;
    uint8_t scan_filt_policy;
}; // :2852:8

struct hci_le_set_scan_en_cmd {
    uint8_t scan_en;
    uint8_t filter_duplic_en;
}; // :2867:8

struct hci_le_create_con_cmd {
    uint16_t scan_intv;
    uint16_t scan_window;
    uint8_t init_filt_policy;
    uint8_t peer_addr_type;
    struct bd_addr peer_addr;
    uint8_t own_addr_type;
    uint16_t con_intv_min;
    uint16_t con_intv_max;
    uint16_t con_latency;
    uint16_t superv_to;
    uint16_t ce_len_min;
    uint16_t ce_len_max;
}; // :2876:8

struct hci_le_wr_rfpath_cps_cmd {
    uint16_t rf_txpath_compensation_value;
    uint16_t rf_rxpath_compensation_value;
}; // :2974:8

struct hci_le_add_dev_to_wlst_cmd {
    uint8_t dev_addr_type;
    struct bd_addr dev_addr;
}; // :2983:8

struct hci_le_set_host_ch_class_cmd {
    struct le_chnl_map chmap;
}; // :3002:8

struct hci_le_rx_test_cmd {
    uint8_t rx_freq;
}; // :3010:8

struct hci_le_tx_test_cmd {
    uint8_t tx_freq;
    uint8_t test_data_len;
    uint8_t pk_payload_type;
}; // :3017:8

struct hci_le_enc_cmd {
    struct ltk key;
    uint8_t plain_data[16];
}; // :3054:8

struct hci_le_con_update_cmd {
    uint16_t conhdl;
    uint16_t con_intv_min;
    uint16_t con_intv_max;
    uint16_t con_latency;
    uint16_t superv_to;
    uint16_t ce_len_min;
    uint16_t ce_len_max;
}; // :3063:8

struct hci_le_start_enc_cmd {
    uint16_t conhdl;
    struct rand_nb nb;
    uint16_t enc_div;
    struct ltk ltk;
}; // :3082:8

struct hci_le_ltk_req_reply_cmd {
    uint16_t conhdl;
    struct ltk ltk;
}; // :3095:8

struct hci_le_rem_con_param_req_reply_cmd {
    uint16_t conhdl;
    uint16_t interval_min;
    uint16_t interval_max;
    uint16_t latency;
    uint16_t timeout;
    uint16_t min_ce_len;
    uint16_t max_ce_len;
}; // :3104:8

struct hci_le_rem_con_param_req_neg_reply_cmd {
    uint16_t conhdl;
    uint8_t reason;
}; // :3123:8

struct hci_le_set_data_len_cmd {
    uint16_t conhdl;
    uint16_t tx_octets;
    uint16_t tx_time;
}; // :3133:8

struct hci_le_wr_suggted_dft_data_len_cmd {
    uint16_t suggted_max_tx_octets;
    uint16_t suggted_max_tx_time;
}; // :3146:8

struct hci_vsc_set_tx_pwr_cmd {
    int8_t power;
}; // :3259:8

struct hci_disc_cmp_evt {
    uint8_t status;
    uint16_t conhdl;
    uint8_t reason;
}; // :3341:8

struct hci_basic_cmd_cmp_evt {
    uint8_t status;
}; // :3352:8

struct hci_basic_conhdl_cmd_cmp_evt {
    uint8_t status;
    uint16_t conhdl;
}; // :3359:8

struct hci_cmd_stat_event {
    uint8_t status;
}; // :3393:8

struct hci_nb_cmp_pkts_evt {
    uint8_t nb_of_hdl;
    uint16_t conhdl[1];
    uint16_t nb_comp_pkt[1];
}; // :3400:8

struct hci_data_buf_ovflw_evt {
    uint8_t link_type;
}; // :3411:8

struct hci_enc_change_evt {
    uint8_t status;
    uint16_t conhdl;
    uint8_t enc_stat;
}; // :3425:8

struct hci_enc_key_ref_cmp_evt {
    uint8_t status;
    uint16_t conhdl;
}; // :3436:8

struct hci_auth_payl_to_exp_evt {
    uint16_t conhdl;
}; // :3445:8

struct hci_flush_occurred_evt {
    uint16_t conhdl;
}; // :3533:8

struct hci_rd_rem_ver_info_cmp_evt {
    uint8_t status;
    uint16_t conhdl;
    uint8_t vers;
    uint16_t compid;
    uint16_t subvers;
}; // :3601:8

struct hci_le_rd_local_supp_feats_cmd_cmp_evt {
    uint8_t status;
    struct le_features feats;
}; // :3881:8

struct hci_rd_adv_chnl_tx_pw_cmd_cmp_evt {
    uint8_t status;
    int8_t adv_tx_pw_lvl;
}; // :3890:8

struct hci_rd_wlst_size_cmd_cmp_evt {
    uint8_t status;
    uint8_t wlst_size;
}; // :3899:8

struct hci_le_rd_buff_size_cmd_cmp_evt {
    uint8_t status;
    uint16_t hc_data_pk_len;
    uint8_t hc_tot_nb_data_pkts;
}; // :3908:8

struct hci_le_rand_cmd_cmp_evt {
    uint8_t status;
    struct rand_nb nb;
}; // :3927:8

struct hci_rd_supp_states_cmd_cmp_evt {
    uint8_t status;
    struct le_states states;
}; // :3936:8

struct hci_rd_trans_pwr_cmd_cmp_evt {
    uint8_t status;
    char min_tx_pwr;
    char max_tx_pwr;
}; // :3962:8

struct hci_rd_rfpath_cps_cmd_cmp_evt {
    uint8_t status;
    uint16_t rf_txpath_compensation_value;
    uint16_t rf_rxpath_compensation_value;
}; // :3972:8

struct hci_test_end_cmd_cmp_evt {
    uint8_t status;
    uint16_t nb_packet_received;
}; // :3984:8

struct hci_le_enc_cmd_cmp_evt {
    uint8_t status;
    uint8_t encrypted_data[16];
}; // :3993:8

struct hci_le_adv_report_evt {
    uint8_t subcode;
    uint8_t nb_reports;
    struct adv_report adv_rep[1];
}; // :4003:8

struct hci_le_rd_chnl_map_cmd_cmp_evt {
    uint8_t status;
    uint16_t conhdl;
    struct le_chnl_map ch_map;
}; // :4035:8

struct hci_le_rd_suggted_dft_data_len_cmd_cmp_evt {
    uint8_t status;
    uint16_t suggted_max_tx_octets;
    uint16_t suggted_max_tx_time;
}; // :4064:8

struct hci_le_rd_max_data_len_cmd_cmp_evt {
    uint8_t status;
    uint16_t suppted_max_tx_octets;
    uint16_t suppted_max_tx_time;
    uint16_t suppted_max_rx_octets;
    uint16_t suppted_max_rx_time;
}; // :4074:8

struct hci_wr_auth_payl_to_cmd {
    uint16_t conhdl;
    uint16_t auth_payl_to;
}; // :4117:8

struct hci_wr_auth_payl_to_cmd_cmp_evt {
    uint8_t status;
    uint16_t conhdl;
}; // :4126:8

struct hci_le_con_update_cmp_evt {
    uint8_t subcode;
    uint8_t status;
    uint16_t conhdl;
    uint16_t con_interval;
    uint16_t con_latency;
    uint16_t sup_to;
}; // :4135:8

struct hci_le_con_cmp_evt {
    uint8_t subcode;
    uint8_t status;
    uint16_t conhdl;
    uint8_t role;
    uint8_t peer_addr_type;
    struct bd_addr peer_addr;
    uint16_t con_interval;
    uint16_t con_latency;
    uint16_t sup_to;
    uint8_t clk_accuracy;
}; // :4152:8

struct hci_le_rd_rem_used_feats_cmd {
    uint16_t conhdl;
}; // :4177:8

struct hci_le_rd_rem_used_feats_cmd_cmp_evt {
    uint8_t subcode;
    uint8_t status;
    uint16_t conhdl;
    struct le_features feats_used;
}; // :4184:8

struct hci_rd_tx_pwr_lvl_cmd {
    uint16_t conhdl;
    uint8_t type;
}; // :4197:8

struct hci_rd_tx_pwr_lvl_cmd_cmp_evt {
    uint8_t status;
    uint16_t conhdl;
    uint8_t tx_pow_lvl;
}; // :4206:8

struct hci_rd_rem_ver_info_cmd {
    uint16_t conhdl;
}; // :4217:8

struct hci_le_rem_con_param_req_evt {
    uint8_t subcode;
    uint16_t conhdl;
    uint16_t interval_min;
    uint16_t interval_max;
    uint16_t latency;
    uint16_t timeout;
}; // :4224:8

struct hci_le_enh_con_cmp_evt {
    uint8_t subcode;
    uint8_t status;
    uint16_t conhdl;
    uint8_t role;
    uint8_t peer_addr_type;
    struct bd_addr peer_addr;
    struct bd_addr loc_rslv_priv_addr;
    struct bd_addr peer_rslv_priv_addr;
    uint16_t con_interval;
    uint16_t con_latency;
    uint16_t sup_to;
    uint8_t clk_accuracy;
}; // :4242:8

struct hci_le_dir_adv_rep_evt {
    uint8_t subcode;
    uint8_t nb_reports;
    struct dir_adv_report adv_rep[1];
}; // :4295:8

struct hci_le_ltk_request_evt {
    uint8_t subcode;
    uint16_t conhdl;
    struct rand_nb rand;
    uint16_t ediv;
}; // :4307:8

struct hci_le_data_len_chg_evt {
    uint8_t subcode;
    uint16_t conhdl;
    uint16_t max_tx_octets;
    uint16_t max_tx_time;
    uint16_t max_rx_octets;
    uint16_t max_rx_time;
}; // :4320:8

struct hci_le_generate_dhkey_cmp_evt {
    uint8_t subcode;
    uint8_t status;
    uint8_t dh_key[32];
}; // :4412:8

struct hci_le_generate_p256_public_key_cmp_evt {
    uint8_t subcode;
    uint8_t status;
    t_public_key public_key;
}; // :4420:8

struct hci_le_ch_sel_algo_evt {
    uint8_t subcode;
    uint16_t conhdl;
    uint8_t chSel;
}; // :4445:8

/* ======== components/network/ble/blecontroller/modules/common/api/co_list.h ======== */

struct co_list_hdr {
    struct co_list_hdr *next;
}; // :53:8

struct co_list {
    struct co_list_hdr *first;
    struct co_list_hdr *last;
}; // :60:8

/* ======== components/network/ble/blecontroller/modules/common/api/co_llcp.h ======== */

enum co_llcp_opcode {
    LLCP_CONNECTION_UPDATE_IND_OPCODE = 0,
    LLCP_CHANNEL_MAP_IND_OPCODE = 1,
    LLCP_TERMINATE_IND_OPCODE = 2,
    LLCP_ENC_REQ_OPCODE = 3,
    LLCP_ENC_RSP_OPCODE = 4,
    LLCP_START_ENC_REQ_OPCODE = 5,
    LLCP_START_ENC_RSP_OPCODE = 6,
    LLCP_UNKNOWN_RSP_OPCODE = 7,
    LLCP_FEATURE_REQ_OPCODE = 8,
    LLCP_FEATURE_RSP_OPCODE = 9,
    LLCP_PAUSE_ENC_REQ_OPCODE = 10,
    LLCP_PAUSE_ENC_RSP_OPCODE = 11,
    LLCP_VERSION_IND_OPCODE = 12,
    LLCP_REJECT_IND_OPCODE = 13,
    LLCP_SLAVE_FEATURE_REQ_OPCODE = 14,
    LLCP_CONNECTION_PARAM_REQ_OPCODE = 15,
    LLCP_CONNECTION_PARAM_RSP_OPCODE = 16,
    LLCP_REJECT_IND_EXT_OPCODE = 17,
    LLCP_PING_REQ_OPCODE = 18,
    LLCP_PING_RSP_OPCODE = 19,
    LLCP_LENGTH_REQ_OPCODE = 20,
    LLCP_LENGTH_RSP_OPCODE = 21,
    LLCP_OPCODE_MAX_OPCODE = 22,
}; // :41:6

enum co_llcp_length {
    LLCP_CON_REQ_LEN = 34,
    LLCP_CON_UPD_IND_LEN = 12,
    LLCP_CH_MAP_REQ_LEN = 8,
    LLCP_TERM_IND_LEN = 2,
    LLCP_ENC_REQ_LEN = 23,
    LLCP_ENC_RSP_LEN = 13,
    LLCP_ST_ENC_REQ_LEN = 1,
    LLCP_ST_ENC_RSP_LEN = 1,
    LLCP_UNKN_RSP_LEN = 2,
    LLCP_FEAT_REQ_LEN = 9,
    LLCP_FEAT_RSP_LEN = 9,
    LLCP_PA_ENC_REQ_LEN = 1,
    LLCP_PA_ENC_RSP_LEN = 1,
    LLCP_VERS_IND_LEN = 6,
    LLCP_REJ_IND_LEN = 2,
    LLCP_SLAVE_FEATURE_REQ_LEN = 9,
    LLCP_REJECT_IND_EXT_LEN = 3,
    LLCP_CON_PARAM_REQ_LEN = 24,
    LLCP_CON_PARAM_RSP_LEN = 24,
    LLCP_PING_REQ_LEN = 1,
    LLCP_PING_RSP_LEN = 1,
    LLCP_LENGTH_REQ_LEN = 9,
    LLCP_LENGTH_RSP_LEN = 9,
    LLCP_PDU_LENGTH_MAX = 34,
}; // :106:6

struct llcp_con_upd_ind {
    uint8_t opcode;
    uint8_t win_size;
    uint16_t win_off;
    uint16_t interv;
    uint16_t latency;
    uint16_t timeout;
    uint16_t instant;
}; // :146:8

struct llcp_channel_map_ind {
    uint8_t opcode;
    struct le_chnl_map ch_map;
    uint16_t instant;
}; // :165:8

struct llcp_terminate_ind {
    uint8_t opcode;
    uint8_t err_code;
}; // :176:8

struct llcp_enc_req {
    uint8_t opcode;
    struct rand_nb rand;
    uint8_t ediv[2];
    struct sess_k_div_x skdm;
    struct init_vect ivm;
}; // :185:8

struct llcp_enc_rsp {
    uint8_t opcode;
    struct sess_k_div_x skds;
    struct init_vect ivs;
}; // :200:8

struct llcp_start_enc_req {
    uint8_t opcode;
}; // :211:8

struct llcp_start_enc_rsp {
    uint8_t opcode;
}; // :218:8

struct llcp_unknown_rsp {
    uint8_t opcode;
    uint8_t unk_type;
}; // :225:8

struct llcp_feats_req {
    uint8_t opcode;
    struct le_features feats;
}; // :234:8

struct llcp_feats_rsp {
    uint8_t opcode;
    struct le_features feats;
}; // :243:8

struct llcp_pause_enc_req {
    uint8_t opcode;
}; // :252:8

struct llcp_pause_enc_rsp {
    uint8_t opcode;
}; // :259:8

struct llcp_vers_ind {
    uint8_t opcode;
    uint8_t vers;
    uint16_t compid;
    uint16_t subvers;
}; // :266:8

struct llcp_reject_ind {
    uint8_t opcode;
    uint8_t err_code;
}; // :279:8

struct llcp_slave_feature_req {
    uint8_t opcode;
    struct le_features feats;
}; // :288:8

struct llcp_con_param_req {
    uint8_t opcode;
    uint16_t interval_min;
    uint16_t interval_max;
    uint16_t latency;
    uint16_t timeout;
    uint8_t pref_period;
    uint16_t ref_con_event_count;
    uint16_t offset0;
    uint16_t offset1;
    uint16_t offset2;
    uint16_t offset3;
    uint16_t offset4;
    uint16_t offset5;
}; // :297:8

struct llcp_con_param_rsp {
    uint8_t opcode;
    uint16_t interval_min;
    uint16_t interval_max;
    uint16_t latency;
    uint16_t timeout;
    uint8_t pref_period;
    uint16_t ref_con_event_count;
    uint16_t offset0;
    uint16_t offset1;
    uint16_t offset2;
    uint16_t offset3;
    uint16_t offset4;
    uint16_t offset5;
}; // :328:8

struct llcp_reject_ind_ext {
    uint8_t opcode;
    uint8_t rej_opcode;
    uint8_t err_code;
}; // :359:8

struct llcp_ping_req {
    uint8_t opcode;
}; // :370:8

struct llcp_ping_rsp {
    uint8_t opcode;
}; // :377:8

struct llcp_length_req {
    uint8_t opcode;
    uint16_t max_rx_octets;
    uint16_t max_rx_time;
    uint16_t max_tx_octets;
    uint16_t max_tx_time;
}; // :384:8

struct llcp_length_rsp {
    uint8_t opcode;
    uint16_t max_rx_octets;
    uint16_t max_rx_time;
    uint16_t max_tx_octets;
    uint16_t max_tx_time;
}; // :399:8

union llcp_pdu {
    uint8_t opcode;
    struct llcp_con_upd_ind con_up_req;
    struct llcp_channel_map_ind channel_map_req;
    struct llcp_terminate_ind terminate_ind;
    struct llcp_enc_req enc_req;
    struct llcp_enc_rsp enc_rsp;
    struct llcp_start_enc_req start_enc_req;
    struct llcp_start_enc_rsp start_enc_rsp;
    struct llcp_unknown_rsp unknown_rsp;
    struct llcp_feats_req feats_req;
    struct llcp_feats_rsp feats_rsp;
    struct llcp_pause_enc_req pause_enc_req;
    struct llcp_pause_enc_rsp pause_enc_rsp;
    struct llcp_vers_ind vers_ind;
    struct llcp_reject_ind reject_ind;
    struct llcp_slave_feature_req slave_feature_req;
    struct llcp_con_param_req con_param_req;
    struct llcp_con_param_rsp con_param_rsp;
    struct llcp_reject_ind_ext reject_ind_ext;
    struct llcp_ping_req ping_req;
    struct llcp_ping_rsp ping_rsp;
    struct llcp_length_req length_req;
    struct llcp_length_rsp length_rsp;
}; // :451:7

/* ======== components/network/ble/blecontroller/modules/common/api/co_string.h ======== */

void *(*ble_memcpy_ptr)(void *, const void *, unsigned int); // :7:16
void *(*ble_memset_ptr)(void *, int, unsigned int); // :8:16
int (*ble_memcmp_ptr)(const void *, const void *, unsigned int); // :9:14

/* ======== components/network/ble/blecontroller/modules/common/api/co_utils.h ======== */

const unsigned char one_bits[16]; // :119:28
const uint16_t co_sca2ppm[]; // :122:23
const struct bd_addr co_null_bdaddr; // :125:29
struct bd_addr co_default_bdaddr; // :128:23

/* ======== components/network/ble/blecontroller/modules/common/src/co_list.c ======== */

uint32_t _patch_ble_co_list_init(void *pRet, struct co_list *list); // :35:10
void ble_co_list_init(struct co_list *list); // :50:7
void ble_co_list_pool_init(struct co_list *list, void *pool, size_t elmt_size, uint32_t elmt_cnt, void *default_value, uint8_t list_type); // :68:6
uint32_t _patch_ble_co_list_push_back(void *pRet, struct co_list *list, struct co_list_hdr *list_hdr); // :127:10
void ble_co_list_push_back(struct co_list *list, struct co_list_hdr *list_hdr); // :161:7
uint32_t _patch_ble_co_list_push_front(void *pRet, struct co_list *list, struct co_list_hdr *list_hdr); // :198:10
void ble_co_list_push_front(struct co_list *list, struct co_list_hdr *list_hdr); // :227:7
uint32_t _patch_ble_co_list_pop_front(void *pRet, struct co_list *list); // :259:10
struct co_list_hdr *ble_co_list_pop_front(struct co_list *list); // :289:22
uint32_t _patch_ble_co_list_extract(void *pRet, struct co_list *list, struct co_list_hdr *list_hdr, uint8_t nb_following); // :323:10
bool ble_co_list_extract(struct co_list *list, struct co_list_hdr *list_hdr, uint8_t nb_following); // :399:24
uint32_t _patch_ble_co_list_extract_after(void *pRet, struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_rem_hdr); // :480:10
void ble_co_list_extract_after(struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_rem_hdr); // :522:7
uint32_t _patch_ble_co_list_find(void *pRet, struct co_list *list, struct co_list_hdr *list_hdr); // :567:10
bool ble_co_list_find(struct co_list *list, struct co_list_hdr *list_hdr); // :588:24
uint32_t _patch_ble_co_list_merge(void *pRet, struct co_list *list1, struct co_list *list2); // :611:10
void ble_co_list_merge(struct co_list *list1, struct co_list *list2); // :644:7
uint32_t _patch_ble_co_list_insert_before(void *pRet, struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_add_hdr); // :680:10
void ble_co_list_insert_before(struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_add_hdr); // :728:7
uint32_t _patch_ble_co_list_insert_after(void *pRet, struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_add_hdr); // :779:10
void ble_co_list_insert_after(struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_add_hdr); // :832:7
uint32_t _patch_ble_co_list_size(void *pRet, struct co_list *list); // :888:10
uint16_t ble_co_list_size(struct co_list *list); // :905:11
uint32_t _patch_ble_co_list_check_size_available(void *pRet, struct co_list *list, uint8_t free_size_needed); // :927:10
bool ble_co_list_check_size_available(struct co_list *list, uint8_t free_size_needed); // :948:24

/* ======== components/network/ble/blecontroller/modules/common/src/co_utils.c ======== */

const unsigned char one_bits[16]; // :53:21
const uint16_t co_sca2ppm[]; // :56:16
const struct bd_addr co_null_bdaddr; // :69:22
struct bd_addr co_default_bdaddr; // :72:16

void co_bdaddr_set(uint8_t *bdaddr); // :106:6
bool co_bdaddr_compare(const struct bd_addr *bd_address1, const struct bd_addr *bd_address2); // :111:5

/* ======== components/network/ble/blecontroller/modules/dbg/src/dbg.c ======== */

void ble_dbg_platform_reset_complete(uint32_t error); // :81:6

/* ======== components/network/ble/blecontroller/modules/ecc_p256/api/ecc_p256.h ======== */

struct ecc_result_ind {
    uint8_t key_res_x[32];
    uint8_t key_res_y[32];
}; // :47:8

/* ======== components/network/ble/blecontroller/modules/ecc_p256/src/ecc_p256.c ======== */

typedef long long unsigned int u64; // :110:32
typedef uint8_t u_int8; // :112:17
typedef uint32_t u_int32; // :114:18

struct bigHex256 {
    u_int32 num[8];
    u_int32 len;
    u_int32 sign;
}; // :143:16

typedef struct bigHex256 bigHex256; // :148:3

struct ECC_Point256 {
    bigHex256 x;
    bigHex256 y;
}; // :159:16

typedef struct ECC_Point256 ECC_Point256; // :163:3

struct ECC_Jacobian_Point256 {
    bigHex256 x;
    bigHex256 y;
    bigHex256 z;
}; // :165:16

typedef struct ECC_Jacobian_Point256 ECC_Jacobian_Point256; // :170:3

struct ecc_elt_tag {
    struct co_list_hdr hdr;
    u_int32 Point_Mul_Word256;
    ECC_Jacobian_Point256 Jacobian_PointQ256;
    ECC_Jacobian_Point256 Jacobian_PointR256;
    bigHex256 Pk256;
    ke_msg_id_t msg_id;
    ke_task_id_t client_id;
    uint32_t current_val;
    uint32_t bit_cursor;
    uint8_t key_type;
    ECC_Jacobian_Point256 *win_4_table;
}; // :175:8

struct ecc_env_tag {
    struct co_list ongoing_mul;
}; // :209:8

const u_int8 BasePoint_x_256[32]; // :227:14
const u_int8 BasePoint_y_256[32]; // :228:14
const u_int8 maxSecretKey_256[32]; // :230:14
const u_int8 DebugE256PublicKey_x[32]; // :232:14
const u_int8 DebugE256PublicKey_y[32]; // :233:14
const u_int8 DebugE256SecretKey[32]; // :235:14
const bigHex256 bigHexP256; // :257:17
const uint32_t Inv_r[8]; // :259:16
const uint32_t Nprime[8]; // :261:16
const uint32_t Bar_1[8]; // :263:16
const uint32_t Bar_2[8]; // :264:16
const uint32_t Bar_3[8]; // :265:16
const uint32_t Bar_4[8]; // :266:16
const uint32_t Bar_8[8]; // :267:16
const uint32_t Bar_1p1[8]; // :268:16
const uint32_t Bar_1m1[8]; // :269:16
const ECC_Jacobian_Point256 ECC_4Win_Look_up_table[15]; // :402:29
struct ecc_env_tag ecc_env; // :626:20

static void Mont2GF(uint8_t reg_idx); // :722:13
static void getFinalPoint(uint8_t reg_idx); // :733:13
int notEqual256(const bigHex256 *bigHexA, const bigHex256 *bigHexB); // :1963:20
void GF_Point_Jacobian_To_Affine256(ECC_Jacobian_Point256 *pJacPoint, bigHex256 *pX_co_ord_affine, bigHex256 *pY_co_ord_affine); // :2359:6
void bigHexInversion256(bigHex256 *bigHexA, bigHex256 *pResult); // :2448:6
static void ecc_multiplication_event_handler(void); // :2862:13
void ecc_init(bool reset); // :2999:6
bool ecc_is_valid_point(bigHex256 *X_coord, bigHex256 *Y_coord); // :3019:5
uint8_t ecc_generate_key256(u_int8 key_type, const u_int8 *secret_key, const u_int8 *public_key_x, const u_int8 *public_key_y, ke_msg_id_t msg_id, ke_task_id_t task_id); // :3074:9
void ecc_abort_key256_generation(ke_task_id_t task_id); // :3230:6
void ecc_gen_new_public_key(u_int8 *secret_key, ke_msg_id_t msg_id, ke_task_id_t task_id); // :3270:6
void ecc_gen_new_secret_key(uint8_t *secret_key256, bool forced); // :3280:6
void ecc_get_debug_Keys(uint8_t *secret_key, uint8_t *pub_key_x, uint8_t *pub_key_y); // :3311:6

/* ======== components/network/ble/blecontroller/modules/ke/api/ke_event.h ======== */

enum KE_EVENT_STATUS {
    KE_EVENT_OK = 0,
    KE_EVENT_FAIL = 1,
    KE_EVENT_UNKNOWN = 2,
    KE_EVENT_CAPA_EXCEEDED = 3,
    KE_EVENT_ALREADY_EXISTS = 4,
}; // :47:6

/* ======== components/network/ble/blecontroller/modules/ke/api/ke_msg.h ======== */

typedef uint16_t ke_task_id_t; // :58:18
typedef uint8_t ke_state_t; // :70:17
typedef uint16_t ke_msg_id_t; // :76:18

struct ke_msg {
    struct co_list_hdr hdr;
    ke_msg_id_t id;
    ke_task_id_t dest_id;
    ke_task_id_t src_id;
    uint16_t param_len;
    uint32_t param[1];
}; // :79:8

enum ke_msg_status_tag {
    KE_MSG_CONSUMED = 0,
    KE_MSG_NO_FREE = 1,
    KE_MSG_SAVED = 2,
}; // :92:6

/* ======== components/network/ble/blecontroller/modules/ke/api/ke_task.h ======== */

enum KE_TASK_STATUS {
    KE_TASK_OK = 0,
    KE_TASK_FAIL = 1,
    KE_TASK_UNKNOWN = 2,
    KE_TASK_CAPA_EXCEEDED = 3,
    KE_TASK_ALREADY_EXISTS = 4,
}; // :48:6

typedef int (*ke_msg_func_t)(const ke_msg_id_t, const void *, const ke_task_id_t, const ke_task_id_t); // :62:15

struct ke_msg_handler {
    ke_msg_id_t id;
    ke_msg_func_t func;
}; // :78:8

struct ke_state_handler {
    const struct ke_msg_handler *msg_table;
    uint16_t msg_cnt;
}; // :87:8

struct ke_task_desc {
    const struct ke_state_handler *state_handler;
    const struct ke_state_handler *default_handler;
    ke_state_t *state;
    uint16_t state_max;
    uint16_t idx_max;
}; // :102:8

/* ======== components/network/ble/blecontroller/modules/ke/api/ke_timer.h ======== */

struct ke_timer {
    struct ke_timer *next;
    ke_msg_id_t id;
    ke_task_id_t task;
    uint32_t time;
}; // :47:8

/* ======== components/network/ble/blecontroller/modules/ke/src/ke.c ======== */

struct ble_ke_env_tag ble_ke_env; // :47:24

uint32_t _patch_ble_ke_init(void *pRet); // :57:10
void ble_ke_init(void); // :90:7
uint32_t _patch_ble_ke_flush(void *pRet); // :126:10
void ble_ke_flush(void); // :160:7
uint32_t _patch_ble_ke_sleep_check(void *pRet); // :197:10
bool ble_ke_sleep_check(void); // :207:24

/* ======== components/network/ble/blecontroller/modules/ke/src/ke_env.h ======== */

struct ble_ke_env_tag {
    struct co_list queue_sent;
    struct co_list queue_saved;
    struct co_list queue_timer;
    struct mblock_free *heap[2];
    uint16_t heap_size[2];
}; // :40:8

struct ble_ke_env_tag ble_ke_env; // :67:30

/* ======== components/network/ble/blecontroller/modules/ke/src/ke_event.c ======== */

typedef void (*p_callback_t)(void); // :48:16

struct ble_ke_event_env_tag {
    uint32_t event_field;
    p_callback_t callback[10];
    uint8_t state;
}; // :61:8

struct ble_ke_event_env_tag ble_ke_event_env; // :80:30

uint32_t _patch_ble_ke_event_init(void *pRet); // :97:10
void ble_ke_event_init(void); // :104:7
uint32_t _patch_ble_ke_event_callback_set(void *pRet, uint8_t event_type, void (*p_callback)(void)); // :115:10
uint8_t ble_ke_event_callback_set(uint8_t event_type, void (*p_callback)(void)); // :134:10
uint32_t _patch_ble_ke_event_set(void *pRet, uint8_t event_type); // :160:10
void ble_ke_event_set(uint8_t event_type); // :184:7
uint32_t _patch_ble_ke_event_clear(void *pRet, uint8_t event_type); // :211:10
void ble_ke_event_clear(uint8_t event_type); // :229:7
uint8_t ble_ke_event_get(uint8_t event_type); // :250:9
uint32_t _patch_ble_ke_event_get_all(void *pRet); // :269:10
uint32_t ble_ke_event_get_all(void); // :276:11
uint32_t _patch_ble_ke_event_flush(void *pRet); // :288:10
void ble_ke_event_flush(void); // :295:7
uint32_t _patch_ble_ke_event_schedule(void *pRet); // :306:10
void ble_ke_event_schedule(void); // :342:7

/* ======== components/network/ble/blecontroller/modules/ke/src/ke_mem.c ======== */

struct mblock_free {
    uint16_t corrupt_check;
    uint16_t free_size;
    struct mblock_free *next;
    struct mblock_free *previous;
}; // :49:8

struct mblock_used {
    uint16_t corrupt_check;
    uint16_t size;
}; // :62:8

uint32_t _patch_ble_ke_mem_is_in_heap(void *pRet, uint8_t type, void *mem_ptr); // :76:10
bool ble_ke_mem_is_in_heap(uint8_t type, void *mem_ptr); // :95:24
uint32_t _patch_ble_ke_mem_init(void *pRet, uint8_t type, uint8_t *heap, uint16_t heap_size); // :125:10
void ble_ke_mem_init(uint8_t type, uint8_t *heap, uint16_t heap_size); // :157:7
bool ble_ke_mem_is_empty(uint8_t type); // :192:5
bool ble_ke_check_malloc(uint32_t size, uint8_t type); // :227:5
uint32_t _patch_ble_ke_malloc(void *pRet, uint32_t size, uint8_t type); // :297:10
void *ble_ke_malloc(uint32_t size, uint8_t type); // :455:8
uint32_t _patch_ble_ke_free(void *pRet, void *mem_ptr); // :618:10
void ble_ke_free(void *mem_ptr); // :752:7
uint32_t _patch_ble_ke_is_free(void *pRet, void *mem_ptr); // :889:10
bool ble_ke_is_free(void *mem_ptr); // :898:24

/* ======== components/network/ble/blecontroller/modules/ke/src/ke_msg.c ======== */

uint32_t _patch_ble_ke_msg_alloc(void *pRet, const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id, const uint16_t param_len); // :49:10
void *ble_ke_msg_alloc(const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id, const uint16_t param_len); // :71:8
uint32_t _patch_ble_ke_msg_send(void *pRet, const void *param_ptr); // :99:10
void ble_ke_msg_send(const void *param_ptr); // :114:7
uint32_t _patch_ble_ke_msg_get_sent_num(void *pRet); // :132:10
uint16_t ble_ke_msg_get_sent_num(void); // :144:11
uint32_t _patch_ble_ke_msg_send_basic(void *pRet, const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :161:10
void ble_ke_msg_send_basic(const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :170:7
void ble_ke_msg_forward(const void *param_ptr, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :182:6
void ble_ke_msg_forward_new_id(const void *param_ptr, const ke_msg_id_t msg_id, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :194:6
uint32_t _patch_ble_ke_msg_free(void *pRet, const struct ke_msg *msg); // :209:10
void ble_ke_msg_free(const struct ke_msg *msg); // :216:7
ke_msg_id_t ble_ke_msg_dest_id_get(const void *param_ptr); // :227:13
ke_msg_id_t ble_ke_msg_src_id_get(const void *param_ptr); // :235:13
bool ble_ke_msg_in_queue(const void *param_ptr); // :243:5

/* ======== components/network/ble/blecontroller/modules/ke/src/ke_queue.c ======== */

uint32_t _patch_ble_ke_queue_extract(void *pRet, struct co_list *const queue, bool (*func)(const struct co_list_hdr *, uint32_t), uint32_t arg); // :38:10
struct co_list_hdr *ble_ke_queue_extract(struct co_list *const queue, bool (*func)(const struct co_list_hdr *, uint32_t), uint32_t arg); // :94:22
uint32_t _patch_ble_ke_queue_insert(void *pRet, struct co_list *const queue, struct co_list_hdr *const element, bool (*cmp)(const struct co_list_hdr *, const struct co_list_hdr *)); // :155:10
void ble_ke_queue_insert(struct co_list *const queue, struct co_list_hdr *const element, bool (*cmp)(const struct co_list_hdr *, const struct co_list_hdr *)); // :207:7

/* ======== components/network/ble/blecontroller/modules/ke/src/ke_task.c ======== */

struct ke_task_elem {
    const struct ke_task_desc *p_desc;
}; // :54:8

struct ble_ke_task_env_tag {
    struct ke_task_elem task_list[5];
}; // :60:8

struct ble_ke_task_env_tag ble_ke_task_env; // :73:29

uint32_t _patch_ble_cmp_dest_id(void *pRet, const struct co_list_hdr *msg, uint32_t dest_id); // :94:10
bool ble_cmp_dest_id(const struct co_list_hdr *msg, uint32_t dest_id); // :104:24
uint32_t _patch_ble_ke_task_saved_update(void *pRet, const ke_task_id_t ke_task_id); // :129:10
void ble_ke_task_saved_update(const ke_task_id_t ke_task_id); // :155:7
uint32_t _patch_ble_ke_handler_search(void *pRet, const ke_msg_id_t msg_id, const struct ke_state_handler *state_handler); // :200:10
ke_msg_func_t ble_ke_handler_search(const ke_msg_id_t msg_id, const struct ke_state_handler *state_handler); // :224:16
uint32_t _patch_ble_ke_task_handler_get(void *pRet, const ke_msg_id_t msg_id, const ke_task_id_t task_id); // :263:10
ke_msg_func_t ble_ke_task_handler_get(const ke_msg_id_t msg_id, const ke_task_id_t task_id); // :301:16
uint32_t _patch_ble_ke_task_schedule(void *pRet); // :357:10
void ble_ke_task_schedule(void); // :431:7
uint32_t _patch_ble_ke_task_init(void *pRet); // :514:10
void ble_ke_task_init(void); // :525:7
uint32_t _patch_ble_ke_task_create(void *pRet, uint8_t task_type, const struct ke_task_desc *p_task_desc); // :539:10
uint8_t ble_ke_task_create(uint8_t task_type, const struct ke_task_desc *p_task_desc); // :571:10
uint8_t ble_ke_task_delete(uint8_t task_type); // :608:9
uint32_t _patch_ble_ke_state_set(void *pRet, const ke_task_id_t id, const ke_state_t state_id); // :630:10
void ble_ke_state_set(const ke_task_id_t id, const ke_state_t state_id); // :670:7
uint32_t _patch_ble_ke_state_get(void *pRet, const ke_task_id_t id); // :713:10
ke_state_t ble_ke_state_get(const ke_task_id_t id); // :743:13
int ble_ke_msg_discard(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :779:5
int ble_ke_msg_save(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id); // :785:5
void ble_ke_task_msg_flush(ke_task_id_t task); // :793:6
ke_task_id_t ble_ke_task_check(ke_task_id_t task); // :833:14

/* ======== components/network/ble/blecontroller/modules/ke/src/ke_timer.c ======== */

uint32_t _patch_ke_time(void *pRet); // :86:10
uint32_t ble_ke_time(void); // :121:11
uint32_t _patch_ble_ke_time_cmp(void *pRet, uint32_t newer, uint32_t older); // :170:10
bool ble_ke_time_cmp(uint32_t newer, uint32_t older); // :180:24
uint32_t _patch_ble_ke_time_past(void *pRet, uint32_t time); // :203:10
bool ble_ke_time_past(uint32_t time); // :213:24
uint32_t _patch_ble_ke_timer_hw_set(void *pRet, struct ke_timer *timer); // :234:10
void ble_ke_timer_hw_set(struct ke_timer *timer); // :297:7
uint32_t _patch_ble_cmp_abs_time(void *pRet, const struct co_list_hdr *timerA, const struct co_list_hdr *timerB); // :375:10
bool ble_cmp_abs_time(const struct co_list_hdr *timerA, const struct co_list_hdr *timerB); // :387:24
uint32_t _patch_ble_cmp_timer_id(void *pRet, const struct co_list_hdr *timer, uint32_t timer_task); // :414:10
bool ble_cmp_timer_id(const struct co_list_hdr *timer, uint32_t timer_task); // :430:24
uint32_t _patch_ble_ke_timer_schedule(void *pRet); // :460:10
void ble_ke_timer_schedule(void); // :505:7
uint32_t _patch_ble_ke_timer_init(void *pRet); // :560:10
void ble_ke_timer_init(void); // :568:7
uint32_t _patch_ble_ke_timer_set(void *pRet, const ke_msg_id_t timer_id, const ke_task_id_t task_id, uint32_t delay); // :580:10
void ble_ke_timer_set(const ke_msg_id_t timer_id, const ke_task_id_t task_id, uint32_t delay); // :654:7
uint32_t _patch_ble_ke_timer_clear(void *pRet, const ke_msg_id_t timer_id, const ke_task_id_t task_id); // :731:10
void ble_ke_timer_clear(const ke_msg_id_t timer_id, const ke_task_id_t task_id); // :776:7
uint32_t _patch_ble_ke_timer_active(void *pRet, const ke_msg_id_t timer_id, const ke_task_id_t task_id); // :824:10
bool ble_ke_timer_active(const ke_msg_id_t timer_id, const ke_task_id_t task_id); // :857:24
void ble_ke_timer_adjust_all(uint32_t delay); // :896:6
uint32_t _patch_ble_ke_timer_target_get(void *pRet); // :912:10
uint32_t ble_ke_timer_target_get(void); // :931:11

/* ======== components/network/ble/blecontroller/modules/rf/src/rf_bouffalo.c ======== */

static int8_t g_txpower_dbm; // :27:15
static int8_t g_txpower_offset; // :28:15

void ble_rf_set_pwr_offset(int8_t offset); // :30:6
static void rf_txpwr_max_set(int8_t txpwr_dbm); // :41:13
void ble_controller_set_tx_pwr(int ble_tx_power); // :60:6
static void rf_reset(void); // :79:13
static void rf_force_agc_enable(bool en); // :135:13
static bool rf_txpwr_dec(uint8_t dec); // :142:12
static bool rf_txpwr_inc(uint8_t inc); // :154:12
static uint8_t rf_txpwr_dbm_get(uint8_t txpwr_idx, uint8_t modulation); // :173:16
static int8_t rf_rssi_convert(uint8_t rssi_reg); // :184:15
static uint32_t rf_reg_rd(uint16_t addr); // :195:17
static void rf_reg_wr(uint16_t addr, uint32_t value); // :206:13
static void rf_sleep(void); // :215:13
void ble_rf_init(struct rwip_rf_api *api); // :229:6

/* ======== components/network/ble/blecontroller/modules/rwip/api/rwip.h ======== */

typedef struct {
    uint8_t msg_type;
    void *params;
} rw_task_msg_t; // :48:2

enum rw_task_msg_type {
    HOST_TO_FW_MSG = 1,
    FW_TO_FW_MSG = 2,
}; // :50:6

enum prevent_sleep {
    RW_WAKE_UP_ONGOING = 1,
    RW_TL_TX_ONGOING = 2,
    RW_TL_RX_ONGOING = 4,
    RW_AHI_TIMEOUT = 8,
    RW_CRYPT_ONGOING = 16,
    RW_DELETE_ELT_ONGOING = 32,
    RW_CSB_NOT_LPO_ALLOWED = 64,
    RW_MWS_WLAN_EVENT_GENERATOR_ACTIVE = 128,
}; // :65:6

enum rwip_eif_types {
    RWIP_EIF_HCIC = 0,
    RWIP_EIF_HCIH = 1,
    RWIP_EIF_AHI = 2,
}; // :91:6

struct rwip_rf_api {
    void (*reset)(void);
    void (*force_agc_enable)(bool);
    bool (*txpwr_dec)(uint8_t);
    bool (*txpwr_inc)(uint8_t);
    void (*txpwr_max_set)(int8_t);
    uint8_t (*txpwr_dbm_get)(uint8_t, uint8_t);
    uint8_t (*txpwr_cs_get)(int8_t);
    int8_t (*rssi_convert)(uint8_t);
    uint32_t (*reg_rd)(uint16_t);
    void (*reg_wr)(uint16_t, uint32_t);
    void (*sleep)(void);
    uint8_t txpwr_max;
    int8_t rssi_high_thr;
    int8_t rssi_low_thr;
    int8_t rssi_interf_thr;
    uint8_t wakeup_delay;
}; // :129:8

struct rwip_prio {
    uint8_t value;
    uint8_t increment;
}; // :166:8

typedef void (*rwip_eif_callback)(void *, uint8_t); // :190:16

struct rwip_eif_api {
    void (*read)(uint8_t *, uint32_t, rwip_eif_callback, void *);
    void (*write)(const uint8_t *, uint32_t, rwip_eif_callback, void *);
    void (*flow_on)(void);
    bool (*flow_off)(void);
}; // :195:8

struct rwip_rf_api rwip_rf; // :244:27
const struct rwip_prio rwip_priority[7]; // :247:31
const uint8_t rwip_coex_cfg[5]; // :249:22

/* ======== components/network/ble/blecontroller/modules/rwip/api/rwip_config.h ======== */

enum KE_EVENT_TYPE {
    KE_EVENT_ECC_MULTIPLICATION = 0,
    KE_EVENT_BLE_CRYPT = 1,
    KE_EVENT_KE_MESSAGE = 2,
    KE_EVENT_KE_TIMER = 3,
    KE_EVENT_H4TL_TX = 4,
    KE_EVENT_H4TL_CMD_HDR_RX = 5,
    KE_EVENT_H4TL_CMD_PLD_RX = 6,
    KE_EVENT_BT_PSCAN_PROC = 7,
    KE_EVENT_BLE_EVT_DEFER = 8,
    KE_EVENT_BLE_EVT_DELETE = 9,
    KE_EVENT_MAX = 10,
}; // :625:6

enum KE_TASK_TYPE {
    TASK_LLM = 0,
    TASK_LLC = 1,
    TASK_LLD = 2,
    TASK_DBG = 3,
    TASK_HCI_ONCHIP = 4,
    TASK_MAX = 5,
    TASK_NONE = 255,
}; // :686:6

enum rwip_coex_config_idx {
    RWIP_COEX_CON_IDX = 0,
    RWIP_COEX_CON_DATA_IDX = 1,
    RWIP_COEX_ADV_IDX = 2,
    RWIP_COEX_SCAN_IDX = 3,
    RWIP_COEX_INIT_IDX = 4,
    RWIP_COEX_CFG_MAX = 5,
}; // :882:6

enum rwip_prio_idx {
    RWIP_PRIO_SCAN_IDX = 0,
    RWIP_PRIO_INIT_IDX = 1,
    RWIP_PRIO_LE_ESTAB_IDX = 2,
    RWIP_PRIO_LE_CON_IDLE_IDX = 3,
    RWIP_PRIO_LE_CON_ACT_IDX = 4,
    RWIP_PRIO_ADV_IDX = 5,
    RWIP_PRIO_ADV_HDC_IDX = 6,
    RWIP_PRIO_IDX_MAX = 7,
}; // :909:6

enum rwip_prio_dft {
    RWIP_PRIO_SCAN_DFT = 5,
    RWIP_PRIO_INIT_DFT = 5,
    RWIP_PRIO_LE_ESTAB_DFT = 20,
    RWIP_PRIO_LE_CON_IDLE_DFT = 10,
    RWIP_PRIO_LE_CON_ACT_DFT = 15,
    RWIP_PRIO_ADV_DFT = 5,
    RWIP_PRIO_ADV_HDC_DFT = 10,
    RWIP_PRIO_MAX = 31,
}; // :972:6

enum rwip_incr_dft {
    RWIP_INCR_SCAN_DFT = 1,
    RWIP_INCR_INIT_DFT = 1,
    RWIP_INCR_LE_ESTAB_DFT = 1,
    RWIP_INCR_LE_CON_IDLE_DFT = 1,
    RWIP_INCR_LE_CON_ACT_DFT = 11,
    RWIP_INCR_ADV_DFT = 1,
    RWIP_INCR_ADV_HDC_PRIO_DFT = 1,
}; // :1037:6

/* ======== components/network/ble/blecontroller/modules/rwip/api/rwip_task.h ======== */

enum TASK_API_ID {
    TASK_ID_LLM = 0,
    TASK_ID_LLC = 1,
    TASK_ID_LLD = 2,
    TASK_ID_DBG = 3,
    TASK_ID_LM = 4,
    TASK_ID_LC = 5,
    TASK_ID_LB = 6,
    TASK_ID_LD = 7,
    TASK_ID_HCI = 8,
    TASK_ID_DISPLAY = 9,
    TASK_ID_L2CC = 10,
    TASK_ID_GATTM = 11,
    TASK_ID_GATTC = 12,
    TASK_ID_GAPM = 13,
    TASK_ID_GAPC = 14,
    TASK_ID_APP = 15,
    TASK_ID_AHI = 16,
    TASK_ID_DISS = 20,
    TASK_ID_DISC = 21,
    TASK_ID_PROXM = 22,
    TASK_ID_PROXR = 23,
    TASK_ID_FINDL = 24,
    TASK_ID_FINDT = 25,
    TASK_ID_HTPC = 26,
    TASK_ID_HTPT = 27,
    TASK_ID_BLPS = 28,
    TASK_ID_BLPC = 29,
    TASK_ID_HRPS = 30,
    TASK_ID_HRPC = 31,
    TASK_ID_TIPS = 32,
    TASK_ID_TIPC = 33,
    TASK_ID_SCPPS = 34,
    TASK_ID_SCPPC = 35,
    TASK_ID_BASS = 36,
    TASK_ID_BASC = 37,
    TASK_ID_HOGPD = 38,
    TASK_ID_HOGPBH = 39,
    TASK_ID_HOGPRH = 40,
    TASK_ID_GLPS = 41,
    TASK_ID_GLPC = 42,
    TASK_ID_RSCPS = 43,
    TASK_ID_RSCPC = 44,
    TASK_ID_CSCPS = 45,
    TASK_ID_CSCPC = 46,
    TASK_ID_ANPS = 47,
    TASK_ID_ANPC = 48,
    TASK_ID_PASPS = 49,
    TASK_ID_PASPC = 50,
    TASK_ID_CPPS = 51,
    TASK_ID_CPPC = 52,
    TASK_ID_LANS = 53,
    TASK_ID_LANC = 54,
    TASK_ID_IPSS = 55,
    TASK_ID_IPSC = 56,
    TASK_ID_ENVS = 57,
    TASK_ID_ENVC = 58,
    TASK_ID_WSCS = 59,
    TASK_ID_WSCC = 60,
    TASK_ID_UDSS = 61,
    TASK_ID_UDSC = 62,
    TASK_ID_BCSS = 63,
    TASK_ID_BCSC = 64,
    TASK_ID_WPTS = 65,
    TASK_ID_WPTC = 66,
    TASK_ID_PLXS = 67,
    TASK_ID_PLXC = 68,
    TASK_ID_AM0 = 240,
    TASK_ID_AM0_HAS = 241,
    TASK_ID_INVALID = 255,
}; // :50:6

/* ======== components/network/ble/blecontroller/modules/rwip/src/rwip.c ======== */

typedef struct {
    uint32_t time;
    uint32_t next_tick;
} rwip_time_t; // :142:3

const struct rwip_prio rwip_priority[7]; // :190:24
const uint8_t rwip_coex_cfg[5]; // :225:15

struct rwip_env_tag {
    uint32_t lp_cycle_wakeup_delay;
    uint32_t sleep_acc_error;
    uint16_t sleep_algo_dur;
    uint16_t prevent_sleep;
    bool sleep_enable;
    bool ext_wakeup_enable;
}; // :258:8

static struct rwip_env_tag rwip_env; // :280:28
struct rwip_rf_api rwip_rf; // :283:20
uint8_t *rwip_heap_em; // :303:10
uint32_t rwip_heap_ram[707]; // :304:10
int32_t sw_wakeup_cnt; // :1071:9
int32_t sleep_dur_cnt; // :1078:9
int32_t sleep_stat_cnt; // :1079:9
int32_t sleep_cnt; // :1080:9

bool rwip_ext_wakeup_enable(void); // :1483:5
uint32_t rwip_sleep_lpcycles_2_us(uint32_t lpcycles); // :1506:10
uint32_t rwip_us_2_lpcycles(uint32_t us); // :1558:10
void rwip_wlcoex_set(bool state); // :1615:6

/* ======== components/network/ble/blecontroller/plf/refip/src/arch/arch.h ======== */

void (*ble_post_task_ptr)(void); // :246:15
uint32_t (*_rom_patch_hook)(void *, ...); // :252:19

/* ======== components/network/ble/blecontroller/plf/refip/src/arch/main/arch_main.c ======== */

QueueHandle_t xRwmainQueue; // :104:15
uint32_t rw_main_task_hdl; // :105:10
const struct rwip_eif_api uart_api; // :127:27
uint32_t error; // :147:10
uint32_t critical_sec_cnt; // :149:10
void *(*ble_memcpy_ptr)(void *, const void *, unsigned int); // :153:10
void *(*ble_memset_ptr)(void *, int, unsigned int); // :154:10
int (*ble_memcmp_ptr)(const void *, const void *, unsigned int); // :155:8
void (*ble_post_task_ptr)(void); // :156:9
uint32_t (*_rom_patch_hook)(void *, ...); // :157:13

void BLE_ROM_hook_init(void); // :168:6
uint32_t BLE_ROM_patch(void *pRet); // :244:10
uint16_t get_stack_usage(void); // :582:10
void platform_reset(uint32_t error); // :591:6
void blecontroller_main(void *pvParameters); // :627:6
bool rw_main_task_post(void *msg, uint32_t timeout); // :655:5
void rw_main_task_post_from_isr(void); // :666:6
void rw_main_task_post_from_fw(void); // :682:6
void bdaddr_init(void); // :706:6

volatile uint8_t Is_ext_scan_enable; // :769:18
volatile uint8_t Is_ready_to_rec_auxpacket; // :770:18
volatile uint32_t Rec_sync_basecnt; // :772:19
volatile uint32_t Rec_sync_fnt; // :773:19

void ble_controller_init(uint8_t task_priority); // :782:6
void ble_controller_deinit(void); // :866:6
const struct rwip_eif_api *rwip_eif_get(uint8_t type); // :890:28

/* ======== components/network/ble/blecontroller/plf/refip/src/driver/sec_eng/sec_eng.c ======== */

struct pka0_pld_cfg {
    union {
        struct {
            uint32_t size:12;
            uint32_t d_reg_index:8;
            uint32_t d_reg_type:4;
            uint32_t op:7;
            uint32_t last_op:1;
        } BF;
        uint32_t WORD;
    } value;
}; // :48:8

struct pka0_common_op_first_cfg {
    union {
        struct {
            uint32_t s0_reg_idx:8;
            uint32_t s0_reg_type:4;
            uint32_t d_reg_idx:8;
            uint32_t d_reg_type:4;
            uint32_t op:7;
            uint32_t last_op:1;
        } BF;
        uint32_t WORD;
    } value;
}; // :61:8

struct pka0_common_op_snd_cfg_S1_only {
    union {
        struct {
            uint32_t reserved_0_11:12;
            uint32_t s1_reg_idx:8;
            uint32_t s1_reg_type:4;
            uint32_t reserved_24_31:8;
        } BF;
        uint32_t WORD;
    } value;
}; // :75:8

struct pka0_common_op_snd_cfg_S2_only {
    union {
        struct {
            uint32_t s2_reg_idx:8;
            uint32_t s2_reg_type:4;
            uint32_t reserved_12_31:20;
        } BF;
        uint32_t WORD;
    } value;
}; // :87:8

struct pka0_common_op_snd_cfg_S1_S2 {
    union {
        struct {
            uint32_t s2_reg_idx:8;
            uint32_t s2_reg_type:4;
            uint32_t s1_reg_idx:8;
            uint32_t s1_reg_type:4;
            uint32_t reserved_24_31:8;
        } BF;
        uint32_t WORD;
    } value;
}; // :98:8

struct pka0_bit_shift_op_cfg {
    union {
        struct {
            uint32_t bit_shift:15;
            uint32_t reserved_24_31:17;
        } BF;
        uint32_t WORD;
    } value;
}; // :111:8

void sec_eng_pka0_reset(void); // :124:6
void sec_eng_pka0_clear_int(void); // :137:6
void sec_eng_pka0_pld(uint16_t size, const uint32_t *data, uint8_t reg_index, uint8_t reg_type, uint8_t op, bool last_op); // :219:6
static void pka0_write_common_op_first_cfg(uint8_t s0_reg_index, uint8_t s0_reg_type, uint8_t d_reg_index, uint8_t d_reg_type, uint8_t op, bool last_op); // :228:13
static void pka0_write_common_op_snd_cfg_S1(uint8_t s1_reg_index, uint8_t s1_reg_type); // :249:13
static void pka0_write_common_op_snd_cfg_S1_S2(uint8_t s1_reg_index, uint8_t s1_reg_type, uint8_t s2_reg_index, uint8_t s2_reg_type); // :275:13
void sec_eng_pka0_wait_4_isr(void); // :291:6
void sec_eng_pka0_read_data(uint8_t reg_ype, uint8_t reg_idx, uint32_t *result, uint8_t ret_size); // :342:6
void sec_eng_pka0_clir(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t size); // :363:6
void sec_eng_pka0_movdat(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx); // :376:6
void sec_eng_pka0_msub(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s1_reg_type, uint8_t s1_reg_idx, uint8_t s2_reg_type, uint8_t s2_reg_idx); // :393:6
void sec_eng_pka0_mrem(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s2_reg_type, uint8_t s2_reg_idx); // :400:6
void sec_eng_pka0_mmul(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s1_reg_type, uint8_t s1_reg_idx, uint8_t s2_reg_type, uint8_t s2_reg_idx); // :407:6
void sec_eng_pka0_mexp(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s1_reg_type, uint8_t s1_reg_idx, uint8_t s2_reg_type, uint8_t s2_reg_idx); // :414:6
void sec_eng_pka0_lcmp(uint8_t *cout, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s1_reg_type, uint8_t s1_reg_idx); // :422:6
void sec_eng_pka0_ladd(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s1_reg_type, uint8_t s1_reg_idx); // :438:6
void sec_eng_pka0_lsub(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s1_reg_type, uint8_t s1_reg_idx); // :446:6
void sec_eng_pka0_lmul(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint8_t s1_reg_type, uint8_t s1_reg_idx); // :453:6
void sec_eng_pka0_lmul2n(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint16_t bit_shift); // :460:6
void sec_eng_pka0_ldiv2n(uint8_t last_op, uint8_t d_reg_type, uint8_t d_reg_idx, uint8_t s0_reg_type, uint8_t s0_reg_idx, uint16_t bit_shift); // :474:6

/* ======== components/network/ble/blecontroller/plf/refip/src/driver/uart/uart.c ======== */

struct uart_txchannel {
    void (*callback)(void *, uint8_t);
    void *dummy;
    uint32_t remain_size;
    const uint8_t *remain_data;
}; // :48:8

struct uart_rxchannel {
    void (*callback)(void *, uint8_t);
    void *dummy;
    uint32_t remain_size;
    uint8_t *remain_data;
}; // :58:8

struct uart_env_tag {
    struct uart_txchannel tx;
    struct uart_rxchannel rx;
}; // :69:8

static struct uart_env_tag uart_env; // :83:28
static uint32_t uart_addr; // :85:17
static uint8_t uart_id; // :86:16

void uart_flow_on(void); // :415:6
bool uart_flow_off(void); // :421:5
void uart_finish_transfers(void); // :448:6
static void write_data(const uint8_t *bufptr, uint32_t size); // :456:13
static uint8_t read_data(void); // :470:16
static uint8_t read_fifo_data(uint8_t num); // :488:16
void uart_read(uint8_t *bufptr, uint32_t size, void (*callback)(void *, uint8_t), void *dummy); // :511:6
void uart_write(const uint8_t *bufptr, uint32_t size, void (*callback)(void *, uint8_t), void *dummy); // :554:6
void uart_read_blocking(uint8_t *bufptr, uint32_t size); // :599:6
void uart_write_blocking(const uint8_t *bufptr, uint32_t size); // :612:6
void uart_rx_isr(void); // :645:6
void uart_tx_isr(void); // :697:6
void uart_rx_fifo_isr(void); // :725:6
void uart_tx_fifo_isr(void); // :824:6
void uart_isr(void); // :865:6
