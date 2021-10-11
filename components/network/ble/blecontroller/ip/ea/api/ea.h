/**
* @file ea.h
* Header file for BL602
*/
#ifndef __EA_H__
#define __EA_H__

#include <stdint.h>

#include <co_list.h>

enum ea_error {
    EA_ERROR_OK = 0,
    EA_ERROR_REJECTED = 1,
    EA_ERROR_NOT_FOUND = 2,
    EA_ERROR_BW_FULL = 3,
};
enum ea_param_req_action {
    EA_PARAM_REQ_GET = 0,
    EA_PARAM_REQ_CHECK = 1,
};
enum ea_elt_asap_type {
    EA_FLAG_NO_ASAP = 0,
    EA_FLAG_ASAP_NO_LIMIT = 1,
    EA_FLAG_ASAP_LIMIT = 2,
    EA_FLAG_MAX = 3,
};
enum ea_elt_asap_parity {
    EA_EVEN_SLOT = 0,
    EA_ODD_SLOT = 1,
    EA_NO_PARITY = 2,
};
struct ea_elt_tag {
    struct co_list_hdr hdr; // +0
    struct ea_elt_tag *linked_element; // +4
    uint32_t timestamp; // +8
    uint32_t asap_limit; // +12
    uint16_t asap_settings; // +16
    uint16_t duration_min; // +18
    uint16_t delay; // +20
    uint8_t current_prio; // +22
    uint8_t stop_latency1; // +23
    uint8_t stop_latency2; // +24
    uint8_t start_latency; // +25
    void (*ea_cb_start)(struct ea_elt_tag *); // +28
    void (*ea_cb_stop)(struct ea_elt_tag *); // +32
    void (*ea_cb_cancel)(struct ea_elt_tag *); // +36
    void *env; // +40
};
struct ea_interval_tag {
    struct co_list_hdr hdr; // +0
    uint16_t interval_used; // +4
    uint16_t offset_used; // +6
    uint16_t bandwidth_used; // +8
    uint16_t conhdl_used; // +10
    uint16_t role_used; // +12
    uint16_t linkid; // +14
};
struct ea_param_input {
    uint16_t interval_min; // +0
    uint16_t interval_max; // +2
    uint32_t duration_min; // +4
    uint16_t duration_max; // +8
    uint8_t pref_period; // +10
    uint16_t offset; // +12
    uint8_t action; // +14
    uint16_t conhdl; // +16
    uint16_t role; // +18
    bool odd_offset; // +20
    uint16_t linkid; // +22
};
struct ea_param_output {
    uint16_t interval; // +0
    uint32_t duration; // +4
    uint16_t offset; // +8
};

void ea_elt_cancel(struct ea_elt_tag *new_elt);
void ea_init(bool reset);
struct ea_elt_tag *ea_elt_create(uint16_t size_of_env);
uint8_t ea_elt_insert(struct ea_elt_tag *elt);
uint8_t ea_elt_remove(struct ea_elt_tag *elt);
struct ea_interval_tag *ea_interval_create(void);
void ea_interval_insert(struct ea_interval_tag *interval_to_add);
void ea_interval_remove(struct ea_interval_tag *interval_to_remove);
void ea_interval_delete(struct ea_interval_tag *interval_to_remove);
void ea_finetimer_isr(void);
void ea_sw_isr(void);
uint8_t ea_offset_req(struct ea_param_input *input_param, struct ea_param_output *output_param);
uint32_t ea_time_get_halfslot_rounded(void);
uint32_t ea_time_get_slot_rounded(void);
uint32_t ea_timer_target_get(uint32_t current_time);
void ea_interval_duration_req(struct ea_param_input *input_param, struct ea_param_output *output_param);

#endif // __EA_H__
