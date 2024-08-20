#pragma once

#include <stddef.h>
#include <stdint.h>
#include <stdarg.h>
#include "swift_assist.h"
#include "will_remove.h"

#define PAGE_SIZE (uint32_t)4096

#define align_up(value, align)   __builtin_align_up(value, align)
#define is_aligned(value, align) __builtin_is_aligned(value, align)

typedef uintptr_t paddr_t;
typedef uintptr_t vaddr_t;

extern char __bss[];
extern char __bss_end[];
extern char __kernel_base[];
extern char __stack_top[];
extern char __free_c_ram[]; // for page allocator
extern char __free_c_ram_end[];
extern char __free_ram[]; // for swift runtime memalign
extern char __free_ram_end[];

paddr_t alloc_pages(uint32_t n);

void unimp();
void wfi();
void nop();

struct sbiret {
    long error;
    long value;
};

struct sbiret sbi_call(
    long arg0, long arg1, long arg2, long arg3,
    long arg4, long arg5, long fid,  long eid
);

struct trap_frame {
    uint32_t ra;
    uint32_t gp;
    uint32_t tp;
    uint32_t t0;
    uint32_t t1;
    uint32_t t2;
    uint32_t t3;
    uint32_t t4;
    uint32_t t5;
    uint32_t t6;
    uint32_t a0;
    uint32_t a1;
    uint32_t a2;
    uint32_t a3;
    uint32_t a4;
    uint32_t a5;
    uint32_t a6;
    uint32_t a7;
    uint32_t s0;
    uint32_t s1;
    uint32_t s2;
    uint32_t s3;
    uint32_t s4;
    uint32_t s5;
    uint32_t s6;
    uint32_t s7;
    uint32_t s8;
    uint32_t s9;
    uint32_t s10;
    uint32_t s11;
    uint32_t sp;
} __attribute__((packed));

void switch_context(
    uint32_t *prev_sp, uint32_t *next_sp
);

void init_seed(uint32_t seed);

void register_kernel_entry();
void kernel_entry(void);

uint32_t get_scause();
void set_scause(uint32_t value);

uint32_t get_stval();
void set_stval(uint32_t value);

uint32_t get_sepc();
void set_sepc(uint32_t value);

void set_satp(uint32_t value);
void set_sscratch(uint32_t value);

#define READ_CSR(reg)                                                          \
    ({                                                                         \
        unsigned long __tmp;                                                   \
        __asm__ __volatile__("csrr %0, " #reg : "=r"(__tmp));                  \
        __tmp;                                                                 \
    })

#define WRITE_CSR(reg, value)                                                  \
    do {                                                                       \
        uint32_t __tmp = (value);                                              \
        __asm__ __volatile__("csrw " #reg ", %0" ::"r"(__tmp));                \
    } while (0)
