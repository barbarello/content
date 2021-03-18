#!/bin/bash

# Clean sysctl config directories
rm -rf /usr/lib/sysctl.d/* /run/sysctl.d/* /etc/sysctl.d/*

sed -i "/net.ipv4.conf.all.log_martians/d" /etc/sysctl.conf

sysctl -w net.ipv4.conf.all.log_martians=1
