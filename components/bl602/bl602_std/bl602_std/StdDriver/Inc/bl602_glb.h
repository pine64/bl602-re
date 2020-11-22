
typedef enum BMX_ARB_Type {
    BMX_ARB_FIX=0,
    BMX_ARB_RANDOM=2,
    BMX_ARB_ROUND_ROBIN=1
} BMX_ARB_Type;

typedef enum BMX_BUS_ERR_Type {
    BMX_BUS_ERR_ADDR_DECODE=1,
    BMX_BUS_ERR_TRUSTZONE_DECODE=0
} BMX_BUS_ERR_Type;

typedef struct BMX_Cfg_Type BMX_Cfg_Type, *BMX_Cfg_Type;

typedef uchar uint8_t;

typedef enum BL_Fun_Type {
    DISABLE=0,
    ENABLE=1
} BL_Fun_Type;

struct BMX_Cfg_Type {
    uint8_t timeoutEn;
    enum BL_Fun_Type errEn;
    enum BMX_ARB_Type arbMod;
};

typedef enum BMX_ERR_INT_Type {
    BMX_ERR_INT_ALL=1,
    BMX_ERR_INT_ERR=0
} BMX_ERR_INT_Type;

typedef enum BMX_TO_INT_Type {
    BMX_TO_INT_TIMEOUT=0,
    BMX_TO_INT_ALL=1
} BMX_TO_INT_Type;

typedef enum GLB_ADC_CLK_Type {
    GLB_ADC_CLK_96M=0,
    GLB_ADC_CLK_XCLK=1
} GLB_ADC_CLK_Type;

void GLB_AHB_Slave1_Reset(void);
typedef enum GLB_BT_BANDWIDTH_Type {
    GLB_BT_BANDWIDTH_2M=1,
    GLB_BT_BANDWIDTH_1M=0
} GLB_BT_BANDWIDTH_Type;

typedef enum GLB_DAC_CLK_Type {
    GLB_DAC_CLK_32M=0,
    GLB_DAC_CLK_XCLK=1
} GLB_DAC_CLK_Type;

typedef enum GLB_DIG_CLK_Type {
    GLB_DIG_CLK_XCLK=1,
    GLB_DIG_CLK_PLL_32M=0
} GLB_DIG_CLK_Type;

typedef enum GLB_DMA_CLK_ID_Type {
    GLB_DMA_CLK_DMA0_CH0=0,
    GLB_DMA_CLK_DMA0_CH1=1,
    GLB_DMA_CLK_DMA0_CH2=2,
    GLB_DMA_CLK_DMA0_CH3=3
} GLB_DMA_CLK_ID_Type;

typedef enum GLB_EM_Type {
    GLB_EM_16KB=15,
    GLB_EM_0KB=0,
    GLB_EM_8KB=3
} GLB_EM_Type;

void GLB_Get_BCLK_Div(void);
void GLB_Get_HCLK_Div(void);
void GLB_GPIO_Func_Init(void);
void GLB_GPIO_Init(void);
typedef enum GLB_GPIO_INT_CONTROL_Type {
    GLB_GPIO_INT_CONTROL_ASYNC=1,
    GLB_GPIO_INT_CONTROL_SYNC=0
} GLB_GPIO_INT_CONTROL_Type;

typedef enum GLB_GPIO_INT_TRIG_Type {
    GLB_GPIO_INT_TRIG_NEG_PULSE=0,
    GLB_GPIO_INT_TRIG_POS_LEVEL=3,
    GLB_GPIO_INT_TRIG_NEG_LEVEL=2,
    GLB_GPIO_INT_TRIG_POS_PULSE=1
} GLB_GPIO_INT_TRIG_Type;

void GLB_GPIO_IntMask(void);
void GLB_GPIO_Read(void);
typedef enum GLB_GPIO_REAL_MODE_Type {
    GLB_GPIO_REAL_MODE_SDIO=1,
    GLB_GPIO_REAL_MODE_CCI=15,
    GLB_GPIO_REAL_MODE_JTAG=14,
    GLB_GPIO_REAL_MODE_RF=12,
    GLB_GPIO_REAL_MODE_REG=0
} GLB_GPIO_REAL_MODE_Type;

void GLB_GPIO_Write(void);
typedef enum GLB_IR_CLK_SRC_Type {
    GLB_IR_CLK_SRC_XCLK=0
} GLB_IR_CLK_SRC_Type;

