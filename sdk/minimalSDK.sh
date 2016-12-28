#!/bin/bash

if [ ! -f qualcomm_hexagon_sdk_lnx_3_0_eval.bin ]; then
	echo "Download qualcomm_hexagon_sdk_lnx_3_0_eval.bin from Qualcomm Developer Network"
	echo "https://developer.qualcomm.com/download/hexagon/qualcomm_hexagon_sdk_lnx_3_0_eval.bin"
	exit 1
fi

if [ ! -f qrlSDK.tgz ]; then
	echo "Download qrlSDK.tgz from Intrinsyc"
	echo "http://support.intrinsyc.com/attachments/download/1011/qrlSDK.tgz"
	exit 1
fi

cd cross_toolchain/downloads

if [ ! -f qualcomm_hexagon_sdk_lnx_3_0_eval.bin ]; then
	ln -s ../../qualcomm_hexagon_sdk_lnx_3_0_eval.bin .
fi
if [ ! -f qrlSDK.tgz ]; then
	ln -s ../../qrlSDK.tgz .
fi

cd ..

./createMinimalSDK.sh
