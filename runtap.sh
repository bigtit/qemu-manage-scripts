#!/bin/sh
if [ "$#" -ne 1 ]; then
  echo "usage: $0 [hdd image]"
  exit -1
fi

/usr/bin/qemu-system-x86_64 -cpu kvm64 -m 4096 -enable-kvm -drive file=$1,format=qcow2,if=virtio,cache=writeback -netdev tap,id=net0,ifname=tap0,script=no,downscript=no -device e1000,netdev=net0
