
char * cfg_api_element_dump(void * val, CFG_ELEMENT_TYPE type, char * strs);
int cfg_api_element_general_get(cfg_element_entry * entry, void * arg1, void * arg2);
int cfg_api_element_general_set(cfg_element_entry * entry, void * arg1, void * arg2);
int cfg_api_element_set(uint32_t task, uint32_t element, uint32_t type, void * arg1, void * arg2);
