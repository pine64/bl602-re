#ifndef _DMA_REG_H_
#define _DMA_REG_H_
typedef struct DMA_Control_Reg DMA_Control_Reg, *DMA_Control_Reg;

struct DMA_Control_Reg {
    uint32_t TransferSize:12;
    uint32_t SBSize:3;
    uint32_t DBSize:3;
    uint32_t SWidth:3;
    uint32_t DWidth:3;
    uint32_t SLargerD:1;
    uint32_t reserved_25:1;
    uint32_t SI:1;
    uint32_t DI:1;
    uint32_t Prot:3;
    uint32_t I:1;
};

#endif // _DMA_REG_H_
