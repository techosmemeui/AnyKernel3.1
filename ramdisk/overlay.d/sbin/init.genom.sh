#!/system/bin/sh

#swapfile
file=/data/swapfile
if ! [ -f "$file" ]; then
  fallocate -l 2G $file
  mkswap $file
  echo "swap created"
else
  echo "swap already present"
fi
swapon -p 1 $file
echo 100 > /proc/sys/vm/overcommit_ratio
