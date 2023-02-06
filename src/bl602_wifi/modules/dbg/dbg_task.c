#include <modules/dbg/dbg_task.h>
#include <modules/dbg/dbg.h>

#include <modules/ke/ke_msg.h>
#include <modules/ke/ke_task.h>


static int dbg_mem_read_req_handler(const ke_msg_id_t msgid, const struct dbg_mem_read_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    struct dbg_mem_read_cfm* msg = (struct dbg_mem_read_cfm*) ke_msg_alloc(DBG_MEM_READ_CFM, src_id, dest_id, 8);
    msg->memaddr = param->memaddr;
    msg->memaddr = *(uint32_t*)param->memaddr;
    ke_msg_send(msg);
    return KE_MSG_CONSUMED;
}

static int dbg_mem_write_req_handler(const ke_msg_id_t msgid, const struct dbg_mem_write_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    struct dbg_mem_write_cfm* msg = (struct dbg_mem_write_cfm*) ke_msg_alloc(DBG_MEM_WRITE_CFM, src_id, dest_id, 8);
    *(uint32_t *)param->memaddr = param->memdata;
    msg->memaddr = param->memaddr;
    msg->memaddr = *(uint32_t*)param->memaddr;
    ke_msg_send(msg);
    return KE_MSG_CONSUMED;
}

static int dbg_set_mod_filter_req_handler(const ke_msg_id_t msgid, const struct dbg_set_mod_filter_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    dbg_env.filter_module = param->mod_filter;
    ke_msg_send_basic(DBG_SET_MOD_FILTER_CFM, src_id, dest_id);
    return KE_MSG_CONSUMED;
}

static int dbg_set_sev_filter_req_handler(const ke_msg_id_t msgid, const struct dbg_set_sev_filter_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    dbg_env.filter_severity = param->sev_filter;
    ke_msg_send_basic(DBG_SET_SEV_FILTER_CFM, src_id, dest_id);
    return KE_MSG_CONSUMED;
}

static int dbg_get_sys_stat_req_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    struct dbg_get_sys_stat_cfm * msg = (struct dbg_get_sys_stat_cfm *)ke_msg_alloc(DBG_GET_SYS_STAT_CFM, src_id, dest_id, 0xc);
    msg->cpu_sleep_time = 0;
    msg->doze_time = 0;
    msg->stats_time = 0;
    ke_msg_send(msg);
    return KE_MSG_CONSUMED;
}

const struct ke_msg_handler dbg_default_state[5] = {
    {
        .id = DBG_MEM_READ_REQ,
        .func = (ke_msg_func_t)dbg_mem_read_req_handler
    },
    {
        .id = DBG_MEM_WRITE_REQ,
        .func = (ke_msg_func_t)dbg_mem_write_req_handler
    },
    {
        .id = DBG_SET_MOD_FILTER_REQ,
        .func = (ke_msg_func_t)dbg_set_mod_filter_req_handler
    },
    {
        .id = DBG_SET_SEV_FILTER_REQ,
        .func = (ke_msg_func_t)dbg_set_sev_filter_req_handler,
    },
    {
        .id = DBG_GET_SYS_STAT_REQ,
        .func = (ke_msg_func_t)dbg_get_sys_stat_req_handler
    }
};

const struct ke_state_handler dbg_default_handler = {
    .msg_table = dbg_default_state,
    .msg_cnt = 5
};
