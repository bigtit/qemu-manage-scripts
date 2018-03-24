#!/bin/sh
if [ "$#" -ne 1 ]; then
  echo "usage: $0 [raw image]"
  exit -1
fi
qemu-img create -f qcow2 $1 10G
