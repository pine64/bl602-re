#ifndef AT_PRIVATE_INCLUDED
#define AT_PRIVATE_INCLUDED

typedef unsigned char   undefined;

typedef unsigned char    byte;
typedef unsigned int    dword;
typedef long long    longlong;
typedef unsigned char    uchar;
typedef unsigned int    uint;
typedef unsigned long    ulong;
typedef unsigned long long    ulonglong;
typedef unsigned char    undefined1;
typedef unsigned int    undefined4;
typedef unsigned long long    undefined8;
typedef unsigned short    ushort;
typedef unsigned short    word;
typedef int at_di_t;

typedef uchar at_hex_t;
typedef uint at_hi_t;
typedef uchar at_ip_t[4];
typedef char at_text_t;
typedef int s32;
typedef ushort u16;
typedef uint u32;
typedef uchar u8;
typedef uint u32;

typedef enum AT_PARA_TYPE {
    APT_TEXT=0,
    APT_TDATA=1,
    APT_HI=4,
    APT_HEX=2,
    APT_DI=3,
    APT_IP=5
} AT_PARA_TYPE;

struct at_para_descriptor_t {
    enum AT_PARA_TYPE pt;
    undefined field_0x1;
    undefined field_0x2;
    undefined field_0x3;
    void * pvar;
    u32 option;
};

#endif AT_PRIVATE_INCLUDED