void ipc_host_disable_irq_e2a(void);
void bl_irq_handler(void);
void intc_enable_irq(int index);
void intc_spurious(void);
void ipc_host_disable_irq_e2a(void);
void mac_irq(void);
void void_fn(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file intc.c
* Source file for BL602
*/
#include "intc.h"


void intc_spurious(void);

typedef void (*void_fn)(void);

static const void_fn intc_irq_handlers[64];

static void intc_enable_irq(int index);
void intc_init(void);
void mac_irq(void);
void bl_irq_handler(void);




/** intc_spurious
 */
void intc_spurious(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** intc_init
 */
void intc_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** mac_irq
 */
void mac_irq(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** bl_irq_handler
 */
void bl_irq_handler(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** intc_enable_irq
 */
static void intc_enable_irq(int index)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
