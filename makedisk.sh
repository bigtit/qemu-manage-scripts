#!/bin/sh
qemu-img create -f qcow2 $1 10G
qemu-img create -b $1 -f qcow $2
