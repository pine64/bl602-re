#include <at_queue.h>

#include <stddef.h>
#include <string.h>

static at_queue_callback_t at_queue_callback;
static at_queue_t at_queue;

/** at_queue_init
 */
s32 at_queue_init(void *buf, s32 size, at_queue_callback_t cb)
{
	if (buf == NULL || cb == NULL)
	{
		return -1;
	}
	memset(&at_queue, 0, sizeof(at_queue));
	at_queue.qbuf = (u8 *) buf;
	at_queue.qsize = size;
	at_queue_callback = NULL;
	return 0;
}

/** at_queue_get
 */
AT_QUEUE_ERROR_CODE at_queue_get(u8 *element)
{
	__builtin_trap();
}

/** at_queue_peek
 */
AT_QUEUE_ERROR_CODE at_queue_peek(u8 *element)
{
	__builtin_trap();
}
