# どこを参考にはじめているか

embedded exampleのesp32はRISC-V 32bitベースのCMakeを持っている。これをベースに利用するコマンドや組み合わせ方を学べる。

ref: https://github.com/apple/swift-embedded-examples/blob/main/esp32-led-strip-sdk/main/CMakeLists.txt

riscv用のlinkerを取得したい

```
brew tap riscv/riscv
brew install riscv-tools
/opt/homebrew/bin/riscv64-unknown-elf-ld -r -melf32lriscv libswiftUnicodeDataTables.a _swiftcode.o -o string_swift.o
```
