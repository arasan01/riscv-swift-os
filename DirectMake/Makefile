# Toolchain
XCTOOLCHAIN=/Library/Developer/Toolchains/swift-DEVELOPMENT-SNAPSHOT-2025-03-10-a.xctoolchain
XCTOOLCHAIN_ID:=$(shell plutil -extract CFBundleIdentifier raw $(XCTOOLCHAIN)/Info.plist)

# Compiler - Swift
SWIFTC=xcrun --toolchain $(XCTOOLCHAIN_ID) swiftc
SWIFT_FLAGS_BASE=-parse-as-library -I LL -swift-version 6
SWIFT_FLAGS_EMBEDDED=-enable-experimental-feature Embedded -enable-experimental-feature Extern -enable-experimental-feature FixedArrays -runtime-compatibility-version none -wmo -Xfrontend -function-sections -Xfrontend -disable-stack-protector -Xfrontend -disable-objc-interop
SWIFT_FLAGS_RISCV=-target riscv32-none-none-eabi -Xcc -march=rv32gc -Xcc -mabi=ilp32

# Compiler - Clang
CC=xcrun --toolchain $(XCTOOLCHAIN_ID) clang
CFLAGS=-std=c11 --target=riscv32-none-none-eabi -nostdlib -ffreestanding -c -march=rv32gc -mabi=ilp32
CFLAGS_CHECK=-Wall -Wextra

# Linker
LINKER_SCRIPT=kernel.ld
LINKER_MAP=kernel.map
LD=xcrun --toolchain $(XCTOOLCHAIN_ID) ld.lld
LD_FLAGS=-T $(LINKER_SCRIPT) --Map $(BUILD_DIR)/$(LINKER_MAP) --nostdlib
LIBSWIFT_UNICODE_TABLE=$(XCTOOLCHAIN)/usr/lib/swift/embedded/riscv32-none-none-eabi/libswiftUnicodeDataTables.a

# Virtual Machine
QEMU=qemu-system-riscv32

# Related Files
SWIFT_SOURCES=$(wildcard swift/*.swift)
CC_SOURCES=$(wildcard ll/*.c)
BUILD_DIR=.build
CC_OBJS=$(patsubst ll/%.c,$(BUILD_DIR)/%.o,$(CC_SOURCES))
SWIFT_OBJECT=_swiftcode.o
OUTPUT=$(BUILD_DIR)/kernel.elf

# デフォルトターゲット
all: debug

debug: SWIFT_FLAGS_BASE += -Onone -g
debug: CFLAGS += -O0 -g
debug: $(OUTPUT) $(OBJECT)

release: SWIFT_FLAGS_BASE += -Osize -lto=llvm-full -experimental-hermetic-seal-at-link
release: CFLAGS += -O3
release: LD_FLAGS += --lto-O3
release: $(OUTPUT) $(OBJECT)

$(BUILD_DIR)/$(SWIFT_OBJECT): $(SWIFT_SOURCES)
	$(SWIFTC) $(SWIFT_FLAGS_BASE) $(SWIFT_FLAGS_EMBEDDED) $(SWIFT_FLAGS_RISCV) -c $^ -o $@

$(BUILD_DIR)/%.o: ll/%.c
	$(CC) $(CFLAGS) -c $< -o $@

$(OUTPUT): $(BUILD_DIR)/$(SWIFT_OBJECT) $(CC_OBJS)
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

.PHONY: all clean check-undef-symbol check-extern-symbol run dev debug release
