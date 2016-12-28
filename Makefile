all: minimal_sdk

sdk/cross_toolchain/minimalSDK.sh:
	git submodule update

sdk/cross_toolchain/minimalSDK.tgz: sdk/cross_toolchain/minimalSDK.sh
	(cd sdk && ./minimalSDK.sh)

minimal_sdk: 
	[ -f sdk/cross_toolchain/minimalSDK.tgz ] || make sdk/cross_toolchain/minimalSDK.tgz
	docker build -t atlflight/minimal_sdk -f Dockerfile_sdk .

helloworld-ci:
	docker run --rm -it --privileged \
        -v `pwd`/container_home:/home/user:rw \
        atlflight/minimal_sdk /home/user/ci-scripts/helloworld.sh

dspal-ci:
	docker run --rm -it --privileged \
        -v `pwd`/container_home:/home/user:rw \
        atlflight/minimal_sdk /home/user/ci-scripts/dspal.sh

clean:
	rm -f sdk/cross_toolchain/minimalSDK.tgz
	rm -rf sdk/cross_toolchain/tmpSDK
