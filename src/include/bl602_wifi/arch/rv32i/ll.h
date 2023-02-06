#ifndef _LL_H_
#define _LL_H_

__attribute__((always_inline)) static void __disable_irq(void) {
    __asm("csrrci zero, mstatus, 0x8");
}

__attribute__((always_inline)) static void __enable_irq(void) {
    __asm("csrrsi zero, mstatus, 0x8");
}

#endif // _LL_H_
