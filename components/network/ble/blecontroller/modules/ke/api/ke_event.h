/**
* @file ke_event.h
* Header file for BL602
*/
#ifndef __KE_EVENT_H__
#define __KE_EVENT_H__

enum KE_EVENT_STATUS {
    KE_EVENT_OK = 0,
    KE_EVENT_FAIL = 1,
    KE_EVENT_UNKNOWN = 2,
    KE_EVENT_CAPA_EXCEEDED = 3,
    KE_EVENT_ALREADY_EXISTS = 4,
};

#endif // __KE_EVENT_H__
