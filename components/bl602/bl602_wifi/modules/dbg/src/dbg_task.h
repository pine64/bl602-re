
typedef struct dbg_get_sys_stat_cfm dbg_get_sys_stat_cfm, *dbg_get_sys_stat_cfm;

typedef ulong uint32_t;

struct dbg_get_sys_stat_cfm {
    uint32_t cpu_sleep_time;
    uint32_t doze_time;
    uint32_t stats_time;
};

typedef struct dbg_mem_read_cfm dbg_mem_read_cfm, *dbg_mem_read_cfm;

struct dbg_mem_read_cfm {
    uint32_t memaddr;
    uint32_t memdata;
};

typedef struct dbg_mem_read_req dbg_mem_read_req, *dbg_mem_read_req;

struct dbg_mem_read_req {
    uint32_t memaddr;
};

typedef struct dbg_mem_write_cfm dbg_mem_write_cfm, *dbg_mem_write_cfm;

struct dbg_mem_write_cfm {
    uint32_t memaddr;
    uint32_t memdata;
};

typedef struct dbg_mem_write_req dbg_mem_write_req, *dbg_mem_write_req;

struct dbg_mem_write_req {
    uint32_t memaddr;
    uint32_t memdata;
};

typedef enum dbg_msg_tag {
    DBG_MEM_READ_CFM=1025,
    DBG_SET_SEV_FILTER_REQ=1030,
    DBG_SET_MOD_FILTER_REQ=1028,
    DBG_ERROR_IND=1032,
    DBG_GET_SYS_STAT_CFM=1034,
    DBG_MEM_WRITE_REQ=1026,
    DBG_MEM_READ_REQ=1024,
    DBG_SET_SEV_FILTER_CFM=1031,
    DBG_SYS_STAT_TIMER=1035,
    DBG_MAX=1035,
    DBG_MEM_WRITE_CFM=1027,
    DBG_SET_MOD_FILTER_CFM=1029,
    DBG_GET_SYS_STAT_REQ=1033
} dbg_msg_tag;

typedef struct dbg_set_mod_filter_req dbg_set_mod_filter_req, *dbg_set_mod_filter_req;

struct dbg_set_mod_filter_req {
    uint32_t mod_filter;
};

typedef struct dbg_set_sev_filter_req dbg_set_sev_filter_req, *dbg_set_sev_filter_req;

struct dbg_set_sev_filter_req {
    uint32_t sev_filter;
};

#if 0 //TODO EXISTS ALEADY
/**
* @file dbg_task.h
* Header file for BL602
*/
#ifndef __DBG_TASK_H__
#define __DBG_TASK_H__

enum dbg_msg_tag {
    DBG_MEM_READ_REQ = 1024,
    DBG_MEM_READ_CFM = 1025,
    DBG_MEM_WRITE_REQ = 1026,
    DBG_MEM_WRITE_CFM = 1027,
    DBG_SET_MOD_FILTER_REQ = 1028,
    DBG_SET_MOD_FILTER_CFM = 1029,
    DBG_SET_SEV_FILTER_REQ = 1030,
    DBG_SET_SEV_FILTER_CFM = 1031,
    DBG_ERROR_IND = 1032,
    DBG_GET_SYS_STAT_REQ = 1033,
    DBG_GET_SYS_STAT_CFM = 1034,
    DBG_SYS_STAT_TIMER = 1035,
};
struct dbg_mem_read_req {
    uint32_t memaddr; // +0
};
struct dbg_mem_read_cfm {
    uint32_t memaddr; // +0
    uint32_t memdata; // +4
};
struct dbg_mem_write_req {
    uint32_t memaddr; // +0
    uint32_t memdata; // +4
};
struct dbg_mem_write_cfm {
    uint32_t memaddr; // +0
    uint32_t memdata; // +4
};
struct dbg_set_mod_filter_req {
    uint32_t mod_filter; // +0
};
struct dbg_set_sev_filter_req {
    uint32_t sev_filter; // +0
};
struct dbg_get_sys_stat_cfm {
    uint32_t cpu_sleep_time; // +0
    uint32_t doze_time; // +4
    uint32_t stats_time; // +8
};
const struct ke_state_handler dbg_default_handler;

#endif // __DBG_TASK_H__
#endf 0 //TODO EXISTS ALEADY
