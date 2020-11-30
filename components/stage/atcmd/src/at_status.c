/**
* @file at_status.c
* Source file for BL602
*/
#include "at_status.h"


static at_status_t at_sts;
static at_peer_t dummy_peer;
static const at_var_descriptor_t at_sts_table[7];
static const at_var_descriptor_t at_peer_table[22];

AT_ERROR_CODE at_status(char *sts_var);
AT_ERROR_CODE at_setsts(char *key, at_value_t *value);
AT_ERROR_CODE at_peer(s32 pn, at_peer_t *peer, char *var);




/** at_status
 */
AT_ERROR_CODE at_status(char *sts_var)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_setsts
 */
AT_ERROR_CODE at_setsts(char *key, at_value_t *value)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_peer
 */
AT_ERROR_CODE at_peer(s32 pn, at_peer_t *peer, char *var)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}
