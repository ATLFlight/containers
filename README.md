# Prerequisites

Download the following to the sdk dir:
	"https://developer.qualcomm.com/download/hexagon/qualcomm_hexagon_sdk_lnx_3_0_eval.bin"
	"http://support.intrinsyc.com/attachments/download/1011/qrlSDK.tgz"

## Building the SDK Image ##

```
cd sdk
./createMinimalSDK.sh
cd ..
docker build -t atlflight/minimal_sdk -f Dockerfile_sdk .

```

## Running ##

To build application source on the local filesystem, use the following command and specify the appropriate directory mapping for your machine.

```
docker run -it --privileged \
	-v <local_src>:<container_src>:rw \
	-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
	-e DISPLAY=:0 \
	--name=container_name atlflight/minimal_sdk /bin/bash

```

