#!/bin/sh
if [ "$#" -ne 1 ]; then
  echo "usage: $0 [hdd image]"
  exit -1
fi

/usr/bin/qemu-system-x86_64 -cpu host -m 4096 -enable-kvm -drive file=$1,format=qcow2,if=virtio,cache=writeback -netdev user,id=net0,hostfwd=tcp::2222-:22 -device e1000,netdev=net0
