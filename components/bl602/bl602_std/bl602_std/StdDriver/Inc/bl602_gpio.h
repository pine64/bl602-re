
typedef struct GLB_GPIO_Cfg_Type GLB_GPIO_Cfg_Type, *GLB_GPIO_Cfg_Type;

typedef uchar uint8_t;

struct GLB_GPIO_Cfg_Type {
    uint8_t gpioPin;
    uint8_t gpioFun;
    uint8_t gpioMode;
    uint8_t pullType;
    uint8_t drive;
    uint8_t smtCtrl;
};

typedef enum GLB_GPIO_FUNC_Type {
    GPIO_FUN_EXT_PA=9,
    GPIO_FUN_PWM=8,
    GPIO_FUN_ANALOG=10,
    GPIO_FUN_SDIO=1,
    GPIO_FUN_I2C=6,
    GPIO_FUN_FLASH=2,
    GPIO_FUN_JTAG=14,
    GPIO_FUN_UART=7,
    GPIO_FUN_SWGPIO=11,
    GPIO_FUN_SPI=4
} GLB_GPIO_FUNC_Type;

typedef enum GLB_GPIO_Type {
    GLB_GPIO_PIN_5=5,
    GLB_GPIO_PIN_4=4,
    GLB_GPIO_PIN_7=7,
    GLB_GPIO_PIN_6=6,
    GLB_GPIO_PIN_1=1,
    GLB_GPIO_PIN_0=0,
    GLB_GPIO_PIN_19=19,
    GLB_GPIO_PIN_3=3,
    GLB_GPIO_PIN_2=2,
    GLB_GPIO_PIN_MAX=23,
    GLB_GPIO_PIN_10=10,
    GLB_GPIO_PIN_21=21,
    GLB_GPIO_PIN_20=20,
    GLB_GPIO_PIN_16=16,
    GLB_GPIO_PIN_15=15,
    GLB_GPIO_PIN_18=18,
    GLB_GPIO_PIN_17=17,
    GLB_GPIO_PIN_9=9,
    GLB_GPIO_PIN_12=12,
    GLB_GPIO_PIN_8=8,
    GLB_GPIO_PIN_11=11,
    GLB_GPIO_PIN_22=22,
    GLB_GPIO_PIN_14=14,
    GLB_GPIO_PIN_13=13
} GLB_GPIO_Type;

