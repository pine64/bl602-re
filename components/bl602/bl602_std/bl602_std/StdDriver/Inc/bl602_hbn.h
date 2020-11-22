
typedef enum HBN_32K_CLK_Type {
    HBN_32K_XTAL=1,
    HBN_32K_RC=0,
    HBN_32K_DIG=3
} HBN_32K_CLK_Type;

void HBN_32K_Sel(void);
typedef struct HBN_APP_CFG_Type HBN_APP_CFG_Type, *HBN_APP_CFG_Type;

typedef uchar uint8_t;

typedef ulong uint32_t;

typedef enum HBN_GPIO_INT_Trigger_Type {
    HBN_GPIO_INT_TRIGGER_ASYNC_RISING_EDGE=5,
    HBN_GPIO_INT_TRIGGER_ASYNC_LOW_LEVEL=6,
    HBN_GPIO_INT_TRIGGER_SYNC_RISING_EDGE=1,
    HBN_GPIO_INT_TRIGGER_ASYNC_FALLING_EDGE=4,
    HBN_GPIO_INT_TRIGGER_SYNC_HIGH_LEVEL=3,
    HBN_GPIO_INT_TRIGGER_SYNC_FALLING_EDGE=0,
    HBN_GPIO_INT_TRIGGER_SYNC_LOW_LEVEL=2,
    HBN_GPIO_INT_TRIGGER_ASYNC_HIGH_LEVEL=7
} HBN_GPIO_INT_Trigger_Type;

typedef struct SPI_Flash_Cfg_Type SPI_Flash_Cfg_Type, *SPI_Flash_Cfg_Type;

typedef enum HBN_LEVEL_Type {
    HBN_LEVEL_3=3,
    HBN_LEVEL_2=2,
    HBN_LEVEL_1=1,
    HBN_LEVEL_0=0
} HBN_LEVEL_Type;

typedef enum HBN_LDO_LEVEL_Type {
    HBN_LDO_LEVEL_0P90V=6,
    HBN_LDO_LEVEL_0P80V=4,
    HBN_LDO_LEVEL_1P30V=14,
    HBN_LDO_LEVEL_1P20V=12,
    HBN_LDO_LEVEL_1P10V=10,
    HBN_LDO_LEVEL_1P00V=8,
    HBN_LDO_LEVEL_0P65V=1,
    HBN_LDO_LEVEL_1P35V=15,
    HBN_LDO_LEVEL_1P25V=13,
    HBN_LDO_LEVEL_0P85V=5,
    HBN_LDO_LEVEL_1P15V=11,
    HBN_LDO_LEVEL_0P75V=3,
    HBN_LDO_LEVEL_1P05V=9,
    HBN_LDO_LEVEL_0P95V=7,
    HBN_LDO_LEVEL_0P70V=2,
    HBN_LDO_LEVEL_0P60V=0
} HBN_LDO_LEVEL_Type;

typedef ushort uint16_t;

struct HBN_APP_CFG_Type {
    uint8_t useXtal32k;
    undefined field_0x1;
    undefined field_0x2;
    undefined field_0x3;
    uint32_t sleepTime;
    uint8_t gpioWakeupSrc;
    enum HBN_GPIO_INT_Trigger_Type gpioTrigType;
    undefined field_0xa;
    undefined field_0xb;
    struct SPI_Flash_Cfg_Type * flashCfg;
    enum HBN_LEVEL_Type hbnLevel;
    enum HBN_LDO_LEVEL_Type ldoLevel;
    undefined field_0x12;
    undefined field_0x13;
};

struct SPI_Flash_Cfg_Type {
    uint8_t ioMode;
    uint8_t cReadSupport;
    uint8_t clkDelay;
    uint8_t clkInvert;
    uint8_t resetEnCmd;
    uint8_t resetCmd;
    uint8_t resetCreadCmd;
    uint8_t resetCreadCmdSize;
    uint8_t jedecIdCmd;
    uint8_t jedecIdCmdDmyClk;
    uint8_t qpiJedecIdCmd;
    uint8_t qpiJedecIdCmdDmyClk;
    uint8_t sectorSize;
    uint8_t mid;
    uint16_t pageSize;
    uint8_t chipEraseCmd;
    uint8_t sectorEraseCmd;
    uint8_t blk32EraseCmd;
    uint8_t blk64EraseCmd;
    uint8_t writeEnableCmd;
    uint8_t pageProgramCmd;
    uint8_t qpageProgramCmd;
    uint8_t qppAddrMode;
    uint8_t fastReadCmd;
    uint8_t frDmyClk;
    uint8_t qpiFastReadCmd;
    uint8_t qpiFrDmyClk;
    uint8_t fastReadDoCmd;
    uint8_t frDoDmyClk;
    uint8_t fastReadDioCmd;
    uint8_t frDioDmyClk;
    uint8_t fastReadQoCmd;
    uint8_t frQoDmyClk;
    uint8_t fastReadQioCmd;
    uint8_t frQioDmyClk;
    uint8_t qpiFastReadQioCmd;
    uint8_t qpiFrQioDmyClk;
    uint8_t qpiPageProgramCmd;
    uint8_t writeVregEnableCmd;
    uint8_t wrEnableIndex;
    uint8_t qeIndex;
    uint8_t busyIndex;
    uint8_t wrEnableBit;
    uint8_t qeBit;
    uint8_t busyBit;
    uint8_t wrEnableWriteRegLen;
    uint8_t wrEnableReadRegLen;
    uint8_t qeWriteRegLen;
    uint8_t qeReadRegLen;
    uint8_t releasePowerDown;
    uint8_t busyReadRegLen;
    uint8_t readRegCmd[4];
    uint8_t writeRegCmd[4];
    uint8_t enterQpi;
    uint8_t exitQpi;
    uint8_t cReadMode;
    uint8_t cRExit;
    uint8_t burstWrapCmd;
    uint8_t burstWrapCmdDmyClk;
    uint8_t burstWrapDataMode;
    uint8_t burstWrapData;
    uint8_t deBurstWrapCmd;
    uint8_t deBurstWrapCmdDmyClk;
    uint8_t deBurstWrapDataMode;
    uint8_t deBurstWrapData;
    uint16_t timeEsector;
    uint16_t timeE32k;
    uint16_t timeE64k;
    uint16_t timePagePgm;
    uint16_t timeCe;
    uint8_t pdDelay;
    uint8_t qeData;
};

