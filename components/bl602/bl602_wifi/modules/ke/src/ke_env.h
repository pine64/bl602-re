
typedef ulong uint32_t;

typedef uint32_t evt_field_t;

typedef struct ke_env_tag ke_env_tag, *ke_env_tag;

typedef struct co_list co_list, *co_list;

typedef struct mblock_free mblock_free, *mblock_free;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

struct co_list_hdr {
    struct co_list_hdr * next;
};

struct co_list {
    struct co_list_hdr * first;
    struct co_list_hdr * last;
};

struct mblock_free {
    struct mblock_free * next;
    uint32_t size;
};

struct ke_env_tag {
    evt_field_t evt_field;
    struct co_list queue_sent;
    struct co_list queue_saved;
    struct co_list queue_timer;
    struct mblock_free * mblock_first;
};

#if 0 //TODO EXISTS ALEADY
/**
* @file ke_env.h
* Header file for BL602
*/
#ifndef __KE_ENV_H__
#define __KE_ENV_H__

typedef uint32_t evt_field_t;
struct ke_env_tag {
    volatile evt_field_t evt_field; // +0
    struct co_list queue_sent; // +4
    struct co_list queue_saved; // +12
    struct co_list queue_timer; // +20
    struct mblock_free *mblock_first; // +28
};
struct ke_env_tag ke_env;

#endif // __KE_ENV_H__
#endf 0 //TODO EXISTS ALEADY
