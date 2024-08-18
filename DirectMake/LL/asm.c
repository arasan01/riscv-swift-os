#include "include/kernel.h"

struct sbiret sbi_call(long arg0, long arg1, long arg2, long arg3, long arg4,
                       long arg5, long fid, long eid) {
    register long a0 __asm__("a0") = arg0;
    register long a1 __asm__("a1") = arg1;
    register long a2 __asm__("a2") = arg2;
    register long a3 __asm__("a3") = arg3;
    register long a4 __asm__("a4") = arg4;
    register long a5 __asm__("a5") = arg5;
    register long a6 __asm__("a6") = fid;
    register long a7 __asm__("a7") = eid;

    __asm__ __volatile__("ecall"
                         : "=r"(a0), "=r"(a1)
                         : "r"(a0), "r"(a1), "r"(a2), "r"(a3), "r"(a4), "r"(a5),
                           "r"(a6), "r"(a7)
                         : "memory");
    return (struct sbiret){.error = a0, .value = a1};
}


void wfi() {
    __asm__ __volatile__("wfi");
}

void unimp() {
    __asm__ __volatile__("unimp");
}

__attribute__((section(".text.boot")))
__attribute__((naked))
void boot(void) {
    __asm__ __volatile__(
        "mv sp, %[stack_top]\n"
        "j kernel_main_swift\n"
        :
        : [stack_top] "r" (__stack_top)
    );
}

__attribute__((naked))
__attribute__((aligned(4)))
void kernel_entry(void) {
    __asm__ __volatile__(
        "csrw sscratch, sp\n"
        "addi sp, sp, -4 * 31\n"
        "sw ra,  4 * 0(sp)\n"
        "sw gp,  4 * 1(sp)\n"
        "sw tp,  4 * 2(sp)\n"
        "sw t0,  4 * 3(sp)\n"
        "sw t1,  4 * 4(sp)\n"
        "sw t2,  4 * 5(sp)\n"
        "sw t3,  4 * 6(sp)\n"
        "sw t4,  4 * 7(sp)\n"
        "sw t5,  4 * 8(sp)\n"
        "sw t6,  4 * 9(sp)\n"
        "sw a0,  4 * 10(sp)\n"
        "sw a1,  4 * 11(sp)\n"
        "sw a2,  4 * 12(sp)\n"
        "sw a3,  4 * 13(sp)\n"
        "sw a4,  4 * 14(sp)\n"
        "sw a5,  4 * 15(sp)\n"
        "sw a6,  4 * 16(sp)\n"
        "sw a7,  4 * 17(sp)\n"
        "sw s0,  4 * 18(sp)\n"
        "sw s1,  4 * 19(sp)\n"
        "sw s2,  4 * 20(sp)\n"
        "sw s3,  4 * 21(sp)\n"
        "sw s4,  4 * 22(sp)\n"
        "sw s5,  4 * 23(sp)\n"
        "sw s6,  4 * 24(sp)\n"
        "sw s7,  4 * 25(sp)\n"
        "sw s8,  4 * 26(sp)\n"
        "sw s9,  4 * 27(sp)\n"
        "sw s10, 4 * 28(sp)\n"
        "sw s11, 4 * 29(sp)\n"

        "csrr a0, sscratch\n"
        "sw a0, 4 * 30(sp)\n"

        "mv a0, sp\n"
        "call handle_trap\n"

        "lw ra,  4 * 0(sp)\n"
        "lw gp,  4 * 1(sp)\n"
        "lw tp,  4 * 2(sp)\n"
        "lw t0,  4 * 3(sp)\n"
        "lw t1,  4 * 4(sp)\n"
        "lw t2,  4 * 5(sp)\n"
        "lw t3,  4 * 6(sp)\n"
        "lw t4,  4 * 7(sp)\n"
        "lw t5,  4 * 8(sp)\n"
        "lw t6,  4 * 9(sp)\n"
        "lw a0,  4 * 10(sp)\n"
        "lw a1,  4 * 11(sp)\n"
        "lw a2,  4 * 12(sp)\n"
        "lw a3,  4 * 13(sp)\n"
        "lw a4,  4 * 14(sp)\n"
        "lw a5,  4 * 15(sp)\n"
        "lw a6,  4 * 16(sp)\n"
        "lw a7,  4 * 17(sp)\n"
        "lw s0,  4 * 18(sp)\n"
        "lw s1,  4 * 19(sp)\n"
        "lw s2,  4 * 20(sp)\n"
        "lw s3,  4 * 21(sp)\n"
        "lw s4,  4 * 22(sp)\n"
        "lw s5,  4 * 23(sp)\n"
        "lw s6,  4 * 24(sp)\n"
        "lw s7,  4 * 25(sp)\n"
        "lw s8,  4 * 26(sp)\n"
        "lw s9,  4 * 27(sp)\n"
        "lw s10, 4 * 28(sp)\n"
        "lw s11, 4 * 29(sp)\n"
        "lw sp,  4 * 30(sp)\n"
        "sret\n"
    );
}

void register_kernel_entry() {
    __asm__ __volatile__("csrw stvec, %0" ::"r"((uint32_t)kernel_entry));
}

