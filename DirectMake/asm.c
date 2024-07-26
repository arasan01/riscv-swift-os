#include "ll/ll.h"

#define MEMORY_SIZE 1024*1024 // 1MBのメモリプール

static uint8_t memory_pool[MEMORY_SIZE];
static size_t current_offset = 0;

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

void *memset(void *buf, int32_t c, uint32_t n) {
    for (uint32_t i = 0; i < n; i++) {
        ((uint8_t *)buf)[i] = c & 0xff;
        ((uint8_t *)buf)[i+1] = c & 0xff00;
        ((uint8_t *)buf)[i+2] = c & 0xff0000;
        ((uint8_t *)buf)[i+3] = c & 0xff000000;
    }
    return buf;
}

void putchar2(char ch) {
    sbi_call(ch, 0, 0, 0, 0, 0, 0, 1 /* Console Putchar */);
}

void kernel_main3(void) {
    const char *s = "\n\nHello World!\n";
    for (int i = 0; s[i] != '\0'; i++) {
        putchar2(s[i]);
    }

    for (;;) {
        __asm__ __volatile__("wfi");
    }
}

void wfi() {
    __asm__ __volatile__("wfi");
}

__attribute__((section(".text.boot")))
__attribute__((naked))
void boot(void) {
    __asm__ __volatile__(
        "mv sp, %[stack_top]\n"
        "j kernel_main\n"
        :
        : [stack_top] "r" (__stack_top)
    );
}

int posix_memalign(void **memptr, size_t alignment, size_t size) {
    if (alignment % sizeof(void*) != 0 || (alignment & (alignment - 1)) != 0) {
        return 2;
    }

    size_t padding = 0;
    size_t current_address = (size_t)&memory_pool[current_offset];
    if (current_address % alignment != 0) {
        padding = alignment - (current_address % alignment);
    }

    if (current_offset + padding + size > MEMORY_SIZE) {
        return 3;
    }

    current_offset += padding;
    *memptr = &memory_pool[current_offset];
    current_offset += size;

    return 0;
}

void free(void *ptr) {
  // ???
}
