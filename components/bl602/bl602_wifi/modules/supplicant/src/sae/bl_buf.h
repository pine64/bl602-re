/**
* @file bl_buf.h
* Header file for BL602
*/
#ifndef __BL_BUF_H__
#define __BL_BUF_H__

struct wpabuf {
    size_t size; // +0
    size_t used; // +4
    uint8 *ext_data; // +8
};

#endif // __BL_BUF_H__
