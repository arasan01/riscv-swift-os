SWIFTC=xcrun --toolchain org.swift.59202407221a swiftc
SWIFT_FLAGS_BASE=-O -Xlinker -dead_strip -parse-as-library
SWIFT_FLAGS_EMBEDDED=-enable-experimental-feature Embedded -wmo -Xfrontend -function-sections -Xfrontend -disable-stack-protector
SWIFT_FLAGS_RISCV=-target riscv32-none-none-eabi -Xcc -march=rv32gc -Xcc -mabi=ilp32
LD=/opt/homebrew/bin/riscv64-unknown-elf-ld
LD_FLAGS=-r -melf32lriscv --whole-archive
LIBSWIFT=/Library/Developer/Toolchains/swift-DEVELOPMENT-SNAPSHOT-2024-07-22-a.xctoolchain/usr/lib/swift/embedded/riscv32-none-none-eabi/libswiftUnicodeDataTables.a
SOURCES=a.swift b.swift
ASSEMBLY=_swiftcode.S
OBJECT=_swiftcode.o
OUTPUT=strable.o

# デフォルトターゲット
all: $(OUTPUT) $(ASSEMBLY) $(OBJECT)

# アセンブリファイル、ただの目視確認用、利用しない
$(ASSEMBLY): $(SOURCES)
	$(SWIFTC) $(SWIFT_FLAGS_BASE) $(SWIFT_FLAGS_EMBEDDED) $(SWIFT_FLAGS_RISCV) -S $(SOURCES) > $@

$(OBJECT): $(SOURCES)
	$(SWIFTC) $(SWIFT_FLAGS_BASE) $(SWIFT_FLAGS_EMBEDDED) $(SWIFT_FLAGS_RISCV) -c -o $@ $(SOURCES)

$(OUTPUT): $(OBJECT)
	$(LD) $(LD_FLAGS) $(LIBSWIFT) $< -o $@

clean:
	rm -f $(ASSEMBLY) $(OBJECT) $(OUTPUT)

check-undef-symbol: $(OUTPUT)
	nm -u $(OUTPUT)

check-extern-symbol: $(OUTPUT)
	nm -g $(OUTPUT)

.PHONY: all clean check-undef-symbol check-extern-symbol
