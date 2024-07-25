# Toolchain
XCTOOLCHAIN=/Library/Developer/Toolchains/swift-DEVELOPMENT-SNAPSHOT-2024-07-22-a.xctoolchain
XCTOOLCHAIN_ID:=$(shell plutil -extract CFBundleIdentifier raw $(XCTOOLCHAIN)/Info.plist)

# Compiler - Swift
SWIFTC=xcrun --toolchain $(XCTOOLCHAIN_ID) swiftc
SWIFT_FLAGS_BASE=-O -g -Xlinker -dead_strip -parse-as-library -I ll
SWIFT_FLAGS_EMBEDDED=-enable-experimental-feature Embedded -wmo -Xfrontend -function-sections -Xfrontend -disable-stack-protector
SWIFT_FLAGS_RISCV=-target riscv32-none-none-eabi -Xcc -march=rv32gc -Xcc -mabi=ilp32

# Compiler - Clang
CC=xcrun --toolchain $(XCTOOLCHAIN_ID) clang
CFLAGS=-std=c11 -O2 -g3 --target=riscv32 -ffreestanding -nostdlib -c
CFLAGS_CHECK=-Wall -Wextra
# Linker
LINKER_SCRIPT=kernel.ld
LINKER_MAP=kernel.map
LD=xcrun --toolchain $(XCTOOLCHAIN_ID) ld.lld
LD_FLAGS=-T $(LINKER_SCRIPT) --Map $(BUILD_DIR)/$(LINKER_MAP)
LIBSWIFT_UNICODE_TABLE=$(XCTOOLCHAIN)/usr/lib/swift/embedded/riscv32-none-none-eabi/libswiftUnicodeDataTables.a

# Virtual Machine
QEMU=qemu-system-riscv32

# Related Files
SWIFT_SOURCES=kernel.swift
CC_BOOT_SOURCES=boot.c
BUILD_DIR=.build
SWIFT_OBJECT=$(BUILD_DIR)/_swiftcode.o
CC_BOOT_OBJECT=$(BUILD_DIR)/_boot.o
OUTPUT=$(BUILD_DIR)/kernel.elf

# デフォルトターゲット
all: $(OUTPUT) $(OBJECT)

$(SWIFT_OBJECT): $(SWIFT_SOURCES)
	$(SWIFTC) $(SWIFT_FLAGS_BASE) $(SWIFT_FLAGS_EMBEDDED) $(SWIFT_FLAGS_RISCV) -c $^ -o $@

$(CC_BOOT_OBJECT): $(CC_BOOT_SOURCES)
	$(CC) $(CFLAGS) $^ -o $@

$(OUTPUT): $(SWIFT_OBJECT) $(CC_BOOT_OBJECT)
	$(LD) $(LD_FLAGS) $(LIBSWIFT_UNICODE_TABLE) $^ -o $@

clean:
	rm -rf $(BUILD_DIR)

run:
	$(QEMU) -machine virt -bios default -nographic -serial mon:stdio --no-reboot -kernel $(OUTPUT)

check-undef-symbol: $(OUTPUT)
	nm -u $(OUTPUT)

check-extern-symbol: $(OUTPUT)
	nm -g $(OUTPUT)

.PHONY: all clean check-undef-symbol check-extern-symbol run
