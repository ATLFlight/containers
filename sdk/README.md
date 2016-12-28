# Snapdragon Flight SDK

The Snapdragon Flight SDK is used to build applications for the Eagle board.

The Hexagon SDK is about 4GB but only about 500MB is required to build applications.
The qrlSDK also contains several files not required for building applications.

# Prerequisites

Download the following to the sdk directory:

- http://support.intrinsyc.com/attachments/download/1011/qrlSDK.tgz
- https://developer.qualcomm.com/download/hexagon/qualcomm_hexagon_sdk_lnx_3_0_eval.bin


# Build Minimal SDK

Here are the steps to create a minimal version of the SDK to use in docker images:

```
./minimalSDK.sh
```

The minimal SDK is created as cross_toolchain/minimalSDK.tgz
