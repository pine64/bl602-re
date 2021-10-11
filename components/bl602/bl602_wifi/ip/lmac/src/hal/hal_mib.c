#include <hal/hal_machw_mib.h>


extern volatile struct machw_mib_tag *machw_mib;


void hal_mib_dump(void)
{
	__builtin_trap();
}
