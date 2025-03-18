#pragma once

#include <stddef.h>

void myprintf(const char *fmt, ...);
#define CPANIC(fmt, ...)                                                        \
    do {                                                                       \
        myprintf("PANIC: %s:%d: " fmt "\n", __FILE__, __LINE__, ##__VA_ARGS__);  \
        while (1) {}                                                           \
    } while (0)
