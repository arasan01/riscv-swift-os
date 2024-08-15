#pragma once

#include <stddef.h>
#include <stdint.h>

extern char __bss[];
extern char __bss_end[];
extern char __stack_top[];
extern char __free_ram[];
extern char __free_ram_end[];

char *get_bss_start();
char *get_bss_end();
char *get_stack_top();
char *get_free_ram();
char *get_free_ram_end();
size_t get_bss_ptr_value();
size_t get_bss_end_ptr_value();
size_t get_stack_top_ptr_value();
size_t get_free_ram_ptr_value();
size_t get_free_ram_end_ptr_value();

int putchar(int c);
void *memset(void *buf, int c, size_t n);
void *memcpy(void *dest, const void *src, size_t count);
void *memmove(void *dest, const void *src, size_t count);
size_t strlen(const char *str);
void wfi();

struct sbiret {
    long error;
    long value;
};

struct sbiret sbi_call(
    long arg0, long arg1, long arg2, long arg3,
    long arg4, long arg5, long fid,  long eid
);
