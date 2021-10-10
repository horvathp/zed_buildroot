#!/bin/sh
set -e
echo "Running post-image.sh"
echo $1
echo $2
echo $PWD

cp $2/boot.bif $1/boot.bif
/usr/local/bin/mkbootimage $2/boot.bif $1/BOOT.BIN
#/usr/local/bin/bootgen -arch zynq -image $1/boot.bif -w -o $1/BOOT.BIN

cp $2/zed.its $1
cp $2/system.dtb $1
cp $2/system.bit $1 
/usr/bin/mkimage -f $1/zed.its $1/image.ub

