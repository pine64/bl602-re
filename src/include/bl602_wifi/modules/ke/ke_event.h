#ifndef _KE_EVENT_H_
#define _KE_EVENT_H_

#include <modules/ke/ke_env.h>
#include <modules/common/co_math.h>

#define EVENT_DEF(name, _, __) KE_EVT_##name, 
enum {
    #include "ke_events_list.h"
    KE_EVT_MAX = 27
};
#undef EVENT_DEF
#define EVENT_DEF(name, _, __) KE_EVT_##name##_BIT = CO_BIT(31 - KE_EVT_##name), 
enum {
#include "ke_events_list.h"
};
#undef EVENT_DEF
#define KE_EVT_TXCFM_MASK   ( KE_EVT_TXCFM_AC0_BIT  \
                            | KE_EVT_TXCFM_AC1_BIT  \
                            | KE_EVT_TXCFM_AC2_BIT  \
                            | KE_EVT_TXCFM_AC3_BIT  \
                            | KE_EVT_TXCFM_BCN_BIT)

#define KE_EVT_IPC_EMB_TXDESC_MASK   ( KE_EVT_IPC_EMB_TXDESC_AC0_BIT  \
                            | KE_EVT_IPC_EMB_TXDESC_AC1_BIT  \
                            | KE_EVT_IPC_EMB_TXDESC_AC2_BIT  \
                            | KE_EVT_IPC_EMB_TXDESC_AC3_BIT  \
                            | KE_EVT_IPC_EMB_TXDESC_BCN_BIT)


static inline evt_field_t ke_evt_get(void) {
    return ke_env.evt_field;
}

void ke_evt_set(const evt_field_t event);
void ke_evt_clear(const evt_field_t event);
void ke_evt_schedule(void);
void ke_init(void);
void ke_flush(void);

#endif
