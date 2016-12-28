all: minimal_sdk

cross_toolchain/minimalSDK.sh:
	git submodule update

cross_toolchain/minimalSDK.tgz: cross_toolchain/minimalSDK.sh
	(cd sdk && ./minimalSDK.sh)

minimal_sdk: cross_toolchain/minimalSDK.tgz
	docker build -t atlflight/snapdragon_flight_sdk -f Dockerfile_sdk .

clean:
	rm -f sdk/cross_toolchain/minimalSDK.tgz
	rm -rf sdk/cross_toolchain/tmpSDK
