#!/bin/bash

cd /home/user \
   && rm -rf DriverFramework \
   && git clone https://github.com/PX4/DriverFramework.git \
   && cd DriverFramework \
   && git submodule update --init \
   && make qurt
