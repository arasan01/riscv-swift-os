#include "include/kernel.h"
#include "include/swift_assist.h"

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

// Workaround for the following error:
// 直接Swiftでputcharをcdeclによって作ってもコンパイラの内部エラーによってコンパイルできない
int swift_impl_putchar(int c);
int putchar(int ch) {
    return swift_impl_putchar(ch);
}
