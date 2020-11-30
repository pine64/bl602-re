/**
* @file bl_buf.c
* Source file for BL602
*/
#include "bl_buf.h"


struct wpabuf *wpabuf_alloc(size_t len);
void wpabuf_free(struct wpabuf *buf);
void *wpabuf_put(struct wpabuf *buf, size_t len);




/** *wpabuf_alloc
 */
struct wpabuf *wpabuf_alloc(size_t len)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** wpabuf_free
 */
void wpabuf_free(struct wpabuf *buf)
{
	ASSER_ERR(FALSE);
	return;
}

/** *wpabuf_put
 */
void *wpabuf_put(struct wpabuf *buf, size_t len)
{
	ASSER_ERR(FALSE);
	returnNULL;
}
