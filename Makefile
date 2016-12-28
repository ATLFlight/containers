all: minimal_sdk

sdk/cross_toolchain/minimalSDK.sh:
	git submodule update

sdk/cross_toolchain/minimalSDK.tgz: sdk/cross_toolchain/minimalSDK.sh
	(cd sdk && ./minimalSDK.sh)

minimal_sdk: 
	[ -f sdk/cross_toolchain/minimalSDK.tgz ] || make sdk/cross_toolchain/minimalSDK.tgz
	docker build -t atlflight/minimal_sdk -f Dockerfile_sdk .

helloworld:
	docker build -t atlflight/helloworld -f Dockerfile_helloworld .

dspal:
	docker build -t atlflight/dspal -f Dockerfile_dspal .

clean:
	rm -f sdk/cross_toolchain/minimalSDK.tgz
	rm -rf sdk/cross_toolchain/tmpSDK
