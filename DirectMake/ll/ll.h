#pragma once

typedef unsigned char uint8_t;
typedef int int32_t;
typedef unsigned int uint32_t;
typedef uint32_t size_t;

extern char *__bss;
extern char *__bss_end;
extern char *__stack_top;

void wfi();
void *memset(void *buf, int32_t c, uint32_t n);
void putchar2(char ch);

struct sbiret {
    long error;
    long value;
};

struct sbiret sbi_call(long arg0, long arg1, long arg2, long arg3, long arg4,
                       long arg5, long fid, long eid);
