#ifndef __CFG_API_H__
#define __CFG_API_H__

#include <stdint.h>

#include <utils_tlv_bl.h>


struct cfg_element_entry {
    uint32_t task; // +0
    uint16_t element; // +4
    uint16_t type; // +6
    char *name; // +8
    void *val; // +12
    int (*set)(struct cfg_element_entry *, void *, void *); // +16
    int (*get)(struct cfg_element_entry *, void *, void *); // +20
    int (*notify)(struct cfg_element_entry *, void *, void *, enum CFG_ELEMENT_TYPE_OPS); // +24
};

extern struct cfg_element_entry _ld_bl_static_cfg_entry_start;
extern struct cfg_element_entry _ld_bl_static_cfg_entry_end;

const char *cfg_api_element_dump(void *val, enum CFG_ELEMENT_TYPE type, char *strs);
int cfg_api_element_set(uint32_t task, uint32_t element, uint32_t type, void *arg1, void *arg2);

#endif // __CFG_API_H__
