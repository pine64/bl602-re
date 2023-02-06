#include <modules/dbg/dbg.h>
#include <utils.h>

struct debug_env_tag dbg_env;

void dbg_init(void) {
    memset(&dbg_env, 0, sizeof(struct debug_env_tag));
    dbg_env.filter_module = 0xffffffff;
    dbg_env.filter_severity = DBG_SEV_IDX_ERR;
}
