#include "include/kernel.h"
#include "include/swift_assist.h"

void procAEntry();
void procBEntry();

uintptr_t get_procA() {
    return (uintptr_t)procAEntry;
}
uintptr_t get_procB() {
    return (uintptr_t)procBEntry;
}

char *get_bss_start() {
    return __bss;
}
char *get_bss_end() {
    return __bss_end;
}
char *get_kernel_base() {
    return __kernel_base;
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
size_t get_kernel_base_ptr_value() {
    return (size_t)__kernel_base;
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
