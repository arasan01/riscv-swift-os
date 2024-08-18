#include "include/kernel.h"
#include "include/will_remove.h"

int putchar(int c);
void myprintf(const char *fmt, ...) {
    va_list vargs;
    va_start(vargs, fmt);

    while (*fmt) {
        if (*fmt == '%') {
            fmt++;
            switch (*fmt) {
                case '\0':
                    putchar('%');
                    goto end;
                case '%':
                    putchar('%');
                    break;
                case 's': {
                    const char *s = va_arg(vargs, const char *);
                    while (*s) {
                        putchar(*s);
                        s++;
                    }
                    break;
                }
                case 'd': {
                    int value = va_arg(vargs, int);
                    if (value < 0) {
                        putchar('-');
                        value = -value;
                    }

                    int divisor = 1;
                    while (value / divisor > 9)
                        divisor *= 10;

                    while (divisor > 0) {
                        putchar('0' + value / divisor);
                        value %= divisor;
                        divisor /= 10;
                    }

                    break;
                }
                case 'x': {
                    int value = va_arg(vargs, int);
                    for (int i = 7; i >= 0; i--) {
                        int nibble = (value >> (i * 4)) & 0xf;
                        putchar("0123456789abcdef"[nibble]);
                    }
                }
            }
        } else {
            putchar(*fmt);
        }

        fmt++;
    }

end:
    va_end(vargs);
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
    ptr = NULL;
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
