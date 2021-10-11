#include "intc.h"


void intc_spurious(void);


typedef void (*void_fn)(void);
static const void_fn intc_irq_handlers[64];
static void intc_enable_irq(int index);


void intc_init(void);
void mac_irq(void);
void bl_irq_handler(void);
void ipc_host_disable_irq_e2a(void);
