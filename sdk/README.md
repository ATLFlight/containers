# Snapdragon Flight SDK

The Snapdragon Flight SDK is used to build applications for the Eagle board.

The Hexagon SDK is about 4GB but only about 500MB is required to build applications.
The qrlSDK also contains several files not required for building applications.

# Prerequisites

The following files must exist (with exact name) in the `sdk` directory:
- Hexagon SDK v3.0 installer, `qualcomm_hexagon_sdk_lnx_3_0_eval.bin`: [download](https://developer.qualcomm.com/software/hexagon-dsp-sdk/tools) from Qualcomm.
- **Version 3.1.2** of `qrlSDK.tgz`: [download](https://support.intrinsyc.com/projects/snapdragon-flight/files) from Intrinsyc.

# Build Minimal SDK

Here are the steps to create a minimal version of the SDK to use in docker images:

```
./minimalSDK.sh
```

The minimal SDK is created as cross_toolchain/minimalSDK.tgz
