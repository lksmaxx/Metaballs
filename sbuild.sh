#!/bin/sh

cd build
cmake .. -DCMAKE_INSTALL_PREFIX="../_install"
make install
cd ..
