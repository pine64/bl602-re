#ifndef AT_QUEUE_INCLUDED
#define AT_QUEUE_INCLUDED

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

typedef enum AT_QUEUE_ERROR_CODE {
    AQEC_EMPTY=2,
    AQEC_FAIL=1,
    AQEC_OK=0,
    AQEC_FULL=3
} AT_QUEUE_ERROR_CODE;

#endif AT_QUEUE_INCLUDED