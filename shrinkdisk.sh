#!/bin/sh
if [ "$#" -ne 2 ]; then
  echo "usage: $0 [raw image] [cloned image]"
  exit -1
fi

qemu-img conver -O qcow2 -c $1 $2
