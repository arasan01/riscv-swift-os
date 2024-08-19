#pragma once

#include <stddef.h>

uintptr_t get_procA();
uintptr_t get_procB();
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
