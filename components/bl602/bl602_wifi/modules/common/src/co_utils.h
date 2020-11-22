
typedef struct co_read16_struct co_read16_struct, *co_read16_struct;

typedef ushort uint16_t;

struct co_read16_struct {
    uint16_t val;
};

typedef struct co_read32_struct co_read32_struct, *co_read32_struct;

typedef ulong uint32_t;

struct co_read32_struct {
    uint32_t val;
};

_Bool co_cmp8p(uint32_t pkd, uint8_t * ptr, uint32_t len);
void co_copy32(uint32_t * dst, uint32_t * src, uint32_t len);
void co_copy8p(uint32_t dst, uint32_t src, uint32_t len);
void co_pack8p(uint32_t dst, uint8_t * src, uint32_t len);
uint16_t co_read16(void * ptr16);
uint16_t co_read16p(uint32_t addr);
uint32_t co_read32p(uint32_t addr);
uint8_t co_read8p(uint32_t addr);
void co_unpack8p(uint8_t * dst, uint32_t src, uint32_t len);
void co_write16(void * ptr16, uint32_t value);
void co_write16p(uint32_t addr, uint32_t value);
void co_write32p(uint32_t addr, uint32_t value);
void co_write8p(uint32_t addr, uint8_t value);
