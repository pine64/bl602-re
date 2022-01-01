#ifndef _MACRO_H_
#define _MACRO_H_

#define EXPAND(...) __VA_ARGS__

#define EVAL5(...) EXPAND(EXPAND(__VA_ARGS__))
#define EVAL4(...) EVAL5(EVAL5(__VA_ARGS__))
#define EVAL3(...) EVAL4(EVAL4(__VA_ARGS__))
#define EVAL2(...) EVAL3(EVAL3(__VA_ARGS__))
#define EVAL1(...) EVAL2(EVAL2(__VA_ARGS__))
#define EVAL(...) EVAL1(EVAL1(__VA_ARGS__))

#define FIRST(a, ...) a
#define SECOND(a, b, ...) b

#define IS_PROBE(...) SECOND(__VA_ARGS__, 0)
#define PROBE() 0,1
#define NOT_0 PROBE()
#define NOT(x) IS_PROBE(CAT(NOT_, x))
#define BOOL(x) NOT(NOT(x))


#define EAT(...)
#define DEFER(x) x EMPTY()
#define DEFER2(x) x EMPTY EMPTY()()
#define EMPTY()

#define CAT(a,b)  a ## b

#define IF(c) _IF(BOOL(c))
#define _IF(c) CAT(_IF_,c)
#define _IF_0(...)
#define _IF_1(...) __VA_ARGS__

#define HAS_ARGS(...) BOOL(FIRST(_END_OF_ARGUMENTS_ __VA_ARGS__)(0))
#define _END_OF_ARGUMENTS_(...) BOOL(FIRST(__VA_ARGS__))

#define APPLY_NEXT(func, a, ...) \
    func(a) \
    IF(HAS_ARGS(__VA_ARGS__)) (DEFER2(_APPLY_NEXT)()(func, __VA_ARGS__))
#define APPLY(func, ...) \
    IF(HAS_ARGS(__VA_ARGS__)) (EVAL(APPLY_NEXT(func, ##__VA_ARGS__)))
#define _APPLY_NEXT() APPLY_NEXT

#define APPLYarg_NEXT(func, arg, a, ...) \
    func(arg, a) \
    IF(HAS_ARGS(__VA_ARGS__)) (DEFER2(_APPLYarg_NEXT)()(func, arg, __VA_ARGS__))
#define APPLYarg(func, arg, ...) \
    IF(HAS_ARGS(__VA_ARGS__)) (EVAL(APPLYarg_NEXT(func, arg, ##__VA_ARGS__)))
#define _APPLYarg_NEXT() APPLYarg_NEXT

#define PACK(var, name) for (int tip = 1; tip;) for (__typeof__ (var) name = var; tip; tip = 0, var = name)
#define PACK0(var, name) for (int tip = 1; tip;) for (__typeof__ (var) name = {0}; tip; tip = 0, var = name)
#define EXTRACT(var, name) for (int tip = 1; tip;) for (__typeof__ (var) name = var; tip; tip = 0)
#define STATIC_ASSERT(COND,MSG) typedef char static_assertion_##MSG[(COND)?1:-1]
#endif