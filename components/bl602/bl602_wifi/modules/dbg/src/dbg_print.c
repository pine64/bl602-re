
uint32_t dbg_snprintf(char * buffer, uint32_t size, char * fmt, ...);
void dbg_test_print(char * fmt, ...);
uint32_t dbg_vsnprintf(char * buffer, uint32_t size, char * fmt, va_list args);
uint32_t type_get(char c);
#if 0 //TODO EXISTS ALEADY
/**
* @file dbg_print.c
* Source file for BL602
*/
#include "dbg_print.h"


static const uint8_t transition_table[8];
static const char hex_upper_table[17];

void dbg_test_print(const char *fmt);
uint32_t dbg_snprintf(char *buffer, uint32_t size, const char *fmt);




/** dbg_test_print
 */
void dbg_test_print(const char *fmt)
{
	ASSER_ERR(FALSE);
	return;
}

/** dbg_snprintf
 */
uint32_t dbg_snprintf(char *buffer, uint32_t size, const char *fmt)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}
#endf 0 //TODO EXISTS ALEADY
