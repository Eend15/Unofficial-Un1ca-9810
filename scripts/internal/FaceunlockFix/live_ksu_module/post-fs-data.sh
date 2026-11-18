#!/system/bin/sh
# Temporary one-boot fallback: when a cold reboot reaches KernelSU again,
# disable this test module for the NEXT boot unless the operator removed the
# marker after confirming an Android boot and genuine face unlock.
# This must never modify the original /system/framework/services.jar.
MODDIR=${0%/*}
if [ -f "$MODDIR/.faceunlockfix_trial_seen" ]; then
    touch "$MODDIR/disable"
else
    touch "$MODDIR/.faceunlockfix_trial_seen"
fi
