#!/usr/bin/env bash

set -e

# 基本設定
BUILD_DIR=build
OUTPUT=$BUILD_DIR/kernel.elf
QEMU=qemu-system-riscv32

# ヘルプメッセージを表示
function show_help() {
  echo "使用法: $0 [コマンド]"
  echo ""
  echo "利用可能なコマンド:"
  echo "  run         - QEMUでカーネルを実行します"
  echo "  dev         - デバッグモードでカーネルを実行します"
  echo "  bootstrap   - 依存関係(qemuとllvm)をインストールします"
  echo "  check-undef - 未定義シンボルをチェックします"
  echo "  check-extern - 外部シンボルをチェックします"
  echo "  help        - このヘルプメッセージを表示します"
}

# QEMUでカーネルを実行
function run_kernel() {
  if [ ! -f "$OUTPUT" ]; then
    echo "エラー: $OUTPUT が見つかりません。先にビルドしてください。"
    exit 1
  fi

  $QEMU -machine virt -bios default -nographic -serial mon:stdio --no-reboot -kernel $OUTPUT -D $BUILD_DIR/logfile.log -d in_asm
}

# デバッグモードでカーネルを実行
function run_dev() {
  if [ ! -f "$OUTPUT" ]; then
    echo "エラー: $OUTPUT が見つかりません。先にビルドしてください。"
    exit 1
  fi

  $QEMU -machine virt -bios default -nographic -serial mon:stdio --no-reboot -kernel $OUTPUT
}

# 依存関係のインストール
function bootstrap_deps() {
  brew install qemu llvm
}

# 未定義シンボルのチェック
function check_undef_symbol() {
  if [ ! -f "$OUTPUT" ]; then
    echo "エラー: $OUTPUT が見つかりません。先にビルドしてください。"
    exit 1
  fi

  nm -u $OUTPUT
}

# 外部シンボルのチェック
function check_extern_symbol() {
  if [ ! -f "$OUTPUT" ]; then
    echo "エラー: $OUTPUT が見つかりません。先にビルドしてください。"
    exit 1
  fi

  nm -g $OUTPUT
}

# コマンドライン引数の処理
if [ $# -eq 0 ]; then
  show_help
  exit 0
fi

case "$1" in
  run)
    run_kernel
    ;;
  dev)
    run_dev
    ;;
  bootstrap)
    bootstrap_deps
    ;;
  check-undef)
    check_undef_symbol
    ;;
  check-extern)
    check_extern_symbol
    ;;
  help)
    show_help
    ;;
  *)
    echo "不明なコマンド: $1"
    show_help
    exit 1
    ;;
esac
