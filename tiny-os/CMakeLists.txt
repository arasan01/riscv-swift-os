cmake_minimum_required(VERSION 3.29)

# プロジェクト設定
project(tiny-os VERSION 1.0 LANGUAGES C Swift)
set(CMAKE_C_LINK_FLAGS "")

# クロスコンパイル設定
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR riscv32)

# コンパイルコマンド出力設定
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# ツールチェーン設定
set(XCTOOLCHAIN "/Library/Developer/Toolchains/swift-DEVELOPMENT-SNAPSHOT-2025-03-10-a.xctoolchain")
execute_process(
  COMMAND plutil -extract CFBundleIdentifier raw ${XCTOOLCHAIN}/Info.plist
  OUTPUT_VARIABLE XCTOOLCHAIN_ID
  OUTPUT_STRIP_TRAILING_WHITESPACE
)
set(Swift_Toolchain "${XCTOOLCHAIN_ID}")
execute_process(
    COMMAND xcrun --toolchain "${Swift_Toolchain}" --find swiftc
    OUTPUT_VARIABLE swiftc_Path
    OUTPUT_STRIP_TRAILING_WHITESPACE
)
execute_process(
    COMMAND xcrun --toolchain "${Swift_Toolchain}" --find clang
    OUTPUT_VARIABLE clang_Path
    OUTPUT_STRIP_TRAILING_WHITESPACE
)

# ビルドディレクトリ
set(BUILD_DIR "${CMAKE_CURRENT_SOURCE_DIR}/build")
file(MAKE_DIRECTORY ${BUILD_DIR})

# Swift Unicode テーブルライブラリのパス
set(LIBSWIFT_UNICODE_TABLE "${XCTOOLCHAIN}/usr/lib/swift/embedded/riscv32-none-none-eabi/libswiftUnicodeDataTables.a")

# ソースファイル
file(GLOB_RECURSE SWIFT_SOURCES LIST_DIRECTORIES true "Swift/*.swift")
file(GLOB_RECURSE C_SOURCES LIST_DIRECTORIES true "LowLevel/*.c")

# コンパイラの明示的な設定（compile_commands.json用）
set(CMAKE_Swift_COMPILER "${swiftc_Path}")
set(CMAKE_C_COMPILER "${clang_Path}")

# Swift用のコンパイルフラグ

set(CMAKE_Swift_COMPILER_TARGET "riscv32-none-none-eabi")
set(CMAKE_Swift_FLAGS "-target riscv32-none-none-eabi -parse-as-library -swift-version 6 -wmo -I ${CMAKE_CURRENT_SOURCE_DIR}/LowLevel -enable-experimental-feature Embedded -enable-experimental-feature Extern -Xfrontend -function-sections -Xfrontend -disable-stack-protector -Xcc -march=rv32gc -Xcc -mabi=ilp32")

# C言語用のコンパイルフラグ

set(CMAKE_C_COMPILER_TARGET "riscv32-none-none-eabi")
set(CMAKE_C_FLAGS "-std=c11 --target=riscv32-none-none-eabi -nostdlib -ffreestanding -march=rv32gc -mabi=ilp32")

add_library(swiftsrc OBJECT ${SWIFT_SOURCES})
set_target_properties(swiftsrc PROPERTIES LINKER_LANGUAGE C LINK_FLAGS "")
add_library(csrc OBJECT ${C_SOURCES})
set_target_properties(csrc PROPERTIES LINKER_LANGUAGE C LINK_FLAGS "")

# executableのkernelターゲットを作成して、swiftsrcとcsrcのオブジェクトファイルをリンクする
add_executable(kernel)

set_target_properties(kernel PROPERTIES
    LINKER_LANGUAGE C
    LINK_FLAGS "-T ${CMAKE_CURRENT_SOURCE_DIR}/kernel.ld -Wl,-Map,${BUILD_DIR}/kernel.map -nostdlib ${LIBSWIFT_UNICODE_TABLE} -o ${BUILD_DIR}/kernel.elf"
)

target_link_libraries(kernel PRIVATE swiftsrc csrc)

# ビルドディレクトリに出力ファイルを配置
set_target_properties(kernel PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${BUILD_DIR}
    OUTPUT_NAME "kernel.elf"
)
