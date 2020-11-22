
void ASM_Delay_Us(uint32_t core, uint32_t cnt);
void BL602_Delay_MS(uint32_t cnt);
void BL602_Delay_US(uint32_t cnt);
int BL602_MemCmp(void * s1, void * s2, uint32_t n);
void * BL602_MemCpy(void * dst, void * src, uint32_t n);
uint32_t * BL602_MemCpy4(uint32_t * dst, uint32_t * src, uint32_t n);
void * BL602_MemCpy_Fast(void * pdst, void * psrc, uint32_t n);
void * BL602_MemSet(void * s, uint8_t c, uint32_t n);
uint32_t * BL602_MemSet4(uint32_t * dst, uint32_t val, uint32_t n);
void Default_Handler(void);
void Trap_Handler(void);
