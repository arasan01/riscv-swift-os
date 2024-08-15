#include "ll/ll.h"

int64_t __ashldi3(int64_t a, int32_t b);
int64_t __lshrdi3(int64_t a, int32_t b);
uint64_t __udivdi3(uint64_t num, uint64_t denom);
uint64_t __umoddi3(uint64_t num, uint64_t denom);

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

void *memset(void *buf, int c, size_t n) {
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

void *memmove(void *dest, const void *src, size_t count) {
    unsigned char *d = (unsigned char *)dest;
    const unsigned char *s = (const unsigned char *)src;

    // srcがdestより前にある場合、または重なっていない場合
    if (s < d && s + count > d) {
        // 後ろからコピー
        s += count;
        d += count;
        while (count-- > 0) {
            *--d = *--s;
        }
    } else {
        // 前からコピー（memcpyを使用）
        memcpy(d, s, count);
    }

    return dest;
}

size_t strlen(const char *str) {
    const char *s;
    for (s = str; *s; ++s) {}
    return (size_t)(s - str);
}

// 64ビット整数の算術左シフト演算を行う
int64_t __ashldi3(int64_t a, int32_t b) {
    uint32_t low = (uint32_t)a;
    int high = (int)(a >> 32);

    if (b >= 32) {
        high = low << (b - 32);
        low = 0;
    } else if (b != 0) {
        high = (high << b) | (low >> (32 - b));
        low = low << b;
    }

    return ((int64_t)high << 32) | low;
}

int64_t __lshrdi3(int64_t a, int b) {
    uint64_t ua = (uint64_t)a;  // 符号なし64ビット整数に変換
    if (b >= 64) {
        return 0;  // 64以上シフトすると0になる
    }
    return (int64_t)(ua >> b);  // 論理右シフトを行い、結果を返す
}

uint64_t __udivdi3(uint64_t num, uint64_t denom) {
    if (denom == 0) {
        // 0除算の処理（実際の環境に応じて適切に処理する）
        return 0;
    }

    uint64_t result = 0;
    while (num >= denom) {
        num -= denom;
        result++;
    }
    return result;
}

uint64_t __umoddi3(uint64_t num, uint64_t denom) {
    if (denom == 0) {
        // 0除算の処理（実際の環境に応じて適切に処理する）
        return 0;
    }

    while (num >= denom) {
        num -= denom;
    }
    return num;
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
    return 0;
}

void free(void *ptr) {
    // この簡易実装では実際にメモリを解放しません
    // フリースタンディング環境では、通常、メモリ解放は不要または別の方法で管理します
    ptr = 0x0;
}

int putchar(int ch) {
    sbi_call(ch, 0, 0, 0, 0, 0, 0, 1 /* Console Putchar */);
    return ch;
}
