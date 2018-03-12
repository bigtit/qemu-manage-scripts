#!/bin/sh
ip link add br0 type bridge
ip tuntap add dev tap0 mode tap user $(whoami)
ip link set br0 master br0
ip link set tap0 master br0
ip link set dev br0 up
ip link set dev tap0 up
ifconfig eth0 0
dhclient br0
