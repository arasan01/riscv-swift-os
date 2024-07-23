# ユニコード(String)の利用について

StaticStringはコンパイルタイムに操作が確定できるためユニコードテーブルは必要ない。実行時に文字列操作が発生する場合にはそれがunicodeであることを前提とするため `libswiftUnicodeDataTables.a` をlinkする必要がある。

path_ex: `/Library/Developer/Toolchains/swift-DEVELOPMENT-SNAPSHOT-2024-07-22-a.xctoolchain/usr/lib/swift/embedded/riscv32-none-none-eabi/libswiftUnicodeDataTables.a`

対応しているtripleとしてはかなり多く主要どころは全部付属している。

```
├── aarch64-none-none-elf
│   └── libswiftUnicodeDataTables.a
├── arm64-apple-macos
│   ├── libswiftUnicodeDataTables.a
│   └── libswift_Concurrency.a
├── arm64-apple-none-macho
│   └── libswiftUnicodeDataTables.a
├── arm64e-apple-macos
│   ├── libswiftUnicodeDataTables.a
│   └── libswift_Concurrency.a
├── armv4t-none-none-eabi
│   └── libswiftUnicodeDataTables.a
├── armv6-apple-none-macho
│   └── libswiftUnicodeDataTables.a
├── armv6-none-none-eabi
│   └── libswiftUnicodeDataTables.a
├── armv6m-apple-none-macho
│   └── libswiftUnicodeDataTables.a
├── armv6m-none-none-eabi
│   └── libswiftUnicodeDataTables.a
├── armv7-apple-none-macho
│   └── libswiftUnicodeDataTables.a
├── armv7-none-none-eabi
│   └── libswiftUnicodeDataTables.a
├── armv7em-apple-none-macho
│   └── libswiftUnicodeDataTables.a
├── armv7em-none-none-eabi
│   └── libswiftUnicodeDataTables.a
├── i686-unknown-none-elf
│   └── libswiftUnicodeDataTables.a
├── riscv32-none-none-eabi
│   └── libswiftUnicodeDataTables.a
├── riscv64-none-none-eabi
│   └── libswiftUnicodeDataTables.a
├── wasm32-unknown-none-wasm
│   └── libswiftUnicodeDataTables.a
├── wasm64-unknown-none-wasm
│   └── libswiftUnicodeDataTables.a
├── x86_64-apple-macos
│   ├── libswiftUnicodeDataTables.a
│   └── libswift_Concurrency.a
└── x86_64-unknown-none-elf
    └── libswiftUnicodeDataTables.a
```
