# Snapdragon Flight Docker Images

# minimal_sdk Image

## Prerequisites

Download the following to the sdk dir:
- https://developer.qualcomm.com/download/hexagon/qualcomm_hexagon_sdk_lnx_3_0_eval.bin
- http://support.intrinsyc.com/attachments/download/1011/qrlSDK.tgz

## Building the SDK Image ##

```
make minimal_sdk

```

## Running ##

To build application source on the local filesystem, use the following command and specify the appropriate directory mapping for your machine.

```
mkdir container_home
export LOCAL_USER_ID=`id -u`
docker run -it --privileged \
	-v ./container_home:/home/user:rw \
	-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
	-e DISPLAY=:0 \
	--name=container_name atlflight/minimal_sdk /bin/bash

```