typedef enum GLB_MTIMER_CLK_Type {
    GLB_MTIMER_CLK_BCLK=0,
    GLB_MTIMER_CLK_32K=1
} GLB_MTIMER_CLK_Type;

typedef enum GLB_PKA_CLK_Type {
    GLB_PKA_CLK_PLL120M=1,
    GLB_PKA_CLK_HCLK=0
} GLB_PKA_CLK_Type;

typedef enum GLB_PLL_CLK_Type {
    GLB_PLL_CLK_48M=7,
    GLB_PLL_CLK_160M=3,
    GLB_PLL_CLK_192M=2,
    GLB_PLL_CLK_480M=0,
    GLB_PLL_CLK_96M=5,
    GLB_PLL_CLK_240M=1,
    GLB_PLL_CLK_120M=4,
    GLB_PLL_CLK_32M=8,
    GLB_PLL_CLK_80M=6
} GLB_PLL_CLK_Type;

typedef enum GLB_PLL_XTAL_Type {
    GLB_PLL_XTAL_RC32M=6,
    GLB_PLL_XTAL_NONE=0,
    GLB_PLL_XTAL_40M=4,
    GLB_PLL_XTAL_38P4M=3,
    GLB_PLL_XTAL_26M=5,
    GLB_PLL_XTAL_24M=1,
    GLB_PLL_XTAL_32M=2
} GLB_PLL_XTAL_Type;

typedef enum GLB_ROOT_CLK_Type {
    GLB_ROOT_CLK_RC32M=0,
    GLB_ROOT_CLK_XTAL=1,
    GLB_ROOT_CLK_PLL=2
} GLB_ROOT_CLK_Type;

void GLB_Set_ADC_CLK(void);
void GLB_Set_EM_Sel(void);
void GLB_Set_GPIO_IntMod(void);
void GLB_Set_MTimer_CLK(void);
void GLB_Set_System_CLK(void);
void GLB_Set_System_CLK_Div(void);
void GLB_Set_UART_CLK(void);
typedef enum GLB_SFLASH_CLK_Type {
    GLB_SFLASH_CLK_96M=5,
    GLB_SFLASH_CLK_120M=0,
    GLB_SFLASH_CLK_XTAL=1,
    GLB_SFLASH_CLK_80M=3,
    GLB_SFLASH_CLK_BCLK=4,
    GLB_SFLASH_CLK_48M=2
} GLB_SFLASH_CLK_Type;

typedef enum GLB_SPI_PAD_ACT_AS_Type {
    GLB_SPI_PAD_ACT_AS_SLAVE=0,
    GLB_SPI_PAD_ACT_AS_MASTER=1
} GLB_SPI_PAD_ACT_AS_Type;

void GLB_SW_POR_Reset(void);
void GLB_SW_System_Reset(void);
typedef enum GLB_SYS_CLK_Type {
    GLB_SYS_CLK_PLL160M=4,
    GLB_SYS_CLK_PLL192M=5,
    GLB_SYS_CLK_XTAL=1,
    GLB_SYS_CLK_PLL48M=2,
    GLB_SYS_CLK_PLL120M=3,
    GLB_SYS_CLK_RC32M=0
} GLB_SYS_CLK_Type;

void GLB_UART_Fun_Sel(void);
typedef enum GLB_UART_SIG_FUN_Type {
    GLB_UART_SIG_FUN_UART1_TXD=6,
    GLB_UART_SIG_FUN_UART0_CTS=1,
    GLB_UART_SIG_FUN_UART1_RXD=7,
    GLB_UART_SIG_FUN_UART0_RXD=3,
    GLB_UART_SIG_FUN_UART0_RTS=0,
    GLB_UART_SIG_FUN_UART1_CTS=5,
    GLB_UART_SIG_FUN_UART0_TXD=2,
    GLB_UART_SIG_FUN_UART1_RTS=4
} GLB_UART_SIG_FUN_Type;

typedef enum GLB_UART_SIG_Type {
    GLB_UART_SIG_0=0,
    GLB_UART_SIG_3=3,
    GLB_UART_SIG_4=4,
    GLB_UART_SIG_1=1,
    GLB_UART_SIG_2=2,
    GLB_UART_SIG_7=7,
    GLB_UART_SIG_5=5,
    GLB_UART_SIG_6=6
} GLB_UART_SIG_Type;

