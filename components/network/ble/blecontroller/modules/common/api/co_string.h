/**
* @file co_string.h
* Header file for BL602
*/
#ifndef __CO_STRING_H__
#define __CO_STRING_H__

void *(*ble_memcpy_ptr)(void *, const void *, unsigned int);void *(*ble_memset_ptr)(void *, int, unsigned int);int (*ble_memcmp_ptr)(const void *, const void *, unsigned int);

#endif // __CO_STRING_H__
