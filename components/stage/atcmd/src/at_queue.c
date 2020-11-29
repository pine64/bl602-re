/**
* @file at_queue.c
* Source file for BL602
*/
#include "at_queue.h"


static at_queue_callback_t at_queue_callback;
static at_queue_t at_queue;

s32 at_queue_init(void *buf, s32 size, at_queue_callback_t cb);
AT_QUEUE_ERROR_CODE at_queue_get(u8 *element);
AT_QUEUE_ERROR_CODE at_queue_peek(u8 *element);




/** at_queue_init
 */
s32 at_queue_init(void *buf, s32 size, at_queue_callback_t cb)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** at_queue_get
 */
AT_QUEUE_ERROR_CODE at_queue_get(u8 *element)
{
	ASSER_ERR(FALSE);
	return AT_QUEUE_ERROR_UNIMP;
}

/** at_queue_peek
 */
AT_QUEUE_ERROR_CODE at_queue_peek(u8 *element)
{
	ASSER_ERR(FALSE);
	return AT_QUEUE_ERROR_UNIMP;
}
