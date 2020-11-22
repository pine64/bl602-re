
uint32_t co_list_cnt(co_list * list);
void co_list_concat(co_list * list1, co_list * list2);
void co_list_extract(co_list * list, co_list_hdr * list_hdr);
_Bool co_list_find(co_list * list, co_list_hdr * list_hdr);
void co_list_init(co_list * list);
void co_list_insert(co_list * list, co_list_hdr * element, anon_subr__Bool_co_list_hdr_ptr_co_list_hdr_ptr * cmp);
void co_list_insert_after(co_list * list, co_list_hdr * prev_element, co_list_hdr * element);
void co_list_insert_before(co_list * list, co_list_hdr * next_element, co_list_hdr * element);
void co_list_pool_init(co_list * list, void * pool, size_t elmt_size, uint32_t elmt_cnt, void * default_value);
co_list_hdr * co_list_pop_front(co_list * list);
void co_list_push_back(co_list * list, co_list_hdr * list_hdr);
void co_list_push_front(co_list * list, co_list_hdr * list_hdr);
void co_list_remove(co_list * list, co_list_hdr * prev_element, co_list_hdr * element);
