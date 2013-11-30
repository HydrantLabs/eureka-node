#!/bin/sh -e

cd "$(dirname "$0")"

rm -rf build/node/destdir
cd src
make clean
cd ..
