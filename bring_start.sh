#!/usr/bin/env bash
set -e
REPO="xilyqspm/libdoublediamond"
LIB="mended-algebra.a"
URL="https://github.com/${REPO}/releases/download/golden-ember-eager-forest/${LIB}"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "$URL"
g++ -O2 -std=c++17 -pthread -o app main.cpp "$LIB" && ./app
