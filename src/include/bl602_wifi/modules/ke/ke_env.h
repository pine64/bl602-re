#ifndef _KE_ENV_H_
#define _KE_ENV_H_

#include <stdint.h>

#include <modules/common/co_list.h>


typedef uint32_t evt_field_t;

struct ke_env_tag {
  volatile evt_field_t evt_field; // +0
  struct co_list queue_sent; // +4
  struct co_list queue_saved; // +12
  struct co_list queue_timer; // +20
  struct mblock_free *mblock_first; // +28
};

extern struct ke_env_tag ke_env;

#endif
