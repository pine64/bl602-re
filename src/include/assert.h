#ifndef _ASSERT_H_
#define _ASSERT_H_

#include <arch/arch.h>

#define ASSERT_ERR(cond) if (!(cond)) assert_err(#cond, __FILE__, __LINE__);
#define ASSERT_WARN(cond) if (!(cond)) assert_warn(#cond, __FILE__, __LINE__);

#define ASSERT_REC_VAL(cond, ret) if (!(cond)) { assert_rec(#cond, __FILE__, __LINE__); return (ret); }
#endif