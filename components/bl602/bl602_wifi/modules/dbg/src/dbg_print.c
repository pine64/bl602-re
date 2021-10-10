#include "dbg.h"

#include <stdarg.h>


static const uint8_t transition_table[8];
static const char hex_upper_table[17];


uint32_t type_get(char c)
{
	__builtin_trap();
}

uint32_t dbg_vsnprintf(char *buffer, uint32_t size, const char *fmt, va_list args)
{
	__builtin_trap();
}

void dbg_test_print(const char *fmt, ...)
{
	__builtin_trap();
}

uint32_t dbg_snprintf(char *buffer, uint32_t size, const char *fmt, ...)
{
	__builtin_trap();
}
