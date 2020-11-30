/**
* @file rc4.c
* Source file for BL602
*/
#include "rc4.h"


struct rc4_key {
    unsigned char state[256];
 // +0
    unsigned char x;
 // +256
    unsigned char y;
 // +257
};

typedef struct rc4_key rc4_key;

static rc4_key rc4key;

void prepare_key(unsigned char *key_data_ptr, int key_data_len, rc4_key *key);
void rc4(unsigned char *buffer_ptr, int buffer_len, int skip, rc4_key *key);
void RC4_Encrypt(unsigned char *Encr_Key, unsigned char *IV, unsigned short iv_length, unsigned char *Data, unsigned short data_length, unsigned short skipBytes);




/** prepare_key
 */
void prepare_key(unsigned char *key_data_ptr, int key_data_len, rc4_key *key)
{
	ASSER_ERR(FALSE);
	return;
}

/** rc4
 */
void rc4(unsigned char *buffer_ptr, int buffer_len, int skip, rc4_key *key)
{
	ASSER_ERR(FALSE);
	return;
}

/** RC4_Encrypt
 */
void RC4_Encrypt(unsigned char *Encr_Key, unsigned char *IV, unsigned short iv_length, unsigned char *Data, unsigned short data_length, unsigned short skipBytes)
{
	ASSER_ERR(FALSE);
	return;
}
