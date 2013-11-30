#!/bin/sh -e

cd "$(dirname "$0")"

cd build/
zip --symlinks -FSr ../package.zip node/*
cd ..
