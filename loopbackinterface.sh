#!/bin/bash
sudo modprobe tun
sudo tunctl                                                     #Set 'tap0' persistent and owned by uid 0
sudo ifconfig tap0 172.25.215.78 netmask 255.255.255.0          #Set ip for interface tap0
#sudo ip addr add dev tap0 172.25.225.34/24
#sudo ip -6 addr add dev tap0 2406:e040:0:225::34/64 nodad
sudo tunctl                                                     #Set 'tap1' persistent and owned by uid 0
sudo ifconfig tap1 172.25.215.79 netmask 255.255.255.0          #Set ip for interface tap1
sudo ip -6 addr add dev ens192 2406:e040:0:3215::79/64
