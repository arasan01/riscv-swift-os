#include "ll/ll.h"

char *get_bss_start() {
    return __bss;
}
char *get_bss_end() {
    return __bss_end;
}
char *get_stack_top() {
    return __stack_top;
}
char *get_free_ram() {
    return __free_ram;
}
char *get_free_ram_end() {
    return __free_ram_end;
}
size_t get_bss_ptr_value() {
    return (size_t)__bss;
}
size_t get_bss_end_ptr_value() {
    return (size_t)__bss_end;
}
size_t get_stack_top_ptr_value() {
    return (size_t)__stack_top;
}
size_t get_free_ram_ptr_value() {
    return (size_t)__free_ram;
}
size_t get_free_ram_end_ptr_value() {
    return (size_t)__free_ram_end;
}

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

void *memset(void *buf, int32_t c, size_t n) {
    uint8_t *p = (uint8_t *) buf;
    uint8_t m = (uint8_t)c;
    while (n--)
        *p++ = m;
    return buf;
}

void *memcpy(void *dest, const void *src, size_t count) {
    char *d = dest;
    const char *s = src;
    while (count--) {
        *d++ = *s++;
    }
    return dest;
}

static void *heap_start = 0;
static void *heap_end = 0;

// 簡易的なメモリアロケータ
void *simple_alloc(size_t size) {
    if (heap_start == 0) {
        // 初期化: ヒープ領域の開始アドレスを設定
        // 注: 実際のアドレスは環境に応じて適切に設定する必要があります
        heap_start = (void *)get_free_ram();
        heap_end = heap_start;
    }

    void *result = heap_end;
    heap_end = (char *)heap_end + size;
    return result;
}

int posix_memalign(void **memptr, size_t alignment, size_t size) {
    // アライメントは2のべき乗であることを確認
    if ((alignment & (alignment - 1)) != 0 || alignment < sizeof(void *))
        return 22; // EINVAL

    size_t padding = alignment - 1 + sizeof(void *);
    void *p = simple_alloc(size + padding);
    if (p == 0)
        return 12; // ENOMEM

    void *aligned = (void *)(((size_t)p + padding) & ~(alignment - 1));
    *((void **)aligned - 1) = p;
    *memptr = aligned;
    // print call posix
    char *msg = "\nposix_memalign called";
    while (*msg != '\0') {
        sputchar(*msg++);
    }
    return 0;
}

void free(void *ptr) {
    // この簡易実装では実際にメモリを解放しません
    // フリースタンディング環境では、通常、メモリ解放は不要または別の方法で管理します
    char *msg = "\nfree called";
    while (*msg != '\0') {
        sputchar(*msg++);
    }
}

void sputchar(char ch) {
    sbi_call(ch, 0, 0, 0, 0, 0, 0, 1 /* Console Putchar */);
}

void wfi() {
    __asm__ __volatile__("wfi");
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

