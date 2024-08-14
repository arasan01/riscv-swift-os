# Toolchain
XCTOOLCHAIN=/Library/Developer/Toolchains/swift-DEVELOPMENT-SNAPSHOT-2024-08-01-a.xctoolchain
XCTOOLCHAIN_ID:=$(shell plutil -extract CFBundleIdentifier raw $(XCTOOLCHAIN)/Info.plist)

# Compiler - Swift
SWIFTC=xcrun --toolchain $(XCTOOLCHAIN_ID) swiftc
SWIFT_FLAGS_BASE=-Osize -parse-as-library -I ll
SWIFT_FLAGS_EMBEDDED=-enable-experimental-feature Embedded -enable-experimental-feature Extern -wmo -Xfrontend -function-sections -Xfrontend -disable-stack-protector
SWIFT_FLAGS_RISCV=-target riscv32-none-none-eabi -Xcc -march=rv32gc -Xcc -mabi=ilp32

# Compiler - Clang
CC=xcrun --toolchain $(XCTOOLCHAIN_ID) clang
CFLAGS=-std=c11 -O3 --target=riscv32-none-none-eabi -nostdlib -ffreestanding -c -march=rv32gc -mabi=ilp32
CFLAGS_CHECK=-Wall -Wextra

# Linker
LINKER_SCRIPT=kernel.ld
LINKER_MAP=kernel.map
LD=xcrun --toolchain $(XCTOOLCHAIN_ID) ld.lld
LD_FLAGS=-T $(LINKER_SCRIPT) --Map $(BUILD_DIR)/$(LINKER_MAP) --lto-O3 --nostdlib
LIBSWIFT_UNICODE_TABLE=$(XCTOOLCHAIN)/usr/lib/swift/embedded/riscv32-none-none-eabi/libswiftUnicodeDataTables.a

# Virtual Machine
QEMU=qemu-system-riscv32

# Related Files
SWIFT_SOURCES=kernel.swift
CC_ASM_SOURCES=asm.c
BUILD_DIR=.build
SWIFT_OBJECT=$(BUILD_DIR)/_swiftcode.o
CC_ASM_OBJECT=$(BUILD_DIR)/_glue.o
OUTPUT=$(BUILD_DIR)/kernel.elf

# デフォルトターゲット
all: $(OUTPUT) $(OBJECT)

$(SWIFT_OBJECT): $(SWIFT_SOURCES)
	$(SWIFTC) $(SWIFT_FLAGS_BASE) $(SWIFT_FLAGS_EMBEDDED) $(SWIFT_FLAGS_RISCV) -c $^ -o $@

$(CC_ASM_OBJECT): $(CC_ASM_SOURCES)
	$(CC) $(CFLAGS) $(CFLAGS_CHECK) $^ -o $@

$(OUTPUT): $(SWIFT_OBJECT) $(CC_ASM_OBJECT)
	$(LD) $(LD_FLAGS) $(LIBSWIFT_UNICODE_TABLE) $^ -o $@

clean:
	rm -rf $(BUILD_DIR)

dev:
	$(QEMU) -machine virt -bios default -nographic -serial mon:stdio -S -s --no-reboot -kernel $(OUTPUT)

run:
	$(QEMU) -machine virt -bios default -nographic -serial mon:stdio --no-reboot -kernel $(OUTPUT) -D $(BUILD_DIR)/logfile.log -d in_asm

check-undef-symbol: $(OUTPUT)
	nm -u $(OUTPUT)

check-extern-symbol: $(OUTPUT)
	nm -g $(OUTPUT)

.PHONY: all clean check-undef-symbol check-extern-symbol run dev
