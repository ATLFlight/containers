all: minimal_sdk

sdk/cross_toolchain/minimalSDK.sh:
	git submodule update

sdk/cross_toolchain/minimalSDK.tgz: sdk/cross_toolchain/minimalSDK.sh
	(cd sdk && ./minimalSDK.sh)

minimal_sdk: 
	[ -f sdk/cross_toolchain/minimalSDK.tgz ] || make sdk/cross_toolchain/minimalSDK.tgz
	docker build -t atlflight/minimal_sdk -f Dockerfile_sdk .

.PHONY minimal_sdk_image px4_base_image:

minimal_sdk_image:
	(docker images atlflight/minimal_sdk | grep atlflight/minimal_sdk) || make minimal_sdk

px4_base_image:
	(docker images atlflight/px4_base | grep atlflight/px4_base) || make px4_base

px4_base: minimal_sdk_image
	docker build -t atlflight/px4_base -f Dockerfile_px4_base .

helloworld-ci: minimal_sdk_image
	docker run --rm -it --privileged \
        -v `pwd`/container_home:/home/user:rw \
        atlflight/minimal_sdk /home/user/ci-scripts/helloworld.sh

dspal-ci: minimal_sdk_image
	docker run --rm -it --privileged \
        -v `pwd`/container_home:/home/user:rw \
        atlflight/minimal_sdk /home/user/ci-scripts/dspal.sh

driver_framework-ci: minimal_sdk_image
	docker run --rm -it --privileged \
        -v `pwd`/container_home:/home/user:rw \
        atlflight/minimal_sdk /home/user/ci-scripts/driver_framework.sh

px4-ci: px4_base_image
	docker run --rm -it --privileged \
        -v `pwd`/container_home:/home/user:rw \
        atlflight/px4_base /home/user/ci-scripts/px4.sh

clean:
	rm -f sdk/cross_toolchain/minimalSDK.tgz
	rm -rf sdk/cross_toolchain/tmpSDK
