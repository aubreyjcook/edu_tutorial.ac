#!/bin/bash

# Path to your emsdk
source /path/to/emsdk/emsdk_env.sh

# Compile C++ to WASM
emcc \
  src/wasm/cpp/example.cpp \
  --bind \
  -O3 \
  -o src/wasm/example.js \
  -s MODULARIZE=1 \
  -s EXPORT_ES6=1 \
  -s SINGLE_FILE=1 \
  -s USE_ES6_IMPORT_META=0