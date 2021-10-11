#ifndef __BL_BUF_H__
#define __BL_BUF_H__

#include <stddef.h>

#include <wltypes.h>


struct wpabuf {
    size_t size; // +0
    size_t used; // +4
    uint8 *ext_data; // +8
};

void wpabuf_free(struct wpabuf *buf);
void *wpabuf_put(struct wpabuf *buf, size_t len);
size_t wpabuf_len(const struct wpabuf *buf);
const void *wpabuf_head(const struct wpabuf *buf);
void *wpabuf_mhead(struct wpabuf *buf);
uint8 *wpabuf_mhead_u8(struct wpabuf *buf);
void wpabuf_put_u8(struct wpabuf *buf, uint8 data);
void wpabuf_put_le16(struct wpabuf *buf, uint16 data);
void wpabuf_put_data(struct wpabuf *buf, const void *data, size_t len);
void wpabuf_put_buf(struct wpabuf *dst, const struct wpabuf *src);
void wpabuf_put_str(struct wpabuf *dst, const char *str);

#endif // __BL_BUF_H__
