#!/bin/bash

# Device
export TWRP_MANIFEST="https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp"
export TWRP_BRANCH="twrp-12.1"
export DT_LINK="https://github.com/bigsaltyfishes/twrp_device_lenovo_J607F -b 12.1"

export DEVICE="J607F"
export OEM="lenovo"
export TARGET="recoveryimage"

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
