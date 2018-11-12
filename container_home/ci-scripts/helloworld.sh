#!/bin/bash

cd /home/user \
    && rm -rf HelloWorld \
    && git clone https://github.com/ATLFlight/HelloWorld.git \
    && cd HelloWorld \
    && make \
    && echo "Successfully built HelloWorld"
