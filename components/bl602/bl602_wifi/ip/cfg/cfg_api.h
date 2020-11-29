
int anon_subr_int_cfg_element_entry_ptr_void_ptr_void_ptr_CFG_ELEMENT_TYPE_OPS_for_notify(cfg_element_entry * , void * , void * , CFG_ELEMENT_TYPE_OPS );
int anon_subr_int_cfg_element_entry_ptr_void_ptr_void_ptr_for_get(cfg_element_entry * , void * , void * );
int anon_subr_int_cfg_element_entry_ptr_void_ptr_void_ptr_for_set(cfg_element_entry * , void * , void * );
void cfg_api_element_dump(void);
void cfg_api_element_set(void);
typedef struct cfg_element_entry cfg_element_entry, *cfg_element_entry;

typedef enum CFG_ELEMENT_TYPE_OPS {
    CFG_ELEMENT_TYPE_OPS_SET=0,
    CFG_ELEMENT_TYPE_OPS_RESET=2,
    CFG_ELEMENT_TYPE_OPS_DUMP_DEBUG=3,
    CFG_ELEMENT_TYPE_OPS_UNKNOWN=4,
    CFG_ELEMENT_TYPE_OPS_GET=1
} CFG_ELEMENT_TYPE_OPS;

typedef ulong uint32_t;

typedef ushort uint16_t;

int anon_subr_int_cfg_element_entry_ptr_void_ptr_void_ptr_for_set(cfg_element_entry * , void * , void * );
int anon_subr_int_cfg_element_entry_ptr_void_ptr_void_ptr_for_get(cfg_element_entry * , void * , void * );
int anon_subr_int_cfg_element_entry_ptr_void_ptr_void_ptr_CFG_ELEMENT_TYPE_OPS_for_notify(cfg_element_entry * , void * , void * , CFG_ELEMENT_TYPE_OPS );
struct cfg_element_entry {
    uint32_t task;
    uint16_t element;
    uint16_t type;
    char * name;
    void * val;
    int (* set)(struct cfg_element_entry *, void *, void *);
    int (* get)(struct cfg_element_entry *, void *, void *);
    int (* notify)(struct cfg_element_entry *, void *, void *, enum CFG_ELEMENT_TYPE_OPS);
};

#if 0 //TODO EXISTS ALEADY
/**
* @file cfg_api.h
* Header file for BL602
*/
#ifndef __CFG_API_H__
#define __CFG_API_H__

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

#endif // __CFG_API_H__
#endf 0 //TODO EXISTS ALEADY
