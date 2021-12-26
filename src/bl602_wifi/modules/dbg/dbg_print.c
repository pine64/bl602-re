#include <modules/dbg/dbg.h>

#include <stdarg.h>

#include <utils.h>
#include <assert.h>

void vprint(char *fmt, va_list argp);

/*
static const uint8_t transition_table[8][8] = { 
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x04, 0x02, 0x03, 0x02, 0x06, 0x07, 
    0x00, 0x00, 0x04, 0x02, 0x03, 0x02, 0x06, 0x07, 
    0x00, 0x00, 0x04, 0x03, 0x03, 0x00, 0x06, 0x07, 
    0x00, 0x00, 0x00, 0x05, 0x05, 0x00, 0x06, 0x07, 
    0x00, 0x00, 0x00, 0x05, 0x05, 0x00, 0x06, 0x07, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
};

static const char hex_upper_table[17] = "0123456789ABCDEF";
*/

void dbg_test_print(const char *fmt,...) {
    if (dbg_env.filter_severity != DBG_SEV_IDX_NONE) {
        for (int i = 0; i < 2; i++) {
            uint8_t prefix = *fmt;
            if (-1 < (int8_t)prefix) break; // maybe break?
            prefix = prefix & 0x7f; // remove msb 1
            if (prefix < DBG_MOD_IDX_MAX) {
                if (((dbg_env.filter_module >> (prefix)) & 1) == 0) return;
            } else {
                ASSERT_ERR(DBG_SEV_MIN <= prefix && prefix < DBG_SEV_MAX);
                if (dbg_env.filter_severity <= prefix - DBG_SEV_MIN) return;
            }
        }
        // we don't want to print anything anyway
        // the compiled code omitted the real printing.. 
        // so that's all my guess..
        #ifdef PRINT_DBG
        va_list args;
        va_start(args, fmt);
        vprint(fmt, args);
        va_end(args);
        #endif
    }
}

