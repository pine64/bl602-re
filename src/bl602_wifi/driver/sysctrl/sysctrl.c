#include <stdint.h>
#include <phy/sysctrl.h>
void sysctrl_init() {
    SYSCTRL->diag_conf.value = 0x8000000c;
    SYSCTRL->misc_cntl.set1 = 0x1ff;
}