uint32_t get_scause() {
    uint32_t scause;
    __asm__ __volatile__("csrr %0, scause" : "=r"(scause));
    return scause;
}

void set_scause(uint32_t value) {
    __asm__ __volatile__("csrw scause, %0" ::"r"(value));
}

uint32_t get_stval() {
    uint32_t stval;
    __asm__ __volatile__("csrr %0, stval" : "=r"(stval));
    return stval;
}
void set_stval(uint32_t value) {
    __asm__ __volatile__("csrw stval, %0" ::"r"(value));
}

uint32_t get_sepc() {
    uint32_t sepc;
    __asm__ __volatile__("csrr %0, sepc" : "=r"(sepc));
    return sepc;
}
void set_sepc(uint32_t value) {
    __asm__ __volatile__("csrw sepc, %0" ::"r"(value));
}

uint32_t __atomic_load_4(const volatile void *ptr, int memorder)
{
    uint32_t result;
    __asm__ volatile (
        "fence r, r\n\t"
        "lw %0, 0(%1)\n\t"
        "fence r, r"
        : "=r" (result)
        : "r" (ptr)
        : "memory"
    );
    return result;
}

uint32_t __atomic_fetch_add_4(volatile void *ptr, uint32_t val, int memorder)
{
    uint32_t result;
    uint32_t temp;
    __asm__ volatile (
        "fence rw, rw\n"
        "1:\n\t"
        "lr.w %0, 0(%2)\n\t"
        "add %1, %0, %3\n\t"
        "sc.w t0, %1, 0(%2)\n\t"
        "bnez t0, 1b\n\t"
        "fence rw, rw"
        : "=&r" (result), "=&r" (temp)
        : "r" (ptr), "r" (val)
        : "t0", "memory"
    );
    return result;
}

__attribute__((naked)) void switch_context(
    uint32_t *prev_sp, uint32_t *next_sp
) {
    __asm__ __volatile__(
        "addi sp, sp, -13 * 4\n"
        "sw ra,  0  * 4(sp)\n"
        "sw s0,  1  * 4(sp)\n"
        "sw s1,  2  * 4(sp)\n"
        "sw s2,  3  * 4(sp)\n"
        "sw s3,  4  * 4(sp)\n"
        "sw s4,  5  * 4(sp)\n"
        "sw s5,  6  * 4(sp)\n"
        "sw s6,  7  * 4(sp)\n"
        "sw s7,  8  * 4(sp)\n"
        "sw s8,  9  * 4(sp)\n"
        "sw s9,  10 * 4(sp)\n"
        "sw s10, 11 * 4(sp)\n"
        "sw s11, 12 * 4(sp)\n"
        "sw sp, (a0)\n"
        "lw sp, (a1)\n"
        "lw ra,  0  * 4(sp)\n"
        "lw s0,  1  * 4(sp)\n"
        "lw s1,  2  * 4(sp)\n"
        "lw s2,  3  * 4(sp)\n"
        "lw s3,  4  * 4(sp)\n"
        "lw s4,  5  * 4(sp)\n"
        "lw s5,  6  * 4(sp)\n"
        "lw s6,  7  * 4(sp)\n"
        "lw s7,  8  * 4(sp)\n"
        "lw s8,  9  * 4(sp)\n"
        "lw s9,  10 * 4(sp)\n"
        "lw s10, 11 * 4(sp)\n"
        "lw s11, 12 * 4(sp)\n"
        "addi sp, sp, 13 * 4\n"
        "ret\n"
    );
}

int putchar(int c) {
    sbi_call(c, 0, 0, 0, 0, 0, 0, 1);
    return c;
}

static uint32_t _seed = 0;

void init_seed(uint32_t seed) {
    uint32_t cycle, time;

    if (seed != 0) {
        _seed = seed;
        return;
    }
    __asm__ volatile ("rdcycle %0" : "=r" (cycle));
    __asm__ volatile ("rdtime %0" : "=r" (time));

    _seed = cycle ^ time;
}

uint32_t lcg_random(void) {
    __asm__ volatile (
        "li t0, 1664525\n\t"
        "li t1, 1013904223\n\t"
        "mul %0, %0, t0\n\t"
        "add %0, %0, t1\n\t"
        : "+r" (_seed)
        :
        : "t0", "t1"
    );
    return _seed;
}

uint32_t arc4random(void) {
    if (_seed == 0) {
        init_seed(0);
    }
    return lcg_random();
}

void arc4random_buf(void *buf, size_t nbytes) {
    uint8_t *p = (uint8_t *)buf;
    size_t i;

    if (_seed == 0) {
        init_seed(0);
    }

    for (i = 0; i < nbytes; i++) {
        if (i % 4 == 0) {
            uint32_t random = lcg_random();
            *(uint32_t *)(p + i) = random;
        }
    }
}

uint32_t
arc4random_uniform(uint32_t upper_bound) {
    uint32_t r, min;

    if (upper_bound < 2)
        return 0;

    if (_seed == 0) {
        init_seed(0);
    }

    min = -upper_bound % upper_bound;

    for (;;) {
        r = arc4random();
        if (r >= min)
            break;
    }

    return r % upper_bound;
}
