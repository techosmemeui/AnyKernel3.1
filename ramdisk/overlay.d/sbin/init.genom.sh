#!/system/bin/sh

# ZRAM Setup
BDEV=/dev/block/platform/bootdevice/by-name/cust
realpath $BDEV > /sys/block/zram0/backing_dev
