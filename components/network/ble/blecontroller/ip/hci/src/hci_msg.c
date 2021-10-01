#include "hci_int.h"

const struct hci_cmd_desc_tag hci_cmd_desc_tab_lk_ctrl[3];
const struct hci_cmd_desc_tag hci_cmd_desc_tab_ctrl_bb[10];
const struct hci_cmd_desc_tag hci_cmd_desc_tab_info_par[5];
const struct hci_cmd_desc_tag hci_cmd_desc_tab_stat_par[1];
const struct hci_cmd_desc_tag hci_cmd_desc_tab_le[49];
const struct hci_cmd_desc_tag hci_cmd_desc_tab_vs[4];
const struct hci_cmd_desc_tab_ref hci_cmd_desc_root_tab[6];
const struct hci_evt_desc_tag hci_evt_desc_tab[9];
const struct hci_evt_desc_tag hci_evt_le_desc_tab[12];

static uint8_t hci_pack_bytes(uint8_t **pp_in, uint8_t **pp_out, uint8_t *p_in_end, uint8_t *p_out_end, uint8_t len);
static uint8_t hci_host_nb_cmp_pkts_cmd_pkupk(uint8_t *out, uint8_t *in, uint16_t *out_len, uint16_t in_len);
static uint8_t hci_le_adv_report_evt_pkupk(uint8_t *out, uint8_t *in, uint16_t *out_len, uint16_t in_len);
static uint8_t hci_le_dir_adv_report_evt_pkupk(uint8_t *out, uint8_t *in, uint16_t *out_len, uint16_t in_len);
const struct hci_cmd_desc_tag *hci_look_for_cmd_desc(uint16_t opcode);
const struct hci_evt_desc_tag *hci_look_for_evt_desc(uint8_t code);
const struct hci_evt_desc_tag *hci_look_for_le_evt_desc(uint8_t subcode);




/** *hci_look_for_cmd_desc
 */
const struct hci_cmd_desc_tag *hci_look_for_cmd_desc(uint16_t opcode)
{
	__builtin_trap();
}

/** *hci_look_for_evt_desc
 */
const struct hci_evt_desc_tag *hci_look_for_evt_desc(uint8_t code)
{
	__builtin_trap();
}

/** *hci_look_for_le_evt_desc
 */
const struct hci_evt_desc_tag *hci_look_for_le_evt_desc(uint8_t subcode)
{
	__builtin_trap();
}

/** hci_pack_bytes
 */
static uint8_t hci_pack_bytes(uint8_t **pp_in, uint8_t **pp_out, uint8_t *p_in_end, uint8_t *p_out_end, uint8_t len)
{
	__builtin_trap();
}

/** hci_host_nb_cmp_pkts_cmd_pkupk
 */
static uint8_t hci_host_nb_cmp_pkts_cmd_pkupk(uint8_t *out, uint8_t *in, uint16_t *out_len, uint16_t in_len)
{
	__builtin_trap();
}

/** hci_le_adv_report_evt_pkupk
 */
static uint8_t hci_le_adv_report_evt_pkupk(uint8_t *out, uint8_t *in, uint16_t *out_len, uint16_t in_len)
{
	__builtin_trap();
}

/** hci_le_dir_adv_report_evt_pkupk
 */
static uint8_t hci_le_dir_adv_report_evt_pkupk(uint8_t *out, uint8_t *in, uint16_t *out_len, uint16_t in_len)
{
	__builtin_trap();
}
