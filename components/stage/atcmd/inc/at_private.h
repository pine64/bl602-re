/**
* @file at_private.h
* Source file for BL602
* Reverse engineered from BL602 SDK object files
*/
#ifndef _AT_PRIVATE_H_
#define _AT_PRIVATE_H_

#include <atcmd/at_types.h>

typedef enum AT_PARA_OPTION {
	APO_RO=0,
	APO_RW
} AT_PARA_OPTION;

typedef enum AT_PARA_TYPE {
	APT_TEXT=0,
	APT_TDATA,
	APT_HEX,
	APT_DI,
	APT_HI,
	APT_IP
} AT_PARA_TYPE;

typedef enum AT_MODE {
	AM_CMD=0,
	AM_DATA
} AT_MODE;

typedef union at_value {
	at_text_t text[256];
	at_hex_t hex[256];
	at_di_t di;
	at_hi_t hi;
	at_ip_t ip;
} at_value_t;

typedef struct at_var_descriptor {
	char *key;
	enum AT_PARA_TYPE pt;
	enum AT_PARA_OPTION po;
	// 2 bytes padding
	void *pvar;
	s32 vsize;
	s32 (*verify)(at_value_t *);
} at_var_descriptor_t;

#endif
