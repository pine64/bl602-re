#include "sysctrl.h"

#include <bl602.h>


void sysctrl_init(void)
{
	BL_WR_WORD(0x44900068, 0x8000000c);
	BL_WR_WORD(0x449000e0, BL_RD_WORD(0x449000e0) | 0x1ff00);
}
