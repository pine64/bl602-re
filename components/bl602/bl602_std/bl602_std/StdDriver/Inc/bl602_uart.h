
typedef enum UART_AutoBaudDetection_Type {
    UART_AUTOBAUD_0X55=0,
    UART_AUTOBAUD_STARTBIT=1
} UART_AutoBaudDetection_Type;

typedef enum UART_ByteBitInverse_Type {
    UART_LSB_FIRST=0,
    UART_MSB_FIRST=1
} UART_ByteBitInverse_Type;

typedef struct UART_CFG_Type UART_CFG_Type, *UART_CFG_Type;

typedef ulong uint32_t;

typedef enum UART_DataBits_Type {
    UART_DATABITS_5=0,
    UART_DATABITS_7=2,
    UART_DATABITS_6=1,
    UART_DATABITS_8=3
} UART_DataBits_Type;

typedef enum UART_StopBits_Type {
    UART_STOPBITS_1=0,
    UART_STOPBITS_2=2,
    UART_STOPBITS_1_5=1
} UART_StopBits_Type;

typedef enum UART_Parity_Type {
    UART_PARITY_ODD=1,
    UART_PARITY_EVEN=2,
    UART_PARITY_NONE=0
} UART_Parity_Type;

typedef enum BL_Fun_Type {
    DISABLE=0,
    ENABLE=1
} BL_Fun_Type;

struct UART_CFG_Type {
    uint32_t uartClk;
    uint32_t baudRate;
    enum UART_DataBits_Type dataBits;
    enum UART_StopBits_Type stopBits;
    enum UART_Parity_Type parity;
    enum BL_Fun_Type ctsFlowControl;
    enum BL_Fun_Type rxDeglitch;
    enum BL_Fun_Type rtsSoftwareControl;
    enum UART_ByteBitInverse_Type byteBitInverse;
    undefined field_0xf;
};

typedef enum UART_Direction_Type {
    UART_RX=1,
    UART_TX=0,
    UART_TXRX=2
} UART_Direction_Type;

void UART_Disable(void);
void UART_Enable(void);
typedef struct UART_FifoCfg_Type UART_FifoCfg_Type, *UART_FifoCfg_Type;

typedef uchar uint8_t;

struct UART_FifoCfg_Type {
    uint8_t txFifoDmaThreshold;
    uint8_t rxFifoDmaThreshold;
    enum BL_Fun_Type txFifoDmaEnable;
    enum BL_Fun_Type rxFifoDmaEnable;
};

void UART_FifoConfig(void);
void UART_GetRxFifoCount(void);
void UART_GetTxFifoCount(void);
typedef enum UART_ID_Type {
    UART0_ID=0,
    UART1_ID=1,
    UART_ID_MAX=2
} UART_ID_Type;

void UART_Init(void);
void UART_Int_Callback_Install(void);
typedef enum UART_INT_Type {
    UART_INT_RX_FER=7,
    UART_INT_TX_FIFO_REQ=2,
    UART_INT_ALL=8,
    UART_INT_TX_END=0,
    UART_INT_PCE=5,
    UART_INT_RTO=4,
    UART_INT_RX_END=1,
    UART_INT_RX_FIFO_REQ=3,
    UART_INT_TX_FER=6
} UART_INT_Type;

void UART_IntMask(void);
typedef struct UART_IrCfg_Type UART_IrCfg_Type, *UART_IrCfg_Type;

typedef ushort uint16_t;

struct UART_IrCfg_Type {
    enum BL_Fun_Type txIrEnable;
    enum BL_Fun_Type rxIrEnable;
    enum BL_Fun_Type txIrInverse;
    enum BL_Fun_Type rxIrInverse;
    uint16_t txIrPulseStart;
    uint16_t txIrPulseStop;
    uint16_t rxIrPulseStart;
};

typedef enum UART_Overflow_Type {
    UART_TX_UNDERFLOW=1,
    UART_TX_OVERFLOW=0,
    UART_RX_OVERFLOW=2,
    UART_RX_UNDERFLOW=3
} UART_Overflow_Type;

void UART_ReceiveData(void);
void UART_SendData(void);
void UART_SetRxTimeoutValue(void);
void UART_TxFreeRun(void);
