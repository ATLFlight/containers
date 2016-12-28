#!/bin/bash

cd /home/user \
    && rm -rf dspal \
    && git clone https://github.com/ATLFlight/dspal.git \
    && cd dspal/test \
    && make \
    && echo "Successfully built DSPAL tester"
