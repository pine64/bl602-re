#include "dbg.h"


struct debug_env_tag dbg_env;


void dbg_init(void)
{
	__builtin_trap();
}
