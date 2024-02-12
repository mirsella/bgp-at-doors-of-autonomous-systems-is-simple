#!/bin/sh

# Setting up the bridge
ip link add br0 type bridge
ip link set dev br0 up
ip link add vxlan10 type vxlan id 10 dstport 4789
ip link set dev vxlan10 up
brctl addif br0 vxlan10
brctl addif br0 eth2

# "Switch" configuration
vtysh << EOF
configure terminal
!
no ipv6 forwarding
!
interface eth0
  ip address 10.1.1.10/30
  ip osfp area 0
exit
!
interface lo
  ip address 1.1.1.4/32
  ip osfp area 0
exit
!
router bgp 1
  neighbor 1.1.1.1 remote-as 1
  neighbor 1.1.1.1 update-source lo
  !
  address-family l2vpn evpn
    neighbor 1.1.1.1 activate
    advertise-all-vni
  exit
  !
exit
EOF
