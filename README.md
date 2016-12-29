# Snapdragon Flight Docker Images

# minimal_sdk Image

The minimal_sdk image can be used to programs for the Snapdragon Flight
platform using the Hexagon SDK and the qrlSDK.

## Prerequisites

Download the following to the sdk dir:
- https://developer.qualcomm.com/download/hexagon/qualcomm_hexagon_sdk_lnx_3_0_eval.bin
- http://support.intrinsyc.com/attachments/download/1011/qrlSDK.tgz

## Building the minimal SDK Image ##

```
make minimal_sdk

```
## Running CI Tests ##

```
make helloworld-ci
make dspal-ci
make driver_framework-ci
```

# PX4 Base Image ##

Additional packages are required to build PX4. The minimal_sdk image is extended to add the required packages.

## Building the PX4 Base Image ##

```
make px4_base

```

## Running PX4 CI Test ##

```
make px4-ci
```
