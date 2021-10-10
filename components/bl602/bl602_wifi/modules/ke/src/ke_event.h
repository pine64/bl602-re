#ifndef __KE_EVENT_H__
#define __KE_EVENT_H__

#include <ke_env.h>


evt_field_t ke_evt_get(void);
void ke_evt_set(const evt_field_t event);
void ke_evt_clear(const evt_field_t event);
void ke_evt_schedule(void);
void ke_init(void);

#endif // __KE_EVENT_H__
