#ifndef __RC4_ROM_H__
#define __RC4_ROM_H__

void RC4_Encrypt(unsigned char *Encr_Key, unsigned char *IV, short unsigned int iv_length, unsigned char *Data, short unsigned int data_length, short unsigned int skipBytes);

#endif // __RC4_ROM_H__
