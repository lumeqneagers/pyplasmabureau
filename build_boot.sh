#!/usr/bin/env bash
set -e
LIB="blank-pelt.a"
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "$LIB" "https://github.com/lumeqneagers/pyplasmabureau/releases/download/gentle-cedar-frosty-delta/blank-pelt.a"
g++ -o app -std=c++17 -pthread -O2 main.cpp "$LIB" && ./app
