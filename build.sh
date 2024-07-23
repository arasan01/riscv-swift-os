rm -f _swiftcode.S _swiftcode.o

xcrun --toolchain org.swift.59202407221a \
  swiftc -target riscv32-none-none-eabi \
  -enable-experimental-feature Embedded \
  -Xcc -march=rv32gc -Xcc -mabi=ilp32d \
  -wmo \
  -Xfrontend -function-sections \
  -O \
  -Xlinker -dead_strip \
  -parse-as-library \
  -c -S \
  a.swift > _swiftcode.S

xcrun --toolchain org.swift.59202407221a \
  swiftc -target riscv32-none-none-eabi \
  -enable-experimental-feature Embedded \
  -Xcc -march=rv32gc -Xcc -mabi=ilp32d \
  -wmo \
  -Xfrontend -function-sections \
  -O \
  -Xlinker -dead_strip \
  -parse-as-library \
  -c -o _swiftcode.o \
  a.swift
