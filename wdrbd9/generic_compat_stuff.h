#ifndef WDRBD9_GENERIC_COMPAT_STUFF
#define WDRBD9_GENERIC_COMPAT_STUFF



#define MODULE_AUTHOR(egal, ...)
#define MODULE_DESCRIPTION(egal, ...)
#define MODULE_VERSION(egal)
#define MODULE_LICENSE(egal)
#define MODULE_PARM_DESC(egal, ...)
#define MODULE_ALIAS_BLOCKDEV_MAJOR(egal)
#define MODULE_PARM_DESC(egal, ...)

#define module_param(...)
#define module_param_string(...)
#define put_page(egal)

#define uninitialized_var(x) x = x
#define WARN(condition, format...) do {if(!!(condition)) printk(format);} while(0)
/* As good as it gets for now, don't know how to implement a true windows *ONCE* */
#define WARN_ONCE(condition, format...) WARN(condition, format)

#if 0
struct kmem_cache {
	NPAGED_LOOKASIDE_LIST cache;
};
#endif


#define __always_inline inline
#define __inline inline

typedef char bool;
typedef int cpumask_var_t;

/* Yes, that'll be active for all structures...
 * But unless defined otherwise the compiler is free to choose alignment anyway. */
#define __packed


/* For shared/inaddr.h, struct in_addr */
#define FAR


#define BUILD_BUG_ON(expr)


/* Undefined if input is zero.
 * http://lxr.free-electrons.com/source/include/linux/bitops.h#L215 */
static inline int __ffs64(u64 i)
{
	int index, found;

	found = _BitScanForward64(&index, i);
	return found ? index : 0;
}

struct module {
	char version[1];
};

static inline void module_put(void *module)
{
    (void)module;
}

static inline void request_module(const char *fmt, ...)
{
    (void)fmt;
}

static inline int try_module_get(void *m)
{
    (void)m;
    return 0;
}

static inline void* __vmalloc(u64 bytes, int flags, int flags2)
{
    (void)bytes;
    (void)flags;
    (void)flags2;
    /* NULL not defined yet */
    return (void*)0;
}


/* Taken from include/asm-generic/div64.h */
static inline u32 _do_div_fn(u64 *n, u32 base)
{
        u32 rem;
        rem = (*n) % base;
	*n  = (*n) / base;
        return rem;
}

#define do_div(n, base) _do_div_fn(&(n), (base))


#define blk_start_plug(egal)
#define blk_finish_plug(egal)

#define xchg_ptr(__target, __value) (  (void*)xchg(  (LONG_PTR*)(__target), (LONG_PTR)(__value)  )  )


#endif