typedef struct HBN_BOR_CFG_Type HBN_BOR_CFG_Type, *HBN_BOR_CFG_Type;

struct HBN_BOR_CFG_Type {
    uint8_t enableBor;
    uint8_t enableBorInt;
    uint8_t borThreshold;
    uint8_t enablePorInBor;
};

typedef enum HBN_BOR_MODE_Type {
    HBN_BOR_MODE_POR_INDEPENDENT=0,
    HBN_BOR_MODE_POR_RELEVANT=1
} HBN_BOR_MODE_Type;

typedef enum HBN_BOR_THRES_Type {
    HBN_BOR_THRES_2P0V=0,
    HBN_BOR_THRES_2P4V=1
} HBN_BOR_THRES_Type;

void HBN_Clear_RTC_Counter(void);
void HBN_Enable_RTC_Counter(void);
void HBN_Get_RTC_Timer_Val(void);
typedef enum HBN_INT_Type {
    HBN_INT_RTC=16,
    HBN_INT_GPIO8=1,
    HBN_INT_GPIO7=0,
    HBN_INT_PIR=17,
    HBN_INT_ACOMP1=22,
    HBN_INT_BOR=18,
    HBN_INT_ACOMP0=20
} HBN_INT_Type;

typedef enum HBN_OUT0_INT_Type {
    HBN_OUT0_INT_GPIO8=1,
    HBN_OUT0_INT_GPIO7=0,
    HBN_OUT0_INT_RTC=2
} HBN_OUT0_INT_Type;

typedef enum HBN_OUT1_INT_Type {
    HBN_OUT1_INT_PIR=0,
    HBN_OUT1_INT_ACOMP1=3,
    HBN_OUT1_INT_BOR=1,
    HBN_OUT1_INT_ACOMP0=2
} HBN_OUT1_INT_Type;

typedef enum HBN_PIR_HPF_Type {
    HBN_PIR_HPF_METHOD1=1,
    HBN_PIR_HPF_METHOD2=2,
    HBN_PIR_HPF_METHOD0=0
} HBN_PIR_HPF_Type;

typedef struct HBN_PIR_INT_CFG_Type HBN_PIR_INT_CFG_Type, *HBN_PIR_INT_CFG_Type;

typedef enum BL_Fun_Type {
    DISABLE=0,
    ENABLE=1
} BL_Fun_Type;

struct HBN_PIR_INT_CFG_Type {
    enum BL_Fun_Type lowIntEn;
    enum BL_Fun_Type highIntEn;
};

typedef enum HBN_PIR_LPF_Type {
    HBN_PIR_LPF_DIV1=0,
    HBN_PIR_LPF_DIV2=1
} HBN_PIR_LPF_Type;

typedef enum HBN_ROOT_CLK_Type {
    HBN_ROOT_CLK_PLL=2,
    HBN_ROOT_CLK_RC32M=0,
    HBN_ROOT_CLK_XTAL=1
} HBN_ROOT_CLK_Type;

typedef enum HBN_RTC_INT_Delay_Type {
    HBN_RTC_INT_DELAY_0T=1,
    HBN_RTC_INT_DELAY_32T=0
} HBN_RTC_INT_Delay_Type;

void HBN_Set_ROOT_CLK_Sel(void);
void HBN_Set_UART_CLK_Sel(void);
typedef enum HBN_UART_CLK_Type {
    HBN_UART_CLK_FCLK=0,
    HBN_UART_CLK_160M=1
} HBN_UART_CLK_Type;

typedef enum HBN_XCLK_CLK_Type {
    HBN_XCLK_CLK_XTAL=1,
    HBN_XCLK_CLK_RC32M=0
} HBN_XCLK_CLK_Type;

