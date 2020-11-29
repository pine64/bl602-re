
char * cfg_api_element_dump(void * val, CFG_ELEMENT_TYPE type, char * strs);
int cfg_api_element_general_get(cfg_element_entry * entry, void * arg1, void * arg2);
int cfg_api_element_general_set(cfg_element_entry * entry, void * arg1, void * arg2);
int cfg_api_element_set(uint32_t task, uint32_t element, uint32_t type, void * arg1, void * arg2);
#if 0 //TODO EXISTS ALEADY
/**
* @file cfg_api.c
* Source file for BL602
*/
#include "cfg_api.h"


const char *cfg_api_element_dump(void *val, enum CFG_ELEMENT_TYPE type, char *strs);
int cfg_api_element_general_set(struct cfg_element_entry *entry, void *arg1, void *arg2);
int cfg_api_element_general_get(struct cfg_element_entry *entry, void *arg1, void *arg2);
int cfg_api_element_set(uint32_t task, uint32_t element, uint32_t type, void *arg1, void *arg2);




/** *cfg_api_element_dump
 */
const char *cfg_api_element_dump(void *val, enum CFG_ELEMENT_TYPE type, char *strs)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** cfg_api_element_general_set
 */
int cfg_api_element_general_set(struct cfg_element_entry *entry, void *arg1, void *arg2)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** cfg_api_element_general_get
 */
int cfg_api_element_general_get(struct cfg_element_entry *entry, void *arg1, void *arg2)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** cfg_api_element_set
 */
int cfg_api_element_set(uint32_t task, uint32_t element, uint32_t type, void *arg1, void *arg2)
{
	ASSER_ERR(FALSE);
	return -1;
}
#endf 0 //TODO EXISTS ALEADY
