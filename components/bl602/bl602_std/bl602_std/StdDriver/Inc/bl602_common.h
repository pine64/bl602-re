
void BL602_Delay_MS(void);
void BL602_Delay_US(void);
void BL602_MemCpy4(void);
void BL602_MemCpy_Fast(void);
void BL602_MemSet(void);
typedef enum BL_Err_Type {
    SUCCESS=0,
    ERROR=1,
    TIMEOUT=2
} BL_Err_Type;

typedef enum BL_Fun_Type {
    DISABLE=0,
    ENABLE=1
} BL_Fun_Type;

typedef enum BL_Mask_Type {
    UNMASK=0,
    MASK=1
} BL_Mask_Type;

typedef enum BL_Sts_Type {
    SET=1,
    RESET=0
} BL_Sts_Type;

void intCallback_Type(void);
