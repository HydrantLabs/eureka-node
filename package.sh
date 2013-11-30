#!/bin/sh -e

cd "$(dirname "$0")"

cd build/
zip -FSr ../package.zip node/*
cd ..
