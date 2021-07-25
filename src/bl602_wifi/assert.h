#ifndef _ASSERT_H_
#define _ASSERT_H_
void assert_err(char * condition, char * file, int line);

#define ASSERT_ERR(cond) if (!(cond)) assert_err(#cond, __FILE__, __LINE__);
#endif