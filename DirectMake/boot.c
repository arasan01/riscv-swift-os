#include "ll/ll.h"

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

void posix_memalign(
  void **memptr,
  size_t alignment,
  size_t size
) {
  // ???
}

void free(void *ptr) {
  // ???
}
