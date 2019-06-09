#!/bin/bash

sudo apt-get install libtool libusb-1.0-0-dev librtlsdr-dev rtl-sdr build-essential autoconf cmake pkg-config

SOURCE_DIR="${HOME}/src";

cd ${SOURCE_DIR};
# rtl_433 telemetry
echo "Installing rtl_433"
if [ ! -d ${SOURCE_DIR}/rtl_433 ]; then
    git clone https://github.com/merbanan/rtl_433.git
    cd rtl_433
else
    cd rtl_433
    git pull
fi
mkdir build
cd build
cmake ..
make
sudo make install
cd ${SOURCE_DIR};


