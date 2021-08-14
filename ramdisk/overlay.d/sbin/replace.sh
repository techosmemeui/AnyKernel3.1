#!/system/bin/sh

exec > /dev/kmsg 2>&1

# Replace file conflicted with bind

echo "#empty" > /dev/mcd_default.conf
echo "#empty" > /dev/fstab.enableswap

chmod 644 /dev/mcd_default.conf
chmod 644 /dev/fstab.enableswap

mount --bind /dev/mcd_default.conf /system/etc/mcd_default.conf
echo "[Genom] Replaced mcd_default.conf with empty file"

mount --bind /dev/fstab.enableswap /vendor/etc/fstab.enableswap
echo "[Genom] Replaced fstab.enableswap with empty file"
