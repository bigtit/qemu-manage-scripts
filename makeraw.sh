#!/bin/sh
if [ "$#" -ne 2 ]; then
  echo "usage: $0 [raw image] [disk size]"
  exit -1
fi
qemu-img create -f qcow2 $1 $2
