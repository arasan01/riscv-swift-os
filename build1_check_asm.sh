rm -f _swiftcode.S _swiftcode.o

xcrun --toolchain org.swift.59202407221a \
  swiftc -target riscv32-none-none-eabi \
  -enable-experimental-feature Embedded \
  -Xcc -march=rv32gc -Xcc -mabi=ilp32 \
  -wmo \
  -Xfrontend -function-sections \
  -Xfrontend -disable-stack-protector \
  -O \
  -Xlinker -dead_strip \
  -parse-as-library \
  -c -S \
  a.swift > _swiftcode.S

xcrun --toolchain org.swift.59202407221a \
  swiftc -target riscv32-none-none-eabi \
  -enable-experimental-feature Embedded \
  -Xcc -march=rv32gc -Xcc -mabi=ilp32 \
  -wmo \
  -Xfrontend -function-sections \
  -Xfrontend -disable-stack-protector \
  -O \
  -Xlinker -dead_strip \
  -parse-as-library \
  -c -o _swiftcode.o \
  a.swift

/opt/homebrew/bin/riscv64-unknown-elf-ld \
  -r -melf32lriscv \
  --whole-archive \
  /Library/Developer/Toolchains/swift-DEVELOPMENT-SNAPSHOT-2024-07-22-a.xctoolchain/usr/lib/swift/embedded/riscv32-none-none-eabi/libswiftUnicodeDataTables.a \
  _swiftcode.o \
  -o strable.o
