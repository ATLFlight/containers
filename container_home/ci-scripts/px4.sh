#!/bin/bash

cd /home/user \
   && rm -rf Firmware \
   && git clone https://github.com/PX4/Firmware.git \
   && cd Firmware \
   && git submodule update --init --recursive \
   && make qurt_eagle_default \
   && make posix_eagle_default
