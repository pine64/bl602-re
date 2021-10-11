#include "bl_buf.h"


struct wpabuf *wpabuf_alloc(size_t len)
{
	__builtin_trap();
}

void wpabuf_free(struct wpabuf *buf)
{
	__builtin_trap();
}

void wpabuf_overflow(const struct wpabuf *buf, size_t len)
{
	__builtin_trap();
}

void *wpabuf_put(struct wpabuf *buf, size_t len)
{
	__builtin_trap();
}

