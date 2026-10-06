#ifndef NEXUS_IOCTL_ABI_H
#define NEXUS_IOCTL_ABI_H

/*
 * Reconstructed from the ARM code in libnexus.so (32-bit EABI5).
 * This describes the generated userspace proxy blocks, not public Nexus API
 * structures and not the kernel module's private object layouts.
 */
#include <stdint.h>

typedef uint32_t nexus_u32;
typedef uint32_t nexus_ptr32;
typedef uint32_t nexus_handle32;

enum nexus_ioctl_request {
    NEXUS_IOCTL_PLATFORM_CREATE_HEAP                 = 0x00650005,
    NEXUS_IOCTL_PLATFORM_DESTROY_HEAP                = 0x00650006,
    NEXUS_IOCTL_PLATFORM_GET_DEFAULT_HEAP_SETTINGS   = 0x0065000d,
    NEXUS_IOCTL_PLATFORM_GET_FRAMEBUFFER_HEAP        = 0x00650013,
    NEXUS_IOCTL_PLATFORM_GET_HEAP_RUNTIME_SETTINGS   = 0x00650014,
    NEXUS_IOCTL_PLATFORM_GET_HEAP_STATUS             = 0x00650015,

    NEXUS_IOCTL_MEMORY_BLOCK_ALLOCATE                 = 0x00653e19,
    NEXUS_IOCTL_MEMORY_BLOCK_FREE                     = 0x00653e1a,
    NEXUS_IOCTL_MEMORY_BLOCK_DEFAULT_ALLOC_SETTINGS   = 0x00653e1b,
    NEXUS_IOCTL_MEMORY_BLOCK_GET_PROPERTIES           = 0x00653e1c,
    NEXUS_IOCTL_MEMORY_BLOCK_GET_USER_STATE           = 0x00653e1d,
    NEXUS_IOCTL_MEMORY_BLOCK_LOCK_OFFSET              = 0x00653e1e,
    NEXUS_IOCTL_MEMORY_BLOCK_SET_USER_STATE           = 0x00653e1f,
    NEXUS_IOCTL_MEMORY_BLOCK_UNLOCK_OFFSET            = 0x00653e20,
};

/* word 0 is a nested userspace pointer on entry and a heap handle on success. */
struct nexus_ioc_platform_create_heap {
    union {
        nexus_ptr32 settings_in;
        nexus_handle32 heap_out;
    } w0;
};

struct nexus_ioc_platform_destroy_heap {
    nexus_handle32 heap;
};

struct nexus_ioc_platform_default_heap_settings {
    nexus_ptr32 settings_out;
};

/* word 0 is the framebuffer index on entry and a heap handle on success. */
struct nexus_ioc_platform_get_framebuffer_heap {
    union {
        nexus_u32 index_in;
        nexus_handle32 heap_out;
    } w0;
};

struct nexus_ioc_platform_get_heap_runtime_settings {
    nexus_handle32 heap;
    nexus_ptr32 settings_out;
};

struct nexus_ioc_platform_get_heap_status {
    union {
        nexus_handle32 heap_in;
        nexus_u32 result_out;
    } w0;
    nexus_ptr32 status_out;
    nexus_u32 mapped_offset_lo_out;
    nexus_u32 mapped_offset_hi_out;
};

/*
 * Exact six-word transport is proven. Semantic names for words 2..5 remain
 * provisional because the public Broadcom headers are not present.
 */
struct nexus_ioc_memory_block_allocate {
    union {
        nexus_handle32 heap_in;
        nexus_handle32 block_out;
    } w0;
    nexus_u32 size;
    nexus_u32 allocation_option;
    nexus_u32 reserved_or_flags;
    nexus_ptr32 source_file;
    nexus_u32 source_line;
};

struct nexus_ioc_memory_block_free {
    nexus_handle32 block;
};

struct nexus_ioc_memory_block_default_alloc_settings {
    nexus_ptr32 settings_out;
};

struct nexus_ioc_memory_block_get_properties {
    nexus_handle32 block;
    nexus_ptr32 properties_out;
};

struct nexus_ioc_memory_block_get_user_state {
    union {
        nexus_handle32 block_in;
        nexus_u32 result_out;
    } w0;
    nexus_ptr32 user_state_out;
};

struct nexus_ioc_memory_block_lock_offset {
    union {
        nexus_handle32 block_in;
        nexus_u32 result_out;
    } w0;
    nexus_ptr32 offset64_out;
};

struct nexus_ioc_memory_block_set_user_state {
    nexus_handle32 block;
    nexus_u32 opaque_user_state;
};

struct nexus_ioc_memory_block_unlock_offset {
    nexus_handle32 block;
};

_Static_assert(sizeof(struct nexus_ioc_platform_create_heap) == 4, "ABI");
_Static_assert(sizeof(struct nexus_ioc_platform_get_heap_status) == 16, "ABI");
_Static_assert(sizeof(struct nexus_ioc_memory_block_allocate) == 24, "ABI");
_Static_assert(sizeof(struct nexus_ioc_memory_block_get_properties) == 8, "ABI");
_Static_assert(sizeof(struct nexus_ioc_memory_block_lock_offset) == 8, "ABI");

#endif
