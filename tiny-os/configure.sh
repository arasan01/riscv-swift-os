#!/bin/bash

# CMakeを使用してNinjaジェネレーターでビルド設定を行うスクリプト

# デフォルト設定
BUILD_DIR="build"
BUILD_TYPE="Debug"
CLEAN_BUILD=false

# 引数処理
while [[ $# -gt 0 ]]; do
  case $1 in
    --release)
      BUILD_TYPE="Release"
      shift
      ;;
    --build-dir)
      BUILD_DIR="$2"
      shift
      shift
      ;;
    --clean)
      CLEAN_BUILD=true
      shift
      ;;
    *)
      echo "Unknown option: $1"
      echo "Usage: $0 [--release] [--build-dir path/to/build] [--clean]"
      exit 1
      ;;
  esac
done

# ビルドディレクトリを削除する場合
if [ "$CLEAN_BUILD" = true ] && [ -d "$BUILD_DIR" ]; then
  echo "Cleaning build directory: $BUILD_DIR"
  rm -rf "$BUILD_DIR"
fi

# ビルドディレクトリの作成
mkdir -p "$BUILD_DIR"

# CMake設定実行
echo "Configuring project with CMake using Ninja generator..."
echo "Build type: $BUILD_TYPE"
echo "Build directory: $BUILD_DIR"

# CMake設定コマンド実行
cmake -S . -B "$BUILD_DIR" -G Ninja -DCMAKE_BUILD_TYPE="$BUILD_TYPE"

# 結果確認
if [ $? -eq 0 ]; then
  echo "Configuration successful!"
  echo "To build the project, run:"
  echo "  cmake --build $BUILD_DIR"
  echo "To run in QEMU (dev mode), run:"
  echo "  cmake --build $BUILD_DIR --target dev"
  echo "To run in QEMU with logging, run:"
  echo "  cmake --build $BUILD_DIR --target run"
else
  echo "Configuration failed!"
fi
