#!/bin/sh -e

rm -rf build/node/destdir
cd src
make clean
cd ..
