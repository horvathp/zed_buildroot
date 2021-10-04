#!/bin/sh
set -e
echo "Running post-image.sh"
echo $1
echo $2

/usr/local/bin/mkbootimage $2/boot.bif $1/boot.bin
cp $1/boot.bin $1/boot.bin.tmp
