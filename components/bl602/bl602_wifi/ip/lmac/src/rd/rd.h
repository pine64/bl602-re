
typedef struct rd_env_tag rd_env_tag, *rd_env_tag;

typedef struct co_list co_list, *co_list;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

struct co_list_hdr {
    struct co_list_hdr * next;
};

struct co_list {
    struct co_list_hdr * first;
    struct co_list_hdr * last;
};

struct rd_env_tag {
    struct co_list event_free_list;
};

#if 0 //TODO EXISTS ALEADY
/**
* @file rd.h
* Header file for BL602
*/
#ifndef __RD_H__
#define __RD_H__

struct rd_env_tag {
    struct co_list event_free_list; // +0
};

#endif // __RD_H__
#endf 0 //TODO EXISTS ALEADY
