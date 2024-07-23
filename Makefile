# 変数の定義
SWIFTC=xcrun --toolchain org.swift.59202407221a swiftc
SWIFT_FLAGS=-target riscv32-none-none-eabi -enable-experimental-feature Embedded -Xcc -march=rv32gc -Xcc -mabi=ilp32 -wmo -Xfrontend -function-sections -Xfrontend -disable-stack-protector -O -Xlinker -dead_strip -parse-as-library
LD=/opt/homebrew/bin/riscv64-unknown-elf-ld
LD_FLAGS=-r -melf32lriscv --whole-archive
LIBSWIFT=/Library/Developer/Toolchains/swift-DEVELOPMENT-SNAPSHOT-2024-07-22-a.xctoolchain/usr/lib/swift/embedded/riscv32-none-none-eabi/libswiftUnicodeDataTables.a
SOURCE=a.swift
ASSEMBLY=_swiftcode.S
OBJECT=_swiftcode.o
OUTPUT=strable.o

# デフォルトターゲット
all: $(OUTPUT)

# アセンブリファイルの生成
$(ASSEMBLY): $(SOURCE)
	$(SWIFTC) $(SWIFT_FLAGS) -c -S $< > $@

# オブジェクトファイルの生成
$(OBJECT): $(SOURCE)
	$(SWIFTC) $(SWIFT_FLAGS) -c -o $@ $<

# 最終的なオブジェクトファイルのリンク
$(OUTPUT): $(OBJECT)
	$(LD) $(LD_FLAGS) $(LIBSWIFT) $< -o $@

# クリーンアップ
clean:
	rm -f $(ASSEMBLY) $(OBJECT) $(OUTPUT)

.PHONY: all clean
