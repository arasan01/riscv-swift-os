# Toolchain
XCTOOLCHAIN=/Library/Developer/Toolchains/swift-DEVELOPMENT-SNAPSHOT-2025-03-10-a.xctoolchain
XCTOOLCHAIN_ID:=$(shell plutil -extract CFBundleIdentifier raw $(XCTOOLCHAIN)/Info.plist)

# Compiler - Swift
SWIFTC=xcrun --toolchain $(XCTOOLCHAIN_ID) swiftc
SWIFT_FLAGS_COMPILATION_MODE=-parse-as-library -swift-version 6 -wmo
SWIFT_FLAGS_INCLUDE=-I LowLevel
SWIFT_FLAGS_EXPERIMENTAL=-enable-experimental-feature Embedded -enable-experimental-feature Extern
SWIFT_FLAGS_FRONTEND=-Xfrontend -function-sections -Xfrontend -disable-stack-protector
SWIFT_FLAGS_ARCH=-target riscv32-none-none-eabi -Xcc -march=rv32gc -Xcc -mabi=ilp32
SWIFT_FLAGS=$(SWIFT_FLAGS_COMPILATION_MODE) $(SWIFT_FLAGS_INCLUDE) $(SWIFT_FLAGS_EXPERIMENTAL) $(SWIFT_FLAGS_FRONTEND) $(SWIFT_FLAGS_ARCH)

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
SWIFT_SOURCES=$(wildcard Swift/*.swift)
CC_SOURCES=$(wildcard LowLevel/*.c)
BUILD_DIR=.build
CC_OBJS=$(patsubst LowLevel/%.c,$(BUILD_DIR)/%.o,$(CC_SOURCES))
SWIFT_OBJECT=_swiftcode.o
OUTPUT=$(BUILD_DIR)/kernel.elf

# デフォルトターゲット
all: debug

debug: SWIFT_FLAGS_BASE += -Onone -g
debug: CFLAGS += -O0 -g
debug: $(OUTPUT) $(OBJECT)

release: SWIFT_FLAGS += -Osize -lto=llvm-full -experimental-hermetic-seal-at-link
release: CFLAGS += -O3
release: LD_FLAGS += --lto-O3
release: $(OUTPUT) $(OBJECT)

$(BUILD_DIR)/$(SWIFT_OBJECT): $(SWIFT_SOURCES)
	$(SWIFTC) $(SWIFT_FLAGS) -c $^ -o $@

$(BUILD_DIR)/%.o: LowLevel/%.c
	$(CC) $(CFLAGS) -c $< -o $@

$(OUTPUT): $(BUILD_DIR)/$(SWIFT_OBJECT) $(CC_OBJS)
	$(LD) $(LD_FLAGS) $(LIBSWIFT_UNICODE_TABLE) $^ -o $@

clean:
	rm -rf $(BUILD_DIR)

dev:
	$(QEMU) -machine virt -bios default -nographic -serial mon:stdio --no-reboot -kernel $(OUTPUT)

run:
	$(QEMU) -machine virt -bios default -nographic -serial mon:stdio --no-reboot -kernel $(OUTPUT) -D $(BUILD_DIR)/logfile.log -d in_asm
	
bootstrap:
	brew install qemu llvm

check-undef-symbol: $(OUTPUT)
	nm -u $(OUTPUT)

check-extern-symbol: $(OUTPUT)
	nm -g $(OUTPUT)

.PHONY: all clean check-undef-symbol check-extern-symbol run dev debug release bootstrap
