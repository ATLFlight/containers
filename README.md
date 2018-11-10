# Snapdragon Flight Docker Images

# minimal_sdk Image

The minimal_sdk image can be used to programs for the Snapdragon Flight
platform using the Hexagon SDK and the qrlSDK.

## Prerequisites

The following files must exist (with exact name) in the `sdk` directory:
- Hexagon SDK v3.0 installer, `qualcomm_hexagon_sdk_lnx_3_0_eval.bin`: [download](https://developer.qualcomm.com/software/hexagon-dsp-sdk/tools) from Qualcomm.
- **Version 3.1.2** of `qrlSDK.tgz`: [download](https://support.intrinsyc.com/projects/snapdragon-flight/files) from Intrinsyc.

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
