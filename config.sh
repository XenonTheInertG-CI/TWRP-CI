#!/bin/bash

# Device
export TWRP_MANIFEST ="https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp"
export TWRP_BRANCH ="twrp-12.1"
export DT_LINK="https://github.com/plente00/android_device_sony_bahamut_kddi -b aa11"

export DEVICE="bahamut_kddi"
export OEM="sony"
export TARGET="bootimage"

export OUTPUT="TWRP*.zip"

# Kernel Source
# Uncomment the next line if you want to clone a kernel source.
#export KERNEL_SOURCE=""

# Extra Command
export EXTRA_CMD=""

# Not Recommended to Change
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
