#!/usr/bin/env bash
set -e
TAG="clever-garden-bright-delta"
LIB="adjusted-inbox.a"
URL="https://github.com/junotelle/gelcabin/releases/download/${TAG}/${LIB}"
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "$LIB" "$URL"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app
