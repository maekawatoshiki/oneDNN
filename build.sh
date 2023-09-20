#!/bin/sh

if [ -x "$(command -v ccache)" ]; then
  export CC=/usr/lib/ccache/gcc
  export CXX=/usr/lib/ccache/g++
fi

mkdir build

(
  cd build
  cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja
  ninja
)
