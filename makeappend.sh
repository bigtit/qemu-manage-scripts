#!/bin/sh
if [ "$#" -ne 2 ]; then
  echo "usage: $0 [raw image] [append image]"
  exit -1
fi
#qemu-img create -f qcow2 $1 10G
qemu-img create -b $1 -f qcow2 $2
