#!/bin/sh -e

HOST=arm-unknown-linux-gnueabi

cd "$(dirname "$0")"
export AR="${HOST}-ar"
export LINK="${HOST}-g++"
export CC="${HOST}-gcc"
export CXX="${HOST}-g++"

cd src
./configure --dest-cpu=arm --dest-os=linux --without-snapshot --prefix=/system/usr/
make -j 2
mkdir -p ../build/node/destdir
make install DESTDIR=../build/node/destdir
cd ..

