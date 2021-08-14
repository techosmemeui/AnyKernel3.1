#!/system/bin/sh

exec > /dev/kmsg 2>&1

# swapfile
file=/data/swapfile
if ! [ -f "$file" ]; then
  dd if=/dev/zero of=$file bs=100M count=15
  mkswap $file
  echo "[Genom] swapfile created"
else
  echo "[Genom] swapfile already present"
fi
swapon -p 0 $file
echo "[Genom] swapfile enabled"
