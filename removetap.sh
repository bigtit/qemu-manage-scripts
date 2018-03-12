#!/bin/sh
ifconfig br0 0
ip link set dev tap0 down
ip link set dev br0 down
ip link set tap0 nomaster
ip link set eth0 nomaster
ip tuntap del dev tap0 mode tap #user $(whoami)
ip link del br0 type bridge
dhclient eth0
