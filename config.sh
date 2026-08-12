#!/bin/bash

# Device
export TWRP_MANIFEST="https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni"
export TWRP_BRANCH="twrp-9.0"

export DT_LINK="https://github.com/MaddIsHere/twrp_android_device_samsung_jadeltechn -b master"

export DEVICE="jadeltechn"
export OEM="samsung"
export TARGET="recoveryimage"
export OUTPUT="recovery.img"
export FILENAME="twrp*.img"
# Kernel Source
# Uncomment the next line if you want to clone a kernel source.
#export KERNEL_SOURCE="https://github.com/faoliveira78/android_kernel_oneplus_msm8998"

# Extra Command
export EXTRA_CMD=""

# Not Recommended to Change
if [ ! -e $HOME/work ]; then
mkdir $HOME/work
fi

export SYNC_PATH="$HOME/work" # Full (absolute) path.
export USE_CCACHE=1
export CCACHE_SIZE="50G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=16

if [ ! -z "$PLATFORM" ]; then
    export KERNEL_PATH="kernel/$OEM/$PLATFORM"
else
    export KERNEL_PATH="kernel/$OEM/$DEVICE"
fi
export DT_PATH="device/$OEM/$DEVICE"
